-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 03:31 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dfanstour`
--

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 6, 'assets/gallery/9c667wFWlLQtNDZJLzGCCpYRJeMhrcfLWI7C3732.jpg', NULL, '2023-05-06 13:04:05', '2023-05-06 13:04:05'),
(5, 2, 'assets/gallery/qnADM7QHgGiGyX2AP5ffh9l900m6eQH7Zm4sc44H.jpg', NULL, '2023-05-09 07:28:43', '2023-05-09 07:28:43'),
(6, 3, 'assets/gallery/Q7I8iIU0N99gy7pSGwPjrU0pPQcx0hhN2RxiPaSZ.jpg', NULL, '2023-05-09 07:28:55', '2023-05-09 07:28:55'),
(7, 1, 'assets/gallery/1pFsViJPi0VTIY6lKYW6cqL7HVxvWlVXQlfh7T8j.png', NULL, '2023-05-09 08:58:29', '2023-05-09 08:58:29');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_01_154324_create_travel_packages_table', 2),
(6, '2023_04_01_160739_create_galleries', 3),
(7, '2023_04_01_161340_create_transaction_table', 4),
(8, '2023_04_04_145351_create_transaction_details_table', 5),
(9, '2023_04_04_153420_add_roles_field_to_users_table', 6),
(10, '2023_04_07_160041_add_username_field_to_users_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `user_id`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'jakarta', 190, 'PENDING', NULL, '2023-05-06 19:53:03', '2023-05-09 07:22:08'),
(5, 5, 5, 'bekasi', 190000, 'SUCCESS', NULL, '2023-05-09 14:08:17', '2023-05-09 07:13:51'),
(6, 6, 6, 'jakarta timur', 190, 'CANCEL', NULL, '2023-05-06 20:42:00', '2023-05-09 07:13:37'),
(9, 1, 1, 'kebumen', 175000, 'IN_CART', NULL, '2023-05-10 11:10:00', '2023-05-10 11:10:00'),
(10, 1, 1, 'jakartaa', 175000, 'IN_CART', NULL, '2023-05-10 11:11:16', '2023-05-10 11:11:16'),
(11, 1, 1, 'PWT', 175000, 'IN_CART', NULL, '2023-05-10 11:12:04', '2023-05-10 11:12:04'),
(12, 1, 1, 'IDN', 175000, 'IN_CART', NULL, '2023-05-10 11:15:37', '2023-05-10 11:15:37'),
(13, 1, 1, 'address', 175000, 'IN_CART', NULL, '2023-05-10 11:30:25', '2023-05-10 11:30:25'),
(14, 1, 1, '1', 175000, 'IN_CART', NULL, '2023-05-12 06:18:18', '2023-05-12 06:18:18'),
(15, 1, 1, '1', 175000, 'IN_CART', NULL, '2023-05-12 06:22:21', '2023-05-12 06:22:21'),
(16, 1, 1, '1', 175000, 'IN_CART', NULL, '2023-05-12 06:26:02', '2023-05-12 06:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'kowii', 'jakarta', NULL, '2023-04-07 14:22:49', '2023-04-07 14:22:49'),
(6, 1, 'kowiuser', 'jakarta', NULL, '2023-04-07 14:22:49', '2023-04-07 14:22:49'),
(8, 11, 'kowii', 'jakarta', NULL, '2023-05-10 11:12:04', '2023-05-10 11:12:04'),
(9, 12, 'kowii', 'IDN', NULL, '2023-05-10 11:15:37', '2023-05-10 11:15:37'),
(10, 13, 'kowii', 'address', NULL, '2023-05-10 11:30:25', '2023-05-10 11:30:25'),
(11, 14, 'kowii', '1', NULL, '2023-05-12 06:18:18', '2023-05-12 06:18:18'),
(12, 15, 'kowii', '1', NULL, '2023-05-12 06:22:21', '2023-05-12 06:22:21'),
(13, 16, 'kowii', '1', NULL, '2023-05-12 06:26:02', '2023-05-12 06:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Paket Eco Anyer 1D', 'paket-eco-anyer-1d', 'Anyer', 'Fasilitas :\r\nBus Pariwisata Eksekutif\r\nHotel Standar\r\nWisata\r\nMakan (Pagi,Siang,Malam) & Snack\r\nDokumentasi\r\nPemandu Wisata', 'Paket Eco', 'indonesia', 'Pagi, Siang, Malam dan Snack', '2023-05-09', '1D', 'Open trip', 175000, NULL, '2023-04-10 09:56:39', '2023-05-09 08:49:25'),
(2, 'Paket Eco Anyer 2D', 'paket-eco-anyer-2d', 'Anyer', 'Fasilitas :\r\nBus Pariwisata Eksekutif\r\nHotel Standar\r\nWisata\r\nMakan (Pagi,Siang,Malam) & Snack\r\nDokumentasi\r\nPemandu Wisata', 'Paket Tour Bus Pariwisata eco', 'indonesia', 'Makan (Pagi,Siang,Malam) & Snack', '2023-05-09', '2D', 'Open trip', 600000, NULL, '2023-04-10 09:56:39', '2023-05-09 08:49:51'),
(3, 'Paket Eco', 'paket-eco', 'Bandung', 'Fasilitas :\r\nBus Pariwisata Eksekutif\r\nHotel Standar\r\nWisata\r\nMakan (Pagi,Siang,Malam) & Snack\r\nDokumentasi\r\nPemandu Wisata', 'Paket Tour Bus Pariwisata eco', 'indonesia', 'Makan (Pagi,Siang,Malam) & Snack', '2023-05-09', '1D', 'Open trip', 185000, NULL, '2023-04-10 09:56:39', '2023-05-09 08:48:26'),
(4, 'contoh', 'contoh', 'Bali', 'contoh saja', 'apa aja', 'indonesia', 'pecel', '2023-04-11', '2D', 'Open trip', 10000000, NULL, '2023-04-10 09:56:39', '2023-04-11 06:52:02'),
(5, 'T', 'T', 'LOMBOK', 'LOMBOK', 'P', 'IDN', 'AYAM', '2023-05-07', '2D', 'OPEN TRIP', 1809, NULL, '2023-05-06 20:18:04', '2023-05-06 20:18:04'),
(6, 'P', 'P', 'lombok', 'ppp', 'ppp', 'indonesia', 'p', '2023-05-07', '2D', 'Open Trip', 189, NULL, '2023-05-06 19:42:49', '2023-05-06 19:42:49'),
(7, 'T', 't', 'bali', 'TTT', 'test1', 'Indonesia', 'test', '2023-05-07', '2D', 'open trip', 190, '2023-05-09 07:11:08', '2023-05-06 13:20:58', '2023-05-09 07:11:08');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'kowiyul iman', 'kowiyuliman17@gmail.com', '2023-05-10 10:29:16', '$2y$10$VOrZBdcTjf/p4OpTyQZ3yev46cinCKXD2gdESz0J2SY/iGJ8qS4P6', 'IrCcdpmyiEWmA7FBNLh8ppj1HQs4wRsWgCnXPY6NvQiJbZyswrQyXH8jZuKb', '2023-04-07 08:21:38', '2023-05-10 10:29:16', 'ADMIN', 'kowii'),
(5, 'kowi', 'handi@gmail.com', '2023-04-07 08:43:59', '$2y$10$oWd9cwJ2RNhze5uPS8IVzeOWv.YxRfJKJ8vP8D5EroX66an/OW5gi', NULL, '2023-04-07 08:40:47', '2023-04-07 08:43:59', 'USER', 'kowi'),
(6, 'kowi user', 'kowi@gmail.com', '2023-04-07 09:14:59', '$2y$10$W2DVBwZhXTpU/9waREfpie5n5OW7nlipWGoxS8BeJeVYi214AxC7m', NULL, '2023-04-07 09:13:43', '2023-04-07 09:14:59', 'USER', 'kowiuser');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
