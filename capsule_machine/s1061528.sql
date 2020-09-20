-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-01-17 13:28:57
-- 伺服器版本: 10.1.28-MariaDB
-- PHP 版本： 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `topic`
--

-- --------------------------------------------------------

--
-- 資料表結構 `eggs`
--

CREATE TABLE `eggs` (
  `egg_num` int(12) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `words` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'hellow!!'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `eggs`
--

INSERT INTO `eggs` (`egg_num`, `name`, `words`) VALUES
(1, 'tim', 'hellow!!'),
(2, 'tie', 'you are my friend.'),
(3, 'chea', 'see you!!'),
(4, 'tim', 'Hellow!!'),
(5, 'tim', 'dsee!!');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `eggs`
--
ALTER TABLE `eggs`
  ADD PRIMARY KEY (`egg_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
