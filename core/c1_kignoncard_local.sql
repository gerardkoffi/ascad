-- phpMyAdmin SQL Dump
-- version 5.0.4deb2ubuntu5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2021 at 06:21 PM
-- Server version: 8.0.27-0ubuntu0.21.10.1
-- PHP Version: 7.2.34-28+ubuntu21.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c1_kignoncard_local`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'MR ADMIN', 'admin@email.com', 'admin', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'JpPlEGhlFQB18XKykRjI9mcdOv5QJpy682JYancfKDXGgODCPmDQwSfFIsix', 'superadmin', '2018-05-18 18:00:00', '2018-05-24 01:23:18'),
(3, 'Melanie', 'melaine@kignon.com', 'melanie', '$2y$12$sR7.hskMjFv5IW7m7jitxeUptpFtJKjUzA.9tuYVRJaUNPTwJ9VoW', 'kKxhdogbGZzH2buToW14NNowGqk9c13Zpsmu2lbw5DHY9CVC1JiPPKm9oahb', 'staff', '2021-07-14 21:17:38', '2021-07-14 21:17:38'),
(4, 'Stephanie', 'stephanie@kignon.com', 'stephanie', '$2y$10$jDdmthbr9qSS77aZx/kN1est1PpkGHJu5doLvXnNtusnQIqu44plS', 'K0OFe6OviKW6jRslZpxTblh7xDBXmBW0Fj6H54eCPnW8PbDdUjCdp51uzbah', 'staff', '2021-07-14 21:18:27', '2021-07-14 21:18:27'),
(5, 'Patricia', 'patricia@kignon.com', 'patricia', '$2y$10$NbobD/.jhGOWqA7IGBatz.JmViDWb/KD1uaXxkdLJUW5M10Jonrq2', '01Dd70GQcYESY0KkkSl77xVjeN2fR15zDAX8H9IIEBHh5gQv8Ztm7X2cQv1W', 'staff', '2021-07-14 21:19:14', '2021-07-14 21:19:14'),
(6, 'Danielle', 'danielle@kignon.com', 'danielle', '$2y$10$1VYal9KEGqSKWLMWJnLX9Obc5NrC.dAwcc0F.boE6nvGFytGEeOC6', 'w4O7Q8pTwywFYkgd3XZn0JMjUePTKCHtPcgHkh3IZaUcqxHcyMHHtWHvzwtp', 'staff', '2021-07-14 21:19:58', '2021-07-14 21:19:58'),
(7, 'Esther', 'Esther@gmail.com', 'Esther', '$2y$10$q/hAfPkFe2L.3HmSJuaHR./WusQyUanT1/baAPEkJThoPdUdX8Z1S', 'esIIePriYWEKn0zXYvITzkipCRT3b5Xs1O5lLDJ9u0v3vYmxOF8oGL0vlb5x', 'staff', '2021-11-17 09:49:39', '2021-11-17 09:49:39'),
(8, 'sylvie', 'sylie@gmail.com', 'sylvie', '$2y$10$.szo3v6JRAJy8eam.FFdmu4ENBjlA1rhqWuENzPEb1IQC683qB1G2', NULL, 'staff', '2021-11-23 09:51:01', '2021-11-23 09:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `des`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'assets/images/blog/1535449337.softwareSliderImg.jpg', 0, '2018-08-15 03:44:24', '2018-08-28 13:42:18'),
(3, 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'assets/images/blog/1535449361.banner_blog3.jpg', 0, '2018-08-15 04:26:48', '2018-08-28 13:42:41'),
(4, 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'assets/images/blog/1534332816.03.jpg', 0, '2018-08-15 04:26:57', '2018-10-09 12:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `cardcategories`
--

CREATE TABLE `cardcategories` (
  `id` int UNSIGNED NOT NULL,
  `cat_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cardcategories`
--

INSERT INTO `cardcategories` (`id`, `cat_name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kignon Card', 'assets/images/categoryimage/1538668643.1536052030.jpg', 1, '2018-09-04 03:07:10', '2021-10-21 14:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category_id` int DEFAULT NULL,
  `status` tinyint NOT NULL,
  `expired_card` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `name`, `card_details`, `card_image`, `user_id`, `category_id`, `sub_category_id`, `status`, `expired_card`, `created_at`, `updated_at`) VALUES
(37, 'CARTE 1000', '0023', '', 19, 1, 1, 1, '2021-09-05 00:00:00', '2021-08-27 13:36:08', '2021-08-27 13:38:01'),
(38, '\'Oka Ferdinand Kouakou', '0005', '', 468, 1, 1, 1, '2022-10-22 00:00:00', '2021-10-21 14:40:05', '2021-10-21 14:41:28'),
(39, 'Kouame Arsene', '0006', '', 577, 1, 1, 1, '2022-10-22 00:00:00', '2021-10-22 13:57:59', '2021-10-25 15:30:53'),
(40, 'SANOGO Abdoulaye', '0102', '', 578, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:38:06', '2021-10-26 17:58:45'),
(41, 'AHONON Eden Herve', '0034', '', 581, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:44:03', '2021-10-29 17:22:28'),
(42, 'AHONON Eden Herve', '0122', '', 601, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:44:26', '2021-11-01 16:47:35'),
(43, 'AHOU Marie Stephanie', '0035', '', 670, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:47:42', '2021-11-09 10:32:02'),
(44, 'AHUA Joel', '1256', '', 678, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:49:17', '2021-11-09 11:12:19'),
(45, 'AKA Ange Eric', '0033', '', 681, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:50:47', '2021-11-09 11:23:05'),
(46, 'AKE Ligue Franck', '0241', '', 715, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:52:12', '2021-11-24 16:25:53'),
(47, 'AKOHUE Brou Etienne', '0150', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:53:44', '2021-10-26 12:53:44'),
(48, 'AMADOU Abdourahim', '0084', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:57:50', '2021-10-26 12:57:50'),
(49, 'AMONCHI Annick', '0124', '', 370, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 12:59:11', '2021-10-26 17:21:47'),
(50, 'ASSI N dah Kouakou Pacome', '0243', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:01:47', '2021-10-26 13:01:47'),
(51, 'ASSOIN Romuald', '0231', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:03:23', '2021-10-26 13:03:23'),
(52, 'ASSOUAKON Angui', '0193', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:04:30', '2021-10-26 13:04:30'),
(53, 'BAMBA Salimata', '0234', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:05:37', '2021-10-26 13:05:37'),
(54, 'BIH Toussaint', '0220', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:07:08', '2021-10-26 13:07:08'),
(55, 'COLONEL Tee', '1252', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:08:40', '2021-10-26 13:08:40'),
(56, 'COMOE Boris Romaric', '0217', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:09:51', '2021-10-26 13:09:51'),
(57, 'CRESUS Angelin', '0120', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:11:10', '2021-10-26 13:11:10'),
(58, 'DAGO Andrix', '0175', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:12:11', '2021-10-26 13:12:11'),
(59, 'DELI Franck Yvan', '0229', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:13:23', '2021-10-26 13:13:23'),
(60, 'DEZAI Hugues Ghislain', '0245', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:14:26', '2021-10-26 13:14:26'),
(61, 'DIALO Alpha Amadou', '0221', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:15:54', '2021-10-26 13:15:54'),
(62, 'DIDI Yvan', '0198', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:17:05', '2021-10-26 13:17:05'),
(63, 'DOGBO Thierry', '0189', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:18:14', '2021-10-26 13:18:14'),
(64, 'DRIA Franck Arnold', '0247', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:19:55', '2021-10-26 13:19:55'),
(65, 'DRO Benedicte Natacha', '0014', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:20:56', '2021-10-26 13:20:56'),
(66, 'FANNY Cheickh Tidiane Moussa', '0065', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:22:27', '2021-10-26 13:22:27'),
(67, 'GBOBOUO Aristide', '0133', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:23:57', '2021-10-26 13:23:57'),
(68, 'GNAKOU Andrie', '0029', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:25:02', '2021-10-26 13:25:02'),
(69, 'GORE BI Anthelme', '0106', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:26:05', '2021-10-26 13:26:05'),
(70, 'GOUE Lionel Rodrigue', '0219', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:27:45', '2021-10-26 13:27:45'),
(71, 'GUEBLON Guy Herve', '0225', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:29:34', '2021-10-26 13:29:34'),
(72, 'GUISSA Jonas', '0238', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:30:42', '2021-10-26 13:30:42'),
(73, 'KAMATA Issiaka', '0242', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:32:01', '2021-10-26 13:32:01'),
(74, 'KALOU Eugenie', '0235', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:32:58', '2021-10-26 13:32:58'),
(75, 'YUSUF Adenyi', '0064', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:34:29', '2021-10-26 13:34:29'),
(76, 'ZADI Succes', '1262', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:35:37', '2021-10-26 13:35:37'),
(77, 'ZAN LOU Josiane Tonia', '0232', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:36:41', '2021-10-26 13:36:41'),
(78, 'ZEHI Stephanie', '0140', '', NULL, 1, 1, 1, '2022-10-20 00:00:00', '2021-10-26 13:37:42', '2021-10-26 13:37:42'),
(79, 'ZIGUE Berhe Soulemane', '0201', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:39:04', '2021-10-26 13:39:04'),
(80, 'ZRAE BI Tizie Nathan', '0143', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:40:11', '2021-10-26 13:40:11'),
(81, 'SYLLA Bintou', '0136', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:41:37', '2021-10-26 13:41:37'),
(82, 'SYLLA Elise', '0236', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:42:40', '2021-10-26 13:42:40'),
(83, 'TETTI Marie Ruth', '1254', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:44:17', '2021-10-26 13:44:17'),
(84, 'THIERRY Fabrice', '1257', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:45:25', '2021-10-26 13:45:25'),
(85, 'TYSHA Sabine', '0224', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:46:24', '2021-10-26 13:46:24'),
(86, 'YAKE Alfred', '1261', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:47:34', '2021-10-26 13:47:34'),
(87, 'YAO Soulemane Ouattara', '0299', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:49:04', '2021-10-26 13:49:04'),
(88, 'YAPI Claude', '0237', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:50:09', '2021-10-26 13:50:09'),
(89, 'YAPO Charlotte Angelique', '0250', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:51:13', '2021-10-26 13:51:13'),
(90, 'YOBOUE Alain Franck', '0121', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:53:18', '2021-10-26 13:53:18'),
(91, 'KONATE Lamine', '0007', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:58:18', '2021-10-26 13:58:18'),
(92, 'KONE Cheick', '0228', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 13:59:30', '2021-10-26 13:59:30'),
(93, 'KONE Kady', '0249', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:00:32', '2021-10-26 14:00:32'),
(94, 'KOUA Andre', '0233', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:03:08', '2021-10-26 14:03:08'),
(95, 'KOUACHA Charlotte', '0018', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:04:22', '2021-10-26 14:04:22'),
(96, 'KOUADIO Bah Arnaud', '0016', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:05:26', '2021-10-26 14:05:26'),
(97, 'KOUADIO Caroline', '0017', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:06:18', '2021-10-26 14:06:18'),
(98, 'KOUADIO Bah Arnaud', '0077', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:08:20', '2021-10-26 14:08:20'),
(99, 'KOUAHO Akissi Charlotte', '0098', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:09:29', '2021-10-26 14:09:29'),
(100, 'KOUAHO Ezechkiel', '0157', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:10:28', '2021-10-26 14:10:28'),
(101, 'KOUAKOU Christian', '0042', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:11:33', '2021-10-26 14:11:33'),
(102, 'KOUAME Arsene', '0006', '', 577, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:12:33', '2021-10-27 11:39:40'),
(103, 'KOUAME Marthe Donatienne', '0223', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:14:03', '2021-10-26 14:14:03'),
(104, 'KOUAME Estime', '0227', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:14:52', '2021-10-26 14:14:52'),
(105, 'KOUAME Baumel', '1255', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:16:33', '2021-10-26 14:16:33'),
(106, 'KOUAME N dri Aristide', '0196', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:18:38', '2021-10-26 14:18:38'),
(107, 'KOUASSI Adja Sandrine', '0040', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:19:59', '2021-10-26 14:19:59'),
(108, 'KOUASSI Michael', '0197', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:21:19', '2021-10-26 14:21:19'),
(109, 'KOUASSI Severein', '0240', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:22:30', '2021-10-26 14:22:30'),
(110, 'KOUKOUGNON Hilarie', '0216', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:23:36', '2021-10-26 14:23:36'),
(111, 'KROU Yao Kossonou Sylvestre', '0218', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:26:25', '2021-10-26 14:26:25'),
(112, 'LATH Roland Ange Espoir', '0226', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:27:40', '2021-10-26 14:27:40'),
(113, 'LECADOU Ange Armelle', '0138', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:28:58', '2021-10-26 14:28:58'),
(114, 'LONAN Coulibaly', '1260', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:30:08', '2021-10-26 14:30:08'),
(115, 'M. AMON Agnan Ignace', '0091', '', NULL, 1, 1, 1, '2022-10-24 00:00:00', '2021-10-26 14:31:37', '2021-10-26 14:31:37'),
(116, 'MOBIO Daniel', '0230', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:32:40', '2021-10-26 14:32:40'),
(117, 'MOBOU Basile', '0052', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:33:41', '2021-10-26 14:33:41'),
(118, 'MORAK Abraham Florent', '0200', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:34:43', '2021-10-26 14:34:43'),
(119, 'NABI Aka Georges', '0101', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:36:34', '2021-10-26 14:36:34'),
(120, 'NABO Alain', '0222', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:37:25', '2021-10-26 14:37:25'),
(121, 'OSI Franck', '0244', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:41:46', '2021-10-26 14:41:46'),
(122, 'OTAYECK Brice', '0183', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:42:55', '2021-10-26 14:42:55'),
(123, 'OUATTARA Emmanuel', '0191', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:44:04', '2021-10-26 14:44:04'),
(124, 'OURAGA Agou Guy Martial', '0083', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:45:23', '2021-10-26 14:45:23'),
(125, 'POHERI Christ', '0169', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:46:46', '2021-10-26 14:46:46'),
(126, 'SANOGO Sakaria', '0100', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:48:28', '2021-10-26 14:48:28'),
(127, 'SANOGO Abdoulaye', '0102', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:49:19', '2021-10-26 14:49:19'),
(128, 'SERI Benito', '0148', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:50:08', '2021-10-26 14:50:08'),
(129, 'SILUE Michael', '0181', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:51:24', '2021-10-26 14:51:24'),
(130, 'SIRIKY Tchima', '0239', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:52:42', '2021-10-26 14:52:42'),
(131, 'SOUKOU Lisette', '0248', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 14:54:47', '2021-10-26 14:54:47'),
(132, 'YOBOUE Alain  Franck', '1253', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:07:39', '2021-10-26 15:07:39'),
(133, 'ADO Jean', '0045', '', 360, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:17:06', '2021-10-26 16:10:39'),
(134, 'ADISSA Gaudens Didier', '0046', '', 358, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:18:23', '2021-10-26 15:18:53'),
(135, 'ABBE Ntamon Herve', '0146', '', 578, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:20:46', '2021-10-26 18:00:04'),
(136, 'ABOYA Jesus Maxime', '0037', '', 355, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:27:54', '2021-10-26 16:09:15'),
(137, 'ACHI Patrick', '0073', '', 356, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:29:17', '2021-10-26 16:09:33'),
(138, 'ACHIMI Ismael', '0160', '', 357, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:30:18', '2021-10-26 16:09:51'),
(139, 'ADOU Kobenan Valery', '0163', '', 361, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:34:20', '2021-10-26 16:14:04'),
(140, 'AGO Evrard Didier', '0107', '', 362, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:35:56', '2021-10-26 16:14:23'),
(141, 'AHO LOU Valentin', '0041', '', 363, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:37:15', '2021-10-26 16:14:41'),
(142, 'AKRE Raoul Junior', '0092', '', 367, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:41:25', '2021-10-26 16:15:04'),
(143, 'AMANTCHI Niamke Ezoua  Franck', '0159', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:43:56', '2021-10-26 15:43:56'),
(144, 'AMOUSSOU Obed', '0210', '', 372, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:46:05', '2021-10-27 09:18:44'),
(145, 'ANASSE Estelle', '0053', '', 373, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:47:06', '2021-10-27 09:19:42'),
(146, 'ANDRE Yann', '0178', '', 375, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:48:25', '2021-10-27 09:22:42'),
(147, 'ASSEMIAN PASCAL', '0078', '', 376, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:50:08', '2021-10-27 09:23:28'),
(148, 'ATTIE Sia Emmanuel', '0103', '', 379, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:52:02', '2021-10-27 09:28:09'),
(149, 'AYARA Joshua', '0012', '', 380, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:53:10', '2021-10-27 09:28:52'),
(150, 'BALE Hugues Olivier', '0013', '', 381, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:54:12', '2021-10-27 09:30:18'),
(151, 'YVAN Franck', '0038', '', 570, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:55:35', '2021-10-27 13:07:59'),
(152, 'ZAGO Mariette', '0057', '', 571, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:56:36', '2021-10-27 13:03:01'),
(153, 'ZAO Kouame Vincent', '0093', '', 572, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:57:26', '2021-10-27 13:02:27'),
(154, 'BANHIE Ivan Raoul', '0206', '', 382, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 15:59:06', '2021-10-27 09:31:17'),
(155, 'BEDE Adehi Goy Serge Michel', '0097', '', 383, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:00:10', '2021-10-27 09:32:02'),
(156, 'BEDGRE Louis Alexandre', '0020', '', 384, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:00:59', '2021-10-27 09:33:02'),
(157, 'BEHIO Messy Guy Franck', '0112', '', 385, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:02:12', '2021-10-27 09:34:03'),
(158, 'BLEOU Emmanuel', '0022', '', 387, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:04:26', '2021-10-27 09:34:47'),
(159, 'GBOBOUO Aristide', '0133', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:06:21', '2021-10-26 16:06:21'),
(160, 'BOKA Valerie', '0043', '', 389, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:07:14', '2021-10-27 09:38:10'),
(161, 'BOUHO Remi', '0114', '', 390, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:08:09', '2021-10-27 09:37:17'),
(162, 'CAMARA Harissou', '0199', '', 391, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:09:14', '2021-10-27 09:39:13'),
(163, 'CHINEDU Innocent', '0195', '', 392, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:10:40', '2021-10-27 09:40:08'),
(164, 'COULIBALY Lacine', '0142', '', 394, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:11:45', '2021-10-27 09:42:04'),
(165, 'COULIBALY Yire Gueko', '0139', '', 395, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:12:59', '2021-10-27 09:44:25'),
(166, 'COULIBALY Lacine', '0015', '', 393, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:14:22', '2021-10-27 09:43:50'),
(167, 'DIBLADE Roussel', '0149', '', 399, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:15:26', '2021-10-27 09:53:12'),
(168, 'DION Rita', '0059', '', 401, 1, 1, 1, '2022-10-20 00:00:00', '2021-10-26 16:16:15', '2021-10-27 09:53:52'),
(169, 'ESMEL Francoise', '0184', '', 410, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:17:12', '2021-10-27 10:09:41'),
(170, 'ETTIEN Martial', '0128', '', 411, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:17:55', '2021-10-27 10:10:57'),
(171, 'DOUDOU Sidoine', '0192', '', 408, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:19:00', '2021-10-27 10:04:15'),
(172, 'DONGO Pamela', '0075', '', 406, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:19:59', '2021-10-27 10:03:03'),
(173, 'DIVIE Kouakou Christian', '0027', '', 402, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:20:59', '2021-10-27 09:52:15'),
(174, 'DJA AGNE Moise', '0188', '', 403, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:21:54', '2021-10-27 09:55:10'),
(175, 'DOFFOU Ncho Francisse', '0096', '', 404, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:22:43', '2021-10-27 10:01:58'),
(176, 'KOUASSI Jemie', '0056', '', 478, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:31:22', '2021-10-27 11:50:17'),
(177, 'KOUASSI Lohure Leon', '0036', '', 480, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:32:17', '2021-10-27 11:52:11'),
(178, 'KOUASSI Lydie', '0058', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:33:16', '2021-10-26 16:33:16'),
(179, 'KOUASSI Kouadio Pocas', '0085', '', 479, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:34:23', '2021-10-27 11:51:12'),
(180, 'KOUASSI Olive', '0211', '', 483, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:35:47', '2021-10-27 11:57:50'),
(181, 'KOUMAN Parfait', '0141', '', 485, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:37:10', '2021-10-27 11:59:15'),
(182, 'KOUROUMA Dieudonne Ben Yaya', '0171', '', 486, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:38:03', '2021-10-27 12:00:31'),
(183, 'KRAMO Kouadio Omer', '0145', '', 487, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:38:54', '2021-10-27 12:01:14'),
(184, 'LAHAROU Herman', '0088', '', 488, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:39:51', '2021-10-27 12:03:05'),
(185, 'LEVRY Serge Dadie', '0062', '', 490, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:40:50', '2021-10-27 12:06:46'),
(186, 'LOBOGNON Jean Jerome', '1259', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:43:46', '2021-10-26 16:43:46'),
(187, 'LOGNON Ruth', '0204', '', 492, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:44:41', '2021-10-27 12:07:18'),
(188, 'LOHOUROU Goly Fabrice', '0025', '', 493, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:45:36', '2021-10-27 12:08:14'),
(189, 'M BR', '0115', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:48:15', '2021-10-26 16:48:15'),
(190, 'M ALLAGBA Kouadio Etienne', '0090', '', 496, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:50:03', '2021-10-27 12:13:39'),
(191, 'M SAMI Fabrice', '0094', '', 498, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:51:04', '2021-10-27 12:10:40'),
(192, 'MARTIN Silue', '0001', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:52:16', '2021-10-26 16:52:16'),
(193, 'M BOUA Jean Marc', '0095', '', 500, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:54:12', '2021-10-27 12:12:43'),
(194, 'MIAN Ehouman Jean Noel', '0072', '', 501, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:54:53', '2021-10-27 12:21:29'),
(195, 'N DRIN Tanoh Junior', '0048', '', 504, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:55:42', '2021-10-27 13:46:42'),
(196, 'N GUESSAN Yao Alain Claude', '0066', '', 505, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:56:43', '2021-10-27 13:50:42'),
(197, 'N TAKPE Ghislain Evrard', '0069', '', 506, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:57:36', '2021-10-27 13:51:19'),
(198, 'N ZI Koffi Ange', '0118', '', 507, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 16:59:27', '2021-10-27 13:52:04'),
(199, 'NAHOUNOU Henri', '0108', '', 509, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:00:31', '2021-10-27 13:43:09'),
(200, 'ONANNE Doriane', '0185', '', 510, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:01:32', '2021-10-27 13:39:44'),
(201, 'OUAN Graoua Sidi Mohamed', '0209', '', 512, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:02:26', '2021-10-27 13:40:15'),
(202, 'SAHI Francine', '0187', '', 519, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:03:25', '2021-10-27 13:36:03'),
(203, 'OUATTARA Homibe Ibrahima', '0182', '', 515, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:04:34', '2021-10-27 13:38:40'),
(204, 'OUATTARA Daouda', '0131', '', 513, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:05:12', '2021-10-27 13:40:48'),
(205, 'SAKOUA Stephane', '0202', '', 520, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:08:01', '2021-10-27 13:35:38'),
(206, 'SANOGO Leila Sarah', '0055', '', 522, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:08:54', '2021-10-27 13:35:04'),
(207, 'SEKI Tatiana', '0123', '', 524, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:09:51', '2021-10-27 13:33:46'),
(208, 'SEKONGO Ponan Fousseni', '0162', '', 525, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:10:40', '2021-10-27 13:33:03'),
(209, 'SERY Tagro Alex', '0156', '', 527, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:11:29', '2021-10-27 13:32:32'),
(210, 'SHEP Sie Stephane', '0151', '', 528, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:12:27', '2021-10-27 13:31:50'),
(211, 'SIKO Monsekea', '0060', '', 529, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:13:24', '2021-10-27 13:31:03'),
(212, 'SIRIKI Meite', '0028', '', 532, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:14:10', '2021-10-27 13:30:20'),
(213, 'SOHOU Kpazahi C. Hermann', '0002', '', 533, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:14:55', '2021-10-27 13:27:34'),
(214, 'SORO kifori', '0054', '', 535, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:16:19', '2021-10-27 13:26:59'),
(215, 'SORO Zana Claude', '0154', '', 536, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:17:06', '2021-10-27 13:26:29'),
(216, 'SOUANAN Franck Sylvain', '0082', '', 537, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:18:11', '2021-10-27 13:25:54'),
(217, 'SOUROU Joance', '0174', '', 538, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:19:07', '2021-10-27 13:25:30'),
(218, 'KOIKON Laetitia Christelle', '0116', '', 443, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:23:46', '2021-10-27 11:06:13'),
(219, 'KOISSY Diane', '0194', '', 445, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:24:49', '2021-10-27 11:07:10'),
(220, 'KOUAME Dieudonné Khecep', '0003', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 17:26:04', '2021-10-26 17:26:04'),
(221, 'Nda Konan Mathurin', '0104', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 20:53:02', '2021-10-26 20:53:02'),
(222, 'KOLEU Maria Josee', '0176', '', 447, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 20:54:16', '2021-10-27 11:10:01'),
(223, 'KONAN Danielle', '0089', '', 449, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 20:58:04', '2021-10-27 11:16:32'),
(224, 'KOMENAN Kevin', '0081', '', 448, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 20:59:08', '2021-10-27 11:11:39'),
(225, 'KONAN Lozo Kevin', '0144', '', 450, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:01:19', '2021-10-27 11:18:42'),
(226, 'KONAN Mohamed', '0153', '', 451, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:02:56', '2021-10-27 11:19:11'),
(227, 'KONE Guy Herman', '0158', '', 453, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:04:31', '2021-10-27 11:22:20'),
(228, 'KONON Xavier Ramonic', '0051', '', 454, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:08:14', '2021-10-27 11:21:54'),
(229, 'GUILLAUME KOUA', '0031', '', 455, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:10:54', '2021-10-27 11:28:32'),
(230, 'KOUA Kouame Mathurin', '0214', '', 456, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:13:34', '2021-10-27 11:29:06'),
(231, 'KOUACOU Aboh Leon', '0186', '', 239, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:14:59', '2021-10-27 11:30:47'),
(232, 'KOUADIO Eder', '0071', '', 462, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:18:54', '2021-10-27 11:31:53'),
(233, 'KOUADIO Kouakou Noel', '1258', '', 305, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:21:55', '2021-10-27 11:32:33'),
(234, 'KOUAKOU Oka Ferdinand', '0005', '', 468, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:23:06', '2021-10-27 11:35:38'),
(235, 'KOUAKOU Fabio', '0113', '', 466, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:24:24', '2021-10-27 11:35:05'),
(236, 'KOUAME Dieudonné Khecep', '0003', '', 473, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:25:52', '2021-10-27 11:40:10'),
(237, 'KOUAME Koffi Jean Desire', '0147', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:27:03', '2021-10-26 21:27:03'),
(238, 'KOUAME Innocent', '0180', '', 474, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:29:32', '2021-10-27 11:40:56'),
(239, 'TABLE Micheline', '0172', '', 540, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:30:50', '2021-10-27 13:24:53'),
(240, 'YIWO Stephanie', '0177', '', 566, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:32:21', '2021-10-27 12:59:57'),
(241, 'YOHO Doua Michel', '0076', '', 568, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:33:17', '2021-10-27 13:00:31'),
(242, 'YEO Nontonhoua', '0167', '', 565, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:34:55', '2021-10-27 12:59:08'),
(243, 'YEO Foungatrgue', '0135', '', 564, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:36:20', '2021-10-27 12:58:40'),
(244, 'YAPO Herbert', '0190', '', 563, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:38:22', '2021-10-27 13:09:14'),
(245, 'YAPO Eric', '0009', '', 562, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:39:02', '2021-10-27 13:10:25'),
(246, 'YAPI N guessan Marcel', '0119', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:40:20', '2021-10-26 21:40:20'),
(247, 'YAPI N guessan Marcel', '0119', '', 561, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:42:38', '2021-10-27 13:11:38'),
(248, 'YAO Yapi Franck Ferdinand', '0063', '', 559, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:44:33', '2021-10-27 13:12:11'),
(249, 'YAO N guessan Edwige', '0039', '', 558, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:46:13', '2021-10-27 13:13:06'),
(250, 'TUO Samuel', '0166', '', 557, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:47:13', '2021-10-27 13:17:02'),
(251, 'TRAORE Fousseni', '0212', '', 554, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:48:57', '2021-10-27 13:16:40'),
(252, 'TRAORE Kanou Raissa', '0155', '', 555, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:50:24', '2021-10-27 13:16:20'),
(253, 'TRAORE Youssouf', '0008', '', 556, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:51:45', '2021-10-27 13:15:58'),
(254, 'TRA SEHI Lou Aurelie', '0026', '', 553, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:52:41', '2021-10-27 13:17:33'),
(255, 'ALIDJARI TOURE', '0023', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:55:19', '2021-10-26 21:55:19'),
(256, 'TOHAHI Kime', '0004', '', 551, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:56:58', '2021-10-27 13:19:15'),
(257, 'TOBIN Anatole', '0047', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:58:19', '2021-10-26 21:58:19'),
(258, 'TIEOULE Jean Cyrille', '0087', '', 549, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 21:59:14', '2021-10-27 13:18:43'),
(259, 'TIECOURA Monsessie Joel Arnaud', '0164', '', 547, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 22:00:26', '2021-10-27 13:19:56'),
(260, 'TIA Franck Eric', '0099', '', 546, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 22:01:43', '2021-10-27 13:20:49'),
(261, 'TAPE Cynthia', '0179', '', 544, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 22:02:39', '2021-10-27 13:22:19'),
(262, 'TANOH Konan Jose Sylvain', '0126', '', 543, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 22:03:47', '2021-10-27 13:23:08'),
(263, 'TANO Kacou Jean Claude', '0068', '', 542, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 22:05:23', '2021-10-27 13:23:40'),
(264, 'TADE Drepoba Samuel', '0207', '', 541, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 22:06:35', '2021-10-27 13:24:18'),
(265, 'FOFANA Mariame', '0030', '', 414, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 22:08:35', '2021-10-27 10:13:53'),
(266, 'GABO Doga Guy Aime', '0070', '', 415, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-26 22:09:43', '2021-10-27 10:21:05'),
(267, 'GATTA Elie', '0032', '', 416, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:44:09', '2021-10-27 10:23:36'),
(268, 'GBAGUIDI Clement', '1263', '', 262, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:46:48', '2021-10-27 10:25:08'),
(269, 'GBALE Ntakpe Arsene Martinien', '0152', '', 417, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:47:38', '2021-10-27 10:26:27'),
(270, 'GBOUA Leandre Desire', '0067', '', 419, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:48:40', '2021-10-27 10:27:48'),
(271, 'GNABELY Degui Kevin Ulrich', '0110', '', 420, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:50:33', '2021-10-27 10:28:50'),
(272, 'GNAHORE Sonia Welly', '0203', '', 421, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:51:44', '2021-10-27 10:29:37'),
(273, 'GONGBE Serge', '0208', '', 423, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:52:59', '2021-10-27 10:35:21'),
(274, 'GOTTA Ineka', '0011', '', 425, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:53:54', '2021-10-27 10:34:50'),
(275, 'GOUDA Thierry', '0137', '', 426, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:54:52', '2021-10-27 10:34:04'),
(276, 'GOUET Sephora Gislaine', '0165', '', 427, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:55:51', '2021-10-27 10:32:26'),
(277, 'GUEU Goueu Pacome', '0109', '', 428, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:57:00', '2021-10-27 10:31:56'),
(278, 'GUILI Stephane', '0111', '', 429, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:57:42', '2021-10-27 10:37:50'),
(279, 'HIE Cecile', '0010', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 08:59:13', '2021-10-27 08:59:13'),
(280, 'IBO Jean Marie', '0127', '', 431, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:00:16', '2021-10-27 10:39:39'),
(281, 'IKECHUKWU Nicolas', '0129', '', 432, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:01:11', '2021-10-27 10:40:19'),
(282, 'KAMAGATE Moustapha', '0130', '', 434, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:02:52', '2021-10-27 10:55:42'),
(283, 'ILIZO Franck', '0134', '', 433, 1, 1, 1, '2022-10-28 00:00:00', '2021-10-27 09:04:06', '2021-10-27 10:40:44'),
(284, 'KANGA N guessan Benjamin', '0074', '', 435, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:05:00', '2021-10-27 10:57:15'),
(285, 'KEKE Yoro Watonne Roland', '0080', '', 436, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:05:47', '2021-10-27 10:58:14'),
(286, 'KEMBO WELE Jean Jacques', '0105', '', 437, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:06:38', '2021-10-27 10:59:06'),
(287, 'KODJO Marceline', '0170', '', 438, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:07:27', '2021-10-27 10:59:41'),
(288, 'KOFFI Dominique', '0125', '', 439, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:08:28', '2021-10-27 11:00:12'),
(289, 'KOFFI Elge', '0132', '', 440, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:09:12', '2021-10-27 11:00:43'),
(290, 'KOFFI Guy Roland Arnaud', '0173', '', 441, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:10:35', '2021-10-27 11:01:30'),
(291, 'KOFFIBA Josiane', '0205', '', 442, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 09:11:40', '2021-10-27 11:05:03'),
(292, 'ADJALOU Kouassi Marcelin', '0213', '', 359, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 16:07:00', '2021-10-27 16:07:44'),
(293, 'KOKO Nda Konan Mathurin', '0104', '', 446, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 16:31:11', '2021-10-27 16:31:52'),
(294, 'LOUA Wilfrid', '0021', '', 494, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-27 16:45:15', '2021-10-27 16:45:48'),
(295, 'SILUE Martin', '0001', '', 86, 1, 1, 0, '2022-10-25 00:00:00', '2021-10-27 16:57:59', '2021-10-27 22:46:43'),
(296, 'carte-test', '1111', '', 579, 1, 1, 1, '2021-11-12 00:00:00', '2021-10-27 19:52:26', '2021-10-27 19:53:23'),
(297, 'carte-innocent', '1235', '', 579, 1, 1, 1, '2021-10-31 00:00:00', '2021-10-27 20:47:43', '2021-10-27 20:49:13'),
(298, 'AND Kouame Frederic', '0019', '', 205, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-28 10:08:33', '2021-10-28 10:09:05'),
(299, 'BOBOU Vianney Marie Dominique', '0161', '', 388, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-28 10:12:36', '2021-10-28 10:13:24'),
(300, 'KOUAME Koffi Jean Desire', '0147', '', 475, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-28 10:33:13', '2021-10-28 10:33:55'),
(301, 'COULIBALY Adama', '0509', '', 580, 1, 1, 1, '2022-10-27 00:00:00', '2021-10-29 13:20:10', '2021-10-29 16:58:04'),
(302, 'ADAMA Coulibaly', '0509', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:27:48', '2021-10-29 13:27:48'),
(303, 'ADEBODJE Elikiam', '0575', '', 6, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:28:40', '2021-10-29 17:03:58'),
(304, 'ADOMAN Etienne', '0518', '', 7, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:29:14', '2021-10-29 17:06:53'),
(305, 'AGBEDJE Gael Donald', '0609', '', 8, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:30:23', '2021-10-29 17:09:31'),
(306, 'AKA Jean', '0566', '', 9, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:30:59', '2021-10-29 17:11:04'),
(307, 'ALAIN Christian Deuchoua', '0612', '', 10, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:32:02', '2021-10-29 17:13:38'),
(308, 'ALOUINE Fall', '0536', '', 11, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:32:36', '2021-10-29 17:14:55'),
(309, 'AMADOU Bamba', '0529', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:34:07', '2021-10-29 13:34:07'),
(310, 'AMBMA Rodney', '0690', '', 582, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:34:42', '2021-10-29 17:26:08'),
(311, 'AMELIE Amelie', '0602', '', 583, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:35:19', '2021-10-29 17:28:47'),
(312, 'AMESNIPO  Kossi Dodzi Emanuel', '0513', '', 584, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:36:42', '2021-10-29 22:03:02'),
(313, 'AMONSTM Dtigori', '0549', '', 585, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:37:29', '2021-10-29 22:05:42'),
(314, 'AMOUSSA Isaac', '0604', '', 14, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:38:07', '2021-10-29 22:09:15'),
(315, 'ANDREN Jackson', '0585', '', 15, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:38:53', '2021-10-29 22:12:30'),
(316, 'ANGE Frederic Tape', '0519', '', 16, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:39:38', '2021-10-29 22:14:40'),
(317, 'APATA Marc', '0506', '', 643, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:40:14', '2021-11-02 09:36:11'),
(318, 'ARNAUD Ehouman', '0560', '', 18, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:41:07', '2021-10-29 22:16:42'),
(319, 'ATEBI Ziriga Faustin', '0505', '', 23, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:42:17', '2021-10-29 22:20:44'),
(320, 'BABA Timote', '0641', '', 586, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:43:12', '2021-10-29 22:23:22'),
(321, 'BAKOH Timi Sonhon', '0564', '', 24, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:43:51', '2021-10-29 22:26:09'),
(322, 'BANI Amessan', '0579', '', 587, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:44:20', '2021-10-29 22:28:38'),
(323, 'BAOUA Abdallam Abdoul Ramane', '0539', '', 588, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:45:24', '2021-10-29 22:31:28'),
(324, 'BASSA Kouadio Martial', '0556', '', 589, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:46:13', '2021-10-29 22:34:24'),
(325, 'BATCHINY Amadou', '0684', '', 590, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:46:52', '2021-10-29 22:36:39'),
(326, 'BEN Ibrahim Diaby', '0593', '', 26, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:47:35', '2021-10-29 22:39:17'),
(327, 'BIEKRE Franck', '0676', '', 591, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:50:06', '2021-10-29 22:41:37'),
(328, 'BLACK Danny', '0574', '', 28, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:50:38', '2021-10-29 22:50:10'),
(329, 'BONNY Jean Marc Koffi', '0551', '', 29, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:51:39', '2021-10-29 22:51:57'),
(330, 'CAMARA Abdel Rahim Konan', '0672', '', 592, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:52:22', '2021-10-29 22:54:20'),
(331, 'CAMARA Malick', '0673', '', 593, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:52:59', '2021-10-29 22:58:06'),
(332, 'CELESTIN Harembee', '0588', '', 30, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:53:40', '2021-10-29 23:01:03'),
(333, 'CHARLES Anthony Ndri', '0526', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:54:39', '2021-10-29 13:54:39'),
(334, 'SERGE Eric And Jemian', '0515', '', 594, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:56:05', '2021-10-29 23:10:02'),
(335, 'SEYDOU Zerbo', '0534', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:56:48', '2021-10-29 13:56:48'),
(336, 'SILUE Aboubacar', '0598', '', 595, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:57:29', '2021-10-29 23:13:04'),
(337, 'SILUE Razak', '0657', '', 596, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:58:06', '2021-10-29 23:16:09'),
(338, 'SOPPO Priso Frederick', '0605', '', 115, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:58:56', '2021-10-29 23:21:07'),
(339, 'SORO Idriss', '0675', '', 116, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 13:59:44', '2021-10-29 23:24:04'),
(340, 'STEPHANE Yraou', '0545', '', 117, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:00:22', '2021-10-29 23:26:10'),
(341, 'TAO Christine', '0666', '', 597, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:01:09', '2021-10-29 23:37:11'),
(342, 'TOUSSAINT Kouame', '0584', '', 119, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:02:30', '2021-10-29 23:39:07'),
(343, 'WALY Coly Faye', '0569', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:03:09', '2021-10-29 14:03:09'),
(344, 'WILLIAMS Usher', '0525', '', 121, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:03:51', '2021-10-30 00:00:40'),
(345, 'WODIE Nathan', '0578', '', 122, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:04:31', '2021-10-30 00:03:06'),
(346, 'YACOUBA Silly', '0540', '', 123, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:05:05', '2021-10-30 00:05:12'),
(347, 'YAO Kouame Wilfried', '0553', '', 124, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:05:57', '2021-10-30 00:07:37'),
(348, 'YAO Kevin', '0600', '', 598, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:06:26', '2021-10-30 00:10:57'),
(349, 'YELIETI Yann', '0577', '', 125, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:07:16', '2021-10-30 00:13:02'),
(350, 'YOAN Ndri', '0516', '', 599, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:07:52', '2021-10-30 00:15:31'),
(351, 'YOBOUA Tano', '0524', '', 127, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:08:31', '2021-10-30 00:17:29'),
(352, 'ZEZE Olivier', '0685', '', 600, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:09:07', '2021-10-30 00:19:36'),
(353, 'CHRISTIAN Mr Glin', '0663', '', 32, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:10:52', '2021-11-01 16:45:22'),
(354, 'CISSE Seindou Abdoul Razack', '0618', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:11:56', '2021-10-29 14:11:56'),
(355, 'COULIBALY Goudou', '0687', '', 602, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:12:44', '2021-11-01 16:56:35'),
(356, 'COULIBALY Fatele Albert', '0530', '', 603, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:13:32', '2021-11-01 16:59:07'),
(357, 'COULIBALY Guillaume', '0692', '', 604, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:14:09', '2021-11-01 17:01:46'),
(358, 'COULIBALY Seydou', '0603', '', 605, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:14:50', '2021-11-01 17:04:39'),
(359, 'D OLIVEIRA Elvis', '0670', '', 606, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:15:39', '2021-11-01 17:07:24'),
(360, 'DIALLO Belko', '0595', '', 607, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:16:21', '2021-11-01 17:10:08'),
(361, 'DIARRASOUBA Aboubakar', '0573', '', 608, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:17:16', '2021-11-01 17:14:15'),
(362, 'DIENG Dieng', '0601', '', 609, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:17:52', '2021-11-01 17:16:28'),
(363, 'DIOMANDE Mamadou', '0606', '', 610, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:18:31', '2021-11-01 17:19:23'),
(364, 'DIOMANDE Louh Marc', '0659', '', 36, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:19:11', '2021-11-01 17:22:30'),
(365, 'DIOMANDE Mohamed', '0511', '', 611, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:19:54', '2021-11-01 17:24:15'),
(366, 'DIOP Diop', '0510', '', 1, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:20:23', '2021-11-01 17:25:52'),
(367, 'DJESSI Dylan', '0616', '', 38, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:21:07', '2021-11-01 17:28:58'),
(368, 'DOUKOURE Tidiane', '0662', '', 39, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:21:41', '2021-11-01 17:31:05'),
(369, 'DRAMERA Mohamed', '0615', '', 40, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:22:22', '2021-11-01 17:33:20'),
(370, 'EKRA Jean Baptiste', '0614', '', 41, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:23:10', '2021-11-01 17:35:51'),
(371, 'EZZEDINE Diallo', '0537', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:23:49', '2021-10-29 14:23:49'),
(372, 'FANNY Lacina', '0582', '', 43, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:24:26', '2021-11-01 17:38:18'),
(373, 'FAWAZ Morallex', '0689', '', 612, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:25:22', '2021-11-01 17:40:34'),
(374, 'FAYE Coly', '0517', '', 120, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:25:54', '2021-10-29 23:42:30'),
(375, 'GASPARD Mathieu', '0644', '', 614, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:26:31', '2021-11-01 17:49:15'),
(376, 'GBEULI Michael Guero', '0589', '', 615, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:27:26', '2021-11-01 18:01:09'),
(377, 'GEORGES Kprakpra', '0535', '', 46, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:28:08', '2021-11-01 18:03:09'),
(378, 'GNABA Ange', '0637', '', 616, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:28:51', '2021-11-01 18:06:13'),
(379, 'GNAHOUI Nestis', '0658', '', 96, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:29:41', '2021-11-01 18:08:13'),
(380, 'GUYONNET Kevin', '0668', '', 617, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:32:01', '2021-11-01 18:10:33'),
(381, 'HABIB Coulibaly', '0508', '', 618, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:32:37', '2021-11-01 18:12:20'),
(382, 'HABIB Baue', '0558', '', 619, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:33:41', '2021-11-01 18:15:09'),
(383, 'HABIB Yasseen Bamba', '0587', '', 620, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:34:27', '2021-11-01 18:17:43'),
(384, 'HANS Djaikou', '0686', '', 621, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:34:57', '2021-11-01 18:20:00'),
(385, 'HASSEN Ily', '0570', '', 51, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:36:06', '2021-11-01 19:42:49'),
(386, 'HERVE Ndoba', '0522', '', 53, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:36:43', '2021-11-01 19:44:16'),
(387, 'HERVE Ehouman', '0586', '', 52, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:37:17', '2021-11-01 19:45:30'),
(388, 'HUSSEIS Zarour', '0514', '', 56, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:38:52', '2021-11-01 19:46:34'),
(389, 'IDRISS Coulibaly', '0541', '', 634, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:40:04', '2021-11-01 19:48:44'),
(390, 'JEAN MART Behou', '0550', '', 635, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:40:50', '2021-11-01 19:51:25'),
(391, 'JOSEPH Emissah', '0542', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:41:28', '2021-10-29 14:41:28'),
(392, 'KADIATOU Doumbia', '0548', '', 60, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:42:13', '2021-11-01 19:53:12'),
(393, 'KADIO Yannick', '0691', '', 636, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:42:52', '2021-11-01 19:55:08'),
(394, 'KAFANA Nafo', '0660', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:43:33', '2021-10-29 14:43:33'),
(395, 'KAFI Mohamed', '0667', '', 62, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:44:17', '2021-11-01 20:00:46'),
(396, 'KANGAH Assemian Frederic', '0594', '', 637, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:45:17', '2021-11-01 20:17:25'),
(397, 'KANTE Ismael', '0555', '', 58, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:45:54', '2021-11-01 20:24:59'),
(398, 'KASSI Jean Claude', '0561', '', 63, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:46:35', '2021-11-01 20:26:48'),
(399, 'KEBE Dorgeles', '0571', '', 64, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:47:14', '2021-11-01 20:30:27'),
(400, 'KOFFI Franck Olivier', '0572', '', 65, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:47:54', '2021-11-01 20:32:02'),
(401, 'KOFFI Aubin', '0648', '', 638, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:48:24', '2021-11-01 20:34:55'),
(402, 'KOKOLA Marius Selor', '0592', '', 85, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:49:20', '2021-11-01 20:36:26'),
(403, 'KONAN Aurelien', '0552', '', 66, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:49:57', '2021-11-01 20:38:50'),
(404, 'KONAN Jean Richard', '0647', '', 639, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:50:41', '2021-11-01 20:40:31'),
(405, 'KONE Kone', '0547', '', 67, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:51:22', '2021-11-01 20:41:48'),
(406, 'KONAN Alain Marc', '0664', '', 72, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:52:04', '2021-11-01 20:48:53'),
(407, 'KOUAME Hugues', '0599', '', 73, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:53:27', '2021-11-01 20:50:43'),
(408, 'KOUASSI Patrice', '0697', '', 640, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 14:58:38', '2021-11-01 20:52:46'),
(409, 'KOUASSI Akon Rene', '0638', '', 641, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:04:09', '2021-11-01 20:54:49'),
(410, 'KOUYATE Mamadou', '0554', '', 82, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:04:57', '2021-11-01 20:56:37'),
(411, 'LOUIS Bonaventure', '0565', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:05:39', '2021-10-29 15:05:39'),
(412, 'LUDMILLA Gauze', '0568', '', 76, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:06:23', '2021-11-01 21:01:05'),
(413, 'MAC Davies Anoua', '0557', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:07:05', '2021-10-29 15:07:05'),
(414, 'MAC Gael Anouma', '0528', '', 642, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:07:49', '2021-11-01 21:05:08'),
(415, 'MAKEZINE Dylane', '0590', '', 79, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:08:40', '2021-11-01 21:06:49'),
(416, 'MAMA Demba', '0512', '', 80, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:10:21', '2021-11-01 21:08:06'),
(417, 'MAMADOU Cherif', '0523', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:37:20', '2021-10-29 15:37:20'),
(418, 'MAMADOU Billo Barry', '0521', '', 622, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:38:13', '2021-11-01 18:33:07'),
(419, 'MANGBE Marilyn', '0611', '', 84, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:39:36', '2021-11-01 18:35:21'),
(420, 'MELESSE Cynthia Epouse DAO', '0563', '', 87, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:42:13', '2021-11-01 18:38:00'),
(421, 'MILLOGO Millogo', '0693', '', 623, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:43:57', '2021-11-01 18:39:51'),
(422, 'MONCHEH Kelani', '0576', '', 91, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:44:48', '2021-11-01 18:41:49'),
(423, 'MOUSSA Mr Et Mme Kone', '0583', '', 92, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:45:59', '2021-11-01 18:44:21'),
(424, 'MR DIE Esteban', '0661', '', 93, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:46:53', '2021-11-01 18:46:07'),
(425, 'MUTOMBO Cartler Michel', '0567', '', 94, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:47:58', '2021-11-01 18:48:32'),
(426, 'MUZINGA Francois', '0645', '', 624, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:48:56', '2021-11-01 18:50:29'),
(427, 'NDAYE Oumar', '0580', '', 95, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:49:28', '2021-11-01 18:52:35'),
(428, 'NIAMKE Sane Elie', '0655', '', 625, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:56:21', '2021-11-01 18:54:47'),
(429, 'OKOU Keiru', '0610', '', 98, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:56:57', '2021-11-01 18:56:58'),
(430, 'OTCHIMOU Niangoran David', '0596', '', 99, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:57:41', '2021-11-01 18:59:27'),
(431, 'OUATTARA Abdoul', '0597', '', 626, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:58:17', '2021-11-01 19:01:49'),
(432, 'OUATTRA Roland', '0694', '', 627, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:58:52', '2021-11-01 19:05:34'),
(433, 'OUEDRAOGO Adama', '0531', '', 628, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 15:59:30', '2021-11-01 19:07:26'),
(434, 'OUEDRAOGO Aboubacar', '0674', '', 629, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:00:22', '2021-11-01 19:10:13'),
(435, 'OUMAR Gueye', '0520', '', 103, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:01:00', '2021-11-01 19:12:26'),
(436, 'OUSMANE Soumahoro', '0591', '', 105, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:01:47', '2021-11-01 19:14:06'),
(437, 'POULALEA Tra Lou', '0527', '', 106, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:02:29', '2021-11-01 19:15:30'),
(438, 'RENE Yedieti', '0532', '', 107, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:03:14', '2021-11-01 19:16:47'),
(439, 'RIYAD Macos', '0544', '', 108, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:04:05', '2021-11-01 19:18:35'),
(440, 'SANGARE Rayan', '0613', '', 109, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:04:42', '2021-11-01 19:22:30'),
(441, 'SANOGO Bakary', '0683', '', 630, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:05:23', '2021-11-01 19:24:16'),
(442, 'SANOGO Mohamed Lamine', '0639', '', 631, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:06:13', '2021-11-01 19:25:53'),
(443, 'SBADIM Dramera', '0562', '', 110, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:06:59', '2021-11-01 19:27:17'),
(444, 'SEKONGO Konlonan Bakary', '0543', '', 68, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:07:59', '2021-11-01 19:28:38'),
(445, 'SEKOU Bocoun', '0581', '', 632, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:08:40', '2021-11-01 19:30:30'),
(446, 'SELA Romaric', '0640', '', 633, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 16:09:17', '2021-11-01 19:31:54'),
(447, 'CHARLES Anthony Ndri', '0526', '', 31, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 23:04:49', '2021-10-29 23:06:03'),
(448, 'CHARLES Anthony Ndri', '0526', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-10-29 23:05:35', '2021-10-29 23:05:35'),
(449, 'FAYE Coly', '0517', '', 613, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-01 17:45:46', '2021-11-01 17:47:00'),
(450, 'KAFANA Nafo', '0660', '', 61, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-01 19:57:54', '2021-11-01 19:58:23'),
(451, 'APATA Marc', '0507', '', 643, 1, 1, 1, '2022-10-22 00:00:00', '2021-11-02 09:21:50', '2021-11-02 11:28:14');
INSERT INTO `cards` (`id`, `name`, `card_details`, `card_image`, `user_id`, `category_id`, `sub_category_id`, `status`, `expired_card`, `created_at`, `updated_at`) VALUES
(452, 'BERTE Alexandre', '0506', '', NULL, 1, 1, 1, '2021-10-22 00:00:00', '2021-11-02 09:23:02', '2021-11-02 09:23:02'),
(453, 'ZONDO Rene', '0627', '', NULL, 1, 1, 1, '2022-10-22 00:00:00', '2021-11-02 09:25:20', '2021-11-02 09:25:20'),
(454, 'MEUBLE Oumar', '0503', '', NULL, 1, 1, 1, '2022-10-22 00:00:00', '2021-11-02 09:26:37', '2021-11-02 09:26:37'),
(455, 'ODUMA Christian', '0504', '', NULL, 1, 1, 1, '2022-10-22 00:00:00', '2021-11-02 09:28:22', '2021-11-02 09:28:22'),
(456, 'KOTCHI Kotchi', '0501', '', 643, 1, 1, 1, '2022-10-22 00:00:00', '2021-11-02 09:29:47', '2021-11-02 11:19:33'),
(457, 'COULIBALY Brahima', '0502', '', NULL, 1, 1, 1, '2022-10-22 00:00:00', '2021-11-02 09:31:18', '2021-11-02 09:31:18'),
(458, 'TEHIA N\'guetta Didier Yannick', '0304', '', 189, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 07:59:26', '2021-11-09 08:22:01'),
(459, 'TIO Grah', '0306', '', 190, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:03:10', '2021-11-09 08:24:01'),
(460, 'TOUTOUKPO Claude', '0364', '', 650, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:04:20', '2021-11-09 08:26:02'),
(461, 'TRAORE Gnessien Elliace', '0280', '', 192, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:06:40', '2021-11-09 08:27:55'),
(462, 'TRAORE Djakaridja', '0296', '', 191, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:08:11', '2021-11-09 08:30:08'),
(463, 'TUO Yalourga', '0343', '', 651, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:09:14', '2021-11-09 08:31:35'),
(464, 'YAO Konan Michael', '0258', '', 194, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:10:41', '2021-11-09 08:33:07'),
(465, 'YAO Konan Jacques Darius', '0297', '', 193, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:12:10', '2021-11-09 08:34:46'),
(466, 'YAPI Richard Kevin', '0275', '', 195, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:13:39', '2021-11-09 08:36:13'),
(467, 'YAPO Armel', '0362', '', 652, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:14:39', '2021-11-09 08:38:19'),
(468, 'YUSUT Neuoton', '0294', '', 196, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:15:54', '2021-11-09 08:39:50'),
(469, 'ZEBE Justin', '0329', '', 653, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:17:10', '2021-11-09 08:41:16'),
(470, 'ZOGBO Maurice', '0295', '', 197, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:18:11', '2021-11-09 08:42:17'),
(471, 'ZOGBO Pasteur Ble', '0326', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:19:33', '2021-11-09 08:19:33'),
(472, 'ZOGBO Zokou Ezechiel', '0307', '', 198, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:45:25', '2021-11-09 08:46:04'),
(473, 'ABETO Bernard Claude', '0311', '', 654, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:50:26', '2021-11-09 09:11:31'),
(474, 'ADELAKOUN Amedee Eric', '0316', '', 655, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:51:36', '2021-11-09 09:13:22'),
(475, 'ADJAFI Koukou Williams', '0320', '', 656, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:52:35', '2021-11-09 09:14:52'),
(476, 'AGRIOCORO Timothy', '0285', '', 130, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:53:49', '2021-11-09 09:16:12'),
(477, 'AGUEH Adonis Louis', '0356', '', 657, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:55:01', '2021-11-09 09:17:43'),
(478, 'AHIN Loba Corneille', '0352', '', 658, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:56:12', '2021-11-09 09:22:56'),
(479, 'AHOUSSY Parfait', '0266', '', 131, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:57:16', '2021-11-09 09:26:04'),
(480, 'ALEX Gartien', '0254', '', 132, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:58:31', '2021-11-09 09:27:23'),
(481, 'AMOI Yao Contant', '0334', '', 659, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 08:59:45', '2021-11-09 09:29:09'),
(482, 'BAMBA Karamoko', '0262', '', 135, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:03:52', '2021-11-09 09:31:02'),
(483, 'BAMBA Fatoumata', '0350', '', 660, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:05:00', '2021-11-09 09:32:36'),
(484, 'BAMBA  Magbe', '0360', '', 661, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:06:02', '2021-11-09 09:34:00'),
(485, 'BISSOUMA Duval', '0359', '', 662, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:06:58', '2021-11-09 09:35:52'),
(486, 'BOHOUSSOU Yao Ange Emmanuel', '0279', '', 136, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:08:18', '2021-11-09 09:37:08'),
(487, 'BOLOU Thibaut Rayanne', '0308', '', 137, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:09:29', '2021-11-09 09:38:15'),
(488, 'BOTIONO Pascal', '0257', '', 138, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:40:04', '2021-11-09 10:07:16'),
(489, 'BOUAOULI Kouassi Augustin', '0323', '', 663, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:41:29', '2021-11-09 10:08:38'),
(490, 'BRIZOU Bi Astyanax Jean', '0332', '', 664, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:42:52', '2021-11-09 10:10:16'),
(491, 'CISSE Inza Papiss', '0272', '', 140, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:45:02', '2021-11-09 10:11:39'),
(492, 'CISSE Salif', '0340', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:46:06', '2021-11-09 09:46:06'),
(493, 'COULIBALY Coulibaly', '0252', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:47:42', '2021-11-09 09:47:42'),
(494, 'COULIBAY 44 Grise', '0256', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:49:23', '2021-11-09 09:49:23'),
(495, 'COULIBALY Ismael', '0274', '', 144, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:50:19', '2021-11-09 10:17:33'),
(496, 'COULIBALY Claude', '0278', '', 665, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:51:14', '2021-11-09 10:21:50'),
(497, 'DABIE Michael', '0298', '', 145, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 09:53:09', '2021-11-09 10:22:58'),
(498, 'DAO Alassane', '0321', '', 666, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:01:08', '2021-11-09 10:24:35'),
(499, 'DIAKITE Laye', '0363', '', 667, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:02:28', '2021-11-09 10:26:26'),
(500, 'DJAMA Narcisse', '0346', '', 668, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:03:12', '2021-11-09 10:27:58'),
(501, 'DJIKOUNON Koffi Austin Ange Emmanuel', '0328', '', 669, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:04:56', '2021-11-09 10:30:21'),
(502, 'DJIKOUNON Fabrice', '0355', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:05:58', '2021-11-09 10:05:58'),
(503, 'DONKO Kangah Yannick', '0344', '', 671, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:34:17', '2021-11-09 10:56:12'),
(504, 'DOUMBIA Moulouk', '0342', '', 672, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:35:19', '2021-11-09 10:57:49'),
(505, 'EHUI Ehui Jean', '0277', '', 146, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:36:10', '2021-11-09 10:59:01'),
(506, 'ESMEL Akpa Landry', '0292', '', 673, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:37:13', '2021-11-09 11:00:52'),
(507, 'ESMEL Angem', '0310', '', 674, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:38:25', '2021-11-09 11:02:17'),
(508, 'ESSIS Christian', '0325', '', 675, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:39:21', '2021-11-09 11:03:38'),
(509, 'ESSOH Parfait', '0351', '', 676, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:40:25', '2021-11-09 11:05:17'),
(510, 'FALE David', '0287', '', 149, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:41:31', '2021-11-09 11:06:39'),
(511, 'FOFANAN Adou', '0253', '', 677, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:42:30', '2021-11-09 11:08:42'),
(512, 'FOFANA Bangali', '0276', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:43:55', '2021-11-09 10:43:55'),
(513, 'FRONDOH Yves Roger', '0318', '', 679, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:44:55', '2021-11-09 11:14:23'),
(514, 'GAROU Honozele Julie', '0283', '', 152, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:46:26', '2021-11-09 11:16:07'),
(515, 'GBAZAI Flora', '0300', '', 154, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:47:18', '2021-11-09 11:17:15'),
(516, 'GBELI Montdesir Inri', '0286', '', 155, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:48:20', '2021-11-09 11:18:39'),
(517, 'GNAKO Marius', '0322', '', 680, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:49:30', '2021-11-09 11:20:35'),
(518, 'GUIBADO Joel Stephane', '0267', '', 681, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:50:37', '2021-11-09 11:23:53'),
(519, 'GUIE N\'guessan Franck', '0269', '', 158, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:51:44', '2021-11-09 11:30:11'),
(520, 'HARDMONG Jean Herve', '0284', '', 159, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:52:41', '2021-11-09 11:31:12'),
(521, 'HODONOU Marc', '0341', '', 682, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 10:53:45', '2021-11-09 11:33:16'),
(522, 'GUIBADO Joel Stephane', '0267', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:27:05', '2021-11-09 11:27:05'),
(523, 'KAMENAN Romeo', '0303', '', 160, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:35:48', '2021-11-09 12:07:42'),
(524, 'KANE Prince Ange Harison', '0317', '', 683, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:37:04', '2021-11-09 12:09:16'),
(525, 'KARAMOKO Ilyassou', '0273', '', 161, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:38:52', '2021-11-09 12:10:36'),
(526, 'KITHAU Nobert  Camara', '0324', '', 684, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:48:46', '2021-11-09 12:12:04'),
(527, 'KODJO Francois', '0347', '', 685, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:49:47', '2021-11-09 12:13:31'),
(528, 'KONAN Guillaume', '0270', '', 162, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:51:04', '2021-11-09 12:15:01'),
(529, 'KONAN N\'dri Armand', '0315', '', 163, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:52:06', '2021-11-09 12:17:11'),
(530, 'KONAN Fidele', '0345', '', 686, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:53:03', '2021-11-09 12:19:08'),
(531, 'KONE Adama', '0265', '', 687, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:54:01', '2021-11-09 12:20:27'),
(532, 'KONE David', '0319', '', 688, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:55:53', '2021-11-09 12:22:06'),
(533, 'KONE Lassana', '0335', '', 689, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:56:53', '2021-11-09 12:23:29'),
(534, 'KONE Bazoumana', '0339', '', 690, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:57:48', '2021-11-09 12:24:49'),
(535, 'KONE Dramane', '0354', '', 691, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:58:39', '2021-11-09 12:26:01'),
(536, 'KONE Domin Mangbe', '0357', '', 692, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 11:59:40', '2021-11-09 12:27:41'),
(537, 'KOUADIO Fils Bienvenue', '0314', '', 165, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:00:47', '2021-11-09 12:28:57'),
(538, 'KOUAKOU Richard', '0312', '', 166, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:34:06', '2021-11-09 12:43:36'),
(539, 'KOUASSI Yannick', '0293', '', 167, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:35:17', '2021-11-09 12:44:39'),
(540, 'KOUASSI Konon Olivier', '0333', '', 693, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:36:40', '2021-11-09 12:46:15'),
(541, 'KOULOUD Serge Pacome', '0289', '', 168, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:38:10', '2021-11-09 12:48:03'),
(542, 'KRA N\'guessan Avaly', '0305', '', 169, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:39:20', '2021-11-09 12:49:15'),
(543, 'KROU Andre', '0271', '', 694, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:40:15', '2021-11-09 12:51:41'),
(544, 'LASME Fabrice', '0358', '', 695, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:41:02', '2021-11-09 12:53:22'),
(545, 'MEL Zakarie', '0263', '', 173, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:54:46', '2021-11-09 13:11:31'),
(546, 'MEL Levi Uriel', '0264', '', 171, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:55:41', '2021-11-09 13:12:39'),
(547, 'MONO Monoco', '0301', '', 174, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:56:47', '2021-11-09 13:13:51'),
(548, 'NDOUA Ludovic Ange Patrick N', '0366', '', 696, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:58:03', '2021-11-09 13:15:51'),
(549, 'NDRI Nguessan Thomas', '0365', '', 697, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 12:59:31', '2021-11-09 13:17:15'),
(550, 'N\'DRI N\'goran Michael', '0281', '', 175, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:00:53', '2021-11-09 13:18:22'),
(551, 'NGUESSAN Alain', '0261', '', 698, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:02:00', '2021-11-09 13:19:39'),
(552, 'N\'GUETTAN Komenan Desire', '0337', '', 699, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:03:09', '2021-11-09 13:21:05'),
(553, 'N\'ZI Koffi Jean', '0309', '', 177, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:04:14', '2021-11-09 13:22:09'),
(554, 'OKOUA Dayere  Chatlain', '0349', '', 700, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:06:07', '2021-11-09 13:23:35'),
(555, 'OPLE Yannick Junior', '0302', '', 178, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:06:58', '2021-11-09 13:25:05'),
(556, 'OUATTARA Yacouba', '0353', '', 701, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:07:44', '2021-11-09 13:26:38'),
(557, 'OUATTARA Babyssiri', '0260', '', 702, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:08:46', '2021-11-09 13:28:18'),
(558, 'OUATTARA Abdoulaye', '0338', '', 703, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:10:06', '2021-11-09 13:29:49'),
(559, 'OUATTARA Drissa', '0348', '', 704, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:31:17', '2021-11-09 13:46:07'),
(560, 'PEYA Kouame Junior', '0288', '', 181, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:32:35', '2021-11-09 13:47:10'),
(561, 'SAGO Aristide Jislin', '0291', '', 705, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:33:31', '2021-11-09 13:50:33'),
(562, 'SAHIRI Jean-Noel', '0268', '', 183, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:34:25', '2021-11-09 13:51:35'),
(563, 'SANGARE Karamoko', '0290', '', 184, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:35:31', '2021-11-09 13:52:41'),
(564, 'SANOGO Issa', '0282', '', 185, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:36:20', '2021-11-09 13:54:04'),
(565, 'SEKA Lord Anne', '0327', '', 706, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:37:19', '2021-11-09 13:55:21'),
(566, 'SELY Silvain D', '0336', '', 707, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:38:12', '2021-11-09 13:56:39'),
(567, 'SILUE Razak', '0259', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:39:00', '2021-11-09 13:39:00'),
(568, 'SOUHONE Michael', '0361', '', 708, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:41:06', '2021-11-09 13:59:58'),
(569, 'SY SAVANE Abdel Aziz', '0330', '', 709, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:42:15', '2021-11-09 14:01:26'),
(570, 'TABLE Michline', '0331', '', NULL, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:43:23', '2021-11-09 13:43:23'),
(571, 'TANO Jean Brou', '0313', '', 188, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-09 13:44:21', '2021-11-09 14:03:07'),
(572, 'AMANTCHI Niamke Ezoua  Franck', '0159', '', 370, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-10 10:56:16', '2021-11-10 10:56:47'),
(573, 'SERGE Assi', '0168', '', 377, 1, 1, 1, '2022-10-25 00:00:00', '2021-11-10 11:00:51', '2021-11-10 11:01:24'),
(574, 'KOUASSI Robert', '4444', '', 710, 1, 1, 1, '2022-11-15 00:00:00', '2021-11-16 08:53:05', '2021-11-16 08:57:27'),
(575, 'FOUA BI Melaine', '5555', '', 711, 1, 1, 1, '2022-11-15 00:00:00', '2021-11-16 09:10:15', '2021-11-16 09:13:45'),
(576, 'BALO Melanie', '77', '', 712, 1, 1, 1, '2022-11-15 00:00:00', '2021-11-16 09:19:31', '2021-11-16 09:26:32'),
(577, 'AMOUIN Sylvie', '4445', '', 713, 1, 1, 1, '2022-11-15 00:00:00', '2021-11-16 09:46:09', '2021-11-16 09:49:28'),
(578, 'KOUAKOU Patricia', '0101', '', 714, 1, 1, 1, '2021-11-15 00:00:00', '2021-11-16 11:26:46', '2021-11-16 11:29:41'),
(579, 'AHOUNON Eden Herve', '0112', '', NULL, 1, 1, 1, '2022-11-25 00:00:00', '2021-11-19 14:43:29', '2021-11-19 14:43:29'),
(580, 'THIO NANCY ARMAND STEPHANE', '1282', '', NULL, 1, 1, 1, '2022-11-18 00:00:00', '2021-11-19 21:04:30', '2021-11-19 21:04:30'),
(581, 'THIO NANCY ARMAND STEPHANE', '1282', '', NULL, 1, 1, 1, '2022-11-18 00:00:00', '2021-11-19 21:06:41', '2021-11-19 21:06:41'),
(582, 'SORO DAMBELLE', '0373', '', NULL, 1, 1, 1, '2022-11-23 00:00:00', '2021-11-24 16:21:00', '2021-11-24 16:21:00'),
(583, 'KOUAME Alexis', '0374', '', 716, 1, 1, 1, '2021-11-23 00:00:00', '2021-11-24 16:28:02', '2021-11-24 16:29:11'),
(584, 'KONE FOUSSENY-0681', '0681', '', 717, 1, 1, 1, '2022-11-25 00:00:00', '2021-11-25 12:31:32', '2021-11-25 12:34:37'),
(585, 'toure salif-4444', '4444', '', NULL, 1, 1, 1, '2022-11-25 00:00:00', '2021-11-25 14:08:06', '2021-11-25 14:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `cardsubcategories`
--

CREATE TABLE `cardsubcategories` (
  `id` int NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `cat_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardsubcategories`
--

INSERT INTO `cardsubcategories` (`id`, `name`, `price`, `cat_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Carte de 1000', '1000', 1, 1, '2018-10-01 06:31:44', '2021-07-01 18:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `gateway_id` int DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `usd_amo` varchar(255) DEFAULT NULL,
  `btc_amo` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `trx` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `try` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faqdetails`
--

CREATE TABLE `faqdetails` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortdes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqdetails`
--

