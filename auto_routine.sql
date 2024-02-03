-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 04:43 PM
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
(1, 'CSE', 'English I', 'English I', 'ENG 114', '3', 'Normal'),
(2, 'CSE', 'English II', 'English II', 'ENG 115', '3', 'Normal'),
(3, 'CSE', 'Ethics and Cyber Law', 'ECL', 'GED 119', '3', 'Normal'),
(4, 'CSE', 'Functional Bangla', 'FB', 'GED 129', '3', 'Normal'),
(5, 'CSE', 'Bangladesh Studies', 'BS', 'GED 201 ', '3', 'Normal'),
(6, 'CSE', 'History of Emergence of Bangladesh', 'HEB', 'GED 202 ', '3', 'Normal'),
(7, 'CSE', 'Principles of Economics & Entrepreneurship Development', 'PE&ED', 'GED 213', '3', 'Normal'),
(8, 'CSE', 'Industrial Management & Financial Accounting', 'IM&FA', 'GED 215', '3', 'Normal'),
(9, 'CSE', 'Engineering Economics', 'EE', 'GED 219', '3', 'Normal'),
(10, 'CSE', 'Accounting', 'Accounting', 'GED 321', '3', 'Normal'),
(11, 'CSE', 'Industrial Management ', 'IM', 'GED 421', '3', 'Normal'),
(12, 'CSE', 'Business Communication', 'BC', 'GED 431', '3', 'Normal');

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
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
