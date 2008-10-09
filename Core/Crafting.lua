local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetLookupTable();
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local RED = "|cffff0000";
local ORANGE = "|cffFF8400";

function AtlasLoot_AlchemyMenu()
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
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\INV_Potion_23");
	AtlasLootMenuItem_1.lootpage = "AlchemyApprentice1";
	AtlasLootMenuItem_1:Show();
	--Expert
	AtlasLootMenuItem_2_Name:SetText(select(2, GetSpellInfo(3464)));
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Potion_23");
	AtlasLootMenuItem_2.lootpage="AlchemyExpert1";
	AtlasLootMenuItem_2:Show();
	--Master
	AtlasLootMenuItem_3_Name:SetText(select(2, GetSpellInfo(28596)));
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Potion_23");
	AtlasLootMenuItem_3.lootpage="AlchemyMaster1";
	AtlasLootMenuItem_3:Show();
	--Journeyman
	AtlasLootMenuItem_16_Name:SetText(select(2, GetSpellInfo(3101)));
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\INV_Potion_23");
	AtlasLootMenuItem_16.lootpage = "AlchemyJourneyman1";
	AtlasLootMenuItem_16:Show();
	--Artisan
	AtlasLootMenuItem_17_Name:SetText(select(2, GetSpellInfo(11611)));
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Potion_23");
	AtlasLootMenuItem_17.lootpage="AlchemyArtisan1";
	AtlasLootMenuItem_17:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..GetSpellInfo(2259));
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_SmithingMenu()
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
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_1.lootpage = "SmithingApprentice1";
	AtlasLootMenuItem_1:Show();
	--Expert
	AtlasLootMenuItem_2_Name:SetText(select(2, GetSpellInfo(3464)));
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_2.lootpage="SmithingExpert1";
	AtlasLootMenuItem_2:Show();
	--Master
	AtlasLootMenuItem_3_Name:SetText(select(2, GetSpellInfo(28596)));
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_3.lootpage="SmithingMaster1";
	AtlasLootMenuItem_3:Show();
	--Armorsmith
	AtlasLootMenuItem_5_Name:SetText(GetSpellInfo(9788));
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Chest_Plate04");
	AtlasLootMenuItem_5.lootpage="Armorsmith1";
	AtlasLootMenuItem_5:Show();
	--Master Axesmith
	AtlasLootMenuItem_6_Name:SetText(GetSpellInfo(17041));
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Axe_05");
	AtlasLootMenuItem_6.lootpage="Axesmith1";
	AtlasLootMenuItem_6:Show();
	--Master Swordsmith
	AtlasLootMenuItem_7_Name:SetText(GetSpellInfo(17039));
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Sword_41");
	AtlasLootMenuItem_7.lootpage="Swordsmith1";
	AtlasLootMenuItem_7:Show();
	--Journeyman
	AtlasLootMenuItem_16_Name:SetText(select(2, GetSpellInfo(3101)));
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_16.lootpage = "SmithingJourneyman1";
	AtlasLootMenuItem_16:Show();
	--Artisan
	AtlasLootMenuItem_17_Name:SetText(select(2, GetSpellInfo(11611)));
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_17.lootpage="SmithingArtisan1";
	AtlasLootMenuItem_17:Show();
	--Weaponsmith
	AtlasLootMenuItem_20_Name:SetText(GetSpellInfo(9787));
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Sword_25");
	AtlasLootMenuItem_20.lootpage="Weaponsmith1";
	AtlasLootMenuItem_20:Show();
	--Master Hammersmith
	AtlasLootMenuItem_21_Name:SetText(GetSpellInfo(17040));
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Hammer_23");
	AtlasLootMenuItem_21.lootpage="Hammersmith1";
	AtlasLootMenuItem_21:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..GetSpellInfo(2018));
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_EnchantingMenu()
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
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_1.lootpage = "EnchantingApprentice1";
	AtlasLootMenuItem_1:Show();
	--Expert
	AtlasLootMenuItem_2_Name:SetText(select(2, GetSpellInfo(3464)));
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_2.lootpage="EnchantingExpert1";
	AtlasLootMenuItem_2:Show();
	--Master
	AtlasLootMenuItem_3_Name:SetText(select(2, GetSpellInfo(28596)));
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_3.lootpage="EnchantingMaster1";
	AtlasLootMenuItem_3:Show();
	--Journeyman
	AtlasLootMenuItem_16_Name:SetText(select(2, GetSpellInfo(3101)));
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_16.lootpage = "EnchantingJourneyman1";
	AtlasLootMenuItem_16:Show();
	--Artisan
	AtlasLootMenuItem_17_Name:SetText(select(2, GetSpellInfo(11611)));
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_17.lootpage="EnchantingArtisan1";
	AtlasLootMenuItem_17:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..GetSpellInfo(7411));
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_EngineeringMenu()
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
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_1.lootpage = "EngineeringApprentice1";
	AtlasLootMenuItem_1:Show();
	--Expert
	AtlasLootMenuItem_2_Name:SetText(select(2, GetSpellInfo(3464)));
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_2.lootpage="EngineeringExpert1";
	AtlasLootMenuItem_2:Show();
	--Master
	AtlasLootMenuItem_3_Name:SetText(select(2, GetSpellInfo(28596)));
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_3.lootpage="EngineeringMaster1";
	AtlasLootMenuItem_3:Show();
	--Gnomish Engineering
	AtlasLootMenuItem_5_Name:SetText(GetSpellInfo(20220));
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_5.lootpage="Gnomish1";
	AtlasLootMenuItem_5:Show();
	--Journeyman
	AtlasLootMenuItem_16_Name:SetText(select(2, GetSpellInfo(3101)));
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_16.lootpage = "EngineeringJourneyman1";
	AtlasLootMenuItem_16:Show();
	--Artisan
	AtlasLootMenuItem_17_Name:SetText(select(2, GetSpellInfo(11611)));
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_17.lootpage="EngineeringArtisan1";
	AtlasLootMenuItem_17:Show();
	--Gnomish Engineering
	AtlasLootMenuItem_20_Name:SetText(GetSpellInfo(20221));
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_20.lootpage="Goblin1";
	AtlasLootMenuItem_20:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..GetSpellInfo(4036));
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_JewelcrafingMenu()
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
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\INV_Misc_Gem_01");
	AtlasLootMenuItem_1.lootpage = "JewelApprentice1";
	AtlasLootMenuItem_1:Show();
	--Expert
	AtlasLootMenuItem_2_Name:SetText(select(2, GetSpellInfo(3464)));
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_Gem_01");
	AtlasLootMenuItem_2.lootpage="JewelExpert1";
	AtlasLootMenuItem_2:Show();
	--Master
	AtlasLootMenuItem_3_Name:SetText(select(2, GetSpellInfo(28596)));
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_Gem_01");
	AtlasLootMenuItem_3.lootpage="JewelMaster1";
	AtlasLootMenuItem_3:Show();
	--Journeyman
	AtlasLootMenuItem_16_Name:SetText(select(2, GetSpellInfo(3101)));
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\INV_Misc_Gem_01");
	AtlasLootMenuItem_16.lootpage = "JewelJourneyman1";
	AtlasLootMenuItem_16:Show();
	--Artisan
	AtlasLootMenuItem_17_Name:SetText(select(2, GetSpellInfo(11611)));
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_Gem_01");
	AtlasLootMenuItem_17.lootpage="JewelArtisan1";
	AtlasLootMenuItem_17:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..GetSpellInfo(25229));
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_LeatherworkingMenu()
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
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_1.lootpage = "LeatherApprentice1";
	AtlasLootMenuItem_1:Show();
	--Expert
	AtlasLootMenuItem_2_Name:SetText(select(2, GetSpellInfo(3464)));
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_2.lootpage="LeatherExpert1";
	AtlasLootMenuItem_2:Show();
	--Master
	AtlasLootMenuItem_3_Name:SetText(select(2, GetSpellInfo(28596)));
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_3.lootpage="LeatherMaster1";
	AtlasLootMenuItem_3:Show();
	--Dragonscale Leatherworking
	AtlasLootMenuItem_5_Name:SetText(GetSpellInfo(10656));
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_MonsterScales_03");
	AtlasLootMenuItem_5.lootpage="Dragonscale1";
	AtlasLootMenuItem_5:Show();
	--Tribal Leatherworking
	AtlasLootMenuItem_6_Name:SetText(GetSpellInfo(10660));
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_Nature_NullWard");
	AtlasLootMenuItem_6.lootpage="Tribal1";
	AtlasLootMenuItem_6:Show();
	--Journeyman
	AtlasLootMenuItem_16_Name:SetText(select(2, GetSpellInfo(3101)));
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_16.lootpage = "LeatherJourneyman1";
	AtlasLootMenuItem_16:Show();
	--Artisan
	AtlasLootMenuItem_17_Name:SetText(select(2, GetSpellInfo(11611)));
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_17.lootpage="LeatherArtisan1";
	AtlasLootMenuItem_17:Show();
	--Elemental Leatherworking
	AtlasLootMenuItem_20_Name:SetText(GetSpellInfo(10658));
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Spell_Fire_Volcano");
	AtlasLootMenuItem_20.lootpage="Elemental1";
	AtlasLootMenuItem_20:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..GetSpellInfo(2108));
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_TailoringMenu()
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
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_1.lootpage = "TailoringApprentice1";
	AtlasLootMenuItem_1:Show();
	--Expert
	AtlasLootMenuItem_2_Name:SetText(select(2, GetSpellInfo(3464)));
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_2.lootpage="TailoringExpert1";
	AtlasLootMenuItem_2:Show();
	--Master
	AtlasLootMenuItem_3_Name:SetText(select(2, GetSpellInfo(28596)));
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_3.lootpage="TailoringMaster1";
	AtlasLootMenuItem_3:Show();
	--Mooncloth Tailoring
	AtlasLootMenuItem_5_Name:SetText(GetSpellInfo(26798));
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Fabric_MoonRag_01");
	AtlasLootMenuItem_5.lootpage="Mooncloth1";
	AtlasLootMenuItem_5:Show();
	--Shadoweave Tailoring
	AtlasLootMenuItem_6_Name:SetText(GetSpellInfo(26801));
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Fabric_FelRag");
	AtlasLootMenuItem_6.lootpage="Shadoweave1";
	AtlasLootMenuItem_6:Show();
	--Journeyman
	AtlasLootMenuItem_16_Name:SetText(select(2, GetSpellInfo(3101)));
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_16.lootpage = "TailoringJourneyman1";
	AtlasLootMenuItem_16:Show();
	--Artisan
	AtlasLootMenuItem_17_Name:SetText(select(2, GetSpellInfo(11611)));
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_17.lootpage="TailoringArtisan1";
	AtlasLootMenuItem_17:Show();
	--Spellfire Tailoring
	AtlasLootMenuItem_20_Name:SetText(GetSpellInfo(26797));
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Spell_Holy_BlessingOfProtection");
	AtlasLootMenuItem_20.lootpage="Spellfire1";
	AtlasLootMenuItem_20:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..GetSpellInfo(3908));
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

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
