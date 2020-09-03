-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 03 2020 г., 22:02
-- Версия сервера: 10.4.13-MariaDB
-- Версия PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `school`
--

-- --------------------------------------------------------

--
-- Структура таблицы `childe`
--

CREATE TABLE `childe` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `childe`
--

INSERT INTO `childe` (`ID`, `FirstName`, `LastName`) VALUES
(1, 'Armen', 'Arakelyan'),
(2, 'Zara', 'Manasyan'),
(3, 'Sirun', 'Papoyan'),
(4, 'Anahit', 'Lalabekyan'),
(5, 'Poxos', 'Poxosyan'),
(6, 'Sargis', 'Sargsyan'),
(7, 'Sargis', 'Sargsyan'),
(8, 'Lala', 'Martirosyan'),
(9, 'Sargis', 'Sargsyan'),
(10, 'Samson', 'Simonyan'),
(11, 'Sargis', 'Sargsyan'),
(12, 'Kirakos', 'Kirakosyan'),
(13, 'Sargis', 'Sargsyan');

-- --------------------------------------------------------

--
-- Структура таблицы `firstclass`
--

CREATE TABLE `firstclass` (
  `ID` int(11) NOT NULL,
  `Childe_id` int(11) DEFAULT NULL,
  `Grades` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `firstclass`
--

INSERT INTO `firstclass` (`ID`, `Childe_id`, `Grades`) VALUES
(1, 1, 9),
(2, 5, 7),
(3, 3, 8),
(4, 2, 5),
(5, 4, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `schedul`
--

CREATE TABLE `schedul` (
  `ID` int(11) NOT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `Monday` varchar(10) DEFAULT NULL,
  `Tuesday` varchar(10) DEFAULT NULL,
  `Wednesday` varchar(10) DEFAULT NULL,
  `Thursday` varchar(10) DEFAULT NULL,
  `Fridey` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `schedul`
--

INSERT INTO `schedul` (`ID`, `Class`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Fridey`) VALUES
(1, 'FirstClass', '1', '2', '4', '3', NULL),
(2, 'SecondClass', '2', '4', '3', '1', '4');

-- --------------------------------------------------------

--
-- Структура таблицы `secondclass`
--

CREATE TABLE `secondclass` (
  `ID` int(11) NOT NULL,
  `Childe_id` int(11) DEFAULT NULL,
  `Grades` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `secondclass`
--

INSERT INTO `secondclass` (`ID`, `Childe_id`, `Grades`) VALUES
(1, 7, 9),
(2, 8, 8),
(3, 12, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `Subject time:` int(100) DEFAULT NULL,
  `teacher_info_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`ID`, `Name`, `Subject`, `Subject time:`, `teacher_info_id`) VALUES
(1, 'Anahit Martirosyan', 'Armenian ', 120, 1),
(2, 'Marine Asatryan', 'biology', 70, NULL),
(3, 'Karine Poxosyan', 'English', 80, NULL),
(4, 'Gayane Hayrapetyan', 'mathematika', 100, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `teachersinfo`
--

CREATE TABLE `teachersinfo` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `phone` text NOT NULL,
  `adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `teachersinfo`
--

INSERT INTO `teachersinfo` (`ID`, `Name`, `phone`, `adress`) VALUES
(1, 'Anahit Martirosyan', '099999999', 'Goris'),
(2, 'Marine Asatryan', '0 77 777 777', 'Goris Ankaxutyan 5'),
(3, 'Karine Poxosyan', '066099055', 'Goris Komitas 88');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `childe`
--
ALTER TABLE `childe`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `firstclass`
--
ALTER TABLE `firstclass`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Childe_id` (`Childe_id`);

--
-- Индексы таблицы `schedul`
--
ALTER TABLE `schedul`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `secondclass`
--
ALTER TABLE `secondclass`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Childe_id` (`Childe_id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `teacher_info_id` (`teacher_info_id`);

--
-- Индексы таблицы `teachersinfo`
--
ALTER TABLE `teachersinfo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `childe`
--
ALTER TABLE `childe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `teachersinfo`
--
ALTER TABLE `teachersinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `firstclass`
--
ALTER TABLE `firstclass`
  ADD CONSTRAINT `firstclass_ibfk_1` FOREIGN KEY (`Childe_id`) REFERENCES `childe` (`ID`);

--
-- Ограничения внешнего ключа таблицы `secondclass`
--
ALTER TABLE `secondclass`
  ADD CONSTRAINT `secondclass_ibfk_1` FOREIGN KEY (`Childe_id`) REFERENCES `childe` (`ID`);

--
-- Ограничения внешнего ключа таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`teacher_info_id`) REFERENCES `teachersinfo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
