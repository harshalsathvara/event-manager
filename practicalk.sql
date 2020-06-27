-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 11:11 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practicalk`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `shared_id` int(10) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `shared_id`, `name`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'Perry Patton', '2020-06-04', '2020-06-02', 0, '2020-06-27 05:24:48', '2020-06-27 05:42:29'),
(2, 2, NULL, 'Kasper Watson', '2020-06-09', '2020-05-30', 1, '2020-06-27 05:26:02', '2020-06-27 02:44:37'),
(3, 1, 2, 'Hyatt Chambers', '2020-06-27', '2020-06-27', 0, '2020-06-27 05:38:27', '2020-06-27 06:54:10'),
(4, 2, 1, 'Ima Campbell', '2020-06-27', '2020-06-30', 0, '2020-06-27 05:38:54', '2020-06-27 08:08:40'),
(7, 2, 2, 'Rebecca Graves', '2006-06-09', '1981-03-23', 1, '2020-06-27 05:49:04', '2020-06-27 00:19:04'),
(17, 2, 1, 'Darryl Baker', '2000-05-09', '2000-12-17', 1, '2020-06-27 06:18:29', '2020-06-27 00:48:29'),
(18, 2, 1, 'Test event two', '2020-06-10', '2020-06-20', 1, '2020-06-27 08:03:54', '2020-06-27 08:08:07'),
(19, 2, NULL, 'Test Event one', '2020-06-03', '2020-06-10', 1, '2020-06-27 08:04:40', '2020-06-27 08:08:10'),
(21, 3, 2, 'Test evet by griffin', '2020-06-17', '2020-06-20', 1, '2020-06-27 08:13:27', '2020-06-27 02:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `other` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `other`, `created_at`, `updated_at`) VALUES
(1, 'QWZ5671', 41.95, NULL, '2020-06-27 08:53:39', '2020-06-27 03:23:39'),
(2, 'QWZ5672', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(3, 'QWZ5673', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(4, 'QWZ5681', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(5, 'QWZ5691', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(6, 'QWZ5682', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(7, 'QWZ5683', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(8, 'QWZ5684', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(9, 'QWZ5685', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(10, 'QWZ5686', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(11, 'QWZ5687', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(12, 'QWZ5688', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(13, 'QWZ5689', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(14, 'QWZ5690', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(15, 'QWZ5693', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(16, 'QWZ5694', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(17, 'QWZ5695', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(18, 'QWZ5696', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(19, 'QWZ5697', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(20, 'QWZ5698', 39.95, NULL, '2020-06-27 08:53:40', '2020-06-27 03:23:40'),
(21, 'RRX9856', 42.50, NULL, '2020-06-27 08:53:40', '2020-06-27 03:34:53'),
(22, 'RRX9851', 40.50, NULL, '2020-06-27 08:53:40', '2020-06-27 03:34:53'),
(23, 'RRX9852', 41.50, NULL, '2020-06-27 08:53:40', '2020-06-27 03:34:53'),
(24, 'RRX9857', 42.50, NULL, '2020-06-27 08:53:40', '2020-06-27 03:34:53'),
(25, 'RRX9858', 40.50, NULL, '2020-06-27 08:53:40', '2020-06-27 03:34:53'),
(26, 'RRX9859', 40.50, NULL, '2020-06-27 08:53:41', '2020-06-27 03:34:53'),
(27, 'RRX9860', 41.50, NULL, '2020-06-27 08:53:41', '2020-06-27 03:34:53');

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
(1, 'harshal', 'harshal@gmail.com', NULL, '$2y$10$Kt1kj0CxxYT1vHjwEQCjueymOEd6yNdu1DIf8KYkI/bWEzs35iS3q', NULL, '2020-06-26 23:22:04', '2020-06-26 23:22:04'),
(2, 'james', 'james@gmail.com', NULL, '$2y$10$NQzU6ZrzVTiurjvPkrc3n.UGDfdMhRag8WIEDO0HXNVXTrSHzPRWO', NULL, '2020-06-26 23:30:48', '2020-06-26 23:30:48'),
(3, 'Griffin Reeves', 'rydipi@gmail.com', NULL, '$2y$10$KfX02xIHR57Oa32MNE7WZeKuF6tjVdZCzrQlU22qU7VzoSn1ZrhJe', NULL, '2020-06-27 02:41:10', '2020-06-27 02:41:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
