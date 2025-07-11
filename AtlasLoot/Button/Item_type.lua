local ALName, ALPrivate = ...
local AtlasLoot = _G.AtlasLoot
local Item = AtlasLoot.Button:AddType("Item", "i")
local Query = {}
Item.Query = Query
local AL = AtlasLoot.Locales
local ClickHandler = AtlasLoot.ClickHandler

local db

-- lua
local tonumber = tonumber
local assert = assert
local next, wipe, tab_remove = next, wipe, table.remove
local split = string.split

-- WoW
local GetItemInfo, IsEquippableItem = C_Item.GetItemInfo, C_Item.IsEquippableItem

-- AL
local GetAlTooltip = AtlasLoot.Tooltip.GetTooltip
local GetItemDescInfo = AtlasLoot.ItemInfo.GetDescription
local GetItemStringWithBonus = AtlasLoot.ItemString.AddBonus

local ITEM_COLORS = {}

local ItemClickHandler = nil
local itemIsOnEnter = nil
local Favourites

local function OnFavouritesAddonLoad(addon, enabled)
	Favourites = enabled and addon or nil
end

local function OnInit()
	if not ItemClickHandler then
		db = AtlasLoot.db.Button.Item
		ItemClickHandler = ClickHandler:Add(
			"Item",
			{
				ChatLink = { "LeftButton", "Shift" },
				DressUp = { "LeftButton", "Ctrl" },
				SetFavourite = { "LeftButton", "Alt" },
				Azerite = { "RightButton", "Shift" },
				types = {
					ChatLink = true,
					DressUp = true,
					SetFavourite = true,
					Azerite = true,
				},
			},
			db.ClickHandler,
			{
				{ "ChatLink",     AL["Chat Link"],     AL["Add item into chat"] },
				{ "DressUp",      AL["Dress up"],      AL["Shows the item in the Dressing room"] },
				{ "SetFavourite", AL["Set Favourite"], AL["Set/Remove the item as favourite"] },
				{ "Azerite",      "Azerite",           "Azerite" },
			}
		)

		AtlasLoot.Addons:GetAddon("Favourites", OnFavouritesAddonLoad)

		-- create item colors
		for i = 0, 7 do
			local _, _, _, itemQuality = C_Item.GetItemQualityColor(i)
			ITEM_COLORS[i] = itemQuality
		end
	end
	Item.ItemClickHandler = ItemClickHandler
end
AtlasLoot:AddInitFunc(OnInit)

function Item.OnSet(button, second)
	if not button then return end
	if second and button.__atlaslootinfo.secType then
		if button.ItemID and C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(button.ItemID) then
			button.__atlaslootinfo.secType = nil
			button.secButton:Hide()
		else
			if type(button.__atlaslootinfo.secType[2]) == "table" then
				button.secButton.ItemID = button.__atlaslootinfo.secType[2].itemID or tonumber(tab_remove(button.__atlaslootinfo.secType[2], 1))
				button.secButton.ItemString = button.__atlaslootinfo.secType[2].itemString or GetItemStringWithBonus(button.secButton.ItemID, button.__atlaslootinfo.secType[2], button.__atlaslootinfo.ItemDifficulty, AtlasLoot.GUI.ItemFrame.ItemBaseLvl)
			else
				button.secButton.ItemID = button.__atlaslootinfo.secType[2]
				if button.__atlaslootinfo.preSet and button.__atlaslootinfo.preSet.Item and (button.__atlaslootinfo.preSet.Item.item2bonus or button.__atlaslootinfo.ItemDifficulty) then
					button.secButton.ItemString = GetItemStringWithBonus(button.ItemID, button.__atlaslootinfo.preSet.Item.item2bonus, button.__atlaslootinfo.ItemDifficulty, AtlasLoot.GUI.ItemFrame.ItemBaseLvl)
				end
			end
			button.secButton.Droprate = button.__atlaslootinfo.Droprate

			Item.Refresh(button.secButton)
		end
	else
		if type(button.__atlaslootinfo.type[2]) == "table" then
			button.ItemID = button.__atlaslootinfo.type[2].itemID or tonumber(tab_remove(button.__atlaslootinfo.type[2], 1))
			button.ItemString = button.__atlaslootinfo.type[2].itemString or GetItemStringWithBonus(button.ItemID, button.__atlaslootinfo.type[2], button.__atlaslootinfo.ItemDifficulty, AtlasLoot.GUI.ItemFrame.ItemBaseLvl)
		else
			button.ItemID = button.__atlaslootinfo.type[2]
			if button.__atlaslootinfo.preSet and button.__atlaslootinfo.preSet.Item and (button.__atlaslootinfo.preSet.Item.item1bonus or button.__atlaslootinfo.ItemDifficulty) then
				button.ItemString = GetItemStringWithBonus(button.ItemID, button.__atlaslootinfo.preSet.Item.item1bonus, button.__atlaslootinfo.ItemDifficulty, AtlasLoot.GUI.ItemFrame.ItemBaseLvl)
			end
		end
		button.Droprate = button.__atlaslootinfo.Droprate
		Item.Refresh(button)
	end
