-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 08:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service`
--

-- --------------------------------------------------------

--
-- Table structure for table `chama`
--

CREATE TABLE `chama` (
  `Id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) NOT NULL,
  `phone` text NOT NULL,
  `email` varchar(70) NOT NULL,
  `number` int(7) NOT NULL,
  `chama` varchar(700) NOT NULL,
  `goals` varchar(3000) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `Location` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chama`
--

INSERT INTO `chama` (`Id`, `name`, `phone`, `email`, `number`, `chama`, `goals`, `date`, `time`, `Location`) VALUES
(3, 'John Mbuthia', 'phone', 'John@gmail.com', 12, 'dfffffffff', 'dddddddddfggggvc', '2023-07-27', '13:57:00', 'physical location at art galary'),
(4, 'Reagan', 'phone', 'reagan@gmail.com', 10, 'jijenge sacco', 'kuimarisha kila mmjoja', '2023-07-25', '16:14:00', 'virtual');

-- --------------------------------------------------------

--
-- Table structure for table `corporate`
--

CREATE TABLE `corporate` (
  `Id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) NOT NULL,
  `phone` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `org_name` varchar(100) NOT NULL,
  `number` int(7) NOT NULL,
  `hours` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `corporate`
--

INSERT INTO `corporate` (`Id`, `name`, `phone`, `email`, `org_name`, `number`, `hours`, `date`, `time`, `location`) VALUES
(1, 'John Mbuthia', 'phone', 'John@gmail.com', 'W_Istreet', 77, '2 hours', '2023-07-27', '14:24:00.000000', 'Physical at art galary\r\n'),
(2, 'bggg', 'phone', 'John@gmail.com', 'ghhhhh', 14, '6', '2023-07-17', '08:35:00.000000', 'ggghhhhh');

-- --------------------------------------------------------

--
-- Table structure for table `speaking`
--

CREATE TABLE `speaking` (
  `Id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) NOT NULL,
  `phone` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `org_name` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `number` int(7) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `location` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `speaking`
--

INSERT INTO `speaking` (`Id`, `name`, `phone`, `email`, `org_name`, `title`, `number`, `date`, `time`, `location`) VALUES
(1, 'John Mbuthia', '+254704436334', 'John@gmail.com', 'ddddaaa', 'ffwsss', 18, '2023-07-27', '08:37:00.000000', 'sssssss'),
(2, 'John Mbuthia', '+254704436334', 'John@gmail.com', 'ddddaaa', 'ffwsss', 18, '2023-07-27', '08:37:00.000000', 'sssssss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chama`
--
ALTER TABLE `chama`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `corporate`
--
ALTER TABLE `corporate`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `speaking`
--
ALTER TABLE `speaking`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chama`
--
ALTER TABLE `chama`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `corporate`
--
ALTER TABLE `corporate`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `speaking`
--
ALTER TABLE `speaking`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
