-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 06:45 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itts`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `system_id`, `name`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Master Data Management', 'Master Data Management', 'Tanvir Rahim', '2019-10-20 18:00:00', '2019-10-20 18:00:00'),
(5, 1, 'Troubleshooting', 'Troubleshooting', 'Tanvir Rahim', '2019-10-20 18:00:00', '2019-10-20 18:00:00'),
(10, 1, 'Report Management', 'Report Management', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(14, 1, 'New Business Develpoment', 'New Business Develpoment', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(18, 1, 'Incident management', 'Incident management', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(22, 1, 'Datawarehouse management', 'Datawarehouse management', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(25, 1, 'Maintenance', 'Maintenance', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(30, 1, 'Administration', 'Administration', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(35, 1, 'Interface Management', 'Interface Management', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(39, 1, 'Project', 'Project', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SCM', 'Supply Chain Management', 'Tanvir Rahim', '2019-10-20 18:00:00', '2019-10-20 18:00:00'),
(2, 'PSD', 'Product Support Division', 'Tanvir Rahim', '2020-03-27 18:00:00', '2020-03-27 18:00:00'),
(3, 'F&A', 'Finance & Accounts', 'Tanvir Rahim', '2020-03-27 18:00:00', '2020-03-27 18:00:00'),
(4, 'IT&ERP', 'IT&ERP Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(5, 'LBA', 'LBA Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(6, 'Sales', 'Sales Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(7, 'Alied', 'Alied Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(8, 'CRM', 'CRM Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(9, 'Marine', 'Marine Division', '', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(10, 'HR', 'HR Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(11, 'Admin', 'Admin Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(12, 'Service', 'Service Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(13, 'CPU', 'CPU Division', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(14, 'Rental', 'Rental Company', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(15, 'Infor', 'infor', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(16, 'AISL', 'Acorn Infrastructure Services Ltd.', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(17, 'Internal Audit\r\n', 'Internal Audit\r\n', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(18, 'DMT', 'Internal Audit\r\n', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2020_03_24_203936_tickets', 3),
(6, '2020_03_24_205812_systems', 4),
(7, '2020_03_24_205819_categories', 4),
(25, '2020_03_26_105506_create_systems_table', 5),
(26, '2020_03_26_105520_create_categories_table', 5),
(27, '2020_03_26_110108_create_tickets_table', 5),
(28, '2020_03_26_110630_create_divisions_table', 5),
(37, '2020_03_26_132009_create_divisions_table', 6),
(38, '2020_03_26_133057_create_systems_table', 6),
(39, '2020_03_26_133123_create_categories_table', 6),
(40, '2020_03_26_133133_create_tickets_table', 6),
(41, '2020_03_28_155822_create_statuses_table', 7),
(42, '2020_04_01_150716_create_reports_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tanvir.rahim@banglacat.com', '$2y$10$keLUEYJ6svG0wyR3z8A0ieiR0f3Ouom4jZzPa.gQA5KZmZmpgPzTG', '2020-05-04 08:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Done', 'Ticket completed', 'Tanvir Rahim', '2020-03-27 18:00:00', '2020-03-27 18:00:00'),
(2, 'On Progress', 'Work on progress', 'Tanvir Rahim', '2020-03-27 18:00:00', '2020-03-27 18:00:00'),
(3, 'Hold', 'Ticket On-Hold', 'Tanvir', '2020-03-27 18:00:00', '2020-03-27 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE `systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `name`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'M3', 'M3', 'Tanvir Rahim', '2019-10-20 18:00:00', '2019-10-20 18:00:00'),
(2, 'SMS', 'SMS', 'Tanvir Rahim', '2019-10-20 18:00:00', '2020-03-25 18:00:00'),
(3, 'Server', 'Server Related Jobs', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(4, 'UYVMS', 'VAT Software', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(5, 'Landmark', 'Landmark', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00'),
(6, 'Project', 'Project', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raised_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `severity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statuses_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `name`, `description`, `raised_by`, `division_id`, `user_id`, `system_id`, `category_id`, `severity`, `severity_comments`, `statuses_id`, `created_at`, `updated_at`) VALUES
(28, 'Get a host ip from Network department', NULL, 'Tanvir Rahim', 4, 1, 6, 39, '', NULL, 1, '2020-04-05 06:21:39', '2020-04-05 07:23:12'),
(29, 'Check daily bakup', NULL, 'Tanvir Rahim', 4, 1, 3, 25, '', NULL, 1, '2020-04-05 06:22:24', '2020-04-05 07:23:18'),
(30, 'Check M3 health', NULL, 'Tanvir Rahim', 4, 1, 1, 25, '', NULL, 1, '2020-04-05 06:23:28', '2020-04-05 07:23:26'),
(31, 'Prepare Laravel Application Server', 'An Application server for Lavavel', 'Tanvir Rahim', 4, 1, 6, 39, '', NULL, 1, '2020-04-05 07:30:02', '2020-04-05 13:46:01'),
(32, 'invoice value mismatched with co value', 'invoice value mismatched with co value', 'jafar khan', 3, 2, 1, 5, '', NULL, 2, '2020-04-05 09:41:48', '2020-04-05 09:41:48'),
(33, 'Price File Updating', 'Downloading Price Files and Updating them in INTGRSRV2 and Lawson M3.', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-05 11:51:18', '2020-04-05 12:07:35'),
(34, 'Server Checking', 'Checking available space and full functioning status of WEBSRV, DATAWHSRV and INTGRSRV2 servers', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-05 12:07:21', '2020-04-05 12:07:41'),
(35, 'SMS Login Problem', NULL, 'Farhana Yeasmin', 2, 3, 2, 5, '', NULL, 2, '2020-04-05 12:14:50', '2020-04-05 12:14:50'),
(36, 'Datawarehouse Job Checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-05 12:15:40', '2020-04-05 12:15:40'),
(37, 'Working with incident 14111688', 'RPD support to Infor support', 'Sharmin Shawon', 4, 1, 1, 18, '', NULL, 1, '2020-04-05 14:49:06', '2020-04-05 14:50:44'),
(38, 'Check daily bakup', 'Daily backup of as400', 'Tanvir Rahim', 4, 1, 3, 25, '', NULL, 1, '2020-04-06 04:47:52', '2020-04-06 06:32:48'),
(39, 'MOS100 Access problem', 'M3 program access problem', 'Abu Al Masud', 12, 1, 1, 5, '', NULL, 1, '2020-04-06 04:51:47', '2020-04-06 06:32:58'),
(40, 'Budget approval', 'Budget approval total of 260000 BDT for the discount slab project', 'Abdullah Al Kafy', 3, 1, 6, 14, '', NULL, 1, '2020-04-06 06:32:26', '2020-04-06 07:03:40'),
(41, 'RDP access problem', 'RDP access problem for Infor support Laarni', 'Laarni Almodovar', 15, 1, 1, 18, '', NULL, 1, '2020-04-06 07:01:07', '2020-04-06 09:18:35'),
(42, 'M3 access problem', 'M3 got disconnection frequently', 'Progga Laboni', 3, 1, 1, 5, '', NULL, 1, '2020-04-06 09:07:46', '2020-04-06 13:59:20'),
(43, 'Webex with Infor support', 'Webex with infor support Laarni Almodovar for her access issue', 'Laarni Almodovar', 15, 1, 1, 18, '', NULL, 1, '2020-04-06 09:17:24', '2020-04-06 13:59:59'),
(44, 'webex with infor', 'WEBEX SESSION FOR invoice value mismatched with co value', 'jafar khan', 3, 2, 1, 18, '', NULL, 1, '2020-04-06 10:16:18', '2020-04-22 12:40:05'),
(45, 'data extract for incident', 'data extract for incident invoice value mismatched with co value', 'jafar khan', 3, 2, 1, 18, '', NULL, 1, '2020-04-06 10:17:02', '2020-04-22 12:39:07'),
(46, 'Price File Updating', NULL, 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-06 12:03:20', '2020-04-06 12:06:37'),
(47, 'Server Checking', NULL, 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-06 12:06:24', '2020-04-06 12:06:42'),
(48, 'Scorecard', NULL, 'Annatoma Islam', 4, 4, 1, 10, '', NULL, 1, '2020-04-06 12:07:48', '2020-04-07 10:04:34'),
(49, 'Datawarehouse Job Checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-06 13:08:45', '2020-04-06 13:08:45'),
(50, 'Datawarehouse Job Checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-06 13:09:07', '2020-04-06 13:09:07'),
(51, 'Price File Updating', 'Updating Price files both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-07 12:12:41', '2020-04-07 12:14:33'),
(52, 'Server Checking', 'Checking status and available free space in server', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-07 12:13:47', '2020-04-07 12:14:40'),
(53, 'SMS Engagement Report', NULL, 'Annatoma Islam', 4, 4, 2, 10, '', NULL, 1, '2020-04-07 12:14:18', '2020-04-08 12:18:24'),
(54, 'Customer report with creation date and opportunity', NULL, 'Md. Shahriar Khaled', 8, 3, 2, 10, '', NULL, 2, '2020-04-07 12:18:07', '2020-04-07 12:18:07'),
(55, 'sms login issue', NULL, 'farhana', 2, 2, 2, 5, '', NULL, 1, '2020-04-07 12:23:31', '2020-04-22 12:38:43'),
(56, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-07 12:37:47', '2020-04-07 12:37:47'),
(57, 'invoice value mismatched with co value', 'invoice value mismatched with co value', 'jafar khan', 3, 2, 1, 1, '', NULL, 2, '2020-04-08 08:57:25', '2020-04-08 08:57:25'),
(58, 'Price File Updating', 'Updating Item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-08 12:17:04', '2020-04-08 12:18:31'),
(59, 'Server Checking', 'Checking the status and available free space amount in DATAWHSRV, WEBSRV and INGRSRV2', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-08 12:18:05', '2020-04-08 12:18:35'),
(60, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-08 13:15:30', '2020-04-08 13:15:30'),
(61, 'Warranty Settlement Report', NULL, 'Rumana Akhter', 3, 3, 1, 10, '', NULL, 2, '2020-04-08 13:16:18', '2020-04-08 13:16:18'),
(62, 'Daily check', 'Daily check for all server and erp functionality', 'Tanvir Rahim', 4, 1, 3, 25, '', NULL, 1, '2020-04-07 02:22:28', '2020-04-08 14:54:34'),
(63, 'New Software Development', 'New Software Development -iTTS', 'Tanvir Rahim', 4, 1, 6, 39, '', NULL, 1, '2020-04-07 04:33:25', '2020-04-08 14:54:40'),
(64, 'Prepare host for iTTS', 'Prepare host for iTTS', 'Tanvir Rahim', 4, 1, 6, 39, '', NULL, 1, '2020-04-07 07:47:44', '2020-04-08 14:54:49'),
(65, 'SMS remote access problem', 'SMS remote access problem', 'Farhana Yesmin', 2, 1, 2, 5, '', NULL, 1, '2020-04-07 09:36:56', '2020-04-08 14:54:57'),
(66, 'Setting up Xenserver', 'Setting up Xenserver for iTTS project', 'Tanvir Rahim', 4, 1, 6, 39, '', NULL, 1, '2020-04-07 11:53:12', '2020-04-08 14:55:04'),
(67, 'Check all catalist server', 'Check all catalist server', 'Tanvir Rahim', 4, 1, 3, 25, '', NULL, 1, '2020-04-08 14:51:57', '2020-04-08 14:55:10'),
(68, 'inforsupport VPN not working', 'inforsupport VPN not working', 'Laarni Almodovar', 15, 1, 1, 5, '', NULL, 1, '2020-04-08 14:53:10', '2020-04-08 14:55:16'),
(69, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-09 12:34:56', '2020-04-09 12:34:56'),
(70, 'Quotation Report to DAUD', 'Raised by DMT', 'Amir Mikhail', 18, 3, 2, 10, '', NULL, 2, '2020-04-09 12:36:22', '2020-04-29 11:35:08'),
(71, 'Meeting With DMT', NULL, 'Sameh Naguib', 18, 3, 1, 39, '', NULL, 2, '2020-04-09 12:37:23', '2020-04-29 11:36:31'),
(72, 'Price File Updating', 'Updating Item Price both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-09 13:41:27', '2020-04-09 13:46:17'),
(73, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV, DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-09 13:42:16', '2020-04-09 13:46:22'),
(74, 'Item status updating', 'Checking status of items having replaced parts available in Lawson', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-09 13:43:14', '2020-04-09 13:46:27'),
(75, 'PIT File Error Checking', 'Checking if any error occurs after PIT file updating in INTGRSRV2', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-09 13:45:57', '2020-04-09 13:46:31'),
(76, 'All system check', 'All system check', 'Tanvir Rahim', 4, 1, 3, 25, '', NULL, 1, '2020-04-09 14:28:15', '2020-04-09 15:22:21'),
(77, 'VAT Challan problem', 'VAT Challan problem', 'Khaled Reza', 1, 1, 1, 5, '', NULL, 1, '2020-04-09 14:29:06', '2020-04-09 15:22:29'),
(78, 'mco create issue', 'mco create issue', 'farhana', 2, 2, 1, 5, '', NULL, 1, '2020-04-10 12:42:49', '2020-04-22 12:40:12'),
(79, 'bi view issue', 'bi view issue', 'khaled reza', 1, 2, 1, 5, '', NULL, 1, '2020-04-10 12:43:39', '2020-04-22 12:40:59'),
(80, 'corrective invoice create issue', 'corrective invoice create issue', 'jafar khan', 3, 2, 1, 5, '', NULL, 2, '2020-04-10 12:44:31', '2020-04-10 12:44:31'),
(81, 'IT Inventory System for AISL requirement analysis', 'IT Inventory System for AISL requirement analysis', 'Mohammad Al Mamun', 16, 1, 7, 40, '', NULL, 1, '2020-04-11 13:19:41', '2020-04-13 13:40:27'),
(82, 'CRS145 access', 'CRS145 access', 'Jafar Khan', 3, 1, 1, 41, '', NULL, 1, '2020-04-11 13:22:38', '2020-04-13 13:40:39'),
(83, 'Price File Updating', 'Updating item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-12 13:13:55', '2020-04-12 13:18:27'),
(84, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV & DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-12 13:17:20', '2020-04-12 13:18:43'),
(85, 'iTTS modification', 'iTTS modification', 'Tanvir Rahim', 4, 1, 7, 40, '', NULL, 1, '2020-04-12 04:42:24', '2020-04-12 11:44:35'),
(86, 'Daily Jobs', 'Daily Jobs', 'Tanvir Rahim', 4, 1, 1, 25, '', NULL, 1, '2020-04-13 13:43:50', '2020-04-15 10:05:28'),
(87, 'New Software Development', 'New Software Development for AISL', 'Bazlur Rashid', 4, 1, 7, 40, '', NULL, 1, '2020-04-13 13:44:16', '2020-04-15 10:05:33'),
(88, 'Customer Report to finance', NULL, 'Md. Abu Horaira', 3, 3, 1, 10, '', NULL, 2, '2020-04-13 13:56:16', '2020-04-13 13:56:16'),
(89, 'Meeting With DMT', NULL, 'Sameh Naguib', 18, 3, 1, 39, '', NULL, 2, '2020-04-13 13:56:38', '2020-04-29 11:36:17'),
(90, 'Price File Updating', 'Updating item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-13 14:03:47', '2020-04-13 14:07:16'),
(91, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-13 14:04:32', '2020-04-13 14:07:21'),
(92, 'Item Creation', 'Creating new item in Lawson M3', 'Kazi Golam Ruhul Shariful Islam', 1, 4, 1, 1, '', NULL, 1, '2020-04-13 14:07:09', '2020-04-13 14:07:25'),
(93, 'corrective invoice create issue incident', 'corrective invoice create issue incident update', 'jafar khan', 3, 2, 1, 18, '', NULL, 2, '2020-04-15 09:23:42', '2020-04-15 09:23:42'),
(94, 'hr collaboration meeting', 'hr collaboration meeting', 'habibur rahman', 10, 2, 6, 30, '', NULL, 1, '2020-04-15 10:04:46', '2020-04-22 12:40:22'),
(95, 'Meeting with Hola', 'Meeting with Hola for VAT setup in M3', 'Shrinivas Holla', 15, 1, 1, 14, '', NULL, 1, '2020-04-15 10:06:19', '2020-04-15 10:17:08'),
(96, 'Inforsupport01 not working', 'Inforsupport01 not working', 'Laarni Almodovar', 15, 1, 1, 18, '', NULL, 1, '2020-04-15 10:06:48', '2020-04-15 10:17:15'),
(97, 'testing corrective invoicing issue', 'testing corrective invoicing issue', 'jafar khan', 3, 2, 1, 5, '', NULL, 1, '2020-04-15 10:06:49', '2020-04-22 12:40:36'),
(98, 'configure inforsupport02', 'configure inforsupport02, test and provide it to infor consultent', 'Shrinivas Holla', 15, 1, 1, 14, '', NULL, 1, '2020-04-15 10:07:25', '2020-04-15 10:17:21'),
(99, 'Check all catalist server', 'Check all catalist server', 'Tanvir Rahim', 4, 1, 3, 25, '', NULL, 1, '2020-04-15 10:08:57', '2020-04-15 10:17:28'),
(100, 'testing vpn for infor support', 'testing vpn for infor support', 'tanvir rahim', 4, 2, 1, 41, '', NULL, 1, '2020-04-15 10:09:00', '2020-04-22 12:40:48'),
(101, 'New Software Development', 'New Software Development for AISL', 'Bazlur Rashid', 4, 1, 7, 40, '', NULL, 1, '2020-04-15 10:10:24', '2020-04-16 14:09:41'),
(102, 'Price File Updating', 'Updating item price both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-15 14:21:18', '2020-04-15 14:22:15'),
(103, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-15 14:22:07', '2020-04-15 14:22:20'),
(104, 'Price File Updating', 'Updating item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-16 13:14:49', '2020-04-16 13:19:58'),
(105, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-16 13:18:25', '2020-04-16 13:20:09'),
(106, 'PIT File Error Checking', 'PIT File Error Checking', 'Annatoma Islam', 4, 4, 3, 1, '', NULL, 1, '2020-04-16 13:19:06', '2020-04-16 13:20:20'),
(107, 'Item status updating', 'Item status updating', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-16 13:19:40', '2020-04-16 13:20:28'),
(108, 'New Software Development', 'New Software Development for AISL', 'Bazlur Rashid', 4, 1, 7, 40, '', NULL, 1, '2020-04-16 14:10:06', '2020-04-23 00:08:59'),
(109, 'Price File Updating', 'Updating Item Prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-19 11:57:18', '2020-04-19 11:57:37'),
(110, 'Server Checking', 'Checking Status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-19 11:58:16', '2020-04-19 11:59:16'),
(111, 'Reman Item Updating', 'Reman Item Updating', 'Mamun Hoque', 1, 4, 1, 1, '', NULL, 1, '2020-04-19 11:59:07', '2020-04-23 13:16:13'),
(112, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-19 12:16:56', '2020-04-19 12:16:56'),
(113, 'CO unlock', NULL, 'Md. Rafsunjani', 2, 3, 1, 5, '', NULL, 2, '2020-04-19 12:17:33', '2020-04-19 12:17:33'),
(114, 'Meeting With DMT', NULL, 'Amir Mikhail', 18, 3, 1, 10, '', NULL, 2, '2020-04-19 12:18:01', '2020-04-29 11:36:02'),
(115, 'Inventory Report', NULL, 'Amir Mikhail', 18, 3, 1, 10, '', NULL, 2, '2020-04-19 12:18:32', '2020-04-29 11:35:44'),
(116, 'usd price update for cat part', 'usd price update for cat part', 'khandokar mohid', 5, 2, 1, 1, '', NULL, 1, '2020-04-20 12:06:43', '2020-04-22 12:39:55'),
(117, 'testing corrective invoicing issue', 'testing corrective invoicing issue', 'jafar khan', 3, 2, 1, 5, '', NULL, 2, '2020-04-20 12:07:26', '2020-04-20 12:07:26'),
(118, 'Server Checking', 'Checking available free space and status of INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-20 13:00:26', '2020-04-20 13:00:40'),
(119, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-21 12:28:58', '2020-04-21 12:29:52'),
(120, 'Price File Updating', 'Updating Item prices both in lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-21 12:29:45', '2020-04-21 12:29:57'),
(121, 'vat testing', 'create customer orders for vat invoicing stream file testing', 'jafar khan', 3, 2, 1, 39, '', NULL, 2, '2020-04-21 12:34:09', '2020-04-21 12:34:09'),
(122, 'vat testing', 'create customer orders for vat', 'rumana akhter', 3, 2, 1, 39, '', NULL, 2, '2020-04-22 12:35:01', '2020-04-22 12:35:01'),
(123, 'item type list', 'item type list', 'jafar khan', 3, 2, 1, 1, '', NULL, 1, '2020-04-22 12:35:31', '2020-04-22 12:39:36'),
(124, 'pull spss data from two cubes', 'pull spss data from two cubes', 'mofassarul islam', 12, 2, 1, 10, '', NULL, 1, '2020-04-22 12:36:51', '2020-04-22 12:39:21'),
(125, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-22 13:34:48', '2020-04-22 13:38:13'),
(126, 'Price File Updating', 'Updating item price in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-22 13:35:48', '2020-04-22 13:38:20'),
(127, 'CO unlock', 'CO unlock', 'FARHANA YEASMIN', 2, 4, 1, 5, '', NULL, 1, '2020-04-22 13:38:00', '2020-04-22 13:38:36'),
(128, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-23 11:25:49', '2020-04-23 11:25:49'),
(129, 'Meeting With DMT', NULL, 'Sameh Naguib', 18, 3, 2, 14, '', NULL, 2, '2020-04-23 11:26:46', '2020-04-29 11:35:24'),
(130, 'SMS Engagement Report', NULL, 'Md. Shahriar Khaled', 8, 3, 2, 10, '', NULL, 2, '2020-04-23 11:27:17', '2020-04-23 11:27:17'),
(131, 'Parts Lost Sale Report', NULL, 'Md. Shahriar Khaled', 8, 3, 2, 10, '', NULL, 2, '2020-04-23 11:27:55', '2020-04-23 11:27:55'),
(132, 'Price File Updating', 'Updating item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-23 13:19:50', '2020-04-23 13:28:41'),
(133, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-23 13:21:20', '2020-04-23 13:30:04'),
(134, 'Item status updating', 'Item status updating', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-23 13:22:40', '2020-04-23 13:30:20'),
(135, 'PIT File Error Checking', 'PIT File Error Checking', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-23 13:25:14', '2020-04-23 13:30:30'),
(136, 'CO unlock', 'CO unlock', 'FARHANA YEASMIN', 2, 4, 1, 5, '', NULL, 1, '2020-04-23 13:26:16', '2020-04-23 13:31:30'),
(137, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-26 09:38:25', '2020-04-26 09:38:58'),
(138, 'Price File Updating', 'Updating item price in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-26 09:38:49', '2020-04-26 09:39:03'),
(139, 'po link removed from item', NULL, 'moshiur rahman', 1, 2, 1, 5, '', NULL, 1, '2020-04-26 11:45:20', '2020-04-29 13:48:14'),
(140, 'prime product population report', 'prime product population report', 'jafar khan', 3, 2, 1, 10, '', NULL, 1, '2020-04-26 13:32:20', '2020-04-29 13:48:25'),
(141, 'SMS Problem Troubleshooting', 'SMS Problem Troubleshooting', 'Galib Hamid', 5, 4, 2, 5, '', NULL, 1, '2020-04-26 15:43:21', '2020-04-26 15:43:27'),
(142, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-27 09:49:08', '2020-04-27 09:49:58'),
(143, 'Price File Updating', 'Updating item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-27 09:49:38', '2020-04-27 09:50:03'),
(144, 'New M3 user ID for Amir', 'M3 user id creation.', 'Mohamed Moanes', 18, 1, 1, 30, '', NULL, 1, '2020-04-28 07:57:03', '2020-04-28 08:37:01'),
(145, 'Remote access for Swapnil', 'Remote access problem for Infor Consultant.', 'Swapnil Tungatkar', 15, 1, 1, 5, '', NULL, 1, '2020-04-28 07:58:27', '2020-04-28 08:37:09'),
(146, 'IPA Installation', 'IPA project', 'Shrinivas Holla', 15, 1, 6, 39, '', NULL, 1, '2020-04-28 07:59:10', '2020-04-28 08:37:15'),
(147, 'Delete M3 user for Sameh', 'M3 user delete', 'Sameh Naguib', 18, 1, 1, 30, '', NULL, 1, '2020-04-28 08:14:46', '2020-04-28 08:36:11'),
(148, 'FAS001 access for Ali Hossain', 'M3 user access', 'Jafar Khan', 3, 1, 1, 30, '', NULL, 1, '2020-04-28 08:25:41', '2020-04-28 08:37:20'),
(149, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-28 09:47:47', '2020-04-28 09:52:16'),
(150, 'Price File Updating', 'Updating item price in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-28 09:51:25', '2020-04-28 09:52:23'),
(151, 'Item status updating', 'Item status updating', 'Kazi Golam Ruhul Shariful Islam', 1, 4, 1, 1, '', NULL, 1, '2020-04-28 09:53:14', '2020-04-28 09:53:42'),
(152, 'Webex with Swapnil', 'New VAT implementation', 'Swapnil Tungatkar', 15, 1, 1, 14, '', NULL, 1, '2020-04-29 10:03:44', '2020-04-29 13:03:40'),
(153, 'Invoice Problem', 'Invoice not found in DAF', 'Omar Farook', 1, 1, 1, 5, '', NULL, 1, '2020-04-29 10:04:30', '2020-04-29 13:03:45'),
(154, 'Internal meeting with BA & F&A', 'Internal meeting with F&A for VAT', 'Jafar Khan', 3, 1, 1, 14, '', NULL, 1, '2020-04-29 10:05:14', '2020-04-29 13:03:50'),
(155, 'Server Checking', 'Checking status and available free space in INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-29 10:10:03', '2020-04-29 10:10:43'),
(156, 'Price File Updating', 'Updating Item prices in LAWSON and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-29 10:10:33', '2020-04-29 10:10:52'),
(157, 'Cube access to DMT user', NULL, 'Amir Mikhail', 18, 3, 1, 10, '', NULL, 2, '2020-04-29 11:34:48', '2020-04-29 11:34:48'),
(158, 'Allocation Report', NULL, 'Kazi Golam Ruhul Shariful Islam', 1, 3, 1, 10, '', NULL, 2, '2020-04-29 11:39:02', '2020-04-29 11:39:02'),
(159, 'Inventory Report', NULL, 'Amir Mikhail', 18, 3, 1, 10, '', NULL, 2, '2020-04-29 11:39:36', '2020-04-29 11:39:36'),
(160, 'Delete Engine Serial from MMS240', NULL, 'Azra Quraishi', 2, 3, 1, 5, '', NULL, 2, '2020-04-29 11:40:43', '2020-04-29 11:40:43'),
(161, 'Query about inventory', NULL, 'Amir Mikhail', 18, 3, 1, 5, '', NULL, 2, '2020-04-29 11:42:56', '2020-04-29 11:42:56'),
(162, 'Part Activation', NULL, 'Kazi Golam Ruhul Shariful Islam', 1, 3, 1, 1, '', NULL, 2, '2020-04-29 11:43:32', '2020-04-29 11:43:32'),
(163, 'Fixed Asset Cube update query', NULL, 'Qazi Shariful Haidar', 3, 3, 1, 10, '', NULL, 2, '2020-04-29 11:44:39', '2020-04-29 14:16:12'),
(164, 'Warehouse settings problem', NULL, 'Syed Imam Zafar', 1, 3, 1, 5, '', NULL, 2, '2020-04-29 11:46:00', '2020-04-29 11:46:00'),
(165, 'Print Quotation Problem', NULL, 'Abdullah Al Musabbir', 2, 3, 2, 5, '', NULL, 2, '2020-04-29 11:48:20', '2020-04-29 11:48:20'),
(166, 'CO unlock', NULL, 'Nowshad Shamsul Arefin', 1, 3, 1, 5, '', NULL, 2, '2020-04-29 11:48:49', '2020-04-29 11:48:49'),
(167, 'Meeting With DMT', NULL, 'Mohamed Moanes', 18, 3, 1, 39, '', NULL, 2, '2020-04-29 11:49:32', '2020-04-29 11:49:32'),
(168, 'Shrink Logfile of Intgrsrv2', 'Shrink Logfile of Intgrsrv2 to dealloacate space', 'Nesma Huda', 4, 3, 1, 25, '', NULL, 2, '2020-04-29 13:42:55', '2020-04-29 13:42:55'),
(169, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-29 13:43:17', '2020-04-29 13:43:17'),
(170, 'po link removed from item', 'po link removed from item', 'moshiur rahman', 1, 2, 1, 5, '', NULL, 1, '2020-04-29 13:46:08', '2020-04-29 13:48:37'),
(171, 'po link removed from item', 'po link removed from item', 'moshiur rahman', 1, 2, 1, 5, '', NULL, 1, '2020-04-29 13:46:42', '2020-04-29 13:48:46'),
(172, 'vat testing', 'vat testing', 'jafar khan', 3, 2, 1, 39, '', NULL, 2, '2020-04-29 13:47:36', '2020-04-29 13:47:36'),
(173, 'vat testing', NULL, 'jafar khan', 3, 2, 1, 39, '', NULL, 2, '2020-04-29 13:47:49', '2020-04-29 13:47:49'),
(174, 'SMS Incident for discrepancy in total sale Price', 'Done conversion factor and exchange rate settings in sms admin toolbox according to the consultants', 'Anita Pollakova', 15, 3, 2, 18, '', NULL, 2, '2020-04-29 13:48:11', '2020-04-29 13:48:11'),
(175, 'CO unlock', NULL, 'Anup Sarker', 5, 3, 1, 5, '', NULL, 2, '2020-04-29 14:05:10', '2020-04-29 14:05:10'),
(176, 'CO unlock', NULL, 'Khandokar Ahmad Ullah Mohid', 5, 3, 1, 5, '', NULL, 2, '2020-04-29 14:05:40', '2020-04-29 14:05:40'),
(177, 'PO Link to remove from DO', NULL, 'Moshiur Rahman', 1, 3, 1, 5, '', NULL, 2, '2020-04-29 14:06:16', '2020-04-29 14:06:16'),
(178, 'Remote Lawson Install', NULL, 'Progga Laboni', 3, 3, 1, 5, '', NULL, 2, '2020-04-29 14:07:05', '2020-04-29 14:07:05'),
(179, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-29 14:07:42', '2020-04-29 14:07:42'),
(180, 'Query about quotation report', NULL, 'Anup Sarker', 5, 3, 2, 10, '', NULL, 2, '2020-04-29 14:08:27', '2020-04-29 14:08:27'),
(181, 'Rescheduling new time for stock transaction report', NULL, 'Nowshad Shamsul Arefin', 1, 3, 1, 10, '', NULL, 2, '2020-04-29 14:09:39', '2020-04-29 14:09:39'),
(182, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-29 14:10:46', '2020-04-29 14:10:46'),
(183, 'Customer Report to finance', NULL, 'Md. Abu Horaira', 3, 3, 1, 10, '', NULL, 2, '2020-04-29 14:11:12', '2020-04-29 14:11:12'),
(184, 'Datawarehouse Job checking', NULL, 'Nesma Huda', 4, 3, 1, 22, '', NULL, 2, '2020-04-29 14:11:57', '2020-04-29 14:11:57'),
(185, 'PSSOR Report', NULL, 'Md. Arifuzzaman', 1, 3, 1, 10, '', NULL, 2, '2020-04-29 14:12:29', '2020-04-29 14:12:29'),
(186, 'New Field addition in Fixed asset cube', NULL, 'Qazi Shariful Haidar', 3, 3, 1, 10, '', NULL, 2, '2020-04-29 14:13:41', '2020-04-29 14:13:41'),
(187, 'SMS Activity,Opportunity & Quotation report', NULL, 'Salek Bin Yousuf', 2, 3, 2, 10, '', NULL, 2, '2020-04-29 14:14:14', '2020-04-29 14:14:14'),
(188, 'Query about M3 System', NULL, 'Amir Mikhail', 18, 3, 1, 5, '', NULL, 2, '2020-04-29 14:14:34', '2020-04-29 14:14:34'),
(189, 'po link removed from item', NULL, 'moshiur rahman', 1, 2, 1, 5, '', NULL, 2, '2020-04-29 14:19:20', '2020-04-29 14:19:20'),
(190, 'Updating Incident about MHS200', NULL, 'Lemuel Clinton De Guzman', 15, 3, 1, 1, '', NULL, 2, '2020-04-29 14:19:21', '2020-04-29 14:19:21'),
(191, 'tools issue', NULL, 'abu al masud', 12, 2, 1, 5, '', NULL, 2, '2020-04-29 14:19:39', '2020-04-29 14:19:39'),
(192, 'credit note create issue', NULL, 'nowshad arefin', 1, 2, 1, 5, '', NULL, 2, '2020-04-29 14:20:42', '2020-04-29 14:20:42'),
(193, 'PRIME PRODUCT RETURN ISSUE', NULL, 'nowshad arefin', 1, 2, 1, 5, '', NULL, 2, '2020-04-29 14:21:49', '2020-04-29 14:21:49'),
(194, 'PRIME PRODUCT RETURN ISSUE', NULL, 'nowshad arefin', 1, 2, 1, 5, '', NULL, 2, '2020-04-29 14:22:01', '2020-04-29 14:22:01'),
(195, 'INVOICE RECIPIENT MISMATCH ISSUE', NULL, 'shafiul azam', 3, 2, 1, 5, '', NULL, 2, '2020-04-29 14:22:40', '2020-04-29 14:22:40'),
(196, 'INCIDENT UPDATE FOR 300 DIVISION PO ISSUE', NULL, 'rumana akhter', 3, 2, 1, 18, '', NULL, 2, '2020-04-29 14:23:27', '2020-04-29 14:23:27'),
(197, 'TOOLS ALLOCATION ISSUE', 'SQL UPDATE THE WRONG ENTRIES', 'abu al masud', 3, 2, 1, 5, '', NULL, 2, '2020-04-29 14:24:24', '2020-04-29 14:24:24'),
(198, 'CO SYNC ISSUE FROM SMS TO M3', NULL, 'khandokar mohid', 5, 2, 1, 5, '', NULL, 2, '2020-04-29 14:24:53', '2020-04-29 14:24:53'),
(199, 'FIELD IDENTIFICATION FOR VAT SOFTWARE(CREDIT NOTE & PURCHASE FILE)', 'FIELD IDENTIFICATION FOR VAT SOFTWARE(CREDIT NOTE & PURCHASE FILE)', 'EJAJUR RAHMAN', 3, 2, 1, 1, '', NULL, 2, '2020-04-29 14:25:19', '2020-04-29 14:25:19'),
(200, 'TOOLS ALLOCATION ISSUE', 'FILE PREPARATION FOR UPLOAD LOOSE TOOLS.', 'ASHAD ZAMAN', 3, 2, 1, 1, '', NULL, 2, '2020-04-29 14:26:11', '2020-04-29 14:26:11'),
(201, 'TOOLS ALLOCATION ISSUE', 'FILE FOR M.BOX', 'ASHAD ZAMAN', 12, 2, 1, 1, '', NULL, 2, '2020-04-29 14:27:20', '2020-04-29 14:27:20'),
(202, 'Invoice value mismatch with Co value', NULL, 'jafar khan', 3, 2, 1, 5, '', NULL, 2, '2020-04-29 14:27:56', '2020-04-29 14:27:56'),
(203, 'ISSUE INCIDENT FOR FINANCE ISSUE', NULL, 'jafar khan', 3, 2, 1, 18, '', NULL, 2, '2020-04-29 14:28:32', '2020-04-29 14:28:32'),
(204, 'PRIME PRODUCT RETURN ISSUE', NULL, 'nowshad arefin', 1, 2, 1, 5, '', NULL, 2, '2020-04-29 14:28:58', '2020-04-29 14:28:58'),
(205, 'UPDATE THE INCIDENT', NULL, 'jafar khan', 3, 2, 1, 18, '', NULL, 2, '2020-04-29 14:29:22', '2020-04-29 14:29:22'),
(206, 'webex with infor', NULL, 'jafar khan', 3, 2, 1, 18, '', NULL, 2, '2020-04-29 14:29:45', '2020-04-29 14:29:45'),
(207, 'Internal VAT Testing with F&A & Service', 'Internal VAT Testing with F&A & Service', 'Jafar Khan', 3, 1, 1, 14, '', NULL, 1, '2020-04-30 05:13:03', '2020-04-30 14:25:11'),
(208, 'Price File Updating', 'Updating Item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-30 09:42:15', '2020-04-30 09:54:16'),
(209, 'Item Status Updating', 'Item Status Updating', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-30 09:42:36', '2020-04-30 09:54:39'),
(210, 'Item Updating', 'Item Updating', 'Kazi Golam Ruhul Shariful Islam', 1, 4, 1, 1, '', NULL, 1, '2020-04-30 09:43:01', '2020-04-30 09:54:47'),
(211, 'Release Problem', 'Release Problem', 'PSD24', 2, 4, 1, 5, '', NULL, 1, '2020-04-30 09:45:45', '2020-04-30 09:54:54'),
(212, 'Server Checking', 'Checking available free space and status of INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-30 09:46:11', '2020-04-30 09:55:00'),
(213, 'DL001 updating in SMS and M3', 'DL001 updating in SMS and M3', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-30 09:47:02', '2020-04-30 09:55:05'),
(214, 'Server Checking', 'Checking available free space and status of INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-30 09:47:48', '2020-04-30 09:55:12'),
(215, 'Price File Updating', 'Updating Item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-30 09:48:15', '2020-04-30 09:55:19'),
(216, 'DL001 updating in SMS and M3', 'DL001 updating in SMS and M3', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-30 09:48:34', '2020-04-30 09:55:26'),
(217, 'Server Checking', 'Checking available free space and status of INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-30 09:48:57', '2020-04-30 09:55:32'),
(218, 'Price File Updating', 'Updating Item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-30 09:49:20', '2020-04-30 09:55:38'),
(219, 'Server Checking', 'Checking available free space and status of INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-30 09:49:45', '2020-04-30 09:55:43'),
(220, 'Price File Updating', 'Updating Item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-30 09:50:05', '2020-04-30 09:55:49'),
(221, 'Server Checking', 'Checking available free space and status of INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-30 09:50:44', '2020-04-30 09:55:56'),
(222, 'Price File Updating', 'Updating Item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-30 09:51:01', '2020-04-30 09:56:02'),
(223, 'Server Checking', 'Checking available free space and status of INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-30 09:51:23', '2020-04-30 09:56:08'),
(224, 'Price File Updating', 'Updating Item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-30 09:52:25', '2020-04-30 09:56:14'),
(225, 'Item status updating', 'Item status updating', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-30 09:52:44', '2020-04-30 09:56:29'),
(226, 'PIT File Error Checking', 'PIT File Error Checking', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-30 09:53:24', '2020-04-30 09:56:39'),
(227, 'Server Checking', 'Checking available free space and status of INTGRSRV2, WEBSRV and DATAWHSRV', 'Annatoma Islam', 4, 4, 3, 25, '', NULL, 1, '2020-04-30 09:57:01', '2020-04-30 09:57:54'),
(228, 'Price File Updating', 'Updating Item prices both in Lawson and INTGRSRV2', 'Annatoma Islam', 4, 4, 1, 25, '', NULL, 1, '2020-04-30 09:57:16', '2020-04-30 09:58:01'),
(229, 'Item status updating', 'Item status updating', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-30 09:57:31', '2020-04-30 09:58:06'),
(230, 'PIT File Error Checking', 'PIT File Error Checking', 'Annatoma Islam', 4, 4, 1, 1, '', NULL, 1, '2020-04-30 09:57:43', '2020-04-30 09:58:11'),
(231, 'SMS Problem Troubleshooting', 'SMS Problem Troubleshooting', 'Sabib Hossain', 2, 4, 2, 5, '', NULL, 1, '2020-04-30 09:58:58', '2020-04-30 09:59:05'),
(232, 'VAT Meeting with Swapnil', 'VAT Meeting with Swapnil', 'Swapnil Tungatkar', 4, 1, 1, 14, '', NULL, 1, '2020-04-30 14:25:34', '2020-05-03 15:32:41'),
(233, 'Item Creation', 'Creating New item in Lawson', 'Kazi Golam Ruhul Shariful Islam', 1, 4, 1, 1, '', NULL, 1, '2020-04-30 15:20:13', '2020-04-30 15:20:26'),
(234, 'Adding new functionality to iTTS', 'Adding new functionality to iTTS', 'Tofael Ahmed', 4, 1, 6, 39, '', NULL, 1, '2020-05-02 18:00:00', '2020-05-03 15:32:51'),
(235, 'Severity testing', 'Severity testing', 'Tofael Ahmed', 4, 1, 6, 39, 'Critical', NULL, 1, '2020-05-03 18:00:00', '2020-05-03 21:04:12'),
(236, 'fsadf', 'asdfdsf', 'Moharrof Hossain', 1, 1, 1, 1, 'Low', NULL, 1, '2020-04-30 18:00:00', '2020-05-03 21:04:17'),
(237, 'esad', 'ewrewr', 'Ashaduzzaman', 10, 1, 2, 18, 'critical', 'sdfsdf', 1, '2020-05-02 18:00:00', '2020-05-03 21:04:26'),
(238, 'sfad', 'sadf', 'Tanvir Rahim', 1, 1, 1, 1, 'Critical', 'dsf', 1, '2020-05-03 18:00:00', '2020-05-03 21:04:49'),
(239, 'm3', 'm3', 'Jafar Khan', 1, 1, 3, 1, 'Hign', NULL, 1, '2020-05-03 18:00:00', '2020-05-03 21:04:55'),
(240, 'specific post', 'sds', 'Ashaduzzaman', 1, 1, 1, 1, 'Low', NULL, 1, '2020-05-03 18:00:00', '2020-05-03 21:05:02'),
(241, 'sevirity edit again', 'sevirity edit again', 'Jafar Khan', 1, 1, 1, 1, 'Critical', 'sevirity edit again and again', 1, '2020-05-03 18:00:00', '2020-05-03 21:05:08'),
(242, 'sdaf', 'sdafdsf', 'Moharrof Hossain', 15, 1, 5, 14, 'CRITICAL', 'Critical', 1, '2020-05-03 18:00:00', '2020-05-03 21:05:44'),
(243, 'dsaf', 'sdf', 'sdf', 1, 1, 1, 1, 'LOW', NULL, 1, '2020-05-03 18:00:00', '2020-05-03 21:05:26'),
(244, 'sdf', 'sadf', 'Ashaduzzaman', 1, 1, 1, 1, 'MEDIUM', NULL, 1, '2020-05-03 18:00:00', '2020-05-03 21:05:32'),
(245, 'sadfds', 'dsaf', 'Swapnil Tungatkar', 1, 1, 1, 1, 'HIGH', NULL, 1, '2020-05-03 18:00:00', '2020-05-03 21:05:38'),
(246, 'sfad', 'sadf', 'Swapnil Tungatkar', 16, 1, 1, 1, 'CRITICAL', 'dsf', 1, '2020-05-03 18:00:00', '2020-05-03 21:03:33'),
(247, 'fdsf', 'dsafsdf', 'Ashaduzzaman', 13, 1, 5, 25, 'MEDIUM', NULL, 1, '2020-05-03 18:00:00', '2020-05-04 05:56:09'),
(248, 'dff', 'dasff', 'Jafar Khan', 1, 1, 1, 1, 'HIGH', NULL, 1, '2020-05-03 18:00:00', '2020-05-04 05:57:30'),
(249, 'specific post', 'er', 'Swapnil Tungatkar', 15, 1, 3, 25, 'CRITICAL', 'lkjjh', 1, '2020-05-04 05:00:00', '2020-05-04 03:17:49'),
(250, 'sdaf', 'sdafd', 'sdf', 1, 1, 1, 1, 'MEDIUM', NULL, 1, '2020-05-03 18:00:00', '2020-05-04 05:58:00'),
(251, 'sdf', 'dasf', 'Swapnil Tungatkar', 1, 1, 2, 1, 'LOW', NULL, 1, '2020-05-01 18:00:00', '2020-05-04 05:58:19'),
(252, 'jkjkhk', 'nkljkjkl', 'Ashaduzzaman', 1, 1, 4, 25, 'LOW', NULL, 1, '2020-05-04 04:00:00', '2020-05-04 06:31:08'),
(253, 'asdf', 'kkk', 'Moharrof Hossain', 1, 1, 1, 1, 'HIGH', NULL, 1, '2020-05-04 03:15:00', '2020-05-04 06:31:18'),
(256, 'dsf', 'sdadf', 'Swapnil Tungatkar', 1, 1, 1, 1, 'HIGH', NULL, 1, '2020-05-04 02:56:00', '2020-05-04 06:42:14'),
(257, 'asdf', 'dsfadsf', 'Jafar Khan', 1, 1, 1, 1, 'MEDIUM', NULL, 1, '2020-05-04 04:47:00', '2020-05-04 06:30:56'),
(258, 'dsf', 'sdf', 'Moharrof Hossain', 1, 1, 1, 1, 'MEDIUM', NULL, 2, '2020-05-04 04:00:00', '2020-05-04 04:50:48'),
(259, 'dsf', 'sdf', 'Moharrof Hossain', 1, 1, 1, 1, 'MEDIUM', NULL, 2, '2020-05-04 04:00:00', '2020-05-04 04:56:04'),
(260, 'df', 'sdf', 'Ashaduzzaman', 1, 1, 1, 1, 'LOW', NULL, 1, '2020-05-04 05:00:00', '2020-05-04 06:31:28'),
(261, 'sdfd', 'dsf', 'Moharrof Hossain', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 03:15:00', '2020-05-04 04:57:45'),
(262, 'sdf', 'dsf', 'Swapnil Tungatkar', 1, 1, 1, 1, 'CRITICAL', 'sdf', 2, '2020-05-04 04:45:00', '2020-05-04 05:42:47'),
(263, 'sdf', 'sdf', 'sdf', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 04:43:00', '2020-05-04 05:43:25'),
(264, 'df', 'df', 'df', 1, 1, 1, 1, 'MEDIUM', NULL, 2, '2020-05-04 04:45:00', '2020-05-04 05:44:35'),
(265, 'df', 'dsf', 'Moharrof Hossain', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 04:43:00', '2020-05-04 05:47:13'),
(266, 'dfsadf', 'dsf', 'Swapnil Tungatkar', 1, 1, 1, 1, 'MEDIUM', NULL, 2, '2020-05-04 04:00:00', '2020-05-04 05:52:47'),
(267, 'specific post', 'sds', 'Swapnil Tungatkar', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 04:45:00', '2020-05-04 06:13:13'),
(268, 'fd', 'dsf', 'Ashaduzzaman', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 05:00:00', '2020-05-04 06:14:25'),
(269, 'specific post', 'df', 'Ashaduzzaman', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 06:14:00', '2020-05-04 06:14:56'),
(270, 'sdf', 'dsf', 'Moharrof Hossain', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 02:56:00', '2020-05-04 06:15:17'),
(271, 'specific post', 'sdaf', 'dsf', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 03:15:00', '2020-05-04 06:17:13'),
(272, 'specific post', 'dsf', 'Swapnil Tungatkar', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 04:45:00', '2020-05-04 06:29:44'),
(273, 'specific post', 'f', 'Tanvir Rahim', 1, 1, 1, 1, 'LOW', NULL, 2, '2020-05-04 04:43:00', '2020-05-04 06:30:04'),
(274, 'sdafdsfdsafdsf', 'sdafsdf', 'dsf', 1, 1, 1, 1, 'LOW', NULL, 1, '2020-05-10 14:45:00', '2020-05-10 14:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tanvir Rahim', 'tanvir.rahim@banglacat.com', NULL, '$2y$10$MaIFOOZht8Kird6Uv4wN2.EAsZNReyNHpqmrlAVkivqVz7DlBHYFW', 'o8FtX2kybCLxaxRTRpRmtemVjdq8PYDqYlmfKVu61PASuztqPp3HDOhldbo3', '2020-03-24 13:45:18', '2020-03-24 13:45:18'),
(2, 'Sharmin Shawon', 'sharmin.shawon@banglacat.com', NULL, '$2y$10$r1nWtkcYsEg7zyO5Pj.zue1TReVnr9xSdWWlRmCJr.GsswKk9AI8m', NULL, '2020-03-24 13:44:39', '2020-03-24 13:44:39'),
(3, 'Nesma Huda', 'nesma.huda@banglacat.com', NULL, '$2y$10$kx8Dd47qHHoRV3y1uxKiCuR6YnXJKkALzOE8rdxCxsKFAFoDbcE6q', NULL, '2020-04-01 14:16:38', '2020-04-01 14:16:38'),
(4, 'Annatoma Islam', 'annatoma.islam@banglacat.com', NULL, '$2y$10$A8DhmmXp4Fz8YW1oj7XRd.fLjLg0mEAWuIhhEwuL8uhBL5fE.RkPa', NULL, '2020-04-01 14:17:33', '2020-04-01 14:17:33'),
(5, 'Bazlur Rashid', 'bazlur.rashid@banglacat.com', NULL, '$2y$10$uqE16Y59spr9gYeSvgMTXOLYNQ9ouGpWqeeMlurTYghP4TfCDz0km', NULL, '2020-04-01 14:18:27', '2020-04-01 14:18:27'),
(6, 'Tofael Ahmad', 'tofael.ahmad@banglacat.com', NULL, '$2y$10$VvNNqZ28K32ezqCi2iCXIeZhNRVvXyrSHlJLqETjTwZH6jx9NMzpi', NULL, '2020-04-01 14:19:05', '2020-04-01 14:19:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