end

function Item.OnMouseAction(button, mouseButton)
	if not mouseButton then return end

	mouseButton = ItemClickHandler:Get(mouseButton) or mouseButton
	if mouseButton == "ChatLink" then
		local itemInfo, itemLink = GetItemInfo(button.ItemString or button.ItemID)
		itemLink = itemLink or button.ItemString
		AtlasLoot.Button:AddChatLink(itemLink or "item:"..button.ItemID)
	elseif mouseButton == "DressUp" then
		local itemInfo, itemLink = GetItemInfo(button.ItemString or button.ItemID)
		itemLink = itemLink or button.ItemString
		if itemLink then
			DressUpItemLink(itemLink)
		end
	elseif mouseButton == "SetFavourite" then
		if Favourites then
			local item
			if (button.ItemString) then
				local parsedItem = AtlasLoot.ItemString.Parse(button.ItemString)
				-- only copy the stuff we want
				item = AtlasLoot.ItemString.Create({
					itemID = parsedItem.itemID,
					itemContext = parsedItem.itemContext,
					bonusIDs = parsedItem.bonusIDs
				})
			else
				item = button.ItemID
			end

			if Favourites:IsFavouriteItemID(item, true) then
				Favourites:RemoveItemID(item)
				if Favourites:IsFavouriteItemID(item) then
				else
					if button.favourite then
						button.favourite:Hide()
					end
				end
			else
				if Favourites:AddItemID(item) then
					if button.favourite then
						button.favourite:Show()
					end
				end
			end
			if Favourites:TooltipHookEnabled() then
				Item.OnLeave(button)
				Item.OnEnter(button)
			end
			--AtlasLoot.Button:ExtraItemFrame_Refresh(button)
		end
	elseif mouseButton == "MouseWheelUp" and Item.previewTooltipFrame and Item.previewTooltipFrame:IsShown() then -- ^
		local frame = Item.previewTooltipFrame.modelFrame
		if IsAltKeyDown() then                                                                                 -- model zoom
			frame.zoomLevelNew = frame.zoomLevelNew + 0.1 >= frame.maxZoom and frame.maxZoom or frame.zoomLevelNew + 0.1
			frame:SetPortraitZoom(frame.zoomLevelNew)
		else -- model rotation
			frame.curRotation = frame.curRotation + 0.1
			frame:SetRotation(frame.curRotation)
		end
	elseif mouseButton == "MouseWheelDown" and Item.previewTooltipFrame and Item.previewTooltipFrame:IsShown() then -- v
		local frame = Item.previewTooltipFrame.modelFrame
		if IsAltKeyDown() then                                                                                   -- model zoom
			frame.zoomLevelNew = frame.zoomLevelNew - 0.1 <= frame.minZoom and frame.minZoom or frame.zoomLevelNew - 0.1
			frame:SetPortraitZoom(frame.zoomLevelNew)
		else -- model rotation
			frame.curRotation = frame.curRotation - 0.1
			frame:SetRotation(frame.curRotation)
		end
	elseif mouseButton == "Azerite" then
		local itemInfo, itemLink = GetItemInfo(button.ItemString or button.ItemID)
		itemLink = itemLink or button.ItemString
		HandleModifiedItemClick(GetFixedLink(itemLink or "item:"..button.ItemID))
	end
