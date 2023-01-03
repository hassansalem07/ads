-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 04:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ko_gear`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `details_en` text NOT NULL,
  `details_ar` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `name_en`, `name_ar`, `details_en`, `details_ar`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Bun N Bun', 'Bun N Bun', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.\r\n\r\nIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.\r\n\r\nIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.\r\n', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.\r\n\r\nIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.\r\n\r\nIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.\r\n', 'about.jpg', 1, '2022-07-18 11:05:38', '2022-07-18 11:05:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `details_ar` text NOT NULL,
  `details_en` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title_ar`, `title_en`, `image`, `link`, `position`, `type`, `status`, `details_ar`, `details_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bun N Bun', 'Bun N Bun', '124.jpg\r\n\r\n\r\n', 'https://www.facebook.com/', 1, '', 1, '', '', '2022-07-06 16:28:58', '2022-09-23 15:55:23', '2022-09-23 15:55:23'),
(2, 'Bun N Bun', 'Bun N Bun', '1234.jpg', 'https://www.facebook.com/bunnbun.eg', 1, '', 1, '', '', '2022-08-07 22:47:20', '2022-10-22 21:18:37', '2022-10-22 21:18:37'),
(3, 'Bun N Bun', 'Bun N Bun', '12345.jpg', 'https://www.facebook.com/bunnbun.eg', 1, '', 1, '', '', '2022-08-07 22:47:41', '2022-10-22 21:18:32', '2022-10-22 21:18:32'),
(4, '1', '1', 'HomeSlider_42311.jpg', 'https://kosquadegypt.com/', NULL, '', 1, '', '', '2022-10-22 21:21:20', '2022-10-22 21:21:20', NULL),
(5, '2', '2', 'HomeSlider_99515.jpg', 'https://kosquadegypt.com/', NULL, '', 1, '', '', '2022-10-22 21:21:31', '2022-10-22 21:21:31', NULL),
(6, '3', '3', 'HomeSlider_41238.jpg', 'https://kosquadegypt.com/', NULL, '', 1, '', '', '2022-10-22 21:21:44', '2022-10-22 21:21:44', NULL),
(7, '4', '4', 'HomeSlider_37417.jpg', 'https://kosquadegypt.com/', NULL, '', 1, '', '', '2022-10-22 21:21:53', '2022-10-22 21:21:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL DEFAULT 1,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `delivery_fees` int(11) NOT NULL DEFAULT 50,
  `delivery_fees_temp` double NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `city_id`, `name_ar`, `name_en`, `delivery_fees`, `delivery_fees_temp`, `branch_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'العباسيه', 'Abasya ccity', 0, 0, 3, 1, '2022-07-05 12:20:56', '2022-10-05 18:57:17', NULL),
