local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetLookupTable();
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

AtlasLoot_Data["SETMENU"] = {
	    { 2, "WORLDEPICS", "INV_Sword_76", "=ds="..AL["BoE World Epics"], ""};
	    { 3, "Legendaries", "INV_Staff_Medivh", "=ds="..AL["Legendary Items"], ""};
	    { 4, "Aquatic", "INV_Box_PetCarrier_01", "=ds="..AL["Pets"], ""};
	    { 5, "MOUNTMENU", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Mounts"], ""};
	    { 6, "Tabards3", "INV_Shirt_GuildTabard_01", "=ds="..AL["Tabards"], ""};
        { 7, "CardGame1", "INV_Misc_Ticket_Tarot_Madness", "=ds="..AL["Upper Deck Card Game Items"], ""};
        { 8, "70TOKENMENU", "Spell_Holy_ChampionsBond", "=ds="..AL["Badge of Justice Rewards"], ""};
        { 10, "PVPMENU", "INV_Axe_02", "=ds="..AL["PvP Rewards"], ""};
        { 17, "PRE60SET", "INV_Sword_43", "=ds="..AL["Pre 60 Sets"], ""};
        { 18, "ZGSets1", "INV_Jewelry_Necklace_19", "=ds="..AL["Zul'Gurub Sets"], ""};
        { 19, "AQ20Sets1", "INV_Jewelry_Ring_AhnQiraj_03", "=ds="..AL["Ruins of Ahn'Qiraj Sets"], ""};
        { 20, "AQ40Sets1", "INV_Sword_59", "=ds="..AL["Temple of Ahn'Qiraj Sets"], ""};
        { 22, "T0SET", "INV_Chest_Chain_03", "=ds="..AL["Dungeon 1/2 Sets"], ""};
        { 23, "DS3SET", "INV_Helmet_15", "=ds="..AL["Dungeon 3 Sets"], ""};
        { 24, "T1T2SET", "INV_Pants_Mail_03", "=ds="..AL["Tier 1/2 Sets"], ""};
        { 25, "T3SET", "INV_Pants_Cloth_05", "=ds="..AL["Tier 3 Sets"], ""};
        { 26, "T456SET", "INV_Gauntlets_63", "=ds="..AL["Tier 4/5/6 Sets"], ""};
	};

AtlasLoot_Data["MOUNTMENU"] = {
        { 2, "Mounts11", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Classic Mounts"], ""};
        { 3, "Mounts31", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Wrath of the Lich King Mounts"], ""};
        { 17, "Mounts21", "INV_Misc_QirajiCrystal_05", "=ds="..AL["The Burning Crusade Mounts"], ""};
        Back = "SETMENU";
	};
    
AtlasLoot_Data["WORLDEPICS"] = {
        { 2, "WorldEpics4", "INV_Sword_76", "=ds="..AL["Level 70"], ""};
        { 3, "WorldEpics2", "INV_Staff_29", "=ds="..AL["Level 40-49"], ""};
        { 17, "WorldEpics3", "INV_Jewelry_Amulet_01", "=ds="..AL["Level 50-60"], ""};
        { 18, "WorldEpics1", "INV_Jewelry_Ring_15", "=ds="..AL["Level 30-39"], ""};
        Back = "SETMENU";
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