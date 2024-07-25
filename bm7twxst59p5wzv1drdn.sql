-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: bm7twxst59p5wzv1drdn-mysql.services.clever-cloud.com:3306
-- Generation Time: Jul 25, 2024 at 02:09 PM
-- Server version: 8.0.22-13
-- PHP Version: 8.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bm7twxst59p5wzv1drdn`
--

-- --------------------------------------------------------

--
-- Table structure for table `game_items`
--

CREATE TABLE `game_items` (
  `id` int NOT NULL,
  `game_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `seller_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `seller_username` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `seller_phonenumber` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_title` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `item_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `item_image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `item_stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_items`
--

INSERT INTO `game_items` (`id`, `game_name`, `seller_email`, `seller_username`, `seller_phonenumber`, `item_price`, `item_title`, `item_description`, `item_image`, `item_stock`) VALUES
(29, 'mobile_legend', 'baru@gmail.com', 'baru', '', 11000.00, 'Diamon MLBB', '- Murah', '1721293964784VBG SIM-K FSD-01.jpg', 99),
(32, 'roblox', 'nevervell@gmail.com', 'nevervell', '+6285893561943', 50000.00, 'Robux 5 hari', '- Newest\r\n- New  Desc', '1721304167178dance (1).gif', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `seller_username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `seller_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `buyer_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `item_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `game_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `item_quantity` int NOT NULL,
  `item_price` float NOT NULL,
  `buyer_note` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `seller_username`, `seller_email`, `buyer_email`, `item_title`, `game_name`, `item_quantity`, `item_price`, `buyer_note`) VALUES
(5, 'nevervell', 'nevervell@gmail.com', 'avel123@gmail.com', 'Robux 5 hari', 'roblox', 1, 50000, 'Username roblox: asd123'),
(6, 'baru', 'baru@gmail.com', 'baru@gmail.com', 'Diamon MLBB', 'mobile_legend', 1, 11000, 'IDSaya : 123456'),
(13, 'nevervell', 'nevervell@gmail.com', 'userlain@gmail.com', 'Robux 5 hari', 'roblox', 4, 50000, 'My nickname: itsavelxd'),
(15, 'nevervell', 'nevervell@gmail.com', 'nevervell@gmail.com', 'Robux 5 hari', 'roblox', 1, 50000, 'Username roblox saya: apel'),
(16, 'nevervell', 'nevervell@gmail.com', 'userlain@gmail.com', 'Robux 5 hari', 'roblox', 1, 50000, 'Roblox username: Avel123'),
(17, 'nevervell', 'nevervell@gmail.com', 'userlain@gmail.com', 'Robux 5 hari', 'roblox', 1, 50000, 'Test'),
(18, 'nevervell', 'nevervell@gmail.com', 'userlain@gmail.com', 'Robux 5 hari', 'roblox', 1, 50000, 'test'),
(19, 'baru', 'baru@gmail.com', 'asww@gmail.com', 'Diamon MLBB', 'mobile_legend', 1, 11000, 'asww');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `phone_number`, `password`) VALUES
(47, 'nevervell@gmail.com', 'nevervell', '+6285893561943', '$2b$10$zz2QfZYOzX8aAJkveAaCmeURuLU0IKS49CP2F7stvuuEBCrm7fsE6'),
(48, 'userlain@gmail.com', 'userlain', '1234567890-', '$2b$10$EYS0KScO0mvgnhW1jkIQNuHlhvVy2/UORMVaRPBMrBVFaQf2mX3Vq'),
(49, 'davidafdal8@gmail.com', 'david', '0819332457123', '$2a$10$T8iAY1Qy8j3.9CCUNs39A.DBr7J4XklTsOuAja2T3birPu3xYNMIW'),
(50, 'asww@gmail.com', 'asw', 'asww', '$2a$10$v/NvpN.eVOcMGgdJ2SdlIOk71A8xRVNSLEwAjDFUbxvv63IqZVhym');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game_items`
--
ALTER TABLE `game_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_username` (`id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game_items`
--
ALTER TABLE `game_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
