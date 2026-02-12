-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2026 at 11:34 AM
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
(10, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Candidate', '', 1879, '0000-00-00', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
