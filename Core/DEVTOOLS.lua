local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AceGUI = LibStub("AceGUI-3.0")

local itemUpdated = 0

function AtlasLoot:DevToolsInitialize()
	self:RegisterSlashCommand("dev", self.DevTool_Slash)
end

function AtlasLoot:DevTool_Slash(...)
	self:DevTool_CreateFrame()
end

local function returnItemTableString(tab)
	lootTableString = ""
	for site, siteTab in ipairs(tab) do
		if site == 1 then
			lootTableString = lootTableString.."{\n"
		else
			lootTableString = lootTableString.."\n["..site.."] = {\n"
		end
		for itemNum, item in ipairs(siteTab) do
			local temp = ""
			lootTableString = lootTableString.."    { "
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

function getItemPrice(strg, newPrice, newPriceIcon)
	local retStrg = ""
	newPriceIcon = string.lower(newPriceIcon)
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

local function startVendorScan(tab)
	itemUpdated = 0
	-- itemTexture, itemValue, itemLink = GetMerchantItemCostItem(index, itemIndex)
	-- numItems = GetMerchantNumItems();
	-- itemID = string.match(itemLink, "item:(%d+):")
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

	if MerchantFrame:IsShown() then
		if tab then
			for i = 1,GetMerchantNumItems() do
				local itemTexture, itemValue = GetMerchantItemCostItem(i, 1)
				local itemLink = GetMerchantItemLink(i)
				local itemID = string.match(itemLink, "item:(%d+):")
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
				local itemID = string.match(itemLink, "item:(%d+):")
				itemID = tonumber(itemID)
				local _,_,quality = GetItemInfo(itemID)
				quality = qualityTab[quality]
				local desc = AtlasLoot:FixTextBack(AtlasLoot:GetItemEquipInfo(itemID))
				tab[1][i] = { i, itemID, "", quality..name, "=ds="..desc, getItemPrice(nil, itemValue, itemTexture) }
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


-- Callback function for OnGroupSelected
local function SelectGroup(container, event, group)
   container:ReleaseChildren()
   if group == "tab1" then
      VendorFrame(container)
   elseif group == "tab2" then
    
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
	tab:SetTabs({{text="Vendor Scan", value="tab1"}})--, {text="Tab 2", value="tab2"}})
	-- Register callback
	tab:SetCallback("OnGroupSelected", SelectGroup)
	-- Set initial Tab (this will fire the OnGroupSelected callback)
	tab:SelectTab("tab1")

	-- add to the frame container
	frame:AddChild(tab)


	
end