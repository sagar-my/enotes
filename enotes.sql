-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 10:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `Title`, `content`, `date`, `uid`) VALUES
(1, 'what is java ', 'java is a language ', '2023-06-28 08:38:03.055271', 1),
(2, 'what isc', 'c is a Programming language. ', '2023-06-28 08:38:13.765646', 1),
(3, 'what is c ', 'Programming lanuguage ', '2023-06-28 09:22:26.607585', 2),
(4, 'what is python', 'python is a programming language', '2023-06-29 06:57:07.789862', 1),
(5, 'what is react js', 'React js is used for front-end development language.', '2023-06-29 07:07:41.580277', 1),
(6, 'what  is node js', 'node js is mern technology ', '2023-07-22 05:53:14.297564', 1),
(7, 'C++', 'C++ is a computer programming Language Using c++ we can write wide variety of program', '2023-07-24 08:04:02.098953', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `Id` int(11) NOT NULL,
  `Fullname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`Id`, `Fullname`, `email`, `password`) VALUES
(1, 'Sagar Chaudhary', 'sagar.chaudhary25008@gmail.com', 'sagar@123'),
(2, 'Ashish', 'rahul@123.com', '12345'),
(3, 'Ashok', 'asa@yahoo.com', 'admimadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_detail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
