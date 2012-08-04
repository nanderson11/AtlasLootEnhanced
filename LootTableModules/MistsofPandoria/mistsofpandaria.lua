-- $Id$
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local moduleName = "AtlasLootMoP"

-- Index
--- Dungeons & Raids
---- Stormstout Brewery
---- Temple of the Jade Serpent
---- Gate of the Setting Sun
---- Shado-pan Monastery
---- Scholomance
---- Scarlet Halls
---- Mogu'Shan Palace
--- Factions
--- PvP
--- Sets & Collections

	------------------------
	--- Dungeons & Raids ---
	------------------------

		--------------------------
		--- Stormstout Brewery ---
		--------------------------

	AtlasLoot_Data["BreweryOokOok"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80897, "", "=q3=Placeholder", "=ds=#s8#, #a1#", ""};
				{ 3, 80896, "", "=q3=Placeholder", "=ds=#s5#, #a2#", ""};
				{ 4, 80892, "", "=q3=Placeholder", "=ds=#h1#, #w10#", ""};
				{ 16, 0, "inv_box_04", "=q6=#j3#", "#ACHIEVEMENTID:6089#"};
				{ 17, 81134, "", "=q4=Placeholder", "=ds=#s12#, #a4#", ""};
				{ 18, 81064, "", "=q3=Placeholder", "=ds=#s8#, #a1#", ""};
				{ 19, 81133, "", "=q3=Placeholder", "=ds=#s14#", ""};
				{ 20, 81064, "", "=q3=Placeholder", "=ds=#s8#, #a1#", ""};
				{ 21, 81061, "", "=q3=Placeholder", "=ds=#h1#, #w10#", ""};
			}
		};
		info = {
			name = "Ook-Ook",
			module = moduleName, instance = "StormstoutBrewery",
		};
	};

	AtlasLoot_Data["BreweryHoptallus"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80898, "", "=q3=Placeholder", "=ds=#s11#, #a3#", ""};
				{ 3, 80899, "", "=q3=Placeholder", "=ds=#s8#, #a4#", ""};
				{ 4, 80893, "", "=q3=Placeholder", "=ds=#s15#", ""};
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81136, "", "=q3=Placeholder", "=ds=#s4#", ""};
				{ 18, 81135, "", "=q3=Placeholder", "=ds=#s10#, #a2#", ""};
				{ 19, 81077, "", "=q3=Placeholder", "=ds=#s11#, #a3#", ""};
				{ 20, 81065, "", "=q3=Placeholder", "=ds=#s8#, #a4#", ""};
				{ 21, 81076, "", "=q3=Placeholder", "=ds=#s15#", ""};
			}
		};
		info = {
			name = "Hoptallus",
			module = moduleName, instance = "StormstoutBrewery",
		};
	};

	AtlasLoot_Data["BreweryYanZhu"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80903, "", "=q3=Placeholder", "=ds=#s10#, #a1#", ""};
				{ 3, 80900, "", "=q3=Placeholder", "=ds=#s3#, #a2#", ""};
				{ 4, 80902, "", "=q3=Placeholder", "=ds=#s5#, #a3#", ""};
				{ 5, 80901, "", "=q3=Placeholder", "=ds=#s11#, #a4#", ""};
				{ 6, 80894, "", "=q3=Placeholder", "=ds=#h1#, #w6#", ""};
				{ 7, 80895, "", "=q3=Placeholder", "=ds=#w5#", ""};
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81059, "", "=q3=Placeholder", "=ds=#s10#, #a1#", ""};
				{ 18, 81068, "", "=q3=Placeholder", "=ds=#s3#, #a2#", ""};
				{ 19, 81081, "", "=q3=Placeholder", "=ds=#s5#, #a3#", ""};
				{ 20, 81078, "", "=q3=Placeholder", "=ds=#s11#, #a4#", ""};
				{ 21, 81141, "", "=q3=Placeholder", "=ds=#s13#", ""};
				{ 22, 81139, "", "=q3=Placeholder", "=ds=#s13#", ""};
				{ 23, 81138, "", "=q3=Placeholder", "=ds=#s14#", ""};
				{ 24, 81062, "", "=q3=Placeholder", "=ds=#h1#, #w6#", ""};
				{ 25, 81140, "", "=q3=Placeholder", "=ds=#w9#", ""};
				{ 26, 81066, "", "=q3=Placeholder", "=ds=#w5#", ""};
			}
		};
		info = {
			name = "Yan-Zhu",
			module = moduleName, instance = "StormstoutBrewery",
		};
	};

	AtlasLoot_Data["StormstoutBreweryTrash"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = "trash",
			module = moduleName, instance = "StormstoutBrewery",
		};
	};

		------------------------------
		--- Temple of Jade Serpent ---
		------------------------------

		---------------------------------
		--- Gates of the Setting Sun ---
		---------------------------------

		---------------------------
		--- Shado-pan Monastery ---
		---------------------------

		-------------------
		--- Scholomance ---
		-------------------

	AtlasLoot_Data["ScholoChillheart"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = "Instructor Chillheart",
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoJandice"] = {
		["Normal"] = {
			{
				{ 1, 22394, "", "=q3=Staff of Metanoia", "=ds=#w9#"};
			}
		};
		info = {
			name = BabbleBoss["Jandice Barov"],
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoRattlegore"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = BabbleBoss["Rattlegore"],
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoLillianVoss"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = "Lillian Voss",
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoSlate"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = "Professor Slate",
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoGandling"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = BabbleBoss["Darkmaster Gandling"],
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoTrash"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = AL["Trash Mobs"],
			module = moduleName, instance = "Scholomance",
		};
	};

		---------------------
		--- Scarlet Halls ---
		---------------------

	AtlasLoot_Data["SHBraun"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88266, "", "=q3=Hound Trainer's Gloves", "=ds=#s9#, #a2#" },
				{ 3, 88268, "", "=q3=Canine Commander's Breastplate", "=ds=#s5#, #a4#" },
				{ 4, 88267, "", "=q3=Commanding Bracers", "=ds=#s8#, #a4#" },
				{ 5, 88265, "", "=q3=Beastbinder Ring", "=ds=#s13#" },
   				{ 6, 88264, "", "=q3=Houndmaster's Compound Crossbow", "=ds=#w3#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81695, "", "=q3=Hound Trainer's Gloves", "=ds=#s9#, #a2#" },
				{ 18, 81696, "", "=q3=Canine Commander's Breastplate", "=ds=#s5#, #a4#" },
				{ 19, 81694, "", "=q3=Commanding Bracers", "=ds=#s8#, #a4#" },
				{ 20, 81563, "", "=q3=Beastbinder Ring", "=ds=#s13#" },
    			{ 21, 81693, "", "=q3=Houndmaster's Compound Crossbow", "=ds=#w3#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Houndmaster Braun", 660),
			module = moduleName, instance = "ScarletHalls",
		};
	};

	AtlasLoot_Data["SHHarlan"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88269, "", "=q3=Scarlet Sandals", "=ds=#s12#, #a1#" },
				{ 3, 88270, "", "=q3=Lightblade Bracer", "=ds=#s8#, #a2#" },
				{ 4, 88271, "", "=q3=Harlan's Shoulders", "=ds=#s3#, #a3#" },
				{ 5, 88273, "", "=q3=Armsmaster's Sealed Locket", "=ds=#s2#" },
   				{ 6, 88272, "", "=q3=The Gleaming Ravager", "=ds=#h2#, #w1#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81699, "", "=q3=Scarlet Sandals", "=ds=#s12#, #a1#" },
				{ 18, 81700, "", "=q3=Lightblade Bracer", "=ds=#s8#, #a2#" },
				{ 19, 81698, "", "=q3=Harlan's Shoulders", "=ds=#s3#, #a3#" },
				{ 20, 81568, "", "=q3=Armsmaster's Sealed Locket", "=ds=#s2#" },
				{ 21, 81697, "", "=q3=The Gleaming Ravager", "=ds=#h2#, #w1#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Armsmaster Harlan", 654),
			module = moduleName, instance = "ScarletHalls",
		};
	};

	AtlasLoot_Data["SHHarlan"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88269, "", "=q3=Scarlet Sandals", "=ds=#s12#, #a1#" },
				{ 3, 88270, "", "=q3=Lightblade Bracer", "=ds=#s8#, #a2#" },
				{ 4, 88271, "", "=q3=Harlan's Shoulders", "=ds=#s3#, #a3#" },
				{ 5, 88273, "", "=q3=Armsmaster's Sealed Locket", "=ds=#s2#" },
   				{ 6, 88272, "", "=q3=The Gleaming Ravager", "=ds=#h2#, #w1#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81699, "", "=q3=Scarlet Sandals", "=ds=#s12#, #a1#" },
				{ 18, 81700, "", "=q3=Lightblade Bracer", "=ds=#s8#, #a2#" },
				{ 19, 81698, "", "=q3=Harlan's Shoulders", "=ds=#s3#, #a3#" },
				{ 20, 81568, "", "=q3=Armsmaster's Sealed Locket", "=ds=#s2#" },
				{ 21, 81697, "", "=q3=The Gleaming Ravager", "=ds=#h2#, #w1#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Armsmaster Harlan", 654),
			module = moduleName, instance = "ScarletHalls",
		};
	};

	AtlasLoot_Data["SHKoegler"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88279, "", "=q3=Robes of Koegler", "=ds=#s5#, #a1#" },
				{ 3, 88282, "", "=q3=Vellum-Ripper Gloves", "=ds=#s9#, #a2#" },
				{ 4, 88276, "", "=q3=Bindburner Belt", "=ds=#s10#, #a3#" },
    			{ 5, 88283, "", "=q3=Bradbury's Entropic Legguards", "=ds=#s11#, #a3#" },
    			{ 6, 88277, "", "=q3=Pyretic Legguards", "=ds=#s11#, #a4#" },
    			{ 7, 88275, "", "=q3=Scorched Scarlet Key", "=ds=#s2#" },
    			{ 8, 88281, "", "=q3=Temperature-Sensing Necklace", "=ds=#s2#" },
    			{ 9, 88280, "", "=q3=Melted Hypnotic Blade", "=ds=#h3#, #w4#" },
    			{ 10, 88274, "", "=q3=Koegler's Ritual Knife", "=ds=#h1#, #w4#" },
    			{ 11, 88278, "", "=q3=Mograine's Immaculate Might", "=ds=#h2#, #w6#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 87550, "", "=q4=Vithrak, Gaze of the Deadman", "=ds=#s13#" },
    			{ 18, 82817, "", "=q3=Robes of Koegler", "=ds=#s5#, #a1#" },
    			{ 19, 82818, "", "=q3=Vellum-Ripper Gloves", "=ds=#s9#, #a2#" },
    			{ 20, 82815, "", "=q3=Bindburner Belt", "=ds=#s10#, #a3#" },
    			{ 21, 82819, "", "=q3=Bradbury's Entropic Legguards", "=ds=#s11#, #a3#" },
    			{ 22, 82812, "", "=q3=Pyretic Legguards", "=ds=#s11#, #a4#" },
    			{ 23, 81564, "", "=q3=Scorched Scarlet Key", "=ds=#s2#" },
    			{ 24, 81565, "", "=q3=Temperature-Sensing Necklace", "=ds=#s2#" },
    			{ 25, 82816, "", "=q3=Melted Hypnotic Blade", "=ds=#h3#, #w4#" },
    			{ 26, 82813, "", "=q3=Koegler's Ritual Knife", "=ds=#h1#, #w4#" },
    			{ 27, 82814, "", "=q3=Mograine's Immaculate Might", "=ds=#h2#, #w6#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Flameweaver Kogler", 656),
			module = moduleName, instance = "ScarletHalls",
		};
	};

		------------------------
		--- Mogu'Shan Palace ---
		------------------------

	----------------
	--- Factions ---
	----------------

		------------------------
		--- The Tillers ---
		------------------------

	AtlasLoot_Data["Anglers"] = {
		["Normal"] = {
			{
				{ 1, 0, "trade_engineering", "=q6=#r4#", ""};

				{ 16, 0, "trade_engineering", "=q6=#r5#", ""};
			};
		};
		info = {
			name = "The Anglers",
			module = moduleName, menu = "REPMENU",
		};
	}

	AtlasLoot_Data["GoldenLotus"] = {
		["Normal"] = {
			{
				{ 1, 0, "trade_engineering", "=q6=#r3#", ""};
				{ 2, 89232, "", "=q3=Mogu Rune of Paralysis", "=ds=#s16#"};
				{ 1, 0, "trade_engineering", "=q6=#r4#", ""};

				{ 16, 0, "trade_engineering", "=q6=#r5#", ""};
			};
		};
		info = {
			name = "Golden Lotus",
			module = moduleName, menu = "REPMENU",
		};
	}

	AtlasLoot_Data["Tillers"] = {
		["Normal"] = {
			{
				{ 1, 0, "trade_engineering", "=q6=#r4#", ""};
				{ 2, 89869, "", "=q3=Pandaren Scarecrow", "=ds="};
				{ 3, 85268, "", "=q2=Spring Blossom Sapling", "=ds="};
				{ 4, 85269, "", "=q2=Winter Blossom Sapling", "=ds="};
				{ 5, 85216, "", "=q1=Enigma Seed", "=ds="};
				{ 6, 85217, "", "=q1=Magebulb Seed", "=ds="};
				{ 7, 89202, "", "=q1=Raptorleaf Seed", "=ds="};
				{ 8, 85215, "", "=q1=Snakeroot Seed", "=ds="};
				{ 9, 89233, "", "=q1=Songbell Seed", "=ds="};
				{ 16, 0, "trade_engineering", "=q6=#r5#", ""};
				{ 17, 89391, "", "=q4=Reins of the Black Riding Goat", "=ds=#e12#"};
				{ 18, 89362, "", "=q4=Reins of the Brown Riding Goat", "=ds=#e12#"};
				{ 19, 89390, "", "=q4=Reins of the White Riding Goat", "=ds=#e12#"};
				{ 20, 90175, "", "=q3=Gin-Ji Knife Set", "=ds=#m20#"};
				{ 21, 89784, "", "=q3=Tillers Tabard", "=ds=#s7#"};
				{ 22, 74657, "", "=q2=Recipe: Spicy Salmon", "=ds=#p3# (500)"};
				{ 23, 74658, "", "=q2=Recipe: Spicy Vegetable Chips", "=ds=#p3# (500)"};
				{ 24, 89197, "", "=q1=Windshear Cactus Seed", "=ds="};
			};
		};
		info = {
			name = "The Tillers",
			module = moduleName, menu = "REPMENU",
		};
	}

	-----------
	--- PvP ---
	-----------

	--------------------------
	--- Sets & Collections ---
	--------------------------


	AtlasLoot_Data["PVP90SET"] = {
		["Normal"] = {
			{
				{ 1, "PVP90DeathKnight", "spell_deathknight_classicon", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], ""};
				{ 3, "PVP90DruidBalance", "spell_nature_starfall", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 4, "PVP90DruidFeral", "ability_racial_bearform", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
				{ 5, "PVP90DruidRestoration", "spell_nature_healingtouch", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 7, "PVP90Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 9, "PVP90Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 11, "PVP90MonkMistweaver", "ability_racial_bearform", "=ds=Monk", "=q5="..AL["Mistweaver"]};
				{ 12, "PVP90MonkWindwalker", "spell_nature_healingtouch", "=ds=Monk", "=q5="..AL["Windwalker"]};
				{ 14, "PVP90PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 15, "PVP90PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 17, "PVP90PriestHoly", "spell_holy_powerwordshield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Discipline"]};
				{ 18, "PVP90PriestShadow", "spell_shadow_shadowwordpain", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 20, "PVP90Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 22, "PVP90ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 23, "PVP90ShamanEnhancement", "spell_nature_lightningshield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 24, "PVP90ShamanRestoration", "spell_nature_magicimmunity", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 26, "PVP90Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 28, "PVP90Warrior", "inv_sword_27", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
			};
		};
		info = {
			name = AL["PvP Armor Sets"]..": "..AL["Level 90"],
			menu = "PVPMENU",
		};
	}

	AtlasLoot_Data["T14SET"] = {
		["Normal"] = {
			{
				{ 1, "T14Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 2, "T14Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 4, "T14DruidBalance", "spell_nature_starfall", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 5, "T14DruidFeral", "ability_racial_bearform", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
				{ 6, "T14DruidRestoration", "spell_nature_healingtouch", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 8, "T14Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 10, "T14ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 11, "T14ShamanEnhancement", "spell_nature_lightningshield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 12, "T14ShamanRestoration", "spell_nature_magicimmunity", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 14, "T14DeathKnightDPS", "spell_deathknight_frostpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
				{ 15, "T14DeathKnightTank", "spell_deathknight_bloodpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
				{ 16, "T14PriestHoly", "spell_holy_guardianspirit", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
				{ 17, "T14PriestShadow", "spell_shadow_shadowwordpain", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 19, "T14MonkBrewmaster", "spell_nature_starfall", "=ds=Monk", "=q5="..AL["Brewmaster"]};
				{ 20, "T14MonkMistweaver", "ability_racial_bearform", "=ds=Monk", "=q5="..AL["Mistweaver"]};
				{ 21, "T14MonkWindwalker", "spell_nature_healingtouch", "=ds=Monk", "=q5="..AL["Windwalker"]};
				{ 23, "T14Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 25, "T14PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 26, "T14PaladinProtection", "spell_holy_devotionaura", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
				{ 27, "T14PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 29, "T14WarriorFury", "ability_warrior_innerrage", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["DPS"]};
				{ 30, "T14WarriorProtection", "ability_warrior_defensivestance", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
			};
		};
		info = {
			name = AL["Tier 14 Set"],
			menu = "SETMENU",
		};
	}