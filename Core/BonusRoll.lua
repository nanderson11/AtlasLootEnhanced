-- $Id$

--[[INFOS
Guerrier	 WARRIOR	 1
Paladin	 PALADIN	 2
Chasseur	 HUNTER	 3
Voleur	 ROGUE	 4
Prêtre	 PRIEST	 5
Todesritter	 DEATHKNIGHT	 6
Schmane	 SHAMAN	 7
Magier	 MAGE	 8
Démoniste	 WARLOCK	 9
Moine	 MONK	 10
Druide	 DRUID	 11


0,0 == reset
EJ_SetLootFilter(classID, specID)

local numLoot = EJ_GetNumLoot();
local name, icon, slot, armorType, itemID, link, encounterID = EJ_GetLootInfoByIndex(index);

local id, name, description, icon, background = GetSpecializationInfo(shownSpec, nil, self.isPet);
SetPortraitToTexture(scrollChild.specIcon, icon);
]]

local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

-- Contains infos about items
--[[ FORMAT
[itemId] = {
	classID = {specId1, specId2, specId3}
}
]]
AtlasLoot_BonusRoll_Items = {}

local PLAYER_CLASS_ID = nil
local PLAYER_SPEC_INFO = nil
local BonusRollEventIds = {}
local BonusRollDataIds = {}

local function CreateSpecInfo()
	PLAYER_SPEC_INFO = {}
	for i=1,GetNumSpecializations() do
		local id, name, description, icon, background, role = GetSpecializationInfo(i)
		PLAYER_SPEC_INFO[i] = {
			name = name,
			description = description,
			icon = icon
		}
	end
end

function AtlasLoot:BonusRoll_Initialize()
	PLAYER_CLASS_ID = select(3, UnitClass("player"))

	for instance,iniTab in pairs(AtlasLoot_LootTableRegister["Instances"]) do
		if iniTab and iniTab["Bosses"] then
			for k,v in ipairs(iniTab["Bosses"]) do
				if v and v.BonusLootID then
					if type(v.BonusLootID) == "number" then
						BonusRollEventIds[v.BonusLootID] = v[1]
					end
					--BonusRollDataIds[v[1]] = true
				end
			end
		end
	end
	
end

function AtlasLoot:BonusLoot_GetSpecInfo(id)
	if PLAYER_SPEC_INFO[id] then
		return PLAYER_SPEC_INFO[id].name, PLAYER_SPEC_INFO[id].description
	end
end

--- Checks a item if it aviable for the player class and specs
function AtlasLoot:BonusLoot_CheckItemId(itemId)
	if not itemId or type(itemId) ~= "number" or not AtlasLoot_BonusRoll_Items[itemId] then return end
	if not AtlasLoot_BonusRoll_Items[itemId][PLAYER_CLASS_ID] then return false end
	if not PLAYER_SPEC_INFO then CreateSpecInfo() end
	local ret = {}
	for k,v in ipairs(AtlasLoot_BonusRoll_Items[itemId][PLAYER_CLASS_ID]) do
		if v and PLAYER_SPEC_INFO[k] then
			table.insert(ret, PLAYER_SPEC_INFO[k].icon)
		end
	end
	return #ret > 0 and ret or false
end

function AtlasLoot:BonusLoot_GetItemIdInfo(itemId)
	if not itemId or type(itemId) ~= "number" or not AtlasLoot_BonusRoll_Items[itemId] then return end
	if not AtlasLoot_BonusRoll_Items[itemId][PLAYER_CLASS_ID] then return false end
	if not PLAYER_SPEC_INFO then CreateSpecInfo() end
	local ret = {}
	for k,v in ipairs(AtlasLoot_BonusRoll_Items[itemId][PLAYER_CLASS_ID]) do
		if v then
			table.insert(ret, "|T"..PLAYER_SPEC_INFO[k].icon..":16|t")
		end
	end
	return #ret > 0 and ret or false
end

