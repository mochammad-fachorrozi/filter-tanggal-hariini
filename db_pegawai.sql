-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2022 at 05:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cuti`
--

CREATE TABLE `tb_cuti` (
  `id` int(11) NOT NULL,
  `nomor` varchar(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cuti`
--

INSERT INTO `tb_cuti` (`id`, `nomor`, `nama`, `tgl_pengajuan`, `ket`) VALUES
(1, 'CT2019/I/0901', 'Hamdan Arif', '2022-04-22', 'Cuti Tahunan'),
(2, 'CT2019/I/0605', 'Riana Okta', '2022-04-24', 'Cuti Bersalin'),
(3, 'CT2019/I/0903', 'Ilham K', '2022-04-24', 'Cuti Besar'),
(4, 'CT2019/I/0907', 'Gani', '2019-01-04', 'Cuti Mendesak'),
(5, 'CT2019/I/0201', 'Laila Fajar', '2019-01-04', 'Cuti Umum'),
(6, 'CT2019/I/0403', 'Ninda Dewi', '2019-01-04', 'Cuti Tahunan'),
(7, 'CT2019/II/8902', 'Mariska', '2019-01-05', 'Cuti Alasan Penting');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cuti`
--
ALTER TABLE `tb_cuti`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
