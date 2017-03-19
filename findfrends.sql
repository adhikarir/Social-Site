-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2017 at 09:13 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

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
(39, 'qqqqq', 'ram'),
(40, 'adramesh', 'qqqqq');

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
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

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
(159, 'jnh', '2072-02-11 00:00:00', 'qqqqq', 'qqqqq'),
(160, '', '0000-00-00 00:00:00', 'ram', 'ram'),
(161, '', '0000-00-00 00:00:00', 'ram', 'ram'),
(162, 'hlb', '0000-00-00 00:00:00', 'ram', 'ram'),
(163, 'hello', '0000-00-00 00:00:00', 'ram', 'ram'),
(164, 'hello ram', '0000-00-00 00:00:00', 'ram', 'ram'),
(165, 'hello ramesh', '0000-00-00 00:00:00', 'ram', 'ram'),
(166, 'dfgyhjkl', '0000-00-00 00:00:00', 'ram', 'ram'),
(167, 'hlo', '0000-00-00 00:00:00', 'ram', 'ram'),
(168, 'good morning\r\n', '0000-00-00 00:00:00', 'ram', 'ram'),
(169, 'ds', '2072-02-11 00:00:00', 'ram', 'ram'),
(170, 'jn', '0000-00-00 00:00:00', 'ram', 'ram'),
(171, 'njm,', '2072-02-11 00:00:00', 'ram', 'ram'),
(172, 'sdfghj', '0000-00-00 00:00:00', 'ram', 'ram'),
(173, 'hEKJA ascfjk\r\nkhdzxjv\r\nkxdjvn\r\nkjdxvn \r\nkjcbvn\r\njkcbn\r\nkjcbn', '0000-00-00 00:00:00', 'ram', 'ram'),
(174, 'xdfcgvhbj', '0000-00-00 00:00:00', '11111', '11111'),
(175, 'xdfgh', '0000-00-00 00:00:00', '11111', '11111'),
(176, 'rttftgyhjk', '0000-00-00 00:00:00', 'ram', 'ram'),
(177, 'jhsabc', '0000-00-00 00:00:00', 'ram', 'ram'),
(178, 'ghjvchbj', '0000-00-00 00:00:00', 'ram', 'ram'),
(179, 'tfgyhujkl', '0000-00-00 00:00:00', 'ram', 'ram'),
(180, 'fdcggvbhnm', '0000-00-00 00:00:00', 'ram', 'qqqqq'),
(181, 'erdfcgvhbj', '0000-00-00 00:00:00', 'qqqqq', 'qqqqq'),
(182, 'sedfghjk', '0000-00-00 00:00:00', 'ram', 'ram'),
(183, 'hello', '0000-00-00 00:00:00', 'ram', 'ram'),
(184, 'dxfghjk', '0000-00-00 00:00:00', 'ram', 'ram'),
(185, 'xdfcgvhbjnm', '0000-00-00 00:00:00', 'ram', 'ram'),
(186, 'szdfvbj', '0000-00-00 00:00:00', 'ram', 'ram'),
(187, 'hello', '0000-00-00 00:00:00', 'ram', 'ram'),
(188, 'fghj', '0000-00-00 00:00:00', 'ram', 'ram'),
(189, 'suddep k xa', '0000-00-00 00:00:00', 'qqqqq', 'qqqqq'),
(190, 'ew\r\n', '0000-00-00 00:00:00', 'ram', 'ram'),
(191, 'fd', '0000-00-00 00:00:00', 'ram', 'qqqqq'),
(192, 'sdfgfhgjnm,', '0000-00-00 00:00:00', 'qqqqq', 'qqqqq'),
(193, 'sxdfrgthyju', '0000-00-00 00:00:00', 'ram', 'adramesh'),
(194, 'fcgvhbjkl', '0000-00-00 00:00:00', 'aaaaa', 'aaaaa'),
(195, 'hjk', '0000-00-00 00:00:00', 'aaaaa', 'aaaaa'),
(196, 'hjk', '0000-00-00 00:00:00', 'aaaaa', 'aaaaa'),
(197, 'fvgbhjnmk', '0000-00-00 00:00:00', 'aaaaa', 'aaaaa'),
(198, 'hello aaaaaaaaaaaa', '0000-00-00 00:00:00', 'aaaaa', 'aaaaa'),
(199, 'hello aaaaaaaaaaaa', '0000-00-00 00:00:00', 'aaaaa', 'aaaaa'),
(200, 'hello aaaaaaaaaaaa', '0000-00-00 00:00:00', 'aaaaa', 'aaaaa'),
(201, 'hello aaaaaaaaaaaa', '0000-00-00 00:00:00', 'aaaaa', 'aaaaa'),
(202, '', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(203, '', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(204, 'hello', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(205, 'hello', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(206, 'dxfgckjml', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(207, 'dxfgckjml', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(208, 'xdgfchjk', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(209, 'xdgfchjk', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(210, 'xdgfchjk', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(211, 'xdgfchjk', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(212, 'xdgfchjk', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(213, 'xdcfvgh', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(214, 'xdcfvgh', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(215, 'fcgvbhjkml', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(216, 'adsfvbd ', '0000-00-00 00:00:00', 'fffff', 'fffff'),
(217, 'adsfvbd ', '0000-00-00 00:00:00', 'fffff', 'fffff'),
(218, ' hbjhnkl;', '0000-00-00 00:00:00', 'fffff', 'fffff'),
(219, 'fvhjkl', '0000-00-00 00:00:00', 'fffff', 'fffff'),
(220, 'cvgbhjn', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(221, 'fcghvbjmk,m.', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(222, 'fcghvbjmk,m.', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(223, 'fcghvbjmk,m.', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(224, 'fcghvbjmk,m.', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(225, 'fcvgbhjnmk', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(226, 'fcvgbhjnmk', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(227, 'cfvgbhjnkm', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(228, '', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(229, 'xdcfgvbhnj', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(230, '', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(231, '', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(232, '', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(233, '', '0000-00-00 00:00:00', 'bbbbb', 'bbbbb'),
(234, 'drtfghujkl', '0000-00-00 00:00:00', 'ram', 'ram'),
(235, 'gvhjkm,', '0000-00-00 00:00:00', 'ram', 'ram');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_body`, `posted_by`, `posted_to`, `post_remove`, `post_id`) VALUES
(1, 'this is comment for you', 'asd', 'adfe', 0, 68),
(2, 'fghjk', 'ram', 'qqqqq', 0, 159),
(3, 'edrftgyhuj', 'ram', 'qqqqq', 0, 159),
(4, 'oii ramesh', 'ram', 'qqqqq', 0, 165),
(5, 'oii ram', 'ram', 'qqqqq', 0, 164),
(6, 'khatra xa la photo chai', 'qqqqq', 'qqqqq', 0, 165),
(7, 'rfg', 'ram', 'qqqqq', 0, 167),
(8, 'ftgyhuj', 'ram', 'qqqqq', 0, 166),
(9, 'dfghj', 'ram', 'qqqqq', 0, 167),
(10, 'hey', 'ram', 'qqqqq', 0, 167),
(11, 'oii khatra xa ta', 'ram', 'qqqqq', 0, 179),
(12, 'dfchgbhkm,', 'qqqqq', 'qqqqq', 0, 181),
(13, 'khatra', 'ram', 'qqqqq', 0, 183),
(14, 'trtgyjkl khatra', 'ram', 'qqqqq', 0, 187),
(15, 'dfghjk', 'ram', 'qqqqq', 0, 191),
(16, 'ettryukhkl;', 'ram', 'qqqqq', 0, 192),
(17, 'vbnjm', 'ddddd', 'qqqqq', 0, 192);

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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pvt_messages`
--

INSERT INTO `pvt_messages` (`id`, `user_from`, `user_to`, `msg_title`, `msg_body`, `date`, `opened`, `deleted`) VALUES
(1, 'ram', 's', '', 'hello s ji', '2016-01-26', 'yes', 'yes'),
(14, 's', 'apsar', 'hi apsar', 'fghjklnk ghjkl', '2016-01-26', 'yes', 'no'),
(15, 'apsar', 's', 'hello s', 'i am fine what aout u', '2016-01-26', 'yes', 'no'),
(16, 'ram', 's', 'kam bhayo ta', 'khai k bhayo bhanu k bhayena bhanu here pachi tha hunxa', '2016-01-26', 'yes', ''),
(17, 's', 'ram', 'oii rame', 'k xa tero khaber', '2016-01-26', 'yes', 'yes'),
(61, 'qqqqq', 'ram', '', '', '2016-01-28', 'yes', 'no'),
(62, 'qqqqq', 'ram', '', 'ani sanchai', '2016-01-28', 'yes', 'no'),
(63, 'qqqqq', 'ram', '', 'ani sanchai', '2016-01-28', 'yes', 'no'),
(79, 'ram', 'qqqqq', '', 'hello', '2016-01-28', 'yes', 'yes'),
(80, 'ram', 'qqqqq', '', 'hello', '2016-01-28', 'yes', 'no'),
(81, 'ram', 'qqqqq', '', 'bhayo ta??', '2016-01-28', 'yes', 'no'),
(82, 'qqqqq', 'ram', '', 'fgyuhij', '2016-01-28', 'yes', 'no'),
(83, 'qqqqq', 'ram', '', 'cgvhbjk\r\n', '2016-01-28', 'yes', 'no'),
(84, 'ram', 'qqqqq', '', 'ftgyhujik', '2016-01-28', 'yes', 'no'),
(85, 'ram', 'qqqqq', '', 'yghjlkl', '2016-02-02', 'yes', 'no'),
(86, 'qqqqq', 'adramesh', '', 'hello', '2016-02-03', 'yes', 'no'),
(87, 'ram', 'qqqqq', '', 'hello qq', '2016-02-04', 'yes', 'no'),
(88, 'ram', 'qqqqq', '', 'vbn', '2016-02-08', 'yes', 'no'),
(89, 'ram', 'qqqqq', '', 'fgh', '2016-02-08', 'yes', 'no'),
(90, 'ram', 'qqqqq', '', 's', '2016-02-08', 'yes', 'no'),
(91, 'ram', 'qqqqq', '', 'hello', '2016-02-08', 'yes', 'no'),
(92, 'ram', 'qqqqq', '', 'gvhj', '2016-02-08', 'yes', 'no'),
(93, 'ram', 'qqqqq', '', 'nm', '2016-02-08', 'yes', 'no'),
(94, 'ram', 'qqqqq', '', 'oii', '2016-02-08', 'yes', 'no'),
(95, 'ram', 'qqqqq', '', 'scd', '2016-02-08', 'yes', 'no'),
(96, 'qqqqq', 'ram', '', 'qs', '2016-02-08', 'yes', 'no'),
(97, 'ram', 'qqqqq', '', 'fggvhjkl', '2016-02-09', 'yes', 'no'),
(98, 'ram', 'qqqqq', '', 'hello dhari', '2016-02-09', 'yes', 'no'),
(99, 'ram', 'qqqqq', '', 'df', '2016-02-11', 'yes', 'no'),
(100, 'ram', 'qqqqq', '', 'xcfbn', '2016-02-13', 'yes', 'no'),
(101, 'qqqqq', 'ram', '', 'oii rame', '2016-02-18', 'yes', 'no'),
(102, 'ram', 'qqqqq', '', 'fhghjk', '2016-02-18', 'yes', 'no'),
(103, 'ram', 'qqqqq', '', 'edw', '2016-02-24', 'yes', 'no'),
(104, 'ram', 'qqqqq', '', 'ggdfghbjn', '2016-02-26', 'no', 'no'),
(105, 'qqqqq', 'ram', '', 'asdfghj', '2016-02-26', 'no', 'no'),
(106, 'ram', 'qqqqq', '', 'jktdnhyk', '2016-06-05', 'no', 'no'),
(107, 'ram', 'qqqqq', '', 'hello', '2016-06-05', 'no', 'no'),
(108, 'ram', 'qqqqq', '', 'frtfgyhui', '2016-06-12', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `child` varchar(50) NOT NULL,
  `parent` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `sign_up_date`, `bio`, `profile_pic`, `friend_array`, `closed`) VALUES
(1, 'adramesh', 'ramesh', 'adhikari', 'Ramesh@r.com', 'adramesh', '2070-02-11', 'this id yjukjbvyjguk hbuj', '', '', ''),
(16, 'hello', 'hello', 'hello', 'hello', '5d41402abc4b2a76b9719d911017c592', '2016-01-27', '', '', '', 'yes'),
(17, 'new', 'new', 'new', 'new', 'e3b81d385ca4c26109dfbda28c563e2b', '2016-01-27', '', 'BmwvNSFcDiGynad/11039359_800367040052243_1498434125_n.jpg', '', 'yes'),
(18, 'oi', 'asdfg', 'sdfgh', 'a@a.a', '67c762276bced09ee4df0ed537d164ea', '2016-01-27', '', '', '', 'no'),
(19, 'qqqqq', 'qqqqq', 'qqqqq', 'qqqqq@q.q', '437599f1ea3514f8969f161a6606ce18', '2016-01-27', '', '37CrlvcJE45P6DM/Desert.jpg', 'ram,ram,ram,ram', 'no'),
(20, 'ram', 'shyam', 'shyam', 'ram@r.c', '734379e382de4feb0dce07cb1061ef48', '2016-01-28', '', '7MaTHPc6sjNKBd3/10968142_800366626718951_1460713701_n.jpg', '', 'no'),
(21, 'zzzzz', 'zzzzz', 'zzzzz', 'zzzzz@z.c', '95ebc3c7b3b9f1d2c40fec14415d3cb8', '2016-02-04', '', '', '', 'no'),
(22, '11111', '11111', '11111', '11111@1.1', 'b0baee9d279d34fa1dfd71aadb908c3f', '2016-02-08', '', '', '', 'no');

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
-- Indexes for table `test`
--
ALTER TABLE `test`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `pokes`
--
ALTER TABLE `pokes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
