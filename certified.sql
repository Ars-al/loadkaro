-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2024 at 12:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `certified`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$12$9Q6ByKm1xy8flKx.4UVtAuE5X6BWsfuLf1nuhUZPG50AMMRF39nY.', '2024-08-01 01:40:59', '2024-07-31 10:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transporter_id` bigint(20) UNSIGNED NOT NULL,
  `bid_id` bigint(20) UNSIGNED NOT NULL,
  `bid` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `transporter_id`, `bid_id`, `bid`, `created_at`, `updated_at`) VALUES
(61, 4, 24, '5', '2024-08-18 20:25:13', '2024-08-18 20:25:13'),
(62, 1, 24, '7', '2024-08-18 20:25:42', '2024-08-18 20:25:42'),
(63, 2, 24, '10', '2024-08-18 20:26:15', '2024-08-18 20:26:15'),
(64, 4, 25, '9', '2024-08-19 11:23:53', '2024-08-19 11:23:53'),
(65, 4, 25, '9', '2024-08-19 11:23:54', '2024-08-19 11:23:54'),
(66, 1, 25, '7', '2024-08-19 11:24:17', '2024-08-19 11:24:17'),
(67, 2, 25, '10', '2024-08-19 11:24:42', '2024-08-19 11:24:42'),
(68, 1, 26, '6', '2024-08-19 11:55:48', '2024-08-19 11:55:48'),
(69, 4, 26, '3', '2024-08-19 11:56:11', '2024-08-19 11:56:11'),
(70, 2, 26, '4', '2024-08-19 11:56:34', '2024-08-19 11:56:34'),
(71, 4, 27, '1', '2024-08-19 12:37:57', '2024-08-19 12:37:57'),
(72, 34, 28, '6', '2024-08-22 17:57:14', '2024-08-22 17:57:14'),
(75, 4, 28, '6', '2024-08-22 18:26:32', '2024-08-22 18:26:32'),
(76, 4, 28, '98', '2024-08-22 18:26:32', '2024-08-22 18:26:32'),
(77, 4, 39, '66', '2024-08-26 20:23:48', '2024-08-26 20:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact__management`
--

CREATE TABLE `contact__management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact__management`
--

