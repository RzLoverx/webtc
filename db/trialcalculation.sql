-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 30, 2020 at 09:25 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trialcalculation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankofficer`
--

DROP TABLE IF EXISTS `bankofficer`;
CREATE TABLE IF NOT EXISTS `bankofficer` (
  `BankOfficerID` int(11) NOT NULL AUTO_INCREMENT,
  `BankOfficerName` varchar(100) NOT NULL,
  `BankOfficerNIC` varchar(15) NOT NULL,
  `BankOfficerContact` varchar(15) NOT NULL,
  PRIMARY KEY (`BankOfficerID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankofficer`
--

INSERT INTO `bankofficer` (`BankOfficerID`, `BankOfficerName`, `BankOfficerNIC`, `BankOfficerContact`) VALUES
(1, 'Pasindu Ariyarathne', '972473375V', '0771931385');

-- --------------------------------------------------------

--
-- Table structure for table `bankofficerlogging`
--

DROP TABLE IF EXISTS `bankofficerlogging`;
CREATE TABLE IF NOT EXISTS `bankofficerlogging` (
  `BankOfficerID` int(11) NOT NULL AUTO_INCREMENT,
  `BankOfficerUname` varchar(100) NOT NULL,
  `BankOfficerPassword` varchar(100) NOT NULL,
  PRIMARY KEY (`BankOfficerID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankofficerlogging`
--

INSERT INTO `bankofficerlogging` (`BankOfficerID`, `BankOfficerUname`, `BankOfficerPassword`) VALUES
(1, 'rzpasi', 'pasi123');

-- --------------------------------------------------------

--
-- Table structure for table `prospect`
--

DROP TABLE IF EXISTS `prospect`;
CREATE TABLE IF NOT EXISTS `prospect` (
  `ProspectID` int(11) NOT NULL AUTO_INCREMENT,
  `ProspectName` varchar(100) NOT NULL,
  `ProspectNIC` varchar(15) NOT NULL,
  `ProspectAddress` varchar(200) NOT NULL,
  PRIMARY KEY (`ProspectID`),
  UNIQUE KEY `ProspectNIC` (`ProspectNIC`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prospect`
--

INSERT INTO `prospect` (`ProspectID`, `ProspectName`, `ProspectNIC`, `ProspectAddress`) VALUES
(8, 'pasindu', '972473375v', 'panadura');

-- --------------------------------------------------------

--
-- Table structure for table `repayment`
--

DROP TABLE IF EXISTS `repayment`;
CREATE TABLE IF NOT EXISTS `repayment` (
  `repayment_id` int(11) NOT NULL AUTO_INCREMENT,
  `TC_ID` int(11) NOT NULL,
  `rental_no` int(11) NOT NULL,
  `rental_value` int(11) DEFAULT NULL,
  `interestAmount` int(11) DEFAULT NULL,
  `capitalAmount` int(11) DEFAULT NULL,
  `capitalBalance` int(11) NOT NULL,
  PRIMARY KEY (`repayment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repayment`
--

INSERT INTO `repayment` (`repayment_id`, `TC_ID`, `rental_no`, `rental_value`, `interestAmount`, `capitalAmount`, `capitalBalance`) VALUES
(198, 24, 15, 14425, 420, 14005, 28000),
(197, 24, 14, 14425, 560, 13865, 42000),
(196, 24, 13, 14425, 700, 13725, 56000),
(195, 24, 12, 14425, 840, 13585, 70000),
(194, 24, 11, 14425, 970, 13455, 84000),
(193, 24, 10, 14425, 1100, 13325, 97000),
(192, 24, 9, 14425, 1200, 13225, 110000),
(191, 24, 8, 14425, 1300, 13125, 120000),
(190, 24, 7, 14425, 1400, 13025, 130000),
(189, 24, 6, 14425, 1500, 12925, 140000),
(188, 24, 5, 14425, 1600, 12825, 150000),
(187, 24, 4, 14425, 1700, 12725, 160000),
(186, 24, 3, 14425, 1800, 12625, 170000),
(185, 24, 2, 14425, 1900, 12525, 180000),
(184, 24, 1, 14425, 2000, 12425, 190000),
(183, 24, 0, NULL, NULL, 0, 200000),
(182, 24, 15, 14425, 420, 14005, 28000),
(181, 24, 14, 14425, 560, 13865, 42000),
(180, 24, 13, 14425, 700, 13725, 56000),
(179, 24, 12, 14425, 840, 13585, 70000),
(178, 24, 11, 14425, 970, 13455, 84000),
(177, 24, 10, 14425, 1100, 13325, 97000),
(176, 24, 9, 14425, 1200, 13225, 110000),
(175, 24, 8, 14425, 1300, 13125, 120000),
(174, 24, 7, 14425, 1400, 13025, 130000),
(173, 24, 6, 14425, 1500, 12925, 140000),
(172, 24, 5, 14425, 1600, 12825, 150000),
(171, 24, 4, 14425, 1700, 12725, 160000),
(170, 24, 3, 14425, 1800, 12625, 170000),
(169, 24, 2, 14425, 1900, 12525, 180000),
(168, 24, 1, 14425, 2000, 12425, 190000),
(167, 24, 0, NULL, NULL, 0, 200000),
(141, 24, 3, 8885, 840, 8045, 76000),
(140, 24, 2, 8885, 920, 7965, 84000),
(139, 24, 1, 8885, 1000, 7885, 92000),
(138, 24, 0, NULL, NULL, 0, 100000),
(137, 24, 12, 8885, 93, 8792, 510),
(136, 24, 11, 8885, 180, 8705, 9300),
(135, 24, 10, 8885, 270, 8615, 18000),
(134, 24, 9, 8885, 360, 8525, 27000),
(133, 24, 8, 8885, 440, 8445, 36000),
(132, 24, 7, 8885, 520, 8365, 44000),
(131, 24, 6, 8885, 600, 8285, 52000),
(130, 24, 5, 8885, 680, 8205, 60000),
(129, 24, 4, 8885, 760, 8125, 68000),
(128, 24, 3, 8885, 840, 8045, 76000),
(127, 24, 2, 8885, 920, 7965, 84000),
(126, 24, 1, 8885, 1000, 7885, 92000),
(125, 24, 0, NULL, NULL, 0, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tc`
--

DROP TABLE IF EXISTS `tc`;
CREATE TABLE IF NOT EXISTS `tc` (
  `TC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `P_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `LoanAmount` double NOT NULL,
  `InterestRate` double NOT NULL,
  `NoOfPeriod` int(11) NOT NULL,
  `RentelAmount` double NOT NULL,
  PRIMARY KEY (`TC_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc`
--

INSERT INTO `tc` (`TC_ID`, `P_ID`, `Date`, `LoanAmount`, `InterestRate`, `NoOfPeriod`, `RentelAmount`) VALUES
(28, 8, '2020-11-30', 200000, 12, 15, 14424.76),
(27, 8, '2020-11-30', 200000, 12, 15, 14424.76),
(26, 7, '2020-11-30', 200000, 12, 15, 14424.76),
(25, 7, '2020-11-30', 100000, 12, 12, 8884.88),
(24, 7, '2020-11-30', 100000, 12, 12, 8884.88);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
