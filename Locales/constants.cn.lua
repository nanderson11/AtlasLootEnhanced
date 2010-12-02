﻿-- AtlasLoot zhCN constants file
-- $Id: constants.cn.lua 2875 2010-10-15 09:07:01Z celellach $

--Create the library instance
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");

local AL = AceLocale:NewLocale("AtlasLoot", "zhCN", false);

if AL then
	-- Text strings for UI objects
	--AL["AtlasLoot"] = true;
	AL["No match found for"] = "未找到物品";
	AL["Search"] = "搜索";
	AL["Clear"] = "重置";
	AL["Select Loot Table"] = "选择掉落表";
	AL["Select Sub-Table"] = "选择二级表";
	AL["Drop Rate: "] = "掉落率: ";
	AL["DKP"] = "DKP";
	AL["Priority:"] = "优先: ";
	AL["Click boss name to view loot."] = "点击首领名以浏览掉落";
	AL["Various Locations"] = "多个位置";
	AL["This is a loot browser only.	To view maps as well, install either Atlas or Alphamap."] = "这只是个掉落浏览器，如果要同时查看地图，请安装Atlas或者Alphamap";
	AL["Toggle AL Panel"] = "AtlasLoot 面板";
	AL[" is safe."] = "的连接是安全的。";
	AL["Server queried for "] = "已向服务器申请查询";
	AL[".	Right click on any other item to refresh the loot page."] = "。右键点击其他物品可刷新物品列表。";
	AL["Back"] = "返回";
	AL["Level 60"] = "等级 60";
	AL["Level 70"] = "等级 70";
	AL["Level 80"] = "等级 80";
	AL["|cffff0000(unsafe)"] = "|cffff0000(不安全)";
	AL["Misc"] = "其他";
	AL["Rewards"] = "奖励";
	AL["Heroic Mode"] = "英雄模式";
	AL["Normal Mode"] = "普通模式";
	AL["Show 10 Man Loot"] = "显示10人掉落";
	AL["Show 25 Man Loot"] = "显示25人掉落";
	AL["10 Man"] = "10人";
	AL["25 Man"] = "25人";
	AL["Raid"] = "团队";
	AL["Choose Table ..."] = "请选择……";
	AL["Close Menu"] = "关闭";
	AL["Unknown"] = "未知";
	AL["Skill Required:"] = "需要技能：";
	AL["QuickLook"] = "快捷浏览";
	AL["Add to QuickLooks:"] = "添加到快捷浏览";
	AL["Rating:"] = "等级";
	AL["Query Server"] = "查询物品";
	AL["Classic Instances"] = "旧大陆副本";
	AL["BC Instances"] = "燃烧的远征副本";
	AL["WotLK Instances"] = "巫妖王之怒副本";
	AL["Burning Crusade"] = "燃烧的远征";
	AL["Entrance"] = "入口";
	AL["Reset Frames"] = "重置框体";
	AL["Reset Wishlist"] = "重置需求表";
	AL["Reset Quicklooks"] = "重置快速访问";
	AL["Select a Loot Table..."] = "选择掉落表";
	AL["OR"] = "或";
	AL["Wrath of the Lich King"] = "巫妖王之怒";
	AL["FuBar Options"] = "FuBar选项";
	AL["Attach to Minimap"] = "附着在小地图";
	AL["Hide FuBar Plugin"] = "隐藏FuBar插件";
	AL["Show FuBar Plugin"] = "显示FuBar插件";
	AL["Position:"] = "位置:";
	AL["Left"] = "左";
	AL["Center"] = "中";
	AL["Right"] = "右";
	AL["Hide Text"] = "隐藏文本";
	AL["Hide Icon"] = "隐藏图标";
	AL["Minimap Button Options"] = "小地图按钮选项";
	AL["Bonus Loot"] = "奖励掉落";

	-- Text for Options Panel
	AL["Atlasloot Options"] = "Atlasloot 设置";
	AL["Safe Chat Links"] = "使用安全物品连接";
	AL["Default Tooltips"] = "默认提示样式";
	AL["Lootlink Tooltips"] = "Lootlink 提示样式";
	AL["|cff9d9d9dLootlink Tooltips|r"] = "|cff9d9d9dLootlink 提示样式";
	AL["ItemSync Tooltips"] = "ItemSync 提示样式";
	AL["|cff9d9d9dItemSync Tooltips|r"] = "|cff9d9d9dItemSync 提示样式|r";
	AL["Use EquipCompare"] = "使用装备对比";
	AL["|cff9d9d9dUse EquipCompare|r"] = "|cff9d9d9d使用装备对比|r";
	AL["Show Comparison Tooltips"] = "显示装备对比";
	AL["Make Loot Table Opaque"] = "禁用物品列表背景透明";
	AL["Show itemIDs at all times"] = "永远显示物品ID";
	AL["Hide AtlasLoot Panel"] = "隐藏 AtlasLoot 面板";
	AL["Show Basic Minimap Button"] = "显示小地图图标";
	AL["|cff9d9d9dShow Basic Minimap Button|r"] = "设置小地图图标位置";
	AL["Set Minimap Button Position"] = "设置小地图按钮位置";
	AL["Suppress Item Query Text"] = "查询物品时不显示提示信息";
	AL["Notify on LoD Module Load"] = "当物品数据模块载入时进行提示";
	AL["Load Loot Modules at Startup"] = "在启动时载入所有物品数据模块";
	AL["Loot Browser Scale: "] = "掉落浏览器比例：";
	AL["Button Position: "] = "按钮位置:";
	AL["Button Radius: "] = "按钮半径:";
	AL["Done"] = "确定";
	AL["FuBar Toggle"] = "FuBar开关";
	AL["WishList"] = "装备需求表";
	AL["Search Result: %s"] = "搜索结果：%s";
	AL["Last Result"] = "上次搜索";
	AL["Search on"] = "搜索于";
	AL["All modules"] = "全部模块";
	AL["If checked, AtlasLoot will load and search across all the modules."] = "如果选中，AtlasLoot会载入并扫描所有的模块。";
	AL["Search options"] = "搜索选项";
	AL["Partial matching"] = "部分匹配";
	AL["If checked, AtlasLoot search item names for a partial match."] = "如果选中，AtlasLoot会将输入文字作为物品名称的一部分进行匹配。";
	AL["You don't have any module selected to search on!"] = "你没有选择任何用于搜索的模块。";
	-- The next 4 lines are the tooltip for the Server Query Button
	-- The translation doesn't have to be literal, just re-write the
	-- sentences as you would naturally and break them up into 4 roughly
	-- equal lines.
	AL["Queries the server for all items"] = "向服务器查询本页";
	AL["on this page. The items will be"] = "中的所有物品链接";
	AL["refreshed when you next mouse"] = "物品将会在鼠标";
	AL["over them."] = "下次滑过时刷新";
	AL["The Minimap Button is generated by the FuBar Plugin."] = "小地图按钮是由FuBar插件生成的";
	AL["This is automatic, you do not need FuBar installed."] = "这是自动的，你不需要安装FuBar插件";

	-- Slash commands
	AL["reset"] = "reset";
	AL["options"] = "options";
	AL["Reset complete!"] = "重置完成";

	-- Error Messages and warnings
	AL["AtlasLoot Error!"] = "AtlasLoot 发生错误！";
	AL["WishList Full!"] = "装备需求表已满！";
	AL[" added to the WishList."] = " 被添加到装备需求表";
	AL[" already in the WishList!"] = " 已经在装备需求表里了";
	AL[" deleted from the WishList."] = " 已从装备需求表删除";

	--Incomplete Table Registry error message
	AL[" not listed in loot table registry, please report this message to the AtlasLoot forums at http://www.atlasloot.net"] = "没有被列出，请将该错误信息发送到 AtlasLoot 官方论坛：http://www.atlasloot.net。";

	--LoD Module disabled or missing
	AL[" is unavailable, the following load on demand module is required: "] = "不可用，需要以下需求时载入型模块：";

	--LoD Module load sequence could not be completed
	AL["Status of the following module could not be determined: "] = "以下模块的类型不可被确定：";

	--LoD Module required has loaded, but loot table is missing
	AL[" could not be accessed, the following module may be out of date: "] = "无法进行操作，以下模块可能已过期：";

	--LoD module not defined
	AL["Loot module returned as nil!"] = "掉落模块不存在";

	--LoD module loaded successfully
	AL["sucessfully loaded."] = "已成功载入";

	--Need a big dataset for searching
	AL["Loading available tables for searching"] = "在已载入的物品数据中进行搜索";

	--All Available modules loaded
	AL["All Available Modules Loaded"] = "所有可用数据模块已载入";

	--Minimap Button
	AL["|cff1eff00Left-Click|r Browse Loot Tables"] = "|cff1eff00单击|r 浏览掉落表";
	AL["|cffff0000Right-Click|r View Options"] = "|cffff0000右键点击|r 进行设置";
	AL["|cffff0000Shift-Click|r View Options"] = "|cffff0000Shift-单击|r 进行设置";
	AL["|cffccccccLeft-Click + Drag|r Move Minimap Button"] = "|cffcccccc左键拖动|r 移动小地图按钮";
	AL["|cffccccccRight-Click + Drag|r Move Minimap Button"] = "|cffcccccc右键拖动|r 移动小地图按钮";

	--AtlasLoot Panel
	AL["Options"] = "设置";
	AL["Collections"] = "套装/收藏";
	AL["Factions"] = "阵营";
	AL["World Events"] = "世界事件";
	AL["Load Modules"] = "载入所有数据";
	AL["Crafting"] = "制造的物品";
	AL["Crafting Daily Quests"] = "交易技能日常任务";
	
	--First time user
	AL["Welcome to Atlasloot Enhanced.	Please take a moment to set your preferences."] = "欢迎使用 Atlasloot Enhanced，请花少许时间进行参数设置";
	AL["Welcome to Atlasloot Enhanced.	Please take a moment to set your preferences for tooltips and links in the chat window.\n\n	This options screen can be reached again at any later time by typing '/atlasloot'."] = "欢迎使用 Atlasloot Enhanced。请花少许时间进来设置提示与物品连接的方式。\n\n	以后可以输入“/atlasloot”再次显示该设置窗口。";
	AL["Setup"] = "设置";

	--Old Atlas Detected
	AL["It has been detected that your version of Atlas does not match the version that Atlasloot is tuned for ("] = "AtlasLoot 检测到您正在使用的 Atlas 插件的版本与 AtlasLoot 需要的版本（";
	AL[").	Depending on changes, there may be the occasional error, so please visit http://www.atlasmod.com as soon as possible to update."] = "）不符。该情况下可能会频繁出现插件错误信息。鉴于此，请您立刻访问 http://www.atlasmod.com 或 http://www.dreamgen.cn 更新您的 Atlas 版本。";
	AL["OK"] = "确定";
	AL["Incompatible Atlas Detected"] = "检测到不兼容的 Atlas";

	--Unsafe item tooltip
	AL["Unsafe Item"] = "不安全的物品";
	AL["Item Unavailable"] = "物品不可用";
	AL["ItemID:"] = "itemID: ";
	AL["This item is not available on your server or your battlegroup yet."] = "该物品尚未在你所在的服务器或战场组中出现。";
	AL["This item is unsafe.	To view this item without the risk of disconnection, you need to have first seen it in the game world. This is a restriction enforced by Blizzard since Patch 1.10."] = "该物品连接不安全。若想得知此物品的属性又想避免掉线问题，您需要在游戏内见过一次该物品。这是暴雪在1.10版本中做出的强制性改动。";
	AL["You can right-click to attempt to query the server.	You may be disconnected."] = "您可以右键点击该物品以向服务器查询，但这样做有可能会与服务器断开连接。";

	--Misc Inventory related words
	AL["Scope"] = "瞄准镜";
	AL["Darkmoon Faire Card"] = "暗月马戏团卡片";
	AL["Banner"] = "旗帜";
	AL["Set"] = "套装";
	AL["Token"] = "兑换物";
	AL["Tokens"] = "兑换物";
	AL["Skinning Knife"] = "剥皮刀";
	AL["Combat Pet"] = "战斗宠物";
	AL["Fireworks"] = "焰火";

	--Extra inventory stuff
	AL["Cloak"] = "披风";
	AL["Weapons"] = "武器";

	--Alchemy
	AL["Battle Elixirs"] = "战斗药剂";
	AL["Guardian Elixirs"] = "守护药剂";
	AL["Potions"] = "药水";
	AL["Transmutes"] = "转化";
	AL["Flasks"] = "药剂";

	--Enchanting
	AL["Enchant Boots"] = "附魔脚部";
	AL["Enchant Bracer"] = "附魔护腕";
	AL["Enchant Chest"] = "附魔胸部";
	AL["Enchant Cloak"] = "附魔斗篷";
	AL["Enchant Gloves"] = "附魔手套";
	AL["Enchant Ring"] = "附魔戒指";
	AL["Enchant Shield"] = "附魔盾牌";
	AL["Enchant 2H Weapon"] = "附魔双手武器";
	AL["Enchant Weapon"] = "附魔武器";

	--Inscription
	AL["Major Glyph"] = "大型雕文";
	AL["Minor Glyph"] = "小型雕文";
	AL["Scrolls"] = "卷轴";
	AL["Off-Hand Items"] = "副手物品";
	AL["Reagents"] = "材料";

	--Leatherworking
	AL["Leather Armor"] = "皮甲";
	AL["Mail Armor"] = "锁甲";
	AL["Cloaks"] = "斗篷";
	AL["Item Enhancements"] = "物品强化";
	AL["Quivers and Ammo Pouches"] = "箭袋和弹药袋";
	AL["Drums, Bags and Misc."] = "鼓、包等";

	--Tailoring
	AL["Cloth Armor"] = "布甲";
	AL["Shirts"] = "衬衫";
	AL["Bags"] = "包";

	--Labels for loot descriptions
	AL["Classes:"] = "职业:";
	AL["This Item Begins a Quest"] = "将触发一个任务";
	AL["Quest Item"] = "任务物品";
	AL["Quest Reward"] = "任务奖励";
	AL["Shared"] = "共享掉落";
	AL["Unique"] = "唯一";
	AL["Right Half"] = "右半部分";
	AL["Left Half"] = "左半部分";
	AL["28 Slot Soul Shard"] = "28格灵魂袋";
	AL["20 Slot"] = "20格";
	AL["18 Slot"] = "18格";
	AL["16 Slot"] = "16格";
	AL["10 Slot"] = "10格";
	AL["(has random enchantment)"] = "(随机附魔)";
	AL["Currency"] = "用以购买奖励";
	AL["Card Game Item"] = "卡片游戏奖品";
	AL["Tier 1"] = "T1";
	AL["Tier 2"] = "T2";
	AL["Tier 4"] = "T4";
	AL["Tier 5"] = "T5";
	AL["Tier 6"] = "T6";
	AL["Tier 7"] = "T7";
	AL["Tier 8"] = "T8";
	AL["10/25 Man"] = "10/25人";
	AL["Arena Reward"] = "竞技场奖励";
	AL["Conjured Item"] = "魔法制造的物品";
	AL["Used to summon boss"] = "用以召唤首领";
	AL["Phase 1"] = "第一阶段";
	AL["Phase 2"] = "第二阶段";
	AL["Phase 3"] = "第三阶段";
	AL["Fire"] = "火";
	AL["Water"] = "水";
	AL["Wind"] = "风";
	AL["Earth"] = "地";
	AL["Master Angler"] = "钓鱼大师";
	AL["First Prize"] = "第一名奖励";
	AL["Rare Fish Rewards"] = "稀有鱼种奖励";
	AL["Rare Fish"] = "稀有鱼种";
	AL["Tradable for sunmote + item above"] = "用太阳之尘和上个物品兑换得到";
	AL["Rare"] = "稀有";
	AL["Heroic"] = "英雄模式";
	AL["Hard Mode"] = "困难模式";
	AL["Summon"] = "召唤";
	AL["Random"] = "随机";
	AL["Weapons"] = "武器";
	AL["Achievement"] = "成就";
	AL["Heirloom"] = "传家宝";

	--Darkmoon Faire
	AL["Darkmoon Faire Rewards"] = "暗月马戏团奖励";
	AL["Low Level Decks"] = "低级卡片";
	--AL["Level 60 Trinkets"] = true;
	--AL["Level 70 Trinkets"] = true;
	--AL["Level 60 & 70 Trinkets"] = true;
	--AL["Level 80 Trinkets"] = true;
	--AL["Level 85 Trinkets"] = true;

	--Argent Tournament
	AL["Argent Tournament"] = "银色锦标赛";

	-- Daily Quest
