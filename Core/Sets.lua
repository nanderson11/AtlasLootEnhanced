local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetLookupTable();
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local RED = "|cffff0000";
local ORANGE = "|cffFF8400";

function AtlasLootPRE60SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "SETMENU";
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --The Deadmines - Defias Leather
    AtlasLootMenuItem_2_Name:SetText(AL["Defias Leather"]);
    AtlasLootMenuItem_2_Extra:SetText(ORANGE..BabbleZone["The Deadmines"]);
    AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Pants_12");
    AtlasLootMenuItem_2.lootpage="VWOWSets1";
    AtlasLootMenuItem_2:Show();
    --Wailing Caverns - Embrace of the Viper
    AtlasLootMenuItem_3_Name:SetText(AL["Embrace of the Viper"]);
    AtlasLootMenuItem_3_Extra:SetText(ORANGE..BabbleZone["Wailing Caverns"]);
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Shirt_16");
    AtlasLootMenuItem_3.lootpage="VWOWSets1";
    AtlasLootMenuItem_3:Show();
    --Scarlet Monastery - Chain of the Scarlet Crusade
    AtlasLootMenuItem_4_Name:SetText(AL["Chain of the Scarlet Crusade"]);
    AtlasLootMenuItem_4_Extra:SetText(ORANGE..BabbleZone["Scarlet Monastery"]);
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Gauntlets_19");
    AtlasLootMenuItem_4.lootpage="VWOWSets1";
    AtlasLootMenuItem_4:Show();
    --Blackrock Depths - The Gladiator
    AtlasLootMenuItem_5_Name:SetText(AL["The Gladiator"]);
    AtlasLootMenuItem_5_Extra:SetText(ORANGE..BabbleZone["Blackrock Depths"]);
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Helmet_01");
    AtlasLootMenuItem_5.lootpage="VWOWSets1";
    AtlasLootMenuItem_5:Show();
    --Ironweave Battlesuit
    AtlasLootMenuItem_6_Name:SetText(AL["Ironweave Battlesuit"]);
    AtlasLootMenuItem_6_Extra:SetText(ORANGE..AL["Various Locations"]);
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Boots_Cloth_05");
    AtlasLootMenuItem_6.lootpage="VWOWSets2";
    AtlasLootMenuItem_6:Show();
    --Stratholme - The Postmaster
    AtlasLootMenuItem_7_Name:SetText(AL["The Postmaster"]);
    AtlasLootMenuItem_7_Extra:SetText(ORANGE..BabbleZone["Stratholme"]);
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Boots_02");
    AtlasLootMenuItem_7.lootpage="VWOWSets2";
    AtlasLootMenuItem_7:Show();
    --Scholomance - Cloth - Necropile Raiment
    AtlasLootMenuItem_8_Name:SetText(AL["Necropile Raiment"]);
    AtlasLootMenuItem_8_Extra:SetText(ORANGE..BabbleZone["Scholomance"]);
    AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\INV_Shoulder_02");
    AtlasLootMenuItem_8.lootpage="VWOWScholo";
    AtlasLootMenuItem_8:Show();
    --Scholomance - Leather - Cadaverous Garb
    AtlasLootMenuItem_9_Name:SetText(AL["Cadaverous Garb"]);
    AtlasLootMenuItem_9_Extra:SetText(ORANGE..BabbleZone["Scholomance"]);
    AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Belt_16");
    AtlasLootMenuItem_9.lootpage="VWOWScholo";
    AtlasLootMenuItem_9:Show();
    --Scholomance - Mail - Bloodmail Regalia
    AtlasLootMenuItem_10_Name:SetText(AL["Bloodmail Regalia"]);
    AtlasLootMenuItem_10_Extra:SetText(ORANGE..BabbleZone["Scholomance"]);
    AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\INV_Gauntlets_26");
    AtlasLootMenuItem_10.lootpage="VWOWScholo";
    AtlasLootMenuItem_10:Show();
    --Scholomance - Plate - Deathbone Guardian
    AtlasLootMenuItem_11_Name:SetText(AL["Deathbone Guardian"]);
    AtlasLootMenuItem_11_Extra:SetText(ORANGE..BabbleZone["Scholomance"]);
    AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\INV_Belt_12");
    AtlasLootMenuItem_11.lootpage="VWOWScholo";
    AtlasLootMenuItem_11:Show();
    --Scourge Invasion
    AtlasLootMenuItem_12_Name:SetText(AL["Scourge Invasion"]);
    AtlasLootMenuItem_12_Extra:SetText(ORANGE..AL["Various Locations"]);
    AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Talisman_13");
    AtlasLootMenuItem_12.lootpage="VWOWScourgeInvasion";
    AtlasLootMenuItem_12:Show();
    --Spider's Kiss
    AtlasLootMenuItem_17_Name:SetText(AL["Spider's Kiss"]);
    AtlasLootMenuItem_17_Extra:SetText(ORANGE..BabbleZone["Lower Blackrock Spire"]);
    AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Weapon_ShortBlade_16");
    AtlasLootMenuItem_17.lootpage="VWOWSets3";
    AtlasLootMenuItem_17:Show();
    --Dal'Rend's Arms
    AtlasLootMenuItem_18_Name:SetText(AL["Dal'Rend's Arms"]);
    AtlasLootMenuItem_18_Extra:SetText(ORANGE..BabbleZone["Upper Blackrock Spire"]);
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Sword_43");
    AtlasLootMenuItem_18.lootpage="VWOWSets3";
    AtlasLootMenuItem_18:Show();
    --Zul'Gurub Rings
    AtlasLootMenuItem_19_Name:SetText(AL["Zul'Gurub Rings"]);
    AtlasLootMenuItem_19_Extra:SetText(ORANGE..BabbleZone["Zul'Gurub"]);
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Bijou_Orange");
    AtlasLootMenuItem_19.lootpage="VWOWZulGurub";
    AtlasLootMenuItem_19:Show();
    --Primal Blessing
    AtlasLootMenuItem_20_Name:SetText(AL["Primal Blessing"]);
    AtlasLootMenuItem_20_Extra:SetText(ORANGE..BabbleZone["Zul'Gurub"]);
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Weapon_Hand_01");
    AtlasLootMenuItem_20.lootpage="VWOWZulGurub";
    AtlasLootMenuItem_20:Show();
    --The Twin Blades of Hakkari
    AtlasLootMenuItem_21_Name:SetText(AL["The Twin Blades of Hakkari"]);
    AtlasLootMenuItem_21_Extra:SetText(ORANGE..BabbleZone["Zul'Gurub"]);
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Sword_55");
    AtlasLootMenuItem_21.lootpage="VWOWZulGurub";
    AtlasLootMenuItem_21:Show();
    --Shard of the Gods
    AtlasLootMenuItem_22_Name:SetText(AL["Shard of the Gods"]);
    AtlasLootMenuItem_22_Extra:SetText(ORANGE..AL["Various Locations"]);
    AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\INV_Misc_MonsterScales_15");
    AtlasLootMenuItem_22.lootpage="VWOWSets3";
    AtlasLootMenuItem_22:Show();
    --Spirit of Eskhandar
    AtlasLootMenuItem_23_Name:SetText(AL["Spirit of Eskhandar"]);
    AtlasLootMenuItem_23_Extra:SetText(ORANGE..AL["Various Locations"]);
    AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\INV_Misc_MonsterClaw_04");
    AtlasLootMenuItem_23.lootpage="VWOWSets3";
    AtlasLootMenuItem_23:Show();
    --Latro's Flurry
    AtlasLootMenuItem_25_Name:SetText(AL["Latro's Flurry"]);
    AtlasLootMenuItem_25_Extra:SetText(ORANGE..AL["World Drop"]);
    AtlasLootMenuItem_25_Icon:SetTexture("Interface\\Icons\\INV_Sword_76");
    AtlasLootMenuItem_25.lootpage="TBCSets";
    AtlasLootMenuItem_25:Show();
    --The Twin Stars
    AtlasLootMenuItem_26_Name:SetText(AL["The Twin Stars"]);
    AtlasLootMenuItem_26_Extra:SetText(ORANGE..AL["World Drop"]);
    AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_36");
    AtlasLootMenuItem_26.lootpage="TBCSets";
    AtlasLootMenuItem_26:Show();
    --The Twin Blades of Azzinoth
    AtlasLootMenuItem_27_Name:SetText(AL["The Twin Blades of Azzinoth"]);
    AtlasLootMenuItem_27_Extra:SetText(ORANGE..BabbleZone["Black Temple"]);
    AtlasLootMenuItem_27_Icon:SetTexture("Interface\\Icons\\INV_Weapon_Glave_01");
    AtlasLootMenuItem_27.lootpage="TBCSets";
    AtlasLootMenuItem_27:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Pre 60 Sets"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootPVPSetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "HONORMENU";
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.lootpage="PVPDruid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(BabbleClass["Mage"]);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.lootpage="PVPMage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.lootpage="PVPPriest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.lootpage="PVPShaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(BabbleClass["Warrior"]);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.lootpage="PVPWarrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(BabbleClass["Hunter"]);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.lootpage="PVPHunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.lootpage="PVPPaladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(BabbleClass["Rogue"]);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.lootpage="PVPRogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(BabbleClass["Warlock"]);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
    AtlasLootMenuItem_21.lootpage="PVPWarlock";
    AtlasLootMenuItem_21:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["PvP Armor Sets"]..": "..AL["Level 60"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootPVP70RepSetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "HONORMENU";
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.lootpage="PVP70RepLeather";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(BabbleClass["Mage"]);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.lootpage="PVP70RepCloth";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.lootpage="PVP70RepCloth";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.lootpage="PVP70RepMail";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(BabbleClass["Warrior"]);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.lootpage="PVP70RepPlate";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(BabbleClass["Hunter"]);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.lootpage="PVP70RepMail";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.lootpage="PVP70RepPlate";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(BabbleClass["Rogue"]);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.lootpage="PVP70RepLeather";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(BabbleClass["Warlock"]);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
    AtlasLootMenuItem_21.lootpage="PVP70RepCloth";
    AtlasLootMenuItem_21:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["PvP Reputation Sets"]..": "..AL["Level 70"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootARENASetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "ARENAMENU";
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid Balance
    AtlasLootMenuItem_3_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_3_Extra:SetText(ORANGE..AL["Balance"]);
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_InsectSwarm");
    AtlasLootMenuItem_3.lootpage="ArenaDruidBalance";
    AtlasLootMenuItem_3:Show();
    --Druid Feral
    AtlasLootMenuItem_4_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_4_Extra:SetText(ORANGE..AL["Feral"]);
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Ability_Druid_Maul");
    AtlasLootMenuItem_4.lootpage="ArenaDruidFeral";
    AtlasLootMenuItem_4:Show();
    --Druid Restoration
    AtlasLootMenuItem_5_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_5_Extra:SetText(ORANGE..AL["Restoration"]);
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_5.lootpage="ArenaDruidRestoration";
    AtlasLootMenuItem_5:Show();
    --Hunter
    AtlasLootMenuItem_7_Name:SetText(BabbleClass["Hunter"]);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_7.lootpage="ArenaHunter";
    AtlasLootMenuItem_7:Show();
    --Mage
    AtlasLootMenuItem_9_Name:SetText(BabbleClass["Mage"]);
    AtlasLootMenuItem_9_Extra:SetText("");
    AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_9.lootpage="ArenaMage";
    AtlasLootMenuItem_9:Show();
    --Paladin Holy
    AtlasLootMenuItem_11_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_11_Extra:SetText(ORANGE..AL["Holy"]);
    AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Spell_Holy_HolyBolt");
    AtlasLootMenuItem_11.lootpage="ArenaPaladinHoly";
    AtlasLootMenuItem_11:Show();
    --Paladin Protection
    AtlasLootMenuItem_12_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_12_Extra:SetText(ORANGE..AL["Protection"]);
    AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_12.lootpage="ArenaPaladinProtection";
    AtlasLootMenuItem_12:Show();
    --Paladin Retribution
    AtlasLootMenuItem_13_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_13_Extra:SetText(ORANGE..AL["Retribution"]);
    AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Spell_Holy_AuraOfLight");
    AtlasLootMenuItem_13.lootpage="ArenaPaladinRetribution";
    AtlasLootMenuItem_13:Show();
    --Priest Holy
    AtlasLootMenuItem_17_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_17_Extra:SetText(ORANGE..AL["Holy"]);
    AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_17.lootpage="ArenaPriestHoly";
    AtlasLootMenuItem_17:Show();
    --Priest Shadow
    AtlasLootMenuItem_18_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_18_Extra:SetText(ORANGE..AL["Shadow"]);
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_AntiShadow");
    AtlasLootMenuItem_18.lootpage="ArenaPriestShadow";
    AtlasLootMenuItem_18:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(BabbleClass["Rogue"]);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.lootpage="ArenaRogue";
    AtlasLootMenuItem_20:Show();
    --Shaman Elemental
    AtlasLootMenuItem_22_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_22_Extra:SetText(ORANGE..AL["Elemental"]);
    AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Lightning");
    AtlasLootMenuItem_22.lootpage="ArenaShamanElemental";
    AtlasLootMenuItem_22:Show();
    --Shaman Enhancement
    AtlasLootMenuItem_23_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_23_Extra:SetText(ORANGE..AL["Enhancement"]);
    AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_23.lootpage="ArenaShamanEnhancement";
    AtlasLootMenuItem_23:Show();
    --Shaman Restoration
    AtlasLootMenuItem_24_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_24_Extra:SetText(ORANGE..AL["Restoration"]);
    AtlasLootMenuItem_24_Icon:SetTexture("Interface\\Icons\\Spell_Nature_HealingWaveGreater");
    AtlasLootMenuItem_24.lootpage="ArenaShamanRestoration";
    AtlasLootMenuItem_24:Show();
    --Warlock Demonology
    AtlasLootMenuItem_26_Name:SetText(BabbleClass["Warlock"]);
    AtlasLootMenuItem_26_Extra:SetText(ORANGE..AL["Demonology"]);
    AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
    AtlasLootMenuItem_26.lootpage="ArenaWarlockDemonology";
    AtlasLootMenuItem_26:Show();
    --Warlock Destruction
    AtlasLootMenuItem_27_Name:SetText(BabbleClass["Warlock"]);
    AtlasLootMenuItem_27_Extra:SetText(ORANGE..AL["Destruction"]);
    AtlasLootMenuItem_27_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
    AtlasLootMenuItem_27.lootpage="ArenaWarlockDestruction";
    AtlasLootMenuItem_27:Show();
    --Warrior
    AtlasLootMenuItem_29_Name:SetText(BabbleClass["Warrior"]);
    AtlasLootMenuItem_29_Extra:SetText();
    AtlasLootMenuItem_29_Icon:SetTexture("Interface\\Icons\\Ability_Warrior_BattleShout");
    AtlasLootMenuItem_29.lootpage="ArenaWarrior";
    AtlasLootMenuItem_29:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Arena PvP Sets"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootT0SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "SETMENU";
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.lootpage="T0Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(BabbleClass["Mage"]);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.lootpage="T0Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.lootpage="T0Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.lootpage="T0Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(BabbleClass["Warrior"]);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.lootpage="T0Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(BabbleClass["Hunter"]);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.lootpage="T0Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.lootpage="T0Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(BabbleClass["Rogue"]);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.lootpage="T0Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(BabbleClass["Warlock"]);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
    AtlasLootMenuItem_21.lootpage="T0Warlock";
    AtlasLootMenuItem_21:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Dungeon 1/2 Sets"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootDS3SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "SETMENU";
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Hallowed Set
    AtlasLootMenuItem_2_Name:SetText(AL["Hallowed Raiment"]);
    AtlasLootMenuItem_2_Extra:SetText(ORANGE..BabbleInventory["Cloth"]);
    AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Spell_Holy_InnerFire");
    AtlasLootMenuItem_2.lootpage="DS3Cloth";
    AtlasLootMenuItem_2:Show();
    --Incanter Set
    AtlasLootMenuItem_17_Name:SetText(AL["Incanter's Regalia"]);
    AtlasLootMenuItem_17_Extra:SetText(ORANGE..BabbleInventory["Cloth"]);
    AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Ability_Creature_Cursed_04");
    AtlasLootMenuItem_17.lootpage="DS3Cloth";
    AtlasLootMenuItem_17:Show();
    --Mana-Etched Set
    AtlasLootMenuItem_3_Name:SetText(AL["Mana-Etched Regalia"]);
    AtlasLootMenuItem_3_Extra:SetText(ORANGE..BabbleInventory["Cloth"]);
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Elemental_Mote_Nether");
    AtlasLootMenuItem_3.lootpage="DS3Cloth";
    AtlasLootMenuItem_3:Show();
    --Oblivion Set
    AtlasLootMenuItem_18_Name:SetText(AL["Oblivion Raiment"]);
    AtlasLootMenuItem_18_Extra:SetText(ORANGE..BabbleInventory["Cloth"]);
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Creature_Cursed_03");
    AtlasLootMenuItem_18.lootpage="DS3Cloth";
    AtlasLootMenuItem_18:Show();
    --Assassination Set
    AtlasLootMenuItem_5_Name:SetText(AL["Assassination Armor"]);
    AtlasLootMenuItem_5_Extra:SetText(ORANGE..BabbleInventory["Leather"]);
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Ability_Rogue_SinisterCalling");
    AtlasLootMenuItem_5.lootpage="DS3Leather";
    AtlasLootMenuItem_5:Show();
    --Moonglade Set
    AtlasLootMenuItem_20_Name:SetText(AL["Moonglade Raiment"]);
    AtlasLootMenuItem_20_Extra:SetText(ORANGE..BabbleInventory["Leather"]);
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfRighteousness");
    AtlasLootMenuItem_20.lootpage="DS3Leather";
    AtlasLootMenuItem_20:Show();
    --Wastewalker Set
    AtlasLootMenuItem_6_Name:SetText(AL["Wastewalker Armor"]);
    AtlasLootMenuItem_6_Extra:SetText(ORANGE..BabbleInventory["Leather"]);
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RapidKilling");
    AtlasLootMenuItem_6.lootpage="DS3Leather";
    AtlasLootMenuItem_6:Show();
    --Beast Lord Set
    AtlasLootMenuItem_8_Name:SetText(AL["Beast Lord Armor"]);
    AtlasLootMenuItem_8_Extra:SetText(ORANGE..BabbleInventory["Mail"]);
    AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_Pet_Wolf");
    AtlasLootMenuItem_8.lootpage="DS3Mail";
    AtlasLootMenuItem_8:Show();
    --Desolation Set
    AtlasLootMenuItem_23_Name:SetText(AL["Desolation Battlegear"]);
    AtlasLootMenuItem_23_Extra:SetText(ORANGE..BabbleInventory["Mail"]);
    AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\Ability_FiegnDead");
    AtlasLootMenuItem_23.lootpage="DS3Mail";
    AtlasLootMenuItem_23:Show();
    --Tidefury Set
    AtlasLootMenuItem_9_Name:SetText(AL["Tidefury Raiment"]);
    AtlasLootMenuItem_9_Extra:SetText(ORANGE..BabbleInventory["Mail"]);
    AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Helmet_70");
    AtlasLootMenuItem_9.lootpage="DS3Mail";
    AtlasLootMenuItem_9:Show();
    --Bold Set
    AtlasLootMenuItem_11_Name:SetText(AL["Bold Armor"]);
    AtlasLootMenuItem_11_Extra:SetText(ORANGE..BabbleInventory["Plate"]);
    AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Spell_Fire_EnchantWeapon");
    AtlasLootMenuItem_11.lootpage="DS3Plate";
    AtlasLootMenuItem_11:Show();
    --Doomplate Set
    AtlasLootMenuItem_26_Name:SetText(AL["Doomplate Battlegear"]);
    AtlasLootMenuItem_26_Extra:SetText(ORANGE..BabbleInventory["Plate"]);
    AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\INV_Helmet_08");
    AtlasLootMenuItem_26.lootpage="DS3Plate";
    AtlasLootMenuItem_26:Show();
    --Righteous Set
    AtlasLootMenuItem_12_Name:SetText(AL["Righteous Armor"]);
    AtlasLootMenuItem_12_Extra:SetText(ORANGE..BabbleInventory["Plate"]);
    AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\INV_Hammer_02");
    AtlasLootMenuItem_12.lootpage="DS3Plate";
    AtlasLootMenuItem_12:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Dungeon 3 Sets"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootT1T2SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "SETMENU";
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.lootpage="T1T2Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(BabbleClass["Mage"]);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.lootpage="T1T2Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.lootpage="T1T2Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.lootpage="T1T2Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(BabbleClass["Warrior"]);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.lootpage="T1T2Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(BabbleClass["Hunter"]);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.lootpage="T1T2Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.lootpage="T1T2Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(BabbleClass["Rogue"]);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.lootpage="T1T2Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(BabbleClass["Warlock"]);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
    AtlasLootMenuItem_21.lootpage="T1T2Warlock";
    AtlasLootMenuItem_21:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Tier 1/2 Sets"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootT3SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "SETMENU";
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.lootpage="T3Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(BabbleClass["Mage"]);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.lootpage="T3Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.lootpage="T3Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.lootpage="T3Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(BabbleClass["Warrior"]);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.lootpage="T3Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(BabbleClass["Hunter"]);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.lootpage="T3Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.lootpage="T3Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(BabbleClass["Rogue"]);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.lootpage="T3Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(BabbleClass["Warlock"]);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
    AtlasLootMenuItem_21.lootpage="T3Warlock";
    AtlasLootMenuItem_21:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Tier 3 Sets"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootT456SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootMenuItem_"..i).isheader = false;
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    getglobal("AtlasLootItemsFrame_BACK"):Show();
    getglobal("AtlasLootItemsFrame_BACK").lootpage = "SETMENU";
    --Druid Balance
    AtlasLootMenuItem_3_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_3_Extra:SetText(ORANGE..AL["Balance"]);
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_InsectSwarm");
    AtlasLootMenuItem_3.lootpage="T456DruidBalance";
    AtlasLootMenuItem_3:Show();
    --Druid Feral
    AtlasLootMenuItem_4_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_4_Extra:SetText(ORANGE..AL["Feral"]);
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Ability_Druid_Maul");
    AtlasLootMenuItem_4.lootpage="T456DruidFeral";
    AtlasLootMenuItem_4:Show();
    --Druid Restoration
    AtlasLootMenuItem_5_Name:SetText(BabbleClass["Druid"]);
    AtlasLootMenuItem_5_Extra:SetText(ORANGE..AL["Restoration"]);
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_5.lootpage="T456DruidRestoration";
    AtlasLootMenuItem_5:Show();
    --Hunter
    AtlasLootMenuItem_7_Name:SetText(BabbleClass["Hunter"]);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_7.lootpage="T456Hunter";
    AtlasLootMenuItem_7:Show();
    --Mage
    AtlasLootMenuItem_9_Name:SetText(BabbleClass["Mage"]);
    AtlasLootMenuItem_9_Extra:SetText("");
    AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_9.lootpage="T456Mage";
    AtlasLootMenuItem_9:Show();
    --Paladin Holy
    AtlasLootMenuItem_11_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_11_Extra:SetText(ORANGE..AL["Holy"]);
    AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Spell_Holy_HolyBolt");
    AtlasLootMenuItem_11.lootpage="T456PaladinHoly";
    AtlasLootMenuItem_11:Show();
    --Paladin Protection
    AtlasLootMenuItem_12_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_12_Extra:SetText(ORANGE..AL["Protection"]);
    AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_12.lootpage="T456PaladinProtection";
    AtlasLootMenuItem_12:Show();
    --Paladin Retribution
    AtlasLootMenuItem_13_Name:SetText(BabbleClass["Paladin"]);
    AtlasLootMenuItem_13_Extra:SetText(ORANGE..AL["Retribution"]);
    AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Spell_Holy_AuraOfLight");
    AtlasLootMenuItem_13.lootpage="T456PaladinRetribution";
    AtlasLootMenuItem_13:Show();
    --Priest Holy
    AtlasLootMenuItem_17_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_17_Extra:SetText(ORANGE..AL["Holy"]);
    AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_17.lootpage="T456PriestHoly";
    AtlasLootMenuItem_17:Show();
    --Priest Shadow
    AtlasLootMenuItem_18_Name:SetText(BabbleClass["Priest"]);
    AtlasLootMenuItem_18_Extra:SetText(ORANGE..AL["Shadow"]);
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_AntiShadow");
    AtlasLootMenuItem_18.lootpage="T456PriestShadow";
    AtlasLootMenuItem_18:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(BabbleClass["Rogue"]);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.lootpage="T456Rogue";
    AtlasLootMenuItem_20:Show();
    --Shaman Elemental
    AtlasLootMenuItem_22_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_22_Extra:SetText(ORANGE..AL["Elemental"]);
    AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Lightning");
    AtlasLootMenuItem_22.lootpage="T456ShamanElemental";
    AtlasLootMenuItem_22:Show();
    --Shaman Enhancement
    AtlasLootMenuItem_23_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_23_Extra:SetText(ORANGE..AL["Enhancement"]);
    AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_23.lootpage="T456ShamanEnhancement";
    AtlasLootMenuItem_23:Show();
    --Shaman Restoration
    AtlasLootMenuItem_24_Name:SetText(BabbleClass["Shaman"]);
    AtlasLootMenuItem_24_Extra:SetText(ORANGE..AL["Restoration"]);
    AtlasLootMenuItem_24_Icon:SetTexture("Interface\\Icons\\Spell_Nature_HealingWaveGreater");
    AtlasLootMenuItem_24.lootpage="T456ShamanRestoration";
    AtlasLootMenuItem_24:Show();
    --Warlock
    AtlasLootMenuItem_26_Name:SetText(BabbleClass["Warlock"]);
    AtlasLootMenuItem_26_Extra:SetText("");
    AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
    AtlasLootMenuItem_26.lootpage="T456Warlock";
    AtlasLootMenuItem_26:Show();
    --Warrior Fury
    AtlasLootMenuItem_28_Name:SetText(BabbleClass["Warrior"]);
    AtlasLootMenuItem_28_Extra:SetText(ORANGE..AL["Fury"]);
    AtlasLootMenuItem_28_Icon:SetTexture("Interface\\Icons\\Ability_Warrior_BattleShout");
    AtlasLootMenuItem_28.lootpage="T456WarriorFury";
    AtlasLootMenuItem_28:Show();
    --Warrior Protection
    AtlasLootMenuItem_29_Name:SetText(BabbleClass["Warrior"]);
    AtlasLootMenuItem_29_Extra:SetText(ORANGE..AL["Protection"]);
    AtlasLootMenuItem_29_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_29.lootpage="T456WarriorProtection";
    AtlasLootMenuItem_29:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Tier 4/5/6 Sets"]);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end