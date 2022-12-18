-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 06:31 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(8) NOT NULL,
  `a_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `otp` varchar(8) NOT NULL,
  `otp_used` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `email`, `password`, `contact_no`, `otp`, `otp_used`) VALUES
(1, 'Raj Pillai', 'admin@gmail.com', 'admin123', '9934567824', '594582', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `b_id` int(8) NOT NULL,
  `c_id` int(8) NOT NULL,
  `s_id` int(11) NOT NULL,
  `b_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `total_amount` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `b_status` int(1) NOT NULL,
  `p_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`b_id`, `c_id`, `s_id`, `b_date`, `total_amount`, `quantity`, `b_status`, `p_status`) VALUES
(20, 2, 19, '2019-11-29 10:11:18', 1000, 2, 3, 0),
(21, 2, 20, '2019-11-29 10:40:16', 3200, 4, 3, 0),
(22, 2, 21, '2020-01-08 10:56:22', 2400, 4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(8) NOT NULL,
  `name` varchar(20) NOT NULL,
  `des` varchar(255) NOT NULL,
  `g_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `des`, `g_id`) VALUES
(11, 'Security service', 'safety', 22);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(8) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL,
  `otp` varchar(8) NOT NULL,
  `otp_used` varchar(8) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `first_name`, `last_name`, `email`, `password`, `gender`, `contact_no`, `address`, `create_date`, `is_active`, `otp`, `otp_used`, `is_admin`) VALUES
(1, 'Raj', 'Pillai', 'admin@gmail.com', 'admin123', 1, '9923566495', 'sundar singh ki chali,bhargav road,kuber nagar ahmedabad.', '2019-11-17 10:53:40', 1, '', '', 1),
(2, 'Pankaj', 'Kalal', 'pankajkalal383@gmail.com', 'pankaj1998', 1, '8424876288', '123,ram singh ki chali,vidhyanagar,bhargav road,ahmedabad', '2019-11-29 04:56:48', 1, '367935', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(8) NOT NULL,
  `c_id` int(8) NOT NULL,
  `s_id` int(8) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `c_id`, `s_id`, `feedback`, `date`) VALUES
(8, 2, 9, 'bodyguard service is so good.', '2019-11-17 11:05:59'),
(9, 2, 19, 'service is best. guard is humble.\r\n', '2019-11-29 04:32:36'),
(10, 2, 21, 'very best service for home and offices.', '2019-11-29 04:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`g_id`, `path`) VALUES
(10, 'armedguard.jpg'),
(11, 'bodyguard.jpg'),
(18, 'unarmedguard.jpg'),
(22, 'securitycat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `i_id` int(8) NOT NULL,
  `customer_name` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `inquiry` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `done` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`i_id`, `customer_name`, `email`, `contact_no`, `inquiry`, `ans`, `create_date`, `done`) VALUES
(8, 'chintak dosh', 'chintakd999@gmail.com', '9867544325', 'Security services are available outside gujarat.', 'not', '2019-11-17 11:10:01', 0),
(11, 'raj', 'pillaipadmanaban@gmail.com', '9925066495', 'dafgs', '', '2019-11-28 16:56:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `card` varchar(16) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` int(9) NOT NULL,
  `exdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `s_id` int(8) NOT NULL,
  `id` int(8) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `g_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`s_id`, `id`, `s_name`, `price`, `description`, `g_id`) VALUES
(19, 11, 'Bodyguard', 1000, 'Personal safety for vip and celebrity.', 11),
(20, 11, 'Armedguard', 800, 'Guard with weapon for your personal and events safety.', 10),
(21, 11, 'Unarmedguard', 600, 'Guard for your home,society and events safety.', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `b_id` (`b_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `b_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `i_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `s_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`s_id`) REFERENCES `service` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `bookings` (`b_id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
