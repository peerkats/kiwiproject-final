-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2024 at 12:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel`
--

CREATE TABLE `adminpanel` (
  `User_name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel`
--

INSERT INTO `adminpanel` (`User_name`, `Password`, `ID`) VALUES
('peer', 'root', 155),
('peer', 'kkkr', 156),
('hello ', 'kkr', 157),
('blabla', 'fff', 158),
('hello ', 'rrrr', 159),
('hello ', 'rrrr', 160),
('peer', 'root', 161);

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `telefoon_nummer` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`telefoon_nummer`, `ID`, `email`) VALUES
(6205849, 168, 'peerkats@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `post` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`post`, `ID`) VALUES
('hoi djalla', 22),
('hoi djalla', 23),
('hoi djalla', 24),
('hoi djalla', 25),
('faq', 26),
('hoi djalla', 27),
('hoi', 29),
('blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla', 33),
('hoi', 34),
('blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla', 36),
('blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla', 37),
('blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla', 38),
('blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla', 39),
('blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla', 40),
('blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla', 41);

-- --------------------------------------------------------

--
-- Table structure for table `nieuws`
--

CREATE TABLE `nieuws` (
  `nieuwsbericht` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nieuws`
--

INSERT INTO `nieuws` (`nieuwsbericht`, `ID`) VALUES
('hello', 7),
('hello', 8),
('kkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkr', 9),
('kkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkrkkkrkrkkrkrkrkrkkrkrkrkrrkrkrkrkrkr', 10);

-- --------------------------------------------------------

--
-- Table structure for table `reparatie_aanvraag`
--

CREATE TABLE `reparatie_aanvraag` (
  `device_type` varchar(20) NOT NULL,
  `computer_naam` varchar(255) NOT NULL,
  `probleem` text NOT NULL,
  `ID` int(255) NOT NULL,
  `contact_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reparatie_aanvraag`
--

INSERT INTO `reparatie_aanvraag` (`device_type`, `computer_naam`, `probleem`, `ID`, `contact_ID`) VALUES
('telefoon', 'damm', 'ffdsfsfsdfdsfd', 195, 168);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminpanel`
--
ALTER TABLE `adminpanel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nieuws`
--
ALTER TABLE `nieuws`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reparatie_aanvraag`
--
ALTER TABLE `reparatie_aanvraag`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminpanel`
--
ALTER TABLE `adminpanel`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `nieuws`
--
ALTER TABLE `nieuws`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reparatie_aanvraag`
--
ALTER TABLE `reparatie_aanvraag`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