end

function Item.OnEnter(button, owner)
	local tooltip = GetAlTooltip()
	tooltip:ClearLines()
	itemIsOnEnter = tooltip
	if owner and type(owner) == "table" then
		tooltip:SetOwner(owner[1], owner[2], owner[3], owner[4])
	else
		tooltip:SetOwner(button, "ANCHOR_RIGHT", -(button:GetWidth() * 0.5), 24)
	end
	if button.ItemString then
		tooltip:SetHyperlink(button.ItemString)
	else
		tooltip:SetItemByID(button.ItemID)
	end
	if button.Droprate and db.showDropRate then
		tooltip:AddDoubleLine(AL["Droprate:"], button.Droprate.."%")
	end
	tooltip:Show()
	if IsShiftKeyDown() or db.alwaysShowCompareTT then
		GameTooltip_ShowCompareItem(tooltip)
	end
	if IsControlKeyDown() or db.alwaysShowPreviewTT then
		local _, link = tooltip:GetItem()
		Item.ShowQuickDressUp(link, tooltip)
	end
end

function Item.OnLeave(button)
	GetAlTooltip():Hide()
	itemIsOnEnter = nil
	ShoppingTooltip1:Hide()
	ShoppingTooltip2:Hide()
	if Item.previewTooltipFrame and Item.previewTooltipFrame:IsShown() then Item.previewTooltipFrame:Hide() end
end

function Item.OnClear(button)
	Query:Remove(button)
	Query:Remove(button.secButton)
	button.ItemID = nil
	button.Droprate = nil
	button.ItemString = nil
	button.secButton.ItemID = nil
	button.secButton.Droprate = nil
	button.secButton.ItemString = nil
	button.secButton.qualityBorder:SetVertexColor(1, 1, 1, 1)
	if button.qualityBorder then
		button.qualityBorder:SetVertexColor(1, 1, 1, 1)
	end
	if button.overlay then
		button.overlay:SetDesaturated(false)
		button.overlay:SetVertexColor(1, 1, 1, 1)
		button.overlay:Hide()
	end
	if button.overlay2 then
		button.overlay2:Hide()
	end
	button.secButton.overlay:Hide()
end

