-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 04:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jelantik_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'ISP - JELANTIK', '2024-12-25 09:00:20', '2024-12-25 09:00:20'),
(6, 'ISP - JAKINET', '2024-12-25 09:20:30', '2024-12-25 09:20:30');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_emails`
--

CREATE TABLE `log_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `emailto` varchar(255) NOT NULL,
  `emailcc` varchar(255) NOT NULL,
  `emailbcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `senddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_users`
--

CREATE TABLE `log_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `log` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_users`
--

INSERT INTO `log_users` (`id`, `user_id`, `ip`, `browser`, `log`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket Baru', '2021-03-27 16:25:34', '2021-03-27 16:25:34'),
(2, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 4/2021', '2021-03-28 02:10:30', '2021-03-28 02:10:30'),
(3, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Menghapus Tiket No 4/2021', '2021-03-28 02:12:25', '2021-03-28 02:12:25'),
(4, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Memperbaharui Tiket No 3/2021', '2021-03-28 02:18:55', '2021-03-28 02:18:55'),
(5, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 4/2021', '2021-03-28 03:21:50', '2021-03-28 03:21:50'),
(6, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 5/2021', '2021-03-28 03:25:22', '2021-03-28 03:25:22'),
(7, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 6/2021', '2021-03-29 05:06:48', '2021-03-29 05:06:48'),
(8, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 7/2021', '2021-03-29 05:12:57', '2021-03-29 05:12:57'),
(9, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 18/2021', '2021-03-29 05:44:57', '2021-03-29 05:44:57'),
(10, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 19/2021', '2021-03-29 05:46:16', '2021-03-29 05:46:16'),
(11, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 20/2021', '2021-03-29 05:48:46', '2021-03-29 05:48:46'),
(12, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 21/2021', '2021-03-29 05:58:14', '2021-03-29 05:58:14'),
(13, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 22/2021', '2021-03-29 06:02:03', '2021-03-29 06:02:03'),
(14, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 23/2021', '2021-03-29 06:03:10', '2021-03-29 06:03:10'),
(15, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 24/2021', '2021-03-29 06:04:00', '2021-03-29 06:04:00'),
(16, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 25/2021', '2021-03-29 06:05:13', '2021-03-29 06:05:13'),
(17, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 26/2021', '2021-03-29 06:30:19', '2021-03-29 06:30:19'),
(18, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 27/2021', '2021-03-29 06:35:59', '2021-03-29 06:35:59'),
(19, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 28/2021', '2021-03-29 06:44:46', '2021-03-29 06:44:46'),
(20, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Membuat Tiket No 29/2021', '2021-03-29 06:45:08', '2021-03-29 06:45:08'),
(21, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Membuat Tiket No 30/2021', '2021-04-08 04:53:14', '2021-04-08 04:53:14'),
(22, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Menghapus Tiket No 30/2021', '2021-04-08 06:13:42', '2021-04-08 06:13:42'),
(23, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Membuat Tiket No 30/2021', '2021-04-11 08:35:07', '2021-04-11 08:35:07'),
(24, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Membuat Tiket No 31/2021', '2021-04-13 08:21:39', '2021-04-13 08:21:39'),
(25, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Membuat Tiket No 32/2021', '2021-04-13 08:28:37', '2021-04-13 08:28:37'),
(26, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Menghapus Tiket No 30/2021', '2021-04-13 09:08:46', '2021-04-13 09:08:46'),
(27, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Memperbaharui Tiket No 32/2021', '2021-04-13 15:49:45', '2021-04-13 15:49:45'),
(28, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Memperbaharui Tiket No 31/2021', '2021-04-13 15:50:57', '2021-04-13 15:50:57'),
(29, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 32/2021', '2021-04-15 05:52:47', '2021-04-15 05:52:47'),
(30, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 32/2021', '2021-04-15 06:19:22', '2021-04-15 06:19:22'),
(31, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 32/2021', '2021-04-15 06:20:46', '2021-04-15 06:20:46'),
(32, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 32/2021', '2021-04-15 06:21:25', '2021-04-15 06:21:25'),
(33, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 32/2021', '2021-04-15 06:28:04', '2021-04-15 06:28:04'),
(34, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 2/2021', '2021-04-15 06:28:31', '2021-04-15 06:28:31'),
(35, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 3/2021', '2021-04-15 06:29:09', '2021-04-15 06:29:09'),
(36, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 32/2021', '2021-04-15 06:34:07', '2021-04-15 06:34:07'),
(37, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 35/2021', NULL, NULL),
(38, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 36/2021', NULL, NULL),
(39, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 37/2021', NULL, NULL),
(40, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 38/2021', '2021-04-16 03:18:03', '2021-04-16 03:18:03'),
(41, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 39/2021', '2021-04-16 03:38:26', '2021-04-16 03:38:26'),
(42, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 39/2021', '2021-04-16 03:38:52', '2021-04-16 03:38:52'),
(43, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 38/2021', '2021-04-16 03:40:19', '2021-04-16 03:40:19'),
(44, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Memperbaharui Tiket No 32/2021', '2021-04-16 03:41:16', '2021-04-16 03:41:16'),
(45, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Menghapus Tiket No 37/2021', '2021-04-16 03:42:55', '2021-04-16 03:42:55'),
(46, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 37/2021', '2021-04-17 00:55:40', '2021-04-17 00:55:40'),
(47, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 38/2021', '2021-04-17 01:10:05', '2021-04-17 01:10:05'),
(48, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 39/2021', '2021-04-17 01:12:59', '2021-04-17 01:12:59'),
(49, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 40/2021', '2021-04-17 01:21:01', '2021-04-17 01:21:01'),
(50, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'Membuat Tiket No 41/2021', '2021-04-17 01:25:46', '2021-04-17 01:25:46'),
(51, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 41/2021', '2024-12-25 01:46:45', '2024-12-25 01:46:45'),
(52, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 40/2021', '2024-12-25 01:46:50', '2024-12-25 01:46:50'),
(53, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 39/2021', '2024-12-25 01:46:54', '2024-12-25 01:46:54'),
(54, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 38/2021', '2024-12-25 01:46:59', '2024-12-25 01:46:59'),
(55, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 35/2021', '2024-12-25 01:47:06', '2024-12-25 01:47:06'),
(56, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 36/2021', '2024-12-25 01:47:10', '2024-12-25 01:47:10'),
(57, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 37/2021', '2024-12-25 01:47:14', '2024-12-25 01:47:14'),
(58, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 34/2021', '2024-12-25 01:47:18', '2024-12-25 01:47:18'),
(59, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 33/2021', '2024-12-25 01:47:21', '2024-12-25 01:47:21'),
(60, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 32/2021', '2024-12-25 01:47:25', '2024-12-25 01:47:25'),
(61, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 32/2021', '2024-12-25 01:47:29', '2024-12-25 01:47:29'),
(62, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 26/2021', '2024-12-25 01:47:36', '2024-12-25 01:47:36'),
(63, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 31/2021', '2024-12-25 01:47:41', '2024-12-25 01:47:41'),
(64, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-25 04:38:39', '2024-12-25 04:38:39'),
(65, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 2/2024', '2024-12-25 20:32:44', '2024-12-25 20:32:44'),
(66, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 2/2024', '2024-12-25 20:47:15', '2024-12-25 20:47:15'),
(67, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 2/2024', '2024-12-25 20:47:50', '2024-12-25 20:47:50'),
(68, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 2/2024', '2024-12-25 20:48:22', '2024-12-25 20:48:22'),
(69, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 2/2024', '2024-12-25 20:48:45', '2024-12-25 20:48:45'),
(70, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 3/2024', '2024-12-25 20:49:56', '2024-12-25 20:49:56'),
(71, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 3/2024', '2024-12-25 20:50:03', '2024-12-25 20:50:03'),
(72, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 2/2024', '2024-12-25 20:50:09', '2024-12-25 20:50:09'),
(73, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 2/2024', '2024-12-25 20:52:43', '2024-12-25 20:52:43'),
(74, 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 2/2024', '2024-12-25 20:54:24', '2024-12-25 20:54:24'),
(75, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 2/2024', '2024-12-25 20:59:34', '2024-12-25 20:59:34'),
(76, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 2/2024', '2024-12-25 21:00:06', '2024-12-25 21:00:06'),
(77, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 2/2024', '2024-12-25 21:22:42', '2024-12-25 21:22:42'),
(78, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 2/2024', '2024-12-25 21:49:25', '2024-12-25 21:49:25'),
(79, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 2/2024', '2024-12-25 21:49:55', '2024-12-25 21:49:55'),
(80, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 2/2024', '2024-12-25 21:50:30', '2024-12-25 21:50:30'),
(81, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 2/2024', '2024-12-25 21:51:37', '2024-12-25 21:51:37'),
(82, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 1/2024', '2024-12-25 21:51:43', '2024-12-25 21:51:43'),
(83, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 1/2024', '2024-12-25 22:01:40', '2024-12-25 22:01:40'),
(84, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-25 22:02:20', '2024-12-25 22:02:20'),
(85, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-25 22:06:43', '2024-12-25 22:06:43'),
(86, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-25 22:07:04', '2024-12-25 22:07:04'),
(87, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-25 22:14:36', '2024-12-25 22:14:36'),
(88, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-25 22:43:25', '2024-12-25 22:43:25'),
(89, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-25 22:43:51', '2024-12-25 22:43:51'),
(90, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 2/2024', '2024-12-25 22:51:17', '2024-12-25 22:51:17'),
(91, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 2/2024', '2024-12-25 22:53:29', '2024-12-25 22:53:29'),
(92, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 2/2024', '2024-12-25 23:02:30', '2024-12-25 23:02:30'),
(93, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 1/2024', '2024-12-25 23:02:34', '2024-12-25 23:02:34'),
(94, 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 1/2024', '2024-12-26 06:33:32', '2024-12-26 06:33:32'),
(95, 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-26 08:26:38', '2024-12-26 08:26:38'),
(96, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Menghapus Tiket No 1/2024', '2024-12-26 19:20:19', '2024-12-26 19:20:19'),
(97, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Membuat Tiket No 1/2024', '2024-12-26 19:21:59', '2024-12-26 19:21:59'),
(98, 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-26 19:22:45', '2024-12-26 19:22:45');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_28_213738_create_permission_tables', 1),
(5, '2021_03_01_143915_create_customers_table', 1),
(6, '2021_03_01_145258_create_news_table', 1),
(7, '2021_03_01_150701_create_slas_table', 1),
(8, '2021_03_02_232306_create_projects_table', 1),
(9, '2021_03_02_233320_create_tickets_table', 1),
(10, '2021_03_03_123910_create_log_emails_table', 1),
(11, '2021_03_03_130339_create_log_users_table', 1),
(12, '2021_04_17_074910_create_jobs_table', 2);

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
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 11),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ahmad@teknisi.com', '$2y$10$gyjCap/Cz8/pLh3KL2kYW.RWdln5vDP42LhYGvhAUwBpFEf0kpJdW', '2024-12-25 23:56:15');

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
(1, 'tickets.index', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(2, 'tickets.create', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(3, 'tickets.edit', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(4, 'tickets.delete', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(5, 'slas.index', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(6, 'slas.create', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(7, 'slas.edit', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(8, 'slas.delete', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(9, 'news.index', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(10, 'news.create', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(11, 'news.edit', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(12, 'news.delete', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(13, 'users.index', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(14, 'users.create', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(15, 'users.edit', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(16, 'users.delete', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(17, 'customers.index', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(18, 'customers.create', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(19, 'customers.edit', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(20, 'customers.delete', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(21, 'projects.index', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(22, 'projects.create', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(23, 'projects.edit', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(24, 'projects.delete', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(25, 'log_emails.index', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(26, 'log_emails.create', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(27, 'log_emails.edit', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(28, 'log_emails.delete', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(29, 'log_users.index', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(31, 'permissions.index', 'web', NULL, NULL),
(33, 'roles.index', 'web', '2021-03-14 08:35:00', '2021-03-14 08:35:00'),
(34, 'roles.create', 'web', '2021-03-14 08:35:11', '2021-03-14 08:35:11'),
(35, 'roles.edit', 'web', '2021-03-14 08:35:25', '2021-03-14 08:35:25'),
(36, 'roles.delete', 'web', '2021-03-14 08:35:35', '2021-03-14 08:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_pel` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `id_pel`, `ip`, `customer_id`, `created_at`, `updated_at`) VALUES
(0, 'Kholifah', 'PRM-A1-40-kholifah', '192.168.60.4', 5, NULL, NULL),
(1, 'Yati', 'PRM-A4-03-Yati', '192.168.60.8', 5, NULL, NULL),
(2, 'Mustika', 'PRM-A5-8-Mustika', '192.168.60.3', 5, NULL, NULL),
(3, 'Dheny Akbar Saputra', 'PRM-A1-46-Dheny', '192.168.60.5', 5, NULL, NULL),
(4, 'Eka Nurullatim', 'PRM-A4-01-Eka', '192.168.60.7', 5, NULL, NULL),
(5, 'Humaeni', 'PRM-A4-10-Humaeni', '192.168.60.9', 5, NULL, NULL),
(6, 'Dewi Rosita', 'PRM-A4-11-dewi', '192.168.60.10', 5, NULL, NULL),
(7, 'Popy Apriana', 'PRM-A1-34-Popy', '192.168.60.6', 5, NULL, NULL),
(8, 'Firman', 'PRM-B3-28-Firman', '192.168.60.14', 5, NULL, NULL),
(9, 'Anggi Rafsanjani', 'PRM-B3-21-Anggi', '192.168.60.11', 5, NULL, NULL),
(10, 'Jannatan Sang Adji', 'PRM-B1-12-Jannatan', '192.168.60.12', 5, NULL, NULL),
(11, 'Jati Satria', 'PRM-B1-14-Jati', '192.168.60.13', 5, NULL, NULL),
(12, 'Pipin Nurwulan Dari', 'PRM-A4-23-Pipin', '192.168.60.15', 5, NULL, NULL),
(13, 'Muzahidin', 'PRM-A4-28-Muzahidin', '192.168.60.16', 5, NULL, NULL),
(14, 'Ivo astriani', 'PRM-A4-22-Ivo', '192.168.60.17', 5, NULL, NULL),
(15, 'Annisa rizqiani', 'PRM-A4-13-Annisa', '192.168.60.18', 5, NULL, NULL),
(16, 'Amirul Khair', 'PRM-B4-07-Amirul', '192.168.60.19', 5, NULL, NULL),
(17, 'Pita Azizah', 'PRM-A1-41-Azizah', '192.168.60.20', 5, NULL, NULL),
(18, 'Rachmat Irfanto', 'PRM-B1-03-Racmat', '192.168.60.21', 5, NULL, NULL),
(19, 'Nasiroh', 'PRM-A1-37-Nasiroh', '192.168.60.22', 5, NULL, NULL),
(20, 'Ita', 'PRM-A4-07-Ita', '192.168.60.23', 5, NULL, NULL),
(21, 'Wilda Suharyati', 'PRM-B3-23-wilda', '192.168.60.24', 5, NULL, NULL),
(22, 'Rizki Ahmad Ghifari', 'PRM-B7-12-Rizki', '192.168.60.25', 5, NULL, NULL),
(23, 'Syahrul Sabri', 'PRM-B5-04-Syahrul', '192.168.60.27', 5, NULL, NULL),
(24, 'Chandra Aprilian Simanjuntak', 'PRM-A4-24-Chandra', '192.168.60.28', 5, NULL, NULL),
(25, 'Nurhasanah', 'PRM-Blok-B2-1-Nurhasanah', '192.168.60.29', 5, NULL, NULL),
(26, 'Hanifah', 'PRM-B4-9-Hanifah', '192.168.60.30', 5, NULL, NULL),
(27, 'Tika', 'PRM-B1-9-Tika', '192.168.60.32', 5, NULL, NULL),
(28, 'Arsyil Fajri', 'PRM-B10-29-Arsyil', '192.168.60.33', 5, NULL, NULL),
(29, 'Rian', 'WRG-A3-1-Rian', '192.168.40.7', 5, NULL, NULL),
(30, 'Neneng Sri Widayanti', 'WRG-A3-10-Widayanti', '192.168.40.8', 5, NULL, NULL),
(31, 'Dewi Hartati', 'WRG-A3-9-Dewi', '192.168.40.9', 5, NULL, NULL),
(32, 'Adien', 'WRG-A1-7-Adien', '192.168.40.10', 5, NULL, NULL),
(33, 'Yopan', 'WRG-A2-9-Yopan', '192.168.40.11', 5, NULL, NULL),
(34, 'Anton Saputra', 'WRG-A4-2-Anton', '192.168.40.12', 5, NULL, NULL),
(35, 'Yoga', 'WRG-B3-8-Yoga', '192.168.40.13', 5, NULL, NULL),
(36, 'Sudira', 'WRG-A5-12-Sudira', '192.168.40.14', 5, NULL, NULL),
(37, 'Suproji', 'WRG-B5-20-Suproji', '192.168.40.15', 5, NULL, NULL),
(38, 'Eli Sukasih', 'WRG-B4-3-ELI', '192.168.40.16', 5, NULL, NULL),
(39, 'Lima Dara ', 'WRG-B1-1-Lima', '192.168.40.17', 5, NULL, NULL),
(40, 'Vivian desilva', 'WRG-A6-2-Vivian', '192.168.40.18', 5, NULL, NULL),
(41, 'Fitri Lindawati', 'WRG-A4-11-Fitri', '192.168.40.19', 5, NULL, NULL),
(42, 'Cipto', 'WRG-A4-15-Cipto', '192.168.40.20', 5, NULL, NULL),
(43, 'Shelvi Dianeth', 'WRG-B1-11-Shelvi', '192.168.40.21', 5, NULL, NULL),
(44, 'Restu Ady', 'WRG-A6-11-Restu', '192.168.40.22', 5, NULL, NULL),
(45, 'Aldy', 'WRG-B3-9-Aldy', '192.168.40.23', 5, NULL, NULL),
(46, 'Raswa Jaya', 'WRG-A3-15-Raswa', '192.168.40.24', 5, NULL, NULL),
(47, 'Maman', 'WRG-B6-2-Maman', '192.168.40.3', 5, NULL, NULL),
(48, 'Slamet', 'WRG-B5-16-Slamet', '192.168.40.4', 5, NULL, NULL),
(49, 'Rita', 'WRG-B5-22-Rita', '192.168.40.5', 5, NULL, NULL),
(50, 'Inggit Rosphiana', 'WRG-A3-5-Inggit', '192.168.40.6', 5, NULL, NULL),
(51, 'M Yusuf', 'TMB-MGG-109-Yusuf', '192.168.30.6', 5, NULL, NULL),
(52, 'Bu Fajar', 'TMB-KBJ2-C20A-Fajar ', '192.168.30.5', 5, NULL, NULL),
(53, 'Delif Jaket', 'TMB-KHM-42-Delif', '192.168.30.7', 5, NULL, NULL),
(54, 'Khairo', 'KMD-0705-Reno-2024', '101.101.100.246', 5, NULL, NULL),
(55, 'Ayu Putriany', 'KMD-1205-Ayu-2024', '101.101.100.249', 5, NULL, NULL),
(56, 'Abu Bakar', 'KMD-1205-Abu-2024', '101.101.100.250', 5, NULL, NULL),
(57, 'Ahmad Hamdani', 'KMD-1205-Dani-2024', '101.101.100.236', 5, NULL, NULL),
(58, 'Edi', 'NGR-TWR2-0203-akila', '192.168.50.15', 5, NULL, NULL),
(59, 'Niko Falentino', 'NGR-TWR3-0811-niko', '192.168.50.14', 5, NULL, NULL),
(60, 'Syech Syarif Hidayatollah', 'NGR-TWR2-1107-Syarif', '192.168.50.5', 5, NULL, NULL),
(61, 'Siti Khodijah', 'NGR-TWR2-Khadijah', '192.168.50.2', 5, NULL, NULL),
(62, 'Ainun', 'NGR-TWR3-0904-Rosliati', '192.168.50.4', 5, NULL, NULL),
(63, 'Shirley Aplonia', 'NGR-TWR3-1312-Shirley', '192.168.50.3', 5, NULL, NULL),
(64, 'Netti Sigalingging', 'NGR-TWR3-1202-Netti', '192.168.50.6', 5, NULL, NULL),
(65, 'Jeliana Siagian', 'NGR-TWR3-1209-Jeliana', '192.168.50.7', 5, NULL, NULL),
(66, 'Toga Hutasoit', 'NGR-TWR1-1008-Toga', '192.168.50.9', 5, NULL, NULL),
(67, 'Ferdi Rifani', 'NGR-TWR2-1013-Rifani', '192.168.50.10', 5, NULL, NULL),
(68, 'Astutik', 'NGR-TWR3-1210-Tutik', '192.168.50.8', 5, NULL, NULL),
(69, 'Rasman', 'NGR-TWR1-1514-Rasman', '192.168.50.12', 5, NULL, NULL),
(70, 'Virgie Wulan Lengkong', 'NGR-TWR3-121-Virgie', '192.168.50.13', 5, NULL, NULL),
(71, 'Rani Surya', 'NGR-TWR1-1511-Rani', '192.168.50.16', 5, NULL, NULL),
(72, 'Effy', 'NGR-TWR3-99-EFFY', '192.168.50.19', 5, NULL, NULL),
(73, 'Dedi Setiawan', 'NGR-TWR3-709-DEDI', '192.168.50.18', 5, NULL, NULL),
(74, 'Jenita', 'NGR-TWR1-210-Jenita', '192.168.50.17', 5, NULL, NULL),
(75, 'Santi Alif', 'NGR-TWR3-93-Alif', '192.168.50.20', 5, NULL, NULL),
(76, 'Erna Zea', 'NGR-TWR3-3912-Erna', '192.168.50.21', 5, NULL, NULL),
(78, 'Abdul Nana', 'NGR-TWR3-0410-Abdul', '192.168.50.23', 5, NULL, NULL),
(79, 'Deka Swi Indriana', 'NGR-TWR1-1108-Deka', '192.168.50.24', 5, NULL, NULL),
(80, 'Sutiyanto', 'NGR-TWR3-813-Sutiyanto', '192.168.50.25', 5, NULL, NULL),
(81, 'Saeful Bahri', 'NGR-TWR3-78-Saeful', '192.168.50.26', 5, NULL, NULL),
(82, 'Mulyani', 'NGR-TWR1-602-Mulyanil', '192.168.50.27', 5, NULL, NULL),
(83, 'Riyani', 'NGR-TWR1-606-Riyani', '192.168.50.29', 5, NULL, NULL),
(84, 'Winda', 'NGR-TWR3-1206-winda', '192.168.50.30', 5, NULL, NULL),
(85, 'Indarto', 'NGR-TWR3-812-Indarto', '192.168.50.31', 5, NULL, NULL),
(86, 'Alimansyah', 'NGR-TWR1-1501-Alimansyah', '192.168.50.32', 5, NULL, NULL),
(87, 'Achmad Zaini', 'NGR-TWR3-1010-Achmad', '192.168.50.33', 5, NULL, NULL),
(88, 'Heppi Tri Sulistyo', 'NGR-TWR3-801-Heppi', '192.168.50.34', 5, NULL, NULL),
(89, 'Jubaidah', 'NGR-TWR2-910-Jubaidah', '192.168.50.36', 5, NULL, NULL),
(90, 'Rizki', 'NGR-TWR3-1004-Rizki', '192.168.50.37', 5, NULL, NULL),
(91, 'Andri', 'NGR-TWR1-614-Andri', '192.168.50.35', 5, NULL, NULL),
(92, 'Dede Ratminingsih', 'NGR-TWR1-1102-Dede', '192.168.50.38', 5, NULL, NULL),
(93, 'Abdul Manan', 'NGR-TWR3-807-Abdul', '192.168.50.39', 5, NULL, NULL),
(94, 'Wulan', 'NGR-TWR2-1512-Wulan', '192.168.50.40', 5, NULL, NULL),
(95, 'Rita Novita Sari', 'NGR-TWR1-1014-Rita', '192.168.50.41', 5, NULL, NULL),
(96, 'Ayu Oktaviani', 'NGR-TWR2-1211-Ayu', '192.168.50.42', 5, NULL, NULL),
(97, 'Alwani', 'NGR-TWR1-149-Alwani', '192.168.50.43', 5, NULL, NULL),
(98, 'Diana', 'NGR-TWR3-307- diana', '192.168.50.44', 5, NULL, NULL),
(99, 'Rasmini', 'NGR-TWR3-1301-Rasmini', '192.168.50.45', 5, NULL, NULL),
(100, 'Suherpi', 'NGR-TWR3-610-Suherpi', '192.168.50.46', 5, NULL, NULL),
(101, 'Opik', 'NGR-TWR3-810-Opik', '192.168.50.47', 5, NULL, NULL),
(102, 'muhammad nur', 'NGR-TWR2-1112-Nur', '192.168.50.48', 5, NULL, NULL),
(103, 'Rochaeni', 'NGR-TWR2-1505-Rochaeni', '192.168.50.49', 5, NULL, NULL),
(104, 'Akbar', 'NGR-TWR2-1210-Akbar', '192.168.50.50', 5, NULL, NULL),
(105, 'Kaka Maulana', 'NGR-TWR-7706- Maulana', '192.168.50.52', 5, NULL, NULL),
(106, 'Rahmatudin', 'NGR-TWR2-705-Rahmatudin', '192.168.50.53', 5, NULL, NULL),
(107, 'Sefianty', 'NGR-TWR2-1204-Sefianty', '192.168.50.54', 5, NULL, NULL),
(108, 'Juju juwariah', 'NGR-TWR3-1006-juju', '192.168.50.55', 5, NULL, NULL),
(109, 'Syahroni', '628128832795653', '101.101.100.12', 6, NULL, NULL),
(110, 'Dahori Bin Jahir', '628131071599795', '101.101.100.11', 6, NULL, NULL),
(111, 'Nina Kurniasih', '6285817610776', '101.101.100.16', 6, NULL, NULL),
(112, 'Fatimus Zahro', '62878832300519', '101.101.100.15', 6, NULL, NULL),
(113, 'Ningsih', '628128042273447', '101.101.100.17', 6, NULL, NULL),
(114, 'Sukartini', '628569481637123', '101.101.100.13', 6, NULL, NULL),
(115, 'Mariya', 'PIN-A-A2-212-20-0623-Mariya', '101.101.100.33', 6, NULL, NULL),
(116, 'Rakino', '628560244516258', '101.101.100.30', 6, NULL, NULL),
(117, 'Suroto', '628577524352042', '101.101.100.28', 6, NULL, NULL),
(118, 'Arini', '628829883344210', '101.101.100.27', 6, NULL, NULL),
(119, 'Syaiful Anwar', '62838726279997', '101.101.100.29', 6, NULL, NULL),
(120, 'Rosita', '62838913881565', '101.101.100.34', 6, NULL, NULL),
(121, 'Syarifudin', '628180839389833', '101.101.100.25', 6, NULL, NULL),
(122, 'Dina Saputri', 'PIN-A-A3-317-20-0623-Saputri', '101.101.100.35', 6, NULL, NULL),
(123, 'Suparno', '628385204816476', '101.101.100.36', 6, NULL, NULL),
(124, 'Ismail', '628389914442226', '101.101.100.31', 6, NULL, NULL),
(125, 'Maryadi', '628569268762622', '101.101.100.38', 6, NULL, NULL),
(126, 'Dwi Trisyani', '62888966951394', '101.101.100.45', 6, NULL, NULL),
(127, 'Diana', '628121316736823', '101.101.100.41', 6, NULL, NULL),
(128, 'Ahmad Zaeni', '628778732951049', '101.101.100.39', 6, NULL, NULL),
(129, 'Sri Suharyanti', 'PIN-A-A3-318-20-0823-Suharyanti', '101.101.100.37', 6, NULL, NULL),
(130, 'Katini', '628138548758869', '101.101.100.40', 6, NULL, NULL),
(131, 'Enung Kominah', '628788599224945', '101.101.100.43', 6, NULL, NULL),
(132, 'Ardy', 'PIN-A-A2-107-20-0623-Ardi', '101.101.100.47', 6, NULL, NULL),
(133, 'Rahayu', '628770917108796', '101.101.100.49', 6, NULL, NULL),
(134, 'Agus sulistiono', '628216025814878', '101.101.100.48', 6, NULL, NULL),
(135, 'Cornelis Palandi', 'PIN-A-A1-316-20-0623-Palandi', '101.101.100.50', 6, NULL, NULL),
(136, 'Dewi Marina', '628787218247134', '101.101.100.52', 6, NULL, NULL),
(137, 'Yunizar Abdi', '628211388300236', '101.101.100.56', 6, NULL, NULL),
(138, 'Fitri Utari', 'PIN-A-A2-210-20-0623-Utari', '101.101.100.59', 6, NULL, NULL),
(139, 'Cecep', '628950706170768', '101.101.100.61', 6, NULL, NULL),
(140, 'Indra', 'PIN-A-A3-119-30-0923-Indra', '101.101.100.134', 6, NULL, NULL),
(141, 'Dinda Komalasari', 'PIN-A-A6-514-20-0623-Dinda', '101.101.100.68', 6, NULL, NULL),
(142, 'Yudi Heryadi', '628151366514779', '101.101.100.64', 6, NULL, NULL),
(143, 'Rame Dosmaria Samosir', '628521756288843', '101.101.100.70', 6, NULL, NULL),
(144, 'Lili Putri', 'PIN-A-A1-211-20-0623-Putri', '101.101.100.71', 6, NULL, NULL),
(145, 'Mutri ningsih', '628577545393345', '101.101.100.74', 6, NULL, NULL),
(146, 'Dewi Yurnita', 'PIN-A-A4-204-20-0623-Yurnita', '101.101.100.75', 6, NULL, NULL),
(147, 'Fajar Aprilyansyah', '628829357682671', '101.101.100.76', 6, NULL, NULL),
(148, 'Riyanti', 'PIN-A-A2-113-10-1223-Riyanti', '101.101.100.154', 6, NULL, NULL),
(149, 'Dody Setiawan', '628121138319435', '101.101.100.91', 6, NULL, NULL),
(150, 'Ahmad Abdul Azid', '628180675810136', '101.101.100.93', 6, NULL, NULL),
(151, 'Rusli', 'PIN-A-A1-219-10-0624-Rusli', '101.101.100.218', 6, NULL, NULL),
(152, 'Debora Fransiska', 'PIN-A-A4-109-20-0623-Debora', '101.101.100.100', 6, NULL, NULL),
(153, 'Salamah', '62889211244863', '101.101.100.101', 6, NULL, NULL),
(154, 'Afiliani Agustin', '628131618608728', '101.101.100.103', 6, NULL, NULL),
(155, 'Renol Biller Simatupang', 'PIN-A-A2-505-20-0623-Simatupang', '101.101.100.104', 6, NULL, NULL),
(156, 'Ade Noviana', 'PIN-A-A3-315-30-0923-Noviana', '101.101.100.105', 6, NULL, NULL),
(157, 'Yuylita', 'PIN-A-A2-416-20-0623-Purnama', '101.101.100.106', 6, NULL, NULL),
(158, 'Farida', 'PIN-A-A1-215-20-0623-Farida', '101.101.100.108', 6, NULL, NULL),
(159, 'Dwi Mulyoko', '628121926213927', '101.101.100.8', 6, NULL, NULL),
(160, 'Ade Kurniawan', 'PIN-A-A1-409-20-0623-Kurniawan', '101.101.100.4', 6, NULL, NULL),
(161, 'Firman Nulloh', '62898197776652', '101.101.100.32', 6, NULL, NULL),
(162, 'Juhendi', '628131866119743', '101.101.100.110', 6, NULL, NULL),
(163, 'Nur Alifah', '628953269035627', '101.101.100.111', 6, NULL, NULL),
(164, 'Sulyawati', '628191515122416', '101.101.100.113', 6, NULL, NULL),
(165, 'Edy Irawan', '628389256321996', '101.101.100.114', 6, NULL, NULL),
(166, 'Heri Virdaus', '628788846899040', '101.101.100.115', 6, NULL, NULL),
(167, 'Siti sholikhah', '628387418782941', '101.101.100.117', 6, NULL, NULL),
(168, 'Sri Rusbiyati', '6287880468748', '101.101.100.116', 6, NULL, NULL),
(169, 'Santi krismayanti', '6289636316536', '101.101.100.118', 6, NULL, NULL),
(170, 'Tutik', 'PIN-A-A2-309-20-0623-Tutik', '101.101.100.119', 6, NULL, NULL),
(171, 'Ham Gultom', 'PIN-A-A2-117-20-0623-Gultom', '101.101.100.120', 6, NULL, NULL),
(172, 'Bambang Suseno', 'PIN-A-A2-106-30-0723-Suseno', '101.101.100.123', 6, NULL, NULL),
(173, 'Elik safitri', 'PIN-A-A3-410-20-0723-Elik', '101.101.100.124', 6, NULL, NULL),
(174, 'Meielisabeth Barasa', 'PIN-A-A1-108-20-0723-Barasa', '101.101.100.125', 6, NULL, NULL),
(175, 'Wulandari', 'PIN-A-A1-101-30-0823-Wulandari', '101.101.100.129', 6, NULL, NULL),
(176, 'Tiarmin Samosir', 'PIN-A-A4-120-30-0823-Tiarmin', '101.101.100.131', 6, NULL, NULL),
(177, 'Fahry Fahrezi', 'PIN-A-A4-314-30-0923-Fahrezi', '101.101.100.133', 6, NULL, NULL),
(178, 'ilma febriyana hayati', 'PIN-A-A2-202-20-0923-Febriyana', '101.101.100.132', 6, NULL, NULL),
(179, 'Taufik', 'PIN-A-A3-206-50-0923-Taufik', '101.101.100.135', 6, NULL, NULL),
(180, 'Parsiah', 'PIN-A-A3-109-20-0923-Parsiah', '101.101.100.136', 6, NULL, NULL),
(181, 'Zakaria', 'PIN-A-A4-515-20-0923-Zakaria', '101.101.100.137', 6, NULL, NULL),
(182, 'Winarti', 'PIN-A-A1-417-10-0923-Winarti', '101.101.100.138', 6, NULL, NULL),
(183, 'Ndaru Aji Sakeyti', 'PIN-A-A6-118-30-0923-NDARU', '101.101.100.140', 6, NULL, NULL),
(184, 'Siti Ida Mahmudah', 'PIN-A-A4-305-30-1023-Mahmudah', '101.101.100.141', 6, NULL, NULL),
(185, 'Farikhatin khasanah', 'PIN-A-A4--517-30-1023-Khasanah', '101.101.100.142', 6, NULL, NULL),
(186, 'Anggun Ramadhania', 'PIN-A-A5-111-50-1023-Anggun', '101.101.100.143', 6, NULL, NULL),
(187, 'Dewi Mawar Sari', 'PIN-A-A1-317-30-1123-Dewi', '101.101.100.145', 6, NULL, NULL),
(188, 'Hopsah', 'PIN-A6-307-Hopsah', '101.101.100.5', 6, NULL, NULL),
(189, 'Ramdani Umri', 'PIN-A-A2-319-10-1123-Ramdani', '101.101.100.147', 6, NULL, NULL),
(190, 'Anita Permatasari', 'PIN-A-A2-108-10-1123-Anita', '101.101.100.148', 6, NULL, NULL),
(191, 'Wiwin Aritonang', 'PIN-A-A1-201-20-1223-Wiwin', '101.101.100.151', 6, NULL, NULL),
(192, 'Casto', 'PIN-A-A5-109-20-1223-Casto', '101.101.100.152', 6, NULL, NULL),
(193, 'Yuliana', 'PIN-A-A2-511-20-1223-Yuliana', '101.101.100.144', 6, NULL, NULL),
(194, 'Arka', 'PIN-A-A5-120-30-0124-Arka', '101.101.100.155', 6, NULL, NULL),
(195, 'Alfian Nur Hasbi', 'PIN-A-A1-205-30-0124-Alfian', '101.101.100.156', 6, NULL, NULL),
(196, 'Ayu Savina', 'PINA-A3-20-0124-Savina', '101.101.100.159', 6, NULL, NULL),
(197, 'Titin Kartini', 'PIN-A-A6-101-10-0124-Titin', '101.101.100.161', 6, NULL, NULL),
(198, 'Syamsul kholis', 'PINA-A1-116-10-0224-Syamsul', '101.101.100.162', 6, NULL, NULL),
(199, 'Sepriyani', 'PIN-A-A2-315-20-0224-Sepriyani', '101.101.100.163', 6, NULL, NULL),
(200, 'Anita Trisnaningsih', 'PINA-A6-301-20-0224-Anita', '101.101.100.164', 6, NULL, NULL),
(201, 'Karina Anggraini', 'PIN-A-A6-304-20-0224-Karina', '101.101.100.165', 6, NULL, NULL),
(202, 'Sukmana', 'PIN-A-A6-305-10-0224-Sukmana', '101.101.100.166', 6, NULL, NULL),
(203, 'Elsa Tesalonika', 'PIN-A-A6-310-20-0224-Elsa', '101.101.100.167', 6, NULL, NULL),
(204, 'Prihatini', 'PIN-A-A2-501-20-0224-Prihatini', '101.101.100.169', 6, NULL, NULL),
(205, 'Yohani', 'PINA-A1-419-10-0324-Yohani', '101.101.100.171', 6, NULL, NULL),
(206, 'Kastura', 'PINA-A1-415-10-0324-Kastura', '101.101.100.174', 6, NULL, NULL),
(207, 'Ajie Persada', 'PIN-A-A6-416-10-0324-Ajie', '101.101.100.175', 6, NULL, NULL),
(208, 'Yani Sumiyati', 'PIN-A-A2-420-10-0324-Yani', '101.101.100.177', 6, NULL, NULL),
(209, 'Gilang', 'PIN-A-A5-405-20-0324-Gilang', '101.101.100.178', 6, NULL, NULL),
(210, 'Sakir', 'PIN-A-A1-309-20-0324-Sakir', '101.101.100.176', 6, NULL, NULL),
(211, 'Nur Hasia', 'PIN-A-A5-512-20-0324-Hasia', '101.101.100.97', 6, NULL, NULL),
(212, 'Bahriya', 'PIN-A-A2-507-20-0324-Bahriya', '101.101.100.180', 6, NULL, NULL),
(213, 'Juli Setiawati', 'PIN-A-A4-209-10-0324-Juli', '101.101.100.182', 6, NULL, NULL),
(214, 'Andris Pramuji', 'PIN-A-A2-502-20-0324-Pramuji', '101.101.100.181', 6, NULL, NULL),
(215, 'Sutrisno Rais', 'PIN-A-A5-406-50-0324-Sutrisno', '101.101.100.183', 6, NULL, NULL),
(216, 'Yoantoro', 'PIN-A-A1-411-10-0324-Yoantoro', '101.101.100.184', 6, NULL, NULL),
(217, 'Neneng kartini', 'PIN-A-A2-115-10-0324-Neneng', '101.101.100.185', 6, NULL, NULL),
(218, 'Nining', 'PIN-A-A1-412-10-0324-nining', '101.101.100.186', 6, NULL, NULL),
(219, 'Saipul Rohim', 'PIN-A-A6-302-30-0424-Saipul', '101.101.100.188', 6, NULL, NULL),
(220, 'Ahmad Surudin', 'PIN-A2-517-10-0424-ahmad9243', '101.101.100.189', 6, NULL, NULL),
(221, 'Rudy siallagan', 'PIN-A-A3-401-30-04-0424-Sialagan', '101.101.100.190', 6, NULL, NULL),
(222, 'Rini Tri Reswati', 'PIN-A-A6-211-20-0424-Reswati', '101.101.100.191', 6, NULL, NULL),
(223, 'Muhammad Abdul Rosit', 'PIN-A-A3-405-10-0424-Abdul', '101.101.100.192', 6, NULL, NULL),
(224, 'Ramsidah', 'PIN-A-A3-107-10-0424-Ramsidah', '101.101.100.193', 6, NULL, NULL),
(225, 'Rika Dwi Setiawati', 'PIN-A-A5-307-30-0524-Rika', '101.101.100.194', 6, NULL, NULL),
(226, 'Audina', 'PIN-A-A2-301-10-0524-Audina', '101.101.101.198', 6, NULL, NULL),
(227, 'Saryati', 'PIN-A-A3-214-10-0524-Saryati', '101.101.100.199', 6, NULL, NULL),
(228, 'Nurzainina', 'PIN-A-A1-511-10-0524-Nurzainina', '101.101.100.201', 6, NULL, NULL),
(229, 'Sri Haryati', 'PIN-A-A6-312-20-0524-haryati', '101.101.100.202', 6, NULL, NULL),
(230, 'Rena Afrilyanti', 'PIN-A-A5-315-10-0646-Rena', '101.101.100.203', 6, NULL, NULL),
(231, 'Tiya', 'PIN-A-A2-304-10-0524-Tiya', '101.101.100.204', 6, NULL, NULL),
(232, 'Rusmiati', 'PINA-A2-203-10-3036-rusmiati', '101.101.100.205', 6, NULL, NULL),
(233, 'Carli Siahaan', 'PIN-A-A6-203-50-0524-Carli', '101.101.100.206', 6, NULL, NULL),
(234, 'Dewi Ratna Sari', 'PIN-A-A6-314-10-0524-Ratna', '101.101.100.207', 6, NULL, NULL),
(235, 'Sista Giri', 'PIN-A-A4-404-20-0524-Sista', '101.101.100.210', 6, NULL, NULL),
(236, 'Untung Wijaya', 'PIN-A-A6-212-10-0524-Untung', '101.101.100.211', 6, NULL, NULL),
(237, 'Juwati', 'PIN-A-A4-416-10-0624-Juwati', '101.101.100.212', 6, NULL, NULL),
(238, 'Awaludin', 'PIN-A-A4-412-10-0624-Awaludin', '101.101.100.211', 6, NULL, NULL),
(239, 'Najla Fathilah', 'PIN-A-A6-412-10-0624-Najla', '101.101.100.215', 6, NULL, NULL),
(240, 'Suroso', 'PIN-A-A1-319-10-0624-Suroso', '101.101.100.216', 6, NULL, NULL),
(241, 'Dwi Maryana', 'PIN-A-A5-318-10-0624-Dwi', '101.101.100.217', 6, NULL, NULL),
(242, 'Marce Susanti', 'PIN-A-A4-303-20-0524-Marce', '101.101.100.208', 6, NULL, NULL),
(243, 'Yoheti', 'PIN-A-A3-103-20-0624-Yoheti', '101.101.100.219', 6, NULL, NULL),
(244, 'Novi', 'PIN-A-A5-313-10-0724-Novi', '101.101.100.220', 6, NULL, NULL),
(245, 'Evi Lisa', 'PIN-A-A3-115-10-0724-evi', '101.101.100.221', 6, NULL, NULL),
(246, 'Muh Fathurrahman', 'PIN-A5-508-Muh', '101.101.100.223', 6, NULL, NULL),
(247, 'Trimah', 'PIN-A4-208-trimah', '101.101.100.224', 6, NULL, NULL),
(248, 'Indah Kurniawati', 'PIN-A4-419-indah', '101.101.100.222', 6, NULL, NULL),
(249, 'Sri Nur Hayani', 'PIN-A4-116-Sri', '101.101.100.228', 6, NULL, NULL),
(250, 'Titin', 'PIN-A-A3-501-Titin', '101.101.100.229', 6, NULL, NULL),
(251, 'Yopi Oktavia', 'PIN-A4-107-Yopi', '101.101.100.232', 6, NULL, NULL),
(252, 'Ristyanto', 'PIN-A2-510-Ristyanto', '101.101.100.233', 6, NULL, NULL),
(253, 'pujiyati', 'PIN-A4-214-Pujiyati', '101.101.100.247', 6, NULL, NULL),
(254, 'Muh Sandi Prinoto', 'PIN-A5-404-Muh Sandi', '101.101.100.248', 6, NULL, NULL),
(255, 'Suhendro', 'PIN-A2-411-Suhendro', '101.101.100.251', 6, NULL, NULL),
(256, 'Rukaeni', 'PIN-A5-520-Rukaeni', '101.101.100.252', 6, NULL, NULL),
(257, 'Susanti', 'PIN-A2-412-Susanti', '101.101.100.253', 6, NULL, NULL),
(258, 'Nurul kurniatun', 'PIN-A3-403-Nurul', '101.101.100.254', 6, NULL, NULL),
(259, 'Suryadi Kurniawan', 'PIN-A2-418-Suryadi', '101.101.100.234', 6, NULL, NULL),
(260, 'Anwari Susanto', 'PIN-A2-503-Anwari', '101.101.100.235', 6, NULL, NULL),
(261, 'Landrina Bawimbang', 'PIN-A1-517-Landrina', '101.101.100.246', 6, NULL, NULL),
(262, 'Ziad Al Hujaili', 'PIN-A2- 320-Ziad', '101.101.100.9', 6, NULL, NULL),
(263, 'Widiyanto', 'PIN-A5-416-Widiyanto', '101.101.100.237', 6, NULL, NULL),
(264, 'Vina', 'PIN-A4-420-Vina', '101.101.101.246', 6, NULL, NULL),
(265, 'Sari', 'PIN-A2-515-Sari', '101.101.100.7', 6, NULL, NULL),
(266, 'Falinda', 'PIN-BLOK-A-A6-406-Falinda', '101.101.100.10', 6, NULL, NULL),
(267, 'Dera Wati', 'PIN-A-A2-2-211-Dera', '101.101.100.14', 6, NULL, NULL),
(268, 'Handayani', 'PIN-A2-209-Handayani', '101.101.100.18', 6, NULL, NULL),
(269, 'Poniran', 'PIN-A4-408-poniran', '101.101.100.20', 6, NULL, NULL),
(270, 'Yanti', 'PIN-A4-104-Yanti', '101.101.100.109', 6, NULL, NULL),
(271, 'Kastanya', 'PIN-A1-1-11-Kastanya', '101.101.100.21', 6, NULL, NULL),
(272, 'Seti Wahyuni', 'PIN-A3-110-Seti', '101.101.100.22', 6, NULL, NULL),
(273, 'Hermawati', 'PIN-A2-520-Hermawati', '101.101.100.24', 6, NULL, NULL),
(274, 'Davina', 'PIN-A-A3-312-Davina', '101.101.100.23', 6, NULL, NULL),
(275, 'Amy', 'PIN-A-A5-311-Amy', '101.101.100.26', 6, NULL, NULL),
(276, 'Riyanto', 'CKG-KM2-A-406-20-0623-Riyanto', '101.101.100.79', 6, '0000-00-00 00:00:00', '2024-12-25 20:24:09'),
(277, 'Ika Kurniawati', '62897292837335    ', '101.101.100.80', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Howiyah Elinda', '628191158585992    ', '101.101.100.82', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'Joko Haryono', '628211122266213    ', '101.101.100.83', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'Irna Niscahyati', '628577793699091    ', '101.101.100.84', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'Yusuf Efendi', '628588354597392    ', '101.101.100.87', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'Erik', '628131912918754    ', '101.101.100.88', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'Yudha Rizky Alvingky', '628821478709185    ', '101.101.100.98', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'Charles Daniel Christian', 'CKG-KM2-A-413-20-0623-Christian', '101.101.100.102', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'Julianus', 'CKG-KM2-A-114-20-0623-Julianus', '101.101.100.107', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'Ahmad Hazami', '628577730222339    ', '101.101.100.6', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'Faradiba Marsaoly', '628127925022665    ', '101.101.100.112', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'Ruslan', 'CKM-KM2-B-101-30-1223-RUSLAN', '101.101.100.149', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'Ahmad Maulana', 'CKM-KM2-B-515-30-0124-ahmadmaulana', '101.101.100.158', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'Rifa Bayu Zulfanida', 'CKM-KM2-A-419-30-0124-Rifa', '101.101.100.160', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'Sakinah', 'CKM-KM2-A-124-30-0224-Sakinah', '101.101.100.168', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'Dhanu Irwansyah', 'CKG-KM2-B-114-20-0324-Dhanu', '101.101.100.173', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'Arnando Amos', 'CKG-KM2-10-0324-Arnando', '101.101.100.187', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'Aida', 'CKG-KM2-A-408-10-0524-Aida', '101.101.100.197', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Vian', 'CKG-KM2-B-411-20-0042-Vian', '101.101.100.214', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'Reika Nilam Macesa', 'CKG-KM2-B-203-Reika', '101.101.100.227', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'Diya Linawati', 'CKG-KM2-B-213-Diya', '101.101.100.226', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'Nahrawi', 'CKG-KM2-B-305-Nahrawi', '101.101.100.225', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'Rhaditya Maulana C', 'CKG-KM2-B-503-Rhaditya', '101.101.100.230', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'Natalia', 'CKG-KM2-B-20-25-Natalia', '101.101.100.231', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 'Puput Setiyawati', 'CKG-KM2--A-423-Puput', '101.101.100.19', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'Dony Sanjaya', '8121299681845', '103.103.100.17', 6, NULL, NULL),
(303, 'Ivone Martin', '628787943629990', '103.103.100.8', 6, NULL, NULL),
(304, 'A Fatoni', '628515746619198', '103.103.100.7', 6, NULL, NULL),
(305, 'Ina Tumiwa', '6281185708898', '103.103.100.9', 6, NULL, NULL),
(306, 'Indra Andiana', '628596279558670', '103.103.100.12', 6, NULL, NULL),
(307, 'Desman', '628782068702627', '103.103.100.29', 6, NULL, NULL),
(308, 'Gabriella', '62877422522858', '103.103.100.13', 6, NULL, NULL),
(309, 'Analya', '6281112995816', '103.103.100.14', 6, NULL, NULL),
(310, 'Herlina lase', 'PGB-TWR-0602-20-0623', '103.103.100.15', 6, NULL, NULL),
(311, 'Darawati', '628950922982050', '103.103.100.32', 6, NULL, NULL),
(312, 'Rumondang', '628226065004934', '103.103.100.28', 6, NULL, NULL),
(313, 'Imanuel Lembong', '628777611392330', '103.103.100.19', 6, NULL, NULL),
(314, 'Mieke Indriati', '628138491213881', '103.103.100.31', 6, NULL, NULL),
(315, 'Sugiarto', '6281113637703', '103.103.100.21', 6, NULL, NULL),
(316, 'Olla Tulong', '62813872744571', '103.103.100.24', 6, NULL, NULL),
(317, 'Tika Kartika', '628577371627150', '103.103.100.25', 6, NULL, NULL),
(318, 'Billie Hutabarat', '628180786149144', '103.103.100.27', 6, NULL, NULL),
(319, 'Titin Setiatin', '628780010734458', '103.103.100.35', 6, NULL, NULL),
(320, 'Heince', '628157487973639', '103.103.100.34', 6, NULL, NULL),
(321, 'Waskito gunawan', '628211668133898', '103.103.100.55', 6, NULL, NULL),
(322, 'Komalasari', '628577030881251', '103.103.100.33', 6, NULL, NULL),
(323, 'Rieka', '628131485117528', '103.103.100.38', 6, NULL, NULL),
(324, 'Ety Sanjaya', '628963079562663', '103.103.100.39', 6, NULL, NULL),
(325, 'Ranni Panjaitan', '628128491603426', '103.103.100.52', 6, NULL, NULL),
(326, 'Herna', '628578034054022', '103.103.100.51', 6, NULL, NULL),
(327, 'Deni kalanit', '628129348933142', '103.103.100.60', 6, NULL, NULL),
(328, 'Tuti Herayani', '628138161872562', '103.103.100.37', 6, NULL, NULL),
(329, 'Yamonaha Waruwu', '628123111002126', '103.103.100.53', 6, NULL, NULL),
(330, 'Tjen Sugianto', '628138034118854', '103.103.100.43', 6, NULL, NULL),
(331, 'Mulyati', '628138482612792', '103.103.100.61', 6, NULL, NULL),
(332, 'Mauren', '628963801900766', '103.103.100.41', 6, NULL, NULL),
(333, 'Merry Magdalena', '628121308411738', '103.103.100.58', 6, NULL, NULL),
(334, 'Darwin', 'PGB-TWR-1007-20-1023-Darwin', '103.103.100.80', 6, NULL, NULL),
(335, 'Iwan', 'PGB-BLOK-F-316-20-0623-Iwan', '103.103.100.42', 6, NULL, NULL),
(336, 'Yeksen Sijabat', '628131418179654', '103.103.100.65', 6, NULL, NULL),
(337, 'Yunior', '628128463350029', '103.103.100.64', 6, NULL, NULL),
(338, 'Ronal Hasudungan', '62838625577716', '103.103.100.57', 6, NULL, NULL),
(339, 'Suling', '628578179471116', '103.103.100.50', 6, NULL, NULL),
(340, 'Arvi', '628128239938021', '103.103.100.36', 6, NULL, NULL),
(341, 'Yere mias', '628129583330093', '103.103.100.49', 6, NULL, NULL),
(342, 'Dwi Antoro', '628128090308311', '103.103.100.48', 6, NULL, NULL),
(343, 'Nilam Tasya', 'PGB-TWR-1204-NILAM', '103.103.100.59', 6, NULL, NULL),
(344, 'Erwin', '628131780524094', '103.103.100.66', 6, NULL, NULL),
(345, 'Tari', '62812939663248', '103.103.100.63', 6, NULL, NULL),
(346, 'Tasya', '628131485705064', '103.103.100.67', 6, NULL, NULL),
(347, 'Mike Mery Dijayanti', '628581036027215', '103.103.100.54', 6, NULL, NULL),
(348, 'Suryani', '62899926461520', '103.103.100.76', 6, NULL, NULL),
(349, 'Nurharisna', '628138237710035', '103.103.100.71', 6, NULL, NULL),
(350, 'Julpiani', '628122132840478', '103.103.100.70', 6, NULL, NULL),
(351, 'Silvi', '628788554554492', '103.103.100.73', 6, NULL, NULL),
(352, 'Sasa sajida', '62887117523446', '103.103.100.69', 6, NULL, NULL),
(353, 'Sofia Susana', 'PGB-TWR-916-20-0623-Anna', '103.103.100.72', 6, NULL, NULL),
(354, 'Nerita Hardy', '628595164709118', '103.103.100.74', 6, NULL, NULL),
(355, 'Fransiskawati', '628138206541893', '103.103.100.75', 6, NULL, NULL),
(356, 'Titin Nurjanah', '628528086713947', '103.103.100.62', 6, NULL, NULL),
(357, 'Suaina', '628387428994629', '103.103.100.77', 6, NULL, NULL),
(358, 'Anna Pramesa', '62813885855858', '103.103.100.78', 6, NULL, NULL),
(359, 'Nyoman Firdaus', '628131169807080', '103.103.100.79', 6, NULL, NULL),
(360, 'Novita anggri', '628211240939391', '103.103.100.83', 6, NULL, NULL),
(361, 'Alfi', '628960127296266', '103.103.100.82', 6, NULL, NULL),
(362, 'Henny Retno', 'PGB-BLOK-H-116-20-0623-Heni', '103.103.100.84', 6, NULL, NULL),
(363, 'Yosep', '628528935720889', '103.103.100.86', 6, NULL, NULL),
(364, 'Marice', '628128785062686', '103.103.100.87', 6, NULL, NULL),
(365, 'Defi Sulandari', '628128184600984', '103.103.100.88', 6, NULL, NULL),
(366, 'Ermy Gustiawati', '628121403450073', '103.103.100.89', 6, NULL, NULL),
(367, 'Fitri Yanti', '628138035249427', '103.103.100.91', 6, NULL, NULL),
(368, 'Dimas Wahyu', '628141350212069', '103.103.100.6', 6, NULL, NULL),
(369, 'Evi Rianty', '628389478878581', '103.103.100.16', 6, NULL, NULL),
(370, 'Elisabeth Angul', '628128035803076', '103.103.100.44', 6, NULL, NULL),
(371, 'Susi susilawati', '628131066936389', '103.103.100.45', 6, NULL, NULL),
(372, 'Andrawin Gunung', '62817003017827', '103.103.100.92', 6, NULL, NULL),
(373, 'Resmiyati', '628229923334315', '103.103.100.94', 6, NULL, NULL),
(374, 'Nofri', '628128502981453', '103.103.100.95', 6, NULL, NULL),
(375, 'Norma L Sondakh', '62852194428597', '103.103.100.96', 6, NULL, NULL),
(376, 'Tigrisna Olivia', '628571496560682', '103.103.100.97', 6, NULL, NULL),
(377, 'Desi Susilawati', '62896122805001', '103.103.100.98', 6, NULL, NULL),
(378, 'Rotua Elisabeth Siahaan', 'PGB-TWR-314-50-0723-Siahaan', '103.103.100.99', 6, NULL, NULL),
(379, 'Lisa', 'PGB-TWR-515-LISA', '103.103.100.100', 6, NULL, NULL),
(380, 'Titin Supartini', 'PGB-TWR-701-50-0823-Titin', '103.103.100.101', 6, NULL, NULL),
(381, 'Erniawati Galib', 'PGB-TWR-503-20-0923-Galib', '103.103.100.102', 6, NULL, NULL),
(382, 'Ayu Indra Junita', 'PGB-TWR-1002-30-0923-Ayu', '103.103.100.103', 6, NULL, NULL),
(383, 'MM Yuli Isnaeni', 'PGB-TWR-1013-20-0923-Yuli', '103.103.100.104', 6, NULL, NULL),
(384, 'Esti mubarokah', 'PGB-TWR-1216-20-1023-Esti', '103.103.100.105', 6, NULL, NULL),
(385, 'Ushuluddin ilmi', 'PGB-TWR-508-30-1123-Ilmi', '103.103.100.106', 6, NULL, NULL),
(386, 'Lusiana Esther', 'PGB-TWR-1004-30-1123-Lusiana', '103.103.100.107', 6, NULL, NULL),
(387, 'Marsyah', 'PGB-TWR-1311-50-0224-marsyah', '103.103.100.111', 6, NULL, NULL),
(388, 'Kristy Jane', 'PGB-TWR-1517-10-0224-Kristy', '103.103.100.112', 6, NULL, NULL),
(389, 'Ika Pujiastuti', 'PGB-TWR-308-20-0324-Ika', '103.103.100.113', 6, NULL, NULL),
(390, 'Bintang', 'PGB-TWR-1212-20-0324-Bintang', '103.103.100.114', 6, NULL, NULL),
(391, 'Maylina', 'PGB-TWR-1109-20-0324-Maylina', '103.103.100.115', 6, NULL, NULL),
(392, 'Virgo Delima', 'PGB-TWR-810-20-0324-Virgo', '103.103.100.116', 6, NULL, NULL),
(393, 'Toni Predi', 'PGB-BLOK-H-410-30-0324-Topred', '103.103.100.117', 6, NULL, NULL),
(394, 'Rosmalia', 'PGB-TWR-407-10-0424-Rosmalia', '103.103.100.118', 6, NULL, NULL),
(395, 'Fitri Simanjuntak', 'PGB-TWR-414-10-0424-Fitri', '103.103.100.119', 6, NULL, NULL),
(396, 'Kurniawan', 'PGB-TWR-45-10-0424-Kurniawan', '103.103.100.120', 6, NULL, NULL),
(397, 'Retno Susanti', 'PGB-TWR-717-20-0424-retno', '103.103.100.121', 6, NULL, NULL),
(398, 'Muhammad Rizaldi Hindhami', 'PGB-TWR-1316-20-0524-Rizaldi', '103.103.100.122', 6, NULL, NULL),
(399, 'Anisa Nurhakim', 'PGB-BLOK-A-401-30-0524-Anisa', '103.103.100.124', 6, NULL, NULL),
(400, 'Fery Altaji Pratama', 'PGB-BLOK-A-20-0524-Fery', '103.103.100.125', 6, NULL, NULL),
(401, 'Dewi Purwanti', 'PGB-TWR-1110-20-0524-Dewi', '103.103.100.126', 6, NULL, NULL),
(402, 'phillips', 'PGB-BLOK-G-514-50-0524-Philips', '103.103.100.129', 6, NULL, NULL),
(403, 'Elly', 'PGB- TWR -1415-20-0624-Elly', '103.103.100.130', 6, NULL, NULL),
(404, 'Vernando Gultom', 'PGB-TWR-605-10-0624-Vernando', '103.103.100.133', 6, NULL, NULL),
(405, 'Natalia Pangaribuan', 'PGB-BLOK-D-517-10-0624-Natalia', '103.103.100.134', 6, NULL, NULL),
(406, 'Wiharti', 'PGB-TWR-1405-10-0624-Wiharti', '103.103.100.132', 6, NULL, NULL),
(407, 'Muhamad Rizki', 'PGB-TWR-0116-10-0724-rizki', '103.103.100.135', 6, NULL, NULL),
(408, 'Kentbra Eg', 'PGB-F-503-Kentbra', '103.103.100.136', 6, NULL, NULL),
(409, 'Femmy', 'PGB-A-112-Femmy', '103.103.100.137', 6, NULL, NULL),
(410, 'James Roy', 'PGB-H-503-James', '103.103.100.138', 6, NULL, NULL),
(411, 'Apritha', 'PGB-TWR-502-Apritha', '103.103.100.139', 6, NULL, NULL),
(412, 'Sri Muntiah', 'PGB-B-215-Sri', '103.103.100.3', 6, NULL, NULL),
(413, 'Andin', 'PGB-A-118-Andin', '103.103.100.140', 6, NULL, NULL),
(414, 'Endah', 'PGB-E-209-Endah', '103.103.100.142', 6, NULL, NULL),
(415, 'Retno', 'PBG-B5-01-Retno', '103.103.100.143', 6, NULL, NULL),
(416, 'Ita Lestari', 'PGB-B-202-Lestari', '103.103.100.46', 6, NULL, NULL),
(417, 'Bunda Umi', 'PGB-E-207-Umi', '103.103.100.141', 6, NULL, NULL),
(418, 'Indri', 'PGB-F-104-Indri', '103.103.100.145', 6, NULL, NULL),
(419, 'Yenni', 'PGB-B-108-Yenni', '103.103.100.144', 6, NULL, NULL),
(420, 'Rahma', 'PGB-B-217-Rahma', '103.103.100.146', 6, NULL, NULL),
(421, 'Denny Susanto', 'PGB-B-1412-Deny', '103.103.100.147', 6, NULL, NULL),
(422, 'Chintia Damayanti', 'PGB-H-311-Chintia', '103.103.100.155', 6, NULL, NULL),
(423, 'Fitri', 'PGB-G-215-Fitri', '103.103.100.148', 6, NULL, NULL),
(424, 'Nonie', 'PGB-B-213-Nonie', '103.103.100.149', 6, NULL, NULL),
(425, 'Rejeki Malau', 'PGB-A-405-Rejeki', '103.103.100.150', 6, NULL, NULL),
(426, 'Tri Rejeki', 'PGB-B-315-Tri', '103.103.100.152', 6, NULL, NULL),
(427, 'Ratna Komala Dewi Ningrum', 'PGB-B-118-Ratna', '103.103.100.151', 6, NULL, NULL),
(428, 'Matthew Oktavianus Gabriel', 'PGB-G-512-Matthew', '103.103.100.153', 6, NULL, NULL),
(429, 'Tara Novi S.l', 'PGB-A-202-Tara', '103.103.100.154', 6, NULL, NULL),
(430, 'Wawan Riyanto', 'PGB-BLOK-C-112-10-6573-Wawan', '103.103.100.156', 6, NULL, NULL),
(431, 'Bayu Angelo Sondakh', 'PGB-BLOK-B-518-50-0624-Bayu', '103.103.100.131', 6, NULL, NULL),
(432, 'Krissamon P Nababan', 'PGB-TWR-304-30-Krissamon', '103.103.100.157', 6, NULL, NULL),
(433, 'Yuliani', 'PGB-BLOK G-2-202-yuliani', '103.103.100.158', 6, NULL, NULL),
(434, 'Nur Widyastuti', 'PGB-BLOK-B-210-Nur', '103.103.100.160', 6, NULL, NULL),
(435, 'Adrian Ramadhan', 'PGB-BLOK-B-214-Adrian', '103.103.100.161', 6, NULL, NULL),
(436, 'Setiadi', 'PGB-BLOK-F-301-Setiadi', '103.103.100.162', 6, NULL, NULL),
(437, 'Fariz', 'PGB-BLOK-F-309-Fariz', '103.103.100.163', 6, NULL, NULL),
(438, 'Imam Sudiro', 'PGB-BLOK-H-411-Imam', '103.103.100.164', 6, NULL, NULL),
(439, 'Viddy Supit', 'PGB-BLOK-D-08-Viddy', '103.103.100.165', 6, NULL, NULL),
(440, 'Pratiwi', 'PGB-BLOK-A-215-pratiwi', '103.103.100.166', 6, NULL, NULL),
(441, 'Bunda Aina', 'PGB-BLOK-G-102-Aina', '103.103.100.167', 6, NULL, NULL),
(442, 'Eddyson manulang', 'PGB-TWR-1102-Eddyson', '103.103.100.168', 6, NULL, NULL),
(443, 'Attalah', 'PGB-BLOK-D-401-Attalah', '103.103.100.169', 6, NULL, NULL),
(444, 'Abidan simanjuntak', 'PGB-BLOK-E-15-Abidan', '103.103.100.170', 6, NULL, NULL),
(445, 'Antis Mawilda', 'PGB-BLOK-F-206-Antis', '103.103.100.170', 6, NULL, NULL),
(446, 'H. Herlan Matrusdi', 'PGB-TWR-1608-Herlan', '103.103.100.172', 6, NULL, NULL),
(447, 'Yulianti', 'PGB-B-218-Yulianti', '103.103.100.173', 6, NULL, NULL),
(448, 'Diah Ayu Nurkhasanah', 'PGB-BLOK-A-510-Diah', '103.103.100.174', 6, NULL, NULL),
(449, 'Tri Widyawati', 'PGB-BLOK-A-509-Tri', '103.103.100.175', 6, NULL, NULL),
(450, 'Erna', 'PGB-BLOK-B-105-Erna', '103.103.100.176', 6, NULL, NULL),
(451, 'Ida Jedah', 'PGB-BLOK-B-104-Ida', '103.103.100.177', 6, NULL, NULL),
(452, 'Maista', 'PGB-BLOK-B-106-Maista', '103.103.100.178', 6, NULL, NULL),
(453, 'Tri Riyantini', 'PGB-BLOK-D-420-Tri', '103.103.100.179', 6, NULL, NULL),
(454, 'Angka Praditya', 'PGB-BLOK-D-112-Praditya', '103.103.100.180', 6, NULL, NULL),
(455, 'Fatima Alhaura', 'PGB-BLOK-H-112-Fatima', '103.103.100.182', 6, NULL, NULL),
(456, 'Rian Hidayat', 'PGB-BLOK-F-302-Hidayat', '103.103.100.181', 6, NULL, NULL),
(457, 'Risna', 'PGB-TWR-307-Risna', '103.103.100.183', 6, NULL, NULL),
(458, 'Kencana', 'PGB-BLOK-H-211-Kencana', '103.103.100.184', 6, NULL, NULL),
(459, 'Dewi Maryani', 'PGB-Blok-B-113-Dewi', '103.103.100.185', 6, NULL, NULL),
(460, 'Linda', 'PGB-Blok-B-107-Linda', '103.103.100.186', 6, NULL, NULL),
(461, 'Darwis', 'PGB-Blok-H-314-Darwis', '103.103.100.187', 6, NULL, NULL),
(462, 'Keyla', 'PGB-TWR-1217-Keyla', '103.103.100.188', 6, NULL, NULL),
(463, 'Suheri', 'PGB-Blok-A-302-Suheri', '103.103.100.189', 6, NULL, NULL),
(464, 'Haerunisa', 'PGB-Blok-F-306-Haerunis', '103.103.100.190', 6, NULL, NULL),
(465, 'Wida Widianti', 'PGB-BLOK-D-1-113-Wida', '103.103.100.191', 6, NULL, NULL),
(466, 'Eva', '628231017107431', '102.102.100.11', 6, NULL, NULL),
(467, 'Axl', '628226000505020', '102.102.100.9', 6, NULL, NULL),
(468, 'Fransiska tjatur s', '628965253238887', '102.102.100.10', 6, NULL, NULL),
(469, 'Sari mawar', '62811979258859', '102.102.100.14', 6, NULL, NULL),
(470, 'Daniel Kristianto', '6281181696918', '102.102.100.18', 6, NULL, NULL),
(471, 'Mardelina tambunan', '628131581615691', '102.102.100.16', 6, NULL, NULL),
(472, 'Alexander Buyung', '62816134517892', '102.102.100.19', 6, NULL, NULL),
(473, 'Aziz Safani', '628121329729981', '102.102.100.27', 6, NULL, NULL),
(474, 'Asael Reinhart', '628125955031871', '102.102.100.32', 6, NULL, NULL),
(475, 'Robi Hambali', '628129466143893', '102.102.100.7', 6, NULL, NULL),
(476, 'Febry Papilaya', 'CKG-TPR-RSML-310-20-1123-Febry', '102.102.100.47', 6, NULL, NULL),
(477, 'Junus R. S.', 'CKR-TPR-AKS-30-107-0224-Junus', '102.102.100.49', 6, NULL, NULL),
(478, 'Brally Henoch', 'CKR-TPR-ANG-303-20-0324-Brally', '102.102.100.52', 6, NULL, NULL),
(479, 'Binsar M Silaen', 'CKG-TPR-PSP-118-Binsar', '102.102.100.62', 6, NULL, NULL),
(480, 'Angel Tifanie', 'CKG-BRT-105-20-0623-Tifani627', '102.102.100.13', 6, NULL, NULL),
(481, 'Richard Herrison Tuegeh', 'CKG-BRT-B-105-30-0623-Richard6386', '102.102.100.21', 6, NULL, NULL),
(482, 'Veriana Permatasari', '628770877949118', '102.102.100.22', 6, NULL, NULL),
(483, 'David Putra', '6289532736548050', '102.102.100.23', 6, NULL, NULL),
(484, 'Marsel Kusoy', '628777554489859', '102.102.100.24', 6, NULL, NULL),
(485, 'Cynthia Ratna Octaviana', '62811193200418', '102.102.100.29', 6, NULL, NULL),
(486, 'Jerrico Christian Karisoh', '628515527507087', '102.102.100.30', 6, NULL, NULL),
(487, 'Delima Roshendra', '628227322356217', '102.102.100.31', 6, NULL, NULL),
(488, 'Semuel Arnolus', '628222100092072', '102.102.100.33', 6, NULL, NULL),
(489, 'Alfin', 'CKG-BRT-F-105-20-0723-Alfin', '102.102.100.38', 6, NULL, NULL),
(490, 'Putri Adyta', 'CKG-BRT-B-201-10-1023-PUTRI', '102.102.100.40', 6, NULL, NULL),
(491, 'Fitriana', 'CKG-BRT-B-101-10-1023-FITRI', '102.102.100.41', 6, NULL, NULL),
(492, 'Gustina', 'CKG-BRT-B-108-10-1023-Gustina', '102.102.100.42', 6, NULL, NULL),
(493, 'Firmansyah', 'CKG-BRT-B-107-10-1023-Firmansyah', '102.102.100.43', 6, NULL, NULL),
(494, 'Ali Subandi', 'CKG-BRT-B-211-20-1123-Subandi', '102.102.100.45', 6, NULL, NULL),
(495, 'Winda', 'CKG-BRT-A-512-10-1123-Winda', '102.102.100.46', 6, NULL, NULL),
(496, 'Marsikul Fitri aningrum', 'CKG-BRT--B-404-1123-MARSIKUL', '102.102.100.48', 6, NULL, NULL),
(497, 'Allesandro Giovany', 'CKG-BRT--B-102-0224-Allesandro', '102.102.100.51', 6, NULL, NULL),
(498, 'Rendra Setyawan', 'CKG-BRT--B-308-10-0424-Rendra', '102.102.100.53', 6, NULL, NULL),
(499, 'Fathir', 'CKG-BRT-B-110-50-0524-Fathir', '102.102.100.54', 6, NULL, NULL),
(500, 'Oma Joey', 'CKG-BRT-B-207-10-0524-Oma', '102.102.100.55', 6, NULL, NULL),
(501, 'Selly Ayu Irawaty', 'CKB-G-205-Selly', '102.102.100.56', 6, NULL, NULL),
(502, 'Silvia Putranti', 'CKB-G-210-Silvia', '102.102.100.59', 6, NULL, NULL),
(503, 'Heryanti', 'CKB-G-0307-Heryanti', '102.102.100.60', 6, NULL, NULL),
(504, 'Micka Afianto', 'CKB-B-402- Micka', '102.102.100.61', 6, NULL, NULL),
(505, 'Nadya', 'CKB-A-506-Nadya', '102.102.100.63', 6, NULL, NULL);

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
(1, 'Admin', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(2, 'Helpdesk', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(3, 'Teknisi', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45'),
(4, 'NOC', 'web', '2024-12-25 21:15:56', '2024-12-25 21:15:56');

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
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 3),
(9, 4),
(10, 1),
(10, 3),
(10, 4),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(13, 1),
(13, 4),
(14, 1),
(14, 4),
(15, 1),
(15, 4),
(16, 1),
(16, 4),
(17, 1),
(17, 2),
(17, 4),
(18, 1),
(18, 2),
(18, 4),
(19, 1),
(19, 2),
(19, 4),
(20, 1),
(20, 2),
(20, 4),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(22, 1),
(22, 2),
(22, 4),
(23, 1),
(23, 2),
(23, 4),
(24, 1),
(24, 2),
(24, 4),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(27, 1),
(27, 3),
(27, 4),
(28, 1),
(28, 3),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(31, 1),
(31, 2),
(31, 4),
(33, 1),
(33, 4),
(34, 1),
(34, 4),
(35, 1),
(35, 4),
(36, 1),
(36, 4);

-- --------------------------------------------------------

--
-- Table structure for table `slas`
--

CREATE TABLE `slas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `response` int(11) NOT NULL,
  `resolution` int(11) NOT NULL,
  `warning` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slas`
--

INSERT INTO `slas` (`id`, `name`, `response`, `resolution`, `warning`) VALUES
(5, 'Critical', 1, 8, 6),
(6, 'High', 1, 8, 6),
(7, 'Medium', 1, 8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `sla_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `reportedby` int(11) NOT NULL,
  `reporteddate` datetime NOT NULL,
  `problemsummary` varchar(255) NOT NULL,
  `problemdetail` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `assignee` int(11) NOT NULL,
  `assigneddate` datetime NOT NULL,
  `pendingby` int(11) DEFAULT NULL,
  `pendingdate` datetime DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `resolvedby` int(11) DEFAULT NULL,
  `resolveddate` datetime DEFAULT NULL,
  `closedby` int(11) DEFAULT NULL,
  `closeddate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `number`, `sla_id`, `customer_id`, `reportedby`, `reporteddate`, `problemsummary`, `problemdetail`, `status`, `assignee`, `assigneddate`, `pendingby`, `pendingdate`, `resolution`, `resolvedby`, `resolveddate`, `closedby`, `closeddate`, `created_at`, `updated_at`) VALUES
(63, '1/2024', 6, 6, 1, '2024-12-27 00:00:00', 'LOS MERAH', 'KABEL PUTUS', 'Closed', 8, '2024-12-27 02:21:59', NULL, NULL, 'resplacing', NULL, NULL, NULL, NULL, '2024-12-26 19:21:59', '2024-12-26 19:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$JJaLK7OAN3tLkdSRH0enQOxW3IB3SoRtJ0apq/7OadeZKci5EAaLO', NULL, '2021-03-03 09:43:36', '2021-03-03 09:43:36'),
(3, 'Jono', 'jono@gmail.com', NULL, '$2y$10$UGJ4zVb87OrUmaD2JLx0S.XTpGJ.RQBr85Z6AGJHidM/SDpMujPYa', NULL, '2021-03-14 08:58:12', '2021-03-14 08:58:12'),
(6, 'NOC - Dani', 'dani@noc.com', NULL, '$2y$10$KpNN7CP1loPrl/6IrtGVPe9S0dd7Imx3WE4qveNck8OkrCcBOT5vK', NULL, '2024-12-25 04:22:40', '2024-12-25 21:21:58'),
(7, 'Teknisi-Ahmad', 'ahmad@teknisi.com', NULL, '$2y$10$K13eg8.WHFawR0TEb/ibU.lLbKgK/SIpLEkRQODlIHkwjU/UOSWZS', NULL, '2024-12-25 05:13:11', '2024-12-25 05:13:11'),
(8, 'Teknisi-Aryan', 'aryan@teknisi.com', NULL, '$2y$10$R2g64zgxUwgDEP91IjfLj.lYFbieUL1J49XxJSptG1Pm7aCKIiSDu', NULL, '2024-12-25 05:14:19', '2024-12-25 05:14:43'),
(9, 'Teknisi-Yohan', 'yohan@teknisi.com', NULL, '$2y$10$tshzNDR2hk.qwmJLCpVCKOJgjhavlPfu3RZP.KMxCPkAxD33RcOjq', NULL, '2024-12-25 05:15:09', '2024-12-25 05:15:09'),
(10, 'Teknisi-Andri', 'andri@teknisi.com', NULL, '$2y$10$BsK.AXzaOUsPjDx819iZ7.tbs81mG7rIwL7C5Pw63BCWlQ/ew0Qme', NULL, '2024-12-25 05:15:36', '2024-12-25 05:15:36'),
(11, 'NOC-Baihaqi', 'baihaqi@noc.com', NULL, '$2y$10$cZmggLUD1TKlUc7dcrSqe.JOB6imVDinD2BFTV/CrVMeQ.U8gRrEG', NULL, '2024-12-25 05:17:15', '2024-12-25 05:17:15'),
(12, 'NOC-Irsyad', 'irsyad@noc.com', NULL, '$2y$10$vd35qCpCMRKytcwpA4odGOjD3MvRX7Tizkpwz9ZHHqW9OCum.gLie', NULL, '2024-12-25 05:17:39', '2024-12-25 05:17:39'),
(13, 'NOC-Rizki', 'rizki@noc.com', NULL, '$2y$10$c8oCiQFwMTEr/6eMIg8TAun2NPFNEJg/BvPU.ipiPFbalHcbTBrse', NULL, '2024-12-25 05:18:11', '2024-12-25 05:18:11'),
(14, 'NOC-Fahri', 'fahri@noc.com', NULL, '$2y$10$K1kaIsviPgWEMtbuCukshuDQ./zydDmgA6ndCsKjfE3hn.oDG5EMW', NULL, '2024-12-25 05:18:34', '2024-12-25 05:18:34'),
(15, 'SPV-SIGIT', 'spv@admin.com', NULL, '$2y$10$19QDUTEULu7p1YI3Bg/oSOKinOI8x4dcrz3D/1c10GB0qZ9oW8rQ2', NULL, '2024-12-25 05:19:07', '2024-12-25 05:19:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `log_emails`
--
ALTER TABLE `log_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_emails_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `log_users`
--
ALTER TABLE `log_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_users_user_id_foreign` (`user_id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_customer_id_foreign` (`customer_id`);

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
-- Indexes for table `slas`
--
ALTER TABLE `slas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_sla_id_foreign` (`sla_id`),
  ADD KEY `tickets_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log_emails`
--
ALTER TABLE `log_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_users`
--
ALTER TABLE `log_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slas`
--
ALTER TABLE `slas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_emails`
--
ALTER TABLE `log_emails`
  ADD CONSTRAINT `log_emails_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

--
-- Constraints for table `log_users`
--
ALTER TABLE `log_users`
  ADD CONSTRAINT `log_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `tickets_sla_id_foreign` FOREIGN KEY (`sla_id`) REFERENCES `slas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
