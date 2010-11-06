local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")


	AtlasLoot_Data["SETMENU"] = {
		["Normal"] = {
			{
				{ 2, "WOTLKEMBLEMMENU", "inv_misc_frostemblem_01", "=ds="..AL["Emblem Rewards"], "=q5="..AL["Wrath of the Lich King"]};
				{ 3, "70TOKENMENU", "Spell_Holy_ChampionsBond", "=ds="..AL["Badge of Justice"].." "..AL["Rewards"], "=q5="..AL["Burning Crusade"]};
				{ 5, "WORLDEPICS", "INV_Sword_76", "=ds="..AL["BoE World Epics"], ""};
				{ 6, "Legendaries", "inv_hammer_unique_sulfuras", "=ds="..AL["Legendary Items"], ""};
				{ 7, "MOUNTMENU", "ability_hunter_pet_dragonhawk", "=ds="..AL["Mounts"], ""};
				{ 8, "PETMENU", "INV_Box_PetCarrier_01", "=ds="..AL["Companions"], ""};
				{ 9, "TABARDMENU", "inv_chest_cloth_30", "=ds="..AL["Tabards"], ""};
				{ 10, "TransformationItems", "inv_misc_orb_03", "=ds="..AL["Transformation Items"], ""};
				{ 11, "CardGame", "inv_misc_ogrepinata", "=ds="..AL["TCG Items"], ""};
				{ 13, "Heirloom", "INV_Sword_43", "=ds="..AL["Heirloom"], "=q5="..AL["Level 80"]};
				{ 14, "Heirloom85", "inv_helmet_04", "=ds="..AL["Heirloom"], "=q5="..AL["Level 85"]};
				{ 17, "SETSMISCMENU", "inv_misc_monsterscales_15", "=ds="..AL["Misc Sets"], ""};
				{ 19, "T1T2T3SET", "INV_Pants_Mail_03", "=ds="..AL["Tier 1/2/3 Set"], "=q5="..AL["Classic WoW"]};
				{ 20, "T456SET", "INV_Gauntlets_63", "=ds="..AL["Tier 4/5/6 Set"], "=q5="..AL["Burning Crusade"]};
				{ 21, "T7T8SET", "INV_Chest_Chain_15", "=ds="..AL["Tier 7/8 Set"], "=q5="..AL["Wrath of the Lich King"]};
				{ 22, "T9SET", "inv_gauntlets_80", "=ds="..AL["Tier 9 Set"], "=q5="..AL["Wrath of the Lich King"]};
				{ 23, "T10SET", "inv_chest_plate_26", "=ds="..AL["Tier 10 Set"], "=q5="..AL["Wrath of the Lich King"]};
				{ 24, "T11SET", "inv_chest_plate_26", "=ds="..AL["Tier 11 Set"], "=q5="..AL["Cataclysm"]};
			};
		};
		info = {
			name = AL["Collections"],
		};
	}

	AtlasLoot_Data["70TOKENMENU"] = {
		["Normal"] = {
			{
				{ 2, "HardModeCloth", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Cloth"], ""};
				{ 3, "HardModeMail", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Mail"], ""};
				{ 4, "HardModeResist", "Spell_Holy_ChampionsBond", "=ds="..AL["Fire Resistance Gear"], ""};
				{ 6, "HardModeRelic", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Relic"], ""};
				{ 8, "HardModeWeapons", "Spell_Holy_ChampionsBond", "=ds="..AL["Weapons"], ""};
				{ 17, "HardModeLeather", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Leather"], ""};
				{ 18, "HardModePlate", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Plate"], ""};
				{ 19, "HardModeCloaks", "Spell_Holy_ChampionsBond", "=ds="..BabbleInventory["Back"], ""};
				{ 21, "HardModeArena", "Spell_Holy_ChampionsBond", "=ds="..AL["PvP Rewards"], ""};
				{ 23, "HardModeAccessories", "Spell_Holy_ChampionsBond", "=ds="..AL["Accessories"], ""};
			};
		};
		info = {
			name = AL["Badge of Justice"].." "..AL["Rewards"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["WOTLKEMBLEMMENU"] = {
		["Normal"] = {
			{
				{ 2, "EmblemofFrost", "inv_misc_frostemblem_01", "=ds="..AL["Emblem of Frost"], "=q5="..BabbleInventory["Armor"].." & "..AL["Weapons"]};
				{ 4, "EmblemofTriumph", "spell_holy_summonchampion", "=ds="..AL["Emblem of Triumph"], "=q5="..BabbleInventory["Armor"]};
				{ 5, "EmblemofTriumph2", "spell_holy_summonchampion", "=ds="..AL["Emblem of Triumph"], "=q5="..AL["Accessories"].." & "..AL["Weapons"]};
				{ 7, "EmblemofConquest", "Spell_Holy_ChampionsGrace", "=ds="..AL["Emblem of Conquest"], "=q5="..BabbleInventory["Armor"]};
				{ 9, "EmblemofValor", "Spell_Holy_ProclaimChampion_02", "=ds="..AL["Emblem of Valor"], "=q5="..BabbleInventory["Armor"]};
				{ 11, "EmblemofHeroism", "Spell_Holy_ProclaimChampion", "=ds="..AL["Emblem of Heroism"], "=q5="..BabbleInventory["Armor"].." & "..AL["Weapons"]};
				{ 12, "EmblemofHeroism#3", "Spell_Holy_ProclaimChampion", "=ds="..AL["Emblem of Heroism"], "=q5="..BabbleInventory["Miscellaneous"]};
				{ 14, "PVP80SET", "INV_Boots_01", "=ds="..AL["PvP Armor Sets"], "=q5="..AL["Level 80"]};
				{ 17, "T10SET", "inv_misc_frostemblem_01", "=ds="..AL["Tier 10 Set"], "=q5="..AL["10/25 Man"]};
				{ 19, "T9SET", "spell_holy_summonchampion", "=ds="..AL["Tier 9 Set"], "=q5="..AL["10/25 Man"]};
				{ 22, "EmblemofConquest#2", "Spell_Holy_ChampionsGrace", "=ds="..AL["Emblem of Conquest"], "=q5="..AL["Accessories"]};
				{ 24, "EmblemofValor#2", "Spell_Holy_ProclaimChampion_02", "=ds="..AL["Emblem of Valor"], "=q5="..AL["Accessories"]};
				{ 26, "EmblemofHeroism#2", "Spell_Holy_ProclaimChampion", "=ds="..AL["Emblem of Heroism"], "=q5="..AL["Accessories"]};
			};
		};
		info = {
			name = AL["Emblem Rewards"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["WORLDEPICS"] = {
		["Normal"] = {
			{
				{ 2, "WorldEpics80", "INV_Sword_109", "=ds="..AL["Level 80"], ""};
				{ 3, "WorldEpics5060", "INV_Jewelry_Amulet_01", "=ds="..AL["Level 50-60"], ""};
				{ 4, "WorldEpics3039", "INV_Jewelry_Ring_15", "=ds="..AL["Level 30-39"], ""};
				{ 17, "WorldEpics70", "INV_Sword_76", "=ds="..AL["Level 70"], ""};
				{ 18, "WorldEpics4049", "INV_Staff_29", "=ds="..AL["Level 40-49"], ""};
			};
		};
		info = {
			name = AL["BoE World Epics"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["MOUNTMENU"] = {
		["Normal"] = {
			{
				{ 2, "MountsAlliance", "achievement_pvp_a_16", "=ds="..BabbleFaction["Darnassus"].." / "..BabbleFaction["Gnomeregan"], "=ec1="..AL["Alliance Mounts"]};
				{ 3, "MountsAlliance#2", "achievement_pvp_a_16", "=ds="..BabbleFaction["Ironforge"].." / "..BabbleFaction["Exodar"].." / "..BabbleFaction["Stormwind"], "=ec1="..AL["Alliance Mounts"]};
				{ 4, "MountsAlliance#3", "achievement_pvp_a_16", "=ds="..AL["Alliance Flying Mounts"].." / "..BabbleFaction["Kurenai"], "=ec1="..AL["Alliance Mounts"]};
				{ 5, "MountsAlliance#4", "achievement_pvp_a_16", "=ds="..BabbleZone["Dalaran"].." / "..AL["Misc"], "=ec1="..AL["Alliance Mounts"]};
				{ 7, "MountsFaction", "ability_mount_warhippogryph", "=ds="..AL["Neutral Faction Mounts"], ""};
				{ 8, "MountsRare", "ability_mount_drake_bronze", "=ds="..AL["Rare Mounts"], ""};
				{ 9, "MountsCraftQuest", "ability_mount_gyrocoptorelite", "=ds="..BabbleInventory["Quest"].." / "..AL["Crafted Mounts"], ""};
				{ 10, "MountsEvent", "achievement_halloween_witch_01", "=ds="..AL["World Events"], ""};
				{ 11, "MountsCata", "INV_Misc_Coin_01", "=ds="..AL["Cataclysm"], ""};
				{ 17, "MountsHorde", "achievement_pvp_h_16", "=ds="..BabbleFaction["Orgrimmar"].." / "..BabbleFaction["Silvermoon City"], "=ec1="..AL["Horde Mounts"]};
				{ 18, "MountsHorde#2", "achievement_pvp_h_16", "=ds="..BabbleFaction["Darkspear Trolls"].." / "..BabbleFaction["Thunder Bluff"].." / "..BabbleFaction["Undercity"], "=ec1="..AL["Horde Mounts"]};
				{ 19, "MountsHorde#3", "achievement_pvp_h_16", "=ds="..AL["Horde Flying Mounts"].." / "..BabbleFaction["The Mag'har"], "=ec1="..AL["Horde Mounts"]};
				{ 20, "MountsHorde#4", "achievement_pvp_h_16", "=ds="..BabbleZone["Dalaran"].." / "..AL["Misc"], "=ec1="..AL["Horde Mounts"]};
				{ 22, "MountsPvP", "ability_mount_netherdrakeelite", "=ds="..AL["PvP Mounts"], ""};
				{ 23, "MountsAchievement", "achievement_halloween_witch_01", "=ds="..AL["Achievement Reward"], ""};
				{ 24, "MountsPromotion", "ability_mount_bigblizzardbear", "=ds="..AL["Promotional Mounts"], ""};
				{ 25, "MountsRemoved", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Unobtainable Mounts"], ""};
			};
		};
		info = {
			name = AL["Mounts"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["PETMENU"] = {
		["Normal"] = {
			{
				{ 2, "PetsMerchant", "spell_nature_polymorph", "=ds="..AL["Merchant Sold Companions"], ""};
				{ 3, "PetsRare", "spell_shaman_hex", "=ds="..AL["Rare Companions"], ""};
				{ 4, "PetsPromotional", "inv_netherwhelp", "=ds="..AL["Promotional Companions"], ""};
				{ 5, "PetsRemoved", "inv_pet_babyblizzardbear", "=ds="..AL["Unobtainable Companions"], ""};
				{ 17, "PetsQuestCrafted", "inv_drink_19", "=ds="..BabbleInventory["Quest"].." / "..AL["Crafted"], ""};
				{ 18, "PetsEvent", "inv_pet_egbert", "=ds="..AL["World Events"], ""};
				{ 19, "PetsPetStore", "INV_Misc_Coin_01", "=ds="..AL["Companion Store"], ""};
				{ 20, "PetsAccessories", "inv_misc_petbiscuit_01", "=ds="..AL["Accessories"], ""};
				{ 21, "PetsCata", "INV_Misc_Coin_01", "=ds="..AL["Cataclysm"], ""};
			};
		};
		info = {
			name = AL["Companions"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["TABARDMENU"] = {
		["Normal"] = {
			{
				{ 2, "TabardsClassic", "inv_shirt_guildtabard_01", "=ds="..AL["Classic Tabards"], ""};
				{ 3, "TabardsWrath", "inv_chest_cloth_30", "=ds="..AL["Wrath of the Lich King Tabards"], ""};
				{ 4, "TabardsCardGame", "inv_misc_tabardpvp_02", "=ds="..AL["Card Game Tabards"], ""};
				{ 17, "TabardsBurningCrusade", "inv_misc_tabardpvp_01", "=ds="..AL["The Burning Crusade Tabards"], ""};
				--{ 18, "TabardsCataclysm", "inv_shirt_guildtabard_01", "=ds="..AL["Cataclysm Tabards"], ""};
				{ 19, "TabardsRemoved", "INV_Jewelry_Ring_15", "=ds="..AL["Unobtainable Tabards"], ""};
			};
		};
		info = {
			name = AL["Tabards"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["SETSMISCMENU"] = {
		["Normal"] = {
			{
				{ 2, "SETSCLASSIC", "INV_Sword_43", "=ds="..AL["Classic WoW"].." "..AL["Sets"], ""};
				{ 3, "WOTLKSets", "inv_misc_monsterscales_15", "=ds="..AL["Wrath of the Lich King"].." "..AL["Sets"], ""};
				{ 5, "ZGSets", "achievement_boss_hakkar", "=ds="..BabbleZone["Zul'Gurub"].." "..AL["Set"], "=q5="..AL["Classic WoW"]};
				{ 6, "AQ20Sets", "achievement_boss_ossiriantheunscarred", "=ds="..BabbleZone["Ruins of Ahn'Qiraj"].." "..AL["Set"], "=q5="..AL["Classic WoW"]};
				{ 8, "T0SET", "INV_Chest_Chain_03", "=ds="..AL["Dungeon Set 1/2"], "=q5="..AL["Classic WoW"]};
				{ 17, "TBCSets", "INV_Weapon_Glave_01", "=ds="..AL["Burning Crusade"].." "..AL["Sets"], ""};
				{ 20, "AQ40Sets", "achievement_boss_cthun", "=ds="..BabbleZone["Temple of Ahn'Qiraj"].." "..AL["Set"], "=q5="..AL["Classic WoW"]};
				{ 23, "DS3SET", "INV_Helmet_15", "=ds="..AL["Dungeon Set 3"], "=q5="..AL["Burning Crusade"]};
			};
		};
		info = {
			name = AL["Misc Sets"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["SETSCLASSIC"] = {
		["Normal"] = {
			{
				{ 2, "VWOWSets#1", "INV_Pants_12", "=ds="..AL["Defias Leather"], "=q5="..BabbleZone["The Deadmines"]};
				{ 3, "VWOWSets#1", "INV_Shirt_16", "=ds="..AL["Embrace of the Viper"], "=q5="..BabbleZone["Wailing Caverns"]};
				{ 4, "VWOWSets#1", "INV_Gauntlets_19", "=ds="..AL["Chain of the Scarlet Crusade"], "=q5="..BabbleZone["Scarlet Monastery"]};
				{ 5, "VWOWSets#1", "INV_Helmet_01", "=ds="..AL["The Gladiator"], "=q5="..BabbleZone["Blackrock Depths"]};
				{ 6, "VWOWSets#2", "INV_Boots_Cloth_05", "=ds="..AL["Ironweave Battlesuit"], "=q5="..AL["Various Locations"]};
				{ 7, "VWOWSets#2", "INV_Boots_02", "=ds="..AL["The Postmaster"], "=q5="..BabbleZone["Stratholme"]};
				{ 8, "VWOWScholo", "INV_Shoulder_02", "=ds="..AL["Necropile Raiment"], "=q5="..BabbleZone["Scholomance"]};
				{ 9, "VWOWScholo", "INV_Belt_16", "=ds="..AL["Cadaverous Garb"], "=q5="..BabbleZone["Scholomance"]};
				{ 10, "VWOWScholo", "INV_Gauntlets_26", "=ds="..AL["Bloodmail Regalia"], "=q5="..BabbleZone["Scholomance"]};
				{ 11, "VWOWScholo", "INV_Belt_12", "=ds="..AL["Deathbone Guardian"], "=q5="..BabbleZone["Scholomance"]};
				{ 17, "VWOWSets#3", "INV_Weapon_ShortBlade_16", "=ds="..AL["Spider's Kiss"], "=q5="..BabbleZone["Lower Blackrock Spire"]};
				{ 18, "VWOWSets#3", "INV_Sword_43", "=ds="..AL["Dal'Rend's Arms"], "=q5="..BabbleZone["Upper Blackrock Spire"]};
				{ 19, "VWOWZulGurub", "INV_Bijou_Orange", "=ds="..AL["Zul'Gurub Rings"], "=q5="..BabbleZone["Zul'Gurub"]};
				{ 20, "VWOWZulGurub", "INV_Weapon_Hand_01", "=ds="..AL["Primal Blessing"], "=q5="..BabbleZone["Zul'Gurub"]};
				{ 21, "VWOWZulGurub", "INV_Sword_55", "=ds="..AL["The Twin Blades of Hakkari"], "=q5="..BabbleZone["Zul'Gurub"]};
				{ 22, "VWOWSets#3", "INV_Misc_MonsterScales_15", "=ds="..AL["Shard of the Gods"], "=q5="..AL["Various Locations"]};
				{ 23, "VWOWSets#3", "INV_Misc_MonsterClaw_04", "=ds="..AL["Spirit of Eskhandar"], "=q5="..AL["Various Locations"]};
			};
		};
		info = {
			name = AL["Classic WoW"].." "..AL["Sets"],
			menu = "SETSMISCMENU",
		};
	}

	AtlasLoot_Data["T0SET"] = {
		["Normal"] = {
			{
				{ 3, "T0Druid", "ability_druid_maul", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], ""};
				{ 4, "T0Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 5, "T0Priest", "inv_staff_30", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], ""};
				{ 6, "T0Shaman", "spell_nature_bloodlust", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], ""};
				{ 7, "T0Warrior", "inv_sword_27", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
				{ 18, "T0Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 19, "T0Paladin", "ability_thunderbolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], ""};
				{ 20, "T0Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 21, "T0Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
			};
		};
		info = {
			name = AL["Dungeon Set 1/2"],
			menu = "SETSMISCMENU",
		};
	}

	AtlasLoot_Data["DS3SET"] = {
		["Normal"] = {
			{
				{ 2, "DS3Cloth", "Spell_Holy_InnerFire", "=ds="..AL["Hallowed Raiment"], "=q5="..BabbleInventory["Cloth"]};
				{ 3, "DS3Cloth", "INV_Elemental_Mote_Nether", "=ds="..AL["Mana-Etched Regalia"], "=q5="..BabbleInventory["Cloth"]};
				{ 5, "DS3Leather", "Ability_Rogue_SinisterCalling", "=ds="..AL["Assassination Armor"], "=q5="..BabbleInventory["Leather"]};
				{ 6, "DS3Leather", "Ability_Hunter_RapidKilling", "=ds="..AL["Wastewalker Armor"], "=q5="..BabbleInventory["Leather"]};
				{ 8, "DS3Mail", "Ability_Hunter_Pet_Wolf", "=ds="..AL["Beast Lord Armor"], "=q5="..BabbleInventory["Mail"]};
				{ 9, "DS3Mail", "INV_Helmet_70", "=ds="..AL["Tidefury Raiment"], "=q5="..BabbleInventory["Mail"]};
				{ 11, "DS3Plate", "Spell_Fire_EnchantWeapon", "=ds="..AL["Bold Armor"], "=q5="..BabbleInventory["Plate"]};
				{ 12, "DS3Plate", "INV_Hammer_02", "=ds="..AL["Righteous Armor"], "=q5="..BabbleInventory["Plate"]};
				{ 17, "DS3Cloth", "Ability_Creature_Cursed_04", "=ds="..AL["Incanter's Regalia"], "=q5="..BabbleInventory["Cloth"]};
				{ 18, "DS3Cloth", "Ability_Creature_Cursed_03", "=ds="..AL["Oblivion Raiment"], "=q5="..BabbleInventory["Cloth"]};
				{ 20, "DS3Leather", "Spell_Holy_SealOfRighteousness", "=ds="..AL["Moonglade Raiment"], "=q5="..BabbleInventory["Leather"]};
				{ 23, "DS3Mail", "Ability_FiegnDead", "=ds="..AL["Desolation Battlegear"], "=q5="..BabbleInventory["Mail"]};
				{ 26, "DS3Plate", "INV_Helmet_08", "=ds="..AL["Doomplate Battlegear"], "=q5="..BabbleInventory["Plate"]};
			};
		};
		info = {
			name = AL["Dungeon Set 3"],
			menu = "SETSMISCMENU",
		};
	}

	AtlasLoot_Data["T1T2T3SET"] = {
		["Normal"] = {
			{
				{ 1, "T1T2Druid", "ability_druid_maul", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Tier 1/2 Set"]};
				{ 2, "T3Druid", "ability_druid_maul", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Tier 3 Set"]};
				{ 4, "T1T2Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], "=q5="..AL["Tier 1/2 Set"]};
				{ 5, "T3Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], "=q5="..AL["Tier 3 Set"]};
				{ 7, "T1T2Priest", "inv_staff_30", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Tier 1/2 Set"]};
				{ 8, "T3Priest", "inv_staff_30", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Tier 3 Set"]};
				{ 10, "T1T2Shaman", "spell_nature_bloodlust", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Tier 1/2 Set"]};
				{ 11, "T3Shaman", "spell_nature_bloodlust", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Tier 3 Set"]};
				{ 13, "T1T2Warrior", "inv_sword_27", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Tier 1/2 Set"]};
				{ 14, "T3Warrior", "inv_sword_27", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Tier 3 Set"]};
				{ 17, "T1T2Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], "=q5="..AL["Tier 1/2 Set"]};
				{ 18, "T3Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], "=q5="..AL["Tier 3 Set"]};
				{ 20, "T1T2Paladin", "ability_thunderbolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Tier 1/2 Set"]};
				{ 21, "T3Paladin", "ability_thunderbolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Tier 3 Set"]};
				{ 23, "T1T2Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], "=q5="..AL["Tier 1/2 Set"]};
				{ 24, "T3Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], "=q5="..AL["Tier 3 Set"]};
				{ 26, "T1T2Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], "=q5="..AL["Tier 1/2 Set"]};
				{ 27, "T3Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], "=q5="..AL["Tier 3 Set"]};
			};
		};
		info = {
			name = AL["Tier 1/2/3 Set"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["T456SET"] = {
		["Normal"] = {
			{
				{ 3, "T456DruidBalance", "spell_nature_starfall", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 4, "T456DruidFeral", "ability_racial_bearform", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
				{ 5, "T456DruidRestoration", "spell_nature_healingtouch", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 7, "T456Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 9, "T456Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 11, "T456PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 12, "T456PaladinProtection", "spell_holy_devotionaura", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
				{ 13, "T456PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 17, "T456PriestHoly", "spell_holy_guardianspirit", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
				{ 18, "T456PriestShadow", "spell_shadow_shadowwordpain", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 20, "T456Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 22, "T456ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 23, "T456ShamanEnhancement", "spell_nature_lightningshield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 24, "T456ShamanRestoration", "spell_nature_magicimmunity", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 26, "T456Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 28, "T456WarriorFury", "ability_warrior_innerrage", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
				{ 29, "T456WarriorProtection", "ability_warrior_defensivestance", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
			};
		};
		info = {
			name = AL["Tier 4/5/6 Set"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["T7T8SET"] = {
		["Normal"] = {
			{
				{ 2, "NaxxDeathKnightDPS", "spell_deathknight_frostpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
				{ 3, "NaxxDeathKnightTank", "spell_deathknight_bloodpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
				{ 5, "NaxxDruidBalance", "spell_nature_starfall", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 6, "NaxxDruidFeral", "ability_racial_bearform", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
				{ 7, "NaxxDruidRestoration", "spell_nature_healingtouch", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 9, "NaxxHunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 11, "NaxxMage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 13, "NaxxPaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 14, "NaxxPaladinProtection", "spell_holy_devotionaura", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
				{ 15, "NaxxPaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 17, "NaxxPriestHoly", "spell_holy_guardianspirit", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
				{ 18, "NaxxPriestShadow", "spell_shadow_shadowwordpain", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 20, "NaxxRogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 22, "NaxxShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 23, "NaxxShamanEnhancement", "spell_nature_lightningshield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 24, "NaxxShamanRestoration", "spell_nature_magicimmunity", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 26, "NaxxWarlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 28, "NaxxWarriorFury", "ability_warrior_innerrage", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
				{ 29, "NaxxWarriorProtection", "ability_warrior_defensivestance", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
			};
		};
		info = {
			name = AL["Tier 7/8 Set"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["T9SET"] = {
		["Normal"] = {
			{
				{ 2, "T9DeathKnightDPS", "spell_deathknight_frostpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
				{ 3, "T9DeathKnightTank", "spell_deathknight_bloodpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
				{ 5, "T9DruidBalance", "spell_nature_starfall", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 6, "T9DruidFeral", "ability_racial_bearform", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
				{ 7, "T9DruidRestoration", "spell_nature_healingtouch", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 9, "T9Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 11, "T9Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 13, "T9PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 14, "T9PaladinProtection", "spell_holy_devotionaura", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
				{ 15, "T9PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 17, "T9PriestHoly", "spell_holy_guardianspirit", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
				{ 18, "T9PriestShadow", "spell_shadow_shadowwordpain", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 20, "T9Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 22, "T9ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 23, "T9ShamanEnhancement", "spell_nature_lightningshield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 24, "T9ShamanRestoration", "spell_nature_magicimmunity", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 26, "T9Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 28, "T9WarriorFury", "ability_warrior_innerrage", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
				{ 29, "T9WarriorProtection", "ability_warrior_defensivestance", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
			};
		};
		info = {
			name = AL["Tier 9 Set"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["T10SET"] = {
		["Normal"] = {
			{
				{ 2, "T10DeathKnightDPS", "spell_deathknight_frostpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
				{ 3, "T10DeathKnightTank", "spell_deathknight_bloodpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
				{ 5, "T10DruidBalance", "spell_nature_starfall", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 6, "T10DruidFeral", "ability_racial_bearform", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
				{ 7, "T10DruidRestoration", "spell_nature_healingtouch", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 9, "T10Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 11, "T10Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 13, "T10PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 14, "T10PaladinProtection", "spell_holy_devotionaura", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
				{ 15, "T10PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 17, "T10PriestHoly", "spell_holy_guardianspirit", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
				{ 18, "T10PriestShadow", "spell_shadow_shadowwordpain", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 20, "T10Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 22, "T10ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 23, "T10ShamanEnhancement", "spell_nature_lightningshield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 24, "T10ShamanRestoration", "spell_nature_magicimmunity", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 26, "T10Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 28, "T10WarriorFury", "ability_warrior_innerrage", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
				{ 29, "T10WarriorProtection", "ability_warrior_defensivestance", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
			};
		};
		info = {
			name = AL["Tier 10 Set"],
			menu = "SETMENU",
		};
	}

	AtlasLoot_Data["T11SET"] = {
		["Normal"] = {
			{
				{ 2, "T11DeathKnightDPS", "spell_deathknight_frostpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["DPS"]};
				{ 3, "T11DeathKnightTank", "spell_deathknight_bloodpresence", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], "=q5="..AL["Tanking"]};
				{ 5, "T11DruidBalance", "spell_nature_starfall", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
				{ 6, "T11DruidFeral", "ability_racial_bearform", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
				{ 7, "T11DruidRestoration", "spell_nature_healingtouch", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
				{ 9, "T11Hunter", "inv_weapon_bow_07", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
				{ 11, "T11Mage", "inv_staff_13", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
				{ 13, "T11PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
				{ 14, "T11PaladinProtection", "spell_holy_devotionaura", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
				{ 15, "T11PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
				{ 17, "T11PriestHoly", "spell_holy_guardianspirit", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
				{ 18, "T11PriestShadow", "spell_shadow_shadowwordpain", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
				{ 20, "T11Rogue", "inv_throwingknife_04", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
				{ 22, "T11ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
				{ 23, "T11ShamanEnhancement", "spell_nature_lightningshield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
				{ 24, "T11ShamanRestoration", "spell_nature_magicimmunity", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
				{ 26, "T11Warlock", "spell_nature_drowsy", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
				{ 28, "T11WarriorFury", "ability_warrior_innerrage", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Fury"]};
				{ 29, "T11WarriorProtection", "ability_warrior_defensivestance", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], "=q5="..AL["Protection"]};
			};
		};
		info = {
			name = AL["Tier 11 Set"],
			menu = "SETMENU",
		};
	}