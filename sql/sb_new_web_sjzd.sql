-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 11:42 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sb_new_web_sjzd`
--

-- --------------------------------------------------------

--
-- Table structure for table `mirrormx_customer_chat_data`
--

CREATE TABLE `mirrormx_customer_chat_data` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mirrormx_customer_chat_message`
--

CREATE TABLE `mirrormx_customer_chat_message` (
  `id` bigint(20) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `talk_id` bigint(20) NOT NULL,
  `is_new` char(1) NOT NULL DEFAULT 'y',
  `from_user_info` text NOT NULL,
  `to_user_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mirrormx_customer_chat_user`
--

CREATE TABLE `mirrormx_customer_chat_user` (
  `id` bigint(20) NOT NULL,
  `name` char(32) NOT NULL,
  `mail` char(64) NOT NULL,
  `password` char(255) NOT NULL,
  `image` char(255) DEFAULT NULL,
  `info` text,
  `roles` char(128) DEFAULT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_blog_comment`
--

CREATE TABLE `sjzd_blog_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_blog_post`
--

CREATE TABLE `sjzd_blog_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `date` datetime DEFAULT NULL,
  `modified` datetime NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment_status` tinyint(1) NOT NULL DEFAULT '0',
  `comment_count` int(11) NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_blog_post`
--

INSERT INTO `sjzd_blog_post` (`id`, `user_id`, `slug`, `title`, `status`, `date`, `modified`, `content`, `excerpt`, `comment_status`, `comment_count`, `data`, `roles`) VALUES
(1, 1, 'hello-world', '欢迎来到师姐知道', 2, '2017-11-14 21:29:27', '2017-11-28 00:01:40', '<p>欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道欢迎来到师姐知道</p>', '<p>欢迎来到师姐知道</p>', 1, 0, '{\"title\":null,\"markdown\":true,\"image\":{\"src\":\"\",\"alt\":\"\"}}', NULL),
(2, 1, '第二篇消息', '第二篇消息', 2, '2017-11-28 00:01:56', '2017-11-28 00:03:25', '<p>第二篇消息第二篇消息第二篇消息第二篇消息第二篇消息</p>', '<p>第二篇消息</p>', 1, 0, '{\"title\":null,\"markdown\":true,\"image\":{\"src\":\"\",\"alt\":\"\"}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_calendar_categories`
--

CREATE TABLE `sjzd_calendar_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#f00',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_calendar_categories`
--

INSERT INTO `sjzd_calendar_categories` (`id`, `name`, `color`, `data`, `author_id`) VALUES
(1, 'Teach kid (Jonny Jiang for maths)', '#489be0', '[]', 1),
(2, 'Teach kid (Nana Lin for Chinese)', '#489be0', '[]', 1),
(3, 'Teach kid Jon Snow for English', '#3deb71', '[]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_calendar_events`
--

CREATE TABLE `sjzd_calendar_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `allDay` tinyint(1) DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_calendar_events`
--

INSERT INTO `sjzd_calendar_events` (`id`, `title`, `description`, `start`, `end`, `allDay`, `data`, `author_id`, `category_id`) VALUES
(1, 'Homework 1', '', '2017-11-03 20:00:00', '2017-11-03 21:00:00', NULL, '[]', 1, 1),
(2, 'Help with quiz 1', '', '2017-11-14 21:00:00', '2017-11-14 22:00:00', NULL, '[]', 1, 2),
(3, 'Homework 2', '', '2017-11-08 22:00:00', '2017-11-08 23:00:00', NULL, '[]', 1, 1),
(4, 'Friday afternoon English Writing class', '', '2017-11-17 23:00:00', '2017-11-18 00:00:00', NULL, '[]', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_formmaker_field`
--

CREATE TABLE `sjzd_formmaker_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_formmaker_field`
--

INSERT INTO `sjzd_formmaker_field` (`id`, `form_id`, `priority`, `type`, `label`, `slug`, `options`, `roles`, `data`) VALUES
(1, 1, 1, 'radio', '是否解决了您的问题？', 'solved', '[{\"value\":\"yes\",\"text\":\"Yes \\u662f\",\"attachValue\":false,\"invalid\":false},{\"value\":\"no\",\"text\":\"No \\u5426\",\"attachValue\":true,\"invalid\":false}]', '1,5', '{\"value\":\"yes\",\"data\":[],\"classSfx\":\"feedback\",\"help_text\":\"\",\"help_show\":\"tooltip_icon\",\"hasOptions\":1,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null,\"hide_label\":false}'),
(5, 2, 4, 'upload', '请上传您的学生证', '请上传您的学生证', '[]', NULL, '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"path\":\"uploads\",\"allowed\":[\"png\",\"jpg\",\"jpeg\",\"gif\",\"svg\"],\"max_size\":4,\"max_files\":0,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null}'),
(7, 3, 6, 'text', '信息栏', '信息栏', '[]', NULL, '{\"value\":[\"\"],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u8bf7\\u5728\\u5b89\\u88c5zoom\\u540e\\uff0c\\u5c06\\u94fe\\u63a5\\u590d\\u5236\\u7c98\\u8d34\\u5230\\u8fd9\\u91cc\",\"help_show\":\"block\",\"hasOptions\":0,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":true}'),
(8, 2, 2, 'textbox', '您的自我简介', '您的自我简介', '[]', NULL, '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"minLength\":0,\"maxLength\":0,\"rows\":4,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":0}'),
(10, 2, 0, 'text', '您的姓名', '您的姓名', '[]', NULL, '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":true}'),
(11, 2, 1, 'textbox', '您所在的院校', '您所在的院校', '[]', NULL, '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"minLength\":0,\"maxLength\":0,\"rows\":4,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null}'),
(12, 2, 5, 'pulldown', '您的最高学历', '您的最高学历-2', '[{\"value\":\"undergraduate\",\"text\":\"Undergraduate \\u672c\\u79d1\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"undergraduate_completed\",\"text\":\"Undergraduate Completed \\u672c\\u79d1\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false},{\"value\":\"masters\",\"text\":\"Masters \\u7855\\u58eb\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"masters_completed\",\"text\":\"Masters Completed \\u7855\\u58eb\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false},{\"value\":\"doctorate\",\"text\":\"Doctorate \\u535a\\u58eb\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"doctorate_completed\",\"text\":\"Doctorate Completed \\u535a\\u58eb\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false}]', NULL, '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386\",\"help_show\":\"\",\"hasOptions\":1,\"size\":1,\"placeholder\":\"\",\"controls\":null,\"repeatable\":null}'),
(13, 2, 3, 'email', '您的邮箱', '您的邮箱', '[]', NULL, '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"help_show\":\"\",\"hasOptions\":0,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":true}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_formmaker_form`
--

CREATE TABLE `sjzd_formmaker_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_formmaker_form`
--

INSERT INTO `sjzd_formmaker_form` (`id`, `status`, `title`, `slug`, `data`) VALUES
(1, 1, '用户反馈表', 'feed-back', '{\"value\":\"\",\"classSfx\":\"quiz-over-video\",\"user_email_field\":false,\"submitEmail\":\"\",\"email_subject\":\"Thank you for your submission\",\"thankyou_markdown\":true,\"email_body_markdown\":true,\"afterSubmit\":\"thankyou\",\"submitButton\":\"\\u53d1\\u5e03\",\"formStyle\":\"uk-form-stacked\",\"recaptcha_theme\":\"\",\"recaptcha_type\":\"\",\"recaptcha_size\":\"\",\"thankyou\":\"<p><a href=\\\"#\\\"><button class=\\\"uk-button uk-button-primary\\\">\\u7ee7\\u7eed\\u63d0\\u95ee<\\/button><\\/a><\\/p>\"}'),
(2, 1, '成为师兄师姐', 'become-seniors1', '{\"value\":\"\",\"classSfx\":\"quiz-over-video\",\"user_email_field\":false,\"submitEmail\":\"\",\"email_subject\":\"Thank you for your submission\",\"thankyou_markdown\":true,\"email_body_markdown\":true,\"afterSubmit\":\"thankyou\",\"submitButton\":\"\\u53d1\\u5e03\",\"formStyle\":\"uk-form-stacked\",\"recaptcha_theme\":\"\",\"recaptcha_type\":\"\",\"recaptcha_size\":\"\",\"hide_title\":true,\"thankyou\":\"<p>\\u611f\\u8c22\\u60a8\\u7684\\u63d0\\u4ea4\\uff01<\\/p>\\n<p>\\u5ba1\\u6838\\u901a\\u8fc7\\u540e\\uff0c\\u4f1a\\u6709\\u5de5\\u4f5c\\u4eba\\u5458\\u8054\\u7cfb\\u60a8\\u3002\\u8bf7\\u6ce8\\u610f\\u67e5\\u6536\\u90ae\\u4ef6\\uff01<\\/p>\"}'),
(3, 1, '安装zoom', 'become-seniors2', '{\"value\":\"\",\"classSfx\":\"quiz-over-video\",\"user_email_field\":false,\"submitEmail\":\"\",\"email_subject\":\"Thank you for your submission\",\"thankyou_markdown\":true,\"email_body_markdown\":true,\"afterSubmit\":\"thankyou\",\"submitButton\":\"\\u63d0\\u4ea4\",\"formStyle\":\"uk-form-stacked\",\"recaptcha_theme\":\"\",\"recaptcha_type\":\"\",\"recaptcha_size\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_formmaker_submission`
--

CREATE TABLE `sjzd_formmaker_submission` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_formmaker_submission`
--

INSERT INTO `sjzd_formmaker_submission` (`id`, `status`, `form_id`, `email`, `ip`, `created`, `data`) VALUES
(9, 1, 3, '', '::1', '2017-11-22 17:18:30', '{\"\\u4fe1\\u606f\\u680f\":{\"field\":{\"id\":7,\"form_id\":3,\"priority\":6,\"type\":\"text\",\"label\":\"\\u4fe1\\u606f\\u680f\",\"slug\":\"\\u4fe1\\u606f\\u680f\",\"options\":[],\"data\":{\"value\":[\"\"],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u8bf7\\u5728\\u5b89\\u88c5zoom\\u540e\\uff0c\\u5c06\\u94fe\\u63a5\\u590d\\u5236\\u7c98\\u8d34\\u5230\\u8fd9\\u91cc\",\"help_show\":\"block\",\"hasOptions\":0,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":true},\"roles\":[],\"value\":[\"\"],\"valuedata\":{\"data0\":{\"value\":\"\"}},\"formatted\":[\"\"]},\"slug\":\"\\u4fe1\\u606f\\u680f\",\"type\":{\"id\":\"text\",\"label\":\"Textfield\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"placeholder\":\"type your answer\"},\"label\":\"\\u4fe1\\u606f\\u680f\",\"value\":[\"https:\\/\\/zoom.us\\/j\\/9100221569\"],\"formatted\":[\"\"],\"data\":{\"data0\":{\"value\":\"\"}},\"field_id\":7}}'),
(10, 1, 2, '', '::1', '2017-11-22 18:47:17', '{\"\\u60a8\\u7684\\u59d3\\u540d\":{\"field\":{\"id\":10,\"form_id\":2,\"priority\":0,\"type\":\"text\",\"label\":\"\\u60a8\\u7684\\u59d3\\u540d\",\"slug\":\"\\u60a8\\u7684\\u59d3\\u540d\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":true},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[\"-\"]},\"slug\":\"\\u60a8\\u7684\\u59d3\\u540d\",\"type\":{\"id\":\"text\",\"label\":\"Textfield\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"placeholder\":\"type your answer\"},\"label\":\"\\u60a8\\u7684\\u59d3\\u540d\",\"value\":[\"Test Bella\"],\"formatted\":[\"-\"],\"data\":[],\"field_id\":10},\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\":{\"field\":{\"id\":11,\"form_id\":2,\"priority\":2,\"type\":\"textbox\",\"label\":\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\",\"slug\":\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"minLength\":0,\"maxLength\":0,\"rows\":4,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[]},\"slug\":\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\",\"type\":{\"id\":\"textbox\",\"label\":\"Text area\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"minLength\":0,\"maxLength\":0,\"rows\":0,\"placeholder\":\"type your answer\"},\"label\":\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\",\"value\":[\"Test Bella University\"],\"formatted\":[],\"data\":[],\"field_id\":11},\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\":{\"field\":{\"id\":8,\"form_id\":2,\"priority\":3,\"type\":\"textbox\",\"label\":\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\",\"slug\":\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"minLength\":0,\"maxLength\":0,\"rows\":4,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":0},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[]},\"slug\":\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\",\"type\":{\"id\":\"textbox\",\"label\":\"Text area\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"minLength\":0,\"maxLength\":0,\"rows\":0,\"placeholder\":\"type your answer\"},\"label\":\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\",\"value\":[\"Test Bella Intro\"],\"formatted\":[],\"data\":[],\"field_id\":8},\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\":{\"field\":{\"id\":5,\"form_id\":2,\"priority\":4,\"type\":\"upload\",\"label\":\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\",\"slug\":\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"path\":\"uploads\",\"allowed\":[\"png\",\"jpg\",\"jpeg\",\"gif\",\"svg\"],\"max_size\":4,\"max_files\":0,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[\"-\"]},\"slug\":\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\",\"type\":{\"id\":\"upload\",\"label\":\"File upload\",\"hasOptions\":0,\"required\":0,\"multiple\":1,\"path\":\"uploads\",\"allowed\":[\"png\",\"jpg\",\"jpeg\",\"gif\",\"svg\"],\"max_size\":4,\"max_files\":0},\"label\":\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\",\"value\":[],\"formatted\":[\"-\"],\"data\":[],\"field_id\":5},\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386-2\":{\"field\":{\"id\":12,\"form_id\":2,\"priority\":7,\"type\":\"pulldown\",\"label\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386\",\"slug\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386-2\",\"options\":[{\"value\":\"\",\"text\":\"\\u672c\\u79d1\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"\",\"text\":\"\\u672c\\u79d1\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false},{\"value\":\"\",\"text\":\"\\u7855\\u58eb\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"\",\"text\":\"\\u7855\\u58eb\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false},{\"value\":\"\",\"text\":\"\\u535a\\u58eb\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"\",\"text\":\"\\u535a\\u58eb\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false}],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386\",\"help_show\":\"\",\"hasOptions\":1,\"size\":1,\"placeholder\":\"\",\"controls\":null,\"repeatable\":null},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[\"-\"]},\"slug\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386-2\",\"type\":{\"id\":\"pulldown\",\"label\":\"Pulldown\",\"hasOptions\":1,\"required\":-1,\"multiple\":-1,\"size\":1,\"placeholder\":\"\"},\"label\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386\",\"value\":[],\"formatted\":[\"-\"],\"data\":[],\"field_id\":12},\"\\u60a8\\u7684\\u90ae\\u7bb1\":{\"field\":{\"id\":13,\"form_id\":2,\"priority\":8,\"type\":\"email\",\"label\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"slug\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"help_show\":\"\",\"hasOptions\":0,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":true},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[\"-\"]},\"slug\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"type\":{\"id\":\"email\",\"label\":\"Email field\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"placeholder\":\"\"},\"label\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"value\":[\"testbella@test.com\"],\"formatted\":[\"-\"],\"data\":[],\"field_id\":13}}'),
(11, 1, 2, '', '::1', '2017-11-22 22:30:17', '{\"\\u60a8\\u7684\\u59d3\\u540d\":{\"field\":{\"id\":10,\"form_id\":2,\"priority\":0,\"type\":\"text\",\"label\":\"\\u60a8\\u7684\\u59d3\\u540d\",\"slug\":\"\\u60a8\\u7684\\u59d3\\u540d\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":true},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[\"-\"]},\"slug\":\"\\u60a8\\u7684\\u59d3\\u540d\",\"type\":{\"id\":\"text\",\"label\":\"Textfield\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"placeholder\":\"type your answer\"},\"label\":\"\\u60a8\\u7684\\u59d3\\u540d\",\"value\":[\"Some Teacher 2\"],\"formatted\":[\"-\"],\"data\":[],\"field_id\":10},\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\":{\"field\":{\"id\":11,\"form_id\":2,\"priority\":1,\"type\":\"textbox\",\"label\":\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\",\"slug\":\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"minLength\":0,\"maxLength\":0,\"rows\":4,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[]},\"slug\":\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\",\"type\":{\"id\":\"textbox\",\"label\":\"Text area\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"minLength\":0,\"maxLength\":0,\"rows\":0,\"placeholder\":\"type your answer\"},\"label\":\"\\u60a8\\u6240\\u5728\\u7684\\u9662\\u6821\",\"value\":[\"Some University\"],\"formatted\":[],\"data\":[],\"field_id\":11},\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\":{\"field\":{\"id\":8,\"form_id\":2,\"priority\":2,\"type\":\"textbox\",\"label\":\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\",\"slug\":\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"minLength\":0,\"maxLength\":0,\"rows\":4,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":0},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[]},\"slug\":\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\",\"type\":{\"id\":\"textbox\",\"label\":\"Text area\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"minLength\":0,\"maxLength\":0,\"rows\":0,\"placeholder\":\"type your answer\"},\"label\":\"\\u60a8\\u7684\\u81ea\\u6211\\u7b80\\u4ecb\",\"value\":[\"Some Teacher 2Some Teacher 2Some Teacher 2Some Teacher 2Some Teacher 2Some Teacher 2\"],\"formatted\":[],\"data\":[],\"field_id\":8},\"\\u60a8\\u7684\\u90ae\\u7bb1\":{\"field\":{\"id\":13,\"form_id\":2,\"priority\":3,\"type\":\"email\",\"label\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"slug\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"help_show\":\"\",\"hasOptions\":0,\"placeholder\":\"\",\"multiple\":0,\"controls\":null,\"repeatable\":null,\"required\":true},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[\"-\"]},\"slug\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"type\":{\"id\":\"email\",\"label\":\"Email field\",\"hasOptions\":0,\"required\":-1,\"multiple\":0,\"placeholder\":\"\"},\"label\":\"\\u60a8\\u7684\\u90ae\\u7bb1\",\"value\":[\"test222@test.com\"],\"formatted\":[\"-\"],\"data\":[],\"field_id\":13},\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\":{\"field\":{\"id\":5,\"form_id\":2,\"priority\":4,\"type\":\"upload\",\"label\":\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\",\"slug\":\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\",\"options\":[],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"path\":\"uploads\",\"allowed\":[\"png\",\"jpg\",\"jpeg\",\"gif\",\"svg\"],\"max_size\":4,\"max_files\":0,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[\"-\"]},\"slug\":\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\",\"type\":{\"id\":\"upload\",\"label\":\"File upload\",\"hasOptions\":0,\"required\":0,\"multiple\":1,\"path\":\"uploads\",\"allowed\":[\"png\",\"jpg\",\"jpeg\",\"gif\",\"svg\"],\"max_size\":4,\"max_files\":0},\"label\":\"\\u8bf7\\u4e0a\\u4f20\\u60a8\\u7684\\u5b66\\u751f\\u8bc1\",\"value\":[],\"formatted\":[\"-\"],\"data\":[],\"field_id\":5},\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386-2\":{\"field\":{\"id\":12,\"form_id\":2,\"priority\":5,\"type\":\"pulldown\",\"label\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386\",\"slug\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386-2\",\"options\":[{\"value\":\"undergraduate\",\"text\":\"Undergraduate \\u672c\\u79d1\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"undergraduate_completed\",\"text\":\"Undergraduate Completed \\u672c\\u79d1\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false},{\"value\":\"masters\",\"text\":\"Masters \\u7855\\u58eb\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"masters_completed\",\"text\":\"Masters Completed \\u7855\\u58eb\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false},{\"value\":\"doctorate\",\"text\":\"Doctorate \\u535a\\u58eb\\u5728\\u8bfb\",\"attachValue\":true,\"invalid\":false},{\"value\":\"doctorate_completed\",\"text\":\"Doctorate Completed \\u535a\\u58eb\\u6bd5\\u4e1a\",\"attachValue\":true,\"invalid\":false}],\"data\":{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386\",\"help_show\":\"\",\"hasOptions\":1,\"size\":1,\"placeholder\":\"\",\"controls\":null,\"repeatable\":null},\"roles\":[],\"value\":[],\"valuedata\":[],\"formatted\":[\"-\"]},\"slug\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386-2\",\"type\":{\"id\":\"pulldown\",\"label\":\"Pulldown\",\"hasOptions\":1,\"required\":-1,\"multiple\":-1,\"size\":1,\"placeholder\":\"\"},\"label\":\"\\u60a8\\u7684\\u6700\\u9ad8\\u5b66\\u5386\",\"value\":[\"masters\"],\"formatted\":[\"-\"],\"data\":[],\"field_id\":12}}'),
(12, 1, 1, '', '::1', '2017-11-23 00:15:29', '{\"solved\":{\"field\":{\"id\":1,\"form_id\":1,\"priority\":1,\"type\":\"radio\",\"label\":\"\\u662f\\u5426\\u89e3\\u51b3\\u4e86\\u60a8\\u7684\\u95ee\\u9898\\uff1f\",\"slug\":\"solved\",\"options\":[{\"value\":\"yes\",\"text\":\"Yes \\u662f\",\"attachValue\":false,\"invalid\":false},{\"value\":\"no\",\"text\":\"No \\u5426\",\"attachValue\":true,\"invalid\":false}],\"data\":{\"value\":\"yes\",\"data\":[],\"classSfx\":\"star-rating\",\"help_text\":\"\",\"help_show\":\"tooltip_icon\",\"hasOptions\":1,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null},\"roles\":[1],\"value\":[\"yes\"],\"valuedata\":{\"data0\":{\"value\":\"yes\"}},\"formatted\":[\"Yes \\u662f\"]},\"slug\":\"solved\",\"type\":{\"id\":\"radio\",\"label\":\"Radio bullets\",\"hasOptions\":1,\"required\":0,\"multiple\":1},\"label\":\"\\u662f\\u5426\\u89e3\\u51b3\\u4e86\\u60a8\\u7684\\u95ee\\u9898\\uff1f\",\"value\":\"no\",\"formatted\":[\"Yes \\u662f\"],\"data\":{\"data0\":{\"value\":\"yes\"}},\"field_id\":1}}'),
(13, 1, 1, '', '::1', '2017-11-23 00:17:41', '{\"solved\":{\"field\":{\"id\":1,\"form_id\":1,\"priority\":1,\"type\":\"radio\",\"label\":\"\\u662f\\u5426\\u89e3\\u51b3\\u4e86\\u60a8\\u7684\\u95ee\\u9898\\uff1f\",\"slug\":\"solved\",\"options\":[{\"value\":\"yes\",\"text\":\"Yes \\u662f\",\"attachValue\":false,\"invalid\":false},{\"value\":\"no\",\"text\":\"No \\u5426\",\"attachValue\":true,\"invalid\":false}],\"data\":{\"value\":\"yes\",\"data\":[],\"classSfx\":\"feedback\",\"help_text\":\"\",\"help_show\":\"tooltip_icon\",\"hasOptions\":1,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null,\"hide_label\":false},\"roles\":[1,5],\"value\":[\"yes\"],\"valuedata\":{\"data0\":{\"value\":\"yes\"}},\"formatted\":[\"Yes \\u662f\"]},\"slug\":\"solved\",\"type\":{\"id\":\"radio\",\"label\":\"Radio bullets\",\"hasOptions\":1,\"required\":0,\"multiple\":1},\"label\":\"\\u662f\\u5426\\u89e3\\u51b3\\u4e86\\u60a8\\u7684\\u95ee\\u9898\\uff1f\",\"value\":\"no\",\"formatted\":[\"Yes \\u662f\"],\"data\":{\"data0\":{\"value\":\"yes\"}},\"field_id\":1}}'),
(14, 1, 1, '', '::1', '2017-11-23 00:19:04', '{\"solved\":{\"field\":{\"id\":1,\"form_id\":1,\"priority\":1,\"type\":\"radio\",\"label\":\"\\u662f\\u5426\\u89e3\\u51b3\\u4e86\\u60a8\\u7684\\u95ee\\u9898\\uff1f\",\"slug\":\"solved\",\"options\":[{\"value\":\"yes\",\"text\":\"Yes \\u662f\",\"attachValue\":false,\"invalid\":false},{\"value\":\"no\",\"text\":\"No \\u5426\",\"attachValue\":true,\"invalid\":false}],\"data\":{\"value\":\"yes\",\"data\":[],\"classSfx\":\"feedback\",\"help_text\":\"\",\"help_show\":\"tooltip_icon\",\"hasOptions\":1,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null,\"hide_label\":false},\"roles\":[1,5],\"value\":[\"yes\"],\"valuedata\":{\"data0\":{\"value\":\"yes\"}},\"formatted\":[\"Yes \\u662f\"]},\"slug\":\"solved\",\"type\":{\"id\":\"radio\",\"label\":\"Radio bullets\",\"hasOptions\":1,\"required\":0,\"multiple\":1},\"label\":\"\\u662f\\u5426\\u89e3\\u51b3\\u4e86\\u60a8\\u7684\\u95ee\\u9898\\uff1f\",\"value\":\"no\",\"formatted\":[\"Yes \\u662f\"],\"data\":{\"data0\":{\"value\":\"yes\"}},\"field_id\":1}}'),
(15, 1, 1, '', '::1', '2017-11-23 00:20:55', '{\"solved\":{\"field\":{\"id\":1,\"form_id\":1,\"priority\":1,\"type\":\"radio\",\"label\":\"\\u662f\\u5426\\u89e3\\u51b3\\u4e86\\u60a8\\u7684\\u95ee\\u9898\\uff1f\",\"slug\":\"solved\",\"options\":[{\"value\":\"yes\",\"text\":\"Yes \\u662f\",\"attachValue\":false,\"invalid\":false},{\"value\":\"no\",\"text\":\"No \\u5426\",\"attachValue\":true,\"invalid\":false}],\"data\":{\"value\":\"yes\",\"data\":[],\"classSfx\":\"feedback\",\"help_text\":\"\",\"help_show\":\"tooltip_icon\",\"hasOptions\":1,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null,\"hide_label\":false},\"roles\":[1,5],\"value\":[\"yes\"],\"valuedata\":{\"data0\":{\"value\":\"yes\"}},\"formatted\":[\"Yes \\u662f\"]},\"slug\":\"solved\",\"type\":{\"id\":\"radio\",\"label\":\"Radio bullets\",\"hasOptions\":1,\"required\":0,\"multiple\":1},\"label\":\"\\u662f\\u5426\\u89e3\\u51b3\\u4e86\\u60a8\\u7684\\u95ee\\u9898\\uff1f\",\"value\":[\"yes\"],\"formatted\":[\"Yes \\u662f\"],\"data\":{\"data0\":{\"value\":\"yes\"}},\"field_id\":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_listings_category`
--

CREATE TABLE `sjzd_listings_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_on` int(11) DEFAULT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_on` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `featured_from` time DEFAULT NULL,
  `featured_to` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_listings_category`
--

INSERT INTO `sjzd_listings_category` (`id`, `listing_id`, `created_by`, `created_on`, `modified_by`, `modified_on`, `title`, `description`, `image`, `position`, `status`, `featured_from`, `featured_to`) VALUES
(3, 2, 1, 1511803522, 1, 1511804338, 'monthly', '', '', 0, 1, NULL, NULL),
(4, 2, 1, 1511804360, 1, 1511804360, 'yearly', '', '', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_listings_item`
--

CREATE TABLE `sjzd_listings_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_on` int(11) DEFAULT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_on` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actions` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `tags` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `featured_from` time DEFAULT NULL,
  `featured_to` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_listings_item`
--

INSERT INTO `sjzd_listings_item` (`id`, `category_id`, `listing_id`, `created_by`, `created_on`, `modified_by`, `modified_on`, `title`, `description`, `link`, `actions`, `image`, `position`, `status`, `price`, `tags`, `featured_from`, `featured_to`) VALUES
(3, 3, 2, 1, 1511803717, 1, 1511819126, 'silver', '<p>每个月20小时辅导</p>\n<ul>\n<li>介绍文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍文字</li>\n<li>介绍文字</li>\n</ul>\n<p><a class=\"uk-icon-hover uk-icon-small uk-icon-wechat\" href=\"#\">微信支付</a></p>', '', '\"\"', 'storage/list/mmexport1511755196338.jpg', 1, 1, 999, '[{\"title\":\"\\u4e00\\u4e9b\\u6807\\u7b7e\"}]', NULL, NULL),
(4, 3, 2, 1, 1511803760, 1, 1511819135, 'gold', '<p>每个月50小时辅导</p>\n<p>介绍文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍文字</p>\n<p><a class=\"uk-icon-hover uk-icon-small uk-icon-wechat\" href=\"#\">微信支付</a></p>', '', '\"\"', 'storage/list/mmexport1511755244766.jpg', 1, 1, 1999, '[]', NULL, NULL),
(5, 3, 2, 1, 1511803789, 1, 1511819107, 'premium', '<p>24/7无限时辅导</p>\n<ul>\n<li>介绍文字介绍文字介绍</li>\n<li>介绍文字介绍</li>\n</ul>\n<p><a class=\"uk-icon-hover uk-icon-small uk-icon-wechat\" href=\"#\">微信支付</a></p>', '', '\"\"', 'storage/list/mmexport1511755240059.jpg', 0, 1, 2999, '[{\"title\":\"\\u53e6\\u4e00\\u4e9b\\u6807\\u7b7e\"}]', NULL, NULL),
(6, 4, 2, 1, 1511804462, 1, 1511819143, 'silver', '<p>全年共计1000小时</p>\n<p><a class=\"uk-icon-hover uk-icon-small uk-icon-wechat\" href=\"#\">微信支付</a></p>', '', '\"\"', 'storage/list/469169_518582264864165_488314551_o.jpg', 0, 1, 10000, '[]', NULL, NULL),
(7, 4, 2, 1, 1511804490, 1, 1511819151, 'gold', '<p>全年共计5000小时</p>\n<p><a class=\"uk-icon-hover uk-icon-small uk-icon-wechat\" href=\"#\">微信支付</a></p>', '', '\"\"', 'storage/list/mmexport1511755192387.jpg', 1, 1, 20000, '[]', NULL, NULL),
(8, 4, 2, 1, 1511804521, 1, 1511819159, 'premium', '<p>全年无限时</p>\n<p><a class=\"uk-icon-hover uk-icon-small uk-icon-wechat\" href=\"#\">微信支付</a></p>', '', '\"\"', 'storage/list/mmexport1511755201598.jpg', 2, 1, 88000, '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_listings_listing`
--

CREATE TABLE `sjzd_listings_listing` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_on` int(11) DEFAULT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_on` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL,
  `featured_from` time DEFAULT NULL,
  `featured_to` time DEFAULT NULL,
  `position` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_listings_listing`
--

INSERT INTO `sjzd_listings_listing` (`id`, `created_by`, `created_on`, `modified_by`, `modified_on`, `title`, `description`, `template_id`, `featured_from`, `featured_to`, `position`, `status`) VALUES
(2, 1, 1511803488, 1, 1511819162, 'Price Plan', '', 1, '00:00:00', '00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_listings_template`
--

CREATE TABLE `sjzd_listings_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_on` int(11) DEFAULT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_on` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8_unicode_ci NOT NULL,
  `editable` smallint(6) NOT NULL DEFAULT '1',
  `locked` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_listings_template`
--

INSERT INTO `sjzd_listings_template` (`id`, `created_by`, `created_on`, `modified_by`, `modified_on`, `title`, `description`, `html`, `editable`, `locked`) VALUES
(1, 1, 1510700609, 1, 1510700609, 'Default Template', 'Listings built-in configurable template.', '<h2 v-if=\"list.title\" :class=\"settings.listingTitle || defaults.listingTitle\" data-type=\"List Title\">{{list.title}}</h2>\n<div v-if=\"list.description\" :class=\"settings.listingDescription || defaults.listingDescription\"\n     data-type=\"List Description\" v-html=\"list.description\"></div>\n<div :class=\"settings.categoryContainer || defaults.categoryContainer\"\n     v-for=\"category in list.categories | orderBy \'position\'\" data-type=\"Category\">\n    <div :class=\"settings.categoryTitleDescription || defaults.categoryTitleDescription\">\n        <h3 v-if=\"category.title\"\n            :class=\"settings.categoryTitle || defaults.categoryTitle\"\n            data-type=\"Category Title\">\n            {{category.title}}</h3>\n        <div v-if=\"category.description\" :class=\"settings.categoryDescription || defaults.categoryDescription\"\n             data-type=\"Category Description\">\n            {{category.description}}\n        </div>\n    </div>\n    <div class=\"uk-list uk-flex uk-flex-column\" :class=\"settings.itemContainer || defaults.itemContainer\"\n             data-type=\"Category Items\">\n        <div class=\"uk-grid\" :class=\"settings.itemContainer || defaults.itemContainer\"\n             v-for=\"item in category.items | orderBy \'position\'\" data-type=\"Item\" data-uk-grid-margin>\n            <div v-if=\"item.image\" :class=\"settings.itemImage || defaults.itemImage\" data-type=\"Item Image\">\n                <a v-if=\"item.link\" :href=\"item.link\" title=\"Item.title\" alt=\"item.title\">\n                    <img :src=\"item.image\"\n                         title=\"{{item.name}}\"\n                         alt=\"{{item.name}}\"/>\n                </a>\n                <img v-else :src=\"item.image\" title=\"{{item.name}}\" alt=\"{{item.name}}\"/></div>\n            <dl v-if=\"item.title || item.description\"\n                :class=\"settings.itemTitleDescription || defaults.itemTitleDescription\"\n                data-type=\"Item Title and Description\">\n                <dt v-if=\"item.title\" :class=\"settings.itemTitle || defaults.itemTitle\" data-type=\"Item Title\">\n                    <a v-if=\"item.link\" :href=\"item.link\" title=\"Item.title\" alt=\"item.title\">{{item.title}}</a>\n                <div v-else>{{item.title}}</div>\n                </dt>\n                <dd v-if=\"item.description\" :class=\"settings.itemDescription || defaults.itemDescription\"\n                    data-type=\"Item Description\" v-html=\"item.description\"></dd>\n                <div v-if=\"item.tags.length\" :class=\"settings.itemTagsContainer || defaults.itemTagsContainer\"\n                     data-type=\"Item Tags\">\n                    <div v-for=\"tag in item.tags\" :class=\"settings.itemTag || defaults.itemTag\" data-type=\"Tag\">\n                        {{tag.title}}\n                    </div>\n                </div>\n            </dl>\n            <div v-if=\"item.price\" :class=\"settings.itemPrice || defaults.itemPrice\" data-type=\"Item Price\">\n                {{item.price | currency}}\n            </div>\n        </div>\n    </div>\n</div>', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_search_keywords`
--

CREATE TABLE `sjzd_search_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `putdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_search_keywords`
--

INSERT INTO `sjzd_search_keywords` (`id`, `word`, `ip`, `putdate`) VALUES
(1, 'lorem ipsum', 0, '2017-11-15 23:24:19'),
(2, 'lorem ipsum', 0, '2017-11-15 23:24:19'),
(3, 'dajfdfha', 0, '2017-11-15 23:24:22'),
(4, 'dajfdfha', 0, '2017-11-15 23:24:23'),
(5, 'sdfa', 0, '2017-11-16 00:41:46'),
(6, 'script src=ksdjfklafd./com', 0, '2017-11-16 00:41:58'),
(7, 'script src=ksdjfklafd./com', 0, '2017-11-16 00:41:59'),
(8, 'script src=ksdjfklafd.', 0, '2017-11-16 00:42:01'),
(9, 'script src=ksdjfklafd.com', 0, '2017-11-16 00:42:09'),
(10, 'script src=ksdjfklafd.com--', 0, '2017-11-16 00:42:10'),
(11, 'script src=ksdjfklafd.com--', 0, '2017-11-16 00:42:15'),
(12, '1==1 user.id=', 0, '2017-11-16 00:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_system_auth`
--

CREATE TABLE `sjzd_system_auth` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_system_auth`
--

INSERT INTO `sjzd_system_auth` (`id`, `user_id`, `access`, `status`, `data`) VALUES
('49fd3db28e96ccf3a4bdb150a7c30161a839b8e1', 1, '2017-11-14 23:13:45', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/61.0.3163.100 Safari\\/537.36\"}'),
('9099a05991ea5412f0afd178016456a59fe3df04', 3, '2017-11-16 00:37:36', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; Trident\\/7.0; rv:11.0) like Gecko\"}'),
('97489ccaed9ed135cdb923203b93844ca64a8a89', 5, '2017-11-22 22:43:52', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; Trident\\/7.0; rv:11.0) like Gecko\"}'),
('9f00baf9729843cde1ce5ff9a21c537a4fb7cc08', 1, '2017-11-27 23:02:53', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3202.94 Safari\\/537.36\"}'),
('a851bff8f0471b4e03279aa666b40ac416617240', 4, '2017-11-22 16:21:36', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; Trident\\/7.0; rv:11.0) like Gecko\"}'),
('bddab9f00fc7b078620ea06c0f97ba54fbe660ee', 1, '2017-11-27 18:05:29', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3202.94 Safari\\/537.36\"}'),
('c4f6be4241c02f7fea5cc5e90dae4c8a9438c39c', 1, '2017-11-28 21:44:04', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3202.94 Safari\\/537.36\"}'),
('d9627dc1b8fe234f54c649b37e9c89a0c2e43c37', 2, '2017-11-15 23:45:40', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; Trident\\/7.0; rv:11.0) like Gecko\"}'),
('e5d308d4ccb4a50546a5f196b952b681722ca08e', 1, '2017-11-16 15:58:22', 1, '{\"ip\":\"::1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; Trident\\/7.0; rv:11.0) like Gecko\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_system_config`
--

CREATE TABLE `sjzd_system_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_system_config`
--

INSERT INTO `sjzd_system_config` (`id`, `name`, `value`) VALUES
(1, 'system/dashboard', '{\"55dda578e93b5\":{\"type\":\"location\",\"column\":0,\"idx\":1,\"units\":\"metric\",\"id\":\"55dda578e93b5\",\"uid\":1816670,\"city\":\"Beijing\",\"country\":\"CN\",\"coords\":{\"lat\":39.9075,\"lon\":116.3972}},\"55dda6e3dd661\":{\"type\":\"user\",\"column\":1,\"idx\":1,\"show\":\"registered\",\"display\":\"thumbnail\",\"total\":\"1\",\"count\":12,\"id\":\"55dda6e3dd661\"},\"5a0b670bb10ef\":{\"type\":\"user\",\"column\":0,\"idx\":0,\"show\":\"login\",\"display\":\"list\",\"total\":true,\"count\":24,\"id\":\"5a0b670bb10ef\"},\"5a0b77d87a5fc\":{\"type\":\"formmaker\",\"column\":2,\"idx\":0,\"form\":[\"all\"],\"done\":false,\"count\":12,\"id\":\"5a0b77d87a5fc\"},\"5a0b77e108149\":{\"type\":\"location\",\"column\":1,\"idx\":0,\"units\":\"metric\",\"id\":\"5a0b77e108149\",\"uid\":1796236,\"city\":\"Shanghai\",\"country\":\"CN\",\"coords\":{\"lat\":31.2222,\"lon\":121.4581}},\"5a1ca8a8516b2\":{\"type\":\"feed\",\"column\":2,\"idx\":100,\"count\":5,\"url\":\"http:\\/\\/seniorknows.com\\/blog\\/feed\",\"content\":\"\",\"id\":\"5a1ca8a8516b2\"}}'),
(2, 'system/site', '{\"menus\":{\"main\":{\"id\":\"main\",\"label\":\"Main\"},\"数据采集\":{\"id\":\"数据采集\",\"label\":\"数据采集\"}},\"title\":\"seniorknows.com\",\"frontpage\":1,\"view\":{\"logo\":\"storage\\/sb_new_web-logo.svg\"},\"description\":\"\",\"maintenance\":{\"enabled\":false,\"logo\":\"\",\"msg\":\"\"},\"icons\":{\"favicon\":false,\"appicon\":false},\"code\":{\"header\":\"<script type=\\\"text\\/javascript\\\" src=\\\"\\/\\/localhost\\/seniorknows\\/home\\/livechat\\/php\\/app.php?widget-init.js\\\"><\\/script>\",\"footer\":\"\"}}'),
(3, 'system', '{\"admin\":{\"locale\":\"zh_CN\"},\"site\":{\"locale\":\"zh_CN\",\"theme\":\"theme-one\"},\"version\":\"1.0.0\",\"packages\":{\"blog\":\"1.0.5\",\"calendar\":\"1.0.0\",\"sb\\/formmaker\":\"1.0.0\",\"sbvideo\\/video\":\"1.2.0\",\"sb\\/pk-framework\":\"1.0.4\",\"sbsearch\\/search\":\"1.0.0\",\"theme-one\":\"1.0.0\",\"sb\\/userprofile\":\"1.0.0\",\"tinymce\":\"1.0.2\",\"sb_new_web\\/listings\":\"1.0.6\",\"theme-sb_new_web\":\"1.0.0\",\"driven\\/listings\":\"1.0.6\",\"slideshow-widget\":\"0.1.2\"},\"extensions\":{\"0\":\"blog\",\"2\":\"sb\\/formmaker\",\"3\":\"sbvideo\\/video\",\"4\":\"sb\\/pk-framework\",\"6\":\"sb\\/userprofile\",\"8\":\"sb_new_web\\/listings\",\"9\":\"sbsearch\\/search\",\"10\":\"calendar\",\"11\":\"driven\\/listings\",\"12\":\"tinymce\",\"13\":\"slideshow-widget\"}}'),
(5, 'sb/formmaker', '[]'),
(7, 'theme-one', '{\"logo_contrast\":\"storage\\/logo_pc.png\",\"_menus\":{\"main\":\"main\",\"offcanvas\":\"main\"},\"_positions\":{\"hero\":[1,10],\"footer\":[2],\"navbar\":[3,7],\"top\":[4,8,9,11,12],\"toolbar_l\":[5,6]},\"_widgets\":{\"1\":{\"title_hide\":true,\"title_size\":\"uk-panel-title\",\"alignment\":true,\"html_class\":\"\",\"panel\":\"\"},\"2\":{\"title_hide\":true,\"title_size\":\"uk-panel-title\",\"alignment\":\"true\",\"html_class\":\"\",\"panel\":\"\"},\"3\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"html_class\":\"\",\"panel\":\"\"},\"8\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"html_class\":\"\",\"panel\":\"\"},\"9\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"html_class\":\"\",\"panel\":\"\"},\"10\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"html_class\":\"\",\"panel\":\"\"},\"11\":{\"title_hide\":true,\"title_size\":\"uk-panel-title\",\"alignment\":true,\"html_class\":\"\",\"panel\":\"uk-panel-header\"},\"12\":{\"title_hide\":true,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"html_class\":\"\",\"panel\":\"\"}},\"_nodes\":{\"1\":{\"title_hide\":true,\"title_large\":false,\"alignment\":true,\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"storage\\/home-hero.jpg\",\"hero_viewport\":true,\"hero_contrast\":true,\"hero_parallax\":\"\",\"navbar_transparent\":true,\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"2\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"3\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"4\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"5\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"6\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"storage\\/Koala.jpg\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":true,\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"7\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"8\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":true,\"navbar_transparent\":true,\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"9\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"10\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"11\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"12\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"},\"13\":{\"title_hide\":true,\"title_large\":false,\"alignment\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"hero_image\":\"\",\"hero_viewport\":\"\",\"hero_contrast\":\"\",\"hero_parallax\":\"\",\"navbar_transparent\":\"\",\"top_style\":\"uk-block-muted\",\"main_style\":\"uk-block-default\",\"bottom_style\":\"uk-block-muted\"}},\"logo_offcanvas\":\"storage\\/logo_pc.png\"}'),
(25, 'calendar', '{\"general\":{\"title\":\"Calendar\",\"loadingindicator\":true},\"calendar\":{\"views\":{\"month\":true,\"week\":true,\"day\":true,\"list\":\"listWeek\",\"default\":\"month\"},\"buttons\":{\"today\":true,\"prevnext\":true,\"changecategories\":true},\"pagesize\":25}}'),
(67, 'sbsearch/search', '{\"defaults\":{\"limit_search_result\":50,\"result_per_page\":10,\"data_creation\":true,\"use_areas_search\":true,\"markdown_enabled\":true,\"show_pages_counter\":true,\"show_posted_in\":true,\"title\":\"Search Title\",\"show_title\":true},\"advanced\":{\"statistics_enabled\":true}}'),
(79, 'sbvideo/video', '{\"video_title\":\"My video\",\"video_text\":\"<p>This is an overview of my latest projects.<\\/p>\",\"video_image\":\"\",\"projects_per_page\":20,\"project_ordering\":\"date|DESC\",\"video_image_align\":\"left\",\"columns\":1,\"columns_small\":2,\"columns_medium\":\"\",\"columns_large\":\"1\",\"columns_xlarge\":\"1\",\"columns_gutter\":20,\"filter_tags\":true,\"teaser\":{\"show_title\":true,\"show_subtitle\":0,\"show_intro\":true,\"show_image\":true,\"show_client\":true,\"show_tags\":true,\"show_date\":true,\"show_data\":0,\"show_readmore\":true,\"show_thumbs\":true,\"template\":\"panel\",\"panel_style\":\"uk-panel-box\",\"overlay\":\"uk-overlay uk-overlay-hover\",\"overlay_position\":\"\",\"overlay_effect\":\"uk-overlay-fade\",\"overlay_image_effect\":\"uk-overlay-scale\",\"content_align\":\"left\",\"tags_align\":\"uk-flex-center\",\"title_size\":\"uk-h3\",\"title_color\":\"\",\"read_more\":\"Read more\",\"link_image\":\"uk-button\",\"read_more_style\":\"uk-button\",\"readmore_align\":\"uk-text-center\",\"thumbsize\":{\"width\":400,\"height\":\"\"},\"columns\":1,\"columns_small\":2,\"columns_medium\":\"\",\"columns_large\":\"4\",\"columns_xlarge\":\"6\",\"columns_gutter\":20},\"project\":{\"image_align\":\"left\",\"metadata_position\":\"content-top\",\"tags_align\":\"uk-flex-center\",\"tags_position\":\"sidebar\",\"show_navigation\":\"bottom\",\"thumbsize\":{\"width\":400,\"height\":\"\"},\"overlay_title_size\":\"uk-h3\",\"overlay\":\"uk-overlay uk-overlay-hover\",\"overlay_position\":\"\",\"overlay_effect\":\"uk-overlay-fade\",\"overlay_image_effect\":\"uk-overlay-scale\",\"columns\":1,\"columns_small\":2,\"columns_medium\":\"\",\"columns_large\":4,\"columns_xlarge\":6,\"columns_gutter\":20},\"cache_path\":\"\\/tmp\\/cache\\/video\",\"date_format\":\"F Y\",\"markdown\":true,\"datafields\":[{\"name\":\"short_and_quick_american_english_intro\",\"label\":\"Short and quick American English Intro\",\"attachValue\":true,\"invalid\":false}]}'),
(90, 'system/user', '{\"registration\":\"guest\",\"require_verification\":false,\"users_per_page\":20,\"login_redirect\":\"@page\\/1\",\"auth\":{\"refresh_token\":false}}'),
(94, 'theme-sb_new_web', '{\"_positions\":{\"hero\":[1],\"footer\":[2],\"navbar\":[7],\"top\":[4,3,8,9],\"toolbar_l\":[5,6],\"navbar_more\":[],\"top_b\":[]},\"_menus\":{\"main\":\"main\",\"offcanvas\":\"ke-test\"},\"_widgets\":{\"4\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"padding\":\"\",\"html_class\":\"\",\"panel\":\"uk-panel-box\",\"animation\":\"\"},\"5\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"padding\":\"\",\"html_class\":\"\",\"panel\":\"uk-panel-box\",\"animation\":\"\"},\"6\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"padding\":\"\",\"html_class\":\"\",\"panel\":\"uk-panel-box\",\"animation\":\"\"},\"7\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":\"\",\"padding\":\"\",\"html_class\":\"\",\"panel\":\"uk-panel-box\",\"animation\":\"\"},\"8\":{\"title_hide\":true,\"title_size\":\"uk-panel-title\",\"alignment\":true,\"padding\":false,\"html_class\":\"\",\"panel\":\"uk-panel-box uk-panel-box-primary\",\"animation\":\"auto\"},\"3\":{\"title_hide\":false,\"title_size\":\"uk-panel-title\",\"alignment\":true,\"padding\":\"\",\"html_class\":\"\",\"panel\":\"uk-panel-box\",\"animation\":\"auto\"},\"9\":{\"title_hide\":true,\"title_size\":\"uk-panel-title\",\"alignment\":true,\"padding\":false,\"html_class\":\"\",\"panel\":\"uk-panel-box uk-panel-box-secondary\",\"animation\":\"auto\"}},\"_nodes\":{\"8\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"padding\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"top_gutter\":false,\"top_b_gutter\":false,\"top_c_gutter\":false,\"top_d_gutter\":false,\"bottom_gutter\":false,\"bottom_b_gutter\":false,\"bottom_c_gutter\":false,\"bottom_d_gutter\":false,\"footer_margin\":\"\"},\"9\":{\"title_hide\":false,\"title_large\":false,\"alignment\":\"\",\"padding\":\"\",\"html_class\":\"\",\"sidebar_first\":false,\"top_gutter\":false,\"top_b_gutter\":false,\"top_c_gutter\":false,\"top_d_gutter\":false,\"bottom_gutter\":false,\"bottom_b_gutter\":false,\"bottom_c_gutter\":false,\"bottom_d_gutter\":false,\"footer_margin\":\"\"}}}'),
(125, 'sb/userprofile', '{\"override_registration\":1,\"slug_key\":\"name\",\"avatar_field\":\"avartar\",\"use_gravatar\":true,\"fallback_image_src\":\"\",\"list\":{\"profiles_per_page\":16,\"columns\":4,\"columns_small\":\"\",\"columns_medium\":\"\",\"columns_large\":\"\",\"columns_xlarge\":\"\",\"template\":\"vertical\",\"panel_style\":\"uk-panel-box\",\"show_title\":\"name\",\"show_username\":true,\"show_name\":false,\"show_email\":true,\"show_image\":true,\"show_fields\":[\"avartar\",\"信息栏\",\"个人简介\"],\"title_size\":\"uk-module-title\",\"title_color\":\"\",\"link_profile\":\"title\"},\"details\":{\"show_fields\":[\"avartar\",\"certificate\",\"信息栏\",\"个人简介\"],\"show_email\":true,\"show_image\":true,\"show_username\":true}}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_system_node`
--

CREATE TABLE `sjzd_system_node` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(1023) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_system_node`
--

INSERT INTO `sjzd_system_node` (`id`, `parent_id`, `priority`, `status`, `title`, `slug`, `path`, `link`, `type`, `menu`, `roles`, `data`) VALUES
(1, 0, 0, 1, 'Home', 'home', '/home', '@page/1', 'page', 'main', NULL, '{\"defaults\":{\"id\":1},\"meta\":{\"og:title\":\"\"}}'),
(2, 0, 1, 1, '消息', 'blog', '/blog', '@blog', 'blog', 'main', NULL, '{\"meta\":{\"og:title\":\"\"}}'),
(3, 0, 3, 1, 'Video', 'video', '/video', '@video', 'video', '', NULL, NULL),
(4, 0, 4, 1, 'Search', 'search', '/search', '@search', 'search', '', NULL, NULL),
(5, 0, 2, 1, '用户注册', 'register', '/register', '@user/registration', 'link', 'main', NULL, '{\"meta\":{\"og:title\":\"\"}}'),
(6, 0, 4, 1, '师兄师姐名单', 'seniors-list', '/seniors-list', '@userprofile/profiles/seniors-list', 'user_profiles', 'main', NULL, '{\"show_roles\":[5],\"meta\":{\"og:title\":\"\"},\"page_title\":\"\\u5e08\\u5144\\u5e08\\u59d0\\u540d\\u5355\",\"menu_hide\":true,\"show_search\":false}'),
(8, 0, 3, 1, '成为师兄师姐', 'become-seniors1', '/become-seniors1', '@page/3', 'page', 'main', NULL, '{\"meta\":{\"og:title\":\"\"},\"defaults\":{\"id\":3}}'),
(9, 0, 8, 1, '安装zoom', 'install-zoom', '/install-zoom', '@page/4', 'page', '数据采集', NULL, '{\"meta\":{\"og:title\":\"\"},\"defaults\":{\"id\":4},\"menu_hide\":true}'),
(10, 0, 5, 1, '在线师兄师姐名单', 'online-seniors', '/online-seniors', '@userprofile/profiles/online-seniors', 'user_profiles', 'main', NULL, '{\"show_roles\":[6,2],\"meta\":{\"og:title\":\"\"},\"menu_hide\":true,\"page_title\":\"\\u5728\\u7ebf\\u5e08\\u5144\\u5e08\\u59d0\\u540d\\u5355\"}'),
(11, 0, 6, 1, '费用', 'price-plan', '/price-plan', '@page/5', 'page', 'main', NULL, '{\"meta\":{\"og:title\":\"\"},\"defaults\":{\"id\":5}}'),
(12, 0, 7, 1, '寻找师兄师姐', '寻找师兄师姐', '/寻找师兄师姐', 'http://seniorknows.com/shijie', 'link', 'main', NULL, '{\"meta\":{\"og:title\":\"\"}}'),
(13, 0, 9, 1, '师资', 'resources', '/resources', '@page/6', 'page', 'main', NULL, '{\"meta\":{\"og:title\":\"\"},\"defaults\":{\"id\":6}}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_system_page`
--

CREATE TABLE `sjzd_system_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_system_page`
--

INSERT INTO `sjzd_system_page` (`id`, `title`, `content`, `data`) VALUES
(1, '主页', '<div class=\"uk-width-medium-1-1 uk-container-center\">\n<p class=\"section-sub-title\">师姐/师兄来自哪里？<br>他们是浸润中国高等教育多年的成功榜样；除此以外，他们还有分享的热情，以及良好的沟通能力。目前师姐知道的每位师姐/师兄都经过顾问的审核与认证，确保身份真实。<br>为何学员必须付费？<br>付费是学员对于师姐/师兄所付出的经验和时间表示的一种尊重。<br>学员所支付的费用将先由师姐知道运营团队托管，待学员确认见面并对师姐/师兄做出评价以后，再全部转入师姐/师兄的账户。</p>\n</div>', '{\"title\":true}'),
(3, '成为师兄师姐', '<p>(formmaker){\"id\":\"2\"}</p>', '{\"title\":true}'),
(4, '安装zoom', '<p>(formmaker){ \"id\":\"3\", \"hide_title\":\"1\", \"formStyle\": \"uk-form-stacked\" }</p>\n<p><strong>如何安装zoom</strong></p>\n<p><strong>步骤一：根据邮件提示，安装客户端</strong><img src=\"storage/zoom/%E6%AD%A5%E9%AA%A4%E4%B8%80%EF%BC%9A%E6%A0%B9%E6%8D%AE%E9%93%BE%E6%8E%A5%E6%8F%90%E7%A4%BA%EF%BC%8C%E5%AE%89%E8%A3%85zoom.JPG\" alt=\"%E6%AD%A5%E9%AA%A4%E4%B8%80%EF%BC%9A%E6%A0%B9%E6%8D%AE%E9%93%BE%E6%8E%A5%E6%8F%90%E7%A4%BA%EF%BC%8C%E5%AE%89%E8%A3%85zoom\"></p>\n<p><img src=\"storage/zoom/%E6%AD%A5%E9%AA%A4%E4%BA%8C%EF%BC%9A%E8%AF%B7%E5%B0%86%E9%93%BE%E6%8E%A5%EF%BC%8C%E5%A4%8D%E5%88%B6%E7%B2%98%E8%B4%B4%E5%88%B0%E4%BD%A0%E7%9A%84%E4%BF%A1%E6%81%AF%E6%A0%8F%E4%B8%8B.JPG\" alt=\"%E6%AD%A5%E9%AA%A4%E4%BA%8C%EF%BC%9A%E8%AF%B7%E5%B0%86%E9%93%BE%E6%8E%A5%EF%BC%8C%E5%A4%8D%E5%88%B6%E7%B2%98%E8%B4%B4%E5%88%B0%E4%BD%A0%E7%9A%84%E4%BF%A1%E6%81%AF%E6%A0%8F%E4%B8%8B\"></p>\n<p><strong>步骤三：当您工作时，请保证zoom打开</strong></p>\n<p><img src=\"storage/zoom/%E5%B7%A5%E4%BD%9C%E6%97%B6%E8%AF%B7%E4%BF%9D%E8%AF%81zoom%E6%89%93%E5%BC%80.JPG\" alt=\"%E5%B7%A5%E4%BD%9C%E6%97%B6%E8%AF%B7%E4%BF%9D%E8%AF%81zoom%E6%89%93%E5%BC%80\"></p>', '{\"title\":true}'),
(5, '费用', '<div class=\"listwrapper\">(listings){ \"id\":\"2\", \"itemContainer\":\"listwrapper\", \"itemTitle\":\"listname\", \"listingDescription\":\"uk-text-center\", \"itemPrice\":\"listprice\", \"itemImage\":\"listimage\", \"categoryTitle\":\"listcattitle\", \"categoryTitleDescription\":\"listcatdes\", \"itemDescription\":\"trial\", \"itemTitleDescription\":\"uk-width-medium-1-1\"}</div>', '{\"title\":true}'),
(6, '我们的师资', '', '{\"title\":true}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_system_role`
--

CREATE TABLE `sjzd_system_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `permissions` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_system_role`
--

INSERT INTO `sjzd_system_role` (`id`, `name`, `priority`, `permissions`) VALUES
(1, 'Anonymous', 0, NULL),
(2, 'Authenticated', 1, 'blog: post comments'),
(3, 'Administrator', 2, NULL),
(4, 'SJZD_Manager', 3, 'system: manage widgets,site: manage site,site: maintenance access,user: manage user permissions,user: manage users,system: access admin area,blog: manage own posts,blog: manage all posts,blog: manage comments,calendar: manage events,calendar: manage categories,calendar: manage settings,SB: upload files,search: see search,search: manage settings,userprofile: view profiles,userprofile: manage settings,listings: manage lists,video: manage video,video: manage settings,formmaker: manage forms,formmaker: manage submissions,formmaker: manage settings,system: access settings'),
(5, 'SJZD_Teacher', 4, 'calendar: manage events,system: access admin area'),
(6, 'SJZD_SeedUser', 5, 'system: access admin area');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_system_session`
--

CREATE TABLE `sjzd_system_session` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_system_session`
--

INSERT INTO `sjzd_system_session` (`id`, `time`, `data`) VALUES
('4k9emqjfs31i49bu8uoevg07o5', '2017-11-28 00:52:23', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZGJkMzFkNjZlZGRjODE2ZDE5M2ZkNDY4MDhmMDMxOWY4NDU4ZjdmOSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE1MTE4MzAzNDI7czoxOiJjIjtpOjE1MTE4MjQyOTQ7czoxOiJsIjtzOjE6IjAiO30='),
('7ivv7dv76lfggh5soadp1ijjkj', '2017-11-28 22:41:57', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMzU0MjA2YmVjMTFhMzIwMzc4NWM4N2UyODczYzM4MTQxOThiYTI2ZSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE1MTE5MDg5MTc7czoxOiJjIjtpOjE1MTE5MDg5MTc7czoxOiJsIjtzOjE6IjAiO30='),
('i01pn2na8hiultc00jj3hi6ebf', '2017-11-28 18:56:36', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiYmE2Y2NmMTRkNThmZDA1OWRjNDU3MmExYWRjOGM4MTUwNTk0YTNmNSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE1MTE4OTUzOTU7czoxOiJjIjtpOjE1MTE4ODY0ODQ7czoxOiJsIjtzOjE6IjAiO30='),
('j69r991gcai5v5ek72l5sl9hmb', '2017-11-28 21:37:56', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiYmE2Y2NmMTRkNThmZDA1OWRjNDU3MmExYWRjOGM4MTUwNTk0YTNmNSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE1MTE5MDUwNzU7czoxOiJjIjtpOjE1MTE4ODY0ODQ7czoxOiJsIjtzOjE6IjAiO30='),
('oitv5vuj2vo5rk29pujf3ifc7o', '2017-11-28 16:28:14', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiYmE2Y2NmMTRkNThmZDA1OWRjNDU3MmExYWRjOGM4MTUwNTk0YTNmNSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE1MTE4ODY0OTM7czoxOiJjIjtpOjE1MTE4ODY0ODQ7czoxOiJsIjtzOjE6IjAiO30='),
('utgb4s0g7c3eb8d9k5l10ca54e', '2017-11-28 21:44:04', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiYmE2Y2NmMTRkNThmZDA1OWRjNDU3MmExYWRjOGM4MTUwNTk0YTNmNSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE1MTE5MDU0NDQ7czoxOiJjIjtpOjE1MTE4ODY0ODQ7czoxOiJsIjtzOjE6IjAiO30=');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_system_user`
--

CREATE TABLE `sjzd_system_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `registered` datetime NOT NULL,
  `login` datetime DEFAULT NULL,
  `activation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_system_user`
--

INSERT INTO `sjzd_system_user` (`id`, `name`, `username`, `email`, `password`, `url`, `status`, `registered`, `login`, `activation`, `roles`, `data`) VALUES
(1, 'admin', 'admin', 'kyang1@sbec.com', '$2y$10$05YyubpnFPJXp/OS3Qy2JevX..uB3V92.45pRrcmTDp9VPO.1aV5.', '', 1, '2017-11-14 21:29:23', '2017-11-28 21:37:56', NULL, '2,3,5', '{\"admin\":{\"menu\":{\"formmaker\":0,\"video\":1,\"search\":2,\"calendar\":3,\"listings\":4,\"dashboard\":5,\"site\":6,\"blog\":7,\"user\":8,\"system: system\":9,\"userprofile\":10,\"system: marketplace\":11}}}'),
(2, 'Ruihua Liu', 'RuihuaLiu', 'test@seniorknows.com', '$2y$10$7lkakG1cxuf48tsVk9tf1u/cXX6GqQw.2Qn5fyMeiwtvK53UeZJXu', '', 1, '2017-11-15 22:48:47', '2017-11-15 23:41:38', NULL, '2,4', '[]'),
(3, 'jackZhang', 'ZhangJack', 'test1@seniorknows.com', '$2y$10$vS8/v.Wq2NfndaSMGeAH2OEFay0VzIkvqgNOP8YKkTgcqthe3d2Z2', '', 1, '2017-11-16 00:34:15', '2017-11-16 00:37:32', NULL, '2,4', '[]'),
(4, 'Jane Doe', 'SomeTeacher', 'someteacher@test.com', '$2y$10$mnhV1zcjslzWX7yCYekp7.rRg7x9YQHVlX5V39Wv6SYbmj2Ql1GwK', '', 1, '2017-11-22 16:16:13', '2017-11-22 22:11:21', NULL, '2,5', '[]'),
(5, 'mobyDic', 'SomeParent', 'mobydic@test.com', '$2y$10$gJMkY2bJvZnerOp/2uahk.6p.ULw/DWRvFLOlGG6J4N/QDA8NCxxK', '', 1, '2017-11-22 18:37:40', '2017-11-22 22:43:51', NULL, '2,6', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_system_widget`
--

CREATE TABLE `sjzd_system_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `nodes` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_system_widget`
--

INSERT INTO `sjzd_system_widget` (`id`, `title`, `type`, `status`, `nodes`, `roles`, `data`) VALUES
(1, 'Hello', 'system/text', 1, '1', NULL, '{\"content\":\"<h1 class=\\\"uk-heading-large uk-margin-large-bottom\\\">\\u6709\\u95ee\\u9898\\uff1f\\u5c31\\u6765<br class=\\\"uk-hidden-small\\\">\\u5e08\\u59d0\\u77e5\\u9053<\\/h1>\\n<p><a class=\\\"uk-button uk-button-large\\\" href=\\\"http:\\/\\/www.seniorknows.com\\/\\\">\\u4e00\\u952e\\u5339\\u914d<\\/a><\\/p>\"}'),
(2, 'SeniorKnows.com', 'system/text', 1, NULL, NULL, '{\"content\":\"<p>SeniorKnows.com<\\/p>\"}'),
(8, 'Left_A_Main_Intro', 'system/text', 0, NULL, NULL, '{\"content\":\"<h1 class=\\\"uk-heading-large\\\">\\u89e3\\u51b3<br class=\\\"uk-visible-large\\\"> \\u5b69\\u5b50\\u4f5c\\u4e1a\\u4e2d\\u7684<br class=\\\"uk-visible-large\\\"> \\u96be\\u9898<\\/h1>\\n<p class=\\\"uk-text-large\\\"><strong>\\u4e00\\u952e\\u6307\\u5bfc<\\/strong> \\u4e13\\u4e1a\\u5339\\u914d<\\/p>\"}'),
(9, 'Right_A_Main_Intro', 'system/text', 0, NULL, NULL, '{\"content\":\"<h1 class=\\\"uk-heading-large\\\">\\u89e3\\u7b54<br class=\\\"uk-visible-large\\\"> \\u8bba\\u6587\\u64b0\\u5199\\u65f6\\u7684<br class=\\\"uk-visible-large\\\"> \\u56f0\\u60d1<\\/h1>\\n<p class=\\\"uk-text-large\\\"><strong>\\u4e00\\u952e\\u6307\\u5bfc<\\/strong> \\u4e13\\u4e1a\\u5339\\u914d<\\/p>\"}'),
(11, 'slidershow_multiple_people', 'seniorslideshow/slideshowWidget', 1, '2', NULL, '{\"config\":{\"height\":290,\"animation\":\"slide\",\"animation_speed\":\"normal\",\"time_interval\":2500,\"pagination\":true},\"images\":[{\"src\":\"storage\\/newsletter\\/_MG_1633_preview.jpeg\",\"alt\":\"Seniors\",\"text\":\"<p>\\u8ba9\\u6211\\u4eec\\u5e2e\\u52a9\\u4f60\\u7ad9\\u5728\\u66f4\\u9ad8\\u7684\\u8d77\\u70b9\\u4e0a<\\/p>\"},{\"src\":\"storage\\/newsletter\\/_MG_1691_preview.jpeg\",\"alt\":\"question and answer\",\"text\":\"<p>\\u6709\\u95ee\\u5fc5\\u7b54<\\/p>\"},{\"src\":\"storage\\/newsletter\\/_MG_1788_preview.jpeg\",\"alt\":\"one on one\",\"text\":\"<p>\\u4e00\\u5bf9\\u4e00\\u8f85\\u5bfc<\\/p>\"}]}'),
(12, '师资全部信息', 'sbvideo/video-projects', 1, '13', NULL, '{\"content_selection\":\"random\",\"layout\":\"panel\",\"count\":4,\"items\":[],\"items_data\":[],\"teaser\":{\"show_title\":true,\"show_subtitle\":0,\"show_intro\":true,\"show_image\":true,\"show_client\":true,\"show_tags\":true,\"show_date\":1,\"show_data\":0,\"show_readmore\":0,\"show_thumbs\":true,\"template\":\"panel\",\"panel_style\":\"uk-panel-box\",\"overlay\":\"uk-overlay uk-overlay-hover\",\"overlay_position\":\"\",\"overlay_effect\":\"uk-overlay-fade\",\"overlay_image_effect\":\"uk-overlay-scale\",\"content_align\":\"left\",\"tags_align\":\"uk-flex-center\",\"title_size\":\"uk-h3\",\"title_color\":\"\",\"read_more\":\"Read more\",\"link_image\":\"uk-button\",\"read_more_style\":\"uk-button\",\"readmore_align\":\"uk-text-center\",\"thumbsize\":{\"width\":400,\"height\":\"\"},\"columns\":\"3\",\"columns_small\":\"4\",\"columns_medium\":\"\",\"columns_large\":\"6\",\"columns_xlarge\":\"6\",\"columns_gutter\":20}}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_userprofile_field`
--

CREATE TABLE `sjzd_userprofile_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_userprofile_field`
--

INSERT INTO `sjzd_userprofile_field` (`id`, `priority`, `type`, `label`, `slug`, `options`, `roles`, `data`) VALUES
(1, 0, 'upload', '头像', 'avartar', '[]', NULL, '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u5934\\u50cf\\u4e0a\\u4f20\",\"help_show\":\"\",\"hasOptions\":0,\"path\":\"uploads\",\"allowed\":[\"png\",\"jpg\",\"jpeg\"],\"max_size\":1,\"max_files\":1,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null}'),
(2, 1, 'upload', '学生证', 'certificate', '[]', '4', '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\\u5b66\\u751f\\u8bc1\",\"help_show\":\"\",\"hasOptions\":0,\"path\":\"uploads\",\"allowed\":[\"png\",\"jpg\",\"jpeg\",\"gif\",\"svg\"],\"max_size\":4,\"max_files\":0,\"multiple\":1,\"required\":0,\"controls\":null,\"repeatable\":null}'),
(3, 2, 'sitelink', '信息栏', '信息栏', '[]', NULL, '{\"value\":[\"\"],\"data\":{\"data0\":{\"value\":\"\",\"link_text\":\"\",\"blank\":0}},\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"max_repeat\":10,\"blank_default\":1,\"link_text_default\":\"\\u4e00\\u952e\\u8054\\u7cfb\",\"href_class\":\"\",\"multiple\":1}'),
(4, 3, 'textbox', '个人简介', '个人简介', '[]', NULL, '{\"value\":[],\"data\":[],\"classSfx\":\"\",\"help_text\":\"\",\"help_show\":\"\",\"hasOptions\":0,\"minLength\":0,\"maxLength\":0,\"rows\":4,\"placeholder\":\"\\u4ecb\\u7ecd\\u4e00\\u4e0b\\u4f60\\u81ea\\u5df1\",\"multiple\":0,\"controls\":null,\"repeatable\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_userprofile_value`
--

CREATE TABLE `sjzd_userprofile_value` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `multiple` smallint(6) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_userprofile_value`
--

INSERT INTO `sjzd_userprofile_value` (`id`, `user_id`, `field_id`, `multiple`, `value`, `data`) VALUES
(1, 2, 1, 1, NULL, '[]'),
(2, 3, 1, 1, NULL, '[]'),
(3, 4, 1, 1, NULL, '[]'),
(4, 4, 2, 1, NULL, '[]'),
(5, 4, 3, 1, 'https://zoom.us/j/9100221569', '{\"data0\":{\"value\":\"https:\\/\\/zoom.us\\/j\\/9100221569\",\"link_text\":\"\",\"blank\":0}}'),
(6, 5, 1, 1, NULL, '[]'),
(7, 5, 2, 1, NULL, '[]'),
(8, 5, 3, 1, '', '{\"data0\":{\"value\":\"\",\"link_text\":\"\",\"blank\":0}}'),
(9, 1, 1, 1, '-218647554403491971-Koala.jpeg', '{\"data0\":{\"value\":\"-218647554403491971-Koala.jpeg\",\"name\":\"-218647554403491971-Koala.jpeg\",\"size\":780831,\"path\":\"C:\\/xampp\\/htdocs\\/seniorknows_KeYang89\\/storage\\/uploads\\\\-218647554403491971-Koala.jpeg\",\"url\":\"storage\\/uploads\\/-218647554403491971-Koala.jpeg\"}}'),
(10, 1, 2, 1, NULL, '[]'),
(11, 1, 3, 1, '', '{\"data0\":{\"value\":\"\",\"link_text\":\"\",\"blank\":0}}');

-- --------------------------------------------------------

--
-- Table structure for table `sjzd_video_project`
--

CREATE TABLE `sjzd_video_project` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `date` datetime NOT NULL,
  `tags` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `images` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sjzd_video_project`
--

INSERT INTO `sjzd_video_project` (`id`, `status`, `priority`, `title`, `slug`, `subtitle`, `intro`, `content`, `client`, `image`, `date`, `tags`, `images`, `data`) VALUES
(1, 0, 1, '国内师兄师姐', 'chinese-speakers', 'chinese-speakers', '', '', '', '{\"teaser\":{\"src\":\"\",\"alt\":\"\"},\"main\":{\"src\":\"storage\\/uploads\\/_MG_1675_preview.jpeg\",\"alt\":\"shijiezhidao\"}}', '2017-11-16 00:04:02', '清华,北大,中科院,研究生,本科生,博士生,博士后,人大,对外经贸', '[{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"F\\u00c6\\u00efsP\\u00c6.jpg\",\"src\":\"storage\\/uploads\\/chinese\\/F\\u00c6\\u00efsP\\u00c6.jpg\",\"title\":\"F\\u00c6\\u00efsP\\u00c6\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"F\\u00c6\\u00efsP\\u00c61.jpg\",\"src\":\"storage\\/uploads\\/chinese\\/F\\u00c6\\u00efsP\\u00c61.jpg\",\"title\":\"F\\u00c6\\u00efsP\\u00c6\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"F\\u00c6\\u00efsP\\u00c62.jpg\",\"src\":\"storage\\/uploads\\/chinese\\/F\\u00c6\\u00efsP\\u00c62.jpg\",\"title\":\"F\\u00c6\\u00efsP\\u00c6\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"S\\u00a6\\u00f6\\u00b5\\u00d1\\u00e1\\u00b5\\u00d1\\u00e1.jpg\",\"src\":\"storage\\/uploads\\/chinese\\/S\\u00a6\\u00f6\\u00b5\\u00d1\\u00e1\\u00b5\\u00d1\\u00e1.jpg\",\"title\":\"S\\u00a6\\u00f6\\u00b5\\u00d1\\u00e1\\u00b5\\u00d1\\u00e1\"}]', '{\"markdown\":true,\"short_and_quick_american_english_intro\":\"\"}'),
(2, 1, 2, '外教', 'waijiao', 'English Speakers', '', '', '', '{\"teaser\":{\"src\":\"\",\"alt\":\"\"},\"main\":{\"src\":\"storage\\/uploads\\/%E7%BA%BD%E9%BB%91%E6%96%871_preview.jpeg\",\"alt\":\"shijiezhidao\"}}', '2017-11-28 18:59:28', '耶鲁大学,教授,研究生,本科生,博士生,博士后', '[{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"1.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/1.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"10.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/10.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"11.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/11.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"12.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/12.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"13.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/13.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"14.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/14.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"15.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/15.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"16.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/16.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"17.jpeg\",\"src\":\"storage\\/uploads\\/waijiao\\/17.jpeg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"18.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/18.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"19.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/19.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"2.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/2.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"20.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/20.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"21.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/21.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"22.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/22.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"23.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/23.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"24.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/24.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"25.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/25.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"26.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/26.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"27.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/27.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"28.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/28.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"29.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/29.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"3.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/3.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"30.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/30.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"31.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/31.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"32.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/32.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"33.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/33.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"34.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/34.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"35.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/35.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"4.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/4.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"5.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/5.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"6.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/6.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"7.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/7.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"8.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/8.jpg\",\"title\":\"\"},{\"show_teaser\":true,\"descr\":\"\",\"filename\":\"9.jpg\",\"src\":\"storage\\/uploads\\/waijiao\\/9.jpg\",\"title\":\"\"}]', '{\"markdown\":true,\"short_and_quick_american_english_intro\":\"Yale University\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mirrormx_customer_chat_data`
--
ALTER TABLE `mirrormx_customer_chat_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `key` (`key`);

--
-- Indexes for table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mirrormx_customer_chat_user`
--
ALTER TABLE `mirrormx_customer_chat_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_blog_comment`
--
ALTER TABLE `sjzd_blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sjzd_BLOG_COMMENT_AUTHOR` (`author`),
  ADD KEY `sjzd_BLOG_COMMENT_CREATED` (`created`),
  ADD KEY `sjzd_BLOG_COMMENT_STATUS` (`status`),
  ADD KEY `sjzd_BLOG_COMMENT_POST_ID` (`post_id`),
  ADD KEY `sjzd_BLOG_COMMENT_POST_ID_STATUS` (`post_id`,`status`);

--
-- Indexes for table `sjzd_blog_post`
--
ALTER TABLE `sjzd_blog_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sjzd_BLOG_POST_SLUG` (`slug`),
  ADD KEY `sjzd_BLOG_POST_TITLE` (`title`),
  ADD KEY `sjzd_BLOG_POST_USER_ID` (`user_id`),
  ADD KEY `sjzd_BLOG_POST_DATE` (`date`);

--
-- Indexes for table `sjzd_calendar_categories`
--
ALTER TABLE `sjzd_calendar_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_calendar_events`
--
ALTER TABLE `sjzd_calendar_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_formmaker_field`
--
ALTER TABLE `sjzd_formmaker_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FORMMAKER_FIELD_FORMID` (`form_id`);

--
-- Indexes for table `sjzd_formmaker_form`
--
ALTER TABLE `sjzd_formmaker_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_formmaker_submission`
--
ALTER TABLE `sjzd_formmaker_submission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_listings_category`
--
ALTER TABLE `sjzd_listings_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_listings_item`
--
ALTER TABLE `sjzd_listings_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_listings_listing`
--
ALTER TABLE `sjzd_listings_listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_listings_template`
--
ALTER TABLE `sjzd_listings_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_search_keywords`
--
ALTER TABLE `sjzd_search_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sjzd_SEARCH_KEYWORDS_WORD` (`word`),
  ADD KEY `sjzd_SEARCH_KEYWORDS_PUTDATE` (`putdate`);

--
-- Indexes for table `sjzd_system_auth`
--
ALTER TABLE `sjzd_system_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_system_config`
--
ALTER TABLE `sjzd_system_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sjzd_SYSTEM_CONFIG_NAME` (`name`);

--
-- Indexes for table `sjzd_system_node`
--
ALTER TABLE `sjzd_system_node`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_system_page`
--
ALTER TABLE `sjzd_system_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_system_role`
--
ALTER TABLE `sjzd_system_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sjzd_SYSTEM_ROLE_NAME` (`name`),
  ADD KEY `sjzd_SYSTEM_ROLE_NAME_PRIORITY` (`name`,`priority`);

--
-- Indexes for table `sjzd_system_session`
--
ALTER TABLE `sjzd_system_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_system_user`
--
ALTER TABLE `sjzd_system_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sjzd_SYSTEM_USER_USERNAME` (`username`),
  ADD UNIQUE KEY `sjzd_SYSTEM_USER_EMAIL` (`email`);

--
-- Indexes for table `sjzd_system_widget`
--
ALTER TABLE `sjzd_system_widget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_userprofile_field`
--
ALTER TABLE `sjzd_userprofile_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sjzd_userprofile_value`
--
ALTER TABLE `sjzd_userprofile_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `USERPROFILE_VALUES_USERID` (`user_id`);

--
-- Indexes for table `sjzd_video_project`
--
ALTER TABLE `sjzd_video_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PORTFOLIO_PROJECT_STATUS` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_data`
--
ALTER TABLE `mirrormx_customer_chat_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_user`
--
ALTER TABLE `mirrormx_customer_chat_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sjzd_blog_comment`
--
ALTER TABLE `sjzd_blog_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sjzd_blog_post`
--
ALTER TABLE `sjzd_blog_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sjzd_calendar_categories`
--
ALTER TABLE `sjzd_calendar_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sjzd_calendar_events`
--
ALTER TABLE `sjzd_calendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sjzd_formmaker_field`
--
ALTER TABLE `sjzd_formmaker_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sjzd_formmaker_form`
--
ALTER TABLE `sjzd_formmaker_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sjzd_formmaker_submission`
--
ALTER TABLE `sjzd_formmaker_submission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `sjzd_listings_category`
--
ALTER TABLE `sjzd_listings_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sjzd_listings_item`
--
ALTER TABLE `sjzd_listings_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sjzd_listings_listing`
--
ALTER TABLE `sjzd_listings_listing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sjzd_listings_template`
--
ALTER TABLE `sjzd_listings_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sjzd_search_keywords`
--
ALTER TABLE `sjzd_search_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sjzd_system_config`
--
ALTER TABLE `sjzd_system_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `sjzd_system_node`
--
ALTER TABLE `sjzd_system_node`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sjzd_system_page`
--
ALTER TABLE `sjzd_system_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sjzd_system_role`
--
ALTER TABLE `sjzd_system_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sjzd_system_user`
--
ALTER TABLE `sjzd_system_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sjzd_system_widget`
--
ALTER TABLE `sjzd_system_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sjzd_userprofile_field`
--
ALTER TABLE `sjzd_userprofile_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sjzd_userprofile_value`
--
ALTER TABLE `sjzd_userprofile_value`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sjzd_video_project`
--
ALTER TABLE `sjzd_video_project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
