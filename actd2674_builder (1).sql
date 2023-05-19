-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2023 at 05:30 PM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `actd2674_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_forms_roles`
--

CREATE TABLE `assign_forms_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_forms_roles`
--

INSERT INTO `assign_forms_roles` (`id`, `form_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 6, 3, '2023-05-13 13:00:23', '2023-05-13 13:00:23'),
(3, 7, 7, '2023-05-15 02:47:05', '2023-05-15 02:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `assign_forms_users`
--

CREATE TABLE `assign_forms_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `poll_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments_replies`
--

CREATE TABLE `comments_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `poll_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `size` double(8,2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `poll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `chart_type` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quetion` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `bccemail` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ccemail` varchar(255) DEFAULT NULL,
  `success_msg` text DEFAULT NULL,
  `thanks_msg` text DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `allow_share_section` bigint(20) DEFAULT NULL,
  `allow_comments` bigint(20) DEFAULT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `payment_type` varchar(255) DEFAULT NULL,
  `assign_type` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `json` text NOT NULL,
  `html` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `title`, `logo`, `bccemail`, `email`, `ccemail`, `success_msg`, `thanks_msg`, `amount`, `currency_symbol`, `currency_name`, `is_active`, `allow_share_section`, `allow_comments`, `payment_status`, `payment_type`, `assign_type`, `created_by`, `json`, `html`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'form_logo/P544KVSE2iwZdILXWJPZhpjjfImH28CxqIXUxT4o.png', 'venn88@yahoo.com', 'venn88@yahoo.com', 'venn88@yahoo.com', '', '', 0.00, NULL, NULL, 1, 0, 0, 0, NULL, 'public', '1', '[[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1683921086682-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"ParagraphParagraph,&nbsp;Paragraph,&nbsp;Paragraph\",\"column\":\"1\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1683921198149-0\",\"subtype\":\"textarea\",\"column\":\"1\"},{\"type\":\"text\",\"required\":false,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"text-1683921219057-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Company\",\"className\":\"form-control\",\"name\":\"text-1683921221660-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1683921230496-0\",\"subtype\":\"textarea\",\"column\":\"1\"},{\"type\":\"SignaturePad\",\"required\":false,\"label\":\"SignaturePad\",\"name\":\"SignaturePad-1683921123125-0\"}]]', '', '2023-05-12 12:49:20', '2023-05-13 11:43:11'),
(2, 'Test (copy)', 'form_logo/P544KVSE2iwZdILXWJPZhpjjfImH28CxqIXUxT4o.png', NULL, 'venn88@yahoo.com', NULL, '', '', 0.00, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, '1', '[[{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1683921086682-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024},{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"&lt;h1&gt;Paragraph&lt;/h1&gt;&lt;p&gt;Paragraph,&nbsp;Paragraph,&nbsp;Paragraph&lt;/p&gt;\",\"column\":\"1\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1683921198149-0\",\"subtype\":\"textarea\",\"column\":\"1\"},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1683921219057-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1683921221660-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1683921230496-0\",\"subtype\":\"textarea\",\"column\":\"1\"},{\"type\":\"SignaturePad\",\"required\":false,\"label\":\"SignaturePad\",\"name\":\"SignaturePad-1683921123125-0\"}]]', '', '2023-05-13 11:13:29', '2023-05-13 11:13:29'),
(4, 'Lap Tahap Awal', 'form_logo/R0vKu9bidWWiFePt5q7uwu4LW6aJ6Nx3iHY4V2nB.png', 'venn88@yahoo.com', 'venn88@yahoo.com', 'venn88@yahoo.com', '', '', 0.00, '', '', 1, 0, 0, 0, '', 'public', '3', '[[{\"type\":\"text\",\"required\":false,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"text-1684002997890-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Company\",\"className\":\"form-control\",\"name\":\"text-1684003006380-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Email\",\"className\":\"form-control\",\"name\":\"text-1684003002334-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Phone\",\"className\":\"form-control\",\"name\":\"text-1684003004748-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003078940-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003083283-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003171226-0\",\"subtype\":\"textarea\",\"column\":\"1\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003175243-0\",\"subtype\":\"textarea\",\"column\":\"1\"}]]', '', '2023-05-13 11:35:49', '2023-05-13 11:39:40'),
(5, 'Survey Awal', '', 'venn88@yahoo.com', 'venn88@yahoo.com', 'venn88@yahoo.com', '', '', 0.00, '', '', 1, 0, 0, 0, '', 'public', '1', '[[{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1684003517344-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1684003518903-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1684003519895-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"text\",\"required\":false,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1684003520863-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003526895-0\",\"subtype\":\"textarea\",\"column\":\"1\"},{\"type\":\"SignaturePad\",\"required\":false,\"label\":\"SignaturePad\",\"name\":\"SignaturePad-1684003523871-0\"}]]', '', '2023-05-13 11:44:52', '2023-05-13 11:45:31'),
(6, 'General Data base', '', 'test@gmail.com', 'test@gmail.com', 'test@gmail.com', '', '', 0.00, '', '', 1, 0, 0, 0, '', 'role', '3', '', '', '2023-05-13 13:00:23', '2023-05-13 13:00:23'),
(7, 'Tahap Preliminary Report (PR)', 'form_logo/pM32oe8j7xy1YFdAGO42Woae3pVIZvmLj9e0XeR5.png', 'venn88@yahoo.com', 'venn88@yahoo.com', 'venn88@yahoo.com', '', '', 0.00, '', '', 1, 0, 0, 0, '', 'role', '3', '', '', '2023-05-15 02:47:05', '2023-05-15 02:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `form_comments`
--

CREATE TABLE `form_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_comments_controllers`
--

CREATE TABLE `form_comments_controllers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_comments_replies`
--

CREATE TABLE `form_comments_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_values`
--

CREATE TABLE `form_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `json` text NOT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_values`
--

INSERT INTO `form_values` (`id`, `form_id`, `user_id`, `json`, `amount`, `currency_symbol`, `currency_name`, `transaction_id`, `status`, `payment_type`, `created_at`, `updated_at`) VALUES
(1, 4, 3, '[[{\"type\":\"text\",\"required\":false,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"text-1684002997890-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"Elyin trifena\"},{\"type\":\"text\",\"required\":false,\"label\":\"Company\",\"className\":\"form-control\",\"name\":\"text-1684003006380-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"marq\"},{\"type\":\"text\",\"required\":false,\"label\":\"Email\",\"className\":\"form-control\",\"name\":\"text-1684003002334-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"venn88@yahoo.com\"},{\"type\":\"text\",\"required\":false,\"label\":\"Phone\",\"className\":\"form-control\",\"name\":\"text-1684003004748-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"085959829092\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003078940-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/a9GtSBuN5uI7uNtc3ihbvLn8c0byPw62zM3gTjJu.png\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003083283-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/vcqncWlXPsCvZzFE9rail33x2y9cV8abBHap0qnM.png\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003171226-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"hahahahahah\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003175243-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"ahhahahaha\"}]]', NULL, NULL, NULL, NULL, 'free', NULL, '2023-05-13 11:40:24', '2023-05-13 11:40:24'),
(2, 4, 1, '[[{\"type\":\"text\",\"required\":false,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"text-1684002997890-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"jack\"},{\"type\":\"text\",\"required\":false,\"label\":\"Company\",\"className\":\"form-control\",\"name\":\"text-1684003006380-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"jack\"},{\"type\":\"text\",\"required\":false,\"label\":\"Email\",\"className\":\"form-control\",\"name\":\"text-1684003002334-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"jacky.hans88@gmail.com\"},{\"type\":\"text\",\"required\":false,\"label\":\"Phone\",\"className\":\"form-control\",\"name\":\"text-1684003004748-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"1231414\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003078940-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/PhPjUe7PdZYCxonPZnaJGSvqwKdYVQAFryuY4Ywz.png\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003083283-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/LV8ARLrEgUjtyeGCdZ2puNN8j1NwveaLV5In5boQ.png\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003171226-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"wkwkkwkwkwkwk\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003175243-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"wkkwkwkwkkwkwk\"}]]', NULL, NULL, NULL, NULL, 'free', NULL, '2023-05-13 11:42:46', '2023-05-13 11:42:46'),
(3, 4, NULL, '[[{\"type\":\"text\",\"required\":false,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"text-1684002997890-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"venn\"},{\"type\":\"text\",\"required\":false,\"label\":\"Company\",\"className\":\"form-control\",\"name\":\"text-1684003006380-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"marq\"},{\"type\":\"text\",\"required\":false,\"label\":\"Email\",\"className\":\"form-control\",\"name\":\"text-1684003002334-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"venn@gmail.com\"},{\"type\":\"text\",\"required\":false,\"label\":\"Phone\",\"className\":\"form-control\",\"name\":\"text-1684003004748-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"5656565665\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003078940-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/ITQbo9EOg7OaR3rXEkB7cRNvON2G1aJ869KNX2jE.png\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003083283-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/QfNa7lOgEvrDrPY9awp3UxCpNF7qLFCqPp4xQCdy.png\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003171226-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"hahahahahhahahahahhahahahhahahahhahahahhahah wkwkwkwkkwkwkwkkwkwkwkwkwkwkw\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003175243-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"hahahahahhahahahahhahahahhahahahhahahahhahah wkwkwkwkkwkwkwkkwkwkwkwkwkwkw\"}]]', NULL, NULL, NULL, NULL, 'free', NULL, '2023-05-13 11:48:31', '2023-05-13 11:48:31'),
(4, 4, 1, '[[{\"type\":\"text\",\"required\":false,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"text-1684002997890-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"ricky\"},{\"type\":\"text\",\"required\":false,\"label\":\"Company\",\"className\":\"form-control\",\"name\":\"text-1684003006380-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"ricky\"},{\"type\":\"text\",\"required\":false,\"label\":\"Email\",\"className\":\"form-control\",\"name\":\"text-1684003002334-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"ricky@mail.com\"},{\"type\":\"text\",\"required\":false,\"label\":\"Phone\",\"className\":\"form-control\",\"name\":\"text-1684003004748-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"47488484848\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003078940-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/AdyFK4GdMJyDajC82o61rTTdKoHgBRyQLIoWQt9I.png\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003083283-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/8heH73umshLcC4HW1wMEhDY6qIQ1c9trKS0iAxQa.png\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003171226-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"hwhwhwhwhhwhwhwhwhhw\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003175243-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"wlakwkakkwkakak\"}]]', NULL, NULL, NULL, NULL, 'free', NULL, '2023-05-13 12:54:17', '2023-05-13 12:54:17'),
(5, 4, 3, '[[{\"type\":\"text\",\"required\":false,\"label\":\"Name\",\"className\":\"form-control\",\"name\":\"text-1684002997890-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"melvin\"},{\"type\":\"text\",\"required\":false,\"label\":\"Company\",\"className\":\"form-control\",\"name\":\"text-1684003006380-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"melvin\"},{\"type\":\"text\",\"required\":false,\"label\":\"Email\",\"className\":\"form-control\",\"name\":\"text-1684003002334-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"melvin@mailll.ccom\"},{\"type\":\"text\",\"required\":false,\"label\":\"Phone\",\"className\":\"form-control\",\"name\":\"text-1684003004748-0\",\"subtype\":\"text\",\"column\":\"1\",\"is_client_email\":false,\"value\":\"9449854985\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003078940-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/V72VB24GWOeKY2VwYzbKHGEUSh1aLlxitOoO8sUL.png\"},{\"type\":\"file\",\"required\":false,\"label\":\"File Upload\",\"className\":\"form-control\",\"name\":\"file-1684003083283-0\",\"subtype\":\"file\",\"multiple\":false,\"column\":\"1\",\"file_extention\":\"image\",\"max_file_size_mb\":1024,\"value\":\"form_values\\/4\\/ZFtG6ZVaw2Nr0UoL4lVfHpQNpgwR3MuWwsQzbd5I.png\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003171226-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"555555\"},{\"type\":\"textarea\",\"required\":false,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1684003175243-0\",\"subtype\":\"textarea\",\"column\":\"1\",\"value\":\"55555\"}]]', NULL, NULL, NULL, NULL, 'free', NULL, '2023-05-13 12:57:27', '2023-05-13 12:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `image_polls`
--

CREATE TABLE `image_polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vote` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `poll_id` bigint(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_securities`
--

CREATE TABLE `login_securities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `google2fa_enable` tinyint(1) NOT NULL DEFAULT 0,
  `google2fa_secret` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `mailable` varchar(255) NOT NULL,
  `subject` text DEFAULT NULL,
  `html_template` longtext NOT NULL,
  `text_template` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `mailable`, `subject`, `html_template`, `text_template`, `created_at`, `updated_at`) VALUES
(1, 'App\\Mail\\TestMail', 'Mail send for testing purpose', '<p><strong>This Mail For Testing</strong></p>\n            <p><strong>Thanks</strong></p>', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(2, 'App\\Mail\\Thanksmail', 'New survey Submited - {{ title }}', '<div class=\"section-body\">\n            <div class=\"row mx-0\">\n            <div class=\"col-6 mx-auto\">\n            <div class=\"card\">\n            <div class=\"card-header\">\n            <h4 class=\"text-center w-100\">{{ title }}</h4>\n            </div>\n            <div class=\"card-body\">\n            <div class=\"text-center\">\n            <img src=\"{{image}}\" id=\"app-dark-logo\" class=\"img img-responsive my-5 w-30 justify-content-center text-center\"/>\n            </div>\n            <h2 class=\"text-center w-100\">{{ thanks_msg }}</h2>\n            </div>\n            </div>\n            </div>\n            </div>\n            </div>', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(3, 'App\\Mail\\PasswordReset', 'Reset Password Notification', '<p><strong>Hello!</strong></p><p>You are receiving this email because we received a password reset request for your account. To proceed with the password reset please click on the link below:</p><p><a href=\"{{url}}\">Reset Password</a></p><p>This password reset link will expire in 60 minutes.&nbsp;<br>If you did not request a password reset, no further action is required.</p>', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(4, 'App\\Mail\\ConatctMail', 'New Enquiry Details.', '<p><strong>Name : {{name}}</strong></p>\n\n            <p><strong>Email : </strong><strong>{{email}}</strong></p>\n\n            <p><strong>Contact No : {{ contact_no }}&nbsp;</strong></p>\n\n            <p><strong>Message :&nbsp;</strong><strong>{{ message }}</strong></p>', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_polls`
--

CREATE TABLE `meeting_polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `vote` datetime DEFAULT NULL,
  `poll_id` bigint(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_24_000000_create_settings_table', 1),
(4, '2018_10_10_000000_create_mail_templates_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_09_22_192348_create_messages_table', 1),
(7, '2019_10_16_211433_create_favorites_table', 1),
(8, '2019_10_18_223259_add_avatar_to_users', 1),
(9, '2019_10_20_211056_add_extra_fields_to_users', 1),
(10, '2019_10_20_211056_add_messenger_color_to_users', 1),
(11, '2019_10_22_000539_add_dark_mode_to_users', 1),
(12, '2019_10_25_214038_add_active_status_to_users', 1),
(13, '2020_08_22_121757_create_forms_table', 1),
(14, '2020_08_22_121758_create_form_values_table', 1),
(15, '2021_03_05_112733_create_modules_table', 1),
(16, '2021_03_10_032138_add_coloumn_module_table', 1),
(17, '2021_06_16_083454_create_login_securities_table', 1),
(18, '2021_06_16_115243_create_permission_tables', 1),
(19, '2021_08_10_060033_create_user_form_table', 1),
(20, '2021_08_25_050952_add_lang_field_in_users_table', 1),
(21, '2021_08_8_032138_add_coloumn_form_table', 1),
(22, '2021_09_21_060524_add_client_msg__to_forms__table', 1),
(23, '2021_10_14_085757_amount_to_forms_table', 1),
(24, '2021_10_14_085944_amount_to_form_values_table', 1),
(25, '2021_10_19_041655_add_payment_status_to_forms_table', 1),
(26, '2022_02_07_070446_add_payment_to_forms_table', 1),
(27, '2022_02_07_114611_add_payment_type_to_form_values_table', 1),
(28, '2022_02_21_032724_create_social_logins_table', 1),
(29, '2022_05_19_043539_social_type', 1),
(30, '2022_08_26_120030_add_status_to_form_values_table', 1),
(31, '2022_09_14_044629_create_polls_table', 1),
(32, '2022_09_23_065225_create_multiple_choices_table', 1),
(33, '2022_09_23_065251_create_meeting_polls_table', 1),
(34, '2022_09_23_065324_create_image_polls_table', 1),
(35, '2022_09_29_055159_add_forms_cc', 1),
(36, '2022_10_04_063224_create_comments_table', 1),
(37, '2022_10_04_063242_create_comments_replies_table', 1),
(38, '2022_10_13_102234_create_form_comments_controllers_table', 1),
(39, '2022_10_13_121737_create_form_comments_replies_table', 1),
(40, '2022_10_13_121754_create_form_comments_table', 1),
(41, '2022_10_14_051557_allow_section', 1),
(42, '2022_11_29_065355_create_dashboard_widgets_table', 1),
(43, '2023_01_17_072809_create_faqs_table', 1),
(44, '2023_01_17_103524_add_assign_type_to_forms_table', 1),
(45, '2023_02_06_115445_create_sms_templates_table', 1),
(46, '2023_02_06_115716_create_user_codes_table', 1),
(47, '2023_02_06_120602_add_country_code_to_users_table', 1),
(48, '2023_02_24_054509_create_assign_forms_users_table', 1),
(49, '2023_02_24_061824_create_assign_forms_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 2),
(8, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `permission`, `created_at`, `updated_at`) VALUES
(1, 'module', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(2, 'role', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(3, 'user', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(4, 'permission', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(5, 'setting', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(6, 'form', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(7, 'mailtemplate', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(8, 'submitted-form', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(9, 'language', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(10, 'chat', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(11, 'poll', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(12, 'dashboardwidget', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(13, 'frontend', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(14, 'faqs', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `multiple_choices`
--

CREATE TABLE `multiple_choices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vote` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `poll_id` bigint(20) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage-permission', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(2, 'create-permission', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(3, 'edit-permission', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(4, 'delete-permission', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(5, 'manage-role', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(6, 'create-role', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(7, 'edit-role', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(8, 'delete-role', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(9, 'manage-mailtemplate', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(10, 'create-mailtemplate', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(11, 'edit-mailtemplate', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(12, 'delete-mailtemplate', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(13, 'manage-user', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(14, 'create-user', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(15, 'edit-user', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(16, 'delete-user', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(17, 'manage-module', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(18, 'create-module', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(19, 'edit-module', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(20, 'delete-module', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(21, 'manage-setting', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(22, 'manage-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(23, 'create-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(24, 'edit-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(25, 'delete-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(26, 'design-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(27, 'fill-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(28, 'duplicate-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(29, 'show-submitted-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(30, 'manage-submitted-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(31, 'edit-submitted-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(32, 'delete-submitted-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(33, 'download-submitted-form', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(34, 'create-language', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(35, 'manage-language', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(36, 'manage-chat', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(37, 'manage-poll', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(38, 'create-poll', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(39, 'edit-poll', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(40, 'delete-poll', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(41, 'vote-poll', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(42, 'result-poll', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(43, 'manage-dashboardwidget', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(44, 'create-dashboardwidget', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(45, 'edit-dashboardwidget', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(46, 'delete-dashboardwidget', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(47, 'vote-dashboardwidget', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(48, 'result-dashboardwidget', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(49, 'manage-frontend', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(50, 'create-frontend', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(51, 'edit-frontend', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(52, 'delete-frontend', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(53, 'manage-faqs', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(54, 'create-faqs', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(55, 'edit-faqs', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(56, 'delete-faqs', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `voting_type` varchar(255) DEFAULT NULL,
  `multiple_answer_options` text DEFAULT NULL,
  `require_participants_names` varchar(255) DEFAULT NULL,
  `voting_restrictions` varchar(255) DEFAULT NULL,
  `set_end_date` varchar(255) DEFAULT NULL,
  `hide_participants_from_each_other` varchar(255) DEFAULT NULL,
  `set_end_date_time` datetime DEFAULT NULL,
  `allow_comments` varchar(255) DEFAULT NULL,
  `results_visibility` varchar(255) DEFAULT NULL,
  `image_answer_options` text DEFAULT NULL,
  `image_require_participants_names` varchar(255) DEFAULT NULL,
  `image_voting_restrictions` varchar(255) DEFAULT NULL,
  `image_set_end_date` varchar(255) DEFAULT NULL,
  `image_set_end_date_time` datetime DEFAULT NULL,
  `image_allow_comments` varchar(255) DEFAULT NULL,
  `image_hide_participants_from_each_other` varchar(255) DEFAULT NULL,
  `image_results_visibility` varchar(255) DEFAULT NULL,
  `meeting_answer_options` text DEFAULT NULL,
  `meeting_fixed_time_zone` varchar(255) DEFAULT NULL,
  `meetings_fixed_time_zone` varchar(255) DEFAULT NULL,
  `limit_selection_to_one_option_only` varchar(255) DEFAULT NULL,
  `meeting_set_end_date` varchar(255) DEFAULT NULL,
  `meeting_set_end_date_time` datetime DEFAULT NULL,
  `meeting_allow_comments` varchar(255) DEFAULT NULL,
  `meeting_hide_participants_from_each_other` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-05-12 12:45:23', '2023-05-12 12:45:23'),
(2, 'User', 'web', '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(3, 'Sekretaris', 'web', '2023-05-13 07:37:01', '2023-05-13 07:37:01'),
(4, 'Direktur', 'web', '2023-05-13 07:37:09', '2023-05-13 07:37:09'),
(5, 'Keuangan', 'web', '2023-05-13 07:37:19', '2023-05-13 07:37:19'),
(6, 'Tenaga Ahli', 'web', '2023-05-13 07:37:34', '2023-05-13 07:37:34'),
(7, 'Adjuster', 'web', '2023-05-13 07:37:41', '2023-05-13 07:37:41'),
(8, 'Admin1', 'web', '2023-05-13 11:23:25', '2023-05-13 11:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 8),
(2, 1),
(2, 3),
(2, 8),
(3, 1),
(3, 3),
(3, 8),
(4, 1),
(4, 3),
(4, 8),
(5, 1),
(5, 3),
(5, 8),
(6, 1),
(6, 3),
(6, 8),
(7, 1),
(7, 3),
(7, 8),
(8, 1),
(8, 3),
(8, 8),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 3),
(13, 8),
(14, 1),
(14, 3),
(14, 8),
(15, 1),
(15, 3),
(15, 8),
(16, 1),
(16, 3),
(16, 8),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(22, 3),
(22, 8),
(23, 1),
(23, 3),
(23, 8),
(24, 1),
(24, 3),
(24, 8),
(25, 1),
(25, 3),
(25, 8),
(26, 1),
(26, 3),
(26, 8),
(27, 1),
(27, 3),
(27, 8),
(28, 1),
(28, 3),
(28, 8),
(29, 1),
(29, 8),
(30, 1),
(30, 8),
(31, 1),
(31, 8),
(32, 1),
(32, 8),
(33, 1),
(33, 8),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'app_name', 'Vixpro Form Builder'),
(2, 'app_logo', 'uploads/appLogo/app-logo.png'),
(3, 'app_small_logo', 'uploads/appLogo/app-small-logo.png'),
(4, 'favicon_logo', 'uploads/appLogo/app-favicon-logo.png'),
(5, 'default_language', 'en'),
(6, 'color', 'theme-2'),
(7, 'app_dark_logo', 'uploads/appLogo/app-dark-logo.png'),
(8, 'settingtype', 'local'),
(9, 'date_format', 'M j, Y'),
(10, 'time_format', 'g:i A'),
(11, 'roles', 'User'),
(12, 'rtl', '0'),
(13, '2fa', '0'),
(14, 'register', '0'),
(15, 'email_verification', '0'),
(16, 'sms_verification', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(255) NOT NULL,
  `template` text DEFAULT NULL,
  `variables` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `event`, `template`, `variables`, `created_at`, `updated_at`) VALUES
(1, 'test_sms', 'Hello :name, Your verification code is :code', 'name', '2023-05-12 12:45:24', '2023-05-12 12:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_type` varchar(255) DEFAULT NULL,
  `social_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'uploads/avatar/avatar.png',
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'India',
  `messenger_color` varchar(255) NOT NULL DEFAULT '#2180f3',
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `country_code` varchar(255) DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `lang` varchar(255) DEFAULT NULL,
  `social_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `email_verified_at`, `password`, `remember_token`, `avatar`, `address`, `country`, `messenger_color`, `active_status`, `country_code`, `phone_verified_at`, `phone`, `dark_mode`, `lang`, `social_type`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@example.com', 'Admin', '2023-05-12 12:45:24', '$2y$10$zi5BGHprejvzy6wn8tMededWG8hYRL0eRnLGsZjLJgwj9vglhXJ62', NULL, 'uploads/avatar/avatar.png', NULL, 'India', '#2180f3', 1, NULL, '2023-05-12 12:45:24', NULL, 0, 'en', NULL, '2023-05-12 12:45:24', '2023-05-12 12:45:24'),
(2, 'John', 'john@gmail.com', 'Adjuster', '2023-05-13 07:40:19', '$2y$10$UAR6..qG4kjGEHl9JcB9IeBdaUdgSmcc4rURwDoBFcMiwTZbS5nqC', NULL, 'uploads/avatar/avatar.png', NULL, 'India', '#2180f3', 1, '62', '2023-05-13 07:40:19', '5757575757', 0, 'en', NULL, '2023-05-13 07:40:19', '2023-05-13 07:40:19'),
(3, 'admin', 'admin@gmail.com', 'Admin1', '2023-05-13 11:25:10', '$2y$10$4n8QZxFsZtFvt9rLPbiNB.ahaSezKpc8ekTYar6DdxSqigFKvDaTC', NULL, 'uploads/avatar/avatar.png', NULL, 'India', '#2180f3', 1, '62', '2023-05-13 11:25:10', '4646464646', 0, 'en', NULL, '2023-05-13 11:25:10', '2023-05-13 11:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_codes`
--

CREATE TABLE `user_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_forms`
--

CREATE TABLE `user_forms` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_forms`
--

INSERT INTO `user_forms` (`role_id`, `form_id`, `created_at`, `updated_at`) VALUES
(7, 3, '2023-05-13 11:27:10', '2023-05-13 11:27:10'),
(3, 6, '2023-05-13 13:00:23', '2023-05-13 13:00:23'),
(7, 7, '2023-05-15 02:47:05', '2023-05-15 02:47:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_forms_roles`
--
ALTER TABLE `assign_forms_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_forms_roles_form_id_index` (`form_id`),
  ADD KEY `assign_forms_roles_role_id_index` (`role_id`);

--
-- Indexes for table `assign_forms_users`
--
ALTER TABLE `assign_forms_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_forms_users_form_id_index` (`form_id`),
  ADD KEY `assign_forms_users_user_id_index` (`user_id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments_replies`
--
ALTER TABLE `comments_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_comments`
--
ALTER TABLE `form_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_comments_controllers`
--
ALTER TABLE `form_comments_controllers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_comments_replies`
--
ALTER TABLE `form_comments_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_values`
--
ALTER TABLE `form_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_polls`
--
ALTER TABLE `image_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_securities`
--
ALTER TABLE `login_securities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_polls`
--
ALTER TABLE `meeting_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiple_choices`
--
ALTER TABLE `multiple_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_codes`
--
ALTER TABLE `user_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_forms`
--
ALTER TABLE `user_forms`
  ADD KEY `user_forms_role_id_index` (`role_id`),
  ADD KEY `user_forms_form_id_index` (`form_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_forms_roles`
--
ALTER TABLE `assign_forms_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assign_forms_users`
--
ALTER TABLE `assign_forms_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_replies`
--
ALTER TABLE `comments_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `form_comments`
--
ALTER TABLE `form_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_comments_controllers`
--
ALTER TABLE `form_comments_controllers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_comments_replies`
--
ALTER TABLE `form_comments_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_values`
--
ALTER TABLE `form_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image_polls`
--
ALTER TABLE `image_polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_securities`
--
ALTER TABLE `login_securities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meeting_polls`
--
ALTER TABLE `meeting_polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `multiple_choices`
--
ALTER TABLE `multiple_choices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_codes`
--
ALTER TABLE `user_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
