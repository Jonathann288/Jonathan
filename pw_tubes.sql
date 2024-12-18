-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 01:22 AM
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
-- Database: `pw_tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `bid_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `nilai_penawaran` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`bid_id`, `user_id`, `item_id`, `nilai_penawaran`, `created_at`, `updated_at`) VALUES
(6, 1, 5, 600000, '2024-12-17 11:45:05', '2024-12-17 11:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_invoice` datetime NOT NULL,
  `total` double NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `brand_sepatu` varchar(255) NOT NULL,
  `model_sepatu` varchar(255) NOT NULL,
  `ukuran_sepatu` varchar(255) NOT NULL,
  `kondisi_sepatu` varchar(255) NOT NULL,
  `harga_awal_lelang` double NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `foto_sepatu` varchar(255) NOT NULL,
  `foto_bukti_pembelian` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `user_id`, `brand_sepatu`, `model_sepatu`, `ukuran_sepatu`, `kondisi_sepatu`, `harga_awal_lelang`, `deskripsi`, `foto_sepatu`, `foto_bukti_pembelian`, `created_at`, `updated_at`) VALUES
(5, 1, 'adidas', 'adidas', '40', 'Baru', 500000, 'sepatu', 'uploads/foto_sepatu/7uQrz2xclocths5sfUPgsevC4af6HEig0fegXSXM.png', 'uploads/foto_bukti/fqsXMX5OPGMy15f2nJZ4WDElEMl1iFARLkkHRSnA.png', '2024-12-17 11:43:49', '2024-12-17 11:43:49');

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
(235, '2024_12_07_083352_create_user_table', 1),
(236, '2024_12_07_083402_create_item_table', 1),
(237, '2024_12_07_083407_create_bid_table', 1),
(238, '2024_12_07_083416_create_transaksi_table', 1),
(239, '2024_12_07_083423_create_invoice_table', 1),
(240, '2024_12_07_084114_create_personal_access_tokens_table', 1),
(241, '2024_12_13_040112_create_sessions_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('SsLPAryFGBkovvzKSIRHY2B461BVPWLdGKs69UvO', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSGIyZEh3cjZKakxmN1VDRWNyNDJxUHYwMTNDTWNkMlhkelZGdWgxNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sZWxhbmcvaGFsYW1hbkxlbGFuZzEvNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxMjoiY3VycmVudF9pdGVtIjtPOjE1OiJBcHBcTW9kZWxzXEl0ZW0iOjMwOntzOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjQ6Iml0ZW0iO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6NzoiaXRlbV9pZCI7czoxMDoiACoAa2V5VHlwZSI7czozOiJpbnQiO3M6MTI6ImluY3JlbWVudGluZyI7YjoxO3M6NzoiACoAd2l0aCI7YTowOnt9czoxMjoiACoAd2l0aENvdW50IjthOjA6e31zOjE5OiJwcmV2ZW50c0xhenlMb2FkaW5nIjtiOjA7czoxMDoiACoAcGVyUGFnZSI7aToxNTtzOjY6ImV4aXN0cyI7YjoxO3M6MTg6Indhc1JlY2VudGx5Q3JlYXRlZCI7YjowO3M6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjEyOntzOjc6Iml0ZW1faWQiO2k6NTtzOjc6InVzZXJfaWQiO2k6MTtzOjEyOiJicmFuZF9zZXBhdHUiO3M6NjoiYWRpZGFzIjtzOjEyOiJtb2RlbF9zZXBhdHUiO3M6NjoiYWRpZGFzIjtzOjEzOiJ1a3VyYW5fc2VwYXR1IjtzOjI6IjQwIjtzOjE0OiJrb25kaXNpX3NlcGF0dSI7czo0OiJCYXJ1IjtzOjE3OiJoYXJnYV9hd2FsX2xlbGFuZyI7ZDo1MDAwMDA7czo5OiJkZXNrcmlwc2kiO3M6Njoic2VwYXR1IjtzOjExOiJmb3RvX3NlcGF0dSI7czo2NDoidXBsb2Fkcy9mb3RvX3NlcGF0dS83dVFyejJ4Y2xvY3RoczVzZlVQZ3NldkM0YWY2SEVpZzBmZWdYU1hNLnBuZyI7czoyMDoiZm90b19idWt0aV9wZW1iZWxpYW4iO3M6NjM6InVwbG9hZHMvZm90b19idWt0aS9mcXNYTVg1T1BHTXkxNWYybkpaNFdERWxFTWwxaUZBUkxra0hSU25BLnBuZyI7czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyNC0xMi0xNyAxODo0Mzo0OSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyNC0xMi0xNyAxODo0Mzo0OSI7fXM6MTE6IgAqAG9yaWdpbmFsIjthOjEyOntzOjc6Iml0ZW1faWQiO2k6NTtzOjc6InVzZXJfaWQiO2k6MTtzOjEyOiJicmFuZF9zZXBhdHUiO3M6NjoiYWRpZGFzIjtzOjEyOiJtb2RlbF9zZXBhdHUiO3M6NjoiYWRpZGFzIjtzOjEzOiJ1a3VyYW5fc2VwYXR1IjtzOjI6IjQwIjtzOjE0OiJrb25kaXNpX3NlcGF0dSI7czo0OiJCYXJ1IjtzOjE3OiJoYXJnYV9hd2FsX2xlbGFuZyI7ZDo1MDAwMDA7czo5OiJkZXNrcmlwc2kiO3M6Njoic2VwYXR1IjtzOjExOiJmb3RvX3NlcGF0dSI7czo2NDoidXBsb2Fkcy9mb3RvX3NlcGF0dS83dVFyejJ4Y2xvY3RoczVzZlVQZ3NldkM0YWY2SEVpZzBmZWdYU1hNLnBuZyI7czoyMDoiZm90b19idWt0aV9wZW1iZWxpYW4iO3M6NjM6InVwbG9hZHMvZm90b19idWt0aS9mcXNYTVg1T1BHTXkxNWYybkpaNFdERWxFTWwxaUZBUkxra0hSU25BLnBuZyI7czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyNC0xMi0xNyAxODo0Mzo0OSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyNC0xMi0xNyAxODo0Mzo0OSI7fXM6MTA6IgAqAGNoYW5nZXMiO2E6MDp7fXM6ODoiACoAY2FzdHMiO2E6MDp7fXM6MTc6IgAqAGNsYXNzQ2FzdENhY2hlIjthOjA6e31zOjIxOiIAKgBhdHRyaWJ1dGVDYXN0Q2FjaGUiO2E6MDp7fXM6MTM6IgAqAGRhdGVGb3JtYXQiO047czoxMDoiACoAYXBwZW5kcyI7YTowOnt9czoxOToiACoAZGlzcGF0Y2hlc0V2ZW50cyI7YTowOnt9czoxNDoiACoAb2JzZXJ2YWJsZXMiO2E6MDp7fXM6MTI6IgAqAHJlbGF0aW9ucyI7YTowOnt9czoxMDoiACoAdG91Y2hlcyI7YTowOnt9czoxMDoidGltZXN0YW1wcyI7YjoxO3M6MTM6InVzZXNVbmlxdWVJZHMiO2I6MDtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMToiACoAZmlsbGFibGUiO2E6OTp7aTowO3M6NzoidXNlcl9pZCI7aToxO3M6MTI6ImJyYW5kX3NlcGF0dSI7aToyO3M6MTI6Im1vZGVsX3NlcGF0dSI7aTozO3M6MTM6InVrdXJhbl9zZXBhdHUiO2k6NDtzOjE0OiJrb25kaXNpX3NlcGF0dSI7aTo1O3M6MTc6ImhhcmdhX2F3YWxfbGVsYW5nIjtpOjY7czo5OiJkZXNrcmlwc2kiO2k6NztzOjExOiJmb3RvX3NlcGF0dSI7aTo4O3M6MjA6ImZvdG9fYnVrdGlfcGVtYmVsaWFuIjt9czoxMDoiACoAZ3VhcmRlZCI7YToxOntpOjA7czoxOiIqIjt9fX0=', 1734461105);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `harga_final` double NOT NULL,
  `tanggal_pengajuan_bid` datetime DEFAULT NULL,
  `status_transaksi` varchar(255) NOT NULL,
  `total_bid` int(11) NOT NULL,
  `status_proses` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `item_id`, `harga_final`, `tanggal_pengajuan_bid`, `status_transaksi`, `total_bid`, `status_proses`, `created_at`, `updated_at`) VALUES
(6, 5, 600000, '2024-12-17 18:45:05', 'menunggu-konfirmasi', 0, 'pending', '2024-12-17 11:45:05', '2024-12-17 11:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nama`, `username`, `email`, `password`, `alamat`, `nomor_telepon`, `jenis_kelamin`, `tanggal_lahir`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'jonathan', 'Jonathan', 'jo@gmail.com', '$2y$12$f/.ocHF5cf8GHjKwDpgpteE5Xo9rU8PJ2D8YAUt5ZajsOQBQ7A06O', 'maguwo', '098709870987', 'Laki-laki', '2024-12-18', 'foto_ktp/75pG7HjoTlY24Xs5qyH2VIMTNyVIVqkPqJ40Z6GP.png', '2024-12-17 11:14:16', '2024-12-17 11:14:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`bid_id`),
  ADD KEY `bid_user_id_foreign` (`user_id`),
  ADD KEY `bid_item_id_foreign` (`item_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `invoice_transaksi_id_foreign` (`transaksi_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `transaksi_item_id_foreign` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `bid_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid`
--
ALTER TABLE `bid`
  ADD CONSTRAINT `bid_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bid_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`transaksi_id`) ON DELETE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
