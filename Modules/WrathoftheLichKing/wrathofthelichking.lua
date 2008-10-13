local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
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
---- Caverns of Time: Stratholme
---- Utgarde Pinnacle
---- The Oculus
---- Naxxramas
---- Obsidian Sanctum
---- The Eye of Eternity
--- Factions
---- Argent Crusade
---- Frenzyheart Tribe
---- Kirin Tor
---- Knights of the Ebon Blade
---- The Kalu'ak
---- The Oracles
---- The Sons of Hodir
---- The Wyrmrest Accord
--- PvP
---- Armor Sets
---- Epic Non-Sets
---- Placeholder - PvP Weapons
--- Sets & Collections
---- Blizzard Collectables
---- Legendaries
---- Tabards
---- Trading Card Game
---- Pets
---- Mounts
---- Emblem of Valor Items
---- Emblem of Heroism Items

	------------------------
	--- Dungeons & Raids ---
	------------------------

		--------------------
		--- Utgarde Keep ---
		--------------------
--Most Heroic loot based on IDs
	AtlasLoot_Data["UtgardeKeep"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Prince Keleseth"], ""};
		{ 2, 35572, "", "=q3=Reinforced Velvet Helm", "=ds=#s1#, #a1#"};
		{ 3, 35571, "", "=q3=Dragon Stabler's Gauntlets", "=ds=#s9#, #a3#"};
		{ 4, 35570, "", "=q3=Keleseth's Blade of Evocation", "=ds=#h3#, #w4#"};
		{ 6, 0, "INV_Box_01", "=q6="..BabbleBoss["Skarvald the Constructor"], ""};
		{ 7, 35575, "", "=q3=Skarvald's Dragonskin Habergeon", "=ds=#s5#, #a2#"};
		{ 8, 35574, "", "=q3=Chestplate of the Northern Lights", "=ds=#s5#, #a4#"};
		{ 9, 35573, "", "=q3=Arm Blade of Augelmir", "=ds=#h3#, #w13#"};
		{ 11, 0, "INV_Box_01", "=q6="..AL["Trash Mobs"], ""};
		{ 12, 35580, "", "=q3=Skein Woven Mantle", "=ds=#s3#, #a1#"};
		{ 13, 35579, "", "=q3=Vrykul Shackles", "=ds=#s8#, #a2#"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Ingvar the Plunderer"], ""};
		{ 17, 35577, "", "=q3=Holistic Patchwork Breeches", "=ds=#s11#, #a2#"};
		{ 18, 35578, "", "=q3=Overlaid Chain Spaulders", "=ds=#s3#, #a3#"};
		{ 19, 35576, "", "=q3=Ingvar's Monolithic Cleaver", "=ds=#h2#, #w1#"};
		{ 21, 33330, "", "=q1=Ingvar's Head", "=ds=#m3#"};
		{ 22, 38218, "", "=q3=Executioner's Band", "=q1=#m4#: =ds=#s13#"};
		{ 23, 38219, "", "=q3=Ring of Decimation", "=q1=#m4#: =ds=#s13#"};
		{ 24, 38220, "", "=q3=Signet of Swift Judgement", "=q1=#m4#: =ds=#s13#"};
	};
	
	AtlasLoot_Data["UtgardeKeepHEROIC"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Prince Keleseth"], ""};
		{ 2, 37180, "", "=q3=Battlemap Hide Helm", "=ds=#s1#, #a2#"};
		{ 3, 37178, "", "=q3=Strategist's Belt", "=ds=#s10#, #a4#"};
		{ 4, 37179, "", "=q3=Infantry Assault Blade", "=ds=#h1#, #w10#"};
		{ 5, 37177, "", "=q3=Wand of the San'layn", "=ds=#w12#"};
		{ 7, 0, "INV_Box_01", "=q6="..BabbleBoss["Skarvald the Constructor"], ""};
		{ 8, 37183, "", "=q3=Bindings of the Tunneler", "=ds=#s8#, #a2#"};
		{ 9, 37184, "", "=q3=Dalronn's Jerkin", "=ds=#s5#, #a3#"};
		{ 10, 37182, "", "=q3=Helmet of the Constructor", "=ds=#s1#, #a4#"};
		{ 11, 37181, "", "=q3=Dagger of Betrayal", "=ds=#h1#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Ingvar the Plunderer"], ""};
		{ 17, 37194, "", "=q4=Sharp-Barbed Leather Belt", "=ds=#s10#, #a2#"};
		{ 18, 37193, "", "=q4=Staggering Legplates", "=ds=#s11#, #a4#"};
		{ 19, 37192, "", "=q4=Annhylde's Ring", "=ds=#s13#"};
		{ 20, 37191, "", "=q4=Drake-Mounted Crossbow", "=ds=#w3#"};
		{ 22, 37189, "", "=q3=Breeches of the Caller", "=ds=#s11#, #a1#"};
		{ 23, 37188, "", "=q3=Plunderer's Helmet", "=ds=#s1#, #a3#"};
		{ 24, 37186, "", "=q3=Unsmashable Heavy Band", "=ds=#s13#"};
		{ 25, 37190, "", "=q3=Enraged Feral Staff", "=ds=#w9#"};
		{ 27, 43102, "", "=q3=Frozen Orb", "=ds=#e8#"};
	};

--Most Heroic loot based on IDs
	AtlasLoot_Data["UKKeleseth"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35572, "", "=q3=Reinforced Velvet Helm", "=ds=#s1#, #a1#"};
		{ 3, 35571, "", "=q3=Dragon Stabler's Gauntlets", "=ds=#s9#, #a3#"};
		{ 4, 35570, "", "=q3=Keleseth's Blade of Evocation", "=ds=#h3#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37180, "", "=q3=Battlemap Hide Helm", "=ds=#s1#, #a2#"};
		{ 18, 37178, "", "=q3=Strategist's Belt", "=ds=#s10#, #a4#"};
		{ 19, 37179, "", "=q3=Infantry Assault Blade", "=ds=#h1#, #w10#"};
		{ 20, 37177, "", "=q3=Wand of the San'layn", "=ds=#w12#"};
		Next = "UKSkarvald";
	};

	AtlasLoot_Data["UKSkarvald"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35575, "", "=q3=Skarvald's Dragonskin Habergeon", "=ds=#s5#, #a2#"};
		{ 3, 35574, "", "=q3=Chestplate of the Northern Lights", "=ds=#s5#, #a4#"};
		{ 4, 35573, "", "=q3=Arm Blade of Augelmir", "=ds=#h3#, #w13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37183, "", "=q3=Bindings of the Tunneler", "=ds=#s8#, #a2#"};
		{ 18, 37184, "", "=q3=Dalronn's Jerkin", "=ds=#s5#, #a3#"};
		{ 19, 37182, "", "=q3=Helmet of the Constructor", "=ds=#s1#, #a4#"};
		{ 20, 37181, "", "=q3=Dagger of Betrayal", "=ds=#h1#, #w4#"};
		Prev = "UKKeleseth";
		Next = "UKIngvar";
	};

	AtlasLoot_Data["UKIngvar"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35577, "", "=q3=Holistic Patchwork Breeches", "=ds=#s11#, #a2#"};
		{ 3, 35578, "", "=q3=Overlaid Chain Spaulders", "=ds=#s3#, #a3#"};
		{ 4, 35576, "", "=q3=Ingvar's Monolithic Cleaver", "=ds=#h2#, #w1#"};
		{ 6, 33330, "", "=q1=Ingvar's Head", "=ds=#m3#"};
		{ 7, 38218, "", "=q3=Executioner's Band", "=q1=#m4#: =ds=#s13#"};
		{ 8, 38219, "", "=q3=Ring of Decimation", "=q1=#m4#: =ds=#s13#"};
		{ 9, 38220, "", "=q3=Signet of Swift Judgement", "=q1=#m4#: =ds=#s13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37194, "", "=q4=Sharp-Barbed Leather Belt", "=ds=#s10#, #a2#"};
		{ 18, 37193, "", "=q4=Staggering Legplates", "=ds=#s11#, #a4#"};
		{ 19, 37192, "", "=q4=Annhylde's Ring", "=ds=#s13#"};
		{ 20, 37191, "", "=q4=Drake-Mounted Crossbow", "=ds=#w3#"};
		{ 22, 37189, "", "=q3=Breeches of the Caller", "=ds=#s11#, #a1#"};
		{ 23, 37188, "", "=q3=Plunderer's Helmet", "=ds=#s1#, #a3#"};
		{ 24, 37186, "", "=q3=Unsmashable Heavy Band", "=ds=#s13#"};
		{ 25, 37190, "", "=q3=Enraged Feral Staff", "=ds=#w9#"};
		{ 27, 43102, "", "=q3=Frozen Orb", "=ds=#e8#"};
		Prev = "UKSkarvald";
	};
