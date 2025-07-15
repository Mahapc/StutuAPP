-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2025 at 07:22 PM
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
-- Database: `stutu`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `tutor` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `sub_subj` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `tutor`, `subject`, `sub_subj`, `course_name`, `video`, `description`) VALUES
(2, 'a@gmail.com', 'biology', 'botany', 'Biological Classification', 'biobot.mp4', 'Biological classification is defined as the process of grouping organisms accordingtocertainsimilarities. Linnaeus proposed the two kingdoms of classification, He classified organisms in theanimal\r\nkingdom which is called Animalia and in the plant kingdom'),
(3, 'a@gmail.com', 'biology', 'botany', 'Plant kingdom', 'biobot.mp4', 'The classification of Plant kingdom depending on flowering. Divided into two-Cryptogamae (non-flowering, seedless plants) and Phanerogamae(flowering, seed-bearing plants). Based on the Plant Body Cryptogamae is divided into Thallophyta, Bryophyta, andPter'),
(5, 'b@gmail.com', 'biology', 'zoology', 'Entomology', 'biozoo.mp4', 'The term entomology is derived from two Greek words. Entomon means an\r\ninsect and logos means to study. The term ‘insect’ is derived from the Latin word\r\ninsectum which means ‘cut into’.\r\nInsects are harmful to man as pests of cultivated crops, animals, s'),
(7, 'b@gmail.com', 'Chemistry', 'Organic Chemistry', 'Structure and bonding', 'chemorg.mp4', 'Introduction The physical properties (boiling point, conductivity, strength) of a substance\r\ndepend on its structure and type of bonding. Bonding determines the structure.\r\nTYPES OF BOND\r\nBond types\r\nCHEMICAL BONDS (strong bonds)\r\nPHYSICAL BONDS\r\n(weak bo'),
(11, 'a@gmail.com', 'physics', '', 'Newtons Law of Gravitation', 'phy.mp4', 'Every particle of matter attracts every other particle of matter with a force that is\r\nproportional to the product of their masses and inversely proportional to the square\r\nof their separation.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `tutor` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `star` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `tutor`, `student`, `star`, `reason`) VALUES
(2, 'a@gmail.com', 'sri', 4, 'ggqeyvyfe'),
(3, 'a@gmail.com', 'bal', 5, 'iweuie'),
(4, 'a@gmail.com', 'sri@gmail.com', 5, 'hello'),
(5, 'b@gmail.com', 'sri@gmail.com', 5, 'awesome '),
(6, 'a@gmail.com', 'sri@gmail.com', 4, 'wow');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `tutor` varchar(300) NOT NULL,
  `student` varchar(300) NOT NULL,
  `course` int(11) NOT NULL,
  `status` varchar(300) NOT NULL,
  `date` date DEFAULT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `tutor`, `student`, `course`, `status`, `date`, `start`, `end`, `link`) VALUES
(1, 'a@gmail.com', 'sri@gmail.com', 3, 'pending', '2025-03-01', '04:50:00', '06:54:00', 'https://meet.google.com/rxz-zzxw-rpt'),
(2, 'a@gmail.com', 'sri@gmail.com', 2, 'rejected', '2025-03-03', '16:00:00', '21:00:00', NULL),
(3, 'a@gmail.com', 'sri@gmail.com', 2, 'success', '2025-03-03', '22:23:00', '12:23:00', 'https://meet.google.com/rxz-zzxw-rpt'),
(4, 'a@gmail.com', 'maha@gmail.com', 2, 'pending', '2025-06-07', '13:18:00', '14:18:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'Male',
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `email`, `name`, `age`, `gender`, `password`, `otp`) VALUES
(1, 'sri@gmail.com', 'sri balaji', 25, 'Male', '1234', ''),
(2, 'bal', 'maha', 0, 'Male', '1234', ''),
(8, 'maha@gmail.com', 'maha', 17, 'Female', '1234', NULL),
(9, 'laks@gmail.com', 'lakshmi', 25, 'Female', '1234', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'Male',
  `exp` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `experience` int(11) NOT NULL,
  `otp` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `email`, `name`, `age`, `gender`, `exp`, `password`, `experience`, `otp`) VALUES
(2, 'a@gmail.com', 'john', 0, 'Male', 0, '12345', 2, NULL),
(3, 'b@gmail.com', 'mathew', 0, 'Male', 0, '12345', 2, NULL),
(6, 'ben@gmail.com', 'Benicia', 35, 'Female', 3, '12345', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
