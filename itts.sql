-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2020 at 01:18 PM
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
(14, 'Rental', 'Rental Company', 'Tanvir Rahim', '2020-04-01 18:00:00', '2020-04-01 18:00:00');

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
('tanvir.rahim@banglacat.com', '$2y$10$EMynpTsp8lHK35SedvUKEeL4UEhrs908Co2sc0h0UevXuKwBoYeqC', '2020-04-02 19:17:09');

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
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raised_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `statuses_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `name`, `description`, `raised_by`, `division_id`, `user_id`, `system_id`, `category_id`, `statuses_id`, `created_at`, `updated_at`) VALUES
(1, 'Invoice not printing', 'DAF not working', 'Arifuzzaman', 1, 1, 1, 1, 1, '2019-10-20 18:00:00', '2020-04-02 16:45:40'),
(3, 'CO Unlock', 'CO unlock request from PSSD', 'Mosharrof', 1, 3, 2, 2, 3, '2020-03-27 10:05:42', '2020-03-29 16:17:58'),
(4, 'New Item Creation', 'Item Master', 'Sharif', 3, 4, 2, 1, 2, '2020-03-27 16:20:46', '2020-03-27 16:20:46'),
(8, 'iTTS Development', 'New Application Development', 'Nesma Huda', 4, 2, 6, 39, 1, '2020-04-01 14:06:14', '2020-04-02 19:07:13'),
(10, 'New BI Report Development', 'report development', 'Tanvir Hossain', 5, 3, 1, 10, 2, '2020-04-01 14:59:09', '2020-04-01 14:59:09'),
(11, 'Wrong Address Issue', 'Wrong address for Core Loan', 'Nowshad Arefin', 1, 4, 1, 5, 2, '2020-04-01 14:59:56', '2020-04-01 15:35:52'),
(12, 'Tools upload error', 'Tools for Ashulia problem', 'Mofasser  Hossain', 11, 1, 1, 18, 1, '2020-04-01 15:01:07', '2020-04-02 19:09:02'),
(13, 'test444', 'hgggffg', 'Ashaduzzaman', 6, 1, 2, 25, 2, '2020-04-01 15:36:32', '2020-04-01 15:36:32'),
(14, 'test6555', 'lkjkjllkj', 'Amzad Hossain', 12, 2, 5, 25, 1, '2020-04-01 15:36:33', '2020-04-02 19:08:10'),
(17, 'fdsf', 'sadfasdf', 'asdfdf', 7, 1, 2, 22, 2, '2020-04-01 19:08:18', '2020-04-01 19:08:18'),
(18, 'today', 'todya', 'today', 14, 4, 3, 25, 2, '2020-04-01 20:32:37', '2020-04-01 20:32:37'),
(19, 'another today', 'another today', 'another today', 4, 2, 3, 14, 2, '2020-04-01 20:35:23', '2020-04-01 20:35:23'),
(22, 'eef', 'dsfads', 'dsfd', 12, 3, 3, 25, 2, '2020-04-02 18:45:39', '2020-04-02 18:45:39'),
(23, 'asdf', 'sdsdfsadf', 'dasfdsf', 1, 1, 1, 1, 2, '2020-04-02 18:50:08', '2020-04-02 18:50:08'),
(24, 'dfda', 'adsf', 'dasdf', 11, 1, 5, 25, 2, '2020-04-02 19:00:13', '2020-04-02 19:00:13'),
(25, 'fads', 'sadfasd', 'sdafds', 1, 1, 1, 1, 2, '2020-04-02 19:09:38', '2020-04-02 19:09:38'),
(26, 'asdf', 'asdfd', 'adsf', 11, 1, 3, 30, 2, '2020-04-02 19:09:48', '2020-04-02 19:09:48');

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
(1, 'Tanvir Rahim', 'tanvir.rahim@banglacat.com', NULL, '$2y$10$MaIFOOZht8Kird6Uv4wN2.EAsZNReyNHpqmrlAVkivqVz7DlBHYFW', 'v5vT9fKeucP23E8gw9JdcxdO6BzCEWnZj71dGDH7Xnm1RqRXXeA9xZAJdVnh', '2020-03-24 13:45:18', '2020-03-24 13:45:18'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
