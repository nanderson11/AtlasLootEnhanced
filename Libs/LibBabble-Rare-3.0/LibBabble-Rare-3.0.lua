--[[
Name: LibBabble-Rare-3.0
Revision: $Rev$
Maintainers: Celellach
Website: http://www.atlasloot.net/phpBB3/index.php
Dependencies: None
License: MIT
]]

local MAJOR_VERSION = "LibBabble-Rare-3.0"
local MINOR_VERSION = 90000 + 1--tonumber(("$Rev$"):match("%d+")) -- Add this with new svn ;)

if not LibStub then error(MAJOR_VERSION .. " requires LibStub.") end
local lib = LibStub("LibBabble-3.0"):New(MAJOR_VERSION, MINOR_VERSION)
if not lib then return end

local GAME_LOCALE = GetLocale()

lib:SetBaseTranslations {
	Aeonaxx = "Aeonaxx",
	Akkalar = "Akkalar",
	Akkalou = "Akkalou",
	["Akma'hat"] = "Akma'hat",
	Alani = "Alani",
	Ankha = "Ankha",
	Anthriss = "Anthriss",
	Arcturis = "Arcturis",
	Armagedillo = "Armagedillo",
	["Armbreaker Huffaz"] = "Armbreaker Huffaz",
	["Ban'thalos"] = "Ban'thalos",
	["Barrel of Banana Infused Rum"] = "Barrel of Banana Infused Rum",
	Blazewing = "Blazewing",
	Bloodtooth = "Bloodtooth",
	Bristlespine = "Bristlespine",
	["Bro'Gaz the Clanless"] = "Bro'Gaz the Clanless",
	["Burgy Blackheart"] = "Burgy Blackheart",
	["Cache of Pilfered Goods"] = "Cache of Pilfered Goods",
	["Captain Florence"] = "Captain Florence",
	["Captain Foulwind"] = "Captain Foulwind",
	Clamstok = "Clamstok",
	["Clawlord Kril'mandar"] = "Clawlord Kril'mandar",
	["Cyrus the Black"] = "Cyrus the Black",
	Damlak = "Damlak",
	["Darkscreecher Akkarai"] = "Darkscreecher Akkarai",
	["Dart's Nest"] = "Dart's Nest",
	["Deth'tilac"] = "Deth'tilac",
	["Dormus the Camel-Hoarder"] = "Dormus the Camel-Hoarder",
	["Equipment Locker"] = "Equipment Locker",
	["Fel Tinkerer Zortan"] = "Fel Tinkerer Zortan",
	["Fixxul Lonelyheart"] = "Fixxul Lonelyheart",
	Forgosh = "Forgosh",
	["Frozen Trail Packer"] = "Frozen Trail Packer",
	Garr = "Garr",
	["Gezzarak the Huntress"] = "Gezzarak the Huntress",
	Ghostcrawler = "Ghostcrawler",
	["Ghostly Pandaren Craftsman"] = "Ghostly Pandaren Craftsman",
	["Ghostly Pandaren Fisherman"] = "Ghostly Pandaren Fisherman",
	Glimmer = "Glimmer",
	["Glinting Rapana Whelk"] = "Glinting Rapana Whelk",
	Golgarok = "Golgarok",
	Gondria = "Gondria",
	["Gorgolon the All-seeing"] = "Gorgolon the All-seeing",
	["Gul'bor"] = "Gul'bor",
	Hexapos = "Hexapos",
	["Huggalon the Heart Watcher"] = "Huggalon the Heart Watcher",
	Jadefang = "Jadefang",
	["Jade Warrior Statue"] = "Jade Warrior Statue",
	["Julak-Doom"] = "Julak-Doom",
	Karkin = "Karkin",
	Karoma = "Karoma",
	Karrog = "Karrog",
	["King Dorfbruiser"] = "King Dorfbruiser",
	Kirix = "Kirix",
	Kishak = "Kishak",
	["Lady La-La"] = "Lady La-La",
	["Lorbu Sadsummon"] = "Lorbu Sadsummon",
	Madexx = "Madexx",
	Magria = "Magria",
	["Malevus the Mad"] = "Malevus the Mad",
	["Martar the Not-So-Smart"] = "Martar the Not-So-Smart",
	["Matron Li-sahar"] = "Matron Li-sahar",
	Mobus = "Mobus",
	["Mysterious Camel Figurine"] = "Mysterious Camel Figurine",
	["Odd'nirok"] = "Odd'nirok",
	["Overlord Sunderfury"] = "Overlord Sunderfury",
	Patrannache = "Patrannache",
	Pengsong = "Pengsong",
	["Porfus the Gem Gorger"] = "Porfus the Gem Gorger",
	Portent = "Portent",
	Poseidus = "Poseidus",
	["Ravasaur Matriarch's Nest"] = "Ravasaur Matriarch's Nest",
	["Razormaw Matriarch's Nest"] = "Razormaw Matriarch's Nest",
	["Rockhide the Immovable"] = "Rockhide the Immovable",
	Sambas = "Sambas",
	Savage = "Savage",
	Scotty = "Scotty",
	["Shok'sharak"] = "Shok'sharak",
	Skarr = "Skarr",
	Skitterflame = "Skitterflame",
	Skoll = "Skoll",
	Solix = "Solix",
	["Solus the Eternal"] = "Solus the Eternal",
	["Sprite's Cloth Chest"] = "Sprite's Cloth Chest",
	Stompy = "Stompy",
	["Sungraze Behemoth"] = "Sungraze Behemoth",
	["Takk's Nest"] = "Takk's Nest",
	["Tarvus the Vile"] = "Tarvus the Vile",
	Terborus = "Terborus",
	Terokk = "Terokk",
	Terrorpene = "Terrorpene",
	["Thartuk the Exile"] = "Thartuk the Exile",
	["The Behemoth"] = "The Behemoth",
	["Time-Lost Proto Drake"] = "Time-Lost Proto Drake",
	Trelopades = "Trelopades",
	["Vakkiz the Windrager"] = "Vakkiz the Windrager",
	["Wrathbringer Laz-tarash"] = "Wrathbringer Laz-tarash",
	Xariona = "Xariona",
	Zhing = "Zhing",
}

