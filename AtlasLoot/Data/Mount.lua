local AtlasLoot = _G.AtlasLoot
local Mount = {}
AtlasLoot.Data.Mount = Mount
local AL = AtlasLoot.Locales

-- lua

-- WoW
local C_MountJournal_GetMountInfo, C_MountJournal_GetMountInfoExtra, C_MountJournal_GetMountIDs = C_MountJournal.GetMountInfoByID, C_MountJournal.GetMountInfoExtra, C_MountJournal.GetMountIDs


local ALL_DATA_LOADED = false

local NO_ITEM_ID = 0

-- save all mountinfos
local MOUNT_INFO = {
	["spells"] = { 
		-- [spellID] = itemID
		[458] = 5656, 			-- Brown Horse
		[459] = NO_ITEM_ID, 		-- Gray Wolf
		[468] = NO_ITEM_ID, 		-- White Stallion
		[470] = 2411, 			-- Black Stallion
		[472] = 2414, 			-- Pinto
		[578] = NO_ITEM_ID, 		-- Black Wolf
		[579] = NO_ITEM_ID, 		-- Red Wolf
		[580] = 1132, 			-- Timber Wolf
		[581] = NO_ITEM_ID, 		-- Winter Wolf
		[5784] = NO_ITEM_ID, 		-- Felsteed
		[6648] = 5655, 			-- Chestnut Mare
		[6653] = 5665, 			-- Dire Wolf
		[6654] = 5668, 			-- Brown Wolf
		[6777] = 5864, 			-- Gray Ram
		[6896] = 13328, 		-- Black Ram
		[6898] = 5873, 			-- White Ram
		[6899] = 5872, 			-- Brown Ram
		[8394] = 8631, 			-- Striped Frostsaber
		[8395] = 8588, 			-- Emerald Raptor
		[8980] = NO_ITEM_ID, 		-- Skeletal Horse
		[10789] = 8632, 		-- Spotted Frostsaber
		[10793] = 8629, 		-- Striped Nightsaber
		[10795] = NO_ITEM_ID, 		-- Ivory Raptor
		[10796] = 8591, 		-- Turquoise Raptor
		[10799] = 8592, 		-- Violet Raptor
		[10873] = 8563, 		-- Red Mechanostrider
		[10969] = 8595, 		-- Blue Mechanostrider
		[13819] = NO_ITEM_ID, 		-- Warhorse
		[15779] = 13326, 		-- White Mechanostrider Mod B
		[15780] = 13321, 		-- Green Mechanostrider
		[16055] = 12303, 		-- Black Nightsaber
		[16056] = 12302, 		-- Ancient Frostsaber
		[16080] = 12330, 		-- Red Wolf
		[16081] = 12351, 		-- Arctic Wolf
		[16082] = 12354, 		-- Palomino
		[16083] = 12353, 		-- White Stallion
		[16084] = 8586, 		-- Mottled Red Raptor
		[17229] = 13086, 		-- Winterspring Frostsaber
		[17450] = 13317, 		-- Ivory Raptor
		[17453] = 13321, 		-- Green Mechanostrider
		[17454] = 13322, 		-- Unpainted Mechanostrider
		[17459] = 13327, 		-- Icy Blue Mechanostrider Mod A
		[17460] = 13329, 		-- Frost Ram
		[17461] = 13328, 		-- Black Ram
		[17462] = 13331, 		-- Red Skeletal Horse
		[17463] = 13332, 		-- Blue Skeletal Horse
		[17464] = 13333, 		-- Brown Skeletal Horse
		[17465] = 13334, 		-- Green Skeletal Warhorse
		[17481] = 13335, 		-- Rivendare's Deathcharger
		[18363] = NO_ITEM_ID, 		-- Riding Kodo
		[18989] = 15277, 		-- Gray Kodo
		[18990] = 15290, 		-- Brown Kodo
		[18991] = 15292, 		-- Green Kodo
		[18992] = 15293, 		-- Teal Kodo
		[22717] = 29468, 		-- Black War Steed
		[22718] = 29466, 		-- Black War Kodo
		[22719] = 29465, 		-- Black Battlestrider
		[22720] = 29467, 		-- Black War Ram
		[22721] = 29472, 		-- Black War Raptor
		[22722] = 29470, 		-- Red Skeletal Warhorse
		[22723] = 29471, 		-- Black War Tiger
		[22724] = 29469, 		-- Black War Wolf
		[23161] = NO_ITEM_ID, 		-- Dreadsteed
		[23214] = NO_ITEM_ID, 		-- Charger
		[23219] = 18767, 		-- Swift Mistsaber
		[23221] = 18766, 		-- Swift Frostsaber
		[23222] = 18774, 		-- Swift Yellow Mechanostrider
		[23223] = 18773, 		-- Swift White Mechanostrider
		[23225] = 18772, 		-- Swift Green Mechanostrider
		[23227] = 18776, 		-- Swift Palomino
		[23228] = 18778, 		-- Swift White Steed
		[23229] = 18777, 		-- Swift Brown Steed
		[23238] = 18786, 		-- Swift Brown Ram
		[23239] = 18787, 		-- Swift Gray Ram
		[23240] = 18785, 		-- Swift White Ram
		[23241] = 18788, 		-- Swift Blue Raptor
		[23242] = 18789, 		-- Swift Olive Raptor
		[23243] = 18790, 		-- Swift Orange Raptor
		[23246] = 18791, 		-- Purple Skeletal Warhorse
		[23247] = 18793, 		-- Great White Kodo
		[23248] = 18795, 		-- Great Gray Kodo
		[23249] = 18794, 		-- Great Brown Kodo
		[23250] = 18796, 		-- Swift Brown Wolf
		[23251] = 18797, 		-- Swift Timber Wolf
		[23252] = 18798, 		-- Swift Gray Wolf
		[23338] = 18902, 		-- Swift Stormsaber
		[23509] = 19029, 		-- Frostwolf Howler
		[23510] = 19030, 		-- Stormpike Battle Charger
		[24242] = 19872, 		-- Swift Razzashi Raptor
		[24252] = 19902, 		-- Swift Zulian Tiger
		[25863] = NO_ITEM_ID, 		-- Black Qiraji Battle Tank
		[25953] = 21218, 		-- Blue Qiraji Battle Tank
		[26054] = 21321, 		-- Red Qiraji Battle Tank
		[26055] = 21324, 		-- Yellow Qiraji Battle Tank
		[26056] = 21323, 		-- Green Qiraji Battle Tank
		[26655] = NO_ITEM_ID, 		-- Black Qiraji Battle Tank
		[26656] = 21176, 		-- Black Qiraji Battle Tank
		[28828] = NO_ITEM_ID, 		-- Nether Drake
		[30174] = 23720, 		-- Riding Turtle
		[32235] = 25470, 		-- Golden Gryphon
		[32239] = 25471, 		-- Ebon Gryphon
		[32240] = 25472, 		-- Snowy Gryphon
		[32242] = 25473, 		-- Swift Blue Gryphon
		[32243] = 25474, 		-- Tawny Wind Rider
		[32244] = 25475, 		-- Blue Wind Rider
		[32245] = 25476, 		-- Green Wind Rider
		[32246] = 25477, 		-- Swift Red Wind Rider
		[32289] = 25527, 		-- Swift Red Gryphon
		[32290] = 25528, 		-- Swift Green Gryphon
		[32292] = 25529, 		-- Swift Purple Gryphon
		[32295] = 25531, 		-- Swift Green Wind Rider
		[32296] = 25532, 		-- Swift Yellow Wind Rider
		[32297] = 25533, 		-- Swift Purple Wind Rider
		[32345] = NO_ITEM_ID, 		-- Peep the Phoenix Mount
		[33630] = 8595, 		-- Blue Mechanostrider
		[33660] = 28936, 		-- Swift Pink Hawkstrider
		[34406] = 28481, 		-- Brown Elekk
		[34767] = NO_ITEM_ID, 		-- Thalassian Charger
		[34769] = NO_ITEM_ID, 		-- Thalassian Warhorse
		[34790] = 29228, 		-- Dark War Talbuk
		[34795] = 28927, 		-- Red Hawkstrider
		[34896] = 29102, 		-- Cobalt War Talbuk
		[34897] = 29103, 		-- White War Talbuk
		[34898] = 29104, 		-- Silver War Talbuk
		[34899] = 29105, 		-- Tan War Talbuk
		[35018] = 29222, 		-- Purple Hawkstrider
		[35020] = 29220, 		-- Blue Hawkstrider
		[35022] = 29221, 		-- Black Hawkstrider
		[35025] = 29223, 		-- Swift Green Hawkstrider
		[35027] = 29224, 		-- Swift Purple Hawkstrider
		[35028] = 34129, 		-- Swift Warstrider
		[35710] = 29744, 		-- Gray Elekk
		[35711] = 29743, 		-- Purple Elekk
		[35712] = 29746, 		-- Great Green Elekk
		[35713] = 29745, 		-- Great Blue Elekk
		[35714] = 29747, 		-- Great Purple Elekk
		[36702] = 30480, 		-- Fiery Warhorse
		[37015] = 30609, 		-- Swift Nether Drake
		[39315] = 31829, 		-- Cobalt Riding Talbuk
		[39316] = 28915, 		-- Dark Riding Talbuk
		[39317] = 31831, 		-- Silver Riding Talbuk
		[39318] = 31833, 		-- Tan Riding Talbuk
		[39319] = 31835, 		-- White Riding Talbuk
		[39798] = 32314, 		-- Green Riding Nether Ray
		[39800] = 32317, 		-- Red Riding Nether Ray
		[39801] = 32316, 		-- Purple Riding Nether Ray
		[39802] = 32318, 		-- Silver Riding Nether Ray
		[39803] = 32319, 		-- Blue Riding Nether Ray
		[40192] = 32458, 		-- Ashes of Al'ar
		[41252] = 32768, 		-- Raven Lord
		[41513] = 32857, 		-- Onyx Netherwing Drake
		[41514] = 32858, 		-- Azure Netherwing Drake
		[41515] = 32859, 		-- Cobalt Netherwing Drake
		[41516] = 32860, 		-- Purple Netherwing Drake
		[41517] = 32861, 		-- Veridian Netherwing Drake
		[41518] = 32862, 		-- Violet Netherwing Drake
		[42776] = 49283, 		-- Spectral Tiger
		[42777] = 49284, 		-- Swift Spectral Tiger
		[43688] = 33809, 		-- Amani War Bear
		[43899] = 33976, 		-- Brewfest Ram
		[43900] = 33977, 		-- Swift Brewfest Ram
		[43927] = 33999, 		-- Cenarion War Hippogryph
		[44151] = 34061, 		-- Turbo-Charged Flying Machine
		[44153] = 34060, 		-- Flying Machine
		[44317] = 34092, 		-- Merciless Nether Drake
		[44744] = 34092, 		-- Merciless Nether Drake
		[46197] = 49285, 		-- X-51 Nether-Rocket
		[46199] = 49286, 		-- X-51 Nether-Rocket X-TREME
		[46628] = 35513, 		-- Swift White Hawkstrider
		[48025] = 37012, 		-- Headless Horseman's Mount
		[48027] = 35906, 		-- Black War Elekk
		[48778] = NO_ITEM_ID, 		-- Acherus Deathcharger
		[48954] = 37719, 		-- Swift Zhevra
		[49193] = 37676, 		-- Vengeful Nether Drake
		[49322] = 37719, 		-- Swift Zhevra
		[49378] = NO_ITEM_ID, 		-- Brewfest Riding Kodo
		[49379] = 37828, 		-- Great Brewfest Kodo
		[50869] = NO_ITEM_ID, 		-- Brewfest Kodo
		[51412] = 49282, 		-- Big Battle Bear
		[54729] = 40775, 		-- Winged Steed of the Ebon Blade
		[54753] = 43962, 		-- White Polar Bear
		[55164] = NO_ITEM_ID, 		-- Swift Spectral Gryphon
		[55531] = 41508, 		-- Mechano-Hog
		[58615] = 43516, 		-- Brutal Nether Drake
		[58819] = NO_ITEM_ID, 		-- Swift Brown Steed
		[58983] = 43599, 		-- Big Blizzard Bear
		[59567] = 43952, 		-- Azure Drake
		[59568] = 43953, 		-- Blue Drake
		[59569] = 43951, 		-- Bronze Drake
		[59570] = 43955, 		-- Red Drake
		[59571] = 43954, 		-- Twilight Drake
		[59572] = NO_ITEM_ID, 		-- Black Polar Bear
		[59650] = 43986, 		-- Black Drake
		[59785] = 43956, 		-- Black War Mammoth
		[59788] = 44077, 		-- Black War Mammoth
		[59791] = 44230, 		-- Wooly Mammoth
		[59793] = 44231, 		-- Wooly Mammoth
		[59797] = 44080, 		-- Ice Mammoth
		[59799] = 43958, 		-- Ice Mammoth
		[59961] = 44160, 		-- Red Proto-Drake
		[59976] = 44164, 		-- Black Proto-Drake
		[59996] = 44151, 		-- Blue Proto-Drake
		[60002] = 44168, 		-- Time-Lost Proto-Drake
		[60021] = 44175, 		-- Plagued Proto-Drake
		[60024] = 44177, 		-- Violet Proto-Drake
		[60025] = 44178, 		-- Albino Drake
		[60114] = 44225, 		-- Armored Brown Bear
		[60116] = 44226, 		-- Armored Brown Bear
		[60118] = 44223, 		-- Black War Bear
		[60119] = 44224, 		-- Black War Bear
		[60136] = NO_ITEM_ID, 		-- Grand Caravan Mammoth
		[60140] = NO_ITEM_ID, 		-- Grand Caravan Mammoth
		[60424] = 44413, 		-- Mekgineer's Chopper
		[61229] = 44689, 		-- Armored Snowy Gryphon
		[61230] = 44690, 		-- Armored Blue Wind Rider
		[61294] = 44707, 		-- Green Proto-Drake
		[61309] = 44558, 		-- Magnificent Flying Carpet
		[61425] = 44235, 		-- Traveler's Tundra Mammoth
		[61447] = 44234, 		-- Traveler's Tundra Mammoth
		[61451] = 44554, 		-- Flying Carpet
		[61465] = 43959, 		-- Grand Black War Mammoth
		[61467] = 44083, 		-- Grand Black War Mammoth
		[61469] = 44086, 		-- Grand Ice Mammoth
		[61470] = 43961, 		-- Grand Ice Mammoth
		[61996] = 44843, 		-- Blue Dragonhawk
		[61997] = 44842, 		-- Red Dragonhawk
		[62048] = NO_ITEM_ID, 		-- Black Dragonhawk Mount
		[63232] = 45125, 		-- Stormwind Steed
		[63635] = 45593, 		-- Darkspear Raptor
		[63636] = 45586, 		-- Ironforge Ram
		[63637] = 45591, 		-- Darnassian Nightsaber
		[63638] = 45589, 		-- Gnomeregan Mechanostrider
		[63639] = 45590, 		-- Exodar Elekk
		[63640] = 45595, 		-- Orgrimmar Wolf
		[63641] = 45592, 		-- Thunder Bluff Kodo
		[63642] = 45596, 		-- Silvermoon Hawkstrider
		[63643] = 45597, 		-- Forsaken Warhorse
		[63796] = 45693, 		-- Mimiron's Head
		[63844] = 45725, 		-- Argent Hippogryph
		[63956] = 45801, 		-- Ironbound Proto-Drake
		[63963] = 45802, 		-- Rusted Proto-Drake
		[64656] = NO_ITEM_ID, 		-- Blue Skeletal Warhorse
		[64657] = 46100, 		-- White Kodo
		[64658] = 46099, 		-- Black Wolf
		[64659] = 46102, 		-- Venomhide Ravasaur
		[64731] = 46109, 		-- Sea Turtle
		[64927] = 46708, 		-- Deadly Gladiator's Frost Wyrm
		[64977] = 46308, 		-- Black Skeletal Horse
		[65439] = 46171, 		-- Furious Gladiator's Frost Wyrm
		[65637] = 46745, 		-- Great Red Elekk
		[65638] = 46744, 		-- Swift Moonsaber
		[65639] = 46751, 		-- Swift Red Hawkstrider
		[65640] = 46752, 		-- Swift Gray Steed
		[65641] = 46750, 		-- Great Golden Kodo
		[65642] = 46747, 		-- Turbostrider
		[65643] = 46748, 		-- Swift Violet Ram
		[65644] = 46743, 		-- Swift Purple Raptor
		[65645] = 46746, 		-- White Skeletal Warhorse
		[65646] = 46749, 		-- Swift Burgundy Wolf
		[65917] = 49290, 		-- Magic Rooster
		[66087] = 46813, 		-- Silver Covenant Hippogryph
		[66088] = 46814, 		-- Sunreaver Dragonhawk
		[66090] = 46815, 		-- Quel'dorei Steed
		[66091] = 46816, 		-- Sunreaver Hawkstrider
		[66122] = NO_ITEM_ID, 		-- Magic Rooster
		[66123] = NO_ITEM_ID, 		-- Magic Rooster
		[66124] = NO_ITEM_ID, 		-- Magic Rooster
		[66846] = 47101, 		-- Ochre Skeletal Warhorse
		[66847] = 47100, 		-- Striped Dawnsaber
		[66906] = 47179, 		-- Argent Charger
		[66907] = 47180, 		-- Argent Warhorse
		[67336] = 47840, 		-- Relentless Gladiator's Frost Wyrm
		[67466] = 47180, 		-- Argent Warhorse
		[68056] = 49046, 		-- Swift Horde Wolf
		[68057] = 49044, 		-- Swift Alliance Steed
		[68187] = 49096, 		-- Crusader's White Warhorse
		[68188] = 49098, 		-- Crusader's Black Warhorse
		[69395] = 49636, 		-- Onyxian Drake
		[69820] = NO_ITEM_ID, 		-- Sunwalker Kodo
		[69826] = NO_ITEM_ID, 		-- Great Sunwalker Kodo
		[71342] = 50250, 		-- Big Love Rocket
		[71810] = 50435, 		-- Wrathful Gladiator's Frost Wyrm
		[72286] = 50818, 		-- Invincible
		[72807] = 51955, 		-- Icebound Frostbrood Vanquisher
		[72808] = 51954, 		-- Bloodbathed Frostbrood Vanquisher
		[73313] = 52200, 		-- Crimson Deathcharger
		[73629] = NO_ITEM_ID, 		-- Exarch's Elekk
		[73630] = NO_ITEM_ID, 		-- Great Exarch's Elekk
		[74856] = 54069, 		-- Blazing Hippogryph
		[74918] = 54068, 		-- Wooly White Rhino
		[75207] = 54465, 		-- Vashj'ir Seahorse
		[75596] = 54797, 		-- Frosty Flying Carpet
		[75614] = 54811, 		-- Celestial Steed
		[75973] = 54860, 		-- X-53 Touring Rocket
		[84751] = 60954, 		-- Fossilized Raptor
		[87090] = 62461, 		-- Goblin Trike
		[87091] = 62462, 		-- Goblin Turbo-Trike
		[88331] = 62900, 		-- Volcanic Stone Drake
		[88335] = 62901, 		-- Drake of the East Wind
		[88718] = 63042, 		-- Phosphorescent Stone Drake
		[88741] = 63039, 		-- Drake of the West Wind
		[88742] = 63040, 		-- Drake of the North Wind
		[88744] = 63041, 		-- Drake of the South Wind
		[88746] = 63043, 		-- Vitreous Stone Drake
		[88748] = 63044, 		-- Brown Riding Camel
		[88749] = 63045, 		-- Tan Riding Camel
		[88750] = 63046, 		-- Grey Riding Camel
		[88990] = 63125, 		-- Dark Phoenix
		[89520] = NO_ITEM_ID, 		-- Goblin Mini Hotrod
		[90621] = 62298, 		-- Golden King
		[92155] = 64883, 		-- Ultramarine Qiraji Battle Tank
		[92231] = 64998, 		-- Spectral Steed
		[92232] = 64999, 		-- Spectral Wolf
		[93326] = 65891, 		-- Sandstone Drake
		[93623] = 68008, 		-- Mottled Drake
		[93644] = 67107, 		-- Kor'kron Annihilator
		[96491] = 68823, 		-- Armored Razzashi Raptor
		[96499] = 68824, 		-- Swift Zulian Panther
		[96503] = 68825, 		-- Amani Dragonhawk
		[97359] = 69213, 		-- Flameward Hippogryph
		[97493] = 69224, 		-- Pureblood Fire Hawk
		[97501] = 69226, 		-- Felfire Hawk
		[97560] = 69230, 		-- Corrupted Fire Hawk
		[97581] = 69228, 		-- Savage Raptor
		[98204] = 69747, 		-- Amani Battle Bear
		[98718] = 67151, 		-- Subdued Seahorse
		[98727] = 69846, 		-- Winged Guardian
		[100332] = 70909, 		-- Vicious War Steed
		[100333] = 70910, 		-- Vicious War Wolf
		[101282] = 71339, 		-- Vicious Gladiator's Twilight Drake
		[101542] = 71665, 		-- Flametalon of Alysrazor
		[101573] = 71718, 		-- Swift Shorestrider
		[101821] = 71954, 		-- Ruthless Gladiator's Twilight Drake
		[102346] = 72140, 		-- Swift Forest Strider
		[102349] = 72145, 		-- Swift Springstrider
		[102350] = 72146, 		-- Swift Lovebird
		[102488] = 72575, 		-- White Riding Camel
		[102514] = 72582, 		-- Corrupted Hippogryph
		[103081] = 73766, 		-- Darkmoon Dancing Bear
		[103195] = 73838, 		-- Mountain Horse
		[103196] = 73839, 		-- Swift Mountain Horse
		[107203] = 76755, 		-- Tyrael's Charger
		[107516] = 76889, 		-- Spectral Gryphon
		[107517] = 76902, 		-- Spectral Wind Rider
		[107842] = 77067, 		-- Blazing Drake
		[107844] = 77068, 		-- Twilight Harbinger
		[107845] = 77069, 		-- Life-Binder's Handmaiden
		[110039] = 78919, 		-- Experiment 12-B
		[110051] = 78924, 		-- Heart of the Aspects
		[113120] = 79771, 		-- Feldrake
		[113199] = 79802, 		-- Jade Cloud Serpent
		[118089] = 81354, 		-- Azure Water Strider
		[118737] = 81559, 		-- Pandaren Kite
		[120043] = 82453, 		-- Jeweled Onyx Panther
		[120395] = 82765, 		-- Green Dragon Turtle
		[120822] = 82811, 		-- Great Red Dragon Turtle
		[121820] = 83086, 		-- Obsidian Nightwing
		[121836] = 83090, 		-- Sapphire Panther
		[121837] = 83088, 		-- Jade Panther
		[121838] = 83087, 		-- Ruby Panther
		[121839] = 83089, 		-- Sunstone Panther
		[122708] = 84101, 		-- Grand Expedition Yak
		[123160] = NO_ITEM_ID, 		-- Crimson Riding Crane
		[123182] = NO_ITEM_ID, 		-- White Riding Yak
		[123886] = 85262, 		-- Amber Scorpion
		[123992] = 85430, 		-- Azure Cloud Serpent
		[123993] = 85429, 		-- Golden Cloud Serpent
		[124408] = 85666, 		-- Thundering Jade Cloud Serpent
		[124550] = 85785, 		-- Cataclysmic Gladiator's Twilight Drake
		[124659] = 85870, 		-- Imperial Quilen
		[126507] = 87250, 		-- Depleted-Kyparium Rocket
		[126508] = 87251, 		-- Geosynchronous World Spinner
		[127154] = 87768, 		-- Onyx Cloud Serpent
		[127156] = 87769, 		-- Crimson Cloud Serpent
		[127158] = 87771, 		-- Heavenly Onyx Cloud Serpent
		[127161] = 87773, 		-- Heavenly Crimson Cloud Serpent
		[127164] = 87774, 		-- Heavenly Golden Cloud Serpent
		[127165] = 87775, 		-- Yu'lei, Daughter of Jade
		[127169] = 87776, 		-- Heavenly Azure Cloud Serpent
		[127170] = 87777, 		-- Astral Cloud Serpent
		[127174] = 87781, 		-- Azure Riding Crane
		[127176] = 87782, 		-- Golden Riding Crane
		[127177] = 87783, 		-- Regal Riding Crane
		[127178] = NO_ITEM_ID, 		-- Jungle Riding Crane
		[127180] = NO_ITEM_ID, 		-- Albino Riding Crane
		[127209] = NO_ITEM_ID, 		-- Black Riding Yak
		[127213] = NO_ITEM_ID, 		-- Brown Riding Yak
		[127216] = 87788, 		-- Grey Riding Yak
		[127220] = 87789, 		-- Blonde Riding Yak
		[127271] = 87791, 		-- Crimson Water Strider
		[127272] = NO_ITEM_ID, 		-- Orange Water Strider
		[127274] = NO_ITEM_ID, 		-- Jade Water Strider
		[127278] = NO_ITEM_ID, 		-- Golden Water Strider
		[127286] = 87795, 		-- Black Dragon Turtle
		[127287] = 87796, 		-- Blue Dragon Turtle
		[127288] = 87797, 		-- Brown Dragon Turtle
		[127289] = 87799, 		-- Purple Dragon Turtle
		[127290] = 87800, 		-- Red Dragon Turtle
		[127293] = 87801, 		-- Great Green Dragon Turtle
		[127295] = 87802, 		-- Great Black Dragon Turtle
		[127302] = 87803, 		-- Great Blue Dragon Turtle
		[127308] = 87804, 		-- Great Brown Dragon Turtle
		[127310] = 87805, 		-- Great Purple Dragon Turtle
		[129552] = 89154, 		-- Crimson Pandaren Phoenix
		[129918] = 89304, 		-- Thundering August Cloud Serpent
		[129932] = 89305, 		-- Green Shado-Pan Riding Tiger
		[129934] = 89307, 		-- Blue Shado-Pan Riding Tiger
		[129935] = 89306, 		-- Red Shado-Pan Riding Tiger
		[130086] = 89362, 		-- Brown Riding Goat
		[130092] = 89363, 		-- Red Flying Cloud
		[130137] = 89390, 		-- White Riding Goat
		[130138] = 89391, 		-- Black Riding Goat
		[130965] = 89783, 		-- Son of Galleon
		[130985] = 89785, 		-- Pandaren Kite
		[132036] = 90655, 		-- Thundering Ruby Cloud Serpent
		[132117] = 90710, 		-- Ashen Pandaren Phoenix
		[132118] = 90711, 		-- Emerald Pandaren Phoenix
		[132119] = 90712, 		-- Violet Pandaren Phoenix
		[133023] = 91802, 		-- Jade Pandaren Kite
		[134359] = 95416, 		-- Sky Golem
		[134573] = 92724, 		-- Swift Windsteed
		[135416] = 93168, 		-- Grand Armored Gryphon
		[135418] = 93169, 		-- Grand Armored Wyvern
		[136163] = 93385, 		-- Grand Gryphon
		[136164] = 93386, 		-- Grand Wyvern
		[136400] = 93662, 		-- Armored Skyscreamer
		[136471] = 93666, 		-- Spawn of Horridon
		[136505] = 93671, 		-- Ghastly Charger
		[138423] = 94228, 		-- Cobalt Primordial Direhorn
		[138424] = 94230, 		-- Amber Primordial Direhorn
		[138425] = 94229, 		-- Slate Primordial Direhorn
		[138426] = 94231, 		-- Jade Primordial Direhorn
		[138640] = 94290, 		-- Bone-White Primal Raptor
		[138641] = 94291, 		-- Red Primal Raptor
		[138642] = 94292, 		-- Black Primal Raptor
		[138643] = 94293, 		-- Green Primal Raptor
		[139407] = 95041, 		-- Malevolent Gladiator's Cloud Serpent
		[139442] = 95057, 		-- Thundering Cobalt Cloud Serpent
		[139448] = 95059, 		-- Clutch of Ji-Kun
		[139595] = 95341, 		-- Armored Bloodwing
		[140249] = 95564, 		-- Golden Primal Direhorn
		[140250] = 95565, 		-- Crimson Primal Direhorn
		[142073] = 98618, 		-- Hearthsteed
		[142266] = 98104, 		-- Armored Red Dragonhawk
		[142478] = 98259, 		-- Armored Blue Dragonhawk
		[142641] = 98405, 		-- Brawler's Burly Mushan Beast
		[142878] = 97989, 		-- Enchanted Fey Dragon
		[142910] = 129922, 		-- Ironbound Wraithcharger
		[146615] = 102514, 		-- Vicious Warsaber
		[146622] = 102533, 		-- Vicious Skeletal Warhorse
		[147595] = 104011, 		-- Stormcrow
		[148392] = 104208, 		-- Spawn of Galakras
		[148396] = 104246, 		-- Kor'kron War Wolf
		[148417] = 104253, 		-- Kor'kron Juggernaut
		[148428] = 103638, 		-- Ashhide Mushan Beast
		[148476] = 104269, 		-- Thundering Onyx Cloud Serpent
		[148618] = 104325, 		-- Tyrannical Gladiator's Cloud Serpent
		[148619] = 104326, 		-- Grievous Gladiator's Cloud Serpent
		[148620] = 104327, 		-- Prideful Gladiator's Cloud Serpent
		[148626] = 104329, 		-- Furious Ashhide Mushan
		[148970] = NO_ITEM_ID, 		-- Felsteed
		[148972] = NO_ITEM_ID, 		-- Dreadsteed
		[149801] = 106246, 		-- Emerald Hippogryph
		[153489] = 107951, 		-- Iron Skyreaver
		[155741] = 109013, 		-- Dread Raven
		[163024] = 112326, 		-- Warforged Nightmare
		[163025] = 112327, 		-- Grinning Reaver
		[169952] = 115363, 		-- Creeping Carpet
		[170347] = 115484, 		-- Core Hound
		[171436] = 116383, 		-- Gorestrider Gronnling
		[171616] = 116655, 		-- Witherhide Cliffstomper
		[171617] = 116656, 		-- Trained Icehoof
		[171618] = 116657, 		-- Ancient Leatherhide
		[171619] = 116658, 		-- Tundra Icehoof
		[171620] = 116659, 		-- Bloodhoof Bull
		[171621] = 116660, 		-- Ironhoof Destroyer
		[171622] = 116661, 		-- Mottled Meadowstomper
		[171623] = 116662, 		-- Trained Meadowstomper
		[171624] = 116663, 		-- Shadowhide Pearltusk
		[171625] = 116664, 		-- Dusty Rockhide
		[171626] = 116665, 		-- Armored Irontusk
		[171627] = 116666, 		-- Blacksteel Battleboar
		[171628] = 116667, 		-- Rocktusk Battleboar
		[171629] = 116668, 		-- Armored Frostboar
		[171630] = 116669, 		-- Armored Razorback
		[171632] = 116670, 		-- Frostplains Battleboar
		[171633] = 116671, 		-- Wild Goretusk
		[171634] = 116672, 		-- Domesticated Razorback
		[171635] = 116673, 		-- Giant Coldsnout
		[171636] = 116674, 		-- Great Greytusk
		[171637] = 116675, 		-- Trained Rocktusk
		[171638] = 116676, 		-- Trained Riverwallow
		[171824] = 116767, 		-- Sapphire Riverbeast
		[171825] = 116768, 		-- Mosshide Riverwallow
		[171826] = 116769, 		-- Mudback Riverbeast
		[171827] = NO_ITEM_ID, 		-- Hellfire Infernal
		[171828] = 116771, 		-- Solar Spirehawk
		[171829] = 116772, 		-- Shadowmane Charger
		[171830] = 116773, 		-- Swift Breezestrider
		[171831] = 116774, 		-- Trained Silverpelt
		[171832] = 116775, 		-- Breezestrider Stallion
		[171833] = 116776, 		-- Pale Thorngrazer
		[171834] = 116777, 		-- Vicious War Ram
		[171835] = 116778, 		-- Vicious War Raptor
		[171836] = 116779, 		-- Garn Steelmaw
		[171837] = 116780, 		-- Warsong Direfang
		[171838] = 116781, 		-- Armored Frostwolf
		[171839] = 116782, 		-- Ironside Warwolf
		[171841] = 116784, 		-- Trained Snarler
		[171842] = 116785, 		-- Swift Frostwolf
		[171843] = 116786, 		-- Smoky Direwolf
		[171844] = 108883, 		-- Dustmane Direwolf
		[171845] = 116788, 		-- Warlord's Deathwheel
		[171846] = 116789, 		-- Champion's Treadblade
		[171847] = 118515, 		-- Cindermane Charger
		[171848] = 116791, 		-- Challenger's War Yeti
		[171849] = 116792, 		-- Sunhide Gronnling
		[171850] = NO_ITEM_ID, 		-- Llothien Prowler
		[171851] = 116794, 		-- Garn Nighthowl
		[175700] = 118676, 		-- Emerald Drake
		[179244] = NO_ITEM_ID, 		-- Summon Chauffeur
		[179245] = NO_ITEM_ID, 		-- Summon Chauffeur
		[179478] = 121815, 		-- Voidtalon of the Dark Star
		[180545] = 122469, 		-- Mystic Runesaber
		[182912] = 123890, 		-- Felsteel Annihilator
		[183117] = 123974, 		-- Corrupted Dreadwing
		[183889] = 124089, 		-- Vicious War Mechanostrider
		[185052] = 124540, 		-- Vicious War Kodo
		[186305] = 127140, 		-- Infernal Direwolf
		[186828] = 128277, 		-- Primal Gladiator's Felblood Gronnling
		[189043] = 128281, 		-- Wild Gladiator's Felblood Gronnling
		[189044] = 128282, 		-- Warmongering Gladiator's Felblood Gronnling
		[189364] = 128311, 		-- Coalfist Gronnling
		[189998] = NO_ITEM_ID, 		-- Illidari Felstalker
		[189999] = NO_ITEM_ID, 		-- Grove Warden
		[190690] = 128480, 		-- Bristling Hellboar
		[190977] = 128526, 		-- Deathtusk Felboar
		[191314] = 128671, 		-- Minion of Grumpus
		[191633] = 128706, 		-- Soaring Skyterror
		[193007] = 141216, 		-- Grove Defiler
		[193695] = NO_ITEM_ID, 		-- Prestigious War Steed
		[194046] = NO_ITEM_ID, 		-- Swift Spectral Rylak
		[194464] = 129923, 		-- Eclipse Dragonhawk
		[196681] = 131734, 		-- Spirit of Eche'ro
		[200175] = NO_ITEM_ID, 		-- Felsaber
		[201098] = NO_ITEM_ID, 		-- Infinite Timereaver
		[204166] = NO_ITEM_ID, 		-- Prestigious War Wolf
		[213115] = NO_ITEM_ID, 		-- Bloodfang Widow
		[213134] = NO_ITEM_ID, 		-- Felblaze Infernal
		[213158] = 137577, 		-- Predatory Bloodgazer
		[213163] = 137578, 		-- Snowfeather Hunter
		[213164] = 137579, 		-- Brilliant Direbeak
		[213165] = 137580, 		-- Viridian Sharptalon
		[213209] = NO_ITEM_ID, 		-- Steelbound Devourer
		[213339] = NO_ITEM_ID, 		-- Great Northern Elderhorn
		[214791] = 138811, 		-- Brinedeep Bottom-Feeder
		[215159] = NO_ITEM_ID, 		-- Long-Forgotten Hippogryph
		[215545] = NO_ITEM_ID, 		-- Fel Bat (Test)
		[215558] = 138387, 		-- Ratstallion
		[221883] = NO_ITEM_ID, 		-- Divine Steed
		[221885] = NO_ITEM_ID, 		-- Divine Steed
		[221886] = NO_ITEM_ID, 		-- Divine Steed
		[221887] = NO_ITEM_ID, 		-- Divine Steed
		[222202] = 140228, 		-- Prestigious Bronze Courser
		[222236] = 140230, 		-- Prestigious Royal Courser
		[222237] = 140232, 		-- Prestigious Forest Courser
		[222238] = 140233, 		-- Prestigious Ivory Courser
		[222240] = 140408, 		-- Prestigious Azure Courser
		[222241] = 140407, 		-- Prestigious Midnight Courser
		[223018] = 138201, 		-- Fathom Dweller
		[223341] = 140353, 		-- Vicious Gilnean Warhorse
		[223354] = 140354, 		-- Vicious War Trike
		[223363] = 140348, 		-- Vicious Warstrider
		[223578] = 140350, 		-- Vicious War Elekk
		[223814] = 140500, 		-- Mechanized Lumber Extractor
		[225765] = 141217, 		-- Leyfeather Hippogryph
		[227956] = 141713, 		-- Arcadian War Turtle
		[227986] = 141843, 		-- Vindictive Gladiator's Storm Dragon
		[227988] = 141844, 		-- Fearless Gladiator's Storm Dragon
		[227989] = NO_ITEM_ID, 		-- Cruel  Gladiator's Storm Dragon
		[227991] = 141846, 		-- Ferocious Gladiator's Storm Dragon
		[227994] = 141847, 		-- Fierce Gladiator's Storm Dragon
		[227995] = 141848, 		-- Demonic Gladiator's Storm Dragon
		[228919] = 142398, 		-- Darkwater Skate
		[229376] = NO_ITEM_ID, 		-- Archmage's Prismatic Disc
		[229377] = NO_ITEM_ID, 		-- High Priest's Lightsworn Seeker
		[229385] = 142225, 		-- Ban-Lu, Grandmaster's Companion
		[229386] = NO_ITEM_ID, 		-- Huntmaster's Loyal Wolfhawk
		[229387] = NO_ITEM_ID, 		-- Deathlord's Vilebrood Vanquisher
		[229388] = NO_ITEM_ID, 		-- Battlelord's Bloodthirsty War Wyrm
		[229417] = NO_ITEM_ID, 		-- Slayer's Felbroken Shrieker
		[229438] = NO_ITEM_ID, 		-- Huntmaster's Fierce Wolfhawk
		[229439] = NO_ITEM_ID, 		-- Huntmaster's Dire Wolfhawk
		[229486] = 142234, 		-- Vicious War Bear
		[229487] = 142234, 		-- Vicious War Bear
		[229499] = NO_ITEM_ID, 		-- Midnight
		[229512] = 142237, 		-- Vicious War Lion
		[230401] = NO_ITEM_ID, 		-- White Hawkstrider
		[230844] = 142403, 		-- Brawler's Burly Basilisk
		[230987] = 142436, 		-- Arcanist's Manasaber
		[230988] = 142437, 		-- Vicious War Scorpion
		[231428] = 142552, 		-- Smoldering Ember Wyrm
		[231434] = NO_ITEM_ID, 		-- Shadowblade's Murderous Omen
		[231435] = NO_ITEM_ID, 		-- Highlord's Golden Charger
		[231442] = NO_ITEM_ID, 		-- Farseer's Raging Tempest
		[231523] = NO_ITEM_ID, 		-- Shadowblade's Lethal Omen
		[231524] = NO_ITEM_ID, 		-- Shadowblade's Baneful Omen
		[231525] = NO_ITEM_ID, 		-- Shadowblade's Crimson Omen
		[231587] = NO_ITEM_ID, 		-- Highlord's Vengeful Charger
		[231588] = NO_ITEM_ID, 		-- Highlord's Vigilant Charger
		[231589] = NO_ITEM_ID, 		-- Highlord's Valorous Charger
		[232405] = 143631, 		-- Primal Flamesaber
		[232412] = NO_ITEM_ID, 		-- Netherlord's Chaotic Wrathsteed
		[232519] = 143643, 		-- Abyss Worm
		[232523] = 143648, 		-- Vicious War Turtle
		[232525] = 143648, 		-- Vicious War Turtle
		[233364] = 143764, 		-- Leywoven Flying Carpet
		[238452] = NO_ITEM_ID, 		-- Netherlord's Brimstone Wrathsteed
		[238454] = NO_ITEM_ID, 		-- Netherlord's Accursed Wrathsteed
		[239363] = NO_ITEM_ID, 		-- Swift Spectral Hippogryph
		[242874] = 147807, 		-- Highmountain Elderhorn
		[242875] = 147804, 		-- Wild Dreamrunner
		[242881] = 147806, 		-- Cloudwing Hippogryph
		[242882] = 147805, 		-- Valarjar Stormwing
		[243025] = 147835, 		-- Riddler's Mind-Worm
		[253004] = 152794,  		-- Reins of the Amethyst Ruinstrider
		[253005] = 152795, 		-- Reins of the Beryl Ruinstrider
		[253007] = 152797, -- Reins of the Cerulean Ruinstrider
		[253006] = 152793, -- Reins of the Russet Ruinstrider
		[242305] = 152791, -- Reins of the Sable Ruinstrider
		[253008] = 152796, -- Reins of the Umber Ruinstrider
		[239013] = 152788, -- Lightforged Warframe
		[247448] = 153485, 	-- Darkmoon Dirigible
		[260173] = 161910, -- Smoky Charger
		[259213] = 161911, -- Admiralty Stallion
		[260172] = 161912, -- Dapple Gray
		[275841] = 161774, -- Expedition Bloodswarmer
		[237287] = 161773, -- Alabaster Hyena
		[275837] = 161665, -- Cobalt Pterrordax
		[273541] = 160829, -- Underrot Crawg
		[254813] = 159842, -- Sharkbait
		[266058] = 159921, -- Tomb Stalker
		[261437] = 161135, -- Schematic: Mecha-Mogul Mk2
		[290718] = 168830, -- Aerial Unit R-21/X
		
	},
	["items"] = {
		--[itemID] = spellID
		[31830] = 39315,	-- Cobalt Riding Talbuk
		[31832] = 39317,	-- Silver Riding Talbuk
		[31834] = 39318,	-- Tan Riding Talbuk
		[31836] = 39319,	-- White Riding Talbuk
		[29227] = 34896,	-- Cobalt War Talbuk
		[29229] = 34898,	-- Silver War Talbuk
		[29230] = 34899,	-- Tan War Talbuk
		[29231] = 34897,	-- White War Talbuk
		[65356] = 88741,	-- Drake of the West Wind		double entry....
		[142235] = 229486, 	-- Vicious War Bear
		[143649] = 232525,	-- Vicious War Turtle
		[143864] = 204166,	-- Reins of the Prestigious War Wolf
		[128527] = 190977,	-- Deathtusk Felboar
		[128481] = 190690,	-- Bristling Hellboar
		[91010] = 120822, 	-- Great Red Dragon Turtle
	}, 
	["index"] = {}, -- [spellID] = index
}

