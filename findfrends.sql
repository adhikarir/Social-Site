-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2016 at 07:38 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `findfrends`
--

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE IF NOT EXISTS `friend_requests` (
`id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_from`, `user_to`) VALUES
(20, 'ramesh', 'ram'),
(21, 's', 'ram'),
(22, 's', 'ram'),
(23, 's', 'ram'),
(24, 'apsar', 'ram'),
(25, 'apsar', 'ram'),
(26, 's', 'ram'),
(27, 's', 'ram'),
(28, 's', 'ram'),
(29, 'qqqqq', 'ram'),
(34, 'qqqqq', 'ram'),
(35, 'qqqqq', 'ram'),
(36, 'qqqqq', 'ram'),
(37, 'qqqqq', 'ram'),
(38, 'qqqqq', 'ram'),
(39, 'qqqqq', 'ram');

-- --------------------------------------------------------

--
-- Table structure for table `pokes`
--

CREATE TABLE IF NOT EXISTS `pokes` (
`id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokes`
--

INSERT INTO `pokes` (`id`, `user_from`, `user_to`) VALUES
(1, 'ram', 'ram'),
(2, 'ram', 'ram'),
(3, 'ram', 'apsar'),
(4, 'ram', 'apsar'),
(5, 'ram', 'apsar'),
(6, 'ram', 'apsar'),
(7, 'ram', 'apsar'),
(8, 'ram', 'apsar'),
(9, 'ram', 'apsar'),
(10, 'ram', ''),
(11, 'ram', 'ram'),
(12, 'ram', 'ram'),
(13, 'ram', 'ram'),
(14, 'ram', 'ram'),
(15, 'ram', 'ram'),
(16, 'ram', 'ram'),
(17, 'ram', 'ram'),
(18, 'ram', 'ram'),
(19, 'ram', 'ram'),
(20, 'ram', 'ram'),
(21, 'ram', 'ram'),
(22, 'ram', 'ram'),
(23, 'ram', 'ram'),
(24, 'ram', 'qqqqq');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(10) NOT NULL,
  `body` text NOT NULL,
  `date_added` datetime NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `user_posted_to` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `date_added`, `added_by`, `user_posted_to`) VALUES