INSERT INTO `faqdetails` (`id`, `title`, `sortdes`, `created_at`, `updated_at`) VALUES
(1, 'Frequesntly Asked Question 01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:38:36'),
(2, 'Frequesntly Asked Question 02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:38:42'),
(3, 'Frequesntly Asked Question 03', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:39:01'),
(4, 'Frequesntly Asked Question 04', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:39:07'),
(5, 'Frequesntly Asked Question 05', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:39:13'),
(6, 'Frequesntly Asked Question 06', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int UNSIGNED NOT NULL,
  `main_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `rate`, `val1`, `val2`, `status`, `created_at`, `updated_at`) VALUES
(101, 'PayPal', 'PayPal', NULL, NULL, NULL, NULL, '80', 'rexrifat636@gmail.com', NULL, 1, NULL, '2018-08-28 13:14:10'),
(102, 'PerfectMoney', 'Perfect Money', '20', '20000', '2', '1', '76', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', 1, NULL, '2018-08-28 13:14:33'),
(103, 'Stripe', 'Credit Card', '10', '50000', '3', '3', '1', 'sk_test_aat3tzBCCXXBkS4sxY3M8A1B', 'pk_test_AU3G7doZ1sbdpJLj0NaozPBu', 1, NULL, '2018-05-27 18:11:50'),
(104, 'Skrill', 'Skrill', '10', '50000', '3', '3', '1', 'merchant@skrill.com', 'TheSoftKing', 1, NULL, '2018-05-20 12:01:09'),
(501, 'Blockchain.info', 'BitCoin', '1', '20000', '1', '0.5', '1', '3965f52f-ec19-43af-90ed-d613dc60657eSSS', 'xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000', 1, NULL, '2018-05-21 01:20:29'),
(502, 'block.io - BTC', 'BitCoin', '1', '99999', '1', '0.5', '1', 'd6cd-daa2-1eeb-d4b7', '09876softk', 1, '2018-01-27 18:00:00', '2018-08-28 01:55:56'),
(503, 'block.io - LTC', 'LiteCoin', '100', '10000', '0.4', '1', '1', '4494-4014-373a-3454', '09876softk', 1, NULL, '2018-05-31 09:27:34'),
(504, 'block.io - DOGE', 'DogeCoin', '1', '50000', '0.51', '2.52', '1', 'b224-398b-8054-8325', '09876softk', 1, NULL, '2018-05-31 09:28:54'),
(505, 'CoinPayment - BTC', 'BitCoin', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', 1, NULL, '2018-05-31 09:38:33'),
(506, 'CoinPayment - ETH', 'Etherium', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', 0, NULL, '2021-06-25 05:45:45'),
(507, 'CoinPayment - BCH', 'Bitcoin Cash', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', 0, NULL, '2021-06-25 05:45:36'),
(508, 'CoinPayment - DASH', 'DASH', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', 0, NULL, '2021-06-25 05:45:28'),
(509, 'CoinPayment - DOGE', 'DOGE', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', 0, NULL, '2021-06-25 05:44:48'),
(510, 'CoinPayment - LTC', 'LTC', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', 0, NULL, '2021-06-25 05:44:59'),
(512, 'CoinGate', 'CoinGate', '10', '1000', '05', '5', '1', 'Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N', NULL, 0, '2018-07-08 18:00:00', '2021-06-25 05:45:07'),
(513, 'CoinPayment-ALL', 'Coin Payment', '10', '1000', '05', '5', '1', 'db1d9f12444e65c921604e289a281c56', NULL, 0, NULL, '2021-06-25 05:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Website',
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sub Title',
  `website_email_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cur` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `cursym` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `reg` int NOT NULL DEFAULT '1',
  `emailver` int NOT NULL DEFAULT '1',
  `smsver` int NOT NULL DEFAULT '1',
  `decimal` int NOT NULL DEFAULT '2',
  `emailnotf` int NOT NULL DEFAULT '1',
  `smsnotf` int NOT NULL DEFAULT '1',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `smsapi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `practise_header_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `practise_header_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome_details_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome_details_youtube` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome_details_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attorney_header_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attorney_header_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subs_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subs_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `static_head` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `static_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome_header_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome_header_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `title`, `subtitle`, `website_email_address`, `website_number`, `website_address`, `cur`, `cursym`, `reg`, `emailver`, `smsver`, `decimal`, `emailnotf`, `smsnotf`, `email`, `template`, `smsapi`, `practise_header_title`, `practise_header_des`, `welcome_details_des`, `welcome_details_youtube`, `welcome_details_title`, `attorney_header_title`, `attorney_header_des`, `faq_title`, `faq_des`, `about_heading`, `about_details`, `footer`, `subs_title`, `subs_des`, `static_head`, `static_des`, `welcome_header_title`, `welcome_header_des`, `created_at`, `updated_at`) VALUES
(1, 'Barbershopcard', 'Virtual Card Selling Platform', 'cardfidelity@kignonbabershop.com', '0 123 456 7890', 'Côte d\'Ivoire , Abidjan', 'FCFA', 'XOF', 1, 1, 1, 2, 0, 0, 'cardfidelity@kignonbabershop.com', '<p>&nbsp;</p>\r\n<div class=\"wrapper\" style=\"background-color: #f2f2f2;\">\r\n<table style=\"border-collapse: collapse; table-layout: fixed; color: #b8b8b8; font-family: Ubuntu,sans-serif;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"preheader__snippet\" style=\"padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n<td class=\"preheader__webversion\" style=\"text-align: right; padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\">\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\">\r\n<div id=\"emb-email-header\" class=\"logo-left\" style=\"font-size: 0px !important; line-height: 0 !important;\" align=\"left\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\"></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\">\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n<div style=\"line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px;\">\r\n<h2>Hi {{name}},</h2>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px;\"><br></div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">\r\n<p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br> <strong>CardMate Team<br></strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=cardmate&SMSText={{message}}&GSM={{number}}&type=longSMS', 'Our Features', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum', 'https://www.youtube.com/watch?v=rR1Z74qOwhA', 'Learn More About Us!!', 'Caregories we Covered', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 'Frequesntly Asked Questions', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum', 'A propos de nous', '<div align=\"center\"><font size=\"6\"><b>A propos de nous</b></font><br></div><div align=\"left\"><br></div><div align=\"left\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur sequi, blanditiis distinctio quae iste, aspernatur explicabo similique deserunt obcaecati, magnam ex. Iste eius itaque ratione enim, ut autem aliquam totam numquam minus atque at odio, corrupti a laudantium dolores accusamus cum saepe veritatis! Ullam iure temporibus recusandae, quis nobis cum excepturi. Placeat reprehenderit in consequatur odio debitis possimus laudantium, dolor eum distinctio aperiam commodi ab pariatur iure deserunt recusandae. Unde quae alias, iusto voluptatum error perspiciatis hic, dolorum architecto id voluptatibus, nesciunt! Quibusdam repudiandae libero placeat ratione assumenda magnam illo nam dolorum quam minima exercitationem aspernatur voluptatem ad quia suscipit fugit, accusantium itaque deleniti tempora omnis distinctio beatae eligendi est corrupti ipsum. Cumque tempore sunt, itaque nesciunt cupiditate veritatis architecto at repellat eius ex praesentium magnam repudiandae a, blanditiis repellendus ipsam vero expedita exercitationem sapiente quas quam quos dolorum quisquam! <br></div><div><br></div><div align=\"center\">Sit voluptas fuga temporibus, sapiente, iure laboriosam dolore quod ab provident, corrupti magni odio dolor sed quisquam optio. Assumenda iusto dignissimos odit soluta laboriosam officia ut incidunt at unde nisi, corrupti odio. Autem distinctio dolore quas! Sit quibusdam, tempora veniam nesciunt beatae repellendus, eos optio. Omnis ex provident veritatis a et temporibus, similique magni ad nesciunt harum delectus nihil natus, animi eaque commodi asperiores eos tempore fugiat voluptate non maiores libero quas in ratione iste? Quibusdam assumenda perferendis voluptate dolore alias earum corporis, facilis ab nihil nulla! Voluptas dignissimos vel repellendus laudantium possimus accusantium doloribus quod amet, soluta incidunt ut cum adipisci sit similique veniam numquam reprehenderit, optio nisi corporis explicabo rerum consequatur minima labore nobis maiores.</div><div><br></div><div align=\"right\"> Ullam odio officiis culpa eligendi itaque officia iure labore veniam corporis, delectus hic tenetur dolorem repellendus provident neque repudiandae suscipit quas. Numquam doloremque autem, libero saepe iusto ipsum sed nulla omnis. Soluta optio dolor fugit voluptas quos quibusdam distinctio vero saepe dolore tempora, dolorum sit molestias quas itaque vitae tenetur voluptatibus, nulla pariatur quasi deleniti, impedit consectetur odio ex debitis laborum. Dolores porro, ipsum dolorum placeat voluptatem architecto quas vitae aliquam reiciendis, est adipisci inventore quis, velit aut ad quasi ut quaerat blanditiis accusamus cLorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur sequi, blanditiis distinctio quae iste, aspernatur explicabo similique deserunt obcaecati, magnam ex. Iste eius itaque ratione enim, ut autem aliquam totam numquam minus atque at odio, corrupti a laudantium dolores accusamus cum saepe veritatis! Ullam iure temporibus recusandae, quis nobis cum excepturi. Placeat reprehenderit in consequatur odio debitis possimus laudantium, dolor eum distinctio aperiam commodi ab pariatur iure deserunt recusandae. Unde quae alias, iusto voluptatum error perspiciatis hic, dolorum architecto id voluptatibus, nesciunt! Quibusdam repudiandae libero placeat ratione assumenda magnam illo nam dolorum quam minima exercitationem aspernatur <br></div><div><b><br></b></div><div align=\"justify\"><b>voluptatem ad quia suscipit fugit, accusantium itaque deleniti tempora omnis distinctio beatae eligendi est corrupti ipsum. Cumque tempore sunt, itaque nesciunt cupiditate veritatis architecto at repellat eius ex praesentium magnam repudiandae a, blanditiis repellendus ipsam vero expedita exercitationem sapiente quas quam quos dolorum quisquam! Sit voluptas fuga temporibus, sapiente, iure laboriosam dolore quod ab provident, corrupti magni odio dolor sed quisquam optio. Assumenda iusto dignissimos odit soluta laboriosam officia ut incidunt at unde nisi, corrupti odio. Autem distinctio dolore quas! Sit quibusdam, tempora veniam nesciunt beatae repellendus, eos optio. Omnis ex provident veritatis a et temporibus, similique magni ad nesciunt harum delectus nihil natus, animi eaque commodi asperiores eos tempore fugiat voluptate non maiores libero quas in ratione iste? Quibusdam assumenda perferendis voluptate dolore alias earum corporis, facilis ab nihil nulla! Voluptas dignissimos vel repellendus laudantium possimus accusantium doloribus quod amet, soluta incidunt ut cum adipisci sit similique veniam numquam reprehenderit, optio nisi corporis explicabo rerum consequatur minima labore nobis maiores. Ullam odio officiis culpa eligendi itaque officia iure labore veniam corporis, delectus hic tenetur dolorem repellendus provident neque repudiandae suscipit quas. Numquam doloremque autem, libero saepe iusto ipsum sed nulla omnis. Soluta optio dolor fugit voluptas quos quibusdam distinctio vero saepe dolore tempora, dolorum sit molestias quas itaque vitae tenetur voluptatibus, nulla paria</b><br></div><br>', NULL, 'Subscribe Us', 'The intended use of __sleep() is to commit pending data or perform similar cleanup tasks. Also, the function is useful if you have very large objects which do not need to be saved completely.', 'It is a long established', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', NULL, 'Bienvenu sur la plateforme Carte Fidelité de Kignon Baber Shop', NULL, '2021-07-26 12:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  `num_ticket` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mod_paiement` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mont_coiffure` int DEFAULT NULL,
  `nbre_point` int DEFAULT NULL,
  `type_transaction` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_recu` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `transaction_id`, `num_ticket`, `mod_paiement`, `mont_coiffure`, `nbre_point`, `type_transaction`, `num_recu`, `created_at`, `updated_at`) VALUES
(1, 416, NULL, '56978', 'ticket', 3500, 700, NULL, NULL, '2021-11-11 18:52:41', '2021-11-11 18:52:41'),
(2, 525, NULL, '57811', 'ticket', 1500, 300, NULL, NULL, '2021-11-19 12:17:44', '2021-11-19 12:17:44'),
(3, 451, NULL, '57818', 'ticket', 1500, 300, NULL, NULL, '2021-11-19 12:24:22', '2021-11-19 12:24:22'),
(4, 451, NULL, '57819', 'ticket', 1500, 300, NULL, NULL, '2021-11-19 12:26:49', '2021-11-19 12:26:49'),
(5, 525, NULL, '57815', 'ticket', 3500, 700, NULL, NULL, '2021-11-19 12:43:52', '2021-11-19 12:43:52'),
(6, 454, NULL, '57812', 'ticket', 7000, 1400, NULL, NULL, '2021-11-19 13:36:27', '2021-11-19 13:36:27'),
(7, 454, NULL, '57825', 'ticket', 1500, 300, NULL, NULL, '2021-11-19 13:41:08', '2021-11-19 13:41:08'),
(8, 525, NULL, '57814', 'ticket', 3000, 600, NULL, NULL, '2021-11-19 13:42:45', '2021-11-19 13:42:45'),
(9, 525, NULL, '57813', 'ticket', 4000, 800, NULL, NULL, '2021-11-19 13:44:05', '2021-11-19 13:44:05'),
(10, 525, NULL, '57826', 'ticket', 5000, 1000, NULL, NULL, '2021-11-19 13:46:41', '2021-11-19 13:46:41'),
(11, 525, NULL, '57823', 'ticket', 1500, 300, NULL, NULL, '2021-11-19 13:51:12', '2021-11-19 13:51:12'),
(12, 525, NULL, '57822', 'ticket', 1500, 300, NULL, NULL, '2021-11-19 13:56:10', '2021-11-19 13:56:10'),
(13, 525, NULL, '57821', 'ticket', 1500, 300, NULL, NULL, '2021-11-19 14:09:17', '2021-11-19 14:09:17'),
(14, 541, NULL, '57827', 'ticket', 1500, 300, NULL, NULL, '2021-11-19 14:20:30', '2021-11-19 14:20:30'),
(15, 525, NULL, '57839', 'ticket', 5000, 1000, NULL, NULL, '2021-11-19 17:11:46', '2021-11-19 17:11:46'),
(16, 416, NULL, '58086', 'ticket', 1500, 300, NULL, NULL, '2021-11-23 18:06:38', '2021-11-23 18:06:38'),
(17, 416, NULL, '58087', 'ticket', 10000, 2000, NULL, NULL, '2021-11-23 18:08:14', '2021-11-23 18:08:14'),
(18, 377, NULL, '58097', 'ticket', 1500, 300, NULL, NULL, '2021-11-24 09:55:48', '2021-11-24 09:55:48'),
(19, 505, NULL, '58117', 'ticket', 5000, 1000, NULL, NULL, '2021-11-24 13:48:39', '2021-11-24 13:48:39'),
(20, 86, NULL, NULL, 'carte', 2000, 200, 'rechargement des points', '1230', '2021-11-25 15:54:55', '2021-11-25 15:54:55'),
(21, 86, NULL, '1236', 'carte', 1000, 200, 'rechargement des points', NULL, '2021-11-25 15:57:41', '2021-11-25 15:57:41'),
(22, 474, NULL, '58184', 'ticket', 1000, 200, NULL, NULL, '2021-11-25 17:30:23', '2021-11-25 17:30:23'),
(23, 86, NULL, '1234', 'ticket', 2000, 400, NULL, NULL, '2021-11-26 02:09:48', '2021-11-26 02:09:48'),
(24, 86, NULL, NULL, 'carte', 1000, 100, 'rechargement des points', '1234', '2021-11-26 02:10:52', '2021-11-26 02:10:52'),
(25, 525, NULL, NULL, 'carte', 15000, 1500, 'rechargement des points', '1452', '2021-11-26 12:46:57', '2021-11-26 12:46:57'),
(26, 525, NULL, '1452', 'ticket', 70000, 14000, NULL, NULL, '2021-11-26 12:55:55', '2021-11-26 12:55:55'),
(27, 525, NULL, '1452', 'point', 14523, 3000, 'retrait des points', NULL, '2021-11-26 12:58:04', '2021-11-26 12:58:04'),
(28, 525, NULL, '100', 'carte', 2500, 500, 'rechargement des points', NULL, '2021-11-26 14:28:32', '2021-11-26 14:28:32'),
(29, 525, NULL, '1452', 'point', 1500, 300, 'retrait des points', NULL, '2021-11-26 14:28:51', '2021-11-26 14:28:51'),
(30, 525, NULL, '1452', 'ticket', 5200, 1100, NULL, NULL, '2021-11-26 14:29:08', '2021-11-26 14:29:08'),
(31, 525, NULL, NULL, 'carte', 1500, 150, 'rechargement des points', '1452', '2021-11-26 15:02:31', '2021-11-26 15:02:31'),
(32, 525, NULL, NULL, 'carte', 2500, 250, 'rechargement des points', '1452', '2021-11-26 15:19:53', '2021-11-26 15:19:53'),
(33, 525, NULL, '1452', 'carte', 100, 100, 'rechargement des points', NULL, '2021-11-26 15:20:41', '2021-11-26 15:20:41'),
(34, 525, NULL, '1452', 'point', 100, 100, 'retrait des points', NULL, '2021-11-26 15:21:05', '2021-11-26 15:21:05'),
(35, 525, NULL, NULL, 'carte', 1200, 120, 'rechargement des points', '1426', '2021-11-27 16:36:17', '2021-11-27 16:36:17'),
(36, 525, NULL, NULL, 'carte', 1450, 145, 'rechargement des points', '1500', '2021-11-27 17:50:59', '2021-11-27 17:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `practisedetails`
--

CREATE TABLE `practisedetails` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `practisedetails`
--

INSERT INTO `practisedetails` (`id`, `title`, `des`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Master Card', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'credit-card', NULL, '2018-10-07 04:26:48'),
(2, 'Visa Card', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit beatae eos commodi ipsa eum unde similique facilis, totam maiores nisi.', 'credit-card', NULL, '2018-10-04 19:28:07'),
(3, 'Mobile Recharge Card', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit beatae eos commodi ipsa eum unde similique facilis, totam maiores nisi.', 'credit-card', NULL, '2018-10-04 19:28:12'),
(4, 'Play Store Card', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit beatae eos commodi ipsa eum unde similique facilis,', 'credit-card', NULL, '2018-10-07 04:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(2, 'facebook', 'https://www.facebook.com/pgu', '2018-05-27 05:41:27', '2018-05-27 05:45:35'),
(3, 'twitter', 'https://www.facebook.com/pguk', '2018-05-27 05:41:57', '2018-05-27 05:41:57'),
(7, 'instagram', 'https://www.facebook.com/pgu', '2018-06-20 01:41:23', '2018-06-20 01:41:23'),
(8, 'linkedin', '#', '2018-10-07 05:26:06', '2018-10-07 05:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `staticcontents`
--

CREATE TABLE `staticcontents` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staticcontents`
--

INSERT INTO `staticcontents` (`id`, `title`, `amount`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Card Categories', 6, NULL, NULL, '2018-10-09 12:26:48'),
(2, 'Ariations of passages', 25443, NULL, NULL, '2018-10-03 03:28:28'),
(3, 'Card Sold', 3590, NULL, NULL, '2018-10-09 12:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `sucscribes`
--

CREATE TABLE `sucscribes` (
  `id` int UNSIGNED NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `card_id` int DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_recu` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trxid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `card_id`, `amount`, `balance`, `type`, `details`, `num_recu`, `trxid`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 416, NULL, '3500', '1500', '1', 'Deposé via ', NULL, '56978', 1, '2021-11-11 18:52:41', '2021-11-11 18:52:41'),
(2, 525, NULL, '1500', '0', '1', 'Deposé via ', NULL, '57811', 7, '2021-11-19 12:17:44', '2021-11-19 12:17:44'),
(3, 451, NULL, '1500', '0', '1', 'Deposé via ', NULL, '57818', 7, '2021-11-19 12:24:23', '2021-11-19 12:24:23'),
(4, 451, NULL, '1500', '0', '1', 'Deposé via ', NULL, '57819', 7, '2021-11-19 12:26:49', '2021-11-19 12:26:49'),
(5, 525, NULL, '3500', '0', '1', 'Deposé via ', NULL, '57815', 7, '2021-11-19 12:43:53', '2021-11-19 12:43:53'),
(6, 454, NULL, '7000', '500', '1', 'Deposé via ', NULL, '57812', 7, '2021-11-19 13:36:27', '2021-11-19 13:36:27'),
(7, 454, NULL, '1500', '500', '1', 'Deposé via ', NULL, '57825', 7, '2021-11-19 13:41:08', '2021-11-19 13:41:08'),
(8, 525, NULL, '3000', '0', '1', 'Deposé via ', NULL, '57814', 7, '2021-11-19 13:42:45', '2021-11-19 13:42:45'),
(9, 525, NULL, '4000', '0', '1', 'Deposé via ', NULL, '57813', 7, '2021-11-19 13:44:05', '2021-11-19 13:44:05'),
(10, 525, NULL, '5000', '0', '1', 'Deposé via ', NULL, '57826', 7, '2021-11-19 13:46:41', '2021-11-19 13:46:41'),
(11, 525, NULL, '1500', '0', '1', 'Deposé via ', NULL, '57823', 7, '2021-11-19 13:51:12', '2021-11-19 13:51:12'),
(12, 525, NULL, '1500', '0', '1', 'Deposé via ', NULL, '57822', 7, '2021-11-19 13:56:10', '2021-11-19 13:56:10'),
(13, 525, NULL, '1500', '0', '1', 'Deposé via ', NULL, '57821', 7, '2021-11-19 14:09:17', '2021-11-19 14:09:17'),
(14, 541, NULL, '1500', '0', '1', 'Deposé via ', NULL, '57827', 7, '2021-11-19 14:20:30', '2021-11-19 14:20:30'),
(15, 525, NULL, '5000', '0', '1', 'Deposé via ', NULL, '57839', 7, '2021-11-19 17:11:46', '2021-11-19 17:11:46'),
(16, 416, NULL, '1500', '1500', '1', 'Deposé via ', NULL, '58086', 7, '2021-11-23 18:06:38', '2021-11-23 18:06:38'),
(17, 416, NULL, '10000', '1500', '1', 'Deposé via ', NULL, '58087', 7, '2021-11-23 18:08:14', '2021-11-23 18:08:14'),
(18, 377, NULL, '1500', '500', '1', 'Deposé via ', NULL, '58097', 7, '2021-11-24 09:55:49', '2021-11-24 09:55:49'),
(19, 505, NULL, '5000', '0', '1', 'Deposé via ', NULL, '58117', 7, '2021-11-24 13:48:39', '2021-11-24 13:48:39'),
(20, 86, NULL, '2000', '8000', '5', NULL, '1230', 'MfJ1eswRh0TgUvry', NULL, '2021-11-25 15:54:54', '2021-11-25 15:54:54'),
(21, 86, NULL, '1000', '7000', '1', 'Deposé via rechargement des points', NULL, '1236', 5, '2021-11-25 15:57:41', '2021-11-25 15:57:41'),
(22, 474, NULL, '1000', '0', '1', 'Deposé via ', NULL, '58184', 3, '2021-11-25 17:30:24', '2021-11-25 17:30:24'),
(23, 86, NULL, '2000', '7000', '1', 'Deposé via ', NULL, '1234', 1, '2021-11-26 02:09:48', '2021-11-26 02:09:48'),
(24, 86, NULL, '1000', '8000', '5', NULL, '1234', 'PZ8bDz1EvwyzeyMu', NULL, '2021-11-26 02:10:52', '2021-11-26 02:10:52'),
(25, 525, NULL, '15000', '15000', '5', NULL, '1452', 'PmXADaECuwLNWpxQ', NULL, '2021-11-26 12:46:57', '2021-11-26 12:46:57'),
(26, 525, NULL, '70000', '15000', '1', 'Deposé via ', NULL, '1452', 4, '2021-11-26 12:55:55', '2021-11-26 12:55:55'),
(27, 525, NULL, '14523', '15000', '1', 'Deposé via retrait des points', NULL, '1452', 4, '2021-11-26 12:58:04', '2021-11-26 12:58:04'),
(28, 525, NULL, '2500', '12500', '1', 'Point crédité', NULL, '100', 4, '2021-11-26 14:28:33', '2021-11-26 14:28:33'),
(29, 525, NULL, '1500', '12500', '1', 'Point debité', NULL, '1452', 4, '2021-11-26 14:28:51', '2021-11-26 14:28:51'),
(30, 525, NULL, '5200', '12500', '1', '', NULL, '1452', 4, '2021-11-26 14:29:08', '2021-11-26 14:29:08'),
(31, 525, NULL, '145', '15055', '5', 'Solde débité', NULL, 'vtPekMyUg6V2bW0B', NULL, '2021-11-26 14:31:50', '2021-11-26 14:31:50'),
(32, 525, NULL, '1500', '16555', '5', 'Solde crédité', '1452', 'nDnv88VbRZItcBUg', NULL, '2021-11-26 15:02:31', '2021-11-26 15:02:31'),
(33, 525, NULL, '2500', '19055', '5', 'Solde crédité', '1452', 'wNRP89iEIWk5Yb7L', 1, '2021-11-26 15:19:53', '2021-11-26 15:19:53'),
(34, 525, NULL, '100', '18955', '1', 'Point crédité', NULL, '1452', 1, '2021-11-26 15:20:41', '2021-11-26 15:20:41'),
(35, 525, NULL, '100', '18955', '1', 'Point debité', NULL, '1452', 1, '2021-11-26 15:21:05', '2021-11-26 15:21:05'),
(36, 525, NULL, '1200', '1350', '5', 'Solde crédité', '1426', 'ZGbKoAAg2OuHE0bO', 4, '2021-11-27 16:36:17', '2021-11-27 16:36:17'),
(37, 525, 208, '1450', '2800', '5', 'Solde crédité', '1500', 'kThyqNF2uPIu8YnX', 1, '2021-11-27 17:50:58', '2021-11-27 17:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse1` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse2` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailv` int NOT NULL,
  `smsv` int NOT NULL,
  `tauth` int DEFAULT NULL,
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `balance_point` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `vsent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vercode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salute` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gender` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `code`, `name`, `lastname`, `adresse1`, `adresse2`, `email`, `username`, `password`, `country`, `city`, `mobile`, `genre`, `emailv`, `smsv`, `tauth`, `balance`, `balance_point`, `status`, `vsent`, `vercode`, `remember_token`, `address1`, `address2`, `state`, `zipcode`, `remark`, `salute`, `Gender`, `birth_date`, `created_at`, `updated_at`, `deleted`) VALUES
(1, NULL, 'DIOP Diop', '', 'ANGRE', '', '0779233660@kignonbarbershop.com', '0708903494', '$2y$10$CU0ZZ804Prd5isov1fl3XujOkDDu/L1Z4Tg6gjatWvsdvY2TJRJbe', 'Côte d\'Ivoire', 'ABIDJAN', '0708903494', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, 'mGnA9eQQsFgnESOiYMF6FEASz0OhssVoyzSAKkCyCTzMJ5CKsPnvsTCxe80h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:25:52', 0),
(2, NULL, 'SONERERE Mathias', '', 'ANGRE', '', '68222222@kignonbarbershop.com', '0768222222', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '68222222', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 13:28:04', 0),
(3, NULL, 'BAOUA', 'ABDALLAM ABDOUL RAMANE', 'YOPOUGON SELMER', '', 'abdallahbaoua001@gmail.com', '0797233984', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '97233984', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:04', 1),
(4, NULL, 'COULIBALY', 'ADAMA', 'ANGRE ', '', 'a.coulibaly@systech-ci.net', '09716578', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0709716578', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 16:45:49', 1),
(5, NULL, 'COULIBALY', 'ADAMA', 'ANGRE', '', 'a.coulibaly@syxtech-ci.net', '09716570', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0709716570', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:30:36', 1),
(6, NULL, 'ADEBODJE Elikiam', 'ADEBODJE', 'VALLON', '', '89372427@kignonbarbershop.com', '0789372427', '$2y$10$QraR0sINLx8oarw5J3Wg2.BwKEHkUqsDugEYZZ8v3mkiA/J.K9hMm', 'Côte d\'Ivoire', 'VALLON', '89372427', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:03:58', 0),
(7, NULL, 'ADOMAN Mian Etienne', 'ADOMAN MIAN', 'RIVIERA', '', 'etiennmian@gmail.com', '07988677', '$2y$10$EguYFdkVFNne96cnasUmE.5DNDOYWSonO4rjiHB0GqvkXGlmxxGGe', 'Côte d\'Ivoire', 'ABIDJAN', '0707988677', 'Homme', 1, 1, 0, '2000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:36:07', 0),
(8, NULL, 'AGBEDJE Gael  Donald', 'AGBEDJE', 'KOUAMASSI REMBLAIRE', '', '77798124@kignonbarbershop.com', '0777798124', '$2y$10$hjufdn98.p3nW48nLP5hnOibRREJX8x8uFFYwZsnO/J5WY8UPek3e', 'Côte d\'Ivoire', 'ABIDJAN', '77798124', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:09:31', 0),
(9, NULL, 'AKA Jean', 'AKA', 'YOPOUGON', '', '0777206034@kignonbarbershop.com', '77206034', '$2y$10$zWyUZ1UQYsXYfhT/a7wG8OQG1xF6fR.lLqZvvQuuyQMDuZ.6jakwe', 'Côte d\'Ivoire', 'ABIDJAN', '0777206034', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:11:04', 0),
(10, NULL, 'ALAIN Christian Deuchoua', 'ALAIN CHRISTIAN', 'ZONE 4', '', '72652525@kignonbarbershop.com', '0172652525', '$2y$10$BhA5KoWpRqLY/sUBSi.VVOSW6KmqG3guwbCNuHRwMWGON0kvI3hRy', 'Côte d\'Ivoire', 'ZONE 4', '72652525', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:13:39', 0),
(11, NULL, 'ALIOUNE Fall', 'ALIOUNE', '2PLATEAU', '', '54040202@kignonbarbershop.com', '0554040202', '$2y$10$hPaViwZ43r4pDhgmfSk5o.lvB/4PDGJSK7Q7pb0RLmW7W5jlLk5Bu', 'Côte d\'Ivoire', 'ABIDJAN', '54040202', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:14:55', 0),
(12, NULL, 'BAMBA', 'AMADOU', 'VALLON', '', '77932565@kignonbarbershop.com', '0777932565', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '77932565', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:12', 1),
(13, NULL, 'DTIGORI', 'AMONSTM', 'ANGRE', '', '0707485223@kignonbarbershop.com', '07485223', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', '', 'ABIDJAN', '0707485223', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, NULL, 'AMOUSSA Isaac', 'AMOUSSA', 'ABIDJAN', '', '86898712@kignonbarbershop.com', '0586898712', '$2y$10$2RPYxS/RmgnckAk5wAcrPe/lhEvLjf4qOmb76OefZxpNcbz.cliLm', 'Côte d\'Ivoire', 'ANGRE', '86898712', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:09:15', 0),
(15, NULL, 'ANDREN Jackson', 'ANDREN', 'ABIDJAN', '', '58468349@kignonbarbershop.com', '0758468349', '$2y$10$rOo.AzS92ITT2nNkfiZs4uSOtvC9FMYEMJWBeF/S0uDl/UI/Ar2Le', 'Côte d\'Ivoire', 'ANGRE CHATEAU', '58468349', 'Homme', 1, 1, 0, '7000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:50:34', 0),
(16, NULL, 'ANGE Frederic Tape', 'ANGE FREDERIC', '2PLATEAU', '', '0555966692@kignonbarbershop.com', '55966692', '$2y$10$U.XL17.PHMr/87SHPTH2XOd8h4AtLlB.Qi6LB9BPUxqYNrDuRK4H6', 'Côte d\'Ivoire', 'ABIDJAN', '0555966692', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:14:40', 0),
(17, NULL, 'MARC', 'APATA', 'ANGRE', '', '0707107830@kignonbarbershop.com', '07107830', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0707107830', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, NULL, 'ARNAUD Ehouman', 'ARNAUD', 'COCODY', '', 'ARNAUDEARA@GMAIL.COM', '0707844923', '$2y$10$AnWmuAIWolJQgfuL465s6.0QDI7yXEQBZ4AgeFAOTBiJCJWshdGhq', 'Côte d\'Ivoire', 'ABIDJAN', '07844923', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:16:42', 0),
(19, NULL, 'kanganh', 'ASSEIAN FREDERIC', 'COCODY VADOYEN', '', '01030331655@kignonbarbershop.com', '0103 03 31 65 5', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '01030331655', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, NULL, 'KANGAH', 'ASSEMIAN FREDERIC', 'VALLON', '', '03316557@kignonbarbershop.com', '0103316557', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '03316557', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:53:07', 1),
(22, NULL, 'FAUSTIN', 'ATEBI ZIRIGA', 'VALLON', '', 'faustin.atebiziriga@gmail.com', '07071745', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0707071745', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, NULL, 'ATEBI ZirigaFaustin', 'ATEBI ZIRIGA', 'VALLON', '', 'faustin.atebisiriga@gemail.com', '04515182', '$2y$10$xWUwtSGrKZ2mmAi/UZ4TG.yD6um/tQDWFxaoOv5NVwBo/1e3XF.pm', 'Côte d\'Ivoire', 'ABIDJAN', '0504515182', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:20:45', 0),
(24, NULL, 'BAKOH Timi Sonhon', 'BAKOH TIMI', 'COcody RIVERA', '', '59068744@kignonbarbershop.com', '0759068744', '$2y$10$gKQ1XqVcqWBZYyAMXF8WAu7RZm4a11Jtna7lBxSTV0ifqr1DGdGD2', 'Côte d\'Ivoire', 'ABIDJAN07', '59068744', 'Homme', 1, 1, 0, '8000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:49:46', 0),
(25, NULL, 'AMESSAN', 'BANI', 'COCODY', '', '01479881@kignonbarbershop.com', '0101479881', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '01479881', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:15', 1),
(26, NULL, 'BEN Ibrahim Diaby', 'BEN  IBRAHIM', 'VALLON', '', '77224317@kignonbarbershop.com', '0777224317', '$2y$10$f4EUaSpf502gd.CLk/reQObsEr0P.t5hgMij5M36lR5ow/F1qu0RS', 'Côte d\'Ivoire', 'ABIDJAN', '77224317', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:39:17', 0),
(27, NULL, 'ALEXANDRE', 'BERTE', 'VALLON ', '', '09841923@kignonbarbershop.com', '0709841923', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '09841923', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:06:42', 1),
(28, NULL, 'BLACK Danny', 'BLACK', 'COCODY', '', 'daniel.essien@orange.com', '0749736580', '$2y$10$XV1biStyezzd7Fi0XPuPmOqeAdby2weegEnmnpgbd.3I6/20zl4T2', 'Côte d\'Ivoire', 'COCODY', '49736580', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:50:10', 0),
(29, NULL, 'BONNY Jean Marc Koffi', 'BONNY JEAN MARC', '2 PLATEAU', '', '0708432774@kignonbarbershop.com', '08432774', '$2y$10$ZG5DNMWZ3v88lJoiYMcGKenFvUDQeyiLaFi034GgVCsqJxOFOk2DS', 'Côte d\'Ivoire', 'ABIDJAN', '0708432774', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:51:57', 0),
(30, NULL, 'CELESTIN Harembee', 'CELESTIN', '2PLATEAU', '', '75750882@kignonbarbershop.com', '0575750882', '$2y$10$fImkDeXyIz7AiOM1friwCOMRrXw2dIpbpG2lcRlkBOKxBAkEXGptS', 'Côte d\'Ivoire', 'ABIDJAN', '75750882', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:01:03', 0),
(31, NULL, 'Charles Anthony Ndri', 'CHARLES ANTLONY', 'RIVIERA3', '', 'charlesanthonyndri@gmail.com', '77865008', '$2y$10$DMrKOckux3MKooD5L1sENui7xUcoVKaLGti5EsBHGISE2VGTdc5u.', 'Côte d\'Ivoire', 'ABIDJAN', '0777865008', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:06:03', 0),
(32, NULL, 'CHRISTIAN Glin', 'CHRISTIAN', 'COCODY ANGRE NOUVEAU CHU', '', 'dixykey@gmail.com', '0709559170', '$2y$10$7tLVnJpwo4RM3mXQmLAR1uOdxLwS1cX5cUAoV.7LgFa/4jXnzTXxW', 'Côte d\'Ivoire', 'ABIDJAN', '09559170', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 16:45:22', 0),
(33, NULL, 'IBRAHIMA', 'COULIBALY', 'vallon', '', '0707176161@kignonbarbershop.com', '07176161', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0707176161', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(34, NULL, 'BELKO', 'DIALLO', 'ATTOBAN', '', '48323874@kignonbarbershop.com', '0748323874', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '48323874', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:33', 1),
(35, NULL, 'ABOUBAKAR', 'DIARRASOUBA', 'BINGERVILLE', '', '09689943@kignonbarbershop.com', '0709689943', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'BINGERVILLE', '09689943', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:36:41', 1),
(36, NULL, 'DIOMANDE Louh Marc', 'DIOMANDE', 'COCODY ANGRE', '', '0747032688@kignonbarbershop.com', '0747032688', '$2y$10$EJ8G43roW1LTcNxCJBMQFuTMQvJwPhU2/KOX0XPNLaJGoNryOVd6.', 'Côte d\'Ivoire', 'COCODY ANGRE', '47032688', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, 'kqRO5Fi2fW7oXljzoySQTv9FygUXu7id2C7oeaLQnTHPRSXlqlZ9aIp8Nhxz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:22:30', 0),
(37, NULL, 'MAMADOU', 'DIOMANDE', 'ANGRE', '', '07927295@kignonbarbershop.com', '0707927295', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '07927295', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:20:48', 1),
(38, NULL, 'DJESSI Dylan', 'DJESSI', 'VALLON', '', '79697155@kignonbarbershop.com', '0779697155', '$2y$10$baAb90.C2P4H/AChyV.F0O7j0oyYxy3AhTn5CTC6hnIvL9HSpCpae', 'Côte d\'Ivoire', 'VALLON', '79697155', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:28:58', 0),
(39, NULL, 'DOUKOURE Tidiane', 'DOUKOURE', 'PALMERAIS', '', '02693102@kignonbarbershop.com', '0102693102', '$2y$10$06pfdLgcipqT8xksC.w2AegLMEIkuYsZQviYCbwi4zRZxrcx3A2CS', 'Côte d\'Ivoire', 'PALMERAIS', '02693102', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:31:05', 0),
(40, NULL, 'DRAMERA Mohamed', 'DRAMERA', 'COCODY', '', '03663385@kignonbarbershop.com', '0103663385', '$2y$10$R7.SBgMXlFM4Tch2PCFf/u2QnOyaIKJIeDQDOiPAZF2V.bVJPY9Wa', 'Côte d\'Ivoire', 'COCODY', '03663385', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:33:20', 0),
(41, NULL, 'EKRA Jean  Baptiste', 'EKRA', 'COCODY RIVIERA', '', '58588585@kignonbarbershop.com', '0758588585', '$2y$10$dkrYboRZERMoQ0GXjCqoZOaz03jdEC1wID6JZVQSLhXhA0z0fxAby', 'Côte d\'Ivoire', 'COCODY RIVIERA', '58588585', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:35:52', 0),
(42, NULL, 'DIALLO', 'EZZEDINE', '2PLATEAU', '', '79199291@kignonbarbershop.com', '0779199291', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '79199291', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(43, NULL, 'FANNY Lacina', 'FANNY', 'vallon', '', 'Lfanny@gmail.com', '0778903105', '$2y$10$f2pbcZRH3FGpKj9HyY7BZ.7JkTl60LJyBqvGnuWiG.cu1.T5q8J72', 'Côte d\'Ivoire', 'abidjan', '78903105', 'Homme', 1, 1, 0, '6000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:56:00', 0),
(44, NULL, 'COLY', 'FAYE', '2PLATEAU', '', 'colyfa2000@yahoo.rf', '57706774', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0757706774', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:30:30', 1),
(45, NULL, 'M0002!', 'GBEULI MICHAEL', 'RIVIERA', '', '+15143488985@kignonbarbershop.com', 'Kpazahi C. Hermann Sohou', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '+15143488985', 'Homme', 1, 0, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-20 16:05:17', 0),
(46, NULL, 'GEORGES Kprakpra', 'GEORGES', '2PLATEAU', '', '58474849@kignonbarbershop.com', '0758474849', '$2y$10$ofvJ9aKVAG6AR/SkVMkWhObEeWYI1RARCfC1lOo3ZlHW7.Qhcya/O', 'Côte d\'Ivoire', 'ABIDJAN', '58474849', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:03:09', 0),
(47, NULL, 'ANSAMAN', 'GOERGES', '2PLATEAU', '', '46006002@kignonbarbershop.com', '0546006002', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '46006002', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:25', 1),
(48, NULL, 'BAUE', 'HABIB', 'ANGRE', '', '06323509@kignonbarbershop.com', '0506323509', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '06323509', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:23', 1),
(49, NULL, 'COULIBALY', 'HABIB', 'ANGRE', '', '0544996507@kignonbarbershop.com', '44996507', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0544996507', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:30:33', 1),
(50, NULL, 'BAMBA', 'HABIB YASSEEN', 'VALLON', '', '48422130@kignonbarbershop.com', '0748422130', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '48422130', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:00', 1),
(51, NULL, 'HASSEN Ily', 'HASSEN', 'VALLON', '', '57815049@kignonbarbershop.com', '0757815049', '$2y$10$cS1Npw5esE6qugkOKhDOMew2ILU9b0mVTejH.IPHO9oFJoCicApFW', 'Côte d\'Ivoire', 'ABIDJANJIN ', '57815049', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:42:49', 0),
(52, NULL, 'HERVE Ehouman', 'HERVE', 'ANGRE 7EM TRANCHE', '', '07425299@kignonbarbershop.com', '0707425299', '$2y$10$O8FirpRwXzNFLxQOCKRBmOBA8dYTgP3EzETkDpJl.466nQA0i0GxW', 'Côte d\'Ivoire', 'ABIDJAN', '07425299', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:45:30', 0),
(53, NULL, 'HERVE Ndoba', 'HERVE', '2PLATEAU', '', '0506964040@kignonbarbershop.com', '06964040', '$2y$10$u2psP8RvO2levhZkEGBAR.ZxQxjvYfsw/QLabPQdu2nh.XXS1dwP2', 'Côte d\'Ivoire', 'ABIDJAN', '0506964040', 'Homme', 1, 1, 0, '7000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:38:18', 0),
(54, NULL, 'KOUADIO Nguessan', 'HONORE', 'ANGRE', '', 'kouadionh@yahou.fr', '07223802', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0707223802', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 11:36:57', 0),
(55, NULL, 'ZAROUR', 'HUSSEIS', '2PLATEAU', '', '0103660606@kignonbarbershop.com', '03660606', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0103660606', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:49:44', 1),
(56, NULL, 'HUSSEIS Zarour', 'HUSSEIS', '2PLATEAU', '', '0747064684@kignonbarbershop.com', '47064684', '$2y$10$3hpuhW843UrrzcSL5hO9NODrrM6krFZm520LqIrKBDVdSnzCoDCVG', 'Côte d\'Ivoire', 'ABIDJAN', '0747064684', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:46:34', 0),
(57, NULL, 'COULIBALY', 'IDRISS', 'RIVIERA BONOUMIN', '', '58636304@kignonbarbershop.com', '0758636304', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '58636304', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:30:40', 1),
(58, NULL, 'KANTE Ismael', 'ISMAEL', 'VALLON', '', '09504040@kignonbarbershop.com', '0709504040', '$2y$10$uUBiW7rVAhpu4hGfWcFbG.bT.4I2WM6xlyVuruforgzcHUopCdunO', 'Côte d\'Ivoire', 'ABIDJAN', '09504040', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:25:00', 0),
(59, NULL, 'BEHOU', 'JEAN MART', 'ANGRE', '', '59031060@kignonbarbershop.com', '0759031060', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '59031060', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:30', 1),
(60, NULL, 'KADIATOU Doumbia', 'KADIATOU', 'ANGRE', '', '07783112@kignonbarbershop.com', '0707783112', '$2y$10$FXVb8U19n6HHV9rjs4xH8.9O/14Z4oZvVIS5Rv4/ETlgUIZLmWCK6', 'Côte d\'Ivoire', 'ABIDJAN', '07783112', 'Femme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:53:12', 0),
(61, NULL, 'KAFANA Nafo', 'KAFANA', 'COCODY LYCEE TECHNIQUE', '', '07896969@kignonbarbershop.com', '0707896969', '$2y$10$tDDrZKn6DF//jyBIloyc3OORJdk0C/4HLTRv1x/YHFq1piAuSXj0.', 'Côte d\'Ivoire', 'ABIDJAN', '07896969', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:58:23', 0),
(62, NULL, 'KAFI Mohamed', 'KAFI', 'PLATEAU', '', '66988489@kignonbarbershop.com', '0566988489', '$2y$10$uy7bexTf1FYg0D1A77NINe4MgUA4fJaQuAjCzGC8YWFQOhEJh0sVq', 'Côte d\'Ivoire', 'ABIDJAN', '66988489', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:00:46', 0),
(63, NULL, 'KASSI Jean Claude', 'KASSI', 'VALLON', '', '09151617@kignonbarbershop.com', '0709151617', '$2y$10$GJnpXScc1oEh0xsO7GGx2Ob8tbfLqukKChiXvdpzBrh6vHE1SH/oC', 'Côte d\'Ivoire', 'ABIDJAN', '09151617', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:26:48', 0),
(64, NULL, 'KEBE Dorgeles', 'KEBE', 'VALLON', '', '68640252@kignonbarbershop.com', '0768640252', '$2y$10$IBDNEco/e6HbAyTT3OcMkeaN6SKO1FTY0iltL6FC4LhohmaSnWd9K', 'Côte d\'Ivoire', 'ABIDJAN', '68640252', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:30:27', 0),
(65, NULL, 'KOFFI Franck Olivier', 'KOFFI', '2PLATEAU', '', '07089059@kignonbarbershop.com', '0707089059', '$2y$10$voqAJxCeCblURSeCCr69G.ptNfaWKJLR5CRdnQ8DclDc5JbkaRri.', 'Côte d\'Ivoire', '2PLATEAU', '07089059', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:32:03', 0),
(66, NULL, 'KONAN Aurelien', 'konan AURELIEN', 'RIVIERA FAYA', '', '77052161@kignonbarbershop.com', '0777052161', '$2y$10$YzqCVFznAvWXDazxhvPnSO4etZoU9Wq4gYNDqs9.QPwRNdhgb4qvS', 'Côte d\'Ivoire', 'ABIDJAN', '77052161', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:38:50', 0),
(67, NULL, 'KONE Kone', 'KONE', 'ANGRE', '', '58035846@kignonbarbershop.com', '0758035846', '$2y$10$A.zhYqaPcvJRfh1VmLlAnee4EUomyfrYN1Tg2bQURKo5I6MVmwSfq', 'Côte d\'Ivoire', 'ABIDJAN', '58035846', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:41:48', 0),
(68, NULL, 'SEKONGO Konlonan Bakary', 'KONLONAN BAKARY', 'ABIDJAN', '', '09778188@kignonbarbershop.com', '0709778188', '$2y$10$aPy60ZxoBdABKd7lBoUy/O3YN6FedBrM8UWXla9EF7MXpcU5sZSou', 'Côte d\'Ivoire', 'DOKUI', '09778188', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:28:38', 0),
(69, NULL, 'AMESNIPO', 'KOSSI DODZI EMANUEL', 'VALLON', '', 'omegnlto@gmail.com', '57711540', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0757711540', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:07:50', 1),
(70, NULL, 'KOTCHI', 'KOTCHI', 'angre', '', '0707083070@kignonbarbershop.com', '07083070', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '0707083070', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(71, NULL, 'BASSA', 'KOUADIO MARTIAL', 'RIVIERA', '', '59341943@kignonbarbershop.com', '0759341943', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '59341943', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:51', 1),
(72, NULL, 'KOUAKOU Konan  Alain  Marc', 'KOUAKOU', 'RIVIERA ABATTA', '', '49609424@kignonbarbershop.com', '0749609424', '$2y$10$/KhHkM6zFnhlNR2PBAykmufSpcxKvB3kSVNNcj48/InEoEauexwve', 'Côte d\'Ivoire', 'RIVIERA ABATTA', '49609424', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:48:53', 0),
(73, NULL, 'KOUAME Hugues', 'KOUAME', 'ANGRE', '', '49128458@kignonbarbershop.com', '0749128458', '$2y$10$agwn3vjO0ec7fnACq/oXA.DG50EBhUjV7No9X.JMOzxCpoZHyDIDe', 'Côte d\'Ivoire', 'ABIDJAN', '49128458', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:50:43', 0),
(74, NULL, 'KOTCHI', 'LAURENT', 'ANGRE', '', '07083072@kignonbarbershop.com', '0707083072', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '07083072', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, NULL, 'BONAVENTURE', 'LOUIS', 'vallon', '', 'I-oulei@yahoo.fr', '85491814', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '0585491814', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:14', 1),
(76, NULL, 'LUDMILLA Gauze', 'LUDMILLA', '2PLATEAU VALLON', '', '08643439@kignonbarbershop.com', '0708643439', '$2y$10$YnkF8XiGI9GZloybg2S3/uy7Z8jLGTB8yhf421ps0mHc7G6t6x3u2', 'Côte d\'Ivoire', 'ABIDJAN', '08643439', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 21:01:05', 0),
(78, NULL, 'ANOUMA', 'MAC GAEL', 'VALLON', '', '0789650830@kignonbarbershop.com', '89650830', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0789650830', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:16', 1),
(79, NULL, 'Sovidé Dylan McKenzie', 'MAKEZINE', 'VALLON', '', '08192867@kignonbarbershop.com', '0708192867', '$2y$10$0314Mw8/6MdvHqxUicT8V.SngFAS2hkXNNvv/wdKUeXjIifHY2/Xi', 'Côte d\'Ivoire', 'ABIDJAN', '08192867', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 21:08:34', 0),
(80, NULL, 'MAMA Demba', 'MAMA', 'DOKUI', '', '0708644542@kignonbarbershop.com', '08644542', '$2y$10$fMvgLs2095QB7Oer4tNYneUCCKB6aYpFbP6hzWPUPpEAcz0yFVcD6', 'Côte d\'Ivoire', 'ABIDJAN', '0708644542', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 21:08:06', 0),
(81, NULL, 'CHERIF', 'MAMADOU', 'ABIDJAN', '', '0709889984@kignonbarbershop.com', '09889984', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '2 PLATEAU VALLON', '0709889984', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:12:00', 1),
(82, NULL, 'KOUYATE Mamadou', 'MAMADOU', 'COCODY', '', '98475033@kignonbarbershop.com', '0798475033', '$2y$10$5IcNQKsuRUGwT4scKRd5UOL3gLKZlqajrORPhXE8nPM7terxb6p5C', 'Côte d\'Ivoire', 'ABIDJAN', '98475033', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:56:37', 0),
(83, NULL, 'BARRY', 'MAMADOU BILLO', 'VALLON', '', 'bmamadoubillo@gmail.com', '55880092', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0555880092', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:08', 1),
(84, NULL, 'MANGBE Marlyn', 'MANGBE', 'ABIDJAN', '', '77754927@kignonbarbershop.com', '0777754927', '$2y$10$XQKRUy4n2fFh2znKNbxuWeu7k3K2vOEvy1b/jStdsDqZ4fYQQ.N3a', 'Côte d\'Ivoire', 'ANYAMA RESIDENTIELLLE', '77754927', 'Femme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:35:22', 0),
(85, NULL, 'KOKOLA Marius Selor', 'MARIUS SELOR', 'ABOBO', '', '09701438@kignonbarbershop.com', '0709701438', '$2y$10$i5qDsXC0EHParrb6uNvWW./vTVvnkuk6K/iNuKdC5E6UZDShzCke2', 'Côte d\'Ivoire', 'ABIDJAN', '09701438', 'Homme', 1, 1, 0, '2500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:52:19', 0),
(86, NULL, 'SiLUE Martin', 'MARTIN', 'YOPOUGON TOIT ROUGE', '', '06180118@kignonbarbershop.com', '0506180118', '$2y$10$Z20ZmDo1x4o/sXCShMx/WephDjmhWFONhwdi0T1bQaBNvcD2gcKtC', 'Côte d\'Ivoire', 'ABIDJAN', '06180118', 'Homme', 1, 1, 0, '8000', 900, 1, '1635366877', NULL, 'CNLt0tigCA6mtwEg6Y5vBd1oNu2ENljmD5ZbkejvmHeS9l6yFYoKROYRaf3S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-26 02:10:52', 0),
(87, NULL, 'MELESSE Cynthia Epse Dao', 'MELESSE EPOUSE DAGBO', 'VALLON', '', '07456641@kignonbarbershop.com', '0707456641', '$2y$10$o33fnz./bkOvKXJV7n0ELeG.qWcC4/40SlDnSKAhz1DHEZxBH1cti', 'Côte d\'Ivoire', 'ABIDJAN', '07456641', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:38:00', 0),
(88, NULL, 'OUMAR', 'MEUBLE', 'YOPOUGON', '', 'malaminesoro@yahoo.fr', '47878791', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0747878791', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(89, NULL, 'DOUGROU', 'MICHAEL', 'COCODY GENIE 2000', '', '07093309703@kignonbarbershop.com', '07093309703', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '07093309703', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, NULL, 'ABOYA', 'mohamed', 'ANGRE', '', '0707650409@kignonbarbershop.com', '07650409', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0707650409', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:19:24', 1),
(91, NULL, 'MONCHEH Kelani', 'MONCHEH', 'VALLON', '', '49509796@kignonbarbershop.com', '0749509796', '$2y$10$jm9HbX48BvBgTsvBxmOOSuD0xATICcT3f.18HhoH3vtVjm5gtNeYy', 'Côte d\'Ivoire', 'ABIDJAN', '49509796', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:41:49', 0),
(92, NULL, 'MOUSSA Mr et Mme  Kone', 'MOUSSA', 'VALLON', '', '07905337@kignonbarbershop.com', '0707905337', '$2y$10$4EpvRysXed3u1NkhKY0/ZezJqXPBSdxw.0mU760VLxn3esCMXdyom', 'Côte d\'Ivoire', 'ABIDJAN', '07905337', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:44:22', 0),
(93, NULL, 'Mr DIE Esteban', 'MR DIE', 'RIVIERA3', '', '87001043@kignonbarbershop.com', '0787001043', '$2y$10$OnAJ9G7aDeTVyirIQE2X8.ivqL6jUbRV.SxwneQuM4e8WcRpw8j7m', 'Côte d\'Ivoire', 'ABIIDJAN', '87001043', 'Homme', 1, 1, 0, '30000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:57:20', 0),
(94, NULL, 'MUTOMBO Cartler Michel', 'MUTOMBO CARTLER', '', '', '79129391@kignonbarbershop.com', '0779129391', '$2y$10$NEkuSCMnZTEC6IqzJMVtbua8Tf3xlbYSXMEm1LYytX4SR6vq9WDnu', 'Côte d\'Ivoire', 'RIVIERA3', '79129391', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:48:32', 0),
(95, NULL, 'NDAYE Oumar', 'NDAYE', '2PLATEAU', '', '78502320@kignonbarbershop.com', '0778502320', '$2y$10$FuCmDb5RpDcW40gEY6MjzemF8cG6ve3kb9oLcy1qh1blZniR8tLkK', 'Côte d\'Ivoire', 'ABIDJAN', '78502320', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:52:35', 0),
(96, NULL, 'GNAHOUI Nestis', 'NESTIS', 'VALLON', '', '08882654@kignonbarbershop.com', '0708882654', '$2y$10$eN8oUywdO8ScB.koHoRlaul446uvuyjn0NtTE4O2iUmDlP60bVabO', 'Côte d\'Ivoire', 'VALLON', '08882654', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:08:13', 0),
(97, NULL, 'CHRISTIAN', 'ODUMA', 'VALON', '', '0769609667@kignonbarbershop.com', '69609667', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0769609667', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:19:12', 1),
(98, NULL, 'OKOU Keiru', 'OKOU', 'ABIDJAN', '', '78257124@kignonbarbershop.com', '0778257124', '$2y$10$adat2KjzcMm3BBSIHNCyeOu1zOfA7iK32h9puRrte4BljpN0qM0zq', 'Côte d\'Ivoire', 'VALLON', '78257124', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:56:58', 0),
(99, NULL, 'OTCHIMOU Niangoran David', 'OTCHIMOU', '2PLATEAU', '', '85833345@kignonbarbershop.com', '0585833345', '$2y$10$gR3.gyksSVkfmmUw3Uz5q.TWJeMHkT.tXa/riut05tVAZwBpx34ZK', 'Côte d\'Ivoire', 'ABIDJAN', '85833345', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:59:27', 0),
(100, NULL, 'ABDOUL', 'OUATTARA', 'PALMERAIS', '', '41312159@kignonbarbershop.com', '0141312159', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '41312159', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:18:51', 1),
(101, NULL, 'ABOUBACAR', 'OUEDRAOGO', 'RIVIERA ABATTA', '', '77679399@kignonbarbershop.com', '0777679399', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'RIVIERA ABATTA', '77679399', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:36:37', 1),
(102, NULL, 'ADAMA', 'OUEDRAOGO', 'YOPOUGON', '', '0707412041@kignonbarbershop.com', '07412041', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0707412041', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:06:27', 1),
(103, NULL, 'OUMAR Gueye', 'OUMAR', 'VALLON', '', '0768949479@kignonbarbershop.com', '68949479', '$2y$10$teCMGXEL9UNJUEmIRbDRd.xvPywfyUFtMQLPrBX5EcoyNq9SC8e56', 'Côte d\'Ivoire', 'ABIDJAN', '0768949479', 'Homme', 1, 1, 0, '3000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:37:12', 0),
(105, NULL, 'OUSMANE Soumahoro', 'OUSMANE', 'COCODY', '', '01015759@kignonbarbershop.com', '0101015759', '$2y$10$sbZ0bzGrZV8p414d23eIyOLEpbHAjaxgoA3NgaG3jMCz77ZF1BJWe', 'Côte d\'Ivoire', 'ABIDJAN', '01015759', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:14:06', 0),
(106, NULL, 'POULALEA Tra Lou', 'POULALEA', 'ANGRE', '', '0747829414@kignonbarbershop.com', '47829414', '$2y$10$4ClWTG4OCGEZIV0o5zQBHe4XJDBIe8YW7UEgpnREBc/3P9kTZlHem', 'Côte d\'Ivoire', 'ABIDJAN', '0747829414', 'Femme', 1, 1, 0, '15000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:39:24', 0),
(107, NULL, 'RENE Yedieti', 'RENE', 'VALLON', '', '04000590@kignonbarbershop.com', '0504000590', '$2y$10$bLYk9zzIRi2DPXG36V8vIOkx2Uv7GGcgUztm0ATs3f9gh6JDDkV6C', 'Côte d\'Ivoire', 'ABIDJAN', '04000590', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:16:47', 0),
(108, NULL, 'RIYAD Macos', 'RIYAD', 'ANGRE', '', 'riyadmacarcos@gmail.com', '0708862458', '$2y$10$T9CbjoBzLc3wddKZ.aGDvedChCuKgb84ytBMvmBCNmispzNyCNs8K', 'Côte d\'Ivoire', 'ABIDJAN', '08862458', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:18:35', 0),
(109, NULL, 'SANGARE Rayan', 'SANGARE', '2PLATEAU', '', '08641069@kignonbarbershop.com', '0708641069', '$2y$10$D6a2Og99KZ56zqThodN5/u01Gh2WJnrMEH1.umDCJFSQcHikbGhD6', 'Côte d\'Ivoire', '2PLATEAU', '08641069', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:22:30', 0),
(110, NULL, 'SBADIM Dramera', 'SBADIM', 'ATTOBAN', '', '49849817@kignonbarbershop.com', '0749849817', '$2y$10$rFh6jDolURDS5jiozk.f3uilYl1B8IzY78fs7J0rM9UypSNhth24m', 'Côte d\'Ivoire', 'ABIDJAN', '49849817', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:27:17', 0),
(111, NULL, 'BOCOUN', 'SEKOU', 'RIVIERA', '', '08450984@kignonbarbershop.com', '0708450984', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '08450984', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:10', 1),
(112, NULL, 'ANDJEMIAN', 'SERGE ERIC', 'VALLON', '', '0707063611@kignonbarbershop.com', '07063611', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0707063611', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:22', 1),
(113, NULL, 'ABOUBACAR', 'SILUE', 'COCODY', '', '07985831@kignonbarbershop.com', '0707985831', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '07985831', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:05:50', 1),
(114, NULL, 'RAZAK', 'SILUE', 'ANGRE', '', '49323288@kignonbarbershop.com', '0749323288', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ANGRE', '49323288', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:57:59', 1),
(115, NULL, 'SOPPO Priso Frederick', 'SOPPO PRISO', 'RIVIERA GOLF', '', '79643324@kignonbarbershop.com', '0779643324', '$2y$10$liGUG.1xzgRFicnYVRtXfeaTU/BLvLsPjnN0mPURIH1qcLIlUxPfm', 'Côte d\'Ivoire', 'ABIDJAN', '79643324', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:21:07', 0),
(116, NULL, 'SORO Idriss', 'SORO', 'COCODY FEH KESSE', '', '77891763@kignonbarbershop.com', '0777891763', '$2y$10$uVHUZNEnRDtf/bT2.MZjieYtlR1JErAd9inyoQXDQE/OXMQp1puLa', 'Côte d\'Ivoire', 'FER KESSE', '77891763', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:24:04', 0),
(117, NULL, 'STEPHANE Yraou', 'STEPHANE', 'VALLON', '', '85893074@kignonbarbershop.com', '0585893074', '$2y$10$Wk2882b7PPpKZpb2sgjNl.H4CApwtyyu8AExX7HfIOYZCqWPo.jnC', 'Côte d\'Ivoire', 'ABIDJAN', '85893074', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:26:10', 0),
(118, NULL, 'CHRISTINE', 'TAO', 'VALLON', '', '41742020@kignonbarbershop.com', '0141742020', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'VALLON', '41742020', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:19:15', 1),
(119, NULL, 'TOUSSAINT Kouame', 'TOUSSAINT', 'RIVIERA PALMERAIRE', '', '07256203@kignonbarbershop.com', '0707256203', '$2y$10$jIzNoLI5mctBHM4CYoKs7Ooc34rJYaBPkAaxbfsGHTTHOznG/QRwS', 'Côte d\'Ivoire', 'ABIDJAN', '07256203', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:39:08', 0),
(120, NULL, 'WALY Coly Faye', 'WALY COLY', 'CITE AGOU ROUTE DE BASSAM', '', '85491814@kignonbarbershop.com', '0585491814', '$2y$10$SjQEyYtUfTModIGc43v1xOgkMKqPC8k9nEuBo7fLNbZFKlzfthHUu', 'Côte d\'Ivoire', 'ABIDJAN', '85491814', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:42:31', 0),
(121, NULL, 'WILLIAMS Usher', 'WILLIAMS', 'vallon', '', 'usherwilliam43@gmail.com', '50480892', '$2y$10$TFdR20vnwAkU2DOD13OZ2./zW38kxI.qJ16JSLv9RJexe/sekwlW6', 'Côte d\'Ivoire', 'abidjan', '0150480892', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 00:00:40', 0),
(122, NULL, 'WODIE Nathan', 'WODIE', 'COCODY DANGA', '', '75138224@kignonbarbershop.com', '0575138224', '$2y$10$PNpFq0jv6cILGzMVbukvYuIZ86NWcI6cUNcsUIHgnEjO.1QeXeh4y', 'Côte d\'Ivoire', 'ABIDJAN', '75138224', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 00:03:06', 0),
(123, NULL, 'YACOUBA Silly', 'YACOUBA', 'ANGRE', '', '01054533@kignonbarbershop.com', '0101054533', '$2y$10$kIjTkM2FYdD.oTAtCiE3bOJBTjIS6Zj7P2.WtbmiPnGM0awKT0rAa', 'Côte d\'Ivoire', 'ABIDJAN', '01054533', 'Homme', 1, 1, 0, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 13:45:56', 0),
(124, NULL, 'YAO Kouame Wilfred', 'Yao', 'faya', '', '51829591@kignonbarbershop.com', '0151829591', '$2y$10$A9QuY3LCbRwmWfFsRbwlZO6ynCmu1Jo0xLkMCQECz2HkgG4iLTVIK', 'Côte d\'Ivoire', 'ABIDJAN', '51829591', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 00:07:38', 0),
(125, NULL, 'YELIETI Yann', 'YELIETI', 'VALLON', '', '59492303@kignonbarbershop.com', '0759492303', '$2y$10$DWph81UhcvFQ9Y8sJfTbh.KDuTDLz89.uNP6A7lv3tK6oOjX3jVYW', 'Côte d\'Ivoire', 'ABIDJAN', '59492303', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 00:13:02', 0),
(126, NULL, 'N,DRI', 'YOAN', 'ANGRE', '', '0759248973@kignonbarbershop.com', '59248973', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'ABIDJAN', '0759248973', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(127, NULL, 'YOBOUA Tano', 'YOBOUA', 'ANGRE', '', '0778034326@kignonbarbershop.com', '78034326', '$2y$10$OF4Zuo2pT1H8UcEbYa3lXOCAsUrUuY3tACHn06k5Rg8BEmloh5xDy', 'Côte d\'Ivoire', 'ABIDJAN', '0778034326', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 00:17:29', 0),
(128, NULL, 'BERNARD CLAUD', 'ABETO', 'Millionnaire', '', 'abetobc@gmail.com', '0545983693', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '45983693', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:40', 1),
(129, NULL, 'AMEDEE ERIC', 'ADELAKOUN', '', '', '08101020@kignonbarbershop.com', '0708101020', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08101020', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:06:50', 1),
(130, NULL, 'AGRIOCORO Timothy', 'AGRIOCORO', 'Winers charpel yopougon', '', '64365627@kignonbarbershop.com', '0564365627', '$2y$10$NlUkayVv6dbS0G5DWgWxvu9LTD5/C31SyAz8Ob5EVd8Mbyo5FpUkm', 'Côte d\'Ivoire', 'Abidjan', '64365627', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:16:12', 0),
(131, NULL, 'AHOUSSY Parfait', 'Ahoussy', 'yopougon', 'millionnaire', 'ahoussyparfait@gmail.com', '57723600', '$2y$10$x67IsjE6v3hmN30xdRVbC.hAEfAEJcaJgMhw1ps8otP9w8jLSrfey', 'Côte d\'Ivoire', '', '0757723600', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:26:04', 0),
(132, NULL, 'ALEX Gartien', 'Alex', 'Yopougon', '', '2759305930@kignonbarbershop.com', '59305930', '$2y$10$cL6iRlKa/DHCoWdf5azAI.OitP.UUnXr723lFsCkAzQs1jyhHj1EC', 'Côte d\'Ivoire', 'Abidjan', '2759305930', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:27:23', 0),
(133, NULL, 'AMOIKOM', 'ANGOUA', 'yopougon', '', '0585636321@kignonbarbershop.com', '85636321', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '0585636321', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:06:56', 1),
(134, NULL, 'APIE ANDREA', 'ATTA', '', '', '88803356@kignonbarbershop.com', '0788803356', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '88803356', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:33', 1),
(135, NULL, 'BAMBA Karamoko', 'Bamba', 'yopougon', '', 'bino_kara@yahoo.fr', '07770331', '$2y$10$CRQBHhHRm9v1J6br4NftuOP6RpRZvEZj9E7TNMR8uWLNJzYtjmHmi', 'Côte d\'Ivoire', 'abidjan', '0707770331', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:31:02', 0),
(136, NULL, 'BOHOUSSOU Yao Ange Emmanuel', 'BOHOUSSOU', 'TOIT ROUGE', '', 'bohoussou2002@gmail.com', '0789809440', '$2y$10$deyhPRKrKYgr94vF3pP28ulFskiw4KyQQkNgQq.938CI2mvhCrFkK', 'Côte d\'Ivoire', '', '89809440', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:37:08', 0),
(137, NULL, 'BOLOU Thibaut Rayanne', 'BOLOU', 'yopougon Millionnaire', '', 'tchebravo29@gmail.com', '0788342738', '$2y$10$ksf.IEKcxt5LEF5nGknvUOwSKH12uoigglLBISaOur2bXPoImHnZS', 'Côte d\'Ivoire', '', '88342738', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:38:15', 0),
(138, NULL, 'BOTIONO Pascal', 'Botiono', '', '', '0707143416@kignonbarbershop.com', '07143416', '$2y$10$7mp.XpXZ9ZwKienoeL6NDuqL1wINxxUdFJfS2L17xvz9abTUdK2Ke', 'Côte d\'Ivoire', 'abidjan', '0707143416', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:07:16', 0),
(139, NULL, 'check', 'Check', 'yopougon', '', '0707855260@kignonbarbershop.com', '07855260', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'Abidjan', '0707855260', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:26', 1),
(140, NULL, 'CISSE Inza Papiss', 'CISSE', '', '', '89741926@kignonbarbershop.com', '0789741926', '$2y$10$aGnjPvQzn.efm4jF4XnZ0.TckcNpKnn7uxTRr5sxbQDhWYlVWp4cy', 'Côte d\'Ivoire', '', '89741926', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:11:40', 0),
(141, NULL, '44 grise', 'Coulibaly', 'cocody', '', '2707359192@kignonbarbershop.com', '07359192', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '2707359192', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:18:46', 1),
(142, NULL, 'CLAUDE', 'COULIBALY', '', '', 'claudecoulibaly07@gmail.com', '0707898349', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07898349', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:30:16', 1),
(143, NULL, 'coulibaly(angre)', 'Coulibaly', 'angre', '', '0708871041@kignonbarbershop.com', '08871041', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '0708871041', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 16:55:40', 1),
(144, NULL, 'COULIBALY Ismael', 'COULIBALY', '', '', '48973267@kignonbarbershop.com', '0748973267', '$2y$10$7YQxiFaANTsNEhmg/9X0Huiq.jP9QvqNFILetjZzMaqRfQN0zjp0O', 'Côte d\'Ivoire', '', '48973267', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:17:34', 0),
(145, NULL, 'DABIE Michael', 'DABIE', 'Millionnaire', '', '07686146@kignonbarbershop.com', '0707686146', '$2y$10$oyZeQTfdXEpFRuDKbai/du77yaYmDFbmXUbGN01Nt9LuIIdL/i/Nu', 'Côte d\'Ivoire', '', '07686146', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:22:58', 0),
(146, NULL, 'EHUI Ehui Jean', 'EHUI', '', '', 'ehuijeanehui@gmail', '0709711215', '$2y$10$s.g1eR0icAXGC2JMTNzlMO5gO62/4Up8XGht2LYt4T7xx/jWfzfmi', 'Côte d\'Ivoire', '', '09711215', '', 1, 1, 0, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 12:32:38', 0),
(147, NULL, 'ANGEM', 'ESMEL', 'Sopim', '', 'metuangemesmel@gmail.com', '0566788634', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '66788634', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:04', 1),
(148, NULL, 'APKA LANDRY', 'ESMEL', '', '', 'apkalandry74@gmail.com', '0707027206', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'Abidjan', '07027206', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:40', 1),
(149, NULL, 'FALE David', 'FALE', '', '', 'davidfale@cloud.com', '0759777853', '$2y$10$YNByDWgJIFrniq8KjfI7POyds5wxX9HkUBVMA6YFV0YHcZInj29ju', 'Côte d\'Ivoire', 'Abidjan', '59777853', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:06:39', 0),
(150, NULL, 'abou', 'Fofana', '', '', '0779030800@kignonbarbershop.com', '79030800', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'Abidjan', '0779030800', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:34:48', 1),
(151, NULL, 'BANGALI', 'FOFANA', '', '', 'fofanabangaly68@gmail.com', '0707720725', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07720725', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:15', 1),
(152, NULL, 'GAROU Honozele Julie', 'GAROU', '', '', 'garoujulie@hotmail.fr', '0555738373', '$2y$10$3TYPXlPPlwJ7CmO/ysf2n.O5BKZqQdSEz1iv.Z6tKG3taRIEaF3Pe', 'Côte d\'Ivoire', 'Abidjan', '55738373', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:16:07', 0);
INSERT INTO `users` (`id`, `code`, `name`, `lastname`, `adresse1`, `adresse2`, `email`, `username`, `password`, `country`, `city`, `mobile`, `genre`, `emailv`, `smsv`, `tauth`, `balance`, `balance_point`, `status`, `vsent`, `vercode`, `remember_token`, `address1`, `address2`, `state`, `zipcode`, `remark`, `salute`, `Gender`, `birth_date`, `created_at`, `updated_at`, `deleted`) VALUES
(153, NULL, 'JULIE', 'GAROU ', '', '', '0555738373@kignonbarbershop.com', '55738373', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0555738373', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(154, NULL, 'GBAZAI Flora', 'GBAZAI', '', '', '59586256@kignonbarbershop.com', '0759586256', '$2y$10$DJItgWB/iiQHeXPGbw5XJOEUdrD/52V7Ghhtr0mNh/Zq1FgwCeyjO', 'Côte d\'Ivoire', '', '59586256', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:17:15', 0),
(155, NULL, 'GBELI Montdesir Inri', 'GBELI', 'yopogon millionnaire', '', 'infosmidiprint@gmail.com', '0708332058', '$2y$10$FWG7WU5iSYNwRjLBqt9yL.ja9q/cfeLMjDrzd9R8QaebWcFRJ/9ri', 'Côte d\'Ivoire', 'Abidjan', '08332058', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:18:39', 0),
(156, NULL, 'joel stephane', 'Guibado', 'yopougon', 'millionnare', 'stephanejoel@yahoo.fr', '07740632', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707740632', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(158, NULL, 'GUIE N\'guessan Franck', 'Guie', 'bingerville', '', 'franckguie@gmail.com', '09896966', '$2y$10$uUMzgDcUfi/irCBBnIbJgO3LFVDH8frhgdTqMV.sVY.gINFuC4RQm', 'Côte d\'Ivoire', 'Abidjan', '0709896966', 'Homme', 1, 1, 0, '7500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 12:31:31', 0),
(159, NULL, 'HARDMONG Jean Herve', 'HARDMONG', '', '', '07655401@kignonbarbershop.com', '0707655401', '$2y$10$iEs1B0JQl7hRym4pw78PyOWsKowPbEospR.gAEJfGgGK1jHDP425W', 'Côte d\'Ivoire', 'Abidjan', '07655401', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:31:12', 0),
(160, NULL, 'KAMENAN Romeo', 'KAMENAN', '', '', 'kamsoleo@yahoo.fr', '0707528052', '$2y$10$3B7Jku.FShPRMQO1AYK7vuUkff3uEWO4jOnPfOAveU9UbAvIY6.cG', 'Côte d\'Ivoire', '', '07528052', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:07:43', 0),
(161, NULL, 'KARAMOKO Ilyassou', 'KARAMOKO', '', '', '65553113@kignonbarbershop.com', '0565553113', '$2y$10$FRofpOioPsSuB010a5RlKu7fJv5t8bDhygj858BMjkQh/P4IcltVa', 'Côte d\'Ivoire', '', '65553113', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:10:36', 0),
(162, NULL, 'KONAN Guillaume', 'Konan', 'songon', '', 'konangui@gmail.com', '07474750', '$2y$10$U0KtDe4sdfBlGJphI3T.vej.eoXVwq7gh0JXiB5h5l3GopLqTkSGW', 'Côte d\'Ivoire', '', '0707474750', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:15:01', 0),
(163, NULL, 'KONAN N\'dri Armand', 'KONAN', '', '', '57370861@kignonbarbershop.com', '0757370861', '$2y$10$36U4gP0z5YNBDIFQbRdtUuau6ZHWmqQA9eV0GZTzhO8JxgENFaRy2', 'Côte d\'Ivoire', '', '57370861', '', 1, 1, 0, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 12:49:33', 0),
(164, NULL, 'adama', 'Kone', 'yopougon', 'ananeraie', 'kone.demsy@gmail.com', '07544439', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707544439', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:48:02', 1),
(165, NULL, 'KOUADIO Fils Bienvenue', 'KOUADIO', 'MILLINNAIRE YOP', '', 'kouadiofilsbienvenue@gmail.com', '0779392281', '$2y$10$yqM7GrQnt0mdf5.Cq5vcFOudruaj4cVMYUVXh9s5bF0uK8w43xKYO', 'Côte d\'Ivoire', '', '79392281', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:28:57', 0),
(166, NULL, 'KOUAKOU Richard', 'KOUAKOU', '', '', 'richardk2@hotmai.fr', '0707707014', '$2y$10$QueA0Gmg/1Um4SkYi4k6AOC.bZMVZB6/VJyRmVyiHop/zw4QF6niu', 'Côte d\'Ivoire', '', '07707014', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:43:37', 0),
(167, NULL, 'KOUASSI Yannick', 'KOUASSI', 'Yop millionnaire', '', 'knyannick@hotmail.fr', '0708303520', '$2y$10$f9m8rZZDw.QZlCJn3yHeiuNCT99nqudjEEyR.JO6O8wuoYXDQj8A2', 'Côte d\'Ivoire', 'Abidjan', '08303520', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:44:39', 0),
(168, NULL, 'KOULOUD Serge Pacome', 'KOULOUD', '', '', 'sergekouloud@gmail.com', '0707432434', '$2y$10$jphOuC.5WzYNC/RCGIjZLeXl4lzOM4VxsZbjwte0q/SW3sdLwQYgq', 'Côte d\'Ivoire', 'Abidjan', '07432434', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:48:03', 0),
(169, NULL, 'KRA N\'guessan Avaly', 'KRA', '', '', 'nguessavaly00@gmail.com', '0708281061', '$2y$10$hpCYiNYYNt3otVbcxKXaiOMI9LSinzHRAb.zXRRw6RWkfRMEru7N2', 'Côte d\'Ivoire', '', '08281061', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:49:15', 0),
(170, NULL, 'andré', 'Krou', 'yopougon', '', 'andre.krou@gmail.com', '07096382', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707096382', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:52', 1),
(171, NULL, 'MEL Levi Uriel', 'Mel', 'yopougon', 'annanerai', 'levieservice@gmail.com', '49606927', '$2y$10$UZku04JYZg7sxLClweWNn.x9YlOBPqbT2HBfyBtRJNEzBfEKXhIxe', 'Côte d\'Ivoire', '', '0749606927', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:12:39', 0),
(172, NULL, 'zakarie', 'Mel', 'yopougon', '', '0757571015@kignonbarbershop.com', '57571015', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '0757571015', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(173, NULL, 'MEL Zakarie', 'Mel', 'yopougon', 'toit rouge', 'mmelangne@gmail.com', '5757101500', '$2y$10$p2g0OE0mll8ecKr35r8Ti.4m6rE7ku27w8J1cM4j8KRjoNDNxxM8q', 'Côte d\'Ivoire', '', '57101500', 'Choisir', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:11:32', 0),
(174, NULL, 'MONO Monoco', 'MONO', '', '', 'sangareemile@gmail.com', '0141726974', '$2y$10$YAwvaYWUaPuuv5jEcrDDTO9ckvJsA1cm.9o.sXBuRUH3bx3HugaWy', 'Côte d\'Ivoire', '', '41726974', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:13:51', 0),
(175, NULL, 'N\'DRI N\'goran Michael', 'N\'DRI', 'Millionnaire', '', 'nichael@gmail.com', '0777229639', '$2y$10$MxEqV/SWC/ENgNk8VGzQQe92JjdOOIvhFhvVhiiGTT/MnK4WuckPq', 'Côte d\'Ivoire', 'Abidjan', '77229639', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:18:22', 0),
(176, NULL, 'alain', 'Nguessan', 'cocody', 'angre', 'alain.nka@gmail.com', '07127182', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '0707127182', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:48:50', 1),
(177, NULL, 'N\'ZI Koffi Jean', 'N\'ZI', '', '', 'kjnzi66@gmail.com', '0707307070', '$2y$10$WXMTDlJh2EL7OOrm/BYQZOunD4lGqa6dDWVXWobKGBf/kL6QOnBHm', 'Côte d\'Ivoire', '', '07307070', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:22:09', 0),
(178, NULL, 'OPLE Yannick Junior', 'OPLE', '', '', 'alain861@gmail.com', '0759752581', '$2y$10$SjdJII9NBhe460JZN9hLDOmwUzSnLn97r.lcfUl0cFoZNP1wjRmEi', 'Côte d\'Ivoire', '', '59752581', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:25:05', 0),
(179, NULL, 'babyssiri', 'Ouattara', 'yopougon', '', '0585000800@kignonbarbershop.com', '85000800', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '0585000800', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:50', 1),
(180, NULL, 'babyssiri', 'Ouattara', 'yopougon', '', '0140989273@kignonbarbershop.com', '40989273', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'abidjan', '0140989273', 'Homme', 1, 1, NULL, '18500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:54', 1),
(181, NULL, 'PEYA Kouame Junior', 'PEYA', 'Yopougon toit rouge', '', 'juniorpeya84@gmail.com', '0759525487', '$2y$10$besLL1ecDdDYPhvNDy2SkOrWfSJ90FrLGNH1W3kBjzcoDBsqY5GyG', 'Côte d\'Ivoire', 'Abidjan', '59525487', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:47:10', 0),
(182, NULL, 'ARISTIDE JISLIN', 'SAGO', '', '', 'jeffersjislin@gmail.com', '0279328604', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', 'Abidjan', '79328604', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:47', 1),
(183, NULL, 'SAHIRI Jean-Noel', 'Sahiri', 'yopougon', 'millionnaire', 'sahirijn@gmail.com', '08834890', '$2y$10$KXCr2xmyU7FOFCiyZdyIdOYe3eGVzxOdMReC0MGkQV2/jMcnWtvhS', 'Côte d\'Ivoire', '', '0708834890', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:51:35', 0),
(184, NULL, 'SANGARE Karamoko', 'SANGARE', '', '', 'sangarekaramoko36@gmail.com', '0748528666', '$2y$10$CwSJJmPpFDrV8GBoVxjvw.834JJ5DTGhSi4Tn44520NXTbKs4V2QK', 'Côte d\'Ivoire', '', '48528666', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:52:41', 0),
(185, NULL, 'SANOGO Issa', 'SANOGO', 'Millionaire (yop)', '', 'isanogo@cinergies.ci', '0708764275', '$2y$10$ayGBI0RrtaO3dAP2.nEl2uBVPlnApYYA8OPYzcdcSzl/Sx7fR7ZUq', 'Côte d\'Ivoire', 'Abidjan', '08764275', '', 1, 1, 0, '1500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 12:34:41', 0),
(187, NULL, 'razak', 'Silue', '', '', '2749323288@kignonbarbershop.com', '49323288', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2749323288', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:57:41', 1),
(188, NULL, 'TANO Jean Brou', 'TANO', 'RIVIERA', '', 'jeanbrou73@gmail.com', '0709953780', '$2y$10$zTNEYtDPh7Q5DqfXroFtX.pWrz1W10uFZ32b7BVNQKtHb79L1gnfm', 'Côte d\'Ivoire', '', '09953780', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 14:03:07', 0),
(189, NULL, 'TEHIA N\'guetta Didier Yannick', 'TEHIA', '', '', 'tehianguettayannick@gmail.com', '0707282400', '$2y$10$tAWpgPRp1GKw/XxxKkTSuedNaLFwrbs02SBxMURgsmeeUctePcLPi', 'Côte d\'Ivoire', '', '07282400', '', 1, 1, 0, '1500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 12:38:58', 0),
(190, NULL, 'TIO Grah', 'TIO', '', '', 'tiograh@gmail.com', '0759248347', '$2y$10$zcaHjLo3bYksPALpbQlR3etAURkkf0lDvXWn8iocquvcrNWWN6jHK', 'Côte d\'Ivoire', '', '59248347', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:24:01', 0),
(191, NULL, 'TRAORE Djakaridja', 'TRAORE', '', '', '08081672@kignonbarbershop.com', '0708081672', '$2y$10$WAeZlNOFCHiFGBFWbyNFa.ut.Kudpl4ZBkCKBg.VJbtL077ATSgfy', 'Côte d\'Ivoire', '', '08081672', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:30:08', 0),
(192, NULL, 'TRAORE Gnessien Elliace', 'TRAORE', 'MOSSIKRO (yop)', '', 'GNESSIEN51@GMAIL.COM', '0757088278', '$2y$10$QLUrzDkgjozi8reTyrRb4.eFOdBsCi10ievEMWQgwzeFbMQokH2uO', 'Côte d\'Ivoire', 'Abidjan', '57088278', '', 1, 1, 0, '2000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 12:33:51', 0),
(193, NULL, 'YAO Konan Jacques Darius', 'YAO', '', '', '07926564@kignonbarbershop.com', '0707926564', '$2y$10$vqCdYMu6ER05i3yrg4vcYu.lFfd17PYr9J02OiZK8i8rM7VoWD3su', 'Côte d\'Ivoire', '', '07926564', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:34:47', 0),
(194, NULL, 'YAO Konan Michael', 'Yao', 'yopougon', '', '0778005220@kignonbarbershop.com', '78005220', '$2y$10$716BfvW6H.Z3w7WoNv9SUuxgo0mUO.6NX6.gruhS0kIunys7wx7OS', 'Côte d\'Ivoire', 'abidjan', '0778005220', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:33:07', 0),
(195, NULL, 'YAPI Richard Kevin', 'YAPI', '', '', 'yapirichard@yahoo.fr', '0707184240', '$2y$10$w7//Sb/NyhlU0jF7cmwk3eGUCE2.qUqDTMtI9qXWz3ReC26xbfCy6', 'Côte d\'Ivoire', '', '07184240', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:36:13', 0),
(196, NULL, 'YUSUT Neuoton', 'YUSUT', '', '', 'neuoweed99@yahoo.com', '0797232151', '$2y$10$J4.sqHFtnnjNN4XcNiF37OztriSc9/EDZ/iMu0aRG/BkOpsRLT91a', 'Côte d\'Ivoire', '', '97232151', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:39:50', 0),
(197, NULL, 'ZOGBO Maurice', 'ZOGBO', '', '', 'zogbomaurice1988@gmail.com', '0778995099', '$2y$10$Y5Vnt3Gn1McibcI5afhu0OUzxRQk/72RuXM/fejFI.PkPd9.Zbn0O', 'Côte d\'Ivoire', '', '78995099', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:42:17', 0),
(198, NULL, 'ZOGBO Zokou Ezechiel', 'ZOGBO', '', '', '88259759@kignonbarbershop.com', '0788259759', '$2y$10$DwZ/X3DyiRADz11g2QiYMOE5pLgmIItx7yriaz7aHBIZtlt1fbi1.', 'Côte d\'Ivoire', '', '88259759', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:46:04', 0),
(199, NULL, 'DR GOULE BI Ange', '', '', '', '0759858108@kignonbarbershop.com', '59858108', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759858108', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 10:06:09', 0),
(200, NULL, 'ahou marie stephanie', '', '', '', '0747564182@kignonbarbershop.com', '47564182', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747564182', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:06:30', 1),
(201, NULL, 'bella', '', '', '', '0707655251@kignonbarbershop.com', '07655251', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707655251', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:43', 1),
(202, NULL, 'bokalo tinni', '', '', '', '0759068744@kignonbarbershop.com', '59068744', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759068744', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:34', 1),
(203, NULL, 'client boris', '', '', '', '0140632049@kignonbarbershop.com', '40632049', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0140632049', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:30:20', 1),
(204, NULL, 'derick', '', '', '', '2779319772@kignonbarbershop.com', '79319772', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2779319772', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:12:19', 1),
(205, NULL, 'AND Kouame Frederic', '', '', '', '0768273656@kignonbarbershop.com', '68273656', '$2y$10$gO.AwZrCIU7Bc2DO.BllnOgCP/Mrt7XosuU9Vgi6PWiK/IRXlW9wa', 'Côte d\'Ivoire', '', '0768273656', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 10:09:05', 0),
(206, NULL, 'MAMAN Zokou', '', '', '', '0506404020@kignonbarbershop.com', '06404020', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0506404020', 'Femme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 12:17:57', 0),
(207, NULL, 'MION BA Michel', '', '', '', '0709798773@kignonbarbershop.com', '09798773', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709798773', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 12:22:39', 0),
(208, NULL, 'Mlle Christelle', '', '', '', '0787556651@kignonbarbershop.com', '87556651', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0787556651', 'Femme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 12:23:53', 0),
(209, NULL, 'Mlle Debora', '', '', '', '0759135623@kignonbarbershop.com', '59135623', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759135623', 'Femme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 12:24:59', 0),
(210, NULL, 'mlle linda', '', '', '', '0788238339@kignonbarbershop.com', '88238339', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0788238339', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(211, NULL, 'NANCY Karel', '', '', '', '0768198186@kignonbarbershop.com', '68198186', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0768198186', 'Femme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 12:27:33', 0),
(212, NULL, 'mme bamba', '', '', '', '0747238877@kignonbarbershop.com', '47238877', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747238877', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:20:40', 1),
(213, NULL, 'mme brigite', '', '', '', '0555242739@kignonbarbershop.com', '55242739', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0555242739', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(214, NULL, 'KOUASSI Charlene', '', '', '', '0759494473@kignonbarbershop.com', '59494473', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759494473', 'Femme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 12:28:25', 0),
(215, NULL, 'mme clemence', '', '', '', '0749235485@kignonbarbershop.com', '49235485', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749235485', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(216, NULL, 'mme dago', '', '', '', '0708196506@kignonbarbershop.com', '08196506', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708196506', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(217, NULL, 'mme doumbia', '', '', '', '0101011289@kignonbarbershop.com', '01011289', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0101011289', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(218, NULL, 'mme ehouman', '', '', '', '0749774995@kignonbarbershop.com', '49774995', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749774995', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(219, NULL, 'mme esmel', '', '', '', '0707921649@kignonbarbershop.com', '07921649', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707921649', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(220, NULL, 'mme esmel', '', '', '', '0101725170@kignonbarbershop.com', '01725170', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0101725170', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(221, NULL, 'mme flore', '', '', '', '0759537972@kignonbarbershop.com', '59537972', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759537972', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(222, NULL, 'mme irene', '', '', '', '0709930359@kignonbarbershop.com', '09930359', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709930359', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(223, NULL, 'KOFFI Carmen', '', '', '', '0768204626@kignonbarbershop.com', '68204626', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0768204626', 'Femme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 12:29:23', 0),
(224, NULL, 'mme kouadio', '', '', '', '0777152515@kignonbarbershop.com', '77152515', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0777152515', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(225, NULL, 'mme mian', '', '', '', '0747461477@kignonbarbershop.com', '47461477', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747461477', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(226, NULL, 'mme mikou', '', '', '', '0707002256@kignonbarbershop.com', '07002256', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707002256', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(227, NULL, 'mme mobou', '', '', '', '0757928357@kignonbarbershop.com', '57928357', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757928357', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(228, NULL, 'mme odile', '', '', '', '0707142313@kignonbarbershop.com', '07142313', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707142313', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(229, NULL, 'mme reine', '', '', '', '0708869521@kignonbarbershop.com', '08869521', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708869521', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(230, NULL, 'mme rose client fidele', '', '', '', '0707988839@kignonbarbershop.com', '07988839', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707988839', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(231, NULL, 'mme sadia', '', '', '', '0749563512@kignonbarbershop.com', '49563512', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749563512', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(232, NULL, 'mme sylvie', '', '', '', '0709838909@kignonbarbershop.com', '09838909', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709838909', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(233, NULL, 'mme victoire', '', '', '', '0757106442@kignonbarbershop.com', '57106442', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757106442', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(234, NULL, 'mme voukou', '', '', '', '2707312223@kignonbarbershop.com', '07312223', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2707312223', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(235, NULL, 'mme yao', '', '', '', '0708814903@kignonbarbershop.com', '08814903', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708814903', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 17:23:51', 1),
(236, NULL, 'mousco', '', '', '', '0749238394@kignonbarbershop.com', '49238394', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749238394', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(237, NULL, 'mr  stephane', '', '', '', '2748335781@kignonbarbershop.com', '48335781', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2748335781', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:49:52', 1),
(238, NULL, 'mr abdel kader', '', '', '', '2707311884@kignonbarbershop.com', '07311884', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2707311884', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:14:54', 1),
(239, NULL, 'KOUACOU Aboh Leon', '', '', '', '0787259601@kignonbarbershop.com', '87259601', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0787259601', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:23:25', 0),
(240, NULL, 'mr aboubacar', '', '', '', '0748217358@kignonbarbershop.com', '48217358', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0748217358', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:50:01', 1),
(241, NULL, 'mr adou', '', '', '', '0707109747@kignonbarbershop.com', '07109747', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707109747', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:15:02', 1),
(242, NULL, 'mr adou gerard', '', '', '', '0748025296@kignonbarbershop.com', '48025296', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0748025296', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(243, NULL, 'mr ahmed', '', '', '', '2779300706@kignonbarbershop.com', '79300706', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2779300706', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:12:52', 1),
(244, NULL, 'mr aholia', '', '', '', '2749306712@kignonbarbershop.com', '49306712', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2749306712', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:13:05', 1),
(245, NULL, 'mr aly ', '', '', '', '0140752030@kignonbarbershop.com', '40752030', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0140752030', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:13:41', 1),
(246, NULL, 'mr aristide', '', '', '', '0747768831@kignonbarbershop.com', '47768831', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747768831', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:15:23', 1),
(247, NULL, 'mr armand', '', '', '', '0768064178@kignonbarbershop.com', '68064178', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0768064178', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:13:48', 1),
(248, NULL, 'mr asseu marc', '', '', '', '0707063996@kignonbarbershop.com', '07063996', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707063996', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(249, NULL, 'mr assi', '', '', '', '0707086151@kignonbarbershop.com', '07086151', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707086151', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:13:17', 1),
(250, NULL, 'mr assoumou', '', '', '', '0709495788@kignonbarbershop.com', '09495788', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709495788', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:15:08', 1),
(251, NULL, 'mr bady moneca', '', '', '', '0757106264@kignonbarbershop.com', '57106264', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757106264', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(252, NULL, 'mr bedia', '', '', '', '0778084165@kignonbarbershop.com', '78084165', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0778084165', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:15:30', 1),
(253, NULL, 'mr boh josias', '', '', '', '0747505277@kignonbarbershop.com', '47505277', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747505277', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(254, NULL, 'mr bohui fabrice', '', '', '', '0707693444@kignonbarbershop.com', '07693444', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707693444', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(255, NULL, 'mr boli', '', '', '', '0749152055@kignonbarbershop.com', '49152055', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749152055', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:47:42', 1),
(256, NULL, 'mr bouafon', '', '', '', '0759244577@kignonbarbershop.com', '59244577', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759244577', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:11:00', 1),
(257, NULL, 'mr bouho', '', '', '', '2706327881@kignonbarbershop.com', '06327881', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2706327881', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:11:08', 1),
(258, NULL, 'mr brice', '', '', '', '0777537563@kignonbarbershop.com', '77537563', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0777537563', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:11:17', 1),
(259, NULL, 'mr cesar', '', '', '', '0506459502@kignonbarbershop.com', '06459502', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0506459502', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:11:48', 1),
(260, NULL, 'mr christian moro', '', '', '', '0749474213@kignonbarbershop.com', '49474213', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749474213', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(261, NULL, 'mr cisse', '', '', '', '0544069671@kignonbarbershop.com', '44069671', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0544069671', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:11:26', 1),
(262, NULL, 'GBAGUIDI Clement', '', '', '', '2707322020@kignonbarbershop.com', '07322020', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2707322020', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:36:55', 0),
(264, NULL, 'mr coulibaly', '', '', '', '0140019576@kignonbarbershop.com', '40019576', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0140019576', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:11:58', 1),
(265, NULL, 'mr coulibaly foyssal', '', '', '', '0707778817@kignonbarbershop.com', '07778817', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707778817', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 16:55:52', 1),
(266, NULL, 'mr dah', '', '', '', '0707480887@kignonbarbershop.com', '07480887', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707480887', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:11:37', 1),
(267, NULL, 'mr die jean yves', '', '', '', '0768590876@kignonbarbershop.com', '68590876', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0768590876', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(268, NULL, 'mr dion michel', '', '', '', '0545291053@kignonbarbershop.com', '45291053', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0545291053', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:12:45', 1),
(269, NULL, 'mr donald', '', '', '', '0777490497@kignonbarbershop.com', '77490497', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0777490497', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:12:06', 1),
(270, NULL, 'mr emmanuel', '', '', '', '0768748979@kignonbarbershop.com', '68748979', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0768748979', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(271, NULL, 'mr emmanuel', '', '', '', '0779821657@kignonbarbershop.com', '79821657', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0779821657', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:13:42', 1),
(272, NULL, 'mr essan', '', '', '', '0779223438@kignonbarbershop.com', '79223438', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0779223438', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(273, NULL, 'mr euloge kouassi', '', '', '', '0748856923@kignonbarbershop.com', '48856923', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0748856923', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(274, NULL, 'mr ezechiel', '', '', '', '0749512144@kignonbarbershop.com', '49512144', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749512144', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(275, NULL, 'mr fadiga', '', '', '', '0707826797@kignonbarbershop.com', '07826797', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707826797', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(276, NULL, 'mr fofana', '', '', '', '2708324639@kignonbarbershop.com', '08324639', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2708324639', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(277, NULL, 'mr franck', '', '', '', '0777292655@kignonbarbershop.com', '77292655', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0777292655', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(278, NULL, 'mr franck', '', '', '', '0709095228@kignonbarbershop.com', '09095228', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709095228', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(279, NULL, 'mr gautier assi', '', '', '', '0777475173@kignonbarbershop.com', '77475173', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0777475173', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(280, NULL, 'mr gnagra', '', '', '', '2768359513@kignonbarbershop.com', '68359513', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2768359513', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(281, NULL, 'mr gnahore', '', '', '', '0103983828@kignonbarbershop.com', '03983828', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0103983828', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(282, NULL, 'mr guy', '', '', '', '2749341706@kignonbarbershop.com', '49341706', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2749341706', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(283, NULL, 'mr guyzo', '', '', '', '0777256992@kignonbarbershop.com', '77256992', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0777256992', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(284, NULL, 'mr henri joel', '', '', '', '0758789358@kignonbarbershop.com', '58789358', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0758789358', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(285, NULL, 'mr irie', '', '', '', '0758040581@kignonbarbershop.com', '58040581', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0758040581', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:13:26', 1),
(286, NULL, 'mr jack', '', '', '', '2749347873@kignonbarbershop.com', '49347873', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2749347873', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 16:13:15', 1),
(287, NULL, 'mr james ethan', '', '', '', '0768069603@kignonbarbershop.com', '68069603', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0768069603', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(288, NULL, 'mr jean elvis', '', '', '', '0788878845@kignonbarbershop.com', '88878845', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0788878845', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(289, NULL, 'mr jean ismael aka', '', '', '', '0748559872@kignonbarbershop.com', '48559872', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0748559872', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(290, NULL, 'mr jean noel', '', '', '', '0708000176@kignonbarbershop.com', '08000176', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708000176', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(291, NULL, 'mr jean paul coulibaly', '', '', '', '0708459492@kignonbarbershop.com', '08459492', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708459492', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 16:56:02', 1),
(292, NULL, 'mr junior', '', '', '', '0757550033@kignonbarbershop.com', '57550033', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757550033', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(293, NULL, 'mr junior', '', '', '', '0565044229@kignonbarbershop.com', '65044229', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0565044229', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(294, NULL, 'mr katinadjo', '', '', '', '0789086040@kignonbarbershop.com', '89086040', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0789086040', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(295, NULL, 'mr kevin', '', '', '', '0769051770@kignonbarbershop.com', '69051770', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0769051770', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(296, NULL, 'mr kevin', '', '', '', '2757366421@kignonbarbershop.com', '57366421', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2757366421', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(297, NULL, 'mr key', '', '', '', '0101157510@kignonbarbershop.com', '01157510', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0101157510', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(298, NULL, 'mr koffi', '', '', '', '0554550257@kignonbarbershop.com', '54550257', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0554550257', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(299, NULL, 'mr koffi sebastien', '', '', '', '0759858606@kignonbarbershop.com', '59858606', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759858606', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(300, NULL, 'mr koffi seth', '', '', '', '0769181356@kignonbarbershop.com', '69181356', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0769181356', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(301, NULL, 'mr konate', '', '', '', '0707120579@kignonbarbershop.com', '07120579', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707120579', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 14:12:44', 1),
(302, NULL, 'mr kone', '', '', '', '0709123141@kignonbarbershop.com', '09123141', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709123141', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(303, NULL, 'mr kone tidiane', '', '', '', '0708284677@kignonbarbershop.com', '08284677', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708284677', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(304, NULL, 'mr kore', '', '', '', '0708275252@kignonbarbershop.com', '08275252', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708275252', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(305, NULL, 'KOUADIO Kouakou Noel', '', '', '', '0747045822@kignonbarbershop.com', '47045822', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747045822', 'Homme', 1, 1, 0, '500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 11:15:23', 0),
(306, NULL, 'mr kouakou', '', '', '', '0707088781@kignonbarbershop.com', '07088781', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707088781', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(307, NULL, 'mr kouakou', '', '', '', '2707373878@kignonbarbershop.com', '07373878', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2707373878', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(308, NULL, 'mr kouassi', '', '', '', '0707423524@kignonbarbershop.com', '07423524', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707423524', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(309, NULL, 'mr laurens anglophone', '', '', '', '0555694830@kignonbarbershop.com', '55694830', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0555694830', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(310, NULL, 'mr le roi', '', '', '', '2702347040@kignonbarbershop.com', '02347040', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2702347040', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(311, NULL, 'mr mangos', '', '', '', '2768334165@kignonbarbershop.com', '68334165', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2768334165', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(312, NULL, 'mr marcelin', '', '', '', '0708600351@kignonbarbershop.com', '08600351', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708600351', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(313, NULL, 'MARIUS Ekra', '', '', '', '0707875956@kignonbarbershop.com', '07875956', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707875956', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:00:10', 0),
(314, NULL, 'mr maurelle', '', '', '', '0709927956@kignonbarbershop.com', '09927956', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709927956', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(315, NULL, 'mr medhy', '', '', '', '0545702055@kignonbarbershop.com', '45702055', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0545702055', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `users` (`id`, `code`, `name`, `lastname`, `adresse1`, `adresse2`, `email`, `username`, `password`, `country`, `city`, `mobile`, `genre`, `emailv`, `smsv`, `tauth`, `balance`, `balance_point`, `status`, `vsent`, `vercode`, `remember_token`, `address1`, `address2`, `state`, `zipcode`, `remark`, `salute`, `Gender`, `birth_date`, `created_at`, `updated_at`, `deleted`) VALUES
(316, NULL, 'mr michel', '', '', '', '0767622033@kignonbarbershop.com', '67622033', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0767622033', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(317, NULL, 'mr mohamed', '', '', '', '0708701883@kignonbarbershop.com', '08701883', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708701883', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(318, NULL, 'NGUESSAN Eric', '', '', '', '0708574132@kignonbarbershop.com', '08574132', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708574132', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 16:59:15', 0),
(319, NULL, 'mr nestor', '', '', '', '0758838285@kignonbarbershop.com', '58838285', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0758838285', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(320, NULL, 'mr obou', '', '', '', '0708261685@kignonbarbershop.com', '08261685', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708261685', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(321, NULL, 'mr ozouna', '', '', '', '0767234840@kignonbarbershop.com', '67234840', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0767234840', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(322, NULL, 'mr paco', '', '', '', '0779194843@kignonbarbershop.com', '79194843', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0779194843', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(323, NULL, 'mr paolo lame gilette', '', '', '', '0769233353@kignonbarbershop.com', '69233353', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0769233353', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(324, NULL, 'mr patrick', '', '', '', '0749119616@kignonbarbershop.com', '49119616', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749119616', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:13:47', 1),
(325, NULL, 'EKANGAH Rafael Pierre', '', '', '', '0757423230@kignonbarbershop.com', '57423230', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757423230', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:03:37', 0),
(326, NULL, 'mr prince', '', '', '', '0747410925@kignonbarbershop.com', '47410925', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747410925', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(327, NULL, 'DJEDJE Serge', '', '', '', '0778461444@kignonbarbershop.com', '78461444', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0778461444', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:01:14', 0),
(328, NULL, 'mr silue', '', '', '', '0506981442@kignonbarbershop.com', '06981442', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0506981442', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(329, NULL, 'mr silue', '', '', '', '0504963158@kignonbarbershop.com', '04963158', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0504963158', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(330, NULL, 'OULA Simon', '', '', '', '0747104070@kignonbarbershop.com', '47104070', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747104070', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:02:28', 0),
(331, NULL, 'mr siriki', '', '', '', '0788419112@kignonbarbershop.com', '88419112', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0788419112', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(332, NULL, 'mr sisco', '', '', '', '0707804741@kignonbarbershop.com', '07804741', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707804741', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(333, NULL, 'mr solari', '', '', '', '2749304930@kignonbarbershop.com', '49304930', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2749304930', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(334, NULL, 'mr soro', '', '', '', '0102288586@kignonbarbershop.com', '02288586', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0102288586', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(335, NULL, 'mr stephane', '', '', '', '0707939479@kignonbarbershop.com', '07939479', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707939479', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(336, NULL, 'mr stephane', '', '', '', '0749538216@kignonbarbershop.com', '49538216', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749538216', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(337, NULL, 'mr tchapo', '', '', '', '0757431137@kignonbarbershop.com', '57431137', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757431137', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(338, NULL, 'TIO Samuel', '', '', '', '0708082254@kignonbarbershop.com', '08082254', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708082254', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:04:30', 0),
(339, NULL, 'mr vincent', '', '', '', '0709924616@kignonbarbershop.com', '09924616', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709924616', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(340, NULL, 'mr viwy', '', '', '', '0747287412@kignonbarbershop.com', '47287412', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747287412', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(341, NULL, 'mr yali', '', '', '', '0748618806@kignonbarbershop.com', '48618806', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0748618806', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(342, NULL, 'YAO Maruis', '', '', '', '0747701616@kignonbarbershop.com', '47701616', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747701616', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:05:13', 0),
(343, NULL, 'mr yapi', '', '', '', '0749153256@kignonbarbershop.com', '49153256', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0749153256', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(344, NULL, 'mr yapi', '', '', '', '0707184240@kignonbarbershop.com', '07184240', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707184240', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(345, NULL, 'mr yohann', '', '', '', '0151168518@kignonbarbershop.com', '51168518', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0151168518', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(346, NULL, 'mr youan bi', '', '', '', '0748260446@kignonbarbershop.com', '48260446', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0748260446', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(347, NULL, 'mr yvanne', '', '', '', '0759525288@kignonbarbershop.com', '59525288', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759525288', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(348, NULL, 'mr yves roland', '', '', '', '2789309069@kignonbarbershop.com', '89309069', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2789309069', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(349, NULL, 'mr yves roland', '', '', '', '0789508771@kignonbarbershop.com', '89508771', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0789508771', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(350, NULL, 'mr zanoush', '', '', '', '0576159554@kignonbarbershop.com', '76159554', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0576159554', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(351, NULL, 'mr zokou', '', '', '', '0707701239@kignonbarbershop.com', '07701239', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707701239', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(352, NULL, 'mr zouzoua', '', '', '', '0708186457@kignonbarbershop.com', '08186457', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708186457', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(353, NULL, 'romoeo', '', '', '', '0769949443@kignonbarbershop.com', '69949443', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0769949443', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(354, NULL, 'N TAMON HERVE', 'ABBE', '', '', '59121897@kignonbarbershop.com', '0759121897', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59121897', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 18:23:44', 1),
(355, NULL, 'ABOYA Jesus Maxine', 'aboya', '', '', '0709920537@kignonbarbershop.com', '09920537', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709920537', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:12:27', 0),
(356, NULL, 'ACHI Patrick', 'ACHI', '', '', '04060306@kignonbarbershop.com', '0504060306', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '04060306', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:14:13', 0),
(357, NULL, 'ACHIMI Ismael', 'ACHIMI', '', '', '47740993@kignonbarbershop.com', '0747740993', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47740993', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:15:46', 0),
(358, NULL, 'ADISSA Gaudens Didier', 'adissa', '', '', '47622333@kignonbarbershop.com', '0747622333', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47622333', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:20:59', 0),
(359, NULL, 'ADJALOU Kouassi Marcelin', 'ADJALOU', '', '', '07140986@kignonbarbershop.com', '0707140986', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07140986', '', 1, 1, 0, '500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 11:09:59', 0),
(360, NULL, 'ADO Jean', 'ado', '', '', '89308817@kignonbarbershop.com', '0789308817', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '89308817', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:25:44', 0),
(361, NULL, 'ADOU Kobenan Valery', 'ADOU', '', '', '07109747@kignonbarbershop.com', '0707109747', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07109747', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:27:47', 0),
(362, NULL, 'AGO Evrard Didier', 'AGO', '', '', '59450448@kignonbarbershop.com', '0759450448', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59450448', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:28:49', 0),
(363, NULL, 'AHO LOU Valentin', 'AHO LOU', '', '', '0778789475@kignonbarbershop.com', '78789475', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0778789475', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:30:20', 0),
(364, NULL, 'eden herve', 'ahonon', '', '', '0779648156@kignonbarbershop.com', '79648156', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0779648156', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 18:24:03', 1),
(365, NULL, 'EDEN HERVE', 'AHONON', '', '', '79648156@kignonbarbershop.com', '0779648156', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '79648156', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 18:23:52', 1),
(366, NULL, 'BROU ETIENNE', 'AKOHUE', '', '', '07414244@kignonbarbershop.com', '0707414244', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07414244', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:43', 1),
(367, NULL, 'AKRE Raoul Junior', 'akre', '', '', '87154458@kignonbarbershop.com', '0787154458', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '87154458', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:39:22', 0),
(368, NULL, 'amoin chantal', 'allali', '', '', '0707043317@kignonbarbershop.com', '07043317', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707043317', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:19', 1),
(369, NULL, 'abdourahim', 'amadou', '', '', '58579313@kignonbarbershop.com', '0758579313', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '58579313', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:34:45', 1),
(370, NULL, 'AMANTCHI Niamke Ezoua Franck', 'AMANTCHI', '', '', '78705687@kignonbarbershop.com', '0778705687', '$2y$10$8f3tfuFIVsjy85g.LZWqV.6oncpWW4bE9ufXLlqBU970/PL296fLy', 'Côte d\'Ivoire', '', '78705687', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:56:47', 0),
(371, NULL, 'ANNICK', 'AMONCHI', '', '', '07237184@kignonbarbershop.com', '0707237184', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07237184', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:11', 1),
(372, NULL, 'AMOUSSOU Obed', 'AMOUSSOU', '', '', '67934834@kignonbarbershop.com', '0767934834', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '67934834', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:45:09', 0),
(373, NULL, 'ANASSE Estelle', 'ANASSE', '', '', '74286847@kignonbarbershop.com', '0774286847', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '74286847', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:45:58', 0),
(375, NULL, 'ANDRE Yann', 'ANDRE', '', '', '87410539@kignonbarbershop.com', '0787410539', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '87410539', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:48:13', 0),
(376, NULL, 'ASSEMIAM Pascal', 'assemian', '', '', '09474711@kignonbarbershop.com', '0709474711', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09474711', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:49:39', 0),
(377, NULL, 'ASSI Serge', 'ASSI', '', '', '57927332@kignonbarbershop.com', '0757927332', '$2y$10$5yDEG4yHecD30mo6697c7eHSaC3O/X5IOOQzecJn3905Umcd7mkyC', 'Côte d\'Ivoire', '', '57927332', '', 1, 1, 0, '500', 300, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 09:55:48', 0),
(378, NULL, 'ANGUI', 'ASSOUAKON', '', '', '07067814@kignonbarbershop.com', '0707067814', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07067814', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:08', 1),
(379, NULL, 'ATTIE Sia Emmanuel', 'ATTIE', '', '', '78568632@kignonbarbershop.com', '0778568632', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '78568632', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:55:34', 0),
(380, NULL, 'AYARA Joshua', 'ayarah', '', '', '0505753587@kignonbarbershop.com', '05753587', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0505753587', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:56:27', 0),
(381, NULL, 'BALE Hugues Olivier', 'bale', '', '', '0709967567@kignonbarbershop.com', '09967567', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709967567', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:57:16', 0),
(382, NULL, 'BANHIE Ivan Raoul', 'BANHIE', '', '', '40630308@kignonbarbershop.com', '0140630308', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '40630308', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 10:59:19', 0),
(383, NULL, 'BEDE Adehi Goy Serge Michel', 'BEDE ADEHI ', '', '', '76833826@kignonbarbershop.com', '0576833826', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '76833826', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:01:03', 0),
(384, NULL, 'BEDGRE Louis Alexandre', 'bedgre', '', '', '0707228139@kignonbarbershop.com', '07228139', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707228139', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:02:13', 0),
(385, NULL, 'BEHIO Messy Guy Franck', 'BEHIO', '', '', '89637723@kignonbarbershop.com', '0789637723', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '89637723', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:03:32', 0),
(386, NULL, 'ZIGUE', 'BERTHE SOULEYMANE', '', '', '78934989@kignonbarbershop.com', '0778934989', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '78934989', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:49:03', 1),
(387, NULL, 'BLEOU Emmanuel', 'bleou', '', '', '0789588016@kignonbarbershop.com', '89588016', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0789588016', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:05:22', 0),
(388, NULL, 'BOBOU Vianney Marie Dominique', 'BOBOU', '', '', '59572209@kignonbarbershop.com', '0759572209', '$2y$10$XN/MO2nyFxY/NPJ4paNxf.BFDZyzClSpLQGkV9BU4PvX3FOo4jxTS', 'Côte d\'Ivoire', '', '59572209', '', 1, 1, 0, '0', 0, 1, NULL, NULL, 'QXwpP0ALJ2FJhIQ8oNmul8TnATceASDC0Al5igGJJFifWRNWmAZU4QX7CY9t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 10:13:25', 0),
(389, NULL, 'BOKA Valerie', 'boka', '', '', '0505769784@kignonbarbershop.com', '05769784', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0505769784', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:07:16', 0),
(390, NULL, 'BOUHO Remi', 'BOUHO', '', '', '06327881@kignonbarbershop.com', '0506327881', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '06327881', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:08:14', 0),
(391, NULL, 'CAMARA Harissou', 'CAMARA', '', '', '67669881@kignonbarbershop.com', '0767669881', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '67669881', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:09:18', 0),
(392, NULL, 'CHINEDU Innocent', 'CHINEDU', '', '', '05745296@kignonbarbershop.com', '0505745296', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '05745296', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:10:20', 0),
(393, NULL, 'COULIBALY Lacine', 'coulibaly', '', '', '65002341@kignonbarbershop.com', '0565002341', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '65002341', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:15:32', 0),
(394, NULL, 'COULIBALY Lacine', 'coulibaly', '', '', '0757912442@kignonbarbershop.com', '57912442', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757912442', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:13:19', 0),
(395, NULL, 'COULIBALY Yire Gueko', 'COULIBALY', '', '', '58741980@kignonbarbershop.com', '0758741980', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '58741980', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:14:25', 0),
(396, NULL, 'ANGELIN', 'CRESUS', '', '', '78255785@kignonbarbershop.com', '0778255785', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '78255785', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:59', 1),
(397, NULL, 'ANDRIX', 'DAGO', '', '', '47423182@kignonbarbershop.com', '0747423182', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47423182', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:46', 1),
(398, NULL, 'DIABATE Issa', 'DIABATE', '', '', '08664780@kignonbarbershop.com', '0708664780', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08664780', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:20:00', 0),
(399, NULL, 'DIBLADE Roussel', 'DIBLADE', '', '', '89977355@kignonbarbershop.com', '0789977355', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '89977355', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:22:00', 0),
(400, NULL, 'YVAN', 'DIDI', '', '', '50666707@kignonbarbershop.com', '0150666707', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '50666707', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:48:17', 1),
(401, NULL, 'DION Rita', 'dion', '', '', '77432887@kignonbarbershop.com', '0777432887', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '77432887', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:23:12', 0),
(402, NULL, 'DIVIE Kouakou Christian', 'divie', '', '', '0708577896@kignonbarbershop.com', '08577896', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708577896', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:24:07', 0),
(403, NULL, 'DJA AGNE Moise', 'DJA AGNE', '', '', '45383638@kignonbarbershop.com', '0545383638', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '45383638', '', 1, 1, 0, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 11:05:31', 0),
(404, NULL, 'DOFFOU Ncho Francisse', 'DOFFOU', '', '', '08515159@kignonbarbershop.com', '0708515159', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08515159', '', 1, 1, 0, '4500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:38:43', 0),
(405, NULL, 'THIRRY', 'DOGBO', '', '', '070702494257@kignonbarbershop.com', '070702494257', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '070702494257', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(406, NULL, 'DONGO Pamela', 'DONGO', '', '', '47484698@kignonbarbershop.com', '0747484698', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47484698', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:27:57', 0),
(407, NULL, 'SIDOINE', 'DOUDOU', '0103663548', '', '08204544@kignonbarbershop.com', '0708204544', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08204544', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(408, NULL, 'DOUDOU Sidoine', 'DOUDOU', '', '', '03663848@kignonbarbershop.com', '0103663848', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '03663848', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:28:46', 0),
(409, NULL, 'BENEDICTE NATACHA', 'DRO', '', '', '0707458807@kignonbarbershop.com', '07458807', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707458807', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:37', 1),
(410, NULL, 'ESMEL Francoise', 'ESMEL', '', '', '07921649@kignonbarbershop.com', '0707921649', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07921649', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:30:54', 0),
(411, NULL, 'ETTIEN Martial', 'ETTIEN', '', '', '47520460@kignonbarbershop.com', '0747520460', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47520460', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:31:40', 0),
(412, NULL, 'CHEICK TIDIANE MOUSSA', 'FANNY', '', '', '09802029@kignonbarbershop.com', '0709802029', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09802029', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:57', 1),
(414, NULL, 'FOFANA Mariame', 'fofana', '', '', '0758111057@kignonbarbershop.com', '58111057', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0758111057', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:33:30', 0),
(415, NULL, 'GABO Doga Guy Aime', 'GABO', '', '', '85230052@kignonbarbershop.com', '0585230052', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '85230052', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:34:45', 0),
(416, NULL, 'GATTA Elie', 'gatta', '', '', '0747431607@kignonbarbershop.com', '47431607', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747431607', '', 1, 1, 0, '1500', 3000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 18:08:14', 0),
(417, NULL, 'GBALE Ntakpe Arsene Martinien', 'GBALE', '', '', '01000239@kignonbarbershop.com', '0101000239', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '01000239', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:38:41', 0),
(418, NULL, 'ARISTIDE', 'GBOBOUO', '', '', '09587993@kignonbarbershop.com', '0709587993', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09587993', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:44', 1),
(419, NULL, 'GBOUA Leandre Desire', 'GBOUA', '', '', '42358975@kignonbarbershop.com', '0142358975', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '42358975', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:40:22', 0),
(420, NULL, 'GNABELY Degui Kevin Ulrich', 'GNABELY', '', '', '78407921@kignonbarbershop.com', '0778407921', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '78407921', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:41:27', 0),
(421, NULL, 'GNAHORE Sonia Welly', 'GNAHORE', '', '', '08998119@kignonbarbershop.com', '0708998119', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08998119', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:42:26', 0),
(422, NULL, 'andrie', 'gnakou', '', '', '0747423182@kignonbarbershop.com', '47423182', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747423182', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:30', 1),
(423, NULL, 'GONGBE Serge', 'GONGBE', '', '', '69793665@kignonbarbershop.com', '0769793665', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '69793665', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:43:45', 0),
(424, NULL, 'ANTHELME', 'GORE BI', '', '', '04999917@kignonbarbershop.com', '0504999917', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '04999917', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:29', 1),
(425, NULL, 'GOTTA Ineka', 'gotta', '', '', '0757777440@kignonbarbershop.com', '57777440', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757777440', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:45:06', 0),
(426, NULL, 'GOUDA Thierry', 'GOUDA', '', '', '08987650@kignonbarbershop.com', '0708987650', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08987650', '', 1, 1, 0, '2500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:47:06', 0),
(427, NULL, 'GOUET Sephora Gislaine', 'GOUET', '', '', '88773575@kignonbarbershop.com', '0788773575', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '88773575', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:47:29', 0),
(428, NULL, 'GUEU Goueu Pacome', 'GUEU', '', '', '67234228@kignonbarbershop.com', '0767234228', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '67234228', '', 1, 1, 0, '9000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:39:48', 0),
(429, NULL, 'GUILI Stephane', 'GUILI', '', '', '40621850@kignonbarbershop.com', '0140621850', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '40621850', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:50:55', 0),
(430, NULL, 'cecile', 'hie', '', '', '2709376665@kignonbarbershop.com', '09376665', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2709376665', 'Femme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:22', 1),
(431, NULL, 'IBO Jean Marie', 'IBO', '', '', '88395525@kignonbarbershop.com', '0788395525', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '88395525', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:52:22', 0),
(432, NULL, 'IKECHUKWU Nicolas', 'IKECHUKWU', '', '', '01734448@kignonbarbershop.com', '0101734448', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '01734448', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:53:11', 0),
(433, NULL, 'ILIZO Franck', 'ILIZO', '', '', '85534248@kignonbarbershop.com', '0585534248', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '85534248', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:54:03', 0),
(434, NULL, 'KAMAGATE Moustapha', 'KAMAGATE', '', '', '40179408@kignonbarbershop.com', '0140179408', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '40179408', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:55:15', 0),
(435, NULL, 'KANGA N guessan Benjamin', 'KANGA', '', '', '07695084@kignonbarbershop.com', '0707695084', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07695084', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:57:11', 0),
(436, NULL, 'KEKE Yoro Watonne Roland', 'keke yoro', '', '', '09297703@kignonbarbershop.com', '0709297703', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09297703', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:58:33', 0),
(437, NULL, 'KEMBO WELE Jean Jacques', 'kembo wele', '', '', '09025606@kignonbarbershop.com', '0709025606', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09025606', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 11:59:41', 0),
(438, NULL, 'KODJO Marceline', 'KODJO', '', '', '58452830@kignonbarbershop.com', '0758452830', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '58452830', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:00:39', 0),
(439, NULL, 'KOFFI Dominique', 'KOFFI', '', '', '07591371@kignonbarbershop.com', '0707591371', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07591371', '', 1, 1, 0, '3500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:45:16', 0),
(440, NULL, 'KOFFI Elge', 'KOFFI', '', '', '67710929@kignonbarbershop.com', '0767710929', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '67710929', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:02:15', 0),
(441, NULL, 'KOFFI Guy Roland Arnaud', 'KOFFI', '', '', '47903131@kignonbarbershop.com', '0747903131', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47903131', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:03:11', 0),
(442, NULL, 'KOFFIBA Josiane', 'KOFFIBA', '', '', '07586505@kignonbarbershop.com', '0707586505', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07586505', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:04:06', 0),
(443, NULL, 'KOIKON Laetitia Christelle', 'KOIKON', '', '', '09936828@kignonbarbershop.com', '0709936828', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09936828', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:06:42', 0),
(444, NULL, 'DIANE', 'KOISSY', '', '', '59508110@kignonbarbershop.com', '0759508110', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59508110', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(445, NULL, 'KOISSY Diane', 'KOISSY', '', '', '68577010@kignonbarbershop.com', '0768577010', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '68577010', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:07:25', 0),
(446, NULL, 'KOKO Nda Konan Mathurin', 'KOKO', '', '', '67423442@kignonbarbershop.com', '0767423442', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '67423442', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:09:05', 0),
(447, NULL, 'KOLEU Maria Josee', 'KOLEU', '', '', '87398401@kignonbarbershop.com', '0787398401', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '87398401', '', 1, 1, 0, '500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 11:03:29', 0),
(448, NULL, 'KOMENAN Kevin', 'komenan', '', '', '09415615@kignonbarbershop.com', '0709415615', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09415615', '', 1, 1, 0, '2500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:33:23', 0),
(449, NULL, 'KONAN Danielle', 'konan', '', '', '08030358@kignonbarbershop.com', '0708030358', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08030358', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:11:52', 0),
(450, NULL, 'KONAN Lozo Kevin', 'KONAN', '', '', '88254209@kignonbarbershop.com', '0788254209', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '88254209', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:13:05', 0),
(451, NULL, 'KONAN Mohamed', 'KONAN', '', '', '67437591@kignonbarbershop.com', '0767437591', '$2y$10$pVbCj38V2DxcM0xnG7X49eOmDGnSjLPOd7fp3jr.iAtDpBJDFBT1i', 'Côte d\'Ivoire', '', '67437591', '', 1, 1, 0, '0', 600, 1, '1635864477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-19 12:26:49', 0),
(452, NULL, 'lamine ', 'konate', '', '', '0707789296@kignonbarbershop.com', '07789296', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707789296', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(453, NULL, 'KONE Guy Herman', 'KONE', '', '', '59486832@kignonbarbershop.com', '0759486832', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59486832', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:17:21', 0),
(454, NULL, 'KONON Xavier Ramonic', 'konon', '', '', '07591843@kignonbarbershop.com', '0707591843', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07591843', '', 1, 1, 0, '500', 1700, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-19 13:41:08', 0),
(455, NULL, 'KOUA Guillaume', 'koua', '', '', '0757117858@kignonbarbershop.com', '57117858', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0757117858', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:20:01', 0),
(456, NULL, 'KOUA Kouame Mathurin', 'KOUA', '', '', '42233209@kignonbarbershop.com', '0142233209', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '42233209', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:21:25', 0),
(457, NULL, 'charlotte', 'kouacha', '', '', '0707597512@kignonbarbershop.com', '07597512', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707597512', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:54', 1),
(458, NULL, 'ABOH LEON', 'KOUACOU', '', '', '87259601@kignonbarbershop.com', '0787259601', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '87259601', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:34:52', 1),
(459, NULL, 'bah arnaud', 'kouadio', '', '', '0505099460@kignonbarbershop.com', '05099460', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0505099460', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:19', 1),
(460, NULL, 'bah arnaud', 'kouadio', '', '', '05099460@kignonbarbershop.com', '0505099460', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '05099460', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:57', 1),
(461, NULL, 'caroline', 'kouadio', '', '', '0767156924@kignonbarbershop.com', '67156924', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0767156924', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:18', 1),
(462, NULL, 'KOUADIO Eder', 'KOUADIO', '', '', '09965882@kignonbarbershop.com', '0709965882', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09965882', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:25:01', 0),
(463, NULL, 'AKISSI CHARLOTTE', 'KOUAHO', '', '', '07597512@kignonbarbershop.com', '0707597512', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07597512', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:48:36', 1),
(464, NULL, 'EZECHKIEL', 'KOUAHO', '', '', '01157510@kignonbarbershop.com', '0101157510', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '01157510', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-20 11:31:12', 1),
(465, NULL, 'christian', 'kouakou', '', '', '0769829954@kignonbarbershop.com', '69829954', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0769829954', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:19:09', 1),
(466, NULL, 'KOUAKOU Fabio', 'KOUAKOU', '', '', '48942786@kignonbarbershop.com', '0748942786', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '48942786', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:32:35', 0),
(468, NULL, 'KOUAKOU Oka Ferdinand', 'Kouakou', '', '', '0707654848@kignonbarbershop.com', '07654848', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707654848', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:30:58', 0),
(470, NULL, 'Arsene', 'Kouame', 'Yopougon', '', '0862771@kignonbarbershop.com', '0862771', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0862771', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:12:03', 1),
(471, NULL, 'arserne', 'kouame', '', '', '0708627711@kignonbarbershop.com', '08627711', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0708627711', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:51', 1),
(472, NULL, 'BI FOUA WILLIAMS', 'KOUAME', '', '', '0759100585@kignonbarbershop.com', '59100585', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759100585', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:47', 1),
(473, NULL, 'KOUAME Dieudonné Khecep', 'Kouame', '', '', '0758452736@kignonbarbershop.com', '58452736', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0758452736', 'Homme', 0, 0, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:34:01', 0),
(474, NULL, 'KOUAME Innocent', 'KOUAME', '', '', '48028830@kignonbarbershop.com', '0748028830', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '48028830', '', 1, 1, 0, '0', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 17:30:24', 0),
(475, NULL, 'KOUAME Koffi Jean Desire', 'KOUAME', '', '', '57087347@kignonbarbershop.com', '0757087347', '$2y$10$46WZ1PbsEECF4GmM/csJ0OoLPxTDtpKEmKhn1qQTc1D0AzgBfqIqK', 'Côte d\'Ivoire', '', '57087347', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 10:33:55', 0),
(476, NULL, 'ARISTIDE', 'KOUAME N DRI', '', '', '47541320@kignonbarbershop.com', '0747541320', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47541320', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:09:37', 1),
(477, NULL, 'adja sandrine', 'kouassi', '', '', '0101910863@kignonbarbershop.com', '01910863', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0101910863', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:48:26', 1);
INSERT INTO `users` (`id`, `code`, `name`, `lastname`, `adresse1`, `adresse2`, `email`, `username`, `password`, `country`, `city`, `mobile`, `genre`, `emailv`, `smsv`, `tauth`, `balance`, `balance_point`, `status`, `vsent`, `vercode`, `remember_token`, `address1`, `address2`, `state`, `zipcode`, `remark`, `salute`, `Gender`, `birth_date`, `created_at`, `updated_at`, `deleted`) VALUES
(478, NULL, 'KOUASSI Jemie', 'kouassi', '', '', '77477594@kignonbarbershop.com', '0777477594', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '77477594', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:44:03', 0),
(479, NULL, 'KOUASSI Kouadio Pocas', 'kouassi', '', '', '47702063@kignonbarbershop.com', '0747702063', '$2y$10$DqNWxhx8OWPs.XF8dW9SpujmSZn0wzGN1WYk0K5Z5zUNVVX/6AyMe', 'Côte d\'Ivoire', '', '47702063', '', 1, 1, 0, '3500', 0, 1, '1635525363', NULL, 'cboagRGsUwDEwXQVmJBJhbThRtJQoBzhHrJzi0eplrp580dSOXWWVXGGZ0yU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:34:14', 0),
(480, NULL, 'KOUASSI Lohure Leon', 'kouassi', '', '', '0707648621@kignonbarbershop.com', '07648621', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707648621', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:42:02', 0),
(481, NULL, 'KOUASSI Lydie', 'kouassi', '', '', '59226165@kignonbarbershop.com', '0759226165', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59226165', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:45:08', 0),
(482, NULL, 'MICKAEL', 'KOUASSI', '', '', '53424192@kignonbarbershop.com', '0153424192', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '53424192', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(483, NULL, 'KOUASSI Olive', 'KOUASSI', '', '', '88226887@kignonbarbershop.com', '0788226887', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '88226887', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:47:26', 0),
(485, NULL, 'KOUMAN Parfait', 'KOUMAN', '', '', '08340390@kignonbarbershop.com', '0708340390', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08340390', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:49:02', 0),
(486, NULL, 'KOUROUMA Dieudonne Ben Yaya', 'KOUROUMA', '', '', '47992051@kignonbarbershop.com', '0747992051', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47992051', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:50:13', 0),
(487, NULL, 'KRAMO Kouadio Omer', 'KRAMO', '', '', '04951889@kignonbarbershop.com', '0504951889', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '04951889', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:51:17', 0),
(488, NULL, 'LAHAROU Herman', 'LAHAROU', '', '', '48567232@kignonbarbershop.com', '0748567232', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '48567232', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:53:04', 0),
(489, NULL, 'ANGE ARMELLE ', 'LECADOU', '', '', '97981635@kignonbarbershop.com', '0797981635', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '97981635', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:26', 1),
(490, NULL, 'LEVRY Serge Dadie', 'LEVRY', '', '', '07647649@kignonbarbershop.com', '0707647649', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07647649', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:55:01', 0),
(491, NULL, 'RUTH', 'LOGNON', '', '', '08466405@kignonbarbershop.com', '0708466405', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08466405', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(492, NULL, 'LOGNON Ruth', 'LOGNON', '', '', '40813814@kignonbarbershop.com', '0140813814', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '40813814', '', 1, 1, 0, '2000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 11:09:14', 0),
(493, NULL, 'LOHOUROU Goly Fabrice', 'LOHOUROU', '', '', '0779227367@kignonbarbershop.com', '79227367', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0779227367', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:57:14', 0),
(494, NULL, 'LOUA Wilfrid', 'loua', '', '', '0709628463@kignonbarbershop.com', '09628463', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709628463', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:58:28', 0),
(495, NULL, 'M BRA Parfait', 'M BRA', '', '', '09050577@kignonbarbershop.com', '0709050577', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09050577', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 12:59:17', 0),
(496, NULL, 'M ALLAGBA Kouadio Etienne', 'M. ALLAGBA', '', '', '07702339@kignonbarbershop.com', '0707702339', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07702339', '', 1, 1, 0, '10000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:36:29', 0),
(497, NULL, 'AGNAN IGNACE', 'M. AMON', '', '', '08979708@kignonbarbershop.com', '0708979708', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08979708', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:48:45', 1),
(498, NULL, 'M SAMI Fabrice', 'M.SAMI', '', '', '77404774@kignonbarbershop.com', '0777404774', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '77404774', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:01:28', 0),
(500, NULL, 'M BOUA Jean Marc', 'MBOUA', '', '', '79616583@kignonbarbershop.com', '0779616583', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '79616583', '', 1, 1, 0, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:37:32', 0),
(501, NULL, 'MIAN Ehouman Jean Noel', 'mian', '', '', '68234643@kignonbarbershop.com', '0768234643', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '68234643', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:05:11', 0),
(502, NULL, 'basile', 'mobou', '', '', '47170444@kignonbarbershop.com', '0747170444', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47170444', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:26', 1),
(503, NULL, 'ABRAHAM FLORENT', 'MORAK', '', '', '59414775@kignonbarbershop.com', '0759414775', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59414775', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:05:54', 1),
(504, NULL, 'N DRIN Tanoh Junior', 'n drin', '', '', '07238449@kignonbarbershop.com', '0707238449', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07238449', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:07:21', 0),
(505, NULL, 'N GUESSAN Yao Alain Claude', 'N GUESSAN', '', '', '57125628@kignonbarbershop.com', '0757125628', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '57125628', '', 1, 1, 0, '0', 1000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 13:48:39', 0),
(506, NULL, 'N TAKPE Ghislain Evrard', 'N TAKPE', '', '', '48016078@kignonbarbershop.com', '0748016078', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '48016078', '', 1, 1, 0, '10500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:28:47', 0),
(507, NULL, 'N ZI Koffi Ange', 'n zi', '', '', '03944275@kignonbarbershop.com', '0103944275', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '03944275', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:10:38', 0),
(508, NULL, 'AKA GEORGE', 'NABI', '', '', '79025540@kignonbarbershop.com', '0779025540', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '79025540', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:06:38', 1),
(509, NULL, 'NAHOUNOU Henri', 'NAHOUNOU', '', '', '77977300@kignonbarbershop.com', '0777977300', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '77977300', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:12:17', 0),
(510, NULL, 'ONANNE Doriane', 'ONANNE', '', '', '050544269737@kignonbarbershop.com', '050544269737', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '050544269737', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:13:36', 0),
(511, NULL, 'BRICE', 'OTAYECK', '', '', '07516737@kignonbarbershop.com', '0707516737', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07516737', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:40', 1),
(512, NULL, 'OUAN Graoua Sidi Mohamed', 'OUAN GRAOUA', '', '', '48797970@kignonbarbershop.com', '0748797970', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '48797970', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:15:50', 0),
(513, NULL, 'OUATTARA Daouda', 'OUATTARA', '', '', '08105000@kignonbarbershop.com', '0708105000', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08105000', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:17:31', 0),
(514, NULL, 'EMMANUEL', 'OUATTARA', '', '', '77949081@kignonbarbershop.com', '0777949081', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '77949081', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(515, NULL, 'OUATTARA Homibe Ibrahima', 'OUATTARA', '', '', '47743085@kignonbarbershop.com', '0747743085', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47743085', '', 1, 1, 0, '6500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 11:04:36', 0),
(516, NULL, 'OUATTARA Ibrahim', 'ouattra', '', '', '49312616@kignonbarbershop.com', '0749312616', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '49312616', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:16:41', 0),
(517, NULL, 'AGOU GUY MARTIAL', 'OURAGA', '', '', '47258407@kignonbarbershop.com', '0747258407', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47258407', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:06:34', 1),
(518, NULL, 'CHRIST', 'POHERI', '', '', '07798155@kignonbarbershop.com', '0707798155', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07798155', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:12:21', 1),
(519, NULL, 'SAHI Francine', 'SAHI', '', '', '0707593266@kignonbarbershop.com', '07593266', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707593266', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:21:48', 0),
(520, NULL, 'SAKOUA Stephane', 'SAKOUA', '', '', '89467835@kignonbarbershop.com', '0789467835', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '89467835', '', 1, 1, 0, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 11:08:19', 0),
(521, NULL, 'abdoulaye', 'sanogo', '', '', '89715868@kignonbarbershop.com', '0789715868', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '89715868', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:34:41', 1),
(522, NULL, 'SANOGO Leila Sarah', 'sanogo', '', '', '09228340@kignonbarbershop.com', '0709228340', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09228340', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:23:29', 0),
(524, NULL, 'SEKI Tatiana', 'SEKI', '', '', '58776184@kignonbarbershop.com', '0758776184', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '58776184', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:25:06', 0),
(525, NULL, 'SEKONGO Ponan Fousseni', 'SEKONGO', '', '', '75663666@kignonbarbershop.com', '0142805696', '$2y$10$CU0ZZ804Prd5isov1fl3XujOkDDu/L1Z4Tg6gjatWvsdvY2TJRJbe', 'Côte d\'Ivoire', '', '0142805696', '', 1, 1, 0, '2800', 365, 1, NULL, NULL, '9Hqjych2iQYX5hFlO7YA6atfUu7YBfesLyOOZ8MSnaEZhwFv5pt9dSJwY8Wb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-27 17:50:59', 0),
(526, NULL, 'BENITO', 'SERI', '', '', '88140754@kignonbarbershop.com', '0788140754', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '88140754', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:37', 1),
(527, NULL, 'SERY Tagro Alex', 'SERY', '', '', '57785818@kignonbarbershop.com', '0757785818', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '57785818', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:27:27', 0),
(528, NULL, 'SHEP Sie Stephane', 'SHEP', '', '', '03132176@kignonbarbershop.com', '0103132176', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '03132176', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:28:27', 0),
(529, NULL, 'SIKO Monsekea', 'siko', '', '', '078726855@kignonbarbershop.com', '078726855', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '078726855', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:29:19', 0),
(530, NULL, 'Charles', 'Silue', '', '', '0709980708@kignonbarbershop.com', '09980708', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0709980708', 'Homme', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:47', 1),
(531, NULL, 'MICKAEL', 'SILUE', '', '', '47689070@kignonbarbershop.com', '0747689070', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47689070', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(532, NULL, 'SIRIKI Meite', 'siriki', '', '', '0777261476@kignonbarbershop.com', '77261476', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0777261476', '', 1, 1, 0, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:12:09', 0),
(533, NULL, 'SOHOU Kpazahi C. Hermann', 'Sohou', '', '', '0759920988@kignonbarbershop.com', '59920988', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0759920988', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:31:46', 0),
(535, NULL, 'SORO kifori', 'soro', '', '', '47648913@kignonbarbershop.com', '0747648913', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47648913', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:32:37', 0),
(536, NULL, 'SORO Zana Claude', 'SORO', '', '', '05289254@kignonbarbershop.com', '0505289254', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '05289254', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:33:28', 0),
(537, NULL, 'SOUANAN Franck Sylvain', 'sounan', '', '', '07019256@kignonbarbershop.com', '0707019256', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07019256', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:34:49', 0),
(538, NULL, 'SOUROU Joance', 'SOUROU', '', '', '40344149@kignonbarbershop.com', '0140344149', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '40344149', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:35:35', 0),
(539, NULL, 'BINTOU', 'SYLLA', '', '', '77240436@kignonbarbershop.com', '0777240436', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '77240436', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:06', 1),
(540, NULL, 'TABLE Micheline', 'TABLE', '', '', '06060656@kignonbarbershop.com', '0506060656', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '06060656', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:58:26', 0),
(541, NULL, 'TADE Drepoba Samuel', 'TADE', '', '', '89993388@kignonbarbershop.com', '0789993388', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '89993388', '', 1, 1, 0, '0', 300, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-19 14:20:30', 0),
(542, NULL, 'TANO Kacou Jean Claude', 'TANO', '', '', '59314005@kignonbarbershop.com', '0759314005', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59314005', '', 1, 1, 0, '500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:27:02', 0),
(543, NULL, 'TANOH Konan Jose Sylvain', 'TANOH KONAN', '', '', '07169837@kignonbarbershop.com', '0707169837', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07169837', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:02:49', 0),
(544, NULL, 'TAPE Cynthia', 'TAPE', '', '', '07959198@kignonbarbershop.com', '0707959198', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07959198', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:03:36', 0),
(545, NULL, 'FRANCK Eric', 'tia', '', '', '09633280@kignonbarbershop.com', '0709633280', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09633280', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 10:14:44', 0),
(546, NULL, 'TIA Franck Eric', 'tia', '', '', '09533280@kignonbarbershop.com', '0709533280', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09533280', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:07:21', 0),
(547, NULL, 'TIECOURA Monsessie Joel Arnaud', 'TIECOURA', '', '', '69502107@kignonbarbershop.com', '0769502107', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '69502107', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:06:26', 0),
(548, NULL, 'jean cyrille', 'tieoule', '', '', '49635207@kignonbarbershop.com', '0749635207', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '49635207', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(549, NULL, 'TIEOULE Jean Cyrille', 'TIEOULE', '', '', '49635307@kignonbarbershop.com', '0749635307', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '49635307', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:09:08', 0),
(550, NULL, 'anatole', 'tobin', '', '', '09241821@kignonbarbershop.com', '0709241821', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09241821', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:08:35', 1),
(551, NULL, 'TOHAHI Kime', 'tohahi', '', '', '59450059@kignonbarbershop.com', '0759450059', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59450059', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:10:14', 0),
(552, NULL, 'alidjari', 'toure', '', '', '0758010067@kignonbarbershop.com', '58010067', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0758010067', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:06:46', 1),
(553, NULL, 'TRA SEHI Lou Aurelie', 'tra sehi', '', '', '0789705357@kignonbarbershop.com', '89705357', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0789705357', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:12:13', 0),
(554, NULL, 'TRAORE Fousseni', 'TRAORE', '', '', '79673469@kignonbarbershop.com', '0779673469', '$2y$10$dcPIXwHPubfAW6k71L1I9.mhR.Ye5Z/BPfshXVwNE4eEKP/h7l4ue', 'Côte d\'Ivoire', 'Abidjan', '79673469', '', 1, 1, 0, '0', 0, 1, '1636292332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-07 13:41:27', 0),
(555, NULL, 'TRAORE Kanou Raissa', 'TRAORE', '', '', '08222285@kignonbarbershop.com', '0708222285', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '08222285', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:14:09', 0),
(556, NULL, 'TRAORE Youssouf', 'traore', '', '', '0747424946@kignonbarbershop.com', '47424946', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0747424946', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:13:06', 0),
(557, NULL, 'TUO Samuel', 'TUO', '', '', '06060524@kignonbarbershop.com', '0506060524', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '06060524', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:15:40', 0),
(558, NULL, 'YAO N guessan Edwige', 'YAO', '', '', '2706346853@kignonbarbershop.com', '06346853', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '2706346853', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:17:00', 0),
(559, NULL, 'YAO Yapi Franck Ferdinand', 'YAO', '', '', '49144724@kignonbarbershop.com', '0749144724', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '49144724', '', 1, 1, 0, '500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:18:19', 0),
(560, NULL, 'N GUESSAN Marcel', 'YAPI', '', '', '57908693@kignonbarbershop.com', '0757908693', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '57908693', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 13:47:12', 0),
(561, NULL, 'YAPI N guessan Marcel', 'YAPI', '', '', '57908694@kignonbarbershop.com', '0757908694', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '57908694', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:19:39', 0),
(562, NULL, 'YAPO Eric', 'yapo', '', '', '0707998493@kignonbarbershop.com', '07998493', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0707998493', 'Homme', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:21:16', 0),
(563, NULL, 'YAPO Herbert', 'YAPO', '', '', '49051719@kignonbarbershop.com', '0749051719', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '49051719', '', 1, 1, 0, '500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 11:06:25', 0),
(564, NULL, 'YEO Foungatrgue', 'YEO', '', '', '47619531@kignonbarbershop.com', '0747619531', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47619531', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:24:02', 0),
(565, NULL, 'YEO Nontonhoua', 'YEO', '', '', '07629940@kignonbarbershop.com', '0707629940', '$2y$10$n.t8cON6gTs75aBCal6N0OJOJ04H4Mb7FoS9OPKT3TKHY1e/Qm..C', 'Côte d\'Ivoire', '', '0707629940', '', 1, 1, 0, '0', 0, 1, '1635346370', NULL, 'ZH6w8ZOKLJNf8HxyHJij2F16noxBlQrnZtdulkYFxE2RUrB3ikoOuD8LH2oN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 14:52:50', 0),
(566, NULL, 'YIWO Stephanie', 'YIWO', '', '', '47784493@kignonbarbershop.com', '0747784493', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '47784493', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 14:25:46', 0),
(567, NULL, 'BLANCHE PRINCILIA', 'YOBOUE', '', '', '58558569@kignonbarbershop.com', '0758558569', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '58558569', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:59', 1),
(568, NULL, 'YOHO Doua Michel', 'YOHO', '', '', '09242581@kignonbarbershop.com', '0709242581', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09242581', '', 1, 1, 0, '3000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 10:29:43', 0),
(569, NULL, 'ADENYI', 'YUSUF', 'YOPOUGON NIANGON CITE CAFEIER', '', '59979618@kignonbarbershop.com', '0759979618', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '59979618', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:48:40', 1),
(570, NULL, 'YVAN Franck', 'yvan', '', '', '0788411894@kignonbarbershop.com', '88411894', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '0788411894', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:37:36', 0),
(571, NULL, 'ZAGO Mariette', 'zago', '', '', '09834143@kignonbarbershop.com', '0709834143', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '09834143', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:41:24', 0),
(572, NULL, 'ZAO Kouame Vincent', 'zao', '', '', '07573352@kignonbarbershop.com', '0707573352', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '07573352', '', 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 13:42:47', 0),
(573, NULL, 'BI TIZIE NATHAN', 'ZRAE', '', '', '43357203@kignonbarbershop.com', '0143357203', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '43357203', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:10:55', 1),
(574, NULL, 'BI TIZIE NATHAN', 'ZRAE', '', '', '52374227@kignonbarbershop.com', '0152374227', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '52374227', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:30', 1),
(576, NULL, 'BI TRAZIE NATHAN', 'ZRAE', '', '', '43357202@kignonbarbershop.com', '0143357202', '$2y$10$sYsbVLyzOfXQsAVm3RuOK.tCPMcyjnTs.WHPEfUIr6KQs4s2.zRQi', 'Côte d\'Ivoire', '', '43357202', '', 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 12:11:03', 1),
(577, NULL, 'KOUAME Arsene', NULL, NULL, NULL, '0862771@kignonbabershop.com', '0006', '$2y$10$Q/n5XshRQrBomOZwFns84.mJ/zuFlHmAo.lNa2dcek1xY2j4sA0SG', 'Yopougon', 'Abidjan', '0862771', NULL, 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 15:30:53', '2021-10-25 15:31:45', 0),
(578, NULL, 'ABBE N\'tannon Herve', NULL, NULL, NULL, '0759121897@kignonbarbershop.com', '0102', '$2y$10$.gQOsh3/Bhzy2wMm8JfK/.ZjuzOYvoZQZ4E85AfsY6sRsDgF9Osge', 'Yopougon', 'Abidjan', '0759121897', NULL, 1, 1, 0, '0', 0, 1, NULL, NULL, 'LT1D5YCCojEH9xJlBsYirDkXUxKe0V9qkINF8vyHTI59MATqcedghdyC93LC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-26 17:58:45', '2021-11-02 11:16:00', 0),
(579, NULL, 'KOUAKOU INNOCENT', NULL, NULL, NULL, 'ky.innocent@asnumeric.com', '1111', '$2y$10$aq9T5RaIGabmhH0Ga89wJOD8VFokEfRW8slSHZXCNjDZP7H5hqG7O', 'Côte d\'Ivoire', 'Abidjan', '0708903494', NULL, 1, 1, NULL, '0', 0, 1, '1635366916', NULL, 'X44Bs6ghhVivzFTrHJESvgNyDOMvWcO4YB49eijkVnTt2ExK0ezsta5pIqno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 19:53:23', '2021-10-27 20:52:45', 1),
(580, NULL, 'COULIBALY Adama', NULL, NULL, NULL, '0709716570@gmail.com', '0509', '$2y$10$GLfjU009.4UiMjgtxLr36.MFvIdRxGcKkNJlfxOWoVzoQ.Acx.RGq', 'COCODY', 'Abidjan', '0709716570', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 16:58:04', '2021-10-29 16:58:04', 0),
(581, NULL, 'AMADOU Bamba', NULL, NULL, NULL, '0777932565@gmail.com', '0034', '$2y$10$xJU0yKpDMXc9/dnH6z5jeOkNEdtYfKRJSbhjLpzhMmY.mRaI1mdRu', 'COCODY', 'Abidjan', '0777932565', NULL, 1, 1, NULL, '11000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:22:28', '2021-11-10 13:42:41', 0),
(582, NULL, 'AMBMA Rodney', NULL, NULL, NULL, '0141708888@gmail.com', '0690', '$2y$10$vIoPu2GAgt6SkeufxRvmj.r3ubYxt6TIqD7NXpBnEwSkH80KPvaWu', 'COCODY', 'Abidjan', '0141708888', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:26:08', '2021-10-29 17:26:08', 0),
(583, NULL, 'AMELIE Amelie', NULL, NULL, NULL, '0797471621@gmail.com', '0602', '$2y$10$kJlsLhlHRzvnzc3gRUR1neglBwBs5.i3zSU95FP2Vfij6tVkLRvnS', 'COCODY', 'Abidjan', '0797471621', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:28:47', '2021-10-29 17:28:47', 0),
(584, NULL, 'AMESNIPO  Kossi Dodzi Emanuel', NULL, NULL, NULL, 'omegnito@gmail.com', '0513', '$2y$10$iwS4fqKRVwOd1m4M8TaJE.TX0iihYqn7cceNz2iX.vmlwdtEkpQ7K', 'COCODY', 'Abidjan', '57711540', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:03:02', '2021-10-29 22:03:02', 0),
(585, NULL, 'AMONSTM Dtigori', NULL, NULL, NULL, '07485223@gmail.com', '0549', '$2y$10$3YVYCuVFba8tQ9eow5ulGeVsVvFTew128zW5sIW/gePuPuklyh38y', 'COCODY', 'Abidjan', '07485223', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:05:42', '2021-10-29 22:05:42', 0),
(586, NULL, 'BABA Timote', NULL, NULL, NULL, '0142772627@gmail.com', '0641', '$2y$10$1h0uo/VSI1wQ6/YzjeVnaeO2.ye5RL1hmPIHy52FKfM3EFoO5pWZu', 'COCODY', 'Abidjan', '0142772627', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:23:22', '2021-10-29 22:23:22', 0),
(587, NULL, 'BANI Amessan', NULL, NULL, NULL, '0101479881@gmail.com', '0579', '$2y$10$Rdy74Vtmj4UqAA4sEhyWju4jn0/TsgUXLVBSuoUZTU0PhJptzZwBK', 'COCODY', 'Abidjan', '0101479881', NULL, 1, 1, NULL, '2000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:28:38', '2021-11-10 13:55:11', 0),
(588, NULL, 'BAOUA Abdallam Abdoul Ramane', NULL, NULL, NULL, 'abdallahbaou001@gmail.com', '0539', '$2y$10$nawWUWWN8v0iMEm.jYcLB.8.a5hNcZv9rQeWTe7I5bwQtZJO.BbK2', 'YOPOUGON', 'Abidjan', '0797233984', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:31:27', '2021-10-29 22:31:27', 0),
(589, NULL, 'BASSA Kouadio Martial', NULL, NULL, NULL, '0759341943@gmail.com', '0556', '$2y$10$tToHe1KImH2LwReDVlKWie2uqxOHVuebyYfLjufkGGcu.TEqjK7Ky', 'COCODY', 'Abidjan', '0759341943', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:34:24', '2021-10-29 22:34:24', 0),
(590, NULL, 'BATCHINY Amadou', NULL, NULL, NULL, '0707660166@gmail.com', '0684', '$2y$10$f6iaqoC43AM4vOQlLELc9uU/VsB1xeEE09Geo995P5kxPAKMg2mVi', 'COCODY', 'Abidjan', '0707660166', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:36:39', '2021-10-29 22:36:39', 0),
(591, NULL, 'BIEKRE Franck', NULL, NULL, NULL, '0101000393@gmail.com', '0676', '$2y$10$EeO5haVNrdwowXzOfEazr.2dX73adLfnGQKDPYW9WPuUMRsTJCM02', 'COCODY', 'Abidjan', '0101000393', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:41:37', '2021-10-29 22:41:37', 0),
(592, NULL, 'CAMARA Abdel Rahim Konan', NULL, NULL, NULL, '0153980164@gmail.com', '0672', '$2y$10$b55PARZD2dVQj6mj79pKw.VLkmbRZlby9g5eoZIxof6KIX.HKTklq', 'COCODY', 'Abidjan', '0153980164', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:54:20', '2021-10-29 22:54:20', 0),
(593, NULL, 'MAMADOU Cherif', NULL, NULL, NULL, '0709889984@gmail.com', '0673', '$2y$10$Hyr45tf6rF26IZS6gEX33OzFW.bWMOKN8c0/GqY8I5oZWs3wFzo7W', 'BINGERVILLE', 'BINGERVILLE', '0709889984', NULL, 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 22:58:06', '2021-11-01 18:24:21', 0),
(594, NULL, 'SERGE Eric', NULL, NULL, NULL, '07063611@gmail.com', '0515', '$2y$10$dkw3buOklIiTxl4UT/J6wOOMJjhyznKmEa1PuoVP9gAX.SM83HcDe', 'COCODY', 'Abidjan', '07063611', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:10:02', '2021-10-29 23:10:02', 0),
(595, NULL, 'SILUE Aboubacar', NULL, NULL, NULL, '0707985831@gmail.com', '0598', '$2y$10$AFVIzmVEYJGV3//RrHJUXeCNetjKs7vLBMNvQZ0667gpB2qG2fUI.', 'COCODY', 'Abidjan', '0707985831', NULL, 1, 1, NULL, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:13:04', '2021-11-10 13:54:20', 0),
(596, NULL, 'SILUE Razak', NULL, NULL, NULL, '0749323288@gmail.com', '0657', '$2y$10$3IrdGt.Bt8d8z10gtNRJLeed2TDrRvUibWU9ZDwG6JsWSEPfYDJju', 'COCODY', 'Abidjan', '0749323288', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:16:09', '2021-10-29 23:16:09', 0),
(597, NULL, 'TAO Christine', NULL, NULL, NULL, '0141742020@gmail.com', '0666', '$2y$10$n9G47lEnhOYiZP6Iycbt4OjyEqmIhYENcGt6LO.nxnY8QeWi1koq2', 'COCODY', 'Abidjan', '0141742020', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 23:37:11', '2021-10-29 23:37:11', 0),
(598, NULL, 'YAO Kevin', NULL, NULL, NULL, '0757450463@gmail.com', '0600', '$2y$10$nSB6a.DOVmGYTeKRSJM.x.mFpFqyuRD3ycRzzekUhBQks1rFHKjVi', 'COCODY', 'Abidjan', '0757450463', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 00:10:57', '2021-10-30 00:10:57', 0),
(599, NULL, 'YOAN Ndri', NULL, NULL, NULL, '59248973@gmail.com', '0516', '$2y$10$9KkkgKmAT7QBGoH8Sv0a3eKPsd7S5aORk3jKA5B3.Xbx49J6EvMb6', 'COCODY', 'Abidjan', '59248973', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 00:15:31', '2021-10-30 00:15:31', 0),
(600, NULL, 'ZEZE Olivier', NULL, NULL, NULL, '0708009839@gmail.com', '0685', '$2y$10$r9Em.8KORKvB8ZHBmMj5J.Qh.dW9lu8HCWKLAaEXqEaW5kO5Bo5vC', 'COCODY', 'Abidjan', '0708009839', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 00:19:36', '2021-10-30 00:19:36', 0),
(601, NULL, 'CISSE Seindou Abdoul Razack', NULL, NULL, NULL, '0748442740@gmail.com', '0122', '$2y$10$.dYwPQvnHRP.hXWuV7vgaeiXDYfME/IZNxPkyN4SGUOEizPbSIzfK', 'COCODY', 'Abidjan', '0748442740', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 16:47:35', '2021-11-01 16:48:53', 1),
(602, NULL, 'COULIBALY Goudou', NULL, NULL, NULL, '0709201919@gmail.com', '0687', '$2y$10$zZBzUmm0obsHpb8nPXxgReGwuh4xhhWUzZgYydWw015WrG51qbqfK', 'PLATEAU', 'Abidjan', '0709201919', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 16:56:35', '2021-11-01 16:56:35', 0),
(603, NULL, 'COULIBALY Fatele Albert', NULL, NULL, NULL, '0707359192@gmail.com', '0530', '$2y$10$KgYThWE44v9yC3Hol7XDLep4Z8PoEvs408izWWtfQaRzPP9P8rigS', 'COCODY', 'Abidjan', '0707359192', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 16:59:07', '2021-11-01 16:59:07', 0),
(604, NULL, 'COULIBALY Guillaume', NULL, NULL, NULL, '0707552022@gmail.com', '0692', '$2y$10$SN0zpKqUDkYXIqeAjpMPS.ssBOj3pXjT9eTKhXi9kUeNFTrUajq9G', 'COCODY', 'Abidjan', '0707552022', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:01:46', '2021-11-01 17:01:46', 0),
(605, NULL, 'COULIBALY Coulibaly', NULL, NULL, NULL, '0708871041@gmail.com', '0603', '$2y$10$eu2wFvs69Oy.F/mkElV0AeKDpLShpXB7HJT3Q7N4UH/Nh6bxUJdwG', 'COCODY', 'Abidjan', '0708871041', NULL, 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:04:39', '2021-11-09 10:12:47', 0),
(606, NULL, 'D OLIVEIRA Elvis', NULL, NULL, NULL, '0707205239@gmail.com', '0670', '$2y$10$AR1CBiUKtG23KXIE7Y2T/OhzoV8wv8vUFYLtx.QH4Nnz35dt6jRWq', 'COCODY', 'Abidjan', '0707205239', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:07:24', '2021-11-01 17:07:24', 0),
(607, NULL, 'DIALLO Belko', NULL, NULL, NULL, '0748323874@gmail.com', '0595', '$2y$10$c8a0ZNA4.dl3VrnhK42GL.NhxNuYUaaVlXou6CHVnnl.04t4qSIS6', 'COCODY', 'Abidjan', '0748323874', NULL, 1, 1, NULL, '2000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:10:08', '2021-11-10 13:53:25', 0),
(608, NULL, 'DIARRASOUBA Aboubakar', NULL, NULL, NULL, '0709689943@gmail.com', '0573', '$2y$10$oh5LqVnZufXVqLROv.ZnEuDsvAKc.Z.2btQeWbtQk1WZelisS6OFe', 'BINGERVILLE', 'Abidjan', '0709689943', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:14:15', '2021-11-01 17:14:15', 0),
(609, NULL, 'DIENG Dieng', NULL, NULL, NULL, '0789395185@gmail.com', '0601', '$2y$10$XkgDU11e3oer9vC4vwSmHOSomU9jZpiA/rB50p0wwI9Y8ERdlg9oi', 'COCODY', 'Abidjan', '0789395185', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:16:28', '2021-11-01 17:16:28', 0),
(610, NULL, 'DIOMANDE Mamadou', NULL, NULL, NULL, '0707927295@gmail.com', '0606', '$2y$10$gPXz2wGkMC/M0m1oymSqKeQrLv5We6f5VZfiyhipnrvz7C7zbyfoa', 'COCODY', 'Abidjan', '0707927295', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:19:23', '2021-11-01 17:19:23', 0),
(611, NULL, 'DIOMANDE Mohamed', NULL, NULL, NULL, '07650409@gmail.com', '0511', '$2y$10$GPFy219xY3BWHrncrFRb5u4d1mo2KulKCzbU6GKo7xaUhNs5mUoaW', 'COCODY', 'Abidjan', '07650409', NULL, 1, 1, NULL, '2000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:24:15', '2021-11-10 13:35:14', 0),
(612, NULL, 'FAWAZ Morallex', NULL, NULL, NULL, '0707156996@gmail.com', '0689', '$2y$10$I5Gh2PafQANNPDJp71z.Ge0vqxJ46ioRkqfUqo7pgEEwxxygJNUoi', 'COCODY', 'Abidjan', '0707156996', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:40:34', '2021-11-01 17:40:34', 0),
(613, NULL, 'FAYE Coly', NULL, NULL, NULL, '57706774@gmail.com', '0517', '$2y$10$qPb7RUt1QaxjYU08ZdNy0ekajqziHcttm0xVqSAWTWvVWXlC55PU6', 'COCODY', 'Abidjan', '57706774', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:47:00', '2021-11-01 17:47:00', 0),
(614, NULL, 'GASPARD Mathieu', NULL, NULL, NULL, '0779844057@gmail.com', '0644', '$2y$10$Ox0nbNZSwuhgQ9mt2rk13ORyseo9rC6.dhL7HMTEVAs/A/YpkpgKm', 'COCODY', 'Abidjan', '0779844057', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 17:49:15', '2021-11-01 17:49:15', 0),
(615, NULL, 'GBEULI Michael Guero', NULL, NULL, NULL, '+1514348895@gmail.com', '0589', '$2y$10$IUii6zCpwoKv0bwKicTWT.MFNUUwoXMggGSFjCyeJN8OzBvK/IbS6', 'COCODY', 'Abidjan', '+1514348895', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:01:09', '2021-11-01 18:01:09', 0),
(616, NULL, 'GNABA Ange', NULL, NULL, NULL, '0747637353@gmail.com', '0637', '$2y$10$rWDAevcP5KULv8fGUvmg2e1.VFvsEQViUNX.pWwyx9ZFh4vReumUG', 'COCODY', 'Abidjan', '0747637353', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:06:13', '2021-11-01 18:06:13', 0),
(617, NULL, 'GUYONNET Kevin', NULL, NULL, NULL, '0777255777@gmail.com', '0668', '$2y$10$aN650oe/.hoRyFsCFbsEn.YYMt8ySOlvKAra2sidgzYm/vyWTPDG6', 'COCODY', 'Abidjan', '0777255777', NULL, 1, 1, NULL, '2000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:10:33', '2021-11-10 13:59:38', 0),
(618, NULL, 'HABIB Coulibaly', NULL, NULL, NULL, '44996507@gmail.com', '0508', '$2y$10$eYgOuxivVDj.6FMwcpzsVeBYpTxoUSpqb7pcO9cSDthjmdV.l6gfC', 'COCODY', 'Abidjan', '44996507', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:12:20', '2021-11-01 18:12:20', 0),
(619, NULL, 'HABIB Baue', NULL, NULL, NULL, '0506323509@gmail.com', '0558', '$2y$10$btkjTPqaUrWJITXHkuC05.SzeAB6Nedq/CM2uAcgKU.WtBdkRMTZC', 'COCODY', 'Abidjan', '0506323509', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:15:09', '2021-11-01 18:15:09', 0),
(620, NULL, 'HABIB Yasseen Bamba', NULL, NULL, NULL, '0748422130@gmail.com', '0587', '$2y$10$Rv1bMJqMSar/5ZOhE2REqeDL52ZJvNjLaQZuGJDFXyVWT7EiK.uPe', 'COCODY', 'Abidjan', '0748422130', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:17:43', '2021-11-01 18:17:43', 0),
(621, NULL, 'HANS Djaikou', NULL, NULL, NULL, '0792580140@gmail.com', '0686', '$2y$10$vaShb82FHOTSfGdQa.hRGut6u7Wm0zISZzrNcbHkhAnRF8spP/xuu', 'COCODY', 'Abidjan', '0792580140', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:20:00', '2021-11-01 18:20:00', 0),
(622, NULL, 'MAMADOU Billo Barry', NULL, NULL, NULL, '55880092@gmail.com', '0521', '$2y$10$wfms3cSp0ubDXZoLkReePuHJ3aI5vWIJrhAGThc9GbxmQtPhVEwXu', 'COCODY', 'Abidjan', '55880092', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:33:07', '2021-11-01 18:33:07', 0),
(623, NULL, 'MILLOGO Millogo', NULL, NULL, NULL, '0799694792@gmail.com', '0693', '$2y$10$Np0jmlfpWcDhX4CsLYmoE.Ck72wLpG6.RZ.S6fNLnPf8p6OL9G54m', 'COCODY', 'Abidjan', '0799694792', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:39:51', '2021-11-01 18:39:51', 0),
(624, NULL, 'MUZINGA Francois', NULL, NULL, NULL, '0799429874@gmail.com', '0645', '$2y$10$qPr2O0VqILZKmsLanoX5q.QBiaHO9KlCGwQGBIbG4q1YcD2ebGbQC', 'COCODY', 'Abidjan', '0799429874', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:50:29', '2021-11-01 18:50:29', 0),
(625, NULL, 'NIAMKE Sane Elie', NULL, NULL, NULL, '0748606858@gmail.com', '0655', '$2y$10$8JvXd6bLqS7T3ZGe4RuUEeq9XR2tfSvWqdRW4B5aGBAIRXjrDmHIi', 'BINGERVILLE', 'Abidjan', '0748606858', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 18:54:46', '2021-11-01 18:54:46', 0),
(626, NULL, 'OUATTARA Abdoul', NULL, NULL, NULL, '0141312159@gmail.com', '0597', '$2y$10$QSRATBB65sPRZ.r8wgjRw.BcMuz41.jRrTsuRC/SnEmymGvavliDK', 'COCODY', 'Abidjan', '0141312159', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:01:49', '2021-11-01 19:01:49', 0),
(627, NULL, 'OUATTARA Roland', NULL, NULL, NULL, '0707633545@gmail.com', '0694', '$2y$10$MhO4O.HW2KnFerEZfsBsDuOxt9naLSa3bEjQtS.MbbeY29h6cAIu6', 'YOPOUGON', 'Abidjan', '0707633545', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:05:34', '2021-11-01 19:05:34', 0),
(628, NULL, 'OUEDRAOGO Adama', NULL, NULL, NULL, '07412041@gmail.com', '0531', '$2y$10$bq3sEZdXTCtKMecZhARsAupqnsNXAM/8LmrjeljW5A2wzFtzbcTWG', 'YOPOUGON', 'Abidjan', '07412041', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:07:26', '2021-11-01 19:07:26', 0),
(629, NULL, 'OUEDRAOGO Aboubacar', NULL, NULL, NULL, '07777679399@gmail.com', '0674', '$2y$10$rJjtsBC7PoFqsfEpdonj8.IsW27Ie1y9NkAbjYzfoHr6WcfcEDWEW', 'COCODY', 'Abidjan', '07777679399', NULL, 1, 1, NULL, '3000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:10:13', '2021-11-10 13:58:27', 0),
(630, NULL, 'SANOGO Bakary', NULL, NULL, NULL, '0709642374@gmail.com', '0683', '$2y$10$b808LLJPtA3mYFYeOAI2rO1QK.j/pXHtDGl4Upi6El5dY7At4cCfm', 'TRECHVILLE', 'Abidjan', '0709642374', NULL, 1, 1, NULL, '12000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:24:16', '2021-11-10 14:02:07', 0),
(631, NULL, 'SANOGO Mohamed Lamine', NULL, NULL, NULL, '0788415705@gmail.com', '0639', '$2y$10$5DNxtroGf8cheDmIzIzd2eh7rAlOMdWNKvOTiaoCy41kluNwZq8Su', 'PLATEAU', 'Abidjan', '0788415705', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:25:53', '2021-11-01 19:25:53', 0),
(632, NULL, 'SEKOU Bocoun', NULL, NULL, NULL, '0708450954@gmail.com', '0581', '$2y$10$bmjWb9506c8a5qPvQMKn8OAUCuRqXtUHO.yMgQeETrGlJ2D5B68/e', 'COCODY', 'Abidjan', '0708450954', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:30:30', '2021-11-01 19:30:30', 0),
(633, NULL, 'SELA Romaric', NULL, NULL, NULL, '0768682928@gmail.com', '0640', '$2y$10$nLsrV9UUHL8ZUq4fMPqiPOpNLLndnldXbe4VEu4n8sLgJz53bs/56', 'COCODY', 'Abidjan', '0768682928', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:31:54', '2021-11-01 19:31:54', 0),
(634, NULL, 'IDRISS Coulibaly', NULL, NULL, NULL, '0758636304@gmail.com', '0541', '$2y$10$kC5piom4XYugOLGS6eWQ7O4rDxQ9x3muAcegJXe7hkSHIPJer3opW', 'COCODY', 'Abidjan', '0758636304', NULL, 1, 1, NULL, '5000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:48:44', '2021-11-10 13:44:57', 0),
(635, NULL, 'JEAN MART Behou', NULL, NULL, NULL, '0759031060@gmail.com', '0550', '$2y$10$LQvKXn.3hfuNXMt/ZXa3wuZpMesSVpwx0mojpmrA8dTzrA5M0gLKO', 'COCODY', 'Abidjan', '0759031060', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:51:25', '2021-11-01 19:51:25', 0),
(636, NULL, 'KADIO Yannick', NULL, NULL, NULL, '0707243898@gmail.com', '0691', '$2y$10$Za57.84ofMHqIiH88gmmPeuhjB0J1PBpeVVMzP3sLgQQ4uQ3/rDh2', 'COCODY', 'Abidjan', '0707243898', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 19:55:08', '2021-11-01 19:55:08', 0);
INSERT INTO `users` (`id`, `code`, `name`, `lastname`, `adresse1`, `adresse2`, `email`, `username`, `password`, `country`, `city`, `mobile`, `genre`, `emailv`, `smsv`, `tauth`, `balance`, `balance_point`, `status`, `vsent`, `vercode`, `remember_token`, `address1`, `address2`, `state`, `zipcode`, `remark`, `salute`, `Gender`, `birth_date`, `created_at`, `updated_at`, `deleted`) VALUES
(637, NULL, 'KANGAH Assemian Frederic', NULL, NULL, NULL, '0103316557@gmail.com', '0594', '$2y$10$6NlS7s4uep71HBg7ceUqHefy.XytKzhlAUBym13aElvw323gAIaY2', 'COCODY', 'Abidjan', '0103316557', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:17:25', '2021-11-01 20:17:25', 0),
(638, NULL, 'KOFFI Aubin', NULL, NULL, NULL, '0101057914@gmail.com', '0648', '$2y$10$ErLEk6r3wkMGzbESxYCGxOtrq9EssI9atPqLYRvyVlFyHhER81RV.', 'COCODY', 'Abidjan', '0101057914', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:34:55', '2021-11-01 20:34:55', 0),
(639, NULL, 'KONAN Jean Richard', NULL, NULL, NULL, '0101000081@gmail.com', '0647', '$2y$10$Qb80/ZmcwBNhEOGATzknLuhZ2zpzgUFXS7G/vLs7Wb25bfTJScT7C', 'COCODY', 'Abidjan', '0101000081', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:40:31', '2021-11-01 20:40:31', 0),
(640, NULL, 'KOUASSI Patrice', NULL, NULL, NULL, '0172531010@gmail.com', '0697', '$2y$10$ETwdeyoId5xI8VYlJ4cK3.PaSTrudlD2UHNW971JYEBO/nuTMCL2S', 'COCODY', 'Abidjan', '0172531010', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:52:46', '2021-11-01 20:52:46', 0),
(641, NULL, 'KOUASSI Akon Rene', NULL, NULL, NULL, '0709396003@gmail.com', '0638', '$2y$10$6LKNs.UOzhd/JFvN5Xv2Due.urT5SkP.MLWIKtsl6VmaFRV9UOfjy', 'COCODY', 'Abidjan', '0709396003', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:54:49', '2021-11-01 20:54:49', 0),
(642, NULL, 'MAC Gael Anouma', NULL, NULL, NULL, '89650830@gmail.com', '0528', '$2y$10$VOzPe0Kf/4EUjaAvRbTAh.xa0RxyuPndL.cRjwxCHXxGs63cCpy2.', 'COCODY', 'Abidjan', '89650830', NULL, 1, 1, NULL, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 21:05:08', '2021-11-10 13:40:16', 0),
(643, NULL, 'APATA Marc', NULL, NULL, NULL, '0707107830@gmail.com', '0506', '$2y$10$KVkClEv44WV7gPMovO1wv.xp38wu3hH3oW7VkpUrJ9SzIpaQmqP5.', 'COCODY', 'ABIDJAN', '0707107830', NULL, 1, 1, NULL, '19000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-02 09:36:11', '2021-11-10 13:34:20', 0),
(650, NULL, 'TOUTOUKPO Claude', NULL, NULL, NULL, '0101113169@gmail.com', '0364', '$2y$10$CadRZYbmbd8VPt55Y9Gti.d3mWCEaUqNORpmaCJC5tLyQ8wRlCMbm', 'YOPOUGON', 'Abidjan', '0101113169', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:26:02', '2021-11-09 08:26:02', 0),
(651, NULL, 'TUO Yalourga', NULL, NULL, NULL, '0707726670@gmail.com', '0343', '$2y$10$Jxr5aQ1bQyWhMkzvg5TBbu9PD8MUfAjZeubXTuWUTzbGmnKqwGCla', 'YOPOUGON', 'Abidjan', '0707726670', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:31:35', '2021-11-09 08:31:35', 0),
(652, NULL, 'YAPO Armel', NULL, NULL, NULL, '0707210238@gmail.com', '0362', '$2y$10$Pif0NHwWQlMQ1fp.TDqGVeeC7y05Ei5lpiGZL5xAw/b/HYc51Xeci', 'YOPOUGON', 'Abidjan', '0707210238', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:38:19', '2021-11-09 08:38:19', 0),
(653, NULL, 'ZEBE Justin', NULL, NULL, NULL, '0787030534@gmail.com', '0329', '$2y$10$UWF.rMZpKwEj3nKRNvL2xugNuZbIC0y43UJDSRR10m2d.R00l2CX.', 'YOPOUGON', 'Abidjan', '0787030534', NULL, 1, 1, NULL, '500', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 08:41:16', '2021-11-10 13:18:00', 0),
(654, NULL, 'ABETO Bernard Claude', NULL, NULL, NULL, 'abetoc@gmal.com', '0311', '$2y$10$t06asrZfhTGLdD828HyKNu9zKPGlOLkWrS/R.JrLkpRkpsDvQQopm', 'YOPOUGON', 'Abidjan', '0545983693', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:11:31', '2021-11-09 09:11:31', 0),
(655, NULL, 'ADELAKOUN Amedee Eric', NULL, NULL, NULL, '0708101020@gmail.com', '0316', '$2y$10$Pd3WNwqB31bn0S.L5paofurWe/bl5dxUVbxWB3ZHFJo4/utnROQ5y', 'YOPOUGON', 'Abidjan', '0708101020', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:13:22', '2021-11-09 09:13:22', 0),
(656, NULL, 'ADJAFI Koukou Williams', NULL, NULL, NULL, 'williamsadjafi2016@gmail.com', '0320', '$2y$10$1St8qE8HPeaMyjQlp.hSVOIWtPAkPjQszynUGL4KTNZuvl/CVRg9q', 'YOPOUGON', 'Abidjan', '01711443278', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:14:51', '2021-11-09 09:14:51', 0),
(657, NULL, 'AGUEH Adonis Louis', NULL, NULL, NULL, '0707440128@gmail.com', '0356', '$2y$10$I9kc8.sVQEawRf4ao8cR9.8YznuVtBFXEyiLt6FKcWw8B5MhIu4fu', 'YOPOUGON', 'Abidjan', '0707440128', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:17:43', '2021-11-09 09:17:43', 0),
(658, NULL, 'AHIN Loba Corneille', NULL, NULL, NULL, '0707879950@gmail.com', '0352', '$2y$10$UwDGXFY0YNvnPV2H8yDT.OxbjmaJJcWLEHz1eqgzx5LF9.9CmB6ju', 'YOPOUGON', 'Abidjan', '0707879950', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:22:56', '2021-11-09 09:22:56', 0),
(659, NULL, 'AMOI Yao Contant', NULL, NULL, NULL, '0102977487@gmail.com', '0334', '$2y$10$c/FkxMiJ7b4cmhA0IvzrIOn1G93GhWF0oFWgS4toPZ3wP.roBbR16', 'YOPOUGON', 'Abidjan', '0102977487', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:29:09', '2021-11-09 09:29:09', 0),
(660, NULL, 'BAMBA Fatoumata', NULL, NULL, NULL, '0709175424@gmail.com', '0350', '$2y$10$jt55w4fQ8fTCSlN8u4MCBODD5.HUXQAD/IAxvKLK2j/8GLl1ehcW2', 'YOPOUGON', 'Abidjan', '0709175424', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:32:36', '2021-11-09 09:32:36', 0),
(661, NULL, 'BAMBA  Magbe', NULL, NULL, NULL, '0707952923@gmail.com', '0360', '$2y$10$vcjTcoRBh72hkdLgodShDOIOFw7n8bgrDb4WkfMvBaBpBZ0um4f3a', 'YOPOUGON', 'Abidjan', '0707952923', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:34:00', '2021-11-09 09:34:00', 0),
(662, NULL, 'BISSOUMA Duval', NULL, NULL, NULL, '0585858564@gmail.com', '0359', '$2y$10$jSGcIds/ErCWVjA2Q.mn3e46kTGTrqb1elPqG2nv/naLAbaahemSy', 'YOPOUGON', 'Abidjan', '0585858564', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 09:35:52', '2021-11-09 09:35:52', 0),
(663, NULL, 'BOUAOULI Kouassi Augustin', NULL, NULL, NULL, '0707877737@gmail.com', '0323', '$2y$10$sW8BnXPoTMZuPLUphcb9CuDtpBcjJbDCxfRfIcO3am4R181eIRR5O', 'YOPOUGON', 'Abidjan', '0707877737', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:08:38', '2021-11-09 10:08:38', 0),
(664, NULL, 'BRIZOU Bi Astyanax Jean', NULL, NULL, NULL, '0708047376@gmail.com', '0332', '$2y$10$pZ5uyLLyFoqbAONDuaqGROrUPzL7e8I4bsl/L42S9NPhrPLIh3ns.', 'YOPOUGON', 'Abidjan', '0708047376', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:10:16', '2021-11-09 10:10:16', 0),
(665, NULL, 'COULIBALY Claude', NULL, NULL, NULL, '0707898349@gmail.com', '0278', '$2y$10$xmidTuZ5cNu2iJKx9L15W.wXxwpNqs3/qdQcmPJ.d5/lXgCVJg3Gu', 'YOPOUGON', 'Abidjan', '0707898349', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:21:50', '2021-11-09 10:21:50', 0),
(666, NULL, 'DAO Alassane', NULL, NULL, NULL, '0779204722@gmail.com', '0321', '$2y$10$pTh/6oNSO3dSpa2fqAjEiewkkaBAlZ.TFtBMQieLCX0PsKSgEZCHW', 'YOPOUGON', 'Abidjan', '0779204722', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:24:34', '2021-11-09 10:24:34', 0),
(667, NULL, 'DIAKITE Laye', NULL, NULL, NULL, '0709788932@gmail.com', '0363', '$2y$10$3cCbZo0Une0EyMtrHIUhJuGh6nCg/QJfkJ/hbD7imLmfWJBHLsJVa', 'YOPOUGON', 'Abidjan', '0709788932', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:26:26', '2021-11-09 10:26:26', 0),
(668, NULL, 'DJAMA Narcisse', NULL, NULL, NULL, '0789363621@gmail.com', '0346', '$2y$10$V9Ol76uiIVvyLu2ZlGtCye3hIzGocdRARQSpx6msgtClKuLJpU7D.', 'YOPOUGON', 'Abidjan', '0789363621', NULL, 1, 1, NULL, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:27:58', '2021-11-10 13:21:56', 0),
(669, NULL, 'DJIKOUNON Koffi Austin Ange Emmanuel', NULL, NULL, NULL, '0747287533@gmail.com', '0328', '$2y$10$1i27FLoUk7YwPguDZBaj0OaUnK4SIpl4DxL6MATz0nrpom3RTlG8m', 'YOPOUGON', 'Abidjan', '0747287533', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:30:21', '2021-11-09 10:30:21', 0),
(670, NULL, 'DJIKOUNON Fabrice', NULL, NULL, NULL, '07472875330@gmail.com', '0035', '$2y$10$0f9wby0YrgQGkEckbvRZn.ZZvvnGw5Z3YD9u8ZyIOTrsclzdnU.CG', 'YOPOUGON', 'Abidjan', '0747287533', NULL, 1, 1, NULL, '5000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:32:02', '2021-11-10 13:23:36', 0),
(671, NULL, 'DONKO Kangah Yannick', NULL, NULL, NULL, '0707945419@gmail.com', '0344', '$2y$10$776w6oYnX8ZqjPLRurDpW.ULnnL0eXeuZ3MJ8E4QBQXqAhC8dN7Ny', 'YOPOUGON', 'Abidjan', '0707945419', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:56:12', '2021-11-09 10:56:12', 0),
(672, NULL, 'DOUMBIA Moulouk', NULL, NULL, NULL, '0709091714@gmail.com', '0342', '$2y$10$Ku0VX/7hM2t7a39.R7z5au8hXT1BTXaCOufhCsfh04HM2zgFeGMpa', 'YOPOUGON', 'Abidjan', '0709091714', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:57:49', '2021-11-09 10:57:49', 0),
(673, NULL, 'ESMEL Akpa Landry', NULL, NULL, NULL, '0707027206@gmail.com', '0292', '$2y$10$F/UeHlp260iCuSg5Dw3DB.qDiAlBPfC6o66AJj1u22UFLyw82LXVG', 'YOPOUGON', 'Abidjan', '0707027206', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:00:52', '2021-11-09 11:00:52', 0),
(674, NULL, 'ESMEL Angem', NULL, NULL, NULL, '0566788634@gmail.com', '0310', '$2y$10$aUEJ3imw8XOhCxMvk4ESpecrVp9AStwJIPV4B9gGfD9SKJmYkAVsa', 'YOPOUGON', 'Abidjan', '0566788634', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:02:17', '2021-11-09 11:02:17', 0),
(675, NULL, 'ESSIS Christian', NULL, NULL, NULL, '0778816682@gmail.com', '0325', '$2y$10$G.DVEZXFE5czXIrBYWw25.yTLBocMNMHuaRRuFS5Sjr0MSmRpBZPu', 'YOPOUGON', 'Abidjan', '0778816682', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:03:38', '2021-11-09 11:03:38', 0),
(676, NULL, 'ESSOH Parfait', NULL, NULL, NULL, '0748434890@gmail.com', '0351', '$2y$10$dNrYAsjjE/4OPmz1bJkpBOLqkyIwkqI9HiRAtf/k5DJS7UI4RJxRi', 'YOPOUGON', 'Abidjan', '0748434890', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:05:17', '2021-11-09 11:05:17', 0),
(677, NULL, 'FOFANAN Abou', NULL, NULL, NULL, '79030800@gmail.com', '0253', '$2y$10$Oxzk9n2nNWX5HLuczwLUdupteKiE8kmeb048982Dmt25KDyiMTlfa', 'YOPOUGON', 'Abidjan', '79030800', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:08:42', '2021-11-09 11:08:42', 0),
(678, NULL, 'FOFANA Bangali', NULL, NULL, NULL, 'fofanabangaly@gmail.com', '1256', '$2y$10$HcEX1rI0iM/f1.xq5JqzvuM387eJu.XaWtyi4YfCeMTDGqRdvEZr2', 'YOPOUGON', 'Abidjan', '0707720725', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:12:19', '2021-11-09 11:12:19', 0),
(679, NULL, 'FRONDOH Yves Roger', NULL, NULL, NULL, 'yvesfrondoh@gmail.com', '0318', '$2y$10$KSiun2xWYC4.H6aUn1xRMuSn8diYCcOPjIK7K9gIuFbX8yRj9Kd4a', 'YOPOUGON', 'Abidjan', '0709953989', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:14:23', '2021-11-09 11:14:23', 0),
(680, NULL, 'GNAKO Marius', NULL, NULL, NULL, '0777097162@gmail.com', '0322', '$2y$10$m6VU7Y0nQwPOXO.4/VHxB.AspMM2Ed31ihdO5Pqpphzvt6oX421T.', 'YOPOUGON', 'Abidjan', '0777097162', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:20:35', '2021-11-09 11:20:35', 0),
(681, NULL, 'GUIBADO Joel Stephane', NULL, NULL, NULL, '44260096@gmail.com', '0033', '$2y$10$HdvYfktORS/E1C6cAen.CesR85Qy0.iiEcKAJ6mC156Kza5vW7gl.', 'YOPOUGON', 'Abidjan', '44260096', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:23:05', '2021-11-09 11:25:12', 1),
(682, NULL, 'HODONOU Marc', NULL, NULL, NULL, '0708843786@gmail.com', '0341', '$2y$10$P0fuUQveSKzUo7rXz9uLqu8ZqhzUgQ5eauWuhUYWeVMeeemdtdc5G', 'YOPOUGON', 'Abidjan', '0708843786', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:33:16', '2021-11-09 11:33:16', 0),
(683, NULL, 'KANE Prince Ange Harison', NULL, NULL, NULL, '0789378553@gmail.com', '0317', '$2y$10$bmd5.iwxdRivs0vdsIZeC.ejFUvnO9.s1LyEw0MTBlSH0SvDrFm5W', 'YOPOUGON', 'Abidjan', '0789378553', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:09:16', '2021-11-09 12:09:16', 0),
(684, NULL, 'KITHAU Nobert  Camara', NULL, NULL, NULL, '0707868628@gmail.com', '0324', '$2y$10$/tZc7GQpl8KxvBpe3V8JWeV7.FgpqfDpkXcy4gEhtuvjXmBIJy9YG', 'YOPOUGON', 'Abidjan', '0707868628', NULL, 1, 1, NULL, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:12:04', '2021-11-10 13:21:14', 0),
(685, NULL, 'KODJO Francois', NULL, NULL, NULL, '0504576232@gmail.com', '0347', '$2y$10$eeXgIY4wVee6KcF1QP7lpe60NaI5GbV/vmZp1su4.imYLOTdUqOIO', 'YOPOUGON', 'Abidjan', '0504576232', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:13:31', '2021-11-09 12:13:31', 0),
(686, NULL, 'KONAN Fidele', NULL, NULL, NULL, '0749253875@gmail.com', '0345', '$2y$10$Kdu3stw9ACy/ldQQpIUTM.gzz2NbBfYbyANKnjvUGo9C/umo1Fm1C', 'YOPOUGON', 'Abidjan', '0749253875', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:19:08', '2021-11-09 12:19:08', 0),
(687, NULL, 'KONE Adama', NULL, NULL, NULL, '07544439@gmail.com', '0265', '$2y$10$qOw4dFSX.K.bpZ7TNxMaOe0afEBKsa/iqdJPSltis8FI8C6daQbNS', 'YOPOUGON', 'Abidjan', '07544439', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:20:27', '2021-11-09 12:20:27', 0),
(688, NULL, 'KONE David', NULL, NULL, NULL, '0757530766@gmail.com', '0319', '$2y$10$14xa4uzttlK9llKLg6MEUur1ala0AoRM5sgkb6hhYRDla2DuKfVwa', 'YOPOUGON', 'Abidjan', '0757530766', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:22:06', '2021-11-09 12:22:06', 0),
(689, NULL, 'KONE Lassana', NULL, NULL, NULL, '0709029802@gmali.com', '0335', '$2y$10$3sCovboiyEhY4VmNr6p8vum8NrpgClj01PaxBLAlq8J0huFWIH5xy', 'YOPOUGON', 'Abidjan', '0709029802', NULL, 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:23:29', '2021-11-25 18:20:22', 0),
(690, NULL, 'KONE Bazoumana', NULL, NULL, NULL, '0709840503@gmail.com', '0339', '$2y$10$ZpUIn7A18qPCKQs5QYXuyugTG5BKxlQJvTc3M2.fLAzRqFh1dmE.q', 'YOPOUGON', 'Abidjan', '0709840503', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:24:49', '2021-11-09 12:24:49', 0),
(691, NULL, 'KONE Dramane', NULL, NULL, NULL, '08680707@gmail.com', '0354', '$2y$10$cjToKyxINOAu1rTmMltIcuUMcWEO5xzW5VgV1rHQ9xxfd5Yv76M86', 'YOPOUGON', 'Abidjan', '08680707', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:26:01', '2021-11-09 12:26:01', 0),
(692, NULL, 'KONE Domin Mangbe', NULL, NULL, NULL, '0142537001@gmail.com', '0357', '$2y$10$4SvrZKF7.EnmSD7Dm7DCuuwMKOS1FnkuWDUwjBhdyXDDa6C5gcIYi', 'YOPOUGON', 'Abidjan', '0142537001', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:27:41', '2021-11-09 12:27:41', 0),
(693, NULL, 'KOUASSI Konon Olivier', NULL, NULL, NULL, '0708135804@gmail.com', '0333', '$2y$10$W8OQ8j32o3sQFecskIePmewAZ.1rLB9FjmfFVCnrszCQiOnIPzl1.', 'YOPOUGON', 'Abidjan', '0708135804', NULL, 1, 1, NULL, '1000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:46:15', '2021-11-10 13:20:00', 0),
(694, NULL, 'KROU Andre', NULL, NULL, NULL, 'andrekrou@gmail.com', '0271', '$2y$10$fN39t7eXLmKeGyAXAIRc4uqqNvSiSurN1GxGDxFqCkqA7a3Ipp6lS', 'YOPOUGON', 'Abidjan', '0707096382', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:51:41', '2021-11-09 12:51:41', 0),
(695, NULL, 'LASME Fabrice', NULL, NULL, NULL, '0757968942@gmail.com', '0358', '$2y$10$WqlimVqc9RiWsOvJtU9lfOwyl.c0UAQSnL/PRSaMRlYj6FLMEEAsK', 'YOPOUGON', 'Abidjan', '0757968942', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:53:22', '2021-11-09 12:53:22', 0),
(696, NULL, 'NDOUA Ludovic Ange Patrick N', NULL, NULL, NULL, '0759630200@gmail.com', '0366', '$2y$10$FxLblxBjdPrd8XFwvPtZDe3ypL8lSYkkQ74p2DzmpffCnOMD4q6eO', 'YOPOUGON', 'Abidjan', '0759630200', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:15:51', '2021-11-09 13:15:51', 0),
(697, NULL, 'NDRI Nguessan Thomas', NULL, NULL, NULL, '0709566800@gmail.com', '0365', '$2y$10$kvXtAXo8PuzKZpxzZtu4VenDO7Bg4mr.l7YKqPA5ml80v6zyHAWpG', 'YOPOUGON', 'Abidjan', '0709566800', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:17:15', '2021-11-09 13:17:15', 0),
(698, NULL, 'NGUESSAN Alain', NULL, NULL, NULL, '07127182@gmail.com', '0261', '$2y$10$mBVDIbwrTHB69At9nzGa6.1Y.j/nLcMl9XcRZ4Pv6DWh7kzTEHPXq', 'COCODY', 'Abidjan', '07127182', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:19:39', '2021-11-09 13:19:39', 0),
(699, NULL, 'N\'GUETTAN Komenan Desire', NULL, NULL, NULL, '0709876993@gmail.com', '0337', '$2y$10$Z3E4EKp30rXWtAq/1tH0duDySMw62dgCc3Q2E/N7NVk/kTUz27hQy', 'YOPOUGON', 'Abidjan', '0709876993', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:21:05', '2021-11-09 13:21:05', 0),
(700, NULL, 'OKOUA Dayere  Chatlain', NULL, NULL, NULL, '0708941041@gmail.com', '0349', '$2y$10$AFHMO6cBufr5Toc/GaN5C.fud3AaKvGOwHAI3YDLYz1l4tDFi7Dl2', 'YOPOUGON', 'Abidjan', '0708941041', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:23:35', '2021-11-09 13:23:35', 0),
(701, NULL, 'OUATTARA Yacouba', NULL, NULL, NULL, '0101000402@gmail.com', '0353', '$2y$10$1GySm.kTnQM1uMLpZEfdHesen4M7BGM/MicfkJPa67UEorbVlVLEq', 'YOPOUGON', 'Abidjan', '0101000402', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:26:38', '2021-11-09 13:26:38', 0),
(702, NULL, 'OUATTARA Babyssiri', NULL, NULL, NULL, '40989273@gmail.com', '0260', '$2y$10$svKXda1U37rj2sUhYpKiY.w2ZUAz6JtnocbH7lRpe4XuUJIDhrrw2', 'YOPOUGON', 'Abidjan', '40989273', NULL, 1, 1, NULL, '12000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:28:17', '2021-11-10 12:19:40', 0),
(703, NULL, 'OUATTARA Abdoulaye', NULL, NULL, NULL, '0787140354@gmail.com', '0338', '$2y$10$aAux0VZ4.iOo8UAGtT2Jtu1.nWezPMs.kTVoKhSj.lFtsPH.ua9RC', 'YOPOUGON', 'Abidjan', '0787140354', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:29:49', '2021-11-09 13:29:49', 0),
(704, NULL, 'OUATTARA Drissa', NULL, NULL, NULL, '0777301237@gmail.com', '0348', '$2y$10$t9tcNGX.m/kHGU3WcYa1xO.7wZkSwiuwQRmnzsp1QMRDPoFapfSDi', 'YOPOUGON', 'Abidjan', '0777301237', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:46:07', '2021-11-09 13:46:07', 0),
(705, NULL, 'SAGO Aristide Jislin', NULL, NULL, NULL, '0279328604@gmail.com', '0291', '$2y$10$Ny3djoUdUUh4Z9UAXASfz.OFlIskO.53d9r7Wribee4Ecx1w4CKN.', 'YOPOUGON', 'Abidjan', '0279328604', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:50:33', '2021-11-09 13:50:33', 0),
(706, NULL, 'SEKA Lord Anne', NULL, NULL, NULL, '0747398978@gmail.com', '0327', '$2y$10$DKkwR8P3wJnIUhmQbq464.xT04QvCDfqL1LDha2t0/PSwJcrb/e0W', 'YOPOUGON', 'Abidjan', '0747398978', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:55:21', '2021-11-09 13:55:21', 0),
(707, NULL, 'SELY Silvain D', NULL, NULL, NULL, '0707655664@gmail.com', '0336', '$2y$10$yEHJFfDhwOMmi2oZT34Geu0rFTW0vIJczSQFR5kKkqGNRxDeUUbpC', 'YOPOUGON', 'Abidjan', '0707655664', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:56:39', '2021-11-09 13:56:39', 0),
(708, NULL, 'SOUHONE Michael', NULL, NULL, NULL, '0707560099@gmail.com', '0361', '$2y$10$Eajbplbjxbg8m6SgtuuSNuTZMxzRTMXZ9y3wq4zNdjYpEQYsTzLsO', 'YOPOUGON', 'Abidjan', '0707560099', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 13:59:57', '2021-11-09 13:59:57', 0),
(709, NULL, 'SY SAVANE Abdel Aziz', NULL, NULL, NULL, '0777871484@gmail.com', '0330', '$2y$10$ricPSa.vd7s2nzztG2uFY.gV5fgp.2ZSFZs/RB5dyMJ/ALTs1IAP6', 'YOPOUGON', 'Abidjan', '0777871484', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 14:01:26', '2021-11-09 14:01:26', 0),
(710, NULL, 'KOUASSI Robert', NULL, NULL, NULL, 'robert@gmail.com', '4444', '$2y$10$jFIE75.7CfzOEeb2b6eGEeE9zjCERQBNGsZVDmlom8H.XKd3QiqWS', 'Yopougon', 'abidjan', '0445252530', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-16 08:57:27', '2021-11-16 08:57:27', 0),
(711, NULL, 'FOUA BI Melaine', NULL, NULL, NULL, 'fouabi@gmail.com', '5555', '$2y$10$lEdam1dWwhQVo0pH5XuwfOk/sSM9.iNwbCjX8OS7ZvgDDPR1bz02C', 'Yopougon', 'ABIDJAN', '0789177060', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-16 09:13:45', '2021-11-16 09:13:45', 0),
(712, NULL, 'BALO Melanie', NULL, NULL, NULL, 'balo@gmail.com', '77', '$2y$10$f.aEBkIGZOL2pYaL5llLEus4.59VBEGQyV/jyPoHbly6BWaz4CVTK', 'République centrafricaine', 'ABIDJAN', '0759121897', NULL, 1, 1, 0, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-16 09:26:32', '2021-11-16 09:57:38', 1),
(713, NULL, 'AMOUIN Sylvie', NULL, NULL, NULL, 'sylvie@gmail.com', '4445', '$2y$10$93XTb4u5Ljlgj7q40UEG9OH0UaWJYaYdQtbS.jOQv3QU.HUU9Ueum', 'yopougon', 'abidjan', '0201232355', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-16 09:49:28', '2021-11-16 09:49:28', 0),
(714, NULL, 'KOUAKOU Patricia', NULL, NULL, NULL, 'patykouakou@gmail.com', '0101', '$2y$10$WNS8IClsJjogY1ubQgsH9.BLzEvif1fkPhtr2jHL.q2zK5eUQNqxS', 'YOPOUGON', 'Abidjan', '0505808984', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-16 11:29:41', '2021-11-16 11:29:41', 0),
(715, NULL, 'SORO DAMBELLE', NULL, NULL, NULL, 'dambelle@gmail.com', '0241', '$2y$10$Fn4dEtzN7RkYiNM9KoSyW.ZEyfvbgMs0MsL7tkUzJZQoACXeJo7Qy', 'YOPOUGON', 'ABIDJAN', '0708150032', NULL, 1, 1, NULL, '0', 1200, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 16:25:53', '2021-11-24 16:34:18', 0),
(716, NULL, 'KOUAME Alexis', NULL, NULL, NULL, 'alexis@gmail.com', '0374', '$2y$10$GO1AxdrooI/TYEYMEVdHb.V/W4V7sEeldbjKeGwQugw7yNSWSQGo.', 'YOPOUGON', 'ABIDJAN', '0707697820', NULL, 1, 1, NULL, '0', 1200, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 16:29:11', '2021-11-24 16:35:15', 0),
(717, NULL, 'KONE FOUSSENY', NULL, NULL, NULL, 'Konefouseni@gmail.com', '0681', '$2y$10$ZcPSBkd0WjZw7hCbAcT0zOGRihak77MLq8V/RXoSOrReKiIlXU0hu', 'ANGRE', 'ABIDJAN', '0758038664', NULL, 1, 1, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 12:34:37', '2021-11-25 12:34:37', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardcategories`
--
ALTER TABLE `cardcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardsubcategories`
--
ALTER TABLE `cardsubcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqdetails`
--
ALTER TABLE `faqdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practisedetails`
--
ALTER TABLE `practisedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staticcontents`
--
ALTER TABLE `staticcontents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sucscribes`
--
ALTER TABLE `sucscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cardcategories`
--
ALTER TABLE `cardcategories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `cardsubcategories`
--
ALTER TABLE `cardsubcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqdetails`
--
ALTER TABLE `faqdetails`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `practisedetails`
--
ALTER TABLE `practisedetails`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staticcontents`
--
ALTER TABLE `staticcontents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sucscribes`
--
ALTER TABLE `sucscribes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
