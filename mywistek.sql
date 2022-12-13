-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2022 pada 12.06
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywistek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id` int(11) NOT NULL,
  `nis` text NOT NULL,
  `kode_mtk` text NOT NULL,
  `jurusan` text NOT NULL,
  `semester` text NOT NULL,
  `kelas` text NOT NULL,
  `pertemuan` text NOT NULL,
  `keterangan` text NOT NULL,
  `waktu_absen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id`, `nis`, `kode_mtk`, `jurusan`, `semester`, `kelas`, `pertemuan`, `keterangan`, `waktu_absen`) VALUES
(1, '19200560', 'mtk', 'tkj', '2', 'X-TJKT', 'Pertemuan01', 'hadir', '2022-11-11 17:01:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datasiswa`
--

CREATE TABLE `datasiswa` (
  `id` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jk` text NOT NULL,
  `nomor_hp` int(15) NOT NULL,
  `jurusan` text NOT NULL,
  `jenjang` text NOT NULL,
  `semester` text NOT NULL,
  `kelas` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datasiswa`
--

INSERT INTO `datasiswa` (`id`, `nis`, `nama`, `jk`, `nomor_hp`, `jurusan`, `jenjang`, `semester`, `kelas`, `foto`) VALUES
(1, 19200560, 'Deyar Cipta Rizky', 'L', 2147483647, 'tkj', 'X', '2', 'X-TJKT', 'default.png'),
(2, 19200113, 'Khoirul Fadhilah', 'L', 2147483647, 'mm', 'XI', '4', 'XI-MM', 'default.png'),
(4, 19200733, 'Diki Wahyudi', 'L', 2147483647, 'Multimedia', 'XI', '4', 'XI - MM', 'default.png'),
(5, 19200159, 'Ahmad Fauzi', 'L', 2147483647, 'Multimedia', 'XI', '4', 'XI - MM', 'default.png'),
(6, 19200738, 'Eko Poernomo', 'L', 2147483647, 'Multimedia', 'X', '2', 'X-TJKT', 'default.png'),
(7, 19200664, 'Firdha Ayualita', 'P', 2147483647, 'Multimedia', 'X', '2', 'X-TJKT', 'default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `kode_jurusan` text NOT NULL,
  `nama_jurusan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `kode_jurusan`, `nama_jurusan`) VALUES
(1, 'tkj', 'Teknik Komputer dan Jaringan'),
(2, 'MM', 'Multimedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` int(11) NOT NULL,
  `kode_mtk` text NOT NULL,
  `nama_mtk` text NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `nama_dosen` text NOT NULL,
  `sks` int(11) NOT NULL,
  `no_ruang` text NOT NULL,
  `kel_praktek` text NOT NULL,
  `jurusan` text NOT NULL,
  `semester` text NOT NULL,
  `kelas` text NOT NULL,
  `hari` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kode_mtk`, `nama_mtk`, `jam_mulai`, `jam_akhir`, `nama_dosen`, `sks`, `no_ruang`, `kel_praktek`, `jurusan`, `semester`, `kelas`, `hari`) VALUES
(1, 'mtk', 'matematika', '18:00:00', '20:00:00', 'Ina Nopiana', 4, 'R1', '', 'tkj', '2', 'X-TJKT', 'senin'),
(2, 'indo', 'Bahasa Indonesia', '20:30:00', '22:00:00', 'Saidah', 2, 'R2', '', 'mm', '4', 'XI-MM', 'senin'),
(3, 'indo', 'Bahasa Indonesia', '20:00:00', '22:37:11', 'Saidah', 2, 'R3', '', 'tkj', '2', 'X-TJKT', 'selasa'),
(4, 'tws', 'Teknologi Web Service', '20:20:00', '22:00:00', 'Rahmat Tri Yunandar, M.Kom', 4, 'R2', '', 'tkj', '2', 'X-TJKT', 'senin'),
(5, 'pkn', 'Pendidikan Kewarganegaraan', '17:00:00', '18:00:00', 'Agus Budi Setiawa', 2, 'R1', '', 'tkj', '2', 'X-TJKT', 'rabu'),
(6, 'bing', 'bahasa inggris', '17:00:00', '18:00:00', 'Sopan Sopiana', 2, 'R1', '', 'tkj', '2', 'X-TJKT', 'rabu'),
(7, 'dtjkt', 'Dasar - dasar TJKT', '14:00:00', '18:00:00', 'Abdul Sukur', 4, 'R1', '', 'tkj', '2', 'X-TJKT', 'Kamis'),
(8, 'wd', 'Web design', '14:00:00', '18:00:00', 'Andra', 4, 'R1', '', 'tkj', '2', 'X-TJKT', 'Kamis'),
(9, 'ddg', 'dasar design grafis', '14:00:00', '18:00:00', 'Andra', 4, 'R1', '', 'tkj', '2', 'X-TJKT', 'jumat'),
(10, 'ddg', 'dasar design grafis', '14:00:00', '18:00:00', 'Andra', 4, 'R1', '', 'mm', '4', 'XI-MM', 'rabu'),
(11, 'dmm', 'dasar multimedia', '14:00:00', '18:00:00', 'Andra', 4, 'R1', '', 'mm', '4', 'XI-MM', 'kamis'),
(12, 'pkn', 'Pendidikan kewarganegaraan', '14:00:00', '18:00:00', 'Andra', 4, 'R1', '', 'mm', '4', 'XI-MM', 'jumat'),
(13, 'mtk', 'Matematika', '14:00:00', '18:00:00', 'Andra', 4, 'R1', '', 'mm', '4', 'XI-MM', 'selasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `level` int(11) NOT NULL,
  `nama` text NOT NULL,
  `status` int(11) NOT NULL,
  `createDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `nama`, `status`, `createDate`) VALUES
(1, '19200560', '51bc8ff4067a6b78cd8951076ac0261f', 1, 'Deyar Cipta Rizky', 1, '2022-11-07 09:49:28'),
(3, '19200113', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Khoirul Fadilah', 1, '2022-11-08 06:54:20'),
(6, '19200733', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Diki Wahyudi', 1, '2022-11-11 17:12:05'),
(7, '19200159', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Ahmad Fauzi', 1, '2022-11-11 17:12:46'),
(8, '19200738', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Eko Poernomo', 1, '2022-11-11 17:13:28'),
(9, '19200664', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Firdha Ayualita', 1, '2022-11-11 17:13:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datasiswa`
--
ALTER TABLE `datasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `datasiswa`
--
ALTER TABLE `datasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
