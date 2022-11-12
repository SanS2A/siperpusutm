-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 03, 2022 at 07:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siperpusutm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'adminadmin', '$2y$10$XOlYimovWeCTdm6wZjr28O19pI7dykZuq2Thmd9WNegRAD6N65sFa', '2022-04-16 06:55:51', '2022-04-16 06:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `kode` tinyint(1) NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Islam', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
(2, 'Kristen', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
(3, 'Katolik', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
(4, 'Hindu', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
(5, 'Budha', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
(6, 'Kongfutsu', '2022-11-02 20:18:18', '2022-11-02 20:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `bukus`
--

CREATE TABLE `bukus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bukus`
--

INSERT INTO `bukus` (`id`, `judul`, `slug`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_buku`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'omnis nihil sed', 'omnis-nihil-sed', 'Ini Pengarang', 'Ini Penerbit', 1972, 39, 'https://via.placeholder.com/360x360.png/00ccbb?text=animals+cats+sit', '2022-11-02 20:18:21', '2022-11-02 22:47:06'),
(2, 'veritatis voluptas quasi', 'et-temporibus-mollitia-voluptatum-incidunt-odio', 'Ini Pengarang', 'Ini Penerbit', 1999, 82, 'https://via.placeholder.com/360x360.png/0066ff?text=animals+cats+fuga', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(3, 'ut quas provident', 'laborum-sed-qui-rerum-voluptatibus', 'Ini Pengarang', 'Ini Penerbit', 1978, 49, 'https://via.placeholder.com/360x360.png/0099bb?text=animals+cats+magni', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(4, 'nisi sit consectetur', 'mollitia-eveniet-tenetur-velit-non', 'Ini Pengarang', 'Ini Penerbit', 2021, 96, 'https://via.placeholder.com/360x360.png/006666?text=animals+cats+eius', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(5, 'fugit iusto aut', 'dolore-sapiente-repudiandae-doloremque-consectetur-iure-nihil-maxime', 'Ini Pengarang', 'Ini Penerbit', 2006, 83, 'https://via.placeholder.com/360x360.png/00ddee?text=animals+cats+soluta', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(6, 'porro dolores nihil', 'et-laborum-iste-in-provident', 'Ini Pengarang', 'Ini Penerbit', 2020, 9, 'https://via.placeholder.com/360x360.png/0055aa?text=animals+cats+alias', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(7, 'aut corrupti fuga', 'tempore-expedita-quo-sed-harum-quibusdam', 'Ini Pengarang', 'Ini Penerbit', 1994, 80, 'https://via.placeholder.com/360x360.png/00aa33?text=animals+cats+aperiam', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(8, 'aperiam minima consequatur', 'consequatur-qui-quia-eveniet-dolorum', 'Ini Pengarang', 'Ini Penerbit', 2016, 27, 'https://via.placeholder.com/360x360.png/0011aa?text=animals+cats+enim', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(9, 'quis dolorum qui', 'ipsum-laudantium-est-sit-nam-explicabo', 'Ini Pengarang', 'Ini Penerbit', 1986, 87, 'https://via.placeholder.com/360x360.png/004466?text=animals+cats+magni', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(10, 'adipisci tempore odio', 'quas-illum-voluptatem-et-esse-facilis', 'Ini Pengarang', 'Ini Penerbit', 2021, 33, 'https://via.placeholder.com/360x360.png/0011cc?text=animals+cats+voluptas', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(11, 'ut velit esse', 'deserunt-dolores-ullam-beatae-et', 'Ini Pengarang', 'Ini Penerbit', 1988, 85, 'https://via.placeholder.com/360x360.png/009944?text=animals+cats+vero', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(12, 'accusantium qui fugit', 'ullam-sed-debitis-corrupti-tenetur', 'Ini Pengarang', 'Ini Penerbit', 1997, 57, 'https://via.placeholder.com/360x360.png/0033aa?text=animals+cats+nam', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(13, 'dolores aut sequi', 'at-autem-nihil-quos-sunt-voluptas-ut-molestiae-beatae', 'Ini Pengarang', 'Ini Penerbit', 1999, 47, 'https://via.placeholder.com/360x360.png/00bb00?text=animals+cats+ut', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(14, 'est in id', 'voluptatem-omnis-quisquam-non-sint-rem-aliquid-et', 'Ini Pengarang', 'Ini Penerbit', 2019, 25, 'https://via.placeholder.com/360x360.png/003388?text=animals+cats+sint', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(15, 'veniam sunt eos', 'minima-quibusdam-deserunt-non-porro-exercitationem', 'Ini Pengarang', 'Ini Penerbit', 2002, 28, 'https://via.placeholder.com/360x360.png/00dddd?text=animals+cats+molestias', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(16, 'dignissimos et maiores', 'quos-ut-rerum-eos-ea', 'Ini Pengarang', 'Ini Penerbit', 1998, 19, 'https://via.placeholder.com/360x360.png/0055aa?text=animals+cats+dolor', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(17, 'odio ut deserunt', 'vitae-ducimus-quia-adipisci-consequuntur-neque', 'Ini Pengarang', 'Ini Penerbit', 2006, 15, 'https://via.placeholder.com/360x360.png/00dd44?text=animals+cats+eum', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(18, 'vel dignissimos eum', 'vel-esse-eos-aut-omnis-qui-dolorem', 'Ini Pengarang', 'Ini Penerbit', 2017, 52, 'https://via.placeholder.com/360x360.png/002244?text=animals+cats+aliquam', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(19, 'voluptas tempore saepe', 'voluptatem-voluptatem-vel-et-maiores', 'Ini Pengarang', 'Ini Penerbit', 2015, 64, 'https://via.placeholder.com/360x360.png/008899?text=animals+cats+quaerat', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(20, 'rerum nisi officiis', 'ducimus-qui-ut-velit-explicabo', 'Ini Pengarang', 'Ini Penerbit', 2003, 17, 'https://via.placeholder.com/360x360.png/008888?text=animals+cats+labore', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(21, 'laudantium explicabo ipsa', 'et-accusamus-sequi-sunt-eos', 'Ini Pengarang', 'Ini Penerbit', 1994, 23, 'https://via.placeholder.com/360x360.png/009999?text=animals+cats+esse', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(22, 'qui dolor voluptas', 'qui-saepe-sunt-perferendis-quod-nesciunt', 'Ini Pengarang', 'Ini Penerbit', 2012, 29, 'https://via.placeholder.com/360x360.png/002266?text=animals+cats+incidunt', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(23, 'neque consectetur et', 'dolores-rerum-harum-placeat-in-sapiente-totam-dolores-quos', 'Ini Pengarang', 'Ini Penerbit', 1972, 17, 'https://via.placeholder.com/360x360.png/00ff22?text=animals+cats+eum', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(24, 'velit dicta quibusdam', 'blanditiis-voluptatem-dolorum-voluptatum-est-eos-eos-nisi', 'Ini Pengarang', 'Ini Penerbit', 2017, 39, 'https://via.placeholder.com/360x360.png/00ff99?text=animals+cats+consequatur', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(25, 'dicta illo deleniti', 'sequi-reprehenderit-aut-voluptas-corrupti', 'Ini Pengarang', 'Ini Penerbit', 1970, 19, 'https://via.placeholder.com/360x360.png/0099ff?text=animals+cats+a', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(26, 'necessitatibus eaque tempore', 'tempora-dicta-reiciendis-aliquid-eius', 'Ini Pengarang', 'Ini Penerbit', 1997, 89, 'https://via.placeholder.com/360x360.png/004455?text=animals+cats+officiis', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(27, 'dolore eveniet est', 'doloremque-cumque-rerum-pariatur-et', 'Ini Pengarang', 'Ini Penerbit', 1971, 63, 'https://via.placeholder.com/360x360.png/003311?text=animals+cats+voluptates', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(28, 'distinctio officiis dolorem', 'et-dolorem-incidunt-ipsum-officia', 'Ini Pengarang', 'Ini Penerbit', 2012, 57, 'https://via.placeholder.com/360x360.png/00dd11?text=animals+cats+ullam', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(29, 'adipisci fugit iste', 'beatae-sapiente-pariatur-quos-fugit-accusantium-corrupti', 'Ini Pengarang', 'Ini Penerbit', 2001, 29, 'https://via.placeholder.com/360x360.png/0055ee?text=animals+cats+voluptas', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(30, 'omnis quod fuga', 'minima-molestiae-enim-quas-molestiae-sequi-atque', 'Ini Pengarang', 'Ini Penerbit', 2020, 8, 'https://via.placeholder.com/360x360.png/00ff11?text=animals+cats+rerum', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(31, 'rerum eius occaecati', 'nulla-sit-quia-quo-a-dignissimos', 'Ini Pengarang', 'Ini Penerbit', 2019, 12, 'https://via.placeholder.com/360x360.png/005599?text=animals+cats+soluta', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(32, 'autem quos similique', 'qui-dolorum-aut-neque-et', 'Ini Pengarang', 'Ini Penerbit', 1991, 96, 'https://via.placeholder.com/360x360.png/00aa22?text=animals+cats+magnam', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(33, 'quia exercitationem modi', 'facere-quos-dolorum-ipsa-molestias-officia', 'Ini Pengarang', 'Ini Penerbit', 2009, 27, 'https://via.placeholder.com/360x360.png/000033?text=animals+cats+sapiente', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(34, 'necessitatibus amet blanditiis', 'quaerat-eius-perspiciatis-dolorum-accusantium-sed-ut', 'Ini Pengarang', 'Ini Penerbit', 2005, 98, 'https://via.placeholder.com/360x360.png/00ee11?text=animals+cats+velit', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(35, 'doloremque veniam rerum', 'magnam-amet-est-molestiae-porro-iure-accusantium', 'Ini Pengarang', 'Ini Penerbit', 1983, 90, 'https://via.placeholder.com/360x360.png/007777?text=animals+cats+voluptates', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(36, 'dolor magni quia', 'est-ut-beatae-in-ipsa-itaque-odit-et', 'Ini Pengarang', 'Ini Penerbit', 1995, 72, 'https://via.placeholder.com/360x360.png/006655?text=animals+cats+autem', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(37, 'natus sed beatae', 'necessitatibus-aut-impedit-deleniti-consequatur-porro', 'Ini Pengarang', 'Ini Penerbit', 2019, 91, 'https://via.placeholder.com/360x360.png/0055cc?text=animals+cats+labore', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(38, 'maiores error magni', 'voluptatem-qui-reprehenderit-nulla-dolores', 'Ini Pengarang', 'Ini Penerbit', 2015, 18, 'https://via.placeholder.com/360x360.png/00cc33?text=animals+cats+voluptas', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(39, 'quisquam ut iste', 'sint-dolores-eaque-minima-voluptatem-sit-nesciunt-molestiae', 'Ini Pengarang', 'Ini Penerbit', 1999, 79, 'https://via.placeholder.com/360x360.png/0066bb?text=animals+cats+architecto', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(40, 'et rerum animi', 'fuga-qui-illum-quia-quae', 'Ini Pengarang', 'Ini Penerbit', 2014, 89, 'https://via.placeholder.com/360x360.png/007755?text=animals+cats+nemo', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(41, 'repudiandae ipsum aut', 'deserunt-laudantium-qui-nemo-non', 'Ini Pengarang', 'Ini Penerbit', 2005, 81, 'https://via.placeholder.com/360x360.png/001122?text=animals+cats+rem', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(42, 'natus cumque molestiae', 'ad-est-voluptate-enim-atque-ut', 'Ini Pengarang', 'Ini Penerbit', 2010, 91, 'https://via.placeholder.com/360x360.png/008899?text=animals+cats+ut', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(43, 'vero esse voluptatem', 'et-magnam-minus-assumenda-exercitationem', 'Ini Pengarang', 'Ini Penerbit', 2013, 64, 'https://via.placeholder.com/360x360.png/007700?text=animals+cats+dicta', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(44, 'quos quis veritatis', 'quas-sequi-explicabo-ut-reiciendis-tempore-sit-mollitia-laboriosam', 'Ini Pengarang', 'Ini Penerbit', 1997, 40, 'https://via.placeholder.com/360x360.png/00ee22?text=animals+cats+est', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(45, 'perferendis aut pariatur', 'voluptatem-rem-fuga-delectus-veniam-ipsam-nostrum-repellendus', 'Ini Pengarang', 'Ini Penerbit', 1999, 57, 'https://via.placeholder.com/360x360.png/0044aa?text=animals+cats+ut', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(46, 'sint non atque', 'consequatur-est-quo-harum-mollitia-rem-recusandae', 'Ini Pengarang', 'Ini Penerbit', 1982, 59, 'https://via.placeholder.com/360x360.png/00ccbb?text=animals+cats+veniam', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(47, 'ea est error', 'aut-quia-consequatur-cupiditate-eveniet-voluptas-provident-et', 'Ini Pengarang', 'Ini Penerbit', 1991, 38, 'https://via.placeholder.com/360x360.png/007722?text=animals+cats+rerum', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(48, 'iusto nisi inventore', 'soluta-repudiandae-iusto-expedita-veniam-dignissimos', 'Ini Pengarang', 'Ini Penerbit', 2007, 84, 'https://via.placeholder.com/360x360.png/0000dd?text=animals+cats+et', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(49, 'a magnam cumque', 'laboriosam-qui-est-enim-reprehenderit-deserunt-sint', 'Ini Pengarang', 'Ini Penerbit', 1983, 6, 'https://via.placeholder.com/360x360.png/002255?text=animals+cats+iure', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(50, 'nam eos rem', 'omnis-odio-eos-necessitatibus-aut', 'Ini Pengarang', 'Ini Penerbit', 2010, 77, 'https://via.placeholder.com/360x360.png/0055ff?text=animals+cats+odit', '2022-11-02 20:18:21', '2022-11-02 20:18:21'),
(51, 'Pemrograman Python', 'pemrograman-python', 'alisa', 'Sindo', 2022, 100, 'images/bukus/pemrograman.png', '2022-11-02 22:54:45', '2022-11-02 22:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE `dashboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `kode` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_fak` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`kode`, `nama_fak`, `created_at`, `updated_at`) VALUES
('01', 'Ilmu Pendidikan', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
('02', 'Hukum', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
('03', 'Ekonomi dan Bisnis', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
('04', 'Teknik', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
('05', 'Ilmu Sosial dan Budaya', '2022-11-02 20:18:18', '2022-11-02 20:18:18'),
('06', 'Keislaman', '2022-11-02 20:18:18', '2022-11-02 20:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `kode` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_fak` char(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`kode`, `nama_jur`, `created_at`, `updated_at`, `kode_fak`) VALUES
('11', 'Informatika', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '04'),
('12', 'Hukum', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '02'),
('13', 'Pendidikan', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '01'),
('14', 'Ekonomi', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '03'),
('21', 'Industri', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '04'),
('31', 'Elektro', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '04');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `nim` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `no_hp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_agama` tinyint(1) NOT NULL,
  `kode_prodi` char(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`nim`, `nama`, `password`, `alamat`, `tanggal_lahir`, `jenis_kelamin`, `no_hp`, `created_at`, `updated_at`, `kode_agama`, `kode_prodi`) VALUES
('190411100010', 'Dr. Elinore Hickle', '$2y$10$peNyamWujWu4iFYRIxKnnulslEzeucXlQE4z9hCv.GCa5715jEpAm', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '21'),
('190411100011', 'Logan Harvey', '$2y$10$R7dW3h3AizEFzU43ocKeS.sjvJ8UW8fitpgnx80KRXbhAy56MMFO.', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '17'),
('190411100012', 'Dr. Rex Sauer', '$2y$10$CBjxI9fkkLau4a0k9GjjFeHMMSfgebaX2k.GOc/fYLWCDfklHU3B6', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '16'),
('190411100013', 'Melvin Bergstrom IV', '$2y$10$bwfGI4v9V8oCZJCNhV7ev.hWPnfT3PW6f5Jlm0WZbus.fk6qr//P6', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '20'),
('190411100014', 'Claudia Roberts', '$2y$10$ItPZZ51KPuWHzXi6kxIsnu30EOLSu/DPc/NAqt3DFFPKXDFREi3bm', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '14'),
('190411100015', 'Randy Bauch', '$2y$10$U9bVL2.O2cOzFklaKU/iwOrU6VjGUEDNsi0Jz5.2w1ijphh6YCZCe', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 3, '10'),
('190411100016', 'Kobe Cummings', '$2y$10$1Bb4LAbeN4xL6Ea8.zghqeZTAoWDWO0QtDz3zyrHqgmCAaJIDgJQC', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 3, '16'),
('190411100017', 'Florine Goodwin', '$2y$10$Q15s/LE3/jvM.i2qXTghXO6kX8GmjBY3YvUgOTQvtxiJzGWBZamOy', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '12'),
('190411100018', 'Letitia Carter PhD', '$2y$10$VP9Q8iPzDbwYpFOr.6bom.TmjWU4FWVcyZDgbZuGmZkIiEYYKhB22', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '16'),
('190411100019', 'Ernestina Doyle', '$2y$10$MHE0YOREiqOvi2dfQmJo7e5uvnDtecbGosYbW.qQt2gbLjTmrXNTe', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '14'),
('190411100020', 'Mrs. Sienna Bode DDS', '$2y$10$oQ48mfDwsoXDk45vQpHEse1skYidpi1RQSBp/WhGeE1P6uY4NwUzS', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '10'),
('190411100021', 'Eleonore Jones', '$2y$10$.kZ6VUPLT0SRLK9EXdeNTeJj.R9U13HlgDUUe1bUxvUWnPsvRwRpy', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 3, '17'),
('190411100022', 'Kamryn Gislason', '$2y$10$EWylRPZ5iO8XOOULpul.G.GhwCIX3X.g.fNp5SGN5O.lrjMSQzhvu', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 4, '19'),
('190411100023', 'Jennyfer Gottlieb', '$2y$10$TMZ/eFBjUwXCLLQxG6EfceEc6fXhGc7kL3.kFt1ly0Cf08fWMjdpm', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '10'),
('190411100024', 'Stephan Toy', '$2y$10$gO99KkGyjofcaD3kAmC0MujgM7JUDsHCKpJEMKMd/vWXGsfMGD2NG', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '19'),
('190411100025', 'Prof. Bartholome Kling', '$2y$10$I3PLLT5yxMDS/lQDK.VRZOULjmAqzWpUx4QBswwJjCgvuhpz2i82C', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '11'),
('190411100026', 'Pasquale Heaney', '$2y$10$CNEP9TgruBCsu3D/2o9lAOmVY9hx8D/rFCak4KzgCV0ePZ7FwiXTy', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '21'),
('190411100027', 'Lila Mueller', '$2y$10$FZnkSZeZjmzv9J.pvLZppO832zysAtGm0gAuU7sZPKczRnyRDffke', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 4, '16'),
('190411100028', 'Marlen Champlin Jr.', '$2y$10$9J.jQwKq6iKL.NVJcBzU5uLwi7JcNhxSkLB3L0nn6yCWLkrDjpYqO', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '12'),
('190411100029', 'Litzy Rohan', '$2y$10$zwmdr17uAEPh7aNnrp54l.4LMzLwoztK8sDpo2gPnjN5UlhPmbWlu', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '11'),
('190411100030', 'Anastasia Reichert', '$2y$10$2wlQfGTcVbYUfUZFhuZ9VOhjsKguvYINR53.qfUsvuDlShS6kX0.e', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '21'),
('190411100031', 'Prof. Patrick Stark', '$2y$10$Yy3v5m6EORSXMg400oau.uKExv0.uh7yO2of7fKyfzEF76PY9oCw.', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 4, '18'),
('190411100032', 'Golda Daugherty', '$2y$10$NngB5erpg48bwM0OVONeteoMN5oPJWHXC/NwdRpd8U2lPgA4HOf92', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '15'),
('190411100033', 'Prof. Twila Cremin', '$2y$10$M7/ugrev.YZA2Ocv37vxxu3BoReEnsbNxJcb2Gs.Sq8WQOPNKikfi', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 3, '16'),
('190411100034', 'Golden Hirthe', '$2y$10$W9J99bDtUiAibgL7ZUu0qua/5auFhYAWRy16pO6NuM2UIskpHr.E.', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 3, '13'),
('190411100035', 'Johathan Murray', '$2y$10$DVXiAD4ozKUhziQcXoWKHe2t.9oBqOKXWRLbIFnX2WPW49pnK9x8O', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '18'),
('190411100036', 'Prof. Mohamed Treutel Jr.', '$2y$10$nu9Ngr8HaAeZ67ym/7AJ1O3p3S7klyJ5F5RusRwtarSFq.Uc01SAG', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '21'),
('190411100037', 'Dr. Erin Gerhold', '$2y$10$GK6xcdXbfnvMBOQeXaAr5eI6/C3FwdjaFMaaaTu/FQItLIjqbCuqK', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '19'),
('190411100038', 'Dr. Aaron Wuckert', '$2y$10$FnlTcDXoMFH0LTnk790tDOdIXRekOQbtKrcc0/XaMV.xOel5fNt1e', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 3, '10'),
('190411100039', 'Gerald Hettinger', '$2y$10$Wdswbw47oHbcK9X/d/APnurlzQPfI11d2GCg8BlwIMuXB3M37Ma/i', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 4, '12'),
('190411100040', 'Kiana Toy', '$2y$10$Q1oDhnRmSSDsXSys8qCrSOy6skl6jPmpksyfqZ/JeCUCSUZ9mmZky', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '11'),
('190411100041', 'Miss Lilliana Mann', '$2y$10$3ALcZi.YoTXeLWICJfMlruUn.pquEwdth6OSJuYoNFMqeRehk2Bgu', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '18'),
('190411100042', 'Torrey Koepp', '$2y$10$rjz430jvQLI.UJeTcVEAJO4./jKqfy08PEKm4f2Kra1SXabKUGmD6', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 3, '18'),
('190411100043', 'Nora Murazik', '$2y$10$vWgHPE.PDIXH77B/zWfV4uQR6JEGRmmCJtn39bZAq7cI/HskUPApS', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '11'),
('190411100044', 'Rosalia Jacobs', '$2y$10$Esni.dIEYZ8YgxQ.T11sn.U5DlQFtVO8pJCwip4xzz5ws5BFRvJ1W', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '12'),
('190411100045', 'Angelica Bogisich', '$2y$10$O/ouoqegQ5IG43ezH62L1.n7iZNKmz2UZUZSA0lhfdr6lO6Qjz.AW', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '21'),
('190411100046', 'Alden Ziemann', '$2y$10$FwXCKdbqdThN6ljj7oM//OsifshJBTezidtid.lJVERuNsRnHMTNW', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '18'),
('190411100047', 'Stella Shanahan', '$2y$10$HUEipBN47KqiLH80PiTcZOYr737FJVF7gM2r5GyOS1H8wiaWvyHQy', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '12'),
('190411100048', 'Frankie Ratke', '$2y$10$FXsAz/hlIwOpjQParqjnTu9p6SquLr3OuUFU3X2eDUFJLUM4Y06BS', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '12'),
('190411100049', 'Prof. Harley Hermiston', '$2y$10$RnzIDsXmm7PyDG8f07hsO.QpYJjBubd4PE3riS1NAXQhYyUvyco4q', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '15'),
('190411100050', 'Stephan Marquardt V', '$2y$10$8EOKCHwTbPqsLJL.c9Cuk.k0Y9g9cgP6t7eqvUhK0f0.c6qKq8mWa', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 4, '16'),
('190411100051', 'Ms. Kellie Pollich', '$2y$10$ukRuJff42vpHK//vVJM0p.g7OlQTg8DBMhEcVBbpvz6gSPTXFOE96', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '10'),
('190411100052', 'Dr. Ole Keebler', '$2y$10$mdoNm83wu4HxpcG2WTQCM.cH3dldtbbDQCX.4RhRLFh.aDOonVPvS', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '20'),
('190411100053', 'Dr. Maryam Ratke', '$2y$10$1ocZeY6kvMAo7oEp2/SiguLWHd3WF8ZT8TmP.fsvBhS7p6MhVuT3.', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '17'),
('190411100054', 'Dr. Elisabeth Tillman', '$2y$10$MHAdy9yXiWwEWmpFzOrhnunY5GA1szVa5oeCS.q1OjA/3MlAB.pVK', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 4, '19'),
('190411100055', 'Sherman Waters', '$2y$10$k2Yasb/3Jmc4ahMjbdqZE.vUcWC5nYpNkoKDCHaCMwZ/iAi.oYRiq', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '16'),
('190411100056', 'Raegan Murphy', '$2y$10$DkW.UY4Znsvp637XCQ20JOVkQQnQzbuYCc/mdD39SthLotuAovzHi', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '10'),
('190411100057', 'Letitia Prosacco', '$2y$10$vfNe0rWaDe7RDsiUnvtc1.Ml92FZK3pD13ol1xb0CmUm13zPjIucS', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 4, '20'),
('190411100058', 'Prof. Grayson Hilpert', '$2y$10$ieQh1mx52DFVJSDBYRdsne1qAst3TOR0o66/wF58RLh5omiu3y9EK', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 1, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 5, '12'),
('190411100059', 'Lora Maggio', '$2y$10$k2Juzr9lgxDLpxmh9AhK/uhGPFUuB0j/USQ2zTCPHxhEVk6XveAhW', 'Jl. Ini Alamatnya Mahasiswa', '2022-11-03', 0, '0823472784783', '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '15');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_31_100941_create_admins_table', 1),
(6, '2022_10_31_100957_create_bukus_table', 1),
(7, '2022_10_31_101127_create_fakultas_table', 1),
(8, '2022_10_31_101134_create_jurusans_table', 1),
(9, '2022_10_31_101142_create_program_studis_table', 1),
(10, '2022_10_31_101149_create_agamas_table', 1),
(11, '2022_10_31_101159_create_mahasiswas_table', 1),
(12, '2022_10_31_101218_create_peminjamans_table', 1),
(13, '2022_11_01_040400_create_dashboards_table', 1);

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
-- Table structure for table `peminjamen`
--

CREATE TABLE `peminjamen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `nim_mahasiswa` char(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjamen`
--

INSERT INTO `peminjamen` (`id`, `tgl_pinjam`, `tgl_kembali`, `denda`, `status`, `jumlah`, `created_at`, `updated_at`, `id_buku`, `nim_mahasiswa`) VALUES
(1, '2022-10-20', NULL, 0, 2, 3, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 12, '190411100010'),
(2, '2022-11-01', NULL, 0, 0, 2, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 14, '190411100011'),
(3, '2022-11-01', NULL, 0, 0, 5, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 24, '190411100012'),
(4, '2022-11-01', NULL, 0, 1, 1, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 27, '190411100013'),
(5, '2022-11-01', NULL, 0, 1, 5, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 6, '190411100014'),
(6, '2022-11-01', NULL, 0, 0, 2, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 17, '190411100015'),
(7, '2022-11-01', NULL, 0, 2, 1, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 4, '190411100016'),
(8, '2022-11-01', NULL, 0, 0, 3, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 25, '190411100017'),
(9, '2022-11-01', NULL, 0, 0, 2, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 14, '190411100018'),
(10, '2022-11-01', NULL, 0, 0, 3, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 8, '190411100019'),
(11, '2022-11-01', NULL, 0, 0, 4, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 23, '190411100020'),
(12, '2022-11-01', NULL, 0, 2, 1, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 24, '190411100021'),
(13, '2022-11-01', NULL, 0, 2, 5, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 17, '190411100022'),
(14, '2022-11-01', NULL, 0, 1, 3, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 1, '190411100023'),
(15, '2022-11-01', NULL, 0, 1, 3, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 19, '190411100024'),
(16, '2022-11-01', NULL, 0, 2, 1, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 17, '190411100025'),
(17, '2022-11-01', NULL, 0, 0, 2, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 3, '190411100026'),
(18, '2022-11-01', NULL, 0, 2, 4, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 16, '190411100027'),
(19, '2022-11-01', NULL, 0, 1, 3, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 17, '190411100028'),
(20, '2022-11-01', NULL, 0, 1, 5, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 2, '190411100029'),
(21, '2022-10-26', '2022-11-03', 0, 2, 2, '2022-11-02 20:18:21', '2022-11-02 20:18:21', 11, '190411100010');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_studis`
--

CREATE TABLE `program_studis` (
  `kode` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_prod` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_jur` char(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_studis`
--

INSERT INTO `program_studis` (`kode`, `nama_prod`, `created_at`, `updated_at`, `kode_jur`) VALUES
('10', 'Teknik Informatika', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '11'),
('11', 'Sistem Informasi', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '11'),
('12', 'Teknik Industri', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '21'),
('13', 'Teknik Elektro', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '31'),
('14', 'Teknik Mekatronika', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '31'),
('15', 'Ilmu Hukum', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '12'),
('16', 'PGSD', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '13'),
('17', 'Pendidikan Informatika', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '13'),
('18', 'Pendidikan IPA', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '13'),
('19', 'Akuntansi', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '14'),
('20', 'Ekonomi Pembangunan', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '14'),
('21', 'Manajemen', '2022-11-02 20:18:18', '2022-11-02 20:18:18', '14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `bukus`
--
ALTER TABLE `bukus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bukus_slug_unique` (`slug`);

--
-- Indexes for table `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `jurusans_kode_fak_foreign` (`kode_fak`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `mahasiswas_kode_agama_foreign` (`kode_agama`),
  ADD KEY `mahasiswas_kode_prodi_foreign` (`kode_prodi`);

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
-- Indexes for table `peminjamen`
--
ALTER TABLE `peminjamen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamen_id_buku_foreign` (`id_buku`),
  ADD KEY `peminjamen_nim_mahasiswa_foreign` (`nim_mahasiswa`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `program_studis`
--
ALTER TABLE `program_studis`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `program_studis_kode_jur_foreign` (`kode_jur`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bukus`
--
ALTER TABLE `bukus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `peminjamen`
--
ALTER TABLE `peminjamen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD CONSTRAINT `jurusans_kode_fak_foreign` FOREIGN KEY (`kode_fak`) REFERENCES `fakultas` (`kode`);

--
-- Constraints for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD CONSTRAINT `mahasiswas_kode_agama_foreign` FOREIGN KEY (`kode_agama`) REFERENCES `agamas` (`kode`),
  ADD CONSTRAINT `mahasiswas_kode_prodi_foreign` FOREIGN KEY (`kode_prodi`) REFERENCES `program_studis` (`kode`);

--
-- Constraints for table `peminjamen`
--
ALTER TABLE `peminjamen`
  ADD CONSTRAINT `peminjamen_id_buku_foreign` FOREIGN KEY (`id_buku`) REFERENCES `bukus` (`id`),
  ADD CONSTRAINT `peminjamen_nim_mahasiswa_foreign` FOREIGN KEY (`nim_mahasiswa`) REFERENCES `mahasiswas` (`nim`);

--
-- Constraints for table `program_studis`
--
ALTER TABLE `program_studis`
  ADD CONSTRAINT `program_studis_kode_jur_foreign` FOREIGN KEY (`kode_jur`) REFERENCES `jurusans` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