INSERT INTO `contact__management` (`id`, `name`, `subject`, `email`, `message`, `created_at`, `updated_at`) VALUES
(5, 'ahmed', 'programmer', 'ahmed@gmail.com', 'thankyou so much', '2024-07-30 10:33:16', '2024-07-30 11:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_otp_expires_at` timestamp NULL DEFAULT NULL,
  `aadhaar_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhaar_verified` tinyint(4) NOT NULL DEFAULT 0,
  `pan_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `image`, `email`, `phone`, `password`, `email_otp`, `phone_otp`, `phone_otp_expires_at`, `aadhaar_number`, `pan_number`, `aadhaar_verified`, `pan_verified`, `email_verified`, `phone_verified_at`, `phone_verified`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'Arsal', '1724024083.jpg', 'arsal@gmail.com', '1235486748', '$2y$12$ag5Fa7blqUeE38tFCOg8PePRODJ0C44FfI.gfPWmCDuoVPGCjhbSe', NULL, NULL, NULL, '293141298887', 'EMIPS3133N', 1, 1, 0, NULL, 0, 1, '2024-08-15 22:15:32', '2024-08-22 18:52:40'),
(2, 'Test', '1724002616.png', 'test@gmail.com', '61217444', '$2y$12$9Q6ByKm1xy8flKx.4UVtAuE5X6BWsfuLf1nuhUZPG50AMMRF39nY.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(3, 'Test Customer', '1724026254.jpg', 'customer@gmail.com', '454784564', '$2y$12$iT/xLDAEtbzHb2VwtpbTguBR0qd6oGCE6Ki6SmUQPfs2BuHD4Sj3G', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, '2024-08-18 19:10:54', '2024-08-18 19:10:54'),
(6, 'secondtest@gmail.com', '1724624622.png', 'second@gmail.com', '4545646415', '$2y$12$B0dzipVNx/.u3Ir6LRudjubgufFJCqqfjzUaxm4R9DEk6wOGw0OBa', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, '2024-08-25 13:33:39', '2024-08-25 17:23:42'),
(12, 'arsalcheck', '1724954562.jpg', 'check123@gmail.com', '564564564', '$2y$12$U2i5YYdHSk5C5KLki/2XVuoLWRUm7jmSw/XXUafUaCNzhSh5C29mO', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, '2024-08-29 13:02:42', '2024-08-29 13:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_qs`
--

CREATE TABLE `f_a_qs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_qs`
--

INSERT INTO `f_a_qs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'First FAQ', 'Checking...!', '2024-07-31 08:21:01', '2024-07-31 08:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `transporter_id` bigint(20) UNSIGNED NOT NULL,
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `customer_id`, `transporter_id`, `request_id`, `message`, `file`, `sender`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 24, 'hi', NULL, '1', '2024-08-19 07:02:01', '2024-08-19 07:02:01'),
(2, 1, 4, 24, 'This is your customer here!', NULL, '1', '2024-08-19 07:04:32', '2024-08-19 07:04:32'),
(5, 1, 4, 24, 'Checking File....!', '1724071862.jpg', '1', '2024-08-19 07:51:02', '2024-08-19 07:51:02'),
(6, 1, 4, 24, 'Hello This is Customer', NULL, '1', '2024-08-19 10:54:15', '2024-08-19 10:54:15'),
(9, 1, 4, 24, 'hello', NULL, '4', '2024-08-19 11:11:15', '2024-08-19 11:11:15'),
(10, 1, 4, 24, 'This is Transporter Here', NULL, '4', '2024-08-19 11:12:00', '2024-08-19 11:12:00'),
(11, 1, 4, 24, 'Nice Picture...!', NULL, '4', '2024-08-19 11:12:19', '2024-08-19 11:12:19'),
(12, 1, 4, 24, 'Thank You', NULL, '1', '2024-08-19 11:12:32', '2024-08-19 11:12:32'),
(13, 1, 4, 24, 'Pleasure', NULL, '4', '2024-08-19 11:15:07', '2024-08-19 11:15:07'),
(14, 1, 1, 25, 'Hello This is Customer Here!', NULL, '1', '2024-08-19 11:31:53', '2024-08-19 11:31:53'),
(15, 1, 1, 25, 'Hello This is Transporter Here!', NULL, '1', '2024-08-19 11:32:12', '2024-08-19 11:32:12'),
(16, 1, 4, 26, 'Your Customer', NULL, '1', '2024-08-19 12:01:41', '2024-08-19 12:01:41'),
(17, 1, 4, 26, 'Your Transporter', NULL, '4', '2024-08-19 12:01:49', '2024-08-19 12:01:49'),
(18, 1, 4, 26, NULL, NULL, '4', '2024-08-19 12:18:09', '2024-08-19 12:18:09'),
(19, 1, 4, 26, 'Yes', NULL, '4', '2024-08-19 12:18:14', '2024-08-19 12:18:14'),
(20, 1, 4, 26, NULL, NULL, '4', '2024-08-19 12:19:11', '2024-08-19 12:19:11'),
(21, 1, 4, 26, NULL, NULL, '4', '2024-08-19 12:19:12', '2024-08-19 12:19:12'),
(22, 1, 4, 26, 'Customer', NULL, '1', '2024-08-19 12:38:37', '2024-08-19 12:38:37'),
(23, 1, 4, 26, 'Transporter', NULL, '4', '2024-08-19 12:38:49', '2024-08-19 12:38:49'),
(24, 1, 4, 26, 'Hello Transporter here', NULL, '4', '2024-08-19 13:36:19', '2024-08-19 13:36:19'),
(25, 1, 4, 26, 'This is Customer.........!', NULL, '1', '2024-08-19 13:36:37', '2024-08-19 13:36:37'),
(26, 1, 1, 25, 'Hi', NULL, '1', '2024-08-20 16:48:29', '2024-08-20 16:48:29'),
(27, 1, 4, 27, 'Hello Sir this is customer here..', NULL, '1', '2024-08-20 16:50:00', '2024-08-20 16:50:00'),
(28, 1, 4, 27, 'Hello This is Transporter here.', NULL, '4', '2024-08-20 16:50:48', '2024-08-20 16:50:48'),
(29, 1, 4, 28, 'Hello Sir this is Transporter here, you still can\'t paid the fee,', NULL, '4', '2024-08-26 19:17:19', '2024-08-26 19:17:19'),
(30, 1, 4, 28, 'Yes sir i still not paid the fee. i will in a moment.', NULL, '1', '2024-08-26 19:19:50', '2024-08-26 19:19:50'),
(31, 1, 4, 39, 'Hello', NULL, '1', '2024-08-26 20:27:25', '2024-08-26 20:27:25'),
(32, 1, 4, 39, 'Yes', NULL, '4', '2024-08-26 20:27:31', '2024-08-26 20:27:31'),
(33, 1, 4, 27, 'hello there', NULL, '1', '2024-08-29 13:04:15', '2024-08-29 13:04:15');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_29_125938_create_terms_and_conditions_table', 2),
(5, '2024_07_29_132529_create_privacy_policies_table', 3),
(6, '2024_07_29_133354_create_f_a_qs_table', 4),
(7, '2024_07_30_123009_create_packages_table', 5),
(8, '2024_07_30_145747_create_contact__management_table', 6),
(11, '2024_07_30_170212_create_website_settings_table', 7),
(12, '2024_07_31_145038_create_admins_table', 8),
(17, '2024_08_14_015834_create_customers_table', 9),
(18, '2024_08_14_221103_create_request_trucks_table', 10),
(19, '2024_08_14_224224_create_transporters_table', 11),
(21, '2024_08_15_002536_create_bids_table', 12),
(22, '2024_08_19_013537_create_messages_table', 13),
(23, '2024_08_21_161059_create_payments_table', 14),
(24, '2024_08_23_153331_create_plans_table', 15),
(25, '2024_08_23_153410_create_subscriptions_table', 15),
(26, '2024_08_24_150345_create_subscription_payments_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `title`, `image`, `price`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Arsal', 'checking', '1722423845.jpg', '10000', 'HELLO WORLD!', '2024-07-31 06:04:05', '2024-07-31 07:19:16'),
(4, 'Shaheer', 'Subscription', '1722426722.png', '1223', 'hello', '2024-07-31 06:52:02', '2024-07-31 07:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `transporter_id` bigint(20) UNSIGNED NOT NULL,
  `request_truck_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'successful',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `customer_id`, `transporter_id`, `request_truck_id`, `amount`, `payment_status`, `payment_method`, `transaction_id`, `created_at`, `updated_at`) VALUES
