-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 01:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telephone_billing_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(5) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `user_id` varchar(5) NOT NULL,
  `password` varchar(15) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `pin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `november`
--

CREATE TABLE `november` (
  `bill_id` varchar(5) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `tmin` varchar(10) NOT NULL,
  `tdata` varchar(10) NOT NULL,
  `no_of_calls` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `october`
--

CREATE TABLE `october` (
  `bill_id` varchar(5) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `tmin` varchar(10) NOT NULL,
  `tdata` varchar(10) NOT NULL,
  `no_of_calls` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `september`
--

CREATE TABLE `september` (
  `bill_id` varchar(5) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `tmin` varchar(10) NOT NULL,
  `tdata` varchar(10) NOT NULL,
  `no_of_calls` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_id`,`phone_no`);

--
-- Indexes for table `november`
--
ALTER TABLE `november`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `user_id` (`user_id`,`phone_no`);

--
-- Indexes for table `october`
--
ALTER TABLE `october`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `user_id` (`user_id`,`phone_no`);

--
-- Indexes for table `september`
--
ALTER TABLE `september`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `user_id` (`user_id`,`phone_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `november`
--
ALTER TABLE `november`
  ADD CONSTRAINT `november_ibfk_1` FOREIGN KEY (`user_id`,`phone_no`) REFERENCES `customer` (`user_id`, `phone_no`);

--
-- Constraints for table `october`
--
ALTER TABLE `october`
  ADD CONSTRAINT `october_ibfk_1` FOREIGN KEY (`user_id`,`phone_no`) REFERENCES `customer` (`user_id`, `phone_no`);

--
-- Constraints for table `september`
--
ALTER TABLE `september`
  ADD CONSTRAINT `september_ibfk_1` FOREIGN KEY (`user_id`,`phone_no`) REFERENCES `customer` (`user_id`, `phone_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
