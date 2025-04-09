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
	},
}

AC:RegisterOptionsTable("AtlasLoot_options", options);
AtlasLoot.optionsFrame = ACD:AddToBlizOptions("AtlasLoot_options", "AtlasLoot")

local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(AtlasLoot.dbRaw);
AC:RegisterOptionsTable("AtlasLoot_Profiles", profiles)
ACD:AddToBlizOptions("AtlasLoot_Profiles", "Profiles", "AtlasLoot")

-- atlasloot
local function atlasloot(gui, content)
	local last

	last = gui:Add("CheckBox")
		:Point("TOP", 0, -5)
		:Size("full")
		:Text(AL["Always show item comparison."])
		:DB(db.Button.Item, "alwaysShowCompareTT")

	last = gui:Add("CheckBox")
		:Point("TOP", last, "BOTTOM")
		:Size("full")
		:Text(AL["Auto select current instance's loot tables."])
		:DB(db.GUI, "autoselect")

	last = gui:Add("CheckBox")
		:Point("TOP", last, "BOTTOM")
		:Size("full")
		:Text(AL["Always show quick preview."])
		:DB(db.Button.Item, "alwaysShowPreviewTT")

	last = gui:Add("CheckBox")
		:Point("TOP", last, "BOTTOM")
		:Size("full")
		:Text(AL["Use GameTooltip"])
		:Tooltip("text", AL["Use the standard GameTooltip instead of the custom AtlasLoot tooltip"])
		:DB(db.Tooltip, "useGameTooltip", AtlasLoot.Tooltip.Refresh)

	last = gui:Add("CheckBox")
		:Point("TOP", last, "BOTTOM")
		:Size("full")
		:Text(AL["Show AtlasLoot button on WorldMap."])
		:DB(db.WorldMap, "showbutton", AtlasLoot.WorldMap.ToggleButtonOnChange)
	last = gui:Add("CheckBox")
		:Point("TOP", last, "BOTTOM", 0, 0)
		:Size("full")
		:Text(AL["Show expansion icons in module dropdown."])
		:Tooltip("text", AL["Change will take effect in next login."])
		:DB(db.GUI, "ExpansionIcon")

	last = gui:Add("Slider")
		:Point("TOP", last, "BOTTOM")
		:Size("full")
		:MinMaxStep(0.5, 1.5, 0.01)
		:Text(AL["Scale"])
		:DB(db.GUI.mainFrame, "scale", AtlasLoot.GUI.RefreshMainFrame)
end

-- minimap Button
local function minimapbutton(gui, content)
	local last
	last = gui:Add("CheckBox")
		:Point("TOP", 0, -5)
		:Size("full")
		:Text(AL["Show minimap button."])
		:DB(db.minimap, "shown", AtlasLoot.MiniMapButton.Options_Toggle)
	last = gui:Add("CheckBox")
		:Point("TOP", last, "BOTTOM")
		:Size("full")
		:Text(AL["Lock minimap button."])
		:DB(db.minimap, "locked", AtlasLoot.MiniMapButton.Lock_Toggle)

	last = gui:Add("Button")
		:Point("BOTTOMRIGHT", nil, "BOTTOMRIGHT", -2, 2)
		:Text(AL["Reset position of minimap button"])
		:Click(AtlasLoot.MiniMapButton.ResetFrames)
		:Confirm(AL["Reset position of the |cff33ff99\"Minimap button\"|r."])
end

-- addons -> bonusloot
local function addons_bonusloot(gui, content)
	gui:Add("CheckBox")
		:Point("TOPLEFT")
		:Size("half")
		:Text(ENABLE)
		:DB(db.Addons.BonusRoll, "enabled")
end

local ALOptions = {
	{
		title = AL["AtlasLoot"],
		quickSelect = "start",
		clickFunc = atlasloot,
	},
	{
		title = AL["Windows"],
		quickSelect = "windows",
		clickFunc = windows,
		content = {
			{
				title = AL["AtlasLoot"],
				clickFunc = windows_atlasloot,
				content = {
					{
						title = AL["Content top bar"],
						clickFunc = windows_atlasloot_contenttopbar,
					},
					{
						title = AL["Content"],
						clickFunc = windows_atlasloot_content,
					},
					{
						title = AL["Content bottom bar"],
						clickFunc = windows_atlasloot_contentbottombar,
					},
				},
			},
			{
				title = AL["Set View"],
				clickFunc = windows_setview,
				content = {
					{
						title = AL["Content top/bottom bar"],
						clickFunc = windows_setview_contenttopbottom,
					},
					{
						title = AL["Content"],
						clickFunc = windows_setview_content,
					},
				}
			},
			{
				title = AL["Quick Loot"],
				clickFunc = windows_quickloot,
			}
		},
	},
	{
		title = AL["Minimap Button"],
		clickFunc = minimapbutton,
	},
	{
		title = ADDONS,
		content = {
			{
				title = AL["Bonus Loot"],
				desc = AL["A window with possible loot is shown if a Bonus Roll is started."],
				clickFunc = addons_bonusloot,
			},
		},
	},

}
