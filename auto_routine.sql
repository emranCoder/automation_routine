-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 12:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auto_routine`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batchID` int(11) NOT NULL,
  `batchName` varchar(255) DEFAULT NULL,
  `batchNo` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `deptName` varchar(255) NOT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `inShort` varchar(255) DEFAULT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseCredit` varchar(255) NOT NULL,
  `courseType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `deptName`, `courseName`, `inShort`, `courseCode`, `courseCredit`, `courseType`) VALUES
(1, 'CSE', 'Comunication Enginnering ', 'CE', 'CSE 217', '3', 'Normal'),
(2, 'CSE', 'sfd', 'sdf', '47', '574', ''),
(3, 'CSE', 'sdfdf', 'cse', 'CS3e 3r', '2', ''),
(4, 'CSE', 'sfd', 'sdf', '47', '574', ''),
(5, 'CSE', 'sdf', 'sdf', 'ss3', '0', ''),
(6, 'CSE', 'hgf', 'cse', 'CS3e 3r', '2', ''),
(7, 'CSE', 'eva', 'sdf', '47', '574', ''),
(8, 'CSE', 'sce', 'sdf', 'ss3', '0', ''),
(9, 'EEE', 'gsdag', 'sagaga', 'dsag', '0', ''),
(10, 'SE', 'sdfsd', 'sdfsd', 'dsfdsfdsfd', '15', ''),
(11, 'EEE', 'fds', 'dga', 'gdaga', '1.5', ''),
(12, 'Eco', 'sdfsd', 'sdfsaf', 'sd', '1.5', '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptID` int(11) NOT NULL,
  `deptName` varchar(255) DEFAULT NULL,
  `inShort` varchar(255) DEFAULT NULL,
  `numOfStudent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptID`, `deptName`, `inShort`, `numOfStudent`) VALUES
(1, 'Computer Science & Engineering ', 'CSE', '1000'),
(2, 'Software Engineering', 'SE', '500'),
(3, 'Electrical & Electronic Engineering', 'EEE', '300'),
(4, 'Business Administration ', 'BBA', '700'),
(5, 'Economics', 'Eco', '200'),
(6, 'Law & Justice ', 'LLB', '300'),
(7, 'English', 'English', '600');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomID` int(11) NOT NULL,
  `roomNo` int(255) DEFAULT NULL,
  `capacity` int(255) DEFAULT NULL,
  `roomType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomID`, `roomNo`, `capacity`, `roomType`) VALUES
(1, 205, 50, 'Normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batchID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `facultyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