--[[
local creatureName, spellID, icon, active, isUsable, sourceType = C_MountJournal.GetMountInfo(index);
local creatureDisplayID, descriptionText, sourceText, isSelfMount = C_MountJournal.GetMountInfoExtra(index);
MountJournal.MountDisplay.ModelFrame:SetDisplayInfo(creatureDisplayID)
]]--

local function LoadAllData()
	if ALL_DATA_LOADED then return end
	
	local _, spellID
	local mountIDs = C_MountJournal_GetMountIDs()
	for i=1,#mountIDs do
		_, spellID = C_MountJournal_GetMountInfo(mountIDs[i])
		if MOUNT_INFO["spells"][spellID] then
			MOUNT_INFO["items"][ MOUNT_INFO["spells"][spellID] ] = spellID
		else
			MOUNT_INFO["spells"][spellID] = NO_ITEM_ID
		end
		MOUNT_INFO["index"][spellID] = mountIDs[i]
	end
	
	ALL_DATA_LOADED = true
end

function Mount.GetItemIDfromSpellID(spellID)
	if not ALL_DATA_LOADED then LoadAllData() end
	return MOUNT_INFO["spells"][spellID]
end

function Mount.GetSpellIDfromItemID(itemID)
	if not ALL_DATA_LOADED then LoadAllData() end
	return MOUNT_INFO["items"][itemID]
