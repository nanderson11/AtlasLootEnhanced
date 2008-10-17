--[[
Options.lua
Functions:
AtlasLoot_OptionsPanelOnLoad(panel)
AtlasLootOptions_Init()
AtlasLootOptions_OnLoad()
AtlasLootOptions_SafeLinksToggle()
AtlasLootOptions_AllLinksToggle()
AtlasLootOptions_DefaultTTToggle()
AtlasLootOptions_LootlinkTTToggle()
AtlasLootOptions_ItemSyncTTToggle()
AtlasLootOptions_EquipCompareToggle()
AtlasLootOptions_OpaqueToggle()
AtlasLootOptions_ItemIDToggle()
AtlasLootOptions_ItemSpam()
AtlasLootOptions_MinimapToggle()
AtlasLootOptions_LoDSpam()
AtlasLootOptions_LoDStartup()
AtlasLoot_SetupLootBrowserSlider(frame, mymin, mymax, step)
AtlasLoot_UpdateLootBrowserSlider(frame)
]]

--Invoke libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

function AtlasLoot_OptionsPanelOnLoad(panel)
    panel.name=AL["AtlasLoot"];
    InterfaceOptions_AddCategory(panel);
end

--[[function AtlasLoot_FuBarOptionsPanelOnLoad(panel)
    panel.name=AL["FuBar Options"];
    panel.parent=AL["AtlasLoot"];
    InterfaceOptions_AddCategory(panel);
end

function AtlasLootFuBarOptions_Init()
    AtlasLootFuBarOptionsFrameMinimap:SetChecked(AtlasLoot.db.profile.FuBarAttached);
    AtlasLootFuBarOptionsFrameHideFuBar:SetChecked(not AtlasLoot.db.profile.MinimapButton);
    AtlasLootFuBarOptionsFrameHideFuBarIcon:SetChecked(not AtlasLoot.db.profile.FuBarIcon);
    AtlasLootFuBarOptionsFrameHideText:SetChecked(not AtlasLoot.db.profile.FuBarText);
end]]

function AtlasLootMinimapOptions_Init()
    AtlasLootMinimapOptionsFrameMinimap:SetChecked(AtlasLoot.db.profile.MinimapButton);
    AtlasLootMinimapOptionsFrameSliderButtonPos:SetValue(AtlasLoot.db.profile.MinimapButtonAngle);
    AtlasLootMinimapOptionsFrameSliderButtonRad:SetValue(AtlasLoot.db.profile.MinimapButtonRadius);
end

function AtlasLootOptions_Init()
    --Initialise all the check boxes on the options frame
    AtlasLootOptionsFrameSafeLinks:SetChecked(AtlasLoot.db.profile.SafeLinks);
	AtlasLootOptionsFrameDefaultTT:SetChecked(AtlasLoot.db.profile.DefaultTT);
	AtlasLootOptionsFrameLootlinkTT:SetChecked(AtlasLoot.db.profile.LootlinkTT);
	AtlasLootOptionsFrameItemSyncTT:SetChecked(AtlasLoot.db.profile.ItemSyncTT);
    AtlasLootOptionsFrameEquipCompare:SetChecked(AtlasLoot.db.profile.EquipCompare);
    AtlasLootOptionsFrameOpaque:SetChecked(AtlasLoot.db.profile.Opaque);
    AtlasLootOptionsFrameItemID:SetChecked(AtlasLoot.db.profile.ItemIDs);
    AtlasLootOptionsFrameItemSpam:SetChecked(AtlasLoot.db.profile.ItemSpam);
    AtlasLootOptionsFrameLoDSpam:SetChecked(AtlasLoot.db.profile.LoDNotify);
    AtlasLootOptionsFrameLoDStartup:SetChecked(AtlasLoot.db.profile.LoadAllLoDStartup);
    AtlasLootOptionsFrameHidePanel:SetChecked(AtlasLoot.db.profile.HidePanel);
    AtlasLootOptionsFrameLootBrowserScale:SetValue(AtlasLoot.db.profile.LootBrowserScale);
end

function AtlasLootOptions_OnLoad()
    --Disable checkboxes of missing addons
    if( not LootLink_SetTooltip ) then
        AtlasLootOptionsFrameLootlinkTT:Disable();
        AtlasLootOptionsFrameLootlinkTTText:SetText(AL["|cff9d9d9dLootlink Tooltips|r"]);
    end
    if( not ItemSync ) then
        AtlasLootOptionsFrameItemSyncTT:Disable();
        AtlasLootOptionsFrameItemSyncTTText:SetText(AL["|cff9d9d9dItemSync Tooltips|r"]);
    end
    --[[if IsAddOnLoaded("FuBar") then
        if (AtlasLoot.db.profile.MinimapButton == true) then
            AtlasLootOptions_MinimapToggle();
        end
        AtlasLootMinimapOptionsFrameMinimap:Disable();
        AtlasLootMinimapOptionsFrameMinimap:SetText("");
        AtlasLootMinimapOptionsFrameMinimap:Hide();
        AtlasLootMinimapOptionsFrameMinimap:SetText(AL["|cff9d9d9dShow Basic Minimap Button|r"]);
        AtlasLootMinimapOptionsFrameMinimap:Show();
        AtlasLootFuBarOptions_Init();
    else]]
        AtlasLootMinimapOptions_Init();
    --end
    AtlasLootOptions_Init();
    --[[if IsAddOnLoaded("FuBar") then
        AtlasLootFuBarOptions_Init();
    end]]
    temp=AtlasLoot.db.profile.SafeLinks;
