-- ----------------------------------------------------------------------------
-- Localized Lua globals.
-- ----------------------------------------------------------------------------
-- Functions
local _G = getfenv(0)

-- Libraries
local format = string.format
local UnitFactionGroup = _G.UnitFactionGroup
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local addonname = ...
local AtlasLoot = _G.AtlasLoot
local data = AtlasLoot.ItemDB:Add(addonname)

local AL = AtlasLoot.Locales
local ALIL = AtlasLoot.IngameLocales

local NORMAL_DIFF = data:AddDifficulty(AL["Normal"], "n", nil, 1)

-- change sortorder for factions
local ALLIANCE_DIFF, HORDE_DIFF
if UnitFactionGroup("player") == "Horde" then
	HORDE_DIFF = data:AddDifficulty(FACTION_HORDE)
	ALLIANCE_DIFF = data:AddDifficulty(FACTION_ALLIANCE)
else
	ALLIANCE_DIFF = data:AddDifficulty(FACTION_ALLIANCE)
	HORDE_DIFF = data:AddDifficulty(FACTION_HORDE)
end

local NORMAL_ITTYPE = data:AddItemTableType("Item", "Item")

local PRICE_EXTRA_ITTYPE = data:AddExtraItemTableType("Price")
local QUEST_EXTRA_ITTYPE = data:AddExtraItemTableType("Quest")

local PERMRECEVENTS_CONTENT = data:AddContentType(AL["Permanent/Recurring Events"], ATLASLOOT_PERMRECEVENTS_COLOR)
local SEASONALEVENTS_CONTENT = data:AddContentType(AL["Seasonal Events"], ATLASLOOT_SEASONALEVENTS_COLOR)

