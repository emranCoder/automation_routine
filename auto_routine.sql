-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 07:10 PM
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
(6, 'CSE', 'History of Emergence of Bangladesh', 'HEB', 'GED 202', '3', 'Normal'),
(7, 'CSE', 'Principles of Economics & Entrepreneurship Development', 'PE&ED', 'GED 213', '3', 'Normal'),
(8, 'CSE', 'Industrial Management & Financial Accounting', 'IM&FA', 'GED 215', '3', 'Normal'),
(9, 'CSE', 'Engineering Economics', 'EE', 'GED 219', '3', 'Normal'),
(10, 'CSE', 'Accounting', 'Accounting', 'GED 321', '3', 'Normal'),
(11, 'CSE', 'Industrial Management', 'IM', 'GED 421', '3', 'Normal'),
(13, 'CSE', 'Physics I', 'Physics-I ', 'PHY 111', '3', 'Normal'),
(14, 'CSE', 'Physics II', 'Physics-II', 'PHY 124 ', '3', 'Normal'),
(15, 'CSE', 'Differential & Integral Calculus ', 'D&IC', 'MAT 112 ', '3', 'Normal'),
(16, 'CSE', 'Differential Equation & Laplace Transform', 'DE&LT', 'MAT 123 ', '3', 'Normal'),
(17, 'CSE', 'Matrices, Complex Variable & Fourier Analysis', 'MCV&FA', 'MAT 135 ', '3', 'Normal'),
(18, 'CSE', 'Basic Statistics & Probability ', 'BS&P', 'STA 215 ', '3', 'Normal'),
(19, 'CSE', 'Geometry & Vector Analysis', 'G&VA', 'MAT 216 ', '3', 'Normal'),
(20, 'CSE', 'Numerical Methods ', 'NM', 'MAT 235 ', '3', 'Normal'),
(21, 'CSE', 'Structured Programming', 'SP', 'CSE 121', '3', 'Normal'),
(22, 'CSE', 'Structured Programming Lab', 'SP Lab', 'CSE 122', '1.5', 'Lab'),
(23, 'CSE', 'Basic Electrical Engineering', 'BEE-I', 'CSE 123', '3', 'Normal'),
(24, 'CSE', 'Basic Electrical Engineering Lab', 'BEE-I Lab', 'CSE 124', '1.5', 'Lab'),
(25, 'CSE', 'Discrete Mathematics', 'DM', 'CSE 125', '3', 'Normal'),
(26, 'CSE', 'Basic Electrical and Electronic Engineering', 'BE&EE', 'CSE 127', '3', 'Normal'),
(27, 'CSE', 'Basic Electrical and Electronic Engineering Lab', 'BE&EE Lab', 'CSE 128', '1.5', 'Lab'),
(28, 'CSE', 'Basic Electronics Engineering', 'BEE-II', 'CSE 131', '3', 'Normal'),
(29, 'CSE', 'Basic Electronics Engineering Lab', 'BEE-II Lab', 'CSE 132', '1.5', 'Lab'),
(30, 'CSE', 'Data Structure', 'DS', 'CSE 133', '3', 'Normal'),
(31, 'CSE', 'Data Structure Lab', 'DS Lab', 'CSE 134', '1.5', 'Lab'),
(32, 'CSE', 'Competitive Programming', 'CP', 'CSE 200', '3', 'Normal'),
(33, 'CSE', 'Digital Logic Design', 'DLD', 'CSE 211', '3', 'Normal'),
(34, 'CSE', 'Digital Logic Design Lab', 'DLD Lab', 'CSE 212', '1.5', 'Lab'),
(35, 'CSE', 'Computer Organization & Architecture', 'CO&A', 'CSE 213', '3', 'Normal'),
(36, 'CSE', 'Communication Engineering', 'CE', 'CSE 215', '3', 'Normal'),
(37, 'CSE', 'Object Oriented Programming', 'OOP', 'CSE 221', '3', 'Normal'),
(38, 'CSE', 'Object Oriented Programming Lab', 'OOP Lab', 'CSE 222', '1.5', 'Lab'),
(39, 'CSE', 'Database Management System', 'DBMS', 'CSE 223', '3', 'Normal'),
(40, 'CSE', 'Database Management System Lab', 'DBMS Lab', 'CSE 224', '1.5', 'Lab'),
(41, 'CSE', 'Algorithm', 'Algorithm', 'CSE 231', '3', 'Normal'),
(42, 'CSE', 'Algorithm Lab', 'Algorithm Lab', 'CSE 232', '1.5', 'Lab'),
(43, 'CSE', 'Microprocessor & Interfacing', 'M&I', 'CSE 237', '3', 'Normal'),
(44, 'CSE', 'Microprocessor and Interfacing Lab', 'M&I Lab', 'CSE 238', '1.5', 'Lab'),
(45, 'CSE', 'Project', 'Project', 'CSE 300', '1.5', 'Project'),
(46, 'CSE', 'Computer Networks', 'CN', 'CSE 311', '3', 'Normal'),
(47, 'CSE', 'Computer Networks Lab', 'CN Lab', 'CSE 312', '1.5', 'Lab'),
(48, 'CSE', 'Operating System', 'OS', 'CSE 321', '3', 'Normal'),
(49, 'CSE', 'Operating System Lab', 'OS Lab', 'CSE 322', '1.5', 'Lab'),
(50, 'CSE', 'Web Programming', 'WP', 'CSE 323', '3', 'Lab'),
(51, 'CSE', 'Theory of Computation', 'TC', 'CSE 327', '3', 'Normal'),
(52, 'CSE', 'Compiler Construction', 'CC', 'CSE 415', '3', 'Normal'),
(53, 'CSE', 'Compiler Construction Lab', 'CC Lab', 'CSE 416', '1.5', 'Lab'),
(54, 'CSE', 'Software Engineering & Design Pattern', 'SWE&EP', 'CSE 417', '3', 'Normal'),
(55, 'CSE', 'Software Engineering & Design Pattern Lab', 'SWE&DP Lab', 'CSE 418', '1.5', 'Lab'),
(56, 'CSE', 'Artificial Intelligence', 'AI', 'CSE 421', '3', 'Normal'),
(57, 'CSE', 'Artificial Intelligence lab', 'AI Lab', 'CSE 422', '1.5', 'Lab'),
(58, 'CSE', 'Introduction to Data Science', 'IDS', 'CSE 427', '3', 'Normal'),
(59, 'CSE', 'Introduction to Data Science Lab', 'IDS Lab', 'CSE 428', '1.5', 'Lab'),
(60, 'CSE', 'Final Year Project', 'FYP', 'CSE 436', '3', 'Project'),
(61, 'CSE', 'Computer Graphics & Image Processing', 'CG&IP', 'CSE 401', '3', 'Normal'),
(62, 'CSE', 'Computer Graphics & Image Processing Lab', 'CG&IP Lab', 'CSE 402', '1.5', 'Lab'),
(63, 'CSE', 'Embedded System Design', 'ESD', 'CSE 403', '3', 'Normal'),
(64, 'CSE', 'Embedded System Design Lab', 'ESD Lab', 'CSE 404', '1.5', 'Lab'),
(65, 'CSE', 'Optical Communication', 'OC', 'CSE 413', '3', 'Normal'),
(66, 'CSE', 'Optical Communication Lab', 'OC Lab', 'CSE 414', '1.5', 'Lab'),
(67, 'CSE', 'Neural Network', 'NN', 'CSE 425', '3', 'Normal'),
(68, 'CSE', 'Neural Network Lab', 'NN Lab', 'CSE 426', '1.5', 'Lab'),
(69, 'CSE', 'LSI Design', 'LSID', 'CSE 431', '3', 'Normal'),
(70, 'CSE', 'VLSI Design Lab', 'VLSID Lab', 'CSE 432', '1.5', 'Lab'),
(71, 'CSE', 'Digital Signal Processing', 'DSP', 'CSE 441', '3', 'Normal'),
(72, 'CSE', 'Digital Signal Processing Lab', 'DSP Lab', 'CSE 442', '1.5', 'Lab'),
(73, 'CSE', 'Natural Language Processing', 'NLP', 'CSE 443', '3', 'Normal'),
(74, 'CSE', 'Natural Language Processing Lab', 'NLP Lab', 'CSE 444', '1.5', 'Lab'),
(75, 'CSE', 'Cloud Computing', 'CC', 'CSE 453', '3', 'Normal'),
(76, 'CSE', 'Cloud Computing Lab', 'CC Lab', 'CSE 454', '3', 'Normal'),
(77, 'CSE', 'Contemporary Course on Computer Science', 'CCCS ', 'CSE 455', '3', 'Normal'),
(78, 'CSE', 'Contemporary Course Lab on Computer Science', 'CCCS Lab', 'CSE 456', '1.5', 'Lab'),
(79, 'CSE', 'Parallel Processing', 'PP', 'CSE 457', '3', 'Normal'),
(80, 'CSE', 'Parallel Processing Lab', 'PP Lab', 'CSE 458', '1.5', 'Lab'),
(81, 'CSE', 'Advanced Database System', 'ADBS', 'CSE 463', '3', 'Normal'),
(82, 'CSE', 'Advanced Database System Lab', 'ADBS  Lab', 'CSE 464', '1.5', 'Lab'),
(83, 'CSE', 'Digital Image Processing', 'DIP', 'CSE 465', '3', 'Normal'),
(84, 'CSE', 'Digital Image Processing Lab', 'DIP Lab', 'CSE 466', '1.5', 'Lab'),
(85, 'CSE', 'Bioinformatics Computing', 'BC', 'CSE 469', '3', 'Normal'),
(86, 'CSE', 'Bioinformatics Computing Lab', 'BC Lab', 'CSE 470', '1.5', 'Lab'),
(87, 'CSE', 'Machine Learning', 'ML', 'CSE 471', '3', 'Normal'),
(88, 'CSE', 'Machine Learning Lab', 'ML Lab', 'CSE 472', '1.5', 'Lab');

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
