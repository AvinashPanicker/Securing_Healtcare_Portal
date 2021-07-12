-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2019 at 12:18 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cryptofog`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE IF NOT EXISTS `consultation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(100) NOT NULL,
  `consultation_details` text NOT NULL,
  `disease` varchar(100) NOT NULL,
  `medicine` varchar(100) NOT NULL,
  `test` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `recover` varchar(100) NOT NULL,
  `doctor_id` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`id`, `reference_no`, `consultation_details`, `disease`, `medicine`, `test`, `status`, `recover`, `doctor_id`, `datetime`) VALUES
(1, '555', 'fever**headache**vomiting', '', 'abc', '', '1', '70', '', '2018-04-10 23:24:57'),
(2, '555', 'fever**headache**vomiting', '', 'abc', '', '1', '30', '', '2018-04-10 23:24:57'),
(3, '555', 'fever**headache**vomiting', '', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(4, '555', 'fever**headache**vomiting', '', 'abc', '', '1', '100', '', '2018-04-10 23:24:57'),
(5, '555', 'fever**headache**vomiting', '', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(6, '555', 'fever**headache**vomiting', '637', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(7, '555', 'fever**headache**vomiting', '637', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(8, '555', 'fever**headache**vomiting', '637', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(9, '555', 'fever**headache**vomiting', '637', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(10, '555', 'fever**headache**vomiting', '637', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(11, '555', 'fever**headache**vomiting', '637', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(12, '555', 'fever**headache**vomiting', '637', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(13, '555', 'fever**headache**vomiting', '63', 'abc', '', '', '', '', '2018-04-10 23:24:57'),
(14, '555', 'fever**headache**vomiting', '638', 'abc', '', '1', '', '', '2018-04-10 23:24:57'),
(15, '555', 'fever**headache**vomiting', '63', 'Paracetmol', '', '1', '100', '', '2018-04-10 23:24:57'),
(16, '555', 'fever**vomiting**headache', '637', 'Paracetmol', '', '', '', '', '2018-04-10 23:24:57'),
(17, '555', 'fever**headache**vomiting', '637', 'xyz', '', '1', '90', '', '2018-04-12 04:00:52'),
(18, '555', 'fever**headache**vomiting', '637', 'xyz', '', '1', '50', '', '2018-04-12 06:41:09'),
(19, '789546', 'symptom', '', 'med', '', '', '', 'aster@gmail.com', '2018-11-19 15:41:53'),
(20, '789546', 'symptom', 'dis', 'med', '', '', '', 'aster@gmail.com', '2018-11-19 15:43:19'),
(21, '789546', 'symptom', 'dis', 'med', '', '', '', 'aster@gmail.com', '2018-11-19 15:44:11'),
(22, '789546', 'headache, body pain\r\nvomiting', 'viral fever', 'calpol', 'blood test', '', '', 'aster@gmail.com', '2018-11-20 05:57:55'),
(23, '789546', 'headache, body pain\r\nvomiting', 'viral fever', 'calpol', 'blood test', '', '', 'aster@gmail.com', '2018-11-20 06:00:18'),
(24, '789546', 'headache, body pain\r\nvomiting', 'viral fever', 'calpol', 'blood test', '', '', 'aster@gmail.com', '2018-11-20 06:00:29'),
(25, '789546', 'headache, body pain\r\nvomiting', 'viral fever', 'calpol', 'blood test', '', '', 'aster@gmail.com', '2018-11-20 06:01:16'),
(26, '789546', 'headache, body pain\r\nvomiting', 'viral fever', 'calpol', 'blood test', '', '', 'aster@gmail.com', '2018-11-20 06:01:28'),
(27, '789546', 'll', 'kk', 'pp', '', '', '', 'gettoanish@gmail.com', '2019-01-12 15:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `qualification` text NOT NULL,
  `specialization` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `email`, `mobile`, `password`, `qualification`, `specialization`) VALUES
(1, 'Anish A', 'gettoanish@gmail.com', '8891576246', 'a1a1a1', 'MBBS P Hd', '');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(100) NOT NULL,
  `file_title` varchar(250) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `hmac` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `patient_id`, `file_title`, `file_path`, `hmac`, `date_time`) VALUES
(1, '789546', 'x ray', '1.bmp', '3fc8b4baf22d0e40812bc0fababca083533563cb806b317d880cf096f134cd2af9a2c23d6f8aa4e857d28a042762f7cb17042219fa133432e5a7b14168e99d27', '2018-11-13 02:30:55'),
(2, '789546', 'trdt', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 17:55:17'),
(3, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:08:18'),
(4, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:12:07'),
(5, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:12:32'),
(6, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:12:49'),
(7, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:13:23'),
(8, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:14:13'),
(9, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:15:30'),
(10, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:16:24'),
(11, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:19:41'),
(12, '789546', '', '444.jpg', '5a33b32e46186c2b3f2677fbc2782a6bc25c41e7a4be68b31ef6bdefd5183c38e7173de880faffd61a5680c7980a3de526b9d8f288de57d09697f4288cfab0f7', '2019-03-22 18:20:46'),
(13, '789546', '', '111.jpg', 'e50d61c63bfdb86e2986b4351bb67263a0cb8dd4eabce844a0658635863d0d3be88d8069a53bfc41fcb39c81303160b227fbda7fe631a41384521b760d247c51', '2019-03-22 18:24:55'),
(14, '789546', '', '222.jpg', '029c3786a41c958fbd978f3fa0b77fe68149c753e9fdfa7831d07fc4f071a10f9501bfab4f801a885ac515c061f524d3e3ed26b83ce84689a474a7c6cf65cf54', '2019-03-22 18:28:35'),
(15, '789546', '', '333.jpg', '2baa61609583947adb2c41ef039dd1284032d603c950917787f9fbfd6d9c412c989f8474dcc05612fabd05b33270052da0c7ead28d588b6131e06f88dda7ebba', '2019-03-22 18:46:14'),
(16, '789546', '', 'updated (1).jpg', '', '2019-04-05 09:15:04'),
(17, '789546', '', 'updated (1).jpg', '{\n    "chain": [\n        {\n            "nonce": 0,\n            "index": 0,\n            "timestamp": 1483209000,\n            "data": "Genesis Block",\n            "previousHash": null,\n            "hash": "514530ecfc0671b132958092735da755ec46a3d2b9c29b4bdd8', '2019-04-05 09:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `government`
--

CREATE TABLE IF NOT EXISTS `government` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `government`
--

INSERT INTO `government` (`id`, `name`, `email`, `password`) VALUES
(1, '', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `address`, `location`, `email`, `password`, `specialization`, `question`, `answer`) VALUES
(1, 'Aster', 'ernkulam', 'ernkulam', 'aster@gmail.com', 'aster', '', 'Moteher Name', 'anish');

-- --------------------------------------------------------

--
-- Table structure for table `medical_report`
--

CREATE TABLE IF NOT EXISTS `medical_report` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(100) NOT NULL,
  `consultation_details` text NOT NULL,
  `medicine` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `doctor_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_report`
--

INSERT INTO `medical_report` (`id`, `reference_no`, `consultation_details`, `medicine`, `status`, `doctor_id`) VALUES
(1, '444', 'ggrgrtg', 'gtrgrtgtr', '', ''),
(2, '444', 'ggrgrtg', 'gtrgrtgtr', '', ''),
(3, '444', 'ggrgrtg', 'gtrgrtgtr', '', ''),
(4, '696', 'cccccccdc\r\ncdsfsd\r\ncdsfsdf\r\nffdsf\r\nfsdfds', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `purpose` text NOT NULL,
  `disease` varchar(100) NOT NULL,
  `ingredient` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `company_name`, `medicine_name`, `purpose`, `disease`, `ingredient`, `status`) VALUES
(1, '', 'Paracetemol', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_details`
--

CREATE TABLE IF NOT EXISTS `medicine_details` (
  `id` int(11) NOT NULL,
  `dieseas_id` varchar(100) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `not_used_by` text NOT NULL,
  `not_used_with` text NOT NULL,
  `side_effects` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_details`
--

INSERT INTO `medicine_details` (`id`, `dieseas_id`, `medicine_name`, `not_used_by`, `not_used_with`, `side_effects`, `company_name`, `status`) VALUES
(1, '637', 'abc', 'Pregnent Low Pressure Hign Pressure', 'dolo abc paracetmol', '', 'Pharam Pvt Ltd', 'Banned'),
(2, '637', 'Paracetmol', 'heart attack , Low Pressure', 'abc xyz', '', 'Pharam Pvt Ltd', ''),
(5, '637', 'xyz', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_regno` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_regno` (`patient_regno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patient_regno`, `name`, `address`, `dob`, `gender`, `email`, `mobile`, `password`) VALUES
(1, '789546', 'anish', 'pta', '2018-11-13', '', 'gettoanish@gmail.com', '8891576246', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
