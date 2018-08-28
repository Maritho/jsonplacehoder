-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2018 at 05:39 PM
-- Server version: 5.6.38
-- PHP Version: 7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `moladin-promo`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) NOT NULL,
  `promoID` int(10) DEFAULT NULL,
  `original` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `promoID`, `original`, `created_at`, `updated_at`) VALUES
(1, 1, 'laravels-database-query-builder-provides-a-convenient-1534038384.jpg', '2018-08-11 21:47:58', '2018-08-12 01:46:24'),
(2, 2, 'the-laravel-query-builder-uses-pdo-parameter-binding-to-protect-1534038370.jpg', '2018-08-11 21:49:36', '2018-08-12 01:46:10'),
(3, 3, 'you-may-use-the-table-method-on-the-db-facade-to-begin-a-query-1534038409.jpg', '2018-08-11 21:50:37', '2018-08-12 01:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `promoID` int(10) DEFAULT NULL,
  `productID` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `promoID`, `productID`, `created_at`, `updated_at`) VALUES
(14, 2, 5, '2018-08-12 01:46:10', '2018-08-12 01:46:10'),
(15, 1, 3, '2018-08-12 01:46:24', '2018-08-12 01:46:24'),
(16, 1, 4, '2018-08-12 01:46:24', '2018-08-12 01:46:24'),
(17, 3, 1, '2018-08-12 01:46:49', '2018-08-12 01:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` int(10) NOT NULL,
  `promoSlug` varchar(191) NOT NULL,
  `promoTnc` text,
  `promoCategory` varchar(100) NOT NULL,
  `promoExpired` datetime NOT NULL,
  `promoTitle` varchar(100) NOT NULL,
  `promoKeyword` varchar(100) DEFAULT NULL,
  `promoDescriptions` text NOT NULL,
  `promoHeading1` varchar(150) DEFAULT NULL,
  `promoSeotext` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `promoSlug`, `promoTnc`, `promoCategory`, `promoExpired`, `promoTitle`, `promoKeyword`, `promoDescriptions`, `promoHeading1`, `promoSeotext`, `is_active`, `created`, `created_at`, `updated_at`) VALUES
(1, 'laravels-database-query-builder-provides-a-convenient', NULL, 'Apparel', '2018-08-12 04:00:00', 'Laravel\'s database query builder provides a convenient', 'test', 'Laravel\'s database query builder provides a convenient, fluent interface to creating and running database queries. It can be used to perform most database operations in your application and works on all supported database systems. application and works on all supported database systems.', 'Laravel\'s database query builder provides a convenient', '<p>Laravel\'s database query builder provides a convenient, fluent interface to creating and running database queries. It can be used to perform most database operations in your application and works on all supported database systems. application and works on all supported database systems.<br></p>', 1, 1, '2018-08-11 21:47:57', '2018-08-11 21:47:57'),
(2, 'the-laravel-query-builder-uses-pdo-parameter-binding-to-protect', '<p>The Laravel query builder uses PDO parameter binding to protect your application against SQL injection attacks. There is no need to clean strings being passed as bindings SQL injection attacks. There is no need to clean strings being passed as bindings. SQL<br></p>', 'Motor', '2018-08-06 04:00:00', 'The Laravel query builder uses PDO parameter binding to protect', 'test.  hjdsfg', 'The Laravel query builder uses PDO parameter binding to protect your application against SQL injection attacks. There is no need to clean strings being passed as bindings SQL injection attacks. There is no need to clean strings being passed as bindings. SQL', 'The Laravel query builder uses PDO parameter binding to protect', '<p>The Laravel query builder uses PDO parameter binding to protect your application against SQL injection attacks. There is no need to clean strings being passed as bindings SQL injection attacks. There is no need to clean strings being passed as bindings. SQL<br></p>', 1, 1, '2018-08-11 21:49:35', '2018-08-12 19:18:36'),
(3, 'you-may-use-the-table-method-on-the-db-facade-to-begin-a-query', '<p>You may use the table method on the DB facade to begin a query. The table method returns a fluent query builder instance for the given table, allowing you to chain more constraints onto the query and then finally get the results using the get method:<br></p>', 'Apparel', '2018-08-17 04:00:00', 'You may use the table method on the DB facade to begin a query.', NULL, 'You may use the table method on the DB facade to begin a query. The table method returns a fluent query builder instance for the given table, allowing you to chain more constraints onto the query and then finally get the results using the get method:', 'You may use the table method on the DB facade to begin a query.', '<p>You may use the table method on the DB facade to begin a query. The table method returns a fluent query builder instance for the given table, allowing you to chain more constraints onto the query and then finally get the results using the get method:<br></p>', 1, 1, '2018-08-11 21:50:36', '2018-08-11 21:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Martua Nasution', 'marithonst@gmail.com', '$2y$10$gPK29Lyv1s7cVThl56VghuUH0RBps1z7ku.Si6aC./CCIuFTJtytC', 'nfnhWkcu8hSxB0Ae3BlPEi6KFH531M5MOONw4qC5h7c8wU6rEOvUG0subLmb', 1, '2018-08-11 21:17:38', '2018-08-13 02:39:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promoID` (`promoID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promoID` (`promoID`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promoSlug` (`promoSlug`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`promoID`) REFERENCES `promo` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`promoID`) REFERENCES `promo` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `promo_ibfk_1` FOREIGN KEY (`created`) REFERENCES `users` (`id`) ON DELETE SET NULL;