--	AL["Jewelcrafting Daily"] = true;
--	AL["Cooking Daily"] = true;
	
	--Card Game Decks and descriptions
	AL["Loot Card Items"] = "刮刮卡奖品";
	AL["UDE Items"] = "UDE积分奖品";

	-- First set
	AL["Heroes of Azeroth"] = "艾泽拉斯英雄传";
	AL["Landro Longshot"] = "远射兰铎";
	AL["Thunderhead Hippogryph"] = "雷首角鹰兽";
	AL["Saltwater Snapjaw"] = "海水钳嘴龟";

	-- Second set
	--AL["Through The Dark Portal"] = true;
	AL["King Mukla"] = "穆克拉";
	AL["Rest and Relaxation"] = "休息与放松";
	AL["Fortune Telling"] = "算命";

	-- Third set
	--AL["Fires of Outland"] = true;
	AL["Spectral Tiger"] = "幽灵虎";
	--AL["Gone Fishin'"] = true;
	AL["Goblin Gumbo"] = "地精杂烩";

	-- Fourth set
	--AL["March of the Legion"] = true;
	AL["Kiting"] = "风筝";
	AL["Robotic Homing Chicken"] = "自动导航机器小鸡";
	AL["Paper Airplane"] = "纸飞机";

	-- Fifth set
	--AL["Servants of the Betrayer"] = true;
	AL["X-51 Nether-Rocket"] = "X-51虚空火箭";
	AL["Personal Weather Machine"] = "个人天气制造机";
	AL["Papa Hummel's Old-fashioned Pet Biscuit"] = "修默老爹的宠物饼干";

	-- Sixth set
	--AL["Hunt for Illidan"] = true;
	AL["The Footsteps of Illidan"] = "伊利丹的脚步";
	--AL["Disco Inferno!"] = true;
	--AL["Ethereal Plunderer"] = true;

	-- Seventh set
	--AL["Drums of War"] = true;
	--AL["The Red Bearon"] = true;
	--AL["Owned!"] = true;
	--AL["Slashdance"] = true;

	-- Eighth set
	--AL["Blood of Gladiators"] = true;
	--AL["Sandbox Tiger"] = true;
	--AL["Center of Attention"] = true;
	--AL["Foam Sword Rack"] = true;

	--Battleground Brackets
	AL["Misc. Rewards"] = "其他奖励";
	AL["Level 20-29 Rewards"] = "等级20-29奖励";
	AL["Level 30-39 Rewards"] = "等级30-39奖励";
	AL["Level 20-39 Rewards"] = "等级20-39奖励";
	AL["Level 40-49 Rewards"] = "等级40-49奖励";
	AL["Level 60 Rewards"] = "等级60奖励";

	--Brood of Nozdormu Paths
	AL["Path of the Conqueror"] = "征服者之路";
	AL["Path of the Invoker"] = "祈求者之路";
	AL["Path of the Protector"] = "保护者之路";

	--Violet Eye Paths
	AL["Path of the Violet Protector"] = "紫罗兰庇护者之路";
	AL["Path of the Violet Mage"] = "紫罗兰大法师之路";
	AL["Path of the Violet Assassin"] = "紫罗兰刺客之路";
	AL["Path of the Violet Restorer"] = "紫罗兰治愈者之路";

	--AQ Opening Event
	AL["Red Scepter Shard"] = "红色节杖碎片";
	AL["Blue Scepter Shard"] = "蓝色节杖碎片";
	AL["Green Scepter Shard"] = "绿色节杖碎片";
	AL["Scepter of the Shifting Sands"] = "流沙节杖";

	--World PvP
	AL["Hellfire Fortifications"] = "防御工事";
	AL["Twin Spire Ruins"] = "双塔废墟";
	AL["Spirit Towers"] = "灵魂之塔";
	AL["Halaa"] = "哈兰";
	AL["Venture Bay"] = "风险湾";

	--Karazhan Opera Event Headings
	AL["Shared Drops"] = "共享掉落";
	AL["Wizard of Oz"] = "绿野仙踪";
	AL["Red Riding Hood"] = "小红帽";

	--Karazhan Animal Boss Types
	AL["Spider"] = "蜘蛛";
	AL["Darkhound"] = "黑暗猎犬";
	AL["Bat"] = "蝙蝠";

	--ZG Tokens
	AL["Primal Hakkari Kossack"] = "原始哈卡莱套索";
	AL["Primal Hakkari Shawl"] = "原始哈卡莱披肩";
	AL["Primal Hakkari Bindings"] = "原始哈卡莱护腕";
	AL["Primal Hakkari Sash"] = "原始哈卡莱腰带";
	AL["Primal Hakkari Stanchion"] = "原始哈卡莱直柱";
	AL["Primal Hakkari Aegis"] = "原始哈卡莱之盾";
	AL["Primal Hakkari Girdle"] = "原始哈卡莱束带";
	AL["Primal Hakkari Armsplint"] = "原始哈卡莱护臂";
	AL["Primal Hakkari Tabard"] = "原始哈卡莱徽章";

	--AQ20 Tokens
	AL["Qiraji Ornate Hilt"] = "其拉装饰刀柄";
	AL["Qiraji Martial Drape"] = "其拉军用披风";
	AL["Qiraji Magisterial Ring"] = "其拉将领戒指";
	AL["Qiraji Ceremonial Ring"] = "其拉典礼戒指";
	AL["Qiraji Regal Drape"] = "其拉帝王披风";
	AL["Qiraji Spiked Hilt"] = "其拉尖刺刀柄";

	--AQ40 Tokens
	AL["Qiraji Bindings of Dominance"] = "其拉统御腕轮";
	AL["Qiraji Bindings of Command"] = "其拉命令腕轮";
	AL["Vek'nilash's Circlet"] = "维克尼拉斯的头饰";
	AL["Vek'lor's Diadem"] = "维克洛尔的王冠";
	AL["Ouro's Intact Hide"] = "奥罗的外皮";
	AL["Skin of the Great Sandworm"] = "巨型沙虫的皮";
	AL["Husk of the Old God"] = "上古之神的外鞘";
	AL["Carapace of the Old God"] = "上古之神的甲壳";

	--Vanilla WoW Sets
	AL["Zul'Gurub Rings"] = "祖尔格拉布戒指";

	--Recipe origin strings
	AL["Trainer"] = "训练师";
	AL["Discovery"] = "领悟";
	AL["World Drop"] = "世界掉落";
	AL["Drop"] = "掉落";
	AL["Vendor"] = "商人";
	AL["Crafted"] = "制造";

	--Level 80 PvP Weapons

	--Set Labels
	AL["Set: Embrace of the Viper"] = "套装：毒蛇的拥抱";
	AL["Set: Defias Leather"] = "套装：迪菲亚皮甲";
	AL["Set: The Gladiator"] = "套装：角斗士";
	AL["Set: Chain of the Scarlet Crusade"] = "套装：血色十字军链甲";
	AL["Set: The Postmaster"] = "套装：邮差";
	AL["Set: Necropile Raiment"] = "套装：骨堆";
	AL["Set: Cadaverous Garb"] = "套装：苍白";
	AL["Set: Bloodmail Regalia"] = "套装：血链";
	AL["Set: Deathbone Guardian"] = "套装：亡者之骨";
	AL["Set: Dal'Rend's Arms"] = "套装：雷德双刀";
	AL["Set: Spider's Kiss"] = "套装：蜘蛛之吻";
	AL["AQ40 Class Sets"] = "安其拉神殿职业套装";
	AL["AQ20 Class Sets"] = "安其拉废墟职业套装";
	AL["AQ Enchants"] = "安其拉掉落的附魔公式";
	AL["AQ Opening Quest Chain"] = "安其拉之门任务奖励";
	AL["Misc Sets"] = "其它套装";
	AL["Scholomance Sets"] = "通灵学院套装";
	AL["Crafted Sets"] = "制造出的套装";
	AL["Crafted Epic Weapons"] = "制造出的史诗武器";
	AL["ZG Class Sets"] = "祖尔格拉布职业套装";
	AL["ZG Enchants"] = "祖尔格拉布的附魔";
	AL["Dungeon Set 1"] = "地下城套装1";
	AL["Dungeon Set 2"] = "地下城套装2";
	AL["Dungeon Set 3"] = "地下城套装3";
	AL["PvP Misc"] = "PvP珠宝设计图";
	AL["PvP Rewards"] = "PvP奖励";
	AL["PvP Armor Sets"] = "PvP奖励套装";
	AL["PvP Weapons"] = "PvP奖励武器";
	AL["PvP Accessories"] = "PvP奖励杂物";
	AL["PvP Non-Set Epics"] = "PvP奖励非套装史诗级部件";
	AL["PvP Reputation Sets"] = "PvP声望套装";
	AL["Arena PvP Weapons"] = "竞技场奖励武器";
	AL["Arathi Basin Sets"] = "阿拉希盆地套装";
	AL["Class Books"] = "职业书籍";
	AL["Tribute Run"] = "贡品";
	AL["Dire Maul Books"] = "厄运之槌书籍";
	AL["Random Boss Loot"] = "首领随机掉落物品";
	AL["Epic Set"] = "史诗级套装";
	AL["Rare Set"] = "精良级套装";
	AL["Legendary Items"] = "传奇物品";
	AL["Accessories"] = "杂物";
	AL["Fire Resistance Gear"] = "火焰抗性装备";
	AL["Arcane Resistance Gear"] = "奥术抗性装备";
	AL["Nature Resistance Gear"] = "自然抗性装备";
	AL["Frost Resistance Gear"] = "冰霜抗性装备";
	AL["Shadow Resistance Gear"] = "暗影抗性装备";
	AL["BoE World Epics"] = "世界掉落的史诗装备";
	AL["Level 30-39"] = "等级 30-39";
	AL["Level 40-49"] = "等级 40-49";
	AL["Level 50-60"] = "等级 50-60";
	AL["BT Patterns/Plans"] = "黑暗神殿掉落的图纸";
	AL["Hyjal Summit Designs"] = "海加尔峰掉落的图纸";
	AL["SP Patterns/Plans"] = "太阳之井高地掉落图纸";
	AL["Additional Heroic Loot"] = "额外的英雄副本掉落";

	--Pets
	AL["Pets"] = "宠物";

	--Mounts
	AL["Card Game Mounts"] = "卡片游戏坐骑";
	AL["Crafted Mounts"] = "制造的坐骑";
	AL["Event Mounts"] = "世界事件坐骑";
	AL["PvP Mounts"] = "PvP坐骑";
	AL["Rare Mounts"] = "稀有坐骑";

	--Specs
	AL["Balance"] = "平衡";
	AL["Feral"] = "野性战斗";
	AL["Restoration"] = "回复";
	AL["Holy"] = "神圣";
	AL["Protection"] = "防护";
	AL["Retribution"] = "惩戒";
	AL["Shadow"] = "暗影";
	AL["Elemental"] = "元素";
	AL["Enhancement"] = "增强";
	AL["Fury"] = "狂怒";
	AL["Demonology"] = "恶魔";
	AL["Destruction"] = "毁灭";
	AL["Tanking"] = "坦克";
	--AL["DPS"] = true;

	--Naxx Zones
	AL["Construct Quarter"] = "构造区";
	AL["Arachnid Quarter"] = "蜘蛛区";
	AL["Military Quarter"] = "军事区";
	AL["Plague Quarter"] = "瘟疫区";
	AL["Frostwyrm Lair"] = "冰霜巨龙的巢穴";

	--NPCs missing from BabbleBoss
	AL["Trash Mobs"] = "普通怪物";
	AL["Dungeon Set 2 Summonable"] = "地下城套装2任务首领";
	AL["Theldren"] = "塞尔德林";
	AL["Sothos and Jarien"] = "索托斯/亚雷恩";
	AL["Druid of the Fang"] = "尖牙德鲁伊";
	AL["Defias Strip Miner"] = "迪菲亚赤膊矿工";
	AL["Defias Overseer/Taskmaster"] = "迪菲亚监工/工头";
	AL["Scarlet Defender/Myrmidon"] = "血色防御者/仆从";
	AL["Scarlet Champion"] = "血色勇士";
	AL["Scarlet Centurion"] = "血色百夫长";
	AL["Scarlet Trainee"] = "血色预备兵";
	AL["Herod/Mograine"] = "赫洛德/莫格莱尼";
	AL["Scarlet Protector/Guardsman"] = "血色保卫者/卫兵";
	AL["Shadowforge Flame Keeper"] = "暗炉持火者";
	AL["Shadow of Doom"] = "末日之影";
	AL["Bone Witch"] = "骨巫";
	AL["Lumbering Horror"] = "笨拙的憎恶";
	AL["Avatar of the Martyred"] = "殉难者的化身";
	AL["Nexus Stalker"] = "节点潜行者";
	AL["Auchenai Monk"] = "奥金尼僧侣";
	AL["Cabal Fanatic"] = "秘教狂热者";
	AL["Unchained Doombringer"] = "摆脱束缚的厄运使者";
	AL["Crimson Sorcerer"] = "红衣法术师";
	AL["Thuzadin Shadowcaster"] = "图萨丁暗影法师";
	AL["Crimson Inquisitor"] = "红衣审查者";
	AL["Crimson Battle Mage"] = "红衣战斗法师";
	AL["Ghoul Ravener"] = "食尸抢夺者";
	AL["Spectral Citizen"] = "鬼魂市民";
	AL["Spectral Researcher"] = "鬼灵研究员";
	AL["Scholomance Adept"] = "通灵学院专家";
	AL["Scholomance Dark Summoner"] = "通灵学院黑暗召唤师";
	AL["Blackhand Elite"] = "黑手精英";
	AL["Blackhand Assassin"] = "黑手刺客";
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
	AL["Atal'ai Witch Doctor"] = "阿塔莱巫医";
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
	AL["Crimson Templar"] = "赤红圣殿骑士";
	AL["Azure Templar"] = "碧蓝圣殿骑士";
	AL["Hoary Templar"] = "苍白圣殿骑士";
	AL["Earthen Templar"] = "土色圣殿骑士";
	AL["The Duke of Cynders"] = "灰烬公爵";
	AL["The Duke of Fathoms"] = "深渊公爵";
	AL["The Duke of Zephyrs"] = "微风公爵";
	AL["The Duke of Shards"] = "碎石公爵";
	AL["Aether-tech Assistant"] = "以太技师助理";
	AL["Aether-tech Adept"] = "资深以太技师";
	AL["Aether-tech Master"] = "高级以太技师";
	AL["Trelopades"] = "特雷洛帕兹";
	AL["King Dorfbruiser"] = "多弗布鲁瑟国王";
	AL["Gorgolon the All-seeing"] = "全视者格苟尔隆";
	AL["Matron Li-sahar"] = "里萨哈";
	AL["Solus the Eternal"] = "永恒者索鲁斯";
	AL["Balzaphon"] = "巴尔萨冯";
	AL["Lord Blackwood"] = "布莱克伍德公爵";
	AL["Revanchion"] = "雷瓦克安";
	AL["Scorn"] = "瑟克恩";
	AL["Sever"] = "塞沃尔";
	AL["Lady Falther'ess"] = "法瑟蕾丝夫人";
	AL["Smokywood Pastures Vendor"] = "烟林牧场商人";
	AL["Shartuul"] = "沙图尔";
	AL["Darkscreecher Akkarai"] = "黑暗尖啸者阿克卡莱";
	AL["Karrog"] = "卡尔洛格";
	AL["Gezzarak the Huntress"] = "猎手吉萨拉克";
	AL["Vakkiz the Windrager"] = "风怒者瓦克奇斯";
	AL["Terokk"] = "泰罗克";
	AL["Armbreaker Huffaz"] = "断臂者霍法斯";
	AL["Fel Tinkerer Zortan"] = "魔能工匠索尔坦";
	AL["Forgosh"] = "弗尔高什";
	AL["Gul'bor"] = "古尔博";
	AL["Malevus the Mad"] = "疯狂的玛尔弗斯";
	AL["Porfus the Gem Gorger"] = "掘钻者波弗斯";
	AL["Wrathbringer Laz-tarash"] = "天罚使者拉塔莱什";
	AL["Bash'ir Landing Stasis Chambers"] = "巴什伊尔码头静止间";
	AL["Templars"] = "圣殿骑士";
	AL["Dukes"] = "公爵";
	AL["High Council"] = "议会高层";
	AL["Barleybrew Brewery"] = "麦酒佳酿";
	AL["Thunderbrew Brewery"] = "雷酒佳酿";
	AL["Gordok Brewery"] = "戈多克佳酿";
	AL["Drohn's Distillery"] = "德罗恩的佳酿";
	AL["T'chali's Voodoo Brewery"] = "塔卡里的佳酿";
	AL["Scarshield Quartermaster"] = "裂盾军需官";
	AL["Father Flame"] = "烈焰之父";
	AL["Thomas Yance"] = "托马斯·杨斯";
	AL["Knot Thimblejack"] = "诺特·希姆加克";
	AL["Shen'dralar Provisioner"] = "辛德拉圣职者";
	AL["Namdo Bizzfizzle"] = "纳姆杜";
	AL["The Nameles Prophet"] = "无名预言者";
	AL["Rajaxx's Captains"] = "拉贾克斯的副官";
	AL["Razorfen Spearhide"] = "剃刀沼泽刺鬃守卫";
	AL["Kalldan Felmoon"] = "卡尔丹·暗月";
	AL["Magregan Deepshadow"] = "马格雷甘·深影";
	AL["Don Carlos"] = "唐·卡洛斯";
	AL["Thomas Yance"] = "托马斯·杨斯";
	AL["Aged Dalaran Wizard"] = "老迈的达拉然巫师";

	--Zones
	AL["World Drop"] = "世界掉落";

	--Shortcuts for Bossname files
	AL["LBRS"] = "黑下";
	AL["UBRS"] = "黑上";
	AL["CoT1"] = "救萨尔";
	AL["CoT2"] = "18波";
	AL["Scholo"] = "通灵";
	AL["Strat"] = "斯坦索姆";
	AL["Serpentshrine"] = "毒蛇";
	AL["Avatar"] = "殉难者的化身";

	--Chests, etc
	AL["The Secret Safe"] = "秘密保险箱";
	AL["The Vault"] = "黑色宝库";
	AL["Ogre Tannin Basket"] = "食人魔鞣酸篮";
	AL["Fengus's Chest"] = "芬古斯的箱子";
	AL["The Prince's Chest"] = "王子的箱子";
	AL["Doan's Strongbox"] = "杜安的保险箱";
	AL["Frostwhisper's Embalming Fluid"] = "莱斯·霜语的防腐液";
	AL["Unforged Rune Covered Breastplate"] = "未铸造的符文覆饰胸甲";
	AL["Malor's Strongbox"] = "玛洛尔的保险箱";
	AL["Unfinished Painting"] = "未完成的油画";
	AL["Felvine Shard"] = "魔藤碎片";
	AL["Baelog's Chest"] = "巴尔洛戈的箱子";
	AL["Lorgalis Manuscript"] = "洛迦里斯手稿";
	AL["Fathom Core"] = "深渊之核";
	AL["Conspicuous Urn"] = "显眼的石罐";
	AL["Gift of Adoration"] = "爱慕的礼物";
	AL["Box of Chocolates"] = "一盒巧克力";
	AL["Treat Bag"] = "糖果包";
	AL["Gaily Wrapped Present"] = "微微震动的礼物";
	AL["Festive Gift"] = "节日礼物";
	AL["Ticking Present"] = "条纹礼物盒";
	AL["Gently Shaken Gift"] = "精美的礼品";
	AL["Carefully Wrapped Present"] = "精心包裹的礼物";
	AL["Winter Veil Gift"] = "冬幕节礼物";
	AL["Smokywood Pastures Extra-Special Gift"] = "烟林牧场的超级特殊礼物";
	AL["Brightly Colored Egg"] = "复活节彩蛋";
	AL["Lunar Festival Fireworks Pack"] = "春节烟花包";
	AL["Lucky Red Envelope"] = "红包";
	AL["Small Rocket Recipes"] = "小型烟花设计图";
	AL["Large Rocket Recipes"] = "大型烟花设计图";
	AL["Cluster Rocket Recipes"] = "烟花束设计图";
	AL["Large Cluster Rocket Recipes"] = "大型烟花束设计图";
	AL["Timed Reward Chest"] = "限时击杀首领奖励";
	AL["Timed Reward Chest 1"] = "限时击杀首领奖励1";
	AL["Timed Reward Chest 2"] = "限时击杀首领奖励2";
	AL["Timed Reward Chest 3"] = "限时击杀首领奖励3";
	AL["Timed Reward Chest 4"] = "限时击杀首领奖励4";
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
	AL["Mysterious Egg"] = "神秘的卵";
	AL["Hyldnir Spoils"] = "海德尼尔礼品";
	AL["Ripe Disgusting Jar"] = "酿好的恶心罐装酒";
	AL["Cracked Egg"] = "破损的蛋壳";

	--World Events
	AL["Abyssal Council"] = "深渊议会";
	AL["Bash'ir Landing Skyguard Raid"] = "巴什伊尔码头";
	AL["Brewfest"] = "美酒节";
	AL["Children's Week"] = "儿童周";
	AL["Elemental Invasion"] = "元素入侵";
	AL["Ethereum Prison"] = "复仇军监狱";
	AL["Feast of Winter Veil"] = "冬幕节";
	AL["Gurubashi Arena Booty Run"] = "古拉巴什竞技场";
	AL["Hallow's End"] = "万圣节";
	AL["Harvest Festival"] = "收获节";
	AL["Love is in the Air"] = "情人节";
	AL["Lunar Festival"] = "春节";
	AL["Midsummer Fire Festival"] = "仲夏火焰节";
	AL["Noblegarden"] = "彩蛋节";
	AL["Skettis"] = "斯克提斯";
	AL["Stranglethorn Fishing Extravaganza"] = "荆棘谷钓鱼大赛";
