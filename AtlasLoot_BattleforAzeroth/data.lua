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
