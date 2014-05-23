﻿-- $Id$
--[[
constants.cn.lua
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

local AL = AceLocale:NewLocale("AtlasLoot", "zhCN", false);

-- Register translations
if AL then

	-- #########
	-- UI things
	-- #########
	-- compare frame
	AL["Compare Frame"] = "比较窗口";
	AL["Show in Compare Frame"] = "在比较窗口显示";
	AL["Name"] = "名称";
	AL["ItemLvl"] = "物品等级";
	AL["Normal"] = "普通";
	AL["%d items"] = "%d 物品";
	AL["All"] = "全部";
	AL["Stats"] = "属性";
	AL["Show \"Base Stats list\""] = "显示 \"基本属性列表\"";
	AL["Show \"Extra Stats list\""] = "显示 \"附加属性列表\"";
	AL["Base Stats list"] = "基本属性列表";
	AL["Extra Stats list"] = "附加属性列表";	
	AL["Add Stats list"] = "新增属性列表";
	AL["Are you sure you want to delete Sort list |cff1eff00%s|r?"] = "你确定要删除列表排序|cff1eff00%s|r?";
	AL["Delete Stats list"] = "删除属性列表";
	AL["Stats color"] = "属性颜色";
	AL["Stats list name:"] = "属性列表名称:";
	AL["Select Stats list"] = "选择属性列表";
	AL["You cant set more then %d item stats."] = "您可以设定多达 %d 个物品状态.";
	AL["Slot"] = "空位";
	AL["AtlasLoot has detected some corrupted items on your Wishlist. You can now run an automatic check to fix it. Please be aware that this could take a few moments."] = "AtlasLoot 已检测到愿望列表存在一些损坏的物品。现在可以运行自动检查修复它。请注意，这可能需要一会儿。";
	AL["BonusRoll:"] = "额外掷骰";
	AL["|cffFF0000Shift+Click: |cffFFFFFFOpen filter configuration"] = "|cffFF0000Shift+点击：|cffFFFFFF打开过滤器配置";

	-- Stats short
	AL["iLvl"] = "等级";	-- Item lvl
	AL["str"] = "力量";	-- Strength
	AL["agi"] = "敏捷";	-- Agility
	AL["sta"] = "耐力";	-- Stamina
	AL["int"] = "智力";	-- Intellect
	AL["spi"] = "精神";	-- Spirit
	AL["Crit"] = "暴击";	-- Crit Rating
	AL["Dodge"] = "躲闪";	-- Dodge Rating
	AL["Exp"] = "精准";	-- Expertise Rating
	AL["Hit"] = "命中";	-- Hit Rating
	AL["Haste"] = "急速";	-- Haste Rating
	AL["Parry"] = "招架";	-- Parry Rating
	AL["Spell"] = "法能";	-- Spell Power
	AL["Resi"] = "韧性";	-- Resilience Rating
	AL["Mast"] = "精通";	-- Mastery

	-- Stats
	AL["Resilience Rating"] = "韧性等级";
	AL["Base Stats"] = "基本属性";
	AL["Extra Stats"] = "附加属性";

	-- Loader
	AL["Load AtlasLoot"] = "加载 AtlasLoot";
	AL["Module \"%s\" is disabled."] = "\"%s\"模块已禁用。";
	AL["Module \"%s\" is missing."] = "\"%s\"模组缺失。";

	-- MiniMap-Button
	AL["|cffFF0000Click: |cffFFFFFFOpen AtlasLoot\n|cffFF0000Shift+Click: |cffFFFFFFOpen AtlasLoot-Options "] = "|cffFF0000点击：|cffFFFFFF打开 AtlasLoot\n|cffFF0000Shift+点击：|cffFFFFFF打开 AtlasLoot 选项";

	-- AtlasLootFu 
	AL["AtlasLootFu is no longer in use.\nDelete it from your AddOns folder"] = "AtlasLootFu 已经没有任何用处。\n请将其从 AddOns 文件夹移除。";

	-- Atlas Incompatible
	AL["Please note that AtlasLoot v%s is only compatible with Atlas v%s. AtlasLoot detected that you have an older Atlas version installed and thus Atlas integration was disabled."] = "请注意，AtlasLoot v%s 仅支持 Atlas v%s 。我們检测到您当前的 Atlas 版本太旧，因此关于 Atlas 的整合将会被停用。";

	-- Options
	AL["Options"] = "选项";
	AL["Load Loot Modules at Startup"] = "在启动时载入掉落物品模块";
	AL["Toggle Minimap Button"] = "切换小地图按钮";
	AL["Toggles the display of the minimap icon"] = "切换显示小地图按钮";
	AL["Show itemIDs"] = "显示物品 ID";
	AL["Show Droprates"] = "显示掉落率";
	AL["Safe Chat Links"] = "使用安全物品连接";
	AL["Comparison Tooltips"] = "装备对比";
	AL["Show Boss Tooltip"] = "显示首领提示";
	AL["Show Comparison Tooltips"] = "显示装备对比";
	AL["Opaque"] = "不透明";
	AL["Make Loot Table Opaque"] = "禁用掉落表格背景透明";
	AL["Treat Crafted Items:"] = "商业技能呈现方式：";
	AL["As Crafting Spells"] = "商业技能";
	AL["As Items"] = "物品";
	AL["Reset"] = "重置";
	AL["Reset Frames"] = "重置框体";
	AL["Profiles"] = "配置文件";
	AL["Item Buttons"] = "物品按钮";
	AL["Loot Table"] = "掉落列表";
	AL["Enable mouse on item descriptions"] = "启用鼠标指向物品属性";
	AL["Upgrade Level:"] = "升级等级：";
	AL["Show BonusRoll info"] = "显示额外掷骰信息";
	AL["Shows if a item is available with bonus roll or raid finder loot."] = "当物品拾取可用于额外掷骰或团队查找器时显示。";

	-- Default Frame
	AL["Default Frame"] = "默认框体";
	AL["Scale:"] = "缩放：";
	AL["Alpha:"] = "透明度：";
	AL["Only change alpha on leave frame"] = "只改变离开框体的透明度";

	-- Bindings
	AL["Toggle AtlasLoot"] = "切换 AtlasLoot";

	-- Help
	AL["Help"] = "帮助";
	AL["AtlasLoot Help"] = "AtlasLoot 帮助";
	AL["For further help, see our website and forums: "] = "更多帮助，请参阅网站及论坛：";
	AL["How to open the standalone Loot Browser:"] = "如何打开一个独立的掉落浏览：";
	AL["If you have AtlasLootFu enabled, click the minimap button, or alternatively a button generated by a mod like Titan or FuBar.  Finally, you can type '/al' in the chat window."] = "如果启用了 AtlasLootFu，单击小地图按钮，或像是 Titan 或者 FuBar 上另外生成的按钮。	最后，你可以输入“/al”在聊天窗口。";
	AL["How to view an 'unsafe' item:"] = "如何查看“不安全”物品：";
	AL["Unsafe items have a red border around the icon and are marked because you have not seen the item since the last patch or server restart. Right-click the item, then move your mouse back over the item or click the 'Query Server' button at the bottom of the loot page."] = "最后的补丁更新或服务器重启，没有见过的物品不安全物品会有一个红色边框在物品图标周围用来标记。右击这些物品并移动鼠标回到该物品，或者点击拾取页面下方的“服务器查询”按钮。";
	AL["How to view an item in the Dressing Room:"] = "如何在试衣间查看物品：";
	AL["Simply Ctrl+Left Click on the item.  Sometimes the dressing room window is hidden behind the Atlas or AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden."] = "Ctrl+点击物品。有时试衣间窗口会隐藏在 Atlas 或 AtlasLoot 窗口之后，所以如果看上去没有任何变化请移动 Atlas 或 AtlasLoot 窗口让你看到他们。";
	AL["How to link an item to someone else:"] = "如何链接一个物品到其它地方：";
	AL["Shift+Left Click the item like you would for any other in-game item"] = "Shift+单击游戏内任意物品，和链接游戏里其它物品一样";
	AL["How to add an item to the wishlist:"] = "如何添加物品到愿望列表：";
	AL["Alt+Left Click any item to add it to the wishlist."] = "Alt+点击物品添加到愿望列表 。";
	AL["How to delete an item from the wishlist:"] = "如何从愿望列表删除物品：";
	AL["While on the wishlist screen, just Alt+Left Click on an item to delete it."] = "在愿望列表上，Alt+单击来删除物品。";
	AL["What else does the wishlist do?"] = "愿望列表能做些什么？";
	AL["If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.  Also, on a loot page any item already in your wishlist is marked with a yellow star."] = "单击愿望列表上的任何物品，可以跳转到该物品的拾取页面上。	此外，拾取页面上的任何物品的已经在你的愿望列表时会被标记一颗黄色星星。";
	AL["HELP!! I have broken the mod somehow!"] = "救命！！我不知道怎么把插件搞坏了！";
	AL["Use the reset buttons available in the options menu, or type '/al reset' in your chat window."] = "使用选项菜单上的重置按钮，或输入“/al reset”在聊天窗口。";

	-- LootButtons
	-- Tooltips
	AL["ItemID:"] = "物品 ID：";
	AL["Drop Rate: "] = "掉落率：";
	AL["DKP"] = "DKP";
	AL["Priority:"] = "优先：";
	AL["Show price and slot if possible"] = "显示可用价格与部位";
	AL["Show wishlist items in bosses tooltip"] = "在首领提示显示愿望列表物品";
	AL["Use GameTooltip"] = "使用游戏内提示";
	AL["Use the standard GameTooltip instead of the custom AtlasLoot tooltip"] = "使用标准游戏内提示而不使用 AtlasLoot 提示";
	AL["%d / %d ( Bank: %d )"] = "%d / %d ( 银行：%d )";
	-- Unsafe Item
	AL["Item Unavailable"] = "物品不可用";
	AL["|cff0070ddItemID: %d |r\nThis item is unsafe.  To view this item without the risk of disconnection, you need to have first seen it in the game world.\n\nYou can right-click to attempt to query the server.  You may be disconnected."] = "|cff0070dd物品 ID：%d |r\n此物品不安全。如想不掉线的情况下查看此物品，需要在游戏中见过此物品。\n\n可以尝试右击向服务器查询。可能会断开连接。";
	-- Heriloom Config Window
	AL["Heirloom preview"] = "传家宝预览";
	AL["Change level:"] = "变更等级：";
	AL["Shift + Right Click to select character level"] = "Shift+右击选择角色等级";	

	-- LootTableSort
	AL["Sort by Instance"] = "依照副本排序";
	AL["Sort loottable by Instance"] = "依照副本掉落列表排序";
	AL["Sort by Boss"] = "依照首领排序";
	AL["Sort loottable by Boss"] = "依照首领掉落列表排序";
	AL["Item Name"] = "物品名称";
	AL["Item Slot"] = "物品部位";
	AL["Item Quality"] = "物品品质";

	-- Wishlist
	AL["Wishlist"] = "愿望列表";
	AL["Wishlists"] = "愿望列表";
	AL["Own"] = "已拥有";
	AL["Other"] = "其它";
	AL["Shared"] = "已分享";
	AL["Wishlist name:"] = "愿望列表名称：";
	AL["Delete"] = "删除";
	AL["Share"] = "分享";
	AL["Send Wishlist (%s) to"] = "发送愿望列表（%s）到";
	AL["Send"] = "发送";
	AL[" added to the WishList."] = " 添加到愿望列表。";
	AL[" already in the WishList!"] = " 已在愿望列表内！";
	AL[" deleted from the WishList."] = " 已从愿望列表删除。";
	AL["Are you sure you want to delete Wishlist |cff1eff00%s|r?"] = "确定要输出愿望列表|cff1eff00%s|r？";
	AL["default"] = "默认";
	AL[" |cff999999<default>"] = " |cff999999<默认>";
	AL["Use as default wishlist"] = "将其设为默认愿望列表";
	AL["Add Wishlist"] = "新增愿望列表";
	AL["Always use default Wishlist"] = "永远使用默认愿望列表";
	AL["Save wishlists at character DB"] = "将愿望列表储存到角色资料库";
	AL["Saves the wishlists only for |cff1eff00%s-%s|r.\n Other characters cant view the wishlists, but the memory usage is reduced."] = "只针对|cff1eff00%s-%s|r角色存储愿望列表\n其它角色不可以查看此愿望列表，减少内存使用。";
	AL["Table Sort"] = "表格排序";
	AL["Table Sort:"] = "表格排序：";
	AL["Item Sort:"] = "物品排序：";
	AL["Show own wishlists"] = "显示自己愿望清单";
	AL["Show all wishlists"] = "显示全部愿望清单";

	-- Filter
	AL["Filter"] = "筛选";
	AL["Select All Loot"] = "选择所有掉落";
	AL["Apply Filter:"] = "套用筛选条件：";
	AL["Melee weapons"] = "近战武器";
	AL["Ranged weapons"] = "远程武器";
	AL["Other"] = "其它";
	AL["Itemslot"] = "物品部位";
	AL["Shift + Click on the Filter button opens the config page."] = "Shift+单击筛选按钮打开配置页面。";

	-- Panel
	AL["Hide Panel"] = "隐藏面板";
	AL["Toggle AL Panel"] = "切换 AtlasLoot 面板";
	AL["Buttons"] = "按钮";

	-- Buttons
	AL["Collections"] = "收藏";
	AL["Crafting"] = "制造的物品";
	AL["Factions"] = "阵营";
	AL["Load Modules"] = "载入所有数据";
	AL["PvP Rewards"] = "PvP 奖励";
	AL["World Events"] = "世界事件";

	-- QuickLooks
	AL["QuickLook"] = "快捷浏览";
	AL["QuickLooks"] = "快捷浏览";
	AL["Number of QuickLooks:"] = "快捷浏览数目：";
	AL["Add to QuickLooks:"] = "添加到快捷浏览：";
	AL["Reset Quicklooks"] = "重置快捷浏览";
	AL["Assign this loot table\n to QuickLook"] = "分配这个掉落表格\n到快捷浏览";
	AL["Show unused QuickLooks in the Panel"] = "在面板显示未使用的快捷浏览";
	AL["Shows unused QuickLooks as grey buttons in the AtlasLoot Panel"] = "在 AtlasLoot 面板以灰色按钮显示未使用的快捷浏览";
	-- Single options
	AL["unused"] = "未使用";
	AL["QuickLook name:"] = "快捷浏览名称：";
	AL["Use Boss name"] = "使用首领名称";
	AL["Use Instance name"] = "使用副本名称";
	AL["Delete"] = "删除";
	AL["Lock"] = "锁定";
	AL["Enable"] = "启用";

	-- Query Server / Query all
	AL["Query Server"] = "服务器查询";
	AL["Queries the server for all items \non this page. The items will be \nrefreshed when you next mouse \nover them."] = "向服务器查询本页\n中的所有物品链接\n物品将会在鼠标\n下次滑过时刷新。";

	-- Atlas
	AL["Click boss name to view loot."] = "点击首领名称查看掉落。";

	-- LootTable
	-- title
	AL["Heroic"] = "英雄";
	AL["25 Man"] = "25人";
	AL["25 Man Heroic"] = "25人英雄";
	-- buttons
	AL["Show 10 Man Loot"] = "显示10人掉落";
	AL["Show 25 Man Loot"] = "显示25人掉落";
	AL["Show Slot"] = "显示部位";
	AL["Show Price"] = "显示价格";
	AL["Skill"] = "技能";
	AL["Location"] = "位置";

	-- #######################################
	-- UI things END
	-- #######################################

	-- Text strings for UI objects
	AL["AtlasLoot"] = "AtlasLoot";
	AL["Select Loot Table"] = "选择掉落表格";
	AL["Select Sub-Table"] = "选择二级表";
	AL["Various Locations"] = "多个位置";
	AL["This is a loot browser only.  To view maps as well, install either Atlas or Alphamap."] = "这仅是一个掉落浏览。要想同时查看地图，请安装 Atlas 或 Alphamap。";
	AL["Back"] = "返回";
	AL["Level 60"] = "等级60";
	AL["Level 70"] = "等级70";
	AL["Level 80"] = "等级80";
	AL["Level 85"] = "等级85";
	AL["Level 90"] = "等级90";
	AL["|cffff0000(unsafe)"] = "|cffff0000（不安全）";
	AL["Misc"] = "其它";
	AL["Rewards"] = "奖励";
	AL["Choose Table ..."] = "选择表格…";
	AL["Unknown"] = "未知";
	AL["Reset Wishlist"] = "重置愿望列表";
	AL["Select a Loot Table..."] = "选择掉落表格…";
	AL["OR"] = "或";
	AL["FuBar Options"] = "FuBar 选项";
	AL["Attach to Minimap"] = "吸附到小地图";
	AL["Hide FuBar Plugin"] = "隐藏 FuBar 插件";
	AL["Show FuBar Plugin"] = "显示 FuBar 插件";
	AL["Position:"] = "位置：";
	AL["Left"] = "左侧";
	AL["Center"] = "中间";
	AL["Right"] = "右侧";
	AL["Hide Text"] = "隐藏文本";
	AL["Hide Icon"] = "隐藏图标";
	AL["Minimap Button Options"] = "小地图按钮选项";

	-- Text for Options Panel
	AL["Atlasloot Options"] = "AtlasLoot 选项";
	AL["Default Tooltips"] = "默认提示";
	AL["Lootlink Tooltips"] = "掉落链接提示";
	AL["|cff9d9d9dLootlink Tooltips|r"] = "|cff9d9d9d掉落链接提示|r";
	AL["ItemSync Tooltips"] = "物品同步提示";
	AL["|cff9d9d9dItemSync Tooltips|r"] = "|cff9d9d9d物品同步提示样式|r";
	AL["Use EquipCompare"] = "使用装备对比";
	AL["|cff9d9d9dUse EquipCompare|r"] = "|cff9d9d9d使用装备对比|r";
	AL["Show itemIDs at all times"] = "永远显示物品 ID";
	AL["Hide AtlasLoot Panel"] = "隐藏 AtlasLoot 面板";
	AL["Show Basic Minimap Button"] = "显示小地图按钮";
	AL["|cff9d9d9dShow Basic Minimap Button|r"] = "|cff9d9d9d显示小地图按钮|r";
	AL["Set Minimap Button Position"] = "设置小地图按钮位置";
	AL["Notify on LoD Module Load"] = "当物品数据模块载入时进行提示";
	AL["Loot Browser Scale: "] = "掉落浏览比例：";
	AL["Button Position: "] = "按钮位置：";
	AL["Button Radius: "] = "按钮半径：";
	AL["Done"] = "确定";
	AL["FuBar Toggle"] = "FuBar 开关";	
	AL["Search Result: %s"] = "搜索结果：%s";
	AL["Search on"] = "搜索于";
	AL["All modules"] = "全部模块";
	AL["If checked, AtlasLoot will load and search across all the modules."] = "如果选中，AtlasLoot 会载入并扫描所有的模块。";
	AL["Search options"] = "搜索选项";
	AL["Partial matching"] = "部分匹配";
	AL["If checked, AtlasLoot search item names for a partial match."] = "如果选中，AtlasLoot 会将输入文字作为物品名称的一部分进行匹配。";
	AL["You don't have any module selected to search on!"] = "你没有选择任何用于搜索的模块。";
	AL["Panel"] = "面板";

	-- Slash commands
	AL["reset"] = "reset";
	AL["options"] = "options";
	AL["Reset complete!"] = "重置完成！";

	-- AtlasLoot Panel - Search
	AL["Clear"] = "重置";
	AL["Last Result"] = "上次结果";
	AL["Search"] = "搜索";

	-- Crafting Menu
	AL["Crafting Daily Quests"] = "商业技能日常任务";
	AL["Cooking Daily"] = "烹饪日常";
	AL["Fishing Daily"] = "钓鱼日常";
	AL["Jewelcrafting Daily"] = "珠宝加工日常";
	AL["Crafted Sets"] = "制造的套装";
	AL["Crafted Epic Weapons"] = "制造的史诗武器";
	AL["Dragon's Eye"] = "龙眼石";
	AL["Chimera's Eye"] = "奇美拉之眼";
	AL["Serpent's Eye"] = "蛟眼石";

	-- Sets/Collections Menu
	AL["Sets"] = "套装";
	AL["Set"] = "套装";
	AL["Justice Points"] = "正义点数";
	AL["Valor Points"] = "勇气点数";
	AL["BoE World Epics"] = "世界掉落的史诗装备";
	AL["Legendary Items"] = "传奇物品";
	AL["Misc Sets"] = "其它套装";
	AL["Tier Sets"] = "等级套装";
	AL["Tier 1/2 Set"] = "等级1/2套装";
	AL["Tier 1/2/3 Set"] = "等级1/2/3套装";
	AL["Tier 3 Set"] = "等级3套装";
	AL["Tier 4/5/6 Set"] = "等级4/5/6套装";
	AL["Tier 7/8 Set"] = "等级7/8套装";
	AL["Tier 9 Set"] = "等级9套装";
	AL["Tier 10 Set"] = "等级10套装";
	AL["Tier 11/12 Set"] = "等级11/12套装";
	AL["Tier 13 Set"] = "等级13套装";
	AL["Tier 14 Set"] = "等级14套装";
	AL["Tier 15 Set"] = "等级15套装";
	AL["Tier 16 Set"] = "等级16套装";
	AL["TCG Items"] = "集换式卡牌物品";
	AL["Rare Mobs"] = "稀有怪物";
	AL["Grand Marshal"] = "大元帅";
	AL["Gladiator"] = "角斗士";
	AL["Vengeful"] = "复仇";
	AL["Merciless"] = "残酷";
	AL["Brutal"] = "野蛮";
	AL["Wrathful"] = "暴怒";
	AL["Cataclysmic"] = "灾变";
	AL["ilvl %d"] = "等级%d";

	-- PvP Menu
	AL["Arathi Basin Sets"] = "阿拉希盆地套装";
	AL["PvP Accessories"] = "PvP 附件";
	AL["PvP Armor Sets"] = "PvP 护甲套装";
	AL["PvP Weapons"] = "PvP 武器";
	AL["PvP Non-Set Epics"] = "PvP 非套装史诗级部件";
	AL["PvP Reputation Sets"] = "PvP 声望套装";
	AL["PvP Misc"] = "PvP 其它";
	AL["PVP Gems/Enchants/Jewelcrafting Designs"] = "PvP 宝石/附魔/珠宝设计";
	AL["PvP Trinkets"] = "PvP 饰品";

	-- World Events
	AL["Abyssal Council"] = "深渊议会";
	AL["Argent Tournament"] = "银色锦标赛";
	AL["Bash'ir Landing Skyguard Raid"] = "巴什伊尔码头";
	AL["Brewfest"] = "美酒节";
	AL["Children's Week"] = "儿童周";
	AL["Day of the Dead"] = "悼念日";
	AL["Ethereum Prison"] = "复仇军监狱";
	AL["Feast of Winter Veil"] = "冬幕节";
	AL["Gurubashi Arena Booty Run"] = "古拉巴什竞技场";
	AL["Hallow's End"] = "万圣节";
	AL["Harvest Festival"] = "收获节";
	AL["Love is in the Air"] = "情人节";
	AL["Lunar Festival"] = "春节";
	AL["Midsummer Fire Festival"] = "仲夏火焰节";
	AL["Noblegarden"] = "复活节";
	AL["Pilgrim's Bounty"] = "感恩节";
	AL["Skettis"] = "斯克提斯";
	AL["Stranglethorn Fishing Extravaganza"] = "荆棘谷钓鱼大赛";
	AL["Kalu'ak Fishing Derby"] = "卡亚鲁克钓鱼大赛";
	AL["Fishing Contests"] = "钓鱼大赛";

	-- World Events	Menu Names
	AL["Special Rewards"] = "特殊奖励";					-- Brewfest, Feast of Winter Veil
	AL["Brew of the Month Club"] = "本月美酒俱乐部";		-- Brewfest
	AL["Food and Drinks"] = "食物与饮料";				-- Brewfest
	AL["Gifts & Presents"] = "礼物";					-- Feast of Winter Veil
	AL["Playable Race Masks"] = "种族面具玩具"; 		-- Hallow's End
	AL["Non-Playable Race Masks"] = "非种族面具玩具"; 	-- Hallow's End
	AL["Schematics & Patterns"] = "结构图/图样";			-- Lunar Festival
	AL["Toys"] = "玩具"; 						-- Darkmoon Faire

	-- Minimap Button
	AL["|cff1eff00Left-Click|r Browse Loot Tables"] = "|cff1eff00单击|r浏览掉落表格";
	AL["|cffff0000Right-Click|r View Options"] = "|cffff0000右击|r查看选项";
	AL["|cffff0000Shift-Click|r View Options"] = "|cffff0000Shift+点击|r查看设置";
	AL["|cffccccccLeft-Click + Drag|r Move Minimap Button"] = "|cffcccccc点击拖动|r移动小地图按钮";
	AL["|cffccccccRight-Click + Drag|r Move Minimap Button"] = "|cffcccccc右击拖动|r移动小地图按钮";

	-- Default Frame
	AL["Select Module"] = "选择模块";
	AL["Select Instance"] = "选择副本";

	-- Wishlist
	AL["Close"] = "关闭";
	AL["Own Wishlists"] = "自身愿望列表";
	AL["Other Wishlists"] = "其它愿望列表";
	AL["Shared Wishlists"] = "分享愿望列表";
	AL["Mark items in loot tables"] = "在掉落表格标记物品";
	AL["Mark items from own Wishlist"] = "从自身愿望列表标记物品";
	AL["Mark items from all Wishlists"] = "从所有愿望列表标记物品";
	AL["Enable Wishlist Sharing"] = "启用愿望列表分享";
	AL["Auto reject in combat"] = "战斗中自动拒绝";
	AL["Edit Wishlist"] = "编辑愿望列表";
	AL["Show More Icons"] = "显示更多图标";
	AL["Edit"] = "编辑";
	AL["Show all Wishlists"] = "显示所有愿望列表";
	AL["Show own Wishlists"] = "显示自身愿望列表";
	AL["Show shared Wishlists"] = "显示分享愿望列表";
	AL["You must wait "] = "请等待";
	AL[" seconds before you can send a new Wishlist to "] = " 秒后才可以将愿望列表传送给";
	AL["Cancel"] = "取消";
	AL["Delete Wishlist %s?"] = "删除愿望列表 %s？";
	AL["%s sends you a Wishlist. Accept?"] = "%s传送了一个愿望列表给你，是否接受？";
	AL[" tried to send you a Wishlist. Rejected because you are in combat."] = " 尝试传送一个愿望列表给你，因你正在战斗中而系统自动拒绝了。";
	AL[" rejects your Wishlist."] = " 拒绝了你的愿望列表。";
	AL["You can't send Wishlists to yourself"] = "不能发送愿望列表给你自己";
	AL["Please set a default Wishlist."] = "请设置默认愿望列表。";
	AL["Set as default Wishlist"] = "设置为默认愿望列表";

	-- Misc Inventory related words
	AL["Scope"] = "瞄准镜";
	AL["Darkmoon Faire Card"] = "暗月马戏团卡片";
	AL["Banner"] = "旗帜";
	AL["Set"] = "套装";
	AL["Token"] = "兑换物";
	AL["Combat Pet"] = "战斗宠物";
	AL["Fireworks"] = "焰火";
	AL["Transformation Item"] = "变形物品";
	AL["Keys"] = "钥匙";

	-- Extra inventory stuff
	AL["Cloak"] = "披风";

	-- Alchemy
	AL["Battle Elixirs"] = "战斗药剂";
	AL["Cauldron"] = "药锅";
	AL["Cauldrons"] = "药锅";
	AL["Guardian Elixirs"] = "守护药剂";
	AL["Oils"] = "之油";
	AL["Other Elixirs"] = "其它药剂";
	AL["Potions"] = "药水";
	AL["Transmutes"] = "转化";
	AL["Flasks"] = "药剂";

	-- Blacksmithing
	AL["Armor Enhancements"] = "护甲强化";
	AL["Weapon Enhancements"] = "武器强化";
	AL["Cataclysm Vendor Sold Plans"] = "大地的裂变商人出售图纸";
	AL["Mists of Pandaria Vendor Sold Plans"] = "熊猫人之谜商人出售图纸";
	AL["Training Projects"] = "训练项目";

	-- Cooking
	AL["Banquets/Feasts"] = "盛宴/大餐";

	-- Enchanting
	AL["Enchant Boots"] = "附魔脚部";
	AL["Enchant Bracer"] = "附魔护腕";
	AL["Enchant Chest"] = "附魔胸部";
	AL["Enchant Cloak"] = "附魔披风";
	AL["Enchant Gloves"] = "附魔手套";
	AL["Enchant Ring"] = "附魔戒指";
	AL["Enchant Shield & Off-Hand"] = "附魔盾牌/副手";
	AL["Enchant 2H Weapon"] = "附魔双手武器";
	AL["Enchant Weapon"] = "附魔武器";
	AL["Cataclysm Vendor Sold Formulas"] = "大地的裂变商人出售公式";

	-- Engineering
	AL["Tinker"] = "工程学专属";

	-- Fishing
	AL["Fish Weapons"] = "钓鱼武器";
	AL["Fishing Gear"] = "钓鱼装备";
	AL["Fishing Lines"] = "鱼线";

	-- Inscription
	AL["Major Glyph"] = "大型雕文";
	AL["Minor Glyph"] = "小型雕文";
	AL["Runescrolls"] = "符文卷轴";
	AL["Recall"] = "召回";
	AL["Scrolls"] = "卷轴";
	AL["Off-Hand Items"] = "副手物品";
	AL["Shoulder Enchants"] = "肩膀附魔";
	AL["Reagents"] = "材料";

	-- Leatherworking
	AL["Leather Armor"] = "皮甲";
	AL["Mail Armor"] = "锁甲";
	AL["Cloaks"] = "披风";
	AL["Item Enhancements"] = "物品强化";
	AL["Drums, Bags and Misc."] = "战鼓、容器及其它";

	-- Tailoring
	AL["Shirts"] = "衬衣";
	AL["Bags"] = "容器";
	AL["Cataclysm Vendor Sold Patterns"] = "大地的裂变商人出售图样";
	AL["Mists of Pandaria Vendor Sold Patterns"] = "熊猫人之谜商人出售图样";

	-- Labels for loot descriptions
	AL["Classes:"] = "职业：";
	AL["This Item Begins a Quest"] = "该物品将触发一个任务";
	AL["Quest Item"] = "任务物品";
	AL["Old Quest Item"] = "旧任务物品";
	AL["Quest Reward"] = "任务奖励";
	AL["Old Quest Reward"] = "旧任务奖励";
	AL["Shared"] = "共享";
	AL["Right Half"] = "右半部分";
	AL["Left Half"] = "左半部分";
	AL["Currency"] = "货币";
	AL["Used to summon boss"] = "用以召唤首领";
	AL["Tradable for sunmote + item above"] = "太阳之尘与上面物品兑换";
	AL["Card Game Item"] = "集换卡游戏物品";
	AL["Skill Required:"] = "需要技能：";
	AL["Rating:"] = "等级：";
	AL["Random Heroic Reward"] = "随机英雄奖励";
	AL["Fishing Daily Reward"] = "钓鱼日常奖励";
	AL["Collector's Edition"] = "典藏版";
	AL["Daily Reward"] = "日常奖励";
	AL["No Longer Available"] = "已绝版";
	AL["Shared Boss Loot"] = "首领共享掉落";
	AL["Shared Zone Loot"] = "区域共享掉落";
	AL["Black Market Auction House"] = "黑市拍卖行";

	-- Minor Labels for loot table descriptions
	AL["Classic WoW"] = "经典旧世";
	AL["Burning Crusade"] = "燃烧的远征";
	AL["Wrath of the Lich King"] = "巫妖王之怒";
	AL["Cataclysm"] = "大地的裂变";
	AL["Mists of Pandaria"] = "熊猫人之谜";
	AL["Entrance"] = "入口";
	AL["Dungeon Set 1"] = "地下城套装1";
	AL["Dungeon Set 2"] = "地下城套装2";
	AL["Dungeon Set 1/2"] = "地下城套装1/2";
	AL["Replica"] = "复制品";
	AL["Dungeon Set 3"] = "地下城套装3";
	AL["Dungeon Set 4"] = "地下城套装4";
	AL["Tier %d"] = "等级%d" -- usage: string.format(AL["Tier %d"], 1)
	AL["Challenge Mode Armor Sets"] = "挑战难度护甲套装";
	AL["10 Man"] = "10人";
	AL["10/25 Man"] = "10/25人";
	AL["Epic Set"] = "史诗套装";
	AL["Rare Set"] = "精良套装";
	AL["Season %d"] = "第%d季"; -- usage: string.format(AL["Season %d"], 6)
	AL["Fire"] = "火";
	AL["Water"] = "水";
	AL["Wind"] = "风";
	AL["Earth"] = "地";
	AL["Master Angler"] = "钓鱼大师";
	AL["Fire Resistance Gear"] = "火焰抗性装备";
	AL["Arcane Resistance Gear"] = "奥术抗性装备";
	AL["Nature Resistance Gear"] = "自然抗性装备";
	AL["Frost Resistance Gear"] = "冰霜抗性装备";
	AL["Shadow Resistance Gear"] = "暗影抗性装备";

	-- Labels for loot table sections
	AL["Additional Heroic Loot"] = "英雄难度额外掉落";
	AL["Heroic Mode"] = "英雄难度";
	AL["Normal Mode"] = "普通难度";
	AL["Hard Mode"] = "困难难度";
	AL["Bonus Loot"] = "额外掉落";
	AL["Arena Reward"] = "竞技场奖励";
	AL["Achievement Reward"] = "成就奖励";
	AL["Phase 1"] = "第一阶段";
	AL["Phase 2"] = "第二阶段";
	AL["Phase 3"] = "第三阶段";
	AL["First Prize"] = "第一名奖励";
	AL["Rare Fish Rewards"] = "稀有鱼种奖励";
	AL["Rare Fish"] = "稀有鱼种";
	AL["Weapons"] = "武器";
	AL["Accessories"] = "附件";
	AL["Rare"] = "稀有";
	AL["Specializations"] = "特殊";
	AL["Flexible"] = "弹性";
	AL["Raid Finder"] = "团队查找器";
	AL["Thunderforged"] = "雷霆";
	AL["Warforged"] = "战火";
	AL["Pandaria World Bosses"] = "潘达利亚世界首领";
	AL["Elite"] = "精锐";
	AL["Vegetables"] = "蔬菜";

	-- Loot Table Names
	AL["Level %s"] = "等级%s"; -- usage: string.format(AL["Level %s"], "85-89")
	AL["Summon"] = "召唤";
	AL["Random"] = "随机";

	-- Profession descriptions
	AL["Buff"] = "增益";
	AL["Agility"] = "敏捷";
	AL["Attributes"] = "属性";
	AL["Intellect"] = "智力";
	AL["Strength"] = "力量";
	AL["Spirit"] = "精神";
	AL["Stamina"] = "耐力";
	AL["Spell Power"] = "法术能量";
	AL["Attack Power"] = "攻击强度";
	AL["Spell/Attack Power"] = "法术能量/攻击强度";
	AL["Hit Rating"] = "命中等级";
	AL["Crit Rating"] = "暴击等级";
	AL["Haste Rating"] = "急速等级";
	AL["Dodge Rating"] = "闪躲等级";
	AL["Expertise Rating"] = "专精等级";
	AL["Mastery Rating"] = "精通等级";
	AL["Parry Rating"] = "招架等级";
	AL["Other Ratings"] = "其它等级";
	AL["Ratings"] = "等级";
	AL["Damage Absorption"] = "吸收伤害";
	AL["Health / Second"] = "每秒恢复生命";
	AL["Mana / Second"] = "每秒恢复法力";
	AL["Tracking"] = "追踪";
	AL["Emotions"] = "表情";
	AL["Alcohol"] = "酒类";
	AL["Health"] = "生命";
	AL["Mana"] = "法力";
	AL["Health and Mana"] = "生命和法力";
	AL["Other Buffs"] = "其它增益";
	AL["Other"] = "其它";
	AL["Standard Buffs"] = "标准增益";
	AL["Food without Buffs"] = "没有增益的食物";
	AL["Special"] = "特殊";
	AL["Feasts"] = "宴席";
	AL["Speed"] = "速度";
	AL["Oil"] = "附魔油";
	AL["Culture"] = "文化";
	AL["Description"] = "描述";
	AL["Draenei"] = "德莱尼";
	AL["Dwarf"] = "矮人";
	AL["Fossil"] = "化石";
	AL["Mantid"] = "螳螂妖";
	AL["Mogu"] = "魔古族";
	AL["Nerubian"] = "蛛魔";
	AL["Night Elf"] = "暗夜精灵";
	AL["Orc"] = "兽人";
	AL["Pandaren"] = "熊猫人";
	AL["Tol'vir"] = "托维尔";
	AL["Troll"] = "巨魔";
	AL["Vrykul"] = "维库人";
	AL["Stats"] = "属性";
	AL["Resilience"] = "韧性";
	AL["Professions"] = "专业技能";
	AL["Damage"] = "伤害";
	AL["Proc"] = "特效";

	-- Extra Text in Boss lists
	AL["AQ20 Class Sets"] = "安其拉废墟职业套装";
	AL["AQ Enchants"] = "安其拉附魔";
	AL["AQ40 Class Sets"] = "安其拉神殿职业套装";
	AL["AQ Opening Quest Chain"] = "安其拉开门任务链";
	AL["Tribute Run"] = "贡品";
	AL["Dire Maul Books"] = "厄运之槌书籍";
	AL["Random Boss Loot"] = "首领随机掉落";
	AL["Formula/Patterns/Plans"] = "公式/图样/设计图";
	AL["BRD Blacksmithing Plans"] = "黑石深渊锻造设计图";
	AL["Patterns/Plans"] = "图样/设计图";

	-- General titles
	AL["Achievement"] = "成就";
	AL["Dungeon"] = "副本";
	AL["Outdoor"] = "野外";
	AL["Promotional"] = "促销";
	AL["PvP"] = "PvP";
	AL["Raid"] = "团队";

	-- Companions
	AL["Achievement Companions"] = "成就小伙伴";
	AL["Faction Companions"] = "阵营小伙伴";
	AL["Card Game Companions"] = "集换卡奖励小伙伴";
	AL["Companion Accessories"] = "小伙伴附件";
	AL["Blizzard Store"] = "暴雪商店";
	AL["Crafted Companions"] = "制造的小伙伴";
	AL["Dungeon/Raid"] = "副本/团队";
	AL["Faction"] = "阵营";
	AL["Merchant Sold Companions"] = "商人出售的小伙伴";
	AL["Pets"] = "宠物";
	AL["Promotional Companions"] = "促销的小伙伴";
	AL["Quest Reward Companions"] = "任务奖励小伙伴";
	AL["Rare Companions"] = "稀有小伙伴";
	AL["Unobtainable Companions"] = "已绝版小伙伴";
	AL["New Companions"] = "新小伙伴";
	--- Drop Locations
	AL["Bogflare Needler"] = "水光针刺者";
	AL["Deviate Ravager/Deviate Guardian"] = "变异破坏者/变异守护者";
	AL["Gundrak Raptor"] = "古达克迅猛龙";
	AL["Noxious Whelp"] = "毒性雏龙";

	-- Mounts
	AL["Alliance Mounts"] = "联盟坐骑";
	AL["Horde Mounts"] = "部落坐骑";
	AL["Flying Mounts"] = "飞行坐骑";
	AL["Card Game Mounts"] = "集换卡游戏坐骑";
	AL["Crafted Mounts"] = "制造的坐骑";
	AL["Event Mounts"] = "世界事件坐骑";
	AL["Neutral Faction Mounts"] = "中立阵营坐骑";
	AL["PvP Mounts"] = "PvP 坐骑";
	AL["Alliance PvP Mounts"] = "联盟 PvP 坐骑";
	AL["Horde PvP Mounts"] = "部落 PvP 坐骑";
	AL["Halaa PvP Mounts"] = "哈兰 PvP 坐骑";
	AL["Promotional Mounts"] = "促销坐骑";
	AL["Rare Mounts"] = "稀有坐骑";
	AL["Unobtainable Mounts"] = "已绝版坐骑";
	AL["New Mounts"] = "新坐骑";
	AL["Mount Collecting"] = "坐骑收集";

	-- Tabards
	AL["Achievement & Quest Reward Tabards"] = "成就/任务奖励战袍";
	AL["Alliance Tabards"] = "联盟战袍";
	AL["Card Game Tabards"] = "集换卡战袍";
	AL["Horde Tabards"] = "部落战袍";
	AL["Neutral Faction Tabards"] = "中立阵营战袍";
	AL["PvP Tabards"] = "PvP 战袍";
	AL["Unobtainable Tabards"] = "已绝版战袍";

	-- Transformation Items
	AL["Transformation Items"] = "变形物品";
	AL["Additional Effects Transformation Items"] = "具额外效果的变形物品";
	AL["Consumable Transformation Items"] = "消耗性变形物品";
	AL["Non-consumed Transformation Items"] = "非消耗性变形物品";

	-- Heirloom and BoA Items
	AL["Heirloom"] = "传家宝";
	AL["PvP Heirlooms"] = "PvP 传家宝";
	AL["Bind on Account"] = "帐号绑定";
	AL["Bind on Account Armor"] = "帐号绑定护甲";
	AL["Bind on Account Weapons"] = "帐号绑定武器";

	-- Darkmoon Faire
	AL["Darkmoon Faire Rewards"] = "暗月马戏团奖励";
	AL["Low Level Decks"] = "低级卡片";
	AL["Level 60 & 70 Trinkets"] = "等级60/70饰品";
	AL["Trinkets"] = "饰品";

	-- Card Game Decks and descriptions
	AL["Loot Card Items"] = "集换卡物品";
	AL["UDE Items"] = "UDE 积分物品";

	-- First set
	AL["Heroes of Azeroth"] = "艾泽拉斯英雄传";
	AL["Landro Longshot"] = "远射兰铎";
	AL["Thunderhead Hippogryph"] = "雷首角鹰兽";
	AL["Saltwater Snapjaw"] = "海水钳嘴龟";

	-- Second set
	AL["Through The Dark Portal"] = "穿越黑暗之门";
	AL["King Mukla"] = "国王穆克拉";
	AL["Rest and Relaxation"] = "休息与放松";
	AL["Fortune Telling"] = "预言";

	-- Third set
	AL["Fires of Outland"] = "外域之火";
	AL["Spectral Tiger"] = "幽灵虎";
	AL["Gone Fishin'"] = "去钓鱼";
	AL["Goblin Gumbo"] = "地精泡泡";

	-- Fourth set
	AL["March of the Legion"] = "燃烧军团的进攻";
	AL["Kiting"] = "风筝";
	AL["Robotic Homing Chicken"] = "机械自动导航小鸡";
	AL["Paper Airplane"] = "纸飞机";

	-- Fifth set
	AL["Servants of the Betrayer"] = "背叛者的仆从";
	AL["X-51 Nether-Rocket"] = "X-51型虚空火箭";
	AL["Personal Weather Machine"] = "个人天气制造机";
	AL["Papa Hummel's Old-fashioned Pet Biscuit"] = "赫墨尔老爹的老式宠物饼干";

	-- Sixth set
	AL["Hunt for Illidan"] = "追捕伊利丹";
	AL["The Footsteps of Illidan"] = "伊利丹的足迹";
	AL["Disco Inferno!"] = "迪斯科地狱！";
	AL["Ethereal Plunderer"] = "虚灵掠夺者";

	-- Seventh set
	AL["Drums of War"] = "战争之鼓";
	AL["The Red Bearon"] = "红色王熊";
	AL["Owned!"] = "拿下！";
	AL["Slashdance"] = "跳舞";

	-- Eighth set
	AL["Blood of Gladiators"] = "角斗士之血";
	AL["Sandbox Tiger"] = "摇摇虎";
	AL["Center of Attention"] = "众人瞩目";
	AL["Foam Sword Rack"] = "泡沫塑料剑架";

	-- Ninth set
	AL["Fields of Honor"] = "荣耀之地";
	AL["Path of Cenarius"] = "塞纳留斯之路";
	AL["Pinata"] = "皮纳塔";
	AL["El Pollo Grande"] = "魔法公鸡";

	-- Tenth set
	AL["Scourgewar"] = "天灾战争";
	AL["Tiny"] = "袖珍迅猛龙";
	AL["Tuskarr Kite"] = "海象人风筝";
	AL["Spectral Kitten"] = "幽灵虎宝宝";

	-- Eleventh set
	AL["Wrathgate"] = "天谴之门";
	AL["Statue Generator"] = "雕像生成器";
	AL["Landro's Gift"] = "兰德鲁的礼物";
	AL["Blazing Hippogryph"] = "炽焰角鹰兽";

	-- Twelvth set
	AL["Icecrown"] = "冰冠冰川";
	AL["Wooly White Rhino"] = "白毛犀牛";
	AL["Ethereal Portal"] = "传送石";
	AL["Paint Bomb"] = "彩弹";

	-- Thirtheenth set
	AL["Worldbreaker"] = "灭世者";
	AL["Mottled Drake"] = "斑纹幼龙";
	AL["Grim Campfire"] = "幽暗的营火";
	AL["Landro's Lil' XT"] = "兰铎的小拆";

	-- Fourteenth set
	AL["War of the Elements"] = "元素之战";

	-- Fifteenth set
	AL["Twilight of the Dragons"] = "巨龙暮光";

	-- Seventeenth set
	AL["Crown of Heaven"] = "苍穹之冠";

	-- Eighteenth set
	AL["Tomb of the Forgotten"] = "遗忘之墓";

	-- Nineteenth set
	AL["War of the Ancients"] = "时空行者：上古之战";

	-- Twentieth set
	AL["Betrayal of the Guardian"] = "守护者的背叛";

	-- Battleground Brackets
	AL["Old PvP Rewards"] = "旧 PvP 奖励";
	AL["BG/Open PvP Rewards"] = "燃烧的远征/野外 PvP 奖励";
	AL["Misc. Rewards"] = "其它奖励";
	AL["Level %s Rewards"] = "等级%s奖励"; -- usage: string.format(AL["Level %s Rewards"], "60")

	-- Brood of Nozdormu Paths
	AL["Path of the Conqueror"] = "征服者之路";
	AL["Path of the Invoker"] = "祈求者之路";
	AL["Path of the Protector"] = "保护者之路";

	-- Violet Eye Paths
	AL["Path of the Violet Protector"] = "紫罗兰庇护者之路";
	AL["Path of the Violet Mage"] = "紫罗兰大法师之路";
	AL["Path of the Violet Assassin"] = "紫罗兰刺客之路";
	AL["Path of the Violet Restorer"] = "紫罗兰治愈者之路";

	-- Ashen Verdict Paths
	AL["Path of Courage"] = "勇气之路";
	AL["Path of Destruction"] = "毁灭之路";
	AL["Path of Vengeance"] = "复仇之路";
	AL["Path of Wisdom"] = "智慧之路";

	-- AQ Opening Event
	AL["Red Scepter Shard"] = "红色节杖碎片";
	AL["Blue Scepter Shard"] = "蓝色节杖碎片";
	AL["Green Scepter Shard"] = "绿色节杖碎片";
	AL["Scepter of the Shifting Sands"] = "流沙节杖";

	-- World PvP
	AL["Hellfire Fortifications"] = "地狱火半岛的工事";
	AL["Twin Spire Ruins"] = "双塔废墟";
	AL["Spirit Towers"] = "灵魂之塔";
	AL["Halaa"] = "哈兰";
	AL["Venture Bay"] = "风险湾";

	-- Karazhan Opera Event Headings
	AL["Wizard of Oz"] = "绿野仙踪";
	AL["Red Riding Hood"] = "小红帽";

	-- Karazhan Animal Boss Types
	AL["Spider"] = "蜘蛛";
	AL["Darkhound"] = "黑暗猎犬";
	AL["Bat"] = "蝙蝠";

	-- AQ20 Tokens
	AL["Qiraji Ornate Hilt"] = "其拉装饰刀柄";
	AL["Qiraji Martial Drape"] = "其拉军用披风";
	AL["Qiraji Magisterial Ring"] = "其拉将领戒指";
	AL["Qiraji Ceremonial Ring"] = "其拉典礼戒指";
	AL["Qiraji Regal Drape"] = "其拉帝王披风";
	AL["Qiraji Spiked Hilt"] = "其拉尖刺刀柄";

	-- AQ40 Tokens
	AL["Qiraji Bindings of Dominance"] = "其拉统御腕轮";
	AL["Qiraji Bindings of Command"] = "其拉命令腕轮";
	AL["Vek'nilash's Circlet"] = "维克尼拉斯的头饰";
	AL["Vek'lor's Diadem"] = "维克洛尔的王冠";
	AL["Ouro's Intact Hide"] = "奥罗的外皮";
	AL["Skin of the Great Sandworm"] = "巨型沙虫的皮";
	AL["Husk of the Old God"] = "上古之神的外鞘";
	AL["Carapace of the Old God"] = "上古之神的甲壳";

	-- Faction related strings
	AL["Neutral"] = "中立";
	AL["Friendly"] = "友善";
	AL["Honored"] = "尊敬";
	AL["Revered"] = "崇敬";
	AL["Exalted"] = "崇拜";
	AL["Best Friend"] = "挚友";
	AL["Rank %d"] = "%d级";
	AL["Winterfin Retreat"] = "冬鳞避难所";

	-- Recipe origin strings
	AL["Crafted"] = "制造";
	AL["Discovery"] = "领悟";
	AL["Drop"] = "掉落";
	AL["Fished From"] = "钓鱼从";
	AL["Trainer"] = "训练师";
	AL["Vendor"] = "商人";
	AL["World Drop"] = "世界掉落";

	-- Specs
	AL["Tanking"] = "坦克";
	AL["DPS"] = "DPS";

	-- NPCs missing from BabbleBoss
	AL["Trash Mobs"] = "普通怪物";
	--- Classic WoW
	AL["Dungeon Set 2 Summonable"] = "地下城套装2任务首领";
	AL["Theldren"] = "塞尔德林";
	AL["Sothos and Jarien"] = "索托斯/亚雷恩";
	AL["Druid of the Fang"] = "尖牙德鲁伊";
	AL["Defias Strip Miner"] = "迪菲亚赤膊矿工";
	AL["Defias Overseer/Taskmaster"] = "迪菲亚监工/工头";
	AL["Scarlet Trainee"] = "血色预备兵";
	AL["Shadowforge Flame Keeper"] = "暗炉持火者";
	AL["Crimson Sorcerer"] = "红衣法术师";
	AL["Thuzadin Shadowcaster"] = "图萨丁暗影法师";
	AL["Crimson Inquisitor"] = "红衣审查者";
	AL["Crimson Battle Mage"] = "红衣战斗法师";
	AL["Ghoul Ravener"] = "食尸抢夺者";
	AL["Spectral Citizen"] = "鬼魂市民";
	AL["Scholomance Adept"] = "通灵学院专家";
	AL["Scholomance Dark Summoner"] = "通灵学院黑暗召唤师";
	AL["Blackhand Elite"] = "黑手精英";
	AL["Firebrand Pyromancer"] = "火印炎术师";
	AL["Firebrand Invoker"] = "火印祈求者";
	AL["Firebrand Grunt"] = "火印步兵";
	AL["Firebrand Legionnaire"] = "火印军团战士";
	AL["Spirestone Warlord"] = "尖石军阀";
	AL["Spirestone Mystic"] = "尖石秘法师";
	AL["Anvilrage Captain"] = "铁怒上尉";
	AL["Anvilrage Marshal"] = "铁怒队长";
	AL["Doomforge Arcanasmith"] = "厄炉魔匠";
	AL["Weapon Technician"] = "武器技师";
	AL["Doomforge Craftsman"] = "厄炉工匠";
	AL["Murk Worm"] = "黑暗虫";
	AL["Scarshield Quartermaster"] = "裂盾军需官";
	AL["Knot Thimblejack"] = "诺特·希姆加克";
	AL["Shen'dralar Provisioner"] = "辛德拉圣职者";
	AL["The Nameles Prophet"] = "无名预言者";
	AL["Rajaxx's Captains"] = "拉贾克斯的副官";
	AL["Razorfen Spearhide"] = "剃刀沼泽刺鬃守卫";
	AL["Felsteed"] = "地狱战马";
	AL["Master Elemental Shaper Krixix"] = "大元素师克里希克";
	AL["Rotted One"] = "腐烂者";
	AL["Tex Vortacoil"]  = "特克斯·垂旋";
	AL["Sprinkle Noggenfogger"]  = "斯宾科尔·诺格弗格";
	--- Burning Crusade
	AL["Avatar of the Martyred"] = "殉难者的化身";
	AL["Nexus Stalker"] = "节点潜行者";
	AL["Auchenai Monk"] = "奥金尼僧侣";
	AL["Cabal Fanatic"] = "秘教狂热者";
	AL["Unchained Doombringer"] = "摆脱束缚的厄运使者";
	AL["Aether-tech Assistant"] = "以太技师助理";
	AL["Aether-tech Adept"] = "资深以太技师";
	AL["Aether-tech Master"] = "高级以太技师";
	AL["Thomas Yance"] = "托马斯·杨斯";
	AL["Raging Skeleton"] = "暴怒的骷髅";
	AL["Ethereal Priest"] = "虚灵牧师";
	AL["Sethekk Ravenguard"] = "塞泰克鸦人卫士";
	AL["Time-Lost Shadowmage"] = "迷失的暗影法师";
	AL["Coilfang Sorceress"] = "盘牙巫师";
	AL["Coilfang Oracle"] = "盘牙先知";
	AL["Shattered Hand Centurion"] = "碎手百夫长";
	AL["Eredar Deathbringer"] = "艾瑞达死亡使者";
	AL["Arcatraz Sentinel"] = "禁魔监狱斥候";
	AL["Gargantuan Abyssal"] = "巨型深渊火魔";
	AL["Sunseeker Botanist"] = "寻日者植物学家";
	AL["Sunseeker Astromage"] = "寻日者星术师";
	AL["Durnholde Rifleman"] = "敦霍尔德火枪手";
	AL["Rift Keeper/Rift Lord"] = "裂隙守卫者/领主";
	AL["Don Carlos"] = "卡洛斯";
	AL["Aged Dalaran Wizard"] = "老迈的达拉然巫师";
	AL["Shattered Hand Executioner"] = "碎手斩杀者";
	AL["Servant's Quarter Animal Bosses"] = "仆役宿舍动物首领";
	AL["Wyrmcult Provisioner"]  = "拜龙教补给者";
	--- Wrath of the Lich King
	AL["Olut Alegut"]  = "奥鲁特·埃雷古";
	AL["Rork Sharpchin"]  = "洛尔克·锐须";
	--- Cataclysm
	AL["Zen'Vorka"] = "赞沃卡";
	AL["Ayla Shadowstorm"] = "艾拉·影暴";
	AL["Damek Bloombeard"] = "达默克·冲炉";
	AL["Varlan Highbough"] = "瓦尔兰·高枝";
	AL["Firestone Vendor"] = "火石结晶商人";
	AL["Baradin Fox"]  = "巴拉丁狐狸";
	--- Mists of Pandaria
	AL["Uncle Bigpocket"] = "表叔大口袋";
	AL["Auntie Stormstout"] = "风暴烈酒大婶";
	AL["Luo Luo"] = "洛洛";
	AL["Meng Meng"] = "萌萌";
	AL["Moonfang"] = "月牙";
	AL["Ongrom Black Tooth"] = "奥格罗姆·黑牙";
	AL["Proveditor Grantley"] = "普凡迪特·格兰特利";
	--- World Events
	AL["Crimson Templar"] = "赤红圣殿骑士";
	AL["Azure Templar"] = "碧蓝圣殿骑士";
	AL["Hoary Templar"] = "苍白圣殿骑士";
	AL["Earthen Templar"] = "土色圣殿骑士";
	AL["The Duke of Cynders"] = "灰烬公爵";
	AL["The Duke of Fathoms"] = "深渊公爵";
	AL["The Duke of Zephyrs"] = "微风公爵";
	AL["The Duke of Shards"] = "碎石公爵";
	AL["Templars"] = "圣殿骑士";
	AL["Dukes"] = "公爵";
	AL["High Council"] = "议会高层";
	AL["Smokywood Pastures Vendor"] = "烟林牧场商人";
	AL["Bash'ir Landing Stasis Chambers"] = "巴什伊尔码头静止间";
	AL["Battle Pet Trainer"] = "宠物对战训练师";

	-- Zone related strings
	AL["Azeroth"] = "艾泽拉斯";
	AL["Blackrock Mountain"] = "黑石山";
	AL["Caverns of Time"] = "时光之穴";
	AL["Crusader's Square"] = "十字军广场";
	AL["Darkmoon Island"] = "暗月岛";
	AL["East"] = "东";
	AL["Halfhill Farm"] = "半山农场";
	AL["North"] = "北";
	AL["The Gauntlet"] = "街巷";
	AL["Trial of the Grand Crusader"] = "大十字军的试炼";
	AL["West"] = "西";

	-- Shortcuts for Bossname files
	AL["Avatar"] = "殉难者的化身";

	-- Chests, etc
	AL["Father Flame"] = "烈焰之父";
	AL["The Grim Guzzler"] = "黑铁酒吧";
	AL["The Secret Safe"] = "秘密保险箱";
	AL["The Vault"] = "黑色宝库";
	AL["Ogre Tannin Basket"] = "食人魔鞣酸篮";
	AL["Unfinished Painting"] = "未完成的油画";
	AL["Felvine Shard"] = "魔藤碎片";
	AL["Gift of Adoration"] = "爱慕的礼物";
	AL["Treat Bag"] = "糖果包";
	AL["The Cache of Madness"] = "疯狂之缘";
	AL["Timed Reward Chest"] = "限时击杀宝箱奖励";
	AL["Timed Reward Chest 1"] = "限时击杀宝箱奖励1";
	AL["Timed Reward Chest 2"] = "限时击杀宝箱奖励2";
	AL["Timed Reward Chest 3"] = "限时击杀宝箱奖励3";
	AL["The Talon King's Coffer"] = "利爪之王的宝箱";
	AL["Krom Stoutarm's Chest"] = "克罗姆·粗臂的箱子";
	AL["Garrett Family Chest"] = "加勒特的宝箱";
	AL["Reinforced Fel Iron Chest"] = "强化魔铁箱";
	AL["DM North Tribute Chest"] = "厄运之槌北区贡品";
	AL["The Saga of Terokk"] = "泰罗克的传说";
	AL["First Fragment Guardian"] = "第一块碎片的守护者";
	AL["Second Fragment Guardian"] = "第二块碎片的守护者";
	AL["Third Fragment Guardian"] = "第三块碎片的守护者";
	AL["Overcharged Manacell"] = "超载的魔法晶格";
	AL["Shellfish Trap"] = "贝壳陷阱";
	AL["Fishing Pools"] = "钓鱼场所";
	AL["Timeless Chest"] = "永恒宝箱";

	-- Blizzard Promotions
	AL["Annual Pass"] = "年卡";
	AL["Scroll of Resurrection"] = "复活卷轴";
	AL["Recruit-A-Friend"] = "战友招募";

	-- Error Messages and warnings
	AL["AtlasLoot Error!"] = "AtlasLoot 发生错误！";
	AL["WishList Full!"] = "愿望列表已满！";
	AL["No match found for"] = "未找到物品";
	AL[" is safe."] = " 是安全的。";
	AL["Server queried for "] = "已向服务器申请查询";
	AL[".  Right click on any other item to refresh the loot page."] = "。右击其它物品可刷新掉落页面。";

	-- Incomplete Table Registry error message
	AL[" not listed in loot table registry, please report this message to the AtlasLoot forums at http://www.atlasloot.net"] = " 没有被列出掉落表格，请将该错误信息发送到 AtlasLoot 官方论坛：http://www.atlasloot.net。";

	-- LoD Module disabled or missing
	AL[" is unavailable, the following load on demand module is required: "] = " 不可用，需要以下需求时载入型模块：";

	-- LoD Module load sequence could not be completed
	AL["Status of the following module could not be determined: "] = "下列模块状态无法确定：";

	-- LoD Module required has loaded, but loot table is missing
	AL[" could not be accessed, the following module may be out of date: "] = " 无法进行操作，以下模块可能已过期：";

	-- LoD module not defined
	AL["Loot module returned as nil!"] = "掉落模块不存在！";

	-- LoD module loaded successfully
	AL["sucessfully loaded."] = "已成功加载。";

	-- Need a big dataset for searching
	AL["Loading available tables for searching"] = "在已载入的物品数据中进行搜索";

	-- All Available modules loaded
	AL["All Available Modules Loaded"] = "所有可用数据模块已加载";

	-- First time user
	AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences."] = "欢迎使用 AtlasLoot Enhanced。请用一点时间设置属性。";
	AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences for tooltips and links in the chat window.\n\n  This options screen can be reached again at any later time by typing '/atlasloot'."] = "欢迎使用 AtlasLoot Enhanced。请用一点时间设置提示和链接到聊天属性。\n\n 此选项窗口这可以输入“/atlasloot”后随时再次打开。";
	AL["Setup"] = "设置";

	-- Old Atlas Detected
	AL["It has been detected that your version of Atlas does not match the version that Atlasloot is tuned for ("] = "检测到正在使用的 Atlas 插件的版本与 AtlasLoot 需要的版本（";
	AL[").  Depending on changes, there may be the occasional error, so please visit http://www.atlasmod.com as soon as possible to update."] = "）不符。该情况下可能会频繁出现插件错误信息。鉴于此，请您立刻访问 http://www.atlasmod.com 更新您的 Atlas 版本。";
	AL["OK"] = "确定";
	AL["Incompatible Atlas Detected"] = "检测到不兼容的 Atlas";

	-- Unsafe item tooltip
	AL["Unsafe Item"] = "不安全物品";
	AL["This item is not available on your server or your battlegroup yet."] = "此物品在你的服务器或战场分组还未被检测到。";
	AL["You can right-click to attempt to query the server.  You may be disconnected."] = "您可以右键点击该物品以向服务器查询。可能会与服务器断开连接。";
end
