-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2026 at 07:54 AM
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
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `Source` text DEFAULT NULL,
  `Source Type` text DEFAULT NULL,
  `School` text DEFAULT NULL,
  `Department` text DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `Hyperlink` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`Source`, `Source Type`, `School`, `Department`, `Notes`, `Hyperlink`) VALUES
('Infant School Log Book 1877 - 1905', 'Log Book', 'Chapel Green Board School', 'Infant', 'Not available', ''),
('Infant School Log Book 1877 - 1905', 'Log Book', 'Thornton Lane Board School', 'Infant', 'Not available', ''),
('Infant School Log Book 1905 - 1939', 'Log Book', '', 'Infant', 'Not available', ''),
('Infant School Log Book 1905 - 1939', 'Log Book', '', 'Infant', 'Not available', ''),
('Infant School Log Book 1939 - 1969', 'Log Book', 'Marshfield School', 'Infant', '', ''),
('Infant School Log Book 1969 - 1973', 'Log Book', 'Marshfield School', 'Infant', '', ''),
('Infant Admission Register Sep 1943 - Jan 1954', 'Admission Register', 'Marshfield School', 'Infant', '', ''),
('Infant Admission Register Sep 1954 - Jul 1965', 'Admission Register', 'Marshfield School', 'Infant', '', ''),
('Infant Admission Register Sep 1965 - Jan 1973', 'Admission Register', 'Marshfield School', 'Infant', '', ''),
('Photos - May day celebrations', 'Images', 'Marshfield School', 'Infant', '', ''),
('Junior School Log Book 1877 - 1910', 'Log Book', 'Chapel Green Board School', 'Junior', 'Not available', ''),
('Junior School Log Book 1877 - 1910', 'Log Book', 'Thornton Lane Board School', 'Junior', 'Not available', ''),
('Junior School Log Book 1910 - 1933', 'Log Book', '', 'Junior', 'Not available', ''),
('Junior School Log Book 1933 - 1964', 'Log Book', 'Marshfield School', 'Junior', '', ''),
('Junior Admission Register Jan 1894 - Feb 1901', 'Admission Register', 'Thornton Lane Board School', 'Junior', '', ''),
('Junior Admission Register Apr 1906 - Sep 1911', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
('Junior Admission Register Aug 1911 - Jul 1917', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
('Senior Admission Register Jul 1901 - Jul 1928', 'Admission Register', 'Marshfield School', 'Senior', '', ''),
('Junior Admission Register Jan Aug 1928 - Jan 1944', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
('Junior Admission Register Mar 1944 - Feb 1954', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
('Junior Admission Register Mar 1954 - Jan 1963', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
('Junior Admission Register Sep 1971 - Sep 1973', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
('Punishment book 1902 - 1965', 'Punishment Book', 'Marshfield School', 'Junior', '', ''),
('Miss Teal\'s scapbook 1931 - 1952', 'Images', 'Marshfield School', 'Junior', '', ''),
('Miss Teal\'s scrapbook tour to Northern Ireland 1949', 'Images', 'Marshfield School', 'Junior', '', ''),
('Miss Teal\'s scrapbook tour to London 1950 and Bournemouth 1851', 'Images', 'Marshfield School', 'Junior', '', ''),
('Photograph album circa 1955-56', 'Images', 'Marshfield School', 'Junior', '', ''),
('Miss Leach/Mrs Emmerson\'s album', 'Images', 'Marshfield School', 'Junior', '', ''),
('Miscellaneous pictures', 'Images', 'Marshfield School', 'Junior', '', ''),
('Marshfield School Magazine 1926', 'Images', 'Marshfield School', 'Junior', '', ''),
('Extracts from Marshfield Infant Log book 1905 - 1936', 'Images', 'Marshfield School', 'Junior', '', ''),
('Proposed plan of Junior and Senior Mixed School', 'Plan', 'Marshfield School', 'Junior', '', ''),
('Plan for new Infant School', 'Plan', 'Marshfield School', 'Infant', '', ''),
('Plan for new Thornton Lane Board School', 'Plan', 'Thornton Lane Board School', '', '', ''),
('Thornton Lane School opening', 'Doc', 'Thornton Lane Board School', '', '', ''),
('Extracts form Bradford School Board Minutes 1877-78', 'School Board', 'Bradford School Board', '', '', ''),
('Plan of Chapel Green Board School', 'Plan', 'Chapel Green Board School', '', '', ''),
('Plan of Chapel Green Church School', 'Plan', 'Chapel Green Church School', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
