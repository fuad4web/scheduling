-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 05:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `cys`
--

CREATE TABLE `cys` (
  `cys_id` int(11) NOT NULL,
  `cys` varchar(20) NOT NULL,
  `numb` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cys`
--

INSERT INTO `cys` (`cys_id`, `cys`, `numb`, `rank_id`) VALUES
(20, 'ART 200 Level', 250, 28),
(18, 'EC 400 Level', 320, 30),
(17, 'EC 200 Level', 234, 30),
(16, 'EC 100 Level', 262, 30),
(15, 'CSC 400 Level', 500, 27),
(14, 'CSC 300 Level', 300, 27),
(13, 'CSC 200 Level', 137, 27),
(21, 'ART 400 Level', 43, 28),
(22, 'LIB 100 Level', 362, 29),
(23, 'LIB 200 Level', 262, 29),
(24, 'LIB 300 Level', 75, 29),
(25, 'LIB 400 Level', 100, 29);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_code`, `dept_name`, `rank_id`) VALUES
(15, 'EC', 'Economics', 30),
(14, 'LIB', 'Libarary', 29),
(12, 'STA', 'Statistics', 27),
(13, 'VSA', 'Visual Art', 28),
(11, 'CSC', 'Computer Science', 27);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`) VALUES
(1, 'Faculty'),
(2, 'Dean'),
(3, 'Officer'),
(4, 'Fin');

-- --------------------------------------------------------

--
-- Table structure for table `exam_sched`
--

CREATE TABLE `exam_sched` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `cys1` varchar(10) NOT NULL,
  `term` varchar(10) NOT NULL,
  `encoded_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(30) NOT NULL,
  `member_first` varchar(30) NOT NULL,
  `member_rank` varchar(50) NOT NULL,
  `member_salut` varchar(30) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `last_class` int(11) NOT NULL,
  `last_room` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_rank`, `member_salut`, `dept_code`, `designation_id`, `program_code`, `username`, `password`, `status`, `last_class`, `last_room`) VALUES
(1, 'Admin', 'Admin', 'Assistant Professor I', 'Mrs', 'CIT', 67, '', 'admin', 'admin', 'admin', 0, 0),
(23, 'Zainab', 'Sanni', 'Faculty of Art', 'Ms', 'EC', 4, '', 'sanni', 'zainab', 'lecturer', 0, 0),
(22, 'Eniola', 'Mesoran', 'Faculty of Education', 'Mr', 'LIB', 1, '', 'mesoran', 'eniola', 'lecturer', 0, 0),
(21, 'Joachim', 'Nkemdilim', 'Faculty of Economics', 'Dr', 'EC', 2, '', 'nkemdilim', 'joachim', 'lecturer', 0, 0),
(20, 'Damilola', 'Akinmosin', 'Faculty of Science', 'Dr', 'CSC', 1, '', 'akinmosin', 'damilola', 'lecturer', 0, 0),
(19, 'Elizabeth', 'Ayodele', 'Faculty of Art', 'Ms', 'LIB', 0, '', 'ayodele', 'elizabeth', 'student', 0, 0),
(18, 'Luthfulahi', 'Oseni', 'Faculty of Science', 'Mr', 'CSC', 0, '', 'oseni', 'luthfulahi', 'student', 0, 0),
(11, 'Fuad', 'Abdulhammed', 'Faculty of Art', 'Dr', 'LIB', 2, '', 'fuskydon', 'fuskydon', 'lecturer', 0, 0),
(10, 'Adeyinka', 'Toyin', 'Faculty of Science', 'Prof', 'CSC', 1, '', 'toyin', 'adeyinka', 'admin', 500, 1000),
(24, 'Lanre', 'Khujore', 'Faculty of Science', 'Mrs', 'EC', 1, '', 'khujore', 'lanre', 'lecturer', 0, 0),
(25, 'Collins', 'Okunola', 'Faculty of Education', 'Prof', 'STA', 1, '', 'okunola', 'collins', 'lecturer', 0, 0),
(26, 'Hammed', 'Afolayan', 'Faculty of Economics', 'Mr', 'CSC', 2, '', 'afolayan', 'hammed', 'lecturer', 0, 0),
(27, 'Desmond', 'Ngwuta', 'Faculty of Science', 'Mr', 'STA', 0, '', 'ngwuta', 'desmond', 'student', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_id` int(11) NOT NULL,
  `prog_code` varchar(10) NOT NULL,
  `prog_title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_id`, `prog_code`, `prog_title`) VALUES
