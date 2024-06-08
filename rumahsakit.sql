-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 06:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` int(11) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `id_provinsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `nama_kabupaten`, `id_provinsi`) VALUES
(1, 'Kabupaten Aceh Barat', 1),
(2, 'Kabupaten Aceh Barat Daya', 1),
(3, 'Kabupaten Asahan', 2),
(4, 'Kabupaten Dairi', 2),
(5, 'Kabupaten Agam', 4),
(6, 'Kabupaten Kepulauan Mentawai', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id` int(11) NOT NULL,
  `nama_kamar` varchar(100) NOT NULL,
  `tersedia` int(11) NOT NULL,
  `kosong` int(11) NOT NULL,
  `antrian` int(11) NOT NULL,
  `id_rumah` int(11) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `long` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id`, `nama_kamar`, `tersedia`, `kosong`, `antrian`, `id_rumah`, `lat`, `long`) VALUES
(1, 'Kamar Melati', 5, 2, 12, 2, '2.7462567293961335\r\n', '98.31652476931424'),
(2, 'Kamar Mawar', 5, 0, 2, 2, '2.7462567293961335\r\n', '98.31652476931424');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `nama_provinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama_provinsi`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Utara '),
(3, 'Sumatera Selatan'),
(4, 'Sumatera Barat'),
(5, 'Bengkulu'),
(6, 'Riau'),
(7, 'Kepulauan Riau'),
(8, 'Jambi'),
(9, 'Lampung'),
(10, 'Bangka Belitung'),
(11, 'Kalimantan Barat'),
(12, 'Kalimantan Timur');

-- --------------------------------------------------------

--
-- Table structure for table `rumah`
--

CREATE TABLE `rumah` (
  `id` int(11) NOT NULL,
  `id_kabupaten` int(10) NOT NULL,
  `nama_rumah_sakit` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` text NOT NULL,
  `lat` varchar(100) NOT NULL,
  `long` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rumah`
--

INSERT INTO `rumah` (`id`, `id_kabupaten`, `nama_rumah_sakit`, `deskripsi`, `gambar`, `alamat`, `no_telp`, `lat`, `long`) VALUES
(1, 4, 'RSUD SIDIKALANG', 'General hospital in Sidikalang, North Sumatra', 'sidikalang.jpg', 'Batang Beruh, Sidikalang, Dairi Regency, North Sumatra 22218', '089766543788', '2.7391476342279524\r\n', '98.31914416931424'),
(2, 4, 'Rumah Sakit Umum Serenapita', 'Hospital in Sidikalang, North Sumatra', 'serenapita.jpeg', 'Jl. Sisingamangaraja No.91, Kota Sidikalang, Kec. Sidikalang, Kabupaten Dairi, Sumatera Utara 22218', '675436789', '2.7462567293961335', '98.31652476931424'),
(3, 3, 'Rumah Sakit Umum Daerah H. Abdul Manan Simatupang', 'General hospital in Selawan, North Sumatra', 'asahan.jpg', ' Jl. Sisingamangaraja No.315, Kisaran Kota, Kec. Kota Kisaran Barat, Kabupaten Asahan, Sumatera Utara 21211', '(0623) 41785', '2.919810608718163', '99.55211586931424'),
(4, 3, 'Rumah Sakit Permata Hati', 'Hospital in Selawan, North Sumatra', 'permata.jpg', 'Jl. Ir. Juanda No.21, Karang Anyer, Kec. Kota Kisaran Timur, Kabupaten Asahan, Sumatera Utara 21221', '0812-6217-8254', '2.987948756520918', '99.6424447846571');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rumah_sakit` (`id_rumah`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumah`
--
ALTER TABLE `rumah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rumah`
--
ALTER TABLE `rumah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `id_provinsi` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id`);

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `id_rumah_sakit` FOREIGN KEY (`id_rumah`) REFERENCES `rumah` (`id`);

--
-- Constraints for table `rumah`
--
ALTER TABLE `rumah`
  ADD CONSTRAINT `id_kabupaten` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
