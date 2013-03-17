-- $Id$
local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AceGUI = LibStub("AceGUI-3.0")

local itemUpdated = 0

function AtlasLoot:DevToolsInitialize()
	self:RegisterSlashCommand("dev", self.DevTool_Slash)
end

function AtlasLoot:DevTool_Slash(...)
	self:DevTool_CreateFrame()
end

function AtlasLoot:GetEntryInfos()
	local itemIDs = {}
	local numItemIds = 0
	local spellIDs = {}
	local numSpellIds = 0
	for dataID, data in pairs(AtlasLoot_Data) do
		for _,tableType in ipairs(lootTableTypes) do
			if data[tableType] and not AtlasLoot.IgnoreList[dataID] then
				for _,itemTable in ipairs(data[tableType]) do
					for _,item in ipairs(itemTable) do
						local num1
						if type(item[2]) == "string" then
							num1 = string.find(item[2], "s(%d+)")
						end
						if item[2] and type(item[2]) == "number" and item[2] > 0 then
							if not itemIDs[item[2]] then
								itemIDs[item[2]] = true
								numItemIds = numItemIds + 1
							end
						elseif item[2] and type(item[2]) == "string" and num1 then
							if not spellIDs[item[2]] then
								spellIDs[item[2]] = true
								numSpellIds = numSpellIds + 1
								if item[3] and tonumber(item[3]) and not itemIDs[tonumber(item[3])] then
									itemIDs[tonumber(item[3])] = true
									numItemIds = numItemIds + 1
								end
							end
						end
					end
				end
			end
		end
	end
	print("ITEMS: "..numItemIds.." --- SPELLS: "..numSpellIds)
end
-- ######################################################
local function returnItemTableString(tab)
	lootTableString = ""
	if not tab then return "" end
	for site, siteTab in ipairs(tab) do
		if site == 1 then
			lootTableString = lootTableString.."{\n"
		else
			lootTableString = lootTableString.."\n["..site.."] = {\n"
		end
		for itemNum, item in ipairs(siteTab) do
			local temp = ""
			lootTableString = lootTableString.."{ "
			for id, entry in ipairs(item) do
				local trim = ", "
				if id == #item then
					trim = ""
				end
				if type(entry) == "string" then
					temp = temp.."\""..entry.."\""..trim
				elseif type(entry) == "number" then
					temp = temp..entry..trim
				end
			end
			lootTableString = lootTableString..temp.." },\n"
		end
		lootTableString = lootTableString.."}"
	end
	return lootTableString
end

local function getItemPrice(strg, newPrice, newPriceIcon)
	local retStrg = ""
	newPriceIcon = string.lower(newPriceIcon or "")
	local priceTab = {
		["justice"] = {"(%d+) #justice#", "%d+ #justice#", "Interface\\Icons\\pvecurrency-justice" },
		["valor"] = {"(%d+) #valor#", "%d+ #valor#", "Interface\\Icons\\pvecurrency-valor" },
		["honor"] = {"(%d+) #honor#", "%d+ #honor#" },
		["conquest"] = {"(%d+) #conquest#", "%d+ #conquest#" },
	}
	--	/run print(getItemPrice("2175 #justice# / 60 #champseal#", 5000, "Interface\\Icons\\pvecurrency-justice"))
	local englishFaction, _ = UnitFactionGroup("player")
    if englishFaction == "Horde" then
		priceTab["honor"][3] = "Interface\\Icons\\pvpcurrency-honor-horde"
		priceTab["conquest"][3] = "Interface\\Icons\\pvpcurrency-conquest-horde"
    else
		priceTab["honor"][3] = "Interface\\Icons\\pvpcurrency-honor-alliance"
		priceTab["conquest"][3] = "Interface\\Icons\\pvpcurrency-conquest-alliance"
    end
	if strg then
		for k,v in pairs(priceTab) do
			if string.match(strg, v[1]) and string.lower(v[3]) == newPriceIcon and tonumber(string.match(strg, v[1])) ~= newPrice then
				retStrg = string.gsub(strg, v[2], newPrice.." #"..k.."#" )
				itemUpdated = itemUpdated + 1
			end
		end
	else
		for k,v in pairs(priceTab) do
			if string.lower(v[3]) == newPriceIcon then
				retStrg = newPrice.." #"..k.."#" 
				itemUpdated = itemUpdated + 1
			end
		end
	end
	if retStrg ==  "" then retStrg = strg end
	return retStrg
