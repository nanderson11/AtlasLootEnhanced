﻿-- $Id$
--[[
constants.tw.lua
This file defines an AceLocale table for all the various text strings needed
by AtlasLoot.  In this implementation, if a translation is missing, it will fall
back to the English translation.

The AL["text"] = true; shortcut can ONLY be used for English (the root translation).

Before adding a new string, check first if it can be acquired from GetItemInfo, GetSpellInfo or GetAchievementCriteriaInfo.
Also check if it should be added instead to one of the Babble libraries we use.
]]

	-- Table holding all loot tables is initialised here as it loads early
--	AtlasLoot_Data = {};
--	AtlasLoot_TableNames = {};

	-- Create the library instance
	local AceLocale = LibStub:GetLibrary("AceLocale-3.0");

	local AL = AceLocale:NewLocale("AtlasLoot", "zhTW", false);

-- Register translations
if AL then

	-- #########
	-- UI things
	-- #########
	-- compare frame
	AL["Compare Frame"] = "比較視窗";
	AL["Show in Compare Frame"] = "在比較視窗顯示";
	AL["Name"] = "名稱";
	AL["ItemLvl"] = "物品等級";
	AL["Normal"] = "普通";
	AL["%d items"] = "%d 物品";
	AL["All"] = "全部";
	AL["Stats"] = "屬性";
	AL["Show \"Base Stats list\""] = "顯示 \"基本屬性列表\"";
	AL["Show \"Extra Stats list\""] = "顯示 \"附加屬性列表\"";
	AL["Base Stats list"] = "基本屬性列表";
	AL["Extra Stats list"] = "附加屬性列表";	
	AL["Add Stats list"] = "新增屬性列表";
	AL["Are you sure you want to delete Sort list |cff1eff00%s|r?"] = "你確定要刪除列表排序|cff1eff00%s|r?";
	AL["Delete Stats list"] = "刪除屬性列表";
	AL["Stats color"] = "屬性顏色";
	AL["Stats list name:"] = "屬性列表名稱:";
	AL["Select Stats list"] = "選擇屬性列表";
	AL["You cant set more then %d item stats."] = "您可以設定多達 %d 個物品狀態.";
	AL["Slot"] = "空位";
	AL["AtlasLoot has detected some corrupted items on your Wishlist. You can now run an automatic check to fix it. Please be aware that this could take a few moments."] = "AtlasLoot 已檢測到願望列表存在一些損壞的物品。現在可以運行自動檢查修復它。請注意，這可能需要一會兒。";
	AL["BonusRoll:"] = "額外擲骰";
	AL["|cffFF0000Shift+Click: |cffFFFFFFOpen filter configuration"] = "|cffFF0000Shift+點擊：|cffFFFFFF打開過濾器配置";

	-- Stats short
	AL["iLvl"] = "等級";	-- Item lvl
	AL["str"] = "力量";	-- Strength
	AL["agi"] = "敏捷";	-- Agility
	AL["sta"] = "耐力";	-- Stamina
	AL["int"] = "智力";	-- Intellect
	AL["spi"] = "精力";	-- Spirit
	AL["Crit"] = "致命";	-- Crit Rating
	AL["Dodge"] = "閃躲";	-- Dodge Rating
	AL["Exp"] = "熟練";	-- Expertise Rating
	AL["Hit"] = "命中";	-- Hit Rating
	AL["Haste"] = "加速";	-- Haste Rating
	AL["Parry"] = "招架";	-- Parry Rating
	AL["Spell"] = "法能";	-- Spell Power
	AL["Resi"] = "韌性";	-- Resilience Rating
	AL["Mast"] = "精通";	-- Mastery

	-- Stats
	AL["Resilience Rating"] = "韌性等級";
	AL["Base Stats"] = "基本屬性";
	AL["Extra Stats"] = "附加屬性";

	-- Loader
	AL["Load AtlasLoot"] = "載入 AtlasLoot";
	AL["Module \"%s\" is disabled."] = "\"%s\" 模組已停用.";
	AL["Module \"%s\" is missing."] = "找不到 \"%s\" 模組.";

	-- MiniMap-Button
	AL["|cffFF0000Click: |cffFFFFFFOpen AtlasLoot\n|cffFF0000Shift+Click: |cffFFFFFFOpen AtlasLoot-Options "] = "|cffFF0000右鍵: |cffFFFFFF開啟 AtlasLoot\n|cffFF0000Shift + 右鍵: |cffFFFFFF開啟 AtlasLoot 選項";

	-- AtlasLootFu 
	AL["AtlasLootFu is no longer in use.\nDelete it from your AddOns folder"] = "AtlasLootFu 已不再包含在 AtlasLoot 裡, \n請將其從 Addons 目錄移除.";

	-- Atlas Incompatible
	AL["Please note that AtlasLoot v%s is only compatible with Atlas v%s. AtlasLoot detected that you have an older Atlas version installed and thus Atlas integration was disabled."] = "請注意，AAtlasLoot v%s 僅支援 Atlas v%s 。我們偵測到您目前的 Atlas 版本太舊，因此關於 Atlas 的整合將會被停用。";

	-- Options
	AL["Options"] = "選項";
	AL["Load Loot Modules at Startup"] = "在起始時載入所有模組";
	AL["Toggle Minimap Button"] = "切換小地圖按鈕";
	AL["Toggles the display of the minimap icon"] = "切換顯示小地圖按鈕";
	AL["Show itemIDs"] = "顯示物品 ID";
	AL["Show Droprates"] = "顯示掉落率";
	AL["Safe Chat Links"] = "安全物品連結";
	AL["Comparison Tooltips"] = "比較結果提示";
	AL["Show Boss Tooltip"] = "顯示首領提示";
	AL["Show Comparison Tooltips"] = "顯示物品比較結果的提示訊息";
	AL["Opaque"] = "不透明";
	AL["Make Loot Table Opaque"] = "使物品掉落表不透明";
	AL["Treat Crafted Items:"] = "交易技能呈現方式:";
	AL["As Crafting Spells"] = "技能";
	AL["As Items"] = "製成品";
	AL["Reset"] = "重設";
	AL["Reset Frames"] = "重設框架";
	AL["Profiles"] = "設定檔";
	AL["Item Buttons"] = "物品按鍵";
	AL["Loot Table"] = "物品表";
	AL["Enable mouse on item descriptions"] = "啟用滑鼠指向物品屬性";
	AL["Upgrade Level:"] = "升級等級：";
	AL["Show BonusRoll info"] = "顯示額外擲骰訊息";
	AL["Shows if a item is available with bonus roll or raid finder loot."] = "當物品拾取可用於額外擲骰或團隊搜尋器時顯示。";

	-- Default Frame
	AL["Default Frame"] = "預設框架";
	AL["Scale:"] = "縮放：";
	AL["Alpha:"] = "透明度：";
	AL["Only change alpha on leave frame"] = "只改變離開框架的透明度";

	-- Bindings
	AL["Toggle AtlasLoot"] = "切換 AtlasLoot";

	-- Help
	AL["Help"] = "說明";
	AL["AtlasLoot Help"] = "AtlasLoot 說明";
	AL["For further help, see our website and forums: "] = "進階說明請參閱網站及論壇：";
	AL["How to open the standalone Loot Browser:"] = "如何開啟獨立的物品掉落檢視器：";
	AL["If you have AtlasLootFu enabled, click the minimap button, or alternatively a button generated by a mod like Titan or FuBar.  Finally, you can type '/al' in the chat window."] = "點選小地圖旁的 AtlasLoot / Titan / FuBar 按鈕。或在聊天視窗輸入 '/al' 以開啟物品掉落檢視器。";
	AL["How to view an 'unsafe' item:"] = "如何檢視不安全物品：";
	AL["Unsafe items have a red border around the icon and are marked because you have not seen the item since the last patch or server restart. Right-click the item, then move your mouse back over the item or click the 'Query Server' button at the bottom of the loot page."] = "不安全的物品其圖示周圍有紅色外框，用以標示從上次的重大更新或伺服器重新啟動後你尚未檢視過的物品。在物品圖示右鍵點擊，然後將滑鼠移開，再重新移回圖示上方，或是按下 '從伺服器查詢' 按鈕。";
	AL["How to view an item in the Dressing Room:"] = "如何在試衣間檢視物品：";
	AL["Simply Ctrl+Left Click on the item.  Sometimes the dressing room window is hidden behind the Atlas or AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden."] = "在物品上按下 Ctrl + 滑鼠右鍵即可。有時試衣間的視窗隱藏在 Atlas 或是 AtlasLoot 視窗之下，因此若是未看到試衣間視窗，嘗試移動 Atlas 或是 AtlasLoot 視窗。";
	AL["How to link an item to someone else:"] = "如何傳送物品連結給其他人：";
	AL["Shift+Left Click the item like you would for any other in-game item"] = "在物品上按 Shift + 滑鼠左鍵。";
	AL["How to add an item to the wishlist:"] = "如何新增物品到願望清單：";
	AL["Alt+Left Click any item to add it to the wishlist."] = "在物品上按 Alt + 滑鼠左鍵。";
	AL["How to delete an item from the wishlist:"] = "如何將物品從願望清單刪除：";
	AL["While on the wishlist screen, just Alt+Left Click on an item to delete it."] = "在願望清單視窗中，於欲刪除物品上按 Alt + 滑鼠左鍵。";
	AL["What else does the wishlist do?"] = "願望清單還可以做什麼？";
	AL["If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.  Also, on a loot page any item already in your wishlist is marked with a yellow star."] = "如果你在願望清單裡對任何物品按滑鼠左鍵，視窗將跳至該物品的掉落頁面，以便你查閱對應的掉落首領等。此外，一個已經被你加至願望清單的物品，在對應的首領掉落頁面也會以黃色星星標示。";
	AL["HELP!! I have broken the mod somehow!"] = "求助，我有個壞掉的模組無法正常運作！";
	AL["Use the reset buttons available in the options menu, or type '/al reset' in your chat window."] = "請嘗試用重設按鈕，或是輸入 '/al reset' 來重設所有設定。";

	-- LootButtons
	-- Tooltips
	AL["ItemID:"] = "物品 ID：";
	AL["Drop Rate: "] = "掉落機率：";
	AL["DKP"] = "DKP";
	AL["Priority:"] = "優先權：";
	AL["Show price and slot if possible"] = "盡可能顯示價格與部位資訊";
	AL["Show wishlist items in bosses tooltip"] = "在首領提示訊息中顯示願望清單中物品";
	AL["Use GameTooltip"] = "使用內建提示訊息";
	AL["Use the standard GameTooltip instead of the custom AtlasLoot tooltip"] = "使用遊戲內建提示訊息, 而不使用 AtlasLoot 提示訊息";
	AL["%d / %d ( Bank: %d )"] = "%d / %d ( 銀行：%d )";
	-- Unsafe Item
	AL["Item Unavailable"] = "物品資訊目前無法取得";
	AL["|cff0070ddItemID: %d |r\nThis item is unsafe.  To view this item without the risk of disconnection, you need to have first seen it in the game world.\n\nYou can right-click to attempt to query the server.  You may be disconnected."] = "|cff0070dd物品 ID：%d |r\n並不安全. 如要安全的檢視這個物品並且避免斷線, 你必須在當前的伺服器中曾見過該物品. \n\n你仍可以按下滑鼠右鍵向伺服器查詢, 然而你有可能會斷線..";
	-- Heriloom Config Window
	AL["Heirloom preview"] = "傳家之寶預覽";
	AL["Change level:"] = "變更等級：";
	AL["Shift + Right Click to select character level"] = "按 Shift 及右鍵來選擇角色等級";	

	-- LootTableSort
	AL["Sort by Instance"] = "依副本排序";
	AL["Sort loottable by Instance"] = "將物品依照掉落副本排序";
	AL["Sort by Boss"] = "依首領排序";
	AL["Sort loottable by Boss"] = "將物品依照掉落首領排序";
	AL["Item Name"] = "物品名稱";
	AL["Item Slot"] = "物品部位";
	AL["Item Quality"] = "物品等級";

	-- Wishlist
	AL["Wishlist"] = "裝備願望清單";
	AL["Wishlists"] = "裝備願望清單";
	AL["Own"] = "已擁有";
	AL["Other"] = "其他";
	AL["Shared"] = "已分享";
	AL["Wishlist name:"] = "願望清單名稱:";
	AL["Delete"] = "刪除";
	AL["Share"] = "分享";
	AL["Send Wishlist (%s) to"] = "傳送 '%s' 願望清單給";
	AL["Send"] = "傳送";
	AL[" added to the WishList."] = "已加入願望清單";
	AL[" already in the WishList!"] = "已經存在於願望清單";
	AL[" deleted from the WishList."] = "已從願望清單移除";
	AL["Are you sure you want to delete Wishlist |cff1eff00%s|r?"] = "你確定要刪除 |cff1eff00%s|r 裝備願望清單嗎?";
	AL["default"] = "預設";
	AL[" |cff999999<default>"] = " |cff999999<預設>";
	AL["Use as default wishlist"] = "將其設為預設裝備願望清單";
	AL["Add Wishlist"] = "新增願望清單";
	AL["Always use default Wishlist"] = "永遠使用預設的願望清單";
	AL["Save wishlists at character DB"] = "將裝備願望清單儲存至角色資料庫";
	AL["Saves the wishlists only for |cff1eff00%s-%s|r.\n Other characters cant view the wishlists, but the memory usage is reduced."] = "只針對 |cff1eff00%s-%s|r 角色儲存裝備願望清單\n其他角色可以檢視清單而不儲存, 以減少記憶體使用量";
	AL["Table Sort"] = "表格排序";
	AL["Table Sort:"] = "表格排序：";
	AL["Item Sort:"] = "物品排序：";
	AL["Show own wishlists"] = "顯示自己願望清單";
	AL["Show all wishlists"] = "顯示全部願望清單";

	-- Filter
	AL["Filter"] = "篩選";
	AL["Select All Loot"] = "選擇所有掉落物品";
	AL["Apply Filter:"] = "套用篩選條件";
	AL["Melee weapons"] = "近戰武器";
	AL["Ranged weapons"] = "遠程武器";
	AL["Other"] = "其他";
	AL["Itemslot"] = "物品部位";
	AL["Shift + Click on the Filter button opens the config page."] = "在篩選按鍵上按 Shift 及右鍵以開啟設定頁面";

	-- Panel
	AL["Hide Panel"] = "隱藏面板";
	AL["Toggle AL Panel"] = "AtlasLoot 面板";
	AL["Buttons"] = "按鍵";

	-- Buttons
	AL["Collections"] = "套裝/特殊物品";
	AL["Crafting"] = "交易技能物品";
	AL["Factions"] = "陣營";
	AL["Load Modules"] = "載入模組";
	AL["PvP Rewards"] = "PvP 榮譽獎勵";
	AL["World Events"] = "世界事件";

	-- QuickLooks
	AL["QuickLook"] = "快速瀏覽";
	AL["QuickLooks"] = "快速瀏覽";
	AL["Number of QuickLooks:"] = "快速瀏覽數目：";
	AL["Add to QuickLooks:"] = "新增至快速瀏覽";
	AL["Reset Quicklooks"] = "重設快速瀏覽";
	AL["Assign this loot table\n to QuickLook"] = "分配此物品表\n 至快速瀏覽";
	AL["Show unused QuickLooks in the Panel"] = "在面板顯示未使用的快速瀏覽";
	AL["Shows unused QuickLooks as grey buttons in the AtlasLoot Panel"] = "在 AtlasLoot 面板以灰色按鈕顯示未使用的快速瀏覽";
	-- Single options
	AL["unused"] = "未使用";
	AL["QuickLook name:"] = "快速瀏覽名稱：";
	AL["Use Boss name"] = "使用首領名稱";
	AL["Use Instance name"] = "使用副本名稱";
	AL["Delete"] = "刪除";
	AL["Lock"] = "鎖定";
	AL["Enable"] = "啟用";

	-- Query Server / Query all
	AL["Query Server"] = "向伺服器查詢";
	AL["Queries the server for all items \non this page. The items will be \nrefreshed when you next mouse \nover them."] = "向伺服器查詢此頁所有物品。完成後滑鼠移至物品圖示上即可更新。";

	-- Atlas
	AL["Click boss name to view loot."] = "點選首領以檢視物品表";

	-- LootTable
	-- title
	AL["Heroic"] = "英雄";
	AL["25 Man"] = "25 人";
	AL["25 Man Heroic"] = "25 人英雄";
	-- buttons
	AL["Show 10 Man Loot"] = "10 人團隊物品表";
	AL["Show 25 Man Loot"] = "25 人團隊物品表";
	AL["Show Slot"] = "顯示部位";
	AL["Show Price"] = "顯示價格";
	AL["Skill"] = "技能";
	AL["Location"] = "位置";

	-- #######################################
	-- UI things END
	-- #######################################

	-- Text strings for UI objects
	AL["AtlasLoot"] = "AtlasLoot";
	AL["Select Loot Table"] = "選擇物品表格";
	AL["Select Sub-Table"] = "選擇子表格";
	AL["Various Locations"] = "多個地方";
	AL["This is a loot browser only.  To view maps as well, install either Atlas or Alphamap."] = "這只是一個物品檢視視窗。如要檢視地圖，請安裝 Atlas 或是 Alphamap。";
	AL["Back"] = "返回";
	AL["Level 60"] = "60 級";
	AL["Level 70"] = "70 級";
	AL["Level 80"] = "80 級";
	AL["Level 85"] = "85 級";
	AL["Level 90"] = "90 級";
	AL["|cffff0000(unsafe)"] = "|cffff0000(不安全)";
	AL["Misc"] = "雜項";
	AL["Rewards"] = "獎勵";
	AL["Choose Table ..."] = "選擇表格...";
	AL["Unknown"] = "未知";
	AL["Reset Wishlist"] = "重設願望清單";
	AL["Select a Loot Table..."] = "選擇一個物品表";
	AL["OR"] = "或";
	AL["FuBar Options"] = "FuBar 選項";
	AL["Attach to Minimap"] = "依附於小地圖上";
	AL["Hide FuBar Plugin"] = "隱藏 FuBar 插件";
	AL["Show FuBar Plugin"] = "顯示 FuBar 插件";
	AL["Position:"] = "位置";
	AL["Left"] = "左";
	AL["Center"] = "中";
	AL["Right"] = "右";
	AL["Hide Text"] = "隱藏文字";
	AL["Hide Icon"] = "隱藏圖示";
	AL["Minimap Button Options"] = "小地圖按鍵選項";

	-- Text for Options Panel
	AL["Atlasloot Options"] = "Atlasloot 選項";
	AL["Default Tooltips"] = "預設提示";
	AL["Lootlink Tooltips"] = "Lootlink 提示";
	AL["|cff9d9d9dLootlink Tooltips|r"] = "|cff9d9d9dLootlink 提示|r";
	AL["ItemSync Tooltips"] = "ItemSync 提示";
	AL["|cff9d9d9dItemSync Tooltips|r"] = "|cff9d9d9dItemSync 提示|r";
	AL["Use EquipCompare"] = "使用 EquipCompare";
	AL["|cff9d9d9dUse EquipCompare|r"] = "|cff9d9d9d使用 EquipCompare|r";
	AL["Show itemIDs at all times"] = "顯示物品 ID";
	AL["Hide AtlasLoot Panel"] = "隱藏 AtlasLoot 面板";
	AL["Show Basic Minimap Button"] = "顯示基本小地圖按鍵";
	AL["|cff9d9d9dShow Basic Minimap Button|r"] = "|cff9d9d9d顯示基本小地圖按鍵|r";
	AL["Set Minimap Button Position"] = "設定小地圖按鍵位置";
	AL["Notify on LoD Module Load"] = "載入模組通知";
	AL["Loot Browser Scale: "] = "物品表大小：";
	AL["Button Position: "] = "按鍵位置：";
	AL["Button Radius: "] = "按鍵軸距：";
	AL["Done"] = "完成";
	AL["FuBar Toggle"] = "切換 FuBar";
	AL["Search Result: %s"] = "搜尋結果：%s";
	AL["Search on"] = "在以下模組搜尋";
	AL["All modules"] = "所有模組";
	AL["If checked, AtlasLoot will load and search across all the modules."] = "勾選以載入所有模組並在各模組間搜尋。";
	AL["Search options"] = "搜尋選項";
	AL["Partial matching"] = "部份符合";
	AL["If checked, AtlasLoot search item names for a partial match."] = "勾選以啟用部份符合。";
	AL["You don't have any module selected to search on!"] = "沒有任何模組被選取以進行搜尋！";
	AL["Panel"] = "面板";

	-- Slash commands
	AL["reset"] = "reset";
	AL["options"] = "options";
	AL["Reset complete!"] = "重設完成！";

	-- AtlasLoot Panel - Search
	AL["Clear"] = "清除";
	AL["Last Result"] = "上次的結果";
	AL["Search"] = "搜尋";

	-- Crafting Menu
	AL["Crafting Daily Quests"] = "交易技能每日任務";
	AL["Cooking Daily"] = "烹飪每日任務";
	AL["Fishing Daily"] = "釣魚每日任務";
	AL["Jewelcrafting Daily"] = "珠寶設計每日任務";
	AL["Crafted Sets"] = "交易技能套裝";
	AL["Crafted Epic Weapons"] = "交易技能史詩武器";
	AL["Dragon's Eye"] = "龍瞳石";
	AL["Chimera's Eye"] = "奇美拉之瞳";
	AL["Serpent's Eye"] = "蛟龍之瞳";

	-- Sets/Collections Menu
	AL["Sets"] = "套裝";
	AL["Set"] = "套裝";
	AL["Justice Points"] = "英雄點數";
	AL["Valor Points"] = "勇氣點數";
	AL["BoE World Epics"] = "裝綁世界掉落紫裝";
	AL["Legendary Items"] = "傳說物品";
	AL["Misc Sets"] = "其他套裝";
	AL["Tier Sets"] = "T 套装";
	AL["Tier 1/2 Set"] = "T1/T2 套裝";
	AL["Tier 1/2/3 Set"] = "T1/T2/T3 套裝";
	AL["Tier 3 Set"] = "T3 套裝";
	AL["Tier 4/5/6 Set"] = "T4/T5/T6 套裝";
	AL["Tier 7/8 Set"] = "T7/T8 套裝";
	AL["Tier 9 Set"] = "T9 套裝";
	AL["Tier 10 Set"] = "T10 套裝";
	AL["Tier 11/12 Set"] = "T11/T12 套裝";
	AL["Tier 13 Set"] = "T13 套裝";
	AL["Tier 14 Set"] = "T14 套裝";
	AL["Tier 15 Set"] = "T15 套裝";
	AL["Tier 16 Set"] = "T16 套裝";
	AL["TCG Items"] = "卡片遊戲物品";
	AL["Rare Mobs"] = "稀有怪物";
	AL["Grand Marshal"] = "總元帥";
	AL["Gladiator"] = "鬥士";
	AL["Vengeful"] = "復仇";
	AL["Merciless"] = "殘忍";
	AL["Brutal"] = "野蠻";
	AL["Wrathful"] = "憤怒";
	AL["Cataclysmic"] = "絕命";
	AL["ilvl %d"] = "等級 %d";

	-- PvP Menu
	AL["Arathi Basin Sets"] = "阿拉希盆地套裝";
	AL["PvP Accessories"] = "PvP 配件";
	AL["PvP Armor Sets"] = "PvP 套裝";
	AL["PvP Weapons"] = "PvP 武器";
	AL["PvP Non-Set Epics"] = "PvP 非套裝史詩物品";
	AL["PvP Reputation Sets"] = "PvP 聲望套裝";
	AL["PvP Misc"] = "PvP 其它";
	AL["PVP Gems/Enchants/Jewelcrafting Designs"] = "PvP 珠寶/附魔設計圖";
	AL["PvP Trinkets"] = "PvP 飾品";

	-- World Events
	AL["Abyssal Council"] = "深淵議會";
	AL["Argent Tournament"] = "銀白聯賽";
	AL["Bash'ir Landing Skyguard Raid"] = "貝許爾平臺空防";
	AL["Brewfest"] = "啤酒節";
	AL["Children's Week"] = "兒童週";
	AL["Day of the Dead"] = "亡者節";
	AL["Ethereum Prison"] = "伊斯利恩監獄";
	AL["Feast of Winter Veil"] = "冬幕節";
	AL["Gurubashi Arena Booty Run"] = "古拉巴什競技場藏寶競技";
	AL["Hallow's End"] = "復活節";
	AL["Harvest Festival"] = "收穫節";
	AL["Love is in the Air"] = "愛就在你我身邊";
	AL["Lunar Festival"] = "農曆新年慶典";
	AL["Midsummer Fire Festival"] = "仲夏火焰節慶";
	AL["Noblegarden"] = "彩蛋節";
	AL["Pilgrim's Bounty"] = "旅人豐年祭";
	AL["Skettis"] = "司凱堤斯";
	AL["Stranglethorn Fishing Extravaganza"] = "荊棘谷釣魚大賽";
	AL["Kalu'ak Fishing Derby"] = "卡魯耶克釣魚大賽";
	AL["Fishing Contests"] = "釣魚大賽";

	-- World Events	Menu Names
	AL["Special Rewards"] = "特殊獎勵";					-- Brewfest, Feast of Winter Veil
	AL["Brew of the Month Club"] = "每月啤酒俱樂部";		-- Brewfest
	AL["Food and Drinks"] = "食物和飲料";				-- Brewfest
	AL["Gifts & Presents"] = "禮物";					-- Feast of Winter Veil
	AL["Playable Race Masks"] = "種族面具玩具"; 		-- Hallow's End
	AL["Non-Playable Race Masks"] = "非種族面具玩具"; 	-- Hallow's End
	AL["Schematics & Patterns"] = "設計圖/圖樣";			-- Lunar Festival
	AL["Toys"] = "玩具"; 						-- Darkmoon Faire

	-- Minimap Button
	AL["|cff1eff00Left-Click|r Browse Loot Tables"] = "|cff1eff00左鍵|r 瀏覽物品掉落表";
	AL["|cffff0000Right-Click|r View Options"] = "|cffff0000右鍵|r 檢視選項";
	AL["|cffff0000Shift-Click|r View Options"] = "|cffff0000Shift點擊|r 檢視選項";
	AL["|cffccccccLeft-Click + Drag|r Move Minimap Button"] = "|cffcccccc左鍵並拖曳|r以移動圖示位置";
	AL["|cffccccccRight-Click + Drag|r Move Minimap Button"] = "|cffcccccc右鍵並拖曳|r以移動圖示位置";

	-- Default Frame
	AL["Select Module"] = "選擇模組";
	AL["Select Instance"] = "選擇副本";

	-- Wishlist
	AL["Close"] = "關閉";
	AL["Own Wishlists"] = "自己的願望清單";
	AL["Other Wishlists"] = "其他的願望清單";
	AL["Shared Wishlists"] = "分享的願望清單";
	AL["Mark items in loot tables"] = "在物品表標記物品";
	AL["Mark items from own Wishlist"] = "從自己的願望清單標記物品";
	AL["Mark items from all Wishlists"] = "從所有的願望清單標記物品";
	AL["Enable Wishlist Sharing"] = "允許願望清單分享";
	AL["Auto reject in combat"] = "戰鬥中自動拒絕";
	AL["Edit Wishlist"] = "編輯願望清單";
	AL["Show More Icons"] = "顯示更多圖示";
	AL["Edit"] = "編輯";
	AL["Show all Wishlists"] = "顯示所有的願望清單";
	AL["Show own Wishlists"] = "顯示自己的願望清單";
	AL["Show shared Wishlists"] = "顯示分享的願望清單";
	AL["You must wait "] = "你必須等候 ";
	AL[" seconds before you can send a new Wishlist to "] = " 秒後才可以將願望清單傳送給";
	AL["Cancel"] = "取消";
	AL["Delete Wishlist %s?"] = "是否刪除 '%s' 願望清單?";
	AL["%s sends you a Wishlist. Accept?"] = "%s 傳送了一個願望清單給你，是否接受?";
	AL[" tried to send you a Wishlist. Rejected because you are in combat."] = "嘗試傳送一個願望清單給你，因你正在戰鬥中而系統自動拒絕了。";
	AL[" rejects your Wishlist."] = "拒絕了你的願望清單";
	AL["You can't send Wishlists to yourself"] = "你不能將願望清單傳送給自己。";
	AL["Please set a default Wishlist."] = "請設定一個預設的願望清單。";
	AL["Set as default Wishlist"] = "設為預設的願望清單";

	-- Misc Inventory related words
	AL["Scope"] = "瞄準鏡";
	AL["Darkmoon Faire Card"] = "暗月卡";
	AL["Banner"] = "軍旗";
	AL["Set"] = "套裝";
	AL["Token"] = "勳章";
	AL["Combat Pet"] = "戰鬥寵物";
	AL["Fireworks"] = "煙火";
	AL["Transformation Item"] = "變形物品";
	AL["Keys"] = "鑰匙";

	-- Extra inventory stuff
	AL["Cloak"] = "披風";

	-- Alchemy
	AL["Battle Elixirs"] = "作戰藥劑";
	AL["Cauldron"] = "大鍋";
	AL["Cauldrons"] = "大鍋";
	AL["Guardian Elixirs"] = "守護藥劑";
	AL["Oils"] = "附魔油";
	AL["Other Elixirs"] = "其他藥劑";
	AL["Potions"] = "藥水";
	AL["Transmutes"] = "轉化";
	AL["Flasks"] = "精鍊藥劑";

	-- Blacksmithing
	AL["Armor Enhancements"] = "護甲附魔";
	AL["Weapon Enhancements"] = "武器附魔";
	AL["Cataclysm Vendor Sold Plans"] = "浩劫與重生供應商販售設計圖";
	AL["Mists of Pandaria Vendor Sold Plans"] = "潘達利亞之謎供應商販售設計圖";
	AL["Training Projects"] = "訓練項目";

	-- Cooking
	AL["Banquets/Feasts"] = "盛宴/大餐";

	-- Enchanting
	AL["Enchant Boots"] = "附魔靴子";
	AL["Enchant Bracer"] = "附魔護腕";
	AL["Enchant Chest"] = "附魔胸甲";
	AL["Enchant Cloak"] = "附魔披風";
	AL["Enchant Gloves"] = "附魔手套";
	AL["Enchant Ring"] = "附魔戒指";
	AL["Enchant Shield & Off-Hand"] = "附魔盾牌/副手";
	AL["Enchant 2H Weapon"] = "附魔雙手武器";
	AL["Enchant Weapon"] = "附魔武器";
	AL["Cataclysm Vendor Sold Formulas"] = "浩劫與重生供應商販售公式";

	-- Engineering
	AL["Tinker"] = "工程師專屬";

	-- Fishing
	AL["Fish Weapons"] = "釣魚武器";
	AL["Fishing Gear"] = "釣魚裝備";
	AL["Fishing Lines"] = "魚線";

	-- Inscription
	AL["Major Glyph"] = "極效雕紋";
	AL["Minor Glyph"] = "初階雕紋";
	AL["Runescrolls"] = "符文卷軸";
	AL["Recall"] = "召回";
	AL["Scrolls"] = "卷軸";
	AL["Off-Hand Items"] = "副手物品";
	AL["Shoulder Enchants"] = "肩部附魔";
	AL["Reagents"] = "材料";

	-- Leatherworking
	AL["Leather Armor"] = "皮甲護甲";
	AL["Mail Armor"] = "鎖甲護甲";
	AL["Cloaks"] = "披風";
	AL["Item Enhancements"] = "物品附魔";
	AL["Drums, Bags and Misc."] = "戰鼓、背包與其他物品";

	-- Tailoring
	AL["Shirts"] = "襯衣";
	AL["Bags"] = "容器";
	AL["Cataclysm Vendor Sold Patterns"] = "浩劫與重生供應商販售的圖樣";
	AL["Mists of Pandaria Vendor Sold Patterns"] = "潘達利亞之謎供應商販售的圖樣";

	-- Labels for loot descriptions
	AL["Classes:"] = "職業：";
	AL["This Item Begins a Quest"] = "該物品將觸發一個任務";
	AL["Quest Item"] = "任務物品";
	AL["Old Quest Item"] = "舊任務物品";
	AL["Quest Reward"] = "任務獎勵";
	AL["Old Quest Reward"] = "舊任務獎勵";
	AL["Shared"] = "共享";
	AL["Right Half"] = "右半部份";
	AL["Left Half"] = "左半部份";
	AL["Currency"] = "貨幣";
	AL["Used to summon boss"] = "使用以召喚首領";
	AL["Tradable for sunmote + item above"] = "以太陽微粒兌換的裝備";
	AL["Card Game Item"] = "卡片遊戲物品";
	AL["Skill Required:"] = "需要技能等級：";
	AL["Rating:"] = "等級:";	--Shorthand for 'Required Rating' for the personal/team ratings
	AL["Random Heroic Reward"] = "隨機英雄副本獎勵";
	AL["Fishing Daily Reward"] = "每日釣魚獎勵";
	AL["Collector's Edition"] = "典藏版";
	AL["Daily Reward"] = "每日獎勵";
	AL["No Longer Available"] = "已不存在.";
	AL["Shared Boss Loot"] = "首領共享掉落";
	AL["Shared Zone Loot"] = "區域共享掉落";
	AL["Black Market Auction House"] = "黑市拍賣行";

	-- Minor Labels for loot table descriptions
	AL["Classic WoW"] = "原始的魔獸世界";
	AL["Burning Crusade"] = "燃燒的遠征";
	AL["Wrath of the Lich King"] = "巫妖王之怒";
	AL["Cataclysm"] = "浩劫與重生";
	AL["Mists of Pandaria"] = "潘達利亞之謎";
	AL["Entrance"] = "入口";
	AL["Dungeon Set 1"] = "副本套裝 1";
	AL["Dungeon Set 2"] = "副本套裝 2";
	AL["Dungeon Set 1/2"] = "副本套裝 1/2";
	AL["Replica"] = "複製品";
	AL["Dungeon Set 3"] = "副本套裝 3";
	AL["Dungeon Set 4"] = "副本套裝 4";
	AL["Tier %d"] = "等級%d" -- usage: string.format(AL["Tier %d"], 1)
	AL["Challenge Mode Armor Sets"] = "挑戰模式護甲套裝";
	AL["10 Man"] = "10 人";
	AL["10/25 Man"] = "10/25 人";
	AL["Epic Set"] = "PvP 史詩套裝";
	AL["Rare Set"] = "PvP 稀有套裝";
	AL["Season %d"] = "第%d季"; -- usage: string.format(AL["Season %d"], 6)
	AL["Fire"] = "赤紅";
	AL["Water"] = "碧藍";
	AL["Wind"] = "蒼白";
	AL["Earth"] = "土色";
	AL["Master Angler"] = "釣魚大師";
	AL["Fire Resistance Gear"] = "火抗裝備";
	AL["Arcane Resistance Gear"] = "秘法抗性裝備";
	AL["Nature Resistance Gear"] = "自然抗性裝備";
	AL["Frost Resistance Gear"] = "冰霜抗性裝備";
	AL["Shadow Resistance Gear"] = "暗影抗性裝備";

	-- Labels for loot table sections
	AL["Additional Heroic Loot"] = "更多的英雄物品";
	AL["Heroic Mode"] = "英雄模式";
	AL["Normal Mode"] = "普通模式";
	AL["Hard Mode"] = "困難模式";
	AL["Bonus Loot"] = "額外獎勵";
	AL["Arena Reward"] = "競技場獎勵";
	AL["Achievement Reward"] = "成就獎勵";
	AL["Phase 1"] = "第一階段";
	AL["Phase 2"] = "第二階段";
	AL["Phase 3"] = "第三階段";
	AL["First Prize"] = "頭獎";
	AL["Rare Fish Rewards"] = "稀有釣魚獎勵";
	AL["Rare Fish"] = "稀有魚類";
	AL["Weapons"] = "武器";
	AL["Accessories"] = "配件";
	AL["Rare"] = "稀有";
	AL["Specializations"] = "特殊";
	AL["Flexible"] = "彈性";
	AL["Raid Finder"] = "團隊搜尋器";
	AL["Thunderforged"] = "雷霆鎔鑄";
	AL["Pandaria World Bosses"] = "潘達利亞世界首領";
	AL["Elite"] = "菁英";
	AL["Vegetables"] = "蔬菜";

	-- Loot Table Names
	AL["Level %s"] = "等級%s"; -- usage: string.format(AL["Level %s"], "85-89")
	AL["Summon"] = "召喚";
	AL["Random"] = "隨機";

	-- Profession descriptions
	AL["Buff"] = "增益";
	AL["Agility"] = "敏捷";
	AL["Attributes"] = "屬性";
	AL["Intellect"] = "智力";
	AL["Strength"] = "力量";
	AL["Spirit"] = "精神";
	AL["Stamina"] = "耐力";
	AL["Spell Power"] = "法術能量";
	AL["Attack Power"] = "攻擊強度";
	AL["Spell/Attack Power"] = "法術能量攻擊強度";
	AL["Hit Rating"] = "命中等級";
	AL["Crit Rating"] = "致命一擊等級";
	AL["Haste Rating"] = "加速等級";
	AL["Dodge Rating"] = "閃躲等級";
	AL["Expertise Rating"] = "專精等級";
	AL["Mastery Rating"] = "精通等級";
	AL["Parry Rating"] = "招架等級";
	AL["Other Ratings"] = "其他等級";
	AL["Ratings"] = "等級";
	AL["Damage Absorption"] = "吸收傷害";
	AL["Health / Second"] = "每秒恢復生命";
	AL["Mana / Second"] = "每秒恢復法力";
	AL["Tracking"] = "追蹤";
	AL["Emotions"] = "情緒";
	AL["Alcohol"] = "酒類";
	AL["Health"] = "生命";
	AL["Mana"] = "法力";
	AL["Health and Mana"] = "生命和法力";
	AL["Other Buffs"] = "其他增益";
	AL["Other"] = "其他";
	AL["Standard Buffs"] = "標準增益";
	AL["Food without Buffs"] = "沒有增益的食物";
	AL["Special"] = "特殊";
	AL["Feasts"] = "宴類";
	AL["Speed"] = "速度";
	AL["Oil"] = "附魔油";
	AL["Culture"] = "文化";
	AL["Description"] = "描述";
	AL["Draenei"] = "德萊尼";
	AL["Dwarf"] = "矮人";
	AL["Fossil"] = "化石";
	AL["Mantid"] = "螳螂妖";
	AL["Mogu"] = "魔古";
	AL["Nerubian"] = "奈幽";
	AL["Night Elf"] = "夜精靈";
	AL["Orc"] = "獸人";
	AL["Pandaren"] = "熊貓人";
	AL["Tol'vir"] = "托維爾";
	AL["Troll"] = "食人妖";
	AL["Vrykul"] = "維酷";
	AL["Stats"] = "屬性";
	AL["Resilience"] = "韌性";
	AL["Professions"] = "專業技能";
	AL["Damage"] = "傷害";
	AL["Proc"] = "特效";

	-- Extra Text in Boss lists
	AL["AQ20 Class Sets"] = "安其拉廢墟職業套裝";
	AL["AQ Enchants"] = "安其拉公式";
	AL["AQ40 Class Sets"] = "安其拉神廟職業套裝";
	AL["AQ Opening Quest Chain"] = "安其拉開門系列任務";
	AL["Tribute Run"] = "貢品";
	AL["Dire Maul Books"] = "厄運書籍";
	AL["Random Boss Loot"] = "首領隨機掉落";
	AL["Formula/Patterns/Plans"] = "公式/圖樣/設計圖";
	AL["BRD Blacksmithing Plans"] = "黑石深淵黑帖鍛造圖樣";
	AL["Patterns/Plans"] = "圖樣/設計圖";

	-- General titles
	AL["Achievement"] = "成就";
	AL["Dungeon"] = "副本";
	AL["Outdoor"] = "野外";
	AL["Promotional"] = "促銷";
	AL["PvP"] = "PvP";
	AL["Raid"] = "團隊";

	-- Companions
	AL["Achievement Companions"] = "成就夥伴";
	AL["Faction Companions"] = "陣營夥伴";
	AL["Card Game Companions"] = "卡牌遊戲獎勵夥伴";
	AL["Companion Accessories"] = "夥伴飾品";
	AL["Blizzard Store"] = "暴雪商城";
	AL["Crafted Companions"] = "製作的夥伴";
	AL["Dungeon/Raid"] = "副本/團隊";
	AL["Faction"] = "陣營";
	AL["Merchant Sold Companions"] = "商人販售的夥伴";
	AL["Pets"] = "寵物";
	AL["Promotional Companions"] = "促銷活動夥伴";
	AL["Quest Reward Companions"] = "任務獎勵夥伴";
	AL["Rare Companions"] = "稀有夥伴";
	AL["Unobtainable Companions"] = "無法取得的夥伴";
	AL["New Companions"] = "新的夥伴";
	--- Drop Locations
	AL["Bogflare Needler"] = "泥沼閃光釘刺者";
	AL["Deviate Ravager/Deviate Guardian"] = "變異劫毀者/變異守護者";
	AL["Gundrak Raptor"] = "剛德拉克迅猛龍";
	AL["Noxious Whelp"] = "劇毒幼龍";

	-- Mounts
	AL["Alliance Mounts"] = "聯盟坐騎";
	AL["Horde Mounts"] = "部落坐騎";
	AL["Flying Mounts"] = "飛行坐騎";
	AL["Card Game Mounts"] = "卡牌遊戲獎勵坐騎";
	AL["Crafted Mounts"] = "製作的坐騎";
	AL["Event Mounts"] = "事件獎勵坐騎";
	AL["Neutral Faction Mounts"] = "中立陣營坐騎";
	AL["PvP Mounts"] = "PvP 坐騎";
	AL["Alliance PvP Mounts"] = "聯盟 PvP 坐騎";
	AL["Horde PvP Mounts"] = "部落 PvP 坐騎";
	AL["Halaa PvP Mounts"] = "哈剌 PvP 坐騎";
	AL["Promotional Mounts"] = "促銷活動坐騎";
	AL["Rare Mounts"] = "稀有坐騎";
	AL["Unobtainable Mounts"] = "無法取得的坐騎";
	AL["New Mounts"] = "新的坐騎";
	AL["Mount Collecting"] = "坐騎收集";

	-- Tabards
	AL["Achievement & Quest Reward Tabards"] = "成就/任務獎勵外袍";
	AL["Alliance Tabards"] = "聯盟外袍";
	AL["Card Game Tabards"] = "卡牌遊戲獎勵外袍";
	AL["Horde Tabards"] = "部落外袍";
	AL["Neutral Faction Tabards"] = "中立陣營外袍";
	AL["PvP Tabards"] = "PvP 外袍";
	AL["Unobtainable Tabards"] = "無法取得的外袍";

	-- Transformation Items
	AL["Transformation Items"] = "變形物品";
	AL["Additional Effects Transformation Items"] = "具額外效果的變形物品";
	AL["Consumable Transformation Items"] = "消耗性變形物品";
	AL["Non-consumed Transformation Items"] = "非消耗性變形物品";

	-- Heirloom and BoA Items
	AL["Heirloom"] = "家傳物品";
	AL["PvP Heirlooms"] = "PvP 家傳物品";
	AL["Bind on Account"] = "帳號綁定";
	AL["Bind on Account Armor"] = "帳號綁定護甲";
	AL["Bind on Account Weapons"] = "帳號綁定武器";

	-- Darkmoon Faire
	AL["Darkmoon Faire Rewards"] = "暗月馬戲團獎勵";
	AL["Low Level Decks"] = "低階套牌";
	AL["Level 60 & 70 Trinkets"] = "等級 60/70 飾品";
	AL["Trinkets"] = "飾品";

	-- Card Game Decks and descriptions
	AL["Loot Card Items"] = "可換取的物品";
	AL["UDE Items"] = "兌換商品";

	-- First set
	AL["Heroes of Azeroth"] = "艾澤拉斯的英雄";
	AL["Landro Longshot"] = "藍卓·長射";
	AL["Thunderhead Hippogryph"] = "雷首角鷹獸";
	AL["Saltwater Snapjaw"] = "海水鉗嘴龜";

	-- Second set
	AL["Through The Dark Portal"] = "通過黑暗之門";
	AL["King Mukla"] = "穆克拉";
	AL["Rest and Relaxation"] = "休息與放鬆";
	AL["Fortune Telling"] = "算命";

	-- Third set
	AL["Fires of Outland"] = "外域之火";
	AL["Spectral Tiger"] = "鬼靈之虎";
	AL["Gone Fishin'"] = "去釣魚";
	AL["Goblin Gumbo"] = "哥布林燴肉";

	-- Fourth set
	AL["March of the Legion"] = "燃燒軍團的進軍";
	AL["Kiting"] = "風箏";
	AL["Robotic Homing Chicken"] = "寵物機械小雞";
	AL["Paper Airplane"] = "紙飛機";

	-- Fifth set
	AL["Servants of the Betrayer"] = "背叛者之奴";
	AL["X-51 Nether-Rocket"] = "X51型虛空火箭";
	AL["Personal Weather Machine"] = "個人氣象儀";
	AL["Papa Hummel's Old-fashioned Pet Biscuit"] = "休莫爾老爹的老派寵物軟餅";

	-- Sixth set
	AL["Hunt for Illidan"] = "獵殺伊利丹";
	AL["The Footsteps of Illidan"] = "伊利丹的腳步";
	--AL["Disco Inferno!"] = "Disco Inferno!";
	AL["Ethereal Plunderer"] = "伊斯利掠奪者";

	-- Seventh set
	AL["Drums of War"] = "戰爭之鼓";
	--AL["The Red Bearon"] = "";
	--AL["Owned!"] = "";
	--AL["Slashdance"] = "";

	-- Eighth set
	AL["Blood of Gladiators"] = "鬥士之血";
	AL["Sandbox Tiger"] = "沙池虎";
	--AL["Center of Attention"] = "";
	AL["Foam Sword Rack"] = "泡沫之劍架";

	-- Ninth set
	AL["Fields of Honor"] = "榮譽原野";
	AL["Path of Cenarius"] = "塞納留斯之徑";
	AL["Pinata"] = "巨魔糖果玩偶";
	AL["El Pollo Grande"] = "艾伯格蘭德";

	-- Tenth set
	AL["Scourgewar"] = "天譴戰爭";
	AL["Tiny"] = "迷你坐騎";
	AL["Tuskarr Kite"] = "巨牙海民風箏";
	AL["Spectral Kitten"] = "鬼靈貓";

	-- Eleventh set
	AL["Wrathgate"] = "憤怒之門";
	AL["Statue Generator"] = "速成雕像";
	AL["Landro's Gift"] = "藍卓的禮物盒";
	AL["Blazing Hippogryph"] = "熾熱的角鷹獸";

	-- Twelvth set
	AL["Icecrown"] = "寒冰皇冠";
	AL["Wooly White Rhino"] = "蓬毛犀牛坐騎";
	AL["Ethereal Portal"] = "傳送門之石";
	AL["Paint Bomb"] = "漆彈";

	-- Thirtheenth set
	AL["Worldbreaker"] = "碎界者";
	AL["Mottled Drake"] = "雜斑龍";
	AL["Grim Campfire"] = "陰森的篝火";
	AL["Landro's Lil' XT"] = "藍卓的XT小小拆解者";

	-- Fourteenth set
	AL["War of the Elements"] = "元素之戰";

	-- Fifteenth set
	AL["Twilight of the Dragons"] = "龍之暮光";

	-- Seventeenth set
	AL["Crown of Heaven"] = "天堂之冠";

	-- Eighteenth set
	AL["Tomb of the Forgotten"] = "遺忘之墓";

	-- Nineteenth set
	AL["War of the Ancients"] = "時間行者：先祖之戰";

	-- Twentieth set
	AL["Betrayal of the Guardian"] = "守護者的背叛";

	-- Battleground Brackets
	AL["Old PvP Rewards"] = "舊 PvP 獎勵";
	AL["BG/Open PvP Rewards"] = "燃燒遠征開放 PvP 獎勵";
	AL["Misc. Rewards"] = "雜項獎勵";
	AL["Level %s Rewards"] = "等級%s獎勵"; -- usage: string.format(AL["Level %s Rewards"], "60")

	-- Brood of Nozdormu Paths
	AL["Path of the Conqueror"] = "征服者之路";
	AL["Path of the Invoker"] = "祈求者之路";
	AL["Path of the Protector"] = "保護者之路";

	-- Violet Eye Paths
	AL["Path of the Violet Protector"] = "紫羅蘭保衛者之路";
	AL["Path of the Violet Mage"] = "紫蘿蘭法師之路";
	AL["Path of the Violet Assassin"] = "紫羅蘭刺客之路";
	AL["Path of the Violet Restorer"] = "紫羅蘭治療師之路";

	-- Ashen Verdict Paths
	AL["Path of Courage"] = "勇氣之路";
	AL["Path of Destruction"] = "毀滅之路";
	AL["Path of Vengeance"] = "復仇之路";
	AL["Path of Wisdom"] = "智慧之路";

	-- AQ Opening Event
	AL["Red Scepter Shard"] = "紅色權杖碎片";
	AL["Blue Scepter Shard"] = "藍色權杖碎片";
	AL["Green Scepter Shard"] = "綠色權杖碎片";
	AL["Scepter of the Shifting Sands"] = "流沙權杖";

	-- World PvP
	AL["Hellfire Fortifications"] = "地獄火防禦堡壘";
	AL["Twin Spire Ruins"] = "雙塔廢墟";
	AL["Spirit Towers"] = "精神哨塔";
	AL["Halaa"] = "哈剌";
	AL["Venture Bay"] = "風險海灣";

	-- Karazhan Opera Event Headings
	AL["Wizard of Oz"] = "綠野仙蹤";
	AL["Red Riding Hood"] = "小紅帽";

	-- Karazhan Animal Boss Types
	AL["Spider"] = "蜘蛛";
	AL["Darkhound"] = "黑暗犬";
	AL["Bat"] = "蝙蝠";

	-- AQ20 Tokens
	AL["Qiraji Ornate Hilt"] = "其拉華麗刀柄";
	AL["Qiraji Martial Drape"] = "其拉軍用披風";
	AL["Qiraji Magisterial Ring"] = "其拉將領戒指";
	AL["Qiraji Ceremonial Ring"] = "其拉典禮戒指";
	AL["Qiraji Regal Drape"] = "其拉帝王披風";
	AL["Qiraji Spiked Hilt"] = "其拉尖刺刀柄";

	-- AQ40 Tokens
	AL["Qiraji Bindings of Dominance"] = "其拉統御腕輪";
	AL["Qiraji Bindings of Command"] = "其拉命令腕輪";
	AL["Vek'nilash's Circlet"] = "維克尼拉斯的頭飾";
	AL["Vek'lor's Diadem"] = "維克洛爾的王冠";
	AL["Ouro's Intact Hide"] = "奧羅的外皮";
	AL["Skin of the Great Sandworm"] = "巨型沙蟲的皮";
	AL["Husk of the Old God"] = "上古之神的外殼";
	AL["Carapace of the Old God"] = "上古之神的甲殼";

	-- Faction related strings
	AL["Neutral"] = "中立";
	AL["Friendly"] = "友好";
	AL["Honored"] = "尊敬";
	AL["Revered"] = "崇敬";
	AL["Exalted"] = "崇拜";
	AL["Best Friend"] = "最好的朋友";
	AL["Rank %d"] = "第%d階";
	AL["Winterfin Retreat"] = "冬鰭避居地";

	-- Recipe origin strings
	AL["Crafted"] = "製作";
	AL["Discovery"] = "探索";
	AL["Drop"] = "掉落";
	AL["Fished From"] = "釣魚從";
	AL["Trainer"] = "訓練師";
	AL["Vendor"] = "供應商販售";
	AL["World Drop"] = "世界掉落";

	-- Specs
	AL["Tanking"] = "防禦型";
	AL["DPS"] = "傷害型";

	-- NPCs missing from BabbleBoss
	AL["Trash Mobs"] = "小怪";
	--- Classic WoW
	AL["Dungeon Set 2 Summonable"] = "T0.5 召喚王";
	AL["Theldren"] = "瑟爾倫";
	AL["Sothos and Jarien"] = "索索斯及賈林";
	AL["Druid of the Fang"] = "尖牙德魯伊";
	AL["Defias Strip Miner"] = "迪菲亞赤膊礦工";
	AL["Defias Overseer/Taskmaster"] = "迪菲亞監工/工頭";
	AL["Scarlet Trainee"] = "血色預備兵";
	AL["Shadowforge Flame Keeper"] = "暗爐持火者";
	AL["Crimson Sorcerer"] = "紅衣法術師";
	AL["Thuzadin Shadowcaster"] = "圖薩丁暗影施法者";
	AL["Crimson Inquisitor"] = "紅衣審查者";
	AL["Crimson Battle Mage"] = "紅衣戰鬥法師";
	AL["Ghoul Ravener"] = "食屍搶奪者";
	AL["Spectral Citizen"] = "鬼魂市民";
	AL["Scholomance Adept"] = "通靈學院專家";
	AL["Scholomance Dark Summoner"] = "通靈學院黑暗召喚師";
	AL["Blackhand Elite"] = "黑手精英";
	AL["Firebrand Pyromancer"] = "火印炎術師";
	AL["Firebrand Invoker"] = "火印塑能師";
	AL["Firebrand Grunt"] = "火印步兵";
	AL["Firebrand Legionnaire"] = "火印軍團戰士";
	AL["Spirestone Warlord"] = "尖石軍閥";
	AL["Spirestone Mystic"] = "尖石秘法師";
	AL["Anvilrage Captain"] = "鐵怒上尉";
	AL["Anvilrage Marshal"] = "鐵怒隊長";
	AL["Doomforge Arcanasmith"] = "末日之爐魔匠";
	AL["Weapon Technician"] = "武器技師";
	AL["Doomforge Craftsman"] = "末日之爐工匠";
	AL["Murk Worm"] = "黑暗蟲";
	AL["Scarshield Quartermaster"] = "裂盾軍需官";
	AL["Knot Thimblejack"] = "諾特·希姆加克";
	AL["Shen'dralar Provisioner"] = "辛德拉聖職者";
	AL["The Nameles Prophet"] = "無名預言者";
	AL["Rajaxx's Captains"] = "拉賈克斯的上尉們";
	AL["Razorfen Spearhide"] = "剃刀沼澤刺鬃守衛";
	AL["Felsteed"] = "惡魔戰馬";
	AL["Master Elemental Shaper Krixix"] = "大元素師克里希克";
	AL["Rotted One"] = "腐爛者";
	AL["Tex Vortacoil"]  = "苔克斯·電捲";
	AL["Sprinkle Noggenfogger"]  = "斯普琳科·諾格弗格";
	--- Burning Crusade
	AL["Avatar of the Martyred"] = "馬丁瑞德的化身";
	AL["Nexus Stalker"] = "奈薩斯捕獵者";
	AL["Auchenai Monk"] = "奧奇奈僧侶";
	AL["Cabal Fanatic"] = "卡巴狂熱者";
	AL["Unchained Doombringer"] = "無束縛的摧毀者";
	AL["Aether-tech Assistant"] = "蒼穹技師助手";
	AL["Aether-tech Adept"] = "蒼穹技師專家";
	AL["Aether-tech Master"] = "蒼穹技師大師";
	AL["Thomas Yance"] = "湯瑪斯·陽斯";
	AL["Raging Skeleton"] = "狂怒的骸骨";
	AL["Ethereal Priest"] = "伊斯利牧師";
	AL["Sethekk Ravenguard"] = "塞司克烏鴉護衛";
	AL["Time-Lost Shadowmage"] = "時光流逝暗影法師";
	AL["Coilfang Sorceress"] = "盤牙法師";
	AL["Coilfang Oracle"] = "盤牙神諭者";
	AL["Shattered Hand Centurion"] = "破碎之手百夫長";
	AL["Eredar Deathbringer"] = "埃雷達爾死亡召喚者";
	AL["Arcatraz Sentinel"] = "亞克崔茲哨兵";
	AL["Gargantuan Abyssal"] = "巨型冥淵火";
	AL["Sunseeker Botanist"] = "尋日植物學家";
	AL["Sunseeker Astromage"] = "尋日星法師";
	AL["Durnholde Rifleman"] = "敦霍爾德槍手";
	AL["Rift Keeper/Rift Lord"] = "裂縫看守者 / 裂縫領主";
	AL["Don Carlos"] = "卡洛斯大爺";
	AL["Aged Dalaran Wizard"] = "年邁的達拉然巫師";
	AL["Shattered Hand Executioner"] = "破碎之手劊子手";
	AL["Servant's Quarter Animal Bosses"] = "伺從區";
	AL["Wyrmcult Provisioner"]  = "巨龍教團補給官";
	--- Wrath of the Lich King
	AL["Olut Alegut"]  = "歐拉特·酒膽";
	AL["Rork Sharpchin"]  = "洛克·銳頦";
	--- Cataclysm
	AL["Zen'Vorka"] = "贊沃卡";
	AL["Ayla Shadowstorm"] = "埃拉·暗影風暴";
	AL["Damek Bloombeard"] = "達密克·濃鬚";
	AL["Varlan Highbough"] = "瓦蘭·高枝";
	AL["Firestone Vendor"] = "火石供應商";
	AL["Baradin Fox"]  = "巴拉丁狐狸";
	--- Mists of Pandaria
	AL["Uncle Bigpocket"] = "大包公";
	AL["Auntie Stormstout"] = "風暴烈酒姑媽";
	AL["Luo Luo"] = "洛洛";
	AL["Meng Meng"] = "萌萌";
	AL["Moonfang"] = "月牙";
	AL["Ongrom Black Tooth"] = "『黑齒』歐格姆";
	AL["Proveditor Grantley"] = "供應商格蘭特雷";
	AL["Scary Sprite"] = "駭人的妖精";
	--- World Events
	AL["Crimson Templar"] = "赤紅聖殿騎士";
	AL["Azure Templar"] = "碧藍聖殿騎士";
	AL["Hoary Templar"] = "蒼白聖殿騎士";
	AL["Earthen Templar"] = "土色聖殿騎士";
	AL["The Duke of Cynders"] = "辛德爾公爵";
	AL["The Duke of Fathoms"] = "深淵公爵";
	AL["The Duke of Zephyrs"] = "微風公爵";
	AL["The Duke of Shards"] = "碎石公爵";
	AL["Templars"] = "聖殿騎士";
	AL["Dukes"] = "公爵";
	AL["High Council"] = "高階議會";
	AL["Smokywood Pastures Vendor"] = "燻木牧場商人";
	AL["Bash'ir Landing Stasis Chambers"] = "貝許爾的靜止密室";
	AL["Battle Pet Trainer"] = "寵物戰鬥訓練師";

	-- Zone related strings
	AL["Azeroth"] = "艾澤拉斯";
	AL["Blackrock Mountain"] = "黑石山";
	AL["Caverns of Time"] = "時光之穴";
	AL["Crusader's Square"] = "十字軍廣場";
	AL["Darkmoon Island"] = "暗月島";
	AL["East"] = "東";
	AL["Halfhill Farm"] = "半山農場";
	AL["North"] = "北";
	AL["The Gauntlet"] = "街巷";
	AL["Trial of the Grand Crusader"] = "大十字軍試煉";
	AL["West"] = "西";

	-- Shortcuts for Bossname files
	AL["Avatar"] = "馬丁瑞德的化身";

	-- Chests, etc
	AL["Father Flame"] = "烈焰之父";
	AL["The Grim Guzzler"] = "黑鐵酒吧";
	AL["The Secret Safe"] = "隱密的保險箱";
	AL["The Vault"] = "寶窟";
	AL["Ogre Tannin Basket"] = "巨魔鞣酸籃";
	AL["Unfinished Painting"] = "未完成的畫作";
	AL["Felvine Shard"] = "魔藤碎片";
	AL["Gift of Adoration"] = "愛慕之禮";
	AL["Treat Bag"] = "糖果包";
	AL["The Cache of Madness"] = "瘋狂之緣";
	AL["Timed Reward Chest"] = "限時任務獎勵箱子";
	AL["Timed Reward Chest 1"] = "限時任務獎勵箱子 1";
	AL["Timed Reward Chest 2"] = "限時任務獎勵箱子 2";
	AL["Timed Reward Chest 3"] = "限時任務獎勵箱子 3";
	AL["The Talon King's Coffer"] = "鷹王的保險箱";
	AL["Krom Stoutarm's Chest"] = "克羅姆·粗臂的箱子";
	AL["Garrett Family Chest"] = "加勒特的寶箱";
	AL["Reinforced Fel Iron Chest"] = "強化惡魔鐵箱";
	AL["DM North Tribute Chest"] = "北厄貢品箱";
	AL["The Saga of Terokk"] = "泰洛克的傳說";
	AL["First Fragment Guardian"] = "第一碎片守衛者";
	AL["Second Fragment Guardian"] = "第二碎片守衛者";
	AL["Third Fragment Guardian"] = "第三碎片守衛者";
	AL["Overcharged Manacell"] = "滿溢的法力容器";
	AL["Shellfish Trap"] = "貝殼陷阱";
	AL["Fishing Pools"] = "魚群";
	AL["Timeless Chest"] = "永恆寶箱";

	-- Blizzard Promotions
	AL["Annual Pass"] = "年卡";
	AL["Scroll of Resurrection"] = "重返榮耀";
	AL["Recruit-A-Friend"] = "號召好友";

	-- Error Messages and warnings
	AL["AtlasLoot Error!"] = "AtlasLoot 錯誤!";
	AL["WishList Full!"] = "願望清單已滿";
	AL["No match found for"] = "找不到符合於";
	AL[" is safe."] = "的連結現在安全了。";
	AL["Server queried for "] = "從伺服器查詢物品";
	AL[".  Right click on any other item to refresh the loot page."] = "的資訊. 右鍵點選其他物品以更新這一個物品頁面";

	-- Incomplete Table Registry error message
	AL[" not listed in loot table registry, please report this message to the AtlasLoot forums at http://www.atlasloot.net"] = "並未列於物品掉落註冊表，請至 AtlasLoot 論壇回報問題：http://www.atlasloot.net";

	-- LoD Module disabled or missing
	AL[" is unavailable, the following load on demand module is required: "] = "無法取得，需要以下的動態載入模組：";

	-- LoD Module load sequence could not be completed
	AL["Status of the following module could not be determined: "] = "以下模組的狀態無法被確認：";

	-- LoD Module required has loaded, but loot table is missing
	AL[" could not be accessed, the following module may be out of date: "] = "無法被存取，以下的模組可能版本已過於老舊：";

	-- LoD module not defined
	AL["Loot module returned as nil!"] = "找不到可動態載入的模組";

	-- LoD module loaded successfully
	AL["sucessfully loaded."] = "載入成功";

	-- Need a big dataset for searching
	AL["Loading available tables for searching"] = "載入搜尋所需的資料表";

	-- All Available modules loaded
	AL["All Available Modules Loaded"] = "所有的模組已載入";

	-- First time user
	AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences."] = "歡迎使用 Atlasloot Enhanced。請花一些時間設定您的偏好選項。";
	AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences for tooltips and links in the chat window.\n\n  This options screen can be reached again at any later time by typing '/atlasloot'."] = "歡迎使用 AtlasLoot Enhanced. 請花一點時間來設定訊息提示和連結的喜好. 輸入 /atlasloot 可以再次設定喜好選項";
	AL["Setup"] = "設定";

	-- Old Atlas Detected
	AL["It has been detected that your version of Atlas does not match the version that Atlasloot is tuned for ("] = "您現在的 Atlas 插件版本並不完全支援此版本的 Atlasloot, Atlas 的最新版本為 (";
	AL[").  Depending on changes, there may be the occasional error, so please visit http://www.atlasmod.com as soon as possible to update."] = "). 依 Atlas 版本的變化, AtlasLoot 也許會出現偶然的錯誤, 請儘快前往 http://www.atlasmod.com 更新";
	AL["OK"] = "確定";
	AL["Incompatible Atlas Detected"] = "偵測到不相容的 Atlas 版本";

	-- Unsafe item tooltip
	AL["Unsafe Item"] = "不安全的物品";
	AL["This item is not available on your server or your battlegroup yet."] = "這件物品目前在您的伺服器或是戰場群組中無法取得";
	AL["You can right-click to attempt to query the server.  You may be disconnected."] = "你可以按下滑鼠右鍵來嘗試向伺服器查詢該物品的資訊, 然而你將可能因此斷線.";
end