function Item.Refresh(button)
	if not button.ItemID then return end
	local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture = GetItemInfo(button.ItemString or button.ItemID)
	if not itemName then
		Query:Add(button)
		return false
	end

	button.qualityBorder:Show()
	button.qualityBorder:SetVertexColor(
		ITEM_QUALITY_COLORS[itemQuality].r,
		ITEM_QUALITY_COLORS[itemQuality].g,
		ITEM_QUALITY_COLORS[itemQuality].b,
		1
	)
	if IsArtifactRelicItem(button.ItemString or button.ItemID) then
		button.qualityBorder:SetTexture("Interface\\Artifacts\\RelicIconFrame");
	else
		button.qualityBorder:SetTexture("Interface\\Common\\WhiteIconFrame");
	end

	if C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(button.ItemString or button.ItemID) then
		button.overlay:SetAtlas("AzeriteIconFrame");
		button.overlay:Show();
	elseif C_Item.IsCosmeticItem(button.ItemString or button.ItemID) then
		button.overlay:SetAtlas("CosmeticIconFrame");
		button.overlay:Show()
	elseif C_Soulbinds.IsItemConduitByItemInfo(button.ItemString or button.ItemID) then
		button.overlay:SetVertexColor(
			ITEM_QUALITY_COLORS[itemQuality].r,
			ITEM_QUALITY_COLORS[itemQuality].g,
			ITEM_QUALITY_COLORS[itemQuality].b,
			1
		);
		button.overlay:SetAtlas("ConduitIconFrame");
		button.overlay:Show();

		if button.overlay2 then
			button.overlay2:SetAtlas("ConduitIconFrame-Corners");
			button.overlay2:Show();
		end
	end

	if not LOOT_BORDER_BY_QUALITY[itemQuality] then
		button.overlay:SetDesaturated(true)
	end

	if button.type == "secButton" then
		button:SetNormalTexture(itemTexture or "Interface\\Icons\\INV_Misc_QuestionMark")
	else
		-- ##################
		-- icon
		-- ##################
		button.icon:SetTexture(itemTexture or "Interface\\Icons\\INV_Misc_QuestionMark")

		-- ##################
		-- name
		-- ##################
		button.name:SetText("|c"..ITEM_COLORS[itemQuality or 0]..itemName)

		-- ##################
		-- description
		-- ##################
		button.extra:SetText(GetItemDescInfo(itemEquipLoc, itemType, itemSubType))
	end
	if Favourites then
		local item
		if (button.ItemString) then
			local parsedItem = AtlasLoot.ItemString.Parse(button.ItemString)
			-- only copy the stuff we want
			item = AtlasLoot.ItemString.Create({
				itemID = parsedItem.itemID,
				itemContext = parsedItem.itemContext,
				bonusIDs = parsedItem.bonusIDs
			})
		else
			item = button.ItemID
		end

		if Favourites:IsFavouriteItemID(item) then
			--Favourites:SetFavouriteIcon(itemID, button.favourite)
			button.favourite:Show()
		else
			button.favourite:Hide()
		end
	else
		button.favourite:Hide()
	end
	if db.showCompletedHook then
		local itemCount = C_Item.GetItemCount(button.ItemString, true)
		if itemCount and itemCount > 0 then
			button.completed:Show()
		end
	end

	return true
end

function Item.GetStringContent(str)
	if tonumber(str) then
		return tonumber(str)
	else
		return {
			split(":", str)
		}
	end
end

--################################
-- Item querys
--################################
function Item.ShowQuickDressUp(itemLink, ttFrame)
	if not itemLink or not IsEquippableItem(itemLink) then return end
	if not Item.previewTooltipFrame then
		local name = "AtlasLoot-SetToolTip"
		local frame = CreateFrame("Frame", name)
		frame:SetClampedToScreen(true)
		frame:SetSize(230, 280)

		frame.modelFrame = CreateFrame("DressUpModel", name.."-ModelFrame", frame, BackdropTemplateMixin and "BackdropTemplate" or nil)
		frame.modelFrame:ClearAllPoints()
		frame.modelFrame:SetParent(frame)
		frame.modelFrame:SetAllPoints(frame)
		frame.modelFrame.defaultRotation = MODELFRAME_DEFAULT_ROTATION
		frame.modelFrame:SetRotation(MODELFRAME_DEFAULT_ROTATION)
		frame.modelFrame:SetBackdrop(ALPrivate.BOX_BORDER_BACKDROP)
		frame.modelFrame:SetBackdropColor(0, 0, 0, 1)
		frame.modelFrame:SetUnit("player")
		frame.modelFrame.minZoom = 0
		frame.modelFrame.maxZoom = 1.0
		frame.modelFrame.curRotation = MODELFRAME_DEFAULT_ROTATION
		frame.modelFrame.zoomLevel = frame.modelFrame.minZoom
		frame.modelFrame.zoomLevelNew = frame.modelFrame.zoomLevel
		frame.modelFrame:SetPortraitZoom(frame.modelFrame.zoomLevel)
		frame.modelFrame.Reset = (function()
			local f = frame.modelFrame
			f.rotation = f.defaultRotation
			f:SetRotation(f.rotation)
			f:SetPosition(0, 0, 0)
			f.zoomLevel = f.minZoom
			f:SetPortraitZoom(f.zoomLevel)
		end)

		Item.previewTooltipFrame = frame
		frame:Hide()
	end

	local frame = Item.previewTooltipFrame

	-- calculate point for frame
	local x, y = ttFrame:GetOwner():GetCenter()
	local fPoint, oPoint = "BOTTOMLEFT", "TOPRIGHT"

	if y / GetScreenHeight() > 0.3 then
		fPoint, oPoint = "TOP", "BOTTOM"
	else
		fPoint, oPoint = "BOTTOM", "TOP"
	end
	if x / GetScreenWidth() > 0.5 then
		fPoint, oPoint = fPoint.."LEFT", oPoint.."LEFT"
	else
		fPoint, oPoint = fPoint.."RIGHT", oPoint.."RIGHT"
	end

	frame:Show()

	frame:ClearAllPoints()
	frame:SetParent(ttFrame:GetOwner():GetParent())
	frame:SetFrameStrata("TOOLTIP")
	frame:SetPoint(fPoint, ttFrame, oPoint)

	frame = Item.previewTooltipFrame.modelFrame
	frame:Reset()
	--frame:Undress()
	local info = { GetItemInfo(itemLink) }
	if not (info[9] == "INVTYPE_CLOAK") then
		frame:SetRotation(frame.curRotation)
	else
		frame:SetRotation(frame.curRotation + math.pi)
	end
	frame:SetPortraitZoom(frame.zoomLevelNew)
	frame:TryOn(itemLink)
