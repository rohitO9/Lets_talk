-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2024 at 01:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astroremoved_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpages`
--

CREATE TABLE `adminpages` (
  `id` int(11) NOT NULL,
  `pageName` varchar(45) DEFAULT NULL,
  `pageGroup` int(11) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `route` varchar(45) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminpages`
--

INSERT INTO `adminpages` (`id`, `pageName`, `pageGroup`, `icon`, `route`, `displayOrder`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', NULL, 'columns', 'dashboard', 1, NULL, NULL),
(2, 'Customers', NULL, 'users', 'customers', 2, NULL, NULL),
(3, 'Astrologers', NULL, 'target', NULL, 3, NULL, '2023-12-26 15:26:16'),
(4, 'Astroshop', NULL, 'shopping-bag', NULL, 4, NULL, NULL),
(5, 'Product Categories', 4, 'folder', 'productCategories', NULL, NULL, NULL),
(6, 'Products', 4, 'package-search', 'products', NULL, NULL, NULL),
(7, 'Orders', 4, 'indian-rupee', 'orders', NULL, NULL, NULL),
(8, 'Horoscope', NULL, 'star', NULL, 5, NULL, NULL),
(9, 'Daily HoroScope', 8, 'loader', 'dailyHoroscope', NULL, NULL, NULL),
(11, 'Weekly HoroScope', 8, 'loader', 'horoscope', NULL, NULL, NULL),
(12, 'Yearly HoroScope', 8, 'calendar', 'yearlyhoroscope', NULL, NULL, NULL),
(13, 'Blogs', NULL, 'pencil', 'blogs', 6, NULL, NULL),
(14, 'News', NULL, 'rss', 'astroguruNews', 7, NULL, NULL),
(15, 'Videos', NULL, 'youtube', 'adsVideos', 8, NULL, NULL),
(16, 'Tickets', 52, 'ticket', 'tickets', NULL, NULL, NULL),
(17, 'Earning', NULL, 'indian-rupee', NULL, 12, NULL, NULL),
(19, 'Withdrawal Requests', 17, 'check', 'withdrawalRequests', NULL, NULL, NULL),
(20, 'Reports', NULL, 'file', NULL, 13, NULL, NULL),
(21, 'Call History', 20, 'phone', 'callHistory', NULL, NULL, NULL),
(22, 'Chat History', 20, 'send', 'chatHistory', NULL, NULL, NULL),
(23, 'PartnerWise Earning', 20, 'indian-rupee', 'partnerWiseEarning', NULL, NULL, NULL),
(24, 'Order Request', 20, 'shopping-cart', 'orderrequest', NULL, NULL, NULL),
(25, 'Report Request', 20, 'files', 'reportrequest', NULL, NULL, NULL),
(27, 'Block Astrologer', 3, 'x', 'blockAstrologer', NULL, NULL, NULL),
(28, 'Master Settings', NULL, 'wrench', NULL, 14, NULL, NULL),
(31, 'Customer Profile', 28, 'user', 'customerProfile', NULL, NULL, NULL),
(33, 'HoroScope Signs', 28, 'wand', 'horoscopeSigns', NULL, NULL, NULL),
(34, 'Report Type', 28, 'files', 'reportTypes', NULL, NULL, NULL),
(35, 'Banner Management', NULL, 'image', 'banners', 9, NULL, NULL),
(36, 'Notifications', NULL, 'bell-ring', 'notifications', 10, NULL, NULL),
(37, 'FAQs', 52, 'list', 'helpSupport', NULL, NULL, NULL),
(38, 'Recharge Amount', 28, 'indian-rupee', 'rechargeAmount', NULL, NULL, NULL),
(39, 'General Settings', NULL, 'settings', 'setting', 16, NULL, NULL),
(40, 'Feedback', NULL, 'smile', 'feedback', 17, NULL, NULL),
(41, 'Team Management', NULL, 'user', NULL, 15, NULL, NULL),
(42, 'Team Role', 41, 'equal', 'teamRole', NULL, NULL, NULL),
(43, 'Team List', 41, 'users', 'team-list', NULL, NULL, NULL),
(44, 'Manage astrologers', 3, 'folder', 'astrologers', NULL, '2023-12-26 15:26:16', '2023-12-26 15:26:16'),
(45, 'Pending Requests', 3, 'circle', 'pending-requests', NULL, '2023-12-26 15:26:16', '2023-12-26 15:26:16'),
(46, 'Reviews', 3, 'star', 'astrologerReview', NULL, '2023-12-26 15:26:16', '2023-12-26 15:26:16'),
(47, 'Gifts', 3, 'gift', 'gifts', NULL, '2023-12-26 15:26:16', '2023-12-26 15:26:16'),
(48, 'Skills', 3, 'pocket', 'skills', NULL, '2023-12-26 15:26:16', '2023-12-26 15:26:16'),
(49, 'Categories', 3, 'folder', 'astrologerCategories', NULL, '2023-12-26 15:26:16', '2023-12-26 15:26:16'),
(50, 'Commissionn rate for calls/ chats', 3, 'indian-rupee', 'commissions', NULL, '2023-12-26 15:26:16', '2023-12-26 15:26:16'),
(51, 'Horoscope Feedback', 8, 'smile', 'horoscopeFeedback', NULL, NULL, NULL),
(52, 'Support Management', NULL, 'bot', NULL, 11, NULL, NULL),
(53, 'Withdrawal Methods', 17, 'activity', 'withdrawalMethods', NULL, NULL, NULL),
(54, 'Kundali Earnings', 20, 'files', 'kundaliearning', NULL, NULL, NULL),
(55, 'Page Management', NULL, 'book-open', 'pages', 18, NULL, NULL),
(56, 'Wallet History', 17, 'history', 'walletHistory', NULL, NULL, NULL),
(60, 'Stories', NULL, 'play-circle', 'story-list', 9, NULL, NULL),
(61, 'Contact Form', NULL, 'contact', 'contactlist', 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_get_commissions`
--

CREATE TABLE `admin_get_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commissionTypeId` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `commissionId` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_reviews`
--

CREATE TABLE `app_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `review` longtext NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `appId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assistantchat`
--

CREATE TABLE `assistantchat` (
  `id` int(11) NOT NULL,
  `senderId` int(11) NOT NULL,
  `receiverId` int(11) NOT NULL,
  `chatId` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `astrologerId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrohost`
--

CREATE TABLE `astrohost` (
  `id` int(11) NOT NULL,
  `astrologerId` bigint(20) UNSIGNED DEFAULT NULL,
  `hostId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologers`
--

CREATE TABLE `astrologers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactNo` varchar(15) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthDate` datetime NOT NULL,
  `primarySkill` varchar(255) NOT NULL,
  `allSkill` varchar(255) NOT NULL,
  `languageKnown` varchar(255) NOT NULL,
  `profileImage` varchar(255) DEFAULT NULL,
  `charge` int(11) NOT NULL,
  `experienceInYears` int(11) NOT NULL,
  `dailyContribution` int(11) NOT NULL,
  `hearAboutAstroguru` longtext DEFAULT NULL,
  `isWorkingOnAnotherPlatform` tinyint(1) DEFAULT NULL,
  `whyOnBoard` varchar(255) NOT NULL,
  `interviewSuitableTime` text NOT NULL,
  `currentCity` varchar(255) DEFAULT NULL,
  `mainSourceOfBusiness` varchar(255) NOT NULL,
  `highestQualification` varchar(255) NOT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `learnAstrology` varchar(100) DEFAULT NULL,
  `astrologerCategoryId` varchar(100) NOT NULL,
  `instaProfileLink` varchar(255) DEFAULT NULL,
  `facebookProfileLink` varchar(255) DEFAULT NULL,
  `linkedInProfileLink` varchar(255) DEFAULT NULL,
  `youtubeChannelLink` varchar(255) DEFAULT NULL,
  `websiteProfileLink` varchar(255) DEFAULT NULL,
  `isAnyBodyRefer` tinyint(1) DEFAULT NULL,
  `minimumEarning` int(11) NOT NULL,
  `maximumEarning` int(11) NOT NULL,
  `loginBio` longtext DEFAULT NULL,
  `NoofforeignCountriesTravel` varchar(255) NOT NULL,
  `currentlyworkingfulltimejob` varchar(255) NOT NULL,
  `goodQuality` varchar(255) NOT NULL,
  `biggestChallenge` varchar(255) DEFAULT NULL,
  `whatwillDo` longtext NOT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT 0,
  `totalOrder` int(11) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `nameofplateform` varchar(400) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `monthlyEarning` varchar(200) DEFAULT NULL,
  `referedPerson` varchar(400) DEFAULT NULL,
  `chatStatus` varchar(400) DEFAULT NULL,
  `chatWaitTime` varchar(200) DEFAULT NULL,
  `callStatus` varchar(200) DEFAULT NULL,
  `callWaitTime` varchar(45) DEFAULT NULL,
  `videoCallRate` int(11) DEFAULT NULL,
  `reportRate` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_assistants`
--

CREATE TABLE `astrologer_assistants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactNo` varchar(20) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` datetime NOT NULL,
  `primarySkill` varchar(100) NOT NULL,
  `allSkill` varchar(100) NOT NULL,
  `languageKnown` varchar(255) NOT NULL,
  `experienceInYears` int(11) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_assistant_permissions`
--

CREATE TABLE `astrologer_assistant_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permissionId` bigint(20) UNSIGNED NOT NULL,
  `astrologerAssistantId` bigint(20) UNSIGNED NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_availabilities`
--

CREATE TABLE `astrologer_availabilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `fromTime` varchar(255) DEFAULT NULL,
  `toTime` varchar(255) DEFAULT NULL,
  `day` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_categories`
--

CREATE TABLE `astrologer_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `astrologer_categories`
--

INSERT INTO `astrologer_categories` (`id`, `name`, `image`, `displayOrder`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(1, 'Love & Relationship', 'public/storage/images/love.png', NULL, 1, 0, '2022-10-18 23:51:05', '2023-04-04 12:46:15', 5, 5),
(2, 'Career & Job', 'public/storage/images/career-advancement.png', NULL, 1, 0, '2022-10-18 23:56:28', '2023-04-04 12:45:35', 5, 5),
(6, 'Finance & Business', 'public/storage/images/rupee.png', NULL, 1, 0, '2022-11-09 07:15:02', '2023-04-04 12:43:52', 5, 5),
(10, 'Education', 'public/storage/images/mortarboard.png', NULL, 1, 0, '2022-11-16 00:53:40', '2023-04-04 12:41:50', 5, 5),
(12, 'Kids', 'public/storage/images/boy.png', NULL, 1, 0, '2022-11-16 00:54:37', '2023-04-04 12:40:33', 5, 5),
(40, 'Maritial Life', 'public/storage/images/wedding-ring.png', NULL, 1, 0, '2023-04-24 13:25:35', '2024-02-29 11:35:16', 5, 5),
(41, 'New category', 'public/storage/images/astrologerCategory_411711094903.png', NULL, 0, 0, '2024-03-22 13:38:23', '2024-03-22 13:38:56', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_expertises`
--

CREATE TABLE `astrologer_expertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `astrologerAssistantId` bigint(20) UNSIGNED NOT NULL,
  `skillId` bigint(20) UNSIGNED NOT NULL,
  `isPrimary` tinyint(1) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_followers`
--

CREATE TABLE `astrologer_followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_gifts`
--

CREATE TABLE `astrologer_gifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `giftId` bigint(20) UNSIGNED NOT NULL,
  `giftAmount` decimal(10,2) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_product`
--

CREATE TABLE `astrologer_product` (
  `id` int(11) NOT NULL,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `productPrice` decimal(10,2) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 1,
  `isDelete` tinyint(4) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_stories`
--

CREATE TABLE `astrologer_stories` (
  `id` int(11) NOT NULL,
  `astrologerId` int(11) DEFAULT NULL,
  `mediaType` text DEFAULT NULL,
  `media` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrologer_wait_lists`
--

CREATE TABLE `astrologer_wait_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `waitingTime` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `astrology_videos`
--

CREATE TABLE `astrology_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `youtubeLink` varchar(255) NOT NULL,
  `coverImage` varchar(255) NOT NULL,
  `videoTitle` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `astrology_videos`
--

INSERT INTO `astrology_videos` (`id`, `youtubeLink`, `coverImage`, `videoTitle`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(11, 'https://www.youtube.com/watch?v=wjxllfY-GgE', 'public/storage/images/coverImage_1117090536581709053658.png', 'Ram Siya Ram', 1, 0, '2023-04-24 12:54:25', '2024-02-27 22:37:38', 5, 5),
(12, 'https://www.youtube.com/watch?v=3ydzmLgizSU', 'public/storage/images/coverImage_121706548981.png', 'Horoscope Today | January 23, 2024', 1, 0, '2024-01-29 22:53:01', '2024-01-29 22:53:01', 5, 5),
(13, '#', 'public/storage/images/coverImage_131709053628.png', 'Exclusive Video of Daily Horoscope', 1, 0, '2024-02-27 22:37:08', '2024-02-27 22:37:08', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `astromall_products`
--

CREATE TABLE `astromall_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `features` text NOT NULL,
  `productImage` varchar(255) NOT NULL,
  `productCategoryId` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `astromall_products`
--

INSERT INTO `astromall_products` (`id`, `name`, `features`, `productImage`, `productCategoryId`, `amount`, `description`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(26, 'Rudraksha Mala (108+1 Beads, Bead Size: 12 mm each)', 'Natural, Energized & Auspicious Rudraksha Mala (108+1 Beads, Bead Size: 12 mm each) - Tested & Certified Rudraksha', 'public/storage/images/astromallProduct_261709056030.png', 32, 500, NULL, 1, 0, '2024-02-27 23:17:10', '2024-02-27 23:17:10', 1, 1),
(27, 'Gold Art India Gold Art India', 'Lord Ganesha for Gift Ganesha for car Dashboard Ganesha Showpiece Diwali Gifts Birthday Gifts Decorative Showpiece - 7.6 cm  (Polyresin, Gold, Multicolor)', 'public/storage/images/astromallProduct_271709056132.png', 33, 750, NULL, 1, 0, '2024-02-27 23:18:52', '2024-02-27 23:18:52', 1, 1),
(28, 'Green Cut Natural Emerald Beryl Gemstone', 'barmunda gems Green Cut Natural Emerald Beryl Gemstone  (11.5 carat)', 'public/storage/images/astromallProduct_281709056206.png', 6, 4500, NULL, 1, 0, '2024-02-27 23:20:06', '2024-03-26 00:26:24', 1, 1),
(29, '5 Mukhi Rudraksha White Crystal Bracelet', 'The five Mukhi Rudraksha brings positive energy to the wearer. This Rudraksha improves the respiratory system in human beings, brings good luck and has a calm effect on the mind. It is also very much known for curing memory loss when there are memory lapses. The white crystal is considered a “master healer.”', 'public/storage/images/astromallProduct_291713351741.png', 32, 1200, NULL, 1, 0, '2024-04-17 11:02:21', '2024-04-17 11:02:21', 1, 1),
(30, 'Rudraksha Mala (108+1 Beads, Bead Size: 12 mm each)', 'Natural, Energized & Auspicious Rudraksha Mala (108+1 Beads, Bead Size: 12 mm each) - Tested & Certified Rudraksha', 'public/storage/images/astromallProduct_261709056030.png', 32, 500, NULL, 1, 0, '2024-02-27 23:17:10', '2024-02-27 23:17:10', 1, 1),
(31, 'Gold Art India Gold Art India', 'Lord Ganesha for Gift Ganesha for car Dashboard Ganesha Showpiece Diwali Gifts Birthday Gifts Decorative Showpiece - 7.6 cm  (Polyresin, Gold, Multicolor)', 'public/storage/images/astromallProduct_271709056132.png', 33, 750, NULL, 1, 0, '2024-02-27 23:18:52', '2024-02-27 23:18:52', 1, 1),
(32, '5 Mukhi Rudraksha White Crystal Bracelet', 'The five Mukhi Rudraksha brings positive energy to the wearer. This Rudraksha improves the respiratory system in human beings, brings good luck and has a calm effect on the mind. It is also very much known for curing memory loss when there are memory lapses. The white crystal is considered a “master healer.”', 'public/storage/images/astromallProduct_291713351741.png', 32, 1200, NULL, 1, 0, '2024-04-17 11:02:21', '2024-04-17 11:02:21', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `astrotalk_in_news`
--

CREATE TABLE `astrotalk_in_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `newsDate` datetime NOT NULL,
  `channel` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `bannerImage` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `astrotalk_in_news`
--

INSERT INTO `astrotalk_in_news` (`id`, `newsDate`, `channel`, `link`, `bannerImage`, `description`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(2, '2024-01-29 00:00:00', 'NDTV', 'https://www.ndtv.com/', 'public/storage/images/bannerImage_217090539591709053959.png', 'Astroway has served over 2 crore customers in the last 4 years and does business of INR 41 lacs daily.', 1, 0, '2022-10-31 04:11:21', '2024-02-27 22:42:39', 5, 5),
(7, '2024-01-29 00:00:00', 'IndiaTV', 'https://www.abplive.com/', 'public/storage/images/bannerImage_71706549325.png', 'IndiaTV covers the story of astroway', 1, 0, '2024-01-29 22:58:45', '2024-01-29 23:00:03', 5, 5),
(10, '2024-02-29 00:00:00', 'Apna TV', 'https://www.ndtv.com/', 'public/storage/images/bannerImage_101709050563.png', 'Dummy News Dummy NewsDummy NewsDummy NewsDummy NewsDummy News Dummy News', 1, 0, '2024-02-27 21:46:03', '2024-02-29 11:51:33', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bannerImage` varchar(255) DEFAULT NULL,
  `fromDate` datetime NOT NULL,
  `toDate` datetime NOT NULL,
  `bannerTypeId` bigint(20) UNSIGNED NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `bannerImage`, `fromDate`, `toDate`, `bannerTypeId`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(14, 'public/storage/images/banner_141709053704.png', '2023-02-20 00:00:00', '2030-10-16 00:00:00', 2, 0, 0, '2023-02-27 03:03:09', '2024-03-22 06:53:32', 5, 5),
(15, 'public/storage/images/banner_151709053791.png', '2023-02-20 00:00:00', '2033-10-12 00:00:00', 2, 0, 0, '2023-02-27 03:03:26', '2024-03-22 06:53:05', 5, 5),
(16, 'public/storage/images/banner_161709050180.png', '2023-03-28 00:00:00', '2028-07-12 00:00:00', 1, 0, 0, '2023-03-29 08:54:45', '2024-03-15 23:41:11', 5, 5),
(17, 'public/storage/images/banner_171711948746.png', '2023-04-10 00:00:00', '2028-11-23 00:00:00', 2, 1, 0, '2023-04-18 11:25:49', '2024-04-01 05:19:06', 5, 5),
(18, 'public/storage/images/banner_181706549773.png', '2023-04-23 00:00:00', '2028-11-23 00:00:00', 1, 1, 0, '2023-04-24 13:29:34', '2024-03-22 13:44:05', 5, 5),
(19, 'public/storage/images/banner_191709050155.png', '2023-07-15 00:00:00', '2028-11-29 00:00:00', 2, 1, 0, '2023-07-15 17:13:19', '2024-03-22 13:44:13', 5, 5),
(23, 'public/storage/images/banner_231715679713.png', '2024-02-28 00:00:00', '2029-01-02 00:00:00', 1, 1, 0, '2024-02-29 10:44:24', '2024-05-14 09:43:13', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_types`
--

CREATE TABLE `banner_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `appId` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_types`
--

INSERT INTO `banner_types` (`id`, `name`, `appId`, `isActive`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'Astrologer', 1, 1, 0, '2022-10-19 11:34:19', '2022-10-19 11:34:19'),
(2, 'Astroshop', 1, 1, 0, '2022-11-08 04:27:58', '2022-11-08 04:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `blockassistant`
--

CREATE TABLE `blockassistant` (
  `id` int(11) NOT NULL,
  `assistantId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blockastrologer`
--

CREATE TABLE `blockastrologer` (
  `id` int(11) NOT NULL,
  `astrologerId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `reason` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blockuserreview`
--

CREATE TABLE `blockuserreview` (
  `id` int(11) NOT NULL,
  `reviewId` int(11) NOT NULL,
  `isBlocked` tinyint(4) DEFAULT NULL,
  `isReported` tinyint(4) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `blogImage` varchar(200) NOT NULL,
  `blogCategoryId` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext NOT NULL,
  `viewer` bigint(20) DEFAULT NULL,
  `author` varchar(100) NOT NULL,
  `postedOn` datetime DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `extension` varchar(45) DEFAULT NULL,
  `previewImage` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `blogImage`, `blogCategoryId`, `description`, `viewer`, `author`, `postedOn`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`, `extension`, `previewImage`) VALUES
(50, 'How to generate your free kundli in mins', 'public/storage/images/blog_501709053392.png', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 42, 'Admin', '2024-01-28 00:00:00', 1, 0, '2024-01-29 23:19:11', '2024-03-25 21:51:59', 5, 5, 'png', 'public/storage/images/blogpreview_501706550551.png'),
(51, 'How to develop app like astroway', 'public/storage/images/blog_511709053490.jpg', NULL, '<p>Astrology apps have seen a significant surge in popularity in recent years. People turn to astrology for guidance in their daily lives, to understand more about themselves and others, seek comfort in decisions, and to connect with the cosmos. An astrology app that includes features such as live streaming with astrologers, daily horoscope updates, kundli generation, and match making, can provide users with a comprehensive and engaging experience. Creating such an app can be a lucrative endeavor, but it requires careful planning and execution. In this blog, we will detail the development process, including time and cost estimation. Additionally, we will introduce you to Diploy&rsquo;s ready-made solution &lsquo;AstroWay&rsquo;, which can significantly reduce the time and cost of launching an online astrology consultation app.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Development Process</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Developing an astrology app involves several key stages:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<ol>\r\n		<li><strong>Market Research</strong>: Understand your potential users, their needs, and the features they would appreciate most in an astrology app. Analyze competitors and identify potential differentiators for your app.</li>\r\n		<li><strong>Feature List Creation</strong>: Based on your research, create a detailed list of features for your app, such as live streaming with astrologers, daily horoscopes, kundli generator, match making, and perhaps chat options for personalized consultations.</li>\r\n		<li><strong>UI/UX Design</strong>: Design the user interface and user experience, focusing on ease of use, accessibility, and providing a visually appealing design that resonates with your target audience.</li>\r\n		<li><strong>App Development</strong>: Choose the right development approach (native, web, or hybrid) and technologies. Develop the frontend and backend of your app, ensuring robustness, scalability, and security.</li>\r\n		<li><strong>Testing &amp; Quality Assurance</strong>: Conduct thorough testing, including functional testing, usability testing, and performance testing, to ensure the app is free from bugs and provides a smooth user experience.</li>\r\n		<li><strong>Launch &amp; Marketing</strong>: Prepare for the app launch with a strong marketing strategy to create awareness and attract users to your app.</li>\r\n		<li><strong>Maintenance and Updates</strong>: After launch, continuously monitor the app&rsquo;s performance, user feedback, and provide regular updates to keep the app up-to-date and engaging.</li>\r\n		<li>&nbsp;</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Time and Cost Estimation</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The development time for an astrology app with the features mentioned can vary widely depending on the complexity of the features, the platform(s) chosen, and the team&rsquo;s experience. On average, it can take anywhere from 4 to 8 months to develop an app of moderate complexity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cost-wise, the budget can range from $30,000 to over $100,000. Factors affecting cost include the development team&rsquo;s location, the specific technologies used, the complexity of the app&rsquo;s features, and the cost of any third-party services or APIs integrated for functions like live streaming or horoscope data.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Diploy&rsquo;s AstroWay: A Readymade Solution</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For businesses looking to launch an astrology app without the extensive time and financial investment typically required, Diploy&rsquo;s AstroWay offers an enticing solution. AstroWay is a ready-made platform that allows you to start an online astrology consultation app, incorporating features such as live streaming with astrologers, daily horoscope updates, kundli generator, and match making.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Using AstroWay can save you up to 90% in development time and costs. It&rsquo;s a customizable solution, meaning you can tailor it to meet your specific needs and brand identity. Moreover, it&rsquo;s backed by Diploy&rsquo;s robust support and maintenance, ensuring your app remains up-to-date and operates smoothly.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Conclusion</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Creating an astrology app can be challenging, but with careful planning and strategic execution, it is an achievable and potentially profitable venture. By leveraging Diploy&rsquo;s AstroWay, enterprises can bypass much of the hassle and expense associated with app development, quickly launching a feature-rich, engaging astrology app tailored to their audience&rsquo;s needs. Whether you opt for a bespoke app development journey or choose a ready-made solution like AstroWay, the key to success lies in delivering value and a great user experience to your audience.</p>', 53, 'Astroway', '2024-02-15 00:00:00', 1, 0, '2024-02-27 22:34:50', '2024-03-28 10:56:48', 1, 1, 'jpg', 'public/storage/images/blogpreview_511709053552.png');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_images`
--

CREATE TABLE `blog_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogId` bigint(20) UNSIGNED NOT NULL,
  `imagePath` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_readers`
--

CREATE TABLE `blog_readers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `callaudio`
--

CREATE TABLE `callaudio` (
  `id` int(11) NOT NULL,
  `callId` int(11) NOT NULL,
  `file` longtext NOT NULL,
  `channelName` longtext DEFAULT NULL,
  `sId` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `callrequest`
--

CREATE TABLE `callrequest` (
  `id` int(11) NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED DEFAULT NULL,
  `callStatus` varchar(45) DEFAULT NULL,
  `channelName` varchar(45) DEFAULT NULL,
  `token` varchar(400) DEFAULT NULL,
  `totalMin` varchar(45) DEFAULT NULL,
  `callRate` varchar(45) DEFAULT NULL,
  `deduction` double DEFAULT NULL,
  `call_duration` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `deductionFromAstrologer` double DEFAULT NULL,
  `sId` varchar(45) DEFAULT NULL,
  `sId1` varchar(45) DEFAULT NULL,
  `chatId` varchar(200) DEFAULT NULL,
  `isFreeSession` tinyint(1) DEFAULT NULL,
  `call_type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cdemo`
--

CREATE TABLE `cdemo` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdemo`
--

INSERT INTO `cdemo` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Bhain', 'Bhavin dec', '2023-01-13 11:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `chatrequest`
--

CREATE TABLE `chatrequest` (
  `id` int(11) NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `chatStatus` varchar(45) DEFAULT NULL,
  `channelName` varchar(45) DEFAULT NULL,
  `senderId` varchar(45) DEFAULT NULL,
  `receiverId` varchar(45) DEFAULT NULL,
  `deduction` double DEFAULT NULL,
  `chatId` varchar(400) DEFAULT NULL,
  `deductionFromAstrologer` double DEFAULT NULL,
  `totalMin` varchar(45) DEFAULT NULL,
  `chatRate` varchar(45) DEFAULT NULL,
  `chat_duration` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `isFreeSession` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `senderName` varchar(200) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `senderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commissionTypeId` bigint(20) UNSIGNED NOT NULL,
  `commission` double NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `astrologerId` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commission_types`
--

CREATE TABLE `commission_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commission_types`
--

INSERT INTO `commission_types` (`id`, `name`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(1, 'chat', 1, 0, NULL, NULL, 5, 5),
(2, 'call', 1, 0, NULL, NULL, 5, 5),
(3, 'report', 1, 0, NULL, NULL, 5, 5),
(4, 'VideoCall', 1, 0, NULL, NULL, 5, 5),
(5, 'Gift', 1, 0, NULL, NULL, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `couponCode` varchar(255) NOT NULL,
  `validFrom` datetime NOT NULL,
  `validTo` datetime NOT NULL,
  `minAmount` double NOT NULL,
  `maxAmount` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `couponCode`, `validFrom`, `validTo`, `minAmount`, `maxAmount`, `description`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(1, '50% off on 1500/- purchasess', 'FPa1311', '2022-10-02 00:00:00', '2022-10-30 00:00:00', 500, 999, 'This is a valid from only october month.', 1, 0, '2022-10-19 04:22:14', '2023-01-07 05:40:49', 5, 5),
(2, '30% off on 900/- purchase', 'CXYTP#5HM', '2022-10-01 00:00:00', '2022-10-30 00:00:00', 500, 799, 'This is a valid from only october month.', 1, 0, '2022-10-19 04:36:37', '2023-01-07 05:40:57', 5, 5),
(3, '10% off on 200/- purchase', 'FPP1311', '2022-11-07 00:00:00', '2022-11-10 00:00:00', 100, 200, 'Validty till this two days', 1, 0, '2022-11-07 03:03:51', '2023-01-07 05:41:02', 5, 5),
(4, '50% off', 'FPP1311', '2022-11-09 00:00:00', '2022-11-11 00:00:00', 100, 200, 'Valid till date', 1, 0, '2022-11-09 07:12:41', '2023-01-07 05:40:32', 5, 5),
(5, '10% off', 'FPP1312', '2022-11-09 00:00:00', '2022-11-11 00:00:00', 100, 200, 'till the date', 1, 0, '2022-11-09 07:16:19', '2022-11-09 07:16:19', 5, 5),
(6, 'testings', '131122', '2022-11-19 00:00:00', '2022-11-20 00:00:00', 100, 200, 'This is testing', 1, 0, '2022-11-19 00:46:52', '2023-01-09 22:48:35', 5, 5),
(7, 'test', '1311fp', '2023-01-05 00:00:00', '2023-01-10 00:00:00', 500, 800, 'vrrrsrtgrtre', 0, 0, '2023-01-07 05:30:19', '2023-01-07 05:40:45', 1, 1),
(8, 'testing', '2456nuy', '2023-01-04 00:00:00', '2023-01-02 00:00:00', 500, 999, 'fecrre', 0, 0, '2023-01-07 05:41:35', '2023-01-07 05:42:30', 1, 1),
(9, 'erre', 'wer', '2023-01-03 00:00:00', '2023-01-06 00:00:00', 500, 999, 'rtvueutbhbjfmuioko', 1, 0, '2023-01-09 22:49:01', '2023-01-09 22:49:01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dailyhoroscope`
--

CREATE TABLE `dailyhoroscope` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `percentage` int(11) NOT NULL,
  `horoscopeSignId` int(11) NOT NULL,
  `horoscopeDate` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dailyhoroscopeinsight`
--

CREATE TABLE `dailyhoroscopeinsight` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `coverImage` varchar(400) DEFAULT NULL,
  `title` varchar(400) NOT NULL,
  `description` longtext DEFAULT NULL,
  `horoscopeSignId` int(11) NOT NULL,
  `horoscopeDate` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `link` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dailyhoroscopestatics`
--

CREATE TABLE `dailyhoroscopestatics` (
  `id` int(11) NOT NULL,
  `horoscopeSignId` int(11) NOT NULL,
  `horoscopeDate` datetime NOT NULL,
  `luckyTime` varchar(45) DEFAULT NULL,
  `luckyColor` varchar(45) DEFAULT NULL,
  `luckyNumber` varchar(45) DEFAULT NULL,
  `moodday` varchar(45) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 1,
  `isDelete` tinyint(4) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `defaultprofile`
--

CREATE TABLE `defaultprofile` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `defaultprofile`
--

INSERT INTO `defaultprofile` (`id`, `name`, `profile`, `isActive`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'Libra', 'public/storage/images/defaultprofile_1710838219.png', 1, 0, '2023-04-06 15:03:08', '2024-03-19 14:20:19'),
(2, 'Gemini', 'public/storage/images/defaultprofile_1709055024.png', 1, 0, '2023-04-06 15:03:31', '2024-02-27 23:00:24'),
(3, 'Taurus', 'public/storage/images/defaultprofile_1709055015.png', 1, 0, '2023-04-24 13:24:42', '2024-02-27 23:00:15'),
(4, 'Aries', 'public/storage/images/defaultprofile_1709054998.png', 1, 0, '2023-07-15 17:10:21', '2024-02-29 12:38:53'),
(5, 'Pisces', 'public/storage/images/defaultprofile_51710837986.png', 1, 0, '2024-03-19 14:16:26', '2024-03-19 14:16:26'),
(6, 'Aquarius', 'public/storage/images/defaultprofile_61710838038.png', 1, 0, '2024-03-19 14:17:18', '2024-03-19 14:17:18'),
(7, 'Capricorn', 'public/storage/images/defaultprofile_71710838057.png', 1, 0, '2024-03-19 14:17:37', '2024-03-19 14:17:37'),
(8, 'Sagittarius', 'public/storage/images/defaultprofile_81710838081.png', 1, 0, '2024-03-19 14:18:01', '2024-03-19 14:18:01'),
(9, 'Scorpio', 'public/storage/images/defaultprofile_91710838107.png', 1, 0, '2024-03-19 14:18:27', '2024-03-19 14:18:27'),
(10, 'Virgo', 'public/storage/images/defaultprofile_101710838135.png', 1, 0, '2024-03-19 14:18:55', '2024-03-19 14:18:55'),
(11, 'Cancer', 'public/storage/images/defaultprofile_111710838169.png', 1, 0, '2024-03-19 14:19:29', '2024-03-19 14:19:41'),
(12, 'Leo', 'public/storage/images/defaultprofile_1711081695.png', 1, 0, '2024-03-19 14:19:49', '2024-03-22 09:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `degree_or_diplomas`
--

CREATE TABLE `degree_or_diplomas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `degreeName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `degree_or_diplomas`
--

INSERT INTO `degree_or_diplomas` (`id`, `degreeName`, `created_at`, `updated_at`) VALUES
(1, 'B.tech', '2022-11-07 06:56:25', '2022-11-07 06:56:25'),
(2, 'B.Sc', '2022-11-07 06:56:25', '2022-11-07 06:56:25'),
(3, 'B.A', '2022-11-07 06:57:00', '2022-11-07 06:57:00'),
(4, 'B.E', '2022-11-07 06:57:00', '2022-11-07 06:57:00'),
(5, 'B.com', '2022-11-07 06:58:11', '2022-11-07 06:58:11'),
(6, 'B.Pharma', '2022-11-07 06:58:11', '2022-11-07 06:58:11'),
(7, 'M.tech', '2022-11-07 06:58:47', '2022-11-07 06:58:47'),
(8, 'M.A', '2022-11-07 06:58:47', '2022-11-07 06:58:47'),
(9, 'M.Sc', '2022-11-07 06:59:20', '2022-11-07 06:59:20'),
(10, 'MBBS', '2022-11-07 06:59:20', '2022-11-07 06:59:20'),
(11, 'Others', '2022-11-07 06:59:43', '2022-11-07 06:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
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
-- Table structure for table `flaggroup`
--

CREATE TABLE `flaggroup` (
  `id` int(11) NOT NULL,
  `flagGroupName` varchar(45) DEFAULT NULL,
  `parentFlagGroupId` int(11) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 1,
  `isDelete` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `description` longtext NOT NULL,
  `viewenable` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flaggroup`
--

INSERT INTO `flaggroup` (`id`, `flagGroupName`, `parentFlagGroupId`, `displayOrder`, `isActive`, `isDelete`, `created_at`, `updated_at`, `description`, `viewenable`) VALUES
(1, 'General', NULL, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', '', 1),
(2, 'Payments', NULL, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', 'Choose Payment Mode Whichever use in app', 1),
(5, 'SocialLink', NULL, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', '', 1),
(6, 'ThirdPartyPackage', NULL, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', '', 1),
(7, 'Agora', 6, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', 'Set Agora Key Secret (Use for LiveChat,AudioCall,VideoCall)(https://console.agora.io/)', 1),
(8, 'Google Bucket', 6, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', 'Use For Store Call Recording', 1),
(9, 'Horoscope API', 6, NULL, 1, 0, '2023-03-30 16:38:07', '2023-03-30 16:38:07', '(Use For Get Kundali Detail) https://vedicastroapi.com', 1),
(11, 'Commission', 1, NULL, 1, 0, '2023-03-31 11:05:22', '2023-03-31 11:05:22', 'Set Default Commission for all astrologer', 1),
(12, 'MasterImage', NULL, NULL, 1, 0, '2023-04-05 10:29:14', '2023-04-05 10:29:14', '', 1),
(32, 'paypal', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set paypal Key', 1),
(33, 'paytm', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set paytm Key', 1),
(34, 'instamojo', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set instamojo Key', 1),
(35, 'paystack', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set paystack Key', 1),
(36, 'stripe', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set stripe Key', 1),
(37, 'razorpay', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set razorpay Key', 1),
(38, 'iyzico', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set iyzico Key', 1),
(39, 'authorize-net', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set authorize-net Key', 1),
(40, 'mercadopago', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set mercadopago Key', 1),
(41, 'payumoney', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set payumoney Key', 1),
(42, 'mollie', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set mollie Key', 1),
(43, 'ravepay', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set ravepay Key', 1),
(44, 'pagseguro', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set pagseguro Key', 1),
(45, 'coingate', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set coingate Key', 1),
(48, 'AWS Bucket', 6, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', 'Use For Store Call Recording', 1),
(49, 'WebsiteConfig', NULL, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', '', 1),
(50, 'Firebase', 49, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', 'Set Firebase Key Secret (Use for Chat , Otp)', 1),
(51, 'Google Map Api', 6, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', 'Set Google Api (Use for Location Fetch)', 1),
(52, 'OTP Less', 6, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', 'Set OTP Less keys (Use for whatsapp, gmail login)(https://otpless.com)', 1),
(54, 'phonepe', 2, NULL, 1, 0, '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Set phonepe Key', 1),
(56, 'site details', 49, NULL, 1, 0, '2024-06-19 11:25:43', '2024-06-19 11:25:43', '', 1),
(57, 'Select Bucket', 6, NULL, 1, 0, '2023-03-30 16:30:00', '2023-03-30 16:30:00', 'Select Bucket to store App data', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fulltime_jobs`
--

CREATE TABLE `fulltime_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fulltime_jobs`
--

INSERT INTO `fulltime_jobs` (`id`, `workName`, `created_at`, `updated_at`) VALUES
(1, 'No, I am working as part - timer or freelancer', '2022-11-07 07:09:23', '2022-11-07 07:09:23'),
(2, 'Yes, I am working somewhere as a full-timer.', '2022-11-07 07:09:23', '2022-11-07 07:09:23'),
(3, 'no,I am not working anywhere else', '2022-11-07 07:10:32', '2022-11-07 07:10:32'),
(4, 'I own a business', '2022-11-07 07:10:32', '2022-11-07 07:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id`, `name`, `image`, `amount`, `displayOrder`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(12, 'Flowers', 'public/storage/images/gift_121709053008.png', 20, NULL, 1, 0, '2022-11-09 01:32:10', '2024-02-27 22:26:48', 5, 5),
(33, 'Love', 'public/storage/images/gift_331709052941.png', 100, NULL, 1, 0, '2023-02-11 04:10:59', '2024-02-27 22:25:41', 5, 5),
(42, 'Gold Watch', 'public/storage/images/gift_421709052897.png', 500, NULL, 1, 0, '2023-03-09 00:49:26', '2024-03-29 10:13:48', 5, 5),
(46, 'Impressive', 'public/storage/images/gift_461709052930.png', 100, NULL, 1, 0, '2023-03-29 08:49:06', '2024-02-27 22:25:30', 5, 5),
(48, 'Cash', 'public/storage/images/gift_481713250484.png', 5000, NULL, 1, 0, '2023-07-15 17:09:42', '2024-04-16 06:54:44', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `help_supports`
--

CREATE TABLE `help_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_supports`
--

INSERT INTO `help_supports` (`id`, `name`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(5, 'First Free Session', 1, 0, '2023-01-04 23:48:33', '2023-01-04 23:48:33', 1, 1),
(15, 'Account related', 1, 0, '2024-02-29 10:48:24', '2024-02-29 10:48:24', 1, 1),
(16, 'Astrologer related', 1, 0, '2024-02-29 10:48:34', '2024-02-29 10:48:34', 1, 1),
(17, 'Wallet related', 1, 0, '2024-02-29 10:48:42', '2024-02-29 10:48:42', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `help_support_quations`
--

CREATE TABLE `help_support_quations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `helpSupportId` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `isChatWithus` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_support_quations`
--

INSERT INTO `help_support_quations` (`id`, `helpSupportId`, `question`, `answer`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`, `isChatWithus`) VALUES
(17, 5, 'How to avail?', NULL, 1, 0, '2023-01-06 03:02:51', '2023-02-28 04:43:26', 1, 1, 1),
(34, 15, 'Profile Update Issue', '<p>Not able to update my profile details</p>', 1, 0, '2024-02-29 10:51:05', '2024-02-29 10:51:05', 1, 1, 1),
(35, 16, 'Astrologer Misleading', '<p>Astrologer profile is misleading</p>', 1, 0, '2024-02-29 10:51:36', '2024-02-29 10:51:36', 1, 1, 1),
(36, 17, 'Wallet deducted But call failed', '<p>Wallet deducted But call failed</p>', 1, 0, '2024-02-29 10:52:01', '2024-02-29 10:52:01', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `help_support_quation_answers`
--

CREATE TABLE `help_support_quation_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `helpSupportId` bigint(20) UNSIGNED NOT NULL,
  `helpSupportQuationId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `isChatWithus` tinyint(4) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_support_quation_answers`
--

INSERT INTO `help_support_quation_answers` (`id`, `helpSupportId`, `helpSupportQuationId`, `title`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`, `isChatWithus`, `description`) VALUES
(11, 5, 17, 'How to get first free call?', 1, 0, NULL, NULL, 5, 5, 1, '<p>After you Signup, just imitate your first call with any astrologers.</p>'),
(24, 15, 34, 'Photo Not Updating', 1, 0, NULL, NULL, 1, 1, 1, '<p>Photo Not Updating</p>');

-- --------------------------------------------------------

--
-- Table structure for table `highest_qualifications`
--

CREATE TABLE `highest_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qualificationName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `highest_qualifications`
--

INSERT INTO `highest_qualifications` (`id`, `qualificationName`, `created_at`, `updated_at`) VALUES
(1, 'Diploma', '2022-11-07 06:48:08', '2022-11-07 06:48:08'),
(2, '10th', '2022-11-07 06:48:08', '2022-11-07 06:48:08'),
(3, '12th', '2022-11-07 06:48:42', '2022-11-07 06:48:42'),
(4, 'Gratuated', '2022-11-07 06:48:42', '2022-11-07 06:48:42'),
(5, 'Post Graduated', '2022-11-07 06:49:28', '2022-11-07 06:49:28'),
(6, 'PHD', '2022-11-07 06:49:28', '2022-11-07 06:49:28'),
(7, 'Others', '2022-11-07 06:50:15', '2022-11-07 06:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `hororscope_signs`
--

CREATE TABLE `hororscope_signs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hororscope_signs`
--

INSERT INTO `hororscope_signs` (`id`, `name`, `displayOrder`, `image`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(1, 'Aries', NULL, 'public/storage/images/sign_11709054648.png', 1, 0, '2022-10-19 00:46:51', '2024-02-27 22:54:08', 5, 5),
(3, 'Taurus', NULL, 'public/storage/images/sign_31709054640.png', 1, 0, '2022-10-19 01:10:08', '2024-02-27 22:54:00', 5, 5),
(4, 'Gemini', NULL, 'public/storage/images/sign_41709054632.png', 1, 0, '2022-11-07 00:25:39', '2024-02-27 22:53:52', 5, 5),
(5, 'Cancer', NULL, 'public/storage/images/sign_51709054580.png', 1, 0, '2022-11-09 07:11:47', '2024-02-27 22:53:00', 5, 5),
(6, 'Leo', NULL, 'public/storage/images/sign_61709054553.png', 1, 0, '2022-11-09 07:15:25', '2024-02-27 22:52:33', 5, 5),
(7, 'Virgo', NULL, 'public/storage/images/sign_71709054546.png', 1, 0, '2022-11-16 01:27:15', '2024-02-27 22:52:26', 5, 5),
(8, 'Libra', NULL, 'public/storage/images/sign_81709054538.png', 1, 0, '2022-11-16 01:27:33', '2024-02-27 22:52:18', 5, 5),
(9, 'Scorpio', NULL, 'public/storage/images/sign_91709054532.png', 1, 0, '2022-11-16 01:28:00', '2024-02-27 22:52:12', 5, 5),
(10, 'Sagittarius', NULL, 'public/storage/images/sign_101709054525.png', 1, 0, '2022-11-16 01:28:54', '2024-02-27 22:52:05', 5, 5),
(11, 'Capricorn', NULL, 'public/storage/images/sign_111709054311.png', 1, 0, '2022-11-16 01:29:55', '2024-02-27 22:48:31', 5, 5),
(12, 'Aquarius', NULL, 'public/storage/images/sign_121709054292.png', 1, 0, '2022-11-16 01:37:13', '2024-02-27 22:48:12', 5, 5),
(13, 'Pisces', NULL, 'public/storage/images/sign_131709054237.png', 1, 0, '2022-11-16 01:37:40', '2024-02-29 12:39:09', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `horoscope`
--

CREATE TABLE `horoscope` (
  `id` int(11) NOT NULL,
  `horoscopeType` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `horoscopeSignId` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `horoscopefeedback`
--

CREATE TABLE `horoscopefeedback` (
  `id` int(11) NOT NULL,
  `feedback` longtext DEFAULT NULL,
  `feedbacktype` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `horoscopefeedback`
--

INSERT INTO `horoscopefeedback` (`id`, `feedback`, `feedbacktype`, `created_at`, `updated_at`, `userId`) VALUES
(1, 'Great', 'Great', '2023-04-28 09:32:14', '2023-04-28 09:32:14', 327),
(2, NULL, 'Average', '2023-04-28 09:54:48', '2023-04-28 09:54:48', 330),
(3, NULL, 'Great', '2023-04-28 09:55:08', '2023-04-28 09:55:08', 330),
(4, NULL, 'Great', '2023-04-28 09:56:13', '2023-04-28 09:56:13', 330),
(5, NULL, 'Great', '2023-04-28 09:56:53', '2023-04-28 09:56:53', 330),
(6, 'love this app', 'Great', '2023-04-28 09:57:39', '2023-04-28 09:57:39', 330),
(7, NULL, 'Great', '2023-04-28 12:22:30', '2023-04-28 12:22:30', 331),
(8, 'hhg', 'Great', '2023-04-29 05:23:14', '2023-04-29 05:23:14', 326);

-- --------------------------------------------------------

--
-- Table structure for table `horoscopes`
--

CREATE TABLE `horoscopes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zodiac` varchar(255) NOT NULL,
  `total_score` int(11) NOT NULL,
  `lucky_color` varchar(255) NOT NULL,
  `lucky_color_code` varchar(255) NOT NULL,
  `lucky_number` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`lucky_number`)),
  `physique` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `finances` int(11) NOT NULL,
  `relationship` int(11) NOT NULL,
  `career` int(11) NOT NULL,
  `travel` int(11) NOT NULL,
  `family` int(11) NOT NULL,
  `friends` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `bot_response` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `health_remark` text NOT NULL DEFAULT '',
  `career_remark` text NOT NULL DEFAULT '',
  `relationship_remark` text NOT NULL DEFAULT '',
  `travel_remark` text NOT NULL DEFAULT '',
  `family_remark` text NOT NULL DEFAULT '',
  `friends_remark` text NOT NULL DEFAULT '',
  `finances_remark` text NOT NULL DEFAULT '',
  `status_remark` text NOT NULL DEFAULT '',
  `langcode` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intakeform`
--

CREATE TABLE `intakeform` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `phoneNumber` varchar(200) NOT NULL,
  `countryCode` varchar(20) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `birthDate` datetime NOT NULL,
  `birthTime` varchar(45) NOT NULL,
  `birthPlace` varchar(400) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `timezone` varchar(45) DEFAULT NULL,
  `maritalStatus` varchar(40) NOT NULL,
  `occupation` varchar(400) NOT NULL,
  `topicOfConcern` varchar(200) NOT NULL,
  `partnerName` varchar(400) DEFAULT NULL,
  `partnerBirthDate` datetime DEFAULT NULL,
  `partnerBirthTime` varchar(40) DEFAULT NULL,
  `partnerBirthPlace` varchar(400) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kundalis`
--

CREATE TABLE `kundalis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthDate` datetime NOT NULL,
  `birthTime` varchar(255) NOT NULL,
  `birthPlace` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `timezone` varchar(45) DEFAULT NULL,
  `isForTrackPlanet` tinyint(1) DEFAULT NULL,
  `pdf_type` varchar(255) NOT NULL DEFAULT '',
  `match_type` varchar(255) NOT NULL DEFAULT '',
  `forMatch` varchar(10) NOT NULL DEFAULT '0',
  `pdf_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kundali_matchings`
--

CREATE TABLE `kundali_matchings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `boyName` varchar(255) NOT NULL,
  `boyBirthDate` datetime NOT NULL,
  `boyBirthTime` varchar(255) NOT NULL,
  `boyBirthPlace` varchar(255) NOT NULL,
  `girlName` varchar(255) NOT NULL,
  `girlBirthDate` datetime NOT NULL,
  `girlBirthTime` varchar(255) NOT NULL,
  `girlBirthPlace` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `languageName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `languageCode` varchar(45) DEFAULT NULL,
  `language_sign` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `languageName`, `created_at`, `updated_at`, `languageCode`, `language_sign`) VALUES
(1, 'English', '2022-11-07 05:51:25', '2022-11-07 05:51:26', 'en', 'English'),
(2, 'Gujarati', '2022-11-07 05:51:26', '2022-11-07 05:51:26', 'gu', 'ગુજરાતી'),
(3, 'Hindi', '2022-11-07 05:52:00', '2022-11-07 05:52:00', 'hi', 'हिन्दी'),
(4, 'Spanish', '2022-11-07 05:52:00', '2022-11-07 05:52:00', 'es', 'español'),
(5, 'Marathi', '2022-11-07 05:52:34', '2022-11-07 05:52:34', 'mr', 'मराठी'),
(6, 'Sanskrit', '2022-11-07 05:52:34', '2022-11-07 05:52:34', 'sa', 'संस्कृत'),
(7, 'Afrikaans', '2023-04-08 08:59:36', '2023-04-08 08:59:36', 'af', NULL),
(8, 'Albanian', '2023-04-08 08:59:36', '2023-04-08 08:59:36', 'sq', 'shqip'),
(9, 'Amharic', '2023-04-08 08:59:36', '2023-04-08 08:59:36', 'am', 'አማርኛ'),
(10, 'Arabic', '2023-04-08 08:59:36', '2023-04-08 08:59:36', 'ar', 'العربية'),
(11, 'Aragonese', '2023-04-08 08:59:36', '2023-04-08 08:59:36', 'an', 'aragonés'),
(12, 'Armenian', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'hy', 'հայերեն'),
(13, 'Asturian', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'ast', 'asturianu'),
(14, 'Azerbaijani', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'az', 'azərbaycan dili'),
(15, 'Basque', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'eu', 'euskara'),
(16, 'Belarusian', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'be', 'беларуская'),
(17, 'Bengali', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'bn', 'বাংলা'),
(18, 'Bosnian', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'bs', 'bosanski'),
(19, 'Breton', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'br', 'brezhoneg'),
(20, 'Bulgarian', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'bg', 'български'),
(21, 'Catalan', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'ca', 'català'),
(22, 'Central Kurdish', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'ckb', 'کوردی (دەستنوسی عەرەبی)'),
(23, 'Chinese', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'zh', '中文'),
(24, 'Chinese (Hong Kong)', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'zh-HK', '中文（香港）'),
(25, 'Chinese (Simplified)', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'zh-CN', '中文（简体）'),
(26, 'Chinese (Traditional)', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'zh-TW', '中文（繁體）'),
(27, 'Corsican', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'co', NULL),
(28, 'Croatian', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'hr', 'hrvatski'),
(29, 'Czech', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'cs', 'čeština'),
(30, 'Danish', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'da', 'dansk'),
(31, 'Dutch', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'nl', 'Nederlands'),
(32, 'English (Australia)', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'AU', NULL),
(33, 'English (Canada)', '2023-04-08 09:06:30', '2023-04-08 09:06:30', 'CA', NULL),
(34, 'English (India)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'IN', NULL),
(35, 'English (New Zealand)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'NZ', NULL),
(36, 'English (South Africa)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'ZA', NULL),
(37, 'English (United Kingdom)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'GB', NULL),
(38, 'English (United States)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'US', NULL),
(39, 'Esperanto', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'eo', 'esperanto'),
(40, 'Estonian', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'et', 'eesti'),
(41, 'Faroese', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'fo', 'føroyskt'),
(42, 'Filipino', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'fil', NULL),
(43, 'Finnish', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'fi', 'suomi'),
(44, 'French', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'fr', 'français'),
(45, 'French (Canada)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'fr-CA', 'français (Canada)'),
(46, 'French (France)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'fr-FR', 'français (France)'),
(47, 'French (Switzerland)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'fr-CH', 'français (Suisse)'),
(48, 'Galician', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'gl', 'galego'),
(49, 'Georgian', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'ka', 'ქართული'),
(50, 'German', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'de', 'Deutsch'),
(51, 'German (Austria)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'de-AT', 'Deutsch (Österreich)'),
(52, 'German (Germany)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'de-DE', 'Deutsch (Deutschland)'),
(53, 'German (Liechtenstein)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'de-LI', 'Deutsch (Liechtenstein)'),
(54, 'German (Switzerland)', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'de-CH', 'Deutsch (Schweiz)'),
(55, 'Greek', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'el', 'Ελληνικά'),
(56, 'Guarani', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'gn', NULL),
(57, 'Hausa', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'ha', NULL),
(58, 'Hawaiian', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'haw', 'ʻŌlelo Hawaiʻi'),
(59, 'Hebrew', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'he', 'עברית'),
(60, 'Hungarian', '2023-04-08 09:14:33', '2023-04-08 09:14:33', 'hu', 'magyar'),
(61, 'Icelandic', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'is', 'íslenska'),
(62, 'Indonesian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'id', 'Indonesia'),
(63, 'Interlingua', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ia', NULL),
(64, 'Irish', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ga', 'Gaeilge'),
(65, 'Italian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'it', 'italiano'),
(66, 'Italian (Italy)', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'it-IT', 'italiano (Italia)'),
(67, 'Italian (Switzerland)', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'it-CH', 'italiano (Svizzera)'),
(68, 'Japanese', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ja', '日本語'),
(69, 'Kannada', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'kn', 'ಕನ್ನಡ'),
(70, 'Kazakh', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'kk', 'қазақ тілі'),
(71, 'Khmer', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'km', 'ខ្មែរ'),
(72, 'Korean', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ko', '한국어'),
(73, 'Kurdish', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ku', 'Kurdî'),
(74, 'Kyrgyz', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ky', 'кыргызча'),
(75, 'Lao', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'lo', 'ລາວ'),
(76, 'Latin', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'la', NULL),
(77, 'Latvian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'lv', 'latviešu'),
(78, 'Lingala', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ln', 'lingála'),
(79, 'Lithuanian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'lt', 'lietuvių'),
(80, 'Macedonian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'mk', 'македонски'),
(81, 'Malay', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ms', 'Bahasa Melayu'),
(82, 'Malayalam', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ml', 'മലയാളം'),
(83, 'Maltese', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'mt', 'Malti'),
(84, 'Mongolian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'mn', 'монгол'),
(85, 'Nepali', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ne', 'नेपाली'),
(86, 'Norwegian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'no', 'norsk'),
(87, 'Norwegian Bokmål', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'nb', 'norsk bokmål'),
(88, 'Norwegian Nynorsk', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'nn', 'nynorsk'),
(89, 'Occitan', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'oc', NULL),
(90, 'Oriya', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'or', 'ଓଡ଼ିଆ'),
(91, 'Oromo', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'om', 'Oromoo'),
(92, 'Pashto', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ps', 'پښتو'),
(93, 'Persian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'fa', 'فارسی'),
(94, 'Polish', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'pl', 'polski'),
(95, 'Portuguese', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'pt', 'português'),
(96, 'Portuguese (Brazil)', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'pt-BR', 'português (Brasil)'),
(97, 'Portuguese (Portugal)', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'pt-PT', 'português (Portugal)'),
(98, 'Punjabi', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'pa', 'ਪੰਜਾਬੀ'),
(99, 'Quechua', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'qa', NULL),
(100, 'Romanian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ro', 'română'),
(101, 'Romanian (Moldova)', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'mo', 'română (Moldova)'),
(102, 'Romansh', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'rm', 'rumantsch'),
(103, 'Russian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'ru', 'русский'),
(104, 'Scottish Gaelic', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'gd', NULL),
(105, 'Serbian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'sr', 'српски'),
(106, 'Serbo-Croatian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'sh', 'Srpskohrvatski'),
(107, 'Shona', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'sn', 'chiShona'),
(108, 'Sindhi', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'sd', NULL),
(109, 'Sinhala', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'si', 'සිංහල'),
(110, 'Slovak', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'sk', 'slovenčina'),
(111, 'Slovenian', '2023-04-08 09:36:23', '2023-04-08 09:36:23', 'sl', 'slovenščina'),
(112, 'Somali', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'so', 'Soomaali'),
(113, 'Southern Sotho', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'st', NULL),
(114, 'Spanish (Argentina)', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'es-AR', 'español (Argentina)'),
(115, 'Spanish (Latin America)', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'es-419', 'español (Latinoamérica)'),
(116, 'Spanish (Mexico)', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'es-MX', 'español (México)'),
(117, 'Spanish (Spain)', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'es-ES', 'español (España)'),
(118, 'Spanish (United States)', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'es-US', 'español (Estados Unidos)'),
(119, 'Sundanese', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'su', NULL),
(120, 'Swahili', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'sw', 'Kiswahili'),
(121, 'Swedish', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'sv', 'svenska'),
(122, 'Tajik', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'tg', 'тоҷикӣ'),
(123, 'Tamil', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'ta', 'தமிழ்'),
(124, 'Tatar', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'tt', NULL),
(125, 'Telugu', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'te', 'తెలుగు'),
(126, 'Thai', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'th', 'ไทย'),
(127, 'Tigrinya', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'ti', 'ትግርኛ'),
(128, 'Tongan', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'to', 'lea fakatonga'),
(129, 'Turkish', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'tr', 'Türkçe'),
(130, 'Turkmen', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'tk', NULL),
(131, 'Twi', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'tw', NULL),
(132, 'Ukrainian', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'uk', 'українська'),
(133, 'Urdu', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'ur', 'اردو'),
(134, 'Uyghur', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'ug', NULL),
(135, 'Uzbek', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'uz', 'o‘zbek'),
(136, 'Vietnamese', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'vi', 'Tiếng Việt'),
(137, 'Walloon', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'wa', 'wa'),
(138, 'Welsh', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'cy', 'Cymraeg'),
(139, 'Western Frisian', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'fy', NULL),
(140, 'Xhosa', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'xh', NULL),
(141, 'Yiddish', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'yi', NULL),
(142, 'Yoruba', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'yo', 'Èdè Yorùbá'),
(143, 'Zulu', '2023-04-08 09:36:24', '2023-04-08 09:36:24', 'zu', 'isiZulu');

-- --------------------------------------------------------

--
-- Table structure for table `liveastro`
--

CREATE TABLE `liveastro` (
  `id` int(11) NOT NULL,
  `astrologerId` bigint(20) UNSIGNED DEFAULT NULL,
  `channelName` varchar(45) DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `liveChatToken` varchar(45) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livechat`
--

CREATE TABLE `livechat` (
  `id` int(11) NOT NULL,
  `userId` varchar(45) DEFAULT NULL,
  `partnerId` varchar(45) DEFAULT NULL,
  `chatId` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `liveuser`
--

CREATE TABLE `liveuser` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `fcmToken` varchar(400) NOT NULL,
  `channelName` varchar(400) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_source_of_businesses`
--

CREATE TABLE `main_source_of_businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_source_of_businesses`
--

INSERT INTO `main_source_of_businesses` (`id`, `jobName`, `created_at`, `updated_at`) VALUES
(1, 'Own Business', '2022-11-07 06:42:17', '2022-11-07 06:42:17'),
(2, 'Private Job', '2022-11-07 06:42:17', '2022-11-07 06:42:17'),
(3, 'Goverment Job', '2022-11-07 06:43:20', '2022-11-07 06:43:20'),
(4, 'Studying in college', '2022-11-07 06:43:20', '2022-11-07 06:43:20'),
(5, 'None of the above', '2022-11-07 06:44:00', '2022-11-07 06:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `marital_statuses`
--

CREATE TABLE `marital_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maritalStatus` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marital_statuses`
--

INSERT INTO `marital_statuses` (`id`, `maritalStatus`, `created_at`, `updated_at`) VALUES
(1, 'Single', '2022-11-15 08:36:25', '2022-11-15 08:36:25'),
(2, 'Married', '2022-11-15 08:36:25', '2022-11-15 08:36:25'),
(3, 'Divorced', '2022-11-15 08:37:11', '2022-11-15 08:37:11'),
(4, 'Separated', '2022-11-15 08:37:11', '2022-11-15 08:37:11'),
(5, 'Widowed', '2022-11-15 08:37:50', '2022-11-15 08:37:50');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_10_14_085714_create_users_table', 2),
(11, '2022_10_14_091030_create_roles_table', 3),
(12, '2022_10_14_100130_create_astrologer_categories_table', 4),
(13, '2022_10_14_100329_create_astrologers_table', 5),
(14, '2022_10_14_100815_create_user_followings_table', 6),
(15, '2022_10_14_101129_create_user_wallets_table', 6),
(16, '2022_10_14_101821_create_astrotalk_in_news_table', 7),
(17, '2022_10_14_102159_create_astrologer_assistants_table', 8),
(18, '2022_10_14_102756_create_skills_table', 9),
(19, '2022_10_14_102954_create_astrologer_expertises_table', 10),
(20, '2022_10_14_103343_create_astrologer_followers_table', 11),
(21, '2022_10_14_103648_create_astrologer_availabilities_table', 12),
(22, '2022_10_14_104911_create_astrology_videos_table', 13),
(23, '2022_10_14_105056_create_user_reviews_table', 14),
(24, '2022_10_14_105854_create_gifts_table', 15),
(25, '2022_10_14_110202_create_astrologer_gifts_table', 16),
(26, '2022_10_14_110442_create_blog_categories_table', 17),
(27, '2022_10_14_110600_create_blogs_table', 18),
(28, '2022_10_14_110821_create_blog_images_table', 19),
(29, '2022_10_14_111014_create_blog_readers_table', 20),
(30, '2022_10_14_112131_create_hororscope_signs_table', 21),
(31, '2022_10_14_112303_create_kundalis_table', 22),
(32, '2022_10_14_112618_create_kundali_matchings_table', 23),
(33, '2022_10_14_113005_create_permissions_table', 24),
(34, '2022_10_14_113128_create_astrologer_assistant_permissions_table', 25),
(35, '2022_10_14_113609_create_product_categories_table', 26),
(36, '2022_10_14_113801_create_astromall_products_table', 27),
(37, '2022_10_14_114809_create_order_addresses_table', 28),
(38, '2022_10_14_115137_create_user_orders_table', 29),
(39, '2022_10_14_115546_create_order_payments_table', 30),
(40, '2022_10_14_120343_create_coupons_table', 31),
(41, '2022_10_14_120842_create_banner_types_table', 32),
(42, '2022_10_14_121011_create_banners_table', 33),
(43, '2022_10_14_121312_create_notifications_table', 34),
(44, '2022_10_14_121453_create_user_notifications_table', 35),
(45, '2022_10_14_121810_create_commission_types_table', 36),
(46, '2022_10_14_121912_create_commissions_table', 37),
(47, '2022_10_14_122300_create_user_call_histories_table', 38),
(48, '2022_10_14_123236_create_user_reports_table', 39),
(49, '2022_10_14_123500_create_app_reviews_table', 40),
(50, '2022_10_14_123745_create_user_chat_histories_table', 40),
(51, '2022_10_14_124240_create_admin_get_commissions_table', 41),
(52, '2022_10_14_125316_create_help_supports_table', 42),
(53, '2022_10_14_125435_create_help_support_quations_table', 43),
(54, '2022_10_14_125620_create_help_support_quation_answers_table', 44),
(55, '2022_10_14_125851_create_tickets_table', 45),
(56, '2022_10_14_130136_create_astrologer_wait_lists_table', 46),
(57, '2022_10_14_130531_create_user_chats_table', 46),
(58, '2022_10_14_130905_create_user_chats_table', 47),
(59, '2022_10_15_063722_add_columns_to_users_table', 48),
(60, '2022_10_15_085443_add_columns_to_user_reports_table', 49),
(61, '2022_10_15_093230_create_withdraws_table', 50),
(62, '2022_10_18_130437_add_columns_to_gifts_table', 51),
(63, '2022_10_19_045342_add_columns_to_astrologer_categories_table', 52),
(64, '2022_10_19_055420_add_columns_to_hororscope_signs_table', 53),
(65, '2022_10_19_065111_add_columns_to_product_categories_table', 54),
(66, '2022_10_19_120003_add_columns_to_banners_table', 55),
(67, '2022_10_21_092607_add_columns_to_astrologers_table', 56),
(68, '2022_11_01_083140_add_columns_to_astrology_videos_table', 57),
(69, '2022_11_01_095412_add_columns_to_tickets_table', 58),
(70, '2022_11_02_054512_add_columns_to_astrologer_assistants_table', 59),
(71, '2022_11_05_122633_create_user_role_table', 60),
(72, '2022_11_05_123631_create_user_roles_table', 61),
(73, '2022_11_07_054715_create_languages_table', 62),
(74, '2022_11_07_064001_create_main_source_of_businesses_table', 63),
(75, '2022_11_07_064656_create_highest_qualifications_table', 64),
(76, '2022_11_07_065412_create_degree_or_diplomas_table', 65),
(77, '2022_11_07_070526_create_fulltime_jobs_table', 66),
(78, '2022_11_07_070834_create_fulltime_jobs_table', 67),
(79, '2022_11_07_071528_create_travel_countries_table', 68),
(80, '2022_11_09_044219_create_kundalis_table', 69),
(81, '2022_11_09_092352_create_banners_table', 70),
(82, '2022_11_09_092702_create_banners_table', 71),
(83, '2022_11_10_071537_create_user_device_details_table', 72),
(84, '2022_11_10_121247_create_user_device_details_table', 73),
(85, '2022_11_12_043603_create_review_blocks_table', 74),
(86, '2022_11_12_093948_create_product_details_table', 75),
(87, '2022_11_15_083411_create_marital_statuses_table', 76),
(88, '2022_11_15_102531_create_report_types_table', 77),
(89, '2014_10_12_000000_create_users_table', 78),
(90, '2014_10_12_100000_create_password_reset_tokens_table', 78),
(91, '2023_12_22_101714_alter_adminpages', 78),
(92, '2023_12_27_123003_create_horoscopes_table', 79),
(93, '2023_12_27_142833_add_date_columns_horscopes_tabel', 79),
(94, '2023_12_27_144931_add_new_columns_horscopes_tabel', 79),
(95, '2023_12_27_165949_create_mst_control_table', 79),
(96, '2023_12_29_155132_add_call_type_column', 80),
(97, '2024_01_10_145429_add_pdf_type_kundli', 81),
(98, '2024_01_10_192239_add_pdf_type_kundli', 82),
(99, '2024_01_25_124052_create_sub_category_table', 83),
(100, '2024_01_31_114418_add_new_column_delete_user', 84),
(101, '2024_01_31_115514_add_new_column_delete_astrologer', 85);

-- --------------------------------------------------------

--
-- Table structure for table `mst_control`
--

CREATE TABLE `mst_control` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `astro_api_call_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_control`
--

INSERT INTO `mst_control` (`id`, `astro_api_call_type`, `created_at`, `updated_at`) VALUES
(1, 3, '2023-12-27 17:43:57', '2024-02-22 12:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'XolYtrsOZBgivVgEI05r0FAhYkjoHEm5EnhjqF3Q', NULL, 'http://localhost', 1, 0, 0, '2023-02-21 23:15:07', '2023-02-21 23:15:07'),
(2, NULL, 'Laravel Password Grant Client', 'iUvRsrZ7IL18Q7iCbm5JUgufcQvqfxsTWFbH2Mmn', 'users', 'http://localhost', 0, 1, 0, '2023-02-21 23:15:08', '2023-02-21 23:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-21 23:15:08', '2023-02-21 23:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `phoneNumber2` varchar(20) DEFAULT NULL,
  `flatNo` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `countryCode` varchar(45) DEFAULT NULL,
  `alternateCountryCode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` bigint(20) UNSIGNED NOT NULL,
  `grossAmount` int(11) NOT NULL,
  `gstPercent` double NOT NULL,
  `gstAmount` double NOT NULL,
  `discountAmount` double NOT NULL,
  `walletBalanceDeducted` double NOT NULL,
  `netAmount` double NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `paymentMethod` varchar(255) NOT NULL,
  `astrologerPayment` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_request`
--

CREATE TABLE `order_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `astrologerId` int(11) DEFAULT NULL,
  `orderType` varchar(45) DEFAULT NULL,
  `productCategoryId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `orderAddressId` int(11) DEFAULT NULL,
  `payableAmount` decimal(10,2) DEFAULT NULL,
  `walletBalanceDeducted` decimal(10,2) DEFAULT NULL,
  `gstPercent` decimal(10,2) DEFAULT NULL,
  `totalPayable` decimal(10,2) DEFAULT NULL,
  `couponCode` varchar(45) DEFAULT NULL,
  `paymentMethod` varchar(45) DEFAULT NULL,
  `orderStatus` varchar(45) DEFAULT NULL,
  `totalMin` varchar(45) DEFAULT NULL,
  `isActive` varchar(45) DEFAULT '1',
  `isDelete` varchar(45) DEFAULT '0',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `chatId` int(11) DEFAULT NULL,
  `callId` int(11) DEFAULT NULL,
  `giftId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `type` enum('privacy','terms','aboutus') DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `type`, `description`, `isActive`, `created_at`, `updated_at`) VALUES
(2, 'Privacy Policy', 'privacy', '<p>This Privacy Policy is meant to help you understand what data we collect, why we collect it, and what we do with it. This is important; we hope you will take the time to read it carefully.</p>\r\n\r\n<p>User can only access app after login.</p>\r\n\r\n<p>Astrotalk app is a subscription based app. you always need an active subscription to use this app.</p>\r\n\r\n<p>This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.</p>\r\n\r\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our&nbsp;Terms and Conditions, which is accessible at Astrotalk unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<h2>Information Collection and Use</h2>\r\n\r\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Name, Email, Phone, Addresses, Gender, Birthdate, Anniversary Date, Location, Profile Picture. The information that we request will be retained by us and used as described in this privacy policy.</p>\r\n\r\n<p>The app does use api to communicate with the server/data.</p>\r\n\r\n<p><strong>Permissions Needed</strong></p>\r\n\r\n<p>Astrotalk needs following permissions to run it.</p>\r\n\r\n<ul>\r\n	<li>CAMERA - (For video Meet)</li>\r\n	<li>Device Audio - (For video Meet)</li>\r\n	<li>Contacts - (READ_CONTACTS, WRITE_CONTACTS)</li>\r\n	<li>Location - (ACCESS_COARSE_LOCATION)</li>\r\n	<li>Device Permissions - (INTERNET, ACCESS_NETWORK_STATE, RECEIVE_BOOT_COMPLETED, VIBRATE)</li>\r\n</ul>\r\n\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://www.facebook.com/about/privacy/update/printable\" target=\"_blank\">Facebook</a></li>\r\n</ul>\r\n\r\n<p>Log Data</p>\r\n\r\n<p>We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p>Cookies</p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p>Service Providers</p>\r\n\r\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p>Security</p>\r\n\r\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\r\n\r\n<p>Links to Other Sites</p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p>Children&rsquo;s Privacy</p>\r\n\r\n<p>These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\r\n\r\n<p>Payments</p>\r\n\r\n<p>We may provide paid products and/or services within the Service. In that case, we use third-party services for payment processing (e.g. payment processors).</p>\r\n\r\n<p>We will not store or collect your payment card details. That information is provided directly to our third-party payment processors whose use of your personal information is governed by their Privacy Policy.</p>\r\n\r\n<p>Changes to This Privacy Policy</p>\r\n\r\n<p>We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2020-11-04</p>\r\n\r\n<p>Contact Us</p>\r\n\r\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at astrotalkglobal@gmail.com.</p>\r\n\r\n<p>This privacy policy page was created at&nbsp;<a href=\"https://privacypolicytemplate.net/\" target=\"_blank\">privacypolicytemplate.net&nbsp;</a>and modified/generated by&nbsp;<a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\">App Privacy Policy Generator</a>.</p>', 1, '2024-02-29 10:55:59', '2024-02-29 10:55:59'),
(3, 'Terms & Conditions', 'terms', '<p>By downloading or using the app, these terms will automatically apply to you &ndash; you should make sure therefore that you read them carefully before using the app. You&rsquo;re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You&rsquo;re not allowed to attempt to extract the source code of the app, and you also shouldn&rsquo;t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to Astrotalk.</p>\r\n\r\n<p>By agreeing this terms you are also accepting the&nbsp;Privacy Policy&nbsp;of this app.</p>\r\n\r\n<p>Astrotalk is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you&rsquo;re paying for.</p>\r\n\r\n<p>The Astrotalk app stores and processes personal data that you have provided to us, in order to provide our Service. It&rsquo;s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone&rsquo;s security features and it could mean that the Astrotalk app won&rsquo;t work properly or at all.</p>\r\n\r\n<p>The app does use third party services that declare their own Terms and Conditions.</p>\r\n\r\n<p>Link to Terms and Conditions of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://policies.google.com/terms\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://www.facebook.com/legal/terms/plain_text_terms\" target=\"_blank\">Facebook</a></li>\r\n</ul>\r\n\r\n<p>You should be aware that there are certain things that Astrotalk will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but Astrotalk cannot take responsibility for the app not working at full functionality if you don&rsquo;t have access to Wi-Fi, and you don&rsquo;t have any of your data allowance left.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you&rsquo;re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you&rsquo;re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you&rsquo;re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</p>\r\n\r\n<p>Along the same lines, Astrotalk cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged &ndash; if it runs out of battery and you can&rsquo;t turn it on to avail the Service, Astrotalk cannot accept responsibility.</p>\r\n\r\n<p>With respect to Astrotalk&rsquo;s responsibility for your use of the app, when you&rsquo;re using the app, it&rsquo;s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. Astrotalk accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</p>\r\n\r\n<p>At some point, we may wish to update the app. The app is currently available on Android &amp; iOS &ndash; the requirements for both systems(and for any additional systems we decide to extend the availability of the app to) may change, and you&rsquo;ll need to download the updates if you want to keep using the app. Astrotalk does not promise that it will always update the app so that it is relevant to you and/or works with the Android &amp; iOS version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</p>\r\n\r\n<p>Changes to This Terms and Conditions</p>\r\n\r\n<p>We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.</p>\r\n\r\n<p>These terms and conditions are effective as of 2020-11-04</p>\r\n\r\n<p>Contact Us</p>\r\n\r\n<p>If you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at astrotalkglobal@gmail.com.</p>\r\n\r\n<p>This Terms and Conditions page was generated by&nbsp;<a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\">App Privacy Policy Generator</a></p>', 1, '2024-02-29 11:01:52', '2024-02-29 11:01:52'),
(4, 'About Us', 'aboutus', '<p>Astroway stands as a beacon in the realm of astrology, blending ancient wisdom with modern insights to offer profound guidance and clarity to individuals seeking to understand the cosmic forces shaping their lives. Founded by a dedicated team of astrologers and enthusiasts, Astroway is committed to making the mystical art of astrology accessible and meaningful to all.</p>\n\n<p>Astrology, as practiced at Astroway, is not merely about predicting the future, but rather understanding the intricate interplay between celestial bodies and human existence. It provides a unique lens through which individuals can explore their personalities, relationships, and life events, gaining deeper insights into their own journeys.</p>\n\n<p>Our team of astrologers brings a wealth of experience and expertise to each consultation. They are not just interpreters of star charts but compassionate guides who listen attentively to your concerns and aspirations. Whether you&#39;re facing challenges in your career, seeking clarity in your relationships, or navigating personal growth, our astrologers are here to provide insightful readings tailored to your unique situation.</p>\n\n<p>What sets Astroway apart is our dedication to accuracy and authenticity. Each reading is meticulously prepared, drawing upon the rich tapestry of astrological knowledge combined with intuitive insights. We understand that every individual is on a distinct path, and our readings are crafted to resonate deeply with your personal journey.</p>\n\n<p>At Astroway, we embrace diversity and inclusivity, welcoming clients from all walks of life and backgrounds. Whether you&#39;re a skeptic cautiously exploring astrology for the first time or a seasoned enthusiast seeking deeper cosmic insights, you&#39;ll find a supportive community and valuable resources at Astroway.</p>\n\n<p>Beyond individual consultations, Astroway offers a range of resources to enrich your understanding of astrology. Our blog features articles on astrological trends, tips for personal growth based on astrological insights, and profiles of notable figures in the field of astrology. We also host workshops and webinars led by experienced astrologers, providing opportunities for learning and community engagement.</p>\n\n<p>Astroway is committed to ethical practices and client confidentiality. We prioritize the trust and privacy of our clients, ensuring that every interaction with our astrologers is conducted with professionalism and respect.</p>\n\n<p>As we continue to evolve and grow, Astroway remains dedicated to pushing the boundaries of astrological exploration. We embrace innovation while honoring the timeless traditions that form the foundation of astrology. Our goal is to empower individuals to embrace their true potential and navigate life&#39;s complexities with confidence and clarity.</p>\n\n<p>Join us at Astroway on a journey of self-discovery and cosmic exploration. Let us help you unlock the mysteries of the universe and discover the hidden gems within your own soul. Whether you seek answers, guidance, or simply a deeper connection to the cosmos, Astroway is here to illuminate your path with the wisdom of the stars.</p>\n\n<p>Explore the infinite possibilities written in the stars with Astroway, where astrology meets inspiration and insight.</p>', 1, '2024-02-29 11:01:52', '2024-02-29 11:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fenil@gmail.com', '$2y$10$pcCFQ2QCSdFQ49NQwD4RmON.C98j7jx7g2pTjBZ94h.C8OLEDBSeW', '2022-10-18 03:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `paymentMode` varchar(45) DEFAULT NULL,
  `paymentReference` varchar(45) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `paymentStatus` varchar(45) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `orderId` longtext DEFAULT NULL,
  `cashback_amount` double DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `createdBy` bigint(20) UNSIGNED DEFAULT NULL,
  `modifiedBy` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `categoryImage` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `displayOrder`, `categoryImage`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(6, 'Gemstone', NULL, 'public/storage/images/productCategory_61709053343.png', 1, 0, '2022-11-09 07:12:04', '2024-02-27 22:32:23', 5, 5),
(32, 'Rudra Mala', NULL, 'public/storage/images/productCategory_321709053286.png', 1, 0, '2023-06-15 11:16:12', '2024-02-27 22:31:26', 5, 5),
(33, 'Idols', NULL, 'public/storage/images/productCategory_331709051859.png', 1, 0, '2023-06-17 20:44:07', '2024-02-29 10:58:02', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `astromallProductId` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `isDelete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `astromallProductId`, `question`, `answer`, `isActive`, `isDelete`, `created_at`, `updated_at`) VALUES
(2, 7, 'When can we attend the Navgraha shanti Group puja?', 'Please note: This is a group pooja which will be held on 13th November from 7:00 PM onwards on LIVE EVENT of Ratan Ji.', 0, 0, '2022-11-12 04:37:28', '2022-11-12 04:55:39'),
(3, 13, 'What heppens after i place an order?', 'You will be connected to your concerned Astrologer via the chat', 1, 0, NULL, NULL),
(7, 26, 'Product FAQ 1', 'Product FAQ Answer 1', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rechargeamount`
--

CREATE TABLE `rechargeamount` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cashback` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rechargeamount`
--

INSERT INTO `rechargeamount` (`id`, `amount`, `cashback`, `created_at`, `updated_at`) VALUES
(1, 50, 5, '2023-04-25 11:36:10', '2023-04-25 11:36:10'),
(2, 100, 5, '2023-04-25 11:36:16', '2023-04-25 11:36:16'),
(3, 500, 10, '2023-04-29 05:48:52', '2023-04-29 05:48:52'),
(4, 1000, 10, '2023-04-29 05:49:03', '2023-04-29 05:49:03'),
(7, 200, 10, '2023-06-09 18:20:20', '2023-06-09 18:20:20'),
(8, 5000, 20, '2023-06-12 07:39:10', '2023-06-12 07:39:10'),
(9, 2000, 15, '2023-06-15 08:13:23', '2023-06-15 08:13:23'),
(10, 10, 5, '2023-07-15 11:44:20', '2023-07-15 11:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `report_types`
--

CREATE TABLE `report_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reportImage` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_types`
--

INSERT INTO `report_types` (`id`, `reportImage`, `title`, `description`, `isActive`, `isDelete`, `created_at`, `updated_at`) VALUES
(41, 'public/storage/images/reportType_411709054864.png', 'Business report', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, '2023-03-17 05:44:31', '2024-02-27 22:57:44'),
(42, 'public/storage/images/reportType_421709054831.png', 'Bhrigu Patrika', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, '2023-03-17 05:44:53', '2024-02-27 22:57:11'),
(46, 'public/storage/images/reportType_461709054796.png', 'Career Report', '<p>Career Report</p>', 1, 0, '2023-04-24 13:28:21', '2024-02-27 22:56:36'),
(47, 'public/storage/images/reportType_471709054750.png', 'Love Report', '<p>Love Report&nbsp;Love ReportLove ReportLove ReportLove Report report</p>', 1, 0, '2023-07-15 17:12:27', '2024-02-29 12:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `review_blocks`
--

CREATE TABLE `review_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `reviewId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rolepages`
--

CREATE TABLE `rolepages` (
  `id` int(11) NOT NULL,
  `teamRoleId` int(11) DEFAULT NULL,
  `adminPageId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rolepages`
--

INSERT INTO `rolepages` (`id`, `teamRoleId`, `adminPageId`, `created_at`, `updated_at`) VALUES
(21, 21, 1, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(22, 21, 2, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(23, 21, 3, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(24, 21, 5, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(25, 21, 6, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(26, 21, 7, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(27, 21, 9, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(28, 21, 10, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(29, 21, 11, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(30, 21, 12, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(31, 21, 16, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(32, 21, 23, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(33, 21, 24, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(34, 21, 30, '2023-05-02 04:53:05', '2023-05-02 04:53:05'),
(35, 22, 1, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(36, 22, 2, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(37, 22, 3, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(38, 22, 7, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(39, 22, 16, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(40, 22, 19, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(41, 22, 23, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(42, 22, 34, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(43, 22, 37, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(44, 22, 39, '2023-05-02 04:53:50', '2023-05-02 04:53:50'),
(56, 24, 5, '2023-05-02 12:05:12', '2023-05-02 12:05:12'),
(57, 23, 3, '2023-05-03 06:17:59', '2023-05-03 06:17:59'),
(58, 23, 7, '2023-05-03 06:17:59', '2023-05-03 06:17:59'),
(59, 23, 18, '2023-05-03 06:17:59', '2023-05-03 06:17:59'),
(60, 23, 23, '2023-05-03 06:17:59', '2023-05-03 06:17:59'),
(61, 23, 24, '2023-05-03 06:17:59', '2023-05-03 06:17:59'),
(62, 23, 29, '2023-05-03 06:17:59', '2023-05-03 06:17:59'),
(63, 23, 30, '2023-05-03 06:17:59', '2023-05-03 06:17:59'),
(64, 23, 39, '2023-05-03 06:17:59', '2023-05-03 06:17:59'),
(80, 1, 2, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(81, 1, 6, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(82, 1, 7, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(83, 1, 9, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(84, 1, 13, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(85, 1, 14, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(86, 1, 33, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(87, 1, 36, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(88, 1, 39, '2024-02-23 07:20:40', '2024-02-23 07:20:40'),
(96, 25, 5, '2024-03-26 11:18:56', '2024-03-26 11:18:56'),
(97, 25, 12, '2024-03-26 11:18:56', '2024-03-26 11:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `isActive`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 0, '2022-10-15 09:23:16', '2022-10-15 09:23:16'),
(2, 'astrologer', 1, 0, '2022-10-15 09:23:16', '2022-10-15 09:23:16'),
(3, 'user', 1, 0, '2022-10-15 09:23:57', '2022-10-15 09:23:57'),
(4, 'astrologer assistant', 1, 0, '2022-10-15 09:23:57', '2022-10-15 09:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `sessiontoken`
--

CREATE TABLE `sessiontoken` (
  `id` int(11) NOT NULL,
  `token` varchar(400) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `expire_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessiontoken`
--

INSERT INTO `sessiontoken` (`id`, `token`, `created_at`, `updated_at`, `expire_at`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM2MDA1MDcsImV4cCI6MTY3MzgxNjUwNywibmJmIjoxNjczNjAwNTA3LCJqdGkiOiJTeXJ3NDNYY0Y0ZFFTU0I1Iiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.5ZMy3oZii6BdofftxSkWJUx4LOKOxOfyIgc2x1gXRL8', '2023-01-13 14:31:48', '2023-01-13 14:31:48', '2023-01-13 14:31:48'),
(2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM2MDA2MDgsImV4cCI6MTY3MzgxNjYwOCwibmJmIjoxNjczNjAwNjA4LCJqdGkiOiJaRlpuNlVaNXVKSjNLeW51Iiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.CKmZsAjJkI6zQJBiEbPy5Y7UNus7B-aHrTee0LTppKI', '2023-01-13 14:33:29', '2023-01-13 14:33:29', '2023-01-13 14:33:29'),
(3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM2MDEyNzUsImV4cCI6MTY3MzgxNzI3NSwibmJmIjoxNjczNjAxMjc1LCJqdGkiOiI0MzdZSEl3Q3RXMEhYQnB3Iiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.qAs5rfdGgZW7VEDIfRsMAlaCKyOx1RYuXv9UCLTOm6Q', '2023-01-13 14:44:35', '2023-01-13 14:44:35', '2023-01-13 14:44:35'),
(4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM2MDgyNjQsImV4cCI6MTY3MzgyNDI2NCwibmJmIjoxNjczNjA4MjY0LCJqdGkiOiJZTzhuVVloRnljcmlUbUY5Iiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.4YyETBqt1Clyy9wcn7DJt4nqmNkykdF5eu7OE3Of3rA', '2023-01-13 16:41:04', '2023-01-13 16:41:04', '2023-01-13 16:41:04'),
(5, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NDY2ODIsImV4cCI6MTY3NDA2MjY4MywibmJmIjoxNjczODQ2NjgzLCJqdGkiOiI1MkwzaVlBU1lnUUxXMzBIIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.HyqBFu5RidbT5mru0LNnuO62b0ahwckPYnlyVZtFuhI', '2023-01-16 10:54:46', '2023-01-16 10:54:46', '2023-01-16 10:54:46'),
(6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NDc0MjEsImV4cCI6MTY3NDA2MzQyMSwibmJmIjoxNjczODQ3NDIxLCJqdGkiOiJKVDVpZXd0bDZyY0w2S3hmIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.6RJfKG1s8-bFmXnhtjiRSqrMHim0WuZQdtonpqNkoJU', '2023-01-16 11:07:05', '2023-01-16 11:07:05', '2023-01-16 11:07:05'),
(7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NTAzNDIsImV4cCI6MTY3NDA2NjM0MiwibmJmIjoxNjczODUwMzQyLCJqdGkiOiJnZVVtRWI0MEZNOVdzTnBVIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.eG01tNQ6JD47zlNPYT0GjIwNuNiHfPeFCKoPB1GrR74', '2023-01-16 11:55:45', '2023-01-16 11:55:45', '2023-01-16 11:55:45'),
(8, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NTI1ODksImV4cCI6MTY3NDA2ODU4OSwibmJmIjoxNjczODUyNTg5LCJqdGkiOiI1dFNyOGp0a2xHUFJ1OE5IIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.f9VzwWtdZnv0AeQshNHjxUc6hnJZGm35ZhrFEnh4s2M', '2023-01-16 12:33:09', '2023-01-16 12:33:09', '2023-01-16 12:33:09'),
(9, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NTM4MzUsImV4cCI6MTY3NDA2OTgzNSwibmJmIjoxNjczODUzODM1LCJqdGkiOiJIekNBMHdBRGJHbUl1Y09oIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.f2dGnE6mj61n0MWjJBhADpsa-hup8Zp7G5L3CsHr6_U', '2023-01-16 12:53:53', '2023-01-16 12:53:53', '2023-01-16 12:53:53'),
(10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NTk2NTYsImV4cCI6MTY3NDA3NTY1NiwibmJmIjoxNjczODU5NjU2LCJqdGkiOiJaTzZmR0xmOVdkdENvOWVyIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.L91weq6gF1VnOLfGAYBccnY1G7JXwURndeDo8wkIaDM', '2023-01-16 14:30:54', '2023-01-16 14:30:54', '2023-01-16 14:30:54'),
(11, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NjAyNjksImV4cCI6MTY3NDA3NjI2OSwibmJmIjoxNjczODYwMjY5LCJqdGkiOiJnOFFXY0xMN0lSM3hIeHZkIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.1mjrVNdSFNlmwMG5TDLD0IslQrOaaDSD17DcKdmFWk0', '2023-01-16 14:41:07', '2023-01-16 14:41:07', '2023-01-16 14:41:07'),
(12, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NjExNzEsImV4cCI6MTY3NDA3NzE3MSwibmJmIjoxNjczODYxMTcxLCJqdGkiOiJlYnJxNWtLUW5aWUJsaGJMIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.qYF2aiVau3GrmJ7aN5atCXryV7ke0ONX5OKJj_Sl1wM', '2023-01-16 14:56:08', '2023-01-16 14:56:08', '2023-01-16 14:56:08'),
(13, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NjQ0MzYsImV4cCI6MTY3NDA4MDQzNiwibmJmIjoxNjczODY0NDM2LCJqdGkiOiJkZkVGVHJRMGViN1o0TEg2Iiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.BY5ASromjqqt0A8KZLP4Gw8iVdDnC19SXs-A2iAfIiE', '2023-01-16 15:50:33', '2023-01-16 15:50:33', '2023-01-16 15:50:33'),
(14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4NjY3MDQsImV4cCI6MTY3NDA4MjcwNCwibmJmIjoxNjczODY2NzA0LCJqdGkiOiJiNlRRNVc1S3plZXpNYkJzIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.omKj94yDBoP8q6KO7P4v8fEy58G_kuHq9XIknspkbnE', '2023-01-16 16:28:21', '2023-01-16 16:28:21', '2023-01-16 16:28:21'),
(15, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4Njc2MzMsImV4cCI6MTY3NDA4MzYzMywibmJmIjoxNjczODY3NjMzLCJqdGkiOiJCS3Blb1lNcmQwOTJpbFVCIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.fBk2Bcis3iWnPa81QDQ1OH19Px4nLY-iS3ppwRWjpbk', '2023-01-16 16:43:51', '2023-01-16 16:43:51', '2023-01-16 16:43:51'),
(16, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM4Njg1OTEsImV4cCI6MTY3NDA4NDU5MSwibmJmIjoxNjczODY4NTkxLCJqdGkiOiJVQWtlRUNkVnJsMlRzYm93Iiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.oopWg48MZqIHJA-42IaHyJQW24l0mYRNJZb4y09pGKg', '2023-01-16 16:59:49', '2023-01-16 16:59:49', '2023-01-16 16:59:49'),
(17, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NDY5NjksImV4cCI6MTY3NDE2Mjk2OSwibmJmIjoxNjczOTQ2OTY5LCJqdGkiOiJuSGQ2dUVLRkowNEo0blpVIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.cYFz8YR-Z-mrECLUCOhkO6-RG95QRARbqotq0pjx_9o', '2023-01-17 14:46:09', '2023-01-17 14:46:09', '2023-01-17 14:46:09'),
(18, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NDg3NDgsImV4cCI6MTY3NDE2NDc0OCwibmJmIjoxNjczOTQ4NzQ4LCJqdGkiOiJlaEUyckRxSDVjNVY1MFgyIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ._vRfS6V1o8Ux5SqMk6qzn21Jzi0J3Z2nmDJZVQpw_us', '2023-01-17 15:15:48', '2023-01-17 15:15:48', '2023-01-17 15:15:48'),
(19, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTEzNTQsImV4cCI6MTY3NDE2NzM1NCwibmJmIjoxNjczOTUxMzU0LCJqdGkiOiJQeTl4TjF6NEU1c1JrcDhzIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.TiHalIHedA-nwgaIAhw_dd6ztbIdp280GiLw6ERZHWA', '2023-01-17 15:59:14', '2023-01-17 15:59:14', '2023-01-17 15:59:14'),
(20, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTE0NzcsImV4cCI6MTY3NDE2NzQ3NywibmJmIjoxNjczOTUxNDc3LCJqdGkiOiJuTDRCZWFqVnJUbWs1OFpFIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.qTs1sLsvmVNMJKZwG34laC6H4F9FO5h6LhisAEv4XM0', '2023-01-17 16:01:17', '2023-01-17 16:01:17', '2023-01-17 16:01:17'),
(21, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTE5NjksImV4cCI6MTY3NDE2Nzk2OSwibmJmIjoxNjczOTUxOTY5LCJqdGkiOiJweDVhWFRZdXl1clFVTUtqIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.Hi3iQkFgnfAZiAozO56Z3HZDV2HnmMwAWpM2NEsvOMc', '2023-01-17 16:09:29', '2023-01-17 16:09:29', '2023-01-17 16:09:29'),
(22, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTIwMTIsImV4cCI6MTY3NDE2ODAxMiwibmJmIjoxNjczOTUyMDEyLCJqdGkiOiJRSU5kY2F0bnhmS0t5anZTIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.vK2hYn49F5duqXzPi6CyQ5htepD1kExNi0IHRwUUDiQ', '2023-01-17 16:10:12', '2023-01-17 16:10:12', '2023-01-17 16:10:12'),
(23, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTQzNjEsImV4cCI6MTY3NDE3MDM2MSwibmJmIjoxNjczOTU0MzYxLCJqdGkiOiJRVUtPMmhsMUZHdldDS3BLIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.W81MCm-kr4_JI6iRmGQK5hYs-MJSxTth2SjRNLljtcw', '2023-01-17 16:49:20', '2023-01-17 16:49:20', '2023-01-17 16:49:20'),
(24, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTQ0MTksImV4cCI6MTY3NDE3MDQxOSwibmJmIjoxNjczOTU0NDE5LCJqdGkiOiJ2RmIxUDBrckFpcmtCMUxUIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.LGftslcQnifH35XH2_uOJQRxcKFuWXFA_91YXC_4gHk', '2023-01-17 16:50:19', '2023-01-17 16:50:19', '2023-01-17 16:50:19'),
(25, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTQ0ODAsImV4cCI6MTY3NDE3MDQ4MCwibmJmIjoxNjczOTU0NDgwLCJqdGkiOiJudzhOd21JTHBpYld5cWJuIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.IeZimArjhIZ1Fp63vrqiN1fkQYsEsUGV6nWdL48_byo', '2023-01-17 16:51:20', '2023-01-17 16:51:20', '2023-01-17 16:51:20'),
(26, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTc5MTEsImV4cCI6MTY3NDE3MzkxMSwibmJmIjoxNjczOTU3OTExLCJqdGkiOiJvU2J4SVpkejhsYnhLbVJhIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.--ZqNJeuq78HmI59vnwSq3kE1Gkl3aFO4HSV3OxIa34', '2023-01-17 17:48:31', '2023-01-17 17:48:31', '2023-01-17 17:48:31'),
(27, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTc5NzYsImV4cCI6MTY3NDE3Mzk3NiwibmJmIjoxNjczOTU3OTc2LCJqdGkiOiJ5SVZHTHVEZlhXNTN4OHFFIiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.cSYXqEL19OxvjoZsFe96sCA0BwKQTnvGm5G6y8WiRQM', '2023-01-17 17:49:36', '2023-01-17 17:49:36', '2023-01-17 17:49:36'),
(28, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4yOS4yMjM6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE2NzM5NTgyOTcsImV4cCI6MTY3NDE3NDI5NywibmJmIjoxNjczOTU4Mjk3LCJqdGkiOiJkSUhJTGQwNGduYW1ocDJ1Iiwic3ViIjoiNSIsInBydiI6ImVkZjJmY2MwZmM2MDc4NTI0Yjc3ZmIxYmQwYzg2N2Q2NzA0Zjg0ZjAifQ.40n-7nfavcZoKB_4WlDIBoJnAyuzo5CxPgLlyHAfk_w', '2023-01-17 17:54:57', '2023-01-17 17:54:57', '2023-01-17 17:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `displayOrder`, `isActive`, `isDelete`, `created_at`, `updated_at`, `createdBy`, `modifiedBy`) VALUES
(1, 'Life Coach', NULL, 1, 1, '2022-10-18 05:00:46', '2022-11-25 06:03:13', 3, 3),
(2, 'Psychologist', NULL, 1, 0, '2022-10-18 05:33:28', '2022-11-25 01:41:26', 3, 3),
(26, 'Prashana', NULL, 1, 0, '2022-11-13 22:26:42', '2023-03-29 08:45:01', 5, 5),
(35, 'Vedic', NULL, 1, 0, '2023-01-07 05:23:53', '2023-03-29 08:44:56', 1, 1),
(50, 'Palmistry', NULL, 1, 0, '2023-04-04 12:56:44', '2023-04-04 12:56:44', 5, 5),
(51, 'Marriage Counselling', NULL, 0, 0, '2023-04-04 12:56:59', '2024-03-29 10:16:32', 5, 5),
(52, 'Career', NULL, 1, 0, '2023-04-04 12:57:14', '2023-04-04 12:57:14', 5, 5),
(54, 'Relationship', NULL, 1, 0, '2023-06-09 23:54:17', '2023-06-09 23:54:27', 5, 5),
(55, 'Vastu', NULL, 1, 0, '2023-06-12 13:00:43', '2023-06-12 13:00:43', 5, 5),
(56, 'Tarot Reading', NULL, 0, 0, '2023-06-12 13:00:54', '2024-03-29 10:16:46', 5, 5),
(57, 'Numerology', NULL, 1, 0, '2023-06-15 11:27:28', '2024-03-29 10:16:58', 5, 5),
(58, 'Technology', NULL, 0, 0, '2023-07-15 17:08:29', '2024-03-29 10:16:40', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `story_view_counts`
--

CREATE TABLE `story_view_counts` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `storyId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `category_name` varchar(100) NOT NULL DEFAULT '',
  `category_image` varchar(200) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `parent_id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 69, 'Vedic astrology', '', NULL, NULL),
(2, 69, 'Tarot reading', '', NULL, NULL),
(3, 69, 'Numberology', '', NULL, NULL),
(4, 69, 'Psychic reading', '', NULL, NULL),
(5, 69, 'Marital life', '', NULL, NULL),
(6, 69, 'Love & Relationship', '', NULL, NULL),
(7, 69, 'Carrer & Job', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `systemflag`
--

CREATE TABLE `systemflag` (
  `id` int(11) NOT NULL,
  `valueType` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `isActive` varchar(45) DEFAULT '1',
  `isDelete` varchar(45) DEFAULT '0',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `displayName` varchar(100) DEFAULT NULL,
  `flagGroupId` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `viewenable` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systemflag`
--

INSERT INTO `systemflag` (`id`, `valueType`, `name`, `value`, `isActive`, `isDelete`, `created_at`, `updated_at`, `displayName`, `flagGroupId`, `description`, `parent_id`, `viewenable`) VALUES
(0, 'File', 'Astromall', 'public/storage/images/Astromall1711688425.png', '1', '0', '2023-04-05 10:32:46', '2023-04-05 10:32:46', 'Astroshop', 12, '', 0, 1),
(1, 'Number', 'Gst', '18', '1', '0', NULL, NULL, 'GST Rate', 2, 'Set Default GST', 0, 1),
(2, 'Text', 'AstrologyApiUserId', '621429', '1', '0', NULL, NULL, 'Astrology Api UserId', 9, '', 0, 0),
(3, 'Text', 'AstrologyApiKey', 'd21173ef997e8d5595a3ecf4766944ce', '1', '0', NULL, NULL, 'AstrologyApi Key', 9, '', 0, 0),
(14, 'Text', 'RapidApiKey', NULL, '1', '0', '2022-12-17 05:10:31', '2022-12-17 05:10:31', 'Rapid API Key', 10, '', 0, 0),
(15, 'Text', 'RapidApiHost', NULL, '1', '0', '2022-12-17 05:12:42', '2022-12-17 05:12:42', 'Rapid API Host', 10, '', 0, 0),
(16, 'Text', 'GoogleAccessKey', NULL, '1', '0', '2023-01-18 11:41:08', '2023-01-18 11:41:08', 'Google Access Key', 8, '', 0, 0),
(17, 'Text', 'GoogleSecretKey', NULL, '1', '0', '2023-01-18 11:43:00', '2023-01-18 11:43:00', 'Google Secret Key', 8, '', 0, 0),
(18, 'Text', 'GoogleBucketName', 'astroway', '1', '0', '2023-01-18 11:43:26', '2023-01-18 11:43:26', 'Google Bucket Name', 8, '', 0, 0),
(19, 'Text', 'AgoraKey', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Agora Key', 7, '', 0, 0),
(20, 'Text', 'AgoraSecret', NULL, '1', '0', '2023-01-18 11:44:46', '2023-01-18 11:44:46', 'Agora Secret', 7, '', 0, 0),
(21, 'Text', 'AgoraAppCertificate', NULL, '1', '0', '2023-01-19 04:06:06', '2023-01-19 04:06:06', 'Agora App Certificate', 7, '', 0, 0),
(22, 'Text', 'AgoraAppId', NULL, '1', '0', '2023-01-19 04:06:36', '2023-01-19 04:06:36', 'Agora AppId', 7, '', 0, 0),
(24, 'Radio', 'PaymentMode', 'RazorPay', '1', '0', '2023-02-03 07:00:10', '2023-02-03 07:00:10', 'Select the Payment Gateway', 2, '', 0, 1),
(27, 'Text', 'Apple', '#m', '1', '0', '2023-03-16 09:07:17', '2023-03-16 09:07:17', 'Apple Link', 5, '', 0, 1),
(28, 'Text', 'Website', 'google.com', '1', '0', '2023-03-16 09:07:17', '2023-03-16 09:07:17', 'Website', 5, '', 0, 1),
(29, 'Text', 'Youtube', 'google.com', '1', '0', '2023-03-16 09:08:59', '2023-03-16 09:08:59', 'Youtube Link', 5, '', 0, 1),
(30, 'Text', 'Facebook', '#', '1', '0', '2023-03-16 09:08:59', '2023-03-16 09:08:59', 'Facebook Link', 5, '', 0, 1),
(33, 'Text', 'LinkedIn', '#', '1', '0', '2023-03-16 09:10:15', '2023-03-16 09:10:15', 'LinkedIn Link', 5, '', 0, 1),
(34, 'Text', 'Pintrest', '#', '1', '0', '2023-03-16 09:10:15', '2023-03-16 09:10:15', 'Pinterest Link', 5, '', 0, 1),
(37, 'Text', 'Instagram', '#', '1', '0', '2023-03-16 09:15:31', '2023-03-16 09:15:31', 'Instagram Link', 5, '', 0, 1),
(39, 'Number', 'ChatCommission', '47', '1', '0', '2023-03-31 07:04:26', '2023-03-31 07:04:26', 'Chat Commission (%)', 11, '', 0, 1),
(40, 'Number', 'CallCommission', '47', '1', '0', '2023-03-31 07:04:26', '2023-03-31 07:04:26', 'Call Commission (%)', 11, '', 0, 1),
(43, 'Number', 'ReportCommission', '47', '1', '0', '2023-03-31 07:05:47', '2023-03-31 07:05:47', 'Report Commission (%)', 11, '', 0, 1),
(44, 'Number', 'VideoCallCommission', '47', '1', '0', '2023-03-31 07:05:47', '2023-03-31 07:05:47', 'VideoCall Commission(%)', 11, '', 0, 1),
(47, 'Text', 'AppName', 'Astroway', '1', '0', '2023-04-05 10:31:13', '2023-04-05 10:31:13', 'Customer App Name', 1, '', 0, 1),
(48, 'File', 'DailyHoroscope', 'public/storage/images/DailyHoroscope1711688425.png', '1', '0', '2023-04-05 10:31:13', '2023-04-05 10:31:13', 'Daily Horoscope', 12, '', 0, 1),
(51, 'File', 'FreeKundali', 'public/storage/images/FreeKundali1707194841.png', '1', '0', '2023-04-05 10:32:07', '2023-04-05 10:32:07', 'Kundali', 12, '', 0, 1),
(52, 'File', 'KundaliMatching', 'public/storage/images/KundaliMatching1707194841.png', '1', '0', '2023-04-05 10:32:07', '2023-04-05 10:32:07', 'Kundali Matching', 12, '', 0, 1),
(56, 'File', 'TodayPanchang', 'public/storage/images/TodayPanchang1707194841.png', '1', '0', '2023-04-05 10:32:46', '2023-04-05 10:32:46', 'Today Panchang', 12, '', 0, 1),
(59, 'MultiSelect', 'Language', '1,2,3,4,5,17,123', '1', '0', '2023-04-08 10:21:17', '2023-04-08 10:21:17', 'App Language', 1, '', 0, 1),
(61, 'Text', 'PartnerAppName', 'Astrologer App partner', '1', '0', '2023-04-13 04:52:57', '2023-04-13 04:52:57', 'Partner App Name', 1, '', 0, 1),
(63, 'File', 'AdminLogo', 'public/storage/images/AdminLogo1712034903.png', '1', '0', '2023-04-20 11:23:52', '2023-04-20 11:23:52', 'Admin Logo', 12, '', 0, 1),
(65, 'Radio', 'FirstFreeChat', '1', '1', '0', '2023-04-26 04:49:42', '2023-04-26 04:49:42', 'Enable first chat/call free', 1, '', 0, 1),
(66, 'Video', 'BehindScenes', 'public/storage/images/BehindScenes1706550666.mp4', '1', '0', '2023-04-21 05:30:58', '2023-04-21 05:30:58', 'Upload Brand Intro Video', 1, '', 0, 1),
(67, 'Text', 'vedicAstroAPI', NULL, '1', '0', '2023-12-27 17:45:05', '2023-12-27 17:45:05', 'Vedic Astrology Api', 9, '', 0, 0),
(69, 'File', 'Category', 'public/storage/images/Category1707194841.png', '1', '0', '2023-04-05 10:32:46', '2023-04-05 10:32:46', 'Category', 12, '', 0, 1),
(70, 'File', 'Blog', 'public/storage/images/Blog1707194841.png', '1', '0', '2023-04-05 10:32:46', '2023-04-05 10:32:46', 'Blog', 12, '', 0, 1),
(105, 'Text', 'paypalSandboxBusinessEmail', 'Enter Paypal Sandbox Email..', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paypal Sandbox Business Email', 32, ' ', 0, 1),
(106, 'Text', 'paypalProductionBusinessEmail', 'Enter Paypal Business Email', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paypal Production Business Email', 32, ' ', 0, 1),
(107, 'Text', 'paypalSandboxUrl', 'https://www.sandbox.paypal.com/cgi-bin/webscr', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paypal Sandbox Url', 32, ' ', 0, 1),
(108, 'Text', 'paypalProdUrl', 'https://www.paypal.com/cgi-bin/webscr', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paypal Prod Url', 32, ' ', 0, 1),
(109, 'Text', 'paytmMerchantTestingMidKey', 'Enter your Test Mid Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paytm Merchant Testing Mid Key', 33, ' ', 0, 1),
(110, 'Text', 'paytmMerchantTestingSecretKey', 'Enter your Test Secret Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paytm Merchant Testing Secret Key', 33, ' ', 0, 1),
(111, 'Text', 'paytmMerchantLiveMidKey', 'Enter your Live Mid Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paytm Merchant Live Mid Key', 33, ' ', 0, 1),
(112, 'Text', 'paytmMerchantLiveSecretKey', 'Enter your Live Secret Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paytm Merchant Live Secret Key', 33, ' ', 0, 1),
(113, 'Text', 'paytmTxnUrl', 'https://securegw-stage.paytm.in/theia/processTransaction', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paytm Txn Url', 33, ' ', 0, 1),
(114, 'Text', 'instamojoTestingApiKey', 'Enter your Test Api Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Instamojo Testing Api Key', 34, ' ', 0, 1),
(115, 'Text', 'instamojoTestingAuthTokenKey', 'Enter your Test Auth Token Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Instamojo Testing Auth Token Key', 34, ' ', 0, 1),
(116, 'Text', 'instamojoLiveApiKey', 'Enter your Live Api Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Instamojo Live Api Key', 34, ' ', 0, 1),
(117, 'Text', 'instamojoLiveAuthTokenKey', 'Enter your Live Auth Token keys', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Instamojo Live Auth Token Key', 34, ' ', 0, 1),
(118, 'Text', 'instamojoSandboxRedirectUrl', 'https://test.instamojo.com/api/1.1/', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Instamojo Sandbox Redirect Url', 34, ' ', 0, 1),
(119, 'Text', 'instamojoProdRedirectUrl', 'https://www.instamojo.com/api/1.1/', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Instamojo Prod Redirect Url', 34, ' ', 0, 1),
(120, 'Text', 'paystackTestingSecretKey', NULL, '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paystack Testing Secret Key', 35, ' ', 0, 1),
(121, 'Text', 'paystackTestingPublicKey', NULL, '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paystack Testing Public Key', 35, ' ', 0, 1),
(122, 'Text', 'paystackLiveSecretKey', 'Enter your Live Secret Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paystack Live Secret Key', 35, ' ', 0, 1),
(123, 'Text', 'paystackLivePublicKey', 'Enter your Live Publish Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Paystack Live Public Key', 35, ' ', 0, 1),
(124, 'Text', 'stripeTestingSecretKey', NULL, '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Stripe Testing Secret Key', 36, ' ', 0, 1),
(125, 'Text', 'stripeTestingPublishKey', 'Enter your Test Publish Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Stripe Testing Publish Key', 36, ' ', 0, 1),
(126, 'Text', 'stripeLiveSecretKey', NULL, '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Stripe Live Secret Key', 36, ' ', 0, 1),
(127, 'Text', 'stripeLivePublishKey', 'Enter your Live Publish Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Stripe Live Publish Key', 36, ' ', 0, 1),
(128, 'Text', 'razorpayTestingkeyId', NULL, '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Razorpay Testingkey Id', 37, ' ', 0, 1),
(129, 'Text', 'razorpayTestingSecretkey', NULL, '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Razorpay Testing Secretkey', 37, ' ', 0, 1),
(130, 'Text', 'razorpayLivekeyId', NULL, '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Razorpay Livekey Id', 37, ' ', 0, 1),
(131, 'Text', 'razorpayLiveSecretkey', NULL, '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Razorpay Live Secretkey', 37, ' ', 0, 1),
(132, 'Text', 'iyzicoTestingApiKey', 'Enter your Test Api Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Iyzico Testing Api Key', 38, ' ', 0, 1),
(133, 'Text', 'iyzicoTestingSecretkey', 'Enter your Test Secret Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Iyzico Testing Secretkey', 38, ' ', 0, 1),
(134, 'Text', 'iyzicoLiveApiKey', 'Enter your Live Api Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Iyzico Live Api Key', 38, ' ', 0, 1),
(135, 'Text', 'iyzicoLiveSecretkey', 'Enter your Live Secret Key', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Iyzico Live Secretkey', 38, ' ', 0, 1),
(136, 'Text', 'iyzicoSandboxModeUrl', 'https://sandbox-api.iyzipay.com', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Iyzico Sandbox Mode Url', 38, ' ', 0, 1),
(137, 'Text', 'iyzicoProductionModeUrl', 'https://api.iyzipay.com', '1', '0', '2024-02-19 19:27:25', '2024-02-19 19:27:25', 'Iyzico Production Mode Url', 38, ' ', 0, 1),
(139, 'Text', 'authorizeNetTestApiLoginId', 'Enter your Test API Login Id', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Authorize Net Test Api Login Id', 39, ' ', 0, 1),
(140, 'Text', 'authorizeNetTestTransactionKey', 'Enter your Test Secret Transaction Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Authorize Net Test Transaction Key', 39, ' ', 0, 1),
(141, 'Text', 'authorizeNetLiveApiLoginId', 'Enter your Live API Login Id', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Authorize Net Live Api Login Id', 39, ' ', 0, 1),
(142, 'Text', 'authorizeNetLiveTransactionKey', 'Enter your Live Secret Transaction Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Authorize Net Live Transaction Key', 39, ' ', 0, 1),
(144, 'Text', 'testAccessToken', 'Your Test Access Token', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Access Token', 40, ' ', 0, 1),
(145, 'Text', 'liveAccessToken', 'Your Live Access Token', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Live Access Token', 40, ' ', 0, 1),
(147, 'Text', 'merchantTestKey', 'Your Test Merchant Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Merchant Test Key', 41, ' ', 0, 1),
(148, 'Text', 'merchantTestSalt', 'Your Test Salt Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Merchant Test Salt', 41, ' ', 0, 1),
(149, 'Text', 'merchantLiveKey', 'Your Live Merchant Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Merchant Live Key', 41, ' ', 0, 1),
(150, 'Text', 'merchantLiveSalt', 'Your Live Salt Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Merchant Live Salt', 41, ' ', 0, 1),
(152, 'Text', 'testApiKey', 'Your Test API Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Api Key', 42, ' ', 0, 1),
(153, 'Text', 'liveApiKey', 'Your Live API Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Live Api Key', 42, ' ', 0, 1),
(155, 'Text', 'testPublicApiKey', 'Your Test Public API Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Public Api Key', 43, ' ', 0, 1),
(156, 'Text', 'testSecretApiKey', 'Your Test Secret API Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Secret Api Key', 43, ' ', 0, 1),
(157, 'Text', 'livePublicApiKey', 'Your Live Public API Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Live Public Api Key', 43, ' ', 0, 1),
(158, 'Text', 'liveSecretApiKey', 'Your Live Secret API Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Live Secret Api Key', 43, ' ', 0, 1),
(160, 'Text', 'testToken', 'Your Sandbox Token', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Token', 44, ' ', 0, 1),
(161, 'Text', 'liveToken', 'Your Live Production Token', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Live Token', 44, ' ', 0, 1),
(163, 'Text', 'testToken', 'Your Sandbox Token', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Token', 45, ' ', 0, 1),
(164, 'Text', 'liveToken', 'Your Live Production Token', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Live Token', 45, ' ', 0, 1),
(166, 'Text', 'paypalTestingClientKey', 'Enter your Test Client Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Paypal Testing Client Key', 46, ' ', 0, 1),
(167, 'Text', 'paypalTestingSecretKey', 'Enter your Test Secret Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Paypal Testing Secret Key', 46, ' ', 0, 1),
(168, 'Text', 'paypalLiveClientKey', 'Enter your Live Client Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Paypal Live Client Key', 46, ' ', 0, 1),
(169, 'Text', 'paypalLiveSecretKey', 'Enter your Live Secret Key', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Paypal Live Secret Key', 46, ' ', 0, 1),
(174, 'Text', 'testMode32', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 32, ' ', 0, 1),
(175, 'Text', 'testMode33', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 33, ' ', 0, 1),
(176, 'Text', 'testMode34', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 34, ' ', 0, 1),
(177, 'Text', 'testMode35', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 35, ' ', 0, 1),
(178, 'Text', 'testMode36', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 36, ' ', 0, 1),
(179, 'Text', 'testMode37', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 37, ' ', 0, 1),
(180, 'Text', 'testMode38', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 38, ' ', 0, 1),
(181, 'Text', 'testMode39', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 39, ' ', 0, 1),
(182, 'Text', 'testMode40', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 40, ' ', 0, 1),
(183, 'Text', 'testMode41', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 41, ' ', 0, 1),
(184, 'Text', 'testMode42', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 42, ' ', 0, 1),
(185, 'Text', 'testMode43', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 43, ' ', 0, 1),
(186, 'Text', 'testMode44', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 44, ' ', 0, 1),
(187, 'Text', 'testMode45', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 45, ' ', 0, 1),
(188, 'Text', 'testMode46', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Test Mode', 46, ' ', 0, 1),
(189, 'Text', 'currency32', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 32, '', 0, 1),
(190, 'Text', 'currencySymbol32', 'R', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 32, '', 0, 1),
(191, 'Text', 'currency33', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 33, '', 0, 1),
(192, 'Text', 'currencySymbol33', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 33, '', 0, 1),
(193, 'Text', 'currency34', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 34, '', 0, 1),
(194, 'Text', 'currencySymbol34', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 34, '', 0, 1),
(195, 'Text', 'currency35', 'ZAR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 35, '', 0, 1),
(196, 'Text', 'currencySymbol35', 'ZAR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 35, '', 0, 1),
(197, 'Text', 'currency36', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 36, '', 0, 1),
(198, 'Text', 'currencySymbol36', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 36, '', 0, 1),
(199, 'Text', 'currency37', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 37, '', 0, 1),
(200, 'Text', 'currencySymbol37', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 37, '', 0, 1),
(201, 'Text', 'currency38', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 38, '', 0, 1),
(202, 'Text', 'currencySymbol38', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 38, '', 0, 1),
(203, 'Text', 'currency39', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 39, '', 0, 1),
(204, 'Text', 'currencySymbol39', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 39, '', 0, 1),
(205, 'Text', 'currency40', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 40, '', 0, 1),
(206, 'Text', 'currencySymbol40', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)Currency Symbol', 40, '', 0, 1),
(207, 'Text', 'currency41', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 41, '', 0, 1),
(208, 'Text', 'currencySymbol41', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 41, '', 0, 1),
(209, 'Text', 'currency42', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 42, '', 0, 1),
(210, 'Text', 'currencySymbol42', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 42, '', 0, 1),
(211, 'Text', 'currency43', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 43, '', 0, 1),
(212, 'Text', 'currencySymbol43', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 43, '', 0, 1),
(213, 'Text', 'currency44', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 44, '', 0, 1),
(214, 'Text', 'currencySymbol44', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 44, '', 0, 1),
(215, 'Text', 'currency45', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 45, '', 0, 1),
(216, 'Text', 'currencySymbol45', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 45, '', 0, 1),
(217, 'Text', 'currency46', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency (Kindly check the currency with gateway before saving)', 46, '', 0, 1),
(218, 'Text', 'currencySymbol46', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 46, '', 0, 1),
(221, 'Text', 'currency', 'INR', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency', 1, '', 0, 1),
(222, 'Text', 'currencySymbol', '₹', '1', '0', '2023-04-08 11:54:01', '2023-04-08 11:54:01', 'Currency Symbol', 1, '', 0, 1),
(223, 'Number', 'defaultcalltime', '300', '1', '0', '2023-03-31 07:05:47', '2023-03-31 07:05:47', 'Default Time(in seconds)', 11, '', 0, 1),
(229, 'Text', 'AWSAccessKey', NULL, '1', '0', '2023-01-18 11:41:08', '2023-01-18 11:41:08', 'AWS Access key', 48, '', 0, 1),
(230, 'Text', 'AWSSecretKey', NULL, '1', '0', '2023-01-18 11:41:08', '2023-01-18 11:41:08', 'AWS Secret Access key', 48, '', 0, 1),
(231, 'Text', 'AWSDefaultRegion', 'ap-south-1', '1', '0', '2023-01-18 11:41:08', '2023-01-18 11:41:08', 'AWS Default Region', 48, '', 0, 1),
(232, 'Text', 'AWSBucket', 'astroway', '1', '0', '2023-01-18 11:41:08', '2023-01-18 11:41:08', 'AWS Bucket', 48, '', 0, 1),
(233, 'Text', 'AWSUsePathStyleEndpoint', 'false', '1', '0', '2023-01-18 11:41:08', '2023-01-18 11:41:08', 'AWS Use Path Style Endpoint', 48, '', 0, 1),
(234, 'Text', 'firebaseapiKey', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Firebase Api Key', 50, '', 0, 0),
(235, 'Text', 'firebasedatabaseURL', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Firebase Database Url', 50, '', 0, 0),
(236, 'Text', 'firebaseauthDomain', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Firebase Auth Domain', 50, '', 0, 0),
(237, 'Text', 'firebaseprojectId', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Firebase Project Id', 50, '', 0, 0),
(238, 'Text', 'firebasestorageBucket', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Firebase Storage Bucket', 50, '', 0, 0),
(239, 'Text', 'firebasemessagingSenderId', '381086206621', '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Firebase Messaging Sender Id', 50, '', 0, 0),
(240, 'Text', 'firebaseappId', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Firebase App Id', 50, '', 0, 0),
(241, 'Text', 'firebasemeasurementId', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Firebase Measurement Id', 50, '', 0, 0),
(242, 'Text', 'googleMapApiKey', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Google Map Api Key', 51, '', 0, 0),
(243, 'Text', 'otplessAppId', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Otp Less App Id', 52, '', 0, 0),
(244, 'Text', 'otplessClientId', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Otp Less Client Id', 52, '', 0, 0),
(245, 'Text', 'otplessSecretKey', NULL, '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Otp Less Secret Key', 52, '', 0, 0),
(257, 'Text', 'phonepeMerchantId', 'PGTESTPAYUAT86', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Phonepe Merchant Id', 54, ' ', 0, 1),
(258, 'Text', 'phonepeSaltIndex', '1', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Phonepe Salt Index', 54, ' ', 0, 1),
(259, 'Text', 'phonepeSaltKey', NULL, '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Phonepe Salt Key', 54, ' ', 0, 1),
(260, 'Text', 'phonepeMerchantUserId', 'MUID123', '1', '0', '2024-02-19 19:39:54', '2024-02-19 19:39:54', 'Merchant UserId', 54, ' ', 0, 1),
(261, 'Number', 'sitenumber', '74859623569', '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Site Mobile Number', 56, '', 0, 0),
(262, 'Text', 'siteemail', 'asddssd@gmail.com', '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', ' Site Email', 56, '', 0, 0),
(263, 'Text', 'siteaddress', 'Dr Vikram Sarabhai Marg, University Area Amdavad Gujarat 380015', '1', '0', '2023-01-18 11:44:06', '2023-01-18 11:44:06', 'Site Address', 56, '', 0, 0),
(264, 'File', 'TopBanner', 'public/storage/images/TopBanner1719319849.png', '1', '0', '2023-04-21 05:30:58', '2023-04-21 05:30:58', 'Upload Top Banner Image', 1, '', 0, 1),
(265, 'MultiSelectWebLang', 'WebLanguage', '[\"en\",\"gu\",\"hi\",\"mr\",\"tr\"]', '1', '0', '2023-04-08 10:21:17', '2023-04-08 10:21:17', 'Web Language', 1, '', 0, 1),
(266, 'Radio', 'storege_provider', 'Aws', '1', '0', '2023-02-03 07:00:10', '2023-02-03 07:00:10', 'Select the Bucket Provider', 57, '', 0, 1),
(267, 'Number', 'GiftCommission', '47', '1', '0', '2023-03-31 07:04:26', '2023-03-31 07:04:26', 'Gift Commission (%)', 11, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teammember`
--

CREATE TABLE `teammember` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `contactNo` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 1,
  `isDelete` tinyint(4) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `profile` longtext DEFAULT NULL,
  `teamRoleId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teammember`
--

INSERT INTO `teammember` (`id`, `name`, `contactNo`, `email`, `password`, `isActive`, `isDelete`, `created_at`, `updated_at`, `profile`, `teamRoleId`, `userId`) VALUES
(17, 'Nishi', '7645345678', 'nishipshah2812@gmail.com', '$2y$10$t//k4LA74dEVEUCWs393k.I/OYndoyugvlT0wMBrlVfJ6nVmUFzdS', 1, 1, '2023-05-02 11:00:10', '2023-05-02 11:00:46', 'public/storage/images/teamMember_3331683005431.png', 23, 333),
(18, 'Nishi', '6787678987', 'nishipshah2812@gmail.com', '$2y$10$TdXIeb5u.81pywtVkvLaauD/3W8iMJ1uFUk2GBC3hCigmwh.vXGV2', 1, 1, '2023-05-02 11:38:08', '2023-05-02 11:38:08', 'public/storage/images/teamMember_3341683007688.png', 23, 334),
(20, 'Nishi', '7284927949', 'nishipshah2812@gmail.com', '$2y$10$4ClhTRqZALgk3WH.TORpKedOsVwVnpLLoaMUXPiYRd/E/MF8Msdsy', 1, 1, '2023-05-02 18:20:18', '2023-05-03 11:47:13', NULL, 23, 336),
(21, 'new', '7657657653', 'newrole@demo.com', '$2y$10$hiWQWeUmSOiNx96B59YscuKT4cYUS519hUF3APPl.7F8z.AZaVhv6', 1, 1, '2023-05-04 13:35:48', '2023-05-04 13:35:48', 'public/storage/images/teamMember_3371683187548.png', 25, 337),
(22, 'diploy', '9999999999', 'diploy@diploy.com', '$2y$10$OL3hZzgJJEWFuhevtNpOTu0fJcd7Cg3gkOV5YXBWYcGsCvNrz6iOG', 1, 0, '2024-02-22 10:35:03', '2024-02-23 19:48:41', NULL, 23, 597),
(23, 'Bhushan Borse', '9664609887', 'bhusanborse@gmail.com', '$2y$10$enlITIJiCgetFAjfBJa/yOB/wVgkGdVNJbEZjCf2Sr9lirdRtomcm', 1, 1, '2024-02-23 12:46:22', '2024-02-23 12:46:22', 'public/storage/images/teamMember_5981708672582.png', 1, 598),
(24, 'diploy', '9999999999', 'diploy@diploy.in', '$2y$10$5DwmHhsk2BdkGs58C5rUm.hjgo7yXkWkOXFFdF87Lxoxt1dcPGeK.', 1, 0, '2024-02-23 19:49:33', '2024-02-23 19:49:33', NULL, 1, 599),
(25, 'sarthak', '9717919135', 'sarthak@gmail.com', '$2y$10$imAeTwUefxgEvUncC/Iiku00C9Z59.I8OkjeuvMEhvOY2ZcPdHBE6', 1, 0, '2024-03-26 16:48:01', '2024-03-26 16:48:01', NULL, 25, 721);

-- --------------------------------------------------------

--
-- Table structure for table `teamrole`
--

CREATE TABLE `teamrole` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teamrole`
--

INSERT INTO `teamrole` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2023-04-29 16:18:53', '2023-04-29 16:21:26'),
(23, 'Sub Admin', '2023-05-02 10:25:20', '2023-05-02 10:25:20'),
(25, 'new role', '2023-05-04 13:34:57', '2023-05-04 13:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `ticketreview`
--

CREATE TABLE `ticketreview` (
  `id` int(11) NOT NULL,
  `review` longtext DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `ticketId` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `helpSupportId` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ticketNumber` varchar(255) NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `chatId` varchar(45) DEFAULT NULL,
  `ticketStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_countries`
--

CREATE TABLE `travel_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NoOfCountriesTravell` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_countries`
--

INSERT INTO `travel_countries` (`id`, `NoOfCountriesTravell`, `created_at`, `updated_at`) VALUES
(1, '0', '2022-11-07 07:18:37', '2022-11-07 07:18:37'),
(2, '1-2', '2022-11-07 07:18:37', '2022-11-07 07:18:37'),
(3, '3-5', '2022-11-07 07:19:12', '2022-11-07 07:19:12'),
(4, '6+', '2022-11-07 07:19:12', '2022-11-07 07:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contactNo` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `birthTime` varchar(50) DEFAULT NULL,
  `profile` text DEFAULT NULL,
  `birthPlace` varchar(50) DEFAULT NULL,
  `addressLine1` text DEFAULT NULL,
  `addressLine2` text DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(400) DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `countryCode` varchar(45) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contactNo`, `email`, `password`, `birthDate`, `birthTime`, `profile`, `birthPlace`, `addressLine1`, `addressLine2`, `location`, `pincode`, `gender`, `isActive`, `isDelete`, `created_at`, `updated_at`, `fcm_token`, `token`, `expirationDate`, `countryCode`, `deleted_at`) VALUES
(1, 'astroway admin', '', 'admin@gmail.com', '$2y$10$Wq6OlqhZmqFr6ZjVdM3dbezxQFgQUMfySYJkFplpoCInq1IXr.WeO', NULL, NULL, 'public/storage/images/profile_11709049724.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-27 21:28:09', '2024-05-02 09:37:00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_call_histories`
--

CREATE TABLE `user_call_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `callHistoryNumber` int(11) NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `callStatus` varchar(255) NOT NULL,
  `deductionAmount` double NOT NULL,
  `callDuration` int(11) NOT NULL,
  `callType` varchar(255) NOT NULL,
  `isIncoming` tinyint(1) NOT NULL,
  `callAudioFile` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthDate` datetime NOT NULL,
  `birthTime` varchar(255) NOT NULL,
  `birthPlace` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_chats`
--

CREATE TABLE `user_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chatId` int(11) NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat_histories`
--

CREATE TABLE `user_chat_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `chatStatus` varchar(255) NOT NULL,
  `deductionAmount` double NOT NULL,
  `chatDuration` int(11) NOT NULL,
  `chatType` varchar(255) NOT NULL,
  `chatHistoryNumber` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthDate` datetime NOT NULL,
  `birthPlace` varchar(255) NOT NULL,
  `birthTime` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_device_details`
--

CREATE TABLE `user_device_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `appId` varchar(20) NOT NULL,
  `deviceId` varchar(255) DEFAULT NULL,
  `fcmToken` varchar(255) DEFAULT NULL,
  `deviceLocation` varchar(255) DEFAULT NULL,
  `deviceManufacturer` varchar(255) DEFAULT NULL,
  `deviceModel` varchar(255) DEFAULT NULL,
  `appVersion` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `isDelete` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_device_details`
--

INSERT INTO `user_device_details` (`id`, `userId`, `appId`, `deviceId`, `fcmToken`, `deviceLocation`, `deviceManufacturer`, `deviceModel`, `appVersion`, `isActive`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 751, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-06-28 11:33:19', '2024-06-28 11:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_followings`
--

CREATE TABLE `user_followings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `notificationId` bigint(20) UNSIGNED DEFAULT NULL,
  `chatRequestId` int(11) DEFAULT NULL,
  `callRequestId` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `notification_type` int(11) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `orderAddressId` bigint(20) UNSIGNED NOT NULL,
  `astromallProductId` bigint(20) UNSIGNED NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_reports`
--

CREATE TABLE `user_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthDate` datetime NOT NULL,
  `birthTime` varchar(255) NOT NULL,
  `birthPlace` varchar(255) NOT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `maritalStatus` varchar(255) DEFAULT NULL,
  `answerLanguage` varchar(255) DEFAULT NULL,
  `partnerName` varchar(255) DEFAULT NULL,
  `partnerBirthDate` datetime DEFAULT NULL,
  `partnerBirthTime` varchar(255) DEFAULT NULL,
  `partnerBirthPlace` varchar(255) DEFAULT NULL,
  `comments` varchar(255) NOT NULL,
  `reportFile` longtext DEFAULT NULL,
  `reportType` int(11) DEFAULT NULL,
  `astrologerId` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `countryCode` varchar(45) DEFAULT NULL,
  `reportRate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_reviews`
--

CREATE TABLE `user_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL,
  `review` varchar(255) NOT NULL,
  `astrologerId` bigint(20) UNSIGNED DEFAULT NULL,
  `astromallProductId` bigint(20) UNSIGNED DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `isPublic` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `roleId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `userId`, `roleId`, `created_at`, `updated_at`) VALUES
(1, 751, 3, '2024-06-28 11:33:19', '2024-06-28 11:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `waitlist`
--

CREATE TABLE `waitlist` (
  `id` int(11) NOT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `profile` varchar(400) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `channelName` varchar(45) DEFAULT NULL,
  `requestType` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `status` varchar(45) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userFcmToken` varchar(400) DEFAULT NULL,
  `astrologerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallettransaction`
--

CREATE TABLE `wallettransaction` (
  `id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `transactionType` varchar(45) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `isCredit` tinyint(1) DEFAULT NULL,
  `astrologerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawmethods`
--

CREATE TABLE `withdrawmethods` (
  `id` int(11) NOT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `method_id` int(10) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawmethods`
--

INSERT INTO `withdrawmethods` (`id`, `method_name`, `method_id`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Bank Account', 1, 1, '2024-04-01 08:55:36', '2024-04-01 08:55:36'),
(2, 'UPI', 2, 1, '2024-04-01 08:55:45', '2024-04-01 08:55:45'),
(3, 'Cash', 3, 1, '2024-04-01 08:55:53', '2024-04-01 08:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawrequest`
--

CREATE TABLE `withdrawrequest` (
  `id` int(11) NOT NULL,
  `astrologerId` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawAmount` decimal(10,2) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 1,
  `isDelete` tinyint(4) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `paymentMethod` varchar(45) DEFAULT NULL,
  `upiId` varchar(45) DEFAULT NULL,
  `accountNumber` varchar(45) DEFAULT NULL,
  `ifscCode` varchar(45) DEFAULT NULL,
  `accountHolderName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `astrologerId` bigint(20) UNSIGNED NOT NULL,
  `withdrawAmount` double NOT NULL,
  `status` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminpages`
--
ALTER TABLE `adminpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_get_commissions`
--
ALTER TABLE `admin_get_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_get_commissions_commissiontypeid_foreign` (`commissionTypeId`),
  ADD KEY `admin_get_commissions_commissionid_foreign` (`commissionId`);

--
-- Indexes for table `app_reviews`
--
ALTER TABLE `app_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_reviews_userid_foreign` (`userId`);

--
-- Indexes for table `assistantchat`
--
ALTER TABLE `assistantchat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `astrohost`
--
ALTER TABLE `astrohost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrohost_astrologer_idx` (`astrologerId`);

--
-- Indexes for table `astrologers`
--
ALTER TABLE `astrologers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologers_astrologercategoryid_foreign` (`astrologerCategoryId`),
  ADD KEY `astrologers_userid_foreign` (`userId`);

--
-- Indexes for table `astrologer_assistants`
--
ALTER TABLE `astrologer_assistants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologer_assistants_astrologerid_foreign` (`astrologerId`);

--
-- Indexes for table `astrologer_assistant_permissions`
--
ALTER TABLE `astrologer_assistant_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologer_assistant_permissions_permissionid_foreign` (`permissionId`),
  ADD KEY `astrologer_assistant_permissions_astrologerassistantid_foreign` (`astrologerAssistantId`);

--
-- Indexes for table `astrologer_availabilities`
--
ALTER TABLE `astrologer_availabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologer_availabilities_astrologerid_foreign` (`astrologerId`);

--
-- Indexes for table `astrologer_categories`
--
ALTER TABLE `astrologer_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `astrologer_expertises`
--
ALTER TABLE `astrologer_expertises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologer_expertises_astrologerid_foreign` (`astrologerId`),
  ADD KEY `astrologer_expertises_astrologerassistantid_foreign` (`astrologerAssistantId`),
  ADD KEY `astrologer_expertises_skillid_foreign` (`skillId`);

--
-- Indexes for table `astrologer_followers`
--
ALTER TABLE `astrologer_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologer_followers_astrologerid_foreign` (`astrologerId`),
  ADD KEY `astrologer_followers_userid_foreign` (`userId`);

--
-- Indexes for table `astrologer_gifts`
--
ALTER TABLE `astrologer_gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologer_gifts_astrologerid_foreign` (`astrologerId`),
  ADD KEY `astrologer_gifts_userid_foreign` (`userId`),
  ADD KEY `astrologer_gifts_giftid_foreign` (`giftId`);

--
-- Indexes for table `astrologer_product`
--
ALTER TABLE `astrologer_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologer_product_astromall_product_idx` (`productId`),
  ADD KEY `astrologer_product_astrologer_idx` (`astrologerId`);

--
-- Indexes for table `astrologer_stories`
--
ALTER TABLE `astrologer_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `astrologer_wait_lists`
--
ALTER TABLE `astrologer_wait_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astrologer_wait_lists_userid_foreign` (`userId`),
  ADD KEY `astrologer_wait_lists_astrologerid_foreign` (`astrologerId`);

--
-- Indexes for table `astrology_videos`
--
ALTER TABLE `astrology_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `astromall_products`
--
ALTER TABLE `astromall_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `astromall_products_productcategoryid_foreign` (`productCategoryId`);

--
-- Indexes for table `astrotalk_in_news`
--
ALTER TABLE `astrotalk_in_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_bannertypeid_foreign` (`bannerTypeId`);

--
-- Indexes for table `banner_types`
--
ALTER TABLE `banner_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blockassistant`
--
ALTER TABLE `blockassistant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blockastrologer`
--
ALTER TABLE `blockastrologer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blockuserreview`
--
ALTER TABLE `blockuserreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blogcategoryid_foreign` (`blogCategoryId`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_images`
--
ALTER TABLE `blog_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_images_blogid_foreign` (`blogId`);

--
-- Indexes for table `blog_readers`
--
ALTER TABLE `blog_readers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_readers_blogid_foreign` (`blogId`),
  ADD KEY `blog_readers_userid_foreign` (`userId`);

--
-- Indexes for table `callaudio`
--
ALTER TABLE `callaudio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `callrequest`
--
ALTER TABLE `callrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `callrequest_astrologer_idx` (`astrologerId`),
  ADD KEY `callrequest_user_idx` (`userId`);

--
-- Indexes for table `cdemo`
--
ALTER TABLE `cdemo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatrequest`
--
ALTER TABLE `chatrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chatrequest_astrologer_idx` (`astrologerId`),
  ADD KEY `chat_request_users_idx` (`userId`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commissions_commissiontypeid_foreign` (`commissionTypeId`),
  ADD KEY `commissions_astrologers_idx` (`astrologerId`);

--
-- Indexes for table `commission_types`
--
ALTER TABLE `commission_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailyhoroscope`
--
ALTER TABLE `dailyhoroscope`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailyhoroscopeinsight`
--
ALTER TABLE `dailyhoroscopeinsight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailyhoroscopestatics`
--
ALTER TABLE `dailyhoroscopestatics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `defaultprofile`
--
ALTER TABLE `defaultprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_or_diplomas`
--
ALTER TABLE `degree_or_diplomas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flaggroup`
--
ALTER TABLE `flaggroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fulltime_jobs`
--
ALTER TABLE `fulltime_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_supports`
--
ALTER TABLE `help_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_support_quations`
--
ALTER TABLE `help_support_quations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `help_support_quations_helpsupportid_foreign` (`helpSupportId`);

--
-- Indexes for table `help_support_quation_answers`
--
ALTER TABLE `help_support_quation_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `help_support_quation_answers_helpsupportid_foreign` (`helpSupportId`),
  ADD KEY `help_support_quation_answers_helpsupportquationid_foreign` (`helpSupportQuationId`);

--
-- Indexes for table `highest_qualifications`
--
ALTER TABLE `highest_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hororscope_signs`
--
ALTER TABLE `hororscope_signs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horoscope`
--
ALTER TABLE `horoscope`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horoscopefeedback`
--
ALTER TABLE `horoscopefeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horoscopes`
--
ALTER TABLE `horoscopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intakeform`
--
ALTER TABLE `intakeform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kundalis`
--
ALTER TABLE `kundalis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kundali_matchings`
--
ALTER TABLE `kundali_matchings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liveastro`
--
ALTER TABLE `liveastro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liveastro_astrologers_idx` (`astrologerId`);

--
-- Indexes for table `livechat`
--
ALTER TABLE `livechat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liveuser`
--
ALTER TABLE `liveuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_source_of_businesses`
--
ALTER TABLE `main_source_of_businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_control`
--
ALTER TABLE `mst_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_addresses_userid_foreign` (`userId`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payments_orderid_foreign` (`orderId`),
  ADD KEY `order_payments_astrologerid_foreign` (`astrologerId`);

--
-- Indexes for table `order_request`
--
ALTER TABLE `order_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_astromallproductid_foreign` (`astromallProductId`);

--
-- Indexes for table `rechargeamount`
--
ALTER TABLE `rechargeamount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_types`
--
ALTER TABLE `report_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_blocks`
--
ALTER TABLE `review_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_blocks_userid_foreign` (`userId`),
  ADD KEY `review_blocks_reviewid_foreign` (`reviewId`);

--
-- Indexes for table `rolepages`
--
ALTER TABLE `rolepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessiontoken`
--
ALTER TABLE `sessiontoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`);

--
-- Indexes for table `story_view_counts`
--
ALTER TABLE `story_view_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systemflag`
--
ALTER TABLE `systemflag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teammember`
--
ALTER TABLE `teammember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamrole`
--
ALTER TABLE `teamrole`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketreview`
--
ALTER TABLE `ticketreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_userid_foreign` (`userId`),
  ADD KEY `tickets_helpsupportId_idx` (`helpSupportId`);

--
-- Indexes for table `travel_countries`
--
ALTER TABLE `travel_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_call_histories`
--
ALTER TABLE `user_call_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_call_histories_userid_foreign` (`userId`),
  ADD KEY `user_call_histories_astrologerid_foreign` (`astrologerId`);

--
-- Indexes for table `user_chats`
--
ALTER TABLE `user_chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_chats_userid_foreign` (`userId`),
  ADD KEY `user_chats_astrologerid_foreign` (`astrologerId`);

--
-- Indexes for table `user_chat_histories`
--
ALTER TABLE `user_chat_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_chat_histories_userid_foreign` (`userId`),
  ADD KEY `user_chat_histories_astrologerid_foreign` (`astrologerId`);

--
-- Indexes for table `user_device_details`
--
ALTER TABLE `user_device_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_device_details_userid_foreign` (`userId`);

--
-- Indexes for table `user_followings`
--
ALTER TABLE `user_followings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_followings_userid_foreign` (`userId`),
  ADD KEY `user_followings_astrologerid_foreign` (`astrologerId`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_notifications_userid_foreign` (`userId`),
  ADD KEY `user_notifications_notificationid_foreign` (`notificationId`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_orders_userid_foreign` (`userId`),
  ADD KEY `user_orders_orderaddressid_foreign` (`orderAddressId`),
  ADD KEY `user_orders_astromallproductid_foreign` (`astromallProductId`);

--
-- Indexes for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reports_userid_foreign` (`userId`);

--
-- Indexes for table `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reviews_userid_foreign` (`userId`),
  ADD KEY `user_reviews_astrologerid_foreign` (`astrologerId`),
  ADD KEY `test` (`astromallProductId`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_userid_foreign` (`userId`),
  ADD KEY `user_roles_roleid_foreign` (`roleId`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_wallets_userid_foreign` (`userId`);

--
-- Indexes for table `waitlist`
--
ALTER TABLE `waitlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallettransaction`
--
ALTER TABLE `wallettransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawmethods`
--
ALTER TABLE `withdrawmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawrequest`
--
ALTER TABLE `withdrawrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawrequest_astrologer_idx` (`astrologerId`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_astrologerid_foreign` (`astrologerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminpages`
--
ALTER TABLE `adminpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `admin_get_commissions`
--
ALTER TABLE `admin_get_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_reviews`
--
ALTER TABLE `app_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `assistantchat`
--
ALTER TABLE `assistantchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrohost`
--
ALTER TABLE `astrohost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrologers`
--
ALTER TABLE `astrologers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `astrologer_assistants`
--
ALTER TABLE `astrologer_assistants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrologer_assistant_permissions`
--
ALTER TABLE `astrologer_assistant_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrologer_availabilities`
--
ALTER TABLE `astrologer_availabilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrologer_categories`
--
ALTER TABLE `astrologer_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `astrologer_expertises`
--
ALTER TABLE `astrologer_expertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrologer_followers`
--
ALTER TABLE `astrologer_followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrologer_gifts`
--
ALTER TABLE `astrologer_gifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrologer_product`
--
ALTER TABLE `astrologer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `astrologer_stories`
--
ALTER TABLE `astrologer_stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrologer_wait_lists`
--
ALTER TABLE `astrologer_wait_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `astrology_videos`
--
ALTER TABLE `astrology_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `astromall_products`
--
ALTER TABLE `astromall_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `astrotalk_in_news`
--
ALTER TABLE `astrotalk_in_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `banner_types`
--
ALTER TABLE `banner_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blockassistant`
--
ALTER TABLE `blockassistant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blockastrologer`
--
ALTER TABLE `blockastrologer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blockuserreview`
--
ALTER TABLE `blockuserreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_images`
--
ALTER TABLE `blog_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_readers`
--
ALTER TABLE `blog_readers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `callaudio`
--
ALTER TABLE `callaudio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `callrequest`
--
ALTER TABLE `callrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cdemo`
--
ALTER TABLE `cdemo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `chatrequest`
--
ALTER TABLE `chatrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `commission_types`
--
ALTER TABLE `commission_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dailyhoroscope`
--
ALTER TABLE `dailyhoroscope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailyhoroscopeinsight`
--
ALTER TABLE `dailyhoroscopeinsight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailyhoroscopestatics`
--
ALTER TABLE `dailyhoroscopestatics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `defaultprofile`
--
ALTER TABLE `defaultprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `degree_or_diplomas`
--
ALTER TABLE `degree_or_diplomas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flaggroup`
--
ALTER TABLE `flaggroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `fulltime_jobs`
--
ALTER TABLE `fulltime_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `help_supports`
--
ALTER TABLE `help_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `help_support_quations`
--
ALTER TABLE `help_support_quations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `help_support_quation_answers`
--
ALTER TABLE `help_support_quation_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `highest_qualifications`
--
ALTER TABLE `highest_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hororscope_signs`
--
ALTER TABLE `hororscope_signs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `horoscope`
--
ALTER TABLE `horoscope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `horoscopefeedback`
--
ALTER TABLE `horoscopefeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `horoscopes`
--
ALTER TABLE `horoscopes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intakeform`
--
ALTER TABLE `intakeform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kundalis`
--
ALTER TABLE `kundalis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kundali_matchings`
--
ALTER TABLE `kundali_matchings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `liveastro`
--
ALTER TABLE `liveastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1276;

--
-- AUTO_INCREMENT for table `livechat`
--
ALTER TABLE `livechat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `liveuser`
--
ALTER TABLE `liveuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_source_of_businesses`
--
ALTER TABLE `main_source_of_businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `mst_control`
--
ALTER TABLE `mst_control`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_request`
--
ALTER TABLE `order_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rechargeamount`
--
ALTER TABLE `rechargeamount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `report_types`
--
ALTER TABLE `report_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `review_blocks`
--
ALTER TABLE `review_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rolepages`
--
ALTER TABLE `rolepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sessiontoken`
--
ALTER TABLE `sessiontoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `story_view_counts`
--
ALTER TABLE `story_view_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `systemflag`
--
ALTER TABLE `systemflag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `teammember`
--
ALTER TABLE `teammember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teamrole`
--
ALTER TABLE `teamrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ticketreview`
--
ALTER TABLE `ticketreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel_countries`
--
ALTER TABLE `travel_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT for table `user_call_histories`
--
ALTER TABLE `user_call_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_chats`
--
ALTER TABLE `user_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_chat_histories`
--
ALTER TABLE `user_chat_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_device_details`
--
ALTER TABLE `user_device_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_followings`
--
ALTER TABLE `user_followings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reports`
--
ALTER TABLE `user_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reviews`
--
ALTER TABLE `user_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `waitlist`
--
ALTER TABLE `waitlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `wallettransaction`
--
ALTER TABLE `wallettransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawmethods`
--
ALTER TABLE `withdrawmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdrawrequest`
--
ALTER TABLE `withdrawrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_get_commissions`
--
ALTER TABLE `admin_get_commissions`
  ADD CONSTRAINT `admin_get_commissions_commissionid_foreign` FOREIGN KEY (`commissionId`) REFERENCES `commissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_get_commissions_commissiontypeid_foreign` FOREIGN KEY (`commissionTypeId`) REFERENCES `commission_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `app_reviews`
--
ALTER TABLE `app_reviews`
  ADD CONSTRAINT `app_reviews_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `astrologers`
--
ALTER TABLE `astrologers`
  ADD CONSTRAINT `astrologers_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
