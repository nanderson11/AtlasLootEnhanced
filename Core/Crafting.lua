local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetLookupTable();
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local RED = "|cffff0000";
local ORANGE = "|cffFF8400";



function AtlasLoot_CookingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	--Apprentice
	AtlasLootMenuItem_1_Name:SetText(select(2, GetSpellInfo(2259)));
	AtlasLootMenuItem_1_Extra:SetText("");
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_1.lootpage = "CookingApprentice1";
	AtlasLootMenuItem_1:Show();
	--Expert
	AtlasLootMenuItem_2_Name:SetText(select(2, GetSpellInfo(3464)));
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_2.lootpage="CookingExpert1";
	AtlasLootMenuItem_2:Show();
	--Master
	AtlasLootMenuItem_3_Name:SetText(select(2, GetSpellInfo(28596)));
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_3.lootpage="CookingMaster1";
	AtlasLootMenuItem_3:Show();
	--Journeyman
	AtlasLootMenuItem_16_Name:SetText(select(2, GetSpellInfo(3101)));
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_16.lootpage = "CookingJourneyman1";
	AtlasLootMenuItem_16:Show();
	--Artisan
	AtlasLootMenuItem_17_Name:SetText(select(2, GetSpellInfo(11611)));
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_17.lootpage="CookingArtisan1";
	AtlasLootMenuItem_17:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..GetSpellInfo(2550));
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end
