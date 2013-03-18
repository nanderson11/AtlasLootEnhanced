-- $Id$
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")

	AtlasLoot_Data["REPMENU"] = {
		["Normal"] = {
			{
				{ 1, "REPMENU_RACEFACTIONS", "INV_Helmet_66", "=ds=Race Factions (temp name)", ""};
				{ 2, "REPMENU_ORIGINALWOW", "INV_Helmet_66", "=ds="..AL["Classic WoW"], ""};
				{ 3, "REPMENU_WOTLK", "achievement_reputation_kirintor", "=ds="..AL["Wrath of the Lich King"], ""};
				{ 5, "KirinTorOffensive", "achievement_reputation_kirintor_offensive", "=ds="..AtlasLoot_IngameLocales["Kirin Tor Offensive"], "=q5="..AtlasLoot_IngameLocales["Isle of Thunder"]};
				{ 6, "OperationShieldwall", "pvpcurrency-honor-alliance", "=ds="..AtlasLoot_IngameLocales["Operation: Shieldwall"], "=q5="..AtlasLoot_IngameLocales["Krasarang Wilds"]};
				{ 7, "LionsLanding", "pvpcurrency-conquest-alliance", "=ds="..AL["Lion's Landing"], "=q5="..AtlasLoot_IngameLocales["Krasarang Wilds"]};
				{ 8, "BizmosBrawlpubBrawlgarArena", "inv_misc_head_clockworkgnome_01", "=ds="..AtlasLoot_IngameLocales["Bizmo's Brawlpub"], "=q5="..AtlasLoot_IngameLocales["Deeprun Tram"]};
				{ 10, "Anglers", "achievement_faction_anglers", "=ds="..AtlasLoot_IngameLocales["The Anglers"], "=q5="..AtlasLoot_IngameLocales["Krasarang Wilds"]};
				{ 11, "GoldenLotus", "achievement_faction_goldenlotus", "=ds="..AtlasLoot_IngameLocales["Golden Lotus"], "=q5="..AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]};
				{ 12, "Lorewalkers", "achievement_faction_lorewalkers", "=ds="..AtlasLoot_IngameLocales["The Lorewalkers"], "=q5="..AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]};
				{ 13, "ShadoPan", "achievement_faction_shadopan", "=ds="..AtlasLoot_IngameLocales["Shado-Pan"], "=q5="..AtlasLoot_IngameLocales["Townlong Steppes"]};
				{ 15, "VPMOPMENU", "pvecurrency-valor", "=ds="..AL["Valor Points"].." "..AL["Rewards"], "=q5="..AL["Mists of Pandaria"]};
				{ 17, "REPMENU_BURNINGCRUSADE", "INV_Misc_Ribbon_01", "=ds="..AL["Burning Crusade"], ""};
				{ 18, "REPMENU_CATACLYSM", "inv_neck_hyjaldaily_04", "=ds="..AL["Cataclysm"], ""};
				{ 20, "SunreaverOnslaught", "achievement_faction_sunreaveronslaught", "=ds="..AtlasLoot_IngameLocales["Sunreaver Onslaught"], "=q5="..AtlasLoot_IngameLocales["Isle of Thunder"]};
				{ 21, "DominanceOffensive", "pvpcurrency-honor-horde", "=ds="..AtlasLoot_IngameLocales["Dominance Offensive"], "=q5="..AtlasLoot_IngameLocales["Krasarang Wilds"]};
				{ 22, "DominationPoint", "pvpcurrency-conquest-horde", "=ds="..AL["Domination Point"], "=q5="..AtlasLoot_IngameLocales["Krasarang Wilds"]};
				{ 23, "BizmosBrawlpubBrawlgarArena", "inv_misc_head_clockworkgnome_01", "=ds="..AtlasLoot_IngameLocales["Brawl'gar Arena"], "=q5="..AtlasLoot_IngameLocales["Brawl'gar Arena"]};
				{ 25, "AugustCelestials", "achievement_faction_celestials", "=ds="..AtlasLoot_IngameLocales["The August Celestials"], "=q5="..AtlasLoot_IngameLocales["Vale of Eternal Blossoms"]};
				{ 26, "Klaxxi", "achievement_faction_klaxxi", "=ds="..AtlasLoot_IngameLocales["The Klaxxi"], "=q5="..AtlasLoot_IngameLocales["Dread Wastes"]};
				{ 27, "OrderCloudSerpent", "achievement_faction_serpentriders", "=ds="..AtlasLoot_IngameLocales["Order of the Cloud Serpent"], "=q5="..AtlasLoot_IngameLocales["The Jade Forest"]};
				{ 28, "ShadoPanAssault", "achievement_faction_shadopan", "=ds="..AtlasLoot_IngameLocales["Shado-Pan Assault"], "=q5="..AtlasLoot_IngameLocales["Throne of Thunder"]};
				{ 29, "Tillers", "achievement_faction_tillers", "=ds="..AtlasLoot_IngameLocales["The Tillers"], "=q5="..AtlasLoot_IngameLocales["Valley of the Four Winds"]};
			};
		};
		info = {
			name = AL["Factions"],
		};
	}

	AtlasLoot_Data["REPMENU_RACEFACTIONS"] = {
		["Normal"] = {
			{
				{ 2, "", "inv_misc_tournaments_symbol_human", "=q6="..AL["Alliance"], ""};
				{ 3, "Darnassus", "inv_misc_tournaments_symbol_nightelf", "=ds="..AtlasLoot_IngameLocales["Darnassus"], "=q5="..AL["Classic WoW"]};
				{ 4, "GnomereganRep", "inv_misc_tournaments_symbol_gnome", "=ds="..AtlasLoot_IngameLocales["Gnomeregan"], "=q5="..AL["Classic WoW"]};
				{ 5, "Ironforge", "inv_misc_tournaments_symbol_dwarf", "=ds="..AtlasLoot_IngameLocales["Ironforge"], "=q5="..AL["Classic WoW"]};
				{ 6, "Stormwind", "inv_misc_tournaments_symbol_human", "=ds="..AtlasLoot_IngameLocales["Stormwind"], "=q5="..AL["Classic WoW"]};
				{ 8, "Exodar", "inv_misc_tournaments_symbol_draenei", "=ds="..AtlasLoot_IngameLocales["Exodar"], "=q5="..AL["Burning Crusade"]};
				{ 10, "Gilneas", "achievement_win_gilneas", "=ds="..AtlasLoot_IngameLocales["Gilneas"], "=q5="..AL["Cataclysm"]};
				{ 12, "TushuiPandaren", "inv_misc_tournaments_symbol_human", "=ds="..AtlasLoot_IngameLocales["Tushui Pandaren"], "=q5="..AL["Mists of Pandaria"]};
				{ 17, "", "inv_misc_tournaments_symbol_orc", "=q6="..AL["Horde"], ""};
				{ 18, "DarkspearTrolls", "inv_misc_tournaments_symbol_troll", "=ds="..AtlasLoot_IngameLocales["Darkspear Trolls"], "=q5="..AL["Classic WoW"]};
				{ 19, "Orgrimmar", "inv_misc_tournaments_symbol_orc", "=ds="..AtlasLoot_IngameLocales["Orgrimmar"], "=q5="..AL["Classic WoW"]};
				{ 20, "ThunderBluff", "inv_misc_tournaments_symbol_tauren", "=ds="..AtlasLoot_IngameLocales["Thunder Bluff"], "=q5="..AL["Classic WoW"]};
				{ 21, "Undercity", "inv_misc_tournaments_symbol_scourge", "=ds="..AtlasLoot_IngameLocales["Undercity"], "=q5="..AL["Classic WoW"]};
				{ 23, "SilvermoonCity", "inv_misc_tournaments_symbol_bloodelf", "=ds="..AtlasLoot_IngameLocales["Silvermoon City"], "=q5="..AL["Burning Crusade"]};
				{ 25, "BilgewaterCartel", "inv_misc_tabard_kezan", "=ds="..AtlasLoot_IngameLocales["Bilgewater Cartel"], "=q5="..AL["Cataclysm"]};
				{ 27, "HuojinPandaren", "inv_misc_tournaments_symbol_orc", "=ds="..AtlasLoot_IngameLocales["Huojin Pandaren"], "=q5="..AL["Mists of Pandaria"]};
			};
		};
		info = {
			name = AL["Factions"],
			menu = "REPMENU",
		};
	}

	AtlasLoot_Data["REPMENU_ORIGINALWOW"] = {
		["Normal"] = {
			{
				{ 2, "MiscFactions", "ability_warrior_rallyingcry", "=ds="..AtlasLoot_IngameLocales["The League of Arathor"], "=q5="..AL["Alliance"].." - "..AtlasLoot_IngameLocales["Arathi Basin"]};
				{ 3, "MiscFactions", "inv_jewelry_stormpiketrinket_05", "=ds="..AtlasLoot_IngameLocales["Stormpike Guard"], "=q5="..AL["Alliance"].." - "..AtlasLoot_IngameLocales["Alterac Valley"]};
				{ 4, "MiscFactions", "Ability_Mount_PinkTiger", "=ds="..AtlasLoot_IngameLocales["Wintersaber Trainers"], "=q5="..AL["Alliance"].." - "..AtlasLoot_IngameLocales["Winterspring"]};
				{ 6, "ArgentDawn", "inv_jewelry_talisman_07", "=ds="..AtlasLoot_IngameLocales["Argent Dawn"], "=q5="..AtlasLoot_IngameLocales["Eastern Plaguelands"]};
				{ 7, "Timbermaw", "achievement_reputation_timbermaw", "=ds="..AtlasLoot_IngameLocales["Timbermaw Hold"], "=q5="..AtlasLoot_IngameLocales["Felwood"].." / "..AtlasLoot_IngameLocales["Winterspring"]};
				{ 9, "AQBroodRings", "inv_misc_head_dragon_bronze", "=ds="..AtlasLoot_IngameLocales["Brood of Nozdormu"], "=q5="..AtlasLoot_IngameLocales["Temple of Ahn'Qiraj"].." / "..AL["Caverns of Time"]};
				{ 17, "MiscFactions", "spell_shadow_psychichorrors", "=ds="..AtlasLoot_IngameLocales["The Defilers"], "=q5="..AL["Horde"].." - "..AtlasLoot_IngameLocales["Arathi Basin"]}; 
				{ 18, "MiscFactions", "inv_jewelry_frostwolftrinket_05", "=ds="..AtlasLoot_IngameLocales["Frostwolf Clan"], "=q5="..AL["Horde"].." - "..AtlasLoot_IngameLocales["Alterac Valley"]};
				{ 21, "BloodsailBuccaneers", "INV_Helmet_66", "=ds="..AtlasLoot_IngameLocales["Bloodsail Buccaneers"], "=q5="..AtlasLoot_IngameLocales["Stranglethorn Vale"]};
				{ 22, "CenarionCircle", "ability_racial_ultravision", "=ds="..AtlasLoot_IngameLocales["Cenarion Circle"], "=q5="..AtlasLoot_IngameLocales["Silithus"]};
				{ 24, "ThoriumBrotherhood", "INV_Ingot_Mithril", "=ds="..AtlasLoot_IngameLocales["Thorium Brotherhood"], "=q5="..AtlasLoot_IngameLocales["Searing Gorge"]};
			};
		};
		info = {
			name = AL["Factions"].." - "..AL["Classic WoW"],
			menu = "REPMENU",
		};
	}

	AtlasLoot_Data["REPMENU_BURNINGCRUSADE"] = {
		["Normal"] = {
			{
				{ 2, "HonorHold", "INV_BannerPVP_02", "=ds="..AtlasLoot_IngameLocales["Honor Hold"], "=q5="..AL["Alliance"].." - "..AtlasLoot_IngameLocales["Hellfire Peninsula"]};
				{ 3, "Kurenai", "INV_Misc_Foot_Centaur", "=ds="..AtlasLoot_IngameLocales["Kurenai"], "=q5="..AL["Alliance"].." - "..AtlasLoot_IngameLocales["Nagrand"]};
				{ 6, "CExpedition", "INV_Misc_Ammo_Arrow_02", "=ds="..AtlasLoot_IngameLocales["Cenarion Expedition"], "=q5="..AtlasLoot_IngameLocales["Zangarmarsh"]};
				{ 7, "KeepersofTime", "Ability_Warrior_VictoryRush", "=ds="..AtlasLoot_IngameLocales["Keepers of Time"], "=q5="..AL["Caverns of Time"]};
				{ 8, "Netherwing", "Ability_Mount_Netherdrakepurple", "=ds="..AtlasLoot_IngameLocales["Netherwing"], "=q5="..AtlasLoot_IngameLocales["Shadowmoon Valley"]};
				{ 9, "Skyguard", "ability_hunter_pet_netherray", "=ds="..AtlasLoot_IngameLocales["Sha'tari Skyguard"], "=q5="..AtlasLoot_IngameLocales["Terokkar Forest"].." / "..AtlasLoot_IngameLocales["Blade's Edge Mountains"]};
				{ 10, "Sporeggar", "inv_mushroom_11", "=ds="..AtlasLoot_IngameLocales["Sporeggar"], "=q5="..AtlasLoot_IngameLocales["Zangarmarsh"]};
				{ 12, "Aldor", "INV_Jewelry_Talisman_08", "=ds="..AtlasLoot_IngameLocales["The Aldor"], ""};
				{ 14, "Ashtongue", "achievement_reputation_ashtonguedeathsworn", "=ds="..AtlasLoot_IngameLocales["Ashtongue Deathsworn"], "=q5="..AtlasLoot_IngameLocales["Shadowmoon Valley"].." / "..AtlasLoot_IngameLocales["Black Temple"]};
				{ 15, "VioletEye", "spell_holy_mindsooth", "=ds="..AtlasLoot_IngameLocales["The Violet Eye"], "=q5="..AtlasLoot_IngameLocales["Karazhan"]};
				{ 17, "Thrallmar", "INV_BannerPVP_01", "=ds="..AtlasLoot_IngameLocales["Thrallmar"], "=q5="..AL["Horde"].." - "..AtlasLoot_IngameLocales["Hellfire Peninsula"]};
				{ 18, "Maghar", "INV_Misc_Foot_Centaur", "=ds="..AtlasLoot_IngameLocales["The Mag'har"], "=q5="..AL["Horde"].." - "..AtlasLoot_IngameLocales["Nagrand"]};
				{ 19, "Tranquillien", "INV_Misc_Bandana_03", "=ds="..AtlasLoot_IngameLocales["Tranquillien"], "=q5="..AL["Horde"].." - "..AtlasLoot_IngameLocales["Ghostlands"]};
				{ 21, "Consortium", "inv_enchant_shardprismaticlarge", "=ds="..AtlasLoot_IngameLocales["The Consortium"], "=q5="..AtlasLoot_IngameLocales["Nagrand"].." / "..AtlasLoot_IngameLocales["Netherstorm"]};
				{ 22, "LowerCity", "Spell_Holy_ChampionsBond", "=ds="..AtlasLoot_IngameLocales["Lower City"], ""};
				{ 23, "Ogrila", "inv_misc_apexis_crystal", "=ds="..AtlasLoot_IngameLocales["Ogri'la"], "=q5="..AtlasLoot_IngameLocales["Blade's Edge Mountains"]};
				{ 24, "Shatar", "Ability_Warrior_ShieldMastery", "=ds="..AtlasLoot_IngameLocales["The Sha'tar"], ""};
				{ 25, "SunOffensive", "inv_shield_48", "=ds="..AtlasLoot_IngameLocales["Shattered Sun Offensive"], "=q5="..AtlasLoot_IngameLocales["Isle of Quel'Danas"]};
				{ 27, "Scryer", "INV_Misc_Foot_Centaur", "=ds="..AtlasLoot_IngameLocales["The Scryers"], ""};
				{ 29, "ScaleSands", "inv_enchant_dustillusion", "=ds="..AtlasLoot_IngameLocales["The Scale of the Sands"], "=q5="..AtlasLoot_IngameLocales["Hyjal Summit"]};
			};
		};
		info = {
			name = AL["Factions"].." - "..AL["Burning Crusade"],
			menu = "REPMENU",
		};
	}

	AtlasLoot_Data["REPMENU_WOTLK"] = {
		["Normal"] = {
			{
				{ 2, "AllianceVanguard", "spell_misc_hellifrepvphonorholdfavor", "=ds="..AtlasLoot_IngameLocales["Alliance Vanguard"], "=q5="..AL["Alliance"]};
				{ 3, "ExplorersLeagueWarsongOffensive", "inv_drink_01", "=ds="..AtlasLoot_IngameLocales["Explorers' League"], "=q5="..AtlasLoot_IngameLocales["The Storm Peaks"]};
				{ 4, "ArgentTournamentFaction", "inv_misc_tabardpvp_01", "=ds="..AtlasLoot_IngameLocales["The Silver Covenant"], "=q5="..AtlasLoot_IngameLocales["Icecrown"].." / "..AtlasLoot_IngameLocales["Dalaran"]};
				{ 6, "ArgentCrusade", "INV_Jewelry_Talisman_08", "=ds="..AtlasLoot_IngameLocales["Argent Crusade"], "=q5="..AtlasLoot_IngameLocales["Zul'Drak"].." / "..AtlasLoot_IngameLocales["Icecrown"]};
				{ 7, "KirinTor", "achievement_reputation_kirintor", "=ds="..AtlasLoot_IngameLocales["Kirin Tor"], "=q5="..AtlasLoot_IngameLocales["Borean Tundra"].." / "..AtlasLoot_IngameLocales["Dalaran"]};
				{ 8, "TheSonsofHodir", "Spell_Holy_DivinePurpose", "=ds="..AtlasLoot_IngameLocales["The Sons of Hodir"], "=q5="..AtlasLoot_IngameLocales["The Storm Peaks"]};
				{ 9, "TheWyrmrestAccord", "achievement_reputation_wyrmresttemple", "=ds="..AtlasLoot_IngameLocales["The Wyrmrest Accord"], "=q5="..AtlasLoot_IngameLocales["Dragonblight"]};
				{ 11, "FrenzyheartTribe", "ability_mount_whitedirewolf", "=ds="..AtlasLoot_IngameLocales["Frenzyheart Tribe"], "=q5="..AtlasLoot_IngameLocales["Sholazar Basin"]};
				{ 13, "TheAshenVerdict", "INV_Jewelry_Ring_85", "=ds="..AtlasLoot_IngameLocales["The Ashen Verdict"], "=q5="..AtlasLoot_IngameLocales["Icecrown Citadel"]};
				{ 17, "HordeExpedition", "spell_misc_hellifrepvpthrallmarfavor", "=ds="..AtlasLoot_IngameLocales["Horde Expedition"], "=q5="..AL["Horde"]};
				{ 18, "ExplorersLeagueWarsongOffensive", "inv_drink_01", "=ds="..AtlasLoot_IngameLocales["Warsong Offensive"], "=q5="..AtlasLoot_IngameLocales["The Storm Peaks"]};
				{ 19, "ArgentTournamentFaction", "inv_misc_tabardpvp_02", "=ds="..AtlasLoot_IngameLocales["The Sunreavers"], "=q5="..AtlasLoot_IngameLocales["Icecrown"].." / "..AtlasLoot_IngameLocales["Dalaran"]};
				{ 21, "TheKaluak", "achievement_reputation_tuskarr", "=ds="..AtlasLoot_IngameLocales["The Kalu'ak"], "=q5="..AtlasLoot_IngameLocales["Borean Tundra"].." / "..AtlasLoot_IngameLocales["Howling Fjord"].." / "..AtlasLoot_IngameLocales["Dragonblight"]};
				{ 22, "KnightsoftheEbonBlade", "achievement_reputation_knightsoftheebonblade", "=ds="..AtlasLoot_IngameLocales["Knights of the Ebon Blade"], "=q5="..AtlasLoot_IngameLocales["Zul'Drak"].." / "..AtlasLoot_IngameLocales["Icecrown"]};
				{ 23, "WinterfinRetreat", "INV_Misc_Shell_04", "=ds="..AL["Winterfin Retreat"], "=q5="..AtlasLoot_IngameLocales["Borean Tundra"]};
				{ 26, "TheOracles", "inv_misc_head_murloc_01", "=ds="..AtlasLoot_IngameLocales["The Oracles"], "=q5="..AtlasLoot_IngameLocales["Sholazar Basin"]};
			};
		};
		info = {
			name = AL["Factions"].." - "..AL["Wrath of the Lich King"],
			menu = "REPMENU",
		};
	}

	AtlasLoot_Data["REPMENU_CATACLYSM"] = {
		["Normal"] = {
			{
				{ 2, "WildhammerClan", "inv_misc_tabard_wildhammerclan", "=ds="..AtlasLoot_IngameLocales["Wildhammer Clan"], "=q5="..AL["Alliance"].." - "..AtlasLoot_IngameLocales["Twilight Highlands"]};
				{ 3, "BaradinsWardens", "inv_misc_tabard_baradinwardens", "=ds="..AtlasLoot_IngameLocales["Baradin's Wardens"], "=q5="..AL["Alliance"].." - "..AtlasLoot_IngameLocales["Tol Barad"]};
				{ 5, "EarthenRing", "inv_misc_tabard_earthenring", "=ds="..AtlasLoot_IngameLocales["The Earthen Ring"], "=q5="..AtlasLoot_IngameLocales["Vashj'ir"].." / "..AtlasLoot_IngameLocales["Deepholm"]};
				{ 6, "Ramkahen", "inv_misc_tabard_tolvir", "=ds="..AtlasLoot_IngameLocales["Ramkahen"], "=q5="..AtlasLoot_IngameLocales["Uldum"]};
				{ 8, "AvengersHyjal", "inv_neck_hyjaldaily_04", "=ds="..AtlasLoot_IngameLocales["Avengers of Hyjal"], "=q5="..AtlasLoot_IngameLocales["Firelands"]};
				{ 17, "DragonmawClan", "inv_misc_tabard_dragonmawclan", "=ds="..AtlasLoot_IngameLocales["Dragonmaw Clan"], "=q5="..AL["Horde"].." - "..AtlasLoot_IngameLocales["Twilight Highlands"]};
				{ 18, "HellscreamsReach", "inv_misc_tabard_hellscream", "=ds="..AtlasLoot_IngameLocales["Hellscream's Reach"], "=q5="..AL["Horde"].." - "..AtlasLoot_IngameLocales["Tol Barad"]};
				{ 20, "GuardiansHyjal", "inv_misc_tabard_guardiansofhyjal", "=ds="..AtlasLoot_IngameLocales["Guardians of Hyjal"], "=q5="..AtlasLoot_IngameLocales["Molten Front"].." / "..AtlasLoot_IngameLocales["Mount Hyjal"]};
				{ 21, "Therazane", "inv_misc_tabard_therazane", "=ds="..AtlasLoot_IngameLocales["Therazane"], "=q5="..AtlasLoot_IngameLocales["Deepholm"]};
			};
		};
		info = {
			name = AL["Factions"].." - "..AL["Cataclysm"],
			menu = "REPMENU",
		};
	}