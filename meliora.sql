-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2026 at 04:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meliora`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_detail`
--

CREATE TABLE `absensi_detail` (
  `id_detail` int(11) NOT NULL,
  `id_absensi` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `status` enum('Hadir','Izin','Sakit','Alpa') DEFAULT 'Hadir',
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asesmen`
--

CREATE TABLE `asesmen` (
  `id_asesmen` int(11) NOT NULL,
  `id_modul` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `catatan_perkembangan`
--

CREATE TABLE `catatan_perkembangan` (
  `id_catatan` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_perkembangan`
--

CREATE TABLE `kategori_perkembangan` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_modul` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modul_ajar`
--

CREATE TABLE `modul_ajar` (
  `id_modul` int(11) NOT NULL,
  `id_tema` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL,
  `nama_tema` varchar(100) DEFAULT NULL,
  `subtema` varchar(100) DEFAULT NULL,
  `minggu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `role` enum('guru','kepala_sekolah') DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `absensi_detail`
--
ALTER TABLE `absensi_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_absensi` (`id_absensi`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `asesmen`
--
ALTER TABLE `asesmen`
  ADD PRIMARY KEY (`id_asesmen`),
  ADD KEY `id_modul` (`id_modul`);

--
-- Indexes for table `catatan_perkembangan`
--
ALTER TABLE `catatan_perkembangan`
  ADD PRIMARY KEY (`id_catatan`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kategori_perkembangan`
--
ALTER TABLE `kategori_perkembangan`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `id_modul` (`id_modul`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `modul_ajar`
--
ALTER TABLE `modul_ajar`
  ADD PRIMARY KEY (`id_modul`),
  ADD KEY `id_tema` (`id_tema`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absensi_detail`
--
ALTER TABLE `absensi_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asesmen`
--
ALTER TABLE `asesmen`
  MODIFY `id_asesmen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catatan_perkembangan`
--
ALTER TABLE `catatan_perkembangan`
  MODIFY `id_catatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_perkembangan`
--
ALTER TABLE `kategori_perkembangan`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modul_ajar`
--
ALTER TABLE `modul_ajar`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `absensi_detail`
--
ALTER TABLE `absensi_detail`
  ADD CONSTRAINT `absensi_detail_ibfk_1` FOREIGN KEY (`id_absensi`) REFERENCES `absensi` (`id_absensi`),
  ADD CONSTRAINT `absensi_detail_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`);

--
-- Constraints for table `asesmen`
--
ALTER TABLE `asesmen`
  ADD CONSTRAINT `asesmen_ibfk_1` FOREIGN KEY (`id_modul`) REFERENCES `modul_ajar` (`id_modul`);

--
-- Constraints for table `catatan_perkembangan`
--
ALTER TABLE `catatan_perkembangan`
  ADD CONSTRAINT `catatan_perkembangan_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `catatan_perkembangan_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_perkembangan` (`id_kategori`),
  ADD CONSTRAINT `catatan_perkembangan_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_ibfk_1` FOREIGN KEY (`id_modul`) REFERENCES `modul_ajar` (`id_modul`);

--
-- Constraints for table `modul_ajar`
--
ALTER TABLE `modul_ajar`
  ADD CONSTRAINT `modul_ajar_ibfk_1` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`),
  ADD CONSTRAINT `modul_ajar_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
