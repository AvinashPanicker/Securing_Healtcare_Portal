-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2018 at 05:55 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `semester` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `att_per` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `branch`, `semester`, `reg_no`, `name`, `att_per`) VALUES
(13, 'IT', 8, 14153004, 'aswani', 91),
(11, 'IT', 8, 14153002, 'amal', 89),
(12, 'IT', 8, 14153003, 'arun', 90),
(10, 'IT', 8, 14153001, 'ajmal', 87),
(14, 'IT', 8, 14153005, 'govind', 92),
(15, 'IT', 8, 14153006, 'jacob', 93),
(16, 'IT', 8, 14153007, 'kiran', 94),
(17, 'IT', 8, 14153008, 'mark', 95),
(18, 'IT', 8, 14153009, 'mohammed hafneem', 96),
(19, 'IT', 8, 14153010, 'nigel', 97),
(20, 'IT', 8, 14153011, 'nirmal', 98),
(21, 'IT', 8, 14153012, 'nithin', 99),
(22, 'IT', 8, 14153013, 'aayushi', 100),
(23, 'IT', 8, 14153014, 'akhina', 100),
(24, 'IT', 8, 14153015, 'aleena', 99),
(25, 'IT', 8, 14153016, 'amrutha p u', 98),
(26, 'IT', 8, 14153017, 'amrutha sunny', 97),
(27, 'IT', 8, 14153018, 'aryalakshmi', 96),
(28, 'IT', 8, 14153019, 'anjitha', 95),
(29, 'IT', 8, 14153020, 'ashitha', 94),
(30, 'IT', 8, 14153021, 'beula', 93),
(31, 'IT', 8, 14153022, 'bilha', 92),
(32, 'IT', 8, 14153023, 'c s sneha ', 91),
(33, 'IT', 8, 14153024, 'charmaine', 90),
(34, 'IT', 8, 14153025, 'kavya', 89),
(35, 'IT', 8, 14153026, 'mary divine', 88),
(36, 'IT', 8, 14153027, 'merin', 87),
(37, 'IT', 8, 14153028, 'nandini', 86),
(38, 'IT', 8, 14153029, 'nasna', 85),
(39, 'IT', 8, 14153030, 'remya', 84),
(40, 'IT', 8, 14153031, 'reshma', 83),
(41, 'IT', 8, 14153032, 'roshni', 82),
(42, 'IT', 8, 14153033, 'sherin', 81),
(43, 'IT', 8, 14153034, 'susmitha', 80),
(44, 'IT', 8, 14153035, 'dilrooba', 79);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mob_no` int(11) NOT NULL,
  `message` varchar(450) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `mob_no`, `message`) VALUES
(1, 'susmitha nair', 'susmithakochi@gmail.com', 123456789, 'does the college function on saturdays');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `questions` varchar(250) NOT NULL,
  `date_time` datetime NOT NULL,
  `status` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `questions`, `date_time`, `status`) VALUES
(42, 'In which quota do you wish to get aadmission', '2017-12-30 13:33:44', NULL),
(43, 'kjh', '0000-00-00 00:00:00', 'spam'),
(44, 'what does nss club provide?', '2018-01-02 13:57:47', NULL),
(45, 'E-Bot?', '2018-01-02 14:44:02', NULL),
(46, 'nss?\n', '2018-01-02 14:46:56', NULL),
(47, 'NSS?', '2018-01-02 14:47:04', NULL),
(48, 'nss?', '2018-01-03 11:00:08', NULL),
(49, 'nss?', '2018-01-15 12:53:23', NULL),
(50, 'nss?', '2018-01-15 12:54:41', NULL),
(51, 'vh jgj jh  ', '2018-01-15 13:14:14', NULL),
(52, 'nss?', '2018-01-15 13:15:22', NULL),
(53, 'axb', '2018-01-15 13:29:50', NULL),
(54, '', '0000-00-00 00:00:00', ''),
(55, 'undefined', '0000-00-00 00:00:00', NULL),
(56, 'undefined', '0000-00-00 00:00:00', NULL),
(57, 'btranches', '0000-00-00 00:00:00', NULL),
(58, 'university', '0000-00-00 00:00:00', NULL),
(59, 'hostal', '0000-00-00 00:00:00', NULL),
(60, 'hostel', '0000-00-00 00:00:00', NULL),
(61, 'library', '0000-00-00 00:00:00', NULL),
(62, 'water', '0000-00-00 00:00:00', NULL),
(63, 'food', '0000-00-00 00:00:00', NULL),
(64, 'undefined', '0000-00-00 00:00:00', NULL),
(65, 'undefined', '0000-00-00 00:00:00', NULL),
(66, 'undefined', '0000-00-00 00:00:00', NULL),
(67, 'undefined', '0000-00-00 00:00:00', NULL),
(68, 'undefined', '0000-00-00 00:00:00', NULL),
(69, 'undefined', '0000-00-00 00:00:00', NULL),
(70, 'who merin joe chandy', '0000-00-00 00:00:00', NULL),
(71, 'educational quality', '0000-00-00 00:00:00', NULL),
(72, 'canteen', '0000-00-00 00:00:00', NULL),
(73, 'fest', '0000-00-00 00:00:00', NULL),
(74, 'faculty', '0000-00-00 00:00:00', NULL),
(75, 'sports', '0000-00-00 00:00:00', NULL),
(76, 'established', '0000-00-00 00:00:00', NULL),
(77, 'founder', '0000-00-00 00:00:00', NULL),
(78, 'parking space', '0000-00-00 00:00:00', NULL),
(79, 'wifi', '0000-00-00 00:00:00', NULL),
(80, 'library', '0000-00-00 00:00:00', NULL),
(81, 'smart class', '0000-00-00 00:00:00', NULL),
(82, 'undefined', '0000-00-00 00:00:00', NULL),
(83, 'undefined', '0000-00-00 00:00:00', NULL),
(84, 'mangement', '0000-00-00 00:00:00', NULL),
(85, 'library library', '0000-00-00 00:00:00', NULL),
(86, 'library library', '0000-00-00 00:00:00', NULL),
(87, 'library library', '0000-00-00 00:00:00', NULL),
(88, 'library library', '0000-00-00 00:00:00', NULL),
(89, 'library library', '0000-00-00 00:00:00', NULL),
(90, 'library librarytime', '0000-00-00 00:00:00', NULL),
(91, 'library library', '0000-00-00 00:00:00', NULL),
(92, 'library', '0000-00-00 00:00:00', NULL),
(93, '', '0000-00-00 00:00:00', NULL),
(94, 'hai', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `feedback` varchar(350) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback`, `email`) VALUES
(1, 'test', 'gettoanish@gmail.com'),
(2, 'hi', 'roshni1196@gmail.com'),
(6, 'specify notes privacy', 'aleenaealias@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hidden_layer`
--

CREATE TABLE `hidden_layer` (
  `id` int(11) NOT NULL,
  `word1` varchar(150) NOT NULL,
  `word2` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hidden_layer`
--

INSERT INTO `hidden_layer` (`id`, `word1`, `word2`) VALUES
(1, 'rts', 'real time systems'),
(2, 'dc', 'distributed computing'),
(3, 'nss', 'national service scheme'),
(5, 'CS', 'Computer Science'),
(6, 'ME', 'Mechanical Engineeing'),
(7, 'civil engineering', 'CE'),
(8, 'EC', 'Electronics and Communications'),
(9, 'IT', 'Informaton Technology'),
(10, 'departments', 'branches'),
(11, 'place', 'located');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `msg` varchar(30) NOT NULL,
  `reply` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id`, `reg_no`, `msg`, `reply`) VALUES
(1, 14153016, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(2, 14153016, 'admission procedures?', 'Depends on which quota you wan'),
(3, 14153016, 'ok ty', 'Sorry I cant Help You'),
(4, 14153035, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(5, 14153035, 'bus details?', 'Sorry I cant Help You'),
(6, 14153035, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(7, 14153035, 'mark', 'hello i am E-BOT\r\nHow can I he'),
(8, 14153035, 'mark', 'hello i am E-BOT\r\nHow can I he'),
(9, 14153035, 'mark', 'hello i am E-BOT\r\nHow can I he'),
(10, 14153035, 'internal marks?', 'hello i am E-BOT\r\nHow can I he'),
(11, 14153035, 'mark', 'hello i am E-BOT\r\nHow can I he'),
(12, 14153035, 'Distributed Computing mark', 'hello i am E-BOT\r\nHow can I he'),
(13, 14153035, 'mark', 'hello i am E-BOT\r\nHow can I he'),
(14, 14153035, 'Distributed Computing mark', 'hello i am E-BOT\r\nHow can I he'),
(15, 0, 'Distributed Computing mark', 'hello i am E-BOT\r\nHow can I he'),
(16, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(17, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(18, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(19, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(20, 0, 'hai', 'hello i am E-BOT\r\nHow can I he'),
(21, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(22, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(23, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(24, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(25, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(26, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(27, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(28, 0, 'heloo', 'hai I am E-BOT \r\nhow can I hel'),
(29, 0, 'hi\n', 'hello i am E-BOT\r\nHow can I he'),
(30, 0, 'when is republic day', 'Sorry I cant Help You'),
(31, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(32, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(33, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(34, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(35, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(36, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(37, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(38, 0, 'hllo', 'hai I am E-BOT \r\nhow can I hel'),
(39, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(40, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(41, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(42, 0, 'how will the seats for managem', 'The seats under Govt. quota wi'),
(43, 0, 'who are the admission officers', 'Dr. Sreeja Subhash, Dr. Sanjay'),
(44, 0, 'how to contact them?', 'Sorry I cant Help You'),
(45, 0, 'HELLO', 'Sorry I cant Help You'),
(46, 0, 'HELLO', 'Sorry I cant Help You'),
(47, 0, 'HELLO', 'Sorry I cant Help You'),
(48, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(49, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(50, 0, 'what are the admission procedu', 'Depends on which quota you wan'),
(51, 0, 'what are they?\n', 'we offer Btech,Mtech and MBA'),
(52, 0, 'how are the seats in managemen', 'The seats under Govt. quota wi'),
(53, 0, 'who are the admission officers', 'Dr. Sreeja Subhash, Dr. Sanjay'),
(54, 0, 'hoi\n', 'hello i am E-BOT\r\nHow can I he'),
(55, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(56, 0, 'hello!!!!!!!!!!!!!!\n', 'Sorry I cant Help You'),
(57, 0, 'hello!', 'hai I am E-BOT \r\nhow can I hel'),
(58, 0, 'hello :)\n', 'hai I am E-BOT \r\nhow can I hel'),
(59, 0, 'hi1:?)', 'Sorry I cant Help You'),
(60, 0, 'hai\n', 'hello i am E-BOT\r\nHow can I he'),
(61, 0, 'haha', 'Sorry I cant Help You'),
(62, 0, 'hai!!', 'Sorry I cant Help You'),
(63, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(64, 0, 'helllo', 'hai I am E-BOT \r\nhow can I hel'),
(65, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(66, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(67, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(68, 0, 'hi', 'hello i am E-BOT\r\nHow can I he'),
(69, 0, 'hello', 'hai I am E-BOT \r\nhow can I hel'),
(70, 14153016, 'heloo what are the courses off', 'we offer Btech,Mtech and MBA');

-- --------------------------------------------------------

--
-- Table structure for table `internalmarks`
--

CREATE TABLE `internalmarks` (
  `id` int(11) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `semester` int(11) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `int_marks` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internalmarks`
--

INSERT INTO `internalmarks` (`id`, `branch`, `semester`, `subject`, `reg_no`, `name`, `int_marks`) VALUES
(6, 'IT', 8, 'Real Time Systems', 14153002, 'amal', 30),
(5, 'IT', 8, 'Real Time Systems', 14153001, 'ajmal', 35),
(7, 'IT', 8, 'Real Time Systems', 14153003, 'arun', 31),
(8, 'IT', 8, 'Real Time Systems', 14153004, 'aswani', 32),
(9, 'IT', 8, 'Real Time Systems', 14153005, 'govind', 33),
(10, 'IT', 8, 'Real Time Systems', 14153006, 'jacob', 34),
(11, 'IT', 8, 'Real Time Systems', 14153007, 'kiran', 35),
(12, 'IT', 8, 'Real Time Systems', 14153008, 'mark', 36),
(13, 'IT', 8, 'Real Time Systems', 14153009, 'mohammed hafneem', 37),
(14, 'IT', 8, 'Real Time Systems', 14153010, 'nigel', 38),
(15, 'IT', 8, 'Real Time Systems', 14153011, 'nirmal', 39),
(16, 'IT', 8, 'Real Time Systems', 14153012, 'nithin', 40),
(17, 'IT', 8, 'Real Time Systems', 14153013, 'aayushi', 41),
(18, 'IT', 8, 'Real Time Systems', 14153014, 'akhina', 29),
(19, 'IT', 8, 'Real Time Systems', 14153015, 'aleena', 42),
(20, 'IT', 8, 'Real Time Systems', 14153016, 'amrutha p u', 43),
(21, 'IT', 8, 'Real Time Systems', 14153017, 'amrutha sunny', 44),
(22, 'IT', 8, 'Real Time Systems', 14153018, 'aryalakshmi', 25),
(23, 'IT', 8, 'Real Time Systems', 14153019, 'anjitha', 45),
(24, 'IT', 8, 'Real Time Systems', 14153020, 'ashitha', 44),
(25, 'IT', 8, 'Real Time Systems', 14153021, 'beula', 45),
(26, 'IT', 8, 'Real Time Systems', 14153022, 'bilha', 44),
(27, 'IT', 8, 'Real Time Systems', 14153023, 'c s sneha ', 43),
(28, 'IT', 8, 'Real Time Systems', 14153024, 'charmaine', 40),
(29, 'IT', 8, 'Real Time Systems', 14153025, 'kavya', 40),
(30, 'IT', 8, 'Real Time Systems', 14153026, 'mary divine', 44),
(31, 'IT', 8, 'Real Time Systems', 14153027, 'merin', 43),
(32, 'IT', 8, 'Real Time Systems', 14153028, 'nandini', 39),
(33, 'IT', 8, 'Real Time Systems', 14153029, 'nasna', 49),
(34, 'IT', 8, 'Real Time Systems', 14153030, 'remya', 45),
(35, 'IT', 8, 'Real Time Systems', 14153031, 'reshma', 40),
(36, 'IT', 8, 'Real Time Systems', 14153032, 'roshni', 40),
(37, 'IT', 8, 'Real Time Systems', 14153033, 'sherin', 49),
(38, 'IT', 8, 'Real Time Systems', 14153034, 'susmitha', 40),
(39, 'IT', 8, 'Real Time Systems', 14153035, 'dilrooba', 39),
(40, 'IT', 8, 'Distributed Computing', 14153001, 'ajmal', 50),
(41, 'IT', 8, 'Distributed Computing', 14153002, 'amal', 49),
(42, 'IT', 8, 'Distributed Computing', 14153003, 'arun', 48),
(43, 'IT', 8, 'Distributed Computing', 14153004, 'aswani', 47),
(44, 'IT', 8, 'Distributed Computing', 14153005, 'govind', 46),
(45, 'IT', 8, 'Distributed Computing', 14153006, 'jacob', 45),
(46, 'IT', 8, 'Distributed Computing', 14153007, 'kiran', 44),
(47, 'IT', 8, 'Distributed Computing', 14153008, 'mark', 43),
(48, 'IT', 8, 'Distributed Computing', 14153009, 'mohammed hafneem', 42),
(49, 'IT', 8, 'Distributed Computing', 14153010, 'nigel', 41),
(50, 'IT', 8, 'Distributed Computing', 14153011, 'nirmal', 40),
(51, 'IT', 8, 'Distributed Computing', 14153012, 'nithin', 39),
(52, 'IT', 8, 'Distributed Computing', 14153013, 'aayushi', 38),
(53, 'IT', 8, 'Distributed Computing', 14153014, 'akhina', 37),
(54, 'IT', 8, 'Distributed Computing', 14153015, 'aleena', 36),
(55, 'IT', 8, 'Distributed Computing', 14153016, 'amrutha p u', 35),
(56, 'IT', 8, 'Distributed Computing', 14153017, 'amrutha sunny', 34),
(57, 'IT', 8, 'Distributed Computing', 14153018, 'aryalakshmi', 33),
(58, 'IT', 8, 'Distributed Computing', 14153019, 'anjitha', 32),
(59, 'IT', 8, 'Distributed Computing', 14153020, 'ashitha', 30),
(60, 'IT', 8, 'Distributed Computing', 14153021, 'beula', 29),
(61, 'IT', 8, 'Distributed Computing', 14153022, 'bilha', 28),
(62, 'IT', 8, 'Distributed Computing', 14153023, 'c s sneha ', 27),
(63, 'IT', 8, 'Distributed Computing', 14153024, 'charmaine', 40),
(64, 'IT', 8, 'Distributed Computing', 14153025, 'kavya', 41),
(65, 'IT', 8, 'Distributed Computing', 14153026, 'mary divine', 42),
(66, 'IT', 8, 'Distributed Computing', 14153027, 'merin', 43),
(67, 'IT', 8, 'Distributed Computing', 14153028, 'nandini', 39),
(68, 'IT', 8, 'Distributed Computing', 14153029, 'nasna', 49),
(69, 'IT', 8, 'Distributed Computing', 14153030, 'remya', 45),
(70, 'IT', 8, 'Distributed Computing', 14153031, 'reshma', 40),
(71, 'IT', 8, 'Distributed Computing', 14153032, 'roshni', 40),
(72, 'IT', 8, 'Distributed Computing', 14153033, 'sherin', 40),
(73, 'IT', 8, 'Distributed Computing', 14153034, 'susmitha', 40),
(74, 'IT', 8, 'Distributed Computing', 14153035, 'dilrooba', 39);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reply` varchar(300) NOT NULL,
  `chat_reg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `msg`, `datetime`, `reply`, `chat_reg`) VALUES
(1, 'library facility ', '2018-02-17 15:13:33', 'we have air conditioned computer labs,classroms with a television, and fully equiped electronic, mechanical and civil labs', 0),
(2, 'library facility ', '2018-02-17 15:21:32', 'we have air conditioned computer labs,classroms with a television, and fully equiped electronic, mechanical and civil labs', 0),
(3, 'library facility ', '2018-02-17 15:23:34', 'we have air conditioned computer labs,classroms with a television, and fully equiped electronic, mechanical and civil labs', 0),
(4, 'library facility ', '2018-02-17 15:25:50', 'we have air conditioned computer labs,classroms with a television, and fully equiped electronic, mechanical and civil labs', 0),
(5, 'library facility ', '2018-02-17 15:27:09', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(6, 'library facility ', '2018-02-17 15:28:25', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(7, 'library facility ', '2018-02-17 15:29:13', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(8, 'library facility ', '2018-02-17 15:30:33', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(9, 'library facility ', '2018-02-17 15:32:25', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(10, 'library facility ', '2018-02-17 15:35:31', 'Sorry Right Now I Have No Information To Share With You ..', 0),
(11, 'library facility ', '2018-02-17 15:36:07', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(12, 'library facility ', '2018-02-17 15:39:08', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(13, 'library facility ', '2018-02-17 15:40:14', 'We have two main libraries in our campus, one for MBA students and one for M tech and B tech students. We also have a library for each department and along with all these we have a digital library ', 0),
(14, 'department ', '2018-02-17 15:45:28', 'CS,ME,CE,EC departments have NBA accreditation', 0),
(15, 'department facilities ', '2018-02-17 15:45:51', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(16, 'department facilities ', '2018-02-17 15:46:56', 'Please be specific \r\nWe have 7 departments for Btech and 3 for MTech or do you want to knw about placement and admission departments', 0),
(17, 'college facilities ', '2018-02-17 15:47:22', 'we have air conditioned computer labs,classroms with a television, and fully equiped electronic, mechanical and civil labs', 0),
(18, 'library ', '2018-02-17 16:02:00', 'We have two main libraries in our campus, one for MBA students and one for M tech and B tech students. We also have a library for each department and along with all these we have a digital library ', 0),
(19, 'library timing ', '2018-02-18 05:38:40', 'We have two main libraries in our campus, one for MBA students and one for M tech and B tech students. We also have a library for each department and along with all these we have a digital library ', 0),
(20, 'library timing ', '2018-02-18 05:39:57', 'The library timing is from 8 am to 8 pm', 0),
(21, 'college time ', '2018-02-18 05:45:14', 'the college timing is from 9 am to 4 pm', 0),
(22, 'what is the college timing ', '2018-02-18 05:49:06', 'the college timing is from 9 am to 4 pm', 0),
(23, 'can you pls say the college timing ', '2018-02-18 05:49:26', 'the college timing is from 9 am to 4 pm', 0),
(24, 'hi ', '2018-02-27 09:16:54', 'hello i am E-BOT\r\nHow can I help you', 0),
(25, '', '2018-02-27 09:42:09', '', 0),
(26, '', '2018-02-27 09:42:39', '', 0),
(27, '', '2018-02-27 09:42:43', '', 0),
(28, '', '2018-02-27 09:43:17', '', 0),
(29, 'hi ', '2018-02-27 09:43:23', 'hello i am E-BOT\r\nHow can I help you', 0),
(30, '', '2018-02-27 09:43:43', '', 0),
(31, 'hi ', '2018-02-27 09:43:50', 'hello i am E-BOT\r\nHow can I help you', 0),
(32, 'college facilies ', '2018-02-27 09:44:54', 'we have air conditioned computer labs,classroms with a television, and fully equiped electronic, mechanical and civil labs', 0),
(33, 'bus college ', '2018-02-27 09:45:44', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. ', 0),
(34, 'hi||| ', '2018-02-27 17:09:21', 'hello i am E-BOT\r\nHow can I help you', 0),
(35, 'hai|||| ', '2018-02-27 17:09:40', 'Sorry Right Now I Have No Information To Share With You ..', 0),
(36, 'hi ', '2018-03-13 04:53:50', 'hello i am E-BOT\r\nHow can I help you', 0),
(37, 'what all courses you have ', '2018-03-13 04:54:12', 'we offer Btech,Mtech and MBA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `msgt`
--

CREATE TABLE `msgt` (
  `id` int(11) NOT NULL,
  `msgI` text NOT NULL,
  `msgO` text NOT NULL,
  `weight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msgt`
--

INSERT INTO `msgt` (`id`, `msgI`, `msgO`, `weight`) VALUES
(1, 'hello', 'hai I am E-BOT \r\nhow can I help you ', 0),
(2, 'thanks', 'welcome', 0),
(3, 'courses offered', 'we offer Btech,Mtech and MBA', 1.5),
(4, 'bus availability', 'Yes there is', 0),
(5, 'hi', 'hello i am E-BOT\r\nHow can I help you', 0),
(6, 'hi how are you', 'i m fine.how are you', 0),
(7, 'admission procedures B.Tech', 'Depends on which quota you want to take admission.\r\n', 0),
(8, 'admission quotas', 'we offer admission in government ,management and NRI quota', 0),
(9, ' courses  offered college', 'we offer BTech, MTech and MBA', 1.2),
(10, ' procedures  admission NRI quota', 'The seats under NRI quota will be allotted by the Institute, based on XII  standard marks. The candidate shall apply directly to TIST.An Application fee of 350/- in the form of a Demand Draft in favour of Toc H Institute of Science and Technology payable at Ernakulam should be attached.', 0),
(11, 'scholorships offered  college students', ' TIST INCOME – CUM – MERIT SCHOLARSHIP (TIFERS), TIST SPECIAL SCHOLARSHIP,\r\nTIST ARTS & SPORTS SCHOLARSHIP,  TIST EMPLOYEE WELFARE SCHOLARSHIP, AICTE SCHOLARSHIP, PUTHUYUGAM SCHOLARSHIP\r\n', 0),
(12, 'college bus facilities', 'yes the college does offer college bus facility.   Bus route covering most of the areas in Ernakulam (Eramalloor, Aroor, Fortkochi, Edacochi, Njarackal, Kalloor Kalamassery, Aluva, ,Eloor, Kolencherry & Muvattupuzha,) and   Kottayam (Kaduthuruthy, Kurupumthara, Thalayolaparambu & Vaikom) districts. \r\n\r\n', 0),
(13, ' criterion  joining  college  government quota merit admission', 'The seats under Govt. quota will be allotted by the Commissioner for Entrance Examinations, based on KEAM-2017 rank.  If you are interested in joining our institute give the college code as TOC. The process will be as given in the KEAM prospectus.', 0),
(14, ' nationality criteria admission  NRI quota', 'Yes the nationality must be Indian.', 0),
(15, 'KEAM rank needed  NRI admission', 'No KEAM rank is not mandatory', 0),
(16, 'mark criterion admission  NRI quota', 'XIIth standard marks: 45% marks in Physics, Chemistry & Mathematics put\r\ntogether. However, average 70% marks for PCM in the qualifying examination is\r\ndesirable\r\n', 0),
(17, 'contact management quota admission', 'For admissions for management quota and NRI quota you can contact our admission officers , Dr. Sreeja Subhash, Dr. Sanjay Gopinath or drop in a mail at   admission@tistcochin.edu.in', 0),
(18, 'student taking admission under management quota pay the full fees in advance?', 'Yes the  full payment should be done at the time of taking the admission., part payment is not allowed', 0),
(19, 'time limit  taking admission  management quota', 'Admission will commence only after notification by the Government.', 0),
(20, ' pay donation  getting seats management quota', 'no you should not', 0),
(21, ' companies offer recruitment college', 'IBS,iDatalyrics,IVTL Infoview ,Hinduja Global Solutions, VVDN Technologies,Infosys,Sutherland,Spectrum,Radview Technologies are some of our top recruiters.', 0),
(22, 'present statistics placement scenario  college', 'In the academic year 2015-2016 89% of our students got campus placement\r\nand in the academic year 2016-2017 81% of our students gotplaced', 0),
(23, ' clubs  active  college\n', 'We provide more than 10 clubs including arts,sports,green, nature,literary etc', 0),
(24, 'professional associations  institute\n', 'IEEE,CSI,ISTE,IEDC,IETE,ICI,NSS', 0),
(25, 'NSS', 'NSS is a National Service Scheme to improve the students mental attitude and help them to become Engineers with good ethics and leadership quality', 0),
(26, 'IEEE', 'IEEE is the world’s largest technical professional organization dedicated to advancing technology for the benefit of humanity.IEEE students branch of TIST was established in the year 2006 .Majority of the students of ECE & EEE are members of IEEE.', 0),
(27, ' recent activities  NSS', 'some of the major activities conducted by NSS are-Educational Aid To Social Justice Forum,Financial aid to Mr. Ratheeshan,Planting Trees in the Campus,Support for Master John Paul,Book Bucket Challenge', 0),
(28, ' E-BOT', 'E-BOT is short for enquiry bot\r\nI am at your service\r\nYou can ask me questions related to the Institute and I am happy to help', 0),
(29, 'procedures  admission  government quota', 'The seats under Govt. quota will be allotted by the Commissioner for Entrance Examinations, based on KEAM-2017 rank.\n\nIf you wish to take admission under government quota you have to give the option TOC (college code) and branch of preference online as and when announced by Commissioner for Entrance Examinations.', 0),
(30, ' procedures admission management quota', 'The seats under Management quota will be allotted by the Institute, based on XII standard marks and KEAM-2017 rank.', 0),
(31, 'name admission incharges', 'Dr. Sreeja Subhash, Dr. Sanjay Gopinath are our admission incharges.\r\nyou can contact them for admissions in management and NRI quotas', 0),
(32, 'admission officers', 'Dr. Sreeja Subhash, Dr. Sanjay Gopinath are our admission incharges, you can contact them for admission for management and NRI quotas', 0),
(33, ' contact admission information', 'Dr. Sreeja Subhash, Dr. Sanjay Gopinath are our admission incharges, you can contact them for admission for management and NRI quotas', 0),
(34, 'seats government quota alloted', 'The seats under Govt. quota will be allotted by the Commissioner for Entrance Examinations, based on KEAM-2017 rank.\r\n\r\nIf you wish to take admission under government quota you have to give the option TOC (college code) and branch of preference online as and when announced by Commissioner for Entrance Examinations.', 0),
(35, 'documents brought admission time', 'You should bring the original X and XII standard marksheet,migration certificate,transfer certificate,KEAM marksheet and Admit card, physical fitness certificate and photographs.', 0),
(36, 'fee structure government quota admission', 'The fee structure is as per the government of Kerala rules', 0),
(37, 'how to contact for admission in management and NRI quota', 'You can either corresspond through mail or phone \r\nMobile-9995043464\r\nEmail ID: admission@tistcochin.edu.in', 0),
(38, 'admission', 'Please be specific!!\r\nNot enough information to provide \r\nanswer.\r\nWe provide information regarding \r\nadmission procedures, fees,college \r\nbus availability', 0),
(39, 'thankyou for your guidance', 'Its our pleasure. Hope all your doubts are cleared', 0),
(40, 'contact admission', 'You can contact our admission incharges through phone and mail. The contact information is as follows\r\nMobile-9995043464\r\nEmail ID: admission@tistcochin.edu.in', 0),
(41, 'can you tell me about the Btech fee structure?', 'The university has specified different fees for government, NRI and management quotas. about which do you want fee details', 0),
(42, 'government quota fee structure', 'According to the university the fee for students taking admission under government quota is 45,600', 0),
(43, 'management quota fee structure', 'According to the university policy its around 86,000 can vary in private colleges like ours.So kindly contact our placement incharges.', 0),
(44, 'NRI fee structure', 'the fees for NRI students is 2,43,850.', 0),
(45, 'results college', 'We have been sequiring the top ranks in the CUSAT university.', 0),
(46, ' college bus fees', 'The college bus fees varies according to the distance from the college', 0),
(47, 'criteria  Btech admission', 'The basic criteria is to pass the entrance exam, seats will be allotted according to the KEAM rank. ', 0),
(48, ' KEAM rank admission every quota', 'KEAM rank is must for admission in government quota. But for NRI and management the 12th marks will be sufficient.', 0),
(49, 'round-the clock security  college hostels', 'Yes of-course we have round-the clock security. ', 0),
(50, 'TIFFERS scholorship exam conducted', '', 0),
(51, 'placement', 'Sorry, there is not enough information to answer your question\r\nPlease specify what you want to know', 0),
(52, 'fees structure', 'Please mention about what fees you want information', 0),
(53, 'examination fees', 'Its included in your annual fees,if there is any variation it will be notified by your teacher.', 0),
(54, 'NBA', 'The National Board of Accreditation (NBA) is one of the two major bodies responsible for accreditation of higher education institutions in India, along with the National Assessment and Accreditation Council (NAAC)', 0),
(55, 'clubs functioning college', 'The clubs functioning in your college are sports,arts,literary,dance,photography,robotic,science,green and nature clubs', 0),
(56, 'already taken admission in management quota but my rank list have not yet published can i change to government quota', 'Please contact our admission incharges through mail or phone\r\nMobile-9995043464\r\nEmail ID: admission@tistcochin.edu.in', 0),
(57, 'nss', 'NSS is a National Service Scheme to improve the students mental attitude and help them to become Engineers with good ethics and leadership quality', 0),
(58, ' address college', 'the route map is given in the home page of this website,but as u have asked it is arkunnam,piravom and the pin is 682313', 0),
(59, 'address college', 'the route map is given in the home page of this website,but as u have asked it is arkunnam,piravom and the pin is 682313', 0),
(60, 'route college', 'the route map is given in the home page of this website', 0),
(62, 'college located', 'the college is located at arukkunnam,piravom', 0),
(63, 'courses available', 'we offer 3 courses namely BTech,MTech and MBA', 1.5),
(64, 'name principal', 'Our principal is Dr.Preethi Thekkath', 0),
(65, 'contact college', 'The college can be contacted on the following number\r\n0484 274925', 0),
(66, ' college contact number', 'the college contact number is 0484-2749253', 0),
(67, 'college NBA accreditation', 'Yes the college has NBA accreditation for  CS,ME,CE,EC', 0),
(68, 'departments NBA accreditation', 'CS,ME,CE,EC departments have NBA accreditation', 0),
(69, ' EC department located', 'EC department is in Aryabhatta block.You can find the block from the route map infront of the college', 0),
(70, 'IT department located', 'IT department is located in Einstein block. You can find the blocks from the route map given infront of this college', 0),
(71, 'college gym', 'Yes we have a gym which is located at the top of the aryabhatta block', 0),
(72, 'facilities college', 'we have air conditioned computer labs,classroms with a television, and fully equiped electronic, mechanical and civil labs', 0),
(73, 'ME department college located', 'ME department in the college is located at Visweswarayya block', 0),
(74, 'civil department located', 'civil department is located in Visweswarayya block', 0),
(75, 'college information', 'Please be specific\r\nwe offer information about admission', 0),
(76, 'management quota', 'Please specify wat information you want \r\nWe provide information about fees and admission procedures', 0),
(77, 'government quota', 'Please specify wat information you want \r\nWe provide information about fees and admission procedures', 0),
(78, 'NRI quota', 'Please specify wat information you want \r\nWe provide information about fees and admission procedures', 0),
(79, 'departments Btech ', 'We have 7 departments namely Computer Science(CS),Information Technology(IT),Electrical & Electronics Engineering(EEE),Electronics & Communication(EC),SAfety & Fire(SF),Civil Engineering(CE),Mechanical Engineering(ME)', 0),
(80, 'HOD IT department', 'The HOD of IT department is Asst.Prof Sunitha E. V', 0),
(81, ' counsellors college', 'Yes we do have a psychology department in our college and two counsellors to help the students', 0),
(82, ' seats each branch', 'the EC and ME departments have 120 seats each, the CS,EEE,SF and CE department has 60 seats each IT department has 30 seats', 0),
(83, 'departments', 'Please be specific \r\nWe have 7 departments for Btech and 3 for MTech or do you want to knw about placement and admission departments', 0),
(84, 'college time', 'the college timing is from 9 am to 4 pm', 0),
(85, 'university', 'The college is under Cochin University of Science and Techology(CUSAT)', 0),
(86, 'hostel', 'We do have hostel facilities for both boys and girls.\r\nWe have round the clock security for both the hostels, with good food and 24*7 water,electricity and WiFi', 0),
(87, 'education quality', 'The Quality of our learning environment got recognized when the college was accredited by NACC – the only college to get this honour under CUSAT.\r\nWe are sequiring the top ranks in IT in the university continuously for the third year, this year the students of CS,SF,ME,CE are among the top ten ranks in the university.\r\nWe have experienced faculty for providing the best teaching experience', 0),
(88, 'annual tech fest', 'We are one of the rare colleges which have Techno-Cultural fest, where we have both tech related and cultural events as a part of the fest\r\nIts likely to be conducted around januaary and february', 0),
(89, 'sports facilities', 'We have 2 basketball court, football ground,table tennis badminton and tennis courts in our college for enhancing the sports talent of the students and for relaxation', 0),
(90, 'parking space', 'We have parking space for the faculties inside the college and for the students and visitors outside the college', 0),
(91, 'founder\r\n', 'Dr. K. Varghese is our Founder Director & Manager Toc H Public School Society', 0),
(92, 'dean', 'Prof Dr. Raveendran Nair is our Dean', 0),
(93, 'canteen', 'We do have a canteen for both the students and faculty.', 0),
(94, 'medical facilities', 'We have separate sick rooms for boys and girls and a nurse present at all times and a doctor from 1 pm to 4pm. \r\nThe college also has an ambulance ', 0),
(95, 'smart class', 'Our classrooms are equipped with LCDs and we have more than 2 projectors for each department', 0),
(96, 'librari facility', 'We have two main libraries in our campus, one for MBA students and one for M tech and B tech students. We also have a library for each department and along with all these we have a digital library ', 0),
(97, 'librari time', 'The library timing is from 8 am to 8 pm', 0),
(98, 'hostel fees', 'The hostel fees including the accommodation and food is 4000 per month', 0),
(99, 'ATM facility', 'TIST offers a fully equipped modern ATM facility, right at the College entrance.The Kotak Mahindra ATM Banking service has been operating here, providing a smooth and reliable 24-hour ATM experience.', 0),
(100, 'Conveyance facilities', '19 Buses, 01 Water Bowser, 01 Amublance, 02 Cars and 04 Light Duty Vehicles including 02 Motor cycle are catering the requirements of students/staff and other activities of the college. ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `note` varchar(220) NOT NULL,
  `remarks` longtext NOT NULL,
  `upload_notes` longtext NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `note`, `remarks`, `upload_notes`, `status`) VALUES
(1, 'test', 'test', 'test.pdf', ''),
(4, 'hi', 'cv', 'Abstract submission Corrected (1).docx', ''),
(11, 'hi', 'test', 'notes/11-01-2018 15-08-26-Gmail - Fwd_ Your Tickets.pdf', ''),
(24, '', '', 'notes/08-02-2018 16-24-04-', ''),
(23, '', '', 'notes/26-01-2018 15-19-07-', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notification` text NOT NULL,
  `notification_date` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification`, `notification_date`) VALUES
(3, 'placement training by insight will be conducted on march 1', '8/12/2018');

-- --------------------------------------------------------

--
-- Table structure for table `obj`
--

CREATE TABLE `obj` (
  `id` int(11) NOT NULL,
  `obj` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obj`
--

INSERT INTO `obj` (`id`, `obj`) VALUES
(1, 'nr'),
(2, 'management'),
(3, 'btech'),
(4, 'departments'),
(5, 'nss'),
(6, 'bus'),
(7, 'hostel'),
(10, 'government');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `parent` varchar(30) NOT NULL,
  `question` varchar(150) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`, `parent`, `question`, `answer`, `weight`) VALUES
(8, 'admission,quotas', 'In which quota do you wish to get aadmission', 'aaa', 0),
(4, 'admission,branch', 'In which branch do you want admission?', '', 0),
(5, 'admission,procedures', 'what are the admission procedures of B.Tech?', 'bbbbb', 0),
(7, 'admission,quotas', 'what are the admission quotas', '', 0),
(9, 'admission,application', 'can you elaborae about the application form for Btech admission', '', 0),
(10, 'admission,course', 'what are the courses that is being offered in your college', '', 0),
(11, 'admission,nri', 'what are the procedures for admission in NRI quota', '', 0),
(12, 'admission,scholorship', 'can we apply for any scholorship during admission?', '', 0),
(13, 'admission,merit', 'what are the procedures for admission in merit quota', '', 0),
(14, 'admission,management', 'what are the procedures for admission in management quota', '', 0),
(15, 'admission,scholorship', 'what are the scholorships offered by the college for a student who is new admission', '', 0),
(16, 'seats ,management', '1.	How are the seats under management quota allotted?', '', 0),
(17, 'contact,management', '2.	Whom should I  contact for management quota admission?', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `full_name`, `address`, `email`, `city`, `reg_no`, `gender`, `username`, `password`) VALUES
(1, 'aleena ealias', 'mattatil parambil', 'aleenaealias@gmail.com', 'peppathy', 14153015, 'female', 'aleena', 'monkey'),
(3, 'susmitha', 'poovanparambil,palarivattom', 'susmithasnair@gmail.com', 'kochi', 14153034, 'female', 'susmitha', 'naruto');

-- --------------------------------------------------------

--
-- Table structure for table `stopwords`
--

CREATE TABLE `stopwords` (
  `id` int(11) NOT NULL,
  `swords` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stopwords`
--

INSERT INTO `stopwords` (`id`, `swords`) VALUES
(1, 'a'),
(2, 'an'),
(6, 'are'),
(7, 'and'),
(8, 'as'),
(9, 'at'),
(10, 'be'),
(11, 'by'),
(12, 'for'),
(13, 'from'),
(14, 'has'),
(15, 'in'),
(16, 'is'),
(17, 'its'),
(19, 'of'),
(20, 'on'),
(21, 'that'),
(22, 'the'),
(23, 'to'),
(24, 'was'),
(25, 'were'),
(26, 'will'),
(27, 'with'),
(29, 'B'),
(30, 'A'),
(31, 'B'),
(32, 'C'),
(33, 'D'),
(34, 'E'),
(35, 'F'),
(36, 'G'),
(37, 'H'),
(38, 'I'),
(39, 'J'),
(40, 'K'),
(41, 'L'),
(42, 'M'),
(43, 'N'),
(44, 'O'),
(45, 'P'),
(46, 'Q'),
(47, 'R'),
(48, 'S'),
(49, 'T'),
(50, 'U'),
(51, 'V'),
(52, 'W'),
(53, 'X'),
(54, 'Y'),
(55, 'Z'),
(56, 'b'),
(57, 'c'),
(58, 'd'),
(59, 'e'),
(60, 'f'),
(61, 'g'),
(62, 'h'),
(63, 'i'),
(64, 'j'),
(65, 'k'),
(66, 'l'),
(67, 'm'),
(68, 'n'),
(69, 'o'),
(70, 'p'),
(71, 'q'),
(72, 'r'),
(73, 's'),
(74, 't'),
(75, 'u'),
(76, 'v'),
(77, 'w'),
(78, 'x'),
(79, 'y'),
(80, 'z'),
(113, '1'),
(114, '2'),
(115, '3'),
(116, '4'),
(119, '5'),
(120, '6'),
(121, '7'),
(122, '8'),
(123, '9'),
(124, '0'),
(126, ' able'),
(127, ' about'),
(128, ' across'),
(129, ' after  '),
(130, 'all  '),
(131, 'almost  '),
(132, 'also  '),
(133, 'am  '),
(134, 'among  '),
(135, 'an  '),
(136, 'and  '),
(137, 'any'),
(138, 'are  '),
(139, 'as  '),
(140, 'at  '),
(141, 'be  '),
(142, 'because  '),
(143, 'been  '),
(144, 'but  '),
(145, 'by  '),
(146, 'can  '),
(147, 'cannot'),
(148, 'could  '),
(149, 'dear  '),
(150, 'did  '),
(151, 'do  '),
(152, 'does  '),
(153, 'either  '),
(154, 'else  '),
(155, 'ever  '),
(156, 'every  '),
(157, 'for  '),
(158, 'from  '),
(159, 'get  '),
(160, 'got  '),
(161, 'had  '),
(162, 'has  '),
(163, 'have  '),
(164, 'he  '),
(165, 'her  '),
(166, 'hers  '),
(167, 'him'),
(168, 'his  '),
(169, 'how  '),
(170, 'however  '),
(171, 'i  '),
(172, 'if  '),
(173, 'in  '),
(174, 'into  '),
(175, 'is  '),
(176, 'it  '),
(177, 'its  '),
(178, 'just  '),
(179, 'least  '),
(180, 'let  '),
(181, 'like  '),
(182, 'likely  '),
(183, 'may  '),
(184, 'me  '),
(185, 'might  '),
(186, 'most  '),
(187, 'must  '),
(188, 'my  '),
(189, 'neither  '),
(190, 'no  '),
(191, 'nor  '),
(192, 'not  '),
(193, 'of  '),
(194, 'off  '),
(195, 'often  '),
(196, 'on  '),
(197, 'only  '),
(198, 'or  '),
(199, 'other  '),
(200, 'our  '),
(201, 'own  '),
(202, 'rather  '),
(203, 'said  '),
(204, 'say  '),
(205, 'says  '),
(206, 'she  '),
(207, 'should'),
(208, 'since  '),
(209, 'so  '),
(210, 'some  '),
(211, 'than  '),
(212, 'that  '),
(213, 'the  '),
(214, 'their  '),
(215, 'them  '),
(216, 'then  '),
(217, 'there  '),
(218, 'these  '),
(219, 'they  '),
(220, 'this  '),
(221, 'tis  '),
(222, 'to  '),
(223, 'too  '),
(224, 'twas  '),
(225, 'us  '),
(226, 'wants  '),
(227, 'was  '),
(228, 'we  '),
(229, 'were  '),
(230, 'what'),
(231, 'when  '),
(232, 'where  '),
(233, 'which  '),
(234, 'while  '),
(235, 'who  '),
(236, 'whom  '),
(237, 'why  '),
(238, 'will  '),
(239, 'with  '),
(240, 'would  '),
(241, 'yet  '),
(242, 'you  '),
(243, 'your'),
(244, 'not'),
(245, 'be'),
(246, 'do'),
(247, 'you'),
(248, 'have'),
(249, 'all'),
(250, 'have'),
(251, 'have'),
(252, 'pls'),
(253, 'pls'),
(254, 'abt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hidden_layer`
--
ALTER TABLE `hidden_layer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internalmarks`
--
ALTER TABLE `internalmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msgt`
--
ALTER TABLE `msgt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obj`
--
ALTER TABLE `obj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stopwords`
--
ALTER TABLE `stopwords`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hidden_layer`
--
ALTER TABLE `hidden_layer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `internalmarks`
--
ALTER TABLE `internalmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `msgt`
--
ALTER TABLE `msgt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `obj`
--
ALTER TABLE `obj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `stopwords`
--
ALTER TABLE `stopwords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
