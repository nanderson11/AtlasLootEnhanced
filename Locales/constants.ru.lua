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
    AL["No match found for"] = "Ничего не найдено для";
    AL["Search"] = "Поиск";
    AL["Clear"] = "Очистить";
    AL["Select Loot Table"] = "Таблица добычи";
    AL["Select Sub-Table"] = "Выбор Под-Таблицы";
    AL["Drop Rate: "] = "Шанс выпада: ";
    AL["DKP"] = "ДКП";
    AL["Priority:"] = "Приоритет:";
    AL["Click boss name to view loot."] = "Кликните по имени босса для просмотра трофеев.";
    AL["Various Locations"] = "Разное местонахождение";
    AL["This is a loot browser only.  To view maps as well, install either Atlas or Alphamap."] = "Это только обозреватель добычи. Для обзора карт, установите Атлас или Alphamap.";
    AL["Toggle AL Panel"] = "Перек-тель AL Панели";
    AL[" is safe."] = " безопасный.";
    AL["Server queried for "] = "Запрос с севрера для ";
    AL[".  Right click on any other item to refresh the loot page."] = ".  Правый клик по любому другому предмету для обновления страници добычи.";
    AL["Back"] = "Назад";
    AL["Level 60"] = "Уровень 60";
    AL["Level 70"] = "Уровень 70";
	AL["Level 80"] = "Уровень 80";
    AL["|cffff0000(unsafe)"] = "|cffff0000(опасный)";
    AL["Misc"] = "Разное";
    AL["Miscellaneous"] = "Разнообразное";
    AL["Rewards"] = "Награды";
    AL["Heroic Mode"] = "Режим \"Героик\"";
    AL["Normal Mode"] = "Обычный режим";
	AL["Hard Mode"] = "Сложный режим";
    AL["Show 10 Man Loot"] = "Добыча 10-чел";
    AL["Show 25 Man Loot"] = "Добыча 25-чел";
    AL["10 Man"] = "10-чел";
    AL["25 Man"] = "25-чел";
    AL["Raid"] = "Рейд";
    AL["Factions - Original WoW"] = "Фракции - Оригинального WoW";
    AL["Factions - Burning Crusade"] = "Фракции - Burning Crusade";
    AL["Factions - Wrath of the Lich King"] = "Фракции - Wrath of the Lich King";
    AL["Choose Table ..."] = "Выбор таблицы";
    AL["Close Menu"] = "Закрыть меню";
    AL["Unknown"] = "Неизвестно";
    AL["Skill Required:"] = "Необходим навык:";
    AL["QuickLook"] = "БыстрыйОсмотр";
    AL["Add to QuickLooks:"] = "Добавить в БыстрыйОсмотр:";
    AL["Assign this loot table\n to QuickLook"] = "Назначать эту таблицу добычи\n в БыстрыйОсмотр";
    AL["Req. Rating:"] = "Требуется рейтинг";  --Shorthand for 'Required Rating' for the personal/team ratings in Arena S4
    AL["Rating:"] = "Рейтинг";    --Shorthand for 'Required Rating' for the personal/team ratings in Arena S4
    AL["Query Server"] = "Запрос с серв.";
    AL["Classic Instances"] = "Классик инстансы";
    AL["BC Instances"] = "БК инстансы";
    AL["WotLK Instances"] = "WotLK инстансы";
    AL["Original WoW"] = "Оригинальный WoW";
    AL["Burning Crusade"] = "Burning Crusade";
    AL["Entrance"] = "Вход";
    AL["Original Factions"] = "Оригинальные Фракции";
    AL["BC Factions"] = "БК Фракции";
    AL["WotLK Factions"] = "WotLK Фракции";
    AL["Reset Frames"] = "Сброс фреймов";
    AL["Reset Wishlist"] = "Сброс пожеланий";
    AL["Reset Quicklooks"] = "Сборс БО";
    AL["Select a Loot Table..."] = "Выберите таблицу добычи..";
    AL["OR"] = "или";
    AL["Wrath of the Lich King"] = "Wrath of the Lich King";
    AL["FuBar Options"] = "Опции FuBarа";
    AL["Attach to Minimap"] = "Закрепить у мини-карты";
    AL["Hide FuBar Plugin"] = "Скрыть плагин FuBarа";
    AL["Show FuBar Plugin"] = "Показ плагин FuBarа";
    AL["Position:"] = "Позицыя";
    AL["Left"] = "Слево";
    AL["Center"] = "По центру";
    AL["Right"] = "Справо";
    AL["Hide Text"] = "Скрыть текст";
    AL["Hide Icon"] = "Скрыть иконку";
    AL["Minimap Button Options"] = "Опции кнопки у мини-карты";
    AL["Bonus Loot"] = "Дополнительная добыча";
    AL["One Drake Left"] = "Превый дракон";
    AL["Two Drakes Left"] = "Второй дракон";
	AL["Three Drakes Left"] = "Третий дракон";

    --Text for Options Panel
    AL["Atlasloot Options"] = "Опции Atlasloot";
    AL["Safe Chat Links"] = "Безопасные ссылки";
    AL["Default Tooltips"] = "Стандартные подсказки";
    AL["Lootlink Tooltips"] = "Всплывающие подсказки СсылокТрофеев";
    AL["|cff9d9d9dLootlink Tooltips|r"] = "|cff9d9d9dПодсказки СсылокТрофеев|r";
    AL["ItemSync Tooltips"] = "Всплывающие подсказки Синхр.Предметов";
    AL["|cff9d9d9dItemSync Tooltips|r"] = "|cff9d9d9dПодсказки Синхр.Пред.|r";
    AL["Use EquipCompare"] = "Включить сравнение экипировки";
    AL["|cff9d9d9dUse EquipCompare|r"] = "|cff9d9d9dИспоьзовать EquipCompare|r";
    AL["Show Comparison Tooltips"] = "Показывать сравнительные подсказки";
    AL["Make Loot Table Opaque"] = "Матовое окно добычи";
    AL["Show itemIDs at all times"] = "ID для всех предметов";
    AL["Hide AtlasLoot Panel"] = "Убрать панель AtlasLoot";
    AL["Show Basic Minimap Button"] = "Показывать кнопку у мини-карты";
    AL["|cff9d9d9dShow Basic Minimap Button|r"] = "|cff9d9d9dПоказывать кнопку у мини-карты|r";
    AL["Set Minimap Button Position"] = "Позиция кнопки у мини-карты";
    AL["Suppress Item Query Text"] = "Подавлять спам при запросах";
    AL["Notify on LoD Module Load"] = "Извещать об авто-загрузке модулей";
    AL["Load Loot Modules at Startup"] = "Загружать модули при старте";
    AL["Loot Browser Scale: "] = "Масштаб обозревателя добычи: ";
    AL["Button Position: "] = "Позиция кнопки: ";
    AL["Button Radius: "] = "Радиус кнопки: ";
    AL["Done"] = "Готово";
    AL["FuBar Toggle"] = "Перекл. FuBarа";
    AL["WishList"] = "Пожелания";
    AL["Search Result: %s"] = "Результат Поиска: %s";
    AL["Last Result"] = "Послед.запрос";
    AL["Search on"] = "Искать в";
    AL["All modules"] = "Все модули";
    AL["If checked, AtlasLoot will load and search across all the modules."] = "Если включено, AtlasLoot будет загружать все модули и искать по ним.";
    AL["Search options"] = "Настройки поиска";
    AL["Partial matching"] = "Частичное совпадение";
    AL["If checked, AtlasLoot search item names for a partial match."] = "Если включено, AtlasLoot будет искать названия предметов с частичным совпадением.";
    AL["You don't have any module selected to search on!"] = "Вы не выбрали ни одиного модуля для поиска!";
    AL["Treat Crafted Items:"] = "Обзор изготов. предметов:";
    AL["As Crafting Spells"] = "Как используемое заклинание";
    AL["As Items"] = "Как предмет";
    AL["Loot Browser Style:"] = "Стиль просмотра добычи:";
    AL["New Style"] = "Новый стиль";
    AL["Classic Style"] = "Класический стиль";
    --The next 4 lines are the tooltip for the Server Query Button
    --The translation doesn't have to be literal, just re-write the
    --sentences as you would naturally and break them up into 4 roughly
    --equal lines.
    AL["Queries the server for all items"] = "Запрос с сервера всех предметов";
    AL["on this page. The items will be"] = "на данной странице. Предметы";
    AL["refreshed when you next mouse"] = "будут обновлены при след";
    AL["over them."] = "наводе мыши.";
    AL["The Minimap Button is generated by the FuBar Plugin."] = "Кнопка у мини-карты будет сгенерирована плагином FuBarа.";
    AL["This is automatic, you do not need FuBar installed."] = "Это произайдет автоматически, вам не требуется устанавливать FuBar";

    --Slash commands
    AL["reset"] = "reset";
    AL["options"] = "options";
    AL["Reset complete!"] = "Сброс выполнен!";

    --Error Messages and warnings
    AL["AtlasLoot Error!"] = "Ошибка AtlasLoot!";
    AL["WishList Full!"] = "Список пожеланий полон!";
    AL[" added to the WishList."] = " добавлено в пожелания.";
    AL[" already in the WishList!"] = " уже в пожеланиях!";
    AL[" deleted from the WishList."] = " удалено из пожеланий.";

    --Incomplete Table Registry error message
    AL[" not listed in loot table registry, please report this message to the AtlasLoot forums at http://www.atlasloot.net"] = " не включен в таблицу списка добычи, пожалуйста сообщите об этом сообщении на форум http://www.atlasloot.net";

    --LoD Module disabled or missing
    AL[" is unavailable, the following load on demand module is required: "] = " недоступен, требуется следующий модуль загрузки по требованию: ";

    --LoD Module load sequence could not be completed
    AL["Status of the following module could not be determined: "] = "Статус следующих модулей не определен: ";

    --LoD Module required has loaded, but loot table is missing
    AL[" could not be accessed, the following module may be out of date: "] = " не может получить доступ, следующий модуль может быть устаревшим: ";

    --LoD module not defined
    AL["Loot module returned as nil!"] = "Модуль трофеев возвращен к нолевому значеню!";

    --LoD module loaded successfully
    AL["sucessfully loaded."] = "успешно загружен.";

    --Need a big dataset for searching
    AL["Loading available tables for searching"] = "Загружаются доступные для поиска таблицы";

    --All Available modules loaded
    AL["All Available Modules Loaded"] = "Все доступные модули загружены";

    --Minimap Button
    AL["|cff1eff00Left-Click|r Browse Loot Tables"] = "|cff1eff00ЛКМ|r Просмотр таблицы трофеев";
    AL["|cffff0000Right-Click|r View Options"] = "|cffff0000ПКЛ|r Просмотр опций";
    AL["|cffff0000Shift-Click|r View Options"] = "|cffff0000Shift-Клик|r Просмотр опций";
    AL["|cffccccccLeft-Click + Drag|r Move Minimap Button"] = "|cffccccccЛКМ + Перетаскивание|r Перемещение кнопки у мини-карты";
    AL["|cffccccccRight-Click + Drag|r Move Minimap Button"] = "|cffccccccПКМ + Перетаскивание|r Перемещение кнопки у мини-карты";

    --AtlasLoot Panel
    AL["Options"] = "Опции";
    AL["Collections"] = "Коллекции";
    AL["Factions"] = "Фракции";
    AL["World Events"] = "Мировые события";
    AL["Load Modules"] = "Загр. модулей";
    AL["Crafting"] = "Ремесло";
    AL["Crafting Daily Quests"] = "Ежедневные задания - ремесло";

    --First time user
    AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences."] = "Добро пожаловать в Расширенный Atlasloot.  Пожалуйста уделите чуточку времени для установки ваших предпочтений.";
    AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences for tooltips and links in the chat window.\n\n  This options screen can be reached again at any later time by typing '/atlasloot'."] = true;
    AL["Setup"] = "Установки";

    --Old Atlas Detected
    AL["It has been detected that your version of Atlas does not match the version that Atlasloot is tuned for ("] = "Обнаружено что Ваша версия Атласа не соответствует версии, под которую зделан Atlasloot (";
    AL[").  Depending on changes, there may be the occasional error, so please visit http://www.atlasmod.com as soon as possible to update."] = ").  В зависимости от изменений может быть случайная ошибка но лучше всего посетите http://www.atlasmod.com и убедитесь что у вас стоит последняя версия донного аддона.";
    AL["OK"] = "OK";
    AL["Incompatible Atlas Detected"] = "Обноружен несовместимый Атлас";

    --Unsafe item tooltip
    AL["Unsafe Item"] = "Опасный Предмет";
    AL["Item Unavailable"] = "Предмет Недоступен";
    AL["ItemID:"] = "ID предмета:";
    AL["This item is not available on your server or your battlegroup yet."] = "Этот предмет пока что недоступен на вашем сервере или боевой группе.";
    AL["This item is unsafe.  To view this item without the risk of disconnection, you need to have first seen it in the game world. This is a restriction enforced by Blizzard since Patch 1.10."] = "Этот предмет небезопасен. Для того, чтобы посмотреть его без риска отсоединения от сервера, сначала Вы должны его увидеть в игре. Это ограничение было введено компанией Blizzard начиная с патча 1.10.";
    AL["You can right-click to attempt to query the server.  You may be disconnected."] = "Вы можете щелкнуть правой кнопкой, чтобы попытаться запросить информацию о предмете.  Имеется риск отсоединения от сервера.";

    --Misc Inventory related words
    AL["Enchant"] = "Зачарование";
    AL["Scope"] = "Прицелы";
    AL["Darkmoon Faire Card"] = "Карты Ярмарки Темной Луны";
    AL["Banner"] = "Знамя";
    AL["Set"] = "Комплекты";
    AL["Token"] = "Знак";
    AL["Tokens"] = "Знаки";
    AL["Skinning Knife"] = "Нож для свежевания";
    AL["Herbalism Knife"] = "Нож для травничества";
    AL["Fish"] = "Рыба";
    AL["Combat Pet"] = "Боевой питомец";
    AL["Fireworks"] = "Феерверк";

    --Extra inventory stuff
    AL["Cloak"] = "Плащ";
    AL["Weapons"] = "Оружие";

    --Alchemy
    AL["Battle Elixirs"] = "Боевые Эликсиры";
    AL["Guardian Elixirs"] = "Оборонительные Эликсиры";
    AL["Potions"] = "Зелья";
    AL["Transmutes"] = "Трансмутация";
    AL["Flasks"] = "Фляги";

    --Enchanting
    AL["Enchant Boots"] = "Зачаровывание обуви";
    AL["Enchant Bracer"] = "Зачаровывание браслетов";
    AL["Enchant Chest"] = "Зачаровывание нагрудника";
    AL["Enchant Cloak"] = "Зачаровывание плаща";
    AL["Enchant Gloves"] = "Зачаровывание перчаток";
    AL["Enchant Ring"] = "Зачаровывание кольца";
    AL["Enchant Shield"] = "Зачаровывание щита";
    AL["Enchant 2H Weapon"] = "Чары для двуручного оружия";
    AL["Enchant Weapon"] = "Зачаровывание оружия";
	
	--Engineering
	AL["Ammunition"] = "Боеприпасы";
	AL["Explosives"] = "Взрывчатые вещества";
    
    --Inscription
    AL["Major Glyph"] = "Большой символ";
    AL["Minor Glyph"] = "Малый символ";
    AL["Scrolls"] = "Свитки";
    AL["Off-Hand Items"] = "Предметы в левую руку";
    AL["Reagents"] = "Реагенты";
	AL["Book of Glyph Mastery"] = "Книга познания символов";

    --Leatherworking
    AL["Leather Armor"] = "Кожанная броня";
    AL["Mail Armor"] = "Кольчужная броня";
    AL["Cloaks"] = "Плащи";
    AL["Item Enhancements"] = "Улучшения";
    AL["Quivers and Ammo Pouches"] = "Колчаны и Подсумки";
    AL["Drums, Bags and Misc."] = "Барабаны, Сумки и Другое";

    --Tailoring
    AL["Cloth Armor"] = "Тканевая броня";
    AL["Shirts"] = "Рубашки";
    AL["Bags"] = "Сумки";
    
    --Labels for loot descriptions
    AL["Classes:"] = "Классы:";
    AL["This Item Begins a Quest"] = "Этот предмет начинает задание";
    AL["Quest Item"] = "Предмет для задания";
    AL["Quest Reward"] = "награда за задание";
    AL["Shared"] = "Разделенные";
    AL["Unique"] = "Уникальный";
    AL["Right Half"] = "Правая половина";
    AL["Left Half"] = "Левая половина";
    AL["28 Slot Soul Shard"] = "28 ячеек Осколок душ";
    AL["20 Slot"] = "20 ячеек";
    AL["18 Slot"] = "18 ячеек";
    AL["16 Slot"] = "16 ячеек";
    AL["10 Slot"] = "10 ячеек";
    AL["(has random enchantment)"] = "(случайные статы)";
    AL["Use to purchase rewards"] = "Испол-ся для покупки наград";
    AL["Use to purchase rewards (Horde)"] = "Испол-ся для покупки наград (Орда)";
    AL["Use to purchase rewards (Alliance)"] = "Испол-ся для покупки наград (Альянс)";
    AL["World Bosses"] = "Мировые боссы";
    AL["Reputation Factions"] = "Репутация у фракций";
    AL["Sets/Collections"] = "Комплекты/Коллекции";
    AL["Card Game Item"] = "Предмет игровых карт";
    AL["Tier 1"] = "Тир 1";
    AL["Tier 2"] = "Тир 2";
    AL["Tier 3"] = "Тир 2";
    AL["Tier 4"] = "Тир 4";
    AL["Tier 5"] = "Тир 5";
    AL["Tier 6"] = "Тир 6";
	AL["Tier 7"] = "Тир 7";
	AL["Tier 8"] = "Тир 8";
    AL["10/25 Man"] = "10/25 Чел";
    AL["Tier 7 Sets"] = "Комплекты: Тир 7";
    AL["Tier 8 Sets"] = "Комплекты: Тир 7";
	AL["Tier 7/8 Sets"] = "Комплекты: Тир 7/8";
    AL["Level 80 PvP Sets"] = "80 урв PvP комплекты";
    AL["Hateful Gladiator Sets"] = "Комплекты злобного гладиатора";
    AL["Deadly Gladiator Sets"] = "Комплекты смертоносного гладиатора";
    AL["Furious Gladiator Sets"] = "Комплекты гневного гладиатора";
    AL["Arena Reward"] = "Награды с Арены";
    AL["Conjured Item"] = " Сотворенный предмет";
    AL["Used to summon boss"] = "Испол-ся для призыва босса";
    AL["Phase 1"] = "Фаза 1";
    AL["Phase 2"] = "Фаза 2";
    AL["Phase 3"] = "Фаза 3";
    AL["Fire"] = "Огонь";
    AL["Water"] = "Вода";
    AL["Wind"] = "Ветер";
    AL["Earth"] = "Земля";
    AL["Master Angler"] = "Лучший удильщик";
    AL["First Prize"] = "Первый приз";
    AL["Rare Fish Rewards"] = "Редкая рыба - Награды";
    AL["Rare Fish"] = "Редкая Рыба";
    AL["Tradable against sunmote + item above"] = "В обмен на Частицу солнца + предметы выше";
    AL["Rare"] = "Редкий";
    AL["Heroic"] = "Героик";
    AL["Hard Mode"] = "Сложный режим";
	AL["Dungeon/Raid"] = "Подземелье/рейд";
    AL["Summon"] = "Призыв";
    AL["Random"] = "Случайный";
    AL["Weapons"] = "Оружие";
    AL["Reward"] = "Награда";
    AL["Achievement"] = "Достижение";
	AL["Faction"] = "Фракция";
    AL["Unattainable Tabards"] = "Недоступные гербовые накидки";
    AL["Heirloom"] = "Фамильные";
	
	--Darkmoon Faire
	AL["Darkmoon Faire Rewards"] = "Награды Ярмарки Новолуния";
	AL["Low Level Decks"] = "Низко уровневые колоды";
	AL["Original and BC Trinkets"] = "Аксессуары - БК и Оригинала";
	AL["WotLK Trinkets"] = "Аксессуары - WotLK";
    
    --Argent Tournament
    AL["Argent Tournament"] = "Серебряный Турнир";
	
	-- Daily Quest
	AL["Jewelcrafting Daily"] = "Ювелирное дело (Ежедневный)";
	AL["Cooking Daily"] = "Кулинария (Ежедневный)";

    --Card Game Decks and descriptions
    AL["Upper Deck Card Game Items"] = "Upper Deck Card Game Items";
    AL["Loot Card Items"] = "Loot Card Items";
    AL["UDE Items"] = "Предметы UDE";

    -- First set
    AL["Heroes of Azeroth"] = "Герои Азерота";
    AL["Landro Longshot"] = "Ландро Дальнострел";
    AL["Thunderhead Hippogryph"] = "Гиппогриф Громовой вершины";
    AL["Saltwater Snapjaw"] = "Морской щелкоклюв";
    -- Second set
    AL["Through The Dark Portal"] = "Через Темный портал";
    AL["King Mukla"] = "Король Мукла";
    AL["Rest and Relaxation"] = "Отдых и покой";
    AL["Fortune Telling"] = "Fortune Telling";
    -- Third set
    AL["Fires of Outland"] = "Fires of Outland";
    AL["Spectral Tiger"] = "Призрачный Тигр";
    AL["Gone Fishin'"] = "Gone Fishin'";
    AL["Goblin Gumbo"] = "Гоблинское хлебово";
    -- Fourth set
    AL["March of the Legion"] = "Граница легиона";
    AL["Kiting"] = "Kiting";
    AL["Robotic Homing Chicken"] = "Robotic Homing Chicken";
    AL["Paper Airplane"] = "Бумажный аэроплан";
    -- Fifth set
    AL["Servants of the Betrayer"] = "Слуги Отступников";
    AL["X-51 Nether-Rocket"] = "Ракета Пустоты X-51";
    AL["Personal Weather Machine"] = "Личная погодная машина";
    AL["Papa Hummel's Old-fashioned Pet Biscuit"] = "Papa Hummel's Old-fashioned Pet Biscuit";
    -- Sixth set
    AL["Hunt for Illidan"] = "Hunt for Illidan";
    AL["The Footsteps of Illidan"] = "Шаги Иллидана";
    AL["Disco Inferno!"] = "Disco Inferno!";
    AL["Ethereal Plunderer"] = "Эфириал-расхититель";
    -- Seventh set
	AL["Drums of War"] = "Drums of War";
    AL["The Red Bearon"] = "The Red Bearon";
    AL["Owned!"] = "Owned!";
    AL["Slashdance"] = "Slashdance";
	-- Eighth set
	AL["Blood of Gladiators"] = "Blood of Gladiators";
	AL["Sandbox Tiger"] = "Тигр-качалка";
	AL["Center of Attention"] = "Center of Attention";
	AL["Foam Sword Rack"] = "Foam Sword Rack";
	-- Ninth set
	AL["Fields of Honor"] = "Fields of Honor";

    --Battleground Brackets
    AL["Misc. Rewards"] = "Разные награды";
    AL["Superior Rewards"] = "Лучшии награды";
    AL["Epic Rewards"] = "Эпические награды";
    AL["Level 10-19 Rewards"] = "Награды 10-19 уровня";
    AL["Level 20-29 Rewards"] = "Награды 20-29 уровня";
    AL["Level 30-39 Rewards"] = "Награды 30-39 уровня";
    AL["Level 40-49 Rewards"] = "Награды 40-49 уровня";
    AL["Level 50-59 Rewards"] = "Награды 50-59 уровня";
    AL["Level 60 Rewards"] = "Награды на уровень 60";

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
	AL["Venture Bay"] = "Бухта торговцев";

    --Karazhan Opera Event Headings
    AL["Shared Drops"] = "Разделенная добыча";
    AL["Romulo & Julianne"] = "Ромуло & Джулианна";
    AL["Wizard of Oz"] = "Страна Оз";
    AL["Red Riding Hood"] = "Красная Шапочка";

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
    AL["Husk of the Old God"] = "Броня Древнего Бога";
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
    AL["Bloodvine Garb"] = "Одеяния Боевого заклятья";
    AL["Netherweave Vestments"] = "Одеяния из ткани Пустоты";
    AL["Imbued Netherweave"] = "Прочная ткань Пустоты";
    AL["Arcanoweave Vestments"] = "Одеяния из тайной ткани";
    AL["The Unyielding"] = "Непреклонность";
    AL["Whitemend Wisdom"] = "Мудрость Белого целителя";
    AL["Spellstrike Infusion"] = "Регалии Зачистки Нежити";
    AL["Battlecast Garb"] = "Одеяния Боевого заклятья";
    AL["Soulcloth Embrace"] = "Объятия ткани Душ";
    AL["Primal Mooncloth"] = "Изначальная луноткань";
    AL["Shadow's Embrace"] = "Объятия Тени";
    AL["Wrath of Spellfire"] = "Гнев Чародейского огня";

    --Leatherworking Crafted Sets
    AL["Volcanic Armor"] = "Вулканические доспехи";
    AL["Ironfeather Armor"] = "Железноперые доспехи";
    AL["Stormshroud Armor"] = "Доспехи Грозового покрова";
    AL["Devilsaur Armor"] = "Доспехи из кожи девизавра";
    AL["Blood Tiger Harness"] = "Доспехи Кровавого тигра";
    AL["Primal Batskin"] = "Простая шкура нетопыря";
    AL["Wild Draenish Armor"] = "Доспехи дренейского дикаря";
    AL["Thick Draenic Armor"] = "Утолщенные дренейские доспехи";
    AL["Fel Skin"] = "Кожа Скверны";
    AL["Strength of the Clefthoof"] = "Сила копытня";
    AL["Green Dragon Mail"] = "Кольчуга Зеленого дракона";
    AL["Blue Dragon Mail"] = "Кольчуга Синего дракона";
    AL["Black Dragon Mail"] = "Кольчуга Черного дракона";
    AL["Scaled Draenic Armor"] = "Сила копытня";
    AL["Felscale Armor"] = "Доспехи Чешуи Скверны";
    AL["Felstalker Armor"] = "Доспехи Темного следопыта";
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
	AL["The Fists of Fury"] = "Кулаки Ярости";
    AL["The Twin Blades of Azzinoth"] = "Парные клинки Аззинота";
	
	--Wrath of the Lich King Sets
	AL["Raine's Revenge"] = "Отмщение Рейн";
	AL["Low Level"] = "Назкий уровень";
	AL["High Level"] = "Высокий уровень";

    --Recipe origin strings
    AL["Trainer"] = "Тренер";
    AL["Discovery"] = "Находка";
    AL["World Drop"] = "Мировой выпад";
    AL["Drop"] = "Падает";
    AL["Vendor"] = "Продавец";
    AL["Quest"] = "Задание";
    AL["Crafted"] = "Создано";
    
	--Scourge Invasion
    AL["Scourge Invasion"] = "Вторжения Плети";
    AL["Scourge Invasion Sets"] = "Комплект Вторжения Плети";
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
    AL["Vindicator's Battlegear"] = "Броня Стража";

    --AQ20 Sets
    AL["Symbols of Unending Life"] = "Символы Бесконечной жизни";
    AL["Trappings of the Unseen Path"] = "Ловушки Незримого Пути";
    AL["Trappings of Vaulted Secrets"] = "Облачение Погребенных";
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
    AL["Beast Lord Armor"] = "Доспехи Повелителя зверейr";
    AL["Desolation Battlegear"] = "Броня Опустошения";
    AL["Tidefury Raiment"] = "Одеяния Яростного прилива";
    AL["Bold Armor"] = "Могучая броня";
    AL["Doomplate Battlegear"] = "Роковая Броня";
    AL["Righteous Armor"] = "Доспехи Праведности";

    --Tier 1 Sets
    AL["Cenarion Raiment"] = "Ценарионские одеянияt";
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
    AL["Vestments of Faith"] = "Ризы Веры";
    AL["Bonescythe Armor"] = "Доспехи костяной косы";
    AL["The Earthshatterer"] = "Землекрушитель";
    AL["Plagueheart Raiment"] = "Облачение Проклятого сердца";
    AL["Dreadnaught's Battlegear"] = "Броня дредноута";

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
    AL["Netherblade Set"] = "Клинки Пустоты";
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
    AL["Deathmantle Set"] = "Мантия смерти";
    AL["Cataclysm Harness"] = "Облачение Катаклизма";
    AL["Cataclysm Raiment"] = "Одеяния Катаклизма";
    AL["Cataclysm Regalia"] = "Регалии Катаклизма";
    AL["Corruptor Raiment"] = "Ценарионские одеяния";
    AL["Destroyer Armor"] = "Доспехи Разрушителя";
    AL["Destroyer Battlegear"] = "Броня Разрушителя";

    --Tier 6 Sets
    AL["Thunderheart Harness"] = "Облачение Громового сердца";
    AL["Thunderheart Raiment"] = "Одеяния Громового сердца";
    AL["Thunderheart Regalia"] = "Регалии Громового сердца";
    AL["Gronnstalker's Armor"] = "Доспехи охотника на гроннов";
    AL["Tempest Regalia"] = "Регалии Урагана";
    AL["Lightbringer Armor"] = "Доспехи Светоносца";
    AL["Lightbringer Battlegear"] = "Броня Светоносца";
    AL["Lightbringer Raiment"] = "Одеяния Светоносца";
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
	
	--Tier 8 Sets
	AL["Darkruned Battlegear"] = "Темнорунная броня";
	AL["Darkruned Plate"] = "Темнорунные латы";
	AL["Nightsong Garb"] = "Наряд ночной песни";
	AL["Nightsong Battlegear"] = "Броня ночной песни";
	AL["Nightsong Regalia"] = "Регалии ночной песни";
	AL["Scourgestalker Battlegear"] = "Броня преследующего Плеть";
	AL["Kirin'dor Garb"] = "Киринторский наряд";
	AL["Aegis Regalia"] = "Регалии покровительства";
	AL["Aegis Battlegear"] = "Броня покровительства";
	AL["Aegis Plate"] = "Латы покровительства";
	AL["Sanctification Regalia"] = "Регалии посвящения";
	AL["Sanctification Garb"] = "Наряд посвящения";
	AL["Terrorblade Battlegear"] = "Клинковая броня";
	AL["Worldbreaker Garb"] = "Раскалывающий мир наряд";
	AL["Worldbreaker Battlegear"] = "Раскалывающая мир броня";
	AL["Worldbreaker Regalia"] = "Раскалывающие мир регалии";
	AL["Deathbringer Garb"] = "Наряд несущего смерть";
	AL["Siegebreaker Battlegear"] = "Осадная броня";
	AL["Siegebreaker Plate"] = "Осадные латы";

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
    AL["Lieutenant Commander's Stormcaller"] = "Зов Бури лейтенанта-командора";
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
    AL["Warlord's Battlegear"] = "Броня Вестника войны";

    --Outland Faction Reputation PvP Sets
    AL["Dragonhide Battlegear"] = "Броня из шкуры дракона";
    AL["Wyrmhide Battlegear"] = "Броня из шкуры змея";
    AL["Kodohide Battlegear"] = "Броня из шкуры кодо";
    AL["Stalker's Chain Battlegear"] = "Плетеный боевой доспех преследователя";
    AL["Evoker's Silk Battlegear"] = "Шелковая броня пробудителя";
    AL["Crusader's Scaled Battledgear"] = "Чешуйчетая броня рычаря";
    AL["Crusader's Ornamented Battledgear"] = "Украшенная броня рычаря";
    AL["Satin Battlegear"] = "Атласная броня";
    AL["Mooncloth Battlegear"] = "Броня из луноткани";
    AL["Opportunist's Battlegear"] = "Броня противоречещего";
    AL["Seer's Linked Battlegear"] = "Клепаная броня провидца";
    AL["Seer's Mail Battlegear"] = "Кольчужная броня провидца";
    AL["Seer's Ringmail Battlegear"] = "Кольчатая броня провидца";
    AL["Dreadweave Battlegear"] = "Броня из ткани Ужаса";
    AL["Savage's Plate Battlegear"] = "Латная броня свирепости";

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
    AL["Savage Gladiator\'s Weapons"] = "Оружие свирепого гладиатора";  --unused
    AL["Deadly Gladiator\'s Weapons"] = "Оружие смертоносного гладиатора";  --unused
	AL["Furious Gladiator\'s Weapons"] = "Оружие гневного гладиатора";

    --Set Labels
    AL["Set: Embrace of the Viper"] = "Комплект: Объятия гадюки";
    AL["Set: Defias Leather"] = "Комплект: Кожаные доспехи Братства Справедливости";
    AL["Set: The Gladiator"] = "Комплект: Гладиатор";
    AL["Set: Chain of the Scarlet Crusade"] = "Комплект: Цепь Алого ордена";
    AL["Set: The Postmaster"] = "Комплект: Вестник";
    AL["Set: Necropile Raiment"] = "Комплект: Одеяния Праха";
    AL["Set: Cadaverous Garb"] = "Комплект: Трупный наряд";
    AL["Set: Bloodmail Regalia"] = "Комплект: Регалии Кровавой кольчуги";
    AL["Set: Deathbone Guardian"] = "Комплект: Костяной Страж";
    AL["Set: Dal'Rend's Arms"] = "Комплект: Руки Дал'Ренда";
    AL["Set: Spider's Kiss"] = "Комплект: Поцелуй паука";
    AL["Temple of Ahn'Qiraj Sets"] = "Комплекты из Храма Ан'Киража";
    AL["AQ40 Class Sets"] = "Классовые Комплекты АК40";
    AL["Ruins of Ahn'Qiraj Sets"] = "Комплект из Руин Ан'Киража";
    AL["AQ20 Class Sets"] = "Классовые Комплекты АК20";
    AL["AQ Enchants"] = "Зачарования из АК";
    AL["AQ Opening Quest Chain"] = "Цепь заданий открытия АК";
    AL["Misc Sets"] = "Различные комплекты";
    AL["Classic Sets"] = "Классические комплекты";
    AL["Burning Crusade Sets"] = "БК комплекты";
    AL["Wrath Of The Lich King Sets"] = "ВоЛк комплекты";
    AL["Scholomance Sets"] = "Комплекты Некроситета";
    AL["Crafted Sets"] = "Изготов-ные Комплекты";
    AL["Crafted Epic Weapons"] = "Изготов-ные Эпические Оружия";
    AL["Zul'Gurub Sets"] = "Комплекты Зул'Гуруба";
    AL["ZG Class Sets"] = "Классовые Комплекты ЗГ";
    AL["ZG Enchants"] = "Зачарования из ЗГ";
    AL["Dungeon 1/2 Sets"] = "Комплекты подземелий 1/2";
    AL["Dungeon Set 1"] = "Комплекты подземелий 1";
    AL["Dungeon Set 2"] = "Комплекты подземелий 2";
    AL["Dungeon Set 3"] = "Комплекты подземелий 3";
    AL["Dungeon 3 Sets"] = "Комплекты подземелий 3";
    AL["Tier 1/2 Sets"] = "Комплекты: Тир 1/2";
    AL["Tier 1/2/3 Sets"] = "Комплекты: Тир 1/2/3";
    AL["Tier 3 Sets"] = "Комплект 3 Тира";
    AL["Tier 4/5/6 Sets"] = "Комплект 4/5/6 Тира";
    AL["PvP Reputation Sets (Level 70)"] = "Комплекты PvP за репутацию (Уровень 70)";
    AL["PvP Rewards (Level 60)"] = "PvP награды (Уровень 60)";
    AL["PvP Rewards (Level 70)"] = "PvP награды (Уровень 70)";
    AL["PvP Rewards (Level 80)"] = "PvP награды (Уровень 80)";
    AL["PvP Accessories (Level 60)"] = "PvP Аксессуары (Уровень 60)";
    AL["PvP Accessories - Alliance (Level 60)"] = "PvP Аксессуары - Альянс (Уровень 60)";
    AL["PvP Accessories - Horde (Level 60)"] = "PvP Аксессуары - Орда (Уровень 60)";
    AL["PvP Accessories (Level 70)"] = "PvP Аксессуары (Уровень 70)";
    AL["PvP Jewelcrafting Designs and Gems"] = "PvP ювелирные эскизы";
	AL["PVP Gems/Enchants/Jewelcrafting Designs"] = "PvP Самоцветы/Чары/Ювелирные эскизы";
    AL["PvP Rewards"] = "PvP награды";
    AL["PvP Armor Sets"] = "PvP Комплекты Доспехов";
    AL["PvP Weapons"] = "PvP Оружие";
    AL["PvP Weapons (Level 60)"] = "PvP Оружие (Уровень 60)";
    AL["PvP Weapons (Level 70)"] = "PvP Оружие (Уровень 70)";
    AL["PvP Accessories"] = "PvP Аксессуары";
    AL["PvP Non-Set Epics"] = "PvP Эпики не из комплектов";
    AL["PvP Honor System"] = "PvP Системы Чести";
    AL["PvP Reputation Sets"] = "PvP Комплекты";
    AL["Arena PvP Sets"] = "Арена PvP Комплекты";
    AL["Arena PvP Weapons"] = "Арена PvP Оружие";
    AL["Arena PvP System"] = "Арена PvP Система";
    AL["Arena Season 2 Weapons"] = "Арена: Сезон 2 - Оружие";
    AL["Arena Season 3 Weapons"] = "Арена: Сезон 3 - Оружие";
    AL["Arena Season 4 Weapons"] = "Арена: Сезон 4 - Оружие";
    AL["Season 2"] = "Сезон 2";
    AL["Season 3"] = "Сезон 3";
    AL["Season 4"] = "Сезон 4";
    AL["Arathi Basin Sets"] = "Комплекты Низины Арати";
    AL["Class Books"] = "Классовые Книги";
    AL["Tribute Run"] = "Заход почести";
    AL["Dire Maul Books"] = "Книги Забытого Города";
    AL["Random Boss Loot"] = "Трофеи случайных боссов";
    AL["Class Set Pieces"] = "Куски классовых Комплектов";
    AL["Epic Set"] = "Эпические Комплекты";
    AL["Rare Set"] = "Редкие Комплекты";
    AL["Legendary Items"] = "Легендарные предметы";
    AL["Badge of Justice Rewards"] = "Награды за Знаки справедливости";
    AL["Emblem of Valor Rewards"] = "Награды за эмблемы доблести";
    AL["Emblem of Heroism Rewards"] = "Награды за эмблемы героизма";
    AL["Emblem of Conquest Rewards"] = "Награды за эмблемы завоевания";
    AL["Accesories and Weapons"] = "Аксессуары и Оружия";
    AL["Accessories"] = "Аксессуары";
    AL["Armor and Weapons"] = "Броня и Оружия";
    AL["Fire Resistance Gear"] = "Наборы сопротивлению огню";
    AL["Arcane Resistance Gear"] = "Наборы сопротивление тайной магии";
    AL["Nature Resistance Gear"] = "Наборы сопротивление природе";
    AL["Frost Resistance Gear"] = "Наборы сопротивление льду";
    AL["Shadow Resistance Gear"] = "НАборы сопротивление тьме";
    AL["Tabards"] = "Накидки";
    AL["Token Hand-Ins"] = "Знаки";
    AL["Heroic Mode Keys"] = "Ключи героик режима";
    AL["Legendary Items for Kael'thas Fight"] = "Легендарные предметы для боя с Кель'тасом";
    AL["BoE World Epics"] = "Мировые эпики ПпП";
    AL["World Epics"] = "Мировие эпики";
    AL["Level 30-39"] = "Уровни 30-39";
    AL["Level 40-49"] = "Уровни 40-49";
    AL["Level 50-60"] = "Уровни 50-60";
    AL["BT Patterns/Plans"] = "ЧХ - Выкройки/Чертежы";
    AL["Hyjal Summit Designs"] = "Эскизы - Вершина Хиджала";
    AL["SP Patterns/Plans"] = "SP Выкройки/Чертежы";
	AL["Ulduar Formula/Patterns/Plans"] = "Ульдуар - Формулы/Выкройки/Чертежы";
    AL["Additional Heroic Loot"] = "Допол. добыча с героиков";
    AL["Sigil"] = "Печать";

    --Pets
    AL["Pets"] = "Питомци";
    AL["Non-Combat Pets"] = "Не-Боевые питомци";
	AL["Promotional"] = "Содействующие";
	AL["Merchant Sold"] = "Продаються торговцами";

    --Mounts
    AL["Mounts"] = "Транспорт";
    AL["Classic Mounts"] = "Классический транспорт";
    AL["The Burning Crusade Mounts"] = "Транспорт БКа";
    AL["Wrath of the Lich King Mounts"] = "Транспорт ВоЛКа";
    AL["Card Game Mounts"] = "Транспорт с игральных карт";
    AL["Crafted Mounts"] = "Созданный транспорт";
    AL["Event Mounts"] = "Транспорт событий";
    AL["PvP Mounts"] = "PvP транспорт";
    AL["Rare Mounts"] = "Редкий транспорт";
    AL["Flying Mounts"] = "Летающий транспорт";
    AL["Buyable Mounts"] = "Покупаемыей транспорт";
    AL["Faction Mounts"] = "Транспорт фракций";

    --Specs
    AL["Balance"] = "Баланс";
    AL["Feral"] = "Сила зверя";
    AL["Restoration"] = "Исцеление";
    AL["Holy"] = "Свет";
    AL["Protection"] = "Защита";
    AL["Retribution"] = "Возмездие";
    AL["Shadow"] = "Темная магия";
    AL["Elemental"] = "Стихии";
    AL["Enhancement"] = "Совершенствование";
    AL["Fury"] = "Неистовство";
    AL["Demonology"] = "Демонология";
    AL["Destruction"] = "Разрушение";
    AL["Tanking"] = "Танкования";
    AL["DPS"] = "ДПС";
	
	--Naxx Zones
	AL["Construct Quarter"] = "Квартал Мерзости";
	AL["Arachnid Quarter"] = "Паучий квартал";
	AL["Military Quarter"] = "Военный квартал";
	AL["Plague Quarter"] = "Чумной квартал";
	AL["Frostwyrm Lair"] = "Логово ледяного змея";

    --NPCs missing from BabbleBoss
    AL["Trash Mobs"] = "Существа";
    AL["Dungeon Set 2 Summonable"] = "Комплект подземелий 2 вызываемый";
    AL["Highlord Kruul"] = "Highlord Kruul";
    AL["Theldren"] = "Телдрена";
    AL["Sothos and Jarien"] = "Сотос и Джариен";
    AL["Druid of the Fang"] = "Друид Клыка";
    AL["Defias Strip Miner"] = "Горнорабочий из Братства Справедливости";
    AL["Defias Overseer/Taskmaster"] = "Надзиратель из Братства Справедливости/Надсмотрщик";
    AL["Scarlet Defender/Myrmidon"] = "Защитник из Алого ордена/Мирмидон";
    AL["Scarlet Champion"] = "Воитель из Алого ордена";
    AL["Scarlet Centurion"] = "Центурион из Алого ордена";
    AL["Scarlet Trainee"] = "Новобранец из Алого ордена";
    AL["Herod/Mograine"] = "Герод/Могрейн";
    AL["Scarlet Protector/Guardsman"] = "Охранник/Заступник из Алого Ордена";
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
    AL["Rift Keeper/Rift Lord"] = "Повелитель/Хранительница временного разлома";
    AL["Crimson Templar"] = "Багровый храмовник";
    AL["Azure Templar"] = "Лазурный храмовник";
    AL["Hoary Templar"] = "Седой храмовник";
    AL["Earthen Templar"] = "Земной храмовник";
    AL["The Duke of Cynders"] = "Герцог Пепла";
    AL["The Duke of Fathoms"] = "Герцог Глубин";
    AL["The Duke of Zephyrs"] = "Герцог Ветров";
    AL["The Duke of Shards"] = "Герцог Осколков";
    AL["Aether-tech Assistant"] = "Помощник эфир-теха";
    AL["Aether-tech Adept"] = "Адепт эфир-теха";
    AL["Aether-tech Master"] = "Мастер эфир-теха";
    AL["Trelopades"] = "Трелопадес";
    AL["King Dorfbruiser"] = "Король Рубака";
    AL["Gorgolon the All-seeing"] = "Горголон Всевидящий";
    AL["Matron Li-sahar"] = "Сестра Ли-саар";
    AL["Solus the Eternal"] = "Солус Вечный";
    AL["Balzaphon"] = "Балзафон";
    AL["Lord Blackwood"] = "Лорд Чернолес";
    AL["Revanchion"] = "Реваншион";
    AL["Scorn"] = "Скорн";
    AL["Sever"] = "Отсекатель";
    AL["Lady Falther'ess"] = "Леди Фалтер'есс";
    AL["Smokywood Pastures Vendor"] = "торговец-Пастбища Дымного Леса";
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
    AL["High Council"] = "Верховный советник";
    AL["Headless Horseman"] = "Всадника без головы";
    AL["Barleybrew Brewery"] = "Ячменевское Тчали";
    AL["Thunderbrew Brewery"] = "Грозовар Тчали";
    AL["Gordok Brewery"] = "Гордок Тчали";
    AL["Drohn's Distillery"] = "Винокурня Дрона";
    AL["T'chali's Voodoo Brewery"] = "Пивоваренного завода Тчали Вуду";
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
    AL["Aggem Thorncurse"] = "Аггем Терновое Проклятие";
    AL["Roogug"] = "Ругуг";
    AL["Rajaxx's Captains"] = "Капитаны Раджакса";
    AL["Razorfen Spearhide"] = "Копьешкур из племени Иглошкурых";
    AL["Rethilgore"] = "Ретилгор";
    AL["Kalldan Felmoon"] = "Калидан Лунный Серп";
    AL["Magregan Deepshadow"] = "Магреган Чернотень";
    AL["Lord Ahune"] = "Повелитель Ахуна";
    AL["Coren Direbrew"] = "Корен Худовар";
    AL["Don Carlos"] = "Дон Карлос";
    AL["Thomas Yance"] = "Томас Янс";
    AL["Aged Dalaran Wizard"] = "Даларанский старый волшебник";
    AL["Cache of the Legion"] = "Тайник Легиона";
    AL["Rajaxx's Captains"] = "Капитаны Раджакса";
    AL["Felsteed"] = "Скакун Скверны";
    AL["Shattered Hand Executioner"] = "Палач из клана Изувеченной Длани";
    AL["Commander Stoutbeard"] = "Командир Пивобород";
    AL["Bjarngrim"] = "Бьярнгрин";
    AL["Loken"] = "Локен";
    AL["Time-Lost Proto Drake"] = "Затерянный во времени протодракон";
	AL["Emalon the Storm Watcher"] = "Эмалон Созерцатель Бури"; --Is in BabbleBoss

    --Zones
    AL["World Drop"] = "Мировой выпад";
    AL["Sunwell Isle"] = "Остров Солнечного Колодца";

    --Shortcuts for Bossname files
    AL["LBRS"] = "ВЧЧГ";
    AL["UBRS"] = "НЧЧГ";
    AL["CoT1"] = "ПВ1";
    AL["CoT2"] = "ПВ2";
    AL["Scholo"] = "Некрос";
    AL["Strat"] = "Страт";
    AL["Serpentshrine"] = "Святилища Змея";
    AL["Avatar"] = "Аватара";

    --Chests, etc
    AL["Dark Coffer"] = "Черный ящик";
    AL["The Secret Safe"] = "Секретность";
    AL["The Vault"] = "Чертог";
    AL["Ogre Tannin Basket"] = "Огрский дубильный чан";
    AL["Fengus's Chest"] = "Сундук Фенгуса";
    AL["The Prince's Chest"] = "Сундук принца";
    AL["Doan's Strongbox"] = "Сейф Доана";
    AL["Frostwhisper's Embalming Fluid"] = "Бальзамировочный состав Ледяного Шепота";
    AL["Unforged Rune Covered Breastplate"] = "Некованная руническая кираса";
    AL["Malor's Strongbox"] = "Сейф Малора";
    AL["Unfinished Painting"] = "Незаконченная картина";
    AL["Felvine Shard"] = "Сквернит";
    AL["Baelog's Chest"] = "Сундук Бейлога";
    AL["Lorgalis Manuscript"] = "Манускрипт Лоргалиса";
    AL["Fathom Core"] = "Глубинный сердечник";
    AL["Conspicuous Urn"] = "Подозрительная урна";
    AL["Gift of Adoration"] = "Дар обожания";
    AL["Box of Chocolates"] = "Коробка шоколада";
    AL["Treat Bag"] = "Сумка с лакомствами";
    AL["Gaily Wrapped Present"] = "Подарок в яркой упаковке";
    AL["Festive Gift"] = "Праздничный дар";
    AL["Ticking Present"] = "Тикающий подарочек";
    AL["Gently Shaken Gift"] = "Слегка растрясенный дар";
    AL["Carefully Wrapped Present"] = "Тщательно упакованный подарок";
    AL["Winter Veil Gift"] = "Подарок на Зимний покров";
    AL["Smokywood Pastures Extra-Special Gift"] = "Эксклюзивный дар Пастбищ Дымного Леса";
    AL["Brightly Colored Egg"] = "Раскрашенное яйцо";
    AL["Lunar Festival Fireworks Pack"] = "Пачка фейерверков для Праздника луны";
    AL["Lucky Red Envelope"] = "Красный конверт Счастья";
    AL["Small Rocket Recipes"] = "Чертеж малой ракеты";
    AL["Large Rocket Recipes"] = " Чертеж большой ракеты";
    AL["Cluster Rocket Recipes"] = "Чертежи батареи фейерверков";
    AL["Large Cluster Rocket Recipes"] = "Чертежи больших батарей фейерверков";
    AL["Timed Reward Chest"] = "Сундук, награда за время";
    AL["Timed Reward Chest 1"] = "1-й сундук, награда за время";
    AL["Timed Reward Chest 2"] = "2-й сундук, награда за время";
    AL["Timed Reward Chest 3"] = "3-й сундук, награда за время";
    AL["Timed Reward Chest 4"] = "4-й сундук, награда за время";
    AL["The Talon King's Coffer"] = "Сундук Короля Когтей";
    AL["Krom Stoutarm's Chest"] = "Сундук Крома Крепкорука";
    AL["Garrett Family Chest"] = "Сундук семейства Гарретт";
    AL["Reinforced Fel Iron Chest"] = "Укрепленный сундук из оскверненного железа";
    AL["DM North Tribute Chest"] = "DM North Tribute Chest";
    AL["The Saga of Terokk"] = "Сказание о Терокке";
    AL["First Fragment Guardian"] = "Страж первого фрагмента";
    AL["Second Fragment Guardian"] = "Страж второго фрагмента";
    AL["Third Fragment Guardian"] = "Страж третьего фрагмента";
    AL["Overcharged Manacell"] = "Избыточно заряженный аккумулятор маны";
    AL["Mysterious Egg"] = "Таинственное яйцо";
    AL["Hyldnir Spoils"] = "Хильдские трофеи";
    AL["Ripe Disgusting Jar"] = "Совершенно омерзительный кувшин";
    AL["Cracked Egg"] = "Треснутое яйцо";

    --World Events
    AL["Abyssal Council"] = "Совет Бездны";
    AL["Bash'ir Landing Skyguard Raid"] = "Рейд Стражей Небес на Лагерь Баш'ира";
    AL["Brewfest"] = "Хмельной фестиваль";
    AL["Children's Week"] = "Детская неделя";
    AL["Elemental Invasion"] = "Вторжение стихий";
    AL["Ethereum Prison"] = "Тюрьма Эфириумов";
    AL["Feast of Winter Veil"] = "Зимний Покров";
    AL["Gurubashi Arena Booty Run"] = "Арена Гурубаши";
    AL["Hallow's End"] = "Тыквовин";
    AL["Harvest Festival"] = "Неделя урожая";
    AL["Love is in the Air"] = "Любовная лихорадка";
    AL["Lunar Festival"] = "Лунный фестиваль";
    AL["Midsummer Fire Festival"] = "Огненный солнцеворот";
    AL["Noblegarden"] = "Сад чудес";
    AL["Skettis"] = "Скеттис";
    AL["Stranglethorn Fishing Extravaganza"] = "Рыбомания Тернистой долины";
--    AL["Argent Tournament"] = "Серебряный турнир";

	AL["Help"] = "Справка";
	AL["AtlasLoot Help"] = "Справка AtlasLoot";
	AL["For further help, see our website and forums: "] = "Для получения дополнительной справки, см. наш сайт и форумы: ";
	AL["How to open the standalone Loot Browser:"] = "Как открыть отдельный обозреватель добычи:";
end
