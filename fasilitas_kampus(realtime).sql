-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2026 pada 18.27
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fasilitas_kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(30) NOT NULL,
  `nip` int(20) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `sandi` varchar(50) NOT NULL,
  `kontak` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nip`, `nama_admin`, `sandi`, `kontak`) VALUES
(1, 191241022, 'Baco', 'Baco123', 888025011),
(2, 191011124, 'Indiana', '1sampai8', 888202091),
(5, 241011123, 'Arkan', 'ArkanKan23', 895172103),
(6, 241011124, 'Akmal', 'Akmalgalon23', 898821455);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_fasilitas`
--

CREATE TABLE `kategori_fasilitas` (
  `id_kategori` int(20) NOT NULL,
  `nama_kategori` enum('meja','kursi','ac','tv','dinding','lantai','atap','alat') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_fasilitas`
--

INSERT INTO `kategori_fasilitas` (`id_kategori`, `nama_kategori`) VALUES
(1, 'meja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(20) NOT NULL,
  `Tingkat_Kerusakan` enum('Rendah','Sedang','Parah') NOT NULL,
  `Status_terkini` enum('Sedang Diperbaiki','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `Tingkat_Kerusakan`, `Status_terkini`) VALUES
(1, 'Rendah', 'Sedang Diperbaiki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_fasilitas`
--

CREATE TABLE `lokasi_fasilitas` (
  `id_lokasi` int(18) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL,
  `nama_gedung` enum('Gedung 1','Laboratorium','Gedung 2') NOT NULL,
  `Ruangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lokasi_fasilitas`
--

INSERT INTO `lokasi_fasilitas` (`id_lokasi`, `nama_ruangan`, `nama_gedung`, `Ruangan`) VALUES
(1, 'Ruang pemuda ', 'Gedung 2', '101');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(15) NOT NULL,
  `Nim` int(9) NOT NULL,
  `Nama_mahasiswa` varchar(50) NOT NULL,
  `Sandi` varchar(99) NOT NULL,
  `Kontak` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `Nim`, `Nama_mahasiswa`, `Sandi`, `Kontak`) VALUES
(1, 241011621, 'Asep', 'AsepKnalpot123', 888002188),
(3, 241414242, 'James', 'James200', 12123123),
(4, 23100112, 'Mileena', 'I Am Ironman', 2112412412),
(5, 220101023, 'Amerikano', 'Espresso23', 888002123),
(6, 23100141, 'Pablo Esco', 'Eldiablo', 2112412412),
(7, 24122123, 'Tung Tung Sahur', 'Brainrot23', 888005492),
(8, 221911132, 'Hamuud', 'Hamud123', 818284184);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_status`
--

CREATE TABLE `riwayat_status` (
  `Id_riwayat` int(15) NOT NULL,
  `waktu` datetime NOT NULL,
  `status_terbaru` enum('Selesai','Belum Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `riwayat_status`
--

INSERT INTO `riwayat_status` (`Id_riwayat`, `waktu`, `status_terbaru`) VALUES
(1, '2026-05-04 17:19:21', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teknisi`
--

CREATE TABLE `teknisi` (
  `id_teknisi` int(8) NOT NULL,
  `nama_teknisi` varchar(20) NOT NULL,
  `bidang_keahlian` varchar(20) NOT NULL,
  `kontak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `teknisi`
--

INSERT INTO `teknisi` (`id_teknisi`, `nama_teknisi`, `bidang_keahlian`, `kontak`) VALUES
(1, '', 'Arsitektur', 852801181),
(2, 'Asep ', 'Arsitektur', 888025011),
(3, 'Zukri', 'TeknikSipil', 898821425);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `FOREIGN_KEY` (`nip`);

--
-- Indeks untuk tabel `kategori_fasilitas`
--
ALTER TABLE `kategori_fasilitas`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `lokasi_fasilitas`
--
ALTER TABLE `lokasi_fasilitas`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `FOREIGN_KEY` (`Nim`);

--
-- Indeks untuk tabel `riwayat_status`
--
ALTER TABLE `riwayat_status`
  ADD PRIMARY KEY (`Id_riwayat`);

--
-- Indeks untuk tabel `teknisi`
--
ALTER TABLE `teknisi`
  ADD PRIMARY KEY (`id_teknisi`),
  ADD UNIQUE KEY `Kontak` (`kontak`),
  ADD UNIQUE KEY `id_teknisi_2` (`id_teknisi`),
  ADD UNIQUE KEY `id_teknisi_3` (`id_teknisi`),
  ADD KEY `id_teknisi` (`id_teknisi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_fasilitas`
--
ALTER TABLE `kategori_fasilitas`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lokasi_fasilitas`
--
ALTER TABLE `lokasi_fasilitas`
  MODIFY `id_lokasi` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `riwayat_status`
--
ALTER TABLE `riwayat_status`
  MODIFY `Id_riwayat` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `teknisi`
--
ALTER TABLE `teknisi`
  MODIFY `id_teknisi` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
