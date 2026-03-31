-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2026 at 10:16 PM
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
-- Database: `sources`
--

-- --------------------------------------------------------

--
-- Table structure for table `sources_db`
--

CREATE TABLE `sources_db` (
  `SourceID` int(11) NOT NULL,
  `Source` varchar(62) DEFAULT NULL,
  `Source_type` varchar(18) DEFAULT NULL,
  `School` varchar(26) DEFAULT NULL,
  `Department` varchar(6) DEFAULT NULL,
  `Notes` varchar(13) DEFAULT NULL,
  `Hyperlink` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sources_db`
--

INSERT INTO `sources_db` (`SourceID`, `Source`, `Source_type`, `School`, `Department`, `Notes`, `Hyperlink`) VALUES
(1, 'Infant School Log Book 1877 - 1905', 'Log Book', 'Chapel Green Board School', 'Infant', 'Not available', 'infant_1877-1910.html'),
(2, 'Infant School Log Book 1877 - 1905', 'Log Book', 'Thornton Lane Board School', 'Infant', 'Not available', 'junior_1877-1910.html'),
(3, 'Infant School Log Book 1905 - 1939', 'Log Book', '', 'Infant', 'Not available', NULL),
(4, 'Infant School Log Book 1905 - 1939', 'Log Book', '', 'Infant', 'Not available', NULL),
(5, 'Infant School Log Book 1939 - 1969', 'Log Book', 'Marshfield School', 'Infant', '', NULL),
(6, 'Infant School Log Book 1969 - 1973', 'Log Book', 'Marshfield School', 'Infant', '', NULL),
(7, 'Infant Admission Register Sep 1943 - Jan 1954', 'Admission Register', 'Marshfield School', 'Infant', '', NULL),
(8, 'Infant Admission Register Sep 1954 - Jul 1965', 'Admission Register', 'Marshfield School', 'Infant', '', NULL),
(9, 'Infant Admission Register Sep 1965 - Jan 1973', 'Admission Register', 'Marshfield School', 'Infant', '', NULL),
(10, 'Photos - May day celebrations', 'Images', 'Marshfield School', 'Infant', '', NULL),
(11, 'Junior School Log Book 1877 - 1910', 'Log Book', 'Chapel Green Board School', 'Junior', 'Not available', NULL),
(12, 'Junior School Log Book 1877 - 1910', 'Log Book', 'Thornton Lane Board School', 'Junior', 'Not available', NULL),
(13, 'Junior School Log Book 1910 - 1933', 'Log Book', '', 'Junior', 'Not available', NULL),
(14, 'Junior School Log Book 1933 - 1964', 'Log Book', 'Marshfield School', 'Junior', '', NULL),
(15, 'Junior Admission Register Jan 1894 - Feb 1901', 'Admission Register', 'Thornton Lane Board School', 'Junior', '', 'Admission_Registers.html'),
(16, 'Junior Admission Register Apr 1906 - Sep 1911', 'Admission Register', 'Marshfield School', 'Junior', '', NULL),
(17, 'Junior Admission Register Aug 1911 - Jul 1917', 'Admission Register', 'Marshfield School', 'Junior', '', NULL),
(18, 'Senior Admission Register Jul 1901 - Jul 1928', 'Admission Register', 'Marshfield School', 'Senior', '', NULL),
(19, 'Junior Admission Register Jan Aug 1928 - Jan 1944', 'Admission Register', 'Marshfield School', 'Junior', '', NULL),
(20, 'Junior Admission Register Mar 1944 - Feb 1954', 'Admission Register', 'Marshfield School', 'Junior', '', NULL),
(21, 'Junior Admission Register Mar 1954 - Jan 1963', 'Admission Register', 'Marshfield School', 'Junior', '', NULL),
(22, 'Junior Admission Register Sep 1971 - Sep 1973', 'Admission Register', 'Marshfield School', 'Junior', '', NULL),
(23, 'Punishment book 1902 - 1965', 'Punishment Book', 'Marshfield School', 'Junior', '', 'Punishment_Books.html'),
(24, 'Miss Teal\'s scapbook 1931 - 1952', 'Images', 'Marshfield School', 'Junior', '', NULL),
(25, 'Miss Teal\'s scrapbook tour to Northern Ireland 1949', 'Images', 'Marshfield School', 'Junior', '', NULL),
(26, 'Miss Teal\'s scrapbook tour to London 1950 and Bournemouth 1851', 'Images', 'Marshfield School', 'Junior', '', NULL),
(27, 'Photograph album circa 1955-56', 'Images', 'Marshfield School', 'Junior', '', NULL),
(28, 'Miss Leach/Mrs Emmerson\'s album', 'Images', 'Marshfield School', 'Junior', '', NULL),
(29, 'Miscellaneous pictures', 'Images', 'Marshfield School', 'Junior', '', NULL),
(30, 'Marshfield School Magazine 1926', 'Images', 'Marshfield School', 'Junior', '', NULL),
(31, 'Extracts from Marshfield Infant Log book 1905 - 1936', 'Images', 'Marshfield School', 'Junior', '', NULL),
(32, 'Proposed plan of Junior and Senior Mixed School', 'Plan', 'Marshfield School', 'Junior', '', NULL),
(33, 'Plan for new Infant School', 'Plan', 'Marshfield School', 'Infant', '', NULL),
(34, 'Plan for new Thornton Lane Board School', 'Plan', 'Thornton Lane Board School', '', '', NULL),
(35, 'Thornton Lane School opening', 'Doc', 'Thornton Lane Board School', '', '', NULL),
(36, 'Extracts form Bradford School Board Minutes 1877-78', 'School Board', 'Bradford School Board', '', '', 'Bradford_School_Board.html'),
(37, 'Plan of Chapel Green Board School', 'Plan', 'Chapel Green Board School', '', '', NULL),
(38, 'Plan of Chapel Green Church School', 'Plan', 'Chapel Green Church School', '', '', 'Maps_and_Plans.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sources_db`
--
ALTER TABLE `sources_db`
  ADD PRIMARY KEY (`SourceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sources_db`
--
ALTER TABLE `sources_db`
  MODIFY `SourceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
