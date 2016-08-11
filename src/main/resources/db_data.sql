-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2016 at 10:39 PM
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

--
-- Dumping data for table `mbtipersonality_questions`
--

INSERT INTO `mbtipersonality_questions` (`id`, `group_no`, `choice_no`, `type`, `description`) VALUES
(1, 1, 0, 'question', 'At a party do you:'),
(2, 1, 1, 'choice', ' Interact with many, including strangers'),
(3, 1, 2, 'choice', ' Interact with a few, known to you'),
(4, 2, 0, 'question', 'Are you more:'),
(5, 2, 1, 'choice', ' Realistic than speculative'),
(6, 2, 2, 'choice', ' Speculative than realistic'),
(7, 3, 0, 'question', 'Is it worse to:'),
(8, 3, 1, 'choice', ' Have your "head in the clouds"'),
(9, 3, 2, 'choice', ' Be "in a rut"'),
(10, 4, 0, 'question', 'Are you more impressed by:'),
(11, 4, 1, 'choice', ' Principles'),
(12, 4, 2, 'choice', ' Emotions'),
(13, 5, 0, 'question', 'Are more drawn toward the:'),
(14, 5, 1, 'choice', ' Convincing'),
(15, 5, 2, 'choice', ' Touching'),
(16, 6, 0, 'question', 'Do you prefer to work:'),
(17, 6, 1, 'choice', ' To deadlines'),
(18, 6, 2, 'choice', ' Just "whenever"'),
(19, 7, 0, 'question', 'Do you tend to choose:'),
(20, 7, 1, 'choice', ' Rather carefully'),
(21, 7, 2, 'choice', ' Somewhat impulsively'),
(22, 8, 0, 'question', 'At parties do you:'),
(23, 8, 1, 'choice', ' Stay late, with increasing energy'),
(24, 8, 2, 'choice', ' Leave early with decreased energy'),
(25, 9, 0, 'question', 'Are you more attracted to:'),
(26, 9, 1, 'choice', ' Sensible people'),
(27, 9, 2, 'choice', ' Imaginative people'),
(28, 10, 0, 'question', 'Are you more interested in:'),
(29, 10, 1, 'choice', ' What is actual'),
(30, 10, 2, 'choice', ' What is possible'),
(31, 11, 0, 'question', 'In judging others are you more swayed by:'),
(32, 11, 1, 'choice', ' Laws than circumstances'),
(33, 11, 2, 'choice', ' Circumstances than laws'),
(34, 12, 0, 'question', 'In approaching others is your inclination to be somewhat:'),
(35, 12, 1, 'choice', ' Objective'),
(36, 12, 2, 'choice', ' Personal'),
(37, 13, 0, 'question', 'Are you more:'),
(38, 13, 1, 'choice', ' Punctual'),
(39, 13, 2, 'choice', ' Leisurely'),
(40, 14, 0, 'question', 'Does it bother you more having things:'),
(41, 14, 1, 'choice', ' Incomplete'),
(42, 14, 2, 'choice', ' Completed'),
(43, 15, 0, 'question', 'In your social groups do you:'),
(44, 15, 1, 'choice', ' Keep abreast of other''s happenings'),
(45, 15, 2, 'choice', ' Get behind on the news'),
(46, 16, 0, 'question', 'In doing ordinary things are you more likely to:'),
(47, 16, 1, 'choice', ' Do it the usual way'),
(48, 16, 2, 'choice', ' Do it your own way'),
(49, 17, 0, 'question', 'Writers should:'),
(50, 17, 1, 'choice', ' "Say what they mean and mean what they say"'),
(51, 17, 2, 'choice', ' Express things more by use of analogy'),
(52, 18, 0, 'question', 'Which appeals to you more:'),
(53, 18, 1, 'choice', ' Consistency of thought'),
(54, 18, 2, 'choice', ' Harmonious human relationships'),
(55, 19, 0, 'question', 'Are you more comfortable in making:'),
(56, 19, 1, 'choice', ' Logical judgments'),
(57, 19, 2, 'choice', ' Value judgments'),
(58, 20, 0, 'question', 'Do you want things:'),
(59, 20, 1, 'choice', ' Settled and decided'),
(60, 20, 2, 'choice', ' Unsettled and undecided'),
(61, 21, 0, 'question', 'Would you say you are more:'),
(62, 21, 1, 'choice', ' Serious and determined'),
(63, 21, 2, 'choice', ' Easy-going'),
(64, 22, 0, 'question', 'In phoning do you:'),
(65, 22, 1, 'choice', ' Rarely question that it will all be said'),
(66, 22, 2, 'choice', ' Rehearse what you''ll say'),
(67, 23, 0, 'question', 'Facts:'),
(68, 23, 1, 'choice', ' "Speak for themselves"'),
(69, 23, 2, 'choice', ' Illustrate principles'),
(70, 24, 0, 'question', 'Are visionaries:'),
(71, 24, 1, 'choice', ' somewhat annoying'),
(72, 24, 2, 'choice', ' rather fascinating'),
(73, 25, 0, 'question', 'Are you more often:'),
(74, 25, 1, 'choice', ' a cool-headed person'),
(75, 25, 2, 'choice', ' a warm-hearted person'),
(76, 26, 0, 'question', 'Is it worse to be:'),
(77, 26, 1, 'choice', ' unjust'),
(78, 26, 2, 'choice', ' merciless '),
(79, 27, 0, 'question', 'Should one usually let events occur:'),
(80, 27, 1, 'choice', ' by careful selection and choice'),
(81, 27, 2, 'choice', ' randomly and by chance'),
(82, 28, 0, 'question', 'Do you feel better about:'),
(83, 28, 1, 'choice', ' having purchased'),
(84, 28, 2, 'choice', ' having the option to buy'),
(85, 29, 0, 'question', 'In company do you:'),
(86, 29, 1, 'choice', ' initiate conversation'),
(87, 29, 2, 'choice', ' wait to be approached'),
(88, 30, 0, 'question', 'Common sense is:'),
(89, 30, 1, 'choice', ' rarely questionable'),
(90, 30, 2, 'choice', ' frequently questionable'),
(91, 31, 0, 'question', 'Children often do not:'),
(92, 31, 1, 'choice', ' make themselves useful enough'),
(93, 31, 2, 'choice', ' exercise their fantasy enough'),
(94, 32, 0, 'question', 'In making decisions do you feel more comfortable with:'),
(95, 32, 1, 'choice', ' standards'),
(96, 32, 2, 'choice', ' feelings'),
(97, 33, 0, 'question', 'Are you more:'),
(98, 33, 1, 'choice', ' firm than gentle'),
(99, 33, 2, 'choice', ' gentle than firm'),
(100, 34, 0, 'question', 'Which is more admirable:'),
(101, 34, 1, 'choice', ' the ability to organize and be methodical'),
(102, 34, 2, 'choice', ' the ability to adapt and make do'),
(103, 35, 0, 'question', 'Do you put more value on:'),
(104, 35, 1, 'choice', ' infinite'),
(105, 35, 2, 'choice', ' open-minded'),
(106, 36, 0, 'question', 'Does new and non-routine interaction with others:'),
(107, 36, 1, 'choice', ' stimulate and energize you'),
(108, 36, 2, 'choice', ' tax your reserves'),
(109, 37, 0, 'question', 'Are you more frequently:'),
(110, 37, 1, 'choice', ' a practical sort of person'),
(111, 37, 2, 'choice', ' a fanciful sort of person'),
(112, 38, 0, 'question', 'Are you more likely to:'),
(113, 38, 1, 'choice', ' see how others are useful'),
(114, 38, 2, 'choice', ' see how others see'),
(115, 39, 0, 'question', 'Which is more satisfying:'),
(116, 39, 1, 'choice', ' to discuss an issue thoroughly'),
(117, 39, 2, 'choice', ' to arrive at agreement on an issue'),
(118, 40, 0, 'question', 'Which rules you more:'),
(119, 40, 1, 'choice', ' your head'),
(120, 40, 2, 'choice', ' your heart '),
(121, 41, 0, 'question', 'Are you more comfortable with work that is:'),
(122, 41, 1, 'choice', ' contracted'),
(123, 41, 2, 'choice', ' done on a casual basis'),
(124, 42, 0, 'question', 'Do you tend to look for:'),
(125, 42, 1, 'choice', ' the orderly'),
(126, 42, 2, 'choice', ' whatever turns up'),
(127, 43, 0, 'question', 'Do you prefer:'),
(128, 43, 1, 'choice', ' many friends with brief contact'),
(129, 43, 2, 'choice', ' a few friends with more lengthy contact'),
(130, 44, 0, 'question', 'Do you go more by:'),
(131, 44, 1, 'choice', ' facts'),
(132, 44, 2, 'choice', ' principles'),
(133, 45, 0, 'question', 'Are you more interested in:'),
(134, 45, 1, 'choice', ' production and distribution'),
(135, 45, 2, 'choice', ' design and research'),
(136, 46, 0, 'question', 'Which is more of a compliment:'),
(137, 46, 1, 'choice', ' "There is a very logical person."'),
(138, 46, 2, 'choice', ' "There is a very sentimental person."'),
(139, 47, 0, 'question', 'Do you value in yourself more that you are:'),
(140, 47, 1, 'choice', ' unwavering'),
(141, 47, 2, 'choice', ' devoted'),
(142, 48, 0, 'question', 'Do you more often prefer the'),
(143, 48, 1, 'choice', ' final and unalterable statement'),
(144, 48, 2, 'choice', ' tentative and preliminary statement'),
(145, 49, 0, 'question', 'Are you more comfortable:'),
(146, 49, 1, 'choice', ' after a decision'),
(147, 49, 2, 'choice', ' before a decision'),
(148, 50, 0, 'question', 'Do you:'),
(149, 50, 1, 'choice', ' speak easily and at length with strangers'),
(150, 50, 2, 'choice', ' find little to say to strangers'),
(151, 51, 0, 'question', 'Are you more likely to trust your:'),
(152, 51, 1, 'choice', ' experience'),
(153, 51, 2, 'choice', ' hunch'),
(154, 52, 0, 'question', 'Do you feel:'),
(155, 52, 1, 'choice', ' more practical than ingenious'),
(156, 52, 2, 'choice', ' more ingenious than practical'),
(157, 53, 0, 'question', 'Which person is more to be complimented - one of:'),
(158, 53, 1, 'choice', ' clear reason'),
(159, 53, 2, 'choice', ' strong feeling '),
(160, 54, 0, 'question', 'Are you inclined more to be:'),
(161, 54, 1, 'choice', ' fair-minded'),
(162, 54, 2, 'choice', ' sympathetic'),
(163, 55, 0, 'question', 'Is it preferable mostly to:'),
(164, 55, 1, 'choice', ' make sure things are arranged'),
(165, 55, 2, 'choice', ' just let things happen'),
(166, 56, 0, 'question', 'In relationships should most things be:'),
(167, 56, 1, 'choice', ' re-negotiable'),
(168, 56, 2, 'choice', ' random and circumstantial'),
(169, 57, 0, 'question', 'When the phone rings do you:'),
(170, 57, 1, 'choice', ' hasten to get to it first'),
(171, 57, 2, 'choice', ' hope someone else will answer'),
(172, 58, 0, 'question', 'Do you prize more in yourself:'),
(173, 58, 1, 'choice', ' a strong sense of reality'),
(174, 58, 2, 'choice', ' a vivid imagination'),
(175, 59, 0, 'question', 'Are you drawn more to:'),
(176, 59, 1, 'choice', ' fundamentals'),
(177, 59, 2, 'choice', ' overtones'),
(178, 60, 0, 'question', 'Which seems the greater error:'),
(179, 60, 1, 'choice', ' to be too passionate'),
(180, 60, 2, 'choice', ' to be too objective'),
(181, 61, 0, 'question', 'Do you see yourself as basically:'),
(182, 61, 1, 'choice', ' hard-headed'),
(183, 61, 2, 'choice', ' soft-hearted'),
(184, 62, 0, 'question', 'Which situation appeals to you more:'),
(185, 62, 1, 'choice', ' the structured and scheduled'),
(186, 62, 2, 'choice', ' the unstructured and unscheduled '),
(187, 63, 0, 'question', 'Are you a person that is more:'),
(188, 63, 1, 'choice', ' routinized than whimsical'),
(189, 63, 2, 'choice', ' whimsical than routinized'),
(190, 64, 0, 'question', 'Are you more inclined to be:'),
(191, 64, 1, 'choice', ' easy to approach'),
(192, 64, 2, 'choice', ' somewhat reserved'),
(193, 65, 0, 'question', 'In writings do you prefer:'),
(194, 65, 1, 'choice', ' the more literal'),
(195, 65, 2, 'choice', ' the more figurative'),
(196, 66, 0, 'question', 'Is it harder for you to:'),
(197, 66, 1, 'choice', ' identify with others'),
(198, 66, 2, 'choice', ' utilize others'),
(199, 67, 0, 'question', 'Which do you wish more for yourself:'),
(200, 67, 1, 'choice', ' clarity of reason'),
(201, 67, 2, 'choice', ' strength of compassion'),
(202, 68, 0, 'question', 'Which is the greater fault:'),
(203, 68, 1, 'choice', ' being indiscriminate'),
(204, 68, 2, 'choice', ' being critical'),
(205, 69, 0, 'question', 'Do you prefer the:'),
(206, 69, 1, 'choice', ' planned event'),
(207, 69, 2, 'choice', ' unplanned event'),
(208, 70, 0, 'question', 'Do you tend to be more:'),
(209, 70, 1, 'choice', ' deliberate than spontaneous'),
(210, 70, 2, 'choice', ' spontaneous than deliberate');

