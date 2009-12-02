--[[
"Add" things to Babble libs
["base"] = english 
]]--
local LibBabbleAdd = {
	["LibBabble-Boss-3.0"] = {
		["base"] = {
			--["example"] = "example",
		},
		["deDE"] = {
		
		},
		["frFR"] = {
		
		},
	},
	["LibBabble-Inventory-3.0"] = {
		["base"] = {
			--["example"] = "example",
		},
		["deDE"] = {
		
		},
		["frFR"] = {
		
		},
	},
	["LibBabble-Faction-3.0"] = {
		["base"] = {
			--["example"] = "example",
		},
		["deDE"] = {
		
		},
		["frFR"] = {
		
		},
	},
	["LibBabble-Zone-3.0"] = {
		["base"] = {
			--["example"] = "example",
		},
		["deDE"] = {
		
		},
		["frFR"] = {
		
		},
	},
}

--[[
AtlasLoot_GetLocaleLibBabble(typ)
Get english translations for non translated things. (Combines Locatet and English table)
Only Useable with LibBabble
]]
function AtlasLoot_GetLocaleLibBabble(typ)
	local rettab = {}
	local tab = LibStub(typ):GetBaseLookupTable()
	local loctab = LibStub(typ):GetUnstrictLookupTable()
	for k,v in pairs(loctab) do
		rettab[k] = v;
	end
	for k,v in pairs(tab) do
		if not rettab[k] then
			rettab[k] = v;
		end
	end
	if LibBabbleAdd[typ][GetLocale()] then
		for k,v in pairs(LibBabbleAdd[typ][GetLocale()]) do
			if not rettab[k] then
				rettab[k] = v;
			end
		end
	end
	if LibBabbleAdd[typ]["base"] then
		for k,v in pairs(LibBabbleAdd[typ]["base"]) do
			if not rettab[k] then
				rettab[k] = v;
			end
		end
	end
	return rettab
end

--[[
AtlasLoot_CheckLocaleLibBabble()
Check Babble Lib and LibBabbleAdd for double entries
Use this after a Babble update with "/run AtlasLoot_CheckLocaleLibBabble()"
]]
function AtlasLoot_CheckLocaleLibBabble()
	print("---### Start scan  ( AtlasLoot\\Locales\\LibBabble.lua )###---")
	print(" ")
	local i = 0
	for babbletyp,_ in pairs(LibBabbleAdd) do
		local rettab = {}
		local tab = LibStub(babbletyp):GetBaseLookupTable()
		local loctab = LibStub(babbletyp):GetUnstrictLookupTable()
		for k,v in pairs(loctab) do
			rettab[k] = v;
		end
		for k,v in pairs(tab) do
			if not rettab[k] then
				rettab[k] = v;
			end
		end
		for locate,_ in pairs(LibBabbleAdd[babbletyp]) do
			for k,_ in pairs(LibBabbleAdd[babbletyp][locate]) do
				if rettab[k] then
					print("|cffff0000REMOVE LibBabbleAdd[\""..babbletyp.."\"][\""..locate.."\"][\""..k.."\"]")
					i = i + 1
				end
			end
		end
	end
	print(" ")
	print("---### Scan finish: "..i.." double entries found ###---")
end