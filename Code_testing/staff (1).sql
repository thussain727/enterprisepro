-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2026 at 11:46 AM
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
-- Database: `supplier parts project 2`
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
(1, 'Chapel Green Board School', 'Infant', 'Miss', 'Knowles', 'Maria Ann', 'Head Mistress', '', 1877, '0000-00-00', ''),
(2, 'Chapel Green Board School', 'Infant', 'Miss', 'Rhodes', 'Louisa', 'Assistant Mistress', '', 1877, '0000-00-00', ''),
(3, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', 'Monitor', '', 1877, '0000-00-00', ''),
(4, 'Chapel Green Board School', 'Infant', 'Miss', 'Jennings', 'Kate', 'Candidate', '', 1878, '0000-00-00', ''),
(5, 'Chapel Green Board School', 'Infant', 'Mrs', 'Pearson (Knowles)', 'Maria Ann', 'Head Mistress', '', 1878, '0000-00-00', 'Married James Fletcher Pearson 1878'),
(49, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Monitor', '', 1878, '0000-00-00', ''),
(50, 'Chapel Green Board School', 'Infant', 'Miss', 'Jennings', 'Kate', 'Candidate', '', 1879, '0000-00-00', 'Transferred to Mixed department'),
(51, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah Elizabeth', 'Head Mistress', '', 1879, '0000-00-00', ''),
(52, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '1st year Pupil Teacher', '', 1879, '0000-00-00', ''),
(53, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Candidate', '', 1879, '0000-00-00', ''),
(54, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'R', 'Assistant Mistress', '', 1879, '0000-00-00', ''),
(55, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Monitor', '', 1879, '0000-00-00', 'Moved to Ryan Infant School'),
(56, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', 1879, '0000-00-00', ''),
(57, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'E', 'Assistant Mistress', '', 1879, '0000-00-00', 'Moved to Great Horton School'),
(58, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '3rd Year Pupil Teacher', '', 1880, '0000-00-00', ''),
(59, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', 1880, '0000-00-00', ''),
(60, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', 1880, '0000-00-00', 'Moved to Darlington Training College'),
(61, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', 1880, '0000-00-00', 'Temporary assistance'),
(62, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', 1880, '0000-00-00', 'Returned to Great Horton Infants School'),
(63, 'Chapel Green Board School', 'Infant', 'Miss', 'Coulter', 'Emily Jane', 'Monitor', '', 1880, '0000-00-00', 'Previously at Bramley Street Infant School'),
(64, 'Chapel Green Board School', 'Infant', 'Miss', 'Whitaker', 'Alice', 'Assistant Mistress', '', 1880, '0000-00-00', ''),
(65, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', 1881, '0000-00-00', ''),
(66, 'Chapel Green Board School', 'Infant', 'Miss', 'Whitaker', 'Alice', 'Assistant Mistress', '', 1881, '0000-00-00', ''),
(67, 'Chapel Green Board School', 'Infant', 'Miss', 'Dennis', 'Henrietta', '1st year Pupil Teacher', '13, Leatham Street', 1881, '0000-00-00', ''),
(68, 'Chapel Green Board School', 'Infant', 'Miss', 'Coulter', 'Emily', '1st year Pupil Teacher', '19, Elizabeth Street, Little Horton', 1881, '0000-00-00', ''),
(69, 'Chapel Green Board School', 'Infant', 'Miss', 'Carter', 'Sarah', 'Head Mistress', '', 1882, '0000-00-00', ''),
(70, 'Chapel Green Board School', 'Infant', 'Miss', 'Whitaker', 'Alice', 'Assistant Mistress', '', 1882, '0000-00-00', ''),
(71, 'Chapel Green Board School', 'Infant', 'Miss', 'Dennis', 'Henrietta', '2nd year Pupil Teacher', '10, Mial Street', 1882, '0000-00-00', ''),
(72, 'Chapel Green Board School', 'Infant', 'Miss', 'Coulter', 'Emily Jane', '2nd year Pupil Teacher', '', 1882, '0000-00-00', ''),
(73, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', 1883, '0000-00-00', 'Resigned'),
(74, 'Chapel Green Board School', 'Infant', 'Miss', 'Blackburn', 'Clara', 'Head Mistress', '', 1883, '0000-00-00', ''),
(75, 'Chapel Green Board School', 'Infant', 'Miss', 'Coulter', 'Emily Jane', '2nd year Pupil Teacher', '', 1883, '0000-00-00', 'Transferred to Ryan Street Girls'),
(76, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickles', 'Emma', 'Monitor', '', 1883, '0000-00-00', ''),
(77, 'Chapel Green Board School', 'Infant', 'Miss', 'Dennis', 'Henrietta', '2nd year Pupil Teacher', '', 1883, '0000-00-00', 'Transferred to Princeville Infants'),
(78, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickard', 'Sarah J', 'Monitor', '', 1883, '0000-00-00', ''),
(79, 'Chapel Green Board School', 'Infant', 'Miss', 'Blackburn', 'Clara', 'Head Mistress', '', 1884, '0000-00-00', ''),
(80, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickles', 'Emma', 'Candidate for year 2', '10,Sherbourne Road', 1884, '0000-00-00', ''),
(81, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickles', 'Sarah J', 'Candidate for year 2', '', 1884, '0000-00-00', ''),
(82, 'Chapel Green Board School', 'Infant', 'Miss', 'Blackburn', 'Clara', 'Head Mistress', '', 1884, '0000-00-00', 'Transferred to Tyersal School'),
(83, 'Chapel Green Board School', 'Infant', 'Miss', 'Greenwood', 'Mary Elizabeth', 'Head Mistress', '', 1886, '0000-00-00', ''),
(84, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickles', 'Emma', '4th year Pupil Teacher', '', 1886, '0000-00-00', ''),
(85, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickard', 'Sarah J', '3rd Year Pupil Teacher', '', 1886, '0000-00-00', ''),
(86, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', 0, '0000-00-00', ''),
(87, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', 0, '0000-00-00', ''),
(88, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', 0, '0000-00-00', ''),
(89, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', 0, '0000-00-00', ''),
(90, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', 0, '0000-00-00', ''),
(91, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', 0, '0000-00-00', ''),
(92, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', 0, '0000-00-00', ''),
(93, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', 0, '0000-00-00', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
