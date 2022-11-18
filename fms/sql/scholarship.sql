-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 04:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarship`
--

-- --------------------------------------------------------

--
-- Table structure for table `central`
--

CREATE TABLE `central` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `criteria` varchar(250) NOT NULL,
  `deadline` varchar(250) NOT NULL,
  `apply` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `central`
--

INSERT INTO `central` (`id`, `name`, `category`, `criteria`, `deadline`, `apply`) VALUES
(2, 'Post matric scholarships scheme for minorities', 'Minority', 'For SC and ST, there are a fixed number of scholarships for minorities is small and limited. ', 'July- September', 'https://scholarships.gov.in/'),
(3, 'Financial assistance for education of the LSDM workers- post metric', 'Education', 'For the Wards of Beedi/Cine/IOMC/LSDM Workers ', 'July-October', 'https://scholarships.gov.in/fresh/newStudentRegFrm.action'),
(4, 'Prime Minister\'s Scholarship Scheme for Central Armed Police Forces and Assam Rifles', 'Education', 'All', 'August-November', 'https://scholarships.gov.in/'),
(5, 'Merit cum means scholarship for professional & technical courses', 'Education', 'Girls', 'July- September', 'https://scholarships.gov.in/fresh/onlineSanctionedList'),
(6, 'Prime Minister\'s Scholarship Scheme for Central Armed Police Forces and Assam Rifles', 'Education', 'https://scholarships.gov.in/', 'August-November', 'https://scholarships.gov.in/');

-- --------------------------------------------------------

--
-- Table structure for table `national`
--

CREATE TABLE `national` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `criteria` varchar(250) NOT NULL,
  `deadline` varchar(250) NOT NULL,
  `apply` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `national`
--

INSERT INTO `national` (`id`, `name`, `category`, `criteria`, `deadline`, `apply`) VALUES
(1, 'National overseas scholarship', 'International', 'SC, ST, and OBC', '31-Mar', 'https://nosmsje.gov.in/'),
(2, 'Fullbright-Kalam climate fellowship', 'International', 'All', '15-Sep', 'https://fulbrightscholars.org/award/fulbright-kalam-climate-fellowship'),
(3, 'Cornell university tata scholarship', 'International', 'All', 'varies on admission intake', 'https://admissions.cornell.edu/apply/international-students/tata-scholarship'),
(4, 'University of new south wales sydney', 'International', 'All', 'varies on admission intake', 'https://www.sydney.edu.au/scholarships/e/sydney-scholars-india-scholarship-program.html'),
(5, 'Charpak master\'s scholarship', 'International', 'All', '31-Mar', 'https://www.inde.campusfrance.org/charpak-master-s-scholarship'),
(6, 'SwarnaJayanti Fellowships Scheme 2020-21', 'National-central', 'All', 'March-April', 'https://onlinedst.gov.in/login.aspx'),
(7, 'Special Scholarship Scheme Ishan Uday', 'National-Central', 'Domicile based', 'September-October', 'https://www.ugc.ac.in/ner/About.aspx.');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `criteria` varchar(250) NOT NULL,
  `deadline` varchar(250) NOT NULL,
  `apply` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `category`, `criteria`, `deadline`, `apply`) VALUES
(1, 'Mukhyamantri Medhavi Vidyarthi Yojana (MMVY)', 'Madhya Pradesh', 'Merit based', 'March-April', 'http://scholarshipportal.mp.nic.in/MedhaviChhatra/Medhavi_New/About.aspx'),
(2, 'Post Matric Scholarship for SC Students', 'Gujarat', 'SC/ST', 'June-August', 'https://www.digitalgujarat.gov.in/'),
(3, 'Suvarna Jubilee Merit Scholarship', 'Kerala ', 'Merit based', 'August to September', 'https://www.dcescholarship.kerala.gov.in/dce/he_ma/he_maindx.php#dialog'),
(4, 'Rajarshi shahu maharaj scholarship', 'Maharashtra', 'Domcile', 'June-December', 'https://mahadbtmahait.gov.in/SchemeData/SchemeData?str=E9DDFA703C38E51AA54D7A32E4C3B30A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `central`
--
ALTER TABLE `central`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national`
--
ALTER TABLE `national`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `central`
--
ALTER TABLE `central`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `national`
--
ALTER TABLE `national`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
