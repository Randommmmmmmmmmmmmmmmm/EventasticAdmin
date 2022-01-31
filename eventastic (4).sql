-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2022 at 04:37 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventastic`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_user`
--

CREATE TABLE `ads_user` (
  `ads_id` int NOT NULL,
  `event_id` int NOT NULL,
  `username` varchar(300) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `notes` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ads_user`
--

INSERT INTO `ads_user` (`ads_id`, `event_id`, `username`, `name`, `category`, `notes`, `status`) VALUES
(1, 1, 'fanae', 'Design Poster', 'Poster', 'Siapkan before 12 January', 'Not Finished'),
(2, 1, 'fanae', 'nak tanya', 'Poster', 'ii', 'Not Finished'),
(3, 1, 'fanae', 'dsfdfsf', 'Foods Catering', 'sdfsdfs', 'Finished'),
(4, 2, 'fanae', 'dsfaasdasdadasas', 'Foods Catering', 'dasd', 'Not Finished');

-- --------------------------------------------------------

--
-- Table structure for table `booking_user`
--

CREATE TABLE `booking_user` (
  `booking_id` int NOT NULL,
  `event_id` int NOT NULL,
  `username` varchar(300) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `notes` text NOT NULL,
  `payment` decimal(10,0) NOT NULL,
  `payment_status` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_user`
--

INSERT INTO `booking_user` (`booking_id`, `event_id`, `username`, `name`, `category`, `notes`, `payment`, `payment_status`, `phone`, `email`) VALUES
(1, 1, 'fanae', 'Haqiem Ruslii', 'Entertainments/Performances', 'Boros naw 2 lagu', '7000', 'Paid', '2147483647', 'gjgjh@d.m'),
(4, 2, 'fanae', 'Shiha zikir', 'Crew Teams', 'Yao Yao', '5', 'Paid', '0', ''),
(7, 1, 'fanae', 'Busker', 'Entertainments/Performances', 'Lama', '700', 'Not Paid Yet', '0', ''),
(8, 2, 'fanae', 'Catering', 'Foods Catering', 'buk', '500', 'Not Paid Yet', '0', ''),
(10, 3, 'fanae', 'Grab Team Bulk', 'Transportation', 'kita order secara pukal', '70', 'Not Paid Yet', '', ''),
(11, 1, 'fanae', 'makaaaan', 'Foods Catering', 'saye lapar', '9000', 'Paid', '0123456000', 'yes@gmail.com'),
(12, 1, 'omanbotax', 'barber shop', 'Venue', 'rambut bwk sendiri', '420', 'Paid', '000', 'oman@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `crew_user`
--

CREATE TABLE `crew_user` (
  `crew_id` int NOT NULL,
  `event_id` int NOT NULL,
  `username` varchar(300) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `quantity` text NOT NULL,
  `progress` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crew_user`
--

INSERT INTO `crew_user` (`crew_id`, `event_id`, `username`, `name`, `category`, `quantity`, `progress`, `phone`, `email`, `notes`) VALUES
(2, 1, 'fanae', 'Naidu Sdn Bhd', 'Security', '50', 'No', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `guest_user`
--

CREATE TABLE `guest_user` (
  `guest_id` int NOT NULL,
  `event_id` int NOT NULL,
  `username` varchar(300) NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `category` text NOT NULL,
  `quantity` text NOT NULL,
  `progress` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_user`
--

INSERT INTO `guest_user` (`guest_id`, `event_id`, `username`, `name`, `gender`, `category`, `quantity`, `progress`, `phone`, `email`, `notes`) VALUES
(2, 1, 'fanae', 'Dr Maza Family', 'Male', 'Adult', '5', 'Yes', '', '', ''),
(3, 1, 'fanae', 'Encik Hamid', 'Male', 'Adult', '2', 'No', '', '', ''),
(4, 1, 'fanae', 'SMKSH', 'Female', 'Teen', '20', 'Yes', '', '', ''),
(5, 1, 'fanae', 'sdsdasdas', 'Female', 'Adult', '22232', 'Yes', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `loginregister_admin`
--

CREATE TABLE `loginregister_admin` (
  `admin_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loginregister_admin`
--

INSERT INTO `loginregister_admin` (`admin_id`, `name`, `gender`, `phone_num`, `email`, `password`) VALUES
(1, 'Nik Luqman', 'Lelaki', '+6016-2923213', 'luqman@gmail.com', '123'),
(2, 'Nurul Farhanah', NULL, '+6016-2927694', 'biru@gmail.com', '1233');

-- --------------------------------------------------------

--
-- Table structure for table `loginregister_user`
--

CREATE TABLE `loginregister_user` (
  `id` int NOT NULL,
  `fullname` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loginregister_user`
--

INSERT INTO `loginregister_user` (`id`, `fullname`, `username`, `password`, `email`) VALUES
(1, 'Farhanah', 'fanae', '$2y$10$/BP8np1S8WdTfE1UL9a.SOy.tF0Rdt6ujpErX5lRL1PGV1ikqOff6', 'fana@gmail.com'),
(2, 'luq', 'luq', '$2y$10$zoWZXdwbf32ZMyORr6R4Du3Y1BwXUXDETvB6P3Vv5/DQN3BZv3.Ei', 'luqman');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `place_area` text NOT NULL,
  `venue_name` text NOT NULL,
  `venue_book_status` text NOT NULL,
  `venue_ratings` text NOT NULL,
  `venue_image` text NOT NULL,
  `venue_latitude` text NOT NULL,
  `venue_longitude` text NOT NULL,
  `venue_search` text NOT NULL,
  `message` text NOT NULL,
  `datetimes` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `fullname`, `email`, `place_area`, `venue_name`, `venue_book_status`, `venue_ratings`, `venue_image`, `venue_latitude`, `venue_longitude`, `venue_search`, `message`, `datetimes`) VALUES
(5, 'nknk', 'kamarul037@gmail.com', '31r1', 'knokmk', 'mmo', 'nkm', 'C40PS-Hybrid-Headset.jpg', 'kmm', 'mkmo', 'omo', 'nknk would like to request an account.', '2022-01-31 03:55:57'),
(6, ',mk', 'kmm@gmail.co', 'kmo', 'km', 'kml', '3.0', 'keke.PNG', '2.9309182', '101.778783295', 'km', ',mk would like to request an account.', '2022-01-31 03:58:14'),
(7, 'Encik Rizal bin Ahmad', 'orangesoda7523@gmail.com', 'UKM', 'mkmo', 'Booked', '3.0', 'silat2.png', '3113', '131', 'Kolej Pendeta Zaab', 'Encik Rizal bin Ahmad would like to request an account.', '2022-01-31 03:59:09'),
(8, ',mmkm', 'orangesoda7523@gmail.com', ',', 'Dewan Canselor Tun Razak', 'Booked', '3.0', 'cakap.png', '2.93090038831', '101.778783295', 'Kolej Pendeta Zaab', ',mmkm would like to request an account.', '2022-01-31 04:00:37'),
(9, 'qwdmwq', 'orangesoda7523@gmail.com', 'UKM', 'DECTAR', 'ksa', '5.0', 'date.png', '2.93090038831', '101.78495', 'Kolej Pendeta Zaab', 'qwdmwq would like to request an account.', '2022-01-31 04:01:21'),
(10, 'wdeq', 'orangesoda7523@gmail.com', 'UKM', 'DECTAR', 'ksa', '5.0', 'WhatsApp Image 2020-12-08 at 20.11.07.jpeg', '2.93090038831', '101.778783295', 'Kolej Pendeta Zaaba', 'wdeq would like to request an account.', '2022-01-31 04:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `update_event`
--

CREATE TABLE `update_event` (
  `id` int NOT NULL,
  `event_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `event_name` text NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_budget` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `update_event`
--

INSERT INTO `update_event` (`id`, `event_id`, `username`, `event_name`, `event_date`, `event_time`, `event_budget`) VALUES
(1, 1, 'fanae', 'Biha Wedding', '2022-08-25', '16:00:00', 20000),
(2, 2, 'fanae', 'Arfan Sem\'s Birthdayyyyy', '2022-12-16', '19:00:00', 20000),
(3, 3, 'fanae', 'Arfan Anniversary', '2022-06-26', '13:00:00', 20000),
(11, 1, 'luq', 'Party', '2022-05-06', '14:00:00', 20000),
(12, 1, 'omanbotax', 'Botak Day', '2025-12-12', '00:00:00', 100);

-- --------------------------------------------------------

--
-- Table structure for table `venue_book`
--

CREATE TABLE `venue_book` (
  `venue_id` int NOT NULL,
  `place_area` text NOT NULL,
  `venue_name` text NOT NULL,
  `venue_book_status` text NOT NULL,
  `venue_ratings` text NOT NULL,
  `venue_image` varchar(300) NOT NULL,
  `venue_latitude` text,
  `venue_longitude` text NOT NULL,
  `venue_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_book`
--

INSERT INTO `venue_book` (`venue_id`, `place_area`, `venue_name`, `venue_book_status`, `venue_ratings`, `venue_image`, `venue_latitude`, `venue_longitude`, `venue_search`) VALUES
(1, 'UKM', 'Dewan Canselor Tun Abdul Razak', 'Unbooked', '5.0', 'dectar.png', '2.93090038831', '101.778783295', 'Dewan Canselor Tun Abdul Razak'),
(2, 'UKM', 'Dewan Gemilang', 'Unbooked', '5.0', 'dewangemilang.png', '2.9309182', '101.78495', 'Dewan Gemilang'),
(3, 'UKM', 'Dewan Kolej Aminuddin Baki', 'Booked', '3.0', 'dewankab.png', '2.9254279', '101.7813617', 'Kolej Aminuddin Baki'),
(4, 'UKM', 'Dewan Kolej Burhanuddin Helmi', 'Unbooked', '3.0', 'dewankbh.png', '2.9274187', '101.7752203', 'Kolej Burhanuddin Helmi'),
(5, 'UKM', 'Dewan Kolej Dato Onn', 'Unbooked', '2.0', 'dewankdo.png', '2.9303899', '101.7783', 'Kolej Dato Onn'),
(6, 'UKM', 'Dewan Kolej Ibrahim Yaakob', 'Booked', '4.5', 'dewankiy.png', '2.9241427', '101.7764492', 'Kolej Ibrahim Yaakob'),
(7, 'UKM', 'Dewan Kolej Ibu Zain', 'Unbooked', '5.0', 'dewankiz.png', '2.9304779', '101.781584', 'Kolej Ibu Zain'),
(8, 'UKM', 'Dewan Kolej Rahim Kajai', 'Booked', '3.0', 'dewankrk.png', '2.9327697', '101.7825491', 'Kolej Rahim Kajai'),
(9, 'UKM', 'Dewan Kolej Ungku Omar', 'Unbooked', '2.5', 'dewankuo.png', '2.9240179', '101.7779948', 'Kolej Ungku Omar'),
(10, 'UKM', 'Dewan Kolej Pendeta Zaaba', 'Booked', '5.0', 'dewanzaba.png', '2.9195225', '101.7727756', 'Kolej Pendeta Zaaba');

-- --------------------------------------------------------

--
-- Table structure for table `venue_list`
--

CREATE TABLE `venue_list` (
  `venue_id` int NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `place_area` text NOT NULL,
  `venue_name` text NOT NULL,
  `venue_book_status` text NOT NULL,
  `venue_ratings` text NOT NULL,
  `venue_image` varchar(300) NOT NULL,
  `venue_latitude` text NOT NULL,
  `venue_longitude` text NOT NULL,
  `venue_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_list`
--

INSERT INTO `venue_list` (`venue_id`, `fullname`, `email`, `place_area`, `venue_name`, `venue_book_status`, `venue_ratings`, `venue_image`, `venue_latitude`, `venue_longitude`, `venue_search`) VALUES
(1, 'Encik Rizal bin Ahmad', 'rizal88@gmail.com', 'UKM', 'Dewan Canselor Tun Razak', 'Unbooked', '5.0', 'dectar.png', '2.93090038831', '101.778783295', 'Dewan Canselor Tun Razak'),
(2, 'Encik Hakim bin Rusli', 'hakim@gmail.com', 'UKM', 'Dewan Gemilang', 'Unbooked', '5.0', 'dewangemilang.png', '2.9309182', '101.78495', 'Dewan Gemilang'),
(3, 'Puan Nabihah binti Nur', 'bihashi@gmail.com', 'UKM', 'Dewan Kolej Aminuddin Baki', 'Booked', '3.0', 'dewankab.png', '2.9254279', '101.7813617', 'Kolej Aminuddin Baki'),
(4, 'Puan Ain Suhaila binti Mansor', 'ain@gmail.com', 'UKM', 'Dewan Kolej Burhanuddin Helmi', 'Unbooked', '3.0', 'dewankbh.png', '2.9274187', '101.7752203', 'Kolej Burhanuddin Helmi'),
(5, 'Encik Amril bin Hafiz', 'amril@gmail.com', 'UKM', 'Dewan Kolej Dato Onn', 'Unbooked', '2.0', 'dewankdo.png', '2.9303899', '101.7783', 'Kolej Dato Onn'),
(6, 'Tuan Hafiz bin Ramli', 'hafizr@gmail.com', 'UKM', 'Dewan Kolej Ibrahim Yaakob', 'Booked', '4.5', 'dewankiy.png', '2.9241427', '101.7764492', 'Kolej Ibrahim Yaakob'),
(7, 'Encik Kamal bin Adli', 'kamal@yahoo.com', 'UKM', 'Dewan Kolej Ibu Zain', 'Unbooked', '5.0', 'dewankiz.png', '2.9304779', '101.781584', 'Kolej Ibu Zain'),
(8, 'Tuan Syafiq bin Asri', 'syafiqas@yahoo.com', 'UKM', 'Dewan Kolej Rahim Kajai', 'Booked', '3.0', 'dewankrk.png', '2.9327697', '101.7825491', 'Kolej Rahim Kajai'),
(9, 'Puan Zubaidah binti Jamal', 'zubad@gmail.com', 'UKM', 'Dewan Kolej Ungku Omar', 'Unbooked', '2.5', 'dewankuo.png', '2.9240179', '101.7779948', 'Kolej Ungku Omar'),
(10, 'Nurul Farhanah', 'nurulfarhanah2000@gmail.com', 'UKM', 'DECTAR', 'Booked', '3.0', 'dewanzaba.png', '2.9195225', '101.7727756', 'Kolej Pendeta Zaaba'),
(11, 'Encik Rizal bin Ahmad', 'nurulfarhanah2000@gmail.com', '31r1', 'Dewan Canselor Tun Razak', 'ksa', '3.0', 'sct.PNG', '3113', '101.778783295', 'Kolej Pendeta Zaaba'),
(12, 'Encik Rizal bin Ahmad', 'kamarul037@gmail.com', 'UKM', 'Dewan Kolej Burhanuddin Helmi 2', 'Booked', '5.0', 'male-female-icon-29.jpg', '2.93090038831', '101.78495', 'Kolej Burhanuddin Helmi'),
(13, 'mmkm', 'kamarul037@gmail.com', 'UKM', 'Dewan Canselor Tun Razak', 'Booked', '3.5', 'icons8-checklist-98.png', '3113', '101.778783295', 'Kolej Pendeta Zaab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_user`
--
ALTER TABLE `ads_user`
  ADD PRIMARY KEY (`ads_id`);

--
-- Indexes for table `booking_user`
--
ALTER TABLE `booking_user`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `crew_user`
--
ALTER TABLE `crew_user`
  ADD PRIMARY KEY (`crew_id`);

--
-- Indexes for table `guest_user`
--
ALTER TABLE `guest_user`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `loginregister_admin`
--
ALTER TABLE `loginregister_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `loginregister_user`
--
ALTER TABLE `loginregister_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_event`
--
ALTER TABLE `update_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_id` (`event_id`,`username`);

--
-- Indexes for table `venue_book`
--
ALTER TABLE `venue_book`
  ADD PRIMARY KEY (`venue_id`);

--
-- Indexes for table `venue_list`
--
ALTER TABLE `venue_list`
  ADD PRIMARY KEY (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_user`
--
ALTER TABLE `ads_user`
  MODIFY `ads_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_user`
--
ALTER TABLE `booking_user`
  MODIFY `booking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `crew_user`
--
ALTER TABLE `crew_user`
  MODIFY `crew_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guest_user`
--
ALTER TABLE `guest_user`
  MODIFY `guest_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loginregister_admin`
--
ALTER TABLE `loginregister_admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loginregister_user`
--
ALTER TABLE `loginregister_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `update_event`
--
ALTER TABLE `update_event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `venue_book`
--
ALTER TABLE `venue_book`
  MODIFY `venue_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `venue_list`
--
ALTER TABLE `venue_list`
  MODIFY `venue_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
