--[[
constants.ru.lua
This file defines an AceLocale table for all the various text strings needed
by AtlasLoot.  In this implementation, if a translation is missing, it will fall
back to the English translation.

The AL["text"] = true; shortcut can ONLY be used for English (the root translation).
]]

--Table holding all loot tables is initialised here as it loads early
AtlasLoot_Data = {};

--Create the library instance
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");

local AL = AceLocale:NewLocale("AtlasLoot", "ruRU", false);

--Register translations
if AL then
    --Text strings for UI objects
    AL["AtlasLoot"] = "AtlasLoot";
    AL["No match found for"] = "Не найдено совпадений для";
    AL["Search"] = "Поиск";
    AL["Clear"] = "Очистить";
    AL["Select Loot Table"] = "Выбор таблицы";
    AL["Select Sub-Table"] = "Выбор подтаблицы";
    AL["Drop Rate: "] = "Шанс выпадения: ";
    AL["DKP"] = "DKP";
    AL["Priority:"] = "Приоритет:";
    AL["Click boss name to view loot."] = "Нажмите на имя босса для просмотра добычи.";
    AL["Various Locations"] = "Разное местонахождение";
    AL["This is a loot browser only.  To view maps as well, install either Atlas or Alphamap."] = "Это только обозреватель добычи. Для обзора карт установите Atlas или Alphamap.";
    AL["Toggle AL Panel"] = "Перек-тель панели AL";
    AL[" is safe."] =  " безопасен.";
    AL["Server queried for "] = "Сервер запрошен для ";
    AL[".  Right click on any other item to refresh the loot page."] = ".  Нажмите правой кнопкой мыши на любой другой предмет для обновления страницы добычи.";
    AL["Back"] = "Назад";
    AL["Level 60"] = "60 уровень";
    AL["Level 70"] = "70 уровень";
    AL["|cffff0000(unsafe)"] = "|cffff0000(небезопасен)";
    AL["Misc"] = "Разное";
    AL["Miscellaneous"] = "Разное";
    AL["Rewards"] = "Награды";
    AL["Heroic Mode"] = "Героический режим";
    AL["Normal Mode"] = "Обычный режим";
    AL["Show 10 Man Loot"] = "Показать добычу для 10 чел.";
    AL["Show 25 Man Loot"] = "Показать добычу для 25 чел.";
    AL["10 Man"] = "10 чел.";
    AL["25 Man"] = "25 чел.";
    AL["Raid"] = "Рейд";
    AL["Factions - Original WoW"] = "Фракции - Обычный WoW";
    AL["Factions - Burning Crusade"] = "Фракции - Burning Crusade";
    AL["Factions - Wrath of the Lich King"] = "Фракции - Wrath of the Lich King";
    AL["Choose Table ..."] = "Выберите таблицу ...";
    AL["Close Menu"] = "Закрыть меню";
    AL["Unknown"] = "Неизвестно";
    AL["Skill Required:"] = "Необходимый навык:";
    AL["QuickLook"] = "Быстр.просм.";
    AL["Add to QuickLooks:"] = "Добавить в быстр.просм.:";
    AL["Assign this loot table\n to QuickLook"] = "Назначить эту таблицу добычи\n для быстрого просмотра";
    AL["Req. Rating:"] = "Требуемый рейтинг:";
    AL["Rating:"] = "Рейтинг:";    --Shorthand for 'Required Rating' for the personal/team ratings in Arena S4
    AL["Query Server"] = "Запросить";
    AL["Classic Instances"] = "Классические подземелья";
    AL["BC Instances"] = "Подземелья BC";
    AL["WotLK Instances"] = "Подземелья WotLK";
    AL["Burning Crusade"] = "Burning Crusade";
    AL["Entrance"] = "Вход";
    AL["Original Factions"] = "Обычные фракции";
    AL["BC Factions"] = "Фракции BC";
    AL["WotLK Factions"] = "Фракции WotLK";
    AL["Reset Frames"] = "Сброс фреймов";
    AL["Reset Wishlist"] = "Сброс пожеланий";
    AL["Reset Quicklooks"] = "Сброс БП";
    AL["Classic Mounts"] = "Классический транспорт";
    AL["The Burning Crusade Mounts"] = "Транспорт The Burning Crusade";
    AL["Wrath of the Lich King Mounts"] = "Транспорт Wrath of the Lich King";
    AL["Select a Loot Table..."] = "Выберите таблицу добычи...";
    AL["OR"] = "ИЛИ";
    AL["Wrath of the Lich King"] = "Wrath of the Lich King";
    AL["FuBar Options"] = "Опции FuBar";
    AL["Attach to Minimap"] = "Закрепить у мини-карты";
    AL["Hide FuBar Plugin"] = "Скрыть плагин FuBar";
    AL["Show FuBar Plugin"] = "Показ.плагин FuBar";
    AL["Position:"] = "Позиция:";
    AL["Left"] = "Слева";
    AL["Center"] = "По центру";
    AL["Right"] = "Справа";
    AL["Hide Text"] = "Скрыть текст";
    AL["Hide Icon"] = "Скрыть иконку";
    AL["Minimap Button Options"] = "Опции кнопки на мини-карте";

    --Text for Options Panel
    AL["Atlasloot Options"] = "Опции AtlasLoot";
    AL["Safe Chat Links |cff1eff00(recommended)|r"] = "Безопасные ссылки |cff1eff00(рекомендуется)|r";
    AL["All Chat Links |cffff0000(use at own risk)|r"] = "Все ссылки |cffff0000(исп. на свой риск)|r";
    AL["Default Tooltips"] = "Стандартные подсказки";
    AL["Lootlink Tooltips"] = "Подсказки Lootlink";
    AL["|cff9d9d9dLootlink Tooltips|r"] = "|cff9d9d9dПодсказки Lootlink|r";
    AL["ItemSync Tooltips"] = "Подсказки ItemSync";
    AL["|cff9d9d9dItemSync Tooltips|r"] = "|cff9d9d9dПодсказки ItemSync|r";
    AL["Use EquipCompare"] = "Использовать EquipCompare";
    AL["|cff9d9d9dUse EquipCompare|r"] = "|cff9d9d9dИспользовать EquipCompare|r";
    AL["Show Comparison Tooltips"] = "Показывать сравнительные подсказки";
    AL["Make Loot Table Opaque"] = "Матовое окно добычи";
    AL["Show itemIDs at all times"] = "Показывать ID предметов";
    AL["Hide AtlasLoot Panel"] = "Скрыть панель AtlasLoot";
    AL["Show Basic Minimap Button"] = "Показывать кнопку на мини-карте";
    AL["|cff9d9d9dShow Basic Minimap Button|r"] = "|cff9d9d9dПоказывать кнопку на мини-карте|r";
    AL["Set Minimap Button Position"] = "Установить позицию кнопки на мини-карте";
    AL["Suppress Item Query Text"] = "Подавлять спам при запросах";
    AL["Notify on LoD Module Load"] = "Оповещать о загрузке модулей";
    AL["Load Loot Modules at Startup"] = "Загружать модули при старте";
    AL["Loot Browser Scale: "] = "Масштаб обозревателя добычи: ";
    AL["Button Position: "] = "Позиция кнопки: ";
    AL["Button Radius: "] = "Радиус кнопки: ";
    AL["Done"] = "Готово";
    AL["FuBar Toggle"] = "Перекл. FuBar";
    AL["WishList"] = "Пожелания";
    AL["Search Result: %s"] = "Результат поиска: %s";
    AL["Last Result"] = "Последн.результат";
    AL["Search on"] = "Искать в";
    AL["All modules"] = "Все модули";
    AL["If checked, AtlasLoot will load and search across all the modules."] = "Если включено, AtlasLoot загрузит и будет искать по всем модулям.";
    AL["Search options"] = "Настройки поиска";
    AL["Partial matching"] = "Частичное совпадение";
    AL["If checked, AtlasLoot search item names for a partial match."] = "Если включено, AtlasLoot будет искать названия предметов с частичным совпадением.";
    AL["You don't have any module selected to search on!"] = "Вы не выбрали ни одного модуля для поиска!";
    --The next 4 lines are the tooltip for the Server Query Button
    --The translation doesn't have to be literal, just re-write the
    --sentences as you would naturally and break them up into 4 roughly
    --equal lines.
    AL["Queries the server for all items"] = "Запрашивает сервер обо всех предметах";
    AL["on this page. The items will be"] = "на данной странице. Предметы будут";
    AL["refreshed when you next mouse"] = "обновлены при следующем наведении";
    AL["over them."] = "на них мышью.";
    AL["The Minimap Button is generated by the FuBar Plugin."] = "Кнопка на мини-карте создается плагином FuBar";
    AL["This is automatic, you do not need FuBar installed."] = "Это происходит автоматически, вам не нужно устанавливать FuBar";
    
    --Slash commands
    AL["reset"] = "Сброс";
    AL["options"] = "Опции";
    AL["Reset complete!"] = "Сброс выполнен!";

    --Error Messages and warnings
    AL["AtlasLoot Error!"] = "Ошибка AtlasLoot!";
    AL["WishList Full!"] = "Список пожеланий полон!";
    AL[" added to the WishList."] = " добавлено в пожелания.";
    AL[" already in the WishList!"] = " уже в пожеланиях!";
    AL[" deleted from the WishList."] = " удалено из пожеланий.";

    --Incomplete Table Registry error message
    AL[" not listed in loot table registry, please report this message to the AtlasLoot forums at http://www.atlasloot.net"] = " не включен в список добычи, пожалуйста, сообщите об этом на форум AtlasLoot по адресу http://www.atlasloot.net";

    --LoD Module disabled or missing
    AL[" is unavailable, the following load on demand module is required: "] = " недоступен, требуется следующий модуль загрузки по требованию: ";

    --LoD Module load sequence could not be completed
    AL["Status of the following module could not be determined: "] = "Состояние следующего модуля не может быть определено: ";

    --LoD Module required has loaded, but loot table is missing
    AL[" could not be accessed, the following module may be out of date: "] = " недоступен, следующий модуль может быть устаревшим: ";

    --LoD module loaded successfully
    AL["sucessfully loaded."] = "успешно загружен.";

    --Need a big dataset for searching
    AL["Loading available tables for searching"] = "Загрузка доступных таблиц для поиска";

    --All Available modules loaded
    AL["All Available Modules Loaded"] = "Все доступные модули загружены";

    --Minimap Button
    AL["|cff1eff00Left-Click|r Browse Loot Tables"] = "|cff1eff00ЛКМ|r Просмотр таблиц добычи";
    AL["|cffff0000Right-Click|r View Options"] = "|cffff0000ПКМ|r Показать опции";
    AL["|cffff0000Shift-Click|r View Options"] = "|cffff0000Shift-Клик|r Показать опции";
    AL["|cffccccccLeft-Click + Drag|r Move Minimap Button"] = "|cffccccccЛКМ + Перетаскивание|r Переместить кнопку на мини-карте";
    AL["|cffccccccRight-Click + Drag|r Move Minimap Button"] = "|cffccccccПКМ + Перетаскивание|r Переместить кнопку на мини-карте";

    --AtlasLoot Panel
    AL["Options"] = "Опции";
    AL["Collections"] = "Коллекции";
    AL["Factions"] = "Фракции";
    AL["World Events"] = "Мировые события";
    AL["Load Modules"] = "Загр. модулей";
    AL["Crafting"] = "Ремесло";
    AL["Crafting Daily Quests"] = "Ежедневные задания";

    --First time user
    AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences."] = "Добро пожаловать в Atlasloot Enhanced.  Пожалуйста, уделите некоторое время для настройки.";
    AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences for tooltips and links in the chat window.\n\n  This options screen can be reached again at any later time by typing '/atlasloot'."] = "Добро пожаловать в Atlasloot Enhanced.  Пожалуйста, уделите немножко времени настройкам подсказок и ссылок в окне общения.\n\n  Данное окно настроек можно вызвать снова в любое время, набрав '/atlasloot'.";
    AL["Setup"] = "Установки";

    --Old Atlas Detected
    AL["It has been detected that your version of Atlas does not match the version that Atlasloot is tuned for ("] = "Обнаружено, что Ваша версия Atlas не соответствует той версии, под которую настроен Atlasloot (";
    AL[").  Depending on changes, there may be the occasional error, so please visit http://www.atlasmod.com as soon as possible to update."] = ").  В зависимости от изменений может возникнуть случайная ошибка, поэтому, пожалуйста, посетите http://www.atlasmod.com для обновления как можно скорее.";
    AL["OK"] = "OK";
    AL["Incompatible Atlas Detected"] = "Обнаружена несовместимая версия Atlas";

    --Unsafe item tooltip
    AL["Unsafe Item"] = "Небезопасный предмет";
    AL["Item Unavailable"] = "Предмет недоступен";
    AL["ItemID:"] = "ID предмета:";
    AL["This item is not available on your server or your battlegroup yet."] = "Этот предмет пока недоступен на вашем сервере или боевой группе.";
    AL["This item is unsafe.  To view this item without the risk of disconnection, you need to have first seen it in the game world. This is a restriction enforced by Blizzard since Patch 1.10."] = "Этот предмет небезопасен. Для того чтобы просмотреть его без риска разрыва соединения с сервером, Вы должны сначала увидеть его в игровом мире. Это ограничение было введено компанией Blizzard, начиная с патча 1.10.";
    AL["You can right-click to attempt to query the server.  You may be disconnected."] = "Вы можете нажать правой кнопкой мыши, чтобы попытаться запросить сервер.  Может произойти разрыв соединения.";

    --Misc Inventory related words
    AL["Enchant"] = "Чары";
    AL["Trade Goods"] = "Хозяйственные товары";
    AL["Scope"] = "Прицел";
    AL["Darkmoon Faire Card"] = "Карта Ярмарки Новолуния";
    AL["Book"] = "Книга";
    AL["Banner"] = "Знамя";
    AL["Set"] = "Комплект";
    AL["Token"] = "Знак";
    AL["Tokens"] = "Знаки";
    AL["Skinning Knife"] = "Нож для снятия шкур";
    AL["Herbalism Knife"] = "Нож для травничества";
    AL["Fish"] = "Рыба";
    AL["Combat Pet"] = "Боевой питомец";
    AL["Fireworks"] = "Фейерверк";
    
    --Extra inventory stuff
    AL["Cloak"] = "Плащ";
    AL["Weapons"] = "Оружие";

    --Alchemy
    AL["Battle Elixirs"] = "Боевые эликсиры";
    AL["Guardian Elixirs"] = "Охранные эликсиры";
    AL["Potions"] = "Зелья";
    AL["Transmutes"] = "Трансмутации";
    AL["Flasks"] = "Настои";
    
    --Labels for loot descriptions
    AL["Classes:"] = "Классы:";
    AL["This Item Begins a Quest"] = "Этот предмет позволяет получить задание";
    AL["Quest Item"] = "Предмет, необходимый для задания";
    AL["Quest Reward"] = "Награда за выполнение задания";
    AL["Shared"] = "Совместный";
    AL["Unique"] = "Уникальный";
    AL["Right Half"] = "Правая половина";
    AL["Left Half"] = "Левая половина";
    AL["28 Slot Soul Shard"] = "Сумка душ (28 ячеек)"; --What is this?
    AL["20 Slot"] = "20 ячеек";
    AL["18 Slot"] = "18 ячеек";
    AL["16 Slot"] = "16 ячеек";
    AL["10 Slot"] = "10 ячеек";
    AL["(has random enchantment)"] = "(случайные чары)";
    AL["Use to purchase rewards"] = "Использ. для покупки наград";
    AL["Use to purchase rewards (Horde)"] = "Использ. для покупки наград (Орда)";
    AL["Use to purchase rewards (Alliance)"] = "Использ. для покупки наград (Альянс)";
    AL["World Bosses"] = "Мировые боссы";
    AL["Reputation Factions"] = "Репутация у фракций";
    AL["Sets/Collections"] = "Комплекты/Коллекции";
    AL["Card Game Item"] = "Предмет карточной игры";
    AL["Tier 1"] = "Tier 1";
    AL["Tier 2"] = "Tier 2";
    AL["Tier 4"] = "Tier 4";
    AL["Tier 5"] = "Tier 5";
    AL["Tier 6"] = "Tier 6";
    AL["Tier 7 Sets"] = "Комплекты Tier 7";
    AL["10/25 Man"] = "10/25 чел.";
    AL["Tier 7 Sets 10/25 Man"] = "Tier 7 10/25 чел.";
    AL["Level 80 PvP Sets"] = "Комплекты PvP на 80 уровень";
    AL["Arena Reward"] = "Награда с Арены";
    AL["Conjured Item"] = "Сотворенный предмет";
    AL["Used to summon boss"] = "Использ. для призыва босса";
    AL["Phase 1"] = "Фаза 1";
    AL["Phase 2"] = "Фаза 2";
    AL["Phase 3"] = "Фаза 3";
    AL["Fire"] = "Огонь";
    AL["Water"] = "Вода";
    AL["Wind"] = "Ветер";
    AL["Earth"] = "Земля";
    AL["Master Angler"] = "Лучший удильщик";
    AL["First Prize"] = "Главный приз";
    AL["Rare Fish Rewards"] = "Награды за редкую рыбу";
    AL["Rare Fish"] = "Редкая рыба";
    AL["Tradable against sunmote + item above"] = "Обменивается на \"Солнечную пылинку\" + предмет сверху";
    AL["Rare"] = "Редкий";
    AL["Heroic"] = "Героический";
    AL["Summon"] = "Призыв";
    AL["Random"] = "Случайный";
    AL["Weapons"] = "Оружие";
    AL["Reward"] = "Награда";
    AL["Achievement"] = "Достижение";
    AL["Unattainable Tabards"] = "Недоступные гербовые накидки";

    --Card Game Decks and descriptions
    AL["Upper Deck Card Game Items"] = "Предметы карточной игры Upper Deck";
    AL["Loot Card Items"] = "Предметы игровых карт";
    AL["UDE Items"] = "Предметы UDE";

    -- First set
    AL["Heroes of Azeroth"] = "Heroes of Azeroth";
	AL["Landro Longshot"] = "Карта \"Landro Longshot\"";
	AL["Thunderhead Hippogryph"] = "Карта \"Thunderhead Hippogryph\"";
	AL["Saltwater Snapjaw"] = "Карта \"Saltwater Snapjaw\"";
    -- Second set
    AL["Through The Dark Portal"] = "Through The Dark Portal";
	AL["King Mukla"] = "Карта \"King Mukla\"";
	AL["Rest and Relaxation"] = "Карта \"Rest and Relaxation\"";
	AL["Fortune Telling"] = "Карта \"Fortune Telling\"";
    -- Third set
    AL["Fires of Outland"] = "Fires of Outland";
	AL["Spectral Tiger"] = "Карта \"Spectral Tiger\"";
	AL["Gone Fishin'"] = "Карта \"Gone Fishin'\"";
	AL["Goblin Gumbo"] = "Карта \"Goblin Gumbo\"";
    -- Fourth set
    AL["March of the Legion"] = "March of the Legion";
	AL["Kiting"] = "Карта \"Kiting\"";
	AL["Robotic Homing Chicken"] = "Карта \"Robotic Homing Chicken\"";
	AL["Paper Airplane"] = "Карта \"Paper Airplane\"";
    -- Fifth set
    AL["Servants of the Betrayer"] = "Servants of the Betrayer";
	AL["X-51 Nether-Rocket"] = "Карта \"X-51 Nether-Rocket\"";
	AL["Personal Weather Machine"] = "Карта \"Personal Weather Machine\"";
	AL["Papa Hummel's Old-fashioned Pet Biscuit"] = "Карта \"Papa Hummel's Old-fashioned Pet Biscuit\"";
    -- Sixth set
    AL["Hunt for Illidan"] = "Hunt for Illidan";
	AL["The Footsteps of Illidan"] = "Карта \"The Footsteps of Illidan\"";
	AL["Disco Inferno!"] = "Карта \"Disco Inferno!\"";
	AL["Ethereal Plunderer"] = "Карта \"Ethereal Plunderer\"";
    -- Seventh set
    AL["Drums of War"] = "Барабаны Войны";
	AL["The Red Bearon"] = "Карта \"The Red Bearon\"";
	AL["Owned!"] = "Карта \"Owned!\"";
	AL["Slashdance"] = "Карта \"Slashdance\"";

    --Battleground Brackets
    AL["Misc. Rewards"] = "Разные награды";
    AL["Superior Rewards"] = "Наилучшие награды";
    AL["Epic Rewards"] = "Эпические награды";
    AL["Level 10-19 Rewards"] = "Награды для 10-19 уровней";
    AL["Level 20-29 Rewards"] = "Награды для 20-29 уровней";
    AL["Level 30-39 Rewards"] = "Награды для 30-39 уровней";
    AL["Level 40-49 Rewards"] = "Награды для 40-49 уровней";
    AL["Level 50-59 Rewards"] = "Награды для 50-59 уровней";
    AL["Level 60 Rewards"] = "Награды для 60 уровня";

    --Brood of Nozdormu Paths
    AL["Path of the Conqueror"] = "Путь победителя";
    AL["Path of the Invoker"] = "Путь заклинателя";
    AL["Path of the Protector"] = "Путь защитника";

    --Violet Eye Paths
    AL["Path of the Violet Protector"] = "Защитник из Аметистового Ока";
    AL["Path of the Violet Mage"] = "Маг из Аметистового Ока";
    AL["Path of the Violet Assassin"] = "Убийца из Аметистового Ока";
    AL["Path of the Violet Restorer"] = "Исцелитель из Аметистового Ока";

    --AQ Opening Event
    AL["Red Scepter Shard"] = "Осколок красного скипетра";
    AL["Blue Scepter Shard"] = "Осколки синего скипетра";
    AL["Green Scepter Shard"] = "Осколок зеленого скипетра";
    AL["Scepter of the Shifting Sands"] = "Скипетр Зыбучих песков";

    --World PvP
    AL["Hellfire Fortifications"] = "Штурмовые укрепления";
    AL["Twin Spire Ruins"] = "Руины Двух Башен";
    AL["Spirit Towers"] = "Башни Духов";
    AL["Halaa"] = "Халаа";

    --Karazhan Opera Event Headings
    AL["Shared Drops"] = "Совместная добыча";
    AL["Romulo & Julianne"] = "Ромуло и Джулианна";
    AL["Wizard of Oz"] = "Волшебник страны Оз";
    AL["Red Riding Hood"] = "Красная шапочка";

    --Karazhan Animal Boss Types
    AL["Spider"] = "Паук";
    AL["Darkhound"] = "Пес тьмы";
    AL["Bat"] = "Летучая мышь";

    --ZG Tokens
    AL["Primal Hakkari Kossack"] = "Изначальная рубашка Хаккари";
    AL["Primal Hakkari Shawl"] = "Изначальная лацерна Хаккари";
    AL["Primal Hakkari Bindings"] = "Изначальные наручники Хаккари";
    AL["Primal Hakkari Sash"] = "Изначальный кушак Хаккари";
    AL["Primal Hakkari Stanchion"] = "Изначальный браслет Хаккари";
    AL["Primal Hakkari Aegis"] = "Изначальная эгида Хаккари";
    AL["Primal Hakkari Girdle"] = "Ремень Изначальных Хаккари";
    AL["Primal Hakkari Armsplint"] = "Изначальные обручья Хаккари";
    AL["Primal Hakkari Tabard"] = "Изначальная гербовая накидка Хаккари";

    --AQ20 Tokens
    AL["Qiraji Ornate Hilt"] = "Киражская изысканная рукоять";
    AL["Qiraji Martial Drape"] = "Киражская воинская пелерина";
    AL["Qiraji Magisterial Ring"] = "Киражское кольцо власти";
    AL["Qiraji Ceremonial Ring"] = "Киражское церемониальное кольцо";
    AL["Qiraji Regal Drape"] = "Киражская царская пелерина";
    AL["Qiraji Spiked Hilt"] = "Киражская шипастая рукоять";

    --AQ40 Tokens
    AL["Qiraji Bindings of Dominance"] = "Киражские наручники Господства";
    AL["Qiraji Bindings of Command"] = "Киражские наручники Командования";
    AL["Vek'nilash's Circlet"] = "Венец Век'нилаша";
    AL["Vek'lor's Diadem"] = "Диадема Век'лора";
    AL["Ouro's Intact Hide"] = "Целая шкура Оуро";
    AL["Skin of the Great Sandworm"] = "Шкура гигантского песчаного червя";
    AL["Husk of the Old God"] = "Чешуя Древнего Бога";
    AL["Carapace of the Old God"] = "Панцирь Древнего Бога";

    --Blacksmithing Crafted Sets
    AL["Imperial Plate"] = "Имперские латы";
    AL["The Darksoul"] = "Темная душа";
    AL["Fel Iron Plate"] = "Латы из оскверненного железа";
    AL["Adamantite Battlegear"] = "Адамантитовая броня";
    AL["Flame Guard"] = "Пламенный Страж";
    AL["Enchanted Adamantite Armor"] = "Волшебная адамантитовая броня";
    AL["Khorium Ward"] = "Кориевая Опека";
    AL["Faith in Felsteel"] = "Верность оскверненной стали";
    AL["Burning Rage"] = "Пламенная ярость";
    AL["Bloodsoul Embrace"] = "Объятия Кровавого Духа";
    AL["Fel Iron Chain"] = "Кольчуга из оскверненного железа";

    --Tailoring Crafted Sets
    AL["Bloodvine Garb"] = "Одеяния кровавой лозы";
    AL["Netherweave Vestments"] = "Одеяния из ткани Пустоты";
    AL["Imbued Netherweave"] = "Прочная ткань Пустоты";
    AL["Arcanoweave Vestments"] = "Одеяния из тайной ткани";
    AL["The Unyielding"] = "Непреклонность";
    AL["Whitemend Wisdom"] = "Мудрость Белого целителя";
    AL["Spellstrike Infusion"] = "Сокрушительная магия";
    AL["Battlecast Garb"] = "Одеяния боевого заклятья";
    AL["Soulcloth Embrace"] = "Объятия ткани Душ";
    AL["Primal Mooncloth"] = "Изначальная луноткань";
    AL["Shadow's Embrace"] = "Объятия Тени";
    AL["Wrath of Spellfire"] = "Гнев Чародейского огня";

    --Leatherworking Crafted Sets
    AL["Volcanic Armor"] = "Вулканические доспехи";
    AL["Ironfeather Armor"] = "Железноперые доспехи";
    AL["Stormshroud Armor"] = "Доспехи Грозового покрова";
    AL["Devilsaur Armor"] = "Доспехи из кожи девизавра";
    AL["Blood Tiger Harness"] = "Доспехи кровавого тигра";
    AL["Primal Batskin"] = "Шкура древней летучей мыши";
    AL["Wild Draenish Armor"] = "Доспехи дренейского дикаря";
    AL["Thick Draenic Armor"] = "Утолщенные дренейские доспехи";
    AL["Fel Skin"] = "Кожа Скверны";
    AL["Strength of the Clefthoof"] = "Сила копытня";
    AL["Green Dragon Mail"] = "Кольчуга Зеленого дракона";
    AL["Blue Dragon Mail"] = "Кольчуга Синего дракона";
    AL["Black Dragon Mail"] = "Кольчуга Черного дракона";
    AL["Scaled Draenic Armor"] = "Чешуйчатые дренейские доспехи";
    AL["Felscale Armor"] = "Доспехи Чешуи Скверны";
    AL["Felstalker Armor"] = "Доспехи ловца Скверны";
    AL["Fury of the Nether"] = "Ярость Пустоты";
    AL["Primal Intent"] = "Изначальная цель";
    AL["Windhawk Armor"] = "Доспехи Ветроястреба";
    AL["Netherscale Armor"] = "Доспехи из чешуи дракона Пустоты";
    AL["Netherstrike Armor"] = "Доспехи удара Пустоты";

    --Vanilla WoW Sets
    AL["Defias Leather"] = "Кожаные доспехи Братства Справедливости";
    AL["Embrace of the Viper"] = "Объятия гадюки";
    AL["Chain of the Scarlet Crusade"] = "Цепь Алого ордена";
    AL["The Gladiator"] = "Гладиатор";
    AL["Ironweave Battlesuit"] = "Железнотканые доспехи";
    AL["Necropile Raiment"] = "Одеяния Праха";
    AL["Cadaverous Garb"] = "Трупный наряд";
    AL["Bloodmail Regalia"] = "Регалии Кровавой кольчуги";
    AL["Deathbone Guardian"] = "Костяной Страж";
    AL["The Postmaster"] = "Вестник";
    AL["Shard of the Gods"] = "Осколок Богов";
    AL["Zul'Gurub Rings"] = "Кольца Зул'Гуруба";
    AL["Major Mojo Infusion"] = "Великое вуду";
    AL["Overlord's Resolution"] = "Решимость Властителя";
    AL["Prayer of the Primal"] = "Молитва Изначального";
    AL["Zanzil's Concentration"] = "Сосредоточение Занзила";
    AL["Spirit of Eskhandar"] = "Дух Эсхандара";
    AL["The Twin Blades of Hakkari"] = "Парные клинки Хаккари";
    AL["Primal Blessing"] = "Простое Благословение";
    AL["Dal'Rend's Arms"] = "Руки Дал'Ренда";
    AL["Spider's Kiss"] = "Поцелуй паука";

    --The Burning Crusade Sets
    AL["Latro's Flurry"] = "Беспокойство Латро";
    AL["The Twin Stars"] = "Двойные Звезды";
    AL["The Twin Blades of Azzinoth"] = "Парные клинки Аззинота";
    
    --Recipe origin strings
    AL["Trainer"] = "Учитель";
    AL["Discovery"] = "Открытие";
    AL["World Drop"] = "World Drop";
    AL["Vendor"] = "Продавец";
    AL["Quest"] = "Задание";
    AL["Crafted"] = "Изготовленный";
    
	--Scourge Invasion
    AL["Scourge Invasion"] = "Вторжение Плети";
    AL["Blessed Regalia of Undead Cleansing"] = "Благословенные регалии искоренения нежити";
    AL["Undead Slayer's Blessed Armor"] = "Благословенная броня истребителя нежити";
    AL["Blessed Garb of the Undead Slayer"] = "Благословенное облачение истребителя нежити";
    AL["Blessed Battlegear of Undead Slaying"] = "Благословенное снаряжение истребителя нежити";
    AL["Prince Tenris Mirkblood"] = "Принц Тенрис Мутная Кровь";

    --ZG Sets
    AL["Haruspex's Garb"] = "Наряд гаруспика";
    AL["Predator's Armor"] = "Доспехи Хищника";
    AL["Illusionist's Attire"] = "Наряд Мастера иллюзий";
    AL["Freethinker's Armor"] = "Доспехи Вольнодумца";
    AL["Confessor's Raiment"] = "Облачение Исповедника";
    AL["Madcap's Outfit"] = "Одеяния безумца";
    AL["Augur's Regalia"] = "Регалии Авгура";
    AL["Demoniac's Threads"] = "Дьявольские нити";
    AL["Vindicator's Battlegear"] = "Броня воздаятеля";

    --AQ20 Sets
    AL["Symbols of Unending Life"] = "Символы Бесконечной жизни";
    AL["Trappings of the Unseen Path"] = "Ловушки Незримого Пути";
    AL["Trappings of Vaulted Secrets"] = "Облачение Погребенных тайн";
    AL["Battlegear of Eternal Justice"] = "Броня Вечной Справедливости";
    AL["Finery of Infinite Wisdom"] = "Облачение Беспредельной мудрости";
    AL["Emblems of Veiled Shadows"] = "Знаки Скрытых теней";
    AL["Gift of the Gathering Storm"] = "Дар Зова Бури";
    AL["Implements of Unspoken Names"] = "Воплощение Неназванных имен";
    AL["Battlegear of Unyielding Strength"] = "Броня Непреклонной силы";

    --AQ40 Sets
    AL["Genesis Raiment"] = "Ризы Бытия";
    AL["Striker's Garb"] = "Одеяния бойца";
    AL["Enigma Vestments"] = "Облачение Тайны";
    AL["Avenger's Battlegear"] = "Броня Мстителя";
    AL["Garments of the Oracle"] = "Облачение Оракула";
    AL["Deathdealer's Embrace"] = "Объятия Смертоносца";
    AL["Stormcaller's Garb"] = "Одеяния Зова Бури";
    AL["Doomcaller's Attire"] = "Наряд Призывателя Рока";
    AL["Conqueror's Battlegear"] = "Броня Завоевателя";

    --Dungeon 1 Sets
    AL["Wildheart Raiment"] = "Облачение Звериного сердца";
    AL["Beaststalker Armor"] = "Доспехи следопыта";
    AL["Magister's Regalia"] = "Регалии Магистра";
    AL["Lightforge Armor"] = "Доспехи Светлой стали";
    AL["Vestments of the Devout"] = "Ризы Благочестия";
    AL["Shadowcraft Armor"] = "Доспехи Незаметности";
    AL["The Elements"] = "Стихии";
    AL["Dreadmist Raiment"] = "Одеяния Багрового Тумана";
    AL["Battlegear of Valor"] = "Броня Доблести";

    --Dungeon 2 Sets
    AL["Feralheart Raiment"] = "Одеяния Жестокого Сердца";
    AL["Beastmaster Armor"] = "Доспехи Повелителя зверей";
    AL["Sorcerer's Regalia"] = "Регалии чародея";
    AL["Soulforge Armor"] = "Доспехи Закаленного духа";
    AL["Vestments of the Virtuous"] = "Ризы Добродетели";
    AL["Darkmantle Armor"] = "Доспехи Покрова тьмы";
    AL["The Five Thunders"] = "Пять Громов";
    AL["Deathmist Raiment"] = "Одеяния Тумана смерти";
    AL["Battlegear of Heroism"] = "Броня Героизма";

    --Dungeon 3 Sets
    AL["Hallowed Raiment"] = "Благословенные ризы";
    AL["Incanter's Regalia"] = "Регалии Заклинателя";
    AL["Mana-Etched Regalia"] = "Регалии Маны";
    AL["Oblivion Raiment"] = "Одеяния Забвения";
    AL["Assassination Armor"] = "Доспехи Ликвидации";
    AL["Moonglade Raiment"] = "Одеяния Лунной поляны";
    AL["Wastewalker Armor"] = "Доспехи Странника пустошей";
    AL["Beast Lord Armor"] = "Доспехи Повелителя зверей";
    AL["Desolation Battlegear"] = "Броня опустошения";
    AL["Tidefury Raiment"] = "Одеяния Яростного прилива";
    AL["Bold Armor"] = "Могучая броня";
    AL["Doomplate Battlegear"] = "Роковая Броня";
    AL["Righteous Armor"] = "Доспехи Праведности";

    --Tier 1 Sets
    AL["Cenarion Raiment"] = "Кенарийские одеяния";
    AL["Giantstalker Armor"] = "Доспехи Истребителя великанов";
    AL["Arcanist Regalia"] = "Регалии Чародея";
    AL["Lawbringer Armor"] = "Доспехи Судии";
    AL["Vestments of Prophecy"] = "Ризы Пророчества";
    AL["Nightslayer Armor"] = "Доспехи ночного убийцы";
    AL["The Earthfury"] = "Гнев Земли";
    AL["Felheart Raiment"] = "Одеяния Сердца Скверны";
    AL["Battlegear of Might"] = "Броня Мощи";

    --Tier 2 Sets
    AL["Stormrage Raiment"] = "Одеяния Ярости Бури";
    AL["Dragonstalker Armor"] = "Доспехи охотника на драконов";
    AL["Netherwind Regalia"] = "Регалия ветра Пустоты";
    AL["Judgement Armor"] = "Доспехи Правосудия";
    AL["Vestments of Transcendence"] = "Ризы Превосходства";
    AL["Bloodfang Armor"] = "Доспехи Кровавых Клыков";
    AL["The Ten Storms"] = "Десять Бурь";
    AL["Nemesis Raiment"] = "Одеяния Возмездия";
    AL["Battlegear of Wrath"] = "Броня Гнева";

    --Tier 3 Sets
    AL["Dreamwalker Raiment"] = "Одеяния сновидца";
    AL["Cryptstalker Armor"] = "Доспехи Расхитителя гробниц";
    AL["Frostfire Regalia"] = "Регалии Ледяного Пламени";
    AL["Redemption Armor"] = "Доспехи Возмездия";
    AL["Vestments of Faith"] = "Ризы веры";
    AL["Bonescythe Armor"] = "Доспехи костяной косы";
    AL["The Earthshatterer"] = "Землекрушитель";
    AL["Plagueheart Raiment"] = "Облачение Проклятого сердца";
    AL["Dreadnaught's Battlegear"] = "Броня неустрашимости";

    --Tier 4 Sets
    AL["Malorne Harness"] = "Облачение Малорна";
    AL["Malorne Raiment"] = "Одеяния Малорна";
    AL["Malorne Regalia"] = "Регалии Малорна";
    AL["Demon Stalker Armor"] = "Доспехи Ловчего демонов";
    AL["Aldor Regalia"] = "Регалии Алдоров";
    AL["Justicar Armor"] = "Доспехи Карателя";
    AL["Justicar Battlegear"] = "Броня Карателя";
    AL["Justicar Raiment"] = "Одеяния Карателя";
    AL["Incarnate Raiment"] = "Одеяния Воплощения";
    AL["Incarnate Regalia"] = "Воплощенные регалии";
    AL["Netherblade Set"] = "Клинки Пустоты"; --Netherblade
    AL["Cyclone Harness"] = "Облачение Смерча";
    AL["Cyclone Raiment"] = "Одеяния Смерча";
    AL["Cyclone Regalia"] = "Регалии Смерча";
    AL["Voidheart Raiment"] = "Одеяния сердца Бездны";
    AL["Warbringer Armor"] = "Доспехи Вестника войны";
    AL["Warbringer Battlegear"] = "Броня Вестника войны";

    --Tier 5 Sets
    AL["Nordrassil Harness"] = "Облачение Нордрассила";
    AL["Nordrassil Raiment"] = "Одеяния Нордрассила";
    AL["Nordrassil Regalia"] = "Регалии Нордрассила";
    AL["Rift Stalker Armor"] = "Доспехи Следопыта ущелий";
    AL["Tirisfal Regalia"] = "Тирисфальские регалии";
    AL["Crystalforge Armor"] = "Доспехи Хрустальной кузницы";
    AL["Crystalforge Battlegear"] = "Броня Хрустальной Кузницы";
    AL["Crystalforge Raiment"] = "Одеяния Хрустальной Кузницы";
    AL["Avatar Raiment"] = "Одежды аватары";
    AL["Avatar Regalia"] = "Регалии аватары";
    AL["Deathmantle Set"] = "Мантия смерти"; --Deathmantle
    AL["Cataclysm Harness"] = "Облачение Катаклизма";
    AL["Cataclysm Raiment"] = "Одеяния Катаклизма";
    AL["Cataclysm Regalia"] = "Регалии Катаклизма";
    AL["Corruptor Raiment"] = "Одеяния Осквернителя";
    AL["Destroyer Armor"] = "Доспехи Разрушителя";
    AL["Destroyer Battlegear"] = "Броня Разрушителя";

    --Tier 6 Sets
    AL["Thunderheart Harness"] = "Облачение Громового сердца";
    AL["Thunderheart Raiment"] = "Одеяния Громового сердца";
    AL["Thunderheart Regalia"] = "Регалии Громового сердца";
    AL["Gronnstalker's Armor"] = "Доспехи охотника на гроннов";
    AL["Tempest Regalia"] = "Регалии Урагана";
    AL["Lightbringer Armor"] = "Доспехи Светоносного";
    AL["Lightbringer Battlegear"] = "Броня Светоносного";
    AL["Lightbringer Raiment"] = "Одеяния Светоносного";
    AL["Vestments of Absolution"] = "Облачение Освобождения";
    AL["Absolution Regalia"] = "Регалии Освобождения";
    AL["Slayer's Armor"] = "Доспехи убийцы";
    AL["Skyshatter Harness"] = "Облачение Небокрушителя";
    AL["Skyshatter Raiment"] = "Одеяния Небокрушителя";
    AL["Skyshatter Regalia"] = "Регалии Небокрушителя";
    AL["Malefic Raiment"] = "Одеяния Пагубы";
    AL["Onslaught Armor"] = "Доспехи натиска";
    AL["Onslaught Battlegear"] = "Броня натиска";

    --Tier 7 Sets
    AL["Scourgeborne Battlegear"] = "Кованая Плетью броня";
    AL["Scourgeborne Plate"] = "Кованые Плетью латы";
    AL["Dreamwalker Garb"] = "Облачение сновидца";
    AL["Dreamwalker Battlegear"] = "Броня сновидца";
    AL["Dreamwalker Regalia"] = "Регалии сновидца";
    AL["Cryptstalker Battlegear"] = "Броня расхитителя гробниц";
    AL["Frostfire Garb"] = "Облачение ледяного пламени";
    AL["Redemption Regalia"] = "Регалии искупления";
    AL["Redemption Battlegear"] = "Броня искупления";
    AL["Redemption Plate"] = "Латы искупления";
    AL["Regalia of Faith"] = "Регалии веры";
    AL["Garb of Faith"] = "Облачение веры";
    AL["Bonescythe Battlegear"] = "Броня костяной косы";
    AL["Earthshatter Garb"] = "Облачение Землекрушителя";
    AL["Earthshatter Battlegear"] = "Броня Землекрушителя";
    AL["Earthshatter Regalia"] = "Регалии Землекрушителя";
    AL["Plagueheart Garb"] = "Облачение Проклятого Сердца";
    AL["Dreadnaught Battlegear"] = "Броня неустрашимости";
    AL["Dreadnaught Plate"] = "Латы неустрашимости";

    --Arathi Basin Sets - Alliance
    AL["The Highlander's Intent"] = "Упорство горца";
    AL["The Highlander's Purpose"] = "Цель горца";
    AL["The Highlander's Will"] = "Воля горца";
    AL["The Highlander's Determination"] = "Решимость горца";
    AL["The Highlander's Fortitude"] = "Стойкость горца";
    AL["The Highlander's Resolution"] = "Решимость горца";
    AL["The Highlander's Resolve"] = "Твердость горца";

    --Arathi Basin Sets - Horde
    AL["The Defiler's Intent"] = "Цель Осквернителя";
    AL["The Defiler's Purpose"] = "Решимость Осквернителя";
    AL["The Defiler's Will"] = "Воля Осквернителя";
    AL["The Defiler's Determination"] = "Решимость Осквернителя";
    AL["The Defiler's Fortitude"] = "Стойкость Осквернителя";
    AL["The Defiler's Resolution"] = "Решимость Осквернителя";

    --PvP Level 60 Rare Sets - Alliance
    AL["Lieutenant Commander's Refuge"] = "Защита лейтенанта-командора";
    AL["Lieutenant Commander's Pursuance"] = "Упорство лейтенанта-командора";
    AL["Lieutenant Commander's Arcanum"] = "Тайна лейтенанта-командора";
    AL["Lieutenant Commander's Redoubt"] = "Оплот лейтенанта-командора";
    AL["Lieutenant Commander's Investiture"] = "Убор лейтенанта-командора";
    AL["Lieutenant Commander's Guard"] = "Стража лейтенанта-командора";
    AL["Lieutenant Commander's Stormcaller"] = "Зов Бури лейтенанта-командора"; --?
    AL["Lieutenant Commander's Dreadgear"] = "Грозные доспехи лейтенанта-командора";
    AL["Lieutenant Commander's Battlearmor"] = "Боевые доспехи лейтенанта-командора";

    --PvP Level 60 Rare Sets - Horde
    AL["Champion's Refuge"] = "Спасение Защитника";
    AL["Champion's Pursuance"] = "Упорство Защитника";
    AL["Champion's Arcanum"] = "Тайна Защитника";
    AL["Champion's Redoubt"] = "Оплот Защитника";
    AL["Champion's Investiture"] = "Убор Защитника";
    AL["Champion's Guard"] = "Стража Защитника";
    AL["Champion's Stormcaller"] = "Зов Бури Защитника";
    AL["Champion's Dreadgear"] = "Грозные доспехи Защитника";
    AL["Champion's Battlearmor"] = "Латы Защитника";

    --PvP Level 60 Epic Sets - Alliance
    AL["Field Marshal's Sanctuary"] = "Снаряжение фельдмаршала";
    AL["Field Marshal's Pursuit"] = "Облачение фельдмаршала";
    AL["Field Marshal's Regalia"] = "Регалии фельдмаршала";
    AL["Field Marshal's Aegis"] = "Эгида фельдмаршала";
    AL["Field Marshal's Raiment"] = "Одеяния фельдмаршала";
    AL["Field Marshal's Vestments"] = "Одеяния фельдмаршала";
    AL["Field Marshal's Earthshaker"] = "Землекрушитель фельдмаршала";
    AL["Field Marshal's Threads"] = "Нити Фельдмаршала";
    AL["Field Marshal's Battlegear"] = "Броня фельдмаршала";

    --PvP Level 60 Epic Sets - Horde
    AL["Warlord's Sanctuary"] = "Снаряжение военачальника";
    AL["Warlord's Pursuit"] = "Облачение вождя";
    AL["Warlord's Regalia"] = "Регалии Вождя";
    AL["Warlord's Aegis"] = "Эгида Вождя";
    AL["Warlord's Raiment"] = "Облачение вождя";
    AL["Warlord's Vestments"] = "Облачение полководца";
    AL["Warlord's Earthshaker"] = "Землекрушитель вождя";
    AL["Warlord's Threads"] = "Нити вождя";
    AL["Warlord's Battlegear"] = "Броня вождя";

    --Outland Faction Reputation PvP Sets
    AL["Dragonhide Battlegear"] = "Броня из шкуры дракона";
    AL["Wyrmhide Battlegear"] = "Броня из шкуры змея";
    AL["Kodohide Battlegear"] = "Броня из шкуры кодо";
    AL["Stalker's Chain Battlegear"] = "Плетеный боевой доспех преследователя";
    AL["Evoker's Silk Battlegear"] = "Шелковая броня пробудителя";
    AL["Crusader's Scaled Battledgear"] = "Чешуйчатая броня рыцаря"; --Crusader's Scaled Battlegear
    AL["Crusader's Ornamented Battledgear"] = "Украшенная броня рыцаря"; --Crusader's Ornamented Battlegear
    AL["Satin Battlegear"] = "Атласная броня";
    AL["Mooncloth Battlegear"] = "Броня из луноткани";
    AL["Opportunist's Battlegear"] = "Броня противоречащего";
    AL["Seer's Linked Battlegear"] = "Клепаная броня провидца";
    AL["Seer's Mail Battlegear"] = "Кольчужная броня провидца";
    AL["Seer's Ringmail Battlegear"] = "Кольчатая броня провидца";
    AL["Dreadweave Battlegear"] = "Броня из ткани Ужаса";
    AL["Savage's Plate Battlegear"] = "Латная броня свирепости"; --Savage Plate Battlegear

    --Arena Epic Sets
    AL["Gladiator's Sanctuary"] = "Снаряжение гладиатора";
    AL["Gladiator's Wildhide"] = "Шкуры гладиатора";
    AL["Gladiator's Refuge"] = "Защита гладиатора";
    AL["Gladiator's Pursuit"] = "Облачение гладиатора";
    AL["Gladiator's Regalia"] = "Регалии гладиатора";
    AL["Gladiator's Aegis"] = "Эгида гладиатора";
    AL["Gladiator's Vindication"] = "Опора гладиатора";
    AL["Gladiator's Redemption"] = "Спасение гладиатора";
    AL["Gladiator's Raiment"] = "Одеяния гладиатора";
    AL["Gladiator's Investiture"] = "Убор гладиатора";
    AL["Gladiator's Vestments"] = "Облачение гладиатора";
    AL["Gladiator's Earthshaker"] = "Землекрушитель гладиатора";
    AL["Gladiator's Thunderfist"] = "Громовой кулак гладиатора";
    AL["Gladiator's Wartide"] = "Цунами гладиатора";
    AL["Gladiator's Dreadgear"] = "Грозные доспехи гладиатора";
    AL["Gladiator's Felshroud"] = "Оскверненный покров гладиатора";
    AL["Gladiator's Battlegear"] = "Броня гладиатора";
    AL["Gladiator's Desecration"] = "Кощунство гладиатора";
    
    --Level 80 PvP Weapons
    AL["Savage Gladiator\'s Weapons"] = "Оружие свирепого гладиатора";
    AL["Deadly Gladiator\'s Weapons"] = "Оружие смертельного гладиатора";

    --Set Labels
    AL["Set: Embrace of the Viper"] = "Комплект: Объятия гадюки";
    AL["Set: Defias Leather"] =  "Комплект: Кожаные доспехи Братства Справедливости";
    AL["Set: The Gladiator"] = "Комплект: Гладиатор";
    AL["Set: Chain of the Scarlet Crusade"] = "Комплект: Цепь Алого ордена";
    AL["Set: The Postmaster"] = "Комплект: Вестник";
    AL["Set: Necropile Raiment"] = "Комплект: Одеяния Праха";
    AL["Set: Cadaverous Garb"] = "Комплект: Трупный наряд";
    AL["Set: Bloodmail Regalia"] = "Комплект: Регалии Кровавой кольчуги";
    AL["Set: Deathbone Guardian"] = "Комплект: Костяной Страж";
    AL["Set: Dal'Rend's Arms"] = "Комплект: Руки Дал'Ренда";
    AL["Set: Spider's Kiss"] = "Комплект: Поцелуй паука";
    AL["Temple of Ahn'Qiraj Sets"] = "Комплекты из Ан'Киража";
    AL["AQ40 Class Sets"] = "Классовые комплекты из АК40";
    AL["Ruins of Ahn'Qiraj Sets"] = "Комплекты из Руин Ан'Киража";
    AL["AQ20 Class Sets"] = "Классовые комплекты из АК20";
    AL["AQ Enchants"] = "Чары из АК";
    AL["AQ Opening Quest Chain"] = "Цепочка заданий открытия АК";
    AL["Pre 60 Sets"] = "Комплекты до 60 уровня";
    AL["Crafted Sets"] = "Изготовленные комплекты";
    AL["Crafted Epic Weapons"] = "Изготовленное эпическое оружие";
    AL["Zul'Gurub Sets"] = "Комплекты из Зул'Гуруба";
    AL["ZG Class Sets"] = "Классовые комплекты из ЗГ";
    AL["ZG Enchants"] = "Чары из ЗГ";
    AL["Dungeon 1/2 Sets"] = "Комплекты Dungeon Set 1/2";
    AL["Dungeon Set 1"] = "Комплект Dungeon Set 1";
    AL["Dungeon Set 2"] = "Комплект Dungeon Set 2";
    AL["Dungeon Set 3"] = "Комплект Dungeon Set 3";
    AL["Dungeon 3 Sets"] = "Комплекты Dungeon Set 3";
    AL["Tier 1/2 Sets"] = "Комплекты Tier 1/2";
    AL["Tier 3 Sets"] = "Комплекты Tier 3";
    AL["Tier 4/5/6 Sets"] = "Комплекты Tier 4/5/6";
    AL["PvP Reputation Sets (Level 70)"] = "PvP комплекты за репутацию (70 уровень)";
    AL["PvP Rewards (Level 60)"] = "PvP награды (60 уровень)";
    AL["PvP Rewards (Level 70)"] = "PvP награды (70 уровень)";
    AL["PvP Rewards (Level 80)"] = "PvP награды (80 уровень)";
    AL["PvP Accessories (Level 60)"] = "PvP аксессуары (60 уровень)";
    AL["PvP Accessories - Alliance (Level 60)"] = "PvP аксессуары - Альянс (60 уровень)";
    AL["PvP Accessories - Horde (Level 60)"] = "PvP аксессуары - Орда (60 уровень)";
    AL["PvP Accessories (Level 70)"] = "PvP аксессуары (70 уровень)";
    AL["PvP Rewards"] = "PvP награды";
    AL["PvP Armor Sets"] = "PvP комплекты доспехов";
    AL["PvP Weapons"] = "PvP оружие";
    AL["PvP Weapons (Level 60)"] = "PvP оружие (60 уровень)";
    AL["PvP Weapons (Level 70)"] = "PvP оружие (70 уровень)";
    AL["PvP Accessories"] = "PvP аксессуары";
    AL["PvP Non-Set Epics"] = "PvP эпики не из комплектов";
    AL["PvP Honor System"] = "Система чести PvP";
    AL["PvP Reputation Sets"] = "PvP комплекты за репутацию";
    AL["Arena PvP Sets"] = "PvP комплекты Арены";
    AL["Arena PvP Weapons"] = "PvP оружие Арены";
    AL["Arena PvP System"] = "PvP система Арены";
    AL["Arena Season 2 Weapons"] = "Арена: Сезон 2 - оружие";
    AL["Arena Season 3 Weapons"] = "Арена: Сезон 3 - оружие";
    AL["Arena Season 4 Weapons"] = "Арена: Сезон 4 - оружие";
    AL["Season 2"] = "Сезон 2";
    AL["Season 3"] = "Сезон 3";
    AL["Season 4"] = "Сезон 4";
    AL["Arathi Basin Sets"] = "Комплекты Низины Арати";
    AL["Class Books"] = "Классовые книги";
    AL["Tribute Run"] = "Заход почести";
    AL["Dire Maul Books"] = "Книги Забытого Города";
    AL["Random Boss Loot"] = "Случайная добыча с боссов";
    AL["Class Set Pieces"] = "Куски классовых комплектов";
    AL["Epic Set"] = "Эпический комплект";
    AL["Rare Set"] = "Редкий комплект";
    AL["Legendary Items"] = "Легендарные предметы";
    AL["Badge of Justice Rewards"] = "Награды за \"Знаки справедливости\"";
    AL["Emblem of Valor Rewards"] = "Награды за \"Эмблемы доблести\"";
    AL["Emblem of Heroism Rewards"] = "Награды за \"Эмблемы героизма\"";
    AL["Accesories and Weapons"] = "Аксессуары и оружие";
    AL["Accessories"] = "Аксессуары";
    AL["Armor and Weapons"] = "Броня и оружие";
    AL["Fire Resistance Gear"] = "Одежда на сопротивление огню";
    AL["Arcane Resistance Gear"] = "Одежда на сопротивление тайной магии";
    AL["Nature Resistance Gear"] = "Одежда на сопротивление природе";
    AL["Frost Resistance Gear"] = "Одежда на сопротивление льду";
    AL["Shadow Resistance Gear"] = "Одежда на сопротивление тьме";
    AL["Tabards"] = "Гербовые накидки";
    AL["Token Hand-Ins"] = "Знаки";
    AL["Heroic Mode Keys"] = "Ключи героического режима";
    AL["Legendary Items for Kael'thas Fight"] = "Легендарные предметы для битвы с Кель'тасом";
    AL["BoE World Epics"] = "Мировые ПпН эпики";
    AL["World Epics"] = "Мировые эпики";
    AL["Level 30-39"] = "30-39 уровни";
    AL["Level 40-49"] = "40-49 уровни";
    AL["Level 50-60"] = "50-60 уровни";
    AL["BT Patterns/Plans"] = "Выкройки/чертежи из Черного Храма";
    AL["Hyjal Summit Designs"] = "Эскизы из Вершины Хиджала";
    AL["SP Patterns/Plans"] = "Выкройки/чертежи из Солнечного Колодца";
    AL["Additional Heroic Loot"] = "Доп.добыча на героическом режиме";

    --Pets
    AL["Pets"] = "Питомцы";
    AL["Non-Combat Pets"] = "Обычные питомцы";
    AL["Aquatic"] = "Водоплавающие";
    AL["Birds"] = "Птицы";
    AL["Invertebrates"] = "Беспозвоночные";
    AL["Mammals"] = "Млекопитающие";
    AL["Mechanical"] = "Механические";
    AL["Mythical"] = "Сказочные";
    AL["Reptiles"] = "Рептилии";

    --Mounts
    AL["Mounts"] = "Транспорт";
    AL["Card Game Mounts"] = "Транспорт из карточных игр";
    AL["Crafted Mounts"] = "Созданный транспорт";
    AL["Event Mounts"] = "Транспорт игровых событий";
    AL["PvP Mounts"] = "PvP транспорт";
    AL["Rare Mounts"] = "Редкий транспорт";
    AL["Flying Mounts"] = "Летающий транспорт";

    --Specs
    AL["Balance"] = "Баланс";
    AL["Feral"] = "Сила зверя";
    AL["Restoration"] = "Исцеление";
    AL["Holy"] = "Свет";
    AL["Protection"] = "Защита";
    AL["Retribution"] = "Возмездие";
    AL["Shadow"] = "Тьма";
    AL["Elemental"] = "Стихии";
    AL["Enhancement"] = "Совершенствование";
    AL["Fury"] = "Неистовство";
    AL["Demonology"] = "Демонология";
    AL["Destruction"] = "Разрушение";
    AL["Tanking"] = "Танкование";
    AL["DPS"] = "DPS";

    --NPCs missing from BabbleBoss
    AL["Trash Mobs"] = "Трэш мобы";
    AL["Dungeon Set 2 Summonable"] = "Вызываемый комплект Dungeon Set 2";
    AL["Highlord Kruul"] = "Highlord Kruul";
    AL["Theldren"] = "Телдрен";
    AL["Sothos and Jarien"] = "Сотос и Джариен";
    AL["Druid of the Fang"] = "Друид Клыка";
    AL["Defias Strip Miner"] = "Горнорабочий из Братства Справедливости";
    AL["Defias Overseer/Taskmaster"] = "Надзиратель/Надсмотрщик из Братства Справедливости";
    AL["Scarlet Defender/Myrmidon"] = "Защитник/Мирмидон из Алого ордена";
    AL["Scarlet Champion"] = "Воитель из Алого ордена";
    AL["Scarlet Centurion"] = "Центурион из Алого ордена";
    AL["Scarlet Trainee"] = "Новобранец из Алого ордена";
    AL["Herod/Mograine"] = "Ирод/Могрейн";
    AL["Scarlet Protector/Guardsman"] = "Заступник/Охранник из Алого ордена";
    AL["Shadowforge Flame Keeper"] = "Тенегорнский хранитель огня";
    AL["Olaf"] = "Олаф";
    AL["Eric 'The Swift'"] = "Эрик \"Быстрый\"";
    AL["Shadow of Doom"] = "Тень Рока";
    AL["Bone Witch"] = "Костяной ведьмак";
    AL["Lumbering Horror"] = "Неуклюжий ужас";
    AL["Avatar of the Martyred"] = "Аватара Мученика";
    AL["Yor"] = "Йор";
    AL["Nexus Stalker"] = "Ловчий нексуса";
    AL["Auchenai Monk"] = "Аукенайский монах";
    AL["Cabal Fanatic"] = "Кабалист-фанатик";
    AL["Unchained Doombringer"] = "Освободенный Носитель Рока";
    AL["Crimson Sorcerer"] = "Багровый колдун";
    AL["Thuzadin Shadowcaster"] = "Темный чародей из секты Тузадин";
    AL["Crimson Inquisitor"] = "Инквизитор из Багрового Легиона";
    AL["Crimson Battle Mage"] = "Боевой маг из Багрового Легиона";
    AL["Ghoul Ravener"] = "Вурдалак-стервятник";
    AL["Spectral Citizen"] = "Призрачный горожанин";
    AL["Spectral Researcher"] = "Призрачный ученый";
    AL["Scholomance Adept"] = "Адепт Некроситета";
    AL["Scholomance Dark Summoner"] = "Призыватель Тьмы Некроситета";
    AL["Blackhand Elite"] = "Элитный боец легиона Чернорука";
    AL["Blackhand Assassin"] = "Убийца из легиона Чернорука";
    AL["Firebrand Pyromancer"] = "Пиромант из легиона Огненного Клейма";
    AL["Firebrand Invoker"] = "Призыватель духов из легиона Огненного Клейма";
    AL["Firebrand Grunt"] = "Рубака из легиона Огненного Клейма";
    AL["Firebrand Legionnaire"] = "Легионер из легиона Огненного Клейма";
    AL["Spirestone Warlord"] = "Полководец из клана Черной Вершины";
    AL["Spirestone Mystic"] = "Мистик из клана Черной Вершины";
    AL["Anvilrage Captain"] = "Капитан из клана Ярости Горна";
    AL["Anvilrage Marshal"] = "Маршал из клана Ярости Горна";
    AL["Doomforge Arcanasmith"] = "Кузнец-волшебник из клана Кузни Рока";
    AL["Weapon Technician"] = "Оружейный техник";
    AL["Doomforge Craftsman"] = "Ремесленник из клана Кузни Рока";
    AL["Murk Worm"] = "Мракочервь";
    AL["Atal'ai Witch Doctor"] = "Знахарь из племени Атал'ай";
    AL["Raging Skeleton"] = "Свирепый скелет";
    AL["Ethereal Priest"] = "Эфириал-жрец";
    AL["Sethekk Ravenguard"] = "Сетеккский враностраж";
    AL["Time-Lost Shadowmage"] = "Затерянный во времени темный маг";
    AL["Coilfang Sorceress"] = "Колдунья из резервуара Кривого Клыка";
    AL["Coilfang Oracle"] = "Оракул из резервуара Кривого Клыка";
    AL["Shattered Hand Centurion"] = "Центурион клана Изувеченной Длани";
    AL["Eredar Deathbringer"] = "Смертоносный эредар";
    AL["Arcatraz Sentinel"] = "Часовой Аркатраца";
    AL["Gargantuan Abyssal"] = "Чудовищный магматический инфернал";
    AL["Sunseeker Botanist"] = "Солнцелов-ботаник";
    AL["Sunseeker Astromage"] = "Солнцелов-астромаг";
    AL["Durnholde Rifleman"] = "Дарнхольдский ружейник";
    AL["Rift Keeper/Rift Lord"] = "Хранительница/Повелитель временного разлома";
    AL["Crimson Templar"] = "Багровый храмовник";
    AL["Azure Templar"] = "Лазурный храмовник";
    AL["Hoary Templar"] = "Седой храмовник";
    AL["Earthen Templar"] = "Земельник-храмовник";
    AL["The Duke of Cynders"] = "Герцог Пепла";
    AL["The Duke of Fathoms"] = "Герцог Глубин";
    AL["The Duke of Zephyrs"] = "Герцог Ветров";
    AL["The Duke of Shards"] = "Герцог Осколков";
    AL["Aether-tech Assistant"] = "Помощник эфир-теха";
    AL["Aether-tech Adept"] = "Адепт эфир-теха";
    AL["Aether-tech Master"] = "Мастер эфир-тех";
    AL["Trelopades"] = "Трелопадес";
    AL["King Dorfbruiser"] = "Король Рубака";
    AL["Gorgolon the All-seeing"] = "Горголон Всевидящий";
    AL["Matron Li-sahar"] = "Сестра Ли-саар";
    AL["Solus the Eternal"] = "Солус Вечный";
    AL["Balzaphon"] = "Балзафон";
    AL["Lord Blackwood"] = "Лорд Блэквуд";
    AL["Revanchion"] = "Реваншион";
    AL["Scorn"] = "Насмешник";
    AL["Sever"] = "Калечер";
    AL["Lady Falther'ess"] = "Леди Фалтер'есс";
    AL["Smokywood Pastures Vendor"] = "Продавец Пастбища Дымного Леса";
    AL["Shartuul"] = "Шартуул";
    AL["Darkscreecher Akkarai"] = "Темный Крикун Аккарай";
    AL["Karrog"] = "Каррог";
    AL["Gezzarak the Huntress"] = "Геззарак Охотница";
    AL["Vakkiz the Windrager"] = "Ваккиз Ветрояр";
    AL["Terokk"] = "Терокк";
    AL["Armbreaker Huffaz"] = "Руколом Хуффаз";
    AL["Fel Tinkerer Zortan"] = "Ремонтник Скверны Зортан";
    AL["Forgosh"] = "Форгош";
    AL["Gul'bor"] = "Гул'бор";
    AL["Malevus the Mad"] = "Малевус Безумная";
    AL["Porfus the Gem Gorger"] = "Порфус Пожиратель Самоцветов";
    AL["Wrathbringer Laz-tarash"] = "Вестник Зла Лаз-тараш";
    AL["Bash'ir Landing Stasis Chambers"] = "Палаты стазиса Лагеря Баш'ира";
    AL["Templars"] = "Храмовники";
    AL["Dukes"] = "Герцоги";
    AL["High Council"] = "Верховный совет";
    AL["Headless Horseman"] = "Всадник без головы";
    AL["Barleybrew Brewery"] = "Пивоваренный завод Ячменовара";
    AL["Thunderbrew Brewery"] = "Пивоваренный завод Грозовара";
    AL["Gordok Brewery"] = "Пивоваренный завод Гордока";
    AL["Drohn's Distillery"] = "Винокурня Дрона";
    AL["T'chali's Voodoo Brewery"] = "Пивоваренный завод Тчали Вуду";
    AL["Scarshield Quartermaster"] = "Интендант из легиона Изрубленного Щита";
    AL["Overmaster Pyron"] = "Подчинитель Пирон";
    AL["Father Flame"] = "Огонь отцов";
    AL["Thomas Yance"] = "Томас Янс";
    AL["Knot Thimblejack"] = "Уззл Наперстяк";
    AL["Shen'dralar Provisioner"] = "Шен'драларский поставщик";
    AL["Namdo Bizzfizzle"] = "Намдо Вклвыкл";
    AL["The Nameles Prophet"] = "Безымянный пророк";
    AL["Zelemar the Wrathful"] = "Зелемар Гневный";
    AL["Henry Stern"] = "Генри Штерн";
    AL["Aggem Thorncurse"] = "Аггем Терновое Проклятие ";
    AL["Roogug"] = "Ругуг";
    AL["Rajaxx's Captains"] = "Капитаны Генерала Раджакса";
    AL["Razorfen Spearhide"] = "Копьешкур из племени Иглошкурых";
    AL["Rethilgore"] = "Ретилгор";
    AL["Kalldan Felmoon"] = "Калидан Лунный Серп ";
    AL["Magregan Deepshadow"] = "Магреган Чернотень";
    AL["Lord Ahune"] = "Повелитель Ахун";
    AL["Coren Direbrew"] = "Корен Худовар";
    AL["Don Carlos"] = "Дон Карлос";
    AL["Thomas Yance"] = "Томас Янс"; --double?
    AL["Aged Dalaran Wizard"] = "Даларанский старый волшебник";
    AL["Cache of the Legion"] = "Тайник Легиона";
    AL["Rajaxx's Captains"] = "Капитаны Генерала Раджакса"; --double?
    AL["Felsteed"] = "Скакун Скверны";
    AL["Commander Stoutbeard"] = "Commander Stoutbeard";
    AL["Bloodstone Annihilator"] = "Bloodstone Annihilator";
    AL["Rescue Mission"] = "Rescue Mission";
    AL["Gjarngrin"] = "Gjarngrin";
    AL["Kronus"] = "Kronus";
    AL["Shattered Hand Executioner"] = "Палач из клана Изувеченной Длани";

    --Zones
    AL["World Drop"] = "World Drop";
    AL["Sunwell Isle"] = "Остров Солнечного Колодца";
    AL["Lake Wintergrasp"] = "Озеро Ледяных Оков";

    --Shortcuts for Bossname files
    AL["LBRS"] = "LBRS";
    AL["UBRS"] = "UBRS";
    AL["CoT1"] = "CoT1";
    AL["CoT2"] = "CoT2";
    AL["Scholo"] = "Scholo";
    AL["Strat"] = "Strat";
    AL["Serpentshrine"] = "Serpentshrine";
    AL["Avatar"] = "Avatar";

    --Chests, etc
    AL["Dark Coffer"] = "Черный ящик";
    AL["The Secret Safe"] = "Секретный сейф";
    AL["The Vault"] = "Склеп";
    AL["Ogre Tannin Basket"] = "Огрский дубильный чан";
    AL["Fengus's Chest"] = "Сундук Фенгуса";
    AL["The Prince's Chest"] = "Сундук принца";
    AL["Doan's Strongbox"] = "Сейф Доана";
    AL["Frostwhisper's Embalming Fluid"] = "Бальзамировочный состав Ледяного Шепота";
    AL["Unforged Rune Covered Breastplate"] = "Заготовка рунической кирасы";
    AL["Malor's Strongbox"] = "Сейф Малора";
    AL["Unfinished Painting"] = "Незаконченная картина";
    AL["Felvine Shard"] = "Осколок сквернита";
    AL["Baelog's Chest"] = "Сундук Бейлога";
    AL["Lorgalis Manuscript"] = "Манускрипт Лоргалиса";
    AL["Fathom Core"] = "Глубинный сердечник";
    AL["Conspicuous Urn"] = "Подозрительная урна";
    AL["Gift of Adoration"] = "Символ обожания";
    AL["Box of Chocolates"] = "Коробка шоколадных конфет";
    AL["Treat Bag"] = "Сумка с лакомствами";
    AL["Gaily Wrapped Present"] = "Подарок в яркой упаковке";
    AL["Festive Gift"] = "Праздничный дар";
    AL["Ticking Present"] = "Тикающий подарочек";
    AL["Gently Shaken Gift"] = "Слегка растрясенный дар";
    AL["Carefully Wrapped Present"] = "Тщательно упакованный подарок";
    AL["Winter Veil Gift"] = "Подарок к Зимнему Покрову";
    AL["Smokywood Pastures Extra-Special Gift"] = "Эксклюзивный дар Пастбищ Дымного Леса";
    AL["Brightly Colored Egg"] = "Brightly Colored Egg";
    AL["Lunar Festival Fireworks Pack"] = "Пачка фейерверков для Лунного фестиваля";
    AL["Lucky Red Envelope"] = "Красный конверт Счастья";
    AL["Small Rocket Recipes"] = "Чертеж малой ракеты";
    AL["Large Rocket Recipes"] = "Чертеж большой ракеты";
    AL["Cluster Rocket Recipes"] = "Чертежи батареи фейерверков";
    AL["Large Cluster Rocket Recipes"] = "Чертежи больших батарей фейерверков";
    AL["Timed Reward Chest"] = "Сундук за выполненное на время задание";
    AL["Timed Reward Chest 1"] = "1-ый сундук за выполнение задания на время";
    AL["Timed Reward Chest 2"] = "2-ой сундук за выполнение задания на время";
    AL["Timed Reward Chest 3"] = "3-ий сундук за выполнение задания на время";
    AL["Timed Reward Chest 4"] = "4-ый сундук за выполнение задания на время";
    AL["The Talon King's Coffer"] = "Сундук Короля Когтей";
    AL["Krom Stoutarm's Chest"] = "Сундук Крома Крепкорука";
    AL["Garrett Family Chest"] = "Сундук семейства Гарретт";
    AL["Reinforced Fel Iron Chest"] = "Укрепленный сундук из оскверненного железа";
    AL["DM North Tribute Chest"] = "Сундук с приношениями Северного Забытого Города";
    AL["The Saga of Terokk"] = "Сказание о Терокке";
    AL["First Fragment Guardian"] = "Страж первого фрагмента";
    AL["Second Fragment Guardian"] = "Страж второго фрагмента";
    AL["Third Fragment Guardian"] = "Страж третьего фрагмента";
    AL["Overcharged Manacell"] = "Избыточно заряженный аккумулятор маны";

    --World Events
    AL["Abyssal Council"] = "Совет Бездны";
    AL["Bash'ir Landing Skyguard Raid"] = "Налет Стражей Небес на Лагерь Баш'ира";
    AL["Brewfest"] = "Хмельной фестиваль";
    AL["Children's Week"] = "Детская неделя";
    AL["Elemental Invasion"] = "Вторжение элементалей";
    AL["Ethereum Prison"] = "Тюрьма братства Эфириум";
    AL["Feast of Winter Veil"] = "Празднование Зимнего Покрова";
    AL["Gurubashi Arena Booty Run"] = "Битва за сокровища Арены Гурубаши";
    AL["Hallow's End"] = "Тыквовин";
    AL["Harvest Festival"] = "Неделя урожая";
    AL["Love is in the Air"] = "Любовная лихорадка";
    AL["Lunar Festival"] = "Лунный фестиваль";
    AL["Midsummer Fire Festival"] = "Огненный солнцеворот";
    AL["Noblegarden"] = "Чудесный сад";
    AL["Skettis"] = "Скеттис";
    AL["Stranglethorn Fishing Extravaganza"] = "Рыбная феерия Тернистой долины";
    

end
