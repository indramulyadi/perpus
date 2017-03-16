-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2017 at 07:06 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `nim` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` varchar(15) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `thn_masuk` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`nim`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `prodi`, `thn_masuk`) VALUES
(20133119, 'Indra Mulyadi', 'Bekasi', '1995-08-10', 'L', 'S1 Teknik Sipil', '2013'),
(201331098, 'oki Dwi KUrniawan', 'Jambi', '1995-07-12', 'L', 'S1 Teknik Mesin', '2013'),
(201331128, 'Elson Hayadi', 'Bengkulu', '1995-03-27', 'L', 'S1 Teknik Informatika', '2013'),
(1002200033, 'wwwww', 'www', 'jakarta', 'P', 'S1 Teknik Indormatika', '2013'),
(2013311111, 'aa aaaa', 'jakarta', '1995-10-10', 'L', 'S1 Teknik Mesin', '2014');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id` int(5) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `thn_terbit` varchar(4) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('rak1','rak2','rak3') NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(7, 'matematika', 'kokom', 'Airlangga', '2002', '1234502BN', 5, 'rak2', '2015-11-28 08:46:15'),
(8, 'PHP Dasar', 'Arfandi', 'Lokomedia', '2002', '1234503BIN', 3, 'rak3', '2015-12-02 02:41:35'),
(9, 'Samudra PHP', 'Solihin', 'Hamzah', '2010', '1234504BN', 2, 'rak3', '2015-12-02 04:55:13'),
(10, 'JQuery Mudah', 'Habib Nas', 'Aerlangga', '2008', '1234501BN', 2, 'rak1', '2016-10-24 05:36:43'),
(11, 'Mari Mengenal Video Editing', 'Arif, BW', 'Yescom/ Andi', '2009', '1234505BN', 3, 'rak2', '2017-01-16 15:46:38'),
(12, 'Global Positioning System (GPS)', 'Muis, Saludin', 'Graha Ilmu', '2012', '1234506BN', 4, 'rak2', '2017-01-16 15:47:33'),
(13, 'Cyberlaw, tak perlu takut', 'Magdalena, Merry', 'Andi', '2009', '1234507BN', 3, 'rak2', '2017-01-16 15:48:12'),
(14, 'SCADA software dengan Wonderware inTouch: dasar-dasar pemrograman', 'Wicaksono, Handy', 'Graha Ilmu', '2012', '1234508BN', 5, 'rak3', '2017-01-16 15:49:06'),
(15, 'Rekayasa perangkat lunak', 'Simarmata, Janner', 'Yescom/ Andi', '2010', '1234509BN', 5, 'rak1', '2017-01-16 15:51:22'),
(16, 'Pengantar data mining : menggali pengetahuan dari bongkahan data', 'Susanto, Sani', 'Andi', '2010', '1234510BN', 2, 'rak3', '2017-01-16 15:52:04'),
(17, 'Rekayasa Web', 'Simarmata, Janner', 'Andi', '2010', '1234511BN', 2, 'rak2', '2017-01-16 15:52:39'),
(18, 'Algoritma Genetik', 'Fadliansyah', 'Graha Ilmu', '2009', '1234512BN', 4, 'rak1', '2017-01-16 15:53:27'),
(19, 'Algoritma & Pemrograman menggunakan JAVA', 'Kadir, Abdul', 'Andi', '2012', '1234513BN', 2, 'rak1', '2017-01-16 15:54:02'),
(20, 'Permodelan Sistem Informasi Berorientasi Objek dengan UML', 'Sholiq', 'Graha Ilmu', '2006', '1234514BN', 2, 'rak1', '2017-01-16 15:54:52'),
(21, 'Pemrograman Android dengan APP Inventor : no experience required', 'Wahana Komputer', 'Andi', '2013', '1234515BN', 2, 'rak2', '2017-01-16 15:55:33'),
(22, 'Pemrograman Database dengan Delphi menggunakan Access dan ADO', 'Kadir, Abdul', 'Andi', '2009', '1234516BN', 2, 'rak1', '2017-01-16 15:57:06'),
(23, 'Pengenalan Teknologi Komputer dan Informasi', 'Simarmata, Janner', 'Andi', '2006', '1234517BN', 3, 'rak3', '2017-01-16 15:57:39'),
(24, 'Permodelan Basis Data Berorientasi Objek', 'Utomo, Wiranto Herry', 'Andi', '2010', '1234518BN', 3, 'rak2', '2017-01-16 15:58:42'),
(25, 'Teknik Menguasai Adobe Photoshop & Adobe Illustrator', 'Hidayatullah, A. Taufiq', 'Andi', '2012', '1234519BN', 3, 'rak1', '2017-01-16 15:59:14'),
(26, 'Pemrograman Basis Data Berbasis Web Menggunakan PHP & MySQL', 'Kustiyahningsih', 'Graha Ilmu', '2011', '1234520BN', 3, 'rak2', '2017-01-16 15:59:59'),
(27, 'Organisasi Komputer', 'Hartomo, Djoko', 'Graha Ilmu', '2008', '1234521BN', 3, 'rak3', '2017-01-16 16:02:46'),
(28, 'Algortima & Pemrograman menggunakan JAVA', 'Harnaningrum, L.N', 'Graha Ilmu', '2009', '1234522BN', 3, 'rak1', '2017-01-16 16:03:20'),
(29, 'Dasar Iinformatika & Ilmu Komputer: disertai aksi-aksi praktis', 'Hariyanto, Bambang', 'Graha Ilmu', '2008', '1234523BN', 3, 'rak1', '2017-01-16 16:04:27'),
(30, 'Rekayasa perangkat lunak menggunakan  UML dan JAVA', 'Nugroho, Adi', 'Andi', '2009', '1234524BN', 3, 'rak3', '2017-01-16 16:05:20'),
(31, 'Pengantar Teknologi Informasi', 'Sutarman', 'Bumi Aksara', '2012', '1234525BN', 3, 'rak1', '2017-01-16 16:05:55'),
(32, 'Aplikasi program terintegrasi dengan Visual Basic 6.0 ', 'Madcoms', 'Andi', '2011', '1234526BN', 4, 'rak1', '2017-01-16 16:06:37'),
(33, 'Jaringan komputer dengan TCP/IP: membahas konsep danâ€¦', 'Sugeng, Winarno', 'Modula', '2010', '1234527BN', 3, 'rak2', '2017-01-16 16:07:10'),
(34, 'Sistem pakar & pengembangannya', 'Hartati, Sri', 'Graha Ilmu', '2008', '1234528BN', 2, 'rak2', '2017-01-16 16:07:49'),
(35, 'From Newbie to Advances: mudahnya membuat aplikasi android', 'Utomo, Eko Priyo', 'Andi', '2012', '1234529BN', 5, 'rak1', '2017-01-16 16:08:24'),
(36, 'Kriptografi untuk Keamanan Jaringan : dan implementasinya dalam bahasa Java', 'Sadikin, Rifki', 'Andi', '2012', '1234530BN', 2, 'rak1', '2017-01-16 16:09:00'),
(37, ' Seri Belajar Kilat Photoshop CS5', 'ELCOM', 'Andi', '2010', '1234531BN', 6, 'rak2', '2017-01-16 16:09:57'),
(38, ' Seri Belajar Kilat Computer Networking', 'ELCOM', 'Andi', '2012', '1234532', 1, '', '2017-01-16 16:28:07'),
(39, 'Panduan belajar CorelDraw: graphics suite X6', 'Madcoms', 'Andi', '2013', '1234533BN', 5, 'rak1', '2017-01-16 16:29:10'),
(40, 'Cloud computing: aplikasi berbasis web yang mengubah â€¦', 'ELCOM', 'Andi', '2012', '1234534BN', 2, 'rak1', '2017-01-16 16:29:58'),
(41, 'Analisis dan Desain Sistem Informasi', 'Al-Bahra bin Ladjamudin', 'Graha Ilmu', '2013', '1234535BN', 2, 'rak2', '2017-01-16 16:30:51'),
(42, 'Esensi dan penerapan ERP dalam bisnis : dilengkapi studi kasus aplikasi ERP ..', 'Wijaya, Santo F.', 'Graha Ilmu', '2012', '1234536BN', 3, 'rak2', '2017-01-16 16:31:24'),
(43, 'Pengantar Penginderaan Jauh Digital', 'Danoedoro, Projo', 'Andi', '2012', '1234537BN', 3, 'rak2', '2017-01-16 16:31:58'),
(44, 'Algoritma & Struktrur Data dengan C#', 'Nugroho, Adi', 'Andi', '2009', '1234538BN', 5, 'rak2', '2017-01-16 16:32:31'),
(45, 'Algoritma dan Pemrograman dengan Bahasa C', 'Rachmat C, Antonius', 'Andi', '2010', '1234539BN', 2, 'rak2', '2017-01-16 16:33:06'),
(46, 'Algoritma Data Mining', 'Kusrini', 'Andi', '2009', '1234540BN', 6, 'rak2', '2017-01-16 16:33:38'),
(47, 'Analisa Kebutuhan dalam Rekayasa Perangkat Lunak', 'Siahaan, Daniel', 'Andi', '2012', '1234541BN', 6, 'rak2', '2017-01-16 16:34:12'),
(48, 'Rekayasa Perangkat Lunak Berorientasi Objek dengan Metode USDP (Unified Software Development Process)', 'Nugroho, Adi', 'Andi', '2010', '1234543BN', 1, 'rak1', '2017-01-16 16:34:50'),
(49, 'Robotika : teori dan implementasi', 'Budiharto, Widodo', 'Andi', '2010', '1234544BN', 2, 'rak1', '2017-01-16 16:35:24'),
(50, 'Kupas tuntas Nero Multimedia Suite 10', 'MADCOMS', 'Andi', '2011', '1234545BN', 5, 'rak1', '2017-01-16 16:36:12'),
(51, 'Investigasi Sumber-sumber Kejahatan Internet: internet forensics', 'Rafiudin, Rahmat', 'Andi', '2009', '1234545BN', 5, 'rak1', '2017-01-16 16:37:04'),
(52, 'Konsep Pengolahan Citra Digital dan Ekstraksi Fitur', 'Purnomo, Mauridhi Hery', 'Graha Ilmu', '2010', '1234546BN', 3, 'rak2', '2017-01-16 16:37:38'),
(53, 'Jaringan Komputer', 'Kristanto,Andri', 'Graha Ilmu', '2003', '1234547BN', 3, 'rak1', '2017-01-16 16:38:12'),
(54, 'Kriptografi : keamanan data dan komunikasi', 'Ariyus, Dony', 'Graha Ilmu', '2006', '1234548BN', 3, 'rak2', '2017-01-16 16:38:47'),
(55, 'Interaksi manusia dan komputer  edisi 2', 'Santoso, P Insap', 'Andi', '2011', '1234549BN', 5, 'rak1', '2017-01-16 16:39:31'),
(56, 'Pemrograman Visual Basic.net 2005', 'Wahana Komputer', 'Andi', '2006', '1234550BN', 2, 'rak2', '2017-01-16 16:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(15) NOT NULL,
  `tgl_kembali` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ket` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`) VALUES
