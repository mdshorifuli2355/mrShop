-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2020 at 04:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Shari', 'storage/images\\48557.jpg', 'This is Shari .', '2020-03-16 06:47:18', '2020-03-16 06:47:18'),
(2, 'panjabi', 'storage/images\\98843.jpg', 'This is Panjabi.', '2020-03-16 06:47:53', '2020-03-16 06:47:53'),
(3, 'Shart', 'storage/images\\46481.jpg', 'This is shart.', '2020-03-16 06:48:15', '2020-03-16 06:48:15'),
(4, 'Shoes', 'storage/images\\72490.jpg', 'This is Shoes.', '2020-03-16 06:48:38', '2020-03-16 06:48:38'),
(5, 'Tops', 'storage/images\\19278.jpg', 'This is Tops.', '2020-03-16 06:49:30', '2020-03-16 06:49:30'),
(6, 'T shart', 'storage/images\\37561.jpg', 'This is Tshart.', '2020-03-16 06:50:11', '2020-03-16 06:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Allamin', 'all@gmail.com', '12345', '01722795868', NULL, NULL),
(2, 'Tamanna', 'shorif@gmail.com', '12345678', '01722795868', NULL, NULL),
(3, 'Shorif', 'shorif@gmail.com', '12345', '01722795868', NULL, NULL),
(4, 'Tamanna', 'shorif@gmail.com', '12345', '01722795868', NULL, NULL),
(5, 'Tamanna', 'shorif@gmail.com', '12345', '01722795868', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Easy', 'storage/images\\23093.jpg', 'This is Easy manufacture.', '2020-03-16 06:52:05', '2020-03-16 06:52:05'),
(2, 'Pakiza Group', 'storage/images\\61784.jpg', 'This is Pakiza Group manufacture.', '2020-03-16 06:52:31', '2020-03-16 06:52:31'),
(3, 'TOTO MART', 'storage/images\\32395.png', 'This is Toto manufacture.', '2020-03-16 06:52:54', '2020-03-16 06:52:54'),
(4, 'Bata', 'storage/images\\98298.png', 'This is Bata  manufacture.', '2020-03-16 06:53:20', '2020-03-16 06:53:20'),
(5, 'EventBD', 'storage/images\\75641.png', 'This is Event BD manufacture.', '2020-03-16 06:53:56', '2020-03-16 06:53:56');

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
(3, '2020_03_10_042248_create_categories_table', 1),
(4, '2020_03_10_060249_create_manufactures_table', 1),
(5, '2020_03_10_090327_create_products_table', 1),
(6, '2020_03_11_155058_create_customers_table', 1),
(7, '2020_03_12_060508_create_shippings_table', 1),
(8, '2020_03_14_161525_create_sliders_table', 1),
(9, '2020_03_15_065433_create_payments_table', 1),
(12, '2020_03_16_095359_create_orders_table', 2),
(13, '2020_03_16_100145_create_order_details_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 2, '9,800.00', 'pending', NULL, NULL),
(2, 3, 2, 3, '9,800.00', 'pending', NULL, NULL),
(3, 3, 2, 4, '0.00', 'pending', NULL, NULL),
(4, 3, 2, 5, '0.00', 'pending', NULL, NULL),
(5, 3, 2, 6, '0.00', 'pending', NULL, NULL),
(6, 3, 2, 7, '0.00', 'pending', NULL, NULL),
(7, 3, 2, 8, '0.00', 'pending', NULL, NULL),
(8, 3, 2, 9, '0.00', 'pending', NULL, NULL),
(9, 3, 2, 10, '0.00', 'pending', NULL, NULL),
(10, 3, 2, 11, '0.00', 'pending', NULL, NULL),
(11, 3, 2, 12, '0.00', 'pending', NULL, NULL),
(12, 3, 2, 13, '0.00', 'pending', NULL, NULL),
(13, 3, 2, 14, '0.00', 'pending', NULL, NULL),
(14, 3, 2, 15, '0.00', 'pending', NULL, NULL),
(15, 3, 2, 16, '0.00', 'pending', NULL, NULL),
(16, 3, 2, 17, '0.00', 'pending', NULL, NULL),
(17, 3, 2, 18, '0.00', 'pending', NULL, NULL),
(18, 3, 2, 19, '0.00', 'pending', NULL, NULL),
(19, 3, 2, 20, '0.00', 'pending', NULL, NULL),
(20, 3, 2, 21, '0.00', 'pending', NULL, NULL),
(21, 3, 2, 22, '0.00', 'pending', NULL, NULL),
(22, 3, 2, 23, '0.00', 'pending', NULL, NULL),
(23, 3, 2, 24, '0.00', 'pending', NULL, NULL),
(24, 3, 2, 25, '0.00', 'pending', NULL, NULL),
(25, 4, 3, 26, '3,200.00', 'pending', '2020-03-17 10:45:54', NULL),
(26, 5, 4, 27, '1,230.00', 'pending', '2020-03-17 14:42:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `name`, `price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 'panjabi', 3200.00, '1', NULL, NULL),
(2, 1, 7, 'Shart v1', 1200.00, '1', NULL, NULL),
(3, 1, 12, 'panjabi', 5400.00, '1', NULL, NULL),
(4, 2, 11, 'panjabi', 3200.00, '1', NULL, NULL),
(5, 2, 7, 'Shart v1', 1200.00, '1', NULL, NULL),
(6, 2, 12, 'panjabi', 5400.00, '1', NULL, NULL),
(7, 25, 9, 'Shari', 3200.00, '1', NULL, NULL),
(8, 26, 10, 'Shoes', 1230.00, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'pending', NULL, NULL),
(2, 'handcash', 'pending', NULL, NULL),
(3, 'handcash', 'pending', NULL, NULL),
(4, 'handcash', 'pending', NULL, NULL),
(5, 'handcash', 'pending', NULL, NULL),
(6, 'handcash', 'pending', NULL, NULL),
(7, 'handcash', 'pending', NULL, NULL),
(8, 'handcash', 'pending', NULL, NULL),
(9, 'handcash', 'pending', NULL, NULL),
(10, 'handcash', 'pending', NULL, NULL),
(11, 'handcash', 'pending', NULL, NULL),
(12, 'handcash', 'pending', NULL, NULL),
(13, 'handcash', 'pending', NULL, NULL),
(14, 'handcash', 'pending', NULL, NULL),
(15, 'handcash', 'pending', NULL, NULL),
(16, 'handcash', 'pending', NULL, NULL),
(17, 'handcash', 'pending', NULL, NULL),
(18, 'handcash', 'pending', NULL, NULL),
(19, 'handcash', 'pending', NULL, NULL),
(20, 'handcash', 'pending', NULL, NULL),
(21, 'handcash', 'pending', NULL, NULL),
(22, 'handcash', 'pending', NULL, NULL),
(23, 'bkash', 'pending', NULL, NULL),
(24, 'cart', 'pending', NULL, NULL),
(25, 'cart', 'pending', NULL, NULL),
(26, 'handcash', 'pending', NULL, NULL),
(27, 'handcash', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `manufacture_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `manufacture_id`, `image`, `description`, `price`, `weight`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'T-shart 001', 6, 5, 'storage/images\\62724.jpg', 'This is T shart it manufacture bye Event BD. it price 200tk. it is new collection .', 200.00, NULL, 1, '2020-03-16 06:56:51', '2020-03-16 06:56:51'),
(2, 'T shart 002', 6, 5, 'storage/images\\70435.jpg', 'This is T shart it manufacture bye Event BD. it price 300tk. it is new collection .', 300.00, NULL, 1, '2020-03-16 06:57:33', '2020-03-16 06:57:33'),
(3, 'Tops', 5, 1, 'storage/images\\35503.jpg', 'This is Tops  it manufacture bye Easy . it price 2300tk. it is new collection .', 2300.00, NULL, 1, '2020-03-16 07:01:08', '2020-03-16 07:01:08'),
(4, 'Tops', 5, 1, 'storage/images\\83652.jpg', 'This is Tops  it manufacture bye Easy . it price 2500tk. it is new collection .', 2500.00, NULL, 1, '2020-03-16 07:02:01', '2020-03-16 07:02:01'),
(5, 'Shoes x1', 4, 4, 'storage/images\\19392.jpg', 'This is Shoes it manufacture bye Bata . it price 3400tk. it is new collection .', 3400.00, NULL, 1, '2020-03-16 07:03:03', '2020-03-16 07:03:03'),
(6, 'Shoes x2', 4, 4, 'storage/images\\42790.jpg', 'This is shoes it manufacture bye Easy . it price 3600tk. it is new collection .', 3600.00, NULL, 1, '2020-03-16 07:04:43', '2020-03-16 07:05:05'),
(7, 'Shart v1', 3, 3, 'storage/images\\55219.jpg', 'This is shart it manufacture bye ToTo Mart . it price 1200tk. it is new collection .', 1200.00, NULL, 1, '2020-03-16 07:06:17', '2020-03-16 07:06:17'),
(8, 'Shart v2', 3, 3, 'storage/images\\20902.jpg', 'This is shart it manufacture bye ToTo Mart . it price 2300tk. it is new collection .', 2300.00, NULL, 1, '2020-03-16 07:06:59', '2020-03-16 07:06:59'),
(9, 'Shari', 1, 2, 'storage/images\\91118.jpg', 'This is shari  it manufacture bye Pakiza Group  . it price 3200tk. it is new collection .', 3200.00, NULL, 1, '2020-03-16 07:08:07', '2020-03-16 07:08:07'),
(10, 'Shoes', 1, 2, 'storage/images\\31386.jpg', 'This is shari  it manufacture bye Pakiza Group  . it price 3200tk. it is new collection .', 1230.00, NULL, 1, '2020-03-16 07:08:36', '2020-03-16 07:08:36'),
(11, 'panjabi', 2, 1, 'storage/images\\64281.jpg', 'This is Panjabi   it manufacture byePanjabi   . it price 3200tk. it is new collection .', 3200.00, NULL, 1, '2020-03-16 07:09:45', '2020-03-16 07:09:45'),
(12, 'panjabi', 2, 1, 'storage/images\\98697.jpg', 'This is shari  it manufacture bye Pakiza Group  . it price 5400tk. it is new collection .', 5400.00, NULL, 1, '2020-03-16 07:10:21', '2020-03-16 07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`shipping_id`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `created_at`, `updated_at`) VALUES
(1, 'shorifu', 'jaj@gmail.com', '12222', 'dhaka', NULL, NULL),
(2, 'shorifu', 'jaj@gmail.com', '12222', 'dhaka', NULL, NULL),
(3, 'sojib', 'jaj@gmail.com', '12222', 'dhaka', NULL, NULL),
(4, 'shorifu', 'jaj@gmail.com', '12222', 'dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `image`, `title`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'test', 'storage/images\\79607.jpg', 'test', 1, '2020-03-17 05:01:22', '2020-03-17 05:01:22'),
(2, 'T-shart', 'storage/images\\71416.jpg', 'T-shart new Collection', 1, '2020-03-17 08:47:05', '2020-03-17 08:47:05'),
(3, 'Shoes Slider', 'storage/images\\69542.jpg', 'Shoes  new Collection', 1, '2020-03-17 08:47:38', '2020-03-17 08:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(3, 'shoriful islam', 'ss@gmail.com', NULL, '$2y$10$el5a7QFjNFNskcRM/ST5j.9DAbsA.A98btEQIPTMV0c1UpA.l4jR2', NULL, '2020-03-16 06:45:06', '2020-03-16 06:45:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_manufacture_id_foreign` (`manufacture_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `shipping_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`shipping_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_manufacture_id_foreign` FOREIGN KEY (`manufacture_id`) REFERENCES `manufactures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
