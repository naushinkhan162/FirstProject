-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 06:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `ID` int(11) NOT NULL,
  `Path` varchar(255) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Keywords` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`ID`, `Path`, `Name`, `Keywords`, `user_id`) VALUES
(1, 'http://localhost/cc/documents/Android Google Map Displaying Current Location.docx', 'Android Location API', 'android, location', 0),
(2, 'http://localhost/cc/documents/Steps To Create Devise Current Location In Android1.docx', 'steps', 'steps', 0),
(3, 'http://saas.epizy.com/documents/Synopsis Research paper.docx', 'synopsis', 'synopsis', 0),
(4, 'http://localhost/cc/documents/Learnability.docx', 'UID', 'UID', 0),
(5, 'http://localhost/cc/documents/N408.doc', 'keyword', 'keyword', 0),
(6, 'http://localhost/cc/documents/TRAVEL PLANNER.docx', 'travel planner', 'travel planner', 0),
(7, 'http://localhost/cc/documents/Learnability.docx', 'learnability', 'learnability', 1),
(8, 'http://localhost/cc/documents/TRAVEL PLANNER.docx', 'travel planner', 'travel planner', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
