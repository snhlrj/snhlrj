-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2020 at 05:02 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abc`
--

DROP TABLE IF EXISTS `abc`;
CREATE TABLE IF NOT EXISTS `abc` (
  `skill` varchar(100) NOT NULL,
  `Job` varchar(100) NOT NULL,
  `Company` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abc`
--

INSERT INTO `abc` (`skill`, `Job`, `Company`) VALUES
('Data Entry\r\n', 'Administrative', 'Silver Leaf'),
('Billing', 'Administrative', 'Silver Leaf'),
('MS Office\r\n', 'Administrative', ''),
('Office Equipment\r\n', 'Administrative', ''),
('Product Knowledge', 'Sales, Retail, and Customer Service', 'Byjus,Scripted'),
('Lead Qualification', 'Sales, Retail, and Customer Service', 'Brafton,Skyword'),
('Self Motivation', 'Sales, Retail, and Customer Service', 'Influence & Co'),
('Programming Languages\r\n', 'IT(Programmer)', 'Click Lab'),
('Web Development\r\n', 'IT(Web Designer)', 'Free Lancer'),
('Data Structures\r\n', 'IT(Developer)', 'Amazon'),
('Security', 'IT(Cyber security)', 'Lucidious tech');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
