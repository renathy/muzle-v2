-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 05:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muzle`
--

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `src_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `name`, `src`, `created_at`, `updated_at`, `src_thumb`) VALUES
(1, 'ziema', 'background/NW5ZzP1zeB068IfiJbNwmZvsL6RIWHHu0psAoqQI.jpg', '2021-08-24 12:52:23', '2021-08-24 12:52:23', 'background/NW5ZzP1zeB068IfiJbNwmZvsL6RIWHHu0psAoqQI_thumb.jpg'),
(3, 'mežs', 'background/Xw9nnIOSeU7uTixaJOkJmpbAKGbogYyftNU71sIe.png', '2021-08-24 13:00:31', '2021-08-24 13:00:31', 'background/Xw9nnIOSeU7uTixaJOkJmpbAKGbogYyftNU71sIe_thumb.png'),
(4, 'vienkāršs', 'background/GsfsPLqN2N1EBV1KsvlUFGLrwECe3MoecJfeDYlY.jpg', '2021-08-24 14:03:25', '2021-08-24 14:03:25', 'background/GsfsPLqN2N1EBV1KsvlUFGLrwECe3MoecJfeDYlY_thumb.jpg'),
(5, 'tukšs', 'background/sNI4MC8jQCo8mJOPkDkQsHVOrdqhCNB95W2uZkOz.jpg', '2021-08-24 14:09:29', '2021-08-24 14:09:29', 'background/sNI4MC8jQCo8mJOPkDkQsHVOrdqhCNB95W2uZkOz_thumb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `src`, `created_at`, `updated_at`) VALUES
(1, 'augi', 'category/Ypzr6dvES2HnW9WXTuMSjUDwy48P7xotmnd2di1n.png', '2021-08-24 13:03:18', '2021-08-24 13:03:18'),
(2, 'augļi', 'category/ipkyfN7XYhOIV6HcYPvcbA3qNO3gm31g0QMauR4p.png', '2021-08-24 13:43:52', '2021-08-24 13:43:52'),
(3, 'atkritumi', 'category/tcbo1EgZqBRIh9lySn6EcbQXD1hBvYocyb6KqeOv.png', '2021-08-24 13:44:06', '2021-08-24 13:44:06'),
(4, 'abinieki', 'category/DUjnrLdQNew87tWAw3jsujG5xbgv5P1gmgqNrQiG.png', '2021-08-24 13:44:15', '2021-08-24 13:44:15'),
(5, 'cits', 'category/qEaXA9faL3cJaOUghHPm4HXpfbiJ0uDkYAaoL1iv.png', '2021-08-24 13:44:22', '2021-08-24 13:44:22'),
(6, 'dzīvnieki', 'category/wOvPqjy8iGGoX531J0n6uWc3qVixHMb27aU6SWdW.png', '2021-08-24 13:44:31', '2021-08-24 13:44:31'),
(7, 'dzīvnieku mazuļi', 'category/g6o2TOQu5mX1Rb3CsXx7ZJsGIYjoh6SRsrrg8wvX.png', '2021-08-24 13:44:39', '2021-08-24 13:44:39'),
(8, 'kukaiņi', 'category/Z2tzf8yHixpJUr3hDxExRXbROHMDaliEZLF3oUTU.png', '2021-08-24 13:44:46', '2021-08-24 13:44:46'),
(9, 'lapas', 'category/7LrQSiLXq7MfP9GG1zXVLzHMNSQNwBxXSe9pDs7g.png', '2021-08-24 13:44:52', '2021-08-24 13:44:52'),
(10, 'mājvietas', 'category/hMNtJrkhxSgEFfpgnOKphXHMhMO6PR9RUZFNqFuy.png', '2021-08-24 13:44:59', '2021-08-24 13:44:59'),
(11, 'putni', 'category/tQEUVtnrcoN0xGioE0ZTrzgdhlcGOvEuplH7gowO.png', '2021-08-24 13:45:09', '2021-08-24 13:45:09'),
(12, 'putnu  mazuļi', 'category/syBB9rmYIZk3bz9lpYUXIGlNoqsi7X2kJLXSmD7l.png', '2021-08-24 13:45:17', '2021-08-24 13:45:17'),
(13, 'rāpuļi', 'category/omrqYdX4R0TKeqqi3a405eY9cp3IPlxlKVZsOZbb.png', '2021-08-24 13:45:26', '2021-08-24 13:45:26'),
(14, 'sēnes', 'category/KASaGGB5uwXTFjrh5mJoGVWuU1jocKj4MvexiRHo.png', '2021-08-24 13:45:32', '2021-08-24 13:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_archivated` tinyint(1) NOT NULL DEFAULT 0,
  `frontend_img_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `description`, `helper`, `created_at`, `updated_at`, `is_archivated`, `frontend_img_thumb`) VALUES
(1, 'Testa Skolnieks', 'test', 'helper/o09tD457ZIk7YEwUcqgKgvoPIl1Ji12VCW2mHaK3.jpg', '2021-08-24 13:06:13', '2021-08-24 13:06:13', 1, '0'),
(2, 'Augi un to daļas', 'Apraksts spēlei augi un to daļas', 'helper/qyYuK43uNoXYsnBX8mv5LEeq21kwilhFhcW2QZT6.jpg', '2021-08-24 13:07:14', '2021-08-24 13:07:14', 0, 'frontend_img_thumb/augi_lapas_augli.jpg'),
(3, 'Testa Skolnieks', 'fdsfds', '', '2021-08-24 13:32:21', '2021-08-24 13:32:21', 1, '0'),
(4, 'Testa Skolotajs', 'fdsfds', 'helper/yulpWbF53MU60pqux51yjOS7bB120EaORVB2q6B9.jpg', '2021-08-24 13:35:55', '2021-08-24 13:35:55', 0, '0'),
(5, 'Testa Skolnieks', 'dsfdsf', 'test/helper', '2021-08-24 13:38:40', '2021-08-24 13:38:40', 1, '0'),
(6, 'Testa Skolnieks', 'fdsfds', 'helper/phpCAF1.tmp', '2021-08-24 13:42:52', '2021-08-24 13:42:52', 1, '0'),
(7, 'Mazuļi un vecāki', 'Mazuļi un vecāki ir spēle, kur mācās savietot mazuļus un vecākus.', '', '2021-10-11 09:26:36', '2021-10-11 09:26:36', 0, 'frontend_img_thumb/mazuli_un_vecaki.jpg'),
(8, 'Mājvietas', 'Mājvietas', 'helper/BgWj7iVfwUkKroBWkuZMDQalaVwFBCnlBs3w5nkc.png', '2021-10-11 09:38:11', '2021-10-11 09:38:11', 0, 'frontend_img_thumb/majvietas.jpg'),
(9, 'Barības ķēdes', 'Barības ķēdes neliels apraksts', 'helper/S3LSn0SluLviXYJaRTTxo5S2I53Ks3KPDBJkwDRc.png', '2021-10-11 09:40:25', '2021-10-11 09:40:25', 0, 'frontend_img_thumb/baribas_kedes.jpg'),
(10, 'Kurš kuru apdraud', 'Kurš kuru apdraud neliels apraksts', 'helper/v3waxOtYDitgavd4nGtIpWUVaUk9nQQKp6P9PDhU.png', '2021-10-11 09:40:58', '2021-10-11 09:40:58', 0, 'frontend_img_thumb/kurs_kuru_apdraud.jpg'),
(11, 'Kas mežā neiederas', 'Kas mežā neiederas neliels apraksts', 'helper/OphzJqP8HoIIlX5lC68Fo7WxY67gyyrcCmMR6ONe.png', '2021-10-11 09:49:55', '2021-10-11 09:49:55', 0, 'frontend_img_thumb/kas_neiederas.jpg'),
(12, 'Dzīvās dabas klases', 'Dzīvās dabas klases apraksts', 'helper/bGyZlsKAILal0UZ2plZtL1Xy2QWLHtvTyANSFL56.png', '2021-10-11 09:53:18', '2021-10-11 09:53:18', 0, '0'),
(13, 'test', 'test', '', '2021-11-09 10:34:58', '2021-11-09 10:34:58', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `game_background`
--

CREATE TABLE `game_background` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  `background_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_background`
--

INSERT INTO `game_background` (`id`, `game_id`, `background_id`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 1, 3, NULL, NULL, 1),
(2, 2, 3, NULL, NULL, 1),
(3, 2, 1, NULL, NULL, 0),
(4, 3, 1, NULL, NULL, 0),
(5, 4, 3, NULL, NULL, 1),
(6, 5, 1, NULL, NULL, 0),
(7, 6, 1, NULL, NULL, 0),
(8, 6, 3, NULL, NULL, 1),
(9, 7, 1, NULL, NULL, 0),
(10, 7, 3, NULL, NULL, 1),
(11, 7, 4, NULL, NULL, 0),
(12, 7, 5, NULL, NULL, 0),
(13, 8, 3, NULL, NULL, 1),
(14, 8, 4, NULL, NULL, 0),
(15, 8, 5, NULL, NULL, 0),
(16, 8, 1, NULL, NULL, 0),
(17, 9, 3, NULL, NULL, 1),
(18, 9, 4, NULL, NULL, 0),
(19, 9, 5, NULL, NULL, 0),
(20, 9, 1, NULL, NULL, 0),
(21, 10, 3, NULL, NULL, 1),
(22, 10, 4, NULL, NULL, 0),
(23, 10, 5, NULL, NULL, 0),
(24, 10, 1, NULL, NULL, 0),
(25, 11, 3, NULL, NULL, 1),
(26, 12, 5, NULL, NULL, 0),
(27, 13, 4, NULL, NULL, 0),
(28, 13, 3, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `game_category`
--

CREATE TABLE `game_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_category`
--

INSERT INTO `game_category` (`id`, `game_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 6, NULL, NULL),
(8, 7, 7, NULL, NULL),
(9, 7, 11, NULL, NULL),
(10, 7, 12, NULL, NULL),
(11, 8, 6, NULL, NULL),
(12, 8, 7, NULL, NULL),
(13, 8, 11, NULL, NULL),
(14, 8, 12, NULL, NULL),
(15, 8, 10, NULL, NULL),
(16, 8, 4, NULL, NULL),
(17, 8, 13, NULL, NULL),
(18, 9, 6, NULL, NULL),
(19, 9, 7, NULL, NULL),
(20, 9, 11, NULL, NULL),
(21, 9, 12, NULL, NULL),
(22, 9, 10, NULL, NULL),
(23, 9, 4, NULL, NULL),
(24, 9, 13, NULL, NULL),
(25, 10, 6, NULL, NULL),
(26, 10, 7, NULL, NULL),
(27, 10, 11, NULL, NULL),
(28, 10, 12, NULL, NULL),
(29, 10, 10, NULL, NULL),
(30, 10, 4, NULL, NULL),
(31, 10, 8, NULL, NULL),
(32, 10, 13, NULL, NULL),
(33, 11, 2, NULL, NULL),
(34, 11, 3, NULL, NULL),
(35, 11, 4, NULL, NULL),
(36, 11, 5, NULL, NULL),
(37, 11, 6, NULL, NULL),
(38, 11, 7, NULL, NULL),
(39, 11, 8, NULL, NULL),
(40, 11, 9, NULL, NULL),
(41, 11, 10, NULL, NULL),
(42, 11, 11, NULL, NULL),
(43, 11, 12, NULL, NULL),
(44, 11, 13, NULL, NULL),
(45, 11, 14, NULL, NULL),
(46, 12, 6, NULL, NULL),
(47, 12, 7, NULL, NULL),
(48, 12, 11, NULL, NULL),
(49, 12, 12, NULL, NULL),
(50, 12, 13, NULL, NULL),
(51, 12, 4, NULL, NULL),
(52, 12, 8, NULL, NULL),
(53, 12, 1, NULL, NULL),
(54, 13, 1, NULL, NULL),
(55, 13, 2, NULL, NULL),
(56, 13, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `category_id`, `name`, `src`, `created_at`, `updated_at`) VALUES
(1, 1, 'KSNT4iL5OYkfdPsV', 'image/FlOEhPpUAlI8GutXkOFGNF2AoTPpycWw1No0ocXB.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(2, 1, 'bqHKAV65aTaFrxmV', 'image/EiYcROtszauPf0D17R7XiCGYPWJQqN5ghZ2MWNZ7.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(3, 1, 'OU56FUXg8xSWjy9V', 'image/yekRu2KyM8VUMHNPmHG9LDFptYSbhEAQ16vztHS3.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(4, 1, 'UxUIl9AKAqc344In', 'image/wjZxDA60rydfs3x7cDwjwEBROtyem2uskYeYi4Fo.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(5, 1, 'vUpsoTgFt8z4BRHq', 'image/wsY3GJzBDbr4p86WYbzzS71kGEJqC4JNV2FxS0DF.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(6, 1, 'V8BfEfX3xQDnD0th', 'image/yd87KlUGQGcmxIHTDfRrCtVtLrzxtkLaahLt1kib.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(7, 1, 'zyhP90o6ZoeLdFD4', 'image/L5zrCntW1ibDsc1ms72VkInH7mYSF5gP9eCS52Lq.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(8, 1, '8y8xSVFRysFXg1yO', 'image/NcoudJvIOiSUOMlMJqydTvbeqCROcYmp6aRv8TDT.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(9, 1, 'CIwTJOSkZinZEUOV', 'image/sh4UEyDfl0fbDzFWpJR8RgvaxsucNkTrzl5gEt1i.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(10, 1, '3yUaSRWaeZPM36Ow', 'image/2pvJkF3IyuBsKNuvSs7zFwgmRiFfMcescqt15S9h.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(11, 1, 'IeupNF7QXT114Da3', 'image/lLje1gtpzlwaPTGMAMpYqkYTUsBLGa0Zfkr3fhYL.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(12, 1, 'OQhvEVrFA63a5h4R', 'image/1KUyuK2eJKWheRx9VvvnXGy6Rk84sIBTk7OdPoOK.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(13, 1, 'CwDiAud2cj36bOU0', 'image/DrQAFxeAwmHhZ4VV74jnup4dzF3nOOD1YPNjTqnc.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(14, 1, '4Sq7zv7UYjDtbIOZ', 'image/CZPYDLfMODNAKQ69SzIYd0F55TdPdorHII19RsXA.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(15, 1, 'jDI3LCKq9JQgKuyX', 'image/OlDwEp57jvCNsiH0ejoWOAmrut1Io3kKzPvHV01j.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(16, 1, 'A1M0tTr7td3LPWLB', 'image/opdEUtXjdS66Bx5XRP9230Hg0tPnpIE0mOD3Pid2.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(17, 1, 'jTyq2NSzwGQpEz4Z', 'image/Ab8MJX6x5WuIfJ5QQxrVFhSCxAK1VjbZchYFblcC.png', '2021-08-24 13:03:47', '2021-08-24 13:03:47'),
(18, 2, 'AkKnUTOBUZ3MXyMN', 'image/mjicBFAqoE7RoL2HgsZuSgliUs2Zzcm9Qnes49M5.png', '2021-08-24 13:45:54', '2021-08-24 13:45:54'),
(19, 2, '0txKmShjtg3ltTob', 'image/fZI8SAtTjxOiyQMItylYR6mSZAA6vJCkuoTkr48k.png', '2021-08-24 13:45:55', '2021-08-24 13:45:55'),
(20, 2, 'JXoabioQLC7ONrq3', 'image/tZ9UlNjwFnrgwddKKd4B4R2zYrS0lKbzM6A7ovB1.png', '2021-08-24 13:45:55', '2021-08-24 13:45:55'),
(21, 2, '55jyjnIZtg6cqfr3', 'image/ajoTIjXpXI2wrrM6ZRy6nrf8M5BXv92nBu6swXt8.png', '2021-08-24 13:45:55', '2021-08-24 13:45:55'),
(22, 2, 'IBQYF0xu5pc9fUFt', 'image/25vg3GLfIzCvQvwRaGsrxZJ3SAitTITiFjomrFxf.png', '2021-08-24 13:45:55', '2021-08-24 13:45:55'),
(23, 2, 'ZF8kOpmsEKlHuQJ2', 'image/kCKMrnwuu0DwjCPQ99s2F7jDkixnagMm80sOS4z9.png', '2021-08-24 13:45:55', '2021-08-24 13:45:55'),
(24, 2, 'nq0Zg925svX9m73L', 'image/YBE01rIlCXgJTq50A3yonv4VBGQJ129FcWmICvVg.png', '2021-08-24 13:45:55', '2021-08-24 13:45:55'),
(25, 2, 'co4dfUDHwpSW7427', 'image/Y38zFrgrat227J9DK6hr9R3XABWDouDHBLGP7Jxf.png', '2021-08-24 13:45:55', '2021-08-24 13:45:55'),
(26, 2, 'xUrCh32e8aXg1f5d', 'image/OyZ7tzazgfcq0N97Meuv2w1Onxj32f3ALIQbDGbI.png', '2021-08-24 13:45:55', '2021-08-24 13:45:55'),
(27, 3, 'I8weOlQBu1vXRZGy', 'image/hDeuM0sRFv9BsYGC07ed4dw1VtO4Sq4vtRZ6KnQb.png', '2021-08-24 13:46:10', '2021-08-24 13:46:10'),
(28, 3, 'tibXya39UZcaSeJs', 'image/CPS0WhzqoDv7G6dSonxKf00oeyIQajYJIL7Jp2Kp.png', '2021-08-24 13:46:10', '2021-08-24 13:46:10'),
(29, 3, 'q5N1jxl2WJYzt1q0', 'image/KjFOEB3fpYhHT7WY5GllYJ8JU2NJJePPOuaOI1kY.png', '2021-08-24 13:46:10', '2021-08-24 13:46:10'),
(30, 3, '0Nvqj5awK3KHykVd', 'image/DZMqPhPiitSgnYko9aoPpUMo5t6hax8a0QKHKBqY.png', '2021-08-24 13:46:10', '2021-08-24 13:46:10'),
(31, 4, 'vFygiNV384FTIh03', 'image/eRnTi7NLu1B9UlltDFmZipGHGlKkpbvxbwpoCtGy.png', '2021-08-24 13:46:24', '2021-08-24 13:46:24'),
(32, 4, 'LJ2O11IV7IN73uJC', 'image/Z9Z4qhZsFfBEE1pCbvbEl0EhBgC2djF0SsZ0LsyG.png', '2021-08-24 13:46:24', '2021-08-24 13:46:24'),
(33, 5, 'fsTlql1j6UVKF5z5', 'image/L4xrA4rBY1YjzZugP4FqrjraplqrjdxA24vVkQ6F.png', '2021-08-24 13:46:40', '2021-08-24 13:46:40'),
(34, 5, 'dXqDBeaPWeh8zlYw', 'image/KmqGjMQifUY8ek2tX8mzIKuyniBWR7kK7UzIihn6.png', '2021-08-24 13:46:40', '2021-08-24 13:46:40'),
(35, 5, 'peNpGHLFuUHRXisz', 'image/bbS2zuhPFazt8w900j7whDRstiaVViaLxXZinoex.png', '2021-08-24 13:46:40', '2021-08-24 13:46:40'),
(36, 6, 'HpVw0SsohFH932n9', 'image/vYniTfKneEmBEpZeI0CdIw0G9yQr5ANGYmVxucuG.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(37, 6, 'm6HKv0Xiy3PYLXJv', 'image/QBM1jMYN15sAXiIeUa1DWoIjaYdepUsbqS4ZxUMJ.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(38, 6, 'OTljIF2dxIy9UNfJ', 'image/Xy9iKl9XNHfHzZvZLCbxphToEFlNWRnLy2nocgcc.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(39, 6, 'xwPf5DA14Pw5EY9V', 'image/Gb0KLbzwV2OMRqHCsVHbMCCCGcsYV91vB04BDsti.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(40, 6, '3CNnS93mieied80f', 'image/Ddw8kiBDNH1D8V5asX3huEz949Pfor1hN9wjeCJ3.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(41, 6, 'c3w7RSAD3jobkXW1', 'image/yjWN8X9tgfg5QPkYF6xI1cfAEk1ImBIM0LCIpfG2.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(42, 6, 'EXeaVyyaEujlX1qU', 'image/ixlWJK24dE9gLmjFxXKTkWzfcr4DR4spjYOazlZd.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(43, 6, 'Rzvo2T3y1UHEusqR', 'image/QNlw5IkaeYDKnAyPUXeeYS2HYwLEwauV8t9RlXAd.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(44, 6, 'pXxweKQHAvTTTzg8', 'image/eeofW00hZhN1qT0Cq425urw2XPqT0i9oUKb1hH42.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(45, 6, '7XcCINiyAzB49qdg', 'image/FzIUp5oOQ5QXi5JOm0HWRBpMGTHpwOoIBHn8bPuu.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(46, 6, 'Q1ryq3BBq6vlHBVo', 'image/Jhx8hBiTholP3scmtG9BzP2iNL5JNvwcoo12wqRX.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(47, 6, 'fxmzczQHiD8yo6ND', 'image/X3kgm0xqc3fVnUC7sWCInQZHTxZdlV4cmFYQeE9o.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(48, 6, 'guEfZYvRUAAmuSWV', 'image/Mr0OaiYhrHnGSlrwLy2ScGziyQbOeBf211Vq2ffd.png', '2021-08-24 13:47:01', '2021-08-24 13:47:01'),
(49, 7, 'JX66yC00yDw5I8S5', 'image/7x5XjsrWzHTRIxRvQ000iwHd3RZeHg649GPxtK5m.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(50, 7, 'Ogrv5x48Orj2iVmR', 'image/ztDVqgPPkzfJmQxwBhbEH3Io0HDlwSCxgIwPXcv0.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(51, 7, 'fNf2ik7nVxZB26Sq', 'image/tnAoq2R5GMvq5KFRBe2Nzik2Kbld5mMhQoEIS89z.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(52, 7, '6ZjAWOUv11Q21diL', 'image/xxdLdxhaROaf6oNGTuFHqfKjMkbut857RnkYU62u.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(53, 7, 'ZdSDrrjHvzcQHCWA', 'image/f2o7Z4X84aGzfmYMDh3fwpFyJRKYz38TtMHU1Qvh.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(54, 7, 'Pfu4jVhKU2IOjlV0', 'image/aQEIhxYKjaqkU7bt8q6uepjVH3eRNRHoPkEjkyYH.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(55, 7, 'F5GVuI8EJ6jUpf0D', 'image/TPKMzD7FpPzUwyVsuj6tbw56GE6XtIcsfU4KANc1.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(56, 7, 'igBr1xK4bwPrCQct', 'image/MivTp8YDSG1pBwrUMUCz1nQ62aKZUL3tXZjNlcAM.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(57, 7, 'NvlKd7nJxBDIZmuS', 'image/Yrn6F9jTLl4ZGk4z3xkAbTWeU2JQWs8KBcCkr3JQ.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(58, 7, 'hDlv7KVHGM7E3FE5', 'image/1j6m67X5Jua0Rz5WdMpAUUv6vkvWpK66K4zSiO6d.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(59, 7, 'zg3St1VtKlgtsm0E', 'image/iZd7s6oXE62OtN14G5iDhn3upfYR39RFIcThNE4W.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(60, 7, 'fUNkUsr6e40cSJz5', 'image/OZQYADOMtaoC7skoQgvuhEkBewpe0TesukPPgiGP.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(61, 7, 'uHPn0hadivZJyQ5X', 'image/XpJ1oIXyIcWktnYBTHKkF6nz5tzrLurE7L2OkfyK.png', '2021-08-24 13:47:17', '2021-08-24 13:47:17'),
(62, 8, 'LBavA2zI5XZE6Ndh', 'image/JeaPfH6jemlvrSItbrenvol75vXnTErrChKs80eO.png', '2021-08-24 13:47:33', '2021-08-24 13:47:33'),
(63, 8, 'kiO3ZziXb6zjjsHX', 'image/ymP7Y9nKyAiKgad0Tsz6smUVRry7QICNFjao2ljt.png', '2021-08-24 13:47:33', '2021-08-24 13:47:33'),
(64, 8, 'lM76SB5QjIGTqlbl', 'image/un9FVAM6gkW1AQiOc6NA0BjfdcmaA2PsUquuoIdP.png', '2021-08-24 13:47:33', '2021-08-24 13:47:33'),
(65, 8, 'gbGjSssD6CK9Y55q', 'image/OH3RdK61Er1MkavguHvIRQtXM5Sfb6JqzH6ASINV.png', '2021-08-24 13:47:33', '2021-08-24 13:47:33'),
(66, 8, 'JWpByofIKhuosKDb', 'image/NmgjwuKQZI32v6MfpvIrAlgTBcGDDmovRMJyOu8Y.png', '2021-08-24 13:47:33', '2021-08-24 13:47:33'),
(67, 8, 'MRNbe3KdcZDycLVR', 'image/9ZoZkDoJFs6HklG8ok75kPH5LKSdOwbakPB6kxEA.png', '2021-08-24 13:47:33', '2021-08-24 13:47:33'),
(68, 8, 'd9QfFqSexLJMVd2Q', 'image/hFqapyzZhzSBtFll3hrNjqdq5t6uyMeuNmNHUJOc.png', '2021-08-24 13:47:33', '2021-08-24 13:47:33'),
(69, 9, 'dnEqet9wgRIqm7Fs', 'image/vHCAV3rXyLZv0XMGFnxjrMVKUZipoEUi8dkY1hGC.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(70, 9, 'qqL2Wq2zOxOEfQmt', 'image/fVRmK729IRaUfrGGupIGJQtcwS0n0A8jumWX6M6U.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(71, 9, 'jdHH9QHPdXH8Wuze', 'image/nfH2QcZwL4BDEsBW60aZIsopJEDSTsOxG8cWuLsD.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(72, 9, 'NK02sOTVF3kys0mQ', 'image/zTNJFRtYhBclisLRFuQUI7kIqSth8i7vr4MwFqlW.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(73, 9, 'uGAKZmFPsA4J6LV3', 'image/c3m09mgr5MY1OmRwOf6ra1K8UzBfStkqBzrVs7dI.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(74, 9, '3D7uWwtlHMUX6GFm', 'image/sQsI8eDrc7bTFsbd693bJCNmDXEhqZrLBZhl4T5c.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(75, 9, 'PsY7eZ9eXTCin89k', 'image/I3opbtH0GyAGCooqnKIvpIsB4gK4i0kIpUtGaq0y.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(76, 9, 'Bf8gSn89YxYkHnDH', 'image/3WsOdLH7mkpXB1bSU7dYZY5aVMfng1epx0hqWGpz.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(77, 9, 'QJ90QEneLjaj0SOj', 'image/ofjNmplqL1hvZqYcFgzYMRAC8yW3JlXez8J2sHPt.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(78, 9, 'LNDbIP1wxVN2I2N5', 'image/ETDEOD13sH0jvt0w5rZ5sUBXuvfG1oP53iopLeE9.png', '2021-08-24 13:47:59', '2021-08-24 13:47:59'),
(79, 10, 'EZBOaboaKVNitxly', 'image/j0x6ASAoeQLWZtB7tVNhVyGabjAXHdTIi7cy4VFC.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(80, 10, 'CCr8ULblr5gfIWID', 'image/9DYeDIqxCQkMm0zTaiDdYzTjwP6DykBLwett8TL8.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(81, 10, 'fR1mDbW0Cid3GzEQ', 'image/7U1R1StJmP37BMpS8aXBzvFjr34iWVuVQfmV8FH7.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(82, 10, '7nRyKRv3g1JA9uLH', 'image/PbEebEdP1emZkaOz51uHnhQPxxIimCbYxZ5ZWjaw.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(83, 10, 'jMLkqKBfYiMeNTai', 'image/PBUaQdnTKv5WCPzdnPRZ0rFiHrLmMV3nrR1WVwVQ.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(84, 10, 'eWdDi58Y24IZoqeI', 'image/JD1tkNDWTz8RsRdj2Gqhdu52JfhSxLjNwbOFVsr0.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(85, 10, 'uuxOSFJjGTbxoU0I', 'image/gVxB0kKQgrnntIGvqUhzJl1xPi9Y5z56MDAMXLlW.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(86, 10, '0VBEMWE2Nr19oBzd', 'image/cDnAdUiR9nLSdwHbg3VJKH19iHvjRO3nk4WMvmvk.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(87, 10, 'PNMiYmy49hixGiCR', 'image/MVsoYcdZ7v9VjjNjQ8R6bRyPaZ3Vxh53baxn2xQq.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(88, 10, 'LkH4ehZJUu8Qa289', 'image/gnDgNBeZCVnk9F9XgXGnvTIwc1cDMDf4Fxs2nBP7.png', '2021-08-24 13:48:15', '2021-08-24 13:48:15'),
(89, 11, 'aceubeErIqslseIT', 'image/XEW6wy6vO2Q23R3XbPCtffcqiPVNLj9GrZuyPCY8.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(90, 11, 'dJuVDIDDZgF1P1L0', 'image/W8u21Oa26oDaU39jCDtiFX04dA3nSiLciSrXiDtn.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(91, 11, 'jjE85iduki4C7aHz', 'image/GAxAifJ5BpSVO2FnmcFLRzD9lS0BSpnSDweboObg.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(92, 11, 'anRIXAsgqommjWIr', 'image/KUkBp5veKHCzeBdRFovarmXhiPQ2gWxjf0cY3bmD.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(93, 11, 'VbM3Jgc7zEwYLHIk', 'image/ZwzPtFXOJFud4r0YZAhvLU45O5l8ZRJxfe9RPcV4.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(94, 11, 'xpLVICrRR5z91ko7', 'image/817IoJqKCK9DRxl87jlx79rD5XNKD1mAYmtuMQIG.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(95, 11, 'u18UJJ6oAuFU3zZg', 'image/M5TCT33XDIl3LpZLFXJELEv4Oyb4ns6U66KJYujQ.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(96, 11, 'It0JYlBJ6bybKMpv', 'image/7k4rtWnJHCXgeQJJUf5SKTv7nxDSYaqYNQo6W80P.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(97, 11, 'u0B4ceYaQNzH1tVT', 'image/BZBTfpWP2FoosEWNwuqoVbHqFVOMx46o1M0Ci0Z1.png', '2021-08-24 13:48:25', '2021-08-24 13:48:25'),
(98, 12, 'R98q0Tyz2aj3z4Me', 'image/Z0yutjYQjczlMqbGP4KTTfHifxTL7hZRCrNa5U05.png', '2021-08-24 13:48:34', '2021-08-24 13:48:34'),
(99, 12, 'JBy3cftaIOav40sp', 'image/gmE454JUISSFgdkKwl2oH039ETXhaUCr9T2lqAdr.png', '2021-08-24 13:48:34', '2021-08-24 13:48:34'),
(100, 13, 'AXyXCQAPMUH9JTm3', 'image/BzK3WBqL2QqTIODj8bkeI2EcswHeYVYN9kfnkJls.png', '2021-08-24 13:48:44', '2021-08-24 13:48:44'),
(101, 13, '1NmZW9lCzbrBPS5K', 'image/dQkaAcK2uF0JTchF0XqEJYeIt3rc0U5fep0P6O5X.png', '2021-08-24 13:48:44', '2021-08-24 13:48:44'),
(102, 13, 'DFbNTD78XPX8sm9S', 'image/Oc9stlOXV6PHfZXp1nGsaJ2Ic0mCE6aBQs600BYh.png', '2021-08-24 13:48:44', '2021-08-24 13:48:44'),
(103, 13, 'SUTezTMZzJ96hSpm', 'image/hsdHDDs7ZAaqd52Zd9EuoMfrwpUAKX1X0oiA6ylP.png', '2021-08-24 13:48:44', '2021-08-24 13:48:44'),
(104, 14, 'aN9aIJXVpAhW2o00', 'image/bAP02D5hTi2pMrI0EYWHwnaLE0xovZodrwOzrQIA.png', '2021-08-24 13:48:57', '2021-08-24 13:48:57'),
(105, 14, 'dpxY2haorlfs4g9d', 'image/LUS01DFAXAAnyzZbbnYpZtvh0tIRgQ4gunYbHrbo.png', '2021-08-24 13:48:57', '2021-08-24 13:48:57'),
(106, 14, 't2d4wyeRbVtHsfqY', 'image/Itsb3Hm3hDd3zizDrUyukN2XEC59dOmVqTTkrp6s.png', '2021-08-24 13:48:57', '2021-08-24 13:48:57'),
(107, 14, 'Ex7U8SQ6OD3zkvt4', 'image/EUtYUESbvMApaCk8dhEJ8FXvxSzxWX5e7UseHI5P.png', '2021-08-24 13:48:57', '2021-08-24 13:48:57'),
(108, 14, 'cYJHOmwKWSt3omD7', 'image/IclRxc8NVpHtpue1qKHTDW6bqgySbmyU91NWaVaj.png', '2021-08-24 13:48:57', '2021-08-24 13:48:57');

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
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2021_03_22_031237_create_tenants_table', 1),
(12, '2021_03_22_031319_create_users_table', 1),
(13, '2021_03_22_174016_create_categories_table', 1),
(14, '2021_03_22_174044_create_images_table', 1),
(15, '2021_03_22_174106_create_backgrounds_table', 1),
(16, '2021_03_22_174121_create_games_table', 1),
(17, '2021_03_22_183132_create_game_background_table', 1),
(18, '2021_03_22_183147_create_game_category_table', 1),
(19, '2021_09_05_172046_add_is_archivated_to_games_table', 2),
(20, '2021_10_11_125719_add_frontend_img_thumb', 3),
(21, '2021_10_12_064125_add_default_bg', 4),
(23, '2021_10_12_072423_add_bg_thumb_img', 5);

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
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Testa skola', 'TEST', '2021-08-24 12:26:12', '2021-08-24 12:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nickname`, `password`, `role`, `tenant_id`, `created_at`, `updated_at`) VALUES
(1, 'Muzle Admin', 'muzle-admin', '$2a$11$ua/OPc5qj5xLhdpT46JJbeIDd2q6WeX6Frf34Xq0YPLUNJbnsjYxi', 'admin', NULL, NULL, NULL),
(2, 'Testa Skolotajs', 'testa-skolotajs', '$2a$11$ua/OPc5qj5xLhdpT46JJbeIDd2q6WeX6Frf34Xq0YPLUNJbnsjYxi', 'teacher', 1, '2021-08-24 12:26:50', '2021-08-24 12:26:50'),
(3, 'Testa Skolnieks', 'testa-skolnieks', '$2a$11$ua/OPc5qj5xLhdpT46JJbeIDd2q6WeX6Frf34Xq0YPLUNJbnsjYxi', 'kid', 1, '2021-08-24 12:27:20', '2021-08-24 12:27:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_background`
--
ALTER TABLE `game_background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_category`
--
ALTER TABLE `game_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenants_name_unique` (`name`),
  ADD UNIQUE KEY `tenants_code_unique` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname_tenant_unqiue` (`nickname`,`tenant_id`),
  ADD KEY `users_tenant_id_foreign` (`tenant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `game_background`
--
ALTER TABLE `game_background`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `game_category`
--
ALTER TABLE `game_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