(10, 'SCADA software dengan Wonderware inTouch: dasar-dasar pemrograman', 201331128, 'Elson Hayadi', '16-01-2017', '30-01-2017', 'Kembali', 'pedoman'),
(11, 'Algoritma & Pemrograman menggunakan JAVA', 201331128, 'Elson Hayadi', '16-01-2017', '24-03-2017', 'Pinjam', 'peminjam'),
(12, 'Kupas tuntas Nero Multimedia Suite 10', 2013311111, 'aa aaaa', '21-01-2017', '01-02-2017 ', 'Pinjam', 'peminjaman riset pengembangan'),
(13, 'Rekayasa Perangkat Lunak Berorientasi Objek dengan Metode USDP (Unified Software Development Process)', 1002200033, 'wwwww', '21-01-2017', '05-02-2017 ', 'Pinjam', 'peminjaman riset pengembangan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(3) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `email`, `foto`, `level`) VALUES
(3, 'Oki Dwi Kurniawan', 'oki', '827ccb0eea8a706c4c34a16891f84e7b', 'okidwikurniawan@gmail.com', '', 'user'),
(4, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'avatar5.png', 'admin'),
(6, 'ELson Hayadi', 'Elson', '827ccb0eea8a706c4c34a16891f84e7b', 'elsonhayadi327@gmail.com', '', 'user'),
(7, 'indrok', 'indrok', '827ccb0eea8a706c4c34a16891f84e7b', 'indrok@gmail.com', '', 'user'),
(8, 'putri', 'putri', '827ccb0eea8a706c4c34a16891f84e7b', 'putri@gmail.com', '', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
