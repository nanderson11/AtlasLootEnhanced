-- ----------------------------------------------------------------------------
-- Localized Lua globals.
-- ----------------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
local pairs = _G.pairs
-- Libraries

-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local ALName, ALPrivate = ...

local AtlasLoot = _G.AtlasLoot
local WorldMap = {}
AtlasLoot.WorldMap = WorldMap
local AL = AtlasLoot.Locales
local GetAlTooltip = AtlasLoot.Tooltip.GetTooltip
local profile
local style

--[[
local function AdjustMasperButton(adjust)
	local loadable = select(4, GetAddOnInfo("Mapster"));
	if not loadable then return; end
	
	local button = _G["MapsterOptionsButton"];
	if (button and button:IsVisible()) then
		if (adjust) then
			button:SetPoint("TOPRIGHT", WorldMapTitleButton, "TOPRIGHT", -20, -3)
		else
			button:SetPoint("TOPRIGHT", WorldMapTitleButton, "TOPRIGHT", 0, -3)
		end
	end
end]]

local function ButtonBinding()
	local button = _G["AtlasLootToggleFromWorldMap2"];
	if (not button) then
		button = CreateFrame("Button", "AtlasLootToggleFromWorldMap2", WorldMapFrame.BorderFrame);
		button:SetWidth(32);
		button:SetHeight(32);
		
		button:SetPoint("TOPRIGHT", WorldMapFrameSizeDownButton, -24, 0, "TOPRIGHT"); 
		button:SetNormalTexture("Interface\\AddOns\\AtlasLoot\\Images\\AtlasLootButton-Up");
		button:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD");

		button:SetScript("OnEnter", WorldMap.Button_OnEnter);
		button:SetScript("OnLeave", WorldMap.Button_OnLeave);
		button:SetScript("OnClick", WorldMap.Button_OnClick);
	end
end

function WorldMap.Init()
	profile = AtlasLoot.db.WorldMap;
	style = profile.buttonstyle;
	
	if (style ==2) then
		ButtonBinding();
	end

	local button = _G["AtlasLootToggleFromWorldMap"..style];

	if (profile.showbutton) then
		button:Show();
	else
		button:Hide();
	end
end
AtlasLoot:AddInitFunc(WorldMap.Init)

function WorldMap.ToggleButtonOnChange()
	local button = _G["AtlasLootToggleFromWorldMap"..style];

	if (profile.showbutton) then
		--AdjustMasperButton(true);
		button:Show();
	else
		--AdjustMasperButton(false);
		button:Hide();
	end
end

--[[
function WorldMap.ButtonStyleOnChange(styleID)

end
]]
function WorldMap.Button_OnEnter(self)
	local tooltip = GetAlTooltip();
	tooltip:ClearLines();
	if owner and type(owner) == "table" then
		tooltip:SetOwner(owner[1], owner[2], owner[3], owner[4]);
	else
		tooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() * 0.5), 5);
	end
	tooltip:AddLine(AL["Click to open AtlasLoot window"]);
	tooltip:Show();
end

function WorldMap.Button_OnLeave(self)
	GetAlTooltip():Hide();
end

function WorldMap.Button_OnClick(self, button)
	if (not AtlasLoot.GUI.frame:IsVisible()) then
		AtlasLoot.GUI.frame:Show();
	end
	ToggleFrame(WorldMapFrame);
end

