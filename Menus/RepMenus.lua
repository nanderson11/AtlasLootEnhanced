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
        { 2, "Argent1", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["Argent Dawn"], "=q5="..BabbleZone["Eastern Plaguelands"]}; 
        { 3, "AQBroodRings", "INV_Jewelry_Ring_40", "=ds="..BabbleFaction["Brood of Nozdormu"], "=q5="..BabbleZone["Temple of Ahn'Qiraj"]};
        { 4, "MiscFactions", "INV_Jewelry_Amulet_07", "=ds="..BabbleFaction["The Defilers"], "=q5="..BabbleFaction["Horde"]}; 
        { 5, "MiscFactions", "INV_Misc_Head_Centaur_01", "=ds="..BabbleFaction["Gelkis Clan Centaur"], "=q5="..BabbleZone["Desolace"]};
        { 6, "MiscFactions", "INV_Jewelry_Amulet_07", "=ds="..BabbleFaction["The League of Arathor"], "=q5="..BabbleFaction["Alliance"]};
        { 7, "AlteracFactions", "INV_Jewelry_StormPikeTrinket_01", "=ds="..BabbleFaction["Stormpike Guard"], "=q5="..BabbleFaction["Alliance"]};
        { 8, "Timbermaw", "INV_Misc_Horn_01", "=ds="..BabbleFaction["Timbermaw Hold"], ""};
        { 9, "Zandalar1", "INV_Misc_Coin_08", "=ds="..BabbleFaction["Zandalar Tribe"], "=q5="..BabbleZone["Zul'Gurub"]};
        { 17, "BloodsailHydraxian", "INV_Helmet_66", "=ds="..BabbleFaction["Bloodsail Buccaneers"], ""};
        { 18, "Cenarion1", "INV_Chest_Plate07", "=ds="..BabbleFaction["Cenarion Circle"], "=q5="..BabbleZone["Silithus"]};
        { 19, "AlteracFactions", "INV_Jewelry_FrostwolfTrinket_01", "=ds="..BabbleFaction["Frostwolf Clan"], "=q5="..BabbleFaction["Horde"]};
        { 20, "BloodsailHydraxian", "Spell_Frost_SummonWaterElemental_2", "=ds="..BabbleFaction["Hydraxian Waterlords"], "=q5="..BabbleZone["Molten Core"]};
        { 21, "MiscFactions", "INV_Misc_Head_Centaur_01", "=ds="..BabbleFaction["Magram Clan Centaur"], "=q5="..BabbleZone["Desolace"]};
        { 22, "Thorium1", "INV_Ingot_Mithril", "=ds="..BabbleFaction["Thorium Brotherhood"], "=q5="..BabbleZone["Searing Gorge"]};
        { 23, "MiscFactions", "Ability_Mount_PinkTiger", "=ds="..BabbleFaction["Wintersaber Trainers"], "=q5="..BabbleFaction["Alliance"]};
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
        { 2, "AllianceVanguard1", "INV_Shield_36", "=ds="..BabbleFaction["Alliance Vanguard"], "" };
        { 3, "FrenzyheartTribe", "INV_Misc_Rune_14", "=ds="..BabbleFaction["Frenzyheart Tribe"], "" };
        { 4, "TheKaluak", "INV_Fishingpole_03", "=ds="..BabbleFaction["The Kalu'ak"], "" };
        { 5, "KnightsoftheEbonBlade", "INV_Weapon_Hand_01", "=ds="..BabbleFaction["Knights of the Ebon Blade"], "" };
        { 6, "TheSonsofHodir1", "Spell_Holy_DivinePurpose", "=ds="..BabbleFaction["The Sons of Hodir"], "" };
        { 7, "TheWyrmrestAccord", "Ability_Druid_Eclipse", "=ds="..BabbleFaction["The Wyrmrest Accord"], "" };
        { 17, "ArgentCrusade", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["Argent Crusade"], "" };
        { 18, "HordeExpedition1", "INV_Shield_50", "=ds="..BabbleFaction["Horde Expedition"], "" };
        { 19, "KirinTor", "Spell_Fire_MasterOfElements", "=ds="..BabbleFaction["Kirin Tor"], "" };
        { 20, "TheOracles", "INV_Helmet_138", "=ds="..BabbleFaction["The Oracles"], "" };
        { 21, "WinterfinRetreat", "INV_Misc_Shell_04", "=ds="..BabbleFaction["Winterfin Retreat"], "" };
        Back = "REPMENU";
    };    