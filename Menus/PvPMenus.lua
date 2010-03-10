local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")


	AtlasLoot_Data["PVPMENUOLD"] = {
		{ 1, "AVMisc", "INV_Jewelry_Necklace_21", "=ds="..BabbleZone["Alterac Valley"], ""};
		{ 2, "ABMENU", "INV_Jewelry_Amulet_07", "=ds="..BabbleZone["Arathi Basin"], ""};
		{ 4, "Hellfire", "INV_Misc_Token_HonorHold", "=ds="..BabbleZone["Hellfire Peninsula"], "=q5="..AL["Hellfire Fortifications"]};
		{ 5, "Zangarmarsh", "Spell_Nature_ElementalPrecision_1", "=ds="..BabbleZone["Zangarmarsh"], "=q5="..AL["Twin Spire Ruins"]};
		{ 7, "WINTERGRASPMENU", "INV_Misc_Platnumdisks", "=ds="..BabbleZone["Wintergrasp"], ""};
		{ 9, "LEVEL60PVPREWARDS", "INV_Axe_02", "=ds="..AL["PvP Rewards (Level 60)"], ""};
		{ 10, "LEVEL80PVPREWARDS", "INV_Axe_02", "=ds="..AL["PvP Rewards (Level 80)"], ""};
		{ 16, "WSGMENU", "INV_Misc_Rune_07", "=ds="..BabbleZone["Warsong Gulch"], ""};
		{ 17, "ABSets1", "INV_Jewelry_Amulet_07", "=ds="..AL["Arathi Basin Sets"], ""};
		{ 19, "Terokkar", "INV_Jewelry_FrostwolfTrinket_04", "=ds="..BabbleZone["Terokkar Forest"], "=q5="..AL["Spirit Towers"]};
		{ 20, "Nagrand1", "INV_Misc_Rune_09", "=ds="..BabbleZone["Nagrand"], "=q5="..AL["Halaa"]};
		{ 22, "VentureBay1", "INV_Misc_Coin_16", "=ds="..BabbleZone["Grizzly Hills"], "=q5="..AL["Venture Bay"]};
		{ 24, "LEVEL70PVPREWARDS", "INV_Axe_02", "=ds="..AL["PvP Rewards (Level 70)"], ""};
	};

	AtlasLoot_Data["PVPMENU"] = {
		{ 2, "PvP60Accessories1_A", "INV_Jewelry_Talisman_09", "=ds="..AL["PvP Accessories"], "=q5="..AL["Level 60"]};
		{ 3, "PVPSET", "INV_Axe_02", "=ds="..AL["PvP Armor Sets"], "=q5="..AL["Level 60"]};
		{ 17, "PVPWeapons_A", "INV_Weapon_Bow_08", "=ds="..AL["PvP Weapons"], "=q5="..AL["Level 60"]};
		{ 5, "PvP70Accessories1_A", "INV_Jewelry_Talisman_09", "=ds="..AL["PvP Accessories"], "=q5="..AL["Level 70"]};
		{ 6, "PVP70RepSET", "INV_Axe_02", "=ds="..AL["PvP Reputation Sets"], "=q5="..AL["Level 70"]};
		{ 7, "ARENASET", "INV_Mace_36", "=ds="..AL["Arena PvP Sets"], "=q5="..AL["Level 70"]};
		{ 20, "PvP70NonSet1", "INV_Boots_05", "=ds="..AL["PvP Non-Set Epics"], "=q5="..AL["Level 70"]};
		{ 21, "Arena4Weapons1", "INV_Weapon_Crossbow_10", "=ds="..AL["Arena PvP Weapons"], "=q5="..AL["Level 70"]};
		{ 9, "LEVEL80PVPREWARDS", "INV_Axe_02", "=ds="..AL["PvP Rewards (Level 80)"], ""};
		{ 11, "WINTERGRASPMENU", "INV_Misc_Platnumdisks", "=ds="..BabbleZone["Wintergrasp"], ""};
		{ 26, "VentureBay1", "INV_Misc_Coin_16", "=ds="..BabbleZone["Grizzly Hills"], "=q5="..AL["Venture Bay"]};
	};

	AtlasLoot_Data["PVPSET"] = {
		{ 3, "PVPDruid", "Spell_Nature_Regeneration", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], ""};
		{ 4, "PVPMage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 5, "PVPPriest", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], ""};
		{ 6, "PVPShaman", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], ""};
		{ 7, "PVPWarrior", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
		{ 18, "PVPHunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 19, "PVPPaladin", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], ""};
		{ 20, "PVPRogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 21, "PVPWarlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		Back = "PVPMENU";
	};

	AtlasLoot_Data["ABMENU"] = {
		{ 2, "AB60", "INV_Jewelry_Amulet_07", "=ds="..AL["Level 60 Rewards"], ""};
		{ 3, "AB40491", "INV_Jewelry_Amulet_07", "=ds="..AL["Level 40-49 Rewards"], ""};
		{ 4, "AB20291", "INV_Jewelry_Amulet_07", "=ds="..AL["Level 20-29 Rewards"], ""};
		{ 17, "AB5059", "INV_Jewelry_Amulet_07", "=ds="..AL["Level 50-59 Rewards"], ""};
		{ 18, "AB3039", "INV_Jewelry_Amulet_07", "=ds="..AL["Level 30-39 Rewards"], ""};
		{ 19, "ABMisc", "INV_Jewelry_Amulet_07", "=ds="..AL["Misc. Rewards"], ""};
		Back = "PVPMENU";
	};

	AtlasLoot_Data["WSGMENU"] = {
		{ 2, "WSG60", "INV_Misc_Rune_07", "=ds="..AL["Level 60 Rewards"], ""};
		{ 3, "WSG4049", "INV_Misc_Rune_07", "=ds="..AL["Level 40-49 Rewards"], ""};
		{ 4, "WSG2029", "INV_Misc_Rune_07", "=ds="..AL["Level 20-29 Rewards"], ""};
		{ 5, "WSGMisc", "INV_Misc_Rune_07", "=ds="..AL["Misc. Rewards"], ""};
		{ 8, "WSGTest", "INV_Misc_Rune_07", "=ds=Test", ""};
		{ 17, "WSG5059", "INV_Misc_Rune_07", "=ds="..AL["Level 50-59 Rewards"], ""};
		{ 18, "WSG3039", "INV_Misc_Rune_07", "=ds="..AL["Level 30-39 Rewards"], ""};
		{ 19, "WSG1019", "INV_Misc_Rune_07", "=ds="..AL["Level 10-19 Rewards"], ""};
		Back = "PVPMENU";
	};
	
	-- PVP arena set BC
	AtlasLoot_Data["ARENASET"] = {
		{ 3, "ArenaDruidBalance", "Spell_Nature_InsectSwarm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
		{ 4, "ArenaDruidFeral", "Ability_Druid_Maul", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
		{ 5, "ArenaDruidRestoration", "Spell_Nature_Regeneration", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};		
		{ 7, "ArenaHunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};		
		{ 9, "ArenaMage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};		
		{ 11, "ArenaPaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 12, "ArenaPaladinProtection", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Protection"]};
		{ 13, "ArenaPaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};		
		{ 17, "ArenaPriestHoly", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "ArenaPriestShadow", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};		
		{ 20, "ArenaRogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};		
		{ 22, "ArenaShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "ArenaShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "ArenaShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};	
		{ 26, "ArenaWarlockDemonology", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], "=q5="..AL["Demonology"]};
		{ 27, "ArenaWarlockDestruction", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], "=q5="..AL["Destruction"]};
		{ 29, "ArenaWarrior", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
		Back = "PVPMENU";
	};

	AtlasLoot_Data["LEVEL60PVPREWARDS"] = {
		{ 2, "PvP60Accessories1_A", "INV_Jewelry_Talisman_09", "=ds="..AL["PvP Accessories"], "=q5="..AL["Level 60"]};
		{ 3, "PVPSET", "INV_Axe_02", "=ds="..AL["PvP Armor Sets"], "=q5="..AL["Level 60"]};
		{ 17, "PVPWeapons_A", "INV_Weapon_Bow_08", "=ds="..AL["PvP Weapons"], "=q5="..AL["Level 60"]};
		Back = "PVPMENU";
	};

	AtlasLoot_Data["LEVEL70PVPREWARDS"] = {
		{ 2, "PvP70Accessories1", "INV_Jewelry_Talisman_09", "=ds="..AL["PvP Accessories"], "=q5="..AL["Level 70"]};
		{ 3, "PVP70RepSET", "INV_Axe_02", "=ds="..AL["PvP Reputation Sets"], "=q5="..AL["Level 70"]};
		{ 5, "ARENASET", "INV_Mace_36", "=ds="..AL["Arena PvP Sets"], ""};
		{ 17, "PVP70NONSETEPICS", "INV_Boots_05", "=ds="..AL["PvP Non-Set Epics"], "=q5="..AL["Level 70"]};
		{ 22, "Arena4Weapons1", "INV_Weapon_Crossbow_10", "=ds="..AL["Arena PvP Weapons"], "=q5="..AL["Season 4"]};
		Back = "PVPMENU";
	};
	
	AtlasLoot_Data["PVP70RepSET"] = {
		{ 3, "PVP70RepLeather", "Spell_Nature_Regeneration", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], ""};
		{ 4, "PVP70RepCloth", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 5, "PVP70RepCloth", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], ""};
		{ 6, "PVP70RepMail", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], ""};
		{ 7, "PVP70RepPlate", "INV_Shield_05", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
		{ 18, "PVP70RepMail", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 19, "PVP70RepPlate", "Spell_Holy_SealOfMight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], ""};
		{ 20, "PVP70RepLeather", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 21, "PVP70RepCloth", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		Back = "PVPMENU";
	};

	AtlasLoot_Data["LEVEL80PVPREWARDS"] = {
		{ 2, "LEVEL80PVPSETS", "INV_Boots_01", "=ds="..AL["Arena PvP Sets"], "=q5="..AL["Level 80"], "" };
		{ 3, "PvP80ClassItems1", "Spell_Frost_SummonWaterElemental", "=ds="..AL["PvP Class Items"], "" };
		{ 4, "WrathfulGladiatorWeapons1", "INV_Sword_86", "=ds="..AL["Wrathful Gladiator\'s Weapons"], "" };
		{ 18, "PVP80NONSETEPICS", "INV_Jewelry_Necklace_36", "=ds="..AL["PvP Non-Set Epics"], ""};
		{ 19, "PvP80Misc", "INV_Scroll_06", "=ds="..AL["PvP Misc"], ""};
		Back = "PVPMENU";
	};

	AtlasLoot_Data["PVP80NONSETEPICS"] = {
		{ 2, "PvP80NonSet3", "INV_Boots_Cloth_12", "=ds="..BabbleInventory["Cloth"], ""};
		{ 3, "PvP80NonSet5", "INV_Boots_Plate_06", "=ds="..BabbleInventory["Mail"], ""};
		{ 4, "PvP80NonSet1", "INV_Jewelry_Necklace_36", "=ds="..AL["PvP Accessories"], ""};
		{ 17, "PvP80NonSet4", "INV_Boots_08", "=ds="..BabbleInventory["Leather"], ""};
		{ 18, "PvP80NonSet6", "INV_Boots_Plate_04", "=ds="..BabbleInventory["Plate"], ""};
		Back = "LEVEL80PVPREWARDS";
	};

	AtlasLoot_Data["LEVEL80PVPSETS"] = {
		{ 2, "PvP80DeathKnight", "Spell_Deathknight_DeathStrike", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], ""};
		{ 4, "PvP80DruidBalance", "Spell_Nature_InsectSwarm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Balance"]};
		{ 5, "PvP80DruidFeral", "Ability_Druid_Maul", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Feral"]};
		{ 6, "PvP80DruidRestoration", "Spell_Nature_Regeneration", "=ds="..LOCALIZED_CLASS_NAMES_MALE["DRUID"], "=q5="..AL["Restoration"]};
		{ 8, "PvP80Hunter", "Ability_Hunter_RunningShot", "=ds="..LOCALIZED_CLASS_NAMES_MALE["HUNTER"], ""};
		{ 10, "PvP80Mage", "Spell_Frost_IceStorm", "=ds="..LOCALIZED_CLASS_NAMES_MALE["MAGE"], ""};
		{ 12, "PvP80PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Holy"]};
		{ 13, "PvP80PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PALADIN"], "=q5="..AL["Retribution"]};
		{ 17, "PvP80PriestHoly", "Spell_Holy_PowerWordShield", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Holy"]};
		{ 18, "PvP80PriestShadow", "Spell_Shadow_AntiShadow", "=ds="..LOCALIZED_CLASS_NAMES_MALE["PRIEST"], "=q5="..AL["Shadow"]};
		{ 20, "PvP80Rogue", "Ability_BackStab", "=ds="..LOCALIZED_CLASS_NAMES_MALE["ROGUE"], ""};
		{ 22, "PvP80ShamanElemental", "Spell_Nature_Lightning", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Elemental"]};
		{ 23, "PvP80ShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Enhancement"]};
		{ 24, "PvP80ShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], "=q5="..AL["Restoration"]};
		{ 26, "PvP80Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARLOCK"], ""};
		{ 28, "PvP80Warrior", "Ability_Warrior_BattleShout", "=ds="..LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], ""};
		Back = "LEVEL80PVPREWARDS";
	};

	AtlasLoot_Data["WINTERGRASPMENU"] = {
		{ 2, "LakeWintergrasp2", "inv_helmet_136", "=ds="..BabbleInventory["Cloth"], ""};
		{ 3, "LakeWintergrasp3", "INV_Helmet_141", "=ds="..BabbleInventory["Leather"], ""};
		{ 4, "LakeWintergrasp4", "INV_Helmet_138", "=ds="..BabbleInventory["Mail"], ""};
		{ 5, "LakeWintergrasp5", "inv_helmet_134", "=ds="..BabbleInventory["Plate"], ""};
		{ 17, "LakeWintergrasp1", "inv_misc_rune_11", "=ds="..AL["Accessories"], ""};
		{ 18, "LakeWintergrasp7", "inv_sword_19", "=ds="..AL["Heirloom"], ""};
		{ 19, "LakeWintergrasp6", "inv_jewelcrafting_icediamond_02", "=ds="..AL["PVP Gems/Enchants/Jewelcrafting Designs"], ""};
		Back = "PVPMENU";
	};
	
	