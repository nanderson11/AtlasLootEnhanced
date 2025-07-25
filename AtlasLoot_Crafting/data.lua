local addonname = ...
local AtlasLoot = _G.AtlasLoot
local data = AtlasLoot.ItemDB:Add(addonname)

local AL = AtlasLoot.Locales
local ALIL = AtlasLoot.IngameLocales

local TWW_DIFF = data:AddDifficulty(EXPANSION_NAME10)
local DF_DIFF = data:AddDifficulty(EXPANSION_NAME9)
local SL_DIFF = data:AddDifficulty(EXPANSION_NAME8)
local BFA_DIFF = data:AddDifficulty(EXPANSION_NAME7)
local LEGION_DIFF = data:AddDifficulty(EXPANSION_NAME6)
local WOD_DIFF = data:AddDifficulty(EXPANSION_NAME5)
local MOP_DIFF = data:AddDifficulty(EXPANSION_NAME4)
local CATA_DIFF = data:AddDifficulty(EXPANSION_NAME3)
local WOTLK_DIFF = data:AddDifficulty(EXPANSION_NAME2)
local BC_DIFF = data:AddDifficulty(EXPANSION_NAME1)
local CLASSIC_DIFF = data:AddDifficulty(EXPANSION_NAME0)
local NORMAL_DIFF = data:AddDifficulty(AL["Normal"])

local NORMAL_ITTYPE = data:AddItemTableType("Item", "Item")
local CRAFTING_ITTYPE = data:AddItemTableType("Item", "Profession")
local CRAFTING2_ITTYPE = data:AddItemTableType("Profession", "Item")

local PRICE_EXTRA_ITTYPE = data:AddExtraItemTableType("Price")

local PRIMPROFESSION_CONTENT = data:AddContentType(AL["Primary Professions"], ATLASLOOT_PRIMPROFESSION_COLOR)
local SECPROFESSION_CONTENT = data:AddContentType(AL["Secondary Professions"], ATLASLOOT_SECPROFESSION_COLOR)

local function GetSpellInfo(spellID)
	local temp = C_Spell.GetSpellInfo(spellID)
	return temp.name, nil, temp.iconID
end

data["Alchemy"] = {
	name = C_Spell.GetSpellName(2259),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --AlchemyFlask
			name = AL["Flasks"],
			[TWW_DIFF] = {
				{ 1,  212281, 430605, [ATLASLOOT_IT_AMOUNT1] = 2 },                                  -- Flask of Alchemical Chaos
				{ 2,  212299, 430612, [ATLASLOOT_IT_AMOUNT1] = 2 },                                  -- Flask of Saving Graces
				{ 3,  212269, 430601, [ATLASLOOT_IT_AMOUNT1] = 2 },                                  -- Flask of Tempered Aggression
				{ 4,  212278, 430604, [ATLASLOOT_IT_AMOUNT1] = 2 },                                  -- Flask of Tempered Mastery
				{ 5,  212272, 430602, [ATLASLOOT_IT_AMOUNT1] = 2 },                                  -- Flask of Tempered Swiftness
				{ 6,  212275, 430603, [ATLASLOOT_IT_AMOUNT1] = 2 },                                  -- Flask of Tempered Versatility
				{ 8,  212292, 430608, [ATLASLOOT_IT_AMOUNT1] = 2,         [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Vicious Flask of Honor
				{ 9,  212289, 430607, [PRICE_EXTRA_ITTYPE] = "honor:7500" },                         -- Vicious Flask of Classical Spirits
				{ 10, 212298, 430611, [PRICE_EXTRA_ITTYPE] = "honor:7500" },                         -- Vicious Flask of the Wrecking Ball
				{ 16, 212314, 430617, [ATLASLOOT_IT_AMOUNT1] = 4 },                                  -- Phial of Bountiful Seasons
				{ 17, 212305, 430614, [ATLASLOOT_IT_AMOUNT1] = 4 },                                  -- Phial of Concentrated Ingenuity
				{ 18, 212311, 430616, [ATLASLOOT_IT_AMOUNT1] = 4 },                                  -- Phial of Enhanced Ambidexterity
				{ 19, 212308, 430615, [ATLASLOOT_IT_AMOUNT1] = 4 },                                  -- Phial of Truesight
			},
			[BFA_DIFF] = {
				{ 1,  152639, 252351 }, -- Flask of Endless Fathoms
				{ 2,  152639, 252352 }, -- Flask of Endless Fathoms
				{ 3,  152639, 252353 }, -- Flask of Endless Fathoms
				{ 5,  152640, 252354 }, -- Flask of the Vast Horizon
				{ 6,  152640, 252355 }, -- Flask of the Vast Horizon
				{ 7,  152640, 252356 }, -- Flask of the Vast Horizon
				{ 16, 152641, 252357 }, -- Flask of the Undertow
				{ 17, 152641, 252358 }, -- Flask of the Undertow
				{ 18, 152641, 252359 }, -- Flask of the Undertow
				{ 20, 152638, 252348 }, -- Flask of the Currents
				{ 21, 152638, 252349 }, -- Flask of the Currents
				{ 22, 152638, 252350 }, -- Flask of the Currents
			},
			[LEGION_DIFF] = {
				{ 1,  127851, 188349 }, -- Spirit Cauldron
				{ 2,  127851, 188350 }, -- Spirit Cauldron
				{ 3,  127851, 188351 }, -- Spirit Cauldron
				{ 5,  127847, 188337 }, -- Flask of the Whispered Pact
				{ 6,  127847, 188338 }, -- Flask of the Whispered Pact
				{ 7,  127847, 188339 }, -- Flask of the Whispered Pact
				{ 9,  127848, 188340 }, -- Flask of the Seventh Demon
				{ 10, 127848, 188341 }, -- Flask of the Seventh Demon
				{ 11, 127848, 188342 }, -- Flask of the Seventh Demon
				{ 16, 127849, 188343 }, -- Flask of the Countless Armies
				{ 17, 127849, 188344 }, -- Flask of the Countless Armies
				{ 18, 127849, 188345 }, -- Flask of the Countless Armies
				{ 20, 127850, 188346 }, -- Flask of Ten Thousand Scars
				{ 21, 127850, 188347 }, -- Flask of Ten Thousand Scars
				{ 22, 127850, 188348 }, -- Flask of Ten Thousand Scars
			},
			[WOD_DIFF] = {
				{ 1,  109153, 156569, [PRICE_EXTRA_ITTYPE] = "118700:5", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Greater Draenic Agility Flask (Sold, Ashran)
				{ 2,  109155, 156571, [PRICE_EXTRA_ITTYPE] = "118700:5", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Greater Draenic Intellect Flask (Sold, Ashran)
				{ 3,  109160, 156576, [PRICE_EXTRA_ITTYPE] = "118700:5", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Greater Draenic Stamina Flask (Sold, Ashran)
				{ 4,  109156, 156572, [PRICE_EXTRA_ITTYPE] = "118700:5", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Greater Draenic Strength Flask (Sold, Ashran)
				{ 16, 109145, 156561, [PRICE_EXTRA_ITTYPE] = "118700:1", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Draenic Agility Flask (Sold, Ashran)
				{ 17, 109147, 156563, [PRICE_EXTRA_ITTYPE] = "118700:1", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Draenic Intellect Flask (Sold, Ashran)
				{ 18, 109152, 156568, [PRICE_EXTRA_ITTYPE] = "118700:1", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Draenic Stamina Flask (Sold, Ashran)
				{ 19, 109148, 156564, [PRICE_EXTRA_ITTYPE] = "118700:1", [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Draenic Strength Flask (Sold, Ashran)
			},
			[MOP_DIFF] = {
				{ 1, 76086, 114772 }, -- Flask of Falling Leaves : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 2, 76084, 114769 }, -- Flask of Spring Blossoms : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 3, 76087, 114770 }, -- Flask of the Earth : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 4, 76085, 114771 }, -- Flask of the Warm Sun : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 5, 76088, 114773 }, -- Flask of Winter's Bite : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
			},
			[CATA_DIFF] = {
				{ 1, 58087, 80721 }, -- Flask of the Winds : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 2, 58088, 80723 }, -- Flask of Titanic Strength : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 3, 58086, 80720 }, -- Flask of the Draconic Mind : =ds=#sr# 505 : =ds=AtlasLoot["Trainer"]
				{ 4, 67438, 94162 }, -- Flask of Flowing Water : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 5, 58085, 80719 }, -- Flask of Steelskin : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 46377, 53903, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Endless Rage : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
				{ 2, 46378, 54213, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Pure Mojo : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
				{ 3, 46379, 53902, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Stoneblood : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
				{ 4, 46376, 53901, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of the Frost Wyrm : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
				{ 5, 40079, 53899 },                 -- Lesser Flask of Toughness : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  75525, 114786 },                -- Alchemist's Flask : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 3,  22861, 28590, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Blinding Light : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 4,  22851, 28587, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Fortification : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 5,  22853, 28588, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Mighty Restoration : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 6,  22866, 28591, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Pure Death : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 7,  22854, 28589, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Relentless Assault : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 16, 13511, 17636, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Distilled Wisdom : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Exalted"]
				{ 17, 13512, 17637, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of Supreme Power : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Keepers of Time"] - AtlasLoot["Exalted"]
				{ 18, 13510, 17635, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Flask of the Titans : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Exalted"]
			},
		},
		{ --AlchemyPotions
			name = AL["Potions"],
			[TWW_DIFF] = {
				{ 1,  211878, 430590, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Algari Healing Potion
				{ 2,  212239, 430591, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Algari Mana Potion
				{ 3,  212242, 430592, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Cavedweller's Delight
				{ 4,  212245, 430593, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Slumbering Soul Serum
				{ 6,  212260, 430598, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Frontline Potion
				{ 7,  212254, 430596, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Grotesque Vial
				{ 8,  212266, 430600, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Potion of the Reborn Cheetah
				{ 9,  212257, 430597, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Potion of Unwavering Focus
				{ 10, 212263, 430599, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Tempered Potion
				{ 11, 212251, 430595, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Draught of Shocking Revelations
				{ 12, 212248, 430594, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Draught of Silent Footfalls
			},
			[BFA_DIFF] = {
				{ 1,   163225, 279165 }, -- Battle Potion of Stamina
				{ 2,   163225, 279166 }, -- Battle Potion of Stamina
				{ 3,   163225, 279167 }, -- Battle Potion of Stamina
				{ 5,   163222, 279162 }, -- Battle Potion of Intellect
				{ 6,   163222, 279163 }, -- Battle Potion of Intellect
				{ 7,   163222, 279164 }, -- Battle Potion of Intellect
				{ 9,   163224, 279168 }, -- Battle Potion of Strength
				{ 10,  163224, 279169 }, -- Battle Potion of Strength
				{ 11,  163224, 279170 }, -- Battle Potion of Strength
				{ 13,  163223, 279159 }, -- Battle Potion of Agility
				{ 14,  163223, 279160 }, -- Battle Potion of Agility
				{ 15,  163223, 279161 }, -- Battle Potion of Agility
				{ 16,  152561, 252337 }, -- Potion of Replenishment
				{ 17,  152561, 252339 }, -- Potion of Replenishment
				{ 18,  152561, 252340 }, -- Potion of Replenishment
				{ 20,  152560, 252341 }, -- Potion of Bursting Blood
				{ 21,  152560, 252342 }, -- Potion of Bursting Blood
				{ 22,  152560, 252343 }, -- Potion of Bursting Blood
				{ 24,  152557, 252334 }, -- Steelskin Potion
				{ 25,  152557, 252335 }, -- Steelskin Potion
				{ 26,  152557, 252336 }, -- Steelskin Potion
				{ 28,  152559, 252344 }, -- Potion of Rising Death
				{ 29,  152559, 252345 }, -- Potion of Rising Death
				{ 30,  152559, 252346 }, -- Potion of Rising Death
				{ 101, 152550, 252397 }, -- Sea Mist Potion
				{ 102, 152550, 252398 }, -- Sea Mist Potion
				{ 103, 152550, 252399 }, -- Sea Mist Potion
				{ 105, 152503, 252400 }, -- Potion of Concealment
				{ 106, 152503, 252401 }, -- Potion of Concealment
				{ 107, 152503, 252402 }, -- Potion of Concealment
				{ 109, 163082, 252388 }, -- Coastal Rejuvenation Potion
				{ 110, 163082, 252389 }, -- Coastal Rejuvenation Potion
				{ 111, 163082, 252390 }, -- Coastal Rejuvenation Potion
				{ 113, 152494, 252382 }, -- Coastal Healing Potion
				{ 114, 152494, 252383 }, -- Coastal Healing Potion
				{ 115, 152494, 252384 }, -- Coastal Healing Potion
				{ 116, 152496, 252391 }, -- Demitri's Draught of Deception
				{ 117, 152496, 252392 }, -- Demitri's Draught of Deception
				{ 118, 152496, 252393 }, -- Demitri's Draught of Deception
				{ 120, 152497, 252394 }, -- Lightfoot Potion
				{ 121, 152497, 252395 }, -- Lightfoot Potion
				{ 122, 152497, 252396 }, -- Lightfoot Potion
				{ 128, 152495, 252385 }, -- Coastal Mana Potion
				{ 129, 152495, 252386 }, -- Coastal Mana Potion
				{ 130, 152495, 252387 }, -- Coastal Mana Potion
			},
			[LEGION_DIFF] = {
				-- { #, itemID, spellID },
				{ 1,   127834, 188297 }, -- Ancient Healing Potion
				{ 2,   127834, 188299 }, -- Ancient Healing Potion
				{ 3,   127834, 188300 }, -- Ancient Healing Potion
				{ 5,   127835, 188301 }, -- Ancient Mana Potion
				{ 6,   127835, 188302 }, -- Ancient Mana Potion
				{ 7,   127835, 188303 }, -- Ancient Mana Potion
				{ 9,   127836, 188304 }, -- Ancient Rejuvenation Potion
				{ 10,  127836, 188305 }, -- Ancient Rejuvenation Potion
				{ 11,  127836, 188306 }, -- Ancient Rejuvenation Potion
				{ 13,  127837, 188307 }, -- Draught of Raw Magic
				{ 14,  127837, 188308 }, -- Draught of Raw Magic
				{ 15,  127837, 188309 }, -- Draught of Raw Magic
				{ 16,  127843, 188325 }, -- Potion of Deadly Grace
				{ 17,  127843, 188326 }, -- Potion of Deadly Grace
				{ 18,  127843, 188327 }, -- Potion of Deadly Grace
				{ 20,  127844, 188328 }, -- Potion of the Old War
				{ 21,  127844, 188329 }, -- Potion of the Old War
				{ 22,  127844, 188330 }, -- Potion of the Old War
				{ 24,  127845, 188331 }, -- Unbending Potion
				{ 25,  127845, 188332 }, -- Unbending Potion
				{ 26,  127845, 188333 }, -- Unbending Potion
				{ 28,  127846, 188334 }, -- Leytorrent Potion
				{ 29,  127846, 188335 }, -- Leytorrent Potion
				{ 30,  127846, 188336 }, -- Leytorrent Potion
				{ 101, 127840, 188316 }, -- Skaggldrynk
				{ 102, 127840, 188317 }, -- Skaggldrynk
				{ 103, 127840, 188318 }, -- Skaggldrynk
				{ 105, 127841, 188319 }, -- Skystep Potion
				{ 106, 127841, 188320 }, -- Skystep Potion
				{ 107, 127841, 188321 }, -- Skystep Potion
				-- 7.3.0
				{ 109, 151608, 247619 }, -- Lightblood Elixir
				{ 110, 151608, 247620 }, -- Lightblood Elixir
				{ 111, 151608, 247622 }, -- Lightblood Elixir
				{ 113, 151609, 247688 }, -- Tears of the Naaru
				{ 114, 151609, 247690 }, -- Tears of the Naaru
				{ 115, 151609, 247691 }, -- Tears of the Naaru
				{ 116, 152615, 251646 }, -- Astral Healing Potion
				{ 117, 152615, 251651 }, -- Astral Healing Potion
				{ 118, 152615, 251658 }, -- Astral Healing Potion
			},
			[WOD_DIFF] = {
				{ 1,  109222, 156582 },                           -- Draenic Mana Potion (Learnt by item 109558)
				{ 2,  116268, 175865 },                           -- Draenic Invisibility Potion (Learnt by item 109558)
				{ 3,  116276, 175867 },                           -- Draenic Living Action Potion (Learnt by item 109558)
				{ 4,  109226, 156584, [PRICE_EXTRA_ITTYPE] = "118700:1" }, -- Draenic Rejuvenation Potion (Sold, Ashran)
				{ 5,  116266, 175853 },                           -- Draenic Swiftness Potion (Learnt by item 109558)
				{ 6,  118704, 175868 },                           -- Pure Rage Potion (Learnt by item 109558)
				{ 16, 109217, 156577, [PRICE_EXTRA_ITTYPE] = "money:90000" }, -- Draenic Agility Potion (Sold, Ashran)
				{ 17, 109220, 156580, [PRICE_EXTRA_ITTYPE] = "money:90000" }, -- Draenic Armor Potion (Sold, Ashran)
				{ 18, 109221, 156581, [PRICE_EXTRA_ITTYPE] = "money:90000" }, -- Draenic Channeled Mana Potion (Sold, Ashran)
				{ 19, 109218, 156578, [PRICE_EXTRA_ITTYPE] = "money:90000" }, -- Draenic Intellect Potion (Sold, Ashran)
				{ 20, 109219, 156579, [PRICE_EXTRA_ITTYPE] = "money:90000" }, -- Draenic Strength Potion (Sold, Ashran)
			},
			[MOP_DIFF] = {
				{ 1,  76098, 114775, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Master Mana Potion : =ds=#sr# 575 : =ds=AtlasLoot["Discovery"]
				{ 2,  76094, 114751 },                 -- Alchemist's Rejuvenation : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 3,  76097, 114752 },                 -- Master Healing Potion : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 4,  76092, 114782 },                 -- Potion of Focus : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]
				{ 6,  76091, 114779 },                 -- Potion of Luck : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]
				{ 7,  76096, 114774 },                 -- Darkwater Potion : =ds=#sr# 575 : =ds=AtlasLoot["Discovery"]
				{ 16, 76095, 114760 },                 -- Potion of Mogu Power : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 17, 76089, 114765 },                 -- Virmen's Bite : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 18, 76093, 114757 },                 -- Potion of the Jade Serpent : =ds=#sr# 525 : =ds=AtlasLoot["Discovery"]
				{ 19, 76090, 114753 },                 -- Potion of the Mountains : =ds=#sr# 525 : =ds=AtlasLoot["Discovery"]
			},
			[CATA_DIFF] = {
				{ 1,  57191, 80498 },                     -- Mythical Healing Potion : =ds=#sr# 495 : =ds=AtlasLoot["Trainer"]
				{ 2,  57192, 80494 },                     -- Mythical Mana Potion : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 3,  57193, 80490 },                     -- Mighty Rejuvenation Potion : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 4,  57099, 80487 },                     -- Mysterious Potion : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 5,  57194, 80482 },                     -- Potion of Concentration : =ds=#sr# 465 : =ds=AtlasLoot["Trainer"]
				{ 6,  67415, 93935 },                     -- Draught of War : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 8,  58487, 80725 },                     -- Potion of Deepholm : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 9,  58488, 80726 },                     -- Potion of Treasure Finding : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 10, 58489, 80269, [ATLASLOOT_IT_AMOUNT1] = "1-2" }, -- Potion of Illusion : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 16, 58146, 80496 },                     -- Golemblood Potion : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 17, 58145, 80495 },                     -- Potion of the Tol'vir : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 18, 58091, 80481 },                     -- Volcanic Potion : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 19, 58090, 80478 },                     -- Earthen Potion : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  43569, 58871 }, -- Endless Healing Potion : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 2,  43570, 58868 }, -- Endless Mana Potion : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 3,  33447, 53836 }, -- Runic Healing Potion : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 4,  33448, 53837 }, -- Runic Mana Potion : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 5,  40077, 53895 }, -- Crazy Alchemist's Potion : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 6,  40087, 53904 }, -- Powerful Rejuvenation Potion : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 7,  40081, 53900 }, -- Potion of Nightmares : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
				{ 8,  40067, 53839 }, -- Icy Mana Potion : =ds=#sr# 360 : =ds=AtlasLoot["Trainer"]
				{ 9,  39671, 53838 }, -- Resurgent Healing Potion : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 16, 40211, 54221 }, -- Potion of Speed : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 17, 40212, 54222 }, -- Potion of Wild Magic : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 18, 40093, 53905 }, -- Indestructible Potion : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 20, 40213, 53936 }, -- Mighty Arcane Protection Potion : =ds=#sr# 400 : =ds=AtlasLoot_IngameLocales["Icecrown"]
				{ 21, 40214, 53939 }, -- Mighty Fire Protection Potion : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 22, 40215, 53937 }, -- Mighty Frost Protection Potion : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 23, 40216, 53942 }, -- Mighty Nature Protection Potion : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 24, 40217, 53938 }, -- Mighty Shadow Protection Potion : =ds=#sr# 400 : =ds=AtlasLoot_IngameLocales["Icecrown"]
			},
			[BC_DIFF] = {
				{ 1,  22850, 28586 },                 -- Super Rejuvenation Potion : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 2,  31677, 38961 },                 -- Fel Mana Potion : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Shadowmoon Valley"]
				{ 3,  22836, 28562 },                 -- Major Dreamless Sleep Potion : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]
				{ 4,  31676, 38962 },                 -- Fel Regeneration Potion : =ds=#sr# 345 : =ds=AtlasLoot_IngameLocales["Shadowmoon Valley"]
				{ 5,  22832, 28555 },                 -- Super Mana Potion : =ds=#sr# 340 : =ds=AtlasLoot["Vendor"]
				{ 6,  34440, 45061 },                 -- Mad Alchemist's Potion : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 7,  22829, 28551 },                 -- Super Healing Potion : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 8,  28101, 33733 },                 -- Unstable Mana Potion : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 9,  28100, 33732 },                 -- Volatile Healing Potion : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 11, 22871, 28554 },                 -- Shrouding Potion : =ds=#sr# 335 : =ds=AtlasLoot_IngameLocales["Sporeggar"] - AtlasLoot["Exalted"]
				{ 12, 22826, 28546 },                 -- Sneaking Potion : =ds=#sr# 315 : =ds=AtlasLoot["Vendor"]
				{ 16, 22849, 28579 },                 -- Ironshield Potion : =ds=#sr# 365 : =ds=Captain Skarloc539: AtlasLoot_IngameLocales["Old Hillsbrad Foothills"]
				{ 17, 22839, 28565 },                 -- Destruction Potion : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 18, 22838, 28564 },                 -- Haste Potion : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 19, 22837, 28563 },                 -- Heroic Potion : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 20, 22828, 28550 },                 -- Insane Strength Potion : =ds=#sr# 320 : =ds=AtlasLoot["World Drop"]
				{ 22, 22845, 28575, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Major Arcane Protection Potion : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Nagrand"]
				{ 23, 22841, 28571, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Major Fire Protection Potion : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Mechanar"]
				{ 24, 22842, 28572, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Major Frost Protection Potion : =ds=#sr# 360 : =ds=Nexus-Prince Shaffar537: AtlasLoot_IngameLocales["Mana-Tombs"]
				{ 25, 22847, 28577, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Major Holy Protection Potion : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Blade's Edge Mountains"]
				{ 26, 22844, 28573, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Major Nature Protection Potion : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Exalted"]
				{ 27, 22846, 28576, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Major Shadow Protection Potion : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Shadowmoon Valley"]
			},
			[CLASSIC_DIFF] = {
				{ 1,   18253, 22732 }, -- Major Rejuvenation Potion : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Molten Core"]
				{ 2,   13444, 17580 }, -- Major Mana Potion : =ds=#sr# 295 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Western Plaguelands"]
				{ 3,   20002, 24366 }, -- Greater Dreamless Sleep Potion : =ds=#sr# 275 : =ds=AtlasLoot["No Longer Available"]
				{ 4,   13446, 17556 }, -- Major Healing Potion : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 5,   13443, 17553 }, -- Superior Mana Potion : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 6,   12190, 15833 }, -- Dreamless Sleep Potion : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 7,   9144,  11458 }, -- Wildvine Potion : =ds=#sr# 225 : =ds=AtlasLoot_IngameLocales["The Hinterlands"]/AtlasLoot_IngameLocales["Stranglethorn Vale"]
				{ 8,   3928,  11457 }, -- Superior Healing Potion : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 9,   6149,  11448 }, -- Greater Mana Potion : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 10,  3827,  3452 }, -- Mana Potion : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 11,  1710,  7181 }, -- Greater Healing Potion : =ds=#sr# 155 : =ds=AtlasLoot["Trainer"]
				{ 12,  3385,  3173 }, -- Lesser Mana Potion : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 13,  929,   3447 }, -- Healing Potion : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 14,  4596,  4508 }, -- Discolored Healing Potion : =ds=#sr# 90 : =ds=AtlasLoot["No Longer Available"]
				{ 15,  2456,  2332 }, -- Minor Rejuvenation Potion : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
				{ 16,  858,   2337 }, -- Lesser Healing Potion : =ds=#sr# 55 : =ds=AtlasLoot["Trainer"]
				{ 17,  2455,  2331 }, -- Minor Mana Potion : =ds=#sr# 25 : =ds=AtlasLoot["Trainer"]
				{ 18,  118,   2330 }, -- Minor Healing Potion : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 20,  13455, 17570 }, -- Greater Stoneshield Potion : =ds=#sr# 280 : =ds=AtlasLoot["World Drop"]
				{ 21,  13442, 17552 }, -- Mighty Rage Potion : =ds=#sr# 255 : =ds=AtlasLoot["Trainer"]
				{ 22,  3387,  3175 }, -- Limited Invulnerability Potion : =ds=#sr# 250 : =ds=AtlasLoot["World Drop"]
				{ 23,  4623,  4942 }, -- Lesser Stoneshield Potion : =ds=#sr# 215 : =ds=LibBabble-Inventory-3.0["Quest"]: AtlasLoot_IngameLocales["Badlands"]
				{ 25,  13461, 17577 }, -- Greater Arcane Protection Potion : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Winterspring"]
				{ 26,  13457, 17574 }, -- Greater Fire Protection Potion : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Blackrock Spire"]
				{ 27,  13456, 17575 }, -- Greater Frost Protection Potion : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Winterspring"]
				{ 28,  13458, 17576 }, -- Greater Nature Protection Potion : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Western Plaguelands"]
				{ 29,  13459, 17578 }, -- Greater Shadow Protection Potion : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Eastern Plaguelands"]
				{ 101, 20008, 24367 }, -- Living Action Potion : =ds=#sr# 285 : =ds=AtlasLoot["No Longer Available"]
				{ 102, 13462, 17572 }, -- Purification Potion : =ds=#sr# 285 : =ds=AtlasLoot["World Drop"]
				{ 103, 9172,  11464 }, -- Invisibility Potion : =ds=#sr# 235 : =ds=AtlasLoot["World Drop"]
				{ 104, 9030,  11452 }, -- Restorative Potion : =ds=#sr# 210 : =ds=LibBabble-Inventory-3.0["Quest"]: AtlasLoot_IngameLocales["Badlands"]
				{ 105, 6050,  7258 }, -- Frost Protection Potion : =ds=#sr# 190 : =ds=AtlasLoot["Vendor"]
				{ 106, 6052,  7259 }, -- Nature Protection Potion : =ds=#sr# 190 : =ds=AtlasLoot["Vendor"]
				{ 107, 5633,  6618 }, -- Great Rage Potion : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 108, 3823,  3448 }, -- Lesser Invisibility Potion : =ds=#sr# 165 : =ds=AtlasLoot["Trainer"]
				{ 109, 6049,  7257 }, -- Fire Protection Potion : =ds=#sr# 165 : =ds=AtlasLoot["Vendor"]
				{ 110, 5634,  6624 }, -- Free Action Potion : =ds=#sr# 150 : =ds=AtlasLoot["Vendor"]
				{ 111, 6048,  7256 }, -- Shadow Protection Potion : =ds=#sr# 135 : =ds=AtlasLoot["Vendor"]
				{ 112, 3386,  3174 }, -- Potion of Curing : =ds=#sr# 120 : =ds=AtlasLoot["World Drop"]
				{ 113, 6051,  7255 }, -- Holy Protection Potion : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]
				{ 114, 6372,  7841 }, -- Swim Speed Potion : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 115, 5631,  6617 }, -- Rage Potion : =ds=#sr# 60 : =ds=AtlasLoot["Vendor"]
				{ 116, 2459,  2335 }, -- Swiftness Potion : =ds=#sr# 60 : =ds=AtlasLoot["World Drop"]
			},
		},
		{ --AlchemyMisc
			name = AL["Miscellaneous"],
			[TWW_DIFF] = {
				{ 1, 210816, 427185, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Algari Alchemist Stone
				{ 3, 212719, 432962 },                          -- Algari Flask Cauldron
				{ 4, 212751, 432963 },                          -- Algari Potion Cauldron
				{ 6, 212781, 433087 },                          -- Formulated Courage
				{ 7, 212563, 432204 },                          -- Harmonious Horticulture
				{ 8, 228404, 462122 },                          -- Petal Powder
				{ 9, 228401, 462121 },                          -- Bubbling Mycobloom Culture
			},
			[BFA_DIFF] = {
				{ 1,  162519, 276975 }, -- Mystical Cauldron
				{ 2,  162519, 276976 }, -- Mystical Cauldron
				{ 3,  162519, 276977 }, -- Mystical Cauldron
				{ 5,  152637, 252368 }, -- Siren's Alchemist Stone
				{ 6,  152637, 252369 }, -- Siren's Alchemist Stone
				{ 7,  152637, 252370 }, -- Siren's Alchemist Stone
				{ 9,  152634, 252361 }, -- Endless Tincture of Renewed Combat
				{ 10, 152634, 252362 }, -- Endless Tincture of Renewed Combat
				{ 11, 152634, 252363 }, -- Endless Tincture of Renewed Combat
				{ 16, 162113, 278420 }, -- Potion of Herb Tracking
				{ 20, 152632, 252379 }, -- Surging Alchemist Stone
				{ 21, 152632, 252380 }, -- Surging Alchemist Stone
				{ 22, 152632, 252381 }, -- Surging Alchemist Stone
				{ 24, 152636, 252376 }, -- Endless Tincture of Fractional Power
				{ 25, 152636, 252377 }, -- Endless Tincture of Fractional Power
				{ 26, 152636, 252378 }, -- Endless Tincture of Fractional Power
			},
			[LEGION_DIFF] = {
				{ 1, 127842, 188322 }, -- Infernal Alchemist Stone
				{ 2, 127842, 188323 }, -- Infernal Alchemist Stone
				{ 3, 127842, 188324 }, -- Infernal Alchemist Stone
				{ 5, 151607, 247694 }, -- Astral Alchemist Stone
				{ 6, 151607, 247695 }, -- Astral Alchemist Stone
				{ 7, 151607, 247696 }, -- Astral Alchemist Stone
			},
			[WOD_DIFF] = {
				{ 1,  109262, 156560, [PRICE_EXTRA_ITTYPE] = "118700:1" }, -- Draenic Philosopher's Stone (Sold, Ashran)
				{ 3,  108996, 156587, [ATLASLOOT_IT_AMOUNT1] = "8+" }, -- Alchemical Catalyst (Learnt by item 109558)
				{ 5,  118700, 175880 },                        -- Secrets of Draenor Alchemy (Learnt by item 109558)
				{ 7,  109123, 156585 },                        -- Crescent Oil (Learnt by item 109558)
				{ 16, 128024, 188676 },                        -- Stone of the Elements
				{ 17, 128023, 188674 },                        -- Stone of the Wilds
				{ 18, 122604, 181650 },                        -- Stone of Fire
				{ 19, 122603, 181649 },                        -- Stone of the Waters
				{ 20, 122602, 181648 },                        -- Stone of the Earth
				{ 21, 122601, 181647 },                        -- Stone of Wind
			},
			[MOP_DIFF] = {
				{ 1, 75274, 136197 },                 -- Zen Alchemist Stone : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 3, 87872, 114761, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Desecrated Oil : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
			},
			[CATA_DIFF] = {
				{ 1,  58483, 80508 },                     -- Lifebound Alchemist Stone : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 2,  68775, 96252 },                     -- Volatile Alchemist Stone : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 3,  68776, 96253 },                     -- Quicksilver Alchemist Stone : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 4,  68777, 96254 },                     -- Vibrant Alchemist Stone : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 6,  56850, 80486, [ATLASLOOT_IT_AMOUNT1] = "1-2" }, -- Deepstone Oil : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 16, 65460, 92688 },                     -- Big Cauldron of Battle : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Guild"] - AtlasLoot["Friendly"]
				{ 17, 62288, 92643 },                     -- Cauldron of Battle : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Guild"] - AtlasLoot["Friendly"]
			},
			[WOTLK_DIFF] = {
				{ 1, 44323, 60403 },                     -- Indestructible Alchemist Stone : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 2, 44322, 60396 },                     -- Mercurial Alchemist Stone : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 3, 44324, 60405 },                     -- Mighty Alchemist Stone : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 5, 44958, 62409 },                     -- Ethereal Oil : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 6, 40195, 53812, [ATLASLOOT_IT_AMOUNT1] = "1-2" }, -- Pygmy Oil : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  35751, 47050 }, -- Assassin's Alchemist Stone : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 2,  35748, 47046 }, -- Guardian's Alchemist Stone : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 3,  35750, 47049 }, -- Redeemer's Alchemist Stone : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 4,  35749, 47048 }, -- Sorcerer's Alchemist Stone : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 5,  13503, 17632 }, -- Alchemist's Stone : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Revered"]
				{ 6,  31080, 38070 }, -- Mercurial Stone : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 16, 32839, 41458 }, -- Cauldron of Major Arcane Protection Potion : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 17, 32849, 41500 }, -- Cauldron of Major Fire Protection Potion : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 18, 32850, 41501 }, -- Cauldron of Major Frost Protection Potion : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 19, 32851, 41502 }, -- Cauldron of Major Nature Protection Potion : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 20, 32852, 41503 }, -- Cauldron of Major Shadow Protection Potion : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  19931, 24266, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Gurubashi Mojo Madness : =ds=#sr# 300 : =ds=AtlasLoot["No Longer Available"]
				{ 2,  9149,  11459 },                 -- Philosopher's Stone : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 4,  13423, 17551 },                 -- Stonescale Oil : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 5,  9210,  11473 },                 -- Ghost Dye : =ds=#sr# 245 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Feralas"]
				{ 6,  9061,  11456 },                 -- Goblin Rocket Fuel : =ds=#sr# 210 : =ds=AtlasLoot["Crafted"]: spell4036
				{ 7,  6371,  7837 },                  -- Fire Oil : =ds=#sr# 130 : =ds=AtlasLoot["Trainer"]
				{ 8,  6370,  7836 },                  -- Blackmouth Oil : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 16, 8956,  11451 },                 -- Oil of Immolation : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 17, 3829,  3454 },                  -- Frost Oil : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Hillsbrad Foothills"]
				{ 18, 3824,  3449 },                  -- Shadow Oil : =ds=#sr# 165 : =ds=AtlasLoot["Vendor"]
			},
		},
		{ --AlchemyElixirs
			name = AL["Elixirs"],
			[LEGION_DIFF] = {
				{ 1, 127838, 188310 }, -- Sylvan Elixir
				{ 2, 127838, 188311 }, -- Sylvan Elixir
				{ 3, 127838, 188312 }, -- Sylvan Elixir
				{ 5, 127839, 188313 }, -- Avalanche Elixir
				{ 6, 127839, 188314 }, -- Avalanche Elixir
				{ 7, 127839, 188315 }, -- Avalanche Elixir
			},
			[WOD_DIFF] = {
				{ 1, 112090, 162403, [PRICE_EXTRA_ITTYPE] = "118700:1", [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Transmorphic Tincture (Sold, Ashran)
				{ 3, 116271, 175866 },                                                    -- Draenic Water Breathing Elixir (Learnt by item 109558)
				{ 4, 118711, 175869 },                                                    -- Draenic Water Walking Elixir (Learnt by item 109558)
			},
			[MOP_DIFF] = {
				{ 1,  76079, 114764 }, -- Elixir of Peace : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 2,  76080, 114762 }, -- Elixir of Perfection : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 3,  76078, 114759 }, -- Elixir of the Rapids : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 4,  76077, 114756 }, -- Elixir of Weaponry : =ds=#sr# 525 : =ds=AtlasLoot["Discovery"]
				{ 5,  76076, 114754 }, -- Mad Hozen Elixir : =ds=#sr# 525 : =ds=AtlasLoot["Discovery"]
				{ 6,  76083, 114758 }, -- Monk's Elixir : =ds=#sr# 525 : =ds=AtlasLoot["Discovery"]
				{ 16, 76081, 114763 }, -- Elixir of Mirrors : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 17, 76075, 114755 }, -- Mantid Elixir : =ds=#sr# 525 : =ds=AtlasLoot["Discovery"]
			},
			[CATA_DIFF] = {
				{ 1,  58148, 80497 }, -- Elixir of the Master : =ds=#sr# 495 : =ds=AtlasLoot["Trainer"]
				{ 2,  58144, 80493 }, -- Elixir of Mighty Speed : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 3,  58094, 80491 }, -- Elixir of Impossible Accuracy : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 4,  58092, 80484 }, -- Elixir of the Cobra : =ds=#sr# 465 : =ds=AtlasLoot["Trainer"]
				{ 5,  58089, 80480 }, -- Elixir of the Naga : =ds=#sr# 455 : =ds=AtlasLoot["Trainer"]
				{ 6,  58084, 80477 }, -- Ghost Elixir : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 16, 58143, 80492 }, -- Prismatic Elixir : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 17, 58093, 80488 }, -- Elixir of Deep Earth : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  44325, 60354 }, -- Elixir of Accuracy : =ds=#sr# 400 : =ds=spell60893
				{ 2,  44330, 60365 }, -- Elixir of Armor Piercing : =ds=#sr# 400 : =ds=spell60893
				{ 3,  44327, 60355 }, -- Elixir of Deadly Strikes : =ds=#sr# 400 : =ds=spell60893
				{ 4,  44329, 60357 }, -- Elixir of Expertise : =ds=#sr# 400 : =ds=spell60893
				{ 5,  44331, 60366 }, -- Elixir of Lightning Speed : =ds=#sr# 400 : =ds=spell60893
				{ 6,  40109, 56519 }, -- Elixir of Mighty Mageblood : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 7,  39666, 53840 }, -- Elixir of Mighty Agility : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 8,  40073, 54218 }, -- Elixir of Mighty Strength : =ds=#sr# 385 : =ds=AtlasLoot["Trainer"]
				{ 9,  40072, 53847 }, -- Elixir of Spirit : =ds=#sr# 385 : =ds=AtlasLoot["Trainer"]
				{ 10, 40076, 53848 }, -- Guru's Elixir : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 11, 40070, 53842 }, -- Spellpower Elixir : =ds=#sr# 365 : =ds=AtlasLoot["Trainer"]
				{ 12, 40068, 53841 }, -- Wrath Elixir : =ds=#sr# 355 : =ds=AtlasLoot["Trainer"]
				{ 16, 44328, 60356 }, -- Elixir of Mighty Defense : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 17, 40097, 54220 }, -- Elixir of Protection : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 18, 8827,  62410 }, -- Elixir of Water Walking : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 19, 44332, 60367 }, -- Elixir of Mighty Thoughts : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 20, 40078, 53898 }, -- Elixir of Mighty Fortitude : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  22848, 28578 }, -- Elixir of Empowerment : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
				{ 2,  22840, 28570 }, -- Elixir of Major Mageblood : =ds=#sr# 355 : =ds=AtlasLoot["World Drop"]
				{ 3,  22835, 28558 }, -- Elixir of Major Shadow Power : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Lower City"] - AtlasLoot["Revered"]
				{ 4,  22833, 28556 }, -- Elixir of Major Firepower : =ds=#sr# 345 : =ds=AtlasLoot_IngameLocales["The Scryers"] - AtlasLoot["Revered"]
				{ 5,  31679, 38960 }, -- Fel Strength Elixir : =ds=#sr# 335 : =ds=AtlasLoot_IngameLocales["Shadowmoon Valley"]
				{ 6,  22831, 28553 }, -- Elixir of Major Agility : =ds=#sr# 330 : =ds=AtlasLoot_IngameLocales["Honor Hold"] / Thrallmar - AtlasLoot["Honored"]
				{ 7,  32067, 39638 }, -- Elixir of Draenic Wisdom : =ds=#sr# 320 : =ds=AtlasLoot["Trainer"]
				{ 8,  22827, 28549 }, -- Elixir of Major Frost Power : =ds=#sr# 320 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Zangarmarsh"]
				{ 9,  28104, 33741 }, -- Elixir of Mastery : =ds=#sr# 315 : =ds=AtlasLoot["Trainer"]
				{ 10, 22825, 28545 }, -- Elixir of Healing Power : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 11, 22824, 28544 }, -- Elixir of Major Strength : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 12, 28103, 33740 }, -- Adept's Elixir : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 13, 28102, 33738 }, -- Onslaught Elixir : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 16, 22834, 28557 }, -- Elixir of Major Defense : =ds=#sr# 345 : =ds=AtlasLoot["Vendor"]
				{ 17, 32068, 39639 }, -- Elixir of Ironskin : =ds=#sr# 330 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Nagrand"]
				{ 18, 32063, 39637 }, -- Earthen Elixir : =ds=#sr# 320 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Honored"]
				{ 19, 32062, 39636 }, -- Elixir of Major Fortitude : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 21, 22830, 28552 }, -- Elixir of the Searching Eye : =ds=#sr# 325 : =ds=AtlasLoot["World Drop"]
				{ 22, 22823, 28543 }, -- Elixir of Camouflage : =ds=#sr# 305 : =ds=AtlasLoot["Vendor"]
			},
			[CLASSIC_DIFF] = {
				{ 1,   21546, 26277 }, -- Elixir of Greater Firepower : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Searing Gorge"]
				{ 2,   13454, 17573 }, -- Greater Arcane Elixir : =ds=#sr# 285 : =ds=AtlasLoot["Trainer"]
				{ 3,   9155,  11461 }, -- Arcane Elixir : =ds=#sr# 285 : =ds=AtlasLoot["Trainer"]
				{ 4,   13452, 17571 }, -- Elixir of the Mongoose : =ds=#sr# 280 : =ds=AtlasLoot_IngameLocales["Felwood"]
				{ 5,   13453, 17557 }, -- Elixir of Brute Force : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 6,   20007, 24365 }, -- Mageblood Elixir : =ds=#sr# 275 : =ds=AtlasLoot["No Longer Available"]
				{ 7,   13447, 17555 }, -- Elixir of the Sages : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 8,   9224,  11477 }, -- Elixir of Demonslaying : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]
				{ 9,   9264,  11476 }, -- Elixir of Shadow Power : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"] ALIL["Stormwind City"] / ALIL["Undercity"]
				{ 10,  9206,  11472 }, -- Elixir of Giants : =ds=#sr# 245 : =ds=AtlasLoot["World Drop"]
				{ 11,  9187,  11467 }, -- Elixir of Greater Agility : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 12,  9179,  11465 }, -- Elixir of Greater Intellect : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 13,  17708, 21923 }, -- Elixir of Frost Power : =ds=#sr# 190 : =ds=AtlasLoot["Feast of Winter Veil"]
				{ 14,  8949,  11449 }, -- Elixir of Agility : =ds=#sr# 185 : =ds=AtlasLoot["Trainer"]
				{ 15,  3391,  3188 }, -- Elixir of Ogre's Strength : =ds=#sr# 150 : =ds=AtlasLoot["World Drop"]
				{ 16,  6373,  7845 }, -- Elixir of Firepower : =ds=#sr# 140 : =ds=AtlasLoot["Trainer"]
				{ 17,  3390,  2333 }, -- Elixir of Lesser Agility : =ds=#sr# 140 : =ds=AtlasLoot["World Drop"]
				{ 18,  45621, 63732 }, -- Elixir of Minor Accuracy : =ds=#sr# 135 : =ds=AtlasLoot["Trainer"]
				{ 19,  6662,  8240 }, -- Elixir of Giant Growth : =ds=#sr# 90 : =ds=AtlasLoot_IngameLocales["Northern Barrens"] / AtlasLoot_IngameLocales["Southern Barrens"]
				{ 20,  3383,  3171 }, -- Elixir of Wisdom : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
				{ 21,  2457,  3230 }, -- Elixir of Minor Agility : =ds=#sr# 50 : =ds=AtlasLoot["World Drop"]
				{ 22,  2454,  2329 }, -- Elixir of Lion's Strength : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 101, 20004, 24368 }, -- Mighty Troll's Blood Elixir : =ds=#sr# 290 : =ds=AtlasLoot["No Longer Available"]
				{ 102, 13445, 17554 }, -- Elixir of Superior Defense : =ds=#sr# 265 : =ds=AtlasLoot["Vendor"] ALIL["Ironforge"] / ALIL["Orgrimmar"]
				{ 103, 9088,  11466 }, -- Gift of Arthas : =ds=#sr# 240 : =ds=AtlasLoot_IngameLocales["Western Plaguelands"]
				{ 104, 10592, 12609 }, -- Catseye Elixir : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 105, 8951,  11450 }, -- Elixir of Greater Defense : =ds=#sr# 195 : =ds=AtlasLoot["Trainer"]
				{ 106, 3826,  3451 }, -- Major Troll's Blood Elixir : =ds=#sr# 180 : =ds=AtlasLoot["World Drop"]
				{ 107, 3825,  3450 }, -- Elixir of Fortitude : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 108, 3389,  3177 }, -- Elixir of Defense : =ds=#sr# 130 : =ds=AtlasLoot["Trainer"]
				{ 109, 3388,  3176 }, -- Strong Troll's Blood Potion : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 110, 2458,  2334 }, -- Elixir of Minor Fortitude : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 111, 3382,  3170 }, -- Weak Troll's Blood Elixir : =ds=#sr# 15 : =ds=AtlasLoot["Trainer"]
				{ 112, 5997,  7183 }, -- Elixir of Minor Defense : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 116, 9233,  11478 }, -- Elixir of Detect Demon : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 117, 9197,  11468 }, -- Elixir of Dream Vision : =ds=#sr# 240 : =ds=AtlasLoot["World Drop"]
				{ 118, 9154,  11460 }, -- Elixir of Detect Undead : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 119, 18294, 22808 }, -- Elixir of Greater Water Breathing : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 120, 3828,  3453 }, -- Elixir of Detect Lesser Invisibility : =ds=#sr# 195 : =ds=AtlasLoot["World Drop"]
				{ 121, 5996,  7179 }, -- Elixir of Water Breathing : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --AlchemyTransmute
			name = AL["Transmutes"],
			[TWW_DIFF] = {
				{ 1,  212514, 430624 }, -- Blasphemite
				{ 2,  225677, 449938 }, -- Gleaming Chaos
				{ 4,  223883, 430618 }, -- Mercurial Blessings
				-- { 5, 223883, 430619 }, -- Mercurial Storms (ends up being the same as Blessings)
				{ 5,  211803, 449573 }, -- Mercurial Coalescence
				{ 6,  223886, 449571 }, -- Mercurial Herbs
				{ 8,  223885, 430622 }, -- Ominous Call
				-- { 9, 223885, 430623 }, -- Ominous Gloom (ends up being the same as Call)
				{ 9,  211802, 449574 }, -- Ominous Coalescence
				{ 10, 223887, 449572 }, -- Ominous Herbs
				{ 12, 223884, 430620 }, -- Volatile Weaving
				-- { 13, 223884, 430621 }, -- Volatile Stone (ends up being the same as Weaving)
				{ 13, 211802, 449575 }, -- Volatile Coalescence
			},
			[BFA_DIFF] = {
				{ 1,  152668, 251832 }, -- Transmute: Expulsom
				{ 3,  152580, 251306 }, -- Transmute: Herbs to Cloth
				{ 4,  152580, 251310 }, -- Transmute: Ore to Cloth
				{ 6,  160322, 251305 }, -- Transmute: Herbs to Ore
				{ 8,  152581, 251822 }, -- Transmute: Fish to Gems
				{ 9,  152581, 251311 }, -- Transmute: Ore to Gems
				{ 11, 160325, 251808 }, -- Transmute: Meat to Pet
				{ 18, 152582, 251314 }, -- Transmute: Cloth to Skins
				{ 21, 152578, 251309 }, -- Transmute: Ore to Herbs
			},
			[LEGION_DIFF] = {
				-- { #, itemID, spellID },
				{ 1,  141323, 188800 }, -- Wild Transmutation
				{ 2,  141323, 188801 }, -- Wild Transmutation
				{ 3,  141323, 188802 }, -- Wild Transmutation
				{ 5,  137590, 213248 }, -- Transmute: Ore to Cloth
				{ 6,  137591, 213249 }, -- Transmute: Cloth to Skins
				{ 7,  137592, 213250 }, -- Transmute: Skins to Ore
				{ 8,  137593, 213251 }, -- Transmute: Ore to Herbs
				{ 9,  137593, 213252 }, -- Transmute: Cloth to Herbs
				{ 10, 137593, 213253 }, -- Transmute: Skins to Herbs
				{ 11, 137594, 213254 }, -- Transmute: Fish to Gems
				{ 12, 137600, 213255 }, -- Transmute: Meat to Pants
				{ 13, 137599, 213256 }, -- Transmute: Meat to Pet
				{ 14, 124124, 213257 }, -- Transmute: Blood of Sargeras
				-- 7.3.0
				{ 15, 151568, 247701 }, -- Transmute: Primal Sargerite
			},
			[WOD_DIFF] = {
				{ 1,  113261, 181634, [PRICE_EXTRA_ITTYPE] = "113262:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Water to Fire
				{ 2,  113261, 181632, [PRICE_EXTRA_ITTYPE] = "113263:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Earth to Fire
				{ 3,  113261, 181633, [PRICE_EXTRA_ITTYPE] = "113264:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Air to Fire
				{ 5,  113262, 181628, [PRICE_EXTRA_ITTYPE] = "113261:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Fire to Water
				{ 6,  113262, 181635, [PRICE_EXTRA_ITTYPE] = "113263:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Earth to Water
				{ 7,  113262, 181636, [PRICE_EXTRA_ITTYPE] = "113264:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Air to Water
				{ 9,  113263, 181625, [PRICE_EXTRA_ITTYPE] = "113261:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Fire to Earth
				{ 10, 113263, 181629, [PRICE_EXTRA_ITTYPE] = "113262:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Water to Earth
				{ 11, 113263, 181637, [PRICE_EXTRA_ITTYPE] = "113264:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Air to Earth
				{ 13, 113264, 181627, [PRICE_EXTRA_ITTYPE] = "113261:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Fire to Air
				{ 14, 113264, 181630, [PRICE_EXTRA_ITTYPE] = "113262:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Water to Air
				{ 15, 113264, 181631, [PRICE_EXTRA_ITTYPE] = "113263:10:108996:4", [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Transmute: Sorcerous Earth to Air
				{ 16, 118472, 181643, [PRICE_EXTRA_ITTYPE] = "108996:50:109123:7", [ATLASLOOT_IT_AMOUNT1] = 1 }, -- Transmute: Savage Blood
			},
			[MOP_DIFF] = {
				{ 1,  76132, 114781 }, -- Transmute: Primal Diamond : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]
				{ 2,  76131, 114784 }, -- Transmute: Primordial Ruby : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]
				{ 3,  76141, 114777 }, -- Transmute: Imperial Amethyst : =ds=#sr# 575 : =ds=AtlasLoot["Discovery"]
				{ 4,  76142, 114778 }, -- Transmute: Sun's Radiance : =ds=#sr# 575 : =ds=AtlasLoot["Discovery"]
				{ 5,  76140, 114776 }, -- Transmute: Vermilion Onyx : =ds=#sr# 575 : =ds=AtlasLoot["Discovery"]
				{ 6,  76138, 114766 }, -- Transmute: River's Heart : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 7,  76139, 114767 }, -- Transmute: Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]
				{ 16, 72104, 130326 }, -- Riddle of Steel : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]
				{ 17, 72104, 114780 }, -- Transmute: Living Steel : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]
				{ 18, 72095, 114783 }, -- Transmute: Trillium Bar : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]
			},
			[CATA_DIFF] = {
				{ 1,  52190, 80245 },                       -- Transmute: Inferno Ruby : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 2,  52303, 80237, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Transmute: Shadowspirit Diamond : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 3,  52195, 80247 },                       -- Transmute: Amberjewel : =ds=#sr# 520 : =ds=AtlasLoot["Trainer"]
				{ 4,  52194, 80248 },                       -- Transmute: Demonseye : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 5,  52191, 80246 },                       -- Transmute: Ocean Sapphire : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 6,  52193, 80250 },                       -- Transmute: Ember Topaz : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 7,  52192, 80251 },                       -- Transmute: Dream Emerald : =ds=#sr# 505 : =ds=AtlasLoot["Trainer"]
				{ 16, 58480, 80243 },                       -- Transmute: Truegold : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 17, 51950, 80244 },                       -- Transmute: Pyrium Bar : =ds=#sr# 520 : =ds=AtlasLoot["Trainer"]
				{ 18, 54464, 78866, [ATLASLOOT_IT_AMOUNT1] = "14-16" }, -- Transmute: Living Elements : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  36931, 66658 }, -- Transmute: Ametrine : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 2,  36928, 66662 }, -- Transmute: Dreadstone : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 3,  36934, 66664 }, -- Transmute: Eye of Zul : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 4,  36922, 66660 }, -- Transmute: King's Amber : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 5,  36925, 66663 }, -- Transmute: Majestic Zircon : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 6,  36919, 66659 }, -- Transmute: Cardinal Ruby : =ds=#sr# 440 : =ds=AtlasLoot["Quest Reward"]
				{ 8,  41266, 57425 }, -- Transmute: Skyflare Diamond : =ds=#sr# 430 : =ds=AtlasLoot["Trainer"]
				{ 9,  41334, 57427 }, -- Transmute: Earthsiege Diamond : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 11, 41163, 60350 }, -- Transmute: Titanium : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 16, 35624, 53777 }, -- Transmute: Eternal Air to Earth : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 17, 35622, 53776 }, -- Transmute: Eternal Air to Water : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 18, 35623, 53781 }, -- Transmute: Eternal Earth to Air : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 19, 35627, 53782 }, -- Transmute: Eternal Earth to Shadow : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 20, 35625, 53775 }, -- Transmute: Eternal Fire to Life : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 21, 35622, 53774 }, -- Transmute: Eternal Fire to Water : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 22, 36860, 53773 }, -- Transmute: Eternal Life to Fire : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 23, 35627, 53771 }, -- Transmute: Eternal Life to Shadow : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 24, 35624, 53779 }, -- Transmute: Eternal Shadow to Earth : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 25, 35625, 53780 }, -- Transmute: Eternal Shadow to Life : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 26, 35623, 53783 }, -- Transmute: Eternal Water to Air : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
				{ 27, 36860, 53784 }, -- Transmute: Eternal Water to Fire : =ds=#sr# 400 : =ds=AtlasLoot["Discovery"]
			},
			[BC_DIFF] = {
				{ 1,  23571, 29688 }, -- Transmute: Primal Might : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]
				{ 2,  25867, 32765 }, -- Transmute: Earthstorm Diamond : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Honored"]
				{ 3,  25868, 32766 }, -- Transmute: Skyfire Diamond : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Honor Hold"] / Thrallmar - AtlasLoot["Honored"]
				{ 16, 21886, 28585 }, -- Transmute: Primal Earth to Life : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 17, 22457, 28583 }, -- Transmute: Primal Fire to Mana : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 18, 22452, 28584 }, -- Transmute: Primal Life to Earth : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 19, 21884, 28582 }, -- Transmute: Primal Mana to Fire : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 20, 21885, 28580 }, -- Transmute: Primal Shadow to Water : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 21, 22456, 28581 }, -- Transmute: Primal Water to Shadow : =ds=#sr# 300 : =ds=AtlasLoot["Discovery"]
				{ 22, 21884, 28566 }, -- Transmute: Primal Air to Fire : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Revered"]
				{ 23, 21885, 28567 }, -- Transmute: Primal Earth to Water : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Sporeggar"] - AtlasLoot["Revered"]
				{ 24, 22452, 28568 }, -- Transmute: Primal Fire to Earth: =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Kurenai"] / The Mag'har - AtlasLoot["Revered"]
				{ 25, 22451, 28569 }, -- Transmute: Primal Water to Air : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Revered"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  12360, 17187 },                 -- Transmute: Arcanite : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 2,  3577,  11479 },                 -- Transmute: Iron to Gold : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 3,  6037,  11480 },                 -- Transmute: Mithril to Truesilver : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 16, 7068,  25146, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Transmute: Elemental Fire : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 17, 7078,  17559 },                 -- Transmute: Air to Fire : =ds=#sr# 275 : =ds=AtlasLoot_IngameLocales["Argent Dawn"] - AtlasLoot["Honored"]
				{ 18, 12803, 17566 },                 -- Transmute: Earth to Life : =ds=#sr# 275 : =ds=AtlasLoot["World Drop"]
				{ 19, 7080,  17561 },                 -- Transmute: Earth to Water : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Felwood"]
				{ 20, 7076,  17560 },                 -- Transmute: Fire to Earth : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 21, 7076,  17565 },                 -- Transmute: Life to Earth : =ds=#sr# 275 : =ds=AtlasLoot["World Drop"]
				{ 22, 7080,  17563 },                 -- Transmute: Undeath to Water : =ds=#sr# 275 : =ds=AtlasLoot["World Drop"]
				{ 23, 7082,  17562 },                 -- Transmute: Water to Air : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Western Plaguelands"]
				{ 24, 12808, 17564 },                 -- Transmute: Water to Undeath : =ds=#sr# 275 : =ds=AtlasLoot["World Drop"]
			},
		},
	}
}

data["Blacksmithing"] = {
	name = C_Spell.GetSpellName(2018),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --SmithingArmor
			name = AL["Armor"],
			[TWW_DIFF] = {
				{ 1,  222476, 450263 },                          -- Dredger's Developed Legplates
				{ 2,  222478, 450265 },                          -- Dredger's Developed Pauldrons
				{ 3,  222479, 450266 },                          -- Dredger's Developed Gauntlets
				{ 4,  222475, 450262 },                          -- Dredger's Developed Helm
				{ 5,  222473, 450260 },                          -- Dredger's Developed Greatbelt
				{ 6,  222477, 450264 },                          -- Dredger's Plate Vambraces
				{ 7,  222472, 450259 },                          -- Dredger's Plate Breastplate
				{ 8,  222471, 450258 },                          -- Dredger's Plate Sabatons
				{ 9,  222430, 450221 },                          -- Everforged Breastplate
				{ 10, 222437, 450228 },                          -- Everforged Gauntlets
				{ 11, 222431, 450222 },                          -- Everforged Greatbelt
				{ 12, 222433, 450224 },                          -- Everforged Helm
				{ 13, 222434, 450225 },                          -- Everforged Legplates
				{ 14, 222436, 450227 },                          -- Everforged Pauldrons
				{ 15, 222429, 450220 },                          -- Everforged Sabatons
				{ 16, 222435, 450226 },                          -- Everforged Vambraces
				{ 17, 222458, 450245 },                          -- Sanctified Steps
				{ 18, 217150, 438921, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Armguards
				{ 19, 217143, 438914, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Breastplate
				{ 20, 217145, 438916, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Gauntlets
				{ 21, 217147, 438918, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Greaves
				{ 22, 217146, 438917, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Helm
				{ 23, 217148, 438919, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Pauldrons
				{ 24, 217144, 438915, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Sabatons
				{ 25, 217149, 438920, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Waistguard
			},
			[BFA_DIFF] = {
				{ 1,   152811, 253190 }, -- Stormsteel Girdle
				{ 2,   162465, 253191 }, -- Imbued Stormsteel Girdle
				{ 4,   152810, 253186 }, -- Stormsteel Legguards
				{ 5,   162463, 253187 }, -- Imbued Stormsteel Legguards
				{ 16,  162466, 253192 }, -- Emblazoned Stormsteel Girdle
				{ 19,  162464, 253188 }, -- Emblazoned Stormsteel Legguards

				{ 101, 159866, 269451 }, -- Honorable Combatant's Plate Armguards
				{ 102, 159866, 269452 }, -- Honorable Combatant's Plate Armguards
				{ 103, 159866, 269453 }, -- Honorable Combatant's Plate Armguards
				{ 105, 159861, 269421 }, -- Honorable Combatant's Plate Gauntlets
				{ 106, 159861, 269422 }, -- Honorable Combatant's Plate Gauntlets
				{ 107, 159861, 269423 }, -- Honorable Combatant's Plate Gauntlets
				{ 109, 159860, 269424 }, -- Honorable Combatant's Plate Boots
				{ 110, 159860, 269425 }, -- Honorable Combatant's Plate Boots
				{ 111, 159860, 269426 }, -- Honorable Combatant's Plate Boots
				{ 113, 152819, 253116 }, -- Stormsteel Shield
				{ 114, 152819, 253117 }, -- Stormsteel Shield
				{ 115, 152819, 253118 }, -- Stormsteel Shield
				{ 116, 159851, 269458 }, -- Honorable Combatant's Shield
				{ 117, 159851, 269459 }, -- Honorable Combatant's Shield
				{ 118, 159851, 269460 }, -- Honorable Combatant's Shield
				{ 120, 159863, 269444 }, -- Honorable Combatant's Plate Greaves
				{ 121, 159863, 269446 }, -- Honorable Combatant's Plate Greaves
				{ 122, 159863, 269447 }, -- Honorable Combatant's Plate Greaves
				{ 124, 159865, 269448 }, -- Honorable Combatant's Plate Waistguard
				{ 125, 159865, 269449 }, -- Honorable Combatant's Plate Waistguard
				{ 126, 159865, 269450 }, -- Honorable Combatant's Plate Waistguard

				{ 201, 152805, 253171 }, -- Monel-Hardened Helm
				{ 202, 152807, 253177 }, -- Monel-Hardened Pauldrons
				{ 203, 152802, 253162 }, -- Monel-Hardened Breastplate
				{ 204, 152809, 253183 }, -- Monel-Hardened Armguards
				{ 206, 152818, 253113 }, -- Monel-Hardened Shield
				{ 216, 152804, 253168 }, -- Monel-Hardened Gauntlets
				{ 217, 152808, 253180 }, -- Monel-Hardened Waistguard
				{ 218, 152806, 253174 }, -- Monel-Hardened Greaves
				{ 219, 152803, 253165 }, -- Monel-Hardened Boots
			},
			[LEGION_DIFF] = {
				{ 1,   123913, 182948 }, -- Demonsteel Helm
				{ 2,   123913, 182978 }, -- Demonsteel Helm
				{ 3,   123913, 182986 }, -- Demonsteel Helm
				{ 5,   123915, 182946 }, -- Demonsteel Pauldrons
				{ 6,   123915, 182976 }, -- Demonsteel Pauldrons
				{ 7,   123915, 182984 }, -- Demonsteel Pauldrons
				{ 9,   123910, 182951 }, -- Demonsteel Breastplate
				{ 10,  123910, 182981 }, -- Demonsteel Breastplate
				{ 11,  123910, 182989 }, -- Demonsteel Breastplate
				{ 13,  123917, 182944 }, -- Demonsteel Armguards
				{ 14,  123917, 182974 }, -- Demonsteel Armguards
				{ 15,  123917, 182982 }, -- Demonsteel Armguards
				{ 16,  123912, 182949 }, -- Demonsteel Gauntlets
				{ 17,  123912, 182979 }, -- Demonsteel Gauntlets
				{ 18,  123912, 182987 }, -- Demonsteel Gauntlets
				{ 20,  123916, 182945 }, -- Demonsteel Waistguard
				{ 21,  123916, 182975 }, -- Demonsteel Waistguard
				{ 22,  123916, 182983 }, -- Demonsteel Waistguard
				{ 24,  123914, 182947 }, -- Demonsteel Greaves
				{ 25,  123914, 182977 }, -- Demonsteel Greaves
				{ 26,  123914, 182985 }, -- Demonsteel Greaves
				{ 28,  123911, 182950 }, -- Demonsteel Boots
				{ 29,  123911, 182980 }, -- Demonsteel Boots
				{ 30,  123911, 182988 }, -- Demonsteel Boots
				{ 101, 123894, 182932 }, -- Leystone Helm
				{ 102, 123894, 182966 }, -- Leystone Helm
				{ 103, 123894, 191929 }, -- Leystone Helm
				{ 105, 123896, 182930 }, -- Leystone Pauldrons
				{ 106, 123896, 182964 }, -- Leystone Pauldrons
				{ 107, 123896, 182972 }, -- Leystone Pauldrons
				{ 109, 123891, 182935 }, -- Leystone Breastplate
				{ 110, 123891, 182969 }, -- Leystone Breastplate
				{ 111, 123891, 182973 }, -- Leystone Breastplate
				{ 113, 123898, 182928 }, -- Leystone Armguards
				{ 114, 123898, 182962 }, -- Leystone Armguards
				{ 115, 123898, 182970 }, -- Leystone Armguards
				{ 116, 123893, 182933 }, -- Leystone Gauntlets
				{ 117, 123893, 182967 }, -- Leystone Gauntlets
				{ 118, 123893, 191930 }, -- Leystone Gauntlets
				{ 120, 123897, 182929 }, -- Leystone Waistguard
				{ 121, 123897, 182963 }, -- Leystone Waistguard
				{ 122, 123897, 182971 }, -- Leystone Waistguard
				{ 124, 123895, 182931 }, -- Leystone Greaves
				{ 125, 123895, 182965 }, -- Leystone Greaves
				{ 126, 123895, 191931 }, -- Leystone Greaves
				{ 128, 123892, 182934 }, -- Leystone Boots
				{ 129, 123892, 182968 }, -- Leystone Boots
				{ 130, 123892, 191928 }, -- Leystone Boots
				-- 7.3.0
				{ 201, 151576, 247710 }, -- Empyrial Breastplate
				{ 202, 151576, 247713 }, -- Empyrial Breastplate
				{ 203, 151576, 247714 }, -- Empyrial Breastplate
			},
			[WOD_DIFF] = {
				{ 1,   "114230:Stage6", 187515 },                        -- Truesteel Helm (Stage 6)
				{ 10,  "114230:Stage5", 187491 },                        -- Truesteel Helm (Stage 5)
				{ 19,  "114230:Stage4", 171708 },                        -- Truesteel Helm (Stage 4)
				{ 101, "114230:Stage3", 171708 },                        -- Truesteel Helm (Stage 3)
				{ 110, "114230:Stage2", 171708 },                        -- Truesteel Helm (Stage 2)
				{ 119, "114230:Stage1", 171701, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Helm (Stage 1) (Sold, Ashran)

				{ 2,   "114231:Stage6", 187515 },                        -- Truesteel Pauldrons (Stage 6)
				{ 11,  "114231:Stage5", 187491 },                        -- Truesteel Pauldrons (Stage 5)
				{ 20,  "114231:Stage4", 171708 },                        -- Truesteel Pauldrons (Stage 4)
				{ 102, "114231:Stage3", 171708 },                        -- Truesteel Pauldrons (Stage 3)
				{ 111, "114231:Stage2", 171708 },                        -- Truesteel Pauldrons (Stage 2)
				{ 120, "114231:Stage1", 171700, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Pauldrons (Stage 1) (Sold, Ashran)

				{ 3,   "114232:Stage6", 187515 },                        -- Truesteel Breastplate (Stage 6)
				{ 12,  "114232:Stage5", 187491 },                        -- Truesteel Breastplate (Stage 5)
				{ 21,  "114232:Stage4", 171708 },                        -- Truesteel Breastplate (Stage 4)
				{ 103, "114232:Stage3", 171708 },                        -- Truesteel Breastplate (Stage 3)
				{ 112, "114232:Stage2", 171708 },                        -- Truesteel Breastplate (Stage 2)
				{ 121, "114232:Stage1", 171704, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Breastplate (Stage 1) (Sold, Ashran)

				{ 4,   "114236:Stage6", 187515 },                        -- Truesteel Armguards (Stage 6)
				{ 13,  "114236:Stage5", 187491 },                        -- Truesteel Armguards (Stage 5)
				{ 22,  "114236:Stage4", 171708 },                        -- Truesteel Armguards (Stage 4)
				{ 104, "114236:Stage3", 171708 },                        -- Truesteel Armguards (Stage 3)
				{ 113, "114236:Stage2", 171708 },                        -- Truesteel Armguards (Stage 2)
				{ 122, "114236:Stage1", 171705, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Armguards (Stage 1) (Sold, Ashran)

				{ 5,   "114237:Stage6", 187515 },                        -- Truesteel Gauntlets (Stage 6)
				{ 14,  "114237:Stage5", 187491 },                        -- Truesteel Gauntlets (Stage 5)
				{ 23,  "114237:Stage4", 171708 },                        -- Truesteel Gauntlets (Stage 4)
				{ 105, "114237:Stage3", 171708 },                        -- Truesteel Gauntlets (Stage 3)
				{ 114, "114237:Stage2", 171708 },                        -- Truesteel Gauntlets (Stage 2)
				{ 123, "114237:Stage1", 171703, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Gauntlets (Stage 1) (Sold, Ashran)

				{ 6,   "114233:Stage6", 187515 },                        -- Truesteel Waistguard (Stage 6)
				{ 15,  "114233:Stage5", 187491 },                        -- Truesteel Waistguard (Stage 5)
				{ 24,  "114233:Stage4", 171708 },                        -- Truesteel Waistguard (Stage 4)
				{ 106, "114233:Stage3", 171708 },                        -- Truesteel Waistguard (Stage 3)
				{ 115, "114233:Stage2", 171708 },                        -- Truesteel Waistguard (Stage 2)
				{ 124, "114233:Stage1", 171707, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Waistguard (Stage 1) (Sold, Ashran)

				{ 7,   "114234:Stage6", 187515 },                        -- Truesteel Greaves (Stage 6)
				{ 16,  "114234:Stage5", 187491 },                        -- Truesteel Greaves (Stage 5)
				{ 25,  "114234:Stage4", 171708 },                        -- Truesteel Greaves (Stage 4)
				{ 107, "114234:Stage3", 171708 },                        -- Truesteel Greaves (Stage 3)
				{ 116, "114234:Stage2", 171708 },                        -- Truesteel Greaves (Stage 2)
				{ 125, "114234:Stage1", 171702, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Greaves (Stage 1) (Sold, Ashran)

				{ 8,   "114235:Stage6", 187515 },                        -- Truesteel Boots (Stage 6)
				{ 17,  "114235:Stage5", 187491 },                        -- Truesteel Boots (Stage 5)
				{ 26,  "114235:Stage4", 171708 },                        -- Truesteel Boots (Stage 4)
				{ 108, "114235:Stage3", 171708 },                        -- Truesteel Boots (Stage 3)
				{ 117, "114235:Stage2", 171708 },                        -- Truesteel Boots (Stage 2)
				{ 126, "114235:Stage1", 171706, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Boots (Stage 1) (Sold, Ashran)

				{ 128, 116426,          171691 },                        -- Smoldering Helm (Learnt by item 115356)
				{ 129, 116427,          171692 },                        -- Smoldering Breastplate (Learnt by item 115356)
				{ 130, 116425,          171693 },                        -- Smoldering Greaves (Learnt by item 115356)
			},
			[MOP_DIFF] = {
				{ 1,   98616, 142968 },                                 -- Avenger's Trillium Waistplate : =ds=#s10#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 2,   98611, 142963 },                                 -- Blessed Trillium Belt : =ds=#s10#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 3,   98615, 142967 },                                 -- Protector's Trillium Waistguard : =ds=#s10#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 4,   98607, 142959 },                                 -- Avenger's Trillium Legplates : =ds=#s11#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 5,   98602, 142954 },                                 -- Blessed Trillium Greaves : =ds=#s11#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 6,   98606, 142958 },                                 -- Protector's Trillium Legguards : =ds=#s11#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 7,   87403, 126854 },                                 -- Chestplate of Limitless Faith : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 8,   87402, 126852 },                                 -- Ornate Battleplate of the Master : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 9,   87405, 126850 },                                 -- Unyielding Bloodplate : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 10,  87407, 126853 },                                 -- Bloodforged Warfists : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 11,  87406, 126851 },                                 -- Gauntlets of Battle Command : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 12,  87404, 126855 },                                 -- Gauntlets of Unbound Devotion : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 13,  82979, 122653 },                                 -- Breastplate of Ancient Steel : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 14,  82975, 122649 },                                 -- Ghost Reaver's Breastplate : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 15,  82977, 122651 },                                 -- Living Steel Breastplate : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 16,  82980, 122654 },                                 -- Gauntlets of Ancient Steel : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 17,  82976, 122650 },                                 -- Ghost Reaver's Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 18,  82978, 122652 },                                 -- Living Steel Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 19,  98786, 143165 },                                 -- Crafted Malevolent Gladiator's Dreadplate Helm : =ds=#s1#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 20,  98788, 143167 },                                 -- Crafted Malevolent Gladiator's Dreadplate Shoulders : =ds=#s3#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 21,  98784, 143163 },                                 -- Crafted Malevolent Gladiator's Dreadplate Chestpiece : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 22,  98785, 143164 },                                 -- Crafted Malevolent Gladiator's Dreadplate Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 23,  98787, 143166 },                                 -- Crafted Malevolent Gladiator's Dreadplate Legguards : =ds=#s11#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 24,  98856, 143181 },                                 -- Crafted Malevolent Gladiator's Ornamented Headcover : =ds=#s1#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 25,  98858, 143183 },                                 -- Crafted Malevolent Gladiator's Ornamented Spaulders : =ds=#s3#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 26,  98854, 143179 },                                 -- Crafted Malevolent Gladiator's Ornamented Chestguard : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 27,  98855, 143180 },                                 -- Crafted Malevolent Gladiator's Ornamented Gloves : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 28,  98857, 143182 },                                 -- Crafted Malevolent Gladiator's Ornamented Legplates : =ds=#s11#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 29,  98845, 143170 },                                 -- Crafted Malevolent Gladiator's Scaled Helm : =ds=#s1#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 30,  98847, 143172 },                                 -- Crafted Malevolent Gladiator's Scaled Shoulders : =ds=#s3#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 101, 98843, 143168 },                                 -- Crafted Malevolent Gladiator's Scaled Chestpiece : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 102, 98844, 143169 },                                 -- Crafted Malevolent Gladiator's Scaled Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 103, 98846, 143171 },                                 -- Crafted Malevolent Gladiator's Scaled Legguards : =ds=#s11#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 104, 98928, 143192 },                                 -- Crafted Malevolent Gladiator's Plate Helm : =ds=#s1#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 105, 98930, 143194 },                                 -- Crafted Malevolent Gladiator's Plate Shoulders : =ds=#s3#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 106, 98926, 143190 },                                 -- Crafted Malevolent Gladiator's Plate Chestpiece : =ds=#s5#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 107, 98927, 143191 },                                 -- Crafted Malevolent Gladiator's Plate Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 108, 98929, 143193 },                                 -- Crafted Malevolent Gladiator's Plate Legguards : =ds=#s11#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 109, 98864, 143189 },                                 -- Crafted Malevolent Gladiator's Armplates of Alacrity : =ds=#s8#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 110, 98863, 143188 },                                 -- Crafted Malevolent Gladiator's Armplates of Proficiency : =ds=#s8#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 111, 98853, 143178 },                                 -- Crafted Malevolent Gladiator's Bracers of Meditation : =ds=#s8#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 112, 98852, 143177 },                                 -- Crafted Malevolent Gladiator's Bracers of Prowess : =ds=#s8#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 113, 98848, 143173 },                                 -- Crafted Malevolent Gladiator's Clasp of Cruelty : =ds=#s10#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 114, 98849, 143174 },                                 -- Crafted Malevolent Gladiator's Clasp of Meditation : =ds=#s10#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 115, 98859, 143184 },                                 -- Crafted Malevolent Gladiator's Girdle of Accuracy : =ds=#s10#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 116, 98860, 143185 },                                 -- Crafted Malevolent Gladiator's Girdle of Prowess : =ds=#s10#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 117, 98850, 143175 },                                 -- Crafted Malevolent Gladiator's Greaves of Alacrity : =ds=#s12#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 118, 98851, 143176 },                                 -- Crafted Malevolent Gladiator's Greaves of Meditation : =ds=#s12#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 119, 98862, 143187 },                                 -- Crafted Malevolent Gladiator's Warboots of Alacrity : =ds=#s12#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 120, 98861, 143186 },                                 -- Crafted Malevolent Gladiator's Warboots of Cruelty : =ds=#s12#, #a4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 121, 82943, 122616, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Revenant Helm : =ds=#s1#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 122, 82944, 122617, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Revenant Shoulders : =ds=#s3#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 123, 82945, 122618, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Revenant Breastplate : =ds=#s5#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 124, 82948, 122621, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Revenant Bracers : =ds=#s8#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 125, 82946, 122619, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Revenant Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 126, 82950, 122623, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Revenant Belt : =ds=#s10#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 127, 82947, 122620, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Revenant Legplates : =ds=#s11#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 128, 82949, 122622, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Revenant Boots : =ds=#s12#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 129, 82951, 122624, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Spirit Helm : =ds=#s1#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 130, 82952, 122625, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Spirit Shoulders : =ds=#s3#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 201, 82953, 122626, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Spirit Breastplate : =ds=#s5#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 202, 82956, 122629, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Spirit Bracers : =ds=#s8#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 203, 82954, 122627, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Spirit Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 204, 82958, 122631, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Spirit Belt : =ds=#s10#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 205, 82955, 122628, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Spirit Legplates : =ds=#s11#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 206, 82957, 122630, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Spirit Boots : =ds=#s12#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 207, 82919, 122592, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Helm : =ds=#s1#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 208, 82920, 122593, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Shoulders : =ds=#s3#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 209, 82921, 122594, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Breastplate : =ds=#s5#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 210, 82924, 122597, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Bracers : =ds=#s8#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 211, 82922, 122595, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 212, 82926, 122599, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Belt : =ds=#s10#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 213, 82923, 122596, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Legplates : =ds=#s11#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 214, 82925, 122598, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Boots : =ds=#s12#, #a4# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 215, 82903, 122576 },                                 -- Ghost-Forged Helm : =ds=#s1#, #a4# / =q1=#sk# 550 : =ds=AtlasLoot["Trainer"]
				{ 216, 82905, 122578 },                                 -- Ghost-Forged Breastplate : =ds=#s5#, #a4# / =q1=#sk# 550 : =ds=AtlasLoot["Trainer"]
				{ 217, 82904, 122577 },                                 -- Ghost-Forged Shoulders : =ds=#s3#, #a4# / =q1=#sk# 540 : =ds=AtlasLoot["Trainer"]
				{ 218, 82907, 122580 },                                 -- Ghost-Forged Legplates : =ds=#s11#, #a4# / =q1=#sk# 530 : =ds=AtlasLoot["Trainer"]
				{ 219, 82909, 122582 },                                 -- Ghost-Forged Boots : =ds=#s12#, #a4# / =q1=#sk# 530 : =ds=AtlasLoot["Trainer"]
				{ 220, 82906, 122579 },                                 -- Ghost-Forged Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Trainer"]
				{ 221, 82910, 122583 },                                 -- Ghost-Forged Belt : =ds=#s10#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Trainer"]
				{ 222, 94266, 137769 },                                 -- Haunted Steel Greathelm : =ds=#s1#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 223, 94264, 137767 },                                 -- Haunted Steel Headcover : =ds=#s1#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 224, 94268, 137771 },                                 -- Haunted Steel Headguard : =ds=#s1#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 225, 94263, 137766 },                                 -- Haunted Steel Greaves : =ds=#s12#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 226, 94265, 137768 },                                 -- Haunted Steel Treads : =ds=#s12#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 227, 94267, 137770 },                                 -- Haunted Steel Warboots : =ds=#s12#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 228, 93455, 140844 },                                 -- Crafted Dreadful Gladiator's Dreadplate Helm : =ds=#s1#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 229, 93457, 140842 },                                 -- Crafted Dreadful Gladiator's Dreadplate Shoulders : =ds=#s3#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 230, 93453, 140846 },                                 -- Crafted Dreadful Gladiator's Dreadplate Chestpiece : =ds=#s5#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 301, 93454, 140845 },                                 -- Crafted Dreadful Gladiator's Dreadplate Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 302, 93456, 140843 },                                 -- Crafted Dreadful Gladiator's Dreadplate Legguards : =ds=#s11#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 303, 93540, 137784 },                                 -- Crafted Dreadful Gladiator's Ornamented Headcover : =ds=#s1#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 304, 93542, 137786 },                                 -- Crafted Dreadful Gladiator's Ornamented Spaulders : =ds=#s3#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 305, 93538, 137782 },                                 -- Crafted Dreadful Gladiator's Ornamented Chestguard : =ds=#s5#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 306, 93539, 137783 },                                 -- Crafted Dreadful Gladiator's Ornamented Gloves : =ds=#s9#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 307, 93541, 137785 },                                 -- Crafted Dreadful Gladiator's Ornamented Legplates : =ds=#s11#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 308, 93529, 137773 },                                 -- Crafted Dreadful Gladiator's Scaled Helm : =ds=#s1#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 309, 93531, 137775 },                                 -- Crafted Dreadful Gladiator's Scaled Shoulders : =ds=#s3#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 310, 93527, 140841 },                                 -- Crafted Dreadful Gladiator's Scaled Chestpiece : =ds=#s5#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 311, 93528, 137772 },                                 -- Crafted Dreadful Gladiator's Scaled Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 312, 93530, 137774 },                                 -- Crafted Dreadful Gladiator's Scaled Legguards : =ds=#s11#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 313, 93622, 137795 },                                 -- Crafted Dreadful Gladiator's Plate Helm : =ds=#s1#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 314, 93624, 137797 },                                 -- Crafted Dreadful Gladiator's Plate Shoulders : =ds=#s3#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 315, 93620, 137793 },                                 -- Crafted Dreadful Gladiator's Plate Chestpiece : =ds=#s5#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 316, 93621, 137794 },                                 -- Crafted Dreadful Gladiator's Plate Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 317, 93623, 137796 },                                 -- Crafted Dreadful Gladiator's Plate Legguards : =ds=#s11#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 318, 93548, 137792 },                                 -- Crafted Dreadful Gladiator's Armplates of Alacrity : =ds=#s8#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 319, 93547, 137791 },                                 -- Crafted Dreadful Gladiator's Armplates of Proficiency : =ds=#s8#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 320, 93537, 137781 },                                 -- Crafted Dreadful Gladiator's Bracers of Meditation : =ds=#s8#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 321, 93536, 137780 },                                 -- Crafted Dreadful Gladiator's Bracers of Prowess : =ds=#s8#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 322, 93532, 137776 },                                 -- Crafted Dreadful Gladiator's Clasp of Cruelty : =ds=#s10#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 323, 93533, 137777 },                                 -- Crafted Dreadful Gladiator's Clasp of Meditation : =ds=#s10#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 324, 93543, 137787 },                                 -- Crafted Dreadful Gladiator's Girdle of Accuracy : =ds=#s10#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 325, 93544, 137788 },                                 -- Crafted Dreadful Gladiator's Girdle of Prowess : =ds=#s10#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 326, 93534, 137778 },                                 -- Crafted Dreadful Gladiator's Greaves of Alacrity : =ds=#s12#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 327, 93535, 137779 },                                 -- Crafted Dreadful Gladiator's Greaves of Meditation : =ds=#s12#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 328, 93546, 137790 },                                 -- Crafted Dreadful Gladiator's Warboots of Alacrity : =ds=#s12#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 329, 93545, 137789 },                                 -- Crafted Dreadful Gladiator's Warboots of Cruelty : =ds=#s12#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell138646
				{ 330, 82908, 122581 },                                 -- Ghost-Forged Bracers : =ds=#s8#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,   71992, 101931 }, -- Bracers of Destructive Strength : =ds=#s8#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 2,   71993, 101932 }, -- Titanguard Wristplates : =ds=#s8#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 3,   71991, 101929 }, -- Soul Redeemer Bracers : =ds=#s8#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 4,   71983, 101925 }, -- Unstoppable Destroyer's Legplates : =ds=#s11#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 5,   71984, 101928 }, -- Foundations of Courage : =ds=#s11#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 6,   71982, 101924 }, -- Pyrium Legplates of Purified Evil : =ds=#s11#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 7,   69936, 99439 }, -- Fists of Fury : =ds=#s9#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 8,   69937, 99440 }, -- Eternal Elementium Handguards : =ds=#s9#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 9,   69938, 99441 }, -- Holy Flame Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 10,  69946, 99452 }, -- Warboots of Mighty Lords : =ds=#s12#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 11,  69947, 99453 }, -- Mirrored Boots : =ds=#s12#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 12,  69948, 99454 }, -- Emberforged Elementium Boots : =ds=#s12#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 13,  75135, 76464 }, -- Vicious Pyrium Breastplate : =ds=#s5#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Vendor"] "5 #pyriumbar#"
				{ 14,  75126, 76463 }, -- Vicious Pyrium Helm : =ds=#s1#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Vendor"] "5 #pyriumbar#"
				{ 15,  75136, 76462 }, -- Vicious Pyrium Legguards : =ds=#s11#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Vendor"] "5 #pyriumbar#"
				{ 16,  75128, 76472 }, -- Vicious Ornate Pyrium Breastplate : =ds=#s5#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Vendor"] "5 #pyriumbar#"
				{ 17,  75129, 76471 }, -- Vicious Ornate Pyrium Helm : =ds=#s1#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Vendor"] "5 #pyriumbar#"
				{ 18,  75133, 76470 }, -- Vicious Ornate Pyrium Legguards : =ds=#s11#, #a4# / =q1=#sk# 525 : =ds=AtlasLoot["Vendor"] "5 #pyriumbar#"
				{ 19,  75119, 76461 }, -- Vicious Pyrium Shoulders : =ds=#s3#, #a4# / =q1=#sk# 520 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 20,  75134, 76469 }, -- Vicious Ornate Pyrium Shoulders : =ds=#s3#, #a4# / =q1=#sk# 520 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 21,  55060, 76445 }, -- Elementium Deathplate : =ds=#s5#, #a4# / =q1=#sk# 515 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 22,  55058, 76443 }, -- Hardened Elementium Hauberk : =ds=#s5#, #a4# / =q1=#sk# 515 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 23,  55062, 76447 }, -- Light Elementium Chestguard : =ds=#s5#, #a4# / =q1=#sk# 515 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 24,  75120, 76459 }, -- Vicious Pyrium Boots : =ds=#s12#, #a4# / =q1=#sk# 515 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 25,  75132, 76468 }, -- Vicious Ornate Pyrium Boots : =ds=#s12#, #a4# / =q1=#sk# 515 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 26,  55061, 76446 }, -- Elementium Girdle of Pain : =ds=#s10#, #a4# / =q1=#sk# 510 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 27,  55059, 76444 }, -- Hardened Elementium Girdle : =ds=#s10#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 28,  55063, 76448 }, -- Light Elementium Belt : =ds=#s10#, #a4# / =q1=#sk# 510 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 29,  75123, 76458 }, -- Vicious Pyrium Belt : =ds=#s10#, #a4# / =q1=#sk# 510 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 30,  75118, 76467 }, -- Vicious Ornate Pyrium Belt : =ds=#s10#, #a4# / =q1=#sk# 510 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 101, 75122, 76457 }, -- Vicious Pyrium Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 505 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 102, 75121, 76466 }, -- Vicious Ornate Pyrium Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 505 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 103, 75124, 76456 }, -- Vicious Pyrium Bracers : =ds=#s8#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 104, 75125, 76465 }, -- Vicious Ornate Pyrium Bracers : =ds=#s8#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 105, 55032, 76270 }, -- Redsteel Breastplate : =ds=#s5#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Trainer"]
				{ 106, 55024, 76261 }, -- Hardened Obsidium Breastplate : =ds=#s5#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Trainer"]
				{ 107, 55040, 76289 }, -- Stormforged Breastplate : =ds=#s5#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Trainer"]
				{ 108, 55031, 76269 }, -- Redsteel Helm : =ds=#s1#, #a4# / =q1=#sk# 500 : =ds=AtlasLoot["Trainer"]
				{ 109, 55023, 76260 }, -- Hardened Obsidium Helm : =ds=#s1#, #a4# / =q1=#sk# 490 : =ds=AtlasLoot["Trainer"]
				{ 110, 55039, 76288 }, -- Stormforged Helm : =ds=#s1#, #a4# / =q1=#sk# 490 : =ds=AtlasLoot["Trainer"]
				{ 111, 55022, 76259 }, -- Hardened Obsidium Legguards : =ds=#s11#, #a4# / =q1=#sk# 490 : =ds=AtlasLoot["Trainer"]
				{ 112, 55030, 76267 }, -- Redsteel Legguards : =ds=#s11#, #a4# / =q1=#sk# 490 : =ds=AtlasLoot["Trainer"]
				{ 113, 55038, 76287 }, -- Stormforged Legguards : =ds=#s11#, #a4# / =q1=#sk# 480 : =ds=AtlasLoot["Trainer"]
				{ 114, 54876, 76258 }, -- Hardened Obsidium Shoulders : =ds=#s3#, #a4# / =q1=#sk# 480 : =ds=AtlasLoot["Trainer"]
				{ 115, 55029, 76266 }, -- Redsteel Shoulders : =ds=#s3#, #a4# / =q1=#sk# 480 : =ds=AtlasLoot["Trainer"]
				{ 116, 55037, 76286 }, -- Stormforged Shoulders : =ds=#s3#, #a4# / =q1=#sk# 480 : =ds=AtlasLoot["Trainer"]
				{ 117, 54854, 76182 }, -- Hardened Obsidium Boots : =ds=#s12#, #a4# / =q1=#sk# 470 : =ds=AtlasLoot["Trainer"]
				{ 118, 55028, 76265 }, -- Redsteel Boots : =ds=#s12#, #a4# / =q1=#sk# 470 : =ds=AtlasLoot["Trainer"]
				{ 119, 55036, 76285 }, -- Stormforged Boots : =ds=#s12#, #a4# / =q1=#sk# 470 : =ds=AtlasLoot["Trainer"]
				{ 120, 54853, 76181 }, -- Hardened Obsidium Belt : =ds=#s10#, #a4# / =q1=#sk# 460 : =ds=AtlasLoot["Trainer"]
				{ 121, 55027, 76264 }, -- Redsteel Belt : =ds=#s10#, #a4# / =q1=#sk# 460 : =ds=AtlasLoot["Trainer"]
				{ 122, 55035, 76283 }, -- Stormforged Belt : =ds=#s10#, #a4# / =q1=#sk# 460 : =ds=AtlasLoot["Trainer"]
				{ 123, 54852, 76180 }, -- Hardened Obsidium Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 450 : =ds=AtlasLoot["Trainer"]
				{ 124, 55026, 76263 }, -- Redsteel Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 450 : =ds=AtlasLoot["Trainer"]
				{ 125, 55034, 76281 }, -- Stormforged Gauntlets : =ds=#s9#, #a4# / =q1=#sk# 450 : =ds=AtlasLoot["Trainer"]
				{ 126, 54850, 76179 }, -- Hardened Obsidium Bracers : =ds=#s8#, #a4# / =q1=#sk# 440 : =ds=AtlasLoot["Trainer"]
				{ 127, 55025, 76262 }, -- Redsteel Bracers : =ds=#s8#, #a4# / =q1=#sk# 440 : =ds=AtlasLoot["Trainer"]
				{ 128, 55033, 76280 }, -- Stormforged Bracers : =ds=#s8#, #a4# / =q1=#sk# 440 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,   49907,                                      70568 },                       -- Boots of Kingly Upheaval : =ds=AtlasLoot["Vendor"] : nil
				{ 2,   49906,                                      70566 },                       -- Hellfrozen Bonegrinders : =ds=AtlasLoot["Vendor"] : nil
				{ 3,   49903,                                      70565 },                       -- Legplates of Painful Death : =ds=AtlasLoot["Vendor"] : nil
				{ 4,   49904,                                      70567 },                       -- Pillars of Might : =ds=AtlasLoot["Vendor"] : nil
				{ 5,   49905,                                      70563 },                       -- Protectors of Life : =ds=AtlasLoot["Vendor"] : nil
				{ 6,   49902,                                      70562 },                       -- Puresteel Legplates : =ds=AtlasLoot["Vendor"] : nil
				{ 7,   [ATLASLOOT_IT_ALLIANCE] = { 47591, 67091 }, [ATLASLOOT_IT_HORDE] = { 47592, 67130 } }, -- Breastplate of the White Knight : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 8,   [ATLASLOOT_IT_ALLIANCE] = { 47570, 67092 }, [ATLASLOOT_IT_HORDE] = { 47571, 67131 } }, -- Saronite Swordbreakers : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 9,   [ATLASLOOT_IT_ALLIANCE] = { 47574, 67096 }, [ATLASLOOT_IT_HORDE] = { 47575, 67135 } }, -- Sunforged Bracers : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 10,  [ATLASLOOT_IT_ALLIANCE] = { 47593, 67095 }, [ATLASLOOT_IT_HORDE] = { 47594, 67134 } }, -- Sunforged Breastplate : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 11,  [ATLASLOOT_IT_ALLIANCE] = { 47589, 67093 }, [ATLASLOOT_IT_HORDE] = { 47590, 67132 } }, -- Titanium Razorplate : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 12,  [ATLASLOOT_IT_ALLIANCE] = { 47572, 67094 }, [ATLASLOOT_IT_HORDE] = { 47573, 67133 } }, -- Titanium Spikeguards : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 13,  45559,                                      63188 },                       -- Battlelord's Plate Boots : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 14,  45550,                                      63187 },                       -- Belt of the Titans : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 15,  45551,                                      63191 },                       -- Indestructible Plate Girdle : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 16,  45552,                                      63189 },                       -- Plate Girdle of Righteousness : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 17,  45560,                                      63192 },                       -- Spiked Deathdealers : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 18,  45561,                                      63190 },                       -- Treads of Destiny : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 19,  41388,                                      55374 },                       -- Brilliant Titansteel Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 20,  41394,                                      55377 },                       -- Brilliant Titansteel Treads : =ds=AtlasLoot["Trainer"] : nil
				{ 21,  41386,                                      55372 },                       -- Spiked Titansteel Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 22,  41391,                                      55375 },                       -- Spiked Titansteel Treads : =ds=AtlasLoot["Trainer"] : nil
				{ 23,  41387,                                      55373 },                       -- Tempered Titansteel Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 24,  41392,                                      55376 },                       -- Tempered Titansteel Treads : =ds=AtlasLoot["Trainer"] : nil
				{ 25,  43586,                                      61008 },                       -- Icebane Chestguard : =ds=AtlasLoot["Trainer"] : nil
				{ 26,  43587,                                      61009 },                       -- Icebane Girdle : =ds=AtlasLoot["Trainer"] : nil
				{ 27,  43588,                                      61010 },                       -- Icebane Treads : =ds=AtlasLoot["Trainer"] : nil
				{ 28,  41345,                                      55303 },                       -- Daunting Legplates : =ds=AtlasLoot["Trainer"] : nil
				{ 29,  41344,                                      55302 },                       -- Helm of Command : =ds=AtlasLoot["Trainer"] : nil
				{ 30,  42725,                                      56555 },                       -- Ornate Saronite Hauberk : =ds=AtlasLoot["Trainer"] : nil
				{ 101, 42726,                                      56554 },                       -- Ornate Saronite Legplates : =ds=AtlasLoot["Trainer"] : nil
				{ 102, 42728,                                      56556 },                       -- Ornate Saronite Skullshield : =ds=AtlasLoot["Trainer"] : nil
				{ 103, 41346,                                      55304 },                       -- Righteous Greaves : =ds=AtlasLoot["Trainer"] : nil
				{ 104, 41353,                                      55311 },                       -- Savage Saronite Hauberk : =ds=AtlasLoot["Trainer"] : nil
				{ 105, 41347,                                      55310 },                       -- Savage Saronite Legplates : =ds=AtlasLoot["Trainer"] : nil
				{ 106, 41350,                                      55312 },                       -- Savage Saronite Skullshield : =ds=AtlasLoot["Trainer"] : nil
				{ 107, 41357,                                      55301 },                       -- Daunting Handguards : =ds=AtlasLoot["Trainer"] : nil
				{ 108, 42724,                                      56553 },                       -- Ornate Saronite Gauntlets : =ds=AtlasLoot["Trainer"] : nil
				{ 109, 42727,                                      56550 },                       -- Ornate Saronite Pauldrons : =ds=AtlasLoot["Trainer"] : nil
				{ 110, 42729,                                      56551 },                       -- Ornate Saronite Waistguard : =ds=AtlasLoot["Trainer"] : nil
				{ 111, 42730,                                      56552 },                       -- Ornate Saronite Walkers : =ds=AtlasLoot["Trainer"] : nil
				{ 112, 41356,                                      55300 },                       -- Righteous Gauntlets : =ds=AtlasLoot["Trainer"] : nil
				{ 113, 41349,                                      55309 },                       -- Savage Saronite Gauntlets : =ds=AtlasLoot["Trainer"] : nil
				{ 114, 41351,                                      55306 },                       -- Savage Saronite Pauldrons : =ds=AtlasLoot["Trainer"] : nil
				{ 115, 41352,                                      55307 },                       -- Savage Saronite Waistguard : =ds=AtlasLoot["Trainer"] : nil
				{ 116, 41348,                                      55308 },                       -- Savage Saronite Walkers : =ds=AtlasLoot["Trainer"] : nil
				{ 117, 42723,                                      56549 },                       -- Ornate Saronite Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 118, 41354,                                      55305 },                       -- Savage Saronite Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 119, 41355,                                      55298 },                       -- Vengeance Bindings : =ds=AtlasLoot["Trainer"] : nil
				{ 120, 41129,                                      55058 },                       -- Brilliant Saronite Breastplate : =ds=AtlasLoot["Trainer"] : nil
				{ 121, 43870,                                      59441 },                       -- Brilliant Saronite Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 122, 41189,                                      55186 },                       -- Chestplate of Conquest : =ds=AtlasLoot["Trainer"] : nil
				{ 123, 41190,                                      55187 },                       -- Legplates of Conquest : =ds=AtlasLoot["Trainer"] : nil
				{ 124, 41114,                                      55015 },                       -- Tempered Saronite Gauntlets : =ds=AtlasLoot["Trainer"] : nil
				{ 125, 41116,                                      55017 },                       -- Tempered Saronite Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 126, 41128,                                      55057 },                       -- Brilliant Saronite Boots : =ds=AtlasLoot["Trainer"] : nil
				{ 127, 43865,                                      59440 },                       -- Brilliant Saronite Pauldrons : =ds=AtlasLoot["Trainer"] : nil
				{ 128, 40673,                                      54555 },                       -- Tempered Saronite Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 129, 40675,                                      54556 },                       -- Tempered Saronite Shoulders : =ds=AtlasLoot["Trainer"] : nil
				{ 130, 43864,                                      59438 },                       -- Brilliant Saronite Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 201, 41127,                                      55056 },                       -- Brilliant Saronite Gauntlets : =ds=AtlasLoot["Trainer"] : nil
				{ 202, 40671,                                      54552 },                       -- Tempered Saronite Boots : =ds=AtlasLoot["Trainer"] : nil
				{ 203, 40672,                                      54553 },                       -- Tempered Saronite Breastplate : =ds=AtlasLoot["Trainer"] : nil
				{ 204, 43860,                                      59436 },                       -- Brilliant Saronite Belt : =ds=AtlasLoot["Trainer"] : nil
				{ 205, 41126,                                      55055 },                       -- Brilliant Saronite Legplates : =ds=AtlasLoot["Trainer"] : nil
				{ 206, 40669,                                      54551 },                       -- Tempered Saronite Belt : =ds=AtlasLoot["Trainer"] : nil
				{ 207, 40674,                                      54554 },                       -- Tempered Saronite Legplates : =ds=AtlasLoot["Trainer"] : nil
				{ 208, 40955,                                      54949 },                       -- Horned Cobalt Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 209, 40954,                                      54948 },                       -- Spiked Cobalt Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 210, 40953,                                      54946 },                       -- Spiked Cobalt Belt : =ds=AtlasLoot["Trainer"] : nil
				{ 211, 40943,                                      54947 },                       -- Spiked Cobalt Legplates : =ds=AtlasLoot["Trainer"] : nil
				{ 212, 40952,                                      54945 },                       -- Spiked Cobalt Gauntlets : =ds=AtlasLoot["Trainer"] : nil
				{ 213, 40950,                                      54941 },                       -- Spiked Cobalt Shoulders : =ds=AtlasLoot["Trainer"] : nil
				{ 214, 40949,                                      54918 },                       -- Spiked Cobalt Boots : =ds=AtlasLoot["Trainer"] : nil
				{ 215, 40951,                                      54944 },                       -- Spiked Cobalt Chestpiece : =ds=AtlasLoot["Trainer"] : nil
				{ 216, 40956,                                      54978 },                       -- Reinforced Cobalt Shoulders : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragonblight"] : nil
				{ 217, 40957,                                      54979 },                       -- Reinforced Cobalt Helm : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Grizzly Hills"] : nil
				{ 218, 40958,                                      54980 },                       -- Reinforced Cobalt Legplates : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Zul'Drak"] : nil
				{ 219, 40959,                                      54981 },                       -- Reinforced Cobalt Chestpiece : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Sholazar Basin"] : nil
				{ 220, 40942,                                      54917 },                       -- Spiked Cobalt Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 221, 39085,                                      52570 },                       -- Cobalt Chestpiece : =ds=AtlasLoot["Trainer"] : nil
				{ 222, 39084,                                      52571 },                       -- Cobalt Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 223, 39086,                                      52567 },                       -- Cobalt Legplates : =ds=AtlasLoot["Trainer"] : nil
				{ 224, 41975,                                      55835 },                       -- Cobalt Gauntlets : =ds=AtlasLoot["Trainer"] : nil
				{ 225, 41974,                                      55834 },                       -- Cobalt Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 226, 39083,                                      52572 },                       -- Cobalt Shoulders : =ds=AtlasLoot["Trainer"] : nil
				{ 227, 39087,                                      52568 },                       -- Cobalt Belt : =ds=AtlasLoot["Trainer"] : nil
				{ 228, 39088,                                      52569 },                       -- Cobalt Boots : =ds=AtlasLoot["Trainer"] : nil
			},
			[BC_DIFF] = {
				{ 1,   30034, 36389 }, -- Belt of the Guardian : =ds=#sr# 375 : nil
				{ 2,   30033, 36391 }, -- Boots of the Protector : =ds=#sr# 375 : nil
				{ 3,   28484, 34534 }, -- Bulwark of Kings : =ds=#sr# 375 : nil
				{ 4,   28485, 36257 }, -- Bulwark of the Ancient Kings : =ds=#sr# 375 : nil
				{ 5,   32571, 41134 }, -- Dawnsteel Bracers : =ds=#sr# 375 : nil
				{ 6,   32573, 41135 }, -- Dawnsteel Shoulders : =ds=#sr# 375 : nil
				{ 7,   23565, 36256 }, -- Embrace of the Twisting Nether : =ds=#sr# 375 : nil
				{ 8,   31369, 38477 }, -- Iceguard Breastplate : =ds=#sr# 375 : nil
				{ 9,   31371, 38479 }, -- Iceguard Helm : =ds=#sr# 375 : nil
				{ 10,  31370, 38478 }, -- Iceguard Leggings : =ds=#sr# 375 : nil
				{ 11,  30032, 36390 }, -- Red Belt of Battle : =ds=#sr# 375 : nil
				{ 12,  30031, 36392 }, -- Red Havoc Boots : =ds=#sr# 375 : nil
				{ 13,  32403, 40034 }, -- Shadesteel Bracers : =ds=#sr# 375 : nil
				{ 14,  32401, 40036 }, -- Shadesteel Girdle : =ds=#sr# 375 : nil
				{ 15,  32404, 40035 }, -- Shadesteel Greaves : =ds=#sr# 375 : nil
				{ 16,  32402, 40033 }, -- Shadesteel Sabots : =ds=#sr# 375 : nil
				{ 17,  32568, 41132 }, -- Swiftsteel Bracers : =ds=#sr# 375 : nil
				{ 18,  32570, 41133 }, -- Swiftsteel Shoulders : =ds=#sr# 375 : nil
				{ 19,  23564, 34530 }, -- Twisting Nether Chain Shirt : =ds=#sr# 375 : nil
				{ 20,  31364, 38473 }, -- Wildguard Breastplate : =ds=#sr# 375 : nil
				{ 21,  31368, 38476 }, -- Wildguard Helm : =ds=#sr# 375 : nil
				{ 22,  31367, 38475 }, -- Wildguard Leggings : =ds=#sr# 375 : nil
				{ 23,  23537, 29669 }, -- Black Felsteel Bracers : =ds=#sr# 365 : nil
				{ 24,  23539, 29672 }, -- Blessed Bracers : =ds=#sr# 365 : nil
				{ 25,  23538, 29671 }, -- Bracers of the Green Fortress : =ds=#sr# 365 : nil
				{ 26,  23531, 29658 }, -- Felfury Gauntlets : =ds=#sr# 365 : nil
				{ 27,  23532, 29622 }, -- Gauntlets of the Iron Tower : =ds=#sr# 365 : nil
				{ 28,  34378, 46141 }, -- Hard Khorium Battlefists : =ds=#sr# 365 : nil
				{ 29,  34377, 46144 }, -- Hard Khorium Battleplate : =ds=#sr# 365 : nil
				{ 30,  23535, 29664 }, -- Helm of the Stalwart Defender : =ds=#sr# 365 : nil
				{ 101, 23536, 29668 }, -- Oathkeeper's Helm : =ds=#sr# 365 : nil
				{ 102, 23533, 29662 }, -- Steelgrip Gauntlets : =ds=#sr# 365 : nil
				{ 103, 23534, 29663 }, -- Storm Helm : =ds=#sr# 365 : nil
				{ 104, 34379, 46142 }, -- Sunblessed Breastplate : =ds=#sr# 365 : nil
				{ 105, 34380, 46140 }, -- Sunblessed Gauntlets : =ds=#sr# 365 : nil
				{ 106, 28483, 34533 }, -- Breastplate of Kings : =ds=#sr# 350 : nil
				{ 107, 23563, 34529 }, -- Nether Chain Shirt : =ds=#sr# 350 : nil
				{ 108, 23527, 29649 }, -- Earthpeace Breastplate : =ds=#sr# 370 : nil
				{ 109, 23522, 29645 }, -- Ragesteel Breastplate : =ds=#sr# 370 : nil
				{ 110, 23526, 29648 }, -- Swiftsteel Gloves : =ds=#sr# 370 : nil
				{ 111, 23512, 29613 }, -- Enchanted Adamantite Leggings : =ds=#sr# 365 : nil
				{ 112, 23519, 29621 }, -- Felsteel Helm : =ds=#sr# 365 : nil
				{ 113, 23513, 29617 }, -- Flamebane Breastplate : =ds=#sr# 365 : nil
				{ 114, 23525, 29630 }, -- Khorium Boots : =ds=#sr# 365 : nil
				{ 115, 23520, 29642 }, -- Ragesteel Gloves : =ds=#sr# 365 : nil
				{ 116, 23521, 29643 }, -- Ragesteel Helm : =ds=#sr# 365 : nil
				{ 117, 33173, 42662 }, -- Ragesteel Shoulders : =ds=#sr# 365 : nil
				{ 118, 23509, 29610 }, -- Enchanted Adamantite Breastplate : =ds=#sr# 360 : nil
				{ 119, 23517, 29619 }, -- Felsteel Gloves : =ds=#sr# 360 : nil
				{ 120, 23518, 29620 }, -- Felsteel Leggings : =ds=#sr# 360 : nil
				{ 121, 23514, 29616 }, -- Flamebane Gloves : =ds=#sr# 360 : nil
				{ 122, 23524, 29628 }, -- Khorium Belt : =ds=#sr# 360 : nil
				{ 123, 23523, 29629 }, -- Khorium Pants : =ds=#sr# 360 : nil
				{ 124, 23510, 29608 }, -- Enchanted Adamantite Belt : =ds=#sr# 355 : nil
				{ 125, 23511, 29611 }, -- Enchanted Adamantite Boots : =ds=#sr# 355 : nil
				{ 126, 23516, 29615 }, -- Flamebane Helm : =ds=#sr# 355 : nil
				{ 127, 23515, 29614 }, -- Flamebane Bracers : =ds=#sr# 350 : nil
				{ 128, 23507, 29606 }, -- Adamantite Breastplate : =ds=#sr# 340 : nil
				{ 129, 23506, 29603 }, -- Adamantite Plate Bracers : =ds=#sr# 335 : nil
				{ 130, 23508, 29605 }, -- Adamantite Plate Gloves : =ds=#sr# 335 : nil
				{ 201, 30074, 36129 }, -- Heavy Earthforged Breastplate : =ds=#sr# 330 : nil
				{ 202, 30076, 36130 }, -- Stormforged Hauberk : =ds=#sr# 330 : nil
				{ 203, 23489, 29550 }, -- Fel Iron Breastplate : =ds=#sr# 325 : nil
				{ 204, 23490, 29556 }, -- Fel Iron Chain Tunic : =ds=#sr# 320 : nil
				{ 205, 23487, 29548 }, -- Fel Iron Plate Boots : =ds=#sr# 315 : nil
				{ 206, 23488, 29549 }, -- Fel Iron Plate Pants : =ds=#sr# 315 : nil
				{ 207, 23494, 29553 }, -- Fel Iron Chain Bracers : =ds=#sr# 315 : nil
				{ 208, 23491, 29552 }, -- Fel Iron Chain Gloves : =ds=#sr# 310 : nil
				{ 209, 23484, 29547 }, -- Fel Iron Plate Belt : =ds=#sr# 305 : nil
				{ 210, 23493, 29551 }, -- Fel Iron Chain Coif : =ds=#sr# 300 : nil
				{ 211, 23482, 29545 }, -- Fel Iron Plate Gloves : =ds=#sr# 300 : nil
			},
			[CLASSIC_DIFF] = {
				{ 1,   22194, 27589 }, -- Black Grasp of the Destroyer : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ruins of Ahn'Qiraj"]
				{ 2,   20039, 24399 }, -- Dark Iron Boots : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Exalted"]
				{ 3,   19164, 23637 }, -- Dark Iron Gauntlets : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Revered"]
				{ 4,   19148, 23636 }, -- Dark Iron Helm : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Honored"]
				{ 5,   17013, 20876 }, -- Dark Iron Leggings : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Revered"]
				{ 6,   16988, 20873 }, -- Fiery Chain Shoulders : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Revered"]
				{ 7,   12641, 16746 }, -- Invulnerable Mail : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 8,   12640, 16729 }, -- Lionheart Helm : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 9,   22191, 27590 }, -- Obsidian Mail Tunic : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Ruins of Ahn'Qiraj"]
				{ 10,  12639, 16741 }, -- Stronghold Gauntlets : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 11,  22196, 27587 }, -- Thick Obsidian Breastplate : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Temple of Ahn'Qiraj"]
				{ 12,  22385, 27829 }, -- Titanic Leggings : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 13,  17014, 20874 }, -- Dark Iron Bracers : =ds=#sr# 295 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Friendly"]
				{ 14,  16989, 20872 }, -- Fiery Chain Girdle : =ds=#sr# 295 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Honored"]
				{ 15,  20550, 24914 }, -- Darkrune Breastplate : =ds=#sr# 300 : =ds=#QUESTID:8324#
				{ 16,  20549, 24912 }, -- Darkrune Gauntlets : =ds=#sr# 300 : =ds=#QUESTID:8324#
				{ 17,  20551, 24913 }, -- Darkrune Helm : =ds=#sr# 300 : =ds=#QUESTID:8324#
				{ 18,  12618, 16745 }, -- Enchanted Thorium Breastplate : =ds=#sr# 300 : =ds=#QUESTID:7649#
				{ 19,  12620, 16742 }, -- Enchanted Thorium Helm : =ds=#sr# 300 : =ds=#QUESTID:7651#
				{ 20,  12619, 16744 }, -- Enchanted Thorium Leggings : =ds=#sr# 300 : =ds=#QUESTID:7650#
				{ 21,  19057, 23633 }, -- Gloves of the Dawn : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Argent Dawn"] - AtlasLoot["Revered"]
				{ 22,  22197, 27585 }, -- Heavy Obsidian Belt : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Friendly"]
				{ 23,  19048, 23629 }, -- Heavy Timbermaw Boots : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Timbermaw Hold"] - AtlasLoot["Revered"]
				{ 24,  12636, 16728 }, -- Helm of the Great Chief : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 25,  22764, 28463 }, -- Ironvine Belt : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Friendly"]
				{ 26,  22762, 28461 }, -- Ironvine Breastplate : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Revered"]
				{ 27,  22763, 28462 }, -- Ironvine Gloves : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Honored"]
				{ 28,  22195, 27588 }, -- Light Obsidian Belt : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Honored"]
				{ 29,  12633, 16724 }, -- Whitesoul Helm : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 30,  12422, 16663 }, -- Imperial Plate Chest : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 101, 12429, 16730 }, -- Imperial Plate Leggings : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 102, 12420, 16725 }, -- Radiant Leggings : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 103, 12613, 16731 }, -- Runic Breastplate : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dustwallow Marsh"]
				{ 104, 12614, 16732 }, -- Runic Plate Leggings : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Western Plaguelands"]
				{ 105, 12612, 16726 }, -- Runic Plate Helm : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dustwallow Marsh"]
				{ 106, 12610, 16664 }, -- Runic Plate Shoulders : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dustwallow Marsh"]
				{ 107, 12414, 16662 }, -- Thorium Leggings : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 108, 12426, 16657 }, -- Imperial Plate Boots : =ds=#sr# 295 : =ds=AtlasLoot["Trainer"]
				{ 109, 12427, 16658 }, -- Imperial Plate Helm : =ds=#sr# 295 : =ds=AtlasLoot["Trainer"]
				{ 110, 12417, 16659 }, -- Radiant Circlet : =ds=#sr# 295 : =ds=AtlasLoot["World Drop"]
				{ 111, 12632, 16661 }, -- Storm Gauntlets : =ds=#sr# 295 : =ds=AtlasLoot["World Drop"]
				{ 112, 12625, 16660 }, -- Dawnbringer Shoulders : =ds=#sr# 290 : =ds=AtlasLoot["World Drop"]
				{ 113, 19051, 23632 }, -- Girdle of the Dawn : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Argent Dawn"] - AtlasLoot["Honored"]
				{ 114, 19043, 23628 }, -- Heavy Timbermaw Belt : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Timbermaw Hold"] - AtlasLoot["Honored"]
				{ 115, 12419, 16656 }, -- Radiant Boots : =ds=#sr# 290 : =ds=AtlasLoot["World Drop"]
				{ 116, 11604, 15296 }, -- Dark Iron Plate : =ds=#sr# 285 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 117, 12418, 16654 }, -- Radiant Gloves : =ds=#sr# 285 : =ds=AtlasLoot["World Drop"]
				{ 118, 12409, 16652 }, -- Thorium Boots : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 119, 12410, 16653 }, -- Thorium Helm : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 120, 11605, 15295 }, -- Dark Iron Shoulders : =ds=#sr# 280 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 121, 11606, 15293 }, -- Dark Iron Mail : =ds=#sr# 270 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 122, 12425, 16649 }, -- Imperial Plate Bracers : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 123, 12415, 16648 }, -- Radiant Breastplate : =ds=#sr# 270 : =ds=AtlasLoot["World Drop"]
				{ 124, 12424, 16647 }, -- Imperial Plate Belt : =ds=#sr# 265 : =ds=AtlasLoot["Trainer"]
				{ 125, 12428, 16646 }, -- Imperial Plate Shoulders : =ds=#sr# 265 : =ds=AtlasLoot["Trainer"]
				{ 126, 12416, 16645 }, -- Radiant Belt : =ds=#sr# 260 : =ds=AtlasLoot["World Drop"]
				{ 127, 12408, 16644 }, -- Thorium Bracers : =ds=#sr# 255 : =ds=AtlasLoot["Trainer"]
				{ 128, 12405, 16642 }, -- Thorium Armor : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 129, 12406, 16643 }, -- Thorium Belt : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 130, 7934,  9970 }, -- Heavy Mithril Helm : =ds=#sr# 245 : =ds=AtlasLoot["World Drop"]
				{ 201, 7932,  9966 }, -- Mithril Scale Shoulders : =ds=#sr# 235 : =ds=AtlasLoot["World Drop"]
				{ 202, 7933,  9968 }, -- Heavy Mithril Boots : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 203, 7930,  9959 }, -- Heavy Mithril Breastplate : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 204, 7931,  9961 }, -- Mithril Coif : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 205, 7922,  9935 }, -- Steel Plate Helm : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 206, 7924,  9937 }, -- Mithril Scale Bracers : =ds=#sr# 215 : =ds=AtlasLoot["Vendor"]: ALIL["The Hinterlands"](ally) / ALIL["Swamp of Sorrows"](horde)
				{ 207, 7920,  9931 }, -- Mithril Scale Pants : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 208, 7921,  9933 }, -- Heavy Mithril Pants : =ds=#sr# 210 : =ds=AtlasLoot["World Drop"]
				{ 209, 7919,  9928 }, -- Heavy Mithril Gauntlet : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 210, 7918,  9926 }, -- Heavy Mithril Shoulder : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 211, 7963,  9916 }, -- Steel Breastplate : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 212, 3847,  3515 }, -- Golden Scale Boots : =ds=#sr# 200 : =ds=AtlasLoot["World Drop"]
				{ 213, 3845,  3511 }, -- Golden Scale Cuirass : =ds=#sr# 195 : =ds=AtlasLoot["World Drop"]
				{ 214, 3837,  3503 }, -- Golden Scale Coif : =ds=#sr# 190 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Gadgetzan"]
				{ 215, 3846,  3513 }, -- Polished Steel Boots : =ds=#sr# 185 : =ds=AtlasLoot["World Drop"]
				{ 216, 6040,  7223 }, -- Golden Scale Bracers : =ds=#sr# 185 : =ds=AtlasLoot["Trainer"]
				{ 217, 7917,  9820 }, -- Barbaric Iron Gloves : =ds=#sr# 185 : =ds=#QUESTID:2755#
				{ 218, 7916,  9818 }, -- Barbaric Iron Boots : =ds=#sr# 180 : =ds=#QUESTID:2753#
				{ 219, 3844,  3508 }, -- Green Iron Hauberk : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
				{ 220, 7915,  9814 }, -- Barbaric Iron Helm : =ds=#sr# 175 : =ds=#QUESTID:2754#
				{ 221, 3841,  3505 }, -- Golden Scale Shoulders : =ds=#sr# 175 : =ds=AtlasLoot["World Drop"]
				{ 222, 3843,  3507 }, -- Golden Scale Leggings : =ds=#sr# 170 : =ds=AtlasLoot["World Drop"]
				{ 223, 3836,  3502 }, -- Green Iron Helm : =ds=#sr# 170 : =ds=AtlasLoot["Trainer"]
				{ 224, 7914,  9813 }, -- Barbaric Iron Breastplate : =ds=#sr# 160 : =ds=#QUESTID:2751#
				{ 225, 7913,  9811 }, -- Barbaric Iron Shoulders : =ds=#sr# 160 : =ds=#QUESTID:2752#
				{ 226, 3840,  3504 }, -- Green Iron Shoulders : =ds=#sr# 160 : =ds=AtlasLoot["World Drop"]
				{ 227, 3835,  3501 }, -- Green Iron Bracers : =ds=#sr# 165 : =ds=AtlasLoot["Trainer"]
				{ 228, 3842,  3506 }, -- Green Iron Leggings : =ds=#sr# 155 : =ds=AtlasLoot["Trainer"]
				{ 229, 10423, 12259 }, -- Silvered Bronze Leggings : =ds=#sr# 155 : =ds=AtlasLoot["World Drop"]
				{ 230, 3485,  3336 }, -- Green Iron Gauntlets : =ds=#sr# 150 : =ds=AtlasLoot["World Drop"]
				{ 301, 3484,  3334 }, -- Green Iron Boots : =ds=#sr# 145 : =ds=AtlasLoot["World Drop"]
				{ 302, 2870,  2675 }, -- Shining Silver Breastplate : =ds=#sr# 145 : =ds=AtlasLoot["Trainer"]
				{ 303, 3483,  3333 }, -- Silvered Bronze Gauntlets : =ds=#sr# 135 : =ds=AtlasLoot["Trainer"]
				{ 304, 3482,  3331 }, -- Silvered Bronze Boots : =ds=#sr# 130 : =ds=AtlasLoot["Trainer"]
				{ 305, 2869,  2673 }, -- Silvered Bronze Breastplate : =ds=#sr# 130 : =ds=AtlasLoot["World Drop"]
				{ 306, 3481,  3330 }, -- Silvered Bronze Shoulders : =ds=#sr# 125 : =ds=AtlasLoot["World Drop"]
				{ 307, 2868,  2672 }, -- Patterned Bronze Bracers : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 308, 3480,  3328 }, -- Rough Bronze Shoulders : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 309, 2866,  2670 }, -- Rough Bronze Cuirass : =ds=#sr# 105 : =ds=AtlasLoot["Trainer"]
				{ 310, 2865,  2668 }, -- Rough Bronze Leggings : =ds=#sr# 105 : =ds=AtlasLoot["Trainer"]
				{ 311, 6731,  8367 }, -- Ironforge Breastplate : =ds=#sr# 100 : =ds=#QUESTID:1618#
				{ 312, 6350,  7817 }, -- Rough Bronze Boots : =ds=#sr# 95 : =ds=AtlasLoot["Trainer"]
				{ 313, 2854,  2664 }, -- Runed Copper Bracers : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
				{ 314, 2864,  2667 }, -- Runed Copper Breastplate : =ds=#sr# 80 : =ds=AtlasLoot["World Drop"]
				{ 315, 2857,  2666 }, -- Runed Copper Belt : =ds=#sr# 70 : =ds=AtlasLoot["Trainer"]
				{ 316, 3474,  3325 }, -- Gemmed Copper Gauntlets : =ds=#sr# 60 : =ds=AtlasLoot["World Drop"]
				{ 317, 3473,  3324 }, -- Runed Copper Pants : =ds=#sr# 45 : =ds=AtlasLoot["Trainer"]
				{ 318, 3472,  3323 }, -- Runed Copper Gauntlets : =ds=#sr# 40 : =ds=AtlasLoot["Trainer"]
				{ 319, 3471,  3321 }, -- Copper Chain Vest : =ds=#sr# 35 : =ds=AtlasLoot["World Drop"]
				{ 320, 2851,  2661 }, -- Copper Chain Belt : =ds=#sr# 35 : =ds=AtlasLoot["Trainer"]
				{ 321, 3469,  3319 }, -- Copper Chain Boots : =ds=#sr# 20 : =ds=AtlasLoot["Trainer"]
				{ 322, 2853,  2663 }, -- Copper Bracers : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 323, 2852,  2662 }, -- Copper Chain Pants : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 324, 10421, 12260 }, -- Rough Copper Vest : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --SmithingWeaponsShields
			name = AL["Weapons"].." & "..AL["Shields"],
			[TWW_DIFF] = {
				{ 1,   222468, 450255 },                                   -- Ironclaw Great Mace
				{ 2,   222467, 450254 },                                   -- Ironclaw Knuckles
				{ 3,   222469, 450256 },                                   -- Ironclaw Axe
				{ 4,   222466, 450253 },                                   -- Ironclaw Sword
				{ 5,   222465, 450252 },                                   -- Ironclaw Dirk
				{ 6,   222470, 450257 },                                   -- Ironclaw Great Axe
				{ 7,   222464, 450251 },                                   -- Ironclaw Stiletto
				{ 8,   222474, 450261 },                                   -- Dredger's Developed Defender
				{ 9,   222447, 450238 },                                   -- Charged Claymore
				{ 10,  222449, 450240 },                                   -- Charged Crusher
				{ 11,  222446, 450237, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Charged Facesmasher
				{ 12,  222448, 450239 },                                   -- Charged Halberd
				{ 13,  222444, 450235 },                                   -- Charged Hexsword
				{ 14,  222450, 450241 },                                   -- Charged Invoker
				{ 15,  222445, 450236 },                                   -- Charged Runeaxe
				{ 16,  222451, 450242, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Charged Slicer
				{ 17,  222439, 450230 },                                   -- Everforged Dagger
				{ 18,  222443, 450234 },                                   -- Everforged Greataxe
				{ 19,  222440, 450231 },                                   -- Everforged Longsword
				{ 20,  222442, 450233 },                                   -- Everforged Mace
				{ 21,  222438, 450229 },                                   -- Everforged Stabber
				{ 22,  222441, 450232 },                                   -- Everforged Warglaive
				{ 23,  222432, 450223 },                                   -- Everforged Defender
				{ 24,  222463, 450250 },                                   -- Siphoning Stiletto
				{ 25,  222459, 450246 },                                   -- Beledar's Bulwark
				{ 26,  225374, 455001, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Axe
				{ 27,  225367, 454998, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Dagger
				{ 28,  225376, 455003, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Greatsword
				{ 29,  225366, 454997, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Pickaxe
				{ 30,  225371, 454999, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Scepter
				{ 101, 225375, 455002, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Skewer
				{ 102, 225377, 455004, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Sword
				{ 103, 225373, 455000, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Shield
			},
			[BFA_DIFF] = {
				{ 1,   159857, 269476 }, -- Honorable Combatant's Shanker
				{ 2,   159857, 269477 }, -- Honorable Combatant's Shanker
				{ 3,   159857, 269478 }, -- Honorable Combatant's Shanker
				{ 5,   159853, 269464 }, -- Honorable Combatant's Cutlass
				{ 6,   159853, 269465 }, -- Honorable Combatant's Cutlass
				{ 7,   159853, 269466 }, -- Honorable Combatant's Cutlass
				{ 9,   159858, 269479 }, -- Honorable Combatant's Polearm
				{ 10,  159858, 269480 }, -- Honorable Combatant's Polearm
				{ 11,  159858, 269481 }, -- Honorable Combatant's Polearm
				{ 13,  159855, 269470 }, -- Honorable Combatant's Deckpounder
				{ 14,  159855, 269471 }, -- Honorable Combatant's Deckpounder
				{ 15,  159855, 269472 }, -- Honorable Combatant's Deckpounder
				{ 16,  152835, 253156 }, -- Stormsteel Dagger
				{ 17,  152835, 253157 }, -- Stormsteel Dagger
				{ 18,  152835, 253158 }, -- Stormsteel Dagger
				{ 20,  162665, 278131 }, -- Stormsteel Saber
				{ 21,  162665, 278132 }, -- Stormsteel Saber
				{ 22,  162665, 278133 }, -- Stormsteel Saber
				{ 24,  152834, 253159 }, -- Stormsteel Spear
				{ 25,  152834, 253160 }, -- Stormsteel Spear
				{ 26,  152834, 253161 }, -- Stormsteel Spear
				{ 28,  162653, 253144 }, -- Honorable Combatant's Spellblade
				{ 29,  162653, 253149 }, -- Honorable Combatant's Spellblade
				{ 30,  162653, 256786 }, -- Honorable Combatant's Spellblade
				{ 101, 152827, 253125 }, -- Monel-Hardened Cutlass
				{ 102, 152832, 253138 }, -- Monel-Hardened Shanker
				{ 103, 152833, 253141 }, -- Monel-Hardened Polearm
				{ 104, 152831, 253132 }, -- Monel-Hardened Deckpounder
				{ 105, 152828, 253135 }, -- Monel-Hardened Claymore
			},
			[WOD_DIFF] = {
				{ 1,   "120259:Stage6W", 187514 },                        -- Steelforged Axe (Stage 6),
				{ 9,   "120259:Stage5W", 187490 },                        -- Steelforged Axe (Stage 5),
				{ 16,  "120259:Stage4W", 171710 },                        -- Steelforged Axe (Stage 4),
				{ 24,  "120259:Stage3W", 171710 },                        -- Steelforged Axe (Stage 3),
				{ 101, "120259:Stage2W", 171710 },                        -- Steelforged Axe (Stage 2)
				{ 109, "120259:Stage1",  178243, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Steelforged Axe (Stage 1) (Sold Ashran)

				{ 2,   "116644:Stage6W", 187514 },                        -- Steelforged Dagger (Stage 6)
				{ 10,  "116644:Stage5W", 187490 },                        -- Steelforged Dagger (Stage 5)
				{ 17,  "116644:Stage4W", 171710 },                        -- Steelforged Dagger (Stage 4)
				{ 25,  "116644:Stage3W", 171710 },                        -- Steelforged Dagger (Stage 3)
				{ 102, "116644:Stage2W", 171710 },                        -- Steelforged Dagger (Stage 2)
				{ 110, "116644:Stage1",  171696, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Steelforged Dagger (Stage 1) (Sold Ashran)

				{ 3,   "116646:Stage6W", 187514 },                        -- Steelforged Hammer (Stage 6)
				{ 11,  "116646:Stage5W", 187490 },                        -- Steelforged Hammer (Stage 5)
				{ 18,  "116646:Stage4W", 171710 },                        -- Steelforged Hammer (Stage 4)
				{ 26,  "116646:Stage3W", 171710 },                        -- Steelforged Hammer (Stage 3)
				{ 103, "116646:Stage2W", 171710 },                        -- Steelforged Hammer (Stage 2)
				{ 111, "116646:Stage1",  171697, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Steelforged Hammer (Stage 1) (Sold Ashran)

				{ 4,   "116454:Stage6W", 187514 },                        -- Steelforged Saber (Stage 6)
				{ 12,  "116454:Stage5W", 187490 },                        -- Steelforged Saber (Stage 5)
				{ 19,  "116454:Stage4W", 171710 },                        -- Steelforged Saber (Stage 4)
				{ 27,  "116454:Stage3W", 171710 },                        -- Steelforged Saber (Stage 3)
				{ 104, "116454:Stage2W", 171710 },                        -- Steelforged Saber (Stage 2)
				{ 112, "116454:Stage1",  171695, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Steelforged Saber (Stage 1) (Sold Ashran)

				{ 5,   "116453:Stage6W", 187514 },                        -- Steelforged Greataxe (Stage 6)
				{ 13,  "116453:Stage5W", 187490 },                        -- Steelforged Greataxe (Stage 5)
				{ 20,  "116453:Stage4W", 171710 },                        -- Steelforged Greataxe (Stage 4)
				{ 28,  "116453:Stage3W", 171710 },                        -- Steelforged Greataxe (Stage 3)
				{ 105, "116453:Stage2W", 171710 },                        -- Steelforged Greataxe (Stage 2)
				{ 113, "116453:Stage1",  171694, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Steelforged Greataxe (Stage 1) (Sold Ashran)

				{ 6,   "120261:Stage6W", 187514 },                        -- Steelforged Aegis (Stage 6)
				{ 14,  "120261:Stage5W", 187490 },                        -- Steelforged Aegis (Stage 5)
				{ 21,  "120261:Stage4W", 171710 },                        -- Steelforged Aegis (Stage 4)
				{ 29,  "120261:Stage3W", 171710 },                        -- Steelforged Aegis (Stage 3)
				{ 106, "120261:Stage2W", 171710 },                        -- Steelforged Aegis (Stage 2)
				{ 114, "120261:Stage1",  178245, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Steelforged Aegis (Stage 1) (Sold Ashran)

				{ 7,   "116647:Stage6W", 187514 },                        -- Steelforged Shield (Stage 6)
				{ 15,  "116647:Stage5W", 187490 },                        -- Steelforged Shield (Stage 5)
				{ 22,  "116647:Stage4W", 171710 },                        -- Steelforged Shield (Stage 4)
				{ 30,  "116647:Stage3W", 171710 },                        -- Steelforged Shield (Stage 3)
				{ 107, "116647:Stage2W", 171710 },                        -- Steelforged Shield (Stage 2)
				{ 115, "116647:Stage1",  171698, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Steelforged Shield (Stage 1) (Sold Ashran)

			},
			[MOP_DIFF] = {
				{ 1,   98776, 143195 },                                 -- Crafted Malevolent Gladiator's Barrier : =ds=#w8# / =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 2,   98810, 143196 },                                 -- Crafted Malevolent Gladiator's Redoubt : =ds=#w8# / =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 3,   98920, 143197 },                                 -- Crafted Malevolent Gladiator's Shield Wall : =ds=#w8# / =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]: spell143255
				{ 4,   82970, 122644 },                                 -- Masterwork Forgewire Axe : =ds=#h1#, #w1# / =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 5,   82974, 122648 },                                 -- Masterwork Ghost Shard : =ds=#h1#, #w4# / =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 6,   82971, 122645 },                                 -- Masterwork Ghost-Forged Blade : =ds=#h1#, #w10# / =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 7,   82972, 122646 },                                 -- Masterwork Phantasmal Hammer : =ds=#h1#, #w6# / =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 8,   82973, 122647 },                                 -- Masterwork Spiritblade Decimator : =ds=#h2#, #w1# / =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 9,   82968, 122642, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Lightsteel Shield : =ds=#w8# / =ds=#sr# 575 : =ds=AtlasLoot["Vendor"]
				{ 10,  82969, 122643, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Masterwork Spiritguard Shield : =ds=#w8# / =ds=#sr# 575 : =ds=AtlasLoot["Vendor"]
				{ 11,  82967, 122641 },                                 -- Ghost Shard : =ds=#h1#, #w4# / =ds=#sr# 565 : =ds=AtlasLoot["Trainer"]
				{ 12,  82966, 122640 },                                 -- Spiritblade Decimator : =ds=#h2#, #w1# / =ds=#sr# 565 : =ds=AtlasLoot["Trainer"]
				{ 13,  82965, 122639 },                                 -- Phantasmal Hammer : =ds=#h1#, #w6# / =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 14,  82963, 122637 },                                 -- Forgewire Axe : =ds=#h1#, #w1# / =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 15,  82964, 122638 },                                 -- Ghost-Forged Blade : =ds=#h1#, #w10# / =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 16,  82962, 122636 },                                 -- Spiritguard Shield : =ds=#w8# / =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 17,  82961, 122635 },                                 -- Lightsteel Shield : =ds=#w8# / =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 18,  94591, 138892 },                                 -- Blazefury, Reborn : =ds=#h1#, #w10# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138890
				{ 19,  94580, 138881 },                                 -- Bloodmoon, Reborn : =ds=#h2#, #w1# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138879
				{ 20,  94585, 138886 },                                 -- Dragonstrike, Reborn : =ds=#h1#, #w6# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138885
				{ 21,  94592, 138893 },                                 -- Lionheart Executioner, Reborn : =ds=#h2#, #w10# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138891
				{ 22,  94586, 138887 },                                 -- Stormherald, Reborn : =ds=#h2#, #w6# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138884
				{ 23,  94579, 138880 },                                 -- Wicked Edge of the Planes, Reborn : =ds=#h1#, #w1# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138878
				{ 24,  94577, 138878 },                                 -- Black Planar Edge, Reborn : =ds=#h1#, #w1# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138876
				{ 25,  94589, 138890 },                                 -- Blazeguard, Reborn : =ds=#h1#, #w10# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138888
				{ 26,  94583, 138884 },                                 -- Deep Thunder, Reborn : =ds=#h2#, #w6# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138883
				{ 27,  94584, 138885 },                                 -- Dragonmaw, Reborn : =ds=#h1#, #w6# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138882
				{ 28,  94590, 138891 },                                 -- Lionheart Champion, Reborn : =ds=#h2#, #w10# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138889
				{ 29,  94578, 138879 },                                 -- Mooncleaver, Reborn : =ds=#h2#, #w1# / =ds=#sr# 500 : =ds=AtlasLoot["Discovery"]: spell138877
				{ 30,  94581, 138882 },                                 -- Drakefist Hammer, Reborn : =ds=#h1#, #w6# / =ds=#sr# 500 : =ds=#QUESTID:32621#
				{ 101, 94587, 138888 },                                 -- Fireguard, Reborn : =ds=#h1#, #w10# / =ds=#sr# 500 : =ds=#QUESTID:32621#
				{ 102, 94588, 138889 },                                 -- Lionheart Blade, Reborn : =ds=#h2#, #w10# / =ds=#sr# 500 : =ds=#QUESTID:32621#
				{ 103, 94576, 138877 },                                 -- Lunar Crescent, Reborn : =ds=#h2#, #w1# / =ds=#sr# 500 : =ds=#QUESTID:32621#
				{ 104, 94575, 138876 },                                 -- The Planar Edge, Reborn : =ds=#h1#, #w1# / =ds=#sr# 500 : =ds=#QUESTID:32621#
				{ 105, 94582, 138883 },                                 -- Thunder, Reborn : =ds=#h2#, #w6# / =ds=#sr# 500 : =ds=#QUESTID:32621#
			},
			[CATA_DIFF] = {
				{ 1,  70155, 99652 }, -- Brainsplinter : =ds=#h1#, #w4# / =q1=#sk# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 2,  70158, 99655 }, -- Elementium-Edged Scalper : =ds=#h1#, #w1# / =q1=#sk# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 3,  70157, 99654 }, -- Lightforged Elementium Hammer : =ds=#h1#, #w6# / =q1=#sk# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 4,  70164, 99658 }, -- Masterwork Elementium Deathblade : =ds=#h2#, #w10# / =q1=#sk# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 5,  70156, 99653 }, -- Masterwork Elementium Spellblade : =ds=#h1#, #w4# / =q1=#sk# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 6,  70162, 99656 }, -- Pyrium Spellward : =ds=#h1#, #w10# / =q1=#sk# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 7,  70163, 99657 }, -- Unbreakable Guardian : =ds=#h1#, #w10# / =q1=#sk# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 8,  70165, 99660 }, -- Witch-Hunter's Harvester : =ds=#h2#, #w7# / =q1=#sk# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 9,  55069, 76454 }, -- Elementium Earthguard : =ds=#w8# / =q1=#sk# 520 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 10, 55070, 76455 }, -- Elementium Stormshield : =ds=#w8# / =q1=#sk# 520 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 11, 55066, 76451 }, -- Elementium Poleaxe : =ds=#w7# / =q1=#sk# 520 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 12, 55068, 76453 }, -- Elementium Shank : =ds=#h1#, #w4# / =q1=#sk# 520 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 13, 55064, 76449 }, -- Elementium Spellblade : =ds=#h1#, #w4# / =q1=#sk# 520 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 14, 67605, 94732 }, -- Forged Elementium Mindcrusher : =ds=#h2#, #w6# / =q1=#sk# 520 : =ds=AtlasLoot["Vendor"] "5 #pyriumbar#"
				{ 15, 67602, 94718 }, -- Elementium Gutslicer : =ds=#h1#, #w1# / =q1=#sk# 515 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 16, 55067, 76452 }, -- Elementium Bonesplitter : =ds=#h1#, #w1# / =q1=#sk# 515 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 17, 55065, 76450 }, -- Elementium Hammer : =ds=#h1#, #w6# / =q1=#sk# 515 : =ds=AtlasLoot["Vendor"] "2 #hardenedelementiumbar#"
				{ 18, 55043, 76433 }, -- Decapitator's Razor : =ds=#h1#, #w1# / =q1=#sk# 460 : =ds=AtlasLoot["Trainer"]
				{ 19, 55044, 76434 }, -- Cold-Forged Shank : =ds=#h1#, #w4# / =q1=#sk# 470 : =ds=AtlasLoot["Trainer"]
				{ 20, 55246, 76474 }, -- Obsidium Bladespear : =ds=#w7# / =q1=#sk# 470 : =ds=AtlasLoot["Trainer"]
				{ 21, 55045, 76435 }, -- Fire-Etched Dagger : =ds=#h1#, #w4# / =q1=#sk# 480 : =ds=AtlasLoot["Trainer"]
				{ 22, 55046, 76436 }, -- Lifeforce Hammer : =ds=#h1#, #w6#   =q1=#sk# 480 : =ds=AtlasLoot["Trainer"]
				{ 23, 55052, 76437 }, -- Obsidium Executioner : =ds=#h2#, #w10# / =q1=#sk# 480 : =ds=AtlasLoot["Trainer"]
				{ 24, 55042, 76293 }, -- Stormforged Shield : =ds=#w8# / =q1=#sk# 470 : =ds=AtlasLoot["Trainer"]
				{ 25, 55041, 76291 }, -- Hardened Obsidium Shield : =ds=#w8# / =q1=#sk# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  45085, 63182 }, -- Titansteel Spellblade : =ds=AtlasLoot["Trainer"] : nil
				{ 2,  41383, 55370 }, -- Titansteel Bonecrusher : =ds=AtlasLoot["Trainer"] : nil
				{ 3,  41257, 55369 }, -- Titansteel Destroyer : =ds=AtlasLoot["Trainer"] : nil
				{ 4,  41384, 55371 }, -- Titansteel Guardian : =ds=AtlasLoot["Trainer"] : nil
				{ 5,  42435, 56234 }, -- Titansteel Shanker : =ds=AtlasLoot["Trainer"] : nil
				{ 6,  42508, 56400 }, -- Titansteel Shield Wall : =ds=AtlasLoot["Trainer"] : nil
				{ 7,  41186, 55183 }, -- Corroded Saronite Edge : =ds=AtlasLoot["Trainer"] : nil
				{ 8,  41187, 55184 }, -- Corroded Saronite Woundbringer : =ds=AtlasLoot["Trainer"] : nil
				{ 9,  41188, 55185 }, -- Saronite Mindcrusher : =ds=AtlasLoot["Trainer"] : nil
				{ 10, 42443, 56280 }, -- Cudgel of Saronite Justice : =ds=AtlasLoot["Trainer"] : nil
				{ 11, 41185, 55182 }, -- Furious Saronite Beatstick : =ds=AtlasLoot["Trainer"] : nil
				{ 12, 43871, 59442 }, -- Saronite Spellblade : =ds=AtlasLoot["Trainer"] : nil
				{ 13, 41113, 55014 }, -- Saronite Bulwark : =ds=AtlasLoot["Trainer"] : nil
				{ 14, 41184, 55181 }, -- Saronite Shiv : =ds=AtlasLoot["Trainer"] : nil
				{ 15, 41183, 55179 }, -- Saronite Ambusher : =ds=AtlasLoot["Trainer"] : nil
				{ 16, 41182, 55177 }, -- Savage Cobalt Slicer : =ds=AtlasLoot["Trainer"] : nil
				{ 17, 41181, 55174 }, -- Honed Cobalt Cleaver : =ds=AtlasLoot["Trainer"] : nil
				{ 18, 40670, 54557 }, -- Saronite Defender : =ds=AtlasLoot["Trainer"] : nil
				{ 19, 41117, 55013 }, -- Saronite Protector : =ds=AtlasLoot["Trainer"] : nil
				{ 20, 41243, 55204 }, -- Notched Cobalt War Axe : =ds=AtlasLoot["Trainer"] : nil
				{ 21, 41240, 55201 }, -- Cobalt Tenderizer : =ds=AtlasLoot["Trainer"] : nil
				{ 22, 41239, 55200 }, -- Sturdy Cobalt Quickblade : =ds=AtlasLoot["Trainer"] : nil
				{ 23, 41242, 55203 }, -- Forged Cobalt Claymore : =ds=AtlasLoot["Trainer"] : nil
				{ 24, 40668, 54550 }, -- Cobalt Triangle Shield : =ds=AtlasLoot["Trainer"] : nil
			},
			[BC_DIFF] = {
				{ 1,   28432, 34542 }, -- Black Planar Edge : =ds=#sr# 375 : nil
				{ 2,   28427, 36258 }, -- Blazefury : =ds=#sr# 375 : nil
				{ 3,   28426, 34537 }, -- Blazeguard : =ds=#sr# 375 : nil
				{ 4,   28436, 36261 }, -- Bloodmoon : =ds=#sr# 375 : nil
				{ 5,   28441, 34548 }, -- Deep Thunder : =ds=#sr# 375 : nil
				{ 6,   28438, 34546 }, -- Dragonmaw : =ds=#sr# 375 : nil
				{ 7,   28439, 36262 }, -- Dragonstrike : =ds=#sr# 375 : nil
				{ 8,   28429, 34540 }, -- Lionheart Champion : =ds=#sr# 375 : nil
				{ 9,   28430, 36259 }, -- Lionheart Executioner : =ds=#sr# 375 : nil
				{ 10,  28435, 34544 }, -- Mooncleaver : =ds=#sr# 375 : nil
				{ 11,  28442, 36263 }, -- Stormherald : =ds=#sr# 375 : nil
				{ 12,  28433, 36260 }, -- Wicked Edge of the Planes : =ds=#sr# 375 : nil
				{ 13,  23555, 29699 }, -- Dirge : =ds=#sr# 365 : nil
				{ 14,  23554, 29698 }, -- Eternium Runed Blade : =ds=#sr# 365 : nil
				{ 15,  23542, 29694 }, -- Fel Edged Battleaxe : =ds=#sr# 365 : nil
				{ 16,  23546, 29697 }, -- Fel Hardened Maul : =ds=#sr# 365 : nil
				{ 17,  23540, 29692 }, -- Felsteel Longblade : =ds=#sr# 365 : nil
				{ 18,  23543, 29695 }, -- Felsteel Reaper : =ds=#sr# 365 : nil
				{ 19,  32854, 43846 }, -- Hammer of Righteous Might : =ds=#sr# 365 : nil
				{ 20,  23556, 29700 }, -- Hand of Eternity : =ds=#sr# 365 : nil
				{ 21,  23541, 29693 }, -- Khorium Champion : =ds=#sr# 365 : nil
				{ 22,  23544, 29696 }, -- Runic Hammer : =ds=#sr# 365 : nil
				{ 23,  28437, 34545 }, -- Drakefist Hammer : =ds=#sr# 350 : nil
				{ 24,  28425, 34535 }, -- Fireguard : =ds=#sr# 350 : nil
				{ 25,  28428, 34538 }, -- Lionheart Blade : =ds=#sr# 350 : nil
				{ 26,  28434, 34543 }, -- Lunar Crescent : =ds=#sr# 350 : nil
				{ 27,  28431, 34541 }, -- The Planar Edge : =ds=#sr# 350 : nil
				{ 28,  28440, 34547 }, -- Thunder : =ds=#sr# 350 : nil
				{ 29,  30093, 36137 }, -- Great Earthforged Hammer : =ds=#sr# 330 : nil
				{ 30,  30089, 36136 }, -- Lavaforged Warhammer : =ds=#sr# 330 : nil
				{ 101, 30088, 36135 }, -- Skyforged Great Axe : =ds=#sr# 330 : nil
				{ 102, 30086, 36133 }, -- Stoneforged Claymore : =ds=#sr# 330 : nil
				{ 103, 30087, 36134 }, -- Stormforged Axe : =ds=#sr# 330 : nil
				{ 104, 30077, 36131 }, -- Windforged Rapier : =ds=#sr# 330 : nil
				{ 105, 23505, 29571 }, -- Adamantite Rapier : =ds=#sr# 335 : nil
				{ 106, 23503, 29568 }, -- Adamantite Cleaver : =ds=#sr# 330 : nil
				{ 107, 23504, 29569 }, -- Adamantite Dagger : =ds=#sr# 330 : nil
				{ 108, 23502, 29566 }, -- Adamantite Maul : =ds=#sr# 325 : nil
				{ 109, 23499, 29565 }, -- Fel Iron Greatsword : =ds=#sr# 320 : nil
				{ 110, 23498, 29558 }, -- Fel Iron Hammer : =ds=#sr# 315 : nil
				{ 111, 23497, 29557 }, -- Fel Iron Hatchet : =ds=#sr# 310 : nil
			},
			[CLASSIC_DIFF] = {
				{ 1,   19166, 23638 }, -- Black Amnesty : =ds=#h1#, #w4# / #sk# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Revered"]
				{ 2,   19167, 23639 }, -- Blackfury : =ds=#w7# / #sk# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Revered"]
				{ 3,   19168, 23652 }, -- Blackguard : =ds=#h1#, #w10# / #sk# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Exalted"]
				{ 4,   19170, 23650 }, -- Ebon Hand : =ds=#h1#, #w6# / #sk# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Exalted"]
				{ 5,   19169, 23653 }, -- Nightfall : =ds=#h2#, #w1# / #sk# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Exalted"]
				{ 6,   22384, 27830 }, -- Persuader : =ds=#h1#, #w6# / #sk# 300 : =ds=AtlasLoot["World Drop"]
				{ 7,   22383, 27832 }, -- Sageblade : =ds=#h1#, #w10# / #sk# 300 : =ds=AtlasLoot["World Drop"]
				{ 8,   17193, 21161 }, -- Sulfuron Hammer : =ds=#h2#, #w6# / #sk# 300 : =ds=#QUESTID:7604#
				{ 9,   22198, 27586 }, -- Jagged Obsidian Shield : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Revered"]
				{ 10,  12798, 16991 }, -- Annihilator : =ds=#h1#, #w1# / #sk# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Lower Blackrock Spire"]
				{ 11,  12790, 16990 }, -- Arcanite Champion : =ds=#h2#, #w10# / #sk# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Upper Blackrock Spire"]
				{ 12,  12784, 16994 }, -- Arcanite Reaper : =ds=#h2#, #w1# / #sk# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Lower Blackrock Spire"]
				{ 13,  17016, 20897 }, -- Dark Iron Destroyer : =ds=#h1#, #w1# / #sk# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Honored"]
				{ 14,  17015, 20890 }, -- Dark Iron Reaver : =ds=#h1#, #w10# / #sk# 300 : =ds=AtlasLoot_IngameLocales["Thorium Brotherhood"] - AtlasLoot["Honored"]
				{ 15,  12797, 16992 }, -- Frostguard : =ds=#h1#, #w10# / #sk# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Western Plaguelands"]
				{ 16,  12796, 16988 }, -- Hammer of the Titans : =ds=#h2#, #w6# / #sk# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Stratholme"]
				{ 17,  12783, 16995 }, -- Heartseeker : =ds=#h1#, #w4# / #sk# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Stratholme"]
				{ 18,  12794, 16993 }, -- Masterwork Stormhammer : =ds=#h1#, #w6# / #sk# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Upper Blackrock Spire"]
				{ 19,  12782, 16985 }, -- Corruption : =ds=#h2#, #w10# / #sk# 290 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Stratholme"]
				{ 20,  12781, 16983 }, -- Serenity : =ds=#h1#, #w6# / #sk# 285 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Stratholme"]
				{ 21,  12775, 16971 }, -- Huge Thorium Battleaxe : =ds=#h2#, #w1# / #sk# 280 : =ds=AtlasLoot["Trainer"]
				{ 22,  11607, 15294 }, -- Dark Iron Sunderer : =ds=#h2#, #w1# / #sk# 275 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 23,  12773, 16969 }, -- Ornate Thorium Handaxe : =ds=#h1#, #w1# / #sk# 275 : =ds=AtlasLoot["Trainer"]
				{ 24,  7961,  10007 }, -- Phantom Blade : =ds=#h1#, #w10# / #sk# 270 : nil
				{ 25,  11608, 15292 }, -- Dark Iron Pulverizer : =ds=#h2#, #w6# / #sk# 265 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 26,  7947,  10013 }, -- Ebon Shiv : =ds=#h1#, #w4# / #sk# 255 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Western Plaguelands"]
				{ 27,  7946,  10009 }, -- Runed Mithril Hammer : =ds=#h1#, #w6# / #sk# 245 : =ds=AtlasLoot["World Drop"]
				{ 28,  7944,  10005 }, -- Dazzling Mithril Rapier : =ds=#h1#, #w10# / #sk# 240 : =ds=AtlasLoot["World Drop"]
				{ 29,  7945,  10001 }, -- Big Black Mace : =ds=#h1#, #w6# / #sk# 230 : =ds=AtlasLoot["Trainer"]
				{ 30,  7943,  9997 }, -- Wicked Mithril Blade : =ds=#h1#, #w10# / #sk# 225 : =ds=AtlasLoot["World Drop"]
				{ 101, 7942,  9995 }, -- Blue Glittering Axe : =ds=#h1#, #w1# / #sk# 220 : =ds=AtlasLoot["World Drop"]
				{ 102, 7941,  9993 }, -- Heavy Mithril Axe : =ds=#h1#, #w1# / #sk# 210 : =ds=AtlasLoot["Trainer"]
				{ 103, 3854,  3497 }, -- Frost Tiger Blade : =ds=#h2#, #w10# / #sk# 200 : =ds=AtlasLoot["World Drop"]
				{ 104, 3856,  3500 }, -- Shadow Crescent Axe : =ds=#h2#, #w1# / #sk# 200 : =ds=AtlasLoot["World Drop"]
				{ 105, 17704, 21913 }, -- Edge of Winter : =ds=#h1#, #w1# / #sk# 190 : =ds=AtlasLoot["Feast of Winter Veil"]
				{ 106, 12260, 15973 }, -- Searing Golden Blade : =ds=#h1#, #w4# / #sk# 190 : =ds=AtlasLoot["World Drop"]
				{ 107, 3855,  3498 }, -- Massive Iron Axe : =ds=#h2#, #w1# / #sk# 185 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Northern Stranglethorn"]
				{ 108, 12259, 15972 }, -- Glinting Steel Dagger : =ds=#h1#, #w4# / #sk# 180 : =ds=AtlasLoot["Trainer"]
				{ 109, 3853,  3496 }, -- Moonsteel Broadsword : =ds=#h2#, #w10# / #sk# 180 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Booty Bay"]
				{ 110, 3850,  3493 }, -- Jade Serpentblade : =ds=#h1#, #w10# / #sk# 175 : =ds=AtlasLoot["World Drop"]
				{ 111, 3852,  3495 }, -- Golden Iron Destroyer : =ds=#h2#, #w6# / #sk# 170 : =ds=AtlasLoot["World Drop"]
				{ 112, 3849,  3492 }, -- Hardened Iron Shortsword : =ds=#h1#, #w10# / #sk# 160 : =ds=AtlasLoot["Vendor"]
				{ 113, 3851,  3494 }, -- Solid Iron Maul : =ds=#h2#, #w6# / #sk# 155 : =ds=AtlasLoot["Vendor"]
				{ 114, 3492,  3297 }, -- Mighty Iron Hammer : =ds=#h1#, #w6# / #sk# 145 : =ds=AtlasLoot["World Drop"]
				{ 115, 5541,  6518 }, -- Iridescent Hammer : =ds=#h1#, #w6# / #sk# 140 : =ds=AtlasLoot["World Drop"]
				{ 116, 7958,  9987 }, -- Bronze Battle Axe : =ds=#h2#, #w1# / #sk# 135 : =ds=AtlasLoot["Trainer"]
				{ 117, 7957,  9986 }, -- Bronze Greatsword : =ds=#h2#, #w10 / #sk# 130 : =ds=AtlasLoot["Trainer"]
				{ 118, 3491,  3296 }, -- Heavy Bronze Mace : =ds=#h1#, #w6# / #sk# 130 : =ds=AtlasLoot["Trainer"]
				{ 119, 7956,  9985 }, -- Bronze Warhammer : =ds=#h2#, #w6# / #sk# 125 : =ds=AtlasLoot["Trainer"]
				{ 120, 3490,  3295 }, -- Deadly Bronze Poniard : =ds=#h1#, #w4# / #sk# 125 : =ds=AtlasLoot["World Drop"]
				{ 121, 2850,  2742 }, -- Bronze Shortsword : =ds=#h1#, #w10# / #sk# 120 : =ds=AtlasLoot["Trainer"]
				{ 122, 2849,  2741 }, -- Bronze Axe : =ds=#h1#, #w1# / #sk# 115 : =ds=AtlasLoot["Trainer"]
				{ 123, 2848,  2740 }, -- Bronze Mace : =ds=#h1#, #w6# / #sk# 110 : =ds=AtlasLoot["Trainer"]
				{ 124, 5540,  6517 }, -- Pearl-Handled Dagger : =ds=#h1#, #w4# / #sk# 110 : =ds=AtlasLoot["Trainer"]
				{ 125, 3848,  3491 }, -- Big Bronze Knife : =ds=#h1#, #w4# / #sk# 105 : =ds=AtlasLoot["Trainer"]
				{ 126, 3487,  3292 }, -- Heavy Copper Broadsword : =ds=#h2#, #w10# / #sk# 95 : =ds=AtlasLoot["Trainer"]
				{ 127, 3489,  3294 }, -- Thick War Axe : =ds=#h1#, #w1# / #sk# 70 : =ds=AtlasLoot["Trainer"]
				{ 128, 6214,  7408 }, -- Heavy Copper Maul : =ds=#h2#, #w6# / #sk# 65 : =ds=AtlasLoot["Trainer"]
				{ 129, 3488,  3293 }, -- Copper Battle Axe : =ds=#h2#, #w1# / #sk# 35 : =ds=AtlasLoot["Trainer"]
				{ 130, 33791, 43549 }, -- Heavy Copper Longsword : =ds=#h1#, #w10# / #sk# 35 : =ds=#QUESTID:1578#
				{ 201, 7955,  9983 }, -- Copper Claymore : =ds=#h2#, #w10# / #sk# 30 : =ds=AtlasLoot["Trainer"]
				{ 202, 7166,  8880 }, -- Copper Dagger : =ds=#h1#, #w4# / #sk# 30 : =ds=AtlasLoot["Trainer"]
				{ 203, 2847,  2739 }, -- Copper Shortsword : =ds=#h3#, #w10# / #sk# 25 : =ds=AtlasLoot["Trainer"]
				{ 204, 2845,  2738 }, -- Copper Axe : =ds=#h3#, #w1# / #sk# 20 : =ds=AtlasLoot["Trainer"]
				{ 205, 2844,  2737 }, -- Copper Mace : =ds=#h3#, #w6# / #sk# 15 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --SmithingMisc
			name = AL["Miscellaneous"],
			[TWW_DIFF] = {
				{ 1,  222417, 450216 },                                   -- Core Alloy
				{ 2,  222426, 450219 },                                   -- Ironclaw Alloy
				{ 3,  222420, 450217 },                                   -- Charged Alloy
				{ 4,  222423, 450218, [ATLASLOOT_IT_AMOUNT1] = 2 },       -- Sanctified Alloy
				{ 6,  222499, 450284 },                                   -- Forged Framework
				{ 7,  222511, 450288 },                                   -- Adjustable Framework
				{ 8,  222514, 450289 },                                   -- Tempered Framework
				{ 10, 224765, 453727 },                                   -- Everburning Ignition
				{ 10, 225660, 450283 },                                   -- Earthen Master's Hammer
				{ 12, 222520, 450291 },                                   -- Coreforged Repair Hammer
				{ 13, 222523, 450292, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Coreforged Skeleton Key
			},
			[BFA_DIFF] = {
				{ 1,  152812, 253110 }, -- Monel-Hardened Hoofplates
				{ 2,  159826, 269064 }, -- Monelite Skeleton Key
				{ 3,  152813, 253112 }, -- Monel-Hardened Stirrups
				{ 16, 162115, 278416 }, -- Magnetic Mining Pick
				{ 17, 162120, 278417 }, -- Platinum Whetstone
				{ 18, 162109, 278415 }, -- Storm Silver Spurs
			},
			[LEGION_DIFF] = {
				{ 1, 137686, 213916 }, -- Fel Core Hound Harness
				{ 2, 136708, 209564 }, -- Demonsteel Stirrups
				{ 3, 123956, 182999 }, -- Leystone Hoofplates
				{ 4, 124461, 184442 }, -- Demonsteel Bar
				-- 7.3.0
				{ 5, 124461, 248864 }, -- Empyrial Rivet
				{ 6, 151925, 248869 }, -- Empyrial Back Plate
				{ 7, 151924, 248867 }, -- Empyrial Chest Plate
				{ 8, 151872, 248870 }, -- Empyrial Breastplate
			},
			[NORMAL_DIFF] = {
				{ 1,  119328, 177169, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Soul of the Forge (Sold, Ashran)
				{ 3,  108257, 171690, [ATLASLOOT_IT_AMOUNT1] = "8+" }, -- Truesteel Ingot (Learnt by item 115356)
				{ 4,  108257, 182116, [PRICE_EXTRA_ITTYPE] = "109119:60" }, -- Truesteel Ingot (Sold in Garrison)
				{ 6,  118720, 176090 },                         -- Secrets of Draenor Blacksmithing (Learnt by item 115356)
				{ 8,  98717,  146921 },                         -- Accelerated Balanced Trillium Ingot : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 9,  98717,  143255 },                         -- Balanced Trillium Ingot : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 10, 94111,  138646 },                         -- Lightning Steel Ingot : =ds=#sr# 500 : =ds=#QUESTID:32621#
				{ 11, 65365,  76178 },                          -- Folded Obsidium : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 12, 9060,   11454 },                          -- Inlaid Mithril Cylinder : =ds=#sr# 200 : =ds=AtlasLoot["Crafted"]: spell4036 (205)
				{ 16, 7071,   8768,   [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Iron Buckle : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 17, 82960,  122633 },                         -- Ghostly Skeleton Key : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 18, 55053,  76438,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Obsidium Skeleton Key : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 19, 43853,  59406,  [ATLASLOOT_IT_AMOUNT1] = 20 }, -- Titanium Skeleton Key : =ds=#sr# 430 : =ds=AtlasLoot["Trainer"]
				{ 20, 43854,  59405,  [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Cobalt Skeleton Key : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 21, 15872,  19669,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Arcanite Skeleton Key : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 22, 15871,  19668,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Truesilver Skeleton Key : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 23, 15870,  19667,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Golden Skeleton Key : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 24, 15869,  19666,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Silver Skeleton Key : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 26, 12644,  16639 },                          -- Dense Grinding Stone : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 27, 7966,   9920 },                           -- Solid Grinding Stone : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 28, 3486,   3337 },                           -- Heavy Grinding Stone : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 29, 3478,   3326 },                           -- Coarse Grinding Stone : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 30, 3470,   3320 },                           -- Rough Grinding Stone : =ds=#sr# 25 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --SmithingArmorEnhancement
			name = AL["Armor Enhancements"],
			[LEGION_DIFF] = {
				-- 7.3.0
				{ 1, 151239, 246098 }, -- Felslate Anchor
			},
			[NORMAL_DIFF] = {
				{ 1,  127732, 187515, [PRICE_EXTRA_ITTYPE] = "109119:60" }, -- Savage Truesteel Essence (Sold, Garrison)
				{ 2,  127714, 187491, [PRICE_EXTRA_ITTYPE] = "109119:60" }, -- Mighty Truesteel Essence (Sold, Garrison)
				{ 3,  128015, 171708, [PRICE_EXTRA_ITTYPE] = "118720:5" }, -- Truesteel Essence (Sold, Ashran)
				{ 4,  116428, 173355, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Reshaper (Sold, Ashran)
				{ 6,  90046,  122632 },                         -- Living Steel Belt Buckle : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 7,  55054,  76439 },                          -- Ebonsteel Belt Buckle : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #pyriumbar#"
				{ 8,  41611,  55656 },                          -- Eternal Belt Buckle : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 10, 25521,  32285 },                          -- Greater Rune of Warding : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Honored"]
				{ 11, 23559,  32284 },                          -- Lesser Rune of Warding : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 13, 7969,   9964 },                           -- Mithril Spurs : =ds=#sr# 235 : =ds=AtlasLoot["World Drop"]
				{ 16, 86599,  131928 },                         -- Ghost Iron Shield Spike : =ds=#sr# 540 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 17, 55056,  76440 },                          -- Pyrium Shield Spike : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"] "5 #pyriumbar#"
				{ 18, 55055,  76441 },                          -- Elementium Shield Spike : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 19, 42500,  56357 },                          -- Titanium Shield Spike : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 20, 23530,  29657 },                          -- Felsteel Shield Spike : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Honor Hold"] - AtlasLoot["Exalted"] / ["Thrallmar"] - AtlasLoot["Exalted"]
				{ 21, 12645,  16651 },                          -- Thorium Shield Spike : =ds=#sr# 275 : =ds=AtlasLoot["World Drop"]
				{ 22, 7967,   9939 },                           -- Mithril Shield Spike : =ds=#sr# 215 : =ds=AtlasLoot["World Drop"]
				{ 23, 6042,   7221 },                           -- Iron Shield Spike : =ds=#sr# 150 : =ds=AtlasLoot["World Drop"]
				{ 25, 44936,  62202 },                          -- Titanium Plating : =ds=#sr# 450 : =ds=AtlasLoot_IngameLocales["Alliance Vanguard"] - AtlasLoot["Exalted"] / ["Horde Expedition"] - AtlasLoot["Exalted"]
				{ 26, 23576,  29729 },                          -- Greater Ward of Shielding : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Netherstorm"]
				{ 27, 23575,  29728 },                          -- Lesser Ward of Shielding :  =ds=#sr# 180 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Shadowmoon Valley"] / ALIL["Hellfire Peninsula"]
			},
		},
		{ --SmithingWeaponEnhancement
			name = AL["Weapon Enhancements"],
			[TWW_DIFF] = {
				{ 1, 222502, 450285, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Ironclaw Whetstone
				{ 2, 222508, 450287, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Ironclaw Weightstone
				{ 3, 222505, 450286 },                 -- Ironclaw Razorstone
			},
			[NORMAL_DIFF] = {
				{ 1,  127731, 187514, [PRICE_EXTRA_ITTYPE] = "109118:60" }, -- Savage Steelforged Essence (Sold, Ashran)
				{ 2,  127713, 187490, [PRICE_EXTRA_ITTYPE] = "109118:60" }, -- Mighty Steelforged Essence (Sold, Ashran)
				{ 3,  128016, 171710, [PRICE_EXTRA_ITTYPE] = "118720:5" }, -- Steelforged Essence (Sold, Ashran)
				{ 4,  116654, 171699, [PRICE_EXTRA_ITTYPE] = "118720:1" }, -- Truesteel Grinder (Sold, Ashran)
				{ 6,  86597,  131929 },                         -- Living Steel Weapon Chain : =ds=#sr# 540 : =ds=AtlasLoot_IngameLocales["The Klaxxi"] - AtlasLoot["Honored"]
				{ 7,  55057,  76442 },                          -- Pyrium Weapon Chain : =ds=#sr# 500 : =ds=AtlasLoot["Vendor"] "20 #elementiumbar#"
				{ 8,  41976,  55839 },                          -- Titanium Weapon Chain : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 9,  33185,  42688 },                          -- Adamantite Weapon Chain : =ds=#sr# 335 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Magisters' Terrace"] / AtlasLoot["World Drop"]
				{ 10, 6041,   7224 },                           -- Steel Weapon Chain : =ds=#sr# 190 : =ds=AtlasLoot["World Drop"]
				{ 12, 6043,   7222 },                           -- Iron Counterweight : =ds=#sr# 165 : =ds=AtlasLoot["World Drop"]
				{ 16, 18262,  22757 },                          -- Elemental Sharpening Stone : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Molten Core"]
				{ 17, 23529,  29656 },                          -- Adamantite Sharpening Stone : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Honored"]
				{ 18, 23528,  29654 },                          -- Fel Sharpening Stone : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 19, 12404,  16641 },                          -- Dense Sharpening Stone : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 20, 7964,   9918 },                           -- Solid Sharpening Stone : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 21, 2871,   2674 },                           -- Heavy Sharpening Stone : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 22, 2863,   2665 },                           -- Coarse Sharpening Stone : =ds=#sr# 65 : =ds=AtlasLoot["Trainer"]
				{ 23, 2862,   2660 },                           -- Rough Sharpening Stone : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 24, 28421,  34608 },                          -- Adamantite Weightstone : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Honored"]
				{ 25, 28420,  34607 },                          -- Fel Weightstone : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 26, 12643,  16640 },                          -- Dense Weightstone : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 27, 7965,   9921 },                           -- Solid Weightstone : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 28, 3241,   3117 },                           -- Heavy Weightstone : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 29, 3240,   3116 },                           -- Coarse Weightstone : =ds=#sr# 65 : =ds=AtlasLoot["Trainer"]
				{ 30, 3239,   3115 },                           -- Rough Weightstone : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ -- Profession Equipment
			name = AL["Profession Equipment"],
			[TWW_DIFF] = {
				{ 1,  222487, 450274 },                          -- Proficient Blacksmith's Toolbox
				{ 2,  222485, 450272 },                          -- Proficient Leatherworker's Toolset
				{ 3,  222483, 450270 },                          -- Proficient Needle Set
				{ 4,  222486, 450273 },                          -- Proficient Blacksmith's Hammer
				{ 5,  222484, 450271 },                          -- Proficient Leatherworker's Knife
				{ 6,  222481, 450268 },                          -- Proficient Pickaxe
				{ 7,  222480, 450267 },                          -- Proficient Sickle
				{ 8,  222482, 450269 },                          -- Proficient Skinning Knife
				{ 16, 222494, 450281 },                          -- Artisan Blacksmith's Hammer
				{ 17, 222495, 450282 },                          -- Artisan Blacksmith's Toolbox
				{ 18, 222490, 450277 },                          -- Artisan Skinning Knife
				{ 19, 222492, 450279, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Artisan Leatherworker's Knife
				{ 20, 222493, 450280, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Artisan Leatherworker's Toolset
				{ 21, 222491, 450278, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Artisan Needle Set
				{ 22, 222489, 450276, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Artisan Pickaxe
				{ 23, 222488, 450275, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Artisan Sickle
			},
		},
		{ --SmithingTrainingProjects
			name = AL["Training Projects"],
			[BFA_DIFF] = {
				{ 1,   128777, 183280 }, -- Heated Leystone Bar
				{ 2,   124393, 184181 }, -- Leystone Slag
				{ 3,   124424, 184315 }, -- Hard Leystone Nail
				{ 4,   124429, 184339 }, -- Leystone Footguard
				{ 5,   151924, 248867 }, -- Empyrial Chest Plate
				{ 6,   124394, 184182 }, -- Hard Leystone Bar
				{ 7,   124450, 184403 }, -- Engraved Leystone Armguards
				{ 8,   124395, 184183 }, -- Heated Hard Leystone Bar
				{ 9,   124431, 184341 }, -- Leystone Faceguard
				{ 10,  124006, 183278 }, -- Leystone Slag
				{ 11,  151925, 248869 }, -- Empyrial Back Plate
				{ 12,  124396, 184184 }, -- Dull Hard Leystone Armguards
				{ 13,  124049, 183562 }, -- Handcrafted Leystone Gauntlets
				{ 14,  124453, 184405 }, -- Brimstone-Covered Armguards
				{ 15,  124007, 183279 }, -- Leystone Bar
				{ 16,  151872, 248870 }, -- Empyrial Breastplate
				{ 17,  124397, 184185 }, -- Hard Leystone Armguards
				{ 18,  124405, 184214 }, -- Small Heated Scrap Metal
				{ 19,  124435, 184343 }, -- Leystone Neckplate
				{ 20,  124010, 183283 }, -- Leystone Fingerguard
				{ 21,  124409, 184218 }, -- Scrapmetal Palmplate
				{ 22,  124410, 184219 }, -- Scrapmetal Handguard
				{ 23,  124421, 184312 }, -- Lumps of Leystone Slag
				{ 24,  124408, 184217 }, -- Scrapmetal Fingerplates
				{ 25,  124407, 184216 }, -- Large Heated Scrap Metal
				{ 26,  124426, 184336 }, -- Red-Hot Leystone Bar
				{ 27,  124454, 184407 }, -- Brimstone-Crusted Armguards
				{ 28,  124009, 183281 }, -- Leystone Cuffplate
				{ 29,  124452, 184404 }, -- Molten Brimstone
				{ 30,  124406, 184215 }, -- Medium Heated Scrap Metal
				{ 101, 124422, 184313 }, -- Hard Leystone Ingots
				{ 102, 124455, 184408 }, -- Masterwork Leystone Armguards
				{ 103, 124430, 184340 }, -- Leystone Soleplate
				{ 104, 124427, 184337 }, -- Leystone Shinplate
				{ 105, 124434, 184345 }, -- Handmade Leystone Helm
				{ 106, 124418, 184308 }, -- Leystone Slag
				{ 107, 124419, 184309 }, -- Hard Leystone Bar
				{ 108, 124420, 184310 }, -- Leystone Shards
				{ 109, 124423, 184314 }, -- Heated Hard Leystone Ingot
				{ 110, 124432, 184342 }, -- Leystone Dome
				{ 111, 151923, 248864 }, -- Empyrial Rivets
				{ 112, 124428, 184338 }, -- Leystone Heelguard
				{ 113, 124411, 184220 }, -- Scrapmetal Cuffplate
				{ 114, 124433, 184344 }, -- Handmade Leystone Boots
			},
			[MOP_DIFF] = {
				{ 1,  95486, 140168 }, -- Training Project: Ghost Iron Statue : =ds=#sr# 486 : =ds=AtlasLoot["Trainer"]
				{ 2,  95485, 140167 }, -- Training Project: Ghost Iron Pans : =ds=#sr# 456 : =ds=AtlasLoot["Trainer"]
				{ 3,  95484, 140166 }, -- Training Project: Ghost Iron Frames : =ds=#sr# 421 : =ds=AtlasLoot["Trainer"]
				{ 4,  95483, 140165 }, -- Training Project: Ghost Iron Picks : =ds=#sr# 376 : =ds=AtlasLoot["Trainer"]
				{ 5,  95370, 139764 }, -- Training Project: Ghost Iron Crate : =ds=#sr# 347 : =ds=AtlasLoot["Trainer"]
				{ 6,  95369, 139763 }, -- Training Project: Ghost Iron Bells : =ds=#sr# 326 : =ds=AtlasLoot["Trainer"]
				{ 7,  95368, 139762 }, -- Training Project: Ghost Iron Bowls : =ds=#sr# 299 : =ds=AtlasLoot["Trainer"]
				{ 8,  95367, 139761 }, -- Training Project: Ghost Iron Cups : =ds=#sr# 289 : =ds=AtlasLoot["Trainer"]
				{ 9,  95366, 139760 }, -- Training Project: Ghost Iron Pot : =ds=#sr# 256 : =ds=AtlasLoot["Trainer"]
				{ 10, 95365, 139759 }, -- Training Project: Ghost Iron Wire : =ds=#sr# 248 : =ds=AtlasLoot["Trainer"]
				{ 11, 95364, 139757 }, -- Training Project: Ghost Iron Saw : =ds=#sr# 231 : =ds=AtlasLoot["Trainer"]
				{ 12, 95363, 139756 }, -- Training Project: Ghost Iron Barrel : =ds=#sr# 206 : =ds=AtlasLoot["Trainer"]
				{ 13, 95362, 139755 }, -- Training Project: Ghost Iron Needles : =ds=#sr# 199 : =ds=AtlasLoot["Trainer"]
				{ 14, 95361, 139754 }, -- Training Project: Ghost Iron Spade : =ds=#sr# 186 : =ds=AtlasLoot["Trainer"]
				{ 15, 95359, 139753 }, -- Training Project: Decorative Spoons : =ds=#sr# 151 : =ds=AtlasLoot["Trainer"]
				{ 16, 95358, 139751 }, -- Training Project: Ghost Iron Spatulas : =ds=#sr# 136 : =ds=AtlasLoot["Trainer"]
				{ 17, 95357, 139750 }, -- Training Project: Ghost Iron Hook : =ds=#sr# 121 : =ds=AtlasLoot["Trainer"]
				{ 18, 95356, 139749 }, -- Training Project: Ghost Iron Poker : =ds=#sr# 86 : =ds=AtlasLoot["Trainer"]
				{ 19, 95355, 139748 }, -- Training Project: Ghost Iron Ladle : =ds=#sr# 71 : =ds=AtlasLoot["Trainer"]
				{ 20, 95354, 139747 }, -- Training Project: Ghost Iron Wok : =ds=#sr# 59 : =ds=AtlasLoot["Trainer"]
				{ 21, 95353, 139746 }, -- Training Project: Simple Eating Utensils : =ds=#sr# 21 : =ds=AtlasLoot["Trainer"]
				{ 22, 95351, 139745 }, -- Training Project: Ghost Iron Pins : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --SmithingRelic
			name = AL["Relic"],
			[LEGION_DIFF] = {
				{ 1, 136685, 209498 }, -- Consecrated Spike
				{ 2, 136686, 209499 }, -- Flamespike
				{ 3, 136684, 209497 }, -- Gleaming Iron Spike
				{ 4, 136683, 209496 }, -- Terrorspike
			},
		},
		{ --SmithingArmorsmith
			name = C_Spell.GetSpellName(9788),
			[NORMAL_DIFF] = {
				{ 1,  41189, 55186 }, -- Chestplate of Conquest : =ds=#sr# 415 : nil
				{ 2,  41190, 55187 }, -- Legplates of Conquest : =ds=#sr# 415 : nil
				{ 3,  23565, 36256 }, -- Embrace of the Twisting Nether : =ds=#sr# 375 : nil
				{ 4,  23564, 34530 }, -- Twisting Nether Chain Shirt : =ds=#sr# 375 : nil
				{ 5,  23563, 34529 }, -- Nether Chain Shirt : =ds=#sr# 350 : nil
				{ 6,  28485, 36257 }, -- Bulwark of the Ancient Kings : =ds=#sr# 375 : nil
				{ 7,  28484, 34534 }, -- Bulwark of Kings : =ds=#sr# 375 : nil
				{ 8,  28483, 34533 }, -- Breastplate of Kings : =ds=#sr# 350 : nil
				{ 9,  30076, 36130 }, -- Stormforged Hauberk : =ds=#sr# 330 : nil
				{ 10, 30074, 36129 }, -- Heavy Earthforged Breastplate : =ds=#sr# 330 : nil
				{ 11, 30070, 36124 }, -- Windforged Leggings : =ds=#sr# 260 : nil
				{ 12, 30069, 36122 }, -- Earthforged Leggings : =ds=#sr# 260 : nil
			},
		},
		{ --SmithingWeaponsmith
			name = C_Spell.GetSpellName(9787),
			[NORMAL_DIFF] = {
				{ 1, 41188, 55185 }, -- Saronite Mindcrusher : =ds=#sr# 415 : nil
				{ 2, 41187, 55184 }, -- Corroded Saronite Woundbringer : =ds=#sr# 415 : nil
				{ 3, 41186, 55183 }, -- Corroded Saronite Edge : =ds=#sr# 415 : nil
				{ 4, 30072, 36126 }, -- Light Skyforged Axe : =ds=#sr# 260 : nil
				{ 5, 30073, 36128 }, -- Light Emberforged Hammer : =ds=#sr# 260 : nil
				{ 6, 30071, 36125 }, -- Light Earthforged Blade : =ds=#sr# 260 : nil
			},
		},
		{ --SmithingAxesmith
			name = C_Spell.GetSpellName(17041),
			[BC_DIFF] = {
				{ 1, 28433, 36260 }, -- Wicked Edge of the Planes : =ds=#sr# 375 : nil
				{ 2, 28436, 36261 }, -- Bloodmoon : =ds=#sr# 375 : nil
				{ 3, 28432, 34542 }, -- Black Planar Edge : =ds=#sr# 375 : nil
				{ 4, 28435, 34544 }, -- Mooncleaver : =ds=#sr# 375 : nil
				{ 5, 28431, 34541 }, -- The Planar Edge : =ds=#sr# 350 : nil
				{ 6, 28434, 34543 }, -- Lunar Crescent : =ds=#sr# 350 : nil
				{ 7, 30087, 36134 }, -- Stormforged Axe : =ds=#sr# 330 : nil
				{ 8, 30088, 36135 }, -- Skyforged Great Axe : =ds=#sr# 330 : nil
			},
		},
		{ --SmithingHammersmith
			name = C_Spell.GetSpellName(17040),
			[BC_DIFF] = {
				{ 1, 28439, 36262 }, -- Dragonstrike : =ds=#sr# 375 : nil
				{ 2, 28442, 36263 }, -- Stormherald : =ds=#sr# 375 : nil
				{ 3, 28438, 34546 }, -- Dragonmaw : =ds=#sr# 375 : nil
				{ 4, 28441, 34548 }, -- Deep Thunder : =ds=#sr# 375 : nil
				{ 5, 28437, 34545 }, -- Drakefist Hammer : =ds=#sr# 350 : nil
				{ 6, 28440, 34547 }, -- Thunder : =ds=#sr# 350 : nil
				{ 7, 30089, 36136 }, -- Lavaforged Warhammer : =ds=#sr# 330 : nil
				{ 8, 30093, 36137 }, -- Great Earthforged Hammer : =ds=#sr# 330 : nil
			},
		},
		{ --SmithingSwordsmith
			name = C_Spell.GetSpellName(17039),
			[BC_DIFF] = {
				{ 1, 28427, 36258 }, -- Blazefury : =ds=#sr# 375 : nil
				{ 2, 28430, 36259 }, -- Lionheart Executioner : =ds=#sr# 375 : nil
				{ 3, 28426, 34537 }, -- Blazeguard : =ds=#sr# 375 : nil
				{ 4, 28429, 34540 }, -- Lionheart Champion : =ds=#sr# 375 : nil
				{ 5, 28425, 34535 }, -- Fireguard : =ds=#sr# 350 : nil
				{ 6, 28428, 34538 }, -- Lionheart Blade : =ds=#sr# 350 : nil
				{ 7, 30077, 36131 }, -- Windforged Rapier : =ds=#sr# 330 : nil
				{ 8, 30086, 36133 }, -- Stoneforged Claymore : =ds=#sr# 330 : nil
			},
		},
	}
}

data["Enchanting"] = {
	name = C_Spell.GetSpellName(7411),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --EnchantingWeapons
			name = AL["Weapons"],
			[TWW_DIFF] = {
				{ 1, 224404, 445324 }, -- Enchanted Spearwood Wand
				{ 2, 224405, 445355 }, -- Scepter of Radiant Magics
			},
			[BFA_DIFF] = {
				{ 1,  159922, 269715 }, -- Honorable Combatant's Sorcerous Scepter
				{ 2,  159922, 269716 }, -- Honorable Combatant's Sorcerous Scepter
				{ 3,  159922, 269719 }, -- Honorable Combatant's Sorcerous Scepter

				{ 16, 152874, 265110 }, -- Enchanter's Sorcerous Scepter
				{ 17, 152874, 265111 }, -- Enchanter's Sorcerous Scepter
				{ 18, 152874, 265112 }, -- Enchanter's Sorcerous Scepter

				{ 5,  152872, 265106 }, -- Enchanter's Umbral Wand
			},
		},
		{ --EnchantingWeaponEnchants
			name = AL["Weapon Enchants"],
			[TWW_DIFF] = {
				{ 1, 223766, 445351 }, -- Enchant Weapon - Oathsworn's Tenacity
				{ 2, 223763, 445385 }, -- Enchant Weapon - Stonebound Artistry
				{ 3, 223760, 445317 }, -- Enchant Weapon - Stormrider's Fury
				{ 4, 223757, 445379 }, -- Enchant Weapon - Council's Guile
				{ 5, 223773, 445331 }, -- Enchant Weapon - Authority of Air
				{ 6, 223776, 445403 }, -- Enchant Weapon - Authority of Fiery Resolve
				{ 7, 223779, 445339 }, -- Enchant Weapon - Authority of Radiant Power
				{ 8, 223770, 445336 }, -- Enchant Weapon - Authority of Storms
				{ 9, 223782, 445341 }, -- Enchant Weapon - Authority of the Depths
			},
			[BFA_DIFF] = {
				{ 1,   153479, 255129, [ATLASLOOT_IT_AMOUNT1] = "10%" }, -- Weapon Enchant - Torrent of Elements
				{ 2,   153479, 255130, [ATLASLOOT_IT_AMOUNT1] = "10%" }, -- Weapon Enchant - Torrent of Elements
				{ 3,   153479, 255131, [ATLASLOOT_IT_AMOUNT1] = "10%" }, -- Weapon Enchant - Torrent of Elements

				{ 16,  153480, 255141, [ATLASLOOT_IT_AMOUNT1] = "15%" }, -- Weapon Enchant - Gale-Force Striking
				{ 17,  153480, 255142, [ATLASLOOT_IT_AMOUNT1] = "15%" }, -- Weapon Enchant - Gale-Force Striking
				{ 18,  153480, 255143, [ATLASLOOT_IT_AMOUNT1] = "15%" }, -- Weapon Enchant - Gale-Force Striking

				{ 5,   159789, 268913, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Stalwart Navigation
				{ 6,   159789, 268914, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Stalwart Navigation
				{ 7,   159789, 268915, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Stalwart Navigation

				{ 9,   159785, 268907, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Deadly Navigation
				{ 10,  159785, 268908, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Deadly Navigation
				{ 11,  159785, 268909, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Deadly Navigation

				{ 13,  159787, 268901, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Masterful Navigation
				{ 14,  159787, 268902, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Masterful Navigation
				{ 15,  159787, 268903, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Masterful Navigation

				{ 20,  159788, 268852, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Versatile Navigation
				{ 21,  159788, 268878, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Versatile Navigation
				{ 22,  159788, 268879, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Versatile Navigation

				{ 24,  159786, 268894, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Quick Navigation
				{ 25,  159786, 268895, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Quick Navigation
				{ 26,  159786, 268897, [ATLASLOOT_IT_AMOUNT1] = "149" }, -- Weapon Enchant - Quick Navigation

				{ 28,  153476, 255103, [ATLASLOOT_IT_AMOUNT1] = "2000" }, -- Weapon Enchant - Coastal Surge
				{ 29,  153476, 255104, [ATLASLOOT_IT_AMOUNT1] = "2000" }, -- Weapon Enchant - Coastal Surge
				{ 30,  153476, 255105, [ATLASLOOT_IT_AMOUNT1] = "2000" }, -- Weapon Enchant - Coastal Surge

				{ 101, 153478, 255110, [ATLASLOOT_IT_AMOUNT1] = "22" }, -- Weapon Enchant - Siphoning
				{ 102, 153478, 255111, [ATLASLOOT_IT_AMOUNT1] = "22" }, -- Weapon Enchant - Siphoning
				{ 103, 153478, 255112, [ATLASLOOT_IT_AMOUNT1] = "22" }, -- Weapon Enchant - Siphoning
			},
			[WOD_DIFF] = {
				{ 1, 112160, 159674, [PRICE_EXTRA_ITTYPE] = "119293:5" }, -- Enchant Weapon - Mark of Blackrock (Sold, Ashran)
				{ 2, 118015, 173323, [PRICE_EXTRA_ITTYPE] = "119293:5" }, -- Enchant Weapon - Mark of Bleeding Hollow (Sold, Ashran)
				{ 3, 112115, 159673, [PRICE_EXTRA_ITTYPE] = "119293:5" }, -- Enchant Weapon - Mark of Shadowmoon (Sold, Ashran)
				{ 4, 112165, 159672, [PRICE_EXTRA_ITTYPE] = "119293:5" }, -- Enchant Weapon - Mark of the Frostwolf (Sold, Ashran)
				{ 5, 112093, 159236 },                        -- Enchant Weapon - Mark of the Shattered Hand (Learnt by item 111922)
				{ 6, 110682, 159235, [PRICE_EXTRA_ITTYPE] = "119293:5" }, -- Enchant Weapon - Mark of the Thunderlord (Sold, Ashran)
				{ 7, 112164, 159671, [PRICE_EXTRA_ITTYPE] = "119293:5" }, -- Enchant Weapon - Mark of Warsong (Sold, Ashran)
			},
			[MOP_DIFF] = {
				{ 1, 74726, 104434 }, -- Enchant Weapon - Dancing Steel : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Shado-Pan"] - AtlasLoot["Revered"]
				{ 2, 74724, 104427 }, -- Enchant Weapon - Jade Spirit : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Shado-Pan"] - AtlasLoot["Revered"]
				{ 3, 74728, 104442 }, -- Enchant Weapon - River's Song : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Shado-Pan"] - AtlasLoot["Revered"]
				{ 4, 74727, 104440 }, -- Enchant Weapon - Colossus : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 5, 74723, 104425 }, -- Enchant Weapon - Windsong : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 6, 74725, 104430 }, -- Enchant Weapon - Elemental Force : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 52776, 74246 }, -- Enchant Weapon - Landslide : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #maelstromcrystal#"
				{ 2, 52774, 74242 }, -- Enchant Weapon - Power Torrent : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #maelstromcrystal#"
				{ 3, 52775, 74244 }, -- Enchant Weapon - Windwalk : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #maelstromcrystal#"
				{ 4, 52761, 74225 }, -- Enchant Weapon - Heartsong : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 5, 52755, 74211 }, -- Enchant Weapon - Elemental Slayer : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 6, 68134, 95471 }, -- Enchant 2H Weapon - Mighty Agility : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 7, 52760, 74223 }, -- Enchant Weapon - Hurricane : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 8, 52748, 74197 }, -- Enchant Weapon - Avalanche : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 9, 52747, 74195 }, -- Enchant Weapon - Mending : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  46026, 64441 }, -- Enchant Weapon - Blade Ward : =ds=#sr# 450 : =ds=AtlasLoot_IngameLocales["Ulduar"]
				{ 2,  46098, 64579 }, -- Enchant Weapon - Blood Draining : =ds=#sr# 450 : =ds=AtlasLoot_IngameLocales["Ulduar"]
				{ 3,  45056, 62948 }, -- Enchant Staff - Greater Spellpower : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,  44497, 59619 }, -- Enchant Weapon - Accuracy : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 5,  43987, 59625 }, -- Enchant Weapon - Black Magic : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 6,  44493, 59621 }, -- Enchant Weapon - Berserking : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 7,  44467, 60714 }, -- Enchant Weapon - Mighty Spellpower : =ds=#sr# 435 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 8,  44466, 60707 }, -- Enchant Weapon - Superior Potency : =ds=#sr# 435 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 9,  38988, 44621 }, -- Enchant Weapon - Giant Slayer : =ds=#sr# 430 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 10, 44463, 60691 }, -- Enchant 2H Weapon - Massacre : =ds=#sr# 430 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 11, 38981, 44595 }, -- Enchant 2H Weapon - Scourgebane : =ds=#sr# 430 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 12, 38965, 44524 }, -- Enchant Weapon - Icebreaker : =ds=#sr# 425 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 13, 38972, 44576 }, -- Enchant Weapon - Lifeward : =ds=#sr# 425 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 14, 38995, 44633 }, -- Enchant Weapon - Exceptional Agility : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 15, 38963, 44510 }, -- Enchant Weapon - Exceptional Spirit : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 16, 38992, 44630 }, -- Enchant 2H Weapon - Greater Savagery : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 17, 38991, 44629 }, -- Enchant Weapon - Exceptional Spellpower : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 18, 45060, 62959 }, -- Enchant Staff - Spellpower : =ds=#sr# 385 : =ds=AtlasLoot["Trainer"]
				{ 19, 44453, 60621 }, -- Enchant Weapon - Greater Potency : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  38948, 42974 }, -- Enchant Weapon - Executioner : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Netherstorm"]
				{ 2,  38925, 27984 }, -- Enchant Weapon - Mongoose : =ds=#sr# 375 : =ds=AtlasLoot["Drop"] Moroes
				{ 3,  38924, 27982 }, -- Enchant Weapon - Soulfrost : =ds=#sr# 375 : =ds=AtlasLoot["Drop"] Terestian Illhoof
				{ 4,  38923, 27981 }, -- Enchant Weapon - Sunfire : =ds=#sr# 375 : =ds=AtlasLoot["Drop"] Shade of Aran
				{ 5,  38927, 28004 }, -- Enchant Weapon - Battlemaster : =ds=#sr# 360 : =ds=AtlasLoot["World Drop"]
				{ 6,  38926, 28003 }, -- Enchant Weapon - Spellsurge : =ds=#sr# 360 : =ds=AtlasLoot["World Drop"]
				{ 7,  38922, 27977 }, -- Enchant 2H Weapon - Major Agility : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Arcatraz"]
				{ 8,  38998, 46578 }, -- Enchant Weapon - Deathfrost : =ds=#sr# 350 : =ds=AtlasLoot["Drop"] Ahune
				{ 9,  38947, 42620 }, -- Enchant Weapon - Greater Agility : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Violet Eye"] - AtlasLoot["Exalted"]
				{ 10, 38946, 34010 }, -- Enchant Weapon - Major Healing : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Revered"]
				{ 11, 38921, 27975 }, -- Enchant Weapon - Major Spellpower : =ds=#sr# 350 : =ds=AtlasLoot["Drop"] Bash'ir / Blade Edge Mountains
				{ 12, 38920, 27972 }, -- Enchant Weapon - Potency : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 13, 38919, 27971 }, -- Enchant 2H Weapon - Savagery : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Shattered Halls"]
				{ 14, 38918, 27968 }, -- Enchant Weapon - Major Intellect : =ds=#sr# 340 : =ds=AtlasLoot["Drop"] Netherstorm
				{ 15, 38917, 27967 }, -- Enchant Weapon - Major Striking : =ds=#sr# 340 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Honored"]
			},
			[CLASSIC_DIFF] = {
				{ 1,   38873, 20034 }, -- Enchant Weapon - Crusader : =ds=#sr# 300 : =ds=AtlasLoot["Drop"] Eastern Plaguelands
				{ 2,   38878, 22750 }, -- Enchant Weapon - Healing Power : =ds=#sr# 300 : =ds=AtlasLoot["Drop"] Molten Core
				{ 3,   38871, 20032 }, -- Enchant Weapon - Lifestealing : =ds=#sr# 300 - Unobtainable
				{ 4,   38884, 23804 }, -- Enchant Weapon - Mighty Intellect : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"] BRD
				{ 5,   38883, 23803 }, -- Enchant Weapon - Mighty Spirit : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"] BRD
				{ 6,   38877, 22749 }, -- Enchant Weapon - Spellpower : =ds=#sr# 300 : =ds=AtlasLoot["Drop"] Molten Core
				{ 7,   38870, 20031 }, -- Enchant Weapon - Superior Striking : =ds=#sr# 300 : =ds=AtlasLoot["Drop"] LBRS
				{ 8,   38875, 20036 }, -- Enchant 2H Weapon - Major Intellect : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Stratholme"]
				{ 9,   38874, 20035 }, -- Enchant 2H Weapon - Major Spirit : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Scholomance"]
				{ 10,  38872, 20033 }, -- Enchant Weapon - Unholy Weapon : =ds=#sr# 295 : =ds=AtlasLoot["World Drop"]
				{ 11,  38869, 20030 }, -- Enchant 2H Weapon - Superior Impact : =ds=#sr# 295 - Unobtainable
				{ 12,  38880, 23800 }, -- Enchant Weapon - Agility : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Timbermaw Hold"] - AtlasLoot["Honored"]
				{ 13,  38879, 23799 }, -- Enchant Weapon - Strength : =ds=#sr# 290 : =ds=AtlasLoot["Vendor"] BRD
				{ 14,  38896, 27837 }, -- Enchant 2H Weapon - Agility : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Timbermaw Hold"] - AtlasLoot["Friendly"]
				{ 15,  38868, 20029 }, -- Enchant Weapon - Icy Chill : =ds=#sr# 285 : =ds=AtlasLoot["Drop"] Winterspring
				{ 16,  38838, 13898 }, -- Enchant Weapon - Fiery Weapon : =ds=#sr# 265 : =ds=AtlasLoot["Drop"] Pyromancer Loregrain
				{ 17,  38848, 13943 }, -- Enchant Weapon - Greater Striking : =ds=#sr# 245 : =ds=AtlasLoot["Trainer"]
				{ 18,  38845, 13937 }, -- Enchant 2H Weapon - Greater Impact : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 19,  38840, 13915 }, -- Enchant Weapon - Demonslaying : =ds=#sr# 230 : =ds=AtlasLoot["World Drop"]
				{ 20,  38822, 13695 }, -- Enchant 2H Weapon - Impact : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 21,  38821, 13693 }, -- Enchant Weapon - Striking : =ds=#sr# 195 : =ds=AtlasLoot["Trainer"]
				{ 22,  38876, 21931 }, -- Enchant Weapon - Winter's Might : =ds=#sr# 190 : Feast of Winter Veil
				{ 23,  38813, 13653 }, -- Enchant Weapon - Lesser Beastslayer : =ds=#sr# 175 : =ds=AtlasLoot["World Drop"]
				{ 24,  38814, 13655 }, -- Enchant Weapon - Lesser Elemental Slayer : =ds=#sr# 175 : =ds=AtlasLoot["World Drop"]
				{ 25,  38796, 13529 }, -- Enchant 2H Weapon - Lesser Impact : =ds=#sr# 145 : =ds=AtlasLoot["Trainer"]
				{ 26,  38794, 13503 }, -- Enchant Weapon - Lesser Striking : =ds=#sr# 140 : =ds=AtlasLoot["Trainer"]
				{ 27,  38788, 13380 }, -- Enchant 2H Weapon - Lesser Spirit : =ds=#sr# 110 : =ds=AtlasLoot["World Drop"]
				{ 28,  38781, 7793 }, -- Enchant 2H Weapon - Lesser Intellect : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]
				{ 29,  38772, 7745 }, -- Enchant 2H Weapon - Minor Impact : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 30,  38779, 7786 }, -- Enchant Weapon - Minor Beastslayer : =ds=#sr# 90 : =ds=AtlasLoot["World Drop"]
				{ 101, 38780, 7788 }, -- Enchant Weapon - Minor Striking : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EnchantingBracers
			name = AL["Bracers"],
			[TWW_DIFF] = {
				{ 1, 223708, 445392 },                                   -- Enchant Bracer - Whisper of Armored Avoidance
				{ 2, 223720, 445376 },                                   -- Enchant Bracer - Whisper of Armored Speed
				{ 3, 223714, 445374 },                                   -- Enchant Bracer - Whisper of Armored Leech
				{ 4, 223723, 445330 },                                   -- Enchant Bracer - Chant of Armored Speed
				{ 5, 223717, 445325, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Enchant Bracer - Chant of Armored Leech
				{ 6, 223711, 445334, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Enchant Bracer - Chant of Armored Avoidance
			},
			[BFA_DIFF] = {
				{ 1,  160328, 271366 }, -- Safe Hearthing
				{ 2,  160330, 271433 }, -- Cooled Hearthing
				{ 16, 153436, 267495 }, -- Swift Hearthing
			},
			[MOP_DIFF] = {
				{ 1, 74704, 104390 }, -- Enchant Bracer - Exceptional Strength : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["The August Celestials"] - AtlasLoot["Revered"]
				{ 2, 74705, 104391 }, -- Enchant Bracer - Greater Agility : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["The August Celestials"] - AtlasLoot["Revered"]
				{ 3, 74703, 104389 }, -- Enchant Bracer - Super Intellect : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["The August Celestials"] - AtlasLoot["Revered"]
				{ 4, 74701, 104385 }, -- Enchant Bracer - Major Dodge : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 5, 74700, 104338 }, -- Enchant Bracer - Mastery : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  52778, 74248 }, -- Enchant Bracer - Greater Critical Strike : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 2,  52785, 74256 }, -- Enchant Bracer - Greater Speed : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 3,  68784, 96264 }, -- Enchant Bracer - Agility : =ds=#sr# 515 : =ds=AtlasLoot["World Drop"]
				{ 4,  68785, 96261 }, -- Enchant Bracer - Major Strength : =ds=#sr# 515 : =ds=AtlasLoot["World Drop"]
				{ 5,  68786, 96262 }, -- Enchant Bracer - Mighty Intellect : =ds=#sr# 515 : =ds=AtlasLoot["World Drop"]
				{ 6,  52772, 74239 }, -- Enchant Bracer - Greater Haste : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 7,  52770, 74237 }, -- Enchant Bracer - Exceptional Spirit : =ds=#sr# 505 : =ds=AtlasLoot["Trainer"]
				{ 8,  52766, 74232 }, -- Enchant Bracer - Precision : =ds=#sr# 495 : =ds=AtlasLoot["Trainer"]
				{ 9,  52763, 74229 }, -- Enchant Bracer - Superior Dodge : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 10, 52752, 74201 }, -- Enchant Bracer - Critical Strike : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 11, 52746, 74193 }, -- Enchant Bracer - Speed : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 44947, 62256 }, -- Enchant Bracer - Major Stamina : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2, 44470, 60767 }, -- Enchant Bracer - Superior Spellpower : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3, 44815, 44575 }, -- Enchant Bracer - Greater Assault : =ds=#sr# 430 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4, 38984, 44598 }, -- Enchant Bracer - Haste : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 5, 38987, 44616 }, -- Enchant Bracer - Greater Stats : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 6, 38980, 44593 }, -- Enchant Bracer - Major Spirit : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 7, 38997, 44635 }, -- Enchant Bracer - Greater Spellpower : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 8, 38968, 44555 }, -- Enchant Bracer - Exceptional Intellect : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 9, 38971, 60616 }, -- Enchant Bracer - Assault : =ds=#sr# 360 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 38903, 27917 }, -- Enchant Bracer - Spellpower : =ds=#sr# 360 : =ds=AtlasLoot["Drop"]
				{ 2, 38902, 27914 }, -- Enchant Bracer - Fortitude : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Steamvault"]
				{ 3, 38901, 27913 }, -- Enchant Bracer - Restore Mana Prime : =ds=#sr# 335 : =ds=AtlasLoot["World Drop"]
				{ 4, 38900, 27911 }, -- Enchant Bracer - Superior Healing : =ds=#sr# 325" : =ds=ALIL["Honor Hold"]/ALIL["Thrallmar"] - AL["Friendly"]};
				{ 5, 38899, 27906 }, -- Enchant Bracer - Greater Dodge : =ds=#sr# 320 : =ds=AtlasLoot_IngameLocales["Netherstorm"]
				{ 6, 38898, 27905 }, -- Enchant Bracer - Stats : =ds=#sr# 315 : =ds=AtlasLoot["Trainer"]
				{ 7, 38897, 27899 }, -- Enchant Bracer - Brawn : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 8, 38937, 34001 }, -- Enchant Bracer - Major Intellect : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 9, 38938, 34002 }, -- Enchant Bracer - Lesser Assault : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  38882, 23802 }, -- Enchant Bracer - Healing Power : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Argent Dawn"] - AtlasLoot["Revered"]
				{ 2,  38855, 20011 }, -- Enchant Bracer - Superior Stamina : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 3,  38854, 20010 }, -- Enchant Bracer - Superior Strength : =ds=#sr# 295 : =ds=AtlasLoot_IngameLocales["Deadwind Pass"]
				{ 4,  38881, 23801 }, -- Enchant Bracer - Mana Regeneration : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Argent Dawn"] - AtlasLoot["Honored"]
				{ 5,  38853, 20009 }, -- Enchant Bracer - Superior Spirit : =ds=#sr# 270 : =ds=AtlasLoot["World Drop"]
				{ 6,  38852, 20008 }, -- Enchant Bracer - Greater Intellect : =ds=#sr# 255 : =ds=AtlasLoot["Trainer"]
				{ 7,  38849, 13945 }, -- Enchant Bracer - Greater Stamina : =ds=#sr# 245 : =ds=AtlasLoot["World Drop"]
				{ 8,  38846, 13939 }, -- Enchant Bracer - Greater Strength : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 9,  38842, 13931 }, -- Enchant Bracer - Dodge : =ds=#sr# 235 : =ds=AtlasLoot["Vendor"]
				{ 10, 38832, 13846 }, -- Enchant Bracer - Greater Spirit : =ds=#sr# 220 : =ds=AtlasLoot["World Drop"]
				{ 11, 38829, 13822 }, -- Enchant Bracer - Intellect : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 12, 38817, 13661 }, -- Enchant Bracer - Strength : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
				{ 13, 38811, 13646 }, -- Enchant Bracer - Lesser Dodge : =ds=#sr# 170 : =ds=AtlasLoot["Vendor"]
				{ 14, 38812, 13648 }, -- Enchant Bracer - Stamina : =ds=#sr# 170 : =ds=AtlasLoot["Trainer"]
				{ 15, 38809, 13642 }, -- Enchant Bracer - Spirit : =ds=#sr# 165 : =ds=AtlasLoot["Trainer"]
				{ 16, 38803, 13622 }, -- Enchant Bracer - Lesser Intellect : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 17, 38797, 13536 }, -- Enchant Bracer - Lesser Strength : =ds=#sr# 140 : =ds=AtlasLoot["Vendor"]
				{ 18, 38793, 13501 }, -- Enchant Bracer - Lesser Stamina : =ds=#sr# 130 : =ds=AtlasLoot["Trainer"]
				{ 19, 38783, 7859 }, -- Enchant Bracer - Lesser Spirit : =ds=#sr# 120 : =ds=AtlasLoot["World Drop"]
				{ 20, 38777, 7779 }, -- Enchant Bracer - Minor Agility : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 21, 38778, 7782 }, -- Enchant Bracer - Minor Strength : =ds=#sr# 80 : =ds=AtlasLoot["World Drop"]
				{ 22, 38774, 7766 }, -- Enchant Bracer - Minor Spirit : =ds=#sr# 60 : =ds=AtlasLoot["World Drop"]
				{ 23, 38771, 7457 }, -- Enchant Bracer - Minor Stamina : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 24, 38768, 7428 }, -- Enchant Bracer - Minor Dodge : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 25, 38679, 7418 }, -- Enchant Bracer - Minor Health : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EnchantingGloves
			name = AL["Gloves"],
			[BFA_DIFF] = {
				{ 1,  159466, 267482 }, -- Zandalari Mining
				{ 2,  159471, 267498 }, -- Zandalari Crafting
				{ 3,  159464, 267458 }, -- Zandalari Herbalism
				{ 16, 159468, 267490 }, -- Zandalari Surveying
				{ 17, 159467, 267486 }, -- Zandalari Skinning
			},
			[LEGION_DIFF] = {
				{ 1, 128558, 190988 }, -- Legion Herbalism
				{ 2, 128559, 190989 }, -- Legion Mining
				{ 3, 128560, 190990 }, -- Legion Skinning
				{ 4, 128561, 190991 }, -- Legion Surveying
			},
			[MOP_DIFF] = {
				{ 1, 74721, 104419 }, -- Enchant Gloves - Super Strength : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 2, 74722, 104420 }, -- Enchant Gloves - Superior Mastery : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 3, 74720, 104417 }, -- Enchant Gloves - Superior Haste : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 4, 74719, 104416 }, -- Enchant Gloves - Greater Haste : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 52784, 74255 }, -- Enchant Gloves - Greater Mastery : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 2, 52783, 74254 }, -- Enchant Gloves - Mighty Strength : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 3, 52759, 74220 }, -- Enchant Gloves - Greater Haste : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 4, 52756, 74212 }, -- Enchant Gloves - Exceptional Strength : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 5, 52749, 74198 }, -- Enchant Gloves - Haste : =ds=#sr# 455 : =ds=AtlasLoot["Trainer"]
				{ 6, 52687, 74132 }, -- Enchant Gloves - Mastery : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 38990, 44625 }, -- Enchant Gloves - Armsman : =ds=#sr# 435 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2, 44458, 60668 }, -- Enchant Gloves - Crusher : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 3, 38964, 44513 }, -- Enchant Gloves - Greater Assault : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 4, 38967, 44529 }, -- Enchant Gloves - Major Agility : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"] : nil
				{ 5, 38953, 44488 }, -- Enchant Gloves - Precision : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 6, 38951, 44484 }, -- Enchant Gloves - Haste : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 7, 50816, 71692 }, -- Enchant Gloves - Angler : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 8, 38960, 44506 }, -- Enchant Gloves - Gatherer : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 9, 38979, 44592 }, -- Enchant Gloves - Exceptional Spellpower : =ds=#sr# 360 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 38935, 33997 }, -- Enchant Gloves - Major Spellpower : =ds=#sr# 360 : =ds=AtlasLoot["Vendor"]
				{ 2, 38932, 33994 }, -- Enchant Gloves - Precise Strikes : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Revered"]
				{ 3, 38936, 33999 }, -- Enchant Gloves - Major Healing : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]
				{ 4, 38933, 33995 }, -- Enchant Gloves - Major Strength : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 5, 38934, 33996 }, -- Enchant Gloves - Assault : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 6, 38931, 33993 }, -- Enchant Gloves - Blasting : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 7, 38890, 25080 }, -- Enchant Gloves - Superior Agility : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Keepers of Time"] - AtlasLoot["Exalted"]
				{ 8, 38885, 25072 }, -- Enchant Gloves - Threat : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Exalted"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  38888, 25078 }, -- Enchant Gloves - Fire Power : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Temple of Ahn'Qiraj"]
				{ 2,  38887, 25074 }, -- Enchant Gloves - Frost Power : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Temple of Ahn'Qiraj"]
				{ 3,  38889, 25079 }, -- Enchant Gloves - Healing Power : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Temple of Ahn'Qiraj"]
				{ 4,  38886, 25073 }, -- Enchant Gloves - Shadow Power : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Temple of Ahn'Qiraj"]
				{ 5,  38857, 20013 }, -- Enchant Gloves - Greater Strength : =ds=#sr# 295 : =ds=AtlasLoot["Trainer"]
				{ 6,  38856, 20012 }, -- Enchant Gloves - Greater Agility : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 7,  38851, 13948 }, -- Enchant Gloves - Minor Haste : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 8,  38850, 13947 }, -- Enchant Gloves - Riding Skill : =ds=#sr# 250 : =ds=AtlasLoot["World Drop"]
				{ 9,  38834, 13868 }, -- Enchant Gloves - Advanced Herbalism : =ds=#sr# 225 : =ds=AtlasLoot["Drop"]
				{ 10, 38836, 13887 }, -- Enchant Gloves - Strength : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 11, 38831, 13841 }, -- Enchant Gloves - Advanced Mining : =ds=#sr# 215 : =ds=AtlasLoot["Drop"]
				{ 12, 38827, 13815 }, -- Enchant Gloves - Agility : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 13, 38823, 13698 }, -- Enchant Gloves - Skinning : =ds=#sr# 200 : =ds=AtlasLoot["Drop"]
				{ 14, 38802, 13620 }, -- Enchant Gloves - Fishing : =ds=#sr# 145 : =ds=AtlasLoot["Drop"]
				{ 15, 38801, 13617 }, -- Enchant Gloves - Herbalism : =ds=#sr# 145 : =ds=AtlasLoot["Drop"]
				{ 16, 38800, 13612 }, -- Enchant Gloves - Mining : =ds=#sr# 145 : =ds=AtlasLoot["Drop"]
			},
		},
		{ --EnchantingBoots
			name = AL["Boots"],
			[TWW_DIFF] = {
				{ 1, 223654, 445396 },                          -- Enchant Boots - Defender's March
				{ 2, 223651, 445368, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Enchant Boots - Scout's March
				{ 3, 223618, 445335, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Enchant Boots - Cavalry's March
			},
			[MOP_DIFF] = {
				{ 1, 74718, 104414 }, -- Enchant Boots - Pandaren's Step : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 2, 74717, 104409 }, -- Enchant Boots - Blurred Speed : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 3, 74715, 104407 }, -- Enchant Boots - Greater Haste : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 4, 74716, 104408 }, -- Enchant Boots - Greater Precision : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 52781, 74252 }, -- Enchant Boots - Assassin's Step : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 2, 52782, 74253 }, -- Enchant Boots - Lavawalker : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 3, 52771, 74238 }, -- Enchant Boots - Mastery : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 4, 52769, 74236 }, -- Enchant Boots - Precision : =ds=#sr# 505 : =ds=AtlasLoot["Trainer"]
				{ 5, 52757, 74213 }, -- Enchant Boots - Major Agility : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 6, 52750, 74199 }, -- Enchant Boots - Haste : =ds=#sr# 455 : =ds=AtlasLoot["Trainer"]
				{ 7, 52743, 74189 }, -- Enchant Boots - Earthen Vitality : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 44469, 60763 }, -- Enchant Boots - Greater Assault : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2, 39006, 47901 }, -- Enchant Boots - Tuskarr's Vitality : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3, 38961, 44508 }, -- Enchant Boots - Greater Spirit : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 4, 38976, 44589 }, -- Enchant Boots - Superior Agility : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 5, 38974, 44584 }, -- Enchant Boots - Greater Vitality : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 6, 38966, 44528 }, -- Enchant Boots - Greater Fortitude : =ds=#sr# 385 : =ds=AtlasLoot["Trainer"]
				{ 7, 38986, 60623 }, -- Enchant Boots - Icewalker : =ds=#sr# 385 : =ds=AtlasLoot["Trainer"]
				{ 8, 44449, 60606 }, -- Enchant Boots - Assault : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 38910, 27954 }, -- Enchant Boots - Surefooted : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Karazhan"]
				{ 2, 38944, 34008 }, -- Enchant Boots - Boar's Speed : =ds=#sr# 360 : =ds=AtlasLoot["World Drop"]
				{ 3, 38943, 34007 }, -- Enchant Boots - Cat's Swiftness : =ds=#sr# 360 : =ds=AtlasLoot["World Drop"]
				{ 4, 37603, 27951 }, -- Enchant Boots - Dexterity : =ds=#sr# 340 : =ds=AtlasLoot_IngameLocales["Auchenai Crypts"]
				{ 5, 38909, 27950 }, -- Enchant Boots - Fortitude : =ds=#sr# 320 : =ds=AtlasLoot_IngameLocales["Mana-Tombs"]
				{ 6, 38908, 27948 }, -- Enchant Boots - Vitality : =ds=#sr# 305 : =ds=AtlasLoot["World Drop"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  38863, 20023 }, -- Enchant Boots - Greater Agility : =ds=#sr# 295 : =ds=AtlasLoot["Trainer"]
				{ 2,  38864, 20024 }, -- Enchant Boots - Spirit : =ds=#sr# 275 : =ds=AtlasLoot["World Drop"]
				{ 3,  38862, 20020 }, -- Enchant Boots - Greater Stamina : =ds=#sr# 260 : =ds=AtlasLoot["World Drop"]
				{ 4,  38844, 13935 }, -- Enchant Boots - Agility : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 5,  45628, 63746 }, -- Enchant Boots - Lesser Accuracy : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 6,  38837, 13890 }, -- Enchant Boots - Minor Speed : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 7,  38830, 13836 }, -- Enchant Boots - Stamina : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 8,  38819, 13687 }, -- Enchant Boots - Lesser Spirit : =ds=#sr# 190 : =ds=AtlasLoot["World Drop"]
				{ 9,  38810, 13644 }, -- Enchant Boots - Lesser Stamina : =ds=#sr# 170 : =ds=AtlasLoot["Trainer"]
				{ 10, 38807, 13637 }, -- Enchant Boots - Lesser Agility : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 11, 38786, 7867 }, -- Enchant Boots - Minor Agility : =ds=#sr# 125 : =ds=AtlasLoot["Vendor"]
				{ 12, 38785, 7863 }, -- Enchant Boots - Minor Stamina : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EnchantingChest
			name = AL["Chest"],
			[TWW_DIFF] = {
				{ 1, 223690, 445333 },                          -- Enchant Chest - Crystalline Radiance
				{ 2, 223687, 445321 },                          -- Enchant Chest - Oathsworn's Strength
				{ 3, 223681, 445353 },                          -- Enchant Chest - Stormrider's Agility
				{ 4, 223684, 445322, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Enchant Chest - Council's Intellect
			},
			[MOP_DIFF] = {
				{ 1, 74708, 104395 }, -- Enchant Chest - Glorious Stats : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 2, 74709, 104397 }, -- Enchant Chest - Superior Stamina : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 3, 74707, 104393 }, -- Enchant Chest - Mighty Spirit : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 4, 74706, 104392 }, -- Enchant Chest - Super Resilience : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 52780, 74251 }, -- Enchant Chest - Greater Stamina : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 2, 52779, 74250 }, -- Enchant Chest - Peerless Stats : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 3, 52765, 74231 }, -- Enchant Chest - Exceptional Spirit : =ds=#sr# 495 : =ds=AtlasLoot["Trainer"]
				{ 4, 52758, 74214 }, -- Enchant Chest - Mighty Resilience : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 5, 52751, 74200 }, -- Enchant Chest - Stamina : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 6, 52744, 74191 }, -- Enchant Chest - Mighty Stats : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 44465, 60692 }, -- Enchant Chest - Powerful Stats : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2, 39005, 47900 }, -- Enchant Chest - Super Health : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 3, 38962, 44509 }, -- Enchant Chest - Greater Mana Restoration : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 4, 38975, 44588 }, -- Enchant Chest - Exceptional Resilience : =ds=#sr# 410 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 5, 39002, 47766 }, -- Enchant Chest - Greater Dodge : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 6, 38955, 44492 }, -- Enchant Chest - Mighty Health : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 7, 38989, 44623 }, -- Enchant Chest - Super Stats : =ds=#sr# 370 : =ds=AtlasLoot["Trainer"]
				{ 8, 38912, 27958 }, -- Enchant Chest - Exceptional Mana : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 38999, 46594 }, -- Enchant Chest - Dodge : =ds=#sr# 360 : =ds=AtlasLoot["Vendor"]
				{ 2, 38913, 27960 }, -- Enchant Chest - Exceptional Stats : =ds=#sr# 345 : =ds=AtlasLoot["Vendor"]
				{ 3, 38930, 33992 }, -- Enchant Chest - Major Resilience : =ds=#sr# 345 : =ds=AtlasLoot["World Drop"]
				{ 4, 38928, 33990 }, -- Enchant Chest - Major Spirit : =ds=#sr# 320 : =ds=AtlasLoot["Trainer"]
				{ 5, 38911, 27957 }, -- Enchant Chest - Exceptional Health : =ds=#sr# 315 : =ds=AtlasLoot["Trainer"]
				{ 6, 38929, 33991 }, -- Enchant Chest - Restore Mana Prime : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  38865, 20025 }, -- Enchant Chest - Greater Stats : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 2,  38867, 20028 }, -- Enchant Chest - Major Mana : =ds=#sr# 290 : =ds=AtlasLoot["Trainer"]
				{ 3,  38866, 20026 }, -- Enchant Chest - Major Health : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]
				{ 4,  38847, 13941 }, -- Enchant Chest - Stats : =ds=#sr# 245 : =ds=AtlasLoot["Trainer"]
				{ 5,  38841, 13917 }, -- Enchant Chest - Superior Mana : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 6,  38833, 13858 }, -- Enchant Chest - Superior Health : =ds=#sr# 220 : =ds=AtlasLoot["Trainer"]
				{ 7,  38824, 13700 }, -- Enchant Chest - Lesser Stats : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 8,  38818, 13663 }, -- Enchant Chest - Greater Mana : =ds=#sr# 185 : =ds=AtlasLoot["Trainer"]
				{ 9,  38808, 13640 }, -- Enchant Chest - Greater Health : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 10, 38804, 13626 }, -- Enchant Chest - Minor Stats : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 11, 38799, 13607 }, -- Enchant Chest - Mana : =ds=#sr# 145 : =ds=AtlasLoot["Trainer"]
				{ 12, 38798, 13538 }, -- Enchant Chest - Lesser Absorption : =ds=#sr# 140 : =ds=AtlasLoot["Trainer"]
				{ 13, 38782, 7857 }, -- Enchant Chest - Health : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 14, 38776, 7776 }, -- Enchant Chest - Lesser Mana : =ds=#sr# 80 : =ds=AtlasLoot["Vendor"]
				{ 15, 38773, 7748 }, -- Enchant Chest - Lesser Health : =ds=#sr# 60 : =ds=AtlasLoot["Trainer"]
				{ 16, 38767, 7426 }, -- Enchant Chest - Minor Absorption : =ds=#sr# 40 : =ds=AtlasLoot["Trainer"]
				{ 17, 38769, 7443 }, -- Enchant Chest - Minor Mana : =ds=#sr# 20 : =ds=AtlasLoot["World Drop"]
				{ 18, 38766, 7420 }, -- Enchant Chest - Minor Health : =ds=#sr# 15 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EnchantingCloak
			name = AL["Cloak"],
			[TWW_DIFF] = {
				{ 1, 223738, 445373 }, -- Enchant Cloak - Whisper of Silken Speed
				{ 2, 223732, 445348 }, -- Enchant Cloak - Whisper of Silken Leech
				{ 3, 223726, 445344 }, -- Enchant Cloak - Whisper of Silken Avoidance
				{ 4, 223798, 445389 }, -- Enchant Cloak - Chant of Burrowing Rapidity
				{ 5, 223735, 445393 }, -- Enchant Cloak - Chant of Leeching Fangs
				{ 6, 223729, 445386 }, -- Enchant Cloak - Chant of Winged Grace
			},
			[LEGION_DIFF] = {
				{ 1,  128549, 190878 }, -- Binding of Agility
				{ 2,  128549, 191004 }, -- Binding of Agility
				{ 3,  128549, 191021 }, -- Binding of Agility
				{ 5,  128550, 190879 }, -- Binding of Intellect
				{ 6,  128550, 191005 }, -- Binding of Intellect
				{ 7,  128550, 191022 }, -- Binding of Intellect
				{ 9,  128548, 190877 }, -- Binding of Strength
				{ 10, 128548, 191003 }, -- Binding of Strength
				{ 11, 128548, 191020 }, -- Binding of Strength
				{ 16, 128546, 190875 }, -- Word of Agility
				{ 17, 128546, 191001 }, -- Word of Agility
				{ 18, 128546, 191018 }, -- Word of Agility
				{ 20, 128547, 190876 }, -- Word of Intellect
				{ 21, 128547, 191002 }, -- Word of Intellect
				{ 22, 128547, 191019 }, -- Word of Intellect
				{ 24, 128545, 190874 }, -- Word of Strength
				{ 25, 128545, 191000 }, -- Word of Strength
				{ 26, 128545, 191017 }, -- Word of Strength
			},
			[WOD_DIFF] = {
				{ 1,  110652, 158884, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Gift of Critical Strike (Sold, Ashran)
				{ 2,  110653, 158885, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Gift of Haste (Sold, Ashran)
				{ 3,  110654, 158886, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Gift of Mastery (Sold, Ashran)
				{ 4,  110655, 158887, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Gift of Multistrike (Sold, Ashran)
				{ 5,  110656, 158889, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Gift of Versatility (Sold, Ashran)
				{ 16, 110631, 158877, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Breath of Critical Strike (Sold, Ashran)
				{ 17, 110632, 158878, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Breath of Haste (Sold, Ashran)
				{ 18, 110633, 158879, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Breath of Mastery (Sold, Ashran)
				{ 19, 110634, 158880, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Breath of Multistrike (Sold, Ashran)
				{ 20, 110635, 158881, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Cloak - Breath of Versatility (Sold, Ashran)
			},
			[MOP_DIFF] = {
				{ 1, 74711, 104401 }, -- Enchant Cloak - Greater Protection : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 2, 74710, 104398 }, -- Enchant Cloak - Accuracy : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 3, 74712, 104403 }, -- Enchant Cloak - Superior Intellect : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 4, 74713, 104404 }, -- Enchant Cloak - Superior Critical Strike : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 52777, 74247 }, -- Enchant Cloak - Greater Critical Strike : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "5 #heavenlyshard#"
				{ 2, 52773, 74240 }, -- Enchant Cloak - Greater Intellect : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 3, 52767, 74234 }, -- Enchant Cloak - Protection : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 4, 52764, 74230 }, -- Enchant Cloak - Critical Strike : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 5, 52753, 74202 }, -- Enchant Cloak - Intellect : =ds=#sr# 465 : =ds=AtlasLoot["Trainer"]
				{ 6, 52745, 74192 }, -- Enchant Cloak - Lesser Power : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 38993, 44631 }, -- Enchant Cloak - Shadow Armor : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2, 39004, 47899 }, -- Enchant Cloak - Wisdom : =ds=#sr# 440 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3, 38978, 44591 }, -- Enchant Cloak - Superior Dodge : =ds=#sr# 435 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4, 39003, 47898 }, -- Enchant Cloak - Greater Speed : =ds=#sr# 430 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 5, 39001, 47672 }, -- Enchant Cloak - Mighty Stamina : =ds=#sr# 430 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 6, 44457, 60663 }, -- Enchant Cloak - Major Agility : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 7, 38959, 44500 }, -- Enchant Cloak - Superior Agility : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 8, 38973, 44582 }, -- Enchant Cloak - Minor Power : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 9, 44456, 60609 }, -- Enchant Cloak - Speed : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 39000, 47051 }, -- Enchant Cloak - Greater Dodge : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Magisters' Terrace"]
				{ 2, 38939, 34003 }, -- Enchant Cloak - PvP Power : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]
				{ 3, 38940, 34004 }, -- Enchant Cloak - Greater Agility : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 4, 38914, 27961 }, -- Enchant Cloak - Major Armor : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 5, 38895, 25086 }, -- Enchant Cloak - Dodge : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]
				{ 6, 38893, 25083 }, -- Enchant Cloak - Stealth : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]
				{ 7, 38894, 25084 }, -- Enchant Cloak - Subtlety : =ds=#sr# 300" : =ds=ALIL["Honor Hold"]/ALIL["Thrallmar"] - AL["Exalted"]};
			},
			[CLASSIC_DIFF] = {
				{ 1, 38859, 20015 }, -- Enchant Cloak - Superior Defense : =ds=#sr# 285 : =ds=AtlasLoot["Vendor"]
				{ 2, 38835, 13882 }, -- Enchant Cloak - Lesser Agility : =ds=#sr# 225 : =ds=AtlasLoot_IngameLocales["Tanaris"]
				{ 3, 38825, 13746 }, -- Enchant Cloak - Greater Defense : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 4, 38806, 13635 }, -- Enchant Cloak - Defense : =ds=#sr# 155 : =ds=AtlasLoot["Trainer"]
				{ 5, 38790, 13421 }, -- Enchant Cloak - Lesser Protection : =ds=#sr# 115 : =ds=AtlasLoot["Trainer"]
				{ 6, 38789, 13419 }, -- Enchant Cloak - Minor Agility : =ds=#sr# 110 : =ds=AtlasLoot["Vendor"]
				{ 7, 38775, 7771 }, -- Enchant Cloak - Minor Protection : =ds=#sr# 70 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EnchantingNeck
			name = AL["Neck"],
			[LEGION_DIFF] = {
				{ 1,  141910, 228408 }, -- Mark of the Ancient Priestess
				{ 2,  141910, 228409 }, -- Mark of the Ancient Priestess
				{ 3,  141910, 228410 }, -- Mark of the Ancient Priestess
				{ 5,  128551, 190892 }, -- Mark of the Claw
				{ 6,  128551, 191006 }, -- Mark of the Claw
				{ 7,  128551, 191023 }, -- Mark of the Claw
				{ 8,  128552, 190893 }, -- Mark of the Distant Army
				{ 10, 128552, 191007 }, -- Mark of the Distant Army
				{ 11, 128552, 191024 }, -- Mark of the Distant Army
				{ 16, 141908, 228402 }, -- Mark of the Heavy Hide
				{ 17, 141908, 228403 }, -- Mark of the Heavy Hide
				{ 18, 141908, 228404 }, -- Mark of the Heavy Hide
				{ 20, 128553, 190894 }, -- Mark of the Hidden Satyr
				{ 21, 128553, 191008 }, -- Mark of the Hidden Satyr
				{ 22, 128553, 191025 }, -- Mark of the Hidden Satyr
				{ 24, 141909, 228405 }, -- Mark of the Trained Soldier
				{ 25, 141909, 228406 }, -- Mark of the Trained Soldier
				{ 26, 141909, 228407 }, -- Mark of the Trained Soldier
			},
			[WOD_DIFF] = {
				{ 1,  110645, 158899, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Gift of Critical Strike (Sold, Ashran)
				{ 2,  110646, 158900, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Gift of Haste (Sold, Ashran)
				{ 3,  110647, 158901, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Gift of Mastery (Sold, Ashran)
				{ 4,  110648, 158902, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Gift of Multistrike (Sold, Ashran)
				{ 5,  110649, 158903, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Gift of Versatility (Sold, Ashran)
				{ 16, 110624, 158892, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Breath of Critical Strike (Sold, Ashran)
				{ 17, 110625, 158893, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Breath of Haste (Sold, Ashran)
				{ 18, 110626, 158894, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Breath of Mastery (Sold, Ashran)
				{ 19, 110627, 158895, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Breath of Multistrike (Sold, Ashran)
				{ 20, 110628, 158896, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Neck - Breath of Versatility (Sold, Ashran)
			},
		},
		{ --EnchantingRelic
			name = AL["Relic"],
			[LEGION_DIFF] = {
				{ 1, 136689, 209507 }, -- Soul Fibril
				{ 2, 136691, 209509 }, -- Immaculate Fibril
			},
		},
		{ --EnchantingRing
			name = AL["Ring"],
			[TWW_DIFF] = {
				{ 1,  223663, 445384 }, -- Enchant Ring - Glimmering Haste
				{ 2,  223657, 445358 }, -- Enchant Ring - Glimmering Critical Strike
				{ 3,  223666, 445381 }, -- Enchant Ring - Glimmering Mastery
				{ 4,  223669, 445340 }, -- Enchant Ring - Glimmering Versatility
				{ 5,  223794, 445383 }, -- Enchant Ring - Cursed Versatility
				{ 6,  223791, 445359 }, -- Enchant Ring - Cursed Mastery
				{ 7,  223788, 445388 }, -- Enchant Ring - Cursed Haste
				{ 8,  223785, 445394 }, -- Enchant Ring - Cursed Critical Strike
				{ 9,  223678, 445349 }, -- Enchant Ring - Radiant Versatility
				{ 10, 223675, 445375 }, -- Enchant Ring - Radiant Mastery
				{ 11, 223672, 445320 }, -- Enchant Ring - Radiant Haste
				{ 12, 223660, 445387 }, -- Enchant Ring - Radiant Critical Strike
			},
			[BFA_DIFF] = {
				{ 1,  153442, 255075, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Critical Strike
				{ 2,  153442, 255098, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Critical Strike
				{ 3,  153442, 255090, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Critical Strike

				{ 5,  153438, 255071, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Critical Strike
				{ 6,  153438, 255086, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Critical Strike
				{ 7,  153438, 255094, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Critical Strike

				{ 9,  153443, 255076, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Haste
				{ 10, 153443, 255091, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Haste
				{ 11, 153443, 255099, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Haste

				{ 13, 153439, 255072, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Haste
				{ 14, 153439, 255087, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Haste
				{ 15, 153439, 255095, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Haste

				{ 16, 153444, 255077, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Mastery
				{ 17, 153444, 255092, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Mastery
				{ 18, 153444, 255100, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Mastery

				{ 20, 153440, 255073, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Mastery
				{ 21, 153440, 255088, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Mastery
				{ 22, 153440, 255096, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Mastery

				{ 24, 153445, 255078, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Versatility
				{ 25, 153445, 255093, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Versatility
				{ 26, 153445, 255101, [ATLASLOOT_IT_AMOUNT1] = "9" }, -- Pact of Versatility

				{ 28, 153441, 255074, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Versatility
				{ 29, 153441, 255089, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Versatility
				{ 30, 153441, 255097, [ATLASLOOT_IT_AMOUNT1] = "7" }, -- Seal of Versatility
			},
			[LEGION_DIFF] = {
				{ 1,  128541, 190870 }, -- Binding of Critical Strike
				{ 2,  128541, 190996 }, -- Binding of Critical Strike
				{ 3,  128541, 191013 }, -- Binding of Critical Strike
				{ 5,  128542, 190871 }, -- Binding of Haste
				{ 6,  128542, 190997 }, -- Binding of Haste
				{ 7,  128542, 191014 }, -- Binding of Haste
				{ 8,  128543, 190872 }, -- Binding of Mastery
				{ 10, 128543, 190998 }, -- Binding of Mastery
				{ 11, 128543, 191015 }, -- Binding of Mastery
				{ 13, 128544, 190873 }, -- Binding of Versatility
				{ 14, 128544, 190999 }, -- Binding of Versatility
				{ 15, 128544, 191016 }, -- Binding of Versatility
				{ 16, 128537, 190866 }, -- Word of Critical Strike
				{ 17, 128537, 190992 }, -- Word of Critical Strike
				{ 18, 128537, 191009 }, -- Word of Critical Strike
				{ 20, 128538, 190867 }, -- Word of Haste
				{ 21, 128538, 190993 }, -- Word of Haste
				{ 22, 128538, 191010 }, -- Word of Haste
				{ 24, 128539, 190868 }, -- Word of Mastery
				{ 25, 128539, 190994 }, -- Word of Mastery
				{ 26, 128539, 191011 }, -- Word of Mastery
				{ 28, 128540, 190869 }, -- Word of Versatility
				{ 29, 128540, 190995 }, -- Word of Versatility
				{ 30, 128540, 191012 }, -- Word of Versatility
			},
			[WOD_DIFF] = {
				{ 1,  110638, 158914, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Ring - Gift of Critical Strike (Sold, Ashran)
				{ 2,  110639, 158915, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Ring - Gift of Haste (Sold, Ashran)
				{ 3,  110640, 158916, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Ring - Gift of Mastery (Sold, Ashran)
				{ 4,  110641, 158917, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Ring - Gift of Multistrike (Sold, Ashran)
				{ 5,  110642, 158918, [PRICE_EXTRA_ITTYPE] = "119293:1" }, -- Enchant Ring - Gift of Versatility (Sold, Ashran)
				{ 16, 110617, 158907 },                        -- Enchant Ring - Breath of Critical Strike (Learnt by item 111922)
				{ 17, 110618, 158908 },                        -- Enchant Ring - Breath of Haste (Learnt by item 111922)
				{ 18, 110619, 158909 },                        -- Enchant Ring - Breath of Mastery (Learnt by item 111922)
				{ 19, 110620, 158910 },                        -- Enchant Ring - Breath of Multistrike (Learnt by item 111922)
				{ 20, 110621, 158911 },                        -- Enchant Ring - Breath of Versatility (Learnt by item 111922)
			},
		},
		{ --EnchantingShieldOffHand
			name = AL["Shields"].." & "..AL["Off-Hands"],
			[NORMAL_DIFF] = {
				{ 1,  74729, 104445 }, -- Enchant Off-Hand - Major Intellect : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 2,  89737, 130758 }, -- Enchant Shield - Greater Parry : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 3,  52768, 74235 }, -- Enchant Off-Hand - Superior Intellect : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 4,  52762, 74226 }, -- Enchant Shield - Mastery : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 5,  52754, 74207 }, -- Enchant Shield - Protection : =ds=#sr# 465 : =ds=AtlasLoot["Trainer"]
				{ 6,  38954, 44489 }, -- Enchant Shield - Dodge : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 7,  44455, 60653 }, -- Enchant Shield - Greater Intellect : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 8,  38906, 27946 }, -- Enchant Shield - Parry : =ds=#sr# 340 : =ds=AtlasLoot["World Drop"]
				{ 9,  38949, 44383 }, -- Enchant Shield - Resilience : =ds=#sr# 330 : =ds=AtlasLoot["Trainer"]
				{ 10, 38905, 27945 }, -- Enchant Shield - Intellect : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]
				{ 11, 38945, 34009 }, -- Enchant Shield - Major Stamina : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]
				{ 12, 38904, 27944 }, -- Enchant Shield - Lesser Dodge : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 13, 38860, 20016 }, -- Enchant Shield - Vitality : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 14, 38861, 20017 }, -- Enchant Shield - Greater Stamina : =ds=#sr# 265 : =ds=AtlasLoot["Vendor"]
				{ 15, 38839, 13905 }, -- Enchant Shield - Greater Spirit : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 16, 38828, 13817 }, -- Enchant Shield - Stamina : =ds=#sr# 210 : =ds=AtlasLoot["World Drop"]
				{ 17, 38820, 13689 }, -- Enchant Shield - Lesser Parry : =ds=#sr# 195 : =ds=AtlasLoot["World Drop"]
				{ 18, 38816, 13659 }, -- Enchant Shield - Spirit : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
				{ 19, 38805, 13631 }, -- Enchant Shield - Lesser Stamina : =ds=#sr# 155 : =ds=AtlasLoot["Trainer"]
				{ 20, 38792, 13485 }, -- Enchant Shield - Lesser Spirit : =ds=#sr# 130 : =ds=AtlasLoot["Trainer"]
				{ 21, 38791, 13464 }, -- Enchant Shield - Lesser Protection : =ds=#sr# 115 : =ds=AtlasLoot["World Drop"]
				{ 22, 38787, 13378 }, -- Enchant Shield - Minor Stamina : =ds=#sr# 105 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EnchantingShoulder
			name = AL["Shoulder"],
			[TWW_DIFF] = {
				{ 1, 223751, 445360 }, -- Illusory Adornment: Runes
				{ 2, 223745, 445327 }, -- Illusory Adornment: Crystal
				{ 3, 223748, 445401 }, -- Illusory Adornment: Radiance
				{ 4, 223754, 445337 }, -- Illusory Adornment: Shadow
			},
			[LEGION_DIFF] = {
				{ 1, 128554, 190954 }, -- Enchant Shoulder - Boon of the Scavenger
			},
		},
		{ -- Profession Equipment
			name = AL["Profession Equipment"],
			[TWW_DIFF] = {
				{ 1, 224114, 445361 },                          -- Runed Bismuth Rod
				{ 2, 224115, 445372 },                          -- Runed Ironclaw Rod
				{ 3, 224116, 445323, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Runed Null Stone Rod
				{ 5, 223699, 445378 },                          -- Enchant Tool - Algari Ingenuity
				{ 6, 223693, 445364, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Enchant Tool - Algari Deftness
				{ 7, 223696, 445328, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Enchant Tool - Algari Finesse
				{ 8, 223702, 445380, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Enchant Tool - Algari Perception
				{ 9, 223705, 445398, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Enchant Tool - Algari Resourcefulness
			},
		},
		{ --EnchantingMisc
			name = AL["Miscellaneous"],
			[TWW_DIFF] = {
				{ 1,   224105, 445338, [ATLASLOOT_IT_AMOUNT1] = 5 },                          -- Algari Mana Oil
				{ 2,   224108, 445318, [ATLASLOOT_IT_AMOUNT1] = 5 },                          -- Oil of Beledar's Grace
				{ 3,   224111, 445346, [ATLASLOOT_IT_AMOUNT1] = 5, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Oil of Deep Toxins
				{ 4,   224176, 445371 },                                                      -- Mirror Powder
				{ 5,   224173, 445395 },                                                      -- Concentration Concentrate
				{ 6,   224069, 445399 },                                                      -- Enchanted Weathered Harbinger Crest
				{ 7,   224072, 445347 },                                                      -- Enchanted Runed Harbinger Crest
				{ 8,   224073, 445354 },                                                      -- Enchanted Gilded Harbinger Crest
				{ 10,  224300, 445367 },                                                      -- Gleeful Glamour - Blood Elf
				{ 11,  224301, 445400 },                                                      -- Gleeful Glamour - Dark Iron Dwarf
				{ 12,  224302, 445391 },                                                      -- Gleeful Glamour - Draenei
				{ 13,  224303, 445402 },                                                      -- Gleeful Glamour - Dwarf
				{ 14,  224304, 445382 },                                                      -- Gleeful Glamour - Earthen
				{ 15,  224305, 445362 },                                                      -- Gleeful Glamour - Gnome
				{ 16,  224306, 445332 },                                                      -- Gleeful Glamour - Goblin
				{ 17,  224307, 445377 },                                                      -- Gleeful Glamour - Highmountain Tauren
				{ 18,  224308, 445352 },                                                      -- Gleeful Glamour - Human
				{ 19,  224309, 445342 },                                                      -- Gleeful Glamour - Kul Tiran
				{ 20,  224310, 445343 },                                                      -- Gleeful Glamour - Lightforged Draenei
				{ 21,  224311, 445370 },                                                      -- Gleeful Glamour - Mag'har Orc
				{ 22,  224312, 445357 },                                                      -- Gleeful Glamour - Mechagnome
				{ 23,  224313, 445363 },                                                      -- Gleeful Glamour - Night Elf
				{ 24,  224314, 445390 },                                                      -- Gleeful Glamour - Nightborne
				{ 25,  224315, 445319 },                                                      -- Gleeful Glamour - Orc
				{ 26,  224316, 445365 },                                                      -- Gleeful Glamour - Pandaren
				{ 27,  224317, 445366 },                                                      -- Gleeful Glamour - Tauren
				{ 28,  224318, 445326 },                                                      -- Gleeful Glamour - Troll
				{ 29,  224319, 445350 },                                                      -- Gleeful Glamour - Undead
				{ 30,  224320, 445356 },                                                      -- Gleeful Glamour - Void Elf
				{ 101, 224321, 445329 },                                                      -- Gleeful Glamour - Vulpera
				{ 102, 224322, 445397 },                                                      -- Gleeful Glamour - Worgen
				{ 103, 224323, 445345 },                                                      -- Gleeful Glamour - Zandalari Troll
			},
			[BFA_DIFF] = {
				{ 1, 162110, 278418 }, -- Disenchanting Rod
			},
			[LEGION_DIFF] = {
				{ 1, 128533, 191074 }, -- Enchanted Cauldron
				{ 2, 128534, 191075 }, -- Enchanted Torch
				{ 3, 128535, 191076 }, -- Enchanted Pen
				{ 4, 128536, 191078 }, -- Leylight Brazier
				{ 5, 124440, 224199 }, -- Ley Shatter
				-- 7.3.0
				{ 6, 124441, 252106 }, -- Chaos Shatter

			},
			[WOD_DIFF] = {
				{ 1,  112321, 162948 },                                                    -- Enchanted Dust (Learnt by item 111922)
				{ 3,  113588, 169092 },                                                    -- Temporal Crystal (Learnt by item 111922)
				{ 4,  115504, 182129, [ATLASLOOT_IT_AMOUNT1] = 2, [PRICE_EXTRA_ITTYPE] = "111245:5" }, -- Temporal Crystal (Sold, Garrison)
				{ 6,  115504, 170443 },                                                    -- Fractured Temporal Crystal
				{ 7,  111245, 169091 },                                                    -- Luminous Shard (Learnt by item 111922)
				{ 8,  115502, 170440 },                                                    -- Small Luminous Shard
				{ 10, 119293, 177043 },                                                    -- Secrets of Draenor Enchanting (Learnt by item 111922)
				{ 16, 138795, 217655 },                                                    -- Tome of Illusions: Draenor
			},
			[MOP_DIFF] = {
				{ 1, 74248,  116499 },                 -- Sha Crystal : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 2, 74247,  118239, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Sha Shatter : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 3, 74250,  118238, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Ethereal Shatter : =ds=#sr# 585 : =ds=AtlasLoot["Trainer"]
				{ 4, 74247,  116498 },                 -- Ethereal Shard : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 5, 74249,  118237, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Mysterious Diffusion : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 6, 74250,  116497 },                 -- Mysterious Essence : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 8, 138793, 217650 },                 -- Tome of Illusions: Pandaria
				{ 9, 138794, 217651 },                 -- Tome of Illusions: Secrets of the Shado-Pan
			},
			[CATA_DIFF] = {
				{ 1, 67275,  93843 },                  -- Magic Lamp : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"], ALLIANCE "20 #hypnoticdust#"
				{ 2, 67274,  93841 },                  -- Enchanted Lantern : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"], HORDE "20 #hypnoticdust#"
				{ 4, 52721,  104698, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Maelstrom Shatter : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 6, 138791, 217645 },                 -- Tome of Illusions: Cataclysm
				{ 7, 138792, 217649 },                 -- Tome of Illusions: Elemental Lords
			},
			[WOTLK_DIFF] = {
				{ 1, 89738,  69412 }, -- Abyssal Shatter : =ds=#sr# 445 : =ds=AtlasLoot["Trainer"]
				{ 3, 138790, 217644 }, -- Tome of Illusions: Northrend
			},
			[BC_DIFF] = {
				{ 1,  22449,  45765, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Void Shatter : =ds=#sr# 360 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Isle of Quel'Danas"]
				{ 2,  22449,  28022 },                 -- Large Prismatic Shard : =ds=#sr# 335 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Shattrath City"]
				{ 3,  22448,  42615, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Small Prismatic Shard : =ds=#sr# 335 : =ds=AtlasLoot["Trainer"]
				{ 5,  22459,  28028 },                 -- Void Sphere : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 6,  22460,  28027 },                 -- Prismatic Sphere : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 8,  138789, 217641 },                -- Tome of Illusions: Outland
				{ 16, 22522,  28019 },                 -- Superior Wizard Oil : =ds=#sr# 340 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Shattrath City"]
				{ 17, 22521,  28016 },                 -- Superior Mana Oil : =ds=#sr# 310 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Shattrath City"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  11811,  15596 }, -- Smoking Heart of the Mountain : =ds=#sr# 265 : =ds=AtlasLoot["Drop"]: Lord Roccor370
				{ 2,  12810,  17181 }, -- Enchanted Leather : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 3,  12655,  17180 }, -- Enchanted Thorium : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 4,  6218,   7421 }, -- Runed Copper Rod : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 6,  20750,  25128 }, -- Wizard Oil : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Silithus"]
				{ 7,  20747,  25127 }, -- Lesser Mana Oil : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Silithus"]
				{ 8,  20746,  25126 }, -- Lesser Wizard Oil : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]
				{ 9,  20745,  25125 }, -- Minor Mana Oil : =ds=#sr# 150 : =ds=AtlasLoot["Vendor"]
				{ 10, 20744,  25124 }, -- Minor Wizard Oil : =ds=#sr# 45 : =ds=AtlasLoot["Vendor"]
				{ 16, 11290,  14810 }, -- Greater Mystic Wand : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 17, 11289,  14809 }, -- Lesser Mystic Wand : =ds=#sr# 155 : =ds=AtlasLoot["Trainer"]
				{ 18, 11288,  14807 }, -- Greater Magic Wand : =ds=#sr# 70 : =ds=AtlasLoot["Trainer"]
				{ 19, 11287,  14293 }, -- Lesser Magic Wand : =ds=#sr# 10 : =ds=AtlasLoot["Trainer"]
				{ 21, 138787, 217637 }, -- Tome of Illusions: Azeroth
			},
		},
	}
}

data["Engineering"] = {
	name = C_Spell.GetSpellName(4036),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --EngineeringArmorWeapons
			name = AL["Armor"].." & "..AL["Weapons"],
			[TWW_DIFF] = {
				{ 1,  225642, 447375 },                          -- Acolyte's Goggles
				{ 2,  225643, 447376 },                          -- Spelunker's Goggles
				{ 3,  225644, 447377 },                          -- Tracker's Goggles
				{ 4,  225645, 447378 },                          -- Dredger's Goggles
				{ 5,  221801, 447314 },                          -- Studious Brilliance Expeditor
				{ 6,  221802, 447315 },                          -- Overclocked Idea Generator
				{ 7,  221803, 447316 },                          -- Supercharged Thought Enhancer
				{ 8,  221804, 447317 },                          -- Dangerous Distraction Inhibitor
				{ 9,  221805, 447318 },                          -- Blasting Bracers
				{ 10, 221806, 447319 },                          -- Venting Vambraces
				{ 11, 221807, 447320 },                          -- Whirring Wristwraps
				{ 12, 221808, 447321 },                          -- Clanking Cuffs
				{ 13, 225646, 447379 },                          -- 4UT0-41M3R
				{ 14, 221969, 447352 },                          -- P.0.W. x2
				{ 15, 217151, 438922, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Goggles
				{ 16, 217152, 438923, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Goggles
				{ 17, 217153, 438924, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Mail Goggles
				{ 18, 217154, 438925, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Goggles
				{ 19, 217155, 438926, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Bracers
				{ 20, 217156, 438927, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Bracers
				{ 21, 217157, 438928, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Mail Bracers
				{ 22, 217158, 438929, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Plate Bracers
				{ 23, 225370, 455005, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Rifle
			},
			[BFA_DIFF] = {
				{ 1,   160488, 272056 }, -- AZ3-R1-T3 Synthetic Specs
				{ 2,   160488, 272057 }, -- AZ3-R1-T3 Synthetic Specs
				{ 3,   160488, 272058 }, -- AZ3-R1-T3 Synthetic Specs

				{ 5,   160489, 272059 }, -- AZ3-R1-T3 Gearspun Goggles
				{ 6,   160489, 272060 }, -- AZ3-R1-T3 Gearspun Goggles
				{ 7,   160489, 272061 }, -- AZ3-R1-T3 Gearspun Goggles

				{ 9,   160490, 272062 }, -- AZ3-R1-T3 Bionic Bifocals
				{ 10,  160490, 272063 }, -- AZ3-R1-T3 Bionic Bifocals
				{ 11,  160490, 272064 }, -- AZ3-R1-T3 Bionic Bifocals

				{ 13,  160491, 272065 }, -- AZ3-R1-T3 Orthogonal Optics
				{ 14,  160491, 272066 }, -- AZ3-R1-T3 Orthogonal Optics
				{ 15,  160491, 272067 }, -- AZ3-R1-T3 Orthogonal Optics


				{ 16,  152837, 253150 }, -- Precision Attitude Adjuster
				{ 17,  152837, 253151 }, -- Precision Attitude Adjuster
				{ 18,  152837, 253152 }, -- Precision Attitude Adjuster

				{ 20,  159937, 269724 }, -- Honorable Combatant's Discombobulator
				{ 21,  159937, 269725 }, -- Honorable Combatant's Discombobulator
				{ 22,  159937, 269726 }, -- Honorable Combatant's Discombobulator

				{ 24,  153506, 255457 }, -- Finely-Tuned Stormsteel Destroyer
				{ 25,  153506, 255458 }, -- Finely-Tuned Stormsteel Destroyer
				{ 26,  153506, 255459 }, -- Finely-Tuned Stormsteel Destroyer

				{ 28,  159936, 269727 }, -- Honorable Combatant's Stormsteel Destroyer
				{ 29,  159936, 269728 }, -- Honorable Combatant's Stormsteel Destroyer
				{ 30,  159936, 269729 }, -- Honorable Combatant's Stormsteel Destroyer

				{ 101, 152830, 253122 }, -- Magnetic Discombobulator
			},
			[LEGION_DIFF] = {
				{ 1,  132500, 198939 }, -- Blink-Trigger Headgun
				{ 2,  132500, 198991 }, -- Blink-Trigger Headgun
				{ 3,  132500, 199005 }, -- Blink-Trigger Headgun
				{ 5,  132502, 198966 }, -- Bolt-Action Headgun
				{ 6,  132502, 198993 }, -- Bolt-Action Headgun
				{ 7,  132502, 199007 }, -- Bolt-Action Headgun
				{ 9,  132506, 198970 }, -- Double-Barreled Cranial Cannon
				{ 10, 132506, 198997 }, -- Double-Barreled Cranial Cannon
				{ 11, 132506, 199011 }, -- Double-Barreled Cranial Cannon
				{ 13, 132507, 198971 }, -- Ironsight Cranial Cannon
				{ 14, 132507, 198998 }, -- Ironsight Cranial Cannon
				{ 15, 132507, 199012 }, -- Ironsight Cranial Cannon
				{ 16, 132503, 198967 }, -- Reinforced Headgun
				{ 17, 132503, 198994 }, -- Reinforced Headgun
				{ 18, 132503, 199008 }, -- Reinforced Headgun
				{ 20, 132505, 198969 }, -- Sawed-Off Cranial Cannon
				{ 21, 132505, 198996 }, -- Sawed-Off Cranial Cannon
				{ 22, 132505, 199010 }, -- Sawed-Off Cranial Cannon
				{ 24, 132504, 198968 }, -- Semi-Automagic Cranial Cannon
				{ 25, 132504, 198995 }, -- Semi-Automagic Cranial Cannon
				{ 26, 132504, 199009 }, -- Semi-Automagic Cranial Cannon
				{ 28, 132501, 198965 }, -- Tactical Headgun
				{ 29, 132501, 198992 }, -- Tactical Headgun
				{ 30, 132501, 199006 }, -- Tactical Headgun
			},
			[WOD_DIFF] = {
				{ 1,   "109172:Stage6",  187521 },                        -- Plasma Mechshades (Stage 6)
				{ 2,   "109172:Stage5",  187497 },                        -- Plasma Mechshades (Stage 5)
				{ 3,   "109172:Stage4",  169076 },                        -- Plasma Mechshades (Stage 4)
				{ 4,   "109172:Stage3",  169076 },                        -- Plasma Mechshades (Stage 3)
				{ 5,   "109172:Stage2",  169076 },                        -- Plasma Mechshades (Stage 2)
				{ 6,   "109172:Stage1",  162197, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Plasma Mechshades (Stage 1) (Sold, Ashran)

				{ 8,   "109171:Stage6",  187521 },                        -- Night-Vision Mechshades (Stage 6)
				{ 9,   "109171:Stage5",  187497 },                        -- Night-Vision Mechshades (Stage 5)
				{ 10,  "109171:Stage4",  169076 },                        -- Night-Vision Mechshades (Stage 4)
				{ 11,  "109171:Stage3",  169076 },                        -- Night-Vision Mechshades (Stage 3)
				{ 12,  "109171:Stage2",  169076 },                        -- Night-Vision Mechshades (Stage 2)
				{ 13,  "109171:Stage1",  162196, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Night-Vision Mechshades (Stage 1) (Sold, Ashran)

				{ 16,  "109173:Stage6",  187521 },                        -- Cybergenetic Mechshades (Stage 6)
				{ 17,  "109173:Stage5",  187497 },                        -- Cybergenetic Mechshades (Stage 5)
				{ 18,  "109173:Stage4",  169076 },                        -- Cybergenetic Mechshades (Stage 4)
				{ 19,  "109173:Stage3",  169076 },                        -- Cybergenetic Mechshades (Stage 3)
				{ 20,  "109173:Stage2",  169076 },                        -- Cybergenetic Mechshades (Stage 2)
				{ 21,  "109173:Stage1",  162195, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Cybergenetic Mechshades (Stage 1) (Sold, Ashran)

				{ 23,  "109174:Stage6",  187521 },                        -- Razorguard Mechshades (Stage 6)
				{ 24,  "109174:Stage5",  187497 },                        -- Razorguard Mechshades (Stage 5)
				{ 25,  "109174:Stage4",  169076 },                        -- Razorguard Mechshades (Stage 4)
				{ 26,  "109174:Stage3",  169076 },                        -- Razorguard Mechshades (Stage 3)
				{ 27,  "109174:Stage2",  169076 },                        -- Razorguard Mechshades (Stage 2)
				{ 28,  "109174:Stage1",  162198, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Razorguard Mechshades (Stage 1) (Sold, Ashran)

				{ 101, "109168:Stage6W", 187520 },                        -- Shrediron's Shredder (Stage 6)
				{ 102, "109168:Stage5W", 187496 },                        -- Shrediron's Shredder (Stage 5)
				{ 103, "109168:Stage4W", 177363 },                        -- Shrediron's Shredder (Stage 4)
				{ 104, "109168:Stage3W", 177363 },                        -- Shrediron's Shredder (Stage 3)
				{ 105, "109168:Stage2W", 177363 },                        -- Shrediron's Shredder (Stage 2)
				{ 106, "109168:Stage1",  162199, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Shrediron's Shredder (Stage 1) (Sold, Ashran)
			},
			[MOP_DIFF] = {
				{ 1,  77533, 127117 }, -- Lightweight Retinal Armor : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 2,  77534, 127118 }, -- Agile Retinal Armor : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 3,  77535, 127119 }, -- Camouflage Retinal Armor : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 4,  77536, 127120 }, -- Deadly Retinal Armor : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 5,  77537, 127121 }, -- Energized Retinal Armor : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 6,  77539, 127123 }, -- Reinforced Retinal Armor : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 7,  77538, 127122 }, -- Specialized Retinal Armor : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 8,  87213, 127130 }, -- Mist-Piercing Goggles : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 16, 77528, 127137 }, -- Long-Range Trillium Sniper : =ds=#sr# 565 : =ds=AtlasLoot["Trainer"]
				{ 17, 77527, 127136 }, -- Big Game Hunter : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  59449, 81725 }, -- Lightweight Bio-Optic Killshades : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 2,  59455, 81722 }, -- Agile Bio-Optic Killshades : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 3,  59453, 81724 }, -- Camouflauge Bio-Optic Killshades : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 4,  59456, 81716 }, -- Deadly Bio-Optic Killshades : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 5,  59458, 81720 }, -- Energized Bio-Optic Killshades : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 6,  59359, 81714 }, -- Reinforced Bio-Optic Killshades : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 7,  59448, 81715 }, -- Specialized Bio-Optic Killshades : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 16, 71077, 100687 }, -- Extreme-Impact Hole Puncher : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 17, 59364, 84431 }, -- Overpowered Chicken Splitter : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 18, 59367, 84432 }, -- Kickback 5000 : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 19, 59599, 84417 }, -- Volatile Thunderstick : =ds=#sr# 495 : =ds=AtlasLoot["Trainer"]
				{ 20, 59598, 84420 }, -- Finely-Tuned Throat Needler : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  42553, 56484 }, -- Visage Liquification Goggles : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 2,  42554, 56486 }, -- Greensight Gogs : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 3,  42550, 56481 }, -- Weakness Spectralizers : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 4,  42555, 56487 }, -- Electroflux Sight Enhancers : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 5,  42551, 56574 }, -- Truesight Ice Blinders : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 6,  42549, 56480 }, -- Armored Titanium Goggles : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 7,  42552, 56483 }, -- Charged Titanium Specs : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 8,  44949, 62271 }, -- Unbreakable Healing Amplifiers : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 10, 44742, 61483 }, -- Mechanized Snow Goggles : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 16, 41168, 56479 }, -- Armor Plated Combat Shotgun : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 17, 44504, 60874 }, -- Nesingwary 4000 : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 18, 39688, 54353 }, -- Mark "S" Boomstick : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,   34847, 46111 }, -- Annihilator Holo-Gogs : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 2,   23838, 30565 }, -- Foreman's Enchanted Helmet : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 3,   23828, 30574 }, -- Gnomish Power Goggles : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 4,   35181, 46108 }, -- Powerheal 9000 Lens : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 5,   32494, 41320 }, -- Destruction Holo-Gogs : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 6,   32495, 41321 }, -- Powerheal 4000 Lens : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 7,   23829, 30575 }, -- Gnomish Battle Goggles : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 8,   35182, 46109 }, -- Hyper-Magnified Moon Specs : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 9,   34353, 46116 }, -- Quad Deathblow X44 Goggles : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 10,  35183, 46106 }, -- Wonderheal XT68 Shades : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 11,  32478, 41317 }, -- Deathblow X11 Goggles : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 12,  32480, 41319 }, -- Magnified Moon Specs : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 13,  32479, 41318 }, -- Wonderheal XT40 Shades : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 14,  23839, 30566 }, -- Foreman's Reinforced Helmet : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 15,  34355, 46112 }, -- Lightning Etched Specs : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 16,  35184, 46110 }, -- Primal-Attuned Goggles : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 17,  34356, 46113 }, -- Surestrike Goggles v3.0 : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 18,  32476, 41315 }, -- Gadgetstorm Goggles : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 19,  32475, 41316 }, -- Living Replicator Specs : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 20,  32474, 41314 }, -- Surestrike Goggles v2.0 : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 21,  34357, 46115 }, -- Hard Khorium Goggles : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 22,  35185, 46107 }, -- Justicebringer 3000 Specs : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 23,  34354, 46114 }, -- Mayhem Projection Goggles : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 24,  32461, 40274 }, -- Furious Gizmatic Goggles : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 25,  32473, 41312 }, -- Tankatronic Goggles : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 26,  23763, 30325 }, -- Hyper-Vision Goggles : =ds=#sr# 360 : =ds=AtlasLoot["Drop"]
				{ 27,  23824, 30556 }, -- Rocket Boots Xtreme : =ds=#sr# 355 : =ds=AtlasLoot_IngameLocales["The Steamvault"]
				{ 28,  35581, 46697 }, -- Rocket Boots Xtreme Lite : =ds=#sr# 355 : =ds=AtlasLoot_IngameLocales["The Mechanar"]
				{ 29,  23825, 30570 }, -- Nigh-Invulnerability Belt : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 30,  23762, 30318 }, -- Ultra-Spectropic Detection Goggles : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]
				{ 101, 23758, 30316 }, -- Cogspinner Goggles : =ds=#sr# 340 : =ds=AtlasLoot["Vendor"]
				{ 102, 23761, 30317 }, -- Power Amplification Goggles : =ds=#sr# 340 : =ds=AtlasLoot["World Drop"]
				{ 116, 32756, 41307 }, -- Gyro-Balanced Khorium Destroyer : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 117, 23748, 30315 }, -- Ornate Khorium Rifle : =ds=#sr# 375 : =ds=AtlasLoot["World Drop"]
				{ 118, 23747, 30314 }, -- Felsteel Boomstick : =ds=#sr# 360 : =ds=AtlasLoot["Drop"]
				{ 119, 23746, 30313 }, -- Adamantite Rifle : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]
				{ 120, 23742, 30312 }, -- Fel Iron Musket : =ds=#sr# 320 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,   18168, 22797 }, -- Force Reactive Disk : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Molten Core"]
				{ 2,   19999, 24356 }, -- Bloodvine Goggles : =ds=#sr# 300 : =ds=AtlasLoot["No Longer Available"]
				{ 3,   19998, 24357 }, -- Bloodvine Lens : =ds=#sr# 300 : =ds=AtlasLoot["No Longer Available"]
				{ 4,   16008, 19825 }, -- Master Engineer's Goggles : =ds=#sr# 290 : =ds=AtlasLoot["Trainer"]
				{ 5,   16009, 19819 }, -- Voice Amplification Modulator : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Stratholme"]
				{ 6,   15999, 19794 }, -- Spellpower Goggles Xtreme Plus : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 7,   10504, 12622 }, -- Green Lens : =ds=#sr# 245 : =ds=AtlasLoot["Trainer"]
				{ 8,   10588, 12758 }, -- Goblin Rocket Helmet : =ds=#sr# 245 : =ds=AtlasLoot["Trainer"]
				{ 9,   10726, 12907 }, -- Gnomish Mind Control Cap : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 10,  10506, 12617 }, -- Deepdive Helmet : =ds=#sr# 230 : =ds=???
				{ 11,  10503, 12618 }, -- Rose Colored Goggles : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 12,  10724, 12905 }, -- Gnomish Rocket Boots : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 13,  7189,  8895 }, -- Goblin Rocket Boots : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 14,  10518, 12616 }, -- Parachute Cloak : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 15,  10502, 12615 }, -- Spellpower Goggles Xtreme : =ds=#sr# 225 : nil
				{ 16,  10501, 12607 }, -- Catseye Ultra Goggles : =ds=#sr# 220 : =ds=AtlasLoot["World Drop"]
				{ 17,  10721, 12903 }, -- Gnomish Harm Prevention Belt : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 18,  10545, 12897 }, -- Gnomish Goggles : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 19,  10500, 12594 }, -- Fire Goggles : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 20,  10543, 12718 }, -- Goblin Construction Helmet : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 21,  10542, 12717 }, -- Goblin Mining Helmet : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 22,  4393,  3966 }, -- Craftsman's Monocle : =ds=#sr# 185 : =ds=AtlasLoot["World Drop"]
				{ 23,  10499, 12587 }, -- Bright-Eye Goggles : =ds=#sr# 175 : =ds=AtlasLoot["World Drop"]
				{ 24,  4385,  3956 }, -- Green Tinted Goggles : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 25,  4373,  3940 }, -- Shadow Goggles : =ds=#sr# 120 : =ds=AtlasLoot["World Drop"]
				{ 26,  4368,  3934 }, -- Flying Tiger Goggles : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 101, 18282, 22795 }, -- Core Marksman Rifle : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Molten Core"]
				{ 102, 16007, 19833 }, -- Flawless Arcanite Rifle : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Eastern Plaguelands"]
				{ 103, 16004, 19796 }, -- Dark Iron Rifle : =ds=#sr# 275 : =ds=AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 104, 15995, 19792 }, -- Thorium Rifle : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 105, 10510, 12614 }, -- Mithril Heavy-Bore Rifle : =ds=#sr# 220 : =ds=AtlasLoot["World Drop"]
				{ 106, 10508, 12595 }, -- Mithril Blunderbuss : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 107, 4383,  3954 }, -- Moonsight Rifle : =ds=#sr# 145 : =ds=AtlasLoot["World Drop"]
				{ 108, 4379,  3949 }, -- Silver-Plated Shotgun : =ds=#sr# 130 : =ds=AtlasLoot["Trainer"]
				{ 109, 4372,  3939 }, -- Lovingly Crafted Boomstick : =ds=#sr# 120 : =ds=AtlasLoot_IngameLocales["Thousand Needles"]
				{ 110, 4369,  3936 }, -- Deadly Blunderbuss : =ds=#sr# 105 : =ds=AtlasLoot["Trainer"]
				{ 111, 4362,  3925 }, -- Rough Boomstick : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 112, 6219,  7430 }, -- Arclight Spanner : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EngineeringDevices
			name = AL["Devices"],
			[TWW_DIFF] = {
				{ 1,  221949, 447365,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Pausing Pylon
				{ 2,  221957, 447367,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Algari Repair Bot 11O
				{ 3,  221953, 447366 },                           -- Convincingly Realistic Jumper Cables
				{ 4,  221945, 447364 },                           -- Irresistible Red Button
				{ 5,  219387, 447369 },                           -- Barrel of Fireworks
				{ 6,  221962, 447370 },                           -- Defective Escape Pod
				{ 7,  221966, 447372 },                           -- Wormhole Generator: Khaz Algar
				{ 8,  221964, 447371 },                           -- Filmless Camera
				{ 9,  219403, 443570 },                           -- Stonebound Lantern
				{ 10, 221959, 447368,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Portable Profession Possibility Projector
				{ 11, 232985, 1213620, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- 22H Slicks
			},
			[BFA_DIFF] = {
				{ 1,  153573, 256070 }, -- Electroshock Mount Motivator
				{ 2,  153573, 256071 }, -- Electroshock Mount Motivator
				{ 3,  153573, 256072 }, -- Electroshock Mount Motivator

				{ 5,  153512, 256073 }, -- XA-1000 Surface Skimmer
				{ 6,  153512, 256074 }, -- XA-1000 Surface Skimmer
				{ 7,  153512, 256075 }, -- XA-1000 Surface Skimmer

				{ 9,  158380, 280732 }, -- Magical Intrusion Dampener
				{ 10, 158380, 280733 }, -- Magical Intrusion Dampener
				{ 11, 158380, 280734 }, -- Magical Intrusion Dampener

				{ 16, 153597, 256154 }, -- Deployable Attire Rearranger
				{ 17, 153597, 256155 }, -- Deployable Attire Rearranger
				{ 18, 153597, 256156 }, -- Deployable Attire Rearranger

				{ 20, 153510, 256080 }, -- Interdimensional Companion Repository
				{ 21, 153510, 256082 }, -- Interdimensional Companion Repository
				{ 22, 153510, 256084 }, -- Interdimensional Companion Repository
			},
		},
		{ --EngineeringExplosives
			name = ALIL["Explosives"],
			[TWW_DIFF] = {
				{ 1, 221880, 447344, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Potion Bomb of Power
				{ 2, 221876, 447343, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Potion Bomb of Recovery
				{ 3, 221872, 447342, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Potion Bomb of Speed
				{ 4, 224586, 447374 },                 -- Box o' Booms
			},
			[BFA_DIFF] = {
				{ 1,  153494, 255395 }, -- Thermo-Accelerated Plague Spreader
				{ 2,  153494, 255396 }, -- Thermo-Accelerated Plague Spreader
				{ 3,  153494, 255397 }, -- Thermo-Accelerated Plague Spreader

				{ 16, 153487, 255407 }, -- Organic Discombobulation Grenade
				{ 17, 153487, 255408 }, -- Organic Discombobulation Grenade
				{ 18, 153487, 255409 }, -- Organic Discombobulation Grenade


				{ 5,  153490, 255392 }, -- F.R.I.E.D.
				{ 6,  153490, 255393 }, -- F.R.I.E.D.
				{ 7,  153490, 255394 }, -- F.R.I.E.D.
			},
			[MOP_DIFF] = {
				{ 1, 86607, 127128 },                 -- Goblin Flame Thrower, Mark II : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 2, 77589, 127127, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- G91 Landshark : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 3, 77532, 127124 },                 -- Locksmith's Powderkeg : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 63396, 95707 }, -- Big Daddy : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 2, 60853, 84409 }, -- Volatile Seaforium Blastpack : =ds=#sr# 455 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 42641, 56514 },                 -- Global Thermal Sapper Charge : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 2, 44951, 56468 },                 -- Box of Bombs : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 3, 40536, 56463, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Explosive Decoy : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 4, 40771, 56460, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Cobalt Frag Bomb : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 23819, 30547, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Elemental Seaforium Charge : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Revered"]
				{ 2, 23827, 30560, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Super Sapper Charge : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 3, 32413, 39973, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Frost Grenade : =ds=#sr# 335 : =ds=AtlasLoot["Trainer"]
				{ 4, 23737, 30311, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Adamantite Grenade : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 5, 23826, 30558, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- The Bigger One : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 6, 23736, 30310, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Fel Iron Bomb : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  16040, 19831, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Arcane Bomb : =ds=#sr# 300 : =ds=AtlasLoot["World Drop"]
				{ 2,  16005, 19799, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Dark Iron Bomb : =ds=#sr# 285 : =ds=AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 3,  18594, 23080 },                     -- Powerful Seaforium Charge : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]
				{ 4,  15993, 19790, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Thorium Grenade : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 5,  18641, 23070, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Dense Dynamite : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 6,  10562, 12619, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Hi-Explosive Bomb : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 7,  10586, 12754, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- The Big One : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 8,  10514, 12603, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Mithril Frag Bomb : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 9,  10646, 12760 },                     -- Goblin Sapper Charge : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 10, 10577, 13240 },                     -- The Mortar: Reloaded : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 11, 18588, 23069 },                     -- Ez-Thro Dynamite II : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]
				{ 12, 4398,  3972 },                      -- Large Seaforium Charge : =ds=#sr# 200 : =ds=AtlasLoot["World Drop"]
				{ 13, 4395,  3968 },                      -- Goblin Land Mine : =ds=#sr# 195 : =ds=AtlasLoot["World Drop"]
				{ 14, 4394,  3967,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Big Iron Bomb : =ds=#sr# 190 : =ds=AtlasLoot["Trainer"]
				{ 15, 4852,  8243 },                      -- Flash Bomb : =ds=#sr# 185 : =ds=AtlasLoot_IngameLocales["Gnomeregan"]
				{ 16, 4390,  3962,  [ATLASLOOT_IT_AMOUNT1] = "2-4" }, -- Iron Grenade : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 17, 10507, 12586, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Solid Dynamite : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 18, 4403,  3960 },                      -- Portable Bronze Mortar : =ds=#sr# 165 : =ds=AtlasLoot["World Drop"]
				{ 19, 4384,  3955 },                      -- Explosive Sheep : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 20, 4380,  3950,  [ATLASLOOT_IT_AMOUNT1] = "2-4" }, -- Big Bronze Bomb : =ds=#sr# 140 : =ds=AtlasLoot["Trainer"]
				{ 21, 4378,  3946,  [ATLASLOOT_IT_AMOUNT1] = "1-5" }, -- Heavy Dynamite : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 22, 4374,  3941,  [ATLASLOOT_IT_AMOUNT1] = "1-3" }, -- Small Bronze Bomb : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 23, 4370,  3937,  [ATLASLOOT_IT_AMOUNT1] = "2-4" }, -- Large Copper Bomb : =ds=#sr# 105 : =ds=AtlasLoot["Trainer"]
				{ 24, 6714,  8339,  [ATLASLOOT_IT_AMOUNT1] = "1-3" }, -- Ez-Thro Dynamite : =ds=#sr# 100 : =ds=AtlasLoot["World Drop"]
				{ 25, 4367,  3933 },                      -- Small Seaforium Charge : =ds=#sr# 100 : =ds=AtlasLoot["World Drop"]
				{ 26, 4365,  3931 },                      -- Coarse Dynamite : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 27, 4360,  3923 },                      -- Rough Copper Bomb : =ds=#sr# 30 : =ds=AtlasLoot["Trainer"]
				{ 28, 4358,  3919 },                      -- Rough Dynamite : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EngineeringFirework
			name = AL["Firework"],
			[NORMAL_DIFF] = {
				{ 1,  89991, 131353 },                 -- Pandaria Firework : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 2,  89893, 131256, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Autumn Flower Firework : =ds=#sr# 500 : #ITEMID:89991#
				{ 3,  88493, 128260, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Celestial Firework : =ds=#sr# 500 : #ITEMID:89991#
				{ 4,  88491, 128261, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Grand Celebration Firework : =ds=#sr# 500 : #ITEMID:89991#
				{ 5,  89888, 131258, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Jade Blossom Firework : =ds=#sr# 500 : #ITEMID:89991#
				{ 6,  87764, 128262, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Serpent's Heart Firework : =ds=#sr# 500 : #ITEMID:89991#
				{ 8,  23771, 30344,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Green Smoke Flare : =ds=#sr# 335 : =ds=AtlasLoot["Vendor"]
				{ 9,  25886, 32814,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Purple Smoke Flare : =ds=#sr# 335 : =ds=AtlasLoot["World Drop"]
				{ 10, 23768, 30341,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- White Smoke Flare : =ds=#sr# 335 : =ds=AtlasLoot["Vendor"]
				{ 11, 21570, 26443,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Cluster Launcher : =ds=#sr# 275 : =ds=AtlasLoot["Lunar Festival"]
				{ 12, 21714, 26426,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Large Blue Rocket Cluster : =ds=#sr# 275 : =ds=AtlasLoot["Lunar Festival"]
				{ 13, 21716, 26427,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Large Green Rocket Cluster : =ds=#sr# 275 : =ds=AtlasLoot["Lunar Festival"]
				{ 14, 21718, 26428,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Large Red Rocket Cluster : =ds=#sr# 275 : =ds=AtlasLoot["Lunar Festival"]
				{ 15, 19026, 23507,  [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Snake Burst Firework : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]
				{ 16, 21569, 26442 },                  -- Firework Launcher : =ds=#sr# 225 : =ds=AtlasLoot["Lunar Festival"]
				{ 17, 21571, 26423,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Blue Rocket Cluster : =ds=#sr# 225 : =ds=AtlasLoot["Lunar Festival"]
				{ 18, 21574, 26424,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Green Rocket Cluster : =ds=#sr# 225 : =ds=AtlasLoot["Lunar Festival"]
				{ 19, 21576, 26425,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Red Rocket Cluster : =ds=#sr# 225 : =ds=AtlasLoot["Lunar Festival"]
				{ 21, 21589, 26420,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Large Blue Rocket : =ds=#sr# 175 : =ds=AtlasLoot["Lunar Festival"]
				{ 22, 21590, 26421,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Large Green Rocket : =ds=#sr# 175 : =ds=AtlasLoot["Lunar Festival"]
				{ 23, 21592, 26422,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Large Red Rocket : =ds=#sr# 175 : =ds=AtlasLoot["Lunar Festival"]
				{ 25, 9312,  23067,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Blue Firework : =ds=#sr# 150 : =ds=AtlasLoot["Vendor"]
				{ 26, 9313,  23068,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Green Firework : =ds=#sr# 150 : =ds=AtlasLoot["Vendor"]
				{ 27, 9318,  23066,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Red Firework : =ds=#sr# 150 : =ds=AtlasLoot["Vendor"]
				{ 28, 21558, 26416,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Small Blue Rocket : =ds=#sr# 125 : =ds=AtlasLoot["Lunar Festival"]
				{ 29, 21559, 26417,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Small Green Rocket : =ds=#sr# 125 : =ds=AtlasLoot["Lunar Festival"]
				{ 30, 21557, 26418,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Small Red Rocket : =ds=#sr# 125 : =ds=AtlasLoot["Lunar Festival"]
			},
		},
		{ --EngineeringCogwheel
			name = AL["Cogwheels"],
			[TWW_DIFF] = {
				{ 1, 221920, 447356 }, -- Adjustable Cogwheel
				{ 2, 221917, 447355 }, -- Impeccable Cogwheel
				{ 3, 221914, 447354 }, -- Overclocked Cogwheel
				{ 4, 221911, 447353 }, -- Serrated Cogwheel
			},
			[MOP_DIFF] = {
				{ 1, 77544, 131211 }, -- Flashing Tinker's Gear : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 2, 77547, 131212 }, -- Fractured Tinker's Gear : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 3, 77543, 131213 }, -- Precise Tinker's Gear : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 4, 77542, 131214 }, -- Quick Tinker's Gear : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 5, 77545, 131215 }, -- Rigid Tinker's Gear : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 6, 77541, 131216 }, -- Smooth Tinker's Gear : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 7, 77546, 131217 }, -- Sparkling Tinker's Gear : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 8, 77540, 131218 }, -- Subtle Tinker's Gear : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 59480 }, -- Fractured Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
				{ 2, 59491 }, -- Flashing Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
				{ 3, 68660 }, -- Mystic Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
				{ 4, 59489 }, -- Precise Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
				{ 5, 59479 }, -- Quick Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
				{ 6, 59493 }, -- Rigid Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
				{ 7, 59496 }, -- Sparkling Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
				{ 8, 59478 }, -- Smooth Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
				{ 9, 59477 }, -- Subtle Cogwheel : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"]
			},
		},
		{ -- Profession Equipment
			name = AL["Profession Equipment"],
			[TWW_DIFF] = {
				{ 1,  221788, 447324 }, -- Bismuth Brainwave Projector
				{ 2,  221790, 447326 }, -- Bismuth Fisherfriend
				{ 3,  221795, 447330 }, -- Bismuth Miner's Headgear
				{ 4,  221797, 447332 }, -- Bismuth-Fueled Samophlange
				{ 5,  221792, 447328 }, -- Lapidary's Bismuth Clamps
				{ 6,  221799, 447334 }, -- Miner's Bismuth Hoard
				{ 7,  221786, 447322 }, -- Spring-Loaded Bismuth Fabric Cutters
				{ 8,  221789, 447325 }, -- Aqirite Brainwave Projector
				{ 9,  221791, 447327 }, -- Aqirite Fisherfriend
				{ 10, 221796, 447331 }, -- Aqirite Miner's Headgear
				{ 11, 221798, 447333 }, -- Aqirite Fueled Samophlange
				{ 12, 221793, 447329 }, -- Lapidary's Aqirite Clamps
				{ 13, 221800, 447335 }, -- Miner's Aqirite Hoard
				{ 14, 221787, 447323 }, -- Spring-Loaded Aqirite Fabric Cutters
			},
		},
		{ --EngineeringMountsPets
			name = AL["Mounts"].." & "..AL["Pets"],
			[TWW_DIFF] = {
				{ 1, 221967, 447373 }, -- Crowd Pummeler 2-30
			},
			[BFA_DIFF] = {
				{ 1, 161134, 274621 }, -- Mecha-Mogul Mk2
			},
			[NORMAL_DIFF] = {
				{ 1,  132519, 198981 },                        -- Trigger
				{ 3,  112057, 162210, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Lifelike Mechanical Frostboar (Sold, Ashran)
				{ 4,  111402, 162209, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Mechanical Axebeak (Sold, Ashran)
				{ 5,  118741, 176732, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Mechanical Scorpid (Sold, Ashran)
				{ 6,  94903,  139196 },                        -- Pierre : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 7,  100905, 143714 },                        -- Rascal-Bot : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 8,  87526,  127135 },                        -- Mechanical Pandaren Dragonling : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 9,  60216,  84413 },                         -- De-Weaponized Mechanical Companion : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"], #p17#
				{ 10, 59597,  84412 },                         -- Personal World Destroyer : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"], #p18#
				{ 11, 15996,  19793 },                         -- Lifelike Mechanical Toad : =ds=#sr# 265 : =ds=AtlasLoot["World Drop"]
				{ 12, 21277,  26011 },                         -- Tranquil Mechanical Yeti : =ds=#sr# 250 : =ds=AtlasLoot["Quest Reward"]
				{ 13, 11826,  15633 },                         -- Lil' Smoky : =ds=#sr# 205 : =ds=AtlasLoot_IngameLocales["Gnomeregan"]
				{ 14, 11825,  15628 },                         -- Pet Bombling : =ds=#sr# 205 : =ds=AtlasLoot_IngameLocales["Gnomeregan"]
				{ 15, 4401,   3928 },                          -- Mechanical Squirrel Box : =ds=#sr# 75 : =ds=AtlasLoot["World Drop"]
				{ 16, 95416,  139192 },                        -- Sky Golem : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 17, 87251,  127139 },                        -- Geosynchronous World Spinner : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"], #p17#
				{ 18, 87250,  127138 },                        -- Depleted-Kyparium Rocket : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"], #p18#
				{ 19, 41508,  60866 },                         -- Mechano-Hog : =ds=#sr# 450 : =ds=AtlasLoot_IngameLocales["Horde Expedition"] - AtlasLoot["Exalted"]
				{ 20, 44413,  60867 },                         -- Mekgineer's Chopper : =ds=#sr# 450 : =ds=AtlasLoot_IngameLocales["Alliance Vanguard"] - AtlasLoot["Exalted"]
				{ 21, 34061,  44157 },                         -- Turbo-Charged Flying Machine Control : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 22, 34060,  44155 },                         -- Flying Machine Control : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EngineeringReagents
			name = AL["Reagents"],
			[TWW_DIFF] = {
				{ 1,  225987, 459299 }, -- Bottled Brilliance
				{ 3,  221938, 447362 }, -- Concealed Chaos Module
				{ 4,  221941, 447363 }, -- Energy Redistribution Beacon
				{ 5,  221935, 447361 }, -- Pouch of Pocket Grenades
				{ 7,  221926, 447358 }, -- Blame Redirection Device
				{ 8,  221932, 447360 }, -- Complicated Fuse Box
				{ 9,  221923, 447357 }, -- Recalibrated Safety Switch
				{ 16, 221865, 447340 }, -- Chaos Circuit
				{ 17, 221868, 447341 }, -- Entropy Enhancer
				{ 18, 221862, 447339 }, -- Safety Switch
				{ 19, 221859, 447338 }, -- Gyrating Gear
				{ 20, 221853, 447336 }, -- Handful of Bismuth Bolts
				{ 21, 221856, 447337 }, -- Whimsical Wiring
			},
			[WOD_DIFF] = {
				{ 1, 111366, 169080, [ATLASLOOT_IT_AMOUNT1] = "8+" }, -- Gearspring Parts (Learnt by item 111921)
				{ 2, 111366, 182120 },                    -- Gearspring Parts (Learnt by item 111921)
				{ 4, 119299, 177054 },                    -- Secrets of Draenor Engineering (Learnt by item 111921)
			},
			[MOP_DIFF] = {
				{ 1, 94113, 139176 },                 -- Jard's Peculiar Energy Source : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 2, 90146, 131563, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Tinker's Kit : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 3, 77467, 127113, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Ghost Iron Bolts : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 4, 77468, 127114, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- High-Explosive Gunpowder : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 67749, 94748, [ATLASLOOT_IT_AMOUNT1] = "2-3" }, -- Electrified Ether : =ds=#sr# 445 : =ds=AtlasLoot["Trainer"]
				{ 2, 60224, 84403, [ATLASLOOT_IT_AMOUNT1] = "2-4" }, -- Handful of Obsidium Bolts : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 39683, 56471 },                     -- Froststeel Tube : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 2, 39682, 56464 },                     -- Overcharged Capacitor : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 3, 39681, 56349, [ATLASLOOT_IT_AMOUNT1] = "1-3" }, -- Handful of Cobalt Bolts : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 4, 39690, 53281, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Volatile Blasting Trigger : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 23787, 30309 },                  -- Felsteel Stabilizer : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 2, 23785, 30307 },                  -- Hardened Adamantite Tube : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 3, 23786, 30308 },                  -- Khorium Power Core : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 4, 32423, 39971, [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Icy Blasting Primers : =ds=#sr# 335 : =ds=AtlasLoot["Trainer"]
				{ 5, 23784, 30306 },                  -- Adamantite Frame : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 6, 23783, 30305 },                  -- Handful of Fel Iron Bolts : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 7, 23781, 30303, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Elemental Blasting Powder : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 8, 23782, 30304 },                  -- Fel Iron Casing : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  16006, 19815 },                 -- Delicate Arcanite Converter : =ds=#sr# 285 : =ds=AtlasLoot["Vendor"]
				{ 2,  16000, 19795 },                 -- Thorium Tube : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 3,  7191,  39895, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Fused Wiring : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]
				{ 4,  15994, 19791 },                 -- Thorium Widget : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 5,  18631, 23071 },                 -- Truesilver Transformer : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 6,  15992, 19788 },                 -- Dense Blasting Powder : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 7,  10561, 12599 },                 -- Mithril Casing : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 8,  10560, 12591 },                 -- Unstable Trigger : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 9,  10559, 12589 },                 -- Mithril Tube : =ds=#sr# 195 : =ds=AtlasLoot["Trainer"]
				{ 10, 10498, 12590 },                 -- Gyromatic Micro-Adjustor : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 11, 10505, 12585 },                 -- Solid Blasting Powder : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 12, 4389,  3961 },                  -- Gyrochronatom : =ds=#sr# 170 : =ds=AtlasLoot["Trainer"]
				{ 13, 4387,  3958 },                  -- Iron Strut : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 14, 10558, 12584, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Gold Power Core : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 15, 4382,  3953 },                  -- Bronze Framework : =ds=#sr# 145 : =ds=AtlasLoot["Trainer"]
				{ 16, 4375,  3942 },                  -- Whirring Bronze Gizmo : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 17, 4377,  3945 },                  -- Heavy Blasting Powder : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 18, 4371,  3938 },                  -- Bronze Tube : =ds=#sr# 105 : =ds=AtlasLoot["Trainer"]
				{ 19, 4404,  3973 },                  -- Silver Contact : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
				{ 20, 4364,  3929 },                  -- Coarse Blasting Powder : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 21, 4361,  3924 },                  -- Copper Tube : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 22, 4359,  3922 },                  -- Handful of Copper Bolts : =ds=#sr# 30 : =ds=AtlasLoot["Trainer"]
				{ 23, 4357,  3918 },                  -- Rough Blasting Powder : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EngineeringRelic
			name = AL["Relic"],
			[LEGION_DIFF] = {
				{ 1, 136687, 209501 }, -- "The Felic"
				{ 2, 136688, 209502 }, -- Shockinator
			},
		},
		{ --EngineeringScopes
			name = AL["Scopes"],
			[BFA_DIFF] = {
				{ 1,  158203, 265097 }, -- Incendiary Ammunition
				{ 2,  158203, 265098 }, -- Incendiary Ammunition
				{ 3,  158203, 265099 }, -- Incendiary Ammunition

				{ 5,  158377, 265100 }, -- Frost-Laced Ammunition
				{ 6,  158377, 265101 }, -- Frost-Laced Ammunition
				{ 7,  158377, 265102 }, -- Frost-Laced Ammunition

				{ 16, 158212, 264960 }, -- Crow's Nest Scope
				{ 17, 158212, 264961 }, -- Crow's Nest Scope
				{ 18, 158212, 264962 }, -- Crow's Nest Scope

				{ 20, 158327, 264964 }, -- Monelite Scope of Alacrity
				{ 21, 158327, 264966 }, -- Monelite Scope of Alacrity
				{ 22, 158327, 264967 }, -- Monelite Scope of Alacrity
			},
			[NORMAL_DIFF] = {
				{ 1,  118008, 173289, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Hemet's Heartseeker (Sold, Ashran)
				{ 2,  109122, 162203, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Megawatt Filament (Sold, Ashran)
				{ 3,  109120, 162202, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Oglethorpe's Missile Splitter (Sold, Ashran)
				{ 5,  77529,  127115 },                        -- Lord Blastington's Scope of Doom : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 6,  77531,  127116 },                        -- Mirror Scope : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 8,  70139,  100587 },                        -- Flintlocke's Woodchucker : =ds=#sr# 515 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 9,  59594,  84428 },                         -- Gnomish X-Ray Scope : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 10, 59596,  84410 },                         -- Safety Catch Removal Kit : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 11, 59595,  84408 },                         -- R19 Threatfinder : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 13, 41167,  56478 },                         -- Heartseeker Scope : =ds=#sr# 430 : =ds=AtlasLoot["Trainer"]
				{ 14, 41146,  56470 },                         -- Sun Scope : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 15, 44739,  61471 },                         -- Diamond-Cut Refractor Scope : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 16, 23766,  30334 },                         -- Stabilized Eternium Scope : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Karazhan"]
				{ 17, 23765,  30332 },                         -- Khorium Scope : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Netherstorm"]
				{ 18, 23764,  30329 },                         -- Adamantite Scope : =ds=#sr# 335 : =ds=AtlasLoot["Vendor"]
				{ 20, 18283,  22793 },                         -- Biznicks 247x128 Accurascope : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Molten Core"]
				{ 21, 10548,  12620 },                         -- Sniper Scope : =ds=#sr# 240 : =ds=AtlasLoot["World Drop"]
				{ 22, 10546,  12597 },                         -- Deadly Scope : =ds=#sr# 210 : =ds=AtlasLoot["Vendor"]
				{ 23, 4407,   3979 },                          -- Accurate Scope : =ds=#sr# 180 : =ds=AtlasLoot["Vendor"]
				{ 24, 4406,   3978 },                          -- Standard Scope : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 25, 4405,   3977 },                          -- Crude Scope : =ds=#sr# 60 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EngineeringTinker
			name = AL["Tinker"],
			[TWW_DIFF] = {
				{ 1, 221904, 447350 }, -- Tinker: Earthen Delivery Drill
				{ 2, 221908, 447351 }, -- Tinker: Heartseeking Health Injector
			},
			[LEGION_DIFF] = {
				{ 1,  132509, 198972 }, -- Deployable Bullet Dispenser
				{ 2,  132509, 198999 }, -- Deployable Bullet Dispenser
				{ 3,  132509, 199013 }, -- Deployable Bullet Dispenser
				{ 5,  132510, 198973 }, -- Gunpowder Charge
				{ 6,  132510, 199000 }, -- Gunpowder Charge
				{ 7,  132510, 199014 }, -- Gunpowder Charge
				{ 9,  132511, 198974 }, -- Pump-Action Bandage Gun
				{ 10, 132511, 199001 }, -- Pump-Action Bandage Gun
				{ 11, 132511, 199015 }, -- Pump-Action Bandage Gun
				{ 16, 132514, 198976 }, -- Auto-Hammer
				{ 17, 132514, 199003 }, -- Auto-Hammer
				{ 18, 132514, 199017 }, -- Auto-Hammer
				{ 20, 132515, 198977 }, -- Failure Detection Pylon
				{ 21, 132515, 199004 }, -- Failure Detection Pylon
				{ 22, 132515, 199018 }, -- Failure Detection Pylon
				{ 24, 132513, 198975 }, -- Gunpack
				{ 25, 132513, 199002 }, -- Gunpack
				{ 26, 132513, 199016 }, -- Gunpack
				{ 27, 132516, 198978 }, -- Gunshoes
				{ 29, 136606, 209645 }, -- Leystone Buoy
				{ 30, 134125, 209646 }, -- Mecha-Bond Imprint Matrix
			},
			[WOD_DIFF] = {
				{ 1,  109076,      162204, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Goblin Glider Kit (Learnt by item 111921)
				{ 2,  118007,      173308, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Mecha-Blast Rocket (Learnt by item 111921)
				{ 3,  118006,      173309, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Shieldtronic Shield (Learnt by item 111921)
				{ 4,  109184,      162207, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Stealthman 54 (Learnt by item 111921)
				{ 6,  "prof126392" },                        -- Goblin Glider : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 7,  "prof55002" },                         -- Flexweave Underlay : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
				{ 16, "prof109099" },                        -- Watergliding Jets : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 17, "prof84424" },                         -- Invisibility Field : =ds=#sr# 450+ : =ds=AtlasLoot["Discovery"]
				{ 18, "prof84425" },                         -- Cardboard Assassin : =ds=#sr# 450+ : =ds=AtlasLoot["Discovery"]
				{ 19, "prof84427" },                         -- Grounded Plasma Shield : =ds=#sr# 450+ : =ds=AtlasLoot["Discovery"]
				{ 20, "prof55016" },                         -- Nitro Boosts : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 21, "prof67839" },                         -- Mind Amplification Dish : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 22, "prof54736" },                         -- Personal Electromagnetic Pulse Generator : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 23, "prof54793" },                         -- Frag Belt : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
				{ 24, "prof82200" },                         -- Spinal Healing Injector : =ds=#sr# 450+ : =ds=AtlasLoot["Discovery"]
			},
		},
		{ --EngineeringTrinkets
			name = AL["Trinkets"],
			[NORMAL_DIFF] = {
				{ 1,  77530, 127134 }, -- Ghost Iron Dragonling : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 2,  60403, 84418 }, -- Elementium Dragonling : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 3,  41121, 56469 }, -- Gnomish Lightning Generator : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 4,  40865, 56467 }, -- Noise Machine : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 5,  40767, 56466 }, -- Sonic Booster : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 6,  23836, 30563 }, -- Goblin Rocket Launcher : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 7,  23835, 30569 }, -- Gnomish Poultryizer : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 8,  16022, 19830 }, -- Arcanite Dragonling : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]
				{ 9,  18639, 23082 }, -- Ultra-Flash Shadow Reflector : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Stratholme"]
				{ 10, 18638, 23081 }, -- Hyper-Radiant Flame Reflector : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Blackrock Spire"]
				{ 11, 18637, 23079 }, -- Major Recombobulator : =ds=#sr# 275 : =ds=AtlasLoot_IngameLocales["Dire Maul"]
				{ 12, 45631, 63750 }, -- High-powered Flashlight : =ds=#sr# 270 : =ds=AtlasLoot["Vendor"]
				{ 13, 18634, 23077 }, -- Gyrofreeze Ice Reflector : =ds=#sr# 260 : =ds=AtlasLoot["Vendor"]
				{ 14, 10576, 12624 }, -- Mithril Mechanical Dragonling : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 15, 10645, 12759 }, -- Gnomish Death Ray : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 16, 10727, 12908 }, -- Goblin Dragon Gun : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 17, 10725, 12906 }, -- Gnomish Battle Chicken : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 18, 10587, 12755 }, -- Goblin Bomb Dispenser : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 19, 10716, 12899 }, -- Gnomish Shrink Ray : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 20, 10577, 12716 }, -- Goblin Mortar : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 21, 4397,  3971 }, -- Gnomish Cloaking Device : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]
				{ 22, 4396,  3969 }, -- Mechanical Dragonling : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]
				{ 23, 4381,  3952 }, -- Minor Recombobulator : =ds=#sr# 140 : =ds=AtlasLoot["Vendor"]
				{ 24, 7506,  9269 }, -- Gnomish Universal Remote : =ds=#sr# 125 : =ds=AtlasLoot_IngameLocales["Gnomeregan"]
			},
		},
		{ --EngineeringMisc
			name = AL["Miscellaneous"],
			[BFA_DIFF] = {
				{ 1,  162107,      278411 }, -- Makeshift Azerite Detector
				{ 16, 162111,      278413 }, -- Monelite Fish Finder

				{ 3,  "prof255940" }, -- Belt Enchant: Personal Space Amplifier
				{ 4,  "prof269123" }, -- Belt Enchant: Miniaturized Plasma Shield
				{ 18, "prof255936" }, -- Belt Enchant: Holographic Horror Projector
			},
			[LEGION_DIFF] = {
				{ 1,  132517, 198979 }, -- Intra-Dalaran Wormhole Generator
				{ 3,  132518, 198980 }, -- Blingtron's Circuit Design Tutorial
				{ 5,  132982, 200466 }, -- Sonic Environment Enhancer
				{ 16, 132523, 198982 }, -- Reaves Battery
				{ 17, 132524, 198983 }, -- Reaves Module: Wormhole Generator Mode
				{ 18, 132525, 198984 }, -- Reaves Module: Repair Mode
				{ 19, 132526, 198985 }, -- Reaves Module: Failure Detection Mode
				{ 20, 132528, 198987 }, -- Reaves Module: Fireworks Display Mode
				{ 21, 132529, 198988 }, -- Reaves Module: Snack Distribution Mode
				{ 22, 132530, 198989 }, -- Reaves Module: Bling Mode
				{ 23, 132531, 198990 }, -- Reaves Module: Piloted Combat Mode
				-- 7.3.0
				{ 7,  151651, 247717 }, -- Gravitational Reduction Slippers
				{ 8,  151652, 247744 }, -- Wormhole Generator: Argus
			},
			[WOD_DIFF] = {
				{ 1,  111821, 162218, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Blingtron 5000 (Sold, Ashran)
				{ 2,  109167, 162205, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Findle's Loot-a-Rang (Sold, Ashran)
				{ 3,  108745, 162214, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Personal Hologram (Sold, Ashran)
				{ 4,  111820, 162217, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Swapblaster (Sold, Ashran)
				{ 5,  114943, 169140 },                         -- Ultimate Gnomish Army Knife (Learnt by item 111921)
				{ 6,  109183, 162206, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- World Shrinker (Sold, Ashran)
				{ 7,  112059, 162216, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Wormhole Centrifuge (Sold, Ashran)
				{ 8,  109253, 162208 },                         -- Ultimate Gnomish Army Knife (Learnt by item 111921)
				{ 16, 128011, 169076, [PRICE_EXTRA_ITTYPE] = "119299:5" }, -- Linkgrease Locksprocket (Sold, Ashran)
				{ 17, 127720, 187497, [PRICE_EXTRA_ITTYPE] = "109118:60" }, -- Bi-Directional Fizzle Reducer (Sold, Ashran)
				{ 18, 127738, 187521, [PRICE_EXTRA_ITTYPE] = "109118:60" }, -- Infrablue-Blocker Lenses (Sold, Garrison)
				{ 20, 128017, 177363, [PRICE_EXTRA_ITTYPE] = "119299:5" }, -- True Iron Trigger (Sold, Ashran)
				{ 21, 127719, 187496, [PRICE_EXTRA_ITTYPE] = "109119:60" }, -- Advanced Muzzlesprocket (Sold, Ashran)
				{ 22, 127737, 187520, [PRICE_EXTRA_ITTYPE] = "109119:60" }, -- Taladite Firing Pin (Sold, Ashran)
				{ 24, 114056, 169078, [PRICE_EXTRA_ITTYPE] = "119299:1" }, -- Didi's Delicate Assembly (Sold, Ashran)
			},
			[MOP_DIFF] = {
				{ 1, 87214, 127129 }, -- Blingtron 4000 : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 2, 92747, 139197 }, -- Advanced Refrigeration Unit : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 3, 87215, 127132 }, -- Wormhole Generator: Pandaria : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 4, 87216, 127131 }, -- Thermal Anvil : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 68049, 84430, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Heat-Treated Spinning Lure : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 2, 60858, 84429 },                 -- Goblin Barbecue : =ds=#sr# 505 : =ds=AtlasLoot["Trainer"]
				{ 3, 40727, 95705 },                 -- Gnomish Gravity Well : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 4, 60854, 84421 },                 -- Loot-a-Rang : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 5, 60217, 84416 },                 -- Elementium Toolbox : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 6, 60218, 84415 },                 -- Lure Master Tackle Box : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 7, 60223, 84411 },                 -- High-Powered Bolt Gun : =ds=#sr# 465 : =ds=AtlasLoot["Trainer"]
				{ 8, 67494, 95703 },                 -- Electrostatic Condenser : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  49040, 68067 },                 -- Jeeves : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]
				{ 2,  40772, 56462 },                 -- Gnomish Army Knife : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
				{ 3,  40895, 56473 },                 -- Gnomish X-Ray Specs : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 4,  40768, 56472 },                 -- MOLL-E : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 5,  42546, 56477, [ATLASLOOT_IT_AMOUNT1] = 8 }, -- Mana Injector Kit : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 6,  40769, 55252, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scrapbot Construction Kit : =ds=#sr# 415 : =ds=#QUESTID:12889#
				{ 7,  48933, 67920 },                 -- Wormhole Generator: Northrend : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 8,  37567, 56476, [ATLASLOOT_IT_AMOUNT1] = 8 }, -- Healing Injector Kit : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 9,  23775, 30349 },                 -- Titanium Toolbox : =ds=#sr# 405 : =ds=AtlasLoot["Drop"]
				{ 10, 47828, 67326 },                 -- Goblin Beam Welder : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 11, 40893, 56461 },                 -- Bladed Pickaxe : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 12, 40892, 56459 },                 -- Hammer Pick : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 34113, 44391, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Field Repair Bot 110G : =ds=#sr# 360 : =ds=AtlasLoot["Drop"]
				{ 2, 30542, 36954 },                  -- Dimensional Ripper - Area 52 : =ds=#sr# 350 : nil
				{ 3, 30544, 36955 },                  -- Ultrasafe Transporter - Toshley's Station : =ds=#sr# 350 : nil
				{ 4, 33093, 30552, [ATLASLOOT_IT_AMOUNT1] = 20 }, -- Mana Potion Injector : =ds=#sr# 345 : =ds=AtlasLoot["Drop"]
				{ 5, 33092, 30551, [ATLASLOOT_IT_AMOUNT1] = 20 }, -- Healing Potion Injector : =ds=#sr# 330 : =ds=AtlasLoot["Drop"]
				{ 6, 23767, 30337 },                  -- Crashin' Thrashin' Robot : =ds=#sr# 325 : =ds=AtlasLoot["Drop"]
				{ 7, 23774, 30348 },                  -- Fel Iron Toolbox : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]
				{ 8, 23841, 30568, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Gnomish Flame Turret : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 9, 23821, 30548 },                  -- Zapthrottle Mote Extractor : =ds=#sr# 305 : =ds=LibBabble-Inventory-3.0["Quest"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  18232, 22704 },                 -- Field Repair Bot 74A : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 2,  16023, 19814 },                 -- Masterwork Target Dummy : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]
				{ 3,  22728, 28327 },                 -- Steam Tonk Controller : =ds=#sr# 275 : =ds=AtlasLoot_IngameLocales["Darkmoon Faire"]
				{ 4,  18645, 23096, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Gnomish Alarm-O-Bot : =ds=#sr# 265 : =ds=AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 5,  18587, 23078 },                 -- Goblin Jumper Cables XL : =ds=#sr# 265 : =ds=AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 6,  18660, 23129 },                 -- World Enlarger : =ds=#sr# 260 : =ds=AtlasLoot["Drop"]
				{ 7,  10720, 12902 },                 -- Gnomish Net-o-Matic Projector : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 8,  10644, 12715 },                 -- Recipe: Goblin Rocket Fuel : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 9,  10713, 12895 },                 -- Plans: Inlaid Mithril Cylinder : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 10, 11590, 15255 },                 -- Mechanical Repair Kit : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 11, 17716, 21940 },                 -- Snowmaster 9000 : =ds=#sr# 190 : =ds=AtlasLoot["Feast of Winter Veil"]
				{ 12, 4392,  3965 },                  -- Advanced Target Dummy : =ds=#sr# 185 : =ds=AtlasLoot["Trainer"]
				{ 13, 4391,  3963 },                  -- Compact Harvest Reaper Kit : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 14, 7148,  9273 },                  -- Goblin Jumper Cables : =ds=#sr# 165 : =ds=AtlasLoot["Vendor"]
				{ 15, 4388,  3959 },                  -- Discombobulator Ray : =ds=#sr# 160 : =ds=AtlasLoot_IngameLocales["Gnomeregan"]
				{ 16, 4386,  3957 },                  -- Ice Deflector : =ds=#sr# 155 : =ds=???
				{ 17, 6533,  9271,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Aquadynamic Fish Attractor : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 18, 5507,  6458 },                  -- Ornate Spyglass : =ds=#sr# 135 : =ds=AtlasLoot["Trainer"]
				{ 19, 4376,  3944 },                  -- Flame Deflector : =ds=#sr# 125 : =ds=AtlasLoot_IngameLocales["Gnomeregan"]
				{ 20, 6712,  8334 },                  -- Practice Lock : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 21, 4366,  3932 },                  -- Target Dummy : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EngineeringGnomish
			name = C_Spell.GetSpellName(20220),
			[NORMAL_DIFF] = {
				{ 1,  87251, 127139 }, -- Geosynchronous World Spinner : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 2,  40727, 95705 }, -- Gnomish Gravity Well : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 3,  60216, 84413 }, -- De-Weaponized Mechanical Companion : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 4,  40895, 56473 }, -- Gnomish X-Ray Specs : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 5,  23829, 30575 }, -- Gnomish Battle Goggles : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 6,  23828, 30574 }, -- Gnomish Power Goggles : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 7,  23825, 30570 }, -- Nigh-Invulnerability Belt : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 8,  30544, 36955 }, -- Ultrasafe Transporter - Toshley's Station : =ds=#sr# 350 : nil
				{ 9,  23835, 30569 }, -- Gnomish Poultryizer : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 10, 23841, 30568 }, -- Gnomish Flame Turret : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 11, 18645, 23096 }, -- Gnomish Alarm-O-Bot : =ds=#sr# 265 : =ds=AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 12, 18986, 23489 }, -- Ultrasafe Transporter - Gadgetzan : =ds=#sr# 260 : nil
				{ 13, 18660, 23129 }, -- World Enlarger : =ds=#sr# 260 : =ds=AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 14, 10645, 12759 }, -- Gnomish Death Ray : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 15, 10726, 12907 }, -- Gnomish Mind Control Cap : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 16, 10725, 12906 }, -- Gnomish Battle Chicken : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 17, 10724, 12905 }, -- Gnomish Rocket Boots : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 18, 10721, 12903 }, -- Gnomish Harm Prevention Belt : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 19, 10545, 12897 }, -- Gnomish Goggles : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 20, 10720, 12902 }, -- Gnomish Net-o-Matic Projector : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 21, 10716, 12899 }, -- Gnomish Shrink Ray : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 22, 10713, 12895 }, -- Inlaid Mithril Cylinder Plans : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --EngineeringGoblin
			name = C_Spell.GetSpellName(20221),
			[NORMAL_DIFF] = {
				{ 1,  87250, 127138 },                -- Depleted-Kyparium Rocket : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 2,  63396, 95707, [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Big Daddy : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 3,  59597, 84412 },                 -- Personal World Destroyer : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 4,  42641, 56514, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Global Thermal Sapper Charge : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 5,  23838, 30565 },                 -- Foreman's Enchanted Helmet : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 6,  23839, 30566 },                 -- Foreman's Reinforced Helmet : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 7,  23836, 30563 },                 -- Goblin Rocket Launcher : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 8,  30542, 36954 },                 -- Dimensional Ripper - Area 52 : =ds=#sr# 350 : nil
				{ 9,  23827, 30560 },                 -- Super Sapper Charge : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 10, 23826, 30558 },                 -- The Bigger One : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 11, 18587, 23078 },                 -- Goblin Jumper Cables XL : =ds=#sr# 265 : =ds=AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 12, 18984, 23486 },                 -- Dimensional Ripper - Everlook : =ds=#sr# 260 : nil
				{ 13, 10588, 12758 },                 -- Goblin Rocket Helmet : =ds=#sr# 245 : =ds=AtlasLoot["Trainer"]
				{ 14, 10727, 12908 },                 -- Goblin Dragon Gun : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 15, 10586, 12754 },                 -- The Big One : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 16, 10587, 12755 },                 -- Goblin Bomb Dispenser : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 17, 7189,  8895 },                  -- Goblin Rocket Boots : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 18, 10543, 12718 },                 -- Goblin Construction Helmet : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 19, 10542, 12717 },                 -- Goblin Mining Helmet : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 20, 10577, 12716 },                 -- Goblin Mortar : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 21, 10644, 12715 },                 -- Recipe: Goblin Rocket Fuel : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 22, 10646, 12760 },                 -- Goblin Sapper Charge : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 23, 10577, 13240 },                 -- The Mortar: Reloaded : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
			},
		},
	}
}

data["Inscription"] = {
	name = C_Spell.GetSpellName(45357),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --InscriptionStaves
			name = AL["Staves"],
			[TWW_DIFF] = {
				{ 1, 222570, 444201 },                          -- Inquisitor's Baton
				{ 2, 222569, 444200 },                          -- Inquisitor's Crutch
				{ 3, 222568, 444199 },                          -- Vagabond's Bounding Baton
				{ 4, 222567, 444198 },                          -- Vagabond's Careful Crutch
				{ 5, 225369, 455008, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Staff
				{ 6, 225368, 455007, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Pillar
			},
			[NORMAL_DIFF] = {
				{ 1,   "113134:Stage6W", 187518 },                        -- Crystalfire Spellstaff (Stage 6)
				{ 2,   "113134:Stage5W", 187494 },                        -- Crystalfire Spellstaff (Stage 5)
				{ 3,   "113134:Stage4W", 166366 },                        -- Crystalfire Spellstaff (Stage 4)
				{ 4,   "113134:Stage3W", 166366 },                        -- Crystalfire Spellstaff (Stage 3)
				{ 5,   "113134:Stage2W", 166366 },                        -- Crystalfire Spellstaff (Stage 2)
				{ 6,   "113134:Stage1",  166356, [PRICE_EXTRA_ITTYPE] = "119297:1" }, -- Crystalfire Spellstaff (Stage 1) (Sold, Ashran)

				{ 8,   "111526:Stage6W", 187518 },                        -- Etched-Blade Warstaff (Stage 6)
				{ 9,   "111526:Stage5W", 187494 },                        -- Etched-Blade Warstaff (Stage 5)
				{ 10,  "111526:Stage4W", 166366 },                        -- Etched-Blade Warstaff (Stage 4)
				{ 11,  "111526:Stage3W", 166366 },                        -- Etched-Blade Warstaff (Stage 3)
				{ 12,  "111526:Stage2W", 166366 },                        -- Etched-Blade Warstaff (Stage 2)
				{ 13,  "111526:Stage1",  166359, [PRICE_EXTRA_ITTYPE] = "119297:1" }, -- Etched-Blade Warstaff (Stage 1) (Sold, Ashran)

				{ 16,  "113131:Stage6W", 187518 },                        -- Warmaster's Firestick (Stage 6)
				{ 17,  "113131:Stage5W", 187494 },                        -- Warmaster's Firestick (Stage 5)
				{ 18,  "113131:Stage4W", 166366 },                        -- Warmaster's Firestick (Stage 4)
				{ 19,  "113131:Stage3W", 166366 },                        -- Warmaster's Firestick (Stage 3)
				{ 20,  "113131:Stage2W", 166366 },                        -- Warmaster's Firestick (Stage 2)
				{ 21,  "113131:Stage1",  165804, [PRICE_EXTRA_ITTYPE] = "119297:1" }, -- Warmaster's Firestick (Stage 1) (Sold, Ashran)
				{ 101, 79340,            111918 },                        -- Inscribed Crane Staff : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 102, 79341,            111919 },                        -- Inscribed Serpent Staff : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 103, 79343,            111921 },                        -- Inscribed Tiger Staff : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 104, 79342,            111920 },                        -- Ghost Iron Staff : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 105, 79339,            111917 },                        -- Rain Poppy Staff : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 106, 87562,            86652 },                         -- Rosethorn Staff : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 107, 87561,            86653 },                         -- Silver Inlaid Staff : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 108, 87566,            86649 },                         -- Runed Staff : =ds=#sr# 505 : =ds=AtlasLoot["Trainer"]
				{ 109, 87565,            86648 },                         -- Key to the Planes : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --InscriptionOffHand
			name = AL["Off-Hands"],
			[TWW_DIFF] = {
				{ 1, 222565, 444196 },                          -- Inquisitor's Torch
				{ 2, 222566, 444197 },                          -- Vagabond's Torch
				{ 3, 225372, 455006, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Lamp
			},
			[BFA_DIFF] = {
				{ 1, 159940, 269741 }, -- Honorable Combatant's Etched Vessel
				{ 2, 153643, 256249 }, -- Inscribed Vessel of Mysticism
			},
			[NORMAL_DIFF] = {
				{ 1,  "113270:Stage6W", 187519 },                        -- Shadowtome (Stage 6)
				{ 2,  "113270:Stage5W", 187495 },                        -- Shadowtome (Stage 5)
				{ 3,  "113270:Stage4W", 166366 },                        -- Shadowtome (Stage 4)
				{ 4,  "113270:Stage3W", 166366 },                        -- Shadowtome (Stage 3)
				{ 5,  "113270:Stage2W", 166366 },                        -- Shadowtome (Stage 2)
				{ 6,  "113270:Stage1",  166363, [PRICE_EXTRA_ITTYPE] = "119297:1" }, -- Shadowtome (Stage 1) (Sold, Ashran)
				{ 8,  79334,            111909 },                        -- Inscribed Jade Fan : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 9,  79335,            111910 },                        -- Inscribed Red Fan : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 10, 79333,            111908 },                        -- Inscribed Fan : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 11, 62236,            86643 },                         -- Battle Tome : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 12, 62235,            86642 },                         -- Divine Companion : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 13, 62234,            86641 },                         -- Dungeoneering Guide : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 14, 62231,            86616 },                         -- Book of Blood : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 15, 62233,            86640 },                         -- Lord Rottington's Pressed Wisp Book : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 16, 44210,            59498 },                         -- Faces of Doom : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 17, 38322,            59497 },                         -- Iron-bound Tome : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 18, 45854,            64051 },                         -- Rituals of the New Moon : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 19, 45849,            64053 },                         -- Twilight Tome : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 20, 43667,            59496 },                         -- Book of Clever Tricks : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 21, 43666,            59495 },                         -- Hellfire Tome : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 22, 43664,            59494 },                         -- Manual of Clouds : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 23, 43663,            59493 },                         -- Stormbound Tome : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 24, 43661,            59490 },                         -- Book of Stars : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 25, 43660,            59489 },                         -- Fire Eater's Guide : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 26, 43657,            59486 },                         -- Royal Guide of Escape Routes : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 27, 43656,            59484 },                         -- Tome of Kings : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 28, 43655,            59478 },                         -- Book of Survival : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 29, 43654,            59475 },                         -- Tome of the Dawn : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 30, 43515,            58565 },                         -- Mystic Tome : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --InscriptionTrinketsDarkmoonFaireCards
			name = AL["Trinkets"].." / "..AL["Darkmoon Cards"],
			[TWW_DIFF] = {
				{ 1, 226022, 444192 },                          -- Darkmoon Sigil: Ascension
				{ 2, 226025, 444193 },                          -- Darkmoon Sigil: Radiance
				{ 3, 226028, 444194 },                          -- Darkmoon Sigil: Symbiosis
				{ 4, 226031, 444195 },                          -- Darkmoon Sigil: Vivacity
				{ 6, 219933, 444338, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Emblem
				{ 7, 219932, 444337, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Insignia of Alacrity
				{ 8, 219931, 444336, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Medallion
			},
			[BFA_DIFF] = {
				{ 1,  153598, 256246 }, -- Darkmoon Card of War
				{ 2,  153598, 256245 }, -- Darkmoon Card of War
				{ 3,  153598, 278527 }, -- Darkmoon Card of War
				{ 16, 159128 }, -- Darkmoon Deck: Blockades
				{ 17, 159127 }, -- Darkmoon Deck: Tides
				{ 18, 159126 }, -- Darkmoon Deck: Squalls
				{ 19, 159125 }, -- Darkmoon Deck: Fathoms
			},
			[LEGION_DIFF] = {
				{ 1,  128712, 191659 }, -- Darkmoon Card of the Legion
				{ 2,  128712, 192859 }, -- Darkmoon Card of the Legion
				{ 3,  128712, 192890 }, -- Darkmoon Card of the Legion
				{ 5,  128978, 192854 }, -- Prophecy Tarot
				{ 6,  128978, 192855 }, -- Prophecy Tarot
				{ 7,  128978, 192856 }, -- Prophecy Tarot
				{ 16, 128705 }, -- Darkmoon Deck: Dominion
				{ 17, 128709 }, -- Darkmoon Deck: Hellfire
				{ 18, 128710 }, -- Darkmoon Deck: Promises
				{ 19, 128711 }, -- Darkmoon Deck: Immortality
			},
			[WOD_DIFF] = {
				{ 101, 112270,          163294, [PRICE_EXTRA_ITTYPE] = "119297:5" }, -- Darkmoon Card of Draenor (Sold, Ashran)

				{ 1,   112303 },                                         -- Iron Deck
				{ 2,   "112319:Stage6", 187519 },                        -- Knight's Badge (Stage 6)
				{ 3,   "112319:Stage5", 187495 },                        -- Knight's Badge (Stage 5)
				{ 4,   "112319:Stage4", 178248 },                        -- Knight's Badge (Stage 4)
				{ 5,   "112319:Stage3", 178248 },                        -- Knight's Badge (Stage 3)
				{ 6,   "112319:Stage2", 178248 },                        -- Knight's Badge (Stage 2)
				{ 7,   "112319:Stage1" },                                -- Knight's Badge (Stage 1)

				{ 9,   112304 },                                         -- Moon Deck
				{ 10,  "112320:Stage6", 187519 },                        -- Sandman's Pouch (Stage 6)
				{ 11,  "112320:Stage5", 187495 },                        -- Sandman's Pouch (Stage 5)
				{ 12,  "112320:Stage4", 178248 },                        -- Sandman's Pouch (Stage 4)
				{ 13,  "112320:Stage3", 178248 },                        -- Sandman's Pouch (Stage 3)
				{ 14,  "112320:Stage2", 178248 },                        -- Sandman's Pouch (Stage 2)
				{ 15,  "112320:Stage1" },                                -- Sandman's Pouch (Stage 1)

				{ 16,  112305 },                                         -- Visions Deck
				{ 17,  "112317:Stage6", 187519 },                        -- Winged Hourglass (Stage 6)
				{ 18,  "112317:Stage5", 187495 },                        -- Winged Hourglass (Stage 5)
				{ 19,  "112317:Stage4", 178248 },                        -- Winged Hourglass (Stage 4)
				{ 20,  "112317:Stage3", 178248 },                        -- Winged Hourglass (Stage 3)
				{ 21,  "112317:Stage2", 178248 },                        -- Winged Hourglass (Stage 2)
				{ 22,  "112317:Stage1" },                                -- Winged Hourglass (Stage 1)

				{ 24,  112306 },                                         -- War Deck
				{ 25,  "112318:Stage6", 187519 },                        -- Skull of War (Stage 6)
				{ 26,  "112318:Stage5", 187495 },                        -- Skull of War (Stage 5)
				{ 27,  "112318:Stage4", 178248 },                        -- Skull of War (Stage 4)
				{ 28,  "112318:Stage3", 178248 },                        -- Skull of War (Stage 3)
				{ 29,  "112318:Stage2", 178248 },                        -- Skull of War (Stage 2)
				{ 30,  "112318:Stage1" },                                -- Skull of War (Stage 1)

				{ 103, 118603,          175392 },                        -- Savage Tarot (Learnt by item 111923)
				{ 104, 118602,          175390 },                        -- Laughing Tarot (Learnt by item 111923)
				{ 105, 118601,          175389 },                        -- Ocean Tarot (Learnt by item 111923)
			},
			[NORMAL_DIFF] = {
				{ 1,  79318, 111830 }, -- Darkmoon Card of Mists : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 2,  61987, 86615 }, -- Darkmoon Card of the Destruction : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 3,  44318, 59504 }, -- Darkmoon Card of the North : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 4,  44317, 59503 }, -- Greater Darkmoon Card : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 5,  44316, 59502 }, -- Darkmoon Card : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 16, 60838, 86609 }, -- Mysterious Fortune Card : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 17, 44163, 59491 }, -- Shadowy Tarot : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 18, 44161, 59487 }, -- Arcane Tarot : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 19, 37168, 48247 }, -- Mysterious Tarot : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 20, 44142, 59480 }, -- Strange Tarot : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --Contracts
			name = AL["Contracts"],
			[TWW_DIFF] = {
				{ 1, 222597, 444220, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Contract: Council of Dornogal
				{ 2, 222600, 444217, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Contract: Assembly of the Deeps
				{ 3, 222603, 444218, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Contract: Hallowfall Arathi
				{ 4, 222606, 444219, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Contract: The Severed Threads
				{ 5, 232532, 471132, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Contract: The Cartels of Undermine
			},
			[BFA_DIFF] = {
				{ 1,  153661, 256275 }, -- Contract: Proudmoore Admiralty
				{ 2,  153661, 256276 }, -- Contract: Proudmoore Admiralty
				{ 3,  153661, 256277 }, -- Contract: Proudmoore Admiralty
				{ 5,  153662, 256278 }, -- Contract: Order of Embers
				{ 6,  153662, 256279 }, -- Contract: Order of Embers
				{ 7,  153662, 256280 }, -- Contract: Order of Embers
				{ 9,  153663, 256281 }, -- Contract: Storm's Wake
				{ 10, 153663, 256282 }, -- Contract: Storm's Wake
				{ 11, 153663, 256283 }, -- Contract: Storm's Wake
				{ 13, 153665, 256287 }, -- Contract: Talanji's Expedition
				{ 14, 153665, 256288 }, -- Contract: Talanji's Expedition
				{ 15, 153665, 256289 }, -- Contract: Talanji's Expedition
				{ 16, 153666, 256290 }, -- Contract: Voldunai
				{ 17, 153666, 256291 }, -- Contract: Voldunai
				{ 18, 153666, 256293 }, -- Contract: Voldunai
				{ 20, 153667, 256294 }, -- Contract: Tortollan Seekers
				{ 21, 153667, 256295 }, -- Contract: Tortollan Seekers
				{ 22, 153667, 256296 }, -- Contract: Tortollan Seekers
				{ 24, 153668, 256297 }, -- Contract: Champions of Azeroth
				{ 25, 153668, 256298 }, -- Contract: Champions of Azeroth
				{ 26, 153668, 256299 }, -- Contract: Champions of Azeroth
				{ 28, 153664, 256284 }, -- Contract: Zandalari Empire
				{ 29, 153664, 256285 }, -- Contract: Zandalari Empire
				{ 30, 153664, 256286 }, -- Contract: Zandalari Empire
			},
		},
		{ --InscriptionItemEnhancements
			name = AL["Item Enhancements"],
			[NORMAL_DIFF] = {
				{ 1,   128018,     178248, [PRICE_EXTRA_ITTYPE] = "119297:5" }, -- Ensorcelled Tarot (Sold, Ashran)
				{ 2,   127718,     187495, [PRICE_EXTRA_ITTYPE] = "114931:20" }, -- Mighty Ensorcelled Tarot (Sold, Ashran)
				{ 3,   127736,     187519, [PRICE_EXTRA_ITTYPE] = "114931:20" }, -- Savage Ensorcelled Tarot (Sold, Garrison)
				{ 5,   128010,     166366, [PRICE_EXTRA_ITTYPE] = "119297:5" }, -- Weapon Crystal (Sold, Ashran)
				{ 6,   127717,     187494, [PRICE_EXTRA_ITTYPE] = "114931:20" }, -- Mighty Weapon Crystal (Sold, Ashran)
				{ 7,   127735,     187518, [PRICE_EXTRA_ITTYPE] = "114931:20" }, -- Savage Weapon Crystal (Sold, Garrison)
				{ 9,   113289,     166432, [PRICE_EXTRA_ITTYPE] = "119297:1" }, -- Volatile Crystal (Sold, Ashran)
				{ 16,  87582,      127023 },                         -- Secret Crane Wing Inscription : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 17,  87581,      127024 },                         -- Secret Ox Horn Inscription : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 18,  87584,      127021 },                         -- Secret Tiger Claw Inscription : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 19,  87585,      127020 },                         -- Secret Tiger Fang Inscription : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 21,  87559,      126995 },                         -- Greater Crane Wing Inscription : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 22,  87560,      126994 },                         -- Greater Ox Horn Inscription : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 23,  83007,      126996 },                         -- Greater Tiger Claw Inscription : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 24,  83006,      126997 },                         -- Greater Tiger Fang Inscription : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 26,  87578,      127018 },                         -- Crane Wing Inscription : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 27,  87577,      127019 },                         -- Ox Horn Inscription : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 28,  87579,      127017 },                         -- Tiger Claw Inscription : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 29,  87580,      127016 },                         -- Tiger Fang Inscription : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 101, "prof86403" },                                -- Felfire Inscription : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 102, "prof86402" },                                -- Inscription of the Earthen Prince : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 103, "prof86401" },                                -- Lionsmane Inscription : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 104, "prof86375" },                                -- Swiftsteel Inscription : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 106, "prof61117" },                                -- Master's Inscription of the Axe : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 107, "prof61118" },                                -- Master's Inscription of the Crag : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 108, "prof61119" },                                -- Master's Inscription of the Pinnacle : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 109, "prof61120" },                                -- Master's Inscription of the Storm : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ -- Profession Equipment
			name = AL["Profession Equipment"],
			[TWW_DIFF] = {
				{ 1, 222577, 444208 }, -- Burnt Rolling Pin
				{ 2, 222573, 444204 }, -- Lightweight Scribe's Quill
				{ 3, 222575, 444206 }, -- Hasty Alchemist's Mixing Rod
				{ 4, 222578, 444209 }, -- Inscribed Rolling Pin
				{ 5, 222574, 444205 }, -- Silver Tongue's Quill
				{ 6, 222576, 444207 }, -- Patient Alchemist's Mixing Rod
			},
		},
		{ --InscriptionReagents
			name = AL["Reagents"],
			[TWW_DIFF] = {
				{ 1,  222582, 444211 },                          -- Algari Missive of the Feverflare
				{ 2,  222579, 444210 },                          -- Algari Missive of the Aurora
				{ 3,  222585, 444212 },                          -- Algari Missive of the Fireflash
				{ 4,  222588, 444213 },                          -- Algari Missive of the Harmonious
				{ 5,  222591, 444214 },                          -- Algari Missive of the Peerless
				{ 6,  222594, 444215 },                          -- Algari Missive of the Quickblade
				{ 8,  222635, 444232, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Algari Missive of Crafting Speed
				{ 9,  222644, 444235, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Algari Missive of Deftness
				{ 10, 222638, 444233, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Algari Missive of Finesse
				{ 11, 222626, 444229, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Algari Missive of Ingenuity
				{ 12, 222632, 444231, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Algari Missive of Multicraft
				{ 13, 222641, 444234, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Algari Missive of Perception
				{ 14, 222629, 444230, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Algari Missive of Resourcefulness
				{ 16, 222615, 444222 },                          -- Apricate Ink
				{ 17, 222609, 444221 },                          -- Shadow Ink
				{ 18, 222555, 444190 },                          -- Codified Greenwood
				{ 19, 222558, 444191 },                          -- Boundless Cipher
			},
			[BFA_DIFF] = {
				{ 1,  152511, 256223 }, -- Mass Mill Sea Stalk
				{ 2,  152505, 256217 }, -- Mass Mill Riverbud
				{ 3,  152506, 256218 }, -- Mass Mill Star Moss
				{ 4,  152507, 256219 }, -- Mass Mill Akunda's Bite
				{ 5,  152508, 256220 }, -- Mass Mill Winter's Kiss
				{ 6,  152509, 256221 }, -- Mass Mill Siren's Pollen
				{ 7,  152510, 256308 }, -- Mass Mill Anchor Weed
				{ 16, 158189, 264778 }, -- Viridescent Ink
				{ 17, 158187, 264776 }, -- Ultramarine Ink
				{ 18, 158188, 264777 }, -- Crimson Ink
			},
			[LEGION_DIFF] = {
				{ 1, 129100, 209658 }, -- Mass Mill Aethril
				{ 2, 136926, 209659 }, -- Mass Mill Dreamleaf
				{ 3, 128304, 209660 }, -- Mass Mill Foxflower
				{ 4, 129032, 209661 }, -- Mass Mill Fjarnskaggl
				{ 5, 129032, 209662 }, -- Mass Mill Starlight Rose
				{ 6, 129034, 209664 }, -- Mass Mill Felwort
				{ 7, 129032, 210116 }, -- Mass Mill Yseralline Seeds
			},
			[NORMAL_DIFF] = {
				{ 1,  112377, 169081, [ATLASLOOT_IT_AMOUNT1] = "8+" }, -- War Paints (Learnt by item 111923)
				{ 2,  112377, 182125, [PRICE_EXTRA_ITTYPE] = "114931:20" }, -- War Paints (Sold, Garrison)
				{ 4,  113111, 178497 },                         -- Warbinder's Ink (Learnt by item 111923)
				{ 5,  79255,  111646 },                         -- Starlight Ink : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 6,  79254,  111645 },                         -- Ink of Dreams : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 7,  61981,  86005 },                          -- Inferno Ink : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 8,  61978,  86004 },                          -- Blackfallow Ink : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 9,  43127,  57716 },                          -- Snowfall Ink : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 10, 43126,  57715 },                          -- Ink of the Sea : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 11, 43125,  57714 },                          -- Darkflame Ink : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 12, 43124,  57713 },                          -- Ethereal Ink : =ds=#sr# 290 : =ds=AtlasLoot["Trainer"]
				{ 13, 43123,  57712 },                          -- Ink of the Sky : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 19, 43122,  57711 },                          -- Shimmering Ink : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 20, 43121,  57710 },                          -- Fiery Ink : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 21, 43120,  57709 },                          -- Celestial Ink : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 22, 43119,  57708 },                          -- Royal Ink : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 23, 43118,  57707 },                          -- Jadefire Ink : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 24, 43117,  57706 },                          -- Dawnstar Ink : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 25, 43116,  57704 },                          -- Lion's Ink : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 26, 43115,  57703 },                          -- Hunter's Ink : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
				{ 27, 39774,  53462 },                          -- Midnight Ink : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 28, 39469,  52843 },                          -- Moonglow Ink : =ds=#sr# 35 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --InscriptionRelic
			name = AL["Relic"],
			[LEGION_DIFF] = {
				{ 1, 136692, 209510 }, -- Aqual Mark
				{ 2, 136693, 209511 }, -- Straszan Mark
			},
		},
		{ --InscriptionRunes
			name = AL["Runes"],
			[TWW_DIFF] = {
				{ 1, 226034, 444203 },                          -- Vantus Rune: Nerub-ar Palace
				{ 2, 232935, 472951, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Vantus Rune: Liberation of Undermine
			},
			[BFA_DIFF] = {
				{ 1, 153673, 256303 }, -- Vantus Rune: Uldir
				{ 2, 153673, 256304 }, -- Vantus Rune: Uldir
				{ 3, 153673, 256305 }, -- Vantus Rune: Uldir
			},
			[LEGION_DIFF] = {
				{ 1,   128987, 192808 }, -- Vantus Rune: Ursoc
				{ 2,   128987, 192860 }, -- Vantus Rune: Ursoc
				{ 3,   128987, 192891 }, -- Vantus Rune: Ursoc
				{ 5,   128988, 192809 }, -- Vantus Rune: Nythendra
				{ 6,   128988, 192861 }, -- Vantus Rune: Nythendra
				{ 7,   128988, 192892 }, -- Vantus Rune: Nythendra
				{ 9,   128989, 192810 }, -- Vantus Rune: Il'gynoth, The Heart of Corruption
				{ 10,  128989, 192862 }, -- Vantus Rune: Il'gynoth, The Heart of Corruption
				{ 11,  128989, 192893 }, -- Vantus Rune: Il'gynoth, The Heart of Corruption
				{ 13,  128990, 192811 }, -- Vantus Rune: Dragons of Nightmare
				{ 14,  128990, 192863 }, -- Vantus Rune: Dragons of Nightmare
				{ 15,  128990, 192894 }, -- Vantus Rune: Dragons of Nightmare
				{ 16,  128991, 192812 }, -- Vantus Rune: Xavius
				{ 17,  128991, 192864 }, -- Vantus Rune: Xavius
				{ 18,  128991, 192895 }, -- Vantus Rune: Xavius
				{ 20,  128992, 192813 }, -- Vantus Rune: Elerethe Renferal
				{ 21,  128992, 192865 }, -- Vantus Rune: Elerethe Renferal
				{ 22,  128992, 192896 }, -- Vantus Rune: Elerethe Renferal
				{ 24,  128993, 192814 }, -- Vantus Rune: Cenarius
				{ 25,  128993, 192866 }, -- Vantus Rune: Cenarius
				{ 26,  128993, 192897 }, -- Vantus Rune: Cenarius
				{ 28,  128994, 192815 }, -- Vantus Rune: Skorpyron
				{ 29,  128994, 192867 }, -- Vantus Rune: Skorpyron
				{ 30,  128994, 192898 }, -- Vantus Rune: Skorpyron
				{ 101, 128995, 192816 }, -- Vantus Rune: Chronomatic Anomaly
				{ 102, 128995, 192868 }, -- Vantus Rune: Chronomatic Anomaly
				{ 103, 128995, 192899 }, -- Vantus Rune: Chronomatic Anomaly
				{ 105, 128996, 192817 }, -- Vantus Rune: Trilliax
				{ 106, 128996, 192869 }, -- Vantus Rune: Trilliax
				{ 108, 128996, 192900 }, -- Vantus Rune: Trilliax
				{ 109, 128997, 192818 }, -- Vantus Rune: Spellblade Aluriel
				{ 110, 128997, 192870 }, -- Vantus Rune: Spellblade Aluriel
				{ 111, 128997, 192901 }, -- Vantus Rune: Spellblade Aluriel
				{ 113, 128998, 192819 }, -- Vantus Rune: Tichondrius
				{ 114, 128998, 192871 }, -- Vantus Rune: Tichondrius
				{ 115, 128998, 192902 }, -- Vantus Rune: Tichondrius
				{ 116, 128999, 192820 }, -- Vantus Rune: High Botanist Tel'arn
				{ 117, 128999, 192872 }, -- Vantus Rune: High Botanist Tel'arn
				{ 118, 128999, 192903 }, -- Vantus Rune: High Botanist Tel'arn
				{ 120, 129000, 192821 }, -- Vantus Rune: Krosus
				{ 121, 129000, 192873 }, -- Vantus Rune: Krosus
				{ 122, 129000, 192904 }, -- Vantus Rune: Krosus
				{ 124, 129001, 192822 }, -- Vantus Rune: Star Augur Etraeus
				{ 125, 129001, 192874 }, -- Vantus Rune: Star Augur Etraeus
				{ 126, 129001, 192905 }, -- Vantus Rune: Star Augur Etraeus
				{ 128, 129002, 192823 }, -- Vantus Rune: Grand Magistrix Elisande
				{ 129, 129002, 192875 }, -- Vantus Rune: Grand Magistrix Elisande
				{ 130, 129002, 192906 }, -- Vantus Rune: Grand Magistrix Elisande
				{ 201, 129003, 192824 }, -- Vantus Rune: Gul'dan
				{ 202, 129003, 192876 }, -- Vantus Rune: Gul'dan
				{ 203, 129003, 192907 }, -- Vantus Rune: Gul'dan
				{ 205, 142101, 229177 }, -- Vantus Rune: Odyn
				{ 206, 142101, 229180 }, -- Vantus Rune: Odyn
				{ 207, 142101, 229183 }, -- Vantus Rune: Odyn
				{ 216, 142102, 229178 }, -- Vantus Rune: Guarm
				{ 217, 142102, 229181 }, -- Vantus Rune: Guarm
				{ 218, 142102, 229184 }, -- Vantus Rune: Guarm
				{ 220, 142103, 229179 }, -- Vantus Rune: Helya
				{ 221, 142103, 229182 }, -- Vantus Rune: Helya
				{ 222, 142103, 229185 }, -- Vantus Rune: Helya
			},
		},
		{ --InscriptionScrolls
			name = AL["Scrolls"],
			[BFA_DIFF] = {
				{ 1,  153647, 256235 }, -- Tome of the Quiet Mind
				{ 2,  153647, 256236 }, -- Tome of the Quiet Mind
				{ 3,  153647, 256237 }, -- Tome of the Quiet Mind
				{ 5,  153646, 256232 }, -- Codex of the Quiet Mind
				{ 6,  153646, 256233 }, -- Codex of the Quiet Mind
				{ 7,  153646, 256234 }, -- Codex of the Quiet Mind
				{ 16, 158204, 264769 }, -- War-Scroll of Fortitude
				{ 17, 158201, 264766 }, -- War-Scroll of Intellect
				{ 18, 158202, 264767 }, -- War-Scroll of Battle Shout
				{ 20, 159825, 269065 }, -- Scroll of Unlocking
			},
			[LEGION_DIFF] = {
				{ 1,  128979, 222408 }, -- Unwritten Legend
				{ 2,  128980, 192802 }, -- Scroll of Forgotten Knowledge
				{ 3,  129211, 192804 }, -- Steamy Romance Novel Kit
				{ 5,  136852, 210653 }, -- Songs of Battle
				{ 6,  136856, 210654 }, -- Songs of Peace
				{ 7,  136857, 210656 }, -- Songs of the Legion
				{ 8,  140567, 223940 }, -- Songs of the Horde
				{ 9,  140568, 223941 }, -- Songs of the Alliance
				{ 11, 141333, 226248 }, -- Codex of the Tranquil Mind
				{ 12, 141333, 227239 }, -- Codex of the Tranquil Mind
				{ 13, 141333, 227240 }, -- Codex of the Tranquil Mind
				{ 15, 141446, 227043 }, -- Tome of the Tranquil Mind
			},
			[NORMAL_DIFF] = {
				{ 1,   79731, 112996 },                 -- Scroll of Wisdom : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 2,   63308, 89373,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Protection IX : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 4,   44315, 60337 },                  -- Scroll of Recall III : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 5,   44314, 60336 },                  -- Scroll of Recall II : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 6,   37118, 48248 },                  -- Scroll of Recall : =ds=#sr# 35 : =ds=AtlasLoot["Trainer"]
				{ 8,   79257, 112045, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Runescroll of Fortitude III : =ds=#sr# 580 : =ds=AtlasLoot["Trainer"]
				{ 9,   62251, 85785,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Runescroll of Fortitude II : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 10,  49632, 69385,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Runescroll of Fortitude : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 16,  63303, 89370,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Agility IX : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 17,  43464, 58483,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Agility VIII : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 18,  43463, 58482,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Agility VII : =ds=#sr# 370 : =ds=AtlasLoot["Trainer"]
				{ 19,  33457, 58481,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Agility VI : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 20,  27498, 58480,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Agility V : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 21,  10309, 58478,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Agility IV : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 22,  4425,  58476,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Agility III : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 23,  1477,  58473 },                  -- Scroll of Agility II : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
				{ 24,  3012,  58472 },                  -- Scroll of Agility : =ds=#sr# 15 : =ds=AtlasLoot["Trainer"]
				{ 101, 63305, 89368,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Intellect IX : =ds=#sr# 445 : =ds=AtlasLoot["Trainer"]
				{ 102, 37092, 50604,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Intellect VIII : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 103, 37091, 50603,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Intellect VII : =ds=#sr# 360 : =ds=AtlasLoot["Trainer"]
				{ 104, 33458, 50602,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Intellect VI : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 105, 27499, 50601,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Intellect V : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 106, 10308, 50600,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Intellect IV : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 107, 4419,  50599,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Intellect III : =ds=#sr# 165 : =ds=AtlasLoot["Trainer"]
				{ 108, 2290,  50598 },                  -- Scroll of Intellect II : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 109, 955,   48114 },                  -- Scroll of Intellect : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 116, 63307, 89371,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Spirit IX : =ds=#sr# 455 : =ds=AtlasLoot["Trainer"]
				{ 117, 37098, 50611,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Spirit VIII : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 118, 37097, 50610,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Spirit VII : =ds=#sr# 355 : =ds=AtlasLoot["Trainer"]
				{ 119, 33460, 50609,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Spirit VI : =ds=#sr# 295 : =ds=AtlasLoot["Trainer"]
				{ 120, 27501, 50608,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Spirit V : =ds=#sr# 255 : =ds=AtlasLoot["Trainer"]
				{ 121, 10306, 50607,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Spirit IV : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 122, 4424,  50606,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Spirit III : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 123, 1712,  50605 },                  -- Scroll of Spirit II : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 124, 1181,  48116 },                  -- Scroll of Spirit : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 201, 63306, 89372,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Stamina IX : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 202, 37094, 50620,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Stamina VIII : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 203, 37093, 50619,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Stamina VII : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 204, 33461, 50618,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Stamina VI : =ds=#sr# 290 : =ds=AtlasLoot["Trainer"]
				{ 205, 27502, 50617,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Stamina V : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 206, 10307, 50616,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Stamina IV : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 207, 4422,  50614,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Stamina III : =ds=#sr# 155 : =ds=AtlasLoot["Trainer"]
				{ 208, 1711,  50612 },                  -- Scroll of Stamina II : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 209, 1180,  45382 },                  -- Scroll of Stamina : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 216, 63304, 89369,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Strength IX : =ds=#sr# 465 : =ds=AtlasLoot["Trainer"]
				{ 217, 43466, 58491,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Strength VIII : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 218, 43465, 58490,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Strength VII : =ds=#sr# 365 : =ds=AtlasLoot["Trainer"]
				{ 219, 33462, 58489,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Strength VI : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 220, 27503, 58488,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Strength V : =ds=#sr# 265 : =ds=AtlasLoot["Trainer"]
				{ 221, 10310, 58487,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Scroll of Strength IV : =ds=#sr# 220 : =ds=AtlasLoot["Trainer"]
				{ 222, 4426,  58486,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Scroll of Strength III : =ds=#sr# 170 : =ds=AtlasLoot["Trainer"]
				{ 223, 2289,  58485 },                  -- Scroll of Strength II : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 224, 954,   58484 },                  -- Scroll of Strength : =ds=#sr# 15 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ -- Treatises
			name = AL["Treatises"],
			[TWW_DIFF] = {
				{ 1,  222546, 444187 }, -- Algari Treatise on Alchemy
				{ 2,  222554, 444184 }, -- Algari Treatise on Blacksmithing
				{ 3,  222550, 444188 }, -- Algari Treatise on Enchanting
				{ 4,  222621, 444223 }, -- Algari Treatise on Engineering
				{ 5,  222552, 444182 }, -- Algari Treatise on Herbalism
				{ 6,  222548, 447868 }, -- Algari Treatise on Inscription
				{ 7,  222551, 444189 }, -- Algari Treatise on Jewelcrafting
				{ 8,  222549, 444185 }, -- Algari Treatise on Leatherworking
				{ 9,  222553, 444183 }, -- Algari Treatise on Mining
				{ 10, 222649, 444236 }, -- Algari Treatise on Skinning
				{ 11, 222547, 444186 }, -- Algari Treatise on Tailoring
			},
		},
		{ --InscriptionMisc
			name = AL["Miscellaneous"],
			[BFA_DIFF] = {
				{ 1, 162114, 278422 }, -- Crimson Ink Well
			},
			[LEGION_DIFF] = {
				-- 7.3.0
				{ 1, 152725, 247861 }, -- Mass Mill Astral Glory
			},
			[NORMAL_DIFF] = {
				{ 1,  113355, 166669 },                -- Card of Omens (Learnt by item 111923)
				{ 3,  113992, 167950 },                -- Research: Warbinder's Ink (Learnt by item 111923)
				{ 5,  119297, 177045 },                -- Secrets of Draenor Inscription (Learnt by item 111923)
				{ 7,  87811,  127378 },                -- Commissioned Painting : =ds=#sr# 600 : =ds=#QUESTID:31539#
				{ 8,  87814,  127391 },                -- Engraved Jade Disk : =ds=#sr# 600 : =ds=#QUESTID:31541#
				{ 9,  87817,  127475 },                -- Incarnadine Ink : =ds=#sr# 600 : =ds=#QUESTID:31542#
				{ 10, 87831,  127481 },                -- Inscribed Monument : =ds=#sr# 600 : =ds=#QUESTID:31544#
				{ 11, 88806,  128922 },                -- Portrait of Madam Goya : =ds=#sr# 600 : =ds=#QUESTID:31543#
				{ 16, 102483, 146638 },                -- Crafted Malevolent Gladiator's Medallion of Tenacity : =ds=#s14# / =q1=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 17, 89368,  127009 },                -- Chi-ji Kite : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 18, 87647,  126988 },                -- Origami Crane : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 19, 87648,  126989 },                -- Origami Frog : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 20, 89367,  127007 },                -- Yu'lon Kite : =ds=#sr# 600 : =ds=AtlasLoot["Trainer"]
				{ 21, 141640, 227561 },                -- Tome of the Clear Mind : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 22, 63276,  86654 },                 -- Forged Documents : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 23, 63246,  86646 },                 -- Origami Beetle : =ds=#sr# 500 : =ds=AtlasLoot["World Drop"]
				{ 24, 62238,  86645 },                 -- Origami Rock : =ds=#sr# 490 : =ds=AtlasLoot["World Drop"]
				{ 25, 62239,  86644 },                 -- Origami Slime : =ds=#sr# 480 : =ds=AtlasLoot["World Drop"]
				--{ 26, 63388, 92027, [ATLASLOOT_IT_AMOUNT1] = 3 },	-- Dust of Disappearance : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 27, 43850,  59387 },                 -- Certificate of Ownership : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 28, 64670,  92026 },                 -- Vanishing Powder : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 29, 38682,  52739, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Enchanting Vellum : =ds=#sr# 35 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --InscriptionDeathKnight
			name = AL["Glyphs"].." - "..ALIL["DEATHKNIGHT"],
			[NORMAL_DIFF] = {
				{ 1, 43535,  57209 }, -- Glyph of the Geist
				{ 2, 43551,  57224 }, -- Glyph of Foul Menagerie
				{ 3, 104099, 148266 }, -- Glyph of the Skeleton
				{ 4, 137274, 225522 }, -- Glyph of Cracked Ice
				{ 5, 139270, 225525 }, -- Glyph of the Crimson Shell
				{ 6, 139271, 225524 }, -- Glyph of the Chilled Shell
			},
		},
		{ --InscriptionDemonHunter
			name = AL["Glyphs"].." - "..ALIL["DEMONHUNTER"],
			[NORMAL_DIFF] = {
				{ 1, 133796 }, -- Glyph of Fearsome Metamorphosis
				{ 2, 139362, 225529 }, -- Glyph of Mana Touched Souls
				{ 3, 139417, 192851 }, -- Glyph of Fallow Wings
				{ 4, 139435, 225527 }, -- Glyph of Fel Wings
				{ 5, 139436, 192852 }, -- Glyph of Tattered Wings
				{ 6, 139437, 225528 }, -- Glyph of Fel-Enemies
				{ 7, 139438, 225530 }, -- Glyph of Shadow-Enemies
			},
		},
		{ --InscriptionDruid
			name = AL["Glyphs"].." - "..ALIL["DRUID"],
			[NORMAL_DIFF] = {
				{ 1,  40919,  56948 }, -- Glyph of the Orca
				{ 2,  43334,  58287 }, -- Glyph of the Ursol Chameleon
				{ 3,  89868,  131152 }, -- Glyph of the Cheetah
				{ 4,  118061, 182158 }, -- Glyph of the Sun
				{ 5,  129021, 192842 }, -- Glyph of the Sentinel
				{ 6,  136825, 225532 }, -- Glyph of the Feral Chameleon
				{ 7,  136826, 225534 }, -- Glyph of the Storm
				{ 8,  139278, 225533 }, -- Glyph of the Forest Path
				{ 9,  140630, 225531 }, -- Glyph of the Doe
				{ 10, 162029, 276121 }, -- Glyph of the Humble Flyer
				{ 11, 162022, 276059 }, -- Glyph of the Dolphin
				{ 12, 162027, 276088 }, -- Glyph of the Tideskipper
			},
		},
		{ --InscriptionHunter
			name = AL["Glyphs"].." - "..ALIL["HUNTER"],
			[NORMAL_DIFF] = {
				{ 1, 43350,  58301 }, -- Glyph of Lesser Proportion
				{ 2, 137238, 225543 }, -- Glyph of the Trident
				{ 3, 137239, 225541 }, -- Glyph of the Hook
				{ 4, 137249, 225535 }, -- Glyph of Arachnophobia
				{ 5, 137250, 225536 }, -- Glyph of Nesingwary's Nemeses
				{ 6, 137267, 225539 }, -- Glyph of the Goblin Anti-Grav Flare
				{ 7, 137269, 192845 }, -- Glyph of Stellar Flare
				{ 8, 139288, 225538 }, -- Glyph of the Dire Stable
			},
		},
		{ --InscriptionMage
			name = AL["Glyphs"].." - "..ALIL["MAGE"],
			[NORMAL_DIFF] = {
				{ 1, 42751,  56986 }, -- Glyph of Crittermorph
				{ 2, 104104, 148270 }, -- Glyph of the Unbound Elemental
				{ 3, 104105, 148271 }, -- Glyph of Evaporation
				{ 4, 129019, 192840 }, -- Glyph of Sparkles
				{ 5, 139348, 225546 }, -- Glyph of Smolder
				{ 6, 139352, 225545 }, -- Glyph of Polymorphic Proportions
			},
		},
		{ --InscriptionMonk
			name = AL["Glyphs"].." - "..ALIL["MONK"],
			[NORMAL_DIFF] = {
				{ 1, 87881,  112462 }, -- Glyph of Crackling Tiger Lightning
				{ 2, 87883,  112464 }, -- Glyph of Honor
				{ 3, 87885,  112466 }, -- Glyph of Rising Tiger Kick
				{ 4, 87888,  112469 }, -- Glyph of Fighting Pose
				{ 5, 139338, 192843 }, -- Glyph of Crackling Crane Lightning
				{ 6, 139339, 225547 }, -- Glyph of Yu'lon's Grace
			},
		},
		{ --InscriptionPaladin
			name = AL["Glyphs"].." - "..ALIL["PALADIN"],
			[NORMAL_DIFF] = {
				{ 1, 41100,  57032 }, -- Glyph of the Luminous Charger
				{ 2, 43366,  58312 }, -- Glyph of Winged Vengeance
				{ 3, 43369,  58316 }, -- Glyph of Fire From the Heavens
				{ 4, 104108, 148274 }, -- Glyph of Pillar of Light
				{ 5, 137293, 192846 }, -- Glyph of the Queen
			},
		},
		{ --InscriptionPriest
			name = AL["Glyphs"].." - "..ALIL["PRIEST"],
			[LEGION_DIFF] = {
				-- 7.3.0
				{ 1, 153036, 254238 }, -- Glyph of Dark Absolution
				{ 2, 153033, 254231 }, -- Glyph of the Voidling
				{ 3, 153031, 254227 }, -- Glyph of the Lightspawn
			},
			[NORMAL_DIFF] = {
				{ 1, 43373,  58320 }, -- Glyph of Shackle Undead
				{ 2, 79538,  124466 }, -- Glyph of the Heavens
				{ 3, 87277,  126696 }, -- Glyph of the Val'kyr
				{ 4, 87392,  126800 }, -- Glyph of Shadowy Friends
				{ 5, 104120, 148276 }, -- Glyph of the Sha
				{ 6, 104122, 148278 }, -- Glyph of Inspired Hymns
				{ 7, 129017, 192838 }, -- Glyph of Ghostly Fade
			},
		},
		{ --InscriptionRogue
			name = AL["Glyphs"].." - "..ALIL["ROGUE"],
			[TWW_DIFF] = {
				{ 1, 234246, 1213515 },                                    -- Glyph of the Admiral's Pistol Shot
				{ 2, 234245, 1213517 },                                    -- Glyph of the Ashvane Pistol Shot
				{ 3, 234247, 1213514, [PRICE_EXTRA_ITTYPE] = "flameBlessedIron:350" }, -- Glyph of the Gilded Pistol Shot
				{ 4, 234248, 1213512, [PRICE_EXTRA_ITTYPE] = "flameBlessedIron:350" }, -- Glyph of the Twilight Pistol Shot
			},
			[NORMAL_DIFF] = {
				{ 1, 45768,  64260 }, -- Glyph of Disguise
				{ 2, 129020, 225549 }, -- Glyph of Flash Bang
				{ 3, 139358, 192841 }, -- Glyph of Blackout
				{ 4, 139442, 225548 }, -- Glyph of Burnout
			},
		},
		{ --InscriptionShaman
			name = AL["Glyphs"].." - "..ALIL["SHAMAN"],
			[NORMAL_DIFF] = {
				{ 1, 43386,  58332 }, -- Glyph of the Spectral Wolf
				{ 2, 104126, 148281 }, -- Glyph of Spirit Raptors
				{ 3, 104127, 148282 }, -- Glyph of Lingering Ancestors
				{ 4, 137287, 192844 }, -- Glyph of the Spectral Raptor
				{ 5, 137288, 225552 }, -- Glyph of Pebbles
				{ 6, 137289, 225551 }, -- Glyph of Flickering
				{ 7, 139289, 225550 }, -- Glyph of Critterhex
			},
		},
		{ --InscriptionWarlock
			name = AL["Glyphs"].." - "..ALIL["WARLOCK"],
			[NORMAL_DIFF] = {
				{ 1,  42459,  57263 }, -- Glyph of Felguard
				{ 2,  43394,  58341 }, -- Glyph of Soulwell
				{ 3,  45789,  64250 }, -- Glyph of Crimson Banish
				{ 4,  137191, 225554 }, -- Glyph of the Inquisitor's Eye
				{ 5,  129018, 192839 }, -- Grimoire of the Fel Imp
				{ 6,  139310, 225556 }, -- Grimoire of the Shivarra
				{ 7,  139311, 225558 }, -- Grimoire of the Voidlord
				{ 8,  139315, 225559 }, -- Grimoire of the Wrathguard
				{ 9,  147119, 240272 }, -- Grimoire of the Shadow Succubus
				{ 10, 139314, 225553 }, -- Grimoire of the Abyssal
			},
		},
		{ --InscriptionWarrior
			name = AL["Glyphs"].." - "..ALIL["WARRIOR"],
			[NORMAL_DIFF] = {
				{ 1, 43398,  58345 }, -- Glyph of Gushing Wound
				{ 2, 43400,  58347 }, -- Glyph of Mighty Victory
				{ 3, 49084,  68166 }, -- Glyph of Thunder Strike
				{ 4, 80587,  112429 }, -- Glyph of Hawk Feast
				{ 5, 80588,  112430 }, -- Glyph of Burning Anger
				{ 6, 85221,  123781 }, -- Glyph of the Blazing Trail
				{ 7, 104138, 148292 }, -- Glyph of the Weaponmaster
				{ 8, 137188, 225560 }, -- Glyph of the Blazing Savior
				{ 9, 141898, 228381 }, -- Glyph of Falling Thunder
			},
		},
	}
}

data["Jewelcrafting"] = {
	name = C_Spell.GetSpellName(25229),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --JewelPrismatic
			name = AL["Prismatic Gems"],
			[BFA_DIFF] = {
				{ 1,  153709, 256702 }, -- Kraken's Eye of Intellect
				{ 2,  153708, 256701 }, -- Kraken's Eye of Agility
				{ 16, 153707, 256700 }, -- Kraken's Eye of Strength

				{ 4,  154126, 256696 }, -- Deadly Amberblaze
				{ 19, 153710, 256689 }, -- Deadly Solstone

				{ 6,  154129, 256698 }, -- Masterful Tidal Amethyst
				{ 21, 153713, 256692 }, -- Masterful Kubiline

				{ 8,  154127, 256699 }, -- Quick Owlseye
				{ 23, 153711, 256694 }, -- Quick Golden Beryl

				{ 10, 154128, 256695 }, -- Versatile Royal Quartz
				{ 25, 153712, 256690 }, -- Versatile Kyanite


				{ 12, 153714, 256693 }, -- Insightful Rubellite
				{ 27, 153715, 256691 }, -- Straddling Viridium
			},
			[LEGION_DIFF] = {
				{ 1,  130248, 195880 }, -- Saber's Eye of Intellect
				{ 2,  130247, 195879 }, -- Saber's Eye of Agility
				{ 3,  130246, 195878 }, -- Saber's Eye of Strength
				{ 5,  130219, 195852 }, -- Deadly Eye of Prophecy
				{ 6,  130215, 195848 }, -- Deadly Deep Amber
				{ 8,  130222, 195855 }, -- Masterful Shadowruby
				{ 9,  130218, 195851 }, -- Masterful Queen's Opal
				{ 11, 130220, 195853 }, -- Quick Dawnlight
				{ 12, 130216, 195849 }, -- Quick Azsunite
				{ 14, 130221, 195854 }, -- Versatile Maelstrom Sapphire
				{ 15, 130217, 195850 }, -- Versatile Skystone
				{ 16, 130245, 195877 }, -- Saber's Eye
				-- 7.3.0
				{ 17, 151564, 247761 }, -- Empyrium
			},
			[WOD_DIFF] = {
				{ 1,  127760, 187634, [PRICE_EXTRA_ITTYPE] = "127771:1" }, -- Immaculate Critical Strike Taladite (Learnd by Item 127771)
				{ 2,  127761, 187635, [PRICE_EXTRA_ITTYPE] = "127772:1" }, -- Immaculate Haste Taladite (Learnd by Item 127772)
				{ 3,  127762, 187636, [PRICE_EXTRA_ITTYPE] = "127773:1" }, -- Immaculate Mastery Taladite (Learnd by Item 127773)
				{ 4,  127763, 187637, [PRICE_EXTRA_ITTYPE] = "127774:1" }, -- Immaculate Multistrike Taladite (Learnd by Item 127774)
				{ 5,  127765, 187640, [PRICE_EXTRA_ITTYPE] = "127775:1" }, -- Immaculate Stamina Taladite (Learnd by Item 127775)
				{ 6,  127764, 187639, [PRICE_EXTRA_ITTYPE] = "127776:1" }, -- Immaculate Versatility Taladite (Learnd by Item 127776)

				{ 16, 115809, 170725, [PRICE_EXTRA_ITTYPE] = "118723:5" }, -- Greater Critical Strike Taladite (Sold, Ashran)
				{ 17, 115811, 170726, [PRICE_EXTRA_ITTYPE] = "118723:5" }, -- Greater Haste Taladite (Sold, Ashran)
				{ 18, 115812, 170727, [PRICE_EXTRA_ITTYPE] = "118723:5" }, -- Greater Mastery Taladite (Sold, Ashran)
				{ 19, 115813, 170728, [PRICE_EXTRA_ITTYPE] = "118723:5" }, -- Greater Multistrike Taladite (Sold, Ashran)
				{ 20, 115815, 170730, [PRICE_EXTRA_ITTYPE] = "118723:5" }, -- Greater Stamina Taladite (Sold, Ashran)
				{ 21, 115814, 170729, [PRICE_EXTRA_ITTYPE] = "118723:5" }, -- Greater Versatility Taladite (Sold, Ashran)

				{ 23, 115803, 170719, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Critical Strike Taladite (Sold, Ashran)
				{ 24, 115804, 170720, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Haste Taladite (Sold, Ashran)
				{ 25, 115805, 170721, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Mastery Taladite (Sold, Ashran)
				{ 26, 115806, 170722, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Multistrike Taladite (Sold, Ashran)
				{ 27, 115808, 170724, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Stamina Taladite (Sold, Ashran)
				{ 28, 115807, 170723, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Versatility Taladite (Sold, Ashran)
			},
			[WOTLK_DIFF] = {
				{ 1, 49110, 68253 }, -- Nightmare Tear : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2, 42702, 56531 }, -- Enchanted Tear : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 3, 42701, 56530 }, -- Enchanted Pearl : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 45054, 62941 }, -- Prismatic Black Diamond : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelRings
			name = AL["Rings"],
			[TWW_DIFF] = {
				{ 1, 215130, 435379 }, -- Malleable Band
				{ 2, 215135, 435384 }, -- Ring of Earthen Craftsmanship
				{ 3, 215133, 435382 }, -- Binding of Binding
				{ 4, 215137, 435386 }, -- Algari Competitor's Signet
			},
			[BFA_DIFF] = {
				{ 1,  153686, 256510 }, -- Amberblaze Loop
				{ 2,  153686, 256514 }, -- Amberblaze Loop
				{ 3,  153686, 256515 }, -- Amberblaze Loop

				{ 5,  153685, 256511 }, -- Owlseye Loop
				{ 6,  153685, 256516 }, -- Owlseye Loop
				{ 7,  153685, 256517 }, -- Owlseye Loop

				{ 16, 153684, 256512 }, -- Tidal Amethyst Loop
				{ 17, 153684, 256518 }, -- Tidal Amethyst Loop
				{ 18, 153684, 256519 }, -- Tidal Amethyst Loop

				{ 20, 153683, 256513 }, -- Royal Quartz Loop
				{ 21, 153683, 256520 }, -- Royal Quartz Loop
				{ 22, 153683, 256521 }, -- Royal Quartz Loop


				{ 9,  153687, 272230 }, -- Kyanite Ring
				{ 10, 153690, 272226 }, -- Solstone Ring
				{ 24, 153688, 272228 }, -- Kubiline Ring
				{ 25, 153689, 272227 }, -- Golden Beryl Ring
			},
			[LEGION_DIFF] = {
				{ 1,  136713, 209605 }, -- Shadowruby Band
				{ 2,  136713, 209608 }, -- Shadowruby Band
				{ 3,  136713, 209611 }, -- Shadowruby Band
				{ 5,  136711, 209603 }, -- Queen's Opal Loop
				{ 6,  136711, 209606 }, -- Queen's Opal Loop
				{ 7,  136711, 209609 }, -- Queen's Opal Loop
				{ 9,  130231, 195864 }, -- Dawnlight Band
				{ 10, 130231, 195910 }, -- Dawnlight Band
				{ 11, 130231, 195931 }, -- Dawnlight Band
				{ 13, 130230, 195863 }, -- Maelstrom Band
				{ 14, 130230, 195909 }, -- Maelstrom Band
				{ 15, 130230, 195930 }, -- Maelstrom Band
				{ 16, 130229, 195862 }, -- Prophetic Band
				{ 17, 130229, 195908 }, -- Prophetic Band
				{ 18, 130229, 195929 }, -- Prophetic Band
				{ 20, 130225, 195858 }, -- Azsunite Loop
				{ 21, 130225, 195904 }, -- Azsunite Loop
				{ 22, 130225, 195925 }, -- Azsunite Loop
				{ 24, 130224, 195857 }, -- Skystone Loop
				{ 25, 130224, 195903 }, -- Skystone Loop
				{ 26, 130224, 195924 }, -- Skystone Loop
				{ 28, 130223, 195856 }, -- Deep Amber Loop
				{ 29, 130223, 195902 }, -- Deep Amber Loop
				{ 30, 130223, 195923 }, -- Deep Amber Loop
			},
			[WOD_DIFF] = {
				{ 1,  "115794:Stage6", 187517 },                        -- Glowing Taladite Ring (Stage 6)
				{ 2,  "115794:Stage5", 187493 },                        -- Glowing Taladite Ring (Stage 5)
				{ 3,  "115794:Stage4", 170702 },                        -- Glowing Taladite Ring (Stage 4)
				{ 4,  "115794:Stage3", 170702 },                        -- Glowing Taladite Ring (Stage 3)
				{ 5,  "115794:Stage2", 170702 },                        -- Glowing Taladite Ring (Stage 2)
				{ 6,  "115794:Stage1", 170713, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Glowing Taladite Ring (Stage 1) (Sold, Ashran)

				{ 8,  "115796:Stage6", 187517 },                        -- Shifting Taladite Ring (Stage 6)
				{ 9,  "115796:Stage5", 187493 },                        -- Shifting Taladite Ring (Stage 5)
				{ 10, "115796:Stage4", 170702 },                        -- Shifting Taladite Ring (Stage 4)
				{ 11, "115796:Stage3", 170702 },                        -- Shifting Taladite Ring (Stage 3)
				{ 12, "115796:Stage2", 170702 },                        -- Shifting Taladite Ring (Stage 2)
				{ 13, "115796:Stage1", 170714, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Shifting Taladite Ring (Stage 1) (Sold, Ashran)

				{ 16, "115798:Stage6", 187517 },                        -- Whispering Taladite Ring (Stage 6)				{ 11, "115798:Stage4", 181419 },	-- Whispering Taladite Ring (Stage 4)
				{ 17, "115798:Stage5", 187493 },                        -- Whispering Taladite Ring (Stage 5)
				{ 18, "115798:Stage4", 170702 },                        -- Whispering Taladite Ring (Stage 4)				{ 11, "115798:Stage4", 181419 },	-- Whispering Taladite Ring (Stage 4)
				{ 19, "115798:Stage3", 170702 },                        -- Whispering Taladite Ring (Stage 3)
				{ 20, "115798:Stage2", 170702 },                        -- Whispering Taladite Ring (Stage 2)
				{ 21, "115798:Stage1", 170715, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Whispering Taladite Ring (Stage 1) (Sold, Ashran)
				{ 23, 115993,          170710 },                        -- Glowing Blackrock Band (Learnt by item 115359)
				{ 24, 115994,          170711 },                        -- Shifting Blackrock Band (Learnt by item 115359)
				{ 25, 115995,          170712 },                        -- Whispering Blackrock Band (Learnt by item 115359)
				{ 26, 115987,          170704 },                        -- Glowing Iron Band (Learnt by item 115359)
				{ 27, 115988,          170705 },                        -- Shifting Iron Band (Learnt by item 115359)
				{ 28, 115989,          170706 },                        -- Whispering Iron Band (Learnt by item 115359)
			},
			[MOP_DIFF] = {
				{ 1, 83801, 122668 }, -- Band of Blood : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 2, 83796, 122664 }, -- Heart of the Earth : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 3, 83800, 122667 }, -- Lionsfall Ring : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 4, 83799, 122666 }, -- Lord's Signet : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 5, 83798, 122665 }, -- Roguestone Shadowband : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 6, 83793, 122661 }, -- Ornate Band : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  52318, 73498 }, -- Band of Blades : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 2,  52348, 73520 }, -- Elementium Destroyer's Ring : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 3,  52320, 73503 }, -- Elementium Moebius Band : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 4,  69852, 98921 }, -- Punisher's Band : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 5,  52319, 73502 }, -- Ring of Warring Elements : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 6,  75068, 99540 }, -- Vicious Amberjewel Band : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 7,  75071, 99541 }, -- Vicious Ruby Signet : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 8,  75067, 99539 }, -- Vicious Sapphire Ring : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 9,  52308, 73495 }, -- Hessonite Band : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 10, 52306, 73494 }, -- Jasper Ring : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  42643, 56497 }, -- Titanium Earthguard Ring : =ds=#sr# 430 : #DALARANJW:6#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,  42642, 56496 }, -- Titanium Impact Band : =ds=#sr# 430 : #DALARANJW:6#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,  42644, 56498 }, -- Titanium Spellshock Ring : =ds=#sr# 430 : #DALARANJW:6#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,  43582, 58954 }, -- Titanium Frostguard Ring : =ds=#sr# 420 : #DALARANJW:6#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 5,  42340, 56197 }, -- Dream Signet : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 6,  43250, 58147 }, -- Ring of Earthen Might : =ds=#sr# 420 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 7,  43253, 58150 }, -- Ring of Northern Tears : =ds=#sr# 420 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,  43251, 58148 }, -- Ring of Scarlet Shadows : =ds=#sr# 420 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 9,  45808, 64727 }, -- Runed Mana Band : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 10, 43498, 58507 }, -- Savage Titanium Band : =ds=#sr# 420 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 11, 43482, 58492 }, -- Savage Titanium Ring : =ds=#sr# 420 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 12, 45809, 64728 }, -- Scarlet Signet : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 13, 43252, 58149 }, -- Windfire Band : =ds=#sr# 420 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 14, 43249, 58146 }, -- Shadowmight Ring : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 15, 43248, 58145 }, -- Stoneguard Band : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 16, 43246, 58143 }, -- Earthshadow Ring : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 17, 43247, 58144 }, -- Jade Ring of Slaying : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 18, 42336, 56193 }, -- Bloodstone Band : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 19, 42337, 56194 }, -- Sun Rock Ring : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  31398, 38503 }, -- The Frozen Eye : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["The Violet Eye"] - AtlasLoot["Honored"]
				{ 2,  31399, 38504 }, -- The Natural Ward : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Exalted"]
				{ 3,  34361, 46124 }, -- Hard Khorium Band : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 4,  34362, 46122 }, -- Loop of Forged Power : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 5,  34363, 46123 }, -- Ring of Flowing Life : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 6,  24089, 31061 }, -- Blazing Eternium Band : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
				{ 7,  24086, 31057 }, -- Arcane Khorium Band : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Netherstorm"]
				{ 8,  24085, 31056 }, -- Khorium Band of Leaves : =ds=#sr# 360 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Blade's Edge Mountains"]
				{ 9,  30825, 37855 }, -- Ring of Arcane Shielding : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Honored"]
				{ 10, 24088, 31060 }, -- Delicate Eternium Ring : =ds=#sr# 355 : =ds=AtlasLoot["World Drop"]
				{ 11, 24080, 31054 }, -- Khorium Band of Frost : =ds=#sr# 355 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["The Steamvault"]
				{ 12, 24082, 31055 }, -- Khorium Inferno Band : =ds=#sr# 355 : =ds=Darkweaver Syth541
				{ 13, 24079, 31053 }, -- Khorium Band of Shadows : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Shadowmoon Valley"]
				{ 14, 24087, 31058 }, -- Heavy Felsteel Ring : =ds=#sr# 345 : =ds=AtlasLoot["World Drop"]
				{ 15, 24078, 31052 }, -- Heavy Adamantite Ring : =ds=#sr# 335 : =ds=AtlasLoot["Trainer"]
				{ 16, 32774, 41415 }, -- The Black Pearl : =ds=#sr# 330 : =ds=AtlasLoot["Trainer"]
				{ 17, 32772, 41414 }, -- Brilliant Pearl Band : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 18, 24076, 31050 }, -- Azure Moonstone Ring : =ds=#sr# 320 : =ds=AtlasLoot["Trainer"]
				{ 19, 21779, 26916 }, -- Band of Natural Fire : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 20, 24074, 31048 }, -- Fel Iron Blood Ring : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 21, 24075, 31049 }, -- Golden Draenite Ring : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,   29160, 34961 }, -- Emerald Lion Ring : =ds=#sr# 290 : =ds=AtlasLoot["Trainer"]
				{ 2,   21778, 26910 }, -- Ring of Bitter Shadows : =ds=#sr# 285 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Eastern Plaguelands"]
				{ 3,   29159, 34960 }, -- Glowing Thorium Band : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 4,   21775, 26907 }, -- Onslaught Ring : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 5,   21768, 26903 }, -- Sapphire Signet : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 6,   30422, 36526 }, -- Diamond Focus Ring : =ds=#sr# 265 : =ds=AtlasLoot["Trainer"]
				{ 7,   21767, 26902 }, -- Simple Opal Ring : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 8,   21753, 26896 }, -- Gem Studded Band : =ds=#sr# 250 : =ds=AtlasLoot["World Drop"]
				{ 9,   21754, 26887 }, -- The Aquamarine Ward : =ds=#sr# 245 : =ds=AtlasLoot["World Drop"]
				{ 10,  21765, 26885 }, -- Truesilver Healing Ring : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 11,  30421, 36525 }, -- Red Ring of Destruction : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 12,  20964, 26874 }, -- Aquamarine Signet : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 13,  29158, 34959 }, -- Truesilver Commander's Ring : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 14,  29157, 34955 }, -- Golden Ring of Power : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
				{ 15,  20961, 25621 }, -- Citrine Ring of Rapid Healing : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
				{ 16,  20960, 25620 }, -- Engraved Truesilver Ring : =ds=#sr# 170 : =ds=AtlasLoot["Trainer"]
				{ 17,  20959, 25619 }, -- The Jade Eye : =ds=#sr# 170 : =ds=AtlasLoot["Vendor"]
				{ 18,  20958, 25617 }, -- Blazing Citrine Ring : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 19,  20955, 25613 }, -- Golden Dragon Ring : =ds=#sr# 135 : =ds=AtlasLoot["Trainer"]
				{ 20,  20833, 25323 }, -- Wicked Moonstone Ring : =ds=#sr# 125 : =ds=AtlasLoot["Vendor"]
				{ 21,  30420, 36524 }, -- Heavy Jade Ring : =ds=#sr# 105 : =ds=AtlasLoot["Trainer"]
				{ 22,  20828, 25318 }, -- Ring of Twilight Shadows : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 23,  20826, 25305 }, -- Heavy Silver Ring : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
				{ 24,  20827, 25317 }, -- Ring of Silver Might : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 25,  20823, 25287 }, -- Gloom Band : =ds=#sr# 70 : =ds=AtlasLoot["Trainer"]
				{ 26,  30804, 37818 }, -- Bronze Band of Force : =ds=#sr# 65 : =ds=AtlasLoot["Trainer"]
				{ 27,  20820, 25284 }, -- Simple Pearl Ring : =ds=#sr# 60 : =ds=AtlasLoot["Trainer"]
				{ 28,  20818, 25280 }, -- Elegant Silver Ring : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 29,  20907, 25490 }, -- Solid Bronze Ring : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 30,  20821, 25283 }, -- Inlaid Malachite Ring : =ds=#sr# 30 : =ds=AtlasLoot["Trainer"]
				{ 101, 25439, 32179 }, -- Tigerseye Band : =ds=#sr# 20 : =ds=AtlasLoot["Trainer"]
				{ 102, 21932, 26926 }, -- Heavy Copper Ring : =ds=#sr# 5 : =ds=AtlasLoot["Trainer"]
				{ 103, 20906, 25493 }, -- Braided Copper Ring : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 104, 21931, 26925 }, -- Woven Copper Ring : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelMisc
			name = AL["Miscellaneous"],
			[TWW_DIFF] = {
				{ 1,  213777, 435334 },                                   -- Magnificent Jeweler's Setting
				{ 2,  213753, 435325 },                                   -- Decorative Lens
				{ 3,  213756, 435326, [ATLASLOOT_IT_AMOUNT1] = "3" },     -- Marbled Stone
				{ 4,  213750, 435324, [ATLASLOOT_IT_AMOUNT1] = "2" },     -- Engraved Gemcutter
				{ 5,  211806, 435323, [ATLASLOOT_IT_AMOUNT1] = "4" },     -- Gilded Vial
				{ 6,  213759, 435327 },                                   -- Inverted Prism
				{ 8,  213765, 435330, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Ominous Energy Crystal
				{ 9,  213762, 435329, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Sifted Cave Sand
				{ 10, 213774, 435333, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Captured Starlight
				{ 11, 213768, 435331 },                                   -- Elemental Focusing Lens
				{ 12, 213771, 435332 },                                   -- Prismatic Null Stone
				{ 14, 215145, 435389, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Remembrance Stone
				{ 15, 215147, 435391 },                                   -- Beautification Iris
				{ 16, 213779, 435337 },                                   -- Algari Amber Prism
				{ 17, 213791, 435370 },                                   -- Algari Sapphire Prism
				{ 18, 213785, 435339 },                                   -- Algari Ruby Prism
				{ 19, 213788, 435369 },                                   -- Algari Onyx Prism
				{ 20, 213782, 435338 },                                   -- Algari Emerald Prism
				{ 22, 235712, 1226650 },                                  -- Design: Void-Crystal Panther
			},
			[BFA_DIFF] = {
				{ 1, 162112, 278419 }, -- Kaleidoscopic Lens
			},
			[LEGION_DIFF] = {
				{ 1,  130250, 195881 }, -- Jeweled Lockpick
				{ 3,  130251, 195882 }, -- JewelCraft
				{ 4,  130254, 195883 }, -- Chatterstone
				{ 16, 130172, 225902 }, -- Mass Prospect Leystone
				{ 17, 130172, 225904 }, -- Mass Prospect Felslate
			},
			[WOD_DIFF] = {
				{ 1,  115524, 170700, [ATLASLOOT_IT_AMOUNT1] = "8+" }, -- Taladite Crystal (Learnt by item 115359)
				{ 2,  115524, 182127, [PRICE_EXTRA_ITTYPE] = "109119:60" }, -- Taladite Crystal (Sold, Garrison)
				{ 4,  112498, 170732, [PRICE_EXTRA_ITTYPE] = "118723:3" }, -- Prismatic Focusing Lens (Sold, Ashran)
				{ 5,  112384, 170731, [PRICE_EXTRA_ITTYPE] = "118723:3" }, -- Reflecting Prism (Sold, Ashran)
				{ 7,  118723, 176087 },                         -- Secrets of Draenor Jewelcrafting (Learnt by item 115359)
				{ 16, 128013, 170702, [PRICE_EXTRA_ITTYPE] = "118723:5" }, -- Taladite Amplifier (Sold, Ashran)
				{ 17, 127716, 187493, [PRICE_EXTRA_ITTYPE] = "109118:60" }, -- Mighty Taladite Amplifier (Sold, Ashran)
				{ 18, 127734, 187517, [PRICE_EXTRA_ITTYPE] = "109118:60" }, -- Savage Taladite Amplifier (Sold, Garrison)
				{ 20, 115526, 170701, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Taladite Recrystalizer (Sold, Ashran)
			},
			[MOP_DIFF] = {
				{ 1,  82453, 120045 }, -- Jeweled Onyx Panther : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Order of the Cloud Serpent"] - AtlasLoot["Exalted"]
				{ 2,  83088, 121844 }, -- Jade Panther : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Order of the Cloud Serpent"] - AtlasLoot["Honored"]
				{ 3,  83087, 121841 }, -- Ruby Panther : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Order of the Cloud Serpent"] - AtlasLoot["Revered"]
				{ 4,  83090, 121842 }, -- Sapphire Panther : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Order of the Cloud Serpent"] - AtlasLoot["Revered"]
				{ 5,  83089, 121843 }, -- Sunstone Panther : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Order of the Cloud Serpent"] - AtlasLoot["Honored"]
				{ 7,  82774, 131897 }, -- Jade Owl : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Treasures of the Vale"]
				{ 8,  82775, 131898 }, -- Sapphire Cub : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Treasures of the Vale"]
				{ 16, 90401, 131686 }, -- Primordial Ruby : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 17, 90406, 131759 }, -- Secrets of the Stone : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 18, 90399, 131691 }, -- Imperial Amethyst : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 19, 90400, 131690 }, -- Vermilion Onyx : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 20, 90397, 131688 }, -- Wild Jade : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 21, 90395, 131593 }, -- River's Heart : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 22, 90398, 131695 }, -- Sun's Radiance : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 23, 83795, 122663 }, -- Scrying Roguestone : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 24, 76132, 140060 }, -- Primal Diamond : =ds=#sr# 500 : =ds=AtlasLoot["World Drop"]
				{ 25, 95469, 140050 }, -- Serpent's Heart : =ds=#sr# 500 : =ds=AtlasLoot["World Drop"]
			},
			[CATA_DIFF] = {
				{ 1, 52489, 73623 }, -- Rhinestone Sunglasses : =ds=#sr# 525 : =ds=AtlasLoot["World Drop"]
				{ 2, 52304, 73478 }, -- Fire Prism : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 3, 52493, 73621 }, -- The Perforator : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 4, 52487, 73627 }, -- Jeweler's Amber Monocle : =ds=#sr# 460 : =ds=AtlasLoot["World Drop"]
				{ 5, 52492, 73620 }, -- Carnelian Spikes : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 6, 52486, 73626 }, -- Jeweler's Sapphire Monocle : =ds=#sr# 455 : =ds=AtlasLoot["World Drop"]
				{ 7, 52485, 73625 }, -- Jeweler's Ruby Monocle : =ds=#sr# 450 : =ds=AtlasLoot["World Drop"]
				{ 8, 52490, 73622 }, -- Stardust : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 44943, 62242 }, -- Icy Prism : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 2, 42421, 56208 }, -- Shadow Jade Focusing Lens : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 3, 42420, 56206 }, -- Shadow Crystal Focusing Lens : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 4, 41367, 56205 }, -- Dark Jade Focusing Lens : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 24122, 31077 }, -- Coronet of the Verdant Flame : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["The Botanica"]
				{ 2, 24123, 31078 }, -- Circlet of Arcane Might : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Old Hillsbrad Foothills"]
				{ 3, 32776, 41418 }, -- Crown of the Sea Witch : =ds=#sr# 365 : =ds=AtlasLoot["Trainer"]
				{ 4, 35945, 47280 }, -- Brilliant Glass : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 5, 31079, 38068 }, -- Mercurial Adamantite : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  21774, 26906 }, -- Emerald Crown of Destruction : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Silithus"]
				{ 2,  20969, 26878 }, -- Ruby Crown of Restoration : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Arathi Highlands"]
				{ 3,  21752, 26880 }, -- Thorium Setting : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 4,  25883, 32809 }, -- Dense Stone Statue : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 5,  25882, 32808 }, -- Solid Stone Statue : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 6,  20963, 25615 }, -- Mithril Filigree : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 7,  20954, 25612 }, -- Heavy Iron Knuckles : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 8,  20832, 25321 }, -- Moonsoul Crown : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 9,  25881, 32807 }, -- Heavy Stone Statue : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 10, 20817, 25278 }, -- Bronze Setting : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 11, 25880, 32801 }, -- Coarse Stone Statue : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 12, 20816, 25255 }, -- Delicate Copper Wire : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 13, 25498, 32259 }, -- Rough Stone Statue : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelWeapons
			name = AL["Weapons"],
			[BFA_DIFF] = {
				{ 1,  153640, 256258 }, -- Scarlet Diamond Staff of Intuition
				{ 2,  153640, 256259 }, -- Scarlet Diamond Staff of Intuition
				{ 3,  153640, 256260 }, -- Scarlet Diamond Staff of Intuition

				{ 5,  159939, 269734 }, -- Honorable Combatant's Staff of Intuition
				{ 6,  159939, 269735 }, -- Honorable Combatant's Staff of Intuition
				{ 7,  159939, 269736 }, -- Honorable Combatant's Staff of Intuition

				{ 16, 153639, 256255 }, -- Laribole Staff of Alacrity
				{ 17, 153639, 256256 }, -- Laribole Staff of Alacrity
				{ 18, 153639, 256257 }, -- Laribole Staff of Alacrity

				{ 9,  153637, 256254 }, -- Rubellite Staff of Intuition
				{ 24, 153638, 256253 }, -- Viridium Staff of Alacrity
			},
		},
		{ --JewelNecks
			name = AL["Necklaces"],
			[TWW_DIFF] = {
				{ 1, 215131, 435380 }, -- Malleable Pendant
				{ 2, 215136, 435385 }, -- Amulet of Earthen Craftsmanship
				{ 3, 215134, 435383 }, -- Fractured Gemstone Locket
				{ 4, 215144, 435387 }, -- Algari Competitor's Amulet
			},
			[LEGION_DIFF] = {
				{ 1,   136712, 209604 }, -- Queen's Opal Pendant
				{ 2,   136712, 209607 }, -- Queen's Opal Pendant
				{ 3,   136712, 209610 }, -- Queen's Opal Pendant
				{ 5,   130244, 195876 }, -- Grim Furystone Gorget
				{ 6,   130244, 195922 }, -- Grim Furystone Gorget
				{ 7,   130244, 195943 }, -- Grim Furystone Gorget
				{ 9,   130243, 195875 }, -- Raging Furystone Gorget
				{ 10,  130243, 195921 }, -- Raging Furystone Gorget
				{ 11,  130243, 195942 }, -- Raging Furystone Gorget
				{ 13,  130242, 195874 }, -- Righteous Dawnlight Medallion
				{ 14,  130242, 195920 }, -- Righteous Dawnlight Medallion
				{ 15,  130242, 195941 }, -- Righteous Dawnlight Medallion
				{ 16,  130241, 195873 }, -- Ancient Maelstrom Amulet
				{ 17,  130241, 195919 }, -- Ancient Maelstrom Amulet
				{ 18,  130241, 195940 }, -- Ancient Maelstrom Amulet
				{ 20,  130240, 195872 }, -- Intrepid Necklace of Prophecy
				{ 21,  130240, 195918 }, -- Intrepid Necklace of Prophecy
				{ 22,  130240, 195939 }, -- Intrepid Necklace of Prophecy
				{ 24,  130239, 195871 }, -- Sylvan Maelstrom Amulet
				{ 25,  130239, 195917 }, -- Sylvan Maelstrom Amulet
				{ 26,  130239, 195938 }, -- Sylvan Maelstrom Amulet
				{ 28,  130238, 195870 }, -- Vindictive Pandemonite Choker
				{ 29,  130238, 195916 }, -- Vindictive Pandemonite Choker
				{ 30,  130238, 195937 }, -- Vindictive Pandemonite Choker
				{ 101, 130237, 195869 }, -- Tranquil Necklace of Prophecy
				{ 101, 130237, 195915 }, -- Tranquil Necklace of Prophecy
				{ 103, 130237, 195936 }, -- Tranquil Necklace of Prophecy
				{ 105, 130236, 195868 }, -- Subtle Shadowruby Pendant
				{ 106, 130236, 195914 }, -- Subtle Shadowruby Pendant
				{ 107, 130236, 195935 }, -- Subtle Shadowruby Pendant
				{ 109, 130235, 195867 }, -- Twisted Pandemonite Choker
				{ 110, 130235, 195913 }, -- Twisted Pandemonite Choker
				{ 111, 130235, 195934 }, -- Twisted Pandemonite Choker
				{ 113, 130234, 195866 }, -- Blessed Dawnlight Medallion
				{ 114, 130234, 195912 }, -- Blessed Dawnlight Medallion
				{ 115, 130234, 195933 }, -- Blessed Dawnlight Medallion
				{ 116, 130233, 195865 }, -- Sorcerous Shadowruby Pendant
				{ 117, 130233, 195911 }, -- Sorcerous Shadowruby Pendant
				{ 118, 130233, 195932 }, -- Sorcerous Shadowruby Pendant
				{ 120, 130228, 195861 }, -- Azsunite Pendant
				{ 121, 130228, 195907 }, -- Azsunite Pendant
				{ 122, 130228, 195928 }, -- Azsunite Pendant
				{ 124, 130227, 195860 }, -- Skystone Pendant
				{ 125, 130227, 195906 }, -- Skystone Pendant
				{ 126, 130227, 195927 }, -- Skystone Pendant
				{ 128, 130226, 195859 }, -- Deep Amber Pendant
				{ 129, 130226, 195905 }, -- Deep Amber Pendant
				{ 130, 130226, 195926 }, -- Deep Amber Pendant
			},
			[WOD_DIFF] = {
				{ 1,  "115799:Stage6", 187517 },                        -- Glowing Taladite Pendant (Stage 6)
				{ 2,  "115799:Stage5", 187493 },                        -- Glowing Taladite Pendant (Stage 5)
				{ 3,  "115799:Stage4", 170702 },                        -- Glowing Taladite Pendant (Stage 4)
				{ 4,  "115799:Stage3", 170702 },                        -- Glowing Taladite Pendant (Stage 3)
				{ 5,  "115799:Stage2", 170702 },                        -- Glowing Taladite Pendant (Stage 2)
				{ 6,  "115799:Stage1", 170716, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Glowing Taladite Pendant (Stage 1) (Sold, Ashran)

				{ 8,  "115800:Stage6", 187517 },                        -- Shifting Taladite Pendant (Stage 6)
				{ 9,  "115800:Stage5", 187493 },                        -- Shifting Taladite Pendant (Stage 5)
				{ 10, "115800:Stage4", 170702 },                        -- Shifting Taladite Pendant (Stage 4)
				{ 11, "115800:Stage3", 170702 },                        -- Shifting Taladite Pendant (Stage 3)
				{ 12, "115800:Stage2", 170702 },                        -- Shifting Taladite Pendant (Stage 2)
				{ 13, "115800:Stage1", 170717, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Shifting Taladite Pendant (Stage 1) (Sold, Ashran)

				{ 16, "115801:Stage6", 187517 },                        -- Whispering Taladite Pendant (Stage 6)
				{ 17, "115801:Stage5", 187493 },                        -- Whispering Taladite Pendant (Stage 5)
				{ 18, "115801:Stage4", 170702 },                        -- Whispering Taladite Pendant (Stage 4)
				{ 19, "115801:Stage3", 170702 },                        -- Whispering Taladite Pendant (Stage 3)
				{ 20, "115801:Stage2", 170702 },                        -- Whispering Taladite Pendant (Stage 2)
				{ 21, "115801:Stage1", 170718, [PRICE_EXTRA_ITTYPE] = "118723:1" }, -- Whispering Taladite Pendant (Stage 1) (Sold, Ashran)
				{ 23, 115990,          170707 },                        -- Glowing Iron Choker (Learnt by item 115359)
				{ 24, 115991,          170708 },                        -- Shifting Iron Choker (Learnt by item 115359)
				{ 25, 115992,          170709 },                        -- Whispering Iron Choker (Learnt by item 115359)
			},
			[MOP_DIFF] = {
				{ 1, 83803, 122670 }, -- Golembreaker Amulet : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 2, 83802, 122669 }, -- Reflection of the Sea : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 3, 83805, 122672 }, -- Skymage Circle : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 4, 83806, 122673 }, -- Tiger Opal Pendant : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 5, 83804, 122671 }, -- Widow Chain : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 6, 83794, 122662 }, -- Shadowfire Necklace : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 52350, 73521 }, -- Brazen Elementium Medallion : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 2, 52323, 73506 }, -- Elementium Guardian : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 3, 52321, 73504 }, -- Entwined Elementium Choker : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 4, 52322, 73505 }, -- Eye of Many Deaths : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 5, 75075, 99543 }, -- Vicious Amberjewel Pendant : =ds=#sr# 520 : =ds=AtlasLoot["Trainer"]
				{ 6, 75078, 99544 }, -- Vicious Ruby Choker : =ds=#sr# 520 : =ds=AtlasLoot["Trainer"]
				{ 7, 75074, 99542 }, -- Vicious Sapphire Necklace : =ds=#sr# 520 : =ds=AtlasLoot["Trainer"]
				{ 8, 52309, 73497 }, -- Nightstone Choker : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 42646, 56500 }, -- Titanium Earthguard Chain : =ds=#sr# 440 : #DALARANJW:6#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2, 42645, 56499 }, -- Titanium Impact Choker : =ds=#sr# 440 : #DALARANJW:6#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3, 42647, 56501 }, -- Titanium Spellshock Necklace : =ds=#sr# 440 : #DALARANJW:6#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4, 52307, 73496 }, -- Alicite Pendant : =ds=#sr# 435 : =ds=AtlasLoot["Trainer"]
				{ 5, 45812, 64725 }, -- Emerald Choker : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 6, 45813, 64726 }, -- Sky Sapphire Amulet : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 7, 42339, 56196 }, -- Blood Sun Necklace : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
				{ 8, 42338, 56195 }, -- Jade Dagger Pendant : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  34360, 46126 }, -- Amulet of Flowing Life : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 2,  34358, 46127 }, -- Hard Khorium Choker : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 3,  34359, 46125 }, -- Pendant of Sunfire : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Sunwell Plateau"]
				{ 4,  24121, 31076 }, -- Chain of the Twilight Owl : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
				{ 5,  24117, 31072 }, -- Embrace of the Dawn : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
				{ 6,  24114, 31070 }, -- Braided Eternium Chain : =ds=#sr# 360 : =ds=AtlasLoot["World Drop"]
				{ 7,  24116, 31071 }, -- Eye of the Night : =ds=#sr# 360 : =ds=AtlasLoot["World Drop"]
				{ 8,  24092, 31062 }, -- Pendant of Frozen Flame : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Keepers of Time"] - AtlasLoot["Revered"]
				{ 9,  24097, 31065 }, -- Pendant of Shadow's End : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Aldor"] - AtlasLoot["Revered"]
				{ 10, 24093, 31063 }, -- Pendant of Thawing : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Lower City"] - AtlasLoot["Revered"]
				{ 11, 24098, 31066 }, -- Pendant of the Null Rune : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Revered"]
				{ 12, 24095, 31064 }, -- Pendant of Withering : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Scryers"] - AtlasLoot["Revered"]
				{ 13, 24110, 31068 }, -- Living Ruby Pendant : =ds=#sr# 355 : =ds=AtlasLoot["World Drop"]
				{ 14, 24106, 31067 }, -- Thick Felsteel Necklace : =ds=#sr# 355 : =ds=AtlasLoot["World Drop"]
				{ 15, 43245, 58142 }, -- Crystal Chalcedony Amulet : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 16, 43244, 58141 }, -- Crystal Citrine Necklace : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 17, 32508, 40514 }, -- Necklace of the Deep : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 18, 24077, 31051 }, -- Thick Adamantite Necklace : =ds=#sr# 335 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  21792, 26915 }, -- Necklace of the Diamond Tower : =ds=#sr# 305 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Winterspring"]
				{ 2,  21791, 26911 }, -- Living Emerald Pendant : =ds=#sr# 290 : =ds=AtlasLoot["Trainer"]
				{ 3,  21790, 26908 }, -- Sapphire Pendant of Winter Night : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 4,  21766, 26897 }, -- Opal Necklace of Impact : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]
				{ 5,  21764, 26883 }, -- Ruby Pendant of Fire : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 6,  21755, 26876 }, -- Aquamarine Pendant of the Warrior : =ds=#sr# 220 : =ds=AtlasLoot["Trainer"]
				{ 7,  45627, 63743 }, -- Amulet of Truesight : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 8,  20967, 25622 }, -- Citrine Pendant of Golden Healing : =ds=#sr# 190 : =ds=AtlasLoot["World Drop"]
				{ 9,  20966, 25618 }, -- Jade Pendant of Blasting : =ds=#sr# 160 : =ds=AtlasLoot["World Drop"]
				{ 10, 20831, 25320 }, -- Heavy Golden Necklace of Battle : =ds=#sr# 150 : =ds=AtlasLoot["Vendor"]
				{ 11, 20950, 25610 }, -- Pendant of the Agate Shield : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 12, 20830, 25339 }, -- Amulet of the Moon : =ds=#sr# 110 : =ds=AtlasLoot["Vendor"]
				{ 13, 20909, 25498 }, -- Barbaric Iron Collar : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 14, 31154, 38175 }, -- Bronze Torc : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 15, 30419, 36523 }, -- Brilliant Necklace : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 16, 21933, 26927 }, -- Thick Bronze Necklace : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 17, 21934, 26928 }, -- Ornate Tigerseye Necklace : =ds=#sr# 30 : =ds=AtlasLoot["Trainer"]
				{ 18, 25438, 32178 }, -- Malachite Pendant : =ds=#sr# 20 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelBoPGems
			name = AL["BoP Gems"],
			[MOP_DIFF] = {
				{ 1,  83141, 122675 },                         -- Bold Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 2,  83150, 122676 },                         -- Brilliant Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 3,  83151, 122674 },                         -- Delicate Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 4,  83152, 122685 },                         -- Flashing Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 5,  83147, 122683 },                         -- Precise Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 7,  83143, 122684 },                         -- Fractured Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 8,  83142, 122682 },                         -- Quick Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 9,  83146, 122680 },                         -- Smooth Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 10, 83145, 122679 },                         -- Subtle Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 12, 76734, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, --=q3=Serpent's Eye
				{ 16, 83144, 122681 },                         -- Rigid Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 17, 83148, 122678 },                         -- Solid Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 18, 83149, 122677 },                         -- Sparkling Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 20, 93409, 136274 },                         -- Assassin's Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 21, 93405, 136270 },                         -- Lucent Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 22, 93410, 136275 },                         -- Mysterious Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 23, 93404, 136269 },                         -- Resplendent Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 24, 93408, 136273 },                         -- Tense Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 25, 93406, 136272 },                         -- Willful Serpent's Eye : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  52255, 73396 }, -- Bold Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 2,  52257, 73399 }, -- Brilliant Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 3,  52258, 73397 }, -- Delicate Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 4,  52259, 73398 }, -- Flashing Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 5,  52260, 73400 }, -- Precise Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 7,  52269, 73409 }, -- Fractured Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 8,  52267, 73407 }, -- Mystic Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 9,  52268, 73408 }, -- Quick Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 10, 52266, 73406 }, -- Smooth Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 11, 52265, 73405 }, -- Subtle Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 16, 52264, 73404 }, -- Rigid Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 17, 52261, 73401 }, -- Solid Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 18, 52262, 73402 }, -- Sparkling Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 19, 52263, 73403 }, -- Stormy Chimera's Eye : =ds=#sr# 500 : #CATAJW:2#AtlasLoot["Vendor"]
				{ 21, 52196 }, -- Chimera's Eye : #CATAJW:1#AtlasLoot["Vendor"]
			},
			[WOTLK_DIFF] = {
				{ 1,  42142, 56049 }, -- Bold Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,  42148, 56053 }, -- Brilliant Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,  42143, 56052 }, -- Delicate Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,  42152, 56056 }, -- Flashing Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 5,  42154, 56081 }, -- Precise Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 7,  42158, 56079 }, -- Mystic Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,  42150, 56083 }, -- Quick Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 9,  42149, 56085 }, -- Smooth Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 10, 42151, 56055 }, -- Subtle Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 16, 42156, 56084 }, -- Rigid Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 17, 36767, 56086 }, -- Solid Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 18, 42145, 56087 }, -- Sparkling Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 19, 42155, 56088 }, -- Stormy Dragon's Eye : =ds=#sr# 370 : #DALARANJW:2#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 21, 42225 }, -- Dragon's Eye : #DALARANJW:1#AtlasLoot["Vendor"]
			},
		},
		{ --JewelRed
			name = AL["Red Gems"],
			[TWW_DIFF] = {
				{ 1, 213462, 434549 }, -- Deadly Ruby
				{ 2, 213456, 434551 }, -- Masterful Ruby
				{ 3, 213453, 434550 }, -- Quick Ruby
				{ 4, 213459, 434552 }, -- Versatile Ruby
			},
			[MOP_DIFF] = {
				{ 1,  76696, 107705 }, -- Bold Primordial Ruby : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131686
				{ 2,  76694, 107706 }, -- Brilliant Primordial Ruby : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131686
				{ 3,  76692, 107707 }, -- Delicate Primordial Ruby : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131686
				{ 4,  76695, 107708 }, -- Flashing Primordial Ruby : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131686
				{ 5,  76693, 107709 }, -- Precise Primordial Ruby : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131686
				{ 16, 76564, 107622 }, -- Bold Pandarian Garnet : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 17, 76562, 107623 }, -- Brilliant Pandarian Garnet : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 18, 76563, 107625 }, -- Flashing Pandarian Garnet : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 19, 76561, 107626 }, -- Precise Pandarian Garnet : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 20, 76560, 107622 }, -- Delicate Pandarian Garnet : =ds=#sr# 530 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  71883, 101799 }, -- Bold Queen's Garnet : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 2,  71881, 101797 }, -- Brilliant Queen's Garnet : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 3,  71879, 101795 }, -- Delicate Queen's Garnet : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 4,  71882, 101798 }, -- Flashing Queen's Garnet : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 5,  71880, 101796 }, -- Precise Queen's Garnet : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 7,  52206, 73335 }, -- Bold Inferno Ruby : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 8,  52207, 73338 }, -- Brilliant Inferno Ruby : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 9,  52212, 73336 }, -- Delicate Inferno Ruby : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 10, 52216, 73337 }, -- Flashing Inferno Ruby : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 11, 52230, 73339 }, -- Precise Inferno Ruby : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 16, 52081, 73222 }, -- Bold Carnelian : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 17, 52084, 73225 }, -- Brilliant Carnelian : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 18, 52082, 73223 }, -- Delicate Carnelian : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 19, 52083, 73224 }, -- Flashing Carnelian : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 20, 52085, 73226 }, -- Precise Carnelian : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,  40111, 66447 }, -- Bold Cardinal Ruby : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,  40113, 66446 }, -- Brilliant Cardinal Ruby : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,  40112, 66448 }, -- Delicate Cardinal Ruby : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,  40116, 66453 }, -- Flashing Cardinal Ruby : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 5,  40118, 66450 }, -- Precise Cardinal Ruby : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 7,  39996, 53830 }, -- Bold Scarlet Ruby : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,  39998, 53946 }, -- Brilliant Scarlet Ruby : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Kirin Tor"] - AtlasLoot["Exalted"]
				{ 9,  39997, 53945 }, -- Delicate Scarlet Ruby : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 10, 40001, 53949 }, -- Flashing Scarlet Ruby : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 11, 40003, 53951 }, -- Precise Scarlet Ruby : =ds=#sr# 390 : =ds=Herald Volazj584 (AtlasLoot["Heroic"])
				{ 16, 39900, 53831 }, -- Bold Bloodstone : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 17, 39912, 53852 }, -- Brilliant Bloodstone : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 18, 39905, 53832 }, -- Delicate Bloodstone : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 19, 39908, 53844 }, -- Flashing Bloodstone : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 20, 39910, 54017 }, -- Precise Bloodstone : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  32193, 39705 }, -- Bold Crimson Spinel : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Friendly"]
				{ 2,  32196, 39711 }, -- Brilliant Crimson Spinel : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Friendly"]
				{ 3,  32194, 39706 }, -- Delicate Crimson Spinel : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Friendly"]
				{ 4,  32199, 39714 }, -- Flashing Crimson Spinel : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 6,  33131, 42589 }, -- Crimson Sun : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Revered"]
				{ 7,  33133, 42558 }, -- Don Julio's Heart : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Revered"]
				{ 8,  33134, 42588 }, -- Kailee's Rose : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Honored"]
				{ 16, 24027, 31084 }, -- Bold Living Ruby : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 17, 24030, 31088 }, -- Brilliant Living Ruby : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 18, 24028, 31085 }, -- Delicate Living Ruby : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 19, 24036, 31091 }, -- Flashing Living Ruby : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 21, 23095, 28905 }, -- Bold Blood Garnet : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 22, 23094, 28903 }, -- Brilliant Blood Garnet : =ds=#sr# 305 : =ds=AtlasLoot_IngameLocales["The Scryers"] - AtlasLoot["Friendly"]
				{ 23, 28595, 34590 }, -- Delicate Blood Garnet : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelBlue
			name = AL["Blue Gems"],
			[TWW_DIFF] = {
				{ 1, 213465, 434553 }, -- Deadly Sapphire
				{ 2, 213471, 434555 }, -- Masterful Sapphire
				{ 3, 213468, 434554 }, -- Quick Sapphire
				{ 4, 213474, 434563 }, -- Versatile Sapphire
			},
			[LEGION_DIFF] = {
				{ 1, 151585, 247774 }, -- Versatile Labradorite
			},
			[MOP_DIFF] = {
				{ 1,  76636, 106947 }, -- Rigid River's Heart : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131593
				{ 2,  76639, 106950 }, -- Solid River's Heart : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131593
				{ 3,  76638, 106949 }, -- Sparkling River's Heart : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131593
				{ 4,  76637, 106948 }, -- Stormy River's Heart : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131593
				{ 16, 76504, 107621 }, -- Stormy Lapis Lazuli : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 17, 76505, 107620 }, -- Sparkling Lapis Lazuli : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 18, 76506, 107619 }, -- Solid Lapis Lazuli : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 19, 76502, 107617 }, -- Rigid Lapis Lazuli : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  71817, 101735 }, -- Rigid Deepholm Iolite : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 2,  71820, 101742 }, -- Solid Deepholm Iolite : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 3,  71819, 101741 }, -- Sparkling Deepholm Iolite : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 4,  71818, 101740 }, -- Stormy Deepholm Iolite : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 6,  52235, 73344 }, -- Rigid Ocean Sapphire : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 7,  52242, 73340 }, -- Solid Ocean Sapphire : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 8,  52244, 73341 }, -- Sparkling Ocean Sapphire : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 9,  52246, 73343 }, -- Stormy Ocean Sapphire : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 16, 52089, 73230 }, -- Rigid Zephyrite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 17, 52086, 73227 }, -- Solid Zephyrite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 18, 52087, 73228 }, -- Sparkling Zephyrite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 19, 52088, 73229 }, -- Stormy Zephyrite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
			},
			[WOTLK_DIFF] = {
				{ 1,  40125, 66501 }, -- Rigid Majestic Zircon : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,  40119, 66497 }, -- Solid Majestic Zircon : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,  40120, 66498 }, -- Sparkling Majestic Zircon : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,  40122, 66499 }, -- Stormy Majestic Zircon : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 6,  40014, 53958 }, -- Rigid Sky Sapphire : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 7,  40008, 53952 }, -- Solid Sky Sapphire : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,  40010, 53954 }, -- Sparkling Sky Sapphire : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 9,  40011, 53955 }, -- Stormy Sky Sapphire : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 16, 39915, 53854 }, -- Rigid Chalcedony : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 17, 39919, 53934 }, -- Solid Chalcedony : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 18, 39927, 53941 }, -- Sparkling Chalcedony : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 19, 39932, 53943 }, -- Stormy Chalcedony : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
			},
			[BC_DIFF] = {
				{ 1,  32206, 39721 }, -- Rigid Empyrean Sapphire : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 2,  32200, 39715 }, -- Solid Empyrean Sapphire : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Friendly"]
				{ 3,  32201, 39716 }, -- Sparkling Empyrean Sapphire : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Friendly"]
				{ 4,  32203, 39718 }, -- Stormy Empyrean Sapphire : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 5,  33135, 42590 }, -- Falling Star : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Lower City"] - AtlasLoot["Revered"]
				{ 7,  24051, 31098 }, -- Rigid Star of Elune : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 8,  24033, 31092 }, -- Solid Star of Elune : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 9,  24035, 31149 }, -- Sparkling Star of Elune : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 10, 24039, 31095 }, -- Stormy Star of Elune : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 16, 23116, 28948 }, -- Rigid Azure Moonstone : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 17, 23120, 28955 }, -- Stormy Azure Moonstone : =ds=#sr# 315 : =ds=AtlasLoot["World Drop"]
				{ 18, 23118, 28950 }, -- Solid Azure Moonstone : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 19, 23119, 28953 }, -- Sparkling Azure Moonstone : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelYellow
			name = AL["Yellow Gems"],
			[LEGION_DIFF] = {
				{ 1, 151583, 247772 }, -- Quick Lightsphene
			},
			[MOP_DIFF] = {
				{ 1,  76700, 107710 }, -- Fractured Sun's Radiance : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131695
				{ 2,  76701, 107711 }, -- Mystic Sun's Radiance : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131695
				{ 3,  76699, 107712 }, -- Quick Sun's Radiance : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131695
				{ 4,  76697, 107713 }, -- Smooth Sun's Radiance : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131695
				{ 5,  76698, 107714 }, -- Subtle Sun's Radiance : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131695
				{ 16, 76566, 107644 }, -- Subtle Sunstone : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 17, 76565, 107643 }, -- Smooth Sunstone : =ds=#sr# 565 : =ds=AtlasLoot["Trainer"]
				{ 18, 76567, 107642 }, -- Quick Sunstone : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 19, 76569, 107641 }, -- Mystic Sunstone : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 20, 76568, 107640 }, -- Fractured Sunstone : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  71877, 101803 }, -- Fractured Lightstone : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 2,  71878, 101804 }, -- Mystic Lightstone : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 3,  71876, 101802 }, -- Quick Lightstone : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 4,  71874, 101800 }, -- Smooth Lightstone : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 5,  71875, 101801 }, -- Subtle Lightstone : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 7,  52219, 73349 }, -- Fractured Amberjewel : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 8,  52226, 73347 }, -- Mystic Amberjewel : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 9,  52232, 73348 }, -- Quick Amberjewel : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 10, 52241, 73346 }, -- Smooth Amberjewel : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 11, 52247, 73345 }, -- Subtle Amberjewel : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 16, 52094, 73239 }, -- Fractured Alicite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 17, 52093, 73234 }, -- Quick Alicite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 18, 52091, 73232 }, -- Smooth Alicite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 19, 52090, 73231 }, -- Subtle Alicite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
			},
			[WOTLK_DIFF] = {
				{ 1,  40127, 66505 }, -- Mystic King's Amber : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,  40128, 66506 }, -- Quick King's Amber : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,  40124, 66502 }, -- Smooth King's Amber : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,  40115, 66452 }, -- Subtle King's Amber : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 6,  40016, 53960 }, -- Mystic Autumn's Glow : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 7,  40017, 53961 }, -- Quick Autumn's Glow : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,  40013, 53957 }, -- Smooth Autumn's Glow : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["The Sons of Hodir"] - AtlasLoot["Exalted"]
				{ 9,  40000, 53948 }, -- Subtle Autumn's Glow : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 16, 39917, 53857 }, -- Mystic Sun Crystal : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 17, 39918, 53856 }, -- Quick Sun Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 18, 39909, 53845 }, -- Smooth Sun Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 19, 39907, 53843 }, -- Subtle Sun Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  32209, 39724 }, -- Mystic Lionseye : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 2,  35761, 47056 }, -- Quick Lionseye : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 3,  32205, 39720 }, -- Smooth Lionseye : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Friendly"]
				{ 4,  32198, 39713 }, -- Subtle Lionseye : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Friendly"]
				{ 6,  33140, 42592 }, -- Blood of Amber : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Revered"]
				{ 7,  33144, 42593 }, -- Facet of Eternity : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Keepers of Time"] - AtlasLoot["Honored"]
				{ 8,  33143, 42591 }, -- Stone of Blades : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["Keepers of Time"] - AtlasLoot["Revered"]
				{ 16, 24053, 31101 }, -- Mystic Dawnstone : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Nagrand"]
				{ 17, 35315, 46403 }, -- Quick Dawnstone : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 18, 24048, 31097 }, -- Smooth Dawnstone : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 19, 24032, 31090 }, -- Subtle Dawnstone : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 21, 23114, 28944 }, -- Smooth Golden Draenite : =ds=#sr# 325 : =ds=AtlasLoot_IngameLocales["The Aldor"] - AtlasLoot["Friendly"]
				{ 22, 23115, 28947 }, -- Subtle Golden Draenite : =ds=#sr# 315 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Honored"]
			},
		},
		{ --JewelOrange
			name = AL["Orange Gems"],
			[TWW_DIFF] = {
				{ 1, 213501, 434537 }, -- Deadly Amber
				{ 2, 213507, 434539 }, -- Masterful Amber
				{ 3, 213504, 434538 }, -- Quick Amber
				{ 4, 213510, 434540 }, -- Versatile Amber
				{ 5, 213515, 434536 }, -- Solid Amber
			},
			[LEGION_DIFF] = {
				{ 1, 151580, 247771 }, -- Deadly Deep Chemirine
			},
			[MOP_DIFF] = {
				{ 1,   76670, 107715 }, -- Adept Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 2,   76672, 107716 }, -- Artful Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 3,   76665, 107717 }, -- Champion's Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 4,   76659, 107718 }, -- Crafty Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 5,   76658, 107719 }, -- Deadly Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 6,   76666, 107720 }, -- Deft Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 7,   76669, 107721 }, -- Fierce Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 8,   76673, 107722 }, -- Fine Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 9,   76661, 107723 }, -- Inscribed Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 10,  76671, 107724 }, -- Keen Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 11,  76675, 107725 }, -- Lucent Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 16,  76662, 107726 }, -- Polished Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 17,  76660, 107727 }, -- Potent Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 18,  76668, 107728 }, -- Reckless Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 19,  76663, 107729 }, -- Resolute Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 20,  76679, 107730 }, -- Resplendent Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 21,  76674, 107731 }, -- Skillful Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 22,  76678, 107732 }, -- Splendid Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 23,  76664, 107733 }, -- Stalwart Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 24,  76676, 107734 }, -- Tenuous Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 25,  76667, 107735 }, -- Wicked Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 26,  76677, 107736 }, -- Willful Vermilion Onyx : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131690
				{ 101, 76531, 107659 }, -- Resolute Tiger Opal : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 102, 76547, 107660 }, -- Resplendent Tiger Opal : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 103, 76546, 107662 }, -- Splendid Tiger Opal : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 104, 76535, 107666 }, -- Wicked Tiger Opal : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 105, 76527, 107648 }, -- Crafty Tiger Opal : =ds=#sr# 565 : =ds=AtlasLoot["Trainer"]
				{ 106, 76532, 107663 }, -- Stalwart Tiger Opal : =ds=#sr# 565 : =ds=AtlasLoot["Trainer"]
				{ 107, 76528, 107657 }, -- Potent Tiger Opal : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 108, 76542, 107661 }, -- Skillful Tiger Opal : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 109, 76537, 107651 }, -- Fierce Tiger Opal : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 110, 76529, 107653 }, -- Inscribed Tiger Opal : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 111, 76538, 107645 }, -- Adept Tiger Opal : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 116, 76544, 107665 }, -- Tenuous Tiger Opal : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 117, 76533, 107647 }, -- Champion's Tiger Opal : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 118, 76530, 107656 }, -- Polished Tiger Opal : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 119, 76543, 107655 }, -- Lucent Tiger Opal : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 120, 76536, 107658 }, -- Reckless Tiger Opal : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 121, 76541, 107652 }, -- Fine Tiger Opal : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 122, 76545, 107667 }, -- Willful Tiger Opal : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 123, 76534, 107650 }, -- Deft Tiger Opal : =ds=#sr# 530 : =ds=AtlasLoot["Trainer"]
				{ 124, 76539, 107654 }, -- Keen Tiger Opal : =ds=#sr# 530 : =ds=AtlasLoot["Trainer"]
				{ 125, 76540, 107646 }, -- Artful Tiger Opal : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 126, 76526, 107649 }, -- Deadly Tiger Opal : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,   71852, 101773 }, -- Adept Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 2,   71854, 101775 }, -- Artful Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 3,   71847, 101768 }, -- Champion's Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 4,   71841, 101762 }, -- Crafty Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 5,   71840, 101761 }, -- Deadly Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 6,   71848, 101769 }, -- Deft Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 7,   71851, 101772 }, -- Fierce Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 8,   71855, 101776 }, -- Fine Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 9,   71843, 101764 }, -- Inscribed Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 10,  71853, 101774 }, -- Keen Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 11,  71857, 101778 }, -- Lucent Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 16,  71844, 101765 }, -- Polished Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 17,  71842, 101763 }, -- Potent Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 18,  71850, 101771 }, -- Reckless Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 19,  71845, 101766 }, -- Resolute Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 20,  71861, 101782 }, -- Resplendent Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 21,  71856, 101777 }, -- Skillful Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 22,  71860, 101781 }, -- Splendid Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 23,  71846, 101767 }, -- Stalwart Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 24,  71858, 101779 }, -- Tenuous Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 25,  71849, 101770 }, -- Wicked Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 26,  71859, 101780 }, -- Willful Lava Coral : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 101, 52204, 73371 }, -- Adept Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 102, 52205, 73373 }, -- Artful Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 103, 52209, 73365 }, -- Deadly Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 104, 52211, 73368 }, -- Deft Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 105, 52214, 73367 }, -- Fierce Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 106, 52215, 73372 }, -- Fine Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 107, 52222, 73364 }, -- Inscribed Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 108, 52224, 73374 }, -- Keen Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 110, 52115, 73268 }, -- Adept Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 111, 52117, 73270 }, -- Artful Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 112, 52109, 73262 }, -- Deadly Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 113, 52112, 73265 }, -- Deft Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 114, 52111, 73264 }, -- Fierce Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 115, 52116, 73269 }, -- Fine Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 116, 68357, 95755 }, -- Lucent Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 117, 52229, 73361 }, -- Polished Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 118, 52239, 73366 }, -- Potent Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 119, 52208, 73369 }, -- Reckless Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 120, 52249, 73362 }, -- Resolute Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 121, 68358, 95756 }, -- Resplendent Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 122, 52240, 73370 }, -- Skillful Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 123, 68356, 95754 }, -- Willful Ember Topaz : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 125, 52108, 73260 }, -- Inscribed Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 126, 52118, 73271 }, -- Keen Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 127, 52106, 73258 }, -- Polished Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 128, 52110, 73263 }, -- Potent Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 129, 52113, 73266 }, -- Reckless Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 130, 52114, 73267 }, -- Skillful Hessonite : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,   40144, 66579 }, -- Champion's Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,   40147, 66568 }, -- Deadly Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,   40150, 66584 }, -- Deft Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,   40146, 66583 }, -- Fierce Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 5,   40142, 66567 }, -- Inscribed Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 6,   40149, 66585 }, -- Lucent Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 7,   40152, 66569 }, -- Potent Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,   40155, 66574 }, -- Reckless Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 9,   40163, 66586 }, -- Resolute Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 10,  40145, 66582 }, -- Resplendent Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 11,  40160, 66581 }, -- Stalwart Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 12,  40154, 66571 }, -- Willful Ametrine : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 16,  40039, 53977 }, -- Champion's Monarch Topaz : =ds=#sr# 390 : =ds=AtlasLoot["World Drop"]
				{ 17,  40043, 53979 }, -- Deadly Monarch Topaz : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Knights of the Ebon Blade"] - AtlasLoot["Revered"]
				{ 18,  40055, 53991 }, -- Deft Monarch Topaz : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 19,  40041, 54019 }, -- Fierce Monarch Topaz : =ds=#sr# 390 : =ds=Ingvar the Plunderer640 (AtlasLoot["Heroic"])
				{ 20,  40037, 53975 }, -- Inscribed Monarch Topaz : =ds=#sr# 390 : =ds=AtlasLoot["World Drop"]
				{ 21,  40045, 53981 }, -- Lucent Monarch Topaz : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 22,  40048, 53984 }, -- Potent Monarch Topaz : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 23,  40051, 53987 }, -- Reckless Monarch Topaz : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 24,  40059, 54023 }, -- Resolute Monarch Topaz : =ds=#sr# 390 : =ds=AtlasLoot["World Drop"]
				{ 25,  40040, 53978 }, -- Resplendent Monarch Topaz : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 26,  40057, 53993 }, -- Stalwart Monarch Topaz : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["The Wyrmrest Accord"] - AtlasLoot["Exalted"]
				{ 27,  40050, 53986 }, -- Willful Monarch Topaz : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 101, 39949, 53874 }, -- Champion's Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 102, 39952, 53877 }, -- Deadly Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Knights of the Ebon Blade"] - AtlasLoot["Friendly"]
				{ 103, 39955, 53880 }, -- Deft Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 104, 39951, 53876 }, -- Fierce Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 105, 39947, 53872 }, -- Inscribed Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 106, 39954, 53879 }, -- Lucent Huge Citrine : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 107, 39956, 53882 }, -- Potent Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 108, 39959, 53885 }, -- Reckless Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Frenzyheart Tribe"] - AtlasLoot["Friendly"]
				{ 109, 39967, 53893 }, -- Resolute Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 110, 39950, 53875 }, -- Resplendent Huge Citrine : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 111, 39965, 53891 }, -- Stalwart Huge Citrine : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 112, 39958, 53884 }, -- Willful Huge Citrine : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
			},
			[BC_DIFF] = {
				{ 1,  32222, 39738 }, -- Deadly Pyrestone : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 2,  32217, 39733 }, -- Inscribed Pyrestone : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 3,  32218, 39734 }, -- Potent Pyrestone : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Honored"]
				{ 4,  35760, 47055 }, -- Reckless Pyrestone : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Honored"]
				{ 6,  31868, 39471 }, -- Deadly Noble Topaz : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 7,  24058, 31106 }, -- Inscribed Noble Topaz : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 8,  24059, 31107 }, -- Potent Noble Topaz : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 9,  24060, 31108 }, -- Reckless Noble Topaz : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 16, 31869, 39467 }, -- Deadly Flame Spessarite : =ds=#sr# 325 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Blade's Edge Mountains"]
				{ 17, 23101, 28915 }, -- Potent Flame Spessarite : =ds=#sr# 325 : =ds=AtlasLoot_IngameLocales["Lower City"] - AtlasLoot["Friendly"]
				{ 18, 23099, 28912 }, -- Reckless Flame Spessarite : =ds=#sr# 305 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Friendly"]
				{ 19, 23098, 28910 }, -- Inscribed Flame Spessarite : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelGreen
			name = AL["Green Gems"],
			[TWW_DIFF] = {
				{ 1, 213477, 434541 }, -- Deadly Emerald
				{ 2, 213480, 434543 }, -- Masterful Emerald
				{ 3, 213486, 434542 }, -- Quick Emerald
				{ 4, 213483, 434544 }, -- Versatile Emerald
			},
			[MOP_DIFF] = {
				{ 1,   76646, 106960 }, -- Balanced Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 2,   76644, 106957 }, -- Effulgent Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 3,   76651, 107737 }, -- Energized Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 4,   76654, 107738 }, -- Forceful Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 5,   76652, 107739 }, -- Jagged Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 6,   76642, 106955 }, -- Lightning Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 7,   76640, 106953 }, -- Misty Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 8,   76655, 107740 }, -- Nimble Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 9,   76641, 106954 }, -- Piercing Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 16,  76656, 107742 }, -- Puissant Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 17,  76649, 107743 }, -- Radiant Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 18,  76653, 107744 }, -- Regal Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 19,  76643, 106956 }, -- Sensei's Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 20,  76650, 107745 }, -- Shattered Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 21,  76657, 107746 }, -- Steady Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 22,  76648, 106962 }, -- Turbid Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 23,  76647, 106961 }, -- Vivid Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 24,  76645, 106958 }, -- Zen Wild Jade : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131688
				{ 101, 76517, 107609 }, -- Radiant Alexandrite : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 102, 76524, 107608 }, -- Puissant Alexandrite : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 103, 76522, 107601 }, -- Forceful Alexandrite : =ds=#sr# 565 : =ds=AtlasLoot["Trainer"]
				{ 104, 76519, 107607 }, -- Energized Alexandrite : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 105, 76508, 107607 }, -- Piercing Alexandrite : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 106, 76525, 107613 }, -- Steady Alexandrite : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 107, 76513, 107598 }, -- Balanced Alexandrite : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 108, 76511, 107599 }, -- Effulgent Alexandrite : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 109, 76510, 107611 }, -- Sensei's Alexandrite : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 116, 76515, 107614 }, -- Turbid Alexandrite : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 117, 76507, 107605 }, -- Misty Alexandrite : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 118, 76518, 107612 }, -- Shattered Alexandrite : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 119, 76521, 107610 }, -- Regal Alexandrite : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 120, 76512, 107616 }, -- Zen Alexandrite : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 121, 76520, 107602 }, -- Jagged Alexandrite : =ds=#sr# 530 : =ds=AtlasLoot["Trainer"]
				{ 122, 76523, 107606 }, -- Nimble Alexandrite : =ds=#sr# 530 : =ds=AtlasLoot["Trainer"]
				{ 123, 76509, 107604 }, -- Lightning Alexandrite : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 124, 76514, 107615 }, -- Vivid Alexandrite : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,   71828, 101749 }, -- Balanced Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 2,   71833, 101754 }, -- Energized Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 3,   71836, 101757 }, -- Forceful Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 4,   71826, 101747 }, -- Infused Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 5,   71834, 101755 }, -- Jagged Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 6,   71824, 101745 }, -- Lightning Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 7,   71822, 101743 }, -- Misty Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 8,   71837, 101758 }, -- Nimble Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 9,   71823, 101744 }, -- Piercing Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 16,  71838, 101759 }, -- Puissant Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 17,  71831, 101752 }, -- Radiant Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 18,  71835, 101756 }, -- Regal Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 19,  71825, 101746 }, -- Sensei's Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 20,  71832, 101753 }, -- Shattered Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 21,  71839, 101760 }, -- Steady Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 22,  71830, 101751 }, -- Turbid Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 23,  71829, 101750 }, -- Vivid Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 24,  71827, 101748 }, -- Zen Elven Peridot : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 101, 52218, 73380 }, -- Forceful Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 102, 52223, 73377 }, -- Jagged Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 103, 52225, 73381 }, -- Lightning Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 104, 52227, 73376 }, -- Nimble Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 105, 52228, 73378 }, -- Piercing Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 106, 52231, 73382 }, -- Puissant Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 107, 52233, 73375 }, -- Regal Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 108, 52237, 73384 }, -- Sensei's Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 109, 52245, 73379 }, -- Steady Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 110, 68741, 96226 }, -- Vivid Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 111, 52250, 73383 }, -- Zen Dream Emerald : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 116, 52124, 73277 }, -- Forceful Jasper : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 117, 52121, 73274 }, -- Jagged Jasper : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 118, 52125, 73278 }, -- Lightning Jasper : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 119, 52120, 73273 }, -- Nimble Jasper : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 120, 52122, 73275 }, -- Piercing Jasper : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 121, 52126, 73279 }, -- Puissant Jasper : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 122, 52119, 73272 }, -- Regal Jasper : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 123, 52128, 73281 }, -- Sensei's Jasper : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 124, 52123, 73276 }, -- Steady Jasper : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 125, 52127, 73280 }, -- Zen Jasper : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
			},
			[WOTLK_DIFF] = {
				{ 1,   40179, 66442 }, -- Energized Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,   40169, 66434 }, -- Forceful Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,   40165, 66431 }, -- Jagged Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,   40177, 66439 }, -- Lightning Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 5,   40171, 66435 }, -- Misty Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 6,   40166, 66429 }, -- Nimble Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 7,   40180, 66441 }, -- Radiant Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,   40167, 66338 }, -- Regal Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 9,   40182, 66443 }, -- Shattered Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 10,  40168, 66428 }, -- Steady Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 11,  40173, 66445 }, -- Turbid Eye of Zul : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 16,  40105, 54011 }, -- Energized Forest Emerald : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 17,  40091, 54001 }, -- Forceful Forest Emerald : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 18,  40086, 53996 }, -- Jagged Forest Emerald : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Frenzyheart Tribe"] - AtlasLoot["Revered"]
				{ 19,  40100, 54009 }, -- Lightning Forest Emerald : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 20,  40095, 54003 }, -- Misty Forest Emerald : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["The Oracles"] - AtlasLoot["Revered"]
				{ 21,  40088, 53997 }, -- Nimble Forest Emerald : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 22,  40098, 54012 }, -- Radiant Forest Emerald : =ds=#sr# 390 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["The Storm Peaks"]
				{ 23,  40089, 53998 }, -- Regal Forest Emerald : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 24,  40106, 54014 }, -- Shattered Forest Emerald : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 25,  40090, 54000 }, -- Steady Forest Emerald : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 26,  40102, 54005 }, -- Turbid Forest Emerald : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 101, 39983, 53925 }, -- Energized Dark Jade : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 102, 39978, 53920 }, -- Forceful Dark Jade : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 103, 39933, 53870 }, -- Jagged Dark Jade : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 104, 39981, 53923 }, -- Lightning Dark Jade : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 105, 39980, 53922 }, -- Misty Dark Jade : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 106, 39975, 53917 }, -- Nimble Dark Jade : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Oracles"] - AtlasLoot["Friendly"]
				{ 107, 39991, 53932 }, -- Radiant Dark Jade : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 108, 39976, 53918 }, -- Regal Dark Jade : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 109, 39992, 53933 }, -- Shattered Dark Jade : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 110, 39977, 53919 }, -- Steady Dark Jade : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 111, 39982, 53924 }, -- Turbid Dark Jade : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
			},
			[BC_DIFF] = {
				{ 1,  35759, 47053 }, -- Forceful Seaspray Emerald : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 2,  32226, 39742 }, -- Jagged Seaspray Emerald : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Honored"]
				{ 3,  32224, 39740 }, -- Radiant Seaspray Emerald : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Honored"]
				{ 4,  32223, 39739 }, -- Regal Seaspray Emerald : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 5,  35758, 47054 }, -- Steady Seaspray Emerald : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 7,  35318, 46405 }, -- Forceful Talasite : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 8,  24067, 31113 }, -- Jagged Talasite : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 9,  24066, 31111 }, -- Radiant Talasite : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 10, 35707, 46803 }, -- Regal Talasite : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 11, 33782, 43493 }, -- Steady Talasite : =ds=#sr# 350 : =ds=#sr# AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Nagrand"]
				{ 16, 23105, 28918 }, -- Regal Deep Peridot : =ds=#sr# 315 : =ds=AtlasLoot_IngameLocales["Honor Hold"] - AtlasLoot["Friendly"]
				--{ 16, 23105, 28918 },	-- Regal Deep Peridot : =ds=#sr# 315 : =ds=AtlasLoot_IngameLocales["Thrallmar"] - AtlasLoot["Friendly"] Horde version
				{ 17, 23104, 28917 }, -- Jagged Deep Peridot : =ds=#sr# 305 : =ds=AtlasLoot["Trainer"]
				{ 18, 23103, 28916 }, -- Radiant Deep Peridot : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelPurple
			name = AL["Purple Gems"],
			[TWW_DIFF] = {
				{ 1, 213489, 434545 }, -- Deadly Onyx
				{ 2, 213498, 434547 }, -- Masterful Onyx
				{ 3, 213492, 434546 }, -- Quick Onyx
				{ 4, 213495, 434548 }, -- Versatile Onyx
			},
			[LEGION_DIFF] = {
				{ 1, 151584, 247773 }, -- Masterful Argulite
			},
			[MOP_DIFF] = {
				{ 1,  89680, 130657 }, -- Assassin's Imperial Amethyst : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 2,  89674, 130658 }, -- Tense Imperial Amethyst : =ds=#sr# 600 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 3,  76681, 107693 }, -- Accurate Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 4,  76690, 107694 }, -- Defender's Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 5,  76684, 107695 }, -- Etched Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 6,  76680, 107696 }, -- Glinting Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 7,  76688, 107697 }, -- Guardian's Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 8,  76685, 107698 }, -- Mysterious Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 9,  76686, 107699 }, -- Purified Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 10, 76683, 107700 }, -- Retaliating Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 11, 76687, 107701 }, -- Shifting Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 12, 76691, 107702 }, -- Sovereign Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 13, 76689, 107703 }, -- Timeless Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 14, 76682, 107704 }, -- Veiled Imperial Amethyst : =ds=#sr# 550 : =ds=AtlasLoot["Discovery"]: spell131691
				{ 16, 76551, 107635 }, -- Retaliating Roguestone : =ds=#sr# 575 : =ds=AtlasLoot["Trainer"]
				{ 17, 89675, 130655 }, -- Tense Roguestone : =ds=#sr# 570 : =ds=AtlasLoot["Trainer"]
				{ 18, 76554, 107634 }, -- Purified Roguestone : =ds=#sr# 565 : =ds=AtlasLoot["Trainer"]
				{ 19, 76557, 107638 }, -- Timeless Roguestone : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 20, 76558, 107628 }, -- Defender's Roguestone : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 21, 76549, 107627 }, -- Accurate Roguestone : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 22, 76556, 107632 }, -- Guardian's Roguestone : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 23, 76548, 107631 }, -- Glinting Roguestone : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 24, 76555, 107636 }, -- Shifting Roguestone : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 25, 76559, 107637 }, -- Sovereign Roguestone : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 26, 89678, 130656 }, -- Assassin's Roguestone : =ds=#sr# 530 : =ds=AtlasLoot["Trainer"]
				{ 27, 76550, 107639 }, -- Veiled Roguestone : =ds=#sr# 530 : =ds=AtlasLoot["Trainer"]
				{ 28, 76552, 107630 }, -- Etched Roguestone : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 29, 76553, 107633 }, -- Mysterious Roguestone : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,   71863, 101784 }, -- Accurate Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 2,   71872, 101793 }, -- Defender's Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 3,   71866, 101787 }, -- Etched Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 4,   71862, 101783 }, -- Glinting Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 5,   71870, 101791 }, -- Guardian's Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 6,   71867, 101788 }, -- Mysterious Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 7,   71868, 101789 }, -- Purified Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 8,   71865, 101786 }, -- Retaliating Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 9,   71869, 101790 }, -- Shifting Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 10,  71873, 101794 }, -- Sovereign Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 11,  71871, 101792 }, -- Timeless Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 12,  71864, 101785 }, -- Veiled Shadow Spinel : =ds=#sr# 525 : #CATAJW:5#AtlasLoot["Vendor"]
				{ 16,  52203, 73360 }, -- Accurate Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 17,  52210, 73352 }, -- Defender's Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 18,  52213, 73356 }, -- Etched Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 19,  52220, 73357 }, -- Glinting Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 20,  52221, 73354 }, -- Guardian's Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 21,  52236, 73355 }, -- Purified Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 22,  52234, 73358 }, -- Retaliating Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 23,  52238, 73351 }, -- Shifting Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 24,  52243, 73350 }, -- Souvereign Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 25,  52248, 73353 }, -- Timeless Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 26,  52217, 73359 }, -- Veiled Demonseye : =ds=#sr# 465 : #CATAJW:3#AtlasLoot["Vendor"]
				{ 101, 52105, 73250 }, -- Accurate Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 102, 52097, 73242 }, -- Defender's Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 103, 52101, 73246 }, -- Etched Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 104, 52102, 73247 }, -- Glinting Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 105, 52099, 73244 }, -- Guardian's Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 106, 52100, 73245 }, -- Purified Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 107, 52103, 73248 }, -- Retaliating Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["World Drop"]
				{ 108, 52096, 73241 }, -- Shifting Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 109, 52095, 73240 }, -- Souvereign Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 110, 52098, 73243 }, -- Timeless Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 111, 52104, 73249 }, -- Veiled Nightstone : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,   40162, 66576 }, -- Accurate Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,   40139, 66560 }, -- Defender's Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,   40143, 66572 }, -- Etched Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,   40157, 66573 }, -- Glinting Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 5,   40141, 66561 }, -- Guardian's Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 6,   40135, 66562 }, -- Mysterious Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 7,   40133, 66556 }, -- Purified Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,   40130, 66557 }, -- Shifting Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 9,   40129, 66554 }, -- Sovereign Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 10,  40164, 66432 }, -- Timeless Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 11,  40153, 66570 }, -- Veiled Dreadstone : =ds=#sr# 450 : #DALARANJW:4#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 16,  40058, 53994 }, -- Accurate Twilight Opal : =ds=#sr# 390 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["The Storm Peaks"]
				{ 17,  40032, 53972 }, -- Defender's Twilight Opal : =ds=#sr# 390 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["The Storm Peaks"]
				{ 18,  40038, 53976 }, -- Etched Twilight Opal : =ds=#sr# 390 : =ds=AtlasLoot["World Drop"]
				{ 19,  40044, 53980 }, -- Glinting Twilight Opal : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 20,  40034, 53974 }, -- Guardian's Twilight Opal : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Argent Crusade"] - AtlasLoot["Revered"]
				{ 21,  40028, 53968 }, -- Mysterious Twilight Opal : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 22,  40026, 53966 }, -- Purified Twilight Opal : =ds=#sr# 390 : =ds=AtlasLoot["World Drop"]
				{ 23,  40023, 53963 }, -- Shifting Twilight Opal : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 24,  40022, 53962 }, -- Sovereign Twilight Opal : =ds=#sr# 390 : =ds=AtlasLoot["World Drop"]
				{ 25,  40025, 53965 }, -- Timeless Twilight Opal : =ds=#sr# 390 : =ds=AtlasLoot_IngameLocales["Knights of the Ebon Blade"] - AtlasLoot["Exalted"]
				{ 26,  40049, 53985 }, -- Veiled Twilight Opal : =ds=#sr# 390 : #DALARANJW:3#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 101, 39966, 53892 }, -- Accurate Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 102, 39939, 53869 }, -- Defender's Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Kalu'ak"] - AtlasLoot["Honored"]
				{ 103, 39948, 53873 }, -- Etched Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 104, 39942, 53861 }, -- Glinting Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 105, 39940, 53871 }, -- Guardian's Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 106, 39945, 53865 }, -- Mysterious Shadow Crystal : =ds=#sr# 350 : #DALARANJW:1#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 107, 39979, 53921 }, -- Purified Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Kalu'ak"] - AtlasLoot["Friendly"]
				{ 108, 39935, 53860 }, -- Shifting Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 109, 39934, 53859 }, -- Sovereign Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 110, 39968, 53894 }, -- Timeless Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 111, 39957, 53883 }, -- Veiled Shadow Crystal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  32220, 39736 }, -- Glinting Shadowsong Amethyst : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Honored"]
				{ 2,  32225, 39741 }, -- Purified Shadowsong Amethyst : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Honored"]
				{ 3,  32212, 39728 }, -- Shifting Shadowsong Amethyst : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 4,  32211, 39727 }, -- Sovereign Shadowsong Amethyst : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 5,  32215, 39731 }, -- Timeless Shadowsong Amethyst : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Honored"]
				{ 6,  32221, 39737 }, -- Veiled Shadowsong Amethyst : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Exalted"]
				{ 8,  24061, 31109 }, -- Glinting Nightseye : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 9,  24065, 31112 }, -- Purified Nightseye : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 10, 24055, 31103 }, -- Shifting Nightseye : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 11, 24054, 31102 }, -- Sovereign Nightseye : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 12, 24056, 31104 }, -- Timeless Nightseye : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 13, 31867, 39470 }, -- Veiled Nightseye : =ds=#sr# 350 : =ds=AtlasLoot["World Drop"]
				{ 14, 32836, 41429 }, -- Purified Shadow Pearl : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 16, 32833, 41420 }, -- Purified Jaggal Pearl : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 17, 23110, 28933 }, -- Shifting Shadow Draenite : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]
				{ 18, 23111, 28936 }, -- Sovereign Shadow Draenite : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 19, 31866, 39466 }, -- Veiled Shadow Draenite : =ds=#sr# 325 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Blade's Edge Mountains"]
				{ 20, 23100, 28914 }, -- Glinting Shadow Draenite : =ds=#sr# 315 : =ds=AtlasLoot["Trainer"]
				{ 21, 23109, 28927 }, -- Purified Shadow Draenite : =ds=#sr# 305 : =ds=AtlasLoot_IngameLocales["The Aldor"] / AtlasLoot_IngameLocales["The Scryers"] - AtlasLoot["Honored"]
				{ 22, 23108, 28925 }, -- Timeless Shadow Draenite : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelMeta
			name = AL["Meta Gems"],
			[TWW_DIFF] = {
				{ 1, 213741, 435318 },                             -- Culminating Blasphemite
				{ 2, 213738, 435230 },                             -- Insightful Blasphemite
				{ 3, 213744, 435319 },                             -- Elusive Blasphemite
				{ 4, 217113, 435392, [PRICE_EXTRA_ITTYPE] = "money:2500000" }, -- Cubic Blasphemia
				{ 6, 213748, 435321, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Cognitive Bloodstone
				{ 7, 213749, 435322, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Determined Bloodstone
				{ 8, 213747, 435320, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Enduring Bloodstone
			},
			[MOP_DIFF] = {
				{ 1,  76884, 107753 }, -- Agile Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 2,  76895, 107754 }, -- Austere Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 3,  76885, 107756 }, -- Burning Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 4,  76890, 107757 }, -- Destructive Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 5,  76897, 107758 }, -- Effulgent Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 6,  76879, 107759 }, -- Ember Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 7,  76892, 107760 }, -- Enigmatic Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 16, 76896, 107762 }, -- Eternal Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 17, 76887, 107763 }, -- Fleet Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 18, 76894, 107764 }, -- Forlorn Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 19, 76893, 107765 }, -- Impassive Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 20, 76891, 107766 }, -- Powerful Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 21, 76886, 107767 }, -- Reverberating Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
				{ 22, 76888, 107768 }, -- Revitalizing Primal Diamond : =ds=#sr# 575 : =ds=AtlasLoot["World Drop"]
			},
			[CATA_DIFF] = {
				{ 1,  68778, 96255 }, -- Agile Shadowspirit Diamond : =ds=#sr# 490 : =ds=AtlasLoot["World Drop"]
				{ 2,  52294, 73468 }, -- Austere Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 3,  52292, 73466 }, -- Bracing Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 4,  68780, 96257 }, -- Burning Shadowspirit Diamond : =ds=#sr# 490 : =ds=AtlasLoot["World Drop"]
				{ 5,  52291, 73465 }, -- Chaotic Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 6,  52298, 73472 }, -- Destructive Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 7,  52295, 73469 }, -- Efullgent Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 8,  52296, 73470 }, -- Ember Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 16, 52300, 73474 }, -- Enigmatic Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 17, 52293, 73467 }, -- Eternal Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 18, 52289, 73464 }, -- Fleet Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 19, 52302, 73476 }, -- Forlorn Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 20, 52301, 73475 }, -- Impassive Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 21, 52299, 73473 }, -- Powerful Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
				{ 22, 68779, 96256 }, -- Reverberating Shadowspirit Diamond : =ds=#sr# 490 : =ds=AtlasLoot["World Drop"]
				{ 23, 52297, 73471 }, -- Revitalizing Shadowspirit Diamond : =ds=#sr# 490 : #CATAJW:4#AtlasLoot["Vendor"]
			},
			[WOTLK_DIFF] = {
				{ 1,  41380, 55401 }, -- Austere Earthsiege Diamond : =ds=#sr# 420 : =ds=King Ymiron644
				{ 2,  41389, 55405 }, -- Beaming Earthsiege Diamond : =ds=#sr# 420 : =ds=AtlasLoot["World Drop"]
				{ 3,  41395, 55397 }, -- Bracing Earthsiege Diamond : =ds=#sr# 420 : =ds=Ley-Guardian Eregos625
				{ 4,  41396, 55398 }, -- Eternal Earthsiege Diamond : =ds=#sr# 420 : =ds=Loken600
				{ 5,  41401, 55396 }, -- Insightful Earthsiege Diamond : =ds=#sr# 420 : #DALARANJW:5#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 6,  41385, 55404 }, -- Invigorating Earthsiege Diamond : =ds=#sr# 420 : #DALARANJW:5#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 7,  41381, 55402 }, -- Persistant Earthsiege Diamond : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 8,  41397, 55399 }, -- Powerful Earthsiege Diamond : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 9,  41398, 55400 }, -- Relentless Earthsiege Diamond : =ds=#sr# 420 : #DALARANJW:5#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 10, 41382, 55403 }, -- Trenchant Earthsiege Diamond : =ds=#sr# 420 : #DALARANJW:5#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 16, 41285, 55389 }, -- Chaotic Skyflare Diamond : =ds=#sr# 420 : #DALARANJW:5#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 17, 41307, 55390 }, -- Destructive Skyflare Diamond : =ds=#sr# 420 : =ds=AtlasLoot["World Drop"]
				{ 18, 41333, 55392 }, -- Ember Skyflare Diamond : =ds=#sr# 420 : #DALARANJW:5#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 19, 41335, 55393 }, -- Enigmatic Skyflare Diamond : =ds=#sr# 420 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 20, 41378, 55387 }, -- Forlorn Skyflare Diamond : =ds=#sr# 420 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 21, 41379, 55388 }, -- Impassive Skyflare Diamond : =ds=#sr# 420 : =ds=AtlasLoot_IngameLocales["Wintergrasp"]
				{ 22, 41376, 55407 }, -- Revitalizing Skyflare Diamond : =ds=#sr# 420 : #DALARANJW:5#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 23, 41377, 55384 }, -- Shielded Skyflare Diamond : =ds=#sr# 420 : #DALARANJW:5#AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 24, 41339, 55394 }, -- Swift Skyflare Diamond : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 25, 41400, 55395 }, -- Thundering Skyflare Diamond : =ds=#sr# 420 : =ds=AtlasLoot["World Drop"]
				{ 26, 41375, 55386 }, -- Tireless Skyflare Diamond : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  35501, 46597 }, -- Eternal Earthstorm Diamond : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 2,  25897, 32867 }, -- Bracing Earthstorm Diamond : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Revered"]
				{ 3,  25899, 32869 }, -- Brutal Earthstorm Diamond : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
				{ 4,  25901, 32870 }, -- Insightful Earthstorm Diamond : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Friendly"]
				{ 5,  25896, 32866 }, -- Powerful Earthstorm Diamond : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Honored"]
				{ 6,  32409, 39961 }, -- Relentless Earthstorm Diamond : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Exalted"]
				{ 7,  25898, 32868 }, -- Tenacious Earthstorm Diamond : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
				{ 16, 35503, 46601 }, -- Ember Skyfire Diamond : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 17, 34220, 44794 }, -- Chaotic Skyfire Diamond : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Shadowmoon Valley"]
				{ 18, 25890, 32871 }, -- Destructive Skyfire Diamond : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
				{ 19, 25895, 32874 }, -- Enigmatic Skyfire Diamond : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["Keepers of Time"] - AtlasLoot["Honored"]
				{ 20, 25893, 32872 }, -- Mystical Skyfire Diamond : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
				{ 21, 25894, 32873 }, -- Swift Skyfire Diamond : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["The Consortium"] - AtlasLoot["Honored"]
				{ 22, 32410, 39963 }, -- Thundering Skyfire Diamond : =ds=#sr# 365 : =ds=AtlasLoot["World Drop"]
			},
		},
		{ --JewelTrinkets
			name = AL["Trinkets"],
			[CATA_DIFF] = {
				{ 1, 52199, 73640 }, -- Figurine - Demon Panther : =ds=#sr# 475 : =ds=#QUESTID:25047#
				{ 2, 52354, 73643 }, -- Figurine - Dream Owl : =ds=#sr# 475 : =ds=#QUESTID:28777#
				{ 3, 52352, 73641 }, -- Figurine - Earthen Guardian : =ds=#sr# 475 : =ds=#QUESTID:28776#
				{ 4, 52353, 73642 }, -- Figurine - Jeweled Serpent : =ds=#sr# 475 : =ds=#QUESTID:28775#
				{ 5, 52351, 73639 }, -- Figurine - King of Boars : =ds=#sr# 475 : =ds=#QUESTID:28778#
			},
			[WOTLK_DIFF] = {
				{ 1, 42418, 56203 }, -- Figurine - Emerald Boar : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 2, 44063, 59759 }, -- Figurine - Monarch Crab : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 3, 42341, 56199 }, -- Figurine - Ruby Hare : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 4, 42413, 56202 }, -- Figurine - Sapphire Owl : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 5, 42395, 56201 }, -- Figurine - Twilight Serpent : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  35700, 46777 }, -- Figurine - Crimson Serpent : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 2,  35693, 46775 }, -- Figurine - Empyrean Tortoise : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 3,  35694, 46776 }, -- Figurine - Khorium Boar : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 4,  35703, 46779 }, -- Figurine - Seaspray Albatross : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 5,  35702, 46778 }, -- Figurine - Shadowsong Panther : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Shattered Sun Offensive"] - AtlasLoot["Revered"]
				{ 6,  24125, 31080 }, -- Figurine - Dawnstone Crab : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Honor Hold"] / Thrallmar - AtlasLoot["Revered"]
				{ 7,  24124, 31079 }, -- Figurine - Felsteel Boar : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Lower City"] - AtlasLoot["Revered"]
				{ 8,  24126, 31081 }, -- Figurine - Living Ruby Serpent : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Keepers of Time"] - AtlasLoot["Revered"]
				{ 9,  24128, 31083 }, -- Figurine - Nightseye Panther : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Revered"]
				{ 10, 24127, 31082 }, -- Figurine - Talasite Owl : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Revered"]
			},
			[CLASSIC_DIFF] = {
				{ 1, 21784, 26912 }, -- Figurine - Black Diamond Crab : =ds=#sr# 300 : =ds=Quartermaster Zigris393
				{ 2, 21789, 26914 }, -- Figurine - Dark Iron Scorpid : =ds=#sr# 300 : =ds=Golem Lord Argelmach379
				{ 3, 21777, 26909 }, -- Figurine - Emerald Owl : =ds=#sr# 285 : =ds=AtlasLoot["World Drop"]
				{ 4, 21769, 26900 }, -- Figurine - Ruby Serpent : =ds=#sr# 260 : =ds=AtlasLoot["World Drop"]
				{ 5, 21763, 26882 }, -- Figurine - Truesilver Boar : =ds=#sr# 235 : =ds=AtlasLoot["World Drop"]
				{ 6, 21760, 26881 }, -- Figurine - Truesilver Crab : =ds=#sr# 225 : AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dustwallow Marsh"] / Northern Stranglethorn
				{ 7, 21758, 26875 }, -- Figurine - Black Pearl Panther : =ds=#sr# 215 : AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dustwallow Marsh"] / Swamp of Sorrows
				{ 8, 21756, 26873 }, -- Figurine - Golden Hare : =ds=#sr# 200 : =ds=AtlasLoot["World Drop"]
				{ 9, 21748, 26872 }, -- Figurine - Jade Owl : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --JewelHeadArmor
			name = HEADSLOT,
			[LEGION_DIFF] = {
				{ 1,  151587, 247751 }, -- Empyrial Cosmic Crown
				{ 2,  151587, 247754 }, -- Empyrial Cosmic Crown
				{ 3,  151587, 247755 }, -- Empyrial Cosmic Crown
				{ 5,  151588, 247756 }, -- Empyrial Deep Crown
				{ 6,  151588, 247757 }, -- Empyrial Deep Crown
				{ 7,  151588, 247758 }, -- Empyrial Deep Crown
				{ 9,  151589, 247762 }, -- Empyrial Elemental Crown
				{ 10, 151589, 247763 }, -- Empyrial Elemental Crown
				{ 11, 151589, 247764 }, -- Empyrial Elemental Crown
				{ 13, 151590, 247765 }, -- Empyrial Titan Crown
				{ 14, 151590, 247766 }, -- Empyrial Titan Crown
				{ 15, 151590, 247767 }, -- Empyrial Titan Crown
			},
		},
		{ -- Profession Equipment
			name = AL["Profession Equipment"],
			[TWW_DIFF] = {
				{ 1, 215121, 435373 },                          -- Incanter's Shard
				{ 2, 215120, 435371 },                          -- Radiant Loupes
				{ 3, 215119, 435375 },                          -- Right-Handed Magnifying Glass
				{ 4, 215117, 435377 },                          -- Storyteller's Glasses
				{ 5, 215125, 435374, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Enchanter's Crystal
				{ 6, 215124, 435372, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Extravagant Loupes
				{ 7, 215123, 435376, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Forger's Font Inspector
				{ 8, 215122, 435378, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Novelist's Specs
			},
		},
	}
}

data["Leatherworking"] = {
	name = C_Spell.GetSpellName(2108),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --LeatherLeatherArmor
			name = AL["Leather"].." "..AL["Armor"],
			[TWW_DIFF] = {
				{ 1,  219476, 443698 },                          -- Spelunker's Practiced Hat
				{ 2,  219479, 443699 },                          -- Spelunker's Practiced Britches
				{ 3,  219477, 443700 },                          -- Spelunker's Practiced Shoulders
				{ 4,  219478, 443697 },                          -- Spelunker's Practiced Mitts
				{ 5,  219480, 443701 },                          -- Spelunker's Practiced Sash
				{ 6,  219472, 443695 },                          -- Spelunker's Leather Jerkin
				{ 7,  219470, 443696 },                          -- Spelunker's Leather Footpads
				{ 8,  219471, 443702 },                          -- Spelunker's Leather Bands
				{ 9,  219334, 441058 },                          -- Rune-Branded Armbands
				{ 10, 219333, 441053 },                          -- Rune-Branded Grasps
				{ 11, 219329, 441054 },                          -- Rune-Branded Hood
				{ 12, 219327, 441052 },                          -- Rune-Branded Kickers
				{ 13, 219332, 441055 },                          -- Rune-Branded Legwraps
				{ 14, 219330, 441056 },                          -- Rune-Branded Mantle
				{ 15, 219328, 441051 },                          -- Rune-Branded Tunic
				{ 16, 219331, 441057 },                          -- Rune-Branded Waistband
				{ 17, 219489, 444071 },                          -- Waders of the Unifying Flame
				{ 18, 219512, 443951 },                          -- Weathered Stormfront Vest
				{ 19, 219502, 444070 },                          -- Adrenal Surge Clasp
				{ 20, 219513, 443950 },                          -- Roiling Thunderstrike Talons
				{ 21, 219511, 443949 },                          -- Rook Feather Wristwraps
				{ 22, 217130, 438902, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Belt
				{ 23, 217126, 438898, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Boots
				{ 24, 217127, 438899, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Chestpiece
				{ 25, 217132, 438904, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Gloves
				{ 26, 217128, 438900, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Mask
				{ 27, 217129, 438901, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Shoulderpads
				{ 28, 217131, 438903, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Trousers
				{ 29, 217133, 438905, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Leather Wristwraps
			},
			[BFA_DIFF] = {
				{ 1,   162468, 256767 }, -- Emblazoned Tempest Boots
				{ 16,  162470, 256770 }, -- Emblazoned Tempest Leggings

				{ 3,   162493, 256766 }, -- Imbued Tempest Boots
				{ 18,  162494, 256769 }, -- Imbued Tempest Leggings

				{ 5,   161946, 256765 }, -- Hardened Tempest Boots
				{ 20,  161947, 256768 }, -- Hardened Tempest Leggings

				{ 7,   154141, 256751 }, -- Coarse Leather Helm
				{ 8,   154143, 256754 }, -- Coarse Leather Pauldrons
				{ 9,   154138, 256749 }, -- Coarse Leather Vest
				{ 10,  154145, 256756 }, -- Coarse Leather Armguards
				{ 22,  154140, 256750 }, -- Coarse Leather Gauntlets
				{ 23,  154144, 256755 }, -- Coarse Leather Waistguard
				{ 24,  154142, 256752 }, -- Coarse Leather Leggings
				{ 25,  154139, 256748 }, -- Coarse Leather Treads

				{ 101, 159888, 269528 }, -- Honorable Combatant's Leather Armguards
				{ 102, 159888, 269529 }, -- Honorable Combatant's Leather Armguards
				{ 103, 159888, 269530 }, -- Honorable Combatant's Leather Armguards

				{ 105, 159885, 269519 }, -- Honorable Combatant's Leather Gauntlets
				{ 106, 159885, 269520 }, -- Honorable Combatant's Leather Gauntlets
				{ 107, 159885, 269521 }, -- Honorable Combatant's Leather Gauntlets

				{ 109, 159886, 269522 }, -- Honorable Combatant's Leather Leggings
				{ 110, 159886, 269523 }, -- Honorable Combatant's Leather Leggings
				{ 111, 159886, 269524 }, -- Honorable Combatant's Leather Leggings

				{ 116, 159884, 269516 }, -- Honorable Combatant's Leather Treads
				{ 117, 159884, 269517 }, -- Honorable Combatant's Leather Treads
				{ 118, 159884, 269518 }, -- Honorable Combatant's Leather Treads

				{ 120, 159887, 269525 }, -- Honorable Combatant's Leather Waistguard
				{ 121, 159887, 269526 }, -- Honorable Combatant's Leather Waistguard
				{ 122, 159887, 269527 }, -- Honorable Combatant's Leather Waistguard
			},
			[LEGION_DIFF] = {
				{ 1,   128891, 194719 }, -- Dreadleather Bindings
				{ 2,   128891, 194727 }, -- Dreadleather Bindings
				{ 3,   128891, 194787 }, -- Dreadleather Bindings
				{ 5,   128890, 194720 }, -- Dreadleather Belt
				{ 6,   128890, 194728 }, -- Dreadleather Belt
				{ 7,   128890, 194788 }, -- Dreadleather Belt
				{ 9,   128889, 194721 }, -- Dreadleather Shoulderguard
				{ 10,  128889, 194729 }, -- Dreadleather Shoulderguard
				{ 11,  128889, 194789 }, -- Dreadleather Shoulderguard
				{ 13,  128888, 194722 }, -- Dreadleather Pants
				{ 14,  128888, 194730 }, -- Dreadleather Pants
				{ 15,  128888, 194786 }, -- Dreadleather Pants
				{ 16,  128887, 194723 }, -- Dreadleather Mask
				{ 17,  128887, 194731 }, -- Dreadleather Mask
				{ 18,  128887, 194784 }, -- Dreadleather Mask
				{ 20,  128886, 194724 }, -- Dreadleather Gloves
				{ 21,  128886, 194732 }, -- Dreadleather Gloves
				{ 22,  128886, 194790 }, -- Dreadleather Gloves
				{ 24,  128885, 194725 }, -- Dreadleather Footpads
				{ 25,  128885, 194733 }, -- Dreadleather Footpads
				{ 26,  128885, 194785 }, -- Dreadleather Footpads
				{ 28,  128884, 194726 }, -- Dreadleather Jerkin
				{ 29,  128884, 194734 }, -- Dreadleather Jerkin
				{ 30,  128884, 194791 }, -- Dreadleather Jerkin
				{ 101, 128883, 194695 }, -- Warhide Bindings
				{ 102, 128883, 194703 }, -- Warhide Bindings
				{ 103, 128883, 194711 }, -- Warhide Bindings
				{ 105, 128882, 194696 }, -- Warhide Belt
				{ 106, 128882, 194704 }, -- Warhide Belt
				{ 107, 128882, 194716 }, -- Warhide Belt
				{ 109, 128881, 194697 }, -- Warhide Shoulderguard
				{ 110, 128881, 194705 }, -- Warhide Shoulderguard
				{ 111, 128881, 194717 }, -- Warhide Shoulderguard
				{ 113, 128880, 194698 }, -- Warhide Pants
				{ 114, 128880, 194706 }, -- Warhide Pants
				{ 115, 128880, 194712 }, -- Warhide Pants
				{ 116, 128879, 194699 }, -- Warhide Mask
				{ 117, 128879, 194707 }, -- Warhide Mask
				{ 118, 128879, 194713 }, -- Warhide Mask
				{ 120, 128878, 194700 }, -- Warhide Gloves
				{ 121, 128878, 194708 }, -- Warhide Gloves
				{ 122, 128878, 194714 }, -- Warhide Gloves
				{ 124, 128877, 194701 }, -- Warhide Footpads
				{ 125, 128877, 194709 }, -- Warhide Footpads
				{ 126, 128877, 194715 }, -- Warhide Footpads
				{ 128, 128876, 194702 }, -- Warhide Jerkin
				{ 129, 128876, 194710 }, -- Warhide Jerkin
				{ 130, 128876, 194718 }, -- Warhide Jerkin
				-- 7.3.0
				{ 201, 151577, 247800 }, -- Fiendish Shoulderguards
				{ 202, 151577, 247801 }, -- Fiendish Shoulderguards
				{ 203, 151577, 247802 }, -- Fiendish Shoulderguards

			},
			[WOD_DIFF] = {
				{ 1,   "116177:Stage6", 187513 },                        -- Supple Helm (Stage 6)
				{ 10,  "116177:Stage5", 187489 },                        -- Supple Helm (Stage 5)
				{ 19,  "116177:Stage4", 171286 },                        -- Supple Helm (Stage 4)
				{ 101, "116177:Stage3", 171286 },                        -- Supple Helm (Stage 3)
				{ 110, "116177:Stage2", 171286 },                        -- Supple Helm (Stage 2)
				{ 119, "116177:Stage1", 171271, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Supple Helm (Stage 1) (Sold, Ashran)

				{ 2,   "116176:Stage6", 187513 },                        -- Supple Shoulderguards (Stage 6)
				{ 11,  "116176:Stage5", 187489 },                        -- Supple Shoulderguards (Stage 5)
				{ 20,  "116176:Stage4", 171286 },                        -- Supple Shoulderguards (Stage 4)
				{ 102, "116176:Stage3", 171286 },                        -- Supple Shoulderguards (Stage 3)
				{ 111, "116176:Stage2", 171286 },                        -- Supple Shoulderguards (Stage 2)
				{ 120, "116176:Stage1", 171270, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Supple Shoulderguards (Stage 1) (Sold, Ashran)

				{ 3,   "116180:Stage6", 187513 },                        -- Supple Vest (Stage 6)
				{ 12,  "116180:Stage5", 187489 },                        -- Supple Vest (Stage 5)
				{ 21,  "116180:Stage4", 171286 },                        -- Supple Vest (Stage 4)
				{ 103, "116180:Stage3", 171286 },                        -- Supple Vest (Stage 3)
				{ 112, "116180:Stage2", 171286 },                        -- Supple Vest (Stage 2)
				{ 121, "116180:Stage1", 171274, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Supple Vest (Stage 1) (Sold, Ashran)

				{ 4,   "116181:Stage6", 187513 },                        -- Supple Bracers (Stage 6)
				{ 13,  "116181:Stage5", 187489 },                        -- Supple Bracers (Stage 5)
				{ 22,  "116181:Stage4", 171286 },                        -- Supple Bracers (Stage 4)
				{ 104, "116181:Stage3", 171286 },                        -- Supple Bracers (Stage 3)
				{ 113, "116181:Stage2", 171286 },                        -- Supple Bracers (Stage 2)
				{ 122, "116181:Stage1", 171275, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Supple Bracers (Stage 1) (Sold, Ashran)

				{ 5,   "116179:Stage6", 187513 },                        -- Supple Gloves (Stage 6)
				{ 14,  "116179:Stage5", 187489 },                        -- Supple Gloves (Stage 5)
				{ 23,  "116179:Stage4", 171286 },                        -- Supple Gloves (Stage 4)
				{ 105, "116179:Stage3", 171286 },                        -- Supple Gloves (Stage 3)
				{ 114, "116179:Stage2", 171286 },                        -- Supple Gloves (Stage 2)
				{ 123, "116179:Stage1", 171273, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Supple Gloves (Stage 1) (Sold, Ashran)

				{ 6,   "116183:Stage6", 187513 },                        -- Supple Waistguard (Stage 6)
				{ 15,  "116183:Stage5", 187489 },                        -- Supple Waistguard (Stage 5)
				{ 24,  "116183:Stage4", 171286 },                        -- Supple Waistguard (Stage 4)
				{ 106, "116183:Stage3", 171286 },                        -- Supple Waistguard (Stage 3)
				{ 115, "116183:Stage2", 171286 },                        -- Supple Waistguard (Stage 2)
				{ 124, "116183:Stage1", 171277, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Supple Waistguard (Stage 1) (Sold, Ashran)

				{ 7,   "116178:Stage6", 187513 },                        -- Supple Leggings (Stage 6)
				{ 16,  "116178:Stage5", 187489 },                        -- Supple Leggings (Stage 5)
				{ 25,  "116178:Stage4", 171286 },                        -- Supple Leggings (Stage 4)
				{ 107, "116178:Stage3", 171286 },                        -- Supple Leggings (Stage 3)
				{ 116, "116178:Stage2", 171286 },                        -- Supple Leggings (Stage 2)
				{ 125, "116178:Stage1", 171272, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Supple Leggings (Stage 1) (Sold, Ashran)

				{ 8,   "116182:Stage6", 187513 },                        -- Supple Boots (Stage 6)
				{ 17,  "116182:Stage5", 187489 },                        -- Supple Boots (Stage 5)
				{ 26,  "116182:Stage4", 171286 },                        -- Supple Boots (Stage 4)
				{ 108, "116182:Stage3", 171286 },                        -- Supple Boots (Stage 3)
				{ 117, "116182:Stage2", 171286 },                        -- Supple Boots (Stage 2)
				{ 126, "116182:Stage1", 171276, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Supple Boots (Stage 1) (Sold, Ashran)

				{ 128, 116164,          171260 },                        -- Journeying Helm (Learnt by item 115358)
				{ 129, 116165,          171261 },                        -- Journeying Robes (Learnt by item 115358)
				{ 130, 116166,          171262 },                        -- Journeying Slacks (Learnt by item 115358)
			},
			[MOP_DIFF] = {
				{ 1,   98609, 142961 },                                 -- Pennyroyal Belt : =ds=#s10#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 2,   98613, 142965 },                                 -- Snow Lily Belt : =ds=#s10#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 3,   98600, 142952 },                                 -- Pennyroyal Leggings : =ds=#s11#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 4,   98604, 142956 },                                 -- Snow Lily Britches : =ds=#s11#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 5,   85788, 124638 },                                 -- Chestguard of Nemeses : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 6,   85829, 124640 },                                 -- Nightfire Robe : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 7,   85827, 124641 },                                 -- Liferuned Leather Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 8,   85828, 124639 },                                 -- Murderer's Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 9,   85823, 124619 },                                 -- Greyshadow Chestguard : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 10,  85850, 124621 },                                 -- Wildblood Vest : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 11,  85824, 124620 },                                 -- Greyshadow Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 12,  85849, 124622 },                                 -- Wildblood Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 13,  98806, 143106 },                                 -- Crafted Malevolent Gladiator's Wyrmhide Helm : =ds=#s1#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 14,  98809, 143109 },                                 -- Crafted Malevolent Gladiator's Wyrmhide Spaulders : =ds=#s3#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 15,  98808, 143108 },                                 -- Crafted Malevolent Gladiator's Wyrmhide Robes : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 16,  98805, 143105 },                                 -- Crafted Malevolent Gladiator's Wyrmhide Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 17,  98807, 143107 },                                 -- Crafted Malevolent Gladiator's Wyrmhide Legguards : =ds=#s11#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 18,  98790, 143090 },                                 -- Crafted Malevolent Gladiator's Dragonhide Helm : =ds=#s1#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 19,  98793, 143093 },                                 -- Crafted Malevolent Gladiator's Dragonhide Spaulders : =ds=#s3#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 20,  98792, 143092 },                                 -- Crafted Malevolent Gladiator's Dragonhide Robes : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 21,  98789, 143089 },                                 -- Crafted Malevolent Gladiator's Dragonhide Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 22,  98791, 143091 },                                 -- Crafted Malevolent Gladiator's Dragonhide Legguards : =ds=#s11#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 23,  98798, 143098 },                                 -- Crafted Malevolent Gladiator's Kodohide Helm : =ds=#s1#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 24,  98801, 143101 },                                 -- Crafted Malevolent Gladiator's Kodohide Spaulders : =ds=#s3#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 25,  98800, 143100 },                                 -- Crafted Malevolent Gladiator's Kodohide Robes : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 26,  98797, 143097 },                                 -- Crafted Malevolent Gladiator's Kodohide Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 27,  98799, 143099 },                                 -- Crafted Malevolent Gladiator's Kodohide Legguards : =ds=#s11#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 28,  98839, 143119 },                                 -- Crafted Malevolent Gladiator's Copperskin Helm : =ds=#s1#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 29,  98841, 143121 },                                 -- Crafted Malevolent Gladiator's Copperskin Spaulders : =ds=#s3#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 30,  98842, 143122 },                                 -- Crafted Malevolent Gladiator's Copperskin Tunic : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 101, 98838, 143118 },                                 -- Crafted Malevolent Gladiator's Copperskin Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 102, 98840, 143120 },                                 -- Crafted Malevolent Gladiator's Copperskin Legguards : =ds=#s11#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 103, 98834, 143114 },                                 -- Crafted Malevolent Gladiator's Ironskin Helm : =ds=#s1#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 104, 98836, 143116 },                                 -- Crafted Malevolent Gladiator's Ironskin Spaulders : =ds=#s3#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 105, 98837, 143117 },                                 -- Crafted Malevolent Gladiator's Ironskin Tunic : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 106, 98833, 143113 },                                 -- Crafted Malevolent Gladiator's Ironskin Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 107, 98835, 143115 },                                 -- Crafted Malevolent Gladiator's Ironskin Legguards : =ds=#s11#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 108, 98886, 143128 },                                 -- Crafted Malevolent Gladiator's Leather Helm : =ds=#s1#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 109, 98888, 143130 },                                 -- Crafted Malevolent Gladiator's Leather Spaulders : =ds=#s3#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 110, 98884, 143126 },                                 -- Crafted Malevolent Gladiator's Leather Tunic : =ds=#s5#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 111, 98885, 143127 },                                 -- Crafted Malevolent Gladiator's Leather Gloves : =ds=#s9#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 112, 98887, 143129 },                                 -- Crafted Malevolent Gladiator's Leather Legguards : =ds=#s11#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 113, 98832, 143112 },                                 -- Crafted Malevolent Gladiator's Armwraps of Accuracy : =ds=#s8#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 114, 98883, 143125 },                                 -- Crafted Malevolent Gladiator's Armwraps of Alacrity : =ds=#s8#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 115, 98796, 143096 },                                 -- Crafted Malevolent Gladiator's Bindings of Meditation : =ds=#s8#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 116, 98804, 143104 },                                 -- Crafted Malevolent Gladiator's Bindings of Prowess : =ds=#s8#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 117, 98802, 143102 },                                 -- Crafted Malevolent Gladiator's Belt of Cruelty : =ds=#s10#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 118, 98794, 143094 },                                 -- Crafted Malevolent Gladiator's Belt of Meditation : =ds=#s10#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 119, 98881, 143123 },                                 -- Crafted Malevolent Gladiator's Waistband of Accuracy : =ds=#s10#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 120, 98830, 143110 },                                 -- Crafted Malevolent Gladiator's Waistband of Cruelty : =ds=#s10#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 121, 98831, 143111 },                                 -- Crafted Malevolent Gladiator's Boots of Alacrity : =ds=#s12#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 122, 98882, 143124 },                                 -- Crafted Malevolent Gladiator's Boots of Cruelty : =ds=#s12#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 123, 98803, 143103 },                                 -- Crafted Malevolent Gladiator's Footguards of Alacrity : =ds=#s12#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 124, 98795, 143095 },                                 -- Crafted Malevolent Gladiator's Footguards of Meditation : =ds=#s12#, #a2# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 125, 85802, 124603, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Leather Helm : =ds=#s1#, #a2# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 126, 85800, 124605, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Leather Chestguard : =ds=#s5#, #a2# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 127, 85818, 124587, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Wyrmhide Helm : =ds=#s1#, #a2# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 128, 85816, 124589, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Wyrmhide Chestguard : =ds=#s5#, #a2# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 129, 85804, 124604, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Leather Shoulders : =ds=#s3#, #a2# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 130, 85820, 124588, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Wyrmhide Shoulders : =ds=#s3#, #a2# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 201, 85801, 124606, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Leather Gloves : =ds=#s9#, #a2# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 202, 85797, 124610, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Leather Belt : =ds=#s10#, #a2# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 203, 85803, 124607, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Leather Leggings : =ds=#s11#, #a2# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 204, 85798, 124609, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Leather Boots : =ds=#s12#, #a2# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 205, 85817, 124590, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Wyrmhide Gloves : =ds=#s9#, #a2# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 206, 85813, 124594, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Wyrmhide Belt : =ds=#s10#, #a2# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 207, 85819, 124591, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Wyrmhide Leggings : =ds=#s11#, #a2# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 208, 85814, 124593, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Wyrmhide Boots : =ds=#s12#, #a2# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 209, 85835, 124573 },                                 -- Misthide Chestguard : =ds=#s5#, #a2# / =q1=#sk# 560 : =ds=AtlasLoot["Trainer"]
				{ 210, 85799, 124608, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Leather Bracers : =ds=#s8#, #a2# / =q1=#sk# 555 : =ds=AtlasLoot["Vendor"]
				{ 211, 85815, 124592, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Wyrmhide Bracers : =ds=#s8#, #a2# / =q1=#sk# 555 : =ds=AtlasLoot["Vendor"]
				{ 212, 85837, 124571 },                                 -- Misthide Helm : =ds=#s1#, #a2# / =q1=#sk# 555 : =ds=AtlasLoot["Trainer"]
				{ 213, 85838, 124575 },                                 -- Misthide Leggings : =ds=#s11#, #a2# / =q1=#sk# 550 : =ds=AtlasLoot["Trainer"]
				{ 214, 85836, 124574 },                                 -- Misthide Gloves : =ds=#s9#, #a2# / =q1=#sk# 545 : =ds=AtlasLoot["Trainer"]
				{ 215, 85839, 124572 },                                 -- Misthide Shoulders : =ds=#s3#, #a2# / =q1=#sk# 540 : =ds=AtlasLoot["Trainer"]
				{ 216, 85832, 124578 },                                 -- Misthide Belt : =ds=#s10#, #a2# / =q1=#sk# 535 : =ds=AtlasLoot["Trainer"]
				{ 217, 85834, 124576 },                                 -- Misthide Bracers : =ds=#s8#, #a2# / =q1=#sk# 530 : =ds=AtlasLoot["Trainer"]
				{ 218, 85833, 124577 },                                 -- Misthide Boots : =ds=#s12#, #a2# / =q1=#sk# 525 : =ds=AtlasLoot["Trainer"]
				{ 219, 94270, 138590 },                                 -- Quilen Hide Helm : =ds=#s1#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 220, 94274, 138594 },                                 -- Spirit Keeper Helm : =ds=#s1#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 221, 94269, 138589 },                                 -- Quilen Hide Boots : =ds=#s12#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 222, 94273, 138593 },                                 -- Spirit Keeper Footguards : =ds=#s12#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 223, 93476, 137826 },                                 -- Crafted Dreadful Gladiator's Wyrmhide Helm : =ds=#s1#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 224, 93479, 137829 },                                 -- Crafted Dreadful Gladiator's Wyrmhide Spaulders : =ds=#s3#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 225, 93478, 137828 },                                 -- Crafted Dreadful Gladiator's Wyrmhide Robes : =ds=#s5#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 226, 93475, 137825 },                                 -- Crafted Dreadful Gladiator's Wyrmhide Gloves : =ds=#s9#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 227, 93477, 137827 },                                 -- Crafted Dreadful Gladiator's Wyrmhide Legguards : =ds=#s11#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 228, 93459, 137810 },                                 -- Crafted Dreadful Gladiator's Dragonhide Helm : =ds=#s1#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 229, 93462, 137813 },                                 -- Crafted Dreadful Gladiator's Dragonhide Spaulders : =ds=#s3#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 230, 93461, 137812 },                                 -- Crafted Dreadful Gladiator's Dragonhide Robes : =ds=#s5#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 301, 93458, 137809 },                                 -- Crafted Dreadful Gladiator's Dragonhide Gloves : =ds=#s9#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 302, 93460, 137811 },                                 -- Crafted Dreadful Gladiator's Dragonhide Legguards : =ds=#s11#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 303, 93467, 137818 },                                 -- Crafted Dreadful Gladiator's Kodohide Helm : =ds=#s1#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 304, 93470, 137821 },                                 -- Crafted Dreadful Gladiator's Kodohide Spaulders : =ds=#s3#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 305, 93469, 137820 },                                 -- Crafted Dreadful Gladiator's Kodohide Robes : =ds=#s5#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 306, 93466, 137817 },                                 -- Crafted Dreadful Gladiator's Kodohide Gloves : =ds=#s9#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 307, 93468, 137819 },                                 -- Crafted Dreadful Gladiator's Kodohide Legguards : =ds=#s11#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 308, 93519, 137839 },                                 -- Crafted Dreadful Gladiator's Copperskin Helm : =ds=#s1#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 309, 93523, 137841 },                                 -- Crafted Dreadful Gladiator's Copperskin Spaulders : =ds=#s3#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 310, 93525, 137842 },                                 -- Crafted Dreadful Gladiator's Copperskin Tunic : =ds=#s5#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 311, 93517, 137838 },                                 -- Crafted Dreadful Gladiator's Copperskin Gloves : =ds=#s9#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 312, 93521, 137840 },                                 -- Crafted Dreadful Gladiator's Copperskin Legguards : =ds=#s11#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 313, 93509, 137834 },                                 -- Crafted Dreadful Gladiator's Ironskin Helm : =ds=#s1#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 314, 93513, 137836 },                                 -- Crafted Dreadful Gladiator's Ironskin Spaulders : =ds=#s3#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 315, 93515, 137837 },                                 -- Crafted Dreadful Gladiator's Ironskin Tunic : =ds=#s5#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 316, 93507, 137833 },                                 -- Crafted Dreadful Gladiator's Ironskin Gloves : =ds=#s9#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 317, 93511, 137835 },                                 -- Crafted Dreadful Gladiator's Ironskin Legguards : =ds=#s11#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 318, 93571, 137848 },                                 -- Crafted Dreadful Gladiator's Leather Helm : =ds=#s1#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 319, 93573, 137850 },                                 -- Crafted Dreadful Gladiator's Leather Spaulders : =ds=#s3#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 320, 93569, 137846 },                                 -- Crafted Dreadful Gladiator's Leather Tunic : =ds=#s5#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 321, 93570, 137847 },                                 -- Crafted Dreadful Gladiator's Leather Gloves : =ds=#s9#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 322, 93572, 137849 },                                 -- Crafted Dreadful Gladiator's Leather Legguards : =ds=#s11#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 323, 93506, 137832 },                                 -- Crafted Dreadful Gladiator's Armwraps of Accuracy : =ds=#s8#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 324, 93568, 137845 },                                 -- Crafted Dreadful Gladiator's Armwraps of Alacrity : =ds=#s8#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 325, 93506, 137816 },                                 -- Crafted Dreadful Gladiator's Bindings of Meditation : =ds=#s8#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 326, 93474, 137824 },                                 -- Crafted Dreadful Gladiator's Bindings of Prowess : =ds=#s8#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 327, 93472, 137822 },                                 -- Crafted Dreadful Gladiator's Belt of Cruelty : =ds=#s10#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 328, 93463, 137814 },                                 -- Crafted Dreadful Gladiator's Belt of Meditation : =ds=#s10#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 329, 93566, 137843 },                                 -- Crafted Dreadful Gladiator's Waistband of Accuracy : =ds=#s10#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 330, 93504, 137830 },                                 -- Crafted Dreadful Gladiator's Waistband of Cruelty : =ds=#s10#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 401, 93505, 137831 },                                 -- Crafted Dreadful Gladiator's Boots of Alacrity : =ds=#s12#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 402, 93567, 137844 },                                 -- Crafted Dreadful Gladiator's Boots of Cruelty : =ds=#s12#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 403, 93473, 137823 },                                 -- Crafted Dreadful Gladiator's Leather Footguards of Alacrity : =ds=#s12#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 404, 93464, 137815 },                                 -- Crafted Dreadful Gladiator's Leather Footguards of Meditation : =ds=#s12#, #a2# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140040
			},
			[CATA_DIFF] = {
				{ 1,   71994, 101940 }, -- Bladeshadow Wristguards : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 2,   71995, 101937 }, -- Bracers of Flowing Serenity : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 3,   71985, 101935 }, -- Bladeshadow Leggings : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 4,   71986, 101933 }, -- Leggings of Nature's Champion : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 5,   69942, 99446 }, -- Clutches of Evil : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 6,   69943, 99447 }, -- Heavenly Gloves of the Moon : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 7,   69952, 99458 }, -- Ethereal Footfalls : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 8,   69951, 99457 }, -- Treads of the Craft : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 9,   56562, 78488 }, -- Assassin's Chestplate : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 10,  56537, 78461 }, -- Belt of Nefarious Whispers : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 11,  56561, 78487 }, -- Chestguard of Nature's Fury : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 12,  56536, 78460 }, -- Lightning Lash : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 13,  75103, 78481 }, -- Vicious Leather Chest : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 14,  75112, 78482 }, -- Vicious Leather Legs : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 15,  75111, 78480 }, -- Vicious Wyrmhide Helm : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 16,  75080, 78479 }, -- Vicious Wyrmhide Legs : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 17,  75127, 78468 }, -- Vicious Leather Belt : =ds=#sr# 520 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 18,  75105, 78469 }, -- Vicious Leather Helm : =ds=#sr# 520 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 19,  75107, 78467 }, -- Vicious Wyrmhide Chest : =ds=#sr# 520 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 20,  75099, 78464 }, -- Vicious Wyrmhide Shoulders : =ds=#sr# 520 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 21,  75130, 78454 }, -- Vicious Leather Boots : =ds=#sr# 515 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 22,  75113, 78455 }, -- Vicious Leather Shoulders : =ds=#sr# 515 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 23,  75101, 78453 }, -- Vicious Wyrmhide Boots : =ds=#sr# 515 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 24,  75109, 78452 }, -- Vicious Wyrmhide Gloves : =ds=#sr# 515 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 25,  75131, 78446 }, -- Vicious Leather Bracers : =ds=#sr# 510 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 26,  75104, 78447 }, -- Vicious Leather Gloves : =ds=#sr# 510 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 27,  75117, 78445 }, -- Vicious Wyrmhide Belt : =ds=#sr# 510 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 28,  75106, 78444 }, -- Vicious Wyrmhide Bracers : =ds=#sr# 510 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 29,  56505, 78424 }, -- Darkbrand Helm : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 30,  56513, 78433 }, -- Darkbrand Leggings : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 101, 56509, 78428 }, -- Darkbrand Chestguard : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 102, 56484, 78399 }, -- Darkbrand Gloves : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 103, 56495, 78411 }, -- Darkbrand Shoulders : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 104, 56491, 78407 }, -- Darkbrand Boots : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 105, 56499, 78416 }, -- Darkbrand Belt : =ds=#sr# 455 : =ds=AtlasLoot["Trainer"]
				{ 106, 56483, 78398 }, -- Darkbrand Bracers : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,   49899,                                      70556 },                       -- Bladeborn Leggings : =ds=AtlasLoot["Vendor"] : nil
				{ 2,   49894,                                      70555 },                       -- Blessed Cenarion Boots : =ds=AtlasLoot["Vendor"] : nil
				{ 3,   49895,                                      70557 },                       -- Footpads of Impending Death : =ds=AtlasLoot["Vendor"] : nil
				{ 4,   49898,                                      70554 },                       -- Legwraps of Unleashed Nature : =ds=AtlasLoot["Vendor"] : nil
				{ 5,   [ATLASLOOT_IT_ALLIANCE] = { 47599, 67086 }, [ATLASLOOT_IT_HORDE] = { 47600, 67142 } }, -- Knightbane Carapace : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 6,   [ATLASLOOT_IT_ALLIANCE] = { 47602, 67084 }, [ATLASLOOT_IT_HORDE] = { 47601, 67140 } }, -- Lunar Eclipse Chestguard : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 7,   [ATLASLOOT_IT_ALLIANCE] = { 47581, 67087 }, [ATLASLOOT_IT_HORDE] = { 47582, 67139 } }, -- Bracers of Swift Death : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 8,   [ATLASLOOT_IT_ALLIANCE] = { 47583, 67085 }, [ATLASLOOT_IT_HORDE] = { 47584, 67141 } }, -- Moonshadow Armguards : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 9,   45556,                                      63200 },                       -- Belt of Arctic Life : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 10,  45565,                                      63201 },                       -- Boots of Wintry Endurance : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 11,  45555,                                      63198 },                       -- Death-warmed Belt : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 12,  45564,                                      63199 },                       -- Footpads of Silence : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 13,  43495,                                      60760 },                       -- Earthgiving Legguards : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 14,  43502,                                      60761 },                       -- Earthgiving Boots : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 15,  43481,                                      60758 },                       -- Trollwoven Spaulders : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 16,  43484,                                      60759 },                       -- Trollwoven Girdle : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 17,  43590,                                      60996 },                       -- Polar Vest : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 18,  43591,                                      60997 },                       -- Polar Cord : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 19,  43592,                                      60998 },                       -- Polar Boots : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 20,  44930,                                      62176 },                       -- Windripper Boots : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 21,  44931,                                      62177 },                       -- Windripper Leggings : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 22,  43260,                                      60697 },                       -- Eviscerator's Facemask : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 23,  43433,                                      60702 },                       -- Eviscerator's Shoulderpads : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 24,  43434,                                      60703 },                       -- Eviscerator's Chestguard : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 25,  43435,                                      60704 },                       -- Eviscerator's Bindings : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 26,  43436,                                      60705 },                       -- Eviscerator's Gauntlets : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 27,  43437,                                      60706 },                       -- Eviscerator's Waistguard : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 28,  43438,                                      60711 },                       -- Eviscerator's Legguards : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 29,  43439,                                      60712 },                       -- Eviscerator's Treads : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 30,  43261,                                      60715 },                       -- Overcast Headguard : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 101, 43262,                                      60716 },                       -- Overcast Spaulders : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 102, 43263,                                      60718 },                       -- Overcast Chestguard : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 103, 43264,                                      60720 },                       -- Overcast Bracers : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 104, 43265,                                      60721 },                       -- Overcast Handwraps : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 105, 43266,                                      60723 },                       -- Overcast Belt : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 106, 43271,                                      60725 },                       -- Overcast Leggings : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 107, 43273,                                      60727 },                       -- Overcast Boots : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 108, 43257,                                      60669 },                       -- Wildscale Breastplate : =ds=AtlasLoot["Trainer"] : nil
				{ 109, 42731,                                      60660 },                       -- Leggings of Visceral Strikes : =ds=AtlasLoot["Trainer"] : nil
				{ 110, 43258,                                      60671 },                       -- Purehorn Spaulders : =ds=AtlasLoot["Trainer"] : nil
				{ 111, 43255,                                      60665 },                       -- Seafoam Gauntlets : =ds=AtlasLoot["Trainer"] : nil
				{ 112, 43256,                                      60666 },                       -- Jormscale Footpads : =ds=AtlasLoot["Trainer"] : nil
				{ 113, 38590,                                      51568 },                       -- Black Chitinguard Boots : =ds=AtlasLoot["Trainer"] : nil
				{ 114, 44442,                                      60620 },                       -- Bugsquashers : =ds=AtlasLoot["Trainer"] : nil
				{ 115, 38592,                                      51570 },                       -- Dark Arctic Chestpiece : =ds=AtlasLoot["Trainer"] : nil
				{ 116, 38591,                                      51569 },                       -- Dark Arctic Leggings : =ds=AtlasLoot["Trainer"] : nil
				{ 117, 44441,                                      60613 },                       -- Dark Iceborne Chestguard : =ds=AtlasLoot["Trainer"] : nil
				{ 118, 44440,                                      60611 },                       -- Dark Iceborne Leggings : =ds=AtlasLoot["Trainer"] : nil
				{ 119, 38437,                                      51572 },                       -- Arctic Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 120, 38402,                                      50946 },                       -- Arctic Shoulderpads : =ds=AtlasLoot["Trainer"] : nil
				{ 121, 38400,                                      50944 },                       -- Arctic Chestpiece : =ds=AtlasLoot["Trainer"] : nil
				{ 122, 38433,                                      51571 },                       -- Arctic Wristguards : =ds=AtlasLoot["Trainer"] : nil
				{ 123, 38403,                                      50947 },                       -- Arctic Gloves : =ds=AtlasLoot["Trainer"] : nil
				{ 124, 38405,                                      50949 },                       -- Arctic Belt : =ds=AtlasLoot["Trainer"] : nil
				{ 125, 38401,                                      50945 },                       -- Arctic Leggings : =ds=AtlasLoot["Trainer"] : nil
				{ 126, 38404,                                      50948 },                       -- Arctic Boots : =ds=AtlasLoot["Trainer"] : nil
				{ 127, 38438,                                      60608 },                       -- Iceborne Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 128, 38411,                                      50940 },                       -- Iceborne Shoulderpads : =ds=AtlasLoot["Trainer"] : nil
				{ 129, 38408,                                      50938 },                       -- Iceborne Chestguard : =ds=AtlasLoot["Trainer"] : nil
				{ 130, 38434,                                      60607 },                       -- Iceborne Wristguards : =ds=AtlasLoot["Trainer"] : nil
				{ 201, 38409,                                      50941 },                       -- Iceborne Gloves : =ds=AtlasLoot["Trainer"] : nil
				{ 202, 38406,                                      50943 },                       -- Iceborne Belt : =ds=AtlasLoot["Trainer"] : nil
				{ 203, 38410,                                      50939 },                       -- Iceborne Leggings : =ds=AtlasLoot["Trainer"] : nil
				{ 204, 38407,                                      50942 },                       -- Iceborne Boots : =ds=AtlasLoot["Trainer"] : nil
			},
			[BC_DIFF] = {
				{ 1,   30040,                        36351 }, -- Belt of Deep Shadow : =ds=#sr# 375 : nil
				{ 2,   30042,                        36349 }, -- Belt of Natural Power : =ds=#sr# 375 : nil
				{ 3,   30041,                        36355 }, -- Boots of Natural Grace : =ds=#sr# 375 : nil
				{ 4,   30039,                        36357 }, -- Boots of Utter Darkness : =ds=#sr# 375 : nil
				{ 5,   32582,                        41156 }, -- Bracers of Renewed Life : =ds=#sr# 375 : nil
				{ 6,   29526,                        35590 }, -- Primalstrike Belt : =ds=#sr# 375 : nil
				{ 7,   29527,                        35591 }, -- Primalstrike Bracers : =ds=#sr# 375 : nil
				{ 8,   29525,                        35589 }, -- Primalstrike Vest : =ds=#sr# 375 : nil
				{ 9,   32393,                        40006 }, -- Redeemed Soul Cinch : =ds=#sr# 375 : nil
				{ 10,  32396,                        40005 }, -- Redeemed Soul Legguards : =ds=#sr# 375 : nil
				{ 11,  32394,                        40003 }, -- Redeemed Soul Moccasins : =ds=#sr# 375 : nil
				{ 12,  32395,                        40004 }, -- Redeemed Soul Wristguards : =ds=#sr# 375 : nil
				{ 13,  32583,                        41157 }, -- Shoulderpads of Renewed Life : =ds=#sr# 375 : nil
				{ 14,  32580,                        41158 }, -- Swiftstrike Bracers : =ds=#sr# 375 : nil
				{ 15,  32581,                        41160 }, -- Swiftstrike Shoulders : =ds=#sr# 375 : nil
				{ 16,  29524,                        35587 }, -- Windhawk Belt : =ds=#sr# 375 : nil
				{ 17,  29523,                        35588 }, -- Windhawk Bracers : =ds=#sr# 375 : nil
				{ 18,  29522,                        35585 }, -- Windhawk Hauberk : =ds=#sr# 375 : nil
				{ 19,  34369,                        46138 }, -- Carapace of Sun and Shadow : =ds=#sr# 365 : nil
				{ 20,  29503,                        35559 }, -- Cobrascale Gloves : =ds=#sr# 365 : nil
				{ 21,  29502,                        35558 }, -- Cobrascale Hood : =ds=#sr# 365 : nil
				{ 22,  34370,                        46134 }, -- Gloves of Immortal Dusk : =ds=#sr# 365 : nil
				{ 23,  29506,                        35562 }, -- Gloves of the Living Touch : =ds=#sr# 365 : nil
				{ 24,  29505,                        35561 }, -- Hood of Primal Life : =ds=#sr# 365 : nil
				{ 25,  34371,                        46136 }, -- Leather Chestguard of the Sun : =ds=#sr# 365 : nil
				{ 26,  34372,                        46132 }, -- Leather Gauntlets of the Sun : =ds=#sr# 365 : nil
				{ 27,  33204,                        42731 }, -- Shadowprowler's Chestguard : =ds=#sr# 365 : nil
				{ 28,  29504,                        35560 }, -- Windscale Hood : =ds=#sr# 365 : nil
				{ 29,  29507,                        35563 }, -- Windslayer Wraps : =ds=#sr# 365 : nil
				{ 30,  25689,                        32495 }, -- Heavy Clefthoof Vest : =ds=#sr# 360 : nil
				{ 101, 25691,                        32497 }, -- Heavy Clefthoof Boots : =ds=#sr# 355 : nil
				{ 102, 25690,                        32496 }, -- Heavy Clefthoof Leggings : =ds=#sr# 355 : nil
				{ 103, 29500,                        35537 }, -- Blastguard Belt : =ds=#sr# 350 : nil
				{ 104, 29499,                        35536 }, -- Blastguard Boots : =ds=#sr# 350 : nil
				{ 105, 29498,                        35535 }, -- Blastguard Pants : =ds=#sr# 350 : nil
				{ 106, 29497,                        35534 }, -- Enchanted Clefthoof Boots : =ds=#sr# 350 : nil
				{ 107, 29496,                        35533 }, -- Enchanted Clefthoof Gloves : =ds=#sr# 350 : nil
				{ 108, 29495,                        35532 }, -- Enchanted Clefthoof Leggings : =ds=#sr# 350 : nil
				{ 109, 25686,                        32493 }, -- Fel Leather Boots : =ds=#sr# 350 : nil
				{ 110, 25687,                        32494 }, -- Fel Leather Leggings : =ds=#sr# 350 : nil
				{ 111, 25682,                        32489 }, -- Stylin' Jungle Hat : =ds=#sr# 350 : nil
				{ 112, 25680,                        32485 }, -- Stylin' Purple Hat : =ds=#sr# 350 : nil
				{ 113, 25685,                        32490 }, -- Fel Leather Gloves : =ds=#sr# 340 : nil
				{ 114, 29974,                        36078 }, -- Living Crystal Breastplate : =ds=#sr# 330 : nil
				{ 115, 29973,                        36077 }, -- Primalstorm Breastplate : =ds=#sr# 330 : nil
				{ 116, 25671,                        32473 }, -- Thick Draenic Vest : =ds=#sr# 330 : nil
				{ 117, 25676,                        32481 }, -- Wild Draenish Vest : =ds=#sr# 330 : nil
				{ 118, 25668,                        32472 }, -- Thick Draenic Boots : =ds=#sr# 320 : nil
				{ 119, 25675,                        32480 }, -- Wild Draenish Leggings : =ds=#sr# 320 : nil
				{ 120, 25670,                        32471 }, -- Thick Draenic Pants : =ds=#sr# 315 : nil
				{ 121, 25674,                        32479 }, -- Wild Draenish Gloves : =ds=#sr# 310 : nil
				{ 122, 25669,                        32470 }, -- Thick Draenic Gloves : =ds=#sr# 300 : nil
				{ 123, 25673,                        32478 }, -- Wild Draenish Boots : =ds=#sr# 300 : nil
				{ 201, "ICON_spell_fire_volcano",    nil,  GetSpellInfo(10658), nil },
				{ 202, 29525,                        35589 }, -- Primalstrike Vest : =ds=#sr# 375 : No longer available
				{ 203, 29527,                        35591 }, -- Primalstrike Bracers : =ds=#sr# 375 : No longer available
				{ 204, 29526,                        35590 }, -- Primalstrike Belt : =ds=#sr# 375 : No longer available
				{ 206, "ICON_spell_nature_nullward", nil,  GetSpellInfo(10660), nil },
				{ 207, 29522,                        35585 }, -- Windhawk Hauberk : =ds=#sr# 375 : No longer available
				{ 208, 29523,                        35588 }, -- Windhawk Bracers : =ds=#sr# 375 : No longer available
				{ 209, 29524,                        35587 }, -- Windhawk Belt : =ds=#sr# 375 : No longer available
			},
			[CLASSIC_DIFF] = {
				{ 1,   19162, 23709 }, -- Corehound Belt : =ds=#sr# 300 : nil
				{ 2,   18510, 22927 }, -- Hide of the Wild : =ds=#sr# 300 : nil
				{ 3,   19149, 23707 }, -- Lava Belt : =ds=#sr# 300 : nil
				{ 4,   19163, 23710 }, -- Molten Belt : =ds=#sr# 300 : nil
				{ 5,   16983, 20854 }, -- Molten Helm : =ds=#sr# 300 : nil
				{ 6,   22663, 28221 }, -- Polar Bracers : =ds=#sr# 300 : nil
				{ 7,   22662, 28220 }, -- Polar Gloves : =ds=#sr# 300 : nil
				{ 8,   22661, 28219 }, -- Polar Tunic : =ds=#sr# 300 : nil
				{ 9,   19688, 24124 }, -- Blood Tiger Breastplate : =ds=#sr# 300 : nil
				{ 10,  19689, 24125 }, -- Blood Tiger Shoulders : =ds=#sr# 300 : nil
				{ 11,  22761, 28474 }, -- Bramblewood Belt : =ds=#sr# 300 : nil
				{ 12,  22760, 28473 }, -- Bramblewood Boots : =ds=#sr# 300 : nil
				{ 13,  22759, 28472 }, -- Bramblewood Helm : =ds=#sr# 300 : nil
				{ 14,  15062, 19097 }, -- Devilsaur Leggings : =ds=#sr# 300 : nil
				{ 15,  18504, 22921 }, -- Girdle of Insight : =ds=#sr# 300 : nil
				{ 16,  19058, 23706 }, -- Golden Mantle of the Dawn : =ds=#sr# 300 : nil
				{ 17,  15059, 19095 }, -- Living Breastplate : =ds=#sr# 300 : nil
				{ 18,  18506, 22922 }, -- Mongoose Boots : =ds=#sr# 300 : nil
				{ 19,  19687, 24123 }, -- Primal Batskin Bracers : =ds=#sr# 300 : nil
				{ 20,  19686, 24122 }, -- Primal Batskin Gloves : =ds=#sr# 300 : nil
				{ 21,  19685, 24121 }, -- Primal Batskin Jerkin : =ds=#sr# 300 : nil
				{ 22,  21278, 26279 }, -- Stormshroud Gloves : =ds=#sr# 300 : nil
				{ 23,  19049, 23704 }, -- Timbermaw Brawlers : =ds=#sr# 300 : nil
				{ 24,  15068, 19104 }, -- Frostsaber Tunic : =ds=#sr# 300 : nil
				{ 25,  15090, 19102 }, -- Runic Leather Armor : =ds=#sr# 300 : nil
				{ 26,  15095, 19091 }, -- Runic Leather Pants : =ds=#sr# 300 : nil
				{ 27,  15096, 19103 }, -- Runic Leather Shoulders : =ds=#sr# 300 : nil
				{ 28,  15055, 19101 }, -- Volcanic Shoulders : =ds=#sr# 300 : nil
				{ 29,  15085, 19098 }, -- Wicked Leather Armor : =ds=#sr# 300 : nil
				{ 30,  15088, 19092 }, -- Wicked Leather Belt : =ds=#sr# 300 : nil
				{ 101, 16982, 20853 }, -- Corehound Boots : =ds=#sr# 295 : nil
				{ 102, 15058, 19090 }, -- Stormshroud Shoulders : =ds=#sr# 295 : nil
				{ 103, 15070, 19087 }, -- Frostsaber Gloves : =ds=#sr# 295 : nil
				{ 104, 19052, 23705 }, -- Dawn Treaders : =ds=#sr# 290 : nil
				{ 105, 15063, 19084 }, -- Devilsaur Gauntlets : =ds=#sr# 290 : nil
				{ 106, 15066, 19086 }, -- Ironfeather Breastplate : =ds=#sr# 290 : nil
				{ 107, 19044, 23703 }, -- Might of the Timbermaw : =ds=#sr# 290 : nil
				{ 108, 15075, 19081 }, -- Chimeric Vest : =ds=#sr# 290 : nil
				{ 109, 15094, 19082 }, -- Runic Leather Headband : =ds=#sr# 290 : nil
				{ 110, 15087, 19083 }, -- Wicked Leather Pants : =ds=#sr# 290 : nil
				{ 111, 15060, 19078 }, -- Living Leggings : =ds=#sr# 285 : nil
				{ 112, 15056, 19079 }, -- Stormshroud Armor : =ds=#sr# 285 : nil
				{ 113, 15065, 19080 }, -- Warbear Woolies : =ds=#sr# 285 : nil
				{ 114, 15069, 19074 }, -- Frostsaber Leggings : =ds=#sr# 285 : nil
				{ 115, 15053, 19076 }, -- Volcanic Breastplate : =ds=#sr# 285 : nil
				{ 116, 34086, 44953 }, -- Winter Boots : =ds=#sr# 285 : =ds=AtlasLoot["Feast of Winter Veil"]
				{ 117, 15072, 19073 }, -- Chimeric Leggings : =ds=#sr# 280 : =ds=AtlasLoot["World Drop"]
				{ 118, 15093, 19072 }, -- Runic Leather Belt : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 119, 15086, 19071 }, -- Wicked Leather Headband : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 120, 15057, 19067 }, -- Stormshroud Pants : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]
				{ 121, 15064, 19068 }, -- Warbear Harness : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]
				{ 122, 15073, 19063 }, -- Chimeric Boots : =ds=#sr# 275 : =ds=AtlasLoot["World Drop"]
				{ 123, 15092, 19065 }, -- Runic Leather Bracers : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 124, 15071, 19066 }, -- Frostsaber Boots : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]
				{ 125, 15067, 19062 }, -- Ironfeather Shoulders : =ds=#sr# 270 : =ds=AtlasLoot["Vendor"]
				{ 126, 15061, 19061 }, -- Living Shoulders : =ds=#sr# 270 : =ds=AtlasLoot["Vendor"]
				{ 127, 15091, 19055 }, -- Runic Leather Gauntlets : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 128, 15054, 19059 }, -- Volcanic Leggings : =ds=#sr# 270 : =ds=AtlasLoot["Drop"]
				{ 129, 15074, 19053 }, -- Chimeric Gloves : =ds=#sr# 265 : =ds=???
				{ 130, 15084, 19052 }, -- Wicked Leather Bracers : =ds=#sr# 265 : =ds=AtlasLoot["Trainer"]
				{ 201, 29964, 36074 }, -- Blackstorm Leggings : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 202, 29970, 36075 }, -- Wildfeather Leggings : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 203, 15083, 19049 }, -- Wicked Leather Gauntlets : =ds=#sr# 260 : =ds=AtlasLoot["Vendor"]
				{ 204, 8349,  10647 }, -- Feathered Breastplate : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 205, 8348,  10632 }, -- Helm of Fire : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 206, 8212,  10572 }, -- Wild Leather Leggings : =ds=#sr# 250 : No longer available
				{ 207, 8213,  10566 }, -- Wild Leather Boots : =ds=#sr# 245 : No longer available
				{ 208, 8202,  10560 }, -- Big Voodoo Pants : =ds=#sr# 240 : =ds=AtlasLoot["World Drop"]
				{ 209, 8197,  10558 }, -- Nightscape Boots : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 210, 8346,  10630 }, -- Gauntlets of the Sea : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 211, 8193,  10548 }, -- Nightscape Pants : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 212, 8345,  10621 }, -- Wolfshead Helm : =ds=#sr# 225 : nil
				{ 213, 8214,  10546 }, -- Wild Leather Helmet : =ds=#sr# 225 : No longer available
				{ 214, 8211,  10544 }, -- Wild Leather Vest : =ds=#sr# 225 : No longer available
				{ 215, 8201,  10531 }, -- Big Voodoo Mask : =ds=#sr# 220 : =ds=AtlasLoot["World Drop"]
				{ 216, 8210,  10529 }, -- Wild Leather Shoulders : =ds=#sr# 220 : No longer available
				{ 217, 8200,  10520 }, -- Big Voodoo Robe : =ds=#sr# 215 : =ds=AtlasLoot["World Drop"]
				{ 218, 8192,  10516 }, -- Nightscape Shoulders : =ds=#sr# 210 : =ds=AtlasLoot["Vendor"]
				{ 219, 8176,  10507 }, -- Nightscape Headband : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 220, 8175,  10499 }, -- Nightscape Tunic : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 221, 8174,  10490 }, -- Comfortable Leather Hat : =ds=#sr# 200 : =ds=AtlasLoot["World Drop"]
				{ 222, 4264,  3779 }, -- Barbaric Belt : =ds=#sr# 200 : =ds=AtlasLoot["World Drop"]
				{ 223, 7390,  9207 }, -- Dusky Boots : =ds=#sr# 200 : =ds=AtlasLoot["World Drop"]
				{ 224, 18238, 22711 }, -- Shadowskin Gloves : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]
				{ 225, 7391,  9208 }, -- Swift Boots : =ds=#sr# 200 : =ds=AtlasLoot["World Drop"]
				{ 226, 7387,  9206 }, -- Dusky Belt : =ds=#sr# 195 : =ds=AtlasLoot["Trainer"]
				{ 227, 4260,  3777 }, -- Guardian Leather Bracers : =ds=#sr# 195 : =ds=AtlasLoot["World Drop"]
				{ 228, 17721, 21943 }, -- Gloves of the Greatfather : =ds=#sr# 190 : =ds=AtlasLoot["Feast of Winter Veil"]
				{ 229, 7386,  9202 }, -- Green Whelp Bracers : =ds=#sr# 190 : =ds=AtlasLoot["Vendor"]
				{ 230, 5783,  6705 }, -- Murloc Scale Bracers : =ds=#sr# 190 : =ds=AtlasLoot["Vendor"]
				{ 301, 5739,  6661 }, -- Barbaric Harness : =ds=#sr# 190 : =ds=AtlasLoot["Trainer"]
				{ 302, 5966,  7156 }, -- Guardian Gloves : =ds=#sr# 190 : =ds=AtlasLoot["Trainer"]
				{ 303, 4262,  3778 }, -- Gem-studded Leather Belt : =ds=#sr# 185 : =ds=AtlasLoot["Vendor"]
				{ 304, 7378,  9201 }, -- Dusky Bracers : =ds=#sr# 185 : =ds=AtlasLoot["Trainer"]
				{ 305, 4259,  3776 }, -- Green Leather Bracers : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
				{ 306, 5964,  7151 }, -- Barbaric Shoulders : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 307, 7374,  9196 }, -- Dusky Leather Armor : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 308, 7375,  9197 }, -- Green Whelp Armor : =ds=#sr# 175 : =ds=AtlasLoot["World Drop"]
				{ 309, 4256,  3773 }, -- Guardian Armor : =ds=#sr# 175 : =ds=AtlasLoot["World Drop"]
				{ 310, 5963,  7149 }, -- Barbaric Leggings : =ds=#sr# 170 : =ds=AtlasLoot["Vendor"]
				{ 311, 4258,  3775 }, -- Guardian Belt : =ds=#sr# 170 : =ds=AtlasLoot["World Drop"]
				{ 312, 5782,  6704 }, -- Thick Murloc Armor : =ds=#sr# 170 : =ds=AtlasLoot["Vendor"]
				{ 313, 7373,  9195 }, -- Dusky Leather Leggings : =ds=#sr# 165 : =ds=AtlasLoot["World Drop"]
				{ 314, 4456,  4097 }, -- Raptor Hide Belt : =ds=#sr# 165 : =ds=AtlasLoot["Vendor"]
				{ 315, 4455,  4096 }, -- Raptor Hide Harness : =ds=#sr# 165 : =ds=AtlasLoot["Vendor"]
				{ 316, 4257,  3774 }, -- Green Leather Belt : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 317, 5962,  7147 }, -- Guardian Pants : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 318, 18948, 23399 }, -- Barbaric Bracers : =ds=#sr# 155 : =ds=AtlasLoot["Vendor"]
				{ 319, 4255,  3772 }, -- Green Leather Armor : =ds=#sr# 155 : =ds=AtlasLoot["Vendor"]
				{ 320, 4254,  3771 }, -- Barbaric Gloves : =ds=#sr# 150 : =ds=AtlasLoot["World Drop"]
				{ 321, 7359,  9149 }, -- Heavy Earthen Gloves : =ds=#sr# 145 : =ds=AtlasLoot["World Drop"]
				{ 322, 4247,  3764 }, -- Hillman's Leather Gloves : =ds=#sr# 145 : =ds=AtlasLoot["Trainer"]
				{ 323, 4252,  3769 }, -- Dark Leather Shoulders : =ds=#sr# 140 : =ds=AtlasLoot["World Drop"]
				{ 324, 7358,  9148 }, -- Pilferer's Gloves : =ds=#sr# 140 : =ds=AtlasLoot["World Drop"]
				{ 325, 4253,  3770 }, -- Toughened Leather Gloves : =ds=#sr# 135 : =ds=AtlasLoot["Trainer"]
				{ 326, 7352,  9147 }, -- Earthen Leather Shoulders : =ds=#sr# 135 : =ds=AtlasLoot["Vendor"]
				{ 327, 7349,  9146 }, -- Herbalist's Gloves : =ds=#sr# 135 : =ds=AtlasLoot["Vendor"]
				{ 328, 4251,  3768 }, -- Hillman's Shoulders : =ds=#sr# 130 : =ds=AtlasLoot["Trainer"]
				{ 329, 7348,  9145 }, -- Fletcher's Gloves : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 330, 4249,  3766 }, -- Dark Leather Belt : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 401, 2314,  2166 }, -- Toughened Leather Armor : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 402, 4248,  3765 }, -- Dark Leather Gloves : =ds=#sr# 120 : =ds=AtlasLoot["World Drop"]
				{ 403, 4250,  3767 }, -- Hillman's Belt : =ds=#sr# 120 : =ds=AtlasLoot["World Drop"]
				{ 404, 7285,  9074 }, -- Nimble Leather Gloves : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 405, 7284,  9072 }, -- Red Whelp Gloves : =ds=#sr# 120 : =ds=AtlasLoot["Vendor"]
				{ 406, 6468,  7955 }, -- Deviate Scale Belt : =ds=#sr# 115 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 407, 5961,  7135 }, -- Dark Leather Pants : =ds=#sr# 115 : =ds=AtlasLoot["Trainer"]
				{ 408, 6467,  7954 }, -- Deviate Scale Gloves : =ds=#sr# 105 : =ds=AtlasLoot["Vendor"]
				{ 409, 5958,  7133 }, -- Fine Leather Pants : =ds=#sr# 105 : =ds=AtlasLoot["World Drop"]
				{ 410, 20575, 24940 }, -- Black Whelp Tunic : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]
				{ 411, 2315,  2167 }, -- Dark Leather Boots : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 412, 2317,  2169 }, -- Dark Leather Tunic : =ds=#sr# 100 : =ds=AtlasLoot["World Drop"]
				{ 413, 4244,  3762 }, -- Hillman's Leather Vest : =ds=#sr# 100 : =ds=AtlasLoot["World Drop"]
				{ 414, 7282,  9068 }, -- Light Leather Pants : =ds=#sr# 95 : =ds=AtlasLoot["Trainer"]
				{ 415, 5781,  6703 }, -- Murloc Scale Breastplate : =ds=#sr# 95 : =ds=AtlasLoot["Vendor"]
				{ 416, 2307,  2158 }, -- Fine Leather Boots : =ds=#sr# 90 : =ds=AtlasLoot["World Drop"]
				{ 417, 6709,  8322 }, -- Moonglow Vest : =ds=#sr# 90 : =ds=#QUESTID:1582#
				{ 418, 5780,  6702 }, -- Murloc Scale Belt : =ds=#sr# 90 : =ds=AtlasLoot["Vendor"]
				{ 419, 4243,  3761 }, -- Fine Leather Tunic : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
				{ 420, 4246,  3763 }, -- Fine Leather Belt : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 421, 4242,  3759 }, -- Embossed Leather Pants : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 422, 2312,  2164 }, -- Fine Leather Gloves : =ds=#sr# 75 : =ds=AtlasLoot["World Drop"]
				{ 423, 7281,  9065 }, -- Light Leather Bracers : =ds=#sr# 70 : =ds=AtlasLoot["Trainer"]
				{ 424, 2311,  2163 }, -- White Leather Jerkin : =ds=#sr# 60 : =ds=AtlasLoot["World Drop"]
				{ 425, 2309,  2161 }, -- Embossed Leather Boots : =ds=#sr# 55 : =ds=AtlasLoot["Trainer"]
				{ 426, 4239,  3756 }, -- Embossed Leather Gloves : =ds=#sr# 55 : =ds=AtlasLoot["Trainer"]
				{ 427, 2300,  2160 }, -- Embossed Leather Vest : =ds=#sr# 40 : =ds=AtlasLoot["Trainer"]
				{ 428, 7280,  9064 }, -- Rugged Leather Pants : =ds=#sr# 35 : =ds=AtlasLoot["World Drop"]
				{ 429, 4237,  3753 }, -- Handstitched Leather Belt : =ds=#sr# 25 : =ds=AtlasLoot["Trainer"]
				{ 430, 2303,  2153 }, -- Handstitched Leather Pants : =ds=#sr# 15 : =ds=AtlasLoot["Trainer"]
				{ 501, 2302,  2149 }, -- Handstitched Leather Boots : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 502, 7277,  9059 }, -- Handstitched Leather Bracers : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 503, 5957,  7126 }, -- Handstitched Leather Vest : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --LeatherMailArmor
			name = AL["Mail"].." "..AL["Armor"],
			[TWW_DIFF] = {
				{ 1,  219481, 443706 },                          -- Tracker's Toughened Headgear
				{ 2,  219484, 443707 },                          -- Tracker's Toughened Links
				{ 3,  219482, 443708 },                          -- Tracker's Toughened Shoulderguards
				{ 4,  219483, 443705 },                          -- Tracker's Toughened Handguards
				{ 5,  219485, 443709 },                          -- Tracker's Toughened Girdle
				{ 6,  219475, 443703 },                          -- Tracker's Chitin Hauberk
				{ 7,  219473, 443704 },                          -- Tracker's Chitin Galoshes
				{ 8,  219474, 443710 },                          -- Tracker's Chitin Cuffs
				{ 9,  219339, 441065 },                          -- Glyph-Etched Binding
				{ 10, 219336, 441059 },                          -- Glyph-Etched Breastplate
				{ 11, 219340, 441063 },                          -- Glyph-Etched Cuisses
				{ 12, 219338, 441064 },                          -- Glyph-Etched Epaulets
				{ 13, 219341, 441061 },                          -- Glyph-Etched Gauntlets
				{ 14, 219337, 441062 },                          -- Glyph-Etched Guise
				{ 15, 219335, 441060 },                          -- Glyph-Etched Stompers
				{ 16, 219342, 441066 },                          -- Glyph-Etched Vambraces
				{ 17, 219508, 443960 },                          -- Reinforced Setae Flyers
				{ 18, 219507, 443961 },                          -- Smoldering Pollen Hauberk
				{ 19, 219492, 444073 },                          -- Sanctified Torchbearer's Grips
				{ 20, 219501, 444068 },                          -- Vambraces of Deepening Darkness
				{ 21, 219509, 443958 },                          -- Busy Bee's Buckle
				{ 22, 217135, 438907, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Chain Chainmail
				{ 23, 217136, 438908, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Chain Cowl
				{ 24, 217141, 438913, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Chain Cuffs
				{ 25, 217137, 438909, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Chain Epaulets
				{ 26, 217140, 438912, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Chain Gauntlets
				{ 27, 217138, 438910, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Chain Girdle
				{ 28, 217139, 438911, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Chain Leggings
				{ 29, 217134, 438906, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Chain Treads
			},
			[BFA_DIFF] = {
				{ 1,   161961, 256771 }, -- Mistscale Boots
				{ 16,  161962, 256774 }, -- Mistscale Leggings

				{ 3,   162489, 256772 }, -- Imbued Mistscale Boots
				{ 18,  162490, 256775 }, -- Imbued Mistscale Leggings

				{ 5,   162472, 256773 }, -- Emblazoned Mistscale Boots
				{ 20,  162474, 256776 }, -- Emblazoned Mistscale Leggings

				{ 7,   154149, 256761 }, -- Shimmerscale Helm
				{ 8,   154151, 256759 }, -- Shimmerscale Pauldrons
				{ 9,   154146, 256763 }, -- Shimmerscale Vest
				{ 10,  154153, 256757 }, -- Shimmerscale Armguards
				{ 22,  154148, 256762 }, -- Shimmerscale Gauntlets
				{ 23,  154152, 256758 }, -- Shimmerscale Waistguard
				{ 24,  154150, 256760 }, -- Shimmerscale Leggings
				{ 25,  154147, 256764 }, -- Shimmerscale Treads

				{ 101, 159893, 269543 }, -- Honorable Combatant's Mail Armguards
				{ 102, 159893, 269544 }, -- Honorable Combatant's Mail Armguards
				{ 103, 159893, 269545 }, -- Honorable Combatant's Mail Armguards

				{ 105, 159890, 269534 }, -- Honorable Combatant's Mail Gauntlets
				{ 106, 159890, 269535 }, -- Honorable Combatant's Mail Gauntlets
				{ 107, 159890, 269536 }, -- Honorable Combatant's Mail Gauntlets

				{ 109, 159892, 269540 }, -- Honorable Combatant's Mail Waistguard
				{ 110, 159892, 269541 }, -- Honorable Combatant's Mail Waistguard
				{ 111, 159892, 269542 }, -- Honorable Combatant's Mail Waistguard

				{ 116, 159891, 269537 }, -- Honorable Combatant's Mail Leggings
				{ 117, 159891, 269538 }, -- Honorable Combatant's Mail Leggings
				{ 118, 159891, 269539 }, -- Honorable Combatant's Mail Leggings

				{ 120, 159889, 269531 }, -- Honorable Combatant's Mail Treads
				{ 121, 159889, 269532 }, -- Honorable Combatant's Mail Treads
				{ 122, 159889, 269533 }, -- Honorable Combatant's Mail Treads
			},
			[LEGION_DIFF] = {
				{ 1,   128907, 194759 }, -- Gravenscale Armbands
				{ 2,   128907, 194767 }, -- Gravenscale Armbands
				{ 3,   128907, 194796 }, -- Gravenscale Armbands
				{ 5,   128906, 194760 }, -- Gravenscale Girdle
				{ 6,   128906, 194768 }, -- Gravenscale Girdle
				{ 7,   128906, 194797 }, -- Gravenscale Girdle
				{ 9,   128905, 194761 }, -- Gravenscale Spaulders
				{ 10,  128905, 194769 }, -- Gravenscale Spaulders
				{ 11,  128905, 194798 }, -- Gravenscale Spaulders
				{ 13,  128904, 194762 }, -- Gravenscale Leggings
				{ 14,  128904, 194770 }, -- Gravenscale Leggings
				{ 15,  128904, 194792 }, -- Gravenscale Leggings
				{ 16,  128903, 194763 }, -- Gravenscale Warhelm
				{ 17,  128903, 194771 }, -- Gravenscale Warhelm
				{ 18,  128903, 194794 }, -- Gravenscale Warhelm
				{ 20,  128902, 194764 }, -- Gravenscale Grips
				{ 21,  128902, 194772 }, -- Gravenscale Grips
				{ 22,  128902, 194799 }, -- Gravenscale Grips
				{ 24,  128901, 194765 }, -- Gravenscale Treads
				{ 25,  128901, 194773 }, -- Gravenscale Treads
				{ 26,  128901, 194793 }, -- Gravenscale Treads
				{ 28,  128900, 194766 }, -- Gravenscale Hauberk
				{ 29,  128900, 194774 }, -- Gravenscale Hauberk
				{ 30,  128900, 194795 }, -- Gravenscale Hauberk
				{ 101, 128899, 194735 }, -- Battlebound Armbands
				{ 102, 128899, 194743 }, -- Battlebound Armbands
				{ 103, 128899, 194751 }, -- Battlebound Armbands
				{ 105, 128898, 194736 }, -- Battlebound Girdle
				{ 106, 128898, 194744 }, -- Battlebound Girdle
				{ 107, 128898, 194756 }, -- Battlebound Girdle
				{ 109, 128897, 194737 }, -- Battlebound Spaulders
				{ 110, 128897, 194745 }, -- Battlebound Spaulders
				{ 111, 128897, 194757 }, -- Battlebound Spaulders
				{ 113, 128896, 194738 }, -- Battlebound Leggings
				{ 114, 128896, 194746 }, -- Battlebound Leggings
				{ 115, 128896, 194752 }, -- Battlebound Leggings
				{ 116, 128895, 194739 }, -- Battlebound Warhelm
				{ 117, 128895, 194747 }, -- Battlebound Warhelm
				{ 118, 128895, 194753 }, -- Battlebound Warhelm
				{ 120, 128894, 194740 }, -- Battlebound Grips
				{ 121, 128894, 194748 }, -- Battlebound Grips
				{ 122, 128894, 194754 }, -- Battlebound Grips
				{ 124, 128893, 194741 }, -- Battlebound Treads
				{ 125, 128893, 194749 }, -- Battlebound Treads
				{ 126, 128893, 194755 }, -- Battlebound Treads
				{ 128, 128892, 194742 }, -- Battlebound Hauberk
				{ 129, 128892, 194750 }, -- Battlebound Hauberk
				{ 130, 128892, 194758 }, -- Battlebound Hauberk
				-- 7.3.0
				{ 201, 151578, 247803 }, -- Fiendish Spaulders
				{ 202, 151578, 247804 }, -- Fiendish Spaulders
				{ 203, 151578, 247805 }, -- Fiendish Spaulders
			},
			[WOD_DIFF] = {
				{ 1,   "116188:Stage6", 187513 },                        -- Wayfaring Helm (Stage 6)
				{ 10,  "116188:Stage5", 187489 },                        -- Wayfaring Helm (Stage 5)
				{ 19,  "116188:Stage4", 171286 },                        -- Wayfaring Helm (Stage 4)
				{ 101, "116188:Stage3", 171286 },                        -- Wayfaring Helm (Stage 3)
				{ 110, "116188:Stage2", 171286 },                        -- Wayfaring Helm (Stage 2)
				{ 119, "116188:Stage1", 171279, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Wayfaring Helm (Stage 1) (Sold, Ashran)

				{ 2,   "116187:Stage6", 187513 },                        -- Wayfaring Shoulderguards (Stage 6)
				{ 11,  "116187:Stage5", 187489 },                        -- Wayfaring Shoulderguards (Stage 5)
				{ 20,  "116187:Stage4", 171286 },                        -- Wayfaring Shoulderguards (Stage 4)
				{ 102, "116187:Stage3", 171286 },                        -- Wayfaring Shoulderguards (Stage 3)
				{ 111, "116187:Stage2", 171286 },                        -- Wayfaring Shoulderguards (Stage 2)
				{ 120, "116187:Stage1", 171278, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Wayfaring Shoulderguards (Stage 1) (Sold)

				{ 3,   "116191:Stage6", 187513 },                        -- Wayfaring Tunic (Stage 6)
				{ 12,  "116191:Stage5", 187489 },                        -- Wayfaring Tunic (Stage 5)
				{ 21,  "116191:Stage4", 171286 },                        -- Wayfaring Tunic (Stage 4)
				{ 103, "116191:Stage3", 171286 },                        -- Wayfaring Tunic (Stage 3)
				{ 112, "116191:Stage2", 171286 },                        -- Wayfaring Tunic (Stage 2)
				{ 121, "116191:Stage1", 171282, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Wayfaring Tunic (Stage 1) (Sold, Ashran)

				{ 4,   "116192:Stage6", 187513 },                        -- Wayfaring Bracers (Stage 6)
				{ 13,  "116192:Stage5", 187489 },                        -- Wayfaring Bracers (Stage 5)
				{ 22,  "116192:Stage4", 171286 },                        -- Wayfaring Bracers (Stage 4)
				{ 104, "116192:Stage3", 171286 },                        -- Wayfaring Bracers (Stage 3)
				{ 113, "116192:Stage2", 171286 },                        -- Wayfaring Bracers (Stage 2)
				{ 122, "116192:Stage1", 171283, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Wayfaring Bracers (Stage 1) (Sold, Ashran)

				{ 5,   "116190:Stage6", 187513 },                        -- Wayfaring Gloves (Stage 6)
				{ 14,  "116190:Stage5", 187489 },                        -- Wayfaring Gloves (Stage 5)				{ 5, "116190:Stage4", 181415 },	-- Wayfaring Gloves (Stage 4)
				{ 23,  "116190:Stage4", 171286 },                        -- Wayfaring Gloves (Stage 4)
				{ 105, "116190:Stage3", 171286 },                        -- Wayfaring Gloves (Stage 3)
				{ 114, "116190:Stage2", 171286 },                        -- Wayfaring Gloves (Stage 2)
				{ 123, "116190:Stage1", 171281, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Wayfaring Gloves (Stage 1) (Sold, Ashran)

				{ 6,   "116194:Stage6", 187513 },                        -- Wayfaring Belt (Stage 6)
				{ 15,  "116194:Stage5", 187489 },                        -- Wayfaring Belt (Stage 5)
				{ 24,  "116194:Stage4", 171286 },                        -- Wayfaring Belt (Stage 4)
				{ 106, "116194:Stage3", 171286 },                        -- Wayfaring Belt (Stage 3)
				{ 115, "116194:Stage2", 171286 },                        -- Wayfaring Belt (Stage 2)
				{ 124, "116194:Stage1", 171285, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Wayfaring Belt (Stage 1) (Sold, Ashran)

				{ 7,   "116189:Stage6", 187513 },                        -- Wayfaring Leggings (Stage 6)
				{ 16,  "116189:Stage5", 187489 },                        -- Wayfaring Leggings (Stage 5)				{ 7, "116189:Stage4", 181415 },	-- Wayfaring Leggings (Stage 4)
				{ 25,  "116189:Stage4", 171286 },                        -- Wayfaring Leggings (Stage 4)
				{ 107, "116189:Stage3", 171286 },                        -- Wayfaring Leggings (Stage 3)
				{ 116, "116189:Stage2", 171286 },                        -- Wayfaring Leggings (Stage 2)
				{ 125, "116189:Stage1", 171280, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Wayfaring Leggings (Stage 1) (Sold, Ashran)

				{ 8,   "116193:Stage6", 187513 },                        -- Wayfaring Boots (Stage 6)
				{ 17,  "116193:Stage5", 187489 },                        -- Wayfaring Boots (Stage 5)
				{ 26,  "116193:Stage4", 171286 },                        -- Wayfaring Boots (Stage 4)
				{ 108, "116193:Stage3", 171286 },                        -- Wayfaring Boots (Stage 3)
				{ 117, "116193:Stage2", 171286 },                        -- Wayfaring Boots (Stage 2)
				{ 126, "116193:Stage1", 171284, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Wayfaring Boots (Stage 1) (Sold, Ashran)

				{ 128, 116167,          171263 },                        -- Traveling Helm (Learnt by item 115358)
				{ 129, 116168,          171264 },                        -- Traveling Tunic (Learnt by item 115358)
				{ 130, 116169,          171265 },                        -- Traveling Leggings (Learnt by item 115358)
			},
			[MOP_DIFF] = {
				{ 1,   98614, 142966 },                                 -- Gorge Stalker Belt : =ds=#s10#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 2,   98610, 142962 },                                 -- Krasari Prowler Belt : =ds=#s10#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 3,   98605, 142957 },                                 -- Gorge Stalker Legplates : =ds=#s11#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 4,   98601, 142953 },                                 -- Krasari Prowler Britches : =ds=#s11#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 5,   85830, 124644 },                                 -- Raiment of Blood and Bone : =ds=#s5#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 6,   85840, 124642 },                                 -- Stormbreaker Chestguard : =ds=#s5#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 7,   85821, 124643 },                                 -- Fists of Lightning : =ds=#s9#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 8,   85831, 124645 },                                 -- Raven Lord's Gloves : =ds=#s9#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 9,   85787, 124625 },                                 -- Chestguard of Earthen Harmony : =ds=#s5#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 10,  85826, 124623 },                                 -- Lifekeeper's Robe : =ds=#s5#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 11,  85822, 124626 },                                 -- Gloves of Earthen Harmony : =ds=#s9#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 12,  85825, 124624 },                                 -- Lifekeeper's Gloves : =ds=#s9#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 13,  98822, 143139 },                                 -- Crafted Malevolent Gladiator's Chain Helm : =ds=#s1#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 14,  98824, 143141 },                                 -- Crafted Malevolent Gladiator's Chain Spaulders : =ds=#s3#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 15,  98820, 143137 },                                 -- Crafted Malevolent Gladiator's Chain Armor : =ds=#s5#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 16,  98821, 143138 },                                 -- Crafted Malevolent Gladiator's Chain Gauntlets : =ds=#s9#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 17,  98823, 143140 },                                 -- Crafted Malevolent Gladiator's Chain Leggings : =ds=#s11#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 18,  98907, 143160 },                                 -- Crafted Malevolent Gladiator's Mail Helm : =ds=#s1#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 19,  98909, 143162 },                                 -- Crafted Malevolent Gladiator's Mail Spaulders : =ds=#s3#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 20,  98905, 143158 },                                 -- Crafted Malevolent Gladiator's Mail Armor : =ds=#s5#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 21,  98906, 143159 },                                 -- Crafted Malevolent Gladiator's Mail Gauntlets : =ds=#s9#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 22,  98908, 143161 },                                 -- Crafted Malevolent Gladiator's Mail Leggings : =ds=#s11#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 23,  98901, 143154 },                                 -- Crafted Malevolent Gladiator's Linked Helm : =ds=#s1#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 24,  98903, 143156 },                                 -- Crafted Malevolent Gladiator's Linked Spaulders : =ds=#s3#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 25,  98899, 143152 },                                 -- Crafted Malevolent Gladiator's Linked Armor : =ds=#s5#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 26,  98900, 143153 },                                 -- Crafted Malevolent Gladiator's Linked Gauntlets : =ds=#s9#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 27,  98902, 143155 },                                 -- Crafted Malevolent Gladiator's Linked Leggings : =ds=#s11#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 28,  98896, 143149 },                                 -- Crafted Malevolent Gladiator's Ringmail Helm : =ds=#s1#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 29,  98898, 143151 },                                 -- Crafted Malevolent Gladiator's Ringmail Spaulders : =ds=#s3#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 30,  98894, 143147 },                                 -- Crafted Malevolent Gladiator's Ringmail Armor : =ds=#s5#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 101, 98895, 143148 },                                 -- Crafted Malevolent Gladiator's Ringmail Gauntlets : =ds=#s9#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 102, 98897, 143150 },                                 -- Crafted Malevolent Gladiator's Ringmail Leggings : =ds=#s11#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 103, 98893, 143146 },                                 -- Crafted Malevolent Gladiator's Armbands of Meditation : =ds=#s8#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 104, 98892, 143145 },                                 -- Crafted Malevolent Gladiator's Armbands of Prowess : =ds=#s8#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 105, 98819, 143136 },                                 -- Crafted Malevolent Gladiator's Wristguards of Accuracy : =ds=#s8#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 106, 98818, 143135 },                                 -- Crafted Malevolent Gladiator's Wristguards of Alacrity : =ds=#s8#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 107, 98815, 143132 },                                 -- Crafted Malevolent Gladiator's Links of Accuracy : =ds=#s10#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 108, 98814, 143131 },                                 -- Crafted Malevolent Gladiator's Links of Cruelty : =ds=#s10#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 109, 98904, 143157 },                                 -- Crafted Malevolent Gladiator's Waistguard of Cruelty : =ds=#s10#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 110, 98889, 143142 },                                 -- Crafted Malevolent Gladiator's Waistguard of Meditation : =ds=#s10#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 111, 98890, 143143 },                                 -- Crafted Malevolent Gladiator's Footguards of Alacrity : =ds=#s12#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 112, 98891, 143144 },                                 -- Crafted Malevolent Gladiator's Footguards of Meditation : =ds=#s12#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 113, 98817, 143134 },                                 -- Crafted Malevolent Gladiator's Sabatons of Alacrity : =ds=#s12#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 114, 98816, 143133 },                                 -- Crafted Malevolent Gladiator's Sabatons of Cruelty : =ds=#s12#, #a3# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell142976
				{ 115, 85794, 124611, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Dragonscale Helm : =ds=#s1#, #a3# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 116, 85792, 124613, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Dragonscale Chestguard : =ds=#s5#, #a3# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 117, 85810, 124595, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Scale Helm : =ds=#s1#, #a3# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 118, 85808, 124597, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Scale Chestguard : =ds=#s5#, #a3# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 119, 85796, 124612, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Dragonscale Shoulders : =ds=#s3#, #a3# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 120, 85812, 124596, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Scale Shoulders : =ds=#s3#, #a3# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 121, 85793, 124614, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Dragonscale Gloves : =ds=#s9#, #a3# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 122, 85789, 124618, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Dragonscale Belt : =ds=#s10#, #a3# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 123, 85795, 124615, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Dragonscale Leggings : =ds=#s11#, #a3# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 124, 85790, 124617, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Dragonscale Boots : =ds=#s12#, #a3# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 125, 85809, 124598, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Scale Gloves : =ds=#s9#, #a3# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 126, 85805, 124602, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Scale Belt : =ds=#s10#, #a3# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 127, 85811, 124599, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Scale Leggings : =ds=#s11#, #a3# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 128, 85806, 124601, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Scale Boots : =ds=#s12#, #a3# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 129, 85847, 124583 },                                 -- Stormscale Leggings : =ds=#s11#, #a3# / =q1=#sk# 560 : =ds=AtlasLoot["Trainer"]
				{ 130, 85791, 124616, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Dragonscale Bracers : =ds=#s8#, #a3# / =q1=#sk# 555 : =ds=AtlasLoot["Vendor"]
				{ 201, 85807, 124600, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Scale Bracers : =ds=#s8#, #a3# / =q1=#sk# 555 : =ds=AtlasLoot["Vendor"]
				{ 202, 85844, 124581 },                                 -- Stormscale Chestguard : =ds=#s5#, #a3# / =q1=#sk# 555 : =ds=AtlasLoot["Trainer"]
				{ 203, 85846, 124579 },                                 -- Stormscale Helm : =ds=#s1#, #a3# / =q1=#sk# 550 : =ds=AtlasLoot["Trainer"]
				{ 204, 85848, 124580 },                                 -- Stormscale Shoulders : =ds=#s3#, #a3# / =q1=#sk# 545 : =ds=AtlasLoot["Trainer"]
				{ 205, 85845, 124582 },                                 -- Stormscale Gloves : =ds=#s9#, #a3# / =q1=#sk# 540 : =ds=AtlasLoot["Trainer"]
				{ 206, 85842, 124585 },                                 -- Stormscale Boots : =ds=#s12#, #a3# / =q1=#sk# 535 : =ds=AtlasLoot["Trainer"]
				{ 207, 85841, 124586 },                                 -- Stormscale Belt : =ds=#s10#, #a3# / =q1=#sk# 530 : =ds=AtlasLoot["Trainer"]
				{ 208, 85843, 124584 },                                 -- Stormscale Bracers : =ds=#s8#, #a3# / =q1=#sk# 525 : =ds=AtlasLoot["Trainer"]
				{ 209, 94276, 138596 },                                 -- Cloud Serpent Helm : =ds=#s1#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 210, 94272, 138592 },                                 -- Dreadrunner Helm : =ds=#s1#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 211, 94275, 138595 },                                 -- Cloud Serpent Sabatons : =ds=#s12#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 212, 94271, 138591 },                                 -- Dreadrunner Sabatons : =ds=#s12#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 213, 93496, 137859 },                                 -- Crafted Dreadful Gladiator's Chain Helm : =ds=#s1#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 214, 93498, 137861 },                                 -- Crafted Dreadful Gladiator's Chain Spaulders : =ds=#s3#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 215, 93494, 137857 },                                 -- Crafted Dreadful Gladiator's Chain Armor : =ds=#s5#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 216, 93495, 137858 },                                 -- Crafted Dreadful Gladiator's Chain Gauntlets : =ds=#s9#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 217, 93497, 137860 },                                 -- Crafted Dreadful Gladiator's Chain Leggings : =ds=#s11#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 218, 93592, 137880 },                                 -- Crafted Dreadful Gladiator's Mail Helm : =ds=#s1#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 219, 93594, 137882 },                                 -- Crafted Dreadful Gladiator's Mail Spaulders : =ds=#s3#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 220, 93590, 137878 },                                 -- Crafted Dreadful Gladiator's Mail Armor : =ds=#s5#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 221, 93591, 137879 },                                 -- Crafted Dreadful Gladiator's Mail Gauntlets : =ds=#s9#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 222, 93593, 137881 },                                 -- Crafted Dreadful Gladiator's Mail Leggings : =ds=#s11#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 223, 93586, 137874 },                                 -- Crafted Dreadful Gladiator's Linked Helm : =ds=#s1#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 224, 93588, 137876 },                                 -- Crafted Dreadful Gladiator's Linked Spaulders : =ds=#s3#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 225, 93584, 137872 },                                 -- Crafted Dreadful Gladiator's Linked Armor : =ds=#s5#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 226, 93585, 137873 },                                 -- Crafted Dreadful Gladiator's Linked Gauntlets : =ds=#s9#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 227, 93587, 137875 },                                 -- Crafted Dreadful Gladiator's Linked Leggings : =ds=#s11#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 228, 93581, 137869 },                                 -- Crafted Dreadful Gladiator's Ringmail Helm : =ds=#s1#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 229, 93583, 137871 },                                 -- Crafted Dreadful Gladiator's Ringmail Spaulders : =ds=#s3#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 230, 93579, 137867 },                                 -- Crafted Dreadful Gladiator's Ringmail Armor : =ds=#s5#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 301, 93580, 137868 },                                 -- Crafted Dreadful Gladiator's Ringmail Gauntlets : =ds=#s9#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 302, 93582, 137870 },                                 -- Crafted Dreadful Gladiator's Ringmail Leggings : =ds=#s11#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 303, 93578, 137866 },                                 -- Crafted Dreadful Gladiator's Armbands of Meditation : =ds=#s8#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 304, 93577, 137865 },                                 -- Crafted Dreadful Gladiator's Armbands of Prowess : =ds=#s8#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 305, 93493, 137856 },                                 -- Crafted Dreadful Gladiator's Wristguards of Accuracy : =ds=#s8#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 306, 93492, 137855 },                                 -- Crafted Dreadful Gladiator's Wristguards of Alacrity : =ds=#s8#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 307, 93489, 137852 },                                 -- Crafted Dreadful Gladiator's Links of Accuracy : =ds=#s10#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 308, 93488, 137851 },                                 -- Crafted Dreadful Gladiator's Links of Cruelty : =ds=#s10#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 309, 93589, 137877 },                                 -- Crafted Dreadful Gladiator's Waistguard of Cruelty : =ds=#s10#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 310, 93574, 137862 },                                 -- Crafted Dreadful Gladiator's Waistguard of Meditation : =ds=#s10#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 311, 93575, 137863 },                                 -- Crafted Dreadful Gladiator's Mail Footguards of Alacrity : =ds=#s12#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 312, 93576, 137864 },                                 -- Crafted Dreadful Gladiator's Mail Footguards of Meditation : =ds=#s12#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 313, 93491, 137854 },                                 -- Crafted Dreadful Gladiator's Sabatons of Alacrity : =ds=#s12#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
				{ 314, 93490, 137853 },                                 -- Crafted Dreadful Gladiator's Sabatons of Cruelty : =ds=#s12#, #a3# / =q1=#sk# 500 : =ds=AtlasLoot["Discovery"]: spell140041
			},
			[CATA_DIFF] = {
				{ 1,   71996, 101941 }, -- Bracers of the Hunter-Killer : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 2,   71997, 101939 }, -- Thundering Deathscale Wristguards : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 3,   71987, 101936 }, -- Rended Earth Leggings : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 4,   71988, 101934 }, -- Deathscale Leggings of the Storm : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 5,   69939, 99443 }, -- Dragonfire Gloves : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 6,   69941, 99445 }, -- Gloves of Unforgiving Flame : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 7,   69949, 99455 }, -- Earthen Scale Sabatons : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 8,   69950, 99456 }, -- Footwraps of Quenched Fire : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 9,   56539, 78463 }, -- Corded Viper Belt : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 10,  56564, 78490 }, -- Dragonkiller Tunic : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 11,  56538, 78462 }, -- Stormleather Sash : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 12,  56563, 78489 }, -- Twilight Scale Chestguard : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 13,  75115, 78486 }, -- Vicious Dragonscale Chest : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 14,  75108, 78485 }, -- Vicious Dragonscale Legs : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 15,  75084, 78483 }, -- Vicious Charscale Chest : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 16,  75090, 78484 }, -- Vicious Charscale Helm : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 17,  75100, 78473 }, -- Vicious Dragonscale Belt : =ds=#sr# 520 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 18,  75102, 78474 }, -- Vicious Dragonscale Helm : =ds=#sr# 520 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 19,  75097, 78471 }, -- Vicious Charscale Legs : =ds=#sr# 520 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 20,  75061, 78470 }, -- Vicious Charscale Shoulders : =ds=#sr# 520 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 21,  75110, 78458 }, -- Vicious Dragonscale Boots : =ds=#sr# 515 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 22,  75081, 78459 }, -- Vicious Dragonscale Gloves : =ds=#sr# 515 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 23,  75083, 78457 }, -- Vicious Charscale Belt : =ds=#sr# 515 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 24,  75092, 78456 }, -- Vicious Charscale Boots : =ds=#sr# 515 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 25,  75114, 78450 }, -- Vicious Dragonscale Bracers : =ds=#sr# 510 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 26,  75116, 78451 }, -- Vicious Dragonscale Shoulders : =ds=#sr# 510 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 27,  75094, 78448 }, -- Vicious Charscale Bracers : =ds=#sr# 510 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 28,  75085, 78449 }, -- Vicious Charscale Gloves : =ds=#sr# 510 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 29,  56504, 78423 }, -- Tsunami Chestguard : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 30,  56512, 78432 }, -- Tsunami Helm : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 101, 56508, 78427 }, -- Tsunami Leggings : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 102, 56490, 78406 }, -- Tsunami Gloves : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 103, 56482, 78396 }, -- Tsunami Belt : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 104, 56481, 78388 }, -- Tsunami Bracers : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 105, 56498, 78415 }, -- Tsunami Shoulders : =ds=#sr# 455 : =ds=AtlasLoot["Trainer"]
				{ 106, 56494, 78410 }, -- Tsunami Boots : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1,   49901,                                      70560 },                       -- Draconic Bonesplinter Legguards : =ds=AtlasLoot["Vendor"] : nil
				{ 2,   49896,                                      70559 },                       -- Earthsoul Boots : =ds=AtlasLoot["Vendor"] : nil
				{ 3,   49900,                                      70558 },                       -- Lightning-Infused Leggings : =ds=AtlasLoot["Vendor"] : nil
				{ 4,   49897,                                      70561 },                       -- Rock-Steady Treads : =ds=AtlasLoot["Vendor"] : nil
				{ 5,   [ATLASLOOT_IT_ALLIANCE] = { 47595, 67082 }, [ATLASLOOT_IT_HORDE] = { 47596, 67138 } }, -- Crusader's Dragonscale Breastplate : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 6,   [ATLASLOOT_IT_ALLIANCE] = { 47597, 67080 }, [ATLASLOOT_IT_HORDE] = { 47598, 67136 } }, -- Ensorcelled Nerubian Breastplate : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 7,   [ATLASLOOT_IT_ALLIANCE] = { 47579, 67081 }, [ATLASLOOT_IT_HORDE] = { 47580, 67137 } }, -- Black Chitin Bracers : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 8,   [ATLASLOOT_IT_ALLIANCE] = { 47576, 67083 }, [ATLASLOOT_IT_HORDE] = { 47577, 67143 } }, -- Crusader's Dragonscale Bracers : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 9,   45553,                                      63194 },                       -- Belt of Dragons : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 10,  45554,                                      63196 },                       -- Blue Belt of Chaos : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 11,  45562,                                      63195 },                       -- Boots of Living Scale : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 12,  45563,                                      63197 },                       -- Lightning Grounded Boots : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"] : nil
				{ 13,  43459,                                      60755 },                       -- Giantmaim Bracers : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 14,  43458,                                      60754 },                       -- Giantmaim Legguards : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 15,  43461,                                      60756 },                       -- Revenant's Breastplate : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 16,  43469,                                      60757 },                       -- Revenant's Treads : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 17,  43593,                                      60999 },                       -- Icy Scale Chestguard : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 18,  43594,                                      61000 },                       -- Icy Scale Belt : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 19,  43595,                                      61002 },                       -- Icy Scale Boots : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 20,  43447,                                      60728 },                       -- Swiftarrow Helm : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 21,  43449,                                      60729 },                       -- Swiftarrow Shoulderguards : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 22,  43445,                                      60730 },                       -- Swiftarrow Hauberk : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 23,  43444,                                      60731 },                       -- Swiftarrow Bracers : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 24,  43446,                                      60732 },                       -- Swiftarrow Gauntlets : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 25,  43442,                                      60734 },                       -- Swiftarrow Belt : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 26,  43448,                                      60735 },                       -- Swiftarrow Leggings : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 27,  43443,                                      60737 },                       -- Swiftarrow Boots : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 28,  43455,                                      60743 },                       -- Stormhide Crown : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 29,  43457,                                      60746 },                       -- Stormhide Shoulders : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 30,  43453,                                      60747 },                       -- Stormhide Hauberk : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 101, 43452,                                      60748 },                       -- Stormhide Wristguards : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 102, 43454,                                      60749 },                       -- Stormhide Grips : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 103, 43450,                                      60750 },                       -- Stormhide Belt : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 104, 43456,                                      60751 },                       -- Stormhide Legguards : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 105, 43451,                                      60752 },                       -- Stormhide Stompers : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"] : nil
				{ 106, 43129,                                      60649 },                       -- Razorstrike Breastplate : =ds=AtlasLoot["Trainer"] : nil
				{ 107, 43132,                                      60655 },                       -- Nightshock Hood : =ds=AtlasLoot["Trainer"] : nil
				{ 108, 43130,                                      60651 },                       -- Virulent Spaulders : =ds=AtlasLoot["Trainer"] : nil
				{ 109, 43133,                                      60658 },                       -- Nightshock Girdle : =ds=AtlasLoot["Trainer"] : nil
				{ 110, 43131,                                      60652 },                       -- Eaglebane Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 111, 44438,                                      60605 },                       -- Dragonstompers : =ds=AtlasLoot["Trainer"] : nil
				{ 112, 44445,                                      60630 },                       -- Scaled Icewalkers : =ds=AtlasLoot["Trainer"] : nil
				{ 113, 44437,                                      60604 },                       -- Dark Frostscale Breastplate : =ds=AtlasLoot["Trainer"] : nil
				{ 114, 44436,                                      60601 },                       -- Dark Frostscale Leggings : =ds=AtlasLoot["Trainer"] : nil
				{ 115, 44444,                                      60629 },                       -- Dark Nerubian Chestpiece : =ds=AtlasLoot["Trainer"] : nil
				{ 116, 44443,                                      60627 },                       -- Dark Nerubian Leggings : =ds=AtlasLoot["Trainer"] : nil
				{ 117, 38440,                                      60600 },                       -- Frostscale Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 118, 38424,                                      50952 },                       -- Frostscale Shoulders : =ds=AtlasLoot["Trainer"] : nil
				{ 119, 38414,                                      50950 },                       -- Frostscale Chestguard : =ds=AtlasLoot["Trainer"] : nil
				{ 120, 38436,                                      60599 },                       -- Frostscale Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 121, 38415,                                      50953 },                       -- Frostscale Gloves : =ds=AtlasLoot["Trainer"] : nil
				{ 122, 38412,                                      50955 },                       -- Frostscale Belt : =ds=AtlasLoot["Trainer"] : nil
				{ 123, 38416,                                      50951 },                       -- Frostscale Leggings : =ds=AtlasLoot["Trainer"] : nil
				{ 124, 38413,                                      50954 },                       -- Frostscale Boots : =ds=AtlasLoot["Trainer"] : nil
				{ 125, 38439,                                      60624 },                       -- Nerubian Helm : =ds=AtlasLoot["Trainer"] : nil
				{ 126, 38417,                                      50958 },                       -- Nerubian Shoulders : =ds=AtlasLoot["Trainer"] : nil
				{ 127, 38420,                                      50956 },                       -- Nerubian Chestguard : =ds=AtlasLoot["Trainer"] : nil
				{ 128, 38435,                                      60622 },                       -- Nerubian Bracers : =ds=AtlasLoot["Trainer"] : nil
				{ 129, 38421,                                      50959 },                       -- Nerubian Gloves : =ds=AtlasLoot["Trainer"] : nil
				{ 130, 38418,                                      50961 },                       -- Nerubian Belt : =ds=AtlasLoot["Trainer"] : nil
				{ 201, 38422,                                      50957 },                       -- Nerubian Legguards : =ds=AtlasLoot["Trainer"] : nil
				{ 202, 38419,                                      50960 },                       -- Nerubian Boots : =ds=AtlasLoot["Trainer"] : nil
			},
			[BC_DIFF] = {
				{ 1,   32397,                       40002 }, -- Waistguard of Shackled Souls : =ds=#sr# 375 : nil
				{ 2,   32575,                       41162 }, -- Shoulders of Lightning Reflexes : =ds=#sr# 375 : nil
				{ 3,   29520,                       35582 }, -- Netherstrike Belt : =ds=#sr# 375 : nil
				{ 4,   29521,                       35584 }, -- Netherstrike Bracers : =ds=#sr# 375 : nil
				{ 5,   29519,                       35580 }, -- Netherstrike Breastplate : =ds=#sr# 375 : nil
				{ 6,   30044,                       36353 }, -- Monsoon Belt : =ds=#sr# 375 : nil
				{ 7,   32399,                       52733 }, -- Bracers of Shackled Souls : =ds=AtlasLoot["Vendor"] : nil
				{ 8,   29516,                       35576 }, -- Ebon Netherscale Belt : =ds=#sr# 375 : nil
				{ 9,   29517,                       35577 }, -- Ebon Netherscale Bracers : =ds=#sr# 375 : nil
				{ 10,  29515,                       35575 }, -- Ebon Netherscale Breastplate : =ds=#sr# 375 : nil
				{ 11,  32400,                       40001 }, -- Greaves of Shackled Souls : =ds=#sr# 375 : nil
				{ 12,  30043,                       36359 }, -- Hurricane Boots : =ds=#sr# 375 : nil
				{ 13,  32577,                       41163 }, -- Living Earth Bindings : =ds=#sr# 375 : nil
				{ 14,  32579,                       41164 }, -- Living Earth Shoulders : =ds=#sr# 375 : nil
				{ 15,  32398,                       39997 }, -- Boots of Shackled Souls : =ds=#sr# 375 : nil
				{ 16,  30045,                       36358 }, -- Boots of the Crimson Hawk : =ds=#sr# 375 : nil
				{ 17,  30046,                       36352 }, -- Belt of the Black Eagle : =ds=#sr# 375 : nil
				{ 18,  32574,                       41161 }, -- Bindings of Lightning Reflexes : =ds=#sr# 375 : nil
				{ 19,  34375,                       46139 }, -- Sun-Drenched Scale Chestguard : =ds=#sr# 365 : nil
				{ 20,  34376,                       46135 }, -- Sun-Drenched Scale Gloves : =ds=#sr# 365 : nil
				{ 21,  34373,                       46137 }, -- Embrace of the Phoenix : =ds=#sr# 365 : nil
				{ 22,  34374,                       46133 }, -- Fletcher's Gloves of the Phoenix : =ds=#sr# 365 : nil
				{ 23,  29509,                       35568 }, -- Windstrike Gloves : =ds=#sr# 365 : nil
				{ 24,  29514,                       35574 }, -- Thick Netherscale Breastplate : =ds=#sr# 365 : nil
				{ 25,  29508,                       35564 }, -- Living Dragonscale Helm : =ds=#sr# 365 : nil
				{ 26,  29511,                       35573 }, -- Netherdrake Gloves : =ds=#sr# 365 : nil
				{ 27,  29510,                       35572 }, -- Netherdrake Helm : =ds=#sr# 365 : nil
				{ 28,  29512,                       35567 }, -- Earthen Netherscale Boots : =ds=#sr# 365 : nil
				{ 29,  25697,                       32499 }, -- Felstalker Bracer : =ds=#sr# 360 : nil
				{ 30,  25696,                       32500 }, -- Felstalker Breastplate : =ds=#sr# 360 : nil
				{ 101, 25681,                       32487 }, -- Stylin' Adventure Hat : =ds=#sr# 350 : nil
				{ 102, 25683,                       32488 }, -- Stylin' Crimson Hat : =ds=#sr# 350 : nil
				{ 103, 25695,                       32498 }, -- Felstalker Belt : =ds=#sr# 350 : nil
				{ 104, 29494,                       35531 }, -- Flamescale Belt : =ds=#sr# 350 : nil
				{ 105, 29493,                       35528 }, -- Flamescale Boots : =ds=#sr# 350 : nil
				{ 106, 29492,                       35529 }, -- Flamescale Leggings : =ds=#sr# 350 : nil
				{ 107, 25693,                       32503 }, -- Netherfury Boots : =ds=#sr# 350 : nil
				{ 108, 29491,                       35527 }, -- Enchanted Felscale Boots : =ds=#sr# 350 : nil
				{ 109, 29490,                       35526 }, -- Enchanted Felscale Gloves : =ds=#sr# 350 : nil
				{ 110, 29489,                       35525 }, -- Enchanted Felscale Leggings : =ds=#sr# 350 : nil
				{ 111, 25694,                       32501 }, -- Netherfury Belt : =ds=#sr# 340 : nil
				{ 112, 25692,                       32502 }, -- Netherfury Leggings : =ds=#sr# 340 : nil
				{ 113, 29975,                       36079 }, -- Golden Dragonstrike Breastplate : =ds=#sr# 330 : nil
				{ 114, 25657,                       32465 }, -- Felscale Breastplate : =ds=#sr# 335 : nil
				{ 115, 25659,                       32469 }, -- Scaled Draenic Boots : =ds=#sr# 335 : nil
				{ 116, 25660,                       32468 }, -- Scaled Draenic Vest : =ds=#sr# 325 : nil
				{ 117, 25656,                       32464 }, -- Felscale Pants : =ds=#sr# 320 : nil
				{ 118, 25661,                       32467 }, -- Scaled Draenic Gloves : =ds=#sr# 310 : nil
				{ 119, 25655,                       32463 }, -- Felscale Boots : =ds=#sr# 310 : nil
				{ 120, 25662,                       32466 }, -- Scaled Draenic Pants : =ds=#sr# 300 : nil
				{ 121, 25654,                       32462 }, -- Felscale Gloves : =ds=#sr# 300 : nil
				{ 201, "INV_misc_monsterscales_03", nil,  GetSpellInfo(10656), nil },
				{ 202, 29515,                       35575 }, -- Ebon Netherscale Breastplate : =ds=#sr# 375 : No longer available
				{ 203, 29517,                       35577 }, -- Ebon Netherscale Bracers : =ds=#sr# 375 : No longer available
				{ 204, 29516,                       35576 }, -- Ebon Netherscale Belt : =ds=#sr# 375 : No longer available
				{ 206, 29519,                       35580 }, -- Netherstrike Breastplate : =ds=#sr# 375 : No longer available
				{ 207, 29521,                       35584 }, -- Netherstrike Bracers : =ds=#sr# 375 : No longer available
				{ 208, 29520,                       35582 }, -- Netherstrike Belt : =ds=#sr# 375 : No longer available
			},
			[CLASSIC_DIFF] = {
				{ 1,   22665, 28224 }, -- Icy Scale Bracers : =ds=#sr# 300 : nil
				{ 2,   22664, 28222 }, -- Icy Scale Breastplate : =ds=#sr# 300 : nil
				{ 3,   22666, 28223 }, -- Icy Scale Gauntlets : =ds=#sr# 300 : nil
				{ 4,   20380, 24703 }, -- Dreamscale Breastplate : =ds=#sr# 300 : nil
				{ 5,   19157, 23708 }, -- Chromatic Gauntlets : =ds=#sr# 300 : nil
				{ 6,   16984, 20855 }, -- Black Dragonscale Boots : =ds=#sr# 300 : nil
				{ 7,   18508, 22923 }, -- Swift Flight Bracers : =ds=#sr# 300 : nil
				{ 8,   20476, 24849 }, -- Sandstalker Bracers : =ds=#sr# 300 : nil
				{ 9,   20478, 24851 }, -- Sandstalker Breastplate : =ds=#sr# 300 : nil
				{ 10,  20477, 24850 }, -- Sandstalker Gauntlets : =ds=#sr# 300 : nil
				{ 11,  20481, 24846 }, -- Spitfire Bracers : =ds=#sr# 300 : nil
				{ 12,  20479, 24848 }, -- Spitfire Breastplate : =ds=#sr# 300 : nil
				{ 13,  20480, 24847 }, -- Spitfire Gauntlets : =ds=#sr# 300 : nil
				{ 14,  15047, 19054 }, -- Red Dragonscale Breastplate : =ds=#sr# 300 : nil
				{ 15,  20295, 24654 }, -- Blue Dragonscale Leggings : =ds=#sr# 300 : nil
				{ 16,  15052, 19107 }, -- Black Dragonscale Leggings : =ds=#sr# 300 : nil
				{ 17,  15051, 19094 }, -- Black Dragonscale Shoulders : =ds=#sr# 300 : nil
				{ 18,  15081, 19100 }, -- Heavy Scorpid Shoulders : =ds=#sr# 300 : nil
				{ 19,  15049, 19089 }, -- Blue Dragonscale Shoulders : =ds=#sr# 295 : nil
				{ 20,  15080, 19088 }, -- Heavy Scorpid Helm : =ds=#sr# 295 : nil
				{ 21,  15050, 19085 }, -- Black Dragonscale Breastplate : =ds=#sr# 290 : nil
				{ 22,  15079, 19075 }, -- Heavy Scorpid Leggings : =ds=#sr# 285 : nil
				{ 23,  15048, 19077 }, -- Blue Dragonscale Breastplate : =ds=#sr# 285 : nil
				{ 24,  20296, 24655 }, -- Green Dragonscale Gauntlets : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 25,  15082, 19070 }, -- Heavy Scorpid Belt : =ds=#sr# 280 : =ds=AtlasLoot["World Drop"]
				{ 26,  15078, 19064 }, -- Heavy Scorpid Gauntlets : =ds=#sr# 275 : =ds=AtlasLoot["Drop"]
				{ 27,  15046, 19060 }, -- Green Dragonscale Leggings : =ds=#sr# 270 : =ds=AtlasLoot["Drop"]
				{ 28,  15076, 19051 }, -- Heavy Scorpid Vest : =ds=#sr# 265 : =ds=AtlasLoot["Drop"]
				{ 29,  29971, 36076 }, -- Dragonstrike Leggings : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 30,  15045, 19050 }, -- Green Dragonscale Breastplate : =ds=#sr# 260 : =ds=AtlasLoot["Vendor"]
				{ 101, 8367,  10650 }, -- Dragonscale Breastplate : =ds=#sr# 255 : =ds=AtlasLoot["Trainer"]
				{ 102, 15077, 19048 }, -- Heavy Scorpid Bracers : =ds=#sr# 255 : =ds=AtlasLoot["Vendor"]
				{ 103, 8208,  10570 }, -- Tough Scorpid Helm : =ds=#sr# 250 : =ds=AtlasLoot["Drop"]
				{ 104, 8206,  10568 }, -- Tough Scorpid Leggings : =ds=#sr# 245 : =ds=AtlasLoot["Drop"]
				{ 105, 8207,  10564 }, -- Tough Scorpid Shoulders : =ds=#sr# 240 : =ds=AtlasLoot["Drop"]
				{ 106, 8209,  10554 }, -- Tough Scorpid Boots : =ds=#sr# 235 : =ds=AtlasLoot["Drop"]
				{ 107, 8185,  10556 }, -- Turtle Scale Leggings : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 108, 8191,  10552 }, -- Turtle Scale Helm : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 109, 8347,  10619 }, -- Dragonscale Gauntlets : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 110, 8204,  10542 }, -- Tough Scorpid Gloves : =ds=#sr# 225 : =ds=AtlasLoot["Drop"]
				{ 111, 8205,  10533 }, -- Tough Scorpid Bracers : =ds=#sr# 220 : =ds=AtlasLoot["Drop"]
				{ 112, 8203,  10525 }, -- Tough Scorpid Breastplate : =ds=#sr# 220 : =ds=AtlasLoot["Drop"]
				{ 113, 8198,  10518 }, -- Turtle Scale Bracers : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 114, 8189,  10511 }, -- Turtle Scale Breastplate : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 115, 8187,  10509 }, -- Turtle Scale Gloves : =ds=#sr# 205 : =ds=AtlasLoot["World Drop"]
			},
		},
		{ --LeatherWeapons
			name = AL["Weapons"],
			[BFA_DIFF] = {
				{ 1,  154162, 256779 }, -- Mistscale Knuckles
				{ 2,  154162, 256780 }, -- Mistscale Knuckles
				{ 3,  154162, 256781 }, -- Mistscale Knuckles

				{ 5,  154163, 256782 }, -- Hardened Tempest Knuckles
				{ 6,  154163, 256783 }, -- Hardened Tempest Knuckles
				{ 7,  154163, 256784 }, -- Hardened Tempest Knuckles

				{ 16, 154159, 256787 }, -- Recurve Bow of the Strands
				{ 17, 154159, 256788 }, -- Recurve Bow of the Strands
				{ 18, 154159, 256789 }, -- Recurve Bow of the Strands

				{ 20, 159896, 269552 }, -- Honorable Combatant's Bow
				{ 21, 159896, 269553 }, -- Honorable Combatant's Bow
				{ 22, 159896, 269554 }, -- Honorable Combatant's Bow

				{ 9,  154161, 256778 }, -- Coarse Leather Cestus
				{ 24, 154160, 256777 }, -- Shimmerscale Striker
			},
		},
		{ --LeatherCloaks
			name = AL["Cloaks"],
			[WOD_DIFF] = {
				{ 1,  "116175:Stage6", 187513 },                        -- Brilliant Burnished Cloak (Stage 6)
				{ 2,  "116175:Stage5", 187489 },                        -- Brilliant Burnished Cloak (Stage 5)
				{ 3,  "116175:Stage4", 171286 },                        -- Brilliant Burnished Cloak (Stage 4)
				{ 4,  "116175:Stage3", 171286 },                        -- Brilliant Burnished Cloak (Stage 3)
				{ 5,  "116175:Stage2", 171286 },                        -- Brilliant Burnished Cloak (Stage 2)
				{ 6,  "116175:Stage1", 171269, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Brilliant Burnished Cloak (Stage 1) (Sold, Ashran)

				{ 8,  "116174:Stage6", 187513 },                        -- Nimble Burnished Cloak (Stage 6)
				{ 9,  "116174:Stage5", 187489 },                        -- Nimble Burnished Cloak (Stage 5)
				{ 10, "116174:Stage4", 171286 },                        -- Nimble Burnished Cloak (Stage 4)
				{ 11, "116174:Stage3", 171286 },                        -- Nimble Burnished Cloak (Stage 3)
				{ 12, "116174:Stage2", 171286 },                        -- Nimble Burnished Cloak (Stage 2)
				{ 13, "116174:Stage1", 171268, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Nimble Burnished Cloak (Stage 1) (Sold, Ashran)

				{ 16, "116171:Stage6", 187513 },                        -- Powerful Burnished Cloak (Stage 6)
				{ 17, "116171:Stage5", 187489 },                        -- Powerful Burnished Cloak (Stage 5)
				{ 18, "116171:Stage4", 171286 },                        -- Powerful Burnished Cloak (Stage 4)
				{ 19, "116171:Stage3", 171286 },                        -- Powerful Burnished Cloak (Stage 3)
				{ 20, "116171:Stage2", 171286 },                        -- Powerful Burnished Cloak (Stage 2)
				{ 21, "116171:Stage1", 171267, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Powerful Burnished Cloak (Stage 1) (Sold, Ashran)
			},
			[NORMAL_DIFF] = {
				{ 1,  85852, 124637 }, -- Quick Strike Cloak : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 2,  85851, 124635 }, -- Cloak of the Mists : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 3,  85853, 124636 }, -- Stormscale Drape : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 4,  56549, 78475 }, -- Razor-Edged Cloak : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 5,  56548, 78476 }, -- Twilight Dragonscale Cloak : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 6,  75076, 99536 }, -- Vicious Fur Cloak : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 7,  75077, 99535 }, -- Vicious Hide Cloak : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 8,  56518, 78438 }, -- Cloak of Beasts : =ds=#sr# 495 : =ds=AtlasLoot["Trainer"]
				{ 9,  56519, 78439 }, -- Cloak of War : =ds=#sr# 495 : =ds=AtlasLoot["Trainer"]
				{ 10, 56489, 78405 }, -- Hardened Scale Cloak : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 11, 56480, 78380 }, -- Savage Cloak : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 12, 43566, 60637 }, -- Ice Striker's Cloak : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 13, 41238, 55199 }, -- Cloak of Tormented Skies : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 14, 38441, 60631 }, -- Cloak of Harsh Winds : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
				{ 15, 33122, 42546 }, -- Cloak of Darkness : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Violet Eye"] - AtlasLoot["Exalted"]
				{ 16, 18509, 22926 }, -- Chromatic Cloak : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Dire Maul"]
				{ 17, 18511, 22928 }, -- Shifting Cloak : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Dire Maul"]
				{ 18, 15138, 19093 }, -- Onyxia Scale Cloak : =ds=#sr# 300 : QUESTID: A 7497 / H 7493
				{ 19, 8215,  10574 }, -- Wild Leather Cloak : =ds=#sr# 250 : No longer available
				{ 20, 8216,  10562 }, -- Big Voodoo Cloak : =ds=#sr# 240 : =ds=AtlasLoot["World Drop"]
				{ 21, 5965,  7153 }, -- Guardian Cloak : =ds=#sr# 185 : =ds=AtlasLoot["World Drop"]
				{ 22, 7377,  9198 }, -- Frost Leather Cloak : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
				{ 23, 3719,  3760 }, -- Hillman's Cloak : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 24, 2316,  2168 }, -- Dark Leather Cloak : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 25, 7283,  9070 }, -- Black Whelp Cloak : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Redridge Mountains"]
				{ 26, 6466,  7953 }, -- Deviate Scale Cloak : =ds=#sr# 90 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Northern Barrens"]
				{ 27, 2308,  2159 }, -- Fine Leather Cloak : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
				{ 28, 2310,  2162 }, -- Embossed Leather Cloak : =ds=#sr# 60 : =ds=AtlasLoot["Trainer"]
				{ 29, 7276,  9058 }, -- Handstitched Leather Cloak : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --LeatherArmorEnhancements
			name = AL["Armor Enhancements"],
			[TWW_DIFF] = {
				{ 1, 219912, 444104 },                           -- Dual Layered Armor Kit
				{ 2, 219906, 444103,  [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Defender's Armor Kit
				{ 3, 219909, 444102,  [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Stormbound Armor Kit
				{ 4, 235335, 1216520, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Charged Armor Kit
			},
			[WOD_DIFF] = {
				{ 1, 128014, 171286, [PRICE_EXTRA_ITTYPE] = "118721:5" }, -- Burnished Essence (Sold, Ashran)
				{ 2, 127712, 187489, [PRICE_EXTRA_ITTYPE] = "110609:60" }, -- Mighty Burnished Essence (Sold, Ashran)
				{ 3, 127730, 187513, [PRICE_EXTRA_ITTYPE] = "110609:60" }, -- Savage Burnished Essence (Sold, Garrison)
				{ 5, 116170, 171266, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Leather Refurbishing Kit (Sold, Ashran)
			},
			[MOP_DIFF] = {
				{ 1, 83765, 124127 }, -- Angerhide Leg Armor : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 2, 83763, 124128 }, -- Ironscale Leg Armor : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 3, 83764, 124129 }, -- Shadowleather Leg Armor : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 5, 85570, 124125 }, -- Toughened Leg Armor : =ds=#sr# 555 : =ds=AtlasLoot["Trainer"]
				{ 6, 85569, 124124 }, -- Sha-Touched Leg Armor : =ds=#sr# 545 : =ds=AtlasLoot["Trainer"]
				{ 7, 85568, 124126 }, -- Brutal Leg Armor : =ds=#sr# 535 : =ds=AtlasLoot["Trainer"]
				{ 9, 85559, 124628 }, -- Sha Armor Kit : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  56551, 78478 }, -- Charscale Leg Armor : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 2,  56550, 78477 }, -- Dragonscale Leg Armor : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 3,  71720, 101599 }, -- Drakehide Leg Armor : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "10 #heavysavageleather#"
				{ 5,  56517, 78437 }, -- Heavy Savage Armor Kit : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 7,  56503, 78420 }, -- Twilight Leg Armor : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 8,  56502, 78419 }, -- Scorched Leg Armor : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 10, 56477, 78379 }, -- Savage Armor Kit : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 44963, 62448 }, -- Earthen Leg Armor : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 2, 38373, 50965 }, -- Frosthide Leg Armor : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 3, 38374, 50967 }, -- Icescale Leg Armor : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 5, 38371, 50964 }, -- Jormungar Leg Armor : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 6, 38372, 50966 }, -- Nerubian Leg Armor : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 8, 38376, 50963 }, -- Heavy Borean Armor Kit : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  29536, 35557 }, -- Nethercleft Leg Armor : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Exalted"]
				{ 2,  29535, 35554 }, -- Nethercobra Leg Armor : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["Honor Hold"] / Thrallmar - AtlasLoot["Exalted"]
				{ 4,  34207, 44770 }, -- Glove Reinforcements : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 5,  38375, 50962 }, -- Borean Armor Kit : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 6,  34330, 44970 }, -- Heavy Knothide Armor Kit : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 8,  29534, 35555 }, -- Clefthide Leg Armor : =ds=#sr# 335 : =ds=AtlasLoot_IngameLocales["Cenarion Expedition"] - AtlasLoot["Honored"]
				{ 9,  29533, 35549 }, -- Cobrahide Leg Armor : =ds=#sr# 335 : =ds=AtlasLoot_IngameLocales["Honor Hold"] / Thrallmar - AtlasLoot["Honored"]
				{ 16, 25652, 32458 }, -- Magister's Armor Kit : =ds=#sr# 325 : =ds=AtlasLoot_IngameLocales["The Scryers"] - AtlasLoot["Revered"]
				{ 17, 25651, 32457 }, -- Vindicator's Armor Kit : =ds=#sr# 325 : =ds=AtlasLoot_IngameLocales["The Aldor"] - AtlasLoot["Revered"]
				{ 18, 18251, 22727 }, -- Core Armor Kit : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Molten Core"]
				{ 19, 25650, 32456 }, -- Knothide Armor Kit : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1, 15564, 19058 }, -- Rugged Armor Kit : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 2, 8173,  10487 }, -- Thick Armor Kit : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 3, 4265,  3780 }, -- Heavy Armor Kit : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 4, 2313,  2165 }, -- Medium Armor Kit : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 5, 2304,  2152 }, -- Light Armor Kit : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ -- Profession Equipment
			name = AL["Profession Equipment"],
			[TWW_DIFF] = {
				{ 1,  219866, 444105 },                                   -- Apothecary's Cap
				{ 2,  219873, 444107 },                                   -- Steelsmith's Apron
				{ 3,  219875, 444114 },                                   -- Gemcutter's Apron
				{ 4,  219864, 444110 },                                   -- Scrapsmith's Gloves
				{ 5,  219865, 444116 },                                   -- Hideshaper's Cover
				{ 6,  219862, 444118 },                                   -- Hideseeker's Pack
				{ 7,  219861, 444112 },                                   -- Gardener's Basket
				{ 8,  219863, 444120 },                                   -- Hideseeker's Hat
				{ 16, 219871, 444117, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Arathi Leatherworker's Smock
				{ 17, 219870, 444111, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Charged Scrapmaster's Gauntlets
				{ 18, 219869, 444121, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Deep Tracker's Cap
				{ 19, 219868, 444119, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Deep Tracker's Pack
				{ 20, 219874, 444108, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Earthen Forgemaster's Apron
				{ 21, 219876, 444115, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Earthen Jeweler's Cover
				{ 22, 219872, 444106, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Nerubian Alchemist's Hat
				{ 23, 219867, 444113, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Stonebound Herbalist's Pack
			},
		},
		{ --LeatherMiscellaneous
			name = AL["Miscellaneous"],
			[TWW_DIFF] = {
				{ 1,  219905, 444122 }, -- Thunderous Drums
				{ 3,  219495, 441460 }, -- Blessed Weapon Grip
				{ 4,  219504, 441461 }, -- Writhing Armor Banding
				{ 6,  219880, 444075 }, -- Carapace-Backed Hide
				{ 7,  219898, 444086 }, -- Chitin Armor Banding
				{ 8,  219883, 444076 }, -- Crystalfused Hide
				{ 9,  219892, 444079 }, -- Leyfused Hide
				{ 10, 219889, 444078 }, -- Sporecoated Hide
				{ 11, 219901, 444087 }, -- Storm-Touched Weapon Wrap
				{ 12, 219886, 444077 }, -- Writhing Hide
			},
			[BFA_DIFF] = {
				{ 1,  162122, 278423 }, -- Amber Rallying Horn
				{ 16, 162116, 276256 }, -- Tempest Hide Pouch

				{ 3,  154167, 256791 }, -- Drums of the Maelstrom

				{ 5,  154169, 256793 }, -- Shimmerscale Diving Helmet
				{ 18, 154168, 256792 }, -- Shimmerscale Diving Suit

				{ 7,  154166, 256790 }, -- Coarse Leather Barding
			},
			[LEGION_DIFF] = {
				{ 1,  142406, 230936 }, -- Drums of the Mountain
				{ 2,  142406, 230954 }, -- Drums of the Mountain
				{ 3,  142406, 230955 }, -- Drums of the Mountain
				{ 5,  129956, 194779 }, -- Leather Love Seat
				{ 6,  129958, 194778 }, -- Leather Pet Leash
				{ 7,  129961, 194775 }, -- Flaming Hoop
				{ 8,  129960, 194776 }, -- Leather Pet Bed
				{ 10, 131746, 196648 }, -- Stonehide Leather Barding
				{ 16, 129962, 194780 }, -- Elderhorn Riding Harness
			},
			[WOD_DIFF] = {
				{ 1, 108883, 171291, [PRICE_EXTRA_ITTYPE] = "118721:5" }, -- Riding Harness (Sold, Ashran)
				{ 3, 116261, 171290, [PRICE_EXTRA_ITTYPE] = "118721:5" }, -- Burnished Inscription Bag (Sold, Ashran)
				{ 4, 116259, 171288, [PRICE_EXTRA_ITTYPE] = "118721:5" }, -- Burnished Leather Bag (Sold, Ashran)
				{ 5, 116260, 171289, [PRICE_EXTRA_ITTYPE] = "118721:5" }, -- Burnished Mining Bag (Sold, Ashran)
				{ 7, 120257, 178208, [PRICE_EXTRA_ITTYPE] = "118721:1" }, -- Drums of Fury (Sold, Ashran)
				{ 9, 118721, 176089 },                        -- Secrets of Draenor Leatherworking (Learnt by item 115358)
			},
			[NORMAL_DIFF] = {
				{ 1,  102351,                               146613 }, -- Drums of Rage : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 2,  95536,                                140185 }, -- Magnificent Hide Pack : =ds=#sr# 595 : =ds=AtlasLoot["Discovery"]: spell140040
				{ 3,  70136,                                100583 }, -- Royal Scribe's Satchel : =ds=#sr# 510 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 4,  70137,                                100586 }, -- Triple-Reinforced Mining Bag : =ds=#sr# 500 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 5,  49633,                                69386 }, -- Drums of Forgotten Kings : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 6,  49634,                                69388 }, -- Drums of the Wild : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 7,  38347,                                50971 }, -- Mammoth Mining Bag : =ds=#sr# 415 : =ds=AtlasLoot_IngameLocales["The Sons of Hodir"] - AtlasLoot["Honored"]
				{ 8,  44446,                                60643 }, -- Pack of Endless Pockets : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 9,  38399,                                50970 }, -- Trapper's Traveling Pack : =ds=#sr# 415 : =ds=AtlasLoot_IngameLocales["The Kalu'ak"] - AtlasLoot["Revered"]
				{ 10, 29532,                                35538 }, -- Drums of Panic : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["Keepers of Time"] - AtlasLoot["Honored"]
				{ 11, 29529,                                35543 }, -- Drums of Battle : =ds=#sr# 365 : =ds=AtlasLoot_IngameLocales["The Sha'tar"] - AtlasLoot["Honored"]
				{ 12, 34105,                                44359 }, -- Quiver of a Thousand Feathers : =ds=#sr# 360 : nil
				{ 16, 34490,                                45117 }, -- Bag of Many Hides : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Terokkar Forest"]
				{ 17, 25653,                                32461 }, -- Riding Crop : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Old Hillsbrad Foothills"]
				{ 18, 29531,                                35539 }, -- Drums of Restoration : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Kurenai"] / The Mag'har - AtlasLoot["Honored"]
				{ 19, 29530,                                35544 }, -- Drums of Speed : =ds=#sr# 345 : =ds=AtlasLoot_IngameLocales["Kurenai"] / The Mag'har - AtlasLoot["Honored"]
				{ 20, 29528,                                35540 }, -- Drums of War : =ds=#sr# 340 : =ds=AtlasLoot["Trainer"]
				{ 21, 29540,                                35530 }, -- Reinforced Mining Bag : =ds=#sr# 325 : =ds=AtlasLoot_IngameLocales["Kurenai"] / The Mag'har - AtlasLoot["Honored"]
				{ 22, 34482,                                45100 }, -- Leatherworker's Satchel : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 23, 25679,                                32482 }, -- Comfortable Insoles : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["The Exodar"] / Silvermoon City
				{ 24, 34086,                                44953 }, -- Winter Boots : =ds=#sr# 285 : =ds=AL["Feast of Winter Veil"] : AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Ironforge"] / Orgrimmar
				{ 25, 18258,                                22815 }, -- Gordok Ogre Suit : =ds=#sr# 275 : =ds=AtlasLoot["Old Quest Reward"]
				{ 26, 18662,                                23190 }, -- Heavy Leather Ball : =ds=#sr# 150 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Ironforge"] / Orgrimmar
				{ 27, [ATLASLOOT_IT_HORDE] = { 5081, 5244 } }, -- Kodo Hide Bag : =ds=#sr# 40 : #QUESTID:769#
			},
		},
		{ --LeatherLeather
			name = AL["Leather"],
			[BFA_DIFF] = {
				{ 1, 152542, 272278 }, -- Hardened Tempest Hide
			},
			[NORMAL_DIFF] = {
				{ 1,  110611, 171391, [ATLASLOOT_IT_AMOUNT1] = "8+" }, -- Burnished Leather (Learnt by item 115358)
				{ 2,  110611, 182121, [PRICE_EXTRA_ITTYPE] = "110609:60" }, -- Burnished Leather (Sold, Garrison)
				{ 4,  98617,  146923 },                         -- Accelerated Hardened Magnificent Hide : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 5,  98617,  142976 },                         -- Hardened Magnificent Hide : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 6,  72163,  131865 },                         -- Magnificent Hide : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 7,  72163,  140040 },                         -- Magnificence of Leather : =ds=#sr# 500 : =ds=AtlasLoot["World Drop"]
				{ 8,  72163,  140041 },                         -- Magnificence of Scales : =ds=#sr# 500 : =ds=AtlasLoot["World Drop"]
				{ 9,  72120,  124627 },                         -- Exotic Leather : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 10, 56516,  78436 },                          -- Heavy Savage Leather : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 11, 52976,  84950 },                          -- Savage Leather : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 12, 38425,  50936 },                          -- Heavy Borean Leather : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 13, 33568,  64661 },                          -- Borean Leather : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 14, 23793,  32455 },                          -- Heavy Knothide Leather : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 16, 21887,  32454 },                          -- Knothide Leather : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 17, 15407,  19047 },                          -- Cured Rugged Hide : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 18, 8170,   22331 },                          -- Rugged Leather : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 19, 8172,   10482 },                          -- Cured Thick Hide : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 20, 4304,   20650 },                          -- Thick Leather : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 21, 4236,   3818 },                           -- Cured Heavy Hide : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 22, 4234,   20649 },                          -- Heavy Leather : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 23, 4233,   3817 },                           -- Cured Medium Hide : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 24, 2319,   20648 },                          -- Medium Leather : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 25, 4231,   3816 },                           -- Cured Light Hide : =ds=#sr# 35 : =ds=AtlasLoot["Trainer"]
				{ 26, 2318,   2881 },                           -- Light Leather : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
	}
}

data["Mining"] = {
	name = C_Spell.GetSpellName(2575),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ -- BFA all
			name = EXPANSION_NAME7,
			[BFA_DIFF] = {
				{ 1,  152512, 253333 }, -- Monelite Deposit
				{ 2,  152512, 253334 }, -- Monelite Deposit
				{ 3,  152512, 253335 }, -- Monelite Deposit
				{ 5,  152579, 253336 }, -- Storm Silver Deposit
				{ 6,  152579, 253337 }, -- Storm Silver Deposit
				{ 7,  152579, 253338 }, -- Storm Silver Deposit
				{ 9,  152513, 253339 }, -- Platinum Deposit
				{ 10, 152513, 253340 }, -- Platinum Deposit
				{ 11, 152513, 253341 }, -- Platinum Deposit
				{ 16, 152512, 253342 }, -- Monelite Seam
				{ 17, 152512, 253343 }, -- Monelite Seam
				{ 18, 152512, 253344 }, -- Monelite Seam
				{ 20, 152579, 253345 }, -- Storm Silver Seam
				{ 21, 152579, 253346 }, -- Storm Silver Seam
				{ 22, 152579, 253347 }, -- Storm Silver Seam
			}
		},
		{ -- Legion all
			name = EXPANSION_NAME6,
			[LEGION_DIFF] = {
				{ 1,   151564, 247848 }, -- Empyrium Deposit
				{ 2,   151564, 247849 }, -- Empyrium Deposit
				{ 3,   151564, 247850 }, -- Empyrium Deposit
				{ 5,   123919, 184492 }, -- Felslate Deposit
				{ 6,   123919, 184493 }, -- Felslate Deposit
				{ 7,   123919, 184494 }, -- Felslate Deposit
				{ 9,   123918, 184454 }, -- Leystone Deposit
				{ 10,  123918, 184456 }, -- Leystone Deposit
				{ 11,  123918, 184457 }, -- Leystone Deposit
				{ 13,  123918, 184488 }, -- Living Leystone
				{ 14,  123918, 184489 }, -- Living Leystone
				{ 15,  123918, 184490 }, -- Living Leystone
				{ 16,  151564, 247851 }, -- Empyrium Seam
				{ 17,  151564, 247852 }, -- Empyrium Seam
				{ 18,  151564, 247853 }, -- Empyrium Seam
				{ 20,  123919, 184496 }, -- Felslate Seam
				{ 21,  123919, 184497 }, -- Felslate Seam
				{ 22,  123919, 184498 }, -- Felslate Seam
				{ 24,  123918, 184484 }, -- Leystone Seam
				{ 25,  123918, 184485 }, -- Leystone Seam
				{ 26,  123918, 184486 }, -- Leystone Seam
				{ 28,  123919, 184500 }, -- Living Felslate
				{ 29,  123919, 184501 }, -- Living Felslate
				{ 30,  123919, 184502 }, -- Living Felslate
				{ 101, 124444, 184504 }, -- Infernal Brimstone
				{ 102, 124444, 184505 }, -- Infernal Brimstone
				{ 103, 124444, 191970 }, -- Infernal Brimstone
			}
		},
		{ -- MoP all
			name = EXPANSION_NAME4,
			[MOP_DIFF] = {
				{ 1,  72096, 102165 }, -- Smelt Ghost Iron
				{ 16, 72095, 102167 }, -- Smelt Trillium
			}
		},
		{ -- Cata all
			name = EXPANSION_NAME3,
			[CATA_DIFF] = {
				{ 1,  51950, 74529 }, -- Smelt Pyrite
				{ 3,  52186, 74530 }, -- Smelt Elementium
				{ 4,  53039, 74537 }, -- Smelt Hardened Elementium
				{ 16, 54849, 84038 }, -- Smelt Obsidium
			}
		},
		{ -- WotLK all
			name = EXPANSION_NAME2,
			[WOTLK_DIFF] = {
				{ 1,  36913, 49258 }, -- Smelt Saronite
				{ 3,  36916, 49252 }, -- Smelt Cobalt
				{ 16, 41163, 55211 }, -- Smelt Titanium
				{ 18, 37663, 55208 }, -- Smelt Titansteel
			}
		},
		{ -- BC all
			name = EXPANSION_NAME1,
			[BC_DIFF] = {
				{ 1,  22573, 35750, [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Earth Shatter
				{ 3,  23446, 29358 },                  -- Smelt Adamantite
				{ 4,  23573, 29686 },                  -- Smelt Hardened Adamantite
				{ 16, 22574, 35751, [ATLASLOOT_IT_AMOUNT1] = 10 }, -- Fire Sunder
				{ 18, 35128, 46353 },                  -- Smelt Hardened Khorium
				{ 19, 23447, 29359 },                  -- Smelt Eternium
				{ 20, 23448, 29360 },                  -- Smelt Felsteel
				{ 21, 23449, 29361 },                  -- Smelt Khorium
				{ 22, 23445, 29356 },                  -- Smelt Fel Iron
			}
		},
		{ -- Classic all
			name = EXPANSION_NAME0,
			[CLASSIC_DIFF] = {
				{ 1,  17771, 22967 },                -- Smelt Enchanted Elementium
				{ 3,  3577,  3308 },                 -- Smelt Gold
				{ 4,  2842,  2658 },                 -- Smelt Silver
				{ 6,  2840,  2657 },                 -- Smelt Copper
				{ 7,  3576,  3304 },                 -- Smelt Tin
				{ 8,  2841,  2659, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Smelt Bronze
				{ 9,  12359, 16153 },                -- Smelt Thorium
				{ 11, 12655, 70524 },                -- Enchanted Thorium Bar
				{ 18, 6037,  10098 },                -- Smelt Truesilver
				{ 21, 3859,  3569 },                 -- Smelt Steel
				{ 22, 3575,  3307 },                 -- Smelt Iron
				{ 23, 3860,  10097 },                -- Smelt Mithril
				{ 26, 11371, 14891 },                -- Smelt Dark Iron
			}
		},
	}
}

data["Tailoring"] = {
	name = C_Spell.GetSpellName(3908),
	ContentType = PRIMPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --TailoringArmor
			name = AL["Armor"],
			[TWW_DIFF] = {
				{ 1,   222840, 446963 },                          -- Pioneer's Perfected Gloves
				{ 2,   222839, 446962 },                          -- Pioneer's Perfected Mantle
				{ 3,   222836, 446959 },                          -- Pioneer's Perfected Hood
				{ 4,   222835, 446958 },                          -- Pioneer's Perfected Cloak
				{ 5,   222838, 446961 },                          -- Pioneer's Perfected Leggings
				{ 6,   222834, 446957 },                          -- Pioneer's Perfected Cord
				{ 7,   222837, 446960 },                          -- Pioneer's Cloth Robe
				{ 8,   222832, 446955 },                          -- Pioneer's Cloth Slippers
				{ 9,   222833, 446956 },                          -- Pioneer's Cloth Cuffs
				{ 10,  222812, 446935 },                          -- Cool Sunset Bracers
				{ 11,  222809, 446932 },                          -- Gloves of the Woven Dusk
				{ 12,  222810, 446933 },                          -- Slippers of the Woven Dusk
				{ 13,  222811, 446934 },                          -- Warm Sunrise Bracers
				{ 14,  222807, 446930 },                          -- Grips of the Woven Dawn
				{ 15,  222808, 446931 },                          -- Treads of the Woven Dawn
				{ 16,  222817, 446940 },                          -- Consecrated Cloak
				{ 17,  222816, 446939 },                          -- Consecrated Cord
				{ 18,  222815, 446938 },                          -- Consecrated Cuffs
				{ 19,  222822, 446945 },                          -- Consecrated Gloves
				{ 20,  222818, 446941 },                          -- Consecrated Hood
				{ 21,  222820, 446943 },                          -- Consecrated Leggings
				{ 22,  222821, 446944 },                          -- Consecrated Mantle
				{ 23,  222819, 446942 },                          -- Consecrated Robe
				{ 24,  222814, 446937 },                          -- Consecrated Slippers
				{ 25,  217120, 438892, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Bands
				{ 26,  217125, 438897, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Cloak
				{ 27,  217122, 438894, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Gloves
				{ 28,  217121, 438893, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Hood
				{ 29,  217117, 438889, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Leggings
				{ 30,  217124, 438896, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Sash
				{ 101, 217118, 438890, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Shoulderpads
				{ 102, 217119, 438891, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Treads
				{ 103, 217123, 438895, [PRICE_EXTRA_ITTYPE] = "honor:7500" }, -- Algari Competitor's Cloth Tunic
			},
			[BFA_DIFF] = {
				{ 1,   162476, 257121 }, -- Emblazoned Deep Sea Gloves
				{ 16,  162478, 257124 }, -- Emblazoned Deep Sea Breeches

				{ 3,   162475, 257120 }, -- Imbued Deep Sea Gloves
				{ 18,  162477, 257123 }, -- Imbued Deep Sea Breeches

				{ 5,   154693, 257118 }, -- Embroidered Deep Sea Gloves
				{ 20,  154694, 257122 }, -- Embroidered Deep Sea Breeches

				{ 7,   154700, 257114 }, -- Embroidered Deep Sea Cloak
				{ 8,   154700, 257115 }, -- Embroidered Deep Sea Cloak
				{ 9,   154700, 257116 }, -- Embroidered Deep Sea Cloak

				{ 11,  154688, 257097 }, -- Tidespray Linen Hood
				{ 12,  154690, 257101 }, -- Tidespray Linen Spaulders
				{ 13,  154697, 257107 }, -- Tidespray Linen Cloak
				{ 14,  154685, 257104 }, -- Tidespray Linen Robe
				{ 15,  154692, 257103 }, -- Tidespray Linen Bracers
				{ 26,  154687, 257096 }, -- Tidespray Linen Mittens
				{ 27,  154691, 257102 }, -- Tidespray Linen Belt
				{ 28,  154689, 257099 }, -- Tidespray Linen Pants
				{ 29,  154686, 257095 }, -- Tidespray Linen Sandals


				{ 101, 159917, 269596 }, -- Honorable Combatant's Satin Cloak
				{ 102, 159917, 269597 }, -- Honorable Combatant's Satin Cloak
				{ 103, 159917, 269598 }, -- Honorable Combatant's Satin Cloak

				{ 105, 159916, 269611 }, -- Honorable Combatant's Satin Bracers
				{ 106, 159916, 269612 }, -- Honorable Combatant's Satin Bracers
				{ 107, 159916, 269613 }, -- Honorable Combatant's Satin Bracers

				{ 116, 159913, 269602 }, -- Honorable Combatant's Satin Mittens
				{ 117, 159913, 269603 }, -- Honorable Combatant's Satin Mittens
				{ 118, 159913, 269604 }, -- Honorable Combatant's Satin Mittens

				{ 120, 159915, 269608 }, -- Honorable Combatant's Satin Belt
				{ 121, 159915, 269609 }, -- Honorable Combatant's Satin Belt
				{ 122, 159915, 269610 }, -- Honorable Combatant's Satin Belt

				{ 124, 159914, 269605 }, -- Honorable Combatant's Satin Pants
				{ 125, 159914, 269606 }, -- Honorable Combatant's Satin Pants
				{ 126, 159914, 269607 }, -- Honorable Combatant's Satin Pants

				{ 128, 159912, 269599 }, -- Honorable Combatant's Satin Boots
				{ 129, 159912, 269600 }, -- Honorable Combatant's Satin Boots
				{ 130, 159912, 269601 }, -- Honorable Combatant's Satin Boots
			},
			[LEGION_DIFF] = {
				{ 1,   127034, 186109 }, -- Imbued Silkweave Flourish
				{ 2,   127034, 186110 }, -- Imbued Silkweave Flourish
				{ 3,   127034, 186111 }, -- Imbued Silkweave Flourish
				{ 5,   127033, 186106 }, -- Imbued Silkweave Shade
				{ 6,   127033, 186107 }, -- Imbued Silkweave Shade
				{ 7,   127033, 186108 }, -- Imbued Silkweave Shade
				{ 9,   127020, 186115 }, -- Imbued Silkweave Drape
				{ 10,  127020, 186116 }, -- Imbued Silkweave Drape
				{ 11,  127020, 186117 }, -- Imbued Silkweave Drape
				{ 13,  127019, 186112 }, -- Imbued Silkweave Cover
				{ 14,  127019, 186113 }, -- Imbued Silkweave Cover
				{ 15,  127019, 186114 }, -- Imbued Silkweave Cover
				{ 16,  127017, 186100 }, -- Silkweave Drape
				{ 17,  127032, 186094 }, -- Silkweave Flourish
				{ 18,  127031, 186091 }, -- Silkweave Shade
				{ 19,  127016, 186097 }, -- Silkweave Cover
				{ 101, 127002, 185926 }, -- Imbued Silkweave Bracers
				{ 102, 127002, 185946 }, -- Imbued Silkweave Bracers
				{ 103, 127002, 185954 }, -- Imbued Silkweave Bracers
				{ 105, 127001, 185927 }, -- Imbued Silkweave Cinch
				{ 106, 127001, 185947 }, -- Imbued Silkweave Cinch
				{ 107, 127001, 185955 }, -- Imbued Silkweave Cinch
				{ 109, 127000, 185928 }, -- Imbued Silkweave Epaulets
				{ 110, 127000, 185948 }, -- Imbued Silkweave Epaulets
				{ 111, 127000, 185956 }, -- Imbued Silkweave Epaulets
				{ 113, 126999, 185929 }, -- Imbued Silkweave Pantaloons
				{ 114, 126999, 185949 }, -- Imbued Silkweave Pantaloons
				{ 115, 126999, 185957 }, -- Imbued Silkweave Pantaloons
				{ 116, 126998, 185930 }, -- Imbued Silkweave Hood
				{ 117, 126998, 185950 }, -- Imbued Silkweave Hood
				{ 118, 126998, 185958 }, -- Imbued Silkweave Hood
				{ 120, 126997, 185931 }, -- Imbued Silkweave Gloves
				{ 121, 126997, 185951 }, -- Imbued Silkweave Gloves
				{ 122, 126997, 185959 }, -- Imbued Silkweave Gloves
				{ 124, 126996, 185932 }, -- Imbued Silkweave Slippers
				{ 125, 126996, 185952 }, -- Imbued Silkweave Slippers
				{ 126, 126996, 185960 }, -- Imbued Silkweave Slippers
				{ 128, 126995, 185933 }, -- Imbued Silkweave Robe
				{ 129, 126995, 185953 }, -- Imbued Silkweave Robe
				{ 130, 126995, 185961 }, -- Imbued Silkweave Robe
				{ 201, 126994, 185918 }, -- Silkweave Bracers
				{ 202, 126994, 185934 }, -- Silkweave Bracers
				{ 203, 126994, 185942 }, -- Silkweave Bracers
				{ 205, 126993, 185919 }, -- Silkweave Cinch
				{ 206, 126993, 185935 }, -- Silkweave Cinch
				{ 207, 126993, 185943 }, -- Silkweave Cinch
				{ 209, 126992, 185920 }, -- Silkweave Epaulets
				{ 210, 126992, 185936 }, -- Silkweave Epaulets
				{ 211, 126992, 185944 }, -- Silkweave Epaulets
				{ 213, 126991, 185921 }, -- Silkweave Pantaloons
				{ 214, 126991, 185937 }, -- Silkweave Pantaloons
				{ 215, 126991, 208353 }, -- Silkweave Pantaloons
				{ 216, 126990, 185922 }, -- Silkweave Hood
				{ 217, 126990, 185938 }, -- Silkweave Hood
				{ 218, 126990, 208351 }, -- Silkweave Hood
				{ 220, 126989, 185923 }, -- Silkweave Gloves
				{ 221, 126989, 185939 }, -- Silkweave Gloves
				{ 222, 126989, 208350 }, -- Silkweave Gloves
				{ 224, 126988, 185924 }, -- Silkweave Slippers
				{ 225, 126988, 185940 }, -- Silkweave Slippers
				{ 226, 126988, 208352 }, -- Silkweave Slippers
				{ 228, 126987, 185925 }, -- Silkweave Robe
				{ 229, 126987, 185941 }, -- Silkweave Robe
				{ 230, 126987, 185945 }, -- Silkweave Robe
				-- 7.3.0
				{ 301, 151571, 247807 }, -- Lightweave Breeches
				{ 302, 151571, 247808 }, -- Lightweave Breeches
				{ 303, 151571, 247809 }, -- Lightweave Breeches
			},
			[WOD_DIFF] = {
				{ 1,   "114810:Stage6", 187516 },                        -- Hexweave Cowl (Stage 6)
				{ 2,   "114809:Stage6", 187516 },                        -- Hexweave Mantle (Stage 6)
				{ 3,   "114813:Stage6", 187516 },                        -- Hexweave Robe (Stage 6)
				{ 4,   "114814:Stage6", 187516 },                        -- Hexweave Bracers (Stage 6)
				{ 5,   "114812:Stage6", 187516 },                        -- Hexweave Gloves (Stage 6)
				{ 6,   "114816:Stage6", 187516 },                        -- Hexweave Belt (Stage 4)
				{ 7,   "114811:Stage6", 187516 },                        -- Hexweave Leggings (Stage 6)
				{ 8,   "114815:Stage6", 187516 },                        -- Hexweave Slippers (Stage 6)

				{ 10,  "114810:Stage5", 187492 },                        -- Hexweave Cowl (Stage 5)
				{ 11,  "114809:Stage5", 187492 },                        -- Hexweave Mantle (Stage 5)
				{ 12,  "114813:Stage5", 187492 },                        -- Hexweave Robe (Stage 5)
				{ 13,  "114814:Stage5", 187492 },                        -- Hexweave Bracers (Stage 5)
				{ 14,  "114812:Stage5", 187492 },                        -- Hexweave Gloves (Stage 5)
				{ 15,  "114816:Stage5", 187492 },                        -- Hexweave Belt (Stage 5)
				{ 16,  "114811:Stage5", 187492 },                        -- Hexweave Leggings (Stage 5)
				{ 17,  "114815:Stage5", 187492 },                        -- Hexweave Slippers (Stage 5)

				{ 19,  "114810:Stage4", 168855 },                        -- Hexweave Cowl (Stage 4)
				{ 20,  "114809:Stage4", 168855 },                        -- Hexweave Mantle (Stage 4)
				{ 21,  "114813:Stage4", 168855 },                        -- Hexweave Robe (Stage 4)
				{ 22,  "114814:Stage4", 168855 },                        -- Hexweave Bracers (Stage 4)
				{ 23,  "114812:Stage4", 168855 },                        -- Hexweave Gloves (Stage 4)
				{ 24,  "114816:Stage4", 168855 },                        -- Hexweave Belt (Stage 4)
				{ 25,  "114811:Stage4", 168855 },                        -- Hexweave Leggings (Stage 4)
				{ 26,  "114815:Stage4", 168855 },                        -- Hexweave Slippers (Stage 4)

				{ 101, "114810:Stage3", 168855 },                        -- Hexweave Cowl (Stage 3)
				{ 102, "114809:Stage3", 168855 },                        -- Hexweave Mantle (Stage 3)
				{ 103, "114813:Stage3", 168855 },                        -- Hexweave Robe (Stage 3)
				{ 104, "114814:Stage3", 168855 },                        -- Hexweave Bracers (Stage 3)
				{ 105, "114812:Stage3", 168855 },                        -- Hexweave Gloves (Stage 3)
				{ 106, "114816:Stage3", 168855 },                        -- Hexweave Belt (Stage 3)
				{ 107, "114811:Stage3", 168855 },                        -- Hexweave Leggings (Stage 3)
				{ 108, "114815:Stage3", 168855 },                        -- Hexweave Slippers (Stage 3)
				{ 110, "114810:Stage2", 168855 },                        -- Hexweave Cowl (Stage 2)
				{ 111, "114809:Stage2", 168855 },                        -- Hexweave Mantle (Stage 2)
				{ 112, "114813:Stage2", 168855 },                        -- Hexweave Robe (Stage 2)
				{ 113, "114814:Stage2", 168855 },                        -- Hexweave Bracers (Stage 2)
				{ 114, "114812:Stage2", 168855 },                        -- Hexweave Gloves (Stage 2)
				{ 115, "114816:Stage2", 168855 },                        -- Hexweave Belt (Stage 2)
				{ 116, "114811:Stage2", 168855 },                        -- Hexweave Leggings (Stage 2)
				{ 117, "114815:Stage2", 168855 },                        -- Hexweave Slippers (Stage 2)

				{ 119, "114810:Stage1", 168838, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Cowl (Stage 1) (Sold, Ashran)
				{ 120, "114809:Stage1", 168837, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Mantle (Stage 1) (Sold, Ashran)
				{ 121, "114813:Stage1", 168841, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Robe (Stage 1) (Sold, Ashran)
				{ 122, "114814:Stage1", 168842, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Bracers (Stage 1) (Sold, Ashran)
				{ 123, "114812:Stage1", 168840, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Gloves (Stage 1) (Sold, Ashran)
				{ 124, "114816:Stage1", 168844, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Belt (Stage 1) (Sold, Ashran)
				{ 125, "114811:Stage1", 168839, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Leggings (Stage 1) (Sold, Ashran)
				{ 126, "114815:Stage1", 168843, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Slippers (Stage 1) (Sold, Ashran)

				{ 201, "114819:Stage6", 187516 },                        -- Brilliant Hexweave Cloak (Stage 6)
				{ 202, "114819:Stage5", 187492 },                        -- Brilliant Hexweave Cloak (Stage 5)
				{ 203, "114819:Stage4", 168855 },                        -- Brilliant Hexweave Cloak (Stage 4)
				{ 204, "114819:Stage3", 168855 },                        -- Brilliant Hexweave Cloak (Stage 3)
				{ 205, "114819:Stage2", 168855 },                        -- Brilliant Hexweave Cloak (Stage 2)
				{ 206, "114819:Stage1", 168847, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Brilliant Hexweave Cloak (Stage 1) (Sold, Ashran)

				{ 208, "114818:Stage6", 187516 },                        -- Nimble Hexweave Cloak (Stage 6)
				{ 209, "114818:Stage5", 187492 },                        -- Nimble Hexweave Cloak (Stage 5)
				{ 210, "114818:Stage4", 168855 },                        -- Nimble Hexweave Cloak (Stage 4)
				{ 211, "114818:Stage3", 168855 },                        -- Nimble Hexweave Cloak (Stage 3)
				{ 212, "114818:Stage2", 168855 },                        -- Nimble Hexweave Cloak (Stage 2)
				{ 213, "114818:Stage1", 168846, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Nimble Hexweave Cloak (Stage 1) (Sold, Ashran)

				{ 216, "114817:Stage6", 187516 },                        -- Powerful Hexweave Cloak (Stage 6)
				{ 217, "114817:Stage5", 187492 },                        -- Powerful Hexweave Cloak (Stage 5)
				{ 218, "114817:Stage4", 168855 },                        -- Powerful Hexweave Cloak (Stage 4)
				{ 219, "114817:Stage3", 168855 },                        -- Powerful Hexweave Cloak (Stage 3)
				{ 220, "114817:Stage2", 168855 },                        -- Powerful Hexweave Cloak (Stage 2)
				{ 221, "114817:Stage1", 168845, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Powerful Hexweave Cloak (Stage 1) (Sold, Ashran)
				{ 128, 114828,          168852 },                        -- Sumptuous Cowl (Learnt by item 115357)
				{ 129, 114829,          168853 },                        -- Sumptuous Robes (Learnt by item 115357)
				{ 130, 114831,          168854 },                        -- Sumptuous Leggings (Learnt by item 115357)
			},
			[MOP_DIFF] = {
				{ 1,   98612, 142964 },                                 -- Belt of the Night Sky : =ds=#s10#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 2,   98608, 142960 },                                 -- White Cloud Belt : =ds=#s10#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 3,   98603, 142955 },                                 -- Leggings of the Night Sky : =ds=#s11#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 4,   98599, 142951 },                                 -- White Cloud Leggings : =ds=#s11#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 5,   86312, 125560 },                                 -- Legacy of the Emperor : =ds=#s5#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 6,   86311, 125558 },                                 -- Robe of Eternal Rule : =ds=#s5#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 7,   86313, 125559 },                                 -- Imperial Silk Gloves : =ds=#s9#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 8,   86314, 125561 },                                 -- Touch of the Light : =ds=#s9#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot["Tier 14"] AtlasLoot["Raid"]
				{ 9,   82439, 125549 },                                 -- Robes of Creation : =ds=#s5#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 10,  82437, 125547 },                                 -- Spelltwister's Grand Robe : =ds=#s5#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 11,  82440, 125550 },                                 -- Gloves of Creation : =ds=#s9#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 12,  82438, 125548 },                                 -- Spelltwister's Gloves : =ds=#s9#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 13,  98826, 143068 },                                 -- Crafted Malevolent Gladiator's Silk Cowl : =ds=#s1#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 14,  98829, 143071 },                                 -- Crafted Malevolent Gladiator's Silk Amice : =ds=#s3#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 15,  98828, 143070 },                                 -- Crafted Malevolent Gladiator's Silk Robe : =ds=#s5#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 16,  98825, 143067 },                                 -- Crafted Malevolent Gladiator's Silk Handguards : =ds=#s9#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 17,  98827, 143069 },                                 -- Crafted Malevolent Gladiator's Silk Trousers : =ds=#s11#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 18,  98871, 143078 },                                 -- Crafted Malevolent Gladiator's Satin Hood : =ds=#s1#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 19,  98874, 143081 },                                 -- Crafted Malevolent Gladiator's Satin Mantle : =ds=#s3#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 20,  98873, 143080 },                                 -- Crafted Malevolent Gladiator's Satin Robe : =ds=#s5#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 21,  98870, 143077 },                                 -- Crafted Malevolent Gladiator's Satin Gloves : =ds=#s9#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 22,  98872, 143079 },                                 -- Crafted Malevolent Gladiator's Satin Leggings : =ds=#s11#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 23,  98866, 143073 },                                 -- Crafted Malevolent Gladiator's Mooncloth Helm : =ds=#s1#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 24,  98869, 143076 },                                 -- Crafted Malevolent Gladiator's Mooncloth Mantle : =ds=#s3#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 25,  98868, 143075 },                                 -- Crafted Malevolent Gladiator's Mooncloth Robe : =ds=#s5#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 26,  98865, 143072 },                                 -- Crafted Malevolent Gladiator's Mooncloth Gloves : =ds=#s9#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 27,  98867, 143074 },                                 -- Crafted Malevolent Gladiator's Mooncloth Leggings : =ds=#s11#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 28,  98922, 143085 },                                 -- Crafted Malevolent Gladiator's Felweave Cowl : =ds=#s1#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 29,  98925, 143088 },                                 -- Crafted Malevolent Gladiator's Felweave Amice : =ds=#s3#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 30,  98924, 143087 },                                 -- Crafted Malevolent Gladiator's Felweave Raiment : =ds=#s5#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 101, 98921, 143084 },                                 -- Crafted Malevolent Gladiator's Felweave Handguards : =ds=#s9#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 102, 98923, 143086 },                                 -- Crafted Malevolent Gladiator's Felweave Trousers : =ds=#s11#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 103, 98756, 143053 },                                 -- Crafted Malevolent Gladiator's Cape of Cruelty : =ds=#s4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 104, 98757, 143054 },                                 -- Crafted Malevolent Gladiator's Cape of Prowess : =ds=#s4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 105, 98913, 143082 },                                 -- Crafted Malevolent Gladiator's Cloak of Alacrity : =ds=#s4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 106, 98914, 143083 },                                 -- Crafted Malevolent Gladiator's Cloak of Prowess : =ds=#s4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 107, 98772, 143064 },                                 -- Crafted Malevolent Gladiator's Drape of Cruelty : =ds=#s4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 108, 98774, 143066 },                                 -- Crafted Malevolent Gladiator's Drape of Meditation : =ds=#s4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 109, 98773, 143065 },                                 -- Crafted Malevolent Gladiator's Drape of Prowess : =ds=#s4# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 110, 98769, 143061 },                                 -- Crafted Malevolent Gladiator's Cuffs of Accuracy : =ds=#s8#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 111, 98771, 143063 },                                 -- Crafted Malevolent Gladiator's Cuffs of Meditation : =ds=#s8#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 112, 98770, 143062 },                                 -- Crafted Malevolent Gladiator's Cuffs of Prowess : =ds=#s8#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 113, 98764, 143056 },                                 -- Crafted Malevolent Gladiator's Cord of Accuracy : =ds=#s10#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 114, 98763, 143055 },                                 -- Crafted Malevolent Gladiator's Cord of Cruelty : =ds=#s10#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 115, 98765, 143057 },                                 -- Crafted Malevolent Gladiator's Cord of Meditation : =ds=#s10#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 116, 98767, 143059 },                                 -- Crafted Malevolent Gladiator's Treads of Alacrity : =ds=#s12#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 117, 98766, 143058 },                                 -- Crafted Malevolent Gladiator's Treads of Cruelty : =ds=#s12#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 118, 98768, 143060 },                                 -- Crafted Malevolent Gladiator's Treads of Meditation : =ds=#s12#, #a1# / =q1=#sk# 600 : =ds=AtlasLoot["Discovery"]: spell143011
				{ 119, 82429, 125539, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Satin Cowl : =ds=#s1#, #a1# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 120, 82431, 125541, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Satin Raiment : =ds=#s5#, #a1# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 121, 82421, 125531, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Silk Cowl : =ds=#s1#, #a1# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 122, 82423, 125533, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Silk Raiment : =ds=#s5#, #a1# / =q1=#sk# 590 : =ds=AtlasLoot["Vendor"]
				{ 123, 82430, 125540, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Satin Amice : =ds=#s3#, #a1# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 124, 82422, 125532, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Silk Amice : =ds=#s3#, #a1# / =q1=#sk# 575 : =ds=AtlasLoot["Vendor"]
				{ 125, 82432, 125542, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Satin Handwraps : =ds=#s9#, #a1# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 126, 82436, 125546, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Satin Belt : =ds=#s10#, #a1# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 127, 82433, 125543, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Satin Pants : =ds=#s11#, #a1# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 128, 82435, 125545, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Satin Footwraps : =ds=#s12#, #a1# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 129, 82424, 125534, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Silk Handwraps : =ds=#s9#, #a1# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 130, 82428, 125538, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Silk Belt : =ds=#s10#, #a1# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 201, 82425, 125535, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Silk Pants : =ds=#s11#, #a1# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 202, 82427, 125537, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Silk Footwraps : =ds=#s12#, #a1# / =q1=#sk# 565 : =ds=AtlasLoot["Vendor"]
				{ 203, 82434, 125544, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Satin Cuffs : =ds=#s8#, #a1# / =q1=#sk# 555 : =ds=AtlasLoot["Vendor"]
				{ 204, 82426, 125536, [PRICE_EXTRA_ITTYPE] = "spiritofharmony:1" }, -- Contender's Silk Cuffs : =ds=#s8#, #a1# / =q1=#sk# 555 : =ds=AtlasLoot["Vendor"]
				{ 205, 82397, 125523 },                                 -- Windwool Hood : =ds=#s1#, #a1# / =q1=#sk# 555 : =ds=AtlasLoot["Trainer"]
				{ 206, 82399, 125525 },                                 -- Windwool Tunic : =ds=#s5#, #a1# / =q1=#sk# 555 : =ds=AtlasLoot["Trainer"]
				{ 207, 94278, 138598 },                                 -- Falling Blossom Cowl : =ds=#s1#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 208, 94280, 138600 },                                 -- Falling Blossom Hood : =ds=#s1#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 209, 94279, 138599 },                                 -- Falling Blossom Sandals : =ds=#s12#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 210, 94277, 138597 },                                 -- Falling Blossom Treads : =ds=#s12#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 211, 93500, 137922 },                                 -- Crafted Dreadful Gladiator's Silk Cowl : =ds=#s1#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 212, 93503, 137925 },                                 -- Crafted Dreadful Gladiator's Silk Amice : =ds=#s3#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 213, 93502, 137924 },                                 -- Crafted Dreadful Gladiator's Silk Robe : =ds=#s5#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 214, 93499, 137921 },                                 -- Crafted Dreadful Gladiator's Silk Handguards : =ds=#s9#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 215, 93501, 137923 },                                 -- Crafted Dreadful Gladiator's Silk Trousers : =ds=#s11#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 216, 93556, 137932 },                                 -- Crafted Dreadful Gladiator's Satin Hood : =ds=#s1#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 217, 93559, 137935 },                                 -- Crafted Dreadful Gladiator's Satin Mantle : =ds=#s3#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 218, 93558, 137934 },                                 -- Crafted Dreadful Gladiator's Satin Robe : =ds=#s5#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 219, 93555, 137931 },                                 -- Crafted Dreadful Gladiator's Satin Gloves : =ds=#s9#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 220, 93557, 137933 },                                 -- Crafted Dreadful Gladiator's Satin Leggings : =ds=#s11#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 221, 93551, 137927 },                                 -- Crafted Dreadful Gladiator's Mooncloth Helm : =ds=#s1#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 222, 93554, 137930 },                                 -- Crafted Dreadful Gladiator's Mooncloth Mantle : =ds=#s3#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 223, 93553, 137929 },                                 -- Crafted Dreadful Gladiator's Mooncloth Robe : =ds=#s5#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 224, 93555, 137926 },                                 -- Crafted Dreadful Gladiator's Mooncloth Gloves : =ds=#s9#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 225, 93552, 137928 },                                 -- Crafted Dreadful Gladiator's Mooncloth Leggings : =ds=#s11#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 226, 93616, 137939 },                                 -- Crafted Dreadful Gladiator's Felweave Cowl : =ds=#s1#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 227, 93619, 137942 },                                 -- Crafted Dreadful Gladiator's Felweave Amice : =ds=#s3#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 228, 93618, 137941 },                                 -- Crafted Dreadful Gladiator's Felweave Raiment : =ds=#s5#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 229, 93615, 137938 },                                 -- Crafted Dreadful Gladiator's Felweave Handguards : =ds=#s9#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 230, 93617, 137940 },                                 -- Crafted Dreadful Gladiator's Felweave Trousers : =ds=#s11#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 301, 93420, 137907 },                                 -- Crafted Dreadful Gladiator's Cape of Cruelty : =ds=#s4# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 302, 93421, 137908 },                                 -- Crafted Dreadful Gladiator's Cape of Prowess : =ds=#s4# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 303, 93607, 137936 },                                 -- Crafted Dreadful Gladiator's Cloak of Alacrity : =ds=#s4# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 304, 93608, 137937 },                                 -- Crafted Dreadful Gladiator's Cloak of Prowess : =ds=#s4# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 305, 93437, 137918 },                                 -- Crafted Dreadful Gladiator's Drape of Cruelty : =ds=#s4# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 306, 93439, 137920 },                                 -- Crafted Dreadful Gladiator's Drape of Meditation : =ds=#s4# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 307, 93438, 137919 },                                 -- Crafted Dreadful Gladiator's Drape of Prowess : =ds=#s4# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 308, 93434, 137915 },                                 -- Crafted Dreadful Gladiator's Cuffs of Accuracy : =ds=#s8#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 309, 93436, 137917 },                                 -- Crafted Dreadful Gladiator's Cuffs of Meditation : =ds=#s8#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 310, 93435, 137916 },                                 -- Crafted Dreadful Gladiator's Cuffs of Prowess : =ds=#s8#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 311, 93429, 137910 },                                 -- Crafted Dreadful Gladiator's Cord of Accuracy : =ds=#s10#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 312, 93428, 137909 },                                 -- Crafted Dreadful Gladiator's Cord of Cruelty : =ds=#s10#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 313, 93430, 137911 },                                 -- Crafted Dreadful Gladiator's Cord of Meditation : =ds=#s10#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 314, 93432, 137913 },                                 -- Crafted Dreadful Gladiator's Treads of Alacrity : =ds=#s12#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 315, 93431, 137912 },                                 -- Crafted Dreadful Gladiator's Treads of Cruelty : =ds=#s12#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 316, 93433, 137914 },                                 -- Crafted Dreadful Gladiator's Treads of Meditation : =ds=#s12#, #a1# / =q1=#sk# 550 : =ds=AtlasLoot["Discovery"]: spell125557
				{ 317, 82401, 125527 },                                 -- Windwool Pants : =ds=#s11#, #a1# / =q1=#sk# 545 : =ds=AtlasLoot["Trainer"]
				{ 318, 82403, 125529 },                                 -- Windwool Boots : =ds=#s12#, #a1# / =q1=#sk# 545 : =ds=AtlasLoot["Trainer"]
				{ 319, 82398, 125524 },                                 -- Windwool Shoulders : =ds=#s3#, #a1# / =q1=#sk# 535 : =ds=AtlasLoot["Trainer"]
				{ 320, 82404, 125530 },                                 -- Windwool Belt : =ds=#s10#, #a1# / =q1=#sk# 535 : =ds=AtlasLoot["Trainer"]
				{ 321, 82402, 125528 },                                 -- Windwool Bracers : =ds=#s8#, #a1# / =q1=#sk# 525 : =ds=AtlasLoot["Trainer"]
				{ 322, 82400, 125526 },                                 -- Windwool Gloves : =ds=#s9#, #a1# / =q1=#sk# 525 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,   71989, 101923 }, -- Bracers of Unconquered Power : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 2,   71990, 101922 }, -- Dreamwraps of the Light : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 3,   71980, 101921 }, -- Lavaquake Legwraps : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 4,   71981, 101920 }, -- World Mender's Pants : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dragon Soul"]
				{ 5,   69945, 99449 }, -- Don Tayo's Inferno Mittens : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 6,   69944, 99448 }, -- Grips of Altered Reality : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 7,   69954, 99460 }, -- Boots of the Black Flame : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 8,   69953, 99459 }, -- Endless Dream Walkers : =ds=#sr# 525 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Firelands"]
				{ 9,   54506, 75301 }, -- Flame-Ascended Pantaloons : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "1 #dreamcloth#"
				{ 10,  54504, 75298 }, -- Belt of the Depths : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "1 #dreamcloth#"
				{ 11,  54505, 75300 }, -- Breeches of Mended Nightmares : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "1 #dreamcloth#"
				{ 12,  54503, 75299 }, -- Dreamless Belt : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "1 #dreamcloth#"
				{ 13,  75072, 75307 }, -- Vicious Embersilk Pants : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
				{ 14,  75073, 75306 }, -- Vicious Embersilk Cowl : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
				{ 15,  75093, 75305 }, -- Vicious Embersilk Robe : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
				{ 16,  75062, 75304 }, -- Vicious Fireweave Cowl : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
				{ 17,  75088, 75303 }, -- Vicious Fireweave Robe : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
				{ 18,  75082, 75302 }, -- Vicious Fireweave Pants : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
				{ 19,  75095, 75297 }, -- Vicious Embersilk Boots : =ds=#sr# 520 : =ds=AtlasLoot["Trainer"]
				{ 20,  75063, 75296 }, -- Vicious Fireweave Gloves : =ds=#sr# 520 : =ds=AtlasLoot["Trainer"]
				{ 21,  92726, 134585 }, -- Bipsi's Gloves : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 22,  75087, 75294 }, -- Vicious Fireweave Boots : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 23,  75070, 75295 }, -- Vicious Embersilk Gloves : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 24,  75091, 75292 }, -- Vicious Fireweave Shoulders : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 25,  75086, 75269 }, -- Vicious Fireweave Belt : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 26,  75096, 75293 }, -- Vicious Embersilk Belt : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 27,  75064, 75291 }, -- Vicious Embersilk Shoulders : =ds=#sr# 505 : =ds=AtlasLoot["Trainer"]
				{ 28,  75098, 75270 }, -- Vicious Embersilk Bracers : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 29,  75089, 75290 }, -- Vicious Fireweave Bracers : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 30,  75065, 99537 }, -- Vicious Embersilk Cape : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 101, 54485, 75266 }, -- Spiritmend Cowl : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 102, 54486, 75267 }, -- Spiritmend Robe : =ds=#sr# 485 : =ds=AtlasLoot["Trainer"]
				{ 103, 54483, 75263 }, -- Spiritmend Leggings : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 104, 54484, 75262 }, -- Spiritmend Gloves : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 105, 54482, 75261 }, -- Spiritmend Boots : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 106, 54479, 75260 }, -- Spiritmend Shoulders : =ds=#sr# 475 : =ds=AtlasLoot["Trainer"]
				{ 107, 54480, 75259 }, -- Spiritmend Bracers : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 108, 54481, 75258 }, -- Spiritmend Belt : =ds=#sr# 470 : =ds=AtlasLoot["Trainer"]
				{ 109, 54476, 75256 }, -- Deathsilk Cowl : =ds=#sr# 465 : =ds=AtlasLoot["Trainer"]
				{ 110, 54475, 75257 }, -- Deathsilk Robe : =ds=#sr# 465 : =ds=AtlasLoot["Trainer"]
				{ 111, 54478, 75253 }, -- Deathsilk Gloves : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 112, 54472, 75254 }, -- Deathsilk Leggings : =ds=#sr# 460 : =ds=AtlasLoot["Trainer"]
				{ 113, 54474, 75251 }, -- Deathsilk Shoulders : =ds=#sr# 455 : =ds=AtlasLoot["Trainer"]
				{ 114, 54477, 75252 }, -- Deathsilk Boots : =ds=#sr# 445 : =ds=AtlasLoot["Trainer"]
				{ 115, 54473, 75249 }, -- Deathsilk Bracers : =ds=#sr# 445 : =ds=AtlasLoot["Trainer"]
				{ 116, 54471, 75248 }, -- Deathsilk Belt : =ds=#sr# 445 : =ds=AtlasLoot["Trainer"]
				{ 117, 54441, 75288 }, -- Black Embersilk Gown : =ds=#sr# 500 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
			},
			[WOTLK_DIFF] = {
				{ 1,   49890,                                      70551 },                       -- Deathfrost Boots : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]
				{ 2,   49891,                                      70550 },                       -- Leggings of Woven Death : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]
				{ 3,   49892,                                      70552 },                       -- Lightweave Leggings : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]
				{ 4,   49893,                                      70553 },                       -- Sandals of Consecration : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]
				{ 5,   [ATLASLOOT_IT_ALLIANCE] = { 47603, 67066 }, [ATLASLOOT_IT_HORDE] = { 47604, 67146 } }, -- Merlin's Robe : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 6,   [ATLASLOOT_IT_ALLIANCE] = { 47605, 67064 }, [ATLASLOOT_IT_HORDE] = { 47606, 67144 } }, -- Royal Moonshroud Robe : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 7,   [ATLASLOOT_IT_ALLIANCE] = { 47585, 67079 }, [ATLASLOOT_IT_HORDE] = { 47586, 67145 } }, -- Bejeweled Wizard's Bracers : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 8,   [ATLASLOOT_IT_ALLIANCE] = { 47587, 67065 }, [ATLASLOOT_IT_HORDE] = { 47588, 67147 } }, -- Royal Moonshroud Bracers : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Trial of the Crusader"]
				{ 9,   45558,                                      63205 },                       -- Cord of the White Dawn : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"]
				{ 10,  45557,                                      63203 },                       -- Sash of Ancient Power : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"]
				{ 11,  45567,                                      63206 },                       -- Savior's Slippers : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"]
				{ 12,  45566,                                      63204 },                       -- Spellslinger's Slippers : =ds=#sr# 450 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Ulduar"]
				{ 13,  41610,                                      56017 },                       -- Deathchill Cloak : =ds=#sr# 420 : =ds=AtlasLoot["Achievement"]
				{ 14,  41609,                                      56016 },                       -- Wispcloak : =ds=#sr# 415 : =ds=AtlasLoot["Achievement"]
				{ 15,  42101,                                      56026 },                       -- Ebonweave Robe : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 16,  42100,                                      56024 },                       -- Moonshroud Robe : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 17,  42102,                                      56028 },                       -- Spellweave Robe : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 18,  42111,                                      56027 },                       -- Ebonweave Gloves : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 19,  42103,                                      56025 },                       -- Moonshroud Gloves : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 20,  42113,                                      56029 },                       -- Spellweave Gloves : =ds=#sr# 440 : =ds=AtlasLoot["Trainer"]
				{ 21,  43583,                                      60993 },                       -- Glacial Robe : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 22,  43585,                                      60994 },                       -- Glacial Slippers : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 23,  43584,                                      60990 },                       -- Glacial Waistband : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 24,  42093,                                      56021 },                       -- Frostmoon Pants : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 25,  41984,                                      56018 },                       -- Hat of Wintry Doom : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 26,  42096,                                      56023 },                       -- Aurora Slippers : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 27,  41986,                                      56020 },                       -- Deep Frozen Cord : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 28,  43970,                                      59585 },                       -- Frostsavage Boots : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 29,  43971,                                      59589 },                       -- Frostsavage Cowl : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 30,  41516,                                      59586 },                       -- Frostsavage Gloves : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 101, 43975,                                      59588 },                       -- Frostsavage Leggings : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 102, 43972,                                      59587 },                       -- Frostsavage Robe : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 103, 43973,                                      59584 },                       -- Frostsavage Shoulders : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 104, 42095,                                      56022 },                       -- Light Blessed Mittens : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 105, 41985,                                      56019 },                       -- Silky Iceshard Boots : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 106, 41554,                                      55941 },                       -- Black Duskweave Robe : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 107, 41553,                                      55925 },                       -- Black Duskweave Leggings : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 108, 41555,                                      55943 },                       -- Black Duskweave Wristwraps : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 109, 45810,                                      64730 },                       -- Cloak of Crimson Snow : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 110, 45811,                                      64729 },                       -- Frostguard Drape : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 111, 43969,                                      59582 },                       -- Frostsavage Belt : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 112, 43974,                                      59583 },                       -- Frostsavage Bracers : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 113, 41608,                                      56015 },                       -- Cloak of Frozen Spirits : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 114, 41607,                                      56014 },                       -- Cloak of the Moon : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 115, 41525,                                      55911 },                       -- Mystic Frostwoven Robe : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 116, 41523,                                      55910 },                       -- Mystic Frostwoven Shoulders : =ds=#sr# 385 : =ds=AtlasLoot["Trainer"]
				{ 117, 41528,                                      55913 },                       -- Mystic Frostwoven Wriststraps : =ds=#sr# 385 : =ds=AtlasLoot["Trainer"]
				{ 118, 41550,                                      55923 },                       -- Duskweave Shoulders : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 119, 41544,                                      55924 },                       -- Duskweave Boots : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 120, 41549,                                      55921 },                       -- Duskweave Robe : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 121, 41545,                                      55922 },                       -- Duskweave Gloves : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 122, 41551,                                      55920 },                       -- Duskweave Wriststraps : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 123, 41543,                                      55914 },                       -- Duskweave Belt : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 124, 41546,                                      55919 },                       -- Duskweave Cowl : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 125, 41548,                                      55901 },                       -- Duskweave Leggings : =ds=#sr# 395 : =ds=AtlasLoot["Trainer"]
				{ 126, 41521,                                      55907 },                       -- Frostwoven Cowl : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
				{ 127, 41519,                                      56030 },                       -- Frostwoven Leggings : =ds=#sr# 380 : =ds=AtlasLoot["Trainer"]
				{ 128, 41520,                                      55906 },                       -- Frostwoven Boots : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 129, 41522,                                      55908 },                       -- Frostwoven Belt : =ds=#sr# 370 : =ds=AtlasLoot["Trainer"]
				{ 130, 44211,                                      55904 },                       -- Frostwoven Gloves : =ds=#sr# 360 : =ds=AtlasLoot["Trainer"]
				{ 201, 41515,                                      55903 },                       -- Frostwoven Robe : =ds=#sr# 360 : =ds=AtlasLoot["Trainer"]
				{ 202, 41513,                                      55902 },                       -- Frostwoven Shoulders : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 203, 41512,                                      56031 },                       -- Frostwoven Wriststraps : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,   24267,                                  31456 }, -- Battlecast Hood : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 2,   24263,                                  31453 }, -- Battlecast Pants : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 3,   30038,                                  36315 }, -- Belt of Blasting : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 4,   30036,                                  36316 }, -- Belt of the Long Road : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 5,   30037,                                  36317 }, -- Boots of Blasting : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 6,   30035,                                  36318 }, -- Boots of the Long Road : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 7,   32586,                                  41205 }, -- Bracers of Nimble Thought : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 8,   21871,                                  26758 }, -- Frozen Shadoweave Robe : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 9,   32587,                                  41206 }, -- Mantle of Nimble Thought : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 10,  32420,                                  40060 }, -- Night's End : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Ashtongue Deathsworn"] - AtlasLoot["Honored"]
				{ 11,  21875,                                  26762 }, -- Primal Mooncloth Robe : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 12,  21865,                                  26781 }, -- Soulcloth Vest : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 13,  32392,                                  40021 }, -- Soulguard Bracers : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Ashtongue Deathsworn"] - AtlasLoot["Friendly"]
				{ 14,  32390,                                  40024 }, -- Soulguard Girdle : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Ashtongue Deathsworn"] - AtlasLoot["Friendly"]
				{ 15,  32389,                                  40023 }, -- Soulguard Leggings : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Ashtongue Deathsworn"] - AtlasLoot["Honored"]
				{ 16,  32391,                                  40020 }, -- Soulguard Slippers : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Ashtongue Deathsworn"] - AtlasLoot["Honored"]
				{ 17,  21848,                                  26754 }, -- Spellfire Robe : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 18,  24266,                                  31455 }, -- Spellstrike Hood : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 19,  24262,                                  31452 }, -- Spellstrike Pants : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 20,  32585,                                  41208 }, -- Swiftheal Mantle : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 21,  32584,                                  41207 }, -- Swiftheal Wraps : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 22,  24264,                                  31454 }, -- Whitemend Hood : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 23,  24261,                                  31451 }, -- Whitemend Pants : =ds=#sr# 375 : =ds=AtlasLoot["Drop"]
				{ 24,  24257,                                  31444 }, -- Black Belt of Knowledge : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 25,  21870,                                  26757 }, -- Frozen Shadoweave Boots : =ds=#sr# 365 : =ds=AtlasLoot["Vendor"]
				{ 26,  24256,                                  31443 }, -- Girdle of Ruination : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 27,  34367,                                  46129 }, -- Hands of Eternal Light : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 28,  24260,                                  31450 }, -- Manaweave Cloak : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 29,  21874,                                  26761 }, -- Primal Mooncloth Shoulders : =ds=#sr# 365 : =ds=AtlasLoot["Vendor"]
				{ 30,  24258,                                  31448 }, -- Resolute Cape : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 101, 34365,                                  46131 }, -- Robe of Eternal Light : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 102, 21864,                                  26780 }, -- Soulcloth Shoulders : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 103, 21847,                                  26753 }, -- Spellfire Gloves : =ds=#sr# 365 : =ds=AtlasLoot["Vendor"]
				{ 104, 34366,                                  46128 }, -- Sunfire Handwraps : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 105, 34364,                                  46130 }, -- Sunfire Robe : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 106, 24255,                                  31442 }, -- Unyielding Girdle : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 107, 24259,                                  31449 }, -- Vengeance Wrap : =ds=#sr# 365 : =ds=AtlasLoot["Drop"]
				{ 108, 21869,                                  26756 }, -- Frozen Shadoweave Shoulders : =ds=#sr# 355 : =ds=AtlasLoot["Vendor"]
				{ 109, 21873,                                  26760 }, -- Primal Mooncloth Belt : =ds=#sr# 355 : =ds=AtlasLoot["Vendor"]
				{ 110, 21863,                                  26779 }, -- Soulcloth Gloves : =ds=#sr# 355 : =ds=AtlasLoot["Vendor"]
				{ 111, 21846,                                  26752 }, -- Spellfire Belt : =ds=#sr# 355 : =ds=AtlasLoot["Vendor"]
				{ 112, 21868,                                  26784 }, -- Arcanoweave Robe : =ds=#sr# 370 : =ds=AtlasLoot["Drop"]
				{ 113, 30839,                                  37884 }, -- Flameheart Vest : =ds=#sr# 370 : =ds=AtlasLoot_IngameLocales["The Aldor"] - AtlasLoot["Exalted"]
				{ 114, 21867,                                  26783 }, -- Arcanoweave Boots : =ds=#sr# 360 : =ds=AtlasLoot["Drop"]
				{ 115, 30838,                                  37883 }, -- Flameheart Gloves : =ds=#sr# 360 : =ds=AtlasLoot_IngameLocales["The Aldor"] - AtlasLoot["Honored"]
				{ 116, 21861,                                  26777 }, -- Imbued Netherweave Robe : =ds=#sr# 360 : =ds=AtlasLoot["Vendor"]
				{ 117, 21862,                                  26778 }, -- Imbued Netherweave Tunic : =ds=#sr# 360 : =ds=AtlasLoot["Vendor"]
				{ 118, 21866,                                  26782 }, -- Arcanoweave Bracers : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 119, 24251,                                  31437 }, -- Blackstrike Bracers : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 120, 24250,                                  31435 }, -- Bracers of Havok : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 121, 30831,                                  37873 }, -- Cloak of Arcane Evasion : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["Lower City"] - AtlasLoot["Honored"]
				{ 122, 24253,                                  31440 }, -- Cloak of Eternity : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 123, 24252,                                  31438 }, -- Cloak of the Black Void : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 124, 30837,                                  37882 }, -- Flameheart Bracers : =ds=#sr# 350 : =ds=AtlasLoot_IngameLocales["The Aldor"] - AtlasLoot["Friendly"]
				{ 125, 21860,                                  26776 }, -- Imbued Netherweave Boots : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Zangarmarsh"]
				{ 126, 24249,                                  31434 }, -- Unyielding Bracers : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 127, 24254,                                  31441 }, -- White Remedy Cape : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 128, 21859,                                  26775 }, -- Imbued Netherweave Pants : =ds=#sr# 340 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Zangarmarsh"]
				{ 129, 21855,                                  26774 }, -- Netherweave Tunic : =ds=#sr# 345 : =ds=AtlasLoot["Vendor"]
				{ 130, 21854,                                  26773 }, -- Netherweave Robe : =ds=#sr# 340 : =ds=AtlasLoot["Vendor"]
				{ 201, 21853,                                  26772 }, -- Netherweave Boots : =ds=#sr# 335 : =ds=AtlasLoot["Trainer"]
				{ 202, 21852,                                  26771 }, -- Netherweave Pants : =ds=#sr# 325 : =ds=AtlasLoot["Trainer"]
				{ 203, 21851,                                  26770 }, -- Netherweave Gloves : =ds=#sr# 320 : =ds=AtlasLoot["Trainer"]
				{ 204, 21850,                                  26765 }, -- Netherweave Belt : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 205, 21849,                                  26764 }, -- Netherweave Bracers : =ds=#sr# 310 : =ds=AtlasLoot["Trainer"]
				{ 216, "INV_fabric_felrag",                    nil,  GetSpellInfo(26798), nil },
				{ 217, 21874,                                  26761 }, -- Primal Mooncloth Shoulders : =ds=#sr# 365 : =ds=AtlasLoot["Vendor"]
				{ 218, 21875,                                  26762 }, -- Primal Mooncloth Robe : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 219, 21873,                                  26760 }, -- Primal Mooncloth Belt : =ds=#sr# 355 : =ds=AtlasLoot["Vendor"]
				{ 221, "INV_fabric_moonrag_01",                nil,  GetSpellInfo(26801), nil },
				{ 222, 21869,                                  26756 }, -- Frozen Shadoweave Shoulders : =ds=#sr# 355 : =ds=AtlasLoot["Vendor"]
				{ 223, 21871,                                  26758 }, -- Frozen Shadoweave Robe : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 224, 21870,                                  26757 }, -- Frozen Shadoweave Boots : =ds=#sr# 365 : =ds=AtlasLoot["Vendor"]
				{ 226, "ICON_spell_holy_blessingofprotection", nil,  GetSpellInfo(26797), nil },
				{ 227, 21848,                                  26754 }, -- Spellfire Robe : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 228, 21847,                                  26753 }, -- Spellfire Gloves : =ds=#sr# 365 : =ds=AtlasLoot["Vendor"]
				{ 229, 21846,                                  26752 }, -- Spellfire Belt : =ds=#sr# 355 : =ds=AtlasLoot["Vendor"]
			},
			[CLASSIC_DIFF] = {
				{ 1,   18405, 22866 }, -- Belt of the Archmage : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dire Maul"]
				{ 2,   16979, 20849 }, -- Flarecore Gloves : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 3,   19165, 23667 }, -- Flarecore Leggings : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 4,   16980, 20848 }, -- Flarecore Mantle : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 5,   19156, 23666 }, -- Flarecore Robe : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Blackrock Depths"]
				{ 6,   18263, 22759 }, -- Flarecore Wraps : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Molten Core"]
				{ 7,   22658, 28208 }, -- Glacial Cloak : =ds=#sr# 300 : nil
				{ 8,   22654, 28205 }, -- Glacial Gloves : =ds=#sr# 300 : nil
				{ 9,   22652, 28207 }, -- Glacial Vest : =ds=#sr# 300 : nil
				{ 10,  22655, 28209 }, -- Glacial Wrists : =ds=#sr# 300 : nil
				{ 11,  14146, 18454 }, -- Gloves of Spell Mastery : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 12,  14152, 18457 }, -- Robe of the Archmage : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Lower Blackrock Spire"]
				{ 13,  14153, 18458 }, -- Robe of the Void : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Scholomance"]
				{ 14,  14154, 18456 }, -- Truefaith Vestments : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Stratholme"]
				{ 15,  19059, 23665 }, -- Argent Shoulders : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Argent Dawn"] - AtlasLoot["Revered"]
				{ 16,  19684, 24093 }, -- Bloodvine Boots : =ds=#sr# 300 : =ds=AtlasLoot["No Longer Available"]
				{ 17,  19683, 24092 }, -- Bloodvine Leggings : =ds=#sr# 300 : =ds=AtlasLoot["No Longer Available"]
				{ 18,  19682, 24091 }, -- Bloodvine Vest : =ds=#sr# 300 : =ds=AtlasLoot["No Longer Available"]
				{ 19,  18413, 22870 }, -- Cloak of Warding : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 20,  18407, 22867 }, -- Felcloth Gloves : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 21,  22660, 28210 }, -- Gaea's Embrace : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Revered"]
				{ 22,  18408, 22868 }, -- Inferno Gloves : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 23,  19050, 23663 }, -- Mantle of the Timbermaw : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Timbermaw Hold"] - AtlasLoot["Revered"]
				{ 24,  14140, 18452 }, -- Mooncloth Circlet : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 25,  18409, 22869 }, -- Mooncloth Gloves : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 26,  18486, 22902 }, -- Mooncloth Robe : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]
				{ 27,  14139, 18448 }, -- Mooncloth Shoulders : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 28,  14138, 18447 }, -- Mooncloth Vest : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 29,  20539, 24902 }, -- Runed Stygian Belt : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 30,  20537, 24903 }, -- Runed Stygian Boots : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 101, 20538, 24901 }, -- Runed Stygian Leggings : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 102, 22757, 28481 }, -- Sylvan Crown : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Honored"]
				{ 103, 22758, 28482 }, -- Sylvan Shoulders : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Friendly"]
				{ 104, 22756, 28480 }, -- Sylvan Vest : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Revered"]
				{ 105, 15802, 19435 }, -- Mooncloth Boots : =ds=#sr# 290 : =ds=#QUESTID:6032#
				{ 106, 19056, 23664 }, -- Argent Boots : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Argent Dawn"] - AtlasLoot["Honored"]
				{ 107, 14137, 18440 }, -- Mooncloth Leggings : =ds=#sr# 290 : =ds=AtlasLoot["Drop"]
				{ 108, 19047, 23662 }, -- Wisdom of the Timbermaw : =ds=#sr# 290 : =ds=AtlasLoot_IngameLocales["Timbermaw Hold"] - AtlasLoot["Honored"]
				{ 109, 14136, 18436 }, -- Robe of Winter Night : =ds=#sr# 285 : =ds=AtlasLoot["Drop"]
				{ 110, 14134, 18422 }, -- Cloak of Fire : =ds=#sr# 275 : =ds=AtlasLoot["Drop"]: AtlasLoot["Blackrock Mountain"]
				{ 111, 10041, 12092 }, -- Dreamweave Circlet : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 112, 10019, 12067 }, -- Dreamweave Gloves : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 113, 10021, 12070 }, -- Dreamweave Vest : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 114, 4327,  3862 }, -- Icy Cloak : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]
				{ 115, 7054,  8770 }, -- Robe of Power : =ds=#sr# 190 : =ds=AtlasLoot["Trainer"]
				{ 116, 45626, 63742 }, -- Spidersilk Drape : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 117, 4320,  3855 }, -- Spidersilk Boots : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 118, 14106, 18451 }, -- Felcloth Robe : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 119, 14112, 18453 }, -- Felcloth Shoulders : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 120, 13867, 18449 }, -- Runecloth Shoulders : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 121, 14128, 18446 }, -- Wizardweave Robe : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 122, 14130, 18450 }, -- Wizardweave Turban : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 123, 14104, 18439 }, -- Brightcloth Pants : =ds=#sr# 290 : =ds=AtlasLoot["Drop"]
				{ 124, 14111, 18442 }, -- Felcloth Hood : =ds=#sr# 290 : =ds=AtlasLoot["Trainer"]
				{ 125, 14144, 18441 }, -- Ghostweave Pants : =ds=#sr# 290 : =ds=AtlasLoot["Trainer"]
				{ 126, 13866, 18444 }, -- Runecloth Headband : =ds=#sr# 295 : =ds=AtlasLoot["Trainer"]
				{ 127, 14108, 18437 }, -- Felcloth Boots : =ds=#sr# 285 : =ds=AtlasLoot["Trainer"]
				{ 128, 13865, 18438 }, -- Runecloth Pants : =ds=#sr# 285 : =ds=AtlasLoot["Trainer"]
				{ 129, 14045, 18434 }, -- Cindercloth Pants : =ds=#sr# 280 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Burning Steppes"]
				{ 130, 13871, 18424 }, -- Frostweave Pants : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 201, 13864, 18423 }, -- Runecloth Boots : =ds=#sr# 280 : =ds=AtlasLoot["Trainer"]
				{ 202, 14103, 18420 }, -- Brightcloth Cloak : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 203, 14044, 18418 }, -- Cindercloth Cloak : =ds=#sr# 275 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Burning Steppes"]
				{ 204, 14107, 18419 }, -- Felcloth Pants : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]
				{ 205, 14141, 18416 }, -- Ghostweave Vest : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 206, 18258, 22813 }, -- Gordok Ogre Suit : =ds=#sr# 275 : =ds=#QUESTID:27119#
				{ 207, 13863, 18417 }, -- Runecloth Gloves : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 208, 14132, 18421 }, -- Wizardweave Leggings : =ds=#sr# 275 : =ds=AtlasLoot["Trainer"]
				{ 209, 14101, 18415 }, -- Brightcloth Gloves : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 210, 14100, 18414 }, -- Brightcloth Robe : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 211, 14043, 18412 }, -- Cindercloth Gloves : =ds=#sr# 270 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Searing Gorge"]
				{ 212, 14142, 18413 }, -- Ghostweave Gloves : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
				{ 213, 13870, 18411 }, -- Frostweave Gloves : =ds=#sr# 265 : =ds=AtlasLoot["Trainer"]
				{ 214, 14143, 18410 }, -- Ghostweave Belt : =ds=#sr# 265 : =ds=AtlasLoot["Trainer"]
				{ 215, 13860, 18409 }, -- Runecloth Cloak : =ds=#sr# 265 : =ds=AtlasLoot["Trainer"]
				{ 216, 14042, 18408 }, -- Cindercloth Vest : =ds=#sr# 260 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Searing Gorge"]
				{ 217, 13858, 18406 }, -- Runecloth Robe : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 218, 13857, 18407 }, -- Runecloth Tunic : =ds=#sr# 260 : =ds=AtlasLoot["Trainer"]
				{ 219, 13868, 18404 }, -- Frostweave Robe : =ds=#sr# 255 : =ds=AtlasLoot["Drop"]
				{ 220, 13869, 18403 }, -- Frostweave Tunic : =ds=#sr# 255 : =ds=AtlasLoot["Trainer"]
				{ 221, 13856, 18402 }, -- Runecloth Belt : =ds=#sr# 255 : =ds=AtlasLoot["Trainer"]
				{ 222, 10044, 12088 }, -- Cindercloth Boots : =ds=#sr# 245 : =ds=AtlasLoot["Trainer"]
				{ 223, 10025, 12086 }, -- Shadoweave Mask : =ds=#sr# 245 : nil
				{ 224, 10030, 12081 }, -- Admiral's Hat : =ds=#sr# 240 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["The Cape of Stranglethorn"]
				{ 225, 10033, 12084 }, -- Red Mageweave Headband : =ds=#sr# 240 : =ds=AtlasLoot["Drop"]
				{ 226, 10031, 12082 }, -- Shadoweave Boots : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 227, 10029, 12078 }, -- Red Mageweave Shoulders : =ds=#sr# 235 : =ds=AtlasLoot["Drop"]
				{ 228, 10028, 12076 }, -- Shadoweave Shoulders : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 229, 10026, 12073 }, -- Black Mageweave Boots : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 230, 10024, 12072 }, -- Black Mageweave Headband : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 301, 10027, 12074 }, -- Black Mageweave Shoulders : =ds=#sr# 230 : =ds=AtlasLoot["Trainer"]
				{ 302, 10042, 12069 }, -- Cindercloth Robe : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 303, 10018, 12066 }, -- Red Mageweave Gloves : =ds=#sr# 225 : =ds=AtlasLoot["Drop"]
				{ 304, 10023, 12071 }, -- Shadoweave Gloves : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 305, 10008, 12059 }, -- White Bandit Mask : =ds=#sr# 215 : =ds=AtlasLoot["Drop"]
				{ 306, 10003, 12053 }, -- Black Mageweave Gloves : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 307, 10009, 12060 }, -- Red Mageweave Pants : =ds=#sr# 215 : =ds=AtlasLoot["Drop"]
				{ 308, 10007, 12056 }, -- Red Mageweave Vest : =ds=#sr# 215 : =ds=AtlasLoot["Drop"]
				{ 309, 10004, 12055 }, -- Shadoweave Robe : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 310, 10001, 12050 }, -- Black Mageweave Robe : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 311, 7064,  8804 }, -- Crimson Silk Gloves : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 312, 10002, 12052 }, -- Shadoweave Pants : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 313, 9999,  12049 }, -- Black Mageweave Leggings : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 314, 9998,  12048 }, -- Black Mageweave Vest : =ds=#sr# 205 : =ds=AtlasLoot["Trainer"]
				{ 315, 7063,  8802 }, -- Crimson Silk Robe : =ds=#sr# 205 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 316, 4329,  3864 }, -- Star Belt : =ds=#sr# 200 : =ds=AtlasLoot["Drop"]
				{ 317, 7061,  8797 }, -- Earthen Silk Belt : =ds=#sr# 195 : =ds=AtlasLoot["Drop"]
				{ 318, 7060,  8795 }, -- Azure Shoulders : =ds=#sr# 190 : =ds=AtlasLoot["Drop"]
				{ 319, 7059,  8793 }, -- Crimson Silk Shoulders : =ds=#sr# 190 : =ds=AtlasLoot["Drop"]
				{ 320, 4326,  3861 }, -- Long Silken Cloak : =ds=#sr# 185 : =ds=AtlasLoot["Trainer"]
				{ 321, 4328,  3863 }, -- Spider Belt : =ds=#sr# 180 : =ds=AtlasLoot["Drop"]
				{ 322, 7056,  8789 }, -- Crimson Silk Cloak : =ds=#sr# 180 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["The Cape of Stranglethorn"]
				{ 323, 7057,  8774 }, -- Green Silken Shoulders : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
				{ 324, 7052,  8766 }, -- Azure Silk Belt : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 325, 7053,  8786 }, -- Azure Silk Cloak : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Arathi Highlands"]
				{ 326, 4325,  3860 }, -- Boots of the Enchanter : =ds=#sr# 175 : =ds=AtlasLoot["Drop"]
				{ 327, 7055,  8772 }, -- Crimson Silk Belt : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 328, 7051,  8764 }, -- Earthen Vest : =ds=#sr# 170 : =ds=AtlasLoot["Trainer"]
				{ 329, 4323,  3858 }, -- Shadow Hood : =ds=#sr# 170 : =ds=AtlasLoot["Drop"]
				{ 330, 4322,  3857 }, -- Enchanter's Cowl : =ds=#sr# 165 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["The Cape of Stranglethorn"]
				{ 401, 7065,  8784 }, -- Green Silk Armor : =ds=#sr# 165 : =ds=AtlasLoot["Drop"]
				{ 402, 4324,  3859 }, -- Azure Silk Vest : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 403, 5770,  6692 }, -- Robes of Arcana : =ds=#sr# 150 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Thousand Needles"]
				{ 404, 7049,  8782 }, -- Truefaith Gloves : =ds=#sr# 150 : =ds=AtlasLoot["Drop"]
				{ 405, 4319,  3854 }, -- Azure Silk Gloves : =ds=#sr# 145 : =ds=AtlasLoot["Vendor"]
				{ 406, 7047,  8780 }, -- Hands of Darkness : =ds=#sr# 145 : =ds=AtlasLoot["Drop"]
				{ 407, 7046,  8758 }, -- Azure Silk Pants : =ds=#sr# 140 : =ds=AtlasLoot["Trainer"]
				{ 408, 4321,  3856 }, -- Spider Silk Slippers : =ds=#sr# 140 : =ds=AtlasLoot["Drop"]
				{ 409, 5766,  6690 }, -- Lesser Wizard's Robe : =ds=#sr# 135 : =ds=AtlasLoot["Trainer"]
				{ 410, 4318,  3852 }, -- Gloves of Meditation : =ds=#sr# 130 : =ds=AtlasLoot["Trainer"]
				{ 411, 4331,  3868 }, -- Phoenix Gloves : =ds=#sr# 125 : =ds=AtlasLoot["Drop"]
				{ 412, 4317,  3851 }, -- Phoenix Pants : =ds=#sr# 125 : =ds=AtlasLoot["Drop"]
				{ 413, 10048, 12047 }, -- Colorful Kilt : =ds=#sr# 120 : =ds=AtlasLoot["Drop"]
				{ 414, 6264,  7643 }, -- Greater Adept's Robe : =ds=#sr# 115 : =ds=AtlasLoot["Vendor"]
				{ 415, 4316,  3850 }, -- Heavy Woolen Pants : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 416, 2585,  2403 }, -- Gray Woolen Robe : =ds=#sr# 105 : =ds=AtlasLoot["Drop"]
				{ 417, 6263,  7639 }, -- Blue Overalls : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]
				{ 418, 4311,  3844 }, -- Heavy Woolen Cloak : =ds=#sr# 100 : =ds=AtlasLoot["Drop"]
				{ 419, 4313,  3847 }, -- Red Woolen Boots : =ds=#sr# 95 : =ds=AtlasLoot["Drop"]
				{ 420, 2583,  2401 }, -- Woolen Boots : =ds=#sr# 95 : =ds=AtlasLoot["Trainer"]
				{ 421, 5542,  6521 }, -- Pearl-clasped Cloak : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
				{ 422, 4310,  3843 }, -- Heavy Woolen Gloves : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
				{ 423, 4312,  3845 }, -- Soft-soled Linen Boots : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 424, 2578,  2395 }, -- Barbaric Linen Vest : =ds=#sr# 70 : =ds=AtlasLoot["Trainer"]
				{ 425, 6242,  7633 }, -- Blue Linen Robe : =ds=#sr# 70 : =ds=AtlasLoot["Vendor"]
				{ 426, 4309,  3842 }, -- Handstitched Linen Britches : =ds=#sr# 70 : =ds=AtlasLoot["Trainer"]
				{ 427, 6240,  7630 }, -- Blue Linen Vest : =ds=#sr# 55 : =ds=AtlasLoot["Vendor"]
				{ 428, 6239,  7629 }, -- Red Linen Vest : =ds=#sr# 55 : =ds=AtlasLoot["Drop"]
				{ 429, 2572,  2389 }, -- Red Linen Robe : =ds=#sr# 40 : =ds=AtlasLoot["Drop"]
				{ 430, 6238,  7623 }, -- Brown Linen Robe : =ds=#sr# 30 : =ds=AtlasLoot["Trainer"]
				{ 501, 6241,  7624 }, -- White Linen Robe : =ds=#sr# 30 : =ds=AtlasLoot["Trainer"]
				{ 502, 6836,  49677 }, -- Dress Shoes : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 503, 38277, 50644 }, -- Haliscan Jacket : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 504, 38278, 50647 }, -- Haliscan Pantaloons : =ds=#sr# 245 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 505, 21154, 26403 }, -- Festival Dress : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Moonglade"]
				{ 506, 21542, 26407 }, -- Festive Red Pant Suit : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Moonglade"]
				{ 507, 10036, 12093 }, -- Tuxedo Jacket : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]
				{ 508, 34087, 44950 }, -- Green Winter Clothes : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]
				{ 509, 34085, 44958 }, -- Red Winter Clothes : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]
				{ 510, 10040, 12091 }, -- White Wedding Dress : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]
				{ 511, 10035, 12089 }, -- Tuxedo Pants : =ds=#sr# 245 : =ds=AtlasLoot["Vendor"]
				{ 512, 10053, 12077 }, -- Simple Black Dress : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 513, 7062,  8799 }, -- Crimson Silk Pantaloons : =ds=#sr# 195 : =ds=AtlasLoot["Trainer"]
				{ 514, 7058,  8791 }, -- Crimson Silk Vest : =ds=#sr# 185 : =ds=AtlasLoot["Trainer"]
				{ 515, 7050,  8762 }, -- Silk Headband : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 516, 7048,  8760 }, -- Azure Silk Hood : =ds=#sr# 145 : =ds=AtlasLoot["Trainer"]
				{ 517, 4315,  3849 }, -- Reinforced Woolen Shoulders : =ds=#sr# 120 : =ds=AtlasLoot["Drop"]
				{ 518, 4314,  3848 }, -- Double-stitched Woolen Shoulders : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 519, 6787,  8467 }, -- White Woolen Dress : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 520, 2582,  2399 }, -- Green Woolen Vest : =ds=#sr# 85 : =ds=AtlasLoot["Trainer"]
				{ 521, 10047, 12046 }, -- Simple Kilt : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 522, 2584,  2402 }, -- Woolen Cape : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 523, 2569,  2386 }, -- Linen Boots : =ds=#sr# 65 : =ds=AtlasLoot["Trainer"]
				{ 524, 4308,  3841 }, -- Green Linen Bracers : =ds=#sr# 60 : =ds=AtlasLoot["Trainer"]
				{ 525, 2580,  2397 }, -- Reinforced Linen Cape : =ds=#sr# 60 : =ds=AtlasLoot["Trainer"]
				{ 526, 6786,  8465 }, -- Simple Dress : =ds=#sr# 40 : =ds=AtlasLoot["Trainer"]
				{ 527, 4307,  3840 }, -- Heavy Linen Gloves : =ds=#sr# 35 : =ds=AtlasLoot["Trainer"]
				{ 528, 4343,  3914 }, -- Brown Linen Pants : =ds=#sr# 30 : =ds=AtlasLoot["Trainer"]
				{ 529, 10046, 12045 }, -- Simple Linen Boots : =ds=#sr# 20 : =ds=AtlasLoot["Trainer"]
				{ 530, 7026,  8776 }, -- Linen Belt : =ds=#sr# 15 : =ds=AtlasLoot["Trainer"]
				{ 601, 2568,  2385 }, -- Brown Linen Vest : =ds=#sr# 10 : =ds=AtlasLoot["Trainer"]
				{ 602, 2570,  2387 }, -- Linen Cloak : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 603, 10045, 12044 }, -- Simple Linen Pants : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --TailoringBags
			name = AL["Bags"],
			[TWW_DIFF] = {
				{ 1,  222853, 446976 },                                   -- Weavercloth Bag
				{ 2,  222855, 446978 },                                   -- Weavercloth Reagent Bag
				{ 3,  222856, 446979 },                                   -- Duskweave Bag
				{ 4,  222854, 446977 },                                   -- Dawnweave Reagent Bag
				{ 16, 222859, 446982, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Concoctor's Clutch
				{ 17, 222864, 446987, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Darkmoon Duffle
				{ 18, 222866, 446989, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Excavator's Haversack
				{ 19, 222865, 446988, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Gardener's Seed Satchel
				{ 20, 225936, 447888, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Hideseeker's Tote
				{ 21, 222861, 446984, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Hideshaper's Workbag
				{ 22, 222860, 446983 },                                   -- Ignition Satchel
				{ 23, 222867, 446990, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Jeweler's Purse
				{ 24, 222862, 446985, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Magically "Infinite" Messenger
				{ 25, 222863, 446986, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Prodigy's Toolbox
				{ 26, 224852, 454431 },                                   -- The Severed Satchel
			},
			[BFA_DIFF] = {
				{ 1,  154695, 257125 }, -- Deep Sea Bag
				{ 2,  154695, 257126 }, -- Deep Sea Bag
				{ 3,  154695, 257127 }, -- Deep Sea Bag
				{ 16, 154696, 257128 }, -- Embroidered Deep Sea Bag
				{ 17, 154696, 257129 }, -- Embroidered Deep Sea Bag
				{ 18, 154696, 257130 }, -- Embroidered Deep Sea Bag
			},
			[NORMAL_DIFF] = {
				{ 1,   142075, 229041 },                        -- Imbued Silkweave Bag
				{ 2,   142075, 229043 },                        -- Imbued Silkweave Bag
				{ 3,   142075, 229045 },                        -- Imbued Silkweave Bag
				{ 4,   127035, 186388 },                        -- Silkweave Satchel
				{ 5,   114821, 168848, [PRICE_EXTRA_ITTYPE] = "118722:5" }, -- Hexweave Bag (Sold, Ashran)
				{ 6,   82446,  125556 },                        -- Royal Satchel : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["The August Celestials"] - AtlasLoot["Exalted"]
				{ 7,   54444,  75308 },                         -- Illusionary Bag : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "1 #dreamcloth#"
				{ 8,   70138,  100585 },                        -- Luxurious Silk Gem Bag : =ds=#sr# 515 : =ds=AtlasLoot_IngameLocales["Molten Front"]
				{ 9,   54446,  75268 },                         -- Hyjal Expedition Bag : =ds=#sr# 490 : =ds=AtlasLoot["Trainer"]
				{ 10,  54443,  75264 },                         -- Embersilk Bag : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 11,  54445,  75265 },                         -- Otherworldly Bag : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 12,  41599,  56007 },                         -- Frostweave Bag : =ds=#sr# 410 : =ds=AtlasLoot["Trainer"]
				{ 13,  41600,  56005 },                         -- Glacial Bag : =ds=#sr# 445 : =ds=AtlasLoot_IngameLocales["The Sons of Hodir"] - AtlasLoot["Exalted"]
				{ 14,  41598,  56006 },                         -- Mysterious Bag : =ds=#sr# 440 : =ds=AtlasLoot_IngameLocales["The Wyrmrest Accord"] - AtlasLoot["Revered"]
				{ 15,  41597,  56004 },                         -- Abyssal Bag : =ds=#sr# 435 : =ds=AtlasLoot_IngameLocales["Knights of the Ebon Blade"] - AtlasLoot["Revered"]
				{ 16,  45773,  63924 },                         -- Emerald Bag : =ds=#sr# 435 : =ds=AtlasLoot_IngameLocales["The Kalu'ak"] - AtlasLoot["Revered"]
				{ 17,  21872,  26759 },                         -- Ebon Shadowbag : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 18,  38225,  50194 },                         -- Mycah's Botanical Bag : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["Sporeggar"] - AtlasLoot["Revered"]
				{ 19,  21876,  26763 },                         -- Primal Mooncloth Bag : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 20,  21858,  26755 },                         -- Spellfire Bag : =ds=#sr# 375 : =ds=AtlasLoot["Vendor"]
				{ 21,  24270,  31459 },                         -- Bag of Jewels : =ds=#sr# 340 : =ds=AtlasLoot["Vendor"]
				{ 22,  21843,  26749 },                         -- Imbued Netherweave Bag : =ds=#sr# 340 : =ds=AtlasLoot["Vendor"]
				{ 23,  21841,  26746 },                         -- Netherweave Bag : =ds=#sr# 315 : =ds=AtlasLoot["Trainer"]
				{ 24,  21342,  26087 },                         -- Core Felcloth Bag : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Molten Core"]
				{ 25,  14156,  18455 },                         -- Bottomless Bag : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 26,  22249,  27660 },                         -- Big Bag of Enchantment : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Dire Maul"]
				{ 27,  14155,  18445 },                         -- Mooncloth Bag : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 28,  22252,  27725 },                         -- Satchel of Cenarius : =ds=#sr# 300 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Revered"]
				{ 29,  21341,  26086 },                         -- Felcloth Bag : =ds=#sr# 280 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Scholomance"]
				{ 30,  22248,  27659 },                         -- Enchanted Runecloth Bag : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Silithus"]
				{ 101, 22251,  27724 },                         -- Cenarion Herb Bag : =ds=#sr# 275 : =ds=AtlasLoot_IngameLocales["Cenarion Circle"] - AtlasLoot["Friendly"]
				{ 102, 21340,  26085 },                         -- Soul Pouch : =ds=#sr# 260 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 103, 22246,  27658 },                         -- Enchanted Mageweave Pouch : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]
				{ 104, 14046,  18405 },                         -- Runecloth Bag : =ds=#sr# 260 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Winterspring"]
				{ 105, 10051,  12079 },                         -- Red Mageweave Bag : =ds=#sr# 235 : =ds=AtlasLoot["Trainer"]
				{ 106, 10050,  12065 },                         -- Mageweave Bag : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 107, 5765,   6695 },                          -- Black Silk Pack : =ds=#sr# 185 : =ds=AtlasLoot["Drop"]
				{ 108, 5764,   6693 },                          -- Green Silk Pack : =ds=#sr# 175 : =ds=AtlasLoot["Drop"]
				{ 109, 4245,   3813 },                          -- Small Silk Pack : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 110, 5763,   6688 },                          -- Red Woolen Bag : =ds=#sr# 115 : =ds=AtlasLoot["Vendor"]
				{ 111, 4241,   3758 },                          -- Green Woolen Bag : =ds=#sr# 95 : =ds=AtlasLoot["Drop"]
				{ 112, 4240,   3757 },                          -- Woolen Bag : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 113, 5762,   6686 },                          -- Red Linen Bag : =ds=#sr# 70 : =ds=AtlasLoot["Vendor"]
				{ 114, 4238,   3755 },                          -- Linen Bag : =ds=#sr# 45 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --TailoringArmorEnhancements
			name = AL["Armor Enhancements"],
			[TWW_DIFF] = {
				{ 1, 222888, 446999 }, -- Weavercloth Spellthread
				{ 2, 222894, 447001 }, -- Daybreak Spellthread
				{ 3, 222891, 447000 }, -- Sunset Spellthread
			},
			[BFA_DIFF] = {
				{ 1, "prof279182" }, -- Resilient Spellthread
				{ 2, "prof279183" }, -- Discreet Spellthread
				{ 3, "prof279184" }, -- Feathery Spellthread
			},
			[NORMAL_DIFF] = {
				{ 1,   128012,      168855, [PRICE_EXTRA_ITTYPE] = "118722:5" }, -- Hexweave Essence (Sold, Ashran)
				{ 2,   127715,      187492, [PRICE_EXTRA_ITTYPE] = "111557:60" }, -- Mighty Hexweave Essence (Sold, Garrison)
				{ 3,   127733,      187516, [PRICE_EXTRA_ITTYPE] = "111557:60" }, -- Savage Hexweave Essence (Sold, Garrison)
				{ 5,   114836,      168836, [PRICE_EXTRA_ITTYPE] = "118722:1" }, -- Hexweave Embroidery (Sold, Ashran)
				{ 7,   "prof125496" },                                -- Master's Spellthread - Rank 3 : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 8,   "prof75154" },                                 -- Master's Spellthread - Rank 2 : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 9,   "prof56034" },                                 -- Master's Spellthread - Rank 1 : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 10,  "prof125497" },                                -- Sanctified Spellthread - Rank 3 : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 11,  "prof75155" },                                 -- Sanctified Spellthread - Rank 2 : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 12,  "prof56039" },                                 -- Sanctified Spellthread - Rank 1 : =ds=#sr# 405 : =ds=AtlasLoot["Trainer"]
				{ 16,  82445,       125555 },                         -- Greater Cerulean Spellthread : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 17,  82444,       125554 },                         -- Greater Pearlescent Spellthread : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Golden Lotus"] - AtlasLoot["Honored"]
				{ 18,  82443,       125553 },                         -- Cerulean Spellthread : =ds=#sr# 540 : =ds=AtlasLoot["Trainer"]
				{ 19,  82442,       125552 },                         -- Pearlescent Spellthread : =ds=#sr# 530 : =ds=AtlasLoot["Trainer"]
				{ 20,  54448,       75309 },                          -- Powerful Enchanted Spellthread : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
				{ 21,  54450,       75310 },                          -- Powerful Ghostly Spellthread : =ds=#sr# 525 : =ds=AtlasLoot["Vendor"] "8 #embersilkbolt#"
				{ 22,  54449,       75255 },                          -- Ghostly Spellthread : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 23,  54447,       75250 },                          -- Enchanted Spellthread : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 25,  41602,       56009 },                          -- Brilliant Spellthread : =ds=#sr# 430 : =ds=AtlasLoot_IngameLocales["Argent Crusade"] - AtlasLoot["Exalted"]
				{ 26,  41604,       56011 },                          -- Sapphire Spellthread : =ds=#sr# 430 : =ds=AtlasLoot_IngameLocales["Kirin Tor"] - AtlasLoot["Exalted"]
				{ 27,  41603,       56010 },                          -- Azure Spellthread : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 28,  41601,       56008 },                          -- Shining Spellthread : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 101, 24276,       31433 },                          -- Golden Spellthread : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["The Aldor"] - AtlasLoot["Exalted"]
				{ 102, 24274,       31432 },                          -- Runic Spellthread : =ds=#sr# 375 : =ds=AtlasLoot_IngameLocales["The Scryers"] - AtlasLoot["Exalted"]
				{ 103, 24273,       31430 },                          -- Mystic Spellthread : =ds=#sr# 335 : =ds=AtlasLoot_IngameLocales["The Scryers"] - AtlasLoot["Honored"]
				{ 104, 24275,       31431 },                          -- Silver Spellthread : =ds=#sr# 335 : =ds=AtlasLoot_IngameLocales["The Aldor"] - AtlasLoot["Honored"]
			},
		},
		{ -- Profession Equipment
			name = AL["Profession Equipment"],
			[TWW_DIFF] = {
				{ 1,  225729, 456706 },                                   -- Algari Weaverline
				{ 2,  222845, 446968 },                                   -- Weavercloth Alchemist's Robe
				{ 3,  222846, 446969 },                                   -- Weavercloth Chef's Hat
				{ 4,  222843, 446966 },                                   -- Weavercloth Enchanter's Hat
				{ 5,  222842, 446965 },                                   -- Weavercloth Fishing Cap
				{ 6,  222841, 446964 },                                   -- Weavercloth Gardening Hat
				{ 7,  222844, 446967 },                                   -- Weavercloth Tailor's Coat
				{ 8,  222850, 446973, [PRICE_EXTRA_ITTYPE] = "210814:150:kej:1500" }, -- Artisan Alchemist's Robe
				{ 9,  222851, 446974 },                                   -- Artisan Chef's Hat
				{ 10, 222849, 446972, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Artisan Enchanter's Hat
				{ 11, 222848, 446971, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Artisan Fishing Cap
				{ 12, 222847, 446970, [PRICE_EXTRA_ITTYPE] = "210814:150" }, -- Artisan Gardening Hat
				{ 13, 222852, 446975 },                                   -- Artisan Tailor's Coat
			},
		},
		{ --TailoringMisc
			name = AL["Miscellaneous"],
			[TWW_DIFF] = {
				{ 1, 224440, 447002 }, -- Weavercloth Bandage
				{ 2, 222879, 446996 }, -- Bright Polishing Cloth
				{ 3, 222876, 446998 }, -- Gritty Polishing Cloth
				{ 4, 222882, 446997 }, -- Weavercloth Embroidery Thread
				{ 5, 222885, 446995 }, -- Preserving Embroidery Thread
				{ 6, 222868, 446991 }, -- Dawnthread Lining
				{ 7, 222871, 446992 }, -- Duskthread Lining
			},
			[BFA_DIFF] = {
				{ 1,  159792, 268983 }, -- Hooked Deep Sea Net
				{ 16, 159791, 268982 }, -- Tidespray Linen Net

				{ 3,  158381, 267201 }, -- Tidespray Linen Bandage
				{ 18, 158382, 267202 }, -- Deep Sea Bandage

				{ 5,  154705, 257137 }, -- Battle Flag: Rallying Swiftness
				{ 6,  154705, 257138 }, -- Battle Flag: Rallying Swiftness
				{ 7,  154705, 257139 }, -- Battle Flag: Rallying Swiftness


				{ 9,  154706, 257134 }, -- Battle Flag: Phalanx Defense
				{ 10, 154706, 257135 }, -- Battle Flag: Phalanx Defense
				{ 11, 154706, 257136 }, -- Battle Flag: Phalanx Defense

				{ 20, 154707, 257131 }, -- Battle Flag: Spirit of Freedom
				{ 21, 154707, 257132 }, -- Battle Flag: Spirit of Freedom
				{ 22, 154707, 257133 }, -- Battle Flag: Spirit of Freedom

				{ 13, 162108, 278414 }, -- Rough-hooked Tidespray Linen
			},
			[NORMAL_DIFF] = {
				{ 1,  139503, 220511 },                        -- Bloodtotem Saddle Blanket
				{ 3,  137558, 213037 },                        -- Clothes Chest: Molten Core
				{ 4,  137557, 213036 },                        -- Clothes Chest: Karazhan Opera House
				{ 5,  137556, 213035 },                        -- Clothes Chest: Dalaran Citizens
				{ 7,  115363, 168850, [PRICE_EXTRA_ITTYPE] = "118722:5" }, -- Creeping Carpet (Sold, Ashran)
				{ 8,  54797,  75597 },                         -- Frosty Flying Carpet : =ds=#sr# 425 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 9,  44558,  60971 },                         -- Magnificent Flying Carpet : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 10, 44554,  60969 },                         -- Flying Carpet : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 12, 118722, 176058 },                        -- Secrets of Draenor Tailoring (Learnt by item 115357)
				{ 16, 54442,  75247,  [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Embersilk Net : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 17, 41509,  55898,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Frostweave Net : =ds=#sr# 360 : =ds=AtlasLoot["Trainer"]
				{ 18, 24268,  31460,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Netherweave Net : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 20, 113216, 168849, [PRICE_EXTRA_ITTYPE] = "118722:5" }, -- Elekk Plushie (Sold, Ashran)
				{ 21, 90900,  125557 },                        -- Imperial Moth : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 22, 90902,  125557 },                        -- Imperial Silkworm : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --TailoringCloth
			name = AL["Cloth"],
			[TWW_DIFF] = {
				{ 1, 222804, 446929 },                   -- Weavercloth Bolt
				{ 2, 224832, 454397 },                   -- Exquisite Weavercloth Bolt
				{ 3, 222798, 446927, [ATLASLOOT_IT_AMOUNT1] = "2" }, -- Duskweave Bolt
				{ 4, 222801, 446928, [ATLASLOOT_IT_AMOUNT1] = "2" }, -- Dawnweave Bolt
			},
			[BFA_DIFF] = {
				{ 1, 158378, 272440 }, -- Embroidered Deep Sea Satin
			},
			[LEGION_DIFF] = {
				{ 1, 127004, 185962 }, -- Imbued Silkweave
			},
			[WOD_DIFF] = {
				{ 1, 111556, 168835, [ATLASLOOT_IT_AMOUNT1] = "8+" }, -- Hexweave Cloth (Learnt by item 115357)
				{ 2, 111556, 182123, [PRICE_EXTRA_ITTYPE] = "111557:60" } -- Hexweave Cloth (Sold in Garrison)
			},
			[MOP_DIFF] = {
				{ 1, 98619, 146925 }, -- Accelerated Celestial Cloth : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 2, 98619, 143011 }, -- Celestial Cloth : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Pandaria"]
				{ 3, 82447, 130325 }, -- Song of Harmony : =ds=#sr# 560 : =ds=AtlasLoot["Trainer"]
				{ 4, 92960, 125557 }, -- Imperial Silk : =ds=#sr# 550 : =ds=AtlasLoot["Trainer"]
				{ 6, 82441, 125551 }, -- Bolt of Windwool Cloth : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 54440, 94743 }, -- Dream of Destruction : =ds=#sr# 525 : =ds=AtlasLoot["Trainer"]
				{ 2, 54440, 75141 }, -- Dream of Skywall : =ds=#sr# 515 : =ds=AtlasLoot["Trainer"]
				{ 3, 54440, 75145 }, -- Dream of Ragnaros : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 4, 54440, 75142 }, -- Dream of Deepholm : =ds=#sr# 505 : =ds=AtlasLoot["Trainer"]
				{ 5, 54440, 75144 }, -- Dream of Hyjal : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 6, 54440, 75146 }, -- Dream of Azshara : =ds=#sr# 500 : =ds=AtlasLoot["Trainer"]
				{ 8, 53643, 74964 }, -- Bolt of Embersilk Cloth : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
			},
			[WOTLK_DIFF] = {
				{ 1, 41593, 56002 }, -- Ebonweave : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 2, 41594, 56001 }, -- Moonshroud : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 3, 41595, 56003 }, -- Spellweave : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 5, 41511, 55900 }, -- Bolt of Imbued Frostweave : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 6, 41510, 55899 }, -- Bolt of Frostweave : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1, 21845, 26751 }, -- Primal Mooncloth : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]
				{ 2, 24272, 36686 }, -- Shadowcloth : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]
				{ 3, 24271, 31373 }, -- Spellcloth : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]
				{ 5, 21844, 26750 }, -- Bolt of Soulcloth : =ds=#sr# 345 : =ds=AtlasLoot["Vendor"]
				{ 6, 21842, 26747 }, -- Bolt of Imbued Netherweave : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]
				{ 7, 21840, 26745 }, -- Bolt of Netherweave : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1, 14342, 18560 }, -- Mooncloth : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Winterspring"]
				{ 3, 14048, 18401 }, -- Bolt of Runecloth : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 4, 4339,  3865 }, -- Bolt of Mageweave : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 5, 4305,  3839 }, -- Bolt of Silk Cloth : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 6, 2997,  2964 }, -- Bolt of Woolen Cloth : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 7, 2996,  2963 }, -- Bolt of Linen Cloth : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
		{ --TailoringShirts
			name = AL["Shirts"],
			[NORMAL_DIFF] = {
				{ 1,  41249, 55994 }, -- Blue Lumberjack Shirt : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 2,  41253, 55998 }, -- Blue Workman's Shirt : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 3,  41250, 55996 }, -- Green Lumberjack Shirt : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 4,  41255, 56000 }, -- Green Workman's Shirt : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 5,  41248, 55993 }, -- Red Lumberjack Shirt : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 6,  41252, 55997 }, -- Red Workman's Shirt : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 7,  41254, 55999 }, -- Rustic Workman's Shirt : =ds=#sr# 400 : =ds=AtlasLoot["Drop"]
				{ 8,  41251, 55995 }, -- Yellow Lumberjack Shirt : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 9,  10034, 12085 }, -- Tuxedo Shirt : =ds=#sr# 240 : =ds=AtlasLoot["Vendor"]
				{ 10, 10055, 12080 }, -- Pink Mageweave Shirt : =ds=#sr# 235 : =ds=AtlasLoot["Vendor"]
				{ 11, 10054, 12075 }, -- Lavender Mageweave Shirt : =ds=#sr# 230 : =ds=AtlasLoot["Vendor"]
				{ 12, 10052, 12064 }, -- Orange Martial Shirt : =ds=#sr# 220 : =ds=AtlasLoot["Vendor"]
				{ 13, 10056, 12061 }, -- Orange Mageweave Shirt : =ds=#sr# 215 : =ds=AtlasLoot["Trainer"]
				{ 14, 4336,  3873 }, -- Black Swashbuckler's Shirt : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["The Cape of Stranglethorn"]
				{ 15, 17723, 21945 }, -- Green Holiday Shirt : =ds=#sr# 190 : =ds=#QUESTID:6984#
				{ 16, 4335,  3872 }, -- Rich Purple Silk Shirt : =ds=#sr# 185 : =ds=AtlasLoot["Drop"]
				{ 17, 6796,  8489 }, -- Red Swashbuckler's Shirt : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 18, 4334,  3871 }, -- Formal White Shirt : =ds=#sr# 170 : =ds=AtlasLoot["Trainer"]
				{ 19, 6795,  8483 }, -- White Swashbuckler's Shirt : =ds=#sr# 160 : =ds=AtlasLoot["Trainer"]
				{ 20, 4333,  3870 }, -- Dark Silk Shirt : =ds=#sr# 155 : =ds=AtlasLoot["Vendor"]
				{ 21, 4332,  3869 }, -- Bright Yellow Shirt : =ds=#sr# 135 : =ds=AtlasLoot["Trainer"]
				{ 22, 6384,  7892 }, -- Stylish Blue Shirt : =ds=#sr# 120 : =ds=AtlasLoot["Drop"]
				{ 23, 6385,  7893 }, -- Stylish Green Shirt : =ds=#sr# 120 : =ds=AtlasLoot["Drop"]
				{ 24, 4330,  3866 }, -- Stylish Red Shirt : =ds=#sr# 110 : =ds=AtlasLoot["Trainer"]
				{ 25, 2587,  2406 }, -- Gray Woolen Shirt : =ds=#sr# 100 : =ds=AtlasLoot["Trainer"]
				{ 26, 2579,  2396 }, -- Green Linen Shirt : =ds=#sr# 70 : =ds=AtlasLoot["Trainer"]
				{ 27, 2577,  2394 }, -- Blue Linen Shirt : =ds=#sr# 40 : =ds=AtlasLoot["Trainer"]
				{ 28, 2575,  2392 }, -- Red Linen Shirt : =ds=#sr# 40 : =ds=AtlasLoot["Trainer"]
				{ 29, 2576,  2393 }, -- White Linen Shirt : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 30, 4344,  3915 }, -- Brown Linen Shirt : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
			},
		},
	}
}

data["Archaeology"] = {
	name = C_Spell.GetSpellName(78670),
	ContentType = SECPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --ArchaeologyArmorWeapons
			name = AL["Armor"].." & "..AL["Weapons"],
			[NORMAL_DIFF] = {
				{ 1,  64885,  92163 }, -- Scimitar of the Sirocco : AL["Tol'vir"]
				{ 2,  64460,  90997 }, -- Nifflevar Bearded Axe : AL["Vrykul"]
				{ 3,  64377,  90608 }, -- Zin'rokh, Destroyer of Worlds : AL["Troll"]
				{ 4,  64880,  92139 }, -- Staff of Ammunae : AL["Tol'vir"]
				{ 5,  64489,  91227 }, -- Staff of Sorcerer-Thane Thaurissan : AL["Dwarf"]
				{ 6,  69764,  98533 }, -- Extinct Turtle Shell : AL["Fossil"]
				{ 8,  117382, 168331 }, -- Beakbreaker of Terokk : AL["Arakkoa"]
				{ 9,  95391,  139786 }, -- Mantid Sky Reaver : AL["Mantid"]
				{ 10, 117384, 168320 }, -- Warmaul of the Warmaul Chieftain : AL["Ogre"]
				{ 11, 89685,  113981 }, -- Spear of Xuen : AL["Pandaren"]
				{ 12, 95392,  139787 }, -- Sonic Pulse Generator : AL["Mantid"]
				{ 16, 64643,  90616 }, -- Queen Azshara's Dressing Gown : AL["Night Elf"]
				{ 17, 64644,  90843 }, -- Headdress of the First Shaman : AL["Orc"]
				{ 18, 64904,  92168 }, -- Ring of the Boy Emperor : AL["Tol'vir"]
				{ 19, 64645,  91757 }, -- Tyrande's Favorite Doll : AL["Night Elf"]
				{ 23, 116985, 172459 }, -- Headdress of the First Shaman : AL["Draenor Clans"]
				{ 24, 117385, 168319 }, -- Sorcerer-King Toe Ring : AL["Ogre"]
				{ 25, 89611,  113992 }, -- Quilen Statuette : AL["Mogu"]
				{ 26, 89684,  113980 }, -- Umbrella of Chi-Ji : AL["Pandaren"]
			},
		},
		{ --ArchaeologyMisc
			name = AL["Miscellaneous"],
			[NORMAL_DIFF] = {
				{ 1,  67538,  91790 }, -- Recipe: Vial of the Sands : AL["Tol'vir"] : (p1 525)
				{ 2,  60954,  90619 }, -- Fossilized Raptor : AL["Fossil"]
				{ 3,  64883,  92148 }, -- Scepter of Azj'Aqir : AL["Tol'vir"]
				{ 5,  60847,  92137 }, -- Crawling Claw : AL["Tol'vir"]
				{ 6,  64372,  90521 }, -- Clockwork Gnome : AL["Dwarf"]
				{ 7,  60955,  89693 }, -- Fossilized Hatchling : AL["Fossil"]
				{ 8,  69821,  98582 }, -- Pterrordax Hatchling : AL["Fossil"]
				{ 9,  69824,  98588 }, -- Voodoo Figurine : AL["Troll"]
				{ 10, 117380, 172466 }, -- Ancient Frostwolf Fang : AL["Draenor Clans"]
				{ 11, 117354, 172460 }, -- Ancient Nest Guardian : AL["Arakkoa"]
				{ 13, 89614,  113993 }, -- Anatomical Dummy : AL["Mogu"]
				{ 14, 64488,  91226 }, -- The Innkeeper's Daughter : AL["Dwarf"]
				{ 15, 64457,  90984 }, -- The Last Relic of Argus : AL["Draenei"]
				{ 16, 64481,  91214 }, -- Blessing of the Old God : AL["Fossil"]
				{ 17, 64646,  91761 }, -- Bones of Transformation : AL["Night Elf"]
				{ 18, 64881,  92145 }, -- Pendant of the Scarab Storm : AL["Tol'vir"]
				{ 19, 64482,  91215 }, -- Puzzle Box of Yogg-Saron : AL["Fossil"]
				{ 20, 64651,  91773 }, -- Wisp Amulet : AL["Night Elf"]
				{ 21, 69776,  98560 }, -- Ancient Amber : AL["Fossil"]
				{ 22, 64456,  90983 }, -- Arrival of the Naaru : AL["Draenei"]
				{ 23, 64373,  90553 }, -- Chalice of the Mountain Kings : AL["Dwarf"]
				{ 24, 64361,  90493 }, -- Druid and Priest Statue Set : AL["Night Elf"]
				{ 25, 69777,  98556 }, -- Haunted War Drum : AL["Troll"]
				{ 26, 64358,  90464 }, -- Highborne Soul Mirror : AL["Night Elf"]
				{ 27, 64383,  90614 }, -- Kaldorei Wind Chimes : AL["Night Elf"]
				{ 28, 69775,  98569 }, -- Vrykul Drinking Horn : AL["Vrykul"]
			},
		},
		{ --ArchaeologyArakkoa
			name = AL["Arakkoa"],
			[WOD_DIFF] = {
				{ 1,  117382, 168331 }, -- Beakbreaker of Terokk
				{ 3,  114204, 168328 }, -- Apexis Crystal
				{ 4,  114205, 168329 }, -- Apexis Hieroglyph
				{ 5,  114206, 168330 }, -- Apexis Scroll
				{ 6,  114198, 168322 }, -- Burial Urn
				{ 7,  114199, 168323 }, -- Decree Scrolls
				{ 16, 117354, 172460 }, -- Ancient Nest Guardian
				{ 18, 114197, 168321 }, -- Dreamcatcher
				{ 19, 114203, 168327 }, -- Outcast Dreamcatcher
				{ 20, 114200, 168324 }, -- Solar Orb
				{ 21, 114201, 168325 }, -- Sundial
				{ 22, 114202, 168326 }, -- Talonpriest Mask
			},
		},
		{ --ArchaeologyDraenorClans
			name = AL["Draenor Clans"],
			[WOD_DIFF] = {
				{ 1,  116985, 172459 }, -- Headdress of the First Shaman
				{ 3,  114171, 168305 }, -- Ancestral Talisman
				{ 4,  114163, 168301 }, -- Barbed Fishing Hook
				{ 5,  114157, 168298 }, -- Blackrock Razor
				{ 6,  114167, 168303 }, -- Ceremonial Tattoo Needles
				{ 7,  114169, 168304 }, -- Cracked Ivory Idol
				{ 8,  114177, 168308 }, -- Doomsday Prophecy
				{ 9,  114155, 168297 }, -- Elemental Bellows
				{ 10, 114141, 168290 }, -- Fang-Scarred Frostwolf Axe
				{ 11, 114173, 168306 }, -- Flask of Blazegrease
				{ 16, 117380, 172466 }, -- Ancient Frostwolf Fang
				{ 18, 114143, 168291 }, -- Frostwolf Ancestry Scrimshaw
				{ 19, 114175, 168307 }, -- Gronn-Tooth Necklace
				{ 20, 114161, 168300 }, -- Hooked Dagger
				{ 21, 114153, 168296 }, -- Metalworker's Hammer
				{ 22, 114149, 168294 }, -- Screaming Bullroarer
				{ 23, 114147, 168293 }, -- Warsinger's Drums
				{ 24, 114151, 168295 }, -- Warsong Ceremonial Pike
				{ 25, 114159, 168299 }, -- Weighted Chopping Axe
				{ 26, 114145, 168292 }, -- Wolfskin Snowshoes
			},
		},
		{ --ArchaeologyOgre
			name = AL["Ogre"],
			[WOD_DIFF] = {
				{ 1,  117385, 168319 }, -- Sorcerer-King Toe Ring
				{ 3,  114191, 168315 }, -- Eye of Har'gunn the Blind
				{ 4,  114189, 168313 }, -- Gladiator's Shield
				{ 5,  114194, 168318 }, -- Imperial Decree Stele
				{ 6,  114190, 168314 }, -- Mortar and Pestle
				{ 7,  114185, 168311 }, -- Ogre Figurine
				{ 16, 117384, 168320 }, -- Warmaul of the Warmaul Chieftain
				{ 18, 114187, 168312 }, -- Pictogram Carving
				{ 19, 114193, 168317 }, -- Rylak Riding Harness
				{ 20, 114192, 168316 }, -- Stone Dentures
				{ 21, 114183, 168310 }, -- Stone Manacles
				{ 22, 114181, 168309 }, -- Stonemaul Succession Stone
			},
		},
		{ --ArchaeologyMantid
			name = AL["Mantid"],
			[MOP_DIFF] = {
				{ 1,  95391, 139786 }, -- Mantid Sky Reaver : =ds=#sr# 600
				{ 3,  95376, 139779 }, -- Ancient Sap Feeder : =ds=#sr# 600 : #ACHIEVEMENTID:8219#
				{ 4,  95375, 139776 }, -- Banner of the Mantid Empire : =ds=#sr# 600 : #ACHIEVEMENTID:8219#
				{ 5,  95378, 139781 }, -- Inert Sound Beacon : =ds=#sr# 600 : #ACHIEVEMENTID:8219#
				{ 6,  95382, 139785 }, -- Kypari Sap Container : =ds=#sr# 600 : #ACHIEVEMENTID:8219#
				{ 16, 95392, 139787 }, -- Sonic Pulse Generator : =ds=#sr# 600
				{ 18, 95380, 139783 }, -- Mantid Lamp : =ds=#sr# 600 : #ACHIEVEMENTID:8219#
				{ 19, 95381, 139784 }, -- Pollen Collector : =ds=#sr# 600 : #ACHIEVEMENTID:8219#
				{ 20, 95379, 139782 }, -- Remains of a Paragon : =ds=#sr# 600 : #ACHIEVEMENTID:8219#
				{ 21, 95377, 139780 }, -- The Praying Mantid : =ds=#sr# 600 : #ACHIEVEMENTID:8219#
			},
		},
		{ --ArchaeologyMogu
			name = AL["Mogu"],
			[MOP_DIFF] = {
				{ 1,  89614, 113993 }, -- Anatomical Dummy : =ds=#sr# 525 : #ACHIEVEMENTID:7334#
				{ 3,  79909, 113983 }, -- Cracked Mogu Runestone : =ds=#sr# 525 : #ACHIEVEMENTID:7335#
				{ 4,  79913, 113987 }, -- Edicts of the Thunder King : =ds=#sr# 525 : #ACHIEVEMENTID:7337#
				{ 5,  79914, 113988 }, -- Iron Amulet : =ds=#sr# 525 : #ACHIEVEMENTID:7335#
				{ 6,  79908, 113982 }, -- Manacles of Rebellion : =ds=#sr# 525 : #ACHIEVEMENTID:7334#
				{ 7,  79916, 113990 }, -- Mogu Coin : =ds=#sr# 525 : #ACHIEVEMENTID:7335#
				{ 16, 89611, 113992 }, -- Quilen Statuette : =ds=#sr# 525 : #ACHIEVEMENTID:7336#
				{ 18, 79911, 113985 }, -- Petrified Bone Whip : =ds=#sr# 525 : #ACHIEVEMENTID:7334#
				{ 19, 79910, 113984 }, -- Terracotta Arm : =ds=#sr# 525 : #ACHIEVEMENTID:7336#
				{ 20, 79912, 113986 }, -- Thunder King Insignia : =ds=#sr# 525 : #ACHIEVEMENTID:7335#
				{ 21, 79915, 113989 }, -- Warlord's Branding Iron : =ds=#sr# 525 : #ACHIEVEMENTID:7334#
				{ 22, 79917, 113991 }, -- Worn Monument Ledger : =ds=#sr# 525 : #ACHIEVEMENTID:7337#
			},
		},
		{ --ArchaeologyPandaren
			name = AL["Pandaren"],
			[MOP_DIFF] = {
				{ 1,  89685, 113981 }, -- Spear of Xuen : #ACHIEVEMENTID:7333# : nil
				{ 3,  79903, 113977 }, -- Apothecary Tins : =ds=#sr# 525 : #ACHIEVEMENTID:7332#
				{ 4,  79901, 113975 }, -- Carved Bronze Mirror : =ds=#sr# 525 : #ACHIEVEMENTID:7332#
				{ 5,  79900, 113974 }, -- Empty Keg of Brewfather Xin Wo Yin : =ds=#sr# 525 : #ACHIEVEMENTID:7331#
				{ 6,  79902, 113976 }, -- Gold-Inlaid Porcelain Funerary Figurine : =ds=#sr# 525 : #ACHIEVEMENTID:7332#
				{ 7,  79897, 113971 }, -- Pandaren Game Board : =ds=#sr# 525 : #ACHIEVEMENTID:7359#
				{ 16, 89684, 113980 }, -- Umbrella of Chi-Ji : #ACHIEVEMENTID:7333# : nil
				{ 18, 79896, 113968 }, -- Pandaren Tea Set : =ds=#sr# 525 : #ACHIEVEMENTID:7358#
				{ 19, 79904, 113978 }, -- Pearl of Yu'lon : =ds=#sr# 525 : #ACHIEVEMENTID:7333#
				{ 20, 79905, 113979 }, -- Standard of Niuzao : =ds=#sr# 525 : #ACHIEVEMENTID:7333#
				{ 21, 79898, 113972 }, -- Twin Stein Set of Brewfather Quan Tou Kuo : =ds=#sr# 525 : #ACHIEVEMENTID:7331#
				{ 22, 79899, 113973 }, -- Walking Cane of Brewfather Ren Yun : =ds=#sr# 525 : #ACHIEVEMENTID:7331#
			},
		},
		{ --ArchaeologyTolvir
			name = AL["Tol'vir"],
			[CATA_DIFF] = {
				{ 1,  67538, 91790 }, -- Recipe: Vial of the Sands : =ds=#sr# 450 : =ds=#p1# (525)
				{ 2,  64904, 92168 }, -- Ring of the Boy Emperor : =ds=#sr# 450 : =ds=#s13#
				{ 3,  64885, 92163 }, -- Scimitar of the Sirocco : =ds=#sr# 450 : =ds=#h1#, #w10#
				{ 4,  64880, 92139 }, -- Staff of Ammunae : =ds=#sr# 450 : =ds=#w9#
				{ 6,  64657, 91790 }, -- Canopic Jar : =ds=#sr# 450 : #ACHIEVEMENTID:5301#
				{ 7,  64652, 91775 }, -- Castle of Sand : =ds=#sr# 450 : nil
				{ 8,  64653, 91779 }, -- Cat Statue with Emerald Eyes : =ds=#sr# 450 : #ACHIEVEMENTID:5301#
				{ 9,  64656, 91785 }, -- Engraved Scimitar Hilt : =ds=#sr# 450 : #ACHIEVEMENTID:5301#
				{ 16, 60847, 92137 }, -- Crawling Claw : =ds=#sr# 450 : =ds=#e13#
				{ 17, 64883, 92148 }, -- Scepter of Azj'Aqir : =ds=#sr# 450 : =ds=#e12#
				{ 18, 64881, 92145 }, -- Pendant of the Scarab Storm : =ds=#sr# 450 : =ds=
				{ 21, 64658, 91792 }, -- Sketch of a Desert Palace : =ds=#sr# 450 : #ACHIEVEMENTID:5301#
				{ 22, 64654, 91780 }, -- Soapstone Scarab Necklace : =ds=#sr# 450 : #ACHIEVEMENTID:5301#
				{ 23, 64655, 91782 }, -- Tiny Oasis Mosaic : =ds=#sr# 450 : #ACHIEVEMENTID:5301#
			},
		},
		{ --ArchaeologyNerubian
			name = AL["Nerubian"],
			[WOTLK_DIFF] = {
				{ 1,  64481, 91214 }, -- Blessing of the Old God : =ds=#sr# 350 : nil
				{ 3,  64479, 91209 }, -- Ewer of Jormungar Blood : =ds=#sr# 350 : nil
				{ 4,  64477, 91191 }, -- Gruesome Heart Box : =ds=#sr# 350 : nil
				{ 5,  64476, 91188 }, -- Infested Ruby Ring : =ds=#sr# 350 : nil
				{ 6,  64475, 91170 }, -- Scepter of Nezar'Azret : =ds=#sr# 350 : #ACHIEVEMENTID:4858#
				{ 16, 64482, 91215 }, -- Puzzle Box of Yogg-Saron : =ds=#sr# 350 : nil
				{ 18, 64478, 91197 }, -- Six-Clawed Cornice : =ds=#sr# 350 : nil
				{ 19, 64474, 91133 }, -- Spidery Sundial : =ds=#sr# 350 : nil
				{ 20, 64480, 91211 }, -- Vizier's Scrawled Streamer : =ds=#sr# 350 : nil
			},
		},
		{ --ArchaeologyVrykul
			name = AL["Vrykul"],
			[WOTLK_DIFF] = {
				{ 1,  64460, 90997 }, -- Nifflevar Bearded Axe : =ds=#sr# 350 : =ds=#h1#, #w1#
				{ 3,  64464, 91014 }, -- Fanged Cloak Pin : =ds=#sr# 350 : nil
				{ 4,  64462, 91012 }, -- Flint Striker : =ds=#sr# 350 : nil
				{ 5,  64459, 90988 }, -- Intricate Treasure Chest Key : =ds=#sr# 350 : nil
				{ 16, 69775, 98569 }, -- Vrykul Drinking Horn : =ds=#sr# 350 : nil
				{ 18, 64461, 91008 }, -- Scramseax : =ds=#sr# 350 : nil
				{ 19, 64467, 91084 }, -- Thorned Necklace : =ds=#sr# 350 : nil
			},
		},
		{ --ArchaeologyDraenei
			name = AL["Draenei"],
			[BC_DIFF] = {
				{ 1,  64456, 90983 }, -- Arrival of the Naaru : =ds=#sr# 300 : nil
				{ 3,  64440, 90853 }, -- Anklet with Golden Bells : =ds=#sr# 300 : nil
				{ 4,  64453, 90968 }, -- Baroque Sword Scabbard : =ds=#sr# 300 : nil
				{ 5,  64442, 90860 }, -- Carved Harp of Exotic Wood : =ds=#sr# 300 : nil
				{ 6,  64455, 90975 }, -- Dignified Portrait : =ds=#sr# 300 : nil
				{ 16, 64457, 90984 }, -- The Last Relic of Argus : =ds=#sr# 300 : nil
				{ 18, 64454, 90974 }, -- Fine Crystal Candelabra : =ds=#sr# 300 : nil
				{ 19, 64458, 90987 }, -- Plated Elekk Goad : =ds=#sr# 300 : nil
				{ 20, 64444, 90864 }, -- Scepter of the Nathrezim : =ds=#sr# 300 : #ACHIEVEMENTID:4858#
				{ 21, 64443, 90861 }, -- Strange Silver Paperweight : =ds=#sr# 300 : nil
			},
		},
		{ --ArchaeologyOrc
			name = AL["Orc"],
			[BC_DIFF] = {
				{ 1,  64644, 90843 }, -- Headdress of the First Shaman : =ds=#sr# 300 : =ds=#s1#, #a3#
				{ 3,  64436, 90831 }, -- Fiendish Whip : =ds=#sr# 300 : nil
				{ 4,  64421, 90734 }, -- Fierce Wolf Figurine : =ds=#sr# 300 : nil
				{ 5,  64418, 90728 }, -- Gray Candle Stub : =ds=#sr# 300 : #ACHIEVEMENTID:5192#
				{ 6,  64417, 90720 }, -- Maul of Stone Guard Mur'og : =ds=#sr# 300 : #ACHIEVEMENTID:5192#
				{ 7,  64419, 90730 }, -- Rusted Steak Knife : =ds=#sr# 300 : #ACHIEVEMENTID:5192#
				{ 18, 64420, 90732 }, -- Scepter of Nekros Skullcrusher : =ds=#sr# 300 : #ACHIEVEMENTID:4858#
				{ 19, 64438, 90833 }, -- Skull Drinking Cup : =ds=#sr# 300 : nil
				{ 20, 64437, 90832 }, -- Tile of Glazed Clay : =ds=#sr# 300 : nil
				{ 21, 64389, 90622 }, -- Tiny Bronze Scorpion : =ds=#sr# 300 : #ACHIEVEMENTID:5192#
			},
		},
		{ --ArchaeologyDwarf
			name = AL["Dwarf"],
			[CLASSIC_DIFF] = {
				{ 1,   64489, 91227 }, -- Staff of Sorcerer-Thane Thaurissan : =ds=#sr# 75 : =ds=#w9#
				{ 3,   64372, 90521 }, -- Clockwork Gnome : =ds=#sr# 75 : =ds=#e13#
				{ 4,   64373, 90553 }, -- Chalice of the Mountain Kings : =ds=#sr# 75 : nil
				{ 5,   64488, 91226 }, -- The Innkeeper's Daughter : =ds=#sr# 75 : nil
				{ 7,   63113, 88910 }, -- Belt Buckle with Anvilmar Crest : =ds=#sr# 1 : nil
				{ 8,   64339, 90411 }, -- Bodacious Door Knocker : =ds=#sr# 1 : nil
				{ 9,   63112, 86866 }, -- Bone Gaming Dice : =ds=#sr# 1 : nil
				{ 10,  64340, 90412 }, -- Boot Heel with Scrollwork : =ds=#sr# 1 : nil
				{ 11,  63409, 86864 }, -- Ceramic Funeral Urn : =ds=#sr# 1 : nil
				{ 12,  64362, 90504 }, -- Dented Shield of Horuz Killcrow : =ds=#sr# 1 : #ACHIEVEMENTID:5193#
				{ 13,  66054, 93440 }, -- Dwarven Baby Socks : =ds=#sr# 1 : nil
				{ 14,  64342, 90413 }, -- Golden Chamber Pot : =ds=#sr# 1 : nil
				{ 15,  64344, 90419 }, -- Ironstar's Petrified Shield : =ds=#sr# 1 : #ACHIEVEMENTID:4859#
				{ 16,  64368, 90518 }, -- Mithril Chain of Angerforge : =ds=#sr# 1 : #ACHIEVEMENTID:4859#
				{ 17,  63414, 89717 }, -- Moltenfist's Jeweled Goblet : =ds=#sr# 1 : #ACHIEVEMENTID:4859#
				{ 18,  64337, 90410 }, -- Notched Sword of Tunadil the Redeemer : =ds=#sr# 1 : #ACHIEVEMENTID:5193#
				{ 19,  63408, 86857 }, -- Pewter Drinking Cup : =ds=#sr# 1 : nil
				{ 20,  64659, 91793 }, -- Pipe of Franclorn Forgewright : =ds=#sr# 1 : nil
				{ 21,  64487, 91225 }, -- Scepter of Bronzebeard : =ds=#sr# 1 : #ACHIEVEMENTID:4858#
				{ 22,  64367, 90509 }, -- Scepter of Charlga Razorflank : =ds=#sr# 1 : #ACHIEVEMENTID:4858#
				{ 23,  64366, 90506 }, -- Scorched Staff of Shadow Priest Anund : =ds=#sr# 1 : #ACHIEVEMENTID:5193#
				{ 24,  64483, 91219 }, -- Silver Kris of Korl : =ds=#sr# 1 : #ACHIEVEMENTID:5193#
				{ 25,  63411, 88181 }, -- Silver Neck Torc : =ds=#sr# 1 : nil
				{ 26,  64371, 90519 }, -- Skull Staff of Shadowforge : =ds=#sr# 1 : #ACHIEVEMENTID:4859#
				{ 27,  64485, 91223 }, -- Spiked Gauntlets of Anvilrage : =ds=#sr# 1 : #ACHIEVEMENTID:4859#
				{ 28,  63410, 88180 }, -- Stone Gryphon : =ds=#sr# 1 : nil
				{ 29,  64484, 91221 }, -- Warmaul of Burningeye : =ds=#sr# 1 : #ACHIEVEMENTID:4859#
				{ 30,  64343, 90415 }, -- Winged Helm of Corehammer : =ds=#sr# 1 : #ACHIEVEMENTID:4859#
				{ 101, 63111, 88909 }, -- Wooden Whistle : =ds=#sr# 1 : nil
				{ 102, 64486, 91224 }, -- Word of Empress Zoe : =ds=#sr# 1 : nil
				{ 103, 63110, 86865 }, -- Worn Hunting Knife : =ds=#sr# 1 : nil
			},
		},
		{ --ArchaeologyFossil
			name = AL["Fossil"],
			[CLASSIC_DIFF] = {
				{ 1,  69764, 98533 }, -- Extinct Turtle Shell : =ds=#sr# 75 : =ds=#w8#
				{ 2,  60954, 90619 }, -- Fossilized Raptor : =ds=#sr# 75 : =ds=#e26#
				{ 5,  64355, 90452 }, -- Ancient Shark Jaws : =ds=#sr# 1 : nil
				{ 6,  63121, 88930 }, -- Beautiful Preserved Fern : =ds=#sr# 1 : nil
				{ 7,  63109, 88929 }, -- Black Trilobite : =ds=#sr# 1 : nil
				{ 8,  64349, 90432 }, -- Devilsaur Tooth : =ds=#sr# 1 : nil
				{ 9,  64385, 90617 }, -- Feathered Raptor Arm : =ds=#sr# 1 : nil
				{ 10, 64473, 91132 }, -- Imprint of a Kraken Tentacle : =ds=#sr# 1 : nil
				{ 16, 60955, 89693 }, -- Fossilized Hatchling : =ds=#sr# 75 : =ds=#e13#
				{ 17, 69821, 98582 }, -- Pterrordax Hatchling : =ds=#sr# 75 : =ds=#e13#
				{ 18, 69776, 98560 }, -- Ancient Amber : =ds=#sr# 75 : =ds=
				{ 20, 64350, 90433 }, -- Insect in Amber : =ds=#sr# 1 : nil
				{ 21, 64468, 91089 }, -- Proto-Drake Skeleton : =ds=#sr# 1 : nil
				{ 22, 66056, 93442 }, -- Shard of Petrified Wood : =ds=#sr# 1 : nil
				{ 23, 66057, 93443 }, -- Strange Velvet Worm : =ds=#sr# 1 : nil
				{ 24, 63527, 89895 }, -- Twisted Ammonite Shell : =ds=#sr# 1 : nil
				{ 25, 64387, 90618 }, -- Vicious Ancient Fish : =ds=#sr# 1 : nil
			},
		},
		{ --ArchaeologyNightElf
			name = AL["Night Elf"],
			[CLASSIC_DIFF] = {
				{ 1,  64645, 91757 }, -- Tyrande's Favorite Doll : =ds=#sr# 75
				{ 2,  64643, 90616 }, -- Queen Azshara's Dressing Gown : =ds=#sr# 75
				{ 3,  64646, 91761 }, -- Bones of Transformation : =ds=#sr# 75
				{ 4,  64651, 91773 }, -- Wisp Amulet : =ds=#sr# 75
				{ 6,  64647, 91762 }, -- Carcanet of the Hundred Magi : =ds=#sr# 1
				{ 7,  64379, 90610 }, -- Chest of Tiny Glass Animals : =ds=#sr# 1 : #ACHIEVEMENTID:5191#
				{ 8,  63407, 89696 }, -- Cloak Clasp with Antlers : =ds=#sr# 1 : #ACHIEVEMENTID:5191#
				{ 9,  63525, 89893 }, -- Coin from Eldre'Thalas : =ds=#sr# 1
				{ 10, 64381, 90611 }, -- Cracked Crystal Vial : =ds=#sr# 1 : #ACHIEVEMENTID:5191#
				{ 11, 64357, 90458 }, -- Delicate Music Box : =ds=#sr# 1 : #ACHIEVEMENTID:5191#
				{ 12, 63528, 89896 }, -- Green Dragon Ring : =ds=#sr# 1
				{ 13, 64356, 90453 }, -- Hairpin of Silver and Malachite : =ds=#sr# 1 : #ACHIEVEMENTID:5191#
				{ 14, 63129, 89009 }, -- Highborne Pyxis : =ds=#sr# 1
				{ 16, 64361, 90493 }, -- Druid and Priest Statue Set : =ds=#sr# 75
				{ 17, 64358, 90464 }, -- Highborne Soul Mirror : =ds=#sr# 75
				{ 18, 64383, 90614 }, -- Kaldorei Wind Chimes : =ds=#sr# 75
				{ 21, 63130, 89012 }, -- Inlaid Ivory Comb : =ds=#sr# 1
				{ 22, 64354, 90451 }, -- Kaldorei Amphora : =ds=#sr# 1
				{ 23, 66055, 93441 }, -- Necklace with Elune Pendant : =ds=#sr# 1
				{ 24, 63131, 89014 }, -- Scandalous Silk Nightgown : =ds=#sr# 1
				{ 25, 64382, 90612 }, -- Scepter of Xavius : =ds=#sr# 1 : #ACHIEVEMENTID:4858#
				{ 26, 63526, 89894 }, -- Shattered Glaive : =ds=#sr# 1
				{ 27, 64648, 91766 }, -- Silver Scroll Case : =ds=#sr# 1 : #ACHIEVEMENTID:5191#
				{ 28, 64378, 90609 }, -- String of Small Pink Pearls : =ds=#sr# 1
				{ 29, 64650, 91769 }, -- Umbra Crescent : =ds=#sr# 1
			},
		},
		{ --ArchaeologyTroll
			name = AL["Troll"],
			[CLASSIC_DIFF] = {
				{ 1,  64377, 90608 }, -- Zin'rokh, Destroyer of Worlds : =ds=#sr# 75 : =ds=#h2#, #w10#
				{ 4,  64348, 90429 }, -- Atal'ai Scepter : =ds=#sr# 1 : #ACHIEVEMENTID:4858#
				{ 5,  64346, 90421 }, -- Bracelet of Jade and Coins : =ds=#sr# 1 : nil
				{ 6,  63524, 89891 }, -- Cinnabar Bijou : =ds=#sr# 1 : nil
				{ 7,  64375, 90581 }, -- Drakkari Sacrificial Knife : =ds=#sr# 1 : nil
				{ 8,  63523, 89890 }, -- Eerie Smolderthorn Idol : =ds=#sr# 1 : nil
				{ 9,  63413, 89711 }, -- Feathered Gold Earring : =ds=#sr# 1 : nil
				{ 10, 63120, 88907 }, -- Fetish of Hir'eek : =ds=#sr# 1 : nil
				{ 16, 69824, 98588 }, -- Voodoo Figurine : =ds=#sr# 75 : =ds=#e13#
				{ 17, 69777, 98556 }, -- Haunted War Drum : =ds=#sr# 75 : nil
				{ 19, 66058, 93444 }, -- Fine Bloodscalp Dinnerware : =ds=#sr# 1 : nil
				{ 20, 64347, 90423 }, -- Gahz'rilla Figurine : =ds=#sr# 1 : nil
				{ 21, 63412, 89701 }, -- Jade Asp with Ruby Eyes : =ds=#sr# 1 : nil
				{ 22, 63118, 88908 }, -- Lizard Foot Charm : =ds=#sr# 1 : nil
				{ 23, 64345, 90420 }, -- Skull-Shaped Planter : =ds=#sr# 1 : nil
				{ 24, 64374, 90558 }, -- Tooth with Gold Filling : =ds=#sr# 1 : nil
				{ 25, 63115, 88262 }, -- Zandalari Voodoo Doll : =ds=#sr# 1 : nil
			},
		},
	}
}

data["Cooking"] = {
	name = C_Spell.GetSpellName(2550),
	ContentType = SECPROFESSION_CONTENT,
	TableType = CRAFTING_ITTYPE,
	items = {
		{ --CookingAttributes
			name = AL["Attributes"],
			[TWW_DIFF] = {
				{ 1, 222713, 445093, [ATLASLOOT_IT_AMOUNT1] = "3" }, -- Tender Twilight Jerky
				{ 2, 222712, 445092, [ATLASLOOT_IT_AMOUNT1] = "3" }, -- Sweet and Sour Meatballs
				{ 3, 222711, 445091, [ATLASLOOT_IT_AMOUNT1] = "3" }, -- Rib Stickers
				{ 4, 222710, 445090, [ATLASLOOT_IT_AMOUNT1] = "3" }, -- Meat and Potatoes
				{ 5, 222726, 445106, [ATLASLOOT_IT_AMOUNT1] = "3" }, -- Stuffed Cave Peppers
				{ 6, 222724, 445104, [ATLASLOOT_IT_AMOUNT1] = "3" }, -- Sizzling Honey Roast
				{ 7, 222725, 445105, [ATLASLOOT_IT_AMOUNT1] = "3" }, -- Mycobloom Risotto
				{ 8, 222727, 445107, [ATLASLOOT_IT_AMOUNT1] = "3" }, -- Angler's Delight
			},
			[WOD_DIFF] = {
				{ 1, 122347, 180760 },                    -- Whiptail Fillet (Sold, Garrison)
				{ 2, 111447, 160984, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Talador Surf and Turf (Learnt by tasting or cooking)
				{ 3, 111431, 160958, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Hearty Elekk Steak (Learnt by tasting or cooking)
				{ 4, 111439, 160973, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Steamed Scorpion (Learnt by tasting or cooking)
			},
			[MOP_DIFF] = {
				{ 1,  74648,  104303, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Sea Mist Rice Noodles : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Way of the Wok"]
				{ 2,  101746, 145305 },                 -- Seasoned Pomfruit Slices : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]
				{ 3,  74647,  104302 },                 -- Valley Stir Fry : =ds=#sr# 550 : =ds=AtlasLoot_IngameLocales["Way of the Wok"]
				{ 4,  74643,  104301 },                 -- Sauteed Carrots : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Way of the Wok"]
				{ 6,  74650,  104306, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Mogu Fish Stew : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Way of the Pot"]
				{ 7,  101748, 145307 },                 -- Spiced Blossom Soup : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]
				{ 8,  74649,  104305 },                 -- Braised Turtle : =ds=#sr# 550 : =ds=AtlasLoot_IngameLocales["Way of the Pot"]
				{ 9,  74644,  104304 },                 -- Swirling Mist Soup : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Way of the Pot"]
				{ 11, 101747, 145309 },                 -- Farmer's Delight : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]
				{ 12, 74653,  104309, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Steamed Crab Surprise : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Way of the Steamer"]
				{ 13, 74652,  104308 },                 -- Fire Spirit Salmon : =ds=#sr# 550 : =ds=AtlasLoot_IngameLocales["Way of the Steamer"]
				{ 14, 74651,  104307 },                 -- Shrimp Dumplings : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Way of the Steamer"]
				{ 16, 74656,  104312, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Chun Tian Spring Rolls : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Way of the Oven"]
				{ 17, 101749, 145310 },                 -- Stuffed Lushrooms : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]
				{ 18, 74655,  104311 },                 -- Twin Fish Platter : =ds=#sr# 550 : =ds=AtlasLoot_IngameLocales["Way of the Oven"]
				{ 19, 74654,  104310 },                 -- Wildfowl Roast : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Way of the Oven"]
				{ 21, 74646,  104300, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Black Pepper Ribs and Shrimp : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Way of the Grill"]
				{ 22, 101750, 145311 },                 -- Fluffy Silkfeather Omelet : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]
				{ 23, 74645,  104299 },                 -- Eternal Blossom Fish : =ds=#sr# 550 : =ds=AtlasLoot_IngameLocales["Way of the Grill"]
				{ 24, 74642,  104298 },                 -- Charbroiled Tiger Steak : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Way of the Grill"]
			},
			[CATA_DIFF] = {
				{ 1, 62669, 88042 }, -- Skewered Eel : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 2, 62658, 88046 }, -- Tender Baked Turtle : =ds=#sr# 475 : =ds=AtlasLoot["Cooking Daily"]
				{ 4, 62671, 88039 }, -- Severed Sagefish Head : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 5, 62660, 88033 }, -- Pickled Guppy : =ds=#sr# 475 : =ds=AtlasLoot["Cooking Daily"]
				{ 7, 62670, 88005 }, -- Bear-Basted Crocolisk : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 8, 62659, 88021 }, -- Hearty Seafood Soup : =ds=#sr# 475 : =ds=AtlasLoot["Cooking Daily"]
			},
			[WOTLK_DIFF] = {
				{ 1, 42999, 57441 }, -- Blackened Dragonfin : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3, 43000, 57442 }, -- Dragonfin Filet : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
			},
			[BC_DIFF] = {
				{ 1, 27659, 33288 }, -- Warp Burger : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Terokkar Forest"]
				{ 2, 27664, 33293 }, -- Grilled Mudfish : =ds=#sr# 320 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Nagrand"]
				{ 4, 27658, 33287 }, -- Roasted Clefthoof : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Nagrand"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  13928, 18240 },                 -- Grilled Squid : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 3,  35565, 46688 },                 -- Juicy Bear Burger : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 4,  18254, 22761 },                 -- Runn Tum Tuber Surprise : =ds=#sr# 275 : =ds=AtlasLoot["Drop"]
				{ 6,  20452, 24801 },                 -- Smoked Desert Dumplings : =ds=#sr# 285 : ["Quest: 8313"]
				{ 8,  46691, 65454 },                 -- Bread of the Dead : =ds=#sr# 1 : =ds=AtlasLoot["Vendor"]
				{ 16, 21023, 25659, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Dirge's Kickin' Chimaerok Chops : =ds=#sr# 300 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 17, 13934, 18246 },                 -- Mightfish Steak : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Feralas"]
				{ 18, 13927, 18239 },                 -- Cooked Glossy Mightfish : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stranglethorn Vale"]
				{ 19, 17198, 21144 },                 -- Winter Veil Egg Nog : =ds=#sr# 35 : =ds=AtlasLoot["Vendor"]
				{ 20, 5474,  6414,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Roasted Kodo Meat : =ds=#sr# 35 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Mulgore"]
				{ 21, 2888,  2795 },                  -- Beer Basted Boar Ribs : =ds=#sr# 10 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stormwind City"]
				{ 22, 5472,  6412 },                  -- Kaldorei Spider Kabob : =ds=#sr# 10 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 23, 2680,  2539 },                  -- Spiced Wolf Meat : =ds=#sr# 10 : =ds=AtlasLoot["Trainer"]
				{ 24, 12224, 15935 },                 -- Crispy Bat Wing : =ds=#sr# 1 : =ds=AtlasLoot["Vendor"]
				{ 25, 17197, 21143 },                 -- Gingerbread Cookie : =ds=#sr# 1 : =ds=AtlasLoot["Vendor"]
				{ 26, 6888,  8604 },                  -- Herb Baked Egg : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 27, 27635, 33276 },                 -- Lynx Steak : =ds=#sr# 1 : =ds=AtlasLoot["Vendor"]
				{ 28, 24105, 33277 },                 -- Roasted Moongraze Tenderloin : =ds=#sr# 1 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 29, 44837, 66038 },                 -- Spice Bread Stuffing : =ds=#sr# 1 : =ds=AtlasLoot["Vendor"]
			},
		},
		{ --CookingRatings
			name = AL["Ratings"],
			[TWW_DIFF] = {
				{ 1,  223968, 447872,  [PRICE_EXTRA_ITTYPE] = "kej:1500" },                       -- Spongey Scramble
				{ 2,  222704, 445084,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Unseasoned Field Steak
				{ 3,  222702, 445082,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Skewered Fillet
				{ 4,  222703, 445083,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Simple Stew
				{ 5,  222705, 445085,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Roasted Mycobloom
				{ 6,  222706, 445086,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Pan-Seared Mycobloom
				{ 7,  222707, 445087,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Hallowfall Chili
				{ 8,  222709, 445089,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Flashfire Fillet
				{ 9,  222708, 445088,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Coreway Kabob
				{ 10, 222714, 445094,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Zesty Nibblers
				{ 11, 222719, 445099,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Sweet and Spicy Soup
				{ 12, 222717, 445097,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Salty Dog
				{ 13, 222722, 445102,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Salt Baked Seafood
				{ 14, 222723, 445103,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Marinated Tenderloins
				{ 15, 222716, 445096,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Ginger-Glazed Fillet
				{ 16, 222721, 445101,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Fish and Chips
				{ 17, 222715, 445095,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Fiery Fish Sticks
				{ 18, 225592, 455424,  [ATLASLOOT_IT_AMOUNT1] = "2" },                            -- Exquisitely Eviscerated Muscle
				{ 19, 222718, 445098,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Deepfin Patty
				{ 20, 222736, 445116,  [ATLASLOOT_IT_AMOUNT1] = "5" },                            -- Chippy Tea
				{ 21, 222730, 445110,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Jester's Board
				{ 22, 222731, 445111,  [ATLASLOOT_IT_AMOUNT1] = "3",     [PRICE_EXTRA_ITTYPE] = "kej:2638" }, -- Outsider's Provisions
				{ 23, 222729, 445109,  [ATLASLOOT_IT_AMOUNT1] = "3",     [PRICE_EXTRA_ITTYPE] = "kej:1500" }, -- Empress' Farewell
				{ 24, 222728, 445108,  [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Beledar's Bounty
				{ 25, 235805, 1218414, [ATLASLOOT_IT_AMOUNT1] = "3" },                            -- Authentic Undermine Clam Chowder
				{ 26, 223967, 447871,  [PRICE_EXTRA_ITTYPE] = "kej:1500" },                       -- Protein Slurp
			},
			[BFA_DIFF] = {
				{ 1, 154887, 259436, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Loa Loaf
				{ 2, 154883, 259425, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Ravenberry Tarts
				{ 3, 154881, 259412, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Kul Tiramisu
				{ 4, 154885, 259444, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Mon'Dazi
				{ 5, 154886, 259447, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Spiced Snapper
				{ 6, 154888, 259440, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Sailor's Pie
				{ 7, 154884, 259427, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Swamp Fish 'n Chips
				{ 8, 154882, 259414, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Honey-Glazed Haunches
			},
			[LEGION_DIFF] = {
				-- Critical Strike
				{ 1,  133557, 201413, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Salt and Pepper Shank
				{ 2,  133565, 201500, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Leybeque Ribs
				{ 3,  133570, 201505, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- The Hungry Magister
				-- Haste
				{ 5,  133561, 201496, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Deep-Fried Mossgill
				{ 6,  133566, 201501, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Suramar Surf and Turf
				{ 7,  133571, 201506, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Azshari Salad
				-- Mastery
				{ 9,  133562, 201497, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Pickled Stormray
				{ 10, 133567, 201502, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Barracuda Mrglgagh
				{ 11, 133572, 201507, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Nightborne Delicacy Platter
				-- Versatility
				{ 13, 133563, 201498, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Faronaar Fizz
				{ 14, 133568, 201503, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Koi-Scented Stormray
				{ 15, 133573, 201508, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Seed-Battered Fish Plate
			},
			[WOD_DIFF] = {
				{ 1,  122345, 180758 },                    -- Pickled Eel (Sold, Garrison)
				{ 2,  111449, 160986, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Blackrock Barbecue (Learnt by tasting or cooking)
				{ 3,  111433, 160962, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Blackrock Ham (Learnt by tasting or cooking)
				{ 4,  111441, 160978, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Grilled Gulper (Learnt by tasting or cooking)
				{ 6,  122348, 180761 },                    -- Buttered Sturgeon (Sold, Garrison)
				{ 7,  111450, 160987, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Frosty Stew (Learnt by tasting or cooking)
				{ 8,  111434, 160966, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Pan-Seared Talbuk (Learnt by tasting or cooking)
				{ 9,  111442, 160979, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Sturgeon Stew (Learnt by tasting or cooking)
				{ 11, 122343, 180762 },                    -- Sleeper Sushi (Sold, Garrison)
				{ 12, 111452, 160989, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Sleeper Surprise (Learnt by tasting or cooking)
				{ 13, 111436, 160968, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Braised Riverbeast (Learnt by tasting or cooking)
				{ 14, 111444, 160981, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Fat Sleeper Cakes (Learnt by tasting or cooking)
				{ 16, 122344, 180757 },                    -- Salty Squid Roll (Sold, Garrison)
				{ 17, 111453, 160999, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Calamari Crepes (Learnt by tasting or cooking)
				{ 18, 111445, 160982, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Fiery Calamari (Learnt by tasting or cooking)
				{ 19, 111437, 160969, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Rylak Crepes (Learnt by tasting or cooking)
				{ 21, 122346, 180759 },                    -- Jumbo Sea Dog (Sold, Garrison)
				{ 22, 111454, 161000, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Gorgrond Chowder (Learnt by tasting or cooking)
				{ 23, 111438, 160971, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Clefthoof Sausages (Learnt by tasting or cooking)
				{ 24, 111446, 160983, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Skulker Chowder (Learnt by tasting or cooking)
			},
			[MOP_DIFF] = {
				{ 1,  81410,  124231, [ATLASLOOT_IT_AMOUNT1] = "2-3" }, -- Green Curry Fish : =ds=#sr# 420 : =ds=AtlasLoot["Trainer"]
				{ 2,  81413,  124234 },                     -- Skewered Peanut Chicken : =ds=#sr# 390 : =ds=AtlasLoot["Trainer"]
				{ 3,  81405,  124228 },                     -- Boiled Silkworm Pupa : =ds=#sr# 210 : =ds=AtlasLoot["Trainer"]
				{ 5,  81412,  124233 },                     -- Blanched Needle Mushrooms : =ds=#sr# 330 : =ds=AtlasLoot["Trainer"]
				{ 6,  81404,  124227 },                     -- Dried Needle Mushrooms : =ds=#sr# 90 : =ds=AtlasLoot["Trainer"]
				{ 8,  86074,  125123, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Spicy Vegetable Chips : =ds=#sr# 500 : =ds=AtlasLoot_IngameLocales["The Tillers"] - AtlasLoot["Exalted"]
				{ 9,  86069,  125122 },                     -- Rice Pudding : =ds=#sr# 520 : =ds=AtlasLoot["Trainer"]
				{ 10, 81408,  124229 },                     -- Red Bean Bun : =ds=#sr# 360 : =ds=AtlasLoot["Trainer"]
				{ 11, 81409,  124230 },                     -- Tangy Yogurt : =ds=#sr# 480 : =ds=AtlasLoot["Trainer"]
				{ 12, 81400,  124223 },                     -- Pounded Rice Cake : =ds=#sr# 120 : =ds=AtlasLoot["Trainer"]
				{ 13, 81401,  124224 },                     -- Yak Cheese Curds : =ds=#sr# 150 : =ds=AtlasLoot["Trainer"]
				{ 16, 86073,  125120, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Spicy Salmon : =ds=#sr# 500 : =ds=AtlasLoot_IngameLocales["The Tillers"] - AtlasLoot["Exalted"]
				{ 17, 86070,  125121 },                     -- Wildfowl Ginseng Soup : =ds=#sr# 510 : =ds=AtlasLoot["Trainer"]
				{ 19, 101745, 145308 },                     -- Mango Ice : =ds=#sr# 600 : =ds=AtlasLoot["Drop"]: AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]
				{ 20, 81414,  125080 },                     -- Pearl Milk Tea : =ds=#sr# 495 : =ds=AtlasLoot["Trainer"]
				{ 21, 81406,  125078 },                     -- Roasted Barley Tea : =ds=#sr# 240 : =ds=AtlasLoot["Trainer"]
				{ 23, 81411,  124232 },                     -- Peach Pie : =ds=#sr# 450 : =ds=AtlasLoot["Trainer"]
				{ 24, 81403,  124226 },                     -- Dried Peaches : =ds=#sr# 180 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1,  62661, 88003 }, -- Baked Rockfish : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 2,  62651, 88028 }, -- Lightly Fried Lurker : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
				{ 4,  62667, 88031 }, -- Mushroom Sauce Mudfish : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 5,  62657, 88030 }, -- Lurker Lunch : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
				{ 7,  62665, 88004 }, -- Basilisk Liverdog : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 8,  62664, 88014 }, -- Crocolisk Au Gratin : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 9,  62655, 88012 }, -- Broiled Mountain Trout : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
				{ 10, 62654, 88024 }, -- Lavascale Fillet : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
				{ 16, 62662, 88020 }, -- Grilled Dragon : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 17, 62652, 88037 }, -- Seasoned Crab : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
				{ 19, 62663, 88025 }, -- Lavascale Minestrone : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 20, 62653, 88035 }, -- Salted Eye : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
				{ 22, 62668, 88034 }, -- Blackbelly Sushi : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 24, 62666, 88016 }, -- Delicious Sagefish Tail : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 25, 62656, 88047 }, -- Whitecrest Gumbo : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
			},
			[WOTLK_DIFF] = {
				{ 1,  42995, 57436 }, -- Hearty Rhino : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,  34756, 45557 }, -- Spiced Worm Burger : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,  34768, 45571 }, -- Spicy Blue Nettlefish : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,  34764, 45565 }, -- Poached Nettlefish : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 5,  34750, 45551 }, -- Worm Delight : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 7,  34769, 45570 }, -- Imperial Manta Steak : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 8,  42994, 57434 }, -- Rhinolicious Wormsteak : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 9,  34757, 45558 }, -- Very Burnt Worg : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 10, 42942, 45569 }, -- Baked Manta Ray : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 11, 34751, 45552 }, -- Roasted Worg : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 16, 42996, 57437 }, -- Snapper Extreme : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 17, 44953, 62350 }, -- Worg Tartare : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 19, 42998, 57439 }, -- Cuttlesteak : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 20, 34758, 45559 }, -- Mighty Rhino Dogs : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 21, 42993, 57433 }, -- Spicy Fried Herring : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 22, 34765, 45566 }, -- Pickled Fangtooth : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 23, 34752, 45553 }, -- Rhino Dogs : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[BC_DIFF] = {
				{ 1,  33825, 43707 },                 -- Skullfish Soup : =ds=#sr# 325 : =ds=AtlasLoot["Drop"]
				{ 3,  33872, 43765 },                 -- Spicy Hot Talbuk : =ds=#sr# 325 : =ds=AtlasLoot["Drop"]
				{ 16, 33052, 42302, [ATLASLOOT_IT_AMOUNT1] = 6 }, -- Fisherman's Feast : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 17, 27667, 33296 },                 -- Spicy Crawdad : =ds=#sr# 350 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Terokkar Forest"]
				{ 18, 33867, 43761 },                 -- Broiled Bloodfin : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 19, 27651, 33279 },                 -- Buzzard Bites : =ds=#sr# 300 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 20, 30155, 36210 },                 -- Clam Bar : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Zangarmarsh"]
				{ 21, 27662, 33291 },                 -- Feltail Delight : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Zangarmarsh"]
				{ 22, 31672, 38867 },                 -- Mok'Nathal Shortribs : =ds=#sr# 335 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Blade's Edge Mountains"]
				{ 23, 34411, 45022, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Hot Apple Cider : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]
				{ 24, 27660, 33289 },                 -- Talbuk Steak : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Nagrand"]
			},
			[CLASSIC_DIFF] = {
				{ 1,   [ATLASLOOT_IT_ALLIANCE] = { 44836, 62044 }, [ATLASLOOT_IT_HORDE] = { 44836, 66036 } },                -- Pumpkin Pie : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]
				{ 3,   [ATLASLOOT_IT_ALLIANCE] = { 44839, 62051 }, [ATLASLOOT_IT_HORDE] = { 44839, 66034 } },                -- Candied Sweet Potato : =ds=#sr# 220 : =ds=AtlasLoot["Vendor"]
				{ 5,   13929,                                      18242 },                                                  -- Hot Smoked Bass : =ds=#sr# 240 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stranglethorn Vale"]
				{ 7,   12218,                                      15933 },                                                  -- Monster Omelet : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]
				{ 8,   12216,                                      15915 },                                                  -- Spiced Chili Crab : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]
				{ 9,   18045,                                      22480 },                                                  -- Tender Wolf Steak : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]
				{ 10,  12215,                                      15910,                                  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Heavy Kodo Stew : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Desolace"]
				{ 11,  17222,                                      21175 },                                                  -- Spider Sausage : =ds=#sr# 200 : =ds=AtlasLoot["Trainer"]
				{ 12,  4457,                                       4094 },                                                   -- Barbecued Buzzard Wing : =ds=#sr# 175 : =ds=AtlasLoot["Trainer"]
				{ 13,  12213,                                      15863 },                                                  -- Carrion Surprise : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 14,  6038,                                       7213 },                                                   -- Giant Clam Scorcho : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stranglethorn Vale"]
				{ 15,  13851,                                      15856 },                                                  -- Hot Wolf Ribs : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 16,  12212,                                      15861,                                  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Jungle Stew : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 17,  12214,                                      15865 },                                                  -- Mystery Stew : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 18,  12210,                                      15855 },                                                  -- Roast Raptor : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 19,  3729,                                       3400 },                                                   -- Soothing Turtle Bisque : =ds=#sr# 175 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 20,  20074,                                      24418 },                                                  -- Heavy Crocolisk Stew : =ds=#sr# 150 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dustwallow Marsh"]
				{ 21,  3728,                                       3399 },                                                   -- Tasty Lion Steak : =ds=#sr# 150 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 22,  3665,                                       3376 },                                                   -- Curiously Tasty Omelet : =ds=#sr# 130 : =ds=AtlasLoot["Vendor"]
				{ 23,  5527,                                       6500 },                                                   -- Goblin Deviled Clams : =ds=#sr# 125 : =ds=AtlasLoot["Trainer"]
				{ 24,  12209,                                      15853 },                                                  -- Lean Wolf Steak : =ds=#sr# 125 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Desolace"]
				{ 25,  3664,                                       3373 },                                                   -- Crocolisk Gumbo : =ds=#sr# 120 : =ds=AtlasLoot["Vendor"]
				{ 26,  3726,                                       3397 },                                                   -- Big Bear Steak : =ds=#sr# 110 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Desolace"]
				{ 27,  3666,                                       3377 },                                                   -- Gooey Spider Cake : =ds=#sr# 110 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 28,  5480,                                       6419,                                   [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Lean Venison : =ds=#sr# 110 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Desolace"]
				{ 29,  5479,                                       6418,                                   [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Crispy Lizard Tail : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Northern Barrens"]
				{ 30,  1082,                                       2547 },                                                   -- Redridge Goulash : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stormwind City"]
				{ 101, 1017,                                       2549,                                   [ATLASLOOT_IT_AMOUNT1] = 3 }, -- Seasoned Wolf Kabob : =ds=#sr# 100 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 102, 3663,                                       3372 },                                                   -- Murloc Fin Soup : =ds=#sr# 90 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stormwind City"]
				{ 103, 3662,                                       3370 },                                                   -- Crocolisk Steak : =ds=#sr# 80 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stormwind City"]
				{ 104, 2687,                                       2546 },                                                   -- Dry Pork Ribs : =ds=#sr# 80 : =ds=AtlasLoot["Trainer"]
				{ 105, 2683,                                       2544 },                                                   -- Crab Cake : =ds=#sr# 75 : =ds=AtlasLoot["Trainer"]
				{ 106, 3220,                                       3371,                                   [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Blood Sausage : =ds=#sr# 60 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stormwind City"]
				{ 107, 22645,                                      28267 },                                                  -- Crunchy Spider Surprise : =ds=#sr# 60 : =ds=AtlasLoot["Vendor"]
				{ 108, 27636,                                      33278 },                                                  -- Bat Bites : =ds=#sr# 50 : =ds=AtlasLoot["Vendor"]
				{ 109, 5525,                                       6499 },                                                   -- Boiled Clams : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 110, 2684,                                       2541 },                                                   -- Coyote Steak : =ds=#sr# 50 : =ds=AtlasLoot["Trainer"]
				{ 111, 5476,                                       6415,                                   [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Fillet of Frenzy : =ds=#sr# 50 : =ds=AtlasLoot["Vendor"]
				{ 112, 724,                                        2542 },                                                   -- Goretusk Liver Pie : =ds=#sr# 50 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stormwind City"]
				{ 113, 5477,                                       6416,                                   [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Strider Stew : =ds=#sr# 50 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Northern Barrens"]
			},
		},
		{ --CookingBanquetFeast
			name = AL["Banquets/Feasts"],
			[TWW_DIFF] = {
				{ 1, 222720, 445100, [ATLASLOOT_IT_AMOUNT1] = "3" },                                     -- The Sushi Special
				{ 2, 222733, 445113, [ATLASLOOT_IT_AMOUNT1] = "5" },                                     -- Feast of the Midnight Masquerade
				{ 3, 222732, 445112, [ATLASLOOT_IT_AMOUNT1] = "5" },                                     -- Feast of the Divine Day
				{ 4, 222735, 445115, [ATLASLOOT_IT_AMOUNT1] = "3", [PRICE_EXTRA_ITTYPE] = "resonanceCrystal:1000" }, -- Everything Stew
			},
			[BFA_DIFF] = {
				{ 1, 156526, 259422 }, -- Bountiful Captain's Feast
				{ 2, 156525, 259418 }, -- Galley Banquet
			},
			[LEGION_DIFF] = {
				{ 1, 133578, 201515 }, -- Hearty Feast
				{ 2, 133579, 201516 }, -- Lavish Suramar Feast
				{ 3, 152564, 251258 }, -- Feast of the Fishes
			},
			[NORMAL_DIFF] = {
				{ 1,  111457, 173978, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Feast of Blood (Learnt by tasting or cooking)
				{ 2,  111458, 173979, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Feast of the Waters (Learnt by tasting or cooking)
				{ 4,  101662, 145062, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Pandaren Treasure Noodle Cart Kit : =ds=#sr# 600 : =ds=#QUESTID:33027#
				{ 5,  101661, 145061, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Deluxe Noodle Cart Kit : =ds=#sr# 600 : =ds=#QUESTID:33024#
				{ 6,  101630, 145038, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Noodle Cart Kit : =ds=#sr# 600 : =ds=#QUESTID:33022#
				{ 8,  62290,  88036 },                     -- Seafood Magnifique Feast : =ds=#sr# 525 : #ACHIEVEMENTID:5036#
				{ 9,  62289,  88011 },                     -- Broiled Dragon Feast : =ds=#sr# 500 : #ACHIEVEMENTID:5467#
				{ 11, 43015,  57423 },                     -- Fish Feast : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 12, 43478,  58527 },                     -- Gigantic Feast : =ds=#sr# 425 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 13, 43480,  58528 },                     -- Small Feast : =ds=#sr# 425 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 14, 34753,  45554 },                     -- Great Feast : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 16, 74919,  105190, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Pandaren Banquet : =ds=#sr# 600 : =ds=#QUESTID:31521#
				{ 17, 75016,  105194, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Great Pandaren Banquet : =ds=#sr# 600 : =ds=#QUESTID:31521#
				{ 18, 87246,  125602, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Banquet of the Brew : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Brew"]
				{ 19, 87248,  125603, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Great Banquet of the Brew : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Brew"]
				{ 20, 87226,  125141, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Banquet of the Grill : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Grill"]
				{ 21, 87228,  125142, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Great Banquet of the Grill : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Grill"]
				{ 22, 87242,  125600, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Banquet of the Oven : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Oven"]
				{ 23, 87244,  125601, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Great Banquet of the Oven : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Oven"]
				{ 24, 87234,  125596, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Banquet of the Pot : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Pot"]
				{ 25, 87236,  125597, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Great Banquet of the Pot : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Pot"]
				{ 26, 87238,  125598, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Banquet of the Steamer : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Steamer"]
				{ 27, 87240,  125599, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Great Banquet of the Steamer : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Steamer"]
				{ 28, 87230,  125594, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Banquet of the Wok : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Wok"]
				{ 29, 87232,  125595, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Great Banquet of the Wok : =ds=#sr# 575 : =ds=AtlasLoot_IngameLocales["Way of the Wok"]
			},
		},
		{ --CookingAPSP
			name = AL["Attack/Spell Power"],
			[NORMAL_DIFF] = {
				{ 1,  43015,                                      57423 },                       -- Fish Feast : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 2,  34754,                                      45555 },                       -- Mega Mammoth Meal : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 3,  34766,                                      45567 },                       -- Poached Northern Sculpin : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 4,  43268,                                      58065 },                       -- Dalaran Clam Chowder : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 5,  34753,                                      45554 },                       -- Great Feast : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 6,  34762,                                      45563 },                       -- Grilled Sculpin : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 7,  34748,                                      45549 },                       -- Mammoth Meal : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 8,  27655,                                      33284 },                       -- Ravager Dog : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Hellfire Peninsula"]
				{ 9,  35563,                                      46684 },                       -- Charred Bear Kabobs : =ds=#sr# 250 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Felwood"]
				{ 10, 33004,                                      64054 },                       -- Clamlette Magnifique : =ds=#sr# 250 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 11, [ATLASLOOT_IT_ALLIANCE] = { 44838, 62045 }, [ATLASLOOT_IT_HORDE] = { 44838, 66037 } }, -- Slow-Roasted Turkey : =ds=#sr# 280 : =ds=AtlasLoot["Vendor"]
				{ 16, 43015,                                      57423 },                       -- Fish Feast : =ds=#sr# 450 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 17, 34767,                                      45568 },                       -- Firecracker Salmon : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 18, 34755,                                      45556 },                       -- Tender Shoveltusk Steak : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 19, 43268,                                      58065 },                       -- Dalaran Clam Chowder : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 20, 34753,                                      45554 },                       -- Great Feast : =ds=#sr# 375 : =ds=AtlasLoot["Trainer"]
				{ 21, 34749,                                      45550 },                       -- Shoveltusk Steak : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 22, 34763,                                      45564 },                       -- Smoked Salmon : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 23, 27657,                                      33286 },                       -- Blackened Basilisk : =ds=#sr# 315 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Terokkar Forest"]
				{ 24, 31673,                                      38868 },                       -- Crunchy Serpent : =ds=#sr# 335 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Blade's Edge Mountains"]
				{ 25, 27666,                                      33295 },                       -- Golden Fish Sticks : =ds=#sr# 325 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Terokkar Forest"]
				{ 26, 27665,                                      33294 },                       -- Poached Bluefish : =ds=#sr# 320 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Nagrand"]
				{ 27, [ATLASLOOT_IT_ALLIANCE] = { 44840, 62049 }, [ATLASLOOT_IT_HORDE] = { 44840, 66035 } }, -- Cranberry Chutney : =ds=#sr# 160 : =ds=AtlasLoot["Vendor"]
			},
		},
		{ --CookingSpecial
			name = AL["Special"],
			[TWW_DIFF] = {
				{ 1, 223970, 447874, [ATLASLOOT_IT_AMOUNT1] = "3" },                                                    -- Little Buddy Biscuits
				{ 2, 222748, 445483, [ATLASLOOT_IT_AMOUNT1] = "10" },                                                   -- Sticky Sweet Treat
				{ 3, 225855, 447876, [ATLASLOOT_IT_AMOUNT1] = "5",                 [PRICE_EXTRA_ITTYPE] = "mereldarDerbyMark:10" }, -- Ghoulfish Delight
				{ 4, 222747, 445482, [ATLASLOOT_IT_AMOUNT1] = "10",                [PRICE_EXTRA_ITTYPE] = "mereldarDerbyMark:10" }, -- Rockslide Shake
				{ 5, 222745, 445480, [PRICE_EXTRA_ITTYPE] = "mereldarDerbyMark:10" },                                   -- Pep-In-Your-Step
				{ 6, 222749, 445484, [ATLASLOOT_IT_AMOUNT1] = "10",                [PRICE_EXTRA_ITTYPE] = "mereldarDerbyMark:10" }, -- Melted Candlebar
				{ 7, 223966, 447870, [ATLASLOOT_IT_AMOUNT1] = "2",                 [PRICE_EXTRA_ITTYPE] = "kej:1500" }, -- Everything-on-a-Stick
				{ 7, 223971, 447875, [PRICE_EXTRA_ITTYPE] = "kej:1500" },                                               -- Azj-Kahet Special
			},
			[BFA_DIFF] = {
				{ 1, 163781, 280282, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Heartsbane Hexwurst
			},
			[LEGION_DIFF] = {
				{ 1, 133564, 201499, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Spiced Rib Roast
				{ 2, 133569, 201504, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Drogbar-Style Salmon
				{ 3, 133574, 201511, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Fishbrul Special
				{ 4, 133576, 201513, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Bear Tartare
				{ 5, 133577, 201514, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Fighter Chow
				{ 6, 133681, 201683, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Crispy Bacon
				{ 7, 142334, 230046 },                    -- Spiced Wildfowl Omelet
			},
			[NORMAL_DIFF] = {
				{ 1,  62790, 88015,  [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Darkbrew Lager : =ds=#sr# 415 : =ds=AtlasLoot["Trainer"]
				{ 2,  62674, 88022 },                  -- Highland Spirits : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
				{ 3,  43491, 58523,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Bad Clams : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 4,  43492, 58525,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Haunted Herring : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 5,  43488, 58521,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Last Week's Mammoth : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 6,  43490, 58512,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Tasty Cupcake : =ds=#sr# 350 : =ds=AtlasLoot["Drop"]
				{ 7,  33924, 43779 },                  -- Delicious Chocolate Cake : =ds=#sr# 1 : =ds=AtlasLoot["Cooking Daily"]
				{ 8,  62673, 88017 },                  -- Feathered Lure : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
				{ 9,  34832, 45695,  [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Captain Rumsey's Lager : =ds=#sr# 100 : =ds=AtlasLoot["Drop"]
				{ 10, 42997, 57438 },                  -- Blackened Worg Steak : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 11, 43001, 57443 },                  -- Tracker Snacks : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 12, 86432, 126655 },                 -- Banana Infused Rum : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Way of the Brew"]: AtlasLoot_IngameLocales["Krasarang Wilds"]
				{ 13, 87264, 126654 },                 -- Four Senses Brew : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Way of the Brew"]: AtlasLoot_IngameLocales["Kun-Lai Summit"]
				{ 14, 75038, 124054, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Mad Brewer's Breakfast : =ds=#sr# 600 : =ds=AtlasLoot_IngameLocales["Way of the Brew"]
				{ 15, 75037, 124053 },                 -- Jade Witch Brew : =ds=#sr# 550 : =ds=AtlasLoot_IngameLocales["Way of the Brew"]
				{ 16, 62680, 88013 },                  -- Chocolate Cookie : =ds=#sr# 505 : =ds=AtlasLoot["Cooking Daily"]
				{ 17, 43004, 57435,  [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Critter Bites : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 18, 33866, 43758 },                  -- Stormchops : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 19, 12217, 15906 },                  -- Dragonbreath Chili : =ds=#sr# 200 : =ds=AtlasLoot["Vendor"]
				{ 20, 6657,  8238 },                   -- Savory Deviate Delight : =ds=#sr# 85 : =ds=AtlasLoot["Drop"]
				{ 21, 7676,  9513 },                   -- Thistle Tea : =ds=#sr# 60 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Hillsbrad Foothills"]
				{ 22, 5473,  6413 },                   -- Scorpid Surprise : =ds=#sr# 20 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Durotar"]
				{ 23, 43005, 57440 },                  -- Spiced Mammoth Treats : =ds=#sr# 400 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Dalaran"]
				{ 24, 33874, 43772 },                  -- Kibler's Bits : =ds=#sr# 300 : =ds=AtlasLoot["Drop"]
				{ 25, 13932, 18244 },                  -- Poached Sunscale Salmon : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 26, 27663, 33292 },                  -- Blackened Sporefish : =ds=#sr# 310 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Zangarmarsh"]
				{ 27, 13931, 18243 },                  -- Nightfin Soup : =ds=#sr# 250 : =ds=AtlasLoot["Trainer"]
				{ 28, 21217, 25954 },                  -- Sagefish Delight : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 29, 21072, 25704 },                  -- Smoked Sagefish : =ds=#sr# 80 : =ds=AtlasLoot["Vendor"]
			},
		},
		{ --CookingStandard
			name = AL["Food without Buffs"],
			[TWW_DIFF] = {
				{ 1, 222744, 445479, [ATLASLOOT_IT_AMOUNT1] = "10", [PRICE_EXTRA_ITTYPE] = "money:200000" }, -- Cinder Nectar
			},
			[BFA_DIFF] = {
				{ 1, 154889, 259430, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Grilled Catfish
				{ 2, 154891, 259433, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Seasoned Loins
			},
			[LEGION_DIFF] = {
				{ 1, 133575, 201512, [ATLASLOOT_IT_AMOUNT1] = "5+" }, -- Dried Mackerel Strips
			},
			[WOD_DIFF] = {
				{ 1, 111456, 161002, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Grilled Saberfish (Learnt by item 111387)
				{ 3, 111455, 161001, [ATLASLOOT_IT_AMOUNT1] = "4+" }, -- Saberfish Broth (Learnt by item 111387)
			},
			[MOP_DIFF] = {
				{ 1, 85504, 124032 }, -- Krasarang Fritters : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["The Anglers"] - AtlasLoot["Friendly"]
				{ 2, 86057, 125117 }, -- Sliced Peaches : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 3, 74641, 104297 }, -- Fish Cake : =ds=#sr# 300 : =ds=AtlasLoot["Trainer"]
				{ 5, 75026, 124052 }, -- Ginseng Tea : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["Way of the Brew"]
				{ 6, 86026, 125067 }, -- Perfectly Cooked Instant Noodles : =ds=#sr# 30 : =ds=AtlasLoot["Trainer"]
				{ 8, 85501, 124029 }, -- Viseclaw Soup : =ds=#sr# 525 : =ds=AtlasLoot_IngameLocales["The Anglers"] - AtlasLoot["Friendly"]
				{ 9, 74636, 104237 }, -- Golden Carp Consomme : =ds=#sr# 270 : =ds=AtlasLoot["Trainer"]
			},
			[CATA_DIFF] = {
				{ 1, 62677, 88018 },                 -- Fish Fry : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 2, 62676, 88006 },                 -- Blackened Surprise : =ds=#sr# 425 : =ds=AtlasLoot["Trainer"]
				{ 3, 67230, 93741 },                 -- Venison Jerky : =ds=#sr# 40 : =ds=AtlasLoot["Trainer"]
				{ 5, 68687, 96133 },                 -- Scalding Murglesnout : =ds=#sr# 500 : =ds=AtlasLoot["Cooking Daily"]
				{ 7, 62672, 88044, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- South Island Ice Tea : =ds=#sr# 525 : =ds=AtlasLoot["Cooking Daily"]
				{ 8, 62675, 88045 },                 -- Starfire Espresso : =ds=#sr# 450 : =ds=AtlasLoot["Cooking Daily"]
			},
			[WOTLK_DIFF] = {
				{ 1, 34747, 57421 },                 -- Northern Stew : =ds=#sr# 350 : =ds=LibBabble-Inventory-3.0["Quest"]
				{ 3, 45932, 64358 },                 -- Black Jelly : =ds=#sr# 400 : =ds=AtlasLoot["Trainer"]
				{ 4, 34760, 45561 },                 -- Grilled Bonescale : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 5, 34761, 45562 },                 -- Sauteed Goby : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 6, 34759, 45560 },                 -- Smoked Rockfin : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
				{ 8, 39520, 53056, [ATLASLOOT_IT_AMOUNT1] = 5 }, -- Kungaloosh : =ds=#sr# 350 : =ds=#QUESTID:13571#
			},
			[BC_DIFF] = {
				{ 1, 33048, 42296 },                 -- Stewed Trout : =ds=#sr# 320 : =ds=AtlasLoot["Trainer"]
				{ 2, 27661, 33290 },                 -- Blackened Trout : =ds=#sr# 300 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Zangarmarsh"]
				{ 4, 33053, 42305, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Hot Buttered Trout : =ds=#sr# 350 : =ds=AtlasLoot["Trainer"]
			},
			[CLASSIC_DIFF] = {
				{ 1,  13935, 18247 },                 -- Baked Salmon : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Feralas"]
				{ 2,  13933, 18245 },                 -- Lobster Stew : =ds=#sr# 275 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Feralas"]
				{ 3,  13930, 18241 },                 -- Filet of Redgill : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Stranglethorn Vale"]
				{ 4,  6887,  18238 },                 -- Spotted Yellowtail : =ds=#sr# 225 : =ds=AtlasLoot["Trainer"]
				{ 5,  16766, 20626, [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Undermine Clam Chowder : =ds=#sr# 225 : =ds=AtlasLoot["Vendor"]: AtlasLoot_IngameLocales["Tanaris"]
				{ 6,  8364,  20916 },                 -- Mithril Head Trout : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 7,  4594,  7828 },                  -- Rockscale Cod : =ds=#sr# 175 : =ds=AtlasLoot["Vendor"]
				{ 8,  2685,  2548 },                  -- Succulent Pork Ribs : =ds=#sr# 110 : =ds=AtlasLoot["Drop"]
				{ 9,  4593,  7755 },                  -- Bristle Whisker Catfish : =ds=#sr# 100 : =ds=AtlasLoot["Vendor"]
				{ 10, 5526,  6501 },                  -- Clam Chowder : =ds=#sr# 90 : =ds=AtlasLoot["Vendor"]
				{ 11, 5478,  6417 },                  -- Dig Rat Stew : =ds=#sr# 90 : =ds=AtlasLoot["Vendor"]
				{ 12, 733,   2543,  [ATLASLOOT_IT_AMOUNT1] = 2 }, -- Westfall Stew : =ds=#sr# 90 : =ds=AtlasLoot["Drop"]
				{ 13, 6316,  7754 },                  -- Loch Frenzy Delight : =ds=#sr# 50 : =ds=AtlasLoot["Vendor"]
				{ 14, 4592,  7753 },                  -- Longjaw Mud Snapper : =ds=#sr# 50 : =ds=AtlasLoot["Vendor"]
				{ 15, 5095,  7827 },                  -- Rainbow Fin Albacore : =ds=#sr# 50 : =ds=AtlasLoot["Vendor"]
				{ 16, 6890,  8607 },                  -- Smoked Bear Meat : =ds=#sr# 40 : =ds=AtlasLoot["Vendor"]
				{ 17, 6290,  7751 },                  -- Brilliant Smallfish : =ds=#sr# 1 : =ds=AtlasLoot["Vendor"]
				{ 18, 2679,  2538 },                  -- Charred Wolf Meat : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 19, 2681,  2540 },                  -- Roasted Boar Meat : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 20, 787,   7752 },                  -- Slitherskin Mackerel : =ds=#sr# 1 : =ds=AtlasLoot["Vendor"]
				{ 21, 30816, 37836 },                 -- Spice Bread : =ds=#sr# 1 : =ds=AtlasLoot["Trainer"]
				{ 23, 2682,  2545 },                  -- Cooked Crab Claw : =ds=#sr# 85 : =ds=AtlasLoot["World Drop"]
				{ 25, 10841, 13028, [ATLASLOOT_IT_AMOUNT1] = 4 }, -- Goldthorn Tea : =ds=#sr# 175 : =ds=AtlasLoot_IngameLocales["Razorfen Downs"]
			},
		},
	}
}
