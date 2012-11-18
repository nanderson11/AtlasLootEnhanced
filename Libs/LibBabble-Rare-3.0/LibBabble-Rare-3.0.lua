--[[
Name: LibBabble-Rare-3.0
Revision: $Rev$
Maintainers: Celellach
Website: 
Dependencies: None
License: MIT
]]

local MAJOR_VERSION = "LibBabble-Rare-3.0"
local MINOR_VERSION = 90000 + 1--tonumber(("$Rev$"):match("%d+")) -- Add this with new svn ;)

if not LibStub then error(MAJOR_VERSION .. " requires LibStub.") end
local lib = LibStub("LibBabble-3.0"):New(MAJOR_VERSION, MINOR_VERSION)
if not lib then return end

local GAME_LOCALE = GetLocale()

lib:SetBaseTranslations {
	Aeonaxx = "Aeonaxx",
	Akkalar = "Akkalar",
	Akkalou = "Akkalou",
	["Akma'hat"] = "Akma'hat",
	Alani = "Alani",
	Ankha = "Ankha",
	Anthriss = "Anthriss",
	Arcturis = "Arcturis",
	Armagedillo = "Armagedillo",
	["Armbreaker Huffaz"] = "Armbreaker Huffaz",
	["Ban'thalos"] = "Ban'thalos",
	Blazewing = "Blazewing",
	Bloodtooth = "Bloodtooth",
	Bristlespine = "Bristlespine",
	["Bro'Gaz the Clanless"] = "Bro'Gaz the Clanless",
	["Burgy Blackheart"] = "Burgy Blackheart",
	["Captain Florence"] = "Captain Florence",
	["Captain Foulwind"] = "Captain Foulwind",
	Clamstok = "Clamstok",
	["Clawlord Kril'mandar"] = "Clawlord Kril'mandar",
	["Cyrus the Black"] = "Cyrus the Black",
	Damlak = "Damlak",
	["Darkscreecher Akkarai"] = "Darkscreecher Akkarai",
	["Deth'tilac"] = "Deth'tilac",
	["Dormus the Camel-Hoarder"] = "Dormus the Camel-Hoarder",
	["Fel Tinkerer Zortan"] = "Fel Tinkerer Zortan",
	["Fixxul Lonelyheart"] = "Fixxul Lonelyheart",
	Forgosh = "Forgosh",
	["Frozen Trail Packer"] = "Frozen Trail Packer",
	Garr = "Garr",
	["Gezzarak the Huntress"] = "Gezzarak the Huntress",
	Ghostcrawler = "Ghostcrawler",
	["Ghostly Pandaren Craftsman"] = "Ghostly Pandaren Craftsman",
	["Ghostly Pandaren Fisherman"] = "Ghostly Pandaren Fisherman",
	Glimmer = "Glimmer",
	["Glinting Rapana Whelk"] = "Glinting Rapana Whelk",
	Golgarok = "Golgarok",
	Gondria = "Gondria",
	["Gorgolon the All-seeing"] = "Gorgolon the All-seeing",
	["Gul'bor"] = "Gul'bor",
	Hexapos = "Hexapos",
	["Huggalon the Heart Watcher"] = "Huggalon the Heart Watcher",
	Jadefang = "Jadefang",
	["Jade Warrior Statue"] = "Jade Warrior Statue",
	["Julak-Doom"] = "Julak-Doom",
	Karoma = "Karoma",
	Karkin = "Karkin",
	Karrog = "Karrog",
	["King Dorfbruiser"] = "King Dorfbruiser",
	Kirix = "Kirix",
	Kishak = "Kishak",
	["Lady La-La"] = "Lady La-La",
	["Lorbu Sadsummon"] = "Lorbu Sadsummon",
	Madexx = "Madexx",
	Magria = "Magria",
	["Malevus the Mad"] = "Malevus the Mad",
	["Martar the Not-So-Smart"] = "Martar the Not-So-Smart",
	["Matron Li-sahar"] = "Matron Li-sahar",
	Mobus = "Mobus",
	["Mysterious Camel Figurine"] = "Mysterious Camel Figurine",
	["Odd'nirok"] = "Odd'nirok",
	["Overlord Sunderfury"] = "Overlord Sunderfury",
	Patrannache = "Patrannache",
	Pengsong = "Pengsong",
	["Porfus the Gem Gorger"] = "Porfus the Gem Gorger",
	Portent = "Portent",
	Poseidus = "Poseidus",
	["Rockhide the Immovable"] = "Rockhide the Immovable",
	Sambas = "Sambas",
	Savage = "Savage",
	["Shok'sharak"] = "Shok'sharak",
	Skarr = "Skarr",
	Skitterflame = "Skitterflame",
	Skoll = "Skoll",
	Solix = "Solix",
	["Solus the Eternal"] = "Solus the Eternal",
	Stompy = "Stompy",
	["Sungraze Behemoth"] = "Sungraze Behemoth",
	["Tarvus the Vile"] = "Tarvus the Vile",
	Terborus = "Terborus",
	Terokk = "Terokk",
	Terrorpene = "Terrorpene",
	["Thartuk the Exile"] = "Thartuk the Exile",
	["Time-Lost Proto Drake"] = "Time-Lost Proto Drake",
	Trelopades = "Trelopades",
	["Vakkiz the Windrager"] = "Vakkiz the Windrager",
	["Wrathbringer Laz-tarash"] = "Wrathbringer Laz-tarash",
	Xariona = "Xariona",
	Zhing = "Zhing",
}


if GAME_LOCALE == "enUS" then
	lib:SetCurrentTranslations(true)
elseif GAME_LOCALE == "deDE" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "frFR" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "koKR" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "esES" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "esMX" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "ptBR" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "itIT" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "ruRU" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "zhCN" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}
elseif GAME_LOCALE == "zhTW" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

else
	error(("%s: Locale %q not supported"):format(MAJOR_VERSION, GAME_LOCALE))
end
