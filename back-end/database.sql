-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2025 at 10:31 AM
-- Server version: 10.11.8-MariaDB-0ubuntu0.23.10.1
-- PHP Version: 8.2.10-2ubuntu2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mgd`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_1b6453892473a467d07372d45eb05abc2031647a', 'i:1;', 1749411295),
('laravel_cache_1b6453892473a467d07372d45eb05abc2031647a:timer', 'i:1749411295;', 1749411295),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1750670146),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1750670146;', 1750670146),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1750673336),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1750673336;', 1750673336),
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:21:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:9:\"view news\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create news\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update news\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete news\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:10:\"view users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:12:\"create users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"update users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:12:\"delete users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:10:\"view roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:12:\"create roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:12:\"update roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:12:\"delete roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:10:\"view posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:12:\"create posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:12:\"update posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:12:\"delete posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:16:\"view permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:18:\"create permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:18:\"update permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:18:\"delete permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"admin2\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"normal\";s:1:\"c\";s:3:\"web\";}}}', 1750759562);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varbinary(222) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0x41666768616e697374616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(2, 0x416c62616e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(3, 0x416c6765726961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(4, 0x416e646f727261, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(5, 0x416e676f6c61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(6, 0x416e746967756120616e642042617262756461, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(7, 0x417267656e74696e61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(8, 0x41726d656e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(9, 0x4175737472616c6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(10, 0x41757374726961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(11, 0x417a65726261696a616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(12, 0x426168616d6173, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(13, 0x4261687261696e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(14, 0x42616e676c6164657368, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(15, 0x4261726261646f73, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(16, 0x42656c61727573, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(17, 0x42656c6769756d, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(18, 0x42656c697a65, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(19, 0x42656e696e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(20, 0x42687574616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(21, 0x426f6c69766961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(22, 0x426f736e696120616e64204865727a65676f76696e61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(23, 0x426f747377616e61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(24, 0x4272617a696c, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(25, 0x4272756e6569, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(26, 0x42756c6761726961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(27, 0x4275726b696e61204661736f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(28, 0x427572756e6469, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(29, 0x4361626f205665726465, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(30, 0x43616d626f646961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(31, 0x43616d65726f6f6e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(32, 0x43616e616461, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(33, 0x43656e7472616c204166726963616e2052657075626c6963, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(34, 0x43686164, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(35, 0x4368696c65, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(36, 0x4368696e61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(37, 0x436f6c6f6d626961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(38, 0x436f6d6f726f73, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(39, 0x436f6e676f2028436f6e676f2d4272617a7a6176696c6c6529, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(40, 0x436f7374612052696361, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(41, 0x43726f61746961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(42, 0x43756261, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(43, 0x437970727573, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(44, 0x437a6563682052657075626c6963, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(45, 0x44656d6f6372617469632052657075626c6963206f662074686520436f6e676f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(46, 0x44656e6d61726b, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(47, 0x446a69626f757469, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(48, 0x446f6d696e696361, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(49, 0x446f6d696e6963616e2052657075626c6963, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(50, 0x45637561646f72, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(51, 0x4567797074, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(52, 0x456c2053616c7661646f72, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(53, 0x45717561746f7269616c204775696e6561, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(54, 0x45726974726561, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(55, 0x4573746f6e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(56, 0x4573776174696e69, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(57, 0x457468696f706961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(58, 0x46696a69, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(59, 0x46696e6c616e64, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(60, 0x4672616e6365, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(61, 0x4761626f6e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(62, 0x47616d626961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(63, 0x47656f72676961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(64, 0x4765726d616e79, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(65, 0x4768616e61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(66, 0x477265656365, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(67, 0x4772656e616461, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(68, 0x47756174656d616c61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(69, 0x4775696e6561, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(70, 0x4775696e65612d426973736175, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(71, 0x477579616e61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(72, 0x4861697469, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(73, 0x486f6e6475726173, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(74, 0x48756e67617279, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(75, 0x4963656c616e64, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(76, 0x496e646961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(77, 0x496e646f6e65736961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(78, 0x4972616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(79, 0x49726171, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(80, 0x4972656c616e64, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(81, 0x49737261656c, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(82, 0x4974616c79, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(83, 0x49766f727920436f617374, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(84, 0x4a616d61696361, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(85, 0x4a6170616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(86, 0x4a6f7264616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(87, 0x4b617a616b687374616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(88, 0x4b656e7961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(89, 0x4b69726962617469, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(90, 0x4b7577616974, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(91, 0x4b797267797a7374616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(92, 0x4c616f73, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(93, 0x4c6174766961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(94, 0x4c6562616e6f6e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(95, 0x4c65736f74686f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(96, 0x4c696265726961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(97, 0x4c69627961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(98, 0x4c6965636874656e737465696e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(99, 0x4c69746875616e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(100, 0x4c7578656d626f757267, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(101, 0x4d616461676173636172, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(102, 0x4d616c617769, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(103, 0x4d616c6179736961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(104, 0x4d616c6469766573, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(105, 0x4d616c69, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(106, 0x4d616c7461, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(107, 0x4d61727368616c6c2049736c616e6473, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(108, 0x4d6175726974616e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(109, 0x4d6175726974697573, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(110, 0x4d657869636f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(111, 0x4d6963726f6e65736961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(112, 0x4d6f6c646f7661, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(113, 0x4d6f6e61636f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(114, 0x4d6f6e676f6c6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(115, 0x4d6f6e74656e6567726f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(116, 0x4d6f726f63636f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(117, 0x4d6f7a616d6269717565, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(118, 0x4d79616e6d6172, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(119, 0x4e616d69626961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(120, 0x4e61757275, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(121, 0x4e6570616c, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(122, 0x4e65746865726c616e6473, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(123, 0x4e6577205a65616c616e64, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(124, 0x4e6963617261677561, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(125, 0x4e69676572, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(126, 0x4e696765726961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(127, 0x4e6f727468204b6f726561, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(128, 0x4e6f727468204d616365646f6e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(129, 0x4e6f72776179, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(130, 0x4f6d616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(131, 0x50616b697374616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(132, 0x50616c6175, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(133, 0x50616c657374696e65, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(134, 0x50616e616d61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(135, 0x5061707561204e6577204775696e6561, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(136, 0x5061726167756179, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(137, 0x50657275, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(138, 0x5068696c697070696e6573, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(139, 0x506f6c616e64, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(140, 0x506f72747567616c, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(141, 0x5161746172, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(142, 0x526f6d616e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(143, 0x527573736961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(144, 0x5277616e6461, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(145, 0x5361696e74204b6974747320616e64204e65766973, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(146, 0x5361696e74204c75636961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(147, 0x5361696e742056696e63656e7420616e6420746865204772656e6164696e6573, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(148, 0x53616d6f61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(149, 0x53616e204d6172696e6f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(150, 0x53616f20546f6d6520616e64205072696e63697065, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(151, 0x536175646920417261626961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(152, 0x53656e6567616c, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(153, 0x536572626961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(154, 0x5365796368656c6c6573, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(155, 0x536965727261204c656f6e65, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(156, 0x53696e6761706f7265, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(157, 0x536c6f76616b6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(158, 0x536c6f76656e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(159, 0x536f6c6f6d6f6e2049736c616e6473, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(160, 0x536f6d616c6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(161, 0x536f75746820416672696361, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(162, 0x536f757468204b6f726561, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(163, 0x536f75746820537564616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(164, 0x537061696e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(165, 0x537269204c616e6b61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(166, 0x537564616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(167, 0x537572696e616d65, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(168, 0x53776564656e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(169, 0x537769747a65726c616e64, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(170, 0x5379726961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(171, 0x54616977616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(172, 0x54616a696b697374616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(173, 0x54616e7a616e6961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(174, 0x546861696c616e64, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(175, 0x54696d6f722d4c65737465, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(176, 0x546f676f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(177, 0x546f6e6761, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(178, 0x5472696e6964616420616e6420546f6261676f, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(179, 0x54756e69736961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(180, 0x5475726b6579, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(181, 0x5475726b6d656e697374616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(182, 0x547576616c75, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(183, 0x5567616e6461, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(184, 0x556b7261696e65, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(185, 0x556e69746564204172616220456d697261746573, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(186, 0x556e69746564204b696e67646f6d, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(187, 0x556e6974656420537461746573206f6620416d6572696361, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(188, 0x55727567756179, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(189, 0x557a62656b697374616e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(190, 0x56616e75617475, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(191, 0x5661746963616e2043697479, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(192, 0x56656e657a75656c61, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(193, 0x566965746e616d, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(194, 0x59656d656e, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(195, 0x5a616d626961, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL),
(196, 0x5a696d6261627765, '2025-04-09 10:32:12', '2025-04-09 10:32:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(222) NOT NULL,
  `description` longtext NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `name`, `image`, `description`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'معهد صناعي', 'Institute/images/01JYDVN7D5TAWKGWN48VMR887M.png', '<p dir=\"rtl\">جديد</p>', NULL, '2025-06-23 04:39:48', '2025-06-23 04:39:48'),
(2, 'on', 'Institute/images/01JYDZW9EJNVW7VYC7HYP16B2X.png', '<p>ln</p>', NULL, '2025-06-23 05:53:33', '2025-06-23 05:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `institute_majors`
--

CREATE TABLE `institute_majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institute_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institute_majors`
--

INSERT INTO `institute_majors` (`id`, `institute_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'اثار', '2025-06-23 04:40:09', '2025-06-23 04:40:09'),
(2, 2, 'هنمالاعن', '2025-06-23 05:53:45', '2025-06-23 05:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2025_06_01_101803_create_posts_table', 1),
(10, '2025_06_01_104622_create_news_table', 1),
(11, '2025_06_02_093521_create_news_post_table', 2),
(12, '2025_06_02_100917_change_title_and_content_columns_in_news_table', 3),
(13, '2025_06_02_123233_add_translated_columns_to_news_table', 3),
(14, '2025_06_08_170011_create_permission_tables', 4),
(15, '2025_06_15_071255_create_institutes_table', 5),
(16, '2025_06_15_071255_create_universities_table', 5),
(17, '2025_06_15_071255_create_university_majors_table', 5),
(18, '2025_06_15_073126_create_institute_majors_table', 5),
(19, '2025_06_23_070750_create_students_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `content_ar` longtext DEFAULT NULL,
  `content_en` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`, `images`, `title_ar`, `title_en`, `content_ar`, `content_en`) VALUES
(1, '2025-06-01 08:29:55', '2025-06-02 16:15:58', '[\"news-images\\/1 (3).png\",\"news-images\\/1 (3).png\",\"news-images\\/2.png\",\"news-images\\/3faf1c96-2f1d-4378-9767-a93646e590d9.jpeg\",\"news-images\\/0f39e74f-60c5-4588-bcd4-a1b888cb1bd5.png\",\"news-images\\/3keCQJHhDyqVGgkQUMl8.png\",\"news-images\\/3.png\",\"news-images\\/0d4c2e3cfad29e580d841f98643e439f7beb81a5.jpg\"]', 'يصثشيس', 'سيؤيبر ب', 'ضصشس', 'يؤسؤبيء لالبؤبلرلالبؤر'),
(2, '2025-06-02 06:00:33', '2025-06-02 16:14:04', '[\"news-images\\/1 (2).png\",\"news-images\\/1 (3).png\",\"news-images\\/4FhOpaEU6mLIrkHukSnM-small.jpg\"]', 'يصقبؤjojk', 'osama', '<p dir=\"rtl\">قثؤسkj</p>', '<p>ajax</p>'),
(3, '2025-06-02 06:52:34', '2025-06-08 16:34:27', '[\"news-images\\/Screenshot from 2025-04-16 21-42-09.png\",\"news-images\\/4FhOpaEU6mLIrkHukSnM-small.jpg\"]', 'kn', 'lk', '<p>lkljn</p>', '<p><span style=\"text-decoration: underline;\">kjn</span></p>'),
(4, '2025-06-02 09:37:36', '2025-06-03 04:16:56', '[\"news-images\\/1 (2).png\",\"news-images\\/0bb1e38e-1357-49ee-9f21-b39cc5e58f9a.png\",\"news-images\\/0bb1e38e-1357-49ee-9f21-b39cc5e58f9a.png\",\"news-images\\/0d4c2e3cfad29e580d841f98643e439f7beb81a5.jpg\"]', 'عنوان عربي', 'ewc', '<p>ec</p>', '<p>ecd</p>'),
(5, '2025-06-02 09:42:40', '2025-06-02 09:46:29', '[]', 'hygcfxcgvhbj', 'jhv', '<p>&nbsp;,jhvbgv</p>', '<p>mlkj</p>');

-- --------------------------------------------------------

--
-- Table structure for table `news_post`
--

CREATE TABLE `news_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_post`
--

INSERT INTO `news_post` (`id`, `news_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 1, 1, NULL, NULL),
(4, 3, 2, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 4, 2, NULL, NULL),
(7, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-06-08 14:40:25', '2025-06-08 14:40:25'),
(2, 'view news', 'web', '2025-06-08 14:45:56', '2025-06-08 14:45:56'),
(3, 'create news', 'web', '2025-06-08 14:45:56', '2025-06-08 14:45:56'),
(4, 'update news', 'web', '2025-06-08 14:45:56', '2025-06-08 14:45:56'),
(5, 'delete news', 'web', '2025-06-08 14:45:56', '2025-06-08 14:45:56'),
(6, 'view users', 'web', '2025-06-08 16:07:48', '2025-06-08 16:07:48'),
(7, 'create users', 'web', '2025-06-08 16:08:00', '2025-06-08 16:08:00'),
(8, 'update users', 'web', '2025-06-08 16:08:12', '2025-06-08 16:08:12'),
(9, 'delete users', 'web', '2025-06-08 16:08:26', '2025-06-08 16:08:26'),
(10, 'view roles', 'web', '2025-06-08 16:11:27', '2025-06-08 16:11:27'),
(11, 'create roles', 'web', '2025-06-08 16:11:40', '2025-06-08 16:11:40'),
(12, 'update roles', 'web', '2025-06-08 16:11:50', '2025-06-08 16:11:50'),
(13, 'delete roles', 'web', '2025-06-08 16:12:02', '2025-06-08 16:12:02'),
(14, 'view posts', 'web', '2025-06-08 16:25:32', '2025-06-08 16:25:32'),
(15, 'create posts', 'web', '2025-06-08 16:25:46', '2025-06-08 16:25:46'),
(16, 'update posts', 'web', '2025-06-08 16:25:57', '2025-06-08 16:25:57'),
(17, 'delete posts', 'web', '2025-06-08 16:26:09', '2025-06-08 16:26:09'),
(18, 'view permissions', 'web', '2025-06-08 16:28:43', '2025-06-08 16:28:43'),
(19, 'create permissions', 'web', '2025-06-08 16:28:54', '2025-06-08 16:28:54'),
(20, 'update permissions', 'web', '2025-06-08 16:29:04', '2025-06-08 16:29:04'),
(21, 'delete permissions', 'web', '2025-06-08 16:29:16', '2025-06-08 16:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'ربط مع خبر', 'نص خبر', '2025-06-02 06:39:11', '2025-06-02 06:39:11'),
(2, 'ربط مع خبر 1', 'نص خبر', '2025-06-02 06:39:46', '2025-06-02 06:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-06-08 14:40:14', '2025-06-08 14:40:14'),
(2, 'admin2', 'web', '2025-06-08 14:59:24', '2025-06-08 14:59:24'),
(3, 'normal', 'web', '2025-06-23 07:06:02', '2025-06-23 07:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1);

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
('k1JJ4GXqSTmFalKFpWWARFB9fD6oTvQRuvclGKSn', 5, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOGNhWGF6MmxrV3U0UjZ2aWxrR0xaaEltSXFVd0RGZFdUaXlYTG8wOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vc3R1ZGVudHMvOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRnQm94YklxNGRMQzlERVBaRVlSQVN1cVU2NVd0bWpnV3pJM01FaVYxdGRtOUxudm9ibkxGbSI7fQ==', 1750673448),
('L1J8wHHp7EIXJSG4n1u2PwVKyk86Ncmwgnpqr5Tm', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMUVlNThZOTVhWHZGR0xXdmFpZWZRYVdJZ3Y1TVNMb0V5RkhSdnpFNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VycyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQxYmIzTU1TbXBORzlya0FicGZOcy9PZ0NUbXhreEZrMlZhVU9wdXN1MnQ0WWFiTy5SMFhMVyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1750673235);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(222) DEFAULT NULL,
  `university_name` varchar(222) DEFAULT NULL,
  `major_name` varchar(222) DEFAULT NULL,
  `father_name` varchar(222) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `student_phone` varchar(100) DEFAULT NULL,
  `father_country` varchar(100) DEFAULT NULL,
  `target_country` varchar(100) DEFAULT NULL,
  `highschool_certificate` varchar(255) DEFAULT NULL,
  `university_certificate` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `personal_photo` varchar(255) DEFAULT NULL,
  `extra_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `university_name`, `major_name`, `father_name`, `father_phone`, `student_phone`, `father_country`, `target_country`, `highschool_certificate`, `university_certificate`, `passport`, `personal_photo`, `extra_file`) VALUES
(2, '2025-06-23 05:59:56', '2025-06-23 05:59:56', NULL, 'Osama Ahmed', 'عدن', 'تت', 'ي', '0718323599', '0718323599', 'Yemen', 'Yemen', NULL, NULL, NULL, NULL, NULL),
(3, '2025-06-23 06:05:57', '2025-06-23 06:05:57', NULL, 'Osama Ahmed', 'عدن', 'ختى', 'تالا', '0718323599', '777777777', 'Yemen', 'Yemen', 'students/highschool/ACthhBfMVrdrSHfbMzcbzw3jPFxaTJ09H0ShKZUd.png', 'students/university/2YpxoIbUuXTMg2dUItlFQwa3KxNg3qPIzRAtkuYD.png', 'students/passports/yOI2u3AJdOoCHACJDvsmSI4ilzY7AZIZkJYT48F4.pdf', 'students/photos/shhTOe3gCxdnXhCl00wI9OQRVyQVP3yKcERULMdB.png', 'students/extras/t4MSYl4IAt1AKZVzgPgT67357HUhHR5yGUbrCTaH.jpg'),
(4, '2025-06-23 06:10:26', '2025-06-23 06:10:26', NULL, 'Osama Ahmed', 'on', 'ث', '5558555', '0718323599', '718323599', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2025-06-23 06:20:21', '2025-06-23 06:20:21', NULL, 'Osama Ahmed', 'on', NULL, '5558555', '0718323599', '0718323599', 'Vietnam', 'Uganda', 'students/highschool/OPm4C01rWuZSELgfs8gpJwYsSiDuUYlQ3bLJBNcb.pdf', 'students/university/5eYRzPyhDtZe8wHQJXDYuk65RryM3uDBdp52YhgV.pdf', 'students/passports/Yb3ZLvabN6Cc93wUa4WgCcKOdyI2sMNJHZhKbnX6.pdf', 'students/photos/IkndpOxUDYjQIjbwvP3TYeC3GTC6gmbSiBuVrJ8R.png', 'students/extras/OxkzeVYY1yGHuzPKwBQcrhmj2fVA3Rd3GReZ4TC8.pdf'),
(6, '2025-06-23 06:25:40', '2025-06-23 06:25:40', NULL, 'Osama Ahmed', 'on', 'هنمالاعن', '5558555', '0718323599', '0718323599', 'Yemen', 'Yemen', 'students/highschool/47alG2aNZUmsGK613PQhUyfb3NLHGu4vap9SfXKb.png', 'students/university/bWwbwebcVrjka0kNb8AryPSKKAGZlDULla06soei.jpg', 'students/passports/4Y6g3rPSKR4DqdaHVaETC4pggxUZc0Welb9Ruiys.png', 'students/photos/FP23vcvPkjyGLx0op2jaOu7l5S0vBQ0GO9sGuCmB.png', 'students/extras/sPIdbHKBG8DyjOVYWjFUoaznYpwIqHAJg5BAUO9J.jpg'),
(7, '2025-06-23 06:29:09', '2025-06-23 06:29:09', NULL, 'Osama Ahmed', 'on', 'هنمالاعن', '5558555', '0718323599', '0718323599', 'Uzbekistan', 'Yemen', 'students/highschool/eopKH2ZKeN5OQGaLr6gEi6PCHHFuRHACFZwOPcp5.pdf', 'students/university/NyPhryQ4lwLROJJWb6BHAuGuoMyM2NzBBglTXPFP.pdf', 'students/passports/hmoSGRyF48Kcqbfiv5OmnSeiZlhCtCRnTGDyjip5.jpg', 'students/photos/ubq2Q0d1qvz0HfInIO6ifD41MyZEZYkfFqxa088U.png', 'students/extras/3NyaV9FdSbII6OPIKF84dyrlWQj6o5rXwQtaXHC6.png'),
(8, '2025-06-23 06:59:02', '2025-06-23 06:59:02', NULL, 'Osama', 'admin', 'admin', 'Ahmed', '718323599', '0718323599', 'Algeria', 'Italy', 'students/highschool/a4xKvUaBdGrTLEyxApimq71yru2WinJCSvaPoaJR.pdf', 'students/university/OV7DpfNOgAIlNWIqaForso4jQmkhudo0QEI9lj78.pdf', 'students/passports/2MsizZGFnLndaDSf82rlPFQGqg2ABW9Ay5Pe38pB.pdf', 'students/photos/yMGJ4gOB5vXSVuMA5fG9auEq6mXvcusFxLsrXxM6.png', 'students/extras/yvRuQR4g4QVhF9pyNvU6UFEXZBup6jEMZdfjc2k3.pdf'),
(9, '2025-06-23 07:10:30', '2025-06-23 07:10:30', NULL, 'سوال', 'معهد صناعي', 'اثار', 'kkk', '75555', '755', 'Algeria', 'Algeria', 'students/highschool/ZqRJ0W7P5dNCzgcTJRPemZeziwvQQFMjtiTSpT3I.pdf', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(222) NOT NULL,
  `description` longtext NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `image`, `description`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'universities/images/01JYE1383SPY6D173C1BCWNKW0.jpg', '<p dir=\"rtl\">شش</p>', NULL, '2025-06-23 06:14:50', '2025-06-23 06:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `university_majors`
--

CREATE TABLE `university_majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `university_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `university_majors`
--

INSERT INTO `university_majors` (`id`, `university_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '2025-06-23 06:15:01', '2025-06-23 06:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'asaam4292@gmail.com', NULL, '$2y$12$1bb3MMSmpNG9rkAbpfNs/OgCTmxkxFk2VaUOpusu2t4YabO.R0XLW', 'dbmGLAk4KrnlckXs8JbLhN9UrBIzkEWAyU2jPLBS8cCn1rVD7w20DuqObL2x', '2025-06-01 08:33:16', '2025-06-01 08:33:16'),
(4, 'news editor', 'asasa2@gmail.come', NULL, '$2y$12$.hDlD.aq.7xBUro4Uj1kFuRlxUSsRCiOKDfz/.OBVnlulpcDqLv0u', 'nN1YuywA3Dhp7x8IDZi0NBKmCCz8dKzq9OyAsbrijnV93HlMQ2WMRZkt77qE', '2025-06-08 14:48:56', '2025-06-08 16:33:02'),
(5, 'mgd', 'mgd@admin.com', NULL, '$2y$12$gBoxbIq4dLC9DEPZEYRASuqU65WtmjgWzI3MEiV1tdm9LnvobnLFm', 'iy9pIhqEQwTi2Foy1ALbYFoUIsOiKSpiF7tafuDm0rxt12XvIOtHCfIxkaii', '2025-06-23 07:07:12', '2025-06-23 07:07:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute_majors`
--
ALTER TABLE `institute_majors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `institute_majors_institute_id_foreign` (`institute_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_post`
--
ALTER TABLE `news_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_post_news_id_foreign` (`news_id`),
  ADD KEY `news_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university_majors`
--
ALTER TABLE `university_majors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_majors_university_id_foreign` (`university_id`);

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
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `institute_majors`
--
ALTER TABLE `institute_majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news_post`
--
ALTER TABLE `news_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `university_majors`
--
ALTER TABLE `university_majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `institute_majors`
--
ALTER TABLE `institute_majors`
  ADD CONSTRAINT `institute_majors_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_post`
--
ALTER TABLE `news_post`
  ADD CONSTRAINT `news_post_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `university_majors`
--
ALTER TABLE `university_majors`
  ADD CONSTRAINT `university_majors_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
