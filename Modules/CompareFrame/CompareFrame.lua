local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local FRAME_NAME = "AtlasLootCompareFrame"
-- Formatierte liste für scroll frame
local OPEN_MAINFILTER_LIST = {}
-- Speichert Main buttons (ipairs)
local LIST_MAINFILTERS = {}
-- Speichert Sub liste
local LIST_SUBFILTERS = {}
local LIST_SUBSUBFILTERS = {}
-- Speichert liste aller items
local LIST_ITEMS = {}

local lootTableTypes = {"Normal", "Heroic", "25Man", "25ManHeroic"}

local NUM_MAINFILTERS_TO_DISPLAY = 15
local NUM_ITEMS_TO_DISPLAY = 8

local NUM_ITEMS_IN_LIST = 0

local STATS_LIST = {
	["STRENGTH"] = AL["Strength"],
 	["AGILITY"] = AL["Agility"],
	["STAMINA"] = AL["Stamina"],
	["INTELLECT"] = AL["Intellect"],
	["SPIRIT"] = AL["Spirit"],
	--["CRIT_RATING"] = AL["Crit"],
	--["DODGE_RATING"] = AL["Dodge"],
	--["EXPERTISE_RATING"] = AL["Expertise"],
	--["HIT_RATING"] = AL["Hit"],
	--["PARRY_RATING"] = AL["Parry"],
	--["SPELL_POWER"] = AL["Spell Power"],
}

