-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2024 at 06:05 AM
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

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batchID`, `batchName`, `batchNo`, `section`, `courseName`) VALUES
(1, 'CSE', '57', '...', 'CSE401'),
(2, 'CSE', '57', '...', 'CSE402'),
(3, 'CSE', '57', '...', 'cse441'),
(4, 'CSE', '57', '...', 'CSE442'),
(5, 'CSE', '57', '...', 'CSE435'),
(6, 'CSE', '57', '...', 'cse436'),
(7, 'CSE', '57', '...', 'cse429'),
(8, 'CSE', '52', '...', 'CSE421'),
(9, 'CSE', '52', '...', 'cse422'),
(10, 'CSE', '52', '...', 'CSE441'),
(11, 'CSE', '52', '...', 'cse429'),
(12, 'CSE', '52', '...', 'CSE469'),
(13, 'CSE', '52', '...', 'CSE470'),
(14, 'CSE', '53', 'A', 'CSE421'),
(15, 'CSE', '53', 'A', 'CSE422'),
(16, 'CSE', '53', 'A', 'CSE321'),
(17, 'CSE', '53', 'A', 'CSE322'),
(18, 'CSE', '53', 'A', 'CSE441'),
(19, 'CSE', '53', 'A', 'CSE442'),
(20, 'CSE', '53', 'A', 'GED119'),
(21, 'CSE', '53', 'A', 'CSE429'),
(22, 'CSE', '53', 'A', 'CSE469'),
(23, 'CSE', '53', 'A', 'CSE470'),
(24, 'CSE', '54', 'A', 'CSE321'),
(25, 'CSE', '54', 'A', 'CSE322'),
(26, 'CSE', '54', 'A', 'CSE441'),
(27, 'CSE', '54', 'A', 'CSE442'),
(28, 'CSE', '54', 'A', 'GED119'),
(29, 'CSE', '54', 'A', 'CSE429'),
(30, 'CSE', '54', 'A', 'GED202'),
(31, 'CSE', '54', 'A', 'CSE469'),
(32, 'CSE', '54', 'A', 'CSE470'),
(33, 'CSE', '55', 'A', 'GED119'),
(34, 'CSE', '55', 'A', 'GED202'),
(35, 'CSE', '55', 'A', 'CSE311'),
(36, 'CSE', '55', 'A', 'CSE312'),
(37, 'CSE', '55', 'A', 'CSE321'),
(38, 'CSE', '55', 'A', 'CSE322'),
(39, 'CSE', '55', 'A', 'GED431'),
(40, 'CSE', '55', 'A', 'CSE417'),
(41, 'CSE', '55', 'A', 'CSE418'),
(42, 'CSE', '56', 'D', 'CSE323'),
(43, 'CSE', '56', 'D', 'CSE300'),
(44, 'CSE', '56', 'D', 'CSE215'),
(45, 'CSE', '56', 'D', 'CSE237'),
(46, 'CSE', '56', 'D', 'CSE238'),
(47, 'CSE', '56', 'D', 'MAT235'),
(48, 'CSE', '56', 'D', 'GED215');

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
  `courseType` varchar(255) DEFAULT NULL,
  `facultyName` varchar(255) NOT NULL,
  `batchNo` int(11) NOT NULL,
  `sectionName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `short_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `facultyDept` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyID`, `FirstName`, `short_name`, `designation`, `email`, `number`, `facultyDept`) VALUES
(1, 'Prof. Dr. Nazrul Haque Chowdhury', 'NHC', 'Prof.', 'facultyemail@mail.com', '+8801422', 'CSE'),
(2, 'Prof. Choudhury Mukammel Wahid', 'CMW', 'Prof.', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(3, 'Md. Mahfujul Hasan', 'MMH', 'Lecturer', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(4, 'Md. Mushtaq Shahriyar Rafee', 'MSR', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(5, 'Nurul Afsar Mahmud Bhuiyan', 'NAB', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(6, 'Archi Arani Basak', 'AAB', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(7, 'Tajkia Nuri Ananna', 'TNA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(8, 'Nabila Zannat Rifa', 'NZR', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(9, 'Md Shamihul Islam Khan Limon', 'MSI', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(10, 'Safwan Uddin Ahmed', 'SUA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(11, 'Khudeja Khanom Anwara', 'KKA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(12, 'Mahdi Islam', 'MI', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(13, 'Nasif Istiak Remon', 'NIR', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(14, 'Akif Mahdi', 'AM', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(15, 'Abu Jafar Md. Jakaria', 'AJMJ', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(16, 'Mayami Das Purkayastha Purba', 'MDP', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(17, 'Dr. Rajarshi Roy Chowdhury', 'RRC', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(18, 'Rishad Amin Pulok', 'RA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(19, 'Bushra Azmat Hussain', 'BAH', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(20, 'Syed Imam Mahdi', 'SMM', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(21, 'Chowdhury Mujaddid Ahmed', 'CMA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(22, 'Salma Akhter', 'SA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(23, 'Md. Fahim Kabir Chowdhury', 'FKC', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(24, 'Iftekhar Hussain', 'IH', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(25, 'Nourush Jahan (ECO)', 'NJ', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(26, 'Taspiea Mostofa (LLB)', 'TM', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(27, 'Farhana Khanom Joly (ENG)', 'FKJ', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(28, 'Munmun Debnath(ENG)', 'MD', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(29, 'Tanjim Nishat Farmi(ENG)', 'TNF', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(30, 'Abdullah Al Mashud(ENG)', 'AAM', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(31, 'Must Ayesha Shahrin(BA)', 'MAS', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(32, 'Nafisa Ahmed(EEE)', 'NFA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(33, 'Kazi Wohiduzzaman(EEE)', 'KWZ', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(34, 'Bishal Das(EEE)', 'BD', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(35, 'MD. Anwarul Kawsar(EEE)', 'MAK', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(36, 'Md. Afsarul Islam', 'MAI', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(37, 'Dr. Urmee Ghose', 'UG', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(38, 'Syeda Nazmur Siha Muna', 'SNSM', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(39, 'Syed Nakib Sadi (ENG)', 'SNS', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(40, 'Mia Mohammad Asaduzzaman(EEE)', 'MMA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(41, 'MD. Fahmidur Rahman Sakib', 'FRS', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(42, 'Muhammad Muzammil', 'MMZ', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(43, 'Miss Arpita Majumder(EEE)', 'AMD', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(44, 'Mr. Zahidul Salman(EEE)', 'ZS', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(45, 'Mr. Mahim Ahmed', 'MA', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(46, 'Nawshad Ahmed Chowdhury', 'NAC', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(47, 'Sadman Sakib', 'SS', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(48, 'Shanjida Khanom', 'SK', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department'),
(49, 'Tohura Khatun', 'TK', 'N/A', 'facultyemail@mail.com', '+8801422', 'Choose Department');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batchID`);

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
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `facultyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
