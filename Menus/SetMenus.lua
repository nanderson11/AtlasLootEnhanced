local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetLookupTable();
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

AtlasLoot_Data["SETMENU"] = {
        { 2, "70TOKENMENU", "Spell_Holy_ChampionsBond", "=ds="..AL["Badge of Justice Rewards"], "=q5="..AL["Burning Crusade"]};
        { 3, "EmblemofHeroism", "Spell_Holy_ProclaimChampion", "=ds="..AL["Emblem of Heroism Rewards"], "=q5="..AL["Wrath of the Lich King"]};
        { 4, "EmblemofValor", "Spell_Holy_ProclaimChampion_02", "=ds="..AL["Emblem of Valor Rewards"], "=q5="..AL["Wrath of the Lich King"]};
        { 5, "WORLDEPICS", "INV_Sword_76", "=ds="..AL["BoE World Epics"], ""};
        { 6, "Legendaries", "INV_Staff_Medivh", "=ds="..AL["Legendary Items"], ""};
        { 7, "MOUNTMENU", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Mounts"], ""};
        { 8, "Pets1", "INV_Box_PetCarrier_01", "=ds="..AL["Non-Combat Pets"], ""};
        { 9, "Tabards3", "INV_Shirt_GuildTabard_01", "=ds="..AL["Tabards"], ""};
        { 10, "CardGame1", "INV_Misc_Ticket_Tarot_Madness", "=ds="..AL["Upper Deck Card Game Items"], ""};
        { 13, "PVPMENU", "INV_Axe_02", "=ds="..AL["PvP Rewards"], ""};
        { 17, "SETSMISCMENU", "INV_Sword_43", "=ds="..AL["Misc Sets"], ""};
        { 18, "ZGSets1", "INV_Jewelry_Necklace_19", "=ds="..AL["Zul'Gurub Sets"], ""};
        { 19, "AQ20Sets1", "INV_Jewelry_Ring_AhnQiraj_03", "=ds="..AL["Ruins of Ahn'Qiraj Sets"], ""};
        { 20, "AQ40Sets1", "INV_Sword_59", "=ds="..AL["Temple of Ahn'Qiraj Sets"], ""};
        { 22, "T0SET", "INV_Chest_Chain_03", "=ds="..AL["Dungeon 1/2 Sets"], ""};
        { 23, "DS3SET", "INV_Helmet_15", "=ds="..AL["Dungeon 3 Sets"], ""};
        { 24, "T1T2SET", "INV_Pants_Mail_03", "=ds="..AL["Tier 1/2 Sets"], ""};
        { 25, "T3SET", "INV_Pants_Cloth_05", "=ds="..AL["Tier 3 Sets"], ""};
        { 26, "T456SET", "INV_Gauntlets_63", "=ds="..AL["Tier 4/5/6 Sets"], ""};
        { 27, "T7SET", "INV_Chest_Chain_15", "=ds="..AL["Tier 7/8 Sets"], "=q5="..AL["10/25 Man"]};
	};

AtlasLoot_Data["70TOKENMENU"] = {
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
        Back = "SETMENU";
	};

AtlasLoot_Data["EMBLEMOFHEROISMMENU"] = {
        { 2, "EmblemofHeroismCloth", "Spell_Holy_ProclaimChampion", "=ds="..BabbleInventory["Cloth"], ""};
        { 3, "EmblemofHeroismMail", "Spell_Holy_ProclaimChampion", "=ds="..BabbleInventory["Mail"], ""};
        { 5, "EmblemofHeroismWeapons", "Spell_Holy_ProclaimChampion", "=ds="..AL["Weapons"], ""};
        { 6, "EmblemofHeroismTokens", "Spell_Holy_ProclaimChampion", "=ds="..AL["Tokens"], ""};
        { 17, "EmblemofHeroismLeather", "Spell_Holy_ProclaimChampion", "=ds="..BabbleInventory["Leather"], ""};
        { 18, "EmblemofHeroismPlate", "Spell_Holy_ProclaimChampion", "=ds="..BabbleInventory["Plate"], ""};
        { 20, "EmblemofHeroismAccessories", "Spell_Holy_ProclaimChampion", "=ds="..AL["Accessories"], ""};
        Back = "SETMENU";
	};
    
AtlasLoot_Data["EMBLEMOFVALORMENU"] = {
        { 2, "EmblemofValorCloth", "Spell_Holy_ProclaimChampion_02", "=ds="..BabbleInventory["Cloth"], ""};
        { 3, "EmblemofValorMail", "Spell_Holy_ProclaimChampion_02", "=ds="..BabbleInventory["Mail"], ""};
        { 4, "EmblemofValorCloak", "Spell_Holy_ProclaimChampion_02", "=ds="..BabbleInventory["Back"], ""};
        { 6, "EmblemofValorTokens", "Spell_Holy_ProclaimChampion_02", "=ds="..AL["Tokens"], ""};
        { 17, "EmblemofValorLeather", "Spell_Holy_ProclaimChampion_02", "=ds="..BabbleInventory["Leather"], ""};
        { 18, "EmblemofValorPlate", "Spell_Holy_ProclaimChampion_02", "=ds="..BabbleInventory["Plate"], ""};
        { 21, "EmblemofValorAccessories", "Spell_Holy_ProclaimChampion_02", "=ds="..AL["Accessories"], ""};
        Back = "SETMENU";
	};

AtlasLoot_Data["WORLDEPICS"] = {
        { 2, "WorldEpics4", "INV_Sword_76", "=ds="..AL["Level 70"], ""};
        { 3, "WorldEpics2", "INV_Staff_29", "=ds="..AL["Level 40-49"], ""};
        { 17, "WorldEpics3", "INV_Jewelry_Amulet_01", "=ds="..AL["Level 50-60"], ""};
        { 18, "WorldEpics1", "INV_Jewelry_Ring_15", "=ds="..AL["Level 30-39"], ""};
        Back = "SETMENU";
	};

AtlasLoot_Data["MOUNTMENU"] = {
        { 2, "Mounts11", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Classic Mounts"], ""};
        { 3, "Mounts31", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Wrath of the Lich King Mounts"], ""};
        { 17, "Mounts21", "INV_Misc_QirajiCrystal_05", "=ds="..AL["The Burning Crusade Mounts"], ""};
        Back = "SETMENU";
	};

AtlasLoot_Data["SETSMISCMENU"] = {
        { 2, "SETSCLASSIC", "INV_Sword_43", "=ds="..AL["Classic Sets"], ""};
        { 17, "SETSBURNINGCURSADE", "INV_Weapon_Glave_01", "=ds="..AL["Burning Crusade Sets"], ""};
        Back = "SETMENU";
	};

AtlasLoot_Data["SETSCLASSIC"] = {
        { 2, "VWOWSets1", "INV_Pants_12", "=ds="..AL["Defias Leather"], "=q5="..BabbleZone["The Deadmines"]};
        { 3, "VWOWSets1", "INV_Shirt_16", "=ds="..AL["Embrace of the Viper"], "=q5="..BabbleZone["Wailing Caverns"]};
        { 4, "VWOWSets1", "INV_Gauntlets_19", "=ds="..AL["Chain of the Scarlet Crusade"], "=q5="..BabbleZone["Scarlet Monastery"]};
        { 5, "VWOWSets1", "INV_Helmet_01", "=ds="..AL["The Gladiator"], "=q5="..BabbleZone["Blackrock Depths"]};
        { 6, "VWOWSets2", "INV_Boots_Cloth_05", "=ds="..AL["Ironweave Battlesuit"], "=q5="..AL["Various Locations"]};
        { 7, "VWOWSets2", "INV_Boots_02", "=ds="..AL["The Postmaster"], "=q5="..BabbleZone["Stratholme"]};
	{ 8, "VWOWScholo", "INV_Shoulder_02", "=ds="..AL["Necropile Raiment"], "=q5="..BabbleZone["Scholomance"]};
	{ 9, "VWOWScholo", "INV_Belt_16", "=ds="..AL["Cadaverous Garb"], "=q5="..BabbleZone["Scholomance"]};
	{ 10, "VWOWScholo", "INV_Gauntlets_26", "=ds="..AL["Bloodmail Regalia"], "=q5="..BabbleZone["Scholomance"]};
	{ 11, "VWOWScholo", "INV_Belt_12", "=ds="..AL["Deathbone Guardian"], "=q5="..BabbleZone["Scholomance"]};
	{ 17, "VWOWSets3", "INV_Weapon_ShortBlade_16", "=ds="..AL["Spider's Kiss"], "=q5="..BabbleZone["Lower Blackrock Spire"]};
	{ 18, "VWOWSets3", "INV_Sword_43", "=ds="..AL["Dal'Rend's Arms"], "=q5="..BabbleZone["Upper Blackrock Spire"]};
	{ 19, "VWOWZulGurub", "INV_Bijou_Orange", "=ds="..AL["Zul'Gurub Rings"], "=q5="..BabbleZone["Zul'Gurub"]};
	{ 20, "VWOWZulGurub", "INV_Weapon_Hand_01", "=ds="..AL["Primal Blessing"], "=q5="..BabbleZone["Zul'Gurub"]};
	{ 21, "VWOWZulGurub", "INV_Sword_55", "=ds="..AL["The Twin Blades of Hakkari"], "=q5="..BabbleZone["Zul'Gurub"]};
	{ 22, "VWOWSets3", "INV_Misc_MonsterScales_15", "=ds="..AL["Shard of the Gods"], "=q5="..AL["Various Locations"]};
	{ 23, "VWOWSets3", "INV_Misc_MonsterClaw_04", "=ds="..AL["Spirit of Eskhandar"], "=q5="..AL["Various Locations"]};
        Back = "SETSMISCMENU";
	};

AtlasLoot_Data["SETSBURNINGCURSADE"] = {
	{ 2, "TBCSets", "INV_Sword_76", "=ds="..AL["Latro's Flurry"], "=q5="..AL["World Drop"]};
	{ 3, "TBCSets", "INV_Jewelry_Necklace_36", "=ds="..AL["The Twin Stars"], "=q5="..AL["World Drop"]};
	{ 4, "TBCSets", "INV_Weapon_Hand_14", "=ds="..AL["The Fists of Fury"], "=q5="..BabbleZone["Hyjal Summit"]};
	{ 5, "TBCSets", "INV_Weapon_Glave_01", "=ds="..AL["The Twin Blades of Azzinoth"], "=q5="..BabbleZone["Black Temple"]};
	{ 6, "ScourgeInvasionEvent2", "INV_Jewelry_Talisman_13", "=ds="..AL["Scourge Invasion Sets"], "=q5="..AL["Scourge Invasion"]};
	{ 17, "WOTLKSets", "Raine's Choker of Combustion", "=ds="..AL["Raine's Revenge"], "=q5="..AL["World Drop"]};
        Back = "SETSMISCMENU";
	};

AtlasLoot_Data["T0SET"] = {
        { 3, "T0Druid", "Spell_Nature_Regeneration", "=ds="..BabbleClass["Druid"], ""};
        { 4, "T0Mage", "Spell_Frost_IceStorm", "=ds="..BabbleClass["Mage"], ""};
        { 5, "T0Priest", "Spell_Holy_PowerWordShield", "=ds="..BabbleClass["Priest"], ""};
        { 6, "T0Shaman", "Spell_FireResistanceTotem_01", "=ds="..BabbleClass["Shaman"], ""};
        { 7, "T0Warrior", "Ability_Warrior_BattleShout", "=ds="..BabbleClass["Warrior"], ""};
        { 18, "T0Hunter", "Ability_Hunter_RunningShot", "=ds="..BabbleClass["Hunter"], ""};
        { 19, "T0Paladin", "Spell_Holy_SealOfMight", "=ds="..BabbleClass["Paladin"], ""};
        { 20, "T0Rogue", "Ability_BackStab", "=ds="..BabbleClass["Rogue"], ""};
        { 21, "T0Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..BabbleClass["Warlock"], ""};
        Back = "SETMENU";
	};

AtlasLoot_Data["DS3SET"] = {
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
        Back = "SETMENU";
	};

--BACKUP
--AtlasLoot_Data["T1T2SET"] = {
--        { 3, "T1T2Druid", "Spell_Nature_Regeneration", "=ds="..BabbleClass["Druid"], ""};
--        { 4, "T1T2Mage", "Spell_Frost_IceStorm", "=ds="..BabbleClass["Mage"], ""};
--        { 5, "T1T2Priest", "Spell_Holy_PowerWordShield", "=ds="..BabbleClass["Priest"], ""};
--        { 6, "T1T2Shaman", "Spell_FireResistanceTotem_01", "=ds="..BabbleClass["Shaman"], ""};
--        { 7, "T1T2Warrior", "Ability_Warrior_BattleShout", "=ds="..BabbleClass["Warrior"], ""};
--        { 18, "T1T2Hunter", "Ability_Hunter_RunningShot", "=ds="..BabbleClass["Hunter"], ""};
--        { 19, "T1T2Paladin", "Spell_Holy_SealOfMight", "=ds="..BabbleClass["Paladin"], ""};
--        { 20, "T1T2Rogue", "Ability_BackStab", "=ds="..BabbleClass["Rogue"], ""};
--        { 21, "T1T2Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..BabbleClass["Warlock"], ""};
--        Back = "SETMENU";
--	};

AtlasLoot_Data["T1T2SET"] = {
        { 1, "T1T2Druid", "Spell_Nature_Regeneration", "=ds="..BabbleClass["Druid"], ""};
        { 2, "T3Druid", "Spell_Nature_Regeneration", "=ds="..BabbleClass["Druid"], "=q5="..AL["Tier 3"]};
        { 4, "T1T2Mage", "Spell_Frost_IceStorm", "=ds="..BabbleClass["Mage"], ""};
        { 5, "T3Mage", "Spell_Frost_IceStorm", "=ds="..BabbleClass["Mage"], "=q5="..AL["Tier 3"]};
        { 7, "T1T2Priest", "Spell_Holy_PowerWordShield", "=ds="..BabbleClass["Priest"], ""};
        { 8, "T3Priest", "Spell_Holy_PowerWordShield", "=ds="..BabbleClass["Priest"], "=q5="..AL["Tier 3"]};
        { 10, "T1T2Shaman", "Spell_FireResistanceTotem_01", "=ds="..BabbleClass["Shaman"], ""};
        { 11, "T3Shaman", "Spell_FireResistanceTotem_01", "=ds="..BabbleClass["Shaman"], "=q5="..AL["Tier 3"]};
        { 13, "T1T2Warrior", "Ability_Warrior_BattleShout", "=ds="..BabbleClass["Warrior"], ""};
        { 14, "T3Warrior", "Ability_Warrior_BattleShout", "=ds="..BabbleClass["Warrior"], "=q5="..AL["Tier 3"]};
        { 17, "T1T2Hunter", "Ability_Hunter_RunningShot", "=ds="..BabbleClass["Hunter"], ""};
        { 18, "T3Hunter", "Ability_Hunter_RunningShot", "=ds="..BabbleClass["Hunter"], "=q5="..AL["Tier 3"]};
        { 20, "T1T2Paladin", "Spell_Holy_SealOfMight", "=ds="..BabbleClass["Paladin"], ""};
        { 21, "T3Paladin", "Spell_Holy_SealOfMight", "=ds="..BabbleClass["Paladin"], "=q5="..AL["Tier 3"]};
        { 23, "T1T2Rogue", "Ability_BackStab", "=ds="..BabbleClass["Rogue"], ""};
        { 24, "T3Rogue", "Ability_BackStab", "=ds="..BabbleClass["Rogue"], "=q5="..AL["Tier 3"]};
        { 26, "T1T2Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..BabbleClass["Warlock"], ""};
        { 27, "T3Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..BabbleClass["Warlock"], "=q5="..AL["Tier 3"]};
        Back = "SETMENU";
	};

AtlasLoot_Data["T3SET"] = {
        { 3, "T3Druid", "Spell_Nature_Regeneration", "=ds="..BabbleClass["Druid"], ""};
        { 4, "T3Mage", "Spell_Frost_IceStorm", "=ds="..BabbleClass["Mage"], ""};
        { 5, "T3Priest", "Spell_Holy_PowerWordShield", "=ds="..BabbleClass["Priest"], ""};
        { 6, "T3Shaman", "Spell_FireResistanceTotem_01", "=ds="..BabbleClass["Shaman"], ""};
        { 7, "T3Warrior", "Ability_Warrior_BattleShout", "=ds="..BabbleClass["Warrior"], ""};
        { 18, "T3Hunter", "Ability_Hunter_RunningShot", "=ds="..BabbleClass["Hunter"], ""};
        { 19, "T3Paladin", "Spell_Holy_SealOfMight", "=ds="..BabbleClass["Paladin"], ""};
        { 20, "T3Rogue", "Ability_BackStab", "=ds="..BabbleClass["Rogue"], ""};
        { 21, "T3Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..BabbleClass["Warlock"], ""};
        Back = "SETMENU";
	};

AtlasLoot_Data["T456SET"] = {
        { 3, "T456DruidBalance", "Spell_Nature_InsectSwarm", "=ds="..BabbleClass["Druid"], "=q5="..AL["Balance"]};
        { 4, "T456DruidFeral", "Ability_Druid_Maul", "=ds="..BabbleClass["Druid"], "=q5="..AL["Feral"]};
        { 5, "T456DruidRestoration", "Spell_Nature_Regeneration", "=ds="..BabbleClass["Druid"], "=q5="..AL["Restoration"]};
        { 7, "T456Hunter", "Ability_Hunter_RunningShot", "=ds="..BabbleClass["Hunter"], ""};
        { 9, "T456Mage", "Spell_Frost_IceStorm", "=ds="..BabbleClass["Mage"], ""};
        { 11, "T456PaladinHoly", "Spell_Holy_HolyBolt", "=ds="..BabbleClass["Paladin"], "=q5="..AL["Holy"]};
        { 12, "T456PaladinProtection", "Spell_Holy_SealOfMight", "=ds="..BabbleClass["Paladin"], "=q5="..AL["Protection"]};
        { 13, "T456PaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..BabbleClass["Paladin"], "=q5="..AL["Retribution"]};
        { 17, "T456PriestHoly", "Spell_Holy_PowerWordShield", "=ds="..BabbleClass["Priest"], "=q5="..AL["Holy"]};
        { 18, "T456PriestShadow", "Spell_Shadow_AntiShadow", "=ds="..BabbleClass["Priest"], "=q5="..AL["Shadow"]};
        { 20, "T456Rogue", "Ability_BackStab", "=ds="..BabbleClass["Rogue"], ""};
        { 22, "T456ShamanElemental", "Spell_Nature_Lightning", "=ds="..BabbleClass["Shaman"], "=q5="..AL["Elemental"]};
        { 23, "T456ShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..BabbleClass["Shaman"], "=q5="..AL["Enhancement"]};
        { 24, "T456ShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..BabbleClass["Shaman"], "=q5="..AL["Restoration"]};
        { 26, "T456Warlock", "Spell_Shadow_CurseOfTounges", "=ds="..BabbleClass["Warlock"], ""};
        { 28, "T456WarriorFury", "Ability_Warrior_BattleShout", "=ds="..BabbleClass["Warrior"], "=q5="..AL["Fury"]};
        { 29, "T456WarriorProtection", "INV_Shield_05", "=ds="..BabbleClass["Warrior"], "=q5="..AL["Protection"]};
        Back = "SETMENU";
	};
    
AtlasLoot_Data["T7SET"] = {
        { 2, "NaxxDeathKnightDPS", "Spell_Deathknight_DeathStrike", "=ds="..BabbleClass["Deathknight"], "=q5="..AL["DPS"]};
        { 3, "NaxxDeathKnightTank", "Spell_Deathknight_DeathStrike", "=ds="..BabbleClass["Deathknight"], "=q5="..AL["Tanking"]};
        { 5, "NaxxDruidBalance", "Spell_Nature_InsectSwarm", "=ds="..BabbleClass["Druid"], "=q5="..AL["Balance"]};
        { 6, "NaxxDruidFeral", "Ability_Druid_Maul", "=ds="..BabbleClass["Druid"], "=q5="..AL["Feral"]};
        { 7, "NaxxDruidRestoration", "Spell_Nature_Regeneration", "=ds="..BabbleClass["Druid"], "=q5="..AL["Restoration"]};
        { 9, "NaxxHunter", "Ability_Hunter_RunningShot", "=ds="..BabbleClass["Hunter"], ""};
        { 11, "NaxxMage", "Spell_Frost_IceStorm", "=ds="..BabbleClass["Mage"], ""};
        { 13, "NaxxPaladinHoly", "Spell_Holy_HolyBolt", "=ds="..BabbleClass["Paladin"], "=q5="..AL["Holy"]};
        { 14, "NaxxPaladinProtection", "Spell_Holy_SealOfMight", "=ds="..BabbleClass["Paladin"], "=q5="..AL["Protection"]};
        { 15, "NaxxPaladinRetribution", "Spell_Holy_AuraOfLight", "=ds="..BabbleClass["Paladin"], "=q5="..AL["Retribution"]};
        { 17, "NaxxPriestHoly", "Spell_Holy_PowerWordShield", "=ds="..BabbleClass["Priest"], "=q5="..AL["Holy"]};
        { 18, "NaxxPriestShadow", "Spell_Shadow_AntiShadow", "=ds="..BabbleClass["Priest"], "=q5="..AL["Shadow"]};
        { 20, "NaxxRogue", "Ability_BackStab", "=ds="..BabbleClass["Rogue"], ""};
        { 22, "NaxxShamanElemental", "Spell_Nature_Lightning", "=ds="..BabbleClass["Shaman"], "=q5="..AL["Elemental"]};
        { 23, "NaxxShamanEnhancement", "Spell_FireResistanceTotem_01", "=ds="..BabbleClass["Shaman"], "=q5="..AL["Enhancement"]};
        { 24, "NaxxShamanRestoration", "Spell_Nature_HealingWaveGreater", "=ds="..BabbleClass["Shaman"], "=q5="..AL["Restoration"]};
        { 26, "NaxxWarlock", "Spell_Shadow_CurseOfTounges", "=ds="..BabbleClass["Warlock"], ""};
        { 28, "NaxxWarriorFury", "Ability_Warrior_BattleShout", "=ds="..BabbleClass["Warrior"], "=q5="..AL["Fury"]};
        { 29, "NaxxWarriorProtection", "INV_Shield_05", "=ds="..BabbleClass["Warrior"], "=q5="..AL["Protection"]};
        Back = "SETMENU";
	};