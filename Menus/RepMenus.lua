local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetLookupTable();
local BabbleFaction = LibStub("LibBabble-Faction-3.0"):GetLookupTable();
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

AtlasLoot_Data["REPMENU"] = {
		{ 2, "REPMENU_ORIGINALWOW", "INV_Helmet_66", "=ds="..AL["Factions - Original WoW"], ""};
		{ 3, "REPMENU_WOTLK", "INV_Fishingpole_03", "=ds="..AL["Factions - Wrath of the Lich King"], ""};
		{ 17, "REPMENU_BURNINGCRUSADE", "INV_Misc_Ribbon_01", "=ds="..AL["Factions - Burning Crusade"], ""};
	};
    
AtlasLoot_Data["REPMENU_ORIGINALWOW"] = {
        { 2, "Argent1", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["Argent Dawn"], ""}; 
        { 3, "AQBroodRings", "INV_Jewelry_Ring_40", "=ds="..BabbleFaction["Brood of Nozdormu"], ""};
		{ 4, "Darkmoon1", "INV_Misc_Ticket_Tarot_Maelstrom_01", "=ds="..BabbleFaction["Darkmoon Faire"], ""};
		{ 5, "AlteracFactions", "INV_Jewelry_FrostwolfTrinket_01", "=ds="..BabbleFaction["Frostwolf Clan"], "=q5="..BabbleFaction["Horde"]};
        { 6, "BloodsailHydraxian", "Spell_Frost_SummonWaterElemental_2", "=ds="..BabbleFaction["Hydraxian Waterlords"], ""};
		{ 7, "MiscFactions", "INV_Misc_Head_Centaur_01", "=ds="..BabbleFaction["Magram Clan Centaur"], ""};
		{ 8, "Thorium1", "INV_Ingot_Mithril", "=ds="..BabbleFaction["Thorium Brotherhood"], ""};
        { 9, "MiscFactions", "Ability_Mount_PinkTiger", "=ds="..BabbleFaction["Wintersaber Trainers"], "=q5="..BabbleFaction["Alliance"]};
		{ 17, "BloodsailHydraxian", "INV_Helmet_66", "=ds="..BabbleFaction["Bloodsail Buccaneers"], ""};
		{ 18, "Cenarion1", "INV_Chest_Plate07", "=ds="..BabbleFaction["Cenarion Circle"], ""};
        { 19, "MiscFactions", "INV_Jewelry_Amulet_07", "=ds="..BabbleFaction["The Defilers"], "=q5="..BabbleFaction["Horde"]}; 
        { 20, "MiscFactions", "INV_Misc_Head_Centaur_01", "=ds="..BabbleFaction["Gelkis Clan Centaur"], ""};
		{ 21, "MiscFactions", "INV_Jewelry_Amulet_07", "=ds="..BabbleFaction["The League of Arathor"], "=q5="..BabbleFaction["Alliance"]};
        { 22, "AlteracFactions", "INV_Jewelry_StormPikeTrinket_01", "=ds="..BabbleFaction["Stormpike Guard"], "=q5="..BabbleFaction["Alliance"]}; 
        { 23, "Timbermaw", "INV_Misc_Horn_01", "=ds="..BabbleFaction["Timbermaw Hold"], ""};
		{ 24, "Zandalar1", "INV_Misc_Coin_08", "=ds="..BabbleFaction["Zandalar Tribe"], ""};
        Back = "REPMENU";
    };
    
AtlasLoot_Data["REPMENU_BURNINGCRUSADE"] = {
		{ 2, "Aldor1", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["The Aldor"], ""};
        { 3, "CExpedition1", "INV_Misc_Ammo_Arrow_02", "=ds="..BabbleFaction["Cenarion Expedition"], ""};
        { 4, "HonorHold1", "INV_BannerPVP_02", "=ds="..BabbleFaction["Honor Hold"], "=q5="..BabbleFaction["Alliance"]};
        { 5, "Kurenai1", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["Kurenai"], "=q5="..BabbleFaction["Alliance"]};
        { 6, "Maghar1", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["The Mag'har"], "=q5="..BabbleFaction["Horde"]};
        { 7, "Ogrila1", "INV_DataCrystal01", "=ds="..BabbleFaction["Ogri'la"], ""};
		{ 8, "Scryer1", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["The Scryers"], ""};
		{ 9, "Skyguard1", "INV_Misc_Ribbon_01", "=ds="..BabbleFaction["Sha'tari Skyguard"], ""};
        { 10, "Sporeggar1", "INV_Mushroom_10", "=ds="..BabbleFaction["Sporeggar"], ""};
        { 11, "Tranquillien1", "INV_Misc_Bandana_03", "=ds="..BabbleFaction["Tranquillien"], "=q5="..BabbleFaction["Horde"]};
        { 17, "Ashtongue1", "INV_Misc_Gem_Pearl_05", "=ds="..BabbleFaction["Ashtongue Deathsworn"], ""};
        { 18, "Consortium1", "INV_Weapon_Shortblade_31", "=ds="..BabbleFaction["The Consortium"], ""};
        { 19, "KeepersofTime1", "Ability_Warrior_VictoryRush", "=ds="..BabbleFaction["Keepers of Time"], ""};
		{ 20, "LowerCity1", "Spell_Holy_ChampionsBond", "=ds="..BabbleFaction["Lower City"], ""};
        { 21, "Netherwing1", "Ability_Mount_Netherdrakepurple", "=ds="..BabbleFaction["Netherwing"], ""};
        { 22, "ScaleSands1", "INV_Misc_MonsterScales_13", "=ds="..BabbleFaction["The Scale of the Sands"], ""};
        { 23, "Shatar1", "Ability_Warrior_ShieldMastery", "=ds="..BabbleFaction["The Sha'tar"], ""};
		{ 24, "SunOffensive1", "Spell_Holy_ChampionsBond", "=ds="..BabbleFaction["Shattered Sun Offensive"], ""};
		{ 25, "Thrallmar1", "INV_BannerPVP_01", "=ds="..BabbleFaction["Thrallmar"], "=q5="..BabbleFaction["Horde"]};
		{ 26, "VioletEye1", "Ability_Warrior_ShieldMastery", "=ds="..BabbleFaction["The Violet Eye"], ""};
	    Back = "REPMENU";
    };
    
AtlasLoot_Data["REPMENU_WOTLK"] = {
        { 2, "ArgentCrusade", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["Argent Crusade"], "" };
        { 3, "TheKaluak", "INV_Fishingpole_03", "=ds="..BabbleFaction["The Kalu'ak"], "" };
        { 4, "KnightsoftheEbonBlade", "INV_Weapon_Hand_01", "=ds="..BabbleFaction["Knights of the Ebon Blade"], "" };
        { 5, "TheSonsofHodir1", "Spell_Holy_DivinePurpose", "=ds="..BabbleFaction["The Sons of Hodir"], "" };
        { 17, "FrenzyheartTribe", "INV_Misc_Rune_14", "=ds="..BabbleFaction["Frenzyheart Tribe"], "" };
        { 18, "KirinTor", "Spell_Fire_MasterOfElements", "=ds="..BabbleFaction["Kirin Tor"], "" };
        { 19, "TheOracles", "INV_Helmet_138", "=ds="..BabbleFaction["The Oracles"], "" };
        { 20, "TheWyrmrestAccord", "Ability_Druid_Eclipse", "=ds="..BabbleFaction["The Wyrmrest Accord"], "" };
        Back = "REPMENU";
    };
    
    
    