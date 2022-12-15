-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 04:30 AM
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
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(9, 'Elektronik', 'Elektronik', 'Macam-macam elektronik', 0, 1, '1670571439.webp', 'Elektronik', 'Elektronik', 'Elektronik', '2022-12-09 00:37:19', '2022-12-10 00:40:18'),
(14, 'Fashion', 'Fashion', 'Macam-macam fashion', 0, 1, '1670850317.webp', 'Fashion', 'Fashion', 'Fashion', '2022-12-12 06:05:17', '2022-12-12 06:05:17'),
(15, 'Kosmetik', 'Kosmetik', 'Macam macam alat kosmetik', 0, 1, '1671001399.jpg', 'Macam macam alat kosmetik', 'Macam macam alat kosmetik', 'Macam macam alat kosmetik', '2022-12-14 00:03:19', '2022-12-14 00:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_11_30_034035_create_categories_table', 1),
(6, '2022_12_01_030053_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(13, 9, 'iPhone 14', 'iPhone 14', 'iPhone 14 menjadi seri paling rendah dengan bentuk paling kecil di keluarga iPhone 14 Series. Walaupun begitu, desain iPhone 14 sendiri menjadi keunggulan yang tidak kalah mumpuni. Smartphone ini didesain dengan layar Super Retina XDR berbentuk melengkung berukuran 6,1 inci yang dilapisi ceramic shield sehingga lebih tahan terhadap benturan. Sedangkan untuk body-nya menggunakan corning made glass dan aluminium berkualitas.', 'iPhone 14 menjadi seri paling rendah dengan bentuk paling kecil di keluarga iPhone 14 Series. Walaupun begitu, desain iPhone 14 sendiri menjadi keunggulan yang tidak kalah mumpuni. Smartphone ini didesain dengan layar Super Retina XDR berbentuk melengkung berukuran 6,1 inci yang dilapisi ceramic shield sehingga lebih tahan terhadap benturan. Sedangkan untuk body-nya menggunakan corning made glass dan aluminium berkualitas.', '18000000', '17000000', '1670571513.webp', '2', '200', 0, 1, 'iPhone', 'iPhone 14 menjadi seri paling rendah dengan bentuk paling kecil di keluarga iPhone 14 Series. Walaupun begitu, desain iPhone 14 sendiri menjadi keunggulan yang tidak kalah mumpuni. Smartphone ini didesain dengan layar Super Retina XDR berbentuk melengkung berukuran 6,1 inci yang dilapisi ceramic shield sehingga lebih tahan terhadap benturan. Sedangkan untuk body-nya menggunakan corning made glass dan aluminium berkualitas.', 'iPhone 14 menjadi seri paling rendah dengan bentuk paling kecil di keluarga iPhone 14 Series. Walaupun begitu, desain iPhone 14 sendiri menjadi keunggulan yang tidak kalah mumpuni. Smartphone ini didesain dengan layar Super Retina XDR berbentuk melengkung berukuran 6,1 inci yang dilapisi ceramic shield sehingga lebih tahan terhadap benturan. Sedangkan untuk body-nya menggunakan corning made glass dan aluminium berkualitas.', '2022-12-09 00:38:33', '2022-12-13 07:50:12'),
(17, 14, 'Celana Chino', 'Celana Chino', 'Celana enak dipakai', 'Celana dengan bahan nyaman dipakai', '100000', '50000', '1670850456.jpeg', '2', '1', 0, 1, 'Celana', 'Celana nyaman dipakai', 'Celana nyaman dipakai', '2022-12-12 06:07:36', '2022-12-14 00:05:01'),
(18, 9, 'iPhone X', 'iPhone X', 'Salah satu fitur yang diunggulkan iPhone X adalah mode gelap, peningkatan aplikasi, dan fitur widget. Semenjak peminatnya meningkat setiap tahunnya, iPhone melakukan transformasi dengan merilis seri terbarunya setiap tahun. Performa lain yang diunggulkan dari iPhone X adalah fitur face ID.', 'Salah satu fitur yang diunggulkan iPhone X adalah mode gelap, peningkatan aplikasi, dan fitur widget. Semenjak peminatnya meningkat setiap tahunnya, iPhone melakukan transformasi dengan merilis seri terbarunya setiap tahun. Performa lain yang diunggulkan dari iPhone X adalah fitur face ID.', '4400000', '4000000', '1670943149.jpg', '10', '100', 0, 1, 'Salah satu fitur yang diunggulkan iPhone X adalah mode gelap, peningkatan aplikasi, dan fitur widget. Semenjak peminatnya meningkat setiap tahunnya, iPhone melakukan transformasi dengan merilis seri terbarunya setiap tahun. Performa lain yang diunggulkan dari iPhone X adalah fitur face ID.', 'Salah satu fitur yang diunggulkan iPhone X adalah mode gelap, peningkatan aplikasi, dan fitur widget. Semenjak peminatnya meningkat setiap tahunnya, iPhone melakukan transformasi dengan merilis seri terbarunya setiap tahun. Performa lain yang diunggulkan dari iPhone X adalah fitur face ID.', 'Salah satu fitur yang diunggulkan iPhone X adalah mode gelap, peningkatan aplikasi, dan fitur widget. Semenjak peminatnya meningkat setiap tahunnya, iPhone melakukan transformasi dengan merilis seri terbarunya setiap tahun. Performa lain yang diunggulkan dari iPhone X adalah fitur face ID.', '2022-12-13 07:52:29', '2022-12-13 07:52:29'),
(19, 15, 'Lipstik', 'Lipstik', 'Lipstik merah merona', 'Lipstik merah merona', '100000', '50000', '1671001483.jpg', '3', '10000', 0, 1, 'Lipstik merah merona', 'Lipstik merah merona', 'Lipstik merah merona', '2022-12-14 00:04:43', '2022-12-14 00:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Iqbal', 'iqbal13@gmail.com', NULL, '$2y$10$ssikwhrzbdmYbIEJE2l1KeXHEg/XhP7Bd5M91qWFlwDr8x2P4ya06', 1, NULL, '2022-12-01 05:21:23', '2022-12-01 05:21:23'),
(2, 'Galih', 'galih@gmail.com', NULL, '$2y$10$1PhtH1JRzh9R2wVh61dsjefXVyR.z7eKOn.o40eh5kipNx6VhEqG6', 0, NULL, '2022-12-11 23:21:59', '2022-12-11 23:21:59'),
(3, 'Keysar', 'keysar@gmail.com', NULL, '$2y$10$gl.9kd5C2gm9DVOBdbP/5eFeqUSXEFKzvZcfrdxJ8KhhXJ4ECPCjW', 0, NULL, '2022-12-11 23:24:47', '2022-12-11 23:24:47'),
(4, 'Raffi', 'raffi@gmail.com', NULL, '$2y$10$XWonFxcuj0lLpmaNay0AW.X7k7A3/T4MukeJ3tsUdJYOSOngQOh6u', 0, NULL, '2022-12-11 23:25:46', '2022-12-11 23:25:46'),
(5, 'Alghi', 'alghi@gmail.com', NULL, '$2y$10$0Qon4MEVjtIxG5pbuUEfYex0XpMPCpQXTL82EN0JB0TE4kCKFvOee', 0, NULL, '2022-12-11 23:26:56', '2022-12-11 23:26:56'),
(6, 'ervina', 'ervina12@gmail.com', NULL, '$2y$10$/Y2pIVjgdmMbMrvAqf9/PeOR5QVJIFT6g5JhQsMdNvdv.d6qJMBXi', 0, NULL, '2022-12-14 00:00:34', '2022-12-14 00:00:34'),
(7, 'User', 'user@gmail.com', NULL, '$2y$10$JXit8gznCCSwlQ.w1pqiV.meCSwbcljXBKjBmU12iTXoumPhbWnSW', 0, NULL, '2022-12-14 18:18:42', '2022-12-14 18:18:42'),
(8, 'user1', 'user1@gmail.com', NULL, '$2y$10$BPkcH.WeYLvni7qBzMDsbuSE7K1y60RfTWAy1OxIV5B.TIM8SipU6', 0, NULL, '2022-12-14 18:21:15', '2022-12-14 18:21:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