--
-- Dumping data for table `personality_questions`
--

INSERT INTO `personality_questions` (`id`, `description`) VALUES
(1, 'I am the life of the party'),
(2, 'I sympathize with others'' feelings'),
(3, 'I get chores done right away'),
(4, 'I have frequent mood swings'),
(5, 'I have a vivid imagination'),
(6, 'I don''t talk a lot'),
(7, 'I am not interested in other people''s problems'),
(8, 'I often forget to put things back in their proper place'),
(9, 'I am relaxed most of the time'),
(10, 'I am not interested in abstract ideas'),
(11, 'I talk to a lot of different people at parties'),
(12, 'I feel others'' emotions'),
(13, 'I like order'),
(14, 'I get upset easily'),
(15, 'I have difficulty understanding abstract ideas'),
(16, 'I keep in the background'),
(17, 'I am not really interested in others'),
(18, 'I make a mess of things'),
(19, 'I seldom feel blue'),
(20, 'I do not have a good imagination');

--
-- Dumping data for table `postsurvey_questions`
--

INSERT INTO `postsurvey_questions` (`id`, `user_group_type`, `description`, `question_type`, `answer_choices`, `required`) VALUES
(1, 0, 'How long did the main tasks (excluding pre and post surveys) take? Please count only the actual time you spent on the task, not the intermittent time you might have spent on other tasks.', 'text', 'duration in hours:minutes, e.g., 00:30 for thirty minutes', 1),
(2, 0, 'How do you rate the difficulty of main tasks?', 'multiple_choice', 'Very easy|Easy|Medium|High|Very high', 1),
(3, 0, 'Indicate the extent which the following phrases describe you experience with the main task (generating test scenarios) on a scale of 1 (strongly disagree) to 5 (strongly agree)', 'description', 'description', 0),
(4, 0, 'I enjoyed the task of generating test scenarios', 'multiple_choice_radio', '1|2|3|4|5', 1),
(5, 0, 'I found the task of generating test scenarios boring', 'multiple_choice_radio', '1|2|3|4|5', 1),
(6, 0, 'I am confident that the test scenarios I generated will be useful', 'multiple_choice_radio', '1|2|3|4|5', 1),
(7, 0, 'I am anxious that the test scenariosI generated may not be useful', 'multiple_choice_radio', '1|2|3|4|5', 1),
(8, 2, 'The test scenarios my team members produced inspired me', 'multiple_choice_radio', '1|2|3|4|5', 1),
(9, 2, 'I believe that the test scenarios I produced inspired my team members', 'multiple_choice_radio', '1|2|3|4|5', 1),
(10, 3, 'My team members answered my questions', 'multiple_choice_radio', '1|2|3|4|5', 1),
(11, 3, 'My team members provided helpful comments', 'multiple_choice_radio', '1|2|3|4|5', 1),
(12, 0, 'Please provide any additional comments you have below', 'text', 'Optional comments', 0);

