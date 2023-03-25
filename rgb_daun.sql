-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Mei 2018 pada 17.01
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `daun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `rgb_daun`
--

CREATE TABLE IF NOT EXISTS `rgb_daun` (
`id_daun` int(11) NOT NULL,
  `red` int(11) NOT NULL,
  `green` int(11) NOT NULL,
  `blue` int(11) NOT NULL,
  `klasifikasi` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data untuk tabel `rgb_daun`
--

INSERT INTO `rgb_daun` (`id_daun`, `red`, `green`, `blue`, `klasifikasi`) VALUES
(2, 137, 162, 83, 'Kla-1'),
(3, 136, 161, 83, 'Kla-1'),
(4, 134, 158, 82, 'Kla-2'),
(5, 133, 156, 82, 'Kla-2'),
(6, 130, 155, 82, 'Kla-3'),
(7, 129, 154, 82, 'Kla-3'),
(8, 126, 151, 81, 'Kla-4'),
(9, 127, 152, 81, 'Kla-4'),
(10, 122, 147, 80, 'Kla-5'),
(11, 123, 148, 80, 'Kla-5'),
(12, 117, 142, 79, 'Kla-6'),
(13, 118, 143, 79, 'Kla-6'),
(14, 115, 140, 79, 'Kla-7'),
(15, 113, 138, 79, 'Kla-7'),
(16, 112, 137, 78, 'Kla-8'),
(17, 109, 134, 78, 'Kla-8'),
(18, 108, 133, 77, 'Kla-9'),
(19, 105, 131, 77, 'Kla-9'),
(20, 104, 128, 77, 'Kla-10'),
(21, 101, 127, 76, 'Kla-10'),
(22, 100, 125, 76, 'Kla-11'),
(23, 97, 123, 76, 'Kla-11'),
(24, 96, 121, 75, 'Kla-12'),
(25, 93, 118, 75, 'Kla-12'),
(26, 92, 117, 74, 'Kla-13'),
(27, 89, 115, 74, 'Kla-13'),
(28, 87, 112, 73, 'Kla-14'),
(29, 85, 111, 73, 'Kla-14'),
(30, 84, 109, 73, 'Kla-15'),
(31, 82, 107, 72, 'Kla-15'),
(32, 80, 106, 72, 'Kla-16'),
(33, 78, 103, 72, 'Kla-16'),
(34, 76, 102, 71, 'Kla-17'),
(35, 73, 99, 71, 'Kla-17'),
(36, 72, 98, 71, 'Kla-18'),
(37, 69, 95, 70, 'Kla-18'),
(38, 68, 94, 70, 'Kla-19'),
(39, 64, 91, 69, 'Kla-19'),
(40, 64, 90, 69, 'Kla-20'),
(41, 62, 87, 69, 'Kla-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rgb_daun`
--
ALTER TABLE `rgb_daun`
 ADD PRIMARY KEY (`id_daun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rgb_daun`
--
ALTER TABLE `rgb_daun`
MODIFY `id_daun` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