end

function AtlasLootOptions_SafeLinksToggle()
	if(AtlasLoot.db.profile.SafeLinks) then
		AtlasLoot.db.profile.SafeLinks = false;
        AtlasLoot.db.profile.AllLinks = true;
	else
		AtlasLoot.db.profile.SafeLinks = true;
        AtlasLoot.db.profile.AllLinks = false;
	end
	AtlasLootOptions_Init();
end

function AtlasLootOptions_DefaultTTToggle()
	AtlasLoot.db.profile.DefaultTT = true;
    AtlasLoot.db.profile.LootlinkTT = false;
    AtlasLoot.db.profile.ItemSyncTT = false;
	AtlasLootOptions_Init();
end

function AtlasLootOptions_LootlinkTTToggle()
	AtlasLoot.db.profile.DefaultTT = false;
    AtlasLoot.db.profile.LootlinkTT = true;
    AtlasLoot.db.profile.ItemSyncTT = false;
	AtlasLootOptions_Init();
end

function AtlasLootOptions_ItemSyncTTToggle()
    AtlasLoot.db.profile.DefaultTT = false;
    AtlasLoot.db.profile.LootlinkTT = false;
    AtlasLoot.db.profile.ItemSyncTT = true;
	AtlasLootOptions_Init();
end

function AtlasLootOptions_OpaqueToggle()
    AtlasLoot.db.profile.Opaque=AtlasLootOptionsFrameOpaque:GetChecked();
    if (AtlasLoot.db.profile.Opaque) then
        AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 1);
    else
        AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 0.65);
    end
    AtlasLootOptions_Init();
end

function AtlasLootOptions_ItemSpam()
    if (AtlasLoot.db.profile.ItemSpam) then
        AtlasLoot.db.profile.ItemSpam = false;
    else
        AtlasLoot.db.profile.ItemSpam = true;
    end
    AtlasLootOptions_Init();
end

function AtlasLootOptions_LoDSpam()
    if (AtlasLoot.db.profile.LoDNotify) then
        AtlasLoot.db.profile.LoDNotify = false;
    else
        AtlasLoot.db.profile.LoDNotify = true;
    end
    AtlasLootOptions_Init();
end

function AtlasLootOptions_LoDStartup()
    if (AtlasLoot.db.profile.LoadAllLoDStartup) then
        AtlasLoot.db.profile.LoadAllLoDStartup = false;
    else
        AtlasLoot.db.profile.LoadAllLoDStartup = true;
    end
    AtlasLootOptions_Init();
end

function AtlasLootOptions_ItemIDToggle()
    AtlasLoot.db.profile.ItemIDs=AtlasLootOptionsFrameItemID:GetChecked();
    AtlasLootOptions_Init();
end

function AtlasLootOptions_MinimapToggle()
    --[[if IsAddOnLoaded("FuBar") then
        if AtlasLoot.db.profile.MinimapButton == true then
            AtlasLoot.db.profile.MinimapButton = false;
            AtlasLootFu:Hide();
        else
            AtlasLoot.db.profile.MinimapButton = true;
            if AtlasLootFu:IsFuBarMinimapAttached() and (AtlasLoot.db.profile.FuBarAttached == false) then
                AtlasLootFu:ToggleFuBarMinimapAttached();
            end
            AtlasLootFu:Show();
        end
        AtlasLootFuBarOptions_Init();
    else]]
        if AtlasLoot.db.profile.MinimapButton == true then
            AtlasLoot.db.profile.MinimapButton = false;
            AtlasLootMinimapButtonFrame:SetPoint("CENTER", "UIParent", "CENTER");
            AtlasLootMinimapButtonFrame:Hide();
        else
            AtlasLoot.db.profile.MinimapButton = true;
            AtlasLootMinimapButtonFrame:SetPoint("TOPLEFT","Minimap","TOPLEFT",54 - (78 * cos(AtlasLoot.db.profile.MinimapButtonAngle)),(78 * sin(AtlasLoot.db.profile.MinimapButtonAngle)) - 55);
            AtlasLootMinimapButtonFrame:Show();
        end
        AtlasLootOptions_Init();
    --end
end

--[[function AtlasLootOptions_FuBarToggle()
    if AtlasLoot.db.profile.MinimapButton == true then
        if AtlasLoot.db.profile.FuBarAttached then
            AtlasLoot.db.profile.FuBarAttached = false;
            AtlasLootFu:ToggleFuBarMinimapAttached();
        else
            AtlasLoot.db.profile.FuBarAttached = true;
            AtlasLootFu:ToggleFuBarMinimapAttached();
        end
        AtlasLootFuBarOptions_Init();
    end
end]]
        

