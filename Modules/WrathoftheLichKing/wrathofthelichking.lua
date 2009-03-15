local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

-- Index
--- Dungeons & Raids
---- Utgarde Keep
---- The Nexus
---- Azjol-Nerub
---- Ahn'kahet: The Old Kingdom
---- Drak'Tharon Keep
---- The Violet Hold
---- Gundrak
---- Halls of Stone
---- Halls of Lightning
---- Caverns of Time: Old Stratholme
---- Utgarde Pinnacle
---- The Oculus
---- Naxxramas
---- Obsidian Sanctum
---- The Eye of Eternity
---- Ulduar
--- Factions
---- Alliance Vanguard
---- Argent Crusade
---- Frenzyheart Tribe
---- Horde Expedition
---- Kirin Tor
---- Knights of the Ebon Blade
---- The Kalu'ak
---- The Oracles
---- The Sons of Hodir
---- Winterfin Retreat
---- The Wyrmrest Accord
--- PvP
---- Armor Sets
---- Level 80 Epic Non-Sets
---- Savage Gladiator Weapons
---- Deadly Gladiator Weapons
---- PvP Jewelcrafting Designs
---- World PvP - Wintergrasp
---- World PvP - Grizzly Hills: Venture Bay
--- Sets & Collections
---- Naxxramas 10/25 Man Sets (T7)
---- Wrath Of The Lich King Sets
---- Blizzard Collectables
---- Legendaries
---- Tabards
---- Trading Card Game
---- Pets
---- Mounts
---- Emblem of Heroism Items
---- Emblem of Valor Items

	------------------------
	--- Dungeons & Raids ---
	------------------------

		--------------------
		--- Utgarde Keep ---
		--------------------

	AtlasLoot_Data["UtgardeKeepKeleseth"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35572, "", "=q3=Reinforced Velvet Helm", "=ds=#s1#, #a1#"};
		{ 3, 35571, "", "=q3=Dragon Stabler's Gauntlets", "=ds=#s9#, #a3#"};
		{ 4, 35570, "", "=q3=Keleseth's Blade of Evocation", "=ds=#h3#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37180, "", "=q3=Battlemap Hide Helm", "=ds=#s1#, #a2#"};
		{ 19, 37178, "", "=q3=Strategist's Belt", "=ds=#s10#, #a4#"};
		{ 20, 37179, "", "=q3=Infantry Assault Blade", "=ds=#h1#, #w10#"};
		{ 21, 37177, "", "=q3=Wand of the San'layn", "=ds=#w12#"};
	};

	AtlasLoot_Data["UtgardeKeepSkarvald"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35575, "", "=q3=Skarvald's Dragonskin Habergeon", "=ds=#s5#, #a2#"};
		{ 3, 35574, "", "=q3=Chestplate of the Northern Lights", "=ds=#s5#, #a4#"};
		{ 4, 35573, "", "=q3=Arm Blade of Augelmir", "=ds=#h3#, #w13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37183, "", "=q3=Bindings of the Tunneler", "=ds=#s8#, #a2#"};
		{ 19, 37184, "", "=q3=Dalronn's Jerkin", "=ds=#s5#, #a3#"};
		{ 20, 37182, "", "=q3=Helmet of the Constructor", "=ds=#s1#, #a4#"};
		{ 21, 37181, "", "=q3=Dagger of Betrayal", "=ds=#h1#, #w4#"};
	};

	AtlasLoot_Data["UtgardeKeepIngvar"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35577, "", "=q3=Holistic Patchwork Breeches", "=ds=#s11#, #a2#"};
		{ 3, 35578, "", "=q3=Overlaid Chain Spaulders", "=ds=#s3#, #a3#"};
		{ 4, 35576, "", "=q3=Ingvar's Monolithic Cleaver", "=ds=#h2#, #w1#"};
		{ 6, 33330, "", "=q1=Ingvar's Head", "=ds=#m3#"};
		{ 7, 38218, "", "=q3=Executioner's Band", "=q1=#m4#: =ds=#s13#"};
		{ 8, 38219, "", "=q3=Ring of Decimation", "=q1=#m4#: =ds=#s13#"};
		{ 9, 38220, "", "=q3=Signet of Swift Judgement", "=q1=#m4#: =ds=#s13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37194, "", "=q4=Sharp-Barbed Leather Belt", "=ds=#s10#, #a2#"};
		{ 19, 37193, "", "=q4=Staggering Legplates", "=ds=#s11#, #a4#"};
		{ 20, 37192, "", "=q4=Annhylde's Ring", "=ds=#s13#"};
		{ 21, 37191, "", "=q4=Drake-Mounted Crossbow", "=ds=#w3#"};
		{ 22, 37189, "", "=q3=Breeches of the Caller", "=ds=#s11#, #a1#"};
		{ 23, 37188, "", "=q3=Plunderer's Helmet", "=ds=#s1#, #a3#"};
		{ 24, 37186, "", "=q3=Unsmashable Heavy Band", "=ds=#s13#"};
		{ 25, 37190, "", "=q3=Enraged Feral Staff", "=ds=#w9#"};
		{ 26, 41793, "", "=q3=Design: Fierce Monarch Topaz", "=ds=#p12# (390)"};
		{ 28, 43662, "", "=q1=Axe of the Plunderer", "=ds=#m3#"};
	};

	AtlasLoot_Data["UtgardeKeepTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35580, "", "=q3=Skein Woven Mantle", "=ds=#s3#, #a1#"};
		{ 3, 35579, "", "=q3=Vrykul Shackles", "=ds=#s8#, #a2#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37197, "", "=q3=Tattered Castle Drape", "=ds=#s4#"};
		{ 18, 37196, "", "=q3=Runecaster's Mantle", "=ds=#s3#, #a1#"};
	};

		-----------------
		--- The Nexus ---
		-----------------

	AtlasLoot_Data["TheNexusTelestra"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35605, "", "=q3=Belt of Draconic Runes", "=ds=#s10#, #a2#"};
		{ 3, 35604, "", "=q3=Insulating Bindings", "=ds=#s8#, #a4#"};
		{ 4, 35617, "", "=q3=Wand of Shimmering Scales", "=ds=#w12#"};
		{ 6, 21524, "", "=q2=Red Winter Hat", "=ds=#s1#, #a1# =q2=#m28#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37139, "", "=q3=Spaulders of the Careless Thief", "=ds=#s3#, #a2#"};
		{ 19, 37138, "", "=q3=Bands of Channeled Energy", "=ds=#s8#, #a3#"};
		{ 20, 37135, "", "=q3=Arcane-Shielded Helm", "=ds=#s1#, #a4#"};
		{ 21, 37134, "", "=q3=Telestra's Journal", "=ds=#s15#"};
		{ 23, 21524, "", "=q2=Red Winter Hat", "=ds=#s1#, #a1# =q2=#m28#"};
	};

	AtlasLoot_Data["TheNexusAnomalus"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35599, "", "=q3=Gauntlets of Serpent Scales", "=ds=#s9#, #a3#"};
		{ 3, 35600, "", "=q3=Cleated Ice Boots", "=ds=#s12#, #a3#"};
		{ 4, 35598, "", "=q3=Tome of the Lore Keepers", "=ds=#s15#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37149, "", "=q3=Helm of Anomalus", "=ds=#s1#, #a2#"};
		{ 19, 37144, "", "=q3=Hauberk of the Arcane Wraith", "=ds=#s5#, #a3#"};
		{ 20, 37150, "", "=q3=Rift Striders", "=ds=#s12#, #a4#"};
		{ 21, 37141, "", "=q3=Amulet of Dazzling Light", "=ds=#s2#"};
	};

	AtlasLoot_Data["TheNexusOrmorok"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35602, "", "=q3=Chiseled Stalagmite Pauldrons", "=ds=#s3#, #a4#"};
		{ 3, 35603, "", "=q3=Greaves of the Blue Flight", "=ds=#s12#, #a4#"};
		{ 4, 35601, "", "=q3=Drakonid Arm Blade", "=ds=#h4#, #w13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37153, "", "=q3=Gloves of the Crystal Gardener", "=ds=#s9#, #a1#"};
		{ 19, 37155, "", "=q3=Frozen Forest Kilt", "=ds=#s11#, #a3#"};
		{ 20, 37152, "", "=q3=Girdle of Ice", "=ds=#s10#, #a4#"};
		{ 21, 37151, "", "=q3=Band of Frosted Thorns", "=ds=#s13#"};
	};

	AtlasLoot_Data["TheNexusKolurgStoutbeardHEROIC"] = {
		{ 1, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 2, 37728, "", "=q3=Cloak of the Enemy", "=ds=#s4#"};
		{ 3, 37731, "", "=q3=Opposed Stasis Leggings", "=ds=#s11#, #a1#"};
		{ 4, 37730, "", "=q3=Cleric's Linen Shoes", "=ds=#s12#, #a1#"};
		{ 5, 37729, "", "=q3=Grips of Sculptured Icicles", "=ds=#s9#, #a4#"};
	};

	AtlasLoot_Data["TheNexusKeristrasza"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35596, "", "=q3=Attuned Crystalline Boots", "=ds=#s12#, #a1#"};
		{ 3, 35595, "", "=q3=Glacier Sharpened Vileblade", "=ds=#h1#, #w4#"};
		{ 4, 35597, "", "=q3=Band of Glittering Permafrost", "=ds=#s13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37172, "", "=q4=Gloves of Glistening Runes", "=ds=#s9#, #a1#"};
		{ 19, 37170, "", "=q4=Interwoven Scale Bracers", "=ds=#s8#, #a3#"};
		{ 20, 37171, "", "=q4=Flame-Bathed Steel Girdle", "=ds=#s10#, #a4#"};
		{ 21, 37169, "", "=q4=War Mace of Unrequited Love", "=ds=#h3#, #w6#"};
		{ 22, 37165, "", "=q3=Crystal-Infused Tunic", "=ds=#s5#, #a2#"};
		{ 23, 37167, "", "=q3=Dragon Slayer's Sabatons", "=ds=#s12#, #a3#"};
		{ 24, 37166, "", "=q3=Sphere of Red Dragon's Blood", "=ds=#s14#"};
		{ 25, 37162, "", "=q3=Bulwark of the Noble Protector", "=ds=#w8#"};
		{ 26, 41794, "", "=q3=Design: Deadly Monarch Topaz", "=ds=#p12# (390)"};
		{ 28, 43665, "", "=q1=Keristrasza's Broken Heart", "=ds=#m3#"};
	};

		-------------------
		--- Azjol-Nerub ---
		-------------------

	AtlasLoot_Data["AzjolNerubKrikthir"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35657, "", "=q3=Exquisite Spider-Silk Footwraps", "=ds=#s12#, #a1#"};
		{ 3, 35656, "", "=q3=Aura Focused Gauntlets", "=ds=#s9#, #a4#"};
		{ 4, 35655, "", "=q3=Cobweb Machete", "=ds=#h1#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37218, "", "=q3=Stone-Worn Footwraps", "=ds=#s12#, #a1#"};
		{ 19, 37219, "", "=q3=Custodian's Chestpiece", "=ds=#s5#, #a2#"};
		{ 20, 37217, "", "=q3=Golden Limb Bands", "=ds=#s8#, #a4#"};
		{ 21, 37216, "", "=q3=Facade Shield of Glyphs", "=ds=#w8#"};
	};

	AtlasLoot_Data["AzjolNerubHadronox"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35660, "", "=q3=Spinneret Epaulets", "=ds=#s3#, #a2#"};
		{ 3, 35659, "", "=q3=Treads of Aspiring Heights", "=ds=#s12#, #a2#"};
		{ 4, 35658, "", "=q3=Life-Staff of the Web Lair", "=ds=#w9#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37222, "", "=q3=Egg Sac Robes", "=ds=#s5#, #a1#"};
		{ 19, 37230, "", "=q3=Grotto Mist Gloves", "=ds=#s9#, #a2#"};
		{ 20, 37221, "", "=q3=Hollowed Mandible Legplates", "=ds=#s11#, #a3#"};
		{ 21, 37220, "", "=q3=Essence of Gossamer", "=ds=#s14#"};
	};

	AtlasLoot_Data["AzjolNerubAnubarak"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35663, "", "=q3=Charmed Silken Cord", "=ds=#s10#, #a1#"};
		{ 3, 35662, "", "=q3=Wing Cover Girdle", "=ds=#s10#, #a3#"};
		{ 4, 35661, "", "=q3=Signet of Arachnathid Command", "=ds=#s13#"};
		{ 6, 43411, "", "=q1=Anub'arak's Broken Husk", "=ds=#m3#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37242, "", "=q4=Sash of the Servant", "=ds=#s10#, #a1#"};
		{ 19, 37240, "", "=q4=Flamebeard's Bracers", "=ds=#s8#, #a4#"};
		{ 20, 37241, "", "=q4=Ancient Aligned Girdle", "=ds=#s10#, #a4#"};
		{ 21, 37238, "", "=q4=Rod of the Fallen Monarch", "=ds=#w12#"};
		{ 22, 37236, "", "=q3=Insect Vestments", "=ds=#s5#, #a2#"};
		{ 23, 37237, "", "=q3=Chitin Shell Greathelm", "=ds=#s1#, #a4#"};
		{ 24, 37232, "", "=q3=Ring of the Traitor King", "=ds=#s13#"};
		{ 25, 37235, "", "=q3=Crypt Lord's Deft Blade", "=ds=#h1#, #w10#"};
		{ 26, 41796, "", "=q3=Design: Infused Twilight Opal", "=ds=#p12# (390)"};
		{ 28, 43726, "", "=q1=The Idle Crown of Anub'arak", "=ds=#m3#"};
	};

	AtlasLoot_Data["AzjolNerubTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 2, 37243, "", "=q3=Treasure Seeker's Belt", "=ds=#s10#, #a2#"};
		{ 3, 37625, "", "=q3=Web Winder Gloves", "=ds=#s9#, #a4#"};
		{ 4, 37624, "", "=q3=Stained-Glass Shard Ring", "=ds=#s13#"};
	}; 

		----------------------------------
		--- Ahn'kahet: The Old Kingdom ---
		----------------------------------

	AtlasLoot_Data["AhnkahetNadox"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35607, "", "=q3=Ahn'kahar Handwraps", "=ds=#s9#, #a2#"};
		{ 3, 35608, "", "=q3=Crawler-Emblem Belt", "=ds=#s10#, #a4#"};
		{ 4, 35606, "", "=q3=Blade of Nadox", "=ds=#h1#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37594, "", "=q3=Elder Headpiece", "=ds=#s1#, #a1#"};
		{ 19, 37593, "", "=q3=Sprinting Shoulderpads", "=ds=#s3#, #a2#"};
		{ 20, 37592, "", "=q3=Brood Plague Helmet", "=ds=#s1#, #a3#"};
		{ 21, 37591, "", "=q3=Nerubian Shield Ring", "=ds=#s13#"};
	};

	AtlasLoot_Data["AhnkahetTaldaram"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35611, "", "=q3=Gloves of the Blood Prince", "=ds=#s9#, #a1#"};
		{ 3, 35610, "", "=q3=Slasher's Amulet", "=ds=#s2#"};
		{ 4, 35609, "", "=q3=Talisman of Scourge Command", "=ds=#s15#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37613, "", "=q3=Flame Sphere Bindings", "=ds=#s8#, #a1#"};
		{ 19, 37614, "", "=q3=Gauntlets of the Plundering Geist", "=ds=#s9#, #a3#"};
		{ 20, 37612, "", "=q3=Bonegrinder Breastplate", "=ds=#s5#, #a4#"};
		{ 21, 37595, "", "=q3=Necklace of Taldaram", "=ds=#s2#"};
	};

	AtlasLoot_Data["AhnkahetAmanitarHEROIC"] = {
		{ 1, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 2, 43287, "", "=q3=Silken Bridge Handwraps", "=ds=#s9#, #a1#"};
		{ 3, 43286, "", "=q3=Legguards of Swarming Attacks", "=ds=#s11#, #a2#"};
		{ 4, 43285, "", "=q3=Amulet of the Spell Flinger", "=ds=#s2#"};
		{ 5, 43284, "", "=q3=Amanitar Skullbow", "=ds=#w3#"};
	};

	AtlasLoot_Data["AhnkahetJedoga"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 43278, "", "=q3=Cloak of the Darkcaster", "=ds=#s4#"};
		{ 3, 43279, "", "=q3=Battlechest of the Twilight Cult", "=ds=#s5#, #a4#"};
		{ 4, 43277, "", "=q3=Jedoga's Greatring", "=ds=#s13#"};
		{ 6, 21524, "", "=q2=Red Winter Hat", "=ds=#s1#, #a1# =q2=#m28#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 43283, "", "=q3=Subterranean Waterfall Shroud", "=ds=#s4#"};
		{ 19, 43280, "", "=q3=Faceguard of the Hammer Clan", "=ds=#s1#, #a4#"};
		{ 20, 43282, "", "=q3=Shadowseeker's Pendant", "=ds=#s2#"};
		{ 21, 43281, "", "=q3=Edge of Oblivion", "=ds=#h2#, #w1#"};
		{ 23, 21524, "", "=q2=Red Winter Hat", "=ds=#s1#, #a1# =q2=#m28#"};
	};

	AtlasLoot_Data["AhnkahetVolazj"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35612, "", "=q3=Mantle of Echoing Bats", "=ds=#s3#, #a1#"};
		{ 3, 35613, "", "=q3=Pyramid Embossed Belt", "=ds=#s10#, #a2#"};
		{ 4, 35614, "", "=q3=Volazj's Sabatons", "=ds=#s12#, #a4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37622, "", "=q4=Skirt of the Old Kingdom", "=ds=#s11#, #a1#"};
		{ 19, 37623, "", "=q4=Fiery Obelisk Handguards", "=ds=#s9#, #a3#"};
		{ 20, 37620, "", "=q4=Bracers of the Herald", "=ds=#s8#, #a4#"};
		{ 21, 37619, "", "=q4=Wand of Ahnkahet", "=ds=#w12#"};
		{ 22, 37616, "", "=q3=Kilt of the Forgotten One", "=ds=#s11#, #a2#"};
		{ 23, 37618, "", "=q3=Greaves of Ancient Evil", "=ds=#s12#, #a4#"};
		{ 24, 37617, "", "=q3=Staff of Sinister Claws", "=ds=#w9#"};
		{ 25, 37615, "", "=q3=Titanium Compound Bow", "=ds=#w2#"};
		{ 26, 41790, "", "=q3=Design: Precise Scarlet Ruby", "=ds=#p12# (390)"};
		{ 28, 43821, "", "=q1=Faceless One's Withered Brain", "=ds=#m3#"};
	};

	AtlasLoot_Data["AhnkahetTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35616, "", "=q3=Spored Tendrils Spaulders", "=ds=#s3#, #a3#"};
		{ 3, 35615, "", "=q3=Glowworm Cavern Bindings", "=ds=#s8#, #a3#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37625, "", "=q3=Web Winder Gloves", "=ds=#s9#, #a4#"};
		{ 18, 37624, "", "=q3=Stained-Glass Shard Ring", "=ds=#s13#"};
	};

		------------------------
		--- Drak'Tharon Keep ---
		------------------------

	AtlasLoot_Data["DrakTharonKeepTrollgore"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35620, "", "=q3=Berserker's Horns", "=ds=#s1#, #a2#"};
		{ 3, 35619, "", "=q3=Infection Resistant Legguards", "=ds=#s11#, #a3#"};
		{ 4, 35618, "", "=q3=Troll Butcherer", "=ds=#h2#, #w10#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37715, "", "=q3=Cowl of the Dire Troll", "=ds=#s1#, #a1#"};
		{ 19, 37714, "", "=q3=Batrider's Cord", "=ds=#s10#, #a2#"};
		{ 20, 37717, "", "=q3=Legs of Physical Regeneration", "=ds=#s11#, #a4#"};
		{ 21, 37712, "", "=q3=Terrace Defence Boots", "=ds=#s12#, #a4#"};
	};

	AtlasLoot_Data["DrakTharonKeepNovos"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35632, "", "=q3=Robes of Novos", "=ds=#s5#, #a1#"};
		{ 3, 35631, "", "=q3=Crystal Pendant of Warding", "=ds=#s2#"};
		{ 4, 35630, "", "=q3=Summoner's Stone Gavel", "=ds=#h1#, #w6#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37722, "", "=q3=Breastplate of Undeath", "=ds=#s5#, #a4#"};
		{ 19, 37718, "", "=q3=Temple Crystal Fragment", "=ds=#s15#"};
		{ 20, 37721, "", "=q3=Cursed Lich Blade", "=ds=#h3#, #w10#"};
	};

	AtlasLoot_Data["DrakTharonKeepKingDred"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35635, "", "=q3=Stable Master's Breeches", "=ds=#s11#, #a1#"};
		{ 3, 35634, "", "=q3=Scabrous-Hide Helm", "=ds=#s1#, #a2#"};
		{ 4, 35633, "", "=q3=Staff of the Great Reptile", "=ds=#w9#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37725, "", "=q3=Savage Wound Wrap", "=ds=#s8#, #a1#"};
		{ 19, 37724, "", "=q3=Handler's Arm Strap", "=ds=#s8#, #a2#"};
		{ 20, 37726, "", "=q3=King Dred's Helm", "=ds=#s1#, #a3#"};
		{ 21, 37723, "", "=q3=Incisor Fragment", "=ds=#s14#"};
	};

	AtlasLoot_Data["DrakTharonKeepTharonja"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35638, "", "=q3=Helmet of Living Flesh", "=ds=#s1#, #a3#"};
		{ 3, 35637, "", "=q3=Muradin's Lost Greaves", "=ds=#s11#, #a4#"};
		{ 4, 35636, "", "=q3=Tharon'ja's Aegis", "=ds=#w8#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37798, "", "=q4=Overlook Handguards", "=ds=#s9#, #a1#"};
		{ 19, 37791, "", "=q4=Leggings of the Winged Serpent", "=ds=#s11#, #a2#"};
		{ 20, 37788, "", "=q4=Limb Regeneration Bracers", "=ds=#s8#, #a3#"};
		{ 21, 37784, "", "=q4=Keystone Great-Ring", "=ds=#s13#"};
		{ 22, 37735, "", "=q3=Ziggurat Imprinted Chestguard", "=ds=#s5#, #a4#"};
		{ 23, 37732, "", "=q3=Spectral Seal of the Prophet", "=ds=#s13#"};
		{ 24, 37734, "", "=q3=Talisman of Troll Divinity", "=ds=#s14#"};
		{ 25, 37733, "", "=q3=Mojo Masked Crusher", "=ds=#h2#, #w6#"};
		{ 26, 41795, "", "=q3=Design: Timeless Forest Emerald", "=ds=#p12# (390)"};
		{ 28, 43670, "", "=q1=Prophet's Enchanted Tiki", "=ds=#m3#"};
	};

	AtlasLoot_Data["DrakTharonKeepTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35641, "", "=q3=Scytheclaw Boots", "=ds=#s12#, #a2#"};
		{ 3, 35640, "", "=q3=Darkweb Bindings", "=ds=#s8#, #a3#"};
		{ 4, 35639, "", "=q3=Brighthelm of Guarding", "=ds=#s1#, #a4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37799, "", "=q3=Reanimator's Cloak", "=ds=#s4#"};
		{ 18, 37800, "", "=q3=Aviary Guardsman's Hauberk", "=ds=#s5#, #a3#"};
		{ 19, 37801, "", "=q3=Waistguard of the Risen Knight", "=ds=#s10#, #a4#"};
	};

		-----------------------
		--- The Violet Hold ---
		-----------------------

	AtlasLoot_Data["VioletHoldErekem"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 43363, "", "=q3=Screeching Cape", "=ds=#s4#"};
		{ 3, 43375, "", "=q3=Trousers of the Arakkoa", "=ds=#s11#, #a1#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 43406, "", "=q3=Cloak of the Gushing Wound", "=ds=#s4#" };
		{ 19, 43405, "", "=q3=Sabatons of Erekem", "=ds=#s12#, #a4#" };
		{ 20, 43407, "", "=q3=Stormstrike Mace", "=ds=#h1#, #w6#" };
	};

	AtlasLoot_Data["VioletHoldZuramat"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 43353, "", "=q3=Void Sentry Legplates", "=ds=#s11#, #a4#"};
		{ 3, 43358, "", "=q3=Pendant of Shadow Beams", "=ds=#s2#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 43403, "", "=q3=Shroud of Darkness", "=ds=#s1#, #a2#" };
		{ 19, 43402, "", "=q3=The Obliterator Greaves", "=ds=#s12#, #a4#" };
		{ 20, 43404, "", "=q3=Zuramat's Necklace", "=ds=#s2#" };
	};

	AtlasLoot_Data["VioletHoldXevozz"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35644, "", "=q3=Xevozz's Belt", "=ds=#s10#, #a3#"};
		{ 3, 35642, "", "=q3=Riot Shield", "=ds=#w8#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37867, "", "=q3=Footwraps of Teleportation", "=ds=#s12#, #a1#" };
		{ 19, 37868, "", "=q3=Girdle of the Ethereal", "=ds=#s10#, #a3#" };
		{ 20, 37861, "", "=q3=Necklace of Arcane Spheres", "=ds=#s2#" };
	};

	AtlasLoot_Data["VioletHoldIchoron"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35647, "", "=q3=Handguards of Rapid Pursuit", "=ds=#s9#, #a2#"};
		{ 3, 35643, "", "=q3=Spaulders of Ichoron", "=ds=#s3#, #a4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 43401, "", "=q3=Water-Drenched Robe", "=ds=#s5#, #a1#" };
		{ 19, 37862, "", "=q3=Gauntlets of the Water Revenant", "=ds=#s9#, #a4#"};
		{ 20, 37869, "", "=q3=Globule Signet", "=ds=#s13#" };
	};

	AtlasLoot_Data["VioletHoldMoragg"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 43387, "", "=q3=Shoulderplates of the Beholder", "=ds=#s3#, #a4#"};
		{ 3, 43382, "", "=q3=Band of Eyes", "=ds=#s13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 43410, "", "=q3=Moragg's Chestguard", "=ds=#s5#, #a3#"};
		{ 19, 43408, "", "=q3=Solitare of Reflecting Beams", "=ds=#s13#"};
		{ 20, 43409, "", "=q3=Saliva Corroded Pike", "=ds=#w7#"}
	};

	AtlasLoot_Data["VioletHoldLavanthor"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35646, "", "=q3=Lava Burn Gloves", "=ds=#s9#, #a1#"};
		{ 3, 35645, "", "=q3=Prison Warden's Shotgun", "=ds=#w5#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37870, "", "=q3=Twin-Headed Boots", "=ds=#s12#, #a3#"};
		{ 19, 37872, "", "=q3=Lavanthor's Talisman", "=ds=#s14#"};
		{ 20, 37871, "", "=q3=The Key", "=ds=#h1#, #w1#" };
	};

	AtlasLoot_Data["VioletHoldCyanigosa"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35650, "", "=q3=Boots of the Portal Guardian", "=ds=#s12#, #a3#"};
		{ 3, 35651, "", "=q3=Plate Claws of the Dragon", "=ds=#s9#, #a4#"};
		{ 4, 35649, "", "=q3=Jailer's Baton", "=ds=#w9#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37884, "", "=q4=Azure Cloth Bindings", "=ds=#s8#, #a1#"};
		{ 19, 37886, "", "=q4=Handgrips of the Savage Emissary", "=ds=#s9#, #a3#"};
		{ 20, 43500, "", "=q4=Bolstered Legplates", "=ds=#s11#, #a4#"};
		{ 21, 37883, "", "=q4=Staff of Trickery", "=ds=#w9#"};
		{ 23, 37876, "", "=q3=Cyanigosa's Leggings", "=ds=#s11#, #a1#"};
		{ 24, 37875, "", "=q3=Spaulders of the Violet Hold", "=ds=#s3#, #a3#"};
		{ 25, 37874, "", "=q3=Gauntlets of Capture", "=ds=#s9#, #a4#"};
		{ 26, 37873, "", "=q3=Mark of the War Prisoner", "=ds=#s14#"};
		{ 27, 41791, "", "=q3=Design: Thick Autumn's Glow", "=ds=#p12# (390)"};
		{ 29, 43823, "", "=q1=Head of Cyanigosa", "=ds=#m3#"};
	};

	AtlasLoot_Data["VioletHoldTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35654, "", "=q3=Bindings of the Bastille", "=ds=#s8#, #a1#"};
		{ 3, 35653, "", "=q3=Dungeon Girdle", "=ds=#s10#, #a4#"};
		{ 4, 35652, "", "=q3=Incessant Torch", "=ds=#w12#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37890, "", "=q3=Chain Gang Legguards", "=ds=#s11#, #a2#"};
		{ 18, 37891, "", "=q3=Cast Iron Shackles", "=ds=#s8#, #a4#"};
		{ 19, 37889, "", "=q3=Prison Manifest", "=ds=#s15#"};
	};

		---------------
		--- Gundrak ---
		---------------

	AtlasLoot_Data["GundrakSladran"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35584, "", "=q3=Embroidered Gown of Zul'drak", "=ds=#s5#, #a1#"};
		{ 3, 35585, "", "=q3=Cannibal's Legguards", "=ds=#s11#, #a3#"};
		{ 4, 35583, "", "=q3=Witch Doctor's Wildstaff", "=ds=#w9#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37629, "", "=q3=Slithering Slippers", "=ds=#s12#, #a1#"};
		{ 19, 37628, "", "=q3=Slad'ran's Coiled Cord", "=ds=#s10#, #a3#"};
		{ 20, 37627, "", "=q3=Snake Den Spaulders", "=ds=#s3#, #a4#"};
		{ 21, 37626, "", "=q3=Wand of Sseratus", "=ds=#w12#"};
	};

	AtlasLoot_Data["GundrakColossus"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35591, "", "=q3=Shoulderguards of the Ice Troll", "=ds=#s3#, #a2#"};
		{ 3, 35592, "", "=q3=Hauberk of Totemic Mastery", "=ds=#s5#, #a3#"};
		{ 4, 35590, "", "=q3=Drakkari Hunting Bow", "=ds=#w2#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37637, "", "=q3=Living Mojo Belt", "=ds=#s10#, #a1#"};
		{ 19, 37636, "", "=q3=Helm of Cheated Fate", "=ds=#s1#, #a2#" };
		{ 20, 37634, "", "=q3=Bracers of the Divine Elemental", "=ds=#s8#, #a2#"};
		{ 21, 37635, "", "=q3=Pauldrons of the Colossus", "=ds=#s3#, #a4#"};
	};

	AtlasLoot_Data["GundrakMoorabi"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35588, "", "=q3=Forlorn Breastplate of War", "=ds=#s5#, #a4#"};
		{ 3, 35589, "", "=q3=Arcane Focal Signet", "=ds=#s13#"};
		{ 4, 35587, "", "=q3=Frozen Scepter of Necromancy", "=ds=#h3#, #w6#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37630, "", "=q3=Shroud of Moorabi", "=ds=#s4#"};
		{ 19, 37633, "", "=q3=Ground Tremor Helm", "=ds=#s1#, #a4#"};
		{ 20, 37632, "", "=q3=Mojo Frenzy Greaves", "=ds=#s12#, #a4#"};
		{ 21, 37631, "", "=q3=Fist of the Deity", "=ds=#h3#, #w13#"};
	};

	AtlasLoot_Data["GundrakEckHEROIC"] = {
		{ 1, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 2, 43313, "", "=q3=Leggings of the Ruins Dweller", "=ds=#s11#, #a1#"};
		{ 3, 43312, "", "=q3=Gorloc Muddy Footwraps", "=ds=#s12#, #a2#"};
		{ 4, 43311, "", "=q3=Helmet of the Shrine", "=ds=#s1#, #a3#"};
		{ 5, 43310, "", "=q3=Engraved Chestplate of Eck", "=ds=#s5#, #a4#"};
	};

	AtlasLoot_Data["GundrakGaldarah"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 43305, "", "=q3=Shroud of Akali", "=ds=#s4#"};
		{ 3, 43309, "", "=q3=Amulet of the Stampede", "=ds=#s2#"};
		{ 4, 43306, "", "=q3=Gal'darah's Signet", "=ds=#s13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37643, "", "=q4=Sash of Blood Removal", "=ds=#s10#, #a2#"};
		{ 19, 37644, "", "=q4=Gored Hide Legguards", "=ds=#s11#, #a2#"};
		{ 20, 37645, "", "=q4=Horn-Tipped Gauntlets", "=ds=#s9#, #a4#"};
		{ 21, 37642, "", "=q4=Hemorrhaging Circle", "=ds=#s13#"};
        { 22, 37641, "", "=q3=Arcane Flame Altar-Garb", "=ds=#s5#, #a1#" };
		{ 23, 37640, "", "=q3=Boots of Transformation", "=ds=#s12#, #a2#"};
		{ 24, 37639, "", "=q3=Grips of the Beast God", "=ds=#s9#, #a3#"};
		{ 25, 37638, "", "=q3=Offering of Sacrifice", "=ds=#s14#"};
		{ 27, 43693, "", "=q1=Mojo Remnant of Akali", "=ds=#m3#"};
	};

	AtlasLoot_Data["GundrakTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35594, "", "=q3=Snowmelt Silken Cinch", "=ds=#s10#, #a1#"};
		{ 3, 35593, "", "=q3=Steel Bear Trap Bracers", "=ds=#s8#, #a4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37647, "", "=q3=Cloak of Bloodied Waters", "=ds=#s4#"};
		{ 18, 37648, "", "=q3=Belt of Tasseled Lanterns", "=ds=#s10#, #a3#"};
		{ 19, 37646, "", "=q3=Burning Skull Pendant", "=ds=#s2#"};
	}; 

		----------------------
		--- Halls of Stone ---
		----------------------

	AtlasLoot_Data["HallsofStoneMaiden"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 38614, "", "=q3=Embrace of Sorrow", "=ds=#s4#"};
		{ 3, 38613, "", "=q3=Chain of Fiery Orbs", "=ds=#s2#"};
		{ 4, 38611, "", "=q3=Ringlet of Repose", "=ds=#s13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 38616, "", "=q3=Maiden's Girdle", "=ds=#s10#, #a2#"};
		{ 19, 38615, "", "=q3=Lightning-Charged Gloves", "=ds=#s9#, #a3#"};
		{ 20, 38617, "", "=q3=Woeful Band", "=ds=#s13#"};
		{ 21, 38618, "", "=q3=Hammer of Grief", "=ds=#h2#, #w6#"};
	};

	AtlasLoot_Data["HallsofStoneKrystallus"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35673, "", "=q3=Leggings of Burning Gleam", "=ds=#s11#, #a1#"};
		{ 3, 35672, "", "=q3=Hollow Geode Helm", "=ds=#s1#, #a3#"};
		{ 4, 35670, "", "=q3=Brann's Lost Mining Helmet", "=ds=#s1#, #a4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37652, "", "=q3=Spaulders of Krystallus", "=ds=#s3#, #a2#"};
		{ 19, 37650, "", "=q3=Shardling Legguards", "=ds=#s11#, #a4#"};
		{ 20, 37651, "", "=q3=The Prospector's Prize", "=ds=#s13#"};
		{ 21, 37653, "", "=q3=Sword of Justice", "=ds=#h2#, #w10#"};
	};

	AtlasLoot_Data["HallsofStoneTribunal"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35677, "", "=q3=Cosmos Vestments", "=ds=#s5#, #a2#"};
		{ 3, 35676, "", "=q3=Constellation Leggings", "=ds=#s11#, #a2#"};
		{ 4, 35675, "", "=q3=Linked Armor of the Sphere", "=ds=#s5#, #a3#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37655, "", "=q3=Mantle of the Tribunal", "=ds=#s3#, #a1#"};
		{ 19, 37656, "", "=q3=Raging Construct Bands", "=ds=#s8#, #a3#"};
		{ 20, 37654, "", "=q3=Sabatons of the Ages", "=ds=#s12#, #a3#"};
	};

	AtlasLoot_Data["HallsofStoneSjonnir"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35679, "", "=q3=Static Cowl", "=ds=#s1#, #a1#"};
		{ 3, 35678, "", "=q3=Ironshaper's Legplates", "=ds=#s11#, #a4#"};
		{ 4, 35680, "", "=q3=Amulet of Wills", "=ds=#s2#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37669, "", "=q4=Leggings of the Stone Halls", "=ds=#s11#, #a3#"};
		{ 19, 37668, "", "=q4=Bands of the Stoneforge", "=ds=#s8#, #a4#"};
		{ 20, 37670, "", "=q4=Sjonnir's Girdle", "=ds=#s10#, #a4#"};
		{ 21, 37667, "", "=q4=The Fleshshaper", "=ds=#h1#, #w4#"};
		{ 23, 37666, "", "=q3=Boots of the Whirling Mist", "=ds=#s12#, #a2#"};
		{ 24, 37658, "", "=q3=Sun-Emblazoned Chestplate", "=ds=#s5#, #a4#"};
		{ 25, 37657, "", "=q3=Spark of Life", "=ds=#s14#"};
		{ 26, 37660, "", "=q3=Forge Ember", "=ds=#s14#"};
		{ 27, 41792, "", "=q3=Design: Deft Monarch Topaz", "=ds=#p12# (390)"};
		{ 29, 43699, "", "=q1=The Curse of Flesh Disc", "=ds=#m3#"};
	};

	AtlasLoot_Data["HallsofStoneTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35682, "", "=q3=Rune Giant Bindings", "=ds=#s8#, #a1#"};
		{ 3, 35683, "", "=q3=Palladium Ring", "=ds=#s13#"};
		{ 4, 35681, "", "=q3=Unrelenting Blade", "=ds=#h1#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37673, "", "=q3=Dark Runic Mantle", "=ds=#s3#, #a1#"};
		{ 18, 37672, "", "=q3=Patina-Coated Breastplate", "=ds=#s5#, #a4#"};
		{ 19, 37671, "", "=q3=Refined Ore Gloves", "=ds=#s9#, #a4#"}; 
	};

		--------------------------
		--- Halls of Lightning ---
		--------------------------

	AtlasLoot_Data["HallsofLightningBjarngrim"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36982, "", "=q3=Mantle of Electrical Charges", "=ds=#s3#, #a1#"};
		{ 3, 36979, "", "=q3=Gjarngrin Family Signet", "=ds=#s13#"};
		{ 4, 36980, "", "=q3=Hewn Sparring Quarterstaff", "=ds=#w9#"};
		{ 5, 36981, "", "=q3=Hardened Vrykul Throwing Axe", "=ds=#w11#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37825, "", "=q3=Traditionally Dyed Handguards", "=ds=#s9#, #a1#"};
		{ 19, 37818, "", "=q3=Patroller's War-Kilt", "=ds=#s11#, #a3#"};
		{ 20, 37814, "", "=q3=Iron Dwarf Smith Pauldrons", "=ds=#s3#, #a4#"};
		{ 21, 37826, "", "=q3=The General's Steel Girdle", "=ds=#s10#, #a4#"};
	};

	AtlasLoot_Data["HallsofLightningVolkhan"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36983, "", "=q3=Cape of Seething Steam", "=ds=#s4#"};
		{ 3, 36985, "", "=q3=Volkhan's Hood", "=ds=#s1#, #a1#"};
		{ 4, 36986, "", "=q3=Kilt of Molten Golems", "=ds=#s11#, #a3#"};
		{ 5, 36984, "", "=q3=Eternally Folded Blade", "=ds=#h1#, #w10#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37840, "", "=q3=Shroud of Reverberation", "=ds=#s4#"};
		{ 19, 37843, "", "=q3=Giant-Hair Woven Gloves", "=ds=#s9#, #a1#"};
		{ 20, 37842, "", "=q3=Belt of Vivacity", "=ds=#s10#, #a2#"};
		{ 21, 37841, "", "=q3=Slag Footguards", "=ds=#s12#, #a2#"};
	};

	AtlasLoot_Data["HallsofLightningIonar"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 39536, "", "=q3=Thundercloud Grasps", "=ds=#s9#, #a1#"};
		{ 3, 39657, "", "=q3=Tornado Cuffs", "=ds=#s8#, #a3#"};
		{ 4, 39534, "", "=q3=Pauldrons of the Lightning Revenant", "=ds=#s3#, #a4#"};
		{ 5, 39535, "", "=q3=Ionar's Girdle", "=ds=#s10#, #a4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37846, "", "=q3=Charged-Bolt Grips", "=ds=#s9#, #a2#"};
		{ 19, 37845, "", "=q3=Cord of Swirling Winds", "=ds=#s10#, #a3#"};
		{ 20, 37826, "", "=q3=The General's Steel Girdle", "=ds=#s10#, #a4#"};
		{ 21, 37844, "", "=q3=Winged Talisman", "=ds=#s14#"};
	};

	AtlasLoot_Data["HallsofLightningLoken"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36991, "", "=q3=Raiments of the Titans", "=ds=#s5#, #a1#"};
		{ 3, 36996, "", "=q3=Hood of the Furtive Assassin", "=ds=#s1#, #a2#"};
		{ 4, 36992, "", "=q3=Leather-Braced Chain Leggings", "=ds=#s11#, #a3#"};
		{ 5, 36995, "", "=q3=Fists of Loken", "=ds=#s9#, #a4#"};
		{ 6, 36988, "", "=q3=Chaotic Spiral Amulet", "=ds=#s2#"};
		{ 7, 36993, "", "=q3=Seal of the Pantheon", "=ds=#s14#"};
		{ 8, 36994, "", "=q3=Projectile Activator", "=ds=#w5#"};
		{ 9, 36989, "", "=q3=Ancient Measuring Rod", "=ds=#w12#"};
		{ 10, 41799, "", "=q3=Design: Eternal Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 12, 43151, "", "=q1=Loken's Tongue", "=ds=#m3#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37854, "", "=q4=Woven Bracae Leggings", "=ds=#s11#, #a1#"};
		{ 19, 37853, "", "=q4=Advanced Tooled-Leather Bands", "=ds=#s8#, #a2#"};
		{ 20, 37855, "", "=q4=Mail Girdle of the Audient Earth", "=ds=#s10#, #a3#"};
		{ 21, 37852, "", "=q4=Colossal Skull-Clad Cleaver", "=ds=#h2#, #w1#"};
		{ 23, 37851, "", "=q3=Ornate Woolen Stola", "=ds=#s5#, #a1#"};
		{ 24, 37850, "", "=q3=Flowing Sash of Order", "=ds=#s10#, #a1#"};
		{ 25, 37849, "", "=q3=Planetary Helm", "=ds=#s1#, #a4#"};
		{ 26, 37848, "", "=q3=Lightning Giant Staff", "=ds=#w9#"};
		{ 27, 41799, "", "=q3=Design: Eternal Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 29, 43724, "", "=q1=Celestial Ruby Ring", "=ds=#m3#"};
		{ 30, 43151, "", "=q1=Loken's Tongue", "=ds=#m3#"};
	};

	AtlasLoot_Data["HallsofLightningTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36997, "", "=q3=Sash of the Hardened Watcher", "=ds=#s10#, #a1#"};
		{ 3, 37000, "", "=q3=Storming Vortex Bracers", "=ds=#s8#, #a2#"};
		{ 4, 36999, "", "=q3=Boots of the Terrestrial Guardian", "=ds=#s12#, #a3#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37858, "", "=q3=Awakened Handguards", "=ds=#s9#, #a2#"};
		{ 18, 37857, "", "=q3=Helm of the Lightning Halls", "=ds=#s1#, #a3#"};
		{ 19, 37856, "", "=q3=Librarian's Paper Cutter", "=ds=#h1#, #w4#"};
	};

		---------------------------------------
		--- Caverns of Time: Old Stratholme ---
		---------------------------------------

	AtlasLoot_Data["CoTStratholmeMeathook"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37083, "", "=q3=Kilt of Sewn Flesh", "=ds=#s11#, #a2#"};
		{ 3, 37082, "", "=q3=Slaughterhouse Sabatons", "=ds=#s12#, #a4#"};
		{ 4, 37079, "", "=q3=Enchanted Wire Stitching", "=ds=#s13#"};
		{ 5, 37081, "", "=q3=Meathook's Slicer", "=ds=#h1#, #w10#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37680, "", "=q3=Belt of Unified Souls", "=ds=#s10#, #a1#"};
		{ 19, 37678, "", "=q3=Bile-Cured Gloves", "=ds=#s9#, #a2#"};
		{ 20, 37679, "", "=q3=Spaulders of the Abomination", "=ds=#s3#, #a3#"};
		{ 21, 37675, "", "=q3=Legplates of Steel Implants", "=ds=#s11#, #a4#"};
	};

	AtlasLoot_Data["CoTStratholmeSalramm"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37084, "", "=q3=Flowing Cloak of Command", "=ds=#s4#"};
		{ 3, 37095, "", "=q3=Waistband of the Thuzadin", "=ds=#s10#, #a3#"};
		{ 4, 37088, "", "=q3=Spiked Metal Cilice", "=ds=#s10#, #a4#"};
		{ 5, 37086, "", "=q3=Tome of Salramm", "=ds=#s15#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37684, "", "=q3=Forgotten Shadow Hood", "=ds=#s1#, #a1#"};
		{ 19, 37682, "", "=q3=Bindings of Dark Will", "=ds=#s8#, #a4#"};
		{ 20, 37683, "", "=q3=Necromancer's Amulet", "=ds=#s2#"};
		{ 21, 37681, "", "=q3=Gavel of the Fleshcrafter", "=ds=#h3#, #w6#"};
	};

	AtlasLoot_Data["CoTStratholmeEpoch"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37106, "", "=q3=Ouroboros Belt", "=ds=#s10#, #a2#"};
		{ 3, 37105, "", "=q3=Treads of Altered History", "=ds=#s12#, #a3#"};
		{ 4, 37096, "", "=q3=Necklace of the Chrono-Lord", "=ds=#s2#"};
		{ 5, 37099, "", "=q3=Sempiternal Staff", "=ds=#w9#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37687, "", "=q3=Gloves of Distorted Time", "=ds=#s9#, #a1#"};
		{ 19, 37686, "", "=q3=Cracked Epoch Grasps", "=ds=#s9#, #a3#"};
		{ 20, 37688, "", "=q3=Legplates of the Infinite Drakonid", "=ds=#s11#, #a4#"};
		{ 21, 37685, "", "=q3=Mobius Band", "=ds=#s13#"};
	};

	AtlasLoot_Data["CoTStratholmeInfiniteCorruptorHEROIC"] = {
		{ 1, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 2, 43951, "", "=q4=Reins of the Bronze Drake", "=ds=#e12#", "", "100%"};
	};

	AtlasLoot_Data["CoTStratholmeMalGanis"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37113, "", "=q3=Demonic Fabric Bands", "=ds=#s8#, #a1#"};
		{ 3, 37114, "", "=q3=Gloves of Northern Lordaeron", "=ds=#s9#, #a2#"};
		{ 4, 37110, "", "=q3=Gauntlets of Dark Conversion", "=ds=#s9#, #a3#"};
		{ 5, 37109, "", "=q3=Discarded Silver Hand Spaulders", "=ds=#s3#, #a4#"};
		{ 6, 37111, "", "=q3=Soul Preserver", "=ds=#s14#"};
		{ 7, 37108, "", "=q3=Dreadlord's Blade", "=ds=#h2#, #w10#"};
		{ 8, 37112, "", "=q3=Beguiling Scepter", "=ds=#h3#, #w6#"};
		{ 9, 37107, "", "=q3=Leeka's Shield", "=ds=#w8#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37696, "", "=q4=Plague-Infected Bracers", "=ds=#s8#, #a2#"};
		{ 19, 37695, "", "=q4=Legguards of Nature's Power", "=ds=#s11#, #a3#"};
		{ 20, 37694, "", "=q4=Band of Guile", "=ds=#s13#"};
		{ 21, 37693, "", "=q4=Greed", "=ds=#h3#, #w13#"};
		{ 22, 43085, "", "=q4=Royal Crest of Lordaeron", "=ds=#w8#"};
		{ 23, 37691, "", "=q3=Mantle of Deceit", "=ds=#s3#, #a1#"};
		{ 24, 37690, "", "=q3=Pauldrons of Destiny", "=ds=#s3#, #a4#"};
		{ 25, 37689, "", "=q3=Pendant of the Nathrezim", "=ds=#s2#"};
		{ 26, 37692, "", "=q3=Pierce's Pistol", "=ds=#w5#"};
		{ 28, 43697, "", "=q1=Artifact from the Nathrezim Homeworld", "=ds=#m3#"};
	};

	AtlasLoot_Data["CoTStratholmeTrash"] = {
		{ 1, 37117, "", "=q3=King's Square Bracers", "=ds=#s8#, #a2#"};
		{ 2, 37116, "", "=q3=Epaulets of Market Row", "=ds=#s3#, #a3#"};
		{ 3, 37115, "", "=q3=Crusader's Square Pauldrons", "=ds=#s3#, #a4#"};		
	};

		------------------------
		--- Utgarde Pinnacle ---
		------------------------

	AtlasLoot_Data["UPSorrowgrave"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37043, "", "=q3=Tear-Linked Gauntlets", "=ds=#s9#, #a3#"};
		{ 3, 37040, "", "=q3=Svala's Bloodied Shackles", "=ds=#s8#, #a4#"};
		{ 4, 37037, "", "=q3=Ritualistic Athame", "=ds=#h1#, #w4#"};
		{ 5, 37038, "", "=q3=Brazier Igniter", "=ds=#w12#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37370, "", "=q3=Cuffs of the Trussed Hall", "=ds=#s8#, #a1#"};
		{ 19, 37369, "", "=q3=Sorrowgrave's Breeches", "=ds=#s11#, #a1#"};
		{ 20, 37368, "", "=q3=Silent Spectator Shoulderpads", "=ds=#s3#, #a2#"};
		{ 21, 37367, "", "=q3=Echoing Stompers", "=ds=#s12#, #a4#"};
	};

	AtlasLoot_Data["UPPalehoof"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37048, "", "=q3=Shroud of Resurrection", "=ds=#s4#"};
		{ 3, 37052, "", "=q3=Reanimated Armor", "=ds=#s5#, #a4#"};
		{ 4, 37051, "", "=q3=Seal of Valgarde", "=ds=#s15#"};
		{ 5, 37050, "", "=q3=Trophy Gatherer", "=ds=#w2#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37374, "", "=q3=Ravenous Leggings of the Furbolg", "=ds=#s11#, #a2#"};
		{ 19, 37373, "", "=q3=Massive Spaulders of the Jormungar", "=ds=#s3#, #a3#"};
		{ 20, 37376, "", "=q3=Ferocious Pauldrons of the Rhino", "=ds=#s3#, #a4#"};
		{ 21, 37371, "", "=q3=Ring of the Frenzied Wolvar", "=ds=#s13#"};
	};

	AtlasLoot_Data["UPSkadi"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37055, "", "=q3=Silken Amice of the Ymirjar", "=ds=#s3#, #a1#"};
		{ 3, 37057, "", "=q3=Drake Rider's Tunic", "=ds=#s5#, #a2#"};
		{ 4, 37056, "", "=q3=Harpooner's Striders", "=ds=#s12#, #a4#"};
		{ 5, 37053, "", "=q3=Amulet of Deflected Blows", "=ds=#s2#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 44151, "", "=q4=Reins of the Blue Proto-Drake", "=ds=#e12#", ""};
		{ 19, 37389, "", "=q3=Crenelation Leggings", "=ds=#s11#, #a2#"};
		{ 20, 37379, "", "=q3=Skadi's Iron Belt", "=ds=#s10#, #a4#"};
		{ 21, 37377, "", "=q3=Netherbreath Spellblade", "=ds=#h3#, #w4#"};
		{ 22, 37384, "", "=q3=Staff of Wayward Principles", "=ds=#w9#"};
	};

	AtlasLoot_Data["UPYmiron"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37067, "", "=q3=Ceremonial Pyre Mantle", "=ds=#s3#, #a2#"};
		{ 3, 37062, "", "=q3=Crown of Forgotten Kings", "=ds=#s1#, #a4#"};
		{ 4, 37066, "", "=q3=Ancient Royal Legguards", "=ds=#s11#, #a4#"};
		{ 5, 37058, "", "=q3=Signet of Ranulf", "=ds=#s13#"};
		{ 6, 37064, "", "=q3=Vestige of Haldor", "=ds=#s14#"};
		{ 7, 37060, "", "=q3=Jeweled Coronation Sword", "=ds=#h3#, #w10#"};
		{ 8, 37065, "", "=q3=Ymiron's Blade", "=ds=#h1#, #w10#"};
		{ 9, 37061, "", "=q3=Tor's Crest", "=ds=#w8#"};
		{ 10, 41797, "", "=q3=Design: Austere Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37408, "", "=q4=Girdle of Bane", "=ds=#s10#, #a1#"};
		{ 19, 37409, "", "=q4=Gilt-Edged Leather Gauntlets", "=ds=#s9#, #a2#"};
		{ 20, 37407, "", "=q4=Sovereign's Belt", "=ds=#s10#, #a3#"};
		{ 21, 37401, "", "=q4=Red Sword of Courage", "=ds=#h1#, #w10#"};
		{ 23, 37398, "", "=q3=Mantle of Discarded Ways", "=ds=#s3#, #a3#"};
		{ 24, 37395, "", "=q3=Ornamented Plate Regalia", "=ds=#s5#, #a4#"};
		{ 25, 37397, "", "=q3=Gold Amulet of Kings", "=ds=#s2#"};
		{ 26, 37390, "", "=q3=Meteorite Whetstone", "=ds=#s14#"};
		{ 27, 41797, "", "=q3=Design: Austere Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 29, 43669, "", "=q1=Locket of the Deceased Queen", "=ds=#m3#"};
		Prev = "UPSkadi";
	};

	AtlasLoot_Data["UPTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37070, "", "=q3=Tundra Wolf Boots", "=ds=#s12#, #a2#"};
		{ 3, 37069, "", "=q3=Dragonflayer Seer's Bindings", "=ds=#s8#, #a3#"};
		{ 4, 37068, "", "=q3=Berserker's Sabatons", "=ds=#s12#, #a4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37587, "", "=q3=Ymirjar Physician's Robe", "=ds=#s5#, #a2#"};
		{ 18, 37590, "", "=q3=Bands of Fading Light", "=ds=#s8#, #a4#"};
		{ 19, 37410, "", "=q3=Tracker's Balanced Knives", "=ds=#w11#"};
	};

		------------------
		--- The Oculus ---
		------------------

	AtlasLoot_Data["OcuDrakos"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36945, "", "=q3=Verdisa's Cuffs of Dreaming", "=ds=#s8#, #a1#"};
		{ 3, 36946, "", "=q3=Runic Cage Chestpiece", "=ds=#s5#, #a3#"};
		{ 4, 36943, "", "=q3=Timeless Beads of Eternos", "=ds=#s2#"};
		{ 5, 36944, "", "=q3=Lifeblade of Belgaristrasz", "=ds=#h1#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37258, "", "=q3=Drakewing Raiments", "=ds=#s5#, #a1#"};
		{ 19, 37256, "", "=q3=Scaled Armor of Drakos", "=ds=#s5#, #a3#"};
		{ 20, 37257, "", "=q3=Band of Torture", "=ds=#s13#"};
		{ 21, 37255, "", "=q3=The Interrogator", "=ds=#h1#, #w10#"};
		Next = "OcuCloudstrider";
	};

	AtlasLoot_Data["OcuCloudstrider"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36947, "", "=q3=Centrifuge Core Cloak", "=ds=#s4#"};
		{ 3, 36949, "", "=q3=Gloves of the Azure-Lord", "=ds=#s9#, #a1#"};
		{ 4, 36948, "", "=q3=Horned Helm of Varos", "=ds=#s1#, #a2#"};
		{ 5, 36950, "", "=q3=Wing Commander's Breastplate", "=ds=#s5#, #a4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37261, "", "=q3=Gloves of Radiant Light", "=ds=#s9#, #a2#"};
		{ 19, 37262, "", "=q3=Azure Ringmail Leggings", "=ds=#s11#, #a3#"};
		{ 20, 37263, "", "=q3=Legplates of the Oculus Guardian", "=ds=#s11#, #a4#"};
		{ 21, 37260, "", "=q3=Cloudstrider's Waraxe", "=ds=#h1#, #w1#"};
		Prev = "OcuDrakos";
		Next = "OcuUrom";
	};

	AtlasLoot_Data["OcuUrom"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36954, "", "=q3=The Conjurer's Slippers", "=ds=#s12#, #a1#"};
		{ 3, 36951, "", "=q3=Sidestepping Handguards", "=ds=#s9#, #a2#"};
		{ 4, 36953, "", "=q3=Spaulders of Skillful Maneuvers", "=ds=#s3#, #a3#"};
		{ 5, 36952, "", "=q3=Girdle of Obscuring", "=ds=#s10#, #a4#"};
		{ 7, 21525, "", "=q2=Green Winter Hat", "=ds=#s1#, #a1# =q2=#m28#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37289, "", "=q3=Sash of Phantasmal Images", "=ds=#s10#, #a1#"};
		{ 19, 37288, "", "=q3=Catalytic Bands", "=ds=#s8#, #a4#"};
		{ 20, 37195, "", "=q3=Band of Enchanted Growth", "=ds=#s13#"};
		{ 21, 37264, "", "=q3=Pendulum of Telluric Currents", "=ds=#s14#"};
		{ 23, 21525, "", "=q2=Green Winter Hat", "=ds=#s1#, #a1# =q2=#m28#"};
		Prev = "OcuCloudstrider";
		Next = "OcuEregos";
	};

	AtlasLoot_Data["OcuEregos"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36973, "", "=q3=Vestments of the Scholar", "=ds=#s5#, #a1#"};
		{ 3, 36971, "", "=q3=Headguard of Westrift", "=ds=#s1#, #a3#"};
		{ 4, 36969, "", "=q3=Helm of the Ley-Guardian", "=ds=#s1#, #a4#"};
		{ 5, 36974, "", "=q3=Eredormu's Ornamented Chestguard", "=ds=#s5#, #a4#"};
		{ 6, 36961, "", "=q3=Dragonflight Great-Ring", "=ds=#s13#"};
		{ 7, 36972, "", "=q3=Tome of Arcane Phenomena", "=ds=#s14#"};
		{ 8, 36962, "", "=q3=Wyrmclaw Battleaxe", "=ds=#h2#, #w1#"};
		{ 9, 36975, "", "=q3=Malygos's Favor", "=ds=#w9#"};
		{ 10, 41798, "", "=q3=Design: Bracing Earthsiege Diamond", "=ds=#p12# (420)"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 40752, "", "=q4=Emblem of Heroism", "=ds=#e15#"};
		{ 18, 37361, "", "=q4=Cuffs of Winged Levitation", "=ds=#s8#, #a1#"};
		{ 19, 37363, "", "=q4=Gauntlets of Dragon Wrath", "=ds=#s9#, #a4#"};
		{ 20, 37362, "", "=q4=Leggings of Protective Auras", "=ds=#s11#, #a4#"};
		{ 21, 37360, "", "=q4=Staff of Draconic Combat", "=ds=#w9#"};
		{ 23, 37291, "", "=q3=Ancient Dragon Spirit Cape", "=ds=#s4#"};
		{ 24, 37294, "", "=q3=Crown of Unbridled Magic", "=ds=#s1#, #a1#"};
		{ 25, 37293, "", "=q3=Mask of the Watcher", "=ds=#s1#, #a2#"};
		{ 26, 37292, "", "=q3=Ley-Guardian's Legguards", "=ds=#s11#, #a4#"};
		{ 28, 43668, "", "=q1=Ley Line Tuner", "=ds=#m3#"};
		Prev = "OcuUrom";
	};

	AtlasLoot_Data["OcuTrash"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 36978, "", "=q3=Ley-Whelphide Belt", "=ds=#s10#, #a2#"};
		{ 3, 36977, "", "=q3=Bindings of the Construct", "=ds=#s8#, #a4#"};
		{ 4, 36976, "", "=q3=Ring-Lord's Leggings", "=ds=#s11#, #a1#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37366, "", "=q3=Drake-Champion's Bracers", "=ds=#s8#, #a2#"};
		{ 18, 37365, "", "=q3=Bands of the Sky Ring", "=ds=#s8#, #a3#"};
		{ 19, 37290, "", "=q3=Dragon Prow Amulet", "=ds=#s2#"};
		{ 20, 37364, "", "=q3=Frostbridge Orb", "=ds=#s15#"};
	};

		-----------------
		--- Naxxramas ---
		-----------------

	AtlasLoot_Data["Naxx80Patchwerk"] = {
		{ 1, 39272, "", "=q4=Drape of Surgery", "=ds=#s4#"};
		{ 2, 39273, "", "=q4=Sullen Cloth Boots", "=ds=#s12#, #a1#"};
		{ 3, 39275, "", "=q4=Contagion Gloves", "=ds=#s9#, #a2#"};
		{ 4, 39274, "", "=q4=Retcher's Shoulderpads", "=ds=#s3#, #a3#"};
		{ 5, 39267, "", "=q4=Abomination Shoulderblades", "=ds=#s3#, #a4#"};
		{ 6, 39262, "", "=q4=Gauntlets of Combined Strength", "=ds=#s9#, #a4#"};
		{ 7, 39261, "", "=q4=Tainted Girdle of Mending", "=ds=#s10#, #a4#"};
		{ 8, 39271, "", "=q4=Blade of Dormant Memories", "=ds=#h3#, #w4#"};
		{ 9, 39270, "", "=q4=Hatestrike", "=ds=#h1#, #w10#"};
	};

	AtlasLoot_Data["Naxx80Patchwerk25Man"] = {
		{ 1, 40271, "", "=q4=Sash of Solitude", "=ds=#s10#, #a1#"};
		{ 2, 40269, "", "=q4=Boots of Persuasion", "=ds=#s12#, #a1#"};
		{ 3, 40260, "", "=q4=Belt of the Tortured", "=ds=#s10#, #a2#"};
		{ 4, 40270, "", "=q4=Boots of Septic Wounds", "=ds=#s12#, #a2#"};
		{ 5, 40262, "", "=q4=Gloves of Calculated Risk", "=ds=#s9#, #a3#"};
		{ 6, 40272, "", "=q4=Girdle of the Gambit", "=ds=#s10#, #a3#"};
		{ 7, 40261, "", "=q4=Crude Discolored Battlegrips", "=ds=#s9#, #a4#"};
		{ 8, 40263, "", "=q4=Fleshless Girdle", "=ds=#s10#. #a4#"};
		{ 9, 40259, "", "=q4=Waistguard of Divine Grace", "=ds=#s10#, #a4#"};
		{ 10, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"};
		{ 11, 40065, "", "=q4=Fool's Trial", "=ds=#s2#"};
		{ 12, 40069, "", "=q4=Heritage", "=ds=#s2#"};
		{ 13, 40064, "", "=q4=Thunderstorm Amulet", "=ds=#s2#"};
		{ 14, 40080, "", "=q4=Lost Jewel", "=ds=#s13#"};
		{ 15, 40075, "", "=q4=Ruthlessness", "=ds=#s13#"};
		{ 16, 40107, "", "=q4=Sand-Worn Band", "=ds=#s13#"};
		{ 17, 40074, "", "=q4=Strong-Handed Ring", "=ds=#s13#"};
		{ 18, 40273, "", "=q4=Surplus Limb", "=ds=#s15#"};
		{ 19, 40267, "", "=q4=Totem of Hex", "=ds=#s16#, #w15#"};
		{ 20, 40268, "", "=q4=Libram of Tolerance", "=ds=#s16#, #w16#"};
		{ 21, 40264, "", "=q4=Split Greathammer", "=ds=#h1#, #w6#"};
		{ 22, 40266, "", "=q4=Hero's Surrender", "=ds=#w8#"};
		{ 23, 40265, "", "=q4=Arrowsong", "=ds=#w2#"};
	};

	AtlasLoot_Data["Naxx80Grobbulus"] = {
		{ 1, 39284, "", "=q4=Miasma Mantle", "=ds=#s3#, #a1#"};
		{ 2, 39285, "", "=q4=Handgrips of Turmoil", "=ds=#s9#, #a1#"};
		{ 3, 39283, "", "=q4=Putrescent Bands", "=ds=#s8#, #a2#"};
		{ 4, 39279, "", "=q4=Blistered Belt of Decay", "=ds=#s10#, #a2#"};
		{ 5, 39278, "", "=q4=Bands of Anxiety", "=ds=#s8#, #a3#" };
		{ 6, 39280, "", "=q4=Leggings of Innumerable Barbs", "=ds=#s11#, #a4#"};
		{ 7, 39282, "", "=q4=Bone-Linked Amulet", "=ds=#s2#"};
		{ 8, 39277, "", "=q4=Sealing Ring of Grobbulus", "=ds=#s13#"};
		{ 9, 39281, "", "=q4=Infection Repulser", "=ds=#h3#, #w6#"};
		{ 10, 39276, "", "=q4=The Skull of Ruin", "=ds=#w8#"};
	};

	AtlasLoot_Data["Naxx80Grobbulus25Man"] = {
		{ 1, 40250, "", "=q4=Aged Winter Cloak", "=ds=#s4#"};
		{ 2, 40254, "", "=q4=Cloak of Averted Crisis", "=ds=#s4#"};
		{ 3, 40252, "", "=q4=Cloak of the Shadowed Sun", "=ds=#s4#"};
		{ 4, 40253, "", "=q4=Shawl of the Old Maid", "=ds=#s4#"};
		{ 5, 40251, "", "=q4=Shroud of Luminosity", "=ds=#s4#"};
		{ 6, 40287, "", "=q4=Cowl of Vanity", "=ds=#s1#, #a1#"};
		{ 7, 40286, "", "=q4=Mantle of the Corrupted", "=ds=#s3#, #a1#"};
		{ 8, 40351, "", "=q4=Mantle of the Fatigued Sage", "=ds=#s3#, #a1#"};
		{ 9, 40289, "", "=q4=Sympathetic Amice", "=ds=#s3#, #a1#"};
		{ 10, 40277, "", "=q4=Tunic of Indulgence", "=ds=#s5#, #a2#"};
		{ 11, 40285, "", "=q4=Desecrated Past", "=ds=#s11#, #a2#"};
		{ 12, 40288, "", "=q4=Spaulders of Incoherence", "=ds=#s3#, #a3#"};
		{ 13, 40283, "", "=q4=Fallout Impervious Tunic", "=ds=#s5#, #a3#"};
		{ 14, 40282, "", "=q4=Slime Stream Bands", "=ds=#s8#, #a3#"};
		{ 15, 40275, "", "=q4=Depraved Linked Belt", "=ds=#s10#, #a3#"};
		{ 16, 40279, "", "=q4=Chestguard of the Exhausted", "=ds=#s5#, #a4#"};
		{ 17, 40274, "", "=q4=Bracers of Liberation", "=ds=#s8#, #a4#"};
		{ 18, 40278, "", "=q4=Girdle of Chivalry", "=ds=#s10#, #a4#"};
		{ 19, 40257, "", "=q4=Defender's Code", "=ds=#s14#"};
		{ 20, 40255, "", "=q4=Dying Curse", "=ds=#s14#"};
		{ 21, 40258, "", "=q4=Forethought Talisman", "=ds=#s14#"};
		{ 22, 40256, "", "=q4=Grim Toll", "=ds=#s14#"};
		{ 23, 40281, "", "=q4=Twilight Mist", "=ds=#h1#, #w4#"};
		{ 24, 40280, "", "=q4=Origin of Nightmares", "=ds=#w9#"};
		{ 25, 40284, "", "=q4=Plague Igniter", "=ds=#w12#"};
	};

	AtlasLoot_Data["Naxx80Gluth1"] = {
		{ 1, 39272, "", "=q4=Drape of Surgery", "=ds=#s4#"};
		{ 2, 39284, "", "=q4=Miasma Mantle", "=ds=#s3#, #a1#"};
		{ 3, 39396, "", "=q4=Gown of Blaumeux", "=ds=#s5#, #a1#"};
		{ 4, 39309, "", "=q4=Leggings of the Instructor", "=ds=#s11#, #a1#"};
		{ 5, 39237, "", "=q4=Spaulders of Resumed Battle", "=ds=#s3#, #a2#"};
		{ 6, 39279, "", "=q4=Blistered Belt of Decay", "=ds=#s10#, #a2#"};
		{ 7, 39191, "", "=q4=Splint-Bound Leggings", "=ds=#s11#, #a2#"};
		{ 8, 39215, "", "=q4=Boots of the Follower", "=ds=#s12#, #a2#"};
		{ 9, 39294, "", "=q4=Arc-Scorched Helmet", "=ds=#s1#, #a3#"};
		{ 10, 39248, "", "=q4=Tunic of the Lost Pack", "=ds=#s5#, #a3#"};
		{ 11, 39194, "", "=q4=Rusted-Link Spiked Gauntlets", "=ds=#s9#, #a3#"};
		{ 12, 39251, "", "=q4=Necrogenic Belt", "=ds=#s10#, #a3#"};
		{ 13, 39379, "", "=q4=Spectral Rider's Girdle", "=ds=#s10#, #a3#"};
		{ 14, 39188, "", "=q4=Chivalric Chestguard", "=ds=#s5#, #a4#"};
		{ 15, 39345, "", "=q4=Girdle of the Ascended Phantom", "=ds=#s10#, #a4#"};
		{ 16, 39146, "", "=q4=Collar of Dissolution", "=ds=#s2#"};
		{ 17, 39232, "", "=q4=Pendant of Lost Vocations", "=ds=#s2#"};
		{ 18, 39193, "", "=q4=Band of Neglected Pleas", "=ds=#s13#"};
		{ 19, 39388, "", "=q4=Spirit-World Glass", "=ds=#s14#"};
		{ 20, 39200, "", "=q4=Grieving Spellblade", "=ds=#h3#, #w10#"};
		{ 21, 39344, "", "=q4=Slayer of the Lifeless", "=ds=#h1#, #w10#"};
		{ 22, 39281, "", "=q4=Infection Repulser", "=ds=#h3#, #w6#"};
		{ 23, 39394, "", "=q4=Charmed Cierge", "=ds=#w9#"};
		Next = "Naxx80Gluth2";
	};

	AtlasLoot_Data["Naxx80Gluth2"] = {
		{ 1, 40622, "", "=q4=Spaulders of the Lost Conqueror", "=ds=#e15#"};
		{ 2, 40623, "", "=q4=Spaulders of the Lost Protector", "=ds=#e15#"};
		{ 3, 40624, "", "=q4=Spaulders of the Lost Vanquisher", "=ds=#e15#"};
		{ 4, 40610, "", "=q4=Chestguard of the Lost Conqueror", "=ds=#e15#"};
		{ 5, 40611, "", "=q4=Chestguard of the Lost Protector", "=ds=#e15#"};
		{ 6, 40612, "", "=q4=Chestguard of the Lost Vanquisher", "=ds=#e15#"};
		{ 7, 40619, "", "=q4=Leggings of the Lost Conqueror", "=ds=#e15#"};
		{ 8, 40620, "", "=q4=Leggings of the Lost Protector", "=ds=#e15#"};
		{ 9, 40621, "", "=q4=Leggings of the Lost Vanquisher", "=ds=#e15#"};
		Prev = "Naxx80Gluth1";
	};

	AtlasLoot_Data["Naxx80Gluth125Man"] = {
		{ 1, 40247, "", "=q4=Cowl of Innocent Delight", "=ds=#s1#, #a1#"};
		{ 2, 40289, "", "=q4=Sympathetic Amice", "=ds=#s3#, #a1#"};
		{ 3, 40602, "", "=q4=Robes of Mutation", "=ds=#s5#, #a1#"};
		{ 4, 39733, "", "=q4=Gloves of Token Respect", "=ds=#s9#, #a1#"};
		{ 5, 40303, "", "=q4=Wraps of the Persecuted", "=ds=#s9#, #a1#"};
		{ 6, 40326, "", "=q4=Boots of Forlorn Wishes", "=ds=#s12#, #a1#"};
		{ 7, 40296, "", "=q4=Cover of Silence", "=ds=#s1#, #a2#"};
		{ 8, 39768, "", "=q4=Cowl of the Perished", "=ds=#s1#, #a2#"};
		{ 9, 40319, "", "=q4=Chestpiece of Suspicion", "=ds=#s5#, #a2#"};
		{ 10, 40260, "", "=q4=Belt of the Tortured", "=ds=#s10#, #a2#"};
		{ 11, 40205, "", "=q4=Stalk-Skin Belt", "=ds=#s10#, #a2#"};
		{ 12, 40270, "", "=q4=Boots of Septic Wounds", "=ds=#s12#, #a2#"};
		{ 13, 40193, "", "=q4=Tunic of Masked Suffering", "=ds=#s5#, #a3#"};
		{ 14, 40209, "", "=q4=Bindings of the Decrepit", "=ds=#s8#, #a3#"};
		{ 15, 40302, "", "=q4=Benefactor's Gauntlets", "=ds=#s9#, #a3#"};
		{ 16, 39718, "", "=q4=Corpse Scarab Handguards", "=ds=#s9#, #a3#"};
		{ 17, 40242, "", "=q4=Grotesque Handgrips", "=ds=#s9#, #a3#"};
		{ 18, 39760, "", "=q4=Helm of Diminished Pride", "=ds=#s1#, #a4#"};
		{ 19, 40185, "", "=q4=Shoulderguards of Opportunity", "=ds=#s3#, #a4#"};
		{ 20, 40203, "", "=q4=Breastplate of Tormented Rage", "=ds=#s5#, #a4#"};
		{ 21, 40332, "", "=q4=Abetment Bracers", "=ds=#s8#, #a4#"};
		{ 22, 40188, "", "=q4=Gauntlets of the Disobediant", "=ds=#s9#, #a4#"};
		{ 23, 40259, "", "=q4=Waistguard of Divine Grace", "=ds=#s10#, #a4#"};
		{ 24, 40204, "", "=q4=Legguards of the Apostle", "=ds=#s11#, #a4#"};
		{ 25, 39717, "", "=q4=Inexorable Sabatons", "=ds=#s12#, #a4#"};
		{ 26, 40206, "", "=q4=Iron-Spring Jumpers", "=ds=#s12#, #a4#"};
		{ 27, 40297, "", "=q4=Sabatons of Endurance", "=ds=#s12#, #a4#"};
		{ 28, 40350, "", "=q4=Urn of Lost Memories", "=ds=#s15#"};
		{ 29, 40191, "", "=q4=Libram of Radiance", "=ds=#s16#, #w16#"};
		Next = "Naxx80Gluth225Man";
	};

	AtlasLoot_Data["Naxx80Gluth225Man"] = {
		{ 1, 40281, "", "=q4=Twilight Mist", "=ds=#h1#, #w4#"};
		{ 2, 39714, "", "=q4=Webbed Death", "=ds=#h1#, #w4#"};
		{ 3, 39730, "", "=q4=Widow's Fury", "=ds=#h1#, #w10#"};
		{ 4, 40343, "", "=q4=Armageddon", "=ds=#h2#, #w10#"};
		{ 5, 40239, "", "=q4=The Hand of Nerub", "=ds=#h4#, #w13#"};
		{ 6, 40280, "", "=q4=Origin of Nightmares", "=ds=#w9#"};
		{ 7, 39716, "", "=q4=Shield of Assimilation", "=ds=#w8#"};
		{ 8, 40265, "", "=q4=Arrowsong", "=ds=#w2#"};
		{ 9, 40346, "", "=q4=Final Voyage", "=ds=#w3#"};
		{ 16, 40637, "", "=q4=Mantle of the Lost Conqueror", "=ds=#e15#"};
		{ 17, 40638, "", "=q4=Mantle of the Lost Protector", "=ds=#e15#"};
		{ 18, 40639, "", "=q4=Mantle of the Lost Vanquisher", "=ds=#e15#"};
		{ 19, 40625, "", "=q4=Breastplate of the Lost Conqueror", "=ds=#e15#"};
		{ 20, 40626, "", "=q4=Breastplate of the Lost Protector", "=ds=#e15#"};
		{ 21, 40627, "", "=q4=Breastplate of the Lost Vanquisher", "=ds=#e15#"};
		{ 22, 40634, "", "=q4=Legplates of the Lost Conqueror", "=ds=#e15#"};
		{ 23, 40635, "", "=q4=Legplates of the Lost Protector", "=ds=#e15#"};
		{ 24, 40636, "", "=q4=Legplates of the Lost Vanquisher", "=ds=#e15#"};
		Prev = "Naxx80Gluth125Man";
	};

	AtlasLoot_Data["Naxx80Thaddius"] = {
		{ 1, 39295, "", "=q4=Cowl of Sheet Lightning", "=ds=#s1#, #a1#"};
		{ 2, 39294, "", "=q4=Arc-Scorched Helmet", "=ds=#s1#, #a3#"};
		{ 3, 39293, "", "=q4=Blackened Legplates of Feugen", "=ds=#s11#, #a4#"};
		{ 4, 39292, "", "=q4=Repelling Charge", "=ds=#s14#"};
		{ 5, 39291, "", "=q4=Torment of the Banished", "=ds=#h1#, #w10#"};
		{ 16, 40619, "", "=q4=Leggings of the Lost Conqueror", "=ds=#e15#"};
		{ 17, 40620, "", "=q4=Leggings of the Lost Protector", "=ds=#e15#"};
		{ 18, 40621, "", "=q4=Leggings of the Lost Vanquisher", "=ds=#e15#"};
	};

	AtlasLoot_Data["Naxx80Thaddius25Man"] = {
		{ 1, 40303, "", "=q4=Wraps of the Persecuted", "=ds=#s9#, #a1#"};
		{ 2, 40301, "", "=q4=Cincture of Polarity", "=ds=#s10#, #a1#"};
		{ 3, 40296, "", "=q4=Cover of Silence", "=ds=#s1#, #a2#"};
		{ 4, 40304, "", "=q4=Headpiece of Fungal Bloom", "=ds=#s1#, #a2#"};
		{ 5, 40299, "", "=q4=Pauldrons of the Abandoned", "=ds=#s3#, #a3#"};
		{ 6, 40302, "", "=q4=Benefactor's Gauntlets", "=ds=#s9#, #a3#"};
		{ 7, 40298, "", "=q4=Faceguard of the Succumbed", "=ds=#s1#, #a4#"};
		{ 8, 40294, "", "=q4=Riveted Abomination Leggings", "=ds=#s11#, #a4#"};
		{ 9, 40297, "", "=q4=Sabatons of Endurance", "=ds=#s12#, #a4#"};
		{ 10, 40300, "", "=q4=Spire of Sunset", "=ds=#w9#" };
		{ 16, 40634, "", "=q4=Legplates of the Lost Conqueror", "=ds=#e15#"};
		{ 17, 40635, "", "=q4=Legplates of the Lost Protector", "=ds=#e15#"};
		{ 18, 40636, "", "=q4=Legplates of the Lost Vanquisher", "=ds=#e15#"};
	};

	AtlasLoot_Data["Naxx80AnubRekhan"] = {
		{ 1, 39192, "", "=q4=Gloves of Dark Gestures", "=ds=#s9#, #a1#"};
		{ 2, 39190, "", "=q4=Agonal Sash", "=ds=#s10#, #a1#"};
		{ 3, 39191, "", "=q4=Splint-Bound Leggings", "=ds=#s11#, #a2#"};
		{ 4, 39189, "", "=q4=Boots of Persistence", "=ds=#s12#, #a3#"};
		{ 5, 39188, "", "=q4=Chivalric Chestguard", "=ds=#s5#, #a4#"};
		{ 6, 39139, "", "=q4=Ravaging Sabatons", "=ds=#s12#, #a4#"};
		{ 7, 39146, "", "=q4=Collar of Dissolution", "=ds=#s2#"};
		{ 8, 39193, "", "=q4=Band of Neglected Pleas", "=ds=#s13#"};
		{ 9, 39141, "", "=q4=Deflection Band", "=ds=#s13#"};
		{ 10, 39140, "", "=q4=Knife of Incision", "=ds=#h1#, #w4#"};
	};

	AtlasLoot_Data["Naxx80AnubRekhan25Man"] = {
		{ 1, 39719, "", "=q4=Mantle of the Locusts", "=ds=#s3#, #a1#"};
		{ 2, 39721, "", "=q4=Sash of the Parlor", "=ds=#s10#, #a1#"};
		{ 3, 39720, "", "=q4=Leggings of Atrophy", "=ds=#s11#, #a1#"};
		{ 4, 39722, "", "=q4=Swarm Bindings", "=ds=#s8#, #a2#"};
		{ 5, 39701, "", "=q4=Dawnwalkers", "=ds=#s12#, #a2#"};
		{ 6, 39702, "", "=q4=Arachnoid Gold Band", "=ds=#s8#, #a3#"};
		{ 7, 39718, "", "=q4=Corpse Scarab Handguards", "=ds=#s9#, #a3#"};
		{ 8, 39704, "", "=q4=Pauldrons of Unnatural Death", "=ds=#s3#, #a4#"};
		{ 9, 39703, "", "=q4=Rescinding Grips", "=ds=#s9#, #a4#"};
		{ 10, 39717, "", "=q4=Inexorable Sabatons", "=ds=#s12#, #a4#"};
		{ 11, 39706, "", "=q4=Sabatons of Sudden Reprisal", "=ds=#s12#, #a4#"};
		{ 12, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"};
		{ 13, 40065, "", "=q4=Fool's Trial", "=ds=#s2#"};
		{ 14, 40069, "", "=q4=Heritage", "=ds=#s2#"};
		{ 15, 40064, "", "=q4=Thunderstorm Amulet", "=ds=#s2#"};
		{ 16, 40080, "", "=q4=Lost Jewel", "=ds=#s13#"};
		{ 17, 40075, "", "=q4=Ruthlessness", "=ds=#s13#"};
		{ 18, 40107, "", "=q4=Sand-Worn Band", "=ds=#s13#"};
		{ 19, 40074, "", "=q4=Strong-Handed Ring", "=ds=#s13#"};
		{ 20, 40208, "", "=q4=Cryptfiend's Bite", "=ds=#w7#"};
		{ 21, 39716, "", "=q4=Shield of Assimilation", "=ds=#w8#"};
		{ 22, 39712, "", "=q4=Gemmed Wand of the Nerubians", "=ds=#w12#"};
	};

	AtlasLoot_Data["Naxx80Faerlina"] = {
		{ 1, 39216, "", "=q4=Sash of Mortal Desire", "=ds=#s10#, #a1#"};
		{ 2, 39215, "", "=q4=Boots of the Follower", "=ds=#s12#, #a2#"};
		{ 3, 39196, "", "=q4=Boots of the Worshiper", "=ds=#s12#, #a2#"};
		{ 4, 39217, "", "=q4=Avenging Combat Leggings", "=ds=#s11#, #a3#"};
		{ 5, 39194, "", "=q4=Rusted-Link Spiked Gauntlets", "=ds=#s9#, #a3#"};
		{ 6, 39198, "", "=q4=Frostblight Pauldrons", "=ds=#s3#, #a4#"};
		{ 7, 39195, "", "=q4=Bracers of Lost Sentiments", "=ds=#s8#, #a4#"};
		{ 8, 39197, "", "=q4=Gauntlets of the Master", "=ds=#s9#, #a4#"};
		{ 9, 39199, "", "=q4=Watchful Eye", "=ds=#s15#"};
		{ 10, 39200, "", "=q4=Grieving Spellblade", "=ds=#h3#, #w10#"};
	};

	AtlasLoot_Data["Naxx80Faerlina25Man"] = {
		{ 1, 39732, "", "=q4=Faerlina's Madness", "=ds=#s1#, #a1#"};
		{ 2, 39731, "", "=q4=Punctilious Bindings", "=ds=#s8#, #a1#"};
		{ 3, 39733, "", "=q4=Gloves of Token Respect", "=ds=#s9#, #a1#"};
		{ 4, 39735, "", "=q4=Belt of False Dignity", "=ds=#s10#, #a1#"};
		{ 5, 39756, "", "=q4=Tunic of Prejudice", "=ds=#s5#, #a2#"};
		{ 6, 39727, "", "=q4=Dislocating Handguards", "=ds=#s9#, #a2#"};
		{ 7, 39724, "", "=q4=Cult's Chestguard", "=ds=#s5#, #a3#"};
		{ 8, 39734, "", "=q4=Atonement Greaves", "=ds=#s12#, #a3#"};
		{ 9, 39723, "", "=q4=Fire-Scorched Greathelm", "=ds=#s1#, #a4#"};
		{ 10, 39725, "", "=q4=Epaulets of the Grieving Servant", "=ds=#s3#, #a4#"};
		{ 11, 39729, "", "=q4=Bracers of the Tyrant", "=ds=#s8#, #a4#"};
		{ 12, 39726, "", "=q4=Callous-Hearted Gauntlets", "=ds=#s9#, #a4#"};
		{ 13, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"};
		{ 14, 40065, "", "=q4=Fool's Trial", "=ds=#s2#"};
		{ 15, 40069, "", "=q4=Heritage", "=ds=#s2#"};
		{ 16, 40064, "", "=q4=Thunderstorm Amulet", "=ds=#s2#"};
		{ 17, 40080, "", "=q4=Lost Jewel", "=ds=#s13#"};
		{ 18, 40075, "", "=q4=Ruthlessness", "=ds=#s13#"};
		{ 19, 40107, "", "=q4=Sand-Worn Band", "=ds=#s13#"};
		{ 20, 40108, "", "=q4=Seized Beauty", "=ds=#s13#"};
		{ 21, 40074, "", "=q4=Strong-Handed Ring", "=ds=#s13#"};
		{ 22, 39757, "", "=q4=Idol of Worship", "=ds=#s16#, #w14#"};
		{ 23, 39728, "", "=q4=Totem of Misery", "=ds=#s16#, #w15#"};
		{ 24, 39730, "", "=q4=Widow's Fury", "=ds=#h1#, #w10#"};
	};

	AtlasLoot_Data["Naxx80Maexxna"] = {
		{ 1, 39225, "", "=q4=Cloak of Armed Strife", "=ds=#s4#"};
		{ 2, 39230, "", "=q4=Spaulders of the Monstrosity", "=ds=#s3#, #a2#"};
		{ 3, 39224, "", "=q4=Leggings of Discord", "=ds=#s11#, #a2#"};
		{ 4, 39228, "", "=q4=Web Cocoon Grips", "=ds=#s9#, #a4#"};
		{ 5, 39232, "", "=q4=Pendant of Lost Vocations", "=ds=#s2#"};
		{ 6, 39231, "", "=q4=Timeworn Silken Band", "=ds=#s13#"};
		{ 7, 39229, "", "=q4=Embrace of the Spider", "=ds=#s14#"};
		{ 8, 39226, "", "=q4=Maexxna's Femur", "=ds=#h1#, #w6#"};
		{ 9, 39221, "", "=q4=Wraith Spear", "=ds=#w7#"};	
		{ 10, 39233, "", "=q4=Aegis of Damnation", "=ds=#w8#"};
	};

	AtlasLoot_Data["Naxx80Maexxna25Man"] = {
		{ 1, 40250, "", "-q4-Aged Winter Cloak", "=ds=#s4#" };
		{ 2, 40254, "", "=q4=Cloak of Averted Crisis", "=ds=#s4#"};
		{ 3, 40252, "", "=q4=Cloak of the Shadowed Sun", "=ds=#s4#"};
		{ 4, 40253, "", "=q4=Shawl of the Old Maid", "=ds=#s4#"};
		{ 5, 40251, "", "=q4=Shroud of Luminosity", "=ds=#s4#"};
		{ 6, 40062, "", "=q4=Digested Silken Robes", "=ds=#s5#, #a1#"};
		{ 7, 40060, "", "=q4=Distorted Limbs", "=ds=#s11#, #a1#"};
		{ 8, 39768, "", "=q4=Cowl of the Perished", "=ds=#s1#, #a2#"};
		{ 9, 40063, "", "=q4=Mantle of Shattered Kinship", "=ds=#s3#, #a2#"};
		{ 10, 39765, "", "=q4=Sinner's Bindings", "=ds=#s8#, #a2#"};
		{ 11, 39761, "", "=q4=Infectious Skitterer Leggings", "=ds=#s11#, #a2#"};
		{ 12, 40061, "", "=q4=Quivering Tunic", "=ds=#s5#, #a3#"};
		{ 13, 39762, "", "=q4=Torn Web Wrapping", "=ds=#s10#, #a3#"};
		{ 14, 39760, "", "=q4=Helm of Diminished Pride", "=ds=#s1#, #a4#"};
		{ 15, 39767, "", "=q4=Undiminished Battleplate", "=ds=#s5#, #a4#"};
		{ 16, 39764, "", "=q4=Bindings of the Hapless Prey", "=ds=#s8#, #a4#"};
		{ 17, 39759, "", "=q4=Ablative Chitin Girdle", "=ds=#s10#, #a4#"};
		{ 18, 40257, "", "=q4=Defender's Code", "=ds=#s14#"};
		{ 19, 40255, "", "=q4=Dying Curse", "=ds=#s14#"};
		{ 20, 40258, "", "=q4=Forethought Talisman", "=ds=#s14#"};
		{ 21, 40256, "", "=q4=Grim Toll", "=ds=#s14#"};
		{ 22, 39766, "", "=q4=Matriarch's Spawn", "=ds=#s15#"};
		{ 23, 39763, "", "=q4=Wraith Strike", "=ds=#h3#, #w13#"};
		{ 24, 39758, "", "=q4=The Jawbone", "=ds=#h2#, #w6#"};
	};

	AtlasLoot_Data["Naxx80Razuvious"] = {
		{ 1, 39297, "", "=q4=Cloak of Darkening", "=ds=#s4#"};
		{ 2, 39310, "", "=q4=Mantle of the Extensive Mind", "=ds=#s3#, #a1#"};
		{ 3, 39309, "", "=q4=Leggings of the Instructor", "=ds=#s11#, #a1#"};
		{ 4, 39299, "", "=q4=Rapid Attack Gloves", "=ds=#s9#, #a2#"};
		{ 5, 39308, "", "=q4=Girdle of Lenience", "=ds=#s10#, #a2#"};
		{ 6, 39307, "", "=q4=Iron Rings of Endurance", "=ds=#s8#, #a3#"};
		{ 7, 39306, "", "=q4=Plated Gloves of Relief", "=ds=#s9#, #a4#"};
		{ 8, 39298, "", "=q4=Waistguard of the Tutor", "=ds=#s10#, #a4#"};
		{ 9, 39311, "", "=q4=Scepter of Murmuring Spirits", "=ds=#s15#"};
		{ 10, 39296, "", "=q4=Accursed Bow of the Elite", "=ds=#w2#"};
	};

	AtlasLoot_Data["Naxx80Razuvious25Man"] = {
		{ 1, 40325, "", "=q4=Bindings of the Expansive Mind", "=ds=#s8#, #a1#"};
		{ 2, 40326, "", "=q4=Boots of Forlorn Wishes", "=ds=#s12#, #a1#"};
		{ 3, 40305, "", "=q4=Spaulders of Egotism", "=ds=#s3#, #a2#"};
		{ 4, 40319, "", "=q4=Chestpiece of Suspicion", "=ds=#s5#, #a2#"};
		{ 5, 40323, "", "=q4=Esteemed Bindings", "=ds=#s8#, #a2#"};
		{ 6, 40315, "", "=q4=Shoulderpads of Secret Arts", "=ds=#s3#, #a3#"};
		{ 7, 40324, "", "=q4=Bands of Mutual Respect", "=ds=#s8#, #a3#"};
		{ 8, 40327, "", "=q4=Girdle of Recuperation", "=ds=#s10#, #a3#"};
		{ 9, 40306, "", "=q4=Bracers of the Unholy Knight", "=ds=#s8#, #a4#"};
		{ 10, 40316, "", "=q4=Gauntlets of Guiding Touch", "=ds=#s9#, #a4#"};
		{ 11, 40317, "", "=q4=Girdle of Razuvious", "=ds=#s10#, #a4#"};
		{ 12, 40318, "", "=q4=Legplates of Double Strikes", "=ds=#s11#, #a4#"};
		{ 13, 40320, "", "=q4=Faithful Steel Sabatons", "=ds=#s12#, #a4#"};
		{ 14, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"};
		{ 15, 40065, "", "=q4=Fool's Trial", "=ds=#s2#"};
		{ 16, 40069, "", "=q4=Heritage", "=ds=#s2#"};
		{ 17, 40064, "", "=q4=Thunderstorm Amulet", "=ds=#s2#"};
		{ 18, 40080, "", "=q4=Lost Jewel", "=ds=#s13#"};
		{ 19, 40075, "", "=q4=Ruthlessness", "=ds=#s13#"};
		{ 20, 40107, "", "=q4=Sand-Worn Band", "=ds=#s13#"};
		{ 21, 40074, "", "=q4=Strong-Handed Ring", "=ds=#s13#"};
		{ 22, 40321, "", "=q4=Idol of the Shooting Star", "=ds=#s16#, #w14#"};
		{ 23, 40322, "", "=q4=Totem of Dueling", "=ds=#s16#, #w15#"};
	};

	AtlasLoot_Data["Naxx80Gothik"] = {
		{ 1, 39390, "", "=q4=Resurgent Phantom Bindings", "=ds=#s8#, #a1#"};
		{ 2, 39386, "", "=q4=Tunic of Dislocation", "=ds=#s5#, #a2#"};
		{ 3, 39391, "", "=q4=Heinous Mail Chestguard", "=ds=#s5#, #a3#"};
		{ 4, 39379, "", "=q4=Spectral Rider's Girdle", "=ds=#s10#, #a3#"};
		{ 5, 39345, "", "=q4=Girdle of the Ascended Phantom", "=ds=#s10#, #a4#"};
		{ 6, 39369, "", "=q4=Sabatons of Deathlike Gloom", "=ds=#s12#, #a4#"};
		{ 7, 39392, "", "=q4=Veiled Amulet of Life", "=ds=#s2#"};
		{ 8, 39389, "", "=q4=Signet of the Malevolent", "=ds=#s2#"};
		{ 9, 39388, "", "=q4=Spirit-World Glass", "=ds=#s14#"};
		{ 10, 39344, "", "=q4=Slayer of the Lifeless", "=ds=#h1#, #w10#"};
	};

	AtlasLoot_Data["Naxx80Gothik25Man"] = {
		{ 1, 40250, "", "-q4-Aged Winter Cloak", "=ds=#s4#"};
		{ 2, 40254, "", "=q4=Cloak of Averted Crisis", "=ds=#s4#"};
		{ 3, 40252, "", "=q4=Cloak of the Shadowed Sun", "=ds=#s4#"};
		{ 4, 40253, "", "=q4=Shawl of the Old Maid", "=ds=#s4#"};
		{ 5, 40251, "", "=q4=Shroud of Luminosity", "=ds=#s4#"};
		{ 6, 40339, "", "=q4=Gothik's Cowl", "=ds=#s1#, #a1#"};
		{ 7, 40338, "", "=q4=Bindings of Yearning", "=ds=#s8#, #a1#"};
		{ 8, 40329, "", "=q4=Hood of the Exodus", "=ds=#s1#, #a2#"};
		{ 9, 40341, "", "=q4=Shackled Cinch", "=ds=#s10#, #a2#"};
		{ 10, 40333, "", "=q4=Leggings of Fleeting Moments", "=ds=#s11#, #a2#"};
		{ 11, 40340, "", "=q4=Helm of Unleashed Energy", "=ds=#s1#, #a3#"};
		{ 12, 40331, "", "=q4=Leggings of Failed Escape", "=ds=#s11#, #a3#"};
		{ 13, 40328, "", "=q4=Helm of Vital Protection", "=ds=#s1#, #a4#"};
		{ 14, 40334, "", "=q4=Burdened Shoulderplates", "=ds=#s3#, #a4#"};
		{ 15, 40332, "", "=q4=Abetment Bracers", "=ds=#s8#, #a4#"};
		{ 16, 40330, "", "=q4=Bracers of Unrelenting Attack", "=ds=#s8#, #a4#"};
		{ 17, 40257, "", "=q4=Defender's Code", "=ds=#s14#"};
		{ 18, 40255, "", "=q4=Dying Curse", "=ds=#s14#"};
		{ 19, 40258, "", "=q4=Forethought Talisman", "=ds=#s14#"};
		{ 20, 40256, "", "=q4=Grim Toll", "=ds=#s14#"};
		{ 21, 40342, "", "=q4=Idol of Awakening", "=ds=#s16#, #w14#"};
		{ 22, 40337, "", "=q4=Libram of Resurgence", "=ds=#s16#, #w16#"};
		{ 23, 40336, "", "=q4=Life and Death", "=ds=#h3#, #w10#"};
		{ 24, 40335, "", "=q4=Touch of Horror", "=ds=#w12#"};
	};

	AtlasLoot_Data["Naxx80FourHorsemen"] = {
		{ 1, 39396, "", "=q4=Gown of Blaumeux", "=ds=#s5#, #a1#"};
		{ 2, 39397, "", "=q4=Pauldrons of Havoc", "=ds=#s3#, #a3#"};
		{ 3, 39395, "", "=q4=Thane's Tainted Greathelm", "=ds=#s1#, #a4#"};
		{ 4, 39393, "", "=q4=Claymore of Ancient Power", "=ds=#h2#, #w10#"};
		{ 5, 39394, "", "=q4=Charmed Cierge", "=ds=#w9#"};
		{ 16, 40610, "", "=q4=Chestguard of the Lost Conqueror", ""};
		{ 17, 40611, "", "=q4=Chestguard of the Lost Protector", ""};
		{ 18, 40612, "", "=q4=Chestguard of the Lost Vanquisher", ""};
	};

	AtlasLoot_Data["Naxx80FourHorsemen25Man"] = {
		{ 1, 40349, "", "=q4=Gloves of Peaceful Death", "=ds=#s9#, #a2#"};
		{ 2, 40344, "", "=q4=Helm of the Grave", "=ds=#s1#, #a3#"};
		{ 3, 40352, "", "=q4=Leggings of Voracious Shadows", "=ds=#s11#, #a3#"};
		{ 4, 40347, "", "=q4=Zeliek's Gauntlets", "=ds=#s9#, #a4#"};
		{ 5, 40350, "", "=q4=Urn of Lost Memories", "=ds=#s15#"};
		{ 6, 40345, "", "=q4=Broken Promise", "=ds=#h1#, #w10#"};
		{ 8, 40343, "", "=q4=Armageddon", "=ds=#h2#, #w10#"};
		{ 7, 40348, "", "=q4=Damnation", "=ds=#w9#"};
		{ 9, 40346, "", "=q4=Final Voyage", "=ds=#w3#"};
		{ 16, 40625, "", "=q4=Breastplate of the Lost Conqueror", ""};
		{ 17, 40626, "", "=q4=Breastplate of the Lost Protector", ""};
		{ 18, 40627, "", "=q4=Breastplate of the Lost Vanquisher", ""};
	};

	AtlasLoot_Data["Naxx80Noth"] = {
		{ 1, 39241, "", "=q4=Dark Shroud of the Scourge", "=ds=#s4#"};
		{ 2, 39242, "", "=q4=Robes of Hoarse Breaths", "=ds=#s5#, #a1#"};
		{ 3, 39240, "", "=q4=Noth's Curse", "=ds=#s1#, #a2#"};
		{ 4, 39237, "", "=q4=Spaulders of Resumed Battle", "=ds=#s3#, #a2#"};
		{ 5, 39243, "", "=q4=Handgrips of the Foredoomed", "=ds=#s9#, #a3#"};
		{ 6, 39236, "", "=q4=Trespasser's Boots", "=ds=#s12#, #a3#"};
		{ 7, 39239, "", "=q4=Chestplate of the Risen Soldier", "=ds=#s5#, #a4#"};
		{ 8, 39235, "", "=q4=Bone-Framed Bracers", "=ds=#s8#, #a4#"};
		{ 9, 39234, "", "=q4=Plague-Impervious Boots", "=ds=#s12#, #a4#"};
		{ 10, 39244, "", "=q4=Ring of the Fated", "=ds=#s13#"};
	};

	AtlasLoot_Data["Naxx80Noth25Man"] = {
		{ 1, 40194, "", "=q4=Blanketing Robes of Snow", "=ds=#s5#, #a1#"};
		{ 2, 40602, "", "=q4=Robes of Mutation", "=ds=#s5#, #a1#"};
		{ 3, 40198, "", "=q4=Bands of Impurity", "=ds=#s8#, #a1#"};
		{ 4, 40197, "", "=q4=Gloves of the Fallen Wizard", "=ds=#s9#, #a1#"};
		{ 5, 40186, "", "=q4=Thrusting Bands", "=ds=#s8#, #a2#"};
		{ 6, 40200, "", "=q4=Belt of Potent Chanting", "=ds=#s10#, #a2#"};
		{ 7, 40193, "", "=q4=Tunic of Masked Suffering", "=ds=#s5#, #a3#"};
		{ 8, 40196, "", "=q4=Legguards of the Undisturbed", "=ds=#s11#, #a3#"};
		{ 9, 40184, "", "=q4=Crippled Treads", "=ds=#s12#, #a3#"};
		{ 10, 40185, "", "=q4=Shoulderguards of Opportunity", "=ds=#s3#, #a4#"};
		{ 11, 40188, "", "=q4=Gauntlets of the Disobediant", "=ds=#s9#, #a4#"};
		{ 12, 40187, "", "=q4=Poignant Sabatons", "=ds=#s12#, #a4#"};
		{ 13, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"};
		{ 14, 40065, "", "=q4=Fool's Trial", "=ds=#s2#"};
		{ 15, 40069, "", "=q4=Heritage", "=ds=#s2#"};
		{ 16, 40064, "", "=q4=Thunderstorm Amulet", "=ds=#s2#"};
		{ 17, 40080, "", "=q4=Lost Jewel", "=ds=#s13#"};
		{ 18, 40075, "", "=q4=Ruthlessness", "=ds=#s13#"};
		{ 19, 40107, "", "=q4=Sand-Worn Band", "=ds=#s13#"};
		{ 20, 40074, "", "=q4=Strong-Handed Ring", "=ds=#s13#"};
		{ 21, 40192, "", "=q4=Accursed Spine", "=ds=#s15#" };
		{ 22, 40191, "", "=q4=Libram of Radiance", "=ds=#s16#, #w16#"};
		{ 23, 40189, "", "=q4=Angry Dread", "=ds=#h1#, #w6#"};
		{ 24, 40190, "", "=q4=Spinning Fate", "=ds=#w11#"};
	};

	AtlasLoot_Data["Naxx80Heigan"] = {
		{ 1, 39252, "", "=q4=Preceptor's Bindings", "=ds=#s8#, #a1#"};
		{ 2, 39254, "", "=q4=Saltarello Shoes", "=ds=#s12#, #a1#"};
		{ 3, 39247, "", "=q4=Cuffs of Dark Shadows", "=ds=#s8#, #a2#"};
		{ 4, 39248, "", "=q4=Tunic of the Lost Pack", "=ds=#s5#, #a3#"};
		{ 5, 39251, "", "=q4=Necrogenic Belt", "=ds=#s10#, #a3#"};
		{ 6, 39249, "", "=q4=Shoulderplates of Bloodshed", "=ds=#s3#, #a4#"};
		{ 7, 39246, "", "=q4=Amulet of Autopsy", "=ds=#s2#"};
		{ 8, 39250, "", "=q4=Ring of Holy Cleansing", "=ds=#s13#"};
		{ 9, 39245, "", "=q4=Demise", "=ds=#h2#, #w6#"};
		{ 10, 39255, "", "=q4=Staff of the Plague Beast", "=ds=#w9#"};
	};

	AtlasLoot_Data["Naxx80Heigan25Man"] = {
		{ 1, 40250, "", "=q4=Aged Winter Cloak", "=ds=#s4#"};
		{ 2, 40254, "", "=q4=Cloak of Averted Crisis", "=ds=#s4#"};
		{ 3, 40252, "", "=q4=Cloak of the Shadowed Sun", "=ds=#s4#"};
		{ 4, 40253, "", "=q4=Shawl of the Old Maid", "=ds=#s4#"};
		{ 5, 40251, "", "=q4=Shroud of Luminosity", "=ds=#s4#"};
		{ 6, 40234, "", "=q4=Heigan's Putrid Vestments", "=ds=#s5#, #a1#"};
		{ 7, 40236, "", "=q4=Serene Echoes", "=ds=#s12#, #a1#"};
		{ 8, 40238, "", "=q4=Gloves of the Dancing Bear", "=ds=#s9#, #a2#"};
		{ 9, 40205, "", "=q4=Stalk-Skin Belt", "=ds=#s10#, #a2#"};
		{ 10, 40235, "", "=q4=Helm of Pilgrimage", "=ds=#s1#, #a3#"};
		{ 11, 40209, "", "=q4=Bindings of the Decrepit", "=ds=#s8#, #a3#"};
		{ 12, 40201, "", "=q4=Leggings of Colossal Strides", "=ds=#s11#, #a3#"};
		{ 13, 40237, "", "=q4=Eruption-Scared Boots", "=ds=#s12#, #a3#"};
		{ 14, 40203, "", "=q4=Breastplate of Tormented Rage", "=ds=#s5#, #a4#"};
		{ 15, 40210, "", "=q4=Chestguard of Bitter Charms", "=ds=#s5#, #a4#"};
		{ 16, 40204, "", "=q4=Legguards of the Apostle", "=ds=#s11#, #a4#"};
		{ 17, 40206, "", "=q4=Iron-Spring Jumpers", "=ds=#s12#, #a4#"};
		{ 18, 40257, "", "=q4=Defender's Code", "=ds=#s14#"};
		{ 19, 40255, "", "=q4=Dying Curse", "=ds=#s14#"};
		{ 20, 40258, "", "=q4=Forethought Talisman", "=ds=#s14#"};
		{ 21, 40256, "", "=q4=Grim Toll", "=ds=#s14#"};
		{ 22, 40207, "", "=q4=Sigil of Awareness", "=ds=#s16#, #w21#"};
		{ 23, 40208, "", "=q4=Cryptfiend's Bite", "=ds=#w7#"};
		{ 24, 40233, "", "=q4=The Undeath Carrier", "=ds=#w9#"};
	};

	AtlasLoot_Data["Naxx80Loatheb"] = {
		{ 1, 39259, "", "=q4=Fungi-Stained Coverings", "=ds=#s5#, #a2#"};
		{ 2, 39260, "", "=q4=Helm of the Corrupted Mind", "=ds=#s1#, #a4#"};
		{ 3, 39258, "", "=q4=Legplates of Inescapable Death", "=ds=#s11#, #a4#"};
		{ 4, 39257, "", "=q4=Loatheb's Shadow", "=ds=#s14#"};
		{ 5, 39256, "", "=q4=Sulfur Stave", "=ds=#w9#"};
		{ 16, 40622, "", "=q4=Spaulders of the Lost Conqueror", ""};
		{ 17, 40623, "", "=q4=Spaulders of the Lost Protector", ""};
		{ 18, 40624, "", "=q4=Spaulders of the Lost Vanquisher", ""};
	};

	AtlasLoot_Data["Naxx80Loatheb25Man"] = {
		{ 1, 40247, "", "=q4=Cowl of Innocent Delight", "=ds=#s1#, #a1#"};
		{ 2, 40246, "", "=q4=Boots of Impetuous Ideals", "=ds=#s12#, #a1#"};
		{ 3, 40249, "", "=q4=Vest of Vitality", "=ds=#s5#, #a2#"};
		{ 4, 40243, "", "=q4=Footwraps of Vile Deceit", "=ds=#s12#, #a2#"};
		{ 5, 40242, "", "=q4=Grotesque Handgrips", "=ds=#s9#, #a3#"};
		{ 6, 40241, "", "=q4=Girdle of Unity", "=ds=#s10#, #a4#"};
		{ 7, 40240, "", "=q4=Greaves of Turbulence", "=ds=#s11#, #a4#"};
		{ 8, 40244, "", "=q4=The Impossible Dream", "=ds=#h3#, #w6#"};
		{ 9, 40239, "", "=q4=The Hand of Nerub", "=ds=#h4#, #w13#"};
		{ 10, 40245, "", "=q4=Fading Glow", "=ds=#w12#"};
		{ 16, 40637, "", "=q4=Mantle of the Lost Conqueror", ""};
		{ 17, 40638, "", "=q4=Mantle of the Lost Protector", ""};
		{ 18, 40639, "", "=q4=Mantle of the Lost Vanquisher", ""};
	};

	AtlasLoot_Data["Naxx80Sapphiron"] = {
		{ 1, 39415, "", "=q4=Shroud of the Citadel", "=ds=#s4#"};
		{ 2, 39404, "", "=q4=Cloak of Mastery", "=ds=#s4#"};
		{ 3, 39409, "", "=q4=Cowl of Winged Fear", "=ds=#s1#, #a1#"};
		{ 4, 39408, "", "=q4=Leggings of Sapphiron", "=ds=#s11#, #a1#"};
		{ 5, 39399, "", "=q4=Helm of the Vast Legions", "=ds=#s1#, #a2#"};
		{ 6, 39405, "", "=q4=Helmet of the Inner Sanctum", "=ds=#s1#, #a3#"};
		{ 7, 39403, "", "=q4=Helm of the Unsubmissive", "=ds=#s1#, #a4#"};
		{ 8, 39398, "", "=q4=Massive Skeletal Ribcage", "=ds=#s5#, #a4#"};
		{ 9, 39401, "", "=q4=Circle of Death", "=ds=#s13#"};
		{ 10, 39407, "", "=q4=Circle of Life", "=ds=#s13#"};
		{ 11, 44569, "", "=q4=Key to the Focusing Iris", "=ds=#m2#"};
		{ 12, 44582, "", "=q4=Key to the Focusing Iris", "=q1=#m4#: =ds=#e9#"};
	};

	AtlasLoot_Data["Naxx80Sapphiron25Man"] = {
		{ 1, 40381, "", "=q4=Sympathy", "=ds=#s5#, #a1#"};
		{ 2, 40380, "", "=q4=Gloves of Grandeur", "=ds=#s9#, #a1#"};
		{ 3, 40376, "", "=q4=Legwraps of the Defeated Dragon", "=ds=#s11#, #a1#"};
		{ 4, 40362, "", "=q4=Gloves of Fast Reactions", "=ds=#s9#, #a2#"};
		{ 5, 40379, "", "=q4=Legguards of the Boneyard", "=ds=#s11#, #a2#"};
		{ 6, 40367, "", "=q4=Boots of the Great Construct", "=ds=#s12#, #a3#"};
		{ 7, 40366, "", "=q4=Platehelm of the Great Wyrm", "=ds=#s1#, #a4#"};
		{ 8, 40377, "", "=q4=Noble Birthright Pauldrons", "=ds=#s3#, #a4#"};
		{ 9, 40365, "", "=q4=Breastplate of Frozen Pain", "=ds=#s5#, #a4#"};
		{ 10, 40363, "", "=q4= Bone-Inlaid Legguards", "=ds=#s11#, #a4#"};
		{ 11, 40378, "", "=q4=Ceaseless Pity", "=ds=#s2#"};
		{ 12, 40374, "", "=q4=Cosmic Lights", "=ds=#s2#"};
		{ 13, 40369, "", "=q4=Icy Blast Amulet", "=ds=#s2#"};
		{ 14, 40370, "", "=q4=Gatekeeper", "=ds=#s13#"};
		{ 15, 40375, "", "=q4=Ring of Decaying Beauty", "=ds=#s13#"};
		{ 16, 40371, "", "=q4=Bandit's Insignia", "=ds=#s14#"};
		{ 17, 40373, "", "=q4=Extract of Necromatic Power", "=ds=#s14#"};
		{ 18, 40372, "", "=q4=Rune of Repulsion", "=ds=#s14#"};
		{ 19, 40382, "", "=q4=Soul of the Dead", "=ds=#s14#"};
		{ 20, 40368, "", "=q4=Murder", "=ds=#h1#, #w4#"};
		{ 22, 44577, "", "=q4=Heroic Key to the Focusing Iris", "=ds=#m2#"};
		{ 23, 44581, "", "=q4=Heroic Key to the Focusing Iris", "=q1=#m4#: =ds=#e9#"};
	};

	AtlasLoot_Data["Naxx80KelThuzad"] = {
		{ 1, 39425, "", "=q4=Cloak of the Dying", "=ds=#s4#"};
		{ 2, 39421, "", "=q4=Gem of Imprisoned Vassals", "=ds=#s2#"};
		{ 3, 39416, "", "=q4=Kel'Thuzad's Reach", "=ds=#h3#, #w13#"};
		{ 4, 39424, "", "=q4=The Soulblade", "=ds=#h3#, #w4#"};
		{ 5, 39420, "", "=q4=Anarchy", "=ds=#h1#, #w4#"};
		{ 6, 39417, "", "=q4=Death's Bite", "=ds=#h2#, #w1#"};
		{ 7, 39423, "", "=q4=Hammer of the Astral Plane", "=ds=#h3#, #w6#"};
		{ 8, 39422, "", "=q4=Staff of the Plaguehound", "=ds=#w9#"};
		{ 9, 39426, "", "=q4=Wand of the Archlich", "=ds=#w12#"};
		{ 10, 39419, "", "=q4=Nerubian Conquerer", "=ds=#w5#"};
		{ 16, 40616, "", "=q4=Helm of the Lost Conqueror", ""};
		{ 17, 40617, "", "=q4=Helm of the Lost Protector", ""};
		{ 18, 40618, "", "=q4=Helm of the Lost Vanquisher", ""};
	};

	AtlasLoot_Data["Naxx80KelThuzad25Man"] = {
		{ 1, 40405, "", "=q4=Cape of the Unworthy Wizard", "=ds=#s4#"};
		{ 2, 40403, "", "=q4=Drape of the Deadly Foe", "=ds=#s4#"};
		{ 3, 40398, "", "=q4=Leggings of Mortal Arrogance", "=ds=#s11#, #a1#"};
		{ 4, 40387, "", "=q4=Boundless Ambition", "=ds=#s2#"};
		{ 5, 40399, "", "=q4=Signet of Manifested Pain", "=ds=#s13#"};
		{ 6, 40383, "", "=q4=Calamity's Grasp", "=ds=#h3#, #w13#"};
		{ 7, 40386, "", "=q4=Sinister Revenge", "=ds=#h1#, #w4#"};
		{ 8, 40396, "", "=q4=The Turning Tide", "=ds=#h3#, #w10#"};
		{ 9, 40402, "", "=q4=Last Laugh", "=ds=#h1#, #w1#"};
		{ 10, 40384, "", "=q4=Betrayer of Humanity", "=ds=#h2#, #w1#"};
		{ 11, 40395, "", "=q4=Torch of Holy Fire", "=ds=#h3#, #w6#"};
		{ 12, 40388, "", "=q4=Journey's End", "=ds=#w9#"};
		{ 13, 40401, "", "=q4=Voice of Reason", "=ds=#w8#"};
		{ 14, 40400, "", "=q4=Wall of Terror", "=ds=#w8#"};
		{ 15, 40385, "", "=q4=Envoy of Mortality", "=ds=#w5#"};
		{ 16, 40631, "", "=q4=Crown of the Lost Conqueror", ""};
		{ 17, 40632, "", "=q4=Crown of the Lost Protector", ""};
		{ 18, 40633, "", "=q4=Crown of the Lost Vanquisher", ""};
	};

	AtlasLoot_Data["Naxx80Trash"] = {
		{ 1, 39467, "", "=q4=Minion Bracers", "=ds=#s8#, #a4#"};
		{ 2, 39472, "", "=q4=Chain of Latent Energies", "=ds=#s2#"};
		{ 3, 39470, "", "=q4=Medallion of the Disgraced", "=ds=#s2#"};
		{ 4, 39427, "", "=q4=Omen of Ruin", "=ds=#h1#, #w4#"};
		{ 5, 39468, "", "=q4=The Stray", "=ds=#h4#, #w13#"};
		{ 6, 39473, "", "=q4=Contortion", "=ds=#w12#"};
	};

	AtlasLoot_Data["Naxx80Trash25Man"] = {
		{ 1, 40410, "", "=q4=Shadow of the Ghoul", "=ds=#s4#"};
		{ 2, 40409, "", "=q4=Boots of the Escaped Captive", "=ds=#s12#, #a2#"};
		{ 3, 40414, "", "=q4=Shoulderguards of the Undaunted", "=ds=#s3#, #a4#"};
		{ 4, 40412, "", "=q4=Ousted Bead Necklace", "=ds=#s2#"};
		{ 5, 40408, "", "=q4=Haunting Call", "=ds=#h3#, #w4#"};
		{ 6, 40407, "", "=q4=Silent Crusader", "=ds=#h1#, #w10#"};
		{ 7, 40406, "", "=q4=Inevitable Defeat", "=ds=#h2#, #w6#"};
	};

		------------------------
		--- Obsidian Sanctum ---
		------------------------

	AtlasLoot_Data["Sartharion"] = {
		{ 1, 40428, "", "=q4=Titan's Outlook", "=ds=#s1#, #a4#"};
		{ 2, 40427, "", "=q4=Circle of Arcane Streams", "=ds=#s2#"};
		{ 3, 40426, "", "=q4=Signet of the Accord", "=ds=#s13#"};
		{ 4, 40433, "", "=q4=Wyrmrest Band", "=ds=#s13#"};
		{ 5, 40430, "", "=q4=Majestic Dragon Figurine", "=ds=#s14#"};
		{ 6, 40429, "", "=q4=Crimson Steel", "=ds=#h3#, #w13#"};
		{ 7, 43345, "", "=q4=Dragon Hide Bag", "=ds=#e1#"};
		{ 8, 43347, "", "=q4=Satchel of Spoils", "" };
		{ 10, 0, "INV_Box_01", "=q6="..AL["Bonus Loot"], "=q5="..AL["One Drake Left"]};
		{ 11, 43988, "", "=q4=Gale-Proof Cloak", "=ds=#s4#"};
		{ 12, 43990, "", "=q4=Blade-Scarred Tunic", "=ds=#s5#, #a2#"};
		{ 13, 43991, "", "=q4=Legguards of Composure", "=ds=#s11#, #a2#"};
		{ 14, 43989, "", "=q4=Remembrance Girdle", "=ds=#s10#, #a4#"};
		{ 15, 43992, "", "=q4=Volitant Amulet", "=ds=#s2#"};
		{ 16, 40613, "", "=q4=Gloves of the Lost Conqueror", "=ds=#e15#"};
		{ 17, 40614, "", "=q4=Gloves of the Lost Protector", "=ds=#e15#"};
		{ 18, 40615, "", "=q4=Gloves of the Lost Vanquisher", "=ds=#e15#"};
		{ 20, 0, "INV_Box_01", "=q6="..AL["Bonus Loot"], "=q5="..AL["Two Drakes Left"]};
		{ 21, 43995, "", "=q4=Enamored Cowl", "=ds=#s1#, #a1#"};
		{ 22, 43998, "", "=q4=Chestguard of Flagrant Prowess", "=ds=#s5#, #a3#"};
		{ 23, 43996, "", "=q4=Sabatons of Firmament", "=ds=#s12#, #a3#"};
		{ 24, 43994, "", "=q4=Belabored Legplates", "=ds=#s11#, #a4#"};
		{ 25, 43993, "", "=q4=Greatring of Collision", "=ds=#s13#"};
		{ 27, 0, "INV_Box_01", "=q6="..AL["Bonus Loot"], "=q5="..AL["Three Drakes Left"]};
		{ 28, 43986, "", "=q4=Reins of the Black Drake", "=ds=#e12#"};
	};

	AtlasLoot_Data["Sartharion25Man"] = {
		{ 1, 40437, "", "=q4=Concealment Shoulderpads", "=ds=#s3#, #a2#"};
		{ 2, 40439, "", "=q4=Mantle of the Eternal Sentinel", "=ds=#s3#, #a2#"};
		{ 3, 40451, "", "=q4=Hyaline Helm of the Sniper", "=ds=#s1#, #a3#"};
		{ 4, 40438, "", "=q4=Council Chamber Epaulets", "=ds=#s3#, #a3#"};
		{ 5, 40453, "", "=q4=Chestplate of the Great Aspects", "=ds=#s5#, #a4#"};
		{ 6, 40446, "", "=q4=Dragon Brood Legguards", "=ds=#s11#, #a4#"};
		{ 7, 40433, "", "=q4=Wyrmrest Band", "=ds=#s13#"};
		{ 8, 40431, "", "=q4=Fury of the Five Flights", "=ds=#s14#" };
		{ 9, 40432, "", "=q4=Illustration of the Dragon Soul", "=ds=#s14#"};
		{ 10, 40455, "", "=q4=Staff of Restraint", "=ds=#w9#"};
		{ 11, 43345, "", "=q4=Dragon Hide Bag", "=ds=#e1#"};
		{ 12, 43346, "", "=q4=Large Satchel of Spoils", ""};
		{ 13, 40628, "", "=q4=Gauntlets of the Lost Conqueror", "=ds=#e15#"};
		{ 14, 40629, "", "=q4=Gauntlets of the Lost Protector", "=ds=#e15#"};
		{ 15, 40630, "", "=q4=Gauntlets of the Lost Vanquisher", "=ds=#e15#"};
		{ 16, 0, "INV_Box_01", "=q6="..AL["Bonus Loot"], "=q5="..AL["One Drake Left"] };
		{ 17, 44002, "", "=q4=The Sanctum's Flowing Vestments", "=ds=#s5#, #a1#"};
		{ 18, 44003, "", "=q4=Upstanding Spaulders", "=ds=#s3#, #a3#"};
		{ 19, 44004, "", "=q4=Bountiful Gauntlets", "=ds=#s9#, #a3#"};
		{ 20, 44000, "", "=q4=Dragonstorm Breastplate", "=ds=#s5#, #a4#"};
		{ 22, 0, "INV_Box_01", "=q6="..AL["Bonus Loot"], "=q5="..AL["Two Drakes Left"]};
		{ 23, 44005, "", "=q4=Pennant Cloak", "=ds=#s4#"};
		{ 24, 44008, "", "=q4=Unsullied Cuffs", "=ds=#s8#, #a1#"};
		{ 25, 44007, "", "=q4=Headpiece of Reconciliation", "=ds=#s1#, #a2#"};
		{ 26, 44011, "", "=q4=Leggings of the Honored", "=ds=#s11#, #a2#"};
		{ 27, 44006, "", "=q4=Obsidian Greathelm", "=ds=#s1#, #a4#"};
		{ 29, 0, "INV_Box_01", "=q6="..AL["Bonus Loot"], "=q5="..AL["Three Drakes Left"]};
		{ 30, 43954, "", "=q4=Reins of the Twilight Drake", "=ds=#e12#"};
	};

		---------------------------
		--- The Eye of Eternity ---
		---------------------------

	AtlasLoot_Data["Malygos"] = {
		{ 1, 40526, "", "=q4=Gown of the Spell-Weaver", "=ds=#s5#, #a1#"};
		{ 2, 40519, "", "=q4=Footsteps of Malygos", "=ds=#s12#, #a2#"};
		{ 3, 40511, "", "=q4=Focusing Energy Epaulets", "=ds=#s3#, #a4#"};
		{ 4, 40486, "", "=q4=Necklace of the Glittering Chamber", "=ds=#s2#"};
		{ 5, 40474, "", "=q4=Surge Needle Ring", "=ds=#s13#"};
		{ 6, 40491, "", "=q4=Hailstorm", "=ds=#h1#, #w10#"};
		{ 7, 40488, "", "=q4=Ice Spire Scepter", "=ds=#h3#, #w6#"};
		{ 8, 40489, "", "=q4=Greatstaff of the Nexus", "=ds=#w9#"};
		{ 9, 40497, "", "=q4=Black Ice", "=ds=#w7#"};
		{ 10, 40475, "", "=q4=Barricade of Eternity", "=ds=#w8#"};
		{ 11, 43953, "", "=q4=Reins of the Blue Drake", "=ds=#e12#"};
		{ 13, 44569, "", "=q4=Key to the Focusing Iris", "=ds=#m3#"};
		{ 16, 44650, "", "=q1=Heart of Magic", "=ds=#m3#"};
		{ 17, 44658, "", "=q4=Chain of the Ancient Wyrm", "=q1=#m4#: =ds=#s2#"};
		{ 18, 44660, "", "=q4=Drakescale Collar", "=q1=#m4#: =ds=#s2#"};
		{ 19, 44659, "", "=q4=Pendant of the Dragonsworn", "=q1=#m4#: =ds=#s2#"};
		{ 20, 44657, "", "=q4=Torque of the Red Dragonflight", "=q1=#m4#: =ds=#s2#"};
	};

	AtlasLoot_Data["Malygos25Man"] = {
		{ 1, 40562, "", "=q4=Hood of Rationality", "=ds=#s1#, #a1#"};
		{ 2, 40555, "", "=q4=Mantle of Dissemination", "=ds=#s3#, #a1#"};
		{ 3, 40194, "", "=q4=Blanketing Robes of Snow", "=ds=#s5#, #a1#"};
		{ 4, 40561, "", "=q4=Leash of Heedless Magic", "=ds=#s10#, #a1#"};
		{ 5, 40560, "", "=q4=Leggings of the Wanton Spellcaster", "=ds=#s11#, #a1#"};
		{ 6, 40558, "", "=q4=Arcanic Tramplers", "=ds=#s12#, #a1#"};
		{ 7, 40594, "", "=q4=Spaulders of Catatonia", "=ds=#s3#, #a2#"};
		{ 8, 40539, "", "=q4=Chestguard of the Recluse", "=ds=#s5#, #a2#"};
		{ 9, 40541, "", "=q4=Frosted Adroit Handguards", "=ds=#s9#, #a2#"};
		{ 10, 40566, "", "=q4=Unravelling Strands of Sanity", "=ds=#s10#, #a2#"};
		{ 11, 40543, "", "=q4=Blue Aspect Helm", "=ds=#s1#, #a3#"};
		{ 12, 40588, "", "=q4=Tunic of the Artifact Guardian", "=ds=#s5#, #a3#"};
		{ 13, 40564, "", "=q4=Winter Spectacle Gloves", "=ds=#s9#, #a3#"};
		{ 14, 40549, "", "=q4=Boots of the Renewed Flight", "=ds=#s12#, #a3#"};
		{ 15, 40590, "", "=q4=Elevated Lair Pauldrons", "=ds=#s3#, #a4#"};
		{ 16, 40589, "", "=q4=Legplates of Sovereignty", "=ds=#s11#, #a4#"};
		{ 17, 40592, "", "=q4=Boots of Healing Energies", "=ds=#s12#, #a4#"};
		{ 18, 40591, "", "=q4=Melancholy Sabatons", "=ds=#s12#, #a4#"};
		{ 19, 40532, "", "=q4=Living Ice Crystals", "=ds=#s14#"};
		{ 20, 40531, "", "=q4=Mark of Norgannon", "=ds=#s14#"};
		{ 21, 43952, "", "=q4=Reins of the Azure Drake", "=ds=#e12#"};
		{ 23, 44577, "", "=q4=Heroic Key to the Focusing Iris", "=ds=#m3#"};
		{ 25, 44650, "", "=q1=Heart of Magic", "=ds=#m3#"};
		{ 26, 44664, "", "=q4=Favor of the Dragon Queen", "=q1=#m4#: =ds=#s2#"};
		{ 27, 44662, "", "=q4=Life-Binder's Locket", "=q1=#m4#: =ds=#s2#"};
		{ 28, 44665, "", "=q4=Nexus War Champion Beads", "=q1=#m4#: =ds=#s2#"};
		{ 29, 44661, "", "=q4=Wyrmrest Necklace of Power", "=q1=#m4#: =ds=#s2#"};
	};

		--------------
		--- Ulduar ---
		--------------

	AtlasLoot_Data["UlduarKologarn25Man"] = {
		{ 1, 45272, "", "=q4=Robes of the Umbral Brute", "=ds=#s5#, #a1#"};
		{ 2, 45275, "", "=q4=Bracers of Unleashed Magic", "=ds=#s8#, #a1#"};
		{ 3, 45273, "", "=q4=Handwraps of Plentiful Recovery", "=ds=#s9#, #a1#"};
		{ 4, 45274, "", "=q4=Leggings of the Stoneweaver", "=ds=#s11#, #a2#"};
		{ 5, 45265, "", "=q4=Shoulderpads of the Monolith", "=ds=#s3#, #a3#"};
		{ 6, 45264, "", "=q4=Decimator's Armguards", "=ds=#s8#, #a4#"};
		{ 7, 45268, "", "=q4=Gloves of the Pythonic Guardian", "=ds=#s9#, #a4#"};
		{ 8, 45267, "", "=q4=Saronite Plated Legguards", "=ds=#s11#, #a4#"};
		{ 9, 45262, "", "=q4=Necklace of Unerring Mettle", "=ds=#s2#"};
		{ 10, 45263, "", "=q4=Wrathstone", "=ds=#s14#"};
		{ 11, 45271, "", "=q4=Ironmender", "=ds=#s15#"};
		{ 12, 45270, "", "=q4=Idol of the Crying Wind", "=ds=#s16#, #w14#"};
		{ 13, 45261, "", "=q4=Giant's Bane", "=ds=#w5#"};
		{ 14, 45266, "", "=q4=Malice", "=ds=#h1#, #w10#"};
	};

--16-17:Hard Mode
	AtlasLoot_Data["UlduarVezax25Man"] = {
		{ 1, 45038, "", "=q5=Fragment of Val'anyr", "=ds="};
		{ 3, 45514, "", "=q4=Mantle of the Unknowing", "=ds=#s3#, #a1#"};
		{ 4, 45512, "", "=q4=Grips of the Unbroken", "=ds=#s9#, #a2#"};
		{ 5, 45513, "", "=q4=Boots of the Forgotten Depths", "=ds=#s12#, #a3#"};
		{ 6, 45502, "", "=q4=Helm of the Faceless", "=ds=#s1#, #a4#"};
		{ 7, 45505, "", "=q4=Belt of Clinging Hope", "=ds=#s10#, #a4#"};
		{ 8, 45501, "", "=q4=Boots of the Underdweller", "=ds=#s12#, #a4#"};
		{ 9, 45503, "", "=q4=Metallic Loop of the Sufferer", "=ds=#s13#"};
		{ 10, 45515, "", "=q4=Ring of the Vacant Eye", "=ds=#s13#"};
		{ 11, 45507, "", "=q4=The General's Heart", "=ds=#s14#"};
		{ 12, 45509, "", "=q4=Idol of the Corruptor", "=ds=#s16#, #w14#"};
		{ 13, 0, "", "=q4=Libram of the Sacred Shield", "=ds=#s16#, #w16#"};
		{ 14, 45498, "", "=q4=Lotrafen, Spear of the Damned", "=ds=#w7#"};
		{ 16, 45518, "", "=q4=Flare of the Heavens", "=ds=#s14#"};
		{ 17, 45516, "", "=q4=Voldrethar, Dark Blade of Oblivion", "=ds=#h2#, #w10#"};
	};

--16-17:Hard Mode
	AtlasLoot_Data["UlduarIronCouncil"] = {	
		{ 1, 45240, "", "=q4=Raiments of the Iron Council", "=ds=#s5#, #a1#"};
		{ 2, 45284, "", "=q4=Kinetic Ripper", "=ds=#h4#, #w13#"};
		{ 3, 45458, "", "=q4=Stormedge", "=ds=#h2#, #w1#"};
		{ 4, 45282, "", "=q4=Ironsoul", "=ds=#h2#, #w6#"};
		{ 16, 45330, "", "=q5=Greaves of Iron Intensity", "=ds=#s12#, #a4#"};
		{ 17, 45449, "", "=q5=The Masticator", "=ds=#h3#, #w13#"};	
	};

	AtlasLoot_Data["UlduarIronCouncil25Man"] = {
		{ 1, 45038, "", "=q5=Fragment of Val'anyr", "=ds="};
		{ 3, 45224, "", "=q4=Drape of the Lithe", "=ds=#s4#"};
		{ 4, 45238, "", "=q4=Overload Legwraps", "=ds=#s11#, #a1#"};
		{ 5, 45237, "", "=q4=Vestments of the Sprouting Seed", "=ds=#s5#, #a2#"};
		{ 6, 45232, "", "=q4=Runed Ironhide Boots", "=ds=#s12#, #a2#"};
		{ 7, 45227, "", "=q4=Iron-studded Mantle", "=ds=#s3#, #a3#"};
		{ 8, 45239, "", "=q4=Runeshaper's Gloves", "=ds=#s9#, #a3#"};
		{ 9, 45225, "", "=q4=Steelbreaker's Embrace", "=ds=#s5#, #a4#"};
		{ 10, 45193, "", "=q4=Insurmountable Fervor", "=ds=#s2#"};
		{ 11, 45236, "", "=q4=Unblinking Eye", "=ds=#s2#"};
		{ 12, 45235, "", "=q4=Radiant Seal", "=ds=#s13#"};
		{ 13, 45233, "", "=q4=Rune Edge", "=ds=#h2#, #w10#"};
		{ 14, 45234, "", "=q4=Rapture", "=ds=#w9#"};
		{ 16, 45241, "", "=q4=Belt of Colossal Rage", "=ds=#s10#, #a4#"};
	};

	----------------
	--- Factions ---
	----------------

		-------------------------
		--- Alliance Vanguard ---
		-------------------------

	AtlasLoot_Data["AllianceVanguard1"] = {
		{ 2, 0, "INV_Shield_36", "=q6=#r4#", ""};
		{ 3, 38459, "", "=q3=Orb of the Eastern Kingdoms", "=ds=#s15#"};
		{ 4, 38465, "", "=q3=Vanguard Soldier's Dagger", "=ds=#h1#, #w4#"};
		{ 5, 38455, "", "=q3=Hammer of the Alliance Vanguard", "=ds=#h1#, #w6#"};
		{ 6, 38463, "", "=q3=Lordaeron's Resolve", "=ds=#w8#"};
		{ 7, 38453, "", "=q3=Shield of the Lion-hearted", "=ds=#w8#"};
		{ 8, 38457, "", "=q3=Sawed-off Hand Cannon", "=ds=#w5#"};
		{ 9, 38464, "", "=q3=Gnomish Magician's Quill", "=ds=#w12#"};
		{ 17, 0, "INV_Shield_36", "=q6=#r5#", ""};
		{ 18, 44503, "", "=q4=Schematic: Mekgineer's Chopper", "=ds=#p5# (450)"};
		{ 19, 44937, "", "=q3=Plans: Titanium Plating", "=ds=#p2# (450)"};
		{ 20, 44701, "", "=q3=Arcanum of the Savage Gladiator", "=ds=#s1# #e17#"};
		Back = "REPMENU_WOTLK";
	};

		----------------------
		--- Argent Crusade ---
		----------------------

	AtlasLoot_Data["ArgentCrusade"] = {
		{ 1, 0, "INV_Jewelry_Talisman_08", "=q6=#r2#", ""};
		{ 2, 43154, "", "=q1=Tabard of the Argent Crusade", "=ds=#s7#"};
		{ 4, 0, "INV_Jewelry_Talisman_08", "=q6=#r4#", ""};
		{ 5, 44248, "", "=q3=Battle Mender's Helm", "=ds=#s1#, #a3#"};
		{ 6, 44247, "", "=q3=Fang-Deflecting Faceguard", "=ds=#s1#, #a4#"};
		{ 7, 44244, "", "=q3=Argent Skeleton Crusher", "=ds=#h2#, #w6#"};
		{ 8, 44245, "", "=q3=Zombie Sweeper Shotgun", "=ds=#w5#"};
		{ 9, 44214, "", "=q3=Purifying Torch", "=ds=#w12#"};
		{ 10, 41726, "", "=q3=Design: Guardian's Twilight Opal", "=ds=#p12# (390)"};
		{ 11, 44150, "", "=q3=Arcanum of the Stalwart Protector", "=ds=#s1# #e17#"};
		{ 16, 0, "INV_Jewelry_Talisman_08", "=q6=#r3#", ""};
		{ 17, 44216, "", "=q3=Cloak of Holy Extermination", "=ds=#s4#"};
		{ 18, 44240, "", "=q3=Special Issue Legplates", "=ds=#s11#, #a4#"};
		{ 19, 44239, "", "=q3=Standard Issue Legguards", "=ds=#s11#, #a4#"};
		{ 20, 44139, "", "=q3=Arcanum of the Fleeing Shadow", "=ds=#s1# #e17#"};
		{ 22, 0, "INV_Jewelry_Talisman_08", "=q6=#r5#", ""};
		{ 23, 44297, "", "=q4=Boots of the Neverending Path", "=ds=#s12#, #a2#"};
		{ 24, 44295, "", "=q4=Polished Regimental Hauberk", "=ds=#s5#, #a3#"};
		{ 25, 44296, "", "=q4=Helm of Purified Thoughts", "=ds=#s1#, #a4#"};
		{ 26, 44283, "", "=q4=Signet of Hopeful Light", "=ds=#s13#"};
		{ 27, 42187, "", "=q1=Pattern: Brilliant Spellthread", "=ds=#p8# (430)"};
		Back = "REPMENU_WOTLK";
	};

		-------------------------
		--- Frenzyheart Tribe ---
		-------------------------

	AtlasLoot_Data["FrenzyheartTribe"] = {
		{ 1, 0, "INV_Misc_Rune_14", "=q6=#r2#", ""};
		{ 2, 41561, "", "=q2=Design: Reckless Huge Citrine", "=ds=#p12# 350"};
		{ 3, 44064, "", "=q1=Nepeta Leaf", "=ds="};
		{ 4, 44072, "", "=q1=Roasted Mystery Beast", "=ds=#e3#"};
		{ 6, 0, "INV_Misc_Rune_14", "=q6=#r4#", ""};
		{ 7, 44116, "", "=q3=Muddied Crimson Gloves", "=ds=#s9#, #a1#"};
		{ 8, 44117, "", "=q3=Azure Strappy Pants", "=ds=#s11#, #a2#"};
		{ 9, 44122, "", "=q3=Scavenged Feathery Leggings", "=ds=#s11#, #a3#"};
		{ 10, 44120, "", "=q3=Giant-Sized Gauntlets", "=ds=#s9#, #a4#"};
		{ 11, 44121, "", "=q3=Sparkly Shiny Gloves", "=ds=#s9#, #a4#"};
		{ 12, 44123, "", "=q3=Discarded Titanium Legplates", "=ds=#s11#, #a4#"};
		{ 13, 44118, "", "=q3=Stolen Vrykul Harpoon", "=ds=#w11#"};
		{ 14, 41723, "", "=q3=Design: Jagged Forest Emerald", "=ds=#p12# 390"};
		{ 15, 44717, "", "=q1=Disgusting Jar", "=ds="};
		{ 16, 0, "INV_Misc_Rune_14", "=q6=#r5#", ""};
		{ 17, 44073, "", "=q1=Frenzyheart Insignia of Fury", "=ds=#s14#"};
		{ 21, 0, "INV_Potion_139", "=q6="..AL["Ripe Disgusting Jar"], ""};
		{ 22, 44719, "", "=q3=Frenzyheart Brew", "=ds=", ""};
		{ 23, 39671, "", "=q1=Resurgent Healing Potion", "=ds=#e2#", ""};
		{ 24, 40067, "", "=q1=Icy Mana Potion", "=ds=#e2#", ""};
		{ 25, 40087, "", "=q1=Powerful Rejuvenation Potion", "=ds=#e2#", ""};
		{ 26, 44716, "", "=q1=Mysterious Fermented Liquid", "=ds=#e4#", ""};
		Back = "REPMENU_WOTLK";
	};

		----------------------------
		--- The Horde Expedition ---
		----------------------------

	AtlasLoot_Data["HordeExpedition1"] = {
		{ 2, 0, "INV_Shield_50", "=q6=#r4#", ""};
		{ 3, 38458, "", "=q3=Darkspear Orb", "=ds=#s15#"};
		{ 4, 38461, "", "=q3=Warsong Shanker", "=ds=#h1#, #w4#"};
		{ 5, 38454, "", "=q3=Warsong Punisher", "=ds=#h1#, #w6#"};
		{ 6, 38452, "", "=q3=Bulwark of the Warchief", "=ds=#w8#"};
		{ 7, 38462, "", "=q3=Warsong Stormshield", "=ds=#w8#"};
		{ 8, 38456, "", "=q3=Sin'dorei Recurve Bow", "=ds=#w2#"};
		{ 9, 38460, "", "=q3=Charged Wand of the Cleft", "=ds=#w12#"};
		{ 17, 0, "INV_Shield_50", "=q6=#r5#", ""};
		{ 18, 44502, "", "=q4=Schematic: Mechano-hog", "=ds=#p5# (450)"};
		{ 19, 44938, "", "=q3=Plans: Titanium Plating", "=ds=#p2# (450)"};
		{ 20, 44702, "", "=q3=Arcanum of the Savage Gladiator", "=ds=#s1# #e17#"};
		Back = "REPMENU_WOTLK";
	};

		-----------------
		--- Kirin Tor ---
		-----------------

	AtlasLoot_Data["KirinTor"] = {
		{ 1, 0, "Spell_Fire_MasterOfElements", "=q6=#r2#", ""};
		{ 2, 43157, "", "=q1=Tabard of the Kirin Tor", "=ds=#s7#"};
		{ 4, 0, "Spell_Fire_MasterOfElements", "=q6=#r3#", ""};
		{ 5, 44167, "", "=q3=Shroud of Dedicated Research", "=ds=#s4#"};
		{ 6, 44170, "", "=q3=Helm of the Majestic Stag", "=ds=#s1#, #a2#"};
		{ 7, 44171, "", "=q3=Spaulders of Grounded Lightning", "=ds=#s3#, #a3#"};
		{ 8, 44166, "", "=q3=Lightblade Rivener", "=ds=#h1#, #w4#"};
		{ 9, 44141, "", "=q3=Arcanum of the Flame's Soul", "=ds=#s1# #e17#"};
		{ 16, 0, "Spell_Fire_MasterOfElements", "=q6=#r4#", ""};
		{ 17, 44179, "", "=q3=Mind-Expanding Leggings", "=ds=#s11#, #a2#"};
		{ 18, 44176, "", "=q3=Girdle of the Warrior Magi", "=ds=#s10#, #a4#"};
		{ 19, 44173, "", "=q3=Flameheart Spell Scalpel", "=ds=#h3#, #w4#"};
		{ 20, 44174, "", "=q3=Stave of Shrouded Mysteries", "=ds=#w9#"};
		{ 21, 44159, "", "=q3=Arcanum of Burning Mysteries", "=ds=#s1# #e17#"};
		{ 23, 0, "Spell_Fire_MasterOfElements", "=q6=#r5#", ""};
		{ 24, 44180, "", "=q4=Robes of Crackling Flame", "=ds=#s5#, #a1#"};
		{ 25, 44181, "", "=q4=Ghostflicker Waistband", "=ds=#s10#, #a2#"};
		{ 26, 44182, "", "=q4=Boots of Twinkling Stars", "=ds=#s12#, #a3#"};
		{ 27, 44183, "", "=q4=Fireproven Gauntlets", "=ds=#s9#, #a4#"};
		{ 28, 41718, "", "=q3=Design: Runed Scarlet Ruby", "=ds=#p12# (390)"};
		{ 29, 42188, "", "=q1=Pattern: Sapphire Spellthread", "=ds=#p8# (430)"};
		Back = "REPMENU_WOTLK";
	};

		---------------------------------
		--- Knights of the Ebon Blade ---
		---------------------------------

	AtlasLoot_Data["KnightsoftheEbonBlade"] = {
		{ 1, 0, "INV_Weapon_Hand_01", "=q6=#r2#", ""};
		{ 2, 41562, "", "=q2=Design: Deadly Huge Citrine", "=ds=#p12# (350)"};
		{ 3, 43155, "", "=q1=Tabard of the Ebon Blade", "=ds=#s7#"};
		{ 5, 0, "INV_Weapon_Hand_01", "=q6=#r3#", ""};
		{ 6, 44242, "", "=q3=Dark Soldier Cape", "=ds=#s4#"};
		{ 7, 44243, "", "=q3=Toxin-Tempered Sabatons", "=ds=#s12#, #a4#"};
		{ 8, 44241, "", "=q3=Unholy Persuader", "=ds=#h4#, #w13#"};
		{ 9, 44512, "", "=q3=Pattern: Nerubian Reinforced Quiver", "=ds=#p7# (415)"};
		{ 10, 44138, "", "=q3=Arcanum of Toxic Warding", "=ds=#s1# #e17#"};
		{ 16, 0, "INV_Weapon_Hand_01", "=q6=#r4#", ""};
		{ 17, 44256, "", "=q3=Sterile Flesh-Handling Gloves", "=ds=#s9#, #a1#"};
		{ 18, 44258, "", "=q3=Wound-Binder's Wristguards", "=ds=#s8#, #a2#"};
		{ 19, 44257, "", "=q3=Spaulders of the Black Arrow", "=ds=#s3#, #a3#"};
		{ 20, 44250, "", "=q3=Reaper of Dark Souls", "=ds=#h1#, #w10#"};
		{ 21, 44249, "", "=q3=Runeblade of Demonstrable Power", "=ds=#h2#, #w10#"};
		{ 22, 41721, "", "=q3=Design: Wicked Monarch Topaz", "=ds=#p12# (390)"};
		{ 23, 44149, "", "=q3=Arcanum of Torment", "=ds=#s1# #e17#"};
		{ 24, 42183, "", "=q1=Pattern: Abyssal Bag", "=ds=#p8# (435)"};
		{ 26, 0, "INV_Weapon_Hand_01", "=q6=#r5#", ""};
		{ 27, 44302, "", "=q4=Belt of Dark Mending", "=ds=#s10#, #a1#"};
		{ 28, 44303, "", "=q4=Darkheart Chestguard", "=ds=#s5#, #a2#"};
		{ 29, 44305, "", "=q4=Kilt of Dark Mercy", "=ds=#s11#, #a3#"};
		{ 30, 44306, "", "=q4=Death-Inured Sabatons", "=ds=#s12#, #a4#"};
		Back = "REPMENU_WOTLK";
	};

		-------------------
		--- The Kalu'ak ---
		-------------------

	AtlasLoot_Data["TheKaluak"] = {
		{ 1, 0, "INV_Fishingpole_03", "=q6=#r2#", ""};
		{ 2, 41568, "", "=q2=Design: Seer's Dark Jade", "=ds=#p12# (350)"};
		{ 3, 44049, "", "=q1=Freshly-Speared Emperor Salmon", "=ds=#e3#"};
		{ 5, 0, "INV_Fishingpole_03", "=q6=#r3#", ""};
		{ 6, 44061, "", "=q3=Pigment-Stained Robes", "=ds=#s5#, #a1#"};
		{ 7, 44062, "", "=q3=Turtle-Minders Robe", "=ds=#s5#, #a1#"};
		{ 8, 44054, "", "=q3=Whale-Skin Breastplate", "=ds=#s5#, #a2#"};
		{ 9, 44055, "", "=q3=Whale-Skin Vest", "=ds=#s5#, #a2#"};
		{ 10, 44059, "", "=q3=Cuttlefish Scale Breastplate", "=ds=#s5#, #a3#"};
		{ 11, 44060, "", "=q3=Cuttlefish Tooth Ringmail", "=ds=#s5#, #a3#"};
		{ 12, 44057, "", "=q3=Ivory-Reinforced Chestguard", "=ds=#s5#, #a4#"};
		{ 13, 44058, "", "=q3=Whalebone Carapace", "=ds=#s5#, #a4#"};
		{ 14, 44511, "", "=q3=Pattern: Dragonscale Ammo Pouch", "=ds=#p7# (415)"};
		{ 15, 41574, "", "=q2=Design: Defender's Shadow Crystal", "=ds=#p12# (350)"};
		{ 16, 0, "INV_Fishingpole_03", "=q6=#r4#", ""};
		{ 17, 44051, "", "=q3=Traditional Flensing Knife", "=ds=#h1#, #w4#"};
		{ 18, 44052, "", "=q3=Totemic Purification Rod", "=ds=#h3#, #w6#"};
		{ 19, 44053, "", "=q3=Whale-Stick Harpoon", "=ds=#w7#"};
		{ 20, 44509, "", "=q3=Pattern: Trapper's Traveling Pack", "=ds=#p7# (415)"};
		{ 22, 0, "INV_Fishingpole_03", "=q6=#r5#", ""};
		{ 23, 44050, "", "=q4=Mastercraft Kalu'ak Fishing Pole", "=ds=#e20#"};
		{ 24, 44723, "", "=q3=Nurtured Penguin Egg", "=ds=#e13#"};
		Back = "REPMENU_WOTLK";
	};

		-------------------
		--- The Oracles ---
		-------------------

	AtlasLoot_Data["TheOracles"] = {
		{ 1, 0, "INV_Helmet_138", "=q6=#r2#", ""};
		{ 2, 41567, "", "=q2=Design: Vivid Dark Jade", "=ds=#p12# (350)"};
		{ 3, 44065, "", "=q1=Oracle Secret Solution", "=ds=#e2#"};
		{ 5, 0, "INV_Helmet_138", "=q6=#r3#", ""};
		{ 6, 44071, "", "=q1=Slow-Roasted Eel", "=ds=#e3#"};
		{ 8, 0, "INV_Egg_02", "=q6="..AL["Cracked Egg"], ""};
		{ 9, 44707, "", "=q4=Reins of the Green Proto-Drake", "=ds=#e12#", ""};
		{ 10, 39898, "", "=q1=Cobra Hatchling", "=ds=#e13#", ""};
		{ 11, 44721, "", "=q1=Proto-Drake Whelp", "=ds=#e13#", ""};
		{ 12, 39896, "", "=q1=Tickbird Hatchling", "=ds=#e13#", ""};
		{ 13, 39899, "", "=q1=White Tickbird Hatchling", "=ds=#e13#", ""};
		{ 14, 44722, "", "=q1=Aged Yolk", "=ds=#e3#", ""};
		{ 16, 0, "INV_Helmet_138", "=q6=#r4#", ""};
		{ 17, 44104, "", "=q3=Fishy Cinch", "=ds=#s10#, #a1#"};
		{ 18, 44106, "", "=q3=Glitterscale Wrap", "=ds=#s10#, #a2#" };
		{ 19, 44110, "", "=q3=Sharkjaw Cap", "=ds=#s1#, #a3#" };
		{ 20, 44109, "", "=q3=Toothslice Helm", "=ds=#s1#, #a3#" };
		{ 21, 44112, "", "=q3=Glimmershell Shoulder Protectors", "=ds=#s3#, #a4#"};
		{ 22, 44111, "", "=q3=Gold Star Spaulders", "=ds=#s3#, #a4#"};
		{ 23, 44108, "", "=q3=Shinygem Rod", "=ds=#w12#"};
		{ 24, 41724, "", "=q3=Design: Sundered Forest Emerald", "=ds=#p12# (390)"};
		{ 25, 39878, "", "=q1=Mysterious Egg", "=ds="};
		{ 27, 0, "INV_Helmet_138", "=q6=#r5#", ""};
		{ 28, 44074, "", "=q4=Oracle Talisman of Ablution", "=ds=#s14#"};
		Back = "REPMENU_WOTLK";
	};

		-------------------------
		--- The Sons of Hodir ---
		-------------------------

	AtlasLoot_Data["TheSonsofHodir1"] = {
		{ 1, 0, "Spell_Holy_DivinePurpose", "=q6=#r3#", ""};
		{ 2, 44190, "", "=q3=Spaulders of Frozen Knives", "=ds=#s3#, #a2#"};
		{ 3, 44189, "", "=q3=Giant Ring Belt", "=ds=#s10#, #a3#"};
		{ 4, 44510, "", "=q3=Pattern: Mammoth Mining Bag", "=ds=#p7# (415)"};
		{ 5, 44137, "", "=q3=Arcanum of the Frosty Soul", "=ds=#s1# #e17#"};
		{ 6, 44131, "", "=q3=Lesser Inscription of the Axe", "=ds=#s3# #e17#"};
		{ 7, 44130, "", "=q3=Lesser Inscription of the Crag", "=ds=#s3# #e17#"};
		{ 8, 44132, "", "=q3=Lesser Inscription of the Pinnacle", "=ds=#s3# #e17#"};
		{ 9, 44129, "", "=q3=Lesser Inscription of the Storm ", "=ds=#s3# #e17#"};
		{ 16, 0, "Spell_Holy_DivinePurpose", "=q6=#r4#", ""};
		{ 17, 43958, "", "=q4=Reins of the Ice Mammoth", "=ds=#e12# =ec1=#m7#"};
		{ 18, 44080, "", "=q4=Reins of the Ice Mammoth", "=ds=#e12# =ec1=#m6#"};
		{ 19, 44194, "", "=q3=Giant-Friend Kilt", "=ds=#s11#, #a2#" };
		{ 20, 44195, "", "=q3=Spaulders of the Giant Lords", "=ds=#s3#, #a4#"};
		{ 21, 44193, "", "=q3=Broken Stalactite", "=ds=#h1#, #w4#"};
		{ 22, 44192, "", "=q3=Stalactite Chopper", "=ds=#h1#, #w1#"};
		Next = "TheSonsofHodir2";
		Back = "REPMENU_WOTLK";
	};

	AtlasLoot_Data["TheSonsofHodir2"] = {
		{ 1, 0, "Spell_Holy_DivinePurpose", "=q6=#r5#", ""};
		{ 2, 43961, "", "=q4=Reins of the Grand Ice Mammoth", "=ds=#e12# =ec1=#m7#"};
		{ 3, 44086, "", "=q4=Reins of the Grand Ice Mammoth", "=ds=#e12# =ec1=#m6#"};
		{ 4, 44133, "", "=q4=Greater Inscription of the Axe", "=ds=#s3# #e17#"};
		{ 5, 44134, "", "=q4=Greater Inscription of the Crag", "=ds=#s3# #e17#"};
		{ 6, 44136, "", "=q4=Greater Inscription of the Pinnacle", "=ds=#s3# #e17#"};
		{ 7, 44135, "", "=q4=Greater Inscription of the Storm ", "=ds=#s3# #e17#"};
		{ 8, 41720, "", "=q3=Design: Smooth Autumn's Glow", "=ds=#p12# (390)"};
		{ 9, 42184, "", "=q1=Pattern: Glacial Bag", "=ds=#p8# (445)"};
		Prev = "TheSonsofHodir1";
		Back = "REPMENU_WOTLK";
	};

		-------------------------
		--- Winterfin Retreat ---
		-------------------------

	AtlasLoot_Data["WinterfinRetreat"] = {
		{ 2, 36784, "", "=q3=Siren's Tear", "=ds=#e7#", "60 #winterfinclam#"};
		{ 3, 37462, "", "=q2=Sea King's Crown", "=ds=#s1#, #a1#", "50 #winterfinclam#"};
		{ 4, 37463, "", "=q2=Winterfin Patch of Honor", "=ds=#s1#, #a2#", "50 #winterfinclam#"};
		{ 5, 37461, "", "=q2=Tidebreaker Trident", "=ds=#w7#", "100 #winterfinclam#"};
		{ 6, 36783, "", "=q2=Northsea Pearl", "=ds=#e7#", "30 #winterfinclam#"};
		{ 7, 37464, "", "=q1=Winterfin Horn of Distress", "=ds=#e22#", "20 #winterfinclam#"};
		{ 8, 37449, "", "=q1=Breath of Murloc", "=ds=#e2#", "5 #winterfinclam#"};
		{ 9, 38351, "", "=q1=Murliver Oil", "=ds=#e2#", "5 #winterfinclam#"};
		{ 10, 38350, "", "=q1=Winterfin \"Depth Charge\"", "=ds=#e4#", "1 #winterfinclam#"};
		{ 11, 17058, "", "=q1=Fish Oil", "=ds=#e8#", "1 #winterfinclam#"};
		{ 12, 17057, "", "=q1=Shiny Fish Scales", "=ds=#e8#", "1 #winterfinclam#"};
		{ 14, 34597, "", "=q1=Winterfin Clam", "=ds=#m17#"};
		Back = "REPMENU_WOTLK";
	};

		---------------------------
		--- The Wyrmrest Accord ---
		---------------------------

	AtlasLoot_Data["TheWyrmrestAccord"] = {
		{ 1, 0, "Ability_Druid_Eclipse", "=q6=#r1#", ""};
		{ 2, 43156, "", "=q1=Tabard of the Wyrmrest Accord", "=ds=#s7#"};
		{ 4, 0, "Ability_Druid_Eclipse", "=q6=#r3#", ""};
		{ 5, 44188, "", "=q3=Cloak of Peaceful Resolutions", "=ds=#s4#"};
		{ 6, 44196, "", "=q3=Sash of the Wizened Wyrm", "=ds=#s10#, #a1#"};
		{ 7, 44197, "", "=q3=Bracers of Accorded Courtesy", "=ds=#s8#, #a4#"};
		{ 8, 44187, "", "=q3=Fang of Truth", "=ds=#h1#, #w10#"};
		{ 9, 44140, "", "=q3=Arcanum of the Eclipsed Moon", "=ds=#s1# #e17#"};
		{ 16, 0, "Ability_Druid_Eclipse", "=q6=#r4#", ""};
		{ 17, 44200, "", "=q3=Ancestral Sinew Wristguards", "=ds=#s8#, #a1#"};
		{ 18, 44198, "", "=q3=Breastplate of the Solemn Council", "=ds=#s5#, #a4#"};
		{ 19, 44201, "", "=q3=Sabatons of Draconic Vigor", "=ds=#s12#, #a4#"};
		{ 20, 44199, "", "=q3=Gavel of the Brewing Storm", "=ds=#h3#, #w6#"};
		{ 21, 44152, "", "=q3=Arcanum of Blissful Mending", "=ds=#s1# #e17#"};
		{ 22, 42185, "", "=q1=Pattern: Mysterious Bag", "=ds=#p8# (440)"};
		{ 24, 0, "Ability_Druid_Eclipse", "=q6=#r5#", ""};
		{ 25, 44202, "", "=q4=Sandals of Crimson Fury", "=ds=#s12#, #a1#"};
		{ 26, 44203, "", "=q4=Dragonfriend Bracers", "=ds=#s8#, #a2#"};
		{ 27, 44204, "", "=q4=Grips of Fierce Pronouncements", "=ds=#s9#, #a3#"};
		{ 28, 44205, "", "=q4=Legplates of Bloody Reprisal", "=ds=#s11#, #a4#"};
		{ 29, 43955, "", "=q4=Reins of the Red Drake", "=ds=#e12#"};
		{ 30, 41722, "", "=q3=Design: Glimmering Monarch Topaz", "=ds=#p12# (390)"};
		Back = "REPMENU_WOTLK";
	};

	-----------
	--- PvP ---
	-----------

		------------------
		--- Armor Sets ---
		------------------

	AtlasLoot_Data["PvP80DeathKnight"] = {
		{ 1, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 2, 40817, "", "=q3=Savage Gladiator's Dreadplate Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 40857, "", "=q3=Savage Gladiator's Dreadplate Shoulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 40779, "", "=q3=Savage Gladiator's Dreadplate Chestpiece", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 40799, "", "=q3=Savage Gladiator's Dreadplate Gauntlets", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 40837, "", "=q3=Savage Gladiator's Dreadplate Legguards", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 9, 40820, "", "=q4=Hateful Gladiator's Dreadplate Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 40860, "", "=q4=Hateful Gladiator's Dreadplate Shoulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 40781, "", "=q4=Hateful Gladiator's Dreadplate Chestpiece", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 40803, "", "=q4=Hateful Gladiator's Dreadplate Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 40841, "", "=q4=Hateful Gladiator's Dreadplate Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 17, 40824, "", "=q4=Deadly Gladiator's Dreadplate Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 40863, "", "=q4=Deadly Gladiator's Dreadplate Shoulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40784, "", "=q4=Deadly Gladiator's Dreadplate Chestpiece", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 40806, "", "=q4=Deadly Gladiator's Dreadplate Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 40845, "", "=q4=Deadly Gladiator's Dreadplate Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Dreadplate Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Dreadplate Shoulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Dreadplate Chestpiece", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Dreadplate Gauntlets", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Dreadplate Legguards", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80DruidBalance"] = {
		{ 1, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_1#", ""};
		{ 2, 41324, "", "=q3=Savage Gladiator's Wyrmhide Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41278, "", "=q3=Savage Gladiator's Wyrmhide Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41313, "", "=q3=Savage Gladiator's Wyrmhide Robes", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41290, "", "=q3=Savage Gladiator's Wyrmhide Gloves", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41301, "", "=q3=Savage Gladiator's Wyrmhide Legguards", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_1#", ""};
		{ 9, 41325, "", "=q4=Hateful Gladiator's Wyrmhide Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41279, "", "=q4=Hateful Gladiator's Wyrmhide Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41314, "", "=q4=Hateful Gladiator's Wyrmhide Robes", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41291, "", "=q4=Hateful Gladiator's Wyrmhide Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41302, "", "=q4=Hateful Gladiator's Wyrmhide Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_1#", ""};
		{ 17, 41326, "", "=q4=Deadly Gladiator's Wyrmhide Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41280, "", "=q4=Deadly Gladiator's Wyrmhide Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41315, "", "=q4=Deadly Gladiator's Wyrmhide Robes", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41292, "", "=q4=Deadly Gladiator's Wyrmhide Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41303, "", "=q4=Deadly Gladiator's Wyrmhide Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Wyrmhide Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Wyrmhide Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Wyrmhide Robes", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Wyrmhide Gloves", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Wyrmhide Legguards", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80DruidFeral"] = {
		{ 1, 0, "Ability_Druid_Maul", "=q6=#arenas1_2#", ""};
		{ 2, 41675, "", "=q3=Savage Gladiator's Dragonhide Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41712, "", "=q3=Savage Gladiator's Dragonhide Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41658, "", "=q3=Savage Gladiator's Dragonhide Robes", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41770, "", "=q3=Savage Gladiator's Dragonhide Gloves", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41664, "", "=q3=Savage Gladiator's Dragonhide Legguards", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Ability_Druid_Maul", "=q6=#arenas1_2#", ""};
		{ 9, 41676, "", "=q4=Hateful Gladiator's Dragonhide Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41713, "", "=q4=Hateful Gladiator's Dragonhide Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41659, "", "=q4=Hateful Gladiator's Dragonhide Robes", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41771, "", "=q4=Hateful Gladiator's Dragonhide Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41665, "", "=q4=Hateful Gladiator's Dragonhide Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Ability_Druid_Maul", "=q6=#arenas1_2#", ""};
		{ 17, 41677, "", "=q4=Deadly Gladiator's Dragonhide Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41714, "", "=q4=Deadly Gladiator's Dragonhide Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41660, "", "=q4=Deadly Gladiator's Dragonhide Robes", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41772, "", "=q4=Deadly Gladiator's Dragonhide Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41666, "", "=q4=Deadly Gladiator's Dragonhide Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Dragonhide Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Dragonhide Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Dragonhide Robes", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Dragonhide Gloves", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Dragonhide Legguards", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80DruidRestoration"] = {
		{ 1, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", ""};
		{ 2, 41269, "", "=q3=Savage Gladiator's Kodohide Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41271, "", "=q3=Savage Gladiator's Kodohide Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41272, "", "=q3=Savage Gladiator's Kodohide Robes", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41268, "", "=q3=Savage Gladiator's Kodohide Gloves", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41270, "", "=q3=Savage Gladiator's Kodohide Legguards", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", ""};
		{ 9, 41319, "", "=q4=Hateful Gladiator's Kodohide Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41273, "", "=q4=Hateful Gladiator's Kodohide Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41308, "", "=q4=Hateful Gladiator's Kodohide Robes", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41284, "", "=q4=Hateful Gladiator's Kodohide Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41296, "", "=q4=Hateful Gladiator's Kodohide Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", ""};
		{ 17, 41320, "", "=q4=Deadly Gladiator's Kodohide Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41274, "", "=q4=Deadly Gladiator's Kodohide Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41309, "", "=q4=Deadly Gladiator's Kodohide Robes", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41286, "", "=q4=Deadly Gladiator's Kodohide Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41297, "", "=q4=Deadly Gladiator's Kodohide Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Kodohide Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Kodohide Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Kodohide Robes", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Kodohide Gloves", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Kodohide Legguards", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80Hunter"] = {
		{ 1, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", ""};
		{ 2, 41154, "", "=q3=Savage Gladiator's Chain Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41214, "", "=q3=Savage Gladiator's Chain Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41084, "", "=q3=Savage Gladiator's Chain Armor", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41140, "", "=q3=Savage Gladiator's Chain Gauntlets", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41202, "", "=q3=Savage Gladiator's Chain Leggings", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", ""};
		{ 9, 41155, "", "=q4=Hateful Gladiator's Chain Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41215, "", "=q4=Hateful Gladiator's Chain Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41085, "", "=q4=Hateful Gladiator's Chain Armor", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41141, "", "=q4=Hateful Gladiator's Chain Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41203, "", "=q4=Hateful Gladiator's Chain Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", ""};
		{ 17, 41156, "", "=q4=Deadly Gladiator's Chain Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41216, "", "=q4=Deadly Gladiator's Chain Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41086, "", "=q4=Deadly Gladiator's Chain Armor", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41142, "", "=q4=Deadly Gladiator's Chain Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41204, "", "=q4=Deadly Gladiator's Chain Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Chain Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Chain Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Chain Armor", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Chain Gauntlets", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Chain Leggings", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80Mage"] = {
		{ 1, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", ""};
		{ 2, 41943, "", "=q3=Savage Gladiator's Silk Cowl", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41962, "", "=q3=Savage Gladiator's Silk Amice", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41949, "", "=q3=Savage Gladiator's Silk Raiment", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41968, "", "=q3=Savage Gladiator's Silk Handguards", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41956, "", "=q3=Savage Gladiator's Silk", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", ""};
		{ 9, 41944, "", "=q4=Hateful Gladiator's Silk Cowl", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41963, "", "=q4=Hateful Gladiator's Silk Amice", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41950, "", "=q4=Hateful Gladiator's Silk Raiment", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41969, "", "=q4=Hateful Gladiator's Silk Handguards", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41957, "", "=q4=Hateful Gladiator's Silk Trousers", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", ""};
		{ 17, 41945, "", "=q4=Deadly Gladiator's Silk Cowl", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41964, "", "=q4=Deadly Gladiator's Silk Amice", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41951, "", "=q4=Deadly Gladiator's Silk Raiment", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41970, "", "=q4=Deadly Gladiator's Silk Handguards", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41958, "", "=q4=Deadly Gladiator's Silk Trousers", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Silk Cowl", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Silk Amice", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Silk Raiment", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Silk Handguards", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Silk Trousers", "=ds="};

		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80PaladinRetribution"] = {
		{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_1#", ""};
		{ 2, 40818, "", "=q3=Savage Gladiator's Scaled Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 40858, "", "=q3=Savage Gladiator's Scaled Shoulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 40780, "", "=q3=Savage Gladiator's Scaled Chestpiece", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 40798, "", "=q3=Savage Gladiator's Scaled Gauntlets", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 40838, "", "=q3=Savage Gladiator's Scaled Legguards", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_1#", ""};
		{ 9, 40821, "", "=q4=Hateful Gladiator's Scaled Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 40861, "", "=q4=Hateful Gladiator's Scaled Shoulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 40782, "", "=q4=Hateful Gladiator's Scaled Chestpiece", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 40802, "", "=q4=Hateful Gladiator's Scaled Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 40842, "", "=q4=Hateful Gladiator's Scaled Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_1#", ""};
		{ 17, 40825, "", "=q4=Deadly Gladiator's Scaled Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 40864, "", "=q4=Deadly Gladiator's Scaled Shoulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40785, "", "=q4=Deadly Gladiator's Scaled Chestpiece", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 40805, "", "=q4=Deadly Gladiator's Scaled Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 40846, "", "=q4=Deadly Gladiator's Scaled Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Scaled Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Scaled Shoulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Scaled Chestpiece", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Scaled Gauntlets", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Scaled Legguards", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80PaladinHoly"] = {
		{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_2#", ""};
		{ 2, 40930, "", "=q3=Savage Gladiator's Ornamented Headcover", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 40960, "", "=q3=Savage Gladiator's Ornamented Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 40898, "", "=q3=Savage Gladiator's Ornamented Chestguard", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 40918, "", "=q3=Savage Gladiator's Ornamented Gloves", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 40936, "", "=q3=Savage Gladiator's Ornamented Legplates", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_2#", ""};
		{ 9, 40931, "", "=q4=Hateful Gladiator's Ornamented Headcover", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 40961, "", "=q4=Hateful Gladiator's Ornamented Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 40904, "", "=q4=Hateful Gladiator's Ornamented Gloves", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 40925, "", "=q4=Hateful Gladiator's Ornamented Chestguard", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 40937, "", "=q4=Hateful Gladiator's Ornamented Legplates", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_2#", ""};
		{ 17, 40932, "", "=q4=Deadly Gladiator's Ornamented Headcover", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 40962, "", "=q4=Deadly Gladiator's Ornamented Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40905, "", "=q4=Deadly Gladiator's Ornamented Chestguard", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 40926, "", "=q4=Deadly Gladiator's Ornamented Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 40938, "", "=q4=Deadly Gladiator's Ornamented Legplates", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Ornamented Headcover", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Ornamented Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Ornamented Chestguard", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Ornamented Gloves", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Ornamented Legplates", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80PriestShadow"] = {
		{ 1, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", ""};
		{ 2, 41912, "", "=q3=Savage Gladiator's Satin Hood", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41930, "", "=q3=Savage Gladiator's Satin Mantle", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41918, "", "=q3=Savage Gladiator's Satin Robe", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41937, "", "=q3=Savage Gladiator's Satin Gloves", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41924, "", "=q3=Savage Gladiator's Satin Leggings", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", ""};
		{ 9, 41913, "", "=q4=Hateful Gladiator's Satin Hood", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41931, "", "=q4=Hateful Gladiator's Satin Mantle", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41919, "", "=q4=Hateful Gladiator's Satin Robe", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41938, "", "=q4=Hateful Gladiator's Satin Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41925, "", "=q4=Hateful Gladiator's Satin Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", ""};
		{ 17, 41914, "", "=q4=Deadly Gladiator's Satin Hood", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41933, "", "=q4=Deadly Gladiator's Satin Mantle", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41920, "", "=q4=Deadly Gladiator's Satin Robe", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41939, "", "=q4=Deadly Gladiator's Satin Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41926, "", "=q4=Deadly Gladiator's Satin Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Satin Hood", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Satin Mantle", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Satin Robe", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Satin Gloves", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Satin Leggings", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80PriestHoly"] = {
		{ 1, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", ""};
		{ 2, 41848, "", "=q3=Savage Gladiator's Mooncloth Hood", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41850, "", "=q3=Savage Gladiator's Mooncloth Mantle", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41851, "", "=q3=Savage Gladiator's Mooncloth Robe", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41847, "", "=q3=Savage Gladiator's Mooncloth Gloves", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41849, "", "=q3=Savage Gladiator's Mooncloth Leggings", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", ""};
		{ 9, 41852, "", "=q4=Hateful Gladiator's Mooncloth Hood", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41867, "", "=q4=Hateful Gladiator's Mooncloth Mantle", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41857, "", "=q4=Hateful Gladiator's Mooncloth Robe", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41872, "", "=q4=Hateful Gladiator's Mooncloth Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41862, "", "=q4=Hateful Gladiator's Mooncloth Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", ""};
		{ 17, 41853, "", "=q4=Deadly Gladiator's Mooncloth Hood", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41868, "", "=q4=Deadly Gladiator's Mooncloth Mantle", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41858, "", "=q4=Deadly Gladiator's Mooncloth Robe", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41873, "", "=q4=Deadly Gladiator's Mooncloth Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41863, "", "=q4=Deadly Gladiator's Mooncloth Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Mooncloth Hood", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Mooncloth Mantle", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Mooncloth Robe", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Mooncloth Gloves", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Mooncloth Leggings", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80Rogue"] = {
		{ 1, 0, "Ability_BackStab", "=q6=#arenas6#", ""};
		{ 2, 41644, "", "=q3=Savage Gladiator's Leather Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41646, "", "=q3=Savage Gladiator's Leather Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41647, "", "=q3=Savage Gladiator's Leather Tunic", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41643, "", "=q3=Savage Gladiator's Leather Gloves", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41645, "", "=q3=Savage Gladiator's Leather Legguards", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Ability_BackStab", "=q6=#arenas6#", ""};
		{ 9, 41670, "", "=q4=Hateful Gladiator's Leather Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41681, "", "=q4=Hateful Gladiator's Leather Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41648, "", "=q4=Hateful Gladiator's Leather Tunic", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41765, "", "=q4=Hateful Gladiator's Leather Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41653, "", "=q4=Hateful Gladiator's Leather Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Ability_BackStab", "=q6=#arenas6#", ""};
		{ 17, 41671, "", "=q4=Deadly Gladiator's Leather Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41682, "", "=q4=Deadly Gladiator's Leather Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41649, "", "=q4=Deadly Gladiator's Leather Tunic", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41766, "", "=q4=Deadly Gladiator's Leather Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41654, "", "=q4=Deadly Gladiator's Leather Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Leather Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Leather Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Leather Tunic", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Leather Gloves", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Leather Legguards", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80ShamanElemental"] = {
		{ 1, 0, "Spell_Nature_Lightning", "=q6=#arenas7_1#", ""};
		{ 2, 41016, "", "=q3=Savage Gladiator's Mail Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41041, "", "=q3=Savage Gladiator's Mail Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 40987, "", "=q3=Savage Gladiator's Mail Armor", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41004, "", "=q3=Savage Gladiator's Mail Gauntlets", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41030, "", "=q3=Savage Gladiator's Mail Leggings", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Nature_Lightning", "=q6=#arenas7_1#", ""};
		{ 9, 41017, "", "=q4=Hateful Gladiator's Mail Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41042, "", "=q4=Hateful Gladiator's Mail Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 40989, "", "=q4=Hateful Gladiator's Mail Armor", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41005, "", "=q4=Hateful Gladiator's Mail Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41031, "", "=q4=Hateful Gladiator's Mail Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Nature_Lightning", "=q6=#arenas7_1#", ""};
		{ 17, 41018, "", "=q4=Deadly Gladiator's Mail Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41043, "", "=q4=Deadly Gladiator's Mail Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40991, "", "=q4=Deadly Gladiator's Mail Armor", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41006, "", "=q4=Deadly Gladiator's Mail Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41032, "", "=q4=Deadly Gladiator's Mail Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Mail Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Mail Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Mail Armor", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Mail Gauntlets", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Mail Leggings", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80ShamanEnhancement"] = {
		{ 1, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", ""};
		{ 2, 41148, "", "=q3=Savage Gladiator's Linked Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41208, "", "=q3=Savage Gladiator's Linked Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41078, "", "=q3=Savage Gladiator's Linked Armor", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 41134, "", "=q3=Savage Gladiator's Linked Gauntlets", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41160, "", "=q3=Savage Gladiator's Linked Leggings", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", ""};
		{ 9, 41149, "", "=q4=Hateful Gladiator's Linked Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41209, "", "=q4=Hateful Gladiator's Linked Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 41079, "", "=q4=Hateful Gladiator's Linked Armor", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 41135, "", "=q4=Hateful Gladiator's Linked Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41162, "", "=q4=Hateful Gladiator's Linked Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", ""};
		{ 17, 41150, "", "=q4=Deadly Gladiator's Linked Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41210, "", "=q4=Deadly Gladiator's Linked Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41080, "", "=q4=Deadly Gladiator's Linked Armor", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41136, "", "=q4=Deadly Gladiator's Linked Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41198, "", "=q4=Deadly Gladiator's Linked Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Linked Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Linked Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Linked Armor", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Linked Gauntlets", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Linked Leggings", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80ShamanRestoration"] = {
		{ 1, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_1#", ""};
		{ 2, 41010, "", "=q3=Savage Gladiator's Ringmail Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 41024, "", "=q3=Savage Gladiator's Ringmail Spaulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 40986, "", "=q3=Savage Gladiator's Ringmail Armor", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 40998, "", "=q3=Savage Gladiator's Ringmail Gauntlets", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 41023, "", "=q3=Savage Gladiator's Ringmail Leggings", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_1#", ""};
		{ 9, 41011, "", "=q4=Hateful Gladiator's Ringmail Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 41036, "", "=q4=Hateful Gladiator's Ringmail Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 40988, "", "=q4=Hateful Gladiator's Ringmail Armor", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 40999, "", "=q4=Hateful Gladiator's Ringmail Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 41025, "", "=q4=Hateful Gladiator's Ringmail Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_1#", ""};
		{ 17, 41012, "", "=q4=Deadly Gladiator's Ringmail Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41037, "", "=q4=Deadly Gladiator's Ringmail Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40990, "", "=q4=Deadly Gladiator's Ringmail Armor", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41000, "", "=q4=Deadly Gladiator's Ringmail Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41026, "", "=q4=Deadly Gladiator's Ringmail Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Ringmail Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Ringmail Spaulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Ringmail Armor", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Ringmail Gauntlets", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Ringmail Leggings", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80Warlock"] = {
		{ 1, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", ""};
		{ 2, 41990, "", "=q3=Savage Gladiator's Felweave Cowl", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 42008, "", "=q3=Savage Gladiator's Felweave Amice", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 41996, "", "=q3=Savage Gladiator's Felweave Raiment", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 42014, "", "=q3=Savage Gladiator's Felweave Handguards", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 42002, "", "=q3=Savage Gladiator's Felweave Trousers", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", ""};
		{ 9, 41991, "", "=q4=Hateful Gladiator's Felweave Cowl", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 42009, "", "=q4=Hateful Gladiator's Felweave Amice", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 42001, "", "=q4=Hateful Gladiator's Felweave Raiment", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 42015, "", "=q4=Hateful Gladiator's Felweave Handguards", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 42003, "", "=q4=Hateful Gladiator's Felweave Trousers", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", ""};
		{ 17, 41992, "", "=q4=Deadly Gladiator's Felweave Cowl", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 42010, "", "=q4=Deadly Gladiator's Felweave Amice", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41997, "", "=q4=Deadly Gladiator's Felweave Raiment", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 42016, "", "=q4=Deadly Gladiator's Felweave Handguards", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 42004, "", "=q4=Deadly Gladiator's Felweave Trousers", "=ds=", "2250 #arena# #reqrating# 1910"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Felweave Cowl", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Felweave Amice", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Felweave Raiment", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Felweave Handguards", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Felweave Trousers", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

--These are datamined sets NOT available yet. LK Arena 6
	AtlasLoot_Data["PvP80Warlock2"] = {
		{ 8, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", ""};
		{ 9, 41995, "", "=q4=Gladiator's Felweave Cowl", "=ds="};
		{ 10, 42013, "", "=q4=Gladiator's Felweave Amice", "=ds="};
		{ 11, 42000, "", "=q4=Gladiator's Felweave Raiment", "=ds="};
		{ 12, 42019, "", "=q4=Gladiator's Felweave Handguards", "=ds="};
		{ 13, 42007, "", "=q4=Gladiator's Felweave Trousers", "=ds="};
	};

	AtlasLoot_Data["PvP80Warrior"] = {
		{ 1, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", ""};
		{ 2, 40816, "", "=q3=Savage Gladiator's Plate Helm", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 3, 40856, "", "=q3=Savage Gladiator's Plate Shoulders", "=ds=", "9600 #faction# 275 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 4, 40778, "", "=q3=Savage Gladiator's Plate Chestpiece", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 5, 40797, "", "=q3=Savage Gladiator's Plate Gauntlets", "=ds=", "7200 #faction# 200 #arena# ".."/".." 30 #eofheroism#".."/".." 50000 #faction#", ""};
		{ 6, 40836, "", "=q3=Savage Gladiator's Plate Legguards", "=ds=", "12000 #faction# 350 #arena# ".."/".." 45 #eofheroism#".."/".." 60000 #faction#", ""};
		{ 8, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", ""};
		{ 9, 40819, "", "=q4=Hateful Gladiator's Plate Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 ".."/".." 45 #eofvalor#"};
		{ 10, 40859, "", "=q4=Hateful Gladiator's Plate Shoulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 ".."/".." 30 #eofvalor#"};
		{ 11, 40783, "", "=q4=Hateful Gladiator's Plate Chestpiece", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 ".."/".." 45 #eofvalor#"};
		{ 12, 40801, "", "=q4=Hateful Gladiator's Plate Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 ".."/".." 30 #eofvalor#"};
		{ 13, 40840, "", "=q4=Hateful Gladiator's Plate Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 ".."/".." 45 #eofvalor#"};
		{ 16, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", ""};
		{ 17, 40823, "", "=q4=Deadly Gladiator's Plate Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 40862, "", "=q4=Deadly Gladiator's Plate Shoulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40786, "", "=q4=Deadly Gladiator's Plate Chestpiece", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 40804, "", "=q4=Deadly Gladiator's Plate Gauntlets", "=ds=", "1350 #arena#"};
		{ 21, 40844, "", "=q4=Deadly Gladiator's Plate Legguards", "=ds=", "2250 #arena#"};
		{ 23, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 24, 0, "", "=q4=Furious Gladiator's Plate Helm", "=ds="};
		{ 25, 0, "", "=q4=Furious Gladiator's Plate Shoulders", "=ds="};
		{ 26, 0, "", "=q4=Furious Gladiator's Plate Chestpiece", "=ds="};
		{ 27, 0, "", "=q4=Furious Gladiator's Plate Gauntlets", "=ds="};
		{ 28, 0, "", "=q4=Furious Gladiator's Plate Legguards", "=ds="};
		Back = "LEVEL80PVPSETS";
	};

		------------------------------
		--- Level 80 Epic Non-Sets ---
		------------------------------

	AtlasLoot_Data["PvP80NonSet1"] = {
		{ 1, 42057, "", "=q4=Hateful Gladiator's Cloak of Ascendancy", "=ds=", "38000 #faction#"};
		{ 2, 42059, "", "=q4=Hateful Gladiator's Cloak of Deliverance", "=ds=", "38000 #faction#"};
		{ 3, 42055, "", "=q4=Hateful Gladiator's Cloak of Dominance", "=ds=", "38000 #faction#"};
		{ 4, 42058, "", "=q4=Hateful Gladiator's Cloak of Salvation", "=ds=", "38000 #faction#"};
		{ 5, 42056, "", "=q4=Hateful Gladiator's Cloak of Subjugation", "=ds=", "38000 #faction#"};
		{ 6, 42060, "", "=q4=Hateful Gladiator's Cloak of Triumph", "=ds=", "38000 #faction#"};
		{ 7, 42061, "", "=q4=Hateful Gladiator's Cloak of Victory", "=ds=", "38000 #faction#"};
		{ 9, 42024, "", "=q4=Hateful Gladiator's Pendant of Ascendancy", "=ds=", "38000 #faction#"};
		{ 10, 42025, "", "=q4=Hateful Gladiator's Pendant of Deliverance", "=ds=", "38000 #faction#"};
		{ 11, 42022, "", "=q4=Hateful Gladiator's Pendant of Dominance", "=ds=", "38000 #faction#"};
		{ 12, 42026, "", "=q4=Hateful Gladiator's Pendant of Salvation", "=ds=", "38000 #faction#"};
		{ 13, 42023, "", "=q4=Hateful Gladiator's Pendant of Subjugation", "=ds=", "38000 #faction#"};
		{ 14, 42020, "", "=q4=Hateful Gladiator's Pendant of Triumph", "=ds=", "38000 #faction#"};
		{ 15, 42021, "", "=q4=Hateful Gladiator's Pendant of Victory", "=ds=", "38000 #faction#"};
		{ 16, 42110, "", "=q4=Hateful Gladiator's Band of Dominance", "=ds=", "38000 #faction#"};
		{ 17, 42112, "", "=q4=Hateful Gladiator's Band of Triumph", "=ds=", "38000 #faction#"};
		{ 19, 42123, "", "=q4=Medallion of the Alliance", "=ds=", "49600 #faction#"};
		{ 20, 42122, "", "=q4=Medallion of the Horde", "=ds=", "49600 #faction#"};
		Next = "PvP80NonSet2";
		Back = "PVP80NONSETEPICS";
	};

	AtlasLoot_Data["PvP80NonSet2"] = {
		{ 1, 42064, "", "=q4=Deadly Gladiator's Cloak of Ascendancy", "=ds=", "47400 #faction# #reqrating# 1750"};
		{ 2, 42066, "", "=q4=Deadly Gladiator's Cloak of Deliverance", "=ds=", "47400 #faction# #reqrating# 1750"};
		{ 3, 42062, "", "=q4=Deadly Gladiator's Cloak of Dominance", "=ds=", "47400 #faction# #reqrating# 1750"};
		{ 4, 42065, "", "=q4=Deadly Gladiator's Cloak of Salvation", "=ds=", "47400 #faction# #reqrating# 1750"};
		{ 5, 42063, "", "=q4=Deadly Gladiator's Cloak of Subjugation", "=ds=", "47400 #faction# #reqrating# 1750"};
		{ 6, 42067, "", "=q4=Deadly Gladiator's Cloak of Triumph", "=ds=", "47400 #faction# #reqrating# 1750"};
		{ 7, 42068, "", "=q4=Deadly Gladiator's Cloak of Victory", "=ds=", "47400 #faction# #reqrating# 1750"};
		{ 9, 42030, "", "=q4=Deadly Gladiator's Pendant of Ascendancy", "=ds=", "47400 #faction# #reqrating# 1600"};
		{ 10, 42032, "", "=q4=Deadly Gladiator's Pendant of Deliverance", "=ds=", "47400 #faction# #reqrating# 1600"};
		{ 11, 42029, "", "=q4=Deadly Gladiator's Pendant of Dominance", "=ds=", "47400 #faction# #reqrating# 1600"};
		{ 12, 42033, "", "=q4=Deadly Gladiator's Pendant of Salvation", "=ds=", "47400 #faction# #reqrating# 1600"};
		{ 13, 42031, "", "=q4=Deadly Gladiator's Pendant of Subjugation", "=ds=", "47400 #faction# #reqrating# 1600"};
		{ 14, 42027, "", "=q4=Deadly Gladiator's Pendant of Triumph", "=ds=", "47400 #faction# #reqrating# 1600"};
		{ 15, 42028, "", "=q4=Deadly Gladiator's Pendant of Victory", "=ds=", "47400 #faction# #reqrating# 1600"};
		{ 16, 42114, "", "=q4=Deadly Gladiator's Band of Ascendancy", "=ds=", "47400 #faction# #reqrating# 1690"};
		{ 17, 42115, "", "=q4=Deadly Gladiator's Band of Victory", "=ds=", "47400 #faction# #reqrating# 1690"};
		{ 19, 42129, "", "=q4=Battlemaster's Accuracy", "=ds=", "62000 #faction# #reqrating# 1800"};
		{ 20, 42130, "", "=q4=Battlemaster's Avidity", "=ds=", "62000 #faction# #reqrating# 1800"};
		{ 21, 42131, "", "=q4=Battlemaster's Bravery", "=ds=", "62000 #faction# #reqrating# 1800"};
		{ 22, 42132, "", "=q4=Battlemaster's Conviction", "=ds=", "62000 #faction# #reqrating# 1800"};
		{ 23, 42128, "", "=q4=Battlemaster's Hostility", "=ds=", "62000 #faction# #reqrating# 1800"};
		Next = "PvP80NonSet3";
		Prev = "PvP80NonSet1";
		Back = "PVP80NONSETEPICS";
	};

--Cloth
	AtlasLoot_Data["PvP80NonSet3"] = {
		{ 1, 41907, "", "=q4=Hateful Gladiator's Cuffs of Dominance", "=ds=", "31600 #faction#"};
		{ 2, 41896, "", "=q4=Hateful Gladiator's Cord of Dominance", "=ds=", "49600 #faction#"};
		{ 3, 41901, "", "=q4=Hateful Gladiator's Slippers of Dominance", "=ds=", "49600 #faction#"};
		{ 5, 41878, "", "=q4=Hateful Gladiator's Cuffs of Salvation", "=ds=", "31600 #faction#"};
		{ 6, 41877, "", "=q4=Hateful Gladiator's Cord of Salvation", "=ds=", "49600 #faction#"};
		{ 7, 41879, "", "=q4=Hateful Gladiator's Slippers of Salvation", "=ds=", "49600 #faction#"};
		{ 16, 41908, "", "=q4=Deadly Gladiator's Cuffs of Dominance", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 17, 41897, "", "=q4=Deadly Gladiator's Cord of Dominance", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 18, 41902, "", "=q4=Deadly Gladiator's Treads of Dominance", "=ds=", "62000 #faction# #reqrating# 1720"};
		{ 20, 41892, "", "=q4=Deadly Gladiator's Cuffs of Salvation", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 21, 41880, "", "=q4=Deadly Gladiator's Cord of Salvation", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 22, 41884, "", "=q4=Deadly Gladiator's Treads of Salvation", "=ds=", "62000 #faction# #reqrating# 1720"};
		Next = "PvP80NonSet4";
		Prev = "PvP80NonSet2";
		Back = "PVP80NONSETEPICS";
	};

--Leather
	AtlasLoot_Data["PvP80NonSet4"] = {
		{ 1, 41638, "", "=q4=Hateful Gladiator's Armwraps of Dominance", "=ds=", "31600 #faction#"};
		{ 2, 41628, "", "=q4=Hateful Gladiator's Belt of Dominance", "=ds=", "49600 #faction#"};
		{ 3, 41633, "", "=q4=Hateful Gladiator's Boots of Dominance", "=ds=", "49600 #faction#"};
		{ 5, 41332, "", "=q4=Hateful Gladiator's Armwraps of Salvation", "=ds=", "31600 #faction#"};
		{ 6, 41330, "", "=q4=Hateful Gladiator's Belt of Salvation", "=ds=", "49600 #faction#"};
		{ 7, 41331, "", "=q4=Hateful Gladiator's Boots of Salvation", "=ds=", "49600 #faction#"};
		{ 9, 41830, "", "=q4=Hateful Gladiator's Armwraps of Triumph", "=ds=", "31600 #faction#"};
		{ 10, 41827, "", "=q4=Hateful Gladiator's Belt of Triumph", "=ds=", "49600 #faction#"};
		{ 11, 41828, "", "=q4=Hateful Gladiator's Boots of Triumph", "=ds=", "49600 #faction#", ""};
		{ 16, 41639, "", "=q4=Deadly Gladiator's Armwraps of Dominance", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 17, 41629, "", "=q4=Deadly Gladiator's Belt of Dominance", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 18, 41634, "", "=q4=Deadly Gladiator's Boots of Dominance", "=ds=", "62000 #faction# #reqrating# 1720"};
		{ 20, 41624, "", "=q4=Deadly Gladiator's Armwraps of Salvation", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 21, 41616, "", "=q4=Deadly Gladiator's Belt of Salvation", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 22, 41620, "", "=q4=Deadly Gladiator's Boots of Salvation", "=ds=", "62000 #faction# #reqrating# 1720"};
		{ 24, 41839, "", "=q4=Deadly Gladiator's Armwraps of Triumph", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 25, 41831, "", "=q4=Deadly Gladiator's Belt of Triumph", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 26, 41835, "", "=q4=Deadly Gladiator's Boots of Triumph", "=ds=", "62000 #faction# #reqrating# 1720"};
		Next = "PvP80NonSet5";
		Prev = "PvP80NonSet3";
		Back = "PVP80NONSETEPICS";
	};

--Mail
	AtlasLoot_Data["PvP80NonSet5"] = {
		{ 1, 41063, "", "=q4=Hateful Gladiator's Wristguards of Dominance", "=ds=", "31600 #faction#"};
		{ 2, 41068, "", "=q4=Hateful Gladiator's Waistguard of Dominance", "=ds=", "49600 #faction#"};
		{ 3, 41073, "", "=q4=Hateful Gladiator's Sabatons of Dominance", "=ds=", "49600 #faction#"};
		{ 5, 41047, "", "=q4=Hateful Gladiator's Wristguards of Salvation", "=ds=", "31600 #faction#"};
		{ 6, 41050, "", "=q4=Hateful Gladiator's Waistguard of Salvation", "=ds=", "49600 #faction#"};
		{ 7, 41049, "", "=q4=Hateful Gladiator's Sabatons of Salvation", "=ds=", "49600 #faction#"};
		{ 9, 41223, "", "=q4=Hateful Gladiator's Wristguards of Triumph", "=ds=", "31600 #faction#"};
		{ 10, 41233, "", "=q4=Hateful Gladiator's Waistguard of Triumph", "=ds=", "49600 #faction#"};
		{ 11, 41228, "", "=q4=Hateful Gladiator's Sabatons of Triumph", "=ds=", "49600 #faction#"};
		{ 16, 41064, "", "=q4=Deadly Gladiator's Wristguards of Dominance", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 17, 41069, "", "=q4=Deadly Gladiator's Waistguard of Dominance", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 18, 41074, "", "=q4=Deadly Gladiator's Sabatons of Dominance", "=ds=", "62000 #faction# #reqrating# 1720"};
		{ 20, 41059, "", "=q4=Deadly Gladiator's Wristguards of Salvation", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 21, 41048, "", "=q4=Deadly Gladiator's Waistguard of Salvation", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 22, 41054, "", "=q4=Deadly Gladiator's Sabatons of Salvation", "=ds=", "62000 #faction# #reqrating# 1720"};
		{ 24, 41224, "", "=q4=Deadly Gladiator's Wristguards of Triumph", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 25, 41234, "", "=q4=Deadly Gladiator's Waistguard of Triumph", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 26, 41229, "", "=q4=Deadly Gladiator's Sabatons of Triumph", "=ds=", "62000 #faction# #reqrating# 1720"};
		Next = "PvP80NonSet6";
		Prev = "PvP80NonSet4";
		Back = "PVP80NONSETEPICS";
	};

--Plate
	AtlasLoot_Data["PvP80NonSet6"] = {
		{ 1, 40972, "", "=q4=Hateful Gladiator's Bracers of Salvation", "=ds=", "31600 #faction#"};
		{ 2, 40966, "", "=q4=Hateful Gladiator's Girdle of Salvation", "=ds=", "49600 #faction#"};
		{ 3, 40973, "", "=q4=Hateful Gladiator's Greaves of Salvation", "=ds=", "49600 #faction#"};
		{ 5, 40887, "", "=q4=Hateful Gladiator's Bracers of Triumph", "=ds=", "31600 #faction#"};
		{ 6, 40877, "", "=q4=Hateful Gladiator's Girdle of Triumph", "=ds=", "49600 #faction#"};
		{ 7, 40878, "", "=q4=Hateful Gladiator's Greaves of Triumph", "=ds=", "49600 #faction#"};
		{ 16, 40982, "", "=q4=Deadly Gladiator's Bracers of Salvation", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 17, 40974, "", "=q4=Deadly Gladiator's Girdle of Salvation", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 18, 40975, "", "=q4=Deadly Gladiator's Greaves of Salvation", "=ds=", "62000 #faction# #reqrating# 1720"};
		{ 20, 40888, "", "=q4=Deadly Gladiator's Bracers of Triumph", "=ds=", "39400 #faction# #reqrating# 1660"};
		{ 21, 40879, "", "=q4=Deadly Gladiator's Girdle of Triumph", "=ds=", "62000 #faction# #reqrating# 1630"};
		{ 22, 40880, "", "=q4=Deadly Gladiator's Greaves of Triumph", "=ds=", "62000 #faction# #reqrating# 1720"};
		Prev = "PvP80NonSet5";
		Back = "PVP80NONSETEPICS";
	};

		--------------------------------
		--- Savage Gladiator Weapons ---
		--------------------------------

	AtlasLoot_Data["PvP80Weapons1"] = {
		{ 1, 42294, "", "=q3=Savage Gladiator's Decapitator", "=ds=#h2#, #w1#", "0 #faction#", ""};
		{ 2, 42295, "", "=q3=Savage Gladiator's Bonegrinder", "=ds=#h2#, #w6#", "0 #faction#", ""};
		{ 3, 42297, "", "=q3=Savage Gladiator's Greatsword", "=ds=#h2#, #w10#", "0 #faction#", ""};
		{ 4, 42445, "", "=q3=Savage Gladiator's Longbow", "=ds=#w2#", "0 #faction#", ""};
		{ 5, 42343, "", "=q3=Savage Gladiator's Spellblade", "=ds=#h3#, #w10#", "0 #faction#", ""};
		{ 6, 42356, "", "=q3=Savage Gladiator's Battle Staff", "=ds=#w9#", "0 #faction#", ""};
		{ 7, 42448, "", "=q3=Savage Gladiator's Touch of Defeat", "=ds=#w12#", "0 #faction#", ""};
		{ 8, 42446, "", "=q3=Savage Gladiator's Heavy Crossbow", "=ds=#w3#", "0 #faction#", ""};
		{ 9, 42213, "", "=q3=Savage Gladiator's Hacker", "=ds=#h4#, #w1#", "0 #faction#", ""};
		{ 10, 42217, "", "=q3=Savage Gladiator's Shiv", "=ds=#h4#, #w4#", "0 #faction#", ""};
		{ 11, 42220, "", "=q3=Savage Gladiator's Left Ripper", "=ds=#h4#, #w13#", "0 #faction#", ""};
		{ 12, 42221, "", "=q3=Savage Gladiator's Bonecracker", "=ds=#h4#, #w6#", "0 #faction#", ""};
		{ 13, 42223, "", "=q3=Savage Gladiator's Quickblade", "=ds=#h4#, #w10#", "0 #faction#", ""};
		{ 14, 42447, "", "=q3=Savage Gladiator's Rifle", "=ds=#w5#", "0 #faction#", ""};
		{ 15, 42557, "", "=q3=Savage Gladiator's Barrier", "=ds=#w8#", "0 #faction#", ""};
		{ 16, 42568, "", "=q3=Savage Gladiator's Redoubt", "=ds=#w8#", "0 #faction#", ""};
		{ 17, 42344, "", "=q3=Savage Gladiator's Gavel", "=ds=#h3#, #w6#", "0 #faction#", ""};
		{ 18, 42296, "", "=q3=Savage Gladiator's Pike", "=ds=#h2#, #w7#", "0 #faction#", ""};
		{ 19, 42206, "", "=q3=Savage Gladiator's Cleaver", "=ds=#h1#, #w1#", "0 #faction#", ""};
		{ 20, 42216, "", "=q3=Savage Gladiator's Shanker", "=ds=#h1#, #w4#", "0 #faction#", ""};
		{ 21, 42222, "", "=q3=Savage Gladiator's Pummeler", "=ds=#h1#, #w6#", "0 #faction#", ""};
		{ 22, 42224, "", "=q3=Savage Gladiator's Slicer", "=ds=#h1#, #w10#", "0 #faction#", ""};
		{ 23, 42218, "", "=q3=Savage Gladiator's Right Ripper", "=ds=#h3#, #w13#", "0 #faction#", ""};
		{ 24, 42212, "", "=q3=Savage Gladiator's Chopper", "=ds=#h4#, #w1#", "0 #faction#", ""};
		{ 25, 42214, "", "=q3=Savage Gladiator's Waraxe", "=ds=#h4#, #w4#", "0 #faction#", ""};
		{ 26, 42219, "", "=q3=Savage Gladiator's Left Render", "=ds=#h4#, #w13#", "0 #faction#", ""};
		{ 27, 42517, "", "=q3=Savage Gladiator's Piercing Touch", "=ds=#w12#", "0 #faction#", ""};
		{ 28, 42511, "", "=q3=Savage Gladiator's Baton of Light", "=ds=#w12#", "0 #faction#", ""};
		{ 29, 42556, "", "=q3=Savage Gladiator's Shield Wall", "=ds=#w8#", "0 #faction#", ""};
		{ 30, 42444, "", "=q3=Savage Gladiator's War Edge", "=ds=#w11#", "0 #faction#", ""};
		Next = "PvP80Weapons2";
		Back = "LEVEL80PVPREWARDS";
	};

	AtlasLoot_Data["PvP80Weapons2"] = {
		{ 1, 42618, "", "=q3=Savage Gladiator's Sigil of Strife", "=ds=#s16#", "0 #faction#", ""};
		{ 2, 42574, "", "=q3=Savage Gladiator's Idol of Resolve", "=ds=#s16#", "0 #faction#", ""};
		{ 3, 42575, "", "=q3=Savage Gladiator's Idol of Steadfastness", "=ds=#s16#", "0 #faction#", ""};
		{ 4, 42576, "", "=q3=Savage Gladiator's Idol of Tenacity", "=ds=#s16#", "0 #faction#", ""};
		{ 5, 42612, "", "=q3=Savage Gladiator's Libram of Justice", "=ds=#s16#", "0 #faction#", ""};
		{ 6, 42611, "", "=q3=Savage Gladiator's Libram of Fortitude", "=ds=#s16#", "0 #faction#", ""};
		{ 7, 42595, "", "=q3=Savage Gladiator's Totem of the Third Wind", "=ds=#s16#", "0 #faction#", ""};
		{ 8, 42593, "", "=q3=Savage Gladiator's Totem of Indomitability", "=ds=#s16#", "0 #faction#", ""};
		{ 9, 42594, "", "=q3=Savage Gladiator's Totem of Survival", "=ds=#s16#", "0 #faction#", ""};
		Prev = "PvP80Weapons1";
		Back = "LEVEL80PVPREWARDS";
	};

		--------------------------------
		--- Deadly Gladiator Weapons ---
		--------------------------------

	AtlasLoot_Data["DeadlyGladiatorWeapons1"] = {
		{ 1, 42260, "", "=q4=Deadly Gladiator's Right Ripper", "=ds=", "3150 #arena# #reqrating# 2030"};
		{ 2, 42270, "", "=q4=Deadly Gladiator's Left Ripper", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 3, 42265, "", "=q4=Deadly Gladiator's Left Render", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 4, 42346, "", "=q4=Deadly Gladiator's Spellblade", "=ds=", "3150 #arena# #reqrating# 2030"};
		{ 5, 42255, "", "=q4=Deadly Gladiator's Mutilator", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 6, 42248, "", "=q4=Deadly Gladiator's Shiv", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 7, 42242, "", "=q4=Deadly Gladiator's Shanker", "=ds=", "3150 #arena# #reqrating# 2030"};
		{ 8, 42290, "", "=q4=Deadly Gladiator's Quickblade", "=ds=", "1200 #arena# #reqrating# 2030"};
		{ 9, 42285, "", "=q4=Deadly Gladiator's Slicer", "=ds=", "3150 #arena# #reqrating# 2030"};
		{ 10, 42332, "", "=q4=Deadly Gladiator's Greatsword", "=ds=", "4500 #arena# #reqrating# 2030"};
		{ 11, 42237, "", "=q4=Deadly Gladiator's Waraxe", "=ds=", "1200 #arena# #reqrating# 2030"};
		{ 12, 42208, "", "=q4=Deadly Gladiator's Cleaver", "=ds=", "3150 #arena# #reqrating# 2030"};
		{ 13, 42232, "", "=q4=Deadly Gladiator's Chopper", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 14, 42227, "", "=q4=Deadly Gladiator's Hacker", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 15, 42317, "", "=q4=Deadly Gladiator's Decapitator", "=ds=", "4500 #arena# #reqrating# 2030"};
		{ 16, 42352, "", "=q4=Deadly Gladiator's Gavel", "=ds=", "3150 #arena# #reqrating# 2030"};
		{ 17, 42280, "", "=q4=Deadly Gladiator's Bonecracker", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 18, 42275, "", "=q4=Deadly Gladiator's Pummeler", "=ds=", "3150 #arena# #reqrating# 2030"};
		{ 19, 42322, "", "=q4=Deadly Gladiator's Bonegrinder", "=ds=", "4500 #arena# #reqrating# 2030"};
		{ 20, 42327, "", "=q4=Deadly Gladiator's Pike", "=ds=", "4500 #arena# #reqrating# 2030"};
		{ 21, 42362, "", "=q4=Deadly Gladiator's Battle Staff", "4500 #arena# #reqrating# 2030"};
		{ 22, 42384, "", "=q4=Deadly Gladiator's Energy Staff", "4500 #arena# #reqrating# 2030"};
		{ 23, 44420, "", "=q4=Deadly Gladiator's Focus Staff", "4500 #arena# #reqrating# 2030"};
		{ 24, 44419, "", "=q4=Deadly Gladiator's War Staff", "4500 #arena# #reqrating# 2030"};
		Next = "DeadlyGladiatorWeapons2";
		Back = "LEVEL80PVPREWARDS";
	};

	AtlasLoot_Data["DeadlyGladiatorWeapons2"] = {
		{ 1, 42564, "", "=q4=Deadly Gladiator's Barrier", "=ds=", "2250 #arena# #reqrating# 2030"};
		{ 2, 42570, "", "=q4=Deadly Gladiator's Redoubt", "=ds=", "2250 #arena# #reqrating# 2030"};
		{ 3, 42559, "", "=q4=Deadly Gladiator's Shield Wall", "=ds=", "2250 #arena# #reqrating# 2030"};
		{ 4, 42450, "", "=q4=Deadly Gladiator's War Edge", "=ds=", "1200 #arena# #reqrating# 2030"};
		{ 5, 42490, "", "=q4=Deadly Gladiator's Longbow", "=ds=", "4500 #arena# #reqrating# 2030"};
		{ 6, 42495, "", "=q4=Deadly Gladiator's Heavy Crossbow", "=ds=", "4500 #arena# #reqrating# 2030"};
		{ 7, 42485, "", "=q4=Deadly Gladiator's Rifle", "=ds=", "4500 #arena# #reqrating# 2030"};
		{ 8, 42513, "", "=q4=Deadly Gladiator's Baton of Light", "=ds=", "1200 #arena# #reqrating# 2030"};
		{ 9, 42519, "", "=q4=Deadly Gladiator's Piercing Touch", "=ds=", "1200 #arena# #reqrating# 2030"};
		{ 10, 42502, "", "=q4=Deadly Gladiator's Touch of Defeat", "=ds=", "1200 #arena# #reqrating# 2030"};
		{ 11, 42525, "", "=q4=Deadly Gladiator's Endgame", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 12, 42537, "", "=q4=Deadly Gladiator's Grimoire", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 13, 42531, "", "=q4=Deadly Gladiator's Reprieve", "=ds=", "1350 #arena# #reqrating# 2030"};
		{ 16, 42588, "", "=q4=Deadly Gladiator's Idol of Resolve", "1200 #arena# #reqrating# 2030"};
		{ 17, 42583, "", "=q4=Deadly Gladiator's Idol of Steadfastness", "1200 #arena# #reqrating# 2030"};
		{ 18, 42578, "", "=q4=Deadly Gladiator's Idol of Tenacity", "1200 #arena# #reqrating# 2030"};
		{ 19, 42852, "", "=q4=Deadly Gladiator's Libram of Fortitude", "1200 #arena# #reqrating# 2030"};
		{ 20, 42614, "", "=q4=Deadly Gladiator's Libram of Justice", "1200 #arena# #reqrating# 2030"};
		{ 21, 42620, "", "=q4=Deadly Gladiator's Sigil of Strife", "=ds=", "1200 #arena# #reqrating# 2030"};
		{ 22, 42607, "", "=q4=Deadly Gladiator's Totem of Indomitability", "1200 #arena# #reqrating# 2030"};
		{ 23, 42602, "", "=q4=Deadly Gladiator's Totem of Survival", "1200 #arena# #reqrating# 2030"};
		{ 24, 42597, "", "=q4=Deadly Gladiator's Totem of the Third Wind", "1200 #arena# #reqrating# 2030"};
		Prev = "DeadlyGladiatorWeapons1";
		Back = "LEVEL80PVPREWARDS";
	};

		---------------------------------
		--- PvP Jewelcrafting Designs ---
		---------------------------------

	AtlasLoot_Data["PvP80Jewelcrafting"] = {
		{ 1, 41563, "", "=q2=Design: Durable Huge Citrine", "=ds=#p12# (350)", "1250 #faction#"};
		{ 2, 41564, "", "=q2=Design: Empowered Huge Citrine", "=ds=#p12# (350)", "1250 #faction#"};
		{ 3, 41565, "", "=q2=Design: Lucent Huge Citrine", "=ds=#p12# (350)", "1250 #faction#"};
		{ 4, 41575, "", "=q2=Design: Mysterious Shadow Crystal", "=ds=#p12# (350)", "1250 #faction#"};
		{ 5, 41559, "", "=q2=Design: Mystic Sun Crystal", "=ds=#p12# (350)", "1250 #faction#"};
		{ 6, 41573, "", "=q2=Design: Opaque Dark Jade", "=ds=#p12# (350)", "1250 #faction#"};
		{ 7, 41566, "", "=q2=Design: Resplendent Huge Citrine", "=ds=#p12# (350)", "1250 #faction#"};
		{ 8, 41569, "", "=q2=Design: Shattered Dark Jade", "=ds=#p12# (350)", "1250 #faction#"};
		{ 9, 41572, "", "=q2=Design: Steady Dark Jade", "=ds=#p12# (350)", "1250 #faction#"};
		{ 10, 41560, "", "=q2=Design: Stormy Chalcedony", "=ds=#p12# (350)", "1250 #faction#"};
		{ 11, 41570, "", "=q2=Design: Tense Dark Jade", "=ds=#p12# (350)", "1250 #faction#"};
		{ 12, 41571, "", "=q2=Design: Turbid Dark Jade", "=ds=#p12# (350)", "1250 #faction#"};
		Back = "LEVEL80PVPREWARDS";
	};

		--------------------------------
		--- World PvP - Wintergrasp  ---
		--------------------------------

	AtlasLoot_Data["LakeWintergrasp1"] = {
		{ 1, 44910, "", "=q4=Titan-forged Hood of Dominance", "=ds=#s1#, #a1#", "40 #wintergraspmark#" };
		{ 2, 44909, "", "=q4=Titan-forged Hood of Salvation", "=ds=#s1#, #a1#", "40 #wintergraspmark#" };
		{ 3, 44899, "", "=q4=Titan-forged Slippers of Dominance", "=ds=#s12#, #a1#", "15 #wintergraspmark#" };
		{ 4, 44900, "", "=q4=Titan-forged Slippers of Salvation", "=ds=#s12#, #a1#", "15 #wintergraspmark#" };
		{ 5, 44907, "", "=q4=Titan-forged Leather Helm of Dominance", "=ds=#s1#, #a2#", "40 #wintergraspmark#" };
		{ 6, 44906, "", "=q4=Titan-forged Leather Helm of Salvation", "=ds=#s1#, #a2#", "40 #wintergraspmark#" };
		{ 7, 44908, "", "=q4=Titan-forged Leather Helm of Triumph", "=ds=#s1#, #a2#", "40 #wintergraspmark#" };
		{ 8, 44891, "", "=q4=Titan-forged Boots of Dominance", "=ds=#s12#, #a2#", "15 #wintergraspmark#" };
		{ 9, 44892, "", "=q4=Titan-forged Boots of Salvation", "=ds=#s12#, #a2#", "15 #wintergraspmark#" };
		{ 10, 44893, "", "=q4=Titan-forged Boots of Triumph", "=ds=#s12#, #a2#", "15 #wintergraspmark#" };
		{ 11, 44914, "", "=q4=Anvil of Titans", "=ds=#s14#", "25 #wintergraspmark#" };
		{ 12, 44912, "", "=q4=Flow of Knowledge", "=ds=#s14#", "25 #wintergraspmark#" };
		{ 14, 43956, "", "=q4=Reins of the Black War Mammoth", "=ds=#e12#", "300 #wintergrasp#"};
		{ 15, 44077, "", "=q4=Reins of the Black War Mammoth", "=ds=#e12#", "300 #wintergrasp#"};
		{ 16, 44903, "", "=q4=Titan-forged Chain Helm of Triumph", "=ds=#s1#, #a3#", "40 #wintergraspmark#" };
		{ 17, 44904, "", "=q4=Titan-forged Mail Helm of Dominance", "=ds=#s1#, #a3#", "40 #wintergraspmark#" };
		{ 18, 44905, "", "=q4=Titan-forged Ringmail Helm of Salvation", "=ds=#s1#, #a3#", "40 #wintergraspmark#" };
		{ 19, 44896, "", "=q4=Titan-forged Sabatons of Dominance", "=ds=#s12#, #a3#", "15 #wintergraspmark#" };
		{ 20, 44897, "", "=q4=Titan-forged Sabatons of Salvation", "=ds=#s12#, #a3#", "15 #wintergraspmark#" };
		{ 21, 44898, "", "=q4=Titan-forged Sabatons of Triumph", "=ds=#s12#, #a3#", "15 #wintergraspmark#" };
		{ 22, 44901, "", "=q4=Titan-forged Plate Headcover of Salvation", "=ds=#s1#, #a4#", "40 #wintergraspmark#" };
		{ 23, 44902, "", "=q4=Titan-forged Plate Helm of Triumph", "=ds=#s12#, #a4#", "40 #wintergraspmark#" };
		{ 24, 44894, "", "=q4=Titan-forged Greaves of Salvation", "=ds=#s12#, #a4#", "15 #wintergraspmark#" };
		{ 25, 44895, "", "=q4=Titan-forged Greaves of Triumph", "=ds=#s12#, #a4#", "15 #wintergraspmark#" };
		{ 27, 44075, "", "=q3=Arcanum of Dominance", "=ds=#s1# #e17#", "40 #wintergrasp#"};
		{ 28, 44069, "", "=q3=Arcanum of Triumph", "=ds=#s1# #e17#", "40 #wintergrasp#"};
		{ 29, 44068, "", "=q3=Inscription of Dominance", "=ds=#s3# #e17#", "30 #wintergrasp#"};
		{ 30, 44067, "", "=q3=Inscription of Triumph", "=ds=#s3# #e17#", "30 #wintergrasp#"};
		Next = "LakeWintergrasp2";
	};

	AtlasLoot_Data["LakeWintergrasp2"] = {
		{ 1, 44066, "", "=q4=Kharmaa's Grace", "=ds=#e7#", "20 #wintergrasp#"};
		{ 2, 44081, "", "=q3=Enigmatic Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 3, 44084, "", "=q3=Forlorn Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 4, 44082, "", "=q3=Impassive Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 5, 44076, "", "=q3=Swift Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 6, 44078, "", "=q3=Swift Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 7, 44087, "", "=q3=Persistent Earthshatter Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 8, 44088, "", "=q3=Powerful Earthshatter Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 9, 44089, "", "=q3=Trenchant Earthshatter Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 16, 41730, "", "=q3=Design: Durable Monarch Topaz", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 17, 41732, "", "=q3=Design: Empowered Monarch Topaz", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 18, 41733, "", "=q3=Design: Lucent Monarch Topaz", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 19, 41735, "", "=q3=Design: Shattered Forest Emerald", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 20, 41739, "", "=q3=Design: Opaque Forest Emerald", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 21, 41736, "", "=q3=Design: Tense Forest Emerald", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 22, 41738, "", "=q3=Design: Steady Forest Emerald", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 23, 41734, "", "=q3=Design: Resplendent Monarch Topaz", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 24, 41727, "", "=q3=Design: Mystic Autumn's Glow", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 25, 41740, "", "=q3=Design: Mysterious Twilight Opal", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 26, 41728, "", "=q3=Design: Stormy Sky Sapphire", "=ds=#p12# (390)", "12 #wintergrasp#"};
		{ 27, 41742, "", "=q3=Design: Enigmatic Skyflare Diamond", "=ds=#p12# (420)", "24 #wintergrasp#"};
		{ 28, 41743, "", "=q3=Design: Forlorn Skyflare Diamond", "=ds=#p12# (420)", "24 #wintergrasp#"};
		{ 29, 41744, "", "=q3=Design: Impassive Skyflare Diamond", "=ds=#p12# (420)", "24 #wintergrasp#"};
		Next = "LakeWintergrasp3";
		Prev = "LakeWintergrasp1";
		Back = "PVPMENU";
	};

	AtlasLoot_Data["LakeWintergrasp3"] = {
		{ 1, 44107, "", "=q7=Exquisite Sunderseer Mantle", "=ds=#s3#, #a1#", "200 #wintergrasp#"};
		{ 2, 44103, "", "=q7=Exceptional Stormshroud Shoulders", "=ds=#s3#, #a2#", "200 #wintergrasp#"};
		{ 3, 44105, "", "=q7=Lasting Feralheart Spaulders", "=ds=#s3#, #a2#", "200 #wintergrasp#"};
		{ 4, 44102, "", "=q7=Aged Pauldrons of The Five Thunders", "=ds=#s3#, #a3#", "200 #wintergrasp#"};
		{ 5, 44101, "", "=q7=Prized Beastmaster's Mantle", "=ds=#s3#, #a3#", "200 #wintergrasp#"};
		{ 6, 44100, "", "=q7=Pristine Lightforge Spaulders", "=ds=#s3#, #a4#", "200 #wintergrasp#"};
		{ 7, 44099, "", "=q7=Strengthened Stockade Pauldrons", "=ds=#s3#, #a4#", "200 #wintergrasp#"};
		{ 8, 44098, "", "=q7=Inherited Insignia of the Alliance", "=ds=#s14#", "250 #wintergrasp#"};
		{ 9, 44097, "", "=q7=Inherited Insignia of the Horde", "=ds=#s14#", "250 #wintergrasp#"};
		{ 10, 44091, "", "=q7=Sharpened Scarlet Kris", "=ds=#h1#, #w4#", "200 #wintergrasp#"};
		{ 11, 44096, "", "=q7=Battleworn Thrash Blade", "=ds=#h1#, #w10#", "200 #wintergrasp#"};
		{ 12, 44092, "", "=q7=Reforged Truesilver Champion", "=ds=#h2#, #w10#", "325 #wintergrasp#"};
		{ 13, 44094, "", "=q7=The Blessed Hammer of Grace", "=ds=#h3#, #w6#", "250 #wintergrasp#"};
		{ 14, 44095, "", "=q7=Grand Staff of Jordan", "=ds=#w9#", "325 #wintergrasp#"};
		{ 15, 44093, "", "=q7=Upgraded Dwarven Hand Cannon", "=ds=#w5#", "325 #wintergrasp#"};
		{ 16, 44115, "", "=q7=Wintergrasp Commendation", "=ds=", "30 #wintergrasp#"};
		Prev = "LakeWintergrasp2";
		Back = "PVPMENU";
	};

		-----------------------------------------------
		--- World PvP - Grizzly Hills: Venture Bay  ---
		-----------------------------------------------

	AtlasLoot_Data["VentureBay1"] = {
		{ 1, 38354, "", "=q3=Oil-Stained Tarp", "=ds=#s4#", "50 #venturecoin#"};
		{ 2, 38355, "", "=q3=Thick Goblin Back Protector ", "=ds=#s4#", "50 #venturecoin#"};
		{ 3, 38353, "", "=q3=Venture Bay Buccaneer's Cape", "=ds=#s4#", "50 #venturecoin#"};
		{ 4, 38358, "", "=q3=Arcane Revitalizer", "=ds=#s14#", "70 #venturecoin#"};
		{ 5, 38359, "", "=q3=Goblin Repetition Reducer", "=ds=#s14#", "70 #venturecoin#"};
		{ 6, 38357, "", "=q3=Sharpened Throwing Gizmo", "=ds=#w11#", "30 #venturecoin#"};
		{ 7, 38356, "", "=q3=Venture Battle Wand", "=ds=#w12#", "30 #venturecoin#"};
		{ 8, 38360, "", "=q3=Idol of Arcane Terror", "=ds=#w14#", "30 #venturecoin#"};
		{ 9, 38365, "", "=q3=Idol of Perspicacious Attacks", "=ds=#w14#", "30 #venturecoin#"};
		{ 10, 38366, "", "=q3=Idol of Pure Thoughts", "=ds=#w14#", "30 #venturecoin#"};
		{ 11, 38364, "", "=q3=Venture Co. Libram of Mostly Holy Deeds", "=ds=#w16#", "30 #venturecoin#"};
		{ 12, 38363, "", "=q3=Venture Co. Libram of Protection", "=ds=#w16#", "30 #venturecoin#"};
		{ 13, 38362, "", "=q3=Venture Co. Libram of Retribution", "=ds=#w16#", "30 #venturecoin#"};
		{ 15, 37836, "", "=q1=Venture Coin", "=ds=#m17#"};
		{ 16, 38368, "", "=q3=Totem of the Bay", "=ds=#w15#", "30 #venturecoin#"};
		{ 17, 38367, "", "=q3=Venture Co. Flame Slicer", "=ds=#w15#", "30 #venturecoin#"};
		{ 18, 38361, "", "=q3=Venture Co. Lightning Rod", "=ds=#w15#", "30 #venturecoin#"};
		{ 19, 40875, "", "=q3=Sigil of Arthritic Binding", "=ds=#w21#", "30 #venturecoin#"};
		{ 20, 40822, "", "=q3=Sigil of the Frozen Conscience", "=ds=#w21#", "30 #venturecoin#"};
		{ 21, 40867, "", "=q3=Sigil of the Wild Buck", "=ds=#w21#", "30 #venturecoin#"};
		Back = "PVPMENU";
	};

	--------------------------
	--- Sets & Collections ---
	--------------------------

		-------------------------------------
		--- Naxxramas 10/25 Man Sets (T7) ---
		-------------------------------------

	AtlasLoot_Data["NaxxDeathKnightDPS"] = {
		{ 1, 0, "Spell_Deathknight_DeathStrike", "=q6=#t7s10_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39619, "", "=q4=Heroes' Scourgeborne Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39621, "", "=q4=Heroes' Scourgeborne Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39617, "", "=q4=Heroes' Scourgeborne Battleplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39618, "", "=q4=Heroes' Scourgeborne Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39620, "", "=q4=Heroes' Scourgeborne Legplates", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Deathknight_DeathStrike", "=q6=#t7s10_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40554, "", "=q4=Valorous Scourgeborne Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40557, "", "=q4=Valorous Scourgeborne Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40550, "", "=q4=Valorous Scourgeborne Battleplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40552, "", "=q4=Valorous Scourgeborne Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40556, "", "=q4=Valorous Scourgeborne Legplates", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxDeathKnightTank"] = {
		{ 1, 0, "Spell_Deathknight_DeathStrike", "=q6=#t7s10_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39625, "", "=q4=Heroes' Scourgeborne Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39627, "", "=q4=Heroes' Scourgeborne Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39623, "", "=q4=Heroes' Scourgeborne Chestguard", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39624, "", "=q4=Heroes' Scourgeborne Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39626, "", "=q4=Heroes' Scourgeborne Legguards", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Deathknight_DeathStrike", "=q6=#t7s10_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40565, "", "=q4=Valorous Scourgeborne Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40568, "", "=q4=Valorous Scourgeborne Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40559, "", "=q4=Valorous Scourgeborne Chestguard", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40563, "", "=q4=Valorous Scourgeborne Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40567, "", "=q4=Valorous Scourgeborne Legguards", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxDruidFeral"] = {
		{ 1, 0, "Ability_Druid_Maul", "=q6=#t7s1_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39553, "", "=q4=Heroes' Dreamwalker Headguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39556, "", "=q4=Heroes' Dreamwalker Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39554, "", "=q4=Heroes' Dreamwalker Raiments", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39557, "", "=q4=Heroes' Dreamwalker Handgrips", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39555, "", "=q4=Heroes' Dreamwalker Legguards", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Ability_Druid_Maul", "=q6=#t7s1_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40473, "", "=q4=Valorous Dreamwalker Headguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40494, "", "=q4=Valorous Dreamwalker Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40471, "", "=q4=Valorous Dreamwalker Raiments", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40472, "", "=q4=Valorous Dreamwalker Handgrips", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40493, "", "=q4=Valorous Dreamwalker Legguards", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxDruidRestoration"] = {
		{ 1, 0, "Spell_Nature_Regeneration", "=q6=#t7s1_3#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39531, "", "=q4=Heroes' Dreamwalker Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39542, "", "=q4=Heroes' Dreamwalker Spaulders", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39538, "", "=q4=Heroes' Dreamwalker Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39543, "", "=q4=Heroes' Dreamwalker Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39539, "", "=q4=Heroes' Dreamwalker Leggings", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Nature_Regeneration", "=q6=#t7s1_3#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40461, "", "=q4=Valorous Dreamwalker Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40465, "", "=q4=Valorous Dreamwalker Spaulders", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40463, "", "=q4=Valorous Dreamwalker Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40460, "", "=q4=Valorous Dreamwalker Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40462, "", "=q4=Valorous Dreamwalker Leggings", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxDruidBalance"] = {
		{ 1, 0, "Spell_Nature_InsectSwarm", "=q6=#t7s1_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39545, "", "=q4=Heroes' Dreamwalker Cover", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39548, "", "=q4=Heroes' Dreamwalker Mantle", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39547, "", "=q4=Heroes' Dreamwalker Vestments", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39544, "", "=q4=Heroes' Dreamwalker Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39546, "", "=q4=Heroes' Dreamwalker Cover", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Nature_InsectSwarm", "=q6=#t7s1_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40467, "", "=q4=Valorous Dreamwalker Cover", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40470, "", "=q4=Valorous Dreamwalker Mantle", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40469, "", "=q4=Valorous Dreamwalker Vestments", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40466, "", "=q4=Valorous Dreamwalker Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40468, "", "=q4=Valorous Dreamwalker Trousers", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxHunter"] = {
		{ 1, 0, "Ability_Hunter_RunningShot", "=q6=#t7s2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39578, "", "=q4=Heroes' Crypstalker Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39581, "", "=q4=Heroes' Crypstalker Spaulders", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39579, "", "=q4=Heroes' Crypstalker Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39582, "", "=q4=Heroes' Crypstalker Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39580, "", "=q4=Heroes' Crypstalker Legguards", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Ability_Hunter_RunningShot", "=q6=#t7s2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40505, "", "=q4=Valorous Crypstalker Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40507, "", "=q4=Valorous Crypstalker Spaulders", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40503, "", "=q4=Valorous Crypstalker Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40504, "", "=q4=Valorous Crypstalker Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40506, "", "=q4=Valorous Crypstalker Legguards", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxMage"] = {
		{ 1, 0, "Spell_Frost_IceStorm", "=q6=#t7s3#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39491, "", "=q4=Heroes' Frostfire Circlet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39494, "", "=q4=Heroes' Frostfire Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39492, "", "=q4=Heroes' Frostfire Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39495, "", "=q4=Heroes' Frostfire Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39493, "", "=q4=Heroes' Frostfire Leggings", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Frost_IceStorm", "=q6=#t7s3#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40416, "", "=q4=Valorous Frostfire Circlet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40419, "", "=q4=Valorous Frostfire Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40418, "", "=q4=Valorous Frostfire Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40415, "", "=q4=Valorous Frostfire Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40417, "", "=q4=Valorous Frostfire Leggings", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPaladinHoly"] = {
		{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#t7s4_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39628, "", "=q4=Heroes' Redemption Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39631, "", "=q4=Heroes' Redemption Spaulders", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39629, "", "=q4=Heroes' Redemption Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39632, "", "=q4=Heroes' Redemption Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39630, "", "=q4=Heroes' Redemption Greaves", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#t7s4_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40571, "", "=q4=Valorous Redemption Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40573, "", "=q4=Valorous Redemption Spaulders", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40569, "", "=q4=Valorous Redemption Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40570, "", "=q4=Valorous Redemption Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40572, "", "=q4=Valorous Redemption Greaves", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPaladinRetribution"] = {
		{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#t7s4_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39635, "", "=q4=Heroes' Redemption Helm", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39637, "", "=q4=Heroes' Redemption Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39633, "", "=q4=Heroes' Redemption Chestpiece", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39634, "", "=q4=Heroes' Redemption Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39636, "", "=q4=Heroes' Redemption Legplates", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#t7s4_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40576, "", "=q4=Valorous Redemption Helm", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40578, "", "=q4=Valorous Redemption Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40574, "", "=q4=Valorous Redemption Chestpiece", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40575, "", "=q4=Valorous Redemption Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40577, "", "=q4=Valorous Redemption Legplates", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPaladinProtection"] = {
		{ 1, 0, "Spell_Holy_SealOfMight", "=q6=#t7s4_3#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39640, "", "=q4=Heroes' Redemption Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39642, "", "=q4=Heroes' Redemption Shouldergards", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39638, "", "=q4=Heroes' Redemption Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39639, "", "=q4=Heroes' Redemption Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39641, "", "=q4=Heroes' Redemption Legguards", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Holy_SealOfMight", "=q6=#t7s4_3#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40581, "", "=q4=Valorous Redemption Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40584, "", "=q4=Valorous Redemption Shouldergards", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40579, "", "=q4=Valorous Redemption Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40580, "", "=q4=Valorous Redemption Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40583, "", "=q4=Valorous Redemption Legguards", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPriestShadow"] = {
		{ 1, 0, "Spell_Shadow_AntiShadow", "=q6=#t7s5_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39521, "", "=q4=Heroes' Circlet of Faith", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39529, "", "=q4=Heroes' Mantle of Faith", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39523, "", "=q4=Heroes' Raiments of Faith", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39530, "", "=q4=Heroes' Handwraps of Faith", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39528, "", "=q4=Heroes' Pants of Faith", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Shadow_AntiShadow", "=q6=#t7s5_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40456, "", "=q4=Valorous Circlet of Faith", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40459, "", "=q4=Valorous Mantle of Faith", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40458, "", "=q4=Valorous Raiments of Faith", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40454, "", "=q4=Valorous Handwraps of Faith", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40457, "", "=q4=Valorous Pants of Faith", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPriestHoly"] = {
		{ 1, 0, "Spell_Holy_PowerWordShield", "=q6=#t7s5_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39514, "", "=q4=Heroes' Crown of Faith", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39518, "", "=q4=Heroes' Shoulderpads of Faith", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39515, "", "=q4=Heroes' Robe of Faith", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39519, "", "=q4=Heroes' Gloves of Faith", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39517, "", "=q4=Heroes' Leggings of Faith", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Holy_PowerWordShield", "=q6=#t7s5_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40447, "", "=q4=Valorous Crown of Faith", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40450, "", "=q4=Valorous Shoulderpads of Faith", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40449, "", "=q4=Valorous Robe of Faith", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40445, "", "=q4=Valorous Gloves of Faith", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40448, "", "=q4=Valorous Leggings of Faith", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxRogue"] = {
		{ 1, 0, "Ability_BackStab", "=q6=#t7s6#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39561, "", "=q4=Heroes' Bonescythe Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39565, "", "=q4=Heroes' Bonescythe Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39558, "", "=q4=Heroes' Bonescythe Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39560, "", "=q4=Heroes' Bonescythe Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39564, "", "=q4=Heroes' Bonescythe Legplates", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Ability_BackStab", "=q6=#t7s6#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40499, "", "=q4=Valorous Bonescythe Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40502, "", "=q4=Valorous Bonescythe Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40495, "", "=q4=Valorous Bonescythe Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40496, "", "=q4=Valorous Bonescythe Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40500, "", "=q4=Valorous Bonescythe Legplates", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxShamanRestoration"] = {
		{ 1, 0, "Spell_Nature_HealingWaveGreater", "=q6=#t7s7_3#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39583, "", "=q4=Heroes' Earthshatter Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39590, "", "=q4=Heroes' Earthshatter Spaulders", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39588, "", "=q4=Heroes' Earthshatter Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39591, "", "=q4=Heroes' Earthshatter Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39589, "", "=q4=Heroes' Earthshatter Legguards", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Nature_HealingWaveGreater", "=q6=#t7s7_3#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40510, "", "=q4=Valorous Earthshatter Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40513, "", "=q4=Valorous Earthshatter Spaulders", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40508, "", "=q4=Valorous Earthshatter Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40509, "", "=q4=Valorous Earthshatter Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40512, "", "=q4=Valorous Earthshatter Legguards", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxShamanEnhancement"] = {
		{ 1, 0, "Spell_FireResistanceTotem_01", "=q6=#t7s7_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39602, "", "=q4=Heroes' Earthshatter Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39604, "", "=q4=Heroes' Earthshatter Shoulderguards", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39597, "", "=q4=Heroes' Earthshatter Chestguard", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39601, "", "=q4=Heroes' Earthshatter Grips", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39603, "", "=q4=Heroes' Earthshatter War-Kilt", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_FireResistanceTotem_01", "=q6=#t7s7_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40521, "", "=q4=Valorous Earthshatter Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40524, "", "=q4=Valorous Earthshatter Shoulderguards", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40523, "", "=q4=Valorous Earthshatter Chestguard", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40520, "", "=q4=Valorous Earthshatter Grips", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40522, "", "=q4=Valorous Earthshatter War-Kilt", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxShamanElemental"] = {
		{ 1, 0, "Spell_Nature_Lightning", "=q6=#t7s7_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39594, "", "=q4=Heroes' Earthshatter Helm", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39596, "", "=q4=Heroes' Earthshatter Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39592, "", "=q4=Heroes' Earthshatter Hauberk", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39593, "", "=q4=Heroes' Earthshatter Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39595, "", "=q4=Heroes' Earthshatter Kilt", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Nature_Lightning", "=q6=#t7s7_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40516, "", "=q4=Valorous Earthshatter Helm", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40518, "", "=q4=Valorous Earthshatter Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40514, "", "=q4=Valorous Earthshatter Hauberk", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40515, "", "=q4=Valorous Earthshatter Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40517, "", "=q4=Valorous Earthshatter Kilt", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxWarlock"] = {
		{ 1, 0, "Spell_Shadow_CurseOfTounges", "=q6=#t7s8#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39496, "", "=q4=Heroes' Plagueheart Circlet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39499, "", "=q4=Heroes' Plagueheart Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39497, "", "=q4=Heroes' Plagueheart Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39500, "", "=q4=Heroes' Plagueheart Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39498, "", "=q4=Heroes' Plagueheart Leggings", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Spell_Shadow_CurseOfTounges", "=q6=#t7s8#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40421, "", "=q4=Valorous Plagueheart Circlet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40424, "", "=q4=Valorous Plagueheart Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40423, "", "=q4=Valorous Plagueheart Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40420, "", "=q4=Valorous Plagueheart Gloves", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40422, "", "=q4=Valorous Plagueheart Leggings", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxWarriorFury"] = {
		{ 1, 0, "Ability_Warrior_BattleShout", "=q6=#t7s9_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39605, "", "=q4=Heroes' Dreadnaught Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39608, "", "=q4=Heroes' Dreadnaught Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39606, "", "=q4=Heroes' Dreadnaught Battleplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39609, "", "=q4=Heroes' Dreadnaught Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39607, "", "=q4=Heroes' Dreadnaught Legplates", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "Ability_Warrior_BattleShout", "=q6=#t7s9_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40528, "", "=q4=Valorous Dreadnaught Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40530, "", "=q4=Valorous Dreadnaught Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40525, "", "=q4=Valorous Dreadnaught Battleplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40527, "", "=q4=Valorous Dreadnaught Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40529, "", "=q4=Valorous Dreadnaught Legplates", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

	AtlasLoot_Data["NaxxWarriorProtection"] = {
		{ 1, 0, "INV_Shield_05", "=q6=#t7s9_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
		{ 2, 39610, "", "=q4=Heroes' Dreadnaught Greathelm", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 3, 39613, "", "=q4=Heroes' Dreadnaught Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
		{ 4, 39611, "", "=q4=Heroes' Dreadnaught Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 5, 39622, "", "=q4=Heroes' Dreadnaught Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 6, 39612, "", "=q4=Heroes' Dreadnaught Legguards", "=ds="..BabbleBoss["Thaddius"]};
		{ 8, 0, "INV_Shield_05", "=q6=#t7s9_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
		{ 9, 40546, "", "=q4=Valorous Dreadnaught Greathelm", "=ds="..BabbleBoss["Kel'Thuzad"]};
		{ 10, 40548, "", "=q4=Valorous Dreadnaught Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
		{ 11, 40544, "", "=q4=Valorous Dreadnaught Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
		{ 12, 40545, "", "=q4=Valorous Dreadnaught Handguards", "=ds="..BabbleBoss["Sartharion"]};
		{ 13, 40547, "", "=q4=Valorous Dreadnaught Legguards", "=ds="..BabbleBoss["Thaddius"]};
		Back = "T7SET";
	};

		-----------------------------------
		--- Wrath Of The Lich King Sets ---
		-----------------------------------

	AtlasLoot_Data["WOTLKSets"] = {
		{ 1, 0, "INV_Box_01", "=q6=#wotlk1#", "=q1=#z17#"};
		{ 2, 37758, "", "=q3=Raine's Choker of Combustion", "=ds=#s2#"};
		{ 3, 37821, "", "=q3=Raine's Signet of Blasting", "=ds=#s13#"};
		Back = "SETSBURNINGCURSADE";
	};

		-------------------
		--- Legendaries ---
		-------------------

	AtlasLoot_Data["Legendaries"] = {
		{ 1, 34334, "", "=q5=Thori'dal, the Stars' Fury", "=ds=#w2#"};
		{ 3, 32837, "", "=q5=Warglaive of Azzinoth", "=ds=#h3#, #w10#, =q1=#m1# =ds=#c9#, #c6#"};
		{ 4, 32838, "", "=q5=Warglaive of Azzinoth", "=ds=#h4#, #w10#, =q1=#m1# =ds=#c9#, #c6#"};
		{ 6, 30312, "", "=q5=Infinity Blade", "=q1=#m26#: =ds=#h1#, #w4#"};
		{ 7, 30311, "", "=q5=Warp Slicer", "=q1=#m26#: =ds=#h1#, #w10#"};
		{ 8, 30317, "", "=q5=Cosmic Infuser", "=q1=#m26#: =ds=#h3#, #w6#"};
		{ 9, 30316, "", "=q5=Devastation", "=q1=#m26#: =ds=#h2#, #w1#"};
		{ 10, 30313, "", "=q5=Staff of Disintegration", "=q1=#m26#: =ds=#w9#"};
		{ 11, 30314, "", "=q5=Phaseshift Bulwark", "=q1=#m26#: =ds=#w8#"};
		{ 12, 30318, "", "=q5=Netherstrand Longbow", "=q1=#m26#: =ds=#w2#, =q1=#m1# =ds=#c2#"};
		{ 13, 30319, "", "=q5=Nether Spike", "=q1=#m26#: =ds=#w17#"};
		{ 16, 22736, "", "=q5=Andonisus, Reaper of Souls", "=q1=#m26#: =ds=#h3#, #w10#"};
		{ 17, 19019, "", "=q5=Thunderfury, Blessed Blade of the Windseeker", "=ds=#h1#, #w10#"};
		{ 18, 17182, "", "=q5=Sulfuras, Hand of Ragnaros", "=ds=#h2#, #w6#"};
		{ 19, 21176, "", "=q5=Black Qiraji Resonating Crystal", "=ds=#e12#"};
		{ 21, 22632, "", "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#w9#, =q1=#m1# =ds=#c1#"};
		{ 22, 22589, "", "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#w9#, =q1=#m1# =ds=#c3#"};
		{ 23, 22631, "", "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#w9#, =q1=#m1# =ds=#c5#"};
		{ 24, 22630, "", "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#w9#, =q1=#m1# =ds=#c8#"};
		Back = "SETMENU";
	};

		---------------
		--- Tabards ---
		---------------

	AtlasLoot_Data["Tabards3"] = {
		{ 1, 38312, "", "=q4=Tabard of Brilliance", "=ds=#s7#, =q1=#m24#"};
		{ 2, 23705, "", "=q4=Tabard of Flame", "=ds=#s7#, =q1=#m24#"};
		{ 3, 23709, "", "=q4=Tabard of Frost", "=ds=#s7#, =q1=#m24#"};
		{ 4, 38313, "", "=q4=Tabard of Fury", "=ds=#s7#, =q1=#m24#"};
		{ 5, 38309, "", "=q4=Tabard of Nature", "=ds=#s7#, =q1=#m24#"};
		{ 6, 38310, "", "=q4=Tabard of the Arcane", "=ds=#s7#, =q1=#m24#"};
		{ 7, 38314, "", "=q4=Tabard of the Defender", "=ds=#s7#, =q1=#m24#"};
		{ 8, 38311, "", "=q4=Tabard of the Void", "=ds=#s7#, =q1=#m24#"};
		{ 9, 43348, "", "=q4=Tabard of the Explorer", "=ds=#m34# #m33#"};
		{ 10, 40643, "", "=q4=Tabard of the Achiever", "=ds=#m34# #m33#"};
		{ 11, 43300, "", "=q4=Loremaster's Colors", "=ds=#m34# #m33#"};
		{ 16, 43154, "", "=q1=Tabard of the Argent Crusade", "=ds=#s7#"};
		{ 17, 43157, "", "=q1=Tabard of the Kirin Tor", "=ds=#s7#"};
		{ 18, 43155, "", "=q1=Tabard of the Ebon Blade", "=ds=#s7#"};
		{ 19, 43156, "", "=q1=Tabard of the Wyrmrest Accord", "=ds=#s7#"};
		{ 21, 45579, "", "=q1=Darnassus Tabard", "=ds=#s7#"};
		{ 22, 45580, "", "=q1=Exodar Tabard", "=ds=#s7#"};
		{ 23, 45578, "", "=q1=Gnomeregan Tabard", "=ds=#s7#"};
		{ 24, 45577, "", "=q1=Ironforge Tabard", "=ds=#s7#"};
		{ 25, 45574, "", "=q1=Stormwind Tabard", "=ds=#s7#"};
		{ 26, 0, "", "=q1=Orgrimmar Tabard", "=ds=#s7#"};
		{ 27, 0, "", "=q1=Undercity Tabard", "=ds=#s7#"};
		{ 28, 0, "", "=q1=Thunder Bluff Tabard", "=ds=#s7#"};
		{ 29, 0, "", "=q1=Sen'Jin Tabard", "=ds=#s7#"};
		{ 30, 0, "", "=q1=Silvermoon Tabard", "=ds=#s7#"};
		Next = "Tabards2";
		Back = "SETMENU";
	};

	AtlasLoot_Data["Tabards2"] = {
		{ 1, 31779, "", "=q1=Aldor Tabard", "=ds=#s7#"};
		{ 2, 31804, "", "=q1=Cenarion Expedition Tabard", "=ds=#s7#"};
		{ 3, 31776, "", "=q1=Consortium Tabard", "=ds=#s7#"};
		{ 4, 23999, "", "=q1=Honor Hold Tabard", "=ds=#s7#, =ec1=#m7#"};
		{ 5, 31777, "", "=q1=Keepers of Time Tabard", "=ds=#s7#"};
		{ 6, 31774, "", "=q1=Kurenai Tabard", "=ds=#s7#, =ec1=#m7#"};
		{ 7, 31778, "", "=q1=Lower City Tabard", "=ds=#s7#"};
		{ 8, 31773, "", "=q1=Mag'har Tabard", "=ds=#s7#, =ec1=#m6#"};
		{ 9, 32828, "", "=q1=Ogri'la Tabard", "=ds=#s7#"};
		{ 10, 31781, "", "=q1=Sha'tar Tabard", "=ds=#s7#"};
		{ 11, 31775, "", "=q1=Sporeggar Tabard", "=ds=#s7#"};
		{ 12, 31780, "", "=q1=Scryers Tabard", "=ds=#s7#"};
		{ 13, 32445, "", "=q1=Skyguard Tabard", "=ds=#s7#"};
		{ 14, 35221, "", "=q1=Tabard of the Shattered Sun", "=ds=#s7#"};
		{ 15, 24004, "", "=q1=Thrallmar Tabard", "=ds=#s7#, =ec1=#m6#"};
		{ 16, 35279, "", "=q3=Tabard of Summer Skies", "=ds=#s7#, =q1=#m4#"};
		{ 17, 35280, "", "=q3=Tabard of Summer Flames", "=ds=#s7#, =q1=#m4#"};
		{ 18, 31404, "", "=q2=Green Trophy Tabard of the Illidari", "=ds=#s7#, =q1=#m4#"};
		{ 19, 31405, "", "=q2=Purple Trophy Tabard of the Illidari", "=ds=#s7#, =q1=#m4#"};
		{ 21, 24344, "", "=q1=Tabard of the Hand", "=ds=#s7#, =q1=#m4#, =ec1=#m7#"};
		{ 22, 25549, "", "=q1=Blood Knight Tabard", "=ds=#s7#, =ec1=#m6#"};
		Prev = "Tabards3";
		Next = "Tabards1";
		Back = "SETMENU";
	};

	AtlasLoot_Data["Tabards1"] = {
		{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#", ""};
		{ 2, 15196, "", "=q1=Private's Tabard", "=ds=#s7#"};
		{ 3, 15198, "", "=q1=Knight's Colors", "=ds=#s7#"};
		{ 4, 20132, "", "=q1=Arathor Battle Tabard", "=ds=#s7#, =q1=#m4#"};
		{ 5, 19032, "", "=q1=Stormpike Battle Tabard", "=ds=#s7#"};
		{ 6, 19506, "", "=q1=Silverwing Battle Tabard", "=ds=#s7#"};
		{ 8, 0, "INV_BannerPVP_01", "=q6=#m6#", ""};
		{ 9, 15197, "", "=q1=Scout's Tabard", "=ds=#s7#"};
		{ 10, 15199, "", "=q1=Stone Guard's Herald", "=ds=#s7#"};
		{ 11, 20131, "", "=q1=Battle Tabard of the Defilers", "=ds=#s7#, =q1=#m4#"};
		{ 12, 19031, "", "=q1=Frostwolf Battle Tabard", "=ds=#s7#"};
		{ 13, 19505, "", "=q1=Warsong Battle Tabard", "=ds=#s7#"};
		{ 16, 23192, "", "=q2=Tabard of the Scarlet Crusade", "=ds=#s7#", "", "0.48%"};
		{ 17, 5976, "", "=q1=Guild Tabard", "=ds=#s7#"};
		{ 19, 0, "INV_Box_01", "=q6=#j29#", ""};
		{ 20, 36941, "", "=q3=Competitor's Tabard", "=ds=#s7#"};
		{ 21, 22999, "", "=q1=Tabard of the Agent Dawn", "=ds=#s7#, =q1=#m4#"};
		{ 22, 28788, "", "=q1=Tabard of the Protector", "=ds=#s7#, =q1=#m4#"};
		{ 23, 19160, "", "=q1=Contest Winner's Tabard", "=ds=#s7#"};
		Prev = "Tabards2";
		Back = "SETMENU";
	};

		-------------------------
		--- Trading Card Game ---
		-------------------------

	AtlasLoot_Data["CardGame1"] = {
		{ 1, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud31#"};
		{ 2, 45037, "", "=q4=Epic Purple Shirt", "=ds=#ud32#"};
		{ 3, 45063, "", "=q3=Foam Sword Rack", "=ds=#ud33#"};
		{ 4, 45047, "", "=q3=Sandbox Tiger", "=ds=#ud34#"};
		{ 6, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud27#"};
		{ 7, 38576, "", "=q4=Big Battle Bear", "=ds=#ud28#"};
		{ 8, 38578, "", "=q3=The Flag of Ownership", "=ds=#ud29#"};
		{ 9, 38577, "", "=q1=Party G.R.E.N.A.D.E.", "=ds=#ud30#"};
		{ 11, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud19#"};
		{ 12, 35227, "", "=q4=Goblin Weather Machine - Prototype 01-B", "=ds=#ud21#"};
		{ 13, 35226, "", "=q4=X-51 Nether-Rocket X-TREME", "=ds=#ud22#"};
		{ 14, 35225, "", "=q3=X-51 Nether-Rocket", "=ds=#ud22#"};
		{ 15, 35223, "", "=q3=Papa Hummel's Old-Fashioned Pet Biscuit", "=ds=#ud20#"};
		{ 16, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud23#"};
		{ 17, 38050, "", "=q3=Soul-Trader Beacon", "=ds=#ud26#"};
		{ 18, 38301, "", "=q3=D.I.S.C.O", "=ds=#ud25#"};
		{ 19, 38233, "", "=q1=Path of Illidan", "=ds=#ud24#"};
		{ 21, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud15#"};
		{ 22, 34493, "", "=q4=Dragon Kite", "=ds=#ud16#"};
		{ 23, 34492, "", "=q3=Rocket Chicken", "=ds=#ud17#"};
		{ 24, 34499, "", "=q3=Paper Flying Machine Kit", "=ds=#ud18#"};
		{ 26, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud3#"};
		{ 27, 33225, "", "=q4=Reins of the Swift Spectral Tiger", "=ds=#ud14#"};
		{ 28, 33224, "", "=q3=Reins of the Spectral Tiger", "=ds=#ud14#"};
		{ 29, 33223, "", "=q3=Fishing Chair", "=ds=#ud13#"};
		{ 30, 33219, "", "=q3=Goblin Gumbo Kettle", "=ds=#ud12#"};
		Next = "CardGame2";
		Back = "SETMENU";
	};

	AtlasLoot_Data["CardGame2"] = {
		{ 1, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud2#"};
		{ 2, 32588, "", "=q3=Banana Charm", "=ds=#ud9#"};
		{ 3, 32566, "", "=q3=Picnic Basket", "=ds=#ud10#"};
		{ 4, 32542, "", "=q3=Imp in a Ball", "=ds=#ud11#"};
		{ 6, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud1#"};
		{ 7, 23705, "", "=q4=Tabard of Flame", "=ds=#ud6#"};
		{ 8, 23713, "", "=q4=Hippogryph Hatchling", "=ds=#ud7#"};
		{ 9, 23720, "", "=q4=Riding Turtle", "=ds=#ud8#"};
		{ 16, 0, "INV_Box_01", "=q6=#ud5#", ""};
		{ 17, 38312, "", "=q4=Tabard of Brilliance", "=ds=#s7#"};
		{ 18, 23709, "", "=q4=Tabard of Frost", "=ds=#s7#"};
		{ 19, 38313, "", "=q4=Tabard of Fury", "=ds=#s7#"};
		{ 20, 38309, "", "=q4=Tabard of Nature", "=ds=#s7#"};
		{ 21, 38310, "", "=q4=Tabard of the Arcane", "=ds=#s7#"};
		{ 22, 38314, "", "=q4=Tabard of the Defender", "=ds=#s7#"};
		{ 23, 38314, "", "=q4=Tabard of the Defender", "=ds=#s7#"};
		{ 24, 38311, "", "=q4=Tabard of the Void", "=ds=#s7#"};
		{ 25, 23716, "", "=q4=Carved Ogre Idol", "=ds=#s14#"};
		{ 26, 23714, "", "=q4=Perpetual Purple Firework", "=ds=#s14#"};
		Prev = "CardGame1";
		Back = "SETMENU";
	};

		------------
		--- Pets ---
		------------

	AtlasLoot_Data["Pets1"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j39#", ""};
		{ 2, 20371, "", "=q3=Blue Murloc Egg", "=ds="};
		{ 3, 30360, "", "=q3=Lurky's Egg", "=ds="};
		{ 4, 33993, "", "=q3=Mojo", "=ds="};
		{ 5, 43517, "", "=q3=Penguin Egg", "=ds="};
		{ 6, 22114, "", "=q3=Pink Murloc Egg", "=ds="};
		{ 7, 19450, "", "=q1=A Jubling's Tiny Home", "=ds="};
		{ 8, 27445, "", "=q1=Magical Crawdad Box", "=ds="};
		{ 9, 11026, "", "=q1=Tree Frog Box", "=ds="};
		{ 10, 11027, "", "=q1=Wood Frog Box", "=ds="};
		{ 11, 21168, "", "=q1=Baby Shark", "=ds="};
		{ 16, 0, "INV_Box_01", "=q6=#j40#", ""};
		{ 17, 32616, "", "=q3=Egbert's Egg", "=ds="};
		{ 18, 12185, "", "=q2=Bloodsail Admiral's Hat", "=ds="};
		{ 19, 11023, "", "=q1=Ancona Chicken", "=ds="};
		{ 20, 11110, "", "=q1=Chicken Egg", "=ds="};
		{ 21, 8500, "", "=q1=Great Horned Owl", "=ds="};
		{ 22, 8501, "", "=q1=Hawk Owl", "=ds="};
		{ 23, 31760, "", "=q1=Miniwing", "=ds="};
		{ 24, 8496, "", "=q1=Parrot Cage (Cockatiel)", "=ds="};
		{ 25, 8492, "", "=q1=Parrot Cage (Green Wing Macaw)", "=ds="};
		{ 26, 8494, "", "=q1=Parrot Cage (Hyacinth Macaw)", "=ds="};
		{ 27, 8495, "", "=q1=Parrot Cage (Senegal)", "=ds="};
		Next = "Pets2";
	};

	AtlasLoot_Data["Pets2"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j41#", ""};
		{ 2, 38628, "", "=q3=Nether Ray Fry", "=ds="};
		{ 3, 34478, "", "=q3=Tiny Sporebat", "=ds="};
		{ 4, 29901, "", "=q1=Blue Moth Egg", "=ds="};
		{ 5, 29960, "", "=q1=Captured Firefly", "=ds="};
		{ 6, 10393, "", "=q1=Cockroach", "=ds="};
		{ 7, 20769, "", "=q1=Disgusting Oozeling", "=ds="};
		{ 8, 29902, "", "=q1=Red Moth Egg", "=ds="};
		{ 9, 12529, "", "=q1=Smolderweb Carrier", "=ds="};
		{ 10, 29904, "", "=q1=White Moth Egg", "=ds="};
		{ 11, 29903, "", "=q1=Yellow Moth Egg", "=ds="};
		{ 16, 0, "INV_Box_01", "=q6=#j42#", ""};
		{ 17, 34493, "", "=q4=Dragon Kite", "=ds="};
		{ 18, 34425, "", "=q3=Clockwork Rocket Bot", "=ds="};
		{ 19, 34492, "", "=q3=Rocket Chicken", "=ds="};
		{ 20, 15996, "", "=q1=Lifelike Mechanical Toad", "=ds="};
		{ 21, 11826, "", "=q1=Lil' Smoky", "=ds="};
		{ 22, 10398, "", "=q1=Mechanical Chicken", "=ds="};
		{ 23, 4401, "", "=q1=Mechanical Squirrel Box", "=ds="};
		{ 24, 11825, "", "=q1=Pet Bombling", "=ds="};
		{ 25, 21277, "", "=q1=Tranquil Mechanical Yeti", "=ds="};
		Prev = "Pets1";
		Next = "Pets3";
	};

	AtlasLoot_Data["Pets3"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j43#", ""};
		{ 2, 32588, "", "=q3=Banana Charm", "=ds="};
		{ 3, 38506, "", "=q3=Don Carlos' Famous Hat", "=ds="};
		{ 4, 32622, "", "=q3=Elekk Training Collar", "=ds="};
		{ 5, 32498, "", "=q3=Fortune Coin", "=ds="};
		{ 6, 13583, "", "=q3=Panda Collar", "=ds="};
		{ 7, 40653, "", "=q3=Reeking Pet Carrier", "=ds="};
		{ 8, 32233, "", "=q3=Wolpertinger's Tankard", "=ds="};
		{ 9, 29364, "", "=q1=Brown Rabbit Crate", "=ds="};
		{ 10, 8491, "", "=q1=Cat Carrier (Black Tabby)", "=ds="};
		{ 11, 8485, "", "=q1=Cat Carrier (Bombay)", "=ds="};
		{ 12, 8486, "", "=q1=Cat Carrier (Cornish Rex)", "=ds="};
		{ 13, 8487, "", "=q1=Cat Carrier (Orange Tabby)", "=ds="};
		{ 14, 8490, "", "=q1=Cat Carrier (Siamese)", "=ds="};
		{ 15, 8488, "", "=q1=Cat Carrier (Silver Tabby)", "=ds="};
		{ 16, 8489, "", "=q1=Cat Carrier (White Kitten)", "=ds="};
		{ 17, 21301, "", "=q1=Green Helper Box", "=ds="};
		{ 18, 21308, "", "=q1=Jingling Bell", "=ds="};
		{ 19, 23007, "", "=q1=Piglet's Collar", "=ds="};
		{ 20, 10394, "", "=q1=Prairie Dog Whistle", "=ds="};
		{ 21, 8497, "", "=q1=Rabbit Crate (Snowshoe)", "=ds="};
		{ 22, 23015, "", "=q1=Rat Cage", "=ds="};
		{ 23, 21305, "", "=q1=Red Helper Box", "=ds="};
		{ 24, 22235, "", "=q1=Truesilver Shafted Arrow", "=ds="};
		{ 25, 12264, "", "=q1=Worg Carrier", "=ds="};
		Prev = "Pets2";
		Next = "Pets4";
	};

	AtlasLoot_Data["Pets4"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j44#", ""};
		{ 2, 23713, "", "=q4=Hippogryph Hatchling", "=ds="};
		{ 3, 23083, "", "=q3=Captured Flame", "=ds="};
		{ 4, 0, "", "=q3=Competitor's Souvenir", "=ds="}; ---Missing ItemID
		{ 5, 13584, "", "=q3=Diablo Stone", "=ds="};
		{ 6, 37297, "", "=q3=Gold Medallion", "=ds="};
		{ 7, 25535, "", "=q3=Netherwhelp's Collar", "=ds="};
		{ 8, 35504, "", "=q3=Phoenix Hatchling", "=ds="};
		{ 9, 34955, "", "=q3=Scorched Stone", "=ds="};
		{ 10, 33154, "", "=q3=Sinister Squashling", "=ds="};
		{ 11, 32617, "", "=q3=Sleepy Willy", "=ds="};
		{ 12, 38050, "", "=q3=Soul-Trader Beacon", "=ds="};
		{ 13, 39656, "", "=q3=Tyrael's Hilt", "=ds="};
		{ 14, 13582, "", "=q3=Zergling Leash", "=ds="};
		{ 15, 39286, "", "=q3=Frosty's Collar", "=ds="};
		{ 16, 34535, "", "=q1=Azure Whelpling", "=ds="};
		{ 17, 29958, "", "=q1=Blue Dragonhawk Hatchling", "=ds="};
		{ 18, 10822, "", "=q1=Dark Whelpling", "=ds="};
		{ 19, 29953, "", "=q1=Golden Dragonhawk Hatchling", "=ds="};
		{ 20, 29363, "", "=q1=Mana Wyrmling", "=ds="};
		{ 21, 29956, "", "=q1=Red Dragonhawk Hatchling", "=ds="};
		{ 22, 29957, "", "=q1=Silver Dragonhawk Hatchling", "=ds="};
		{ 23, 21309, "", "=q1=Snowman Kit", "=ds="};
		{ 24, 11474, "", "=q1=Sprite Darter Egg", "=ds="};
		{ 25, 8499, "", "=q1=Tiny Crimson Whelpling", "=ds="};
		{ 26, 8498, "", "=q1=Tiny Emerald Whelpling", "=ds="};
		Prev = "Pets3";
		Next = "Pets5";
	};

	AtlasLoot_Data["Pets5"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j45#", ""};
		{ 2, 35350, "", "=q3=Chuck's Bucket", "=ds="};
		{ 3, 33818, "", "=q3=Muckbreath's Bucket", "=ds="};
		{ 4, 35349, "", "=q3=Snarly's Bucket", "=ds="};
		{ 5, 33816, "", "=q3=Toothy's Bucket", "=ds="};
		{ 6, 10360, "", "=q1=Black Kingsnake", "=ds="};
		{ 7, 10361, "", "=q1=Brown Snake", "=ds="};
		{ 8, 10392, "", "=q1=Crimson Snake", "=ds="};
		{ 9, 23002, "", "=q1=Turtle Box", "=ds="};
		Prev = "Pets4";
	};

    		--------------
		--- Mounts ---
		--------------

	AtlasLoot_Data["Mounts31"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j48#", ""};
		{ 2, 44225, "", "=q4=Reins of the Armored Brown Bear", "=ds=#e12# =ec1=#m7#"};
		{ 3, 44226, "", "=q4=Reins of the Armored Brown Bear", "=ds=#e12# =ec1=#m6#"};
		{ 4, 44230, "", "=q4=Reins of the Wooly Mammoth", "=ds=#e12# =ec1=#m7#"};
		{ 5, 44231, "", "=q4=Reins of the Wooly Mammoth", "=ds=#e12# =ec1=#m6#"};
		{ 6, 44235, "", "=q4=Reins of the Traveler's Tundra Mammoth", "=ds=#e12# =ec1=#m7#"};
		{ 7, 44234, "", "=q4=Reins of the Traveler's Tundra Mammoth", "=ds=#e12# =ec1=#m6#"};
		{ 8, 44689, "", "=q4=Armored Snowy Gryphon", "=ds=#e12# =ec1=#m7#"};
		{ 9, 44690, "", "=q4=Armored Blue Wind Rider", "=ds=#e12# =ec1=#m6#"};
		{ 11, 0, "INV_Box_01", "=q6=#j34#", ""};
		{ 12, 43956, "", "=q4=Reins of the Black War Mammoth", "=ds=#e12# =ec1=#m7#"};
		{ 13, 44077, "", "=q4=Reins of the Black War Mammoth", "=ds=#e12# =ec1=#m6#"};
		{ 16, 0, "INV_Box_01", "=q6=#j35#", ""};
		{ 17, 44151, "", "=q4=Reins of the Blue Proto-Drake", "=q2=#n151#, =q1=#j47# #z35#", ""};
		{ 18, 43951, "", "=q4=Reins of the Bronze Drake", "=q2=#n152#, =q1=#j47# #z36#", ""};
		{ 19, 44707, "", "=q4=Reins of the Green Proto-Drake", "=q2=#x38#", ""};
		{ 20, 44168, "", "=q4=Reins of the Time-Lost Proto-Drake", "=q2=#n155#, =q1=#z37#", ""};
		{ 21, 43986, "", "=q4=Reins of the Black Drake", "=q2=#n153#, =q1=#j37# #z38# #j46#", ""};
		{ 22, 43954, "", "=q4=Reins of the Twilight Drake", "=q2=#n153#, =q1=#j38# #z38# #j46#", ""};
		{ 23, 43953, "", "=q4=Reins of the Blue Drake", "=q2=#n154#, =q1=#j37# #z39#", ""};
		{ 24, 43952, "", "=q4=Reins of the Azure Drake", "=q2=#n154#, =q1=#j38# #z39#", ""};
		{ 25, 43962, "", "=q4=Reins of the White Polar Bear", "=q2=#m4#: #x39#", ""};
		Next = "Mounts32";
		Back = "MOUNTMENU";
	};

	AtlasLoot_Data["Mounts32"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j32#", ""};
		{ 2, 44413, "", "=q4=Mekgineer's Chopper", "=q2=#p5# =ec1=#m7#"};
		{ 3, 41508, "", "=q4=Mechano-hog", "=q2=#p5# =ec1=#m6#"};
		{ 4, 39303, "", "=q4=Swift Flying Carpet", "=q2=#p8#"};
		{ 5, 44558, "", "=q4=Magnificent Flying Carpet", "=q2=#p8#"};
		{ 6, 44557, "", "=q4=Swift Ebonweave Carpet", "=q2=#p8#"};
		{ 7, 44555, "", "=q4=Swift Mooncloth Carpet", "=q2=#p8#"};
		{ 8, 44556, "", "=q4=Swift Spellfire Carpet", "=q2=#p8#"};
		{ 9, 44554, "", "=q3=Flying Carpet", "=q2=#p8#"};
		{ 16, 0, "INV_Box_01", "=q6=#j49#", ""};
		{ 17, 43958, "", "=q4=Reins of the Ice Mammoth", "=ec1=#m7# =q2=#f7#"};
		{ 18, 44080, "", "=q4=Reins of the Ice Mammoth", "=ec1=#m6# =q2=#f7#"};
		{ 19, 43961, "", "=q4=Reins of the Grand Ice Mammoth", "=ec1=#m7# =q2=#f7#"};
		{ 20, 44086, "", "=q4=Reins of the Grand Ice Mammoth", "=ec1=#m6# =q2=#f7#"};
		{ 21, 43955, "", "=q4=Reins of the Red Drake", "=q2=#f8#"};
		{ 23, 0, "INV_Box_01", "=q6=#m34# #m33#", ""};
		{ 24, 44223, "", "=q4=Reins of the Black War Bear", "=ds=#e12# =ec1=#m7#"};
		{ 25, 44224, "", "=q4=Reins of the Black War Bear", "=ds=#e12# =ec1=#m6#"};
		{ 26, "s59976", "Ability_Mount_Drake_Proto", "=q4=Reins of the Black Proto-Drake", "=ds=#e12#"};
		{ 27, "44175", "", "=q4=Reins of the Plagued Proto-Drake", "=ds=#e12#"};
		{ 28, "44160", "", "=q4=Reins of the Red Proto-Drake", "=ds=#e12#"};
		{ 29, "s60024", "Ability_Mount_Drake_Proto", "=q4=Reins of the Violet Proto-Drake", "=ds=#e12#"};
		{ 30, 44178, "", "=q4=Reins of the Albino Drake", "=ds=#e12#"};
		Prev = "Mounts31";
		Back = "MOUNTMENU";
	};

		-------------------------------
		--- Emblem of Heroism Items ---
		-------------------------------

	AtlasLoot_Data["EmblemofHeroism"] = {
		{ 1, 0, "INV_Box_01", "=q6=#a1#", ""};
		{ 2, 40697, "", "=q4=Elegant Temple Gardens' Girdle", "=ds=#s10#, #a1#", "40 #eofheroism#"};
		{ 3, 40696, "", "=q4=Plush Sash of Guzbah", "=ds=#s10#, #a1#", "40 #eofheroism#"};
		{ 5, 0, "INV_Box_01", "=q6=#a2#", ""};
		{ 6, 40694, "", "=q4=Jorach's Crocolisk Skin Belt", "=ds=#s10#, #a2#", "40 #eofheroism#"};
		{ 7, 40695, "", "=q4=Vine Belt of the Woodland Dryad", "=ds=#s10#, #a2#", "40 #eofheroism#"};
		{ 9, 0, "INV_Box_01", "=q6=#a3#", ""};
		{ 10, 40693, "", "=q4=Beadwork Belt of Shamanic Vision", "=ds=#s10#, #a3#", "40 #eofheroism#"};
		{ 11, 40692, "", "=q4=Vereesa's Silver Chain Belt", "=ds=#s10#, #a3#", "40 #eofheroism#"};
		{ 16, 0, "INV_Box_01", "=q6=#a4#", ""};
		{ 17, 40691, "", "=q4=Magroth's Meditative Cincture", "=ds=#s10#, #a4#", "40 #eofheroism#"};
		{ 18, 40688, "", "=q4=Verdungo's Barbarian Cord", "=ds=#s10#, #a4#", "40 #eofheroism#"};
		{ 19, 40689, "", "=q4=Waistguard of Living Iron", "=ds=#s10#, #a4#", "40 #eofheroism#"};
		{ 21, 0, "INV_Box_01", "=q6="..AL["Misc"], ""}; 
		{ 22, 44230, "", "=q4=Reins of the Wooly Mammoth", "=ds=#e12# =ec1=#m7#", "200 #eofheroism#"};
		{ 23, 44231, "", "=q4=Reins of the Wooly Mammoth", "=ds=#e12# =ec1=#m6#", "200 #eofheroism#"};
		{ 24, 40610, "", "=q4=Chestguard of the Lost Conqueror", "=ds=#e15#", "80 #eofheroism#"};
		{ 25, 40611, "", "=q4=Chestguard of the Lost Protector", "=ds=#e15#", "80 #eofheroism#"};
		{ 26, 40612, "", "=q4=Chestguard of the Lost Vanquisher", "=ds=#e15#", "80 #eofheroism#"};
		{ 27, 40613, "", "=q4=Gloves of the Lost Conqueror", "=ds=#e15#", "60 #eofheroism#"};
		{ 28, 40614, "", "=q4=Gloves of the Lost Protector", "=ds=#e15#", "60 #eofheroism#"};
		{ 29, 40615, "", "=q4=Gloves of the Lost Vanquisher", "=ds=#e15#", "60 #eofheroism#"};
		{ 30, 43102, "", "=q3=Frozen Orb", "=ds=#e15#", "10 #eofheroism#"};
		Next = "EmblemofHeroism2";
		Back = "SETMENU";
	};

	AtlasLoot_Data["EmblemofHeroism2"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j50#", ""};
		{ 2, 40704, "", "=q4=Pride", "=ds=#w13#, #h4#", "50 #eofheroism#"};
		{ 3, 40702, "", "=q4=Rolfsen's Ripper", "=ds=#w4#, #h4#", "50 #eofheroism#"};
		{ 4, 40703, "", "=q4=Grasscutter", "=ds=#w10#, #h4#", "50 #eofheroism#"};
		{ 5, 40716, "", "=q4=Lillehoff's Winged Blades", "=ds=#w11#", "15 #eofheroism#"};
		{ 6, 40701, "", "=q4=Crygil's Discarded Plate Panel", "=ds=#w8#", "35 #eofheroism#"};
		{ 7, 40700, "", "=q4=Protective Barricade of the Light", "=ds=#w8#", "35 #eofheroism#"};
		{ 8, 40699, "", "=q4=Handbook of Obscure Remedies", "=ds=#s15#", "25 #eofheroism#"};
		{ 9, 40698, "", "=q4=Ward of the Violet Citadel", "=ds=#s15#", "25 #eofheroism#"};
		{ 16, 0, "INV_Box_01", "=q6=#j51#", ""};
		{ 17, 40679, "", "=q4=Chained Military Gorget", "=ds=#s2#", "25 #eofheroism#"};
		{ 18, 40680, "", "=q4=Encircling Burnished Gold Chains", "=ds=#s2#", "25 #eofheroism#"};
		{ 19, 40681, "", "=q4=Lattice Choker of Light", "=ds=#s2#", "25 #eofheroism#"};
		{ 20, 40678, "", "=q4=Pendant of the Outcast Hero", "=ds=#s2#", "25 #eofheroism#"};
		{ 21, 40684, "", "=q4=Mirror of Truth", "=ds=#s14#", "40 #eofheroism#"};
		{ 22, 40682, "", "=q4=Sundial of the Exiled", "=ds=#s14#", "40 #eofheroism#"};
		{ 23, 40685, "", "=q4=The Egg of Mortal Essence", "=ds=#s14#", "40 #eofheroism#"};
		{ 24, 40683, "", "=q4=Valor Medal of the First War", "=ds=#s14#", "40 #eofheroism#"};
		Prev = "EmblemofHeroism";
		Next = "EmblemofHeroism3";
		Back = "SETMENU";
	};

	AtlasLoot_Data["EmblemofHeroism3"] = {
		{ 1, 0, "INV_Box_01", "=q6=#w14#", ""};
		{ 2, 40711, "", "=q4=Idol of Lush Moss", "=ds=#w14#", "15 #eofheroism#"};
		{ 3, 40712, "", "=q4=Idol of Steadfast Renewal", "=ds=#w14#", "15 #eofheroism#"};
		{ 4, 40713, "", "=q4=Idol of the Ravenous Beast", "=ds=#w14#", "15 #eofheroism#"};
		{ 6, 0, "INV_Box_01", "=q6=#w16#", ""};
		{ 7, 40707, "", "=q4=Libram of Obstruction", "=ds=#w16#", "15 #eofheroism#"};
		{ 8, 40706, "", "=q4=Libram of Reciprocation", "=ds=#w16#", "15 #eofheroism#"};
		{ 9, 40705, "", "=q4=Libram of Renewal", "=ds=#w16#", "15 #eofheroism#"};
		{ 10, 0, "INV_Box_01", "=q6=#w21#", ""};
		{ 11, 40715, "", "=q4=Sigil of Haunted Dreams", "=ds=#w21#", "15 #eofheroism#"};
		{ 12, 0, "INV_Box_01", "=q6=#w15#", ""};
		{ 13, 40709, "", "=q4=Totem of Forest Growth", "=ds=#w15#", "15 #eofheroism#"};
		{ 14, 40710, "", "=q4=Totem of Splintering", "=ds=#w15#", "15 #eofheroism#"};
		{ 15, 40708, "", "=q4=Totem of the Elemental Plane", "=ds=#w15#", "15 #eofheroism#"};
		{ 16, 0, "INV_Box_01", "=q6=#j52#", ""};
		{ 17, 42985, "", "=q7=Tattered Dreadmist Mantle", "=ds=#s3#, #a1#", "40 #eofheroism#"};
		{ 18, 42984, "", "=q7=Preened Ironfeather Shoulders", "=ds=#s3#, #a2#", "40 #eofheroism#"};
		{ 19, 42952, "", "=q7=Stained Shadowcraft Spaulders", "=ds=#s3#, #a2#", "40 #eofheroism#"};
		{ 20, 42950, "", "=q7=Champion Herod's Shoulder", "=ds=#s3#, #a3#", "40 #eofheroism#"};
		{ 21, 42951, "", "=q7=Mystical Pauldrons of Elements", "=ds=#s3#, #a3#", "40 #eofheroism#"};
		{ 22, 42949, "", "=q7=Polished Spaulders of Valor", "=ds=#s3#, #a4#", "40 #eofheroism#"};
		{ 23, 42992, "", "=q7=Discerning Eye of the Beast", "=ds=#s14#", "50 #eofheroism#"};
		{ 24, 42991, "", "=q7=Swift Hand of Justice", "=ds=#s14#", "50 #eofheroism#"};
		{ 25, 42944, "", "=q7=Balanced Heartseeker", "=ds=#w4#, #h1#", "40 #eofheroism#"};
		{ 26, 42945, "", "=q7=Venerable Dal'Rend's Sacred Charge", "=ds=#w10#, #h3#", "40 #eofheroism#"};
		{ 27, 42943, "", "=q7=Bloodied Arcanite Reaper", "=ds=#w1#, #h2#", "65 #eofheroism#"};
		{ 28, 42948, "", "=q7=Devout Aurastone Hammer", "=ds=#w6#, #h3#", "50 #eofheroism#"};
		{ 29, 42947, "", "=q7=Dignified Headmaster's Charge", "=ds=#w9#", "65 #eofheroism#"};
		{ 30, 42946, "", "=q7=Charmed Ancient Bone Bow", "=ds=#w2#", "65 #eofheroism#"};
		Prev = "EmblemofHeroism2";
		Back = "SETMENU";
	};

		-----------------------------
		--- Emblem of Valor Items ---
		-----------------------------

	AtlasLoot_Data["EmblemofValor"] = {
		{ 1, 40724, "", "=q4=Cloak of Kea Feathers", "=ds=#s4#", "25 #eofvalor#"};
		{ 2, 40723, "", "=q4=Disguise of the Kumiho", "=ds=#s4#", "25 #eofvalor#"};
		{ 3, 40722, "", "=q4=Platinum Mesh Cloak", "=ds=#s4#", "25 #eofvalor#"};
		{ 4, 40721, "", "=q4=Hammerhead Sharkskin Cloak", "=ds=#s4#", "25 #eofvalor#"};
		{ 6, 40741, "", "=q4=Cuffs of the Shadow Ascendant", "=ds=#s8#, #a1#", "60 #eofvalor#"};
		{ 7, 40740, "", "=q4=Wraps of the Astral Traveler", "=ds=#s8#, #a1#", "60 #eofvalor#"};
		{ 8, 40751, "", "=q4=Slippers of the Holy Light", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		{ 9, 40750, "", "=q4=Xintor's Expeditionary Boots", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		{ 11, 40739, "", "=q4=Bands of the Great Tree", "=ds=#s8#, #a2#", "60 #eofvalor#"};
		{ 12, 40738, "", "=q4=Wristwraps of the Cutthroat", "=ds=#s8#, #a2#", "60 #eofvalor#"};
		{ 13, 40748, "", "=q4=Boots of Captain Ellis", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		{ 14, 40749, "", "=q4=Rainey's Chewed Boots", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		{ 16, 40736, "", "=q4=Armguard of the Tower Archer", "=ds=#s8#, #a3#", "60 #eofvalor#"};
		{ 17, 40737, "", "=q4=Pigmented Clan Bindings", "=ds=#s8#, #a3#", "60 #eofvalor#"};
		{ 18, 40746, "", "=q4=Pack-Ice Striders", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		{ 19, 40747, "", "=q4=Treads of Coastal Wandering", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		{ 21, 40734, "", "=q4=Bracers of Dalaran's Parapets", "=ds=#s8#, #a4#", "60 #eofvalor#"};
		{ 22, 40733, "", "=q4=Wristbands of the Sentinel Huntress", "=ds=#s8#, #a4#", "60 #eofvalor#"};
		{ 23, 40735, "", "=q4=Zartson's Jungle Vambraces", "=ds=#s8#, #a4#", "60 #eofvalor#"};
		{ 24, 40742, "", "=q4=Bladed Steelboots", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		{ 25, 40743, "", "=q4=Kyzoc's Ground Stompers", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		{ 26, 40745, "", "=q4=Sabatons of Rapid Recovery", "=ds=#s12#, #a1#", "40 #eofvalor#"};
		Next = "EmblemofValor2";
		Back = "SETMENU";
	};

	AtlasLoot_Data["EmblemofValor2"] = {
		{ 1, 40719, "", "=q4=Band of Channeled Magic", "=ds=#s13#", "25 #eofvalor#"};
		{ 2, 40720, "", "=q4=Renewal of Life", "=ds=#s13#", "25 #eofvalor#"};
		{ 3, 40717, "", "=q4=Ring of Invincibility", "=ds=#s13#", "25 #eofvalor#"};
		{ 4, 40718, "", "=q4=Signet of the Impregnable Fortress", "=ds=#s13#", "25 #eofvalor#"};
		{ 6, 40637, "", "=q4=Mantle of the Lost Conqueror", "=ds=#e15#", "60 #eofvalor#"};
		{ 7, 40638, "", "=q4=Mantle of the Lost Protector", "=ds=#e15#", "60 #eofvalor#"};
		{ 8, 40639, "", "=q4=Mantle of the Lost Vanquisher", "=ds=#e15#", "60 #eofvalor#"};
		{ 10, 40634, "", "=q4=Legplates of the Lost Conqueror", "=ds=#e15#", "75 #eofvalor#"};
		{ 11, 40635, "", "=q4=Legplates of the Lost Protector", "=ds=#e15#", "75 #eofvalor#"};
		{ 12, 40636, "", "=q4=Legplates of the Lost Vanquisher", "=ds=#e15#", "75 #eofvalor#"};
		Prev = "EmblemofValor";
		Back = "SETMENU";
	};

