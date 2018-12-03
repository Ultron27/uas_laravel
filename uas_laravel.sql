-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2018 at 01:26 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `gudang_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `gudang_id`, `nama`, `berat`, `created_at`, `updated_at`) VALUES
(1, 12, 'Kulkas', 20, '2018-12-02 17:04:45', '2018-12-02 17:04:45'),
(2, 13, 'Pesawat', 1000, '2018-12-02 17:05:10', '2018-12-02 17:05:10'),
(3, 15, 'Baju', 2, '2018-12-02 17:05:28', '2018-12-02 17:05:28'),
(4, 13, 'Laptop', 4, '2018-12-02 17:05:41', '2018-12-02 17:05:41'),
(5, 14, 'Tas', 1, '2018-12-02 17:06:00', '2018-12-02 17:06:00'),
(6, 16, 'Asus ROG', 3, '2018-12-02 17:06:21', '2018-12-02 17:06:21'),
(7, 17, 'keyboard', 2, '2018-12-02 17:06:33', '2018-12-02 17:06:33'),
(8, 17, 'buku', 100, '2018-12-02 17:06:50', '2018-12-02 17:06:50'),
(9, 17, 'Rokok', 79, '2018-12-02 17:07:03', '2018-12-02 17:07:03'),
(10, 15, 'Stopkontak', 44, '2018-12-02 17:07:23', '2018-12-02 17:07:23'),
(11, 14, 'Kayu Jati', 324, '2018-12-02 17:07:40', '2018-12-02 17:07:40'),
(12, 15, 'Kayu Mahoni', 289, '2018-12-02 17:07:59', '2018-12-02 17:07:59'),
(13, 12, 'Kayu Kering', 23, '2018-12-02 17:08:21', '2018-12-02 17:08:21'),
(14, 13, 'Kayu Papua', 33, '2018-12-02 17:08:35', '2018-12-02 17:08:35'),
(15, 14, 'Kayu Arap', 55, '2018-12-02 17:08:51', '2018-12-02 17:08:51'),
(16, 16, 'Mobil Leopard', 555, '2018-12-02 17:09:10', '2018-12-02 17:09:10'),
(17, 15, 'Ferrari', 332, '2018-12-02 17:09:22', '2018-12-02 17:09:22'),
(18, 13, 'Ducati', 213, '2018-12-02 17:09:33', '2018-12-02 17:09:33'),
(19, 17, 'Pajero', 3243, '2018-12-02 17:09:49', '2018-12-02 17:09:49'),
(20, 13, 'Pioneer', 21312, '2018-12-02 17:10:00', '2018-12-02 17:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `gudangs`
--

CREATE TABLE `gudangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gudangs`
--

INSERT INTO `gudangs` (`id`, `alamat`, `kapasitas`, `pic`, `created_at`, `updated_at`) VALUES
(12, 'Jl.Bambu Indah GG.H.SIIN RT 06/02 Kel.Bambu Apus Kec.Cipayung, Jakarta Timur', 100, 'gud.jpg', '2018-12-02 16:58:20', '2018-12-02 16:58:20'),
(13, 'Jl.Bambu Item GG.H.SIIN RT 099/8 Kel.Bambu Kec.Kramat, Jakarta Timur', 28, 'gudang-dummy-3.jpg', '2018-12-02 16:59:12', '2018-12-02 16:59:12'),
(14, 'Jl. Indah GG.H RT 06/02 Kel.Apus Kec.Cipayung, Jakarta Pusat', 321, 'gudang-dan-pabrik-properti-11792059.jpg', '2018-12-02 16:59:56', '2018-12-02 16:59:56'),
(15, 'Jl.Indah@SIIN 99 Kel.Bambu Apus Kec.Cawang, Jakarta Selatan', 444, 'gudang_dan_pabrik_dijual_di_medan_sumatera_utara_2047583_4630056501780398565.jpg', '2018-12-02 17:01:38', '2018-12-02 17:01:38'),
(16, 'Jl.Babu Inn 666 Kel.Condet Kec.Poncol, Surabaya Timur', 222, 'Gudang.jpg', '2018-12-02 17:02:53', '2018-12-02 17:02:53'),
(17, 'Jl.Garam  RT 06/02 Kel.Gudang Kec.Gedong, Kalimantan', 4223, 'GUDANG_GARAM_PROFESSIONAL_CLOVE_cigarette.jpg', '2018-12-02 17:03:44', '2018-12-02 17:03:44');

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_11_30_055914_create_gudangs_table', 1),
(7, '2018_11_30_061024_create_barangs_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
(1, 'erererr', 'autonaja.14@gmail.com', NULL, '$2y$10$viKEloGmT5vA3ryL1mGSZuzV3U1yJevKBW44Le.ggqnbaJ4z/Spg6', NULL, '2018-11-30 08:07:31', '2018-11-30 08:07:31'),
(2, 'sdsadas', 'fahrizalauton@gmail.com', NULL, '$2y$10$G8F3O0kV7tuaULDgjRIGCuXCc7lIHU5lEOS4t0kgpkuFMLFJ1.U8.', 'l7KoU7M17LCwdHQxN8DgQ8TDFkuWeryXkv6y6ZxmxEPSUJlokZILd9SviJJD', '2018-12-01 23:07:35', '2018-12-01 23:07:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangs_gudang_id_foreign` (`gudang_id`);

--
-- Indexes for table `gudangs`
--
ALTER TABLE `gudangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gudangs`
--
ALTER TABLE `gudangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_gudang_id_foreign` FOREIGN KEY (`gudang_id`) REFERENCES `gudangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
