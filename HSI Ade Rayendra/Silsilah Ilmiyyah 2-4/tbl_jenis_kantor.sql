-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 10.90.64.3
-- Generation Time: Mar 15, 2023 at 12:19 PM
-- Server version: 10.5.15-MariaDB-0+deb11u1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_kantor`
--

CREATE TABLE `tbl_jenis_kantor` (
  `id_jenis_kantor` int(11) NOT NULL,
  `parent_id_jenis_kantor` int(11) NOT NULL DEFAULT 0,
  `nama_jenis_kantor` varchar(50) NOT NULL DEFAULT '0',
  `id_kantor` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jenis_kantor`
--

INSERT INTO `tbl_jenis_kantor` (`id_jenis_kantor`, `parent_id_jenis_kantor`, `nama_jenis_kantor`, `id_kantor`) VALUES
(1, 0, 'PEMDA', 0),
(2, 0, 'KECAMATAN', 0),
(3, 0, 'PUSKESMAS', 0),
(4, 0, 'SEKOLAH', 0),
(5, 1, '0', 1),
(6, 1, '0', 7),
(7, 1, '0', 8),
(8, 1, '0', 11),
(9, 1, '0', 12),
(10, 1, '0', 13),
(12, 1, '0', 16),
(13, 1, '0', 17),
(15, 1, '0', 20),
(16, 1, '0', 21),
(17, 1, '0', 22),
(19, 1, '0', 24),
(20, 1, '0', 25),
(21, 1, '0', 26),
(23, 1, '0', 43),
(24, 1, '0', 23),
(25, 1, '0', 27),
(26, 2, '0', 56),
(27, 1, '0', 55),
(28, 2, '0', 574),
(29, 2, '0', 429),
(31, 2, '0', 428),
(32, 2, '0', 427),
(33, 1, '0', 411),
(34, 2, '0', 426),
(35, 2, '0', 425),
(36, 2, '0', 424),
(37, 2, '0', 423),
(38, 2, '0', 422),
(39, 2, '0', 420),
(40, 1, '0', 409),
(41, 2, '0', 474),
(42, 1, '0', 418),
(43, 1, '0', 413),
(44, 2, '0', 30),
(46, 2, '0', 29),
(47, 2, '0', 31),
(48, 2, '0', 473),
(49, 2, '0', 28),
(50, 1, '0', 402),
(51, 3, '0', 33),
(52, 1, '0', 417),
(53, 1, '0', 421),
(54, 1, '0', 419),
(55, 1, '0', 536),
(56, 3, '0', 32),
(57, 3, '0', 36),
(58, 3, '0', 399),
(59, 3, '0', 400),
(60, 3, '0', 385),
(61, 3, '0', 393),
(62, 3, '0', 407),
(63, 3, '0', 396),
(64, 3, '0', 401),
(65, 3, '0', 404),
(66, 3, '0', 34),
(67, 3, '0', 386),
(68, 3, '0', 387),
(69, 3, '0', 405),
(70, 3, '0', 394),
(71, 3, '0', 388),
(72, 3, '0', 389),
(73, 3, '0', 406),
(74, 3, '0', 384),
(75, 3, '0', 392),
(76, 3, '0', 398),
(77, 3, '0', 391),
(78, 3, '0', 397),
(79, 3, '0', 390),
(80, 4, '0', 610),
(81, 1, '0', 610);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jenis_kantor`
--
ALTER TABLE `tbl_jenis_kantor`
  ADD PRIMARY KEY (`id_jenis_kantor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jenis_kantor`
--
ALTER TABLE `tbl_jenis_kantor`
  MODIFY `id_jenis_kantor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
