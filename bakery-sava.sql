-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2017 at 01:57 PM
-- Server version: 10.1.9-MariaDB-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakery-sava`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Vernice', NULL, NULL, '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(2, 'Willy', NULL, NULL, '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(3, 'Llewellyn', NULL, NULL, '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(4, 'Jayson', NULL, NULL, '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(5, 'Olen', NULL, NULL, '2017-09-27 11:55:09', '2017-09-27 11:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Prof. Porter Becker', 'In numquam doloremque omnis aliquid.', 'https://lorempixel.com/640/480/?77010', '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(2, NULL, 'Shaun Heller', 'Dignissimos optio repellendus aspernatur illum quas nihil aliquam sed.', 'https://lorempixel.com/640/480/?47110', '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(3, NULL, 'Dr. Melvin Kuhn IV', 'Mollitia id dignissimos saepe.', 'https://lorempixel.com/640/480/?83738', '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(4, NULL, 'Lucio Feil', 'Nihil iste molestias omnis qui temporibus.', 'https://lorempixel.com/640/480/?33494', '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(5, NULL, 'Ms. Lue Boyle', 'Assumenda nobis quidem culpa ad.', 'https://lorempixel.com/640/480/?14112', '2017-09-27 11:55:09', '2017-09-27 11:55:09');

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
(2, '2017_09_21_214338_create_products_table', 1),
(3, '2017_09_21_220255_create_categories_table', 1),
(4, '2017_09_21_220729_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `special` tinyint(4) NOT NULL,
  `product_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `category_id`, `status`, `special`, `product_code`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Emie', 'At pariatur voluptas et nihil velit et.', 607.00, 1, 'https://lorempixel.com/640/480/?87427', NULL, 1, 2, 1, '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(2, NULL, 'Afton', 'Quod rem accusamus ut iusto ullam impedit rerum.', 628.00, 1, 'https://lorempixel.com/640/480/?15653', NULL, 1, 1, 2, '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(3, NULL, 'Nelda', 'Ratione molestias ipsam corporis eum.', 452.00, 5, 'https://lorempixel.com/640/480/?79102', NULL, 2, 1, 3, '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(4, NULL, 'Eda', 'Quas et dicta doloribus veritatis aut id voluptatem.', 525.00, 4, 'https://lorempixel.com/640/480/?52160', NULL, 1, 2, 3, '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(5, NULL, 'Tom', 'Et quae beatae ea adipisci.', 268.00, 5, 'https://lorempixel.com/640/480/?23437', NULL, 2, 2, 1, '2017-09-27 11:55:09', '2017-09-27 11:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `user_surname`, `user_email`, `user_password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dina', 'O\'Hara', 'murazik.gustave@example.net', '$2y$10$xk5J/c5K6ApJNQuId60BVea7Aa9wLiQ2WNj/vJpUIfVUWb.ialGYu', 'JZPJj', '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(2, NULL, 'Germaine', 'Nikolaus', 'gprosacco@example.net', '$2y$10$xk5J/c5K6ApJNQuId60BVea7Aa9wLiQ2WNj/vJpUIfVUWb.ialGYu', 'BiHyg', '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(3, NULL, 'Matt', 'Simonis', 'blanda.jaylen@example.org', '$2y$10$xk5J/c5K6ApJNQuId60BVea7Aa9wLiQ2WNj/vJpUIfVUWb.ialGYu', 'Bi2PQ', '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(4, NULL, 'Ola', 'Schimmel', 'brisa01@example.net', '$2y$10$xk5J/c5K6ApJNQuId60BVea7Aa9wLiQ2WNj/vJpUIfVUWb.ialGYu', '6F978', '2017-09-27 11:55:09', '2017-09-27 11:55:09'),
(5, NULL, 'Archibald', 'Johnson', 'lennie90@example.org', '$2y$10$xk5J/c5K6ApJNQuId60BVea7Aa9wLiQ2WNj/vJpUIfVUWb.ialGYu', 'Bkv7o', '2017-09-27 11:55:09', '2017-09-27 11:55:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_image_unique` (`image`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`),
  ADD KEY `users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
