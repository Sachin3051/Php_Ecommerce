-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 10:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_loginform`
--

CREATE TABLE `admin_loginform` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_loginform`
--

INSERT INTO `admin_loginform` (`id`, `username`, `userpassword`) VALUES
(1, 'admin', 'admin123'),
(2, 'abhi', '123'),
(3, 'abhi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(12, 'mandir', '500', 'uploaded_img/temple8', 1),
(13, 'Ganpati Showpieces', '900', 'uploaded_img/Screenshot 2023-09-27 221821.png', 2),
(14, 'Elephant Showpiece', '1000', 'uploaded_img/Screenshot 2023-09-27 221756.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `e/dproduct`
--

CREATE TABLE `e/dproduct` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `e/dproduct`
--

INSERT INTO `e/dproduct` (`id`, `name`, `price`, `image`, `category`) VALUES
(46, 'White temple', '4500', 'uploaded_img/colorful mandir 3.webp', 'Wooden Temple'),
(47, 'Red small temple', '4400', 'uploaded_img/color ful mandir 4.jpg', 'Wooden Temple'),
(48, 'Orange small temple', '4400', 'uploaded_img/colorful mandir.webp', 'Wooden Temple'),
(49, 'Pink small temple', '4400', 'uploaded_img/colorful mandir.jpg', 'Wooden Temple'),
(50, 'Wall Temple', '8000', 'uploaded_img/small mandir 4.jpg', 'Wooden Temple'),
(51, 'Wall Temple', '6000', 'uploaded_img/wall2.webp', 'Wooden Temple'),
(52, 'Wall Temple', '7000', 'uploaded_img/wall 4.webp', 'Wooden Temple'),
(53, 'Wall Temple', '4000', 'uploaded_img/wall 3.jpg', 'Wooden Temple'),
(54, 'Alarm Clock', '600', 'uploaded_img/clock1.webp', 'Table Clock'),
(55, 'Table alarm clock', '900', 'uploaded_img/clock2.jpg', 'Table Clock'),
(56, 'Table designer clock', '1000', 'uploaded_img/clock4.jpg', 'Table Clock'),
(57, 'Designer clock', '700', 'uploaded_img/clock3.jpg', 'Table Clock'),
(58, 'Table small clock', '400', 'uploaded_img/clock5.webp', 'Table Clock'),
(59, 'Table small clock', '400', 'uploaded_img/clock6.jpeg', 'Table Clock'),
(60, 'Table small clock', '400', 'uploaded_img/clock7.jpeg', 'Table Clock'),
(61, 'Table small clock', '400', 'uploaded_img/clock8.webp', 'Table Clock'),
(62, 'Wall art painting', '2000', 'uploaded_img/wall1.jpg', 'Wall Art'),
(63, 'Wall art painting', '1500', 'uploaded_img/wall4.jpg', 'Wall Art'),
(64, 'Wall art painting', '2200', 'uploaded_img/wall2.jpg', 'Wall Art'),
(65, 'Wall art painting', '3000', 'uploaded_img/wall3.jpg', 'Wall Art'),
(66, 'Wall art of humans', '4600', 'uploaded_img/wallart.webp', 'Wall Art'),
(67, 'Wall art of tree', '4000', 'uploaded_img/wallart2.avif', 'Wall Art'),
(68, 'Wall art of mountains', '6000', 'uploaded_img/wallart3.webp', 'Wall Art'),
(69, 'Wall art of geometric ', '3000', 'uploaded_img/wallart4.avif', 'Wall Art'),
(70, 'Artificial Flower', '1200', 'uploaded_img/Screenshot 2023-09-27 220201.png', 'Artificial Flower'),
(71, 'Artificial Flower', '4000', 'uploaded_img/Screenshot 2023-09-27 220514.png', 'Artificial Flower'),
(72, 'Artificial Flower', '3300', 'uploaded_img/Screenshot 2023-09-27 220754.png', 'Artificial Flower'),
(73, 'Artificial Flower', '2230', 'uploaded_img/Screenshot 2023-09-27 220830.png', 'Artificial Flower'),
(74, 'Artificial Flower', '4300', 'uploaded_img/Screenshot 2023-09-27 221238.png', 'Artificial Flower'),
(75, 'Artificial Flower', '3000', 'uploaded_img/Screenshot 2023-09-27 221315.png', 'Artificial Flower'),
(76, 'Artificial Flower', '2000', 'uploaded_img/Screenshot 2023-09-27 221334.png', 'Artificial Flower'),
(77, 'Artificial Flower', '1200', 'uploaded_img/Screenshot 2023-09-27 221351.png', 'Artificial Flower'),
(78, 'Ganpati Showpieces', '900', 'uploaded_img/Screenshot 2023-09-27 221821.png', 'Products'),
(79, 'Horse Showpiece', '1200', 'uploaded_img/Screenshot 2023-09-27 221701.png', 'Products'),
(80, 'Elephant Showpiece', '1000', 'uploaded_img/Screenshot 2023-09-27 221756.png', 'Products'),
(81, 'Ganesha Showpiece', '2000', 'uploaded_img/Screenshot 2023-09-27 221821.png', 'Products'),
(82, 'Lamp', '5000', 'uploaded_img/Screenshot 2023-09-27 222226.png', 'Products'),
(83, 'Table lamp', '4000', 'uploaded_img/Screenshot 2023-09-27 222438.png', 'Products'),
(84, 'Bedside lamp', '7000', 'uploaded_img/Screenshot 2023-09-27 222242.png', 'Products'),
(86, 'Table lamp', '3000', 'uploaded_img/Screenshot 2023-09-27 222325.png', 'Products'),
(87, 'Wall Hanging Latkan', '499', 'uploaded_img/Screenshot 2023-09-27 223135.png', 'Products'),
(88, 'Wall Hanging Latkans', '499', 'uploaded_img/Screenshot 2023-09-27 223233.png', 'Products'),
(89, 'Wall Hanging Latkans', '499', 'uploaded_img/Screenshot 2023-09-27 223003.png', 'Products'),
(90, 'Wall Hanging Latkans', '499', 'uploaded_img/Screenshot 2023-09-27 223042.png', 'Products');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Number` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `UserName`, `Email`, `Number`, `Password`) VALUES
(6, 'abhi', 'abhishekt4823@gmail.com', '3', '$2y$10$FR7R6shFt7AqefE5DpJHMueEEPVebKwTRe02hrryI7gAUOEyGo8ty'),
(7, 'Abhishek', 'abhishekt482003@gmail.com', '8', '123'),
(8, 'Abhishek Tiwari', 'abhi@gmail.com', '77', '321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_loginform`
--
ALTER TABLE `admin_loginform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e/dproduct`
--
ALTER TABLE `e/dproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`UserName`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_loginform`
--
ALTER TABLE `admin_loginform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `e/dproduct`
--
ALTER TABLE `e/dproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