(1, 'hello', '2016-01-28 00:00:00', 'ram', 's'),
(2, 'ramesh', '2016-01-28 00:00:00', 'ramesh', 'ramesh'),
(3, 'Post', '2016-01-28 00:00:00', 'test123', 'test123'),
(51, 'rfytguyhujikol', '2016-01-28 00:00:00', 'text1234', 'test123'),
(52, 'sdfghjk', '2016-01-28 00:00:00', 'text1234', 'test123'),
(53, 'sdfghjk', '2016-01-28 00:00:00', 'test123', 'test123'),
(54, 'dfhgjhjkl', '2016-01-28 00:00:00', 'test123', 'test123'),
(55, 'hi', '2016-01-28 00:00:00', 'test123', 'test123'),
(56, 'ramesh', '2016-01-28 00:00:00', 'test123', 'test123'),
(57, 'ramesh', '2016-01-28 00:00:00', 's', 'test123'),
(58, 'hi', '2016-01-28 00:00:00', 's', 'test123'),
(59, 'hi', '2016-01-28 00:00:00', 's', 'test123'),
(60, 'hello', '2016-01-28 00:00:00', 's', 'test123'),
(61, 'cdfgetrhyu', '2016-01-28 00:00:00', 's', 'test123'),
(62, 'hello', '2016-01-28 00:00:00', 'ram', 'ram'),
(63, 'hello', '2016-01-28 00:00:00', 'ram', 's'),
(64, 'hi', '2016-01-28 00:00:00', 's', 's'),
(65, 'hoooooooooooooooooo', '2016-01-28 00:00:00', 's', 's'),
(66, 'hello', '2016-01-28 00:00:00', 'ram', 'ram'),
(67, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(68, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(69, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(70, 'oii', '2016-01-28 00:00:00', 'ram', 'ram'),
(71, 'hello', '2016-01-28 00:00:00', 's', 's'),
(72, 'drtyughilkjhfygyuj ffhjguiocgghijbvoouiyfugcvhbjkoiuytfcvbjkiuygvbjkiuygfgvbnjkugyfgcbnkiuyfgvbnjuytutfhcbnkuyytdfcvbjnkjuyffxv bbnjuyfgcb nnmkjhgyfcv bnnmkljhgfhcv bnnmjhgfgcv nmjhjgfcvn bnnjhgkjvbnjhghjnvbnmkjhgkjfgcnvbn bnjhghjvb nnmjhggvbnnjhghgv', '2016-01-28 00:00:00', 's', 's'),
(73, 'drtyughilkjhfygyuj ffhjguiocgghijbvoouiyfugcvhbjkoiuytfcvbjkiuygvbjkiuygfgvbnjkugyfgcbnkiuyfgvbnjuytutfhcbnkuyytdfcvbjnkjuyffxv bbnjuyfgcb nnmkjhgyfcv bnnmkljhgfhcv bnnmjhgfgcv nmjhjgfcvn bnnjhgkjvbnjhghjnvbnmkjhgkjfgcnvbn bnjhghjvb nnmjhggvbnnjhghgv', '2016-01-28 00:00:00', 's', 's'),
(74, 'jkl', '2016-01-28 00:00:00', '', 'apsar'),
(75, 'cdfgthy', '2016-01-28 00:00:00', 's', 's'),
(76, 'hello', '2016-01-28 00:00:00', 'adghauri', 'adghauri'),
(77, '<br />\r\n<b>Notice</b>:  Undefined variable: db_bio in <b>F:xampphtdocsfindfriendprofile.php</b> on line <b>76</b><br />\r\n', '2016-01-28 00:00:00', 'ram', 'qqqqq'),
(78, '<br />\r\n<b>Notice</b>:  Undefined variable: db_bio in <b>F:xampphtdocsfindfriendprofile.php</b> on line <b>76</b><br />\r\n', '2016-01-28 00:00:00', 'ram', 'qqqqq'),
(79, '<br />\r\n<b>Notice</b>:  Undefined variable: db_bio in <b>F:xampphtdocsfindfriendprofile.php</b> on line <b>76</b><br />\r\n', '2016-01-28 00:00:00', 'ram', 'qqqqq'),
(80, 'hello', '2016-01-28 00:00:00', 'ram', 'qqqqq'),
(81, 'hello', '2016-01-28 00:00:00', 'ram', 'qqqqq'),
(82, 'hello', '2016-01-28 00:00:00', 'ram', 'qqqqq'),
(83, 'bn', '2016-01-28 00:00:00', 'qqqqq', 'qqqqq'),
(84, 'cvbn', '2016-01-28 00:00:00', 'qqqqq', 'qqqqq'),
(85, 'cvbn', '2016-01-28 00:00:00', 'qqqqq', 'qqqqq'),
(86, 'oii', '2016-01-28 00:00:00', 'qqqqq', 'qqqqq'),
(87, 'fghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(88, 'fghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(89, 'cfghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(90, 'k xa hau', '2016-01-28 00:00:00', 'ram', 'ram'),
(91, 'hello ramesh', '2016-01-28 00:00:00', 'ram', 'ram'),
(92, 'etryuijlkjvgcftt7y8uik erdtrftguyhujik dfghjkl essdtrytfgyuhujikol edtrytgyuuhijokl srdtfyghjkl dfcgvbhnjm, esdtrytgyhujkl sedrcfygvhbjnkm xdfcgvbhjnm dfchbhjnjm, rdftghjkml, esdfcvgbhjnkm rdcfgvbhjnm edfghjk dcfgvhbjn sxdcfgvbhnjm dfygvhbjnm xdcfgvbhjjnm dxfcgvbhnjm dcfgvjbnm dcfvgbhnj ', '2016-01-28 00:00:00', 'ram', 'ram'),
(93, 'etryuijlkjvgcftt7y8uik erdtrftguyhujik dfghjkl essdtrytfgyuhujikol edtrytgyuuhijokl srdtfyghjkl dfcgvbhnjm, esdtrytgyhujkl sedrcfygvhbjnkm xdfcgvbhjnm dfchbhjnjm, rdftghjkml, esdfcvgbhjnkm rdcfgvbhjnm edfghjk dcfgvhbjn sxdcfgvbhnjm dfygvhbjnm xdcfgvbhjjnm dxfcgvbhnjm dcfgvjbnm dcfvgbhnj ', '2016-01-28 00:00:00', 'ram', 'ram'),
(94, 'fghjk,', '2016-01-28 00:00:00', 'ram', 'ram'),
(95, 'xdfghjk', '2016-01-28 00:00:00', 'ram', 'ram'),
(96, 'dfghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(97, 'dfchgvbhjnm', '2016-01-28 00:00:00', 'ram', 'ram'),
(98, 'dfchgvbhjnm', '2016-01-28 00:00:00', 'ram', 'ram'),
(99, 'dfgchjnkm', '2016-01-28 00:00:00', 'ram', 'ram'),
(100, 'restdytfgyhujk', '2016-01-28 00:00:00', 'ram', 'ram'),
(101, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(102, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(103, 'dgfhbjnkm', '2016-01-28 00:00:00', 'ram', 'ram'),
(104, 'xfcghbj', '2016-01-28 00:00:00', 'ram', 'ram'),
(105, 'xfcghbj', '2016-01-28 00:00:00', 'ram', 'ram'),
(106, 'fcgvbhjnkm', '2016-01-28 00:00:00', 'ram', 'ram'),
(107, 'fcgvbhjnkm', '2016-01-28 00:00:00', 'ram', 'ram'),
(108, 'dxgfcgvbhjn', '2016-01-28 00:00:00', 'ram', 'ram'),
(109, 'zdxgfchgvjhbjnkm', '2016-01-28 00:00:00', 'ram', 'ram'),
(110, 'cfdryjvgyukuih', '2016-01-28 00:00:00', 'ram', 'ram'),
(111, 'cfdryjvgyukuih', '2016-01-28 00:00:00', 'ram', 'ram'),
(112, 'zsfxdgfchgvbhjnm', '2016-01-28 00:00:00', 'ram', 'ram'),
(113, 'zsfxdgfchgvbhjnm', '2016-01-28 00:00:00', 'ram', 'ram'),
(114, 'fdfhghjk', '2016-01-28 00:00:00', 'ram', 'ram'),
(115, 'hello', '2016-01-28 00:00:00', 'ram', 'ram'),
(116, 'k xa khabar', '2016-01-28 00:00:00', 'ram', 'ram'),
(117, 'dfghjk', '2016-01-28 00:00:00', 'ram', 'ram'),
(118, 'rdtfgyh', '2016-01-28 00:00:00', 'ram', 'ram'),
(119, 'rdtfgyh', '2016-01-28 00:00:00', 'ram', 'ram'),
(120, 'dfghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(121, 'dfghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(122, 'sdfghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(123, 'sdfghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(124, 'dfgbhn', '2016-01-28 00:00:00', 'ram', 'ram'),
(125, 'dfgbhn', '2016-01-28 00:00:00', 'ram', 'ram'),
(126, 'cvbn', '2016-01-28 00:00:00', 'ram', 'ram'),
(127, 'cvbn', '2016-01-28 00:00:00', 'ram', 'ram'),
(128, 'cvbn', '2016-01-28 00:00:00', 'ram', 'ram'),
(129, 'dfgh', '2016-01-28 00:00:00', 'ram', 'ram'),
(130, 'dfgh', '2016-01-28 00:00:00', 'ram', 'ram'),
(131, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(132, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(133, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(134, 'fghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(135, 'fghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(136, 'fghj', '2016-01-28 00:00:00', 'ram', 'ram'),
(137, 'cvbnm', '2016-01-28 00:00:00', 'ram', 'ram'),
(138, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(139, '', '2016-01-28 00:00:00', 'ram', 'ram'),
(140, '', '2072-02-11 00:00:00', 'ram', 'ram'),
(141, 'ghjk', '2072-02-11 00:00:00', 'ram', 'ram'),
(142, '', '2072-02-11 00:00:00', 'ram', 'ram'),
(143, 'xfcgvhbjnm', '2072-02-11 00:00:00', 'ram', 'ram'),
(144, 'dfcgvbhnj', '2072-02-11 00:00:00', 'qqqqq', 'qqqqq'),
(145, 'fghui', '2072-02-11 00:00:00', '', 'ram'),
(146, 'ghjk', '2072-02-11 00:00:00', '', 'ram'),
(147, 'fghj', '2072-02-11 00:00:00', 'ram', 'ram'),
(148, 'drtugyhjikl', '2072-02-11 00:00:00', 'ram', 'ram'),
(149, 'k xa hau', '2072-02-11 00:00:00', 'ram', 'ram'),
(150, 'fgyhjk', '2072-02-11 00:00:00', 'ram', 'ram'),
(151, 'fgyhjk', '2072-02-11 00:00:00', 'ram', 'ram'),
(152, 'setrdtfgyhu', '2072-02-11 00:00:00', 'ram', 'ram'),
(153, 'sedtrfyguyhuj', '2072-02-11 00:00:00', 'ram', 'qqqqq'),
(154, 'sfg', '2072-02-11 00:00:00', 'ram', 'qqqqq'),
(155, 'sdsfgfh', '2072-02-11 00:00:00', 'ram', 'qqqqq'),
(156, '', '2072-02-11 00:00:00', 'ram', 'qqqqq'),
(157, 'qswertyt', '2072-02-11 00:00:00', 'qqqqq', 'qqqqq'),
(158, 'swdaefrty', '2072-02-11 00:00:00', 'qqqqq', 'qqqqq'),
(159, 'jnh', '2072-02-11 00:00:00', 'qqqqq', 'qqqqq');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE IF NOT EXISTS `post_comments` (
`id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `posted_to` varchar(255) NOT NULL,
  `post_remove` tinyint(1) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_body`, `posted_by`, `posted_to`, `post_remove`, `post_id`) VALUES
(1, 'this is comment for you', 'asd', 'adfe', 0, 68);

-- --------------------------------------------------------

--
-- Table structure for table `pvt_messages`
--

CREATE TABLE IF NOT EXISTS `pvt_messages` (
`id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL,
  `msg_title` varchar(255) NOT NULL,
  `msg_body` text NOT NULL,
  `date` date NOT NULL,
  `opened` varchar(255) NOT NULL,
  `deleted` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pvt_messages`
--

INSERT INTO `pvt_messages` (`id`, `user_from`, `user_to`, `msg_title`, `msg_body`, `date`, `opened`, `deleted`) VALUES
(1, 'ram', 's', '', 'hello s ji', '2016-01-26', 'yes', 'yes'),
(14, 's', 'apsar', 'hi apsar', 'fghjklnk ghjkl', '2016-01-26', 'yes', 'no'),
(15, 'apsar', 's', 'hello s', 'i am fine what aout u', '2016-01-26', 'yes', 'no'),
(16, 'ram', 's', 'kam bhayo ta', 'khai k bhayo bhanu k bhayena bhanu here pachi tha hunxa', '2016-01-26', 'yes', ''),
(17, 's', 'ram', 'oii rame', 'k xa tero khaber', '2016-01-26', 'yes', 'yes'),
(18, 's', 'apsar', 'office mai ho', 'kati bela aaune ghar', '2016-01-26', 'yes', 'no'),
(19, 'apsar', 's', 'hello gdeyhucskjcnkj', 'kam nai garena bhanya', '2016-01-26', 'yes', 'no'),
(45, 'qqqqq', 'ram', '', 'hjkdfghjk,', '2016-01-28', 'yes', 'no'),
(46, 'qqqqq', 'ram', '', 'hello', '2016-01-28', 'yes', 'no'),
(47, 'qqqqq', 'ram', '', 'hello', '2016-01-28', 'yes', 'yes'),
(48, 'qqqqq', 'ram', '', 'hello', '2016-01-28', 'yes', 'yes'),
(49, 'qqqqq', 'ram', '', 'hhey', '2016-01-28', 'yes', 'yes'),
(50, 'qqqqq', 'ram', '', 'hhey', '2016-01-28', 'yes', 'yes'),
(51, 'qqqqq', 'ram', '', 'fghjk', '2016-01-28', 'yes', 'yes'),
(52, 'qqqqq', 'ram', '', 'fghjk', '2016-01-28', 'yes', 'no'),
(53, 'qqqqq', 'ram', '', 'dfhghbjn', '2016-01-28', 'yes', 'no'),
(54, 'qqqqq', 'ram', '', 'hello', '2016-01-28', 'yes', 'no'),
(55, 'qqqqq', 'ram', '', 'hello', '2016-01-28', 'yes', 'no'),
(56, 'qqqqq', 'ram', '', 'hello', '2016-01-28', 'yes', 'no'),
(57, 'qqqqq', 'ram', '', 'fghjk', '2016-01-28', 'yes', 'no'),
(58, 'qqqqq', 'ram', '', 'fghjk', '2016-01-28', 'yes', 'no'),
(59, 'qqqqq', 'ram', '', 'fgjykhujlk', '2016-01-28', 'yes', 'no'),
(60, 'qqqqq', 'ram', '', 'k xa hau', '2016-01-28', 'yes', 'no'),
(61, 'qqqqq', 'ram', '', '', '2016-01-28', 'yes', 'no'),
(62, 'qqqqq', 'ram', '', 'ani sanchai', '2016-01-28', 'yes', 'no'),
(63, 'qqqqq', 'ram', '', 'ani sanchai', '2016-01-28', 'yes', 'no'),
(64, 'qqqqq', 'ram', '', 'fgjhkjk', '2016-01-28', 'yes', 'no'),
(65, 'qqqqq', 'ram', '', 'oii rame', '2016-01-28', 'yes', 'yes'),
(66, 'ram', 'qqqqq', '', 'oii q', '2016-01-28', 'yes', 'no'),
(67, 'ram', 'qqqqq', '', 'hello', '2016-01-28', 'yes', 'no'),
(68, 'ram', 'qqqqq', '', 'hello', '2016-01-28', 'yes', 'no'),
(69, 'ram', 'qqqqq', '', 'hello', '2016-01-28', 'yes', 'no'),
(70, 'ram', 'qqqqq', '', 'hello', '2016-01-28', 'yes', 'no'),
(71, 'ram', 'qqqqq', '', '', '2016-01-28', 'yes', 'no'),
(72, 'ram', 'qqqqq', '', '', '2016-01-28', 'yes', 'no'),
(73, 'ram', 'qqqqq', '', '', '2016-01-28', 'yes', 'no'),
(74, 'ram', 'qqqqq', '', '', '2016-01-28', 'yes', 'no'),
(75, 'ram', 'qqqqq', '', '', '2016-01-28', 'yes', 'no'),
(76, 'ram', 'qqqqq', '', '', '2016-01-28', 'yes', 'no'),
(77, 'ram', 'qqqqq', '', '', '2016-01-28', 'yes', 'no'),
(78, 'ram', 'qqqqq', '', '', '2016-01-28', 'yes', 'no'),
(79, 'ram', 'qqqqq', '', 'hello', '2016-01-28', 'yes', 'yes'),
(80, 'ram', 'qqqqq', '', 'hello', '2016-01-28', 'yes', 'no'),
(81, 'ram', 'qqqqq', '', 'bhayo ta??', '2016-01-28', 'yes', 'no'),
(82, 'qqqqq', 'ram', '', 'fgyuhij', '2016-01-28', 'no', 'no'),
(83, 'qqqqq', 'ram', '', 'cgvhbjk\r\n', '2016-01-28', 'no', 'no'),
(84, 'ram', 'qqqqq', '', 'ftgyhujik', '2016-01-28', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sign_up_date` date NOT NULL,
  `bio` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `friend_array` text NOT NULL,
  `closed` varchar(255) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `sign_up_date`, `bio`, `profile_pic`, `friend_array`, `closed`) VALUES
(1, 'adramesh', 'ramesh', 'adhikari', 'Ramesh@r.com', 'adramesh', '2070-02-11', 'this id yjukjbvyjguk hbuj', '', '', ''),
(16, 'hello', 'hello', 'hello', 'hello', '5d41402abc4b2a76b9719d911017c592', '2016-01-27', '', '', '', 'yes'),
(17, 'new', 'new', 'new', 'new', 'e3b81d385ca4c26109dfbda28c563e2b', '2016-01-27', '', 'BmwvNSFcDiGynad/11039359_800367040052243_1498434125_n.jpg', '', 'yes'),
(18, 'oi', 'asdfg', 'sdfgh', 'a@a.a', '67c762276bced09ee4df0ed537d164ea', '2016-01-27', '', '', '', 'no'),
(19, 'qqqqq', 'qqqqq', 'qqqqq', 'qqqqq@q.q', '437599f1ea3514f8969f161a6606ce18', '2016-01-27', '', 'sqG4N3rtdmL2pkB/11041431_800367423385538_1447363441_n.jpg', 'ram,ram,ram,ram', 'no'),
(20, 'ram', 'ram', 'ram', 'ram@r.c', '734379e382de4feb0dce07cb1061ef48', '2016-01-28', '', 'bCTEhqRr2SoHPLw/11015376_800366606718953_34014269_n.jpg', '', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokes`
--
ALTER TABLE `pokes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `pokes`
--
ALTER TABLE `pokes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
