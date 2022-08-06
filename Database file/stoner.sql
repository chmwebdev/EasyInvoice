-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 07:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stoner`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `sellerId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `customerName` varchar(128) NOT NULL,
  `customerAdd` varchar(128) NOT NULL,
  `customerNo` varchar(15) NOT NULL,
  `customerStatus` varchar(10) NOT NULL,
  `regDate` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`sellerId`, `customerId`, `customerName`, `customerAdd`, `customerNo`, `customerStatus`, `regDate`) VALUES
(5, 2, 'Juan', 'Batangas', '9123', 'bogus', NULL),
(4, 4, 'pedro', 'somewhere', '912', 'loyal', NULL),
(4, 5, 'Mico Santos', 'Antips', '111111', 'Bogus', NULL),
(7, 30, 'Heidie Torzar', 'Binangonan', '09436756294', 'Loyal', NULL),
(7, 31, 'Cheska Rafael', 'Pasig', '09528503947', 'Loyal', NULL),
(7, 32, 'Darcy Tolentino', 'Antipolo', '09859278312', 'Loyal', NULL),
(7, 34, 'Lydlinar', 'Manila city', '9426382534', 'Loyal', NULL),
(7, 39, 'Aizen Sosuke', 'soul society', '19241251', 'Loyal', '2021-12-09'),
(7, 46, 'edgar', 'sweden', '9482345678', 'Loyal', '2021-12-14'),
(7, 48, 'Bruce Wayne', 'Gotham', '9608663454', 'Loyal', '2021-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `sellerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(128) NOT NULL,
  `productPrice` decimal(10,2) NOT NULL,
  `productQuan` int(11) NOT NULL,
  `regDate` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`sellerId`, `productId`, `productName`, `productPrice`, `productQuan`, `regDate`) VALUES
(4, 1, 'Jacket', '100.50', 2, NULL),
(4, 2, 'pants', '50.75', 3, NULL),
(4, 3, 'beenie', '50.00', 1, NULL),
(4, 5, 'windbreaker nike', '150.00', 15, NULL),
(4, 8, 'jeans', '150.00', 2, NULL),
(7, 16, 'TR01', '151.00', 68, NULL),
(7, 17, 'TR03', '150.00', 78, NULL),
(7, 19, 'TR04', '150.00', 98, NULL),
(7, 20, 'TR05', '150.00', 97, NULL),
(7, 21, 'TR02', '150.00', 73, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventorytemp`
--

CREATE TABLE `inventorytemp` (
  `sellerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(120) NOT NULL,
  `productPrice` decimal(10,2) NOT NULL,
  `initPrice` decimal(10,2) DEFAULT NULL,
  `productQuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `sellerId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `sale` decimal(10,2) NOT NULL,
  `saleDate` varchar(25) NOT NULL,
  `invoiceNo` int(11) NOT NULL,
  `numInvoice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`sellerId`, `customerId`, `sale`, `saleDate`, `invoiceNo`, `numInvoice`) VALUES
(7, 30, '540.00', '2021-11-05', 37, 5),
(7, 39, '135.00', '2021-12-10', 47, 3),
(7, 34, '270.00', '2021-12-10', 48, 4),
(7, 48, '270.00', '2021-12-16', 87, 31),
(7, 48, '270.00', '2021-12-16', 107, 24),
(7, 48, '270.00', '2021-12-17', 108, 6),
(7, 48, '135.90', '2021-12-20', 124, 21),
(7, 48, '135.90', '2021-12-20', 125, 22),
(7, 48, '270.00', '2021-12-20', 126, 9),
(7, 48, '675.90', '2021-12-20', 127, 10),
(7, 48, '1350.90', '2021-12-20', 128, 11),
(7, 48, '812.70', '2021-12-20', 129, 12),
(7, 48, '675.00', '2021-12-20', 130, 13),
(7, 48, '270.00', '2022-01-14', 131, 14),
(7, 48, '271.80', '2022-01-19', 132, 15);

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `id` int(6) NOT NULL,
  `usersId` int(11) NOT NULL,
  `no1` varchar(50) NOT NULL,
  `no2` varchar(50) NOT NULL,
  `no3` varchar(50) NOT NULL,
  `no4` varchar(50) NOT NULL,
  `no5` varchar(50) NOT NULL,
  `no6` varchar(50) NOT NULL,
  `no7` varchar(50) NOT NULL,
  `no8` varchar(50) NOT NULL,
  `no9` varchar(50) NOT NULL,
  `no10` varchar(50) NOT NULL,
  `no11` varchar(50) NOT NULL,
  `no12` varchar(50) NOT NULL,
  `no13` varchar(50) NOT NULL,
  `no14` varchar(50) NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`id`, `usersId`, `no1`, `no2`, `no3`, `no4`, `no5`, `no6`, `no7`, `no8`, `no9`, `no10`, `no11`, `no12`, `no13`, `no14`, `comments`) VALUES
(1, 7, 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'neutral', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `usersEmail` varchar(120) NOT NULL,
  `usersUid` varchar(120) NOT NULL,
  `usersPwd` varchar(120) NOT NULL,
  `usersAdd` varchar(150) DEFAULT NULL,
  `usersDesc` varchar(200) DEFAULT NULL,
  `usersImage` text DEFAULT NULL,
  `qrcode` text DEFAULT NULL,
  `usersCode` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `usersEmail`, `usersUid`, `usersPwd`, `usersAdd`, `usersDesc`, `usersImage`, `qrcode`, `usersCode`) VALUES
(7, 'berniceeinvoice@gmail.com', 'User', '$2y$10$/jpVbwQYhi0ygzPsNtmgpe/zFREqvJUc4Yc5nK6YVci5JxNCFr6Uq', 'Manila City', 'Online Seller', 'IMG-61bf5bb84f0c36.88760796.jpg', 'IMG-61b870fbf09b92.57658424.jpg', NULL),
(8, 'demo@demo.com', 'Mico', '$2y$10$mEYj7y31MvMmmgPh5BGHGePNtQmTFqclE4EHlAPqMJaNn1cDN5.J.', 'Antipolo', 'Student', NULL, NULL, NULL),
(11, 'try@email.com', 'jt', '$2y$10$wgNiRR.wJ5c62BCnUYTDc.hzvLuS1iw9V7lJPrULFv/f16VIM9f1y', 'Pampanga', 'Online Seller', 'IMG-61b782f31fe929.42178131.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `inventorytemp`
--
ALTER TABLE `inventorytemp`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`invoiceNo`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `invoiceNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
