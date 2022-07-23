-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 12:47 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `code`, `name`) VALUES
(1, 'BSIT', 'Bachelor of science in Information Technology'),
(2, 'BSBA', 'Bachelor of Science in Business Administration');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `id` int(1) NOT NULL,
  `day` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`id`, `day`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(10) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade`, `status`) VALUES
(1, 'First Year', ''),
(2, 'Second Year', ''),
(3, 'Third Year', ''),
(4, 'Fourth Year', ''),
(5, 'Fifth Year', ''),
(6, 'hjhdsak', '');

-- --------------------------------------------------------

--
-- Table structure for table `grades_per_subject`
--

CREATE TABLE `grades_per_subject` (
  `ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `YEAR` int(5) NOT NULL,
  `SUBJECT` varchar(20) NOT NULL,
  `PERIODIC_GRADING` int(5) NOT NULL,
  `GRADES` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(10) NOT NULL,
  `transaction` varchar(200) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `transaction`, `user_id`, `date_added`) VALUES
(26, 'logged in', 1, '2022-01-27 17:51:46'),
(27, 'logged in', 1, '2022-01-28 14:26:46'),
(28, 'updated 1 in the student list', 1, '2022-01-28 14:29:37'),
(29, 'updated 1 in the student list', 1, '2022-01-28 14:30:45'),
(30, 'logged in', 1, '2022-01-29 10:29:49'),
(31, 'logged in', 1, '2022-06-21 15:22:03'),
(32, 'logged out', 1, '2022-06-21 15:25:02'),
(33, 'logged in', 1, '2022-06-25 16:46:57'),
(34, 'added Jazeel Cuya as new student', 1, '2022-06-25 16:49:36'),
(35, 'printed John Smith permanent record', 1, '2022-06-25 17:11:50'),
(36, 'updated 1 in the grades list', 1, '2022-06-25 17:33:02'),
(37, 'updated 1 in the grades list', 1, '2022-06-25 17:33:09'),
(38, 'added 2nd year in the grades list', 1, '2022-06-25 17:33:21'),
(39, 'updated 5 in the grades list', 1, '2022-06-25 17:33:35'),
(40, 'updated 2 in the grades list', 1, '2022-06-25 17:33:49'),
(41, 'updated 3 in the grades list', 1, '2022-06-25 17:34:04'),
(42, 'updated 4 in the grades list', 1, '2022-06-25 17:34:12'),
(43, 'logged in', 1, '2022-06-26 10:10:50'),
(44, 'logged in', 1, '2022-06-26 10:18:01'),
(45, 'logged in', 1, '2022-06-26 10:22:01'),
(46, 'logged out', 1, '2022-06-26 10:34:17'),
(47, 'logged in', 1, '2022-06-26 10:34:29'),
(48, 'logged out', 1, '2022-06-26 10:38:45'),
(49, 'logged in', 1, '2022-06-26 10:39:04'),
(50, 'updated 2019-2020 as the current school year ', 1, '2022-06-26 12:01:06'),
(51, 'logged in', 1, '2022-07-04 12:22:03'),
(52, 'logged in', 1, '2022-07-06 09:10:21'),
(53, 'logged out', 1, '2022-07-06 09:20:09'),
(54, 'logged in', 2, '2022-07-06 09:20:19'),
(55, 'logged out', 2, '2022-07-06 09:20:32'),
(56, 'logged in', 1, '2022-07-06 09:20:44'),
(57, 'logged in', 1, '2022-07-07 09:14:20'),
(58, 'logged in', 1, '2022-07-08 15:43:05'),
(59, 'printed John Smith permanent record', 1, '2022-07-08 15:44:32'),
(60, 'logged in', 1, '2022-07-08 17:38:10'),
(61, 'printed John Smith permanent record', 1, '2022-07-08 18:10:28'),
(62, 'logged in', 1, '2022-07-09 11:28:09'),
(63, 'printed Jazeel Cuya permanent record', 1, '2022-07-09 11:31:19'),
(64, 'logged in', 1, '2022-07-09 11:36:13'),
(65, 'logged in', 1, '2022-07-09 15:35:30'),
(66, 'added hjhdsak in the grades list', 1, '2022-07-09 16:20:50'),
(67, 'logged in', 1, '2022-07-11 15:09:32'),
(68, 'logged in', 1, '2022-07-12 10:20:08'),
(69, 'logged in', 1, '2022-07-12 12:59:58'),
(70, 'logged in', 1, '2022-07-15 22:17:22'),
(71, 'printed Jazeel Cuya permanent record', 1, '2022-07-15 22:17:32'),
(72, 'logged in', 1, '2022-07-19 17:58:58'),
(73, 'printed Promoted Student List of 2016-2017', 1, '2022-07-19 18:19:53'),
(74, 'printed  Student List of ', 1, '2022-07-19 18:21:15'),
(75, 'printed  Student List of ', 1, '2022-07-19 18:30:11'),
(76, 'printed  Student List of ', 1, '2022-07-19 18:32:02'),
(77, 'printed  Student List of ', 1, '2022-07-19 18:32:06'),
(78, 'printed  Student List of ', 1, '2022-07-19 18:32:13'),
(79, 'printed  Student List of ', 1, '2022-07-19 18:32:33'),
(80, 'printed  Student List of ', 1, '2022-07-19 18:36:01'),
(81, 'printed  Student List of ', 1, '2022-07-19 18:38:08'),
(82, 'printed  Student List of ', 1, '2022-07-19 18:39:13'),
(83, 'printed  Student List of ', 1, '2022-07-19 18:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_availability`
--

CREATE TABLE `instructor_availability` (
  `ID` int(11) NOT NULL,
  `TEACHER_ID` int(11) NOT NULL,
  `FROMTIME` int(11) NOT NULL,
  `TOTIME` int(11) NOT NULL,
  `DAY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor_availability`
--

INSERT INTO `instructor_availability` (`ID`, `TEACHER_ID`, `FROMTIME`, `TOTIME`, `DAY`) VALUES
(9, 1, 1, 7, 1),
(10, 2, 13, 17, 3),
(11, 3, 17, 23, 5),
(12, 3, 7, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `ID` int(11) NOT NULL,
  `ROOM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`ID`, `ROOM`) VALUES
(1, 'ROOM 204'),
(2, 'ROOM 201'),
(3, 'ROOM 203'),
(5, 'ROOM 406'),
(6, 'ROOM 305');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `SCHED_ID` int(11) NOT NULL,
  `TEACHER_ID` int(11) NOT NULL,
  `ROOM_ID` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL,
  `DAY_ID` int(11) NOT NULL,
  `START_TIME` int(11) NOT NULL,
  `END_TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`SCHED_ID`, `TEACHER_ID`, `ROOM_ID`, `SUBJECT_ID`, `DAY_ID`, `START_TIME`, `END_TIME`) VALUES
(1, 1, 1, 1, 1, 1, 3),
(12, 1, 0, 1, 1, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `SY_ID` int(10) NOT NULL,
  `school_year` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`SY_ID`, `school_year`, `status`) VALUES
(1, '2021-2022', 'Yes'),
(2, '2017-2018', 'No'),
(3, '2018-2019', 'No'),
(4, '2019-2020', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` int(12) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `STREET` varchar(30) NOT NULL,
  `PROVINCE` varchar(30) NOT NULL,
  `TOWN` varchar(30) NOT NULL,
  `BRGY` varchar(30) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` int(6) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `PROGRAM` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `STUDENT_ID` int(50) NOT NULL,
  `ID_NO` varchar(15) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `ADDRESS` varchar(20) NOT NULL,
  `YEAR` varchar(20) NOT NULL,
  `COURSE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`STUDENT_ID`, `ID_NO`, `LASTNAME`, `FIRSTNAME`, `MIDDLENAME`, `GENDER`, `DATE_OF_BIRTH`, `ADDRESS`, `YEAR`, `COURSE`) VALUES
(1, '1', 'Smith', 'John', 'C', 'FEMALE', '1999-06-23', 'Sample', 'First Year', '1'),
(2, '2', 'Cuya', 'Jazeel', 'Competente', 'FEMALE', '1998-11-09', 'Bolo tiwi,Albay', 'Fifth Year', '2'),
(4, '3', 'khsj', 'lmsanj', ',sanl', 'FEMALE', '2022-07-05', 'Bolo tiwi,Albay', 'Third Year', '1'),
(5, '102', 'Fukuda', 'Joya', 'Villar', 'FEMALE', '2019-07-02', 'Nagas tiwi,Albay', 'Fourth Year', '1'),
(6, '4', 'Nali', 'Karen', 'Milan', 'FEMALE', '2001-11-08', 'Tabaco City', 'Third Year', '2');

-- --------------------------------------------------------

--
-- Table structure for table `student_int_info`
--

CREATE TABLE `student_int_info` (
  `ID` int(30) NOT NULL,
  `STUDENT_ID` varchar(30) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR_START` year(4) NOT NULL,
  `SCHOOL_YEAR_ENDS` year(4) NOT NULL,
  `GEN_AVE` int(5) NOT NULL,
  `TOTAL_NO_YEARS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SUBJECT_ID` int(11) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `CLASS_TEACHER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SUBJECT_ID`, `SUBJECT`, `DESCRIPTION`, `CLASS_TEACHER_ID`) VALUES
(1, 'English', 'English', 2),
(2, 'Math', 'Math', 2),
(3, 'Programming', 'Basic Css, mysqli, php  and scripting', 1),
(4, 'Calculus', 'Math in modern World', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject_classes`
--

CREATE TABLE `subject_classes` (
  `ID` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_classes`
--

INSERT INTO `subject_classes` (`ID`, `SUBJECT_ID`, `STUDENT_ID`) VALUES
(7, 2, 2),
(8, 2, 102);

-- --------------------------------------------------------

--
-- Table structure for table `subject_grade`
--

CREATE TABLE `subject_grade` (
  `ID` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `PRELIMS` int(11) NOT NULL,
  `MIDTERMS` int(11) NOT NULL,
  `PRE_FINALS` int(11) NOT NULL,
  `FINALS` int(11) NOT NULL,
  `AVE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_grade`
--

INSERT INTO `subject_grade` (`ID`, `SUBJECT_ID`, `STUDENT_ID`, `PRELIMS`, `MIDTERMS`, `PRE_FINALS`, `FINALS`, `AVE`) VALUES
(4, 2, 2, 90, 89, 78, 90, 87),
(5, 2, 102, 90, 90, 90, 90, 90);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `TEACHER_ID` int(10) NOT NULL,
  `LASTNAME` varchar(255) NOT NULL,
  `FIRSTNAME` varchar(255) NOT NULL,
  `MIDDLENAME` varchar(255) NOT NULL,
  `GENDER` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`TEACHER_ID`, `LASTNAME`, `FIRSTNAME`, `MIDDLENAME`, `GENDER`) VALUES
(1, 'Narvaja', 'Joyce', 'Cillano', 'FEMALE'),
(2, 'Nola', 'Jhon', 'Natu', 'MALE'),
(3, 'Gill', 'Hannah', 'Villano', 'FEMALE');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `time` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `time`) VALUES
(1, '7:00'),
(2, '7:30'),
(3, '8:00'),
(4, '8:30'),
(5, '9:00'),
(6, '9:30'),
(7, '10:00'),
(8, '10:30'),
(9, '11:00'),
(10, '11:30'),
(11, '12:00'),
(12, '12:30'),
(13, '1:00'),
(14, '1:30'),
(15, '2:00'),
(16, '2:30'),
(17, '3:00'),
(18, '3:30'),
(19, '4:00'),
(20, '4:30'),
(21, '5:00'),
(22, '5:30'),
(23, '6:00'),
(24, '6:30'),
(25, '7:00'),
(26, '7:30'),
(27, '8:00');

-- --------------------------------------------------------

--
-- Table structure for table `total_grades_subjects`
--

CREATE TABLE `total_grades_subjects` (
  `TGS_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `SUBJECT` int(20) NOT NULL,
  `1ST_GRADING` varchar(10) NOT NULL,
  `2ND_GRADING` varchar(10) NOT NULL,
  `3RD_GRADING` varchar(10) NOT NULL,
  `4TH_GRADING` varchar(10) NOT NULL,
  `UNITS` varchar(10) NOT NULL,
  `FINAL_GRADES` varchar(10) NOT NULL,
  `PASSED_FAILED` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_grades_subjects`
--

INSERT INTO `total_grades_subjects` (`TGS_ID`, `STUDENT_ID`, `SYI_ID`, `SUBJECT`, `1ST_GRADING`, `2ND_GRADING`, `3RD_GRADING`, `4TH_GRADING`, `UNITS`, `FINAL_GRADES`, `PASSED_FAILED`) VALUES
(1, 1, 1, 1, '90', '90', '90', '90', '1', '90.00', 'PASSED'),
(2, 1, 1, 2, '90', '90', '90', '90', '1', '90.00', 'PASSED'),
(3, 1, 2, 1, '90', '90', '90', '90', '1', '90.00', 'PASSED'),
(4, 1, 2, 2, '85', '88', '87', '85', '1', '86.25', 'PASSED');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `USER` varchar(10) NOT NULL,
  `PASSWORD` text NOT NULL,
  `USER_TYPE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `LASTNAME`, `FIRSTNAME`, `USER`, `PASSWORD`, `USER_TYPE`) VALUES
(1, 'Villamonte', 'Salve', 'admin', '0192023a7bbd73250516f069df18b500', 'ADMINISTRATOR'),
(2, 'staff', 'staff', 'staff', '0192023a7bbd73250516f069df18b500', 'STAFF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `instructor_availability`
--
ALTER TABLE `instructor_availability`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`SCHED_ID`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`SY_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_int_info`
--
ALTER TABLE `student_int_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SUBJECT_ID`);

--
-- Indexes for table `subject_classes`
--
ALTER TABLE `subject_classes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subject_grade`
--
ALTER TABLE `subject_grade`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`TEACHER_ID`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  ADD PRIMARY KEY (`TGS_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `instructor_availability`
--
ALTER TABLE `instructor_availability`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `SCHED_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `SY_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_int_info`
--
ALTER TABLE `student_int_info`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject_classes`
--
ALTER TABLE `subject_classes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subject_grade`
--
ALTER TABLE `subject_grade`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `TEACHER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  MODIFY `TGS_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