if GAME_LOCALE == "enUS" then
	lib:SetCurrentTranslations(true)
elseif GAME_LOCALE == "deDE" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

elseif GAME_LOCALE == "frFR" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

elseif GAME_LOCALE == "koKR" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

elseif GAME_LOCALE == "esES" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

elseif GAME_LOCALE == "esMX" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

elseif GAME_LOCALE == "ptBR" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

elseif GAME_LOCALE == "itIT" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

elseif GAME_LOCALE == "ruRU" then
	lib:SetCurrentTranslations {
	-- ["Entry"] = "Entry",
}

elseif GAME_LOCALE == "zhCN" then
	lib:SetCurrentTranslations {
	Aeonaxx = "奥伊纳克斯",
	Akkalar = "阿卡拉",
	Akkalou = "阿卡洛",
	["Akma'hat"] = "阿卡玛哈特",
	Alani = "阿拉尼",
	Ankha = "安卡",
	Anthriss = "安塞瑞丝",
	Arcturis = "阿克图瑞斯",
	Armagedillo = "硕铠鼠",
	["Armbreaker Huffaz"] = "断臂者霍法斯",
	["Ban'thalos"] = "班萨罗斯",
	["Barrel of Banana Infused Rum"] = "一桶泡蕉朗姆酒",
	Blazewing = "焰翼",
	Bloodtooth = "血牙",
	Bristlespine = "刺脊",
	["Bro'Gaz the Clanless"] = "独行者布罗加斯",
	["Burgy Blackheart"] = "布尔吉·黑心",
	["Cache of Pilfered Goods"] = "一箱被偷的货物",
	["Captain Florence"] = "弗罗伦斯船长",
	["Captain Foulwind"] = "船长费尔温德",
	Clamstok = "克莱斯托克",
	["Clawlord Kril'mandar"] = "钳爪领主科里曼达",
	["Cyrus the Black"] = "乌黑的赛勒斯",
	Damlak = "达姆拉克",
	["Darkscreecher Akkarai"] = "黑暗尖啸者阿克卡莱",
	["Dart's Nest"] = "达尔特的卵",
	["Deth'tilac"] = "德丝缇拉克",
	["Dormus the Camel-Hoarder"] = "骆驼驭手多尔穆斯",
	["Equipment Locker"] = "装备箱",
	["Fel Tinkerer Zortan"] = "魔能工匠索尔坦",
	["Fixxul Lonelyheart"] = "菲克索尔·孤心",
	Forgosh = "弗尔高什",
	["Frozen Trail Packer"] = "冰封小径运货人",
	Garr = "加尔",
	["Gezzarak the Huntress"] = "猎手吉萨拉克",
	Ghostcrawler = "鬼脚蟹",
	["Ghostly Pandaren Craftsman"] = "幽灵熊猫人木匠",
	["Ghostly Pandaren Fisherman"] = "幽灵熊猫人渔夫",
	Glimmer = "微光之蛾",
	["Glinting Rapana Whelk"] = "拉帕纳微光海螺",
	Golgarok = "格尔加洛克",
	Gondria = "古德利亚",
	["Gorgolon the All-seeing"] = "全视者格苟尔隆",
	["Gul'bor"] = "古尔博",
	Hexapos = "赫克萨波斯",
	["Huggalon the Heart Watcher"] = "观心者胡戈伦",
	Jadefang = "玉牙页岩蛛",
	["Jade Warrior Statue"] = "青玉战士雕像",
	["Julak-Doom"] = "厄运尤拉克",
	Karkin = "卡尔金",
	Karoma = "卡洛玛",
	Karrog = "卡尔洛格",
	["King Dorfbruiser"] = "多弗布鲁瑟国王",
	Kirix = "柯尔利克斯",
	Kishak = "基沙克",
	["Lady La-La"] = "蕾蒂拉拉",
	["Lorbu Sadsummon"] = "罗布·悲鸣",
	Madexx = "梅迪克西斯",
	Magria = "马格瑞亚",
	["Malevus the Mad"] = "疯狂的玛尔弗斯",
	["Martar the Not-So-Smart"] = "马尔泰弱智",
	["Matron Li-sahar"] = "里萨哈",
	Mobus = "魔布斯",
	["Mysterious Camel Figurine"] = "神秘的骆驼雕像",
	["Odd'nirok"] = "奥德尼洛克",
	["Overlord Sunderfury"] = "崩裂之怒主宰",
	Patrannache = "帕特兰纳克",
	Pengsong = "蓬松毛",
	["Porfus the Gem Gorger"] = "掘钻者波弗斯",
	Portent = "噩兆",
	Poseidus = "波塞冬斯",
	["Ravasaur Matriarch's Nest"] = "暴掠龙女王的卵",
	["Razormaw Matriarch's Nest"] = "刺喉雌龙的卵",
	["Rockhide the Immovable"] = true, -- Needs review
	Sambas = "桑巴斯",
	Savage = "萨维奇",
	Scotty = "史考特",
	["Shok'sharak"] = "索克沙拉克",
	Skarr = "刀疤",
	Skitterflame = "掠行之火",
	Skoll = "逐日",
	Solix = "莎利克斯",
	["Solus the Eternal"] = "永恒者索鲁斯",
	["Sprite's Cloth Chest"] = "林精的衣箱",
	Stompy = "重蹄",
	["Sungraze Behemoth"] = "阳痕巨兽",
	["Takk's Nest"] = "塔克的卵",
	["Tarvus the Vile"] = "邪恶的塔乌斯",
	Terborus = "泰博鲁斯",
	Terokk = "泰罗克",
	Terrorpene = "泰罗佩内",
	["Thartuk the Exile"] = "被放逐的萨图科",
	["The Behemoth"] = "贝哈默斯",
	["Time-Lost Proto Drake"] = "迷失的始祖幼龙",
	Trelopades = "特雷洛帕兹",
	["Vakkiz the Windrager"] = "风怒者瓦克奇斯",
	["Wrathbringer Laz-tarash"] = "天罚使者拉塔莱什",
	Xariona = "埃克萨妮奥娜",
	Zhing = "金尼",
}

