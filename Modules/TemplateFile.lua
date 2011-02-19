--[[
Atlasloot Enhanced
Author Hegarol
Loot browser associating loot with instance bosses
Can be integrated with Atlas (http://www.atlasmod.com)
]]

local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")

local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local MODULENAME = "Module"
local Module = AtlasLoot:NewModule(MODULENAME)

local db
local dbDefaults = {
	profile = {
		
	},
}

local getOptions
do
	local options
	function getOptions()
		if not options then
			options = {
				type = "group",
				name = MODULENAME,
				order = 600,
				childGroups = "tab",
				args = {
					toggle = {
						type = "toggle",
						name = AL["Enable"],
						get = function()
							return AtlasLoot:GetModuleEnabled(MODULENAME)
						end,
						set = function(info, v)
							AtlasLoot:SetModuleEnabled(MODULENAME, v)
						end,
						order = 10,
					},
					nllockb = {
						type = "description",
						name = "",
						order = 20,
					},
				},
			}
		
		end
		return options
	end
	
end
	
function Module:OnInitialize()
	if not AtlasLoot.db then AtlasLoot:OnLoaderLoad() end
	self.db = AtlasLoot.db:RegisterNamespace(MODULENAME, dbDefaults)
	db = self.db.profile
	--AtlasLoot:RegisterModuleOptions(MODULENAME, getOptions, MODULENAME)
	self:SetEnabledState(AtlasLoot:GetModuleEnabled(MODULENAME))
	
end

function Module:OnEnable()

end

function Module:OnDisable()

end