(2, 1, 'مدينه نصر', 'Naser City', 0, 0, 3, 1, '2022-07-06 16:24:53', '2022-10-05 18:57:17', NULL),
(3, 1, 'المعادي', 'Maddi', 0, 0, 6, 1, '2022-07-07 18:25:06', '2022-10-05 18:57:17', NULL),
(4, 1, 'tedt', 'tedt', 60, 60, 3, 1, '2022-10-05 18:56:58', '2022-10-05 18:57:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `added_by` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `variation_id`, `name_ar`, `name_en`, `value`, `status`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'White', 'White', '#ffffff', 1, 1, '2022-07-05 10:30:53', '2022-07-05 10:30:53', NULL),
(2, 1, 'Black', 'Black', '#000000', 1, 1, '2022-07-05 10:31:25', '2022-07-05 10:31:25', NULL),
(3, 1, 'Blue', 'Blue', ' #2775c7', 1, 1, '2022-07-05 10:31:52', '2022-07-05 10:31:52', NULL),
(9, 1, 'Gray', 'Gray', '#b8b8b8', 1, 1, '2022-08-14 07:03:27', '2022-08-14 07:03:27', NULL),
(10, 1, 'Red', 'Red', ' #ff5733', 1, 1, '2022-08-14 07:03:27', '2022-08-14 07:03:27', NULL),
(12, 2, 'S', 'S', '', 1, 1, '2022-08-14 07:06:23', '2022-08-14 07:06:23', NULL),
(13, 2, 'M', 'M', '', 1, 1, '2022-08-14 07:06:23', '2022-08-14 07:06:23', NULL),
(14, 2, 'L', 'L', '', 1, 1, '2022-08-14 07:06:23', '2022-08-14 07:06:23', NULL),
(15, 2, 'XL', 'XL', '', 1, 1, '2022-08-14 07:06:23', '2022-08-14 07:06:23', NULL),
(16, 2, 'XXL', 'XXL', '', 1, 1, '2022-08-14 07:06:23', '2022-08-14 07:06:23', NULL),
(17, 2, 'XXXL', 'XXXL', '', 1, 1, '2022-08-14 07:06:23', '2022-08-14 07:06:23', NULL),
(18, 2, 'XXXXL', 'XXXXL', '', 1, 1, '2022-08-14 07:06:23', '2022-08-14 07:06:23', NULL),
(19, 2, 'XXXXXL', 'XXXXXL', '', 1, 1, '2022-08-14 07:06:23', '2022-08-14 07:06:23', NULL),
(20, 3, 'Mushroom', 'Mushroom', '', 1, 1, '2022-08-14 07:10:30', '2022-08-14 07:10:30', NULL),
(21, 3, 'Beef bacon', 'Beef bacon', '', 1, 1, '2022-08-14 07:10:30', '2022-08-14 07:10:30', NULL),
(22, 3, 'Turkey', 'Turkey', '', 1, 1, '2022-08-14 07:10:30', '2022-08-14 07:10:30', NULL),
(23, 3, 'Mini mozzarella', 'Mini mozzarella', '', 1, 1, '2022-08-14 07:10:30', '2022-08-14 07:10:30', NULL),
(24, 3, 'Pepperoni', 'Pepperoni', '', 1, 1, '2022-08-14 07:10:30', '2022-08-14 07:10:30', NULL),
(25, 3, 'Mozzarella Cheese', 'Mozzarella Cheese', '', 1, 1, '2022-08-14 07:10:30', '2022-08-14 07:10:30', NULL),
(26, 3, 'Cheese sauce', 'Cheese sauce', '', 1, 1, '2022-08-14 07:10:30', '2022-08-14 07:10:30', NULL),
(27, 3, 'Spicy beef ', 'Spicy beef ', '', 1, 1, '2022-08-14 07:10:30', '2022-08-14 07:10:30', NULL),
(28, 4, 'Single', 'Single', '', 1, 1, '2022-08-14 08:05:49', '2022-08-14 08:05:49', NULL),
(29, 4, 'Double', 'Double', '', 1, 1, '2022-08-14 08:05:49', '2022-08-14 08:05:49', NULL),
(30, 4, 'Triple', 'Triple', '', 1, 1, '2022-08-14 08:05:57', '2022-08-14 08:05:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name_ar`, `name_en`, `address_ar`, `address_en`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test one arabic', 'Test one', 'branch arabic test', 'branch english test', '04:00:00', '14:00:00', 1, '2022-08-24 22:49:23', '2022-10-05 19:07:09', '2022-08-24 22:52:41'),
(2, 'فرع اسكندريه', 'Alex branch', 'في اسكندريه', 'In alex', '10:00:00', '00:00:00', 1, '2022-08-23 10:55:34', '2022-10-05 19:07:09', NULL),
(3, 'فرع المعادي', 'Maddi Branch\r\n', 'In Maddi', 'In Maddi', '04:00:00', '14:00:00', 1, '2022-08-23 10:33:21', '2022-10-05 19:07:09', NULL),
(4, 'فرع طنطا', 'Tanta Branch', 'في طنطا', 'In Tanta', '00:00:00', '00:00:00', 1, '2022-08-23 10:33:21', '2022-10-05 19:07:09', NULL),
(5, 'Zayed branch', 'فرع زايد', 'في زايد', 'In zayed', '00:00:00', '00:00:00', 1, '2022-08-24 23:41:49', '2022-10-05 19:07:09', '2022-09-01 18:13:23'),
(6, 'Zayed Branch', 'Zayed Branch', 'Zayed Branch', 'Zayed Branch', '00:00:00', '00:00:00', 1, '2022-08-26 12:42:59', '2022-10-05 19:07:09', NULL),
(7, 'Zamalek Branch', 'Zamalek Branch', 'Zamalek Branch', 'Zamalek Branch', '00:10:00', '00:00:00', 1, '2022-08-26 14:00:37', '2022-10-05 19:07:09', '2022-09-01 18:13:12'),
(8, 'test', 'test', 'test', 'test', '11:11:00', '00:11:00', 1, '2022-10-05 18:56:40', '2022-10-05 19:07:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `custom_meal` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `sub_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `quantity`, `custom_meal`, `price`, `order_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `sub_total`) VALUES
(237, 179, 1, NULL, 0, 98, 5, '2022-10-28 18:04:15', '2022-10-28 18:52:12', NULL, NULL),
(238, 179, 1, NULL, 0, 99, 5, '2022-10-28 18:52:39', '2022-10-28 18:52:53', NULL, NULL),
(239, 179, 1, NULL, 0, 101, 5, '2022-10-28 18:55:38', '2022-11-02 12:05:02', NULL, NULL),
(240, 179, 1, NULL, 0, 101, 5, '2022-10-28 18:58:42', '2022-11-02 12:05:02', NULL, NULL),
(241, 179, 1, NULL, 0, 100, 22, '2022-10-28 20:38:25', '2022-10-28 20:38:47', NULL, NULL),
(242, 179, 1, NULL, 0, 0, 22, '2022-10-28 21:16:27', '2022-10-28 21:16:27', NULL, NULL),
(243, 179, 1, NULL, 0, 102, 5, '2022-11-02 17:58:23', '2022-11-02 17:58:29', NULL, NULL),
(244, 179, 4, NULL, 0, 103, 5, '2022-11-07 18:16:14', '2022-11-07 18:16:45', NULL, NULL),
(250, 172, 1, '183|14-3,184|14-10,180|15-9,182|10-15,179|16-3,178|15-9', 250, 104, 5, '2022-11-08 22:15:58', '2022-11-08 22:17:25', NULL, NULL),
(257, 172, 3, '184|14-3,183|15-10,180|13-2,182|3-16,179|14-3,178|15-9', 250, 106, 5, '2022-11-12 13:43:36', '2022-11-13 12:46:49', NULL, NULL),
(259, 172, 1, '183|14-3,184|9-15,180|15-9,182|2-13,178|14-3,178|16-9', 250, 107, 5, '2022-11-13 13:00:31', '2022-11-13 13:05:24', NULL, NULL),
(261, 178, 1, NULL, 0, 108, 5, '2022-11-14 17:27:15', '2022-11-15 19:05:09', NULL, NULL),
(262, 178, 1, NULL, 0, 108, 5, '2022-11-15 17:41:16', '2022-11-15 19:05:09', NULL, NULL),
(263, 178, 1, NULL, 0, 109, 5, '2022-11-15 19:05:17', '2022-11-15 19:08:45', NULL, NULL),
(264, 178, 1, NULL, 0, 110, 5, '2022-11-15 19:12:12', '2022-11-15 19:24:36', NULL, NULL),
(272, 178, 1, NULL, 0, 0, 26, '2022-11-26 12:17:50', '2022-11-26 12:17:50', NULL, NULL),
(274, 187, 4, NULL, 0, 0, 26, '2022-11-27 16:30:24', '2022-11-27 16:30:24', NULL, NULL),
(275, 179, 2, NULL, 0, 111, 5, '2022-11-28 11:58:33', '2022-11-28 12:02:26', NULL, NULL),
(276, 172, 1, '183|15-3,184|15-3,180|15-3,182|9-15,179|14-10,178|15-9', 250, 0, 5, '2022-11-28 12:05:36', '2022-11-28 12:05:36', NULL, NULL),
(288, 135, 1, NULL, 35, NULL, 25, '2022-12-14 15:26:51', '2022-12-14 15:26:51', NULL, NULL),
(289, 182, 1, NULL, 370, NULL, 25, '2022-12-14 15:28:53', '2022-12-14 15:28:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_attributes`
--

CREATE TABLE `cart_attributes` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_attributes`
--

INSERT INTO `cart_attributes` (`id`, `cart_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(216, 237, 12, '2022-10-28 18:04:15', '2022-10-28 18:04:15'),
(217, 237, 3, '2022-10-28 18:04:15', '2022-10-28 18:04:15'),
(218, 238, 13, '2022-10-28 18:52:39', '2022-10-28 18:52:39'),
(219, 238, 10, '2022-10-28 18:52:39', '2022-10-28 18:52:39'),
(220, 239, 14, '2022-10-28 18:55:38', '2022-10-28 18:55:38'),
(221, 239, 2, '2022-10-28 18:55:38', '2022-10-28 18:55:38'),
(222, 240, 13, '2022-10-28 18:58:42', '2022-10-28 18:58:42'),
(223, 240, 9, '2022-10-28 18:58:42', '2022-10-28 18:58:42'),
(224, 241, 9, '2022-10-28 20:38:25', '2022-10-28 20:38:25'),
(225, 241, 12, '2022-10-28 20:38:25', '2022-10-28 20:38:25'),
(226, 242, 2, '2022-10-28 21:16:27', '2022-10-28 21:16:27'),
(227, 242, 13, '2022-10-28 21:16:27', '2022-10-28 21:16:27'),
(228, 243, 14, '2022-11-02 17:58:23', '2022-11-02 17:58:23'),
(229, 243, 3, '2022-11-02 17:58:23', '2022-11-02 17:58:23'),
(230, 244, 14, '2022-11-07 18:16:14', '2022-11-07 18:16:14'),
(231, 244, 3, '2022-11-07 18:16:14', '2022-11-07 18:16:14'),
(232, 245, 14, '2022-11-08 21:35:46', '2022-11-08 21:35:46'),
(233, 245, 2, '2022-11-08 21:35:46', '2022-11-08 21:35:46'),
(234, 246, 15, '2022-11-08 21:42:02', '2022-11-08 21:42:02'),
(235, 246, 9, '2022-11-08 21:42:02', '2022-11-08 21:42:02'),
(236, 247, 15, '2022-11-08 21:55:18', '2022-11-08 21:55:18'),
(237, 247, 9, '2022-11-08 21:55:18', '2022-11-08 21:55:18'),
(238, 251, 13, '2022-11-08 22:18:27', '2022-11-08 22:18:27'),
(239, 251, 3, '2022-11-08 22:18:27', '2022-11-08 22:18:27'),
(240, 252, 12, '2022-11-09 13:43:14', '2022-11-09 13:43:14'),
(241, 252, 2, '2022-11-09 13:43:14', '2022-11-09 13:43:14'),
(242, 253, 12, '2022-11-09 13:43:23', '2022-11-09 13:43:23'),
(243, 253, 9, '2022-11-09 13:43:23', '2022-11-09 13:43:23'),
(244, 254, 14, '2022-11-09 15:45:20', '2022-11-09 15:45:20'),
(245, 254, 2, '2022-11-09 15:45:20', '2022-11-09 15:45:20'),
(246, 255, 3, '2022-11-10 17:18:21', '2022-11-10 17:18:21'),
(247, 255, 15, '2022-11-10 17:18:21', '2022-11-10 17:18:21'),
(248, 256, 16, '2022-11-10 19:30:05', '2022-11-10 19:30:05'),
(249, 256, 10, '2022-11-10 19:30:05', '2022-11-10 19:30:05'),
(250, 258, 12, '2022-11-13 12:46:35', '2022-11-13 12:46:35'),
(251, 258, 1, '2022-11-13 12:46:35', '2022-11-13 12:46:35'),
(252, 260, 3, '2022-11-13 13:05:13', '2022-11-13 13:05:13'),
(253, 260, 14, '2022-11-13 13:05:13', '2022-11-13 13:05:13'),
(254, 261, 3, '2022-11-14 17:27:15', '2022-11-14 17:27:15'),
(255, 261, 16, '2022-11-14 17:27:15', '2022-11-14 17:27:15'),
(256, 262, 2, '2022-11-15 17:41:16', '2022-11-15 17:41:16'),
(257, 262, 13, '2022-11-15 17:41:16', '2022-11-15 17:41:16'),
(258, 263, 1, '2022-11-15 19:05:17', '2022-11-15 19:05:17'),
(259, 263, 13, '2022-11-15 19:05:17', '2022-11-15 19:05:17'),
(260, 264, 3, '2022-11-15 19:12:12', '2022-11-15 19:12:12'),
(261, 264, 14, '2022-11-15 19:12:12', '2022-11-15 19:12:12'),
(262, 265, 14, '2022-11-15 19:25:35', '2022-11-15 19:25:35'),
(263, 265, 3, '2022-11-15 19:25:35', '2022-11-15 19:25:35'),
(264, 266, 14, '2022-11-16 13:22:26', '2022-11-16 13:22:26'),
(265, 266, 2, '2022-11-16 13:22:26', '2022-11-16 13:22:26'),
(266, 267, 14, '2022-11-16 13:25:59', '2022-11-16 13:25:59'),
(267, 267, 10, '2022-11-16 13:25:59', '2022-11-16 13:25:59'),
(268, 268, 14, '2022-11-16 13:30:51', '2022-11-16 13:30:51'),
(269, 268, 1, '2022-11-16 13:30:51', '2022-11-16 13:30:51'),
(270, 269, 12, '2022-11-16 18:57:04', '2022-11-16 18:57:04'),
(271, 269, 1, '2022-11-16 18:57:04', '2022-11-16 18:57:04'),
(272, 273, 12, '2022-11-26 13:17:20', '2022-11-26 13:17:20'),
(273, 273, 1, '2022-11-26 13:17:20', '2022-11-26 13:17:20'),
(274, 275, 15, '2022-11-28 11:58:33', '2022-11-28 11:58:33'),
(275, 275, 2, '2022-11-28 11:58:33', '2022-11-28 11:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `added_by` int(11) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_en`, `name_ar`, `image`, `status`, `added_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'T-shirts', 'T-shirts', 'Category_80548.png', 1, 1, NULL, '2022-07-05 09:06:13', '2022-07-05 09:06:13'),
(2, 'Hoodies', 'Hoodies', 'Category_24321.png', 1, 1, NULL, '2022-07-05 09:06:13', '2022-07-05 09:06:13'),
(3, 'Meals', 'Meals', 'meals.jpg', 1, 1, NULL, '2022-07-05 12:14:06', '2022-07-05 12:14:06'),
(4, 'Pants', 'Pants', 'Category_30238.png', 1, 1, NULL, '2022-06-21 11:08:16', '2022-06-21 11:08:16'),
(5, 'Shorts', 'Shorts', 'Category_39962.png', 1, 1, NULL, '2022-06-21 11:27:49', '2022-06-21 11:27:49'),
(6, 'Combo', 'Combo', 'combo.jpg', 1, 1, NULL, '2022-06-21 11:44:37', '2022-06-21 11:44:37'),
(7, 'Pancake', 'Pancake', 'bancakes.jpg', 1, 1, '2022-10-18 22:08:36', '2022-06-28 13:32:47', '2022-06-28 13:32:47'),
(8, 'Drinks', 'Drinks', 'drinkz.jpg', 1, 1, '2022-10-18 22:08:20', '2022-07-06 07:42:20', '2022-07-06 07:42:20'),
(9, 'tstee12345', 'tsd', 'Category_43878.jpg', 1, 1, '2022-09-27 12:25:56', '2022-09-27 03:23:55', '2022-09-27 03:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'القاهره', 'Cairo', 1, '2022-07-05 12:20:38', '2022-07-05 12:20:38', NULL),
(2, 'Alex', 'Alex', 1, '2022-07-06 07:28:22', '2022-07-06 07:28:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `governorate` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `calling_time` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `country`, `governorate`, `address`, `phone`, `calling_time`, `email`, `created_at`, `updated_at`) VALUES
(1, 'egypt', 'cairo', 'Moraba Al Genena, Maadi as Sarayat Al Gharbeyah, Maadi, Cairo Governorate.', '25865', 'Mon to Fri 9am to 6 pm', 'support@kosquad.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `jwt` varchar(255) NOT NULL DEFAULT '',
  `google_token` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `image`, `password`, `status`, `jwt`, `google_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Atef', '01121805383', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, '', '', '2022-07-05 12:29:09', '2022-07-05 12:29:09'),
(2, 'ash', '010506003030', NULL, NULL, NULL, 1, '', '', '2022-07-07 18:19:09', '2022-07-07 18:19:09'),
(3, 'Mohamed Atef', '015203040', 'tftfalhwa@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, '', '', '2022-07-23 12:12:16', '2022-07-23 12:12:16'),
(4, 'Mohamed Atef', '010', 'zola@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'ZOLA', '', '2022-07-23 12:13:22', '2022-07-23 12:13:22'),
(5, 'Eslam Maged', '01016450420', 'eslam.maged00@gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', 1, 'eyJpdiI6Ind0QitvWlhzRmt0cCtEWTJyS28rUXc9PSIsInZhbHVlIjoiM3pXdkdTU0V5NTNJUXNsYzB2SXJcL0VwOXRuS3BMOG1HRUdaOER6SFl0eTRCSFpqVXNEK3pUejk1cEcrVmRYN0YiLCJtYWMiOiJlODdlOTk2YWY5Y2ZmYzk1MjE4ZmJiMzdkOWNhYTk4YTQ0MzRhYzU2ZjMxYjQyODY3YTg5OGI1NmE2ZTE0OTY3In0=', '', '2022-08-01 09:52:20', '2022-08-01 09:52:20'),
(6, 'ahmmedd nassrr', '0100099344', NULL, NULL, NULL, 1, '', '', '2022-08-02 18:23:53', '2022-08-02 18:23:53'),
(7, 'Memo', '0152030', NULL, NULL, NULL, 1, '', '', '2022-08-02 18:27:56', '2022-08-02 18:27:56'),
(8, 'Memo', '0152030', NULL, NULL, NULL, 1, '', '', '2022-08-02 18:28:18', '2022-08-02 18:28:18'),
(9, 'Ahmed Nasar', '0153050600', NULL, NULL, NULL, 1, '', '', '2022-08-02 18:29:21', '2022-08-02 18:29:21'),
(10, 'midooo', '0100099341', NULL, NULL, NULL, 1, '', '', '2022-08-02 18:42:23', '2022-08-02 18:42:23'),
(11, 'atooofa', '01121805381', NULL, NULL, NULL, 1, '', '', '2022-08-02 18:44:06', '2022-08-02 18:44:06'),
(12, 'haithamm', '01153332927', NULL, NULL, NULL, 1, '', '', '2022-08-02 18:44:47', '2022-08-02 18:44:47'),
(13, 'ahmed elsied', '01007077099', NULL, NULL, NULL, 1, '', '', '2022-08-03 16:04:55', '2022-08-03 16:04:55'),
(14, 'eslam', '01016450421', 'eslam.maged00@gmail.co', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6IllFRnpWeGRVTzdGdVN5V21rZHFJU2c9PSIsInZhbHVlIjoiR1VHNXhnMUFiTDlzQ0lLODJJVEljVE5vS3hXM25ZQmk3Skg0K0h1QXcxTFwvamhCWkd4Q0lFTzZqM21DbG50SzYiLCJtYWMiOiIyMDBkODlkOTY1YjQ5YjRjNWQzN2NmNDgyMTE5ZDQ3NTI4NzhiZGM5ZmYxZDljZTI4Zjg5NTQ2Y2FiNjVjYmRlIn0=', '', '2022-08-03 18:21:20', '2022-08-03 18:21:20'),
(15, 'ahmed', '01000099344', 'ahmed.nasr165@icloud.com', NULL, '72c8db4ba761522efbaadebd5ad3b419', 1, 'eyJpdiI6ImZvNkNENnVQXC9BWEsrXC9yXC91bkdHNVE9PSIsInZhbHVlIjoiZGZtZDZ4RUFOWlR5TzBlWXlwMFlhUWtHb0NCeHN0OXpRRDRzdWI1dHlHZ0JkdUg2c1cwaG9WUENLQTJ3ckRDOCIsIm1hYyI6IjMwOTUwMTc3NDhmNzFkYTBjZWZhYjIyYWVkM2UzMjRiNDI4N2Q1NjE5MzM4ZTM0OTg1OTFiZTI1OWM0OTZhYTAifQ==', '', '2022-08-03 19:43:54', '2022-08-03 19:43:54'),
(16, 'Ahmed Ali', '01520304050', 'atef7374@gmail.comokl', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6Ik84SDZ3THNsRkNycEppMG5xNGxvM2c9PSIsInZhbHVlIjoiM3J3VDY2XC9PbTJhRFRRMVU2NmRuVG9UOWN5ckVNY1pBcHZ0VmZPd1FpckgzUURhWVFHTXFBNTVRbmdSaVJUN2YiLCJtYWMiOiJjNTI4YjIwYjBjMWZhODQ0YTQ2YzI2NDJlNmE2YWYzZjA0MjdmODliOTMyYmJlY2Y0ZGI5NTgwYTdkYWQ2MzMxIn0=', '', '2022-08-07 18:24:01', '2022-08-07 18:24:01'),
(17, 'Hoda El Sarrag', '01005252448', 'hsarrag@gmail.com', NULL, '7e13f9b6ba5418480b63ec8d5db32153', 1, 'eyJpdiI6IkhUSDc5Q1FlK0V4b3k3NkJOQ1gyZUE9PSIsInZhbHVlIjoiNEk4a3N6d3hpZVh5Y3VxNExhaGpMNDVVNnp3UW5nUVFzTis2aDRBZkQyc3kwT0NZd1NNd201R3lSbnl2VUlCSyIsIm1hYyI6IjZmMGEzYzI0ZGU0OTVjYThiNTZkMmE0MjhkYmZlNjRmMjc1YzM1N2E2NzZiYjdiYmRiZDhmOGU1NzQ3YjlmMTgifQ==', '', '2022-08-12 09:30:43', '2022-08-12 09:30:43'),
(18, 'Tefa alhwa', '01121805380', 'atef7374@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6Ik1rb2JTNjY2bDNoWW0wWXR4a0ZnMnc9PSIsInZhbHVlIjoiMktGUm5UY1NMMVJYVFVsajFqOXdzTVQ2bFg5U3N1RWJpdWJ5dmVYeW5cL1lJOENhc05kVHRJTkx0OUNiTzZsZVgiLCJtYWMiOiI5Mjk4YzlhM2IyODMzMGUxOTliYjU2OGI3YTBjMjY2OWEwMjY3YmZjYjYzYWQwN2I3MWM0YzM4ODFiNWUwY2IyIn0=', '', '2022-08-13 11:00:38', '2022-08-13 11:00:38'),
(19, 'Mohamed Atef', '01121888888', 'atef7374@gmail.comok', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6IjI0aytHaWNlaVBwSkZZaTZoZzVGa1E9PSIsInZhbHVlIjoidVVaSVo4b0NTTUdrYVRkTmFKTTJ2bnpBWVFxNXVXWGdMb0pyXC9GeGJBWmNzaTh4SmdEZUJpaTVSVXd1OElvSDYiLCJtYWMiOiJhNjY2MjEwMzM0MDkyZjkwMzdiZjk3OTUzN2MxNWIzMjM1NTMzYTRkMjNhYjRlMzU2MTAwMDVmY2U0ZmM4ZmQ5In0=', '', '2022-08-14 18:19:04', '2022-08-14 18:19:04'),
(20, 'Mohamed Atef', '01121805386', 'atef737475@gmail.comoki', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6IlVcL2h4UzFmRE93TzZ6dkYwK09EdlFRPT0iLCJ2YWx1ZSI6ImtyVlJVR0VqZkxVNWUwRHdEREZtdWlFdFppMm01TU0xYzBNRU9nb254TXNmZWlweXJcLzE5K3ZGdzNybGZua0E2IiwibWFjIjoiNjBkODU3MGUyMTY1NmNkNWU0NDgzOTc2NWRjYzgyMTU4Njc5Y2EyNjM2ZGM0OTA2NmI5ZmJlZTZmOGNhMjI3NiJ9', '', '2022-08-14 19:40:07', '2022-08-14 19:40:07'),
(21, 'Eslam Maged', '0100', 'janaa@akaka.xom', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6IlFDb3ZIeWV3NHZyV0Yxd21hSVRDREE9PSIsInZhbHVlIjoiTTJhUTIwbVdQZmF1WGZzb2pYSldvUlJFb0dlUTYzMGZ5K2tCTENPdVZVOHdpQnp6UE55N253T0tBK1RaVVltUSIsIm1hYyI6Ijk3YjhiODU5MDYzMTY1ZWFhMDFkNjRjNWNiNjMyNjYxYzMwZDE2NWYzMDNiZjU3N2NjYmJhOWFkYzAxM2YxMTAifQ==', '', '2022-09-02 18:31:49', '2022-09-02 18:31:49'),
(22, 'Eslam Maged', '01113405859', 'eslam.maged@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6InliUEhMTVpDQkVLVHV3UW5HKzg4ZUE9PSIsInZhbHVlIjoiNFY4bXpcL1VxTmNONmZmSHE5a1FGSXBFbWVKQmc0aWZjXC9pSkVGa3hObmJpN3ZrZHBPXC9CR0xqZnEzMVRzUzN4QyIsIm1hYyI6ImY1MWEzMzU0ZDFiMDhhNjEyYzg3ODU4NTFiNmQwNTJjMTA4MTdkNTg5YzYxNWI0MDlkNTdkZTQxNWQyNWZiMzcifQ==', '', '2022-10-14 02:28:57', '2022-10-14 02:28:57'),
(23, 'Eslam Maged', '011', 'test@test.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6ImpHSkp4TFBrZEVPUjJhUzNBNmdWUVE9PSIsInZhbHVlIjoia2k5eDRQd0o1QUo5SEt5YlVZUnI4eHlZZWhiY0xkTTZWaE13dUViM0R4d3JBNDZYSjU5NThoR0pzUFpqVEZyRSIsIm1hYyI6ImQ1OTViZTQwNjdkMmFkNGViNzcyZTM4NGQ5OWZkMWJhMjhhYWRiOWFmYmRjM2Y2YWM2MmFlOWRmMjg2ODE0NjUifQ==', '', '2022-10-16 13:48:38', '2022-10-16 13:48:38'),
(24, 'hassan', '0112585655', 'hassan.com', NULL, '90927c08f1a00ded0e2019e8b2b4d498', 1, 'eyJpdiI6InhZTVUxak1iT0tXNXYwcjVRMXBwMXc9PSIsInZhbHVlIjoiRUo5azVnS1lvc2hrbDZcL3pBSVJ5RDFVV2dQWFZ0N2hQbmRNblVvOGo2VWlNQnhyd3VFOXIyXC90b0FOZkZEazJSIiwibWFjIjoiZmQ3MWE4ZTBlYTg5OTA5YTI2NjI4YzBlYTIyNTliMjIxNTdjYTgzNTNlNzhhMzJkYTQ1YTllODk2ODIzOTRjZiJ9', '', '2022-10-24 22:38:51', '2022-10-24 22:38:51'),
(25, 'bido', '01012929269', 'bido@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6IkhDUU5ub1htVGdYRE14TkM1Y1dVM1E9PSIsInZhbHVlIjoib0I3YzhsRWdVZHVteHV3YlJINStnM1NwXC9tREpvekNlOE52NXlZTk1TNEJnZUFDQnhPQ2JSRkMzTTU1Q0xzdkEiLCJtYWMiOiJhZTE4MzFhZmFkZWJkMTllMzFlYWQ4ZWJiZjc2YWJhNjkzOGNhYmIyZjQxY2I3ZmRkNmM0MmVlODBlNmI2ZDY3In0=', '', '2022-11-20 15:44:17', '2022-11-20 15:44:17'),
(26, 'Mohamed Atef', '01520202020', 'mohamed_atef25000@yahoo.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'eyJpdiI6ImNmRXhCOUV4MFFxV21nTm9QNXhBb0E9PSIsInZhbHVlIjoiN1RTV0F6YVh0MmNIeVU2RUx5aWZMQ1NkZ01oV1RoVmJnNW91Y1wvem5LZW5qVVhsaWJ0ZHhtSVhvYm1GaGpLelIiLCJtYWMiOiI3NDQ1ZWNkNmFlOTg4OGViN2RmYTExNmY0NjVhMGI3NDUwOThkNmI2ODYzZTE3NzZiYWZmNmI2YzU1OTI3MmE5In0=', '', '2022-11-26 12:17:38', '2022-11-26 12:17:38'),
(27, 'Ramy Aamer Alaa El Din', '01065500508', 'ramyaamer77@gmail.com', NULL, 'e886e305b6c4b96d29025e58971e64e1', 1, 'eyJpdiI6IjhMWnFVck5iMjd5bDEzeXloS2RSZEE9PSIsInZhbHVlIjoicjF1WWROV1dFZGdUYW1SbWFkQTRLczA0Q2x4UjRNSjcxcE9Ba2FiRXpwb1wvYktVSCs5dlpwZEhUb1dyMG5cL210IiwibWFjIjoiZDQyNDgzMDFjODliZDlmOTZmMmMzYzEzMGFlYjkxMDlmYWNkNDFmZjc3NzZkNzk4ODI3YTQ5ZGIxYzAwYzk3OSJ9', '', '2022-12-01 12:44:48', '2022-12-01 12:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `favourites_products`
--

CREATE TABLE `favourites_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favourites_products`
--

INSERT INTO `favourites_products` (`id`, `product_id`, `user_id`) VALUES
(62, 173, 22),
(69, 135, 22),
(75, 178, 23),
(76, 178, 22),
(77, 179, 22),
(80, 184, 5),
(81, 178, 5),
(82, 183, 5),
(84, 187, 25),
(86, 180, 25),
(87, 179, 5),
(92, 185, 25),
(93, 182, 25);

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `cooking_rate` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name_en`, `name_ar`, `quantity`, `cooking_rate`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chicken', 'فراخ', -212.4, -2, 1, '2022-07-14 09:02:45', '2022-07-14 09:02:45', NULL),
(4, 'Meat', 'لحمه', -146, 1.5, 1, '2022-07-14 09:38:16', '2022-07-14 09:38:16', NULL),
(5, 'Rice', 'Rice', 4.9, 2, 1, '2022-07-14 10:42:33', '2022-07-14 10:42:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `material_histories`
--

CREATE TABLE `material_histories` (
  `id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `notes` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `material_histories`
--

INSERT INTO `material_histories` (`id`, `material_id`, `added_by`, `quantity`, `notes`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 80, '', '2022-07-14 07:38:59', '0000-00-00 00:00:00'),
(2, 4, 1, 20, '', '2022-07-14 07:42:34', '2022-07-14 09:42:34'),
(3, 4, 1, 123, '', '2022-07-14 07:43:43', '2022-07-14 09:43:43'),
(4, 1, 1, 11, '', '2022-07-14 07:45:41', '2022-07-14 09:45:41'),
(5, 4, 1, 15, '', '2022-07-14 07:45:47', '2022-07-14 09:45:47'),
(6, 1, 1, 7, '', '2022-07-14 07:46:05', '2022-07-14 09:46:05'),
(7, 5, 1, 5, '', '2022-07-14 08:42:42', '2022-07-14 10:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Kingg', 'has897san@yahoo.com', 'yy', 'kjhj fhf gfg', '2022-12-11 12:18:25', '2022-12-11 12:18:25'),
(2, 'Kinggg', 'hassaggn@yahoo.com', 'ghghg', 'gfgffg', '2022-12-11 12:19:49', '2022-12-11 12:19:49'),
(3, 'Kinggg', 'hassaggn@yahoo.com', 'ghghg', 'gfgffg', '2022-12-11 12:24:29', '2022-12-11 12:24:29'),
(4, 'Kinggg', 'hassaggn@yahoo.com', 'ghghg', 'gfgffg', '2022-12-11 12:24:38', '2022-12-11 12:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `details_en` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `name_ar` varchar(255) NOT NULL,
  `details_ar` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `name_en`, `details_en`, `created_at`, `name_ar`, `details_ar`, `image`, `updated_at`, `deleted_at`) VALUES
(1, 'Welcome ', 'Welcome To Ko Gear', '2022-07-23 10:24:51', '', '', '', '2022-09-27 04:31:10', NULL),
(2, 'New Offer', 'We have new offer Buy two items and get the third free', '2022-07-23 10:24:51', '', '', '', '2022-09-27 04:31:10', NULL),
(3, 'Ko Event', 'Ko Squad Event is coming soon', '2022-09-27 20:31:17', 'fd', 'fds', 'Notification_15710.png', '2022-09-27 13:31:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `how_to_get` varchar(255) NOT NULL,
  `how_got_quantity` varchar(255) NOT NULL,
  `offer_price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `product_id`, `how_to_get`, `how_got_quantity`, `offer_price`) VALUES
(1, 148, '135,136', '1,1', 99999999),
(2, 147, '139,138', '2,1', 99999999),
(3, 165, '', '', 99999999);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `promo_code` varchar(5) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1,
  `delivery_id` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `payment_type` int(11) NOT NULL DEFAULT 0,
  `location_id` int(11) NOT NULL,
  `delivery_cost` double NOT NULL DEFAULT 0,
  `rating` double NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cancel_reason` text DEFAULT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `promo_code`, `status`, `delivery_id`, `total_price`, `discount`, `payment_type`, `location_id`, `delivery_cost`, `rating`, `comment`, `cancel_reason`, `package_id`, `created_at`, `updated_at`) VALUES
(69, 18, '', 1, 0, 426.2, 33, 0, 75, 50, 0, NULL, NULL, 0, '2022-08-13 16:05:03', '2022-08-13 23:05:03'),
(70, 18, '', 1, 0, 511.7, 40.5, 0, 75, 50, 0, NULL, NULL, 0, '2022-08-13 16:09:22', '2022-08-13 23:09:22'),
(71, 19, '', 1, 0, 129.8, 0, 0, 76, 0, 0, NULL, NULL, 0, '2022-08-14 18:37:18', '2022-08-15 01:37:18'),
(72, 19, '', 1, 0, 129.8, 0, 0, 76, 0, 0, NULL, NULL, 0, '2022-08-14 18:46:58', '2022-08-15 01:46:58'),
(73, 20, '', 1, 0, 289.4, 0, 0, 77, 0, 0, NULL, NULL, 0, '2022-08-15 13:11:37', '2022-08-15 20:11:37'),
(74, 20, '', 1, 0, 175.4, 0, 0, 77, 0, 0, NULL, NULL, 0, '2022-08-15 13:51:42', '2022-08-15 20:51:42'),
(75, 20, '', 1, 0, 84.2, 0, 0, 77, 0, 0, NULL, NULL, 0, '2022-08-15 13:57:06', '2022-08-15 20:57:06'),
(76, 20, '', 1, 0, 397.7, 0, 0, 77, 0, 0, NULL, NULL, 0, '2022-08-15 15:35:59', '2022-08-15 22:35:59'),
(77, 20, '', 1, 0, 89.9, 0, 0, 77, 0, 0, NULL, NULL, 0, '2022-08-15 19:35:45', '2022-08-16 02:35:45'),
(78, 20, '', 1, 0, 89.9, 0, 0, 77, 0, 0, NULL, NULL, 0, '2022-08-15 20:38:55', '2022-08-16 03:38:55'),
(79, 20, '', 1, 0, 129.8, 0, 0, 77, 0, 0, NULL, NULL, 0, '2022-08-23 14:50:50', '2022-08-23 21:50:50'),
(80, 4, '', 1, 0, 409.1, 0, 0, 32, 0, 0, NULL, NULL, 0, '2022-08-29 09:55:25', '2022-08-29 16:55:25'),
(81, 4, '', 1, 0, 89.9, 0, 0, 32, 0, 0, NULL, NULL, 0, '2022-08-29 10:38:20', '2022-08-29 17:38:20'),
(82, 4, '', 1, 0, 511.7, 0, 0, 32, 0, 0, NULL, NULL, 0, '2022-08-31 21:32:53', '2022-09-01 04:32:53'),
(83, 4, '', 1, 0, 449, 0, 0, 32, 0, 0, NULL, NULL, 0, '2022-08-31 23:00:42', '2022-09-01 06:00:42'),
(84, 21, '', 1, 0, 122.8, 0, 0, 1, 0, 0, NULL, NULL, 0, '2022-09-02 22:23:22', '2022-09-03 05:23:22'),
(85, 4, '', 1, 0, 209.6, 0, 0, 32, 0, 0, NULL, NULL, 0, '2022-09-04 18:11:17', '2022-09-05 01:11:17'),
(86, 4, '', 1, 0, 107, 0, 0, 32, 0, 0, NULL, NULL, 0, '2022-09-04 18:12:14', '2022-09-05 01:12:14'),
(87, 4, '', 2, 0, 608.6, 0, 0, 32, 0, 0, NULL, NULL, 0, '2022-09-21 19:17:01', '2022-10-06 01:26:15'),
(88, 23, '', 1, 0, 595, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-16 18:06:05', '2022-10-17 01:06:05'),
(89, 23, '', 1, 0, 250, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-16 18:10:43', '2022-10-17 01:10:43'),
(90, 23, '', 1, 0, 285, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-16 18:11:31', '2022-10-17 01:11:31'),
(91, 22, '', 1, 0, 0, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-17 01:38:05', '2022-10-17 08:38:05'),
(92, 22, '', 1, 0, 1250, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-18 15:35:46', '2022-10-18 22:35:46'),
(93, 22, '', 1, 0, 0, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-18 15:35:49', '2022-10-18 22:35:49'),
(94, 22, '', 1, 0, 105, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-18 16:22:08', '2022-10-18 23:22:08'),
(95, 22, '', 1, 0, 0, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-18 16:22:11', '2022-10-18 23:22:11'),
(96, 23, '', 1, 0, 1150, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-23 03:17:09', '2022-10-23 10:17:09'),
(97, 23, '', 1, 0, 1575, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-23 04:01:33', '2022-10-23 11:01:33'),
(98, 5, '', 1, 0, 532, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-28 18:52:12', '2022-10-29 01:52:12'),
(99, 5, '', 1, 0, 482, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-28 18:52:53', '2022-10-29 01:52:53'),
(100, 22, '', 1, 0, 482, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-10-28 20:38:47', '2022-10-29 03:38:47'),
(101, 5, '', 1, 0, 932, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-11-02 12:05:02', '2022-11-02 19:05:02'),
(102, 5, '', 1, 0, 532, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-11-02 17:58:29', '2022-11-03 00:58:29'),
(103, 5, '', 1, 0, 1832, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-11-07 18:16:45', '2022-11-08 01:16:45'),
(104, 5, '', 1, 0, 682, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-11-08 22:17:25', '2022-11-09 05:17:25'),
(105, 5, '', 1, 0, 382, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-11-09 15:49:49', '2022-11-09 22:49:49'),
(106, 5, '', 1, 0, 1182, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-11-13 12:46:49', '2022-11-13 19:46:49'),
(107, 5, '', 1, 0, 1212, 0, 0, 79, 0, 0, NULL, NULL, 0, '2022-11-13 13:05:24', '2022-11-13 20:05:24'),
(108, 5, '', 1, 0, 800, 0, 0, 65, 0, 0, NULL, NULL, 0, '2022-11-15 19:05:09', '2022-11-16 02:05:09'),
(109, 5, '', 1, 0, 400, 0, 0, 65, 0, 0, NULL, NULL, 0, '2022-11-15 19:08:45', '2022-11-16 02:08:45'),
(110, 5, '', 1, 0, 460, 0, 0, 80, 0, 0, NULL, NULL, 0, '2022-11-15 19:24:36', '2022-11-16 02:24:36'),
(111, 5, '', 1, 0, 900, 0, 0, 82, 0, 0, NULL, NULL, 0, '2022-11-28 12:02:26', '2022-11-28 19:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `cost` double NOT NULL,
  `payment_type` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `cost`, `payment_type`, `package_id`, `created_at`, `updated_at`) VALUES
(40, NULL, 5000, 1, 17, '2022-08-02 18:42:23', '2022-08-02 18:42:23'),
(41, 44, 414.8, 0, NULL, '2022-08-02 18:44:06', '2022-08-02 18:44:06'),
(42, NULL, 1808, 0, 18, '2022-08-02 18:44:47', '2022-08-02 18:44:47'),
(43, 45, 199.5, 0, NULL, '2022-08-02 18:46:07', '2022-08-02 18:46:07'),
(44, 46, 471.8, 0, NULL, '2022-08-02 18:47:45', '2022-08-02 18:47:45'),
(45, 47, 186.8, 0, NULL, '2022-08-03 12:14:51', '2022-08-03 12:14:51'),
(46, NULL, 7000, 0, 21, '2022-08-03 12:32:51', '2022-08-03 12:32:51'),
(47, 48, 50, 0, NULL, '2022-08-03 12:46:19', '2022-08-03 12:46:19'),
(48, 0, 1550, 2, NULL, '2022-08-03 12:48:39', '2022-08-03 12:48:39'),
(50, 0, 23455, 0, 21, '2022-08-03 12:50:42', '2022-08-03 12:50:42'),
(51, 49, 369.2, 0, NULL, '2022-08-03 16:04:55', '2022-08-03 16:04:55'),
(52, NULL, 6102, 0, 22, '2022-08-03 16:05:53', '2022-08-03 16:05:53'),
(53, 50, 313.6, 1, NULL, '2022-08-03 16:07:28', '2022-08-03 16:07:28'),
(54, 51, 0, 0, NULL, '2022-08-03 16:08:44', '2022-08-03 16:08:44'),
(55, 56, 221, 0, NULL, '2022-08-07 18:16:15', '2022-08-07 18:16:15'),
(56, 59, 141.2, 0, NULL, '2022-08-09 13:57:46', '2022-08-09 13:57:46'),
(57, 61, 232.4, 1, NULL, '2022-08-13 11:19:16', '2022-08-13 11:19:16'),
(58, 62, 232.4, 1, NULL, '2022-08-13 12:57:50', '2022-08-13 12:57:50'),
(59, 63, 152.6, 1, NULL, '2022-08-13 13:01:20', '2022-08-13 13:01:20'),
(60, 64, 232.4, 1, NULL, '2022-08-13 13:36:19', '2022-08-13 13:36:19'),
(61, 65, 460.4, 1, NULL, '2022-08-13 15:25:35', '2022-08-13 15:25:35'),
(62, 66, 216.4, 1, NULL, '2022-08-13 15:33:47', '2022-08-13 15:33:47'),
(63, 67, 329.3, 1, NULL, '2022-08-13 15:37:34', '2022-08-13 15:37:34'),
(64, 68, 398.4, 1, NULL, '2022-08-13 15:38:57', '2022-08-13 15:38:57'),
(65, 69, 393.2, 1, NULL, '2022-08-13 16:05:03', '2022-08-13 16:05:03'),
(66, 70, 471.2, 1, NULL, '2022-08-13 16:09:22', '2022-08-13 16:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `details_en` text NOT NULL,
  `details_ar` text NOT NULL,
  `price_before` double NOT NULL,
  `price_after` double NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name_en`, `name_ar`, `details_en`, `details_ar`, `price_before`, `price_after`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '30 Meals / Months', '٣٠ وجبه في الشهر', '20 Chicken \r\n10 Meat', '٢٠ فراخ \r\n١٠ لحمه', 2400, 2400, 'Product_34655.jpg', 1, '2022-07-05 11:24:32', '2022-07-05 11:24:32', NULL),
(2, '60 Meals / Month', '٦٠ وجبه في الشهر', '40 Chicken\r\n10 Beef\r\n10 Sea Food', '٤٠ فراخ\r\n١٠ لحوم \r\n١٠ اسماك', 5400, 5400, 'Product_17610.jpg', 1, '2022-07-05 11:19:13', '2022-08-03 16:12:00', NULL),
(3, '90 Meals Per Month', '٩٠ وجبه في الشهر', '60 Chicken\r\n20 Beef\r\n10 Sea Food', '٦٠ فراخ\r\n٢٠ لحمه \r\n١٠ اسماك', 7700, 7700, 'Product_58699.jpg', 1, '2022-07-05 11:26:40', '2022-07-05 11:26:40', NULL),
(4, '6 Meals / 6 Days', '٦ وجبات في ٦ ايام', '3 Chicken\r\n2 Beef \r\n1 Sea-Food', '٣ فراخ \r\n٢ لحمه \r\n١ اسماك', 600, 600, 'Product_67746.jpg', 1, '2022-07-05 11:23:15', '2022-07-05 11:23:15', NULL),
(5, '6 days Launch & Dinner', '٦ ايام فطار و غذاء', 'Lunch\r\n3 Chicken\r\n2 Beef\r\n1 Sea-Food\r\nDinner\r\n2 Caesar\r\n1 Qarish Cheese \r\n1 Tuna Salad \r\n1 Salamon Salad\r\n1 Turkey Salad', 'الغذاء\r\n٣ فراخ\r\n٢ لحمه\r\n١ اسماك\r\nالعشاء\r\n٢ سيزر \r\n١ جبنه قريش \r\n١ سلطه تونه \r\n١ سلطه سلمون\r\n١ سلطه تركي', 1000, 1000, 'Product_64263.jpg', 1, '2022-07-05 11:38:01', '2022-07-05 11:38:18', NULL),
(6, '6 days Breakfast , Launch & Dinner', '٦ ايام فطار و غذاء و عشاء', 'Breakfast \r\n2 Egg Roll\r\n1 Toast & Salad \r\n1 Boiled Eggs\r\n1 Oat meal with nuts & fruits \r\n2 Turkey Salad \r\nLunch\r\n3 Chicken\r\n2 Beef\r\n1 Sea-Food\r\nDinner\r\n2 Caesar\r\n1 Qarish Cheese\r\n1 Tuna Salad\r\n1 Salamon Salad\r\n1 Turkey Salad', 'الفطار \r\n٢ بيض رول \r\n١ توست وسلطه\r\n١ بيض مسلوق \r\n١ شوفان ومكسرات وفواكه\r\n٢ سلطه تركي \r\nالغذاء\r\n٣ فراخ\r\n٢ لحمه\r\n١ اسماك\r\nالعشاء\r\n٢ سيزر \r\n١ جبنه قريش \r\n١ سلطه تونه \r\n١ سلطه سلمون\r\n١ سلطه تركي', 1600, 1600, 'Product_69867.jpg', 1, '2022-07-05 11:47:16', '2022-07-05 11:47:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_category_limits`
--

CREATE TABLE `package_category_limits` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `products_limit` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package_category_limits`
--

INSERT INTO `package_category_limits` (`id`, `category_id`, `package_id`, `products_limit`, `created_at`, `updated_at`) VALUES
(31, 4, 5, 0, '2022-07-05 11:38:18', '2022-07-05 11:38:18'),
(32, 5, 5, 0, '2022-07-05 11:38:18', '2022-07-05 11:38:18'),
(33, 8, 5, 2, '2022-07-05 11:38:18', '2022-07-05 11:38:18'),
(34, 9, 5, 1, '2022-07-05 11:38:18', '2022-07-05 11:38:18'),
(35, 10, 5, 0, '2022-07-05 11:38:18', '2022-07-05 11:38:18'),
(36, 11, 5, 3, '2022-07-05 11:38:18', '2022-07-05 11:38:18'),
(37, 4, 6, 0, '2022-07-05 11:47:16', '2022-07-05 11:47:16'),
(38, 5, 6, 0, '2022-07-05 11:47:16', '2022-07-05 11:47:16'),
(39, 8, 6, 2, '2022-07-05 11:47:16', '2022-07-05 11:47:16'),
(40, 9, 6, 1, '2022-07-05 11:47:16', '2022-07-05 11:47:16'),
(41, 10, 6, 0, '2022-07-05 11:47:16', '2022-07-05 11:47:16'),
(42, 11, 6, 3, '2022-07-05 11:47:16', '2022-07-05 11:47:16'),
(43, 7, 1, 0, '2022-08-03 16:10:59', '2022-08-03 16:10:59'),
(44, 8, 1, 10, '2022-08-03 16:10:59', '2022-08-03 16:10:59'),
(45, 9, 1, 0, '2022-08-03 16:10:59', '2022-08-03 16:10:59'),
(46, 10, 1, 0, '2022-08-03 16:10:59', '2022-08-03 16:10:59'),
(47, 11, 1, 20, '2022-08-03 16:10:59', '2022-08-03 16:10:59'),
(48, 7, 2, 0, '2022-08-03 16:12:00', '2022-08-03 16:12:00'),
(49, 8, 2, 40, '2022-08-03 16:12:00', '2022-08-03 16:12:00'),
(50, 9, 2, 10, '2022-08-03 16:12:00', '2022-08-03 16:12:00'),
(51, 10, 2, 0, '2022-08-03 16:12:00', '2022-08-03 16:12:00'),
(52, 11, 2, 10, '2022-08-03 16:12:00', '2022-08-03 16:12:00'),
(53, 7, 3, 0, '2022-08-03 16:14:03', '2022-08-03 16:14:03'),
(54, 8, 3, 20, '2022-08-03 16:14:03', '2022-08-03 16:14:03'),
(55, 9, 3, 10, '2022-08-03 16:14:03', '2022-08-03 16:14:03'),
(56, 10, 3, 0, '2022-08-03 16:14:03', '2022-08-03 16:14:03'),
(57, 11, 3, 60, '2022-08-03 16:14:03', '2022-08-03 16:14:03'),
(58, 7, 4, 0, '2022-08-03 16:15:13', '2022-08-03 16:15:13'),
(59, 8, 4, 2, '2022-08-03 16:15:13', '2022-08-03 16:15:13'),
(60, 9, 4, 1, '2022-08-03 16:15:13', '2022-08-03 16:15:13'),
(61, 10, 4, 0, '2022-08-03 16:15:13', '2022-08-03 16:15:13'),
(62, 11, 4, 3, '2022-08-03 16:15:13', '2022-08-03 16:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name_ar`, `name_en`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Full Access', 'Full Access', 1, '2022-06-19 13:34:19', '2022-06-19 13:34:19', NULL),
(2, 'Delivery Or Kitchen', 'Delivery Or Kitchen', 3, '2022-07-06 09:41:42', '2022-07-06 09:41:42', NULL),
(3, 'Operation', 'Operation', 2, '2022-07-06 09:41:42', '2022-09-23 16:39:48', NULL),
(4, 'atef perrm', 'atef perrm', 0, '2022-09-27 12:30:21', '2022-09-27 12:30:31', '2022-09-27 12:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'Super Man', 'Super Man', '2022-06-19 13:33:39', '2022-06-19 13:33:39'),
(2, 'Operation', 'Operation', '2022-06-21 08:44:55', '2022-06-21 08:44:55'),
(3, 'Delivery', 'Delivery', '2022-06-21 08:44:55', '2022-06-21 08:44:55'),
(4, 'Kitchen', 'Kitchen', '2022-07-06 09:44:46', '2022-07-06 09:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `details_ar` text CHARACTER SET utf8 NOT NULL,
  `details_en` text NOT NULL,
  `price_before` double DEFAULT NULL,
  `price_after` double NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 3,
  `at_stock` int(11) NOT NULL DEFAULT 0,
  `offer_items` varchar(255) NOT NULL,
  `related_products` text DEFAULT NULL,
  `is_offer` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `added_by` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_ar`, `name_en`, `details_ar`, `details_en`, `price_before`, `price_after`, `image`, `category_id`, `at_stock`, `offer_items`, `related_products`, `is_offer`, `status`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Make Your Sandwich', 'Make Your Sandwich', 'You can create your sandwich as you like with 3 different sizes \r\nSingle ,Double and Triple', 'You can create your sandwich as you like with 3 different sizes \r\nSingle ,Double and Triple', 0, 0, '20.jpg', 4, 0, '1,2', '', 0, 1, 1, '2022-08-14 07:36:18', '2022-10-18 22:08:49', '2022-10-18 22:08:49'),
(135, 'Smash Burger with Cheese', 'Smash Burger with Cheese', 'Big ben sauce, london eye, lettuce and pickles', 'Big ben sauce, london eye, lettuce and pickles', 35, 35, '21.jpg', 1, 1, '', '175,177', 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:09:00', '2022-10-18 22:09:00'),
(136, ' Fried Chicken with Cheese ', ' Fried Chicken with Cheese ', ' Big ben sauce, ranch, lettuce, tomato and pickles ', ' Big ben sauce, ranch, lettuce, tomato and pickles ', 35, 35, '22.jpg', 1, 1, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:09:04', '2022-10-18 22:09:04'),
(137, ' Plain Hot Dog Sandwich ', ' Plain Hot Dog Sandwich ', 'From classic coleslaw to terrific grilled corn on the cob, here are our favorite simple sides to serve with hot dogs', 'From classic coleslaw to terrific grilled corn on the cob, here are our favorite simple sides to serve with hot dogs', 25, 25, '5.jpg', 2, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:28:40', '2022-10-18 22:28:40'),
(138, ' Cheese Hot Dog Sandwich ', ' Cheese Hot Dog Sandwich ', 'Image result for Cheese Hot Dog Sandwich\r\nTopped with cheddar cheese and diced onions, the hot dogs bake up beautifully (I recommend a top-cut bun for easier positioning in the baking dish). Top with any and all toppings you wish and serve them with a steamed veggie', 'Image result for Cheese Hot Dog Sandwich\r\nTopped with cheddar cheese and diced onions, the hot dogs bake up beautifully (I recommend a top-cut bun for easier positioning in the baking dish). Top with any and all toppings you wish and serve them with a steamed veggie', 30, 30, '99.jpg', 2, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:09:09', '2022-10-18 22:09:09'),
(139, 'Chili Hot Dog Sandwich', 'Chili Hot Dog Sandwich', 'These Grilled Chili Cheese Dog Sandwiches are outrageously delicious. Perfect for feeding a group on game day!', 'These Grilled Chili Cheese Dog Sandwiches are outrageously delicious. Perfect for feeding a group on game day!', 35, 35, '5.jpg', 2, 0, '', '171,177', 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:28:48', '2022-10-18 22:28:48'),
(140, ' Smash Fries Burger ', ' Smash Fries Burger ', 'Crinkle fries, big ben, smash burger, cheese sauce, special jalapeno, pickles and spices ', 'Crinkle fries, big ben, smash burger, cheese sauce, special jalapeno, pickles and spices ', 50, 50, '16.jpg', 4, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:09:13', '2022-10-18 22:09:13'),
(141, ' Smash Fries Chicken ', ' Smash Fries Chicken ', ' Crinkle fries, BBQ, mayonaise, chicken, cheese sauce, special jalapeno, pickles and spices ', ' Crinkle fries, BBQ, mayonaise, chicken, cheese sauce, special jalapeno, pickles and spices ', 50, 50, '14.jpg', 4, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:28:45', '2022-10-18 22:28:45'),
(142, ' Potato Pops ', ' Potato Pops ', 'Potatoes, bread crumbs, cheese, corn flour, red pepper ', 'Potatoes, bread crumbs, cheese, corn flour, red pepper ', 30, 30, '13.jpg', 4, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:28:52', '2022-10-18 22:28:52'),
(143, 'Chicken Pops', 'Chicken Pops', 'Boned chicken breasts, smoked paprika, eggs', 'Boned chicken breasts, smoked paprika, eggs', 30, 30, '11.jpg', 4, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:28:55', '2022-10-18 22:28:55'),
(144, ' Cheddar Bites ', ' Cheddar Bites ', 'You will get this  With free sauce ', 'You will get this  With free sauce ', 40, 40, '12.jpg', 4, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:28:59', '2022-10-18 22:28:59'),
(145, ' Mini Mozzarella ', ' Mini Mozzarella ', 'You will get this  With free sauce ', 'You will get this  With free sauce ', 45, 45, '13.jpg', 4, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:09:19', '2022-10-18 22:09:19'),
(146, ' Plain Fries ', ' Plain Fries ', 'Great recipe for Simple plain fries. ... Once the oil is hot put your fries slices bit by bit and fry each batch for about 13 minutes each', 'Great recipe for Simple plain fries. ... Once the oil is hot put your fries slices bit by bit and fry each batch for about 13 minutes each', 15, 15, '8.jpg', 5, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:29:02', '2022-10-18 22:29:02'),
(147, ' Cheese Fries ', ' Cheese Fries ', 'Great recipe for Simple plain fries. ... Once the oil is hot put your fries slices bit by bit and fry each batch for about 13 minutes each', 'Great recipe for Simple plain fries. ... Once the oil is hot put your fries slices bit by bit and fry each batch for about 13 minutes each', 20, 20, 'a2.jpg', 5, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:30:23', '2022-10-18 22:30:23'),
(148, ' Fire Fries ', ' Fire Fries ', 'Great recipe for Simple plain fries. ... Once the oil is hot put your fries slices bit by bit and fry each batch for about 13 minutes each', 'Great recipe for Simple plain fries. ... Once the ...', 25, 25, 'a3.jpg', 5, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:30:46', '2022-10-18 22:30:46'),
(149, ' Curly Fries ', ' Curly Fries ', 'Great recipe for Simple plain fries.', 'Great recipe for Simple plain fries.', 35, 35, 'a1.jpg', 5, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:31:03', '2022-10-18 22:31:03'),
(150, ' French Fries with Soft Drink ', ' French Fries with Soft Drink ', ' French Fries with Soft Drink ', ' French Fries with Soft Drink ', 30, 30, '8.jpg', 6, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:31:08', '2022-10-18 22:31:08'),
(151, ' Potato Pops with Soft Drink ', ' Potato Pops with Soft Drink ', ' Potato Pops with Soft Drink ', ' Potato Pops with Soft Drink ', 35, 35, '13.jpg', 6, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:31:13', '2022-10-18 22:31:13'),
(152, ' Curly Fries with Soft Drink ', ' Curly Fries with Soft Drink ', ' Curly Fries with Soft Drink ', ' Curly Fries with Soft Drink ', 50, 50, 'a1.jpg', 6, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:31:18', '2022-10-18 22:31:18'),
(153, ' French Fries with Milkshake ', ' French Fries with Milkshake ', ' French Fries with Milkshake ', ' French Fries with Milkshake ', 40, 40, '8.jpg', 6, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:33:40', '2022-10-18 22:33:40'),
(154, ' Potato Pops with Milkshake ', ' Potato Pops with Milkshake ', ' Potato Pops with Milkshake ', ' Potato Pops with Milkshake ', 45, 45, '13.jpg', 6, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:33:43', '2022-10-18 22:33:43'),
(155, ' Curly Fries with Milkshake ', ' Curly Fries with Milkshake ', ' Curly Fries with Milkshake ', ' Curly Fries with Milkshake ', 60, 60, 'a1.jpg', 6, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:33:46', '2022-10-18 22:33:46'),
(156, ' For Combo Cheese ', ' For Combo Cheese ', ' For Combo Cheese ', ' For Combo Cheese ', 8, 8, 'cheese.jpg', 6, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:30:19', '2022-10-18 22:30:19'),
(157, ' For Combo Fire ', ' For Combo Fire ', ' For Combo Fire ', ' For Combo Fire ', 15, 15, 'cheese.jpg', 6, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:30:06', '2022-10-18 22:30:06'),
(160, ' Caramel Pancake ', ' Caramel Pancake ', ' Caramel Pancake ', ' Caramel Pancake ', 25, 25, '24.jpg', 7, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:29:57', '2022-10-18 22:29:57'),
(161, ' Nutella Pancake ', ' Nutella Pancake ', ' Nutella Pancake ', ' Nutella Pancake ', 30, 30, '23.jpg', 7, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:29:53', '2022-10-18 22:29:53'),
(162, ' Belgian Chocolate Pancake ', ' Belgian Chocolate Pancake ', ' Belgian Chocolate Pancake ', ' Belgian Chocolate Pancake ', 35, 35, '23.jpg', 7, 0, '', NULL, 0, 1, 1, '2022-07-05 08:45:21', '2022-10-18 22:29:50', '2022-10-18 22:29:50'),
(163, ' Nutella Milkshake ', ' Nutella Milkshake ', ' Nutella Milkshake ', ' Nutella Milkshake ', 30, 30, '7.jpg', 7, 0, '', NULL, 0, 1, 1, '2022-07-05 12:14:52', '2022-10-18 22:29:40', '2022-10-18 22:29:40'),
(164, 'Strawberry Milkshake', 'Strawberry Milkshake', 'Strawberry Milkshake', 'Strawberry Milkshake', 25, 25, '2.jpg', 8, 0, '', NULL, 0, 1, 1, '2022-07-05 12:16:14', '2022-10-18 22:29:36', '2022-10-18 22:29:36'),
(165, ' Lotus Milkshake ', ' Lotus Milkshake ', ' Lotus Milkshake ', ' Lotus Milkshake ', 35, 35, '6.jpg', 8, 0, '', NULL, 0, 1, 1, '2022-07-05 12:16:59', '2022-10-18 22:29:46', '2022-10-18 22:29:46'),
(166, ' Peanut Butter Milkshake ', ' Peanut Butter Milkshake ', ' Peanut Butter Milkshake ', ' Peanut Butter Milkshake ', 35, 35, '3.jpg', 8, 0, '', NULL, 0, 1, 1, '2022-07-05 12:18:23', '2022-10-18 22:29:32', '2022-10-18 22:29:32'),
(167, ' Caramel Milkshake ', ' Caramel Milkshake ', ' Caramel Milkshake ', ' Caramel Milkshake ', 25, 25, '3.jpg', 8, 0, '', NULL, 0, 1, 1, '2022-07-05 12:19:45', '2022-10-18 22:29:23', '2022-10-18 22:29:23'),
(168, ' Soft Drinks Refill ', ' Soft Drinks Refill ', ' Soft Drinks Refill ', ' Soft Drinks Refill ', 20, 20, 'can1-removebg-preview.png', 8, 10, '', NULL, 0, 1, 1, '2022-08-08 18:44:06', '2022-10-18 22:29:15', '2022-10-18 22:29:15'),
(169, ' Red Bull ', ' Red Bull ', ' Red Bull ', ' Red Bull ', 30, 30, 'redbul.jpg', 8, 1, '', NULL, 0, 1, 1, '2022-08-08 19:02:12', '2022-10-18 22:29:18', '2022-10-18 22:29:18'),
(170, ' Mineral Water ', ' Mineral Water ', ' Mineral Water ', ' Mineral Water ', 10, 10, 'wateer.jpeg', 8, 1, '', NULL, 0, 1, 1, '2022-08-08 19:04:53', '2022-10-18 22:29:10', '2022-10-18 22:29:10'),
(171, ' Soft Drinks Can ', ' Soft Drinks Can ', ' Soft Drinks Can ', ' Soft Drinks Can ', 15, 15, 'colaas.png', 8, 1, '', NULL, 0, 1, 1, '2022-08-08 19:07:28', '2022-10-18 22:29:28', '2022-10-18 22:29:28'),
(172, 'Winter Collection', 'Winter Collection', 'Best Offer For Ever', 'Nice And amazing offer', 300, 250, 'Product_32615.jpg', 0, 0, '1,2,135,2,136,1', NULL, 1, 1, 1, '2022-09-10 04:41:26', '2022-11-07 22:08:14', NULL),
(173, 'by the bestt offfers', 'Goo another offer', 'OFAAAR Arabic', 'OFAAAR', 1000, 8000, 'Product_44693.jpg', 0, 0, '', NULL, 1, 1, 1, '2022-09-25 13:26:12', '2022-10-18 22:34:07', '2022-10-18 22:34:07'),
(174, 'testing', 'testtt', 'descssssr', 'descrripion', 12, 15, 'Product_26187.jpg', 0, 1, '', NULL, 1, 1, 1, '2022-09-25 13:29:17', '2022-09-26 12:04:07', '2022-09-26 12:04:07'),
(175, 'Atef', 'Mohamed', '', '', 0, 0, '', 3, 0, '', NULL, 0, 1, 1, '2022-09-25 20:25:30', '2022-10-18 22:29:06', '2022-10-18 22:29:06'),
(176, 'ssss', 'test', 'dess', 'desc', 12, 123, 'Product_77973.jpg', 5, 1231, '', NULL, 0, 1, 1, '2022-09-26 16:06:13', '2022-10-18 22:30:02', '2022-10-18 22:30:02'),
(177, 'ssss', 'test', 'dess', 'desc', 12, 123, 'Product_12132.jpg', 4, 1231, '', '171,174,176', 0, 1, 1, '2022-09-26 16:10:11', '2022-10-18 22:30:10', '2022-10-18 22:30:10'),
(178, 'Sleeve Hoodie KO Black X Gold', 'Sleeve Hoodie KO Black X Gold', 'This essential hoodie is designed and made to make you perform in style. The subtle black with the shiny gold gives you an exclusive and premium look.', 'This essential hoodie is designed and made to make you perform in style. The subtle black with the shiny gold gives you an exclusive and premium look.', 525, 400, 'Product_69024.jpg', 2, 10, '', '179', 0, 1, 1, '2022-10-20 02:11:07', '2022-10-26 05:48:41', NULL),
(179, 'Hoodie BR X KO Grey Heather', 'Hoodie BR X KO Grey Heather', 'For Long Sleeve lovers, this piece is made from light weight treated polyester to be worn all year round. This hoodie will fulfill your style and comfort in the simplest way.', 'For Long Sleeve lovers, this piece is made from light weight treated polyester to be worn all year round. This hoodie will fulfill your style and comfort in the simplest way.', 625, 500, 'go31.jpeg', 2, 10, '', '178', 0, 1, 1, '2022-10-20 21:24:58', '2022-10-26 05:48:52', NULL),
(180, 'Pants KO Chill relaxed Fit Joggers Black', 'Pants KO Chill relaxed Fit Joggers Black', 'Designed with comfort in mind, it will always be your go to piece. You won\'t take these off. Perfect for working out or going out. Finished with side pockets, a back pocket and a tapered ankle hem.', 'Designed with comfort in mind, it will always be your go to piece. You won\'t take these off. Perfect for working out or going out. Finished with side pockets, a back pocket and a tapered ankle hem.', 610, 500, 'Product_25048.jpg', 4, 10, '', '178,179', 0, 1, 1, '2022-11-07 21:57:41', '2022-11-07 21:57:41', NULL),
(181, 'Pants – Muscle Fit Cammo X Black', 'Pants – Muscle Fit Cammo X Black', 'Show off these muscles and the many hours you spent working out using these effortless A-Class design pants. A slim fit cut that will make you standout wherever you are.', 'Show off these muscles and the many hours you spent working out using these effortless A-Class design pants. A slim fit cut that will make you standout wherever you are.', 645, 600, 'Product_967443.jpg', 4, 10, '', '178,179,180', 0, 1, 1, '2022-11-07 21:59:16', '2022-11-07 21:59:16', NULL),
(182, 'Short KO Core', 'Short KO Core', 'Designed to give you the support and comfort you need wherever you are. Whether you are heading to the gym or a day out , these shorts will allow you to move freely and comfortably.', 'Designed to give you the support and comfort you need wherever you are. Whether you are heading to the gym or a day out , these shorts will allow you to move freely and comfortably.', 420, 370, 'Product_96743.jpg', 5, 10, '', '180,181', 0, 1, 1, '2022-11-07 22:03:17', '2022-11-07 22:03:17', NULL),
(183, 'T-Shirt KO Loading Hoodie Blue', 'T-Shirt KO Loading Hoodie Blue', 'Load those muscles with this showstopper hooded T-shirt. Created with precision and with a sleek design. Upgrade your style with this unique color and design.', 'Load those muscles with this showstopper hooded T-shirt. Created with precision and with a sleek design. Upgrade your style with this unique color and design.', 525, 500, 'Product_27603.jpeg', 1, 10, '', '178,179,180,181', 0, 1, 1, '2022-11-08 10:55:22', '2022-11-08 10:55:22', NULL),
(184, 'T-Shirt KO Genetics Grey', 'T-Shirt KO Genetics Grey', 'Show your love for sports and lifestyle with this one of a kind T-shirt with the famous KO Design on the back. The T-shirt is designed to perfectly fit your body and show off your physique.', 'Show your love for sports and lifestyle with this one of a kind T-shirt with the famous KO Design on the back. The T-shirt is designed to perfectly fit your body and show off your physique.', 270, 250, 'Product_60484.jpeg', 1, 10, '', '178,179,180,181,182,183', 0, 1, 1, '2022-11-08 10:57:36', '2022-11-08 10:57:36', NULL),
(185, 'T-Shirt KO Genetics Black', 'T-Shirt KO Genetics Black', 'Show your love for sports and lifestyle with this one of a kind T-shirt with the famous KO Design on the back. The T-shirt is designed to perfectly fit your body and show off your physique.', 'Show your love for sports and lifestyle with this one of a kind T-shirt with the famous KO Design on the back. The T-shirt is designed to perfectly fit your body and show off your physique.', 270, 250, 'Product_56568.jpeg', 1, 10, '', '183,184', 0, 1, 1, '2022-11-09 13:48:28', '2022-11-09 13:48:28', NULL),
(186, 'Sleeveless Hoodie KO Orange X Black', 'Sleeveless Hoodie KO Orange X Black', 'Performance is your key. Created with precision and with a sleek design to fit your muscle training need. Upgrade your style with this prestigious color and design.', 'Performance is your key. Created with precision and with a sleek design to fit your muscle training need. Upgrade your style with this prestigious color and design.', 395, 350, 'Product_23231.jpeg', 1, 10, '', '183,184,185', 0, 1, 1, '2022-11-09 13:51:45', '2022-11-09 13:51:45', NULL),
(187, 'T-Shirt BR Be Big', 'T-Shirt BR Be Big', 'You are \"born to be big\", show off in this state of art special edition big RAMY T-shirt that is designed to perfectly fit your body.', 'You are \"born to be big\", show off in this state of art special edition big RAMY T-shirt that is designed to perfectly fit your body.', 465, 465, 'Product_41177.jpeg', 1, 10, '', '183,184,185', 0, 1, 1, '2022-11-09 13:58:02', '2022-11-09 13:58:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_offers`
--

CREATE TABLE `products_offers` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `offer_items` varchar(255) CHARACTER SET utf8 NOT NULL,
  `extra_price` varchar(255) NOT NULL,
  `quantity_in_section` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_offers`
--

INSERT INTO `products_offers` (`id`, `name_ar`, `name_en`, `offer_items`, `extra_price`, `quantity_in_section`, `offer_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shirts', 'Shirts', '183,184', '0,0', 2, 172, 1, '2022-09-14 09:26:02', '2022-11-07 22:08:47', '2022-11-07 22:08:47'),
(2, 'Pants', 'Pants', '180,181', '0,0', 1, 172, 1, '2022-09-14 09:26:02', '2022-11-07 22:08:28', '2022-11-07 22:08:28'),
(4, 'Shoes', 'Shorts', '182', '0', 1, 172, 1, '2022-09-14 09:26:02', '2022-11-07 22:08:24', '2022-11-07 22:08:24'),
(15, 'Hoodies', 'Hoodies', '178,179', '0,0', 2, 172, 1, '2022-11-07 22:09:34', '2022-11-07 22:09:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `price` double DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_id`, `price`, `created_at`, `updated_at`) VALUES
(23, 178, 1, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(24, 178, 2, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(25, 178, 3, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(26, 178, 9, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(27, 178, 10, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(28, 178, 12, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(29, 178, 13, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(30, 178, 14, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(31, 178, 15, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(32, 178, 16, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(33, 178, 17, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(34, 178, 18, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(35, 178, 19, 0, '2022-11-08 18:51:31', '2022-11-08 18:51:31'),
(36, 179, 1, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(37, 179, 2, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(38, 179, 3, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(39, 179, 9, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(40, 179, 10, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(41, 179, 12, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(42, 179, 13, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(43, 179, 14, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(44, 179, 15, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(45, 179, 16, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(46, 179, 17, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(47, 179, 18, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(48, 179, 19, 0, '2022-11-08 18:51:40', '2022-11-08 18:51:40'),
(49, 180, 1, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(50, 180, 2, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(51, 180, 3, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(52, 180, 9, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(53, 180, 10, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(54, 180, 12, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(55, 180, 13, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(56, 180, 14, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(57, 180, 15, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(58, 180, 16, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(59, 180, 17, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(60, 180, 18, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(61, 180, 19, 0, '2022-11-08 18:55:12', '2022-11-08 18:55:12'),
(62, 181, 1, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(63, 181, 2, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(64, 181, 3, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(65, 181, 9, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(66, 181, 10, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(67, 181, 12, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(68, 181, 13, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(69, 181, 14, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(70, 181, 15, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(71, 181, 16, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(72, 181, 17, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(73, 181, 18, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(74, 181, 19, 0, '2022-11-08 18:55:28', '2022-11-08 18:55:28'),
(75, 182, 1, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(76, 182, 2, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(77, 182, 3, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(78, 182, 9, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(79, 182, 10, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(80, 182, 12, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(81, 182, 13, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(82, 182, 14, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(83, 182, 15, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(84, 182, 16, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(85, 182, 17, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(86, 182, 18, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(87, 182, 19, 0, '2022-11-08 18:55:44', '2022-11-08 18:55:44'),
(88, 183, 1, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(89, 183, 2, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(90, 183, 3, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(91, 183, 9, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(92, 183, 10, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(93, 183, 12, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(94, 183, 13, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(95, 183, 14, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(96, 183, 15, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(97, 183, 16, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(98, 183, 17, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(99, 183, 18, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(100, 183, 19, 0, '2022-11-08 18:56:04', '2022-11-08 18:56:04'),
(101, 184, 1, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(102, 184, 2, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(103, 184, 3, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(104, 184, 9, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(105, 184, 10, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(106, 184, 12, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(107, 184, 13, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(108, 184, 14, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(109, 184, 15, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(110, 184, 16, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(111, 184, 17, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(112, 184, 18, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(113, 184, 19, 0, '2022-11-08 18:58:36', '2022-11-08 18:58:36'),
(114, 185, 1, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(115, 185, 2, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(116, 185, 3, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(117, 185, 9, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(118, 185, 10, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(119, 185, 12, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(120, 185, 13, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(121, 185, 14, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(122, 185, 15, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(123, 185, 16, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(124, 185, 17, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(125, 185, 18, 0, '2022-11-09 13:52:48', '2022-11-09 13:52:48'),
(126, 186, 1, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(127, 186, 2, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(128, 186, 3, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(129, 186, 9, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(130, 186, 10, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(131, 186, 12, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(132, 186, 13, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(133, 186, 14, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(134, 186, 15, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(135, 186, 16, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(136, 186, 17, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(137, 186, 18, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(138, 186, 19, 0, '2022-11-09 13:53:20', '2022-11-09 13:53:20'),
(139, 187, 1, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(140, 187, 2, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(141, 187, 3, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(142, 187, 9, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(143, 187, 10, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(144, 187, 12, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(145, 187, 13, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(146, 187, 14, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(147, 187, 15, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36'),
(148, 187, 16, 0, '2022-11-09 13:58:36', '2022-11-09 13:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 179, 'go31.jpeg', '2022-10-22 12:23:34', '2022-10-22 12:23:34', NULL),
(2, 179, 'go21.jpeg', '2022-10-22 12:23:34', '2022-10-22 12:23:34', NULL),
(3, 179, 'go11.jpeg', '2022-10-22 12:23:34', '2022-10-22 12:23:34', NULL),
(4, 187, 'ezgif.com-gif-maker.jpeg', '2022-11-09 05:07:13', '2022-11-09 05:07:13', NULL),
(5, 187, 'ezgif.com-gif-maker(5).jpeg', '2022-11-09 05:07:13', '2022-11-09 05:07:13', NULL),
(6, 187, 'ezgif.com-gif-maker(4).jpeg', '2022-11-09 05:07:13', '2022-11-09 05:07:13', NULL),
(7, 186, 'fdsfdsfsss.jpeg', '2022-11-09 05:11:03', '2022-11-09 05:11:03', NULL),
(8, 186, 'fsdafd.jpeg', '2022-11-09 05:11:03', '2022-11-09 05:11:03', NULL),
(9, 186, '1231231.jpeg', '2022-11-09 05:11:03', '2022-11-09 05:11:03', NULL),
(10, 186, 'atsfd.jpeg', '2022-11-09 05:11:03', '2022-11-09 05:11:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_materials`
--

CREATE TABLE `product_materials` (
  `id` int(11) NOT NULL,
  `material_id` double NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_materials`
--

INSERT INTO `product_materials` (`id`, `material_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(82, 1, 136, 0, '2022-08-08 08:51:19', '2022-08-08 08:51:19'),
(83, 4, 136, 0, '2022-08-08 08:51:19', '2022-08-08 08:51:19'),
(84, 5, 136, 0, '2022-08-08 08:51:19', '2022-08-08 08:51:19'),
(97, 1, 137, 0, '2022-08-08 09:18:46', '2022-08-08 09:18:46'),
(98, 4, 137, 0, '2022-08-08 09:18:46', '2022-08-08 09:18:46'),
(99, 5, 137, 0, '2022-08-08 09:18:46', '2022-08-08 09:18:46'),
(100, 1, 140, 0, '2022-08-08 09:26:12', '2022-08-08 09:26:12'),
(101, 4, 140, 0, '2022-08-08 09:26:12', '2022-08-08 09:26:12'),
(102, 5, 140, 0, '2022-08-08 09:26:12', '2022-08-08 09:26:12'),
(121, 1, 138, 0, '2022-08-08 10:57:18', '2022-08-08 10:57:18'),
(122, 4, 138, 0, '2022-08-08 10:57:18', '2022-08-08 10:57:18'),
(123, 5, 138, 0, '2022-08-08 10:57:18', '2022-08-08 10:57:18'),
(124, 1, 147, 0, '2022-08-08 10:57:29', '2022-08-08 10:57:29'),
(125, 4, 147, 0, '2022-08-08 10:57:29', '2022-08-08 10:57:29'),
(126, 5, 147, 0, '2022-08-08 10:57:29', '2022-08-08 10:57:29'),
(127, 1, 148, 0, '2022-08-08 10:57:37', '2022-08-08 10:57:37'),
(128, 4, 148, 0, '2022-08-08 10:57:37', '2022-08-08 10:57:37'),
(129, 5, 148, 0, '2022-08-08 10:57:37', '2022-08-08 10:57:37'),
(130, 1, 149, 0, '2022-08-08 10:58:00', '2022-08-08 10:58:00'),
(131, 4, 149, 0, '2022-08-08 10:58:00', '2022-08-08 10:58:00'),
(132, 5, 149, 0, '2022-08-08 10:58:00', '2022-08-08 10:58:00'),
(133, 1, 150, 0, '2022-08-08 10:58:04', '2022-08-08 10:58:04'),
(134, 4, 150, 0, '2022-08-08 10:58:04', '2022-08-08 10:58:04'),
(135, 5, 150, 0, '2022-08-08 10:58:04', '2022-08-08 10:58:04'),
(142, 1, 152, 0, '2022-08-08 11:05:52', '2022-08-08 11:05:52'),
(143, 4, 152, 0, '2022-08-08 11:05:52', '2022-08-08 11:05:52'),
(144, 5, 152, 0, '2022-08-08 11:05:52', '2022-08-08 11:05:52'),
(145, 1, 153, 0, '2022-08-08 11:06:19', '2022-08-08 11:06:19'),
(146, 4, 153, 0, '2022-08-08 11:06:19', '2022-08-08 11:06:19'),
(147, 5, 153, 0, '2022-08-08 11:06:19', '2022-08-08 11:06:19'),
(148, 1, 151, 0, '2022-08-08 11:07:44', '2022-08-08 11:07:44'),
(149, 4, 151, 0, '2022-08-08 11:07:44', '2022-08-08 11:07:44'),
(150, 5, 151, 0, '2022-08-08 11:07:44', '2022-08-08 11:07:44'),
(151, 1, 154, 0, '2022-08-08 11:11:01', '2022-08-08 11:11:01'),
(152, 4, 154, 0, '2022-08-08 11:11:01', '2022-08-08 11:11:01'),
(153, 5, 154, 0, '2022-08-08 11:11:01', '2022-08-08 11:11:01'),
(178, 1, 145, 0.1, '2022-08-08 11:59:59', '2022-08-08 11:59:59'),
(179, 4, 145, 0, '2022-08-08 11:59:59', '2022-08-08 11:59:59'),
(180, 5, 145, 0.1, '2022-08-08 11:59:59', '2022-08-08 11:59:59'),
(181, 1, 146, 0, '2022-08-08 12:00:11', '2022-08-08 12:00:11'),
(182, 4, 146, 0, '2022-08-08 12:00:11', '2022-08-08 12:00:11'),
(183, 5, 146, 0, '2022-08-08 12:00:11', '2022-08-08 12:00:11'),
(184, 1, 144, 0, '2022-08-08 12:06:24', '2022-08-08 12:06:24'),
(185, 4, 144, 0, '2022-08-08 12:06:24', '2022-08-08 12:06:24'),
(186, 5, 144, 0, '2022-08-08 12:06:24', '2022-08-08 12:06:24'),
(187, 1, 142, 0, '2022-08-08 12:06:54', '2022-08-08 12:06:54'),
(188, 4, 142, 0, '2022-08-08 12:06:54', '2022-08-08 12:06:54'),
(189, 5, 142, 0, '2022-08-08 12:06:54', '2022-08-08 12:06:54'),
(190, 1, 143, 0, '2022-08-08 12:07:07', '2022-08-08 12:07:07'),
(191, 4, 143, 0, '2022-08-08 12:07:07', '2022-08-08 12:07:07'),
(192, 5, 143, 0, '2022-08-08 12:07:07', '2022-08-08 12:07:07'),
(202, 1, 141, 0, '2022-08-08 12:14:34', '2022-08-08 12:14:34'),
(203, 4, 141, 0, '2022-08-08 12:14:34', '2022-08-08 12:14:34'),
(204, 5, 141, 0, '2022-08-08 12:14:34', '2022-08-08 12:14:34'),
(217, 1, 175, 0, '2022-08-09 04:32:02', '2022-08-09 04:32:02'),
(218, 4, 175, 0, '2022-08-09 04:32:02', '2022-08-09 04:32:02'),
(219, 5, 175, 0, '2022-08-09 04:32:02', '2022-08-09 04:32:02'),
(232, 1, 172, 0, '2022-08-09 10:01:16', '2022-08-09 10:01:16'),
(233, 4, 172, 0, '2022-08-09 10:01:16', '2022-08-09 10:01:16'),
(234, 5, 172, 0, '2022-08-09 10:01:16', '2022-08-09 10:01:16'),
(235, 1, 171, 0, '2022-08-09 10:02:55', '2022-08-09 10:02:55'),
(236, 4, 171, 0, '2022-08-09 10:02:55', '2022-08-09 10:02:55'),
(237, 5, 171, 0, '2022-08-09 10:02:55', '2022-08-09 10:02:55'),
(238, 1, 170, 0, '2022-08-09 10:03:10', '2022-08-09 10:03:10'),
(239, 4, 170, 0, '2022-08-09 10:03:10', '2022-08-09 10:03:10'),
(240, 5, 170, 0, '2022-08-09 10:03:10', '2022-08-09 10:03:10'),
(241, 1, 169, 0, '2022-08-09 10:03:47', '2022-08-09 10:03:47'),
(242, 4, 169, 0, '2022-08-09 10:03:47', '2022-08-09 10:03:47'),
(243, 5, 169, 0, '2022-08-09 10:03:47', '2022-08-09 10:03:47'),
(250, 1, 174, 0, '2022-08-09 10:10:22', '2022-08-09 10:10:22'),
(251, 4, 174, 0, '2022-08-09 10:10:22', '2022-08-09 10:10:22'),
(252, 5, 174, 0, '2022-08-09 10:10:22', '2022-08-09 10:10:22'),
(253, 1, 173, 0, '2022-08-09 10:10:43', '2022-08-09 10:10:43'),
(254, 4, 173, 0, '2022-08-09 10:10:43', '2022-08-09 10:10:43'),
(255, 5, 173, 0, '2022-08-09 10:10:43', '2022-08-09 10:10:43'),
(259, 1, 168, 0, '2022-08-12 10:37:21', '2022-08-12 10:37:21'),
(260, 4, 168, 0, '2022-08-12 10:37:21', '2022-08-12 10:37:21'),
(261, 5, 168, 0, '2022-08-12 10:37:21', '2022-08-12 10:37:21'),
(265, 1, 176, 0, '2022-08-12 10:38:31', '2022-08-12 10:38:31'),
(266, 4, 176, 0, '2022-08-12 10:38:31', '2022-08-12 10:38:31'),
(267, 5, 176, 0, '2022-08-12 10:38:31', '2022-08-12 10:38:31'),
(271, 1, 177, 0, '2022-09-26 07:39:49', '2022-09-26 07:39:49'),
(272, 4, 177, 0, '2022-09-26 07:39:49', '2022-09-26 07:39:49'),
(273, 5, 177, 0, '2022-09-26 07:39:49', '2022-09-26 07:39:49'),
(292, 1, 1, 0, '2022-09-26 09:15:25', '2022-09-26 09:15:25'),
(293, 4, 1, 0, '2022-09-26 09:15:25', '2022-09-26 09:15:25'),
(294, 5, 1, 0, '2022-09-26 09:15:25', '2022-09-26 09:15:25'),
(295, 1, 139, 0, '2022-09-26 09:17:19', '2022-09-26 09:17:19'),
(296, 4, 139, 0, '2022-09-26 09:17:19', '2022-09-26 09:17:19'),
(297, 5, 139, 0, '2022-09-26 09:17:19', '2022-09-26 09:17:19'),
(298, 1, 135, 0, '2022-09-26 09:19:05', '2022-09-26 09:19:05'),
(299, 4, 135, 0, '2022-09-26 09:19:05', '2022-09-26 09:19:05'),
(300, 5, 135, 0, '2022-09-26 09:19:05', '2022-09-26 09:19:05'),
(313, 1, 178, 0, '2022-11-08 09:51:31', '2022-11-08 09:51:31'),
(314, 4, 178, 0, '2022-11-08 09:51:31', '2022-11-08 09:51:31'),
(315, 5, 178, 0, '2022-11-08 09:51:31', '2022-11-08 09:51:31'),
(316, 1, 179, 0, '2022-11-08 09:51:40', '2022-11-08 09:51:40'),
(317, 4, 179, 0, '2022-11-08 09:51:40', '2022-11-08 09:51:40'),
(318, 5, 179, 0, '2022-11-08 09:51:40', '2022-11-08 09:51:40'),
(319, 1, 180, 0, '2022-11-08 09:55:12', '2022-11-08 09:55:12'),
(320, 4, 180, 0, '2022-11-08 09:55:12', '2022-11-08 09:55:12'),
(321, 5, 180, 0, '2022-11-08 09:55:12', '2022-11-08 09:55:12'),
(322, 1, 181, 0, '2022-11-08 09:55:28', '2022-11-08 09:55:28'),
(323, 4, 181, 0, '2022-11-08 09:55:28', '2022-11-08 09:55:28'),
(324, 5, 181, 0, '2022-11-08 09:55:28', '2022-11-08 09:55:28'),
(325, 1, 182, 0, '2022-11-08 09:55:44', '2022-11-08 09:55:44'),
(326, 4, 182, 0, '2022-11-08 09:55:44', '2022-11-08 09:55:44'),
(327, 5, 182, 0, '2022-11-08 09:55:44', '2022-11-08 09:55:44'),
(328, 1, 183, 0, '2022-11-08 09:56:04', '2022-11-08 09:56:04'),
(329, 4, 183, 0, '2022-11-08 09:56:04', '2022-11-08 09:56:04'),
(330, 5, 183, 0, '2022-11-08 09:56:04', '2022-11-08 09:56:04'),
(331, 1, 184, 0, '2022-11-08 09:58:36', '2022-11-08 09:58:36'),
(332, 4, 184, 0, '2022-11-08 09:58:36', '2022-11-08 09:58:36'),
(333, 5, 184, 0, '2022-11-08 09:58:36', '2022-11-08 09:58:36'),
(334, 1, 185, 0, '2022-11-09 04:52:48', '2022-11-09 04:52:48'),
(335, 4, 185, 0, '2022-11-09 04:52:48', '2022-11-09 04:52:48'),
(336, 5, 185, 0, '2022-11-09 04:52:48', '2022-11-09 04:52:48'),
(337, 1, 186, 0, '2022-11-09 04:53:20', '2022-11-09 04:53:20'),
(338, 4, 186, 0, '2022-11-09 04:53:20', '2022-11-09 04:53:20'),
(339, 5, 186, 0, '2022-11-09 04:53:20', '2022-11-09 04:53:20'),
(340, 1, 187, 0, '2022-11-09 04:58:36', '2022-11-09 04:58:36'),
(341, 4, 187, 0, '2022-11-09 04:58:36', '2022-11-09 04:58:36'),
(342, 5, 187, 0, '2022-11-09 04:58:36', '2022-11-09 04:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `status` int(11) NOT NULL DEFAULT 1,
  `percentage` int(11) NOT NULL DEFAULT 10,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `name`, `code`, `limit`, `status`, `percentage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mina Samir', '1234', 750, 1, 10, '2022-08-03 16:27:21', '2022-08-03 16:54:11', '0000-00-00 00:00:00'),
(2, 'Atef Promo', 'Tefa', -1, 1, 10, '2022-08-03 16:36:15', '2022-08-03 16:54:22', '2022-08-03 16:54:22'),
(3, 'atef', 'tftf', -1, 1, 10, '2022-08-03 16:42:34', '2022-08-03 16:42:34', '0000-00-00 00:00:00'),
(4, 'Mina Samir', '1234ATEF', 30, 1, 10, '2022-08-03 16:48:43', '2022-08-03 16:48:43', '0000-00-00 00:00:00'),
(5, 'TEst', '123AS', 15, 1, 15, '2022-08-03 16:49:34', '2022-08-03 16:49:34', '0000-00-00 00:00:00'),
(6, '10', '122ASD', 300, 1, 30, '2022-08-03 16:50:01', '2022-08-03 16:50:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `dash_board_view` int(11) NOT NULL DEFAULT 0,
  `employees_view` int(11) NOT NULL DEFAULT 0,
  `add_employees` int(11) NOT NULL DEFAULT 0,
  `edit_employees` int(11) NOT NULL DEFAULT 0,
  `delete_employees` int(11) NOT NULL DEFAULT 0,
  `customers_view` int(11) NOT NULL DEFAULT 0,
  `customers_edit` int(11) NOT NULL DEFAULT 0,
  `suggestions_view` int(11) NOT NULL DEFAULT 0,
  `suggestions_edit` int(11) NOT NULL DEFAULT 0,
  `orders_view` int(11) NOT NULL DEFAULT 0,
  `orders_edit` int(11) NOT NULL DEFAULT 0,
  `cashir_edit` int(11) NOT NULL DEFAULT 0,
  `products_view` int(11) NOT NULL DEFAULT 0,
  `add_products` int(11) NOT NULL DEFAULT 0,
  `edit_products` int(11) NOT NULL DEFAULT 0,
  `delete_products` int(11) NOT NULL DEFAULT 0,
  `categories_view` int(11) NOT NULL DEFAULT 0,
  `add_categories` int(11) NOT NULL DEFAULT 0,
  `edit_categories` int(11) NOT NULL DEFAULT 0,
  `delete_categories` int(11) NOT NULL DEFAULT 0,
  `variations_view` int(11) NOT NULL DEFAULT 0,
  `add_variations` int(11) NOT NULL DEFAULT 0,
  `edit_variations` int(11) NOT NULL DEFAULT 0,
  `delete_variations` int(11) NOT NULL DEFAULT 0,
  `attributies_view` int(11) NOT NULL DEFAULT 0,
  `add_attributies` int(11) NOT NULL DEFAULT 0,
  `edit_attributies` int(11) NOT NULL DEFAULT 0,
  `delete_attributies` int(11) NOT NULL DEFAULT 0,
  `materials_view` int(11) NOT NULL DEFAULT 0,
  `add_materials` int(11) NOT NULL DEFAULT 0,
  `edit_materials` int(11) NOT NULL DEFAULT 0,
  `delete_materials` int(11) NOT NULL DEFAULT 0,
  `packages_view` int(11) NOT NULL DEFAULT 0,
  `add_package` int(11) NOT NULL DEFAULT 0,
  `edit_package` int(11) NOT NULL DEFAULT 0,
  `delete_package` int(11) NOT NULL DEFAULT 0,
  `view_reports` int(11) NOT NULL DEFAULT 0,
  `view_cities` int(11) NOT NULL DEFAULT 0,
  `add_city` int(11) NOT NULL DEFAULT 0,
  `edit_city` int(11) NOT NULL DEFAULT 0,
  `delete_city` int(11) NOT NULL DEFAULT 0,
  `view_areas` int(11) NOT NULL DEFAULT 0,
  `add_areas` int(11) NOT NULL DEFAULT 0,
  `edit_areas` int(11) NOT NULL DEFAULT 0,
  `delete_areas` int(11) NOT NULL DEFAULT 0,
  `view_branches` int(11) NOT NULL DEFAULT 0,
  `add_branch` int(11) NOT NULL DEFAULT 0,
  `edit_branch` int(11) NOT NULL DEFAULT 0,
  `delete_branch` int(11) NOT NULL DEFAULT 0,
  `view_ads` int(11) NOT NULL DEFAULT 0,
  `add_ad` int(11) NOT NULL DEFAULT 0,
  `edit_ad` int(11) NOT NULL DEFAULT 0,
  `delete_ad` int(11) NOT NULL DEFAULT 0,
  `view_permissions` int(11) NOT NULL DEFAULT 0,
  `add_permission` int(11) NOT NULL DEFAULT 0,
  `edit_permission` int(11) NOT NULL DEFAULT 0,
  `delete_permission` int(11) NOT NULL DEFAULT 0,
  `view_notifications` int(11) NOT NULL DEFAULT 0,
  `add_notifications` int(11) NOT NULL DEFAULT 0,
  `view_promo_codes` int(11) NOT NULL DEFAULT 0,
  `add_promo_code` int(11) NOT NULL DEFAULT 0,
  `edit_promo_code` int(11) NOT NULL DEFAULT 0,
  `delete_promo_code` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permission_id`, `dash_board_view`, `employees_view`, `add_employees`, `edit_employees`, `delete_employees`, `customers_view`, `customers_edit`, `suggestions_view`, `suggestions_edit`, `orders_view`, `orders_edit`, `cashir_edit`, `products_view`, `add_products`, `edit_products`, `delete_products`, `categories_view`, `add_categories`, `edit_categories`, `delete_categories`, `variations_view`, `add_variations`, `edit_variations`, `delete_variations`, `attributies_view`, `add_attributies`, `edit_attributies`, `delete_attributies`, `materials_view`, `add_materials`, `edit_materials`, `delete_materials`, `packages_view`, `add_package`, `edit_package`, `delete_package`, `view_reports`, `view_cities`, `add_city`, `edit_city`, `delete_city`, `view_areas`, `add_areas`, `edit_areas`, `delete_areas`, `view_branches`, `add_branch`, `edit_branch`, `delete_branch`, `view_ads`, `add_ad`, `edit_ad`, `delete_ad`, `view_permissions`, `add_permission`, `edit_permission`, `delete_permission`, `view_notifications`, `add_notifications`, `view_promo_codes`, `add_promo_code`, `edit_promo_code`, `delete_promo_code`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-08-29 10:25:06', '2022-08-29 10:25:06'),
(2, 2, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-29 10:25:06', '2022-08-29 10:25:06'),
(3, 3, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-29 10:25:06', '2022-08-29 10:25:06'),
(20, 20, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-09-01 13:42:24', '2022-09-01 13:42:24'),
(21, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-09-27 12:30:21', '2022-09-27 12:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'banner1.png', 135, NULL, NULL),
(2, 'banner2.png', 136, NULL, NULL),
(3, 'banner3.png', 137, NULL, NULL),
(4, 'banner4.png', 138, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name_ar`, `name_en`, `image`, `link`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'Facebook', 'Facebook', 'img_face.jpeg', 'https://www.facebook.com/ash.healthy.boxx', '2022-07-18 11:01:50', '2022-07-18 11:01:50', NULL, 1),
(2, 'Instgram', 'Instgram', 'img_insta.jpeg', 'https://www.instagram.com/ash.healthy.boxx', '2022-08-13 07:27:43', '2022-08-13 07:27:43', NULL, 1),
(3, 'Youtube', 'youtube', 'img_youtube.jpeg', 'https://www.youtube.com/channel/UCQ3lxWdfDCxwnDPv_RJ89rQ', '2022-08-13 07:27:43', '2022-08-13 07:27:43', NULL, 1),
(4, 'Whatsapp', 'Whatsapp', 'img_whats.jpeg', 'https://wa.me/+201008648691', '2022-08-13 07:28:21', '2022-08-13 07:28:21', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `phone_email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_contacted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `user_name`, `phone_email`, `subject`, `message`, `is_contacted`) VALUES
(14, 'Mohamed Tefa', 'mohamed@yahoo.com', 'Testing subject', 'messagee', 1),
(15, '', 'te@yahoo.com', '', 'te', 1),
(16, '', 'test@yahoo.com', '', 'meesssssss', 1),
(17, 'tsttt', 'test@yahoo.com', '', 'messagez', 0),
(18, 'te', 'te@yahoo.com', '', 'messa', 0),
(19, 'e', 'te@yahoo.com', '', 'tes', 0),
(20, 'e', 'te@yahoo.com', '', 'tes', 0),
(21, 'tt', 'te@yahoo.com', '', 'woooowwoooowwoooowwoooowwoooow', 1),
(22, 'testt', 'ema@yahoo.com', '', 'message', 0),
(23, 'tee', 'fd@yahoo.com', '', 'msg', 0),
(24, 'teest', 'test@yahoo.com', '', 't', 1),
(25, 'te', 'test@yahoo.com', '', 'ssss', 1),
(26, 'atef', 'atef@yahoo.com', '', 'tefa', 1),
(27, '', '', '', '', 1),
(28, '', 'Hi', '', 'Atef', 1),
(29, '', 'Gjg', '', 'Hhh', 1),
(30, '', '3yeu', '', 'Ehey', 1),
(31, '', '0112180538839', 'Goooo', 'Goood', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT -1,
  `salary` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `permission_id` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `image`, `password`, `national_id`, `position_id`, `branch_id`, `salary`, `status`, `permission_id`, `added_by`, `deleted_at`, `created_at`, `updated_at`, `remember_token`, `email`) VALUES
(1, 'Mr Ramy Elnaggar', '01234567890', 'User_82191.jpg', 'e10adc3949ba59abbe56e057f20f883e', '1234567', 1, -1, 0, 1, 1, 1, NULL, '2022-06-19 13:31:01', '2022-09-27 13:03:06', 'mxmiqtMfHAMQPFqBMgr8R4azvGSpnnwQFremVvaEqCsYod3h29BxTLK0qlHW', ''),
(12, 'Sara Bahaa', '011', 'User_11445.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, -1, 3600, 1, 1, 0, NULL, '2022-07-05 10:10:26', '2022-07-05 10:10:26', '', ''),
(13, 'Sondus Bahaa', '012', 'User_35725.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, -1, 3600, 1, 1, 0, '2022-08-01 13:56:41', '2022-07-05 10:11:18', '2022-08-01 13:56:41', '', ''),
(14, 'Magdy Mohamed', '013', 'User_61382.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, -1, 5000, 1, 1, 0, '2022-08-01 13:56:55', '2022-07-05 10:12:27', '2022-08-01 13:56:55', '', ''),
(15, 'Zyad Yasser', '014', 'User_35959.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, -1, 2500, 1, 3, 0, NULL, '2022-07-05 10:13:05', '2022-08-01 13:57:33', '', ''),
(16, 'Mohamed Dawood', '015', 'User_81621.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, -1, 2500, 1, 3, 0, NULL, '2022-07-05 10:13:41', '2022-08-01 13:58:15', '', ''),
(17, 'Tarek Mohamed', '016', 'User_68146.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, -1, 2500, 1, 2, 0, NULL, '2022-07-05 10:14:23', '2022-07-05 10:14:23', '', ''),
(18, 'Mohamed Elzawely', '017', 'User_39703.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 4, -1, 7000, 1, 2, 0, NULL, '2022-07-05 10:14:58', '2022-07-06 16:38:14', 'FkyhZCUI4TPYLSwzFJVfyw8ZnQa8FKpGQxOCeZOH5e1zzSNqKUwErumGN8Zc', ''),
(19, 'Yehia Abdulla', '017', 'User_88692.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 3, -1, 5500, 1, 2, 0, NULL, '2022-07-05 10:15:49', '2022-07-06 16:04:11', '', ''),
(20, 'Badr', '01150541649', 'User_81210.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 3, -1, 0, 1, 2, 0, NULL, '2022-07-05 16:50:04', '2022-07-05 16:50:04', 'oTTKheHTQuZTmQtb19WEeam15nwE33UIzN8mAZ1TN8ffEEBcTECUgGHFIbsQ', ''),
(21, 'Mohamed Shaban', '0121145 8557', 'User_23589.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 3, -1, 0, 1, 3, 0, NULL, '2022-07-05 16:50:46', '2022-07-05 16:50:46', '', ''),
(22, 'Elshi5 Mohamed', '01112331661', 'User_59227.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 3, -1, 0, 1, 3, 0, NULL, '2022-07-05 16:52:17', '2022-07-05 16:52:17', '', ''),
(23, 'Salah', '01158917741', 'User_85866.jpg', 'e10adc3949ba59abbe56e057f20f883e', '123456', 3, -1, 0, 1, 2, 0, NULL, '2022-07-05 16:52:50', '2022-07-06 16:29:54', '', ''),
(24, 'Test Account', '01530405000', 'User_42039.png', 'e10adc3949ba59abbe56e057f20f883e', '01530405000', 1, -1, 123455, 1, 1, 0, NULL, '2022-08-09 13:05:40', '2022-08-09 13:05:40', 'O1kLP3PyvM4DsoUQxSdAhYhy46CTvD7BAQJYnuv4R7DmxSBvzwywU50CKATi', ''),
(25, 'testggg', '12312', 'User_25800.jpg', '$2y$10$igfQbzL/YL5OrXG7vWMlFO7X3KtY8qkuL3ajKt/SqqZ2ikzfpfnIG', '12343423', 2, -1, 1230, 1, 1, 0, '2022-09-27 12:14:57', '2022-09-27 11:51:00', '2022-09-27 12:14:57', 'IKwBjeBDR1iI6A0H012bTcqmeHqlEJwCiYcgrOXGNVldseZPyJCLaOZ0qSnc', 'user@yahoo.com'),
(26, 'King', '1111', NULL, '$2y$10$KvLFtUcL04mjj3/Du4VlT.z6Oy0ye94chEeXVIf4NoW0pWNEBtOme', NULL, NULL, -1, NULL, 1, NULL, NULL, NULL, '2022-12-11 12:13:03', '2022-12-11 12:13:03', NULL, 'hassan@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `lat` double DEFAULT 0,
  `lng` double NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `area_id`, `lat`, `lng`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-05 12:29:09', '2022-07-05 12:29:09', NULL),
(2, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-05 17:46:42', '2022-07-05 17:46:42', NULL),
(3, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-05 17:49:35', '2022-07-05 17:49:35', NULL),
(4, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-05 18:13:39', '2022-07-05 18:13:39', NULL),
(5, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-05 18:32:55', '2022-07-05 18:32:55', NULL),
(6, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-05 18:33:49', '2022-07-05 18:33:49', NULL),
(7, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 06:35:01', '2022-07-06 06:35:01', NULL),
(8, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 06:37:30', '2022-07-06 06:37:30', NULL),
(9, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 06:38:11', '2022-07-06 06:38:11', NULL),
(10, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 06:38:47', '2022-07-06 06:38:47', NULL),
(11, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 06:39:44', '2022-07-06 06:39:44', NULL),
(12, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 06:40:36', '2022-07-06 06:40:36', NULL),
(13, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 06:51:30', '2022-07-06 06:51:30', NULL),
(14, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 06:52:25', '2022-07-06 06:52:25', NULL),
(15, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 07:08:50', '2022-07-06 07:08:50', NULL),
(16, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 07:57:24', '2022-07-06 07:57:24', NULL),
(17, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 08:07:07', '2022-07-06 08:07:07', NULL),
(18, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 08:18:29', '2022-07-06 08:18:29', NULL),
(19, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 08:24:09', '2022-07-06 08:24:09', NULL),
(20, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-06 08:27:51', '2022-07-06 08:27:51', NULL),
(21, 2, 2, 0, 0, 'زهرراء المعادي كمبوند اشجار دارنا', '2022-07-07 09:19:09', '2022-07-07 09:19:09', NULL),
(22, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-07 09:22:02', '2022-07-07 09:22:02', NULL),
(23, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-07 09:23:11', '2022-07-07 09:23:11', NULL),
(24, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-16 02:40:19', '2022-07-16 02:40:19', NULL),
(25, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-16 02:41:45', '2022-07-16 02:41:45', NULL),
(26, 1, 1, 0, 0, '3 been algnayen fe algnena', '2022-07-31 05:12:54', '2022-07-31 05:12:54', NULL),
(27, 1, 2, 0, 0, 'at naser city address', '2022-07-31 05:20:05', '2022-07-31 05:20:05', NULL),
(28, 1, 2, 0, 0, 'at naser city address', '2022-07-31 05:24:52', '2022-07-31 05:24:52', NULL),
(29, 1, 2, 0, 0, 'at naser city address', '2022-07-31 05:31:02', '2022-07-31 05:31:02', NULL),
(30, 1, 2, 0, 0, 'at naser city address', '2022-07-31 05:32:55', '2022-07-31 05:32:55', NULL),
(31, 1, 2, 0, 0, 'at naser city address', '2022-07-31 05:34:04', '2022-07-31 05:34:04', NULL),
(32, 4, 1, 0, 0, 'abasya fe algnena gnayen', '2022-07-31 13:23:04', '2022-07-31 13:23:04', NULL),
(33, 1, 2, 0, 0, 'at naser city address', '2022-08-02 01:52:39', '2022-08-02 01:52:39', NULL),
(34, 1, 2, 0, 0, 'at naser city address', '2022-08-02 01:53:21', '2022-08-02 01:53:21', NULL),
(35, 1, 2, 0, 0, 'at naser city address', '2022-08-02 01:54:00', '2022-08-02 01:54:00', NULL),
(36, 1, 2, 0, 0, 'at naser city address', '2022-08-02 01:54:30', '2022-08-02 01:54:30', NULL),
(37, 1, 2, 0, 0, 'at naser city address', '2022-08-02 01:56:44', '2022-08-02 01:56:44', NULL),
(38, 1, 2, 0, 0, 'at naser city address', '2022-08-02 02:30:16', '2022-08-02 02:30:16', NULL),
(39, 1, 2, 0, 0, 'at naser city address', '2022-08-02 02:32:03', '2022-08-02 02:32:03', NULL),
(40, 1, 2, 0, 0, 'at naser city address', '2022-08-02 02:50:56', '2022-08-02 02:50:56', NULL),
(41, 1, 2, 0, 0, 'at naser city address', '2022-08-02 02:51:13', '2022-08-02 02:51:13', NULL),
(42, 1, 2, 0, 0, 'at naser city address', '2022-08-02 03:37:44', '2022-08-02 03:37:44', NULL),
(43, 1, 2, 0, 0, 'at naser city address', '2022-08-02 03:39:32', '2022-08-02 03:39:32', NULL),
(44, 1, 2, 0, 0, 'at naser city address', '2022-08-02 03:40:01', '2022-08-02 03:40:01', NULL),
(45, 1, 2, 0, 0, 'at naser city address', '2022-08-02 03:40:48', '2022-08-02 03:40:48', NULL),
(46, 1, 2, 0, 0, 'at naser city address', '2022-08-02 03:42:20', '2022-08-02 03:42:20', NULL),
(47, 1, 2, 0, 0, 'at naser city address', '2022-08-02 03:42:27', '2022-08-02 03:42:27', NULL),
(48, 1, 2, 0, 0, 'at naser city address', '2022-08-02 03:43:17', '2022-08-02 03:43:17', NULL),
(49, 1, 2, 0, 0, 'at naser city address', '2022-08-02 06:24:44', '2022-08-02 06:24:44', NULL),
(50, 1, 2, 0, 0, 'at naser city address', '2022-08-02 06:44:23', '2022-08-02 06:44:23', NULL),
(51, 1, 2, 0, 0, 'at naser city address', '2022-08-02 06:47:49', '2022-08-02 06:47:49', NULL),
(52, 1, 2, 0, 0, 'at naser city address', '2022-08-02 06:56:49', '2022-08-02 06:56:49', NULL),
(53, 1, 2, 0, 0, 'at naser city address', '2022-08-02 07:40:53', '2022-08-02 07:40:53', NULL),
(54, 1, 2, 0, 0, 'at naser city address', '2022-08-02 09:20:49', '2022-08-02 09:20:49', NULL),
(55, 6, 3, 0, 0, 'vvilla 88 maadii', '2022-08-02 09:23:53', '2022-08-02 09:23:53', NULL),
(56, 8, 2, 0, 0, 'address', '2022-08-02 09:28:18', '2022-08-02 09:28:18', NULL),
(57, 9, 2, 0, 0, 'address', '2022-08-02 09:29:21', '2022-08-02 09:29:21', NULL),
(58, 10, 2, 0, 0, '60 makrram ebid', '2022-08-02 09:42:23', '2022-08-02 09:42:23', NULL),
(59, 11, 1, 0, 0, '700 abaysyaaa', '2022-08-02 09:44:06', '2022-08-02 09:44:06', NULL),
(60, 12, 1, 0, 0, 'abasyaa', '2022-08-02 09:44:47', '2022-08-02 09:44:47', NULL),
(61, 1, 2, 0, 0, 'at naser city address', '2022-08-02 09:46:07', '2022-08-02 09:46:07', NULL),
(62, 1, 2, 0, 0, 'at naser city address', '2022-08-02 09:47:45', '2022-08-02 09:47:45', NULL),
(63, 1, 2, 0, 0, 'at naser city address', '2022-08-03 03:14:51', '2022-08-03 03:14:51', NULL),
(64, 1, 2, 0, 0, 'at naser city address', '2022-08-03 03:32:51', '2022-08-03 03:32:51', NULL),
(65, 5, 1, 0, 0, 'hiiii', '2022-08-03 03:46:19', '2022-08-03 03:46:19', NULL),
(66, 13, 1, 0, 0, 'vilaaaaaa 1', '2022-08-03 07:04:55', '2022-08-03 07:04:55', NULL),
(67, 13, 1, 0, 0, 'vilaaaaaa 1', '2022-08-03 07:05:53', '2022-08-03 07:05:53', NULL),
(68, 13, 1, 0, 0, 'vilaaaaaa 1', '2022-08-03 07:07:28', '2022-08-03 07:07:28', NULL),
(69, 13, 1, 0, 0, 'vilaaaaaa 1', '2022-08-03 07:08:44', '2022-08-03 07:08:44', NULL),
(70, 1, 0, 0, 0, 'العباسيه ميدان التحرير', '2022-08-03 10:51:44', '2022-08-03 10:51:44', NULL),
(71, 1, 2, 0, 0, 'العباسيه القاهره اليوم', '2022-08-03 10:52:03', '2022-08-03 10:52:03', NULL),
(72, 1, 2, 0, 0, 'العباسيه القاهره اليوم', '2022-08-07 09:16:15', '2022-08-07 09:16:15', NULL),
(73, 16, 1, 0, 0, 'my address', '2022-08-07 09:27:12', '2022-08-07 09:27:12', NULL),
(74, 1, 2, 0, 0, 'العباسيه القاهره اليوم', '2022-08-09 04:57:46', '2022-08-09 04:57:46', NULL),
(75, 18, 1, 0, 0, 'details', '2022-08-13 02:05:45', '2022-08-13 02:05:45', NULL),
(76, 19, 1, 0, 0, '33 naser city awel makram first floor flat 5', '2022-08-14 09:37:06', '2022-08-14 09:37:06', NULL),
(77, 20, 2, 0, 0, 'oki', '2022-08-14 22:15:47', '2022-08-14 22:15:47', NULL),
(78, 21, 1, 0, 0, '33 Abd Al Azim Al Gholami, Al Manteqah as Sadesah, Nasr City, Cairo Governorate 11765, Egypt', '2022-09-02 09:34:14', '2022-09-02 09:34:14', NULL),
(79, 23, 1, 0, 0, '33 Sabel ElKhazendara', '2022-10-16 09:03:23', '2022-10-16 09:03:23', NULL),
(80, 5, 4, 0, 0, 'The first time you have a chance at the top is the second one you get', '2022-11-15 10:24:19', '2022-11-15 10:24:19', NULL),
(81, 5, 1, 0, 0, 'I don’t know if you know this but', '2022-11-15 10:28:50', '2022-11-15 10:28:50', NULL),
(82, 5, 2, 0, 0, 'near Mac', '2022-11-28 03:00:18', '2022-11-28 03:00:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_packages`
--

CREATE TABLE `user_packages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `total_price` double NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_packages`
--

INSERT INTO `user_packages` (`id`, `user_id`, `package_id`, `discount`, `total_price`, `created_at`, `updated_at`) VALUES
(17, 10, 3, 0, 8701, '2022-08-02 18:42:23', '2022-08-02 18:42:23'),
(18, 12, 6, 0, 1808, '2022-08-02 18:44:47', '2022-08-02 18:44:47'),
(19, 5, 1, 0, 2400, '2022-08-03 09:56:49', '2022-08-03 09:56:49'),
(20, 5, 2, 0, 5400, '2022-08-03 10:01:53', '2022-08-03 10:01:53'),
(21, 1, 3, 0, 8701, '2022-08-03 12:32:51', '2022-08-03 12:32:51'),
(22, 13, 2, 0, 6102, '2022-08-03 16:05:53', '2022-08-03 16:05:53'),
(23, 14, 4, 0, 600, '2022-08-03 18:21:38', '2022-08-03 18:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `name_en`, `name_ar`, `status`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Color', 'Color', 1, 1, '2022-07-05 10:28:26', '2022-07-05 10:28:26', NULL),
(2, 'Size', 'Size', 1, 1, '2022-07-05 10:29:16', '2022-07-05 10:29:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_attributes`
--
ALTER TABLE `cart_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites_products`
--
ALTER TABLE `favourites_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_histories`
--
ALTER TABLE `material_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_category_limits`
--
ALTER TABLE `package_category_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_offers`
--
ALTER TABLE `products_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_materials`
--
ALTER TABLE `product_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_packages`
--
ALTER TABLE `user_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `cart_attributes`
--
ALTER TABLE `cart_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `favourites_products`
--
ALTER TABLE `favourites_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `material_histories`
--
ALTER TABLE `material_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_category_limits`
--
ALTER TABLE `package_category_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `products_offers`
--
ALTER TABLE `products_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_materials`
--
ALTER TABLE `product_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user_packages`
--
ALTER TABLE `user_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