(45, 1, 4, 26, '3.00', 'successful', NULL, 'pay_OnvCKpMwz3NRk7', '2024-08-22 06:02:40', '2024-08-22 06:03:15'),
(46, 1, 4, 24, '5.00', 'pending', NULL, 'pay_OnvLr5R2t1MILh', '2024-08-22 06:11:46', '2024-08-22 06:12:16'),
(49, 1, 1, 25, '7.00', 'successful', NULL, 'pay_Oo31zFPgzFOBcj', '2024-08-22 13:42:23', '2024-08-22 13:42:58'),
(50, 1, 4, 27, '1.00', 'successful', NULL, 'pay_Oo7HHYtSLN4Hl1', '2024-08-22 17:51:43', '2024-08-22 17:52:17'),
(51, 1, 4, 24, '5.00', 'successful', NULL, 'pay_OoJnXEg939sdP1', '2024-08-23 06:06:01', '2024-08-23 06:07:05'),
(75, 1, 4, 39, '66.00', 'pending', NULL, NULL, '2024-08-30 17:28:51', '2024-08-30 17:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `leads_limit` int(11) NOT NULL DEFAULT 0,
  `razorpay_plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `leads_limit`, `razorpay_plan_id`, `features`, `is_active`, `created_at`, `updated_at`) VALUES
(16, 'Basic', '499.00', 10, 'plan_OoX4kK2ckjv1yP', 'Limited cites only\r\n12-25% platform fee', 1, '2024-08-23 19:06:03', '2024-08-24 18:24:30'),
(17, 'Standard ', '999.00', 50, 'plan_OoXXyZFXGEptqQ', '12% platform fee\r\nUpto 5 routs', 1, '2024-08-23 19:33:44', '2024-08-23 19:33:45'),
(18, 'Expert', '4999.00', 1000, 'plan_OoXbMO973drqV1', 'All India Routs,\r\nOnly 5% platform fee\\', 1, '2024-08-23 19:36:56', '2024-08-23 19:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Checking</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong></strong><br></p><p></p><p></p><p></p><p></p><p></p><p></p><p><br></p>', NULL, '2024-07-31 06:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `request_trucks`
--

CREATE TABLE `request_trucks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `source_pin` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_pin` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `bidding_ends_at` timestamp NULL DEFAULT NULL,
  `winning_bid_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_trucks`
--

INSERT INTO `request_trucks` (`id`, `customer_id`, `type`, `weight`, `quantity`, `origin`, `destination`, `distance`, `time`, `material`, `schedule_date`, `source_pin`, `destination_pin`, `pickup_type`, `pickup_date`, `status`, `bidding_ends_at`, `winning_bid_id`, `created_at`, `updated_at`) VALUES
(24, 1, 'Open Body', '600KG', '7X', 'Karachi', 'Lahore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-08-18 20:27:04', 61, '2024-08-18 20:25:04', '2024-08-18 20:27:06'),
(25, 1, 'Refregerated', '400KG', '15X', 'Peshawar', 'Naran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-08-19 11:25:40', 66, '2024-08-19 11:23:40', '2024-08-19 11:28:50'),
(26, 1, 'Closed Body', '900KG', '20X', 'Lahore', 'Karachi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-08-19 11:57:32', 69, '2024-08-19 11:55:32', '2024-08-19 11:58:40'),
(27, 1, 'Refregerated', '800KG', '1X', 'Islamabad', 'Kashmir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-08-19 12:39:28', 71, '2024-08-19 12:37:28', '2024-08-19 17:38:04'),
(28, 1, 'Open Body', '600KG', '9X', 'Chennai', 'Chepauk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-08-22 17:58:55', 75, '2024-08-22 17:56:55', '2024-08-23 17:38:02'),
(30, 1, 'Closed Body', '550KG', '2X', 'Karachi', 'Lahore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2024-08-25 13:03:10', '2024-08-25 13:03:10'),
(31, 1, 'Refregerated', '1KG', '100X', 'lahore', 'karachi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2024-08-25 13:04:01', '2024-08-25 13:04:01'),
(32, 1, 'Open Body', '660KG', '3X', 'Karachi', 'Lahore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2024-08-25 13:10:53', '2024-08-25 13:10:53'),
(33, 2, 'Refregerated', '2KG', '10X', 'islamabad', 'rawalpindi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2024-08-25 13:12:28', '2024-08-25 13:12:28'),
(34, 2, 'Open Body', '34KG', '34X', 'Hyderabad', 'Larkana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-08-25 13:18:18', NULL, '2024-08-25 13:16:18', '2024-08-25 13:16:18'),
(37, 6, 'Open Body', '6KG', '6X', 'mirpurkhas', 'kherpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-08-25 13:35:39', NULL, '2024-08-25 13:33:39', '2024-08-25 13:33:39'),
(39, 1, 'Open Body', '5KG', '20X', 'Hyderabad', 'larkana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-08-26 20:25:38', 77, '2024-08-26 20:23:38', '2024-08-26 20:27:02'),
(40, 1, 'Open Body', '100KG', '2', 'shikarpur', 'kherpur', NULL, NULL, 'woods', '2024-08-29', NULL, NULL, NULL, NULL, '0', '2024-08-27 10:35:47', NULL, '2024-08-27 10:33:47', '2024-08-27 10:33:47'),
(41, 1, NULL, '150KG', NULL, 'Kashmir', 'karachi', NULL, NULL, 'households', NULL, '100001', '200001', '6', '2024-08-30', '0', '2024-08-27 10:45:09', NULL, '2024-08-27 10:43:09', '2024-08-27 10:43:09'),
(51, 8, 'Open Body', '666KG', '2', 'Karachi', 'Lahore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-08-27 13:58:33', NULL, '2024-08-27 13:56:33', '2024-08-27 13:56:33'),
(52, 8, 'Open Body', '99KG', '1', 'lahore', 'karachi', NULL, NULL, 'woods', '2024-08-29', NULL, NULL, NULL, NULL, '0', '2024-08-27 14:04:07', NULL, '2024-08-27 14:02:07', '2024-08-27 14:02:07'),
(53, 8, NULL, '666KG', NULL, 'Jaipur', 'Udaypur', NULL, NULL, 'bikes', NULL, '66666', '444444', 'Bike Delivery', '2024-08-29', '0', '2024-08-27 14:08:50', NULL, '2024-08-27 14:06:50', '2024-08-27 14:06:50'),
(54, 9, 'Open Body', '999KG', '2', 'karachi', 'lahore', NULL, NULL, 'furniture', '2024-08-31', NULL, NULL, NULL, NULL, '0', '2024-08-27 14:10:18', NULL, '2024-08-27 14:08:18', '2024-08-27 14:08:18'),
(55, 10, NULL, '555KG', NULL, 'Karachi', 'lahor', NULL, NULL, 'bikes', NULL, '8888', '7777', 'Bike Delivery', '2024-08-31', '0', '2024-08-27 14:11:45', NULL, '2024-08-27 14:09:45', '2024-08-27 14:09:45'),
(56, 9, '40', 'Do Not Know', '2', 'peshawar', 'balochistan', NULL, NULL, 'Building Materials', '2024-08-31', NULL, NULL, NULL, NULL, '0', '2024-08-30 11:50:30', NULL, '2024-08-30 11:48:30', '2024-08-30 11:48:30'),
(57, 9, NULL, 'Upto 12 MT', NULL, 'sindh', 'punjab', NULL, NULL, 'Chemicals', NULL, '777777', '666666', 'Door to Door Delivery', '2024-09-01', '0', '2024-08-30 11:51:52', NULL, '2024-08-30 11:49:52', '2024-08-30 11:49:52'),
(58, 9, '8', 'Above 30 MT', '3', 'karachi', 'hyderabad', NULL, NULL, 'Auto Parts', '2024-09-07', NULL, NULL, NULL, NULL, '0', '2024-08-30 11:57:35', NULL, '2024-08-30 11:55:35', '2024-08-30 11:55:35'),
(59, 9, 'Trailer 4923', 'Upto 20 MT', '2', 'karachi', 'lahore', NULL, NULL, 'Fertilizers', '2024-09-03', NULL, NULL, NULL, NULL, '0', '2024-08-30 12:01:28', NULL, '2024-08-30 11:59:28', '2024-08-30 11:59:28'),
(60, 9, NULL, 'Upto 12 MT', NULL, 'lahore', 'karachi', NULL, NULL, 'Fruits And Vegetables', NULL, '222222', '3333333', 'General', '2024-09-04', '0', '2024-08-30 12:02:04', NULL, '2024-08-30 12:00:04', '2024-08-30 12:00:04'),
(65, 6, 'Multi Axle Trailer', 'Above 30 MT', '1', 'delhi', 'mumbai', '1,414 km', '23 hours 54 mins', 'Auto Parts', '2024-09-10', NULL, NULL, NULL, NULL, '0', '2024-09-03 11:57:01', NULL, '2024-09-03 11:55:01', '2024-09-03 11:55:01'),
(69, 6, NULL, 'Above 30 MT', NULL, 'delhi', 'mumbai', NULL, NULL, 'Auto Parts', NULL, '05450', '05444', 'Door to Door Delivery', '2024-09-10', '0', '2024-09-03 16:30:23', NULL, '2024-09-03 16:28:23', '2024-09-03 16:28:23'),
(70, 6, '40', 'Upto 25 MT', '1', 'sukkur', 'karachi', '474 km', '6 hours 41 mins', 'Furniture And Wood Products', '2024-09-26', NULL, NULL, NULL, NULL, '0', '2024-09-03 17:51:51', NULL, '2024-09-03 17:49:51', '2024-09-03 17:49:51'),
(71, 6, NULL, 'Above 30 MT', NULL, 'hyderabad', 'mumbai', '708 km', '13 hours 10 mins', 'Bardana jute or plastic', NULL, '0000000', '121222222', 'Door to Door Delivery', '2024-09-11', '0', '2024-09-03 17:54:24', NULL, '2024-09-03 17:52:24', '2024-09-03 17:52:24'),
(72, 6, NULL, 'Above 30 MT', NULL, 'hyderabad', 'delhi', '1,580 km', '1 day 4 hours', 'Bardana jute or plastic', NULL, '0000000', '121222222', 'Door to Door Delivery', '2024-09-11', '0', '2024-09-03 17:57:53', NULL, '2024-09-03 17:55:53', '2024-09-03 17:55:53'),
(73, 1, NULL, 'Upto 12 MT', NULL, 'karachi', 'lahore', '1,211 km', '14 hours 34 mins', 'Cement', NULL, '75080', '53700', 'Bike Delivery', '2024-09-03', '0', '2024-09-03 18:20:38', NULL, '2024-09-03 18:18:38', '2024-09-03 18:18:38'),
(79, 6, NULL, 'Above 30 MT', NULL, 'karachi', 'lahore', '1,211 km', '14 hours 34 mins', 'Auto Parts', NULL, '75290', '54000', 'Door to Door Delivery', '2024-09-11', '0', '2024-09-04 09:04:07', NULL, '2024-09-04 09:02:07', '2024-09-04 09:02:07'),
(80, 6, NULL, 'Above 30 MT', NULL, 'mumbai', 'delhi', '1,413 km', '1 day 0 hours', 'Auto Parts', NULL, '400001', '110001', 'Door to Door Delivery', '2024-09-11', '0', '2024-09-04 11:46:58', NULL, '2024-09-04 11:44:58', '2024-09-04 11:44:58'),
(81, 6, NULL, 'Above 30 MT', NULL, 'chennai', 'nagpur', '1,125 km', '19 hours 36 mins', 'Auto Parts', NULL, '600001', '440001', 'Door to Door Delivery', '2024-09-11', '0', '2024-09-04 11:54:36', NULL, '2024-09-04 11:52:36', '2024-09-04 11:52:36'),
(85, 6, NULL, 'Above 30 MT', NULL, 'karachi', 'lahore', '1,211 km', '14 hours 34 mins', 'Auto Parts', NULL, '75800', '54000', 'Door to Door Delivery', '2024-09-11', '0', '2024-09-04 12:55:35', NULL, '2024-09-04 12:53:36', '2024-09-04 12:53:36'),
(88, 6, NULL, 'Above 30 MT', NULL, 'lahore', 'karachi', '1,210 km', '14 hours 29 mins', 'Auto Parts', NULL, '54000', '75800', 'Door to Door Delivery', '2024-09-12', '0', '2024-09-04 16:58:36', NULL, '2024-09-04 16:56:36', '2024-09-04 16:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oCXhbNBU1jUjAahznXYnEemMUo1H1YYUUUHWFbUs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTXlYSVdzc1BSRUNZeTl0RTExOFJMUkpKNXNHNVZRcTB3Tlg1ZHNDZiI7czo1OiJlcnJvciI7czoyNjoiUGxlYXNlIGxvZ2luIHRvIGNvbnRpbnVlICEiO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2N1c3RvbWVyL2FkZC10cnVjay1yZXF1ZXN0Ijt9fQ==', 1725482291),
('sFXLwU3OsSY5qlxeFozAxwZKCUrViIoKnvvQMIyv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiazQzMXZBWmtucUlzSUhQaWFNUkJMT0p6YTZEaTNMck9kRWZxclluWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjA6InBlbmRpbmdfcmVxdWVzdF9wYXJ0IjthOjExOntzOjY6Il90b2tlbiI7czo0MDoiazQzMXZBWmtucUlzSUhQaWFNUkJMT0p6YTZEaTNMck9kRWZxclluWCI7czo2OiJvcmlnaW4iO3M6NjoibGFob3JlIjtzOjExOiJkZXN0aW5hdGlvbiI7czo3OiJrYXJhY2hpIjtzOjg6ImRpc3RhbmNlIjtzOjg6IjEsMjEwIGttIjtzOjQ6InRpbWUiO3M6MTY6IjE0IGhvdXJzIDI5IG1pbnMiO3M6MTA6InNvdXJjZV9waW4iO3M6NToiNTQwMDAiO3M6MTU6ImRlc3RpbmF0aW9uX3BpbiI7czo1OiI3NTgwMCI7czoxMToicGlja3VwX3R5cGUiO3M6MjE6IkRvb3IgdG8gRG9vciBEZWxpdmVyeSI7czo4OiJtYXRlcmlhbCI7czoxMDoiQXV0byBQYXJ0cyI7czo2OiJ3ZWlnaHQiO3M6MTE6IkFib3ZlIDMwIE1UIjtzOjExOiJwaWNrdXBfZGF0ZSI7czoxMDoiMjAyNC0wOS0xMiI7fX0=', 1725487192);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transporter_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `transporter_id`, `plan_id`, `subscription_id`, `status`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(10, 34, 16, 'sub_OonCz0kcuoc1Xr', 'cancelled', '2024-08-24 17:29:22', '2024-09-24 10:53:02', '2024-08-24 10:53:02', '2024-08-24 11:52:09'),
(13, 34, 17, 'sub_OouCA0236aA6Cg', 'active', '2024-08-24 17:43:05', '2024-09-24 17:43:05', '2024-08-24 17:43:05', '2024-08-24 17:43:05'),
(14, 4, 16, 'sub_OpjjAX5GYX2hSc', 'active', '2024-08-26 20:07:42', '2024-09-26 20:07:42', '2024-08-26 20:07:42', '2024-08-26 20:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_payments`
--

CREATE TABLE `subscription_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transporter_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `razorpay_order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razorpay_payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_payments`
--

INSERT INTO `subscription_payments` (`id`, `transporter_id`, `plan_id`, `razorpay_order_id`, `razorpay_payment_id`, `payment_status`, `amount`, `created_at`, `updated_at`) VALUES
(4, 34, 16, 'order_OonCVkIrY4nrb7', 'pay_OonCd62lmqm33u', 'success', '499.00', '2024-08-24 10:53:02', '2024-08-24 10:53:02'),
(7, 34, 17, 'order_OouBhUurcHeQHl', 'pay_OouBmZGgvzifi5', 'success', '999.00', '2024-08-24 17:43:05', '2024-08-24 17:43:05'),
(8, 4, 16, 'order_OpjidO6i2c2Zuo', 'pay_OpjiodzSUzi0mn', 'success', '499.00', '2024-08-26 20:07:42', '2024-08-26 20:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><strong>Profiling</strong>is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>', NULL, '2024-07-31 06:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `transporters`
--

CREATE TABLE `transporters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email_otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_otp_expires_at` timestamp NULL DEFAULT NULL,
  `aadhaar_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhaar_verified` tinyint(1) NOT NULL DEFAULT 0,
  `pan_verified` tinyint(1) NOT NULL DEFAULT 0,
  `bank_verified` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `rc_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transporters`
--

INSERT INTO `transporters` (`id`, `name`, `image`, `email`, `phone`, `password`, `phone_verified_at`, `email_otp`, `phone_otp`, `phone_otp_expires_at`, `aadhaar_number`, `pan_number`, `rc_number`, `bank_number`, `aadhaar_verified`, `pan_verified`, `bank_verified`, `phone_verified`, `email_verified`, `rc_verified`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'Transporter Check', '1724024401.jpg', 'transport@gmail.com', '12345678910', '$2y$12$9Q6ByKm1xy8flKx.4UVtAuE5X6BWsfuLf1nuhUZPG50AMMRF39nY.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-08-18 18:40:01'),
(2, 'T-Two', '1724003878.png', 'two@gmail.com', '121510510', '$2y$12$9Q6ByKm1xy8flKx.4UVtAuE5X6BWsfuLf1nuhUZPG50AMMRF39nY.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(4, 'test Transporter', '1724092495.png', 'test@gmail.com', '45847845', '$2y$12$QlWshqeUNL3q5JOBw/cQV.qfwie3cD1L6JCtytRElOp96PzRRESq.', NULL, NULL, NULL, NULL, '293141298887', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '2024-08-18 19:27:30', '2024-08-20 21:34:06'),
(34, 'Arsal', '1724199135.png', 'arsalweb549@gmail.com', '03450356288', '$2y$12$FV5cNvM7oX5unjGU6X0Duezx9kknBK3h.D7q/5jCctMxmrOnrGxbK', '2024-08-20 19:12:42', '918123', NULL, NULL, '293141298887', 'EMIPS3133N', NULL, NULL, 1, 1, 0, 1, 1, 0, 1, '2024-08-20 19:12:17', '2024-08-21 08:54:13');

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

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `address`, `number`, `email`, `facebook`, `instagram`, `twitter`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'Hello near World', '+92631215616515', 'hello@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 'https://pk.linkedin.com/', '2024-07-30 12:54:24', '2024-07-31 09:39:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bids_transporter_id_foreign` (`transporter_id`),
  ADD KEY `bids_bid_id_foreign` (`bid_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contact__management`
--
ALTER TABLE `contact__management`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact__management_email_unique` (`email`);

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
-- Indexes for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_customer_id_foreign` (`customer_id`),
  ADD KEY `messages_transporter_id_foreign` (`transporter_id`),
  ADD KEY `messages_request_id_foreign` (`request_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_customer_id_foreign` (`customer_id`),
  ADD KEY `payments_transporter_id_foreign` (`transporter_id`),
  ADD KEY `payments_request_truck_id_foreign` (`request_truck_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_trucks`
--
ALTER TABLE `request_trucks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_trucks_customer_id_foreign` (`customer_id`),
  ADD KEY `request_trucks_winning_bid_id_foreign` (`winning_bid_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_transporter_id_foreign` (`transporter_id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_payments_razorpay_order_id_unique` (`razorpay_order_id`),
  ADD KEY `subscription_payments_transporter_id_foreign` (`transporter_id`),
  ADD KEY `subscription_payments_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporters`
--
ALTER TABLE `transporters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `contact__management`
--
ALTER TABLE `contact__management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request_trucks`
--
ALTER TABLE `request_trucks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transporters`
--
ALTER TABLE `transporters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_bid_id_foreign` FOREIGN KEY (`bid_id`) REFERENCES `request_trucks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bids_transporter_id_foreign` FOREIGN KEY (`transporter_id`) REFERENCES `transporters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request_trucks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_transporter_id_foreign` FOREIGN KEY (`transporter_id`) REFERENCES `transporters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_request_truck_id_foreign` FOREIGN KEY (`request_truck_id`) REFERENCES `request_trucks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_transporter_id_foreign` FOREIGN KEY (`transporter_id`) REFERENCES `transporters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_trucks`
--
ALTER TABLE `request_trucks`
  ADD CONSTRAINT `request_trucks_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_trucks_winning_bid_id_foreign` FOREIGN KEY (`winning_bid_id`) REFERENCES `bids` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_transporter_id_foreign` FOREIGN KEY (`transporter_id`) REFERENCES `transporters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD CONSTRAINT `subscription_payments_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscription_payments_transporter_id_foreign` FOREIGN KEY (`transporter_id`) REFERENCES `transporters` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
