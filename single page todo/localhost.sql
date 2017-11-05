-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2017 at 12:33 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id3300961_demo`
--
CREATE DATABASE IF NOT EXISTS `id3300961_demo` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id3300961_demo`;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `task` text NOT NULL,
  `status` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`taskid`, `userid`, `task`, `status`) VALUES
(62, 13, 'go to collag', 'complet'),
(63, 24, 'exm', 'done'),
(64, 24, 'exam2', 'going on');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `userpassword` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `lname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `userpassword`, `email`, `lname`) VALUES
(11, 'ankush', '$2y$10$R3nzUMTbT5PsE2T5AEhh6usZ/hhCpBtxksKLIfF0pUxX8tKI4Q8p.', 'ankushchalotra@gmail.com', 'chalotra'),
(13, 'ankushchalotra58', '$2y$10$.6RHhQkt6Dot57rvX6xn6.CliRwUXvrqCTCniGQQExqb4NQmbQE66', 'ankushchalotra58@gmail.com', 'chalotra'),
(14, 'ankushchalotra58', '$2y$10$g8F8GVIL0LSU4PmoqKyamuqalDK9bsnozW2rN1LDfe.ckff4RmSJm', 'ankushchalotra581@gmail.com', 'chalotra'),
(15, 'ankush', '$2y$10$lgBn6RkT/krztTWMp4iwjueVQZt/ckr3XJxaYk9ceJHWdSAHaYd4O', 'ankushchalotra9@gmail.com', 'chalotra'),
(16, 'ankush98878', '$2y$10$d644TKw8EzZnblSXDTmsHuUaiRvjQizuhSAxCGSomjKet1a8o7xWS', 'chalotrasanjeev@gmail.com', 'chalotra'),
(17, 'ankush98878', '$2y$10$E2nsH7PdFPJrcYrxltFuqe8YKRrzU7b/bnQHFBkiAQSaodTN/BsIu', 'chalotrasanjeebv@gmail.com', 'chalotra'),
(18, 'chalotra', '$2y$10$4XztnvySJXJC3I8RgZ3SfeQPawlDZ48dP96YrGpaUtvxFaHSAfV32', 'chalotra1@gmail.com', 'chalotra'),
(19, 'opt4@lpu.com', '$2y$10$aiNiVWK9XZePp0X2cLyz1eGs77T2cSWEDp3KiRJmrk6IVUfyLqe22', 'anku1shchalotra581@gmail.com', 'chalotra'),
(20, 'aj', '$2y$10$WMwo23HmdJAkfbjA.guy9u.X140Vsy35hLZeS/zJBhh4FimFhyWmy', 'callmeaju@gmail.com', 'm'),
(21, 'john', '$2y$10$E5aYqpBJdMVIYdmIwl/yoewBYNbkzTAQwsYBoXdy0SXFYftI5Gr6a', 'johndoe@gmail.com', 'Doe'),
(22, 'jaycrive', '$2y$10$hwn17.4YgUy.z34OSO1Es.3KodHpbkJ3h6AfZopAxKkBq/XJa5CX.', 'jay@crive.me', 'Crive'),
(23, 'Sunil_1293', '$2y$10$/ekGiUmMuc7px6Yh/v3/Pugz9f6aMgP./JCXD2zKlXmKpHbBwm/iq', 'sunil.sonu112@gmail.com', 'Pandey'),
(24, 'ajmal', '$2y$10$CZCejpqWcLA7WVY05Vfy5OxtwaC9p3RMt.nqwPVMw.YxG0UL4lVNm', 'ajmalnknadapuram@gmail.com', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`taskid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
