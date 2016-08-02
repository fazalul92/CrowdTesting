-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2016 at 06:17 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crowd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_type` varchar(10) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_type`, `pid`, `uid`, `gid`, `description`, `created_at`) VALUES
(1, 'testcase', 2, 3, 1, 'Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 ', '2016-07-05 02:28:54'),
(2, 'testcase', 2, 3, 1, 'Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 Comment 2 ', '2016-07-05 02:29:07'),
(3, 'comment', 1, 3, 1, 'Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 Reply 1 ', '2016-07-05 03:19:21'),
(4, 'comment', 1, 3, 1, 'Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 Reply 2 v', '2016-07-05 03:20:12'),
(5, 'testcase', 3, 3, 1, 'iosdhgkdhgkdfg', '2016-07-05 14:57:01'),
(6, 'comment', 5, 3, 1, 'hgjhgjhg\r\n', '2016-07-05 14:57:11'),
(7, 'testcase', 2, 3, 1, 'Test', '2016-07-05 14:58:32'),
(8, 'comment', 1, 3, 1, '', '2016-07-05 15:04:22'),
(9, 'testcase', 2, 3, 1, 'Test123', '2016-07-11 02:36:58'),
(10, 'comment', 7, 3, 1, 'Test234', '2016-07-11 02:37:11'),
(11, 'comment', 9, 3, 1, 'sdsdjhsd', '2016-07-11 02:40:34'),
(12, 'testcase', 2, 3, 1, 'sdfsdfsdf', '2016-07-11 02:40:40'),
(13, 'comment', 1, 3, 1, 'd', '2016-07-11 02:42:09'),
(14, 'comment', 1, 3, 1, 'dfsdf', '2016-07-11 02:42:46'),
(15, 'testcase', 2, 3, 1, 'mhdfgmdf', '2016-07-13 17:09:08'),
(16, 'testcase', 2, 3, 1, 'sdfsdfsdf', '2016-07-22 00:44:59'),
(17, 'comment', 16, 3, 1, 'sdfsdfsdf', '2016-07-22 00:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `creativity_questions`
--

CREATE TABLE IF NOT EXISTS `creativity_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `creativity_questions`
--

INSERT INTO `creativity_questions` (`id`, `description`) VALUES
(1, 'Capable'),
(2, 'Artificial'),
(3, 'Clever'),
(4, 'Cautious'),
(5, 'Confident'),
(6, 'Egotistical'),
(7, 'Commonplace'),
(8, 'Humourous'),
(9, 'Conservative'),
(10, 'Individualistic'),
(11, 'Conventional'),
(12, 'Informal'),
(13, 'Dissatisfied'),
(14, 'Insightful'),
(15, 'Suspicious'),
(16, 'Honest'),
(17, 'Intelligent'),
(18, 'Well mannered'),
(19, 'Wide interests'),
(20, 'Inventive'),
(21, 'Original'),
(22, 'Narrow interests'),
(23, 'Reflective'),
(24, 'Sincere'),
(25, 'Resourceful'),
(26, 'Self-confident'),
(27, 'Sexy'),
(28, 'Submissive'),
(29, 'Snobbish'),
(30, 'Unconventional');

-- --------------------------------------------------------

--
-- Table structure for table `creativity_responses`
--

CREATE TABLE IF NOT EXISTS `creativity_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_creativity_responses_user` (`user_id`),
  KEY `FK_creativity_responses_creativity_question` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `creativity_responses`
--

INSERT INTO `creativity_responses` (`id`, `question_id`, `user_id`, `description`, `created_at`) VALUES
(1, 1, 3, '2', '2016-07-22 00:30:21'),
(2, 2, 3, '2', '2016-07-22 00:30:21'),
(3, 3, 3, '2', '2016-07-22 00:30:21'),
(4, 4, 3, '2', '2016-07-22 00:30:22'),
(5, 5, 3, '2', '2016-07-22 00:30:22'),
(6, 6, 3, '2', '2016-07-22 00:30:22'),
(7, 7, 3, '2', '2016-07-22 00:30:22'),
(8, 8, 3, '2', '2016-07-22 00:30:22'),
(9, 9, 3, '2', '2016-07-22 00:30:22'),
(10, 10, 3, '2', '2016-07-22 00:30:22'),
(11, 11, 3, '2', '2016-07-22 00:30:22'),
(12, 12, 3, '2', '2016-07-22 00:30:22'),
(13, 13, 3, '2', '2016-07-22 00:30:22'),
(14, 14, 3, '2', '2016-07-22 00:30:22'),
(15, 15, 3, '2', '2016-07-22 00:30:22'),
(16, 16, 3, '2', '2016-07-22 00:30:22'),
(17, 17, 3, '2', '2016-07-22 00:30:22'),
(18, 18, 3, '2', '2016-07-22 00:30:22'),
(19, 19, 3, '2', '2016-07-22 00:30:22'),
(20, 20, 3, '2', '2016-07-22 00:30:22'),
(21, 21, 3, '2', '2016-07-22 00:30:22'),
(22, 22, 3, '2', '2016-07-22 00:30:22'),
(23, 23, 3, '2', '2016-07-22 00:30:23'),
(24, 24, 3, '2', '2016-07-22 00:30:23'),
(25, 25, 3, '2', '2016-07-22 00:30:23'),
(26, 26, 3, '2', '2016-07-22 00:30:23'),
(27, 27, 3, '2', '2016-07-22 00:30:23'),
(28, 28, 3, '2', '2016-07-22 00:30:23'),
(29, 29, 3, '2', '2016-07-22 00:30:23'),
(30, 30, 3, '2', '2016-07-22 00:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `discpersonality_questions`
--

CREATE TABLE IF NOT EXISTS `discpersonality_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_no` int(11) NOT NULL,
  `item_no` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `discpersonality_questions`
--

INSERT INTO `discpersonality_questions` (`id`, `group_no`, `item_no`, `description`) VALUES
(1, 1, 1, 'People look up to me'),
(2, 1, 2, 'I tend to be a kind person'),
(3, 1, 3, 'I accept life as it comes'),
(4, 1, 4, 'People say I have a strong personality'),
(5, 2, 1, 'I find it difficult to relax'),
(6, 2, 2, 'I have a very wide circle of friends'),
(7, 2, 3, 'I am always ready to help others'),
(8, 2, 4, 'I like to behave correctly'),
(9, 3, 1, 'I tend to do what I am told'),
(10, 3, 2, 'I like things to be very neat and tidy'),
(11, 3, 3, 'People can''t put me down'),
(12, 3, 4, 'I enjoy having fun'),
(13, 4, 1, 'I respect my elders and those in authority'),
(14, 4, 2, 'I am always willing to do new things to take a risk'),
(15, 4, 3, 'I believe things will go well'),
(16, 4, 4, 'I am always willing to help'),
(17, 5, 1, 'I am a neat and orderly person'),
(18, 5, 2, 'I am very active, both at work and play'),
(19, 5, 3, 'I am a very calm and placid person'),
(20, 5, 4, 'I generally get my own way'),
(21, 6, 1, 'I am very contented with life'),
(22, 6, 2, 'I tend to trust people'),
(23, 6, 3, 'I like peace and quiet'),
(24, 6, 4, 'I have a very positive attitude'),
(25, 7, 1, 'I have a great deal of will power'),
(26, 7, 2, 'I always take notice of what other people say'),
(27, 7, 3, 'I try to be obliging'),
(28, 7, 4, 'I am always cheerful'),
(29, 8, 1, 'I am self-confident'),
(30, 8, 2, 'People say I am a sympathetic type'),
(31, 8, 3, 'I have a tolerant attitude towards life'),
(32, 8, 4, 'I am an assertive person'),
(33, 9, 1, 'I never lose my temper'),
(34, 9, 2, 'I like things to be precise and correct'),
(35, 9, 3, 'I am very sure of myself'),
(36, 9, 4, 'I enjoy having a laugh and a joke'),
(37, 10, 1, 'My behaviour is well disciplined'),
(38, 10, 2, 'People see me as being helpful'),
(39, 10, 3, 'I am always on the move'),
(40, 10, 4, 'I persevere until I get what I want'),
(41, 11, 1, 'I enjoy competition'),
(42, 11, 2, 'I do not treat life too seriously'),
(43, 11, 3, 'I always consider others'),
(44, 11, 4, 'I am an agreeable type'),
(45, 12, 1, 'I am very persuasive'),
(46, 12, 2, 'I see myself as a gentle person'),
(47, 12, 3, 'I am a very modest type'),
(48, 12, 4, 'I often come up with original ideas'),
(49, 13, 1, 'I am very helpful towards others'),
(50, 13, 2, 'I don''t like tempting fate'),
(51, 13, 3, 'I don''t give up easily'),
(52, 13, 4, 'People like my company'),
(53, 14, 1, 'I tend to be a cautious person'),
(54, 14, 2, 'I am a very determined person'),
(55, 14, 3, 'I am good at convincing people'),
(56, 14, 4, 'I tend to be a friendly person'),
(57, 15, 1, 'I don''t scare easily'),
(58, 15, 2, 'People find my company stimulating'),
(59, 15, 3, 'I am always willing to follow orders'),
(60, 15, 4, 'I am a rather shy person'),
(61, 16, 1, 'I am very willing to change my opinion'),
(62, 16, 2, 'I like a good argument'),
(63, 16, 3, 'I tend to be an easy going type'),
(64, 16, 4, 'I always look on the bright side of life'),
(65, 17, 1, 'I am a very social sort of person'),
(66, 17, 2, 'I am very patient'),
(67, 17, 3, 'I am a very self-sufficient sort of person'),
(68, 17, 4, 'I rarely raise my voice'),
(69, 18, 1, 'I am always ready and willing'),
(70, 18, 2, 'I am always keen to try new things'),
(71, 18, 3, 'I don''t like arguments'),
(72, 18, 4, 'People describe me as high spirited'),
(73, 19, 1, 'I enjoy taking a chance'),
(74, 19, 2, 'I tend to be very receptive to other people''s ideas'),
(75, 19, 3, 'I am always polite and courteous'),
(76, 19, 4, 'I am a moderate rather than an extreme person'),
(77, 20, 1, 'I tend to be a forgiving type'),
(78, 20, 2, 'I am a sensitive person'),
(79, 20, 3, 'I have a lot of energy and vigour'),
(80, 20, 4, 'I can mix with anybody'),
(81, 21, 1, 'I enjoy chatting with people'),
(82, 21, 2, 'I control my emotions'),
(83, 21, 3, 'I am very conventional in my outlook'),
(84, 21, 4, 'I make decisions quickly'),
(85, 22, 1, 'I tend to keep my feelings to myself'),
(86, 22, 2, 'Accuracy is very important to me'),
(87, 22, 3, 'I like to speak my mind'),
(88, 22, 4, 'I am very friendly'),
(89, 23, 1, 'I like to handle things with diplomacy'),
(90, 23, 2, 'I am very daring'),
(91, 23, 3, 'Most people find me acceptable'),
(92, 23, 4, 'I feel satisfied with life'),
(93, 24, 1, 'I am obedient'),
(94, 24, 2, 'I am always willing to have a go'),
(95, 24, 3, 'Loyalty is one of my strengths'),
(96, 24, 4, 'I have a good deal of charm'),
(97, 25, 1, 'I tend to be an aggressive type'),
(98, 25, 2, 'I am good fun and have a lot of personality'),
(99, 25, 3, 'People tend to see me as an easy touch'),
(100, 25, 4, 'I tend to be rather timid'),
(101, 26, 1, 'I am good at motivating people'),
(102, 26, 2, 'Patience is one of my major strengths'),
(103, 26, 3, 'I am careful to say the right thing'),
(104, 26, 4, 'I have a strong desire to win'),
(105, 27, 1, 'People find me easy to get on with'),
(106, 27, 2, 'I get a lot of satisfaction from helping others'),
(107, 27, 3, 'I always think things through'),
(108, 27, 4, 'I prefer to get things down now rather than later'),
(109, 28, 1, 'I am good at analysing situations'),
(110, 28, 2, 'I get restless quickly'),
(111, 28, 3, 'I think about how my decisions might affect others'),
(112, 28, 4, 'People see me as relaxed and easy going');

-- --------------------------------------------------------

--
-- Table structure for table `discpersonality_responses`
--

CREATE TABLE IF NOT EXISTS `discpersonality_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_no` int(11) NOT NULL,
  `item_no` int(11) NOT NULL,
  `response` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `discpersonality_responses`
--

INSERT INTO `discpersonality_responses` (`id`, `user_id`, `group_no`, `item_no`, `response`, `created_at`) VALUES
(1, 3, 1, 1, 'yes', '2016-07-26 19:03:45'),
(2, 3, 1, 3, 'no', '2016-07-26 19:03:45'),
(3, 3, 2, 1, 'yes', '2016-07-26 19:03:45'),
(4, 3, 2, 3, 'no', '2016-07-26 19:03:45'),
(5, 3, 3, 1, 'yes', '2016-07-26 19:03:46'),
(6, 3, 3, 3, 'no', '2016-07-26 19:03:46'),
(7, 3, 4, 1, 'yes', '2016-07-26 19:03:46'),
(8, 3, 4, 2, 'no', '2016-07-26 19:03:46'),
(9, 3, 5, 1, 'yes', '2016-07-26 19:03:46'),
(10, 3, 5, 2, 'no', '2016-07-26 19:03:46'),
(11, 3, 6, 1, 'yes', '2016-07-26 19:03:46'),
(12, 3, 6, 2, 'no', '2016-07-26 19:03:46'),
(13, 3, 7, 1, 'yes', '2016-07-26 19:03:46'),
(14, 3, 7, 2, 'no', '2016-07-26 19:03:46'),
(15, 3, 8, 1, 'yes', '2016-07-26 19:03:46'),
(16, 3, 8, 2, 'no', '2016-07-26 19:03:46'),
(17, 3, 9, 1, 'yes', '2016-07-26 19:03:46'),
(18, 3, 9, 2, 'no', '2016-07-26 19:03:46'),
(19, 3, 10, 1, 'yes', '2016-07-26 19:03:46'),
(20, 3, 10, 2, 'no', '2016-07-26 19:03:46'),
(21, 3, 11, 1, 'yes', '2016-07-26 19:03:46'),
(22, 3, 11, 2, 'no', '2016-07-26 19:03:46'),
(23, 3, 12, 1, 'yes', '2016-07-26 19:03:46'),
(24, 3, 12, 2, 'no', '2016-07-26 19:03:46'),
(25, 3, 13, 1, 'yes', '2016-07-26 19:03:46'),
(26, 3, 13, 2, 'no', '2016-07-26 19:03:46'),
(27, 3, 14, 1, 'yes', '2016-07-26 19:03:46'),
(28, 3, 14, 2, 'no', '2016-07-26 19:03:46'),
(29, 3, 15, 1, 'yes', '2016-07-26 19:03:46'),
(30, 3, 15, 2, 'no', '2016-07-26 19:03:46'),
(31, 3, 16, 1, 'yes', '2016-07-26 19:03:46'),
(32, 3, 16, 2, 'no', '2016-07-26 19:03:46'),
(33, 3, 17, 1, 'yes', '2016-07-26 19:03:46'),
(34, 3, 17, 2, 'no', '2016-07-26 19:03:46'),
(35, 3, 18, 1, 'yes', '2016-07-26 19:03:47'),
(36, 3, 18, 2, 'no', '2016-07-26 19:03:47'),
(37, 3, 19, 1, 'yes', '2016-07-26 19:03:47'),
(38, 3, 19, 2, 'no', '2016-07-26 19:03:47'),
(39, 3, 20, 1, 'yes', '2016-07-26 19:03:47'),
(40, 3, 20, 2, 'no', '2016-07-26 19:03:47'),
(41, 3, 21, 1, 'yes', '2016-07-26 19:03:47'),
(42, 3, 21, 2, 'no', '2016-07-26 19:03:47'),
(43, 3, 22, 1, 'yes', '2016-07-26 19:03:47'),
(44, 3, 22, 2, 'no', '2016-07-26 19:03:47'),
(45, 3, 23, 1, 'yes', '2016-07-26 19:03:47'),
(46, 3, 23, 2, 'no', '2016-07-26 19:03:47'),
(47, 3, 24, 1, 'yes', '2016-07-26 19:03:47'),
(48, 3, 24, 2, 'no', '2016-07-26 19:03:47'),
(49, 3, 25, 1, 'yes', '2016-07-26 19:03:47'),
(50, 3, 25, 2, 'no', '2016-07-26 19:03:47'),
(51, 3, 26, 1, 'yes', '2016-07-26 19:03:47'),
(52, 3, 26, 2, 'no', '2016-07-26 19:03:47'),
(53, 3, 27, 1, 'yes', '2016-07-26 19:03:47'),
(54, 3, 27, 2, 'no', '2016-07-26 19:03:47'),
(55, 3, 28, 1, 'yes', '2016-07-26 19:03:47'),
(56, 3, 28, 2, 'no', '2016-07-26 19:03:47'),
(57, 20, 1, 1, 'no', '2016-07-27 13:45:39'),
(58, 20, 1, 2, 'yes', '2016-07-27 13:45:39'),
(59, 20, 2, 1, 'yes', '2016-07-27 13:45:39'),
(60, 20, 2, 2, 'no', '2016-07-27 13:45:39'),
(61, 20, 3, 1, 'yes', '2016-07-27 13:45:39'),
(62, 20, 3, 3, 'no', '2016-07-27 13:45:39'),
(63, 20, 4, 1, 'yes', '2016-07-27 13:45:39'),
(64, 20, 4, 3, 'no', '2016-07-27 13:45:39'),
(65, 20, 5, 1, 'yes', '2016-07-27 13:45:39'),
(66, 20, 5, 2, 'no', '2016-07-27 13:45:39'),
(67, 20, 6, 1, 'yes', '2016-07-27 13:45:39'),
(68, 20, 6, 2, 'no', '2016-07-27 13:45:39'),
(69, 20, 7, 1, 'yes', '2016-07-27 13:45:39'),
(70, 20, 7, 2, 'no', '2016-07-27 13:45:40'),
(71, 20, 8, 1, 'yes', '2016-07-27 13:45:40'),
(72, 20, 8, 2, 'no', '2016-07-27 13:45:40'),
(73, 20, 9, 1, 'yes', '2016-07-27 13:45:40'),
(74, 20, 9, 2, 'no', '2016-07-27 13:45:40'),
(75, 20, 10, 1, 'yes', '2016-07-27 13:45:40'),
(76, 20, 10, 2, 'no', '2016-07-27 13:45:40'),
(77, 20, 11, 1, 'yes', '2016-07-27 13:45:40'),
(78, 20, 11, 2, 'no', '2016-07-27 13:45:40'),
(79, 20, 12, 1, 'yes', '2016-07-27 13:45:40'),
(80, 20, 12, 2, 'no', '2016-07-27 13:45:40'),
(81, 20, 13, 1, 'yes', '2016-07-27 13:45:40'),
(82, 20, 13, 2, 'no', '2016-07-27 13:45:40'),
(83, 20, 14, 1, 'yes', '2016-07-27 13:45:40'),
(84, 20, 14, 2, 'no', '2016-07-27 13:45:40'),
(85, 20, 15, 1, 'yes', '2016-07-27 13:45:40'),
(86, 20, 15, 2, 'no', '2016-07-27 13:45:40'),
(87, 20, 16, 1, 'yes', '2016-07-27 13:45:40'),
(88, 20, 16, 2, 'no', '2016-07-27 13:45:40'),
(89, 20, 17, 1, 'yes', '2016-07-27 13:45:40'),
(90, 20, 17, 2, 'no', '2016-07-27 13:45:40'),
(91, 20, 18, 1, 'yes', '2016-07-27 13:45:40'),
(92, 20, 18, 2, 'no', '2016-07-27 13:45:40'),
(93, 20, 19, 1, 'yes', '2016-07-27 13:45:40'),
(94, 20, 19, 2, 'no', '2016-07-27 13:45:41'),
(95, 20, 20, 1, 'yes', '2016-07-27 13:45:41'),
(96, 20, 20, 2, 'no', '2016-07-27 13:45:41'),
(97, 20, 21, 1, 'yes', '2016-07-27 13:45:41'),
(98, 20, 21, 2, 'no', '2016-07-27 13:45:41'),
(99, 20, 22, 1, 'yes', '2016-07-27 13:45:41'),
(100, 20, 22, 2, 'no', '2016-07-27 13:45:41'),
(101, 20, 23, 1, 'yes', '2016-07-27 13:45:41'),
(102, 20, 23, 2, 'no', '2016-07-27 13:45:41'),
(103, 20, 24, 1, 'yes', '2016-07-27 13:45:41'),
(104, 20, 24, 2, 'no', '2016-07-27 13:45:41'),
(105, 20, 25, 1, 'yes', '2016-07-27 13:45:41'),
(106, 20, 25, 2, 'no', '2016-07-27 13:45:41'),
(107, 20, 26, 1, 'yes', '2016-07-27 13:45:41'),
(108, 20, 26, 2, 'no', '2016-07-27 13:45:41'),
(109, 20, 27, 1, 'yes', '2016-07-27 13:45:41'),
(110, 20, 27, 2, 'no', '2016-07-27 13:45:41'),
(111, 20, 28, 1, 'yes', '2016-07-27 13:45:41'),
(112, 20, 28, 2, 'no', '2016-07-27 13:45:41'),
(113, 21, 1, 1, 'yes', '2016-07-27 23:59:37'),
(114, 21, 1, 3, 'no', '2016-07-27 23:59:37'),
(115, 21, 2, 1, 'yes', '2016-07-27 23:59:37'),
(116, 21, 2, 3, 'no', '2016-07-27 23:59:37'),
(117, 21, 3, 1, 'yes', '2016-07-27 23:59:37'),
(118, 21, 3, 3, 'no', '2016-07-27 23:59:38'),
(119, 21, 4, 1, 'yes', '2016-07-27 23:59:38'),
(120, 21, 4, 3, 'no', '2016-07-27 23:59:38'),
(121, 21, 5, 1, 'yes', '2016-07-27 23:59:38'),
(122, 21, 5, 3, 'no', '2016-07-27 23:59:38'),
(123, 21, 6, 1, 'yes', '2016-07-27 23:59:38'),
(124, 21, 6, 3, 'no', '2016-07-27 23:59:38'),
(125, 21, 7, 1, 'yes', '2016-07-27 23:59:38'),
(126, 21, 7, 3, 'no', '2016-07-27 23:59:38'),
(127, 21, 8, 1, 'yes', '2016-07-27 23:59:38'),
(128, 21, 8, 2, 'no', '2016-07-27 23:59:38'),
(129, 21, 9, 1, 'yes', '2016-07-27 23:59:38'),
(130, 21, 9, 3, 'no', '2016-07-27 23:59:38'),
(131, 21, 10, 1, 'yes', '2016-07-27 23:59:38'),
(132, 21, 10, 2, 'no', '2016-07-27 23:59:38'),
(133, 21, 11, 1, 'yes', '2016-07-27 23:59:38'),
(134, 21, 11, 3, 'no', '2016-07-27 23:59:38'),
(135, 21, 12, 1, 'yes', '2016-07-27 23:59:38'),
(136, 21, 12, 3, 'no', '2016-07-27 23:59:38'),
(137, 21, 13, 1, 'yes', '2016-07-27 23:59:38'),
(138, 21, 13, 3, 'no', '2016-07-27 23:59:38'),
(139, 21, 14, 1, 'yes', '2016-07-27 23:59:38'),
(140, 21, 14, 3, 'no', '2016-07-27 23:59:38'),
(141, 21, 15, 1, 'yes', '2016-07-27 23:59:38'),
(142, 21, 15, 3, 'no', '2016-07-27 23:59:38'),
(143, 21, 16, 1, 'yes', '2016-07-27 23:59:38'),
(144, 21, 16, 3, 'no', '2016-07-27 23:59:38'),
(145, 21, 17, 1, 'yes', '2016-07-27 23:59:38'),
(146, 21, 17, 3, 'no', '2016-07-27 23:59:39'),
(147, 21, 18, 1, 'yes', '2016-07-27 23:59:39'),
(148, 21, 18, 3, 'no', '2016-07-27 23:59:39'),
(149, 21, 19, 1, 'yes', '2016-07-27 23:59:39'),
(150, 21, 19, 3, 'no', '2016-07-27 23:59:39'),
(151, 21, 20, 1, 'yes', '2016-07-27 23:59:39'),
(152, 21, 20, 3, 'no', '2016-07-27 23:59:39'),
(153, 21, 21, 1, 'yes', '2016-07-27 23:59:39'),
(154, 21, 21, 3, 'no', '2016-07-27 23:59:39'),
(155, 21, 22, 1, 'yes', '2016-07-27 23:59:39'),
(156, 21, 22, 3, 'no', '2016-07-27 23:59:39'),
(157, 21, 23, 1, 'yes', '2016-07-27 23:59:39'),
(158, 21, 23, 3, 'no', '2016-07-27 23:59:39'),
(159, 21, 24, 1, 'yes', '2016-07-27 23:59:39'),
(160, 21, 24, 3, 'no', '2016-07-27 23:59:39'),
(161, 21, 25, 1, 'yes', '2016-07-27 23:59:39'),
(162, 21, 25, 3, 'no', '2016-07-27 23:59:39'),
(163, 21, 26, 1, 'yes', '2016-07-27 23:59:39'),
(164, 21, 26, 3, 'no', '2016-07-27 23:59:39'),
(165, 21, 27, 1, 'yes', '2016-07-27 23:59:39'),
(166, 21, 27, 3, 'no', '2016-07-27 23:59:39'),
(167, 21, 28, 1, 'yes', '2016-07-27 23:59:39'),
(168, 21, 28, 3, 'no', '2016-07-27 23:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `message` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uid`, `message`, `created_at`) VALUES
(1, 3, 'Login', '2016-07-25 15:24:21'),
(2, 19, 'Login', '2016-07-25 15:24:37'),
(3, 3, 'Login', '2016-07-25 15:27:22'),
(4, 3, 'Login', '2016-07-25 16:46:26'),
(5, 3, 'Login', '2016-07-25 17:53:01'),
(6, 3, 'Login', '2016-07-25 18:16:09'),
(7, 4, 'Login', '2016-07-25 18:17:52'),
(8, 4, 'Login', '2016-07-25 18:18:12'),
(9, 3, 'Login', '2016-07-26 14:07:38'),
(10, 3, 'Login', '2016-07-26 14:54:02'),
(11, 3, 'Login', '2016-07-26 16:43:11'),
(12, 20, 'Login', '2016-07-27 13:35:50'),
(13, 20, 'Login', '2016-07-27 13:49:07'),
(14, 20, 'Login', '2016-07-27 13:57:35'),
(15, 3, 'Login', '2016-07-27 17:25:11'),
(16, 20, 'Login', '2016-07-27 22:45:51'),
(17, 20, 'Login', '2016-07-27 22:46:24'),
(18, 21, 'Login', '2016-07-27 23:56:59'),
(19, 21, 'Login', '2016-07-27 23:58:18'),
(20, 21, 'Login', '2016-07-28 14:52:20'),
(21, 21, 'Login', '2016-07-28 16:34:51'),
(22, 22, 'Login', '2016-07-28 17:16:07'),
(23, 22, 'Login', '2016-07-28 17:16:24'),
(24, 21, 'Login', '2016-07-28 17:19:13'),
(25, 21, 'Login', '2016-07-28 17:25:32'),
(26, 22, 'Login', '2016-07-28 17:27:18'),
(27, 23, 'Login', '2016-07-28 17:27:46'),
(28, 23, 'Login', '2016-07-28 17:28:02'),
(29, 23, 'Login', '2016-07-28 17:30:50'),
(30, 23, 'Login', '2016-07-28 17:40:10'),
(31, 23, 'Login', '2016-07-28 17:44:24'),
(32, 24, 'Login', '2016-07-28 17:44:51'),
(33, 25, 'Login', '2016-07-30 02:38:45'),
(34, 3, 'Login', '2016-07-30 02:54:29'),
(35, 3, 'Login', '2016-07-30 02:55:26'),
(36, 3, 'Login', '2016-07-30 03:02:30'),
(37, 3, 'Login', '2016-07-30 03:10:51'),
(38, 3, 'Login', '2016-07-30 03:12:01'),
(39, 3, 'Login', '2016-07-30 03:13:44'),
(40, 3, 'Login', '2016-07-30 03:18:55'),
(41, 3, 'Login', '2016-07-30 03:19:55'),
(42, 3, 'Login', '2016-07-30 03:24:01'),
(43, 3, 'Login', '2016-07-30 03:24:12'),
(44, 3, 'Login', '2016-07-30 03:24:27'),
(45, 3, 'Login', '2016-07-30 03:25:49'),
(46, 3, 'Login', '2016-07-30 03:26:00'),
(47, 20, 'Login', '2016-07-30 03:26:17'),
(48, 21, 'Login', '2016-07-30 03:26:47'),
(49, 26, 'Login', '2016-07-30 15:28:06'),
(50, 3, 'Login', '2016-07-30 15:55:17'),
(51, 3, 'Login', '2016-07-30 15:55:37'),
(52, 3, 'Login', '2016-07-30 15:57:08'),
(53, 3, 'Login', '2016-07-30 15:57:29'),
(54, 3, 'Login', '2016-07-30 15:58:09'),
(55, 3, 'Login', '2016-07-30 15:58:53'),
(56, 27, 'Login', '2016-07-30 16:21:40'),
(57, 3, 'Login', '2016-07-30 16:55:10'),
(58, 3, 'Login', '2016-07-31 15:56:30'),
(59, 3, 'Login', '2016-07-31 16:26:46'),
(60, 3, 'Login', '2016-07-31 16:57:49'),
(61, 3, 'Login', '2016-07-31 16:58:36'),
(62, 28, 'Login', '2016-08-01 00:19:08'),
(63, 3, 'Login', '2016-08-01 19:47:35'),
(64, 3, 'Login', '2016-08-01 19:49:14'),
(65, 29, 'Login', '2016-08-01 19:58:03'),
(66, 3, 'Login', '2016-08-01 22:48:00'),
(67, 3, 'Login', '2016-08-01 23:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `personality_questions`
--

CREATE TABLE IF NOT EXISTS `personality_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `personality_questions`
--

INSERT INTO `personality_questions` (`id`, `description`) VALUES
(1, 'Am the life of the party'),
(2, 'Sympathize with others'' feelings'),
(3, 'Get chores done right away'),
(4, 'Have frequent mood swings'),
(5, 'Have a vivid imagination'),
(6, 'Don''t talk a lot'),
(7, 'Am not interested in other people''s problems'),
(8, 'Often forget to put things back in their proper place'),
(9, 'Am relaxed most of the time'),
(10, 'Am not interested in abstract ideas'),
(11, 'Talk to a lot of different people at parties'),
(12, 'Feel others'' emotions'),
(13, 'Like order'),
(14, 'Get upset easily'),
(15, 'Have difficulty understanding abstract ideas'),
(16, 'Keep in the background'),
(17, 'Am not really interested in others'),
(18, 'Make a mess of things'),
(19, 'Seldom feel blue'),
(20, 'Do not have a good imagination');

-- --------------------------------------------------------

--
-- Table structure for table `personality_responses`
--

CREATE TABLE IF NOT EXISTS `personality_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_personality_responses_user` (`user_id`),
  KEY `FK_personality_responses_personality_question` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `personality_responses`
--

INSERT INTO `personality_responses` (`id`, `question_id`, `user_id`, `description`, `created_at`) VALUES
(1, 1, 3, '2', '2016-07-22 00:23:10'),
(2, 2, 3, '2', '2016-07-22 00:23:10'),
(3, 3, 3, '2', '2016-07-22 00:23:10'),
(4, 4, 3, '2', '2016-07-22 00:23:10'),
(5, 5, 3, '2', '2016-07-22 00:23:10'),
(6, 6, 3, '2', '2016-07-22 00:23:10'),
(7, 7, 3, '2', '2016-07-22 00:23:11'),
(8, 8, 3, '2', '2016-07-22 00:23:11'),
(9, 9, 3, '2', '2016-07-22 00:23:11'),
(10, 10, 3, '2', '2016-07-22 00:23:11'),
(11, 11, 3, '2', '2016-07-22 00:23:11'),
(12, 12, 3, '2', '2016-07-22 00:23:11'),
(13, 13, 3, '2', '2016-07-22 00:23:11'),
(14, 14, 3, '2', '2016-07-22 00:23:11'),
(15, 15, 3, '2', '2016-07-22 00:23:11'),
(16, 16, 3, '2', '2016-07-22 00:23:11'),
(17, 17, 3, '2', '2016-07-22 00:23:11'),
(18, 18, 3, '2', '2016-07-22 00:23:11'),
(19, 19, 3, '2', '2016-07-22 00:23:11'),
(20, 20, 3, '2', '2016-07-22 00:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `postsurvey_questions`
--

CREATE TABLE IF NOT EXISTS `postsurvey_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `question_type` varchar(50) DEFAULT NULL,
  `answer_choices` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `postsurvey_questions`
--

INSERT INTO `postsurvey_questions` (`id`, `description`, `question_type`, `answer_choices`) VALUES
(1, 'How long did the main tasks (excluding pre and post surveys) take?', 'text', 'duration in hours:minutes, e.g., 00:30 for thirty minutes'),
(2, 'How do you rate the difficulty of main tasks?', 'multiple_choice', 'Very easy|Easy|Medium|High|Very high'),
(3, 'Please provide any additional comments you have below', 'text', 'Optional comments');

-- --------------------------------------------------------

--
-- Table structure for table `postsurvey_responses`
--

CREATE TABLE IF NOT EXISTS `postsurvey_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_postsurvey_responses_user` (`user_id`),
  KEY `FK_postsurvey_responses_postsurvey_question` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `postsurvey_responses`
--

INSERT INTO `postsurvey_responses` (`id`, `question_id`, `user_id`, `description`, `created_at`) VALUES
(1, 1, 3, '00:25', '2016-07-30 03:11:03'),
(2, 2, 3, 'Easy', '2016-07-30 03:11:03'),
(3, 3, 3, 'sdfsdfsdf', '2016-07-30 03:11:03'),
(4, 1, 3, '00:25', '2016-07-30 03:12:10'),
(5, 2, 3, 'Medium', '2016-07-30 03:12:10'),
(6, 3, 3, 'sdfsdfsdf', '2016-07-30 03:12:10'),
(7, 1, 3, '00:25', '2016-07-30 03:14:36'),
(8, 2, 3, 'High', '2016-07-30 03:14:36'),
(9, 3, 3, 'sdfsdfsdf', '2016-07-30 03:14:36'),
(10, 1, 3, '00:25', '2016-07-30 03:19:02'),
(11, 2, 3, 'Easy', '2016-07-30 03:19:02'),
(12, 3, 3, 'sdfsdfsdf', '2016-07-30 03:19:02'),
(13, 1, 3, '00:25', '2016-07-30 03:25:56'),
(14, 2, 3, 'Easy', '2016-07-30 03:25:56'),
(15, 3, 3, 'sdfsdfsdf', '2016-07-30 03:25:56'),
(16, 1, 3, '00:25', '2016-07-30 15:58:38'),
(17, 2, 3, 'Medium', '2016-07-30 15:58:38'),
(18, 3, 3, 'hbhjgj', '2016-07-30 15:58:38'),
(19, 1, 3, '00:25', '2016-07-31 16:57:59'),
(20, 2, 3, 'Easy', '2016-07-31 16:57:59'),
(21, 3, 3, 'sdfsdfsdf', '2016-07-31 16:57:59'),
(22, 1, 3, '00:25', '2016-07-31 16:59:44'),
(23, 2, 3, 'Very easy', '2016-07-31 16:59:44'),
(24, 3, 3, 'sdfsdfsdf', '2016-07-31 16:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `presurvey_questions`
--

CREATE TABLE IF NOT EXISTS `presurvey_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `question_type` varchar(50) DEFAULT NULL,
  `answer_choices` varchar(255) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `presurvey_questions`
--

INSERT INTO `presurvey_questions` (`id`, `description`, `question_type`, `answer_choices`, `required`) VALUES
(1, 'What is your gender?', 'multiple_choice', 'Male|Female|Other', 1),
(2, 'Which of the following categories includes your age?', 'multiple_choice', '18 to 24|25 to 34|35 to 45|45 to 54|55 or older', 1),
(3, 'What is the highest level of school you have completed or the highest degree you have received?', 'multiple_choice', 'Less than high school degree|High school degree or equivalent (e.g., GED)|Some college but no degree|Bachelor degree|Graduate degree', 1),
(4, 'If you went to college, what was your major?', 'text', 'For example, computer science, mechanical engineering, psychology, music, law, etc.', 1),
(5, 'Have you worked for a technology company?', 'multiple_choice', 'No|Yes; for less than a year|Yes; for one to five years|Yes; for more than five years', 1),
(6, 'How do you rate your familiarity of concepts related to Computer Science, Information Techonology, and Computer Netowrks?', 'multiple_choice', 'Very low|Low|Medium|High|Very high', 1),
(7, 'How do you rate your familiarity of concepts related to Smart Homes, Smart Cities, and Internet of Things?', 'multiple_choice', 'Very low|Low|Medium|High|Very high', 1),
(8, 'Do you use any Smart Home technologies at your home?', 'multiple_choice', 'Yes|No|Not sure', 1),
(9, 'Please use the text box below if you need to clarify any of your answers above', 'text', 'Optional clarifications', 0);

-- --------------------------------------------------------

--
-- Table structure for table `presurvey_responses`
--

CREATE TABLE IF NOT EXISTS `presurvey_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_presurvey_responses_presurvey_questions` (`question_id`),
  KEY `FK_presurvey_responses_user` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `presurvey_responses`
--

INSERT INTO `presurvey_responses` (`id`, `question_id`, `user_id`, `description`, `created_at`) VALUES
(1, 1, 3, 'Female', '2016-07-25 12:33:29'),
(2, 2, 3, '18 to 24', '2016-07-25 12:33:29'),
(3, 3, 3, 'Less than high school degree', '2016-07-25 12:33:29'),
(4, 4, 3, 'sdfsdf', '2016-07-25 12:33:29'),
(5, 5, 3, 'No', '2016-07-25 12:33:30'),
(6, 6, 3, 'Very low', '2016-07-25 12:33:30'),
(7, 7, 3, 'Very low', '2016-07-25 12:33:30'),
(8, 8, 3, 'No', '2016-07-25 12:33:30'),
(9, 9, 3, '', '2016-07-25 12:33:30'),
(10, 1, 20, 'Male', '2016-07-27 13:36:08'),
(11, 2, 20, '25 to 34', '2016-07-27 13:36:08'),
(12, 3, 20, 'Some college but no degree', '2016-07-27 13:36:08'),
(13, 4, 20, 'sdfsdf', '2016-07-27 13:36:08'),
(14, 5, 20, 'Yes; for less than a year', '2016-07-27 13:36:08'),
(15, 6, 20, 'Medium', '2016-07-27 13:36:08'),
(16, 7, 20, 'Low', '2016-07-27 13:36:08'),
(17, 8, 20, 'Yes', '2016-07-27 13:36:08'),
(18, 9, 20, '', '2016-07-27 13:36:08'),
(19, 1, 26, 'Female', '2016-07-30 15:29:13'),
(20, 2, 26, '18 to 24', '2016-07-30 15:29:13'),
(21, 3, 26, 'Less than high school degree', '2016-07-30 15:29:13'),
(22, 4, 26, 'sdfsdf', '2016-07-30 15:29:13'),
(23, 5, 26, 'No', '2016-07-30 15:29:13'),
(24, 6, 26, 'Very low', '2016-07-30 15:29:13'),
(25, 7, 26, 'Very low', '2016-07-30 15:29:13'),
(26, 8, 26, 'Yes', '2016-07-30 15:29:13'),
(27, 9, 26, '', '2016-07-30 15:29:13'),
(28, 1, 28, 'Male', '2016-08-01 00:24:10'),
(29, 2, 28, '18 to 24', '2016-08-01 00:24:10'),
(30, 3, 28, 'Some college but no degree', '2016-08-01 00:24:10'),
(31, 4, 28, 'dfsdf', '2016-08-01 00:24:10'),
(32, 5, 28, 'Yes; for less than a year', '2016-08-01 00:24:10'),
(33, 6, 28, 'Very low', '2016-08-01 00:24:10'),
(34, 7, 28, 'Low', '2016-08-01 00:24:10'),
(35, 8, 28, 'Not sure', '2016-08-01 00:24:10'),
(36, 9, 28, 'dfsdfsrg', '2016-08-01 00:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE IF NOT EXISTS `requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stakeholder` varchar(100) NOT NULL,
  `feature` varchar(500) NOT NULL,
  `benefit` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`id`, `stakeholder`, `feature`, `benefit`, `created_at`) VALUES
(2, 'Requirement 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla volutpat faucibus diam non rutrum. Curabitur bibendum neque a est euismod, sed fringilla dui commodo. Ut vitae molestie tortor. Curabitur posuere tortor vitae augue ullamcorper scelerisque. Praesent pellentesque augue ac viverra mattis. Maecenas dapibus interdum magna. Cras viverra tempor diam vel finibus. Ut vitae porttitor diam, sed congue lorem. Sed tempor, neque in accumsan dignissim, orci lectus laoreet ante, sit amet suscipit d', 'sdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdf', '2016-07-04 02:13:11'),
(3, 'Requirement 2', 'Morbi sagittis cursus ligula sed elementum. Fusce condimentum ullamcorper tortor vel sollicitudin. Maecenas tempus iaculis molestie. Duis non orci sodales, sagittis magna ac, congue lectus. Nulla ut diam scelerisque, tempor orci id, dictum lectus. Suspendisse gravida eros nisl, ut imperdiet felis dignissim eu. Suspendisse vulputate ex arcu, sed ornare nibh ultricies eget. Donec aliquet, erat non vestibulum scelerisque, erat dui luctus arcu, venenatis lobortis sapien dolor eu mi. Nam sodales puru', 'sdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdf', '2016-07-04 02:13:32'),
(4, 'sdfsdf', 'dfsdfsdf', 'sdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdf', '2016-07-22 00:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seq_no` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `filename` varchar(20) NOT NULL,
  `next_seq` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `seq_no`, `title`, `filename`, `next_seq`) VALUES
(1, 1, 'Pre-Survey', 'presurvey.jsp', 2),
(2, 2, 'Personality Survey', 'discpersona.jsp', 3),
(4, 5, 'Further Instructions', 'debrief.jsp', 6),
(5, 5, 'Add Requirements', 'createreqr.jsp', 6),
(6, 6, 'Post-Survey', 'postsurvey.jsp', 7),
(7, 7, 'Completion', 'completed.jsp', 8),
(8, 5, 'View Requirements', 'requirements.jsp', 6),
(9, 4, 'Group Creation', 'exec/groupassign.jsp', 5),
(10, 3, 'Creativity Survey', 'creativity.jsp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `testcase_history`
--

CREATE TABLE IF NOT EXISTS `testcase_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `context` varchar(500) NOT NULL,
  `stimuli` varchar(500) NOT NULL,
  `behavior` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `testcase_history`
--

INSERT INTO `testcase_history` (`id`, `pid`, `context`, `stimuli`, `behavior`, `created_at`) VALUES
(1, 2, 'Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 TestTest Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test', 'Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim ', 'Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test', '2016-07-04 18:20:51'),
(2, 2, 'Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 TestTest Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test', 'Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim Stim ', 'Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test', '2016-07-04 18:20:51'),
(3, 2, 'Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 TestTest Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test', 'New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim \r\n\r\nNew Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim ', 'Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test', '2016-07-04 18:20:51'),
(4, 2, 'Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 TestTest Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test', 'New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim \r\n\r\nNew Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim New Stim ', 'Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test Case 12345 Test', '2016-07-04 18:20:51'),
(5, 2, 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY', ' zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz   zzz  ', '2016-07-04 18:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `testcases`
--

CREATE TABLE IF NOT EXISTS `testcases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `context` varchar(500) NOT NULL,
  `stimuli` varchar(500) NOT NULL,
  `behavior` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `testcases`
--

INSERT INTO `testcases` (`id`, `rid`, `uid`, `gid`, `context`, `stimuli`, `behavior`, `created_at`, `published`) VALUES
(2, 2, 3, 1, 'Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla bla Bla ', 'Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hahaha Hah', 'Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nanana Nan', '2016-07-04 18:20:51', 1),
(3, 2, 3, 1, 'Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hell', 'Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 Stm2 ', 'Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello Wo', '2016-07-04 18:21:06', 1),
(4, 2, 20, 1, 'Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A ', 'Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A Test A ', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', '2016-07-27 14:01:13', 1),
(5, 2, 3, 1, 'jsgd jsgd jsgd jsgd jsgd q', 'jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd ', 'jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd jsgd ', '2016-07-30 15:58:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE IF NOT EXISTS `usergroups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `uid1` int(11) DEFAULT NULL,
  `uid2` int(11) DEFAULT NULL,
  `uid3` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 = empty, 2 = partial, 3 = full',
  PRIMARY KEY (`gid`),
  KEY `uid1` (`uid1`),
  KEY `uid2` (`uid2`),
  KEY `uid3` (`uid3`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`gid`, `type`, `uid1`, `uid2`, `uid3`, `description`, `status`) VALUES
(1, 1, 21, 22, 23, 'Nominal', 3),
(2, 1, 24, NULL, NULL, 'Nominal', 2),
(3, 1, NULL, NULL, NULL, 'Nominal', 1),
(4, 1, NULL, NULL, NULL, 'Nominal', 1),
(5, 1, NULL, NULL, NULL, 'Nominal', 1),
(6, 1, NULL, NULL, NULL, 'Nominal', 1),
(7, 1, NULL, NULL, NULL, 'Nominal', 1),
(8, 1, NULL, NULL, NULL, 'Nominal', 1),
(9, 1, NULL, NULL, NULL, 'Nominal', 1),
(10, 1, NULL, NULL, NULL, 'Nominal', 1),
(11, 1, NULL, NULL, NULL, 'Nominal', 1),
(12, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(13, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(14, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(15, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(16, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(17, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(18, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(19, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(20, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(21, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(22, 2, NULL, NULL, NULL, 'Non-interacting', 1),
(23, 3, NULL, NULL, NULL, 'Interacting', 1),
(24, 3, NULL, NULL, NULL, 'Interacting', 1),
(25, 3, NULL, NULL, NULL, 'Interacting', 1),
(26, 3, NULL, NULL, NULL, 'Interacting', 1),
(27, 3, NULL, NULL, NULL, 'Interacting', 1),
(28, 3, NULL, NULL, NULL, 'Interacting', 1),
(29, 3, NULL, NULL, NULL, 'Interacting', 1),
(30, 3, NULL, NULL, NULL, 'Interacting', 1),
(31, 3, NULL, NULL, NULL, 'Interacting', 1),
(32, 3, NULL, NULL, NULL, 'Interacting', 1),
(33, 3, NULL, NULL, NULL, 'Interacting', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL DEFAULT '0',
  `group_type` int(11) NOT NULL DEFAULT '1' COMMENT '1 = nominal, 2 = non-interactive, 3 = interacting',
  `mturk_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `completion` tinyint(4) NOT NULL COMMENT '0 = not completed, 1 = completed.',
  `personality` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '0 = new user, 1 = presurvey, 2 = personality, 3 = creativity, 10 = prereqs completed.',
  `completion_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gid`, `group_type`, `mturk_id`, `name`, `created_at`, `completion`, `personality`, `state`, `completion_code`) VALUES
(3, 1, 3, 'fazalul92', 'Muhammad Fazalul', '2016-06-26 05:02:51', 2, 0, 7, '3T7BRTP7LZ'),
(4, 1, 2, 'helloworld', 'Tis Hoik', '2016-07-05 04:05:19', 0, 0, 4, NULL),
(20, 1, 1, 'hellonew', 'Oim Jrjk', '2016-07-27 13:35:50', 0, 0, 2, NULL),
(21, 1, 1, 'hell', 'Ypfaim Aishuf', '2016-07-27 23:56:59', 0, 0, 4, NULL),
(22, 1, 1, 'hello', 'Vjssaik Oinn', '2016-07-28 17:16:07', 0, 0, 4, NULL),
(23, 1, 1, 'hello1', 'Xant Ist', '2016-07-28 17:27:46', 0, 0, 4, NULL),
(24, 1, 1, 'hello2', 'Ushoith Rout', '2016-07-28 17:44:51', 0, 0, 4, NULL),
(25, 0, 1, 'testneq', 'Topfab Aikeif', '2016-07-30 02:38:45', 0, 0, 1, NULL),
(26, 0, 1, 'test1', 'Flath Njf', '2016-07-30 15:28:06', 0, 0, 2, NULL),
(27, 0, 1, 'sndfksd"; ', 'Def Jint', '2016-07-30 16:21:40', 0, 0, 1, NULL),
(28, 0, 1, 'blabla', 'Kristofer Brown', '2016-08-01 00:19:08', 0, 0, 2, NULL),
(29, 0, 1, 'newpar', 'Participant', '2016-08-01 19:58:03', 0, 0, 1, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `creativity_responses`
--
ALTER TABLE `creativity_responses`
  ADD CONSTRAINT `creativity_responses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `creativity_responses_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `creativity_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personality_responses`
--
ALTER TABLE `personality_responses`
  ADD CONSTRAINT `personality_responses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personality_responses_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `personality_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `postsurvey_responses`
--
ALTER TABLE `postsurvey_responses`
  ADD CONSTRAINT `postsurvey_responses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postsurvey_responses_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `postsurvey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presurvey_responses`
--
ALTER TABLE `presurvey_responses`
  ADD CONSTRAINT `presurvey_responses_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `presurvey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presurvey_responses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD CONSTRAINT `usergroups_ibfk_1` FOREIGN KEY (`uid1`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `usergroups_ibfk_2` FOREIGN KEY (`uid2`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `usergroups_ibfk_3` FOREIGN KEY (`uid3`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
