-- ----------------------------------------------------------------------------
-- Localized Lua globals.
-- ----------------------------------------------------------------------------
-- Functions
local _G                                                           = getfenv(0)
local next, pairs                                                  = _G.next, _G.pairs

-- Libraries

-- WoW
local C_TransmogCollection_GetItemInfo                             = C_TransmogCollection.GetItemInfo
local C_TransmogCollection_PlayerCanCollectSource                  = C_TransmogCollection.PlayerCanCollectSource
local C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance = C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance


-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local ALName, ALPrivate     = ...

local AtlasLoot             = _G.AtlasLoot
local Transmog              = {}
AtlasLoot.Transmog          = Transmog

local Proto                 = {}

-- /console missingTransmogSourceInItemTooltips 1
--C_TransmogCollection.GetSourceInfo(sourceID)

local TRANSMOG_UPDATE_EVENT = "TRANSMOG_SOURCE_COLLECTABILITY_UPDATE" -- sourceID, canCollect

--[[
	nil 	cannot collect
	false	can collect, not collected
	true	can collect, collected
]]
function Proto:IsItemUnlocked(itemID, sourceID, callbackFunc, callbackArg)
	if not itemID and not sourceID then return end
	local appearanceID, isInfoReady, canCollect
	if itemID then
		appearanceID, sourceID = C_TransmogCollection_GetItemInfo(itemID)
	end
	if not sourceID then return end
	isInfoReady, canCollect = C_TransmogCollection_PlayerCanCollectSource(sourceID)

	if isInfoReady then
		if canCollect then
			canCollect = C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance(sourceID)
		else
			canCollect = nil
		end
		if callbackFunc then
			callbackFunc(callbackArg, canCollect)
		else
			return canCollect
		end
	else
		self:AddUnknownItem(sourceID, callbackFunc, callbackArg)
	end
end

function Proto:AddUnknownItem(sourceID, callbackFunc, callbackArg)
	if not next(self.itemList) then
		self.frame:RegisterEvent(TRANSMOG_UPDATE_EVENT)
	end
	self.itemList[sourceID] = { callbackFunc, callbackArg }
end

function Proto:Clear()
	self.itemList = {}
	self.frame:UnregisterEvent(TRANSMOG_UPDATE_EVENT)
end

local function OnEvent(self, event, sourceID, canCollect)
	if sourceID and self.obj.itemList[sourceID] then
		self.obj:IsItemUnlocked(nil, sourceID, self.obj.itemList[sourceID][1], self.obj.itemList[sourceID][2])
		self.obj.itemList[sourceID] = nil
	end
	if not next(self.obj.itemList) then
		self:UnregisterEvent(TRANSMOG_UPDATE_EVENT)
	end
end

function Transmog:New()
	local tab = {}

	-- Add protos
	for k, v in pairs(Proto) do
		tab[k] = v
	end

	tab.itemList = {}

	tab.frame = CreateFrame("FRAME")
	tab.frame.obj = tab
	tab.frame:SetScript("OnEvent", OnEvent)

	return tab
end
