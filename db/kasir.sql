-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql-db:3306
-- Waktu pembuatan: 22 Feb 2022 pada 12.38
-- Versi server: 5.7.36
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kind_products`
--

CREATE TABLE `kind_products` (
  `kind_id` int(11) NOT NULL,
  `kind_name` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kind_products`
--

INSERT INTO `kind_products` (`kind_id`, `kind_name`, `created_at`, `updated_at`) VALUES
(1, 'bahan sembako', '2022-02-14 18:20:23', '2022-02-14 18:20:23'),
(2, 'makanan ringan', '2022-02-14 18:20:23', '2022-02-14 18:20:23'),
(3, 'minuman', '2022-02-14 18:20:23', '2022-02-14 18:20:23'),
(4, 'rokok', '2022-02-14 18:20:23', '2022-02-14 18:20:23'),
(5, 'obat-obatan', '2022-02-14 18:20:23', '2022-02-14 18:20:23'),
(6, 'alat tulis', '2022-02-14 18:20:23', '2022-02-14 18:20:23'),
(7, 'lain-lain', '2022-02-14 18:20:23', '2022-02-14 18:20:23'),
(8, 'makeup', '2022-02-17 06:21:21', '2022-02-17 06:21:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(225) NOT NULL,
  `member_email` varchar(225) NOT NULL,
  `member_telephone` varchar(225) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`member_id`, `member_name`, `member_email`, `member_telephone`, `discount`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'sasa', 'sasa@gmail.com', '628965225245', 0, 1, '2022-02-14 18:20:24', '2022-02-22 07:24:49'),
