-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 22, 2017 at 04:06 PM
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
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product`, `user`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Miss Aliya Gislason', 'Ms. Bria Brakus DDS', '1993-07-27', '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(2, 'Joanie Brown', 'Mr. Oral Reynolds', '1976-08-17', '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(3, 'Wilton Runte', 'Garret Skiles', '2000-05-26', '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(4, 'Emie Denesik', 'Mrs. Jada Olson I', '1992-07-20', '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(5, 'Prof. Kenyon Luettgen I', 'Mr. Wilburn Barton', '1995-08-07', '2017-09-22 13:59:36', '2017-09-22 13:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Sammy Collier', 'Quo iure nostrum praesentium dolorem deserunt saepe saepe doloremque.', 'https://lorempixel.com/640/480/?72208', '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(2, 'Alexanne Bechtelar', 'Itaque perspiciatis quaerat odit autem vero hic consequuntur.', 'https://lorempixel.com/640/480/?14418', '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(3, 'Heber Dickens', 'Voluptatibus tempore quia explicabo aut esse.', 'https://lorempixel.com/640/480/?63441', '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(4, 'Brennon Williamson', 'Voluptatum ducimus sit et earum sed.', 'https://lorempixel.com/640/480/?29132', '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(5, 'Salma Little V', 'Asperiores officia architecto velit magnam veritatis accusantium repellendus et.', 'https://lorempixel.com/640/480/?36693', '2017-09-22 13:59:36', '2017-09-22 13:59:36');

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
(2, '2017_09_21_214338_create_products_table', 1),
(3, '2017_09_21_220255_create_categories_table', 1),
(4, '2017_09_21_220729_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `special` int(11) NOT NULL,
  `product_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image`, `category_id`, `status`, `special`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Dannie Fay Sr.', 'Error labore id quia amet.', 17.00, 74, 'https://lorempixel.com/640/480/?46008', 96, 24, 8, 98, '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(2, 'Shaun Kub', 'Amet dignissimos aspernatur nam architecto incidunt vel.', 61.00, 3, 'https://lorempixel.com/640/480/?34718', 4, 73, 84, 60, '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(3, 'Mr. Everardo Torp', 'Numquam ut voluptas molestiae sit adipisci officia nisi.', 15.00, 89, 'https://lorempixel.com/640/480/?74683', 14, 91, 87, 44, '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(4, 'Jeremy Yundt', 'Sapiente et aliquam suscipit omnis id commodi aliquid.', 21.00, 30, 'https://lorempixel.com/640/480/?10015', 76, 16, 22, 71, '2017-09-22 13:59:36', '2017-09-22 13:59:36'),
(5, 'Mack Kirlin', 'Odit odit qui non dolores unde.', 41.00, 25, 'https://lorempixel.com/640/480/?76741', 94, 38, 75, 71, '2017-09-22 13:59:36', '2017-09-22 13:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_surname`, `user_email`, `user_password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Annabell Casper', 'Eloy Gottlieb', 'cassandra37@example.org', '$2y$10$P/.EVfklNQ150th9o7QN2OSrZxaA2w0IZu1sjlVMuOcO/X5UGpyNW', 'pKpbUOFtsz', '2017-09-22 13:59:35', '2017-09-22 13:59:35'),
(2, 'Keaton Crooks', 'Karlee Satterfield', 'pollich.kenneth@example.org', '$2y$10$P/.EVfklNQ150th9o7QN2OSrZxaA2w0IZu1sjlVMuOcO/X5UGpyNW', '7hH1dJbwPB', '2017-09-22 13:59:35', '2017-09-22 13:59:35'),
(3, 'Dr. Emmett Crist II', 'Alize Mayer', 'sierra22@example.net', '$2y$10$P/.EVfklNQ150th9o7QN2OSrZxaA2w0IZu1sjlVMuOcO/X5UGpyNW', 'Yn7LVSRHyv', '2017-09-22 13:59:35', '2017-09-22 13:59:35'),
(4, 'Immanuel Streich V', 'Carlee Wintheiser Sr.', 'conrad78@example.org', '$2y$10$P/.EVfklNQ150th9o7QN2OSrZxaA2w0IZu1sjlVMuOcO/X5UGpyNW', 'FNd0d7kpcU', '2017-09-22 13:59:35', '2017-09-22 13:59:35'),
(5, 'Alford Kulas', 'Prof. Marty Ledner PhD', 'fcronin@example.com', '$2y$10$P/.EVfklNQ150th9o7QN2OSrZxaA2w0IZu1sjlVMuOcO/X5UGpyNW', 'PosE3qBLAN', '2017-09-22 13:59:35', '2017-09-22 13:59:35');

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
