-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2020 at 05:26 AM
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
  `Company` varchar(100) NOT NULL,
  `id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abc`
--

INSERT INTO `abc` (`skill`, `Job`, `Company`, `id`) VALUES
('DataEntry\r\n', 'Administrative', 'SunTec India', '1'),
('Billing', 'Administrative', 'Open Access BPO', '2'),
('Scheduling', 'Administrative', 'VirtusaPolaris', '3'),
('MSOffice', 'Administrative', 'Virtual Employee', '4'),
('QuickBooks', 'Administrative', 'Invensi', '5'),
('Shipping', 'Administrative', 'Unity Communications', '6'),
('', '', '', NULL),
('CustomerNeedsAnalysis', 'Sales, Customer Service', '', '7'),
('ContractNegotiation', 'Retail', 'sensussoft', '8'),
('SelfMotivation', 'Sales', 'WebFlux Solutions', '9'),
('CRMSoftware', 'Customer Service', 'byjus', '10'),
('ProgrammingLanguages', 'Programmer', 'Click labs', '11'),
('WebDevelopment', 'Web Designer', 'College Duniya', '12'),
('Data Structures', 'Developer', 'click lab', '13'),
('Security', 'Cyber security', 'lucidious technology', '14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