end

	local qualityTab = {
		--"=q0=",
		"=q1=",
		"=q2=",
		"=q3=",
		"=q4=",
		"=q5=",
		"=q6=",
		"=q7=",
	}
	
local function startVendorScan(tab)
	itemUpdated = 0
	-- itemTexture, itemValue, itemLink = GetMerchantItemCostItem(index, itemIndex)
	-- numItems = GetMerchantNumItems();
	-- itemID = string.match(itemLink, "item:(%d+):")

	if MerchantFrame:IsShown() then
		if tab then
			for i = 1,GetMerchantNumItems() do
				local itemTexture, itemValue = GetMerchantItemCostItem(i, 1)
				local itemLink = GetMerchantItemLink(i)
				local itemID = string.match(itemLink or "item:0:", "item:(%d+):")
				itemID = itemID or 0
				for site, siteTab in ipairs(tab) do
					for itemNum, item in ipairs(siteTab) do
						if itemID and tonumber(itemID) and item[2] == tonumber(itemID) then
							item[6] = getItemPrice(item[6], itemValue, itemTexture)
						end
					end
				end
			end
		else
			tab = {}
			tab[1] = {}
			for i = 1,GetMerchantNumItems() do
				local name, texture, price, quantity, numAvailable, isUsable, extendedCost = GetMerchantItemInfo(i)
				local itemTexture, itemValue = GetMerchantItemCostItem(i, 1)
				local itemLink = GetMerchantItemLink(i)
				local itemID = string.match(itemLink or "item:0:", "item:(%d+):")
				itemID = itemID or 0
				itemID = tonumber(itemID)
				local _,_,quality = GetItemInfo(itemID)
				if quality then quality = qualityTab[quality] end
				local desc = AtlasLoot:FixTextBack(AtlasLoot:GetItemEquipInfo(itemID))
				tab[1][i] = { i, itemID, "", string.format("%s%s", quality or "", name or ""), "=ds="..desc, getItemPrice(nil, itemValue, itemTexture) }
			end
		end
	else
		print("No vendor frame shown")
	end
	
	return tab
end

-- function that draws the widgets for the first tab
local function VendorFrame(container)
	local lootTable, lootTableString
  
	local multiEditbox = AceGUI:Create("MultiLineEditBox")
    
	local editbox = AceGUI:Create("EditBox")
	editbox:SetLabel("LootTable:")
	editbox:SetWidth(200)
	editbox:SetCallback("OnEnterPressed", function(widget, event, text) 
		lootTable = text
		lootTableString = ""
		if AtlasLoot_Data[lootTable] and AtlasLoot_Data[lootTable]["Normal"] then
			lootTableString = returnItemTableString(AtlasLoot_Data[lootTable]["Normal"])
		end
		multiEditbox:SetText(lootTableString)
	end)
	container:AddChild(editbox)

	local desc = AceGUI:Create("Label")
	desc:SetText("")
	--desc:SetFullWidth(true)
	
	local button = AceGUI:Create("Button")
	button:SetText("Start Scan")
	button:SetCallback("OnClick", function() 
		local newTab, lootTableString
		if lootTable and AtlasLoot_Data[lootTable] and AtlasLoot_Data[lootTable]["Normal"] then
			newTab = startVendorScan(AtlasLoot_Data[lootTable]["Normal"]) 
		else
			newTab = startVendorScan() 
		end
		desc:SetText(itemUpdated.." items updated.") 
		lootTableString = startVendorScan(newTab)
		lootTableString = returnItemTableString(lootTableString)
		multiEditbox:SetText(lootTableString)
	end)
	button:SetWidth(200)
	container:AddChild(button)

	container:AddChild(desc)
	
	multiEditbox:SetLabel("LootTable:")
	multiEditbox:SetFullWidth(true)
	multiEditbox:SetFullHeight(true)
	--multiEditbox:SetCallback("OnEnterPressed", function(widget, event, text) lootTable = text end)
	container:AddChild(multiEditbox)
end
-- ######################################################
-- ######################################################

