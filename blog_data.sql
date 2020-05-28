-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2020 at 08:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'java'),
(2, 'php'),
(3, 'html'),
(4, 'css'),
(7, 'Health'),
(8, 'Sport'),
(9, 'Bootstrap'),
(10, 'tangila');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(16, 'jafor', 'ali', 'jafor@gmail.com', 'About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go.....', 0, '2019-05-26 10:00:27'),
(14, 'Nurzahan', 'Begum', 'nurzahan@gmail.com', 'Bangladesh TeamAbout us..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be....', 1, '2019-04-30 13:10:17'),
(15, 'Selim', 'Swadhin', 'selimrezaswadhim@gmail.com', 'About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.', 2, '2019-05-02 16:06:03'),
(5, 'Zannatul Ferdous', 'Bonna', 'zannatulferdousbonna@gmail.com', 'Dnc police.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.\r\n\r\nAbout me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.', 0, '2019-04-29 01:49:14'),
(6, 'Anowar', 'Hossain', 'anowar@gmail.com', 'Bangladesh TeamAbout us..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be.', 1, '2019-04-30 09:21:42'),
(12, 'Popy', 'Akhter', 'popy@gmail.com', 'Bangladesh TeamAbout us..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be....', 2, '2019-04-30 11:51:20'),
(13, 'Nurzahan', 'Begum', 'nurzahan@gmail.com', 'Bangladesh TeamAbout us..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be....', 0, '2019-04-30 11:51:56'),
(11, 'Selim', 'Swadhin', 'selimrezaswadhim@gmail.com', 'Bangladesh TeamAbout us..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be', 1, '2019-04-30 11:00:57'),
(10, 'Anowar', 'Hossain', 'anowar@gmail.com', 'Bangladesh TeamAbout us..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be', 2, '2019-04-30 11:00:34'),
(17, 'Moushumi Akhter', 'Popy', 'popyakhter@gmail.com', 'This is my creative page here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some\r\n This is my creative page here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some', 0, '2019-05-31 13:22:28'),
(18, 'hello', 'swadhin', 'selimrezaswadhin@gmail.com', 'I am test massage in live server.', 0, '2020-02-24 09:32:37'),
(19, 'Barbara', 'Atyson', 'barbaratysonhw@yahoo.com', 'Hi,\r\n\r\nWe would like to introduce to you our explainer video service which we feel can benefit your site selimrezaswadhin.com.\r\n\r\nCheck out a couple of our video examples here:\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\nhttps://www.youtube.com/watch?v=Ut6Wq3cjRys\r\n\r\nThey can show a solution to a problem (such as your product or service), are concise, can be uploaded to video sites like Youtube, and can be embedded into your website or featured on single landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n0-1 minutes = $149\r\n1-2 minutes = $269\r\n2-3 minutes = $399\r\n\r\n*All prices include a custom video, full script and a voice-over.\r\n\r\nIf this is something you would like to discuss further, do not hesitate to get in touch.\r\nIf you are not interested, simply delete this message and you will not be contacted again.\r\n\r\nKind Regards,\r\nBarbara', 0, '2020-03-21 13:26:22'),
(20, 'Lashawn', 'Warden', 'warden.lashawn@outlook.com', 'Hi,\r\n\r\nWe\'re wondering if you\'ve ever considered taking the content from selimrezaswadhin.com and converting it into videos to promote on Youtube using Content Samurai? You simply add the text and it converts it into scenes that make up a full video. No special skills are needed, and there\'s access to over 1 million images/clips that can be used.\r\n\r\nYou can read more about the software here: https://turntextintovideo.com - there\'s also a link to a totally free guide called the \'Youtube SEO Cheat Sheet\', full of fantastic advice on how to help your site rank higher in Youtube and in Google.\r\n\r\nKind Regards,\r\nLashawn', 0, '2020-03-25 21:41:37'),
(21, 'Claudia', 'Clement', 'claudiauclement@yahoo.com', 'Hi, We are wondering if you would be interested in our service, where we can provide you with a dofollow link from Amazon (DA 96) back to selimrezaswadhin.com?\r\n\r\nThe price is just $67 per link, via Paypal.\r\n\r\nTo explain what DA is and the benefit for your website, along with a sample of an existing link, please read here: https://textuploader.com/16bnu\r\n\r\nIf you\'d be interested in learning more, reply to this email but please make sure you include the word INTERESTED in the subject line field, so we can get to your reply sooner.\r\n\r\nKind Regards,\r\nClaudia', 0, '2020-04-11 03:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `node` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `node`) VALUES
(1, 'Copyright By Selim Reza Swadhin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>About Us.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>'),
(8, 'Privacy ', '<p>About Us.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About Us.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>'),
(9, 'Policy', '<p>About Us.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About Us.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>'),
(10, 'Success', '<p>About Us.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About Us.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `description`, `date`, `userid`) VALUES
(13, 3, 'Hello World Bangladesh', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/d4af229dd0.jpg', 'Hasan', 'shakib', '', '2019-04-26 15:17:59', 0),
(2, 8, 'Cricket Mashrafi', '<p>Bangladesh TeamAbout us..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/56ad9cd109.jpg', 'Mashrafi', 'Cricket Team', '', '2019-04-26 04:20:29', 0),
(3, 7, 'Our health post will be go here', '<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here</p>', 'upload/4c90c445bb.jpg', 'selimreza', 'health', '', '2019-04-26 09:27:37', 0),
(4, 1, 'our java project is very nice', '<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here</p>', 'upload/c27075d87a.jpg', 'Hamidul Alam n', 'html css', '', '2019-04-26 09:28:29', 0),
(5, 7, 'Education', '<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here</p>', 'upload/3f1dc2c249.jpg', 'Doctors', 'health', 'be go here.Some text will be go here.Some text will', '2019-04-26 09:29:43', 0),
(10, 10, 'Good Bangladesh', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/55bf3532cb.jpg', 'Koushikh', 'Love', '', '2019-04-26 15:13:05', 0),
(14, 3, 'Exam', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/122ff85c32.jpg', 'nur', 'swad', 'About me..Some text will be go here. Some text will be go here', '2019-04-26 15:42:39', 2),
(11, 4, 'Hello World', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/cb191e427f.jpg', 'Hello', 'hello', '', '2019-04-26 15:14:38', 0),
(12, 2, 'selim', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/ad1ebe697f.jpg', 'edit', 'editot', 'This is my creative page here.Some text will be go', '2019-04-26 15:16:35', 1),
(15, 3, '123', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/1df5f0880f.jpg', '121', 'java, Java coding, spring', '', '2019-04-26 15:43:33', 0),
(16, 7, '345', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/4a57705d28.jpg', '333', 'education, result, ssc', '', '2019-04-26 15:44:02', 0),
(17, 1, '789', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/c087f37bd6.jpg', '000', '890', '', '2019-04-26 15:44:58', 0),
(18, 4, 'This is my creative page', '<p>&nbsp;This is my creative page here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/d8b95be9ff.jpg', 'Bappi Ashraf Dopur', 'Sports, Cricket, Fotbool, hocky', ' This is my creative page here.Some text will be', '2019-04-30 14:33:15', 2),
(19, 10, 'Admin panel problem', '<p><span>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span><span>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span></p>', 'upload/b55bc54f62.jpg', '2', 'Admin panel problem', 'Admin panel problem no solution', '2019-05-02 07:35:38', 1),
(20, 1, 'Hello World Bangladesh', '<p><span>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span></p>\r\n<p><span>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span></p>', 'upload/1127d97d44.jpg', 'author', 'wow, java, php', 'be go here.Some text will be go here.Some text will', '2019-05-02 12:19:23', 1),
(21, 4, 'Abdul Hai', '<p>here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'upload/12c69f333f.jpg', 'author', 'Some text will be go here.', 'Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.', '2019-06-17 08:29:44', 1),
(22, 4, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶', '<p>à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à¦² à¦­à¦¾à¦² à¦¦à§‡à¦¶&nbsp;<span>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span><span>About me..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span></p>', 'upload/c7b8e8760e.jpg', 'admin', 'à¦¹à§‡à¦²à§à¦² à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶', 'à¦¹à§‡à¦²à§à¦² à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à§‡à¦²à§à¦² à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¹à§‡à¦²à§à¦² à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶', '2020-02-17 14:09:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(8, 'Hello Bangladesh', 'upload/slider/e0cd20cf05.jpg'),
(2, 'Second Slider Title will be here', 'upload/slider/81c2919561.jpg'),
(3, 'Third Slider Title will be here', 'upload/slider/a583c36582.jpg'),
(7, 'Good Morning Evrybody', 'upload/slider/1fb198c1b8.jpg'),
(11, 'This is my creative page', 'upload/slider/64bd2309db.jpg'),
(9, 'Good Morning Evrybody', 'upload/slider/3ca6f73929.png'),
(10, 'River in Bangladesh', 'upload/slider/471f394975.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slogan`
--

CREATE TABLE `tbl_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slogan`
--

INSERT INTO `tbl_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'à¦¸à§‡à¦²à¦¿à¦® à¦°à§‡à¦œà¦¾ à¦¸à§à¦¬à¦¾à¦§à§€à¦¨', 'Our Site Is Best For Public Blog', 'upload/image.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `ins` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL,
  `git` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `ins`, `tw`, `ln`, `gp`, `git`) VALUES
(1, 'https://web.facebook.com/mdselim.swadhin', 'https://www.instagram.com/Selim Reza Swadhin', 'https://www.twitter.com/Selim Reza Swadhin', 'https://www.linkedin.com/Selim Reza Swadhin', 'https://www.google.com/Selim Reza Swadhin', 'https://github.com/Selim-Reza-Swadhin/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `image`, `details`, `role`) VALUES
(1, 'Admin', 'admin', '202cb962ac59075b964b07152d234b70', 'admin@gmail.com', 'upload\\4a57705d28.jpg', '<p>I am admin from bangladesh&nbsp;I am admin from bangladesh&nbsp;I am admin from bangladesh</p>', 0),
(4, 'Zannatul Ferdous Bonna', 'author', 'ec3c18b78d7449106497d26fb6970c9d', 'zannat@gmail.com', 'upload\\3f1dc2c249.jpg', 'author', 1),
(10, 'Selim Reza Swadhin', 'editor', '7adf5f4c1cd68b5689f8e00e52dc5497', 'selimrezaswadhim@gmail.com', 'upload\\12c69f333f.jpg', 'I wanted Editor Your Blog Page.', 2),
(11, 'Popy Akhter', 'popy', '202cb962ac59075b964b07152d234b70', 'popyakhter@gmail.com', '', 'I wanted Text Your Blog', 0),
(12, 'Selim Reza Swadhin', 'Delower', '827ccb0eea8a706c4c34a16891f84e7b', 'selimrezaswadhmim@gmail.com', '', 'admin too', 0),
(13, 'hamidul islam', 'hamid', '71d48abd09f6d07662a5e0f5678d660c', 'hammid@gmail.com', '', 'wow', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slogan`
--
ALTER TABLE `tbl_slogan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_slogan`
--
ALTER TABLE `tbl_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