local SORT_FUNC = {
	["name"] = function(table, revert)
		local a = {}
		for n in pairs(table) do a[#a +1] = n end
		table.sort(a)
		if revert then
			local i = #a+1
			return function()
				i = i - 1
				return a[i], t[a[i]]
			end
		else
			local i = 0
			return function()
				i = i + 1
				return a[i], t[a[i]]
			end
		end
	end,
	["rarity"] = function(table, revert)
		
	end,
	["itemlvl"] = function(table, revert)
		
	end,	
}
for k,v in pairs(STATS_LIST) do
	SORT_FUNC[k] = SORT_FUNC["itemlvl"]
end

local STATS_SORT_LIST = {
	["DRUID"] = { "STAMINA", "AGILITY", "INTELLECT", "SPIRIT" },
	["MAGE"] = { "STAMINA", "INTELLECT", "SPIRIT" },
	["PALADIN"] = { "STAMINA", "STRENGTH", "INTELLECT", "SPIRIT" },
	["PRIEST"] = { "STAMINA", "INTELLECT", "SPIRIT" },
	["ROGUE"] = { "STAMINA", "AGILITY", "INTELLECT", "SPIRIT" },
	["HUNTER"] = { "STAMINA", "AGILITY" },
	["SHAMAN"] = { "STAMINA", "AGILITY", "INTELLECT", "SPIRIT" },
	["WARLOCK"] = { "STAMINA", "INTELLECT", "SPIRIT" },
	["WARRIOR"] = { "STAMINA", "STRENGTH", "AGILITY" },
	["DEATHKNIGHT"] = { "STAMINA", "STRENGTH", "AGILITY" },
}

local STATS_EXTRA_SORT_LIST = {
	["DRUID"] = { "STAMINA", "AGILITY", "INTELLECT", "SPIRIT" },
	["MAGE"] = { "STAMINA", "INTELLECT", "SPIRIT" },
	["PALADIN"] = { "STAMINA", "STRENGTH", "INTELLECT", "SPIRIT" },
	["PRIEST"] = { "STAMINA", "INTELLECT", "SPIRIT" },
	["ROGUE"] = { "STAMINA", "AGILITY", "INTELLECT", "SPIRIT" },
	["HUNTER"] = { "STAMINA", "AGILITY" },
	["SHAMAN"] = { "STAMINA", "AGILITY", "INTELLECT", "SPIRIT" },
	["WARLOCK"] = { "STAMINA", "INTELLECT", "SPIRIT" },
	["WARRIOR"] = { "STAMINA", "STRENGTH", "AGILITY" },
	["DEATHKNIGHT"] = { "STAMINA", "STRENGTH", "AGILITY" },
}

function AtlasLoot:CompareFrame_LoadInstance(ini)
	if not ini then return end
	local bossTable, infoTable
	for k,v in pairs(AtlasLoot_LootTableRegister) do
		if v[ini] and v[ini]["Bosses"] then
			bossTable = v[ini]["Bosses"]
			infoTable = v[ini]["Info"]
		end
	end
	LIST_MAINFILTERS = {}
	LIST_SUBFILTERS = {}
	LIST_SUBSUBFILTERS = {}
	LIST_ITEMS = {}
	NUM_ITEMS_IN_LIST = 0
	
	if bossTable then
		local i = 1
		LIST_MAINFILTERS[i] = infoTable[1]
		LIST_SUBFILTERS[i] = {}
		LIST_SUBSUBFILTERS[i] = {}
		LIST_ITEMS[i] = {}
		for _,boss in ipairs(bossTable) do
			local dataID, instancePage = self:FormatDataID(boss[1])
			if dataID and AtlasLoot_Data[dataID] then
				local j = #LIST_SUBFILTERS[i] + 1
				LIST_SUBFILTERS[i][j] = AtlasLoot:GetTableInfo(dataID)
				LIST_SUBSUBFILTERS[i][j] = {}
				LIST_ITEMS[i][j] = {}
				for _,ltType in ipairs(lootTableTypes) do
					if AtlasLoot_Data[dataID][ltType] then
						local typNum = #LIST_SUBSUBFILTERS[i][j] + 1
						if ltType == "Normal" then
							LIST_SUBSUBFILTERS[i][j][ typNum ] = AL["Normal"]
						else	
							LIST_SUBSUBFILTERS[i][j][ typNum ] = AtlasLoot:GetLocInstanceType(ltType)
						end
						LIST_ITEMS[i][j][ typNum ] = {}
						for _,v in ipairs(AtlasLoot_Data[dataID][ltType]) do
							if ltType == "Normal" and AtlasLoot:CheckHeroic(v) then
								LIST_ITEMS[i][j][ 2 ] = {}
								LIST_SUBSUBFILTERS[i][j][ 2 ] = AtlasLoot:GetLocInstanceType("Heroic")
								local heroicNum = AtlasLoot:CheckHeroic(v)
								for iNum=1,heroicNum do
									local item = v[iNum]
									if item[2] and item[2] ~= 0 and type(item[2]) == "number" then
										LIST_ITEMS[i][j][ typNum ][ #LIST_ITEMS[i][j][ typNum ] + 1 ] = item[2]
										NUM_ITEMS_IN_LIST = NUM_ITEMS_IN_LIST + 1
									end
								end
								for iNum=heroicNum,#v do
									local item = v[iNum]
									if item[2] and item[2] ~= 0 and type(item[2]) == "number" then
										LIST_ITEMS[i][j][ 2 ][ #LIST_ITEMS[i][j][ 2 ] + 1 ] = item[2]
										NUM_ITEMS_IN_LIST = NUM_ITEMS_IN_LIST + 1
									end
								end
							else
								for _,item in ipairs(v) do
									if item[2] and item[2] ~= 0 and type(item[2]) == "number" then
										LIST_ITEMS[i][j][ typNum ][ #LIST_ITEMS[i][j][ typNum ] + 1 ] = item[2]
										NUM_ITEMS_IN_LIST = NUM_ITEMS_IN_LIST + 1
									end
								end
							end
						end
					end
				end
			end
		end
	end
	AtlasLoot:CompareFrame_UpdateMainFilterScrollFrame()
	AtlasLoot.CompareFrame.NumItems:SetText(string.format(AL["%d items"], NUM_ITEMS_IN_LIST))
end
-- #####################################################
-- Main(Sub) Filter
local function SortItems(sortBy,revert)
	
end
-- Main(Sub) Filter
-- #####################################################


-- #####################################################
-- Main(Sub) Filter

function AtlasLoot:CompareFrame_UpdateMainFilterScrollFrame()
	AtlasLoot:CompareFrame_UpdateMainFilterList()

	FauxScrollFrame_Update(AtlasLootCompareFrame_ScrollFrameMainFilter, getn(OPEN_MAINFILTER_LIST), 15, 20);
end

function AtlasLoot:CompareFrame_UpdateMainFilterList()
	OPEN_MAINFILTER_LIST = {}
	
	for i=1, getn(LIST_MAINFILTERS) do
		if ( AtlasLootCompareFrame_ScrollFrameMainFilter.selectedClass and AtlasLootCompareFrame_ScrollFrameMainFilter.selectedClass == LIST_MAINFILTERS[i] ) then
			tinsert(OPEN_MAINFILTER_LIST, {LIST_MAINFILTERS[i], "main", i, 1});
			AtlasLoot:CompareFrame_UpdateSubFilterList(i);
		else
			tinsert(OPEN_MAINFILTER_LIST, {LIST_MAINFILTERS[i], "main", i, nil});
		end
	end
	
	-- Display the list of open filters
	local button, index, info, isLast;
	local offset = FauxScrollFrame_GetOffset(AtlasLootCompareFrame_ScrollFrameMainFilter);
	index = offset;
	for i=1, NUM_MAINFILTERS_TO_DISPLAY do
		button = _G[FRAME_NAME.."MainFilterButton"..i];
		if ( getn(OPEN_MAINFILTER_LIST) > NUM_MAINFILTERS_TO_DISPLAY ) then
			button:SetWidth(136);
		else
			button:SetWidth(156);
		end

		index = index + 1;
		if ( index <= getn(OPEN_MAINFILTER_LIST) ) then
			info = OPEN_MAINFILTER_LIST[index];
			while ((info[2] == "invtype") and (not info[6])) do
				index = index + 1
				if ( index <= getn(OPEN_MAINFILTER_LIST) ) then
					info = OPEN_MAINFILTER_LIST[index];
				else
					info = nil;
					button:Hide();
					break;
				end
			end

			if ( info ) then
				MainFilterButton_SetType(button, info[2], info[1], info[5]);
				button.index = info[3];
				if ( info[4] ) then
					button:LockHighlight();
				else
					button:UnlockHighlight();
				end
				button:Show();
			end
		else
			button:Hide();
		end
	end
end

local function MainFilterButton_SetType(button, type, text, isLast)
	local normalText = _G[button:GetName().."NormalText"];
	local normalTexture = _G[button:GetName().."NormalTexture"];
	local line = _G[button:GetName().."Lines"];
	if ( type == "main" ) then
		button:SetText(text);
		normalText:SetPoint("LEFT", button, "LEFT", 4, 0);
		normalTexture:SetAlpha(1.0);	
		line:Hide();
	elseif ( type == "sub" ) then
		button:SetText(HIGHLIGHT_FONT_COLOR_CODE..text..FONT_COLOR_CODE_CLOSE);
		normalText:SetPoint("LEFT", button, "LEFT", 12, 0);
		normalTexture:SetAlpha(0.4);
		line:Hide();
	elseif ( type == "subsub" ) then
		button:SetText(HIGHLIGHT_FONT_COLOR_CODE..text..FONT_COLOR_CODE_CLOSE);
		normalText:SetPoint("LEFT", button, "LEFT", 20, 0);
		normalTexture:SetAlpha(0.0);	
		if ( isLast ) then
			line:SetTexCoord(0.4375, 0.875, 0, 0.625);
		else
			line:SetTexCoord(0, 0.4375, 0, 0.625);
		end
		line:Show();
	end
	button.type = type; 
end

function AtlasLoot:CompareFrame_UpdateSubFilterList(index)
	local subClass;
	for i=1, #LIST_SUBFILTERS[index] do
		subClass = HIGHLIGHT_FONT_COLOR_CODE..LIST_SUBFILTERS[index][i]..FONT_COLOR_CODE_CLOSE; 
		if ( AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclass and AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclass == subClass ) then
			tinsert(OPEN_MAINFILTER_LIST, {LIST_SUBFILTERS[index][i], "sub", i, 1});
			if LIST_SUBSUBFILTERS[index][i] and #LIST_SUBSUBFILTERS[index][i] > 1 then
				AtlasLoot:CompareFrame_UpdateSubSubFilterList(index, i);
			end
		else
			tinsert(OPEN_MAINFILTER_LIST, {LIST_SUBFILTERS[index][i], "sub", i, nil});
		end
	end
end

function AtlasLoot:CompareFrame_UpdateSubSubFilterList(index, subIndex)
	local invType, isLast, idx;
	for i=1, #LIST_SUBSUBFILTERS[index][subIndex] do
-- each type has 2 args: token name(i), display in list(i+1)
		idx = i
		invType = HIGHLIGHT_FONT_COLOR_CODE..LIST_SUBSUBFILTERS[index][subIndex][i]..FONT_COLOR_CODE_CLOSE; 
		if ( (i + 1) == LIST_SUBSUBFILTERS[index][subIndex][i] ) then
			isLast = 1;
		end

		if ( AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtypeIndex and AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtypeIndex == idx ) then
			tinsert(OPEN_MAINFILTER_LIST, {invType, "subsub", idx, 1, isLast, LIST_SUBSUBFILTERS[index][subIndex][i] } );
		else
			tinsert(OPEN_MAINFILTER_LIST, {invType, "subsub", idx, nil, isLast, LIST_SUBSUBFILTERS[index][subIndex][i] } );
		end
	end
end

function AtlasLoot:CompareFrame_Filter_OnClick(self, button)
	if ( self.type == "main" ) then
		if ( AtlasLootCompareFrame_ScrollFrameMainFilter.selectedClass == self:GetText() ) then
			AtlasLootCompareFrame_ScrollFrameMainFilter.selectedClass = nil;
			AtlasLootCompareFrame_ScrollFrameMainFilter.selectedClassIndex = nil;
		else
			AtlasLootCompareFrame_ScrollFrameMainFilter.selectedClass = self:GetText();
			AtlasLootCompareFrame_ScrollFrameMainFilter.selectedClassIndex = self.index;
		end
		AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclass = nil;
		AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclassIndex = nil;
		AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtype = nil;
		AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtypeIndex = nil;
	elseif ( self.type == "sub" ) then
		if ( AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclass == self:GetText() ) then
			AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclass = nil;
			AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclassIndex = nil;
		else
			AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclass = self:GetText();
			AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclassIndex = self.index;
		end
		AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtype = nil;
		AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtypeIndex = nil;
	elseif ( self.type == "subsub" ) then
		AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtype = self:GetText();
		AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtypeIndex = self.index;
	end
	AtlasLoot:CompareFrame_UpdateItemListScrollFrame()
	AtlasLoot:CompareFrame_UpdateMainFilterScrollFrame()
end

-- Main Filter
-- #####################################################

-- #####################################################
-- ItemList
function AtlasLoot:CompareFrame_UpdateItemListScrollFrame()
	local offset = FauxScrollFrame_GetOffset(AtlasLootCompareFrame_ScrollFrameItemFrame)
	local index, button;
	local curMainFilter = AtlasLootCompareFrame_ScrollFrameMainFilter.selectedClassIndex
	local curSubFilter = AtlasLootCompareFrame_ScrollFrameMainFilter.selectedSubclassIndex
	local curSubSubFilter = AtlasLootCompareFrame_ScrollFrameMainFilter.selectedInvtypeIndex
	local numItems = 0
	local itemSave = {}
	local itemIDs = {}
	if curMainFilter then
		if curSubFilter then
			if curSubSubFilter then
				itemIDs = LIST_ITEMS[curMainFilter][curSubFilter][curSubSubFilter]
			else
				for k,v in ipairs(LIST_ITEMS[curMainFilter][curSubFilter]) do
					for _,item in ipairs(v) do
						if not itemSave[item] then
							itemSave[item] = true
							itemIDs[#itemIDs+1] = item
						end
					end
				end
			end
		else
			for k,v in ipairs(LIST_ITEMS[curMainFilter]) do
				for _,itemList in ipairs(v) do
					for _,item in ipairs(itemList) do
						if not itemSave[item] then
							itemSave[item] = true
							itemIDs[#itemIDs+1] = item
						end
					end
				end
			end
		end
		itemSave = nil
	end
	for i=1,8 do
		_G[FRAME_NAME.."_ScrollFrameItemFrame_Item"..i]:Hide()
	end
	
	numItems = #itemIDs
	if numItems > 0 then
		for i=1,NUM_ITEMS_TO_DISPLAY do
				index = offset + i
				button = _G[FRAME_NAME.."_ScrollFrameItemFrame_Item"..i];
				
			if i <= numItems then
				button:Show();
				
				buttonName = FRAME_NAME.."_ScrollFrameItemFrame_Item"..i
				
				-- Resize button if there isn't a scrollbar
				buttonHighlight = _G[FRAME_NAME.."_ScrollFrameItemFrame_Item"..i.."_Highlight"];
				if ( numItems < NUM_ITEMS_TO_DISPLAY ) or ( numItems == NUM_ITEMS_TO_DISPLAY and numItems <= NUM_ITEMS_TO_DISPLAY ) then
					button:SetWidth(625);
					buttonHighlight:SetWidth(589);
				else
					button:SetWidth(597);
					buttonHighlight:SetWidth(562);
				end
				
				button:SetItemID(itemIDs[index])
			else
				button:Hide()
				button:SetItemID(nil)
			end
		end
	end
	
	if numItems <= NUM_ITEMS_TO_DISPLAY then
		_G[FRAME_NAME.."SortButton_Name"]:SetWidth(112)
		_G[FRAME_NAME.."SortButton_Rarity"]:SetWidth(112)
	else
		_G[FRAME_NAME.."SortButton_Name"]:SetWidth(112-12.5)
		_G[FRAME_NAME.."SortButton_Rarity"]:SetWidth(112-12.5)
	end
	FauxScrollFrame_Update(AtlasLootCompareFrame_ScrollFrameItemFrame, numItems, NUM_ITEMS_TO_DISPLAY, 37);
end

local function itemButtonOnEnter(self)
	local itemID = self.par.itemID
	
	if itemID and itemID ~= 0 then
		self:GetParent():LockHighlight();
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		GameTooltip:SetHyperlink("item:"..itemID..":0:0:0")
		GameTooltip:Show()
		GameTooltip_ShowCompareItem();

		if ( IsModifiedClick("DRESSUP") ) then
			ShowInspectCursor();
		else
			ResetCursor();
		end
	end
end

local function itemButtonOnLeave(self)
	local selected = nil
	if ( selected and ( selected == self:GetParent():GetID() + FauxScrollFrame_GetOffset(BrowseScrollFrame) ) ) then
		
	else
		self:GetParent():UnlockHighlight();
	end
	GameTooltip:Hide()
end

local function itemButtonOnClick(self, button)
	local itemID = self.itemID or self.par.itemID
	if itemID and itemID ~= 0 then
		local _, itemLink = GetItemInfo(itemID)
		if (itemLink and button == "LeftButton" and IsShiftKeyDown()) then
			if ChatFrameEditBox and ChatFrameEditBox:IsVisible() then
				ChatFrameEditBox:Insert(itemLink)
			else
				ChatEdit_InsertLink(itemLink)
			end
			return
		end
	end
end

local function SetItemID(self, itemID)
	if not itemID then
		self.itemID = nil
		self.stats = nil
		self.name = nil
		self.itemLvl = nil
		return
	end
	self.itemID = itemID
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(itemID)
	local itemIcon = GetItemIcon(itemID)
	local stats, color
	local locClass,englishClass = UnitClass("player")
	if itemRarity then
		_, _, _, color = GetItemQualityColor(itemRarity)
		color = "|c"..color
	end
	color = color or ""
	itemName = itemName or "???"
	self.Icon:SetTexture(itemIcon)		
	self.Name:SetText(color..itemName or "???")
	self.ItemLvl:SetText(itemLevel or "???")
	
	self.name = itemName
	self.itemLvl = itemLevel
	if itemLink then
		self.stats = GetItemStats(itemLink)
		for k,v in ipairs(STATS_SORT_LIST[englishClass]) do
			if self["ITEM_MOD_"..v.."_SHORT"] then
				if stats["ITEM_MOD_"..v.."_SHORT"] then
					self["ITEM_MOD_"..v.."_SHORT"]:SetText(self.stats["ITEM_MOD_"..v.."_SHORT"])
				else
					self["ITEM_MOD_"..v.."_SHORT"]:SetText(0)
				end
			end
		end
	end
	
end
	
local function createItemButton(name, par)
	local locClass,englishClass = UnitClass("player")
	local sortMaxLength = 625
	local sortCurLenght = 0
	local statsSort = {}
	
	local frame = CreateFrame("BUTTON", name, par)
	frame:SetWidth(sortMaxLength)
	frame:SetHeight(37)
	
	statsSort[1] = frame:CreateFontString(nil, "BACKGROUND", "GameFontNormal")
	statsSort[1]:SetPoint("TOPLEFT", frame, "TOPLEFT", 43, 0)
	statsSort[1]:SetJustifyH("LEFT")
	statsSort[1]:SetWidth(169)
	statsSort[1]:SetHeight(32)
	statsSort[1]:SetText("ITEMNAME")
	sortMaxLength = (sortMaxLength - 169) - 43
	
	statsSort[2] = frame:CreateFontString(nil, "BACKGROUND", "GameFontHighlightSmall")
	--statsSort[2]:SetPoint("TOPLEFT", frame, "TOPLEFT", 205, 0)
	statsSort[2]:SetPoint("LEFT", statsSort[1], "RIGHT", 0, 0)
	statsSort[2]:SetWidth(61)
	statsSort[2]:SetHeight(32)
	statsSort[2]:SetText("LVL")
	sortMaxLength = sortMaxLength - 61
	
	local left = frame:CreateTexture(nil, "BACKGROUND")
	left:SetPoint("LEFT", frame, "LEFT", 34, 2)	
	left:SetWidth(10)
	left:SetHeight(32)
	left:SetTexture("Interface\\AuctionFrame\\UI-AuctionItemNameFrame")
	left:SetTexCoord(0, 0.078125, 0, 1.0)
	
	local right = frame:CreateTexture(nil, "BACKGROUND")
	right:SetPoint("RIGHT", frame, "RIGHT", 0, 2)	
	right:SetWidth(10)
	right:SetHeight(32)
	right:SetTexture("Interface\\AuctionFrame\\UI-AuctionItemNameFrame")
	right:SetTexCoord(0.75, 0.828125, 0, 1.0)
	
	local center = frame:CreateTexture(nil, "BACKGROUND")
	center:SetPoint("LEFT", left, "RIGHT", 0, 0)	
	center:SetPoint("RIGHT", right, "LEFT", 0, 0)
	center:SetWidth(10)
	center:SetHeight(32)
	center:SetTexture("Interface\\AuctionFrame\\UI-AuctionItemNameFrame")
	center:SetTexCoord(0.078125, 0.75, 0, 1.0)
	
	local itemButton = CreateFrame("BUTTON", nil, frame)
	itemButton:SetWidth(32)
	itemButton:SetHeight(32)
	itemButton:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
	itemButton.par = frame
	
	itemButtonLayer1 = frame:CreateTexture(nil, "BORDER")
	itemButtonLayer1:SetPoint("TOPLEFT", itemButton, "TOPLEFT", 0, 0)	
	itemButtonLayer1:SetWidth(32)
	itemButtonLayer1:SetHeight(32)
	itemButtonLayer1:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
	
	itemButton:SetScript("OnEnter", itemButtonOnEnter)
	itemButton:SetScript("OnLeave", itemButtonOnLeave)
	itemButton:SetScript("OnClick", itemButtonOnClick)
	
	local normalTextureFrame = frame:CreateTexture(nil, "BORDER")
	normalTextureFrame:SetPoint("CENTER", itemButton, "CENTER", 0, 0)	
	normalTextureFrame:SetWidth(60)
	normalTextureFrame:SetHeight(60)
	normalTextureFrame:SetTexture("Interface\\Buttons\\UI-Quickslot2")
	
	itemButton:SetNormalTexture(normalTextureFrame)
	itemButton:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
	itemButton:SetPushedTexture("Interface\\Buttons\\UI-Quickslot-Depress")
	
	sortCurLenght = sortMaxLength / #STATS_SORT_LIST[englishClass]
	local num = 2
	for k,v in ipairs(STATS_SORT_LIST[englishClass]) do
		statsSort[k+num] = frame:CreateFontString(nil, "BACKGROUND", "GameFontHighlightSmall")
		statsSort[k+num]:SetPoint("LEFT", statsSort[k+num-1], "RIGHT", 0, 0)
		statsSort[k+num]:SetWidth(sortCurLenght)
		statsSort[k+num]:SetHeight(32)
		statsSort[k+num]:SetText(STATS_LIST[v])
		
		frame["ITEM_MOD_"..v.."_SHORT"] = statsSort[k+num]
	end
	
	local highlightTextureMainFrame = frame:CreateTexture(name.."_Highlight", "BORDER")
	highlightTextureMainFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 33, 0)	
	highlightTextureMainFrame:SetWidth(597-33)
	highlightTextureMainFrame:SetHeight(32)
	highlightTextureMainFrame:SetTexture("Interface\\HelpFrame\\HelpFrameButton-Highlight")
	highlightTextureMainFrame:SetTexCoord(0, 1.0, 0, 0.578125)
	highlightTextureMainFrame:Hide()
	
	frame:SetHighlightTexture(highlightTextureMainFrame, "ADD")
	
	frame:SetScript("OnClick", itemButtonOnClick)
	
	frame.Icon = itemButtonLayer1
	frame.IconButton = itemButton
	frame.Name = statsSort[1]
	frame.ItemLvl = statsSort[2]
	frame.oriSetWidth = frame.SetWidth

	local cur = 0
	function frame:SetWidth(width)
		if width == cur then
			-- Do nothing
		elseif width == 597 then
			statsSort[1]:SetWidth( 169 - 25 )
			local fixVaule = 349 / #STATS_SORT_LIST[englishClass]
			for i=3,#statsSort do
				statsSort[i]:SetWidth(fixVaule)
			end
			cur = width
			frame:oriSetWidth(width)
		elseif width == 625 then
			statsSort[1]:SetWidth( 169 )
			local fixVaule = 353 / #STATS_SORT_LIST[englishClass]
			for i=3,#statsSort do
				statsSort[i]:SetWidth(fixVaule)
			end
			cur = width
			frame:oriSetWidth(width)
		end
	end
	
	frame.SetItemID = SetItemID
	return frame
end
-- ItemList
-- #####################################################

local function onVerticalScrollMainFilter(self, offset)
	FauxScrollFrame_OnVerticalScroll(self, offset, 20, AtlasLoot.CompareFrame_UpdateMainFilterScrollFrame)
end

local function onVerticalScrollItemFrame(self, offset)
	FauxScrollFrame_OnVerticalScroll(self, offset, 37, AtlasLoot.CompareFrame_UpdateItemListScrollFrame)
end

function AtlasLoot:CompareFrame_Create()
	if self.CompareFrame then return end
	local frameName = "AtlasLootCompareFrame"
	AtlasLoot.CompareFrame = CreateFrame("Frame",FRAME_NAME)

	local Frame = AtlasLoot.CompareFrame
	Frame:ClearAllPoints()
	Frame:SetParent(UIParent)
	Frame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
	--Frame:SetFrameStrata("HIGH")
	Frame:SetWidth(832)
	Frame:SetHeight(447)
	Frame:SetMovable(true)
	Frame:EnableMouse(true)
	Frame:RegisterForDrag("LeftButton")
	Frame:RegisterForDrag("LeftButton", "RightButton")
	Frame:SetScript("OnMouseDown", Frame.StartMoving)
	Frame:SetScript("OnMouseUp", Frame.StopMovingOrSizing)
	Frame:SetToplevel(true)
	Frame:SetClampedToScreen(true)
	
	Frame.Layers = {}
	
	Frame.Layers[1] = Frame:CreateTexture(nil, "BACKGROUND")
	Frame.Layers[1]:SetPoint("TOPLEFT", Frame, "TOPLEFT", 12, -8)	
	Frame.Layers[1]:SetWidth(58)
	Frame.Layers[1]:SetHeight(58)
	Frame.Layers[1]:SetTexture("Interface\\Icons\\INV_Box_01")
	
	Frame.Layers[2] = Frame:CreateTexture(nil, "ARTWORK")
	Frame.Layers[2]:SetPoint("TOPLEFT", Frame, "TOPLEFT")	
	Frame.Layers[2]:SetWidth(256)
	Frame.Layers[2]:SetHeight(256)
	Frame.Layers[2]:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Browse-TopLeft")
	
	Frame.Layers[3] = Frame:CreateTexture(nil, "ARTWORK")
	Frame.Layers[3]:SetPoint("TOPLEFT", Frame, "TOPLEFT", 256, 0)	
	Frame.Layers[3]:SetWidth(320)
	Frame.Layers[3]:SetHeight(256)
	Frame.Layers[3]:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Browse-Top")
	
	Frame.Layers[4] = Frame:CreateTexture(nil, "ARTWORK")
	Frame.Layers[4]:SetPoint("TOPLEFT", Frame.Layers[3], "TOPRIGHT")	
	Frame.Layers[4]:SetWidth(256)
	Frame.Layers[4]:SetHeight(256)
	Frame.Layers[4]:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Browse-TopRight")
	
	Frame.Layers[5] = Frame:CreateTexture(nil, "ARTWORK")
	Frame.Layers[5]:SetPoint("TOPLEFT", Frame, "TOPLEFT", 0, -256)	
	Frame.Layers[5]:SetWidth(256)
	Frame.Layers[5]:SetHeight(256)
	Frame.Layers[5]:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Browse-BotLeft")
	
	Frame.Layers[6] = Frame:CreateTexture(nil, "ARTWORK")
	Frame.Layers[6]:SetPoint("TOPLEFT", Frame, "TOPLEFT", 256, -256)	
	Frame.Layers[6]:SetWidth(320)
	Frame.Layers[6]:SetHeight(256)
	Frame.Layers[6]:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Auction-Bot")
	
	Frame.Layers[7] = Frame:CreateTexture(nil, "ARTWORK")
	Frame.Layers[7]:SetPoint("TOPLEFT", Frame.Layers[6], "TOPRIGHT")	
	Frame.Layers[7]:SetWidth(256)
	Frame.Layers[7]:SetHeight(256)
	Frame.Layers[7]:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Bid-BotRight")
	
	Frame.CloseButton = CreateFrame("Button", FRAME_NAME.."_CloseButton", Frame, "UIPanelCloseButton")
	Frame.CloseButton:SetPoint("TOPRIGHT", Frame, "TOPRIGHT", 3, -8)
		
	Frame.Title = Frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	Frame.Title:SetPoint("TOP", Frame, "TOP", 0, -18)
	Frame.Title:SetJustifyH("CENTER")
	Frame.Title:SetText(AL["AtlasLoot"].." Compare Window")
	
	Frame.NumItems = Frame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	Frame.NumItems:SetPoint("TOPLEFT", Frame, "TOPLEFT", 25, -415)
	Frame.NumItems:SetWidth(150)
	Frame.NumItems:SetHeight(10)
	Frame.NumItems:SetJustifyH("LEFT")
	Frame.NumItems:SetText(string.format(AL["%d items"], NUM_ITEMS_IN_LIST))
	
	-- ###########################################
	-- Scroll frame Main Filter
	Frame.MainFilterButtons = {}
	
	Frame.ScrollFrameMainFilter = CreateFrame("ScrollFrame", FRAME_NAME.."_ScrollFrameMainFilter", Frame, "FauxScrollFrameTemplate")
	Frame.ScrollFrameMainFilter:SetPoint("TOPRIGHT", Frame, "TOPLEFT", 158, -105)	
	Frame.ScrollFrameMainFilter:SetWidth(160)
	Frame.ScrollFrameMainFilter:SetHeight(305)
	Frame.ScrollFrameMainFilter:SetScript("OnVerticalScroll", onVerticalScrollMainFilter)
	--Frame.ScrollFrameMainFilter:SetScript("OnShow", onUpdate)
	
	Frame.Layers[8] = Frame.ScrollFrameMainFilter:CreateTexture(nil, "ARTWORK")
	Frame.Layers[8]:SetPoint("TOPLEFT", Frame.ScrollFrameMainFilter, "TOPRIGHT", -2, 5)	
	Frame.Layers[8]:SetWidth(31)
	Frame.Layers[8]:SetHeight(256)
	Frame.Layers[8]:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ScrollBar")
	Frame.Layers[8]:SetTexCoord(0, 0.484375, 0, 1.0)
	
	Frame.Layers[9] = Frame.ScrollFrameMainFilter:CreateTexture(nil, "ARTWORK")
	Frame.Layers[9]:SetPoint("BOTTOMLEFT", Frame.ScrollFrameMainFilter, "BOTTOMRIGHT", -2, -2)	
	Frame.Layers[9]:SetWidth(31)
	Frame.Layers[9]:SetHeight(106)
	Frame.Layers[9]:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ScrollBar")
	Frame.Layers[9]:SetTexCoord(0.515625, 1.0, 0, 0.4140625)
	
	for i=1,15 do
		Frame.MainFilterButtons[i] = CreateFrame("BUTTON", FRAME_NAME.."MainFilterButton"..i, Frame, "AtlasLootCFMainFilterButtonTemplate")
		if i == 1 then
			Frame.MainFilterButtons[i]:SetPoint("TOPLEFT", Frame, "TOPLEFT", 23, -105)
		else
			Frame.MainFilterButtons[i]:SetPoint("TOPLEFT", Frame.MainFilterButtons[i - 1], "BOTTOMLEFT", 0, 0)
		end
	end
	-- Scroll frame Main Filter
	-- ###########################################
	
	-- ###########################################
	-- Sort Buttons
	local locClass,englishClass = UnitClass("player")
	local sortMaxLength = 645
	local sortCurLenght = 0
	
	Frame.SortButtons = {}
	
	-- Name
	Frame.SortButtons[1] = CreateFrame("BUTTON", FRAME_NAME.."SortButton_Name", Frame, "AtlasLootCFSortButtonTemplate")
	Frame.SortButtons[1]:SetPoint("TOPLEFT", Frame, "TOPLEFT", 186, -82)
	Frame.SortButtons[1]:SetWidth(112)
	Frame.SortButtons[1]:SetHeight(19)
	Frame.SortButtons[1]:SetText(AL["Name"])
	Frame.SortButtons[1].SortType = "name"
	sortMaxLength = sortMaxLength - 112
	
	-- RARITY
	Frame.SortButtons[2] = CreateFrame("BUTTON", FRAME_NAME.."SortButton_Rarity", Frame, "AtlasLootCFSortButtonTemplate")
	Frame.SortButtons[2]:SetPoint("LEFT", Frame.SortButtons[1], "RIGHT", -2, 0)
	Frame.SortButtons[2]:SetWidth(112)
	Frame.SortButtons[2]:SetHeight(19)
	Frame.SortButtons[2]:SetText(RARITY)
	Frame.SortButtons[2].SortType = "rarity"
	sortMaxLength = sortMaxLength - 112
	
	-- Item level
	Frame.SortButtons[3] = CreateFrame("BUTTON", FRAME_NAME.."SortButton_ItemLvl", Frame, "AtlasLootCFSortButtonTemplate")
	Frame.SortButtons[3]:SetPoint("LEFT", Frame.SortButtons[2], "RIGHT", -2, 0)
	Frame.SortButtons[3]:SetWidth(65)
	Frame.SortButtons[3]:SetHeight(19)
	Frame.SortButtons[3]:SetText(AL["ItemLvl"])
	Frame.SortButtons[3].SortType = "itemlvl"
	sortMaxLength = sortMaxLength - 65
	
	sortCurLenght = sortMaxLength / #STATS_SORT_LIST[englishClass]
	for k,v in ipairs(STATS_SORT_LIST[englishClass]) do
		Frame.SortButtons[k+3] = CreateFrame("BUTTON", FRAME_NAME.."SortButton_"..v, Frame, "AtlasLootCFSortButtonTemplate")
		Frame.SortButtons[k+3]:SetPoint("LEFT", Frame.SortButtons[k+3-1], "RIGHT", -2, 0)
		Frame.SortButtons[k+3]:SetWidth(sortCurLenght)
		Frame.SortButtons[k+3]:SetHeight(19)
		Frame.SortButtons[k+3]:SetText(STATS_LIST[v])
		Frame.SortButtons[k+3].SortType = v
	end
	-- Sort Buttons
	-- ###########################################

	-- ###########################################
	-- Item Frame
	Frame.ItemButtons = {}
	
	Frame.ScrollFrameItemFrame = CreateFrame("ScrollFrame", FRAME_NAME.."_ScrollFrameItemFrame", Frame, "FauxScrollFrameTemplate")
	Frame.ScrollFrameItemFrame:SetPoint("TOPRIGHT", Frame, "TOPRIGHT", -39, -105)	
	Frame.ScrollFrameItemFrame:SetWidth(465)
	Frame.ScrollFrameItemFrame:SetHeight(306)
	Frame.ScrollFrameItemFrame:SetScript("OnVerticalScroll", onVerticalScrollItemFrame)
	--Frame.ScrollFrameItemFrame:SetScript("OnShow", onUpdate)
	
	Frame.Layers[10] = Frame.ScrollFrameItemFrame:CreateTexture(nil, "ARTWORK")
	Frame.Layers[10]:SetPoint("TOPLEFT", Frame.ScrollFrameItemFrame, "TOPRIGHT", -2, 5)	
	Frame.Layers[10]:SetWidth(31)
	Frame.Layers[10]:SetHeight(256)
	Frame.Layers[10]:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ScrollBar")
	Frame.Layers[10]:SetTexCoord(0, 0.484375, 0, 1.0)
	
	Frame.Layers[11] = Frame.ScrollFrameItemFrame:CreateTexture(nil, "ARTWORK")
	Frame.Layers[11]:SetPoint("BOTTOMLEFT", Frame.ScrollFrameItemFrame, "BOTTOMRIGHT", -2, -2)	
	Frame.Layers[11]:SetWidth(31)
	Frame.Layers[11]:SetHeight(106)
	Frame.Layers[11]:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ScrollBar")
	Frame.Layers[11]:SetTexCoord(0.515625, 1.0, 0, 0.4140625)
	
	for i=1,8 do
		Frame.ItemButtons[i] = createItemButton(FRAME_NAME.."_ScrollFrameItemFrame_Item"..i, Frame)
		if i == 1 then
			Frame.ItemButtons[i]:SetPoint("TOPLEFT", Frame, "TOPLEFT", 195, -110)
		else
			Frame.ItemButtons[i]:SetPoint("TOPLEFT", Frame.ItemButtons[i-1], "BOTTOMLEFT", 0, 0)
		end
		Frame.ItemButtons[i]:Hide()
	end
	-- Item Frame
	-- ###########################################
	AtlasLoot:CompareFrame_UpdateItemListScrollFrame()
	AtlasLoot:CompareFrame_UpdateMainFilterScrollFrame()
	tinsert(UISpecialFrames, FRAME_NAME)
end
-- AtlasLootCFSortButtonTemplate







