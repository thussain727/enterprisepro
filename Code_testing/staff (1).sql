-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2026 at 11:43 AM
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
-- Database: `staff`
--

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `School name` varchar(100) NOT NULL,
  `Dept` varchar(100) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Last Name` varchar(100) NOT NULL,
  `First Name` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Start Year` int(11) NOT NULL,
  `Left Year` date NOT NULL,
  `Notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `School name`, `Dept`, `Title`, `Last Name`, `First Name`, `Position`, `Address`, `Start Year`, `Left Year`, `Notes`) VALUES
(1, 'Chapel Green Board School\r\n', 'Infant', 'Miss', 'Knowles', 'Maria Ann', 'Head Mistress', '', 0, '0000-00-00', ''),
(2, 'Chapel Green Board School', 'Infant', 'Miss', 'Rhodes', 'Louisa', 'Assistant Mistress', '', 0, '0000-00-00', ''),
(3, 'Chapel Green Board School', 'infant', 'Miss', 'Foster', 'Sarah Elizabeth', 'Moniter', '', 1877, '0000-00-00', ''),
(4, 'Chapel Green Board School', 'Infant', 'Miss', 'Jennings', 'Kate', 'Candidate', '', 1878, '0000-00-00', ''),
(5, 'Chapel Green Board School', 'Infant', 'Mrs', 'Pearson (Knowles)', 'Maria Ann', 'Head Mistress', '', 1878, '0000-00-00', 'Married James Fletcher Pearson 1878'),
(6, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Monitor', '', 1878, '0000-00-00', ''),
(7, 'Chapel Green Board School', 'Infant', 'Miss', 'Jennings', 'Kate', 'Candidate', '', 1879, '0000-00-00', 'Transferred to Mixed department'),
(8, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah Elizabeth', 'Head Mistress', '', 1879, '0000-00-00', ''),
(9, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '1st year Pupil Teacher', '', 1879, '0000-00-00', ''),
(10, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Candidate', '', 1879, '0000-00-00', ''),
(11, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '1st year Pupil Teacher', '', 1879, '0000-00-00', ''),
(12, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Candidate', '', 1879, '0000-00-00', ''),
(13, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'R', 'Assistant Mistress', '', 1879, '0000-00-00', ''),
(14, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Monitor', '', 1879, '0000-00-00', 'Moved to Ryan Infant School'),
(15, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', 1879, '0000-00-00', ''),
(16, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'E', 'Assistant Mistress', '', 1879, '0000-00-00', 'Moved to Great Horton School'),
(17, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '3rd Year Pupil Teacher', '', 1880, '0000-00-00', ''),
(18, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', 1880, '0000-00-00', ''),
(19, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', 1880, '0000-00-00', 'Moved to Darlington Training College'),
(20, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', 1880, '0000-00-00', 'Temporary assistance'),
(21, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', 1880, '0000-00-00', 'Returned to Great Horton Infants School'),
(22, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '1st year Pupil Teacher', '', 1879, '0000-00-00', ''),
(23, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Candidate', '', 1879, '0000-00-00', ''),
(24, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'R', 'Assistant Mistress', '', 1879, '0000-00-00', ''),
(25, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Monitor', '', 1879, '0000-00-00', 'Moved to Ryan Infant School'),
(26, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', 1879, '0000-00-00', ''),
(27, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'E', 'Assistant Mistress', '', 1879, '0000-00-00', 'Moved to Great Horton School'),
(28, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '3rd Year Pupil Teacher', '', 1880, '0000-00-00', ''),
(29, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', 1880, '0000-00-00', ''),
(30, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', 1880, '0000-00-00', 'Moved to Darlington Training College'),
(31, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', 1880, '0000-00-00', 'Temporary assistance'),
(32, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', 1880, '0000-00-00', 'Returned to Great Horton Infants School'),
(33, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '1st year Pupil Teacher', '', 1879, '0000-00-00', ''),
(34, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Candidate', '', 1879, '0000-00-00', ''),
(35, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'R', 'Assistant Mistress', '', 1879, '0000-00-00', ''),
(36, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Monitor', '', 1879, '0000-00-00', 'Moved to Ryan Infant School'),
(37, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', 1879, '0000-00-00', ''),
(38, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'E', 'Assistant Mistress', '', 1879, '0000-00-00', 'Moved to Great Horton School'),
(39, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '3rd Year Pupil Teacher', '', 1880, '0000-00-00', ''),
(40, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', 1880, '0000-00-00', ''),
(41, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', 1880, '0000-00-00', 'Moved to Darlington Training College'),
(42, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', 1880, '0000-00-00', 'Temporary assistance'),
(43, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', 1880, '0000-00-00', 'Returned to Great Horton Infants School');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