--
-- Dumping data for table `presurvey_questions`
--

INSERT INTO `presurvey_questions` (`id`, `description`, `question_type`, `answer_choices`, `required`) VALUES
(1, 'What is your gender?', 'multiple_choice_radio', 'Male|Female|Other', 1),
(2, 'Which of the following categories includes your age?', 'multiple_choice_radio', '18 to 24|25 to 34|35 to 45|45 to 54|55 or older', 1),
(3, 'What is the highest level of school you have completed or the highest degree you have received?', 'multiple_choice', 'Less than high school degree|High school degree or equivalent (e.g., GED)|Some college but no degree|Bachelor degree|Graduate degree', 1),
(4, 'If you went to college, what was your major?', 'text', 'For example, computer science, mechanical engineering, psychology, music, law, etc.', 0),
(5, 'Have you worked for a technology company?', 'multiple_choice', 'No|Yes; for less than a year|Yes; for one to five years|Yes; for more than five years', 1),
(6, 'How do you rate your familiarity of concepts related to Computer Science, Information Techonology, and Software Engineering?', 'multiple_choice_radio', 'Very low|Low|Medium|High|Very high', 1),
(7, 'How do you rate your familiarity of concepts related to Smart Homes, Smart Cities, and Internet of Things?', 'multiple_choice_radio', 'Very low|Low|Medium|High|Very high', 1),
(8, 'Do you use any Smart Home technologies at your home?', 'multiple_choice_radio', 'Yes|No|Not sure', 1),
(9, 'Please use the text box if you need to clarify any of your answers above', 'text', 'Optional clarifications', 0);

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `seq_no`, `title`, `filename`, `next_seq`) VALUES
(1, 1, 'Presurvey 1', 'presurvey.jsp', 2),
(2, 2, 'PreSurvey 2', 'persona.jsp', 3),
(3, 3, 'PreSurvey 3', 'creativity.jsp', 4),
(4, 4, 'Group Creation', 'exec/groupassign.jsp', 5),
(5, 5, 'Main Instructions', 'debrief.jsp', 6),
(6, 5, 'View Requirements', 'requirements.jsp', 6),
(7, 6, 'Post-Survey', 'postsurvey.jsp', 7),
(8, 7, 'Completion', 'completed.jsp', 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

INSERT INTO `requirements` (`description`, `created_at`) VALUES
('If there is no movement or noise in a room for a preconfigured time, the smart home should automatically fade off the lights in that room, so as to save energy.', NOW()),
('If a person walks into a dark room, the smart home should automatically turn on the lights in that room, so as to enhance convenience and safety.', NOW()),
('If there is movement outside home when it is dark outside, the smart home should automatically turn on some lights, so that potential intruders are scared off.', NOW()),
('A smart home should optimize the lighting (e.g., brightness and color) in a room based on the activity of the users in that room, so as to enhance user experience (assume that the desired lighting for an activity is preconfigured, e.g., dim lighting for watching TV).', NOW());

INSERT INTO `usergroups` (`type`, `uid1`, `uid2`, `uid3`, `description`, `status`) VALUES
(1, NULL, NULL, NULL, 'Nominal', 2),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1),
(1, NULL, NULL, NULL, 'Nominal', 1),
(2, NULL, NULL, NULL, 'Non-interacting', 1),
(3, NULL, NULL, NULL, 'Interacting', 1);
