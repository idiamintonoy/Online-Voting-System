-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 09:15 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote1`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `lan_id` int(100) NOT NULL,
  `fullname` varchar(10) NOT NULL,
  `about` varchar(255) NOT NULL,
  `votecount` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`lan_id`, `fullname`, `about`, `votecount`) VALUES
(1, 'Rohim', 'Awami League', 11),
(2, 'Korim', 'Bangladesh National party', 6),
(3, 'Mofiz', 'Democrats Bangladesh', 21),
(4, 'Salam', 'Peoples Party', 17),
(5, 'Jabbar', 'National Party', 5);

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

CREATE TABLE `loginusers` (
  `id` int(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rank` varchar(80) NOT NULL DEFAULT 'voter',
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginusers`
--

INSERT INTO `loginusers` (`id`, `username`, `password`, `rank`, `status`) VALUES
(47, 'helllo', 'b373c043b854b0ebb97afe9b0ba47059', 'voter', 'ACTIVE'),
(46, 'jaha', 'e3df9353ab12391b79865f25a0d7068e', 'voter', 'ACTIVE'),
(45, 'action', '1ace9555f0aafb4fe1e75309e8f79e4d', 'voter', 'ACTIVE'),
(44, 'arjun', '451d3eb1573c7ebb70c08dfee9766509', 'voter', 'ACTIVE'),
(43, 'niku19', 'ac61ebbe84c06debaa78c0a832330164', 'voter', 'ACTIVE'),
(42, 'ejjhed', 'b3f70c0d1b269668e937741a5d5797ab', 'voter', 'ACTIVE'),
(41, 'Anirban', '9a7108cfaa7f51efb5fcda9e9d4b7a90', 'voter', 'ACTIVE'),
(40, 'dnddd', 'b5d165334b465a7fc42310750430b3f9', 'voter', 'ACTIVE'),
(48, 'idiamin', 'e10adc3949ba59abbe56e057f20f883e', 'voter', 'ACTIVE'),
(49, 'idiaminKhan', 'e10adc3949ba59abbe56e057f20f883e', 'voter', 'ACTIVE'),
(50, 'labib1', '25d55ad283aa400af464c76d713c07ad', 'voter', 'ACTIVE'),
(51, 'abu1', '733d7be2196ff70efaf6913fc8bdcabf', 'voter', 'ACTIVE'),
(52, 'gini1', '733d7be2196ff70efaf6913fc8bdcabf', 'voter', 'ACTIVE'),
(53, 'kaa1', '733d7be2196ff70efaf6913fc8bdcabf', 'voter', 'ACTIVE'),
(54, 'daud1', '733d7be2196ff70efaf6913fc8bdcabf', 'voter', 'ACTIVE'),
(55, 'lamia1', '733d7be2196ff70efaf6913fc8bdcabf', 'voter', 'ACTIVE'),
(56, 't1', '733d7be2196ff70efaf6913fc8bdcabf', 'voter', 'ACTIVE'),
(57, 's1', 'e10adc3949ba59abbe56e057f20f883e', 'voter', 'ACTIVE'),
(58, 'y1', 'e10adc3949ba59abbe56e057f20f883e', 'voter', 'ACTIVE'),
(59, 'r1', '733d7be2196ff70efaf6913fc8bdcabf', 'voter', 'ACTIVE'),
(60, 'samin1', '733d7be2196ff70efaf6913fc8bdcabf', 'voter', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `voteridnumber` int(10) NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'NOTVOTED',
  `voted` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`firstname`, `lastname`, `username`, `voteridnumber`, `phonenumber`, `status`, `voted`) VALUES
('idiamin', 'Khan', 'idiaminKhan', 0, 0, 'VOTED', 'rohim'),
('idiamin', 'tonoy', 'idiamin', 0, 0, 'VOTED', 'jabbar'),
('ndndnd', 'dhbhdd', 'dnddd', 0, 0, 'NOTVOTED', NULL),
('Labib', 'Wahed', 'labib1', 0, 0, 'VOTED', 'rohim'),
('Abu ', 'daud', 'abu1', 1478523691, 1616257210, 'VOTED', 'rohim'),
('gini', 'farzana', 'gini1', 521515020, 15151623, 'NOTVOTED', NULL),
('kashem', 'kaa', 'kaa1', 1478523678, 26212062, 'NOTVOTED', NULL),
('abu', 'daud', 'daud1', 789456125, 1589963, 'NOTVOTED', NULL),
('lamia', 'bushra', 'lamia1', 78948582, 451649162, 'NOTVOTED', NULL),
('tahmid', 'rahman', 't1', 184151816, 11842616, 'NOTVOTED', NULL),
('shafin', 'ahmed', 's1', 15151925, 15186238, 'VOTED', 'rohim'),
('ramim', 'yasin', 'y1', 1556292623, 12522926, 'VOTED', 'rohim'),
('shaheen', 'rahman', 'r1', 145621862, 2147483647, 'NOTVOTED', NULL),
('samin', 'rahman', 'samin1', 2147483647, 1516526236, 'VOTED', 'rohim');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`lan_id`);

--
-- Indexes for table `loginusers`
--
ALTER TABLE `loginusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `lan_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loginusers`
--
ALTER TABLE `loginusers`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