elseif GAME_LOCALE == "zhTW" then
	lib:SetCurrentTranslations {
	Aeonaxx = "艾歐納克斯",
	Akkalar = "阿卡拉爾",
	Akkalou = "阿卡露",
	["Akma'hat"] = "阿克瑪哈特",
	Alani = "阿拉尼",
	Ankha = "安卡",
	Anthriss = "安斯銳斯",
	Arcturis = "大角",
	Armagedillo = "末日犰狳",
	["Armbreaker Huffaz"] = "斷臂者霍法茲",
	["Ban'thalos"] = "班薩洛斯",
	["Barrel of Banana Infused Rum"] = "香蕉蘭姆酒桶",
	Blazewing = "燄翼",
	Bloodtooth = "血牙",
	Bristlespine = "刺脊",
	["Bro'Gaz the Clanless"] = "無氏族的伯卡茲",
	["Burgy Blackheart"] = "伯吉·黑心",
	["Cache of Pilfered Goods"] = "失竊貨物的貯藏箱",
	["Captain Florence"] = "佛羅倫斯船長",
	["Captain Foulwind"] = "劣風船長",
	Clamstok = "克蘭斯朵",
	["Clawlord Kril'mandar"] = "『鉗王』克里曼達",
	["Cyrus the Black"] = "黑翼席魯斯",
	Damlak = "丹拉克",
	["Darkscreecher Akkarai"] = "黑暗尖叫者阿卡萊",
	["Dart's Nest"] = "達爾特的巢",
	["Deth'tilac"] = "殆死堤拉克",
	["Dormus the Camel-Hoarder"] = "『駱駝囤積者』多姆斯",
	["Equipment Locker"] = "裝備藏寶箱",
	["Fel Tinkerer Zortan"] = "惡魔工匠祖坦",
	["Fixxul Lonelyheart"] = "費茲索·寂寞心",
	Forgosh = "弗古斯",
	["Frozen Trail Packer"] = "冰霜小徑腳伕",
	Garr = "加爾",
	["Gezzarak the Huntress"] = "女獵人吉札拉",
	Ghostcrawler = "鬼蟹",
	["Ghostly Pandaren Craftsman"] = "鬼影熊貓人工匠",
	["Ghostly Pandaren Fisherman"] = "鬼影熊貓人漁夫",
	Glimmer = "微光",
	["Glinting Rapana Whelk"] = "閃爍的紅螺",
	Golgarok = "戈爾加羅克",
	Gondria = "剛卓亞",
	["Gorgolon the All-seeing"] = "全知者戈爾多隆",
	["Gul'bor"] = "古柏爾",
	Hexapos = "海卡薩波斯",
	["Huggalon the Heart Watcher"] = "『心之看守者』夏佳隆",
	Jadefang = "翡翠牙",
	["Jade Warrior Statue"] = "翠玉戰士雕像",
	["Julak-Doom"] = "毀滅祖拉克",
	Karkin = "卡爾金",
	Karoma = "卡羅馬",
	Karrog = "凱羅格",
	["King Dorfbruiser"] = "國王多爾福布利薩",
	Kirix = "基利克斯",
	Kishak = "基薩",
	["Lady La-La"] = "女神菈菈",
	["Lorbu Sadsummon"] = "羅布·哀召",
	Madexx = "麥碟司",
	Magria = "瑪格瑞亞",
	["Malevus the Mad"] = "狂怒者馬拉弗斯",
	["Martar the Not-So-Smart"] = "不太聰明的瑪塔",
	["Matron Li-sahar"] = "女侍衛長利薩哈爾",
	Mobus = "莫比斯",
	["Mysterious Camel Figurine"] = "神秘駱駝刻像",
	["Odd'nirok"] = "奧尼羅",
	["Overlord Sunderfury"] = "霸主怒斬",
	Patrannache = "派崔娜",
	Pengsong = "鵬宋",
	["Porfus the Gem Gorger"] = "寶石吞噬者波弗斯",
	Portent = "惡兆",
	Poseidus = "波賽達斯",
	["Ravasaur Matriarch's Nest"] = "暴掠龍族母的巢",
	["Razormaw Matriarch's Nest"] = "刺喉龍族母的巢",
	["Rockhide the Immovable"] = "無法撼動的洛克海德",
	Sambas = "森巴斯",
	Savage = "沙維其",
	Scotty = "史考堤",
	["Shok'sharak"] = "肖克·薩菈克",
	Skarr = "斯卡爾",
	Skitterflame = "掠焰",
	Skoll = "史科爾",
	Solix = "索利克斯",
	["Solus the Eternal"] = "智者索勒斯",
	["Sprite's Cloth Chest"] = "妖精的衣櫃",
	Stompy = "暴蹄",
	["Sungraze Behemoth"] = "日牧巨獸",
	["Takk's Nest"] = "塔克的巢",
	["Tarvus the Vile"] = "邪惡的塔維斯",
	Terborus = "特波魯斯",
	Terokk = "泰洛克",
	Terrorpene = "懼龜",
	["Thartuk the Exile"] = "薩爾圖克",
	["The Behemoth"] = "貝希摩斯",
	["Time-Lost Proto Drake"] = "時光流逝元龍",
	Trelopades = "特羅費茲",
	["Vakkiz the Windrager"] = "風怒者瓦奇茲",
	["Wrathbringer Laz-tarash"] = "憤怒使者拉茲泰拉西",
	Xariona = "克薩瑞歐納",
	Zhing = "鎮山羊",
}

else
	error(("%s: Locale %q not supported"):format(MAJOR_VERSION, GAME_LOCALE))
end
