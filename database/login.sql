-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2023 pada 04.06
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `user_id`, `created`) VALUES
(1, 'dfc660eae701a0c1a00678dc4a6c4e', 2, '2023-06-15'),
(2, '1da96dce0b834610df5bb960c1bce1', 2, '2023-06-15'),
(3, '1df9478dd08fa8f39ef9c453a0ef39', 2, '2023-06-15'),
(4, '3872b7fc46a312360115c1a90fb2d4', 2, '2023-06-15'),
(5, '907b366275ffd59f78be3205c39031', 22, '2023-06-15'),
(6, '0172e551d35e05c65e0ec2db89fa8f', 22, '2023-06-15'),
(7, '987ecf2fd242708926fe33ea363a4e', 22, '2023-06-15'),
(8, 'b6287070d4712ddccec0d9052ab58a', 2, '2023-06-15'),
(9, '600c197be6f998be55402642eca7c4', 22, '2023-06-15'),
(10, '6e7f3d59f626608ae5e1a017894e71', 27, '2023-06-15'),
(11, '1715cd7d5192cf5d1fe76ba8ed86ae', 27, '2023-06-15'),
(12, '79aceb12bd1c47ac0c997ff95262aa', 27, '2023-06-15'),
(13, '50b2c21de4b9dba99756f74decab70', 27, '2023-06-15'),
(14, '13fb363228783eb98932543d261076', 27, '2023-06-15'),
(15, 'de40717df918605aec561be06e890d', 27, '2023-06-15'),
(16, 'f2d6426d375f4802c23b395e326dee', 27, '2023-06-15'),
(17, 'bea880687298fe74ddc2ec7e55d8e4', 27, '2023-06-15'),
(18, '8e2240462b7d78864f7e8fb8bd4f31', 27, '2023-06-15'),
(19, '8ac1fa0b2a86e9cf84d8f7496a3fa9', 27, '2023-06-15'),
(20, 'b38e16f1de06efead418d95d1df409', 27, '2023-06-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `ukuran_file` varchar(100) NOT NULL,
  `tipe_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `nama_file`, `ukuran_file`, `tipe_file`) VALUES
(28, 'Dede', 'dedesari@gmail.com', 'dedesari', '21232f297a57a5a743894a0e4a801fc3', '8219-0.jpg', '28.53', 'image/jpeg'),
(31, 'Gugun', 'gugun@gmail.com', 'gugunt', '21232f297a57a5a743894a0e4a801fc3', 'wp93640273.jpg', '113.42', 'image/jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
