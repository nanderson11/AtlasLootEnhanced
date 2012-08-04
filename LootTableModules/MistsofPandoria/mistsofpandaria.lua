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
---- Scarlet Monastery
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
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88336, "", "=q3=Icewrath Belt", "=ds=#s10#, #a2#" },
				{ 3, 88337, "", "=q3=Shadow Puppet Bracers", "=ds=#s8#, #a3#" },
				{ 4, 88338, "", "=q3=Breastplate of Wracking Souls", "=ds=#s5#, #a4#" },
				{ 5, 88335, "", "=q3=Anarchist's Pendant", "=ds=#s2#" },
    			{ 6, 88339, "", "=q3=Gravetouch Greatsword", "=ds=#h2#, #w10#" },
    			{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
    			{ 17, 82823, "", "=q3=Icewrath Belt", "=ds=#s10#, #a2#" },
    			{ 18, 82820, "", "=q3=Shadow Puppet Bracers", "=ds=#s8#, #a3#" },
    			{ 19, 82821, "", "=q3=Breastplate of Wracking Souls", "=ds=#s5#, #a4#" },
    			{ 20, 81566, "", "=q3=Anarchist's Pendant", "=ds=#s2#" },
    			{ 21, 82822, "", "=q3=Gravetouch Greatsword", "=ds=#h2#, #w10#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Instructor Chillheart", 659),
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoJandice"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88349, "", "=q3=Phantasmal Drape", "=ds=#s4#" },
				{ 3, 88345, "", "=q3=Barovian Ritual Hood", "=ds=#s1#, #a1#" },
				{ 4, 88347, "", "=q3=Ghostwoven Legguards", "=ds=#s11#, #a2#" },
				{ 5, 88348, "", "=q3=Wraithplate Treads", "=ds=#s12#, #a4#" },
    			{ 6, 88346, "", "=q3=Metanoia Shield", "=ds=#w8#" },
    			{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
    			{ 17, 82850, "", "=q3=Phantasmal Drape", "=ds=#s4#, #a1#" },
    			{ 18, 82848, "", "=q3=Barovian Ritual Hood", "=ds=#s1#, #a1#" },
    			{ 19, 82851, "", "=q3=Ghostwoven Legguards", "=ds=#s11#, #a2#" },
    			{ 20, 82852, "", "=q3=Wraithplate Treads", "=ds=#s12#, #a4#" },
    			{ 21, 82847, "", "=q3=Metanoia Shield", "=ds=#w8#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Jandice Barov", 663),
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoRattlegore"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88340, "", "=q3=Deadwalker Bracers", "=ds=#s8#, #a1#" },
				{ 3, 88342, "", "=q3=Rattling Gloves", "=ds=#s9#, #a2#" },
				{ 4, 88343, "", "=q3=Bone Golem Boots", "=ds=#s12#, #a3#" },
    			{ 5, 88344, "", "=q3=Goresoaked Headreaper", "=ds=#h2#, #w1#" },
    			{ 6, 88341, "", "=q3=Necromantic Wand", "=ds=#w12#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 82825, "", "=q3=Deadwalker Bracers", "=ds=#s8#, #a1#" },
				{ 18, 82827, "", "=q3=Rattling Gloves", "=ds=#s9#, #a2#" },
				{ 19, 82828, "", "=q3=Bone Golem Boots", "=ds=#s12#, #a3#" },
    			{ 20, 82824, "", "=q3=Goresoaked Headreaper", "=ds=#h2#, #w1#" },
    			{ 21, 82826, "", "=q3=Necromantic Wand", "=ds=#w12#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Rattlegore", 665),
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoVoss"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88350, "", "=q3=Leggings of Unleashed Anguish", "=ds=#s11#, #a1#" },
				{ 3, 88351, "", "=q3=Soulburner Crown", "=ds=#s1#, #a2#" },
				{ 4, 88352, "", "=q3=Shivbreaker Vest", "=ds=#s5#, #a3#" },
    			{ 5, 88353, "", "=q3=Dark Blaze Gauntlets", "=ds=#s9#, #a4#" },
    			{ 6, 88354, "", "=q3=Necklace of the Dark Blaze", "=ds=#s2#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 82854, "", "=q3=Leggings of Unleashed Anguish", "=ds=#s11#, #a1#" },
    			{ 18, 82853, "", "=q3=Soulburner Crown", "=ds=#s1#, #a2#" },
        		{ 19, 82855, "", "=q3=Shivbreaker Vest", "=ds=#s5#, #a3#" },
    			{ 20, 82856, "", "=q3=Dark Blaze Gauntlets", "=ds=#s9#, #a4#" },
    			{ 21, 81567, "", "=q3=Necklace of the Dark Blaze", "=ds=#s2#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Lilian Voss", 666),
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoGandling"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88359, "", "=q3=Incineration Belt", "=ds=#s10#, #a1#" },
				{ 3, 88356, "", "=q3=Tombstone Gauntlets", "=ds=#s9#, #a2#" },
				{ 4, 88361, "", "=q3=Gloves of Explosive Pain", "=ds=#s9#, #a3#" },
    			{ 5, 88362, "", "=q3=Shoulderguards of Painful Lessons", "=ds=#s3#, #a4#" },
    			{ 6, 88357, "", "=q3=Vigorsteel Spaulders", "=ds=#s3#, #a4#" },
    			{ 7, 88358, "", "=q3=Lessons of the Darkmaster", "=ds=#s14#" },
    			{ 8, 88360, "", "=q3=Price of Progress", "=ds=#s14#" },
    			{ 9, 88355, "", "=q3=Searing Words", "=ds=#s14#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 82859, "", "=q4=Headmaster's Will", "=ds=#w9#" },
				{ 18, 82861, "", "=q3=Incineration Belt", "=ds=#s10#, #a1#" },
				{ 19, 82858, "", "=q3=Tombstone Gauntlets", "=ds=#s9#, #a2#" },
				{ 20, 82860, "", "=q3=Gloves of Explosive Pain", "=ds=#s9#, #a3#" },
    			{ 21, 82862, "", "=q3=Shoulderguards of Painful Lessons", "=ds=#s3#, #a4#" },
    			{ 22, 82857, "", "=q3=Vigorsteel Spaulders", "=ds=#s3#, #a4#" },
    			{ 23, 81268, "", "=q3=Lessons of the Darkmaster", "=ds=#s14#" },
    			{ 24, 81266, "", "=q3=Price of Progress", "=ds=#s14#" },
    			{ 25, 81267, "", "=q3=Searing Words", "=ds=#s14#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Darkmaster Gandling", 684),
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

		-------------------------
		--- Scarlet Monastery ---
		-------------------------

	AtlasLoot_Data["SMThalnos"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88288, "", "=q3=Soulrender Greatcloak", "=ds=#s4#" },
   				{ 3, 88284, "", "=q3=Forgotten Bloodmage Mantle", "=ds=#s3#, #a1#" },
    			{ 4, 88286, "", "=q3=Legguards of the Crimson Magus", "=ds=#s11#, #a3#" },
    			{ 5, 88287, "", "=q3=Bracers of the Fallen Crusader", "=ds=#s8#, #a4#" },
    			{ 6, 88285, "", "=q3=Signet of the Hidden Door", "=ds=#s13#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81571, "", "=q3=Soulrender Greatcloak", "=ds=#s4#" },
    			{ 18, 81569, "", "=q3=Forgotten Bloodmage Mantle", "=ds=#s3#, #a1#" },
    			{ 19, 81570, "", "=q3=Legguards of the Crimson Magus", "=ds=#s11#, #a3#" },
    			{ 20, 81572, "", "=q3=Bracers of the Fallen Crusader", "=ds=#s8#, #a4#" },
    			{ 21, 81560, "", "=q3=Signet of the Hidden Door", "=ds=#s13#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Thalnos the Soulrender", 688),
			module = moduleName, instance = "ScarletMonastery",
		};
	};

	AtlasLoot_Data["SMKorloff"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88290, "", "=q3=Scorched Earth Cloak", "=ds=#s4#, #a1#" },
				{ 3, 88291, "", "=q3=Korloff's Raiment", "=ds=#s5#, #a2#" },
				{ 4, 88292, "", "=q3=Helm of Rising Flame", "=ds=#s1#, #a4#" },
				{ 5, 88293, "", "=q3=Firefinger Ring", "=ds=#s13#" },
    			{ 6, 88289, "", "=q3=Firestorm Greatstaff", "=ds=#w9#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81575, "", "=q3=Scorched Earth Cloak", "=ds=#s4#, #a1#" },
				{ 18, 81573, "", "=q3=Korloff's Raiment", "=ds=#s5#, #a2#" },
				{ 19, 81574, "", "=q3=Helm of Rising Flame", "=ds=#s1#, #a4#" },
				{ 20, 81561, "", "=q3=Firefinger Ring", "=ds=#s13#" },
    			{ 21, 81576, "", "=q3=Firestorm Greatstaff", "=ds=#w9#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Brother Korloff", 671),
			module = moduleName, instance = "ScarletMonastery",
		};
	};

	AtlasLoot_Data["SMWhitemane"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 88299, "", "=q3=Whitemane's Embroidered Chapeau", "=ds=#s1#, #a1#" },
				{ 3, 88298, "", "=q3=Leggings of Hallowed Fire", "=ds=#s11#, #a1#" },
    			{ 4, 88302, "", "=q3=Incarnadine Scarlet Spaulders", "=ds=#s3#, #a2#" },
    			{ 5, 88295, "", "=q3=Dashing Strike Treads", "=ds=#s12#, #a2#" },
				{ 6, 88303, "", "=q3=Crown of Holy Flame", "=ds=#s1#, #a4#" },
				{ 7, 88296, "", "=q3=Waistplate of Imminent Resurrection", "=ds=#s10#, #a4#" },
				{ 8, 88300, "", "=q3=Triune Signet", "=ds=#s13#" },
				{ 9, 88294, "", "=q3=Flashing Steel Talisman", "=ds=#s14#" },
				{ 10, 88297, "", "=q3=Lightbreaker Greatsword", "=ds=#h2#, #w10#" },
    			{ 11, 88301, "", "=q3=Greatstaff of Righteousness", "=ds=#w9#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 87551, "", "=q4=Helios, Durand's Soul of Purity", "=ds=#s2#" },
				{ 18, 81692, "", "=q3=Whitemane's Embroidered Chapeau", "=ds=#s1#, #a1#" },
				{ 19, 81689, "", "=q3=Leggings of Hallowed Fire", "=ds=#s11#, #a1#" },
				{ 20, 81690, "", "=q3=Incarnadine Scarlet Spaulders", "=ds=#s3#, #a2#" },
				{ 21, 81688, "", "=q3=Dashing Strike Treads", "=ds=#s12#, #a2#" },
				{ 22, 81578, "", "=q3=Crown of Holy Flame", "=ds=#s1#, #a4#" },
				{ 23, 81687, "", "=q3=Waistplate of Imminent Resurrection", "=ds=#s10#, #a4#" },
				{ 24, 81562, "", "=q3=Triune Signet", "=ds=Finger, #m20#" },
    			{ 25, 81265, "", "=q3=Flashing Steel Talisman", "=ds=#s14#, #m20#" },
    			{ 26, 81577, "", "=q3=Lightbreaker Greatsword", "=ds=#h2#, #w10#" },
    			{ 27, 81691, "", "=q3=Greatstaff of Righteousness", "=ds=#w9#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("High Inquisitor Whitemane", 674),
			module = moduleName, instance = "ScarletMonastery",
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