data["ArgentTournament"] = {
	name = AL["Argent Tournament"].." ("..ALIL["Icecrown"]..")",
	ContentType = PERMRECEVENTS_CONTENT,
	items = {
		{ --ArgentTournamentGear
			name = AL["Armor"].." / "..AL["Weapons"],
			[ALLIANCE_DIFF] = {
				{ 1,  45156, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Sash of Shattering Hearts
				{ 2,  45181, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Wrap of the Everliving Tree
				{ 3,  45159, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Treads of Nimble Evasion
				{ 4,  45184, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Cinch of Bonded Servitude
				{ 5,  45183, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Treads of the Glorious Spirit
				{ 6,  45182, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Gauntlets of Shattered Pride
				{ 7,  45160, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Girdle of Valorous Defeat
				{ 8,  45163, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Stanchions of Unseatable Furor
				{ 9,  45155, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Choker of Spiral Focus
				{ 10, 45154, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Necklace of Valiant Blood
				{ 11, 45152, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Pendant of Azure Dreams
				{ 12, 45153, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Susurrating Shell Necklace
				{ 13, 45131, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Jouster's Fury
				{ 16, 45078, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Dagger of Lunar Purity
				{ 17, 45077, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Dagger of the Rising Moon
				{ 18, 45076, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Teldrassil Protector
				{ 19, 45075, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Ironforge Smasher
				{ 20, 45129, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Gnomeregan Bonechopper
				{ 21, 45074, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Claymore of the Prophet
				{ 22, 45128, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Silvery Sylvan Stave
				{ 23, 45130, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Blunderbuss of Khaz Modan
			},
			[HORDE_DIFF] = {
				{ 1,  45209, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Sash of Trumpeted Pride
				{ 2,  45211, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Waistguard of Equine Fury
				{ 3,  45220, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Treads of the Earnest Squire
				{ 4,  45215, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Links of Unquenched Savagery
				{ 5,  45221, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Treads of Whispering Dreams
				{ 6,  45216, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Gauntlets of Mending Touch
				{ 7,  45217, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Clinch of Savage Fury
				{ 8,  45218, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Blood-Caked Stompers
				{ 9,  45206, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Choker of Feral Fury
				{ 10, 45207, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Necklace of Stolen Skulls
				{ 11, 45213, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Pendant of Emerald Crusader
				{ 12, 45223, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Razor's Edge Pendant
				{ 13, 45219, [PRICE_EXTRA_ITTYPE] = "championsseal:10" }, -- Jouster's Fury
				{ 16, 45214, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Scalpel of the Royal Apothecary
				{ 17, 45222, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Spinal Destroyer
				{ 18, 45204, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Axe of the Sen'jin Protector
				{ 19, 45203, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Grimhorn Crusher
				{ 20, 45208, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Blade of the Keening Banshee
				{ 21, 45205, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Greatsword of the Sin'dorei
				{ 22, 45212, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Staff of Feral Furies
				{ 23, 45210, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Sen'jin Beakblade Longrifle
			},
		},
		{ --ArgentTournamentHeirloom
			name = AL["Heirloom"],
			[NORMAL_DIFF] = {
				--Upgrade item for armor
				{ 1,   122338, [PRICE_EXTRA_ITTYPE] = "championsseal:55" }, -- Ancient Heirloom Armor Casing
				--Shoulder
				{ 3,   122360, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Tattered Dreadmist Mantle
				{ 4,   122359, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Preened Ironfeather Shoulders
				{ 5,   122358, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Stained Shadowcraft Spaulders
				{ 6,   122356, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Champion Herod's Shoulder
				{ 7,   122357, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Mystical Pauldrons of Elements
				{ 8,   122388, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Burnished Pauldrons of Might
				{ 9,   122355, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Polished Spaulders of Valor
				--Chest
				{ 18,  122384, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Tattered Dreadmist Robe
				{ 19,  122382, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Preened Ironfeather Breastplate
				{ 20,  122383, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Stained Shadowcraft Tunic
				{ 21,  122379, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Champion's Deathdealer Breastplate
				{ 22,  122380, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Mystical Vest of Elements
				{ 23,  122387, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Burnished Breastplate of Might
				{ 24,  122381, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Polished Breastplate of Valor
				--Trinket
				{ 11,  122362, [PRICE_EXTRA_ITTYPE] = "championsseal:35" }, -- Discerning Eye of the Beast
				{ 26,  122361, [PRICE_EXTRA_ITTYPE] = "championsseal:35" }, -- Swift Hand of Justice
				--Upgrade item for weapons
				{ 101, 122339, [PRICE_EXTRA_ITTYPE] = "championsseal:65" }, -- Ancient Heirloom Scabbard
				--One-hand
				{ 103, 122389, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Bloodsoaked Skullforge Reaver
				{ 104, 122354, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Devout Aurastone Hammer
				{ 105, 122350, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Balanced Heartseeker
				{ 106, 122351, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Venerable Dal'Rend's Sacred Charge
				{ 107, 122385, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Venerable Mass of McGowan
				--Offhand
				{ 109, 122391, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Flamescarred Draconian Deflector
				{ 110, 122392, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Weathered Observer's Shield
				{ 111, 122390, [PRICE_EXTRA_ITTYPE] = "championsseal:25" }, -- Musty Tome of the Lost
				--Two-hand
				{ 118, 122349, [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Bloodied Arcanite Reaper
				{ 119, 122353, [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Dignified Headmaster's Charge
				{ 120, 122386, [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Repurposed Lava Dredger
				{ 121, 122363, [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Burnished Warden Staff
				{ 122, 122352, [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Charmed Ancient Bone Bow
			},
		},
		{ --ArgentTournamentMounts
			name = AL["Mounts"],
			[ALLIANCE_DIFF] = {
				{ 1,  45591,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Darnassian Nightsaber
				{ 2,  45590,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Exodar Elekk
				{ 3,  45589,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Gnomeregan Mechanostrider
				{ 4,  45586,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Ironforge Ram
				{ 5,  45125,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Stormwind Steed
				{ 7,  46745,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Great Red Elekk
				{ 8,  46752,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Swift Gray Steed
				{ 9,  46744,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Swift Moonsaber
				{ 10, 46748,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Swift Violet Ram
				{ 11, 46747,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Turbostrider
				{ 16, 47179,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Argent Charger
				{ 17, 47180,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Argent Warhorse
				{ 18, 45725,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:150" }, -- Argent Hippogryph
				{ 20, "f1094rep8" },
				{ 21, 46815,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Quel'dorei Steed
				{ 22, 46813,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:150" }, -- Silver Covenant Hippogryph
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 1,  45593,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Darkspear Raptor
				{ 2,  45597,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Forsaken Warhorse
				{ 3,  45595,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Orgrimmar Wolf
				{ 4,  45596,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Silvermoon Hawkstrider
				{ 5,  45592,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Thunder Bluff Kodo
				{ 7,  46750,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Great Golden Kodo
				{ 8,  46749,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Swift Burgundy Wolf
				{ 9,  46743,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Swift Purple Raptor
				{ 10, 46751,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- Swift Red Hawkstrider
				{ 11, 46746,      "mount", [PRICE_EXTRA_ITTYPE] = "money:5000000:championsseal:5" }, -- White Skeletal Warhorse
				{ 20, "f1124rep8" },
				{ 21, 46816,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:100" }, -- Sunreaver Hawkstrider
				{ 22, 46814,      "mount", [PRICE_EXTRA_ITTYPE] = "championsseal:150" }, -- Sunreaver Dragonhawk
			},
		},
		{ --ArgentTournamentPets
			name = AL["Pets"],
			[ALLIANCE_DIFF] = {
				{ 1, 44998, "pet214" },                                                                 -- Argent Squire
				{ 2, 44984, "pet212",                                  [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Ammen Vale Lashling
				{ 3, 44970, "pet205",                                  [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Dun Morogh Cub
				{ 4, 44974, "pet209",                                  [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Elwynn Lamb
				{ 5, 45002, "pet215",                                  [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Mechanopeep
				{ 6, 44965, "pet204",                                  [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Teldrassil Sproutling
				{ 7, 46820, "pet229",                                  [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Shimmering Wyrmling
				{ 9, 47541, [PRICE_EXTRA_ITTYPE] = "championsseal:150" },                               -- Argent Pony Bridle
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 1, 45022, "pet216" },                                -- Argent Gruntling
				{ 2, 44973, "pet207", [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Durotar Scorpion
				{ 3, 44982, "pet213", [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Enchanted Broom
				{ 4, 44980, "pet210", [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Mulgore Hatchling
				{ 5, 45606, "pet218", [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Sen'jin Fetish
				{ 6, 44971, "pet206", [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Tirisfal Batling
				{ 7, 46821, "pet229", [PRICE_EXTRA_ITTYPE] = "championsseal:40" }, -- Shimmering Wyrmling
			},
		},
		{ --ArgentTournamentMisc
			name = AL["Miscellaneous"],
			[ALLIANCE_DIFF] = {
				{ 1,  45714, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Darnassus Commendation Badge
				{ 2,  45715, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Exodar Commendation Badge
				{ 3,  45716, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Gnomeregan Commendation Badge
				{ 5,  46874, [PRICE_EXTRA_ITTYPE] = "championsseal:50" }, -- Argent Crusader's Tabard
				{ 6,  45579, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Darnassus Tabard
				{ 7,  45580, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Exodar Tabard
				{ 8,  45578, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Gnomeregan Tabard
				{ 9,  45577, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Ironforge Tabard
				{ 10, 45574, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Stormwind Tabard
				{ 11, 46817, [PRICE_EXTRA_ITTYPE] = "championsseal:50" }, -- Silver Covenant Tabard
				{ 16, 45717, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Ironforge Commendation Badge
				{ 17, 45718, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Stormwind Commendation Badge
				{ 20, 46843, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Argent Crusader's Banner
				{ 21, 45021, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Darnassus Banner
				{ 22, 45020, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Exodar Banner
				{ 23, 45019, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Gnomeregan Banner
				{ 24, 45018, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Ironforge Banner
				{ 25, 45011, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Stormwind Banner
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 1,  45719, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Orgrimmar Commendation Badge
				{ 2,  45720, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Sen'jin Commendation Badge
				{ 3,  45721, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Silvermoon Commendation Badge
				{ 6,  45582, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Darkspear Tabard
				{ 7,  45581, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Orgrimmar Tabard
				{ 8,  45585, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Silvermoon City Tabard
				{ 9,  45584, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Thunder Bluff Tabard
				{ 10, 45583, [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Undercity Tabard
				{ 11, 46818, [PRICE_EXTRA_ITTYPE] = "championsseal:50" }, -- Sunreaver Tabard
				{ 16, 45723, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Undercity Commendation Badge
				{ 17, 45722, [PRICE_EXTRA_ITTYPE] = "46114:1" }, -- Thunder Bluff Commendation Badge
				{ 21, 45014, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Orgrimmar Banner
				{ 22, 45015, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Sen'jin Banner
				{ 23, 45017, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Silvermoon City Banner
				{ 24, 45013, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Thunder Bluff Banner
				{ 25, 45016, [PRICE_EXTRA_ITTYPE] = "championsseal:15" }, -- Undercity Banner
			},
		},
	}
}

data["BrawlersGuild"] = {
	name = ALIL["Bizmo's Brawlpub"].." / "..ALIL["Brawl'gar Arena"],
	ContentType = PERMRECEVENTS_CONTENT,
	items = {
		{ --Rank1-4
			name = format(AL["Rank %d"], 1).." - "..format(AL["Rank %d"], 4),
			[ALLIANCE_DIFF] = {
				--{ 1, "ICON_warrior_talent_icon_furyintheblood", nil, format(AL["Rank %d"], 2), nil },
				-- no longer available { 2, 118907, [PRICE_EXTRA_ITTYPE] = "money:200000000" },	-- Pit Fighter's Punching Ring

				{ 1,  "ICON_warrior_talent_icon_furyintheblood", nil,                                    format(AL["Rank %d"], 3),              nil },
				{ 2,  93025,                                     "pet1142",                              [PRICE_EXTRA_ITTYPE] = "money:3000" }, -- Clock'em
				{ 3,  144394,                                    "pet2022",                              [PRICE_EXTRA_ITTYPE] = "money:5000000" }, -- Tylarr Gronnden, Added in patch 7.1.5.23360

				{ 16, "ICON_warrior_talent_icon_furyintheblood", nil,                                    format(AL["Rank %d"], 4),              nil },
				--[[ no longer available
				{ 17, 98079, [QUEST_EXTRA_ITTYPE] = 32837 },	-- Floot-Tooter's Tunic
				{ 18, 98081, [QUEST_EXTRA_ITTYPE] = 32841 },	-- The Boomshirt
				{ 19, 98082, [QUEST_EXTRA_ITTYPE] = 32859 },	-- Undisputed Champion's Shirt
				{ 20, 118913, [PRICE_EXTRA_ITTYPE] = "money:1000000" },	-- Brawler's Bottomless Draenic Agility Potion
				{ 21, 118914, [PRICE_EXTRA_ITTYPE] = "money:1000000" },	-- Brawler's Bottomless Draenic Intellect Potion
				{ 22, 118915, [PRICE_EXTRA_ITTYPE] = "money:1000000" },	-- Brawler's Bottomless Draenic Strength Potion
				]]
				{ 17, 144391,                                    [PRICE_EXTRA_ITTYPE] = "money:20000000" }, -- Pugilist's Powerful Punching Ring, Added in patch 7.1.5.23360
				--{ 27, 93195, "ac9169" },	-- Brawler's Pass
				{ 18, 93195,                                     "ac11563" },                   -- Brawler's Pass
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				-- { 14, 118908, [PRICE_EXTRA_ITTYPE] = "money:200000000" },	-- Pit Fighter's Punching Ring
				{ 17, 144392, [PRICE_EXTRA_ITTYPE] = "money:20000000" }, -- Pugilist's Powerful Punching Ring, Added in patch 7.1.5.23360
				--{ 27, 93228, "ac9173" },	-- Brawler's Pass
				{ 18, 93228,  "ac11564" },                   -- Brawler's Pass
			},
		},
		{ --Rank5-8
			name = format(AL["Rank %d"], 5).." - "..format(AL["Rank %d"], 8),
			[ALLIANCE_DIFF] = {
				{ 1,  "ICON_warrior_talent_icon_furyintheblood", nil,                                    format(AL["Rank %d"], 5),               nil },
				{ 2,  98084,                                     [QUEST_EXTRA_ITTYPE] = 32845 },                                        -- Ooze-Soaked Shirt
				{ 3,  98083,                                     [QUEST_EXTRA_ITTYPE] = 32843 },                                        -- Sharkskin Tunic
				{ 4,  98086,                                     [QUEST_EXTRA_ITTYPE] = 32849 },                                        -- Tuxedo-Like Shirt
				{ 6,  "ICON_warrior_talent_icon_furyintheblood", nil,                                    format(AL["Rank %d"], 6),               nil },
				{ 7,  98080,                                     [QUEST_EXTRA_ITTYPE] = 32839 },                                        -- Gorgeous Blouse
				{ 8,  98091,                                     [QUEST_EXTRA_ITTYPE] = 32851 },                                        -- Last Season's Shirt
				{ 9,  127773,                                    [PRICE_EXTRA_ITTYPE] = "money:10000000" },                             -- Gemcutter Module: Mastery
				{ 16, "ICON_warrior_talent_icon_furyintheblood", nil,                                    format(AL["Rank %d"], 7),               nil },
				{ 17, 98543,                                     "ac9176" },                                                            -- Wraps of the Blood-Soaked Brawler
				{ 18, 98085,                                     [QUEST_EXTRA_ITTYPE] = 32847 },                                        -- Brucehide Jersey
				{ 19, 98092,                                     [QUEST_EXTRA_ITTYPE] = 32853 },                                        -- Digmaster's Bodysleeve
				{ 20, 98087,                                     [QUEST_EXTRA_ITTYPE] = 32857 },                                        -- Paper Shirt
				{ 21, 98093,                                     [QUEST_EXTRA_ITTYPE] = 32855 },                                        -- Sightless Mantle
				{ 23, "ICON_warrior_talent_icon_furyintheblood", nil,                                    format(AL["Rank %d"], 8),               nil },
				{ 24, 122396,                                    [PRICE_EXTRA_ITTYPE] = "money:10000000" },                             -- Brawler's Razor Claws
				{ 25, 98405,                                     "mount",                                [PRICE_EXTRA_ITTYPE] = "money:15000000" }, -- Brawler's Burly Mushan Beast
				{ 26, 142403,                                    "mount",                                [PRICE_EXTRA_ITTYPE] = "money:40000000" }, -- Brawler's Burly Basilisk

			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 17, 98543, "ac9177" }, -- Wraps of the Blood-Soaked Brawler
			},
		},
		{ -- Challenge Card
			name = AL["Challenge Card"],
			[ALLIANCE_DIFF] = {
				{ 1,   "ICON_warrior_talent_icon_furyintheblood", nil, format(AL["Rank %d"], 1), nil },
				{ 2,   143899 }, -- Challenge Card: Oso the Betrayer
				{ 3,   97285 }, -- Challenge Card: Grandpa Grumplefloot
				{ 4,   142042 }, -- Challenge Card: Ooliss
				{ 5,   142035 }, -- Challenge Card: Warhammer Council
				{ 6,   "ICON_warrior_talent_icon_furyintheblood", nil, format(AL["Rank %d"], 2), nil },
				{ 7,   94162 }, -- Challenge Card: Dippy
				{ 8,   142041 }, -- Challenge Card: Bill the Janitor
				{ 9,   94167 }, -- Challenge Card: Sanoriak
				{ 10,  142036 }, --Challenge Card: Master Paku
				{ 11,  "ICON_warrior_talent_icon_furyintheblood", nil, format(AL["Rank %d"], 3), nil },
				{ 12,  142043 }, -- Challenge Card: Doomflipper
				{ 13,  94166 }, -- Challenge Card: Blat
				{ 14,  142032 }, -- Challenge Card: Johnny Awesome
				{ 15,  142039 }, -- Challenge Card: Shadowmaster Aameen
				{ 16,  "ICON_warrior_talent_icon_furyintheblood", nil, format(AL["Rank %d"], 4), nil },
				{ 17,  142030 }, -- Challenge Card: Burnstachio
				{ 18,  94181 }, -- Challenge Card: Meatball
				{ 19,  94178 }, -- Challenge Card: G.G. Engineering
				{ 20,  142045 }, -- Challenge Card: Stitches
				{ 21,  "ICON_warrior_talent_icon_furyintheblood", nil, format(AL["Rank %d"], 5), nil },
				{ 22,  142026 }, -- Challenge Card: Blackmange
				{ 23,  97566 }, -- Challenge Card: Razorgrin
				{ 24,  94177 }, -- Challenge Card: Leper Gnomes
				{ 25,  142028 }, -- Challenge Card: Thwack U
				{ 26,  "ICON_warrior_talent_icon_furyintheblood", nil, format(AL["Rank %d"], 6), nil },
				{ 27,  142033 }, -- Challenge Card: Carl
				{ 28,  94174 }, -- Challenge Card: Millie Watt
				{ 29,  142029 }, -- Challenge Card: Ogrewatch
				{ 30,  142037 }, -- Challenge Card: Topps
				{ 101, "ICON_warrior_talent_icon_furyintheblood", nil, format(AL["Rank %d"], 7), nil },
				{ 102, 97283 }, -- Challenge Card: Nibbleh
				{ 103, 142038 }, -- Challenge Card: Serpent of Old
				{ 104, 94182 }, -- Challenge Card: Epicus Maximus
				{ 105, 142031 }, -- Challenge Card: Ray D. Tear
				{ 106, 143794 }, -- Challenge Card: A Seagull
				{ 107, 142040 }, -- Challenge Card: Ash'katzuum
				{ 108, 142034 }, -- Challenge Card: Beat Box
				{ 109, 142044 }, -- Challenge Card: Strange Thing
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
			},
		},
		{ -- Miscellaneous
			name = AL["Miscellaneous"],
			[ALLIANCE_DIFF] = {
				-- Potions
				--[[ no longer available
				{ 1, 118916, [PRICE_EXTRA_ITTYPE] = "money:15000", [ATLASLOOT_IT_AMOUNT1] = 5 },	-- Brawler's Healing Tonic
				{ 2, 118910, [PRICE_EXTRA_ITTYPE] = "money:15000", [ATLASLOOT_IT_AMOUNT1] = 5 },	-- Brawler's Draenic Agility Potion
				{ 3, 118911, [PRICE_EXTRA_ITTYPE] = "money:15000", [ATLASLOOT_IT_AMOUNT1] = 5 },	-- Brawler's Draenic Intellect Potion
				{ 4, 118912, [PRICE_EXTRA_ITTYPE] = "money:15000", [ATLASLOOT_IT_AMOUNT1] = 5 },	-- Brawler's Draenic Strength Potion
				]]
				{ 1,   142325, [PRICE_EXTRA_ITTYPE] = "money:20000" },                     -- Brawler's Ancient Healing Potion, added in 7.1.5.23360
				{ 2,   142326, [PRICE_EXTRA_ITTYPE] = "money:150000" },                    -- Brawler's Potion of Prolonged Power, added in 7.1.5.23360

				{ 4,   93043,  [PRICE_EXTRA_ITTYPE] = "money:10000",     [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Rotten Apple
				{ 5,   93044,  [PRICE_EXTRA_ITTYPE] = "money:10000",     [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Rotten Banana
				{ 6,   93045,  [PRICE_EXTRA_ITTYPE] = "money:10000",     [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Rotten Watermelon
				{ 7,   93158,  [PRICE_EXTRA_ITTYPE] = "money:10000",     [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Expired Blackout Brew

				{ 16,  144371 },                                                           -- Gorestained Tunic
				{ 17,  144366 },                                                           -- Dubvest
				{ 18,  144367 },                                                           -- Observer's Shirt
				{ 19,  144372 },                                                           -- Hide of the Murderaffe
				{ 20,  144365 },                                                           -- The Very Best Shirt
				{ 21,  144370 },                                                           -- Croc-Tooth Harness
				{ 22,  144368 },                                                           -- Felfeather Jersey
				{ 23,  151263 },                                                           -- Electrified Compression Shirt


				{ 101, 143762, [PRICE_EXTRA_ITTYPE] = "brawlergold:100" }, -- High Roller's Contract, ", 1500888, "" },
				{ 102, 143763, [PRICE_EXTRA_ITTYPE] = "brawlergold:100" }, -- Bag of Chipped Dice, ", 237284, "" },
				{ 103, 143761, [PRICE_EXTRA_ITTYPE] = "brawlergold:250" }, -- Blood-Soaked Angel Figurine, ", 237542, "" },
				{ 104, 143760, [PRICE_EXTRA_ITTYPE] = "brawlergold:500" }, -- Brawler's Potion Dispenser, ", 132623, "" },
				{ 105, 142288, [PRICE_EXTRA_ITTYPE] = "brawlergold:500" }, -- Rumble Card: Grief Warden, ", 979582, "" },
				{ 106, 142289, [PRICE_EXTRA_ITTYPE] = "brawlergold:500" }, -- Rumble Card: Penguin Stampede, ", 979582, "" },
				{ 107, 142290, [PRICE_EXTRA_ITTYPE] = "brawlergold:500" }, -- Rumble Card: Battle of the Brew, ", 979582, "" },
				{ 108, 142291, [PRICE_EXTRA_ITTYPE] = "brawlergold:500" }, -- Rumble Card: Senya, ", 979582, "" },
				{ 109, 142292, [PRICE_EXTRA_ITTYPE] = "brawlergold:500" }, -- Rumble Card: Stranglethorn Streak, ", 979582, "" },
				{ 110, 142293, [PRICE_EXTRA_ITTYPE] = "brawlergold:500" }, -- Rumble Card: Mindbreaker Gzzaj, ", 979582, "" },
				{ 111, 142294, [PRICE_EXTRA_ITTYPE] = "brawlergold:500" }, -- Rumble Card: Mazhareen, ", 979582, "" },
				{ 112, 143758, [PRICE_EXTRA_ITTYPE] = "brawlergold:1000" }, -- Free Drinks Voucher, ", 237446, "" },
				{ 113, 143759, [PRICE_EXTRA_ITTYPE] = "brawlergold:1000" }, -- VIP Room Rental Form, ", 1500889, "" },

			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
			},
		},
		{ -- achievements
			name = ACHIEVEMENTS,
			[ALLIANCE_DIFF] = {
				{ 1, "ac11558" }, -- The First Rule of Brawler's Guild
				{ 2, "ac11560" }, -- You Are Not Your $#*@! Legplates
				{ 3, "ac11563" }, -- The Second Rule of Brawler's Guild
				{ 4, "ac11565" }, -- King of the Guild
				{ 5, "ac11567" }, -- You Are Not The Contents Of Your Wallet
				{ 6, "ac11570" }, -- Educated Guesser
				{ 7, "ac11572" }, -- I Am Thrall's Complete Lack Of Surprise
				{ 8, "ac11573" }, -- Rumble Club
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 1, "ac11559" }, -- The First Rule of Brawler's Guild
				{ 2, "ac11561" }, -- You Are Not Your $#*@! Legplates
				{ 3, "ac11564" }, -- The Second Rule of Brawler's Guild
				{ 4, "ac11566" }, -- King of the Guild
			},
		},
	}
}

data["DarkmoonFaire"] = {
	name = AL["Darkmoon Faire"],
	ContentType = PERMRECEVENTS_CONTENT,
	items = {
		{ --DarkmoonMountsPets
			name = AL["Mounts"].." & "..AL["Pets"],
			[NORMAL_DIFF] = {
				{ 1,  73766,  "mount",   [PRICE_EXTRA_ITTYPE] = "darkmoon:180" }, -- Darkmoon Dancing Bear
				{ 2,  72140,  "mount",   [PRICE_EXTRA_ITTYPE] = "darkmoon:180" }, -- Swift Forest Strider
				{ 3,  153485, "mount",   [PRICE_EXTRA_ITTYPE] = "darkmoon:1000" }, -- Darkmoon Dirigible, Added in patch 7.3.0.24781
				{ 5,  73762,  "pet336",  [PRICE_EXTRA_ITTYPE] = "darkmoon:90" }, -- Darkmoon Balloon
				{ 6,  74981,  "pet343",  [PRICE_EXTRA_ITTYPE] = "darkmoon:90" }, -- Darkmoon Cub
				{ 7,  91003,  "pet1061", [PRICE_EXTRA_ITTYPE] = "darkmoon:90" }, -- Darkmoon Hatchling
				{ 8,  73764,  "pet330",  [PRICE_EXTRA_ITTYPE] = "darkmoon:90" }, -- Darkmoon Monkey
				{ 9,  73903,  "pet338",  [PRICE_EXTRA_ITTYPE] = "darkmoon:90" }, -- Darkmoon Tonk
				{ 10, 73765,  "pet335",  [PRICE_EXTRA_ITTYPE] = "darkmoon:90" }, -- Darkmoon Turtle
				{ 11, 73905,  "pet339",  [PRICE_EXTRA_ITTYPE] = "darkmoon:90" }, -- Darkmoon Zeppelin
				{ 12, 11026,  "pet65",   [PRICE_EXTRA_ITTYPE] = "money:10000" }, -- Tree Frog Box
				{ 13, 11027,  "pet64",   [PRICE_EXTRA_ITTYPE] = "money:10000" }, -- Wood Frog Box
				{ 16, 80008,  "pet848" },                              -- Darkmoon Rabbit (ACM 6332)
				{ 17, 101570, "pet1276" },                             -- Moon Moon (Drop: Moonfang)
				{ 18, 73953,  "pet340" },                              -- Sea Pony (Fishing: Darkmoon Island)
				{ 20, 91040,  "pet1063", [QUEST_EXTRA_ITTYPE] = 32175 }, -- Darkmoon Eye
				{ 21, 116064, "pet1478", [QUEST_EXTRA_ITTYPE] = 36471 }, -- Syd the Squid
				{ 22, 19450,  "pet106",  [QUEST_EXTRA_ITTYPE] = 7946 }, -- A Jubling's Tiny Home
			},
		},
		{ --DarkmoonToys
			name = AL["Toys"].." & "..AL["Vanity Gear"],
			[NORMAL_DIFF] = {
				{ 1,   116138, [PRICE_EXTRA_ITTYPE] = "darkmoon:130" },                 -- Last Deck of Nemelex Xobeh
				{ 2,   116115, "ac9252" },                                              -- Blazing Wings
				{ 3,   90899,  [PRICE_EXTRA_ITTYPE] = "darkmoon:90" },                  -- Darkmoon Whistle
				{ 4,   75042,  [PRICE_EXTRA_ITTYPE] = "money:1000" },                   -- Flimsy Yellow Balloon
				{ 5,   116139, [PRICE_EXTRA_ITTYPE] = "darkmoon:90" },                  -- Haunting Memento
				{ 6,   105898 },                                                        -- Moonfang's Paw (Drop: Moonfang)
				{ 7,   101571 },                                                        -- Moonfang Shroud (Drop: Moonfang)
				{ 8,   116067, [QUEST_EXTRA_ITTYPE] = 36477 },                          -- Ring of Broken Promises
				{ 9,   151265 },                                                        -- Blight Boar Microphone (Drop: Death Metal Knight)
				{ 10,  19291,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1" },                   -- Darkmoon Storage Box
				{ 11,  74142,  [PRICE_EXTRA_ITTYPE] = "money:100" },                    -- Darkmoon Firework
				{ 12,  93730,  [PRICE_EXTRA_ITTYPE] = "darkmoon:10" },                  -- Darkmoon Top Hat
				{ 13,  75040,  [PRICE_EXTRA_ITTYPE] = "money:1000" },                   -- Flimsy Darkmoon Balloon
				{ 14,  75041,  [PRICE_EXTRA_ITTYPE] = "money:1000" },                   -- Flimsy Green Balloon
				{ 15,  18662,  [PRICE_EXTRA_ITTYPE] = "money:20" },                     -- Heavy Leather Ball
				{ 16,  92959,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Cougar"
				{ 17,  92966,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Dragon"
				{ 18,  92967,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Gryphon"
				{ 19,  92968,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Murloc"
				{ 20,  92958,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Nightsaber"
				{ 21,  92969,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Rocket"
				{ 22,  92956,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Snow Leopard"
				{ 23,  77158,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Tiger"
				{ 24,  92970,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Darkmoon "Wyvern"
				{ 101, 78341,  [PRICE_EXTRA_ITTYPE] = "darkmoon:160" },                 -- Darkmoon Hammer
				{ 102, 93732 },                                                         -- Darkmoon Fishing Cap (Fishing: Darkmoon Island)
				{ 103, 78340,  [PRICE_EXTRA_ITTYPE] = "darkmoon:90" },                  -- Cloak of the Darkmoon Faire
				{ 104, 77256,  [PRICE_EXTRA_ITTYPE] = "darkmoon:20" },                  -- Darkmoon "Sword"
				{ 105, 19295,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1" },                   -- Darkmoon Flower
				{ 106, 19292,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1" },                   -- Last Month's Mutton
				{ 107, 19293,  [PRICE_EXTRA_ITTYPE] = "darkmoon:1" },                   -- Last Year's Mutton
				{ 116, 116052, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" },                  -- Nobleman's Coat
				{ 117, 116137, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" },                  -- Noblewoman's Finery
				{ 118, 116133, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" },                  -- Nobleman's Pantaloons
				{ 119, 116136, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" },                  -- Noblewoman's Skirt
				{ 120, 116134, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" },                  -- Noble's Fancy Boots
			},
		},
		{ --DarkmoonTrinkets
			name = AL["Trinkets"],
			[NORMAL_DIFF] = {
				{ 1,   79325 },                   -- Crane Deck
				{ 2,   79330, [QUEST_EXTRA_ITTYPE] = 30449 }, -- Relic of Chi Ji
				{ 4,   79324 },                   -- Ox Deck
				{ 5,   79329, [QUEST_EXTRA_ITTYPE] = 30450 }, -- Relic of Niuzao
				{ 7,   79326 },                   -- Serpent Deck
				{ 8,   79331, [QUEST_EXTRA_ITTYPE] = 30451 }, -- Relic of Yu'lon
				{ 10,  79323 },                   -- Tiger Deck
				{ 11,  79327, [QUEST_EXTRA_ITTYPE] = 30452 }, -- Relic of Xuen
				{ 12,  79328, [QUEST_EXTRA_ITTYPE] = 30452 }, -- Relic of Xuen
				{ 16,  62046 },                   -- Earthquake Deck
				{ 17,  62048, [QUEST_EXTRA_ITTYPE] = 27667 }, -- Darkmoon Card: Earthquake
				{ 19,  62045 },                   -- Hurricane Deck
				{ 20,  62049, [QUEST_EXTRA_ITTYPE] = 27665 }, -- Darkmoon Card: Hurricane
				{ 21,  62051, [QUEST_EXTRA_ITTYPE] = 27665 }, -- Darkmoon Card: Hurricane
				{ 23,  62044 },                   -- Tsunami Deck
				{ 24,  62050, [QUEST_EXTRA_ITTYPE] = 27666 }, -- Darkmoon Card: Tsunami
				{ 26,  62021 },                   -- Volcanic Deck
				{ 27,  62047, [QUEST_EXTRA_ITTYPE] = 27664 }, -- Darkmoon Card: Volcano
				{ 29,  74035, "ac6024" },         -- Master Pit Fighter
				{ 30,  74034, "ac6023" },         -- Pit Fighter
				{ 101, 44276 },                   -- Chaos Deck
				{ 102, 42989, [QUEST_EXTRA_ITTYPE] = 13325 }, -- Darkmoon Card: Berserker!
				{ 104, 44259 },                   -- Prisms Deck
				{ 105, 42988, [QUEST_EXTRA_ITTYPE] = 13324 }, -- Darkmoon Card: Illusion
				{ 107, 44294 },                   -- Undeath Deck
				{ 108, 42990, [QUEST_EXTRA_ITTYPE] = 13327 }, -- Darkmoon Card: Death
				{ 110, 44326 },                   -- Nobles Deck
				{ 111, 44253, [QUEST_EXTRA_ITTYPE] = 13326 }, -- Darkmoon Card: Greatness
				{ 112, 42987, [QUEST_EXTRA_ITTYPE] = 13326 }, -- Darkmoon Card: Greatness
				{ 113, 44254, [QUEST_EXTRA_ITTYPE] = 13326 }, -- Darkmoon Card: Greatness
				{ 114, 44255, [QUEST_EXTRA_ITTYPE] = 13326 }, -- Darkmoon Card: Greatness
				{ 116, 31890 },                   -- Blessings Deck
				{ 117, 31856, [QUEST_EXTRA_ITTYPE] = 10938 }, -- Darkmoon Card: Crusade
				{ 119, 31907 },                   -- Furies Deck
				{ 120, 31858, [QUEST_EXTRA_ITTYPE] = 10940 }, -- Darkmoon Card: Vengeance
				{ 122, 31914 },                   -- Lunacy Deck
				{ 123, 31859, [QUEST_EXTRA_ITTYPE] = 10941 }, -- Darkmoon Card: Madness
				{ 125, 31891 },                   -- Storms Deck
				{ 126, 31857, [QUEST_EXTRA_ITTYPE] = 10939 }, -- Darkmoon Card: Wrath
				{ 201, 19228 },                   -- Beasts Deck
				{ 202, 19288, [QUEST_EXTRA_ITTYPE] = 7907 }, -- Darkmoon Card: Blue Dragon
				{ 204, 19267 },                   -- Elementals Deck
				{ 205, 19289, [QUEST_EXTRA_ITTYPE] = 7929 }, -- Darkmoon Card: Maelstrom
				{ 207, 19277 },                   -- Portals Deck
				{ 208, 19290, [QUEST_EXTRA_ITTYPE] = 7927 }, -- Darkmoon Card: Twisting Nether
				{ 210, 19257 },                   -- Warlords Deck
				{ 211, 19287, [QUEST_EXTRA_ITTYPE] = 7928 }, -- Darkmoon Card: Heroism
				{ 301, 44158 },                   -- Demons Deck
				{ 302, 44217, [QUEST_EXTRA_ITTYPE] = 13311 }, -- Darkmoon Dirk
				{ 303, 44218, [QUEST_EXTRA_ITTYPE] = 13311 }, -- Darkmoon Executioner
				{ 304, 44219, [QUEST_EXTRA_ITTYPE] = 13311 }, -- Darkmoon Magestaff
				{ 306, 44148 },                   -- Mages Deck
				{ 307, 44215, [QUEST_EXTRA_ITTYPE] = 12518 }, -- Darkmoon Necklace
				{ 308, 44213, [QUEST_EXTRA_ITTYPE] = 12518 }, -- Darkmoon Pendant
				{ 316, 37164 },                   -- Swords Deck
				{ 317, 39894, [QUEST_EXTRA_ITTYPE] = 12798 }, -- Darkcloth Shoulders
				{ 318, 39895, [QUEST_EXTRA_ITTYPE] = 12798 }, -- Cloaked Shoulderpads
				{ 319, 39897, [QUEST_EXTRA_ITTYPE] = 12798 }, -- Azure Shoulderguards
				{ 321, 37163 },                   -- Rogues Deck
				{ 322, 38318, [QUEST_EXTRA_ITTYPE] = 12517 }, -- Darkmoon Robe
				{ 323, 39509, [QUEST_EXTRA_ITTYPE] = 12517 }, -- Darkmoon Vest
				{ 324, 39507, [QUEST_EXTRA_ITTYPE] = 12517 }, -- Darkmoon Chain Shirt
			},
		},
		{ --DarkmoonFoodDrinks
			name = AL["Food"].." & "..AL["Drinks"],
			[NORMAL_DIFF] = {
				{ 1,   19223, [PRICE_EXTRA_ITTYPE] = "money:25",    [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Darkmoon Dog
				{ 2,   19304, [PRICE_EXTRA_ITTYPE] = "money:125",   [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Spiced Beef Jerky
				{ 3,   19305, [PRICE_EXTRA_ITTYPE] = "money:500",   [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Pickled Kodo Foot
				{ 4,   19224, [PRICE_EXTRA_ITTYPE] = "money:1000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Red Hot Wings
				{ 5,   19306, [PRICE_EXTRA_ITTYPE] = "money:2000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Crunchy Frog
				{ 6,   19225, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Deep Fried Candybar
				{ 7,   33246, [PRICE_EXTRA_ITTYPE] = "money:5600",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Funnel Cake
				{ 8,   33254, [PRICE_EXTRA_ITTYPE] = "money:8000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Forest Strider Drumstick
				{ 9,   44940, [PRICE_EXTRA_ITTYPE] = "money:16000", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Corn-Breaded Sausage
				{ 10,  73260, [PRICE_EXTRA_ITTYPE] = "money:20000", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Salty Sea Dog
				{ 16,  75029, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Beer-Basted Short Ribs
				{ 17,  75031, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Draenic Dumplings
				{ 18,  75034, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Forsaken Foie Gras
				{ 19,  75030, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Gnomeregan Gnuggets
				{ 20,  75033, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Green Ham & Eggs
				{ 21,  75032, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Mulgore Meat Pie
				{ 22,  75036, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Silvermoon Steak
				{ 23,  75028, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Stormwind Surprise
				{ 24,  75027, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Teldrassil Tenderloin
				{ 25,  75035, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Troll Tartare
				{ 101, 19299, [PRICE_EXTRA_ITTYPE] = "money:500" },                   -- Fizzy Faire Drink
				{ 102, 19300, [PRICE_EXTRA_ITTYPE] = "money:2000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Bottled Winterspring Water
				{ 103, 33234, [PRICE_EXTRA_ITTYPE] = "money:4000",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Iced Berry Slush
				{ 104, 33236, [PRICE_EXTRA_ITTYPE] = "money:5600",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Fizzy Faire Drink 'Classic'
				{ 105, 44941, [PRICE_EXTRA_ITTYPE] = "money:8500",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Fresh-Squeezed Limeade
				{ 106, 74822, [PRICE_EXTRA_ITTYPE] = "money:13750", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Sasparilla Sinker
				{ 116, 19222, [PRICE_EXTRA_ITTYPE] = "money:10" },                    -- Cheap Beer
				{ 117, 19221, [PRICE_EXTRA_ITTYPE] = "money:50" },                    -- Darkmoon Special Reserve
				{ 118, 93208, [PRICE_EXTRA_ITTYPE] = "money:80000" },                 -- Darkmoon P.I.E
			},
		},
		{ --DarkmoonHeirloomArmor
			name = AL["Heirloom"].." - "..AL["Armor"],
			[NORMAL_DIFF] = {
				{ 1,  93859, [PRICE_EXTRA_ITTYPE] = "42985:1:darkmoon:44" }, -- Bloodstained Dreadmist Mantle
				{ 2,  93864, [PRICE_EXTRA_ITTYPE] = "42984:1:darkmoon:44" }, -- Majestic Ironfeather Shoulders
				{ 3,  93862, [PRICE_EXTRA_ITTYPE] = "42952:1:darkmoon:44" }, -- Supple Shadowcraft Spaulders
				{ 4,  93887, [PRICE_EXTRA_ITTYPE] = "42950:1:darkmoon:44" }, -- Grand Champion Herod's Shoulder
				{ 5,  93876, [PRICE_EXTRA_ITTYPE] = "42951:1:darkmoon:44" }, -- Awakened Pauldrons of Elements
				{ 6,  93893, [PRICE_EXTRA_ITTYPE] = "69890:1:darkmoon:44" }, -- Brushed Pauldrons of Might
				{ 7,  93890, [PRICE_EXTRA_ITTYPE] = "42949:1:darkmoon:44" }, -- Gleaming Spaulders of Valor
				{ 9,  93860, [PRICE_EXTRA_ITTYPE] = "48691:1:darkmoon:44" }, -- Bloodstained Dreadmist Robe
				{ 10, 93865, [PRICE_EXTRA_ITTYPE] = "48687:1:darkmoon:44" }, -- Majestic Ironfeather Breastplate
				{ 11, 93863, [PRICE_EXTRA_ITTYPE] = "48689:1:darkmoon:44" }, -- Supple Shadowcraft Tunic
				{ 12, 93888, [PRICE_EXTRA_ITTYPE] = "48677:1:darkmoon:44" }, -- Furious Deathdealer Breastplate
				{ 13, 93885, [PRICE_EXTRA_ITTYPE] = "48683:1:darkmoon:44" }, -- Awakened Vest of Elements
				{ 14, 93892, [PRICE_EXTRA_ITTYPE] = "69889:1:darkmoon:44" }, -- Brushed Breastplate of Might
				{ 15, 93891, [PRICE_EXTRA_ITTYPE] = "48685:1:darkmoon:44" }, -- Gleaming Breastplate of Valor
				{ 16, 42985, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Tattered Dreadmist Mantle
				{ 17, 42984, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Preened Ironfeather Shoulders
				{ 18, 42952, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Stained Shadowcraft Spaulders
				{ 19, 42950, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Champion Herod's Shoulder
				{ 20, 42951, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Mystical Pauldrons of Elements
				{ 21, 69890, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Burnished Pauldrons of Might
				{ 22, 42949, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Polished Spaulders of Valor
				{ 24, 48691, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Tattered Dreadmist Robe
				{ 25, 48687, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Preened Ironfeather Breastplate
				{ 26, 48689, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Stained Shadowcraft Tunic
				{ 27, 48677, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Champion's Deathdealer Breastplate
				{ 28, 48683, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Mystical Vest of Elements
				{ 29, 69889, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Burnished Breastplate of Might
				{ 30, 48685, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Polished Breastplate of Valor
			},
		},
		{ --DarkmoonHeirloomWeapons
			name = AL["Heirloom"].." - "..AL["Trinkets"].." & "..AL["Weapons"],
			[NORMAL_DIFF] = {
				{ 1,  93897, [PRICE_EXTRA_ITTYPE] = "42992:1:darkmoon:60" }, -- Piercing Eye of the Beast
				{ 2,  93896, [PRICE_EXTRA_ITTYPE] = "42991:1:darkmoon:60" }, -- Forceful Hand of Justice
				{ 4,  93857, [PRICE_EXTRA_ITTYPE] = "42944:1:darkmoon:44" }, -- Vengeful Heartseeker
				{ 5,  93845, [PRICE_EXTRA_ITTYPE] = "69893:1:darkmoon:44" }, -- Gore-Steeped Skullforge Reaver
				{ 6,  93856, [PRICE_EXTRA_ITTYPE] = "42945:1:darkmoon:44" }, -- Noble Dal'Rend's Sacred Charge
				{ 7,  93843, [PRICE_EXTRA_ITTYPE] = "42943:1:darkmoon:64" }, -- Hardened Arcanite Reaper
				{ 8,  93853, [PRICE_EXTRA_ITTYPE] = "42948:1:darkmoon:44" }, -- Pious Aurastone Hammer
				{ 9,  93847, [PRICE_EXTRA_ITTYPE] = "48716:1:darkmoon:44" }, -- Crushing Mass of McGowan
				{ 10, 93846, [PRICE_EXTRA_ITTYPE] = "48718:1:darkmoon:64" }, -- Re-Engineered Lava Dredger
				{ 11, 93844, [PRICE_EXTRA_ITTYPE] = "79131:1:darkmoon:64" }, -- Refinished Warden Staff
				{ 12, 93854, [PRICE_EXTRA_ITTYPE] = "42947:1:darkmoon:64" }, -- Scholarly Headmaster's Charge
				{ 13, 93855, [PRICE_EXTRA_ITTYPE] = "42946:1:darkmoon:64" }, -- War-Torn Ancient Bone Bow
				{ 14, 93902, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Flamescarred Draconian Deflector
				{ 15, 93903, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Weathered Observer's Shield
				{ 16, 42992, [PRICE_EXTRA_ITTYPE] = "darkmoon:130" }, -- Discerning Eye of the Beast
				{ 17, 42991, [PRICE_EXTRA_ITTYPE] = "darkmoon:130" }, -- Swift Hand of Justice
				{ 19, 42944, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Balanced Heartseeker
				{ 20, 69893, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Bloodsoaked Skullforge Reaver
				{ 21, 42945, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Venerable Dal'Rend's Sacred Charge
				{ 22, 42943, [PRICE_EXTRA_ITTYPE] = "darkmoon:160" }, -- Bloodied Arcanite Reaper
				{ 23, 42948, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Devout Aurastone Hammer
				{ 24, 48716, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Venerable Mass of McGowan
				{ 25, 48718, [PRICE_EXTRA_ITTYPE] = "darkmoon:160" }, -- Repurposed Lava Dredger
				{ 26, 79131, [PRICE_EXTRA_ITTYPE] = "darkmoon:160" }, -- Burnished Warden Staff
				{ 27, 42947, [PRICE_EXTRA_ITTYPE] = "darkmoon:160" }, -- Dignified Headmaster's Charge
				{ 28, 42946, [PRICE_EXTRA_ITTYPE] = "darkmoon:160" }, -- Charmed Ancient Bone Bow
				{ 29, 93904, [PRICE_EXTRA_ITTYPE] = "darkmoon:110" }, -- Musty Tome of the Lost
			},
		},
		{ --DarkmoonReplicasDruid
			name = AL["Transmoggable Replicas"].." - "..ALIL["DRUID"],
			[NORMAL_DIFF] = {
				{ 1,  78238, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Wildheart Cowl
				{ 2,  78239, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Wildheart Spaulders
				{ 3,  78242, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Wildheart Vest
				{ 4,  78240, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Wildheart Bracers
				{ 5,  78241, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Wildheart Gloves
				{ 6,  78244, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Wildheart Belt
				{ 7,  78245, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Wildheart Kilt
				{ 8,  78243, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Wildheart Boots
				{ 16, 78249, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Feralheart Cowl
				{ 17, 78247, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Feralheart Spaulders
				{ 18, 78252, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Feralheart Vest
				{ 19, 78253, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Feralheart Bracers
				{ 20, 78248, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Feralheart Gloves
				{ 21, 78246, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Feralheart Belt
				{ 22, 78250, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Feralheart Kilt
				{ 23, 78251, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Feralheart Boots
			},
		},
		{ --DarkmoonReplicasHunter
			name = AL["Transmoggable Replicas"].." - "..ALIL["HUNTER"],
			[NORMAL_DIFF] = {
				{ 1,  78275, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Beaststalker's Cap
				{ 2,  78273, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Beaststalker's Mantle
				{ 3,  78270, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Beaststalker's Tunic
				{ 4,  78277, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Beaststalker's Bindings
				{ 5,  78271, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Beaststalker's Gloves
				{ 6,  78274, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Beaststalker's Belt
				{ 7,  78276, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Beaststalker's Pants
				{ 8,  78272, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Beaststalker's Boots
				{ 16, 78284, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Beastmaster's Cap
				{ 17, 78281, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Beastmaster's Mantle"
				{ 18, 78282, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Beastmaster's Tunic
				{ 19, 78283, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Beastmaster's Bindings
				{ 20, 78278, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Beastmaster's Gloves
				{ 21, 78285, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Beastmaster's Belt
				{ 22, 78280, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Beastmaster's Pants
				{ 23, 78279, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Beastmaster's Boots
			},
		},
		{ --DarkmoonReplicasMage
			name = AL["Transmoggable Replicas"].." - "..ALIL["MAGE"],
			[NORMAL_DIFF] = {
				{ 1,  78188, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Magister's Crown
				{ 2,  78191, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Magister's Mantle
				{ 3,  78190, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Magister's Robes
				{ 4,  78193, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Magister's Bindings
				{ 5,  78187, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Magister's Gloves
				{ 6,  78192, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Magister's Belt
				{ 7,  78189, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Magister's Leggings
				{ 8,  78186, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Magister's Boots
				{ 16, 78198, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Sorcerer's Crown
				{ 17, 78201, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Sorcerer's Mantle
				{ 18, 78200, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Sorcerer's Robes
				{ 19, 78203, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Sorcerer's Bindings
				{ 20, 78197, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Sorcerer's Gloves
				{ 21, 78202, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Sorcerer's Belt
				{ 22, 78199, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Sorcerer's Leggings
				{ 23, 78196, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Sorcerer's Boots
			},
		},
		{ --DarkmoonReplicasPaladin
			name = AL["Transmoggable Replicas"].." - "..ALIL["PALADIN"],
			[NORMAL_DIFF] = {
				{ 1,  78307, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Lightforge Helm
				{ 2,  78308, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Lightforge Spaulders
				{ 3,  78306, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Lightforge Breastplate
				{ 4,  78304, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Lightforge Bracers
				{ 5,  78303, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Lightforge Gauntlets
				{ 6,  78302, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Lightforge Belt
				{ 7,  78305, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Lightforge Legplates
				{ 8,  78309, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Lightforge Boots
				{ 16, 78312, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Soulforge Helm
				{ 17, 78316, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Soulforge Spaulders
				{ 18, 78313, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Soulforge Breastplate
				{ 19, 78317, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Soulforge Bracers
				{ 20, 78314, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Soulforge Gauntlets
				{ 21, 78311, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Soulforge Belt
				{ 22, 78315, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Soulforge Legplates
				{ 23, 78310, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Soulforge Boots
			},
		},
		{ --DarkmoonReplicasPriest
			name = AL["Transmoggable Replicas"].." - "..ALIL["PRIEST"],
			[NORMAL_DIFF] = {
				{ 1,  78205, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Devout Crown
				{ 2,  78204, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Devout Mantle
				{ 3,  78209, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Devout Robe
				{ 4,  78211, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Devout Bracers
				{ 5,  78208, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Devout Gloves
				{ 6,  78207, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Devout Belt
				{ 7,  78206, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Devout Skirt
				{ 8,  78210, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Devout Sandals
				{ 16, 78216, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Virtuous Crown
				{ 17, 78213, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Virtuous Mantle
				{ 18, 78212, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Virtuous Robe
				{ 19, 78215, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Virtuous Bracers
				{ 20, 78217, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Virtuous Gloves
				{ 21, 78218, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Virtuous Belt
				{ 22, 78214, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Virtuous Skirt
				{ 23, 78219, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Virtuous Sandals
			},
		},
		{ --DarkmoonReplicasRogue
			name = AL["Transmoggable Replicas"].." - "..ALIL["ROGUE"],
			[NORMAL_DIFF] = {
				{ 1,  78260, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Shadowcraft Cap
				{ 2,  78261, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Shadowcraft Spaulders
				{ 3,  78254, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Shadowcraft Tunic
				{ 4,  78255, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Shadowcraft Bracers
				{ 5,  78257, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Shadowcraft Gloves
				{ 6,  78259, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Shadowcraft Belt
				{ 7,  78258, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Shadowcraft Pants
				{ 8,  78256, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Shadowcraft Boots
				{ 16, 78263, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Darkmantle Cap
				{ 17, 78267, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Darkmantle Spaulders
				{ 18, 78269, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Darkmantle Tunic
				{ 19, 78264, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Darkmantle Bracers
				{ 20, 78266, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Darkmantle Gloves
				{ 21, 78265, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Darkmantle Belt
				{ 22, 78268, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Darkmantle Pants
				{ 23, 78262, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Darkmantle Boots
			},
		},
		{ --DarkmoonReplicasShaman
			name = AL["Transmoggable Replicas"].." - "..ALIL["SHAMAN"],
			[NORMAL_DIFF] = {
				{ 1,  78286, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Coif of Elements
				{ 2,  78288, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Pauldrons of Elements
				{ 3,  78290, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Vest of Elements
				{ 4,  78289, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Bindings of Elements
				{ 5,  78291, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Gauntlets of Elements
				{ 6,  78293, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Cord of Elements
				{ 7,  78287, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Kilt of Elements
				{ 8,  78292, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Boots of Elements
				{ 16, 78294, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Coif of The Five Thunders
				{ 17, 78299, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Pauldrons of The Five Thunders
				{ 18, 78300, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Vest of The Five Thunders
				{ 19, 78296, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Bindings of The Five Thunders
				{ 20, 78295, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Gauntlets of The Five Thunders
				{ 21, 78297, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Cord of The Five Thunders
				{ 22, 78301, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Kilt of The Five Thunders
				{ 23, 78298, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Boots of The Five Thunders
			},
		},
		{ --DarkmoonReplicasWarlock
			name = AL["Transmoggable Replicas"].." - "..ALIL["WARLOCK"],
			[NORMAL_DIFF] = {
				{ 1,  78227, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Dreadmist Mask
				{ 2,  78226, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Dreadmist Mantle
				{ 3,  78225, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Dreadmist Robe
				{ 4,  78229, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Dreadmist Bracers
				{ 5,  78223, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Dreadmist Wraps
				{ 6,  78222, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Dreadmist Belt
				{ 7,  78228, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Dreadmist Leggings
				{ 8,  78224, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Dreadmist Sandals
				{ 16, 78230, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Deathmist Mask
				{ 17, 78234, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Deathmist Mantle
				{ 18, 78237, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Deathmist Robe
				{ 19, 78232, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Deathmist Bracers
				{ 20, 78236, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Deathmist Wraps
				{ 21, 78233, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Deathmist Belt
				{ 22, 78231, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Deathmist Leggings
				{ 23, 78235, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Deathmist Sandals
			},
		},
		{ --DarkmoonReplicasWarrior
			name = AL["Transmoggable Replicas"].." - "..ALIL["WARRIOR"],
			[NORMAL_DIFF] = {
				{ 1,  78322, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Helm of Valor
				{ 2,  78325, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Spaulders of Valor
				{ 3,  78323, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Breastplate of Valor
				{ 4,  78321, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Bracers of Valor
				{ 5,  78320, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Gauntlets of Valor
				{ 6,  78319, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Belt of Valor
				{ 7,  78324, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Legplates of Valor
				{ 8,  78318, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Boots of Valor
				{ 16, 78330, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Helm of Heroism
				{ 17, 78332, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Spaulders of Heroism
				{ 18, 78328, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Breastplate of Heroism
				{ 19, 78327, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Bracers of Heroism
				{ 20, 78329, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Gauntlets of Heroism
				{ 21, 78333, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Belt of Heroism
				{ 22, 78331, [PRICE_EXTRA_ITTYPE] = "darkmoon:75" }, -- Replica Legplates of Heroism
				{ 23, 78326, [PRICE_EXTRA_ITTYPE] = "darkmoon:55" }, -- Replica Boots of Heroism
			},
		},
	}
}

data["FishingExtravaganza"] = {
	name = AL["Stranglethorn Fishing Extravaganza"],
	ContentType = PERMRECEVENTS_CONTENT,
	items = {
		{ --FishingExtravaganza
			name = AL["Stranglethorn Fishing Extravaganza"],
			[NORMAL_DIFF] = {
				{ 1,  "INV_Box_01", nil, AL["First Prize"],       nil },
				{ 2,  19970 }, -- Arcanite Fishing Pole
				{ 3,  19979 }, -- Hook of the Master Angler
				{ 5,  "INV_Box_01", nil, AL["Rare Fish"],         nil },
				{ 6,  19803 }, -- Brownell's Blue Striped Racer
				{ 7,  19806 }, -- Dezian Queenfish
				{ 8,  19805 }, -- Keefer's Angelfish
				{ 9,  19808 }, -- Rockhide Strongfish
				{ 17, 50287 }, -- Boots of the Bay
				{ 18, 50255 }, -- Dread Pirate Ring
				{ 20, "INV_Box_01", nil, AL["Rare Fish Rewards"], nil },
				{ 21, 19969 }, -- Nat Pagle's Extreme Anglin' Boots
				{ 22, 19971 }, -- High Test Eternium Fishing Line
				{ 23, 19972 }, -- Lucky Fishing Hat
			},
		},
	}
}

data["LoveisintheAir"] = {
	name = AL["Love is in the Air"].." ("..ALIL["February"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --LoveisintheAirTrio
			name = AL["Apothecary Hummel"].." ("..ALIL["Shadowfang Keep"]..")",
			[NORMAL_DIFF] = {
				{ 1,  "117369:12068" }, -- Choker of the Pure Heart
				{ 2,  "117366:12068" }, -- Heartbreak Charm
				{ 3,  "117370:12068" }, -- Shard of Pirouetting Happiness
				{ 4,  "117368:12068" }, -- Sweet Perfume Broach
				{ 5,  "117367:12068" }, -- Winking Eye of Love
				{ 16, 54537 },       -- Heart-Shaped Box
				{ 17, 50250,         "mount" }, -- Big Love Rocket
				{ 18, 232926,        "mount" }, -- Love Witch's Sweeper
				{ 19, 50446,         "pet251" }, -- Toxic Wasteling
				{ 20, 50471 },       -- The Heartbreaker
				{ 21, 211812 },      -- Renewed Proto-Drake: Love Armor
				{ 22, 49715 },       -- Forever-Lovely Rose
				{ 23, 50741 },       -- Vile Fumigator's Mask
				{ 24, 49927 },       -- Love Token
			},
		},
		{ --LoveisintheAirVendor
			name = AL["Vendors"],
			[NORMAL_DIFF] = {
				{ 1,   72146,  "mount",                               [PRICE_EXTRA_ITTYPE] = "lovetoken:270" }, -- Swift Lovebird
				{ 2,   210973, "mount",                               [PRICE_EXTRA_ITTYPE] = "lovetoken:270" }, -- Heartseeker Mana Ray
				{ 3,   142341, [PRICE_EXTRA_ITTYPE] = "lovetoken:270" },                            -- Love Boat
				{ 4,   211864, [PRICE_EXTRA_ITTYPE] = "lovetoken:270" },                            -- Exquisite Love Boat
				{ 5,   165670, [PRICE_EXTRA_ITTYPE] = "lovetoken:150" },                            -- Peddlefeet's Lovely Hearthstone
				{ 6,   210975, [PRICE_EXTRA_ITTYPE] = "lovetoken:100" },                            -- Date Simulation Modulator
				{ 7,   210974, [PRICE_EXTRA_ITTYPE] = "lovetoken:40" },                             -- Eyes For You Only
				{ 8,   34480,  [PRICE_EXTRA_ITTYPE] = "lovetoken:10" },                             -- Romantic Picnic Basket
				{ 9,   205156, "pet3549",                             [PRICE_EXTRA_ITTYPE] = "lovetoken:40" }, -- Heartseeker Moth
				{ 10,  232923, "pet4704",                             [PRICE_EXTRA_ITTYPE] = "lovetoken:40" }, -- Living Rose
				{ 11,  116155, "pet1511",                             [PRICE_EXTRA_ITTYPE] = "lovetoken:40" }, -- Lovebird Hatchling
				{ 12,  22235,  "pet122",                              [PRICE_EXTRA_ITTYPE] = "lovetoken:40" }, -- Truesilver Shafted Arrow
				{ 13,  232925, [PRICE_EXTRA_ITTYPE] = "lovetoken:40" },                             -- Ensemble: Truly Heartfelt Shoulders
				{ 14,  22200,  [PRICE_EXTRA_ITTYPE] = "lovetoken:5",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Silver Shafted Arrow
				{ 15,  50161,  [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                             -- Dinner Suit Box
				{ 16,  50160,  [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                             -- Lovely Dress Box
				{ 17,  21813,  [PRICE_EXTRA_ITTYPE] = "lovetoken:2" },                              -- Bag of Heart Candies
				{ 18,  122341, [PRICE_EXTRA_ITTYPE] = "lovetoken:450" },                            -- Timeworn Heirloom Scabbard
				{ 19,  151615, [PRICE_EXTRA_ITTYPE] = "lovetoken:450" },                            -- Weathered Heirloom Scabbard
				{ 20,  167732, [PRICE_EXTRA_ITTYPE] = "lovetoken:450" },                            -- Battle-Hardened Heirloom Scabbard
				{ 21,  187998, [PRICE_EXTRA_ITTYPE] = "lovetoken:450" },                            -- Eternal Heirloom Scabbard
				{ 22,  204337, [PRICE_EXTRA_ITTYPE] = "lovetoken:450" },                            -- Awakened Heirloom Scabbard
				{ 23,  122339, [PRICE_EXTRA_ITTYPE] = "lovetoken:200" },                            -- Ancient Heirloom Scabbard
				{ 25,  144339, [PRICE_EXTRA_ITTYPE] = "lovetoken:100" },                            -- Sturdy Love Fool
				{ 26,  116648, [PRICE_EXTRA_ITTYPE] = "lovetoken:40" },                             -- Manufactured Love Prism
				{ 27,  22261,  [PRICE_EXTRA_ITTYPE] = "lovetoken:10" },                             -- Love Fool
				{ 28,  34258,  [PRICE_EXTRA_ITTYPE] = "lovetoken:5",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Lovely Fireworks
				{ 29,  211976, [PRICE_EXTRA_ITTYPE] = "lovetoken:5",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Pink Brightbursts
				{ 30,  210318, [PRICE_EXTRA_ITTYPE] = "lovetoken:1" },                              -- Chocolate Bon-Bomb
				{ 101, 211352, [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                             -- Eternal Yellow Rose
				{ 102, 211354, [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                             -- Eternal White Rose
				{ 103, 211355, [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                             -- Eternal Pink Rose
				{ 104, 211357, [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                             -- Eternal Orange Rose
				{ 105, 211358, [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                             -- Eternal Blue Rose
				{ 106, 211359, [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                             -- Eternal Black Rose
				{ 107, 211264, [PRICE_EXTRA_ITTYPE] = "lovetoken:5" },                              -- Rose of Romance
				{ 108, 211351, [PRICE_EXTRA_ITTYPE] = "lovetoken:5" },                              -- Rose of Friendship
				{ 109, 211360, [PRICE_EXTRA_ITTYPE] = "lovetoken:5" },                              -- Rose of Purity
				{ 110, 211361, [PRICE_EXTRA_ITTYPE] = "lovetoken:5" },                              -- Rose of Joy
				{ 111, 211362, [PRICE_EXTRA_ITTYPE] = "lovetoken:5" },                              -- Rose of Independence
				{ 112, 211363, [PRICE_EXTRA_ITTYPE] = "lovetoken:5" },                              -- Rose of Dreams Fulfilled
				{ 113, 211364, [PRICE_EXTRA_ITTYPE] = "lovetoken:5" },                              -- Rose of Tragedy
				{ 114, 50163,  [PRICE_EXTRA_ITTYPE] = "lovetoken:5",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Lovely Rose
				{ 115, 22218,  [PRICE_EXTRA_ITTYPE] = "lovetoken:2",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Handful of Rose Petals
				{ 116, 210965, [PRICE_EXTRA_ITTYPE] = "lovetoken:1" },                              -- Single-Use Bouquet
				{ 118, 49909,  [PRICE_EXTRA_ITTYPE] = "lovetoken:10" },                             -- Box of Chocolates
			},
		},
		{ --LoveisintheAirMisc
			name = AL["Miscellaneous"],
			[NORMAL_DIFF] = {
				{ 1,  116651, "ac9394" },                                                        -- True Love Prism
				{ 3,  50160,  "ac1694",                             [PRICE_EXTRA_ITTYPE] = "lovetoken:20" }, -- Lovely Dress Box
				{ 4,  22279 },                                                                   -- Lovely Black Dress
				{ 5,  22278 },                                                                   -- Lovely Blue Dress
				{ 6,  22276 },                                                                   -- Lovely Red Dress
				{ 7,  22280 },                                                                   -- Lovely Purple Dress
				{ 9,  50161,  [PRICE_EXTRA_ITTYPE] = "lovetoken:20" },                           -- Dinner Suit Box
				{ 10, 22281 },                                                                   -- Blue Dinner Suit
				{ 11, 22282 },                                                                   -- Purple Dinner Suit
				{ 12, 22277 },                                                                   -- Red Dinner Suit
				{ 16, 49909,  "ac1702",                             [PRICE_EXTRA_ITTYPE] = "lovetoken:10" }, -- Box of Chocolates
				{ 17, 22237 },                                                                   -- Dark Desire
				{ 18, 22238 },                                                                   -- Very Berry Cream
				{ 19, 22236 },                                                                   -- Buttermilk Delight
				{ 20, 22239 },                                                                   -- Sweet Surprise
				{ 22, 21813,  "ac1701",                             [PRICE_EXTRA_ITTYPE] = "lovetoken:2" }, -- Bag of Heart Candies
				{ 23, 21816 },                                                                   -- Heart Candy
				{ 24, 21817 },                                                                   -- Heart Candy
				{ 25, 21818 },                                                                   -- Heart Candy
				{ 26, 21819 },                                                                   -- Heart Candy
				{ 27, 21820 },                                                                   -- Heart Candy
				{ 28, 21821 },                                                                   -- Heart Candy
				{ 29, 21822 },                                                                   -- Heart Candy
				{ 30, 21823 },                                                                   -- Heart Candy
			},
		},
	}
}

data["LunarFestival"] = {
	name = AL["Lunar Festival"].." ("..ALIL["February"].." - "..ALIL["March"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --LunarFestivalVendor
			name = AL["Vendor"],
			[NORMAL_DIFF] = {
				{ 1,   232901,                          "mount",                                 [PRICE_EXTRA_ITTYPE] = "ancestrycoin:75" },                              -- Lunar Launcher
				{ 2,   74610,                           "pet341",                                [ATLASLOOT_IT_ALLIANCE] = 74610,         [PRICE_EXTRA_ITTYPE] = "ancestrycoin:50" }, -- Lunar Lantern
				{ 3,   74611,                           "pet342",                                [ATLASLOOT_IT_HORDE] = 74611,            [PRICE_EXTRA_ITTYPE] = "ancestrycoin:50" }, -- Festival Lantern
				{ 4,   [ATLASLOOT_IT_ALLIANCE] = 89999, [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Everlasting Alliance Firework
				{ 5,   [ATLASLOOT_IT_HORDE] = 90000,    [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Everlasting Horde Firework
				{ 6,   165669,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:30" },                                                                       -- Lunar Elder's Hearthstone
				{ 7,   143829,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Red Dragon Tail Costume
				{ 8,   165676,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Green Dragon Tail Costume
				{ 9,   165673,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Blue Dragon Tail Costume
				{ 10,  143827,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Red Dragon Head Costume
				{ 11,  165674,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Green Dragon Head Costume
				{ 12,  165671,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Blue Dragon Head Costume
				{ 13,  143828,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:10" },                                                                       -- Red Dragon Body Costume
				{ 14,  165675,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:10" },                                                                       -- Green Dragon Body Costume
				{ 15,  165672,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:10" },                                                                       -- Blue Dragon Body Costume
				{ 16,  151355,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Crown of Courage
				{ 17,  151352,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Crown of Good Fortune
				{ 18,  151354,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Crown of Prosperity
				{ 19,  151353,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:25" },                                                                       -- Crown of Dark Blossoms
				{ 20,  21157,                           [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" },                                                                        -- Festive Green Dress
				{ 21,  21538,                           [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" },                                                                        -- Festive Pink Dress
				{ 22,  21539,                           [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" },                                                                        -- Festive Purple Dress
				{ 23,  21541,                           [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" },                                                                        -- Festive Black Pant Suit
				{ 24,  21544,                           [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" },                                                                        -- Festive Blue Pant Suit
				{ 25,  21543,                           [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" },                                                                        -- Festive Teal Pant Suit
				{ 27,  116172,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:1" },                                                                        -- Perky Blaster
				{ 28,  185910,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:1" },                                                                        -- Star Lantern
				{ 29,  21537,                           [PRICE_EXTRA_ITTYPE] = "ancestrycoin:1" },                                                                        -- Festival Dumplings

				{ 101, 211868,                          [PRICE_EXTRA_ITTYPE] = "money:500000000" },                                                                       -- Winding Slitherdrake: Lunar Festival Armor
				{ 102, 21721,                           [PRICE_EXTRA_ITTYPE] = "money:15" },                                                                              -- Moonglow
				{ 103, 21713,                           [PRICE_EXTRA_ITTYPE] = "money:1000" },                                                                            -- Elune's Candle
				{ 104, 21747,                           [PRICE_EXTRA_ITTYPE] = "money:300" },                                                                             -- Festival Firecracker
				{ 105, 21558,                           [PRICE_EXTRA_ITTYPE] = "money:25" },                                                                              -- Small Blue Rocket
				{ 106, 21559,                           [PRICE_EXTRA_ITTYPE] = "money:25" },                                                                              -- Small Green Rocket
				{ 107, 21557,                           [PRICE_EXTRA_ITTYPE] = "money:25" },                                                                              -- Small Red Rocket
				{ 108, 21571,                           [PRICE_EXTRA_ITTYPE] = "money:100" },                                                                             -- Blue Rocket Cluster
				{ 109, 21574,                           [PRICE_EXTRA_ITTYPE] = "money:100" },                                                                             -- Green Rocket Cluster
				{ 110, 21576,                           [PRICE_EXTRA_ITTYPE] = "money:100" },                                                                             -- Red Rocket Cluster

				{ 112, 122338,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:40" },                                                                       -- Ancient Heirloom Armor Casing
				{ 113, 122340,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:75" },                                                                       -- Timeworn Heirloom Armor Casing
				{ 114, 151614,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:75" },                                                                       -- Weathered Heirloom Armor Casing
				{ 115, 167731,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:75" },                                                                       -- Battle-Hardened Heirloom Armor Casing
				{ 116, 187997,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:75" },                                                                       -- Eternal Heirloom Armor Casing
				{ 117, 204336,                          [PRICE_EXTRA_ITTYPE] = "ancestrycoin:75" },                                                                       -- Awakened Heirloom Armor Casing

				-- Page 2
				{ 119, 21640,                           [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Lunar Festival Fireworks Pack
				{ 120, 21558 },                                                        -- Small Blue Rocket
				{ 121, 21559 },                                                        -- Small Green Rocket
				{ 122, 21557 },                                                        -- Small Red Rocket
				{ 123, 21561 },                                                        -- Small White Rocket
				{ 124, 21562 },                                                        -- Small Yellow Rocket
				{ 125, 21589 },                                                        -- Large Blue Rocket
				{ 126, 21590 },                                                        -- Large Green Rocket
				{ 127, 21592 },                                                        -- Large Red Rocket
				{ 128, 21593 },                                                        -- Large White Rocket
				{ 129, 21595 },                                                        -- Large Yellow Rocket
			},
		},
		{ --LunarFestivalRecipes
			name = AL["Recipes"],
			[NORMAL_DIFF] = {
				{ 1,  21738,  [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Schematic: Firework Launcher (p5 225)
				{ 3,  21740,  [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Small Rocket Recipes (p5 125)
				{ 4,  21724 },                               -- Schematic: Small Blue Rocket (p5 125)
				{ 5,  21725 },                               -- Schematic: Small Green Rocket (p5 125)
				{ 6,  21726 },                               -- Schematic: Small Red Rocket (p5 125)
				{ 8,  21742,  [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Large Rocket Recipes (p5 175)
				{ 9,  21727 },                               -- Schematic: Large Blue Rocket (p5 175)
				{ 10, 21728 },                               -- Schematic: Large Green Rocket (p5 175)
				{ 11, 21729 },                               -- Schematic: Large Red Rocket (p5 175)
				{ 13, 44916,  [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Pattern: Festival Dress (p8 250)
				{ 14, 116142, [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Schematic: Alliance Firework
				{ 15, 116144, [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Schematic: Horde Firework
				{ 16, 21737,  [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Schematic: Cluster Launcher (p5 275)
				{ 18, 21741,  [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Cluster Rocket Recipes (p5 225)
				{ 19, 21730 },                               -- Schematic: Blue Rocket Cluster (p5 225)
				{ 20, 21731 },                               -- Schematic: Green Rocket Cluster (p5 225)
				{ 21, 21732 },                               -- Schematic: Red Rocket Cluster (p5 225)
				{ 23, 21743,  [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Large Cluster Rocket Recipes (p5 275)
				{ 24, 21733 },                               -- Schematic: Large Blue Rocket Cluster (p5 275)
				{ 25, 21734 },                               -- Schematic: Large Green Rocket Cluster (p5 275)
				{ 26, 21735 },                               -- Schematic: Large Red Rocket Cluster (p5 275)
				{ 28, 44917,  [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Pattern: Festival Suit (p8 250)
				{ 29, 116146, [PRICE_EXTRA_ITTYPE] = "ancestrycoin:5" }, -- Schematic: Snake Firework
			},
		},
		{ --LunarFestivalMisc
			name = AL["Special Rewards"],
			[NORMAL_DIFF] = {
				{ 1,  21540, [QUEST_EXTRA_ITTYPE] = 8868 }, -- Elune's Lantern
				{ 16, 21746 },                  -- Lucky Red Envelope
				{ 17, 21745 },                  -- Elder's Moonstone
				{ 18, 21744 },                  -- Lucky Rocket Cluster

			},
		},
	}
}

data["Noblegarden"] = {
	name = AL["Noblegarden"].." ("..ALIL["April"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --Noblegarden
			name = AL["Noblegarden"],
			[ALLIANCE_DIFF] = {
				{ 1,  72145,  "mount",                                          [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:500" }, -- Swift Springstrider
				{ 2,  116258, "pet1514",                                        [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:100" }, -- Mystical Spring Bouquet
				{ 3,  44794,  "pet200",                                         [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:100" }, -- Spring Rabbit's Foot
				{ 4,  141532, "pet1943",                                        [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:200" }, -- Noblegarden Bunny
				{ 5,  212786, "pet4409",                                        [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:250" }, -- Lovely Duckling
				{ 6,  44793,  [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:100" },                                       -- Tome of Polymorph: Rabbit
				{ 7,  45073,  [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Spring Flowers
				{ 8,  44792,  [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:10" },                                        -- Blossoming Branch
				{ 9,  188694, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Spring Florist's Pouch
				{ 10, 165802, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:250" },                                       -- Noble Gardener's Hearthstone
				{ 11, 204675, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:200" },                                       -- A Drake's Big Basket of Eggs
				{ 12, 44818,  [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:5" },                                         -- Noblegarden Egg
				{ 13, 45067,  [QUEST_EXTRA_ITTYPE] = 13502 },                                                            -- Egg Basket
				{ 14, 44803,  [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Spring Circlet
				{ 15, 74282,  [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Black Spring Circlet
				{ 16, 74283,  [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Pink Spring Circlet
				{ 17, 164922, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Blue Spring Circlet
				{ 18, 164923, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Brown Spring Circlet
				{ 19, 164924, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Yellow Spring Circlet
				{ 20, 151806, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Elegant Dress
				{ 21, 44800,  [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:50" },                                        -- Spring Robes
				{ 22, 6833,   [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:25" },                                        -- White Tuxedo Shirt
				{ 23, 6835,   [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:25" },                                        -- Black Tuxedo Pants
				{ 24, 213064, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:100" },                                       -- Paradise's Violet Axe
				{ 25, 213067, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:100" },                                       -- Violet Floral Edge
				{ 26, 213070, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:100" },                                       -- Pristine Floral Stalk
				{ 27, 213073, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:100" },                                       -- Faded Floral Staff
				{ 28, 213076, [PRICE_EXTRA_ITTYPE] = "noblegardenchocolate:100" },                                       -- Orchid Bow-quet
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 13, 45067, [QUEST_EXTRA_ITTYPE] = 13503 }, -- Egg Basket
			},
		},
	}
}

data["ChildrensWeek"] = {
	name = AL["Children's Week"].." ("..ALIL["April"].." - "..ALIL["May"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --ChildrensWeek
			name = AL["Children's Week"],
			[NORMAL_DIFF] = {
				{ 1,   "INV_Box_01", nil,                                AL["Azeroth"],                              ALIL["Stormwind City"].." / "..ALIL["Orgrimmar"] },
				{ 2,   23007,        "pet126" },                -- Piglet's Collar
				{ 3,   23015,        "pet127" },                -- Rat Cage
				{ 4,   66073,        "pet289" },                -- Snail Shell
				{ 5,   23002,        "pet125" },                -- Turtle Box
				{ 7,   "INV_Box_01", nil,                                ALIL["Outland"],                            ALIL["Shattrath City"] },
				{ 8,   32616,        "pet158" },                -- Egbert's Egg
				{ 9,   32622,        "pet159" },                -- Elekk Training Collar
				{ 10,  69648,        "pet308" },                -- Legs
				{ 11,  32617,        "pet157" },                -- Sleepy Willy
				{ 13,  "INV_Box_01", nil,                                ALIL["Northrend"],                          ALIL["Dalaran"] },
				{ 14,  46545,        "pet225" },                -- Curious Oracle Hatchling
				{ 15,  46544,        "pet226" },                -- Curious Wolvar Pup
				{ 16,  "INV_Box_01", nil,                                ALIL["Kul Tiras"].." / "..ALIL["Zandalar"], ALIL["Boralus"].." / "..ALIL["Dazar'alor"] },
				{ 17,  167009,       "pet2578" },               -- Enchanted Saurolisk Scale (Scaley)
				{ 18,  167008,       "pet2575" },               -- Sandy Hermit Crab Shell (Mr. Crabs)
				{ 19,  167010,       "pet2576" },               -- Beakbert
				{ 20,  167011,       "pet2577" },               -- Slimy Pouch (Froglet)
				{ 22,  "INV_Box_01", nil,                                ALIL["Khaz Algar"],                         ALIL["Dornogal"] },
				{ 23,  221851,       "pet4466" },               -- Argos's Bell (Argos)
				{ 24,  232857,       "pet4635" },               -- Goggles's Favorite Chew-Wrench (Goggle)
				{ 25,  241193,       "pet3245" },               -- Threadis's Workshop Bot 2.0 (Helpful Workshop Bot)
				{ 26,  242260 },                                -- Arsenal: Children's Stormwind Guard Weapon Set
				{ 27,  242265 },                                -- Arsenal: Children's Orgrimmar Guard Weapon Set
				{ 101, "INV_Box_01", nil,                                AL["Common Rewards"],                       nil },
				{ 102, 116202 },                                -- Pet Care Package
				{ 103, 23022 },                                 -- Curmudgeon's Payoff
				{ 104, 241215 },                                -- Well-loved Figurine
				{ 106, "INV_Box_01", nil,                                AL["Vendor"],                               nil },
				{ 107, 69895,        [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Green Balloon
				{ 108, 69896,        [PRICE_EXTRA_ITTYPE] = "money:1000" }, -- Yellow Balloon
			},
		},
	}
}

data["MidsummerFireFestival"] = {
	name = AL["Midsummer Fire Festival"].." ("..ALIL["June"].." - "..ALIL["July"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --MidsummerFireFestivalAhune
			name = AL["Ahune"].." ("..ALIL["The Slave Pens"]..")",
			[NORMAL_DIFF] = {
				{ 1,  "117372:12068" },                  -- Cloak of the Frigid Winds
				{ 2,  "117374:12068" },                  -- Icebound Cloak
				{ 3,  "117375:12068" },                  -- Shroud of Winter's Chill
				{ 4,  "117376:12068" },                  -- The Frost Lord's Battle Shroud
				{ 5,  "117377:12068" },                  -- The Frost Lord's War Cloak
				{ 6,  35498 },                           -- Formula: Enchant Weapon - Deathfrost (p4 350)
				{ 7,  35557 },                           -- Huge Snowball
				{ 8,  35720 },                           -- Lord of Frost's Private Label
				{ 10, 35723 },                           -- Shards of Ahune
				{ 11, 35280,         [QUEST_EXTRA_ITTYPE] = 11972 }, -- Tabard of Summer Flames
				{ 12, 35279,         [QUEST_EXTRA_ITTYPE] = 11972 }, -- Tabard of Summer Skies
				{ 16, 117394 },                          -- Satchel of Chilled Goods
				{ 17, "117373:12068" },                  -- Frostscythe of Lord Ahune
				{ 18, 53641,         "pet253" },         -- Ice Chip
				{ 19, 138838 },                          -- Illusion: Deathfrost
				{ 20, 224163 },                          -- Cliffside Wylderdrake: Midsummer Fire Festival Armor
				{ 21, 246570 },                          -- Rethfuras, Scorched Stave of Cinders
				{ 22, 244423 },                          -- Rethfuras, Scorched Scythe of Cinders
				{ 23, 246571 },                          -- Glazfuris, Spire of the Deep Chill
				{ 24, 244422 },                          -- Glazfuris, Scythe of the Deep Chill
				{ 25, 244356 },                          -- Crown of the Frost Lord
				{ 26, 17202 },                           -- Snowball
				{ 27, 23247 },                           -- Burning Blossom
			},
		},
		{ --MidsummerFireFestival
			name = AL["Vendor"],
			[ALLIANCE_DIFF] = {
				{ 1,   116440, [PRICE_EXTRA_ITTYPE] = "burningblossom:500" },                                 -- Burning Defender's Medallion
				{ 2,   141649, [PRICE_EXTRA_ITTYPE] = "burningblossom:500" },                                 -- Set of Matches
				{ 3,   206038, [PRICE_EXTRA_ITTYPE] = "burningblossom:500" },                                 -- Flamin' Ring of Flashiness
				{ 4,   116435, [PRICE_EXTRA_ITTYPE] = "burningblossom:350" },                                 -- Cozy Bonfire
				{ 5,   34686,  [PRICE_EXTRA_ITTYPE] = "burningblossom:350" },                                 -- Brazier of Dancing Flames
				{ 6,   166746, [PRICE_EXTRA_ITTYPE] = "burningblossom:300" },                                 -- Fire Eater's Hearthstone
				{ 7,   188695, [PRICE_EXTRA_ITTYPE] = "burningblossom:150" },                                 -- Summer Cranial Skillet
				{ 8,   188699, [PRICE_EXTRA_ITTYPE] = "burningblossom:100" },                                 -- Insulated Dancing Insoles
				{ 9,   188701, [PRICE_EXTRA_ITTYPE] = "burningblossom:50" },                                  -- Fire Festival Batons
				{ 11,  23083,  "pet128",                                   [PRICE_EXTRA_ITTYPE] = "burningblossom:350" }, -- Captured Flame
				{ 12,  116439, "pet1517",                                  [PRICE_EXTRA_ITTYPE] = "burningblossom:350" }, -- Blazing Cindercrawler
				{ 13,  141714, "pet1949",                                  [PRICE_EXTRA_ITTYPE] = "burningblossom:350" }, -- Igneous Flameling
				{ 15,  23323,  [QUEST_EXTRA_ITTYPE] = 9365 },                                                 -- Crown of the Fire Festival
				{ 16,  74278,  [PRICE_EXTRA_ITTYPE] = "burningblossom:350" },                                 -- Helm of the Fire Festival
				{ 17,  23324,  [PRICE_EXTRA_ITTYPE] = "burningblossom:100" },                                 -- Mantle of the Fire Festival
				{ 18,  34685,  [PRICE_EXTRA_ITTYPE] = "burningblossom:100" },                                 -- Vestment of Summer
				{ 19,  34683,  [PRICE_EXTRA_ITTYPE] = "burningblossom:200" },                                 -- Sandals of Summer
				{ 20,  220785, [PRICE_EXTRA_ITTYPE] = "burningblossom:350" },                                 -- Midsummer Safeguard
				{ 21,  220787, [PRICE_EXTRA_ITTYPE] = "burningblossom:350" },                                 -- Mantle of Midsummer
				{ 22,  242740, [PRICE_EXTRA_ITTYPE] = "burningblossom:350" },                                 -- Grand Helm of the Fire Festival
				{ 23,  242741, [PRICE_EXTRA_ITTYPE] = "burningblossom:350" },                                 -- Grand Mantle of the Fire Festival
				{ 24,  242742, [PRICE_EXTRA_ITTYPE] = "burningblossom:150" },                                 -- Grand Belt of the Fire Festival
				{ 26,  23246,  [PRICE_EXTRA_ITTYPE] = "burningblossom:2" },                                   -- Fiery Festival Brew
				{ 27,  23435,  [PRICE_EXTRA_ITTYPE] = "burningblossom:5",  [ATLASLOOT_IT_AMOUNT1] = 5 },      -- Elderberry Pie
				{ 28,  23327,  [PRICE_EXTRA_ITTYPE] = "burningblossom:5",  [ATLASLOOT_IT_AMOUNT1] = 5 },      -- Fire-Toasted Bun
				{ 29,  23326,  [PRICE_EXTRA_ITTYPE] = "burningblossom:5",  [ATLASLOOT_IT_AMOUNT1] = 5 },      -- Midsummer Sausage
				{ 30,  23211,  [PRICE_EXTRA_ITTYPE] = "burningblossom:5",  [ATLASLOOT_IT_AMOUNT1] = 5 },      -- Toasted Smorc
				{ 101, 34684,  [PRICE_EXTRA_ITTYPE] = "burningblossom:2" },                                   -- Handful of Summer Petals
				{ 102, 23215,  [PRICE_EXTRA_ITTYPE] = "burningblossom:5",  [ATLASLOOT_IT_AMOUNT1] = 5 },      -- Bag of Smorc Ingredients
				{ 103, 34599,  [PRICE_EXTRA_ITTYPE] = "burningblossom:5",  [ATLASLOOT_IT_AMOUNT1] = 5 },      -- Juggling Torch
				{ 105, 122338, [PRICE_EXTRA_ITTYPE] = "burningblossom:350" },                                 -- Ancient Heirloom Armor Casing
				{ 106, 122340, [PRICE_EXTRA_ITTYPE] = "burningblossom:600" },                                 -- Timeworn Heirloom Armor Casing
				{ 107, 151614, [PRICE_EXTRA_ITTYPE] = "burningblossom:600" },                                 -- Weathered Heirloom Armor Casing
				{ 108, 167731, [PRICE_EXTRA_ITTYPE] = "burningblossom:600" },                                 -- Battle-Hardened Heirloom Armor Casing
				{ 109, 187997, [PRICE_EXTRA_ITTYPE] = "burningblossom:600" },                                 -- Eternal Heirloom Armor Casing
				{ 110, 204336, [PRICE_EXTRA_ITTYPE] = "burningblossom:600" },                                 -- Awakened Heirloom Armor Casing
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 15, 23323, [QUEST_EXTRA_ITTYPE] = 9339 }, -- Crown of the Fire Festival
			},
		},
	}
}

data["HarvestFestival"] = {
	name = AL["Harvest Festival"].." ("..ALIL["September"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --HarvestFestival
			name = AL["Harvest Festival"],
			[NORMAL_DIFF] = {
				{ 1,  19995 },                                                                          -- Harvest Boar
				{ 2,  19996 },                                                                          -- Harvest Fish
				{ 3,  19994 },                                                                          -- Harvest Fruit
				{ 4,  19997 },                                                                          -- Harvest Nectar
				{ 16, 19697 },                                                                          -- Bounty of the Harvest
				{ 17, [ATLASLOOT_IT_ALLIANCE] = 20009, [ATLASLOOT_IT_HORDE] = 20010, [QUEST_EXTRA_ITTYPE] = 8149 }, -- For the Light! / The Horde's Hellscream
			},
		},
	}
}

data["Brewfest"] = {
	name = AL["Brewfest"].." ("..ALIL["September"].." - "..ALIL["October"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --BrewfestCorenDirebrew
			name = AL["Coren Direbrew"].." ("..ALIL["Blackrock Depths"]..")",
			[NORMAL_DIFF] = {
				{ 1,  "117361:1800" },                                     -- Bitterest Balebrew Charm
				{ 2,  "117357:1800" },                                     -- Brawler's Statue
				{ 3,  "117391:1800" },                                     -- Bubbliest Brightbrew Charm
				{ 4,  "117360:1800" },                                     -- Coren's Cold Chromium Coaster
				{ 5,  "117358:1800" },                                     -- Mithril Wristwatch
				{ 6,  "117359:1800" },                                     -- Thousand-Year Pickled Egg
				{ 8,  [ATLASLOOT_IT_ALLIANCE] = 38281, [ATLASLOOT_IT_HORDE] = 38280 }, -- Direbrew's Dire Brew
				{ 16, 117393 },                                            -- Keg-Shaped Treasure Chest (Daily reward)
				{ 17, "117378:1800" },                                     -- Direbrew's Bloodied Shanker
				{ 18, "117379:1800" },                                     -- Tremendous Tankard O' Terror
				{ 19, 37828,                           "mount" },          -- Great Brewfest Kodo
				{ 20, 33977,                           "mount" },          -- Swift Brewfest Ram
				{ 21, 37863 },                                             -- Direbrew's Remote
				{ 22, 37829 },                                             -- Brewfest Prize Token
			},
		},
		{ --BrewfestVendor
			name = AL["Vendor"],
			[NORMAL_DIFF] = {
				{ 1,   46707,                           "pet166",                             [PRICE_EXTRA_ITTYPE] = "brewfest:100" }, -- Pint-Sized Pink Pachyderm
				{ 2,   32233,                           "pet153",                             [PRICE_EXTRA_ITTYPE] = "brewfest:200" }, -- Wolpertinger's Tankard
				{ 3,   116756,                          "pet1518",                            [PRICE_EXTRA_ITTYPE] = "brewfest:200" }, -- Stout Alemental
				{ 5,   116758,                          [PRICE_EXTRA_ITTYPE] = "brewfest:100" },                           -- Brewfest Banner
				{ 6,   33927,                           [PRICE_EXTRA_ITTYPE] = "brewfest:100" },                           -- Brewfest Pony Keg
				{ 7,   71137,                           [PRICE_EXTRA_ITTYPE] = "brewfest:200" },                           -- Brewfest Keg Pony
				{ 8,   90427,                           [PRICE_EXTRA_ITTYPE] = "brewfest:100" },                           -- Pandaren Brewpack
				{ 9,   116757,                          [PRICE_EXTRA_ITTYPE] = "brewfest:200" },                           -- Steamworks Sausage Grill
				{ 10,  138900,                          [PRICE_EXTRA_ITTYPE] = "brewfest:100" },                           -- Gravil Goldbraid's Famous Sausage Hat
				{ 12,  37816,                           [PRICE_EXTRA_ITTYPE] = "brewfest:20" },                            -- Preserved Brewfest Hops
				{ 13,  90426,                           [PRICE_EXTRA_ITTYPE] = "brewfest:2" },                             -- Brewhelm
				{ 15,  37750,                           [PRICE_EXTRA_ITTYPE] = "brewfest:2" },                             -- Fresh Brewfest Hops
				{ 15,  [ATLASLOOT_IT_ALLIANCE] = 39477, [ATLASLOOT_IT_HORDE] = 39476,         [PRICE_EXTRA_ITTYPE] = "brewfest:5" }, -- Fresh Dwarven Brewfest Hops / Fresh Goblin Brewfest Hops
				{ 16,  [ATLASLOOT_IT_ALLIANCE] = 33047, [ATLASLOOT_IT_HORDE] = 34008,         [PRICE_EXTRA_ITTYPE] = "brewfest:100" }, -- Belbi's Eyesight Enhancing Romance Goggles / Blix's Eyesight Enhancing Romance Goggles
				{ 17,  138730,                          [PRICE_EXTRA_ITTYPE] = "brewfest:200" },                           -- Synthebrew Goggles XL
				{ 19,  33968,                           [PRICE_EXTRA_ITTYPE] = "brewfest:50" },                            -- Blue Brewfest Hat
				{ 20,  33864,                           [PRICE_EXTRA_ITTYPE] = "brewfest:50" },                            -- Brown Brewfest Hat
				{ 21,  33967,                           [PRICE_EXTRA_ITTYPE] = "brewfest:50" },                            -- Green Brewfest Hat
				{ 22,  33969,                           [PRICE_EXTRA_ITTYPE] = "brewfest:50" },                            -- Purple Brewfest Hat
				{ 24,  33863,                           [PRICE_EXTRA_ITTYPE] = "brewfest:200" },                           -- Brewfest Dress
				{ 25,  33862,                           [PRICE_EXTRA_ITTYPE] = "brewfest:200" },                           -- Brewfest Regalia
				{ 26,  33868,                           [PRICE_EXTRA_ITTYPE] = "brewfest:100" },                           -- Brewfest Boots
				{ 27,  33966,                           [PRICE_EXTRA_ITTYPE] = "brewfest:100" },                           -- Brewfest Slippers
				{ 29,  37599,                           [PRICE_EXTRA_ITTYPE] = "brewfest:200" },                           -- "Brew of the Month" Club Membership Form
				{ 30,  119209,                          [PRICE_EXTRA_ITTYPE] = "brewfest:50" },                            -- Angry Brewfest Letter
				{ 101, 122339,                          [PRICE_EXTRA_ITTYPE] = "brewfest:300" },                           -- Ancient Heirloom Scabbard
				{ 102, 122341,                          [PRICE_EXTRA_ITTYPE] = "brewfest:500" },                           -- Timeworn Heirloom Scabbard
				{ 104, 138884 }                                                                                            --Throwing Sausage
			},
		},
		{ --BrewfestFoodDrinks
			name = AL["Food"].." & "..AL["Drinks"],
			[NORMAL_DIFF] = {
				{ 1,  33030 }, -- Barleybrew Clear
				{ 2,  33028 }, -- Barleybrew Light
				{ 3,  33029 }, -- Barleybrew Dark
				{ 5,  33031 }, -- Thunder 45
				{ 6,  33032 }, -- Thunderbrew Ale
				{ 7,  33033 }, -- Thunderbrew Stout
				{ 9,  33034 }, -- Gordok Grog
				{ 10, 33036 }, -- Mudder's Milk
				{ 11, 33035 }, -- Ogre Mead
				{ 13, 34017 }, -- Small Step Brew
				{ 14, 34018 }, -- Long Stride Brew
				{ 15, 34019 }, -- Path of Brew
				{ 16, 34020 }, -- Jungle River Water
				{ 17, 34021 }, -- Brewdoo Magic
				{ 18, 34022 }, -- Stout Shrunken Head
				{ 20, 33929 }, -- Brewfest Brew
				{ 22, 34063 }, -- Dried Sausage
				{ 23, 33024 }, -- Pickled Sausage
				{ 24, 38428 }, -- Rock-Salted Pretzel
				{ 25, 33023 }, -- Savory Sausage
				{ 26, 34065 }, -- Spiced Onion Cheese
				{ 27, 33025 }, -- Spicy Smoked Sausage
				{ 28, 34064 }, -- Succulent Sausage
				{ 29, 33043 }, -- The Essential Brewfest Pretzel
				{ 30, 33026 }, -- The Golden Link
			},
		},
		{ --BrewfestMonthClub
			name = AL["Brew of the Month Club"],
			[NORMAL_DIFF] = {
				{ 1,  37599, [PRICE_EXTRA_ITTYPE] = "brewfest:200" }, -- "Brew of the Month" Club Membership Form
				{ 3,  37488 },                            -- Wild Winter Pilsner (January)
				{ 4,  37489 },                            -- Izzard's Ever Flavor (February)
				{ 5,  37490 },                            -- Aromatic Honey Brew (March)
				{ 6,  37491 },                            -- Metok's Bubble Bock (April)
				{ 7,  37492 },                            -- Springtime Stout (May)
				{ 8,  37493 },                            -- Blackrock Lager (June)
				{ 18, 37494 },                            -- Stranglethorn Brew (July)
				{ 19, 37495 },                            -- Draenic Pale Ale (August)
				{ 20, 37496 },                            -- Binary Brew (September)
				{ 21, 37497 },                            -- Autumnal Acorn Ale (October)
				{ 22, 37498 },                            -- Bartlett's Bitter Brew (November)
				{ 23, 37499 },                            -- Lord of Frost's Private Label (December)
			},
		},
	}
}

data["HallowsEnd"] = {
	name = AL["Hallow's End"].." ("..ALIL["October"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --Hallows End Headless Horseman
			name = AL["Headless Horseman"].." ("..ALIL["Scarlet Monastery"]..")",
			[NORMAL_DIFF] = {
				{ 1,  "117363:3493" }, -- Band of the Petrified Pumpkin
				{ 2,  "117364:3493" }, -- Seal of Ghoulish Glee
				{ 3,  "117365:3493" }, -- The Horseman's Ring
				{ 4,  "117362:3493" }, -- Wicked Witch's Signet
				{ 6,  34068 },      -- Weighted Jack-o'-Lantern
				{ 16, 54516 },      -- Loot-Filled Pumpkin
				{ 17, "117355:3493" }, -- The Horseman's Horrific Hood
				{ 18, "117356:3493" }, -- The Horseman's Sinister Slicer
				{ 19, 37012,        "mount" }, -- The Horseman's Reins
				{ 20, 33292 },      -- Hallowed Helm
				{ 21, 37011 },      -- Magic Broom
				{ 22, 33154,        "pet162" }, -- Sinister Squashling
				{ 23, 33226 },      -- Tricky Treat
			},
		},
		{ --Hallows End Candy Toys
			name = AL["Candy"].." & "..AL["Toys"],
			[ALLIANCE_DIFF] = {
				-- Pets
				{ 1,   151269,             "pet2002",                               [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Naxxy
				{ 2,   116804,             "pet1523",                               [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Widget the Departed
				{ 3,   116801,             "pet1521",                               [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Cursed Birman
				{ 4,   70908,              "pet319",                                [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Feline Familiar
				{ 5,   33154,              "pet162",                                [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Sinister Squashling
				{ 6,   71076,              "pet321",                                [QUEST_EXTRA_ITTYPE] = 29413 }, -- Creepy Crate

				{ 8,   116811,             [PRICE_EXTRA_ITTYPE] = "trickytreat:5" },                                -- "Lil' Starlet" Costume
				{ 9,   116810,             [PRICE_EXTRA_ITTYPE] = "trickytreat:5" },                                -- "Mad Alchemist" Costume
				{ 10,  116812,             [PRICE_EXTRA_ITTYPE] = "trickytreat:150" },                              -- "Yipp-Saron" Costume

				-- Toys
				{ 12,  163045,             [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Headless Horseman's Hearthstone
				{ 13,  151271,             [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Horse Head Costume
				{ 14,  151270,             [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Horse Tail Costume
				{ 15,  70722,              [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Little Wickerman

				-- Disguises
				{ 16,  151268,             [PRICE_EXTRA_ITTYPE] = "trickytreat:200" }, -- Exquisite Costume Set: "Xavius"
				{ 17,  138990,             [PRICE_EXTRA_ITTYPE] = "trickytreat:200" }, -- Exquisite Costume Set: "Deathwing"
				{ 18,  128643,             [PRICE_EXTRA_ITTYPE] = "trickytreat:200" }, -- Exquisite Costume Set: "Deathwing"
				{ 19,  116828,             [PRICE_EXTRA_ITTYPE] = "trickytreat:200" }, -- Exquisite Costume Set: "The Lich King"

				-- Festive Transmog
				{ 21,  139136, },                                          -- Hat of the Youngest Sister
				{ 22,  139135, },                                          -- Hat of the Third Sister
				{ 23,  139134, },                                          -- Hat of the Second Sister
				{ 24,  139133, },                                          -- Hat of the First Sister
				{ 25,  33292,              [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Hallowed Helm

				-- Mounts
				{ 27,  37011,              [PRICE_EXTRA_ITTYPE] = "trickytreat:150" }, -- Magic Broom

				-- Heirloom Upgrades
				{ 101, 151614,             [PRICE_EXTRA_ITTYPE] = "trickytreat:450" },                 -- Weathered Heirloom Armor Casing
				{ 102, 122340,             [PRICE_EXTRA_ITTYPE] = "trickytreat:450" },                 -- Timeworn Heirloom Armor Casing
				{ 103, 122338,             [PRICE_EXTRA_ITTYPE] = "trickytreat:250" },                 -- Ancient Heirloom Armor Casing
				-- Consumables
				{ 116, 37585,              [PRICE_EXTRA_ITTYPE] = "trickytreat:2",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Chewy Fel Taffy
				{ 117, 37583,              [PRICE_EXTRA_ITTYPE] = "trickytreat:2",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- G.N.E.R.D.S.
				{ 118, 37582,              [PRICE_EXTRA_ITTYPE] = "trickytreat:2",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Pyroblast Cinnamon Ball
				{ 119, 37584,              [PRICE_EXTRA_ITTYPE] = "trickytreat:2",  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Soothing Spearmint Candy
				{ 120, 37604,              [PRICE_EXTRA_ITTYPE] = "trickytreat:2",  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Tooth Pick

				{ 122, "INV_misc_food_25", nil,                                     AL["Special Rewards"],                   nil },
				{ 123, 33117 }, -- Jack-o'-Lantern
				{ 124, 20400 }, -- Pumpkin Bag
				{ 126, 20516 }, -- Bobbing Apple
				{ 127, 34068 }, -- Weighted Jack-o'-Lantern
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 6, 71076, "pet321", [QUEST_EXTRA_ITTYPE] = 29429 }, -- Creepy Crate
			},
		},
		{ --HallowsEndNonPlayableRaceMasks
			name = AL["Non-Playable Race Masks"],
			[NORMAL_DIFF] = {
				{ 1, 69187, [PRICE_EXTRA_ITTYPE] = "trickytreat:5" }, -- Murloc Female Mask
				{ 2, 69188, [PRICE_EXTRA_ITTYPE] = "trickytreat:5" }, -- Murloc Male Mask
				{ 3, 69189, [PRICE_EXTRA_ITTYPE] = "trickytreat:5" }, -- Naga Female Mask
				{ 4, 69190, [PRICE_EXTRA_ITTYPE] = "trickytreat:5" }, -- Naga Male Mask
				{ 5, 69192, [PRICE_EXTRA_ITTYPE] = "trickytreat:5" }, -- Ogre Female Mask
				{ 6, 69193, [PRICE_EXTRA_ITTYPE] = "trickytreat:5" }, -- Ogre Male Mask
				{ 7, 69194, [PRICE_EXTRA_ITTYPE] = "trickytreat:5" }, -- Vrykul Female Mask
				{ 8, 69195, [PRICE_EXTRA_ITTYPE] = "trickytreat:5" }, -- Vrykul Male Mask
			},
		},
		{ --HallowsEndPlayableRaceMasks
			name = AL["Playable Race Masks"],
			[NORMAL_DIFF] = {
				{ 1,  34000, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Blood Elf Female Mask
				{ 2,  34002, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Blood Elf Male Mask
				{ 3,  34001, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Draenei Female Mask
				{ 4,  34003, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Draenei Male Mask
				{ 5,  20562, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Dwarf Female Mask
				{ 6,  20561, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Dwarf Male Mask
				{ 7,  20392, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Gnome Female Mask
				{ 8,  20391, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Gnome Male Mask
				{ 9,  49212, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Goblin Female Mask
				{ 10, 49210, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Goblin Male Mask
				{ 11, 20565, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Human Female Mask
				{ 12, 20566, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Human Male Mask
				{ 16, 20563, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Night Elf Female Mask
				{ 17, 20564, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Night Elf Male Mask
				{ 18, 20569, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Orc Female Mask
				{ 19, 20570, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Orc Male Mask
				{ 20, 20571, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Tauren Female Mask
				{ 21, 20572, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Tauren Male Mask
				{ 22, 20567, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Troll Female Mask
				{ 23, 20568, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Troll Male Mask
				{ 24, 20574, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Undead Female Mask
				{ 25, 20573, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Undead Male Mask
				{ 26, 49215, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Worgen Female Mask
				{ 27, 49216, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Worgen Male Mask
			},
		},
		{ --HallowsEndWands
			name = AL["Wands"],
			[NORMAL_DIFF] = {
				{ 1,  116851, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Abomination
				{ 2,  20410,  [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Bat
				{ 3,  116853, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Geist
				{ 4,  20409,  [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Ghost
				{ 5,  116850, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Ghoul
				{ 6,  20399,  [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Leper Gnome
				{ 7,  20398,  [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Ninja
				{ 8,  128644, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Wight
				{ 9,  128645, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Gargoyle
				{ 16, 20397,  [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Pirate
				{ 17, 20413,  [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Random
				{ 18, 20411,  [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Skeleton
				{ 19, 116848, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Slime
				{ 20, 116854, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Spider
				{ 21, 20414,  [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Wisp
				{ 22, 128646, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Nerubian
				{ 23, 139004, [PRICE_EXTRA_ITTYPE] = "trickytreat:2" }, -- Hallowed Wand - Banshee
			},
		},
	},
}

data["DayoftheDead"] = {
	name = AL["Day of the Dead"].." ("..ALIL["November"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --DayoftheDead
			name = AL["Day of the Dead"],
			[NORMAL_DIFF] = {
				{ 1,  116856, [PRICE_EXTRA_ITTYPE] = "money:1000000" },                  -- "Blooming Rose" Contender's Costume
				{ 2,  116888, [PRICE_EXTRA_ITTYPE] = "money:1000000" },                  -- "Night Demon" Contender's Costume
				{ 3,  116889, [PRICE_EXTRA_ITTYPE] = "money:1000000" },                  -- "Purple Phantom" Contender's Costume
				{ 4,  116890, [PRICE_EXTRA_ITTYPE] = "money:1000000" },                  -- "Santo's Sun" Contender's Costume
				{ 5,  116891, [PRICE_EXTRA_ITTYPE] = "money:1000000" },                  -- "Snowy Owl" Contender's Costume
				{ 7,  46831,  "pet1351",                             [QUEST_EXTRA_ITTYPE] = 14174 }, -- Macabre Marionette
				{ 16, 46718,  [PRICE_EXTRA_ITTYPE] = "money:10" },                       -- Orange Marigold
				{ 17, 46861,  [PRICE_EXTRA_ITTYPE] = "money:10000" },                    -- Bouquet of Orange Marigolds
				{ 19, 46710,  [PRICE_EXTRA_ITTYPE] = "money:2000" },                     -- Recipe: Bread of the Dead (p3 1)
				{ 20, 46691 },                                                           -- Bread of the Dead
				{ 22, 46690,  [PRICE_EXTRA_ITTYPE] = "money:25" },                       -- Candy Skull
				{ 23, 46711,  [PRICE_EXTRA_ITTYPE] = "money:30" },                       -- Spirit Candle
				{ 24, 46860,  [PRICE_EXTRA_ITTYPE] = "money:5" },                        -- Whimsical Skull Mask
			},
		},
	}
}

data["PilgrimsBounty"] = {
	name = AL["Pilgrim's Bounty"].." ("..ALIL["November"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --PilgrimsBounty
			name = AL["Pilgrim's Bounty"],
			[ALLIANCE_DIFF] = {
				{ 1,  44810,  "pet201" },         -- Turkey Cage (ACM 1694)
				{ 3,  46809 },                    -- Bountiful Cookbook
				{ 4,  44860 },                    -- Recipe: Spice Bread Stuffing (p3 1)
				{ 5,  44862 },                    -- Recipe: Pumpkin Pie (p3 100)
				{ 6,  44858 },                    -- Recipe: Cranberry Chutney (p3 160)
				{ 7,  44859 },                    -- Recipe: Candied Sweet Potato (p3 220)
				{ 8,  44861 },                    -- Recipe: Slow-Roasted Turkey (p3 280)
				{ 10, 46888 },                    -- Bountiful Basket (p3 350)
				{ 11, 44855,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Teldrassil Sweet Potato
				{ 12, 44854,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Tangy Wetland Cranberries
				{ 13, 46784,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Ripe Elwynn Pumpkin
				{ 14, 44835,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Autumnal Herbs
				{ 15, 44853,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Honey
				{ 16, 44844,  [QUEST_EXTRA_ITTYPE] = 14035 }, -- Turkey Caller
				{ 18, 46723 },                    -- Pilgrim's Hat (Daily reward)
				{ 19, 46800 },                    -- Pilgrim's Attire (Daily reward)
				{ 20, 44785 },                    -- Pilgrim's Dress (Daily reward)
				{ 21, 46824 },                    -- Pilgrim's Robe (Daily reward)
				{ 22, 44788 },                    -- Pilgrim's Boots (Daily reward)
				{ 23, 44812 },                    -- Turkey Shooter (Daily reward)
				{ 25, 116404 },                   -- Pilgrim's Bounty
				{ 26, 116401 },                   -- Fine Pilgrim's Hat
				{ 27, 116403, "pet1516" },        -- Frightened Bush Chicken
				{ 28, 116400 },                   -- Silver-Plated Turkey Shooter
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 3,  46810 },                   -- Bountiful Cookbook
				{ 4,  46803 },                   -- Recipe: Spice Bread Stuffing (p3 1)
				{ 5,  46804 },                   -- Recipe: Pumpkin Pie (p3 100)
				{ 6,  46805 },                   -- Cranberry Chutney (p3 160)
				{ 7,  46806 },                   -- Recipe: Candied Sweet Potato (p3 220)
				{ 8,  46807 },                   -- Recipe: Slow-Roasted Turkey (p3 280)
				{ 11, 46797, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Mulgore Sweet Potato
				{ 12, 46793, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Tangy Southfury Cranberries
				{ 13, 46796, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Ripe Tirisfal Pumpkin
				{ 16, 44844, [QUEST_EXTRA_ITTYPE] = 14047 }, -- Turkey Caller
			},
		},
	}
}

data["Winterveil"] = {
	name = AL["Feast of Winter Veil"].." ("..ALIL["December"].." - "..ALIL["January"]..")",
	ContentType = SEASONALEVENTS_CONTENT,
	items = {
		{ --WinterveilStolenPresent
			name = ALIL["Stolen Present"],
			[NORMAL_DIFF] = {
				{ 1,  116762,       [QUEST_EXTRA_ITTYPE] = 7043 }, -- Stolen Present
				{ 2,  "117371:1800" },                 -- Miniature Winter Veil Tree
				{ 3,  70923 },                         -- Gaudy Winter Veil Sweater
				{ 5,  54436,        "pet254" },        -- Blue Clockwork Rocket Bot
				{ 6,  34425,        "pet191" },        -- Clockwork Rocket Bot
				{ 7,  73797,        "pet337" },        -- Lump of Coal
				{ 8,  104317,       "pet1349" },       -- Rotten Little Helper
				{ 10, 21215 },                         -- Graccu's Mince Meat Fruitcake
				{ 11, 44481 },                         -- Grindgear Toy Gorilla
				{ 12, 44601 },                         -- Heavy Copper Racer
				{ 13, 34498 },                         -- Paper Zeppelin Kit
				{ 14, 44482 },                         -- Trusty Copper Racer
				{ 15, 44599 },                         -- Zippy Copper Racer
				{ 17, 104318 },                        -- Crashin' Thrashin' Flyer Controller
				{ 18, 46709 },                         -- MiniZep Controller
				{ 19, 44606 },                         -- Toy Train Set
				{ 20, 45057 },                         -- Wind-Up Train Wrecker
				{ 21, 54343 },                         -- Blue Crashin' Thrashin' Racer Controller
				{ 22, 37710 },                         -- Crashin' Thrashin' Racer Controller
				{ 23, 90888 },                         -- Foot Ball
				{ 24, 90883 },                         -- The Pigskin
				{ 25, 54438 },                         -- Tiny Blue Ragdoll
				{ 26, 54437 },                         -- Tiny Green Ragdoll
				{ 27, 46725 },                         -- Red Rider Air Rifle
				{ 28, 116456 },                        -- Scroll of Storytelling
			},
		},
		{ --WinterveilGiftsPresents
			name = AL["Gifts & Presents"],
			[ALLIANCE_DIFF] = {
				{ 1,   21310,                              [QUEST_EXTRA_ITTYPE] = 8768 }, -- Gaily Wrapped Present
				{ 2,   21301,                              "pet119" },         -- Green Helper Box
				{ 3,   21308,                              "pet118" },         -- Jingling Bell
				{ 4,   21305,                              "pet120" },         -- Red Helper Box
				{ 5,   21309,                              "pet117" },         -- Snowman Kit
				{ 7,   21271,                              [QUEST_EXTRA_ITTYPE] = 8788 }, -- Gently Shaken Gift
				{ 8,   116692 },                                               -- Fuzzy Green Lounge Cushion
				{ 9,   116689 },                                               -- Pineapple Lounge Cushion
				{ 10,  116690 },                                               -- Safari Lounge Cushion
				{ 11,  116691 },                                               -- Zhevra Lounge Cushion
				{ 12,  21235 },                                                -- Winter Veil Roast
				{ 13,  21241 },                                                -- Winter Veil Eggnog
				{ 16,  21327,                              [QUEST_EXTRA_ITTYPE] = 8769 }, -- Ticking Present
				{ 17,  17720 },                                                -- Schematic: Snowmaster 9000 (p5 190)
				{ 18,  17706 },                                                -- Plans: Edge of Winter (p2 190)
				{ 19,  17725 },                                                -- Formula: Enchant Weapon - Winter's Might (p4 190)
				{ 20,  17722 },                                                -- Pattern: Gloves of the Greatfather (p7 190)
				{ 21,  17709 },                                                -- Recipe: Elixir of Frost Power (p1 190)
				{ 22,  17724 },                                                -- Pattern: Green Holiday Shirt (p8 190)
				{ 23,  21325 },                                                -- Mechanical Greench
				{ 24,  21213 },                                                -- Preserved Holly
				{ 26,  116761,                             [QUEST_EXTRA_ITTYPE] = 36617 }, -- Winter Veil Gift
				{ 27,  116763 },                                               -- Crashin' Thrashin' Shredder Controller (2014)
				{ 101, 21191,                              [QUEST_EXTRA_ITTYPE] = 8744 }, -- Carefully Wrapped Present
				{ 102, 116451 },                                               -- Warm Blue Woolen Socks
				{ 103, 116450 },                                               -- Warm Green Woolen Socks
				{ 104, 116448 },                                               -- Warm Red Woolen Socks
				{ 105, 21254 },                                                -- Winter Veil Cookie
				{ 107, 21363,                              [QUEST_EXTRA_ITTYPE] = 8803 }, -- Festive Gift
				{ 108, 21328 },                                                -- Wand of Holiday Cheer
				{ 116, 21216,                              [QUEST_EXTRA_ITTYPE] = 7045 }, -- Smokywood Pastures Extra-Special Gift
				{ 117, 21215 },                                                -- Graccu's Mince Meat Fruitcake
				{ 119, "INV_Holiday_Christmas_Present_01", nil,                         AL["Special Rewards"], nil },
				{ 120, 21525 },                                                -- Green Winter Hat
				{ 121, 21524 },                                                -- Red Winter Hat
				{ 122, 17712,                              [QUEST_EXTRA_ITTYPE] = 7045 }, -- Winter Veil Disguise Kit (mailed 24h after quest)
				{ 123, 17202 },                                                -- Snowball
				{ 124, 21215 },                                                -- Handful of Snowflakes
				{ 125, 21212 },                                                -- Fresh Holly
				{ 126, 21519 },                                                -- Mistletoe
			},
			[HORDE_DIFF] = {
				GetItemsFromDiff = ALLIANCE_DIFF,
				{ 116, 21216, [QUEST_EXTRA_ITTYPE] = 6984 }, -- Smokywood Pastures Extra-Special Gift
				{ 122, 17712, [QUEST_EXTRA_ITTYPE] = 6984 }, -- Winter Veil Disguise Kit (mailed 24h after quest)
			},
		},
		{ --WinterveilVendor
			name = AL["Smokywood Pastures Vendor"],
			[NORMAL_DIFF] = {
				{ 1,  70923 }, -- Gaudy Winter Veil Sweater
				{ 3,  34262 }, -- Pattern: Winter Boots (p7 (85)
				{ 4,  34319 }, -- Pattern: Red Winter Clothes (p8 250)
				{ 5,  34261 }, -- Pattern: Green Winter Clothes (p8 250)
				{ 6,  34413 }, -- Recipe: Hot Apple Cider (p3 325)
				{ 7,  17201 }, -- Recipe: Egg Nog (p3 35)
				{ 8,  17200 }, -- Recipe: Gingerbread Cookie (p3 1)
				{ 9,  17194 }, -- Holiday Spices
				{ 11, 17303 }, -- Blue Ribboned Wrapping Paper
				{ 12, 17304 }, -- Green Ribboned Wrapping Paper
				{ 13, 17307 }, -- Purple Ribboned Wrapping Paper
				{ 15, 17202 }, -- Snowball
				{ 16, 17344 }, -- Candy Cane
				{ 17, 17406 }, -- Holiday Cheesewheel
				{ 18, 17407 }, -- Graccu's Homemade Meat Pie
				{ 19, 21215 }, -- Graccu's Mince Meat Fruitcake
				{ 20, 17408 }, -- Spicy Beefstick
				{ 21, 34410 }, -- Honeyed Holiday Ham
				{ 22, 17404 }, -- Blended Bean Brew
				{ 23, 17405 }, -- Green Garden Tea
				{ 24, 34412 }, -- Sparkling Apple Cider
				{ 25, 17196 }, -- Holiday Spirits
				{ 26, 17403 }, -- Steamwheedle Fizzy Spirits
				{ 27, 17402 }, -- Greatfather's Winter Ale
			},
		},
	}
}
