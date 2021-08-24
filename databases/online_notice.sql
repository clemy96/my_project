-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 10:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_notice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'clemy@gmail.com', 'clemy1996');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `user`, `subject`, `Description`, `Date`) VALUES
(4, 'doline@gmail.com', 'networking', 'We \r\nhave a cat of networking tomorrow \r\nplease study ', '2021-08-14 13:25:53'),
(5, 'doline@gmail.com', 'Lenovo', 'lenovo is  a good computer', '2021-08-14 13:29:03'),
(6, 'doline@gmail.com', 'hello there', 'here we are just giving a second notice', '2021-08-14 13:30:04'),
(7, 'clemyy@gmail.com', 'meetting', 'I will meet with you tomorrow', '2021-08-17 13:19:00'),
(8, 'clarissen@gmail.com', 'assignment', 'hello Clarisse you will do a cat of networking at 12:30h', '2021-08-17 13:58:27'),
(9, 'clarissen@gmail.com', 'hello clarisse', 'you will a cat at 1:00h', '2021-08-17 14:02:35'),
(10, 'clarissen@gmail.com', 'hy', 'i will meet with you next week', '2021-08-17 15:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` datetime NOT NULL,
  `regid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(1, 'John Smith', 'john@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 12345, 'm', 'singin', 'person.jpg', '1968-10-17 00:00:00', 2147483647),
(2, 'Claire Redfield', 'claire@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 999999999, 'f', 'playing', 'person.jpg', '1965-10-18 00:00:00', 2147483647),
(3, 'Doline', 'doline@gmail.com', 'fa5fbd92ccdc7a69fe75c14dd3912b92', 780409812, 'f', 'reading,singin', 'IMG_20201007_131157_6.jpg', '2010-07-02 00:00:00', 2147483647),
(4, 'ishimael', 'ishimael@gmail.com', 'fa5fbd92ccdc7a69fe75c14dd3912b92', 788434350, 'm', 'singin', 'IMG_20200503_104355_9.jpg', '1952-02-02 00:00:00', 2147483647),
(6, 'clementine', 'clemyy@gmail.com', 'ac0ddf9e65d57b6a56b2453386cd5db5', 7887654, 'f', 'reading,singin', 'IMG_20200505_064531_8.jpg', '1950-06-04 00:00:00', 2147483647),
(7, 'Clarisse', 'clarissen@gmail.com', 'd1245dea3f7b200f44f27d0d4996f448', 7888345, 'f', 'reading', 'IMG_20200714_111511_7.jpg', '1954-04-07 00:00:00', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
