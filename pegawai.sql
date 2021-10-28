-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 04:28 PM
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
-- Database: `pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-10-28-162608', 'App\\Database\\Migrations\\Pegawai', 'default', 'App', 1635414091, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `jenis_kelamin`, `no_telp`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
(14, 'Rina Purwanti', 'wanita', '6226423449396', 'lantar.firgantoro@irawan.ac.id', 'Gg. Untung Suropati No. 625, Ternate 95906, Banten', '2021-10-28 08:47:04', '2021-10-28 08:47:04'),
(15, 'Hartaya Damanik', 'pria', '628986537335', 'anarpati@gmail.co.id', 'Kpg. Cemara No. 433, Administrasi Jakarta Selatan 13383, JaTeng', '2021-10-28 08:47:38', '2021-10-28 09:27:02'),
(17, 'Diah Permata', 'wanita', '045832105939', 'kamaria.nurdiyanti@mustofa.mil.id', 'Kpg. Acordion No. 513, Probolinggo 80129, Lampung', '2021-10-28 08:49:21', '2021-10-28 08:49:21'),
(18, 'Umar Latupono', 'pria', '06786948108', 'putra.zamira@yahoo.co.id', 'Gg. Babakan No. 730, Kendari 82861, Bali', '2021-10-28 08:50:06', '2021-10-28 08:50:06'),
(19, 'Yuliana Padmasari', 'wanita', '06786948108', 'putra.zamira@yahoo.co.id', 'Gg. Babakan No. 730, Kendari 82861, Bali', '2021-10-28 08:50:59', '2021-10-28 08:50:59'),
(20, 'Irfan Tamba', 'pria', '02842802813', 'garang77@gmail.com', 'Jln. Bass No. 929, Pangkal Pinang 76346, SulBar', '2021-10-28 08:51:39', '2021-10-28 08:51:39'),
(21, 'Cagak Natsir', 'pria', '033407020726', 'kacung91@yahoo.co.id', 'Psr. Antapani Lama No. 135, Pematangsiantar 34553, KalUt', '2021-10-28 08:52:03', '2021-10-28 08:52:03'),
(22, 'Padmi Wastuti', 'wanita', '02501454144', 'haryanti.cindy@yahoo.com', 'Psr. Astana Anyar No. 961, Tasikmalaya 87325, JaTim', '2021-10-28 08:52:31', '2021-10-28 08:52:31'),
(23, 'Wadi Gunarto', 'pria', '087767525387', 'maida.mandala@yahoo.co.id', 'Ki. Pelajar Pejuang 45 No. 472, Serang 23789, BaBel', '2021-10-28 08:53:02', '2021-10-28 08:53:02'),
(24, 'Eja Napitupulu', 'pria', '627070253464', 'rahmawati.shania@gmail.com', 'Dk. Bazuka Raya No. 730, Bengkulu 86804, MalUt', '2021-10-28 08:53:35', '2021-10-28 08:53:35'),
(25, 'Safina Aryani', 'wanita', '06932276874', 'cager.hassanah@rahmawati.tv', 'Dk. Sentot Alibasa No. 703, Administrasi Jakarta Selatan 96243, SumUt', '2021-10-28 08:54:05', '2021-10-28 08:54:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
