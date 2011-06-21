local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")

local EY_SUPPORT = { 
	["AtlasLootCataclysm"] = true 
}
-- ["Bosses"]
local BOSS_IDS = {}
local INSTANCE_IDS = {}

do
	for instance,iniTab in pairs(AtlasLoot_LootTableRegister["Instances"]) do
		if iniTab["Info"] and iniTab["Bosses"] and iniTab["Info"].EncounterJournalID and iniTab["Info"][2] and EY_SUPPORT[ iniTab["Info"][2] ] then
			INSTANCE_IDS[ instance ] = iniTab["Info"].EncounterJournalID
			INSTANCE_IDS[ iniTab["Info"].EncounterJournalID ] = instance
			for bossNum, bossTab in ipairs(iniTab["Bosses"]) do
				if bossTab.EncounterJournalID and type(bossTab.EncounterJournalID) == "table" then
					BOSS_IDS[ bossTab[1] ] = bossTab.EncounterJournalID[1]
					for k,v in ipairs(bossTab.EncounterJournalID) do
						BOSS_IDS[ v ] = { bossTab[1], iniTab["Info"].EncounterJournalID } -- dataID, iniID
					end
				elseif bossTab.EncounterJournalID then
					BOSS_IDS[ bossTab[1] ] = bossTab.EncounterJournalID 
					BOSS_IDS[ bossTab.EncounterJournalID ] = { bossTab[1], iniTab["Info"].EncounterJournalID } -- dataID, iniID
				end
			end
		end
	end
end

local function encounterJournal_OnClick(self)
	if self.info then
		if self.info[1] then
			EncounterJournal_DisplayInstance(self.info[1])
		end
		if self.info[2] then
			EncounterJournal_DisplayEncounter(self.info[2])
		end
		if not EncounterJournal:IsShown() then
			EncounterJournal:Show()
		end
	end
end

function AtlasLoot:EncounterJournal_Initialize()
	if AtlasLoot.ItemFrame then
		AtlasLoot.ItemFrame.EncounterJournal = CreateFrame("Button","AtlasLootItemsFrame_EncounterJournal",AtlasLoot.ItemFrame)
		AtlasLoot.ItemFrame.EncounterJournal:SetWidth(25)
		AtlasLoot.ItemFrame.EncounterJournal:SetHeight(25)
		AtlasLoot.ItemFrame.EncounterJournal:SetNormalTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
		AtlasLoot.ItemFrame.EncounterJournal:SetPushedTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
		AtlasLoot.ItemFrame.EncounterJournal:SetDisabledTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
		AtlasLoot.ItemFrame.EncounterJournal:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
		--Frame.EncounterJournal:SetFrameStrata("HIGH")
		AtlasLoot.ItemFrame.EncounterJournal:SetPoint("RIGHT", AtlasLoot.ItemFrame.CloseButton, "LEFT", 0, 0)
		AtlasLoot.ItemFrame.EncounterJournal:SetScript("OnClick", encounterJournal_OnClick)
		AtlasLoot.ItemFrame.EncounterJournal:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end)
	end
	
	if AtlasLoot.CompareFrame then
		AtlasLoot.CompareFrame.EncounterJournal = CreateFrame("Button", "AtlasLootCompareFrame_EncounterJournal", AtlasLoot.CompareFrame)
		AtlasLoot.CompareFrame.EncounterJournal:SetWidth(23)
		AtlasLoot.CompareFrame.EncounterJournal:SetHeight(23)
		AtlasLoot.CompareFrame.EncounterJournal:SetNormalTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
		AtlasLoot.CompareFrame.EncounterJournal:SetPushedTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
		AtlasLoot.CompareFrame.EncounterJournal:SetDisabledTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
		AtlasLoot.CompareFrame.EncounterJournal:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
		--Frame.CompareFrame:SetFrameStrata("HIGH")
		AtlasLoot.CompareFrame.EncounterJournal:SetPoint("RIGHT", AtlasLoot.CompareFrame.Close2, "LEFT", -165, -1)
		AtlasLoot.CompareFrame.EncounterJournal:SetScript("OnClick", encounterJournal_OnClick)
		AtlasLoot.CompareFrame.EncounterJournal:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end)
	end	
	

end

--- Get the boss name from the EncounterJournal or LibBabbleBoss
-- @param 	babbleBossName	<string>	LibBabbelBoss name
-- @param	encounterID		<number>	EncounterJournal Boss ID
function AtlasLoot:EJ_GetBossName(babbleBossName, encounterID)
	if encounterID and EJ_GetEncounterInfo(encounterID) then
		babbleBossName = EJ_GetEncounterInfo(encounterID)
	elseif babbleBossName and BabbleBoss[babbleBossName] then
		babbleBossName = BabbleBoss[babbleBossName]
	elseif not name then
		-- do nothing
	else
		babbleBossName = ""
	end
	return babbleBossName
end

local function refreshButtonInfo(info)
	if not info then return end
	if type(info) ~= "table" then
		if BOSS_IDS[ info ] then
			info = { BOSS_IDS[ BOSS_IDS[ info ] ][2], BOSS_IDS[ info ] }
		elseif INSTANCE_IDS[ info ] then
			info = { INSTANCE_IDS[ info ], nil }
		else
			info = nil
		end
	end
	return info
end

function AtlasLoot:EncounterJournal_ButtonsRefresh()
	AtlasLoot.ItemFrame.EncounterJournal.info = refreshButtonInfo( AtlasLoot.ItemFrame.EncounterJournal.info )
	if AtlasLoot.ItemFrame.EncounterJournal.info then
		AtlasLoot.ItemFrame.EncounterJournal:Show()
		if AtlasLoot.ItemFrame.CloseButton:IsShown() then
			AtlasLoot.ItemFrame.EncounterJournal:SetPoint("RIGHT", AtlasLoot.ItemFrame.CloseButton, "LEFT", 0, 0)
		else
			AtlasLoot.ItemFrame.EncounterJournal:SetPoint("TOPRIGHT", AtlasLoot.ItemFrame, "TOPRIGHT", -5, -5)
		end
	else
		AtlasLoot.ItemFrame.EncounterJournal:Hide()
	end
	
	AtlasLoot.CompareFrame.EncounterJournal.info = refreshButtonInfo( AtlasLoot.CompareFrame.EncounterJournal.info )
	if AtlasLoot.CompareFrame.EncounterJournal.info then	
		AtlasLoot.CompareFrame.EncounterJournal:Show()
	else
		AtlasLoot.CompareFrame.EncounterJournal:Show()
	end
	
	if _G["AtlasLootDefaultFrame_EncounterJournal"] then
		_G["AtlasLootDefaultFrame_EncounterJournal"].info = refreshButtonInfo( _G["AtlasLootDefaultFrame_EncounterJournal"].info )
		if _G["AtlasLootDefaultFrame_EncounterJournal"].info then
			_G["AtlasLootDefaultFrame_EncounterJournal"]:SetScript("OnClick", encounterJournal_OnClick)
			_G["AtlasLootDefaultFrame_EncounterJournal"]:Show()
		else
			_G["AtlasLootDefaultFrame_EncounterJournal"]:Hide()
		end
	end
end