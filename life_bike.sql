-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2019 at 10:20 AM
-- Server version: 10.1.41-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vromscwm_life_bike`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`, `time`) VALUES
(1, 'admin_nahid', 'nahid1234', '2019-08-25 13:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(20) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `posted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `full_name`, `comment`, `posted_time`) VALUES
(1, 'Nahid Hassan', 'Onek valo', '2019-08-23 18:06:39'),
(2, 'Nahid Hassan', 'Onek valo', '2019-08-23 18:11:38'),
(3, 'Nahid Hassan', 'Onek valo', '2019-08-23 18:12:18'),
(5, 'Nishat Hassan', 'let\'s check', '2019-08-23 19:19:09'),
(6, 'Riaz', 'asfnkl;awehgio;aqiogh', '2019-08-25 07:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(20) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `drugs` varchar(500) NOT NULL,
  `posted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `full_name`, `email`, `address`, `phone`, `drugs`, `posted_time`) VALUES
(1, 'Nahid Hassan', 'nhassan213@gmail.com', 'Bashundhara r/a', '01916458235', 'napa', '2019-08-23 16:32:42'),
(2, 'Nahid Hassan', 'nhassan213@gmail.com', 'Bashundhara r/a', '01916458235', 'napsa', '2019-08-23 16:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(20) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `posted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `full_name`, `email`, `subject`, `message`, `posted_time`) VALUES
(1, 'Nahid Hassan', 'nhassan213@gmail.com', 'Test', '', '2019-08-23 17:33:49'),
(2, 'Nahid Hassan', 'nhassan213@gmail.com', 'Test', '', '2019-08-23 17:35:57'),
(3, 'Nahid Hassan', 'nhassan213@gmail.com', 'Test', 'hello check', '2019-08-23 17:36:15'),
(4, 'Nahid Hassan', 'nhassan213@gmail.com', 'Test', 'hello check', '2019-08-23 17:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `peramedic`
--

CREATE TABLE `peramedic` (
  `id` int(20) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `posted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peramedic`
--

INSERT INTO `peramedic` (`id`, `full_name`, `email`, `address`, `phone`, `posted_time`) VALUES
(1, 'Nahid Hassan', 'nhassan213@gmail.com', 'Bashundhara r/a', '01817098032', '2019-08-23 16:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `hospital` varchar(200) NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `address`, `hospital`, `lat`, `lon`) VALUES
(121, 'Sayem Sobhan Anvir Rd, Dhaka, Bangladesh', '', 23.8199, 90.4297),
(122, 'Plot: 81, Block: E, Bashundhara R/A, Dhaka 1229, Bangladesh', 'Apollo Hospital', 23.8099, 90.4309),
(123, 'Sayem Sobhan Anvir Rd, Dhaka, Bangladesh', '', 23.8199, 90.4297),
(124, 'Plot: 81, Block: E, Bashundhara R/A, Dhaka 1229, Bangladesh', 'Apollo Hospital', 23.8099, 90.4309),
(125, 'Mufti Abdur Rahman Rd, Dhaka, Bangladesh', '', 23.8166, 90.433),
(126, 'Secretariat Rd, Dhaka 1000, Bangladesh', '', 23.7257, 90.3982),
(127, 'Sayem Sobhan Anvir Rd, Dhaka, Bangladesh', '', 23.8199, 90.4297),
(128, 'Tongi Diversion Rd, Dhaka 1206, Bangladesh', '', 23.8189, 90.4094),
(129, 'Sayem Sobhan Anvir Rd, Dhaka, Bangladesh', '', 23.8199, 90.4297),
(130, 'House-06 à¦°à§‹à¦¡-à§¦à§ª, Dhaka 1205, Bangladesh', '', 23.7419, 90.3828),
(131, 'Sayem Sobhan Anvir Rd, Dhaka, Bangladesh', '', 23.8199, 90.4297),
(132, 'House-06 à¦°à§‹à¦¡-à§¦à§ª, Dhaka 1205, Bangladesh', '', 23.7419, 90.3828),
(133, 'Sayem Sobhan Anvir Rd, Dhaka, Bangladesh', '', 23.8199, 90.4297),
(134, 'House-06 à¦°à§‹à¦¡-à§¦à§ª, Dhaka 1205, Bangladesh', '', 23.7419, 90.3828),
(135, 'Munshipara Rd, 1230, Bangladesh', '', 23.8833, 90.4047),
(136, 'Tongi, Bangladesh', '', 23.901, 90.409),
(137, '01 No Arichpur Mosque Road, à¦®à¦¿à¦°à¦¾à¦¶à¦ªà¦¾à¦¡à¦¼à¦¾ à¦¸à¦¡à¦¼à¦•, à¦Ÿà¦™à§à¦—à§€ 1230, Bangladesh', '', 23.885, 90.4036),
(138, 'H.No 34, Road No.4 Janapath, Sonargaon Road, Dhaka 1230, Bangladesh', '', 23.8746, 90.3965),
(139, 'N S University Parking Rd, Dhaka, Bangladesh', '', 23.8155, 90.4261),
(140, 'Plot: 81, Block: E, Bashundhara R/A, Dhaka 1229, Bangladesh', '', 23.8099, 90.4309),
(141, 'N S University Parking Rd, Dhaka, Bangladesh', '', 23.8155, 90.4261),
(142, 'GE (Air), Dhaka 1206, Bangladesh', '', 23.8271, 90.4006),
(143, 'North Academic Building, Dhaka, Bangladesh', '', 23.8155, 90.4261),
(144, 'Plot 15 Rd No 71, Dhaka 1212, Bangladesh', '', 23.8046, 90.4152),
(145, 'North Academic Building, Dhaka, Bangladesh', '', 23.8155, 90.4261),
(146, 'Secretariat Rd, Dhaka 1000, Bangladesh', '', 23.7257, 90.3982),
(147, 'North Academic Building, Dhaka, Bangladesh', '', 23.8155, 90.4261),
(148, 'House-06 à¦°à§‹à¦¡-à§¦à§ª, Dhaka 1205, Bangladesh', '', 23.7419, 90.3828),
(149, 'North Academic Building, Dhaka, Bangladesh', '', 23.8155, 90.4261),
(150, 'Mitford Rd, Dhaka 1100, Bangladesh', '', 23.7111, 90.4011),
(151, 'North Academic Building, Dhaka, Bangladesh', '', 23.8155, 90.4261),
(152, '6th floor BIRDEM General Hospital, 122 Kazi Nazrul Islam Avenue, Dhaka 1000, Bangladesh', '', 23.7397, 90.3963);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `spots` tinyint(4) NOT NULL,
  `spots_taken` tinyint(4) NOT NULL,
  `length` int(128) NOT NULL,
  `message` varchar(4096) DEFAULT NULL,
  `women_only` binary(1) NOT NULL,
  `departure_time` int(11) NOT NULL,
  `origin_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`id`, `driver_id`, `spots`, `spots_taken`, `length`, `message`, `women_only`, `departure_time`, `origin_id`, `destination_id`) VALUES
(51, 10, 45, 1, 5, '', 0x00, 1577898000, 121, 122),
(52, 11, 1, 0, 5, '', 0x00, 1564939800, 123, 124),
(53, 9, 18, 0, 39, 'Hello', 0x00, 1567051200, 125, 126),
(54, 10, 25, 0, 14, '', 0x00, 1567098000, 127, 128),
(55, 10, 10, 1, 35, '', 0x00, 1567059300, 129, 130),
(56, 10, 10, 0, 35, '', 0x00, 1567059300, 131, 132),
(57, 10, 4, 0, 35, 'If you need any Medicine just message me.', 0x00, 1567049400, 133, 134),
(58, 10, 2, 0, 11, '', 0x31, 1566501300, 135, 136),
(59, 10, 2, 0, 12, '', 0x31, 1566502680, 137, 138),
(60, 10, 18, 0, 6, 'For Medicine call me', 0x00, 1566794700, 139, 140),
(61, 10, 10, 0, 20, 'For Medicine message me', 0x00, 1566795600, 141, 142),
(62, 10, 10, 0, 18, 'For Medicine call me', 0x00, 1567142100, 143, 144),
(63, 10, 10, 0, 40, 'For Medicine message me', 0x00, 1567274400, 145, 146),
(64, 10, 25, 0, 39, 'For Medicine message me', 0x00, 1567274400, 147, 148),
(65, 10, 21, 0, 52, 'For Medicine message me', 0x00, 1567274400, 149, 150),
(66, 10, 18, 0, 35, 'For Medicine message me', 0x00, 1567274400, 151, 152);

-- --------------------------------------------------------

--
-- Table structure for table `trip_request`
--

CREATE TABLE `trip_request` (
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` varchar(4096) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip_request`
--

INSERT INTO `trip_request` (`trip_id`, `user_id`, `message`, `status`) VALUES
(51, 9, 'napa', 1),
(54, 9, '', 0),
(55, 9, 'tufnil', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `email_address` varchar(128) NOT NULL,
  `drivers_license_id` varchar(64) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `password` varchar(64) NOT NULL,
  `hero` int(10) NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email_address`, `drivers_license_id`, `gender`, `password`, `hero`, `lat`, `lon`) VALUES
(9, 'Nahid', 'Hassan', 'nhassan213@gmail.com', '01817098032', 'm', '9721c8e5fbe0cd030502e27580e6b85175e1455a1ddfa3ab139851708b02b31a', 1, 23.8152, 90.4265),
(10, 'Jamiur', 'Rahman', 'dj@gmail.com', '01976485247', 'm', '9721c8e5fbe0cd030502e27580e6b85175e1455a1ddfa3ab139851708b02b31a', 1, 23.8103, 90.4125),
(11, 'Md. Jamiur Rahman', 'Dourjoy', 'dourjoy011253@gmail.com', '01858645264', 'm', '2939f45f344ed21db40dc833a3602514e73f6bf29b2e7bcc539c19450b5c20f9', 0, 0, 0),
(14, 'Soumik', 'Sadman', 'soumik@gmail.com', '018932143245', 'm', '9721c8e5fbe0cd030502e27580e6b85175e1455a1ddfa3ab139851708b02b31a', 1, 0, 0),
(15, 'Riaz', 'Uddin', 'riaz@gmail.com', '018932143245', 'm', '9721c8e5fbe0cd030502e27580e6b85175e1455a1ddfa3ab139851708b02b31a', 0, 23.8168, 90.4298),
(16, 'Riaz', 'Uddin', 'Ruddin817@gmail.com', '01676569877', 'm', '02bd6aded94057adc221313a8cd8c362dbeab9b17cf3e39bc611269add404931', 0, 0, 0),
(26, 'Md. Jamiur Rahman', 'Dourjoy', 'jamiur.rahman@northsouth.edu', '01858645264', 'm', '9721c8e5fbe0cd030502e27580e6b85175e1455a1ddfa3ab139851708b02b31a', 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peramedic`
--
ALTER TABLE `peramedic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_request`
--
ALTER TABLE `trip_request`
  ADD PRIMARY KEY (`trip_id`,`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peramedic`
--
ALTER TABLE `peramedic`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
