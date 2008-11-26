local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleFaction = LibStub("LibBabble-Faction-3.0"):GetLookupTable();
local APPRENTICE = select(2, GetSpellInfo(2259));
local JOURNEYMAN = select(2, GetSpellInfo(3101));
local EXPERT = select(2, GetSpellInfo(3464));
local ARTISAN = select(2, GetSpellInfo(11611));
local MASTER = select(2, GetSpellInfo(28596));

-- Index
--- Tradeskill List
---- Alchemy
----- Battle Elixirs
----- Guardian Elixirs
----- Potions
----- Transmutes
----- Miscellaneous
---- Blacksmithing
---- Cooking
---- Enchanting
---- Engineering
---- First Aid
---- Inscription
---- Jewelcrafting
---- Leatherworking
---- Mining
---- Tailoring
--- Profession Sets
---- Blacksmithing Mail Sets
---- Blacksmithing Plate Sets
---- Leatherworking Leather Sets
---- Leatherworking Mail Sets
---- Tailoring Sets
--- Other
---- Crafted Epic Weapons
--- Daily Profession Rewards
---- Jewelcrafting

	-----------------------
	--- Tradeskill List ---
	-----------------------

		---------------
		--- Alchemy ---
		---------------

    AtlasLoot_Data["AlchemyBattleElixir1"] = {
        { 1, "s60365", "44330", "=q1=Elixir of Armor Piercing", "=ds="};
        { 2, "s60355", "44327", "=q1=Elixir of Deadly Strikes", "=ds="};
        { 3, "s60357", "44329", "=q1=Elixir of Expertise", "=ds="};
        { 4, "s60366", "44331", "=q1=Elixir of Lightning Speed", "=ds="};
        { 5, "s60354", "44325", "=q1=Elixir of Accuracy", "=ds="};
        { 6, "s53840", "39666", "=q1=Elixir of Mighty Agility", "=ds="..AL["Trainer"]};
        { 7, "s54218", "40073", "=q1=Elixir of Mighty Strength", "=ds="..AL["Trainer"]};
        { 8, "s53848", "40076", "=q1=Guru's Elixir", "=ds="..AL["Trainer"]};
        { 9, "s53842", "40070", "=q1=Spellpower Elixir", "=ds="..AL["Trainer"]};
        { 10, "s53841", "40068", "=q1=Wrath Elixir", "=ds="..AL["Trainer"]};
        { 11, "s28558", "22835", "=q1=Elixir of Major Shadow Power", "=ds="..BabbleFaction["Revered"]..": "..BabbleFaction["Lower City"]};
        { 12, "s28556", "22833", "=q1=Elixir of Major Firepower", "=ds="..BabbleFaction["Revered"]..": "..BabbleFaction["The Scryers"]};
        { 13, "s38960", "31679", "=q1=Fel Strength Elixir", "=ds="..BabbleZone["Shadowmoon Valley"]};
        { 14, "s28553", "22831", "=q1=Elixir of Major Agility", "=ds="..BabbleFaction["Honored"]..": "..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]};
        { 15, "s28549", "22827", "=q1=Elixir of Major Frost Power", "=ds="..AL["Vendor"]..", "..BabbleZone["Zangarmarsh"]};
        { 16, "s33741", "28104", "=q1=Elixir of Mastery", "=ds="..AL["Trainer"]};
        { 17, "s28545", "22825", "=q1=Elixir of Healing Power", "=ds="..AL["Trainer"]};
        { 18, "s28544", "22824", "=q1=Elixir of Major Strength", "=ds="..AL["Trainer"]};
        { 19, "s33740", "28103", "=q1=Adept's Elixir", "=ds="..AL["Trainer"]};
        { 20, "s33738", "28102", "=q1=Onslaught Elixir", "=ds="..AL["Trainer"]};
        { 21, "s17573", "13454", "=q1=Greater Arcane Elixir", "=ds="..AL["Trainer"]};
        { 22, "s17571", "13452", "=q1=Elixir of the Mongoose", "=ds="..BabbleZone["Felwood"]};
        { 23, "s17557", "13453", "=q1=Elixir of Brute Force", "=ds="..AL["Trainer"]};
        { 24, "s11477", "9224", "=q1=Elixir of Demonslaying", "=ds="..AL["Vendor"]};
        { 25, "s26277", "21546", "=q1=Elixir of Greater Firepower", "=ds="..BabbleZone["Searing Gorge"]};
		{ 26, "s11476", "9264", "=q1=Elixir of Shadow Power", "=ds="..AL["Vendor"]..", "..BabbleZone["Undercity"].."/"..BabbleZone["Stormwind City"]};
        { 27, "s11472", "9206", "=q1=Elixir of Giants", "=ds="..AL["World Drop"]};
        { 28, "s11467", "9187", "=q1=Elixir of Greater Agility", "=ds="..AL["Trainer"]};
        { 29, "s11461", "9155", "=q1=Arcane Elixir", "=ds="..AL["Trainer"]};
        { 30, "s21923", "17708", "=q1=Elixir of Frost Power", "=ds="..AL["Feast of Winter Veil"]};
        Next = "AlchemyBattleElixir2";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyBattleElixir2"] = {
        { 1, "s11449", "8949", "=q1=Elixir of Agility", "=ds="..AL["Trainer"]};
        { 2, "s3188", "3391", "=q1=Elixir of Ogre's Strength", "=ds="..AL["World Drop"]};
        { 3, "s2333", "3390", "=q1=Elixir of Lesser Agility", "=ds="..AL["World Drop"]};
        { 4, "s7845", "6373", "=q1=Elixir of Firepower", "=ds="..AL["Trainer"]};
        { 5, "s8240", "6662", "=q1=Elixir of Giant Growth", "=ds="..BabbleZone["The Barrens"]};
        { 6, "s3230", "2457", "=q1=Elixir of Minor Agility", "=ds="..AL["World Drop"]};
        { 7, "s2329", "2454", "=q1=Elixir of Lion's Strength", "=ds="..AL["Trainer"]};
        Prev = "AlchemyBattleElixir1";
        Next = "AlchemyGuardianElixir1";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyGuardianElixir1"] = {
        { 1, "s60356", "44328", "=q1=Elixir of Mighty Defense", "=ds="};
        { 2, "s56519", "40109", "=q1=Elixir of Mighty Mageblood", "=ds="};
        { 3, "s54220", "40097", "=q1=Elixir of Protection", "=ds="};
        { 4, "s53898", "40078", "=q1=Elixir of Mighty Fortitude", "=ds="..AL["Trainer"]};
        { 5, "s60367", "44332", "=q1=Elixir of Mighty Thoughts", "=ds="..AL["Trainer"]};
        { 6, "s53847", "40072", "=q1=Elixir of Spirit", "=ds="..AL["Trainer"]};
        { 7, "s28578", "22848", "=q1=Elixir of Empowerment", "=ds="..AL["World Drop"]};
        { 8, "s28570", "22840", "=q1=Elixir of Major Mageblood", "=ds="..AL["World Drop"]};
        { 9, "s28557", "22834", "=q1=Elixir of Major Defense", "=ds="..AL["Vendor"]};
        { 10, "s39639", "32068", "=q1=Elixir of Ironskin", "=ds="..AL["Vendor"]..", "..BabbleZone["Nagrand"]};
        { 11, "s39637", "32063", "=q1=Earthen Elixir", "=ds="..BabbleFaction["Honored"]..": "..BabbleFaction["Cenarion Expedition"]};
		{ 12, "s39638", "32067", "=q1=Elixir of Draenic Wisdom", "=ds="..AL["Trainer"]};
        { 13, "s39636", "32062", "=q1=Elixir of Major Fortitude", "=ds="..AL["Trainer"]};
        { 14, "s24368", "20004", "=q1=Major Troll's Blood Elixir", "=ds="..BabbleFaction["Honored"]..": "..BabbleFaction["Zandalar Tribe"]};
        { 15, "s24365", "20007", "=q1=Mageblood Elixir", "=ds="..BabbleFaction["Revered"]..": "..BabbleFaction["Zandalar Tribe"]};
        { 16, "s17554", "13445", "=q1=Elixir of Superior Defense", "=ds="..AL["Vendor"]..", "..BabbleZone["Orgrimmar"].."/"..BabbleZone["Ironforge"]};
		{ 17, "s17555", "13447", "=q1=Elixir of the Sages", "=ds="..AL["Trainer"]};
        { 18, "s11466", "9088", "=q1=Gift of Arthas", "=ds="..BabbleZone["Western Plaguelands"]};
        { 19, "s11465", "9179", "=q1=Elixir of Greater Intellect", "=ds="..AL["Trainer"]};
        { 20, "s11450", "8951", "=q1=Elixir of Greater Defense", "=ds="..AL["Trainer"]};
        { 21, "s3451", "3826", "=q1=Mighty Troll's Blood Elixir", "=ds="..AL["World Drop"]};
        { 22, "s3450", "3825", "=q1=Elixir of Fortitude", "=ds="..AL["Trainer"]};
        { 23, "s3177", "3389", "=q1=Elixir of Defense", "=ds="..AL["Trainer"]};
        { 24, "s3176", "3388", "=q1=Strong Troll's Blood Potion", "=ds="..AL["Trainer"]};
        { 25, "s3171", "3383", "=q1=Elixir of Wisdom", "=ds="..AL["Trainer"]};
        { 26, "s2334", "2458", "=q1=Elixir of Minor Fortitude", "=ds="..AL["Trainer"]};
        { 27, "s3170", "3382", "=q1=Weak Troll's Blood Elixir", "=ds="..AL["Trainer"]};
        { 28, "s7183", "5997", "=q1=Elixir of Minor Defense", "=ds="..AL["Trainer"]};
        Next = "AlchemyPotion1";
        Prev = "AlchemyBattleElixir1";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyPotion1"] = {
        { 1, "s54221", "40211", "=q1=Potion of Speed", "=ds="};
        { 2, "s54222", "40212", "=q1=Potion of Wild Magic", "=ds="};
        { 3, "s53904", "40087", "=q1=Powerful Rejuvenation Potion", "=ds="};
        { 4, "s58868", "43570", "=q1=Endless Mana Potion", "=ds="..AL["Trainer"]};
        { 5, "s53837", "33448", "=q1=Runic Mana Potion", "=ds="..AL["Trainer"]};
        { 6, "s58871", "43569", "=q1=Endless Healing Potion", "=ds="..AL["Trainer"]};
        { 7, "s53836", "33447", "=q1=Runic Healing Potion", "=ds="..AL["Trainer"]};
        { 8, "s53936", "40213", "=q1=Mighty Arcane Protection Potion", "=ds="};
        { 9, "s53939", "40214", "=q1=Mighty Fire Protection Potion", "=ds="..AL["Drop"]};
        { 10, "s53937", "40215", "=q1=Mighty Frost Protection Potion", "=ds="..AL["Drop"]};
        { 11, "s53942", "40216", "=q1=Mighty Nature Protection Potion", "=ds="..AL["Drop"]};
        { 12, "s53938", "40217", "=q1=Mighty Shadow Protection Potion", "=ds="};
        { 13, "s53905", "40093", "=q1=Indestructible Potion", "=ds="..AL["Trainer"]};
        { 14, "s53900", "40081", "=q1=Potion of Nightmares", "=ds="..AL["Trainer"]};
        { 15, "s53895", "40077", "=q1=Crazy Alchemist's Potion", "=ds="..AL["Trainer"]};
        { 16, "s53839", "40067", "=q1=Icy Mana Potion", "=ds="..AL["Trainer"]};
        { 17, "s53838", "39671", "=q1=Resurgent Healing Potion", "=ds="..AL["Trainer"]};
        { 18, "s28586", "22850", "=q1=Super Rejuvenation Potion", "=ds="..AL["Discovery"]};
        { 19, "s38961", "31677", "=q1=Fel Mana Potion", "=ds="..BabbleZone["Shadowmoon Valley"]};
		{ 20, "s28579", "22849", "=q1=Ironshield Potion", "=ds="..BabbleBoss["Captain Skarloc"]..": "..BabbleZone["Old Hillsbrad Foothills"]};
        { 21, "s28575", "22845", "=q1=Major Arcane Protection Potion", "=ds="..BabbleZone["Nagrand"]};
        { 22, "s28571", "22841", "=q1=Major Fire Protection Potion", "=ds="..BabbleZone["The Mechanar"]};
		{ 23, "s28572", "22842", "=q1=Major Frost Protection Potion", "=ds="..BabbleBoss["Nexus-Prince Shaffar"]..": "..BabbleZone["Mana-Tombs"]};
		{ 24, "s28577", "22847", "=q1=Major Holy Protection Potion", "=ds="..BabbleZone["Blade's Edge Mountains"]};
		{ 25, "s28573", "22844", "=q1=Major Nature Protection Potion", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Cenarion Expedition"]};
		{ 26, "s28576", "22846", "=q1=Major Shadow Protection Potion", "=ds="..BabbleZone["Shadowmoon Valley"]};
		{ 27, "s28565", "22839", "=q1=Destruction Potion", "=ds="..AL["World Drop"]};
		{ 28, "s28564", "22838", "=q1=Haste Potion", "=ds="..AL["World Drop"]};
		{ 29, "s28563", "22837", "=q1=Heroic Potion", "=ds="..AL["World Drop"]};
		{ 30, "s28562", "22836", "=q1=Major Dreamless Sleep Potion", "=ds="..AL["Vendor"]};
        Next = "AlchemyPotion2";
        Prev = "AlchemyGuardianElixir1";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyPotion2"] = {
        { 1, "s38962", "31676", "=q1=Fel Regeneration Potion", "=ds="..BabbleZone["Shadowmoon Valley"]};
        { 2, "s28555", "22832", "=q1=Super Mana Potion", "=ds="..AL["Vendor"]};
        { 3, "s28554", "22871", "=q1=Shrouding Potion", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Sporeggar"]};
        { 4, "s45061", "34440", "=q1=Mad Alchemist's Potion", "=ds="..AL["Trainer"]};
		{ 5, "s28551", "22829", "=q1=Super Healing Potion", "=ds="..AL["Trainer"]};
        { 6, "s28550", "22828", "=q1=Insane Strength Potion", "=ds="..AL["World Drop"]};
        { 7, "s28546", "22826", "=q1=Sneaking Potion", "=ds="..AL["Vendor"]};
        { 8, "s33733", "28101", "=q1=Unstable Mana Potion", "=ds="..AL["Trainer"]};
        { 9, "s22732", "18253", "=q1=Major Rejuvenation Potion", "=ds="..BabbleZone["Molten Core"]};
        { 10, "s33732", "28100", "=q1=Volatile Healing Potion", "=ds="..AL["Trainer"]};
        { 11, "s17580", "13444", "=q1=Major Mana Potion", "=ds="..AL["Vendor"]..", "..BabbleZone["Western Plaguelands"]};
        { 12, "s17577", "13461", "=q1=Greater Arcane Protection Potion", "=ds="..BabbleZone["Winterspring"]};
		{ 13, "s17574", "13457", "=q1=Greater Fire Protection Potion", "=ds="..BabbleZone["Blackrock Spire"]};
		{ 14, "s17575", "13456", "=q1=Greater Frost Protection Potion", "=ds="..BabbleZone["Winterspring"]};
		{ 15, "s17576", "13458", "=q1=Greater Nature Protection Potion", "=ds="..BabbleZone["Western Plaguelands"]};
		{ 16, "s17578", "13459", "=q1=Greater Shadow Protection Potion", "=ds="..BabbleZone["Eastern Plaguelands"]};
        { 17, "s24367", "20008", "=q1=Living Action Potion", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Zandalar Tribe"]};
        { 18, "s17572", "13462", "=q1=Purification Potion", "=ds="..AL["World Drop"]};
        { 19, "s17570", "13455", "=q1=Greater Stoneshield Potion", "=ds="..AL["World Drop"]};
        { 20, "s24366", "20002", "=q1=Greater Dreamless Sleep Potion", "=ds="..BabbleFaction["Friendly"]..": "..BabbleFaction["Zandalar Tribe"]};
		{ 21, "s17556", "13446", "=q1=Major Healing Potion", "=ds="..AL["Trainer"]};
        { 22, "s17553", "13443", "=q1=Superior Mana Potion", "=ds="..AL["Trainer"]};
        { 23, "s17552", "13442", "=q1=Mighty Rage Potion", "=ds="..AL["Trainer"]};
        { 24, "s3175", "3387", "=q1=Limited Invulnerability Potion", "=ds="..AL["World Drop"]};
        { 25, "s11464", "9172", "=q1=Invisibility Potion", "=ds="..AL["World Drop"]};
        { 26, "s15833", "12190", "=q1=Dreamless Sleep Potion", "=ds="..AL["Trainer"]};
        { 27, "s11458", "9144", "=q1=Wildvine Potion", "=ds="..BabbleZone["The Hinterlands"].."/"..BabbleZone["Stranglethorn Vale"]};
        { 28, "s4942", "4623", "=q1=Lesser Stoneshield Potion", "=ds="..AL["Quest"]..": "..BabbleZone["Badlands"]};
		{ 29, "s11457", "3928", "=q1=Superior Healing Potion", "=ds="..AL["Trainer"]};
        { 30, "s11453", "9036", "=q1=Magic Resistance Potion", "=ds="..AL["World Drop"]};
        Next = "AlchemyPotion3";
        Prev = "AlchemyPotion1";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyPotion3"] = {
        { 1, "s11452", "9030", "=q1=Restorative Potion", "=ds="..AL["Quest"]..": "..BabbleZone["Badlands"]};
        { 2, "s11448", "6149", "=q1=Greater Mana Potion", "=ds="..AL["Trainer"]};
        { 3, "s7258", "6050", "=q1=Frost Protection Potion", "=ds="..AL["Vendor"]};
		{ 4, "s7259", "6052", "=q1=Nature Protection Potion", "=ds="..AL["Vendor"]};
        { 5, "s6618", "5633", "=q1=Great Rage Potion", "=ds="..AL["Vendor"]};
        { 6, "s3448", "3823", "=q1=Lesser Invisibility Potion", "=ds="..AL["Trainer"]};
		{ 7, "s7257", "6049", "=q1=Fire Protection Potion", "=ds="..AL["Vendor"]};
        { 8, "s3452", "3827", "=q1=Mana Potion", "=ds="..AL["Trainer"]};
        { 9, "s7181", "1710", "=q1=Greater Healing Potion", "=ds="..AL["Trainer"]};
        { 10, "s6624", "5634", "=q1=Free Action Potion", "=ds="..AL["Vendor"]};
        { 11, "s7256", "6048", "=q1=Shadow Protection Potion", "=ds="..AL["Vendor"]};
        { 12, "s3173", "3385", "=q1=Lesser Mana Potion", "=ds="..AL["Trainer"]};
		{ 13, "s3174", "3386", "=q1=Potion of Curing", "=ds="..AL["World Drop"]};
        { 14, "s3447", "929", "=q1=Healing Potion", "=ds="..AL["Trainer"]};
		{ 15, "s3172", "3384", "=q1=Minor Magic Resistance Potion", "=ds="..AL["World Drop"]};
        { 16, "s7255", "6051", "=q1=Holy Protection Potion", "=ds="..AL["Vendor"]};
		{ 17, "s7841", "6372", "=q1=Swim Speed Potion", "=ds="..AL["Trainer"]};
        { 18, "s6617", "5631", "=q1=Rage Potion", "=ds="..AL["Vendor"]};
		{ 19, "s2335", "2459", "=q1=Swiftness Potion", "=ds="..AL["World Drop"]};
        { 20, "s2337", "858", "=q1=Lesser Healing Potion", "=ds="..AL["Trainer"]};
        { 21, "s4508", "4596", "=q1=Discolored Healing Potion", "=ds="..AL["Quest"]..", "..BabbleZone["Silverpine Forest"]};
        { 22, "s2332", "2456", "=q1=Minor Rejuvenation Potion", "=ds="..AL["Trainer"]};
        { 23, "s2331", "2455", "=q1=Minor Mana Potion", "=ds="..AL["Trainer"]};
        { 24, "s2330", "118", "=q1=Minor Healing Potion", "=ds="..AL["Trainer"]};
        Next = "AlchemyTransmute1";
        Prev = "AlchemyPotion2";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyTransmute1"] = {
        { 1, "s54020", "40248", "=q1=Transmute: Eternal Might", "=ds="};
        { 2, "s57427", "41334", "=q3=Transmute: Earthsiege Diamond", "=ds="..AL["Trainer"]};
        { 3, "s57425", "41266", "=q3=Transmute: Skyflare Diamond", "=ds="..AL["Trainer"]};
        { 4, "s29688", "23571", "=q3=Transmute: Primal Might", "=ds="..AL["Vendor"]};
		{ 5, "s32765", "25867", "=q3=Transmute: Earthstorm Diamond", "=ds="..BabbleFaction["Honored"]..": "..BabbleFaction["Cenarion Expedition"]};
		{ 6, "s32766", "25868", "=q3=Transmute: Skyfire Diamond", "=ds="..BabbleFaction["Honored"]..": "..BabbleFaction["Thrallmar"].."/"..BabbleFaction["Honor Hold"]};
        { 7, "s53777", "35624", "=q2=Transmute: Eternal Air to Earth", "=ds="};
        { 8, "s53776", "35622", "=q2=Transmute: Eternal Air to Water", "=ds="};
        { 9, "s53781", "35623", "=q2=Transmute: Eternal Earth to Air", "=ds="};
        { 10, "s53782", "35627", "=q2=Transmute: Eternal Earth to Shadow", "=ds="};
        { 11, "s53775", "35625", "=q2=Transmute: Eternal Fire to Life", "=ds="};
        { 12, "s53774", "35622", "=q2=Transmute: Eternal Fire to Water", "=ds="};
        { 13, "s53773", "36860", "=q2=Transmute: Eternal Life to Fire", "=ds="};
        { 14, "s53771", "35627", "=q2=Transmute: Eternal Life to Shadow", "=ds="};
        { 15, "s53779", "35624", "=q2=Transmute: Eternal Shadow to Earth", "=ds="};
        { 16, "s53780", "35625", "=q2=Transmute: Eternal Shadow to Life", "=ds="};
        { 17, "s53783", "35623", "=q2=Transmute: Eternal Water to Air", "=ds="};
        { 18, "s53784", "36860", "=q2=Transmute: Eternal Water to Fire", "=ds="};
        { 19, "s60350", "41163", "=q2=Transmute: Titanium", "=ds="..AL["Trainer"]};
        { 20, "s28585", "21886", "=q2=Transmute: Primal Earth to Life", "=ds="..AL["Discovery"]};
		{ 21, "s28583", "22457", "=q2=Transmute: Primal Fire to Mana", "=ds="..AL["Discovery"]};
		{ 22, "s28584", "22452", "=q2=Transmute: Primal Life to Earth", "=ds="..AL["Discovery"]};
		{ 23, "s28582", "21884", "=q2=Transmute: Primal Mana to Fire", "=ds="..AL["Discovery"]};
		{ 24, "s28580", "21885", "=q2=Transmute: Primal Shadow to Water", "=ds="..AL["Discovery"]};
		{ 25, "s28581", "22456", "=q2=Transmute: Primal Water to Shadow", "=ds="..AL["Discovery"]};
        { 26, "s28566", "21884", "=q2=Transmute: Primal Air to Fire", "=ds="..BabbleFaction["Revered"]..": "..BabbleFaction["The Sha'tar"]};
		{ 27, "s28567", "21885", "=q2=Transmute: Primal Earth to Water", "=ds="..BabbleFaction["Revered"]..": "..BabbleFaction["Sporeggar"]};
		{ 28, "s28568", "22452", "=q2=Transmute: Primal Fire to Earth", "=ds="..BabbleFaction["Revered"]..": "..BabbleFaction["The Mag'har"].."/"..BabbleFaction["Kurenai"]};
		{ 29, "s28569", "22451", "=q2=Transmute: Primal Water to Air", "=ds="..BabbleFaction["Revered"]..": "..BabbleFaction["Cenarion Expedition"]};
        { 30, "s11479", "3577", "=q2=Transmute: Iron to Gold", "=ds="..AL["Vendor"]..", "..BabbleZone["Tanaris"]};
        Next = "AlchemyTransmute2";
        Prev = "AlchemyPotion3";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyTransmute2"] = {
        { 1, "s11480", "6037", "=q2=Transmute: Mithril to Truesilver", "=ds="..AL["Vendor"]..", "..BabbleZone["Tanaris"]};
        { 2, "s17187", "12360", "=q2=Transmute: Arcanite Bar", "=ds="..AL["Vendor"]..", "..BabbleZone["Tanaris"]};
		{ 3, "s17559", "7078", "=q2=Transmute: Air to Fire", "=ds="..BabbleFaction["Honored"]..": "..BabbleFaction["Argent Dawn"]};
		{ 4, "s17566", "12803", "=q2=Transmute: Earth to Life", "=ds="..AL["World Drop"]};
		{ 5, "s17561", "7080", "=q2=Transmute: Earth to Water", "=ds="..AL["Vendor"]..", "..BabbleZone["Felwood"]};
		{ 6, "s17560", "7076", "=q2=Transmute: Fire to Earth", "=ds="..AL["Vendor"]..", "..BabbleZone["Blackrock Depths"]};
		{ 7, "s17565", "7076", "=q2=Transmute: Life to Earth", "=ds="..AL["World Drop"]};
		{ 8, "s17563", "7080", "=q2=Transmute: Undeath to Water", "=ds="..AL["World Drop"]};
		{ 9, "s17562", "7082", "=q2=Transmute: Water to Air", "=ds="..AL["Vendor"]..", "..BabbleZone["Western Plaguelands"]};
		{ 10, "s17564", "12808", "=q2=Transmute: Water to Undeath", "=ds="..AL["World Drop"]};
        { 11, "s25146", "7068", "=q1=Transmute: Elemental Fire", "=ds="..AL["Vendor"]..", "..BabbleZone["Blackrock Depths"]};
        Next = "AlchemyFlask1";
        Prev = "AlchemyTransmute1";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyFlask1"] = {
        { 1, "s53903", "40084", "=q1=Flask of Endless Rage", "=ds="..AL["Trainer"]};
        { 2, "s54213", "40404", "=q1=Flask of Pure Mojo", "=ds="..AL["Trainer"]};
        { 3, "s53902", "40083", "=q1=Flask of Stoneblood", "=ds="..AL["Trainer"]};
        { 4, "s53901", "40082", "=q1=Flask of the Frost Wyrm", "=ds="..AL["Trainer"]};
        { 5, "s53899", "40079", "=q1=Lesser Flask of Toughness", "=ds="..AL["Trainer"]};
        { 6, "s42736", "33208", "=q1=Flask of Chromatic Wonder", "=ds="..BabbleFaction["Honored"]..": "..BabbleFaction["The Violet Eye"]};
		{ 7, "s28590", "22861", "=q1=Flask of Blinding Light", "=ds="..AL["Discovery"]};
		{ 8, "s28587", "22851", "=q1=Flask of Fortification", "=ds="..AL["Discovery"]};
		{ 9, "s28588", "22853", "=q1=Flask of Mighty Restoration", "=ds="..AL["Discovery"]};
		{ 10, "s28591", "22866", "=q1=Flask of Pure Death", "=ds="..AL["Discovery"]};
		{ 11, "s28589", "22854", "=q1=Flask of Relentless Assault", "=ds="..AL["Discovery"]};
        { 12, "s17638", "13513", "=q1=Flask of Chromatic Resistance", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Lower City"]};
		{ 13, "s17636", "13511", "=q1=Flask of Distilled Wisdom", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Cenarion Expedition"]};
        { 14, "s17634", "13506", "=q1=Flask of Petrification", "=ds="..AL["World Drop"]};
		{ 15, "s17637", "13512", "=q1=Flask of Supreme Power", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Keepers of Time"]};
		{ 16, "s17635", "13510", "=q1=Flask of the Titans", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["The Sha'tar"]};
        Next = "AlchemyMisc1";
        Prev = "AlchemyTransmute1";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyMisc1"] = {
        { 1, "s47050", "35751", "=q4=Assassin's Alchemist Stone", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Shattered Sun Offensive"]};
		{ 2, "s47046", "35748", "=q4=Guardian's Alchemist Stone", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Shattered Sun Offensive"]};
		{ 3, "s47049", "35750", "=q4=Redeemer's Alchemist Stone", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Shattered Sun Offensive"]};
        { 4, "s47048", "35749", "=q4=Sorcerer's Alchemist Stone", "=ds="..BabbleFaction["Exalted"]..": "..BabbleFaction["Shattered Sun Offensive"]};
        { 5, "s17632", "13503", "=q4=Alchemist's Stone", "=ds="..BabbleFaction["Revered"]..": "..BabbleFaction["The Sha'tar"]};
        { 6, "s60403", "44323", "=q3=Indestructible Alchemist Stone", "=ds="..AL["Trainer"]};
        { 7, "s60396", "44322", "=q3=Mercurial Alchemist Stone", "=ds="..AL["Trainer"]};
        { 8, "s60405", "44324", "=q3=Mighty Alchemist Stone", "=ds="..AL["Trainer"]};
        { 9, "s24266", "19931", "=q3=Gurubashi Mojo Madness", "=ds="..BabbleZone["Zul'Gurub"]};
        { 10, "s38070", "31080", "=q2=Mercurial Stone", "=ds="..AL["Trainer"]};
        { 11, "s53812", "40195", "=q1=Pygmy Oil", "=ds="..AL["Trainer"]};
        { 12, "s41458", "32839", "=q1=Cauldron of Major Arcane Protection Potion", "=ds="..AL["Discovery"]};
		{ 13, "s41500", "32849", "=q1=Cauldron of Major Fire Protection Potion", "=ds="..AL["Discovery"]};
		{ 14, "s41501", "32850", "=q1=Cauldron of Major Frost Protection Potion", "=ds="..AL["Discovery"]};
		{ 15, "s41502", "32851", "=q1=Cauldron of Major Nature Protection Potion", "=ds="..AL["Discovery"]};
		{ 16, "s41503", "32852", "=q1=Cauldron of Major Shadow Protection Potion", "=ds="..AL["Discovery"]};
        { 17, "s28552", "22830", "=q1=Elixir of the Searching Eye", "=ds="..AL["World Drop"]};
        { 18, "s28543", "22823", "=q1=Elixir of Camouflage", "=ds="..AL["Vendor"]};
        { 19, "s11478", "9233", "=q1=Elixir of Detect Demon", "=ds="..AL["Trainer"]};
        { 20, "s17551", "13423", "=q1=Stonescale Oil", "=ds="..AL["Trainer"]};
        { 21, "s11473", "9210", "=q1=Ghost Dye", "=ds="..AL["Vendor"]..", "..BabbleZone["Feralas"]};
        { 22, "s11468", "9197", "=q1=Elixir of Dream Vision", "=ds="..AL["World Drop"]};
        { 23, "s11460", "9154", "=q1=Elixir of Detect Undead", "=ds="..AL["Trainer"]};
        { 24, "s22808", "18294", "=q1=Elixir of Greater Water Breathing", "=ds="..AL["Trainer"]};
        { 25, "s11456", "9061", "=q1=Goblin Rocket Fuel", "=ds="..AL["Crafted"]..": "..GetSpellInfo(4036)};
        { 26, "s11451", "8956", "=q1=Oil of Immolation", "=ds="..AL["Trainer"]};
        { 27, "s12609", "10592", "=q1=Catseye Elixir", "=ds="..AL["Trainer"]};
        { 28, "s3454", "3829", "=q1=Frost Oil", "=ds="..AL["Vendor"]..", "..BabbleZone["Alterac Mountains"]};
        { 29, "s11459", "9149", "=q1=Philosopher's Stone", "=ds="..AL["Vendor"]..", "..BabbleZone["Tanaris"]};
        { 30, "s3453", "3828", "=q1=Elixir of Detect Lesser Invisibility", "=ds="..AL["World Drop"]};
        Prev = "AlchemyFlask1";
        Next = "AlchemyMisc2";
        Back = "ALCHEMYMENU";
    };
    
    AtlasLoot_Data["AlchemyMisc2"] = {
        { 1, "s3449", "3824", "=q1=Shadow Oil", "=ds="..AL["Vendor"]};
        { 2, "s7837", "6371", "=q1=Fire Oil", "=ds="..AL["Trainer"]};
        { 3, "s7179", "5996", "=q1=Elixir of Water Breathing", "=ds="..AL["Trainer"]};
        { 4, "s7836", "6370", "=q1=Blackmouth Oil", "=ds="..AL["Trainer"]};
        Prev = "AlchemyMisc1";
        Back = "ALCHEMYMENU";
    };

		---------------------
		--- Blacksmithing ---
		---------------------

	AtlasLoot_Data["SmithingApprentice1"] = {
		{ 1, "s12260", "10421", "=q1=Rough Copper Vest", "=ds=#sr# 1"};
		{ 2, "s2660", "2862", "=q1=Rough Sharpening Stone", "=ds=#sr# 1"};
		{ 3, "s3115", "3239", "=q1=Rough Weightstone", "=ds=#sr# 1"};
		{ 4, "s2663", "2853", "=q1=Copper Bracers", "=ds=#sr# 1"};
		{ 5, "s2662", "2852", "=q1=Copper Chain Pants", "=ds=#sr# 1"};
		{ 6, "s2737", "2844", "=q1=Copper Mace", "=ds=#sr# 15"};
		{ 7, "s2738", "2845", "=q1=Copper Axe", "=ds=#sr# 20"};
		{ 8, "s3319", "3469", "=q1=Copper Chain Boots", "=ds=#sr# 20"};
		{ 9, "s3320", "3470", "=q1=Rough Grinding Stone", "=ds=#sr# 25"};
		{ 10, "s2739", "2847", "=q1=Copper Shortsword", "=ds=#sr# 25"};
		{ 11, "s9983", "7955", "=q1=Copper Claymore", "=ds=#sr# 30"};
		{ 12, "s8880", "7166", "=q1=Copper Dagger", "=ds=#sr# 30"};
		{ 13, "s3293", "3488", "=q2=Copper Battle Axe", "=ds=#sr# 35"};
		{ 14, "s3321", "3471", "=q2=Copper Chain Vest", "=ds=#sr# 35"};
		{ 15, "s43549", "33791", "=q2=Heavy Copper Longsword", "=ds=#sr# 35"};
		{ 16, "s2661", "2851", "=q1=Copper Chain Belt", "=ds=#sr# 35"};
		{ 17, "s3323", "3472", "=q1=Runed Copper Gauntlets", "=ds=#sr# 40"};
		{ 18, "s3324", "3473", "=q2=Runed Copper Pants", "=ds=#sr# 45"};
		Next = "SmithingJourneyman1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingJourneyman1"] = {
		{ 1, "s3325", "3474", "=q2=Gemmed Copper Gauntlets", "=ds=#sr# 60"};
		{ 2, "s2665", "2863", "=q1=Coarse Sharpening Stone", "=ds=#sr# 65"};
		{ 3, "s3116", "3240", "=q1=Coarse Weightstone", "=ds=#sr# 65"};
		{ 4, "s7408", "6214", "=q1=Heavy Copper Maul", "=ds=#sr# 65"};
		{ 5, "s3294", "3489", "=q2=Thick War Axe", "=ds=#sr# 70"};
		{ 6, "s2666", "2857", "=q1=Runed Copper Belt", "=ds=#sr# 70"};
		{ 7, "s3326", "3478", "=q1=Coarse Grinding Stone", "=ds=#sr# 75"};
		{ 8, "s2667", "2864", "=q2=Runed Copper Breastplate", "=ds=#sr# 80"};
		{ 9, "s2664", "2854", "=q1=Runed Copper Bracers", "=ds=#sr# 90"};
		{ 10, "s7817", "6350", "=q1=Rough Bronze Boots", "=ds=#sr# 95"};
		{ 11, "s3292", "3487", "=q2=Heavy Copper Broadsword", "=ds=#sr# 95"};
		{ 12, "s19666", "15869", "=q2=Silver Skeleton Key", "=ds=#sr# 100"};
		{ 13, "s7818", "6338", "=q1=Silver Rod", "=ds=#sr# 100"};
		{ 14, "s34979", "29201", "=q2=Thick Bronze Darts", "=ds=#sr# 100"};
		{ 15, "s8367", "6731", "=q2=Ironforge Breastplate", "=ds=#sr# 100"};
		{ 16, "s3491", "3848", "=q2=Big Bronze Knife", "=ds=#sr# 105"};
		{ 17, "s2668", "2865", "=q2=Rough Bronze Leggings", "=ds=#sr# 105"};
		{ 18, "s2670", "2866", "=q1=Rough Bronze Cuirass", "=ds=#sr# 105"};
		{ 19, "s6517", "5540", "=q2=Pearl-handled Dagger", "=ds=#sr# 110"};
		{ 20, "s2740", "2848", "=q1=Bronze Mace", "=ds=#sr# 110"};
		{ 21, "s3328", "3480", "=q1=Rough Bronze Shoulders", "=ds=#sr# 110"};
		{ 22, "s2741", "2849", "=q1=Bronze Axe", "=ds=#sr# 115"};
		{ 23, "s2672", "2868", "=q2=Patterned Bronze Bracers", "=ds=#sr# 120"};
		{ 24, "s2742", "2850", "=q1=Bronze Shortsword", "=ds=#sr# 120"};
		Next = "SmithingExpert1";
		Prev = "SmithingApprentice1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingExpert1"] = {
		{ 1, "s2674", "2871", "=q1=Heavy Sharpening Stone", "=ds=#sr# 125"};
		{ 2, "s3117", "3241", "=q1=Heavy Weightstone", "=ds=#sr# 125"};
		{ 3, "s3337", "3486", "=q1=Heavy Grinding Stone", "=ds=#sr# 125"};
		{ 4, "s3295", "3490", "=q2=Deadly Bronze Poniard", "=ds=#sr# 125"};
		{ 5, "s3330", "3481", "=q2=Silvered Bronze Shoulders", "=ds=#sr# 125"};
		{ 6, "s9985", "7956", "=q1=Bronze Warhammer", "=ds=#sr# 125"};
		{ 7, "s3296", "3491", "=q2=Heavy Bronze Mace", "=ds=#sr# 130"};
		{ 8, "s3331", "3482", "=q2=Silvered Bronze Boots", "=ds=#sr# 130"};
		{ 9, "s2673", "2869", "=q2=Silvered Bronze Breastplate", "=ds=#sr# 130"};
		{ 10, "s9986", "7957", "=q1=Bronze Greatsword", "=ds=#sr# 130"};
		{ 11, "s3333", "3483", "=q2=Silvered Bronze Gauntlets", "=ds=#sr# 135"};
		{ 12, "s9987", "7958", "=q1=Bronze Battle Axe", "=ds=#sr# 135"};
		{ 13, "s6518", "5541", "=q2=Iridescent Hammer", "=ds=#sr# 140"};
		{ 14, "s2675", "2870", "=q3=Shining Silver Breastplate", "=ds=#sr# 145"};
		{ 15, "s3334", "3484", "=q2=Green Iron Boots", "=ds=#sr# 145"};
		{ 16, "s3297", "3492", "=q2=Mighty Iron Hammer", "=ds=#sr# 145"};
		{ 17, "s8768", "7071", "=q1=Iron Buckle", "=ds=#sr# 150"};
		{ 18, "s19667", "15870", "=q2=Golden Skeleton Key", "=ds=#sr# 150"};
		{ 19, "s14379", "11128", "=q1=Golden Rod", "=ds=#sr# 150"};
		{ 20, "s3336", "3485", "=q2=Green Iron Gauntlets", "=ds=#sr# 150"};
		{ 21, "s7221", "6042", "=q1=Iron Shield Spike", "=ds=#sr# 150"};
		{ 22, "s3506", "3842", "=q2=Green Iron Leggings", "=ds=#sr# 155"};
		{ 23, "s12259", "10423", "=q2=Silvered Bronze Leggings", "=ds=#sr# 155"};
		{ 24, "s3494", "3851", "=q2=Solid Iron Maul", "=ds=#sr# 155"};
		{ 25, "s9813", "7914", "=q2=Barbaric Iron Breastplate", "=ds=#sr# 160"};
		{ 26, "s9811", "7913", "=q2=Barbaric Iron Shoulders", "=ds=#sr# 160"};
		{ 27, "s3504", "3840", "=q2=Green Iron Shoulders", "=ds=#sr# 160"};
		{ 28, "s3492", "3849", "=q2=Hardened Iron Shortsword", "=ds=#sr# 160"};
		{ 29, "s3501", "3835", "=q1=Green Iron Bracers", "=ds=#sr# 165"};
		{ 30, "s7222", "6043", "=q1=Iron Counterweight", "=ds=#sr# 165"};
		Next = "SmithingExpert2";
		Prev = "SmithingJourneyman1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingExpert2"] = {
		{ 1, "s3495", "3852", "=q2=Golden Iron Destroyer", "=ds=#sr# 170"};
		{ 2, "s3507", "3843", "=q2=Golden Scale Leggings", "=ds=#sr# 170"};
		{ 3, "s3502", "3836", "=q2=Green Iron Helm", "=ds=#sr# 170"};
		{ 4, "s9814", "7915", "=q2=Barbaric Iron Helm", "=ds=#sr# 175"};
		{ 5, "s3505", "3841", "=q2=Golden Scale Shoulders", "=ds=#sr# 175"};
		{ 6, "s3493", "3850", "=q2=Jade Serpentblade", "=ds=#sr# 175"};
		{ 7, "s3508", "3844", "=q3=Green Iron Hauberk", "=ds=#sr# 180"};
		{ 8, "s9818", "7916", "=q2=Barbaric Iron Boots", "=ds=#sr# 180"};
		{ 9, "s15972", "12259", "=q2=Glinting Steel Dagger", "=ds=#sr# 180"};
		{ 10, "s3496", "3853", "=q2=Moonsteel Broadsword", "=ds=#sr# 180"};
		{ 11, "s9820", "7917", "=q2=Barbaric Iron Gloves", "=ds=#sr# 185"};
		{ 12, "s3498", "3855", "=q2=Massive Iron Axe", "=ds=#sr# 185"};
		{ 13, "s3513", "3846", "=q2=Polished Steel Boots", "=ds=#sr# 185"};
		{ 14, "s7223", "6040", "=q1=Golden Scale Bracers", "=ds=#sr# 185"};
		{ 15, "s21913", "17704", "=q2=Edge of Winter", "=ds=#sr# 190"};
		{ 16, "s3503", "3837", "=q2=Golden Scale Coif", "=ds=#sr# 190"};
		{ 17, "s15973", "12260", "=q2=Searing Golden Blade", "=ds=#sr# 190"};
		{ 18, "s7224", "6041", "=q1=Steel Weapon Chain", "=ds=#sr# 190"};
		{ 19, "s3511", "3845", "=q2=Golden Scale Cuirass", "=ds=#sr# 195"};
		Next = "SmithingArtisan1";
		Prev = "SmithingExpert1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingArtisan1"] = {
		{ 1, "s9920", "7966", "=q1=Solid Grinding Stone", "=ds=#sr# 200"};
		{ 2, "s9918", "7964", "=q1=Solid Sharpening Stone", "=ds=#sr# 200"};
		{ 3, "s9921", "7965", "=q1=Solid Weightstone", "=ds=#sr# 200"};
		{ 4, "s19668", "15871", "=q2=Truesilver Skeleton Key", "=ds=#sr# 200"};
		{ 5, "s14380", "11144", "=q1=Truesilver Rod", "=ds=#sr# 200"};
		{ 6, "s34981", "29202", "=q2=Whirling Steel Axes", "=ds=#sr# 200"};
		{ 7, "s3497", "3854", "=q2=Frost Tiger Blade", "=ds=#sr# 200"};
		{ 8, "s3515", "3847", "=q2=Golden Scale Boots", "=ds=#sr# 200"};
		{ 9, "s3500", "3856", "=q2=Shadow Crescent Axe", "=ds=#sr# 200"};
		{ 10, "s9916", "7963", "=q2=Steel Breastplate", "=ds=#sr# 200"};
		{ 11, "s11454", "9060", "=q1=Inlaid Mithril Cylinder", "=ds=#sr# 200"};
		{ 12, "s11643", "9366", "=q2=Golden Scale Gauntlets", "=ds=#sr# 205"};
		{ 13, "s9928", "7919", "=q2=Heavy Mithril Gauntlet", "=ds=#sr# 205"};
		{ 14, "s9926", "7918", "=q2=Heavy Mithril Shoulder", "=ds=#sr# 205"};
		{ 15, "s9933", "7921", "=q2=Heavy Mithril Pants", "=ds=#sr# 210"};
		{ 16, "s9931", "7920", "=q2=Mithril Scale Pants", "=ds=#sr# 210"};
		{ 17, "s9993", "7941", "=q2=Heavy Mithril Axe", "=ds=#sr# 210"};
		{ 18, "s9937", "7924", "=q2=Mithril Scale Bracers", "=ds=#sr# 215"};
		{ 19, "s9939", "7967", "=q2=Mithril Shield Spike", "=ds=#sr# 215"};
		{ 20, "s9935", "7922", "=q1=Steel Plate Helm", "=ds=#sr# 215"};
		{ 21, "s9950", "7927", "=q2=Ornate Mithril Gloves", "=ds=#sr# 220"};
		{ 22, "s9945", "7926", "=q2=Ornate Mithril Pants", "=ds=#sr# 220"};
		{ 23, "s9995", "7942", "=q2=Blue Glittering Axe", "=ds=#sr# 220"};
		{ 24, "s9954", "7938", "=q3=Truesilver Gauntlets", "=ds=#sr# 225"};
		{ 25, "s9952", "7928", "=q2=Ornate Mithril Shoulder", "=ds=#sr# 225"};
		{ 26, "s9997", "7943", "=q2=Wicked Mithril Blade", "=ds=#sr# 225"};
		{ 27, "s9959", "7930", "=q2=Heavy Mithril Breastplate", "=ds=#sr# 230"};
		{ 28, "s9961", "7931", "=q2=Mithril Coif", "=ds=#sr# 230"};
		{ 29, "s10001", "7945", "=q2=Big Black Mace", "=ds=#sr# 230"};
		{ 30, "s9968", "7933", "=q2=Heavy Mithril Boots", "=ds=#sr# 235"};
		Next = "SmithingArtisan2";
		Prev = "SmithingExpert2";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingArtisan2"] = {
		{ 1, "s9966", "7932", "=q2=Mithril Scale Shoulders", "=ds=#sr# 235"};
		{ 2, "s9964", "7969", "=q2=Mithril Spurs", "=ds=#sr# 235"};
		{ 3, "s10003", "7954", "=q3=The Shatterer", "=ds=#sr# 235"};
		{ 4, "s10005", "7944", "=q2=Dazzling Mithril Rapier", "=ds=#sr# 240"};
		{ 5, "s9970", "7934", "=q2=Heavy Mithril Helm", "=ds=#sr# 245"};
		{ 6, "s9974", "7939", "=q3=Truesilver Breastplate", "=ds=#sr# 245"};
		{ 7, "s10007", "7961", "=q3=Phantom Blade", "=ds=#sr# 245"};
		{ 8, "s10009", "7946", "=q2=Runed Mithril Hammer", "=ds=#sr# 245"};
		{ 9, "s16639", "12644", "=q1=Dense Grinding Stone", "=ds=#sr# 250"};
		{ 10, "s16641", "12404", "=q1=Dense Sharpening Stone", "=ds=#sr# 250"};
		{ 11, "s16640", "12643", "=q1=Dense Weightstone", "=ds=#sr# 250"};
		{ 12, "s16642", "12405", "=q2=Thorium Armor", "=ds=#sr# 250"};
		{ 13, "s16643", "12406", "=q2=Thorium Belt", "=ds=#sr# 250"};
		{ 14, "s10011", "7959", "=q3=Blight", "=ds=#sr# 250"};
		{ 15, "s16644", "12408", "=q2=Thorium Bracers", "=ds=#sr# 255"};
		{ 16, "s10013", "7947", "=q2=Ebon Shiv", "=ds=#sr# 255"};
		{ 17, "s36122", "30069", "=q3=Earthforged Leggings", "=ds=#sr# 260"};
		{ 18, "s36125", "30071", "=q3=Light Earthforged Blade", "=ds=#sr# 260"};
		{ 19, "s36128", "30073", "=q3=Light Emberforged Hammer", "=ds=#sr# 260"};
		{ 20, "s36126", "30072", "=q3=Light Skyforged Axe", "=ds=#sr# 260"};
		{ 21, "s36124", "30070", "=q3=Windforged Leggings", "=ds=#sr# 260"};
		{ 22, "s16645", "12416", "=q2=Radiant Belt", "=ds=#sr# 260"};
		{ 23, "s10015", "7960", "=q3=Truesilver Champion", "=ds=#sr# 260"};
		{ 24, "s15292", "11608", "=q3=Dark Iron Pulverizer", "=ds=#sr# 265"};
		{ 25, "s16647", "12424", "=q2=Imperial Plate Belt", "=ds=#sr# 265"};
		{ 26, "s16646", "12428", "=q2=Imperial Plate Shoulders", "=ds=#sr# 265"};
		{ 27, "s16650", "12624", "=q3=Wildthorn Mail", "=ds=#sr# 270"};
		{ 28, "s15293", "11606", "=q2=Dark Iron Mail", "=ds=#sr# 270"};
		{ 29, "s16649", "12425", "=q2=Imperial Plate Bracers", "=ds=#sr# 270"};
		{ 30, "s16648", "12415", "=q2=Radiant Breastplate", "=ds=#sr# 270"};
		Next = "SmithingMaster1";
		Prev = "SmithingArtisan1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingMaster1"] = {
		{ 1, "s19669", "15872", "=q2=Arcanite Skeleton Key", "=ds=#sr# 275"};
		{ 2, "s20201", "16206", "=q1=Arcanite Rod", "=ds=#sr# 275"};
		{ 3, "s15294", "11607", "=q3=Dark Iron Sunderer", "=ds=#sr# 275"};
		{ 4, "s16651", "12645", "=q2=Thorium Shield Spike", "=ds=#sr# 275"};
		{ 5, "s16970", "12774", "=q3=Dawn's Edge", "=ds=#sr# 275"};
		{ 6, "s16969", "12773", "=q2=Ornate Thorium Handaxe", "=ds=#sr# 275"};
		{ 7, "s15295", "11605", "=q2=Dark Iron Shoulders", "=ds=#sr# 280"};
		{ 8, "s16652", "12409", "=q2=Thorium Boots", "=ds=#sr# 280"};
		{ 9, "s16653", "12410", "=q2=Thorium Helm", "=ds=#sr# 280"};
		{ 10, "s16978", "12777", "=q3=Blazing Rapier", "=ds=#sr# 280"};
		{ 11, "s16973", "12776", "=q3=Enchanted Battlehammer", "=ds=#sr# 280"};
		{ 12, "s16971", "12775", "=q2=Huge Thorium Battleaxe", "=ds=#sr# 280"};
		{ 13, "s15296", "11604", "=q3=Dark Iron Plate", "=ds=#sr# 285"};
		{ 14, "s16667", "12628", "=q3=Demon Forged Breastplate", "=ds=#sr# 285"};
		{ 15, "s16654", "12418", "=q2=Radiant Gloves", "=ds=#sr# 285"};
		{ 16, "s16983", "12781", "=q3=Serenity", "=ds=#sr# 285"};
		{ 17, "s16660", "12625", "=q3=Dawnbringer Shoulders", "=ds=#sr# 290"};
		{ 18, "s16655", "12631", "=q3=Fiery Plate Gauntlets", "=ds=#sr# 290"};
		{ 19, "s23632", "19051", "=q3=Girdle of the Dawn", "=ds=#sr# 290"};
		{ 20, "s23628", "19043", "=q3=Heavy Timbermaw Belt", "=ds=#sr# 290"};
		{ 21, "s16656", "12419", "=q2=Radiant Boots", "=ds=#sr# 290"};
		{ 22, "s16985", "12782", "=q3=Corruption", "=ds=#sr# 290"};
		{ 23, "s16984", "12792", "=q2=Volcanic Hammer", "=ds=#sr# 290"};
		{ 24, "s20874", "17014", "=q4=Dark Iron Bracers", "=ds=#sr# 295"};
		{ 25, "s20872", "16989", "=q4=Fiery Chain Girdle", "=ds=#sr# 295"};
		{ 26, "s16661", "12632", "=q3=Storm Gauntlets", "=ds=#sr# 295"};
		{ 27, "s16657", "12426", "=q2=Imperial Plate Boots", "=ds=#sr# 295"};
		{ 28, "s16658", "12427", "=q2=Imperial Plate Helm", "=ds=#sr# 295"};
		{ 29, "s16659", "12417", "=q2=Radiant Circlet", "=ds=#sr# 295"};
		{ 30, "s32655", "25843", "=q1=Fel Iron Rod", "=ds=#sr# 300"};
		Next = "SmithingMaster2";
		Prev = "SmithingArtisan2";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingMaster2"] = {
		{ 1, "s29654", "23528", "=q1=Fel Sharpening Stone", "=ds=#sr# 300"};
		{ 2, "s34607", "28420", "=q1=Fel Weightstone", "=ds=#sr# 300"};
		{ 3, "s22757", "18262", "=q2=Elemental Sharpening Stone", "=ds=#sr# 300"};
		{ 4, "s29551", "23493", "=q2=Fel Iron Chain Coif", "=ds=#sr# 300"};
		{ 5, "s29545", "23482", "=q2=Fel Iron Plate Gloves", "=ds=#sr# 300"};
		{ 6, "s23638", "19166", "=q4=Black Amnesty", "=ds=#sr# 300"};
		{ 7, "s27589", "22194", "=q4=Black Grasp of the Destroyer", "=ds=#sr# 300"};
		{ 8, "s23639", "19167", "=q4=Blackfury", "=ds=#sr# 300"};
		{ 9, "s23652", "19168", "=q4=Blackguard", "=ds=#sr# 300"};
		{ 10, "s24399", "20039", "=q4=Dark Iron Boots", "=ds=#sr# 300"};
		{ 11, "s23637", "19164", "=q4=Dark Iron Gauntlets", "=ds=#sr# 300"};
		{ 12, "s23636", "19148", "=q4=Dark Iron Helm", "=ds=#sr# 300"};
		{ 13, "s20876", "17013", "=q4=Dark Iron Leggings", "=ds=#sr# 300"};
		{ 14, "s23650", "19170", "=q4=Ebon Hand", "=ds=#sr# 300"};
		{ 15, "s20873", "16988", "=q4=Fiery Chain Shoulders", "=ds=#sr# 300"};
		{ 16, "s28244", "22671", "=q4=Icebane Bracers", "=ds=#sr# 300"};
		{ 17, "s28242", "22669", "=q4=Icebane Breastplate", "=ds=#sr# 300"};
		{ 18, "s28243", "22670", "=q4=Icebane Gauntlets", "=ds=#sr# 300"};
		{ 19, "s16746", "12641", "=q4=Invulnerable Mail", "=ds=#sr# 300"};
		{ 20, "s27586", "22198", "=q4=Jagged Obsidian Shield", "=ds=#sr# 300"};
		{ 21, "s16729", "12640", "=q4=Lionheart Helm", "=ds=#sr# 300"};
		{ 22, "s23653", "19169", "=q4=Nightfall", "=ds=#sr# 300"};
		{ 23, "s27590", "22191", "=q4=Obsidian Mail Tunic", "=ds=#sr# 300"};
		{ 24, "s27830", "22384", "=q4=Persuader", "=ds=#sr# 300"};
		{ 25, "s27832", "22383", "=q4=Sageblade", "=ds=#sr# 300"};
		{ 26, "s16741", "12639", "=q4=Stronghold Gauntlets", "=ds=#sr# 300"};
		{ 27, "s27587", "22196", "=q4=Thick Obsidian Breastplate", "=ds=#sr# 300"};
		{ 28, "s27829", "22385", "=q4=Titanic Leggings", "=ds=#sr# 300"};
		{ 29, "s16991", "12798", "=q3=Annihilator", "=ds=#sr# 300"};
		{ 30, "s16990", "12790", "=q3=Arcanite Champion", "=ds=#sr# 300"};
		Next = "SmithingMaster3";
		Prev = "SmithingMaster1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingMaster3"] = {
		{ 1, "s16994", "12784", "=q3=Arcanite Reaper", "=ds=#sr# 300"};
		{ 2, "s24136", "19690", "=q3=Bloodsoul Breastplate", "=ds=#sr# 300"};
		{ 3, "s24138", "19692", "=q3=Bloodsoul Gauntlets", "=ds=#sr# 300"};
		{ 4, "s24137", "19691", "=q3=Bloodsoul Shoulders", "=ds=#sr# 300"};
		{ 5, "s20897", "17016", "=q3=Dark Iron Destroyer", "=ds=#sr# 300"};
		{ 6, "s20890", "17015", "=q3=Dark Iron Reaver", "=ds=#sr# 300"};
		{ 7, "s24914", "20550", "=q3=Darkrune Breastplate", "=ds=#sr# 300"};
		{ 8, "s24912", "20549", "=q3=Darkrune Gauntlets", "=ds=#sr# 300"};
		{ 9, "s24913", "20551", "=q3=Darkrune Helm", "=ds=#sr# 300"};
		{ 10, "s24139", "19693", "=q3=Darksoul Breastplate", "=ds=#sr# 300"};
		{ 11, "s24140", "19694", "=q3=Darksoul Leggings", "=ds=#sr# 300"};
		{ 12, "s24141", "19695", "=q3=Darksoul Shoulders", "=ds=#sr# 300"};
		{ 13, "s16745", "12618", "=q3=Enchanted Thorium Breastplate", "=ds=#sr# 300"};
		{ 14, "s16742", "12620", "=q3=Enchanted Thorium Helm", "=ds=#sr# 300"};
		{ 15, "s16744", "12619", "=q3=Enchanted Thorium Leggings", "=ds=#sr# 300"};
		{ 16, "s16992", "12797", "=q3=Frostguard", "=ds=#sr# 300"};
		{ 17, "s23633", "19057", "=q3=Gloves of the Dawn", "=ds=#sr# 300"};
		{ 18, "s16988", "12796", "=q3=Hammer of the Titans", "=ds=#sr# 300"};
		{ 19, "s16995", "12783", "=q3=Heartseeker", "=ds=#sr# 300"};
		{ 20, "s27585", "22197", "=q3=Heavy Obsidian Belt", "=ds=#sr# 300"};
		{ 21, "s23629", "19048", "=q3=Heavy Timbermaw Boots", "=ds=#sr# 300"};
		{ 22, "s16728", "12636", "=q3=Helm of the Great Chief", "=ds=#sr# 300"};
		{ 23, "s28463", "22764", "=q3=Ironvine Belt", "=ds=#sr# 300"};
		{ 24, "s28461", "22762", "=q3=Ironvine Breastplate", "=ds=#sr# 300"};
		{ 25, "s28462", "22763", "=q3=Ironvine Gloves", "=ds=#sr# 300"};
		{ 26, "s27588", "22195", "=q3=Light Obsidian Belt", "=ds=#sr# 300"};
		{ 27, "s16993", "12794", "=q3=Masterwork Stormhammer", "=ds=#sr# 300"};
		{ 28, "s16724", "12633", "=q3=Whitesoul Helm", "=ds=#sr# 300"};
		{ 29, "s34982", "29203", "=q2=Enchanted Thorium Blades", "=ds=#sr# 300"};
		{ 30, "s16663", "12422", "=q2=Imperial Plate Chest", "=ds=#sr# 300"};
		Next = "SmithingMaster4";
		Prev = "SmithingMaster2";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingMaster4"] = {
		{ 1, "s16730", "12429", "=q2=Imperial Plate Leggings", "=ds=#sr# 300"};
		{ 2, "s16725", "12420", "=q2=Radiant Leggings", "=ds=#sr# 300"};
		{ 3, "s16665", "12611", "=q2=Runic Plate Boots", "=ds=#sr# 300"};
		{ 4, "s16732", "12614", "=q2=Runic Plate Leggings", "=ds=#sr# 300"};
		{ 5, "s16664", "12610", "=q2=Runic Plate Shoulders", "=ds=#sr# 300"};
		{ 6, "s16662", "12414", "=q2=Thorium Leggings", "=ds=#sr# 300"};
		{ 7, "s21161", "17193", "=q4=Sulfuron Hammer", "=ds=#sr# 300"};
		{ 8, "s29547", "23484", "=q2=Fel Iron Plate Belt", "=ds=#sr# 305"};
		{ 9, "s29552", "23491", "=q2=Fel Iron Chain Gloves", "=ds=#sr# 310"};
		{ 10, "s29557", "23497", "=q2=Fel Iron Hatchet", "=ds=#sr# 310"};
		{ 11, "s29553", "23494", "=q2=Fel Iron Chain Bracers", "=ds=#sr# 315"};
		{ 12, "s29558", "23498", "=q2=Fel Iron Hammer", "=ds=#sr# 315"};
		{ 13, "s29548", "23487", "=q2=Fel Iron Plate Boots", "=ds=#sr# 315"};
		{ 14, "s29549", "23488", "=q2=Fel Iron Plate Pants", "=ds=#sr# 315"};
		{ 15, "s29556", "23490", "=q2=Fel Iron Chain Tunic", "=ds=#sr# 320"};
		{ 16, "s29565", "23499", "=q2=Fel Iron Greatsword", "=ds=#sr# 320"};
		{ 17, "s32284", "23559", "=q1=Lesser Rune of Warding", "=ds=#sr# 325"};
		{ 18, "s29566", "23502", "=q2=Adamantite Maul", "=ds=#sr# 325"};
		{ 19, "s29550", "23489", "=q2=Fel Iron Breastplate", "=ds=#sr# 325"};
		{ 20, "s36137", "30093", "=q3=Great Earthforged Hammer", "=ds=#sr# 330"};
		{ 21, "s36129", "30074", "=q3=Heavy Earthforged Breastplate", "=ds=#sr# 330"};
		{ 22, "s36136", "30089", "=q3=Lavaforged Warhammer", "=ds=#sr# 330"};
		{ 23, "s36135", "30088", "=q3=Skyforged Great Axe", "=ds=#sr# 330"};
		{ 24, "s36133", "30086", "=q3=Stoneforged Claymore", "=ds=#sr# 330"};
		{ 25, "s36134", "30087", "=q3=Stormforged Axe", "=ds=#sr# 330"};
		{ 26, "s36130", "30076", "=q3=Stormforged Hauberk", "=ds=#sr# 330"};
		{ 27, "s36131", "30077", "=q3=Windforged Rapier", "=ds=#sr# 330"};
		{ 28, "s29568", "23503", "=q2=Adamantite Cleaver", "=ds=#sr# 330"};
		{ 29, "s29569", "23504", "=q2=Adamantite Dagger", "=ds=#sr# 330"};
		{ 30, "s42688", "33185", "=q2=Adamantite Weapon Chain", "=ds=#sr# 335"};
		Next = "SmithingMaster5";
		Prev = "SmithingMaster3";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingMaster5"] = {
		{ 1, "s29603", "23506", "=q3=Adamantite Plate Bracers", "=ds=#sr# 335"};
		{ 2, "s29605", "23508", "=q3=Adamantite Plate Gloves", "=ds=#sr# 335"};
		{ 3, "s29571", "23505", "=q2=Adamantite Rapier", "=ds=#sr# 335"};
		{ 4, "s29728", "23575", "=q1=Lesser Ward of Shielding", "=ds=#sr# 340"};
		{ 5, "s29606", "23507", "=q3=Adamantite Breastplate", "=ds=#sr# 340"};
		{ 6, "s29656", "23529", "=q2=Adamantite Sharpening Stone", "=ds=#sr# 350"};
		{ 7, "s34608", "28421", "=q2=Adamantite Weightstone", "=ds=#sr# 350"};
		{ 8, "s32656", "25844", "=q1=Adamantite Rod", "=ds=#sr# 350"};
		{ 9, "s32285", "25521", "=q1=Greater Rune of Warding", "=ds=#sr# 350"};
		{ 10, "s34533", "28483", "=q4=Breastplate of Kings", "=ds=#sr# 350"};
		{ 11, "s34545", "28437", "=q4=Drakefist Hammer", "=ds=#sr# 350"};
		{ 12, "s34535", "28425", "=q4=Fireguard", "=ds=#sr# 350"};
		{ 13, "s34538", "28428", "=q4=Lionheart Blade", "=ds=#sr# 350"};
		{ 14, "s34543", "28434", "=q4=Lunar Crescent", "=ds=#sr# 350"};
		{ 15, "s34529", "23563", "=q4=Nether Chain Shirt", "=ds=#sr# 350"};
		{ 16, "s34541", "28431", "=q4=The Planar Edge", "=ds=#sr# 350"};
		{ 17, "s34547", "28440", "=q4=Thunder", "=ds=#sr# 350"};
		{ 18, "s34983", "29204", "=q3=Felsteel Whisper Knives", "=ds=#sr# 350"};
		{ 19, "s29614", "23515", "=q3=Flamebane Bracers", "=ds=#sr# 350"};
		{ 20, "s29608", "23510", "=q3=Enchanted Adamantite Belt", "=ds=#sr# 355"};
		{ 21, "s29611", "23511", "=q3=Enchanted Adamantite Boots", "=ds=#sr# 355"};
		{ 22, "s29615", "23516", "=q3=Flamebane Helm", "=ds=#sr# 355"};
		{ 23, "s29610", "23509", "=q3=Enchanted Adamantite Breastplate", "=ds=#sr# 360"};
		{ 24, "s29619", "23517", "=q3=Felsteel Gloves", "=ds=#sr# 360"};
		{ 25, "s29620", "23518", "=q3=Felsteel Leggings", "=ds=#sr# 360"};
		{ 26, "s29616", "23514", "=q3=Flamebane Gloves", "=ds=#sr# 360"};
		{ 27, "s29628", "23524", "=q3=Khorium Belt", "=ds=#sr# 360"};
		{ 28, "s29629", "23523", "=q3=Khorium Pants", "=ds=#sr# 360"};
		{ 29, "s29657", "23530", "=q2=Felsteel Shield Spike", "=ds=#sr# 360"};
		{ 30, "s29669", "23537", "=q4=Black Felsteel Bracers", "=ds=#sr# 365"};
		Next = "SmithingMaster6";
		Prev = "SmithingMaster4";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingMaster6"] = {
		{ 1, "s29672", "23539", "=q4=Blessed Bracers", "=ds=#sr# 365"};
		{ 2, "s29671", "23538", "=q4=Bracers of the Green Fortress", "=ds=#sr# 365"};
		{ 3, "s29699", "23555", "=q4=Dirge", "=ds=#sr# 365"};
		{ 4, "s29698", "23554", "=q4=Eternium Runed Blade", "=ds=#sr# 365"};
		{ 5, "s29694", "23542", "=q4=Fel Edged Battleaxe", "=ds=#sr# 365"};
		{ 6, "s29697", "23546", "=q4=Fel Hardened Maul", "=ds=#sr# 365"};
		{ 7, "s29658", "23531", "=q4=Felfury Gauntlets", "=ds=#sr# 365"};
		{ 8, "s29692", "23540", "=q4=Felsteel Longblade", "=ds=#sr# 365"};
		{ 9, "s29695", "23543", "=q4=Felsteel Reaper", "=ds=#sr# 365"};
		{ 10, "s29622", "23532", "=q4=Gauntlets of the Iron Tower", "=ds=#sr# 365"};
		{ 11, "s43846", "32854", "=q4=Hammer of Righteous Might", "=ds=#sr# 365"};
		{ 12, "s29700", "23556", "=q4=Hand of Eternity", "=ds=#sr# 365"};
		{ 13, "s29664", "23535", "=q4=Helm of the Stalwart Defender", "=ds=#sr# 365"};
		{ 14, "s29693", "23541", "=q4=Khorium Champion", "=ds=#sr# 365"};
		{ 15, "s29668", "23536", "=q4=Oathkeeper's Helm", "=ds=#sr# 365"};
		{ 16, "s29696", "23544", "=q4=Runic Hammer", "=ds=#sr# 365"};
		{ 17, "s29662", "23533", "=q4=Steelgrip Gauntlets", "=ds=#sr# 365"};
		{ 18, "s29663", "23534", "=q4=Storm Helm", "=ds=#sr# 365"};
		{ 19, "s29613", "23512", "=q3=Enchanted Adamantite Leggings", "=ds=#sr# 365"};
		{ 20, "s29621", "23519", "=q3=Felsteel Helm", "=ds=#sr# 365"};
		{ 21, "s29617", "23513", "=q3=Flamebane Breastplate", "=ds=#sr# 365"};
		{ 22, "s29630", "23525", "=q3=Khorium Boots", "=ds=#sr# 365"};
		{ 23, "s29642", "23520", "=q3=Ragesteel Gloves", "=ds=#sr# 365"};
		{ 24, "s29643", "23521", "=q3=Ragesteel Helm", "=ds=#sr# 365"};
		{ 25, "s42662", "33173", "=q3=Ragesteel Shoulders", "=ds=#sr# 365"};
		{ 26, "s46141", "34378", "=q4=Hard Khorium Battlefists", "=ds=#sr# 365"};
		{ 27, "s46144", "34377", "=q4=Hard Khorium Battleplate", "=ds=#sr# 365"};
		{ 28, "s46142", "34379", "=q4=Sunblessed Breastplate", "=ds=#sr# 365"};
		{ 29, "s46140", "34380", "=q4=Sunblessed Gauntlets", "=ds=#sr# 365"};
		{ 30, "s29649", "23527", "=q3=Earthpeace Breastplate", "=ds=#sr# 370"};
		Next = "SmithingMaster7";
		Prev = "SmithingMaster5";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingMaster7"] = {
		{ 1, "s29645", "23522", "=q3=Ragesteel Breastplate", "=ds=#sr# 370"};
		{ 2, "s29648", "23526", "=q3=Swiftsteel Gloves", "=ds=#sr# 370"};
		{ 3, "s29729", "23576", "=q1=Greater Ward of Shielding", "=ds=#sr# 375"};
		{ 4, "s32657", "25845", "=q1=Eternium Rod", "=ds=#sr# 375"};
		{ 5, "s36389", "30034", "=q4=Belt of the Guardian", "=ds=#sr# 375"};
		{ 6, "s34542", "28432", "=q4=Black Planar Edge", "=ds=#sr# 375"};
		{ 7, "s36258", "28427", "=q4=Blazefury", "=ds=#sr# 375"};
		{ 8, "s34537", "28426", "=q4=Blazeguard", "=ds=#sr# 375"};
		{ 9, "s36261", "28436", "=q4=Bloodmoon", "=ds=#sr# 375"};
		{ 10, "s36391", "30033", "=q4=Boots of the Protector", "=ds=#sr# 375"};
		{ 11, "s34534", "28484", "=q4=Bulwark of Kings", "=ds=#sr# 375"};
		{ 12, "s36257", "28485", "=q4=Bulwark of the Ancient Kings", "=ds=#sr# 375"};
		{ 13, "s41134", "32571", "=q4=Dawnsteel Bracers", "=ds=#sr# 375"};
		{ 14, "s41135", "32573", "=q4=Dawnsteel Shoulders", "=ds=#sr# 375"};
		{ 15, "s34548", "28441", "=q4=Deep Thunder", "=ds=#sr# 375"};
		{ 16, "s34546", "28438", "=q4=Dragonmaw", "=ds=#sr# 375"};
		{ 17, "s36262", "28439", "=q4=Dragonstrike", "=ds=#sr# 375"};
		{ 18, "s36256", "23565", "=q4=Embrace of the Twisting Nether", "=ds=#sr# 375"};
		{ 19, "s38477", "31369", "=q4=Iceguard Breastplate", "=ds=#sr# 375"};
		{ 20, "s38479", "31371", "=q4=Iceguard Helm", "=ds=#sr# 375"};
		{ 21, "s38478", "31370", "=q4=Iceguard Leggings", "=ds=#sr# 375"};
		{ 22, "s34540", "28429", "=q4=Lionheart Champion", "=ds=#sr# 375"};
		{ 23, "s36259", "28430", "=q4=Lionheart Executioner", "=ds=#sr# 375"};
		{ 24, "s34544", "28435", "=q4=Mooncleaver", "=ds=#sr# 375"};
		{ 25, "s36390", "30032", "=q4=Red Belt of Battle", "=ds=#sr# 375"};
		{ 26, "s36392", "30031", "=q4=Red Havoc Boots", "=ds=#sr# 375"};
		{ 27, "s40034", "32403", "=q4=Shadesteel Bracers", "=ds=#sr# 375"};
		{ 28, "s40036", "32401", "=q4=Shadesteel Girdle", "=ds=#sr# 375"};
		{ 29, "s40035", "32404", "=q4=Shadesteel Greaves", "=ds=#sr# 375"};
		{ 30, "s40033", "32402", "=q4=Shadesteel Sabots", "=ds=#sr# 375"};
		Next = "SmithingMaster8";
		Prev = "SmithingMaster6";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["SmithingMaster8"] = {
		{ 1, "s36263", "28442", "=q4=Stormherald", "=ds=#sr# 375"};
		{ 2, "s41132", "32568", "=q4=Swiftsteel Bracers", "=ds=#sr# 375"};
		{ 3, "s41133", "32570", "=q4=Swiftsteel Shoulders", "=ds=#sr# 375"};
		{ 4, "s34530", "23564", "=q4=Twisting Nether Chain Shirt", "=ds=#sr# 375"};
		{ 5, "s36260", "28433", "=q4=Wicked Edge of the Planes", "=ds=#sr# 375"};
		{ 6, "s38473", "31364", "=q4=Wildguard Breastplate", "=ds=#sr# 375"};
		{ 7, "s38476", "31368", "=q4=Wildguard Helm", "=ds=#sr# 375"};
		{ 8, "s38475", "31367", "=q4=Wildguard Leggings", "=ds=#sr# 375"};
		Next = "Armorsmith1";
		Prev = "SmithingMaster7";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["Armorsmith1"] = {
		{ 1, "s9954", "7938", "=q3=Truesilver Gauntlets", "=ds=#sr# 225"};
		{ 2, "s9974", "7939", "=q3=Truesilver Breastplate", "=ds=#sr# 245"};
		{ 3, "s36122", "30069", "=q3=Earthforged Leggings", "=ds=#sr# 260"};
		{ 4, "s36124", "30070", "=q3=Windforged Leggings", "=ds=#sr# 260"};
		{ 5, "s36129", "30074", "=q3=Heavy Earthforged Breastplate", "=ds=#sr# 330"};
		{ 6, "s36130", "30076", "=q3=Stormforged Hauberk", "=ds=#sr# 330"};
		{ 7, "s34533", "28483", "=q4=Breastplate of Kings", "=ds=#sr# 350"};
		{ 8, "s34529", "23563", "=q4=Nether Chain Shirt", "=ds=#sr# 350"};
		{ 9, "s34534", "28484", "=q4=Bulwark of Kings", "=ds=#sr# 375"};
		{ 10, "s36257", "28485", "=q4=Bulwark of the Ancient Kings", "=ds=#sr# 375"};
		{ 11, "s36256", "23565", "=q4=Embrace of the Twisting Nether", "=ds=#sr# 375"};
		{ 12, "s34530", "23564", "=q4=Twisting Nether Chain Shirt", "=ds=#sr# 375"};
		Next = "Weaponsmith1";
		Prev = "SmithingMaster8";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["Weaponsmith1"] = {
		{ 1, "s10003", "7954", "=q3=The Shatterer", "=ds=#sr# 235"};
		{ 2, "s10007", "7961", "=q3=Phantom Blade", "=ds=#sr# 245"};
		{ 3, "s10011", "7959", "=q3=Blight", "=ds=#sr# 250"};
		{ 4, "s36125", "30071", "=q3=Light Earthforged Blade", "=ds=#sr# 260"};
		{ 5, "s36128", "30073", "=q3=Light Emberforged Hammer", "=ds=#sr# 260"};
		{ 6, "s36126", "30072", "=q3=Light Skyforged Axe", "=ds=#sr# 260"};
		{ 7, "s10015", "7960", "=q3=Truesilver Champion", "=ds=#sr# 260"};
		Next = "Axesmith1";
		Prev = "Armorsmith1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["Axesmith1"] = {
		{ 1, "s36135", "30088", "=q3=Skyforged Great Axe", "=ds=#sr# 330"};
		{ 2, "s36134", "30087", "=q3=Stormforged Axe", "=ds=#sr# 330"};
		{ 3, "s34543", "28434", "=q4=Lunar Crescent", "=ds=#sr# 350"};
		{ 4, "s34541", "28431", "=q4=The Planar Edge", "=ds=#sr# 350"};
		{ 5, "s34542", "28432", "=q4=Black Planar Edge", "=ds=#sr# 375"};
		{ 6, "s36261", "28436", "=q4=Bloodmoon", "=ds=#sr# 375"};
		{ 7, "s34544", "28435", "=q4=Mooncleaver", "=ds=#sr# 375"};
		{ 8, "s36260", "28433", "=q4=Wicked Edge of the Planes", "=ds=#sr# 375"};
		Next = "Hammersmith1";
		Prev = "Weaponsmith1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["Hammersmith1"] = {
		{ 1, "s36137", "30093", "=q3=Great Earthforged Hammer", "=ds=#sr# 330"};
		{ 2, "s36136", "30089", "=q3=Lavaforged Warhammer", "=ds=#sr# 330"};
		{ 3, "s34545", "28437", "=q4=Drakefist Hammer", "=ds=#sr# 350"};
		{ 4, "s34547", "28440", "=q4=Thunder", "=ds=#sr# 350"};
		{ 5, "s34548", "28441", "=q4=Deep Thunder", "=ds=#sr# 375"};
		{ 6, "s34546", "28438", "=q4=Dragonmaw", "=ds=#sr# 375"};
		{ 7, "s36262", "28439", "=q4=Dragonstrike", "=ds=#sr# 375"};
		{ 8, "s36263", "28442", "=q4=Stormherald", "=ds=#sr# 375"};
		Next = "Swordsmith1";
		Prev = "Axesmith1";
		Back = "SMITHINGMENU";
	};

	AtlasLoot_Data["Swordsmith1"] = {
		{ 1, "s36133", "30086", "=q3=Stoneforged Claymore", "=ds=#sr# 330"};
		{ 2, "s36131", "30077", "=q3=Windforged Rapier", "=ds=#sr# 330"};
		{ 3, "s34535", "28425", "=q4=Fireguard", "=ds=#sr# 350"};
		{ 4, "s34538", "28428", "=q4=Lionheart Blade", "=ds=#sr# 350"};
		{ 5, "s36258", "28427", "=q4=Blazefury", "=ds=#sr# 375"};
		{ 6, "s34537", "28426", "=q4=Blazeguard", "=ds=#sr# 375"};
		{ 7, "s34540", "28429", "=q4=Lionheart Champion", "=ds=#sr# 375"};
		{ 8, "s36259", "28430", "=q4=Lionheart Executioner", "=ds=#sr# 375"};
		Prev = "Hammersmith1";
		Back = "SMITHINGMENU";
	};

		---------------
		--- Cooking ---
		---------------

	AtlasLoot_Data["CookingApprentice1"] = {
		{ 1, "s37836", "30816", "=q1=Spice Bread", "=ds=#sr# 1"};
		{ 2, "s7751", "6290", "=q1=Brilliant Smallfish", "=ds=#sr# 1"};
		{ 3, "s2538", "2679", "=q1=Charred Wolf Meat", "=ds=#sr# 1"};
		{ 4, "s15935", "12224", "=q1=Crispy Bat Wing", "=ds=#sr# 1"};
		{ 5, "s21143", "17197", "=q1=Gingerbread Cookie", "=ds=#sr# 1"};
		{ 6, "s8604", "6888", "=q1=Herb Baked Egg", "=ds=#sr# 1"};
		{ 7, "s33276", "27635", "=q1=Lynx Steak", "=ds=#sr# 1"};
		{ 8, "s2540", "2681", "=q1=Roasted Boar Meat", "=ds=#sr# 1"};
		{ 9, "s33277", "24105", "=q1=Roasted Moongraze Tenderloin", "=ds=#sr# 1"};
		{ 10, "s7752", "787", "=q1=Slitherskin Mackerel", "=ds=#sr# 1"};
		{ 11, "s43779", "33924", "=q1=Delicious Chocolate Cake", "=ds=#sr# 1"};
		{ 12, "s6412", "5472", "=q1=Kaldorei Spider Kabob", "=ds=#sr# 10"};
		{ 13, "s2539", "2680", "=q1=Spiced Wolf Meat", "=ds=#sr# 10"};
		{ 14, "s2795", "2888", "=q1=Beer Basted Boar Ribs", "=ds=#sr# 10"};
		{ 15, "s6413", "5473", "=q1=Scorpid Surprise", "=ds=#sr# 20"};
		{ 16, "s21144", "17198", "=q1=Egg Nog", "=ds=#sr# 35"};
		{ 17, "s6414", "5474", "=q1=Roasted Kodo Meat", "=ds=#sr# 35"};
		{ 18, "s8607", "6890", "=q1=Smoked Bear Meat", "=ds=#sr# 40"};
		Next = "CookingJourneyman1";
		Back = "COOKINGMENU";
	};

	AtlasLoot_Data["CookingJourneyman1"] = {
		{ 1, "s33278", "27636", "=q1=Bat Bites", "=ds=#sr# 50"};
		{ 2, "s6499", "5525", "=q1=Boiled Clams", "=ds=#sr# 50"};
		{ 3, "s2541", "2684", "=q1=Coyote Steak", "=ds=#sr# 50"};
		{ 4, "s6415", "5476", "=q1=Fillet of Frenzy", "=ds=#sr# 50"};
		{ 5, "s2542", "724", "=q1=Goretusk Liver Pie", "=ds=#sr# 50"};
		{ 6, "s7754", "6316", "=q1=Loch Frenzy Delight", "=ds=#sr# 50"};
		{ 7, "s7753", "4592", "=q1=Longjaw Mud Snapper", "=ds=#sr# 50"};
		{ 8, "s7827", "5095", "=q1=Rainbow Fin Albacore", "=ds=#sr# 50"};
		{ 9, "s6416", "5477", "=q1=Strider Stew", "=ds=#sr# 50"};
		{ 10, "s3371", "3220", "=q1=Blood Sausage", "=ds=#sr# 60"};
		{ 11, "s28267", "22645", "=q1=Crunchy Spider Surprise", "=ds=#sr# 60"};
		{ 12, "s9513", "7676", "=q1=Thistle Tea", "=ds=#sr# 60"};
		{ 13, "s2544", "2683", "=q1=Crab Cake", "=ds=#sr# 75"};
		{ 14, "s2543", "733", "=q1=Westfall Stew", "=ds=#sr# 75"};
		{ 15, "s3370", "3662", "=q1=Crocolisk Steak", "=ds=#sr# 80"};
		{ 16, "s2546", "2687", "=q1=Dry Pork Ribs", "=ds=#sr# 80"};
		{ 17, "s25704", "21072", "=q1=Smoked Sagefish", "=ds=#sr# 80"};
		{ 18, "s2545", "2682", "=q1=Cooked Crab Claw", "=ds=#sr# 85"};
		{ 19, "s8238", "6657", "=q1=Savory Deviate Delight", "=ds=#sr# 85"};
		{ 20, "s6501", "5526", "=q1=Clam Chowder", "=ds=#sr# 90"};
		{ 21, "s6417", "5478", "=q1=Dig Rat Stew", "=ds=#sr# 90"};
		{ 22, "s3372", "3663", "=q1=Murloc Fin Soup", "=ds=#sr# 90"};
		{ 23, "s45695", "34832", "=q1=Captain Rumsey's Lager", "=ds=#sr# 100"};
		{ 24, "s2547", "1082", "=q1=Redridge Goulash", "=ds=#sr# 100"};
		{ 25, "s7755", "4593", "=q1=Bristle Whisker Catfish", "=ds=#sr# 100"};
		{ 26, "s6418", "5479", "=q1=Crispy Lizard Tail", "=ds=#sr# 100"};
		{ 27, "s2549", "1017", "=q1=Seasoned Wolf Kabob", "=ds=#sr# 100"};
		{ 28, "s2548", "2685", "=q1=Succulent Pork Ribs", "=ds=#sr# 110"};
		{ 29, "s3397", "3726", "=q1=Big Bear Steak", "=ds=#sr# 110"};
		{ 30, "s3377", "3666", "=q1=Gooey Spider Cake", "=ds=#sr# 110"};
		Next = "CookingJourneyman2";
		Prev = "CookingApprentice1";
		Back = "COOKINGMENU";
	};

	AtlasLoot_Data["CookingJourneyman2"] = {
		{ 1, "s6419", "5480", "=q1=Lean Venison", "=ds=#sr# 110"};
		{ 2, "s3373", "3664", "=q1=Crocolisk Gumbo", "=ds=#sr# 120"};
		Next = "CookingExpert1";
		Prev = "CookingJourneyman1";
		Back = "COOKINGMENU";
	};

	AtlasLoot_Data["CookingExpert1"] = {
		{ 1, "s6500", "5527", "=q1=Goblin Deviled Clams", "=ds=#sr# 125"};
		{ 2, "s15853", "12209", "=q1=Lean Wolf Steak", "=ds=#sr# 125"};
		{ 3, "s3398", "3727", "=q1=Hot Lion Chops", "=ds=#sr# 125"};
		{ 4, "s3376", "3665", "=q1=Curiously Tasty Omelet", "=ds=#sr# 130"};
		{ 5, "s24418", "20074", "=q1=Heavy Crocolisk Stew", "=ds=#sr# 150"};
		{ 6, "s3399", "3728", "=q1=Tasty Lion Steak", "=ds=#sr# 150"};
		{ 7, "s13028", "10841", "=q1=Goldthorn Tea", "=ds=#sr# 175"};
		{ 8, "s7828", "4594", "=q1=Rockscale Cod", "=ds=#sr# 175"};
		{ 9, "s4094", "4457", "=q1=Barbecued Buzzard Wing", "=ds=#sr# 175"};
		{ 10, "s15863", "12213", "=q1=Carrion Surprise", "=ds=#sr# 175"};
		{ 11, "s7213", "6038", "=q1=Giant Clam Scorcho", "=ds=#sr# 175"};
		{ 12, "s15856", "13851", "=q1=Hot Wolf Ribs", "=ds=#sr# 175"};
		{ 13, "s15861", "12212", "=q1=Jungle Stew", "=ds=#sr# 175"};
		{ 14, "s20916", "8364", "=q1=Mithril Headed Trout", "=ds=#sr# 175"};
		{ 15, "s15865", "12214", "=q1=Mystery Stew", "=ds=#sr# 175"};
		{ 16, "s15855", "12210", "=q1=Roast Raptor", "=ds=#sr# 175"};
		{ 17, "s25954", "21217", "=q1=Sagefish Delight", "=ds=#sr# 175"};
		{ 18, "s3400", "3729", "=q1=Soothing Turtle Bisque", "=ds=#sr# 175"};
		Next = "CookingArtisan1";
		Prev = "CookingJourneyman2";
		Back = "COOKINGMENU";
	};

	AtlasLoot_Data["CookingArtisan1"] = {
		{ 1, "s15906", "12217", "=q1=Dragonbreath Chili", "=ds=#sr# 200"};
		{ 2, "s15910", "12215", "=q1=Heavy Kodo Stew", "=ds=#sr# 200"};
		{ 3, "s21175", "17222", "=q1=Spider Sausage", "=ds=#sr# 200"};
		{ 4, "s18239", "13927", "=q1=Cooked Glossy Mightfish", "=ds=#sr# 225"};
		{ 5, "s18241", "13930", "=q1=Filet of Redgill", "=ds=#sr# 225"};
		{ 6, "s15933", "12218", "=q1=Monster Omelet", "=ds=#sr# 225"};
		{ 7, "s15915", "12216", "=q1=Spiced Chili Crab", "=ds=#sr# 225"};
		{ 8, "s18238", "6887", "=q1=Spotted Yellowtail", "=ds=#sr# 225"};
		{ 9, "s22480", "18045", "=q1=Tender Wolf Steak", "=ds=#sr# 225"};
		{ 10, "s20626", "16766", "=q1=Undermine Clam Chowder", "=ds=#sr# 225"};
		{ 11, "s18240", "13928", "=q1=Grilled Squid", "=ds=#sr# 240"};
		{ 12, "s18242", "13929", "=q1=Hot Smoked Bass", "=ds=#sr# 240"};
		{ 13, "s46684", "35563", "=q1=Charred Bear Kabobs", "=ds=#sr# 250"};
		{ 14, "s46688", "35565", "=q1=Juicy Bear Burger", "=ds=#sr# 250"};
		{ 15, "s18243", "13931", "=q1=Nightfin Soup", "=ds=#sr# 250"};
		{ 16, "s18244", "13932", "=q1=Poached Sunscale Salmon", "=ds=#sr# 250"};
		{ 17, "s18247", "13935", "=q1=Baked Salmon", "=ds=#sr# 275"};
		{ 18, "s18245", "13933", "=q1=Lobster Stew", "=ds=#sr# 275"};
		{ 19, "s18246", "13934", "=q1=Mightfish Steak", "=ds=#sr# 275"};
		{ 20, "s22761", "18254", "=q1=Runn Tum Tuber Surprise", "=ds=#sr# 275"};
		{ 21, "s24801", "20452", "=q1=Smoked Desert Dumplings", "=ds=#sr# 285"};
		Next = "CookingMaster1";
		Prev = "CookingExpert1";
		Back = "COOKINGMENU";
	};

	AtlasLoot_Data["CookingMaster1"] = {
		{ 1, "s33290", "27661", "=q1=Blackened Trout", "=ds=#sr# 300"};
		{ 2, "s43761", "33867", "=q1=Broiled Bloodfin", "=ds=#sr# 300"};
		{ 3, "s33279", "27651", "=q1=Buzzard Bites", "=ds=#sr# 300"};
		{ 4, "s36210", "30155", "=q1=Clam Bar", "=ds=#sr# 300"};
		{ 5, "s33291", "27662", "=q1=Feltail Delight", "=ds=#sr# 300"};
		{ 6, "s33284", "27655", "=q1=Ravager Dog", "=ds=#sr# 300"};
		{ 7, "s43758", "33866", "=q1=Stormchops", "=ds=#sr# 300"};
		{ 8, "s25659", "21023", "=q1=Dirge's Kickin' Chimaerok Chops", "=ds=#sr# 300"};
		{ 9, "s43772", "33874", "=q1=Kibler's Bits", "=ds=#sr# 300"};
		{ 10, "s33292", "27663", "=q1=Blackened Sporefish", "=ds=#sr# 310"};
		{ 11, "s33285", "27656", "=q1=Sporeling Snack", "=ds=#sr# 310"};
		{ 12, "s33286", "27657", "=q1=Blackened Basilisk", "=ds=#sr# 315"};
		{ 13, "s42296", "33048", "=q1=Stewed Trout", "=ds=#sr# 320"};
		{ 14, "s33293", "27664", "=q1=Grilled Mudfish", "=ds=#sr# 320"};
		{ 15, "s33294", "27665", "=q1=Poached Bluefish", "=ds=#sr# 320"};
		{ 16, "s45022", "34411", "=q1=Hot Apple Cider", "=ds=#sr# 325"};
		{ 17, "s43707", "33825", "=q1=Skullfish Soup", "=ds=#sr# 325"};
		{ 18, "s43765", "33872", "=q1=Spicy Hot Talbuk", "=ds=#sr# 325"};
		{ 19, "s33295", "27666", "=q1=Golden Fish Sticks", "=ds=#sr# 325"};
		{ 20, "s33287", "27658", "=q1=Roasted Clefthoof", "=ds=#sr# 325"};
		{ 21, "s33289", "27660", "=q1=Talbuk Steak", "=ds=#sr# 325"};
		{ 22, "s33288", "27659", "=q1=Warp Burger", "=ds=#sr# 325"};
		{ 23, "s38868", "31673", "=q1=Crunchy Serpent", "=ds=#sr# 335"};
		{ 24, "s38867", "31672", "=q1=Mok'Nathal Shortribs", "=ds=#sr# 335"};
		{ 25, "s33296", "27667", "=q1=Spicy Crawdad", "=ds=#sr# 350"};
		{ 26, "s42302", "33052", "=q1=Fisherman's Feast", "=ds=#sr# 350"};
		{ 27, "s42305", "33053", "=q1=Hot Buttered Trout", "=ds=#sr# 350"};
		Prev = "CookingArtisan1";
		Back = "COOKINGMENU";
	};

		------------------
		--- Enchanting ---
		------------------

    AtlasLoot_Data["EnchantingBoots1"] = {
        { 1, "s27954", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Surefooted", "=ds=#sr# 370"};
        { 2, "s34008", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Boar's Speed", "=ds=#sr# 360"};
		{ 3, "s34007", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Cat's Swiftness", "=ds=#sr# 360"};
        { 4, "s27951", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Dexterity", "=ds=#sr# 340"};
        { 5, "s27950", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Fortitude", "=ds=#sr# 320"};
        { 6, "s27948", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Vitality", "=ds=#sr# 305"};
        { 7, "s20023", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Greater Agility", "=ds=#sr# 295"};
        { 8, "s20024", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Spirit", "=ds=#sr# 275"};
        { 9, "s20020", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Greater Stamina", "=ds=#sr# 260"};
        { 10, "s13935", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Agility", "=ds=#sr# 235"};
        { 11, "s13890", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Minor Speed", "=ds=#sr# 225"};
        { 12, "s13836", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Stamina", "=ds=#sr# 215"};
        { 13, "s13687", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Lesser Spirit", "=ds=#sr# 190"};
        { 14, "s13644", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Lesser Stamina", "=ds=#sr# 170"};
        { 15, "s13637", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Lesser Agility", "=ds=#sr# 160"};
        { 16, "s7867", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Minor Agility", "=ds=#sr# 125"};
		{ 17, "s7863", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Minor Stamina", "=ds=#sr# 125"};
        Next = "EnchantingBracer1";
        Back = "ENCHANTINGMENU";
    };
        
    AtlasLoot_Data["EnchantingBracer1"] = {
        { 1, "s27917", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Spellpower", "=ds=#sr# 360"};
        { 2, "s27914", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Fortitude", "=ds=#sr# 350"};
        { 3, "s27913", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Restore Mana Prime", "=ds=#sr# 335"};
        { 4, "s27911", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Superior Healing", "=ds=#sr# 325"};
        { 5, "s27906", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Major Defense", "=ds=#sr# 320"};
        { 6, "s27905", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Stats", "=ds=#sr# 315"};
        { 7, "s27899", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Brawn", "=ds=#sr# 305"};
		{ 8, "s34001", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Major Intellect", "=ds=#sr# 305"};
        { 9, "s34002", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Assault", "=ds=#sr# 300"};
		{ 10, "s23802", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Healing Power", "=ds=#sr# 300"};
		{ 11, "s20011", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Superior Stamina", "=ds=#sr# 300"};
        { 12, "s20010", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Superior Strength", "=ds=#sr# 295"};
        { 13, "s23801", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Mana Regeneration", "=ds=#sr# 290"};
        { 14, "s20009", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Superior Spirit", "=ds=#sr# 270"};
        { 15, "s20008", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Greater Intellect", "=ds=#sr# 255"};
        { 16, "s13939", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Greater Strength", "=ds=#sr# 240"};
		{ 17, "s13945", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Greater Stamina", "=ds=#sr# 245"};
        { 18, "s13931", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Deflection", "=ds=#sr# 235"};
        { 19, "s13846", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Greater Spirit", "=ds=#sr# 220"};
        { 20, "s13822", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Intellect", "=ds=#sr# 210"};
        { 21, "s13661", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Strength", "=ds=#sr# 180"};
        { 22, "s13646", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Lesser Deflection", "=ds=#sr# 170"};
		{ 23, "s13648", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Stamina", "=ds=#sr# 170"};
        { 24, "s13642", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Spirit", "=ds=#sr# 165"};
        { 25, "s13622", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Lesser Intellect", "=ds=#sr# 150"};
        { 26, "s13536", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Lesser Strength", "=ds=#sr# 140"};
        { 27, "s13501", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Lesser Stamina", "=ds=#sr# 130"};
        { 28, "s7859", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Lesser Spirit", "=ds=#sr# 120"};
        { 29, "s7779", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Minor Agility", "=ds=#sr# 80"};
		{ 30, "s7782", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Minor Strength", "=ds=#sr# 80"};
        Prev = "EnchantingBoots";
        Next = "EnchantingBracer2";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingBracer2"] = {
        { 1, "s7457", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Minor Stamina", "=ds=#sr# 50"};
		{ 2, "s7766", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Minor Spirit", "=ds=#sr# 60"};
        { 3, "s7418", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Minor Health", "=ds=#sr# 1"};
		{ 4, "s7428", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracer - Minor Deflection", "=ds=#sr# 1"};
        Prev = "EnchantingBracer1";
        Next = "EnchantingChest1";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingChest1"] = {
        { 1, "s46594", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Defense", "=ds=#sr# 360"};
        { 2, "s27960", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Exceptional Stats", "=ds=#sr# 345"};
		{ 3, "s33992", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Major Resilience", "=ds=#sr# 345"};
        { 4, "s33990", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Major Spirit", "=ds=#sr# 320"};
        { 5, "s27957", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Exceptional Health", "=ds=#sr# 315"};
        { 6, "s20025", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Greater Stats", "=ds=#sr# 300"};
		{ 7, "s33991", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Restore Mana Prime", "=ds=#sr# 300"};
        { 8, "s20028", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Major Mana", "=ds=#sr# 290"};
        { 9, "s20026", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Major Health", "=ds=#sr# 275"};
        { 10, "s13941", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Stats", "=ds=#sr# 245"};
        { 11, "s13917", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Superior Mana", "=ds=#sr# 230"};
        { 12, "s13858", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Superior Health", "=ds=#sr# 220"};
        { 13, "s13700", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Lesser Stats", "=ds=#sr# 200"};
        { 14, "s13663", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Greater Mana", "=ds=#sr# 185"};
        { 15, "s13640", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Greater Health", "=ds=#sr# 160"};
        { 16, "s13626", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Minor Stats", "=ds=#sr# 150"};
        { 17, "s13607", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Mana", "=ds=#sr# 145"};
        { 18, "s13538", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Lesser Absorption", "=ds=#sr# 140"};
        { 19, "s7857", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Health", "=ds=#sr# 120"};
        { 20, "s7776", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Lesser Mana", "=ds=#sr# 80"};
        { 21, "s7748", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Lesser Health", "=ds=#sr# 60"};
        { 22, "s7420", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Minor Health", "=ds=#sr# 15"};
		{ 23, "s7443", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Minor Mana", "=ds=#sr# 20"};
		{ 24, "s7426", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Minor Absorption", "=ds=#sr# 40"};
        Prev = "EnchantingBracer2";
        Next = "EnchantingCloak1";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingCloak1"] = {
        { 1, "s47051", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Steelweave", "=ds=#sr# 375"};
        { 2, "s34005", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Greater Arcane Resistance", "=ds=#sr# 350"};
		{ 3, "s34006", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Greater Shadow Resistance", "=ds=#sr# 350"};
        { 4, "s27962", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Major Resistance", "=ds=#sr# 330"};
        { 5, "s34003", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Spell Penetration", "=ds=#sr# 325"};
        { 6, "s34004", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Greater Agility", "=ds=#sr# 310"};
		{ 7, "s27961", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Major Armor", "=ds=#sr# 310"};
        { 8, "s25082", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Greater Nature Resistance", "=ds=#sr# 300"};
		{ 9, "s25083", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Stealth", "=ds=#sr# 300"};
		{ 10, "s25084", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Subtlety", "=ds=#sr# 300"};
        { 11, "s25086", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Dodge", "=ds=#sr# 300"};
		{ 12, "s25081", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Greater Fire Resistance", "=ds=#sr# 300"};
        { 13, "s20015", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Superior Defense", "=ds=#sr# 285"};
        { 14, "s20014", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Greater Resistance", "=ds=#sr# 265"};
        { 15, "s13882", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Lesser Agility", "=ds=#sr# 225"};
        { 16, "s13746", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Greater Defense", "=ds=#sr# 205"};
		{ 17, "s13794", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Resistance", "=ds=#sr# 205"};
        { 18, "s13657", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Fire Resistance", "=ds=#sr# 175"};
        { 19, "s13635", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Defense", "=ds=#sr# 155"};
        { 20, "s13522", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Lesser Shadow Resistance", "=ds=#sr# 135"};
        { 21, "s7861", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Lesser Fire Resistance", "=ds=#sr# 125"};
        { 22, "s13419", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Minor Agility", "=ds=#sr# 110"};
		{ 23, "s13421", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Lesser Protection", "=ds=#sr# 115"};
        { 24, "s7771", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Minor Protection", "=ds=#sr# 70"};
        { 25, "s7454", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Minor Resistance", "=ds=#sr# 45"};
        Prev = "EnchantingChest1";
        Next = "EnchantingGloves1";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingGloves1"] = {
        { 1, "s33997", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Major Spellpower", "=ds=#sr# 360"};
		{ 2, "s33994", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Spell Strike", "=ds=#sr# 360"};
        { 3, "s33999", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Major Healing", "=ds=#sr# 350"};
        { 4, "s33995", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Major Strength", "=ds=#sr# 340"};
        { 5, "s33996", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Assault", "=ds=#sr# 310"};
        { 6, "s33993", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Blasting", "=ds=#sr# 305"};
        { 7, "s25078", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Fire Power", "=ds=#sr# 300"};
		{ 8, "s25074", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Frost Power", "=ds=#sr# 300"};
		{ 9, "s25079", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Healing Power", "=ds=#sr# 300"};
		{ 10, "s25073", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Shadow Power", "=ds=#sr# 300"};
		{ 11, "s25080", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Superior Agility", "=ds=#sr# 300"};
		{ 12, "s25072", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Threat", "=ds=#sr# 300"};
        { 13, "s20013", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Greater Strength", "=ds=#sr# 295"};
        { 14, "s20012", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Greater Agility", "=ds=#sr# 270"};
        { 15, "s13948", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Minor Haste", "=ds=#sr# 250"};
		{ 16, "s13947", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Riding Skill", "=ds=#sr# 250"};
        { 17, "s13868", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Advanced Herbalism", "=ds=#sr# 225"};
		{ 18, "s13887", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Strength", "=ds=#sr# 225"};
        { 19, "s13841", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Advanced Mining", "=ds=#sr# 215"};
        { 20, "s13815", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Agility", "=ds=#sr# 210"};
        { 21, "s13698", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Skinning", "=ds=#sr# 200"};
        { 22, "s13620", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Fishing", "=ds=#sr# 145"};
		{ 23, "s13617", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Herbalism", "=ds=#sr# 145"};
		{ 24, "s13612", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Mining", "=ds=#sr# 145"};
        Prev = "EnchantingCloak1";
        Next = "EnchantingRing1";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingRing1"] = {
        { 1, "s27927", "Spell_Holy_GreaterHeal", "=ds=Enchant Ring - Stats", "=ds=#sr# 375"};
        { 2, "s27926", "Spell_Holy_GreaterHeal", "=ds=Enchant Ring - Healing Power", "=ds=#sr# 370"};
        { 3, "s27924", "Spell_Holy_GreaterHeal", "=ds=Enchant Ring - Spellpower", "=ds=#sr# 360"};
		{ 4, "s27920", "Spell_Holy_GreaterHeal", "=ds=Enchant Ring - Striking", "=ds=#sr# 360"};
        Prev = "EnchantingGloves1";
        Next = "EnchantingShield1";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingShield1"] = {
        { 1, "s27947", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Resistance", "=ds=#sr# 360"};
        { 2, "s27946", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Shield Block", "=ds=#sr# 340"};
        { 3, "s44383", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Resilience", "=ds=#sr# 330"};
        { 4, "s27945", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Intellect", "=ds=#sr# 325"};
		{ 5, "s34009", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Major Stamina", "=ds=#sr# 325"};
        { 6, "s27944", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Tough Shield", "=ds=#sr# 310"};
        { 7, "s20016", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Superior Spirit", "=ds=#sr# 280"};
        { 8, "s20017", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Greater Stamina", "=ds=#sr# 265"};
        { 9, "s13933", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Frost Resistance", "=ds=#sr# 235"};
        { 10, "s13905", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Greater Spirit", "=ds=#sr# 230"};
        { 11, "s13817", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Stamina", "=ds=#sr# 210"};
        { 12, "s13689", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Lesser Block", "=ds=#sr# 195"};
        { 13, "s13659", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Spirit", "=ds=#sr# 180"};
        { 14, "s13631", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Lesser Stamina", "=ds=#sr# 155"};
        { 15, "s13485", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Lesser Spirit", "=ds=#sr# 130"};
        { 16, "s13464", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Lesser Protection", "=ds=#sr# 115"};
        { 17, "s13378", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Minor Stamina", "=ds=#sr# 105"};
        Prev = "EnchantingRing1";
        Next = "Enchanting2HWeapon1";
        Back = "ENCHANTINGMENU";
    };
      
    AtlasLoot_Data["Enchanting2HWeapon1"] = {
        { 1, "s27977", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Major Agility", "=ds=#sr# 360"};
        { 2, "s27971", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Savagery", "=ds=#sr# 350"};
        { 3, "s20036", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Major Intellect", "=ds=#sr# 300"};
		{ 4, "s20035", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Major Spirit", "=ds=#sr# 300"};
        { 5, "s20030", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Superior Impact", "=ds=#sr# 295"};
        { 6, "s27837", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Agility", "=ds=#sr# 290"};
        { 7, "s13937", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Greater Impact", "=ds=#sr# 240"};
        { 8, "s13695", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Impact", "=ds=#sr# 200"};
        { 9, "s13529", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Lesser Impact", "=ds=#sr# 145"};
        { 10, "s13380", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Lesser Spirit", "=ds=#sr# 110"};
        { 11, "s7793", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Lesser Intellect", "=ds=#sr# 100"};
		{ 12, "s7745", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Minor Impact", "=ds=#sr# 100"};
		Prev = "EnchantingShield1";
        Next = "EnchantingWeapon1";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingWeapon1"] = {
        { 1, "s42974", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Executioner", "=ds=#sr# 375"};
		{ 2, "s27984", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Mongoose", "=ds=#sr# 375"};
		{ 3, "s27982", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Soulfrost", "=ds=#sr# 375"};
		{ 4, "s27981", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Sunfire", "=ds=#sr# 375"};
        { 5, "s28004", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Battlemaster", "=ds=#sr# 360"};
		{ 6, "s28003", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Spellsurge", "=ds=#sr# 360"};
        { 7, "s46578", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Deathfrost", "=ds=#sr# 350"};
		{ 8, "s34010", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Major Healing", "=ds=#sr# 350"};
		{ 9, "s27975", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Major Spellpower", "=ds=#sr# 350"};
		{ 10, "s27972", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Potency", "=ds=#sr# 350"};
        { 11, "s42620", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Greater Agility", "=ds=#sr# 350"};
        { 12, "s27968", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Major Intellect", "=ds=#sr# 340"};
		{ 13, "s27967", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Major Striking", "=ds=#sr# 340"};
        { 14, "s20034", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Crusader", "=ds=#sr# 300"};
		{ 15, "s22750", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Healing Power", "=ds=#sr# 300"};
		{ 16, "s20032", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Lifestealing", "=ds=#sr# 300"};
		{ 17, "s23804", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Mighty Intellect", "=ds=#sr# 300"};
		{ 18, "s23803", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Mighty Spirit", "=ds=#sr# 300"};
		{ 19, "s22749", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Spell Power", "=ds=#sr# 300"};
		{ 20, "s20031", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Superior Striking", "=ds=#sr# 300"};
        { 21, "s20033", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Unholy Weapon", "=ds=#sr# 295"};
        { 22, "s23800", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Agility", "=ds=#sr# 290"};
		{ 23, "s23799", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Strength", "=ds=#sr# 290"};
        { 24, "s20029", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Icy Chill", "=ds=#sr# 285"};
        { 25, "s13898", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Fiery Weapon", "=ds=#sr# 265"};
        { 26, "s13943", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Greater Striking", "=ds=#sr# 245"};
        { 27, "s13915", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Demonslaying", "=ds=#sr# 230"};
        { 28, "s13693", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Striking", "=ds=#sr# 195"};
        { 29, "s21931", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Winter's Might", "=ds=#sr# 190"};
        { 30, "s13655", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Lesser Elemental Slayer", "=ds=#sr# 175"};
		Prev = "Enchanting2HWeapon1";
        Next = "EnchantingWeapon2";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingWeapon2"] = {
        { 1, "s13653", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Lesser Beastslayer", "=ds=#sr# 175"};
        { 2, "s13503", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Lesser Striking", "=ds=#sr# 140"};
        { 3, "s7786", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Minor Beastslayer", "=ds=#sr# 90"};
		{ 4, "s7788", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Minor Striking", "=ds=#sr# 90"};
        Prev = "EnchantingWeapon1";
        Next = "EnchantingMisc1";
        Back = "ENCHANTINGMENU";
    };
    
    AtlasLoot_Data["EnchantingMisc1"] = {
        { 1, "s28028", "22459", "=q4=Void Sphere", "=ds=#sr# 350"};
        { 2, "s32667", "22463", "=q3=Runed Eternium Rod", "=ds=#sr# 375"};
        { 3, "s45765", "22449", "=q3=Void Shatter", "=ds=#sr# 360"};
        { 4, "s42615", "22448", "=q3=Small Prismatic Shard", "=ds=#sr# 335"};
		{ 5, "s28022", "22449", "=q3=Large Prismatic Shard", "=ds=#sr# 335"};
        { 6, "s28027", "22460", "=q3=Prismatic Sphere", "=ds=#sr# 325"};
        { 7, "s42613", "22448", "=q3=Nexus Transformation", "=ds=#sr# 300"};
        { 8, "s15596", "11811", "=q3=Smoking Heart of the Mountain", "=ds=#sr# 265"};
        { 9, "s32665", "22462", "=q2=Runed Adamantite Rod", "=ds=#sr# 350"};
        { 10, "s14810", "11290", "=q2=Greater Mystic Wand", "=ds=#sr# 175"};
        { 11, "s14809", "11289", "=q2=Lesser Mystic Wand", "=ds=#sr# 155"};
        { 12, "s14807", "11288", "=q2=Greater Magic Wand", "=ds=#sr# 70"};
        { 13, "s14293", "11287", "=q2=Lesser Magic Wand", "=ds=#sr# 10"};
        { 14, "s28019", "22522", "=q1=Superior Wizard Oil", "=ds=#sr# 340"};
        { 15, "s28016", "22521", "=q1=Superior Mana Oil", "=ds=#sr# 310"};
        { 16, "s25130", "20748", "=q1=Brilliant Mana Oil", "=ds=#sr# 300"};
		{ 17, "s25129", "20749", "=q1=Brilliant Wizard Oil", "=ds=#sr# 300"};
		{ 18, "s32664", "22461", "=q1=Runed Fel Iron Rod", "=ds=#sr# 300"};
        { 19, "s20051", "16207", "=q1=Runed Arcanite Rod", "=ds=#sr# 290"};
        { 20, "s25128", "20750", "=q1=Wizard Oil", "=ds=#sr# 275"};
        { 21, "s17180", "12655", "=q1=Enchanted Thorium", "=ds=#sr# 250"};
		{ 22, "s25127", "20747", "=q1=Lesser Mana Oil", "=ds=#sr# 250"};
        { 23, "s17181", "12810", "=q1=Enchanted Leather", "=ds=#sr# 250"};
        { 24, "s25126", "20746", "=q1=Lesser Wizard Oil", "=ds=#sr# 200"};
		{ 25, "s13702", "11145", "=q1=Runed Truesilver Rod", "=ds=#sr# 200"};
        { 26, "s25125", "20745", "=q1=Minor Mana Oil", "=ds=#sr# 150"};
		{ 27, "s13628", "11130", "=q1=Runed Golden Rod", "=ds=#sr# 150"};
        { 28, "s7795", "6339", "=q1=Runed Silver Rod", "=ds=#sr# 100"};
        { 29, "s25124", "20744", "=q1=Minor Wizard Oil", "=ds=#sr# 45"};
        { 30, "s7421", "6218", "=q1=Runed Copper Rod", "=ds=#sr# 1"};
        Prev = "EnchantingWeapon2";
        Back = "ENCHANTINGMENU";
    };

		-------------------
		--- Engineering ---
		-------------------

	AtlasLoot_Data["EngineeringApprentice1"] = {
		{ 1, "s3918", "4357", "=q1=Rough Blasting Powder", "=ds=#sr# 1"};
		{ 2, "s3920", "8067", "=q1=Crafted Light Shot", "=ds=#sr# 1"};
		{ 3, "s3919", "4358", "=q1=Rough Dynamite", "=ds=#sr# 1"};
		{ 4, "s3922", "4359", "=q1=Handful of Copper Bolts", "=ds=#sr# 30"};
		{ 5, "s3923", "4360", "=q1=Rough Copper Bomb", "=ds=#sr# 30"};
		Next = "EngineeringJourneyman1";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringJourneyman1"] = {
		{ 1, "s7430", "6219", "=q1=Arclight Spanner", "=ds=#sr# 50"};
		{ 2, "s3925", "4362", "=q2=Rough Boomstick", "=ds=#sr# 50"};
		{ 3, "s3924", "4361", "=q1=Copper Tube", "=ds=#sr# 50"};
		{ 4, "s3977", "4405", "=q1=Crude Scope", "=ds=#sr# 60"};
		{ 5, "s3926", "4363", "=q1=Copper Modulator", "=ds=#sr# 65"};
		{ 6, "s3929", "4364", "=q1=Coarse Blasting Powder", "=ds=#sr# 75"};
		{ 7, "s3930", "8068", "=q1=Crafted Heavy Shot", "=ds=#sr# 75"};
		{ 8, "s3931", "4365", "=q1=Coarse Dynamite", "=ds=#sr# 75"};
		{ 9, "s3928", "4401", "=q1=Mechanical Squirrel", "=ds=#sr# 75"};
		{ 10, "s3932", "4366", "=q1=Target Dummy", "=ds=#sr# 85"};
		{ 11, "s3973", "4404", "=q1=Silver Contact", "=ds=#sr# 90"};
		{ 12, "s8339", "6714", "=q1=EZ-Thro Dynamite", "=ds=#sr# 100"};
		{ 13, "s8334", "6712", "=q1=Practice Lock", "=ds=#sr# 100"};
		{ 14, "s3934", "4368", "=q2=Flying Tiger Goggles", "=ds=#sr# 100"};
		{ 15, "s3933", "4367", "=q1=Small Seaforium Charge", "=ds=#sr# 100"};
		{ 16, "s3938", "4371", "=q1=Bronze Tube", "=ds=#sr# 105"};
		{ 17, "s3937", "4370", "=q1=Large Copper Bomb", "=ds=#sr# 105"};
		{ 18, "s3936", "4369", "=q2=Deadly Blunderbuss", "=ds=#sr# 105"};
		{ 19, "s3978", "4406", "=q1=Standard Scope", "=ds=#sr# 110"};
		{ 20, "s3941", "4374", "=q1=Small Bronze Bomb", "=ds=#sr# 120"};
		{ 21, "s3939", "4372", "=q2=Lovingly Crafted Boomstick", "=ds=#sr# 120"};
		{ 22, "s3940", "4373", "=q2=Shadow Goggles", "=ds=#sr# 120"};
		Next = "EngineeringExpert1";
		Prev = "EngineeringApprentice1";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringExpert1"] = {
		{ 1, "s3947", "8069", "=q1=Crafted Solid Shot", "=ds=#sr# 125"};
		{ 2, "s3945", "4377", "=q1=Heavy Blasting Powder", "=ds=#sr# 125"};
		{ 3, "s3946", "4378", "=q1=Heavy Dynamite", "=ds=#sr# 125"};
		{ 4, "s26416", "21558", "=q1=Small Blue Rocket", "=ds=#sr# 125"};
		{ 5, "s26417", "21559", "=q1=Small Green Rocket", "=ds=#sr# 125"};
		{ 6, "s26418", "21557", "=q1=Small Red Rocket", "=ds=#sr# 125"};
		{ 7, "s3944", "4376", "=q1=Flame Deflector", "=ds=#sr# 125"};
		{ 8, "s3942", "4375", "=q1=Whirring Bronze Gizmo", "=ds=#sr# 125"};
		{ 9, "s9269", "7506", "=q2=Gnomish Universal Remote", "=ds=#sr# 125"};
		{ 10, "s3949", "4379", "=q2=Silver-plated Shotgun", "=ds=#sr# 130"};
		{ 11, "s6458", "5507", "=q1=Ornate Spyglass", "=ds=#sr# 135"};
		{ 12, "s3950", "4380", "=q1=Big Bronze Bomb", "=ds=#sr# 140"};
		{ 13, "s3952", "4381", "=q2=Minor Recombobulator", "=ds=#sr# 140"};
		{ 14, "s3953", "4382", "=q1=Bronze Framework", "=ds=#sr# 145"};
		{ 15, "s3954", "4383", "=q2=Moonsight Rifle", "=ds=#sr# 145"};
		{ 16, "s9271", "6533", "=q1=Aquadynamic Fish Attractor", "=ds=#sr# 150"};
		{ 17, "s23067", "9312", "=q1=Blue Firework", "=ds=#sr# 150"};
		{ 18, "s23068", "9313", "=q1=Green Firework", "=ds=#sr# 150"};
		{ 19, "s23066", "9318", "=q1=Red Firework", "=ds=#sr# 150"};
		{ 20, "s12584", "10558", "=q1=Gold Power Core", "=ds=#sr# 150"};
		{ 21, "s3956", "4385", "=q2=Green Tinted Goggles", "=ds=#sr# 150"};
		{ 22, "s3955", "4384", "=q1=Explosive Sheep", "=ds=#sr# 150"};
		{ 23, "s3957", "4386", "=q1=Ice Deflector", "=ds=#sr# 155"};
		{ 24, "s3958", "4387", "=q1=Iron Strut", "=ds=#sr# 160"};
		{ 25, "s3959", "4388", "=q1=Discombobulator Ray", "=ds=#sr# 160"};
		{ 26, "s9273", "7148", "=q1=Goblin Jumper Cables", "=ds=#sr# 165"};
		{ 27, "s3960", "4403", "=q1=Portable Bronze Mortar", "=ds=#sr# 165"};
		{ 28, "s3961", "4389", "=q1=Gyrochronatom", "=ds=#sr# 170"};
		{ 29, "s12585", "10505", "=q1=Solid Blasting Powder", "=ds=#sr# 175"};
		{ 30, "s12586", "10507", "=q1=Solid Dynamite", "=ds=#sr# 175"};
		Next = "EngineeringExpert2";
		Prev = "EngineeringJourneyman1";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringExpert2"] = {
		{ 1, "s26420", "21589", "=q1=Large Blue Rocket", "=ds=#sr# 175"};
		{ 2, "s26421", "21590", "=q1=Large Green Rocket", "=ds=#sr# 175"};
		{ 3, "s26422", "21592", "=q1=Large Red Rocket", "=ds=#sr# 175"};
		{ 4, "s3963", "4391", "=q1=Compact Harvest Reaper Kit", "=ds=#sr# 175"};
		{ 5, "s12590", "10498", "=q1=Gyromatic Micro-Adjustor", "=ds=#sr# 175"};
		{ 6, "s3962", "4390", "=q1=Iron Grenade", "=ds=#sr# 175"};
		{ 7, "s12587", "10499", "=q2=Bright-Eye Goggles", "=ds=#sr# 175"};
		{ 8, "s3979", "4407", "=q2=Accurate Scope", "=ds=#sr# 180"};
		{ 9, "s3965", "4392", "=q1=Advanced Target Dummy", "=ds=#sr# 185"};
		{ 10, "s8243", "4852", "=q1=Flash Bomb", "=ds=#sr# 185"};
		{ 11, "s3966", "4393", "=q2=Craftsman's Monocle", "=ds=#sr# 185"};
		{ 12, "s3967", "4394", "=q1=Big Iron Bomb", "=ds=#sr# 190"};
		{ 13, "s21940", "17716", "=q1=Snowmaster 9000", "=ds=#sr# 190"};
		{ 14, "s12589", "10559", "=q1=Mithril Tube", "=ds=#sr# 195"};
		{ 15, "s3968", "4395", "=q1=Goblin Land Mine", "=ds=#sr# 195"};
		Next = "EngineeringArtisan1";
		Prev = "EngineeringExpert1";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringArtisan1"] = {
		{ 1, "s23069", "18588", "=q1=EZ-Thro Dynamite II", "=ds=#sr# 200"};
		{ 2, "s3972", "4398", "=q1=Large Seaforium Charge", "=ds=#sr# 200"};
		{ 3, "s15255", "11590", "=q1=Mechanical Repair Kit", "=ds=#sr# 200"};
		{ 4, "s12591", "10560", "=q1=Unstable Trigger", "=ds=#sr# 200"};
		{ 5, "s3971", "4397", "=q1=Gnomish Cloaking Device", "=ds=#sr# 200"};
		{ 6, "s3969", "4396", "=q1=Mechanical Dragonling", "=ds=#sr# 200"};
		{ 7, "s13240", "10577", "=q1=The Mortar: Reloaded", "=ds=#sr# 205"};
		{ 8, "s12715", "10644", "=q1=Goblin Rocket Fuel Recipe", "=ds=#sr# 205"};
		{ 9, "s12895", "10713", "=q1=Inlaid Mithril Cylinder Plans", "=ds=#sr# 205"};
		{ 10, "s15633", "11826", "=q1=Lil' Smoky", "=ds=#sr# 205"};
		{ 11, "s15628", "11825", "=q1=Pet Bombling", "=ds=#sr# 205"};
		{ 12, "s12760", "10646", "=q1=Goblin Sapper Charge", "=ds=#sr# 205"};
		{ 13, "s12594", "10500", "=q2=Fire Goggles", "=ds=#sr# 205"};
		{ 14, "s12718", "10543", "=q2=Goblin Construction Helmet", "=ds=#sr# 205"};
		{ 15, "s12717", "10542", "=q2=Goblin Mining Helmet", "=ds=#sr# 205"};
		{ 16, "s12595", "10508", "=q2=Mithril Blunderbuss", "=ds=#sr# 205"};
		{ 17, "s12899", "10716", "=q1=Gnomish Shrink Ray", "=ds=#sr# 205"};
		{ 18, "s12716", "10577", "=q1=Goblin Mortar", "=ds=#sr# 205"};
		{ 19, "s12596", "10512", "=q2=Hi-Impact Mithril Slugs", "=ds=#sr# 210"};
		{ 20, "s12897", "10545", "=q2=Gnomish Goggles", "=ds=#sr# 210"};
		{ 21, "s12597", "10546", "=q1=Deadly Scope", "=ds=#sr# 210"};
		{ 22, "s12902", "10720", "=q1=Gnomish Net-o-Matic Projector", "=ds=#sr# 210"};
		{ 23, "s12599", "10561", "=q1=Mithril Casing", "=ds=#sr# 215"};
		{ 24, "s12603", "10514", "=q1=Mithril Frag Bomb", "=ds=#sr# 215"};
		{ 25, "s12903", "10721", "=q2=Gnomish Harm Prevention Belt", "=ds=#sr# 215"};
		{ 26, "s12607", "10501", "=q2=Catseye Ultra Goggles", "=ds=#sr# 220"};
		{ 27, "s12614", "10510", "=q2=Mithril Heavy-bore Rifle", "=ds=#sr# 220"};
		{ 28, "s26423", "21571", "=q1=Blue Rocket Cluster", "=ds=#sr# 225"};
		{ 29, "s26424", "21574", "=q1=Green Rocket Cluster", "=ds=#sr# 225"};
		{ 30, "s26425", "21576", "=q1=Red Rocket Cluster", "=ds=#sr# 225"};
		Next = "EngineeringArtisan2";
		Prev = "EngineeringExpert2";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringArtisan2"] = {
		{ 1, "s12905", "10724", "=q2=Gnomish Rocket Boots", "=ds=#sr# 225"};
		{ 2, "s8895", "7189", "=q2=Goblin Rocket Boots", "=ds=#sr# 225"};
		{ 3, "s12616", "10518", "=q2=Parachute Cloak", "=ds=#sr# 225"};
		{ 4, "s12615", "10502", "=q2=Spellpower Goggles Xtreme", "=ds=#sr# 225"};
		{ 5, "s26442", "21569", "=q1=Firework Launcher", "=ds=#sr# 225"};
		{ 6, "s12755", "10587", "=q1=Goblin Bomb Dispenser", "=ds=#sr# 230"};
		{ 7, "s12617", "10506", "=q2=Deepdive Helmet", "=ds=#sr# 230"};
		{ 8, "s12618", "10503", "=q2=Rose Colored Goggles", "=ds=#sr# 230"};
		{ 9, "s12906", "10725", "=q1=Gnomish Battle Chicken", "=ds=#sr# 230"};
		{ 10, "s12619", "10562", "=q1=Hi-Explosive Bomb", "=ds=#sr# 235"};
		{ 11, "s12754", "10586", "=q1=The Big One", "=ds=#sr# 235"};
		{ 12, "s12907", "10726", "=q2=Gnomish Mind Control Cap", "=ds=#sr# 235"};
		{ 13, "s12759", "10645", "=q1=Gnomish Death Ray", "=ds=#sr# 240"};
		{ 14, "s12908", "10727", "=q1=Goblin Dragon Gun", "=ds=#sr# 240"};
		{ 15, "s12620", "10548", "=q1=Sniper Scope", "=ds=#sr# 240"};
		{ 16, "s12621", "10513", "=q2=Mithril Gyro-Shot", "=ds=#sr# 245"};
		{ 17, "s12622", "10504", "=q3=Green Lens", "=ds=#sr# 245"};
		{ 18, "s12758", "10588", "=q2=Goblin Rocket Helmet", "=ds=#sr# 245"};
		{ 19, "s19788", "15992", "=q1=Dense Blasting Powder", "=ds=#sr# 250"};
		{ 20, "s23070", "18641", "=q1=Dense Dynamite", "=ds=#sr# 250"};
		{ 21, "s23507", "19026", "=q1=Snake Burst Firework", "=ds=#sr# 250"};
		{ 22, "s12624", "10576", "=q2=Mithril Mechanical Dragonling", "=ds=#sr# 250"};
		{ 23, "s19567", "15846", "=q1=Salt Shaker", "=ds=#sr# 250"};
		{ 24, "s26011", "21277", "=q1=Tranquil Mechanical Yeti", "=ds=#sr# 250"};
		{ 25, "s23129", "18660", "=q2=World Enlarger", "=ds=#sr# 260"};
		{ 26, "s23071", "18631", "=q1=Truesilver Transformer", "=ds=#sr# 260"};
		{ 27, "s23077", "18634", "=q3=Gyrofreeze Ice Reflector", "=ds=#sr# 260"};
		{ 28, "s19792", "15995", "=q2=Thorium Rifle", "=ds=#sr# 260"};
		{ 29, "s19790", "15993", "=q1=Thorium Grenade", "=ds=#sr# 260"};
		{ 30, "s19791", "15994", "=q1=Thorium Widget", "=ds=#sr# 260"};
		Next = "EngineeringArtisan3";
		Prev = "EngineeringArtisan1";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringArtisan3"] = {
		{ 1, "s23486", "18984", "=q2=Dimensional Ripper - Everlook", "=ds=#sr# 260"};
		{ 2, "s23489", "18986", "=q2=Ultrasafe Transporter - Gadgetzan", "=ds=#sr# 260"};
		{ 3, "s23096", "18645", "=q1=Alarm-O-Bot", "=ds=#sr# 265"};
		{ 4, "s23078", "18587", "=q1=Goblin Jumper Cables XL", "=ds=#sr# 265"};
		{ 5, "s19793", "15996", "=q1=Lifelike Mechanical Toad", "=ds=#sr# 265"};
		{ 6, "s19794", "15999", "=q2=Spellpower Goggles Xtreme Plus", "=ds=#sr# 270"};
		Next = "EngineeringMaster1";
		Prev = "EngineeringArtisan2";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringMaster1"] = {
		{ 1, "s39895", "7191", "=q1=Fused Wiring", "=ds=#sr# 275"};
		{ 2, "s26426", "21714", "=q1=Large Blue Rocket Cluster", "=ds=#sr# 275"};
		{ 3, "s26427", "21716", "=q1=Large Green Rocket Cluster", "=ds=#sr# 275"};
		{ 4, "s26428", "21718", "=q1=Large Red Rocket Cluster", "=ds=#sr# 275"};
		{ 5, "s23080", "18594", "=q1=Powerful Seaforium Charge", "=ds=#sr# 275"};
		{ 6, "s23079", "18637", "=q2=Major Recombobulator", "=ds=#sr# 275"};
		{ 7, "s19796", "16004", "=q3=Dark Iron Rifle", "=ds=#sr# 275"};
		{ 8, "s26443", "21570", "=q1=Firework Cluster Launcher", "=ds=#sr# 275"};
		{ 9, "s19814", "16023", "=q1=Masterwork Target Dummy", "=ds=#sr# 275"};
		{ 10, "s19795", "16000", "=q1=Thorium Tube", "=ds=#sr# 275"};
		{ 11, "s19800", "15997", "=q2=Thorium Shells", "=ds=#sr# 285"};
		{ 12, "s19799", "16005", "=q1=Dark Iron Bomb", "=ds=#sr# 285"};
		{ 13, "s19815", "16006", "=q1=Delicate Arcanite Converter", "=ds=#sr# 285"};
		{ 14, "s23081", "18638", "=q3=Hyper-Radiant Flame Reflector", "=ds=#sr# 290"};
		{ 15, "s19825", "16008", "=q2=Master Engineer's Goggles", "=ds=#sr# 290"};
		{ 16, "s19819", "16009", "=q2=Voice Amplification Modulator", "=ds=#sr# 290"};
		{ 17, "s30573", "23832", "=q1=Gnomish Tonk Controller", "=ds=#sr# 295"};
		{ 18, "s30561", "23831", "=q1=Goblin Tonk Controller", "=ds=#sr# 295"};
		{ 19, "s30305", "23783", "=q1=Handful of Fel Iron Bolts", "=ds=#sr# 300"};
		{ 20, "s30303", "23781", "=q1=Elemental Blasting Powder", "=ds=#sr# 300"};
		{ 21, "s30304", "23782", "=q1=Fel Iron Casing", "=ds=#sr# 300"};
		{ 22, "s22795", "18282", "=q4=Core Marksman Rifle", "=ds=#sr# 300"};
		{ 23, "s22797", "18168", "=q4=Force Reactive Disk", "=ds=#sr# 300"};
		{ 24, "s19830", "16022", "=q3=Arcanite Dragonling", "=ds=#sr# 300"};
		{ 25, "s22793", "18283", "=q3=Biznicks 247x128 Accurascope", "=ds=#sr# 300"};
		{ 26, "s24356", "19999", "=q3=Bloodvine Goggles", "=ds=#sr# 300"};
		{ 27, "s24357", "19998", "=q3=Bloodvine Lens", "=ds=#sr# 300"};
		{ 28, "s19833", "16007", "=q3=Flawless Arcanite Rifle", "=ds=#sr# 300"};
		{ 29, "s23082", "18639", "=q3=Ultra-Flash Shadow Reflector", "=ds=#sr# 300"};
		{ 30, "s19831", "16040", "=q1=Arcane Bomb", "=ds=#sr# 300"};
		Next = "EngineeringMaster2";
		Prev = "EngineeringArtisan3";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringMaster2"] = {
		{ 1, "s30310", "23736", "=q1=Fel Iron Bomb", "=ds=#sr# 300"};
		{ 2, "s22704", "18232", "=q1=Field Repair Bot 74A", "=ds=#sr# 300"};
		{ 3, "s30548", "23821", "=q1=Zapthrottle Mote Extractor", "=ds=#sr# 305"};
		{ 4, "s30346", "23772", "=q2=Fel Iron Shells", "=ds=#sr# 310"};
		{ 5, "s30312", "23742", "=q2=Fel Iron Musket", "=ds=#sr# 320"};
		{ 6, "s30306", "23784", "=q1=Adamantite Frame", "=ds=#sr# 325"};
		{ 7, "s30348", "23774", "=q2=Fel Iron Toolbox", "=ds=#sr# 325"};
		{ 8, "s30558", "23826", "=q1=The Bigger One", "=ds=#sr# 325"};
		{ 9, "s30337", "23767", "=q2=Crashin' Thrashin' Robot", "=ds=#sr# 325"};
		{ 10, "s30311", "23737", "=q1=Adamantite Grenade", "=ds=#sr# 325"};
		{ 11, "s30568", "23841", "=q1=Gnomish Flame Turret", "=ds=#sr# 325"};
		{ 12, "s30551", "33092", "=q1=Healing Potion Injector", "=ds=#sr# 330"};
		{ 13, "s39971", "32423", "=q1=Icy Blasting Primers", "=ds=#sr# 335"};
		{ 14, "s43676", "20475", "=q1=Adamantite Arrow Maker", "=ds=#sr# 335"};
		{ 15, "s30347", "34504", "=q1=Adamantite Shell Machine", "=ds=#sr# 335"};
		{ 16, "s30344", "23771", "=q1=Green Smoke Flare", "=ds=#sr# 335"};
		{ 17, "s32814", "25886", "=q1=Purple Smoke Flare", "=ds=#sr# 335"};
		{ 18, "s30341", "23768", "=q1=White Smoke Flare", "=ds=#sr# 335"};
		{ 19, "s30329", "23764", "=q2=Adamantite Scope", "=ds=#sr# 335"};
		{ 20, "s39973", "32413", "=q1=Frost Grenades", "=ds=#sr# 335"};
		{ 21, "s30560", "23827", "=q1=Super Sapper Charge", "=ds=#sr# 340"};
		{ 22, "s30316", "23758", "=q3=Cogspinner Goggles", "=ds=#sr# 340"};
		{ 23, "s30317", "23761", "=q3=Power Amplification Goggles", "=ds=#sr# 340"};
		{ 24, "s30309", "23787", "=q1=Felsteel Stabilizer", "=ds=#sr# 340"};
		{ 25, "s30307", "23785", "=q1=Hardened Adamantite Tube", "=ds=#sr# 340"};
		{ 26, "s30308", "23786", "=q1=Khorium Power Core", "=ds=#sr# 340"};
		{ 27, "s30569", "23835", "=q3=Gnomish Poultryizer", "=ds=#sr# 340"};
		{ 28, "s30552", "33093", "=q1=Mana Potion Injector", "=ds=#sr# 345"};
		{ 29, "s30547", "23819", "=q1=Elemental Seaforium Charge", "=ds=#sr# 350"};
		{ 30, "s36954", "30542", "=q2=Dimensional Ripper - Area 52", "=ds=#sr# 350"};
		Next = "EngineeringMaster3";
		Prev = "EngineeringMaster1";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringMaster3"] = {
		{ 1, "s36955", "30544", "=q2=Ultrasafe Transporter - Toshley's Station", "=ds=#sr# 350"};
		{ 2, "s30563", "23836", "=q3=Goblin Rocket Launcher", "=ds=#sr# 350"};
		{ 3, "s30570", "23825", "=q3=Nigh-Invulnerability Belt", "=ds=#sr# 350"};
		{ 4, "s30318", "23762", "=q3=Ultra-Spectropic Detection Goggles", "=ds=#sr# 350"};
		{ 5, "s30313", "23746", "=q2=Adamantite Rifle", "=ds=#sr# 350"};
		{ 6, "s41317", "32478", "=q4=Deathblow X11 Goggles", "=ds=#sr# 350"};
		{ 7, "s41320", "32494", "=q4=Destruction Holo-gogs", "=ds=#sr# 350"};
		{ 8, "s40274", "32461", "=q4=Furious Gizmatic Goggles", "=ds=#sr# 350"};
		{ 9, "s41315", "32476", "=q4=Gadgetstorm Goggles", "=ds=#sr# 350"};
		{ 10, "s41311", "32472", "=q4=Justicebringer 2000 Specs", "=ds=#sr# 350"};
		{ 11, "s41316", "32475", "=q4=Living Replicator Specs", "=ds=#sr# 350"};
		{ 12, "s41319", "32480", "=q4=Magnified Moon Specs", "=ds=#sr# 350"};
		{ 13, "s41321", "32495", "=q4=Powerheal 4000 Lens", "=ds=#sr# 350"};
		{ 14, "s41314", "32474", "=q4=Surestrike Goggles v2.0", "=ds=#sr# 350"};
		{ 15, "s41312", "32473", "=q4=Tankatronic Goggles", "=ds=#sr# 350"};
		{ 16, "s41318", "32479", "=q4=Wonderheal XT40 Shades", "=ds=#sr# 350"};
		{ 17, "s44155", "34060", "=q3=Flying Machine", "=ds=#sr# 350"};
		{ 18, "s30556", "23824", "=q3=Rocket Boots Xtreme", "=ds=#sr# 355"};
		{ 19, "s46697", "35581", "=q3=Rocket Boots Xtreme Lite", "=ds=#sr# 355"};
		{ 20, "s30314", "23747", "=q3=Felsteel Boomstick", "=ds=#sr# 360"};
		{ 21, "s30325", "23763", "=q3=Hyper-Vision Goggles", "=ds=#sr# 360"};
		{ 22, "s30332", "23765", "=q3=Khorium Scope", "=ds=#sr# 360"};
		{ 23, "s44391", "34113", "=q1=Field Repair Bot 110G", "=ds=#sr# 360"};
		{ 24, "s30565", "23838", "=q4=Foreman's Enchanted Helmet", "=ds=#sr# 375"};
		{ 25, "s30566", "23839", "=q4=Foreman's Reinforced Helmet", "=ds=#sr# 375"};
		{ 26, "s30575", "23829", "=q4=Gnomish Battle Goggles", "=ds=#sr# 375"};
		{ 27, "s30574", "23828", "=q4=Gnomish Power Goggles", "=ds=#sr# 375"};
		{ 28, "s41307", "32756", "=q4=Gyro-balanced Khorium Destroyer", "=ds=#sr# 375"};
		{ 29, "s44157", "34061", "=q4=Turbo-Charged Flying Machine", "=ds=#sr# 375"};
		{ 30, "s30315", "23748", "=q3=Ornate Khorium Rifle", "=ds=#sr# 375"};
		Next = "EngineeringMaster4";
		Prev = "EngineeringMaster2";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["EngineeringMaster4"] = {
		{ 1, "s30334", "23766", "=q3=Stabilized Eternium Scope", "=ds=#sr# 375"};
		{ 2, "s46111", "34847", "=q4=Annihilator Holo-Gogs", "=ds=#sr# 375"};
		{ 3, "s46115", "34357", "=q4=Hard Khorium Goggles", "=ds=#sr# 375"};
		{ 4, "s46109", "35182", "=q4=Hyper-Magnified Moon Specs", "=ds=#sr# 375"};
		{ 5, "s46107", "35185", "=q4=Justicebringer 3000 Specs", "=ds=#sr# 375"};
		{ 6, "s46112", "34355", "=q4=Lightning Etched Specs", "=ds=#sr# 375"};
		{ 7, "s46114", "34354", "=q4=Mayhem Projection Goggles", "=ds=#sr# 375"};
		{ 8, "s46108", "35181", "=q4=Powerheal 9000 Lens", "=ds=#sr# 375"};
		{ 9, "s46110", "35184", "=q4=Primal-Attuned Goggles", "=ds=#sr# 375"};
		{ 10, "s46116", "34353", "=q4=Quad Deathblow X44 Goggles", "=ds=#sr# 375"};
		{ 11, "s46113", "34356", "=q4=Surestrike Goggles v3.0", "=ds=#sr# 375"};
		{ 12, "s46106", "35183", "=q4=Wonderheal XT68 Shades", "=ds=#sr# 375"};
		Next = "Gnomish1";
		Prev = "EngineeringMaster3";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["Gnomish1"] = {
		{ 1, "s12895", "10713", "=q1=Inlaid Mithril Cylinder Plans", "=ds=#sr# 205"};
		{ 2, "s15633", "11826", "=q1=Lil' Smoky", "=ds=#sr# 205"};
		{ 3, "s12899", "10716", "=q1=Gnomish Shrink Ray", "=ds=#sr# 205"};
		{ 4, "s12897", "10545", "=q2=Gnomish Goggles", "=ds=#sr# 210"};
		{ 5, "s12902", "10720", "=q1=Gnomish Net-o-Matic Projector", "=ds=#sr# 210"};
		{ 6, "s12903", "10721", "=q2=Gnomish Harm Prevention Belt", "=ds=#sr# 215"};
		{ 7, "s12905", "10724", "=q2=Gnomish Rocket Boots", "=ds=#sr# 225"};
		{ 8, "s12906", "10725", "=q1=Gnomish Battle Chicken", "=ds=#sr# 230"};
		{ 9, "s12907", "10726", "=q2=Gnomish Mind Control Cap", "=ds=#sr# 235"};
		{ 10, "s12759", "10645", "=q1=Gnomish Death Ray", "=ds=#sr# 240"};
		{ 11, "s23129", "18660", "=q2=World Enlarger", "=ds=#sr# 260"};
		{ 12, "s23489", "18986", "=q2=Ultrasafe Transporter - Gadgetzan", "=ds=#sr# 260"};
		{ 13, "s23096", "18645", "=q1=Alarm-O-Bot", "=ds=#sr# 265"};
		{ 14, "s30568", "23841", "=q1=Gnomish Flame Turret", "=ds=#sr# 325"};
		{ 15, "s30569", "23835", "=q3=Gnomish Poultryizer", "=ds=#sr# 340"};
		{ 16, "s36955", "30544", "=q2=Ultrasafe Transporter - Toshley's Station", "=ds=#sr# 350"};
		{ 17, "s30570", "23825", "=q3=Nigh-Invulnerability Belt", "=ds=#sr# 350"};
		{ 18, "s30575", "23829", "=q4=Gnomish Battle Goggles", "=ds=#sr# 375"};
		{ 19, "s30574", "23828", "=q4=Gnomish Power Goggles", "=ds=#sr# 375"};
		Next = "Goblin1";
		Prev = "EngineeringMaster4";
		Back = "ENGINEERINGMENU";
	};

	AtlasLoot_Data["Goblin1"] = {
		{ 1, "s13240", "10577", "=q1=The Mortar: Reloaded", "=ds=#sr# 205"};
		{ 2, "s12715", "10644", "=q1=Goblin Rocket Fuel Recipe", "=ds=#sr# 205"};
		{ 3, "s15628", "11825", "=q1=Pet Bombling", "=ds=#sr# 205"};
		{ 4, "s12760", "10646", "=q1=Goblin Sapper Charge", "=ds=#sr# 205"};
		{ 5, "s12718", "10543", "=q2=Goblin Construction Helmet", "=ds=#sr# 205"};
		{ 6, "s12717", "10542", "=q2=Goblin Mining Helmet", "=ds=#sr# 205"};
		{ 7, "s12716", "10577", "=q1=Goblin Mortar", "=ds=#sr# 205"};
		{ 8, "s8895", "7189", "=q2=Goblin Rocket Boots", "=ds=#sr# 225"};
		{ 9, "s12755", "10587", "=q1=Goblin Bomb Dispenser", "=ds=#sr# 230"};
		{ 10, "s12754", "10586", "=q1=The Big One", "=ds=#sr# 235"};
		{ 11, "s12908", "10727", "=q1=Goblin Dragon Gun", "=ds=#sr# 240"};
		{ 12, "s12758", "10588", "=q2=Goblin Rocket Helmet", "=ds=#sr# 245"};
		{ 13, "s23486", "18984", "=q2=Dimensional Ripper - Everlook", "=ds=#sr# 260"};
		{ 14, "s23078", "18587", "=q1=Goblin Jumper Cables XL", "=ds=#sr# 265"};
		{ 15, "s30558", "23826", "=q1=The Bigger One", "=ds=#sr# 325"};
		{ 16, "s30560", "23827", "=q1=Super Sapper Charge", "=ds=#sr# 340"};
		{ 17, "s36954", "30542", "=q2=Dimensional Ripper - Area 52", "=ds=#sr# 350"};
		{ 18, "s30563", "23836", "=q3=Goblin Rocket Launcher", "=ds=#sr# 350"};
		{ 19, "s30565", "23838", "=q4=Foreman's Enchanted Helmet", "=ds=#sr# 375"};
		{ 20, "s30566", "23839", "=q4=Foreman's Reinforced Helmet", "=ds=#sr# 375"};
		Prev = "Gnomish1";
		Back = "ENGINEERINGMENU";
	};

		-----------------
		--- First Aid ---
		-----------------

	AtlasLoot_Data["FirstAid1"] = {
		{ 1, "s3275", "1251", "=q1=Linen Bandage", "=ds=#sr# 1"};
		{ 2, "s3276", "2581", "=q1=Heavy Linen Bandage", "=ds=#sr# 40"};
		{ 3, "s7934", "6452", "=q1=Anti-Venom", "=ds=#sr# 80"};
		{ 4, "s3277", "3530", "=q1=Wool Bandage", "=ds=#sr# 80"};
		{ 5, "s3278", "3531", "=q1=Heavy Wool Bandage", "=ds=#sr# 115"};
		{ 6, "s7935", "6453", "=q1=Strong Anti-Venom", "=ds=#sr# 130"};
		{ 7, "s7928", "6450", "=q1=Silk Bandage", "=ds=#sr# 150"};
		{ 8, "s7929", "6451", "=q1=Heavy Silk Bandage", "=ds=#sr# 180"};
		{ 9, "s10840", "8544", "=q1=Mageweave Bandage", "=ds=#sr# 210"};
		{ 10, "s10841", "8545", "=q1=Heavy Mageweave Bandage", "=ds=#sr# 240"};
		{ 11, "s18629", "14529", "=q1=Runecloth Bandage", "=ds=#sr# 260"};
		{ 12, "s18630", "14530", "=q1=Heavy Runecloth Bandage", "=ds=#sr# 290"};
		{ 13, "s23787", "19440", "=q1=Powerful Anti-Venom", "=ds=#sr# 300"};
		{ 14, "s27032", "21990", "=q1=Netherweave Bandage", "=ds=#sr# 330"};
		{ 15, "s27033", "21991", "=q1=Heavy Netherweave Bandage", "=ds=#sr# 360"};
		{ 16, "s45545", "34721", "=q1=Frostweave Bandage", "=ds=#sr# 375"};
		{ 17, "s45546", "34722", "=q1=Heavy Frostweave Bandage", "=ds=#sr# 400"};
		Back = "CRAFTINGMENU";
	};

		-------------------
		--- Inscription ---
		-------------------
    AtlasLoot_Data["Inscription_OffHand1"] = {
        { 1, "s59498", "44210", "=q4=Faces of Doom", "=ds=" };
        { 2, "s59497", "38322", "=q4=Iron-bound Tome", "=ds=" };
        { 3, "s59496", "43667", "=q3=Book of Clever Tricks", "=ds=" };        
        { 4, "s59495", "43666", "=q3=Hellfire Tome", "=ds=" };
        { 5, "s59494", "43664", "=q3=Manual of Clouds", "=ds=" };
        { 6, "s59493", "43663", "=q3=Stormbound Tome", "=ds=" };
        { 7, "s59490", "43661", "=q3=Book of Stars", "=ds=" };
        { 8, "s59489", "43660", "=q3=Fire Eater's Guide", "=ds=" };
        { 9, "s59486", "43657", "=q3=Royal Guide of Escape Routes", "=ds=" };
        { 10, "s59484", "43656", "=q3=Tome of Kings", "=ds=" };
        { 11, "s59478", "43655", "=q3=Book of Survival", "=ds=" };
        { 12, "s59475", "43654", "=q3=Tome of the Dawn", "=ds=" };
        { 13, "s58565", "43515", "=q3=Mystic Tome", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_Reagents1"] = {
        { 1, "s57716", "43127", "=q2=Snowfall Ink", "=ds="..AL["Trainer"] };
        { 2, "s57714", "43125", "=q2=Darkflame Ink", "=ds="..AL["Trainer"] };
        { 3, "s57712", "43123", "=q2=Ink of the Sky", "=ds="..AL["Trainer"] };
        { 4, "s57710", "43121", "=q2=Fiery Ink", "=ds="..AL["Trainer"] };
        { 5, "s57708", "43119", "=q2=Royal Ink", "=ds="..AL["Trainer"] };
        { 6, "s57706", "43117", "=q2=Dawnstar Ink", "=ds="..AL["Trainer"] };
        { 7, "s57703", "43115", "=q2=Hunter's Ink", "=ds="..AL["Trainer"] };
        { 8, "s57715", "43126", "=q1=Ink of the Sea", "=ds="..AL["Trainer"] };
        { 9, "s57713", "43124", "=q1=Ethereal Ink", "=ds="..AL["Trainer"] };
        { 10, "s57711", "43122", "=q1=Shimmering Ink", "=ds="..AL["Trainer"] };
        { 11, "s57709", "43120", "=q1=Celestial Ink", "=ds="..AL["Trainer"] };
        { 12, "s57707", "43118", "=q1=Jadefire Ink", "=ds="..AL["Trainer"] };
        { 13, "s57704", "43116", "=q1=Lion's Ink", "=ds="..AL["Trainer"] };
        { 14, "s53462", "39774", "=q1=Midnight Ink", "=ds="..AL["Trainer"] };
        { 15, "s52843", "39469", "=q1=Moonglow Ink", "=ds="..AL["Trainer"] };
        { 16, "s52738", "37101", "=q1=Ivory Ink", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_Scrolls1"] = {
        { 1, "s60337", "44315", "=q1=Scroll of Recall III", "=ds=" };
        { 2, "s60336", "44314", "=q1=Scroll of Recall II", "=ds=" };
        { 3, "s48248", "37118", "=q1=Scroll of Recall", "=ds=" };
        { 5, "s58483", "3012", "=q1=Scroll of Agility VIII", "=ds=" };
        { 6, "s58482", "3012", "=q1=Scroll of Agility VII", "=ds=" };
        { 7, "s58481", "3012", "=q1=Scroll of Agility VI", "=ds=" };
        { 8, "s58480", "3012", "=q1=Scroll of Agility V", "=ds=" };
        { 9, "s58478", "3012", "=q1=Scroll of Agility IV", "=ds=" };
        { 10, "s58476", "3012", "=q1=Scroll of Agility III", "=ds=" };
        { 11, "s58473", "3012", "=q1=Scroll of Agility II", "=ds=" };
        { 12, "s58472", "3012", "=q1=Scroll of Agility", "=ds=" };
        { 14, "s50604", "955", "=q1=Scroll of Intellect VIII", "=ds=" };
        { 15, "s50603", "955", "=q1=Scroll of Intellect VII", "=ds=" };
        { 16, "s50602", "955", "=q1=Scroll of Intellect VI", "=ds=" };
        { 17, "s50601", "955", "=q1=Scroll of Intellect V", "=ds=" };
        { 18, "s50600", "955", "=q1=Scroll of Intellect IV", "=ds=" };
        { 19, "s50599", "955", "=q1=Scroll of Intellect III", "=ds=" };
        { 20, "s50598", "955", "=q1=Scroll of Intellect II", "=ds=" };
        { 21, "s48114", "955", "=q1=Scroll of Intellect", "=ds=" };
        { 23, "s50611", "955", "=q1=Scroll of Spirit VIII", "=ds=" };
        { 24, "s50610", "955", "=q1=Scroll of Spirit VII", "=ds=" };
        { 25, "s50609", "955", "=q1=Scroll of Spirit VI", "=ds=" };
        { 26, "s50608", "955", "=q1=Scroll of Spirit V", "=ds=" };
        { 27, "s50607", "955", "=q1=Scroll of Spirit IV", "=ds=" };
        { 28, "s50606", "955", "=q1=Scroll of Spirit III", "=ds=" };
        { 29, "s50605", "955", "=q1=Scroll of Spirit II", "=ds=" };
        { 30, "s48116", "955", "=q1=Scroll of Spirit", "=ds=" };
        Back = "INSCRIPTIONMENU";
        Next = "Inscription_Scrolls2";
    };
    
    AtlasLoot_Data["Inscription_Scrolls2"] = {
        { 1, "s50620", "1180", "=q1=Scroll of Stamina VIII", "=ds=" };
        { 2, "s50619", "1180", "=q1=Scroll of Stamina VII", "=ds=" };
        { 3, "s50618", "1180", "=q1=Scroll of Stamina VI", "=ds=" };
        { 4, "s50617", "1180", "=q1=Scroll of Stamina V", "=ds=" };
        { 5, "s50616", "1180", "=q1=Scroll of Stamina IV", "=ds=" };
        { 6, "s50614", "1180", "=q1=Scroll of Stamina III", "=ds=" };
        { 7, "s50612", "1180", "=q1=Scroll of Stamina II", "=ds=" };
        { 8, "s45382", "1180", "=q1=Scroll of Stamina", "=ds=" };
        { 16, "s58491", "3012", "=q1=Scroll of Strength VIII", "=ds=" };
        { 17, "s58490", "3012", "=q1=Scroll of Strength VII", "=ds=" };
        { 18, "s58489", "3012", "=q1=Scroll of Strength VI", "=ds=" };
        { 19, "s58488", "3012", "=q1=Scroll of Strength V", "=ds=" };
        { 20, "s58487", "3012", "=q1=Scroll of Strength IV", "=ds=" };
        { 21, "s58486", "3012", "=q1=Scroll of Strength III", "=ds=" };
        { 22, "s58485", "3012", "=q1=Scroll of Strength II", "=ds=" };
        { 23, "s58484", "3012", "=q1=Scroll of Strength", "=ds=" };
        Back = "INSCRIPTIONMENU";
        Prev = "Inscription_Scrolls1";
    };
    
    AtlasLoot_Data["Inscription_Misc1"] = {
        { 1, "s59504", "INV_Feather_05", "=ds=Darkmoon Card of the North", "=ds=" };
        { 2, "s59503", "INV_Feather_05", "=ds=Greater Darkmoon Card", "=ds=" };
        { 3, "s59502", "INV_Feather_05", "=ds=Darkmoon Card", "=ds=" };
        { 4, "s59491", "INV_Feather_05", "=ds=Shadowy Tarot", "=ds=" };
        { 5, "s59487", "INV_Feather_05", "=ds=Arcane Tarot", "=ds=" };
        { 6, "s59480", "INV_Feather_05", "=ds=Strange Tarot", "=ds=" };
        { 8, "s61117", "INV_Inscription_Tradeskill01", "=ds=Master's Inscription of the Axe", "=ds=" };
        { 9, "s61118", "INV_Inscription_Tradeskill01", "=ds=Master's Inscription of the Crag", "=ds=" };
        { 10, "s61119", "INV_Inscription_Tradeskill01", "=ds=Master's Inscription of the Pinnacle", "=ds=" };
        { 11, "s61120", "INV_Inscription_Tradeskill01", "=ds=Master's Inscription of the Storm", "=ds=" };
        { 13, "s52175", "INV_Misc_Book_11", "=ds=Decipher", "=ds="..AL["Trainer"] };
        { 16, "s59500", "43145", "=q1=Armor Vellum III", "=ds=" };
        { 17, "s59499", "37602", "=q1=Armor Vellum II", "=ds=" };
        { 18, "s52739", "38682", "=q1=Armor Vellum", "=ds="..AL["Trainer"] };
        { 20, "s59501", "43146", "=q1=Weapon Vellum III", "=ds=" };
        { 21, "s59488", "39350", "=q1=Weapon Vellum II", "=ds=" };
        { 22, "s52840", "39349", "=q1=Weapon Vellum", "=ds="..AL["Trainer"] };
        { 24, "s59387", "43850", "=q1=Certificate of Ownership", "=ds=" };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_DeathKnightMajor1"] = {
        { 1, "s57207", "43533", "=q1=Glyph of Anti-Magic Shell", "=ds="..GetSpellInfo(61177) };
        { 2, "s57208", "43534", "=q1=Glyph of Blood Boil", "=ds="..AL["Trainer"] };
        { 3, "s59339", "43826", "=q1=Glyph of Blood Strike", "=ds="..AL["Trainer"] };
        { 4, "s57210", "43536", "=q1=Glyph of Bone Shield", "=ds="..AL["Trainer"] };
        { 5, "s57211", "43537", "=q1=Glyph of Chains of Ice", "=ds="..GetSpellInfo(61177)  };
        { 6, "s57212", "43538", "=q1=Glyph of Dark Command", "=ds="..AL["Trainer"] };
        { 7, "s57214", "43542", "=q1=Glyph of Death and Decay", "=ds="..AL["Trainer"] };
        { 8, "s57213", "43541", "=q1=Glyph of Death Grip", "=ds="..AL["Trainer"] };
        { 9, "s59340", "43827", "=q1=Glyph of Death Strike", "=ds="..AL["Trainer"] };
        { 10, "s57216", "43543", "=q1=Glyph of Frost Strike", "=ds="..AL["Trainer"] };
        { 11, "s57218", "43545", "=q1=Glyph of Icebound Fortitude", "=ds="..AL["Trainer"] };
        { 12, "s57219", "43546", "=q1=Glyph of Icy Touch", "=ds="..AL["Trainer"] };
        { 13, "s57220", "43547", "=q1=Glyph of Obliterate", "=ds="..GetSpellInfo(61177)  };
        { 14, "s57221", "43548", "=q1=Glyph of Plague Strike", "=ds="..AL["Trainer"] };
        { 15, "s57228", "44432", "=q1=Glyph of Raise Dead", "=ds="..AL["Trainer"] };
        { 16, "s57223", "43550", "=q1=Glyph of Rune Strike", "=ds="..GetSpellInfo(61177)  };
        { 17, "s59338", "43825", "=q1=Glyph of Rune Tap", "=ds="..AL["Trainer"] };
        { 18, "s57224", "43551", "=q1=Glyph of Scourge Strike", "=ds="..AL["Trainer"] };
        { 19, "s57225", "43552", "=q1=Glyph of Strangulate", "=ds="..AL["Trainer"] };
        { 20, "s57222", "43549", "=q1=Glyph of the Ghoul", "=ds="..AL["Trainer"] };
        { 21, "s57226", "43553", "=q1=Glyph of Unbreakable Armor", "=ds="..AL["Trainer"] };
        { 22, "s57227", "43554", "=q1=Glyph of Vampiric Blood", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_DeathKnightMinor1"] = {
        { 1, "s57209", "43535", "=q1=Glyph of Blood Tap", "=ds="..GetSpellInfo(61288) };
        { 2, "s57229", "43671", "=q1=Glyph of Corpse Explosion", "=ds="..GetSpellInfo(61288) };
        { 3, "s57215", "43539", "=q1=Glyph of Death's Embrace", "=ds="..GetSpellInfo(61288) };
        { 4, "s57217", "43544", "=q1=Glyph of Horn of Winter", "=ds="..GetSpellInfo(61288) };
        { 5, "s57230", "43672", "=q1=Glyph of Pestilence", "=ds="..GetSpellInfo(61288) };
        { 6, "s57228", "43673", "=q1=Glyph of Raise Dead", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_DruidMajor1"] = {
        { 1, "s48121", "40924", "=q1=Glyph of Entangling Roots", "=ds="..AL["Trainer"] };
        { 2, "s56943", "40896", "=q1=Glyph of Frenzied Regeneration", "=ds="..AL["Trainer"] };
        { 3, "s56944", "40899", "=q1=Glyph of Growl", "=ds="..AL["Trainer"] };
        { 4, "s56945", "40914", "=q1=Glyph of Healing Touch", "=ds="..AL["Trainer"] };
        { 5, "s56946", "40920", "=q1=Glyph of Hurricane", "=ds="..AL["Trainer"] };
        { 6, "s56947", "40908", "=q1=Glyph of Innervate", "=ds="..GetSpellInfo(61177)  };
        { 7, "s56948", "40919", "=q1=Glyph of Insect Swarm", "=ds="..AL["Trainer"] };
        { 8, "s56949", "40915", "=q1=Glyph of Lifebloom", "=ds="..AL["Trainer"] };
        { 9, "s56950", "40900", "=q1=Glyph of Mangle", "=ds="..GetSpellInfo(61177)  };
        { 10, "s56961", "40897", "=q1=Glyph of Maul", "=ds="..AL["Trainer"] };
        { 11, "s56951", "40923", "=q1=Glyph of Moonfire", "=ds="..AL["Trainer"] };
        { 12, "s56952", "40903", "=q1=Glyph of Rake", "=ds="..AL["Trainer"] };
        { 13, "s56953", "40909", "=q1=Glyph of Rebirth", "=ds="..AL["Trainer"] };
        { 14, "s56954", "40912", "=q1=Glyph of Regrowth", "=ds="..AL["Trainer"] };
        { 15, "s56955", "40913", "=q1=Glyph of Rejuvenation", "=ds="..AL["Trainer"] };
        { 16, "s56956", "40902", "=q1=Glyph of Rip", "=ds="..AL["Trainer"] };
        { 17, "s56957", "40901", "=q1=Glyph of Shred", "=ds="..AL["Trainer"] };
        { 18, "s56958", "40921", "=q1=Glyph of Starfall", "=ds="..AL["Trainer"] };
        { 19, "s56959", "40916", "=q1=Glyph of Starfire", "=ds="..AL["Trainer"] };
        { 20, "s56960", "40906", "=q1=Glyph of Swiftmend", "=ds="..AL["Trainer"] };
        { 21, "s56963", "40922", "=q1=Glyph of Wrath", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_DruidMinor1"] = {
        { 1, "s58286", "43316", "=q1=Glyph of Aquatic Form", "=ds="..GetSpellInfo(61288) };
        { 2, "s58287", "43334", "=q1=Glyph of Challenging Roar", "=ds="..GetSpellInfo(61288) };
        { 3, "s59315", "43674", "=q1=Glyph of Dash", "=ds="..GetSpellInfo(61288) };
        { 4, "s58296", "43335", "=q1=Glyph of the Wild", "=ds="..GetSpellInfo(61288) };
        { 5, "s58289", "43332", "=q1=Glyph of Thorns", "=ds="..GetSpellInfo(61288) };
        { 6, "s58288", "43331", "=q1=Glyph of Unburdened Rebirth", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_HunterMajor1"] = {
        { 1, "s56994", "42897", "=q1=Glyph of Aimed Shot", "=ds="..AL["Trainer"] };
        { 2, "s56995", "42898", "=q1=Glyph of Arcane Shot", "=ds="..AL["Trainer"] };
        { 3, "s56996", "42899", "=q1=Glyph of Aspect of the Beast", "=ds="..AL["Trainer"] };
        { 4, "s56997", "42900", "=q1=Glyph of Aspect of the Monkey", "=ds="..AL["Trainer"] };
        { 5, "s56998", "42901", "=q1=Glyph of Aspect of the Viper", "=ds="..AL["Trainer"] };
        { 6, "s56999", "42902", "=q1=Glyph of Beastial Wrath", "=ds="..GetSpellInfo(61177)  };
        { 7, "s57000", "42903", "=q1=Glyph of Deterrence", "=ds="..AL["Trainer"] };
        { 8, "s57001", "42904", "=q1=Glyph of Disengage", "=ds="..AL["Trainer"] };
        { 9, "s57002", "42905", "=q1=Glyph of Freezing Trap", "=ds="..AL["Trainer"] };
        { 10, "s57003", "42906", "=q1=Glyph of Frost Trap", "=ds="..AL["Trainer"] };
        { 11, "s57004", "42907", "=q1=Glyph of Hunter's Mark", "=ds="..AL["Trainer"] };
        { 12, "s57005", "42908", "=q1=Glyph of Immolation Trap", "=ds="..AL["Trainer"] };
        { 13, "s57006", "42909", "=q1=Glyph of Improved Aspect of the Hawk", "=ds="..AL["Trainer"] };
        { 14, "s57007", "42910", "=q1=Glyph of Multi-Shot", "=ds="..AL["Trainer"] };
        { 15, "s57008", "42911", "=q1=Glyph of Rapid Fire", "=ds="..AL["Trainer"] };
        { 16, "s57009", "42912", "=q1=Glyph of Serpent Sting", "=ds="..AL["Trainer"] };
        { 17, "s57010", "42913", "=q1=Glyph of Snake Trap", "=ds="..AL["Trainer"] };
        { 18, "s57011", "42914", "=q1=Glyph of Steady Shot", "=ds="..GetSpellInfo(61177)  };
        { 19, "s57012", "42915", "=q1=Glyph of Trueshot Aura", "=ds="..AL["Trainer"] };
        { 20, "s57013", "42916", "=q1=Glyph of Volley", "=ds="..AL["Trainer"] };
        { 21, "s57014", "42917", "=q1=Glyph of Wyvern Sting", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_HunterMinor1"] = {
        { 1, "s58302", "43351", "=q1=Glyph of Feign Death", "=ds="..GetSpellInfo(61288) };
        { 2, "s58301", "43350", "=q1=Glyph of Mend Pet", "=ds="..GetSpellInfo(61288) };
        { 3, "s58300", "43354", "=q1=Glyph of Possessed Strength", "=ds="..GetSpellInfo(61288) };
        { 4, "s58299", "43338", "=q1=Glyph of Revive Pet", "=ds="..GetSpellInfo(61288) };
        { 5, "s58298", "43356", "=q1=Glyph of Scare Beast", "=ds="..GetSpellInfo(61288) };
        { 6, "s58297", "43355", "=q1=Glyph of the Pack", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_MageMajor1"] = {
        { 1, "s56968", "42734", "=q1=Glyph of Arcane Explosion", "=ds="..AL["Trainer"] };
        { 2, "s56971", "42735", "=q1=Glyph of Arcane Missiles", "=ds="..AL["Trainer"] };
        { 3, "s56972", "42736", "=q1=Glyph of Arcane Power", "=ds="..AL["Trainer"] };
        { 4, "s56973", "42737", "=q1=Glyph of Blink", "=ds="..AL["Trainer"] };
        { 5, "s56974", "42738", "=q1=Glyph of Evocation", "=ds="..AL["Trainer"] };
        { 6, "s57719", "42740", "=q1=Glyph of Fire Blast", "=ds="..AL["Trainer"] };
        { 7, "s56975", "42739", "=q1=Glyph of Fireball", "=ds="..GetSpellInfo(61177)  };
        { 8, "s56976", "42741", "=q1=Glyph of Frost Nova", "=ds="..AL["Trainer"] };
        { 9, "s56977", "42742", "=q1=Glyph of Frostbolt", "=ds="..AL["Trainer"] };
        { 10, "s61677", "44684", "=q1=Glyph of Frostfire", "=ds="..GetSpellInfo(61177)  };
        { 11, "s56978", "42743", "=q1=Glyph of Ice Armor", "=ds="..AL["Trainer"] };
        { 12, "s56979", "42744", "=q1=Glyph of Ice Block", "=ds="..AL["Trainer"] };
        { 13, "s56980", "42745", "=q1=Glyph of Ice Lance", "=ds="..AL["Trainer"] };
        { 14, "s56981", "42746", "=q1=Glyph of Icy Veins", "=ds="..AL["Trainer"] };
        { 15, "s56982", "42747", "=q1=Glyph of Improved Scorch", "=ds="..AL["Trainer"] };
        { 16, "s56983", "42748", "=q1=Glyph of Invisibility", "=ds="..AL["Trainer"] };
        { 17, "s56984", "42749", "=q1=Glyph of Mage Armor", "=ds="..AL["Trainer"] };
        { 18, "s56985", "42750", "=q1=Glyph of Mana Gem", "=ds="..AL["Trainer"] };
        { 19, "s56986", "42751", "=q1=Glyph of Molten Armor", "=ds="..GetSpellInfo(61177)  };
        { 20, "s56987", "42752", "=q1=Glyph of Polymorph", "=ds="..AL["Trainer"] };
        { 21, "s56988", "42753", "=q1=Glyph of Remove Curse", "=ds="..AL["Trainer"] };
        { 22, "s56989", "42754", "=q1=Glyph of Water Elemental", "=ds="..GetSpellInfo(61177)  };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_MageMinor1"] = {
        { 1, "s58303", "43339", "=q1=Glyph of Arcane Intellect", "=ds="..GetSpellInfo(61288) };
        { 2, "s58305", "43357", "=q1=Glyph of Fire Ward", "=ds="..GetSpellInfo(61288) };
        { 3, "s58306", "43359", "=q1=Glyph of Frost Armor", "=ds="..GetSpellInfo(61288) };
        { 4, "s58307", "43360", "=q1=Glyph of Frost Ward", "=ds="..GetSpellInfo(61288) };
        { 5, "s58308", "43364", "=q1=Glyph of Slow Fall", "=ds="..GetSpellInfo(61288) };
        { 6, "s58310", "43361", "=q1=Glyph of the Penguin", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_PaladinMajor1"] = {
        { 1, "s57019", "41101", "=q1=Glyph of Avenger's Shield", "=ds="..AL["Trainer"] };
        { 2, "s57021", "41107", "=q1=Glyph of Avenging Wrath", "=ds="..AL["Trainer"] };
        { 3, "s57020", "41104", "=q1=Glyph of Cleansing", "=ds="..AL["Trainer"] };
        { 4, "s57023", "41099", "=q1=Glyph of Consecration", "=ds="..AL["Trainer"] };
        { 5, "s57024", "41098", "=q1=Glyph of Crusader Strike", "=ds="..AL["Trainer"] };
        { 6, "s57031", "41108", "=q1=Glyph of Divinity", "=ds="..AL["Trainer"] };
        { 7, "s57025", "41103", "=q1=Glyph of Exorcism", "=ds="..AL["Trainer"] };
        { 8, "s57026", "41105", "=q1=Glyph of Flash of Light", "=ds="..AL["Trainer"] };
        { 9, "s57027", "41095", "=q1=Glyph of Hammer of Justice", "=ds="..AL["Trainer"] };
        { 10, "s57028", "41097", "=q1=Glyph of Hammer of Wrath", "=ds="..AL["Trainer"] };
        { 11, "s57029", "41106", "=q1=Glyph of Holy Light", "=ds="..AL["Trainer"] };
        { 12, "s57030", "41092", "=q1=Glyph of Judgement", "=ds="..AL["Trainer"] };
        { 13, "s57032", "41100", "=q1=Glyph of Righteous Defense", "=ds="..AL["Trainer"] };
        { 14, "s59559", "43867", "=q1=Glyph of Seal of Blood", "=ds="..GetSpellInfo(61177)  };
        { 15, "s57033", "41094", "=q1=Glyph of Seal of Command", "=ds="..GetSpellInfo(61177)  };
        { 16, "s57034", "41110", "=q1=Glyph of Seal of Light", "=ds="..AL["Trainer"] };
        { 17, "s59560", "43868", "=q1=Glyph of Seal of Righteousness", "=ds="..GetSpellInfo(61177)  };
        { 18, "s59561", "43869", "=q1=Glyph of Seal of Vengeance", "=ds="..GetSpellInfo(61177)  };
        { 19, "s57035", "41109", "=q1=Glyph of Seal of Wisdom", "=ds="..AL["Trainer"] };
        { 20, "s57022", "41096", "=q1=Glyph of Spiritual Attunement", "=ds="..AL["Trainer"] };
        { 21, "s57036", "41102", "=q1=Glyph of Turn Evil", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_PaladinMinor1"] = {
        { 1, "s58311", "43365", "=q1=Glyph of Blessing of Kings", "=ds="..GetSpellInfo(61288) };
        { 2, "s58314", "43340", "=q1=Glyph of Blessing of Might", "=ds="..GetSpellInfo(61288) };
        { 3, "s58312", "43366", "=q1=Glyph of Blessing of Wisdom", "=ds="..GetSpellInfo(61288) };
        { 4, "s58313", "43367", "=q1=Glyph of Lay on Hands", "=ds="..GetSpellInfo(61288) };
        { 5, "s58315", "43368", "=q1=Glyph of Sense Undead", "=ds="..GetSpellInfo(61288) };
        { 6, "s58316", "43369", "=q1=Glyph of the Wise", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_PriestMajor1"] = {
        { 1, "s57181", "42396", "=q1=Glyph of Circle of Healing", "=ds="..AL["Trainer"] };
        { 2, "s57183", "42397", "=q1=Glyph of Dispel Magic", "=ds="..AL["Trainer"] };
        { 3, "s57184", "42398", "=q1=Glyph of Fade", "=ds="..AL["Trainer"] };
        { 4, "s57185", "42399", "=q1=Glyph of Fear Ward", "=ds="..AL["Trainer"] };
        { 5, "s57186", "42400", "=q1=Glyph of Flash Heal", "=ds="..AL["Trainer"] };
        { 6, "s57187", "42401", "=q1=Glyph of Holy Nova", "=ds="..AL["Trainer"] };
        { 7, "s57188", "42402", "=q1=Glyph of Inner Fire", "=ds="..AL["Trainer"] };
        { 8, "s57189", "42403", "=q1=Glyph of Lightwell", "=ds="..AL["Trainer"] };
        { 9, "s57190", "42404", "=q1=Glyph of Mass Dispel", "=ds="..AL["Trainer"] };
        { 10, "s57191", "42405", "=q1=Glyph of Mind Control", "=ds="..AL["Trainer"] };
        { 11, "s57192", "42406", "=q1=Glyph of Mind Flay", "=ds="..AL["Trainer"] };
        { 12, "s57194", "42408", "=q1=Glyph of Power Word: Shield", "=ds="..AL["Trainer"] };
        { 13, "s57195", "42409", "=q1=Glyph of Prayer of Healing", "=ds="..GetSpellInfo(61177)  };
        { 14, "s57196", "42410", "=q1=Glyph of Psychic Scream", "=ds="..AL["Trainer"] };
        { 15, "s57197", "42411", "=q1=Glyph of Renew", "=ds="..AL["Trainer"] };
        { 16, "s57198", "42412", "=q1=Glyph of Scourge Imprisonment", "=ds="..AL["Trainer"] };
        { 17, "s57193", "42407", "=q1=Glyph of Shadow", "=ds="..GetSpellInfo(61177)  };
        { 18, "s57199", "42414", "=q1=Glyph of Shadow Word: Death", "=ds="..GetSpellInfo(61177)  };
        { 19, "s57200", "42415", "=q1=Glyph of Shadow Word: Pain", "=ds="..AL["Trainer"] };
        { 20, "s57201", "42416", "=q1=Glyph of Smite", "=ds="..AL["Trainer"] };
        { 21, "s57202", "42417", "=q1=Glyph of Spirit of Redemption", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_PriestMinor1"] = {
        { 1, "s58317", "43342", "=q1=Glyph of Fading", "=ds="..GetSpellInfo(61288) };
        { 2, "s58318", "43371", "=q1=Glyph of Fortitude", "=ds="..GetSpellInfo(61288) };
        { 3, "s58319", "43370", "=q1=Glyph of Levitate", "=ds="..GetSpellInfo(61288) };
        { 4, "s58320", "43373", "=q1=Glyph of Shackle Undead", "=ds="..GetSpellInfo(61288) };
        { 5, "s58321", "43372", "=q1=Glyph of Shadow Protection", "=ds="..GetSpellInfo(61288) };
        { 6, "s58322", "43374", "=q1=Glyph of Shadowfiend", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_RogueMajor1"] = {
        { 1, "s57112", "42954", "=q1=Glyph of Adrenaline Rush", "=ds="..GetSpellInfo(61177)  };
        { 2, "s57113", "42955", "=q1=Glyph of Ambush", "=ds="..AL["Trainer"] };
        { 3, "s57114", "42956", "=q1=Glyph of Backstab", "=ds="..AL["Trainer"] };
        { 4, "s57115", "42957", "=q1=Glyph of Blade Flurry", "=ds="..AL["Trainer"] };
        { 5, "s57116", "42958", "=q1=Glyph of Crippling Poison", "=ds="..AL["Trainer"] };
        { 6, "s57117", "42959", "=q1=Glyph of Deadly Throw", "=ds="..AL["Trainer"] };
        { 7, "s57119", "42960", "=q1=Glyph of Evasion", "=ds="..AL["Trainer"] };
        { 8, "s57120", "42961", "=q1=Glyph of Eviscerate", "=ds="..AL["Trainer"] };
        { 9, "s57121", "42962", "=q1=Glyph of Expose Armor", "=ds="..AL["Trainer"] };
        { 10, "s57122", "42963", "=q1=Glyph of Feint", "=ds="..AL["Trainer"] };
        { 11, "s57123", "42964", "=q1=Glyph of Garrote", "=ds="..AL["Trainer"] };
        { 12, "s57124", "42965", "=q1=Glyph of Ghostly Strike", "=ds="..GetSpellInfo(61177)  };
        { 13, "s57125", "42966", "=q1=Glyph of Gouge", "=ds="..AL["Trainer"] };
        { 14, "s57126", "42967", "=q1=Glyph of Hemorrhage", "=ds="..GetSpellInfo(61177)  };
        { 15, "s57127", "42968", "=q1=Glyph of Preparation", "=ds="..GetSpellInfo(61177)  };
        { 16, "s57128", "42969", "=q1=Glyph of Rupture", "=ds="..AL["Trainer"] };
        { 17, "s57129", "42970", "=q1=Glyph of Sap", "=ds="..AL["Trainer"] };
        { 18, "s57130", "42971", "=q1=Glyph of Shiv", "=ds="..AL["Trainer"] };
        { 19, "s57131", "42972", "=q1=Glyph of Sinister Strike", "=ds="..AL["Trainer"] };
        { 20, "s57132", "42973", "=q1=Glyph of Slice and Dice", "=ds="..AL["Trainer"] };
        { 21, "s57133", "42974", "=q1=Glyph of Sprint", "=ds="..AL["Trainer"] };
        { 22, "s57130", "42971", "=q1=Glyph of Vigor", "=ds="..GetSpellInfo(61177)  };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_RogueMinor1"] = {
        { 1, "s58323", "43379", "=q1=Glyph of Blurred Speed", "=ds="..GetSpellInfo(61288) };
        { 2, "s58324", "43376", "=q1=Glyph of Distract", "=ds="..GetSpellInfo(61288) };
        { 3, "s58325", "43377", "=q1=Glyph of Pick Lock", "=ds="..GetSpellInfo(61288) };
        { 4, "s58326", "43343", "=q1=Glyph of Pick Pocket", "=ds="..GetSpellInfo(61288) };
        { 5, "s58327", "43378", "=q1=Glyph of Safe Fall", "=ds="..GetSpellInfo(61288) };
        { 6, "s58328", "43380", "=q1=Glyph of Vanish", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_ShamanMajor1"] = {
        { 1, "s57232", "41517", "=q1=Glyph of Chain Heal", "=ds="..GetSpellInfo(61177) };
        { 2, "s57233", "41518", "=q1=Glyph of Chain Lightning", "=ds="..AL["Trainer"] };
        { 3, "s57234", "41524", "=q1=Glyph of Earth Elemental Totem", "=ds="..AL["Trainer"] };
        { 4, "s57235", "41526", "=q1=Glyph of Earth Shock", "=ds="..AL["Trainer"] };
        { 5, "s57236", "41527", "=q1=Glyph of Earthliving Weapon", "=ds="..AL["Trainer"] };
        { 6, "s57237", "41529", "=q1=Glyph of Fire Elemental Totem", "=ds="..AL["Trainer"] };
        { 7, "s57238", "41530", "=q1=Glyph of Fire Nova Totem", "=ds="..AL["Trainer"] };
        { 8, "s57239", "41531", "=q1=Glyph of Flame Shock", "=ds="..AL["Trainer"] };
        { 9, "s57240", "41532", "=q1=Glyph of Flametongue Weapon", "=ds="..AL["Trainer"] };
        { 10, "s57241", "41547", "=q1=Glyph of Frost Shock", "=ds="..AL["Trainer"] };
        { 11, "s57242", "41533", "=q1=Glyph of Healing Stream Totem", "=ds="..AL["Trainer"] };
        { 12, "s57243", "41534", "=q1=Glyph of Healing Wave", "=ds="..GetSpellInfo(61177) };
        { 13, "s57249", "41540", "=q1=Glyph of Lava Lash", "=ds="..AL["Trainer"] };
        { 14, "s57244", "41535", "=q1=Glyph of Lesser Healing Wave", "=ds="..AL["Trainer"] };
        { 15, "s57245", "41536", "=q1=Glyph of Lightning Bolt", "=ds="..AL["Trainer"] };
        { 16, "s57246", "41537", "=q1=Glyph of Lightning Shield", "=ds="..AL["Trainer"] };
        { 17, "s57247", "41538", "=q1=Glyph of Mana Tide Totem", "=ds="..AL["Trainer"] };
        { 18, "s57248", "41539", "=q1=Glyph of Stormstrike", "=ds="..AL["Trainer"] };
        { 19, "s57250", "41552", "=q1=Glyph of Totem of Wrath", "=ds="..AL["Trainer"] };
        { 20, "s57251", "41541", "=q1=Glyph of Water Mastery", "=ds="..AL["Trainer"] };
        { 21, "s57252", "41542", "=q1=Glyph of Windfury Weapon", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_ShamanMinor1"] = {
        { 1, "s58329", "43381", "=q1=Glyph of Astral Recall", "=ds="..GetSpellInfo(61288) };
        { 2, "s59326", "43725", "=q1=Glyph of Ghost Wolf", "=ds="..GetSpellInfo(61288) };
        { 3, "s58330", "43385", "=q1=Glyph of Renewed Life", "=ds="..GetSpellInfo(61288) };
        { 4, "s58331", "43344", "=q1=Glyph of Water Breathing", "=ds="..GetSpellInfo(61288) };
        { 5, "s58332", "43386", "=q1=Glyph of Water Shield", "=ds="..GetSpellInfo(61288) };
        { 6, "s58333", "43388", "=q1=Glyph of Water Walking", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_WarlockMajor1"] = {
        { 1, "s57257", "42453", "=q1=Glyph of Banish", "=ds="..AL["Trainer"] };
        { 2, "s57258", "42454", "=q1=Glyph of Conflagrate", "=ds="..AL["Trainer"] };
        { 3, "s57259", "42455", "=q1=Glyph of Corruption", "=ds="..AL["Trainer"] };
        { 4, "s57260", "42456", "=q1=Glyph of Curse of Agony", "=ds="..AL["Trainer"] };
        { 5, "s57261", "42457", "=q1=Glyph of Death Coil", "=ds="..AL["Trainer"] };
        { 6, "s57262", "42458", "=q1=Glyph of Fear", "=ds="..AL["Trainer"] };
        { 7, "s57263", "42459", "=q1=Glyph of Felguard", "=ds="..AL["Trainer"] };
        { 8, "s57264", "42460", "=q1=Glyph of Felhunter", "=ds="..GetSpellInfo(61177) };
        { 9, "s57265", "42461", "=q1=Glyph of Health Funnel", "=ds="..AL["Trainer"] };
        { 10, "s57266", "42462", "=q1=Glyph of Healthstone", "=ds="..AL["Trainer"] };
        { 11, "s57267", "42463", "=q1=Glyph of Howl of Terror", "=ds="..GetSpellInfo(61177) };
        { 12, "s57268", "42464", "=q1=Glyph of Immolate", "=ds="..AL["Trainer"] };
        { 13, "s57269", "42465", "=q1=Glyph of Imp", "=ds="..AL["Trainer"] };
        { 14, "s57270", "42466", "=q1=Glyph of Searing Pain", "=ds="..AL["Trainer"] };
        { 15, "s57271", "42467", "=q1=Glyph of Shadowbolt", "=ds="..AL["Trainer"] };
        { 16, "s57272", "42468", "=q1=Glyph of Shadowburn", "=ds="..AL["Trainer"] };
        { 17, "s57273", "42469", "=q1=Glyph of Siphon Life", "=ds="..GetSpellInfo(61177) };
        { 18, "s57274", "42470", "=q1=Glyph of Soulstone", "=ds="..AL["Trainer"] };
        { 19, "s57275", "42471", "=q1=Glyph of Succubus", "=ds="..AL["Trainer"] };
        { 20, "s57276", "42472", "=q1=Glyph of Unstable Affliction", "=ds="..GetSpellInfo(61177) };
        { 21, "s57277", "42473", "=q1=Glyph of Voidwalker", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_WarlockMinor1"] = {
        { 1, "s58338", "43392", "=q1=Glyph of Curse of Exhaustion", "=ds="..GetSpellInfo(61288) };
        { 2, "s58337", "43390", "=q1=Glyph of Drain Soul", "=ds="..GetSpellInfo(61288) };
        { 3, "s58339", "43393", "=q1=Glyph of Enslave Demon", "=ds="..GetSpellInfo(61288) };
        { 4, "s58340", "43391", "=q1=Glyph of Kilrogg", "=ds="..GetSpellInfo(61288) };
        { 5, "s58341", "43394", "=q1=Glyph of Souls", "=ds="..GetSpellInfo(61288) };
        { 6, "s58336", "43389", "=q1=Glyph of Unending Breath", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_WarriorMajor1"] = {
        { 1, "s57151", "43420", "=q1=Glyph of Barbaric Insults", "=ds="..AL["Trainer"] };
        { 2, "s57152", "43425", "=q1=Glyph of Blocking", "=ds="..AL["Trainer"] };
        { 3, "s57153", "43412", "=q1=Glyph of Bloodthirst", "=ds="..AL["Trainer"] };
        { 4, "s57154", "43414", "=q1=Glyph of Cleaving", "=ds="..AL["Trainer"] };
        { 5, "s57155", "43415", "=q1=Glyph of Devastate", "=ds="..AL["Trainer"] };
        { 6, "s57156", "43416", "=q1=Glyph of Execution", "=ds="..AL["Trainer"] };
        { 7, "s57157", "43417", "=q1=Glyph of Hamstring", "=ds="..AL["Trainer"] };
        { 8, "s57158", "43418", "=q1=Glyph of Heroic Strike", "=ds="..AL["Trainer"] };
        { 9, "s57159", "43419", "=q1=Glyph of Intervene", "=ds="..AL["Trainer"] };
        { 10, "s57166", "43426", "=q1=Glyph of Last Stand", "=ds="..GetSpellInfo(61177) };
        { 11, "s57160", "43421", "=q1=Glyph of Mortal Strike", "=ds="..AL["Trainer"] };
        { 12, "s57161", "43422", "=q1=Glyph of Overpower", "=ds="..AL["Trainer"] };
        { 13, "s57162", "43413", "=q1=Glyph of Rapid Charge", "=ds="..AL["Trainer"] };
        { 14, "s57163", "43423", "=q1=Glyph of Rending", "=ds="..AL["Trainer"] };
        { 15, "s57164", "43430", "=q1=Glyph of Resonating Power", "=ds="..AL["Trainer"] };
        { 16, "s57165", "43424", "=q1=Glyph of Revenge", "=ds="..AL["Trainer"] };
        { 17, "s57167", "43427", "=q1=Glyph of Sunder Armor", "=ds="..AL["Trainer"] };
        { 18, "s57168", "43428", "=q1=Glyph of Sweeping Strikes", "=ds="..AL["Trainer"] };
        { 19, "s57169", "43429", "=q1=Glyph of Taunt", "=ds="..GetSpellInfo(61177) };
        { 20, "s57170", "43431", "=q1=Glyph of Victory Rush", "=ds="..AL["Trainer"] };
        { 21, "s57172", "43432", "=q1=Glyph of Whirlwind", "=ds="..AL["Trainer"] };
        Back = "INSCRIPTIONMENU";
    };
    
    AtlasLoot_Data["Inscription_WarriorMinor1"] = {
        { 1, "s58342", "43395", "=q1=Glyph of Battle", "=ds="..GetSpellInfo(61288) };
        { 2, "s58343", "43396", "=q1=Glyph of Bloodrage", "=ds="..GetSpellInfo(61288) };
        { 3, "s58344", "43397", "=q1=Glyph of Charge", "=ds="..GetSpellInfo(61288) };
        { 4, "s58347", "43400", "=q1=Glyph of Enduring Victory", "=ds="..GetSpellInfo(61288) };
        { 5, "s58345", "43398", "=q1=Glyph of Mocking Blow", "=ds="..GetSpellInfo(61288) };
        { 6, "s58346", "43399", "=q1=Glyph of Thunder Clap", "=ds="..GetSpellInfo(61288) };
        Back = "INSCRIPTIONMENU";
    };
		---------------------
		--- Jewelcrafting ---
		---------------------

	AtlasLoot_Data["JewelApprentice1"] = {
		{ 1, "s25255", "20816", "=q1=Delicate Copper Wire", "=ds=#sr# 1"};
		{ 2, "s32259", "25498", "=q1=Rough Stone Statue", "=ds=#sr# 1"};
		{ 3, "s25493", "20906", "=q2=Braided Copper Ring", "=ds=#sr# 1"};
		{ 4, "s26925", "21931", "=q2=Woven Copper Ring", "=ds=#sr# 1"};
		{ 5, "s26926", "21932", "=q2=Heavy Copper Ring", "=ds=#sr# 5"};
		{ 6, "s32178", "25438", "=q2=Malachite Pendant", "=ds=#sr# 20"};
		{ 7, "s32179", "25439", "=q2=Tigerseye Band", "=ds=#sr# 20"};
		{ 8, "s25283", "20821", "=q2=Inlaid Malachite Ring", "=ds=#sr# 30"};
		{ 9, "s26928", "21934", "=q2=Ornate Tigerseye Necklace", "=ds=#sr# 30"};
		Next = "JewelJourneyman1";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelJourneyman1"] = {
		{ 1, "s25278", "20817", "=q1=Bronze Setting", "=ds=#sr# 50"};
		{ 2, "s32801", "25880", "=q1=Coarse Stone Statue", "=ds=#sr# 50"};
		{ 3, "s25280", "20818", "=q2=Elegant Silver Ring", "=ds=#sr# 50"};
		{ 4, "s25490", "20907", "=q2=Solid Bronze Ring", "=ds=#sr# 50"};
		{ 5, "s26927", "21933", "=q2=Thick Bronze Necklace", "=ds=#sr# 50"};
		{ 6, "s25284", "20820", "=q2=Simple Pearl Ring", "=ds=#sr# 60"};
		{ 7, "s37818", "30804", "=q3=Bronze Band of Force", "=ds=#sr# 65"};
		{ 8, "s25287", "20823", "=q2=Gloom Band", "=ds=#sr# 70"};
		{ 9, "s36523", "30419", "=q2=Brilliant Necklace", "=ds=#sr# 75"};
		{ 10, "s38175", "31154", "=q2=Bronze Torc", "=ds=#sr# 80"};
		{ 11, "s25317", "20827", "=q2=Ring of Silver Might", "=ds=#sr# 80"};
		{ 12, "s25305", "20826", "=q3=Heavy Silver Ring", "=ds=#sr# 90"};
		{ 13, "s25318", "20828", "=q2=Ring of Twilight Shadows", "=ds=#sr# 100"};
		{ 14, "s36524", "30420", "=q2=Heavy Jade Ring", "=ds=#sr# 105"};
		{ 15, "s32807", "25881", "=q1=Heavy Stone Statue", "=ds=#sr# 110"};
		{ 16, "s25339", "20830", "=q2=Amulet of the Moon", "=ds=#sr# 110"};
		{ 17, "s25498", "20909", "=q2=Barbaric Iron Collar", "=ds=#sr# 110"};
		{ 18, "s25321", "20832", "=q3=Moonsoul Crown", "=ds=#sr# 120"};
		{ 19, "s25610", "20950", "=q2=Pendant of the Agate Shield", "=ds=#sr# 120"};
		Next = "JewelExpert1";
		Prev = "JewelApprentice1";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelExpert1"] = {
		{ 1, "s25612", "20954", "=q2=Heavy Iron Knuckles", "=ds=#sr# 125"};
		{ 2, "s25323", "20833", "=q2=Wicked Moonstone Ring", "=ds=#sr# 125"};
		{ 3, "s25613", "20955", "=q2=Golden Dragon Ring", "=ds=#sr# 135"};
		{ 4, "s25615", "20963", "=q1=Mithril Filigree", "=ds=#sr# 150"};
		{ 5, "s25617", "20958", "=q2=Blazing Citrine Ring", "=ds=#sr# 150"};
		{ 6, "s25320", "20831", "=q2=Heavy Golden Necklace of Battle", "=ds=#sr# 150"};
		{ 7, "s25618", "20966", "=q2=Jade Pendant of Blasting", "=ds=#sr# 160"};
		{ 8, "s25620", "20960", "=q2=Engraved Truesilver Ring", "=ds=#sr# 170"};
		{ 9, "s25619", "20959", "=q2=The Jade Eye", "=ds=#sr# 170"};
		{ 10, "s32808", "25882", "=q1=Solid Stone Statue", "=ds=#sr# 175"};
		{ 11, "s34955", "29157", "=q3=Golden Ring of Power", "=ds=#sr# 180"};
		{ 12, "s25621", "20961", "=q2=Citrine Ring of Rapid Healing", "=ds=#sr# 180"};
		{ 13, "s25622", "20967", "=q2=Citrine Pendant of Golden Healing", "=ds=#sr# 190"};
		Next = "JewelArtisan1";
		Prev = "JewelJourneyman1";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelArtisan1"] = {
		{ 1, "s34959", "29158", "=q3=Truesilver Commander's Ring", "=ds=#sr# 200"};
		{ 2, "s26873", "21756", "=q2=Figurine - Golden Hare", "=ds=#sr# 200"};
		{ 3, "s26872", "21748", "=q2=Figurine - Jade Owl", "=ds=#sr# 200"};
		{ 4, "s26874", "20964", "=q3=Aquamarine Signet", "=ds=#sr# 210"};
		{ 5, "s26875", "21758", "=q2=Figurine - Black Pearl Panther", "=ds=#sr# 215"};
		{ 6, "s26876", "21755", "=q2=Aquamarine Pendant of the Warrior", "=ds=#sr# 220"};
		{ 7, "s32809", "25883", "=q1=Dense Stone Statue", "=ds=#sr# 225"};
		{ 8, "s26880", "21752", "=q1=Thorium Setting", "=ds=#sr# 225"};
		{ 9, "s26878", "20969", "=q3=Ruby Crown of Restoration", "=ds=#sr# 225"};
		{ 10, "s26881", "21760", "=q2=Figurine - Truesilver Crab", "=ds=#sr# 225"};
		{ 11, "s36525", "30421", "=q2=Red Ring of Destruction", "=ds=#sr# 230"};
		{ 12, "s26882", "21763", "=q2=Figurine - Truesilver Boar", "=ds=#sr# 235"};
		{ 13, "s26883", "21764", "=q2=Ruby Pendant of Fire", "=ds=#sr# 235"};
		{ 14, "s26885", "21765", "=q2=Truesilver Healing Ring", "=ds=#sr# 240"};
		{ 15, "s26887", "21754", "=q2=The Aquamarine Ward", "=ds=#sr# 245"};
		{ 16, "s26896", "21753", "=q3=Gem Studded Band", "=ds=#sr# 250"};
		{ 17, "s26897", "21766", "=q3=Opal Necklace of Impact", "=ds=#sr# 250"};
		{ 18, "s26900", "21769", "=q2=Figurine - Ruby Serpent", "=ds=#sr# 260"};
		{ 19, "s26902", "21767", "=q2=Simple Opal Ring", "=ds=#sr# 260"};
		{ 20, "s36526", "30422", "=q2=Diamond Focus Ring", "=ds=#sr# 265"};
		Next = "JewelMaster1";
		Prev = "JewelExpert1";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelMaster1"] = {
		{ 1, "s26906", "21774", "=q3=Emerald Crown of Destruction", "=ds=#sr# 275"};
		{ 2, "s26903", "21768", "=q3=Sapphire Signet", "=ds=#sr# 275"};
		{ 3, "s34960", "29159", "=q2=Glowing Thorium Band", "=ds=#sr# 280"};
		{ 4, "s26907", "21775", "=q2=Onslaught Ring", "=ds=#sr# 280"};
		{ 5, "s26908", "21790", "=q2=Sapphire Pendant of Winter Night", "=ds=#sr# 280"};
		{ 6, "s26909", "21777", "=q2=Figurine - Emerald Owl", "=ds=#sr# 285"};
		{ 7, "s26910", "21778", "=q2=Ring of Bitter Shadows", "=ds=#sr# 285"};
		{ 8, "s26911", "21791", "=q3=Living Emerald Pendant", "=ds=#sr# 290"};
		{ 9, "s34961", "29160", "=q2=Emerald Lion Ring", "=ds=#sr# 290"};
		{ 10, "s28938", "23113", "=q2=Brilliant Golden Draenite", "=ds=#sr# 300"};
		{ 11, "s28925", "23108", "=q2=Glowing Shadow Draenite", "=ds=#sr# 300"};
		{ 12, "s28910", "23098", "=q2=Inscribed Flame Spessarite", "=ds=#sr# 300"};
		{ 13, "s28916", "23103", "=q2=Radiant Deep Peridot", "=ds=#sr# 300"};
		{ 14, "s28950", "23118", "=q2=Solid Azure Moonstone", "=ds=#sr# 300"};
		{ 15, "s28903", "23094", "=q2=Teardrop Blood Garnet", "=ds=#sr# 300"};
		{ 16, "s26912", "21784", "=q3=Figurine - Black Diamond Crab", "=ds=#sr# 300"};
		{ 17, "s26914", "21789", "=q3=Figurine - Dark Iron Scorpid", "=ds=#sr# 300"};
		{ 18, "s28905", "23095", "=q2=Bold Blood Garnet", "=ds=#sr# 305"};
		{ 19, "s34590", "28595", "=q2=Bright Blood Garnet", "=ds=#sr# 305"};
		{ 20, "s28944", "23114", "=q2=Gleaming Golden Draenite", "=ds=#sr# 305"};
		{ 21, "s28917", "23104", "=q2=Jagged Deep Peridot", "=ds=#sr# 305"};
		{ 22, "s28912", "23099", "=q2=Luminous Flame Spessarite", "=ds=#sr# 305"};
		{ 23, "s28927", "23109", "=q2=Royal Shadow Draenite", "=ds=#sr# 305"};
		{ 24, "s28953", "23119", "=q2=Sparkling Azure Moonstone", "=ds=#sr# 305"};
		{ 25, "s26915", "21792", "=q3=Necklace of the Diamond Tower", "=ds=#sr# 305"};
		{ 26, "s26916", "21779", "=q3=Band of Natural Fire", "=ds=#sr# 310"};
		{ 27, "s31048", "24074", "=q2=Fel Iron Blood Ring", "=ds=#sr# 310"};
		{ 28, "s31049", "24075", "=q2=Golden Draenite Ring", "=ds=#sr# 310"};
		{ 29, "s28918", "23105", "=q2=Enduring Deep Peridot", "=ds=#sr# 315"};
		{ 30, "s28914", "23100", "=q2=Glinting Flame Spessarite", "=ds=#sr# 315"};
		Next = "JewelMaster2";
		Prev = "JewelArtisan1";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelMaster2"] = {
		{ 1, "s28906", "23096", "=q2=Runed Blood Garnet", "=ds=#sr# 315"};
		{ 2, "s28933", "23110", "=q2=Shifting Shadow Draenite", "=ds=#sr# 315"};
		{ 3, "s28955", "23120", "=q2=Stormy Azure Moonstone", "=ds=#sr# 315"};
		{ 4, "s28947", "23115", "=q2=Thick Golden Draenite", "=ds=#sr# 315"};
		{ 5, "s31050", "24076", "=q2=Azure Moonstone Ring", "=ds=#sr# 320"};
		{ 6, "s41420", "32833", "=q2=Purified Jaggal Pearl", "=ds=#sr# 325"};
		{ 7, "s38068", "31079", "=q3=Mercurial Adamantite", "=ds=#sr# 325"};
		{ 8, "s39455", "31862", "=q2=Balanced Shadow Draenite", "=ds=#sr# 325"};
		{ 9, "s28924", "23106", "=q2=Dazzling Deep Peridot", "=ds=#sr# 325"};
		{ 10, "s28907", "23097", "=q2=Delicate Blood Garnet", "=ds=#sr# 325"};
		{ 11, "s39451", "31860", "=q2=Great Golden Draenite", "=ds=#sr# 325"};
		{ 12, "s39458", "31864", "=q2=Infused Shadow Draenite", "=ds=#sr# 325"};
		{ 13, "s28957", "23121", "=q2=Lustrous Azure Moonstone", "=ds=#sr# 325"};
		{ 14, "s28915", "23101", "=q2=Potent Flame Spessarite", "=ds=#sr# 325"};
		{ 15, "s28948", "23116", "=q2=Rigid Golden Draenite", "=ds=#sr# 325"};
		{ 16, "s34069", "28290", "=q2=Smooth Golden Draenite", "=ds=#sr# 325"};
		{ 17, "s28936", "23111", "=q2=Sovereign Shadow Draenite", "=ds=#sr# 325"};
		{ 18, "s39466", "31866", "=q2=Veiled Flame Spessarite", "=ds=#sr# 325"};
		{ 19, "s39467", "31869", "=q2=Wicked Flame Spessarite", "=ds=#sr# 325"};
		{ 20, "s41414", "32772", "=q3=Brilliant Pearl Band", "=ds=#sr# 325"};
		{ 21, "s41415", "32774", "=q3=The Black Pearl", "=ds=#sr# 330"};
		{ 22, "s31052", "24078", "=q2=Heavy Adamantite Ring", "=ds=#sr# 335"};
		{ 23, "s31051", "24077", "=q2=Thick Adamantite Necklace", "=ds=#sr# 335"};
		{ 24, "s40514", "32508", "=q3=Necklace of the Deep", "=ds=#sr# 340"};
		{ 25, "s31058", "24087", "=q3=Heavy Felsteel Ring", "=ds=#sr# 345"};
		{ 26, "s39463", "31863", "=q3=Balanced Nightseye", "=ds=#sr# 350"};
		{ 27, "s31084", "24027", "=q3=Bold Living Ruby", "=ds=#sr# 350"};
		{ 28, "s31089", "24031", "=q3=Bright Living Ruby", "=ds=#sr# 350"};
		{ 29, "s31096", "24047", "=q3=Brilliant Dawnstone", "=ds=#sr# 350"};
		{ 30, "s47280", "35945", "=q3=Brilliant Glass", "=ds=#sr# 350"};
		Next = "JewelMaster3";
		Prev = "JewelMaster1";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelMaster3"] = {
		{ 1, "s31112", "24065", "=q3=Dazzling Talasite", "=ds=#sr# 350"};
		{ 2, "s31085", "24028", "=q3=Delicate Living Ruby", "=ds=#sr# 350"};
		{ 3, "s31110", "24062", "=q3=Enduring Talasite", "=ds=#sr# 350"};
		{ 4, "s31091", "24036", "=q3=Flashing Living Ruby", "=ds=#sr# 350"};
		{ 5, "s31099", "24050", "=q3=Gleaming Dawnstone", "=ds=#sr# 350"};
		{ 6, "s31109", "24061", "=q3=Glinting Noble Topaz", "=ds=#sr# 350"};
		{ 7, "s31104", "24056", "=q3=Glowing Nightseye", "=ds=#sr# 350"};
		{ 8, "s39452", "31861", "=q3=Great Dawnstone", "=ds=#sr# 350"};
		{ 9, "s39462", "31865", "=q3=Infused Nightseye", "=ds=#sr# 350"};
		{ 10, "s31106", "24058", "=q3=Inscribed Noble Topaz", "=ds=#sr# 350"};
		{ 11, "s31113", "24067", "=q3=Jagged Talasite", "=ds=#sr# 350"};
		{ 12, "s31108", "24060", "=q3=Luminous Noble Topaz", "=ds=#sr# 350"};
		{ 13, "s31094", "24037", "=q3=Lustrous Star of Elune", "=ds=#sr# 350"};
		{ 14, "s31101", "24053", "=q3=Mystic Dawnstone", "=ds=#sr# 350"};
		{ 15, "s31107", "24059", "=q3=Potent Noble Topaz", "=ds=#sr# 350"};
		{ 16, "s41429", "32836", "=q3=Purified Shadow Pearl", "=ds=#sr# 350"};
		{ 17, "s31111", "24066", "=q3=Radiant Talasite", "=ds=#sr# 350"};
		{ 18, "s46803", "35707", "=q3=Regal Nightseye", "=ds=#sr# 350"};
		{ 19, "s31098", "24051", "=q3=Rigid Dawnstone", "=ds=#sr# 350"};
		{ 20, "s31105", "24057", "=q3=Royal Nightseye", "=ds=#sr# 350"};
		{ 21, "s31088", "24030", "=q3=Runed Living Ruby", "=ds=#sr# 350"};
		{ 22, "s31103", "24055", "=q3=Shifting Nightseye", "=ds=#sr# 350"};
		{ 23, "s31097", "24048", "=q3=Smooth Dawnstone", "=ds=#sr# 350"};
		{ 24, "s31092", "24033", "=q3=Solid Star of Elune", "=ds=#sr# 350"};
		{ 25, "s31102", "24054", "=q3=Sovereign Nightseye", "=ds=#sr# 350"};
		{ 26, "s31149", "24035", "=q3=Sparkling Star of Elune", "=ds=#sr# 350"};
		{ 27, "s43493", "33782", "=q3=Steady Talasite", "=ds=#sr# 350"};
		{ 28, "s31095", "24039", "=q3=Stormy Star of Elune", "=ds=#sr# 350"};
		{ 29, "s31090", "24032", "=q3=Subtle Living Ruby", "=ds=#sr# 350"};
		{ 30, "s31087", "24029", "=q3=Teardrop Living Ruby", "=ds=#sr# 350"};
		Next = "JewelMaster4";
		Prev = "JewelMaster2";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelMaster4"] = {
		{ 1, "s31100", "24052", "=q3=Thick Dawnstone", "=ds=#sr# 350"};
		{ 2, "s39470", "31867", "=q3=Veiled Noble Topaz", "=ds=#sr# 350"};
		{ 3, "s39471", "31868", "=q3=Wicked Noble Topaz", "=ds=#sr# 350"};
		{ 4, "s31053", "24079", "=q3=Khorium Band of Shadows", "=ds=#sr# 350"};
		{ 5, "s31060", "24088", "=q3=Delicate Eternium Ring", "=ds=#sr# 355"};
		{ 6, "s31054", "24080", "=q3=Khorium Band of Frost", "=ds=#sr# 355"};
		{ 7, "s31055", "24082", "=q3=Khorium Inferno Band", "=ds=#sr# 355"};
		{ 8, "s31068", "24110", "=q3=Living Ruby Pendant", "=ds=#sr# 355"};
		{ 9, "s31067", "24106", "=q3=Thick Felsteel Necklace", "=ds=#sr# 355"};
		{ 10, "s42592", "33140", "=q4=Blood of Amber", "=ds=#sr# 360"};
		{ 11, "s42589", "33131", "=q4=Crimson Sun", "=ds=#sr# 360"};
		{ 12, "s42558", "33133", "=q4=Don Julio's Heart", "=ds=#sr# 360"};
		{ 13, "s42593", "33144", "=q4=Facet of Eternity", "=ds=#sr# 360"};
		{ 14, "s42590", "33135", "=q4=Falling Star", "=ds=#sr# 360"};
		{ 15, "s42588", "33134", "=q4=Kailee's Rose", "=ds=#sr# 360"};
		{ 16, "s42591", "33143", "=q4=Stone of Blades", "=ds=#sr# 360"};
		{ 17, "s31070", "24114", "=q3=Braided Eternium Chain", "=ds=#sr# 360"};
		{ 18, "s31071", "24116", "=q3=Eye of the Night", "=ds=#sr# 360"};
		{ 19, "s31056", "24085", "=q3=Khorium Band of Leaves", "=ds=#sr# 360"};
		{ 20, "s31062", "24092", "=q3=Pendant of Frozen Flame", "=ds=#sr# 360"};
		{ 21, "s31065", "24097", "=q3=Pendant of Shadow's End", "=ds=#sr# 360"};
		{ 22, "s31063", "24093", "=q3=Pendant of Thawing", "=ds=#sr# 360"};
		{ 23, "s31066", "24098", "=q3=Pendant of the Null Rune", "=ds=#sr# 360"};
		{ 24, "s31064", "24095", "=q3=Pendant of Withering", "=ds=#sr# 360"};
		{ 25, "s37855", "30825", "=q3=Ring of Arcane Shielding", "=ds=#sr# 360"};
		{ 26, "s31057", "24086", "=q3=Arcane Khorium Band", "=ds=#sr# 365"};
		{ 27, "s31061", "24089", "=q3=Blazing Eternium Band", "=ds=#sr# 365"};
		{ 28, "s32867", "25897", "=q3=Bracing Earthstorm Diamond", "=ds=#sr# 365"};
		{ 29, "s32869", "25899", "=q3=Brutal Earthstorm Diamond", "=ds=#sr# 365"};
		{ 30, "s31076", "24121", "=q3=Chain of the Twilight Owl", "=ds=#sr# 365"};
		Next = "JewelMaster5";
		Prev = "JewelMaster3";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelMaster5"] = {
		{ 1, "s44794", "34220", "=q3=Chaotic Skyfire Diamond", "=ds=#sr# 365"};
		{ 2, "s41418", "32776", "=q3=Crown of the Sea Witch", "=ds=#sr# 365"};
		{ 3, "s32871", "25890", "=q3=Destructive Skyfire Diamond", "=ds=#sr# 365"};
		{ 4, "s31072", "24117", "=q3=Embrace of the Dawn", "=ds=#sr# 365"};
		{ 5, "s32874", "25895", "=q3=Enigmatic Skyfire Diamond", "=ds=#sr# 365"};
		{ 6, "s32870", "25901", "=q3=Insightful Earthstorm Diamond", "=ds=#sr# 365"};
		{ 7, "s32872", "25893", "=q3=Mystical Skyfire Diamond", "=ds=#sr# 365"};
		{ 8, "s32866", "25896", "=q3=Powerful Earthstorm Diamond", "=ds=#sr# 365"};
		{ 9, "s39961", "32409", "=q3=Relentless Earthstorm Diamond", "=ds=#sr# 365"};
		{ 10, "s32873", "25894", "=q3=Swift Skyfire Diamond", "=ds=#sr# 365"};
		{ 11, "s32868", "25898", "=q3=Tenacious Earthstorm Diamond", "=ds=#sr# 365"};
		{ 12, "s39963", "32410", "=q3=Thundering Skyfire Diamond", "=ds=#sr# 365"};
		{ 13, "s46126", "34360", "=q4=Amulet of Flowing Life", "=ds=#sr# 365"};
		{ 14, "s46124", "34361", "=q4=Hard Khorium Band", "=ds=#sr# 365"};
		{ 15, "s46127", "34358", "=q4=Hard Khorium Choker", "=ds=#sr# 365"};
		{ 16, "s46122", "34362", "=q4=Loop of Forged Power", "=ds=#sr# 365"};
		{ 17, "s46125", "34359", "=q4=Pendant of Sunfire", "=ds=#sr# 365"};
		{ 18, "s46123", "34363", "=q4=Ring of Flowing Life", "=ds=#sr# 365"};
		{ 19, "s31078", "24123", "=q4=Circlet of Arcane Might", "=ds=#sr# 370"};
		{ 20, "s31077", "24122", "=q4=Coronet of the Verdant Flame", "=ds=#sr# 370"};
		{ 21, "s46601", "35503", "=q3=Ember Skyfire Diamond", "=ds=#sr# 370"};
		{ 22, "s46597", "35501", "=q3=Eternal Earthstorm Diamond", "=ds=#sr# 370"};
		{ 23, "s31080", "24125", "=q3=Figurine - Dawnstone Crab", "=ds=#sr# 370"};
		{ 24, "s31079", "24124", "=q3=Figurine - Felsteel Boar", "=ds=#sr# 370"};
		{ 25, "s31081", "24126", "=q3=Figurine - Living Ruby Serpent", "=ds=#sr# 370"};
		{ 26, "s31083", "24128", "=q3=Figurine - Nightseye Panther", "=ds=#sr# 370"};
		{ 27, "s31082", "24127", "=q3=Figurine - Talasite Owl", "=ds=#sr# 370"};
		{ 28, "s39729", "32213", "=q4=Balanced Shadowsong Amethyst", "=ds=#sr# 375"};
		{ 29, "s39705", "32193", "=q4=Bold Crimson Spinel", "=ds=#sr# 375"};
		{ 30, "s39712", "32197", "=q4=Bright Crimson Spinel", "=ds=#sr# 375"};
		Next = "JewelMaster6";
		Prev = "JewelMaster4";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelMaster6"] = {
		{ 1, "s39719", "32204", "=q4=Brilliant Lionseye", "=ds=#sr# 375"};
		{ 2, "s39741", "32225", "=q4=Dazzling Seaspray Emerald", "=ds=#sr# 375"};
		{ 3, "s39706", "32194", "=q4=Delicate Crimson Spinel", "=ds=#sr# 375"};
		{ 4, "s39739", "32223", "=q4=Enduring Seaspray Emerald", "=ds=#sr# 375"};
		{ 5, "s46777", "35700", "=q4=Figurine - Crimson Serpent", "=ds=#sr# 375"};
		{ 6, "s46775", "35693", "=q4=Figurine - Empyrean Tortoise", "=ds=#sr# 375"};
		{ 7, "s46776", "35694", "=q4=Figurine - Khorium Boar", "=ds=#sr# 375"};
		{ 8, "s46779", "35703", "=q4=Figurine - Seaspray Albatross", "=ds=#sr# 375"};
		{ 9, "s46778", "35702", "=q4=Figurine - Shadowsong Panther", "=ds=#sr# 375"};
		{ 10, "s39714", "32199", "=q4=Flashing Crimson Spinel", "=ds=#sr# 375"};
		{ 11, "s47053", "35759", "=q4=Forceful Seaspray Emerald", "=ds=#sr# 375"};
		{ 12, "s39722", "32207", "=q4=Gleaming Lionseye", "=ds=#sr# 375"};
		{ 13, "s39736", "32220", "=q4=Glinting Pyrestone", "=ds=#sr# 375"};
		{ 14, "s39731", "32215", "=q4=Glowing Shadowsong Amethyst", "=ds=#sr# 375"};
		{ 15, "s39725", "32210", "=q4=Great Lionseye", "=ds=#sr# 375"};
		{ 16, "s39730", "32214", "=q4=Infused Shadowsong Amethyst", "=ds=#sr# 375"};
		{ 17, "s39733", "32217", "=q4=Inscribed Pyrestone", "=ds=#sr# 375"};
		{ 18, "s39742", "32226", "=q4=Jagged Seaspray Emerald", "=ds=#sr# 375"};
		{ 19, "s39735", "32219", "=q4=Luminous Pyrestone", "=ds=#sr# 375"};
		{ 20, "s39717", "32202", "=q4=Lustrous Empyrean Sapphire", "=ds=#sr# 375"};
		{ 21, "s39724", "32209", "=q4=Mystic Lionseye", "=ds=#sr# 375"};
		{ 22, "s39734", "32218", "=q4=Potent Pyrestone", "=ds=#sr# 375"};
		{ 23, "s47056", "35761", "=q4=Quick Lionseye", "=ds=#sr# 375"};
		{ 24, "s39740", "32224", "=q4=Radiant Seaspray Emerald", "=ds=#sr# 375"};
		{ 25, "s47055", "35760", "=q4=Reckless Pyrestone", "=ds=#sr# 375"};
		{ 26, "s39721", "32206", "=q4=Rigid Lionseye", "=ds=#sr# 375"};
		{ 27, "s39732", "32216", "=q4=Royal Shadowsong Amethyst", "=ds=#sr# 375"};
		{ 28, "s39711", "32196", "=q4=Runed Crimson Spinel", "=ds=#sr# 375"};
		{ 29, "s39728", "32212", "=q4=Shifting Shadowsong Amethyst", "=ds=#sr# 375"};
		{ 30, "s39720", "32205", "=q4=Smooth Lionseye", "=ds=#sr# 375"};
		Next = "JewelMaster7";
		Prev = "JewelMaster5";
		Back = "JEWELCRAFTINGMENU";
	};

	AtlasLoot_Data["JewelMaster7"] = {
		{ 1, "s39715", "32200", "=q4=Solid Empyrean Sapphire", "=ds=#sr# 375"};
		{ 2, "s39727", "32211", "=q4=Sovereign Shadowsong Amethyst", "=ds=#sr# 375"};
		{ 3, "s39716", "32201", "=q4=Sparkling Empyrean Sapphire", "=ds=#sr# 375"};
		{ 4, "s47054", "35758", "=q4=Steady Seaspray Emerald", "=ds=#sr# 375"};
		{ 5, "s39718", "32203", "=q4=Stormy Empyrean Sapphire", "=ds=#sr# 375"};
		{ 6, "s39713", "32198", "=q4=Subtle Crimson Spinel", "=ds=#sr# 375"};
		{ 7, "s39710", "32195", "=q4=Teardrop Crimson Spinel", "=ds=#sr# 375"};
		{ 8, "s39723", "32208", "=q4=Thick Lionseye", "=ds=#sr# 375"};
		{ 9, "s39737", "32221", "=q4=Veiled Pyrestone", "=ds=#sr# 375"};
		{ 10, "s39738", "32222", "=q4=Wicked Pyrestone", "=ds=#sr# 375"};
		{ 11, "s38503", "31398", "=q4=The Frozen Eye", "=ds=#sr# 375"};
		{ 12, "s38504", "31399", "=q4=The Natural Ward", "=ds=#sr# 375"};
		{ 13, "s46405", "35318", "=q3=Forceful Talasite", "=ds=#sr# "..AL["Unknown"]};
		{ 14, "s46403", "35315", "=q3=Quick Dawnstone", "=ds=#sr# "..AL["Unknown"]};
		{ 15, "s46404", "35316", "=q3=Reckless Noble Topaz", "=ds=#sr# "..AL["Unknown"]};
		Prev = "JewelMaster6";
		Back = "JEWELCRAFTINGMENU";
	};


		----------------------
		--- Leatherworking ---
		----------------------

    AtlasLoot_Data["LeatherLeatherArmorOld1"] = {
		{ 1, "s23709", "19162", "=q4=Corehound Belt", "=ds=#sr# 300"};
		{ 2, "s22927", "18510", "=q4=Hide of the Wild", "=ds=#sr# 300"};
		{ 3, "s23707", "19149", "=q4=Lava Belt", "=ds=#sr# 300"};
		{ 4, "s23710", "19163", "=q4=Molten Belt", "=ds=#sr# 300"};
		{ 5, "s20854", "16983", "=q4=Molten Helm", "=ds=#sr# 300"};
		{ 6, "s28221", "22663", "=q4=Polar Bracers", "=ds=#sr# 300"};
		{ 7, "s28220", "22662", "=q4=Polar Gloves", "=ds=#sr# 300"};
		{ 8, "s28219", "22661", "=q4=Polar Tunic", "=ds=#sr# 300"};
        { 9, "s20853", "16982", "=q4=Corehound Boots", "=ds=#sr# 295"};
        { 10, "s24124", "19688", "=q3=Blood Tiger Breastplate", "=ds=#sr# 300"};
        { 11, "s24125", "19689", "=q3=Blood Tiger Shoulders", "=ds=#sr# 300"};
		{ 12, "s28474", "22761", "=q3=Bramblewood Belt", "=ds=#sr# 300"};
		{ 13, "s28473", "22760", "=q3=Bramblewood Boots", "=ds=#sr# 300"};
		{ 14, "s28472", "22759", "=q3=Bramblewood Helm", "=ds=#sr# 300"};
        { 15, "s19097", "15062", "=q3=Devilsaur Leggings", "=ds=#sr# 300"};
		{ 16, "s22921", "18504", "=q3=Girdle of Insight", "=ds=#sr# 300"};
		{ 17, "s23706", "19058", "=q3=Golden Mantle of the Dawn", "=ds=#sr# 300"};
		{ 18, "s19095", "15059", "=q3=Living Breastplate", "=ds=#sr# 300"};
		{ 19, "s22922", "18506", "=q3=Mongoose Boots", "=ds=#sr# 300"};
		{ 20, "s24123", "19687", "=q3=Primal Batskin Bracers", "=ds=#sr# 300"};
		{ 21, "s24122", "19686", "=q3=Primal Batskin Gloves", "=ds=#sr# 300"};
		{ 22, "s24121", "19685", "=q3=Primal Batskin Jerkin", "=ds=#sr# 300"};
		{ 23, "s26279", "21278", "=q3=Stormshroud Gloves", "=ds=#sr# 300"};
		{ 24, "s23704", "19049", "=q3=Timbermaw Brawlers", "=ds=#sr# 300"};
        { 25, "s19090", "15058", "=q3=Stormshroud Shoulders", "=ds=#sr# 295"};
        { 26, "s23705", "19052", "=q3=Dawn Treaders", "=ds=#sr# 290"};
		{ 27, "s19084", "15063", "=q3=Devilsaur Gauntlets", "=ds=#sr# 290"};
		{ 28, "s19086", "15066", "=q3=Ironfeather Breastplate", "=ds=#sr# 290"};
		{ 29, "s23703", "19044", "=q3=Might of the Timbermaw", "=ds=#sr# 290"};
        { 30, "s19078", "15060", "=q3=Living Leggings", "=ds=#sr# 285"};
        Next = "LeatherLeatherArmorOld2";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherLeatherArmorOld2"] = {
        { 1, "s19079", "15056", "=q3=Stormshroud Armor", "=ds=#sr# 285"};
		{ 2, "s19080", "15065", "=q3=Warbear Woolies", "=ds=#sr# 285"};
        { 3, "s19067", "15057", "=q3=Stormshroud Pants", "=ds=#sr# 275"};
		{ 4, "s19068", "15064", "=q3=Warbear Harness", "=ds=#sr# 275"};
        { 5, "s19062", "15067", "=q3=Ironfeather Shoulders", "=ds=#sr# 270"};
		{ 6, "s19061", "15061", "=q3=Living Shoulders", "=ds=#sr# 270"};
        { 7, "s36074", "29964", "=q3=Blackstorm Leggings", "=ds=#sr# 260"};
		{ 8, "s36075", "29970", "=q3=Wildfeather Leggings", "=ds=#sr# 260"};
        { 9, "s10647", "8349", "=q3=Feathered Breastplate", "=ds=#sr# 250"};
		{ 10, "s10632", "8348", "=q3=Helm of Fire", "=ds=#sr# 250"};
        { 11, "s10630", "8346", "=q3=Gauntlets of the Sea", "=ds=#sr# 230"};
        { 12, "s10621", "8345", "=q3=Wolfshead Helm", "=ds=#sr# 225"};
        { 13, "s22711", "18238", "=q3=Shadowskin Gloves", "=ds=#sr# 200"};
        { 14, "s3778", "4262", "=q3=Gem-studded Leather Belt", "=ds=#sr# 185"};
		{ 15, "s23399", "18948", "=q3=Barbaric Bracers", "=ds=#sr# 155"};
        { 16, "s3770", "4253", "=q3=Toughened Leather Gloves", "=ds=#sr# 135"};
        { 17, "s7955", "6468", "=q3=Deviate Scale Belt", "=ds=#sr# 115"};
        { 18, "s19104", "15068", "=q2=Frostsaber Tunic", "=ds=#sr# 300"};
		{ 19, "s19102", "15090", "=q2=Runic Leather Armor", "=ds=#sr# 300"};
		{ 20, "s19091", "15095", "=q2=Runic Leather Pants", "=ds=#sr# 300"};
		{ 21, "s19103", "15096", "=q2=Runic Leather Shoulders", "=ds=#sr# 300"};
        { 22, "s19101", "15055", "=q2=Volcanic Shoulders", "=ds=#sr# 300"};
		{ 23, "s19098", "15085", "=q2=Wicked Leather Armor", "=ds=#sr# 300"};
		{ 24, "s19092", "15088", "=q2=Wicked Leather Belt", "=ds=#sr# 300"};
        { 25, "s19087", "15070", "=q2=Frostsaber Gloves", "=ds=#sr# 295"};
        { 26, "s19081", "15075", "=q2=Chimeric Vest", "=ds=#sr# 290"};
		{ 27, "s19082", "15094", "=q2=Runic Leather Headband", "=ds=#sr# 290"};
		{ 28, "s19083", "15087", "=q2=Wicked Leather Pants", "=ds=#sr# 290"};
        { 29, "s19074", "15069", "=q2=Frostsaber Leggings", "=ds=#sr# 285"};
        { 30, "s19076", "15053", "=q2=Volcanic Breastplate", "=ds=#sr# 285"};
        Prev = "LeatherLeatherArmorOld1";
        Next = "LeatherLeatherArmorOld3";
        Back = "LEATHERWORKINGMENU";
        };
    
    AtlasLoot_Data["LeatherLeatherArmorOld3"] = {
        { 1, "s19073", "15072", "=q2=Chimeric Leggings", "=ds=#sr# 280"};
		{ 2, "s19072", "15093", "=q2=Runic Leather Belt", "=ds=#sr# 280"};
		{ 3, "s19071", "15086", "=q2=Wicked Leather Headband", "=ds=#sr# 280"};
        { 4, "s19065", "15092", "=q2=Runic Leather Bracers", "=ds=#sr# 275"};
        { 5, "s19063", "15073", "=q2=Chimeric Boots", "=ds=#sr# 275"};
		{ 6, "s19066", "15071", "=q2=Frostsaber Boots", "=ds=#sr# 275"};
        { 7, "s19055", "15091", "=q2=Runic Leather Gauntlets", "=ds=#sr# 270"};
		{ 8, "s19059", "15054", "=q2=Volcanic Leggings", "=ds=#sr# 270"};
        { 9, "s19053", "15074", "=q2=Chimeric Gloves", "=ds=#sr# 265"};
		{ 10, "s19052", "15084", "=q2=Wicked Leather Bracers", "=ds=#sr# 265"};
        { 11, "s19049", "15083", "=q2=Wicked Leather Gauntlets", "=ds=#sr# 260"};
		{ 12, "s10572", "8212", "=q2=Wild Leather Leggings", "=ds=#sr# 250"};
        { 13, "s10566", "8213", "=q2=Wild Leather Boots", "=ds=#sr# 245"};
		{ 14, "s10560", "8202", "=q2=Big Voodoo Pants", "=ds=#sr# 240"};
        { 15, "s10558", "8197", "=q2=Nightscape Boots", "=ds=#sr# 235"};
        { 16, "s10548", "8193", "=q2=Nightscape Pants", "=ds=#sr# 230"};
        { 17, "s10546", "8214", "=q2=Wild Leather Helmet", "=ds=#sr# 225"};
		{ 18, "s10544", "8211", "=q2=Wild Leather Vest", "=ds=#sr# 225"};
        { 19, "s10531", "8201", "=q2=Big Voodoo Mask", "=ds=#sr# 220"};
		{ 20, "s10529", "8210", "=q2=Wild Leather Shoulders", "=ds=#sr# 220"};
        { 21, "s10520", "8200", "=q2=Big Voodoo Robe", "=ds=#sr# 215"};
        { 22, "s10516", "8192", "=q2=Nightscape Shoulders", "=ds=#sr# 210"};
        { 23, "s10507", "8176", "=q2=Nightscape Headband", "=ds=#sr# 205"};
		{ 24, "s10499", "8175", "=q2=Nightscape Tunic", "=ds=#sr# 205"};
        { 25, "s3779", "4264", "=q2=Barbaric Belt", "=ds=#sr# 200"};
		{ 26, "s10490", "8174", "=q2=Comfortable Leather Hat", "=ds=#sr# 200"};
		{ 27, "s9207", "7390", "=q2=Dusky Boots", "=ds=#sr# 200"};
		{ 28, "s9208", "7391", "=q2=Swift Boots", "=ds=#sr# 200"};
        { 29, "s9206", "7387", "=q2=Dusky Belt", "=ds=#sr# 195"};
		{ 30, "s3777", "4260", "=q2=Guardian Leather Bracers", "=ds=#sr# 195"};
        Prev = "LeatherLeatherArmorOld2";
        Next = "LeatherLeatherArmorOld4";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherLeatherArmorOld4"] = {
        { 1, "s21943", "17721", "=q2=Gloves of the Greatfather", "=ds=#sr# 190"};
        { 2, "s9202", "7386", "=q2=Green Whelp Bracers", "=ds=#sr# 190"};
		{ 3, "s6705", "5783", "=q2=Murloc Scale Bracers", "=ds=#sr# 190"};
        { 4, "s9201", "7378", "=q2=Dusky Bracers", "=ds=#sr# 185"};
        { 5, "s3776", "4259", "=q2=Green Leather Bracers", "=ds=#sr# 180"};
        { 6, "s7151", "5964", "=q2=Barbaric Shoulders", "=ds=#sr# 175"};
		{ 7, "s9196", "7374", "=q2=Dusky Leather Armor", "=ds=#sr# 175"};
        { 8, "s9197", "7375", "=q2=Green Whelp Armor", "=ds=#sr# 175"};
		{ 9, "s3773", "4256", "=q2=Guardian Armor", "=ds=#sr# 175"};
        { 10, "s7149", "5963", "=q2=Barbaric Leggings", "=ds=#sr# 170"};
		{ 11, "s3775", "4258", "=q2=Guardian Belt", "=ds=#sr# 170"};
		{ 12, "s6704", "5782", "=q2=Thick Murloc Armor", "=ds=#sr# 170"};
        { 13, "s9195", "7373", "=q2=Dusky Leather Leggings", "=ds=#sr# 165"};
		{ 14, "s4097", "4456", "=q2=Raptor Hide Belt", "=ds=#sr# 165"};
		{ 15, "s4096", "4455", "=q2=Raptor Hide Harness", "=ds=#sr# 165"};
        { 16, "s3774", "4257", "=q2=Green Leather Belt", "=ds=#sr# 160"};
		{ 17, "s7147", "5962", "=q2=Guardian Pants", "=ds=#sr# 160"};
        { 18, "s3772", "4255", "=q2=Green Leather Armor", "=ds=#sr# 155"};
        { 19, "s3771", "4254", "=q2=Barbaric Gloves", "=ds=#sr# 150"};
        { 20, "s9149", "7359", "=q2=Heavy Earthen Gloves", "=ds=#sr# 145"};
		{ 21, "s3764", "4247", "=q2=Hillman's Leather Gloves", "=ds=#sr# 145"};
        { 22, "s3769", "4252", "=q2=Dark Leather Shoulders", "=ds=#sr# 140"};
		{ 23, "s9148", "7358", "=q2=Pilferer's Gloves", "=ds=#sr# 140"};
		{ 24, "s9147", "7352", "=q2=Earthen Leather Shoulders", "=ds=#sr# 135"};
		{ 25, "s9146", "7349", "=q2=Herbalist's Gloves", "=ds=#sr# 135"};
        { 26, "s3768", "4251", "=q2=Hillman's Shoulders", "=ds=#sr# 130"};
        { 27, "s3766", "4249", "=q2=Dark Leather Belt", "=ds=#sr# 125"};
		{ 28, "s9145", "7348", "=q2=Fletcher's Gloves", "=ds=#sr# 125"};
        { 29, "s3767", "4250", "=q2=Hillman's Belt", "=ds=#sr# 120"};
        { 30, "s9074", "7285", "=q2=Nimble Leather Gloves", "=ds=#sr# 120"};
        Prev = "LeatherLeatherArmorOld3";
        Next = "LeatherLeatherArmorOld5";
        Back = "LEATHERWORKINGMENU";
        };
    
    AtlasLoot_Data["LeatherLeatherArmorOld5"] = {
        { 1, "s9072", "7284", "=q2=Red Whelp Gloves", "=ds=#sr# 120"};
        { 2, "s3765", "4248", "=q2=Dark Leather Gloves", "=ds=#sr# 120"};
        { 3, "s7135", "5961", "=q2=Dark Leather Pants", "=ds=#sr# 115"};
        { 4, "s7954", "6467", "=q2=Deviate Scale Gloves", "=ds=#sr# 105"};
		{ 5, "s7133", "5958", "=q2=Fine Leather Pants", "=ds=#sr# 105"};
        { 6, "s24940", "20575", "=q2=Black Whelp Tunic", "=ds=#sr# 100"};
		{ 7, "s2169", "2317", "=q2=Dark Leather Tunic", "=ds=#sr# 100"};
		{ 8, "s3762", "4244", "=q2=Hillman's Leather Vest", "=ds=#sr# 100"};
        { 9, "s9068", "7282", "=q2=Light Leather Pants", "=ds=#sr# 95"};
		{ 10, "s6703", "5781", "=q2=Murloc Scale Breastplate", "=ds=#sr# 95"};
        { 11, "s8322", "6709", "=q2=Moonglow Vest", "=ds=#sr# 90"};
        { 12, "s6702", "5780", "=q2=Murloc Scale Belt", "=ds=#sr# 90"};
        { 13, "s3761", "4243", "=q2=Fine Leather Tunic", "=ds=#sr# 85"};
        { 14, "s3759", "4242", "=q2=Embossed Leather Pants", "=ds=#sr# 75"};
		{ 15, "s2164", "2312", "=q2=Fine Leather Gloves", "=ds=#sr# 75"};
        { 16, "s2161", "2309", "=q2=Embossed Leather Boots", "=ds=#sr# 55"};
        { 17, "s2160", "2300", "=q2=Embossed Leather Vest", "=ds=#sr# 40"};
        { 18, "s9064", "7280", "=q2=Rugged Leather Pants", "=ds=#sr# 35"};
        { 19, "s44953", "34086", "=q1=Winter Boots", "=ds=#sr# 285"};
        { 20, "s6661", "5739", "=q1=Barbaric Harness", "=ds=#sr# 190"};
		{ 21, "s7156", "5966", "=q1=Guardian Gloves", "=ds=#sr# 190"};
        { 22, "s2166", "2314", "=q1=Toughened Leather Armor", "=ds=#sr# 120"};
        { 23, "s2167", "2315", "=q1=Dark Leather Boots", "=ds=#sr# 100"};
        { 24, "s2158", "2307", "=q1=Fine Leather Boots", "=ds=#sr# 90"};
        { 25, "s3763", "4246", "=q1=Fine Leather Belt", "=ds=#sr# 80"};
        { 26, "s9065", "7281", "=q1=Light Leather Bracers", "=ds=#sr# 70"};
        { 27, "s2163", "2311", "=q1=White Leather Jerkin", "=ds=#sr# 60"};
        { 28, "s3756", "4239", "=q1=Embossed Leather Gloves", "=ds=#sr# 55"};
        { 29, "s3753", "4237", "=q1=Handstitched Leather Belt", "=ds=#sr# 25"};
        { 30, "s2153", "2303", "=q1=Handstitched Leather Pants", "=ds=#sr# 15"};
        Prev = "LeatherLeatherArmorOld4";
        Next = "LeatherLeatherArmorOld6";
        Back = "LEATHERWORKINGMENU";
        };
    
    AtlasLoot_Data["LeatherLeatherArmorOld6"] = {
        { 1, "s2149", "2302", "=q1=Handstitched Leather Boots", "=ds=#sr# 1"};
        { 2, "s9059", "7277", "=q1=Handstitched Leather Bracers", "=ds=#sr# 1"};
		{ 3, "s9058", "7276", "=q1=Handstitched Leather Cloak", "=ds=#sr# 1"};
		{ 4, "s7126", "5957", "=q1=Handstitched Leather Vest", "=ds=#sr# 1"};
        Prev = "LeatherLeatherArmorOld5";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherLeatherArmorBC1"] = {
        { 1, "s36351", "30040", "=q4=Belt of Deep Shadow", "=ds=#sr# 375"};
		{ 2, "s36349", "30042", "=q4=Belt of Natural Power", "=ds=#sr# 375"};
		{ 3, "s36355", "30041", "=q4=Boots of Natural Grace", "=ds=#sr# 375"};
		{ 4, "s36357", "30039", "=q4=Boots of Utter Darkness", "=ds=#sr# 375"};
		{ 5, "s41156", "32582", "=q4=Bracers of Renewed Life", "=ds=#sr# 375"};
        { 6, "s35590", "29526", "=q4=Primalstrike Belt", "=ds=#sr# 375"};
		{ 7, "s35591", "29527", "=q4=Primalstrike Bracers", "=ds=#sr# 375"};
		{ 8, "s35589", "29525", "=q4=Primalstrike Vest", "=ds=#sr# 375"};
		{ 9, "s40006", "32393", "=q4=Redeemed Soul Cinch", "=ds=#sr# 375"};
		{ 10, "s40005", "32396", "=q4=Redeemed Soul Legguards", "=ds=#sr# 375"};
        { 11, "s40003", "32394", "=q4=Redeemed Soul Moccasins", "=ds=#sr# 375"};
		{ 12, "s40004", "32395", "=q4=Redeemed Soul Wristguards", "=ds=#sr# 375"};
		{ 13, "s41157", "32583", "=q4=Shoulderpads of Renewed Life", "=ds=#sr# 375"};
        { 14, "s41158", "32580", "=q4=Swiftstrike Bracers", "=ds=#sr# 375"};
		{ 15, "s41160", "32581", "=q4=Swiftstrike Shoulders", "=ds=#sr# 375"};
        { 16, "s35587", "29524", "=q4=Windhawk Belt", "=ds=#sr# 375"};
		{ 17, "s35588", "29523", "=q4=Windhawk Bracers", "=ds=#sr# 375"};
		{ 18, "s35585", "29522", "=q4=Windhawk Hauberk", "=ds=#sr# 375"};
        { 19, "s46138", "34369", "=q4=Carapace of Sun and Shadow", "=ds=#sr# 365"};
		{ 20, "s35559", "29503", "=q4=Cobrascale Gloves", "=ds=#sr# 365"};
		{ 21, "s35558", "29502", "=q4=Cobrascale Hood", "=ds=#sr# 365"};
		{ 22, "s46134", "34370", "=q4=Gloves of Immortal Dusk", "=ds=#sr# 365"};
		{ 23, "s35562", "29506", "=q4=Gloves of the Living Touch", "=ds=#sr# 365"};
        { 24, "s35561", "29505", "=q4=Hood of Primal Life", "=ds=#sr# 365"};
        { 25, "s46136", "34371", "=q4=Leather Chestguard of the Sun", "=ds=#sr# 365"};
        { 26, "s46132", "34372", "=q4=Leather Gauntlets of the Sun", "=ds=#sr# 365"};
        { 27, "s42731", "33204", "=q4=Shadowprowler's Chestguard", "=ds=#sr# 365"};
        { 28, "s35560", "29504", "=q4=Windscale Hood", "=ds=#sr# 365"};
        { 29, "s35563", "29507", "=q4=Windslayer Wraps", "=ds=#sr# 365"};
        { 30, "s32495", "25689", "=q3=Heavy Clefthoof Vest", "=ds=#sr# 360"};
        Next = "LeatherLeatherArmorBC2";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherLeatherArmorBC2"] = {
        { 1, "s32497", "25691", "=q3=Heavy Clefthoof Boots", "=ds=#sr# 355"};
		{ 2, "s32496", "25690", "=q3=Heavy Clefthoof Leggings", "=ds=#sr# 355"};
        { 3, "s35537", "29500", "=q3=Blastguard Belt", "=ds=#sr# 350"};
		{ 4, "s35536", "29499", "=q3=Blastguard Boots", "=ds=#sr# 350"};
		{ 5, "s35535", "29498", "=q3=Blastguard Pants", "=ds=#sr# 350"};
		{ 6, "s35534", "29497", "=q3=Enchanted Clefthoof Boots", "=ds=#sr# 350"};
		{ 7, "s35533", "29496", "=q3=Enchanted Clefthoof Gloves", "=ds=#sr# 350"};
		{ 8, "s35532", "29495", "=q3=Enchanted Clefthoof Leggings", "=ds=#sr# 350"};
		{ 9, "s32493", "25686", "=q3=Fel Leather Boots", "=ds=#sr# 350"};
		{ 10, "s32494", "25687", "=q3=Fel Leather Leggings", "=ds=#sr# 350"};
        { 11, "s32489", "25682", "=q3=Stylin' Jungle Hat", "=ds=#sr# 350"};
		{ 12, "s32485", "25680", "=q3=Stylin' Purple Hat", "=ds=#sr# 350"};
        { 13, "s32490", "25685", "=q3=Fel Leather Gloves", "=ds=#sr# 340"};
        { 14, "s36078", "29974", "=q3=Living Crystal Breastplate", "=ds=#sr# 330"};
		{ 15, "s36077", "29973", "=q3=Primalstorm Breastplate", "=ds=#sr# 330"};
        { 16, "s32473", "25671", "=q2=Thick Draenic Vest", "=ds=#sr# 330"};
		{ 17, "s32481", "25676", "=q2=Wild Draenish Vest", "=ds=#sr# 330"};
        { 18, "s32472", "25668", "=q2=Thick Draenic Boots", "=ds=#sr# 320"};
		{ 19, "s32480", "25675", "=q2=Wild Draenish Leggings", "=ds=#sr# 320"};
        { 20, "s32471", "25670", "=q2=Thick Draenic Pants", "=ds=#sr# 315"};
        { 21, "s32479", "25674", "=q2=Wild Draenish Gloves", "=ds=#sr# 310"};
        { 22, "s32470", "25669", "=q2=Thick Draenic Gloves", "=ds=#sr# 300"};
		{ 23, "s32478", "25673", "=q2=Wild Draenish Boots", "=ds=#sr# 300"};
        Prev = "LeatherLeatherArmorBC1";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherLeatherArmorWrath1"] = {
        { 1, "s60760", "43495", "=q4=Earthgiving Legguards", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 2, "s60761", "43502", "=q4=Earthgiving Boots", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 3, "s60758", "43481", "=q4=Trollwoven Spaulders", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 4, "s60759", "43484", "=q4=Trollwoven Girdle", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 5, "s60996", "43590", "=q4=Polar Vest", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 6, "s60997", "43591", "=q4=Polar Cord", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 7, "s60998", "43592", "=q4=Polar Boots", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 8, "s60697", "43260", "=q3=Eviscerator's Facemask", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 9, "s60702", "43433", "=q3=Eviscerator's Shoulderpads", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 10, "s60703", "43434", "=q3=Eviscerator's Chestguard", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 11, "s60704", "43435", "=q3=Eviscerator's Bindings", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 12, "s60705", "43436", "=q3=Eviscerator's Gauntlets", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 13, "s60706", "43437", "=q3=Eviscerator's Waistguard", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 14, "s60711", "43438", "=q3=Eviscerator's Legguards", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 15, "s60712", "43439", "=q3=Eviscerator's Treads", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 16, "s60715", "43261", "=q3=Overcast Headguard", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 17, "s60716", "43262", "=q3=Overcast Spaulders", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 18, "s60718", "43263", "=q3=Overcast Chestguard", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 19, "s60720", "43264", "=q3=Overcast Bracers", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 20, "s60721", "43265", "=q3=Overcast Handwraps", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 21, "s60723", "43266", "=q3=Overcast Belt", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 22, "s60725", "43271", "=q3=Overcast Leggings", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 23, "s60727", "43273", "=q3=Overcast Boots", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 24, "s60669", "43257", "=q3=Wildscale Breastplate", "=ds="..AL["Trainer"]};
        { 25, "s60660", "42731", "=q3=Leggings of Visceral Strikes", "=ds="..AL["Trainer"]};
        { 26, "s60671", "43258", "=q3=Purehorn Spaulders", "=ds="..AL["Trainer"]};
        { 27, "s60665", "43255", "=q3=Seafoam Gauntlets", "=ds="..AL["Trainer"]};
        { 28, "s60666", "43256", "=q3=Jormscale Footpads", "=ds="..AL["Trainer"]};
        { 29, "s51568", "38590", "=q3=Black Chitinguard Boots", "=ds="..AL["Trainer"]};
        { 30, "s60620", "44442", "=q3=Bugsquashers", "=ds="..AL["Trainer"]};
        Next = "LeatherLeatherArmorWrath2";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherLeatherArmorWrath2"] = {
        { 1, "s51570", "38592", "=q3=Dark Arctic Chestpiece", "=ds="..AL["Trainer"]};
        { 2, "s51569", "38591", "=q3=Dark Arctic Leggings", "=ds="..AL["Trainer"]};
        { 3, "s60613", "44441", "=q3=Dark Iceborne Chestguard", "=ds="..AL["Trainer"]};
        { 4, "s60611", "44440", "=q3=Dark Iceborne Leggings", "=ds="..AL["Trainer"]};
        { 5, "s51572", "38437", "=q2=Arctic Helm", "=ds="..AL["Trainer"]};
        { 6, "s50946", "38402", "=q2=Arctic Shoulderpads", "=ds="..AL["Trainer"]};
        { 7, "s50944", "38400", "=q2=Arctic Chestpiece", "=ds="..AL["Trainer"]};
        { 8, "s51571", "38433", "=q2=Arctic Wristguards", "=ds="..AL["Trainer"]};
        { 9, "s50947", "38403", "=q2=Arctic Gloves", "=ds="..AL["Trainer"]};
        { 10, "s50949", "38405", "=q2=Arctic Belt", "=ds="..AL["Trainer"]};
        { 11, "s50945", "38401", "=q2=Arctic Leggings", "=ds="..AL["Trainer"]};
        { 12, "s50948", "38404", "=q2=Arctic Boots", "=ds="..AL["Trainer"]};
        { 13, "s60608", "38438", "=q2=Iceborne Helm", "=ds="..AL["Trainer"]};
        { 14, "s50940", "38411", "=q2=Iceborne Shoulderpads", "=ds="..AL["Trainer"]};
        { 15, "s50938", "38408", "=q2=Iceborne Chestguard", "=ds="..AL["Trainer"]};
        { 16, "s60607", "38434", "=q2=Iceborne Wristguards", "=ds="..AL["Trainer"]};
        { 17, "s50941", "38409", "=q2=Iceborne Gloves", "=ds="..AL["Trainer"]};
        { 18, "s50943", "38406", "=q2=Iceborne Belt", "=ds="..AL["Trainer"]};
        { 19, "s50939", "38410", "=q2=Iceborne Leggings", "=ds="..AL["Trainer"]};
        { 20, "s50942", "38407", "=q2=Iceborne Boots", "=ds="..AL["Trainer"]};
        Prev = "LeatherLeatherArmorWrath1";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherMailArmorOld1"] = {
        { 1, "s28224", "22665", "=q4=Icy Scale Bracers", "=ds=#sr# 300"};
		{ 2, "s28222", "22664", "=q4=Icy Scale Breastplate", "=ds=#sr# 300"};
		{ 3, "s28223", "22666", "=q4=Icy Scale Gauntlets", "=ds=#sr# 300"};
        { 4, "s24703", "20380", "=q4=Dreamscale Breastplate", "=ds=#sr# 300"};
        { 5, "s23708", "19157", "=q4=Chromatic Gauntlets", "=ds=#sr# 300"};
        { 6, "s20855", "16984", "=q4=Black Dragonscale Boots", "=ds=#sr# 300"};
        { 7, "s22923", "18508", "=q3=Swift Flight Bracers", "=ds=#sr# 300"};
        { 8, "s24849", "20476", "=q3=Sandstalker Bracers", "=ds=#sr# 300"};
		{ 9, "s24851", "20478", "=q3=Sandstalker Breastplate", "=ds=#sr# 300"};
		{ 10, "s24850", "20477", "=q3=Sandstalker Gauntlets", "=ds=#sr# 300"};
		{ 11, "s24846", "20481", "=q3=Spitfire Bracers", "=ds=#sr# 300"};
		{ 12, "s24848", "20479", "=q3=Spitfire Breastplate", "=ds=#sr# 300"};
		{ 13, "s24847", "20480", "=q3=Spitfire Gauntlets", "=ds=#sr# 300"};
        { 14, "s19054", "15047", "=q3=Red Dragonscale Breastplate", "=ds=#sr# 300"};
        { 15, "s24654", "20295", "=q3=Blue Dragonscale Leggings", "=ds=#sr# 300"};
        { 16, "s19107", "15052", "=q3=Black Dragonscale Leggings", "=ds=#sr# 300"};
		{ 17, "s19094", "15051", "=q3=Black Dragonscale Shoulders", "=ds=#sr# 300"};
        { 18, "s19089", "15049", "=q3=Blue Dragonscale Shoulders", "=ds=#sr# 295"};
        { 19, "s19085", "15050", "=q3=Black Dragonscale Breastplate", "=ds=#sr# 290"};
        { 20, "s19077", "15048", "=q3=Blue Dragonscale Breastplate", "=ds=#sr# 285"};
        { 21, "s24655", "20296", "=q3=Green Dragonscale Gauntlets", "=ds=#sr# 280"};
        { 22, "s19060", "15046", "=q3=Green Dragonscale Leggings", "=ds=#sr# 270"};
        { 23, "s36076", "29971", "=q3=Dragonstrike Leggings", "=ds=#sr# 260"};
		{ 24, "s19050", "15045", "=q3=Green Dragonscale Breastplate", "=ds=#sr# 260"};
        { 25, "s10650", "8367", "=q3=Dragonscale Breastplate", "=ds=#sr# 255"};
        { 26, "s10619", "8347", "=q3=Dragonscale Gauntlets", "=ds=#sr# 225"};
        { 27, "s19100", "15081", "=q2=Heavy Scorpid Shoulders", "=ds=#sr# 300"};
        { 28, "s19088", "15080", "=q2=Heavy Scorpid Helm", "=ds=#sr# 295"};
        { 29, "s19075", "15079", "=q2=Heavy Scorpid Leggings", "=ds=#sr# 285"};
        { 30, "s19070", "15082", "=q2=Heavy Scorpid Belt", "=ds=#sr# 280"};
        Next = "LeatherMailArmorOld2";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherMailArmorOld2"] = {
        { 1, "s19064", "15078", "=q2=Heavy Scorpid Gauntlets", "=ds=#sr# 275"};
        { 2, "s19051", "15076", "=q2=Heavy Scorpid Vest", "=ds=#sr# 265"};
        { 3, "s19048", "15077", "=q2=Heavy Scorpid Bracers", "=ds=#sr# 255"};
        { 4, "s10570", "8208", "=q2=Tough Scorpid Helm", "=ds=#sr# 250"};
        { 5, "s10568", "8206", "=q2=Tough Scorpid Leggings", "=ds=#sr# 245"};
        { 6, "s10564", "8207", "=q2=Tough Scorpid Shoulders", "=ds=#sr# 240"};
        { 7, "s10554", "8209", "=q2=Tough Scorpid Boots", "=ds=#sr# 235"};
		{ 8, "s10556", "8185", "=q2=Turtle Scale Leggings", "=ds=#sr# 235"};
        { 9, "s10552", "8191", "=q2=Turtle Scale Helm", "=ds=#sr# 230"};
        { 10, "s10542", "8204", "=q2=Tough Scorpid Gloves", "=ds=#sr# 225"};
        { 11, "s10533", "8205", "=q2=Tough Scorpid Bracers", "=ds=#sr# 220"};
		{ 12, "s10525", "8203", "=q2=Tough Scorpid Breastplate", "=ds=#sr# 220"};
        { 13, "s10518", "8198", "=q2=Turtle Scale Bracers", "=ds=#sr# 210"};
		{ 14, "s10511", "8189", "=q2=Turtle Scale Breastplate", "=ds=#sr# 210"};
        { 15, "s10509", "8187", "=q2=Turtle Scale Gloves", "=ds=#sr# 205"};
        Prev = "LeatherMailArmorOld1";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherMailArmorBC1"] = {
        { 1, "s40002", "32397", "=q4=Waistguard of Shackled Souls", "=ds=#sr# 375"};
        { 2, "s41162", "32575", "=q4=Shoulders of Lightning Reflexes", "=ds=#sr# 375"};
        { 3, "s35582", "29520", "=q4=Netherstrike Belt", "=ds=#sr# 375"};
		{ 4, "s35584", "29521", "=q4=Netherstrike Bracers", "=ds=#sr# 375"};
		{ 5, "s35580", "29519", "=q4=Netherstrike Breastplate", "=ds=#sr# 375"};
        { 6, "s36353", "30044", "=q4=Monsoon Belt", "=ds=#sr# 375"};
        { 7, "s40000", "32399", "=q4=Bracers of Shackled Souls", "=ds=#sr# 375"};
		{ 8, "s35576", "29516", "=q4=Ebon Netherscale Belt", "=ds=#sr# 375"};
		{ 9, "s35577", "29517", "=q4=Ebon Netherscale Bracers", "=ds=#sr# 375"};
		{ 10, "s35575", "29515", "=q4=Ebon Netherscale Breastplate", "=ds=#sr# 375"};
		{ 11, "s40001", "32400", "=q4=Greaves of Shackled Souls", "=ds=#sr# 375"};
		{ 12, "s36359", "30043", "=q4=Hurricane Boots", "=ds=#sr# 375"};
		{ 13, "s41163", "32577", "=q4=Living Earth Bindings", "=ds=#sr# 375"};
		{ 14, "s41164", "32579", "=q4=Living Earth Shoulders", "=ds=#sr# 375"};
        { 15, "s39997", "32398", "=q4=Boots of Shackled Souls", "=ds=#sr# 375"};
		{ 16, "s36358", "30045", "=q4=Boots of the Crimson Hawk", "=ds=#sr# 375"};
        { 17, "s36352", "30046", "=q4=Belt of the Black Eagle", "=ds=#sr# 375"};
		{ 18, "s41161", "32574", "=q4=Bindings of Lightning Reflexes", "=ds=#sr# 375"};
        { 19, "s46139", "34375", "=q4=Sun-Drenched Scale Chestguard", "=ds=#sr# 365"};
		{ 20, "s46135", "34376", "=q4=Sun-Drenched Scale Gloves", "=ds=#sr# 365"};
        { 21, "s46137", "34373", "=q4=Embrace of the Phoenix", "=ds=#sr# 365"};
		{ 22, "s46133", "34374", "=q4=Fletcher's Gloves of the Phoenix", "=ds=#sr# 365"};
        { 23, "s35568", "29509", "=q4=Windstrike Gloves", "=ds=#sr# 365"};
        { 24, "s35574", "29514", "=q4=Thick Netherscale Breastplate", "=ds=#sr# 365"};
        { 25, "s35564", "29508", "=q4=Living Dragonscale Helm", "=ds=#sr# 365"};
		{ 26, "s35573", "29511", "=q4=Netherdrake Gloves", "=ds=#sr# 365"};
		{ 27, "s35572", "29510", "=q4=Netherdrake Helm", "=ds=#sr# 365"};
        { 28, "s35567", "29512", "=q4=Earthen Netherscale Boots", "=ds=#sr# 365"};
        { 29, "s32499", "25697", "=q3=Felstalker Bracer", "=ds=#sr# 360"};
		{ 30, "s32500", "25696", "=q3=Felstalker Breastplate", "=ds=#sr# 360"};
        Next = "LeatherMailArmorBC2";
        Back = "LEATHERWORKINGMENU";
    };
    
    AtlasLoot_Data["LeatherMailArmorBC2"] = {
        { 1, "s32487", "25681", "=q3=Stylin' Adventure Hat", "=ds=#sr# 350"};
		{ 2, "s32488", "25683", "=q3=Stylin' Crimson Hat", "=ds=#sr# 350"};
        { 3, "s32498", "25695", "=q3=Felstalker Belt", "=ds=#sr# 350"};
		{ 4, "s35531", "29494", "=q3=Flamescale Belt", "=ds=#sr# 350"};
		{ 5, "s35528", "29493", "=q3=Flamescale Boots", "=ds=#sr# 350"};
		{ 6, "s35529", "29492", "=q3=Flamescale Leggings", "=ds=#sr# 350"};
		{ 7, "s32503", "25693", "=q3=Netherfury Boots", "=ds=#sr# 350"};
        { 8, "s35527", "29491", "=q3=Enchanted Felscale Boots", "=ds=#sr# 350"};
		{ 9, "s35526", "29490", "=q3=Enchanted Felscale Gloves", "=ds=#sr# 350"};
		{ 10, "s35525", "29489", "=q3=Enchanted Felscale Leggings", "=ds=#sr# 350"};
        { 11, "s32501", "25694", "=q3=Netherfury Belt", "=ds=#sr# 340"};
		{ 12, "s32502", "25692", "=q3=Netherfury Leggings", "=ds=#sr# 340"};
        { 13, "s36079", "29975", "=q3=Golden Dragonstrike Breastplate", "=ds=#sr# 330"};
        { 14, "s32465", "25657", "=q2=Felscale Breastplate", "=ds=#sr# 335"};
		{ 15, "s32469", "25659", "=q2=Scaled Draenic Boots", "=ds=#sr# 335"};
        { 16, "s32468", "25660", "=q2=Scaled Draenic Vest", "=ds=#sr# 325"};
        { 17, "s32464", "25656", "=q2=Felscale Pants", "=ds=#sr# 320"};
        { 18, "s32467", "25661", "=q2=Scaled Draenic Gloves", "=ds=#sr# 310"};
        { 19, "s32463", "25655", "=q2=Felscale Boots", "=ds=#sr# 310"};
        { 20, "s32466", "25662", "=q2=Scaled Draenic Pants", "=ds=#sr# 300"};
        { 21, "s32462", "25654", "=q2=Felscale Gloves", "=ds=#sr# 300"};
        Prev = "LeatherMailArmorBC1";
        Back = "LEATHERWORKINGMENU";
    };

    AtlasLoot_Data["LeatherMailArmorWrath1"] = {
        { 1, "s60755", "43459", "=q4=Giantmaim Bracers", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 2, "s60754", "43458", "=q4=Giantmaim Legguards", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 3, "s60756", "43461", "=q4=Revenant's Breastplate", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 4, "s60757", "43469", "=q4=Revenant's Treads", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 5, "s60999", "43593", "=q4=Icy Scale Chestguard", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 6, "s61000", "43594", "=q4=Icy Scale Belt", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 7, "s61002", "43595", "=q4=Icy Scale Boots", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 8, "s60728", "43447", "=q3=Swiftarrow Helm", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 9, "s60729", "43449", "=q3=Swiftarrow Shoulderguards", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 10, "s60730", "43445", "=q3=Swiftarrow Hauberk", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 11, "s60731", "43444", "=q3=Swiftarrow Bracers", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 12, "s60732", "43446", "=q3=Swiftarrow Gauntlets", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 13, "s60734", "43442", "=q3=Swiftarrow Belt", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 14, "s60735", "43448", "=q3=Swiftarrow Leggings", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 15, "s60737", "43443", "=q3=Swiftarrow Boots", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 16, "s60743", "43455", "=q3=Stormhide Crown", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 17, "s60746", "43457", "=q3=Stormhide Shoulders", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 18, "s60747", "43453", "=q3=Stormhide Hauberk", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 19, "s60748", "43452", "=q3=Stormhide Wristguards", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 20, "s60749", "43454", "=q3=Stormhide Grips", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 21, "s60750", "43450", "=q3=Stormhide Belt", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 22, "s60751", "43456", "=q3=Stormhide Legguards", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 23, "s60752", "43451", "=q3=Stormhide Stompers", "=ds="..AL["Vendor"]..", "..BabbleZone["Dalaran"]};
        { 24, "s60649", "43129", "=q3=Razorstrike Breastplate", "=ds="..AL["Trainer"]};
        { 25, "s60655", "43132", "=q3=Nightshock Hood", "=ds="..AL["Trainer"]};
        { 26, "s60651", "43130", "=q3=Virulent Spaulders", "=ds="..AL["Trainer"]};
        { 27, "s60658", "43133", "=q3=Nightshock Girdle", "=ds="..AL["Trainer"]};
        { 28, "s60652", "43131", "=q3=Eaglebane Bracers", "=ds="..AL["Trainer"]};
        { 29, "s60605", "44438", "=q3=Dragonstompers", "=ds="..AL["Trainer"]};
        { 30, "s60630", "44445", "=q3=Scaled Icewalkers", "=ds="..AL["Trainer"]};
        Next = "LeatherMailArmorWrath2";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherMailArmorWrath2"] = {
        { 1, "s60604", "44437", "=q3=Dark Frostscale Breastplate", "=ds="..AL["Trainer"]};
        { 2, "s60601", "44436", "=q3=Dark Frostscale Leggings", "=ds="..AL["Trainer"]};
        { 3, "s60629", "44444", "=q3=Dark Nerubian Chestpiece", "=ds="..AL["Trainer"]};
        { 4, "s60627", "44443", "=q3=Dark Nerubian Leggings", "=ds="..AL["Trainer"]};
        { 5, "s60600", "38440", "=q2=Frostscale Helm", "=ds="..AL["Trainer"]};
        { 6, "s50952", "38424", "=q2=Frostscale Shoulders", "=ds="..AL["Trainer"]};
        { 7, "s50950", "38414", "=q2=Frostscale Chestguard", "=ds="..AL["Trainer"]};
        { 8, "s60599", "38436", "=q2=Frostscale Bracers", "=ds="..AL["Trainer"]};
        { 9, "s50953", "38415", "=q2=Frostscale Gloves", "=ds="..AL["Trainer"]};
        { 10, "s50955", "38412", "=q2=Frostscale Belt", "=ds="..AL["Trainer"]};
        { 11, "s50951", "38416", "=q2=Frostscale Leggings", "=ds="..AL["Trainer"]};
        { 12, "s50954", "38413", "=q2=Frostscale Boots", "=ds="..AL["Trainer"]};
        { 13, "s60624", "38439", "=q2=Nerubian Helm", "=ds="..AL["Trainer"]};
        { 14, "s50958", "38417", "=q2=Nerubian Shoulders", "=ds="..AL["Trainer"]};
        { 15, "s50956", "38420", "=q2=Nerubian Chestguard", "=ds="..AL["Trainer"]};
        { 16, "s60622", "38435", "=q2=Nerubian Bracers", "=ds="..AL["Trainer"]};
        { 17, "s50959", "38421", "=q2=Nerubian Gloves", "=ds="..AL["Trainer"]};
        { 18, "s50961", "38418", "=q2=Nerubian Belt", "=ds="..AL["Trainer"]};
        { 19, "s50957", "38422", "=q2=Nerubian Legguards", "=ds="..AL["Trainer"]};
        { 20, "s50960", "38419", "=q2=Nerubian Boots", "=ds="..AL["Trainer"]};
        Prev = "LeatherMailArmorWrath1";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherCloaks1"] = {
        { 1, "s60640", "43565", "=q4=Durable Nerubhide Cape", "=ds="..AL["Trainer"]};
        { 2, "s60637", "43566", "=q4=Ice Striker's Cloak", "=ds="..AL["Trainer"]};
        { 3, "s42546", "33122", "=q4=Cloak of Darkness", "=ds=#sr# 360"};
        { 4, "s22926", "18509", "=q4=Chromatic Cloak", "=ds=#sr# 300"};
        { 5, "s22928", "18511", "=q4=Shifting Cloak", "=ds=#sr# 300"};
        { 6, "s55199", "41238", "=q3=Cloak of Tormented Skies", "=ds="..AL["Trainer"]};
        { 7, "s60631", "38441", "=q3=Cloak of Harsh Winds", "=ds="..AL["Trainer"]};
        { 8, "s19093", "15138", "=q3=Onyxia Scale Cloak", "=ds=#sr# 300"};
        { 9, "s10574", "8215", "=q2=Wild Leather Cloak", "=ds=#sr# 250"};
        { 10, "s10562", "8216", "=q2=Big Voodoo Cloak", "=ds=#sr# 240"};
        { 11, "s7153", "5965", "=q2=Guardian Cloak", "=ds=#sr# 185"};
        { 12, "s9198", "7377", "=q2=Frost Leather Cloak", "=ds=#sr# 180"};
        { 13, "s9070", "7283", "=q2=Black Whelp Cloak", "=ds=#sr# 100"};
        { 14, "s7953", "6466", "=q2=Deviate Scale Cloak", "=ds=#sr# 90"};
        { 15, "s2159", "2308", "=q2=Fine Leather Cloak", "=ds=#sr# 85"};
        { 16, "s3760", "3719", "=q1=Hillman's Cloak", "=ds=#sr# 150"};
        { 17, "s2168", "2316", "=q1=Dark Leather Cloak", "=ds=#sr# 110"};
        { 18, "s2162", "2310", "=q1=Embossed Leather Cloak", "=ds=#sr# 60"};
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherItemEnhancement1"] = {
        { 1, "s57683", "Trade_LeatherWorking", "=ds=Fur Lining - Attack Power", "=ds="..AL["Trainer"]};
        { 2, "s57701", "Trade_LeatherWorking", "=ds=Fur Lining - Arcane Resist", "=ds="..AL["Drop"]};
        { 3, "s57692", "Trade_LeatherWorking", "=ds=Fur Lining - Fire Resist", "=ds="..AL["Drop"]};
        { 4, "s57694", "Trade_LeatherWorking", "=ds=Fur Lining - Frost Resist", "=ds="..AL["Drop"]};
        { 5, "s57699", "Trade_LeatherWorking", "=ds=Fur Lining - Nature Resist", "=ds="..AL["Drop"]};
        { 6, "s57696", "Trade_LeatherWorking", "=ds=Fur Lining - Shadow Resist", "=ds="..AL["Drop"]};
        { 7, "s57691", "Trade_LeatherWorking", "=ds=Fur Lining - Spell Power", "=ds="..AL["Trainer"]};
        { 8, "s57690", "Trade_LeatherWorking", "=ds=Fur Lining - Stamina", "=ds="..AL["Trainer"]};
        { 9, "s60583", "Trade_LeatherWorking", "=ds=Jormungar Leg Reinforcements", "=ds="..AL["Trainer"]};
        { 10, "s60584", "Trade_LeatherWorking", "=ds=Nerubian Leg Reinforcements", "=ds="..AL["Trainer"]};
        { 11, "s50965", "38373", "=q4=Frosthide Leg Armor", "=ds="..AL["Trainer"]};
		{ 12, "s50967", "38374", "=q4=Icescale Leg Armor", "=ds="..AL["Trainer"]};
        { 13, "s35557", "29536", "=q4=Nethercleft Leg Armor", "=ds=#sr# 365"};
		{ 14, "s35554", "29535", "=q4=Nethercobra Leg Armor", "=ds=#sr# 365"};
        { 15, "s50964", "38371", "=q3=Jormungar Leg Armor", "=ds="..AL["Trainer"]};
        { 16, "s50966", "38372", "=q3=Nerubian Leg Armor", "=ds="..AL["Trainer"]};
        { 17, "s35555", "29534", "=q3=Clefthide Leg Armor", "=ds=#sr# 335"};
		{ 18, "s35549", "29533", "=q3=Cobrahide Leg Armor", "=ds=#sr# 335"};
        { 19, "s22727", "18251", "=q3=Core Armor Kit", "=ds=#sr# 300"};
        { 20, "s50963", "38376", "=q2=Heavy Borean Armor Kit", "=ds="..AL["Trainer"]};
        { 21, "s44770", "34207", "=q2=Glove Reinforcements", "=ds=#sr# 350"};
        { 22, "s35524", "29488", "=q2=Arcane Armor Kit", "=ds=#sr# 340"};
		{ 23, "s35521", "29485", "=q2=Flame Armor Kit", "=ds=#sr# 340"};
		{ 24, "s35522", "29486", "=q2=Frost Armor Kit", "=ds=#sr# 340"};
        { 25, "s35523", "29487", "=q2=Nature Armor Kit", "=ds=#sr# 340"};
		{ 26, "s35520", "29483", "=q2=Shadow Armor Kit", "=ds=#sr# 340"};
        { 27, "s50962", "38375", "=q1=Borean Armor Kit", "=ds="..AL["Trainer"]};
        { 28, "s44970", "34330", "=q1=Heavy Knothide Armor Kit", "=ds=#sr# 350"};
        { 29, "s32458", "25652", "=q1=Magister's Armor Kit", "=ds=#sr# 325"};
		{ 30, "s32457", "25651", "=q1=Vindicator's Armor Kit", "=ds=#sr# 325"};
        Next = "LeatherItemEnhancement2";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherItemEnhancement2"] = {
        { 1, "s32456", "25650", "=q1=Knothide Armor Kit", "=ds=#sr# 300"};
        { 2, "s32482", "25679", "=q1=Comfortable Insoles", "=ds=#sr# 300"};
        { 3, "s19058", "15564", "=q1=Rugged Armor Kit", "=ds=#sr# 250"};
        { 4, "s10487", "8173", "=q1=Thick Armor Kit", "=ds=#sr# 200"};
        { 5, "s3780", "4265", "=q1=Heavy Armor Kit", "=ds=#sr# 150"};
        { 6, "s2165", "2313", "=q1=Medium Armor Kit", "=ds=#sr# 100"};
        { 7, "s2152", "2304", "=q1=Light Armor Kit", "=ds=#sr# 1"};
        Prev = "LeatherItemEnhancement1";
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherQuiversPouches1"] = {
        { 1, "s60645", "44447", "=q3=Dragonscale Ammo Pouch", "=ds="..BabbleFaction["The Kalu'ak"]..": "..BabbleFaction["Honored"]};
		{ 2, "s60647", "44448", "=q3=Nerubian Reinforced Quiver", "=ds="..BabbleFaction["Knights of the Ebon Blade"]..": "..BabbleFaction["Honored"]};
        { 3, "s44768", "34106", "=q3=Netherscale Ammo Pouch", "=ds=#sr# 350"};
		{ 4, "s44359", "34105", "=q3=Quiver of a Thousand Feathers", "=ds=#sr# 350"};
        { 5, "s44343", "34099", "=q2=Knothide Ammo Pouch", "=ds=#sr# 315"};
		{ 6, "s44344", "34100", "=q2=Knothide Quiver", "=ds=#sr# 315"};
        { 7, "s14930", "8217", "=q2=Quickdraw Quiver", "=ds=#sr# 225"};
		{ 8, "s14932", "8218", "=q2=Thick Leather Ammo Pouch", "=ds=#sr# 225"};
        { 9, "s9194", "7372", "=q2=Heavy Leather Ammo Pouch", "=ds=#sr# 150"};
		{ 10, "s9193", "7371", "=q2=Heavy Quiver", "=ds=#sr# 150"};
        { 11, "s9060", "7278", "=q1=Light Leather Quiver", "=ds=#sr# 30"};
		{ 12, "s9062", "7279", "=q1=Small Leather Ammo Pouch", "=ds=#sr# 30"};
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherDrumsBagsMisc1"] = {
        { 1, "s60643", "44446", "=q3=Pack of Endless Pockets", "=ds="..AL["Trainer"]};
        { 2, "s50970", "38399", "=q3=Trapper's Traveling Pack", "=ds="..BabbleFaction["The Kalu'ak"]..": "..BabbleFaction["Revered"]};
        { 3, "s50971", "38347", "=q3=Mammoth Mining Bag", "=ds="..BabbleFaction["The Sons of Hodir"]..": "..BabbleFaction["Honored"]};
        { 4, "s35543", "29529", "=q3=Drums of Battle", "=ds=#sr# 365"};
        { 5, "s45117", "34490", "=q3=Bag of Many Hides", "=ds=#sr# 360"};
        { 6, "s32461", "25653", "=q3=Riding Crop", "=ds=#sr# 350"};
        { 7, "s35538", "29532", "=q2=Drums of Panic", "=ds=#sr# 370"};
        { 8, "s35539", "29531", "=q2=Drums of Restoration", "=ds=#sr# 350"};
        { 9, "s35544", "29530", "=q2=Drums of Speed", "=ds=#sr# 345"};
        { 10, "s35540", "29528", "=q2=Drums of War", "=ds=#sr# 340"};
        { 11, "s35530", "29540", "=q2=Reinforced Mining Bag", "=ds=#sr# 325"};
        { 12, "s45100", "34482", "=q2=Leatherworker's Satchel", "=ds=#sr# 300"};
        { 13, "s22815", "18258", "=q2=Gordok Ogre Suit", "=ds=#sr# 275"};
        { 14, "s23190", "18662", "=q1=Heavy Leather Ball", "=ds=#sr# 150"};
        { 15, "s5244", "5081", "=q1=Kodo Hide Bag", "=ds=#sr# 40"};
        Back = "LEATHERWORKINGMENU";
        };
        
    AtlasLoot_Data["LeatherLeather1"] = {
        { 1, "s50936", "38425", "=q1=Heavy Borean Leather", "=ds="..AL["Trainer"]};
        { 2, "s32455", "23793", "=q1=Heavy Knothide Leather", "=ds=#sr# 325"};
        { 3, "s32454", "21887", "=q1=Knothide Leather", "=ds=#sr# 300"};
        { 4, "s22331", "8170", "=q1=Rugged Leather", "=ds=#sr# 250"};
		{ 5, "s19047", "15407", "=q1=Cured Rugged Hide", "=ds=#sr# 250"};
        { 6, "s20650", "4304", "=q1=Thick Leather", "=ds=#sr# 200"};
        { 7, "s10482", "8172", "=q1=Cured Thick Hide", "=ds=#sr# 200"};
        { 8, "s20649", "4234", "=q1=Heavy Leather", "=ds=#sr# 150"};
        { 9, "s3818", "4236", "=q1=Cured Heavy Hide", "=ds=#sr# 150"};
        { 10, "s20648", "2319", "=q1=Medium Leather", "=ds=#sr# 100"};
		{ 11, "s3817", "4233", "=q1=Cured Medium Hide", "=ds=#sr# 100"};
        { 12, "s3816", "4231", "=q1=Cured Light Hide", "=ds=#sr# 35"};
        { 13, "s2881", "2318", "=q1=Light Leather", "=ds=#sr# 1"};
        Back = "LEATHERWORKINGMENU";
        };
    
	AtlasLoot_Data["Dragonscale1"] = {
		{ 1, "s10619", "8347", "=q3=Dragonscale Gauntlets", "=ds=#sr# 225"};
		{ 2, "s10650", "8367", "=q3=Dragonscale Breastplate", "=ds=#sr# 255"};
		{ 3, "s36076", "29971", "=q3=Dragonstrike Leggings", "=ds=#sr# 260"};
		{ 4, "s24655", "20296", "=q3=Green Dragonscale Gauntlets", "=ds=#sr# 280"};
		{ 5, "s24654", "20295", "=q3=Blue Dragonscale Leggings", "=ds=#sr# 300"};
		{ 6, "s36079", "29975", "=q3=Golden Dragonstrike Breastplate", "=ds=#sr# 330"};
		{ 7, "s35576", "29516", "=q4=Ebon Netherscale Belt", "=ds=#sr# 375"};
		{ 8, "s35577", "29517", "=q4=Ebon Netherscale Bracers", "=ds=#sr# 375"};
		{ 9, "s35575", "29515", "=q4=Ebon Netherscale Breastplate", "=ds=#sr# 375"};
		{ 10, "s35582", "29520", "=q4=Netherstrike Belt", "=ds=#sr# 375"};
		{ 11, "s35584", "29521", "=q4=Netherstrike Bracers", "=ds=#sr# 375"};
		{ 12, "s35580", "29519", "=q4=Netherstrike Breastplate", "=ds=#sr# 375"};
		Next = "Elemental1";
		Back = "LEATHERWORKINGMENU";
	};

	AtlasLoot_Data["Elemental1"] = {
		{ 1, "s10630", "8346", "=q3=Gauntlets of the Sea", "=ds=#sr# 230"};
		{ 2, "s10632", "8348", "=q3=Helm of Fire", "=ds=#sr# 250"};
		{ 3, "s36074", "29964", "=q3=Blackstorm Leggings", "=ds=#sr# 260"};
		{ 4, "s36077", "29973", "=q3=Primalstorm Breastplate", "=ds=#sr# 330"};
		{ 5, "s35590", "29526", "=q4=Primalstrike Belt", "=ds=#sr# 375"};
		{ 6, "s35591", "29527", "=q4=Primalstrike Bracers", "=ds=#sr# 375"};
		{ 7, "s35589", "29525", "=q4=Primalstrike Vest", "=ds=#sr# 375"};
		Next = "Tribal1";
		Prev = "Dragonscale1";
		Back = "LEATHERWORKINGMENU";
	};

	AtlasLoot_Data["Tribal1"] = {
		{ 1, "s10621", "8345", "=q3=Wolfshead Helm", "=ds=#sr# 225"};
		{ 2, "s10647", "8349", "=q3=Feathered Breastplate", "=ds=#sr# 250"};
		{ 3, "s36075", "29970", "=q3=Wildfeather Leggings", "=ds=#sr# 260"};
		{ 4, "s36078", "29974", "=q3=Living Crystal Breastplate", "=ds=#sr# 330"};
		{ 5, "s35587", "29524", "=q4=Windhawk Belt", "=ds=#sr# 375"};
		{ 6, "s35588", "29523", "=q4=Windhawk Bracers", "=ds=#sr# 375"};
		{ 7, "s35585", "29522", "=q4=Windhawk Hauberk", "=ds=#sr# 375"};
		Prev = "Elemental1";
		Back = "LEATHERWORKINGMENU";
	};

		--------------
		--- Mining ---
		--------------

	AtlasLoot_Data["Mining1"] = {
		{ 1, "s2657", "2840", "=q1=Smelt Copper", "=ds=#sr# 1"};
		{ 2, "s3304", "3576", "=q1=Smelt Tin", "=ds=#sr# 65"};
		{ 3, "s2659", "2841", "=q1=Smelt Bronze", "=ds=#sr# 65"};
		{ 4, "s2658", "2842", "=q2=Smelt Silver", "=ds=#sr# 75"};
		{ 5, "s3307", "3575", "=q1=Smelt Iron", "=ds=#sr# 125"};
		{ 6, "s3308", "3577", "=q2=Smelt Gold", "=ds=#sr# 155"};
		{ 7, "s3569", "3859", "=q1=Smelt Steel", "=ds=#sr# 165"};
		{ 8, "s10097", "3860", "=q1=Smelt Mithril", "=ds=#sr# 175"};
		{ 9, "s10098", "6037", "=q2=Smelt Truesilver", "=ds=#sr# 230"};
		{ 10, "s14891", "11371", "=q1=Smelt Dark Iron", "=ds=#sr# 230"};
		{ 11, "s16153", "12359", "=q1=Smelt Thorium", "=ds=#sr# 250"};
		{ 12, "s22967", "17771", "=q5=Smelt Elementium", "=ds=#sr# 300"};
		{ 13, "s35750", "22573", "=q1=Earth Shatter", "=ds=#sr# 300"};
		{ 14, "s35751", "22574", "=q1=Fire Sunder", "=ds=#sr# 300"};
		{ 15, "s29356", "23445", "=q1=Smelt Fel Iron", "=ds=#sr# 300"};
		{ 16, "s29358", "23446", "=q1=Smelt Adamantite", "=ds=#sr# 325"};
		{ 17, "s29359", "23447", "=q2=Smelt Eternium", "=ds=#sr# 350"};
		{ 18, "s29360", "23448", "=q2=Smelt Felsteel", "=ds=#sr# 350"};
		{ 19, "s29361", "23449", "=q2=Smelt Khorium", "=ds=#sr# 375"};
		{ 20, "s29686", "23573", "=q1=Smelt Hardened Adamantite", "=ds=#sr# 375"};
		{ 21, "s46353", "35128", "=q2=Smelt Hardened Khorium", "=ds=#sr# 375"};
		{ 22, "s49252", "36916", "=q1=Smelt Cobalt", "=ds=#sr# 350"};
		{ 23, "s49258", "36913", "=q1=Smelt Saronite", "=ds=#sr# 400"};
        { 24, "s55211", "41163", "=q2=Smelt Titanium", "=ds=#sr# 450"};
		{ 25, "s55208", "37663", "=q2=Smelt Titansteel", "=ds=#sr# 450"};
		Back = "CRAFTINGMENU";
	};

		-----------------
		--- Tailoring ---
		-----------------

	AtlasLoot_Data["TailoringApprentice1"] = {
		{ 1, "s2963", "2996", "=q1=Bolt of Linen Cloth", "=ds=#sr# 1"};
		{ 2, "s3915", "4344", "=q1=Brown Linen Shirt", "=ds=#sr# 1"};
		{ 3, "s2387", "2570", "=q1=Linen Cloak", "=ds=#sr# 1"};
		{ 4, "s12044", "10045", "=q1=Simple Linen Pants", "=ds=#sr# 1"};
		{ 5, "s2393", "2576", "=q1=White Linen Shirt", "=ds=#sr# 1"};
		{ 6, "s2385", "2568", "=q1=Brown Linen Vest", "=ds=#sr# 10"};
		{ 7, "s8776", "7026", "=q1=Linen Belt", "=ds=#sr# 15"};
		{ 8, "s12045", "10046", "=q1=Simple Linen Boots", "=ds=#sr# 20"};
		{ 9, "s7623", "6238", "=q2=Brown Linen Robe", "=ds=#sr# 30"};
		{ 10, "s7624", "6241", "=q2=White Linen Robe", "=ds=#sr# 30"};
		{ 11, "s3914", "4343", "=q1=Brown Linen Pants", "=ds=#sr# 30"};
		{ 12, "s3840", "4307", "=q1=Heavy Linen Gloves", "=ds=#sr# 35"};
		{ 13, "s2389", "2572", "=q2=Red Linen Robe", "=ds=#sr# 40"};
		{ 14, "s2394", "2577", "=q1=Blue Linen Shirt", "=ds=#sr# 40"};
		{ 15, "s2392", "2575", "=q1=Red Linen Shirt", "=ds=#sr# 40"};
		{ 16, "s8465", "6786", "=q1=Simple Dress", "=ds=#sr# 40"};
		{ 17, "s3755", "4238", "=q1=Linen Bag", "=ds=#sr# 45"};
		Next = "TailoringJourneyman1";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringJourneyman1"] = {
		{ 1, "s7630", "6240", "=q2=Blue Linen Vest", "=ds=#sr# 55"};
		{ 2, "s7629", "6239", "=q2=Red Linen Vest", "=ds=#sr# 55"};
		{ 3, "s3841", "4308", "=q1=Green Linen Bracers", "=ds=#sr# 60"};
		{ 4, "s2397", "2580", "=q1=Reinforced Linen Cape", "=ds=#sr# 60"};
		{ 5, "s2386", "2569", "=q1=Linen Boots", "=ds=#sr# 65"};
		{ 6, "s2395", "2578", "=q2=Barbaric Linen Vest", "=ds=#sr# 70"};
		{ 7, "s7633", "6242", "=q2=Blue Linen Robe", "=ds=#sr# 70"};
		{ 8, "s3842", "4309", "=q2=Handstitched Linen Britches", "=ds=#sr# 70"};
		{ 9, "s2396", "2579", "=q1=Green Linen Shirt", "=ds=#sr# 70"};
		{ 10, "s6686", "5762", "=q1=Red Linen Bag", "=ds=#sr# 70"};
		{ 11, "s2964", "2997", "=q1=Bolt of Woolen Cloth", "=ds=#sr# 75"};
		{ 12, "s12046", "10047", "=q1=Simple Kilt", "=ds=#sr# 75"};
		{ 13, "s2402", "2584", "=q1=Woolen Cape", "=ds=#sr# 75"};
		{ 14, "s3845", "4312", "=q2=Soft-soled Linen Boots", "=ds=#sr# 80"};
		{ 15, "s3757", "4240", "=q1=Woolen Bag", "=ds=#sr# 80"};
		{ 16, "s3843", "4310", "=q2=Heavy Woolen Gloves", "=ds=#sr# 85"};
		{ 17, "s2399", "2582", "=q1=Green Woolen Vest", "=ds=#sr# 85"};
		{ 18, "s6521", "5542", "=q2=Pearl-clasped Cloak", "=ds=#sr# 90"};
		{ 19, "s3847", "4313", "=q2=Red Woolen Boots", "=ds=#sr# 95"};
		{ 20, "s2401", "2583", "=q2=Woolen Boots", "=ds=#sr# 95"};
		{ 21, "s3758", "4241", "=q1=Green Woolen Bag", "=ds=#sr# 95"};
		{ 22, "s2406", "2587", "=q1=Gray Woolen Shirt", "=ds=#sr# 100"};
		{ 23, "s7639", "6263", "=q2=Blue Overalls", "=ds=#sr# 100"};
		{ 24, "s3844", "4311", "=q2=Heavy Woolen Cloak", "=ds=#sr# 100"};
		{ 25, "s2403", "2585", "=q2=Gray Woolen Robe", "=ds=#sr# 105"};
		{ 26, "s3850", "4316", "=q2=Heavy Woolen Pants", "=ds=#sr# 110"};
		{ 27, "s3848", "4314", "=q1=Double-stitched Woolen Shoulders", "=ds=#sr# 110"};
		{ 28, "s3866", "4330", "=q1=Stylish Red Shirt", "=ds=#sr# 110"};
		{ 29, "s8467", "6787", "=q1=White Woolen Dress", "=ds=#sr# 110"};
		{ 30, "s7643", "6264", "=q2=Greater Adept's Robe", "=ds=#sr# 115"};
		Next = "TailoringJourneyman2";
		Prev = "TailoringApprentice1";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringJourneyman2"] = {
		{ 1, "s6688", "5763", "=q1=Red Woolen Bag", "=ds=#sr# 115"};
		{ 2, "s12047", "10048", "=q2=Colorful Kilt", "=ds=#sr# 120"};
		{ 3, "s3849", "4315", "=q1=Reinforced Woolen Shoulders", "=ds=#sr# 120"};
		{ 4, "s7892", "6384", "=q1=Stylish Blue Shirt", "=ds=#sr# 120"};
		{ 5, "s7893", "6385", "=q1=Stylish Green Shirt", "=ds=#sr# 120"};
		Next = "TailoringExpert1";
		Prev = "TailoringJourneyman1";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringExpert1"] = {
		{ 1, "s3839", "4305", "=q1=Bolt of Silk Cloth", "=ds=#sr# 125"};
		{ 2, "s3855", "4320", "=q3=Spidersilk Boots", "=ds=#sr# 125"};
		{ 3, "s3868", "4331", "=q2=Phoenix Gloves", "=ds=#sr# 125"};
		{ 4, "s3851", "4317", "=q2=Phoenix Pants", "=ds=#sr# 125"};
		{ 5, "s3852", "4318", "=q2=Gloves of Meditation", "=ds=#sr# 130"};
		{ 6, "s3869", "4332", "=q1=Bright Yellow Shirt", "=ds=#sr# 135"};
		{ 7, "s6690", "5766", "=q2=Lesser Wizard's Robe", "=ds=#sr# 135"};
		{ 8, "s8758", "7046", "=q2=Azure Silk Pants", "=ds=#sr# 140"};
		{ 9, "s3856", "4321", "=q2=Spider Silk Slippers", "=ds=#sr# 140"};
		{ 10, "s8760", "7048", "=q1=Azure Silk Hood", "=ds=#sr# 145"};
		{ 11, "s3854", "4319", "=q2=Azure Silk Gloves", "=ds=#sr# 145"};
		{ 12, "s8780", "7047", "=q2=Hands of Darkness", "=ds=#sr# 145"};
		{ 13, "s3859", "4324", "=q2=Azure Silk Vest", "=ds=#sr# 150"};
		{ 14, "s6692", "5770", "=q2=Robes of Arcana", "=ds=#sr# 150"};
		{ 15, "s8782", "7049", "=q2=Truefaith Gloves", "=ds=#sr# 150"};
		{ 16, "s3813", "4245", "=q1=Small Silk Pack", "=ds=#sr# 150"};
		{ 17, "s3870", "4333", "=q1=Dark Silk Shirt", "=ds=#sr# 155"};
		{ 18, "s8762", "7050", "=q1=Silk Headband", "=ds=#sr# 160"};
		{ 19, "s8483", "6795", "=q1=White Swashbuckler's Shirt", "=ds=#sr# 160"};
		{ 20, "s3857", "4322", "=q2=Enchanter's Cowl", "=ds=#sr# 165"};
		{ 21, "s8784", "7065", "=q2=Green Silk Armor", "=ds=#sr# 165"};
		{ 22, "s3871", "4334", "=q1=Formal White Shirt", "=ds=#sr# 170"};
		{ 23, "s8764", "7051", "=q2=Earthen Vest", "=ds=#sr# 170"};
		{ 24, "s3858", "4323", "=q2=Shadow Hood", "=ds=#sr# 170"};
		{ 25, "s3865", "4339", "=q1=Bolt of Mageweave", "=ds=#sr# 175"};
		{ 26, "s8489", "6796", "=q1=Red Swashbuckler's Shirt", "=ds=#sr# 175"};
		{ 27, "s8766", "7052", "=q2=Azure Silk Belt", "=ds=#sr# 175"};
		{ 28, "s8786", "7053", "=q2=Azure Silk Cloak", "=ds=#sr# 175"};
		{ 29, "s3860", "4325", "=q2=Boots of the Enchanter", "=ds=#sr# 175"};
		{ 30, "s8772", "7055", "=q2=Crimson Silk Belt", "=ds=#sr# 175"};
		Next = "TailoringExpert2";
		Prev = "TailoringJourneyman2";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringExpert2"] = {
		{ 1, "s6693", "5764", "=q1=Green Silk Pack", "=ds=#sr# 175"};
		{ 2, "s8789", "7056", "=q2=Crimson Silk Cloak", "=ds=#sr# 180"};
		{ 3, "s8774", "7057", "=q2=Green Silken Shoulders", "=ds=#sr# 180"};
		{ 4, "s3863", "4328", "=q2=Spider Belt", "=ds=#sr# 180"};
		{ 5, "s3872", "4335", "=q1=Rich Purple Silk Shirt", "=ds=#sr# 185"};
		{ 6, "s8791", "7058", "=q1=Crimson Silk Vest", "=ds=#sr# 185"};
		{ 7, "s3861", "4326", "=q2=Long Silken Cloak", "=ds=#sr# 185"};
		{ 8, "s6695", "5765", "=q1=Black Silk Pack", "=ds=#sr# 185"};
		{ 9, "s21945", "17723", "=q1=Green Holiday Shirt", "=ds=#sr# 190"};
		{ 10, "s8770", "7054", "=q3=Robe of Power", "=ds=#sr# 190"};
		{ 11, "s8795", "7060", "=q2=Azure Shoulders", "=ds=#sr# 190"};
		{ 12, "s8793", "7059", "=q2=Crimson Silk Shoulders", "=ds=#sr# 190"};
		{ 13, "s8799", "7062", "=q1=Crimson Silk Pantaloons", "=ds=#sr# 195"};
		{ 14, "s8797", "7061", "=q2=Earthen Silk Belt", "=ds=#sr# 195"};
		Next = "TailoringArtisan1";
		Prev = "TailoringExpert1";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringArtisan1"] = {
		{ 1, "s3873", "4336", "=q1=Black Swashbuckler's Shirt", "=ds=#sr# 200"};
		{ 2, "s3862", "4327", "=q3=Icy Cloak", "=ds=#sr# 200"};
		{ 3, "s3864", "4329", "=q2=Star Belt", "=ds=#sr# 200"};
		{ 4, "s12049", "9999", "=q2=Black Mageweave Leggings", "=ds=#sr# 205"};
		{ 5, "s12048", "9998", "=q2=Black Mageweave Vest", "=ds=#sr# 205"};
		{ 6, "s8802", "7063", "=q2=Crimson Silk Robe", "=ds=#sr# 205"};
		{ 7, "s12050", "10001", "=q2=Black Mageweave Robe", "=ds=#sr# 210"};
		{ 8, "s8804", "7064", "=q2=Crimson Silk Gloves", "=ds=#sr# 210"};
		{ 9, "s12052", "10002", "=q2=Shadoweave Pants", "=ds=#sr# 210"};
		{ 10, "s12059", "10008", "=q2=White Bandit Mask", "=ds=#sr# 215"};
		{ 11, "s12061", "10056", "=q1=Orange Mageweave Shirt", "=ds=#sr# 215"};
		{ 12, "s12053", "10003", "=q2=Black Mageweave Gloves", "=ds=#sr# 215"};
		{ 13, "s12060", "10009", "=q2=Red Mageweave Pants", "=ds=#sr# 215"};
		{ 14, "s12056", "10007", "=q2=Red Mageweave Vest", "=ds=#sr# 215"};
		{ 15, "s12055", "10004", "=q2=Shadoweave Robe", "=ds=#sr# 215"};
		{ 16, "s12064", "10052", "=q1=Orange Martial Shirt", "=ds=#sr# 220"};
		{ 17, "s12067", "10019", "=q3=Dreamweave Gloves", "=ds=#sr# 225"};
		{ 18, "s12070", "10021", "=q3=Dreamweave Vest", "=ds=#sr# 225"};
		{ 19, "s12069", "10042", "=q2=Cindercloth Robe", "=ds=#sr# 225"};
		{ 20, "s27658", "22246", "=q2=Enchanted Mageweave Pouch", "=ds=#sr# 225"};
		{ 21, "s12066", "10018", "=q2=Red Mageweave Gloves", "=ds=#sr# 225"};
		{ 22, "s12071", "10023", "=q2=Shadoweave Gloves", "=ds=#sr# 225"};
		{ 23, "s12065", "10050", "=q1=Mageweave Bag", "=ds=#sr# 225"};
		{ 24, "s12075", "10054", "=q1=Lavender Mageweave Shirt", "=ds=#sr# 230"};
		{ 25, "s12073", "10026", "=q2=Black Mageweave Boots", "=ds=#sr# 230"};
		{ 26, "s12072", "10024", "=q2=Black Mageweave Headband", "=ds=#sr# 230"};
		{ 27, "s12074", "10027", "=q2=Black Mageweave Shoulders", "=ds=#sr# 230"};
		{ 28, "s12080", "10055", "=q1=Pink Mageweave Shirt", "=ds=#sr# 235"};
		{ 29, "s12077", "10053", "=q1=Simple Black Dress", "=ds=#sr# 235"};
		{ 30, "s12078", "10029", "=q2=Red Mageweave Shoulders", "=ds=#sr# 235"};
		Next = "TailoringArtisan2";
		Prev = "TailoringExpert2";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringArtisan2"] = {
		{ 1, "s12076", "10028", "=q2=Shadoweave Shoulders", "=ds=#sr# 235"};
		{ 2, "s12079", "10051", "=q1=Red Mageweave Bag", "=ds=#sr# 235"};
		{ 3, "s12085", "10034", "=q1=Tuxedo Shirt", "=ds=#sr# 240"};
		{ 4, "s12081", "10030", "=q2=Admiral's Hat", "=ds=#sr# 240"};
		{ 5, "s12084", "10033", "=q2=Red Mageweave Headband", "=ds=#sr# 240"};
		{ 6, "s12082", "10031", "=q2=Shadoweave Boots", "=ds=#sr# 240"};
		{ 7, "s12089", "10035", "=q1=Tuxedo Pants", "=ds=#sr# 245"};
		{ 8, "s12088", "10044", "=q2=Cindercloth Boots", "=ds=#sr# 245"};
		{ 9, "s12086", "10025", "=q2=Shadoweave Mask", "=ds=#sr# 245"};
		{ 10, "s44950", "34087", "=q1=Green Winter Clothes", "=ds=#sr# 250"};
		{ 11, "s44958", "34085", "=q1=Red Winter Clothes", "=ds=#sr# 250"};
		{ 12, "s18401", "14048", "=q1=Bolt of Runecloth", "=ds=#sr# 250"};
		{ 13, "s12091", "10040", "=q1=White Wedding Dress", "=ds=#sr# 250"};
		{ 14, "s12092", "10041", "=q3=Dreamweave Circlet", "=ds=#sr# 250"};
		{ 15, "s26403", "21154", "=q1=Festival Dress", "=ds=#sr# 250"};
		{ 16, "s26407", "21542", "=q1=Festive Red Pant Suit", "=ds=#sr# 250"};
		{ 17, "s12093", "10036", "=q1=Tuxedo Jacket", "=ds=#sr# 250"};
		{ 18, "s18560", "14342", "=q1=Mooncloth", "=ds=#sr# 250"};
		{ 19, "s18404", "13868", "=q2=Frostweave Robe", "=ds=#sr# 255"};
		{ 20, "s18403", "13869", "=q2=Frostweave Tunic", "=ds=#sr# 255"};
		{ 21, "s18402", "13856", "=q2=Runecloth Belt", "=ds=#sr# 255"};
		{ 22, "s18408", "14042", "=q2=Cindercloth Vest", "=ds=#sr# 260"};
		{ 23, "s18406", "13858", "=q2=Runecloth Robe", "=ds=#sr# 260"};
		{ 24, "s18407", "13857", "=q2=Runecloth Tunic", "=ds=#sr# 260"};
		{ 25, "s26085", "21340", "=q2=Soul Pouch", "=ds=#sr# 260"};
		{ 26, "s18405", "14046", "=q1=Runecloth Bag", "=ds=#sr# 260"};
		{ 27, "s18411", "13870", "=q2=Frostweave Gloves", "=ds=#sr# 265"};
		{ 28, "s18410", "14143", "=q2=Ghostweave Belt", "=ds=#sr# 265"};
		{ 29, "s18409", "13860", "=q2=Runecloth Cloak", "=ds=#sr# 265"};
		{ 30, "s18415", "14101", "=q2=Brightcloth Gloves", "=ds=#sr# 270"};
		Next = "TailoringArtisan3";
		Prev = "TailoringArtisan1";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringArtisan3"] = {
		{ 1, "s18414", "14100", "=q2=Brightcloth Robe", "=ds=#sr# 270"};
		{ 2, "s18412", "14043", "=q2=Cindercloth Gloves", "=ds=#sr# 270"};
		{ 3, "s18413", "14142", "=q2=Ghostweave Gloves", "=ds=#sr# 270"};
		Next = "TailoringMaster1";
		Prev = "TailoringArtisan2";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringMaster1"] = {
		{ 1, "s22813", "18258", "=q2=Gordok Ogre Suit", "=ds=#sr# 275"};
		{ 2, "s18422", "14134", "=q3=Cloak of Fire", "=ds=#sr# 275"};
		{ 3, "s18420", "14103", "=q2=Brightcloth Cloak", "=ds=#sr# 275"};
		{ 4, "s27724", "22251", "=q2=Cenarion Herb Bag", "=ds=#sr# 275"};
		{ 5, "s18418", "14044", "=q2=Cindercloth Cloak", "=ds=#sr# 275"};
		{ 6, "s27659", "22248", "=q2=Enchanted Runecloth Bag", "=ds=#sr# 275"};
		{ 7, "s18419", "14107", "=q2=Felcloth Pants", "=ds=#sr# 275"};
		{ 8, "s18416", "14141", "=q2=Ghostweave Vest", "=ds=#sr# 275"};
		{ 9, "s18417", "13863", "=q2=Runecloth Gloves", "=ds=#sr# 275"};
		{ 10, "s18421", "14132", "=q2=Wizardweave Leggings", "=ds=#sr# 275"};
		{ 11, "s18434", "14045", "=q2=Cindercloth Pants", "=ds=#sr# 280"};
		{ 12, "s18424", "13871", "=q2=Frostweave Pants", "=ds=#sr# 280"};
		{ 13, "s18423", "13864", "=q2=Runecloth Boots", "=ds=#sr# 280"};
		{ 14, "s26086", "21341", "=q3=Felcloth Bag", "=ds=#sr# 280"};
		{ 15, "s18436", "14136", "=q3=Robe of Winter Night", "=ds=#sr# 285"};
		{ 16, "s18437", "14108", "=q2=Felcloth Boots", "=ds=#sr# 285"};
		{ 17, "s18438", "13865", "=q2=Runecloth Pants", "=ds=#sr# 285"};
		{ 18, "s19435", "15802", "=q3=Mooncloth Boots", "=ds=#sr# 290"};
		{ 19, "s23664", "19056", "=q3=Argent Boots", "=ds=#sr# 290"};
		{ 20, "s18440", "14137", "=q3=Mooncloth Leggings", "=ds=#sr# 290"};
		{ 21, "s23662", "19047", "=q3=Wisdom of the Timbermaw", "=ds=#sr# 290"};
		{ 22, "s18439", "14104", "=q2=Brightcloth Pants", "=ds=#sr# 290"};
		{ 23, "s18442", "14111", "=q2=Felcloth Hood", "=ds=#sr# 290"};
		{ 24, "s18441", "14144", "=q2=Ghostweave Pants", "=ds=#sr# 290"};
		{ 25, "s18444", "13866", "=q2=Runecloth Headband", "=ds=#sr# 295"};
		{ 26, "s31460", "24268", "=q1=Netherweave Net", "=ds=#sr# 300"};
		{ 27, "s26745", "21840", "=q1=Bolt of Netherweave", "=ds=#sr# 300"};
		{ 28, "s22866", "18405", "=q4=Belt of the Archmage", "=ds=#sr# 300"};
		{ 29, "s26087", "21342", "=q4=Core Felcloth Bag", "=ds=#sr# 300"};
		{ 30, "s20849", "16979", "=q4=Flarecore Gloves", "=ds=#sr# 300"};
		Next = "TailoringMaster2";
		Prev = "TailoringArtisan3";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringMaster2"] = {
		{ 1, "s23667", "19165", "=q4=Flarecore Leggings", "=ds=#sr# 300"};
		{ 2, "s20848", "16980", "=q4=Flarecore Mantle", "=ds=#sr# 300"};
		{ 3, "s23666", "19156", "=q4=Flarecore Robe", "=ds=#sr# 300"};
		{ 4, "s28208", "22658", "=q4=Glacial Cloak", "=ds=#sr# 300"};
		{ 5, "s28205", "22654", "=q4=Glacial Gloves", "=ds=#sr# 300"};
		{ 6, "s28207", "22652", "=q4=Glacial Vest", "=ds=#sr# 300"};
		{ 7, "s28209", "22655", "=q4=Glacial Wrists", "=ds=#sr# 300"};
		{ 8, "s18454", "14146", "=q4=Gloves of Spell Mastery", "=ds=#sr# 300"};
		{ 9, "s18457", "14152", "=q4=Robe of the Archmage", "=ds=#sr# 300"};
		{ 10, "s18458", "14153", "=q4=Robe of the Void", "=ds=#sr# 300"};
		{ 11, "s18456", "14154", "=q4=Truefaith Vestments", "=ds=#sr# 300"};
		{ 12, "s23665", "19059", "=q3=Argent Shoulders", "=ds=#sr# 300"};
		{ 13, "s24093", "19684", "=q3=Bloodvine Boots", "=ds=#sr# 300"};
		{ 14, "s24092", "19683", "=q3=Bloodvine Leggings", "=ds=#sr# 300"};
		{ 15, "s24091", "19682", "=q3=Bloodvine Vest", "=ds=#sr# 300"};
		{ 16, "s18455", "14156", "=q3=Bottomless Bag", "=ds=#sr# 300"};
		{ 17, "s22870", "18413", "=q3=Cloak of Warding", "=ds=#sr# 300"};
		{ 18, "s22867", "18407", "=q3=Felcloth Gloves", "=ds=#sr# 300"};
		{ 19, "s28210", "22660", "=q3=Gaea's Embrace", "=ds=#sr# 300"};
		{ 20, "s22868", "18408", "=q3=Inferno Gloves", "=ds=#sr# 300"};
		{ 21, "s23663", "19050", "=q3=Mantle of the Timbermaw", "=ds=#sr# 300"};
		{ 22, "s18452", "14140", "=q3=Mooncloth Circlet", "=ds=#sr# 300"};
		{ 23, "s22869", "18409", "=q3=Mooncloth Gloves", "=ds=#sr# 300"};
		{ 24, "s22902", "18486", "=q3=Mooncloth Robe", "=ds=#sr# 300"};
		{ 25, "s18448", "14139", "=q3=Mooncloth Shoulders", "=ds=#sr# 300"};
		{ 26, "s18447", "14138", "=q3=Mooncloth Vest", "=ds=#sr# 300"};
		{ 27, "s24902", "20539", "=q3=Runed Stygian Belt", "=ds=#sr# 300"};
		{ 28, "s24903", "20537", "=q3=Runed Stygian Boots", "=ds=#sr# 300"};
		{ 29, "s24901", "20538", "=q3=Runed Stygian Leggings", "=ds=#sr# 300"};
		{ 30, "s28481", "22757", "=q3=Sylvan Crown", "=ds=#sr# 300"};
		Next = "TailoringMaster3";
		Prev = "TailoringMaster1";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringMaster3"] = {
		{ 1, "s28482", "22758", "=q3=Sylvan Shoulders", "=ds=#sr# 300"};
		{ 2, "s28480", "22756", "=q3=Sylvan Vest", "=ds=#sr# 300"};
		{ 3, "s27660", "22249", "=q2=Big Bag of Enchantment", "=ds=#sr# 300"};
		{ 4, "s18451", "14106", "=q2=Felcloth Robe", "=ds=#sr# 300"};
		{ 5, "s18453", "14112", "=q2=Felcloth Shoulders", "=ds=#sr# 300"};
		{ 6, "s18445", "14155", "=q2=Mooncloth Bag", "=ds=#sr# 300"};
		{ 7, "s18449", "13867", "=q2=Runecloth Shoulders", "=ds=#sr# 300"};
		{ 8, "s27725", "22252", "=q2=Satchel of Cenarius", "=ds=#sr# 300"};
		{ 9, "s18446", "14128", "=q2=Wizardweave Robe", "=ds=#sr# 300"};
		{ 10, "s18450", "14130", "=q2=Wizardweave Turban", "=ds=#sr# 300"};
		{ 11, "s22759", "18263", "=q4=Flarecore Wraps", "=ds=#sr# 300"};
		{ 12, "s26765", "21850", "=q2=Netherweave Belt", "=ds=#sr# 310"};
		{ 13, "s26764", "21849", "=q2=Netherweave Bracers", "=ds=#sr# 310"};
		{ 14, "s26746", "21841", "=q2=Netherweave Bag", "=ds=#sr# 315"};
		{ 15, "s26770", "21851", "=q2=Netherweave Gloves", "=ds=#sr# 320"};
		{ 16, "s26747", "21842", "=q2=Bolt of Imbued Netherweave", "=ds=#sr# 325"};
		{ 17, "s26771", "21852", "=q2=Netherweave Pants", "=ds=#sr# 325"};
		{ 18, "s31430", "24273", "=q3=Mystic Spellthread", "=ds=#sr# 335"};
		{ 19, "s31431", "24275", "=q3=Silver Spellthread", "=ds=#sr# 335"};
		{ 20, "s26772", "21853", "=q2=Netherweave Boots", "=ds=#sr# 335"};
		{ 21, "s26749", "21843", "=q2=Imbued Netherweave Bag", "=ds=#sr# 340"};
		{ 22, "s26775", "21859", "=q3=Imbued Netherweave Pants", "=ds=#sr# 340"};
		{ 23, "s31459", "24270", "=q2=Bag of Jewels", "=ds=#sr# 340"};
		{ 24, "s26773", "21854", "=q2=Netherweave Robe", "=ds=#sr# 340"};
		{ 25, "s26750", "21844", "=q1=Bolt of Soulcloth", "=ds=#sr# 345"};
		{ 26, "s26774", "21855", "=q2=Netherweave Tunic", "=ds=#sr# 345"};
		{ 27, "s26751", "21845", "=q3=Primal Mooncloth", "=ds=#sr# 350"};
		{ 28, "s36686", "24272", "=q3=Shadowcloth", "=ds=#sr# 350"};
		{ 29, "s31373", "24271", "=q3=Spellcloth", "=ds=#sr# 350"};
		{ 30, "s26782", "21866", "=q3=Arcanoweave Bracers", "=ds=#sr# 350"};
		Next = "TailoringMaster4";
		Prev = "TailoringMaster2";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringMaster4"] = {
		{ 1, "s31437", "24251", "=q3=Blackstrike Bracers", "=ds=#sr# 350"};
		{ 2, "s31435", "24250", "=q3=Bracers of Havok", "=ds=#sr# 350"};
		{ 3, "s37873", "30831", "=q3=Cloak of Arcane Evasion", "=ds=#sr# 350"};
		{ 4, "s31440", "24253", "=q3=Cloak of Eternity", "=ds=#sr# 350"};
		{ 5, "s31438", "24252", "=q3=Cloak of the Black Void", "=ds=#sr# 350"};
		{ 6, "s37882", "30837", "=q3=Flameheart Bracers", "=ds=#sr# 350"};
		{ 7, "s26776", "21860", "=q3=Imbued Netherweave Boots", "=ds=#sr# 350"};
		{ 8, "s31434", "24249", "=q3=Unyielding Bracers", "=ds=#sr# 350"};
		{ 9, "s31441", "24254", "=q3=White Remedy Cape", "=ds=#sr# 350"};
		{ 10, "s26756", "21869", "=q4=Frozen Shadoweave Shoulders", "=ds=#sr# 355"};
		{ 11, "s26760", "21873", "=q4=Primal Mooncloth Belt", "=ds=#sr# 355"};
		{ 12, "s26779", "21863", "=q4=Soulcloth Gloves", "=ds=#sr# 355"};
		{ 13, "s26752", "21846", "=q4=Spellfire Belt", "=ds=#sr# 355"};
		{ 14, "s26783", "21867", "=q3=Arcanoweave Boots", "=ds=#sr# 360"};
		{ 15, "s37883", "30838", "=q3=Flameheart Gloves", "=ds=#sr# 360"};
		{ 16, "s26777", "21861", "=q3=Imbued Netherweave Robe", "=ds=#sr# 360"};
		{ 17, "s26778", "21862", "=q3=Imbued Netherweave Tunic", "=ds=#sr# 360"};
		{ 18, "s31444", "24257", "=q4=Black Belt of Knowledge", "=ds=#sr# 365"};
		{ 19, "s26757", "21870", "=q4=Frozen Shadoweave Boots", "=ds=#sr# 365"};
		{ 20, "s31443", "24256", "=q4=Girdle of Ruination", "=ds=#sr# 365"};
		{ 21, "s31450", "24260", "=q4=Manaweave Cloak", "=ds=#sr# 365"};
		{ 22, "s26761", "21874", "=q4=Primal Mooncloth Shoulders", "=ds=#sr# 365"};
		{ 23, "s31448", "24258", "=q4=Resolute Cape", "=ds=#sr# 365"};
		{ 24, "s26780", "21864", "=q4=Soulcloth Shoulders", "=ds=#sr# 365"};
		{ 25, "s26753", "21847", "=q4=Spellfire Gloves", "=ds=#sr# 365"};
		{ 26, "s31442", "24255", "=q4=Unyielding Girdle", "=ds=#sr# 365"};
		{ 27, "s31449", "24259", "=q4=Vengeance Wrap", "=ds=#sr# 365"};
		{ 28, "s46129", "34367", "=q4=Hands of Eternal Light", "=ds=#sr# 365"};
		{ 29, "s46131", "34365", "=q4=Robe of Eternal Light", "=ds=#sr# 365"};
		{ 30, "s46128", "34366", "=q4=Sunfire Handwraps", "=ds=#sr# 365"};
		Next = "TailoringMaster5";
		Prev = "TailoringMaster3";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringMaster5"] = {
		{ 1, "s46130", "34364", "=q4=Sunfire Robe", "=ds=#sr# 365"};
		{ 2, "s26784", "21868", "=q3=Arcanoweave Robe", "=ds=#sr# 370"};
		{ 3, "s37884", "30839", "=q3=Flameheart Vest", "=ds=#sr# 370"};
		{ 4, "s31456", "24267", "=q4=Battlecast Hood", "=ds=#sr# 375"};
		{ 5, "s31453", "24263", "=q4=Battlecast Pants", "=ds=#sr# 375"};
		{ 6, "s36315", "30038", "=q4=Belt of Blasting", "=ds=#sr# 375"};
		{ 7, "s36316", "30036", "=q4=Belt of the Long Road", "=ds=#sr# 375"};
		{ 8, "s36317", "30037", "=q4=Boots of Blasting", "=ds=#sr# 375"};
		{ 9, "s36318", "30035", "=q4=Boots of the Long Road", "=ds=#sr# 375"};
		{ 10, "s41205", "32586", "=q4=Bracers of Nimble Thought", "=ds=#sr# 375"};
		{ 11, "s26758", "21871", "=q4=Frozen Shadoweave Robe", "=ds=#sr# 375"};
		{ 12, "s31433", "24276", "=q4=Golden Spellthread", "=ds=#sr# 375"};
		{ 13, "s41206", "32587", "=q4=Mantle of Nimble Thought", "=ds=#sr# 375"};
		{ 14, "s40060", "32420", "=q4=Night's End", "=ds=#sr# 375"};
		{ 15, "s26762", "21875", "=q4=Primal Mooncloth Robe", "=ds=#sr# 375"};
		{ 16, "s31432", "24274", "=q4=Runic Spellthread", "=ds=#sr# 375"};
		{ 17, "s26781", "21865", "=q4=Soulcloth Vest", "=ds=#sr# 375"};
		{ 18, "s40021", "32392", "=q4=Soulguard Bracers", "=ds=#sr# 375"};
		{ 19, "s40024", "32390", "=q4=Soulguard Girdle", "=ds=#sr# 375"};
		{ 20, "s40023", "32389", "=q4=Soulguard Leggings", "=ds=#sr# 375"};
		{ 21, "s40020", "32391", "=q4=Soulguard Slippers", "=ds=#sr# 375"};
		{ 22, "s26754", "21848", "=q4=Spellfire Robe", "=ds=#sr# 375"};
		{ 23, "s31455", "24266", "=q4=Spellstrike Hood", "=ds=#sr# 375"};
		{ 24, "s31452", "24262", "=q4=Spellstrike Pants", "=ds=#sr# 375"};
		{ 25, "s41208", "32585", "=q4=Swiftheal Mantle", "=ds=#sr# 375"};
		{ 26, "s41207", "32584", "=q4=Swiftheal Wraps", "=ds=#sr# 375"};
		{ 27, "s31454", "24264", "=q4=Whitemend Hood", "=ds=#sr# 375"};
		{ 28, "s31451", "24261", "=q4=Whitemend Pants", "=ds=#sr# 375"};
		{ 29, "s26759", "21872", "=q3=Ebon Shadowbag", "=ds=#sr# 375"};
		{ 30, "s26763", "21876", "=q3=Primal Mooncloth Bag", "=ds=#sr# 375"};
		Next = "TailoringMaster6";
		Prev = "TailoringMaster4";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["TailoringMaster6"] = {
		{ 1, "s26755", "21858", "=q3=Spellfire Bag", "=ds=#sr# 375"};
		{ 2, "s36670", "30463", "=q3=Lifeblood Belt", "=ds=#sr# "..AL["Unknown"]};
		{ 3, "s36672", "30464", "=q3=Lifeblood Bracers", "=ds=#sr# "..AL["Unknown"]};
		{ 4, "s36669", "30465", "=q3=Lifeblood Leggings", "=ds=#sr# "..AL["Unknown"]};
		{ 5, "s36667", "30460", "=q3=Netherflame Belt", "=ds=#sr# "..AL["Unknown"]};
		{ 6, "s36668", "30461", "=q3=Netherflame Boots", "=ds=#sr# "..AL["Unknown"]};
		{ 7, "s36665", "30459", "=q3=Netherflame Robe", "=ds=#sr# "..AL["Unknown"]};
		Next = "Mooncloth1";
		Prev = "TailoringMaster5";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["Mooncloth1"] = {
		{ 1, "s26760", "21873", "=q4=Primal Mooncloth Belt", "=ds=#sr# 355"};
		{ 2, "s26761", "21874", "=q4=Primal Mooncloth Shoulders", "=ds=#sr# 365"};
		{ 3, "s26762", "21875", "=q4=Primal Mooncloth Robe", "=ds=#sr# 375"};
		Next = "Shadoweave1";
		Prev = "TailoringMaster6";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["Shadoweave1"] = {
		{ 1, "s26756", "21869", "=q4=Frozen Shadoweave Shoulders", "=ds=#sr# 355"};
		{ 2, "s26757", "21870", "=q4=Frozen Shadoweave Boots", "=ds=#sr# 365"};
		{ 3, "s26758", "21871", "=q4=Frozen Shadoweave Robe", "=ds=#sr# 375"};
		Next = "Spellfire1";
		Prev = "Mooncloth1";
		Back = "TAILORINGMENU";
	};

	AtlasLoot_Data["Spellfire1"] = {
		{ 1, "s26752", "21846", "=q4=Spellfire Belt", "=ds=#sr# 355"};
		{ 2, "s26753", "21847", "=q4=Spellfire Gloves", "=ds=#sr# 365"};
		{ 3, "s26754", "21848", "=q4=Spellfire Robe", "=ds=#sr# 375"};
		Prev = "Shadoweave1";
		Back = "TAILORINGMENU";
	};

	-----------------------
	--- Profession Sets ---
	-----------------------

		-------------------------------
		--- Blacksmithing Mail Sets ---
		-------------------------------

	AtlasLoot_Data["BloodsoulEmbrace"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbm1#", ""};
		{ 2, 19691, "", "=q3=Bloodsoul Shoulders", "=ds=#s3#, #a3#"};
		{ 3, 19690, "", "=q3=Bloodsoul Breastplate", "=ds=#s5#, #a3#"};
		{ 4, 19692, "", "=q3=Bloodsoul Gauntlets", "=ds=#s9#, #a3#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["FelIronChain"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbm2#", ""};
		{ 2, 23493, "", "=q2=Fel Iron Chain Coif", "=ds=#s1#, #a3#"};
		{ 3, 23490, "", "=q2=Fel Iron Chain Tunic", "=ds=#s5#, #a3#"};
		{ 4, 23494, "", "=q2=Fel Iron Chain Bracers", "=ds=#s8#, #a3#"};
		{ 5, 23491, "", "=q2=Fel Iron Chain Gloves", "=ds=#s9#, #a3#"};
		Back = "CRAFTSET";
	};

		--------------------------------
		--- Blacksmithing Plate Sets ---
		--------------------------------

	AtlasLoot_Data["ImperialPlate"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp1#", ""};
		{ 2, 12427, "", "=q2=Imperial Plate Helm", "=ds=#s1#, #a4#"};
		{ 3, 12428, "", "=q2=Imperial Plate Shoulders", "=ds=#s3#, #a4#"};
		{ 4, 12422, "", "=q2=Imperial Plate Chest", "=ds=#s5#, #a4#"};
		{ 5, 12425, "", "=q2=Imperial Plate Bracers", "=ds=#s8#, #a4#"};
		{ 6, 12424, "", "=q2=Imperial Plate Belt", "=ds=#s10#, #a4#"};
		{ 7, 12429, "", "=q2=Imperial Plate Leggings", "=ds=#s11#, #a4#"};
		{ 8, 12426, "", "=q2=Imperial Plate Boots", "=ds=#s12#, #a4#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["TheDarksoul"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp2#", ""};
		{ 2, 19695, "", "=q3=Darksoul Shoulders", "=ds=#s3#, #a4#"};
		{ 3, 19693, "", "=q3=Darksoul Breastplate", "=ds=#s5#, #a4#"};
		{ 4, 19694, "", "=q3=Darksoul Leggings", "=ds=#s11#, #a4#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["FelIronPlate"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp3#", ""};
		{ 2, 23489, "", "=q2=Fel Iron Breastplate", "=ds=#s5#, #a4#"};
		{ 3, 23482, "", "=q2=Fel Iron Plate Gloves", "=ds=#s9#, #a4#"};
		{ 4, 23484, "", "=q2=Fel Iron Plate Belt", "=ds=#s10#, #a4#"};
		{ 5, 23488, "", "=q2=Fel Iron Plate Pants", "=ds=#s11#, #a4#"};
		{ 6, 23487, "", "=q2=Fel Iron Plate Boots", "=ds=#s12#, #a4#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["AdamantiteB"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp4#", ""};
		{ 2, 23507, "", "=q3=Adamantite Breastplate", "=ds=#s5#, #a4#"};
		{ 3, 23506, "", "=q3=Adamantite Plate Bracers", "=ds=#s8#, #a4#"};
		{ 4, 23508, "", "=q3=Adamantite Plate Gloves", "=ds=#s9#, #a4#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["FlameG"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp5#", "=q1=#j11#"};
		{ 2, 23516, "", "=q3=Flamebane Helm", "=ds=#s1#, #a4#"};
		{ 3, 23513, "", "=q3=Flamebane Breastplate", "=ds=#s5#, #a4#"};
		{ 4, 23515, "", "=q3=Flamebane Bracers", "=ds=#s8#, #a4#"};
		{ 5, 23514, "", "=q3=Flamebane Gloves", "=ds=#s9#, #a4#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["EnchantedAdaman"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp6#", "=q1=#j12#"};
		{ 2, 23509, "", "=q3=Enchanted Adamantite Breastplate", "=ds=#s5#, #a4#"};
		{ 3, 23510, "", "=q3=Enchanted Adamantite Belt", "=ds=#s10#, #a4#"};
		{ 4, 23512, "", "=q3=Enchanted Adamantite Leggings", "=ds=#s11#, #a4#"};
		{ 5, 23511, "", "=q3=Enchanted Adamantite Boots", "=ds=#s12#, #a4#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["KhoriumWard"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp7#", ""};
		{ 2, 23524, "", "=q3=Khorium Belt", "=ds=#s10#, #a4#"};
		{ 3, 23523, "", "=q3=Khorium Pants", "=ds=#s11#, #a4#"};
		{ 4, 23525, "", "=q3=Khorium Boots", "=ds=#s12#, #a4#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["FaithFelsteel"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp8#", ""};
		{ 2, 23519, "", "=q3=Felsteel Helm", "=ds=#s1#, #a4#"};
		{ 3, 23517, "", "=q3=Felsteel Gloves", "=ds=#s9#, #a4#"};
		{ 4, 23518, "", "=q3=Felsteel Leggings", "=ds=#s11#, #a4#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["BurningRage"] = {
		{ 1, 0, "INV_Hammer_20", "=q6=#craftbp9#", ""};
		{ 2, 23521, "", "=q3=Ragesteel Helm", "=ds=#s1#, #a4#"};
		{ 3, 33173, "", "=q3=Ragesteel Shoulders", "=ds=#s3#, #a4#"};
		{ 4, 23522, "", "=q3=Ragesteel Breastplate", "=ds=#s5#, #a4#"};
		{ 5, 23520, "", "=q3=Ragesteel Gloves", "=ds=#s9#, #a4#"};
		Back = "CRAFTSET";
	};

		-----------------------------------
		--- Leatherworking Leather Sets ---
		-----------------------------------

	AtlasLoot_Data["VolcanicArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl1#", "=q1=#j11#"};
		{ 2, 15055, "", "=q2=Volcanic Shoulders", "=ds=#s3#, #a2#"};
		{ 3, 15053, "", "=q2=Volcanic Breastplate", "=ds=#s5#, #a2#"};
		{ 4, 15054, "", "=q2=Volcanic Leggings", "=ds=#s11#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["IronfeatherArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl2#", ""};
		{ 2, 15067, "", "=q3=Ironfeather Shoulders", "=ds=#s3#, #a2#"};
		{ 3, 15066, "", "=q3=Ironfeather Breastplate", "=ds=#s5#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["StormshroudArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl3#", ""};
		{ 2, 15058, "", "=q3=Stormshroud Shoulders", "=ds=#s3#, #a2#"};
		{ 3, 15056, "", "=q3=Stormshroud Armor", "=ds=#s5#, #a2#"};
		{ 4, 21278, "", "=q3=Stormshroud Gloves", "=ds=#s9#, #a2#"};
		{ 5, 15057, "", "=q3=Stormshroud Pants", "=ds=#s11#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["DevilsaurArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl4#", ""};
		{ 2, 15063, "", "=q3=Devilsaur Gauntlets", "=ds=#s9#, #a2#"};
		{ 3, 15062, "", "=q3=Devilsaur Leggings", "=ds=#s11#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["BloodTigerH"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl5#", ""};
		{ 2, 19689, "", "=q3=Blood Tiger Shoulders", "=ds=#s3#, #a2#"};
		{ 3, 19688, "", "=q3=Blood Tiger Breastplate", "=ds=#s5#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["PrimalBatskin"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl6#", ""};
		{ 2, 19685, "", "=q3=Primal Batskin Jerkin", "=ds=#s5#, #a2#"};
		{ 3, 19687, "", "=q3=Primal Batskin Bracers", "=ds=#s8#, #a2#"};
		{ 4, 19686, "", "=q3=Primal Batskin Gloves", "=ds=#s9#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["WildDraenishA"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl7#", ""};
		{ 2, 25676, "", "=q2=Wild Draenish Vest", "=ds=#s5#, #a2#"};
		{ 3, 25674, "", "=q2=Wild Draenish Gloves", "=ds=#s9#, #a2#"};
		{ 4, 25675, "", "=q2=Wild Draenish Leggings", "=ds=#s11#, #a2#"};
		{ 5, 25673, "", "=q2=Wild Draenish Boots", "=ds=#s12#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["ThickDraenicA"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl8#", ""};
		{ 2, 25671, "", "=q2=Thick Draenic Vest", "=ds=#s5#, #a2#"};
		{ 3, 25669, "", "=q2=Thick Draenic Gloves", "=ds=#s9#, #a2#"};
		{ 4, 25670, "", "=q2=Thick Draenic Pants", "=ds=#s11#, #a2#"};
		{ 5, 25668, "", "=q2=Thick Draenic Boots", "=ds=#s12#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["FelSkin"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl9#", ""};
		{ 2, 25685, "", "=q3=Fel Leather Gloves", "=ds=#s9#, #a2#"};
		{ 3, 25687, "", "=q3=Fel Leather Leggings", "=ds=#s11#, #a2#"};
		{ 4, 25686, "", "=q3=Fel Leather Boots", "=ds=#s12#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["SClefthoof"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwl10#", ""};
		{ 2, 25689, "", "=q3=Heavy Clefthoof Vest", "=ds=#s5#, #a2#"};
		{ 3, 25690, "", "=q3=Heavy Clefthoof Leggings", "=ds=#s11#, #a2#"};
		{ 4, 25691, "", "=q3=Heavy Clefthoof Boots", "=ds=#s12#, #a2#"};
		Back = "CRAFTSET2";
	};

		--------------------------------
		--- Leatherworking Mail Sets ---
		--------------------------------

	AtlasLoot_Data["GreenDragonM"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwm1#", "=q1=#j13#"};
		{ 2, 15045, "", "=q3=Green Dragonscale Breastplate", "=ds=#s5#, #a3#"};
		{ 3, 20296, "", "=q3=Green Dragonscale Gauntlets", "=ds=#s9#, #a3#"};
		{ 4, 15046, "", "=q3=Green Dragonscale Leggings", "=ds=#s11#, #a3#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["BlueDragonM"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwm2#", "=q1=#j12#"};
		{ 2, 15049, "", "=q3=Blue Dragonscale Shoulders", "=ds=#s3#, #a3#"};
		{ 3, 15048, "", "=q3=Blue Dragonscale Breastplate", "=ds=#s5#, #a3#"};
		{ 4, 20295, "", "=q3=Blue Dragonscale Leggings", "=ds=#s11#, #a3#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["BlackDragonM"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwm3#", "=q1=#j11#"};
		{ 2, 15051, "", "=q3=Black Dragonscale Shoulders", "=ds=#s3#, #a3#"};
		{ 3, 15050, "", "=q3=Black Dragonscale Breastplate", "=ds=#s5#, #a3#"};
		{ 4, 15052, "", "=q3=Black Dragonscale Leggings", "=ds=#s11#, #a3#"};
		{ 5, 16984, "", "=q4=Black Dragonscale Boots", "=ds=#s12#, #a3#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["ScaledDraenicA"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwm4#", ""};
		{ 2, 25660, "", "=q2=Scaled Draenic Vest", "=ds=#s5#, #a3#"};
		{ 3, 25661, "", "=q2=Scaled Draenic Gloves", "=ds=#s9#, #a3#"};
		{ 4, 25662, "", "=q2=Scaled Draenic Pants", "=ds=#s11#, #a3#"};
		{ 5, 25659, "", "=q2=Scaled Draenic Boots", "=ds=#s12#, #a3#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["FelscaleArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwm5#", ""};
		{ 2, 25657, "", "=q2=Felscale Breastplate", "=ds=#s5#, #a3#"};
		{ 3, 25654, "", "=q2=Felscale Gloves", "=ds=#s9#, #a3#"};
		{ 4, 25656, "", "=q2=Felscale Pants", "=ds=#s11#, #a3#"};
		{ 5, 25655, "", "=q2=Felscale Boots", "=ds=#s12#, #a3#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["FelstalkerArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwm6#", ""};
		{ 2, 25696, "", "=q3=Felstalker Breastplate", "=ds=#s5#, #a3#"};
		{ 3, 25697, "", "=q3=Felstalker Bracers", "=ds=#s8#, #a3#"};
		{ 4, 25695, "", "=q3=Felstalker Belt", "=ds=#s10#, #a3#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["NetherFury"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwm7#", ""};
		{ 2, 25694, "", "=q3=Netherfury Belt", "=ds=#s10#, #a3#"};
		{ 3, 25692, "", "=q3=Netherfury Leggings", "=ds=#s11#, #a3#"};
		{ 4, 25693, "", "=q3=Netherfury Boots", "=ds=#s12#, #a3#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["PrimalIntent"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwe1#", "=q1=#p11#"};
		{ 2, 29525, "", "=q4=Primalstrike Vest", "=ds=#s5#, #a2#"};
		{ 3, 29527, "", "=q4=Primalstrike Bracers", "=ds=#s8#, #a2#"};
		{ 4, 29526, "", "=q4=Primalstrike Belt", "=ds=#s10#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["WindhawkArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwt1#", "=q1=#p10#"};
		{ 2, 29522, "", "=q4=Windhawk Hauberk", "=ds=#s5#, #a2#"};
		{ 3, 29523, "", "=q4=Windhawk Bracers", "=ds=#s8#, #a2#"};
		{ 4, 29524, "", "=q4=Windhawk Belt", "=ds=#s10#, #a2#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["NetherscaleArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwd1#", "=q1=#p9#"};
		{ 2, 29515, "", "=q4=Ebon Netherscale Breastplate", "=ds=#s5#, #a3#"};
		{ 3, 29517, "", "=q4=Ebon Netherscale Bracers", "=ds=#s8#, #a3#"};
		{ 4, 29516, "", "=q4=Ebon Netherscale Belt", "=ds=#s10#, #a3#"};
		Back = "CRAFTSET2";
	};

	AtlasLoot_Data["NetherstrikeArmor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#craftlwd2#", "=q1=#p9#"};
		{ 2, 29519, "", "=q4=Netherstrike Breastplate", "=ds=#s5#, #a3#"};
		{ 3, 29521, "", "=q4=Netherstrike Bracers", "=ds=#s8#, #a3#"};
		{ 4, 29520, "", "=q4=Netherstrike Belt", "=ds=#s10#, #a3#"};
		Back = "CRAFTSET2";
	};

		----------------------
		--- Tailoring Sets ---
		----------------------

	AtlasLoot_Data["BloodvineG"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt1#", ""};
		{ 2, 19682, "", "=q3=Bloodvine Vest", "=ds=#s5#, #a1#"};
		{ 3, 19683, "", "=q3=Bloodvine Leggings", "=ds=#s11#, #a1#"};
		{ 4, 19684, "", "=q3=Bloodvine Boots", "=ds=#s12#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["NeatherVest"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt2#", ""};
		{ 2, 21855, "", "=q2=Netherweave Tunic", "=ds=#s5#, #a1#"};
		{ 3, 21854, "", "=q2=Netherweave Robe", "=ds=#s5#, #a1#"};
		{ 4, 21849, "", "=q2=Netherweave Bracers", "=ds=#s8#, #a1#"};
		{ 5, 21851, "", "=q2=Netherweave Gloves", "=ds=#s9#, #a1##"};
		{ 6, 21850, "", "=q2=Netherweave Belt", "=ds=#s10#, #a1#"};
		{ 7, 21852, "", "=q2=Netherweave Pants", "=ds=#s11#, #a1#"};
		{ 8, 21853, "", "=q2=Netherweave Boots", "=ds=#s12#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["ImbuedNeather"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt3#", ""};
		{ 2, 21862, "", "=q3=Imbued Netherweave Tunic", "=ds=#s5#, #a1#"};
		{ 3, 21861, "", "=q3=Imbued Netherweave Robe", "=ds=#s5#, #a1#"};
		{ 4, 21859, "", "=q3=Imbued Netherweave Pants", "=ds=#s11#, #a1#"};
		{ 5, 21860, "", "=q3=Imbued Netherweave Boots", "=ds=#s12#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["ArcanoVest"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt4#", "=q1=#j12#"};
		{ 2, 21868, "", "=q3=Arcanoweave Robe", "=ds=#s5#, #a1#"};
		{ 3, 21866, "", "=q3=Arcanoweave Bracers", "=ds=#s8#, #a1#"};
		{ 4, 21867, "", "=q3=Arcanoweave Boots", "=ds=#s12#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["TheUnyielding"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt5#", ""};
		{ 2, 24249, "", "=q3=Unyielding Bracers", "=ds=#s8#, #a1#"};
		{ 3, 24255, "", "=q4=Unyielding Girdle", "=ds=#s10#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["WhitemendWis"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt6#", ""};
		{ 2, 24264, "", "=q4=Whitemend Hood", "=ds=#s1#, #a1#"};
		{ 3, 24261, "", "=q4=Whitemend Pants", "=ds=#s11#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["SpellstrikeInfu"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt7#", ""};
		{ 2, 24266, "", "=q4=Spellstrike Hood", "=ds=#s1#, #a1#"};
		{ 3, 24262, "", "=q4=Spellstrike Pants", "=ds=#s11#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["BattlecastG"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt8#", ""};
		{ 2, 24267, "", "=q4=Battlecast Hood", "=ds=#s1#, #a1#"};
		{ 3, 24263, "", "=q4=Battlecast Pants", "=ds=#s11#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["SoulclothEm"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#craftt9#", "=q1=#j12#"};
		{ 2, 21864, "", "=q4=Soulcloth Shoulders", "=ds=#s3#, #a1#"};
		{ 3, 21865, "", "=q4=Soulcloth Vest", "=ds=#s5#, #a1#"};
		{ 4, 21863, "", "=q4=Soulcloth Gloves", "=ds=#s9#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["PrimalMoon"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#crafttm1#", "=q1=#p19#"};
		{ 2, 21874, "", "=q4=Primal Mooncloth Shoulders", "=ds=#s3#, #a1#"};
		{ 3, 21875, "", "=q4=Primal Mooncloth Robe", "=ds=#s5#, #a1#"};
		{ 4, 21873, "", "=q4=Primal Mooncloth Belt", "=ds=#s10#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["ShadowEmbrace"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#crafttsh1#", "=q1=#p20#"};
		{ 2, 21869, "", "=q4=Frozen Shadoweave Shoulders", "=ds=#s3#, #a1#"};
		{ 3, 21871, "", "=q4=Frozen Shadoweave Vest", "=ds=#s5#, #a1#"};
		{ 4, 21870, "", "=q4=Frozen Shadoweave Boots", "=ds=#s12#, #a1#"};
		Back = "CRAFTSET";
	};

	AtlasLoot_Data["SpellfireWrath"] = {
		{ 1, 0, "INV_Fabric_Linen_02", "=q6=#crafttsf1#", "=q1=#p21#"};
		{ 2, 21848, "", "=q4=Spellfire Robe", "=ds=#s5#, #a1#"};
		{ 3, 21847, "", "=q4=Spellfire Gloves", "=ds=#s9#, #a1#"};
		{ 4, 21846, "", "=q4=Spellfire Belt", "=ds=#s10#, #a1#"};
		Back = "CRAFTSET";
	};

	-------------
	--- Other ---
	-------------

		----------------------------
		--- Crafted Epic Weapons ---
		----------------------------

	AtlasLoot_Data["CraftedWeapons1"] = {
		{ 1, 0, "INV_Box_01", "=q6=#p15#", ""};
		{ 2, 28425, "", "=q4=Fireguard", "=ds=#h1#, #w10#"};
		{ 3, 28426, "", "=q4=Blazeguard", "=ds=#h1#, #w10#"};
		{ 4, 28427, "", "=q4=Blazefury", "=ds=#h1#, #w10#"};
		{ 5, 28428, "", "=q4=Lionheart Blade", "=ds=#h2#, #w10#"};
		{ 6, 28429, "", "=q4=Lionheart Champion", "=ds=#h2#, #w10#"};
		{ 7, 28430, "", "=q4=Lionheart Executioner", "=ds=#h2#, #w10#"};
		{ 9, 0, "INV_Box_01", "=q6=#p14#", ""};
		{ 10, 28431, "", "=q4=The Planar Edge", "=ds=#h3#, #w1#"};
		{ 11, 28432, "", "=q4=Black Planar Edge", "=ds=#h3#, #w1#"};
		{ 12, 28433, "", "=q4=Wicked Edge of the Planes", "=ds=#h3#, #w1#"};
		{ 13, 28434, "", "=q4=Lunar Crescent", "=ds=#h2#, #w1#"};
		{ 14, 28435, "", "=q4=Mooncleaver", "=ds=#h2#, #w1#"};
		{ 15, 28436, "", "=q4=Bloodmoon", "=ds=#h2#, #w1#"};
		{ 16, 0, "INV_Box_01", "=q6=#p22#", ""};
		{ 17, 28437, "", "=q4=Drakefist Hammer", "=ds=#h3#, #w6#"};
		{ 18, 28438, "", "=q4=Dragonmaw", "=ds=#h3#, #w6#"};
		{ 19, 28439, "", "=q4=Dragonstrike", "=ds=#h3#, #w6#"};
		{ 20, 28440, "", "=q4=Thunder", "=ds=#h2#, #w6#"};
		{ 21, 28441, "", "=q4=Deep Thunder", "=ds=#h2#, #w6#"};
		{ 22, 28442, "", "=q4=Stormherald", "=ds=#h2#, #w6#"};
		Next = "CraftedWeapons2";
		Back = "CRAFTINGMENU";
	};

	AtlasLoot_Data["CraftedWeapons2"] = {
		{ 1, 0, "INV_Box_01", "=q6=#p2#", "=q1=#j10#"};
		{ 2, 23554, "", "=q4=Eternium Runed Blade", "=ds=#h3#, #w4#"};
		{ 3, 23555, "", "=q4=Dirge", "=ds=#h1#, #w4#"};
		{ 4, 23540, "", "=q4=Felsteel Longblade", "=ds=#h1#, #w10#"};
		{ 5, 23541, "", "=q4=Khorium Champion", "=ds=#h2#, #w10#"};
		{ 6, 23542, "", "=q4=Fel Edged Battleaxe", "=ds=#h1#, #w1#"};
		{ 7, 23543, "", "=q4=Felsteel Reaper", "=ds=#h2#, #w1#"};
		{ 8, 23556, "", "=q4=Hand of Eternity", "=ds=#h3#, #w6#"};
		{ 9, 23544, "", "=q4=Runic Hammer", "=ds=#h1#, #w6#"};
		{ 10, 23546, "", "=q4=Fel Hardened Maul", "=ds=#h2#, #w6#"};
		{ 11, 32854, "", "=q4=Hammer of Righteous Might", "=ds=#h2#, #w6#"};
		{ 13, 0, "INV_Box_01", "=q6=#p5#", "=q1=#j10#"};
		{ 14, 32756, "", "=q4=Gyro-balanced Khorium Destroyer", "=ds=#w5#"};
		{ 16, 0, "INV_Box_01", "=q6=#p2#", "=q1=#j9#"};
		{ 17, 19166, "", "=q4=Black Amnesty", "=ds=#h1#, #w4#"};
		{ 18, 22383, "", "=q4=Sageblade", "=ds=#h3#, #w10#"};
		{ 19, 19168, "", "=q4=Blackguard", "=ds=#h1#, #w10#"};
		{ 20, 19169, "", "=q4=Nightfall", "=ds=#h2#, #w1#"};
		{ 21, 22384, "", "=q4=Persuader", "=ds=#h3#, #w6#"};
		{ 22, 19170, "", "=q4=Ebon Hand", "=ds=#h1#, #w6#"};
		{ 23, 17193, "", "=q4=Sulfuron Hammer", "=ds=#h2#, #w6#"};
		{ 24, 19167, "", "=q4=Blackfury", "=ds=#w7#"};
		{ 25, 22198, "", "=q4=Jagged Obsidian Shield", "=ds=#w8#"};
		{ 27, 0, "INV_Box_01", "=q6=#p5#", "=q1=#j9#"};
		{ 28, 18282, "", "=q4=Core Marksman Rifle", "=ds=#w5#"};
		{ 29, 18168, "", "=q4=Force Reactive Disk", "=ds=#w8#"};
		Prev = "CraftedWeapons1";
		Back = "CRAFTINGMENU";
	};

	--------------------------------
	--- Daily Profession Rewards ---
	--------------------------------

		---------------------
		--- Jewelcrafting ---
		---------------------

	AtlasLoot_Data["JewelcraftingDaily"] = {
		{ 1, 42298, "", "=q3=Design: Bold Dragon's Eye", "=ds=#p12# (370)"};
		{ 2, 42299, "", "=q3=Design: Bright Dragon's Eye", "=ds=#p12# (370)"};
		{ 3, 42300, "", "=q3=Design: Brilliant Dragon's Eye", "=ds=#p12# (370)"};
		{ 4, 42301, "", "=q3=Design: Delicate Dragon's Eye", "=ds=#p12# (370)"};
		{ 5, 42302, "", "=q3=Design: Flashing Dragon's Eye", "=ds=#p12# (370)"};
		{ 6, 42303, "", "=q3=Design: Fractured Dragon's Eye", "=ds=#p12# (370)"};
		{ 7, 42304, "", "=q3=Design: Lustrous Dragon's Eye", "=ds=#p12# (370)"};
		{ 8, 42305, "", "=q3=Design: Mystic Dragon's Eye", "=ds=#p12# (370)"};
		{ 9, 42306, "", "=q3=Design: Precise Dragon's Eye", "=ds=#p12# (370)"};
		{ 10, 42307, "", "=q3=Design: Quick Dragon's Eye", "=ds=#p12# (370)"};
		{ 11, 42308, "", "=q3=Design: Rigid Dragon's Eye", "=ds=#p12# (370)"};
		{ 12, 42309, "", "=q3=Design: Runed Dragon's Eye", "=ds=#p12# (370)"};
		{ 13, 42310, "", "=q3=Design: Smooth Dragon's Eye", "=ds=#p12# (370)"};
		{ 14, 42311, "", "=q3=Design: Solid Dragon's Eye", "=ds=#p12# (370)"};
		{ 15, 42312, "", "=q3=Design: Sparkling Dragon's Eye", "=ds=#p12# (370)"};
		{ 16, 42313, "", "=q3=Design: Stormy Dragon's Eye", "=ds=#p12# (370)"};
		{ 17, 42314, "", "=q3=Design: Subtle Dragon's Eye", "=ds=#p12# (370)"};
		{ 18, 42315, "", "=q3=Design: Thick Dragon's Eye", "=ds=#p12# (370)"};
		{ 19, 41576, "", "=q3=Design: Bold Scarlet Ruby", "=ds=#p12# (390)"};
		{ 20, 41577, "", "=q3=Design: Delicate Scarlet Ruby", "=ds=#p12# (390)"};
		{ 21, 41697, "", "=q3=Design: Enduring Forest Emerald", "=ds=#p12# (390)"};
		{ 22, 41692, "", "=q3=Design: Energized Forest Emerald", "=ds=#p12# (390)"};
		{ 23, 41578, "", "=q3=Design: Flashing Scarlet Ruby", "=ds=#p12# (390)"};
		{ 24, 41693, "", "=q3=Design: Forceful Forest Emerald", "=ds=#p12# (390)"};
		{ 25, 41582, "", "=q3=Design: Glinting Monarch Topaz", "=ds=#p12# (390)"};
		{ 26, 41694, "", "=q3=Design: Intricate Forest Emerald", "=ds=#p12# (390)"};
		{ 27, 41696, "", "=q3=Design: Lambent Forest Emerald", "=ds=#p12# (390)"};
		{ 28, 41689, "", "=q3=Design: Luminous Monarch Topaz", "=ds=#p12# (390)"};
		{ 29, 41581, "", "=q3=Design: Lustrous Sky Sapphire", "=ds=#p12# (390)"};
		{ 30, 41686, "", "=q3=Design: Potent Monarch Topaz", "=ds=#p12# (390)"};
		Next = "JewelcraftingDaily2";
	};

	AtlasLoot_Data["JewelcraftingDaily2"] = {
		{ 1, 41702, "", "=q3=Design: Puissant Twilight Opal", "=ds=#p12# (390)"};
		{ 2, 41576, "", "=q3=Design: Quick Autumn's Glow", "=ds=#p12# (390)"};
		{ 3, 41690, "", "=q3=Design: Reckless Monarch Topaz", "=ds=#p12# (390)"};
		{ 4, 41703, "", "=q3=Design: Regal Twilight Opal", "=ds=#p12# (390)"};
		{ 5, 41580, "", "=q3=Design: Rigid Autumn's Glow", "=ds=#p12# (390)"};
		{ 6, 41701, "", "=q3=Design: Royal Twilight Opal", "=ds=#p12# (390)"};
		{ 7, 41699, "", "=q3=Design: Seer's Forest Emerald", "=ds=#p12# (390)"};
		{ 8, 42138, "", "=q3=Design: Solid Sky Sapphire", "=ds=#p12# (390)"};
		{ 9, 41687, "", "=q3=Design: Stark Monarch Topaz", "=ds=#p12# (390)"};
		{ 10, 41688, "", "=q3=Design: Veiled Monarch Topaz", "=ds=#p12# (390)"};
		{ 11, 41698, "", "=q3=Design: Vivid Forest Emerald", "=ds=#p12# (390)"};
		{ 12, 41704, "", "=q3=Design: Chaotic Skyflare Diamond", "=ds=#p12# (420)"};
		{ 13, 41705, "", "=q3=Design: Effulgent Skyflare Diamond", "=ds=#p12# (420)"};
		{ 14, 41706, "", "=q3=Design: Ember Skyflare Diamond", "=ds=#p12# (420)"};
		{ 15, 41708, "", "=q3=Design: Insightful Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 16, 41709, "", "=q3=Design: Invigorating Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 17, 41710, "", "=q3=Design: Relentless Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 18, 41707, "", "=q3=Design: Revitalizing Skyflare Diamond", "=ds=#p12# (420)"};
		{ 19, 41711, "", "=q3=Design: Trenchant Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 21, 42652, "", "=q3=Design: Titanium Earthguard Chain", "=ds=#p12# (420)"};
		{ 22, 42649, "", "=q3=Design: Titanium Earthguard Ring", "=ds=#p12# (420)"};
		{ 23, 42648, "", "=q3=Design: Titanium Impact Band", "=ds=#p12# (420)"};
		{ 24, 42651, "", "=q3=Design: Titanium Impact Choker", "=ds=#p12# (420)"};
		{ 25, 42653, "", "=q3=Design: Titanium Spellshock Necklace", "=ds=#p12# (420)"};
		{ 26, 42650, "", "=q3=Design: Titanium Spellshock Ring", "=ds=#p12# (420)"};
		Prev = "JewelcraftingDaily";
	};
	
		--------------
		--- Cooking ---
		--------------
		
	AtlasLoot_Data["CookingDaily"] = {
		{ 1, 43035, "", "=q2=Recipe: Blackened Dragonfin", "=ds=#p3# (400)"};
		{ 2, 43032, "", "=q2=Recipe: Blackened Worg Steak", "=ds=#p3# (400)"};
		{ 3, 43029, "", "=q2=Recipe: Critter Bites", "=ds=#p3# (400)"};
		{ 4, 43033, "", "=q2=Recipe: Cuttlesteak", "=ds=#p3# (400)"};
		{ 5, 43036, "", "=q2=Recipe: Dragonfin Filet", "=ds=#p3# (400)"};
		{ 6, 43024, "", "=q2=Recipe: Firecracker Salmon", "=ds=#p3# (400)"};
		{ 7, 43030, "", "=q2=Recipe: Hearty Rhino", "=ds=#p3# (400)"};
		{ 8, 43026, "", "=q2=Recipe: Imperial Manta Steak", "=ds=#p3# (400)"};
		{ 9, 43018, "", "=q2=Recipe: Mega Mammoth Meal", "=ds=#p3# (400)"};
		{ 10, 43022, "", "=q2=Recipe: Mighty Rhino Dogs", "=ds=#p3# (400)"};
		{ 11, 43023, "", "=q2=Recipe: Poached Northern Sculpin", "=ds=#p3# (400)"};
		{ 12, 43028, "", "=q2=Recipe: Rhinolicious Wyrmsteak", "=ds=#p3# (400)"};
		{ 13, 43031, "", "=q2=Recipe: Snapper Extreme", "=ds=#p3# (400)"};
		{ 14, 43034, "", "=q2=Recipe: Spiced Mammoth Treats", "=ds=#p3# (400)"};
		{ 15, 43020, "", "=q2=Recipe: Spiced Wyrm Burger", "=ds=#p3# (400)"};
		{ 16, 43025, "", "=q2=Recipe: Spicy Blue Nettlefish", "=ds=#p3# (400)"};
		{ 17, 43027, "", "=q2=Recipe: Spicy Fried Herring", "=ds=#p3# (400)"};
		{ 18, 43019, "", "=q2=Recipe: Tender Shoveltusk Steak", "=ds=#p3# (400)"};
		{ 19, 43037, "", "=q2=Recipe: Tracker Snacks", "=ds=#p3# (400)"};
		{ 20, 43021, "", "=q2=Recipe: Very Burnt Worg", "=ds=#p3# (400)"};
		{ 22, 43007, "", "=q1=Northern Spices", "=ds=#e8#"};
	};