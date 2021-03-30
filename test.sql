-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 07:30 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Username`, `Password`) VALUES
(0, 'Admin', '321');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `name`, `Email`, `message`) VALUES
(1, 'Mehvish', 'mehvish.ms11@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `ID` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `docname` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `mininvestment` int(100) NOT NULL,
  `maxinvestment` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`ID`, `description`, `docname`, `path`, `mininvestment`, `maxinvestment`, `email`, `date`, `user_id`) VALUES
(1, 'This the website created to provide a platform for enterpreneurs and investors to interact with each other inorder to grow thw business', 'Website', 'http://localhost/Login/documents/04Janoscova.pdf', 20000, 30000, 'mehvish.ms11@gmail.com', '2020-03-07 15:30:03', 1),
(2, 'pothole detection technique is the necessity in the country like india because most of the local life here is suffering from this isse', 'startups', 'http://localhost/Login/documents/ML_Setup.pdf', 15000, 20000, 'mehvish.ms11@gmail.com', '2020-03-07 15:34:05', 3),
(4, 'Controlling traffic is one of the main problem in our city.', 'Traffic management', 'http://localhost/Login/documents/ML_Setup.pdf', 30000, 35000, 'adil@gmail.com', '2020-03-08 10:54:08', 1),
(5, 'test description', 'test', 'http://localhost/Login/documents/ch1-topic-deployment-models.pdf', 23300, 23, 'usman@gmail.com', '2020-03-08 12:43:13', 6),
(6, 'this is a website', 'mental disorder', 'http://localhost/Login/documents/collaboration.pdf', 25000, 30000, 'mehvish@gmail.com', '2020-03-18 15:08:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`ID`, `name`, `company`, `description`, `email`, `Password`, `path`) VALUES
(1, 'Mehvish', 'Infosys', 'Hello this is Mehvish shaikh working as a web developer at Infosys', 'mehvish.ms67@gmail.com', '321', 'http://localhost/hackathon/images/person-sign.jpg'),
(3, 'humairaa', 'TCS', 'Hello this is Humairaa shaikh working as a web developer at TCS', 'humairaashaikh186@gmail.com', '654', 'http://localhost/hackathon/images/admin.png'),
(4, 'aziz', 'accenture', 'This is java developer at accenture', 'aziz@gmail.com', '7797', 'http://localhost/hackathon/images/person-sign.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pitch`
--

CREATE TABLE `pitch` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `investor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pitch`
--

INSERT INTO `pitch` (`ID`, `name`, `amount`, `email`, `investor_id`) VALUES
(1, 'website', 10000, 'mehvish.ms67@gmail.com', 1),
(3, 'Pothole detection', 15000, 'humairaashaikh186@gmail.com', 3),
(4, 'startups', 20000, 'aziz@gmail.com', 1),
(5, 'pothole', 20000, 'abc@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `Username`, `Email`, `Password`) VALUES
(1, 'Mehvish', 'mehvish.ms11@gmail.com', '321'),
(2, 'humairaa', 'humairaashaikh186@gmail.com', '654'),
(3, 'aziz', 'aziz@gmail.com', '789'),
(4, 'Mehvish', 'mehvish.ms11@gmail.com', '457'),
(5, 'adil', 'adil@gmail.com', '7797'),
(6, 'usman', 'usma@gmail.com', '123'),
(7, 'yasmin', 'yasmin71@gmail.com', '321');

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
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pitch`
--
ALTER TABLE `pitch`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pitch`
--
ALTER TABLE `pitch`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
