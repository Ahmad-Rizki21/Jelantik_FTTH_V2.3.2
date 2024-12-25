-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2024 at 02:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(64, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Memperbaharui Tiket No 1/2024', '2024-12-25 04:38:39', '2024-12-25 04:38:39');

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
(1, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10);

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
(50, 'Inggit Rosphiana', 'WRG-A3-5-Inggit', '192.168.40.6', 5, NULL, NULL);

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
(3, 'Teknisi', 'web', '2021-03-03 09:40:45', '2021-03-03 09:40:45');

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
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(31, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

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
(0, '1/2024', 6, 5, 1, '2024-12-25 00:00:00', 'LOS MERAH', 'Indikasi kabel putus', 'Closed', 6, '2024-12-25 11:31:51', NULL, NULL, 'Sudah di lakukan penyambungan', NULL, NULL, NULL, NULL, '2024-12-25 04:31:51', '2024-12-25 04:38:39');

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
(6, 'NOC - DANI', 'dani@gmail.com', NULL, '$2y$10$KpNN7CP1loPrl/6IrtGVPe9S0dd7Imx3WE4qveNck8OkrCcBOT5vK', NULL, '2024-12-25 04:22:40', '2024-12-25 04:22:40'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slas`
--
ALTER TABLE `slas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