(2, 'Tania', 'Tania@gmail.com', '087541256789', 0, 1, '2022-02-22 12:02:23', '2022-02-22 07:24:38'),
(3, 'Nabila', 'Nabil@gmail.com', '085432156819', 0, 1, '2022-02-22 12:03:29', '2022-02-22 07:24:27'),
(4, 'Marcel', 'Marcel@gmail.com', '081225416226', 0, 1, '2022-02-22 12:04:11', '2022-02-22 07:24:01'),
(5, 'Marcel', 'Marcel@gmail.com', '081225416287', 0, 1, '2022-02-22 12:04:13', '2022-02-22 07:23:42'),
(6, 'dilan', 'dilan@gmail.com', '083216739086', 0, 1, '2022-02-22 12:04:42', '2022-02-22 07:23:24'),
(7, 'Nia', 'Nia@gmail.com', '087654321972', 0, 1, '2022-02-22 12:05:07', '2022-02-22 07:23:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merchants`
--

CREATE TABLE `merchants` (
  `merchant_id` int(11) NOT NULL,
  `merchant_name` varchar(225) NOT NULL,
  `merchant_telephone` varchar(225) DEFAULT NULL,
  `merchant_address` varchar(225) DEFAULT NULL,
  `merchant_description` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `merchants`
--

INSERT INTO `merchants` (`merchant_id`, `merchant_name`, `merchant_telephone`, `merchant_address`, `merchant_description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'The angels', '083655262722', 'Bandung', 'Maju terus pantang mundur', 1, '2022-02-14 18:20:25', '2022-02-14 18:20:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permisions`
--

CREATE TABLE `permisions` (
  `permision_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `create` tinyint(1) NOT NULL DEFAULT '0',
  `update` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `permisions`
--

INSERT INTO `permisions` (`permision_id`, `user_id`, `read`, `create`, `update`, `delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, '2022-02-14 18:20:25', '2022-02-14 18:20:25'),
(2, 2, 1, 0, 0, 0, '2022-02-14 18:20:25', '2022-02-14 18:20:25'),
(3, 3, 1, 1, 0, 0, '2022-02-14 18:20:25', '2022-02-14 18:20:25'),
(4, 4, 1, 0, 0, 0, '2022-02-15 16:25:21', '2022-02-15 16:25:21'),
(15, 15, 1, 0, 0, 0, '2022-02-22 11:47:13', '2022-02-22 11:47:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20210107020548, 'KindProduct', '2022-02-14 19:17:32', '2022-02-14 19:17:32', 0),
(20210109004026, 'Unit', '2022-02-14 19:17:32', '2022-02-14 19:17:33', 0),
(20210109004034, 'Role', '2022-02-14 19:17:33', '2022-02-14 19:17:33', 0),
(20210520092510, 'User', '2022-02-14 19:17:33', '2022-02-14 19:17:33', 0),
(20210608173202, 'Permision', '2022-02-14 19:17:33', '2022-02-14 19:17:34', 0),
(20210623035823, 'Product', '2022-02-14 19:17:34', '2022-02-14 19:17:34', 0),
(20220106025158, 'Member', '2022-02-14 19:17:34', '2022-02-14 19:17:34', 0),
(20220107185113, 'Transaction', '2022-02-14 19:17:34', '2022-02-14 19:17:35', 0),
(20220107185446, 'Merchant', '2022-02-14 19:17:35', '2022-02-14 19:17:35', 0),
(20220211164241, 'Token', '2022-02-14 19:17:35', '2022-02-14 19:17:35', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `kind_id` int(11) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `purchase_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `unit` varchar(225) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_image` varchar(225) DEFAULT NULL,
  `is_promo` tinyint(1) NOT NULL DEFAULT '0',
  `start_promo` timestamp NULL DEFAULT NULL,
  `end_promo` timestamp NULL DEFAULT NULL,
  `promo_type` varchar(255) DEFAULT NULL,
  `piece` int(11) DEFAULT NULL,
  `end_price` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `barcode`, `kind_id`, `product_name`, `purchase_price`, `selling_price`, `unit`, `product_qty`, `product_image`, `is_promo`, `start_promo`, `end_promo`, `promo_type`, `piece`, `end_price`, `is_active`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '8990333811317', 2, 'choco-pie', 3000, 5000, 'pcs', 99, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2022-02-15 15:52:39', '2022-02-15 15:52:39'),
(2, '8991001121400', 2, 'Silverqueen', 10000, 15000, 'pcs', 90, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:18:06', '2022-02-17 06:18:06'),
(3, '8998899400341', 7, 'baygon', 15000, 17000, 'pcs', 49, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:19:10', '2022-02-17 06:19:10'),
(4, '8992931005181', 7, 'tissu', 7000, 10000, 'pcs', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:20:13', '2022-02-17 06:20:13'),
(5, '2377916598494', 8, 'Kapas', 4000, 6000, 'pcs', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:22:00', '2022-02-17 06:22:00'),
(6, '8995757000835', 6, 'buku tulis', 5000, 8000, 'pcs', 43, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:23:00', '2022-02-17 06:23:00'),
(7, '8994993012985', 7, 'hand sanitizer', 8000, 12000, 'pcs', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:24:25', '2022-02-17 06:24:25'),
(8, '4260585870764', 8, 'parfum miniso', 45000, 70000, 'karton', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:25:51', '2022-02-17 06:25:51'),
(9, '8993417440922', 1, 'masker rambut', 5000, 8000, 'pcs', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:26:33', '2022-02-17 06:26:33'),
(10, '8993417450044', 8, 'vitamin rambut sasha', 5000, 7000, 'pcs', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:27:37', '2022-02-17 06:27:37'),
(11, '8858520379647', 7, 'Hand body alpha arbutin', 80000, 120000, 'pcs', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:28:36', '2022-02-17 06:28:36'),
(12, '089686723052', 2, 'Chiki ball', 5000, 7000, 'pcs', 98, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:29:37', '2022-02-17 06:29:37'),
(13, '089686067002', 2, 'pop mie pedes dower', 3000, 5500, 'pcs', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:30:20', '2022-02-17 06:30:20'),
(14, '8997009510116', 3, 'UC 1000', 8000, 10000, 'liter', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:32:36', '2022-02-17 06:32:36'),
(15, '8998009040023', 3, 'Teh Kotak', 3000, 5500, 'liter', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:33:34', '2022-02-17 06:33:34'),
(16, '4800361002851', 2, 'Koko krunch', 11000, 18000, 'pcs', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:34:16', '2022-02-17 06:34:16'),
(17, '8993027121600', 2, 'Happy tos', 8000, 11000, 'pcs', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:34:54', '2022-02-17 06:34:54'),
(18, '8999999000066', 2, 'Chiki taro rumput laut', 7000, 10000, 'pcs', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:35:28', '2022-02-17 06:35:28'),
(19, '8992761136031', 3, 'Sprite lemon', 7000, 11000, 'liter', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:36:26', '2022-02-17 06:36:26'),
(20, '8997035563544', 3, 'Pocary ', 5000, 7500, 'liter', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:37:04', '2022-02-17 06:37:04'),
(21, '8992761002015', 3, 'Coca cola', 7000, 10000, 'liter', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:37:34', '2022-02-17 06:37:34'),
(22, '8992907953270', 1, 'Roti sari Roti', 7000, 10000, 'pcs', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:38:08', '2022-02-17 06:38:08'),
(23, '8991002115477', 1, 'Kopi hitam', 6000, 8000, 'pcs', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:38:39', '2022-02-17 06:38:39'),
(24, '8992112046125', 5, 'decolsin', 2000, 5000, 'pcs', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:50:32', '2022-02-17 06:50:32'),
(25, '8993498210230', 5, 'antimo', 2000, 5000, 'pcs', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:51:24', '2022-02-17 06:51:24'),
(26, '8991038775416', 7, 'cotton bud', 5000, 7000, 'pcs', 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:52:01', '2022-02-17 06:52:01'),
(27, '8993014730839', 3, 'Madurasa', 15000, 21000, 'pcs', 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:54:03', '2022-02-17 06:54:03'),
(28, '8992946521829', 7, 'Sabun Shinzui', 10000, 15000, 'pcs', 5, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:54:50', '2022-02-17 06:54:50'),
(29, '8998866107471', 7, 'Shampoo zinc', 7000, 10000, 'pcs', 10, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 06:55:31', '2022-02-17 06:55:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-02-14 18:20:24', '2022-02-14 18:20:24'),
(2, 'seller', '2022-02-14 18:20:24', '2022-02-14 18:20:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokens`
--

CREATE TABLE `tokens` (
  `token_id` int(11) NOT NULL,
  `email` varchar(225) DEFAULT NULL,
  `token` varchar(225) DEFAULT NULL,
  `expired` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tokens`
--

INSERT INTO `tokens` (`token_id`, `email`, `token`, `expired`, `created_at`, `updated_at`) VALUES
(1, 'yuliantilia863@gmail.com', 'H%2Bh5cVlieVIUHgDwvEq%2BhBAt%2FsVPmIDhbdmr83Yw8UKoSaYUkNt60gepxow6tUcKQWIxLad5WiJddC3Ong2KUA%3D%3D', 1645189901, '2022-02-18 13:11:41', '2022-02-18 13:11:41'),
(2, 'yuliantilia863@gmail.com', 'o2oPfEtzkyIIcFyR0%2FuvZ%2B%2BSb7cH71XzLpLLZNi15LZGLJnW5sv1JthwcENSrTaPukBzXGhKBPxBNES99pjkVw%3D%3D', 1645190183, '2022-02-18 13:16:23', '2022-02-18 13:16:23'),
(3, 'yuliantilia863@gmail.com', 'tMsq6S4r3tVtyobbZQNjDkN7umIqtoWRaO%2F0E1kThOADAjVpfkAaxXzGsorfHszh6EUduhatyFW1sy8j29vQGg%3D%3D', 1645190380, '2022-02-18 13:19:40', '2022-02-18 13:19:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `transaction_code` varchar(225) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_code`, `member_id`, `product_id`, `product_name`, `price`, `qty`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'TR202202181PIO', NULL, 6, 'buku tulis', 8000, 2, 1, '2022-02-18 12:15:44', '2022-02-18 12:15:44'),
(2, 'TR202202181JYO', NULL, 6, 'buku tulis', 8000, 5, 1, '2022-02-18 12:17:37', '2022-02-18 12:17:37'),
(3, 'TR202202181YYJ', NULL, 12, 'Chiki ball', 7000, 1, 1, '2022-02-18 01:11:59', '2022-02-18 01:11:59'),
(4, 'TR202202181YYJ', NULL, 1, 'choco-pie', 5000, 1, 1, '2022-02-18 01:11:59', '2022-02-18 01:11:59'),
(5, 'TR202202181YYJ', NULL, 2, 'Silverqueen', 15000, 10, 1, '2022-02-18 01:11:59', '2022-02-18 01:11:59'),
(6, 'TR202202181HIG', NULL, 12, 'Chiki ball', 7000, 1, 1, '2022-02-18 09:59:31', '2022-02-18 09:59:31'),
(7, 'TR202202191VKV', NULL, 3, 'baygon', 17000, 1, 1, '2022-02-19 01:45:40', '2022-02-19 01:45:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `units`
--

CREATE TABLE `units` (
  `unit_id` int(11) NOT NULL,
  `unit` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `units`
--

INSERT INTO `units` (`unit_id`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'pcs', '2022-02-14 18:20:24', '2022-02-14 18:20:24'),
(2, 'karton', '2022-02-14 18:20:24', '2022-02-14 18:20:24'),
(3, 'liter', '2022-02-14 18:20:24', '2022-02-14 18:20:24'),
(4, 'kg', '2022-02-14 18:20:24', '2022-02-14 18:20:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token_login` text,
  `gender` varchar(225) DEFAULT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `avatar` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`, `token_login`, `gender`, `telephone`, `avatar`, `address`, `is_active`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@email.com', '$2y$10$RrrpAJIvMvX2Bkz5O4FCIO863yu8AGfBQuT8jHYUa2vHTWBTyZ2Uy', 'i5pd5p0dxrkkjgwqhhmqq3yrkfc3djkhgggul2d8eiblmb5pwovq07eqepmk2rfb', NULL, NULL, NULL, 'jakarta', 1, 'admin', '2022-02-14 18:20:25', '2022-02-14 18:20:25'),
(2, 'rere', 'rere@email.com', '$2y$10$xgE2R0bjPUQVdm.PawBXHeOa9SP/Zq1c18OB1H7ctAf03onggveBu', NULL, NULL, NULL, NULL, 'bandung', 1, 'seller', '2022-02-14 18:20:25', '2022-02-14 18:20:25'),
(3, 'user seller', 'seller@email.com', '$2y$10$Vt47pJdiRq.9GzaTp438xunLkZz4ROzHqEGT1UN.QR4j5ahcQRWAq', NULL, NULL, NULL, NULL, 'surabaya', 1, 'seller', '2022-02-14 18:20:25', '2022-02-14 18:20:25'),
(4, 'laresa', 'laresa@gmail.com', '$2y$10$yw5.83mz4svb2YawrphAje32yQ1qmMVGBPhZhNTC6gnrRziO5wgEm', NULL, NULL, NULL, NULL, NULL, 1, 'seller', '2022-02-15 16:25:21', '2022-02-15 16:25:21'),
(9, 'lala', 'lala@gmail.com', '$2y$10$PVlLK/O01sZmZYhtZj1XtONqAlnWY9tsEcCwyrtXVMxX15fqU3Uia', NULL, NULL, NULL, NULL, NULL, 0, 'seller', '2022-02-16 17:45:04', '2022-02-16 17:45:04'),
(15, 'rianti', 'laresarianti23@gmail.com', '$2y$10$zVmD/M2gtI.iXTESdV.ZEOX99KsB5h0Pep3z65oaejbsmN5MSncLW', 'nsl9zdss0j7vibr03bpxb9gm70y2sv3oyd7jisusq47eqsib87pd45yddcbdu3ac9jhy58wdigbjx4tbobeip8dlngf6wdih0fd8dlvp1gor89ebapq845ujd3un0nkcrcdi4iuxr98kf2q9ihpfoctpr81lnciqnxcckdgjlisoiimjvznt8jfi0c2brmsgd2b6jo5yb5cmopq7tz70p0q2caqd5mh9z4737p2kkgdrez9i0cuvykickcb14fej80xulj6uj2uqnwxbi4gpgim2ul5cmbyacyq2i9c9qg4tdqau313a0q9oplhgvgca4gkxd7lx9gez1y3ycqxsir479y3exa2kvxm0pgzmkrft88izj2iy45dvwepkqfd2q45dmst6d0f9e7x5zoz9benkt6cq1g5v3vkw6kso0v3tdjcg0qe3ng9w5cc7al6tlyiesbcftfka8af9sqe428k9ozkdzq9ndz99n5dk711foy4kiryazl111qmfpvcj5o67pxzulsoz31yzb7fdrtkfvobryzy0spk8z3sbqdyv0x4xlxdfvqsfu2eg3uuy6ozfjj6teqgi8wfxg7yl5cb3068ijlxaajovmza364dw3hu6w4t28bsrduqafc6opwvwtmvu6els8q8yp817aj7e3fnma03mywekva32i1u4nik6xihin9dza733bpr3aai3w9u0am0e7vjc0h6buqtg7eounrmkqkt7cc2w8c032brueb5f8yidgt78wri4h962tfyjpxw9w7p5z512jmjyj88akciwpwj93sjpib6jspqyg2bhgd4976121vmbhcrh7bvhqwljs9cbji1hu880usf5visvbs0kdoauhz02sw3utc5tdchuo4jsh4f4neu1f494c4g1xbmjqipmdp68fgo4716ymgfi96v3odbt0mzjdwc98eh2lsbi3oys', NULL, NULL, NULL, NULL, 1, 'seller', '2022-02-22 11:47:13', '2022-02-22 11:47:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kind_products`
--
ALTER TABLE `kind_products`
  ADD PRIMARY KEY (`kind_id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indeks untuk tabel `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`merchant_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indeks untuk tabel `permisions`
--
ALTER TABLE `permisions`
  ADD PRIMARY KEY (`permision_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `kind_id` (`kind_id`),
  ADD KEY `unit` (`unit`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indeks untuk tabel `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `member_id` (`member_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`),
  ADD UNIQUE KEY `unit` (`unit`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`,`email`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kind_products`
--
ALTER TABLE `kind_products`
  MODIFY `kind_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `merchants`
--
ALTER TABLE `merchants`
  MODIFY `merchant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `permisions`
--
ALTER TABLE `permisions`
  MODIFY `permision_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `merchants`
--
ALTER TABLE `merchants`
  ADD CONSTRAINT `merchants_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `permisions`
--
ALTER TABLE `permisions`
  ADD CONSTRAINT `permisions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`kind_id`) REFERENCES `kind_products` (`kind_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`unit`) REFERENCES `units` (`unit`);

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
