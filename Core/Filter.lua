--[[
Atlasloot Enhanced
Author Daviesh
Loot browser associating loot with instance bosses
Can be integrated with Atlas (http://www.atlasmod.com)

Functions:
AtlasLoot_HideNoUsableItems()
AtlasLoot_FilterEnableButton()
<local> CreateCheckButton(parrent, text, num)
AtlasLoote_CreateFilterOptions()

]]

local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetLookupTable();
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local OptionsLoadet = false

AtlasLootFilterDB = {};

local FilterTable = {
	BabbleInventory["Two-Hand"],	--1
	BabbleInventory["Cloth"],		--2
	BabbleInventory["Leather"],		--3
	BabbleInventory["Mail"],		--4
	BabbleInventory["Plate"],		--5
	BabbleInventory["Dagger"],		--6
	BabbleInventory["Mace"],		--7
	BabbleInventory["Staff"],		--8		
	BabbleInventory["Wand"],		--9
	BabbleInventory["Axe"],			--10
	BabbleInventory["Bow"],			--11
	BabbleInventory["Crossbow"],	--12
	BabbleInventory["Gun"],			--13
	BabbleInventory["Polearm"],		--14
	BabbleInventory["Shield"],		--15
	BabbleInventory["Sword"],		--16
	BabbleInventory["Thrown"],		--17
	BabbleInventory["Fist Weapon"],	--18
	BabbleInventory["Idol"],		--19
	BabbleInventory["Totem"],		--20
	BabbleInventory["Libram"],		--21
	BabbleInventory["Arrow"],		--22
	BabbleInventory["Bullet"],		--23
	BabbleInventory["Quiver"],		--24
	BabbleInventory["Ammo Pouch"],	--25
	AL["Sigil"],					--26
	"",								--27
	"",								--28
	BabbleInventory["Ring"],		--29
	BabbleInventory["Trinket"],		--30
}

local ClassHides = {
	["DRUID"] = {[4] = false,[5] = false,[9] = false,[10] = false,[11] = false,[12] = false,[13] = false,[15] = false,[16] = false,[17] = false,[20] = false,[21] = false,[22] = false,[23] = false,[24] = false,[25] = false,[26] = false},
	["MAGE"] = {[1] = false,[3] = false,[4] = false,[5] = false,[7] = false,[10] = false,[11] = false,[12] = false,[13] = false,[14] = false,[15] = false,[17] = false,[18] = false,[19] = false,[20] = false,[21] = false,[22] = false,[23] = false,[24] = false,[25] = false,[26] = false},
	["PALADIN"] = {[2] = false,[3] = false,[4] = false,[6] = false,[8] = false,[9] = false,[11] = false,[12] = false,[13] = false,[17] = false,[18] = false,[19] = false,[20] = false,[22] = false,[23] = false,[24] = false,[25] = false,[26] = false},
	["PRIEST"] = {[1] = false,[3] = false,[4] = false,[5] = false,[10] = false,[11] = false,[12] = false,[13] = false,[14] = false,[15] = false,[16] = false,[17] = false,[18] = false,[19] = false,[20] = false,[21] = false,[22] = false,[23] = false,[24] = false,[25] = false,[26] = false},
	["ROGUE"] = {[1] = false,[4] = false,[5] = false,[8] = false,[9] = false,[10] = false,[14] = false,[15] = false,[19] = false,[20] = false,[21] = false,[26] = false},
	["HUNTER"] = {[2] = false,[5] = false,[7] = false,[9] = false,[15] = false,[19] = false,[20] = false,[21] = false,[26] = false},
	["SHAMAN"] = {[5] = false,[11] = false,[12] = false,[13] = false,[16] = false,[17] = false,[19] = false,[20] = false,[21] = false,[22] = false,[23] = false,[24] = false,[25] = false,[26] = false},
	["WARLOCK"] = {[1] = false,[3] = false,[4] = false,[5] = false,[7] = false,[10] = false,[11] = false,[12] = false,[13] = false,[14] = false,[15] = false,[17] = false,[18] = false,[19] = false,[20] = false,[21] = false,[22] = false,[23] = false,[24] = false,[25] = false,[26] = false},
	["WARRIOR"] = {[2] = false,[19] = false,[20] = false,[21] = false,[26] = false},
	["DEATHKNIGHT"] = {[2] = false,[3] = false,[4] = false,[6] = false,[8] = false,[9] = false,[11] = false,[12] = false,[13] = false,[15] = false,[17] = false,[18] = false,[19] = false,[20] = false,[21] = false,[22] = false,[23] = false,[24] = false,[25] = false},
}

-- **********************************************************************
-- ItemFilter:
--	AtlasLoot_HideNoUsableItems()
--	AtlasLoot_FilterEnableButton()
-- **********************************************************************

AtlasLoot_Data["FilterList"] = {
};
	
function AtlasLoot_HideNoUsableItems()	
	local _,playerClass = UnitClass("player")
	local dataID = AtlasLootItemsFrame.refreshOri[1] 
	local dataSource = AtlasLootItemsFrame.refreshOri[2] 
	local boss = AtlasLootItemsFrame.refreshOri[3] 
	local pFrame = AtlasLootItemsFrame.refreshOri[4] 	
	local tablebase = AtlasLoot_Data[dataID]
	if not tablebase or dataID == "WishList" or dataID == "SearchResult" or dataSource == "AtlasLootCrafting" then return end
	local itemCount = 0
	local countAll = 1
	local count = 0
	AtlasLoot_Data["FilterList"] = {}
	for i=1,30 do
		local info = getglobal("AtlasLootItem_"..i.."_Extra"):GetText()
		if getglobal("AtlasLootItem_"..i):IsShown() then
			local xgo = true
			itemCount = itemCount + 1
			countAll = countAll + count
			count = 0
			local xitemID = getglobal("AtlasLootItem_"..i).itemID
			local xspellitemID = getglobal("AtlasLootItem_"..i).spellitemID
			local xitemTexture = tablebase[itemCount][3]
			local xitemExtraText = getglobal("AtlasLootItem_"..i.."_Extra"):GetText()
			local xitemNameText = getglobal("AtlasLootItem_"..i.."_Name"):GetText()
			if xitemExtraText and xitemExtraText ~= "" then
				for k,v in pairs(FilterTable) do
					if strfind(xitemExtraText, v) and AtlasLootFilterDB[k] == false and not strfind(xitemExtraText, BabbleInventory["Off Hand"]) then
						xgo = false
					end
				end
			end
			if xgo == true then
				if i==16 and count > 0 then
					AtlasLoot_Data["FilterList"][16] = { 16, xitemID, xitemTexture, xitemNameText, xitemExtraText}	
					countAll = 16
				elseif i==16 and xitemExtraText and strfind(xitemExtraText, AL["Token"]) then
					AtlasLoot_Data["FilterList"][16] = { 16, xitemID, xitemTexture, xitemNameText, xitemExtraText}	
					countAll = 16
				elseif countAll < 16 and xitemNameText and strfind(xitemNameText, AL["Hard Mode"]) then
					AtlasLoot_Data["FilterList"][16] = { 16, xitemID, xitemTexture, xitemNameText, xitemExtraText}	
					countAll = 16					
				else
					AtlasLoot_Data["FilterList"][countAll] = { countAll, xitemID, xitemTexture, xitemNameText, xitemExtraText}					
				end
				
				if tablebase[itemCount][6] and i==16 then
					AtlasLoot_Data["FilterList"][16][6] = tablebase[itemCount][6]
				elseif tablebase[itemCount][6] and i~=16 then
					AtlasLoot_Data["FilterList"][countAll][6] = tablebase[itemCount][6]
				end
				if tablebase[itemCount][7] and i==16 then
					AtlasLoot_Data["FilterList"][16][7] = tablebase[itemCount][7]
				elseif tablebase[itemCount][7] and i~=16 then
					AtlasLoot_Data["FilterList"][countAll][7] = tablebase[itemCount][7]
				end
				if tablebase[itemCount][8] and i==16 then
					AtlasLoot_Data["FilterList"][16][8] = tablebase[itemCount][8]
				elseif tablebase[itemCount][8] and i~=16 then
					AtlasLoot_Data["FilterList"][countAll][8] = tablebase[itemCount][8]
				end

				countAll = countAll + 1
				count = 0
			end
		else
			count = count + 1
		end		
	end

	if tablebase.Next then
		AtlasLoot_Data["FilterList"].Next = tablebase.Next
	end
	if tablebase.Prev then
		AtlasLoot_Data["FilterList"].Prev = tablebase.Prev
	end
	if tablebase.Back then
		AtlasLoot_Data["FilterList"].Back = tablebase.Back
	end
	
	AtlasLoot_TableNames["FilterList"] = {AtlasLoot_TableNames[dataID][1],AtlasLoot_TableNames[dataID][2]};
	AtlasLoot_ShowItemsFrame("FilterList", "AtlasLootFilter", "", AtlasLootItemsFrame.refresh[4])
end

function AtlasLoot_FilterEnableButton()
	if ATLASLOOT_FILTER_ENABLE == true then
		ATLASLOOT_FILTER_ENABLE = false
		AtlasLoot_ShowItemsFrame(AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLootItemsFrame.refreshOri[4])
	else
		ATLASLOOT_FILTER_ENABLE = true
		AtlasLoot_HideNoUsableItems()
	end
end

-- **********************************************************************
-- Options:
--	AtlasLoot_HideNoUsableItems()
--	<local> CreateCheckButton(parrent, text, num)
--	AtlasLoote_CreateFilterOptions()
-- **********************************************************************
local ypos = -40
local xpos = 0

local function CreateCheckButton(parrent, text, num)
	local framewidht = InterfaceOptionsFramePanelContainer:GetWidth()
	if text ~= "" then
		local Check = CreateFrame("CheckButton", "AtlasLootOptionsCheck"..text, parrent, "OptionsCheckButtonTemplate")
			Check:SetPoint("LEFT", parrent, "TOPLEFT", xpos, ypos)
			Check:SetWidth(25)
			Check:SetHeight(25)
			Check:SetScript("OnShow", function()
				getglobal(this:GetName().."Text"):SetText(text);
				if AtlasLootFilterDB[num] then
					this:SetChecked(1);
				else
					this:SetChecked(nil);
				end
			end)
			Check:SetScript("OnClick", function()
				if AtlasLootFilterDB[num] then
					AtlasLootFilterDB[num] = false;
				else
					AtlasLootFilterDB[num] = true;
				end
			end)
				
		if xpos == framewidht/2 then
			xpos = 0
			ypos = ypos - 20
		elseif xpos == 0 then
			xpos = framewidht/2
		end
	elseif text == "" then
		if xpos == framewidht/2 then
			xpos = 0
			ypos = ypos - 20
		elseif xpos == 0 then
			xpos = framewidht/2
		end		
	end
end

function AtlasLoote_CreateFilterOptions()
	if OptionsLoadet then return end
	local FilterOptionsFrame = CreateFrame("FRAME", nil)
		FilterOptionsFrame.name = "Filter"
		FilterOptionsFrame.parent = "AtlasLoot"
		
	local framewidht = InterfaceOptionsFramePanelContainer:GetWidth()
	local panel3 = CreateFrame("ScrollFrame", "AtlasLootFilterOptionsScrollFrame", FilterOptionsFrame, "UIPanelScrollFrameTemplate")
	local scc = CreateFrame("Frame", "AtlasLootFilterOptionsScrollInhalt", panel3)
		panel3:SetScrollChild(scc)
		panel3:SetPoint("TOPLEFT", FilterOptionsFrame, "TOPLEFT", 10, -10)
		scc:SetPoint("TOPLEFT", panel3, "TOPLEFT", 0, 0)
		panel3:SetWidth(framewidht-45)  
		panel3:SetHeight(410) 
		scc:SetWidth(framewidht-45)  
		scc:SetHeight(410)  
		panel3:SetHorizontalScroll(-50)
		panel3:SetVerticalScroll(50)
		panel3:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile="", tile = false, tileSize = 0, edgeSize = 0, insets = { left = 0, right = 0, top = 0, bottom = 0 }})
		panel3:SetScript("OnVerticalScroll", function()  end)
		panel3:EnableMouse(true)
		panel3:SetVerticalScroll(0)
		panel3:SetHorizontalScroll(0)
		
	local ClassFilterLoadButton = CreateFrame("BUTTON", nil, scc, "UIPanelButtonTemplate")
		ClassFilterLoadButton:SetHeight(20)
		ClassFilterLoadButton:SetWidth(150)  
		ClassFilterLoadButton:SetPoint("TOPLEFT", scc, "TOPLEFT",0,-5)
		ClassFilterLoadButton:SetText(AL["Load Class Filter"])
		ClassFilterLoadButton:SetScript("OnClick", function()
			local _,playerClass = UnitClass("player")
			for k,v in pairs(FilterTable) do
				if ClassHides[playerClass][k] == false then
					AtlasLootFilterDB[k] = false
				else
					AtlasLootFilterDB[k] = true
				end
			end
			scc:Hide()
			scc:Show()
		end)
		
	for k,v in pairs(FilterTable) do
		if AtlasLootFilterDB[k] ~= true and AtlasLootFilterDB[k] ~= false then AtlasLootFilterDB[k] = true end
		CreateCheckButton(scc, v, k)
	end
			
	InterfaceOptions_AddCategory(FilterOptionsFrame)
	OptionsLoadet = true
end









