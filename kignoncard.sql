-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table dev_kignoncard_bdd. admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.admins : ~0 rows (environ)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `name`, `email`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'MR ADMIN', 'admin@email.com', 'admin', '$2y$10$okgHbIUamU.4OH3NpYXKTOLYv2ZAUdz95QO9Hnxl.Y7vs3zOM8hu.', 'fJrD3TGoeA0UjK1KyLfWEFcNfl1iCdO0n7ePhH8FsWsgEw32YHggjPOv43NO', '2018-05-18 18:00:00', '2018-05-24 01:23:18');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `des` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.blogs : ~3 rows (environ)
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`id`, `title`, `des`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'assets/images/blog/1535449337.softwareSliderImg.jpg', 0, '2018-08-15 03:44:24', '2018-08-28 13:42:18'),
	(3, 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'assets/images/blog/1535449361.banner_blog3.jpg', 0, '2018-08-15 04:26:48', '2018-08-28 13:42:41'),
	(4, 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'assets/images/blog/1534332816.03.jpg', 0, '2018-08-15 04:26:57', '2018-10-09 12:42:55');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. cardcategories
CREATE TABLE IF NOT EXISTS `cardcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.cardcategories : ~6 rows (environ)
/*!40000 ALTER TABLE `cardcategories` DISABLE KEYS */;
INSERT INTO `cardcategories` (`id`, `cat_name`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'PayPal Verify Card', 'assets/images/categoryimage/1538668643.1536052030.jpg', 1, '2018-09-04 03:07:10', '2018-10-04 19:57:23'),
	(2, 'Virtual Visa Card', 'assets/images/categoryimage/1538668650.1536052052.jpg', 1, '2018-09-04 03:07:32', '2018-10-04 19:57:30'),
	(3, 'Virtual Master Card', 'assets/images/categoryimage/1538668659.1536052063.jpg', 1, '2018-09-04 03:07:43', '2018-10-04 19:57:39'),
	(4, 'Amazon Gift Card', 'assets/images/categoryimage/1538668667.1536052076.jpg', 1, '2018-09-04 03:07:56', '2018-10-04 19:57:47'),
	(5, 'Google Play Card', 'assets/images/categoryimage/1538668674.1536052087.jpg', 1, '2018-09-04 03:08:07', '2018-10-04 19:57:54'),
	(6, 'Mobile Recharge Card', 'assets/images/categoryimage/1538668811.Untitled-3.jpg', 1, '2018-09-04 03:08:18', '2018-10-04 20:00:11');
/*!40000 ALTER TABLE `cardcategories` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. cards
CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_image` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.cards : ~16 rows (environ)
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` (`id`, `card_details`, `card_image`, `user_id`, `category_id`, `sub_category_id`, `status`, `created_at`, `updated_at`) VALUES
	(11, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-07 00:18:12', '2018-10-08 00:53:14'),
	(12, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:14', '2018-10-08 00:36:40'),
	(13, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:15', '2018-10-09 12:53:06'),
	(14, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:17', '2018-10-09 12:53:06'),
	(15, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:19', '2018-10-09 14:19:07'),
	(16, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:20', '2018-10-09 14:19:07'),
	(17, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:21', '2018-10-09 14:19:07'),
	(18, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:23', '2018-10-09 14:19:22'),
	(19, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:24', '2018-10-09 14:19:22'),
	(20, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:26', '2018-10-09 14:19:22'),
	(21, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 1, 1, 1, '2018-10-08 00:18:27', '2018-10-09 14:19:22'),
	(22, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 2, 2, 1, '2018-10-08 00:19:11', '2018-10-09 14:28:03'),
	(23, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 2, 2, 1, '2018-10-08 00:19:16', '2018-10-09 14:28:03'),
	(24, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 2, 2, 1, '2018-10-08 00:19:19', '2018-10-09 14:28:03'),
	(25, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 2, 2, 1, '2018-10-08 00:19:22', '2018-10-09 14:28:03'),
	(26, 'Details of the card, Number and all required, Admin will fill this from backend.', '', 0, 2, 2, 1, '2018-10-08 00:20:06', '2018-10-09 14:28:03');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. cardsubcategories
CREATE TABLE IF NOT EXISTS `cardsubcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Listage des données de la table dev_kignoncard_bdd.cardsubcategories : ~14 rows (environ)
/*!40000 ALTER TABLE `cardsubcategories` DISABLE KEYS */;
INSERT INTO `cardsubcategories` (`id`, `name`, `price`, `cat_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Carte de 5 USD', '8', 1, 1, '2018-10-01 06:31:44', '2018-10-04 20:04:47'),
	(2, 'Carte de 10 USD', '15', 1, 1, '2018-10-01 06:35:51', '2018-10-04 20:04:54'),
	(3, 'Carte prépayée de 10 USD', '15', 2, 1, '2018-10-04 20:03:31', '2018-10-04 20:03:31'),
	(4, 'Carte prépayée de 15 USD', '20', 2, 1, '2018-10-04 20:03:42', '2018-10-04 20:03:42'),
	(5, 'Carte prépayée de 10 USD', '14', 3, 1, '2018-10-04 20:03:50', '2018-10-04 20:03:50'),
	(6, 'Carte prépayée de 20 USD', '25', 3, 1, '2018-10-04 20:04:05', '2018-10-04 20:04:05'),
	(7, 'Carte cadeau de 50 USD', '60', 4, 1, '2018-10-04 20:04:24', '2018-10-04 20:04:24'),
	(8, 'Carte cadeau de 100 USD', '110', 4, 1, '2018-10-04 20:04:36', '2018-10-04 20:04:36'),
	(9, 'Google Play 50 USD', '65', 5, 1, '2018-10-04 20:05:15', '2018-10-04 20:05:15'),
	(10, 'Google Play 100 USD', '115', 5, 1, '2018-10-04 20:05:30', '2018-10-04 20:05:30'),
	(11, 'AIRTEL - Carte de recharge de 10 USD', '12', 6, 1, '2018-10-04 20:05:56', '2018-10-04 20:05:56'),
	(12, 'TELENOR - Carte de recharge de 10 USD', '12', 6, 1, '2018-10-04 20:06:10', '2018-10-04 20:06:10'),
	(13, 'VodaFone - Carte de recharge de 15 USD', '19', 6, 1, '2018-10-04 20:06:36', '2018-10-04 20:06:36'),
	(14, 'L\'Admin peut créer', '500', 6, 1, '2018-10-04 20:06:49', '2018-10-04 20:07:11');
/*!40000 ALTER TABLE `cardsubcategories` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. deposits
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `usd_amo` varchar(255) DEFAULT NULL,
  `btc_amo` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `trx` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `try` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Listage des données de la table dev_kignoncard_bdd.deposits : ~0 rows (environ)
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` (`id`, `user_id`, `gateway_id`, `amount`, `charge`, `usd_amo`, `btc_amo`, `btc_wallet`, `trx`, `status`, `try`, `created_at`, `updated_at`) VALUES
	(1, 1, 101, '50', '0', '0.63', '0', '', '1R3djgzsBSPowsz9', 0, 0, '2021-06-25 05:52:03', '2021-06-25 05:52:03'),
	(2, 2, 103, '100', '6', '106', '0', '', 'IwwTdmWjaC8ajkho', 0, 0, '2021-06-29 10:54:57', '2021-06-29 10:54:57'),
	(3, 2, 504, '100', '3.0300000000000002', '103.03', '0', '', 'KlvN7n6Ry2Ps2eQm', 0, 0, '2021-06-29 10:55:54', '2021-06-29 10:55:54'),
	(4, 2, 101, '100', '0', '1.25', '0', '', 'sAd8kc4X7cEx1iu8', 0, 0, '2021-06-29 10:59:00', '2021-06-29 10:59:00'),
	(5, 2, 102, '100', '3', '1.36', '0', '', 'KsA58EuTFJ0eD7xf', 0, 0, '2021-06-29 10:59:35', '2021-06-29 10:59:35'),
	(6, 2, 104, '100', '6', '106', '0', '', 'azMDQYpg2YM3vS9P', 0, 0, '2021-06-29 10:59:52', '2021-06-29 10:59:52'),
	(7, 2, 504, '100', '3.0300000000000002', '103.03', '0', '', 'HW8wJYTkivlgyh8P', 0, 0, '2021-06-29 11:00:33', '2021-06-29 11:00:33'),
	(8, 2, 505, '100', '3.0300000000000002', '103.03', '0', '', 'iihaiBGrCyY1eg5a', 0, 0, '2021-06-29 11:00:42', '2021-06-29 11:00:42'),
	(9, 2, 103, '20', '3.6', '23.6', '0', '', 'sJn567y3Dlb7vhB0', 0, 0, '2021-06-29 11:01:14', '2021-06-29 11:01:14');
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. faqdetails
CREATE TABLE IF NOT EXISTS `faqdetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortdes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.faqdetails : ~6 rows (environ)
/*!40000 ALTER TABLE `faqdetails` DISABLE KEYS */;
INSERT INTO `faqdetails` (`id`, `title`, `sortdes`, `created_at`, `updated_at`) VALUES
	(1, 'Frequesntly Asked Question 01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:38:36'),
	(2, 'Frequesntly Asked Question 02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:38:42'),
	(3, 'Frequesntly Asked Question 03', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:39:01'),
	(4, 'Frequesntly Asked Question 04', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:39:07'),
	(5, 'Frequesntly Asked Question 05', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:39:13'),
	(6, 'Frequesntly Asked Question 06', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '2018-10-04 19:39:19');
/*!40000 ALTER TABLE `faqdetails` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. gateways
CREATE TABLE IF NOT EXISTS `gateways` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.gateways : ~16 rows (environ)
/*!40000 ALTER TABLE `gateways` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. generals
CREATE TABLE IF NOT EXISTS `generals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Website',
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sub Title',
  `website_email_address` text COLLATE utf8mb4_unicode_ci,
  `website_number` text COLLATE utf8mb4_unicode_ci,
  `website_address` text COLLATE utf8mb4_unicode_ci,
  `cur` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `cursym` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `reg` int(11) NOT NULL DEFAULT '1',
  `emailver` int(11) NOT NULL DEFAULT '1',
  `smsver` int(11) NOT NULL DEFAULT '1',
  `decimal` int(11) NOT NULL DEFAULT '2',
  `emailnotf` int(11) NOT NULL DEFAULT '1',
  `smsnotf` int(11) NOT NULL DEFAULT '1',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` text COLLATE utf8mb4_unicode_ci,
  `smsapi` text COLLATE utf8mb4_unicode_ci,
  `practise_header_title` text COLLATE utf8mb4_unicode_ci,
  `practise_header_des` text COLLATE utf8mb4_unicode_ci,
  `welcome_details_des` text COLLATE utf8mb4_unicode_ci,
  `welcome_details_youtube` text COLLATE utf8mb4_unicode_ci,
  `welcome_details_title` text COLLATE utf8mb4_unicode_ci,
  `attorney_header_title` text COLLATE utf8mb4_unicode_ci,
  `attorney_header_des` text COLLATE utf8mb4_unicode_ci,
  `faq_title` text COLLATE utf8mb4_unicode_ci,
  `faq_des` text COLLATE utf8mb4_unicode_ci,
  `about_heading` text COLLATE utf8mb4_unicode_ci,
  `about_details` longtext COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci,
  `subs_title` text COLLATE utf8mb4_unicode_ci,
  `subs_des` text COLLATE utf8mb4_unicode_ci,
  `static_head` text COLLATE utf8mb4_unicode_ci,
  `static_des` text COLLATE utf8mb4_unicode_ci,
  `welcome_header_title` text COLLATE utf8mb4_unicode_ci,
  `welcome_header_des` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.generals : ~0 rows (environ)
/*!40000 ALTER TABLE `generals` DISABLE KEYS */;
INSERT INTO `generals` (`id`, `title`, `subtitle`, `website_email_address`, `website_number`, `website_address`, `cur`, `cursym`, `reg`, `emailver`, `smsver`, `decimal`, `emailnotf`, `smsnotf`, `email`, `template`, `smsapi`, `practise_header_title`, `practise_header_des`, `welcome_details_des`, `welcome_details_youtube`, `welcome_details_title`, `attorney_header_title`, `attorney_header_des`, `faq_title`, `faq_des`, `about_heading`, `about_details`, `footer`, `subs_title`, `subs_des`, `static_head`, `static_des`, `welcome_header_title`, `welcome_header_des`, `created_at`, `updated_at`) VALUES
	(1, 'Barbershopcard', 'Virtual Card Selling Platform', 'do-not-reply@thesoftking.com', '0 123 456 7890', 'Dhaka , Bangladesh', 'FCFA', 'XOF', 1, 1, 1, 2, 0, 0, 'do-not-reply@thesoftking.com', '<p>&nbsp;</p>\r\n<div class="wrapper" style="background-color: #f2f2f2;">\r\n<table style="border-collapse: collapse; table-layout: fixed; color: #b8b8b8; font-family: Ubuntu,sans-serif;" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="preheader__snippet" style="padding: 10px 0 5px 0; vertical-align: top; width: 280px;">&nbsp;</td>\r\n<td class="preheader__webversion" style="text-align: right; padding: 10px 0 5px 0; vertical-align: top; width: 280px;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id="emb-email-header-container" class="header" style="border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;" align="center">\r\n<tbody>\r\n<tr>\r\n<td style="padding: 0; width: 600px;">\r\n<div class="header__logo emb-logo-margin-box" style="font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;">\r\n<div id="emb-email-header" class="logo-left" style="font-size: 0px !important; line-height: 0 !important;" align="left"><img style="height: auto; width: 100%; border: 0; max-width: 312px;" src="http://i.imgur.com/nNCNPZT.png" alt="" width="312" height="44"></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="layout layout--no-gutter" style="border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="column" style="padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;">\r\n<div style="margin-left: 20px; margin-right: 20px; margin-top: 24px;">\r\n<div style="line-height: 10px; font-size: 1px;">&nbsp;</div>\r\n</div>\r\n<div style="margin-left: 20px; margin-right: 20px;">\r\n<h2>Hi {{name}},</h2>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style="margin-left: 20px; margin-right: 20px;"><br></div>\r\n<div style="margin-left: 20px; margin-right: 20px; margin-bottom: 24px;">\r\n<p class="size-14" style="margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;">Thanks,<br> <strong>CardMate Team<br></strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=cardmate&SMSText={{message}}&GSM={{number}}&type=longSMS', 'Our Features', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum', 'https://www.youtube.com/watch?v=rR1Z74qOwhA', 'Learn More About Us!!', 'Caregories we Covered', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 'Frequesntly Asked Questions', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum', 'A propos de nous', '<div align="center"><font size="6"><b>A propos de nous</b></font><br></div><div align="left"><br></div><div align="left">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur sequi, blanditiis distinctio quae iste, aspernatur explicabo similique deserunt obcaecati, magnam ex. Iste eius itaque ratione enim, ut autem aliquam totam numquam minus atque at odio, corrupti a laudantium dolores accusamus cum saepe veritatis! Ullam iure temporibus recusandae, quis nobis cum excepturi. Placeat reprehenderit in consequatur odio debitis possimus laudantium, dolor eum distinctio aperiam commodi ab pariatur iure deserunt recusandae. Unde quae alias, iusto voluptatum error perspiciatis hic, dolorum architecto id voluptatibus, nesciunt! Quibusdam repudiandae libero placeat ratione assumenda magnam illo nam dolorum quam minima exercitationem aspernatur voluptatem ad quia suscipit fugit, accusantium itaque deleniti tempora omnis distinctio beatae eligendi est corrupti ipsum. Cumque tempore sunt, itaque nesciunt cupiditate veritatis architecto at repellat eius ex praesentium magnam repudiandae a, blanditiis repellendus ipsam vero expedita exercitationem sapiente quas quam quos dolorum quisquam! <br></div><div><br></div><div align="center">Sit voluptas fuga temporibus, sapiente, iure laboriosam dolore quod ab provident, corrupti magni odio dolor sed quisquam optio. Assumenda iusto dignissimos odit soluta laboriosam officia ut incidunt at unde nisi, corrupti odio. Autem distinctio dolore quas! Sit quibusdam, tempora veniam nesciunt beatae repellendus, eos optio. Omnis ex provident veritatis a et temporibus, similique magni ad nesciunt harum delectus nihil natus, animi eaque commodi asperiores eos tempore fugiat voluptate non maiores libero quas in ratione iste? Quibusdam assumenda perferendis voluptate dolore alias earum corporis, facilis ab nihil nulla! Voluptas dignissimos vel repellendus laudantium possimus accusantium doloribus quod amet, soluta incidunt ut cum adipisci sit similique veniam numquam reprehenderit, optio nisi corporis explicabo rerum consequatur minima labore nobis maiores.</div><div><br></div><div align="right"> Ullam odio officiis culpa eligendi itaque officia iure labore veniam corporis, delectus hic tenetur dolorem repellendus provident neque repudiandae suscipit quas. Numquam doloremque autem, libero saepe iusto ipsum sed nulla omnis. Soluta optio dolor fugit voluptas quos quibusdam distinctio vero saepe dolore tempora, dolorum sit molestias quas itaque vitae tenetur voluptatibus, nulla pariatur quasi deleniti, impedit consectetur odio ex debitis laborum. Dolores porro, ipsum dolorum placeat voluptatem architecto quas vitae aliquam reiciendis, est adipisci inventore quis, velit aut ad quasi ut quaerat blanditiis accusamus cLorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur sequi, blanditiis distinctio quae iste, aspernatur explicabo similique deserunt obcaecati, magnam ex. Iste eius itaque ratione enim, ut autem aliquam totam numquam minus atque at odio, corrupti a laudantium dolores accusamus cum saepe veritatis! Ullam iure temporibus recusandae, quis nobis cum excepturi. Placeat reprehenderit in consequatur odio debitis possimus laudantium, dolor eum distinctio aperiam commodi ab pariatur iure deserunt recusandae. Unde quae alias, iusto voluptatum error perspiciatis hic, dolorum architecto id voluptatibus, nesciunt! Quibusdam repudiandae libero placeat ratione assumenda magnam illo nam dolorum quam minima exercitationem aspernatur <br></div><div><b><br></b></div><div align="justify"><b>voluptatem ad quia suscipit fugit, accusantium itaque deleniti tempora omnis distinctio beatae eligendi est corrupti ipsum. Cumque tempore sunt, itaque nesciunt cupiditate veritatis architecto at repellat eius ex praesentium magnam repudiandae a, blanditiis repellendus ipsam vero expedita exercitationem sapiente quas quam quos dolorum quisquam! Sit voluptas fuga temporibus, sapiente, iure laboriosam dolore quod ab provident, corrupti magni odio dolor sed quisquam optio. Assumenda iusto dignissimos odit soluta laboriosam officia ut incidunt at unde nisi, corrupti odio. Autem distinctio dolore quas! Sit quibusdam, tempora veniam nesciunt beatae repellendus, eos optio. Omnis ex provident veritatis a et temporibus, similique magni ad nesciunt harum delectus nihil natus, animi eaque commodi asperiores eos tempore fugiat voluptate non maiores libero quas in ratione iste? Quibusdam assumenda perferendis voluptate dolore alias earum corporis, facilis ab nihil nulla! Voluptas dignissimos vel repellendus laudantium possimus accusantium doloribus quod amet, soluta incidunt ut cum adipisci sit similique veniam numquam reprehenderit, optio nisi corporis explicabo rerum consequatur minima labore nobis maiores. Ullam odio officiis culpa eligendi itaque officia iure labore veniam corporis, delectus hic tenetur dolorem repellendus provident neque repudiandae suscipit quas. Numquam doloremque autem, libero saepe iusto ipsum sed nulla omnis. Soluta optio dolor fugit voluptas quos quibusdam distinctio vero saepe dolore tempora, dolorum sit molestias quas itaque vitae tenetur voluptatibus, nulla paria</b><br></div><br>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet ipsum amet odit distinctio autem dicta hic, voluptatum.', 'Subscribe Us', 'The intended use of __sleep() is to commit pending data or perform similar cleanup tasks. Also, the function is useful if you have very large objects which do not need to be saved completely.', 'It is a long established', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'Purchase Card is Very Easy With CardMate', 'CardMate Is a Platform Where Admin Can Sell All kind of card. Virtual Card , Prepaid Card Even Mobile recharge card.', NULL, '2021-06-28 13:51:05');
/*!40000 ALTER TABLE `generals` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. practisedetails
CREATE TABLE IF NOT EXISTS `practisedetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.practisedetails : ~4 rows (environ)
/*!40000 ALTER TABLE `practisedetails` DISABLE KEYS */;
INSERT INTO `practisedetails` (`id`, `title`, `des`, `icon`, `created_at`, `updated_at`) VALUES
	(1, 'Master Card', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'credit-card', NULL, '2018-10-07 04:26:48'),
	(2, 'Visa Card', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit beatae eos commodi ipsa eum unde similique facilis, totam maiores nisi.', 'credit-card', NULL, '2018-10-04 19:28:07'),
	(3, 'Mobile Recharge Card', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit beatae eos commodi ipsa eum unde similique facilis, totam maiores nisi.', 'credit-card', NULL, '2018-10-04 19:28:12'),
	(4, 'Play Store Card', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit beatae eos commodi ipsa eum unde similique facilis,', 'credit-card', NULL, '2018-10-07 04:26:33');
/*!40000 ALTER TABLE `practisedetails` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. socials
CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.socials : ~4 rows (environ)
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` (`id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
	(2, 'facebook', 'https://www.facebook.com/pgu', '2018-05-27 05:41:27', '2018-05-27 05:45:35'),
	(3, 'twitter', 'https://www.facebook.com/pguk', '2018-05-27 05:41:57', '2018-05-27 05:41:57'),
	(7, 'instagram', 'https://www.facebook.com/pgu', '2018-06-20 01:41:23', '2018-06-20 01:41:23'),
	(8, 'linkedin', '#', '2018-10-07 05:26:06', '2018-10-07 05:26:26');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. staticcontents
CREATE TABLE IF NOT EXISTS `staticcontents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `icon` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.staticcontents : ~3 rows (environ)
/*!40000 ALTER TABLE `staticcontents` DISABLE KEYS */;
INSERT INTO `staticcontents` (`id`, `title`, `amount`, `icon`, `created_at`, `updated_at`) VALUES
	(1, 'Card Categories', 6, NULL, NULL, '2018-10-09 12:26:48'),
	(2, 'Ariations of passages', 25443, NULL, NULL, '2018-10-03 03:28:28'),
	(3, 'Card Sold', 3590, NULL, NULL, '2018-10-09 12:27:05');
/*!40000 ALTER TABLE `staticcontents` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. sucscribes
CREATE TABLE IF NOT EXISTS `sucscribes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.sucscribes : ~0 rows (environ)
/*!40000 ALTER TABLE `sucscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucscribes` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trxid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.transactions : ~0 rows (environ)
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

-- Listage de la structure de la table dev_kignoncard_bdd. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailv` int(11) NOT NULL,
  `smsv` int(11) NOT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `vsent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vercode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dev_kignoncard_bdd.users : ~1 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `country`, `city`, `mobile`, `emailv`, `smsv`, `balance`, `status`, `vsent`, `vercode`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'As', 'gm@asnumeric.com', 'asnumeric', '$2y$10$3s59XkuRj26gr9cG.hH4peM3zsCZff54vPnCso2PWZB7JYobXkuEi', 'Côte d’Ivoire', 'Abidjan', '2250140003279', 1, 1, '0', 1, NULL, NULL, 'EFR6JrkEveghxivDhzEWfAnQjpN0Zg0tj065HKQGgB9UM1vgvgPOAXqmuQlR', '2021-06-25 05:50:49', '2021-06-25 05:50:49'),
	(2, 'Test', 'test@asnumeric.com', 'Test', '$2y$10$lKNjcV6.F2xLVkIq3St5T.gqxfgnbMPHwQpjVu2MjLBZeJre60hsi', 'Côte d\'ivoire', 'Bingerville', '0777242051', 1, 1, '0', 1, NULL, NULL, 'DqUuSva6i0tEh0IPLUdTqlHazumvsM6PCBmT558MnvAZZ7jHPMyYDh8wCGVx', '2021-06-29 08:35:48', '2021-06-29 08:35:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
