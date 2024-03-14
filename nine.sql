-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 12 2024 г., 13:23
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nine`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Структура таблицы `katalog`
--

CREATE TABLE `katalog` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchases` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `katalog`
--

INSERT INTO `katalog` (`id`, `name`, `img`, `price`, `info`, `rating`, `purchases`) VALUES
(1, 'Casio GA-2200BB-1AER', '1kart.jpg', '17 990 ₽', 'tovar1.php', '5/5', 1),
(2, 'Diesel DZ4318', '2kart.jpg', '39 190 ₽', 'tovar2.php', '4/5', 14),
(3, 'Earnshaw ES-8006-03', '3kart.jpg', '19 990 ₽', 'tovar3.php', '3/5', 15),
(4, 'Casio GA-2100-1AER', '4kart.jpg', '16 990 ₽', 'tovar4.php', '2/5', 33),
(5, 'Casio MTS-100L-1AVEF', '5kart.jpg', '8 690 ₽', 'tovar5.php', '1/5', 19),
(6, 'Casio MTP-1303PL-1A', '6kart.jpg', '5 590 ₽', '', '', 12),
(7, 'Casio MTP-1314PL-8A', '7kart.jpg', '5 990 ₽', '', '', 3),
(8, 'Casio EFR-526L-7A', '8kart.jpg', '14 990 ₽', '', '', 15),
(9, 'Aviator Airacobra P45 Chrono V.2.25.5.174.4', '9kart.jpg', '52 000 ₽', '', '', 11),
(10, 'Swiss Military Hanowa 06-5332.04.003', '10kart.jpg', '44 400 ₽', '', '', 23),
(11, 'Casio EFR-552D-1A2', '11kart.jpg', '13 990 ₽', '', '', 34),
(12, 'Aviator Mig-29 Chrono M.2.30.0.219.6', '12kart.jpg', '75 000 ₽', '', '', 21),
(13, 'Diesel DZ4360', '13kart.jpg', '24 990 ₽', '', '', 28),
(14, 'Emporio Armani AR1828', '14kart.jpg', '32 990 ₽', '', '', 2),
(15, 'Armani Exchange AX2101', '15kart.jpg', '21 990 ₽', '', '', 31),
(16, 'Jacques Lemans 1-1117VN', '16kart.jpg', '23 650 ₽', '', '', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `otziv`
--

CREATE TABLE `otziv` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slova` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `otziv`
--

INSERT INTO `otziv` (`id`, `name`, `slova`, `estimation`) VALUES
(6, 'Егор', 'Спасибо огромное за дизайн, спасибо за вовлеченность, грамотные советы и высокий сервис. Для клиентов это очень важно и ценно. ', 5),
(7, 'Матвей', 'Хороший ассортимент, цены нормальные.', 5),
(8, 'Ирина', 'Обожаю этот магазин за качество, быстрое и удобное обслуживание, за понятную схему работы всех структур, за доступные цены, за уют. ', 4),
(9, 'Александр', 'Магазин просто огонь!', 4),
(10, 'Елизавета', 'Приходишь, смотришь, выбираешь. На все вопросы отвечают заинтересованно, подробно.', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `product_id`, `quantity`, `status`, `product_code`, `timestamp`) VALUES
(116, 9, 5, 1, 'В обработке', '52180334', '2024-03-04 19:32:46'),
(117, 9, 2, 1, 'В обработке', '61409490', '2024-03-04 19:32:48'),
(118, 9, 5, 1, 'В обработке', '55134658', '2024-03-04 19:32:58'),
(119, 9, 5, 1, 'В обработке', '98996020', '2024-03-04 19:33:01'),
(120, 9, 2, 1, 'В обработке', '45226542', '2024-03-04 19:33:01'),
(121, 9, 2, 1, 'В обработке', '90187607', '2024-03-05 15:00:21'),
(122, 8, 2, 1, 'В обработке', '70751957', '2024-03-06 06:17:01'),
(123, 8, 2, 1, 'В обработке', '44733977', '2024-03-06 06:17:36'),
(124, 8, 2, 1, 'В обработке', '57524406', '2024-03-06 06:17:43'),
(125, 8, 4, 1, 'В обработке', '75211381', '2024-03-06 06:17:43'),
(126, 8, 2, 1, 'В обработке', '70530327', '2024-03-06 06:17:52'),
(127, 8, 4, 1, 'В обработке', '29065884', '2024-03-06 06:17:52'),
(128, 8, 2, 1, 'В обработке', '44745144', '2024-03-06 06:17:59'),
(129, 8, 4, 1, 'В обработке', '75250940', '2024-03-06 06:17:59'),
(130, 8, 2, 1, 'В обработке', '12082181', '2024-03-06 06:18:06'),
(131, 8, 4, 1, 'В обработке', '88361050', '2024-03-06 06:18:06'),
(132, 8, 2, 1, 'В обработке', '07808406', '2024-03-06 06:36:46'),
(133, 10, 15, 1, 'В обработке', '76279282', '2024-03-12 10:07:43'),
(134, 10, 15, 1, 'В обработке', '87845798', '2024-03-12 10:07:50');

-- --------------------------------------------------------

--
-- Структура таблицы `sotrud`
--

CREATE TABLE `sotrud` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sotrud`
--

INSERT INTO `sotrud` (`id`, `username`, `password`) VALUES
(1, 'sasha', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `age`, `city`) VALUES
(8, 'vlad@gmail.com', '$2y$10$dGAAPVAiJS4kysq5kpVJmuE6cuMAfvFb7HgY6/jLOZcZ0pihpH2aS', 'vlad@gmail.com', 'Старов Александр Иванович', 20, 'Челябинск'),
(9, 'sasok', '$2y$10$W2V/W2/8zSLBW6JclBhOKupkYfw8j.V/ST4s/NeUw5zrMjwXOp3RO', 'sasok@gmail.com', 'Александр Иванович Старов', 20, 'Челябинск'),
(10, 'sasha', '$2y$10$Il5gu.cPzjnaunK3xMO3oOQwuDwl0Yx0LxD.t//L6us4eMPfxsLE2', 'sasha15@gmail.com', 'Владимир', 20, 'Чебаксары');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `katalog`
--
ALTER TABLE `katalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `otziv`
--
ALTER TABLE `otziv`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `katalog`
--
ALTER TABLE `katalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `otziv`
--
ALTER TABLE `otziv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `katalog` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
