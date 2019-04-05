-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 05 2019 г., 12:05
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(40) NOT NULL,
  `text` text,
  `category_id` int(11) DEFAULT NULL,
  `pubdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `text`, `category_id`, `pubdate`, `views`) VALUES
(1, 'Гандболисты БГК обыграли минский СКА', 'img1.jpg', 'БГК им. Мешкова: Мацкевич, Черепенько; Будейко, Кулак (4), Бочко, Юринок (1), Потеко (1), Ивич (2), Шумак (5), Баранов (6/3), Горак (3), Разгор (1), Обранович (1), Сельвесюк (1), Джукич (2), Джорджич (4).\r\n\r\nПо ходу второго тайма минчане вели в счете с разницей в 6 мячей (23:17). Но концовку увереннее провели брестчане, которые не только отыгрались, но и вырвались вперед благодаря трем кряду голам Петара Джорджича — 31:30.\r\n\r\nСКА попытался спастись, заменив голкипера седьмым полевым игроком. Армейцы были близки к тому, чтобы сравнять счет, но дважды не смогли пробить голкпера БГК Ивана Мацкевича.\r\n\r\nВ итоге СКА, практически весь матч ведя в счете, потерпел обидное поражение.\r\n\r\nОтрыв БГК от главного преследователя вырос до 11 очков.', 2, '2019-03-24 12:07:11', 52),
(2, 'Выгодные кредиты на жилье', 'img2.jpg', 'Вот уже почти четыре месяца, как Беларусбанк не оформляет договоры на покупку недвижимости и каждый месяц срок предполагаемого возобновления кредитования сдвигается. По последней информации, заявки на кредиты не будут приниматься до конца марта. Полноценно не возобновили кредитование и БПС-Сбербанк, и Банк БелВЭБ. Эти банки предлагают только льготные кредиты. Кроме того, в марте еще один банк оставил возможность кредитования только в рамках партнерских программ — БНБ-Банк.\r\nПравда, есть и хорошие новости: несколько банков снизили размер основной процентной ставки. Так, Франсабанк уменьшил ставку на 0,09 процентных пункта. В Приорбанке, Белинвестбанке и Белагропромбанке кредиты на жилье подешевели на 0,69 — 0,7 процентных пункта.\r\nЧитать полностью:  https://finance.tut.by/news630372.html', 1, '2019-03-24 12:09:29', 19),
(3, 'Перспективы связи 6G', 'img3.jpg', 'Мир только планирует начать повсеместно внедрять связь 5G, а специалисты уже присматриваются к более перспективным стандартам. На будущей неделе в Финляндии состоится 6G Wireless Summit с участием более 200 исследователей. Вначале они поговорят о 5G, а затем переключатся на технологии, которые появятся лет через десять.\r\n\r\n6G окажется значительно эффективнее 5G, обеспечив еще более высокие скорости передачи данных, а также позволит снизить энергопотребление устройств, его использующих.\r\n\r\nОжидается, что для экспериментальных целей будет выделен диапазон от 95 ГГц и выше — в сторону терагерцевых частот. Однако пока это лишь отдаленные перспективы.', 4, '2019-03-24 12:12:52', 219),
(7, 'Астрономы обнаружили в космосе новые источники быстрых радиовсплесков', '', 'Группа астрономов смогла установить несколько новых источников космических радиоимпульсов, которые также известны как FRB или «быстрые радиовсплески». Все они исходят не из нашей галактики, причем шесть сигналов поступили из одной точки.', 5, '2019-03-24 13:43:49', 5),
(8, 'О Природе вокруг нас', '', 'Большинство радиовсплесков слишком быстрые, чтобы как следует их изучить. Обычно они длятся считаные миллисекунды и затем навсегда пропадают. Предположительно, источники импульсов находятся на колоссальном расстоянии в миллиарды световых лет от нас. К примеру, в 2017 году сигнал шел из карликовой галактики за пределами Млечного пути, которая находится в трех миллиардах световых лет от Земли.', 5, '2019-03-24 13:44:02', 122),
(9, 'Безопасность в сети интернет', 'imgbez_1.jpg', '«Адресация в сети Интернет» - Тарифы определяются видом услуг. Познакомиться с сетью Интернет. Принципы функционирования глобальной сети. Свойства модемов: - Скорость передачи данных. Передача файлов(FTP). В нашей школе в течение одной недели проводился опрос. Очень важную роль в глобальной сети играет модем. Системы телеконференций(USENET).\r\n\r\n«Компьютерные сети» - Домены. Адресация в Интернет. Какие компьютерные сети бывают? Высокоскоростные компьютерные сети. Оптоволоконные компьютерные сети. Почему WWW называют всемирной паутиной? Низкоскоростные компьютерные сети. Компьютерные сети. Корпоративные компьютерные сети. Что такое топология сети? Ведомственные компьютерные сети.\r\n\r\n«Виды компьютерных сетей» - Виды компьютерных сетей. Министерство образования Российской Федерации. Концентратор (HUB). Топология «Звезда». Имеется «главный», т.е. обслуживающий компьютер (СЕРВЕР). Локальные сети Региональные Глобальные. Типы сетей. Топология «Общая шина». Компьютеры не равноправны Сеть с выделенным сервером. Локальные сети.\r\n\r\n«Безопасность в сети интернет» - Что вы можете предпринять вы сами! Безопасность детей в сети Интернет. Интернет позволяет вам: Безопасность для вашей семьи. Открыто поговорите с детьми об опасностях Интернета, в том числе и о следующем: •Общаться с друзьями, семьей, коллегами; •получать доступ к информации и развлечениям; •учиться, встречаться с людьми и узнавать новое.\r\n\r\n«Сети» - Режимы WDS. Модемы. Маршрутизатор cisco 771 со встроенным коммутатором. Повторители (репитеры). Структура MAC-адреса. Режим WDS WITH AP. Основные элементы сети: Wi-Fi адаптеры точки доступа. Режимы доступа в беспроводных сетях . Режим Ad Hoc Инфраструктурный режим Режимы WDS и WDS WITH AP Режим повторителя Режим клиента.\r\n\r\n«Интернет и социальные сети» - Хабрахабр. Интернет. Мир тесен. В Контакте. Социальная сеть и конструктор сайтов, 170 тыс посетителей в день. Отец Всемирной Паутины. Одноклассники. Изображены только связи между серверами. Гайдпарк. Первая unix-версия графического браузера mosaic. Первый текстовый браузер (browser). Зарегистрированных пользователей.', 6, '2019-03-27 12:03:37', 124),
(10, 'Laws of Nature vs. Laws of Science', 'imgnut_1.jpg', 'In 1959, at the annual meeting of the American Association for the Advancement of Sciences, Michael Scriven read a paper that implicitly distinguished between Laws of Nature and Laws of Science. Laws of Science (what he at that time called \"physical laws\") – with few exceptions – are inaccurate, are at best approximations of the truth, and are of limited range of application. The theme has since been picked up and advanced by Nancy Cartwright.\r\n\r\nIf scientific laws are inaccurate, then – presumably – there must be some other laws (statements, propositions, principles), doubtless more complex, which are accurate, which are not approximation to the truth but are literally true.\r\n\r\nWhen, for example, generations of philosophers have agonized over whether physical determinism precludes the existence of free will (for example, Honderich), they have been concerned with these latter laws, the laws of nature itself.\r\n\r\nIt is the explication of these latter laws, the Laws of Nature, that is the topic of this article. We will not here be examining the \"approximate truths\" of science. Thus, to cite just one example, the controversy over whether scientific laws are (merely) instruments lies outside the topic of this article.', 5, '2019-03-27 09:03:37', 329),
(11, 'Формы', '', 'Формы являются одним из важных элементов любого сайта и предназначены для обмена данными между пользователем и сервером. Область применения форм не ограничена отправкой данных на сервер, с помощью клиентских скриптов можно получить доступ к любому элементу формы, изменять его и применять по своему усмотрению.', 7, '2019-03-23 08:18:25', 0),
(12, 'Subaru Outback 2019', 'img_sub.jpg', '14 дней мы тестировали Subaru Outback 2019 года модель в суровых северных условиях. Морозы, сильный ветер, зимник, разбитая дорога и красота Заполярья. Все это мы испытали на Subaru Outback.\r\nИтак у нас был Subaru Outback — 2.5 литра бензиновая версия, вариатор, полный привод, лакшери версия отделки.\r\nПодвеска. Мы проехали много тысяч километров и нам встречались разные покрытия дорог. На Севере в основном была либо заснеженная и очень скользкая дорога, а ниже — разбитый асфальт. Несмотря на то, что в целом я доволен качеством дорог, нам попадались такие большие ямы, что попав в них, я иногда думал, что такое автомобиль не переживет, но все обходилось и мы продолжали двигаться дальше. Подвеска в Subaru Outback нереально хороша.\r\nУскорение. Я не знаю почему, но все японские автомобили имеют одну черту — «медлительность». Subaru Outback тоже принадлежит к таковым. Это не спорткар, поэтому ожидать 5 секунд до 100 не приходится. В общем — обычный, среднего разгона автомобиль. Он спокойно обойдет на трассе грузовик, сможет разогнаться чтобы «проскочить» при обгоне, но чувств скорости он не даст.\r\nДизайн. Сбоку и сзади Subaru Outback по стилистике и дизайну напоминает Audi A6 Allroad. А вот вид спереди меня не порадовал. Мне он не нравится. Это дело вкуса, но не моего.\r\nКомфорт в салоне. Удобная посадка, удобное управление, практичная обстановка. При длительном движении у меня усталости не наблюдалось, поэтому я не замечал пройденные километры. В общем в дальней дороге будет комфортно. А вот качество монитора и музыки напоминает автомобили 15 летней давности. Это не хорошо.\r\nТепло. В ней тепло и впереди и сзади. Всю дорогу я ездил сидя либо за рулем либо возле водителя в рубашке, хотя на окном днем было — 25. Обогрев работает как надо. Единственная претензия — хотелось бы более сильного обдува на ноги пассажиров сидящих сзади.\r\nРасход топлива. Мы не экономили. Двигатель выключали лишь когда шли отдыхать или на прогулки, поэтому у нас вышло около 9.5 — 9.9 л. на 100 км. Считаю, что это достаточно хороший показатель.\r\nВывод: Типичный Субару сделанный на многие года, если не говорить десятилетия. Маркетинг до него еще пока не добрался, поэтому его купив, вы 10-15 лет будете уверены в нем. Конечно дизайн дело вкуса, но подвеска и работа 4-х ведущих полностью оправдывает ожидания. Упасть в яму и продолжать движение будто ничего не произошло — это может только Subaru. Немцев уже таких нет. Корейцев не будет.\r\nКстати, мне интересно, чтобы выбрали вы? Subaru Outback или Audi A6 Allroad? Об этом сообщает Рамблер. Далее: https://auto.rambler.ru/testdrives/41966767/?utm_content=rauto&utm_medium=read_more&utm_source=copylink', 7, '2019-03-24 18:36:27', 306),
(13, 'Scientists track damage from controversial deep-sea mining method', 'd41586.jpg', 'For decades, mining companies have been eager to extract rare and valuable metals and minerals from the deep sea — a practice that scientists have long warned could damage marine ecosystems. Now, the first large-scale test of a major industrial-mining technique promises to provide robust data on the impacts of the controversial practice.\r\n\r\nNext month, a Belgian mining firm will use a machine to hoover up metals such as copper and iron that lie in rock deposits — or nodules — on the sea floor in the remote Pacific Ocean. Alongside, an independent team of European scientists will study the effects — in particular, how plumes of sediment created by the churning could affect the vibrant marine communities that inhabit the seabed and the water column.\r\n\r\nThe scientists’ findings are expected to inform the development of an international code of conduct to allow commercial mining to move forward — while minimizing harm to sea life.\r\n\r\n“This will, hopefully, help us to close some of the knowledge gaps that we have on the expected impacts of deep-sea mining,” says Matthias Haeckel, a biogeochemist at the GEOMAR Helmholtz Centre for Ocean Research Kiel in Germany who is leading the research expedition.\r\n\r\nHigh seas\r\nThe International Seabed Authority (ISA) — a 168-member body created by the United Nations that promotes and regulates seabed mining — met in Kingston, Jamaica, last month to discuss the code, which it hopes to finalize by 2020. Once formalized, the code will be a rulebook for mining the international seabed — the vast stretches of ocean floor that lie beyond national governance. Eventually, the ISA plans to issue 30-years exploitation licences to firms.\r\n\r\nThe ISA has granted 29 licences that give contractors permission to explore minerals from the deep sea. Sixteen are for the Clarion Clipperton Zone (CCZ) — one of the world’s largest untapped collections of high-value metal ores that commercial companies are keen to get their hands on. The vast plain is in the mid-Pacific and contains trillions of potato-sized deposits called polymetallic nodules, loaded with precious minerals and metals such as manganese, copper and iron.\r\n\r\nNext month, Global Sea Mineral Resources (GSR), a mining subsidiary of dredging company DEME, will begin harvesting these deposits using a prototype machine called Patania II. Over eight days, it will suck up nodules from an area 300 metres by 300 metres. GSR is pushing for a mining code by 2020 and says that it needs these regulations in place to launch full-scale mining by 2026.\r\n\r\nAt the same time, scientists on the German research vessel RV Sonne will deploy deep-sea cameras and sensors to monitor how the dredging will churn the soft, sedimentary part of the sea floor that surrounds these nodules.\r\n\r\nResearchers fear that mining could create plumes of suspended sediment that extend tens or even hundreds of metres above the seafloor. “The bottom waters of the CCZ are the clearest of anywhere in the ocean,” says Craig Smith, an oceanographer at the University of Hawaii at Manoa in Honolulu. But, he says:﻿ “We will not really understand the actual scale of mining impacts until the effects of sediment plumes from full-scale mining are studied for years”.\r\n\r\nDark plumes\r\nIn particular, researchers worry that the plumes could bury, smother and toxify the vibrant life on the sea floor — such as rare, squid-like worms, sea cucumbers nicknamed ‘gummy squirrels’ and fast-moving sea urchins. “It is likely that the CCZ communities are extremely sensitive to sediment plumes,” says Smith. They also worry that sediment separated from the nodules on ships and later discarded into the sea will create more plumes.\r\n\r\nA study published in January1 that used realistic data on oceanographic and sediment characteristics from the GSR mining site has already modelled how these plumes are likely to behave in response to their test. The research found that soft sediment in the CCZ could take up to ten times longer to resettle than previously thought, meaning sediment is likely to travel farther in the water column before it resettles, affecting marine life over a much larger area.', 5, '2019-04-03 15:35:45', 5),
(14, 'English sea walls get wired to measure flood risk in real time', 'd415862.jpg', 'Jenny Brown is hoping for really bad weather. She is consulting tide tables, watching forecasts and rooting for strong westerly winds that would push the spring tide over the sea wall at Crosby, on Liverpool Bay, in the days around 21 March.\r\n\r\nBrown, a physical oceanographer at the National Oceanography Centre (NOC) in Liverpool, wants to help local officials understand how much the ocean is breaching the sea wall — and how much they need to strengthen their flood defences.\r\n\r\nTo do that, she needs the waves to splash onto a device her team will bolt into the concrete sea wall. It’s a boxlike frame built of pipes, with wires strung between them like strings on a harp. When seawater slops over the top of the barrier, the wires will measure the volume and speed of the spray.\r\n\r\n“We don’t have a good understanding of the impact of storms,” says Brown. “Offshore, we have wave measurements and tide gauges, but what we don’t have is measurements of water coming on land.”\r\n\r\nSuch data are important to make sure that people strolling by the sea aren’t swept off their feet by big waves, and to help communities prepare for coastal flooding during storms. In the United Kingdom alone, at least £150 billion (US$197 billion) of property and 4 million people are at risk from coastal flooding. “Nobody’s going to make the call to shut a four-lane highway unless they’re really sure the conditions are likely to be hazardous,” says Tim Pullen, a coastal engineer at HR Wallingford, a civil-engineering company in Wallingford, UK.\r\n\r\nBrown’s team’s device, called WireWall, has collected data at Crosby over three particularly high tides since October. Mid-March is their last chance to catch the ocean crashing over the sea wall before they have to start writing up their results. The researchers want to use the information to improve oceanographic models — and perhaps deploy WireWalls in other places to study topics such as dam safety and the effectiveness of mangrove trees as coastal barriers.\r\n\r\nWave of the future\r\nThere are hardly any field data on how often seawater splashes over coastal defences, says Pullen. In the early 2000s, he helped put large tanks behind the sea wall at a coastal park in Kent, next to the tunnel under the English Channel. They captured water slopping over the wall and, by measuring the depth of water in the tanks after each slop, the scientists could take some of the only such field measurements captured so far1.\r\n\r\nBut tanks are heavy and expensive to deploy, and they don’t gather data on how fast water is moving. So Brown got in touch with Margaret Yelland, an oceanographer at the NOC site in Southampton, who has used capacitance wires, which sense contact with salt water, on buoys in the open ocean2. Working with Pullen and others, they designed and tested the WireWall before taking it to Crosby, where local officials plan to replace the ageing sea wall and are looking for information on how best to do that. (Part of the design research involved going through photos from a Facebook group of people who walk on Crosby beach to see how often the car park flooded.)\r\n\r\nWhen tides are high, winds are strong and it looks like the sea might break over the wall at Crosby, the WireWall team sets up its rig. It’s about the height of a person and has 18 wires arrayed in a grid. When seawater hits the wires, it generates an electrical contact that reveals how much of the wire is wet. By measuring how the wires get drenched as the wave passes through them, the researchers can calculate the water’s speed and volume.\r\n\r\n“We’ve had a good range of lovely big waves coming over,” says Yelland, who has been looking through the data gathered at high tides in October, November and January. One unexpected factor is that when the waves arrive nearly parallel to the sea wall, the water splashes up in a sideways squirt that can be hard for WireWall to detect.\r\n\r\nRising tide\r\nEventually, the researchers aim to use the data to help improve oceanographic models and other tools, such as the European-led industry guide on overtopping known as EurOtop. Brown has already spoken to officials about taking WireWall elsewhere. One option is the Fylde peninsula in Lancashire where there are three new sea walls, each with a slightly different design at which WireWall could compare sloshing.\r\n\r\n“We’d like to be able to go anywhere,” says Brown. In Australia, ecologists Rebecca Morris and Beth Strain of the University of Melbourne plan to use WireWall to compare flooding that breaches sea walls with flooding over natural coastal defences such as mangrove forests. In Norway, researchers may use WireWall to study how winds blowing across reservoirs can push water over the tops of dams and destabilize them, says Fjóla Gudrún Sigtryggsdóttir, a civil engineer at the Norwegian University of Science and Technology in Trondheim.\r\n\r\nWireWall could become even more relevant as sea levels continue to rise, increasing the risk of waves breaching walls. In the United Kingdom, coastal planners are required to take the effects of sea-level rise into account when building new sea defences. At Crosby, sea level is rising by 1.6 millimetres per year.', 5, '2019-04-03 15:37:35', 28);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, 'Экономика '),
(2, 'Спорт'),
(4, 'Технологии'),
(5, 'Law of nature'),
(6, 'Безопасность'),
(7, 'Разное'),
(8, 'FUTURE');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pubdate` datetime NOT NULL,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `nickname`, `email`, `text`, `pubdate`, `articles_id`) VALUES
(1, 'Micola ', 'Xmara', 'captain_super@mail.ru', 'Мир стремительно меняется', '2019-03-24 14:03:04', 2),
(2, 'Alexandr', 'Malaga', 'soam@tut.by', 'Интересная статья!!!', '2019-03-27 08:12:32', 3),
(5, 'Bird', 'angry_bird', 'angry_bird@gmail.com', 'Статья отстой', '2019-03-26 14:03:04', 7),
(6, 'Rodrigo', 'Smith', 'andrey@gmail.com', 'LOL', '2019-03-27 11:12:32', 10),
(7, 'Jhon', 'Smith', 'jon@gmail.com', 'Cool article! It was realy nice. For sure', '2019-03-27 08:12:32', 10),
(8, 'Andry', 'fully', 'andry@gmail.com', 'Офигенный релиз:) ', '2019-03-24 14:03:04', 1),
(9, 'Sergey', 'Cap', 'email@biz.io', 'testovi kommentariy!!!!!', '2019-03-27 22:48:51', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'cap ', '1234');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
