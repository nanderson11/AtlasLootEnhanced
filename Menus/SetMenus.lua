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
        { 8, "Aquatic", "INV_Box_PetCarrier_01", "=ds="..AL["Non-Combat Pets"], ""};
        { 9, "Tabards3", "INV_Shirt_GuildTabard_01", "=ds="..AL["Tabards"], ""};
        { 10, "CardGame1", "INV_Misc_Ticket_Tarot_Madness", "=ds="..AL["Upper Deck Card Game Items"], ""};
        { 13, "PVPMENU", "INV_Axe_02", "=ds="..AL["PvP Rewards"], ""};
        { 17, "PRE60SET", "INV_Sword_43", "=ds="..AL["Pre 60 Sets"], ""};
        { 18, "ZGSets1", "INV_Jewelry_Necklace_19", "=ds="..AL["Zul'Gurub Sets"], ""};
        { 19, "AQ20Sets1", "INV_Jewelry_Ring_AhnQiraj_03", "=ds="..AL["Ruins of Ahn'Qiraj Sets"], ""};
        { 20, "AQ40Sets1", "INV_Sword_59", "=ds="..AL["Temple of Ahn'Qiraj Sets"], ""};
        { 22, "T0SET", "INV_Chest_Chain_03", "=ds="..AL["Dungeon 1/2 Sets"], ""};
        { 23, "DS3SET", "INV_Helmet_15", "=ds="..AL["Dungeon 3 Sets"], ""};
        { 24, "T1T2SET", "INV_Pants_Mail_03", "=ds="..AL["Tier 1/2 Sets"], ""};
        { 25, "T3SET", "INV_Pants_Cloth_05", "=ds="..AL["Tier 3 Sets"], ""};
        { 26, "T456SET", "INV_Gauntlets_63", "=ds="..AL["Tier 4/5/6 Sets"], ""};
        { 27, "T7SET", "INV_Chest_Chain_15", "=ds="..AL["Tier 7 Sets"], "=q5="..AL["10/25 Man"]};
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

AtlasLoot_Data["WORLDEPICS"] = {
        { 2, "WorldEpics4", "INV_Sword_76", "=ds="..AL["Level 70"], ""};
        { 3, "WorldEpics2", "INV_Staff_29", "=ds="..AL["Level 40-49"], ""};
        { 17, "WorldEpics3", "INV_Jewelry_Amulet_01", "=ds="..AL["Level 50-60"], ""};
        { 18, "WorldEpics1", "INV_Jewelry_Ring_15", "=ds="..AL["Level 30-39"], ""};
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

AtlasLoot_Data["MOUNTMENU"] = {
        { 2, "Mounts11", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Classic Mounts"], ""};
        { 3, "Mounts31", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Wrath of the Lich King Mounts"], ""};
        { 17, "Mounts21", "INV_Misc_QirajiCrystal_05", "=ds="..AL["The Burning Crusade Mounts"], ""};
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