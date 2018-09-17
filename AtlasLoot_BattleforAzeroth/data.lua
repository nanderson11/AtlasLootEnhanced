-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)
local select = _G.select
local string = _G.string
local format = string.format

-- WoW
local GetAchievementInfo = GetAchievementInfo
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local addonname = ...
local AtlasLoot = _G.AtlasLoot
local data = AtlasLoot.ItemDB:Add(addonname, 8)

local AL = AtlasLoot.Locales

local RF_DIFF = data:AddDifficulty(AL["Raid Finder"], "LFRWithPreset", {
	Item = {
		item2bonus = "LegionMaxTitanforgedByBaseLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 17)
local NORMAL_DIFF = data:AddDifficulty(AL["Normal"], "n", {
	Item = {
		item1bonus = "Scaling",
		addDifficultyBonus = true,
	},
}, 1)
local NORMAL_RAID_DIFF = data:AddDifficulty(AL["Normal"], "NormalRaidWithPreset", {
	Item = {
		item2bonus = "LegionMaxTitanforgedByBaseLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 14)
local NORMAL_DUNGEON_DIFF = data:AddDifficulty(AL["Normal"], "DungeonWithPreset", {
	Item = {
		item1bonus = "Scaling",
		item2bonus = "LegionDungeonTitanforged",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 1)
local HEROIC_DIFF = data:AddDifficulty(AL["Heroic"], "h", nil, 2)
local HEROIC_DUNGEON_DIFF = data:AddDifficulty(AL["Heroic"], "HeroicDungeonWithPreset", {
	Item = {
		item2bonus = "LegionHCDungeonTitanforged",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 2)
local MYTHICD_DIFF = data:AddDifficulty(AL["Mythic"], "h", nil, 23)
local MYTHICD_DUNGEON_DIFF = data:AddDifficulty(AL["Mythic"], "MythicDungeonWithPreset", {
	Item = {
		item2bonus = "LegionMDungeonTitanforged",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 23)
local MYTHICD2_DIFF = data:AddDifficulty(AL["Mythic"], "h", nil, 23)
local MYTHICD2_DUNGEON_DIFF = data:AddDifficulty(AL["Mythic"], "MythicDungeon2WithPreset", {
	Item = {
		item1bonus = "LegionMDungeon2",
		item2bonus = "LegionMDungeon2Titanforged",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 23)
local HEROIC_PRE_DIFF = data:AddDifficulty(AL["Heroic"], "HeroicWithPreset", {
	Item = {
		item2bonus = "LegionMaxTitanforgedByBaseLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 15)
local MYTHIC_DIFF = data:AddDifficulty(AL["Mythic"], "m", nil, 16)
local MYTHIC_PRE_DIFF = data:AddDifficulty(AL["Mythic"], "MyhticWithPreset", {
	Item = {
		item2bonus = "LegionMaxTitanforgedByBaseLvl",
		autoCompleteItem2 = true,
		addDifficultyBonus = true,
	},
}, 16)

local NORMAL_ITTYPE = data:AddItemTableType("Item", "Item")
local RAID_ITTYPE = data:AddItemTableType("Item", "Item") -- Normal, Thunder-/Warforged...
local AC_ITTYPE = data:AddItemTableType("Achievement", "Item")

local DUNGEON_CONTENT = data:AddContentType(AL["Dungeons"], ATLASLOOT_DUNGEON_COLOR)
local RAID_CONTENT = data:AddContentType(AL["Raids"], ATLASLOOT_RAID_COLOR)

-- Shared loot tables

-- /////////////////////////////////
-- Instance
-- /////////////////////////////////
--[[
data["InstanceName"] = {
	EncounterJournalID = 111,
	MapID = 749,
	ContentType = DUNGEON_CONTENT / RAID_CONTENT,
	TableType = RAID_ITTYPE,
	items = 
	{
		{ -- bossN
			EncounterJournalID = 1111,
			[NORMAL_RAID_DIFF] = {
			},
		},
	}
}
]]
data["Freehold"] = {
	EncounterJournalID = 1001,
	MapID = 936,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Council o' Captains
			EncounterJournalID = 2093,
			[NORMAL_RAID_DIFF] = {
				{ 1, 158314 }, -- Seal of Questionable Loyalties
				{ 2, 158346 }, -- Sailcloth Waistband
				{ 3, 158351 }, -- Dashing Bilge Rat Shoes
				{ 4, 159297 }, -- Silver-Trimmed Breeches
				{ 5, 159130 }, -- Captain's Diplomacy
				{ 6, 159132 }, -- Jolly's Boot Dagger
				{ 7, 159356 }, -- Raoul's Barrelhook Bracers
				{ 8, 158311 }, -- Concealed Fencing Plates
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Ring of Booty
			EncounterJournalID = 2094,
			[NORMAL_RAID_DIFF] = {
				{ 1, 158302 }, -- Chum-Coated Leggings
				{ 2, 155889 }, -- Sharkhide Grips
				{ 3, 155891 }, -- Greasy Bacon-Grabbers
				{ 4, 159634 }, -- Jeweled Sharksplitter
				{ 5, 158361 }, -- Sharkwater Waders
				{ 6, 158305 }, -- Sea Dog's Cuffs
				{ 7, 155892 }, -- Bite-Resistant Chain Gloves
				{ 8, 158356 }, -- Shell-Kickers
				{ 9, 155890 }, -- Sharktooth-Knuckled Grips
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Harlan Sweete
			EncounterJournalID = 2095,
			[NORMAL_RAID_DIFF] = {
				{ 1, 159352 }, -- Gaping Maw Shoulderguard
				{ 2, 159407 }, -- Lockjaw Shoulderplate
				{ 3, 155886 }, -- Smartly Plumed Cap
				{ 4, 155888 }, -- Irontide Captain's Hat
				{ 5, 155887 }, -- Sweete's Jeweled Headgear
				{ 6, 159299 }, -- Gold-Tasseled Epaulets
				{ 7, 155881 }, -- Harlan's Loaded Dice
				{ 8, 159635 }, -- Bloody Tideturner
				{ 9, 155885 }, -- Sea-Brawler's Greathelm
				{ 10, 158301 }, -- Ruffled Poet Blouse
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Skycap'n Kragg
			EncounterJournalID = 2102,
			[NORMAL_RAID_DIFF] = {
				{ 1, 159633 }, -- Sharkbait's Fishhook
				{ 2, 159353 }, -- Chain-Linked Safety Cord
				{ 3, 158360 }, -- Sharkbait Harness Girdle
				{ 4, 155862 }, -- Kragg's Rigging Scalers
				{ 5, 155884 }, -- Parrotfeather Cloak
				{ 6, 159227 }, -- Silk Cuffs of the Skycap'n
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	}
}

data["Shrine of the Storm"] = {
	EncounterJournalID = 1036,
	MapID = 1039,
	ContentType = DUNGEON_CONTENT,
	items = 
	{
		{ -- Aqu'sirr
			EncounterJournalID = 2153,
			[NORMAL_RAID_DIFF] = {
				{ 1, 159420 }, -- Stormsurger's Sabatons
				{ 2, 159239 }, -- Aqu'sirr's Swirling Sash
				{ 3, 159366 }, -- Water Shapers
				{ 4, 159619 }, -- Briny Barnacle
				{ 5, 158318 }, -- Murky Cerulean Signet
				{ 6, 159321 }, -- Gloves of Corrupted Waters
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Tidesage Council
			EncounterJournalID = 2154,
			[NORMAL_RAID_DIFF] = {
				{ 1, 159295 }, -- Footpads of the Serene Wake
				{ 2, 159359 }, -- Sea Priest's Greaves
				{ 3, 159311 }, -- Blessing Bearer's Waders
				{ 4, 159419 }, -- Ironhull's Reinforced Legplates
				{ 5, 159614 }, -- Galecaller's Boon
				{ 6, 159426 }, -- Belt of the Unrelenting Gale
				{ 7, 158371 }, -- Seabreeze
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Lord Stormsong
			EncounterJournalID = 2155,
			[NORMAL_RAID_DIFF] = {
				{ 1, 159308 }, -- Bracers of the Sacred Fleet
				{ 2, 159421 }, -- Gauntlets of Total Subservience
				{ 3, 159646 }, -- Aq'mar, the Tidecaller
				{ 4, 159242 }, -- Leggings of the Drowned Lord
				{ 5, 159364 }, -- Bindings of the Calling Depths
				{ 6, 159289 }, -- Void-Drenched Cape
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
		{ -- Vol'zith the Whisperer
			EncounterJournalID = 2156,
			[NORMAL_RAID_DIFF] = {
				{ 1, 159307 }, -- Tentacle-Laced Spaulders
				{ 2, 159354 }, -- Hauberk of Sunken Despair
				{ 3, 159238 }, -- Mantle of Void-Touched Waters
				{ 4, 159135 }, -- Deep Fathom's Bite
				{ 5, 159302 }, -- Cowl of Fluid Machinations
				{ 6, 159244 }, -- Stormlurker's Cowl
				{ 7, 159430 }, -- Helm of Abyssal Malevolence
				{ 8, 159408 }, -- Chestguard of the Deep Denizen
				{ 9, 159620 }, -- Conch of Dark Whispers
				{ 10, 159377 }, -- Chain of Consummate Power
			},
			[HEROIC_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
			[MYTHICD_DUNGEON_DIFF] = {
				GetItemsFromDiff = NORMAL_DUNGEON_DIFF,
			},
		},
	}
}

-- /////////////////////////////////
-- Raid
-- /////////////////////////////////

data["Uldir"] = {
	EncounterJournalID = 1031,
	MapID = 1148,
	ContentType = RAID_CONTENT,
	TableType = RAID_ITTYPE,
	items = 
	{
		{ -- Taloc
			EncounterJournalID = 2168,
			[NORMAL_RAID_DIFF] = {
				{ 1, 160629 }, -- Rubywrought Sparkguards
				{ 2, 160631 }, -- Legguards of Coalescing Plasma
				{ 3, 160618 }, -- Gloves of Descending Madness
				{ 4, 160680 }, -- Titanspark Animator
				{ 5, 160637 }, -- Crimson Colossus Armguards
				{ 6, 160639 }, -- Greaves of Unending Vigil
				{ 7, 160679 }, -- Khor, Hammer of the Corrupted
				{ 8, 160651 }, -- Vigilant's Bloodshaper
				{ 9, 160652 }, -- Construct Overcharger
				{ 10, 160714 }, -- Volatile Walkers
				{ 11, 160622 }, -- Bloodstorm Buckle
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- MOTHER
			EncounterJournalID = 2167,
			[NORMAL_RAID_DIFF] = {
				{ 1, 160695 }, -- Uldir Subject Manifest
				{ 2, 160682 }, -- Mother's Twin Gaze
				{ 3, 160626 }, -- Gloves of Involuntary Amputation
				{ 4, 160645 }, -- Rot-Scour Ring
				{ 5, 160615 }, -- Leggings of Lingering Infestation
				{ 6, 160632 }, -- Flame-Sterilized Spaulders
				{ 7, 160634 }, -- Gridrunner Galea
				{ 8, 160681 }, -- Glaive of the Keepers
				{ 9, 160638 }, -- Decontaminator's Greatbelt
				{ 10, 160625 }, -- Pathogenic Legwraps
				{ 11, 160683 }, -- Latticework Scalpel
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Fetid Devourer
			EncounterJournalID = 2146,
			[NORMAL_RAID_DIFF] = {
				{ 1, 160689 }, -- Regurgitated Purifier's Flamestaff
				{ 2, 160685 }, -- Biomelding Cleaver
				{ 3, 160619 }, -- Jerkin of the Aberrant Chimera
				{ 4, 160648 }, -- Frenetic Corpuscle
				{ 5, 160635 }, -- Waste Disposal Crushers
				{ 6, 160643 }, -- Fetid Horror's Tanglecloak
				{ 7, 160616 }, -- Horrific Amalgam's Hood
				{ 8, 160628 }, -- Fused Monstrosity Stompers
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Zek'voz, Herald of N'zoth
			EncounterJournalID = 2169,
			[NORMAL_RAID_DIFF] = {
				{ 1, 160627 }, -- Chainvest of Assured Quality
				{ 2, 160633 }, -- Titanspark Energy Girdle
				{ 3, 160650 }, -- Disc of Systematic Regression
				{ 4, 160624 }, -- Quarantine Protocol Treads
				{ 5, 160718 }, -- Greaves of Creeping Darkness
				{ 6, 160617 }, -- Void-Lashed Wristband
				{ 7, 160647 }, -- Ring of the Infinite Void
				{ 8, 160717 }, -- Replicated Chitin Cord
				{ 9, 160687 }, -- Containment Analysis Baton
				{ 10, 160688 }, -- Void-Binder
				{ 11, 160640 }, -- Warboots of Absolute Eradication
				{ 12, 160613 }, -- Mantle of Contained Corruption
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Vectis
			EncounterJournalID = 2166,
			[NORMAL_RAID_DIFF] = {
				{ 1, 160644 }, -- Plasma-Spattered Greatcloak
				{ 2, 160678 }, -- Bow of Virulent Infection
				{ 3, 160716 }, -- Blighted Anima Greaves
				{ 4, 160734 }, -- Cord of Animated Contagion
				{ 5, 160655 }, -- Syringe of Bloodborne Infirmity
				{ 6, 160623 }, -- Hood of Pestilent Ichor
				{ 7, 160649 }, -- Inoculating Extract
				{ 8, 160636 }, -- Chestguard of Virulent Mutagens
				{ 9, 160698 }, -- Vector Deflector
				{ 10, 160715 }, -- Mutagenic Protofluid Handwraps
				{ 11, 160621 }, -- Wristwraps of Coursing Miasma
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Zul, Reborn
			EncounterJournalID = 2195,
			[NORMAL_RAID_DIFF] = {
				{ 1, 160642 }, -- Cloak of Rippling Whispers
				{ 2, 160719 }, -- Visage of the Ascended Prophet
				{ 3, 160691 }, -- Tusk of the Reborn Prophet
				{ 4, 160723 }, -- Imperious Vambraces
				{ 5, 160620 }, -- Usurper's Bloodcaked Spaulders
				{ 6, 160684 }, -- Pursax, the Backborer
				{ 7, 160630 }, -- Crest of the Undying Visionary
				{ 8, 160722 }, -- Chestplate of Apocalyptic Machinations
				{ 9, 160724 }, -- Cincture of Profane Deeds
				{ 10, 160720 }, -- Armbands of Sacrosanct Acts
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Mythrax the Unraveler
			EncounterJournalID = 2194,
			[NORMAL_RAID_DIFF] = {
				{ 1, 160614 }, -- Robes of the Unraveler
				{ 2, 160721 }, -- Oblivion Crushers
				{ 3, 160725 }, -- C'thraxxi General's Hauberk
				{ 4, 160686 }, -- Voror, Gleaming Blade of the Stalwart
				{ 5, 160646 }, -- Band of Certain Annihilation
				{ 6, 160692 }, -- Luminous Edge of Virtue
				{ 7, 160656 }, -- Twitching Tentacle of Xalzaix
				{ 8, 160696 }, -- Codex of Imminent Ruin
				{ 9, 160653 }, -- Xalzaix's Veiled Eye
				{ 10, 163596 }, -- Cowl of Dark Portents
				{ 11, 160641 }, -- Chitinspine Pauldrons
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
		{ -- Zul, Reborn
			EncounterJournalID = 2147,
			[NORMAL_RAID_DIFF] = {
				{ 1, 160732 }, -- Helm of the Defiled Laboratorium
				{ 2, 160693 }, -- Lancet of the Deft Hand
				{ 3, 160727 }, -- Cord of Septic Envelopment
				{ 4, 160699 }, -- Barricade of Purifying Resolve
				{ 5, 160731 }, -- Spaulders of Coagulated Viscera
				{ 6, 160733 }, -- Hematocyst Stompers
				{ 7, 160690 }, -- Heptavium, Staff of Torturous Knowledge
				{ 8, 160694 }, -- Re-Origination Pulse Rifle
				{ 9, 160726 }, -- Amice of Corrupting Horror
				{ 10, 160728 }, -- Tunic of the Sanguine Deity
				{ 11, 160654 }, -- Vanquished Tendril of G'huun
				{ 12, 160729 }, -- Striders of the Putrescent Path
			},
			[HEROIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[MYTHIC_PRE_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
			[RF_DIFF] = {
				GetItemsFromDiff = NORMAL_RAID_DIFF,
			},
		},
	}
}

data["Azeroth"] = {
	EncounterJournalID = 1028,
	MapID = 0,
	ContentType = RAID_CONTENT,
	TableType = RAID_ITTYPE,
	items = 
	{
		{ -- T'zane
			EncounterJournalID = 2139,
			[NORMAL_RAID_DIFF] = {
				{ 1, 161392 }, -- Bindings of Eternal Fears
				{ 2, 161396 }, -- Petrified Mask of the Afterlife
				{ 3, 164383 }, -- Death Devouring Girdle
				{ 4, 161387 }, -- Wailing Terror Leggings
				{ 5, 161389 }, -- Cinch of All-Consuming Death
				{ 6, 161391 }, -- Deathshambler's Shoulderpads
				{ 7, 161393 }, -- Legguards of the Barkbound Dead
				{ 8, 161395 }, -- Swampwalker's Soul-Treads
				{ 9, 161397 }, -- Soulplank Vambraces
				{ 10, 161411 }, -- T'zane's Barkspines
				{ 11, 161412 }, -- Spiritbound Voodoo Burl
			},
		},
		{ -- Ji'arak
			EncounterJournalID = 2141,
			[NORMAL_RAID_DIFF] = {
				{ 1, 161407 }, -- Windshear Leggings
				{ 2, 161409 }, -- Stormcrash Chestguard
				{ 3, 161388 }, -- Gloves of Enveloping Winds
				{ 4, 161394 }, -- Hurricane Cinch
				{ 5, 164384 }, -- Windswept Dinorider's Cape
				{ 6, 161401 }, -- Matriarch's Shadowveil
				{ 7, 161403 }, -- Avian Clutch Belt
				{ 8, 161390 }, -- Savage Terrorwing Leggings
				{ 9, 161371 }, -- Galebreaker's Sabatons
			},
		},
		{ -- Hailstone Construct
			EncounterJournalID = 2197,
			[NORMAL_RAID_DIFF] = {
				{ 1, 161362 }, -- Frostbreath Leggings
				{ 2, 161364 }, -- Chill's End Wristguards
				{ 3, 161366 }, -- Ice Stalker Boots
				{ 4, 161368 }, -- Freezing Tempest Waistguard
				{ 5, 161370 }, -- Glacial Spike Gauntlets
				{ 6, 161372 }, -- Ice-Carved Shoulderplates
				{ 7, 161361 }, -- Ice-Rimed Slippers
				{ 8, 161380 }, -- Drust-Runed Icicle
				{ 9, 161367 }, -- Hailstone Hauberk
				{ 10, 164386 }, -- Girdle of Biting Winds
				{ 11, 161381 }, -- Permafrost-Encrusted Heart
			},
		},
		{ -- Azurethos, The Winged Typhoon
			EncounterJournalID = 2199,
			[NORMAL_RAID_DIFF] = {
				{ 1, 161377 }, -- Azurethos' Singed Plumage
				{ 2, 161379 }, -- Galecaller's Beak
				{ 3, 161398 }, -- Talonscored Azure Vambraces
				{ 4, 161363 }, -- Sandals of Rustling Rage
				{ 5, 161365 }, -- Footpads of the Encircling Storm
				{ 6, 161352 }, -- Chestguard of Dire Winds
				{ 7, 161369 }, -- Bindings of the Winged Typhoon
				{ 8, 161356 }, -- Feathered Galeforce Crest
				{ 9, 161378 }, -- Plume of the Seaborne Avian
				{ 10, 161360 }, -- Roost-Defender's Legguards
				{ 11, 161350 }, -- Windcaller's Down Handwraps
			},
		},
		{ -- Doom's Howl
			EncounterJournalID = 2213,
			[NORMAL_RAID_DIFF] = {
				{ 1, 161467 }, -- Vest of the Veiled Gryphon
				{ 2, 161469 }, -- Sharpshooter's Chainmail Hauberk
				{ 3, 161471 }, -- Lion's Roar Pauldrons
				{ 4, 161473 }, -- Lion's Guile
				{ 5, 161464 }, -- Alliance Bowman's Coif
				{ 6, 161466 }, -- Battlemage's Collar
				{ 7, 161468 }, -- Gilded-Wing Shoulderguards
				{ 8, 161470 }, -- Polished Shieldbearer's Breastplate
				{ 9, 161472 }, -- Lion's Grace
				{ 10, 161474 }, -- Lion's Strength
				{ 11, 161465 }, -- Warcaster's Arcane Mantle
			},
		},
		{ -- Warbringer Yenajz
			EncounterJournalID = 2198,
			[NORMAL_RAID_DIFF] = {
				{ 1, 161349 }, -- Amice of the Rending Abyss
				{ 2, 161351 }, -- Wristwraps of Warped Reality
				{ 3, 161353 }, -- Shadow-Wreathed Gloves
				{ 4, 161355 }, -- Yenajz's Chitinous Stompers
				{ 5, 161357 }, -- Spaulders of the Enveloping Maw
				{ 6, 161359 }, -- Band of Intense Gravitation
				{ 7, 161376 }, -- Prism of Dark Intensity
				{ 8, 161354 }, -- Leggings of the Endless Void
				{ 9, 161358 }, -- Existence-Shattering Gauntlets
			},
		},
		{ -- Dunegorger Kraulok
			EncounterJournalID = 2210,
			[NORMAL_RAID_DIFF] = {
				{ 1, 161400 }, -- Raider's Shrouding Thobe
				{ 2, 161402 }, -- Gloves of the Desert Assassin
				{ 3, 161419 }, -- Kraulok's Claw
				{ 4, 161406 }, -- Shrouded Sandscale Bracers
				{ 5, 161408 }, -- Sandswept Legionnaire's Legplates
				{ 6, 161399 }, -- Cord of Flowing Sands
				{ 7, 161404 }, -- Hood of the Sinuous Devilsaur
				{ 8, 161405 }, -- Dunegorger's Grips
				{ 9, 164385 }, -- Desert Nomad's Wrap
			},
		},
	}
}