--Trash drops
	AtlasLoot_Data["UKUnknown"] = {
		{ 1, 35580, "", "=q3=Skein Woven Mantle", "=ds=#s3#, #a1#"};
		{ 2, 35579, "", "=q3=Vrykul Shackles", "=ds=#s8#, #a2#"};
	};

		-----------------
		--- The Nexus ---
		-----------------

	AtlasLoot_Data["TheNexus"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Grand Magus Telestra"], ""};
		{ 2, 35605, "", "=q3=Belt of Draconic Runes", "=ds=#s10#, #a2#"};
		{ 3, 35604, "", "=q3=Insulating Bindings", "=ds=#s8#, #a4#"};
		{ 4, 35617, "", "=q3=Wand of Shimmering Scales", "=ds=#w12#"};
		{ 6, 0, "INV_Box_01", "=q6="..BabbleBoss["Ormorok the Tree-Shaper"], ""};
		{ 7, 35599, "", "=q3=Gauntlets of Serpent Scales", "=ds=#s9#, #a3#"};
		{ 8, 35600, "", "=q3=Cleated Ice Boots", "=ds=#s12#, #a3#"};
		{ 9, 35598, "", "=q3=Tome of the Lore Keepers", "=ds=#s15#"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Anomalus"], ""};
		{ 17, 35602, "", "=q3=Chiseled Stalagmite Pauldrons", "=ds=#s3#, #a4#"};
		{ 18, 35603, "", "=q3=Greaves of the Blue Flight", "=ds=#s12#, #a4#"};
		{ 19, 35601, "", "=q3=Drakonid Arm Blade", "=ds=#h4#, #w13#"};
		{ 21, 0, "INV_Box_01", "=q6="..BabbleBoss["Keristrasza"], ""};
		{ 22, 35602, "", "=q3=Chiseled Stalagmite Pauldrons", "=ds=#s3#, #a4#"};
		{ 23, 35603, "", "=q3=Greaves of the Blue Flight", "=ds=#s12#, #a4#"};
		{ 24, 35601, "", "=q3=Drakonid Arm Blade", "=ds=#h4#, #w13#"};
	};
	
	AtlasLoot_Data["TheNexusHEROIC"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Grand Magus Telestra"], ""};
		{ 2, 37139, "", "=q3=Spaulders of the Careless Thief", "=ds=#s3#, #a2#"};
		{ 3, 37138, "", "=q3=Bands of Channeled Energy", "=ds=#s8#, #a3#"};
		{ 4, 37135, "", "=q3=Arcane-Shielded Helm", "=ds=#s1#, #a4#"}; --assumed based in ID
		{ 5, 37134, "", "=q3=Telestra's Journal", "=ds=#s15#"};
		{ 7, 0, "INV_Box_01", "=q6="..BabbleBoss["Ormorok the Tree-Shaper"], ""};
		{ 8, 37149, "", "=q3=Helm of Anomalus", "=ds=#s1#, #a2#"};
		{ 9, 37144, "", "=q3=Hauberk of the Arcane Wraith", "=ds=#s5#, #a3#"};
		{ 10, 37150, "", "=q3=Rift Striders", "=ds=#s12#, #a3#"};
		{ 11, 37141, "", "=q3=Amulet of Dazzling Light", "=ds=#s2#"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Anomalus"], ""};
		{ 17, 37153, "", "=q3=Gloves of the Crystal Gardener", "=ds=#s9#, #a1#"};
		{ 18, 37155, "", "=q3=Frozen Forest Kilt", "=ds=#s11#, #a3#"};
		{ 19, 37152, "", "=q3=Girdle of Ice", "=ds=#s10#, #a4#"};
		{ 20, 37151, "", "=q3=Band of Frosted Thorns", "=ds=#s13#"};
		{ 22, 0, "INV_Box_01", "=q6=Commander Stoutbeard", ""};
		{ 23, 37728, "", "=q3=Cloak of the Enemy", "=ds=#s4#"};
		{ 24, 37731, "", "=q3=Opposed Stasis Leggings", "=ds=#s11#, #a1#"};
		{ 25, 37730, "", "=q3=Cleric's Linen Shoes", "=ds=#s12#, #a1#"};
		{ 26, 37729, "", "=q3=Grips of Sculptured Icicles", "=ds=#s9#, #a4#"};
		Next = "TheNexusKeristraszaHEROIC";
	};

	AtlasLoot_Data["TheNexusKeristraszaHEROIC"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Keristrasza"], ""};
		{ 2, 37172, "", "=q4=Gloves of Glistening Runes", "=ds=#s9#, #a1#"};
		{ 3, 37170, "", "=q4=Interwoven Scale Bracers", "=ds=#s8#, #a3#"};
		{ 4, 37171, "", "=q4=Flame-Bathed Steel Girdle", "=ds=#s10#, #a4#"};
		{ 5, 37169, "", "=q4=War Mace of Unrequited Love", "=ds=#h3#, #w6#"};
		{ 6, 37165, "", "=q3=Crystal-Infused Tunic", "=ds=#s5#, #a2#"};
		{ 7, 37167, "", "=q3=Dragon Slayer's Sabatons", "=ds=#s12#, #a3#"};
		{ 8, 37166, "", "=q3=Sphere of Red Dragon's Blood", "=ds=#s14#"};
		{ 9, 37162, "", "=q3=Bulwark of the Noble Protector", "=ds=#w8#"};
		{ 11, 43665, "", "=q1=Keristrasza's Broken Heart", "=ds=#m3#"};
		Prev = "TheNexusHEROIC";
	};

	AtlasLoot_Data["NexTelestra"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35605, "", "=q3=Belt of Draconic Runes", "=ds=#s10#, #a2#"};
		{ 3, 35604, "", "=q3=Insulating Bindings", "=ds=#s8#, #a4#"};
		{ 4, 35617, "", "=q3=Wand of Shimmering Scales", "=ds=#w12#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37139, "", "=q3=Spaulders of the Careless Thief", "=ds=#s3#, #a2#"};
		{ 18, 37138, "", "=q3=Bands of Channeled Energy", "=ds=#s8#, #a3#"};
		{ 19, 37135, "", "=q3=Arcane-Shielded Helm", "=ds=#s1#, #a4#"}; --assumed based in ID
		{ 20, 37134, "", "=q3=Telestra's Journal", "=ds=#s15#"};
		Next = "NexAnomalus";
	};

	AtlasLoot_Data["NexAnomalus"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35599, "", "=q3=Gauntlets of Serpent Scales", "=ds=#s9#, #a3#"};
		{ 3, 35600, "", "=q3=Cleated Ice Boots", "=ds=#s12#, #a3#"};
		{ 4, 35598, "", "=q3=Tome of the Lore Keepers", "=ds=#s15#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37149, "", "=q3=Helm of Anomalus", "=ds=#s1#, #a2#"};
		{ 18, 37144, "", "=q3=Hauberk of the Arcane Wraith", "=ds=#s5#, #a3#"};
		{ 19, 37150, "", "=q3=Rift Striders", "=ds=#s12#, #a3#"};
		{ 20, 37141, "", "=q3=Amulet of Dazzling Light", "=ds=#s2#"};
		Prev = "NexTelestra";
		Next = "NexOrmorok";
	};

	AtlasLoot_Data["NexOrmorok"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35602, "", "=q3=Chiseled Stalagmite Pauldrons", "=ds=#s3#, #a4#"};
		{ 3, 35603, "", "=q3=Greaves of the Blue Flight", "=ds=#s12#, #a4#"};
		{ 4, 35601, "", "=q3=Drakonid Arm Blade", "=ds=#h4#, #w13#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37153, "", "=q3=Gloves of the Crystal Gardener", "=ds=#s9#, #a1#"};
		{ 18, 37155, "", "=q3=Frozen Forest Kilt", "=ds=#s11#, #a3#"};
		{ 19, 37152, "", "=q3=Girdle of Ice", "=ds=#s10#, #a4#"};
		{ 20, 37151, "", "=q3=Band of Frosted Thorns", "=ds=#s13#"};
		Prev = "NexAnomalus";
		Next = "NexKeristrasza";
	};
	
	AtlasLoot_Data["NexKeristrasza"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35596, "", "=q3=Attuned Crystalline Boots", "=ds=#s12#, #a1#"};
		{ 3, 35597, "", "=q3=Band of Glittering Permafrost", "=ds=#s2#"};
		{ 4, 35595, "", "=q3=Glacier Sharpened Vileblade", "=ds=#h1#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37172, "", "=q4=Gloves of Glistening Runes", "=ds=#s9#, #a1#"};
		{ 18, 37170, "", "=q4=Interwoven Scale Bracers", "=ds=#s8#, #a3#"};
		{ 19, 37171, "", "=q4=Flame-Bathed Steel Girdle", "=ds=#s10#, #a4#"};
		{ 20, 37169, "", "=q4=War Mace of Unrequited Love", "=ds=#h3#, #w6#"};
		{ 22, 37165, "", "=q3=Crystal-Infused Tunic", "=ds=#s5#, #a2#"};
		{ 23, 37167, "", "=q3=Dragon Slayer's Sabatons", "=ds=#s12#, #a3#"};
		{ 24, 37166, "", "=q3=Sphere of Red Dragon's Blood", "=ds=#s14#"};
		{ 25, 37162, "", "=q3=Bulwark of the Noble Protector", "=ds=#w8#"};
		{ 27, 43665, "", "=q1=Keristrasza's Broken Heart", "=ds=#m3#"};
		Prev = "NexOrmorok";
	};
	
	AtlasLoot_Data["NexStoutbeard"] = {
		{ 1, 37728, "", "=q3=Cloak of the Enemy", "=ds=#s4#"};
		{ 2, 37731, "", "=q3=Opposed Stasis Leggings", "=ds=#s11#, #a1#"};
		{ 3, 37730, "", "=q3=Cleric's Linen Shoes", "=ds=#s12#, #a1#"};
		{ 4, 37729, "", "=q3=Grips of Sculptured Icicles", "=ds=#s9#, #a4#"};
	};

	AtlasLoot_Data["NexUnknown"] = {
	};

		-------------------
		--- Azjol-Nerub ---
		-------------------

	AtlasLoot_Data["AzjolNerub"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Krik'thir the Gatewatcher"], ""};
		{ 2, 35657, "", "=q3=Exquisite Spider-Silk Footwraps", "=ds=#s12#, #a1#"};
		{ 3, 35656, "", "=q3=Aura Focused Gauntlets", "=ds=#s9#, #a4#"};
		{ 4, 35655, "", "=q3=Cobweb Machete", "=ds=#h1#, #w4#"};
		{ 6, 0, "INV_Box_01", "=q6="..BabbleBoss["Hadronox"], ""};
		{ 7, 35660, "", "=q3=Spinneret Epaulets", "=ds=#s3#, #a2#"};
		{ 8, 35659, "", "=q3=Treads of Aspiring Heights", "=ds=#s12#, #a2#"};
		{ 9, 35658, "", "=q3=Life-Staff of the Web Lair", "=ds=#w9#"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Anub'arak"], ""};
		{ 17, 35663, "", "=q3=Charmed Silken Cord", "=ds=#s10#, #a1#"};
		{ 18, 35662, "", "=q3=Wing Cover Girdle", "=ds=#s10#, #a3#"};
		{ 19, 35661, "", "=q3=Signet of Arachnathid Command", "=ds=#s13#"};
		{ 21, 43411, "", "=q1=Anub'arak's Broken Husk", "=ds=#m3#"};
	};

	AtlasLoot_Data["AzjolNerubHEROIC"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Krik'thir the Gatewatcher"], ""};
		{ 2, 37218, "", "=q3=Stone-Worn Footwraps", "=ds=#s12#, #a1#"};
		{ 3, 37219, "", "=q3=Custodian's Chestpiece", "=ds=#s5#, #a2#"};
		{ 4, 37217, "", "=q3=Golden Limb Bands", "=ds=#s8#, #a4#"};
		{ 5, 37216, "", "=q3=Facade Shield of Glyphs", "=ds=#w8#"};
		{ 7, 0, "INV_Box_01", "=q6="..BabbleBoss["Hadronox"], ""};
		{ 8, 37222, "", "=q3=Egg Sac Robes", "=ds=#s5#, #a1#"};
		{ 9, 37230, "", "=q3=Grotto Mist Gloves", "=ds=#s9#, #a2#"};
		{ 10, 37221, "", "=q3=Hollowed Mandible Legplates", "=ds=#s12#, #a3#"};
		{ 11, 37220, "", "=q3=Essence of Gossamer", "=ds=#s14#"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Anub'arak"], ""};
		{ 17, 37242, "", "=q4=Sash of the Servant", "=ds=#s10#, #a1#"};
		{ 18, 37240, "", "=q4=Flamebeard's Bracers", "=ds=#s8#, #a4#"};
		{ 19, 37241, "", "=q4=Ancient Aligned Girdle", "=ds=#s10#, #a4#"};
		{ 20, 37238, "", "=q4=Rod of the Fallen Monarch", "=ds=#w12#"};
		{ 21, 37236, "", "=q3=Insect Vestments", "=ds=#s5#, #a2#"};
		{ 22, 37237, "", "=q3=Chitin Shell Greathelm", "=ds=#s1#, #a4#"};
		{ 23, 37232, "", "=q3=Ring of the Traitor King", "=ds=#s13#"};
		{ 24, 37235, "", "=q3=Crypt Lord's Deft Blade", "=ds=#h1#, #w10#"};
		{ 26, 43726, "", "=q1=The Idle Crown of Anub'arak", "=ds=#m3#"};
	};
--Most Heroic loot based on IDs
	AtlasLoot_Data["ANKrikthir"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35657, "", "=q3=Exquisite Spider-Silk Footwraps", "=ds=#s12#, #a1#"};
		{ 3, 35656, "", "=q3=Aura Focused Gauntlets", "=ds=#s9#, #a4#"};
		{ 4, 35655, "", "=q3=Cobweb Machete", "=ds=#h1#, #w4#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37218, "", "=q3=Stone-Worn Footwraps", "=ds=#s12#, #a1#"};
		{ 18, 37219, "", "=q3=Custodian's Chestpiece", "=ds=#s5#, #a2#"};
		{ 19, 37217, "", "=q3=Golden Limb Bands", "=ds=#s8#, #a4#"};
		{ 20, 37216, "", "=q3=Facade Shield of Glyphs", "=ds=#w8#"};
		Next = "ANHadronox";
	};

	AtlasLoot_Data["ANHadronox"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35660, "", "=q3=Spinneret Epaulets", "=ds=#s3#, #a2#"};
		{ 3, 35659, "", "=q3=Treads of Aspiring Heights", "=ds=#s12#, #a2#"};
		{ 4, 35658, "", "=q3=Life-Staff of the Web Lair", "=ds=#w9#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37222, "", "=q3=Egg Sac Robes", "=ds=#s5#, #a1#"};
		{ 18, 37230, "", "=q3=Grotto Mist Gloves", "=ds=#s9#, #a2#"};
		{ 19, 37221, "", "=q3=Hollowed Mandible Legplates", "=ds=#s12#, #a3#"};
		{ 20, 37220, "", "=q3=Essence of Gossamer", "=ds=#s14#"};
		Prev = "ANKrikthir";
		Next = "ANAnubarak";
	};

	AtlasLoot_Data["ANAnubarak"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 35663, "", "=q3=Charmed Silken Cord", "=ds=#s10#, #a1#"};
		{ 3, 35662, "", "=q3=Wing Cover Girdle", "=ds=#s10#, #a3#"};
		{ 4, 35661, "", "=q3=Signet of Arachnathid Command", "=ds=#s13#"};
		{ 6, 43411, "", "=q1=Anub'arak's Broken Husk", "=ds=#m3#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37242, "", "=q4=Sash of the Servant", "=ds=#s10#, #a1#"};
		{ 18, 37240, "", "=q4=Flamebeard's Bracers", "=ds=#s8#, #a4#"};
		{ 19, 37241, "", "=q4=Ancient Aligned Girdle", "=ds=#s10#, #a4#"};
		{ 20, 37238, "", "=q4=Rod of the Fallen Monarch", "=ds=#w12#"};
		{ 21, 37236, "", "=q3=Insect Vestments", "=ds=#s5#, #a2#"};
		{ 22, 37237, "", "=q3=Chitin Shell Greathelm", "=ds=#s1#, #a4#"};
		{ 23, 37232, "", "=q3=Ring of the Traitor King", "=ds=#s13#"};
		{ 24, 37235, "", "=q3=Crypt Lord's Deft Blade", "=ds=#h1#, #w10#"};
		{ 26, 43726, "", "=q1=The Idle Crown of Anub'arak", "=ds=#m3#"};
		Prev = "ANHadronox";
	};
	
	AtlasLoot_Data["ANUnknown"] = {
		Prev = "ANHadronox";
	};

		----------------------------------
		--- Ahn'kahet: The Old Kingdom ---
		----------------------------------
		
	AtlasLoot_Data["Ahnkahet"] = {
		{ 1, 0, "INV_Box_01", "=q6="..BabbleBoss["Prince Taldaram"], ""};
		{ 2, 35611, "", "=q3=Gloves of the Blood Prince", "=ds=#s9#, #a1#"};
		{ 3, 35610, "", "=q3=Slasher's Amulet", "=ds=#s2#"};
		{ 4, 35609, "", "=q3=Talisman of Scourge Command", "=ds=#s15#"};
		{ 6, 0, "INV_Box_01", "=q6="..BabbleBoss["Elder Nadox"], ""};
		{ 7, 35607, "", "=q3=Ahn'kahar Handwraps", "=ds=#s9#, #a1#"};
		{ 8, 35608, "", "=q3=Crawler-Emblem Belt", "=ds=#s10#, #a4#"};
		{ 9, 35606, "", "=q3=Blade of Nadox", "=ds=#h1#, #w4#"};
		{ 11, 0, "INV_Box_01", "=q6="..AL["Trash Mobs"], ""};
		{ 12, 35616, "", "=q3=Spored Tendrils Spaulders", "=ds=#s3#, #a3#"};
		{ 13, 35615, "", "=q3=Glowworm Cavern Bindings", "=ds=#s8#, #a3#"};
		{ 16, 0, "INV_Box_01", "=q6="..BabbleBoss["Jedoga Shadowseeker"], ""};
		{ 17, 43278, "", "=q3=Cloak of the Darkcaster", "=ds=#s4#"};
		{ 18, 43279, "", "=q3=Battlechest of the Twilight Cult", "=ds=#s12#, #a4#"};
		{ 19, 43277, "", "=q3=Jedoga's Greatring", "=ds=#s13#"};
		{ 21, 0, "INV_Box_01", "=q6="..BabbleBoss["Herald Volazj"], ""};
		{ 22, 35612, "", "=q3=Mantle of Echoing Bats", "=ds=#s3#, #a1#"};
		{ 23, 35613, "", "=q3=Pyramid Embossed Belt", "=ds=#s10#, #a2#"};
		{ 24, 35614, "", "=q3=Volazj's Sabatons", "=ds=#s12#, #a4#"};
	};

	AtlasLoot_Data["AKTaldaram"] = {
		{ 1, 35611, "", "=q3=Gloves of the Blood Prince", "=ds=#s9#, #a1#"};
		{ 2, 35610, "", "=q3=Slasher's Amulet", "=ds=#s2#"};
		{ 3, 35609, "", "=q3=Talisman of Scourge Command", "=ds=#s15#"};
		Next = "AKNakox";
	};

	AtlasLoot_Data["AKNakox"] = {
		{ 1, 35607, "", "=q3=Ahn'kahar Handwraps", "=ds=#s9#, #a1#"};
		{ 2, 35608, "", "=q3=Crawler-Emblem Belt", "=ds=#s10#, #a4#"};
		{ 3, 35606, "", "=q3=Blade of Nadox", "=ds=#h1#, #w4#"};
		Prev = "AKTaldaram";
		Next = "AKJedoga";
	};

	AtlasLoot_Data["AKJedoga"] = {
		{ 1, 43278, "", "=q3=Cloak of the Darkcaster", "=ds=#s4#"};
		{ 2, 43279, "", "=q3=Battlechest of the Twilight Cult", "=ds=#s12#, #a4#"};
		{ 3, 43277, "", "=q3=Jedoga's Greatring", "=ds=#s13#"};
		Prev = "AKTaldaram";
		Next = "AKVolazj";
	};
	
	AtlasLoot_Data["AKVolazj"] = {
		{ 1, 35612, "", "=q3=Mantle of Echoing Bats", "=ds=#s3#, #a1#"};
		{ 2, 35613, "", "=q3=Pyramid Embossed Belt", "=ds=#s10#, #a2#"};
		{ 3, 35614, "", "=q3=Volazj's Sabatons", "=ds=#s12#, #a4#"};
		Prev = "AKJedoga";
	};
-- 1-2 trash drops
	AtlasLoot_Data["AKUnknown"] = {
		{ 1, 35616, "", "=q3=Spored Tendrils Spaulders", "=ds=#s3#, #a3#"};
		{ 2, 35615, "", "=q3=Glowworm Cavern Bindings", "=ds=#s8#, #a3#"};
	};

		------------------------
		--- Drak'Tharon Keep ---
		------------------------

	AtlasLoot_Data["DTTrollgore"] = {
		{ 1, 35620, "", "=q3=Berserker's Horns", "=ds=#s1#, #a2#"};
		{ 2, 35619, "", "=q3=Infection Resistant Legguards", "=ds=#s11#, #a3#"};
		{ 3, 35618, "", "=q3=Troll Butcherer", "=ds=#h2#, #w10#"};
		Next = "DTNovos";
	};

	AtlasLoot_Data["DTNovos"] = {
		{ 1, 35632, "", "=q3=Robes of Novos", "=ds=#s5#, #a1#"};
		{ 2, 35631, "", "=q3=Crystal Pendant of Warding", "=ds=#s2#"};
		{ 3, 35630, "", "=q3=Summoner's Stone Gavel", "=ds=#h1#, #w6#"};
		Prev = "DTTrollgore";
		Next = "DTKingDred";
	};

	AtlasLoot_Data["DTKingDred"] = {
		{ 1, 35635, "", "=q3=Stable Master's Breeches", "=ds=#s11#, #a1#"};
		{ 2, 35634, "", "=q3=Scabrous-Hide Helm", "=ds=#s1#, #a2#"};
		{ 3, 35633, "", "=q3=Staff of the Great Reptile", "=ds=#w9#"};
		Prev = "DTNovos";
		Next = "DTTharonja";
	};

	AtlasLoot_Data["DTTharonja"] = {
		{ 1, 35638, "", "=q3=Helmet of Living Flesh", "=ds=#s1#, #a3#"};
		{ 2, 35637, "", "=q3=Muradin's Lost Greaves", "=ds=#s11#, #a4#"};
		{ 3, 35636, "", "=q3=Tharon'ja's Aegis", "=ds=#w8#"};
		Prev = "DTKingDred";
	};
--Trash drops
	AtlasLoot_Data["DTUnknown"] = {
		{ 1, 35640, "", "=q3=Darkweb Bindings", "=ds=#s8#, #a3#"};
		{ 2, 35641, "", "=q3=Scytheclaw Boots", "=ds=#s12#, #a3#"};
		{ 3, 35639, "", "=q3=Brighthelm of Guarding", "=ds=#s1#, #a4#"};
	};

		-----------------------
		--- The Violet Hold ---
		-----------------------
-- 1-2 trash drops ; Rest unknown
	AtlasLoot_Data["VHUnknown"] = {
		{ 1, 35653, "", "=q3=Dungeon Girdle", "=ds=#s10#, #a4#"};
		{ 2, 35652, "", "=q3=Incessant Torch", "=ds=#w12#"};
		{ 4, 35654, "", "=q3=Bindings of the Bastille", "=ds=#s8#, #a1#"};
		{ 5, 35646, "", "=q3=Lava Burn Gloves", "=ds=#s9#, #a1#"};
		{ 6, 35647, "", "=q3=Handguards of Rapid Pursuit", "=ds=#s9#, #a2#"};
		{ 7, 35644, "", "=q3=Xevozz's Belt", "=ds=#s10#, #a3#"};
		{ 8, 35643, "", "=q3=Spaulders of Ichoron", "=ds=#s3#, #a4#"};
		{ 9, 35645, "", "=q3=Prison Warden's Shotgun", "=ds=#w5#"};
		{ 10, 35642, "", "=q3=Riot Shield", "=ds=#w8#"};
	};

		---------------
		--- Gundrak ---
		---------------

	AtlasLoot_Data["GundrakSladran"] = {
		{ 1, 35584, "", "=q3=Embroidered Gown of Zul'drak", "=ds=#s5#, #a1#"};
		{ 2, 35585, "", "=q3=Cannibal's Legguards", "=ds=#s11#, #a3#"};
		{ 3, 35583, "", "=q3=Witch Doctor's Wildstaff", "=ds=#w9#"};
		Next = "GundrakMoorabi";
	};
	
	AtlasLoot_Data["GundrakMoorabi"] = {
		{ 1, 35588, "", "=q3=Forlorn Breastplate of War", "=ds=#s5#, #a4#"}; -- assumed drop
		{ 2, 35589, "", "=q3=Arcane Focal Signet", "=ds=#s13#"};
		{ 3, 35587, "", "=q3=Frozen Scepter of Necromancy", "=ds=#h3#, #w6#"};
		Prev = "GundrakSladran";
		Next = "GundrakBloodstone";
	};
--drops assumed based on IDs
	AtlasLoot_Data["GundrakBloodstone"] = {
		{ 1, 35591, "", "=q3=Shoulderguards of the Ice Troll", "=ds=#s2#, #a2#"};
		{ 2, 35592, "", "=q3=Hauberk of Totemic Mastery", "=ds=#s5#, #a3#"};
		{ 3, 35590, "", "=q3=Drakkari Hunting Bow", "=ds=#w2#"};
		Prev = "GundrakMoorabi";
		Next = "GundrakGaldarah";
	};

	AtlasLoot_Data["GundrakGaldarah"] = {
		{ 1, 43305, "", "=q3=Shroud of Akali", "=ds=#s4#"};
		{ 2, 43309, "", "=q3=Amulet of the Stampede", "=ds=#s2#"};
		{ 3, 43306, "", "=q3=Gal'darah's Signet", "=ds=#s13#"};
		Prev = "GundrakBloodstone";
	};
-- 1-2 trash drops
	AtlasLoot_Data["GundrakUnknown"] = {
		{ 1, 35594, "", "=q3=Snowmelt Silken Cinch", "=ds=#s10#, #a1#"};
		{ 2, 35593, "", "=q3=Steel Bear Trap Bracers", "=ds=#s8#, #a4#"};
	};

		----------------------
		--- Halls of Stone ---
		----------------------

	AtlasLoot_Data["HoSMaiden"] = {
		{ 1, 38614, "", "=q3=Embrace of Sorrow", "=ds=#s4#"};
		{ 2, 38613, "", "=q3=Chain of Fiery Orbs", "=ds=#s2#"};
		{ 3, 38611, "", "=q3=Ringlet of Repose", "=ds=#s13#"};
		Next = "HoSKrystallus";
	};

	AtlasLoot_Data["HoSKrystallus"] = {
		{ 1, 35673, "", "=q3=Leggings of Burning Gleam", "=ds=#s11#, #a1#"};
		{ 2, 35672, "", "=q3=Hollow Geode Helm", "=ds=#s1#, #a3#"};
		{ 3, 35670, "", "=q3=Brann's Lost Mining Helmet", "=ds=#s1#, #a4#"};
		Prev = "HoSMaiden";
		Next = "HoSSjonnir";
	};

	AtlasLoot_Data["HoSSjonnir"] = {
		{ 1, 35679, "", "=q3=Static Cowl", "=ds=#s1#, #a1#"};
		{ 2, 35678, "", "=q3=Ironshaper's Legplates", "=ds=#s11#, #a4#"};
		{ 3, 35680, "", "=q3=Amulet of Wills", "=ds=#s2#"};
		Prev = "HoSKrystallus";
		Next = "HoSRescueMission";
	};

	AtlasLoot_Data["HoSRescueMission"] = {
		{ 1, 35677, "", "=q3=Cosmos Vestments", "=ds=#s5#, #a2#"};
		{ 2, 35676, "", "=q3=Constellation Leggings", "=ds=#s11#, #a2#"};
		{ 3, 35675, "", "=q3=Linked Armor of the Sphere", "=ds=#s5#, #a3#"};
		Prev = "HoSSjonnir";
	};
--Trash drops
	AtlasLoot_Data["HoSUnknown"] = {
		{ 1, 35682, "", "=q3=Rune Giant Bindings", "=ds=#s8#, #a1#"};
		{ 2, 35683, "", "=q3=Palladium Ring", "=ds=#s13#"};
		{ 3, 35681, "", "=q3=Unrelenting Blade", "=ds=#h1#, #w4#"};
	};

		--------------------------
		--- Halls of Lightning ---
		--------------------------

	AtlasLoot_Data["HoLGjarngrin"] = {
		{ 1, 36982, "", "=q3=Mantle of Electrical Charges", "=ds=#s3#, #a1#"};
		{ 2, 36979, "", "=q3=Gjarngrin Family Signet", "=ds=#s13#"};
		{ 3, 36981, "", "=q3=Hardened Vrykul Throwing Axe", "=ds=#w11#"};
		{ 4, 36980, "", "=q3=Hewn Sparring Quarterstaff", "=ds=#w9#"};
		Next = "HoLIonar";
	};

	AtlasLoot_Data["HoLIonar"] = {
		{ 1, 39536, "", "=q3=Thundercloud Grasps", "=ds=#s9#, #a1#"};
		{ 2, 39657, "", "=q3=Tornado Cuffs", "=ds=#s8#, #a3#"};
		{ 3, 39534, "", "=q3=Pauldrons of the Lightning Revenant", "=ds=#s3#, #a4#"};
		{ 4, 39535, "", "=q3=Ionar's Girdle", "=ds=#s10#, #a4#"};
		Prev = "HoLGjarngrin";
		Next = "HoLVolkhan";
	};

	AtlasLoot_Data["HoLVolkhan"] = {
		{ 1, 36983, "", "=q3=Cape of Seething Steam", "=ds=#s4#"};
		{ 2, 36985, "", "=q3=Volkhan's Hood", "=ds=#s1#, #a1#"};
		{ 3, 36986, "", "=q3=Kilt of Molten Golems", "=ds=#s11#, #a3#"};
		{ 4, 36984, "", "=q3=Eternally Folded Blade", "=ds=#h1#, #w10#"};
		Prev = "HoLIonar";
		Next = "HoLKronus";
	};

	AtlasLoot_Data["HoLKronus"] = {
		{ 1, 36991, "", "=q3=Raiments of the Titans", "=ds=#s5#, #a1#"};
		{ 2, 36996, "", "=q3=Hood of the Furtive Assassin", "=ds=#s1#, #a2#"};
		{ 3, 36992, "", "=q3=Leather-Braced Chain Leggings", "=ds=#s11#, #a3#"};
		{ 4, 36995, "", "=q3=Fists of Loken", "=ds=#s9#, #a4#"};
		{ 5, 36988, "", "=q3=Chaotic Spiral Amulet", "=ds=#s2#"};
		{ 6, 36993, "", "=q3=Seal of the Pantheon", "=ds=#s14#"};
		{ 7, 36989, "", "=q3=Ancient Measuring Rod", "=ds=#w12#"};
		{ 8, 36994, "", "=q3=Projectile Activator", "=ds=#w5#"};
		Prev = "HoLVolkhan";
	};

	AtlasLoot_Data["HoLUnknown"] = {
	};

		-----------------------------------
		--- Caverns of Time: Stratholme ---
		-----------------------------------

	AtlasLoot_Data["CoTStratholmeMeathook"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37083, "", "=q3=Kilt of Sewn Flesh", "=ds=#s11#, #a2#"};
		{ 3, 37082, "", "=q3=Slaughterhouse Sabatons", "=ds=#s12#, #a4#"};
		{ 4, 37079, "", "=q3=Enchanted Wire Stitching", "=ds=#s13#"};
		{ 5, 37081, "", "=q3=Meathook's Slicer", "=ds=#h1#, #w10#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37675, "", "=q3=Legplates of Steel Implants", "=ds=#s11#, #a4#"};
		{ 18, 37678, "", "=q3=Bile-Cured Gloves", "=ds=#s9#, #a2#"};
		Next = "CoTStratholmeEpoch";
	};

	AtlasLoot_Data["CoTStratholmeEpoch"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37106, "", "=q3=Ouroboros Belt", "=ds=#s10#, #a2#"};
		{ 3, 37105, "", "=q3=Treads of Altered History", "=ds=#s12#, #a3#"};
		{ 4, 37096, "", "=q3=Necklace of the Chrono-Lord", "=ds=#s2#"};
		{ 5, 37099, "", "=q3=Sempiternal Staff", "=ds=#w9#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37687, "", "=q3=Gloves of Distorted Time", "=ds=#s9#, #a1#"};
		Prev = "CoTStratholmeMeathook";
		Next = "CoTStratholmeSalramm";
	};

	AtlasLoot_Data["CoTStratholmeSalramm"] = {
		{ 1, 37084, "", "=q3=Flowing Cloak of Command", "=ds=#s4#"};
		{ 2, 37095, "", "=q3=Waistband of the Thuzadin", "=ds=#s10#, #a3#"};
		{ 3, 37088, "", "=q3=Spiked Metal Cilice", "=ds=#s10#, #a4#"};
		{ 4, 37086, "", "=q3=Tome of Salramm", "=ds=#s15#"};
		Prev = "CoTStratholmeEpoch";
		Next = "CoTStratholmeMalGanis";
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
		{ 17, 37696, "", "=q4=Plague-Infected Bracers", "=ds=#s8#, #a2#"};
		{ 18, 37695, "", "=q4=Legguards of Nature's Power", "=ds=#s11#, #a3#"};
		{ 19, 37694, "", "=q4=Band of Guile", "=ds=#s13#"};
		{ 20, 37693, "", "=q4=Greed", "=ds=#h3#, #w13#"};
		{ 21, 43085, "", "=q4=Royal Crest of Lordaeron", "=ds=#w8#"};
		{ 23, 37689, "", "=q3=Pendant of the Nathrezim", "=ds=#s2#"};
		{ 24, 37692, "", "=q3=Pierce's Pistol", "=ds=#w5#"};
		Prev = "CoTStratholmeSalramm";
	};
---1-5 Trash drops, Rest unknown Heroic
	AtlasLoot_Data["CoTStratholmeUnknown"] = {
		{ 1, 37117, "", "=q3=King's Square Bracers", "=ds=#s8#, #a2#"};
		{ 2, 37116, "", "=q3=Epaulets of Market Row", "=ds=#s3#, #a3#"};
		{ 3, 37115, "", "=q3=Crusader's Square Pauldrons", "=ds=#s3#, #a4#"};
		{ 4, 37822, "", "=q3=Twisted Puzzle-Ring", "=ds=#s13#"};
		{ 5, 37822, "", "=q3=Gwyneth's Runed Dragonwand", "=ds=#w12#"};
		{ 7, 37679, "", "=q3=Spaulders of the Abomination", "=ds=#s3#, #a3#"};
		{ 8, 37680, "", "=q3=Belt of Unified Souls", "=ds=#s10#, #a1#"};
		{ 9, 37681, "", "=q3=Gavel of the Fleshcrafter", "=ds=#h3#, #w6#"};
		{ 10, 37682, "", "=q3=Bindings of Dark Will", "=ds=#s8#, #a1#"};
		{ 11, 37683, "", "=q3=Necromancer's Amulet", "=ds=#s2#"};
		{ 12, 37684, "", "=q3=Forgotten Shadow Hood", "=ds=#s1#, #a1#"};
		{ 13, 37685, "", "=q3=Mobius Band", "=ds=#s13#"};
		{ 14, 37686, "", "=q3=Cracked Epoch Grasps", "=ds=#s9#, #a3#"};
		{ 15, 37688, "", "=q3=Legplates of the Infinite Drakonid", "=ds=#s11#, #a4#"};
		{ 16, 37691, "", "=q3=Mantle of Deceit", "=ds=#s3#, #a1#"};
	};

		-----------------------
		--- Utgard Pinnacle ---
		-----------------------

	AtlasLoot_Data["UPSkadi"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37055, "", "=q3=Silken Amice of the Ymirjar", "=ds=#s3#, #a1#"};
		{ 3, 37057, "", "=q3=Drake Rider's Tunic", "=ds=#s5#, #a2#"};
		{ 4, 37056, "", "=q3=Harpooner's Striders", "=ds=#s12#, #a4#"};
		{ 5, 37053, "", "=q3=Amulet of Deflected Blows", "=ds=#s2#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37384, "", "=q3=Staff of Wayward Principles", "=ds=#w8#"};
		Next = "UPYmiron";
	};

	AtlasLoot_Data["UPYmiron"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37067, "", "=q3=Ceremonial Pyre Mantle", "=ds=#s3#, #a2#"};
		{ 3, 37062, "", "=q3=Crown of Forgotten Kings", "=ds=#s1#, #a4#"};
		{ 4, 37066, "", "=q3=Ancient Royal Legguards", "=ds=#s11#, #a4#"};
		{ 5, 37058, "", "=q3=Signet of Ranulf", "=ds=#s13#"};
		{ 6, 37064, "", "=q3=Vestige of Haldor", "=ds=#s14#"};
		{ 7, 37065, "", "=q3=Ymiron's Blade", "=ds=#h1#, #w10#"};
		{ 8, 37060, "", "=q3=Jeweled Coronation Sword", "=ds=#h3#, #w10#"};
		{ 9, 37061, "", "=q3=Tor's Crest", "=ds=#w8#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37408, "", "=q4=Girdle of Bane", "=ds=#s10#, #a1#"};
		{ 18, 37409, "", "=q4=Gilt-Edged Leather Gauntlets", "=ds=#s9#, #a2#"};
		{ 19, 37407, "", "=q4=Sovereign's Belt", "=ds=#s10#, #a3#"};
		{ 20, 37390, "", "=q3=Meteorite Whetstone", "=ds=#s14#"};
		Prev = "UPSkadi";
		Next = "UPSorrowgrave";
	};

	AtlasLoot_Data["UPSorrowgrave"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37043, "", "=q3=Tear-Linked Gauntlets", "=ds=#s9#, #a3#"};
		{ 3, 37040, "", "=q3=Svala's Bloodied Shackles", "=ds=#s8#, #a4#"};
		{ 4, 37037, "", "=q3=Ritualistic Athame", "=ds=#h1#, #w4#"};
		{ 5, 37038, "", "=q3=Brazier Igniter", "=ds=#w12#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37370, "", "=q3=Cuffs of the Trussed Hall", "=ds=#s8#, #a1#"};
		{ 18, 37369, "", "=q3=Sorrowgrave's Breeches", "=ds=#s11#, #a1#"};
		{ 19, 37368, "", "=q3=Silent Spectator Shoulderpads", "=ds=#s3#, #a2#"};
		{ 20, 37367, "", "=q3=Echoing Stompers", "=ds=#s12#, #a4#"};
		Prev = "UPYmiron";
		Next = "UPPalehoof";
	};

	AtlasLoot_Data["UPPalehoof"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j1#", ""};
		{ 2, 37048, "", "=q3=Shroud of Resurrection", "=ds=#s4#"};
		{ 3, 37052, "", "=q3=Reanimated Armor", "=ds=#s5#, #a4#"};
		{ 4, 37051, "", "=q3=Seal of Valgarde", "=ds=#s15#"};
		{ 5, 37050, "", "=q3=Trophy Gatherer", "=ds=#w2#"};
		{ 16, 0, "INV_Box_01", "=q6=#j3#", ""};
		{ 17, 37376, "", "=q3=Ferocious Pauldrons of the Rhino", "=ds=#s3#, #a4#"};
		{ 18, 37371, "", "=q3=Ring of the Frenzied Wolvar", "=ds=#s14#"};
		Prev = "UPSorrowgrave";
	};
--- 1-3 Trash ; Rest heroic
	AtlasLoot_Data["UPUnknown"] = {
		{ 1, 37070, "", "=q3=Tundra Wolf Boots", "=ds=#s12#, #a2#"};
		{ 2, 37069, "", "=q3=Dragonflayer Seer's Bindings", "=ds=#s8#, #a3#"};
		{ 3, 37068, "", "=q3=Berserker's Sabatons", "=ds=#s12#, #a4#"};
		{ 5, 37401, "", "=q3=Red Sword of Courage", "=ds=#h3#, #w10#"};	
		{ 6, 37395, "", "=q3=Ornamented Plate Regalia", "=ds=#s5#, #a4#"};
		{ 7, 37379, "", "=q3=Skadi's Iron Belt", "=ds=#s10#, #a4#"};
		{ 8, 37397, "", "=q3=Gold Amulet of Kings", "=ds=#s2#"};
		{ 9, 37410, "", "=q3=Tracker's Balanced Knives", "=ds=#w11#"};
	};

		------------------
		--- The Oculus ---
		------------------

	AtlasLoot_Data["OcuDrakos"] = {
		{ 1, 36945, "", "=q3=Verdisa's Cuffs of Dreaming", "=ds=#s8#, #a1#"};
		{ 2, 36946, "", "=q3=Runic Cage Chestpiece", "=ds=#s5#, #a3#"};
		{ 3, 36943, "", "=q3=Timeless Beads of Eternos", "=ds=#s2#"};
		{ 4, 36944, "", "=q3=Lifeblade of Belgaristrasz", "=ds=#h1#, #w4#"};
		Next = "OcuUrom";
	};

	AtlasLoot_Data["OcuUrom"] = {
		{ 1, 36954, "", "=q3=The Conjurer's Slippers", "=ds=#s12#, #a1#"};
		{ 2, 36951, "", "=q3=Sidestepping Handguards", "=ds=#s9#, #a2#"};
		{ 3, 36953, "", "=q3=Spaulders of Skillful Maneuvers", "=ds=#s3#, #a3#"};
		{ 4, 36952, "", "=q3=Girdle of Obscuring", "=ds=#s10#, #a4#"};
		Prev = "OcuDrakos";
		Next = "OcuCloudstrider";
	};

	AtlasLoot_Data["OcuCloudstrider"] = {
		{ 1, 36947, "", "=q3=Centrifuge Core Cloak", "=ds=#s4#"};
		{ 2, 36949, "", "=q3=Gloves of the Azure-Lord", "=ds=#s9#, #a1#"};
		{ 3, 36948, "", "=q3=Horned Helm of Varos", "=ds=#s1#, #a2#"};
		{ 4, 36950, "", "=q3=Wing Commander's Breastplate", "=ds=#s5#, #a4#"};
		Prev = "OcuUrom";
		Next = "OcuEregos";
	};
	
	AtlasLoot_Data["OcuEregos"] = {
		{ 1, 36973, "", "=q3=Vestments of the Scholar", "=ds=#s5#, #a1#"};
		{ 2, 36971, "", "=q3=Headguard of Westrift", "=ds=#s1#, #a3#"};
		{ 3, 36969, "", "=q3=Plate Helm of the Egg-Guardian", "=ds=#s1#, #a4#"};
		{ 4, 36974, "", "=q3=Eredormu's Ornamented Chestguard", "=ds=#s5#, #a4#"};
		{ 5, 36961, "", "=q3=Dragonflight Great-Ring", "=ds=#s13#"};
		{ 6, 36972, "", "=q3=Tome of Arcane Phenomena", "=ds=#s14#"};
		{ 7, 36962, "", "=q3=Wyrmclaw Battleaxe", "=ds=#h2#, #w1#"};
		{ 8, 36975, "", "=q3=Malygos's Favor", "=ds=#w9#"};
		Prev = "OcuCloudstrider";
	};
--Trash drops
	AtlasLoot_Data["OcuUnknown"] = {
		{ 1, 36978, "", "=q3=Ley-Whelphide Belt", "=ds=#s6#, #a2#"};
		{ 2, 36977, "", "=q3=Bindings of the Construct", "=ds=#s8#, #a4#"};
		{ 3, 36976, "", "=q3=Ring-Lord's Leggings", "=ds=#s11#, #a1#"};
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
		{ 8, 39270, "", "=q4=Hatestrike", "=ds=#h1#, #w10#"};
		{ 9, 39271, "", "=q4=Blade of Dormant Memories", "=ds=#h3#, #w4#"};
	};
	
	AtlasLoot_Data["Naxx80Patchwerk25Man"] = {
		{ 1, 40270, "", "=q4=Boots of Septic Wounds", "=ds=#s11#, #a2#"};
		{ 2, 40272, "", "=q4=Girdle of the Gambit", "=ds=#s10#, #a3#"};
		{ 3, 40261, "", "=q4=Crude Discolored Battlegrips", "=ds=#s9#, #a4#"};
		{ 4, 40259, "", "=q4=Waistguard of Divine Grace", "=ds=#s10#, #a4#"};
		{ 5, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"}; --Sartharion25Man??
		{ 6, 40107, "", "=q4=Sand-Worn Band", "=ds=#s13#"};
		{ 7, 40268, "", "=q4=Libram of Tolerance", "=ds=#s16#, #w16#"};
		{ 8, 40264, "", "=q4=Split Greathammer", "=ds=#h1#, #w6#"};
		{ 9, 40265, "", "=q4=Arrowsong", "=ds=#w2"};
	};
	
	AtlasLoot_Data["Naxx80Grobbulus"] = {
		{ 1, 39285, "", "=q4=Handgrips of Turmoil", "=ds=#s9#, #a1#"};
		{ 2, 39283, "", "=q4=Putrescent Bands", "=ds=#s8#, #a2#"};
		{ 3, 39297, "", "=q4=Blistered Belt of Decay", "=ds=#s10#, #a2#"};
		{ 4, 39280, "", "=q4=Leggings of Innumerable Barbs", "=ds=#s11#, #a4#"};
		{ 5, 39282, "", "=q4=Bone-Linked Amulet", "=ds=#s2#"};
		{ 6, 39277, "", "=q4=Sealing Ring of Grobbulus", "=ds=#s13#"};
		{ 7, 39281, "", "=q4=Infection Repulser", "=ds=#h3#, #w6#"};
		{ 8, 39276, "", "=q4=The Skull of Ruin", "=ds=#w8#"};
	};
	
	AtlasLoot_Data["Naxx80Grobbulus25Man"] = {
		{ 1, 40253, "", "=q4=Shawl of the Old Maid", "=ds=#s4#"};
		{ 2, 40287, "", "=q4=Cowl of Vanity", "=ds=#s1#, #a1#"};
		{ 3, 40289, "", "=q4=Sympathetic Amice", "=ds=#s3#, #a1#"};
		{ 4, 40282, "", "=q4=Slime Stream Bands", "=ds=#s8#, #a3#"};
		{ 5, 40275, "", "=q4=Depraved Linked Belt", "=ds=#s10#, #a3#"};
		{ 6, 40257, "", "=q4=Defender's Code", "=ds=#s14#"};
		{ 7, 40284, "", "=q4=Plague Igniter", "=ds=#w12#"};
	};
	
	AtlasLoot_Data["Naxx80Gluth"] = {
		{ 1, 39308, "", "=q4=Girdle of Lenience", "=ds=#s11#, #a2#"};
		{ 2, 39199, "", "=q4=Watchful Eye", "=ds=#s15#"}; -- need to check
		{ 16, 40622, "", "=q4=Spaulders of the Lost Conqueror", ""};
		{ 17, 40623, "", "=q4=Spaulders of the Lost Protector", ""};
		{ 18, 40624, "", "=q4=Spaulders of the Lost Vanquisher", ""};
	};
	
	AtlasLoot_Data["Naxx80Gluth25Man"] = {
		{ 1, 40261, "", "=q4=Crude Discolored Battlegrips", "=ds=#s9#, #a4#"};
	};
	
	AtlasLoot_Data["Naxx80Thaddius"] = {
		{ 1, 39294, "", "=q4=Arc-Scorched Helmet", "=ds=#s1#, #a3#"};
		{ 2, 39292, "", "=q4=Repelling Charge", "=ds=#s14#"};
		{ 3, 39291, "", "=q4=Torment of the Banished", "=ds=#h4#, #w10#"};
		{ 16, 40619, "", "=q4=Leggings of the Lost Conqueror", ""};
		{ 17, 40620, "", "=q4=Leggings of the Lost Protector", ""};
		{ 18, 40621, "", "=q4=Leggings of the Lost Vanquisher", ""};
	};
	
	AtlasLoot_Data["Naxx80Thaddius25Man"] = {
		{ 1, 40301, "", "=q4=Cincture of Polarity", "=ds=#s10#, #a1#"};
		{ 2, 40296, "", "=q4=Cover of Silence", "=ds=#s1#, #a2#"};
		{ 3, 40302, "", "=q4=Benefactor's Gauntlets", "=ds=#s9#, #a3#"};
		{ 16, 40634, "", "=q4=Legplates of the Lost Conqueror", ""};
		{ 17, 40635, "", "=q4=Legplates of the Lost Protector", ""};
		{ 18, 40636, "", "=q4=Legplates of the Lost Vanquisher", ""};
	};

	AtlasLoot_Data["Naxx80AnubRekhan"] = {
		{ 1, 39190, "", "=q4=Agonal Sash", "=ds=#s10#, #a1#"};
		{ 2, 39191, "", "=q4=Splint-Bound Leggings", "=ds=#s11#, #a2#"};
		{ 3, 39189, "", "=q4=Boots of Persistence", "=ds=#s12#, #a3#"};
		{ 4, 39188, "", "=q4=Chivalric Chestguard", "=ds=#s5#, #a4#"};
		{ 5, 39139, "", "=q4=Ravaging Sabatons", "=ds=#s12#, #a4#"};
		{ 6, 39146, "", "=q4=Collar of Dissolution", "=ds=#s2#"};
		{ 7, 39193, "", "=q4=Band of Neglected Pleas", "=ds=#s13#"};
		{ 8, 39141, "", "=q4=Deflection Band", "=ds=#s13#"};
		{ 9, 39140, "", "=q4=Knife of Incision", "=ds=#h1#, #w4#"};
	};
	
	AtlasLoot_Data["Naxx80AnubRekhan25Man"] = {
		{ 1, 39721, "", "=q4=Sash of the Parlor", "=ds=#s10#, #a1#"};
		{ 1, 39704, "", "=q4=Pauldrons of Unnatural Death", "=ds=#s3#, #a4#"};
		{ 1, 39717, "", "=q4=Inexorable Sabatons", "=ds=#s12#, #a4#"};
		{ 1, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"}; -- need to check
		{ 1, 40208, "", "=q4=Cryptfiend's Bite", "=ds=#w7#"};
	};
	
	AtlasLoot_Data["Naxx80Faerlina"] = {
		{ 1, 39216, "", "=q4=Sash of Mortal Desire", "=ds=#s10#, #a1#"};
		{ 2, 39215, "", "=q4=Boots of the Follower", "=ds=#s12#, #a2#"};
		{ 3, 39196, "", "=q4=Boots of the Worshiper", "=ds=#s12#, #a2#"};
		{ 4, 39217, "", "=q4=Avenging Combat Leggings", "=ds=#s11#, #a3#"};
		{ 5, 39194, "", "=q4=Rusted-Link Spiked Gauntlets", "=ds=#s12#, #a3#"};
		{ 6, 39198, "", "=q4=Frostblight Pauldrons", "=ds=#s3#, #a4#"};
		{ 7, 39195, "", "=q4=Bracers of Lost Sentiments", "=ds=#s8#, #a4#"};
		{ 8, 39197, "", "=q4=Gauntlets of the Master", "=ds=#s9#, #a4#"};
		{ 9, 39200, "", "=q4=Grieving Spellblade", "=ds=#h3#, #w10#"};
		{ 10, 39199, "", "=q4=Watchful Eye", "=ds=#s15#"}; --need to check
	};
	
	AtlasLoot_Data["Naxx80Faerlina25Man"] = {
		{ 1, 39732, "", "=q4=Faerlina's Madness", "=ds=#s1#, #a1#"};
		{ 1, 39735, "", "=q4=Belt of False Dignity", "=ds=#s10#, #a1#"};
		{ 1, 39727, "", "=q4=Dislocating Handguards", "=ds=#s9#, #a2#"};
		{ 1, 39729, "", "=q4=Bracers of the Tyrant", "=ds=#s8#, #a4#"};
		{ 1, 40108, "", "=q4=Seized Beauty", "=ds=#s13#"};
		{ 1, 39728, "", "=q4=Totem of Misery", "=ds=#s16#, #w15#"};
	};
	
	AtlasLoot_Data["Naxx80Maexxna"] = {
		{ 1, 39225, "", "=q4=Cloak of Armed Strife", "=ds=#s4#"};
		{ 2, 39230, "", "=q4=Spaulders of the Monstrosity", "=ds=#s3#, #a2#"};
		{ 3, 39228, "", "=q4=Web Cocoon Grips", "=ds=#s9#, #a4#"};
		{ 4, 39224, "", "=q4=Leggings of Discord", "=ds=#s11#, #a2#"};
		{ 5, 39231, "", "=q4=Timeworn Silken Band", "=ds=#s13#"};
		{ 6, 39229, "", "=q4=Embrace of the Spider", "=ds=#s14#"};
		{ 7, 39226, "", "=q4=Maexxna's Femur", "=ds=#h1#, #w6#"};
		{ 8, 39221, "", "=q4=Wraith Spear", "=ds=#w7#"};	
		{ 9, 39233, "", "=q4=Aegis of Damnation", "=ds=#w8#"};	
	};

	AtlasLoot_Data["Naxx80Maexxna25Man"] = {
		{ 1, 40252, "", "=q4=Cloak of the Shadowed Sun", "=ds=#s4#"}; --need to check
		{ 2, 40060, "", "=q4=Distorted Limbs", "=ds=#s11#, #a1#"};
		{ 3, 39765, "", "=q4=Sinner's Bindings", "=ds=#s8#, #a2#"};
		{ 4, 39761, "", "=q4=Infectious Skitterer Leggings", "=ds=#s11#, #a2#"};
		{ 5, 39764, "", "=q4=Bindings of the Hapless Prey", "=ds=#s8#, #a4#"};
	};

	AtlasLoot_Data["Naxx80Razuvious"] = {
		{ 1, 39310, "", "=q4=Mantle of the Extensive Mind", "=ds=#s3#, #a1#"};
		{ 2, 39309, "", "=q4=Leggings of the Instructor", "=ds=#s11#, #a1#"};
		{ 3, 39299, "", "=q4=Rapid Attack Gloves", "=ds=#s9#, #a2#"};
		{ 4, 39308, "", "=q4=Girdle of Lenience", "=ds=#s10#, #a2#"};
		{ 5, 39307, "", "=q4=Iron Rings of Endurance", "=ds=#s8#, #a3#"};
		{ 6, 39298, "", "=q4=Waistguard of the Tutor", "=ds=#s10#, #a4#"};
		{ 7, 39306, "", "=q4=Plated Gloves of Relief", "=ds=#s10#, #a4#"};
		{ 8, 39311, "", "=q4=Scepter of Murmuring Spirits", "=ds=#s15#"};
		{ 9, 39296, "", "=q4=Accursed Bow of the Elite", "=ds=#w2#"};
	};
	
	AtlasLoot_Data["Naxx80Razuvious25Man"] = {
		{ 3, 40324, "", "=q4=Bands of Mutual Respect", "=ds=#s8#, #a3#"};
		{ 3, 40316, "", "=q4=Gauntlets of Guiding Touch", "=ds=#s9#, #a4#"};
		{ 3, 40320, "", "=q4=Faithful Steel Sabatons", "=ds=#s12#, #a4#"};
		{ 3, 40069, "", "=q4=Heritage", "=ds=#s2#"};
	};

	AtlasLoot_Data["Naxx80Gothik"] = {
		{ 1, 39297, "", "=q4=Cloak of Darkening", "=ds=#s4#"};--need to check on wowhead
		{ 2, 39386, "", "=q4=Tunic of Dislocation", "=ds=#s5#, #a2#"};
		{ 3, 39391, "", "=q4=Heinous Mail Chestguard", "=ds=#s5#, #a3#"};
		{ 4, 39379, "", "=q4=Spectral Rider's Girdle", "=ds=#s10#, #a3#"};
		{ 5, 39345, "", "=q4=Girdle of the Ascended Phantom", "=ds=#s10#, #a4#"};
		{ 6, 39369, "", "=q4=Sabatons of Deathlike Gloom", "=ds=#s12#, #a4#"};
		{ 7, 39392, "", "=q4=Veiled Amulet of Life", "=ds=#s2#"};
		{ 8, 39389, "", "=q4=Signet of the Malevolent", "=ds=#s2#"};
		{ 9, 39388, "", "=q4=Spirit-World Glass", "=ds=#s14#"};
		{ 10, 39394, "", "=q4=Slayer of the Lifeless", "=ds=#h1#, #w10#"};
	};
	
	AtlasLoot_Data["Naxx80Gothik25Man"] = {
		{ 1, 40252, "", "=q4=Cloak of the Shadowed Sun", "=ds=#s4#"}; --need to check
		{ 1, 40329, "", "=q4=Hood of the Exodus", "=ds=#s1#, #a2#"};
		{ 1, 40341, "", "=q4=Shackled Cinch", "=ds=#s10#, #a2#"};
		{ 1, 40335, "", "=q4=Touch of Horror", "=ds=#w12#"};
		};
	
	AtlasLoot_Data["Naxx80FourHorsemen"] = {
		{ 1, 39396, "", "=q4=Gown of Blaumeux", "=ds=#s5#, #a1#"};
		{ 2, 39397, "", "=q4=Pauldrons of Havoc", "=ds=#s3#, #a3#"};
		{ 3, 39394, "", "=q4=Charmed Cierge", "=ds=#w9#"};
		{ 16, 40610, "", "=q4=Chestguard of the Lost Conqueror", ""};
		{ 17, 40611, "", "=q4=Chestguard of the Lost Protector", ""};
		{ 18, 40612, "", "=q4=Chestguard of the Lost Vanquisher", ""};
	};
	
	AtlasLoot_Data["Naxx80FourHorsemen25Man"] = {
		{ 1, 40344, "", "=q4=Helm of the Grave", "=ds=#s1#, #a3#"};
		{ 2, 40350, "", "=q4=Urn of Lost Memories", "=ds=#s15#"};
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
		{ 1, 40198, "", "=q4=Bands of Impurity", "=ds=#s8#, #a1#"};
		{ 2, 40602, "", "=q4=Robes of Mutation", "=ds=#s5#, #a1#"};
		{ 3, 40193, "", "=q4=Tunic of Masked Suffering", "=ds=#s5#, #a3#"};
		{ 4, 40185, "", "=q4=Shoulderguards of Opportunity", "=ds=#s3#, #a4#"};
		{ 5, 40187, "", "=q4=Poignant Sabatons", "=ds=#s12#, #a4#"};
		{ 6, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"}; --????
		{ 7, 40107, "", "=q4=Sand-Worn Band", "=ds=#s13#"};
		{ 8, 40191, "", "=q4=Libram of Radiance", "=ds=#s16#, #w16#"};
	};

	AtlasLoot_Data["Naxx80Heigan"] = {
		{ 1, 39252, "", "=q4=Preceptor's Bindings", "=ds=#s8#, #a1#"};
		{ 2, 39254, "", "=q4=Saltarello Shoes", "=ds=#s12#, #a1#"};
		{ 3, 39247, "", "=q4=Cuffs of Dark Shadows", "=ds=#s8#, #a2#"};
		{ 4, 39248, "", "=q4=Tunic of the Lost Pack", "=ds=#s5#, #a3#"};
		{ 5, 39251, "", "=q4=Necrogenic Belt", "=ds=#s10#, #a3#"};
		{ 6, 39249, "", "=q4=Shoulderpads of Bloodshed", "=ds=#s3#, #a4#"};
		{ 7, 39246, "", "=q4=Amulet of Autopsy", "=ds=#s2#"};
		{ 8, 39250, "", "=q4=Ring of Holy Cleansing", "=ds=#s13#"};
		{ 9, 39245, "", "=q4=Demise", "=ds=#h2#, #w6#"};
		{ 10, 39255, "", "=q4=Staff of the Plague Beast", "=ds=#w9#"};
	};
	
	AtlasLoot_Data["Naxx80Heigan25Man"] = {
		{ 1, 40234, "", "=q4=Heigan's Putrid Vestments", "=ds=#s5#, #a1#"};
		{ 1, 40209, "", "=q4=Bindings of the Decrepit", "=ds=#s8#, #a3#"};
		{ 1, 40237, "", "=q4=Eruption-Scared Boots", "=ds=#s12#, #a3#"};
		{ 1, 40203, "", "=q4=Breastplate of Tormented Rage", "=ds=#s5#, #a4#"};
		{ 1, 40255, "", "=q4=Dying Curse", "=ds=#s13#"};
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
		{ 2, 40243, "", "=q4=Footwraps of Vile Deceit", "=ds=#s11#, #a2#"};
		{ 3, 40244, "", "=q4=The Impossible Dream", "=ds=#h3#, #w6#"};
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
		{ 6, 39403, "", "=q4=Helm of the Unsubmissive", "=ds=#s1#, #a4#"};
		{ 7, 39398, "", "=q4=Massive Skeletal Ribcage", "=ds=#s5#, #a4#"};
		{ 8, 39401, "", "=q4=Circle of Death", "=ds=#s13#"};
		{ 9, 39407, "", "=q4=Circle of Life", "=ds=#s13#"};
		{ 11, 44569, "", "=q4=Key to the Focusing Iris", "=ds=#m2#"};
		{ 12, 44582, "", "=q4=Key to the Focusing Iris", "=ds=#m4#"};
	};
	
	AtlasLoot_Data["Naxx80Sapphiron25Man"] = {
		{ 1, 40376, "", "=q4=Legwraps of the Defeated Dragon", "=ds=#s11#, #a1#"};
		{ 2, 40366, "", "=q4=Platehelm of the Great Wyrm", "=ds=#s1#, #a4#"};
		{ 3, 40371, "", "=q4=Bandit's Insignia", "=ds=#s14#"};
		{ 4, 40382, "", "=q4=Soul of the Dead", "=ds=#s14#"};
		{ 11, 44577, "", "=q4=Heroic Key to the Focusing Iris", "=ds=#m2#"};
		{ 12, 44581, "", "=q4=Heroic Key to the Focusing Iris", "=ds=#m4#"};
	};
	
	AtlasLoot_Data["Naxx80KelThuzad"] = {
		{ 1, 39425, "", "=q4=Cloak of the Dying", "=ds=#s4#"};
		{ 2, 39421, "", "=q4=Gem of Imprisoned Vassals", "=ds=#s2#"};
		{ 3, 39420, "", "=q4=Anarchy", "=ds=#h1#, #w4#"};
		{ 4, 39424, "", "=q4=The Soulblade", "=ds=#h3#, #w4#"};
		{ 4, 39423, "", "=q4=Hammer of the Astral Plane", "=ds=#h3#, #w6#"};
		{ 5, 39416, "", "=q4=Kel'Thuzad's Reach", "=ds=#h3#, #w13#"};
		{ 6, 39417, "", "=q4=Death's Bite", "=ds=#h2#, #w1#"};
		{ 7, 39422, "", "=q4=Staff of the Plaguehound", "=ds=#w9#"};
		{ 8, 39426, "", "=q4=Wand of the Archlich", "=ds=#w12#"};
		{ 9, 39419, "", "=q4=Nerubian Conquerer", "=ds=#w5#"};
		{ 16, 40616, "", "=q4=Helm of the Lost Conqueror", ""};
		{ 17, 40617, "", "=q4=Helm of the Lost Protector", ""};
		{ 18, 40618, "", "=q4=Helm of the Lost Vanquisher", ""};
	};
	
	AtlasLoot_Data["Naxx80KelThuzad25Man"] = {
		{ 16, 40631, "", "=q4=Crown of the Lost Conqueror", ""};
		{ 17, 40632, "", "=q4=Crown of the Lost Protector", ""};
		{ 18, 40633, "", "=q4=Crown of the Lost Vanquisher", ""};
	};

	AtlasLoot_Data["Naxx80Trash"] = {
		{ 1, 39467, "", "=q4=Minion Bracers", "=ds=#s8#, #a4#"};
		{ 2, 39470, "", "=q4=Medallion of the Disgraced", "=ds=#s2#"};
		{ 3, 39472, "", "=q4=Chain of Latent Energies", "=ds=#s2#"};
		{ 4, 39427, "", "=q4=Omen of Ruin", "=ds=#h1#, #w10#"};
		{ 5, 39468, "", "=q4=The Stray", "=ds=#h4#, #w13#"};
		{ 6, 39473, "", "=q4=Contortion", "=ds=#w12#"};
	};

--10 Man
	AtlasLoot_Data["Naxx80Unknown"] = {
		{ 2, 39192, "", "=q4=Gloves of Dark Gestures", "=ds=#s9#, #a1#"};--wowhead says two bosses. wait for more data
		{ 9, 40752, "", "=q4=Emblem of Heroism", "=ds="};
		{ 11, 39284, "", "=q4=Miasma Mantle", "=ds=#s3#, #a1#"};
		{ 16, 39278, "", "=q4=Bands of Anxiety", "=ds=#s8#, #a3#"};
		{ 19, 39405, "", "=q4=Helmet of the Inner Sanctum", "=ds=#s1#, #a3#"};
		Next = "Naxx80Unknown2";
	};

--25 Man	
	AtlasLoot_Data["Naxx80Unknown2"] = {
		{ 1, 40351, "", "=q4=Mantle of the Fatigued Sage", "=ds=#s3#, #a1#"};
		{ 1, 40381, "", "=q4=Sympathy", "=ds=#s5#, #a1#"};
		{ 1, 40062, "", "=q4=Digested Silken Robes", "=ds=#s5#, #a1#"};
		{ 1, 40325, "", "=q4=Bindings of the Expansive Mind", "=ds=#s8#, #a1#"};
		{ 1, 39731, "", "=q4=Punctilious Bindings", "=ds=#s8#, #a1#"};
		{ 1, 39733, "", "=q4=Gloves of Token Respect", "=ds=#s9#, #a1#"};
		{ 1, 40303, "", "=q4=Wraps of the Persecuted", "=ds=#s9#, #a1#"};
		{ 1, 40197, "", "=q4=Gloves of the Fallen Wizard", "=ds=#s9#, #a1#"};
		{ 1, 40271, "", "=q4=Sash of Solitude", "=ds=#s10#, #a1#"};
		{ 1, 39720, "", "=q4=Leggings of Atrophy", "=ds=#s11#, #a1#"};
		{ 1, 40326, "", "=q4=Boots of Forlorn Wishes", "=ds=#s12#, #a1#"};
		{ 1, 40236, "", "=q4=Serene Echoes", "=ds=#s12#, #a1#"};
		{ 1, 40246, "", "=q4=Boots of Impetuous Ideals", "=ds=#s12#, #a1#"};
		{ 1, 40329, "", "=q4=Hood of the Exodus", "=ds=#s1#, #a2#"};
		{ 1, 40304, "", "=q4=Headpiece of Fungal Bloom", "=ds=#s1#, #a2#"};
		{ 1, 39768, "", "=q4=Cowl of the Perished", "=ds=#s1#, #a2#"};
		{ 1, 40439, "", "=q4=Mantle of the Eternal Sentinel", "=ds=#s3#, #a2#"};
		{ 1, 40063, "", "=q4=Mantle of Shattered Kinship", "=ds=#s3#, #a2#"};
		{ 1, 40277, "", "=q4=Tunic of Indulgence", "=ds=#s5#, #a2#"};
		{ 1, 30319, "", "=q4=Chestpiece of Suspicion", "=ds=#s5#, #a2#"};
		{ 1, 39756, "", "=q4=Tunic of Prejudice", "=ds=#s5#, #a2#"};
		{ 1, 40249, "", "=q4=Vest of Vitality", "=ds=#s5#, #a2#"};
		{ 1, 39722, "", "=q4=Swarm Bindings", "=ds=#s8#, #a2#"};
		{ 1, 40186, "", "=q4=Thrusting Bands", "=ds=#s8#, #a2#"};
		{ 1, 40238, "", "=q4=Gloves of the Dancing Bear", "=ds=#s9#, #a2#"};
		{ 1, 40205, "", "=q4=Stalk-Skin Belt", "=ds=#s10#, #a2#"};
		{ 1, 40260, "", "=q4=Belt of the Tortured", "=ds=#s10#, #a2#"};
		{ 1, 40341, "", "=q4=Shackled Cinch", "=ds=#s10#, #a2#"};
		{ 1, 40200, "", "=q4=Belt of Potent Chanting", "=ds=#s10#, #a2#"};
		{ 1, 40285, "", "=q4=Desecrated Past", "=ds=#s11#, #a2#"};
		{ 1, 40379, "", "=q4=Legguards of the Boneyard", "=ds=#s11#, #a2#"};
		{ 1, 40409, "", "=q4=Boots of the Escaped  Captive", "=ds=#s11#, #a2#"};
		{ 1, 0, "", "=q4=", "=ds=#s11#, #a2#"};
		{ 2, 39393, "", "=q4=Claymore of Ancient Power", "=ds=#h2#, #w10#"};
		{ 3, 39758, "", "=q4=The Jawbone", "=ds=#h2#, #w6#"};
		Prev = "Naxx80Unknown";
		Next = "Naxx80Unknown3";
	};
--Buyable Items/Set Tokens
	AtlasLoot_Data["Naxx80Unknown3"] = {
		{ 1, 40700, "", "=q4=Protective Barricade of the Light", "=ds=#w8#"};
		{ 2, 40701, "", "=q4=Crygil's Discarded Plate Panel", "=ds=#w8#"};
		Prev = "Naxx80Unknown2";
	};
	
		------------------------
		--- Obsidian Sanctum ---
		------------------------

	AtlasLoot_Data["Sartharion"] = {
		{ 1, 40428, "", "=q4=Titan's Outlook", "=ds=#s1#, #a4#"};
		{ 2, 40427, "", "=q4=Circle of Arcane Streams", "=ds=#s2#"};
		{ 3, 40426, "", "=q4=Signet of the Accord", "=ds=#s13#"};
		{ 4, 40433, "", "=q4=Wyrmrest Band", "=ds=#s13#"};
		{ 5, 40429, "", "=q4=Crimson Steel", "=ds=#h1#, #w13#"};
		{ 6, 43345, "", "=q4=Dragon Hide Bag", "=ds=#e1#"};
	};

	AtlasLoot_Data["Sartharion25Man"] = {
		{ 1, 40437, "", "=q4=Concealment Shoulderpads", "=ds=#s3#, #a2#"};
		{ 2, 40409, "", "=q4=Boots of the Escaped Captive", "=ds=#s12#, #a2#"};
		{ 3, 40451, "", "=q4=Hyaline Helm of the Sniper", "=ds=#s1#, #a3#"};
		{ 4, 40438, "", "=q4=Council Chamber Epaulets", "=ds=#s3#, #a3#"};
		{ 5, 40453, "", "=q4=Chestplate of the Great Aspects", "=ds=#s5#, #a4#"};
		{ 6, 40446, "", "=q4=Dragon Brood Legguards", "=ds=#s11#, #a4#"};
		{ 7, 40071, "", "=q4=Chains of Adoration", "=ds=#s2#"}; --Patchwerk25Man??
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
	};
	
	AtlasLoot_Data["Malygos25Man"] = {
		{ 1, 40555, "", "=q4=Mantle of Dissemination", "=ds=#s3#, #a1#"};
		{ 2, 40560, "", "=q4=Leggings of the Wanton Spellcaster", "=ds=#s11#, #a1#"};
		{ 3, 40594, "", "=q4=Spaulders of Catatonia", "=ds=#s3#, #a2#"};
		{ 4, 40541, "", "=q4=Frosted Adroit Handguards", "=ds=#s9#, #a2#"};
		{ 5, 40588, "", "=q4=Tunic of the Artifact Guardian", "=ds=#s5#, #a3#"};
		{ 6, 40564, "", "=q4=Winter Spectacle Gloves", "=ds=#s9#, #a3#"};
		{ 7, 40549, "", "=q4=Boots of the Renewed Flight", "=ds=#s12#, #a3#"};
		{ 8, 40590, "", "=q4=Elevated Lair Pauldrons", "=ds=#s3#, #a4#"};
	};

	----------------
	--- Factions ---
	----------------

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
		{ 17, 44073, "", "=q4=Frenzyheart Insignia of Fury", "=ds=#s14#"};
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
		{ 9, 44512, "", "=q3=Pattern: Nerubian Reinforced Quiver", "=ds=#p8# (415)"};
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
		{ 16, 0, "INV_Helmet_138", "=q6=#r4#", ""};
		{ 17, 44104, "", "=q3=Fishy Cinch", "=ds=#s10#, #a1#" };
		{ 18, 44106, "", "=q3=Glitterscale Wrap", "=ds=#s10#, #a2#" };
		{ 19, 44110, "", "=q3=Sharkjaw Cap", "=ds=#s1#, #a3#" };
		{ 20, 44109, "", "=q3=Toothslice Helm", "=ds=#s1#, #a3#" };
		{ 21, 44112, "", "=q3=Glimmershell Shoulder Protectors", "=ds=#s3#, #a4#" };
		{ 22, 44111, "", "=q3=Gold Star Spaulders", "=ds=#s3#, #a4#" };
		{ 23, 44108, "", "=q3=Shinygem Rod", "=ds=#w12#" };
		{ 24, 41724, "", "=q3=Design: Sundered Forest Emerald", "=ds=#p12# (390)"};
		{ 25, 39878, "", "=q1=Mysterious Egg", "=ds="};
		{ 8, 0, "INV_Helmet_138", "=q6=#r5#", ""};
		{ 9, 44074, "", "=q4=Oracle Talisman of Ablution", "=ds=#s14#"};
		Back = "REPMENU_WOTLK";
	};

		-------------------------
		--- The Sons of Hodir ---
		-------------------------
		
	AtlasLoot_Data["TheSonsofHodir1"] = {
		{ 1, 0, "Spell_Holy_DivinePurpose", "=q6=#r3#", ""};
		{ 2, 44190, "", "=q3=Spaulders of Frozen Knives", "=ds=#s3#, #a2#" };
		{ 3, 44189, "", "=q3=Giant Ring Belt", "=ds=#s10#, #a3#" };
		{ 4, 44510, "", "=q3=Pattern: Mammoth Mining Bag", "=ds=#p7# (415)"};
		{ 5, 44137, "", "=q3=Arcanum of the Frosty Soul", "=ds=#e17#"};
		{ 6, 44131, "", "=q3=Lesser Inscription of the Axe", "=ds=#s3# #e17#"};
		{ 7, 44130, "", "=q3=Lesser Inscription of the Crag", "=ds=#s3# #e17#"};
		{ 8, 44132, "", "=q3=Lesser Inscription of the Pinnacle", "=ds=#s3# #e17#"};
		{ 9, 44129, "", "=q3=Lesser Inscription of the Storm ", "=ds=#s3# #e17#"};
		{ 16, 0, "Spell_Holy_DivinePurpose", "=q6=#r4#", ""};
		{ 17, 43958, "", "=q4=Reins of the Ice Mammoth", "=ds=#e12# =ec1=#m7#"};
		{ 18, 44080, "", "=q4=Reins of the Ice Mammoth", "=ds=#e12# =ec1=#m6#"};
		{ 19, 44194, "", "=q3=Giant-Friend Kilt", "=ds=#s11#, #a2#" };
		{ 20, 44195, "", "=q3=Spaulders of the Giant Lords", "=ds=#s3#, #a4#" };
		{ 21, 44193, "", "=q3=Broken Stalactite", "=ds=#h1#, #w4#" };
		{ 22, 44192, "", "=q3=Stalactite Chopper", "=ds=#h1#, #w1#" };
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
		{ 9, 42184, "", "=q1=Pattern: Glacial Bag", "=ds=#p7# (445)"};
		Prev = "TheSonsofHodir1";
		Back = "REPMENU_WOTLK";
	};

		---------------------------
		--- The Wyrmrest Accord ---
		---------------------------

	AtlasLoot_Data["TheWyrmrestAccord"] = {
		{ 1, 0, "Ability_Druid_Eclipse", "=q6=#r1#", ""};
		{ 2, 43156, "", "=q1=Tabard of the Wyrmrest Accord", "=ds=#s7#"};
		{ 4, 0, "Ability_Druid_Eclipse", "=q6=#r3#", ""};
		{ 5, 44188, "", "=q3=Cloak of Peaceful Resolutions", "=ds=#s4#" };
		{ 6, 44196, "", "=q3=Sash of the Wizened Wyrm", "=ds=#s10#, #a1#" };
		{ 7, 44197, "", "=q3=Bracers of Accorded Courtesy", "=ds=#s8#, #a4#" };
		{ 8, 44187, "", "=q3=Fang of Truth", "=ds=#h1#, #w10#" };
		{ 9, 44140, "", "=q3=Arcanum of the Eclipsed Moon", "=ds=#s1# #e17#" };
		{ 16, 0, "Ability_Druid_Eclipse", "=q6=#r4#", ""};
		{ 17, 44200, "", "=q3=Ancestral Sinew Wristguards", "=ds=#s8#, #a1#" };
		{ 18, 44198, "", "=q3=Breastplate of the Solemn Council", "=ds=#s5#, #a4#" };
		{ 19, 44201, "", "=q3=Sabatons of Draconic Vigor", "=ds=#s12#, #a4#" };
		{ 20, 44199, "", "=q3=Gavel of the Brewing Storm", "=ds=#h3#, #w6#" };
		{ 21, 44152, "", "=q3=Arcanum of Blissful Mending", "=ds=#s1# #e17#" };
		{ 22, 42185, "", "=q1=Pattern: Mysterious Bag", "=ds=#p8# (440)"};
		{ 24, 0, "Ability_Druid_Eclipse", "=q6=#r5#", ""};
		{ 25, 44202, "", "=q4=Sandals of Crimson Fury", "=ds=#s12#, #a1#" };
		{ 26, 44203, "", "=q4=Dragonfriend Bracers", "=ds=#s8#, #a2#" };
		{ 27, 44204, "", "=q4=Grips of Fierce Pronouncements", "=ds=#s9#, #a3#" };
		{ 28, 44205, "", "=q4=Legplates of Bloody Reprisal", "=ds=#s11#, #a4#" };
		{ 29, 43955, "", "=q4=Reins of the Red Drake", "=ds=#e12#" };
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
		{ 2, 40817, "", "=q3=Savage Gladiator's Dreadplate Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 40857, "", "=q3=Savage Gladiator's Dreadplate Shoulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 40779, "", "=q3=Savage Gladiator's Dreadplate Chestpiece", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 40799, "", "=q3=Savage Gladiator's Dreadplate Gauntlets", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 40837, "", "=q3=Savage Gladiator's Dreadplate Legguards", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 9, 40820, "", "=q4=Hateful Gladiator's Dreadplate Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 40860, "", "=q4=Hateful Gladiator's Dreadplate Shoulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 40781, "", "=q4=Hateful Gladiator's Dreadplate Chestpiece", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 40803, "", "=q4=Hateful Gladiator's Dreadplate Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 40841, "", "=q4=Hateful Gladiator's Dreadplate Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Deathknight_DeathStrike", "=q6=#arenas10#", ""};
		{ 17, 40824, "", "=q4=Deadly Gladiator's Dreadplate Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 40863, "", "=q4=Deadly Gladiator's Dreadplate Shoulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40784, "", "=q4=Deadly Gladiator's Dreadplate Chestpiece", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 40806, "", "=q4=Deadly Gladiator's Dreadplate Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 40845, "", "=q4=Deadly Gladiator's Dreadplate Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80DruidBalance"] = {
		{ 1, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_1#", ""};
		{ 2, 41324, "", "=q3=Savage Gladiator's Wyrmhide Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41278, "", "=q3=Savage Gladiator's Wyrmhide Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41313, "", "=q3=Savage Gladiator's Wyrmhide Robes", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41290, "", "=q3=Savage Gladiator's Wyrmhide Gloves", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41301, "", "=q3=Savage Gladiator's Wyrmhide Legguards", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_1#", ""};
		{ 9, 41325, "", "=q4=Hateful Gladiator's Wyrmhide Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41279, "", "=q4=Hateful Gladiator's Wyrmhide Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41314, "", "=q4=Hateful Gladiator's Wyrmhide Robes", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41291, "", "=q4=Hateful Gladiator's Wyrmhide Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41302, "", "=q4=Hateful Gladiator's Wyrmhide Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_1#", ""};
		{ 17, 41326, "", "=q4=Deadly Gladiator's Wyrmhide Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41280, "", "=q4=Deadly Gladiator's Wyrmhide Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41315, "", "=q4=Deadly Gladiator's Wyrmhide Robes", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41292, "", "=q4=Deadly Gladiator's Wyrmhide Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41303, "", "=q4=Deadly Gladiator's Wyrmhide Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80DruidFeral"] = {
		{ 1, 0, "Ability_Druid_Maul", "=q6=#arenas1_2#", ""};
		{ 2, 41675, "", "=q3=Savage Gladiator's Dragonhide Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41712, "", "=q3=Savage Gladiator's Dragonhide Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41658, "", "=q3=Savage Gladiator's Dragonhide Robes", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41770, "", "=q3=Savage Gladiator's Dragonhide Gloves", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41664, "", "=q3=Savage Gladiator's Dragonhide Legguards", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Ability_Druid_Maul", "=q6=#arenas1_2#", ""};
		{ 9, 41676, "", "=q4=Hateful Gladiator's Dragonhide Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41713, "", "=q4=Hateful Gladiator's Dragonhide Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41659, "", "=q4=Hateful Gladiator's Dragonhide Robes", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41771, "", "=q4=Hateful Gladiator's Dragonhide Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41665, "", "=q4=Hateful Gladiator's Dragonhide Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Ability_Druid_Maul", "=q6=#arenas1_2#", ""};
		{ 17, 41677, "", "=q4=Deadly Gladiator's Dragonhide Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41714, "", "=q4=Deadly Gladiator's Dragonhide Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41660, "", "=q4=Deadly Gladiator's Dragonhide Robes", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41772, "", "=q4=Deadly Gladiator's Dragonhide Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41666, "", "=q4=Deadly Gladiator's Dragonhide Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};
	
	AtlasLoot_Data["PvP80DruidRestoration"] = {
		{ 1, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", ""};
		{ 2, 41269, "", "=q3=Savage Gladiator's Kodohide Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41271, "", "=q3=Savage Gladiator's Kodohide Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41272, "", "=q3=Savage Gladiator's Kodohide Robes", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41268, "", "=q3=Savage Gladiator's Kodohide Gloves", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41270, "", "=q3=Savage Gladiator's Kodohide Legguards", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", ""};
		{ 9, 41319, "", "=q4=Hateful Gladiator's Kodohide Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41273, "", "=q4=Hateful Gladiator's Kodohide Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41308, "", "=q4=Hateful Gladiator's Kodohide Robes", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41284, "", "=q4=Hateful Gladiator's Kodohide Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41296, "", "=q4=Hateful Gladiator's Kodohide Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", ""};
		{ 17, 41320, "", "=q4=Deadly Gladiator's Kodohide Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41274, "", "=q4=Deadly Gladiator's Kodohide Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41309, "", "=q4=Deadly Gladiator's Kodohide Robes", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41286, "", "=q4=Deadly Gladiator's Kodohide Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41297, "", "=q4=Deadly Gladiator's Kodohide Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80Hunter"] = {
		{ 1, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", ""};
		{ 2, 41154, "", "=q3=Savage Gladiator's Chain Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41214, "", "=q3=Savage Gladiator's Chain Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41084, "", "=q3=Savage Gladiator's Chain Armor", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41140, "", "=q3=Savage Gladiator's Chain Gauntlets", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41202, "", "=q3=Savage Gladiator's Chain Leggings", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", ""};
		{ 9, 41155, "", "=q4=Hateful Gladiator's Chain Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41215, "", "=q4=Hateful Gladiator's Chain Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41085, "", "=q4=Hateful Gladiator's Chain Armor", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41141, "", "=q4=Hateful Gladiator's Chain Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41203, "", "=q4=Hateful Gladiator's Chain Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", ""};
		{ 17, 41156, "", "=q4=Deadly Gladiator's Chain Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41216, "", "=q4=Deadly Gladiator's Chain Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41086, "", "=q4=Deadly Gladiator's Chain Armor", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41142, "", "=q4=Deadly Gladiator's Chain Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41204, "", "=q4=Deadly Gladiator's Chain Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80Mage"] = {
		{ 1, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", ""};
		{ 2, 41943, "", "=q3=Savage Gladiator's Silk Cowl", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41962, "", "=q3=Savage Gladiator's Silk Amice", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41949, "", "=q3=Savage Gladiator's Silk Raiment", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41968, "", "=q3=Savage Gladiator's Silk Handguards", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41956, "", "=q3=Savage Gladiator's Silk", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", ""};
		{ 9, 41944, "", "=q4=Hateful Gladiator's Silk Cowl", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41963, "", "=q4=Hateful Gladiator's Silk Amice", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41950, "", "=q4=Hateful Gladiator's Silk Raiment", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41969, "", "=q4=Hateful Gladiator's Silk Handguards", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41957, "", "=q4=Hateful Gladiator's Silk Trousers", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", ""};
		{ 17, 41945, "", "=q4=Deadly Gladiator's Silk Cowl", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41964, "", "=q4=Deadly Gladiator's Silk Amice", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41951, "", "=q4=Deadly Gladiator's Silk Raiment", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41970, "", "=q4=Deadly Gladiator's Silk Handguards", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41958, "", "=q4=Deadly Gladiator's Silk Trousers", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80PaladinRetribution"] = {
		{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_1#", ""};
		{ 2, 40818, "", "=q3=Savage Gladiator's Scaled Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 40858, "", "=q3=Savage Gladiator's Scaled Shoulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 40780, "", "=q3=Savage Gladiator's Scaled Chestpiece", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 40798, "", "=q3=Savage Gladiator's Scaled Gauntlets", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 40838, "", "=q3=Savage Gladiator's Scaled Legguards", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_1#", ""};
		{ 9, 40821, "", "=q4=Hateful Gladiator's Scaled Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 40861, "", "=q4=Hateful Gladiator's Scaled Shoulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 40782, "", "=q4=Hateful Gladiator's Scaled Chestpiece", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 40802, "", "=q4=Hateful Gladiator's Scaled Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 40842, "", "=q4=Hateful Gladiator's Scaled Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_1#", ""};
		{ 17, 40825, "", "=q4=Deadly Gladiator's Scaled Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 40864, "", "=q4=Deadly Gladiator's Scaled Shoulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40785, "", "=q4=Deadly Gladiator's Scaled Chestpiece", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 40805, "", "=q4=Deadly Gladiator's Scaled Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 40846, "", "=q4=Deadly Gladiator's Scaled Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80PaladinHoly"] = {
		{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_2#", ""};
		{ 2, 40930, "", "=q3=Savage Gladiator's Ornamented Headcover", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 40960, "", "=q3=Savage Gladiator's Ornamented Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 40898, "", "=q3=Savage Gladiator's Ornamented Chestguard", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 40918, "", "=q3=Savage Gladiator's Ornamented Gloves", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 40936, "", "=q3=Savage Gladiator's Ornamented Legplates", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_2#", ""};
		{ 9, 40931, "", "=q4=Hateful Gladiator's Ornamented Headcover", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 40961, "", "=q4=Hateful Gladiator's Ornamented Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 40904, "", "=q4=Hateful Gladiator's Ornamented Gloves", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 40925, "", "=q4=Hateful Gladiator's Ornamented Chestguard", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 40937, "", "=q4=Hateful Gladiator's Ornamented Legplates", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_2#", ""};
		{ 17, 40932, "", "=q4=Deadly Gladiator's Ornamented Headcover", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 40962, "", "=q4=Deadly Gladiator's Ornamented Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40905, "", "=q4=Deadly Gladiator's Ornamented Chestguard", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 40926, "", "=q4=Deadly Gladiator's Ornamented Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 40938, "", "=q4=Deadly Gladiator's Ornamented Legplates", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80PriestShadow"] = {
		{ 1, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", ""};
		{ 2, 41912, "", "=q3=Savage Gladiator's Satin Hood", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41930, "", "=q3=Savage Gladiator's Satin Mantle", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41918, "", "=q3=Savage Gladiator's Satin Robe", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41937, "", "=q3=Savage Gladiator's Satin Gloves", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41924, "", "=q3=Savage Gladiator's Satin Leggings", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", ""};
		{ 9, 41913, "", "=q4=Hateful Gladiator's Satin Hood", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41931, "", "=q4=Hateful Gladiator's Satin Mantle", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41919, "", "=q4=Hateful Gladiator's Satin Robe", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41938, "", "=q4=Hateful Gladiator's Satin Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41925, "", "=q4=Hateful Gladiator's Satin Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", ""};
		{ 17, 41914, "", "=q4=Deadly Gladiator's Satin Hood", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41933, "", "=q4=Deadly Gladiator's Satin Mantle", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41920, "", "=q4=Deadly Gladiator's Satin Robe", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41939, "", "=q4=Deadly Gladiator's Satin Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41926, "", "=q4=Deadly Gladiator's Satin Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80PriestHoly"] = {
		{ 1, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", ""};
		{ 2, 41848, "", "=q3=Savage Gladiator's Mooncloth Hood", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41850, "", "=q3=Savage Gladiator's Mooncloth Mantle", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41851, "", "=q3=Savage Gladiator's Mooncloth Robe", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41847, "", "=q3=Savage Gladiator's Mooncloth Gloves", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41849, "", "=q3=Savage Gladiator's Mooncloth Leggings", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", ""};
		{ 9, 41852, "", "=q4=Hateful Gladiator's Mooncloth Hood", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41867, "", "=q4=Hateful Gladiator's Mooncloth Mantle", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41857, "", "=q4=Hateful Gladiator's Mooncloth Robe", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41872, "", "=q4=Hateful Gladiator's Mooncloth Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41862, "", "=q4=Hateful Gladiator's Mooncloth Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", ""};
		{ 17, 41853, "", "=q4=Deadly Gladiator's Mooncloth Hood", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41868, "", "=q4=Deadly Gladiator's Mooncloth Mantle", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41858, "", "=q4=Deadly Gladiator's Mooncloth Robe", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41873, "", "=q4=Deadly Gladiator's Mooncloth Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41863, "", "=q4=Deadly Gladiator's Mooncloth Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80Rogue"] = {
		{ 1, 0, "Ability_BackStab", "=q6=#arenas6#", ""};
		{ 2, 41644, "", "=q3=Savage Gladiator's Leather Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41646, "", "=q3=Savage Gladiator's Leather Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41647, "", "=q3=Savage Gladiator's Leather Tunic", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41643, "", "=q3=Savage Gladiator's Leather Gloves", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41645, "", "=q3=Savage Gladiator's Leather Legguards", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Ability_BackStab", "=q6=#arenas6#", ""};
		{ 9, 41670, "", "=q4=Hateful Gladiator's Leather Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41681, "", "=q4=Hateful Gladiator's Leather Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41648, "", "=q4=Hateful Gladiator's Leather Tunic", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41765, "", "=q4=Hateful Gladiator's Leather Gloves", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41653, "", "=q4=Hateful Gladiator's Leather Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Ability_BackStab", "=q6=#arenas6#", ""};
		{ 17, 41671, "", "=q4=Deadly Gladiator's Leather Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41682, "", "=q4=Deadly Gladiator's Leather Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41649, "", "=q4=Deadly Gladiator's Leather Tunic", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41766, "", "=q4=Deadly Gladiator's Leather Gloves", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41654, "", "=q4=Deadly Gladiator's Leather Legguards", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80ShamanElemental"] = {
		{ 1, 0, "Spell_Nature_Lightning", "=q6=#arenas7_1#", ""};
		{ 2, 41016, "", "=q3=Savage Gladiator's Mail Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41041, "", "=q3=Savage Gladiator's Mail Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 40987, "", "=q3=Savage Gladiator's Mail Armor", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41004, "", "=q3=Savage Gladiator's Mail Gauntlets", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41030, "", "=q3=Savage Gladiator's Mail Leggings", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Nature_Lightning", "=q6=#arenas7_1#", ""};
		{ 9, 41017, "", "=q4=Hateful Gladiator's Mail Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41042, "", "=q4=Hateful Gladiator's Mail Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 40989, "", "=q4=Hateful Gladiator's Mail Armor", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41005, "", "=q4=Hateful Gladiator's Mail Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41031, "", "=q4=Hateful Gladiator's Mail Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Nature_Lightning", "=q6=#arenas7_1#", ""};
		{ 17, 41018, "", "=q4=Deadly Gladiator's Mail Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41043, "", "=q4=Deadly Gladiator's Mail Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40991, "", "=q4=Deadly Gladiator's Mail Armor", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41006, "", "=q4=Deadly Gladiator's Mail Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41032, "", "=q4=Deadly Gladiator's Mail Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};
	
	AtlasLoot_Data["PvP80ShamanEnhancement"] = {
		{ 1, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", ""};
		{ 2, 41148, "", "=q3=Savage Gladiator's Linked Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41208, "", "=q3=Savage Gladiator's Linked Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41078, "", "=q3=Savage Gladiator's Linked Armor", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 41134, "", "=q3=Savage Gladiator's Linked Gauntlets", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41160, "", "=q3=Savage Gladiator's Linked Leggings", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", ""};
		{ 9, 41149, "", "=q4=Hateful Gladiator's Linked Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41209, "", "=q4=Hateful Gladiator's Linked Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 41079, "", "=q4=Hateful Gladiator's Linked Armor", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 41135, "", "=q4=Hateful Gladiator's Linked Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41162, "", "=q4=Hateful Gladiator's Linked Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", ""};
		{ 17, 41150, "", "=q4=Deadly Gladiator's Linked Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41210, "", "=q4=Deadly Gladiator's Linked Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41080, "", "=q4=Deadly Gladiator's Linked Armor", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41136, "", "=q4=Deadly Gladiator's Linked Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41198, "", "=q4=Deadly Gladiator's Linked Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80ShamanRestoration"] = {
		{ 1, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_1#", ""};
		{ 2, 41010, "", "=q3=Savage Gladiator's Ringmail Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 41024, "", "=q3=Savage Gladiator's Ringmail Spaulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 40986, "", "=q3=Savage Gladiator's Ringmail Armor", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 40998, "", "=q3=Savage Gladiator's Ringmail Gauntlets", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 41023, "", "=q3=Savage Gladiator's Ringmail Leggings", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_1#", ""};
		{ 9, 41011, "", "=q4=Hateful Gladiator's Ringmail Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 41036, "", "=q4=Hateful Gladiator's Ringmail Spaulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 40988, "", "=q4=Hateful Gladiator's Ringmail Armor", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 40999, "", "=q4=Hateful Gladiator's Ringmail Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 41025, "", "=q4=Hateful Gladiator's Ringmail Leggings", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_1#", ""};
		{ 17, 41012, "", "=q4=Deadly Gladiator's Ringmail Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 41037, "", "=q4=Deadly Gladiator's Ringmail Spaulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40990, "", "=q4=Deadly Gladiator's Ringmail Armor", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 41000, "", "=q4=Deadly Gladiator's Ringmail Gauntlets", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 41026, "", "=q4=Deadly Gladiator's Ringmail Leggings", "=ds=", "2250 #arena# #reqrating# 1910"};
		Back = "LEVEL80PVPSETS";
	};

	AtlasLoot_Data["PvP80Warlock"] = {
		{ 1, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", ""};
		{ 2, 41990, "", "=q3=Savage Gladiator's Felweave Cowl", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 42008, "", "=q3=Savage Gladiator's Felweave Amice", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 41996, "", "=q3=Savage Gladiator's Felweave Raiment", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 42014, "", "=q3=Savage Gladiator's Felweave Handguards", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 42002, "", "=q3=Savage Gladiator's Felweave Trousers", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", ""};
		{ 9, 41991, "", "=q4=Hateful Gladiator's Felweave Cowl", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 42009, "", "=q4=Hateful Gladiator's Felweave Amice", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 42001, "", "=q4=Hateful Gladiator's Felweave Raiment", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 42015, "", "=q4=Hateful Gladiator's Felweave Handguards", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 42003, "", "=q4=Hateful Gladiator's Felweave Trousers", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", ""};
		{ 17, 41992, "", "=q4=Deadly Gladiator's Felweave Cowl", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 42010, "", "=q4=Deadly Gladiator's Felweave Amice", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 41997, "", "=q4=Deadly Gladiator's Felweave Raiment", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 42016, "", "=q4=Deadly Gladiator's Felweave Handguards", "=ds=", "1350 #arena# #reqrating# 1850"};
		{ 21, 42004, "", "=q4=Deadly Gladiator's Felweave Trousers", "=ds=", "2250 #arena# #reqrating# 1910"};
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
		{ 2, 40816, "", "=q3=Savage Gladiator's Plate Helm", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 3, 40856, "", "=q3=Savage Gladiator's Plate Shoulders", "=ds=", "9600 #faction# 275 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 4, 40778, "", "=q3=Savage Gladiator's Plate Chestpiece", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 5, 40797, "", "=q3=Savage Gladiator's Plate Gauntlets", "=ds=", "7200 #faction# 200 #arena# "..AL["OR"].." 30 #eofheroism#", ""};
		{ 6, 40836, "", "=q3=Savage Gladiator's Plate Legguards", "=ds=", "12000 #faction# 350 #arena# "..AL["OR"].." 45 #eofheroism#", ""};
		{ 8, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", ""};
		{ 9, 40819, "", "=q4=Hateful Gladiator's Plate Helm", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1735 "..AL["OR"].." 45 #eofvalor#"};
		{ 10, 40859, "", "=q4=Hateful Gladiator's Plate Shoulders", "=ds=", "9600 #faction# 550 #arena# #reqrating# 1775 "..AL["OR"].." 30 #eofvalor#"};
		{ 11, 40783, "", "=q4=Hateful Gladiator's Plate Chestpiece", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1675 "..AL["OR"].." 45 #eofvalor#"};
		{ 12, 40801, "", "=q4=Hateful Gladiator's Plate Gauntlets", "=ds=", "7200 #faction# 400 #arena# #reqrating# 1615 "..AL["OR"].." 30 #eofvalor#"};
		{ 13, 40840, "", "=q4=Hateful Gladiator's Plate Legguards", "=ds=", "12000 #faction# 700 #arena# #reqrating# 1645 "..AL["OR"].." 45 #eofvalor#"};
		{ 16, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", ""};
		{ 17, 40823, "", "=q4=Deadly Gladiator's Plate Helm", "=ds=", "2250 #arena# #reqrating# 2090"};
		{ 18, 40862, "", "=q4=Deadly Gladiator's Plate Shoulders", "=ds=", "1800 #arena# #reqrating# 2150"};
		{ 19, 40786, "", "=q4=Deadly Gladiator's Plate Chestpiece", "=ds=", "2250 #arena# #reqrating# 1970"};
		{ 20, 40804, "", "=q4=Deadly Gladiator's Plate Gauntlets", "=ds=", "1350 #arena#"};
		{ 21, 40844, "", "=q4=Deadly Gladiator's Plate Legguards", "=ds=", "2250 #arena#"};
		Back = "LEVEL80PVPSETS";
	};

		-----------------------------------
		--- Placeholder - Epic Non-Sets ---
		-----------------------------------
		
	AtlasLoot_Data["PvP80NonSet1"] = {
		{ 1, 42020, "", "=q4=Hateful Gladiator's Pendant of Triumph", "=ds=", "38000 #faction#", ""};
		{ 2, 42021, "", "=q4=Hateful Gladiator's Pendant of Victory", "=ds=", "38000 #faction#", ""};
		{ 3, 42022, "", "=q4=Hateful Gladiator's Pendant of Dominance", "=ds=", "38000 #faction#", ""};
		{ 4, 42023, "", "=q4=Hateful Gladiator's Pendant of Subjugation", "=ds=", "38000 #faction#", ""};
		{ 5, 42024, "", "=q4=Hateful Gladiator's Pendant of Ascendancy", "=ds=", "38000 #faction#", ""};
		{ 6, 42025, "", "=q4=Hateful Gladiator's Pendant of Deliverance", "=ds=", "38000 #faction#", ""};
		{ 7, 42026, "", "=q4=Hateful Gladiator's Pendant of Salvation", "=ds=", "38000 #faction#", ""};
		{ 9, 42110, "", "=q4=Hateful Gladiator's Band of Dominance", "=ds=", "38000 #faction#", ""};
		{ 10, 42112, "", "=q4=Hateful Gladiator's Band of Triumph", "=ds=", "38000 #faction#", ""};
		{ 16, 42055, "", "=q4=Hateful Gladiator's Cloak of Dominance", "=ds=", "38000 #faction#", ""};
		{ 17, 42056, "", "=q4=Hateful Gladiator's Cloak of Subjugation", "=ds=", "38000 #faction#", ""};
		{ 18, 42057, "", "=q4=Hateful Gladiator's Cloak of Ascendancy", "=ds=", "38000 #faction#", ""};
		{ 19, 42058, "", "=q4=Hateful Gladiator's Cloak of Salvation", "=ds=", "38000 #faction#", ""};
		{ 20, 42059, "", "=q4=Hateful Gladiator's Cloak of Deliverance", "=ds=", "38000 #faction#", ""};
		{ 21, 42060, "", "=q4=Hateful Gladiator's Cloak of Triumph", "=ds=", "38000 #faction#", ""};
		{ 22, 42061, "", "=q4=Hateful Gladiator's Cloak of Victory", "=ds=", "38000 #faction#", ""};
		{ 24, 42122, "", "=q4=Medallion of the Horde", "=ds=", "49600 #faction#", ""};
		{ 25, 42123, "", "=q4=Medallion of the Alliance", "=ds=", "49600 #faction#", ""};
		Next = "PvP80NonSet2";
		Back = "LEVEL80PVPREWARDS";
	};
--Cloth
	AtlasLoot_Data["PvP80NonSet2"] = {
		{ 1, 41907, "", "=q4=Hateful Gladiator's Cuffs of Dominance", "=ds=", "31600 #faction#", ""};
		{ 2, 41896, "", "=q4=Hateful Gladiator's Cord of Dominance", "=ds=", "49600 #faction#", ""};
		{ 3, 41901, "", "=q4=Hateful Gladiator's Slippers of Dominance", "=ds=", "49600 #faction#", ""};
		{ 5, 41878, "", "=q4=Hateful Gladiator's Cuffs of Salvation", "=ds=", "31600 #faction#", ""};
		{ 6, 41877, "", "=q4=Hateful Gladiator's Cord of Salvation", "=ds=", "49600 #faction#", ""};
		{ 7, 41879, "", "=q4=Hateful Gladiator's Slippers of Salvation", "=ds=", "49600 #faction#", ""};
		{ 16, 41908, "", "=q4=Deadly Gladiator's Cuffs of Dominance", "=ds=", "39400 #faction#", ""};
		{ 17, 41897, "", "=q4=Deadly Gladiator's Cord of Dominance", "=ds=", "62000 #faction#", ""};
		{ 18, 41902, "", "=q4=Deadly Gladiator's Treads of Dominance", "=ds=", "62000 #faction#", ""};
		{ 20, 41892, "", "=q4=Deadly Gladiator's Cuffs of Salvation", "=ds=", "39400 #faction#", ""};
		{ 21, 41880, "", "=q4=Deadly Gladiator's Cord of Salvation", "=ds=", "62000 #faction#", ""};
		{ 22, 41884, "", "=q4=Deadly Gladiator's Treads of Salvation", "=ds=", "62000 #faction#", ""};
		Next = "PvP80NonSet3";
		Prev = "PvP80NonSet1";
		Back = "LEVEL80PVPREWARDS";
	};
--Leather
	AtlasLoot_Data["PvP80NonSet3"] = {
		{ 1, 41638, "", "=q4=Hateful Gladiator's Armwraps of Dominance", "=ds=", "31600 #faction#", ""};
		{ 2, 41628, "", "=q4=Hateful Gladiator's Belt of Dominance", "=ds=", "49600 #faction#", ""};
		{ 3, 41633, "", "=q4=Hateful Gladiator's Boots of Dominance", "=ds=", "49600 #faction#", ""};
		{ 5, 41332, "", "=q4=Hateful Gladiator's Armwraps of Salvation", "=ds=", "31600 #faction#", ""};
		{ 6, 41330, "", "=q4=Hateful Gladiator's Belt of Salvation", "=ds=", "49600 #faction#", ""};
		{ 7, 41331, "", "=q4=Hateful Gladiator's Boots of Salvation", "=ds=", "49600 #faction#", ""};
		{ 9, 41830, "", "=q4=Hateful Gladiator's Armwraps of Triumph", "=ds=", "31600 #faction#", ""};
		{ 10, 41827, "", "=q4=Hateful Gladiator's Belt of Triumph", "=ds=", "49600 #faction#", ""};
		{ 11, 41828, "", "=q4=Hateful Gladiator's Boots of Triumph", "=ds=", "49600 #faction#", ""};
		{ 16, 41639, "", "=q4=Deadly Gladiator's Armwraps of Dominance", "=ds=", "39400 #faction#", ""};
		{ 17, 41629, "", "=q4=Deadly Gladiator's Belt of Dominance", "=ds=", "62000 #faction#", ""};
		{ 18, 41634, "", "=q4=Deadly Gladiator's Boots of Dominance", "=ds=", "62000 #faction#", ""};
		{ 20, 41624, "", "=q4=Deadly Gladiator's Armwraps of Salvation", "=ds=", "39400 #faction#", ""};
		{ 21, 41616, "", "=q4=Deadly Gladiator's Belt of Salvation", "=ds=", "62000 #faction#", ""};
		{ 22, 41620, "", "=q4=Deadly Gladiator's Boots of Salvation", "=ds=", "62000 #faction#", ""};
		{ 24, 41839, "", "=q4=Deadly Gladiator's Armwraps of Triumph", "=ds=", "39400 #faction#", ""};
		{ 25, 41831, "", "=q4=Deadly Gladiator's Belt of Triumph", "=ds=", "62000 #faction#", ""};
		{ 26, 41835, "", "=q4=Deadly Gladiator's Boots of Triumph", "=ds=", "62000 #faction#", ""};
		Next = "PvP80NonSet4";
		Prev = "PvP80NonSet2";
		Back = "LEVEL80PVPREWARDS";
	};
--Mail
	AtlasLoot_Data["PvP80NonSet4"] = {
		{ 1, 41063, "", "=q4=Hateful Gladiator's Wristguards of Dominance", "=ds=", "31600 #faction#", ""};
		{ 2, 41068, "", "=q4=Hateful Gladiator's Waistguard of Dominance", "=ds=", "49600 #faction#", ""};
		{ 3, 41073, "", "=q4=Hateful Gladiator's Sabatons of Dominance", "=ds=", "49600 #faction#", ""};
		{ 5, 41047, "", "=q4=Hateful Gladiator's Wristguards of Salvation", "=ds=", "31600 #faction#", ""};
		{ 6, 41050, "", "=q4=Hateful Gladiator's Waistguard of Salvation", "=ds=", "49600 #faction#", ""};
		{ 7, 41049, "", "=q4=Hateful Gladiator's Sabatons of Salvation", "=ds=", "49600 #faction#", ""};
		{ 9, 41223, "", "=q4=Hateful Gladiator's Wristguards of Triumph", "=ds=", "31600 #faction#", ""};
		{ 10, 41233, "", "=q4=Hateful Gladiator's Waistguard of Triumph", "=ds=", "49600 #faction#", ""};
		{ 11, 41228, "", "=q4=Hateful Gladiator's Sabatons of Triumph", "=ds=", "49600 #faction#", ""};
		{ 16, 41064, "", "=q4=Deadly Gladiator's Wristguards of Dominance", "=ds=", "39400 #faction#", ""};
		{ 17, 41069, "", "=q4=Deadly Gladiator's Waistguard of Dominance", "=ds=", "62000 #faction#", ""};
		{ 18, 41074, "", "=q4=Deadly Gladiator's Sabatons of Dominance", "=ds=", "62000 #faction#", ""};
		{ 20, 41059, "", "=q4=Deadly Gladiator's Wristguards of Salvation", "=ds=", "39400 #faction#", ""};
		{ 21, 41048, "", "=q4=Deadly Gladiator's Waistguard of Salvation", "=ds=", "62000 #faction#", ""};
		{ 22, 41054, "", "=q4=Deadly Gladiator's Sabatons of Salvation", "=ds=", "62000 #faction#", ""};
		{ 24, 41224, "", "=q4=Deadly Gladiator's Wristguards of Triumph", "=ds=", "39400 #faction#", ""};
		{ 25, 41234, "", "=q4=Deadly Gladiator's Waistguard of Triumph", "=ds=", "62000 #faction#", ""};
		{ 26, 41229, "", "=q4=Deadly Gladiator's Sabatons of Triumph", "=ds=", "62000 #faction#", ""};
		Next = "PvP80NonSet5";
		Prev = "PvP80NonSet3";
		Back = "PVP70NONSETEPICS";
	};
--Plate
	AtlasLoot_Data["PvP80NonSet5"] = {
		{ 1, 40972, "", "=q4=Hateful Gladiator's Bracers of Salvation", "=ds=", "31600 #faction#", ""};
		{ 2, 40966, "", "=q4=Hateful Gladiator's Girdle of Salvation", "=ds=", "49600 #faction#", ""};
		{ 3, 40973, "", "=q4=Hateful Gladiator's Greaves of Salvation", "=ds=", "49600 #faction#", ""};
		{ 5, 40887, "", "=q4=Hateful Gladiator's Bracers of Triumph", "=ds=", "31600 #faction#", ""};
		{ 6, 40877, "", "=q4=Hateful Gladiator's Girdle of Triumph", "=ds=", "49600 #faction#", ""};
		{ 7, 40878, "", "=q4=Hateful Gladiator's Greaves of Triumph", "=ds=", "49600 #faction#", ""};
		{ 16, 40982, "", "=q4=Deadly Gladiator's Bracers of Salvation", "=ds=", "39400 #faction#", ""};
		{ 17, 40974, "", "=q4=Deadly Gladiator's Girdle of Salvation", "=ds=", "62000 #faction#", ""};
		{ 18, 40975, "", "=q4=Deadly Gladiator's Greaves of Salvation", "=ds=", "62000 #faction#", ""};
		{ 20, 40888, "", "=q4=Deadly Gladiator's Bracers of Triumph", "=ds=", "39400 #faction#", ""};
		{ 21, 40879, "", "=q4=Deadly Gladiator's Girdle of Triumph", "=ds=", "62000 #faction#", ""};
		{ 22, 40880, "", "=q4=Deadly Gladiator's Greaves of Triumph", "=ds=", "62000 #faction#", ""};
		Prev = "PvP80NonSet4";
		Back = "LEVEL80PVPREWARDS";
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
		{ 1, 42317, "", "=q4=Deadly Gladiator's Decapitator", "=ds=#h2#, #w1#", "0 #arena#", ""};
		{ 2, 42322, "", "=q4=Deadly Gladiator's Bonegrinder", "=ds=#h2#, #w6#", "0 #arena#", ""};
		{ 3, 42332, "", "=q4=Deadly Gladiator's Greatsword", "=ds=#h2#, #w10#", "0 #arena#", ""};
		{ 4, 42490, "", "=q4=Deadly Gladiator's Longbow", "=ds=#w2#", "0 #arena#", ""};
		{ 5, 42346, "", "=q4=Deadly Gladiator's Spellblade", "=ds=#h3#, #w10#", "0 #arena#", ""};
		{ 6, 42362, "", "=q4=Deadly Gladiator's Battle Staff", "=ds=#w9#", "0 #arena#", ""};
		{ 7, 42502, "", "=q4=Deadly Gladiator's Touch of Defeat", "=ds=#w12#", "0 #arena#", ""};
		{ 8, 42495, "", "=q4=Deadly Gladiator's Heavy Crossbow", "=ds=#w3#", "0 #arena#", ""};
		{ 9, 42227, "", "=q4=Deadly Gladiator's Hacker", "=ds=#h4#, #w1#", "0 #arena#", ""};
		{ 10, 42248, "", "=q4=Deadly Gladiator's Shiv", "=ds=#h4#, #w4#", "0 #arena#", ""};
		{ 11, 42270, "", "=q4=Deadly Gladiator's Left Ripper", "=ds=#h4#, #w13#", "0 #arena#", ""};
		{ 12, 42280, "", "=q4=Deadly Gladiator's Bonecracker", "=ds=#h4#, #w6#", "0 #arena#", ""};
		{ 13, 42290, "", "=q4=Deadly Gladiator's Quickblade", "=ds=#h4#, #w10#", "0 #arena#", ""};
		{ 14, 42485, "", "=q4=Deadly Gladiator's Rifle", "=ds=#w5#", "0 #arena#", ""};
		{ 15, 42564, "", "=q4=Deadly Gladiator's Barrier", "=ds=#w8#", "0 #arena#", ""};
		{ 16, 42570, "", "=q4=Deadly Gladiator's Redoubt", "=ds=#w8#", "0 #arena#", ""};
		{ 17, 42352, "", "=q4=Deadly Gladiator's Gavel", "=ds=#h3#, #w6#", "0 #arena#", ""};
		{ 18, 42327, "", "=q4=Deadly Gladiator's Pike", "=ds=#h2#, #w7#", "0 #arena#", ""};
		{ 19, 42208, "", "=q4=Deadly Gladiator's Cleaver", "=ds=#h1#, #w1#", "0 #arena#", ""};
		{ 20, 42242, "", "=q4=Deadly Gladiator's Shanker", "=ds=#h1#, #w4#", "0 #arena#", ""};
		{ 21, 42275, "", "=q4=Deadly Gladiator's Pummeler", "=ds=#h1#, #w6#", "0 #arena#", ""};
		{ 22, 42285, "", "=q4=Deadly Gladiator's Slicer", "=ds=#h1#, #w10#", "0 #arena#", ""};
		{ 23, 42260, "", "=q4=Deadly Gladiator's Right Ripper", "=ds=#h3#, #w13#", "0 #arena#", ""};
		{ 24, 42232, "", "=q4=Deadly Gladiator's Chopper", "=ds=#h4#, #w1#", "0 #arena#", ""};
		{ 25, 42237, "", "=q4=Deadly Gladiator's Waraxe", "=ds=#h4#, #w4#", "0 #arena#", ""};
		{ 26, 42265, "", "=q4=Deadly Gladiator's Left Render", "=ds=#h4#, #w13#", "0 #arena#", ""};
		{ 27, 42519, "", "=q4=Deadly Gladiator's Piercing Touch", "=ds=#w12#", "0 #arena#", ""};
		{ 28, 42513, "", "=q4=Deadly Gladiator's Baton of Light", "=ds=#w12#", "0 #arena#", ""};
		{ 29, 42559, "", "=q4=Deadly Gladiator's Shield Wall", "=ds=#w8#", "0 #arena#", ""};
		{ 30, 42450, "", "=q4=Deadly Gladiator's War Edge", "=ds=#w11#", "0 #arena#", ""};
		Next = "DeadlyGladiatorWeapons2";
		Back = "LEVEL80PVPREWARDS";
	};
	
	AtlasLoot_Data["DeadlyGladiatorWeapons2"] = {
		{ 1, 42620, "", "=q4=Deadly Gladiator's Sigil of Strife", "=ds=#s16#", "0 #arena#", ""};
		{ 2, 42588, "", "=q4=Deadly Gladiator's Idol of Resolve", "=ds=#s16#", "0 #arena#", ""};
		{ 3, 42583, "", "=q4=Deadly Gladiator's Idol of Steadfastness", "=ds=#s16#", "0 #arena#", ""};
		{ 4, 42578, "", "=q4=Deadly Gladiator's Idol of Tenacity", "=ds=#s16#", "0 #arena#", ""};
		{ 5, 42614, "", "=q4=Deadly Gladiator's Libram of Justice", "=ds=#s16#", "0 #arena#", ""};
		{ 6, 42852, "", "=q4=Deadly Gladiator's Libram of Fortitude", "=ds=#s16#", "0 #arena#", ""};
		{ 7, 42597, "", "=q4=Deadly Gladiator's Totem of the Third Wind", "=ds=#s16#", "0 #arena#", ""};
		{ 8, 42607, "", "=q4=Deadly Gladiator's Totem of Indomitability", "=ds=#s16#", "0 #arena#", ""};
		{ 9, 42602, "", "=q4=Deadly Gladiator's Totem of Survival", "=ds=#s16#", "0 #arena#", ""};
		Prev = "DeadlyGladiatorWeapons1";
		Back = "LEVEL80PVPREWARDS";
	};

		-------------------------
		--- Lake Wintergrasp  ---
		-------------------------

	AtlasLoot_Data["LakeWintergrasp1"] = {
		{ 1, 43956, "", "=q4=Reins of the Black War Mammoth", "=ds=#e12#", "300 #wintergrasp#"};
		{ 2, 44077, "", "=q4=Reins of the Black War Mammoth", "=ds=#e12#", "300 #wintergrasp#"};
		{ 3, 44066, "", "=q4=Kharmaa's Grace", "=ds=#e7#", "20 #wintergrasp#"};
		{ 4, 44075, "", "=q3=Arcanum of Dominance", "=ds=#s1# #e17#", "40 #wintergrasp#"};
		{ 5, 44069, "", "=q3=Arcanum of Triumph", "=ds=#s1# #e17#", "40 #wintergrasp#"};
		{ 6, 44068, "", "=q3=Inscription of Dominance", "=ds=#s3# #e17#", "30 #wintergrasp#"};
		{ 7, 44067, "", "=q3=Inscription of Triumph", "=ds=#s3# #e17#", "30 #wintergrasp#"};
		{ 8, 44081, "", "=q3=Enigmatic Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 9, 44084, "", "=q3=Forlorn Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 10, 44082, "", "=q3=Impassive Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 11, 44076, "", "=q3=Swift Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 12, 44078, "", "=q3=Swift Starflare Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 13, 44087, "", "=q3=Persistent Earthshatter Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 14, 44088, "", "=q3=Powerful Earthshatter Diamond", "=ds=#e7#", "15 #wintergrasp#"};
		{ 15, 44089, "", "=q3=Trenchant Earthshatter Diamond", "=ds=#e7#", "15 #wintergrasp#"};
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
		Next = "LakeWintergrasp2";
		Back = "PVPMENU";
	};

	AtlasLoot_Data["LakeWintergrasp2"] = {
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
		Prev = "LakeWintergrasp1";
		Back = "PVPMENU";
	};

	--------------------------
	--- Sets & Collections ---
	--------------------------

		--------------------------------
		--- Naxxramas 10/25 Man Sets ---
		--------------------------------

	AtlasLoot_Data["NaxxDeathKnightDPS"] = {
		{ 1, 0, "Spell_Deathknight_DeathStrike", "=q6=#t7s10_1#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39619, "", "=q4=Heroes' Scourgeborne Helmet", "=ds=Kel'Thuzad"};
		{ 3, 39621, "", "=q4=Heroes' Scourgeborne Shoulderplates", "=ds=Loatheb, Gluth"};
		{ 4, 39617, "", "=q4=Heroes' Scourgeborne Battleplate", "=ds=The Four Horsemen"};
		{ 5, 39618, "", "=q4=Heroes' Scourgeborne Gauntlets", "=ds=#s9#"};
		{ 6, 39620, "", "=q4=Heroes' Scourgeborne Legplates", "=ds=Thaddius"};
		{ 8, 0, "Spell_Deathknight_DeathStrike", "=q6=#t7s10_1#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40554, "", "=q4=Valorous Scourgeborne Helmet", "=ds=Kel'Thuzad"};
		{ 10, 40557, "", "=q4=Valorous Scourgeborne Shoulderplates", "=ds=Loatheb, Gluth"};
		{ 11, 40550, "", "=q4=Valorous Scourgeborne Battleplate", "=ds=The Four Horsemen"};
		{ 12, 40552, "", "=q4=Valorous Scourgeborne Gauntlets", "=ds=#s9#"};
		{ 13, 40556, "", "=q4=Valorous Scourgeborne Legplates", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxDeathKnightTank"] = {
		{ 1, 0, "Spell_Deathknight_DeathStrike", "=q6=#t7s10_2#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39625, "", "=q4=Heroes' Scourgeborne Faceguard", "=ds=Kel'Thuzad"};
		{ 3, 39627, "", "=q4=Heroes' Scourgeborne Pauldrons", "=ds=Loatheb, Gluth"};
		{ 4, 39623, "", "=q4=Heroes' Scourgeborne Chestguard", "=ds=The Four Horsemen"};
		{ 5, 39624, "", "=q4=Heroes' Scourgeborne Handguards", "=ds=#s9#"};
		{ 6, 39626, "", "=q4=Heroes' Scourgeborne Legguards", "=ds=Thaddius"};
		{ 8, 0, "Spell_Deathknight_DeathStrike", "=q6=#t7s10_2#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40565, "", "=q4=Valorous Scourgeborne Faceguard", "=ds=Kel'Thuzad"};
		{ 10, 40568, "", "=q4=Valorous Scourgeborne Pauldrons", "=ds=Loatheb, Gluth"};
		{ 11, 40559, "", "=q4=Valorous Scourgeborne Chestguard", "=ds=The Four Horsemen"};
		{ 12, 40563, "", "=q4=Valorous Scourgeborne Handguards", "=ds=#s9#"};
		{ 13, 40567, "", "=q4=Valorous Scourgeborne Legguards", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxDruidFeral"] = {
		{ 1, 0, "Ability_Druid_Maul", "=q6=#t7s1_2#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39553, "", "=q4=Heroes' Dreamwalker Headguard", "=ds=Kel'Thuzad"};
		{ 3, 39556, "", "=q4=Heroes' Dreamwalker Shoulderpads", "=ds=Loatheb, Gluth"};
		{ 4, 39554, "", "=q4=Heroes' Dreamwalker Raiments", "=ds=The Four Horsemen"};
		{ 5, 39557, "", "=q4=Heroes' Dreamwalker Handgrips", "=ds=#s9#"};
		{ 6, 39555, "", "=q4=Heroes' Dreamwalker Legguards", "=ds=Thaddius"};
		{ 8, 0, "Ability_Druid_Maul", "=q6=#t7s1_2#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40473, "", "=q4=Valorous Dreamwalker Headguard", "=ds=Kel'Thuzad"};
		{ 10, 40494, "", "=q4=Valorous Dreamwalker Shoulderpads", "=ds=Loatheb, Gluth"};
		{ 11, 40471, "", "=q4=Valorous Dreamwalker Raiments", "=ds=The Four Horsemen"};
		{ 12, 40472, "", "=q4=Valorous Dreamwalker Handgrips", "=ds=#s9#"};
		{ 13, 40493, "", "=q4=Valorous Dreamwalker Legguards", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxDruidRestoration"] = {
		{ 1, 0, "Spell_Nature_Regeneration", "=q6=#t7s1_3#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39531, "", "=q4=Heroes' Dreamwalker Headpiece", "=ds=Kel'Thuzad"};
		{ 3, 39542, "", "=q4=Heroes' Dreamwalker Spaulders", "=ds=Loatheb, Gluth"};
		{ 4, 39538, "", "=q4=Heroes' Dreamwalker Robe", "=ds=The Four Horsemen"};
		{ 5, 39543, "", "=q4=Heroes' Dreamwalker Handguards", "=ds=#s9#"};
		{ 6, 39539, "", "=q4=Heroes' Dreamwalker Leggings", "=ds=Thaddius"};
		{ 8, 0, "Spell_Nature_Regeneration", "=q6=#t7s1_3#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40461, "", "=q4=Valorous Dreamwalker Headpiece", "=ds=Kel'Thuzad"};
		{ 10, 40465, "", "=q4=Valorous Dreamwalker Spaulders", "=ds=Loatheb, Gluth"};
		{ 11, 40463, "", "=q4=Valorous Dreamwalker Robe", "=ds=The Four Horsemen"};
		{ 12, 40460, "", "=q4=Valorous Dreamwalker Handguards", "=ds=#s9#"};
		{ 13, 40462, "", "=q4=Valorous Dreamwalker Leggings", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxDruidBalance"] = {
		{ 1, 0, "Spell_Nature_InsectSwarm", "=q6=#t7s1_1#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39545, "", "=q4=Heroes' Dreamwalker Cover", "=ds=Kel'Thuzad"};
		{ 3, 39548, "", "=q4=Heroes' Dreamwalker Mantle", "=ds=Loatheb, Gluth"};
		{ 4, 39547, "", "=q4=Heroes' Dreamwalker Vestments", "=ds=The Four Horsemen"};
		{ 5, 39544, "", "=q4=Heroes' Dreamwalker Gloves", "=ds=#s9#"};
		{ 6, 39546, "", "=q4=Heroes' Dreamwalker Cover", "=ds=Thaddius"};
		{ 8, 0, "Spell_Nature_InsectSwarm", "=q6=#t7s1_1#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40467, "", "=q4=Valorous Dreamwalker Cover", "=ds=Kel'Thuzad"};
		{ 10, 40470, "", "=q4=Valorous Dreamwalker Mantle", "=ds=Loatheb, Gluth"};
		{ 11, 40469, "", "=q4=Valorous Dreamwalker Vestments", "=ds=The Four Horsemen"};
		{ 12, 40466, "", "=q4=Valorous Dreamwalker Gloves", "=ds=#s9#"};
		{ 13, 40468, "", "=q4=Valorous Dreamwalker Trousers", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxHunter"] = {
		{ 1, 0, "Ability_Hunter_RunningShot", "=q6=#t7s2#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39578, "", "=q4=Heroes' Crypstalker Headpiece", "=ds=Kel'Thuzad"};
		{ 3, 39581, "", "=q4=Heroes' Crypstalker Spaulders", "=ds=Loatheb, Gluth"};
		{ 4, 39579, "", "=q4=Heroes' Crypstalker Tunic", "=ds=The Four Horsemen"};
		{ 5, 39582, "", "=q4=Heroes' Crypstalker Handguards", "=ds=#s9#"};
		{ 6, 39580, "", "=q4=Heroes' Crypstalker Legguards", "=ds=Thaddius"};
		{ 8, 0, "Ability_Hunter_RunningShot", "=q6=#t7s2#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40505, "", "=q4=Valorous Crypstalker Headpiece", "=ds=Kel'Thuzad"};
		{ 10, 40507, "", "=q4=Valorous Crypstalker Spaulders", "=ds=Loatheb, Gluth"};
		{ 11, 40503, "", "=q4=Valorous Crypstalker Tunic", "=ds=The Four Horsemen"};
		{ 12, 40504, "", "=q4=Valorous Crypstalker Handguards", "=ds=#s9#"};
		{ 13, 40506, "", "=q4=Valorous Crypstalker Legguards", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxMage"] = {
		{ 1, 0, "Spell_Frost_IceStorm", "=q6=#t7s3#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39491, "", "=q4=Heroes' Frostfire Circlet", "=ds=Kel'Thuzad"};
		{ 3, 39494, "", "=q4=Heroes' Frostfire Shoulderpads", "=ds=Loatheb, Gluth"};
		{ 4, 39492, "", "=q4=Heroes' Frostfire Robe", "=ds=The Four Horsemen"};
		{ 5, 39495, "", "=q4=Heroes' Frostfire Gloves", "=ds=#s9#"};
		{ 6, 39493, "", "=q4=Heroes' Frostfire Leggings", "=ds=Thaddius"};
		{ 8, 0, "Spell_Frost_IceStorm", "=q6=#t7s3#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40416, "", "=q4=Valorous Frostfire Circlet", "=ds=Kel'Thuzad"};
		{ 10, 40419, "", "=q4=Valorous Frostfire Shoulderpads", "=ds=Loatheb, Gluth"};
		{ 11, 40418, "", "=q4=Valorous Frostfire Robe", "=ds=The Four Horsemen"};
		{ 12, 40415, "", "=q4=Valorous Frostfire Gloves", "=ds=#s9#"};
		{ 13, 40417, "", "=q4=Valorous Frostfire Leggings", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPaladinHoly"] = {
		{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#t7s4_1#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39628, "", "=q4=Heroes' Redemption Headpiece", "=ds=Kel'Thuzad"};
		{ 3, 39631, "", "=q4=Heroes' Redemption Spaulders", "=ds=Loatheb, Gluth"};
		{ 4, 39629, "", "=q4=Heroes' Redemption Tunic", "=ds=The Four Horsemen"};
		{ 5, 39632, "", "=q4=Heroes' Redemption Gloves", "=ds=#s9#"};
		{ 6, 39630, "", "=q4=Heroes' Redemption Greaves", "=ds=Thaddius"};
		{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#t7s4_1#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40571, "", "=q4=Valorous Redemption Headpiece", "=ds=Kel'Thuzad"};
		{ 10, 40573, "", "=q4=Valorous Redemption Spaulders", "=ds=Loatheb, Gluth"};
		{ 11, 40569, "", "=q4=Valorous Redemption Tunic", "=ds=The Four Horsemen"};
		{ 12, 40570, "", "=q4=Valorous Redemption Gloves", "=ds=#s9#"};
		{ 13, 40572, "", "=q4=Valorous Redemption Greaves", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPaladinProtection"] = {
		{ 1, 0, "Spell_Holy_SealOfMight", "=q6=#t7s4_2#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39635, "", "=q4=Heroes' Redemption Helm", "=ds=Kel'Thuzad"};
		{ 3, 39637, "", "=q4=Heroes' Redemption Shoulderplates", "=ds=Loatheb, Gluth"};
		{ 4, 39633, "", "=q4=Heroes' Redemption Chestpiece", "=ds=The Four Horsemen"};
		{ 5, 39634, "", "=q4=Heroes' Redemption Gauntlets", "=ds=#s9#"};
		{ 6, 39636, "", "=q4=Heroes' Redemption Legplates", "=ds=Thaddius"};
		{ 8, 0, "Spell_Holy_SealOfMight", "=q6=#t7s4_2#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40576, "", "=q4=Valorous Redemption Helm", "=ds=Kel'Thuzad"};
		{ 10, 40578, "", "=q4=Valorous Redemption Shoulderplates", "=ds=Loatheb, Gluth"};
		{ 11, 40574, "", "=q4=Valorous Redemption Chestpiece", "=ds=The Four Horsemen"};
		{ 12, 40575, "", "=q4=Valorous Redemption Gauntlets", "=ds=#s9#"};
		{ 13, 40577, "", "=q4=Valorous Redemption Legplates", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPaladinRetribution"] = {
		{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#t7s4_3#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39640, "", "=q4=Heroes' Redemption Faceguard", "=ds=Kel'Thuzad"};
		{ 3, 39642, "", "=q4=Heroes' Redemption Shouldergards", "=ds=Loatheb, Gluth"};
		{ 4, 39638, "", "=q4=Heroes' Redemption Breastplate", "=ds=The Four Horsemen"};
		{ 5, 39639, "", "=q4=Heroes' Redemption Handguards", "=ds=#s9#"};
		{ 6, 39641, "", "=q4=Heroes' Redemption Legguards", "=ds=Thaddius"};
		{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#t7s4_3#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40581, "", "=q4=Valorous Redemption Faceguard", "=ds=Kel'Thuzad"};
		{ 10, 40584, "", "=q4=Valorous Redemption Shouldergards", "=ds=Loatheb, Gluth"};
		{ 11, 40579, "", "=q4=Valorous Redemption Breastplate", "=ds=The Four Horsemen"};
		{ 12, 40580, "", "=q4=Valorous Redemption Handguards", "=ds=#s9#"};
		{ 13, 40583, "", "=q4=Valorous Redemption Legguards", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxPriestShadow"] = {
		{ 1, 0, "Spell_Shadow_AntiShadow", "=q6=#t7s5_2#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39521, "", "=q4=Heroes' Circlet of Faith", "=ds=Kel'Thuzad"};
		{ 3, 39529, "", "=q4=Heroes' Mantle of Faith", "=ds=Loatheb, Gluth"};
		{ 4, 39523, "", "=q4=Heroes' Raiments of Faith", "=ds=The Four Horsemen"};
		{ 5, 39530, "", "=q4=Heroes' Handwraps of Faith", "=ds=#s9#"};
		{ 6, 39528, "", "=q4=Heroes' Pants of Faith", "=ds=Thaddius"};
		{ 8, 0, "Spell_Shadow_AntiShadow", "=q6=#t7s5_2#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40456, "", "=q4=Valorous Circlet of Faith", "=ds=Kel'Thuzad"};
		{ 10, 40459, "", "=q4=Valorous Mantle of Faith", "=ds=Loatheb, Gluth"};
		{ 11, 40458, "", "=q4=Valorous Raiments of Faith", "=ds=The Four Horsemen"};
		{ 12, 40454, "", "=q4=Valorous Handwraps of Faith", "=ds=#s9#"};
		{ 13, 40457, "", "=q4=Valorous Pants of Faith", "=ds=Thaddius"};
        Back = "T7SET";
	};
	
	AtlasLoot_Data["NaxxPriestHoly"] = {
		{ 1, 0, "Spell_Holy_PowerWordShield", "=q6=#t7s5_1#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39514, "", "=q4=Heroes' Crown of Faith", "=ds=Kel'Thuzad"};
		{ 3, 39518, "", "=q4=Heroes' Shoulderpads of Faith", "=ds=Loatheb, Gluth"};
		{ 4, 39515, "", "=q4=Heroes' Robe of Faith", "=ds=The Four Horsemen"};
		{ 5, 39519, "", "=q4=Heroes' Gloves of Faith", "=ds=#s9#"};
		{ 6, 39517, "", "=q4=Heroes' Leggings of Faith", "=ds=Thaddius"};
		{ 8, 0, "Spell_Holy_PowerWordShield", "=q6=#t7s5_1#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40447, "", "=q4=Valorous Crown of Faith", "=ds=Kel'Thuzad"};
		{ 10, 40450, "", "=q4=Valorous Shoulderpads of Faith", "=ds=Loatheb, Gluth"};
		{ 11, 40449, "", "=q4=Valorous Robe of Faith", "=ds=The Four Horsemen"};
		{ 12, 40445, "", "=q4=Valorous Gloves of Faith", "=ds=#s9#"};
		{ 13, 40448, "", "=q4=Valorous Leggings of Faith", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxRogue"] = {
		{ 1, 0, "Ability_BackStab", "=q6=#t7s6#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39561, "", "=q4=Heroes' Bonescythe Helmet", "=ds=Kel'Thuzad"};
		{ 3, 39565, "", "=q4=Heroes' Bonescythe Pauldrons", "=ds=Loatheb, Gluth"};
		{ 4, 39558, "", "=q4=Heroes' Bonescythe Breastplate", "=ds=The Four Horsemen"};
		{ 5, 39560, "", "=q4=Heroes' Bonescythe Gauntlets", "=ds=#s9#"};
		{ 6, 39564, "", "=q4=Heroes' Bonescythe Legplates", "=ds=Thaddius"};
		{ 8, 0, "Ability_BackStab", "=q6=#t7s6#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40499, "", "=q4=Valorous Bonescythe Helmet", "=ds=Kel'Thuzad"};
		{ 10, 40502, "", "=q4=Valorous Bonescythe Pauldrons", "=ds=Loatheb, Gluth"};
		{ 11, 40495, "", "=q4=Valorous Bonescythe Breastplate", "=ds=The Four Horsemen"};
		{ 12, 40496, "", "=q4=Valorous Bonescythe Gauntlets", "=ds=#s9#"};
		{ 13, 40500, "", "=q4=Valorous Bonescythe Legplates", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxShamanRestoration"] = {
		{ 1, 0, "Spell_Nature_HealingWaveGreater", "=q6=#t7s7_3#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39583, "", "=q4=Heroes' Earthshatter Headpiece", "=ds=Kel'Thuzad"};
		{ 3, 39590, "", "=q4=Heroes' Earthshatter Spaulders", "=ds=Loatheb, Gluth"};
		{ 4, 39588, "", "=q4=Heroes' Earthshatter Tunic", "=ds=The Four Horsemen"};
		{ 5, 39591, "", "=q4=Heroes' Earthshatter Handguards", "=ds=#s9#"};
		{ 6, 39589, "", "=q4=Heroes' Earthshatter Legguards", "=ds=Thaddius"};
		{ 8, 0, "Spell_Nature_HealingWaveGreater", "=q6=#t7s7_3#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40510, "", "=q4=Valorous Earthshatter Headpiece", "=ds=Kel'Thuzad"};
		{ 10, 40513, "", "=q4=Valorous Earthshatter Spaulders", "=ds=Loatheb, Gluth"};
		{ 11, 40508, "", "=q4=Valorous Earthshatter Tunic", "=ds=The Four Horsemen"};
		{ 12, 40509, "", "=q4=Valorous Earthshatter Handguards", "=ds=#s9#"};
		{ 13, 40512, "", "=q4=Valorous Earthshatter Legguards", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxShamanEnhancement"] = {
		{ 1, 0, "Spell_FireResistanceTotem_01", "=q6=#t7s7_2#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39602, "", "=q4=Heroes' Earthshatter Faceguard", "=ds=Kel'Thuzad"};
		{ 3, 39604, "", "=q4=Heroes' Earthshatter Shoulderguards", "=ds=Loatheb, Gluth"};
		{ 4, 39597, "", "=q4=Heroes' Earthshatter Chestguard", "=ds=The Four Horsemen"};
		{ 5, 39601, "", "=q4=Heroes' Earthshatter Grips", "=ds=#s9#"};
		{ 6, 39603, "", "=q4=Heroes' Earthshatter War-Kilt", "=ds=Thaddius"};
		{ 8, 0, "Spell_FireResistanceTotem_01", "=q6=#t7s7_2#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40521, "", "=q4=Valorous Earthshatter Faceguard", "=ds=Kel'Thuzad"};
		{ 10, 40524, "", "=q4=Valorous Earthshatter Shoulderguards", "=ds=Loatheb, Gluth"};
		{ 11, 40523, "", "=q4=Valorous Earthshatter Chestguard", "=ds=The Four Horsemen"};
		{ 12, 40520, "", "=q4=Valorous Earthshatter Grips", "=ds=#s9#"};
		{ 13, 40522, "", "=q4=Valorous Earthshatter War-Kilt", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxShamanElemental"] = {
		{ 1, 0, "Spell_Nature_Lightning", "=q6=#t7s7_1#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39594, "", "=q4=Heroes' Earthshatter Helm", "=ds=Kel'Thuzad"};
		{ 3, 39596, "", "=q4=Heroes' Earthshatter Shoulderpads", "=ds=Loatheb, Gluth"};
		{ 4, 39592, "", "=q4=Heroes' Earthshatter Hauberk", "=ds=The Four Horsemen"};
		{ 5, 39593, "", "=q4=Heroes' Earthshatter Gloves", "=ds=#s9#"};
		{ 6, 39595, "", "=q4=Heroes' Earthshatter Kilt", "=ds=Thaddius"};
		{ 8, 0, "Spell_Nature_Lightning", "=q6=#t7s7_1#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40516, "", "=q4=Valorous Earthshatter Helm", "=ds=Kel'Thuzad"};
		{ 10, 40518, "", "=q4=Valorous Earthshatter Shoulderpads", "=ds=Loatheb, Gluth"};
		{ 11, 40514, "", "=q4=Valorous Earthshatter Hauberk", "=ds=The Four Horsemen"};
		{ 12, 40515, "", "=q4=Valorous Earthshatter Gloves", "=ds=#s9#"};
		{ 13, 40517, "", "=q4=Valorous Earthshatter Kilt", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxWarlock"] = {
		{ 1, 0, "Spell_Shadow_CurseOfTounges", "=q6=#t7s8#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39496, "", "=q4=Heroes' Plagueheart Circlet", "=ds=Kel'Thuzad"};
		{ 3, 39499, "", "=q4=Heroes' Plagueheart Shoulderpads", "=ds=Loatheb, Gluth"};
		{ 4, 39497, "", "=q4=Heroes' Plagueheart Robe", "=ds=The Four Horsemen"};
		{ 5, 39500, "", "=q4=Heroes' Plagueheart Gloves", "=ds=#s9#"};
		{ 6, 39498, "", "=q4=Heroes' Plagueheart Leggings", "=ds=Thaddius"};
		{ 8, 0, "Spell_Shadow_CurseOfTounges", "=q6=#t7s8#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40421, "", "=q4=Valorous Plagueheart Circlet", "=ds=Kel'Thuzad"};
		{ 10, 40424, "", "=q4=Valorous Plagueheart Shoulderpads", "=ds=Loatheb, Gluth"};
		{ 11, 40423, "", "=q4=Valorous Plagueheart Robe", "=ds=The Four Horsemen"};
		{ 12, 40420, "", "=q4=Valorous Plagueheart Gloves", "=ds=#s9#"};
		{ 13, 40422, "", "=q4=Valorous Plagueheart Leggings", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxWarriorFury"] = {
		{ 1, 0, "Ability_Warrior_BattleShout", "=q6=#t7s9_1#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39605, "", "=q4=Heroes' Dreadnaught Helmet", "=ds=Kel'Thuzad"};
		{ 3, 39608, "", "=q4=Heroes' Dreadnaught Shoulderplates", "=ds=Loatheb, Gluth"};
		{ 4, 39606, "", "=q4=Heroes' Dreadnaught Battleplate", "=ds=The Four Horsemen"};
		{ 5, 39609, "", "=q4=Heroes' Dreadnaught Gauntlets", "=ds=#s9#"};
		{ 6, 39607, "", "=q4=Heroes' Dreadnaught Legplates", "=ds=Thaddius"};
		{ 8, 0, "Ability_Warrior_BattleShout", "=q6=#t7s9_1#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40528, "", "=q4=Valorous Dreadnaught Helmet", "=ds=Kel'Thuzad"};
		{ 10, 40530, "", "=q4=Valorous Dreadnaught Shoulderplates", "=ds=Loatheb, Gluth"};
		{ 11, 40525, "", "=q4=Valorous Dreadnaught Battleplate", "=ds=The Four Horsemen"};
		{ 12, 40527, "", "=q4=Valorous Dreadnaught Gauntlets", "=ds=#s9#"};
		{ 13, 40529, "", "=q4=Valorous Dreadnaught Legplates", "=ds=Thaddius"};
        Back = "T7SET";
	};

	AtlasLoot_Data["NaxxWarriorProtection"] = {
		{ 1, 0, "INV_Shield_05", "=q6=#t7s9_2#", "=q5="..AL["10 Man Raid"]};
		{ 2, 39610, "", "=q4=Heroes' Dreadnaught Greathelm", "=ds=Kel'Thuzad"};
		{ 3, 39613, "", "=q4=Heroes' Dreadnaught Pauldrons", "=ds=Loatheb, Gluth"};
		{ 4, 39611, "", "=q4=Heroes' Dreadnaught Breastplate", "=ds=The Four Horsemen"};
		{ 5, 39622, "", "=q4=Heroes' Dreadnaught Handguards", "=ds=#s9#"};
		{ 6, 39612, "", "=q4=Heroes' Dreadnaught Legguards", "=ds=Thaddius"};
		{ 8, 0, "INV_Shield_05", "=q6=#t7s9_2#", "=q5="..AL["25 Man Raid"]};
		{ 9, 40546, "", "=q4=Valorous Dreadnaught Greathelm", "=ds=Kel'Thuzad"};
		{ 10, 40548, "", "=q4=Valorous Dreadnaught Pauldrons", "=ds=Loatheb, Gluth"};
		{ 11, 40544, "", "=q4=Valorous Dreadnaught Breastplate", "=ds=The Four Horsemen"};
		{ 12, 40545, "", "=q4=Valorous Dreadnaught Handguards", "=ds=#s9#"};
		{ 13, 40547, "", "=q4=Valorous Dreadnaught Legguards", "=ds=Thaddius"};
        Back = "T7SET";
	};

		-----------------------------
		--- Blizzard Collectables ---
		-----------------------------

	AtlasLoot_Data["BlizzardCollectables1"] = {
		{ 1, 33079, "", "=q3=Murloc Costume", "=ds="};
		{ 2, 30360, "", "=q3=Lurky's Egg", "=ds=#e13#"};
		{ 3, 20371, "", "=q3=Blue Murloc Egg", "=ds=#e13#"};
		{ 4, 22114, "", "=q3=Pink Murloc Egg", "=ds=#e13#"};
		{ 5, 13583, "", "=q3=Panda Collar", "=ds=#e13#"};
		{ 6, 13584, "", "=q3=Diablo Stone", "=ds=#e13#"};
		{ 7, 13582, "", "=q3=Zergling Leash", "=ds=#e13#"};
		{ 8, 25535, "", "=q3=Netherwhelp's Collar", "=ds=#e13#"};
		{ 9, 39656, "", "=q3=Tyrael's Hilt", "=ds=#e13#"};
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
		{ 21, 0, "INV_BannerPVP_01", "=q6=#j29#", ""};
		{ 22, 36941, "", "=q3=Competitor's Tabard", "=ds=#s7#"};
		{ 23, 22999, "", "=q1=Tabard of the Agent Dawn", "=ds=#s7#, =q1=#m4#"};
		{ 24, 28788, "", "=q1=Tabard of the Protector", "=ds=#s7#, =q1=#m4#"};
		{ 25, 19160, "", "=q1=Contest Winner's Tabard", "=ds=#s7#"};
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
		{ 7, 0, "INV_BannerPVP_01", "=q6=#m6#", ""};
		{ 9, 15197, "", "=q1=Scout's Tabard", "=ds=#s7#"};
		{ 10, 15199, "", "=q1=Stone Guard's Herald", "=ds=#s7#"};
		{ 11, 20131, "", "=q1=Battle Tabard of the Defilers", "=ds=#s7#, =q1=#m4#"};
		{ 12, 19031, "", "=q1=Frostwolf Battle Tabard", "=ds=#s7#"};
		{ 13, 19505, "", "=q1=Warsong Battle Tabard", "=ds=#s7#"};
		{ 16, 23192, "", "=q2=Tabard of the Scarlet Crusade", "=ds=#s7#", "", "0.48%"};
		{ 17, 5976, "", "=q1=Guild Tabard", "=ds=#s7#"};
		Prev = "Tabards2";
		Back = "SETMENU";
	};

		-------------------------
		--- Trading Card Game ---
		-------------------------

	AtlasLoot_Data["CardGame1"] = {
		{ 1, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud27#"};
		{ 2, 38576, "", "=q4=Big Battle Bear", "=ds=#ud28#"};
		{ 3, 0, "", "=q3=Taunt Flag", "=ds=#ud29#"};
		{ 4, 38577, "", "=q1=Party Grenade", "=ds=#ud30#"};
		{ 6, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud23#"};
		{ 7, 38050, "", "=q3=Soul-Trader Beacon", "=ds=#ud26#"};
		{ 8, 38301, "", "=q3=D.I.S.C.O", "=ds=#ud25#"};
		{ 9, 38233, "", "=q1=Path of Illidan", "=ds=#ud24#"};
		{ 11, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud19#"};
		{ 12, 35227, "", "=q4=Goblin Weather Machine - Prototype 01-B", "=ds=#ud21#"};
		{ 13, 35226, "", "=q4=X-51 Nether-Rocket X-TREME", "=ds=#ud22#"};
		{ 14, 35225, "", "=q3=X-51 Nether-Rocket", "=ds=#ud22#"};
		{ 15, 35223, "", "=q3=Papa Hummel's Old-Fashioned Pet Biscuit", "=ds=#ud20#"};
		{ 16, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud15#"};
		{ 17, 34493, "", "=q4=Dragon Kite", "=ds=#ud16#"};
		{ 18, 34492, "", "=q3=Rocket Chicken", "=ds=#ud17#"};
		{ 19, 34499, "", "=q3=Paper Flying Machine Kit", "=ds=#ud18#"};
		{ 21, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud3#"};
		{ 22, 33225, "", "=q4=Reins of the Swift Spectral Tiger", "=ds=#ud14#"};
		{ 23, 33224, "", "=q3=Reins of the Spectral Tiger", "=ds=#ud14#"};
		{ 24, 33223, "", "=q3=Fishing Chair", "=ds=#ud13#"};
		{ 25, 33219, "", "=q3=Goblin Gumbo Kettle", "=ds=#ud12#"};
		{ 27, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud2#"};
		{ 28, 32588, "", "=q3=Banana Charm", "=ds=#ud9#"};
		{ 29, 32566, "", "=q3=Picnic Basket", "=ds=#ud10#"};
		{ 30, 32542, "", "=q3=Imp in a Ball", "=ds=#ud11#"};
		Next = "CardGame2";
		Back = "SETMENU";
	};

	AtlasLoot_Data["CardGame2"] = {
		{ 1, 0, "INV_Box_01", "=q6=#ud4#", "=q1=#ud1#"};
		{ 2, 23705, "", "=q4=Tabard of Flame", "=ds=#ud6#"};
		{ 3, 23713, "", "=q4=Hippogryph Hatchling", "=ds=#ud7#"};
		{ 4, 23720, "", "=q4=Riding Turtle", "=ds=#ud8#"};
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

	AtlasLoot_Data["Aquatic"] = {
		{ 1, 20371, "", "=q3=Blue Murloc Egg", "=ds=2005 BlizzCon"};
		{ 2, 30360, "", "=q3=Lurky's Egg", "=ds=The Burning Crusade Collector's Edition (Europe Only)"};
		{ 3, 33993, "", "=q3=Mojo", "=ds=#z29# Drop"};
		{ 4, 43517, "", "=q3=Penguin Egg", "=ds="};
		{ 5, 22114, "", "=q3=Pink Murloc Egg", "=ds=Fan website gift around Christmas 2006 (Europe Only)"};
		{ 6, 19450, "", "=q1=A Jubling's Tiny Home", "=ds=Darkmoon Faire #m33#"};
		{ 7, 27445, "", "=q1=Magical Crawdad Box", "=ds=Mr. Pinchy #m33#"};
		{ 8, 11026, "", "=q1=Tree Frog Box", "=ds=#m32# Darkmoon Faire"};
		{ 9, 11027, "", "=q1=Wood Frog Box", "=ds=#m32# Darkmoon Faire"};
		{ 10, 21168, "", "=q1=Baby Shark", "=ds=#m32# Lake Wintergrasp"};
		Next = "Birds";
	};

	AtlasLoot_Data["Birds"] = {
		{ 1, 32616, "", "=q3=Egbert's Egg", "=ds=Children's Week Reward"};
		{ 2, 12185, "", "=q2=Bloodsail Admiral's Hat", "=ds=Bloodsail Buccaneers Reputation Reward"};
		{ 3, 11023, "", "=q1=Ancona Chicken", "=ds=#m32# Shimmering Flats"};
		{ 4, 11110, "", "=q1=Chicken Egg", "=ds=#m4#"};
		{ 5, 8500, "", "=q1=Great Horned Owl", "=ds=#m32# Darnassus"};
		{ 6, 8501, "", "=q1=Hawk Owl", "=ds=#m32# Darnassus"};
		{ 7, 31760, "", "=q1=Miniwing", "=ds=#m4#"};
		{ 8, 8496, "", "=q1=Parrot Cage (Cockatiel)", "=ds=#m32# Booty Bay"};
		{ 9, 8492, "", "=q1=Parrot Cage (Green Wing Macaw)", "=ds=The Deadmines Drop"};
		{ 10, 8494, "", "=q1=Parrot Cage (Hyacinth Macaw)", "=ds=Drops from Bloodsail (Stranglethorn Vale)"};
		{ 11, 8495, "", "=q1=Parrot Cage (Senegal)", "=ds=#m32# Booty Bay / Netherstorm"};
		Prev = "Aquatic";
		Next = "Invertebrates";
	};

	AtlasLoot_Data["Invertebrates"] = {
		{ 1, 38628, "", "=q3=Nether Ray Fry", "=ds=Reputation Reward"};
		{ 2, 34478, "", "=q3=Tiny Sporebat", "=ds=Reputation Reward"};
		{ 3, 29901, "", "=q1=Blue Moth Egg", "=ds=#m32# The Exodar"};
		{ 4, 29960, "", "=q1=Captured Firefly", "=ds=Drops from Bogflare Needler (Zangarmarsh)"};
		{ 5, 10393, "", "=q1=Cockroach", "=ds=#m32# Undercity / Netherstorm"};
		{ 6, 20769, "", "=q1=Disgusting Oozeling", "=ds=Drops from Ooze"};
		{ 7, 29902, "", "=q1=Red Moth Egg", "=ds=#m32# Netherstorm"};
		{ 8, 12529, "", "=q1=Smolderweb Carrier", "=ds=#m4#"};
		{ 9, 29904, "", "=q1=White Moth Egg", "=ds=#m32# The Exodar"};
		{ 10, 29903, "", "=q1=Yellow Moth Egg", "=ds=#m32# The Exodar"};
		Prev = "Birds";
		Next = "Mammals1";
	};

	AtlasLoot_Data["Mammals1"] = {
		{ 1, 32588, "", "=q3=Banana Charm", "=ds=#m24#"};
		{ 2, 38506, "", "=q3=Don Carlos' Famous Hat", "=ds=Drops from Don Carlos (Heroic Old Hillsbrad Foothills)"};
		{ 3, 32622, "", "=q3=Elekk Training Collar", "=ds=Children's Week Reward"};
		{ 4, 32498, "", "=q3=Fortune Coin", "=ds=2007 Blizzard Worldwide Invitational (Korea only)"};
		{ 5, 13583, "", "=q3=Panda Collar", "=ds=Classic Collector's Edition"};
		{ 6, 40653, "", "=q3=Reeking Pet Carrier", "=ds=Achievement #m33#"};
		{ 7, 32233, "", "=q3=Wolpertinger's Tankard", "=ds=Brewfest #m33#"};
		{ 8, 29364, "", "=q1=Brown Rabbit Crate", "=ds=Sold at Netherstorm"};
		{ 9, 8491, "", "=q1=Cat Carrier (Black Tabby)", "=ds=Droped by Dalaran Mobs"};
		{ 10, 8485, "", "=q1=Cat Carrier (Bombay)", "=ds=#m32# Elwynn Forest"};
		{ 11, 8486, "", "=q1=Cat Carrier (Cornish Rex)", "=ds=#m32# Elwynn Forest"};
		{ 12, 8487, "", "=q1=Cat Carrier (Orange Tabby)", "=ds=#m32# Elwynn Forest"};
		{ 13, 8490, "", "=q1=Cat Carrier (Siamese)", "=ds=#m32# Elwynn Forest"};
		{ 14, 8488, "", "=q1=Cat Carrier (Silver Tabby)", "=ds=#m32# Elwynn Forest"};
		{ 15, 8489, "", "=q1=Cat Carrier (White Kitten)", "=ds=#m32# Stormwind City"};
		{ 16, 21301, "", "=q1=Green Helper Box", "=ds=#m28# #m33#"};
		{ 17, 21308, "", "=q1=Jingling Bell", "=ds=#m28# #m33#"};
		{ 18, 23007, "", "=q1=Piglet's Collar", "=ds=Children's Week Reward"};
		{ 19, 10394, "", "=q1=Prairie Dog Whistle", "=ds=#m32# Thunder Bluff"};
		{ 20, 8497, "", "=q1=Rabbit Crate (Snowshoe)", "=ds=#m32# Dun Morogh"};
		{ 21, 23015, "", "=q1=Rat Cage", "=ds=Children's Week #m33#"};
		{ 22, 21305, "", "=q1=Red Helper Box", "=ds=Winter Veil #m33#"};
		{ 23, 22235, "", "=q1=Truesilver Shafted Arrow", "=ds=Love is in the Air #m33#"};
		{ 24, 12264, "", "=q1=Worg Carrier", "=ds=#m4#"};
		Prev = "Invertebrates";
		Next = "Mechanical";
	};

	AtlasLoot_Data["Mechanical"] = {
		{ 1, 34493, "", "=q4=Dragon Kite", "=ds=#m24#"};
		{ 2, 34425, "", "=q3=Clockwork Rocket Bot", "=ds=#m28# #m33#"};
		{ 3, 34492, "", "=q3=Rocket Chicken", "=ds=#m24#"};
		{ 4, 15996, "", "=q1=Lifelike Mechanical Toad", "=ds=Engineering Made"};
		{ 5, 11826, "", "=q1=Lil' Smoky", "=ds=Engineering Made"};
		{ 6, 10398, "", "=q1=Mechanical Chicken", "=ds=#m4#"};
		{ 7, 4401, "", "=q1=Mechanical Squirrel Box", "=ds=Engineering Made"};
		{ 8, 11825, "", "=q1=Pet Bombling", "=ds=Engineering Made"};
		{ 9, 21277, "", "=q1=Tranquil Mechanical Yeti", "=ds=Engineering Made"};
		Prev = "Mammals1";
		Next = "Mythical1";
	};

	AtlasLoot_Data["Mythical1"] = {
		{ 1, 23713, "", "=q4=Hippogryph Hatchling", "=ds=#m24#"};
		{ 2, 23083, "", "=q3=Captured Flame", "=ds=Midsummer Fire Festival #m33#"};
		{ 3, 0, "", "=q3=Competitor's Souvenir", "=ds=Spirit of Competition #m33#"}; ---Missing ItemID
		{ 4, 13584, "", "=q3=Diablo Stone", "=ds=Classic Collector's Edition"};
		{ 5, 37297, "", "=q3=Gold Medallion", "=ds=Spirit of Competition #m33#"};
		{ 6, 25535, "", "=q3=Netherwhelp's Collar", "=ds=The Burning Crusade Collector's Edition"};
		{ 7, 35504, "", "=q3=Phoenix Hatchling", "=ds=Drops from Kael'thas Sunstrider (Magisters' Terrace)"};
		{ 8, 34955, "", "=q3=Scorched Stone", "=ds=Midsummer Fire Festival #m33#"};
		{ 9, 33154, "", "=q3=Sinister Squashling", "=ds=Hallow's End #m33#"};
		{ 10, 32617, "", "=q3=Sleepy Willy", "=ds=Children's Week #m33#"};
		{ 11, 38050, "", "=q3=Soul-Trader Beacon", "=ds=#m24#"};
		{ 12, 39656, "", "=q3=Tyrael's Hilt", "=ds=2008 Paris Worldwide Invitational"};
		{ 13, 13582, "", "=q3=Zergling Leash", "=ds=Classic Collector's Edition"};
		{ 14, 34535, "", "=q1=Azure Whelpling", "=ds=Drops from Blue Dragonspawn (Azshara)"};
		{ 15, 29958, "", "=q1=Blue Dragonhawk Hatchling", "=ds=#m32# Netherstorm"};
		{ 16, 10822, "", "=q1=Dark Whelpling", "=ds=Drops from Scalding/Searing Whelps"};
		{ 17, 29953, "", "=q1=Golden Dragonhawk Hatchling", "=ds=#m32# Eversong Woods"};
		{ 18, 29363, "", "=q1=Mana Wyrmling", "=ds=#m32# Netherstorm"};
		{ 19, 29956, "", "=q1=Red Dragonhawk Hatchling", "=ds=#m32# Eversong Woods"};
		{ 20, 29957, "", "=q1=Silver Dragonhawk Hatchling", "=ds=#m32# Eversong Woods"};
		{ 21, 21309, "", "=q1=Snowman Kit", "=ds=#m28# Reward"};
		{ 22, 11474, "", "=q1=Sprite Darter Egg", "=ds=#m4#"};
		{ 23, 8499, "", "=q1=Tiny Crimson Whelpling", "=ds=Drops from Red Whelps (Wetlands)"};
		{ 24, 8498, "", "=q1=Tiny Emerald Whelpling", "=ds=Drops from Dreaming Whelp (Swamp of Sorrows)"};
		Prev = "Mechanical";
		Next = "Reptiles";
	};

	AtlasLoot_Data["Reptiles"] = {
		{ 1, 35350, "", "=q3=Chuck's Bucket", "=ds=Fishing Daily Quest #m33#"};
		{ 2, 33818, "", "=q3=Muckbreath's Bucket", "=ds=Fishing Daily Quest #m33#"};
		{ 3, 35349, "", "=q3=Snarly's Bucket", "=ds=Fishing Daily Quest #m33#"};
		{ 4, 33816, "", "=q3=Toothy's Bucket", "=ds=Fishing Daily Quest #m33#"};
		{ 5, 10360, "", "=q1=Black Kingsnake", "=ds=#m32# Orgrimmar"};
		{ 6, 10361, "", "=q1=Brown Snake", "=ds=#m32# Orgrimmar"};
		{ 7, 10392, "", "=q1=Crimson Snake", "=ds=#m32# Orgrimmar"};
		{ 8, 23002, "", "=q1=Turtle Box", "=ds=Children's Week #m33#"};
		Prev = "Mythical1";
	};

    		--------------
		--- Mounts ---
		--------------

	AtlasLoot_Data["Mounts31"] = {
		{ 1, 0, "", "=q6=Ground Mounts", ""};
		{ 2, 43956, "", "=q4=Reins of the Black War Mammoth", "=ec1=#m7#"};
		{ 3, 44077, "", "=q4=Reins of the Black War Mammoth", "=ec1=#m6#"};
		{ 4, 44230, "", "=q4=Reins of the Wooly Mammoth ", "=ec1=#m7#"};
		{ 5, 44231, "", "=q4=Reins of the Wooly Mammoth ", "=ec1=#m6#"};
		{ 6, 43961, "", "=q4=Reins of the Grand Ice Mammoth", "=ec1=#m7# The Sons of Hodir"};
		{ 7, 44086, "", "=q4=Reins of the Grand Ice Mammoth", "=ec1=#m6# The Sons of Hodir"};
		{ 8, 43958, "", "=q4=Reins of the Ice Mammoth", "=ec1=#m7# The Sons of Hodir"};
		{ 9, 44080, "", "=q4=Reins of the Ice Mammoth", "=ec1=#m6# The Sons of Hodir"};
		{ 10, 44225, "", "=q4=Reins of the Armored Brown Bear", "=ec1=#m7#"};
		{ 11, 44226, "", "=q4=Reins of the Armored Brown Bear", "=ec1=#m6#"};
		{ 12, 44224, "", "=q4=Reins of the Black War Bear", "=ec1=#m6#"};
		{ 13, 44235, "", "=q4=Reins of the Traveler's Tundra Mammoth", "=ec1=#m7#"};
		{ 14, 44234, "", "=q4=Reins of the Traveler's Tundra Mammoth", "=ec1=#m6#"};
		{ 16, 0, "", "=q6=Flying Mounts", ""};
		{ 17, 43986, "", "=q4=Reins of the Black Drake", "=ds=10 man Obsidian Sanctuary hard mode"};

		{ 18, 43953, "", "=q4=Reins of the Blue Drake", "=ds=Malygos"};
		{ 19, 43951, "", "=q4=Reins of the Bronze Drake", "=ds= Infinite Corruptor in heroic Caverns of Time: Stratholme"};
		{ 20, 43955, "", "=q4=Reins of the Red Drake", "=ds=The Wyrmrest Accord - Exalted"};
		{ 21, 43954, "", "=q4=Reins of the Twilight Drake", "=ds=25 man Obsidian Sanctuary hard mode"};

		{ 22, 0, "", "=q4=Red Proto-Drake", "=ds=#m34# #m33#"};
		{ 23, 0, "", "=q4=Black Proto-Drake", "=ds=#m34# #m33#"};
		{ 24, 0, "", "=q4=Blue Proto-Drake", "=ds="};
		{ 25, 0, "", "=q4=White Proto-Drake", "=ds="};
		{ 26, 0, "", "=q4=Plagued Proto-Drake", "=ds="};
		{ 27, 0, "", "=q4=Violet Proto-Drake", "=ds=#m34# #m33#"};
		{ 28, 44178, "", "=q4=Reins of the Albino Drake", "=ds=#m34# #m33#"};
		{ 29, 44690, "", "=q4=Armored Blue Wind Rider", "=ds="};
		{ 30, 44689, "", "=q4=Armored Snowy Gryphon", "=ds="};
		Next = "Mounts32";
		Back = "MOUNTMENU";
	};

	AtlasLoot_Data["Mounts32"] = {
		{ 1, 0, "INV_Box_01", "=q6=#j32#", ""};
		{ 2, 44413, "", "=q4=Mekgineer's Chopper", "=ds=#p5# =ec1=#m7#"};
		{ 3, 41508, "", "=q4=Mechano-hog", "=ds=#p5# =ec1=#m6#"};
		{ 4, 39303, "", "=q4=Swift Flying Carpet", "=ds=#p8#"};
		{ 5, 44558, "", "=q4=Magnificent Flying Carpet", "=ds=#p8#"};
		{ 6, 44557, "", "=q4=Swift Ebonweave Carpet", "=ds=#p8#"};
		{ 7, 44555, "", "=q4=Swift Mooncloth Carpet", "=ds=#p8#"};
		{ 8, 44556, "", "=q4=Swift Spellfire Carpet", "=ds=#p8#"};
		{ 9, 44554, "", "=q3=Flying Carpet", "=ds=#p8#"};
		Prev = "Mounts31";
		Back = "MOUNTMENU";
	};

		-----------------------
		--- Emblem of Valor ---
		-----------------------
        
	AtlasLoot_Data["EmblemofValorCloak"] = {
		{ 1, 40724, "", "=q4=Cloak of Kea Feathers", "=ds=#s4#", "25 #eofvalor#", ""};
		{ 2, 40723, "", "=q4=Disguise of the Kumiho", "=ds=#s4#", "25 #eofvalor#", ""};
		{ 3, 40722, "", "=q4=Platinum Mesh Cloak", "=ds=#s4#", "25 #eofvalor#", ""};
		{ 4, 40721, "", "=q4=Hammerhead Sharkskin Cloak", "=ds=#s4#", "25 #eofvalor#", ""};
        Back = "EMBLEMOFVALORMENU";
	};
    
	AtlasLoot_Data["EmblemofValorCloth"] = {
		{ 1, 40741, "", "=q4=Cuffs of the Shadow Ascendant", "=ds=#s8#, #a1#", "60 #eofvalor#", ""};
		{ 2, 40740, "", "=q4=Wraps of the Astral Traveler", "=ds=#s8#, #a1#", "60 #eofvalor#", ""};
		{ 3, 40751, "", "=q4=Slippers of the Holy Light", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
		{ 4, 40750, "", "=q4=Xintor's Expeditionary Boots", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
        Back = "EMBLEMOFVALORMENU";
	};
    
	AtlasLoot_Data["EmblemofValorLeather"] = {
		{ 1, 40739, "", "=q4=Bands of the Great Tree", "=ds=#s8#, #a2#", "60 #eofvalor#", ""};
		{ 2, 40738, "", "=q4=Wristwraps of the Cutthroat", "=ds=#s8#, #a2#", "60 #eofvalor#", ""};
		{ 3, 40748, "", "=q4=Boots of Captain Ellis", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
		{ 4, 40749, "", "=q4=Rainey's Chewed Boots", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
        Back = "EMBLEMOFVALORMENU";
	};
    
	AtlasLoot_Data["EmblemofValorMail"] = {
		{ 1, 40736, "", "=q4=Armguard of the Tower Archer", "=ds=#s8#, #a3#", "60 #eofvalor#", ""};
		{ 2, 40737, "", "=q4=Pigmented Clan Bindings", "=ds=#s8#, #a3#", "60 #eofvalor#", ""};
		{ 3, 40746, "", "=q4=Pack-Ice Striders", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
		{ 4, 40747, "", "=q4=Treads of Coastal Wandering", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
        Back = "EMBLEMOFVALORMENU";
	};
    
	AtlasLoot_Data["EmblemofValorPlate"] = {
		{ 1, 40734, "", "=q4=Bracers of Dalaran's Parapets", "=ds=#s8#, #a4#", "60 #eofvalor#", ""};
		{ 2, 40733, "", "=q4=Wristbands of the Sentinel Huntress", "=ds=#s8#, #a4#", "60 #eofvalor#", ""};
		{ 3, 40735, "", "=q4=Zartson's Jungle Vambraces", "=ds=#s8#, #a4#", "60 #eofvalor#", ""};
		{ 4, 40742, "", "=q4=Bladed Steelboots", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
		{ 5, 40743, "", "=q4=Kyzoc's Ground Stompers", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
		{ 6, 40745, "", "=q4=Sabatons of Rapid Recovery", "=ds=#s12#, #a1#", "40 #eofvalor#", ""};
        Back = "EMBLEMOFVALORMENU";
	};
    
	AtlasLoot_Data["EmblemofValorAccessories"] = {
		{ 1, 40719, "", "=q4=Band of Channeled Magic", "=ds=#s13#", "25 #eofvalor#", ""};
		{ 2, 40720, "", "=q4=Renewal of Life", "=ds=#s13#", "25 #eofvalor#", ""};
		{ 3, 40717, "", "=q4=Ring of Invincibility", "=ds=#s13#", "25 #eofvalor#", ""};
		{ 4, 40718, "", "=q4=Signet of the Impregnable Fortress", "=ds=#s13#", "25 #eofvalor#", ""};
        Back = "EMBLEMOFVALORMENU";
	};
    
	AtlasLoot_Data["EmblemofValorTokens"] = {
		{ 1, 40638, "", "=q4=Mantle of the Lost Protector", "=ds=#e15#", "60 #eofvalor#", ""};
		{ 2, 40635, "", "=q4=Legplates of the Lost Protector", "=ds=#e15#", "75 #eofvalor#", ""};
        Back = "EMBLEMOFVALORMENU";
	};
    
		-------------------------
		--- Emblem of Heroism ---
		-------------------------

	AtlasLoot_Data["EmblemofHeroismCloth"] = {
		{ 1, 42985, "", "=q7=Tattered Dreadmist Mantle", "=ds=#s3#, #a1#", "60 #eofheroism#", "" };
		{ 2, 40697, "", "=q4=Elegant Temple Gardens' Girdle", "=ds=#s10#, #a1#", "40 #eofheroism#", "" };
		{ 3, 40696, "", "=q4=Plush Sash of Guzbah", "=ds=#s10#, #a1#", "40 #eofheroism#", "" };
        Back = "EMBLEMOFHEROISMMENU";
	};
    
	AtlasLoot_Data["EmblemofHeroismLeather"] = {
		{ 1, 42984, "", "=q7=Preened Ironfeather Shoulders", "=ds=#s3#, #a2#", "60 #eofheroism#", "" };
		{ 2, 42952, "", "=q7=Stained Shadowcraft Spaulders", "=ds=#s3#, #a2#", "60 #eofheroism#", "" };
		{ 3, 40694, "", "=q4=Jorach's Crocolisk Skin Belt", "=ds=#s10#, #a2#", "40 #eofheroism#", "" };
		{ 4, 40695, "", "=q4=Vine Belt of the Woodland Dryad", "=ds=#s10#, #a2#", "40 #eofheroism#", "" };
        Back = "EMBLEMOFHEROISMMENU";
	};
    
	AtlasLoot_Data["EmblemofHeroismMail"] = {
		{ 1, 42950, "", "=q4=Champion Herod's Shoulder", "=ds=#s3#, #a3#", "60 #eofheroism#", "" };
		{ 2, 42951, "", "=q4=Mystical Pauldrons of Elements", "=ds=#s3#, #a3#", "60 #eofheroism#", "" };
		{ 3, 40693, "", "=q4=Beadwork Belt of Shamanic Vision", "=ds=#s10#, #a3#", "40 #eofheroism#", "" };
		{ 4, 40692, "", "=q4=Vereesa's Silver Chain Belt", "=ds=#s10#, #a3#", "40 #eofheroism#", "" };
        Back = "EMBLEMOFHEROISMMENU";
	};
    
	AtlasLoot_Data["EmblemofHeroismPlate"] = {
		{ 1, 42949, "", "=q7=Polished Spaulders of Valor", "=ds=#s3#, #a4#", "60 #eofheroism#", "" };
		{ 2, 40691, "", "=q4=Magroth's Meditative Cincture", "=ds=#s10#, #a4#", "40 #eofheroism#", "" };
		{ 3, 40688, "", "=q4=Verdungo's Barbarian Cord", "=ds=#s10#, #a4#", "40 #eofheroism#", "" };
		{ 4, 40689, "", "=q4=Waistguard of Living Iron", "=ds=#s10#, #a4#", "40 #eofheroism#", "" };
        Back = "EMBLEMOFHEROISMMENU";
	};
    
	AtlasLoot_Data["EmblemofHeroismWeapons"] = {
		{ 1, 42948, "", "=q7=Devout Aurastone Hammer", "=ds=#w6#, #h3#", "75 #eofheroism#", "" };
		{ 2, 42945, "", "=q7=Venerable Dal'Rend's Sacred Charge", "=ds=#w10#, #h3#", "60 #eofheroism#", "" };
		{ 3, 42944, "", "=q7=Balanced Heartseeker", "=ds=#w4#, #h1#", "60 #eofheroism#", "" };
		{ 4, 42943, "", "=q7=Bloodied Arcanite Reaper", "=ds=#w1#, #h2#", "100 #eofheroism#", "" };
		{ 5, 42947, "", "=q7=Dignified Headmaster's Charge", "=ds=#w9#", "100 #eofheroism#", "" };
		{ 6, 42946, "", "=q7=Charmed Ancient Bone Bow", "=ds=#w2#", "100 #eofheroism#", "" };
		{ 7, 40702, "", "=q4=Rolfsen's Ripper", "=ds=#w4#, #h4#", "50 #eofheroism#", "" };
		{ 8, 40703, "", "=q4=Grasscutter", "=ds=#w10#, #h4#", "50 #eofheroism#", "" };
		{ 9, 40704, "", "=q4=Pride", "=ds=#w13#, #h4#", "50 #eofheroism#", "" };
		{ 10, 40716, "", "=q4=Lillehoff's Winged Blades", "=ds=#w11#", "15 #eofheroism#", "" };
		{ 11, 40701, "", "=q4=Crygil's Discarded Plate Panel", "=ds=#w8#", "35 #eofheroism#", "" };
		{ 12, 40700, "", "=q4=Protective Barricade of the Light", "=ds=#w8#", "35 #eofheroism#", "" };
        Back = "EMBLEMOFHEROISMMENU";
	};
    
	AtlasLoot_Data["EmblemofHeroismAccessories"] = {
		{ 1, 42992, "", "=q7=Discerning Eye of the Beast", "=ds=#s14#", "75 #eofheroism#", "" };
		{ 2, 42991, "", "=q7=Swift Hand of Justice", "=ds=#s14#", "75 #eofheroism#", "" };
		{ 3, 40679, "", "=q4=Chained Military Gorget", "=ds=#s2#", "25 #eofheroism#", "" };
		{ 4, 40680, "", "=q4=Encircling Burnished Gold Chains", "=ds=#s2#", "25 #eofheroism#", "" };
		{ 5, 40681, "", "=q4=Lattice Choker of Light", "=ds=#s2#", "25 #eofheroism#", "" };
		{ 6, 40678, "", "=q4=Pendant of the Outcast Hero", "=ds=#s2#", "25 #eofheroism#", "" };
		{ 7, 40684, "", "=q4=Mirror of Truth", "=ds=#s14#", "40 #eofheroism#", "" };
		{ 8, 40682, "", "=q4=Sundial of the Exiled", "=ds=#s14#", "40 #eofheroism#", "" };
		{ 9, 40685, "", "=q4=The Egg of Mortal Essence", "=ds=#s14#", "40 #eofheroism#", "" };
		{ 10, 40683, "", "=q4=Valor Medal of the First War", "=ds=#s14#", "40 #eofheroism#", "" };
		{ 11, 40699, "", "=q4=Handbook of Obscure Remedies", "=ds=#s15#", "25 #eofheroism#", "" };
		{ 12, 40698, "", "=q4=Ward of the Violet Citadel", "=ds=#s15#", "25 #eofheroism#", "" };
        Back = "EMBLEMOFHEROISMMENU";
	};
    
	AtlasLoot_Data["EmblemofHeroismTokens"] = {
		{ 1, 40611, "", "=q4=Chestguard of the Lost Protector", "=ds=#e15#", "80 #eofheroism#", "" };
		{ 2, 40614, "", "=q4=Gloves of the Lost Protector", "=ds=#e15#", "60 #eofheroism#", "" };
		{ 3, 43102, "", "=q3=Frozen Orb", "=ds=#e15#", "10 #eofheroism#", "" };
        Back = "EMBLEMOFHEROISMMENU";
	};