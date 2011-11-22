local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local moduleName = "AtlasLootMistsofPandaria"

-- Index
--- Dungeons & Raids
---- Temple of the Jade Serpent
---- Stormstout Brewery
---- Shado-pan Monastery
---- Scholomance
---- Scarlet Monestary - Wing 1
---- Scarlet Monestary - Wing 2
---- Mogu'Shan Palace
--- Factions
--- PvP
--- Sets & Collections

	------------------------
	--- Dungeons & Raids ---
	------------------------

		------------------------------
		--- Temple of Jade Serpent ---
		------------------------------

		--------------------------
		--- Stormstour Brewery ---
		--------------------------

		---------------------------
		--- Shado-pan Monastery ---
		---------------------------

		-------------------
		--- Scholomance ---
		-------------------

	AtlasLoot_Data["ScholoRas"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = BabbleBoss["Ras Frostwhisper"],
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoJandice"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = BabbleBoss["Jandice Barov"],
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoKirtonos"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = BabbleBoss["Kirtonos the Herald"],
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoRattlegore"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = BabbleBoss["Rattlegore"],
			module = moduleName, instance = "Scholomance",
		};
	};

	AtlasLoot_Data["ScholoGandling"] = {
		["Normal"] = {
			{

			}
		};
		info = {
			name = BabbleBoss["Darkmaster Gandling"],
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

		----------------------------------
		--- Scarlet Monestary - Wing 1 ---
		----------------------------------

	AtlasLoot_Data["SMGraveThalnos"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = BabbleBoss["Bloodmage Thalnos"], instance = "SMGraveyard",
			module = moduleName,
		};
	};

	AtlasLoot_Data["SMGraveTBD"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = "Unknown", instance = "SMGraveyard",
			module = moduleName,
		};
	};

	AtlasLoot_Data["SMGraveFairbanks"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = BabbleBoss["High Inquisitor Fairbanks"], instance = "SMGraveyard",
			module = moduleName,
		};
	};

	AtlasLoot_Data["SMGraveMograine"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = BabbleBoss["Scarlet Commander Mograine"], instance = "SMGraveyard",
			module = moduleName,
		};
	};

	AtlasLoot_Data["SMGraveWhitemane"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = BabbleBoss["High Inquisitor Whitemane"], instance = "SMGraveyard",
			module = moduleName,
		};
	};

	AtlasLoot_Data["SMGraveTrash"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = "trash", instance = "SMGraveyard",
			module = moduleName,
		};
	};

		----------------------------------
		--- Scarlet Monestary - Wing 2 ---
		----------------------------------

	AtlasLoot_Data["SMArmoryLoksey"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = BabbleBoss["Houndmaster Loksey"], instance = "SMArmory",
			module = moduleName,
		};
	};

	AtlasLoot_Data["SMArmoryHerod"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = BabbleBoss["Herod"], instance = "SMArmory",
			module = moduleName,
		};
	};

	AtlasLoot_Data["SMArmoryDoan"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = BabbleBoss["Arcanist Doan"], instance = "SMArmory",
			module = moduleName,
		};
	};

	AtlasLoot_Data["SMArmoryTrash"] = {
		["Normal"] = {
			{

			};
		};
		info = {
			name = "trash", instance = "SMArmory",
			module = moduleName,
		};
	};

		------------------------
		--- Mogu'Shan Palace ---
		------------------------

	----------------
	--- Factions ---
	----------------

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