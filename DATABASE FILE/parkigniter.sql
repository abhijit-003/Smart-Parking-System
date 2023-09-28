-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2023 at 06:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `message`, `currency`) VALUES
(1, 'Paved Parkade', '3165  Alexander Drive, Arlington TX', '<blockquote>Men are like parking spaces; all the good ones are taken, and the available ones are handicapped. - Clea DuVall</blockquote>', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:28:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:14:\"createCategory\";i:9;s:14:\"updateCategory\";i:10;s:12:\"viewCategory\";i:11;s:14:\"deleteCategory\";i:12;s:11:\"createRates\";i:13;s:11:\"updateRates\";i:14;s:9:\"viewRates\";i:15;s:11:\"deleteRates\";i:16;s:11:\"createSlots\";i:17;s:11:\"updateSlots\";i:18;s:9:\"viewSlots\";i:19;s:11:\"deleteSlots\";i:20;s:13:\"createParking\";i:21;s:13:\"updateParking\";i:22;s:11:\"viewParking\";i:23;s:13:\"deleteParking\";i:24;s:13:\"updateCompany\";i:25;s:13:\"updateSetting\";i:26;s:11:\"viewReports\";i:27;s:11:\"viewProfile\";}'),
(8, 'SPS_users', 'a:9:{i:0;s:8:\"viewUser\";i:1;s:9:\"viewGroup\";i:2;s:12:\"viewCategory\";i:3;s:9:\"viewRates\";i:4;s:9:\"viewSlots\";i:5;s:13:\"createParking\";i:6;s:11:\"viewParking\";i:7;s:11:\"viewReports\";i:8;s:11:\"viewProfile\";}');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `id` int(11) NOT NULL,
  `parking_code` varchar(255) NOT NULL,
  `vechile_cat_id` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `in_time` varchar(255) NOT NULL,
  `out_time` varchar(255) NOT NULL,
  `total_time` varchar(255) NOT NULL,
  `earned_amount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `parking_code`, `vechile_cat_id`, `rate_id`, `slot_id`, `in_time`, `out_time`, `total_time`, `earned_amount`, `paid_status`) VALUES
(7, 'CA-D0EB97', 1, 2, 3, '1594221869', '1594221973', '6', '6', 1),
(8, 'CA-5207D9', 2, 4, 9, '1621082910', '1621082918', '732', '998', 1),
(9, 'CA-F50355', 1, 2, 9, '1625499412', '1625500996', '1', '1', 1),
(10, 'CA-2DBD21', 2, 3, 1, '1625501037', '1625501085', '13', '26', 1),
(11, 'CA-8286D0', 2, 3, 6, '1625501193', '1625501202', '39', '78', 1),
(12, 'CA-485406', 1, 5, 10, '1625503784', '1625503875', '1', '702', 1),
(13, 'CA-DB2728', 2, 3, 8, '1625503998', '1625504197', '1', '2', 1),
(14, 'CA-2A4908', 2, 3, 3, '1625504364', '1625504532', '1', '2', 1),
(15, 'CA-8B045C', 1, 2, 10, '1625504372', '1625504398', '1', '1', 1),
(16, 'CA-BA686B', 2, 3, 1, '1625504383', '1625504527', '1', '2', 1),
(17, 'CA-85D654', 2, 3, 9, '1625504451', '1625504521', '1', '2', 1),
(18, 'CA-B6588D', 2, 4, 3, '1688567292', '', '', '', 0),
(19, 'CA-6132F5', 1, 2, 9, '1688567349', '1688577759', '3', '30', 1),
(20, 'CA-5F18F7', 2, 3, 7, '1688954986', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `rate_name` varchar(255) NOT NULL,
  `vechile_cat_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `rate_name`, `vechile_cat_id`, `type`, `rate`, `active`) VALUES
(2, '1 per Hour', 1, 2, '10', 1),
(3, '2 per Hour', 2, 2, '20', 1),
(4, '997 per Month', 2, 1, '7000', 1),
(5, '702 per Month', 1, 1, '13000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` int(11) NOT NULL,
  `slot_name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `availability_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `slot_name`, `active`, `availability_status`) VALUES
(1, 'TW1', 1, 1),
(3, 'B1', 1, 2),
(6, 'TW2', 1, 1),
(7, 'B2', 1, 2),
(8, 'B3', 1, 1),
(9, 'B4', 1, 1),
(10, 'SS8', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 'admin@gmail.com', 'PSA', 'Administrator', '7854441014', 1),
(5, 'aniket', '$2y$10$VIRWVLHDGNbfEaO/AuTFsOIcpV3.1nUMlIBmTqu8CFbQ0ayO1QO4u', 'aniket@gmail.com', 'aniket', 'borkar', '7501450000', 1),
(6, 'abhi003', '$2y$10$FI0Onn2gPkJru3VeHCgNJu6ALQ.YSnuLYxEyscOexSv8oXxkNBud.', 'abhi@gmail.com', 'abhi', 'chavan', '7012569800', 1),
(7, 'johnpatil', '$2y$10$mGkv9dmAOq1ML6orHxqsBORiVR.fcFlCosDx5ZYRTZwhMTY0U3zQO', 'john@gmail.com', 'John', 'patil', '7012555589', 1),
(8, 'user1', '$2y$10$NzJ4ouTstM3p3Bx.JJm88uP1b8L0AwgLfDyulYSuVaQ5BDSC8HJyy', 'user1@gamil.com', 'xyz', 'user', '9878765645', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(3, 2, 8),
(4, 3, 8),
(5, 4, 8),
(6, 5, 8),
(7, 6, 8),
(8, 7, 8),
(9, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `vechile_category`
--

CREATE TABLE `vechile_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vechile_category`
--

INSERT INTO `vechile_category` (`id`, `name`, `active`) VALUES
(1, 'Two Wheels', 1),
(2, 'Four Wheels', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vechile_category`
--
ALTER TABLE `vechile_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vechile_category`
--
ALTER TABLE `vechile_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
