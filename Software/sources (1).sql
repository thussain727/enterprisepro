-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2026 at 09:26 AM
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
(1, 'Infant School Log Book 1877 - 1905', 'Log Book', 'Chapel Green Board School', 'Infant', 'Not available', '/sources/infschoollogbook1877chap.html'),
(2, 'Infant School Log Book 1877 - 1905', 'Log Book', 'Thornton Lane Board School', 'Infant', 'Not available', '/sources/infschoollogbook1877thorn.html'),
(3, 'Infant School Log Book 1905 - 1939', 'Log Book', '', 'Infant', 'Not available', '/sources/infschoollogbook1905-1.html'),
(4, 'Infant School Log Book 1905 - 1939', 'Log Book', '', 'Infant', 'Not available', '/sources/infschoollogbook1905-2.html'),
(5, 'Infant School Log Book 1939 - 1969', 'Log Book', 'Marshfield School', 'Infant', '', '/sources/infschoollogbook1939marsh.html'),
(6, 'Infant School Log Book 1969 - 1973', 'Log Book', 'Marshfield School', 'Infant', '', '/sources/infschoollogbook1969marsh.html'),
(7, 'Infant Admission Register Sep 1943 - Jan 1954', 'Admission Register', 'Marshfield School', 'Infant', '', '/sources/infadmission1943marsh.html'),
(8, 'Infant Admission Register Sep 1954 - Jul 1965', 'Admission Register', 'Marshfield School', 'Infant', '', '/sources/infadmission1954marsh.html'),
(9, 'Infant Admission Register Sep 1965 - Jan 1973', 'Admission Register', 'Marshfield School', 'Infant', '', '/sources/infadmission1965marsh.html'),
(10, 'Photos - May day celebrations', 'Images', 'Marshfield School', 'Infant', '', '/sources/maydayphotos.html'),
(11, 'Junior School Log Book 1877 - 1910', 'Log Book', 'Chapel Green Board School', 'Junior', 'Not available', '/sources/junschoollogbook1877chap.html'),
(12, 'Junior School Log Book 1877 - 1910', 'Log Book', 'Thornton Lane Board School', 'Junior', 'Not available', '/sources/junschoollogbook1877thorn.html'),
(13, 'Junior School Log Book 1910 - 1933', 'Log Book', '', 'Junior', 'Not available', '/sources/junschoollogbook1910.html'),
(14, 'Junior School Log Book 1933 - 1964', 'Log Book', 'Marshfield School', 'Junior', '', '/sources/junschoollogbook1933marsh.html'),
(15, 'Junior Admission Register Jan 1894 - Feb 1901', 'Admission Register', 'Thornton Lane Board School', 'Junior', '', '/sources/junadmission1894thorn.html'),
(16, 'Junior Admission Register Apr 1906 - Sep 1911', 'Admission Register', 'Marshfield School', 'Junior', '', '/sources/junadmission1906marsh.html'),
(17, 'Junior Admission Register Aug 1911 - Jul 1917', 'Admission Register', 'Marshfield School', 'Junior', '', '/sources/junadmission1911marsh.html'),
(18, 'Senior Admission Register Jul 1901 - Jul 1928', 'Admission Register', 'Marshfield School', 'Senior', '', '/sources/senadmission1901marsh.html'),
(19, 'Junior Admission Register Jan Aug 1928 - Jan 1944', 'Admission Register', 'Marshfield School', 'Junior', '', '/sources/junadmission1928marsh.html'),
(20, 'Junior Admission Register Mar 1944 - Feb 1954', 'Admission Register', 'Marshfield School', 'Junior', '', '/sources/junadmission1944marsh.html'),
(21, 'Junior Admission Register Mar 1954 - Jan 1963', 'Admission Register', 'Marshfield School', 'Junior', '', '/sources/junadmission1954marsh.html'),
(22, 'Junior Admission Register Sep 1971 - Sep 1973', 'Admission Register', 'Marshfield School', 'Junior', '', '/sources/junadmission1971marsh.html'),
(23, 'Punishment book 1902 - 1965', 'Punishment Book', 'Marshfield School', 'Junior', '', '/sources/junpunishment1902marsh.html'),
(24, 'Miss Teal\'s scapbook 1931 - 1952', 'Images', 'Marshfield School', 'Junior', '', '/sources/junscrapbook1931marsh.html'),
(25, 'Miss Teal\'s scrapbook tour to Northern Ireland 1949', 'Images', 'Marshfield School', 'Junior', '', '/sources/junscrapbooknorthernireland.html'),
(26, 'Miss Teal\'s scrapbook tour to London 1950 and Bournemouth 1851', 'Images', 'Marshfield School', 'Junior', '', '/sources/junscrapbooklondon.html'),
(27, 'Photograph album circa 1955-56', 'Images', 'Marshfield School', 'Junior', '', '/sources/junalbum1955marsh.html'),
(28, 'Miss Leach/Mrs Emmerson\'s album', 'Images', 'Marshfield School', 'Junior', '', '/sources/junleachemmersonalbummarsh.html'),
(29, 'Miscellaneous pictures', 'Images', 'Marshfield School', 'Junior', '', '/sources/junmiscphotosmarsh.html'),
(30, 'Marshfield School Magazine 1926', 'Images', 'Marshfield School', 'Junior', '', '/sources/junschoolmagazine1926marsh.html'),
(31, 'Extracts from Marshfield Infant Log book 1905 - 1936', 'Images', 'Marshfield School', 'Junior', '', '/sources/juninfantlogextract1905marsh.html'),
(32, 'Proposed plan of Junior and Senior Mixed School', 'Plan', 'Marshfield School', 'Junior', '', '/sources/junmixedschoolplansmarsh.html'),
(33, 'Plan for new Infant School', 'Plan', 'Marshfield School', 'Infant', '', '/sources/infnewinfantschoolplansmarsh.html'),
(34, 'Plan for new Thornton Lane Board School', 'Plan', 'Thornton Lane Board School', '', '', '/sources/newschoolplanthorn.html'),
(35, 'Thornton Lane School opening', 'Doc', 'Thornton Lane Board School', '', '', '/sources/newschoolopeningthorn.html'),
(36, 'Extracts form Bradford School Board Minutes 1877-78', 'School Board', 'Bradford School Board', '', '', '/sources/schoolboardminutes1877.html'),
(37, 'Plan of Chapel Green Board School', 'Plan', 'Chapel Green Board School', '', '', '/sources/chapelgreenboardplan.html'),
(38, 'Plan of Chapel Green Church School', 'Plan', 'Chapel Green Church School', '', '', '/sources/chapelgreenchurchplan.html');

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
