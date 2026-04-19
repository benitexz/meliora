-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2026 at 01:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `annual_plan`
--

CREATE TABLE `annual_plan` (
  `id` int(11) NOT NULL,
  `target` varchar(100) DEFAULT NULL,
  `indikator` text DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annual_plan`
--

INSERT INTO `annual_plan` (`id`, `target`, `indikator`, `waktu`) VALUES
(1, 'Literasi Awal', 'Anak mengenal huruf vokal dan konsonan dasar', 'Semester 1'),
(2, 'Literasi Awal', 'Anak mampu menulis nama sendiri', 'Semester 1'),
(3, 'Literasi Awal', 'Anak memahami cerita sederhana melalui gambar', 'Semester 2'),
(4, 'Numerasi Dasar', 'Anak mengenal angka 1-20', 'Semester 1'),
(5, 'Numerasi Dasar', 'Anak mampu menghitung benda sederhana', 'Semester 1'),
(6, 'Numerasi Dasar', 'Anak memahami konsep lebih banyak dan lebih sedikit', 'Semester 2'),
(7, 'Sosial Emosional', 'Anak mampu berbagi dengan teman', 'Semester 1'),
(8, 'Sosial Emosional', 'Anak mampu bekerja sama dalam kelompok kecil', 'Semester 1-2'),
(9, 'Sosial Emosional', 'Anak mampu mengungkapkan perasaan dengan baik', 'Semester 2'),
(10, 'Motorik Halus', 'Anak mampu memegang pensil dengan benar', 'Semester 1'),
(11, 'Motorik Halus', 'Anak mampu menggunting mengikuti pola', 'Semester 2'),
(12, 'Motorik Kasar', 'Anak mampu melompat dengan seimbang', 'Semester 1'),
(13, 'Motorik Kasar', 'Anak mampu mengikuti gerakan senam sederhana', 'Semester 2'),
(14, 'Kemandirian', 'Anak mampu merapikan alat bermain sendiri', 'Bulanan'),
(15, 'Kemandirian', 'Anak mampu makan tanpa bantuan', 'Semester 1'),
(16, 'Dokumentasi', 'Guru mengunggah dokumentasi kegiatan mingguan', 'Bulanan'),
(17, 'Dokumentasi', 'Laporan perkembangan anak diupdate setiap bulan', 'Bulanan'),
(18, 'Kreativitas', 'Anak mampu membuat karya dari bahan sederhana', 'Semester 1'),
(19, 'Kreativitas', 'Anak mampu menggambar sesuai imajinasi', 'Semester 2');

-- --------------------------------------------------------

--
-- Table structure for table `asesmen`
--

CREATE TABLE `asesmen` (
  `id_asesmen` int(11) NOT NULL,
  `id_modul` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `nama`, `status`, `catatan`, `tanggal`) VALUES
(1, 'Aisyah Putri', 'Hadir', '-', '2026-03-12'),
(2, 'Budi Santoso', 'Hadir', '-', '2026-03-12'),
(3, 'Citra Lestari', 'Izin', 'Izin keluarga', '2026-03-12'),
(4, 'Dimas Pratama', 'Hadir', '-', '2026-03-12'),
(5, 'Eka Saputra', 'Sakit', 'Demam', '2026-03-12'),
(6, 'Fajar Nugroho', 'Hadir', '-', '2026-03-12'),
(7, 'Gita Maharani', 'Hadir', '-', '2026-03-12'),
(8, 'Hadi Wijaya', 'Izin', 'Acara keluarga', '2026-03-12'),
(9, 'Intan Permata', 'Hadir', '-', '2026-03-12'),
(10, 'Joko Susilo', 'Hadir', '-', '2026-03-12'),
(11, 'Kartika Dewi', 'Sakit', 'Flu', '2026-03-12'),
(12, 'Lukman Hakim', 'Hadir', '-', '2026-03-12'),
(13, 'Maya Sari', 'Hadir', '-', '2026-03-12'),
(14, 'Nanda Saputra', 'Hadir', '-', '2026-03-12'),
(15, 'Oki Prasetyo', 'Izin', 'Keperluan pribadi', '2026-03-12'),
(16, 'wefwf', 'Izin', 'ewfewf', '2026-04-20');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_perkembangan`
--

CREATE TABLE `kategori_perkembangan` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_modul` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lesson_plan`
--

CREATE TABLE `lesson_plan` (
  `id` int(11) NOT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `subtema` varchar(100) DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `kegiatan` text DEFAULT NULL,
  `asesmen` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_plan`
--

INSERT INTO `lesson_plan` (`id`, `tema`, `subtema`, `tujuan`, `kegiatan`, `asesmen`) VALUES
(1, 'Lingkungan Sekitar', 'Kebersihan Sekolah', 'Anak mampu memahami pentingnya menjaga kebersihan lingkungan sekitar.', 'Menyanyi lagu kebersihan • Menyapu kelas bersama • Diskusi sederhana tentang sampah.', 'Observasi partisipasi • Dokumentasi kegiatan • Tanya jawab sederhana'),
(2, 'Alam', 'Binatang', 'Anak mengenal berbagai jenis hewan dan suara yang dihasilkan.', 'Menonton video binatang • Menirukan suara hewan • Menggambar binatang favorit.', 'Penilaian kreativitas gambar • Observasi interaksi'),
(3, 'Diri Sendiri', 'Keluargaku', 'Anak mampu menyebutkan anggota keluarga inti dengan benar.', 'Bercerita tentang keluarga • Membuat gambar keluarga • Bermain peran keluarga.', 'Observasi kemampuan bercerita • Hasil gambar'),
(4, 'Transportasi', 'Kendaraan Darat', 'Anak mengenal jenis kendaraan darat dan fungsinya.', 'Mengenal gambar kendaraan • Bermain mobil-mobilan • Diskusi sederhana.', 'Observasi pemahaman • Keaktifan dalam bermain'),
(5, 'Profesi', 'Pekerjaan', 'Anak mengenal berbagai profesi di lingkungan sekitar.', 'Bermain peran dokter dan polisi • Menonton gambar profesi • Diskusi.', 'Observasi role play • Partisipasi kelas'),
(6, 'Tanaman', 'Tumbuhan di Sekitar', 'Anak mengenal bagian-bagian tumbuhan sederhana.', 'Mengamati tanaman • Menanam biji • Menggambar tanaman.', 'Observasi kegiatan praktik • Hasil karya gambar'),
(7, 'Air, Tanah, Udara', 'Unsur Alam', 'Anak memahami bahwa alam terdiri dari unsur air, tanah, dan udara.', 'Percobaan sederhana air • Bermain di luar kelas • Diskusi ringan.', 'Observasi keterlibatan • Tanya jawab'),
(8, 'Seni & Kreativitas', 'Menggambar Bebas', 'Anak mampu mengekspresikan ide melalui gambar.', 'Menggambar bebas • Mewarnai • Pameran hasil karya.', 'Penilaian kreativitas • Hasil gambar');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_notes`
--

CREATE TABLE `meeting_notes` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `pembahasan` text DEFAULT NULL,
  `kesimpulan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting_notes`
--

INSERT INTO `meeting_notes` (`id`, `judul`, `tanggal`, `pembahasan`, `kesimpulan`) VALUES
(1, 'Rapat Evaluasi Bulanan', '2026-09-10', '- Evaluasi perkembangan siswa kelas K2.\r\n- Diskusi kendala kegiatan kelompok.\r\n- Evaluasi metode pembelajaran.', 'Perlu peningkatan metode pembelajaran dan komunikasi dengan orang tua.'),
(2, 'Rapat Kurikulum Merdeka', '2026-09-12', '- Penyesuaian modul ajar dengan Kurikulum Merdeka.\r\n- Diskusi capaian pembelajaran fase A.', 'Modul perlu disederhanakan dan lebih banyak aktivitas praktik.'),
(3, 'Koordinasi Guru Kelas', '2026-09-15', '- Pembagian tugas guru.\r\n- Evaluasi jadwal pembelajaran.', 'Koordinasi sudah baik namun perlu sistem jadwal digital.'),
(4, 'Persiapan Kegiatan Sekolah', '2026-09-18', '- Persiapan pentas seni.\r\n- Pembagian peran siswa.', 'Perlu latihan tambahan dan koordinasi dengan wali murid.');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perkembangan`
--

CREATE TABLE `perkembangan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perkembangan`
--

INSERT INTO `perkembangan` (`id`, `nama`, `kategori`, `catatan`, `tanggal`) VALUES
(1, 'Siswa K2-01', 'Bahasa', 'Anak mampu menyebutkan kosakata baru dan berani berbicara di depan kelas.', '2026-03-10'),
(2, 'Siswa K2-01', 'Sosial Emosional', 'Mulai menunjukkan sikap percaya diri saat bermain bersama teman.', '2026-03-11'),
(3, 'Siswa K2-02', 'Kognitif', 'Mampu mengenal pola sederhana dan menyusun balok dengan baik.', '2026-03-10'),
(4, 'Siswa K2-02', 'Fisik Motorik', 'Koordinasi tangan dan mata sudah cukup baik saat mewarnai.', '2026-03-11'),
(5, 'Siswa K2-03', 'Agama & Moral', 'Anak mulai terbiasa berdoa sebelum dan sesudah kegiatan.', '2026-03-10'),
(6, 'Siswa K2-03', 'Seni', 'Mampu menggambar bebas dengan variasi warna yang menarik.', '2026-03-12'),
(7, 'Siswa K2-04', 'Bahasa', 'Mulai mampu menyusun kalimat sederhana dengan bantuan guru.', '2026-03-11'),
(8, 'Siswa K2-04', 'Sosial Emosional', 'Masih perlu bimbingan dalam berbagi dengan teman.', '2026-03-12'),
(9, 'Siswa K2-05', 'Kognitif', 'Mampu berhitung angka 1-10 dengan lancar.', '2026-03-10'),
(10, 'Siswa K2-05', 'Fisik Motorik', 'Sudah mampu menggunting mengikuti pola garis.', '2026-03-12'),
(11, 'Siswa K2-06', 'Bahasa', 'Berani menjawab pertanyaan sederhana dari guru.', '2026-03-10'),
(12, 'Siswa K2-06', 'Seni', 'Mampu membuat karya dari kertas lipat sederhana.', '2026-03-11'),
(13, 'Siswa K2-07', 'Sosial Emosional', 'Menunjukkan sikap empati saat teman mengalami kesulitan.', '2026-03-11'),
(14, 'Siswa K2-07', 'Agama & Moral', 'Mengikuti kegiatan doa bersama dengan baik.', '2026-03-12'),
(15, 'Siswa K2-08', 'Kognitif', 'Mulai memahami konsep besar dan kecil.', '2026-03-10'),
(16, 'Siswa K2-08', 'Fisik Motorik', 'Aktif dalam kegiatan olahraga ringan dan senam.', '2026-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_development`
--

CREATE TABLE `student_development` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `minggu` varchar(20) DEFAULT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_development`
--

INSERT INTO `student_development` (`id`, `student_id`, `minggu`, `catatan`) VALUES
(1, 1, 'Minggu 1', 'Aisyah mulai percaya diri saat bercerita di depan kelas.'),
(2, 1, 'Minggu 2', 'Kosakata berkembang baik dalam percakapan harian.'),
(3, 1, 'Minggu 3', 'Aktif dalam kegiatan kelompok dan mudah beradaptasi.'),
(4, 2, 'Minggu 1', 'Bima mampu mengenal angka 1–10 dengan baik.'),
(5, 2, 'Minggu 2', 'Mulai memahami konsep lebih besar dan lebih kecil.'),
(6, 2, 'Minggu 3', 'Motorik halus meningkat saat mewarnai.'),
(7, 3, 'Minggu 1', 'Citra menunjukkan sikap ramah terhadap teman.'),
(8, 3, 'Minggu 2', 'Mampu mengikuti instruksi guru dengan baik.'),
(9, 3, 'Minggu 3', 'Meningkat dalam aktivitas seni menggambar.'),
(10, 4, 'Minggu 1', 'Daffa masih perlu dorongan untuk berbicara.'),
(11, 4, 'Minggu 2', 'Mulai berani menjawab pertanyaan sederhana.'),
(12, 4, 'Minggu 3', 'Lebih aktif dalam kegiatan kelas.'),
(13, 5, 'Minggu 1', 'Elena menunjukkan kemampuan motorik yang baik.'),
(14, 5, 'Minggu 2', 'Mampu mengikuti senam dan gerakan terarah.'),
(15, 5, 'Minggu 3', 'Fokus belajar semakin meningkat.'),
(16, 6, 'Minggu 1', 'Farhan aktif dalam kegiatan bermain kelompok.'),
(17, 6, 'Minggu 2', 'Mulai mampu mengontrol emosi saat bermain.'),
(18, 6, 'Minggu 3', 'Menunjukkan peningkatan dalam bahasa.'),
(19, 7, 'Minggu 1', 'Gita mudah berinteraksi dengan teman baru.'),
(20, 7, 'Minggu 2', 'Mampu mengikuti aturan kelas dengan baik.'),
(21, 7, 'Minggu 3', 'Kreativitas meningkat dalam kegiatan seni.'),
(22, 8, 'Minggu 1', 'Hana sangat aktif dan ceria di kelas.'),
(23, 8, 'Minggu 2', 'Mampu bekerja sama dengan teman dengan baik.'),
(24, 8, 'Minggu 3', 'Perkembangan bahasa sangat baik.');

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--

CREATE TABLE `student_profile` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `wali` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_profile`
--

INSERT INTO `student_profile` (`id`, `nama`, `kelas`, `ttl`, `wali`) VALUES
(1, 'Aisyah Putri Ramadhani', 'K2', '12 Mei 2019', 'Ibu Sari Wulandari'),
(2, 'Bima Aditya Pratama', 'K2', '03 Juni 2019', 'Bapak Andi Pratama'),
(3, 'Citra Nabila Sari', 'K2', '21 Juli 2019', 'Ibu Dewi Lestari'),
(4, 'Daffa Al Ghifari', 'K2', '15 Agustus 2019', 'Bapak Rudi Hartono'),
(5, 'Elena Maharani Putri', 'K2', '09 September 2019', 'Ibu Lina Marlina'),
(6, 'Farhan Rizky Pratama', 'K2', '18 Oktober 2019', 'Bapak Agus Salim'),
(7, 'Gita Aulia Rahma', 'K2', '27 November 2019', 'Ibu Nur Aini'),
(8, 'Hana Shafira Zahra', 'K2', '05 Desember 2019', 'Bapak Yusuf Maulana');

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL,
  `nama_tema` varchar(100) DEFAULT NULL,
  `subtema` varchar(100) DEFAULT NULL,
  `minggu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'admin');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `annual_plan`
--
ALTER TABLE `annual_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asesmen`
--
ALTER TABLE `asesmen`
  ADD PRIMARY KEY (`id_asesmen`),
  ADD KEY `id_modul` (`id_modul`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `lesson_plan`
--
ALTER TABLE `lesson_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_notes`
--
ALTER TABLE `meeting_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul_ajar`
--
ALTER TABLE `modul_ajar`
  ADD PRIMARY KEY (`id_modul`),
  ADD KEY `id_tema` (`id_tema`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `perkembangan`
--
ALTER TABLE `perkembangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `student_development`
--
ALTER TABLE `student_development`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_profile`
--
ALTER TABLE `student_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

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
-- AUTO_INCREMENT for table `annual_plan`
--
ALTER TABLE `annual_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `asesmen`
--
ALTER TABLE `asesmen`
  MODIFY `id_asesmen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- AUTO_INCREMENT for table `lesson_plan`
--
ALTER TABLE `lesson_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `meeting_notes`
--
ALTER TABLE `meeting_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `modul_ajar`
--
ALTER TABLE `modul_ajar`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perkembangan`
--
ALTER TABLE `perkembangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_development`
--
ALTER TABLE `student_development`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student_profile`
--
ALTER TABLE `student_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
