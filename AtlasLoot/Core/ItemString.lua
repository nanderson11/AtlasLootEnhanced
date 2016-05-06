local AtlasLoot = _G.AtlasLoot
local ItemString = {}
AtlasLoot.ItemString = ItemString

-- lua
local format = string.format
local tbl_concat = table.concat

-- itemID:enchant:gem1:gem2:gem3:gem4:suffixID:uniqueID:level:upgradeTypeID:instanceDifficultyID:numBonusIDs:bonusID1:bonusID2  ...:upgradeID
local ITEM_FORMAT_STRING = "item:%d:0:0:0:0:0:0:0:0:0:0:0:0"
local ITEM_FORMAT_ALL_STRING = "item:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%s%s%s"
local ITEM_FORMAT_BONUS_STRING = "item:%d:0:0:0:0:0:0:0:0:0:0:0:%s%s"
local ITEM_FORMAT_BONUS_UPGRADE_STRING = "item:%d:0:0:0:0:0:0:0:0:0:4:0:%s%s:%d"

ATLASLOOT_ITEM_BONUSIDS = {
	-- Raid
	["LFR"] = 451,
	["SoOWarforged"] = 448,
	["HeroicRaid"] = 566,
	["MythicRaid"] = 567,
}

-- chainId, {upgradeId's}, -- itemLvlDelta
local ITEM_UPGRADE_CHAIN = {
	[0]	  = {0}, --dummy
	[1]   = {1}, -- +8
	[89]  = {373,374,503}, 			-- +4,+8,+1
	[90]  = {375,376,377}, 			-- +4,+4,+4
	[91]  = {378,379,380}, 			-- +7,+4,+4
	[108] = {445,446,447}, 			-- +0,+4,+8
	[110] = {451,452},				-- +0,+8
	[111] = {453,454,452},			-- +0,+4,+8
	[112] = {456,457},				-- +0,+8
	[113] = {458,459,460,461,462},	-- +0,+4,+8,+12,+16
	[116] = {465,466,467},			-- +0,+4,+8
	[117] = {468,469,470,471,472},	-- +0,+4,+8,+12,+16
	[118] = {476},					-- +0
	[119] = {479},					-- +0
	[124] = {491,492,493,504,505}, 	-- +0,+4,+8,+12,+16
	[125] = {494,495,496,497,498,506,507}, -- +0,+4,+8,+12,+16,+20,24
	[133] = {529,530,531},			-- +0,+5,+10
}

local ITEM_BONUS_PRESET = {
	-- Dungeons
	["BSM"]				= { 518 },
	["ID"]				= { 519 },
	["Auch"]			= { 520 },
	["Skyreach"]			= { 521 },
	["Dungeon"]			= { 522 },
	["HCDungeon"]			= { 524 },
	["HCDungeonWarforged"]		= { 524, 448 },
	["MDungeon"]			= { 642 },
	["MDungeonWarforged"]		= { 642, 644 },
	-- Raids
	["LFR"]				= { 451 },
	["SoOWarforged"]		= { 448 },
	["HeroicSoO"] 			= { 449 },
	["HeroicSoOWarforged"]		= { 449, 448 },
	["MythicSoO"] 			= { 450 },
	["MythicSoOWarforged"]		= { 450, 448 },
	["RaidWarforged"]		= { 560 },
	["HeroicRaid"] 			= { 566 },
	["HeroicRaidWarforged"] 	= { 566, 561 },
	["MythicRaid"] 			= { 567 },
	["MythicRaidWarforged"]		= { 567, 562 },
	-- Crafting
	["Stage1"]			= { 525 },
	["Stage2"]			= { 526 },
	["Stage3"]			= { 527 },
	["Stage4"]			= { 593 },
	["Stage5"]			= { 617 },
	["Stage6"]			= { 618 },
	["Stage2W"]			= { 558 },
	["Stage3W"]			= { 559 },
	["Stage4W"]			= { 594 },
	["Stage5W"]			= { 619 },
	["Stage6W"]			= { 620 },
	-- Heirloom
	["Stage2H"]			= { 582 },
	["Stage3H"]			= { 583 }
}

--[[
	itemUpgrade
	
	itemUpgradeTypeId - affects the lvl with timewarped items - '4' escape
	RulesetItemUpgrade / ItemUpgrade

]]
--/run local inventoryID = GetInventorySlotInfo("HeadSlot")local link = GetInventoryItemLink("player", inventoryID)print(link:gsub("\124", "\124\124")) 

--|cffa335ee|Hitem:124164:0:0:0:0:0:0:0:100:64:4:5:2:42:566:531|h[Leggings of the Iron Summoner]|h|r 5

--item:124389:0:0:0:0:0:0:0:0:0:0:0:0:1
--item:127981:0:0:0:0:0:0:0:100:64:4:3:1:
--/script print("\124cffa335ee\124Hitem:124389:0:0:0:0:0:0:0:0:0:4:0:0:531\124h[Calamity's Edge]\124h\124r")

--/script print("\124cffa335ee\124Hitem:124389:0:0:0:0:0:0:0:0:0:4:0:0:462\124h[Calamity's Edge]\124h\124r")

--/script print("\124cffa335ee\124H"..AtlasLoot.ItemString.AddBonus(124389, nil, 133).."\124h[Calamity's Ed-ge]\124h\124r");
function ItemString.Create(itemID, extra)
	if extra then
		return format( ITEM_FORMAT_ALL_STRING,
			itemID,									-- itemID
			extra.enchant or 0,						-- extra.enchant
			extra.gem1 or 0,						-- extra.gem1
			extra.gem2 or 0,						-- extra.gem2
			extra.gem3 or 0,						-- extra.gem3
			extra.gem4 or 0,						-- extra.gem4
			extra.suffixID or 0,					-- extra.suffixID
			extra.uniqueID or 0,					-- extra.uniqueID
			extra.level or 0,						-- extra.level
			extra.upgradeId or 0,					-- extra.upgradeId
			extra.instanceDifficultyID or 0,		-- extra.instanceDifficultyID
			extra.bonus and #extra.bonus..":" or 0,
			extra.bonus and tbl_concat(extra.bonus, ":") or "",
			extra.upgradeID and ":"..extra.upgradeID or ""
		)
	else
		return format( ITEM_FORMAT_STRING,
			itemID		-- itemID
		)
	end
end

function ItemString.AddBonus(itemID, bonus, upgradeChainID)
	bonus = bonus and (ITEM_BONUS_PRESET[bonus] or ITEM_BONUS_PRESET[bonus[1]]) or bonus
	return upgradeChainID and format(ITEM_FORMAT_BONUS_UPGRADE_STRING,
			itemID,
			bonus and #bonus..":" or "0",
			bonus and tbl_concat(bonus, ":") or "",
			ITEM_UPGRADE_CHAIN[upgradeChainID or 0][1] -- currently it's always the first 0/x upgraded
		) or format(ITEM_FORMAT_BONUS_STRING,
			itemID,
			bonus and #bonus..":" or "0",
			bonus and tbl_concat(bonus, ":") or ""
		)
end

-- /run print(AtlasLoot.ItemString.AddBonus(31051, {566}))