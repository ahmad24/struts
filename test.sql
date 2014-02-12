-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 06:34 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, ' O. Henry'),
(2, ' O. Henry'),
(3, ' O. Henry'),
(4, ' O. Henry'),
(5, ' O. Henry'),
(6, ' O. Henry'),
(7, ' O. Henry'),
(8, ' O. Henry'),
(9, ' O. Henry'),
(10, ' O. Henry'),
(11, ' O. Henry'),
(12, ' O. Henry'),
(13, ' O. Henry'),
(14, ' O. Henry'),
(15, ' O. Henry'),
(16, ' O. Henry'),
(17, ' O. Henry'),
(18, ' O. Henry'),
(19, ' O. Henry'),
(20, ' O. Henry'),
(21, ' O. Henry'),
(22, ' O. Henry'),
(23, ' O. Henry'),
(24, ' O. Henry'),
(25, ' O. Henry'),
(26, ' O. Henry'),
(27, ' O. Henry'),
(28, ' O. Henry'),
(29, ' O. Henry'),
(30, ' O. Henry'),
(31, ' O. Henry');

-- --------------------------------------------------------

--
-- Table structure for table `biographies`
--

CREATE TABLE IF NOT EXISTS `biographies` (
  `author_id` int(11) NOT NULL,
  `information` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biographies`
--

INSERT INTO `biographies` (`author_id`, `information`) VALUES
(1, 'William Sydney Porter  better known as O. Henry...'),
(2, 'William Sydney Porter  better known as O. Henry...'),
(3, 'William Sydney Porter  better known as O. Henry...'),
(4, 'William Sydney Porter  better known as O. Henry...'),
(5, 'William Sydney Porter  better known as O. Henry...'),
(6, 'William Sydney Porter  better known as O. Henry...'),
(7, 'William Sydney Porter  better known as O. Henry...'),
(8, 'William Sydney Porter  better known as O. Henry...'),
(9, 'William Sydney Porter  better known as O. Henry...'),
(10, 'William Sydney Porter  better known as O. Henry...'),
(11, 'William Sydney Porter  better known as O. Henry...'),
(12, 'William Sydney Porter  better known as O. Henry...'),
(13, 'William Sydney Porter  better known as O. Henry...'),
(14, 'William Sydney Porter  better known as O. Henry...'),
(15, 'William Sydney Porter  better known as O. Henry...'),
(16, 'William Sydney Porter  better known as O. Henry...'),
(17, 'William Sydney Porter  better known as O. Henry...'),
(18, 'William Sydney Porter  better known as O. Henry...'),
(19, 'William Sydney Porter  better known as O. Henry...'),
(20, 'William Sydney Porter  better known as O. Henry...'),
(21, 'William Sydney Porter  better known as O. Henry...'),
(22, 'William Sydney Porter  better known as O. Henry...'),
(23, 'William Sydney Porter  better known as O. Henry...'),
(24, 'William Sydney Porter  better known as O. Henry...'),
(25, 'William Sydney Porter  better known as O. Henry...'),
(26, 'William Sydney Porter  better known as O. Henry...'),
(27, 'William Sydney Porter  better known as O. Henry...'),
(28, 'William Sydney Porter  better known as O. Henry...'),
(29, 'William Sydney Porter  better known as O. Henry...'),
(30, 'William Sydney Porter  better known as O. Henry...'),
(31, 'William Sydney Porter  better known as O. Henry...');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `cell_no` varchar(15) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `firstname`, `lastname`, `cell_no`, `email_id`, `website`, `birthdate`, `created`) VALUES
(21, 'Beverly333', 'Hills4444', '234234', 'Ahmad_7749@veryrealemail.com', '', NULL, '2014-01-10 21:35:54'),
(22, 'Beverly333', 'Hills4444', '234234', 'Ahmad_7749@veryrealemail.com', '', NULL, '2014-01-10 21:37:47'),
(24, 'Beverly', 'Hills', '234234', 'Ahmad_7749@veryrealemail.com', 'Fampq', NULL, '2014-02-12 18:03:46'),
(25, 'Beverly12', 'Hills', '234234', 'Ahmad_7749@veryrealemail.com', 'Fampq', NULL, '2014-02-12 18:03:55'),
(26, '', '', '', '', '', NULL, '2014-02-12 18:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `contacts2`
--

CREATE TABLE IF NOT EXISTS `contacts2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `EVENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EVENT_DATE` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(255) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE294C1B22533CCA` (`team_id`),
  KEY `FKE294C1B2403F6DF1` (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `lastname`, `team_id`) VALUES
(1, 'Xavi', 1),
(2, 'Messi', 1),
(3, 'Xavi', 2),
(4, 'Messi', 2),
(5, 'Xavi', 3),
(6, 'Messi', 3),
(7, 'Messi', 4),
(8, 'Xavi', 4),
(9, 'Messi', 15),
(10, 'Xavi', 15),
(11, 'Xavi', 16),
(12, 'Messi', 16),
(13, 'Xavi', 17),
(14, 'Messi', 17),
(15, 'Xavi', 18),
(16, 'Messi', 18),
(17, 'Xavi', 19),
(18, 'Messi', 19),
(19, 'Xavi', 20),
(20, 'Messi', 20),
(21, 'Messi', 21),
(22, 'Xavi', 21),
(23, 'Messi', 22),
(24, 'Xavi', 22),
(25, 'Messi', 23),
(26, 'Xavi', 23),
(27, 'Xavi', 24),
(28, 'Messi', 24),
(29, 'Xavi', 25),
(30, 'Messi', 25),
(31, 'Xavi', 26),
(32, 'Messi', 26),
(33, 'Xavi', 27),
(34, 'Messi', 27),
(35, 'Messi', 28),
(36, 'Xavi', 28),
(37, 'Xavi', 29),
(38, 'Messi', 29),
(39, 'Messi', 30),
(40, 'Xavi', 30),
(41, 'Xavi', 31),
(42, 'Messi', 31),
(43, 'Messi', 32),
(44, 'Xavi', 32),
(45, 'Messi', 33),
(46, 'Xavi', 33),
(47, 'Messi', 34),
(48, 'Xavi', 34),
(49, 'Messi', 35),
(50, 'Xavi', 35),
(51, 'Messi', 36),
(52, 'Xavi', 36),
(53, 'Xavi', 37),
(54, 'Messi', 37),
(55, 'Xavi', 38),
(56, 'Messi', 38);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentId` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(55) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `yearLevel` int(11) NOT NULL DEFAULT '0',
  `marks` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `firstname`, `lastname`, `yearLevel`, `marks`, `id`, `first_name`, `last_name`) VALUES
(1, 'Ahmad', 'NabulsiEdit', 107, NULL, 0, NULL, NULL),
(2, 'Ahmad', 'Nabulsin', 100, NULL, 0, NULL, NULL),
(3, 'Ahmad23', 'NabulsiEdit', 107, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`) VALUES
(1, 'Demo'),
(2, 'Barcelona24'),
(3, 'Rock'),
(4, 'Root'),
(5, 'Box Massage23'),
(6, 'Box Massage'),
(14, 'Box Massage13'),
(15, 'Root'),
(16, 'Root'),
(17, 'Root'),
(18, 'Root'),
(19, 'Root'),
(20, 'Root'),
(21, 'Root'),
(22, 'Root'),
(23, 'Root'),
(24, 'Root'),
(25, 'Root'),
(26, 'Root'),
(27, 'Root'),
(28, 'Root'),
(29, 'Root'),
(30, 'Root'),
(31, 'Root'),
(32, 'Root'),
(33, 'Root'),
(34, 'Root'),
(35, 'Root'),
(36, 'Root'),
(37, 'Root'),
(38, 'Root');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `FKE294C1B22533CCA` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `FKE294C1B2403F6DF1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
