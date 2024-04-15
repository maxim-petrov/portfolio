SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE=NO_AUTO_VALUE_ON_ZERO */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
CREATE TABLE `e2blogactions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubsetID` int(10) unsigned NOT NULL DEFAULT 1,
  `EntityID` int(10) unsigned NOT NULL DEFAULT 0,
  `Stamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ReadCount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EntityIDStamp` (`EntityID`,`Stamp`),
  KEY `SubsetID` (`SubsetID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `e2BlogActions` DISABLE KEYS;
INSERT INTO `e2BlogActions` VALUES('1', '1', '2', '1711382400', '1'), ('2', '1', '4', '1711382400', '1'), ('3', '1', '6', '1711382400', '1'), ('4', '1', '5', '1711407600', '1'), ('5', '1', '3', '1711465200', '1'), ('6', '1', '1', '1711548000', '1'), ('7', '1', '2', '1711728000', '1');
ALTER TABLE `e2BlogActions` ENABLE KEYS;
CREATE TABLE `e2blogaliases` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubsetID` int(10) unsigned NOT NULL DEFAULT 1,
  `EntityType` varchar(1) NOT NULL DEFAULT '',
  `EntityID` int(10) unsigned NOT NULL DEFAULT 0,
  `Alias` varchar(64) NOT NULL DEFAULT '',
  `Stamp` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SubsetID` (`SubsetID`),
  KEY `Alias` (`Alias`),
  KEY `EntityID` (`EntityID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `e2BlogAliases` DISABLE KEYS;
INSERT INTO `e2BlogAliases` VALUES('1', '1', 'n', '1', 'support-center', '1711728680'), ('2', '1', 'n', '2', 'cloud4rpi', '1711785206'), ('3', '1', 'n', '3', 'localization', '1711784525'), ('4', '1', 'n', '4', 'documentation', '1711783823'), ('5', '1', 'n', '6', 'xaf', '1711784312'), ('6', '1', 'n', '5', 'blazor', '1711487080'), ('7', '1', 't', '1', 'support-center-2', '1711726108'), ('8', '1', 't', '2', 'documentation-2', '1711783824'), ('9', '1', 't', '3', 'xaf-2', '1711784312'), ('10', '1', 't', '4', 'localization-2', '1711784525'), ('11', '1', 't', '5', 'cloud4rpi-2', '1711785206');
ALTER TABLE `e2BlogAliases` ENABLE KEYS;
CREATE TABLE `e2blogcomments` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubsetID` int(10) unsigned NOT NULL DEFAULT 1,
  `NoteID` int(10) unsigned NOT NULL DEFAULT 0,
  `AuthorName` varchar(255) NOT NULL DEFAULT '',
  `AuthorEmail` varchar(255) NOT NULL DEFAULT '',
  `Text` mediumtext DEFAULT NULL,
  `Reply` mediumtext DEFAULT NULL,
  `IsVisible` tinyint(1) NOT NULL DEFAULT 1,
  `IsFavourite` tinyint(1) NOT NULL DEFAULT 0,
  `IsReplyVisible` tinyint(1) NOT NULL DEFAULT 0,
  `IsReplyFavourite` tinyint(1) NOT NULL DEFAULT 0,
  `IsAnswerAware` tinyint(1) NOT NULL DEFAULT 1,
  `IsSubscriber` tinyint(1) NOT NULL DEFAULT 0,
  `IsSpamSuspect` tinyint(1) NOT NULL DEFAULT 0,
  `IsNew` tinyint(1) NOT NULL DEFAULT 0,
  `Stamp` int(10) unsigned NOT NULL DEFAULT 0,
  `LastModified` int(10) unsigned NOT NULL DEFAULT 0,
  `ReplyStamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ReplyLastModified` int(10) unsigned NOT NULL DEFAULT 0,
  `IP` varchar(39) NOT NULL DEFAULT '',
  `IsGIPUsed` tinyint(1) NOT NULL DEFAULT 0,
  `GIP` varchar(15) NOT NULL DEFAULT '',
  `GIPAuthorID` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `SubsetID` (`SubsetID`),
  KEY `NoteID` (`NoteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `e2bloggipssessions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubsetID` int(10) unsigned NOT NULL DEFAULT 1,
  `GIP` varchar(15) NOT NULL DEFAULT '',
  `GIPAuthorID` varchar(64) NOT NULL DEFAULT '',
  `AuthorName` varchar(255) NOT NULL DEFAULT '',
  `AuthorEmail` varchar(255) NOT NULL DEFAULT '',
  `AuthorProfileLink` varchar(255) NOT NULL DEFAULT '',
  `SessionToken` varchar(255) NOT NULL DEFAULT '',
  `Stamp` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SubsetIDGIPGIPAuthorID` (`SubsetID`,`GIP`,`GIPAuthorID`),
  KEY `SubsetID` (`SubsetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `e2blogkeywords` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubsetID` int(10) unsigned NOT NULL DEFAULT 1,
  `Keyword` varchar(255) NOT NULL DEFAULT '',
  `OriginalAlias` varchar(64) NOT NULL DEFAULT '',
  `PageTitle` varchar(255) NOT NULL DEFAULT '',
  `Description` mediumtext DEFAULT NULL,
  `Summary` mediumtext DEFAULT NULL,
  `Uploads` mediumtext DEFAULT NULL,
  `IsVisible` tinyint(1) NOT NULL DEFAULT 1,
  `IsFavourite` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SubsetID` (`SubsetID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `e2BlogKeywords` DISABLE KEYS;
INSERT INTO `e2BlogKeywords` VALUES('1', '1', 'Support Center', 'support-center-2', '', '', '', '', '1', '0'), ('2', '1', 'Documentation', 'documentation-2', '', '', '', '', '1', '0'), ('3', '1', 'XAF', 'xaf-2', '', '', '', '', '1', '0'), ('4', '1', 'Localization', 'localization-2', '', '', '', '', '1', '0'), ('5', '1', 'Cloud4RPi', 'cloud4rpi-2', '', '', '', '', '1', '0');
ALTER TABLE `e2BlogKeywords` ENABLE KEYS;
CREATE TABLE `e2blognotes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubsetID` int(10) unsigned NOT NULL DEFAULT 1,
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Text` mediumtext DEFAULT NULL,
  `Summary` mediumtext DEFAULT NULL,
  `FormatterID` varchar(32) NOT NULL DEFAULT 'neasden',
  `OriginalAlias` varchar(64) NOT NULL DEFAULT '',
  `Uploads` mediumtext DEFAULT NULL,
  `IsPublished` tinyint(1) NOT NULL DEFAULT 0,
  `IsCommentable` tinyint(1) NOT NULL DEFAULT 0,
  `IsVisible` tinyint(1) NOT NULL DEFAULT 1,
  `IsFavourite` tinyint(1) NOT NULL DEFAULT 0,
  `Stamp` int(10) unsigned NOT NULL DEFAULT 0,
  `LastModified` int(10) unsigned NOT NULL DEFAULT 0,
  `Offset` int(11) NOT NULL DEFAULT 0,
  `IsDST` tinyint(1) NOT NULL DEFAULT 0,
  `IsIndexed` tinyint(1) NOT NULL DEFAULT 0,
  `IsExternal` tinyint(1) NOT NULL DEFAULT 0,
  `ReadCount` int(10) unsigned NOT NULL DEFAULT 0,
  `SourceID` int(10) unsigned NOT NULL DEFAULT 0,
  `SourceNoteID` int(10) unsigned NOT NULL DEFAULT 0,
  `SourceNoteURL` varchar(255) NOT NULL DEFAULT '',
  `SourceNoteJSONURL` varchar(255) NOT NULL DEFAULT '',
  `SourceNoteData` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SubsetID` (`SubsetID`),
  KEY `Stamp` (`Stamp`),
  KEY `SourceID` (`SourceID`),
  KEY `SourceNoteID` (`SourceNoteID`),
  FULLTEXT KEY `TitleText` (`Title`,`Text`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `e2BlogNotes` DISABLE KEYS;
INSERT INTO `e2BlogNotes` VALUES('1', '1', 'Support Center', 'Система поддержки пользователей, которая включает различные информационные ресурсы: вопросы от пользователей, статьи в базе знаний и истории версий.\r\n\r\nЕжедневно в Support Center создаются сотни новых вопросов и на них отвечают десятки саппорт-инженеров. За годы работы старый интерфейс устарел как внешне, так и с точки зрения удобства и функциональности. Пришла задача полностью переработать платформу, с учётом всех бизнес-требований.\r\n\r\n# Вводная\r\n\r\nСистема состоит из трёх основных порталов:\r\n\r\n- Клиентский портал\r\n- Внутренний портал для сотрудников\r\n- Админ-панель\r\n\r\nКаждым порталом пользуется свой сегмент пользователей. Клиенты компании ожидают простой и понятный интерфейс . В то время как саппорт-инженеры привыкли к определенным сценариям, которые тоже нужно было сохранить.\r\n\r\n# Клиентский портал\r\n\r\nНа этот ресурс были задействованы основные силы. Клиентский портал даёт возможность клиентам задавать вопросы технического характера и получать на них ответы. \r\n\r\nПеред редизайном ставились следующие задачи:\r\n\r\n- **Снизить нагрузку на саппорт-инженеров.** Помочь пользователям находить ответы самостоятельно, если на вопрос уже отвечали ранее или решение описано в документации.\r\n- **Улучшить UX.** Накопился список проблем, которые нужно было решать:\r\n    - **Пользователи выбирают неверный продукт при создании вопроса.** DevExpress разрабатывает и поддерживает десятки продуктов. У каждого продукта могут быть разные платформы и версии. Иногда важно знать, какая ОС установлена у пользователя, каким IDE он пользуется. Нужно было сделать так, чтобы у пользователя не возникали проблемы при выборе нужных значений. Помочь ему на этом пути.\r\n    - **Возникают проблемы при форматировании текста.** Пользователи приходят в поддержку с техническими проблемами. Описание проблемы содержит куски кода или целые архивы с проектами. В старой версии сайта пользователи путались в текстовом редакторе и отправляли не отформатированные куски куда, которые сливались с обычным текстом. Также, пользователи не всегда понимали как аттачить файлы. Всё это приводило к дополнительной нагрузке на саппорт-инженеров.\r\n    - **Пользователи не замечают уведомления об ответах в их тикете.** Проблема касалась как веб-интерфейса, так и уведомлений приходящих пользователю на почту. Пользователи либо не замечали уведомления, либо не понимали к чему они относятся, либо ранее отключали уведомления и забывали об этом. В связи с этим, среднее время на решение таких тикетов значительно увеличивалось.\r\n    - **Клиенты из одной и той же компании не видят вопросы друг друга.** Большинство клиентов предпочитает оставлять свои вопросы приватно. Чтобы их могли видеть только саппорт-инженеры. Из-за этого возникала проблема, что вопросы становились приватными полностью и их не могли видеть даже сотрудники одной и той же компании с разных аккаунтов.\r\n    - **Неудобные фильтры.** Пользователи, что на странице со списком публичных тикетов невозможно ничего найти. Фильтров мало, а то, что есть не всегда работает очевидным образом.\r\n- **Переосмыслить встроенный инструмент “Version History”.**\r\n- **Улучшить аналитику.**\r\n- **Освежить внешний вид.**\r\n\r\n## Подготовка к работе\r\n\r\nПеред началом работы над редизайном была проведена подготовительная работы. Подготовлен общий план работы и проведены встречи со всеми заинтересованными лицами. Был подготовлен итоговый бриф проекта. \r\n\r\nЧасть работ, которые были проведены на этом этапе:\r\n\r\n- **Анализ текущего дизайна.** UX-тестирование текущего сайта, поиск проблем.\r\n- **Ресёрч конкурентов.** Изучение как прямых конкурентов, так и решений крупных платформ. Например, Zendesk, Freshdesk, Zoho Desk.\r\n- **Сбор и анализ существующего фидбека.** За годы работы, накопилось большое количество тикетов, комментарием и другой обратной связи касаемо работы портала. Была проведена большая работу по сбору всей это информации в один документ, её анализу и приоритизации.\r\n- **Сбор информации от саппорт-инженеров.** Инженеры поддержки активнее всего общаются с пользователями и знают детали и проблемы, которые могут быть неизвестны и неочевидны другим членам команды.\r\n- **Изучение текущих данных аналитики и список того, что хотим собирать ещё в новом дизайне.** Для работы с данными использовались:  Google Analytics (+Google Tag Manager), Matomo, внутренние инструменты.\r\n- **Сбор требований от заказчиков и всех заинтересованных лиц.**\r\n- **Подготовка брифа.** Описание проблем, целей и задач. Развёрнутый ответ на вопрос, что мы будем считать успешным редизайном.\r\n\r\n## Процесс\r\n\r\nРабота над сайтом строилась 2-4 недельными спринтами. В конце каждого спринта проводились синхронизационные встречи с заказчиками. \r\n\r\nВ начале работы над дизайном была согласована общая концепция. Отрисованы низко детализированные прототипы с решением основных UX проблем. Найден общий подход к внешнему виду.  \r\n\r\nЧтобы работа над новым дизайном была эффективной и обратная связь поступала как можно быстрее был принят рад мер:\r\n\r\n- Продукт менеджер продукта показывал прототипы и просто картинки небольшой выборке самых активных и заинтересованных пользователей саппорт-центра. Благодаря этому получалось очень быстро собрать много полезной информации, которая помогала намного быстрее замечать точки роста.\r\n- Тесное общение с разработчиками. Так дизайн значительно обгонял разработку, нужно было сразу учитывать технические ограничения. Для этого проводились постоянные встречи между разработчикам, заказчиками и дизайнером. Так мы оценивали техническую сложность каждой фичи и на основе этого принимали решение, будем мы брать её в работу или нет.\r\n- На этапе, когда появилась первая работающая версия сайта, его стали тестировать сотрудники. В первую очередь, к тестированию подключались саппорт-инженеры. На этом этапе было собрано большое количество фидбека как по техническим багам, визуальным багам, так и просто по неудачным UX-решениям.\r\n- На следующем этапе снова к фидбеку снова были подключены активные клиенты. Которые были готовы дать развёрнутый фидбек.\r\n- На одном из финальных этапов сайт стал доступен для всех пользователей, но в виде бета-версии. При этом, каждый пользователь мог вернуться к старой версии сайта. Со временем, пользователей вернувшихся на старый сайт становилось меньше. Также, мы старались собирать фидбек от таких пользователей. Чтобы понять, почему они вернулись на старую версию сайта.\r\n- К новой версии сайта была прикручена продвинутая аналитика.\r\n\r\n## Примеры реализации\r\n\r\n### Релевантные подсказки при создании тикета\r\n\r\n### Подсказки при заполнении деталей, на основе подписки пользователя и прошлых тикетов\r\n\r\n### Упрощена навигация по дискуссии с ветвистой иерархией\r\n\r\n### Обновлён текстовый редактор\r\n\r\n### Обновлены инструменты фильтра на странице со списком тикетов\r\n\r\n### Обновлены почтовые уведомлению, улучшения подписка на уведомления на самом сайте\r\n\r\n# Внутренний портал и админ-панель\r\n\r\nОтдельной крупной задачей была необходимость сделать внутренний портал для сотрудников. Главным вызовом было задача учесть флоу саппорт-инженеров из разных команд. Ингода оно сильно отличалось и нужно было найти решения, которые устроят всех.\r\n\r\nДля этого проводилось множество сложных встреч с саппорт-инженерами из разных команд и топ-саппортом. По каким-то сценариям приходилось идти на компромиссы, по каким-то — выбирать один вариант и убеждать в правильности этого варианта остальных.\r\n\r\nВ результате, судя по опросам и личным разговорам, большая часть сотрудников осталась довольна новой системой.\r\n\r\nТакже, для более гибкой работы и настройки системы под текущие нужды бизнеса была спроектирована админ-панель, где можно точечно настроить различные параметры системы.\r\n\r\nТак как решения внутренние, вдаваться в подробности и показывать скриншоты я не могу.  \r\n\r\n# Результаты\r\n\r\nВ итоге, полный переход на новую версию получился безболезненным. На каждой итерации выявлялись проблемные места и не учтённые сценарий. Большая часть из них решалась, от небольшой части осознанно отказывались.\r\n\r\nСтарая версия сайта постепенно была отключена, когда количество её пользователей стало совсем небольшим.\r\n\r\nОбщая оценка редизайна была оценена как успешная. Как со стороны клиентов, так и со стороны сотрудников. Поставленные перед редизайном цели были достигнуты:\r\n\r\n- **Уменьшилась нагрузка на саппорт-инженеров.**\r\n    - Пользователи стали чаще находить решения самостоятельно: улучшен движок поиска, предлагаются релевантные ссылки при создании тикета, улучшена фильтрация.\r\n    - Пользователи стали реже ошибаться с выбором платформы/продукта и других деталей при создании тикета.\r\n    - Во внутреннем портале появились инструменты, помогающие саппорт-инженерам быстрее отвечать на тикеты, ответ на которые уже давался ранее.\r\n- **Не отформатированные тикеты появляются гораздо реже.** Решилась проблема с тем, что пользователи не понимали, как отправлять аттачи.\r\n- **Уменьшилось количество проблем, когда пользователи не получают уведомления вовремя.**\r\n    - В настройках уведомлений появился отдельный чекбокс, для получения уведомлений от саппорт-центра (раньше был единый чекбокс, для всех почтовых рассылок).\r\n    - Даже если пользователь отключил уведомления от таких рассылок, то саппорт-инженер будет об этом знать. И, если у пользователя возникают с этим проблемы, подсказать варианты решения.\r\n    - Сами почтовые уведомления стали понятнее, появилась возможность подключить браузерные уведомления.\r\n    - Появилась возможность подписать на рассылку на любой тикет со страницы этого тикета.\r\n- **Более точечно настроена аналитика.**\r\n    - Саппорт-инженер теперь может видеть карточку пользователя с историей посещений тикетов и документов в документации. Так инженер поддержки сразу может понять, какие ссылки есть смысл советовать, а какие — нет, так как пользователь их уже посещал.\r\n    - Добавлены ивенты на целевые действия.\r\n    - Созданный внутренние дашборды с анализом различных данных, необходимых для оценки поступаемого  количества тикетов и оценки эффективности саппорта.\r\n- **Поиск по тикетам стал гибче и проще.**\r\n    - Были докручены мета-теги, чтобы тикеты лучше искались поисковиками.\r\n    - Переосмыслены фильтры, добавлены готовые пресеты и возможность подписаться на созданный фильтр.\r\n    - Оптимизирована внутренняя страница поиска.\r\n- **Сделана мобильная версия клиентского портала.**', '', 'neasden', 'support-center', 'a:0:{}', '1', '0', '1', '1', '1711383800', '1711728680', '14400', '0', '0', '0', '1', '0', '0', '', '', ''), ('2', '1', 'Cloud4RPi', 'Cloud4RPi — это платформа для интернета вещей (IoT), предлагает разработчикам инструменты для быстрого создания и управления IoT устройствами. Поддерживает множество аппаратных платформ, включая Arduino, Raspberry Pi, ESP8266, ESP32 и другие.\r\n\r\nВ рамках работы на проект был разработан интерфейс и сценарии работы с панелью управления IoT девайсами. ', '', 'neasden', 'cloud4rpi', 'a:0:{}', '1', '0', '1', '0', '1711383857', '1711785206', '14400', '0', '0', '0', '2', '0', '0', '', '', ''), ('3', '1', 'Localization', 'Обновлен устаревший интерфейс. В рамках улучшений было изучено, как пользователи пользуются сервисом. И уже на основе этих данных вносились корректировки в интерфейс. ', '', 'neasden', 'localization', 'a:0:{}', '1', '0', '1', '0', '1711383872', '1711784525', '14400', '0', '0', '0', '1', '0', '0', '', '', '');
INSERT INTO `e2BlogNotes` VALUES('4', '1', 'Documentation', 'DevExpress Documentation — одна из самый объемных документации на рынке. Содержит несколько сотен тысяч статей и АПИ. Внутри для её работы создана целая экосистема, включающая в себя множество отдельных компонентов.\r\n\r\n# Вводная\r\n\r\nДолгое время единой системы документации не было. Всё состояло из отдельных проектов и отдавалось пользователям в формате довольно простых HTML файлов, либо в CHM формате.\r\n\r\nС развитием продуктовой линейки и увеличение штата технических писателей такой подход стал приносить неудобства как для сотрудников, так и для пользователей.\r\n\r\nУчитывай количество и объем документов, было принято решение сделать собственную систему документации.\r\n\r\n# Задачи\r\n\r\nСистема документации состоит из различных функциональных компонентов. При разработке дизайна нужно было учесть следующие факторы:\r\n\r\n- **Огромное количество написанных топиков.** Разные топики были написаны разными людьми, в разное время. Поэтому, сильно отличались по структуре. Нужно было найти такой подход к стилям, чтобы старые документы не ломали внешний вид страниц.\r\n- **Документацию читают с разных устройств.** Нужно было сделать документацию такой, чтобы её можно было читать на любом экране.\r\n- **Сделать навигацию по документу удобной.** Документы могут быть большими и сложными. Нужно сделать так, чтобы пользователю было удобно по ним навигироваться.\r\n- **Навигацию по проекту должна быть удобно.** Структура каждого проекта документации древовидна, один проект может быть вложен в другой и так далее. Нужно сделать так, чтобы пользователь понимал, на каком уровне он находится и мог легко навигироваться между документами.\r\n- **Сделать разводящую страницу по проектам.** Новая система документации собирает все проекты в рамках одного сайта. Важно было сделать страницу, где пользователь может выбрать нужный ему проект.\r\n- **Содержимое документа может варьировать от версии продукта и его платформы.**\r\n- **Совместно с техническими писателями подготовить гайдлайны по оформлению топиков.**\r\n- **Учесть оффлайн документацию.** Часть пользователей, в свете специфики бизнеса, используют активно оффлайн версию документации. А именно, CHM. Поэтому, нужно было подготовить стили для оффлайн документации. Учитывая, что CHM поддерживает CSS уровня Internet Explorer 7 (и то не всегда) — это было очень непростой задачей.\r\n- **Поддержать интеграцию с саппорт-центром.** Сегмент пользователей читающих документацию и создающих тикеты в саппорт-центре тесно связан. Важно было найти такое решение, чтобы пользователь имел возможность создать тикет прямо из документации, если ему не понятен какой-то из топиков. И наоборот, если ссылку на топик дал сотрудник саппорт-центра, то нужно иметь возможность дополнительно уточнить у пользователя, помог ли ему этот топик.\r\n- **Сделать документацию доступной.** Сайт документации должен удовлетворять требования A11Y, чтобы им было удобно пользоваться всем пользователям.\r\n\r\n# Результат\r\n\r\nНовая система документации получила положительный фидбек как со стороны пользователей, так и со стороны технических писателей. Основная часть задач была решения в рамках основной работы над проектом, многие дополнительные фичи — в рамках доработок по проекту.\r\n\r\nКроме работы непосредственно над дизайном, я внёс большой вклад во фронденд составляющую сайта:\r\n\r\n- Написал несколько функциональных фич.\r\n- Обновил семантику сайта, для решения проблем связанных с доступностью.\r\n- Активно работал со стилям в коде.\r\n\r\n## Стили, которые работают для разных топиков\r\n\r\n## Доступность со всех устройств\r\n\r\n## Навигация по документу\r\n\r\n## Разводящая страница\r\n\r\n## Версионность\r\n\r\n## Интеграция с саппорт-центром\r\n\r\n## Оффлайн документация\r\n\r\n## Доступность', '', 'neasden', 'documentation', 'a:0:{}', '1', '0', '1', '1', '1711383886', '1711783823', '14400', '0', '0', '0', '1', '0', '0', '', '', ''), ('5', '1', 'Дизайн-система Blazor', 'DevExpress Blazor — это набор компонентов пользовательского интерфейса. Продукт активно используется в приложениях на платформе Blazor и предлагают мощный набор компонентов: таблицы данных, календари и планировщики, выпадающие списки, диалоговые окна и многие другие. \r\n\r\nЗадача — переосмыслить и создать дизайн-систему в Figma на основе существующих артефактов и наработок.\r\n\r\nempty-image.jpg\r\n<img src=\"/images/blog/1x/blazor-1.png\" srcset=\"/images/blog/1x/blazor-1.png 1x, /images/blog/2x/blazor-1@2x.png 2x\" class=\"img-fluid\">\r\n\r\n# Вводные\r\n\r\nПо мере развития продукта, стало увеличиваться количество выпускаемых компонентов и их сложность. Предыдущий подход, когда дизайнер рисовал отдельный макет под каждую задачу стал приносить заметные неудобства для команды. Разработка начала сильно обгонять дизайн и многие решения по краевым сценариям стали принимать сами разработчки. Дизайнеру тратил много времени на поиск визуальных и UX багов на поздних этапах разработки компонента или фичи.\r\n\r\nОтдельной проблемой была сложность каждого компонента:\r\n- **Разные темы**. В разных темах компонент не только меняет цвет, но и начинает обладать другими визуальными свойствами.\r\n- **Несколько размеров**. Каждый компонент линейки представлен в трёх размерах. \r\n- **Дополнительные стили**. Большой набор стилистических вариантов для компонентов-атомов.\r\n\r\nНапример, одна только кнопка состоит из 150 вариантов компонента:\r\n\r\nempty-image.jpg\r\n<img src=\"/images/blog/1x/blazor-2.png\" srcset=\"/images/blog/1x/blazor-2.png 1x, /images/blog/2x/blazor-2@2x.png 2x\" class=\"img-fluid\">\r\n\r\nБыло принято решение менять подход — разработать стандарты, правила постановки задач и проектирования.\r\n\r\n# Цели\r\n\r\nКоманда выделила ресурсы на внедрение полноценной дизайн-системы и поставил перед ней решение следующих проблем:\r\n1. **Оптимизировать работу команды на этапах дизайна и разработки.**\r\nРаньше, эти процессы были довольно хаотичны. Дизайнер брал в задачу в работу и изображал примерную реализацию компонента. Многие краевые сценарии не учитывались. Какие-то решения в процессе разработки менялись на ходу. В итоге, разработка затягивалась, фичи резались и итоговый результат сильно отличался от исходной картинки.\r\n2. **Автоматизация и консистентность**.\r\nБольшой размер и сложность компонентов сильно усложняли внесение любых изменений в дизайн. Даже небольшие стилистические изменения в базовом компоненте типа кнопки приводили к огромному количеству работы со стороны дизайнера. Так нужно было учесть разные темы, размеры и стили.\r\n3. **Консистентность цвета**.\r\nОтдельно стоит отметить проблему с цветом. Многие цвета компонентов в коде рассчитывались с помощью миксинов. Это приводило ко многим проблемам, в том числе, проблемам с контрастностью.\r\n4. **Доступность**\r\nПользователи продукта стали всё чаще интересоваться, насколько компоненты доступны для разных категорий пользователей. Нужно было сформировать подход, как дизайнер должен заказывать грамотные A11Y на этапе проектирования дизайна.\r\n5. **Централизация знаний**\r\nМногие знания о тех или иных дизайн-решениях нигде не фиксировались. Единственным источником знания были участвующие в работе на фичей члены команды.\r\n6. **UI Kit**\r\nЧасть пользователей жаловалась на отсутствие UI кита. Плюс, у конкурентов он уже давно был.\r\n\r\n# Переработка компонентов в Figma с нуля\r\n\r\nДизайн существующих компонентов полностью повторяет функционал кодовой реализации. Учтены все редкие сценарии и пограничные состояния компонентов. Перед отрисовкой изучается API компонента и все сценарии его использования.\r\n\r\n## Пример реализации компонента Grid\r\n\r\nКомпонент Grid является одним из больших и одним из самых популярным компонентов в линейке Blazor. Grid представляет собой компонент для отображения данных в табличном формате, который включает в себя множество функций для управления данными, их представления и настройки, таких как фильтрация, группировка, пагинация, сортировка и многое другое.\r\n\r\nОсновную сложность представляет его размер:\r\n\r\nТак как разные пользователи использую грид по-разному, то компонент получается достаточно гибким по функционалу и возможностям. Всё это отражено в дизайне.\r\n\r\nДля того, чтобы отрисовать такой в Figma пришлось сначала изучить и собрать файл со скриншотами всех состояний компонента. Для этого были изучены демо стенды компоненты, описывающие его стили и API.\r\n\r\nВ итоге, реализованный макет компонента помогает быстрее решать новые задачи и прикидывать прототипы с разными сценариями использования. \r\n\r\n# Разработка новых компонентов\r\n\r\nРазработка дизайна новых компонентов включает в себя исследование решений на рынке, лучшие практики, клавиатурную навигацию, идея для демо стендов, и обсуждение требований с ПМом. В зависимости от задачи, количество пунктов может быть больше или меньше.\r\n\r\n## Пример реализации компонента TreeList\r\n\r\nКомпонент TreeList предназначен для отображения иерархическими данными в виде расширенного списка, который сочетает в себе функциональные возможности древовидной структуры (TreeView) и таблицы (Grid). Это позволяет пользователям легко просматривать, сортировать, фильтровать и редактировать иерархические данные с возможностью разворачивания и сворачивания уровней вложенности данных для удобства восприятия.\r\n\r\nКомпонент TreeList часто используется в приложениях для управления содержимым, файловыми системами, а также в любых приложениях, где требуется эффективная работа с иерархическими данными.\r\n\r\nПеред началом отрисовки компонента был произведен ресёрч реализации решений у других вендоров. Собран список идей и примерные способы реализации. В конце каждого этапа происходили синхрозиционны встречи с ПМом, разработчиками и другими заинтересованными лицами.\r\n\r\n# Токенизация\r\n\r\nКаждый компонент представлен в разных темах. Руками отрисовать каждый компонент в каждой теме очень дорого и ресурсозатратно. Плюс, цена ошибки в таком случае очень высока.\r\n\r\nБыло принято решение использовать дизайн-токены:\r\n- Чтобы быстро обновлять стили компонента под любую тему.\r\n- Гарантировать консистентность решений.\r\n- Использовать как мостик между дизайном и разработкой.\r\n\r\nБыла проведена большая работа над созданием архитектуры и структуры дизайн-токенов:\r\n\r\nК сожалению, для создания грамотной архитектуры, в данном случае, встроенные Figma Variables не подошли. Для работы с токсинами использует Tokens Studio.\r\n\r\nКаждый компонент имеет полное покрытие токенами. Это касается как цветов, так других стилей: бордер, авто-лейаут, тени. \r\n\r\nВ итоге, любой компонент в Fimga легко протестировать с другими стилистическими настройками. А разработчики могут использовать токены для использованиях их значений в файлах стилей.\r\n\r\n# Документирование\r\n\r\nДокументирование покрывается несколькими факторами:\r\n- Сама реализации компонентов в Figma\r\n- Дизайн-токены\r\n- Внутренняя документация\r\n\r\nВнутренняя документация представляет собой правил и рекомендаций: \r\n- правила оформления\r\n- правила работы с дизайн-токенами\r\n- требования по иконкам\r\n- работа с цветовой палитрой\r\n\r\nТут же собраны результаты ресёрчей по тем или иным задач. А также, приятные решения по ним. Это помогает всем членам команды понимать, куда нужно обращаться в первую очередь чтобы найти такую информацию.\r\n\r\n# UI Kit\r\n\r\nРезультатом работы над дизайн-системой послужил выпуск UI кита в Figma. Комьюнити положительно оценило выпуск кита, особенно те пользователи которые просили об этом раньше.  \r\n\r\n# Результаты \r\n\r\nКак результат, получилось собрать крепкий каркас дизайн-системы, которая помогает дизайнерам намного быстрее решать задачи и дальше развивать UX/UI компонентов, а разработчикам использовать дизайн систему как единый источник знаний.', '', 'neasden', 'blazor', 'a:6:{i:0;s:15:\"blazor-1@2x.jpg\";i:1;s:15:\"blazor-2@2x.jpg\";i:2;s:33:\"/images/1x/maxim-petrov-photo.png\";i:3;s:28:\"/images/blog/1x/blazor-2.png\";i:4;s:28:\"/images/blog/1x/blazor-1.png\";i:5;s:15:\"empty-image.jpg\";}', '1', '0', '1', '1', '1711384202', '1711487080', '14400', '0', '0', '0', '1', '0', '0', '', '', '');
INSERT INTO `e2BlogNotes` VALUES('6', '1', 'XAF', 'DevExpress XAF — это фреймворк для создания бизнес-приложений. С его помощью можно делать как десктоп, так веб-приложения. Помогает разработчикам сосредоточится на бизнес-логике, а не на деталях реализации интерфейса или архитектуры приложения.\r\n\r\nСо своей стороны, занимался проектированием, развитием и поддержкой UX/UI приложения в связке с ПМом. Разработкой новых фич, улучшение существующих, работой с обратной связью от пользователей.', '', 'neasden', 'xaf', 'a:0:{}', '1', '0', '1', '1', '1711383936', '1711784312', '14400', '0', '0', '0', '1', '0', '0', '', '', '');
ALTER TABLE `e2BlogNotes` ENABLE KEYS;
CREATE TABLE `e2blognoteskeywords` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubsetID` int(10) unsigned NOT NULL DEFAULT 1,
  `NoteID` int(10) unsigned NOT NULL DEFAULT 0,
  `KeywordID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SubsetID` (`SubsetID`),
  KEY `NoteID` (`NoteID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `e2BlogNotesKeywords` DISABLE KEYS;
INSERT INTO `e2BlogNotesKeywords` VALUES('1', '1', '1', '1'), ('2', '1', '4', '2'), ('3', '1', '6', '3'), ('4', '1', '3', '4'), ('5', '1', '2', '5');
ALTER TABLE `e2BlogNotesKeywords` ENABLE KEYS;
CREATE TABLE `e2blogsources` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubsetID` int(10) unsigned NOT NULL DEFAULT 1,
  `TrueID` int(10) unsigned NOT NULL DEFAULT 0,
  `Title` varchar(255) NOT NULL DEFAULT '',
  `AuthorName` varchar(255) NOT NULL DEFAULT '',
  `URL` varchar(255) NOT NULL DEFAULT '',
  `PictureURL` varchar(255) NOT NULL DEFAULT '',
  `IsWhiteListed` tinyint(1) NOT NULL DEFAULT 0,
  `IsTrusted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SubsetID` (`SubsetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

COMMIT;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;