--	AL["Argent Tournament"] = "银色锦标赛"; -- duplicated

	--Help Frame
	AL["Help"] = "帮助";
	AL["AtlasLoot Help"] = "AtlasLoot帮助";
	AL["For further help, see our website and forums: "] = "要获得更多的帮助，请访问我们的网站和论坛：";
	AL["How to open the standalone Loot Browser:"] = "单独打开掉落浏览器的方法：";
	AL["If you have AtlasLootFu enabled, click the minimap button, or alternatively a button generated by a mod like Titan or FuBar.	Finally, you can type '/al' in the chat window."] = "如果你启用了AtlasLootFu，点击小地图按钮，或者由类似Titan或者FuBar的插件生成的按钮。再或者你可以在聊天框里输入“/al”";
	AL["How to view an 'unsafe' item:"] = "查看“不安全”的物品的方法：";
	AL["Unsafe items have a red border around the icon and are marked because you have not seen the item since the last patch or server restart. Right-click the item, then move your mouse back over the item or click the 'Query Server' button at the bottom of the loot page."] = "带红框的物品为“不安全物品”，意为自从上次打补丁或者服务器重启以来你没在游戏内见过该物品。你可以通过右击该物品或者点击页面下方的“向服务器查询”按钮来向服务器请求查询。";
	AL["How to view an item in the Dressing Room:"] = "在试衣间查看物品的方法：";
	AL["Simply Ctrl+Left Click on the item.	Sometimes the dressing room window is hidden behind the Atlas or AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden."] = "只需要Ctrl+左键点在物品上即可，如果没反应，挪动下Atlas或者AtlasLoot窗口看看是不是试衣间被挡住了。";
	AL["How to link an item to someone else:"] = "给其他人链接物品的方法：";
	AL["Shift+Left Click the item like you would for any other in-game item"] = "跟你链接游戏里其他物品一样，只需要Shift+左键即可";
	AL["How to add an item to the wishlist:"] = "将物品添加到需求表的方法：";
	AL["Alt+Left Click any item to add it to the wishlist."] = "Alt+左键点击可以把物品添加到需求表";
	AL["How to delete an item from the wishlist:"] = "从需求表中删除物品的方法：";
	AL["While on the wishlist screen, just Alt+Left Click on an item to delete it."] = "当处于需求表页面时，Alt+左键点击物品即可";
	AL["What else does the wishlist do?"] = "需求表还能干嘛？";
	AL["If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.	Also, on a loot page any item already in your wishlist is marked with a yellow star."] = "点击需求表上的任意物品可以跳到该物品的来源页面。还有，在需求表中的物品，也会在它们的来源页面上有一个星号标记。";
	AL["HELP!! I have broken the mod somehow!"] = "救命！我貌似搞坏了插件……";
	AL["Use the reset buttons available in the options menu, or type '/al reset' in your chat window."] = "可以点击选项窗口里的相应按钮，或者在聊天框里输入“/al reset”";
end
