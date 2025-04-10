local _G = getfenv(0)
local LibStub = _G.LibStub

local AtlasLoot = _G.AtlasLoot
local Options = {}
local AL = AtlasLoot.Locales

AtlasLoot.Options = Options
local db = AtlasLoot.db

local AC = LibStub("AceConfig-3.0");
local ACD = LibStub("AceConfigDialog-3.0");

local options = {
	type = "group",
	name = AL["AtlasLoot"],
	args = {
		general = {
			order = 1,
			name = AL["General"],
			type = "group",
			args = {
				autoselect = {
					order = 1,
					type = "toggle",
					width = "full",
					name = AL["Auto select current instance's loot tables."],
					get = function(info) return db.GUI.autoselect end,
					set = function(info, value) db.GUI.autoselect = value end,
				},
				showbutton = {
					order = 2,
					type = "toggle",
					width = "full",
					name = AL["Show AtlasLoot button on WorldMap."],
					get = function(info) return db.WorldMap.showbutton end,
					set = function(info, value)
						db.WorldMap.showbutton = value;
						AtlasLoot.WorldMap.ToggleButtonOnChange();
					end,
				},
				ExpansionIcon = {
					order = 3,
					type = "toggle",
					width = "full",
					name = AL["Show expansion icons in module dropdown."],
					desc = AL["Change will take effect in next login."],
					get = function(info) return db.GUI.ExpansionIcon end,
					set = function(info, value) db.GUI.ExpansionIcon = value end,
				},
				shown = {
					order = 4,
					type = "toggle",
					width = "full",
					name = AL["Show minimap button."],
					get = function(info) return db.minimap.shown end,
					set = function(info, value)
						db.minimap.shown = value;
						AtlasLoot.MiniMapButton.Options_Toggle();
					end,
				},
				scale = {
					order = 5,
					type = "range",
					name = AL["Scale"],
					min = 0.5,
					max = 1.5,
					bigStep = 0.01,
					isPercent = true,
					width = "full",
					get = function(info) return db.GUI.mainFrame.scale end,
					set = function(info, value)
						db.GUI.mainFrame.scale = value
						AtlasLoot.GUI.RefreshMainFrame()
					end,
				},
			}
		},
		tooltip = {
			order = 2,
			name = AL["Tooltip"],
			type = "group",
			args = {
				useGameTooltip = {
					order = 1,
					type = "toggle",
					width = "full",
					name = AL["Use GameTooltip"],
					desc = AL["Use the standard GameTooltip instead of the custom AtlasLoot tooltip"],
					get = function(info) return db.Tooltip.useGameTooltip end,
					set = function(info, value) db.Tooltip.useGameTooltip = value end,
				},
				alwaysShowCompareTT = {
					order = 2,
					type = "toggle",
					width = "full",
					name = AL["Always show item comparison."],
					get = function(info) return db.Button.Item.alwaysShowCompareTT end,
					set = function(info, value) db.Button.Item.alwaysShowCompareTT = value end,
				},
				alwaysShowPreviewTT = {
					order = 3,
					type = "toggle",
					width = "full",
					name = AL["Always show quick preview."],
					get = function(info) return db.Button.Item.alwaysShowPreviewTT end,
					set = function(info, value) db.Button.Item.alwaysShowPreviewTT = value end,
				},
			}
		},
		bonusloot = {
			order = 3,
			name = AL["AddOn: Bonus Loot"],
			type = "group",
			args = {
				enabled = {
					order = 1,
					type = "toggle",
					width = "full",
					name = ENABLE,
					get = function(info) return db.Addons.BonusRoll.enabled end,
					set = function(info, value) db.Addons.BonusRoll.enabled = value end,
				},
			}
		}
	},
}

AC:RegisterOptionsTable("AtlasLoot_options", options);
AtlasLoot.optionsFrame = ACD:AddToBlizOptions("AtlasLoot_options", "AtlasLoot")

local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(AtlasLoot.dbRaw);
AC:RegisterOptionsTable("AtlasLoot_Profiles", profiles)
ACD:AddToBlizOptions("AtlasLoot_Profiles", "Profiles", "AtlasLoot")