end

function Mount.GetIndexFromSpellID(spellID)
	if not ALL_DATA_LOADED then LoadAllData() end
	return MOUNT_INFO["index"][spellID]
end

function Mount.GetIndexFromItemID(itemID)
	if not ALL_DATA_LOADED then LoadAllData() end
	return ( MOUNT_INFO["items"][itemID] and MOUNT_INFO["items"][itemID] ~= 0 ) and MOUNT_INFO["index"][ MOUNT_INFO["items"][itemID] ] or nil
end

function Mount.GetDisplayIDfromItemID(itemID)
	local displayID = C_MountJournal_GetMountInfoExtra( Mount.GetIndexFromItemID(itemID) )
	return ( displayID and displayID ~= 0 ) and displayID or nil
end

--@do-not-package@
-- AtlasLoot.Data.Mount.DEV_SaveDataIntoDB()
function Mount.DEV_SaveDataIntoDB()
	AtlasLoot.db.MOUNTINFO = {}
	AtlasLoot.db.MOUNTINFO_SPELL2ITEMID = {}
	local numMounts = C_MountJournal.GetNumMounts()
	
	local name, spellID, itemID
	for i=1,numMounts do
		name, spellID = C_MountJournal_GetMountInfo(i)
		if name and spellID then
			AtlasLoot.db.MOUNTINFO[spellID] = name
			
			itemID = Mount.GetItemIDfromSpellID(spellID)
			if (itemID and itemID ~=0) then
				AtlasLoot.db.MOUNTINFO_SPELL2ITEMID[spellID] = itemID
			end
		end
	end
	
	
end
--@end-do-not-package@
