local AtlasLoot = _G.AtlasLoot
--Invoke libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";

local options, moduleOptions = nil, {}
local getOptions

do
 	local function getOpt(info)
		return AtlasLoot.db.profile[info[#info]]
	end
	
	local function setOpt(info, value)
		AtlasLoot.db.profile[info[#info]] = value
		return AtlasLoot.db.profile[info[#info]]
	end
	
	local function resetButton(info)
		AtlasLoot:Reset(info[#info])
	end

	function getOptions()
		if not options then
			options = {
				type = "group",
				args = {
					general = {
						type = "group",
						inline = true,
						name = "",
						args = {
							all = {						
								type = "group",
								inline = true,
								name = "",
								order = 10,
								args = {
									LoadAllLoDStartup = {
										type = "toggle",
										name = AL["Load Loot Modules at Startup"],
										--desc = ,
										order = 10,
										get = getOpt,
										set = setOpt,
										width = "full",
									},
									HideMiniMapButton = {
										type = "toggle",
										name = AL["Minimap Button"],
										--desc = ,
										order = 20,
										get = function() return not AtlasLoot.db.profile.MiniMapButton.hide end,
										set = AtlasLoot.MiniMapButtonHideShow,
									},
									
								},
							},
							itemButton = {						
								type = "group",
								inline = true,
								name = "Item Buttons",
								order = 30,
								args = {
									ItemIDs = {
										type = "toggle",
										name = AL["itemIDs"],
										desc = AL["Show itemIDs at all times"],
										order = 10,
										get = getOpt,
										set = setOpt,
									},
									DropRate = {
										type = "toggle",
										name = AL["Droprate"],
										--desc = ,
										order = 20,
										get = getOpt,
										set = setOpt,
									},
									SafeLinks = {
										type = "toggle",
										name = AL["Safe Chat Links"],
										--desc = ,
										order = 30,
										get = getOpt,
										set = setOpt,
									},
									EquipCompare = {
										type = "toggle",
										name = AL["Comparison TT"],
										desc = AL["Show Comparison Tooltips"],
										order = 40,
										get = getOpt,
										set = AtlasLoot.OptionsComparisonTT,
									},
									ItemSpam = {
										type = "toggle",
										name = AL["Suppress Item Query Text"],
										--desc = ,
										order = 50,
										get = getOpt,
										set = setOpt,
										width = "full",
									},
									ShowPriceAndDesc = {
										type = "toggle",
										name = AL["Show price and slot if possible"],
										--desc = ,
										order = 60,
										get = getOpt,
										set = setOpt,
										width = "full",
									},
								},
							},
							
							lootTable = {						
								type = "group",
								inline = true,
								name = "Loot Table",
								order = 30,
								args = {
									--[[
									Opaque = {
										type = "toggle",
										name = AL["Opaque"],
										desc = AL["Make Loot Table Opaque"],
										order = 10,
										get = getOpt,
										set = setOpt,
									},
									]]
									CraftingLink = {
										type = "select",
										name = AL["Treat Crafted Items:"],
										--desc = ,
										values = { AL["As Crafting Spells"], AL["As Items"] },
										order = 20,
										get = getOpt,
										set = setOpt,
									},
								},
							},


							defaultFrameScale = {
								type = "group",
								inline = true,
								name = AL["Default Frame"],
								order = 40,
								args = {
									LootBrowserScale = {
										type = "range",
										name = AL["Scale:"],
										--desc = ,
										min = 0.50, max = 1.5, bigStep = 0.01,
										get = getOpt,
										set = function(info, value)
											setOpt(info, value)
											if AtlasLoot.DefaultFrame_RefreshScale then AtlasLoot:DefaultFrame_RefreshScale() end
										end,
										order = 1,
										width = "full",
									},
									LootBrowserAlpha = {
										type = "range",
										name = AL["Alpha:"],
										--desc = ,
										min = 0.25, max = 1, bigStep = 0.01,
										get = getOpt,
										set = function(info, value)
											setOpt(info, value)
											if AtlasLoot.DefaultFrame_RefreshAlpha then AtlasLoot:DefaultFrame_RefreshAlpha() end
										end,
										order = 2,
										width = "full",
									},
									--[[
									LootBrowserAlphaOnLeave = {
										type = "toggle",
										name = AL["Only change alpha on leave frame"],
										--desc = ,
										order = 3,
										get = getOpt,
										set = setOpt,
										width = "full",
									},
									]]--
								},
							},

							resetButtons = {
								type = "group",
								inline = true,
								name = "",
								order = 100,
								args = {
									--[[wishlist = {
										type = "execute",
										name = AL["Reset Wishlist"],
										--desc = ,
										func = resetButton,
										order = 1,
									},]]
									frames = {
										type = "execute",
										name = AL["Reset Frames"],
										--desc = ,
										func = resetButton,
										order = 2,
									},
									quicklooks = {
										type = "execute",
										name = AL["Reset Quicklooks"],
										--desc = ,
										func = resetButton,
										order = 3,
									},
								},
							},
						},
					},	
				
					Help = {
						type = "group",
						name = "Help",
						order = 600,
						childGroups = "tab",
						args = {
							openDefaultFrame = {
								type = "description",
								name = ORANGE..AL["How to open the standalone Loot Browser:"].."\n"..WHITE..AL["If you have AtlasLootFu enabled, click the minimap button, or alternatively a button generated by a mod like Titan or FuBar.  Finally, you can type '/al' in the chat window."],
								order = 1,
							},
							linkAnItem = {
								type = "description",
								name = ORANGE..AL["How to link an item to someone else:"].."\n"..WHITE..AL["Shift+Left Click the item like you would for any other in-game item"],
								order = 10,
							},
							viewUnsafeItem = {
								type = "description",
								name = ORANGE..AL["How to view an 'unsafe' item:"].."\n"..WHITE..AL["Unsafe items have a red border around the icon and are marked because you have not seen the item since the last patch or server restart. Right-click the item, then move your mouse back over the item or click the 'Query Server' button at the bottom of the loot page."],
								order = 20,
							},
							dressUpItem = {
								type = "description",
								name = ORANGE..AL["How to view an item in the Dressing Room:"].."\n"..WHITE..AL["Simply Ctrl+Left Click on the item.  Sometimes the dressing room window is hidden behind the Atlas or AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden."],
								order = 30,
							},
							addItemToWishlist = {
								type = "description",
								name = ORANGE..AL["How to add an item to the wishlist:"].."\n"..WHITE..AL["Alt+Left Click any item to add it to the wishlist."],
								order = 40,
							},
							deleteItemFromWishlist = {
								type = "description",
								name = ORANGE..AL["How to delete an item from the wishlist:"].."\n"..WHITE..AL["While on the wishlist screen, just Alt+Left Click on an item to delete it."],
								order = 50,
							},
							wishlistDesc = {
								type = "description",
								name = ORANGE..AL["What else does the wishlist do?"].."\n"..WHITE..AL["If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.  Also, on a loot page any item already in your wishlist is marked with a yellow star."],
								order = 60,
							},
							brokenMod = {
								type = "description",
								name = ORANGE..AL["HELP!! I have broken the mod somehow!"].."\n"..WHITE..AL["Use the reset buttons available in the options menu, or type '/al reset' in your chat window."],
								order = 70,
							},
							websiteLink = {
								type = "description",
								name = GREY..AL["For further help, see our website and forums: "]..GREEN.."http://www.atlasloot.net",
								order = 80,
							},
						},
					},	
				},

			}
		end
		for k,v in pairs(moduleOptions) do
			options.args[k] = (type(v) == "function") and v() or v
		end
		return options

	end

end

--[[
AtlasLoot:OptionsInitialize()
]]
function AtlasLoot:OptionsInitialize()
	if self.optFrames then return end
	self.optFrames = {}
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("AtlasLoot", getOptions)
	--LibStub("AceConfigRegistry-3.0"):NotifyChange("AtlasLoot")
	self.optFrames.AtlasLoot = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AtlasLoot", "AtlasLoot", nil, "general")
	self:RegisterModuleOptions("Profiles", LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db), AL["Profiles"])
	self.optFrames.Help = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AtlasLoot", "Help", "AtlasLoot", "Help")
end

--- Adds a OptionsSubCat 
-- @param name the name of the option
-- @param optFunc the funtion that returns the options table
-- @param displayName the displayed options name
-- @usage AtlasLoot:RegisterModuleOptions(name, optFunc, displayName)
function AtlasLoot:RegisterModuleOptions(name, optFunc, displayName)
	if not self.optFrames then self:OptionsInitialize() end
	if moduleOptions[name] then self:RefreshModuleOptions() return end
	moduleOptions[name] = optFunc
	self.optFrames[name] = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AtlasLoot", displayName or name, "AtlasLoot", name)
end

function AtlasLoot:OpenModuleOptions(module)
	LibStub("AceConfigDialog-3.0"):Open("AtlasLoot", nil, module)
end

function AtlasLoot:RefreshModuleOptions()
	LibStub("AceConfigRegistry-3.0"):NotifyChange("AtlasLoot")
end

--
function AtlasLoot:OptionsComparisonTT()
	if(AtlasLoot.db.profile.EquipCompare) then
		AtlasLoot.db.profile.EquipCompare = false;
		if (EquipCompare_UnregisterTooltip) then
			EquipCompare_UnregisterTooltip(AtlasLootTooltip);
		end
	else
		AtlasLoot.db.profile.EquipCompare = true;
		if (EquipCompare_RegisterTooltip) then
			EquipCompare_RegisterTooltip(AtlasLootTooltip);
		end
	end
end

--- Shows the AtlasLoot Options
function AtlasLoot:OptionsToggle()
	InterfaceOptionsFrame_OpenToCategory("AtlasLoot")
end
-- Hides the AtlasLoot Panel
function AtlasLoot:OptionsHidePanel()
	if AtlasLoot.db.profile.HidePanel then
		AtlasLoot.db.profile.HidePanel = false;
		AtlasLootPanel:Show()
	else
		AtlasLoot.db.profile.HidePanel = true;
		AtlasLootPanel:Hide()
	end
end

do
	local Authors = {}
	local Friends = {}
	
	for k,v in pairs(AtlasLoot.AddonInfo.authors) do
		if v.ingame then
			for _,name in ipairs(v.ingame) do
				local a,b = string.split("@", name)
				if a and b then
					Authors[a] = b
				end
			end
		end
		if v.friends then
			for _,name in ipairs(v.friends) do
				local a,b = string.split("@", name)
				if a and b then
					Friends[a] = b
				end
			end
		end
	end

	function AtlasLoot:HookUnitTarget()
		local name = GameTooltip:GetUnit()
		if UnitName("mouseover") == name then 
			local _, realm = UnitName("mouseover")
			if not realm then 
				realm = GetRealmName()
			end
			if name and ( Authors[name] or Friends[name] ) then
				if Authors[name] == realm then
					GameTooltip:AddLine("AtlasLoot Author |T"..AtlasLoot.imagePath.."gold:0|t", 0, 1, 0 )
				elseif Friends[name] == realm then
					GameTooltip:AddLine("AtlasLoot Friend |T"..AtlasLoot.imagePath.."gold:0|t", 0, 1, 0 )
				end
			end
		end
	end
	GameTooltip:HookScript("OnTooltipSetUnit", AtlasLoot.HookUnitTarget)
end