(1, 'BSPsych ', 'Bachelor of Science in Psychology'),
(2, 'BSED', 'Bachelor of Science in Secondary Education'),
(3, 'BEED', 'Bachelor of Science in Elementary Education'),
(4, 'Dr.', 'Doctorate');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `rank` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank`) VALUES
(30, 'Faculty of Economics'),
(29, 'Faculty of Education'),
(28, 'Faculty of Art'),
(27, 'Faculty of Science');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room` varchar(15) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room`, `capacity`) VALUES
(13, 'BEC 103', 230),
(12, 'BEC 102', 250),
(11, 'CES 421', 1000),
(10, 'CEC 103', 100),
(9, 'CEC 102', 90),
(21, 'CEC 101', 250),
(14, 'CSE', 350);

-- --------------------------------------------------------

--
-- Table structure for table `salut`
--

CREATE TABLE `salut` (
  `salut_id` int(11) NOT NULL,
  `salut` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salut`
--

INSERT INTO `salut` (`salut_id`, `salut`) VALUES
(1, 'Ms'),
(2, 'Mrs'),
(3, 'Mr'),
(5, 'Dr'),
(6, 'Prof'),
(7, 'Engr');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `encoded_by` varchar(10) NOT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sched_id`, `time_id`, `day`, `member_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `encoded_by`, `rank_id`) VALUES
(163, 1, 'f', 25, 'CSC 101', '28', 'BEC 101', '', 2, '10', 28),
(164, 24, 't', 25, 'CSC 101', '28', 'BEC 101', '', 2, '10', 28),
(165, 24, 'th', 25, 'CSC 101', '28', 'BEC 101', '', 2, '10', 28),
(195, 30, 'th', 26, 'CSC 304', '14', 'CES 421   1000 ', 'Yeeees', 2, '10', 29),
(176, 3, 'm', 25, 'CSC 101', '12', 'BEC 101', '', 2, '10', 29),
(177, 3, 'w', 25, 'CSC 101', '12', 'BEC 101', '', 2, '10', 29),
(178, 3, 'f', 25, 'CSC 101', '12', 'BEC 101', '', 2, '10', 29),
(218, 4, 'f', 20, 'CSC 304', '15', '11', 'Wow, now working', 2, '10', 27),
(219, 24, 't', 22, 'CSC 304', '15', '11', 'Alhamdulillahi', 2, '10', 27),
(217, 3, 'f', 20, 'CSC 304', '15', '11', 'Wow, now working', 2, '10', 27),
(189, 29, 't', 25, 'STA 101', '15', 'BEC 103', '', 2, '10', 29),
(208, 8, 'w', 25, 'CSC 101', '15', 'CEC 102   90   ', '', 2, '10', 28),
(207, 6, 'm', 25, 'CSC 101', '15', 'CEC 102   90   ', '', 2, '10', 28);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `term` varchar(10) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `sy` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `term`, `sem`, `sy`, `status`) VALUES
(5, '', '2nd', '2021-2022', 'inactive'),
(2, '', '2nd', '2020-2021', 'active'),
(4, '', '1st', '2021-2022', 'inactive'),
(9, '', '3rd', '2021-2022', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `sign_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `seq` int(2) NOT NULL,
  `set_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signatories`
--

INSERT INTO `signatories` (`sign_id`, `member_id`, `seq`, `set_by`) VALUES
(825368631, 1163599920, 1380930130, 2037194845),
(778333297, 979728485, 1650545696, 656434540),
(1751348060, 1819632741, 1550282345, 539457907),
(1634541683, 1684368242, 544432416, 1935766115),
(1629512805, 1931502702, 1819635560, 1700929636),
(1634755954, 1684370025, 808585741, 825045298),
(540553773, 842674208, 926038581, 808530464),
(1918981979, 1735289198, 1749229661, 1768645477),
(1635000423, 979725410, 656416800, 1668504622);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `member_id`, `rank_id`) VALUES
(15, 'EC 304', 'Trade by Barter', 1, 30),
(14, 'VS 402', 'Mosaic', 1, 28),
(13, 'LIB 304', 'How to maintain Library', 1, 29),
(12, 'STA 101', 'Intro to Algebra', 1, 27),
(11, 'CSC 304', 'Computer Application Packages', 1, 27),
(10, 'CSC 101', 'Intro to Computer', 1, 27);

-- --------------------------------------------------------

--
-- Table structure for table `sy`
--

CREATE TABLE `sy` (
  `sy_id` int(11) NOT NULL,
  `sy` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy`
--

INSERT INTO `sy` (`sy_id`, `sy`) VALUES
(13, '2022-2023'),
(12, '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `days` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `time_start`, `time_end`, `days`) VALUES
(1, '07:30:00', '08:30:00', 'mwf'),
(2, '08:30:00', '09:30:00', 'mwf'),
(3, '09:30:00', '10:30:00', 'mwf'),
(4, '10:30:00', '11:30:00', 'mwf'),
(5, '11:30:00', '12:30:00', 'mwf'),
(6, '12:30:00', '13:30:00', 'mwf'),
(7, '13:30:00', '14:30:00', 'mwf'),
(8, '14:30:00', '15:30:00', 'mwf'),
(9, '15:30:00', '16:30:00', 'mwf'),
(10, '16:30:00', '17:30:00', 'mwf'),
(11, '17:30:00', '18:30:00', 'mwf'),
(12, '18:30:00', '19:30:00', 'mwf'),
(13, '19:30:00', '20:30:00', 'tth'),
(14, '19:30:00', '20:30:00', 'mwf'),
(15, '15:00:00', '16:00:00', 'fst'),
(16, '10:00:00', '11:00:00', 'fst'),
(17, '09:00:00', '10:00:00', 'fst'),
(18, '08:00:00', '09:00:00', 'fst'),
(19, '14:00:00', '15:00:00', 'fst'),
(20, '13:00:00', '14:00:00', 'fst'),
(21, '11:00:00', '12:00:00', 'fst'),
(22, '16:00:00', '17:00:00', 'fst'),
(23, '17:00:00', '18:00:00', 'fst'),
(24, '07:30:00', '08:30:00', 'tth'),
(25, '08:30:00', '09:30:00', 'tth'),
(26, '09:30:00', '10:30:00', 'tth'),
(27, '10:30:00', '11:30:00', 'tth'),
(28, '11:30:00', '12:30:00', 'tth'),
(29, '12:30:00', '13:30:00', 'tth'),
(30, '13:30:00', '14:30:00', 'tth'),
(31, '14:30:00', '15:30:00', 'tth'),
(32, '15:30:00', '16:30:00', 'tth'),
(33, '16:30:00', '17:30:00', 'tth'),
(34, '17:30:00', '18:30:00', 'tth'),
(35, '18:30:00', '19:30:00', 'tth');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `program` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `program`) VALUES
(1, 'President', '21232f297a57a5a743894a0e4a801fc3', 'CSA University of Ibadan', 'active', 'all');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cys`
--
ALTER TABLE `cys`
  ADD PRIMARY KEY (`cys_id`),
  ADD UNIQUE KEY `cys` (`cys`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `exam_sched`
--
ALTER TABLE `exam_sched`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `salut`
--
ALTER TABLE `salut`
  ADD PRIMARY KEY (`salut_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
  ADD PRIMARY KEY (`sign_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `sy`
--
ALTER TABLE `sy`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cys`
--
ALTER TABLE `cys`
  MODIFY `cys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_sched`
--
ALTER TABLE `exam_sched`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `salut`
--
ALTER TABLE `salut`
  MODIFY `salut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
  MODIFY `sign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1918981980;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sy`
--
ALTER TABLE `sy`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
