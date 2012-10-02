-- $Id$
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local moduleName = "AtlasLootMoP"

-- Index
--- Dungeons & Raids
---- Temple of the Jade Serpent
---- Stormstout Brewery
---- Mogu'Shan Palace
---- Shado-pan Monastery
---- Gate of the Setting Sun
---- Siege of Niuzao Temple
---- Scholomance
---- Scarlet Halls
---- Scarlet Monastery
---- Heart of Fear
---- Mogu'Shan Vaults
---- Pandaria World Bosses
---- Terrace of Endless Spring
--- Factions
---- The Anglers
---- The August Celestials
---- Golden Lotus
---- The Klaxxi
---- The Lorewalkers
---- Order of the Cloud Serpent
---- Shado-Pan
---- The Tillers
--- PvP
--- Sets & Collections
---- Tier 14 Sets (T14)
---- Trading Card Game Items
---- Companions
---- Mounts
---- Tabards
---- Transformation Items
---- Heirloom Items

	------------------------
	--- Dungeons & Raids ---
	------------------------

		------------------------------
		--- Temple of Jade Serpent ---
		------------------------------

	AtlasLoot_Data["TJSMari"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80862, "", "=q3=Treads of Corrupted Water", "=ds=#s12#, #a2#" },
				{ 3, 80860, "", "=q3=Waterburst Helm", "=ds=#s1#, #a3#" },
				{ 4, 80861, "", "=q3=Riverbed Chestguard", "=ds=#s5#, #a4#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81123, "", "=q3=Wind-Soaked Drape", "=ds=#s4#" },
				{ 18, 81072, "", "=q3=Treads of Corrupted Water", "=ds=#s12#, #a2#" },
				{ 19, 81075, "", "=q3=Waterburst Helm", "=ds=#s1#, #a3#" },
				{ 20, 81083, "", "=q3=Riverbed Chestguard", "=ds=#s5#, #a4#" },
				{ 21, 81124, "", "=q3=Crystallized Droplet", "=ds=#s13#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Wise Mari", 672),
			module = moduleName, instance = "TempleOfTheJadeSerpent",
		};
	};

	AtlasLoot_Data["TJSStonestep"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80864, "", "=q3=Girdle of Endemic Anger", "=ds=#s10#, #a1#" },
				{ 3, 80865, "", "=q3=Sunheart Waistband", "=ds=#s10#, #a3#" },
				{ 4, 80863, "", "=q3=Stonestep Boots", "=ds=#s12#, #a4#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81058, "", "=q3=Girdle of Endemic Anger", "=ds=#s10#, #a1#" },
				{ 18, 81126, "", "=q3=Leggings of Whispered Dreams", "=ds=#s11#, #a2#" },
				{ 19, 81060, "", "=q3=Sunheart Waistband", "=ds=#s10#, #a3#" },
				{ 20, 81073, "", "=q3=Stonestep Boots", "=ds=#s12#, #a4#" },
				{ 21, 81125, "", "=q3=Windswept Pages", "=ds=#s14#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Lorewalker Stonestep", 664),
			module = moduleName, instance = "TempleOfTheJadeSerpent",
		};
	};

	AtlasLoot_Data["TJSFlameheart"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80866, "", "=q3=Cape of Entanglement", "=ds=#s4#" },
				{ 3, 80867, "", "=q3=Serpentstrike Shoulderpads", "=ds=#s3#, #a4#" },
				{ 4, 80872, "", "=q3=Firebelcher Hand Cannon", "=ds=#w5#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81084, "", "=q3=Cape of Entanglement", "=ds=#s4#" },
				{ 18, 81127, "", "=q3=Flameheart Sandals", "=ds=#s12#, #a1#" },
				{ 19, 81070, "", "=q3=Serpentstrike Shoulderpads", "=ds=#s3#, #a4#" },
				{ 20, 81128, "", "=q3=Signet of Dancing Jade", "=ds=#s13#" },
				{ 21, 81067, "", "=q3=Firebelcher Hand Cannon", "=ds=#w5#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Liu Flameheart", 658),
			module = moduleName, instance = "TempleOfTheJadeSerpent",
		};
	};

	AtlasLoot_Data["TJSShaDoubt"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80868, "", "=q3=Doubtridden Shoulderguards", "=ds=#s3#, #a2#" },
				{ 3, 80870, "", "=q3=Chestguard of Despair", "=ds=#s5#, #a2#" },
				{ 4, 80871, "", "=q3=Neverdare Shoulders", "=ds=#s3#, #a3#" },
				{ 5, 80869, "", "=q3=Hopecrusher Gauntlets", "=ds=#s9#, #a3#" },
				{ 6, 80873, "", "=q3=Dubious Handaxe", "=ds=#h1#, #w1#" },
				{ 7, 80874, "", "=q3=Staff of Trembling Will", "=ds=#w9#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 87544, "", "=q4=Je'lyu, Spirit of the Serpent", "=ds=#h3#, #w6#" },
				{ 18, 81129, "", "=q3=Cloak of Failing Will", "=ds=#s4#" },
				{ 19, 81132, "", "=q3=Paralyzing Gloves", "=ds=#s9#, #a1#" },
				{ 20, 81071, "", "=q3=Doubtridden Shoulderguards", "=ds=#s3#, #a2#" },
				{ 21, 81082, "", "=q3=Chestguard of Despair", "=ds=#s5#, #a2#" },
				{ 22, 81069, "", "=q3=Neverdare Shoulders", "=ds=#s3#, #a3#" },
				{ 23, 81074, "", "=q3=Hopecrusher Gauntlets", "=ds=#s9#, #a3#" },
				{ 24, 81130, "", "=q3=Binding of Broken Dreams", "=ds=#s10#, #a4#" },
				{ 25, 81131, "", "=q3=Mindbreaker Pendant", "=ds=#s2#" },
				{ 26, 81063, "", "=q3=Dubious Handaxe", "=ds=#h1#, #w1#" },
				{ 27, 81079, "", "=q3=Staff of Trembling Will", "=ds=#w9#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Sha of Doubt", 335),
			module = moduleName, instance = "TempleOfTheJadeSerpent",
		};
	};

		--------------------------
		--- Stormstout Brewery ---
		--------------------------

	AtlasLoot_Data["BreweryOokOok"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80897, "", "=q3=Bracers of Displaced Air", "=ds=#s8#, #a1#", ""};
				{ 3, 80896, "", "=q3=Nimbletoe Chestguard", "=ds=#s5#, #a2#", ""};
				{ 4, 80892, "", "=q3=Ook's Hozen Slicer", "=ds=#h1#, #w10#", ""};
				{ 16, 0, "inv_box_04", "=q6=#j3#", "#ACHIEVEMENTID:6089#"};
				{ 17, 81064, "", "=q3=Bracers of Displaced Air", "=ds=#s8#, #a1#", ""};
				{ 18, 81080, "", "=q3=Nimbletoe Chestguard", "=ds=#s5#, #a2#", ""};
				{ 19, 81134, "", "=q4=Barreldodger Boots", "=ds=#s12#, #a4#", ""};
				{ 20, 81133, "", "=q3=Empty Fruit Barrel", "=ds=#s14#", ""};
				{ 21, 81061, "", "=q3=Ook's Hozen Slicer", "=ds=#h1#, #w10#", ""};
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Ook-Ook", 668),
			module = moduleName, instance = "StormstoutBrewery",
		};
	};

	AtlasLoot_Data["BreweryHoptallus"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80898, "", "=q3=Hopping Mad Leggings", "=ds=#s11#, #a3#", ""};
				{ 3, 80899, "", "=q3=Bubble-Breaker Bracers", "=ds=#s8#, #a4#", ""};
				{ 4, 80893, "", "=q3=Bottle of Potent Potables", "=ds=#s15#", ""};
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81136, "", "=q3=Cloak of Hidden Flasks", "=ds=#s4#", ""};
				{ 18, 81135, "", "=q3=Belt of Brazen Inebriation", "=ds=#s10#, #a2#", ""};
				{ 19, 81077, "", "=q3=Hopping Mad Leggings", "=ds=#s11#, #a3#", ""};
				{ 20, 81065, "", "=q3=Bubble-Breaker Bracers", "=ds=#s8#, #a4#", ""};
				{ 21, 81076, "", "=q3=Bottle of Potent Potables", "=ds=#s15#", ""};
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Hoptallus", 669),
			module = moduleName, instance = "StormstoutBrewery",
		};
	};

	AtlasLoot_Data["BreweryYanZhu"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80903, "", "=q3=Fermenting Belt", "=ds=#s10#, #a1#", ""};
				{ 3, 80900, "", "=q3=Fizzy Spaulders", "=ds=#s3#, #a2#", ""};
				{ 4, 80902, "", "=q3=Uncasked Chestguard", "=ds=#s5#, #a3#", ""};
				{ 5, 80901, "", "=q3=Sudsy Legplates", "=ds=#s11#, #a4#", ""};
				{ 6, 80894, "", "=q3=Gao's Keg Tapper", "=ds=#h1#, #w6#", ""};
				{ 7, 80895, "", "=q3=Yan-Zhu's Pressure Valve", "=ds=#w5#", ""};
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 87545, "", "=q4=Inelava, Spirit of Inebriation", "=ds=#h1#, #w1#", ""};
				{ 18, 81059, "", "=q3=Fermenting Belt", "=ds=#s10#, #a1#", ""};
				{ 19, 81068, "", "=q3=Fizzy Spaulders", "=ds=#s3#, #a2#", ""};
				{ 20, 81081, "", "=q3=Uncasked Chestguard", "=ds=#s5#, #a3#", ""};
				{ 21, 81078, "", "=q3=Sudsy Legplates", "=ds=#s11#, #a4#", ""};
				{ 22, 81141, "", "=q3=Alemental Seal", "=ds=#s13#", ""};
				{ 23, 81139, "", "=q3=Lime-Rimmed Signet", "=ds=#s13#", ""};
				{ 24, 81138, "", "=q3=Carbonic Carbuncle", "=ds=#s14#", ""};
				{ 25, 81062, "", "=q3=Gao's Keg Tapper", "=ds=#h1#, #w6#", ""};
				{ 26, 81140, "", "=q3=Wort Sitrring Rod", "=ds=#w9#", ""};
				{ 27, 81066, "", "=q3=Yan-Zhu's Pressure Valve", "=ds=#w5#", ""};
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Yan-Zhu the Uncasked", 670),
			module = moduleName, instance = "StormstoutBrewery",
		};
	};

		------------------------
		--- Mogu'Shan Palace ---
		------------------------

	AtlasLoot_Data["MoguShanTrialKing"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 85178, "", "=q3=Conflagrating Gloves", "=ds=#s9#, #a1#" },
				{ 3, 85176, "", "=q3=Hurricane Belt", "=ds=#s10#, #a2#" },
				{ 4, 85175, "", "=q3=Crest of the Clan Lords", "=ds=#s1#, #a3#" },
				{ 5, 85179, "", "=q3=Meteoric Greathelm", "=ds=#s1#, #a4#" },
				{ 6, 85177, "", "=q3=Whirling Dervish Choker", "=ds=#s2#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81240, "", "=q3=Conflagrating Gloves", "=ds=#s9#, #a1#" },
				{ 18, 81238, "", "=q3=Hurricane Belt", "=ds=#s10#, #a2#" },
				{ 19, 81237, "", "=q3=Crest of the Clan Lords", "=ds=#s1#, #a3#" },
				{ 20, 81241, "", "=q3=Meteoric Greathelm", "=ds=#s1#, #a4#" },
				{ 21, 81239, "", "=q3=Whirling Dervish Choker", "=ds=#s2#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Trial of the King", 708),
			module = moduleName, instance = "MoguShanPalace",
		};
	};

	AtlasLoot_Data["MoguShanGekkan"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 85182, "", "=q3=Cloak of Cleansing Flame", "=ds=#s4#, #a1#" },
				{ 3, 85184, "", "=q3=Hexxer's Lethargic Gloves", "=ds=#s9#, #a3#" },
				{ 4, 85180, "", "=q3=Glintrok Sollerets", "=ds=#s12#, #a4#" },
				{ 5, 85181, "", "=q3=Iron Protector Talisman", "=ds=#s14#" },
				{ 6, 85183, "", "=q3=Claws of Gekkan", "=ds=#h1#, #w13#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81244, "", "=q3=Cloak of Cleansing Flame", "=ds=#s4#, #a1#" },
				{ 18, 81246, "", "=q3=Hexxer's Lethargic Gloves", "=ds=#s9#, #a3#" },
				{ 19, 81242, "", "=q3=Glintrok Sollerets", "=ds=#s12#, #a4#" },
				{ 20, 81243, "", "=q3=Iron Protector Talisman", "=ds=#s14#" },
				{ 21, 81245, "", "=q3=Claws of Gekkan", "=ds=#w13#s" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Gekkan", 690),
			module = moduleName, instance = "MoguShanPalace",
		};
	};

	AtlasLoot_Data["MoguShanXin"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 85194, "", "=q3=Regal Silk Shoulderpads", "=ds=#s3#, #a1#" },
				{ 3, 85192, "", "=q3=Soulbinder Treads", "=ds=#s12#, #a1#" },
				{ 4, 85187, "", "=q3=Boots of Plummeting Death", "=ds=#s12#, #a2#" },
				{ 5, 85189, "", "=q3=Groundshaker Bracers", "=ds=#s8#, #a3#" },
				{ 6, 85193, "", "=q3=Mind's Eye Breastplate", "=ds=#s5#, #a4#" },
				{ 7, 85186, "", "=q3=Axebreaker Gauntlets", "=ds=#s9#, #a4#" },
				{ 8, 85191, "", "=q3=Mindcapture Pendant", "=ds=#s2#" },
				{ 9, 85188, "", "=q3=Blade Trap Signet", "=ds=#s13#" },
				{ 10, 85190, "", "=q3=Firescribe Dagger", "=ds=#h3#, #w4#" },
				{ 11, 85185, "", "=q3=Ghostheart", "=ds=#w7#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81257, "", "=q3=Regal Silk Shoulderpads", "=ds=#s3#, #a1#" },
				{ 18, 81255, "", "=q3=Soulbinder Treads", "=ds=#s12#, #a1#" },
				{ 19, 81249, "", "=q3=Boots of Plummeting Death", "=ds=#s12#, #a2#" },
				{ 20, 81252, "", "=q3=Groundshaker Bracers", "=ds=#s8#, #a3#" },
				{ 21, 81256, "", "=q3=Mind's Eye Breastplate", "=ds=#s5#, #a4#" },
				{ 22, 81248, "", "=q3=Axebreaker Gauntlets", "=ds=#s9#, #a4#" },
				{ 23, 81254, "", "=q3=Mindcapture Pendant", "=ds=#s2#" },
				{ 24, 81251, "", "=q3=Blade Trap Signet", "=ds=#s13#" },
				{ 25, 81253, "", "=q3=Firescribe Dagger", "=ds=#h3#, #w4#" },
				{ 26, 81247, "", "=q3=Ghostheart", "=ds=#w7#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Xin the Weaponmaster", 698),
			module = moduleName, instance = "MoguShanPalace",
		};
	};

		---------------------------
		--- Shado-pan Monastery ---
		---------------------------

	AtlasLoot_Data["ShadoPanCloudstrike"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80909, "", "=q3=Azure Serpent Chestguard", "=ds=#s5#, #a3#" },
				{ 3, 80910, "", "=q3=Leggings of the Charging Soul", "=ds=#s11#, #a3#" },
				{ 4, 80908, "", "=q3=Sparkbreath Girdle", "=ds=#s10#, #a4#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81179, "", "=q3=Star Summoner Bracers", "=ds=#s8#, #a2#" },
				{ 18, 81110, "", "=q3=Azure Serpent Chestguard", "=ds=#s5#, #a3#" },
				{ 19, 81092, "", "=q3=Leggings of the Charging Soul", "=ds=#s11#, #a3#" },
				{ 20, 81086, "", "=q3=Sparkbreath Girdle", "=ds=#s10#, #a4#" },
				{ 21, 81180, "", "=q3=Cloudstrike Pendant", "=ds=#s2#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Gu Cloudstrike", 673),
			module = moduleName, instance = "ShadoPanMonastery",
		};
	};

	AtlasLoot_Data["ShadoPanSnowdrift"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80912, "", "=q3=Gauntlets of Resolute Fury", "=ds=#s9#, #a4#" },
				{ 3, 80911, "", "=q3=Quivering Heart Girdle", "=ds=#s10#, #a4#" },
				{ 4, 80937, "", "=q3=Snowdrift's Bladed Staff", "=ds=#w9#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81101, "", "=q3=Gauntlets of Resolute Fury", "=ds=#s9#, #a4#" },
				{ 18, 81087, "", "=q3=Quivering Heart Girdle", "=ds=#s10#, #a4#" },
				{ 19, 81182, "", "=q3=Eye of the Tornado", "=ds=#s13#" },
				{ 20, 81181, "", "=q3=Heart of Fire", "=ds=#s14#" },
				{ 21, 81108, "", "=q3=Snowdrift's Bladed Staff", "=ds=#w9#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Master Snowdrift", 657),
			module = moduleName, instance = "ShadoPanMonastery",
		};
	};

	AtlasLoot_Data["ShadoPanShaViolence"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80913, "", "=q3=Gloves of Enraged Slaughter", "=ds=#s9#, #a1#" },
				{ 3, 80915, "", "=q3=Spike-Soled Stompers", "=ds=#s12#, #a4#" },
				{ 4, 80883, "", "=q3=Crescent of Ichor", "=ds=#h1#, #w1#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 81102, "", "=q3=Gloves of Enraged Slaughter", "=ds=#s9#, #a1#" },
				{ 18, 81185, "", "=q3=Bladed Smoke Bracers", "=ds=#s8#, #a3#" },
				{ 19, 81113, "", "=q3=Spike-Soled Stompers", "=ds=#s12#, #a4#" },
				{ 20, 81184, "", "=q3=Necklace of Disorientation", "=ds=#s2#" },
				{ 21, 81089, "", "=q3=Crescent of Ichor", "=ds=#h1#, #w1#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Sha of Violence", 685),
			module = moduleName, instance = "ShadoPanMonastery",
		};
	};

	AtlasLoot_Data["ShadoPanTaranZhu"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
				{ 2, 80919, "", "=q3=Darkbinder Leggings", "=ds=#s11#, #a2#" },
				{ 3, 80916, "", "=q3=Shadowspine Shoulderguards", "=ds=#s3#, #a3#" },
				{ 4, 80917, "", "=q3=Blastwalker Footguards", "=ds=#s12#, #a3#" },
				{ 5, 80918, "", "=q3=Mindbinder Plate Gloves", "=ds=#s9#, #a4#" },
				{ 6, 80936, "", "=q3=Warmace of Taran Zhu", "=ds=#h2#, #w6#" },
				{ 7, 80935, "", "=q3=Shield of Blind Hate", "=ds=#w8#" },
				{ 16, 0, "inv_box_04", "=q6=#j3#", ""};
				{ 17, 87543, "", "=q4=Ka'eng, Breath of the Shadow", "=ds=#h1#, #w13#" },
				{ 18, 81188, "", "=q3=Robes of Fevered Dreams", "=ds=#s5#, #a1#" },
				{ 19, 81093, "", "=q3=Darkbinder Leggings", "=ds=#s11#, #a2#" },
				{ 20, 81099, "", "=q3=Shadowspine Shoulderguards", "=ds=#s3#, #a3#" },
				{ 21, 81114, "", "=q3=Blastwalker Footguards", "=ds=#s12#, #a3#" },
				{ 22, 81187, "", "=q3=Hateshatter Chestplate", "=ds=#s5#, #a4#" },
				{ 23, 81103, "", "=q3=Mindbinder Plate Gloves", "=ds=#s9#, #a4#" },
				{ 24, 81189, "", "=q3=Ring of Malice", "=ds=#s13#" },
				{ 25, 81186, "", "=q3=Seal of Hateful Meditation", "=ds=#s13#" },
				{ 26, 81107, "", "=q3=Warmace of Taran Zhu", "=ds=#h2#, #w6#" },
				{ 27, 81096, "", "=q3=Shield of Blind Hate", "=ds=#w8#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Taran Zhu", 686),
			module = moduleName, instance = "ShadoPanMonastery",
		};
	};

		---------------------------------
		--- Gates of the Setting Sun ---
		---------------------------------

	AtlasLoot_Data["GotSSKiptilak"] = {
		["Normal"] = {
			{
				{ 1, 81104, "", "=q3=Fallout-Filtering Hood", "=ds=#s1#, #a1#" },
				{ 2, 81090, "", "=q3=Saboteur's Stabilizing Bracers", "=ds=#s8#, #a2#" },
				{ 3, 81190, "", "=q3=Grenadier's Belt", "=ds=#s10#, #a4#" },
				{ 4, 81095, "", "=q3=Pendant of Precise Timing", "=ds=#s2#" },
				{ 5, 81191, "", "=q3=Pulled Grenade Pin", "=ds=#s13#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Saboteur Kip'tilak", 655),
			module = moduleName, instance = "GateoftheSettingSun",
		};
	};

	AtlasLoot_Data["GotSSGadok"] = {
		["Normal"] = {
			{
				{ 1, 81229, "", "=q3=Bomber's Precision Gloves", "=ds=#s9#, #a1#" },
				{ 2, 81111, "", "=q3=Airstream Treads", "=ds=#s12#, #a2#" },
				{ 3, 81085, "", "=q3=Impaler's Girdle", "=ds=#s10#, #a3#" },
				{ 4, 81098, "", "=q3=Acid-Scarred Spaulders", "=ds=#s3#, #a4#" },
				{ 5, 81192, "", "=q3=Vision of the Predator", "=ds=#s14#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Striker Ga'dok", 675),
			module = moduleName, instance = "GateoftheSettingSun",
		};
	};

	AtlasLoot_Data["GotSSRimok"] = {
		["Normal"] = {
			{	
				{ 1, 81106, "", "=q3=Leggings of the Frenzy", "=ds=#s11#, #a1#" },
				{ 2, 81105, "", "=q3=Swarmcall Helm", "=ds=#s1#, #a3#" },
				{ 3, 81230, "", "=q3=Ri'mok's Shattered Scale", "=ds=#s8#, #a4#" },
				{ 4, 81232, "", "=q3=Viscous Ring", "=ds=#s13#" },
				{ 5, 81088, "", "=q3=Mantid Trochanter", "=ds=#h1#, #w4#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Commander Ri'mok", 676),
			module = moduleName, instance = "GateoftheSettingSun",
		};
	};

	AtlasLoot_Data["GotSSRaigonn"] = {
		["Normal"] = {
			{
				{ 1, 87546, "", "=q4=Klatith, Fangs of the Swarm", "=ds=#w2#" },
				{ 3, 81234, "", "=q3=Drape of the Screeching Swarm", "=ds=#s4#, #a1#" },
				{ 4, 81235, "", "=q3=Shoulders of Engulfing Winds", "=ds=#s3#, #a1#" },
				{ 5, 81236, "", "=q3=Frenzyswarm Bracers", "=ds=#s8#, #a1#" },
				{ 6, 81091, "", "=q3=Wall-Breaker Legguards", "=ds=#s11#, #a2#" },
				{ 7, 81112, "", "=q3=Treads of Fixation", "=ds=#s12#, #a3#" },
				{ 8, 81109, "", "=q3=Swarmbringer Chestguard", "=ds=#s5#, #a4#" },
				{ 9, 81100, "", "=q3=Hive Protector's Gauntlets", "=ds=#s9#, #a4#" },
				{ 18, 81094, "", "=q3=Carapace Breaker", "=ds=#h1#, #w6#" },
				{ 19, 81233, "", "=q3=Impervious Carapace", "=ds=#w8#" },
				{ 20, 81097, "", "=q3=Shield of the Protectorate", "=ds=#w8#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Raigonn", 649),
			module = moduleName, instance = "GateoftheSettingSun",
		};
	};

		------------------------------
		--- Siege of Niuzao Temple ---
		------------------------------

	AtlasLoot_Data["NTJinbak"] = {
		["Normal"] = {
			{
				{ 1, 81262, "", "=q3=Hood of Viridian Residue", "=ds=#s1#, #a2#" },
				{ 2, 81272, "", "=q3=Girdle of Soothing Detonation", "=ds=#s10#, #a4#" },
				{ 3, 81270, "", "=q3=Sap-Encrusted Legplates", "=ds=#s11#, #a4#" },
				{ 4, 81271, "", "=q3=Engraved Amber Pendant", "=ds=#s2#" },
				{ 5, 81263, "", "=q3=Flashfrozen Resin Globule", "=ds=#s14#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Vizier Jin'bak", 693),
			module = moduleName, instance = "SiegeofNiuzaoTemple",
		};
	};

	AtlasLoot_Data["NTVojak"] = {
		["Normal"] = {
			{
				{ 1, 81276, "", "=q3=Bombardment Bracers", "=ds=#s8#, #a1#" },
				{ 2, 81275, "", "=q3=Chestwrap of Arcing Flame", "=ds=#s5#, #a2#" },
				{ 3, 81277, "", "=q3=Archer's Precision Grips", "=ds=#s9#, #a3#" },
				{ 4, 81274, "", "=q3=Sightfinder Helm", "=ds=#s1#, #a4#" },
				{ 5, 81273, "", "=q3=Siege-Captain's Scimitar", "=ds=#h1#, #w10#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Commander Vo'jak", 738),
			module = moduleName, instance = "SiegeofNiuzaoTemple",
		};
	};

	AtlasLoot_Data["NTPavalak"] = {
		["Normal"] = {
			{
				{ 1, 81282, "", "=q3=Aerial Bombardment Cloak", "=ds=#s4#, #a1#" },
				{ 2, 81281, "", "=q3=Breezebinder Handwraps", "=ds=#s9#, #a1#" },
				{ 3, 81280, "", "=q3=Siegeworn Bracers", "=ds=#s8#, #a4#" },
				{ 4, 81264, "", "=q3=Vial of Ichorous Blood", "=ds=#s14#" },
				{ 5, 81279, "", "=q3=Tempestuous Longbow", "=ds=#w2#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("General Pa'valak", 692),
			module = moduleName, instance = "SiegeofNiuzaoTemple",
		};
	};

	AtlasLoot_Data["NTNeronok"] = {
		["Normal"] = {
			{
				{ 1, 87547, "", "=q4=Tolakesh, Horn of the Black Ox", "=ds=#h1#, #w4#" },
				{ 3, 81289, "", "=q3=Breezeswept Hood", "=ds=#s1#, #a1#" },
				{ 4, 81291, "", "=q3=Whisperwind Spaulders", "=ds=#s3#, #a1#" },
				{ 5, 81283, "", "=q3=Windblast Helm", "=ds=#s1#, #a2#" },
				{ 6, 81285, "", "=q3=Galedodger Chestguard", "=ds=#s5#, #a3#" },
				{ 7, 81290, "", "=q3=Belt of Totemic Binding", "=ds=#s10#, #a3#" },
				{ 8, 81292, "", "=q3=Airbender Sandals", "=ds=#s12#, #a3#" },
				{ 9, 81287, "", "=q3=Spaulders of Immovable Stone", "=ds=#s3#, #a4#" },
				{ 10, 81284, "", "=q3=Anchoring Sabatons", "=ds=#s12#, #a4#" },
				{ 18, 81286, "", "=q3=Ner'onok's Razor Katar", "=ds=#h1#, #w13#" },
				{ 19, 81288, "", "=q3=Gustwalker Staff", "=ds=#w9#" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Wing Leader Ner'onok", 727),
			module = moduleName, instance = "SiegeofNiuzaoTemple",
		};
	};

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

		---------------------
		--- Heart of Fear ---
		---------------------

	AtlasLoot_Data["HoFZorlok"] = {
		["RaidFinder"] = {
			{
				{ 1, 86812, "", "=q4=Hisek's Chrysanthemum Cape", "=ds=#s4#, #a1#" },
				{ 2, 86815, "", "=q4=Attenuating Bracers", "=ds=#s8#, #a1#" },
				{ 3, 86819, "", "=q4=Gloves of Grasping Claws", "=ds=#s9#, #a1#" },
				{ 4, 86817, "", "=q4=Gauntlets of Undesired Gifts", "=ds=#s9#, #a2#" },
				{ 5, 86811, "", "=q4=Boots of the Still Breath", "=ds=#s12#, #a2#" },
				{ 6, 86818, "", "=q4=Mail of Screaming Secrets", "=ds=#s5#, #a3#" },
				{ 7, 87823, "", "=q4=Zor'lok's Fizzing Chestguard", "=ds=#s5#, #a3#" },
				{ 8, 86816, "", "=q4=Chestplate of the Forbidden Tower", "=ds=#s5#, #a4#" },
				{ 9, 86854, "", "=q4=Articulated Legplates", "=ds=#s11#, #a4#" },
				{ 16, 86814, "", "=q4=Fragment of Fear Made Flesh", "=ds=#s13#" },
				{ 17, 86813, "", "=q4=Vizier's Ruby Signet", "=ds=#s13#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86154, "", "=q4=Hisek's Chrysanthemum Cape", "=ds=#s4#, #a1#" },
				{ 2, 86157, "", "=q4=Attenuating Bracers", "=ds=#s8#, #a1#" },
				{ 3, 86161, "", "=q4=Gloves of Grasping Claws", "=ds=#s9#, #a1#" },
				{ 4, 86159, "", "=q4=Gauntlets of Undesired Gifts", "=ds=#s9#, #a2#" },
				{ 5, 86153, "", "=q4=Boots of the Still Breath", "=ds=#s12#, #a2#" },
				{ 6, 86160, "", "=q4=Mail of Screaming Secrets", "=ds=#s5#, #a3#" },
				{ 7, 87824, "", "=q4=Zor'lok's Fizzing Chestguard", "=ds=#s5#, #a3#" },
				{ 8, 86158, "", "=q4=Chestplate of the Forbidden Tower", "=ds=#s5#, #a4#" },
				{ 9, 86203, "", "=q4=Articulated Legplates", "=ds=#s11#, #a4#" },
				{ 16, 86156, "", "=q4=Fragment of Fear Made Flesh", "=ds=#s13#" },
				{ 17, 86155, "", "=q4=Vizier's Ruby Signet", "=ds=#s13#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 86945, "", "=q4=Hisek's Chrysanthemum Cape", "=ds=#s4#, #a1#" },
				{ 2, 86948, "", "=q4=Attenuating Bracers", "=ds=#s8#, #a1#" },
				{ 3, 86947, "", "=q4=Gloves of Grasping Claws", "=ds=#s9#, #a1#" },
				{ 4, 86950, "", "=q4=Gauntlets of Undesired Gifts", "=ds=#s9#, #a2#" },
				{ 5, 86943, "", "=q4=Boots of the Still Breath", "=ds=#s12#, #a2#" },
				{ 6, 86951, "", "=q4=Mail of Screaming Secrets", "=ds=#s5#, #a3#" },
				{ 7, 87822, "", "=q4=Zor'lok's Fizzing Chestguard", "=ds=#s5#, #a3#" },
				{ 8, 86952, "", "=q4=Chestplate of the Forbidden Tower", "=ds=#s5#, #a4#" },
				{ 9, 86944, "", "=q4=Articulated Legplates", "=ds=#s11#, #a4#" },
				{ 16, 86949, "", "=q4=Fragment of Fear Made Flesh", "=ds=#s13#" },
				{ 17, 86946, "", "=q4=Vizier's Ruby Signet", "=ds=#s13#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Imperial Vizier Zor'lok", 745),
			module = moduleName, instance = "HeartofFear",
		};
	};

	AtlasLoot_Data["HoFTayak"] = {
		["RaidFinder"] = {
			{
				{ 1, 86827, "", "=q4=Drape of Gathering Clouds", "=ds=#s4#, #a1#" },
				{ 2, 86828, "", "=q4=Twisting Wind Bracers", "=ds=#s8#, #a1#" },
				{ 3, 86825, "", "=q4=Boots of the Blowing Wind", "=ds=#s12#, #a1#" },
				{ 4, 86821, "", "=q4=Bracers of Unseen Strikes", "=ds=#s8#, #a2#" },
				{ 5, 86826, "", "=q4=Bracers of Tempestuous Fury", "=ds=#s8#, #a3#" },
				{ 6, 90739, "", "=q4=Kaz'tik's Stormseizer Gauntlets", "=ds=#s9#, #a3#" },
				{ 7, 86823, "", "=q4=Windblade Talons", "=ds=#s9#, #a4#" },
				{ 8, 86822, "", "=q4=Waistplate of Overwhelming Assault", "=ds=#s10#, #a4#" },
				{ 16, 86824, "", "=q4=Choker of the Unleashed Storm", "=ds=#s2#" },
				{ 17, 86820, "", "=q4=Ring of the Bladed Tempest", "=ds=#s13#" },
				{ 19, 86829, "", "=q4=Tornado-Summoning Censer", "=ds=#s15#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86169, "", "=q4=Drape of Gathering Clouds", "=ds=#s4#, #a1#" },
				{ 2, 86170, "", "=q4=Twisting Wind Bracers", "=ds=#s8#, #a1#" },
				{ 3, 86167, "", "=q4=Boots of the Blowing Wind", "=ds=#s12#, #a1#" },
				{ 4, 86163, "", "=q4=Bracers of Unseen Strikes", "=ds=#s8#, #a2#" },
				{ 5, 86168, "", "=q4=Bracers of Tempestuous Fury", "=ds=#s8#, #a3#" },
				{ 6, 90738, "", "=q4=Kaz'tik's Stormseizer Gauntlets", "=ds=#s9#, #a3#" },
				{ 7, 86165, "", "=q4=Windblade Talons", "=ds=#s9#, #a4#" },
				{ 8, 86164, "", "=q4=Waistplate of Overwhelming Assault", "=ds=#s10#, #a4#" },
				{ 16, 86166, "", "=q4=Choker of the Unleashed Storm", "=ds=#s2#" },
				{ 17, 86162, "", "=q4=Ring of the Bladed Tempest", "=ds=#s13#" },
				{ 19, 86171, "", "=q4=Tornado-Summoning Censer", "=ds=#s15#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 86961, "", "=q4=Drape of Gathering Clouds", "=ds=#s4#, #a1#" },
				{ 2, 86958, "", "=q4=Twisting Wind Bracers", "=ds=#s8#, #a1#" },
				{ 3, 86959, "", "=q4=Boots of the Blowing Wind", "=ds=#s12#, #a1#" },
				{ 4, 86954, "", "=q4=Bracers of Unseen Strikes", "=ds=#s8#, #a2#" },
				{ 5, 86962, "", "=q4=Bracers of Tempestuous Fury", "=ds=#s8#, #a3#" },
				{ 6, 90740, "", "=q4=Kaz'tik's Stormseizer Gauntlets", "=ds=#s9#, #a3#" },
				{ 7, 86956, "", "=q4=Windblade Talons", "=ds=#s9#, #a4#" },
				{ 8, 86955, "", "=q4=Waistplate of Overwhelming Assault", "=ds=#s10#, #a4#" },
				{ 16, 86953, "", "=q4=Choker of the Unleashed Storm", "=ds=#s2#" },
				{ 17, 86957, "", "=q4=Ring of the Bladed Tempest", "=ds=#s13#" },
				{ 19, 86960, "", "=q4=Tornado-Summoning Censer", "=ds=#s15#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Blade Lord Ta'yak", 744),
			module = moduleName, instance = "HeartofFear",
		};
	};

	AtlasLoot_Data["HoFGaralon"] = {
		["RaidFinder"] = {
			{
				{ 1, 86831, "", "=q4=Legbreaker Greatcloak", "=ds=#s4#, #a1#" },
				{ 2, 86840, "", "=q4=Stormwake Mistcloak", "=ds=#s4#, #a1#" },
				{ 3, 86839, "", "=q4=Xaril's Hood of Intoxicating Vapors", "=ds=#s1#, #a1#" },
				{ 4, 86836, "", "=q4=Sandals of the Unbidden", "=ds=#s12#, #a1#" },
				{ 5, 86838, "", "=q4=Robes of Eighty Lights", "=ds=#s5#, #a2#" },
				{ 6, 86834, "", "=q4=Bonebreaker Gauntlets", "=ds=#s9#, #a2#" },
				{ 7, 86833, "", "=q4=Grips of the Leviathan", "=ds=#s9#, #a3#" },
				{ 8, 86832, "", "=q4=Garalon's Hollow Skull", "=ds=#s1#, #a4#" },
				{ 9, 86837, "", "=q4=Grasps of Panic", "=ds=#s9#, #a4#" },
				{ 16, 86835, "", "=q4=Necklace of Congealed Weaknesses", "=ds=#s2#" },
				{ 17, 86830, "", "=q4=Ring of the Shattered Shell", "=ds=#s13#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86173, "", "=q4=Legbreaker Greatcloak", "=ds=#s4#, #a1#" },
				{ 2, 86182, "", "=q4=Stormwake Mistcloak", "=ds=#s4#, #a1#" },
				{ 3, 86181, "", "=q4=Xaril's Hood of Intoxicating Vapors", "=ds=#s1#, #a1#" },
				{ 4, 86178, "", "=q4=Sandals of the Unbidden", "=ds=#s12#, #a1#" },
				{ 5, 86180, "", "=q4=Robes of Eighty Lights", "=ds=#s5#, #a2#" },
				{ 6, 86176, "", "=q4=Bonebreaker Gauntlets", "=ds=#s9#, #a2#" },
				{ 7, 86175, "", "=q4=Grips of the Leviathan", "=ds=#s9#, #a3#" },
				{ 8, 86174, "", "=q4=Garalon's Hollow Skull", "=ds=#s1#, #a4#" },
				{ 9, 86179, "", "=q4=Grasps of Panic", "=ds=#s9#, #a4#" },
				{ 16, 86177, "", "=q4=Necklace of Congealed Weaknesses", "=ds=#s2#" },
				{ 17, 86172, "", "=q4=Ring of the Shattered Shell", "=ds=#s13#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 86963, "", "=q4=Legbreaker Greatcloak", "=ds=#s4#, #a1#" },
				{ 2, 86971, "", "=q4=Stormwake Mistcloak", "=ds=#s4#, #a1#" },
				{ 3, 86970, "", "=q4=Xaril's Hood of Intoxicating Vapors", "=ds=#s1#, #a1#" },
				{ 4, 86969, "", "=q4=Sandals of the Unbidden", "=ds=#s12#, #a1#" },
				{ 5, 86972, "", "=q4=Robes of Eighty Lights", "=ds=#s5#, #a2#" },
				{ 6, 86964, "", "=q4=Bonebreaker Gauntlets", "=ds=#s9#, #a2#" },
				{ 7, 86965, "", "=q4=Grips of the Leviathan", "=ds=#s9#, #a3#" },
				{ 8, 86966, "", "=q4=Garalon's Hollow Skull", "=ds=#s1#, #a4#" },
				{ 9, 86973, "", "=q4=Grasps of Panic", "=ds=#s9#, #a4#" },
				{ 16, 86967, "", "=q4=Necklace of Congealed Weaknesses", "=ds=#s2#" },
				{ 17, 86968, "", "=q4=Ring of the Shattered Shell", "=ds=#s13#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Garalon", 713),
			module = moduleName, instance = "HeartofFear",
		};
	};

	AtlasLoot_Data["HoFMeljarak"] = {
		["RaidFinder"] = {
			{
				{ 1, 86853, "", "=q4=Cloak of Raining Blades", "=ds=#s4#, #a1#" },
				{ 2, 86911, "", "=q4=Robes of Torn Nightmares", "=ds=#s5#, #a1#" },
				{ 3, 86912, "", "=q4=Clutches of Dying Hope", "=ds=#s9#, #a2#" },
				{ 4, 86855, "", "=q4=Wingslasher Pauldrons", "=ds=#s3#, #a3#" },
				{ 5, 86852, "", "=q4=Impaling Treads", "=ds=#s12#, #a4#" },
				{ 16, 89271, "", "=q4=Gauntlets of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89272, "", "=q4=Gauntlets of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89270, "", "=q4=Gauntlets of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 86856, "", "=q4=Korven's Amber-Sealed Beetle", "=ds=#s2#" },
				{ 21, 86851, "", "=q4=Painful Thorned Ring", "=ds=#s13#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86202, "", "=q4=Cloak of Raining Blades", "=ds=#s4#, #a1#" },
				{ 2, 86513, "", "=q4=Robes of Torn Nightmares", "=ds=#s5#, #a1#" },
				{ 3, 86514, "", "=q4=Clutches of Dying Hope", "=ds=#s9#, #a2#" },
				{ 4, 86204, "", "=q4=Wingslasher Pauldrons", "=ds=#s3#, #a3#" },
				{ 5, 86201, "", "=q4=Impaling Treads", "=ds=#s12#, #a4#" },
				{ 16, 89240, "", "=q4=Gauntlets of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89241, "", "=q4=Gauntlets of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89242, "", "=q4=Gauntlets of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 86205, "", "=q4=Korven's Amber-Sealed Beetle", "=ds=#s2#" },
				{ 21, 86200, "", "=q4=Painful Thorned Ring", "=ds=#s13#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 86980, "", "=q4=Cloak of Raining Blades", "=ds=#s4#, #a1#" },
				{ 2, 86975, "", "=q4=Robes of Torn Nightmares", "=ds=#s5#, #a1#" },
				{ 3, 86977, "", "=q4=Clutches of Dying Hope", "=ds=#s9#, #a2#" },
				{ 4, 86978, "", "=q4=Wingslasher Pauldrons", "=ds=#s3#, #a3#" },
				{ 5, 86979, "", "=q4=Impaling Treads", "=ds=#s12#, #a4#" },
				{ 16, 89256, "", "=q4=Gauntlets of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89257, "", "=q4=Gauntlets of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89255, "", "=q4=Gauntlets of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 86976, "", "=q4=Korven's Amber-Sealed Beetle", "=ds=#s2#" },
				{ 21, 86974, "", "=q4=Painful Thorned Ring", "=ds=#s13#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741),
			module = moduleName, instance = "HeartofFear",
		};
	};

	AtlasLoot_Data["HoFUnsok"] = {
		["RaidFinder"] = {
			{
				{ 1, 86857, "", "=q4=Belt of Malleable Amber", "=ds=#s10#, #a1#" },
				{ 2, 86859, "", "=q4=Treads of Deadly Secretions", "=ds=#s12#, #a2#" },
				{ 3, 86861, "", "=q4=Monstrous Stompers", "=ds=#s12#, #a3#" },
				{ 4, 86860, "", "=q4=Shoulderpads of Misshapen Life", "=ds=#s3#, #a4#" },
				{ 16, 89268, "", "=q4=Leggings of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89269, "", "=q4=Leggings of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89267, "", "=q4=Leggings of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 86858, "", "=q4=Seal of the Profane", "=ds=#s13#" },
				{ 22, 86862, "", "=q4=Un'sok's Amber Scalpel", "=ds=#h3#, #w4#" },
				{ 23, 86863, "", "=q4=Scimitar of Seven Stars", "=ds=#h1#, #w10#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86210, "", "=q4=Belt of Malleable Amber", "=ds=#s10#, #a1#" },
				{ 2, 86212, "", "=q4=Treads of Deadly Secretions", "=ds=#s12#, #a2#" },
				{ 3, 86214, "", "=q4=Monstrous Stompers", "=ds=#s12#, #a3#" },
				{ 4, 86213, "", "=q4=Shoulderpads of Misshapen Life", "=ds=#s3#, #a4#" },
				{ 16, 89243, "", "=q4=Leggings of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89244, "", "=q4=Leggings of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89245, "", "=q4=Leggings of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 86211, "", "=q4=Seal of the Profane", "=ds=#s13#" },
				{ 22, 86217, "", "=q4=Un'sok's Amber Scalpel", "=ds=#h3#, #w4#" },
				{ 23, 86219, "", "=q4=Scimitar of Seven Stars", "=ds=#h1#, #w10#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 86981, "", "=q4=Belt of Malleable Amber", "=ds=#s10#, #a1#" },
				{ 2, 86984, "", "=q4=Treads of Deadly Secretions", "=ds=#s12#, #a2#" },
				{ 3, 86985, "", "=q4=Monstrous Stompers", "=ds=#s12#, #a3#" },
				{ 4, 86986, "", "=q4=Shoulderpads of Misshapen Life", "=ds=#s3#, #a4#" },
				{ 16, 89253, "", "=q4=Leggings of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89254, "", "=q4=Leggings of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89252, "", "=q4=Leggings of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 86982, "", "=q4=Seal of the Profane", "=ds=#s13#" },
				{ 22, 86983, "", "=q4=Un'sok's Amber Scalpel", "=ds=#h3#, #w4#" },
				{ 23, 86987, "", "=q4=Scimitar of Seven Stars", "=ds=#h1#, #w10#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737),
			module = moduleName, instance = "HeartofFear",
		};
	};

	AtlasLoot_Data["HoFShekzeer"] = {
		["RaidFinder"] = {
			{
				{ 1, 86867, "", "=q4=Leggings of Shadow Infestation", "=ds=#s11#, #a1#" },
				{ 2, 86866, "", "=q4=Crown of the Doomed Empress", "=ds=#s1#, #a3#" },
				{ 4, 86865, "", "=q4=Kri'tak, Imperial Scepter of the Swarm", "=ds=#h3#, #w6#" },
				{ 5, 86864, "", "=q4=Claws of Shek'zeer", "=ds=#h1#, #w13#" },
				{ 16, 89265, "", "=q4=Chest of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89266, "", "=q4=Chest of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89264, "", "=q4=Chest of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
			};
		};
		["Normal"] = {
			{
				{ 1, 86229, "", "=q4=Leggings of Shadow Infestation", "=ds=#s11#, #a1#" },
				{ 2, 86228, "", "=q4=Crown of the Doomed Empress", "=ds=#s1#, #a3#" },
				{ 4, 86227, "", "=q4=Kri'tak, Imperial Scepter of the Swarm", "=ds=#h3#, #w6#" },
				{ 5, 86226, "", "=q4=Claws of Shek'zeer", "=ds=#h1#, #w13#" },
				{ 16, 89237, "", "=q4=Chest of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89238, "", "=q4=Chest of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89239, "", "=q4=Chest of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
			};
		};
		["Heroic"] = {
			{
				{ 1, 86989, "", "=q4=Leggings of Shadow Infestation", "=ds=#s11#, #a1#" },
				{ 2, 86991, "", "=q4=Crown of the Doomed Empress", "=ds=#s1#, #a3#" },
				{ 4, 86990, "", "=q4=Kri'tak, Imperial Scepter of the Swarm", "=ds=#h3#, #w6#" },
				{ 5, 86988, "", "=q4=Claws of Shek'zeer", "=ds=#h1#, #w13#" },
				{ 16, 89250, "", "=q4=Chest of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89251, "", "=q4=Chest of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89249, "", "=q4=Chest of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743),
			module = moduleName, instance = "HeartofFear",
		};
	};

		------------------------
		--- Mogu'Shan Vaults ---
		------------------------

	AtlasLoot_Data["MSVTheStoneGuard"] = {
		["RaidFinder"] = {
			{
				{ 1, 86748, "", "=q4=Cape of Three Lanterns", "=ds=#s4#, #a1#" },
				{ 2, 86747, "", "=q4=Jade Dust Leggings", "=ds=#s11#, #a1#" },
				{ 3, 86746, "", "=q4=Stonebound Cinch", "=ds=#s10#, #a2#" },
				{ 4, 86743, "", "=q4=Stoneflesh Leggings", "=ds=#s11#, #a2#" },
				{ 5, 86745, "", "=q4=Sixteen-Fanged Crown", "=ds=#s1#, #a3#" },
				{ 6, 86740, "", "=q4=Stonemaw Armguards", "=ds=#s8#, #a3#" },
				{ 7, 86793, "", "=q4=Star-Stealer Waistguard", "=ds=#s10#, #a4#" },
				{ 8, 86744, "", "=q4=Heavenly Jade Greatboots", "=ds=#s12#, #a4#" },
				{ 9, 86742, "", "=q4=Jasper Clawfeet", "=ds=#s12#, #a4#" },
				{ 16, 86739, "", "=q4=Beads of the Mogu'shi", "=ds=#s2#" },
				{ 18, 86741, "", "=q4=Dagger of the Seven Stars", "=ds=#h1#, #w4#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 85979, "", "=q4=Cape of Three Lanterns", "=ds=#s4#, #a1#" },
				{ 2, 85978, "", "=q4=Jade Dust Leggings", "=ds=#s11#, #a1#" },
				{ 3, 85977, "", "=q4=Stonebound Cinch", "=ds=#s10#, #a2#" },
				{ 4, 85926, "", "=q4=Stoneflesh Leggings", "=ds=#s11#, #a2#" },
				{ 5, 85976, "", "=q4=Sixteen-Fanged Crown", "=ds=#s1#, #a3#" },
				{ 6, 85923, "", "=q4=Stonemaw Armguards", "=ds=#s8#, #a3#" },
				{ 7, 86134, "", "=q4=Star-Stealer Waistguard", "=ds=#s10#, #a4#" },
				{ 8, 85975, "", "=q4=Heavenly Jade Greatboots", "=ds=#s12#, #a4#" },
				{ 9, 85925, "", "=q4=Jasper Clawfeet", "=ds=#s12#, #a4#" },
				{ 16, 85922, "", "=q4=Beads of the Mogu'shi", "=ds=#s2#" },
				{ 18, 85924, "", "=q4=Dagger of the Seven Stars", "=ds=#h1#, #w4#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 87018, "", "=q4=Cape of Three Lanterns", "=ds=#s4#, #a1#" },
				{ 2, 87017, "", "=q4=Jade Dust Leggings", "=ds=#s11#, #a1#" },
				{ 3, 87019, "", "=q4=Stonebound Cinch", "=ds=#s10#, #a2#" },
				{ 4, 87013, "", "=q4=Stoneflesh Leggings", "=ds=#s11#, #a2#" },
				{ 5, 87020, "", "=q4=Sixteen-Fanged Crown", "=ds=#s1#, #a3#" },
				{ 6, 87014, "", "=q4=Stonemaw Armguards", "=ds=#s8#, #a3#" },
				{ 7, 87060, "", "=q4=Star-Stealer Waistguard", "=ds=#s10#, #a4#" },
				{ 8, 87021, "", "=q4=Heavenly Jade Greatboots", "=ds=#s12#, #a4#" },
				{ 9, 87015, "", "=q4=Jasper Clawfeet", "=ds=#s12#, #a4#" },
				{ 16, 87016, "", "=q4=Beads of the Mogu'shi", "=ds=#s2#" },
				{ 18, 87012, "", "=q4=Dagger of the Seven Stars", "=ds=#h1#, #w4#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("The Stone Guard", 679),
			module = moduleName, instance = "MoguShanVaults",
		};
	};

	AtlasLoot_Data["MSVFeng"] = {
		["RaidFinder"] = {
			{
				{ 1, 86782, "", "=q4=Arrow Breaking Windcloak", "=ds=#s4#, #a1#" },
				{ 2, 86753, "", "=q4=Cloak of Peacock Feathers", "=ds=#s4#, #a1#" },
				{ 3, 86758, "", "=q4=Imperial Ghostbinder's Robes", "=ds=#s5#, #a1#" },
				{ 4, 86757, "", "=q4=Hood of Cursed Dreams", "=ds=#s1#, #a2#" },
				{ 5, 86750, "", "=q4=Tomb Raider's Girdle", "=ds=#s10#, #a2#" },
				{ 6, 86755, "", "=q4=Chain of Shadow", "=ds=#s10#, #a3#" },
				{ 7, 86749, "", "=q4=Wildfire Worldwalkers", "=ds=#s12#, #a3#" },
				{ 8, 86752, "", "=q4=Nullification Greathelm", "=ds=#s1#, #a4#" },
				{ 9, 86751, "", "=q4=Bracers of Six Oxen", "=ds=#s8#, #a4#" },
				{ 10, 86756, "", "=q4=Legplates of Sagacious Shadows", "=ds=#s11#, #a4#" },
				{ 16, 86754, "", "=q4=Amulet of Seven Curses", "=ds=#s2#" },
				{ 18, 89426, "", "=q4=Fan of Fiery Winds", "=ds=#s15#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86082, "", "=q4=Arrow Breaking Windcloak", "=ds=#s4#, #a1#" },
				{ 2, 85985, "", "=q4=Cloak of Peacock Feathers", "=ds=#s4#, #a1#" },
				{ 3, 85990, "", "=q4=Imperial Ghostbinder's Robes", "=ds=#s5#, #a1#" },
				{ 4, 85989, "", "=q4=Hood of Cursed Dreams", "=ds=#s1#, #a2#" },
				{ 5, 85982, "", "=q4=Tomb Raider's Girdle", "=ds=#s10#, #a2#" },
				{ 6, 85987, "", "=q4=Chain of Shadow", "=ds=#s10#, #a3#" },
				{ 7, 85980, "", "=q4=Wildfire Worldwalkers", "=ds=#s12#, #a3#" },
				{ 8, 85984, "", "=q4=Nullification Greathelm", "=ds=#s1#, #a4#" },
				{ 9, 85983, "", "=q4=Bracers of Six Oxen", "=ds=#s8#, #a4#" },
				{ 10, 85988, "", "=q4=Legplates of Sagacious Shadows", "=ds=#s11#, #a4#" },
				{ 16, 85986, "", "=q4=Amulet of Seven Curses", "=ds=#s2#" },
				{ 18, 89424, "", "=q4=Fan of Fiery Winds", "=ds=#s15#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 87044, "", "=q4=Arrow Breaking Windcloak", "=ds=#s4#, #a1#" },
				{ 2, 87026, "", "=q4=Cloak of Peacock Feathers", "=ds=#s4#, #a1#" },
				{ 3, 87027, "", "=q4=Imperial Ghostbinder's Robes", "=ds=#s5#, #a1#" },
				{ 4, 87029, "", "=q4=Hood of Cursed Dreams", "=ds=#s1#, #a2#" },
				{ 5, 87022, "", "=q4=Tomb Raider's Girdle", "=ds=#s10#, #a2#" },
				{ 6, 87030, "", "=q4=Chain of Shadow", "=ds=#s10#, #a3#" },
				{ 7, 87023, "", "=q4=Wildfire Worldwalkers", "=ds=#s12#, #a3#" },
				{ 8, 87024, "", "=q4=Nullification Greathelm", "=ds=#s1#, #a4#" },
				{ 9, 87025, "", "=q4=Bracers of Six Oxen", "=ds=#s8#, #a4#" },
				{ 10, 87031, "", "=q4=Legplates of Sagacious Shadows", "=ds=#s11#, #a4#" },
				{ 16, 87028, "", "=q4=Amulet of Seven Curses", "=ds=#s2#" },
				{ 18, 89425, "", "=q4=Fan of Fiery Winds", "=ds=#s15#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Feng the Accursed", 689),
			module = moduleName, instance = "MoguShanVaults",
		};
	};

	AtlasLoot_Data["MSVGarajal"] = {
		["RaidFinder"] = {
			{
				{ 1, 86770, "", "=q4=Shadowsummoner Spaulders", "=ds=#s3#, #a1#" },
				{ 2, 86765, "", "=q4=Sandals of the Severed Soul", "=ds=#s12#, #a1#" },
				{ 3, 86763, "", "=q4=Netherrealm Shoulderpads", "=ds=#s3#, #a2#" },
				{ 4, 86768, "", "=q4=Spaulders of the Divided Mind", "=ds=#s3#, #a2#" },
				{ 5, 86761, "", "=q4=Fetters of Death", "=ds=#s10#, #a3#" },
				{ 6, 86769, "", "=q4=Leggings of Imprisoned Will", "=ds=#s11#, #a3#" },
				{ 7, 86766, "", "=q4=Bindings of Ancient Spirits", "=ds=#s8#, #a4#" },
				{ 8, 86760, "", "=q4=Sollerets of Spirit Splitting", "=ds=#s12#, #a4#" },
				{ 16, 86759, "", "=q4=Soulgrasp Choker", "=ds=#s2#" },
				{ 17, 86767, "", "=q4=Circuit of the Frail Soul", "=ds=#s13#" },
				{ 19, 86762, "", "=q4=Gara'kal, Fist of the Spiritbinder", "=ds=#h1#, #w13#" },
				{ 20, 86764, "", "=q4=Eye of the Ancient Spirit", "=ds=#w8#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86041, "", "=q4=Shadowsummoner Spaulders", "=ds=#s3#, #a1#" },
				{ 2, 85997, "", "=q4=Sandals of the Severed Soul", "=ds=#s12#, #a1#" },
				{ 3, 85995, "", "=q4=Netherrealm Shoulderpads", "=ds=#s3#, #a2#" },
				{ 4, 86039, "", "=q4=Spaulders of the Divided Mind", "=ds=#s3#, #a2#" },
				{ 5, 85993, "", "=q4=Fetters of Death", "=ds=#s10#, #a3#" },
				{ 6, 86040, "", "=q4=Leggings of Imprisoned Will", "=ds=#s11#, #a3#" },
				{ 7, 86027, "", "=q4=Bindings of Ancient Spirits", "=ds=#s8#, #a4#" },
				{ 8, 85992, "", "=q4=Sollerets of Spirit Splitting", "=ds=#s12#, #a4#" },
				{ 16, 85991, "", "=q4=Soulgrasp Choker", "=ds=#s2#" },
				{ 17, 86038, "", "=q4=Circuit of the Frail Soul", "=ds=#s13#" },
				{ 19, 85994, "", "=q4=Gara'kal, Fist of the Spiritbinder", "=ds=#h1#, #w13#" },
				{ 20, 85996, "", "=q4=Eye of the Ancient Spirit", "=ds=#w8#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 87038, "", "=q4=Shadowsummoner Spaulders", "=ds=#s3#, #a1#" },
				{ 2, 87037, "", "=q4=Sandals of the Severed Soul", "=ds=#s12#, #a1#" },
				{ 3, 87033, "", "=q4=Netherrealm Shoulderpads", "=ds=#s3#, #a2#" },
				{ 4, 87041, "", "=q4=Spaulders of the Divided Mind", "=ds=#s3#, #a2#" },
				{ 5, 87034, "", "=q4=Fetters of Death", "=ds=#s10#, #a3#" },
				{ 6, 87042, "", "=q4=Leggings of Imprisoned Will", "=ds=#s11#, #a3#" },
				{ 7, 87043, "", "=q4=Bindings of Ancient Spirits", "=ds=#s8#, #a4#" },
				{ 8, 87035, "", "=q4=Sollerets of Spirit Splitting", "=ds=#s12#, #a4#" },
				{ 16, 87036, "", "=q4=Soulgrasp Choker", "=ds=#s2#" },
				{ 17, 87040, "", "=q4=Circuit of the Frail Soul", "=ds=#s13#" },
				{ 19, 87032, "", "=q4=Gara'kal, Fist of the Spiritbinder", "=ds=#h1#, #w13#" },
				{ 20, 87039, "", "=q4=Eye of the Ancient Spirit", "=ds=#w8#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Gara'jal the Spiritbinder", 682),
			module = moduleName, instance = "MoguShanVaults",
		};
	};

	AtlasLoot_Data["MSVSpiritKings"] = {
		["RaidFinder"] = {
			{
				{ 1, 86782, "", "=q4=Arrow Breaking Windcloak", "=ds=#s4#, #a1#" },
				{ 2, 86788, "", "=q4=Hood of Blind Eyes", "=ds=#s1#, #a1#" },
				{ 3, 86787, "", "=q4=Undying Shadow Grips", "=ds=#s9#, #a1#" },
				{ 4, 86786, "", "=q4=Bracers of Dark Thoughts", "=ds=#s8#, #a2#" },
				{ 5, 86781, "", "=q4=Subetai's Pillaging Leggings", "=ds=#s11#, #a3#" },
				{ 6, 86784, "", "=q4=Meng's Treads of Insanity", "=ds=#s12#, #a3#" },
				{ 7, 86780, "", "=q4=Shoulderguards of the Unflanked", "=ds=#s3#, #a4#" },
				{ 8, 86779, "", "=q4=Breastplate of the Kings' Guard", "=ds=#s5#, #a4#" },
				{ 9, 86785, "", "=q4=Girdle of Delirious Visions", "=ds=#s10#, #a4#" },
				{ 16, 86776, "", "=q4=Amulet of the Hidden Kings", "=ds=#s2#" },
				{ 17, 86783, "", "=q4=Zian's Choker of Coalesced Shadow", "=ds=#s2#" },
				{ 19, 86777, "", "=q4=Screaming Tiger, Qiang's Unbreakable Polearm", "=ds=#w7#" },
				{ 20, 86778, "", "=q4=Steelskin, Qiang's Impervious Shield", "=ds=#w8#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86082, "", "=q4=Arrow Breaking Windcloak", "=ds=#s4#, #a1#" },
				{ 2, 86129, "", "=q4=Hood of Blind Eyes", "=ds=#s1#, #a1#" },
				{ 3, 86128, "", "=q4=Undying Shadow Grips", "=ds=#s9#, #a1#" },
				{ 4, 86127, "", "=q4=Bracers of Dark Thoughts", "=ds=#s8#, #a2#" },
				{ 5, 86081, "", "=q4=Subetai's Pillaging Leggings", "=ds=#s11#, #a3#" },
				{ 6, 86084, "", "=q4=Meng's Treads of Insanity", "=ds=#s12#, #a3#" },
				{ 7, 86080, "", "=q4=Shoulderguards of the Unflanked", "=ds=#s3#, #a4#" },
				{ 8, 86076, "", "=q4=Breastplate of the Kings' Guard", "=ds=#s5#, #a4#" },
				{ 9, 86086, "", "=q4=Girdle of Delirious Visions", "=ds=#s10#, #a4#" },
				{ 16, 86047, "", "=q4=Amulet of the Hidden Kings", "=ds=#s2#" },
				{ 17, 86083, "", "=q4=Zian's Choker of Coalesced Shadow", "=ds=#s2#" },
				{ 19, 86071, "", "=q4=Screaming Tiger, Qiang's Unbreakable Polearm", "=ds=#w7#" },
				{ 20, 86075, "", "=q4=Steelskin, Qiang's Impervious Shield", "=ds=#w8#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 87044, "", "=q4=Arrow Breaking Windcloak", "=ds=#s4#, #a1#" },
				{ 2, 87051, "", "=q4=Hood of Blind Eyes", "=ds=#s1#, #a1#" },
				{ 3, 87052, "", "=q4=Undying Shadow Grips", "=ds=#s9#, #a1#" },
				{ 4, 87054, "", "=q4=Bracers of Dark Thoughts", "=ds=#s8#, #a2#" },
				{ 5, 87047, "", "=q4=Subetai's Pillaging Leggings", "=ds=#s11#, #a3#" },
				{ 6, 87055, "", "=q4=Meng's Treads of Insanity", "=ds=#s12#, #a3#" },
				{ 7, 87049, "", "=q4=Shoulderguards of the Unflanked", "=ds=#s3#, #a4#" },
				{ 8, 87048, "", "=q4=Breastplate of the Kings' Guard", "=ds=#s5#, #a4#" },
				{ 9, 87056, "", "=q4=Girdle of Delirious Visions", "=ds=#s10#, #a4#" },
				{ 16, 87045, "", "=q4=Amulet of the Hidden Kings", "=ds=#s2#" },
				{ 17, 87053, "", "=q4=Zian's Choker of Coalesced Shadow", "=ds=#s2#" },
				{ 19, 87046, "", "=q4=Screaming Tiger, Qiang's Unbreakable Polearm", "=ds=#w7#" },
				{ 20, 87050, "", "=q4=Steelskin, Qiang's Impervious Shield", "=ds=#w8#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("The Spirit Kings", 687),
			module = moduleName, instance = "MoguShanVaults",
		};
	};

	AtlasLoot_Data["MSVElegon"] = {
		["RaidFinder"] = {
			{
				{ 1, 89973, "", "=q4=Galaxyfire Girdle", "=ds=#s10#, #a1#" },
				{ 2, 86798, "", "=q4=Orbital Belt", "=ds=#s10#, #a1#" },
				{ 3, 86795, "", "=q4=Chestguard of Total Annihilation", "=ds=#s5#, #a2#" },
				{ 4, 86797, "", "=q4=Phasewalker Striders", "=ds=#s12#, #a2#" },
				{ 5, 86800, "", "=q4=Shoulders of Empyreal Focus", "=ds=#s3#, #a3#" },
				{ 6, 89974, "", "=q4=Crown of Keening Stars", "=ds=#s1#, #a4#" },
				{ 7, 86794, "", "=q4=Starcrusher Gauntlets", "=ds=#s9#, #a4#" },
				{ 16, 89972, "", "=q4=Band of Bursting Novas", "=ds=#s13#" },
				{ 17, 86791, "", "=q4=Bottle of Infinite Stars", "=ds=#s14#" },
				{ 18, 86792, "", "=q4=Light of the Cosmos", "=ds=#s14#" },
				{ 19, 86790, "", "=q4=Vial of Dragon's Blood", "=ds=#s14#" },
				{ 21, 86789, "", "=q4=Elegion, the Fanged Crescent", "=ds=#h1#, #w1#" },
				{ 22, 86799, "", "=q4=Starshatter", "=ds=#h2#, #w10#" },
				{ 23, 86796, "", "=q4=Torch of the Celestial Spark", "=ds=#w12#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 89822, "", "=q4=Galaxyfire Girdle", "=ds=#s10#, #a1#" },
				{ 2, 86139, "", "=q4=Orbital Belt", "=ds=#s10#, #a1#" },
				{ 3, 86136, "", "=q4=Chestguard of Total Annihilation", "=ds=#s5#, #a2#" },
				{ 4, 86138, "", "=q4=Phasewalker Striders", "=ds=#s12#, #a2#" },
				{ 5, 86141, "", "=q4=Shoulders of Empyreal Focus", "=ds=#s3#, #a3#" },
				{ 6, 89821, "", "=q4=Crown of Keening Stars", "=ds=#s1#, #a4#" },
				{ 7, 86135, "", "=q4=Starcrusher Gauntlets", "=ds=#s9#, #a4#" },
				{ 16, 89824, "", "=q4=Band of Bursting Novas", "=ds=#s13#" },
				{ 17, 86132, "", "=q4=Bottle of Infinite Stars", "=ds=#s14#" },
				{ 18, 86133, "", "=q4=Light of the Cosmos", "=ds=#s14#" },
				{ 19, 86131, "", "=q4=Vial of Dragon's Blood", "=ds=#s14#" },
				{ 21, 86130, "", "=q4=Elegion, the Fanged Crescent", "=ds=#h1#, #w1#" },
				{ 22, 86140, "", "=q4=Starshatter", "=ds=#h2#, #w10#" },
				{ 23, 86137, "", "=q4=Torch of the Celestial Spark", "=ds=#w12#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 89938, "", "=q4=Galaxyfire Girdle", "=ds=#s10#, #a1#" },
				{ 2, 87064, "", "=q4=Orbital Belt", "=ds=#s10#, #a1#" },
				{ 3, 87058, "", "=q4=Chestguard of Total Annihilation", "=ds=#s5#, #a2#" },
				{ 4, 87067, "", "=q4=Phasewalker Striders", "=ds=#s12#, #a2#" },
				{ 5, 87068, "", "=q4=Shoulders of Empyreal Focus", "=ds=#s3#, #a3#" },
				{ 6, 89939, "", "=q4=Crown of Keening Stars", "=ds=#s1#, #a4#" },
				{ 7, 87059, "", "=q4=Starcrusher Gauntlets", "=ds=#s9#, #a4#" },
				{ 16, 89937, "", "=q4=Band of Bursting Novas", "=ds=#s13#" },
				{ 17, 87057, "", "=q4=Bottle of Infinite Stars", "=ds=#s14#" },
				{ 18, 87065, "", "=q4=Light of the Cosmos", "=ds=#s14#" },
				{ 19, 87063, "", "=q4=Vial of Dragon's Blood", "=ds=#s14#" },
				{ 21, 87062, "", "=q4=Elegion, the Fanged Crescent", "=ds=#h1#, #w1#" },
				{ 22, 87061, "", "=q4=Starshatter", "=ds=#h2#, #w10#" },
				{ 23, 87066, "", "=q4=Torch of the Celestial Spark", "=ds=#w12#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Elegon", 726),
			module = moduleName, instance = "MoguShanVaults",
		};
	};

	AtlasLoot_Data["MSVWilloftheEmperor"] = {
		["RaidFinder"] = {
			{
				{ 1, 86809, "", "=q4=Hood of Focused Energy", "=ds=#s1#, #a1#" },
				{ 2, 86804, "", "=q4=Crown of Opportunistic Strikes", "=ds=#s1#, #a2#" },
				{ 3, 86808, "", "=q4=Magnetized Leggings", "=ds=#s11#, #a2#" },
				{ 4, 87826, "", "=q4=Grips of Terra Cotta", "=ds=#s9#, #a3#" },
				{ 5, 86807, "", "=q4=Spaulders of the Emperor's Rage", "=ds=#s3#, #a4#" },
				{ 6, 86803, "", "=q4=Jang-xi's Devastating Legplates", "=ds=#s11#, #a4#" },
				{ 16, 86810, "", "=q4=Worldwaker Cachabon", "=ds=#s2#" },
				{ 17, 86802, "", "=q4=Lei Shin's Final Orders", "=ds=#s14#" },
				{ 18, 86805, "", "=q4=Qin-xi's Polarizing Seal", "=ds=#s14#" },
				{ 20, 86806, "", "=q4=Tihan, Scepter of the Sleeping Emperor", "=ds=#h3#, #w6#" },
				{ 21, 86801, "", "=q4=Fang Kung, Spark of Titans", "=ds=#w2#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86151, "", "=q4=Hood of Focused Energy", "=ds=#s1#, #a1#" },
				{ 2, 86146, "", "=q4=Crown of Opportunistic Strikes", "=ds=#s1#, #a2#" },
				{ 3, 86150, "", "=q4=Magnetized Leggings", "=ds=#s11#, #a2#" },
				{ 4, 87827, "", "=q4=Grips of Terra Cotta", "=ds=#s9#, #a3#" },
				{ 5, 86149, "", "=q4=Spaulders of the Emperor's Rage", "=ds=#s3#, #a4#" },
				{ 6, 86145, "", "=q4=Jang-xi's Devastating Legplates", "=ds=#s11#, #a4#" },
				{ 16, 86152, "", "=q4=Worldwaker Cachabon", "=ds=#s2#" },
				{ 17, 86144, "", "=q4=Lei Shin's Final Orders", "=ds=#s14#" },
				{ 18, 86147, "", "=q4=Qin-xi's Polarizing Seal", "=ds=#s14#" },
				{ 20, 86148, "", "=q4=Tihan, Scepter of the Sleeping Emperor", "=ds=#h3#, #w6#" },
				{ 21, 86142, "", "=q4=Fang Kung, Spark of Titans", "=ds=#w2#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 87073, "", "=q4=Hood of Focused Energy", "=ds=#s1#, #a1#" },
				{ 2, 87070, "", "=q4=Crown of Opportunistic Strikes", "=ds=#s1#, #a2#" },
				{ 3, 87077, "", "=q4=Magnetized Leggings", "=ds=#s11#, #a2#" },
				{ 4, 87825, "", "=q4=Grips of Terra Cotta", "=ds=#s9#, #a3#" },
				{ 5, 87078, "", "=q4=Spaulders of the Emperor's Rage", "=ds=#s3#, #a4#" },
				{ 6, 87071, "", "=q4=Jang-xi's Devastating Legplates", "=ds=#s11#, #a4#" },
				{ 16, 87076, "", "=q4=Worldwaker Cachabon", "=ds=#s2#" },
				{ 17, 87072, "", "=q4=Lei Shin's Final Orders", "=ds=#s14#" },
				{ 18, 87075, "", "=q4=Qin-xi's Polarizing Seal", "=ds=#s14#" },
				{ 20, 87074, "", "=q4=Tihan, Scepter of the Sleeping Emperor", "=ds=#h3#, #w6#" },
				{ 21, 87069, "", "=q4=Fang Kung, Spark of Titans", "=ds=#w2#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Will of the Emperor", 677),
			module = moduleName, instance = "MoguShanVaults",
		};
	};

		-----------------------------
		--- Pandaria World Bosses ---
		-----------------------------

	AtlasLoot_Data["ShaofAnger"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_nature_starfall", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 2, 85308, "", "=q4=Eternal Blossom Gloves", "=ds=#s9#, #a2#"};
				{ 3, 85306, "", "=q4=Eternal Blossom Leggings", "=ds=#s11#, #a2#"};
				{ 5, 0, "ability_druid_catform", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["DPS"]};
				{ 6, 85312, "", "=q4=Eternal Blossom Grips", "=ds=#s9#, #a2#"};
				{ 7, 85310, "", "=q4=Eternal Blossom Legguards", "=ds=#s11#, #a2#"};
				{ 9, 0, "spell_nature_healingtouch", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 10, 85358, "", "=q4=Eternal Blossom Handwraps", "=ds=#s9#, #a2#"};
				{ 11, 85356, "", "=q4=Eternal Blossom Legwraps", "=ds=#s11#, #a2#"};
				{ 13, 0, "ability_racial_bearform", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Tanking"]};
				{ 14, 85380, "", "=q4=Eternal Blossom Handguards", "=ds=#s9#, #a2#"};
				{ 15, 85382, "", "=q4=Eternal Blossom Breeches", "=ds=#s11#, #a2#"};
				{ 16, 0, "spell_nature_starfall", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 17, 84843, "", "=q4=Malevolent Gladiator's Wyrmhide Gloves", "=ds="};
				{ 20, 0, "ability_racial_bearform", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
				{ 21, 84832, "", "=q4=Malevolent Gladiator's Dragonhide Gloves", "=ds="};
				{ 24, 0, "spell_nature_healingtouch", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 25, 84833, "", "=q4=Malevolent Gladiator's Kodohide Gloves", "=ds="};
			};
			{
				{ 1, 0, "inv_weapon_bow_07", "=q6="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 2, 85297, "", "=q4=Yaungol Slayer's Gloves", "=ds=#s9#, #a3#"};
				{ 3, 85295, "", "=q4=Yaungol Slayer's Legguards", "=ds=#s11#, #a3#"};
				{ 5, 0, "inv_staff_13", "=q6="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 6, 85378, "", "=q4=Gloves of the Burning Scroll", "=ds=#s9#, #a1#"};
				{ 7, 85376, "", "=q4=Leggings of the Burning Scroll", "=ds=#s11#, #a1#"};
				{ 9, 0, "inv_throwingknife_04", "=q6="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 10, 85302, "", "=q4=Gloves of the Thousandfold Blades", "=ds=#s9#, #a2#"};
				{ 11, 85300, "", "=q4=Legguards of the Thousandfold Blades", "=ds=#s11#, #a2#"};
				{ 13, 0, "spell_nature_drowsy", "=q6="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 14, 85369, "", "=q4=Sha-Skin Gloves", "=ds=#s9#, #a1#"};
				{ 15, 85371, "", "=q4=Sha-Skin Leggings", "=ds=#s11#, #a1#"};
				{ 16, 0, "inv_weapon_bow_07", "=q6="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 17, 84841, "", "=q4=Malevolent Gladiator's Chain Gauntlets", "=ds="};
				{ 20, 0, "inv_staff_13", "=q6="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 21, 84837, "", "=q4=Malevolent Gladiator's Silk Handguards", "=ds="};
				{ 24, 0, "inv_throwingknife_04", "=q6="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 25, 84830, "", "=q4=Malevolent Gladiator's Leather Gloves", "=ds="};
				{ 28, 0, "spell_nature_drowsy", "=q6="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 29, 84842, "", "=q4=Malevolent Gladiator's Felweave Handguards", "=ds="};
			};
			{
				{ 1, 0, "spell_monk_brewmaster_spec", "=q6="..LOCALIZED_CLASS_NAMES_MALE["MONK"], "=q5="..AL["Brewmaster"]};
				{ 2, 85387, "", "=q4=Red Crane Gauntlets", "=ds=#s9#, #a2#"};
				{ 3, 85385, "", "=q4=Red Crane Legguards", "=ds=#s11#, #a2#"};
				{ 5, 0, "spell_monk_windwalker_spec", "=q6="..LOCALIZED_CLASS_NAMES_MALE["MONK"], "=q5="..AL["Windwalker"]};
				{ 6, 85395, "", "=q4=Red Crane Grips", "=ds=#s9#, #a2#"};
				{ 7, 85397, "", "=q4=Red Crane Leggings", "=ds=#s11#, #a2#"};
				{ 9, 0, "spell_monk_mistweaver_spec", "=q6="..LOCALIZED_CLASS_NAMES_MALE["MONK"], "=q5="..AL["Mistweaver"]};
				{ 10, 85389, "", "=q4=Red Crane Handwraps", "=ds=#s9#, #a2#"};
				{ 11, 85391, "", "=q4=Red Crane Legwraps", "=ds=#s11#, #a2#"};
				{ 20, 0, "spell_monk_windwalker_spec", "=q6="..LOCALIZED_CLASS_NAMES_MALE["MONK"], "=q5="..AL["Windwalker"]};
				{ 21, 84839, "", "=q4=Malevolent Gladiator's Ironskin Gloves", "=ds="};
				{ 24, 0, "spell_monk_mistweaver_spec", "=q6="..LOCALIZED_CLASS_NAMES_MALE["MONK"], "=q5="..AL["Mistweaver"]};
				{ 25, 84836, "", "=q4=Malevolent Gladiator's Copperskin Gloves", "=ds="};
			};
			{
				{ 1, 0, "Spell_Holy_HolyBolt", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 2, 85347, "", "=q4=White Tiger Gloves", "=ds=#s9#, #a4#"};
				{ 3, 85345, "", "=q4=White Tiger Greaves", "=ds=#s11#, #a4#"};
				{ 5, 0, "Spell_Holy_AuraOfLight", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 6, 85342, "", "=q4=White Tiger Gauntlets", "=ds=#s9#, #a4#"};
				{ 7, 85340, "", "=q4=White Tiger Legplates", "=ds=#s11#, #a4#"};
				{ 9, 0, "spell_holy_devotionaura", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
				{ 10, 85322, "", "=q4=White Tiger Handguards", "=ds=#s9#, #a4#"};
				{ 11, 85320, "", "=q4=White Tiger Legguards", "=ds=#s11#, #a4#"};
				{ 16, 0, "Spell_Holy_HolyBolt", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 17, 84831, "", "=q4=Malevolent Gladiator's Ornamented Gloves", "=ds="};
				{ 20, 0, "Spell_Holy_AuraOfLight", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 21, 84834, "", "=q4=Malevolent Gladiator's Scaled Gauntlets", "=ds="};
			};
			{
				{ 1, 0, "spell_holy_guardianspirit", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
				{ 2, 85363, "", "=q4=Guardian Serpent Handwraps", "=ds=#s9#, #a1#"};
				{ 3, 85361, "", "=q4=Guardian Serpent Legwraps", "=ds=#s11#, #a1#"};
				{ 5, 0, "spell_shadow_shadowwordpain", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 6, 85364, "", "=q4=Guardian Serpent Gloves", "=ds=#s9#, #a1#"};
				{ 7, 85366, "", "=q4=Guardian Serpent Leggings", "=ds=#s11#, #a1#"};
				{ 16, 0, "spell_holy_guardianspirit", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
				{ 17, 84846, "", "=q4=Malevolent Gladiator's Mooncloth Gloves", "=ds="};
				{ 20, 0, "spell_shadow_shadowwordpain", "=q6="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 21, 84838, "", "=q4=Malevolent Gladiator's Satin Gloves", "=ds="};
			};
			{
				{ 1, 0, "Spell_Nature_Lightning", "=q6="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 2, 85290, "", "=q4=Firebird's Gloves", "=ds=#s9#, #a3#"};
				{ 3, 85292, "", "=q4=Firebird's Kilt", "=ds=#s11#, #a3#"};
				{ 5, 0, "spell_nature_lightningshield", "=q6="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 6, 85287, "", "=q4=Firebird's Grips", "=ds=#s9#, #a3#"};
				{ 7, 85285, "", "=q4=Firebird's Legguards", "=ds=#s11#, #a3#"};
				{ 9, 0, "spell_nature_magicimmunity", "=q6="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 10, 85352, "", "=q4=Firebird's Handwraps", "=ds=#s9#, #a3#"};
				{ 11, 85350, "", "=q4=Firebird's Legwraps", "=ds=#s11#, #a3#"};
				{ 16, 0, "Spell_Nature_Lightning", "=q6="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 17, 84845, "", "=q4=Malevolent Gladiator's Mail Gauntlets", "=ds="};
				{ 20, 0, "spell_nature_lightningshield", "=q6="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 21, 84844, "", "=q4=Malevolent Gladiator's Linked Gauntlets", "=ds="};
				{ 24, 0, "spell_nature_magicimmunity", "=q6="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 25, 84847, "", "=q4=Malevolent Gladiator's Ringmail Gauntlets", "=ds="};
			};
			{
				{ 1, 0, "spell_deathknight_frostpresence", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
				{ 2, 85337, "", "=q4=Gauntlets of the Lost Catacomb", "=ds=#s9#, #a4#"};
				{ 3, 85335, "", "=q4=Greaves of the Lost Catacomb", "=ds=#s11#, #a4#"};
				{ 5, 0, "spell_deathknight_bloodpresence", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
				{ 6, 85317, "", "=q4=Handguards of the Lost Catacomb", "=ds=#s9#, #a4#"};
				{ 7, 85315, "", "=q4=Legguards of the Lost Catacomb", "=ds=#s11#, #a4#"};
				{ 9, 0, "ability_warrior_innerrage", "=q6="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["DPS"]};
				{ 10, 85331, "", "=q4=Gauntlets of Resounding Rings", "=ds=#s9#, #a4#"};
				{ 11, 85330, "", "=q4=Legplates of Resounding Rings", "=ds=#s11#, #a4#"};
				{ 13, 0, "ability_warrior_defensivestance", "=q6="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
				{ 14, 85327, "", "=q4=Handguards of Resounding Rings", "=ds=#s9#, #a4#"};
				{ 15, 85325, "", "=q4=Legguards of Resounding Rings", "=ds=#s11#, #a4#"};
				{ 16, 0, "spell_deathknight_classicon", "=q6="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"]};
				{ 17, 84835, "", "s=q4=Malevolent Gladiator's Dreadplate Gauntlets", "=ds="};
				{ 24, 0, "inv_sword_27", "=q6="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]};
				{ 25, 84840, "", "=q4=Malevolent Gladiator's Plate Gauntlets", "=ds="};
			};
			{
				{ 1, 84977, "", "=q4=Malevolent Gladiator's Cuffs of Accuracy", "=ds="};
				{ 2, 84955, "", "=q4=Malevolent Gladiator's Cord of Accuracy", "=ds="};
				{ 3, 84815, "", "=q4=Malevolent Gladiator's Treads of Alacrity", "=ds="};
				{ 5, 84979, "", "=q4=Malevolent Gladiator's Cuffs of Meditation", "=ds="};
				{ 6, 84956, "", "=q4=Malevolent Gladiator's Cord of Meditation", "=ds="};
				{ 7, 84816, "", "=q4=Malevolent Gladiator's Treads of Meditation", "=ds="};
				{ 9, 84978, "", "=q4=Malevolent Gladiator's Cuffs of Prowess", "=ds="};
				{ 10, 84954, "", "=q4=Malevolent Gladiator's Cord of Cruelty", "=ds="};
				{ 11, 84814, "", "=q4=Malevolent Gladiator's Treads of Cruelty", "=ds="};
				{ 16, 84973, "", "=q4=Malevolent Gladiator's Armwraps of Accuracy", "=ds="};
				{ 17, 84948, "", "=q4=Malevolent Gladiator's Waistband of Accuracy", "=ds="};
				{ 18, 84808, "", "=q4=Malevolent Gladiator's Boots of Cruelty", "=ds="};
				{ 20, 84972, "", "=q4=Malevolent Gladiator's Armwraps of Alacrity", "=ds="};
				{ 21, 84947, "", "=q4=Malevolent Gladiator's Waistband of Cruelty", "=ds="};
				{ 22, 84809, "", "=q4=Malevolent Gladiator's Boots of Alacrity", "=ds="};
				{ 24, 84982, "", "=q4=Malevolent Gladiator's Bindings of Prowess", "=ds="};
				{ 25, 84960, "", "=q4=Malevolent Gladiator's Belt of Cruelty", "=ds="};
				{ 26, 84819, "", "=q4=Cataclysmic Gladiator's Footguards of Alacrity", "=ds="};
				{ 28, 84976, "", "=q4=Malevolent Gladiator's Bindings of Meditation", "=ds="};
				{ 29, 84953, "", "=q4=Malevolent Gladiator's Belt of Meditation", "=ds="};
				{ 30, 84813, "", "=q4=Malevolent Gladiator's Footguards of Alacrity", "=ds="};
			};
			{
				{ 1, 84984, "", "=q4=Malevolent Gladiator's Armbands of Meditation", "=ds="};
				{ 2, 84946, "", "=q4=Malevolent Gladiator's Waistguard of Meditation", "=ds="};
				{ 3, 84821, "", "=q4=Malevolent Gladiator's Footguards of Meditation", "=ds="};
				{ 5, 84983, "", "=q4=Malevolent Gladiator's Armbands of Prowess", "=ds="};
				{ 6, 84959, "", "=q4=Malevolent Gladiator's Waistguard of Cruelty", "=ds="};
				{ 7, 84820, "", "=q4=Malevolent Gladiator's Footguards of Alacrity", "=ds="};
				{ 9, 84980, "", "=q4=Malevolent Gladiator's Wristguards of Alacrity", "=ds="};
				{ 10, 84958, "", "=q4=Malevolent Gladiator's Links of Cruelty", "=ds="};
				{ 11, 84818, "", "=q4=Malevolent Gladiator's Sabatons of Alacrity", "=ds="};
				{ 13, 84981, "", "=q4=Malevolent Gladiator's Wristguards of Accuracy", "=ds="};
				{ 14, 84957, "", "=q4=Malevolent Gladiator's Links of Accuracy", "=ds="};
				{ 15, 84817, "", "=q4=Malevolent Gladiator's Sabatons of Cruelty", "=ds="};
				{ 16, 84975, "", "=q4=Malevolent Gladiator's Bracers of Meditation", "=ds="};
				{ 17, 84952, "", "=q4=Malevolent Gladiator's Clasp of Meditation", "=ds="};
				{ 18, 84812, "", "=q4=Malevolent Gladiator's Greaves of Meditation", "=ds="};
				{ 20, 84985, "", "=q4=Malevolent Gladiator's Armplates of Proficiency", "=ds="};
				{ 21, 84949, "", "=q4=Malevolent Gladiator's Girdle of Accuracy", "=ds="};
				{ 22, 84810, "", "=q4=Malevolent Gladiator's Warboots of Cruelty", "=ds="};
				{ 24, 84974, "", "=q4=Malevolent Gladiator's Bracers of Prowess", "=ds="};
				{ 25, 84951, "", "=q4=Malevolent Gladiator's Clasp of Cruelty", "=ds="};
				{ 26, 84811, "", "=q4=Malevolent Gladiator's Greaves of Alacrity", "=ds="};
				{ 28, 84986, "", "=q4=Malevolent Gladiator's Armplates of Alacrity", "=ds="};	
				{ 29, 84950, "", "=q4=Malevolent Gladiator's Girdle of Prowess", "=ds="};
				{ 30, 84822, "", "=q4=Malevolent Gladiator's Warboots of Alacrity", "=ds="};
			};
			{
				{ 1, 84804, "", "=q4=Malevolent Gladiator's Cape of Cruelty", "=ds=#s4#" },
				{ 2, 84805, "", "=q4=Malevolent Gladiator's Cape of Prowess", "=ds=#s4#" },
				{ 3, 84807, "", "=q4=Malevolent Gladiator's Cloak of Alacrity", "=ds=#s4#" },
				{ 4, 84806, "", "=q4=Malevolent Gladiator's Cloak of Prowess", "=ds=#s4#" },
				{ 5, 84801, "", "=q4=Malevolent Gladiator's Drape of Cruelty", "=ds=#s4#"},
				{ 6, 84802, "", "=q4=Malevolent Gladiator's Drape of Meditation", "=ds=#s4#" },
				{ 7, 84803, "", "=q4=Malevolent Gladiator's Drape of Prowess", "=ds=#s4#" },
				{ 9, 84824, "", "=q4=Malevolent Gladiator's Band of Accuracy", "=ds=#s13#" };
				{ 10, 84823, "", "=q4=Malevolent Gladiator's Band of Cruelty", "=ds=#s13#" };
				{ 11, 84825, "", "=q4=Malevolent Gladiator's Band of Meditation", "=ds=#s13#" };
				{ 12, 84829, "", "=q4=Malevolent Gladiator's Signet of Accuracy", "=ds=#s13#" };
				{ 13, 84828, "", "=q4=Malevolent Gladiator's Signet of Cruelty", "=ds=#s13#" };
				{ 14, 84827, "", "=q4=Malevolent Gladiator's Ring of Accuracy", "=ds=#s13#" };
				{ 15, 84826, "", "=q4=Malevolent Gladiator's Ring of Cruelty", "=ds=#s13#" };
				{ 16, 84892, "", "=q4=Malevolent Gladiator's Choker of Accuracy", "=ds=#s2#" },
				{ 17, 84891, "", "=q4=Malevolent Gladiator's Choker of Proficiency", "=ds=#s2#" },
				{ 18, 84889, "", "=q4=Malevolent Gladiator's Necklace of Proficiency", "=ds=#s2#" },
				{ 19, 84890, "", "=q4=Malevolent Gladiator's Necklace of Prowess", "=ds=#s2#" },
				{ 20, 84886, "", "=q4=Malevolent Gladiator's Pendant of Alacrity", "=ds=#s2#" },
				{ 21, 84887, "", "=q4=Malevolent Gladiator's Pendant of Cruelty", "=ds=#s2#" },
				{ 22, 84888, "", "=q4=Malevolent Gladiator's Pendant of Meditation", "=ds=#s2#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Sha of Anger", 691),
			module = moduleName, instance = "Pandaria",
		};
	};

	AtlasLoot_Data["SalyisWarband"] = {
		["Normal"] = {
			{
				{ 1, 90408, "", "=q4=Free Spirit Hood", "=ds=#s1#, #a1#" },
				{ 2, 90409, "", "=q4=Sky-Sear Cowl", "=ds=#s1#, #a1#" },
				{ 3, 90417, "", "=q4=Robes of Blue Skies", "=ds=#s5#, #a1#" },
				{ 4, 90418, "", "=q4=Robes of the Lightning Rider", "=ds=#s5#, #a1#" },
				{ 5, 90449, "", "=q4=Belt of Detonation", "=ds=#s10#, #a1#" },
				{ 6, 90448, "", "=q4=Cannonfire Cord", "=ds=#s10#, #a1#" },
				{ 7, 90439, "", "=q4=Open Steppe Sandals", "=ds=#s12#, #a1#" },
				{ 8, 90440, "", "=q4=Slippers of Fiery Retribution", "=ds=#s12#, #a1#" },
				{ 10, 90413, "", "=q4=Crest of the Grand Warband", "=ds=#s1#, #a3#" },
				{ 11, 90412, "", "=q4=Helm of Restoring Wind", "=ds=#s1#, #a3#" },
				{ 12, 90422, "", "=q4=Armor of the Single Cloud", "=ds=#s5#, #a3#" },
				{ 13, 90421, "", "=q4=Chain of Unsiezed Skies", "=ds=#s5#, #a3#" },
				{ 16, 90410, "", "=q4=Cap of Wandering Pride", "=ds=#s1#, #a2#" },
				{ 17, 90411, "", "=q4=Facemask of Unrepentant Banditry", "=ds=#s1#, #a2#" },
				{ 18, 90419, "", "=q4=Fireproofed Chestguard", "=ds=#s5#, #a2#" },
				{ 19, 90420, "", "=q4=Flameshot Wrap", "=ds=#s5#, #a2#" },
				{ 20, 90451, "", "=q4=Cannoneer's Gunpowder Carrier", "=ds=#s10#, #a2#" },
				{ 21, 90450, "", "=q4=Carrot-Holder Belt", "=ds=#s10#, #a2#" },
				{ 22, 90442, "", "=q4=Flamefoot Tabi", "=ds=#s12#, #a2#" },
				{ 23, 90441, "", "=q4=Stompdodger Boots", "=ds=#s12#, #a2#" },
				{ 25, 90453, "", "=q4=Girdle of the Raging Rider", "=ds=#s10#, #a3#" },
				{ 26, 90452, "", "=q4=Sparkmaker Girdle", "=ds=#s10#, #a3#" },
				{ 27, 90443, "", "=q4=Burnmender Boots", "=ds=#s12#, #a3#" },
				{ 28, 90444, "", "=q4=Treads of Gentle Nudges", "=ds=#s12#, #a3#" },
			};
			{
				{ 1, 90416, "", "=q4=Crown of Ranging Invasion", "=ds=#s1#, #a4#" },
				{ 2, 90415, "", "=q4=Giantfoot Headguard", "=ds=#s1#, #a4#" },
				{ 3, 90414, "", "=q4=Greathelm of the Monstrous Mushan", "=ds=#s1#, #a4#" },
				{ 4, 90425, "", "=q4=Carapace of Crushed Conviction", "=ds=#s5#, #a4#" },
				{ 5, 90423, "", "=q4=Chestguard of the Unbowed Back", "=ds=#s5#, #a4#" },
				{ 6, 90424, "", "=q4=Ravaging Warrior's Chestplate", "=ds=#s5#, #a4#" },
				{ 7, 90456, "", "=q4=Cord of Crazed Strength", "=ds=#s10#, #a4#" },
				{ 8, 90454, "", "=q4=Girdle of the Galloping Giant", "=ds=#s10#, #a4#" },
				{ 9, 90455, "", "=q4=Greatbelt of Livid Fury", "=ds=#s10#, #a4#" },
				{ 10, 90445, "", "=q4=Firerider Treads", "=ds=#s12#, #a4#" },
				{ 11, 90446, "", "=q4=Silverspur Warboots", "=ds=#s12#, #a4#" },
				{ 12, 90447, "", "=q4=Stompers of Vigorous Stomping", "=ds=#s12#, #a4#" },
				{ 16, 90432, "", "=q4=Hellrider's Choker", "=ds=#s2#" },
				{ 17, 90433, "", "=q4=Mushan Rider's Collar", "=ds=#s2#" },
				{ 18, 90429, "", "=q4=Necklace of Imbued Fury", "=ds=#s2#" },
				{ 19, 90431, "", "=q4=Saddlebinder Links", "=ds=#s2#" },
				{ 20, 90430, "", "=q4=Stomphowl Pendant", "=ds=#s2#" },
				{ 22, 90436, "", "=q4=Circle of Scaled Fury", "=ds=#s13#" },
				{ 23, 90437, "", "=q4=Hereditary Saurok Loop", "=ds=#s13#" },
				{ 24, 90435, "", "=q4=Ring of Wretched Flames", "=ds=#s13#" },
				{ 25, 90438, "", "=q4=Signet of the Bandit Lord", "=ds=#s13#" },
				{ 26, 90434, "", "=q4=Steaming Seal of Flame", "=ds=#s13#" },
				{ 28, 89783, "", "=q4=Son of Galleon's Saddle", "=ds=#e26#" },
				{ 29, 90840, "", "=q4=Marauder's Gleaming Sack of Gold" },
			}
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Salyis's Warband", 725),
			module = moduleName, instance = "Pandaria",
		};
	};

		---------------------------------
		--- Terrace of Endless Spring ---
		---------------------------------

	AtlasLoot_Data["ToESProtectors"] = {
		["RaidFinder"] = {
			{
				{ 1, 86874, "", "=q4=Cloak of Overwhelming Corruption", "=ds=#s4#, #a1#" },
				{ 2, 86875, "", "=q4=Cuffs of the Corrupted Waters", "=ds=#s8#, #a1#" },
				{ 3, 86878, "", "=q4=Asani's Uncleansed Sandals", "=ds=#s12#, #a2#" },
				{ 4, 86877, "", "=q4=Lightning Prisoner's Boots", "=ds=#s12#, #a3#" },
				{ 5, 86876, "", "=q4=Casque of Expelled Corruption", "=ds=#s1#, #a4#" },
				{ 6, 86868, "", "=q4=Bracers of Defiled Earth", "=ds=#s8#, #a4#" },
				{ 7, 86870, "", "=q4=Deepwater Greatboots", "=ds=#s12#, #a4#" },
				{ 16, 86872, "", "=q4=Kaolan's Withering Necklace", "=ds=#s2#" },
				{ 17, 86871, "", "=q4=Shackle of Eversparks", "=ds=#s2#" },
				{ 18, 86869, "", "=q4=Regail's Band of the Endless", "=ds=#s13#" },
				{ 19, 86873, "", "=q4=Watersoul Signet", "=ds=#s13#" },
				{ 21, 86909, "", "=q4=Regail's Crackling Dagger", "=ds=#h3#, #w4#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86316, "", "=q4=Cloak of Overwhelming Corruption", "=ds=#s4#, #a1#" },
				{ 2, 86317, "", "=q4=Cuffs of the Corrupted Waters", "=ds=#s8#, #a1#" },
				{ 3, 86320, "", "=q4=Asani's Uncleansed Sandals", "=ds=#s12#, #a2#" },
				{ 4, 86319, "", "=q4=Lightning Prisoner's Boots", "=ds=#s12#, #a3#" },
				{ 5, 86318, "", "=q4=Casque of Expelled Corruption", "=ds=#s1#, #a4#" },
				{ 6, 86230, "", "=q4=Bracers of Defiled Earth", "=ds=#s8#, #a4#" },
				{ 7, 86232, "", "=q4=Deepwater Greatboots", "=ds=#s12#, #a4#" },
				{ 8, 86234, "", "=q4=Kaolan's Withering Necklace", "=ds=#s2#" },
				{ 9, 86233, "", "=q4=Shackle of Eversparks", "=ds=#s2#" },
				{ 10, 86231, "", "=q4=Regail's Band of the Endless", "=ds=#s13#" },
				{ 11, 86315, "", "=q4=Watersoul Signet", "=ds=#s13#" },
				{ 12, 86390, "", "=q4=Regail's Crackling Dagger", "=ds=#h3#, #w4#" },
				{ 16, 0, "inv_box_04", "=q6="..AL["Elite"], ""};
				{ 17, 90526, "", "=q4=Cloak of Overwhelming Corruption", "=ds=#s4#, #a1#" },
				{ 18, 90524, "", "=q4=Cuffs of the Corrupted Waters", "=ds=#s8#, #a1#" },
				{ 19, 90528, "", "=q4=Asani's Uncleansed Sandals", "=ds=#s12#, #a2#" },
				{ 20, 90518, "", "=q4=Legguards of Failing Purification", "=ds=#s11#, #a2#" },
				{ 21, 90519, "", "=q4=Waterborne Shoulderguards", "=ds=#s3#, #a3#" },
				{ 22, 90529, "", "=q4=Lightning Prisoner's Boots", "=ds=#s12#, #a3#" },
				{ 23, 90530, "", "=q4=Casque of Expelled Corruption", "=ds=#s1#, #a4#" },
				{ 24, 90520, "", "=q4=Bracers of Defiled Earth", "=ds=#s8#, #a4#" },
				{ 25, 90521, "", "=q4=Deepwater Greatboots", "=ds=#s12#, #a4#" },
				{ 26, 90523, "", "=q4=Kaolan's Withering Necklace", "=ds=#s2#" },
				{ 27, 90522, "", "=q4=Shackle of Eversparks", "=ds=#s2#" },
				{ 28, 90517, "", "=q4=Regail's Band of the Endless", "=ds=#s13#" },
				{ 29, 90525, "", "=q4=Watersoul Signet", "=ds=#s13#" },
				{ 30, 90527, "", "=q4=Regail's Crackling Dagger", "=ds=#h3#, #w4#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 87150, "", "=q4=Cloak of Overwhelming Corruption", "=ds=#s4#, #a1#" },
				{ 2, 87149, "", "=q4=Cuffs of the Corrupted Waters", "=ds=#s8#, #a1#" },
				{ 3, 87153, "", "=q4=Asani's Uncleansed Sandals", "=ds=#s12#, #a2#" },
				{ 4, 87154, "", "=q4=Lightning Prisoner's Boots", "=ds=#s12#, #a3#" },
				{ 5, 87155, "", "=q4=Casque of Expelled Corruption", "=ds=#s1#, #a4#" },
				{ 6, 87145, "", "=q4=Bracers of Defiled Earth", "=ds=#s8#, #a4#" },
				{ 7, 87146, "", "=q4=Deepwater Greatboots", "=ds=#s12#, #a4#" },
				{ 8, 87148, "", "=q4=Kaolan's Withering Necklace", "=ds=#s2#" },
				{ 9, 87147, "", "=q4=Shackle of Eversparks", "=ds=#s2#" },
				{ 10, 87144, "", "=q4=Regail's Band of the Endless", "=ds=#s13#" },
				{ 11, 87151, "", "=q4=Watersoul Signet", "=ds=#s13#" },
				{ 12, 87152, "", "=q4=Regail's Crackling Dagger", "=ds=#h3#, #w4#" },
				{ 16, 0, "inv_box_04", "=q6="..AL["Elite"], ""};
				{ 17, 90512, "", "=q4=Cloak of Overwhelming Corruption", "=ds=#s4#, #a1#" },
				{ 18, 90510, "", "=q4=Cuffs of the Corrupted Waters", "=ds=#s8#, #a1#" },
				{ 19, 90514, "", "=q4=Asani's Uncleansed Sandals", "=ds=#s12#, #a2#" },
				{ 20, 90504, "", "=q4=Legguards of Failing Purification", "=ds=#s11#, #a2#" },
				{ 21, 90505, "", "=q4=Waterborne Shoulderguards", "=ds=#s3#, #a3#" },
				{ 22, 90515, "", "=q4=Lightning Prisoner's Boots", "=ds=#s12#, #a3#" },
				{ 23, 90516, "", "=q4=Casque of Expelled Corruption", "=ds=#s1#, #a4#" },
				{ 24, 90506, "", "=q4=Bracers of Defiled Earth", "=ds=#s8#, #a4#" },
				{ 25, 90507, "", "=q4=Deepwater Greatboots", "=ds=#s12#, #a4#" },
				{ 26, 90509, "", "=q4=Kaolan's Withering Necklace", "=ds=#s2#" },
				{ 27, 90508, "", "=q4=Shackle of Eversparks", "=ds=#s2#" },
				{ 28, 90503, "", "=q4=Regail's Band of the Endless", "=ds=#s13#" },
				{ 29, 90511, "", "=q4=Watersoul Signet", "=ds=#s13#" },
				{ 30, 90513, "", "=q4=Regail's Crackling Dagger", "=ds=#h3#, #w4#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Protectors of the Endless", 683),
			module = moduleName, instance = "TerraceofEndlessSpring",
		};
	};

	AtlasLoot_Data["ToESTsulong"] = {
		["RaidFinder"] = {
			{
				{ 1, 86883, "", "=q4=Daybreak Drape", "=ds=#s4#, #a1#" },
				{ 2, 86884, "", "=q4=Belt of Embodied Terror", "=ds=#s10#, #a1#" },
				{ 3, 86895, "", "=q4=Healer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 4, 86896, "", "=q4=Invoker's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 5, 86897, "", "=q4=Sorcerer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 6, 86888, "", "=q4=Sandals of the Blackest Night", "=ds=#s12#, #a1#" },
				{ 7, 86899, "", "=q4=Stalker's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 8, 86898, "", "=q4=Weaver's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 9, 86882, "", "=q4=Sunwrought Mail Hauberk", "=ds=#s5#, #a3#" },
				{ 10, 86900, "", "=q4=Binder's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 11, 86901, "", "=q4=Ranger's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 12, 86902, "", "=q4=Mender's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 13, 86904, "", "=q4=Patroller's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 14, 86903, "", "=q4=Protector's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 15, 86887, "", "=q4=Sollerets of Instability", "=ds=#s12#, #a4#" },
				{ 16, 86880, "", "=q4=Dread Shadow Ring", "=ds=#s13#" },
				{ 17, 86885, "", "=q4=Spirits of the Sun", "=ds=#s14#" },
				{ 18, 86881, "", "=q4=Stuff of Nightmares", "=ds=#s14#" },
				{ 20, 86886, "", "=q4=Loshan, Terror Incarnate", "=ds=#h1#, #w10#" },
				{ 21, 86879, "", "=q4=Gao-Rei, Staff of the Legendary Protector", "=ds=#w9#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86325, "", "=q4=Daybreak Drape", "=ds=#s4#, #a1#" },
				{ 2, 86326, "", "=q4=Belt of Embodied Terror", "=ds=#s10#, #a1#" },
				{ 3, 86337, "", "=q4=Healer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 4, 86338, "", "=q4=Invoker's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 5, 86339, "", "=q4=Sorcerer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 6, 86330, "", "=q4=Sandals of the Blackest Night", "=ds=#s12#, #a1#" },
				{ 7, 86341, "", "=q4=Stalker's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 8, 86340, "", "=q4=Weaver's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 9, 86324, "", "=q4=Sunwrought Mail Hauberk", "=ds=#s5#, #a3#" },
				{ 10, 86342, "", "=q4=Binder's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 11, 86343, "", "=q4=Ranger's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 12, 86383, "", "=q4=Mender's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 13, 86385, "", "=q4=Patroller's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 14, 86384, "", "=q4=Protector's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 15, 86329, "", "=q4=Sollerets of Instability", "=ds=#s12#, #a4#" },
				{ 16, 86322, "", "=q4=Dread Shadow Ring", "=ds=#s13#" },
				{ 17, 86327, "", "=q4=Spirits of the Sun", "=ds=#s14#" },
				{ 18, 86323, "", "=q4=Stuff of Nightmares", "=ds=#s14#" },
				{ 20, 86328, "", "=q4=Loshan, Terror Incarnate", "=ds=#h1#, #w10#" },
				{ 21, 86321, "", "=q4=Gao-Rei, Staff of the Legendary Protector", "=ds=#w9#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 87159, "", "=q4=Daybreak Drape", "=ds=#s4#, #a1#" },
				{ 2, 87161, "", "=q4=Belt of Embodied Terror", "=ds=#s10#, #a1#" },
				{ 3, 87178, "", "=q4=Healer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 4, 87177, "", "=q4=Invoker's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 5, 87179, "", "=q4=Sorcerer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 6, 87162, "", "=q4=Sandals of the Blackest Night", "=ds=#s12#, #a1#" },
				{ 7, 87180, "", "=q4=Stalker's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 8, 87181, "", "=q4=Weaver's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 9, 87157, "", "=q4=Sunwrought Mail Hauberk", "=ds=#s5#, #a3#" },
				{ 10, 87183, "", "=q4=Binder's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 11, 87182, "", "=q4=Ranger's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 12, 87184, "", "=q4=Mender's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 13, 87186, "", "=q4=Patroller's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 14, 87185, "", "=q4=Protector's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 15, 87165, "", "=q4=Sollerets of Instability", "=ds=#s12#, #a4#" },
				{ 16, 87158, "", "=q4=Dread Shadow Ring", "=ds=#s13#" },
				{ 17, 87163, "", "=q4=Spirits of the Sun", "=ds=#s14#" },
				{ 18, 87160, "", "=q4=Stuff of Nightmares", "=ds=#s14#" },
				{ 20, 87164, "", "=q4=Loshan, Terror Incarnate", "=ds=#h1#, #w10#" },
				{ 21, 87156, "", "=q4=Gao-Rei, Staff of the Legendary Protector", "=ds=#w9#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Tsulong", 742),
			module = moduleName, instance = "TerraceofEndlessSpring",
		};
	};

	AtlasLoot_Data["ToESLeiShi"] = {
		["RaidFinder"] = {
			{
				{ 1, 86892, "", "=q4=Robes of the Unknown Fear", "=ds=#s5#, #a1#" },
				{ 2, 86895, "", "=q4=Healer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 3, 86896, "", "=q4=Invoker's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 4, 86897, "", "=q4=Sorcerer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 5, 86899, "", "=q4=Stalker's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 6, 86898, "", "=q4=Weaver's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 7, 86900, "", "=q4=Binder's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 8, 86901, "", "=q4=Ranger's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 9, 86891, "", "=q4=Cuirass of the Animated Protector", "=ds=#s5#, #a4#" },
				{ 10, 86902, "", "=q4=Mender's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 11, 86904, "", "=q4=Patroller's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 12, 86903, "", "=q4=Protector's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 16, 89277, "", "=q4=Shoulders of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89278, "", "=q4=Shoulders of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89276, "", "=q4=Shoulders of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 86894, "", "=q4=Darkmist Vortex", "=ds=#s14#" },
				{ 21, 86890, "", "=q4=Terror in the Mists", "=ds=#s14#" },
				{ 23, 86910, "", "=q4=Spiritsever", "=ds=#h1#, #w4#" },
				{ 24, 86893, "", "=q4=Jin'ya, Orb of the Waterspeaker", "=ds=#w9#" },
				{ 25, 86889, "", "=q4=Taoren, the Soul Burner", "=ds=#w5#" },
			};
		};
		["Normal"] = {
			{
				{ 1, 86334, "", "=q4=Robes of the Unknown Fear", "=ds=#s5#, #a1#" },
				{ 2, 86337, "", "=q4=Healer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 3, 86338, "", "=q4=Invoker's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 4, 86339, "", "=q4=Sorcerer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 5, 86341, "", "=q4=Stalker's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 6, 86340, "", "=q4=Weaver's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 7, 86342, "", "=q4=Binder's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 8, 86343, "", "=q4=Ranger's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 9, 86333, "", "=q4=Cuirass of the Animated Protector", "=ds=#s5#, #a4#" },
				{ 10, 86383, "", "=q4=Mender's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 11, 86385, "", "=q4=Patroller's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 12, 86384, "", "=q4=Protector's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 16, 89246, "", "=q4=Shoulders of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89247, "", "=q4=Shoulders of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89248, "", "=q4=Shoulders of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 86336, "", "=q4=Darkmist Vortex", "=ds=#s14#" },
				{ 21, 86332, "", "=q4=Terror in the Mists", "=ds=#s14#" },
				{ 23, 86391, "", "=q4=Spiritsever", "=ds=#h1#, #w4#" },
				{ 24, 86335, "", "=q4=Jin'ya, Orb of the Waterspeaker", "=ds=#w9#" },
				{ 25, 86331, "", "=q4=Taoren, the Soul Burner", "=ds=#w5#" },
			};
		};
		["Heroic"] = {
			{
				{ 1, 87169, "", "=q4=Robes of the Unknown Fear", "=ds=#s5#, #a1#" },
				{ 2, 87178, "", "=q4=Healer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 3, 87177, "", "=q4=Invoker's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 4, 87179, "", "=q4=Sorcerer's Belt of Final Winter", "=ds=#s10#, #a1#" },
				{ 5, 87180, "", "=q4=Stalker's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 6, 87181, "", "=q4=Weaver's Cord of Eternal Autumn", "=ds=#s10#, #a2#" },
				{ 7, 87183, "", "=q4=Binder's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 8, 87182, "", "=q4=Ranger's Chain of Unending Summer", "=ds=#s10#, #a3#" },
				{ 9, 87171, "", "=q4=Cuirass of the Animated Protector", "=ds=#s5#, #a4#" },
				{ 10, 87184, "", "=q4=Mender's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 11, 87186, "", "=q4=Patroller's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 12, 87185, "", "=q4=Protector's Girdle of Endless Spring", "=ds=#s10#, #a4#" },
				{ 16, 89262, "", "=q4=Shoulders of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89263, "", "=q4=Shoulders of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89261, "", "=q4=Shoulders of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
				{ 20, 87172, "", "=q4=Darkmist Vortex", "=ds=#s14#" },
				{ 21, 87167, "", "=q4=Terror in the Mists", "=ds=#s14#" },
				{ 23, 87166, "", "=q4=Spiritsever", "=ds=#h1#, #w4#" },
				{ 24, 87170, "", "=q4=Jin'ya, Orb of the Waterspeaker", "=ds=#w9#" },
				{ 25, 87168, "", "=q4=Taoren, the Soul Burner", "=ds=#w5#" },
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Lei Shi", 729),
			module = moduleName, instance = "TerraceofEndlessSpring",
		};
	};

	AtlasLoot_Data["ToESShaofFear"] = {
		["RaidFinder"] = {
			{
				{ 1, 86908, "", "=q4=Dreadwoven Leggings of Failure", "=ds=#s11#, #a1#" },
				{ 3, 86907, "", "=q4=Essence of Terror", "=ds=#s14#" },
				{ 5, 86906, "", "=q4=Kilrak, Jaws of Terror", "=ds=#h1#, #w10#" },
				{ 6, 86905, "", "=q4=Shin'ka, Execution of Dominion", "=ds=#h2#, #w1#" },
				{ 16, 89274, "", "=q4=Helm of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89275, "", "=q4=Helm of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89273, "", "=q4=Helm of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
			};
		};
		["Normal"] = {
			{
				{ 1, 86389, "", "=q4=Dreadwoven Leggings of Failure", "=ds=#s11#, #a1#" },
				{ 3, 86388, "", "=q4=Essence of Terror", "=ds=#s14#" },
				{ 5, 86387, "", "=q4=Kilrak, Jaws of Terror", "=ds=#h1#, #w10#" },
				{ 6, 86386, "", "=q4=Shin'ka, Execution of Dominion", "=ds=#h2#, #w1#" },
				{ 16, 89235, "", "=q4=Helm of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89236, "", "=q4=Helm of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89234, "", "=q4=Helm of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
			};
		};
		["Heroic"] = {
			{
				{ 1, 87174, "", "=q4=Dreadwoven Leggings of Failure", "=ds=#s11#, #a1#" },
				{ 3, 87175, "", "=q4=Essence of Terror", "=ds=#s14#" },
				{ 5, 87173, "", "=q4=Kilrak, Jaws of Terror", "=ds=#h1#, #w10#" },
				{ 6, 87176, "", "=q4=Shin'ka, Execution of Dominion", "=ds=#h2#, #w1#" },
				{ 16, 89259, "", "=q4=Helm of the Shadowy Conqueror", "=ds=#e15#, #m40#"};
				{ 17, 89260, "", "=q4=Helm of the Shadowy Protector", "=ds=#e15#, #m40#"};
				{ 18, 89258, "", "=q4=Helm of the Shadowy Vanquisher", "=ds=#e15#, #m40#"};
			};
		};
		info = {
			name = AtlasLoot:EJ_GetBossName("Sha of Fear", 709),
			module = moduleName, instance = "TerraceofEndlessSpring",
		};
	};

	----------------
	--- Factions ---
	----------------

		----------------------------------
		--- Order of the Cloud Serpent ---
		----------------------------------

	AtlasLoot_Data["OrderCloudSerpent"] = {
		["Normal"] = {
			{
				{ 1, 0, "achievement_faction_serpentriders", "=q6=#r3#", ""};
				{ 2, 83845, "", "=q1=Design: Jade Panther", "=ds=#p12# (600)"};
				{ 3, 83830, "", "=q1=Design: Sunstone Panther", "=ds=#p12# (600)"};
				{ 5, 0, "achievement_faction_serpentriders", "=q6=#r4#", ""};
				{ 6, 83931, "", "=q1=Design: Ruby Panther", "=ds=#p12# (600)"};
				{ 7, 83932, "", "=q1=Design: Sapphire Panther", "=ds=#p12# (600)"};
				{ 8, 89222, "", "=q1=Cloud Ring", "=ds=#m20#"};
				{ 9, 89225, "", "=q1=Finish Line", "=ds=#m20#"};
				{ 10, 89227, "", "=q1=Floating Finish Line", "=ds=#m20#"};
				{ 11, 89224, "", "=q1=Floating Racing Flag", "=ds=#m20#"};
				{ 12, 89223, "", "=q1=Racing Flag", "=ds=#m20#"};
				{ 16, 0, "achievement_faction_serpentriders", "=q6=#r5#", ""};
				{ 17, 85430, "", "=q4=Reins of the Azure Cloud Serpent", "=ds=#e27#"};
				{ 18, 85429, "", "=q4=Reins of the Golden Cloud Serpent", "=ds=#e27#"};
				{ 19, 79802, "", "=q4=Reins of the Jade Cloud Serpent", "=ds=#e27#"};
				{ 20, 89796, "", "=q3=Order of the Cloud Serpent Tabard", "=ds=#s7#"};
				{ 21, 83877, "", "=q1=Design: Jeweled Onyx Panther", "=ds=#p12# (600)"};
			};
		};
		info = {
			name = BabbleFaction["Order of the Cloud Serpent"],
			module = moduleName, menu = "REPMENU",
		};
	}

		-----------------
		--- Shado-Pan ---
		-----------------

	AtlasLoot_Data["ShadoPan"] = {
		["Normal"] = {
			{
				{ 1, 0, "achievement_faction_shadopan", "=q6=#r3#", ""};
				{ 2, 88995, "", "=q3=Shado-Pan Dragon Gun", "=ds=#s14#"};
				{ 3, 89302, "", "=q1=Stack of Bamboo", "=ds=#e18#"};
				{ 4, 89303, "", "=q1=Stack of Stone Blocks", "=ds=#e18#"};
				{ 5, 89301, "", "=q1=Stack of Wooden Boards", "=ds=#e18#"};
				{ 7, 0, "achievement_faction_shadopan", "=q6=#r4#", ""};
				{ 8, 84584, "", "=q3=Formula: Enchant Weapon - Dancing Steel", "=ds=#p4# (600)"};
				{ 9, 84583, "", "=q3=Formula: Enchant Weapon - Jade Spirit", "=ds=#p4# (600)"};
				{ 10, 84580, "", "=q3=Formula: Enchant Weapon - River's Song", "=ds=#p4# (600)"};
				{ 16, 0, "achievement_faction_shadopan", "=q6=#r5#", ""};
				{ 17, 89307, "", "=q4=Reins of the Blue Shado-Pan Riding Tiger", "=ds=#e26#"};
				{ 18, 89305, "", "=q4=Reins of the Green Shado-Pan Riding Tiger", "=ds=#e26#"};
				{ 19, 89306, "", "=q4=Reins of the Red Shado-Pan Riding Tiger", "=ds=#e26#"};
				{ 20, 89801, "", "=q3=Replica Shado-Pan Helmet", "=ds=#s1#, #a1#"};
				{ 21, 90844, "", "=q3=Replica Shado-Pan Helmet", "=ds=#s1#, #a2#"};
				{ 22, 90845, "", "=q3=Replica Shado-Pan Helmet", "=ds=#s1#, #a3#"};
				{ 23, 90846, "", "=q3=Replica Shado-Pan Helmet", "=ds=#s1#, #a4#"};
				{ 24, 89800, "", "=q3=Shado-Pan Tabard", "=ds=#s7#"};
			};
		};
		info = {
			name = BabbleFaction["Shado-Pan"],
			module = moduleName, menu = "REPMENU",
		};
	}

		-------------------
		--- The Anglers ---
		-------------------

	AtlasLoot_Data["Anglers"] = {
		["Normal"] = {
			{
				{ 1, 0, "achievement_faction_anglers", "=q6=#r2#", ""};
				{ 2, 85505, "", "=q2=Recipe: Krasarang Fritters", "=ds=#p3# (525)"};
				{ 3, 85502, "", "=q2=Recipe: Viseclaw Soup", "=ds=#p3# (525)"};
				{ 5, 0, "achievement_faction_anglers", "=q6=#r3#", ""};
				{ 6, 85447, "", "=q3=Tiny Goldfish", "=ds=#e13#"};
				{ 7, 85500, "", "=q3=Anglers Fishing Raft", "=ds=#p24# (525)"};
				{ 8, 84660, "", "=q2=Pandaren Fishing Pole", "=ds=#e20#"};
				{ 10, 0, "achievement_faction_anglers", "=q6=#r4#", ""};
				{ 11, 84661, "", "=q3=Dragon Fishing Pole", "=ds=#e20#"};
				{ 12, 88535, "", "=q3=Sharpened Tuskarr Spear", "=ds=#h1#"};
				{ 16, 0, "achievement_faction_anglers", "=q6=#r5#", ""};
				{ 17, 81354, "", "=q4=Reins of the Azure Water Strider", "=ds=#e12#"};
				{ 18, 87791, "", "=q4=Reins of the Crimson Water Strider", "=ds=#e12#"};
				{ 19, 87794, "", "=q4=Reins of the Golden Water Strider", "=ds=#e12#"};
				{ 20, 87793, "", "=q4=Reins of the Jade Water Strider", "=ds=#e12#"};
				{ 21, 87792, "", "=q4=Reins of the Orange Water Strider", "=ds=#e12#"};
				{ 22, 89401, "", "=q3=Anglers Tabard", "=ds=#s7#"};
				{ 24, 0, "inv_box_04", "=q6=Nat Pagle", ""};
				{ 25, 88563, "", "=q7=Nat's Fishing Journal", "=ds=#r4#"};
				{ 26, 88710, "", "=q4=Nat's Hat", "=ds=#r5#"};
			};
		};
		info = {
			name = BabbleFaction["The Anglers"],
			module = moduleName, menu = "REPMENU",
		};
	}

		-----------------------------
		--- The August Celestials ---
		-----------------------------

	AtlasLoot_Data["AugustCelestials"] = {
		["Normal"] = {
			{
				{ 1, 0, "achievement_faction_celestials", "=q6=#r3#", ""};
				{ 2, 89124, "", "=q2=Celestial Offering", "=ds=#m20#"};
				{ 4, 0, "achievement_faction_celestials", "=q6=#r4#", ""};
				{ 5, 84561, "", "=q3=Formula: Enchant Bracer - Exceptional Strength", "=ds=#p4# (600)"};
				{ 6, 84557, "", "=q3=Formula: Enchant Bracer - Greater Agility", "=ds=#p4# (600)"};
				{ 7, 84559, "", "=q3=Formula: Enchant Bracer - Super Intellect", "=ds=#p4# (600)"};
				{ 9, 0, "achievement_faction_celestials", "=q6=#r5#", ""};
				{ 10, 89304, "", "=q4=Reins of the Thundering August Cloud Serpent", "=ds=#e27#"};
				{ 11, 89799, "", "=q3=August Celestials Tabard", "=ds=#s7#"};
				{ 12, 86377, "", "=q1=Pattern: Royal Satchel", "=ds=#p8# (600)"};
			};
		};
		info = {
			name = BabbleFaction["The August Celestials"],
			module = moduleName, menu = "REPMENU",
		};
	}

		------------------
		--- The Klaxxi ---
		------------------

	AtlasLoot_Data["Klaxxi"] = {
		["Normal"] = {
			{
				{ 1, 0, "achievement_faction_klaxxi", "=q6=#r3#", ""};
				{ 2, 83791, "", "=q1=Plans: Breastplate of Ancient Steel", "=ds=#p2# (600)"};
				{ 3, 83792, "", "=q1=Plans: Gauntlets of Ancient Steel", "=ds=#p2# (600)"};
				{ 4, 90531, "", "=q1=Plans: Ghost Iron Shield Spike", "=ds=#p2# (600)"};
				{ 5, 83787, "", "=q1=Plans: Ghost Reaver's Breastplate", "=ds=#p2# (600)"};
				{ 6, 83788, "", "=q1=Plans: Ghost Reaver's Gauntlets", "=ds=#p2# (600)"};
				{ 7, 84196, "", "=q1=Plans: Living Steel Belt Buckle", "=ds=#p2# (600)"};
				{ 8, 83789, "", "=q1=Plans: Living Steel Breastplate", "=ds=#p2# (600)"};
				{ 9, 83790, "", "=q1=Plans: Living Steel Gauntlets", "=ds=#p2# (600)"};
				{ 10, 90532, "", "=q1=Plans: Living Steel Weapon Chain", "=ds=#p2# (600)"};
				{ 11, 84197, "", "=q1=Plans: Masterwork Forgewire Axe", "=ds=#p2# (600)"};
				{ 12, 84198, "", "=q1=Plans: Masterwork Ghost Shard", "=ds=#p2# (600)"};
				{ 13, 84200, "", "=q1=Plans: Masterwork Ghost-Forged Blade", "=ds=#p2# (600)"};
				{ 14, 84217, "", "=q1=Plans: Masterwork Phantasmal Hammer", "=ds=#p2# (600)"};
				{ 15, 84218, "", "=q1=Plans: Masterwork Spiritblade Decimator", "=ds=#p2# (600)"};
				{ 16, 0, "achievement_faction_klaxxi", "=q6=#r5#", ""};
				{ 17, 85262, "", "=q4=Reins of the Amber Scorpion", "=ds=#e26#"};
				{ 18, 89393, "", "=q3=Amber Slicer of Klaxxi-vess", "=ds=#h1#, #w4#"};
				{ 19, 89392, "", "=q3=Amber Spine of Klaxxi-vess", "=ds=#h1#, #w4#"};
				{ 20, 89396, "", "=q3=Amber Espada of Klaxxi-vess", "=ds=#h1#, #w10#"};
				{ 21, 89397, "", "=q3=Amber Saber of Klaxxi-vess", "=ds=#h1#, #w10#"};
				{ 22, 89398, "", "=q3=Amber Flammard of Klaxxi-vess", "=ds=#h2#, #w10#"};
				{ 23, 89400, "", "=q3=Amber Sledge of Klaxxi-vess", "=ds=#h1#, #w6#"};
				{ 24, 89394, "", "=q3=Amber Spear of Klaxxi-vess", "=ds=#w7#"};
				{ 25, 89395, "", "=q3=Amber Scythe of Klaxxi-vess", "=ds=#w9#"};
				{ 26, 89399, "", "=q3=Amber Sprayer of Klaxxi-vess", "=ds=#w5#"};
				{ 27, 89798, "", "=q3=Klaxxi Tabard", "=ds=#s7#"};
			};
		};
		info = {
			name = BabbleFaction["The Klaxxi"],
			module = moduleName, menu = "REPMENU",
		};
	}

		--------------------------------------
		--- The Lorewalkers / Golden Lotus ---
		--------------------------------------

	AtlasLoot_Data["LorewalkersGoldenLotus"] = {
		["Normal"] = {
			{
				{ 2, 0, "achievement_faction_goldenlotus", "=q6=#r5#", "=ds="..BabbleFaction["Golden Lotus"]};
				{ 3, 87781, "", "=q4=Reins of the Azure Riding Crane", "=ds=#e26#"};
				{ 4, 87782, "", "=q4=Reins of the Golden Riding Crane", "=ds=#e26#"};
				{ 5, 87783, "", "=q4=Reins of the Regal Riding Crane", "=ds=#e26#"};
				{ 6, 89797, "", "=q3=Golden Lotus Tabard", "=ds=#s7#"};
				{ 17, 0, "achievement_faction_lorewalkers", "=q6=#r5#", "=ds="..BabbleFaction["The Lorewalkers"]};
				{ 18, 89363, "", "=q3=Disc of the Red Flying Cloud", "=ds=#e27#"};
				{ 19, 89795, "", "=q3=Lorewalkers Tabard", "=ds=#s7#"};
				{ 20, 87548, "", "=q2=Lorewalker's Lodestone", "=ds=#m20#"};
				{ 21, 87549, "", "=q2=Lorewalker's Map", "=ds=#m20#"};
			};
		};
		info = {
			name = BabbleFaction["Golden Lotus"].." / "..BabbleFaction["The Lorewalkers"],
			module = moduleName, menu = "REPMENU",
		};
	}

		-------------------
		--- The Tillers ---
		-------------------

	AtlasLoot_Data["Tillers"] = {
		["Normal"] = {
			{
				{ 1, 0, "achievement_faction_tillers", "=q6=#r4#", ""};
				{ 2, 89869, "", "=q3=Pandaren Scarecrow", "=ds="};
				{ 3, 85268, "", "=q2=Spring Blossom Sapling", "=ds="};
				{ 4, 85269, "", "=q2=Winter Blossom Sapling", "=ds="};
				{ 5, 85216, "", "=q1=Enigma Seed", "=ds="};
				{ 6, 85217, "", "=q1=Magebulb Seed", "=ds="};
				{ 7, 89202, "", "=q1=Raptorleaf Seed", "=ds="};
				{ 8, 85215, "", "=q1=Snakeroot Seed", "=ds="};
				{ 9, 89233, "", "=q1=Songbell Seed", "=ds="};
				{ 16, 0, "achievement_faction_tillers", "=q6=#r5#", ""};
				{ 17, 89391, "", "=q4=Reins of the Black Riding Goat", "=ds=#e26#"};
				{ 18, 89362, "", "=q4=Reins of the Brown Riding Goat", "=ds=#e26#"};
				{ 19, 89390, "", "=q4=Reins of the White Riding Goat", "=ds=#e26#"};
				{ 20, 90175, "", "=q3=Gin-Ji Knife Set", "=ds=#m20#"};
				{ 21, 89784, "", "=q3=Tillers Tabard", "=ds=#s7#"};
				{ 22, 74657, "", "=q2=Recipe: Spicy Salmon", "=ds=#p3# (500)"};
				{ 23, 74658, "", "=q2=Recipe: Spicy Vegetable Chips", "=ds=#p3# (500)"};
				{ 24, 89197, "", "=q1=Windshear Cactus Seed", "=ds="};
			};
		};
		info = {
			name = BabbleFaction["The Tillers"],
			module = moduleName, menu = "REPMENU",
		};
	}

	-----------
	--- PvP ---
	-----------

		----------------------
		--- PvP Armor Sets ---
		----------------------


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

	--------------------------
	--- Sets & Collections ---
	--------------------------

		--------------------------
		--- Tier 14 Sets (T14) ---
		--------------------------

	AtlasLoot_Data["T14DeathKnightDPS"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_deathknight_frostpresence", "=q6=#t14s10_1#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86676, "", "=q4=Helmet of the Lost Catacomb", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86674, "", "=q4=Pauldrons of the Lost Catacomb", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86678, "", "=q4=Breastplate of the Lost Catacomb", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86677, "", "=q4=Gauntlets of the Lost Catacomb", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86675, "", "=q4=Greaves of the Lost Catacomb", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_deathknight_frostpresence", "=q6=#t14s10_1#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85336, "", "=q4=Helmet of the Lost Catacomb", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85334, "", "=q4=Pauldrons of the Lost Catacomb", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85338, "", "=q4=Breastplate of the Lost Catacomb", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85337, "", "=q4=Gauntlets of the Lost Catacomb", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85335, "", "=q4=Greaves of the Lost Catacomb", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_deathknight_frostpresence", "=q6=#t14s10_1#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 86915, "", "=q4=Helmet of the Lost Catacomb", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 86917, "", "=q4=Pauldrons of the Lost Catacomb", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 86913, "", "=q4=Breastplate of the Lost Catacomb", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 86914, "", "=q4=Gauntlets of the Lost Catacomb", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 86916, "", "=q4=Greaves of the Lost Catacomb", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"].." - "..AL["DPS"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14DeathKnightTank"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_deathknight_bloodpresence", "=q6=#t14s10_2#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86656, "", "=q4=Faceguard of the Lost Catacomb", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86654, "", "=q4=Shoulderguards of the Lost Catacomb", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86658, "", "=q4=Chestguard of the Lost Catacomb", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86657, "", "=q4=Handguards of the Lost Catacomb", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86655, "", "=q4=Legguards of the Lost Catacomb", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_deathknight_bloodpresence", "=q6=#t14s10_2#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85316, "", "=q4=Faceguard of the Lost Catacomb", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85314, "", "=q4=Shoulderguards of the Lost Catacomb", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85318, "", "=q4=Chestguard of the Lost Catacomb", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85317, "", "=q4=Handguards of the Lost Catacomb", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85315, "", "=q4=Legguards of the Lost Catacomb", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_deathknight_bloodpresence", "=q6=#t14s10_2#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 86920, "", "=q4=Faceguard of the Lost Catacomb", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 86922, "", "=q4=Shoulderguards of the Lost Catacomb", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 86918, "", "=q4=Chestguard of the Lost Catacomb", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 86919, "", "=q4=Handguards of the Lost Catacomb", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 86921, "", "=q4=Legguards of the Lost Catacomb", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"].." - "..AL["Tanking"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14DruidRestoration"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_nature_healingtouch", "=q6=#t14s1_1#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86697, "", "=q4=Eternal Blossom Helm", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86694, "", "=q4=Eternal Blossom Mantle", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86695, "", "=q4=Eternal Blossom Robes", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86698, "", "=q4=Eternal Blossom Handwraps", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86696, "", "=q4=Eternal Blossom Legwraps", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_nature_healingtouch", "=q6=#t14s1_1#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85357, "", "=q4=Eternal Blossom Helm", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85354, "", "=q4=Eternal Blossom Mantle", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85355, "", "=q4=Eternal Blossom Robes", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85358, "", "=q4=Eternal Blossom Handwraps", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85356, "", "=q4=Eternal Blossom Legwraps", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_nature_healingtouch", "=q6=#t14s1_1#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 86929, "", "=q4=Eternal Blossom Helm", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 86932, "", "=q4=Eternal Blossom Mantle", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 86931, "", "=q4=Eternal Blossom Robes", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 86928, "", "=q4=Eternal Blossom Handwraps", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 86930, "", "=q4=Eternal Blossom Legwraps", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["DRUID"].." - "..AL["Restoration"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14DruidDPS"] = {
		["Normal"] = {
			{
				{ 1, 0, "ability_racial_bearform", "=q6=#t14s1_2#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86651, "", "=q4=Eternal Blossom Headpiece", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86649, "", "=q4=Eternal Blossom Spaulders", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86653, "", "=q4=Eternal Blossom Raiment", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86652, "", "=q4=Eternal Blossom Grips", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86650, "", "=q4=Eternal Blossom Legguards", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "ability_racial_bearform", "=q6=#t14s1_2#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85311, "", "=q4=Eternal Blossom Headpiece", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85309, "", "=q4=Eternal Blossom Spaulders", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85313, "", "=q4=Eternal Blossom Raiment", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85312, "", "=q4=Eternal Blossom Grips", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85310, "", "=q4=Eternal Blossom Legguards", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "ability_racial_bearform", "=q6=#t14s1_2#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 86925, "", "=q4=Eternal Blossom Headpiece", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 86927, "", "=q4=Eternal Blossom Spaulders", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 86923, "", "=q4=Eternal Blossom Raiment", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 86924, "", "=q4=Eternal Blossom Grips", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 86926, "", "=q4=Eternal Blossom Legguards", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["DRUID"].." - "..AL["DPS"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14DruidBalance"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_nature_starfall", "=q6=#t14s1_3#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86647, "", "=q4=Eternal Blossom Cover", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86644, "", "=q4=Eternal Blossom Shoulderwraps", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86645, "", "=q4=Eternal Blossom Vestment", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86648, "", "=q4=Eternal Blossom Gloves", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86646, "", "=q4=Eternal Blossom Leggings", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_nature_starfall", "=q6=#t14s1_3#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85307, "", "=q4=Eternal Blossom Cover", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85304, "", "=q4=Eternal Blossom Shoulderwraps", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85305, "", "=q4=Eternal Blossom Vestment", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85308, "", "=q4=Eternal Blossom Gloves", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85306, "", "=q4=Eternal Blossom Leggings", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_nature_starfall", "=q6=#t14s1_3#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 86934, "", "=q4=Eternal Blossom Cover", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 86937, "", "=q4=Eternal Blossom Shoulderwraps", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 86936, "", "=q4=Eternal Blossom Vestment", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 86933, "", "=q4=Eternal Blossom Gloves", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 86935, "", "=q4=Eternal Blossom Leggings", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["DRUID"].." - "..AL["Balance"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14DruidTank"] = {
		["Normal"] = {
			{
				{ 1, 0, "ability_racial_bearform", "=q6=#t14s1_4#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86721, "", "=q4=Eternal Blossom Headguard", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86723, "", "=q4=Eternal Blossom Shoulderguards", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86719, "", "=q4=Eternal Blossom Tunic", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86920, "", "=q4=Eternal Blossom Handguards", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86922, "", "=q4=Eternal Blossom Breeches", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "ability_racial_bearform", "=q6=#t14s1_4#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85381, "", "=q4=Eternal Blossom Headguard", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85383, "", "=q4=Eternal Blossom Shoulderguards", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85379, "", "=q4=Eternal Blossom Tunic", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85380, "", "=q4=Eternal Blossom Handguards", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85382, "", "=q4=Eternal Blossom Breeches", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "ability_racial_bearform", "=q6=#t14s1_4#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 86940, "", "=q4=Eternal Blossom Headguard", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 86942, "", "=q4=Eternal Blossom Shoulderguards", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 86938, "", "=q4=Eternal Blossom Tunic", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 86939, "", "=q4=Eternal Blossom Handguards", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 86941, "", "=q4=Eternal Blossom Breeches", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["DRUID"].." - "..AL["Tanking"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14Hunter"] = {
		["Normal"] = {
			{
				{ 1, 0, "inv_weapon_bow_07", "=q6=#t14s2#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86636, "", "=q4=Yaungol Slayer's Headguard", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86634, "", "=q4=Yaungol Slayer's Spaulders", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86638, "", "=q4=Yaungol Slayer's Tunic", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86637, "", "=q4=Yaungol Slayer's Gloves", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86635, "", "=q4=Yaungol Slayer's Legguards", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "inv_weapon_bow_07", "=q6=#t14s2#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85296, "", "=q4=Yaungol Slayer's Headguard", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85294, "", "=q4=Yaungol Slayer's Spaulders", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85298, "", "=q4=Yaungol Slayer's Tunic", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85297, "", "=q4=Yaungol Slayer's Gloves", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85295, "", "=q4=Yaungol Slayer's Legguards", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "inv_weapon_bow_07", "=q6=#t14s2#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87004, "", "=q4=Yaungol Slayer's Headguard", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87006, "", "=q4=Yaungol Slayer's Spaulders", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87002, "", "=q4=Yaungol Slayer's Tunic", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87003, "", "=q4=Yaungol Slayer's Gloves", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87005, "", "=q4=Yaungol Slayer's Legguards", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14Mage"] = {
		["Normal"] = {
			{
				{ 1, 0, "inv_staff_13", "=q6=#t14s3#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86717, "", "=q4=Hood of the Burning Scroll", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86714, "", "=q4=Mantle of the Burning Scroll", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86715, "", "=q4=Robes of the Burning Scroll", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86718, "", "=q4=Gloves of the Burning Scroll", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86716, "", "=q4=Leggings of the Burning Scroll", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "inv_staff_13", "=q6=#t14s3#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85377, "", "=q4=Hood of the Burning Scroll", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85374, "", "=q4=Mantle of the Burning Scroll", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85375, "", "=q4=Robes of the Burning Scroll", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85378, "", "=q4=Gloves of the Burning Scroll", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85376, "", "=q4=Leggings of the Burning Scroll", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "inv_staff_13", "=q6=#t14s3#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87008, "", "=q4=Hood of the Burning Scroll", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87011, "", "=q4=Mantle of the Burning Scroll", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87010, "", "=q4=Robes of the Burning Scroll", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87007, "", "=q4=Gloves of the Burning Scroll", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87009, "", "=q4=Leggings of the Burning Scroll", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14MonkTank"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_monk_brewmaster_spec", "=q6=#t14s11_1#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86726, "", "=q4=Red Crane Crown", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86724, "", "=q4=Red Crane Shoulderguards", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86728, "", "=q4=Red Crane Chestguard", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86727, "", "=q4=Red Crane Gauntlets", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86725, "", "=q4=Red Crane Legguards", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_monk_brewmaster_spec", "=q6=#t14s11_1#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85386, "", "=q4=Red Crane Crown", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85384, "", "=q4=Red Crane Shoulderguards", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85388, "", "=q4=Red Crane Chestguard", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85387, "", "=q4=Red Crane Gauntlets", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85385, "", "=q4=Red Crane Legguards", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_monk_brewmaster_spec", "=q6=#t14s11_1#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87096, "", "=q4=Red Crane Crown", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87098, "", "=q4=Red Crane Shoulderguards", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87094, "", "=q4=Red Crane Chestguard", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87095, "", "=q4=Red Crane Gauntlets", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87097, "", "=q4=Red Crane Legguards", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["MONK"].." - "..AL["Brewmaster"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14MonkDPS"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_monk_windwalker_spec", "=q6=#t14s11_2#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86736, "", "=q4=Red Crane Headpiece", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86738, "", "=q4=Red Crane Spaulders", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86734, "", "=q4=Red Crane Tunic", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86735, "", "=q4=Red Crane Grips", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86737, "", "=q4=Red Crane Leggings", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_monk_windwalker_spec", "=q6=#t14s11_2#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85396, "", "=q4=Red Crane Headpiece", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85398, "", "=q4=Red Crane Spaulders", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85394, "", "=q4=Red Crane Tunic", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85395, "", "=q4=Red Crane Grips", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85397, "", "=q4=Red Crane Leggings", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_monk_windwalker_spec", "=q6=#t14s11_2#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87086, "", "=q4=Red Crane Headpiece", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87088, "", "=q4=Red Crane Spaulders", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87084, "", "=q4=Red Crane Tunic", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87085, "", "=q4=Red Crane Grips", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87087, "", "=q4=Red Crane Leggings", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["MONK"].." - "..AL["Windwalker"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14MonkHealer"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_monk_mistweaver_spec", "=q6=#t14s11_3#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86730, "", "=q4=Red Crane Helm", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86733, "", "=q4=Red Crane Mantle", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86732, "", "=q4=Red Crane Vest", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86729, "", "=q4=Red Crane Handwraps", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86731, "", "=q4=Red Crane Legwraps", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_monk_mistweaver_spec", "=q6=#t14s11_3#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85390, "", "=q4=Red Crane Helm", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85393, "", "=q4=Red Crane Mantle", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85392, "", "=q4=Red Crane Vest", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85389, "", "=q4=Red Crane Handwraps", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85391, "", "=q4=Red Crane Legwraps", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_monk_mistweaver_spec", "=q6=#t14s11_3#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87090, "", "=q4=Red Crane Helm", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87093, "", "=q4=Red Crane Mantle", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87092, "", "=q4=Red Crane Vest", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87089, "", "=q4=Red Crane Handwraps", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87091, "", "=q4=Red Crane Legwraps", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["MONK"].." - "..AL["Mistweaver"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14PaladinHoly"] = {
		["Normal"] = {
			{
				{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#t14s4_1#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86686, "", "=q4=White Tiger Headguard", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86684, "", "=q4=White Tiger Mantle", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86688, "", "=q4=White Tiger Breastplate", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86687, "", "=q4=White Tiger Gloves", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86685, "", "=q4=White Tiger Greaves", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#t14s4_1#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85346, "", "=q4=White Tiger Headguard", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85344, "", "=q4=White Tiger Mantle", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85348, "", "=q4=White Tiger Breastplate", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85347, "", "=q4=White Tiger Gloves", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85345, "", "=q4=White Tiger Greaves", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "Spell_Holy_HolyBolt", "=q6=#t14s4_1#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87106, "", "=q4=White Tiger Headguard", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87108, "", "=q4=White Tiger Mantle", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87104, "", "=q4=White Tiger Breastplate", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87105, "", "=q4=White Tiger Gloves", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87107, "", "=q4=White Tiger Greaves", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14PaladinProtection"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_holy_devotionaura", "=q6=#t14s4_2#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86661, "", "=q4=White Tiger Faceguard", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86659, "", "=q4=White Tiger Shoulderguards", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86663, "", "=q4=White Tiger Chestguard", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86662, "", "=q4=White Tiger Handguards", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86660, "", "=q4=White Tiger Legguards", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_holy_devotionaura", "=q6=#t14s4_2#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85321, "", "=q4=White Tiger Faceguard", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85319, "", "=q4=White Tiger Shoulderguards", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85323, "", "=q4=White Tiger Chestguard", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85322, "", "=q4=White Tiger Handguards", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85320, "", "=q4=White Tiger Legguards", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_holy_devotionaura", "=q6=#t14s4_2#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87111, "", "=q4=White Tiger Faceguard", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87113, "", "=q4=White Tiger Shoulderguards", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87109, "", "=q4=White Tiger Chestguard", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87110, "", "=q4=White Tiger Handguards", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87112, "", "=q4=White Tiger Legguards", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14PaladinRetribution"] = {
		["Normal"] = {
			{
				{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#t14s4_3#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86681, "", "=q4=White Tiger Helmet", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86679, "", "=q4=White Tiger Pauldrons", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86683, "", "=q4=White Tiger Battleplate", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86682, "", "=q4=White Tiger Gauntlets", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86680, "", "=q4=White Tiger Legplates", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#t14s4_3#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85341, "", "=q4=White Tiger Helmet", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85339, "", "=q4=White Tiger Pauldrons", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85343, "", "=q4=White Tiger Battleplate", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85342, "", "=q4=White Tiger Gauntlets", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85340, "", "=q4=White Tiger Legplates", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "Spell_Holy_AuraOfLight", "=q6=#t14s4_3#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87101, "", "=q4=White Tiger Helmet", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87103, "", "=q4=White Tiger Pauldrons", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87099, "", "=q4=White Tiger Battleplate", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87100, "", "=q4=White Tiger Gauntlets", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87102, "", "=q4=White Tiger Legplates", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Retribution"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14PriestShadow"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_shadow_shadowwordpain", "=q6=#t14s5_1#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86705, "", "=q4=Guardian Serpent Hood", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86708, "", "=q4=Guardian Serpent Shoulderguards", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86707, "", "=q4=Guardian Serpent Raiment", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86704, "", "=q4=Guardian Serpent Gloves", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86706, "", "=q4=Guardian Serpent Leggings", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_shadow_shadowwordpain", "=q6=#t14s5_1#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85365, "", "=q4=Guardian Serpent Hood", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85368, "", "=q4=Guardian Serpent Shoulderguards", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85367, "", "=q4=Guardian Serpent Raiment", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85364, "", "=q4=Guardian Serpent Gloves", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85366, "", "=q4=Guardian Serpent Leggings", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_shadow_shadowwordpain", "=q6=#t14s5_1#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87120, "", "=q4=Guardian Serpent Hood", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87123, "", "=q4=Guardian Serpent Shoulderguards", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87122, "", "=q4=Guardian Serpent Raiment", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87119, "", "=q4=Guardian Serpent Gloves", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87121, "", "=q4=Guardian Serpent Leggings", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Shadow"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14PriestHoly"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_shadow_shadowwordpain", "=q6=#t14s5_1#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86702, "", "=q4=Guardian Serpent Cowl", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86699, "", "=q4=Guardian Serpent Mantle", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86700, "", "=q4=Guardian Serpent Robes", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86703, "", "=q4=Guardian Serpent Handwraps", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86701, "", "=q4=Guardian Serpent Legwraps", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_shadow_shadowwordpain", "=q6=#t14s5_1#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85362, "", "=q4=Guardian Serpent Cowl", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85359, "", "=q4=Guardian Serpent Mantle", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85360, "", "=q4=Guardian Serpent Robes", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85363, "", "=q4=Guardian Serpent Handwraps", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85361, "", "=q4=Guardian Serpent Legwraps", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_shadow_shadowwordpain", "=q6=#t14s5_1#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87115, "", "=q4=Guardian Serpent Cowl", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87118, "", "=q4=Guardian Serpent Mantle", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87117, "", "=q4=Guardian Serpent Robes", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87114, "", "=q4=Guardian Serpent Handwraps", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87116, "", "=q4=Guardian Serpent Legwraps", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Holy"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14Rogue"] = {
		["Normal"] = {
			{
				{ 1, 0, "inv_throwingknife_04", "=q6=#t14s6#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86641, "", "=q4=Helmet of the Thousandfold Blades", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86639, "", "=q4=Spaulders of the Thousandfold Blades", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86643, "", "=q4=Tunic of the Thousandfold Blades", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86642, "", "=q4=Gloves of the Thousandfold Blades", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86640, "", "=q4=Legguards of the Thousandfold Blades", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "inv_throwingknife_04", "=q6=#t14s6#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85301, "", "=q4=Helmet of the Thousandfold Blades", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85299, "", "=q4=Spaulders of the Thousandfold Blades", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85303, "", "=q4=Tunic of the Thousandfold Blades", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85302, "", "=q4=Gloves of the Thousandfold Blades", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85300, "", "=q4=Legguards of the Thousandfold Blades", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "inv_throwingknife_04", "=q6=#t14s6#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87126, "", "=q4=Helmet of the Thousandfold Blades", "=ds=#s1#, #a2#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87128, "", "=q4=Spaulders of the Thousandfold Blades", "=ds=#s3#, #a2#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87124, "", "=q4=Tunic of the Thousandfold Blades", "=ds=#s5#, #a2#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87125, "", "=q4=Gloves of the Thousandfold Blades", "=ds=#s9#, #a2#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87127, "", "=q4=Legguards of the Thousandfold Blades", "=ds=#s11#, #a2#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14ShamanElemental"] = {
		["Normal"] = {
			{
				{ 1, 0, "Spell_Nature_Lightning", "=q6=#t14s7_3#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86631, "", "=q4=Firebird's Headpiece", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86633, "", "=q4=Firebird's Shoulderwraps", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86629, "", "=q4=Firebird's Hauberk", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86630, "", "=q4=Firebird's Gloves", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86632, "", "=q4=Firebird's Kilt", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "Spell_Nature_Lightning", "=q6=#t14s7_3#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85291, "", "=q4=Firebird's Headpiece", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85293, "", "=q4=Firebird's Shoulderwraps", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85289, "", "=q4=Firebird's Hauberk", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85290, "", "=q4=Firebird's Gloves", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85292, "", "=q4=Firebird's Kilt", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "Spell_Nature_Lightning", "=q6=#t14s7_3#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87141, "", "=q4=Firebird's Headpiece", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87143, "", "=q4=Firebird's Shoulderwraps", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87139, "", "=q4=Firebird's Hauberk", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87140, "", "=q4=Firebird's Gloves", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87142, "", "=q4=Firebird's Kilt", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Elemental"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14ShamanEnhancement"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_nature_lightningshield", "=q6=#t14s7_2#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86626, "", "=q4=Firebird's Helmet", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86624, "", "=q4=Firebird's Spaulders", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86628, "", "=q4=Firebird's Cuirass", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86627, "", "=q4=Firebird's Grips", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86625, "", "=q4=Firebird's Legguards", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_nature_lightningshield", "=q6=#t14s7_2#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85286, "", "=q4=Firebird's Helmet", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85284, "", "=q4=Firebird's Spaulders", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85288, "", "=q4=Firebird's Cuirass", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85287, "", "=q4=Firebird's Grips", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85285, "", "=q4=Firebird's Legguards", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_nature_lightningshield", "=q6=#t14s7_2#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87136, "", "=q4=Firebird's Helmet", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87138, "", "=q4=Firebird's Spaulders", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87134, "", "=q4=Firebird's Cuirass", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87135, "", "=q4=Firebird's Grips", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87137, "", "=q4=Firebird's Legguards", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14ShamanRestoration"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_nature_magicimmunity", "=q6=#t14s7_1#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86691, "", "=q4=Firebird's Faceguard", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86689, "", "=q4=Firebird's Mantle", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86693, "", "=q4=Firebird's Tunic", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86692, "", "=q4=Firebird's Handwraps", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86690, "", "=q4=Firebird's Legwraps", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_nature_magicimmunity", "=q6=#t14s7_1#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85351, "", "=q4=Firebird's Faceguard", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85349, "", "=q4=Firebird's Mantle", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85353, "", "=q4=Firebird's Tunic", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85352, "", "=q4=Firebird's Handwraps", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85350, "", "=q4=Firebird's Legwraps", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_nature_magicimmunity", "=q6=#t14s7_1#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87131, "", "=q4=Firebird's Faceguard", "=ds=#s1#, #a3#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87133, "", "=q4=Firebird's Mantle", "=ds=#s3#, #a3#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87129, "", "=q4=Firebird's Tunic", "=ds=#s5#, #a3#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87130, "", "=q4=Firebird's Handwraps", "=ds=#s9#, #a3#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87132, "", "=q4=Firebird's Legwraps", "=ds=#s11#, #a3#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14Warlock"] = {
		["Normal"] = {
			{
				{ 1, 0, "spell_nature_drowsy", "=q6=#t14s8#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86710, "", "=q4=Sha-Skin Hood", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86713, "", "=q4=Sha-Skin Mantle", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86712, "", "=q4=Sha-Skin Robes", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86709, "", "=q4=Sha-Skin Gloves", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86711, "", "=q4=Sha-Skin Leggings", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "spell_nature_drowsy", "=q6=#t14s8#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85370, "", "=q4=Sha-Skin Hood", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85373, "", "=q4=Sha-Skin Mantle", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85372, "", "=q4=Sha-Skin Robes", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85369, "", "=q4=Sha-Skin Gloves", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85371, "", "=q4=Sha-Skin Leggings", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "spell_nature_drowsy", "=q6=#t14s8#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87188, "", "=q4=Sha-Skin Hood", "=ds=#s1#, #a1#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87191, "", "=q4=Sha-Skin Mantle", "=ds=#s3#, #a1#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87190, "", "=q4=Sha-Skin Robes", "=ds=#s5#, #a1#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87187, "", "=q4=Sha-Skin Gloves", "=ds=#s9#, #a1#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87189, "", "=q4=Sha-Skin Leggings", "=ds=#s11#, #a1#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14WarriorFury"] = {
		["Normal"] = {
			{
				{ 1, 0, "ability_warrior_innerrage", "=q6=#t14s9_1#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86673, "", "=q4=Helmet of Resounding Rings", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86669, "", "=q4=Pauldrons of Resounding Rings", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86672, "", "=q4=Battleplate of Resounding Rings", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86671, "", "=q4=Gauntlets of Resounding Rings", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86670, "", "=q4=Legplates of Resounding Rings", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "ability_warrior_innerrage", "=q6=#t14s9_1#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85333, "", "=q4=Helmet of Resounding Rings", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85329, "", "=q4=Pauldrons of Resounding Rings", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85332, "", "=q4=Battleplate of Resounding Rings", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85331, "", "=q4=Gauntlets of Resounding Rings", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85330, "", "=q4=Legplates of Resounding Rings", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "ability_warrior_innerrage", "=q6=#t14s9_1#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87192, "", "=q4=Helmet of Resounding Rings", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87196, "", "=q4=Pauldrons of Resounding Rings", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87193, "", "=q4=Battleplate of Resounding Rings", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87194, "", "=q4=Gauntlets of Resounding Rings", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87195, "", "=q4=Legplates of Resounding Rings", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["DPS"],
			module = moduleName, menu = "T14SET",
		};
	}

	AtlasLoot_Data["T14WarriorProtection"] = {
		["Normal"] = {
			{
				{ 1, 0, "ability_warrior_innerrage", "=q6=#t14s9_2#", "=q5="..AL["Tier 14"].." - "..AL["Raid Finder"]};
				{ 2, 86666, "", "=q4=Faceguard of Resounding Rings", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 3, 86664, "", "=q4=Shoulderguards of Resounding Rings", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 4, 86668, "", "=q4=Chestguard of Resounding Rings", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 5, 86667, "", "=q4=Handguards of Resounding Rings", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 6, 86665, "", "=q4=Legguards of Resounding Rings", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 8, 0, "ability_warrior_innerrage", "=q6=#t14s9_2#", "=q5="..AL["Tier 14"].." - "..AL["Normal"]};
				{ 9, 85326, "", "=q4=Faceguard of Resounding Rings", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 10, 85324, "", "=q4=Shoulderguards of Resounding Rings", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 11, 85328, "", "=q4=Chestguard of Resounding Rings", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 12, 85327, "", "=q4=Handguards of Resounding Rings", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 13, 85325, "", "=q4=Legguards of Resounding Rings", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
				{ 16, 0, "ability_warrior_innerrage", "=q6=#t14s9_2#", "=q5="..AL["Tier 14"].." - "..AL["Heroic"]};
				{ 17, 87199, "", "=q4=Faceguard of Resounding Rings", "=ds=#s1#, #a4#", AtlasLoot:EJ_GetBossName("Sha of Fear", 709)};
				{ 18, 87201, "", "=q4=Shoulderguards of Resounding Rings", "=ds=#s3#, #a4#", AtlasLoot:EJ_GetBossName("Lei Shi", 729)};
				{ 19, 87197, "", "=q4=Chestguard of Resounding Rings", "=ds=#s5#, #a4#", AtlasLoot:EJ_GetBossName("Grand Empress Shek'zeer", 743)};
				{ 20, 87198, "", "=q4=Handguards of Resounding Rings", "=ds=#s9#, #a4#", AtlasLoot:EJ_GetBossName("Wind Lord Mel'jarak", 741)};
				{ 21, 87200, "", "=q4=Legguards of Resounding Rings", "=ds=#s11#, #a4#", AtlasLoot:EJ_GetBossName("Amber-Shaper Un'sok", 737)};
			};
		};
		info = {
			name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"],
			module = moduleName, menu = "T14SET",
		};
	}

		-------------------------------
		--- Trading Card Game Items ---
		-------------------------------

	AtlasLoot_Data["CardGame"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["War of the Ancients"]};
				{ 2, 79771, "", "=q4=Feldrake", "=ds=#e26#" },
				{ 3, 79769, "", "=q3=Demon Hunter's Aspect", "=ds=" },
				{ 4, 79744, "", "=q3=Eye of the Legion", "=ds=#e13#"};
				{ 6, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Tomb of the Forgotten"]};
				{ 7, 72575, "", "=q4=White Riding Camel", "=ds=#e26#" },
				{ 8, 72161, "", "=q3=Spurious Sarcophagus", "=ds=" },
				{ 9, 72153, "", "=q3=Sand Scarab", "=ds=#e13#"};
				{ 11, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Crown of Heaven"]};
				{ 12, 72582, "", "=q4=Corrupted Hippogryph", "=ds=#e26#" },
				{ 13, 72159, "", "=q3=Magical Ogre Idol", "=ds=" },
				{ 14, 72134, "", "=q3=Grell Moss", "=ds=#e13#"};
				{ 16, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..BabbleZone["Throne of the Tides"]};
				{ 17, 71718, "", "=q4=Swift Shorestrider", "=ds=#e26#" },
				{ 18, 71624, "", "=q3=Purple Puffer", "=ds=#e13#"},
				{ 19, 71628, "", "=q3=Sack of Starfish", "=ds=" },
				{ 21, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Twilight of the Dragons"]};
				{ 22, 68825, "", "=q4=Amani Dragonhawk", "=ds=#e27#" },
				{ 23, 69227, "", "=q3=Fool's Gold", "=ds=" },
				{ 24, 68841, "", "=q3=Nightsaber Cub", "=ds=#e13#" },
				{ 26, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["War of the Elements"]};
				{ 27, 69228, "", "=q4=Savage Raptor", "=ds=#e26#" },
				{ 28, 68840, "", "=q3=Landro's Lichling", "=ds=#e13#" },
				{ 29, 69215, "", "=q3=War Party Hitching Post", "=ds=" },
			};
			{
				{ 1, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Worldbreaker"]};
				{ 2, 68008, "", "=q4=Mottled Drake", "=ds="..AL["Mottled Drake"] };
				{ 3, 67097, "", "=q3=Grim Campfire", "=ds="..AL["Grim Campfire"] };
				{ 4, 67128, "", "=q3=Landro's Lil' XT", "=ds="..AL["Landro's Lil' XT"] };
				{ 6, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Icecrown"]};
				{ 7, 54068, "", "=q4=Wooly White Rhino", "=ds="..AL["Wooly White Rhino"]};
				{ 8, 54452, "", "=q3=Ethereal Portal", "=ds="..AL["Ethereal Portal"]};
				{ 9, 54455, "", "=q1=Paint Bomb", "=ds="..AL["Paint Bomb"]};
				{ 11, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Wrathgate"]};
				{ 12, 54069, "", "=q4=Blazing Hippogryph", "=ds="..AL["Blazing Hippogryph"]};
				{ 13, 54212, "", "=q3=Instant Statue Pedestal", "=ds="..AL["Statue Generator"]};
				{ 14, 54218, "", "=q1=Landro's Gift Box", "=ds="..AL["Landro's Gift"]};
				{ 16, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Scourgewar"]};
				{ 17, 49287, "", "=q4=Tuskarr Kite", "=ds="..AL["Tuskarr Kite"]};
				{ 18, 49343, "", "=q3=Spectral Tiger Cub", "=ds="..AL["Spectral Kitten"]};
				{ 19, 49289, "", "=q2=Little White Stallion Bridle", "=ds="..AL["Tiny"]};
				{ 20, 49288, "", "=q2=Little Ivory Raptor Whistle", "=ds="..AL["Tiny"]};
				{ 22, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Fields of Honor"]};
				{ 23, 49290, "", "=q4=Magic Rooster Egg", "=ds="..AL["El Pollo Grande"]};
				{ 24, 46780, "", "=q3=Ogre Pinata", "=ds="..AL["Pinata"]};
				{ 25, 46779, "", "=q1=Path of Cenarius", "=ds="..AL["Path of Cenarius"]};
				{ 27, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Blood of Gladiators"]};
				{ 28, 45037, "", "=q4=Epic Purple Shirt", "=ds="..AL["Center of Attention"]};
				{ 29, 45063, "", "=q3=Foam Sword Rack", "=ds="..AL["Foam Sword Rack"]};
				{ 30, 45047, "", "=q3=Sandbox Tiger", "=ds="..AL["Sandbox Tiger"]};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Drums of War"]};
				{ 2, 49282, "", "=q4=Big Battle Bear", "=ds="..AL["The Red Bearon"]};
				{ 3, 38578, "", "=q3=The Flag of Ownership", "=ds="..AL["Owned!"]};
				{ 4, 38577, "", "=q1=Party G.R.E.N.A.D.E.", "=ds="..AL["Slashdance"]};
				{ 6, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Hunt for Illidan"]};
				{ 7, 38050, "", "=q3=Soul-Trader Beacon", "=ds="..AL["Ethereal Plunderer"]};
				{ 8, 38301, "", "=q3=D.I.S.C.O", "=ds="..AL["Disco Inferno!"]};
				{ 9, 38233, "", "=q1=Path of Illidan", "=ds="..AL["The Footsteps of Illidan"]};
				{ 11, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Servants of the Betrayer"]};
				{ 12, 35227, "", "=q4=Goblin Weather Machine - Prototype 01-B", "=ds="..AL["Personal Weather Machine"]};
				{ 13, 49286, "", "=q4=X-51 Nether-Rocket X-TREME", "=ds="..AL["X-51 Nether-Rocket"]};
				{ 14, 49285, "", "=q3=X-51 Nether-Rocket", "=ds="..AL["X-51 Nether-Rocket"]};
				{ 15, 35223, "", "=q3=Papa Hummel's Old-Fashioned Pet Biscuit", "=ds="..AL["Papa Hummel's Old-fashioned Pet Biscuit"]};
				{ 16, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["March of the Legion"]};
				{ 17, 34493, "", "=q4=Dragon Kite", "=ds="..AL["Kiting"]};
				{ 18, 34492, "", "=q3=Rocket Chicken", "=ds="..AL["Robotic Homing Chicken"]};
				{ 19, 34499, "", "=q3=Paper Flying Machine Kit", "=ds="..AL["Paper Airplane"]};
				{ 21, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Fires of Outland"]};
				{ 22, 49284, "", "=q4=Reins of the Swift Spectral Tiger", "=ds="..AL["Spectral Tiger"]};
				{ 23, 49283, "", "=q3=Reins of the Spectral Tiger", "=ds="..AL["Spectral Tiger"]};
				{ 24, 33223, "", "=q3=Fishing Chair", "=ds="..AL["Gone Fishin'"]};
				{ 25, 33219, "", "=q3=Goblin Gumbo Kettle", "=ds="..AL["Goblin Gumbo"]};
				{ 27, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Through The Dark Portal"]};
				{ 28, 32588, "", "=q3=Banana Charm", "=ds="..AL["King Mukla"]};
				{ 29, 32566, "", "=q3=Picnic Basket", "=ds="..AL["Rest and Relaxation"]};
				{ 30, 32542, "", "=q3=Imp in a Ball", "=ds="..AL["Fortune Telling"]};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6=#ud1#", "=q1="..AL["Heroes of Azeroth"]};
				{ 2, 23705, "", "=q4=Tabard of Flame", "=ds="..AL["Landro Longshot"]};
				{ 3, 23713, "", "=q4=Hippogryph Hatchling", "=ds="..AL["Thunderhead Hippogryph"]};
				{ 4, 23720, "", "=q4=Riding Turtle", "=ds="..AL["Saltwater Snapjaw"]};	
				{ 6, 0, "INV_Box_01", "=q6="..AL["UDE Items"], "=ds="..AL["No Longer Available"]};
				{ 7, 38312, "", "=q4=Tabard of Brilliance", "=ds=#s7#"};
				{ 8, 23709, "", "=q4=Tabard of Frost", "=ds=#s7#"};
				{ 9, 38313, "", "=q4=Tabard of Fury", "=ds=#s7#"};
				{ 10, 38309, "", "=q4=Tabard of Nature", "=ds=#s7#"};
				{ 11, 38310, "", "=q4=Tabard of the Arcane", "=ds=#s7#"};
				{ 22, 38314, "", "=q4=Tabard of the Defender", "=ds=#s7#"};
				{ 23, 38314, "", "=q4=Tabard of the Defender", "=ds=#s7#"};
				{ 24, 38311, "", "=q4=Tabard of the Void", "=ds=#s7#"};
				{ 25, 49704, "", "=q4=Carved Ogre Idol", "=ds="};
				{ 26, 49703, "", "=q4=Perpetual Purple Firework", "=ds="};
			};
		};
		info = {
			name = AL["TCG Items"],
			module = moduleName, menu = "SETMENU",
		};
	}

		------------------
		--- Companions ---
		------------------

	AtlasLoot_Data["PetsMerchant"] = {
		["Normal"] = {
			{
				{
					{ 1, 54436, "", "=q3=Blue Clockwork Rocket Bot", "=ds="..AtlasLoot:GetMapNameByID(504).." / "..AtlasLoot:GetMapNameByID(321)};
					{ 1, 54436, "", "=q3=Blue Clockwork Rocket Bot", "=ds="..AtlasLoot:GetMapNameByID(504).." / "..AtlasLoot:GetMapNameByID(301)};
				};
				{ 2, 70160, "", "=q3=Crimson Lasher", "=ds="..AtlasLoot:GetMapNameByID(795)},
				{ 3, 39973, "", "=q3=Ghostly Skull", "=ds="..AtlasLoot:GetMapNameByID(504)};
				{ 4, 70140, "", "=q3=Hyjal Bear Cub", "=ds="..AtlasLoot:GetMapNameByID(795)},
				{ 5, 34955, "", "=q3=Scorched Stone", "=ds="..AtlasLoot:GetMapNameByID(795)};
				{ 6, 44822, "", "=q1=Albino Snake", "=ds="..AtlasLoot:GetMapNameByID(504)};
				{ 7, 11023, "", "=q1=Ancona Chicken", "=ds="..AtlasLoot:GetMapNameByID(61)};
				{ 8, 10360, "", "=q1=Black Kingsnake", "=ds="..AtlasLoot:GetMapNameByID(321)};
				{ 9, 29958, "", "=q1=Blue Dragonhawk Hatchling", "=ds="..AtlasLoot:GetMapNameByID(479)};
				{ 10, 29901, "", "=q1=Blue Moth Egg", "=ds="..AtlasLoot:GetMapNameByID(471)};
				{ 11, 29364, "", "=q1=Brown Rabbit Crate", "=ds="..AtlasLoot:GetMapNameByID(479)};
				{ 12, 10361, "", "=q1=Brown Snake", "=ds="..AtlasLoot:GetMapNameByID(321)};
				{ 13, 8485, "", "=q1=Cat Carrier (Bombay)", "=ds="..AtlasLoot:GetMapNameByID(30)};
				{ 14, 46398, "", "=q1=Cat Carrier (Calico Cat)", "=ds="..AtlasLoot:GetMapNameByID(504)};
				{ 15, 8486, "", "=q1=Cat Carrier (Cornish Rex)", "=ds="..AtlasLoot:GetMapNameByID(30)};
				{ 16, 8487, "", "=q1=Cat Carrier (Orange Tabby)", "=ds="..AtlasLoot:GetMapNameByID(30)};
				{ 17, 8490, "", "=q1=Cat Carrier (Siamese)", "=ds="..AtlasLoot:GetMapNameByID(479)};
				{ 18, 8488, "", "=q1=Cat Carrier (Silver Tabby)", "=ds="..AtlasLoot:GetMapNameByID(30)};
				{ 19, 8489, "", "=q1=Cat Carrier (White Kitten)", "=ds="..AtlasLoot:GetMapNameByID(301)};
				{ 20, 10392, "", "=q1=Crimson Snake", "=ds="..AtlasLoot:GetMapNameByID(479).." / "..AtlasLoot:GetMapNameByID(321)};
				{ 21, 29953, "", "=q1=Golden Dragonhawk Hatchling", "=ds="..AtlasLoot:GetMapNameByID(462)};
				{ 22, 8500, "", "=q1=Great Horned Owl", "=ds="..AtlasLoot:GetMapNameByID(381)};
				{ 23, 8501, "", "=q1=Hawk Owl", "=ds="..AtlasLoot:GetMapNameByID(381)};
				{ 24, 29363, "", "=q1=Mana Wyrmling", "=ds="..AtlasLoot:GetMapNameByID(479)};
				{ 25, 48120, "", "=q1=Obsidian Hatchling", "=ds="..AtlasLoot:GetMapNameByID(504)};
				{ 26, 8496, "", "=q1=Parrot Cage (Cockatiel)", "=ds="..BabbleZone["Booty Bay"]};
				{ 27, 8492, "", "=q1=Parrot Cage (Green Wing Macaw)", "=ds="..AtlasLoot:GetMapNameByID(756)};
				{ 28, 8495, "", "=q1=Parrot Cage (Senegal)", "=ds="..AtlasLoot:GetMapNameByID(479).." / "..BabbleZone["Booty Bay"]};
				{ 29, 10394, "", "=q1=Prairie Dog Whistle", "=ds="..AtlasLoot:GetMapNameByID(362)};
				{ 30, 8497, "", "=q1=Rabbit Crate (Snowshoe)", "=ds="..AtlasLoot:GetMapNameByID(27)};
			};
			{
				{ 1, 29956, "", "=q1=Red Dragonhawk Hatchling", "=ds="..AtlasLoot:GetMapNameByID(480)};
				{ 2, 29902, "", "=q1=Red Moth Egg", "=ds="..AtlasLoot:GetMapNameByID(479)};
				{ 3, 29957, "", "=q1=Silver Dragonhawk Hatchling", "=ds="..AtlasLoot:GetMapNameByID(480)};
				{ 4, 10393, "", "=q1=Undercity Cockroach", "=ds="..AtlasLoot:GetMapNameByID(479).." / "..AtlasLoot:GetMapNameByID(382)};
				{
					{ 5, 46767, "", "=q1=Warbot Ignition Key", "=ds="..AtlasLoot:GetMapNameByID(504).." / "..AtlasLoot:GetMapNameByID(321)};
					{ 5, 46767, "", "=q1=Warbot Ignition Key", "=ds="..AtlasLoot:GetMapNameByID(504).." / "..AtlasLoot:GetMapNameByID(301)};
				};
				{ 6, 29904, "", "=q1=White Moth Egg", "=ds="..AtlasLoot:GetMapNameByID(471)};
				{ 7, 69239, "", "=q1=Winterspring Cub", "=ds="..AtlasLoot:GetMapNameByID(281)};
				{ 8, 29903, "", "=q1=Yellow Moth Egg", "=ds="..AtlasLoot:GetMapNameByID(471)};
			};
		};
		info = {
			name = AL["Merchant Sold Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsQuest"] = {
		["Normal"] = {
			{
				{ 2, 35350, "", "=q3=Chuck's Bucket", "=q1="..AL["Fishing Daily Reward"]..": "..BabbleZone["Terokkar Forest"]};
				{ 3, 33818, "", "=q3=Muckbreath's Bucket", "=q1="..AL["Fishing Daily Reward"]..": "..BabbleZone["Terokkar Forest"]};
				{ 4, 89587, "", "=q3=Porcupette", "=ds=Pet Battle Quests" };
				{ 5, 35349, "", "=q3=Snarly's Bucket", "=q1="..AL["Fishing Daily Reward"]..": "..BabbleZone["Terokkar Forest"]};
				{ 6, 44983, "", "=q3=Strand Crawler", "=q1="..AL["Fishing Daily Reward"]..": "..BabbleZone["Dalaran"]};
				{ 7, 33816, "", "=q3=Toothy's Bucket", "=q1="..AL["Fishing Daily Reward"]..": "..BabbleZone["Terokkar Forest"]};
				{
					{ 8, 72045, "", "=q1=Horde Balloon", "=q1=#m4#: #QUESTID:29401#"};
					{ 8, 72042, "", "=q1=Alliance Balloon", "=q1=#m4#: #QUESTID:29412#"};
				};
				{ 9, 65661, "", "=q1=Blue Mini Jouster", "=q1=#m4#: #QUESTID:25560#"};
				{ 10, 66067, "", "=q1=Brazie's Sunflower Seeds", "=q1=#m4#: #QUESTID:28748#"};
				{ 11, 11110, "", "=q1=Chicken Egg", "=q1=#m4#: #QUESTID:3861#"};
				{ 12, 65662, "", "=q1=Gold Mini Jouster", "=q1=#m4#: #QUESTID:25560#"};
				{ 13, 84105, "", "=q1=Fishy", "=q1=#m4#: #QUESTID:29905#" };
				{ 14, 69251, "", "=q1=Lashtail Hatchling", "=q1=#m4#: #QUESTID:29208#"};
				{ 15, 10398, "", "=q1=Mechanical Chicken", "=q1=#m4#: #QUESTID:3721#"};
				{ 17, 31760, "", "=q1=Miniwing", "=q1=#m4#: #QUESTID:10898#"};
				{ 18, 68833, "", "=q1=Panther Cub", "=q1=#m4#: #QUESTID:29267#"};
				{ 19, 66080, "", "=q1=Tiny Flamefly", "=q1=#m4#: #QUESTID:28415#"};
				{ 20, 46325, "", "=q1=Withers", "=q1=#m4#: #QUESTID:13570#"};
			};
		};
		info = {
			name = AL["Quest Reward Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsCrafted"] = {
		["Normal"] = {
			{
				{ 2, 60847, "", "=q4=Crawling Claw", "=q2=#p25#"};
				{ 3, 64372, "", "=q3=Clockwork Gnome", "=q2=#p25#"};
				{ 4, 60216, "", "=q3=De-Weaponized Mechanical Companion", "=q2=#p5#"};
				{ 5, 67282, "", "=q3=Elementium Geode", "=q2=#p23#"};
				{ 6, 67274, "", "=q3=Enchanted Lantern", "=q2=#p4#"};
				{ 7, 60955, "", "=q3=Fossilized Hatchling", "=q2=#p25#"};
				{ 8, 82774, "", "=q3=Jade Owl", "=q2=#p12#"};
				{ 9, 67275, "", "=q3=Magic Lamp", "=q2=#p4#"};
				{ 10, 87526, "", "=q3=Mechanical Pandaren Dragonling", "=q2=#p5#" };
				{ 11, 59597, "", "=q3=Personal World Destroyer", "=q2=#p5#"};
				{ 12, 69821, "", "=q3=Pterrordax Hatchling", "=q2=#p25#"};
				{ 13, 82775, "", "=q3=Sapphire Cub", "=q2=#p12#"};
				{ 14, 69824, "", "=q3=Voodoo Figurine", "=q2=#p25#"};
				{ 17, 89368, "", "=q1=Chi-ji Kite", "=q2=#p26#"};
				{ 18, 15996, "", "=q1=Lifelike Mechanical Toad", "=q2=#p5#"};
				{ 19, 11826, "", "=q1=Lil' Smoky", "=q2=#p5#"};
				{ 20, 4401, "", "=q1=Mechanical Squirrel Box", "=q2=#p5#"};
				{ 21, 11825, "", "=q1=Pet Bombling", "=q2=#p5#"};
				{ 22, 21277, "", "=q1=Tranquil Mechanical Yeti", "=q2=#p5#"};
				{ 23, 89367, "", "=q1=Yu'lon Kite", "=q2=#p26#"};
			};
		};
		info = {
			name = AL["Crafted Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsAchievement"] = {
		["Normal"] = {
			{
				{ 2, 63398, "", "=q3=Armadillo Pup", "#ACHIEVEMENTID:5144#"};
				{ 3, 71387, "", "=q3=Brilliant Kaliri", "#ACHIEVEMENTID:5877#" },
				{ 4, 54810, "", "=q3=Celestial Dragon", "#ACHIEVEMENTID:5875#" },
				{
					{ 5, 63138, "", "=q3=Dark Phoenix Hatchling", "#ACHIEVEMENTID:5892#, =ec1=#m6#"};
					{ 5, 63138, "", "=q3=Dark Phoenix Hatchling", "#ACHIEVEMENTID:5812#, =ec1=#m7#"};
				};
				{
					{ 6, 65364, "", "=q3=Guild Herald", "#ACHIEVEMENTID:5201#, =ec1=#m6#"};
					{ 6, 65363, "", "=q3=Guild Herald", "#ACHIEVEMENTID:5201#, =ec1=#m7#"};
				};
				{
					{ 7, 65362, "", "=q3=Guild Page", "#ACHIEVEMENTID:5179#, =ec1=#m6#"};
					{ 7, 65361, "", "=q3=Guild Page", "#ACHIEVEMENTID:5031#, =ec1=#m7#"};
				};
				{ 8, 85578, "", "=q3=Feral Vermling", "#ACHIEVEMENTID:7500#"};
				{ 9, 86562, "", "=q3=Hopling", "#ACHIEVEMENTID:6402#"};
				{ 10, 89686, "", "=q3=Jade Tentacle", "#ACHIEVEMENTID:7521#"};
				{ 11, 44738, "", "=q3=Kirin Tor Familiar", "#ACHIEVEMENTID:1956#"};
				{ 12, 44841, "", "=q3=Little Fawn's Salt Lick", "#ACHIEVEMENTID:2516#"};
				{ 13, 71140, "", "=q3=Nuts' Acorn", "#ACHIEVEMENTID:5876#" },
				{ 14, 49912, "", "=q3=Perky Pug", "#ACHIEVEMENTID:4478#"};
				{ 15, 88147, "", "=q3=Singing Cricket Cage", "#ACHIEVEMENTID:6582#"};
				{ 17, 40653, "", "=q3=Reeking Pet Carrier", "#ACHIEVEMENTID:1250#"};
				{ 18, 85513, "", "=q3=Thundering Serpent Hatchling", "#ACHIEVEMENTID:6634#"};
				{
					{ 19, 44810, "", "=q3=Turkey Cage", "#ACHIEVEMENTID:3656#, =ec1=#m6#"};
					{ 19, 44810, "", "=q3=Turkey Cage", "#ACHIEVEMENTID:3478#, =ec1=#m7#"};
				};
				{ 20, 89736, "", "=q3=Venus", "#ACHIEVEMENTID:7501#"};
				{ 21, 71033, "", "=q1=Lil' Tarecgosa", "#ACHIEVEMENTID:5840#" },
				{ 22, 60869, "", "=q1=Pebble", "#ACHIEVEMENTID:5449#"};
			};
		};
		info = {
			name = AL["Achievement Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsFaction"] = {
		["Normal"] = {
			{
				{
					{ 2, 90898, "", "=q3=Fox Kit", "=ds="..BabbleFaction["Hellscream's Reach"].."  =ec1=#m6#"};
					{ 2, 90897, "", "=q3=Fox Kit", "=ds="..BabbleFaction["Baradin's Wardens"].."  =ec1=#m7#"};
				};
				{ 3, 38628, "", "=q3=Nether Ray Fry", "=ds="..BabbleFaction["Sha'tari Skyguard"]};
				{ 4, 44723, "", "=q3=Nurtured Penguin Egg", "=ds="..BabbleFaction["The Kalu'ak"]};
				{ 5, 85222, "", "=q3=Red Cricket", "=ds="..BabbleFaction["Sho"]};
				{
					{ 6, 64996, "", "=q3=Rustberg Gull", "=ds="..BabbleFaction["Hellscream's Reach"].."  =ec1=#m6#"};
					{ 6, 63355, "", "=q3=Rustberg Gull", "=ds="..BabbleFaction["Baradin's Wardens"].."  =ec1=#m7#"};
				};
				{
					{ 7, 46821, "", "=q3=Shimmering Wyrmling", "=ds="..BabbleFaction["The Sunreavers"].."  =ec1=#m6#"};
					{ 7, 46820, "", "=q3=Shimmering Wyrmling", "=ds="..BabbleFaction["The Silver Covenant"].."  =ec1=#m7#"};
				};
				{ 8, 85447, "", "=q3=Tiny Goldfish", "=ds="..BabbleFaction["The Anglers"]};
				{ 9, 34478, "", "=q3=Tiny Sporebat", "=ds="..BabbleFaction["Sporeggar"]};
				{ 10, 39898, "", "=q1=Cobra Hatchling", "=ds="..BabbleFaction["The Oracles"]};
				{ 11, 44721, "", "=q1=Proto-Drake Whelp", "=ds="..BabbleFaction["The Oracles"]};
				{ 12, 39896, "", "=q1=Tickbird Hatchling", "=ds="..BabbleFaction["The Oracles"]};
				{ 13, 39899, "", "=q1=White Tickbird Hatchling", "=ds="..BabbleFaction["The Oracles"]};
			};
		};
		info = {
			name = AL["Faction Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsRare"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["World Drop"], ""};
				{ 2, 8494, "", "=q4=Parrot Cage (Hyacinth Macaw)", "=ds="..AtlasLoot:GetMapNameByID(689)};
				{ 3, 43698, "", "=q3=Giant Sewer Rat", "#ACHIEVEMENTID:1958#, =q1="..AtlasLoot:GetMapNameByID(504)};
				{ 4, 86564, "", "=q3=Imbued Jade Fragment", "=q2=Karr the Darkener, =q1="..AtlasLoot:GetMapNameByID(858)};
				{ 5, 86563, "", "=q3=Hollow Reed", "=q2=Nalash Verdantis, =q1="..AtlasLoot:GetMapNameByID(858)};
				{ 6, 73953, "", "=q3=Sea Pony", "=q2=#p24#, =q1="..BabbleZone["Darkmoon Island"]};
				{ 7, 34535, "", "=q1=Azure Whelpling", "=ds="..AtlasLoot:GetMapNameByID(281)};
				{ 8, 29960, "", "=q1=Captured Firefly", "=ds="..AtlasLoot:GetMapNameByID(467)};
				{ 9, 8491, "", "=q1=Cat Carrier (Black Tabby)", "=ds="..AtlasLoot:GetMapNameByID(21)};
				{ 10, 10822, "", "=q1=Dark Whelpling", "=ds="..AtlasLoot:GetMapNameByID(40).." / "..AtlasLoot:GetMapNameByID(17).." / "..AtlasLoot:GetMapNameByID(29)};
				{ 11, 48112, "", "=q1=Darting Hatchling", "=ds="..AtlasLoot:GetMapNameByID(141)};
				{ 12, 20769, "", "=q1=Disgusting Oozeling", "=ds=#e13#"};
				{ 13, 48116, "", "=q1=Gundrak Hatchling", "=ds="..AtlasLoot:GetMapNameByID(496)};
				{ 14, 48118, "", "=q1=Leaping Hatchling", "=ds="..AtlasLoot:GetMapNameByID(11)};
				{ 15, 27445, "", "=q1=Magical Crawdad Box", "=ds="..AtlasLoot:GetMapNameByID(478)};
				{ 17, 66076, "", "=q1=Mr. Grubbs", "=q2="..AL["Hidden Stash"]..", =q1="..AtlasLoot:GetMapNameByID(23)};
				{ 18, 48122, "", "=q1=Ravasaur Hatchling", "=ds="..AtlasLoot:GetMapNameByID(201)};
				{ 19, 48124, "", "=q1=Razormaw Hatchling", "=ds="..AtlasLoot:GetMapNameByID(40)};
				{ 20, 48126, "", "=q1=Razzashi Hatchling", "=ds="..AtlasLoot:GetMapNameByID(690)};
				{ 21, 11474, "", "=q1=Sprite Darter Egg", "=ds="..AtlasLoot:GetMapNameByID(121)};
				{ 22, 8499, "", "=q1=Tiny Crimson Whelpling", "=ds="..AtlasLoot:GetMapNameByID(40)};
				{ 23, 8498, "", "=q1=Tiny Emerald Whelpling", "=ds="..AtlasLoot:GetMapNameByID(121)};
				{ 24, 64494, "", "=q1=Tiny Shale Spider", "=q2="..AL["Jadefang"]..", =q1="..AtlasLoot:GetMapNameByID(640)};	
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Dungeon/Raid"], ""};
				{ 2, 33993, "", "=q3=Mojo", "=q1="..AtlasLoot:GetMapNameByID(781)};
				{ 3, 35504, "", "=q3=Phoenix Hatchling", "=q2="..AtlasLoot:EJ_GetBossName("Kael'thas Sunstrider", 533)..", =q1="..AtlasLoot:GetMapNameByID(798)};
				{ 4, 68673, "", "=q3=Smolderweb Egg", "=q2="..AtlasLoot:EJ_GetBossName("Mother Smolderweb", 391)..", =q1="..BabbleZone["Lower Blackrock Spire"]};
				{ 5, 12264, "", "=q3=Worg Carrier", "=q2="..AtlasLoot:EJ_GetBossName("Quartermaster Zigris", 393)..", =q1="..BabbleZone["Lower Blackrock Spire"]};
				{ 6, 48114, "", "=q1=Deviate Hatchling", "=q2="..AL["Deviate Ravager/Deviate Guardian"]..", =q1="..AtlasLoot:GetMapNameByID(749)};
			};
		};
		info = {
			name = AL["Rare Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsEvent"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Brewfest"], ""};
				{ 2, 46707, "", "=q3=Pint-Sized Pink Pachyderm", "=ds=#e13#", "#BREWFEST:100#"};
				{ 3, 32233, "", "=q3=Wolpertinger's Tankard", "=ds=#e13#", "40 #silver#"};
				{ 5, 0, "INV_Box_01", "=q6="..AL["Children's Week"], ""};
				{ 6, 46545, "", "=q3=Curious Oracle Hatchling", "=q1=#m4#: #QUESTID:13959#"};
				{ 7, 46544, "", "=q3=Curious Wolvar Pup", "=q1=#m4#: #QUESTID:13960#"};
				{
					{ 8, 32616, "", "=q3=Egbert's Egg", "=q1=#m4#: #QUESTID:10967#"};
					{ 8, 32616, "", "=q3=Egbert's Egg", "=q1=#m4#: #QUESTID:10966#"};
				};
				{
					{ 9, 32622, "", "=q3=Elekk Training Collar", "=q1=#m4#: #QUESTID:10967#"};
					{ 9, 32622, "", "=q3=Elekk Training Collar", "=q1=#m4#: #QUESTID:10966#"};
				};
				{
					{ 10, 69648, "", "=q3=Legs", "=q1=#m4#: #QUESTID:10967#"};
					{ 10, 69648, "", "=q3=Legs", "=q1=#m4#: #QUESTID:10966#"};
				};
				{
					{ 11, 32617, "", "=q3=Sleepy Willy", "=q1=#m4#: #QUESTID:10967#"};
					{ 11, 32617, "", "=q3=Sleepy Willy", "=q1=#m4#: #QUESTID:10966#"};
				};
				{
					{ 12, 23007, "", "=q1=Piglet's Collar", "=q1=#m4#: #QUESTID:171#"};
					{ 12, 23007, "", "=q1=Piglet's Collar", "=q1=#m4#: #QUESTID:171#"};
				};
				{
					{ 13, 23015, "", "=q1=Rat Cage", "=q1=#m4#: #QUESTID:171#"};
					{ 13, 23015, "", "=q1=Rat Cage", "=q1=#m4#: #QUESTID:171#"};
				};
				{
					{ 14, 66073, "", "=q1=Snail Shell", "=q1=#m4#: #QUESTID:171#"};
					{ 14, 66073, "", "=q1=Snail Shell", "=q1=#m4#: #QUESTID:171#"};
				};
				{
					{ 15, 23002, "", "=q1=Turtle Box", "=q1=#m4#: #QUESTID:171#"};
					{ 15, 23002, "", "=q1=Turtle Box", "=q1=#m4#: #QUESTID:171#"};
				};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Noblegarden"], ""};
				{ 17, 44794, "", "=q3=Spring Rabbit's Foot", "=ds=#e13#", "#NOBLEGARDEN:100#"};
				{ 19, 0, "INV_Box_01", "=q6="..AL["Feast of Winter Veil"], ""};
				{ 20, 73797, "", "=q3=Lump of Coal", "=ds=#e13#"};
				{ 21, 21301, "", "=q1=Green Helper Box", "=ds=#e13#"};
				{ 22, 21308, "", "=q1=Jingling Bell", "=ds=#e13#"};
				{ 23, 21305, "", "=q1=Red Helper Box", "=ds=#e13#"};
				{ 24, 21309, "", "=q1=Snowman Kit", "=ds=#e13#"};
				{ 26, 0, "INV_Box_01", "=q6="..AL["Love is in the Air"], ""};
				{ 27, 50446, "", "=q3=Toxic Wasteling", "=ds="..AL["Daily Reward"]};
				{ 28, 22235, "", "=q1=Truesilver Shafted Arrow", "=ds=#e13#", "#VALENTINEDAY:40#"};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Midsummer Fire Festival"], ""};
				{ 2, 23083, "", "=q3=Captured Flame", "=ds=#e13#", "#MIDSUMMER:350#"};
				{ 3, 53641, "", "=q3=Ice Chip", "=ds="..AL["Daily Reward"]};
				{ 5, 0, "INV_Box_01", "=q6="..AL["Hallow's End"], ""};
				{ 6, 33154, "", "=q3=Sinister Squashling", "=ds=#e13#", "#HALLOWSEND:150# / =ds="..AL["Daily Reward"]};
				{
					{ 7, 71076, "", "=q1=Creepy Crate", "=q1=#m4#: #QUESTID:29429#"};
					{ 7, 71076, "", "=q1=Creepy Crate", "=q1=#m4#: #QUESTID:29413#"};
				};
				{ 8, 70908, "", "=q1=Feline Familiar", "=ds=#e13#", "#HALLOWSEND:150#"};
				{ 10, 0, "INV_Box_01", "=q6="..AL["Lunar Festival"], ""};
				{ 11, 74611, "", "=q3=Festival Lantern", "=ds=#e13#", "#LUNARFESTIVAL:50#"};
				{ 12, 74610, "", "=q3=Lunar Lantern", "=ds=#e13#", "#LUNARFESTIVAL:50#"};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Argent Tournament"], ""};
				{ 17, 45022, "", "=q3=Argent Gruntling", "=ds=#e13#", "=ds=#m4#, =ec1=#m6#"};
				{ 18, 44998, "", "=q3=Argent Squire", "=ds=#e13#", "=ds=#m4#, =ec1=#m7#"};
				{ 19, 44984, "", "=q3=Ammen Vale Lashling", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 20, 44970, "", "=q3=Dun Morogh Cub", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 21, 44973, "", "=q3=Durotar Scorpion", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 22, 44974, "", "=q3=Elwynn Lamb", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 23, 44982, "", "=q3=Enchanted Broom", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 24, 45002, "", "=q3=Mechanopeep", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 25, 44980, "", "=q3=Mulgore Hatchling", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 26, 45606, "", "=q3=Sen'jin Fetish", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 27, 44965, "", "=q3=Teldrassil Sproutling", "=ds=#e13#", "#CHAMPSEAL:40#"};
				{ 28, 44971, "", "=q3=Tirisfal Batling", "=ds=#e13#", "#CHAMPSEAL:40#"};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..BabbleFaction["Darkmoon Faire"], ""};
				{ 2, 80008, "", "=q4=Darkmoon Rabbit", "#ACHIEVEMENTID:6332#"};
				{ 3, 73762, "", "=q3=Darkmoon Balloon", "=ds=#e13#", "#DARKMOON:90#"};
				{ 4, 74981, "", "=q3=Darkmoon Cub", "=ds=#e13#", "#DARKMOON:90#"};
				{ 5, 73764, "", "=q3=Darkmoon Monkey", "=ds=#e13#", "#DARKMOON:90#"};
				{ 6, 73903, "", "=q3=Darkmoon Tonk", "=ds=#e13#", "#DARKMOON:90#"};
				{ 7, 73765, "", "=q3=Darkmoon Turtle", "=ds=#e13#", "#DARKMOON:90#"};
				{ 8, 73905, "", "=q3=Darkmoon Zeppelin", "=ds=#e13#", "#DARKMOON:90#"};
				{ 9, 19450, "", "=q1=A Jubling's Tiny Home", "=ds=#e13#", "=q1=#m4#: #QUESTID:7946#"};
				{ 10, 11026, "", "=q1=Tree Frog Box", "=ds=#e13#", "1 #gold#"};
				{ 11, 11027, "", "=q1=Wood Frog Box", "=ds=#e13#", "1 #gold#"};
			};
		};
		info = {
			name = BabbleInventory["Companions"].." - "..AL["World Events"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsPromotional"] = {
		["Normal"] = {
			{
				{ 2, 90177, "", "=q3=Baneling", "#ACHIEVEMENTID:7842#"};
				{ 3, 20371, "", "=q3=Blue Murloc Egg", "#ACHIEVEMENTID:411#"};
				{ 4, 49646, "", "=q3=Core Hound Pup", "=ds=#e13#"};
				{ 5, 13584, "", "=q3=Diablo Stone", "#ACHIEVEMENTID:662#"};
				{ 6, 76062, "", "=q3=Fetish Shaman's Spear", "#ACHIEVEMENTID:7412#"};
				{ 7, 39286, "", "=q3=Frosty's Collar", "#ACHIEVEMENTID:683#"};
				{ 8, 46802, "", "=q3=Heavy Murloc Egg", "#ACHIEVEMENTID:3536#"};
				{ 9, 62540, "", "=q3=Lil' Deathwing", "#ACHIEVEMENTID:5377#"};
				{ 10, 85871, "", "=q3=Lucky Quilen Cub", "#ACHIEVEMENTID:6848#"};
				{ 11, 30360, "", "=q3=Lurky's Egg", "=q2="..AL["Collector's Edition"]};
				{ 17, 56806, "", "=q3=Mini Thor", "#ACHIEVEMENTID:4824#"};
				{ 18, 45180, "", "=q3=Murkimus' Little Spear", "#ACHIEVEMENTID:3618#"};
				{ 19, 71726, "", "=q3=Murky's Little Soulstone", "#ACHIEVEMENTID:6185#"};
				{ 20, 25535, "", "=q3=Netherwhelp's Collar", "#ACHIEVEMENTID:665#"};
				{ 21, 13583, "", "=q3=Panda Collar", "#ACHIEVEMENTID:663#"};
				{ 22, 22114, "", "=q3=Pink Murloc Egg", "=ds=#e13#"};
				{ 23, 67418, "", "=q3=Smoldering Murloc Egg", "#ACHIEVEMENTID:5378#"};
				{ 24, 39656, "", "=q3=Tyrael's Hilt", "#ACHIEVEMENTID:414#"};
				{ 25, 13582, "", "=q3=Zergling Leash", "#ACHIEVEMENTID:664#"};
			};
		};
		info = {
			name = AL["Promotional Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsCardGame"] = {
		["Normal"] = {
			{
				{ 2, 34493, "", "=q4=Dragon Kite", "=ds=#e13#", "=q1="..AL["March of the Legion"]};
				{ 3, 23713, "", "=q4=Hippogryph Hatchling", "=ds=#e13#", "=q1="..AL["Heroes of Azeroth"]};
				{ 4, 49287, "", "=q4=Tuskarr Kite", "=ds=#e13#", "=q1="..AL["Scourgewar"]};
				{ 5, 32588, "", "=q3=Banana Charm", "=ds=#e13#", "=q1="..AL["Through The Dark Portal"]};
				{ 6, 79744, "", "=q3=Eye of the Legion", "=ds=#e13#", "=q1="..AL["War of the Ancients"]};
				{ 7, 72134, "", "=q3=Grell Moss", "=ds=#e13#", "=q1="..AL["Crown of Heaven"]};
				{ 8, 68840, "", "=q3=Landro's Lichling", "=ds=#e13#", "=q1="..AL["War of the Elements"]};
				{ 17, 67128, "", "=q3=Landro's Lil' XT", "=ds=#e13#", "=q1="..AL["Worldbreaker"]};
				{ 18, 71624, "", "=q3=Purple Puffer", "=ds=#e13#", "=q1="..BabbleZone["Throne of the Tides"]};
				{ 19, 34492, "", "=q3=Rocket Chicken", "=ds=#e13#", "=q1="..AL["March of the Legion"]};
				{ 20, 72153, "", "=q3=Sand Scarab", "=ds=#e13#", "=q1="..AL["Tomb of the Forgotten"]};
				{ 21, 38050, "", "=q3=Soul-Trader Beacon", "=ds=#e13#", "=q1="..AL["Hunt for Illidan"]};
				{ 22, 49343, "", "=q3=Spectral Tiger Cub", "=ds=#e13#", "=q1="..AL["Scourgewar"]};
				{ 23, 68841, "", "=q3=Nightsaber Cub", "=ds=#e13#", "=q1="..AL["Twilight of the Dragons"]};
			};
		};
		info = {
			name = AL["Card Game Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsRemoved"] = {
		["Normal"] = {
			{
				{ 2, 37297, "", "=q3=Gold Medallion", "=ds=#e13#"};
				{ 3, 41133, "", "=q3=Unhatched Mr. Chilly", "=ds=#e13#"};
				{ 4, 38658, "", "=q3=Vampiric Batling", "#ACHIEVEMENTID:2456#, =q1="..BabbleZone["Karazhan"]};
				{ 17, 44819, "", "=q1=Baby Blizzard Bear", "#ACHIEVEMENTID:2398#"};
				{ 18, 49362, "", "=q1=Onyxian Whelpling", "#ACHIEVEMENTID:4400#"};
			};
		};
		info = {
			name = AL["Unobtainable Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsPetStore"] = {
		["Normal"] = {
			{
				{ 2, 70099, "", "=q4=Cenarion Hatchling", "=ds=#e13#"};
				{ 3, 49662, "", "=q3=Gryphon Hatchling", "=ds=#e13#"};
				{ 4, 72068, "", "=q3=Guardian Cub", "=ds=#e13#"};
				{ 5, 49693, "", "=q3=Lil' Phylactery", "=ds=#e13#"};
				{ 6, 68385, "", "=q3=Lil' Ragnaros", "=ds=#e13#"};
				{ 17, 54847, "", "=q3=Lil' XT", "=ds=#e13#"};
				{
					{ 18, 68619, "", "=q3=Moonkin Hatchling", "=ds=#e13#"};
					{ 18, 68618, "", "=q3=Moonkin Hatchling", "=ds=#e13#"};
				};
				{ 19, 49665, "", "=q3=Pandaren Monk", "=ds=#e13#"};
				{ 20, 78916, "", "=q3=Soul of the Aspects", "=ds=#e13#"};
				{ 21, 49663, "", "=q3=Wind Rider Cub", "=ds=#e13#"};
			};
		};
		info = {
			name = AL["Blizzard Store"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsAccessories"] = {
		["Normal"] = {
			{
				{ 2, 47541, "", "=q3=Argent Pony Bridle", "=ds="};
				{ 3, 38291, "", "=q3=Ethereal Mutagen", "=ds="};
				{ 4, 35223, "", "=q3=Papa Hummel's Old-Fashioned Pet Biscuit", "=ds="};
				{ 5, 37431, "", "=q2=Fetch Ball", "=ds="};
				{ 6, 43626, "", "=q2=Happy Pet Snack", "=ds="};
				{ 7, 89906, "", "=q2=Magical Mini-Treat", "=ds="};
				{ 17, 71153, "", "=q2=Magical Pet Biscuit", "=ds="};
				{ 18, 43352, "", "=q2=Pet Grooming Kit", "=ds="};
				{ 19, 89139, "", "=q1=Chain Pet Leash", "=ds="};
				{ 20, 89222, "", "=q1=Cloud Ring", "=ds="};
				{ 21, 90048, "", "=q1=Exquisite Murloc Leash", "=ds="};
				{ 22, 44820, "", "=q1=Red Ribbon Pet Leash", "=ds="};
				{ 23, 37460, "", "=q1=Rope Pet Leash", "=ds="};
			};
		};
		info = {
			name = AL["Companion Accessories"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

	AtlasLoot_Data["PetsNEW"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Rare Companions"], ""};
				{ 2, 80008, "", "=q4=Darkmoon Rabbit", "#ACHIEVEMENTID:6332#"};
				{ 4, 0, "INV_Box_01", "=q6="..AL["Achievement Companions"], ""};
				{ 5, 90177, "", "=q3=Baneling", "#ACHIEVEMENTID:7842#"};
				{ 6, 85871, "", "=q3=Lucky Quilen Cub", "#ACHIEVEMENTID:6848#"};
				{ 7, 85578, "", "=q3=Feral Vermling", "#ACHIEVEMENTID:7500#"};
				{ 8, 86562, "", "=q3=Hopling", "#ACHIEVEMENTID:6402#"};
				{ 9, 89686, "", "=q3=Jade Tentacle", "#ACHIEVEMENTID:7521#"};
				{ 10, 88147, "", "=q3=Singing Cricket Cage", "#ACHIEVEMENTID:6582#"};
				{ 11, 85513, "", "=q3=Thundering Serpent Hatchling", "#ACHIEVEMENTID:6634#"};
				{ 12, 89736, "", "=q3=Venus", "#ACHIEVEMENTID:7501#"};
				{ 14, 0, "INV_Box_01", "=q6="..AL["Card Game Companions"], ""};
				{ 15, 79744, "", "=q3=Eye of the Legion", "=ds=#e13#", "=q1="..AL["War of the Ancients"]};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Faction Companions"], ""};
				{ 17, 85222, "", "=q3=Red Cricket", "=ds="..BabbleFaction["Sho"]};
				{ 18, 85447, "", "=q3=Tiny Goldfish", "=ds="..BabbleFaction["The Anglers"]};
				{ 20, 0, "INV_Box_01", "=q6="..AL["Crafted Companions"], ""};
				{ 21, 82774, "", "=q3=Jade Owl", "=q2=#p12#"};
				{ 22, 87526, "", "=q3=Mechanical Pandaren Dragonling", "=q2=#p5#" };
				{ 23, 82775, "", "=q3=Sapphire Cub", "=q2=#p12#"};
				{ 24, 89368, "", "=q1=Chi-ji Kite", "=q2=#p26#"};
				{ 25, 89367, "", "=q1=Yu'lon Kite", "=q2=#p26#"};
				{ 27, 0, "INV_Box_01", "=q6="..AL["Quest Reward Companions"], ""};
				{ 28, 89587, "", "=q3=Porcupette", "=ds=Pet Battle Quests" };
				{ 29, 84105, "", "=q1=Fishy", "=q1=#m4#: #QUESTID:29905#" };
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Merchant Sold Companions"], ""};
				{
					{ 2, 46767, "", "=q1=Warbot Ignition Key", "=ds="..AtlasLoot:GetMapNameByID(504).." / "..AtlasLoot:GetMapNameByID(321)};
					{ 2, 46767, "", "=q1=Warbot Ignition Key", "=ds="..AtlasLoot:GetMapNameByID(504).." / "..AtlasLoot:GetMapNameByID(301)};
				};
				{ 4, 0, "INV_Box_01", "=q6="..AL["Companion Accessories"], ""};
				{ 5, 89906, "", "=q2=Magical Mini-Treat", "=ds="};	
				{ 6, 89139, "", "=q1=Chain Pet Leash", "=ds="};
				{ 7, 89222, "", "=q1=Cloud Ring", "=ds="};
				{ 8, 90048, "", "=q1=Exquisite Murloc Leash", "=ds="};
				{ 16, 0, "INV_Box_01", "=q6=Unknown", ""};
				{ 17, 88148, "", "=q1=Jade Crane Chick", "=ds=#e13#" };---NEEDS TO BE CHECKED
				{ 18, 85220, "", "=q3=Terrible Turnip", "=ds=#e13#" };---NEEDS TO BE CHECKED
				{ 19, 90173, "", "=q3=Pandaren Water Spirit", "=ds=#e13#" };---NEEDS TO BE CHECKED
				{ 20, 0, "", "=q3=Gilnean Raven", "=ds=#e13#" };---NEEDS TO BE CHECKED
				{ 21, 0, "", "=q3=Shore Crawler", "=ds=#e13#" };---NEEDS TO BE CHECKED
			};
		};
		info = {
			name = AL["New Companions"],
			module = moduleName, menu = "PETMENU", instance = "Pets",
		};
	}

		--------------
		--- Mounts ---
		--------------

	AtlasLoot_Data["MountsAlliance"] = {
		["Normal"] = {
			{
				{ 1, 0, "inv_misc_tournaments_symbol_nightelf", "=q6="..BabbleFaction["Darnassus"].." #j30#", "=ec1=#m7#"};
				{ 2, 18766, "", "=q4=Reins of the Swift Frostsaber", "=ds=#e26#"};
				{ 3, 18767, "", "=q4=Reins of the Swift Mistsaber", "=ds=#e26#"};
				{ 4, 18902, "", "=q4=Reins of the Swift Stormsaber", "=ds=#e26#"};
				{ 5, 8632, "", "=q3=Reins of the Spotted Frostsaber", "=ds=#e26#"};
				{ 6, 47100, "", "=q3=Reins of the Striped Dawnsaber", "=ds=#e26#"};
				{ 7, 8631, "", "=q3=Reins of the Striped Frostsaber", "=ds=#e26#"};
				{ 8, 8629, "", "=q3=Reins of the Striped Nightsaber", "=ds=#e26#"};
				{ 16, 0, "inv_misc_tournaments_symbol_gnome", "=q6="..BabbleFaction["Gnomeregan"].." #j30#", "=ec1=#m7#"};
				{ 17, 18772, "", "=q4=Swift Green Mechanostrider", "=ds=#e26#"};
				{ 18, 18773, "", "=q4=Swift White Mechanostrider", "=ds=#e26#"};
				{ 19, 18774, "", "=q4=Swift Yellow Mechanostrider", "=ds=#e26#"};
				{ 20, 8595, "", "=q3=Blue Mechanostrider", "=ds=#e26#"};
				{ 21, 13321, "", "=q3=Green Mechanostrider", "=ds=#e26#"};
				{ 22, 8563, "", "=q3=Red Mechanostrider", "=ds=#e26#"};
				{ 23, 13322, "", "=q3=Unpainted Mechanostrider", "=ds=#e26#"};
			};
			{
				{ 1, 0, "inv_misc_tournaments_symbol_dwarf", "=q6="..BabbleFaction["Ironforge"].." #j30#", "=ec1=#m7#"};
				{ 2, 18786, "", "=q4=Swift Brown Ram", "=ds=#e26#"};
				{ 3, 18787, "", "=q4=Swift Gray Ram", "=ds=#e26#"};
				{ 4, 18785, "", "=q4=Swift White Ram", "=ds=#e26#"};
				{ 5, 5872, "", "=q3=Brown Ram", "=ds=#e26#"};
				{ 6, 5864, "", "=q3=Gray Ram", "=ds=#e26#"};
				{ 7, 5873, "", "=q3=White Ram", "=ds=#e26#"};
				{ 9, 0, "inv_misc_tournaments_symbol_draenei", "=q6="..BabbleFaction["Exodar"].." #j30#", "=ec1=#m7#"};
				{ 10, 29745, "", "=q4=Great Blue Elekk", "=ds=#e26#"};
				{ 11, 29746, "", "=q4=Great Green Elekk", "=ds=#e26#"};
				{ 12, 29747, "", "=q4=Great Purple Elekk", "=ds=#e26#"};
				{ 13, 28481, "", "=q3=Brown Elekk", "=ds=#e26#"};
				{ 14, 29744, "", "=q3=Gray Elekk", "=ds=#e26#"};
				{ 15, 29743, "", "=q3=Purple Elekk", "=ds=#e26#"};
				{ 16, 0, "inv_misc_tournaments_symbol_human", "=q6="..BabbleFaction["Stormwind"].." #j30#", "=ec1=#m7#"};
				{ 17, 18777, "", "=q4=Swift Brown Steed", "=ds=#e26#"};
				{ 18, 18776, "", "=q4=Swift Palomino", "=ds=#e26#"};
				{ 19, 18778, "", "=q4=Swift White Steed", "=ds=#e26#"};
				{ 20, 2411, "", "=q3=Black Stallion Bridle", "=ds=#e26#"};
				{ 21, 5656, "", "=q3=Brown Horse Bridle", "=ds=#e26#"};
				{ 22, 5655, "", "=q3=Chestnut Mare Bridle", "=ds=#e26#"};
				{ 23, 2414, "", "=q3=Pinto Bridle", "=ds=#e26#"};
			};
			{
				{ 1, 0, "inv_misc_tournaments_tabard_human", "=q6="..BabbleFaction["Tushui Pandaren"].." #j30#"};
				{ 2, 87795, "", "=q4=Reins of the Black Dragon Turtle", "=ds=#e26#"};
				{ 3, 87796, "", "=q4=Reins of the Blue Dragon Turtle", "=ds=#e26#"};
				{ 4, 87797, "", "=q4=Reins of the Brown Dragon Turtle", "=ds=#e26#"};
				{ 5, 87799, "", "=q4=Reins of the Purple Dragon Turtle", "=ds=#e26#"};
				{ 6, 87800, "", "=q4=Reins of the Red Dragon Turtle", "=ds=#e26#"};
				{ 7, 87802, "", "=q4=Reins of the Great Black Dragon Turtle", "=ds=#e26#"};
				{ 8, 87803, "", "=q4=Reins of the Great Blue Dragon Turtle", "=ds=#e26#"};
				{ 9, 87804, "", "=q4=Reins of the Great Brown Dragon Turtle", "=ds=#e26#"};
				{ 10, 87801, "", "=q4=Reins of the Great Green Dragon Turtle", "=ds=#e26#"};
				{ 11, 87805, "", "=q4=Reins of the Great Purple Dragon Turtle", "=ds=#e26#"};
				{ 12, 82811, "", "=q4=Reins of the Great Red Dragon Turtle", "=ds=#e26#"};
				{ 16, 0, "inv_misc_tabard_gilneas", "=q6="..BabbleFaction["Gilneas"].." #j30#", "=ec1=#m7#"};
				{ 17, 73839, "", "=q4=Swift Mountain Horse", "=ds=#e26#"};
				{ 18, 73838, "", "=q3=Mountain Horse", "=ds=#e26#"};
			};
			{
				{ 1, 0, "INV_BannerPVP_02", "=q6="..AL["Flying Mounts"], "=ec1=#m7#"};
				{ 2, 25473, "", "=q4=Swift Blue Gryphon", "=ds=#e27#"};
				{ 3, 25528, "", "=q4=Swift Green Gryphon", "=ds=#e27#"};
				{ 4, 25529, "", "=q4=Swift Purple Gryphon", "=ds=#e27#"};
				{ 5, 25527, "", "=q4=Swift Red Gryphon", "=ds=#e27#"};
				{ 6, 25471, "", "=q3=Ebon Gryphon", "=ds=#e27#"};
				{ 7, 25470, "", "=q3=Golden Gryphon", "=ds=#e27#"};
				{ 8, 25472, "", "=q3=Snowy Gryphon", "=ds=#e27#"};
				{ 16, 0, "INV_BannerPVP_02", "=q6="..BabbleFaction["Kurenai"].." #j30#", "=ec1=#m7#"};
				{ 17, 29227, "", "=q4=Reins of the Cobalt War Talbuk", "=ds=#e26#"};
				{ 18, 29229, "", "=q4=Reins of the Silver War Talbuk", "=ds=#e26#"};
				{ 19, 29230, "", "=q4=Reins of the Tan War Talbuk", "=ds=#e26#"};
				{ 20, 29231, "", "=q4=Reins of the White War Talbuk", "=ds=#e26#"};
				{ 21, 31830, "", "=q4=Reins of the Cobalt Riding Talbuk", "=ds=#e26#"};
				{ 22, 31832, "", "=q4=Reins of the Silver Riding Talbuk", "=ds=#e26#"};
				{ 23, 31834, "", "=q4=Reins of the Tan Riding Talbuk", "=ds=#e26#"};
				{ 24, 31836, "", "=q4=Reins of the White Riding Talbuk", "=ds=#e26#"};
			};
			{
				{ 1, 0, "INV_BannerPVP_02", "=q6="..BabbleFaction["Baradin's Wardens"], "=ec1=#m7#"};
				{ 2, 64998, "", "=q4=Reins of the Spectral Steed", "=ds=#e12#"};
				{ 3, 63039, "", "=q4=Reins of the Drake of the West Wind", "=ds=#e27#"};
				{ 5, 0, "INV_BannerPVP_02", "=q6="..BabbleZone["Dalaran"], "=ec1=#m7#"};
				{ 6, 44225, "", "=q4=Reins of the Armored Brown Bear", "=ds=#e26#"};
				{ 7, 44230, "", "=q4=Reins of the Wooly Mammoth", "=ds=#e26#"};
				{ 8, 44235, "", "=q4=Reins of the Traveler's Tundra Mammoth", "=ds=#e26#"};
				{ 9, 44689, "", "=q4=Armored Snowy Gryphon", "=ds=#e27#"};
				{ 16, 0, "INV_BannerPVP_02", "=q6="..BabbleFaction["The Silver Covenant"].." #j30#", "=ec1=#m7#"};
				{ 17, 46815, "", "=q4=Quel'dorei Steed", "=ds=#e26#"};
				{ 18, 46813, "", "=q4=Silver Covenant Hippogryph", "=ds=#e27#"};
				{ 20, 0, "INV_BannerPVP_02", "=q6="..BabbleFaction["Wintersaber Trainers"].." #j30#", "=ec1=#m7#"};
				{ 21, 13086, "", "=q4=Reins of the Winterspring Frostsaber", "=ds=#e26#"};

			};
		};
		info = {
			name = AL["Alliance Mounts"],
			module = moduleName, menu = "MOUNTMENU",
		};
	}

	AtlasLoot_Data["MountsHorde"] = {
		["Normal"] = {
			{
				{ 1, 0, "inv_misc_tournaments_symbol_orc", "=q6="..BabbleFaction["Orgrimmar"].." #j30#", "=ec1=#m6#"};
				{ 2, 18796, "", "=q4=Horn of the Swift Brown Wolf", "=ds=#e26#"};
				{ 3, 18798, "", "=q4=Horn of the Swift Gray Wolf", "=ds=#e26#"};
				{ 4, 18797, "", "=q4=Horn of the Swift Timber Wolf", "=ds=#e26#"};
				{ 5, 46099, "", "=q3=Horn of the Black Wolf", "=ds=#e26#"};
				{ 6, 5668, "", "=q3=Horn of the Brown Wolf", "=ds=#e26#"};
				{ 7, 5665, "", "=q3=Horn of the Dire Wolf", "=ds=#e26#"};
				{ 8, 1132, "", "=q3=Horn of the Timber Wolf", "=ds=#e26#"};
				{ 16, 0, "inv_misc_tournaments_symbol_bloodelf", "=q6="..BabbleFaction["Silvermoon City"].." #j30#", "=ec1=#m6#"};
				{ 17, 29223, "", "=q4=Swift Green Hawkstrider", "=ds=#e26#"};
				{ 18, 28936, "", "=q4=Swift Pink Hawkstrider", "=ds=#e26#"};
				{ 19, 29224, "", "=q4=Swift Purple Hawkstrider", "=ds=#e26#"};
				{ 20, 29221, "", "=q3=Black Hawkstrider", "=ds=#e26#"};
				{ 21, 29220, "", "=q3=Blue Hawkstrider", "=ds=#e26#"};
				{ 22, 29222, "", "=q3=Purple Hawkstrider", "=ds=#e26#"};
				{ 23, 28927, "", "=q3=Red Hawkstrider", "=ds=#e26#"};
			};
			{
				{ 1, 0, "inv_misc_tournaments_symbol_troll", "=q6="..BabbleFaction["Darkspear Trolls"].." #j30#", "=ec1=#m6#"};
				{ 2, 18788, "", "=q4=Swift Blue Raptor", "=ds=#e26#"};
				{ 3, 18789, "", "=q4=Swift Olive Raptor", "=ds=#e26#"};
				{ 4, 18790, "", "=q4=Swift Orange Raptor", "=ds=#e26#"};
				{ 5, 8588, "", "=q3=Whistle of the Emerald Raptor", "=ds=#e26#"};
				{ 6, 8591, "", "=q3=Whistle of the Turquoise Raptor", "=ds=#e26#"};
				{ 7, 8592, "", "=q3=Whistle of the Violet Raptor", "=ds=#e26#"};
				{ 9, 0, "inv_misc_tournaments_symbol_tauren", "=q6="..BabbleFaction["Thunder Bluff"].." #j30#", "=ec1=#m6#"};
				{ 10, 18794, "", "=q4=Great Brown Kodo", "=ds=#e26#"};
				{ 11, 18795, "", "=q4=Great Gray Kodo", "=ds=#e26#"};
				{ 12, 18793, "", "=q4=Great White Kodo", "=ds=#e26#"};
				{ 13, 15290, "", "=q3=Brown Kodo", "=ds=#e26#"};
				{ 14, 15277, "", "=q3=Gray Kodo", "=ds=#e26#"};
				{ 15, 46100, "", "=q3=White Kodo", "=ds=#e26#"};
				{ 16, 0, "inv_misc_tournaments_symbol_scourge", "=q6="..BabbleFaction["Undercity"].." #j30#", "=ec1=#m6#"};
				{ 17, 13334, "", "=q4=Green Skeletal Warhorse", "=ds=#e26#"};
				{ 18, 47101, "", "=q4=Ochre Skeletal Warhorse", "=ds=#e26#"};
				{ 19, 18791, "", "=q4=Purple Skeletal Warhorse", "=ds=#e26#"};
				{ 20, 46308, "", "=q3=Black Skeletal Horse", "=ds=#e26#"};
				{ 21, 13332, "", "=q3=Blue Skeletal Horse", "=ds=#e26#"};
				{ 22, 13333, "", "=q3=Brown Skeletal Horse", "=ds=#e26#"};
				{ 23, 13331, "", "=q3=Red Skeletal Horse", "=ds=#e26#"};
			};
			{
				{ 1, 0, "inv_misc_tournaments_tabard_orc", "=q6="..BabbleFaction["Huojin Pandaren"].." #j30#"};
				{ 2, 87795, "", "=q4=Reins of the Black Dragon Turtle", "=ds=#e26#"};
				{ 3, 87796, "", "=q4=Reins of the Blue Dragon Turtle", "=ds=#e26#"};
				{ 4, 87797, "", "=q4=Reins of the Brown Dragon Turtle", "=ds=#e26#"};
				{ 5, 87799, "", "=q4=Reins of the Purple Dragon Turtle", "=ds=#e26#"};
				{ 6, 87800, "", "=q4=Reins of the Red Dragon Turtle", "=ds=#e26#"};
				{ 7, 87802, "", "=q4=Reins of the Great Black Dragon Turtle", "=ds=#e26#"};
				{ 8, 87803, "", "=q4=Reins of the Great Blue Dragon Turtle", "=ds=#e26#"};
				{ 9, 87804, "", "=q4=Reins of the Great Brown Dragon Turtle", "=ds=#e26#"};
				{ 10, 87801, "", "=q4=Reins of the Great Green Dragon Turtle", "=ds=#e26#"};
				{ 11, 87805, "", "=q4=Reins of the Great Purple Dragon Turtle", "=ds=#e26#"};
				{ 12, 82811, "", "=q4=Reins of the Great Red Dragon Turtle", "=ds=#e26#"};
				{ 16, 0, "inv_misc_tournaments_symbol_orc", "=q6="..BabbleFaction["Bilgewater Cartel"].." #j30#", "=ec1=#m6#"};
				{ 17, 62462, "", "=q4=Goblin Turbo-Trike Key", "=ds=#e26#"};
				{ 18, 62461, "", "=q3=Goblin Trike Key", "=ds=#e26#"};
			};
			{
				{ 1, 0, "INV_BannerPVP_01", "=q6="..AL["Flying Mounts"], "=ec1=#m6#"};
				{ 2, 25531, "", "=q4=Swift Green Wind Rider", "=ds=#e27#"};
				{ 3, 25533, "", "=q4=Swift Purple Wind Rider", "=ds=#e27#"};
				{ 4, 25477, "", "=q4=Swift Red Wind Rider", "=ds=#e27#"};
				{ 5, 25532, "", "=q4=Swift Yellow Wind Rider", "=ds=#e27#"};
				{ 6, 25475, "", "=q3=Blue Wind Rider", "=ds=#e27#"};
				{ 7, 25476, "", "=q3=Green Wind Rider", "=ds=#e27#"};
				{ 8, 25474, "", "=q3=Tawny Wind Rider", "=ds=#e27#"};
				{ 16, 0, "INV_BannerPVP_01", "=q6="..BabbleFaction["The Mag'har"].." #j30#", "=ec1=#m6#"};
				{ 17, 29102, "", "=q4=Reins of the Cobalt War Talbuk", "=ds=#e26#"};
				{ 18, 29104, "", "=q4=Reins of the Silver War Talbuk", "=ds=#e26#"};
				{ 19, 29105, "", "=q4=Reins of the Tan War Talbuk", "=ds=#e26#"};
				{ 20, 29103, "", "=q4=Reins of the White War Talbuk", "=ds=#e26#"};
				{ 21, 31829, "", "=q4=Reins of the Cobalt Riding Talbuk", "=ds=#e26#"};
				{ 22, 31831, "", "=q4=Reins of the Silver Riding Talbuk", "=ds=#e26#"};
				{ 23, 31833, "", "=q4=Reins of the Tan Riding Talbuk", "=ds=#e26#"};
				{ 24, 31835, "", "=q4=Reins of the White Riding Talbuk", "=ds=#e26#"};
			};
			{
				{ 1, 0, "INV_BannerPVP_01", "=q6="..BabbleFaction["Hellscream's Reach"], "=ec1=#m6#"};
				{ 2, 64999, "", "=q4=Reins of the Spectral Wolf", "=ds=#e12#"};
				{ 3, 65356, "", "=q4=Reins of the Drake of the West Wind", "=ds=#e27#"};
				{ 5, 0, "INV_BannerPVP_01", "=q6="..BabbleZone["Dalaran"], "=ec1=#m6#"};
				{ 6, 44226, "", "=q4=Reins of the Armored Brown Bear", "=ds=#e26#"};
				{ 7, 44231, "", "=q4=Reins of the Wooly Mammoth", "=ds=#e26#"};
				{ 8, 44234, "", "=q4=Reins of the Traveler's Tundra Mammoth", "=ds=#e26#"};
				{ 9, 44690, "", "=q4=Armored Blue Wind Rider", "=ds=#e27#"};
				{ 16, 0, "INV_BannerPVP_01", "=q6="..BabbleFaction["The Sunreavers"].." #j30#", "=ec1=#m6#"};
				{ 17, 46816, "", "=q4=Sunreaver Hawkstrider", "=ds=#e26#"};
				{ 18, 46814, "", "=q4=Sunreaver Dragonhawk", "=ds=#e27#"};
				{ 20, 0, "INV_BannerPVP_01", "=q6="..AL["Quest Reward"].." #j30#", "=ec1=#m6#"};
				{ 21, 46102, "", "=q4=Whistle of the Venomhide Ravasaur", "=ds=#e26#"};
			};
		};
		info = {
			name = AL["Horde Mounts"],
			module = moduleName, menu = "MOUNTMENU",
		};
	}

	AtlasLoot_Data["MountsFaction"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..BabbleFaction["Order of the Cloud Serpent"].." #j30#"};
				{ 2, 85430, "", "=q4=Reins of the Azure Cloud Serpent", "=ds=#e27#"};
				{ 3, 85429, "", "=q4=Reins of the Golden Cloud Serpent", "=ds=#e27#"};
				{ 4, 79802, "", "=q4=Reins of the Jade Cloud Serpent", "=ds=#e27#"};
				{ 6, 0, "INV_Box_01", "=q6="..BabbleFaction["The August Celestials"].." #j30#"};
				{ 7, 89304, "", "=q4=Reins of the Thundering August Cloud Serpent", "=ds=#e27#"};
				{ 9, 0, "INV_Box_01", "=q6="..BabbleFaction["The Lorewalkers"].." #j30#"};
				{ 10, 89363, "", "=q4=Disc of the Red Flying Cloud", "=ds=#e27#"};
				{ 12, 0, "INV_Box_01", "=q6="..BabbleFaction["Golden Lotus"].." #j30#"};
				{ 13, 87781, "", "=q4=Reins of the Azure Riding Crane", "=ds=#e26#"};
				{ 14, 87782, "", "=q4=Reins of the Golden Riding Crane", "=ds=#e26#"};
				{ 15, 87783, "", "=q4=Reins of the Regal Riding Crane", "=ds=#e26#"};
				{ 16, 0, "INV_Box_01", "=q6="..BabbleFaction["The Klaxxi"].." #j30#"};
				{ 17, 85262, "", "=q4=Reins of the Amber Scorpion", "=ds=#e26#"};
				{ 19, 0, "INV_Box_01", "=q6="..BabbleFaction["The Anglers"].." #j30#"};
				{ 20, 81354, "", "=q4=Reins of the Azure Water Strider", "=ds=#e26#"};
				{ 21, 87791, "", "=q4=Reins of the Crimson Water Strider", "=ds=#e26#"};
				{ 22, 87794, "", "=q4=Reins of the Golden Water Strider", "=ds=#e26#"};
				{ 23, 87793, "", "=q4=Reins of the Jade Water Strider", "=ds=#e26#"};
				{ 24, 87792, "", "=q4=Reins of the Orange Water Strider", "=ds=#e26#"};
				{ 26, 0, "INV_Box_01", "=q6="..BabbleFaction["Shado-Pan"].." #j30#"};
				{ 27, 89307, "", "=q4=Reins of the Blue Shado-Pan Riding Tiger", "=ds=#e26#"};
				{ 28, 89305, "", "=q4=Reins of the Green Shado-Pan Riding Tiger", "=ds=#e26#"};
				{ 29, 89306, "", "=q4=Reins of the Red Shado-Pan Riding Tiger", "=ds=#e26#"};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..BabbleFaction["The Tillers"].." #j30#"};
				{ 2, 89391, "", "=q4=Reins of the Black Riding Goat", "=ds=#e26#"};
				{ 3, 89362, "", "=q4=Reins of the Brown Riding Goat", "=ds=#e26#"};
				{ 4, 89390, "", "=q4=Reins of the White Riding Goat", "=ds=#e26#"};
				{ 6, 0, "INV_Box_01", "=q6="..AL["Vendor"]};
				{ 7, 84101, "", "=q4=Reins of the Grand Expedition Yak", "=q2=Sold by Uncle Bigpocket, =q1="..AtlasLoot:GetMapNameByID(809)};
				{ 8, 87789, "", "=q4=Reins of the Blonde Riding Yak", "=q2=Sold by Uncle Bigpocket, =q1="..AtlasLoot:GetMapNameByID(809)};
				{ 9, 87788, "", "=q4=Reins of the Grey Riding Yak", "=q2=Sold by Uncle Bigpocket, =q1="..AtlasLoot:GetMapNameByID(809)};
				{ 11, 0, "INV_Box_01", "=q6="..BabbleFaction["Ramkahen"].." #j30#", "=q1="..AtlasLoot:GetMapNameByID(720)};
				{ 12, 63044, "", "=q4=Reins of the Brown Riding Camel", "=ds=#e26#", ""};
				{ 13, 63045, "", "=q4=Reins of the Tan Riding Camel", "=ds=#e26#", ""};
				{ 16, 0, "INV_Box_01", "=q6="..BabbleFaction["The Sons of Hodir"].." #j30#", "=q1="..AtlasLoot:GetMapNameByID(495)};
				{
					{ 17, 44080, "", "=q4=Reins of the Ice Mammoth", "=ds=#e26#"};
					{ 17, 43958, "", "=q4=Reins of the Ice Mammoth", "=ds=#e26#"};
				};
				{
					{ 18, 44086, "", "=q4=Reins of the Grand Ice Mammoth", "=ds=#e26#"};
					{ 18, 43961, "", "=q4=Reins of the Grand Ice Mammoth", "=ds=#e26#"};
				};
				{ 20, 0, "INV_Box_01", "=q6="..BabbleFaction["The Wyrmrest Accord"].." #j30#", "=q1="..AtlasLoot:GetMapNameByID(488)};
				{ 21, 43955, "", "=q4=Reins of the Red Drake", "=ds=#e27#"};
				{ 23, 0, "INV_Box_01", "=q6="..BabbleFaction["The Oracles"].." #j30#", "=q1="..AtlasLoot:GetMapNameByID(493)};
				{ 24, 44707, "", "=q4=Reins of the Green Proto-Drake", "=q2="..AL["Mysterious Egg"], ""};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..BabbleFaction["Netherwing"].." #j30#", "=q1="..AtlasLoot:GetMapNameByID(473)};
				{ 2, 32858, "", "=q4=Reins of the Azure Netherwing Drake", "=ds=#e27#"};
				{ 3, 32859, "", "=q4=Reins of the Cobalt Netherwing Drake", "=ds=#e27#"};
				{ 4, 32857, "", "=q4=Reins of the Onyx Netherwing Drake", "=ds=#e27#"};
				{ 5, 32860, "", "=q4=Reins of the Purple Netherwing Drake", "=ds=#e27#"};
				{ 6, 32861, "", "=q4=Reins of the Veridian Netherwing Drake", "=ds=#e27#"};
				{ 7, 32862, "", "=q4=Reins of the Violet Netherwing Drake", "=ds=#e27#"};
				{ 9, 0, "INV_Box_01", "=q6="..BabbleFaction["Cenarion Expedition"].." #j30#", "=q1="..AtlasLoot:GetMapNameByID(467)};
				{ 10, 33999, "", "=q4=Cenarion War Hippogryph", "=ds=#e27#"};
				{ 16, 0, "INV_Box_01", "=q6="..BabbleFaction["Sha'tari Skyguard"].." #j30#", "=q1="..AtlasLoot:GetMapNameByID(478)};
				{ 17, 32319, "", "=q4=Blue Riding Nether Ray", "=ds=#e27#"};
				{ 18, 32314, "", "=q4=Green Riding Nether Ray", "=ds=#e27#"};
				{ 19, 32317, "", "=q4=Red Riding Nether Ray", "=ds=#e27#"};
				{ 20, 32316, "", "=q4=Purple Riding Nether Ray", "=ds=#e27#"};
				{ 21, 32318, "", "=q4=Silver Riding Nether Ray", "=ds=#e27#"};
			};
		};
		info = {
			name = AL["Neutral Faction Mounts"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsPvP"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Alliance PvP Mounts"], ""};
				{ 2, 29465, "", "=q4=Black Battlestrider", "=ds=#e26# =ec1=#m7#"};
				{ 3, 29467, "", "=q4=Black War Ram", "=ds=#e26# =ec1=#m7#"};
				{ 4, 29468, "", "=q4=Black War Steed Bridle", "=ds=#e26# =ec1=#m7#"};
				{ 5, 35906, "", "=q4=Reins of the Black War Elekk", "=ds=#e26# =ec1=#m7#"};
				{ 6, 29471, "", "=q4=Reins of the Black War Tiger", "=ds=#e26# =ec1=#m7#"};
				{ 7, 19030, "", "=q4=Stormpike Battle Charger", "=ds=#e26# =ec1=#m7#"};
				{ 8, 43956, "", "=q4=Reins of the Black War Mammoth", "=ds=#e26# =ec1=#m7#"};
				{ 12, 0, "INV_Box_01", "=q6="..AL["Halaa PvP Mounts"], "=q1="..AtlasLoot:GetMapNameByID(477)};
				{ 13, 28915, "", "=q4=Reins of the Dark Riding Talbuk", "=ds=#e26#"};
				{ 14, 29228, "", "=q4=Reins of the Dark War Talbuk", "=ds=#e26#"};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Horde PvP Mounts"], ""};
				{ 17, 29466, "", "=q4=Black War Kodo", "=ds=#e26# =ec1=#m6#"};
				{ 18, 29469, "", "=q4=Horn of the Black War Wolf", "=ds=#e26# =ec1=#m6#"};
				{ 19, 29470, "", "=q4=Red Skeletal Warhorse", "=ds=#e26# =ec1=#m6#"};
				{ 20, 34129, "", "=q4=Swift Warstrider", "=ds=#e26# =ec1=#m6#"};
				{ 21, 29472, "", "=q4=Whistle of the Black War Raptor", "=ds=#e26# =ec1=#m6#"};
				{ 22, 19029, "", "=q4=Horn of the Frostwolf Howler", "=ds=#e26# =ec1=#m6#"};
				{ 23, 44077, "", "=q4=Reins of the Black War Mammoth", "=ds=#e26# =ec1=#m6#"};
			};
		};
		info = {
			name = AL["PvP Mounts"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsRareDungeon"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Dungeon"], ""};
				{ 2, 69747, "", "=q4=Amani Battle Bear", "=q1="..BabbleZone["Zul'Aman"]};
				{ 3, 68823, "", "=q4=Armored Razzashi Raptor", "=q2="..AtlasLoot:EJ_GetBossName("Bloodlord Mandokir", 176)..", =q1="..AtlasLoot:GetMapNameByID(793)};
				{ 4, 13335, "", "=q4=Deathcharger's Reins", "#ACHIEVEMENTID:729#", "", "0.10%"};
				{ 5, 44151, "", "=q4=Reins of the Blue Proto-Drake", "=q2="..AtlasLoot:EJ_GetBossName("Skadi the Ruthless", 643)..", =q1="..AL["Heroic"].." "..AtlasLoot:GetMapNameByID(524), ""};
				{ 6, 43951, "", "=q4=Reins of the Bronze Drake", "#ACHIEVEMENTID:1817#"};
				{ 7, 63040, "", "=q4=Reins of the Drake of the North Wind", "=q2="..AtlasLoot:EJ_GetBossName("Altairus", 115)..", =q1="..AtlasLoot:GetMapNameByID(769)};
				{ 8, 32768, "", "=q4=Reins of the Raven Lord", "#ACHIEVEMENTID:883#"};
				{ 9, 63043, "", "=q4=Reins of the Vitreous Stone Drake", "=q2="..AtlasLoot:EJ_GetBossName("Slabhide", 111)..", =q1="..AtlasLoot:GetMapNameByID(768)};
				{ 10, 35513, "", "=q4=Swift White Hawkstrider", "#ACHIEVEMENTID:884#"};
				{ 11, 68824, "", "=q4=Swift Zulian Panther", "=q2="..AtlasLoot:EJ_GetBossName("High Priestess Kilnara", 181)..", =q1="..AtlasLoot:GetMapNameByID(793)};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Outdoor"], ""};
				{ 17, 67151, "", "=q4=Reins of Poseidus", "=q2="..AL["Poseidus"]..", =q1="..AtlasLoot:GetMapNameByID(613)};
				{ 18, 63046, "", "=q4=Reins of the Grey Riding Camel", "#ACHIEVEMENTID:5767#", ""};
				{ 19, 87771, "", "=q4=Reins of the Heavenly Onyx Cloud Serpent", "=q2="..AtlasLoot:EJ_GetBossName("Sha of Anger", 691).." =q1="..AtlasLoot:GetMapNameByID(809), ""};
				{ 20, 63042, "", "=q4=Reins of the Phosphorescent Stone Drake", "=q2="..AL["Aeonaxx"]..", =q1="..AtlasLoot:GetMapNameByID(640)};
				{ 21, 44168, "", "=q4=Reins of the Time-Lost Proto-Drake", "=q2="..AL["Time-Lost Proto Drake"]..", =q1="..AtlasLoot:GetMapNameByID(495)};
				{ 22, 89783, "", "=q4=Son of Galleon's Saddle", "=q2="..AtlasLoot:EJ_GetBossName("Salyis's Warband", 725)..", =q1="..AtlasLoot:GetMapNameByID(807), ""};
				{ 23, 46109, "", "=q3=Sea Turtle", "#ACHIEVEMENTID:3218#", ""};
			};
		};
		info = {
			name = AL["Rare Mounts"]..": "..AL["Dungeon"].." / "..AL["Outdoor"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsRareRaid"] = {
		["Normal"] = {
			{
				{ 1, 32458, "", "=q4=Ashes of Al'ar", "#ACHIEVEMENTID:885#"};
				{ 2, 78919, "", "=q4=Experiment 12-B", "=q2="..AtlasLoot:EJ_GetBossName("Ultraxion", 331)..", =q1="..AtlasLoot:GetMapNameByID(824)},
				{ 3, 30480, "", "=q4=Fiery Warhorse's Reins", "#ACHIEVEMENTID:882#", "", "0.25%"};
				{ 4, 71665, "", "=q4=Flametalon of Alysrazor", "=q2="..AtlasLoot:EJ_GetBossName("Alysrazor", 194)..", =q1="..AtlasLoot:GetMapNameByID(800)},
				{ 5, 50818, "", "=q4=Invincible's Reins", "#ACHIEVEMENTID:4584#"};
				{ 6, 77069, "", "=q4=Life-Binder's Handmaiden", "=q2="..AtlasLoot:EJ_GetBossName("Madness of Deathwing", 333)..", =q1="..AtlasLoot:GetMapNameByID(824)},
				{ 7, 45693, "", "=q4=Mimiron's Head", "#ACHIEVEMENTID:4626#, =q1="..AtlasLoot:GetMapNameByID(529), "", ""};
				{ 8, 43986, "", "=q4=Reins of the Black Drake", "#ACHIEVEMENTID:2051#, =q1="..AtlasLoot:GetMapNameByID(531), "100%"};
				{ 9, 77067, "", "=q4=Reins of the Blazing Drake", "=q2="..AtlasLoot:EJ_GetBossName("Madness of Deathwing", 333)..", =q1="..AtlasLoot:GetMapNameByID(824)},
				{ 10, 43954, "", "=q4=Reins of the Twilight Drake", "#ACHIEVEMENTID:2054#, =q1="..AtlasLoot:GetMapNameByID(531), "100%"};
				{ 11, 43953, "", "=q4=Reins of the Blue Drake", "=q2="..BabbleBoss["Malygos"]..", =q1="..AtlasLoot:GetMapNameByID(527), ""};
				{ 12, 43952, "", "=q4=Reins of the Azure Drake", "=q2="..BabbleBoss["Malygos"]..", =q1="..AtlasLoot:GetMapNameByID(527), ""};
				{ 13, 63041, "", "=q4=Reins of the Drake of the South Wind", "=q2="..AtlasLoot:EJ_GetBossName("Al'Akir", 155)..", =q1="..AtlasLoot:GetMapNameByID(767)};
				{
					{ 14, 44083, "", "=q4=Reins of the Grand Black War Mammoth", "=q1="..AtlasLoot:GetMapNameByID(532)..", =ec1=#m6#", "", ""};
					{ 14, 43959, "", "=q4=Reins of the Grand Black War Mammoth", "=q1="..AtlasLoot:GetMapNameByID(532)..", =ec1=#m7#", "", ""};
				};
				{ 15, 49636, "", "=q4=Reins of the Onyxian Drake", "=q2="..BabbleBoss["Onyxia"]..", =q1="..AtlasLoot:GetMapNameByID(718), ""};
				{ 16, 69224, "", "=q4=Smoldering Egg of Millagazor", "=q2="..BabbleBoss["Ragnaros"]..", =q1="..AtlasLoot:GetMapNameByID(800)},
				{ 18, 21218, "", "=q3=Blue Qiraji Resonating Crystal", "=q2="..AL["Trash Mobs"]..", =q1="..AtlasLoot:GetMapNameByID(766), "", "10.91%"};
				{ 19, 21323, "", "=q3=Green Qiraji Resonating Crystal", "=q2="..AL["Trash Mobs"]..", =q1="..AtlasLoot:GetMapNameByID(766), "", "11.77%"};
				{ 20, 21321, "", "=q3=Red Qiraji Resonating Crystal", "=q2="..AL["Trash Mobs"]..", =q1="..AtlasLoot:GetMapNameByID(766), "", "1.32%"};
				{ 21, 21324, "", "=q3=Yellow Qiraji Resonating Crystal", "=q2="..AL["Trash Mobs"]..", =q1="..AtlasLoot:GetMapNameByID(766), "", "12.64%"};
			};
		};
		info = {
			name = AL["Rare Mounts"]..": "..AL["Raid"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsAchievement"] = {
		["Normal"] = {
			{
				{ 1, 44843, "", "=q4=Blue Dragonhawk", "#ACHIEVEMENTID:2536#, =ec1=#m7#"};
				{ 2, 69230, "", "=q4=Corrupted Egg of Millagazor", "#ACHIEVEMENTID:5828#" },
				{ 3, 69213, "", "=q4=Flameward Hippogryph", "#ACHIEVEMENTID:5866#"};
				{ 4, 44842, "", "=q4=Red Dragonhawk", "#ACHIEVEMENTID:2537#, =ec1=#m6#"};
				{ 5, 44178, "", "=q4=Reins of the Albino Drake", "#ACHIEVEMENTID:2143#"};
				{ 6, 90710, "", "=q4=Reins of the Ashen Pandaren Phoenix", "#ACHIEVEMENTID:6375#"};
				{ 7, 51954, "", "=q4=Reins of the Bloodbathed Frostbrood Vanquisher", "#ACHIEVEMENTID:4602#"};
				{ 8, 87769, "", "=q4=Reins of the Crimson Cloud Serpent", "#ACHIEVEMENTID:6927#"};
				{ 9, 89154, "", "=q4=Reins of the Crimson Pandaren Phoenix", "#ACHIEVEMENTID:6375#"};
				{ 10, 63125, "", "=q4=Reins of the Dark Phoenix", "#ACHIEVEMENTID:4988#"};
				{ 11, 62901, "", "=q4=Reins of the Drake of the East Wind", "#ACHIEVEMENTID:4853#"};
				{ 12, 90711, "", "=q4=Reins of the Emerald Pandaren Phoenix", "#ACHIEVEMENTID:6375#"};
				{ 13, 87773, "", "=q4=Reins of the Heavenly Crimson Cloud Serpent", "#ACHIEVEMENTID:6932#"};
				{ 14, 51955, "", "=q4=Reins of the Icebound Frostbrood Vanquisher", "#ACHIEVEMENTID:4603#"};
				{ 15, 45801, "", "=q4=Reins of the Ironbound Proto-Drake", "#ACHIEVEMENTID:2958#"};
				{ 16, 44160, "", "=q4=Reins of the Red Proto-Drake", "#ACHIEVEMENTID:2136#"};
				{ 17, 45802, "", "=q4=Reins of the Rusted Proto-Drake", "#ACHIEVEMENTID:2957#"};
				{ 18, 85666, "", "=q4=Reins of the Thundering Jade Cloud Serpent", "#ACHIEVEMENTID:6682#"};
				{ 19, 90712, "", "=q4=Reins of the Violet Pandaren Phoenix", "#ACHIEVEMENTID:6375#"};
				{ 20, 44177, "", "=q4=Reins of the Violet Proto-Drake", "#ACHIEVEMENTID:2144#"};
				{ 21, 62900, "", "=q4=Reins of the Volcanic Stone Drake", "#ACHIEVEMENTID:4845#"};
				{ 23, 44223, "", "=q4=Reins of the Black War Bear", "#ACHIEVEMENTID:614#, =ec1=#m7#"};
				{ 24, 44224, "", "=q4=Reins of the Black War Bear", "#ACHIEVEMENTID:619#, =ec1=#m6#"};
				{ 25, 62298, "", "=q4=Reins of the Golden King", "#ACHIEVEMENTID:4912#, =ec1=#m7#"};
				{ 26, 67107, "", "=q4=Reins of the Kor'kron Annihilator", "#ACHIEVEMENTID:5492#, =ec1=#m6#"};
				{ 27, 70909, "", "=q4=Vicious War Steed", "#ACHIEVEMENTID:5823#, =ec1=#m7#"},
				{ 28, 70910, "", "=q4=Vicious War Wolf", "#ACHIEVEMENTID:5824#, =ec1=#m6#"},
			};
		};
		info = {
			name = AL["Achievement Reward"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsCraftQuest"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Crafted Mounts"], ""};
				{ 2, 60954, "", "=q4=Fossilized Raptor", "=ds=#e26# =q2=#p25#"};
				{ 3, 82453, "", "=q4=Jeweled Onyx Panther", "=ds=#e27# =q2=#p12#"};
				{ 4, 44413, "", "=q4=Mekgineer's Chopper", "=ds=#e26# =q2=#p5# =ec1=#m7#"};
				{ 5, 41508, "", "=q4=Mechano-Hog", "=ds=#e26# =q2=#p5# =ec1=#m6#"};
				{ 6, 64883, "", "=q4=Scepter of Azj'Aqir", "=ds=#e26# =q2=#p25#"};
				{ 7, 54797, "", "=q4=Frosty Flying Carpet", "=ds=#e27# =q2=#p8#"};
				{ 8, 44558, "", "=q4=Magnificent Flying Carpet", "=ds=#e27# =q2=#p8#"};
				{ 9, 34061, "", "=q4=Turbo-Charged Flying Machine", "=ds=#e27# =q2=#p5#"};
				{ 10, 65891, "", "=q4=Vial of the Sands", "=ds=#e27# =q2=#p1#"};
				{ 11, 83088, "", "=q3=Jade Panther", "=ds=#e27# =q2=#p12#"};
				{ 12, 83087, "", "=q3=Ruby Panther", "=ds=#e27# =q2=#p12#"};
				{ 13, 83090, "", "=q3=Sapphire Panther", "=ds=#e27# =q2=#p12#"};
				{ 14, 83089, "", "=q3=Sunstone Panther", "=ds=#e27# =q2=#p12#"};
				{ 17, 87250, "", "=q3=Depleted-Kyparium Rocket", "=ds=#e27# =q2=#p5#"};
				{ 18, 87251, "", "=q3=Geosynchronous World Spinner", "=ds=#e27# =q2=#p5#"};
				{ 19, 44554, "", "=q3=Flying Carpet", "=ds=#e27# =q2=#p8#"};
				{ 20, 34060, "", "=q3=Flying Machine", "=ds=#e27# =q2=#p5#"};
				{ 22, 0, "INV_Box_01", "=q6="..AL["Quest Reward"], ""};
				{ 23, 52200, "", "=q4=Reins of the Crimson Deathcharger", "=q1=#m4#: #QUESTID:24915#"};
				{ 24, 87768, "", "=q4=Reins of the Onyx Cloud Serpent", "=q1=#m4#: #QUESTID:31277#"};
				{ 25, 43962, "", "=q4=Reins of the White Polar Bear", "=q1=#m4#: "..AL["Hyldnir Spoils"], ""};
				{ 26, 54465, "", "=q3=Subdued Abyssal Seahorse", "=q1=#m4#: #QUESTID:25371#"};
			};
		};
		info = {
			name = AL["Quest Reward"].." / "..AL["Crafted Mounts"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsCardGame"] = {
		["Normal"] = {
			{
				{ 1, 68825, "", "=q4=Amani Dragonhawk", "=ds=#e27#", "=q1="..AL["Twilight of the Dragons"]},
				{ 2, 49282, "", "=q4=Big Battle Bear", "=ds=#e26#", "=q1="..AL["Drums of War"]};
				{ 3, 54069, "", "=q4=Blazing Hippogryph", "=ds=#e27#", "=q1="..AL["Wrathgate"]};
				{ 4, 72582, "", "=q4=Corrupted Hippogryph", "=ds=#e26#", "=q1="..AL["Crown of Heaven"]},
				{ 5, 79771, "", "=q4=Feldrake", "=ds=#e26#", "=q1="..AL["War of the Ancients"]},
				{ 6, 49290, "", "=q4=Magic Rooster Egg", "=ds=#e26#", "=q1="..AL["Fields of Honor"]};
				{ 7, 68008, "", "=q4=Mottled Drake", "=ds=#e27#", "=q1="..AL["Worldbreaker"]};
				{ 8, 49284, "", "=q4=Reins of the Swift Spectral Tiger", "=ds=#e26#", "=q1="..AL["Fires of Outland"]};
				{ 9, 23720, "", "=q4=Riding Turtle", "=ds=#e26#", "=q1="..AL["Heroes of Azeroth"]};
				{ 10, 69228, "", "=q4=Savage Raptor", "=ds=#e26#", "=q1="..AL["War of the Elements"]},
				{ 11, 71718, "", "=q4=Swift Shorestrider", "=ds=#e26#", "=q1="..BabbleZone["Throne of the Tides"]},
				{ 12, 72575, "", "=q4=White Riding Camel", "=ds=#e26#", "=q1="..AL["Tomb of the Forgotten"]},
				{ 13, 54068, "", "=q4=Wooly White Rhino ", "=ds=#e26#", "=q1="..AL["Icecrown"]};
				{ 14, 49286, "", "=q4=X-51 Nether-Rocket X-TREME", "=ds=#e12#", "=q1="..AL["Servants of the Betrayer"]};
				{ 16, 49283, "", "=q3=Reins of the Spectral Tiger", "=ds=#e26#", "=q1="..AL["Fires of Outland"]};
				{ 17, 49285, "", "=q3=X-51 Nether-Rocket", "=ds=#e12#", "=q1="..AL["Servants of the Betrayer"]};
			};
		};
		info = {
			name = AL["Card Game Mounts"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsPromotional"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Promotional Mounts"], ""};
				{ 2, 85870, "", "=q4=Imperial Quilen", "#ACHIEVEMENTID:6849#"};
				{ 3, 76889, "", "=q4=Spectral Gryphon", "=q2="..AL["Scroll of Resurrection"].."  =ec1=#m7#"};
				{ 4, 76902, "", "=q4=Spectral Wind Rider", "=q2="..AL["Scroll of Resurrection"].."  =ec1=#m6#"};
				{ 5, 76755, "", "=q4=Tyrael's Charger", "=q2="..AL["Annual Pass"]};
				{ 6, 83086, "", "=q4=Heart of the Nightwing", "=q2="..AL["Recruit-A-Friend"]};
				{ 8, 43599, "", "=q3=Big Blizzard Bear", "#ACHIEVEMENTID:415#"};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Blizzard Store"], ""};
				{ 17, 54811, "", "=q4=Celestial Steed", "=ds=#e12#"};
				{ 18, 78924, "", "=q4=Heart of the Aspects", "=ds=#e12#"};
				{ 19, 69846, "", "=q4=Winged Guardian", "=ds=#e12#"};
			};
		};
		info = {
			name = AL["Promotional Mounts"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsEvent"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#", ""};
				{ 2, 45591, "", "=q4=Darnassian Nightsaber", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 3, 45590, "", "=q4=Exodar Elekk", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 4, 45589, "", "=q4=Gnomeregan Mechanostrider", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 5, 45586, "", "=q4=Ironforge Ram", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 6, 45125, "", "=q4=Stormwind Steed", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 8, 46745, "", "=q4=Great Red Elekk", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 9, 46752, "", "=q4=Swift Gray Steed", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 10, 46744, "", "=q4=Swift Moonsaber", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 11, 46748, "", "=q4=Swift Violet Ram", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 12, 46747, "", "=q4=Turbostrider", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 14, 47179, "", "=q4=Argent Charger", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 15, 47180, "", "=q4=Argent Warhorse", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 16, 0, "INV_BannerPVP_01", "=q6=#m6#", ""};
				{ 17, 45593, "", "=q4=Darkspear Raptor", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 18, 45597, "", "=q4=Forsaken Warhorse", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 19, 45595, "", "=q4=Orgrimmar Wolf", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 20, 45596, "", "=q4=Silvermoon Hawkstrider", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 21, 45592, "", "=q4=Thunder Bluff Kodo", "=ds=#e26#", "#CHAMPSEAL:100#"};
				{ 23, 46750, "", "=q4=Great Golden Kodo", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 24, 46749, "", "=q4=Swift Burgundy Wolf", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 25, 46743, "", "=q4=Swift Purple Raptor", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 26, 46751, "", "=q4=Swift Red Hawkstrider", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 27, 46746, "", "=q4=White Skeletal Warhorse", "=ds=#e26#", "500 #gold# #CHAMPSEAL:5#"};
				{ 29, 45725, "", "=q4=Argent Hippogryph", "=ds=#e27#", "#CHAMPSEAL:150#"};
				extraText = " - "..AL["Argent Tournament"]
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Brewfest"], ""};
				{ 2, 37828, "", "=q4=Great Brewfest Kodo", "=q2="..BabbleBoss["Coren Direbrew"]};
				{ 3, 33977, "", "=q4=Swift Brewfest Ram", "=q2="..BabbleBoss["Coren Direbrew"]};
				{ 5, 0, "INV_Box_01", "=q6="..AL["Hallow's End"], ""};
				{ 6, 37012, "", "=q4=The Horseman's Reins", "#ACHIEVEMENTID:980#"};
				{ 8, 0, "INV_Box_01", "=q6="..BabbleFaction["Darkmoon Faire"], ""};
				{ 9, 73766, "", "=q4=Darkmoon Dancing Bear", "=ds=#e26#", "#DARKMOON:180#"},
				{ 10, 72140, "", "=q4=Swift Forest Strider", "=ds=#e26#", "#DARKMOON:180#"},
				{ 16, 0, "INV_Box_01", "=q6="..AL["Love is in the Air"], ""};
				{ 17, 50250, "", "=q4=Big Love Rocket", "#ACHIEVEMENTID:4627#"};
				{ 18, 72146, "", "=q4=Swift Lovebird", "=ds=#e26#", "#VALENTINEDAY:270#" },
				{ 20, 0, "INV_Box_01", "=q6="..AL["Noblegarden"], ""};
				{ 21, 72145, "", "=q4=Swift Springstrider", "=ds=#e26#", "#NOBLEGARDEN:500#"},
			};
		};
		info = {
			name = AL["World Events"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsRemoved"] = {
		["Normal"] = {
			{
				{ 1, 33809, "", "=q4=Amani War Bear", "=q1="..BabbleZone["Zul'Aman"], ""};
				{ 2, 19872, "", "=q4=Swift Razzashi Raptor", "#ACHIEVEMENTID:881#"};
				{ 3, 19902, "", "=q4=Swift Zulian Tiger", "#ACHIEVEMENTID:880#"};
				{ 5, 49098, "", "=q4=Crusader's Black Warhorse", "#ACHIEVEMENTID:4079#, =ec1=#m6#"};
				{ 6, 49096, "", "=q4=Crusader's White Warhorse", "#ACHIEVEMENTID:4156#, =ec1=#m7#"};
				{ 7, 49044, "", "=q4=Swift Alliance Steed", "#ACHIEVEMENTID:3810#, =ec1=#m7#"};
				{ 8, 49046, "", "=q4=Swift Horde Wolf", "#ACHIEVEMENTID:3810#, =ec1=#m6#"};
				{ 9, 44164, "", "=q4=Reins of the Black Proto-Drake", "#ACHIEVEMENTID:2138#"};
				{ 10, 44175, "", "=q4=Reins of the Plagued Proto-Drake", "#ACHIEVEMENTID:2137#"};
				{ 12, 21176, "", "=q5=Black Qiraji Resonating Crystal", "=q1=#m4#: #QUESTID:8743#"};
				{ 13, 37719, "", "=q4=Swift Zhevra", "#ACHIEVEMENTID:1436#"};
				{ 14, 54860, "", "=q4=X-53 Touring Rocket", "#ACHIEVEMENTID:4832#"};
				{ 15, 33976, "", "=q3=Brewfest Ram", "=ds=#e26#"};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Arena Reward"], ""};
				{ 17, 30609, "", "=q4=Swift Nether Drake", "#ACHIEVEMENTID:886#"};
				{ 18, 34092, "", "=q4=Merciless Nether Drake", "#ACHIEVEMENTID:887#"};
				{ 19, 37676, "", "=q4=Vengeful Nether Drake", "#ACHIEVEMENTID:888#"};
				{ 20, 43516, "", "=q4=Brutal Nether Drake", "#ACHIEVEMENTID:2316#"};
				{ 21, 46708, "", "=q4=Deadly Gladiator's Frost Wyrm", "#ACHIEVEMENTID:3096#"};
				{ 22, 46171, "", "=q4=Furious Gladiator's Frost Wyrm", "#ACHIEVEMENTID:3756#"};
				{ 23, 47840, "", "=q4=Relentless Gladiator's Frost Wyrm", "#ACHIEVEMENTID:3757#"};
				{ 24, 50435, "", "=q4=Wrathful Gladiator's Frost Wyrm", "#ACHIEVEMENTID:4600#"};
				{ 25, 71339, "", "=q4=Vicious Gladiator's Twilight Drake", "#ACHIEVEMENTID:6003#"};
				{ 26, 71954, "", "=q4=Ruthless Gladiator's Twilight Drake", "#ACHIEVEMENTID:6322#"};
				{ 27, 85785, "", "=q4=Cataclysmic Gladiator's Twilight Drake", "#ACHIEVEMENTID:6741#"};
			};
		};
		info = {
			name = AL["Unobtainable Mounts"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

	AtlasLoot_Data["MountsNEW"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..BabbleFaction["Order of the Cloud Serpent"].." #j30#"};
				{ 2, 85430, "", "=q4=Reins of the Azure Cloud Serpent", "=ds=#e27#"};
				{ 3, 85429, "", "=q4=Reins of the Golden Cloud Serpent", "=ds=#e27#"};
				{ 4, 79802, "", "=q4=Reins of the Jade Cloud Serpent", "=ds=#e27#"};
				{ 6, 0, "INV_Box_01", "=q6="..BabbleFaction["The August Celestials"].." #j30#"};
				{ 7, 89304, "", "=q4=Reins of the Thundering August Cloud Serpent", "=ds=#e27#"};
				{ 9, 0, "INV_Box_01", "=q6="..BabbleFaction["The Lorewalkers"].." #j30#"};
				{ 10, 89363, "", "=q4=Disc of the Red Flying Cloud", "=ds=#e27#"};
				{ 12, 0, "INV_Box_01", "=q6="..BabbleFaction["Golden Lotus"].." #j30#"};
				{ 13, 87781, "", "=q4=Reins of the Azure Riding Crane", "=ds=#e26#"};
				{ 14, 87782, "", "=q4=Reins of the Golden Riding Crane", "=ds=#e26#"};
				{ 15, 87783, "", "=q4=Reins of the Regal Riding Crane", "=ds=#e26#"};
				{
					{ 16, 0, "INV_Box_01", "=q6="..BabbleFaction["Huojin Pandaren"].." #j30#"};
					{ 16, 0, "INV_Box_01", "=q6="..BabbleFaction["Tushui Pandaren"].." #j30#"};
				};
				{ 17, 87795, "", "=q4=Reins of the Black Dragon Turtle", "=ds=#e26#"};
				{ 18, 87796, "", "=q4=Reins of the Blue Dragon Turtle", "=ds=#e26#"};
				{ 19, 87797, "", "=q4=Reins of the Brown Dragon Turtle", "=ds=#e26#"};
				{ 20, 87799, "", "=q4=Reins of the Purple Dragon Turtle", "=ds=#e26#"};
				{ 21, 87800, "", "=q4=Reins of the Red Dragon Turtle", "=ds=#e26#"};
				{ 22, 87802, "", "=q4=Reins of the Great Black Dragon Turtle", "=ds=#e26#"};
				{ 23, 87803, "", "=q4=Reins of the Great Blue Dragon Turtle", "=ds=#e26#"};
				{ 24, 87804, "", "=q4=Reins of the Great Brown Dragon Turtle", "=ds=#e26#"};
				{ 25, 87801, "", "=q4=Reins of the Great Green Dragon Turtle", "=ds=#e26#"};
				{ 26, 87805, "", "=q4=Reins of the Great Purple Dragon Turtle", "=ds=#e26#"};
				{ 27, 82811, "", "=q4=Reins of the Great Red Dragon Turtle", "=ds=#e26#"};
				{ 29, 0, "INV_Box_01", "=q6="..BabbleFaction["The Klaxxi"].." #j30#"};
				{ 30, 85262, "", "=q4=Reins of the Amber Scorpion", "=ds=#e26#"};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..BabbleFaction["The Anglers"].." #j30#"};
				{ 2, 81354, "", "=q4=Reins of the Azure Water Strider", "=ds=#e26#"};
				{ 3, 87791, "", "=q4=Reins of the Crimson Water Strider", "=ds=#e26#"};
				{ 4, 87794, "", "=q4=Reins of the Golden Water Strider", "=ds=#e26#"};
				{ 5, 87793, "", "=q4=Reins of the Jade Water Strider", "=ds=#e26#"};
				{ 6, 87792, "", "=q4=Reins of the Orange Water Strider", "=ds=#e26#"};
				{ 8, 0, "INV_Box_01", "=q6="..BabbleFaction["Shado-Pan"].." #j30#"};
				{ 9, 89307, "", "=q4=Reins of the Blue Shado-Pan Riding Tiger", "=ds=#e26#"};
				{ 10, 89305, "", "=q4=Reins of the Green Shado-Pan Riding Tiger", "=ds=#e26#"};
				{ 11, 89306, "", "=q4=Reins of the Red Shado-Pan Riding Tiger", "=ds=#e26#"};
				{ 16, 0, "INV_Box_01", "=q6="..BabbleFaction["The Tillers"].." #j30#"};
				{ 17, 89391, "", "=q4=Reins of the Black Riding Goat", "=ds=#e26#"};
				{ 18, 89362, "", "=q4=Reins of the Brown Riding Goat", "=ds=#e26#"};
				{ 19, 89390, "", "=q4=Reins of the White Riding Goat", "=ds=#e26#"};
				{ 21, 0, "INV_Box_01", "=q6="..AL["Achievement Reward"]};
				{ 22, 85666, "", "=q4=Reins of the Thundering Jade Cloud Serpent", "#ACHIEVEMENTID:6682#"};
				{ 23, 87769, "", "=q4=Reins of the Crimson Cloud Serpent", "#ACHIEVEMENTID:6927#"};
				{ 24, 87773, "", "=q4=Reins of the Heavenly Crimson Cloud Serpent", "#ACHIEVEMENTID:6932#"};
				{ 25, 90710, "", "=q4=Reins of the Ashen Pandaren Phoenix", "#ACHIEVEMENTID:6375#"};
				{ 26, 89154, "", "=q4=Reins of the Crimson Pandaren Phoenix", "#ACHIEVEMENTID:6375#"};
				{ 27, 90711, "", "=q4=Reins of the Emerald Pandaren Phoenix", "#ACHIEVEMENTID:6375#"};
				{ 28, 90712, "", "=q4=Reins of the Violet Pandaren Phoenix", "#ACHIEVEMENTID:6375#"};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Promotional Mounts"]};
				{ 2, 85870, "", "=q4=Imperial Quilen", "#ACHIEVEMENTID:6849#"};
				{ 3, 83086, "", "=q4=Heart of the Nightwing", "=q2="..AL["Recruit-A-Friend"]};
				{ 5, 0, "INV_Box_01", "=q6="..AL["Card Game Mounts"]};
				{ 6, 79771, "", "=q4=Feldrake", "=ds=#e26#", "=q1="..AL["War of the Ancients"] },
				{ 8, 0, "INV_Box_01", "=q6="..AL["Rare Mounts"]};
				{ 9, 87777, "", "=q4=Reins of the Astral Cloud Serpent", "=q2="..AtlasLoot:EJ_GetBossName("Elegon", 726)..", =q1="..AtlasLoot:GetMapNameByID(896), ""};
				{ 10, 87771, "", "=q4=Reins of the Heavenly Onyx Cloud Serpent", "=q2="..AtlasLoot:EJ_GetBossName("Sha of Anger", 691).." =q1="..AtlasLoot:GetMapNameByID(809), ""};
				{ 11, 89783, "", "=q4=Son of Galleon's Saddle", "=q2="..AtlasLoot:EJ_GetBossName("Salyis's Warband", 725)..", =q1="..AtlasLoot:GetMapNameByID(807), ""};
				{ 13, 0, "INV_Box_01", "=q6="..AL["Quest Reward"]};
				{ 14, 87768, "", "=q4=Reins of the Onyx Cloud Serpent", "=q1=#m4#: #QUESTID:31277#"};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Vendor"]};
				{ 17, 84101, "", "=q4=Reins of the Grand Expedition Yak", "=q2=Sold by Uncle Bigpocket, =q1="..AtlasLoot:GetMapNameByID(809)};
				{ 18, 87789, "", "=q4=Reins of the Blonde Riding Yak", "=q2=Sold by Uncle Bigpocket, =q1="..AtlasLoot:GetMapNameByID(809)};
				{ 19, 87788, "", "=q4=Reins of the Grey Riding Yak", "=q2=Sold by Uncle Bigpocket, =q1="..AtlasLoot:GetMapNameByID(809)};
				{ 21, 0, "INV_Box_01", "=q6="..AL["Crafted Mounts"]};
				{ 22, 82453, "", "=q4=Jeweled Onyx Panther", "=ds=#e26# =q2=#p12#"};
				{ 23, 83088, "", "=q3=Jade Panther", "=ds=#e27# =q2=#p12#"};
				{ 24, 83087, "", "=q3=Ruby Panther", "=ds=#e27# =q2=#p12#"};
				{ 25, 83090, "", "=q3=Sapphire Panther", "=ds=#e27# =q2=#p12#"};
				{ 26, 83089, "", "=q3=Sunstone Panther", "=ds=#e27# =q2=#p12#"};
				{ 27, 87250, "", "=q3=Depleted-Kyparium Rocket", "=ds=#e27# =q2=#p5#"};
				{ 28, 87251, "", "=q3=Geosynchronous World Spinner", "=ds=#e27# =q2=#p5#"};
			};
			{
				{ 1, 0, "INV_Box_01", "=q6=Unknown"};
				{ 2, 87776, "", "=q4=Reins of the Heavenly Azure Cloud Serpent", "=ds=#e27#", ""};
				{ 3, 87774, "", "=q4=Reins of the Heavenly Golden Cloud Serpent", "=ds=#e27#", ""};
				{ 4, 87775, "", "=q4=Reins of the Heavenly Jade Cloud Serpent", "=ds=#e27#", ""};
				{ 5, 87784, "", "=q4=Jungle Riding Crane", "=ds=#e26#", ""};
				{ 6, 87785, "", "=q4=Reins of the Albino Riding Crane", "=ds=#e26#", ""};
				{ 7, 84728, "", "=q4=Reins of the Crimson Riding Crane", "=ds=#e26#", ""};
				{ 8, 87786, "", "=q4=Reins of the Black Riding Yak", "=ds=#e26#", ""};
				{ 9, 87787, "", "=q4=Reins of the Brown Riding Yak", "=ds=#e26#", ""};
				{ 10, 84753, "", "=q4=Reins of the White Riding Yak", "=ds=#e26#", ""};
			};
		};
		info = {
			name = AL["New Mounts"].." - "..AL["Mists of Pandaria"],
			module = moduleName, menu = "MOUNTMENU", instance = "Mounts",
		};
	}

		---------------
		--- Tabards ---
		---------------

	AtlasLoot_Data["TabardsAlliance"] = {
		["Normal"] = {
			{
				{ 1, 63379, "", "=q3=Baradin's Wardens Tabard", "=ds=#s7#"};
				{ 2, 45579, "", "=q1=Darnassus Tabard", "=ds=#s7#"};
				{ 3, 45580, "", "=q1=Exodar Tabard", "=ds=#s7#"};
				{ 4, 64882, "", "=q1=Gilneas Tabard", "=ds=#s7#"};
				{ 5, 45578, "", "=q1=Gnomeregan Tabard", "=ds=#s7#"};
				{ 6, 23999, "", "=q1=Honor Hold Tabard", "=ds=#s7#"};
				{ 7, 45577, "", "=q1=Ironforge Tabard", "=ds=#s7#"};
				{ 8, 31774, "", "=q1=Kurenai Tabard", "=ds=#s7#"};
				{ 9, 46817, "", "=q1=Silver Covenant Tabard", "=ds=#s7#"};
				{ 10, 45574, "", "=q1=Stormwind Tabard", "=ds=#s7#"};
				{ 11, 83079, "", "=q1=Tushui Tabard", "=ds=#s7#"};
				{ 16, 0, "INV_BannerPVP_02", "=q6="..AL["PvP Tabards"], ""};
				{ 17, 15196, "", "=q1=Private's Tabard", "=ds=#s7#"};
				{ 18, 15198, "", "=q1=Knight's Colors", "=ds=#s7#"};
				{ 19, 20132, "", "=q1=Arathor Battle Tabard", "=ds=#s7#, =q1=#m4#"};
				{ 20, 19506, "", "=q1=Silverwing Battle Tabard", "=ds=#s7#"};
				{ 21, 19032, "", "=q1=Stormpike Battle Tabard", "=ds=#s7#"};
			};
		};
		info = {
			name = AL["Alliance Tabards"],
			module = moduleName, menu = "TABARDMENU",
		};
	}

	AtlasLoot_Data["TabardsHorde"] = {
		["Normal"] = {
			{
				{ 1, 63378, "", "=q3=Hellscream's Reach Tabard", "=ds=#s7#"};
				{ 2, 64884, "", "=q1=Bilgewater Cartel Tabard", "=ds=#s7#"};
				{ 3, 45582, "", "=q1=Darkspear Tabard", "=ds=#s7#"};
				{ 4, 83080, "", "=q1=Huojin Tabard", "=ds=#s7#"};
				{ 5, 31773, "", "=q1=Mag'har Tabard", "=ds=#s7#"};
				{ 6, 45581, "", "=q1=Orgrimmar Tabard", "=ds=#s7#"};
				{ 7, 45585, "", "=q1=Silvermoon City Tabard", "=ds=#s7#"};
				{ 8, 46818, "", "=q1=Sunreaver Tabard", "=ds=#s7#"};
				{ 9, 24004, "", "=q1=Thrallmar Tabard", "=ds=#s7#"};
				{ 10, 45584, "", "=q1=Thunder Bluff Tabard", "=ds=#s7#"};
				{ 11, 45583, "", "=q1=Undercity Tabard", "=ds=#s7#"};
				{ 16, 0, "INV_BannerPVP_01", "=q6="..AL["PvP Tabards"], ""};
				{ 17, 15197, "", "=q1=Scout's Tabard", "=ds=#s7#"};
				{ 18, 15199, "", "=q1=Stone Guard's Herald", "=ds=#s7#"};
				{ 19, 20131, "", "=q1=Battle Tabard of the Defilers", "=ds=#s7#, =q1=#m4#"};
				{ 20, 19031, "", "=q1=Frostwolf Battle Tabard", "=ds=#s7#"};
				{ 21, 19505, "", "=q1=Warsong Battle Tabard", "=ds=#s7#"};
			};
		};
		info = {
			name = AL["Horde Tabards"],
			module = moduleName, menu = "TABARDMENU",
		};
	}

	AtlasLoot_Data["TabardsNeutralFaction"] = {
		["Normal"] = {
			{
				{ 1, 0, "INV_Box_01", "=q6="..AL["Cataclysm"], ""};
				{ 2, 65904, "", "=q1=Tabard of Ramkahen", "=ds=#s7#"};
				{ 3, 65909, "", "=q1=Tabard of the Dragonmaw Clan", "=ds=#s7#"};
				{ 4, 65905, "", "=q1=Tabard of the Earthen Ring", "=ds=#s7#"};
				{ 5, 65906, "", "=q1=Tabard of the Guardians of Hyjal", "=ds=#s7#"};
				{ 6, 65907, "", "=q1=Tabard of Therazane", "=ds=#s7#"};
				{ 7, 65908, "", "=q1=Tabard of the Wildhammer Clan", "=ds=#s7#"};
				{ 9, 0, "INV_Box_01", "=q6="..AL["Wrath of the Lich King"], ""};
				{ 10, 46874, "", "=q3=Argent Crusader's Tabard", "=ds=#s7#"};
				{ 11, 43154, "", "=q1=Tabard of the Argent Crusade", "=ds=#s7#"};
				{ 12, 43155, "", "=q1=Tabard of the Ebon Blade", "=ds=#s7#"};
				{ 13, 43157, "", "=q1=Tabard of the Kirin Tor", "=ds=#s7#"};
				{ 14, 43156, "", "=q1=Tabard of the Wyrmrest Accord", "=ds=#s7#"};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Burning Crusade"], ""};
				{ 17, 31779, "", "=q1=Aldor Tabard", "=ds=#s7#"};
				{ 18, 31804, "", "=q1=Cenarion Expedition Tabard", "=ds=#s7#"};
				{ 19, 31776, "", "=q1=Consortium Tabard", "=ds=#s7#"};
				{ 20, 31777, "", "=q1=Keepers of Time Tabard", "=ds=#s7#"};
				{ 21, 31778, "", "=q1=Lower City Tabard", "=ds=#s7#"};
				{ 22, 32828, "", "=q1=Ogri'la Tabard", "=ds=#s7#"};
				{ 23, 31781, "", "=q1=Sha'tar Tabard", "=ds=#s7#"};
				{ 24, 31775, "", "=q1=Sporeggar Tabard", "=ds=#s7#"};
				{ 25, 31780, "", "=q1=Scryers Tabard", "=ds=#s7#"};
				{ 26, 32445, "", "=q1=Skyguard Tabard", "=ds=#s7#"};
				{ 27, 35221, "", "=q1=Tabard of the Shattered Sun", "=ds=#s7#"};
			};
		};
		info = {
			name = AL["Neutral Faction Tabards"],
			module = moduleName, menu = "TABARDMENU",
		};
	}

	AtlasLoot_Data["TabardsAchievementQuestRare"] = {
		["Normal"] = {
			{
				{ 1, 0, "achievement_guildperk_honorablemention_rank2", "=q6="..AL["Achievement Reward"], ""};
				{ 2, 43349, "", "=q4=Tabard of Brute Force", "#ACHIEVEMENTID:876#"};
				{ 3, 40643, "", "=q4=Tabard of the Achiever", "#ACHIEVEMENTID:1021#"};
				{ 4, 43348, "", "=q4=Tabard of the Explorer", "#ACHIEVEMENTID:45#"};
				{
					{ 5, 43300, "", "=q4=Loremaster's Colors", "#ACHIEVEMENTID:1682#, =ec1=#m6#"};
					{ 5, 43300, "", "=q4=Loremaster's Colors", "#ACHIEVEMENTID:1681#, =ec1=#m7#"};
				};
				{ 6, 49052, "", "=q3=Tabard of Conquest", "#ACHIEVEMENTID:3857#, =ec1=#m7#"};
				{ 7, 49054, "", "=q3=Tabard of Conquest", "#ACHIEVEMENTID:3957#, =ec1=#m6#"};
				{ 16, 0, "achievement_guildperk_honorablemention", "=q6="..AL["Quest Reward"], ""};
				{ 17, 52252, "", "=q4=Tabard of the Lightbringer", "=q1=#m4#: #QUESTID:24919#"};
				{ 18, 35280, "", "=q3=Tabard of Summer Flames", "=q1=#m4#: #QUESTID:11972#"};
				{ 19, 35279, "", "=q3=Tabard of Summer Skies", "=q1=#m4#: #QUESTID:11972#"};
				{ 20, 31404, "", "=q2=Green Trophy Tabard of the Illidari", "=q1=#m4#: #QUESTID:10781#"};
				{ 21, 31405, "", "=q2=Purple Trophy Tabard of the Illidari", "=q1=#m4#: #QUESTID:10781#"};
				{ 22, 25549, "", "=q1=Blood Knight Tabard", "=q1=#m4#: #QUESTID:9737#, =ec1=#m6#"};
				{ 23, 24344, "", "=q1=Tabard of the Hand", "=q1=#m4#: #QUESTID:9762#, =ec1=#m7#"};
			};
		};
		info = {
			name = AL["Achievement & Quest Reward Tabards"],
			module = moduleName, menu = "TABARDMENU",
		};
	}

	AtlasLoot_Data["TabardsRemoved"] = {
		["Normal"] = {
			{
				{ 1, 36941, "", "=q3=Competitor's Tabard", "#ACHIEVEMENTID:1636#"};
				{ 2, 89196, "", "=q3=Theramore Tabard", "#ACHIEVEMENTID:7467#"};
				{ 3, 23192, "", "=q2=Tabard of the Scarlet Crusade", "=ds=#s7#"};
				{ 4, 22999, "", "=q1=Tabard of the Argent Dawn", "#ACHIEVEMENTID:2116#"};
				{ 5, 28788, "", "=q1=Tabard of the Protector", "#ACHIEVEMENTID:2079#"};
				{ 6, 19160, "", "=q1=Contest Winner's Tabard", "=ds=#s7#"};
				{ 8, 0, "achievement_featsofstrength_gladiator_10", "=q6="..AL["Arena Reward"], ""};
				{ 9, 45983, "", "=q4=Furious Gladiator's Tabard", "=q5="..AL["Season 6"]};
				{ 10, 49086, "", "=q4=Relentless Gladiator's Tabard", "=q5="..AL["Season 7"]};
				{ 11, 51534, "", "=q4=Wrathful Gladiator's Tabard", "=q5="..AL["Season 8"]};
				{ 16, 0, "INV_Box_01", "=q6="..AL["Card Game Tabards"], ""};
				{ 17, 38312, "", "=q4=Tabard of Brilliance", "=ds=#s7#, =q1=#m24#"};
				{ 18, 23705, "", "=q4=Tabard of Flame", "=ds=#s7#, =q1=#m24#"};
				{ 19, 23709, "", "=q4=Tabard of Frost", "=ds=#s7#, =q1=#m24#"};
				{ 20, 38313, "", "=q4=Tabard of Fury", "=ds=#s7#, =q1=#m24#"};
				{ 21, 38309, "", "=q4=Tabard of Nature", "=ds=#s7#, =q1=#m24#"};
				{ 22, 38310, "", "=q4=Tabard of the Arcane", "=ds=#s7#, =q1=#m24#"};
				{ 23, 38314, "", "=q4=Tabard of the Defender", "=ds=#s7#, =q1=#m24#"};
				{ 24, 38311, "", "=q4=Tabard of the Void", "=ds=#s7#, =q1=#m24#"};
			};
		};
		info = {
			name = AL["Unobtainable Tabards"],
			module = moduleName, menu = "TABARDMENU",
		};
	}

		----------------------------
		--- Transformation Items ---
		----------------------------

	AtlasLoot_Data["TransformationNonconsumedItems"] = {
		["Normal"] = {
			{
				{ 1, 64481, "", "=q4=Blessing of the Old God", "=ds=#p25#"};
				{ 2, 64646, "", "=q4=Bones of Transformation", "=ds=#p25#"};
				{ 3, 49704, "", "=q4=Carved Ogre Idol", "=ds=#m24#"};
				{ 4, 52201, "", "=q4=Muradin's Favor", "=ds=#m4#: #QUESTID:24917#"};
				{ 5, 37254, "", "=q4=Super Simian Sphere", "=ds="..AL["World Drop"]};
				{ 6, 64651, "", "=q4=Wisp Amulet", "=ds=#p25#"};
				{ 7, 65665, "", "=q3=Burgy Blackheart's Handsome Hat", "=ds="..AL["Burgy Blackheart"]..", "..BabbleZone["Shimmering Expanse"]};
				{ 8, 54653, "", "=q3=Darkspear Pride", "=ds=#m4#: #QUESTID:25480#"};
				{ 9, 44719, "", "=q3=Frenzyheart Brew", "=ds="..BabbleFaction["Frenzyheart Tribe"]..": "..BabbleFaction["Revered"]};
				{ 10, 54651, "", "=q3=Gnomeregan Pride", "=ds=#m4#: #QUESTID:25286#"};
				{ 11, 19979, "", "=q3=Hook of the Master Angler", "=ds=#m4#: #QUESTID:8193#"};
				{ 12, 68806, "", "=q3=Kalytha's Haunted Locket", "=ds="..AL["Vendor"]..": "..BabbleZone["Azshara"]};
				{ 13, 33079, "", "=q3=Murloc Costume", "#ACHIEVEMENTID:412#"};
				{ 14, 1973, "", "=q3=Orb of Deception", "=ds="..AL["World Drop"]};
				{ 15, 35275, "", "=q3=Orb of the Sin'dorei", "=ds="..AL["Various Locations"]..": "..BabbleZone["Magisters' Terrace"]};
				{ 16, 45850, "", "=q3=Rituals of the New Moon", "=ds=#p26#"};
				{ 17, 45851, "", "=q3=Rituals of the New Moon", "=ds=#p26#"};
				{ 18, 45852, "", "=q3=Rituals of the New Moon", "=ds=#p26#"};
				{ 19, 45853, "", "=q3=Rituals of the New Moon", "=ds=#p26#"};
				{ 20, 32782, "", "=q3=Time-Lost Figurine", "=ds="..AL["Terokk"]..": "..BabbleZone["Terokkar Forest"]};
				{ 21, 5462, "", "=q1=Dartol's Rod of Transformation", "=ds=#m4#: #QUESTID:1028#"};
				{ 22, 53057, "", "=q1=Faded Wizard Hat", "=ds=#m4#: #QUESTID:14392#"};
				{ 23, 43499, "", "=q1=Iron Boot Flask", "=ds="..AL["Vendor"]..": "..BabbleZone["The Storm Peaks"]};
				{ 24, 71259, "", "=q1=Leyara's Locket", "=ds=#m4#: #QUESTID:29311#"};
				{ 25, 66888, "", "=q1=Stave of Fur and Claw", "=ds="..BabbleFaction["Timbermaw Hold"]..": "..BabbleFaction["Exalted"]};
				{ 26, 17712, "", "=q1=Winter Veil Disguise Kit", "=ds="..AL["Feast of Winter Veil"]};
			};
		};
		info = {
			name = AL["Non-consumed Transformation Items"],
			module = moduleName, menu = "TRANSFORMATIONMENU",
		};
	}

	AtlasLoot_Data["TransformationConsumableItems"] = {
		["Normal"] = {
			{
				{ 1, 38320, "", "=q1=Dire Brew", "=ds="..BabbleZone["Blackrock Depths"]};
				{ 2, 63122, "", "=q1=Lifegiving Seed", "=ds="};
				{ 3, 43572, "", "=q1=Magic Eater", "=ds=#p24#: =ds="..BabbleZone["Dalaran"]};
				{ 4, 8529, "", "=q1=Noggenfogger Elixir", "=ds="..AL["Vendor"]..": "..BabbleZone["Tanaris"]};
				{ 5, 31337, "", "=q1=Orb of the Blackwhelp", "=ds="..AL["Vendor"]..": "..BabbleZone["Blade's Edge Mountains"]};
				{ 6, 58489, "", "=q1=Potion of Illusion", "=ds=#p1#"};
				{ 7, 40195, "", "=q1=Pygmy Oil", "=ds=#p1#"};
				{ 8, 6657, "", "=q1=Savory Deviate Delight", "=ds=#p3#"};
				{ 9, 44012, "", "=q1=Underbelly Elixir", "=ds="..BabbleZone["Dalaran"]};
			};
		};
		info = {
			name = AL["Consumable Transformation Items"],
			module = moduleName, menu = "TRANSFORMATIONMENU",
		};
	}

	AtlasLoot_Data["TransformationAdditionalEffects"] = {
		["Normal"] = {
			{
				{ 1, 71086, "", "=q5=Dragonwrath, Tarecgosa's Rest", "=ds=#w9#"};
				{ 2, 69897, "", "=q4=Fandral's Flamescythe", "=ds=#w9#"};
				{ 3, 39769, "", "=q4=Arcanite Ripper", "=ds=#h2#, #w1#"};
				{ 4, 50362, "", "=q4=Deathbringer's Will", "=ds=#s14#"};
				{ 5, 50363, "", "=q4=Deathbringer's Will", "=ds=#s14#"};
				{ 6, 65891, "", "=q4=Vial of the Sands", "=ds=#e12#"};
			};
		};
		info = {
			name = AL["Additional Effects Transformation Items"],
			module = moduleName, menu = "TRANSFORMATIONMENU",
		};
	}

		----------------------
		--- Heirloom Items ---
		----------------------

	AtlasLoot_Data["Heirloom"] = {
		["Normal"] = {
			{
				{ 1, 42985, "", "=q7=Tattered Dreadmist Mantle", "=ds=#s3#, #a1#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 2, 42984, "", "=q7=Preened Ironfeather Shoulders", "=ds=#s3#, #a2#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 3, 42952, "", "=q7=Stained Shadowcraft Spaulders", "=ds=#s3#, #a2#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 4, 42950, "", "=q7=Champion Herod's Shoulder", "=ds=#s3#, #a3#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 5, 42951, "", "=q7=Mystical Pauldrons of Elements", "=ds=#s3#, #a3#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 6, 69890, "", "=q7=Burnished Pauldrons of Might", "=ds=#s3#, #a4#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 7, 42949, "", "=q7=Polished Spaulders of Valor", "=ds=#s3#, #a4#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 9, 48691, "", "=q7=Tattered Dreadmist Robe", "=ds=#s5#, #a1#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 10, 48687, "", "=q7=Preened Ironfeather Breastplate", "=ds=#s5#, #a2#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 11, 48689, "", "=q7=Stained Shadowcraft Tunic", "=ds=#s5#, #a2#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 12, 48677, "", "=q7=Champion's Deathdealer Breastplate", "=ds=#s5#, #a3#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 13, 48683, "", "=q7=Mystical Vest of Elements", "=ds=#s5#, #a3#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 14, 69889, "", "=q7=Burnished Breastplate of Might", "=ds=#s5#, #a4#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 15, 48685, "", "=q7=Polished Breastplate of Valor", "=ds=#s5#, #a4#", "#JUSTICE:2175# / #CHAMPSEAL:60#"};
				{ 16, 50255, "", "=q7=Dread Pirate Ring", "=ds=#s13#", "=ds="..AL["Kalu'ak Fishing Derby"]};
				{ 18, 42992, "", "=q7=Discerning Eye of the Beast", "=ds=#s14#", "#JUSTICE:2725#  / #CHAMPSEAL:75#"};
				{ 19, 42991, "", "=q7=Swift Hand of Justice", "=ds=#s14#", "#JUSTICE:2725#  / #CHAMPSEAL:75#"};
				{ 21, 42944, "", "=q7=Balanced Heartseeker", "=ds=#h1#, #w4#", "#JUSTICE:2175#  / #CHAMPSEAL:60#"};
				{ 22, 69893, "", "=q7=Bloodsoaked Skullforge Reaver", "=ds=#h3#, #w10#", "#JUSTICE:2175#  / #CHAMPSEAL:60#"};
				{ 23, 42945, "", "=q7=Venerable Dal'Rend's Sacred Charge", "=ds=#h3#, #w10#", "#JUSTICE:2175#  / #CHAMPSEAL:60#"};
				{ 24, 42943, "", "=q7=Bloodied Arcanite Reaper", "=ds=#h2#, #w1#", "#JUSTICE:3500# / #CHAMPSEAL:95#"};
				{ 25, 42948, "", "=q7=Devout Aurastone Hammer", "=ds=#h3#, #w6#", "#JUSTICE:2725# / #CHAMPSEAL:75#"};
				{ 26, 48716, "", "=q7=Venerable Mass of McGowan", "=ds=#h1#, #w6#", "#JUSTICE:2175# / #CHAMPSEAL:75#"};
				{ 27, 48718, "", "=q7=Repurposed Lava Dredger", "=ds=#h2#, #w6#", "#JUSTICE:3500# / #CHAMPSEAL:95#"};
				{ 28, 42947, "", "=q7=Dignified Headmaster's Charge", "=ds=#w9#", "#JUSTICE:3500# / #CHAMPSEAL:95#"};
				{ 29, 42946, "", "=q7=Charmed Ancient Bone Bow", "=ds=#w2#", "#JUSTICE:3500# / #CHAMPSEAL:95#"};
			};
			{
				{ 1, 44107, "", "=q7=Exquisite Sunderseer Mantle", "=ds=#s3#, #a1#", "#HONOR:2175#"};
				{ 2, 44103, "", "=q7=Exceptional Stormshroud Shoulders", "=ds=#s3#, #a2#", "#HONOR:2175#"};
				{ 3, 44105, "", "=q7=Lasting Feralheart Spaulders", "=ds=#s3#, #a2#", "#HONOR:2175#"};
				{ 4, 44102, "", "=q7=Aged Pauldrons of The Five Thunders", "=ds=#s3#, #a3#", "#HONOR:2175#"};
				{ 5, 44101, "", "=q7=Prized Beastmaster's Mantle", "=ds=#s3#, #a3#", "#HONOR:2175#"};
				{ 6, 44100, "", "=q7=Pristine Lightforge Spaulders", "=ds=#s3#, #a4#", "#HONOR:2175#"};
				{ 7, 44099, "", "=q7=Strengthened Stockade Pauldrons", "=ds=#s3#, #a4#", "#HONOR:2175#"};
				{ 9, 44098, "", "=q7=Inherited Insignia of the Alliance", "=ds=#s14#", "#HONOR:2725#"};
				{ 10, 44097, "", "=q7=Inherited Insignia of the Horde", "=ds=#s14#", "#HONOR:2725#"};
				{ 16, 44091, "", "=q7=Sharpened Scarlet Kris", "=ds=#h1#, #w4#", "#HONOR:2175#"};
				{ 17, 44096, "", "=q7=Battleworn Thrash Blade", "=ds=#h1#, #w10#", "#HONOR:2175#"};
				{ 18, 44092, "", "=q7=Reforged Truesilver Champion", "=ds=#h2#, #w10#", "#HONOR:3500#"};
				{ 19, 44094, "", "=q7=The Blessed Hammer of Grace", "=ds=#h3#, #w6#", "#HONOR:2725#"};
				{ 20, 44095, "", "=q7=Grand Staff of Jordan", "=ds=#w9#", "#HONOR:3500#"};
				{ 21, 44093, "", "=q7=Upgraded Dwarven Hand Cannon", "=ds=#w5#", "#HONOR:3500#"};
			};
			{
				{ 2, 62040, "", "=q7=Ancient Bloodmoon Cloak", "=ds=#s4#", ""};
				{ 3, 62039, "", "=q7=Inherited Cape of the Black Baron", "=ds=#s4#", ""};
				{ 4, 69892, "", "=q7=Ripped Sandstorm Cloak", "=ds=#s4#", ""};
				{ 5, 62038, "", "=q7=Worn Stoneskin Gargoyle Cape", "=ds=#s4#", ""};
				{ 7, 61958, "", "=q7=Tattered Dreadmist Mask", "=ds=#s1#, #a1#", ""};
				{ 8, 61942, "", "=q7=Preened Tribal War Feathers", "=ds=#s1#, #a2#", ""};
				{ 9, 61937, "", "=q7=Stained Shadowcraft Cap", "=ds=#s1#, #a2#", ""};
				{ 10, 61936, "", "=q7=Mystical Coif of Elements", "=ds=#s1#, #a3#", ""};
				{ 11, 61935, "", "=q7=Tarnished Raging Berserker's Helm", "=ds=#s1#, #a3#", ""};
				{ 12, 69887, "", "=q7=Burnished Helm of Might", "=ds=#s1#, #a4#", ""};
				{ 13, 61931, "", "=q7=Polished Helm of Valor", "=ds=#s1#, #a4#", ""};
				{ 17, 62029, "", "=q7=Tattered Dreadmist Leggings", "=ds=#s11#, #a1#", ""};
				{ 18, 62027, "", "=q7=Preened Wildfeather Leggings", "=ds=#s11#, #a2#", ""};
				{ 19, 62026, "", "=q7=Stained Shadowcraft Pants", "=ds=#s11#, #a2#", ""};
				{ 20, 62025, "", "=q7=Mystical Kilt of Elements", "=ds=#s11#, #a3#", ""};
				{ 21, 62024, "", "=q7=Tarnished Leggings of Destruction", "=ds=#s11#, #a3#", ""};
				{ 22, 69888, "", "=q7=Burnished Legplates of Might", "=ds=#s11#, #a4#", ""};
				{ 23, 62023, "", "=q7=Polished Legplates of Valor", "=ds=#s11#, #a4#", ""};
			};
		};
		info = {
			name = AL["Heirloom"],
			module = moduleName, menu = "SETMENU",
		};
	}

		----------------------------
		--- Justice Points Items ---
		----------------------------

	AtlasLoot_Data["JusticePointsMoP"] = {
		["Normal"] = {
			{
				{ 2, 0, "achievement_faction_shadopan", "=q6=#r3#", "=ds="..BabbleFaction["Shado-Pan"]};
				{ 3, 89673, "", "=q3=Robe of Eternal Dynasty", "=ds=#s5#, #a1#", "#JUSTICE:2250#"};
				{ 4, 89672, "", "=q3=Robe of Quiet Meditation", "=ds=#s5#, #a1#", "#JUSTICE:2250#"};
				{ 6, 0, "achievement_faction_goldenlotus", "=q6=#r3#", "=ds="..BabbleFaction["Golden Lotus"]};
				{ 7, 89642, "", "=q3=Bracers of Eternal Resolve", "=ds=#s8#, #a1#", "#JUSTICE:1250#"};
				{ 8, 89643, "", "=q3=Tranquility Bindings", "=ds=#s8#, #a1#", "#JUSTICE:1250#"};
				{ 17, 0, "achievement_faction_klaxxi", "=q6=#r3#", "=ds="..BabbleFaction["The Klaxxi"]};
				{ 18, 89650, "", "=q3=Emperor's Riding Gloves", "=ds=#s9#, #a1#", "#JUSTICE:1750#"};
				{ 19, 89651, "", "=q3=Krompf's Fine-Tuning Gloves", "=ds=#s9#, #a1#", "#JUSTICE:1750#"};
				{ 21, 0, "achievement_faction_celestials", "=q6=#r3#", "=ds="..BabbleFaction["The August Celestials"]};
				{ 22, 89659, "", "=q3=Leggings of Unfinished Conquest", "=ds=#s11#, #a1#", "#JUSTICE:2250#"};
				{ 23, 89658, "", "=q3=Subversive Leggings", "=ds=#s11#, #a1#", "#JUSTICE:2250#"};
				extraText = ": "..BabbleInventory["Cloth"];
			};
			{
				{ 2, 0, "achievement_faction_celestials", "=q6=#r3#", "=ds="..BabbleFaction["The August Celestials"]};
				{ 3, 89667, "", "=q3=Refurbished Zandalari Vestment", "=ds=#s5#, #a2#", "#JUSTICE:2250#"};
				{ 4, 89666, "", "=q3=Vestment of the Ascendant Tribe", "=ds=#s5#, #a2#", "#JUSTICE:2250#"};
				{ 6, 0, "achievement_faction_klaxxi", "=q6=#r3#", "=ds="..BabbleFaction["The Klaxxi"]};
				{ 7, 89645, "", "=q3=Cruel Mercy Bracers", "=ds=#s8#, #a2#", "#JUSTICE:1250#"};
				{ 8, 89644, "", "=q3=Sudden Insight Bracers", "=ds=#s8#, #a2#", "#JUSTICE:1250#"};
				{ 17, 0, "achievement_faction_goldenlotus", "=q6=#r3#", "=ds="..BabbleFaction["Golden Lotus"]};
				{ 18, 89653, "", "=q3=Surehand Grips", "=ds=#s9#, #a2#", "#JUSTICE:1750#"};
				{ 19, 89652, "", "=q3=Wandering Friar's Gloves", "=ds=#s9#, #a2#", "#JUSTICE:1750#"};
				{ 21, 0, "achievement_faction_shadopan", "=q6=#r3#", "=ds="..BabbleFaction["Shado-Pan"]};
				{ 22, 89660, "", "=q3=Brambleguard Leggings", "=ds=#s11#, #a2#", "#JUSTICE:2250#"};
				{ 23, 89661, "", "=q3=Tough Mushanhide Leggings", "=ds=#s11#, #a2#", "#JUSTICE:2250#"};
				extraText = ": "..BabbleInventory["Leather"];
			};
			{
				{ 2, 0, "achievement_faction_celestials", "=q6=#r3#", "=ds="..BabbleFaction["The August Celestials"]};
				{ 3, 89668, "", "=q3=Mountain Stream Ringmail", "=ds=#s5#, #a3#", "#JUSTICE:2250#"};
				{ 4, 89669, "", "=q3=Undergrowth Stalker Chestpiece", "=ds=#s5#, #a3#", "#JUSTICE:2250#"};
				{ 6, 0, "achievement_faction_klaxxi", "=q6=#r3#", "=ds="..BabbleFaction["The Klaxxi"]};
				{ 7, 89647, "", "=q3=Entombed Traitor's Wristguards", "=ds=#s8#, #a3#", "#JUSTICE:1250#"};
				{ 8, 89646, "", "=q3=Runoff Wristguards", "=ds=#s8#, #a3#", "#JUSTICE:1250#"};
				{ 17, 0, "achievement_faction_shadopan", "=q6=#r3#", "=ds="..BabbleFaction["Shado-Pan"]};
				{ 18, 89655, "", "=q3=Brushcutter's Gloves", "=ds=#s9#, #a3#", "#JUSTICE:1750#"};
				{ 19, 89654, "", "=q3=Gloves of Forgotten Wisdom", "=ds=#s9#, #a3#", "#JUSTICE:1750#"};
				{ 21, 0, "achievement_faction_goldenlotus", "=q6=#r3#", "=ds="..BabbleFaction["Golden Lotus"]};
				{ 22, 89663, "", "=q3=Leggings of Twisted Vines", "=ds=#s11#, #a3#", "#JUSTICE:2250#"};
				{ 23, 89662, "", "=q3=Snowpack Waders", "=ds=#s11#, #a3#", "#JUSTICE:2250#"};
				extraText = ": "..BabbleInventory["Mail"];
			};
			{
				{ 2, 0, "achievement_faction_klaxxi", "=q6=#r3#", "=ds="..BabbleFaction["The Klaxxi"]};
				{ 3, 89671, "", "=q3=Chestplate of the Stone Lion", "=ds=#s5#, #a4#", "#JUSTICE:2250#"};
				{ 4, 89670, "", "=q3=Inner Serenity Chestplate", "=ds=#s5#, #a4#", "#JUSTICE:2250#"};
				{ 6, 0, "achievement_faction_goldenlotus", "=q6=#r3#", "=ds="..BabbleFaction["Golden Lotus"]};
				{ 7, 89648, "", "=q3=Bracers of Inner Light", "=ds=#s8#, #a4#", "#JUSTICE:1250#"};
				{ 8, 89649, "", "=q3=Serrated Forearm Guards", "=ds=#s8#, #a4#", "#JUSTICE:1250#"};
				{ 17, 0, "achievement_faction_shadopan", "=q6=#r3#", "=ds="..BabbleFaction["Shado-Pan"]};
				{ 18, 89656, "", "=q3=Gauntlets of Restraint", "=ds=#s9#, #a4#", "#JUSTICE:1750#"};
				{ 19, 89657, "", "=q3=Wall Breaker Gauntlets", "=ds=#s9#, #a4#", "#JUSTICE:1750#"};
				{ 21, 0, "achievement_faction_celestials", "=q6=#r3#", "=ds="..BabbleFaction["The August Celestials"]};
				{ 22, 89665, "", "=q3=Leggings of Ponderous Advance", "=ds=#s11#, #a4#", "#JUSTICE:2250#"};
				{ 23, 89664, "", "=q3=Valiant's Shinguards", "=ds=#s11#, #a4#", "#JUSTICE:2250#"};
				extraText = ": "..BabbleInventory["Plate"];
			};
			{
				{ 1, 0, "achievement_faction_celestials", "=q6=#r3#", "=ds="..BabbleFaction["The August Celestials"]};
				{ 2, 89532, "", "=q3=Bladesong Cloak", "=ds=#s4#", "#JUSTICE:1250#"};
				{ 3, 89533, "", "=q3=Cloak of Ancient Curses", "=ds=#s4#", "#JUSTICE:1250#"};
				{ 4, 89537, "", "=q3=Cloak of the Silent Mountain", "=ds=#s4#", "#JUSTICE:1250#"};
				{ 5, 89534, "", "=q3=Pressed Flower Cloak", "=ds=#s4#", "#JUSTICE:1250#"};
				{ 6, 89535, "", "=q3=Ribracker's Cloak", "=ds=#s4#", "#JUSTICE:1250#"};
				{ 8, 0, "achievement_faction_goldenlotus", "=q6=#r3#", "=ds="..BabbleFaction["Golden Lotus"]};
				{ 9, 89527, "", "=q3=Amulet of Swirling Mists", "=ds=#s2#", "#JUSTICE:1250#"};
				{ 10, 89531, "", "=q3=Gorget of Usurped Kings", "=ds=#s2#", "#JUSTICE:1250#"};
				{ 11, 89528, "", "=q3=Necklace of Jade Pearls", "=ds=#s2#", "#JUSTICE:1250#"};
				{ 12, 89529, "", "=q3=Pendant of Endless Inquisition", "=ds=#s2#", "#JUSTICE:1250#"};
				{ 13, 89530, "", "=q3=Triumphant Conqueror's Chain", "=ds=#s2#", "#JUSTICE:1250#"};
				{ 14, 89232, "", "=q3=Mogu Rune of Paralysis", "=ds=#s14#", "#JUSTICE:1750#"};
				{ 16, 0, "achievement_faction_shadopan", "=q6=#r3#", "=ds="..BabbleFaction["Shado-Pan"]};
				{ 17, 89523, "", "=q3=Etched Golden Loop", "=ds=#s13#", "#JUSTICE:1250#"};
				{ 18, 89522, "", "=q3=Mark of the Dancing Crane", "=ds=#s13#", "#JUSTICE:1250#"};
				{ 19, 89526, "", "=q3=Signet of the Slumbering Emperor", "=ds=#s13#", "#JUSTICE:1250#"};
				{ 20, 89524, "", "=q3=Sorcerer-King's Seal", "=ds=#s13#", "#JUSTICE:1250#"};
				{ 21, 89525, "", "=q3=Thunderstone Ring", "=ds=#s13#", "#JUSTICE:1250#"};
				extraText = ": "..AL["Accessories"];
			};
		};
		info = {
			name = AL["Justice Points"],
			module = moduleName, menu = "JPMOPMENU",
		};
	}