-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2018 at 06:07 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_guru`
--

CREATE TABLE `data_guru` (
  `id_guru` int(3) NOT NULL,
  `nama_guru` varchar(20) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat_guru` text NOT NULL,
  `telpon_guru` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_guru`
--

INSERT INTO `data_guru` (`id_guru`, `nama_guru`, `nip`, `kelamin`, `alamat_guru`, `telpon_guru`, `username`, `password`) VALUES
(1, 'Budi Setiawan', '111112', 'laki-laki', 'Bogor', '0217703999', 'budi', '00dfc53ee86af02e742515cdcf075ed3'),
(2, 'Rosni Anjar', '111113', 'perempuan', 'Jakarta', '0217703111', 'rosni', 'f24317cf121953638985646330c6296d'),
(3, 'Iwan Pranoto', '111114', 'laki-laki', 'Cijantung', '0217703222', 'iwan', '01ccce480c60fcdb67b54f4509ffdb56'),
(4, 'Imam Raharja', '111115', 'laki-laki', 'Bekasi', '0217703555', 'imam', 'eaccb8ea6090a40a98aa28c071810371'),
(5, 'Desi Sukma', '111116', 'perempuan', 'Bogor', '0217703444', 'desi', '069e2dd171f61ecffb845190a7adf425');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` int(5) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `nis` varchar(12) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat_siswa` text NOT NULL,
  `telpon_siswa` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `nama_siswa`, `nis`, `kelamin`, `alamat_siswa`, `telpon_siswa`, `username`, `password`) VALUES
(2, 'Ibnu Siena', '50406041', 'laki-laki', 'Bogor', '0217703966', 'ibnu', '195ace8d50de761419faf08845304398'),
(3, 'Elka Fajar', '50406042', 'perempuan', 'Bojong', '0217703977', 'elka', '0eb0d6bc3f0b26b3cdaf7639cc0287ef'),
(4, 'Adi Kurnia', '50406043', 'laki-laki', 'Jakarta', '0217703988', 'adi', 'c46335eb267e2e1cde5b017acb4cd799'),
(6, 'Blodod Eman', '50406045', 'laki-laki', 'Tangerang', '0217703944', 'blodod', '6ed2d9fc10d15ca4c123f3b90b5d170a'),
(7, 'Athi Septiani', '50406046', 'perempuan', 'Jakarta', '0217703933', 'athi', '1b47e01486bbd74137716457e828a709'),
(8, 'Naila Larasati', '50406047', 'perempuan', 'Depok', '0217703922', 'naila', 'eec1b906b0c314e617235f13f0e6468d'),
(9, 'Rizkon Halali', '50406048', 'laki-laki', 'Mampang', '0217703955', 'rizkon', '544ccf86d9579f519ec9efb8de16a0dd');

-- --------------------------------------------------------

--
-- Table structure for table `setup_kelas`
--

CREATE TABLE `setup_kelas` (
  `id_kelas` int(3) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup_kelas`
--

INSERT INTO `setup_kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, '3IA01'),
(2, '3IA02'),
(3, '3IA03');

-- --------------------------------------------------------

--
-- Table structure for table `setup_pelajaran`
--

CREATE TABLE `setup_pelajaran` (
  `id_pelajaran` int(3) NOT NULL,
  `nama_pelajaran` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup_pelajaran`
--

INSERT INTO `setup_pelajaran` (`id_pelajaran`, `nama_pelajaran`) VALUES
(1, 'Biologi'),
(2, 'Matematika'),
(3, 'Fisika'),
(4, 'B.Indonesia'),
(5, 'Kimia'),
(6, 'Sejarah'),
(7, 'Sosiologi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(5) NOT NULL,
  `id_guru` int(3) NOT NULL,
  `id_pelajaran` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_guru`, `id_pelajaran`, `id_kelas`) VALUES
(3, 1, 4, 1),
(4, 1, 1, 1),
(5, 1, 3, 1),
(6, 1, 5, 1),
(7, 5, 2, 1),
(8, 5, 6, 1),
(9, 5, 7, 1),
(10, 5, 2, 2),
(11, 5, 6, 2),
(12, 5, 7, 2),
(13, 4, 4, 2),
(14, 4, 1, 2),
(15, 4, 3, 2),
(16, 4, 5, 2),
(17, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `id_pelajaran` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `id_guru` int(3) NOT NULL,
  `kehadiran` int(11) NOT NULL,
  `tugas` int(11) NOT NULL,
  `ulangan` int(11) NOT NULL,
  `uts` int(11) NOT NULL,
  `uas` int(11) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_siswa`, `id_pelajaran`, `id_kelas`, `id_guru`, `kehadiran`, `tugas`, `ulangan`, `uts`, `uas`, `nilai`) VALUES
(55, 2, 2, 2, 5, 0, 0, 0, 0, 0, 60),
(54, 3, 2, 2, 5, 0, 0, 0, 0, 0, 50),
(53, 6, 7, 1, 5, 0, 0, 0, 0, 0, 76),
(52, 7, 7, 1, 5, 0, 0, 0, 0, 0, 40),
(51, 4, 7, 1, 5, 0, 0, 0, 0, 0, 50),
(50, 6, 6, 1, 5, 0, 0, 0, 0, 0, 90),
(49, 7, 6, 1, 5, 0, 0, 0, 0, 0, 60),
(48, 4, 6, 1, 5, 0, 0, 0, 0, 0, 75),
(47, 6, 2, 1, 5, 0, 0, 0, 0, 0, 55),
(46, 7, 2, 1, 5, 0, 0, 0, 0, 0, 30),
(45, 4, 2, 1, 5, 0, 0, 0, 0, 0, 60),
(44, 6, 5, 1, 1, 0, 0, 0, 0, 0, 70),
(43, 7, 5, 1, 1, 0, 0, 0, 0, 0, 80),
(42, 4, 5, 1, 1, 0, 0, 0, 0, 0, 90),
(41, 6, 3, 1, 1, 0, 0, 0, 0, 0, 55),
(40, 7, 3, 1, 1, 0, 0, 0, 0, 0, 70),
(39, 4, 3, 1, 1, 0, 0, 0, 0, 0, 75),
(38, 6, 1, 1, 1, 0, 0, 0, 0, 0, 0),
(37, 7, 1, 1, 1, 0, 0, 0, 0, 0, 0),
(36, 4, 1, 1, 1, 16, 100, 100, 100, 100, 100),
(35, 6, 4, 1, 1, 0, 80, 80, 80, 80, 68),
(34, 7, 4, 1, 1, 0, 90, 90, 90, 90, 77),
(33, 4, 4, 1, 1, 12, 100, 100, 100, 100, 96),
(56, 8, 2, 2, 5, 0, 0, 0, 0, 0, 70),
(57, 9, 2, 2, 5, 0, 0, 0, 0, 0, 80);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `id_ruangan` int(5) NOT NULL,
  `id_siswa` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`id_ruangan`, `id_siswa`, `id_kelas`) VALUES
(1, 4, 1),
(2, 7, 1),
(3, 6, 1),
(4, 3, 2),
(5, 2, 2),
(6, 8, 2),
(7, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `id_admin` int(3) NOT NULL,
  `nama_admin` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Agus Sumarna', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `setup_kelas`
--
ALTER TABLE `setup_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `setup_pelajaran`
--
ALTER TABLE `setup_pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id_guru` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setup_kelas`
--
ALTER TABLE `setup_kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setup_pelajaran`
--
ALTER TABLE `setup_pelajaran`
  MODIFY `id_pelajaran` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  MODIFY `id_ruangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
