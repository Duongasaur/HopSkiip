-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2014 at 03:45 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hopskiip`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ShortName` varchar(64) CHARACTER SET utf16 NOT NULL,
  `LongName` varchar(240) CHARACTER SET utf16 NOT NULL,
  `Address` varchar(64) CHARACTER SET utf16 NOT NULL,
  `X_Value` double NOT NULL,
  `Y_Value` double NOT NULL,
  `Start` datetime NOT NULL,
  `End` datetime NOT NULL,
  `Cost` int(11) NOT NULL,
  `Adult` int(1) NOT NULL,
  `Contact` varchar(64) CHARACTER SET utf16 NOT NULL,
  `Listed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Approved` varchar(4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`,`X_Value`,`Y_Value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`ID`, `UserID`, `ShortName`, `LongName`, `Address`, `X_Value`, `Y_Value`, `Start`, `End`, `Cost`, `Adult`, `Contact`, `Listed`, `Approved`) VALUES
(4, 1, 'New Event', 'Come to this Event', '123 Home St', -27.477215, 153.011852, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 600, 1, 'Contact', '2014-08-18 18:26:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(64) CHARACTER SET armscii8 NOT NULL,
  `LastName` varchar(64) CHARACTER SET armscii8 NOT NULL,
  `Email` varchar(64) CHARACTER SET armscii8 NOT NULL,
  `Password` varchar(64) CHARACTER SET armscii8 NOT NULL,
  `Premium` varchar(11) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(64) NOT NULL,
  `Bussiness` varchar(64) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FirstName`, `LastName`, `Email`, `Password`, `Premium`, `Phone`, `Address`, `Bussiness`) VALUES
(1, 'Daniel', 'Duong', 'daniel_7543@hotmail.com', 'password', '', 0, '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `relation` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