end

--################################
-- Item querys
--################################
local button_list = {}

Query.EventFrame = CreateFrame("FRAME")

local function EventFrame_OnEvent(frame, event, arg1, arg2)
	if event == "GET_ITEM_INFO_RECEIVED" then
		if arg1 and button_list[arg1] then
			for i = 1, #button_list[arg1] do
				Item.Refresh(button_list[arg1][i])
			end
			button_list[arg1] = nil
		end

		if not next(button_list) then
			frame:UnregisterEvent("GET_ITEM_INFO_RECEIVED")
		end
	elseif event == "MODIFIER_STATE_CHANGED" then
		if itemIsOnEnter then
			-- arg2: 1 for pressed, 0 (not nil!) for released
			if arg2 == 1 then
				if arg1 == "LSHIFT" or arg1 == "RSHIFT" then
					GameTooltip_ShowCompareItem(itemIsOnEnter)
				elseif arg1 == "LCTRL" or arg1 == "RCTRL" then
					local _, link = itemIsOnEnter:GetItem()
					Item.ShowQuickDressUp(link, itemIsOnEnter)
				end
			else
				if arg1 == "LSHIFT" or arg1 == "RSHIFT" then
					ShoppingTooltip1:Hide()
					ShoppingTooltip2:Hide()
				elseif arg1 == "LCTRL" or arg1 == "RCTRL" then
					if Item.previewTooltipFrame and Item.previewTooltipFrame:IsShown() then Item.previewTooltipFrame:Hide() end
				end
			end
		end
	end
end
Query.EventFrame:SetScript("OnEvent", EventFrame_OnEvent)
Query.EventFrame:RegisterEvent("MODIFIER_STATE_CHANGED")

function Query:Add(button)
	assert(button, "Button not found.")
	Query.EventFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
	if not button_list[button.ItemID] then
		button_list[button.ItemID] = { button }
	else
		button_list[button.ItemID][#button_list[button.ItemID] + 1] = button
	end
end

function Query:Remove(button)
	if not button then return end
	if button_list[button] then
		button_list[button] = nil
		if not next(button_list) then
			Query.EventFrame:UnregisterEvent("GET_ITEM_INFO_RECEIVED")
		end
	end
end

function Query:Wipe()
	wipe(button_list)
	Query.EventFrame:UnregisterEvent("GET_ITEM_INFO_RECEIVED")
end