local function CheckTextParsing(entrys)
	entrys = entrys or 0
	local checkString = ""
	local numberFound = 0
	local checkTable = {}
	for iniName, iniTable in pairs(AtlasLoot_Data) do
		for tableType, tableTypeTable in pairs(iniTable) do
			if tableType ~= "info" then
				for tableNumber, tableNumberTable in ipairs(tableTypeTable) do
					if type(tableNumberTable) == "table" then
						for itemNum, itemTable in ipairs(tableNumberTable) do
							for k,v in pairs(AtlasLoot_TextParsing) do
								local tabName = v[1].." <"..v[2]..">"
								if not checkTable[tabName] then checkTable[tabName] = {} end
								if string.find(itemTable[4] or "", v[1]) 
								or string.find(itemTable[5] or "", v[1]) 
								or string.find(itemTable[6] or "", v[1]) 
								or string.find(itemTable[7] or "", v[1]) then
									checkTable[tabName][#checkTable[tabName] + 1] = "AtlasLoot_Data[\""..iniName.."\"][\""..tableType.."\"]["..tableNumber.."]["..itemNum.."]"
								end
							end
						end
					end
				end
			end
		end
	end
	
	for k,v in pairs(checkTable) do
		if #v <= entrys then
			numberFound = numberFound + 1
			local chacheString = ""
			chacheString = chacheString.."\""..k.."\" ("..#v..")\n"
			for i,j in ipairs(v) do
				chacheString = chacheString.."-- "..j.."\n"
			end
			chacheString = chacheString.."\n\n"
			checkString = checkString..chacheString
			chacheString = nil
		end
	end
	
	return checkString, numberFound
end

local function TextParsingFrame(container)
	local multiEditbox = AceGUI:Create("MultiLineEditBox")
	local numEntrys
	
	local editbox = AceGUI:Create("EditBox")
	editbox:SetLabel("Less than x entrys:")
	editbox:SetWidth(200)
	editbox:SetCallback("OnEnterPressed", function(widget, event, text) 
		numEntrys = tonumber(text)
		editbox:SetText(numEntrys)
	end)
	container:AddChild(editbox)
	
	local desc = AceGUI:Create("Label")
	desc:SetText("0")
	
	local button = AceGUI:Create("Button")
	button:SetText("Start Scan")
	button:SetCallback("OnClick", function() 
		local text, number = CheckTextParsing(numEntrys)
		multiEditbox:SetText(text)
		desc:SetText(number.." entrys found")
		multiEditbox.editBox:HighlightText(0)
	end)
	button:SetWidth(200)
	container:AddChild(button)
	local button2 = AceGUI:Create("Button")
	button2:SetText("Mark all")
	button2:SetCallback("OnClick", function()
		multiEditbox.editBox:HighlightText(0)
	end)
	button2:SetWidth(200)
	container:AddChild(button2)
	container:AddChild(desc)
	
	multiEditbox:SetLabel("TextParsing:")
	multiEditbox:SetFullWidth(true)
	multiEditbox:SetFullHeight(true)
	--multiEditbox:SetCallback("OnEnterPressed", function(widget, event, text) lootTable = text end)
	container:AddChild(multiEditbox)

end

-- ######################################################
-- ######################################################
local function CheckInstanceList()
	local cacheTab = {}
	local moduleList = {}
	local retString = ""
	
	for k,v in ipairs(AtlasLoot_ModuleList_Loader) do
		moduleList[v] = k
	end
	for iniName, iniTable in pairs(AtlasLoot_Data) do
		--iniTable.info.module
		if not iniTable or not iniTable.info or not iniTable.info.module then
			print("ERROR "..iniName)
		else
			cacheTab[iniName] = moduleList[iniTable.info.module]
		end
	end
	
	retString = "AtlasLoot_InstanceList_Loader = {\n"
	for k,v in pairs(cacheTab) do
		retString = retString.."\n[\""..k.."\"] = "..v..","
	end
	retString = retString.."\n}"
	
	return retString
end


local function InstanceInfoFrame(container)
	local multiEditbox = AceGUI:Create("MultiLineEditBox")
	
	local button = AceGUI:Create("Button")
	button:SetText("Start Scan")
	button:SetCallback("OnClick", function() 
		local text, number = CheckInstanceList()
		multiEditbox:SetText(text)
		multiEditbox.editBox:HighlightText(0)
	end)
	button:SetWidth(200)
	container:AddChild(button)
	local button2 = AceGUI:Create("Button")
	button2:SetText("Mark all")
	button2:SetCallback("OnClick", function()
		multiEditbox.editBox:HighlightText(0)
	end)
	button2:SetWidth(200)
	container:AddChild(button2)
	
	multiEditbox:SetLabel("InstanceList:")
	multiEditbox:SetFullWidth(true)
	multiEditbox:SetFullHeight(true)
	--multiEditbox:SetCallback("OnEnterPressed", function(widget, event, text) lootTable = text end)
	container:AddChild(multiEditbox)
end

-- ######################################################
-- ######################################################

local AchievementIDs = {
	1312, -- BC
	2256, -- WotLK 
	7439, -- Mop
}

local function AchievementScan(id)
	if not id or id <= 0 then return "ERROR" end
	local ret = ""
	
	for i = 1,GetAchievementNumCriteria(id) do
		local name = GetAchievementCriteriaInfo(id,i)
		ret = ret..string.format("[\"%s\"] = GetAchievementCriteriaInfo(%d,%d),\n", name, id, i)
	end
	
	return ret
end
local function AchievementScanAll()
	local ret = ""
	for k,v in ipairs(AchievementIDs) do
		ret = ret..AchievementScan(v)
	end
	return ret
end

local function AchievementScanFrame(container)
	local textAID

	local editbox2 = AceGUI:Create("EditBox")

	local multiEditbox = AceGUI:Create("MultiLineEditBox")
	
	local editbox = AceGUI:Create("EditBox")
	editbox:SetLabel("AchievementID:")
	editbox:SetWidth(200)
	editbox:SetCallback("OnEnterPressed", function(widget, event, text) 
		textAID = tonumber(text)
		multiEditbox:SetText(AchievementScan( textAID ))
	end)
	container:AddChild(editbox)
	
	local button = AceGUI:Create("Button")
	button:SetText("Start Scan")
	button:SetCallback("OnClick", function() 
		multiEditbox:SetText(AchievementScan( textAID ))
	end)
	button:SetWidth(200)
	container:AddChild(button)
	
	local button2 = AceGUI:Create("Button")
	button2:SetText("Scan All")
	button2:SetCallback("OnClick", function() 
		multiEditbox:SetText(AchievementScanAll())
	end)
	button2:SetWidth(200)
	container:AddChild(button2)
	
	multiEditbox:SetLabel("Achievement Info:")
	multiEditbox:SetFullWidth(true)
	multiEditbox:SetFullHeight(true)
	--multiEditbox:SetCallback("OnEnterPressed", function(widget, event, text) lootTable = text end)
	container:AddChild(multiEditbox)
end

-- ######################################################
-- ######################################################
function startEJScan()
	local num = EJ_GetNumLoot()
	local rettab = {
		[1] = {}
	}
	for i = 1, num do
		local name, icon, slot, armorType, itemID, link = EJ_GetLootInfoByIndex(i)
		
		local _,_,quality = GetItemInfo(itemID)
		quality = qualityTab[quality]
		
		local desc = AtlasLoot:FixTextBack(AtlasLoot:GetItemEquipInfo(itemID))
		rettab[1][i] = {i, itemID, "", quality..name, "=ds="..desc }
	end
	
	return rettab
end

local function EJScan(container)
	local lootTable, lootTableString
  
	local multiEditbox = AceGUI:Create("MultiLineEditBox")

	local desc = AceGUI:Create("Label")
	desc:SetText("")
	--desc:SetFullWidth(true)
	
	local button = AceGUI:Create("Button")
	button:SetText("Start Scan")
	button:SetCallback("OnClick", function() 
		lootTableString = startEJScan()
		lootTableString = returnItemTableString(lootTableString)
		multiEditbox:SetText(lootTableString)
	end)
	button:SetWidth(200)
	container:AddChild(button)

	container:AddChild(desc)
	
	multiEditbox:SetLabel("LootTable:")
	multiEditbox:SetFullWidth(true)
	multiEditbox:SetFullHeight(true)
	--multiEditbox:SetCallback("OnEnterPressed", function(widget, event, text) lootTable = text end)
	container:AddChild(multiEditbox)
end

-- diff = max 5
local instanceList = {
	317, -- Mogu
	322, -- Pandaria
	320, -- Terasse
	330, -- HoF
	362, -- Throne
}
local numClasses = GetNumClasses()
local function startBonusRollScan()
	local tab = {}
	local retString = ""
	if not IsAddOnLoaded("Blizzard_EncounterJournal") then
		LoadAddOn("Blizzard_EncounterJournal")
	end
	EncounterJournal_ListInstances()
	EJ_ClearSearch()
	EJ_SetDifficulty(1)

	--EncounterJournal_DisplayInstance(
	for _,iniId in ipairs(instanceList) do
		for diff=1,5 do 
			EncounterJournal_ListInstances()
			EncounterJournal_DisplayInstance(iniId)
			EJ_SetDifficulty(diff)
			for classId=1,numClasses do
				local numSpecs = GetNumSpecializationsForClassID(classId)
				for specId=1,numSpecs do
					local specID, specName = GetSpecializationInfoForClassID(classId, specId)
					EJ_SetLootFilter(classId, specID)
					local numLoot = EJ_GetNumLoot()
					--print(numLoot)
					for loot=1,numLoot do
						local name, icon, slot, armorType, itemID, link, encounterID = EJ_GetLootInfoByIndex(loot)
						if not tab[itemID] then tab[itemID] = {} end
						if not tab[itemID][classId] then
							tab[itemID][classId] = {}
							for i=1,numSpecs do
								tab[itemID][classId][i] = false
							end
						end
						tab[itemID][classId][specId] = true
					end
				end
			end
		end
	end
	
	for itemId, itemTab in pairs(tab) do
		retString = retString.."AtlasLoot_BonusRoll_Items["..itemId.."]={"
		for classId, classTab in pairs(itemTab) do
			retString = retString.."["..classId.."]={"
			for specId,spec in ipairs(classTab) do
				if specId > 1 then
					retString=retString..","
				end
				if spec then
					retString=retString.."true"
				else
					retString=retString.."false"
				end
			end
			retString = retString.."},"
		end
		retString = retString.."}\n"
	end
	
	return retString
end

local function startClassScan()
	local ret = "local classTable = {\n"
	for i = 1,11 do
		ret = ret.."["..i.."] = {"
		for j=1,4 do
			local id, name, description, icon, background, role = GetSpecializationInfoForClassID(i,j)
			if id then
				ret = ret.."["..id.."] = "..j..","
			end
		end
		ret = ret.."},\n"
	end
	ret = ret.."}"
	
	return ret
end

--EJ_SetLootFilter(classID, specID)
local function BonusRollScanFrame(container)
	local lootTable, lootTableString
  
	local multiEditbox = AceGUI:Create("MultiLineEditBox")

	local desc = AceGUI:Create("Label")
	desc:SetText("")
	--desc:SetFullWidth(true)
	
	local button = AceGUI:Create("Button")
	button:SetText("Start Scan")
	button:SetCallback("OnClick", function() 
		lootTableString = startBonusRollScan()
		multiEditbox:SetText(lootTableString)
	end)
	button:SetWidth(200)
	container:AddChild(button)
	
	local button2 = AceGUI:Create("Button")
	button2:SetText("Class Scan")
	button2:SetCallback("OnClick", function() 
		lootTableString = startClassScan()
		multiEditbox:SetText(lootTableString)
	end)
	button2:SetWidth(200)
	container:AddChild(button2)

	container:AddChild(desc)
	
	multiEditbox:SetLabel("LootTable:")
	multiEditbox:SetFullWidth(true)
	multiEditbox:SetFullHeight(true)
	--multiEditbox:SetCallback("OnEnterPressed", function(widget, event, text) lootTable = text end)
	container:AddChild(multiEditbox)
end
-- ######################################################


-- Callback function for OnGroupSelected
local function SelectGroup(container, event, group)
   container:ReleaseChildren()
   if group == "tab1" then
		VendorFrame(container)
   elseif group == "tab2" then
		TextParsingFrame(container)
	elseif group == "tab3" then
		InstanceInfoFrame(container)
	elseif group == "tab4" then
		EJScan(container)
	elseif group == "tab5" then
		AchievementScanFrame(container)
	elseif group == "tab6" then
		BonusRollScanFrame(container)
	end
end


function AtlasLoot:DevTool_CreateFrame()
	local frame = AceGUI:Create("Frame")
	frame:SetTitle("DevTools")
	frame:SetStatusText("DevTools Frame")
	frame:SetCallback("OnClose", function(widget) AceGUI:Release(widget) end)
	-- Fill Layout - the TabGroup widget will fill the whole frame
	frame:SetLayout("Fill")

	-- Create the TabGroup
	local tab =  AceGUI:Create("TabGroup")
	tab:SetLayout("Flow")
	-- Setup which tabs to show
	tab:SetTabs({{text="Vendor Scan", value="tab1"}, {text="TextParsing Scan", value="tab2"}, {text="InstanceInfo Scan", value="tab3"}, {text="EJ Scan", value="tab4"}, {text="Achievement Scan", value="tab5"}, {text="BonusRoll Scan", value="tab6"}})
	-- Register callback
	tab:SetCallback("OnGroupSelected", SelectGroup)
	-- Set initial Tab (this will fire the OnGroupSelected callback)
	tab:SelectTab("tab1")

	-- add to the frame container
	frame:AddChild(tab)

end

function AtlasLoot:GetMapIds()
	self.db.profile.MAPIDS = self.db.profile.MAPIDS or {}	
	for i = 1,10000 do
		if GetMapNameByID(i) then
			self.db.profile.MAPIDS[i] = GetMapNameByID(i)
		end
	end
end

function AtlasLoot:GetEJDetails(bool)
	local iniIndex = 1
	local iniID, iniName = EJ_GetInstanceByIndex(iniIndex, bool)
	self.db.profile.EJINFO = self.db.profile.EJINFO or {}	
	local bossIndex, bossName, bossID
	while iniID do
		EJ_SelectInstance(iniID)
		bossIndex = 1
		bossName, _, bossID = EJ_GetEncounterInfoByIndex(bossIndex)
		--print(iniName, " = ", iniID)#
		self.db.profile.EJINFO[iniID] = {[iniName] = true}
		while bossName and bossIndex < 50 do
			--print("	", bossName, " = ", bossID)
			self.db.profile.EJINFO[iniID][bossID] = bossName
			bossIndex = bossIndex + 1
			bossName, _, bossID = EJ_GetEncounterInfoByIndex(bossIndex)
		end
		iniIndex = iniIndex + 1
        iniID, iniName = EJ_GetInstanceByIndex(iniIndex, bool)
	end
	if bool == false or bool == nil then
		AtlasLoot:GetEJDetails(true)
	end
end

local atlasSupportRemoved = false
function AtlasLoot:ReduceMemoryUsage()
	for iniName, iniTable in pairs(AtlasLoot_Data) do
		if iniTable.info and iniTable.info.module then
			iniTable.info.module = nil
		end
		if not string.find(iniName, "MENU") then
			for tableType, tableTypeTable in pairs(iniTable) do
				if tableType ~= "info" then
					for tableNumber, tableNumberTable in ipairs(tableTypeTable) do
						if type(tableNumberTable) == "table" then
							for itemNum, itemTable in ipairs(tableNumberTable) do
								if itemTable[4] ~= "INV_Box_01" and itemTable[4] ~= "inv_box_04" then
									itemTable[4] = nil
									itemTable[5] = nil
									itemTable[6] = nil
									itemTable[7] = nil
									itemTable[8] = nil
								end
							end
						end
					end
				end
			end
		end
	end
	
	if not atlasSupportRemoved and not IsAddOnLoaded("Atlas") then
		for k,v in pairs(AtlasLoot_LootTableRegister["Instances"]) do
			if type(v) == "table" and v["Bosses"] then
				for i,j in ipairs(v["Bosses"]) do
					j[2] = nil
				end
			end
		end
		
		AtlasLoot.SetupForAtlas = nil
		AtlasLoot.AtlasInitialize = nil
		AtlasLoot.Atlas_OnShow = nil 
		AtlasLoot.AtlasRefreshHook = nil 
		AtlasLoot.AtlasScrollBar_Update = nil 
		AtlasLoot.Atlas_SetBoss = nil 
		AtlasLoot.Boss_OnClick = nil 
		atlasSupportRemoved = true
	end
	collectgarbage("collect")

end

--[[ EVENTLOG
local eventSave = {}
local eventFrame = CreateFrame("FRAME")
local functioneventFrameOnEvent = function(self, event, ...)
	if event then
		if not eventSave[event] then eventSave[event] = {} end
		table.insert(eventSave[event], {...})
		print(event, ...)
	end
end
eventFrame:SetScript("OnEvent", functioneventFrameOnEvent)

function AtlasLoot_PrintEventLog()
	for event,eventTab in pairs(eventSave) do
		if eventTab and type(eventTab) == "table" then
			for i,args in ipairs(eventTab) do
				local argString = event.." - "
				local tmp = ""
				for k,v in ipairs(args) do
					tmp = string.format("## arg%d:%s", k, tostring(v or "nil"))
					argString = argString..tmp
				end
				print(argString)
			end
		end
	end
end

eventFrame:RegisterEvent("SPELL_CONFIRMATION_PROMPT")
eventFrame:RegisterEvent("SPELL_CONFIRMATION_TIMEOUT")
eventFrame:RegisterEvent("BONUS_ROLL_STARTED")
eventFrame:RegisterEvent("BONUS_ROLL_FAILED")
eventFrame:RegisterEvent("BONUS_ROLL_RESULT")
]]--