function AtlasLoot_SetupLootBrowserSlider(frame, mymin, mymax, step)
    getglobal(frame:GetName().."Text"):SetText(AL["Loot Browser Scale: "].." ("..frame:GetValue()..")");
	frame:SetMinMaxValues(mymin, mymax);
	getglobal(frame:GetName().."Low"):SetText(mymin);
	getglobal(frame:GetName().."High"):SetText(mymax);
	frame:SetValueStep(step);
end

function AtlasLoot_SetupMinimapPosSlider(frame, mymin, mymax, step)
    getglobal(frame:GetName().."Text"):SetText(AL["Button Position: "].." ("..frame:GetValue()..")");
	frame:SetMinMaxValues(mymin, mymax);
	getglobal(frame:GetName().."Low"):SetText(mymin);
	getglobal(frame:GetName().."High"):SetText(mymax);
	frame:SetValueStep(step);
end

function AtlasLoot_SetupMinimapRadSlider(frame, mymin, mymax, step)
    getglobal(frame:GetName().."Text"):SetText(AL["Button Radius: "].." ("..frame:GetValue()..")");
	frame:SetMinMaxValues(mymin, mymax);
	getglobal(frame:GetName().."Low"):SetText(mymin);
	getglobal(frame:GetName().."High"):SetText(mymax);
	frame:SetValueStep(step);
end

--Borrowed from Atlas, thanks Dan!
local function round(num, idp)
   local mult = 10 ^ (idp or 0);
   return math.floor(num * mult + 0.5) / mult;
end

function AtlasLoot_UpdateLootBrowserSlider(frame)
    getglobal(frame:GetName().."Text"):SetText(AL["Loot Browser Scale: "].." ("..round(frame:GetValue(),2)..")");
end

function AtlasLoot_UpdateMinimapPosSlider(frame)
    getglobal(frame:GetName().."Text"):SetText(AL["Button Position: "].." ("..round(frame:GetValue(),2)..")");
end

function AtlasLoot_UpdateMinimapRadSlider(frame)
    getglobal(frame:GetName().."Text"):SetText(AL["Button Radius: "].." ("..round(frame:GetValue(),2)..")");
end

function AtlasLoot_UpdateLootBrowserScale()
	AtlasLootDefaultFrame:SetScale(AtlasLoot.db.profile.LootBrowserScale);
end

function AtlasLootFuBarOptionsFrame_PositionInitialise()

	Contents = {
        { text = AL["Left"]; func = AtlasLootFuBarOptionsFrame_PositionOnClick;},
        { text = AL["Center"]; func = AtlasLootFuBarOptionsFrame_PositionOnClick;},
        { text = AL["Right"]; func = AtlasLootFuBarOptionsFrame_PositionOnClick;},
    }; 
    local i = 1;
	while i <= 3 do
		UIDropDownMenu_AddButton(Contents[i]);
        i = i + 1;
	end
	
end


--[[function AtlasLootFuBarOptionsFrame_PositionOnShow()
	UIDropDownMenu_Initialize(AtlasLootFuBarOptionsFrameDropDownPosition, AtlasLootFuBarOptionsFrame_PositionInitialise);
	UIDropDownMenu_SetSelectedID(AtlasLootFuBarOptionsFrameDropDownPosition, AtlasLoot.db.profile.FuBarPosition);
	UIDropDownMenu_SetWidth(AtlasLootFuBarOptionsFrameDropDownPosition, 100);
end


function AtlasLootFuBarOptionsFrame_PositionOnClick()
	local thisID = this:GetID();
	UIDropDownMenu_SetSelectedID(AtlasLootFuBarOptionsFrameDropDownPosition, thisID);
	AtlasLoot.db.profile.FuBarPosition = thisID;
	if thisID == 1 then
        AtlasLootFu:GetPanel():SetPluginSide(AtlasLootFu, "LEFT");
    elseif thisID == 2 then
        AtlasLootFu:GetPanel():SetPluginSide(AtlasLootFu, "CENTER");
    elseif thisID == 3 then
        AtlasLootFu:GetPanel():SetPluginSide(AtlasLootFu, "RIGHT");
    end
end

function AtlasLootFuBarOptionsFrame_ToggleIcon()
    if AtlasLoot.db.profile.FuBarIcon then
        AtlasLoot.db.profile.FuBarIcon = false;
        AtlasLootFu:ToggleFuBarIconShown();
    else
        AtlasLoot.db.profile.FuBarIcon = true;
        AtlasLootFu:ToggleFuBarIconShown();
    end
    AtlasLootFuBarOptions_Init();
end

function AtlasLootFuBarOptionsFrame_ToggleText()
    if AtlasLoot.db.profile.FuBarText then
        AtlasLoot.db.profile.FuBarText = false;
        AtlasLootFu:ToggleFuBarTextShown();
    else
        AtlasLoot.db.profile.FuBarText = true;
        AtlasLootFu:ToggleFuBarTextShown();
    end
    AtlasLootFuBarOptions_Init();
end]]

