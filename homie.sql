-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 07:57 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_air`
--

CREATE TABLE `tbl_air` (
  `id` int(11) NOT NULL,
  `noPelanggan` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `pemakaian` varchar(5) NOT NULL,
  `periode` varchar(20) DEFAULT NULL,
  `lokasi` varchar(15) DEFAULT NULL,
  `harga_tagihan` varchar(15) DEFAULT NULL,
  `denda` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_air`
--

INSERT INTO `tbl_air` (`id`, `noPelanggan`, `nama`, `pemakaian`, `periode`, `lokasi`, `harga_tagihan`, `denda`) VALUES
(1, '1234567899', 'Rahmat', '43', 'FEB20 - MAR20', 'Medan', '45000', '5000'),
(2, '1234567891', 'Dayat', '12', 'JAN20', 'Jakarta', '18000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id` int(11) NOT NULL,
  `noRek` varchar(30) DEFAULT NULL,
  `nasabah` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(10) DEFAULT NULL,
  `nomorKartu` varchar(30) DEFAULT NULL,
  `jenisKartu` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id`, `noRek`, `nasabah`, `nama_bank`, `nomorKartu`, `jenisKartu`) VALUES
(1, '123456789', 'Dayat', 'BRI', '1234561234561234', 'Debit'),
(2, '24081998', 'Rahmat', 'Maybank', '1234561231234567', 'Debit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `id` int(11) NOT NULL,
  `idHunian` int(11) NOT NULL,
  `chat_id` varchar(15) NOT NULL,
  `usernamePenghuni` varchar(50) DEFAULT NULL,
  `usernamePemilik` varchar(50) NOT NULL,
  `usernameSend` varchar(30) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `pemilik` varchar(50) DEFAULT NULL,
  `nama_hunian` varchar(50) DEFAULT NULL,
  `message` varchar(600) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`id`, `idHunian`, `chat_id`, `usernamePenghuni`, `usernamePemilik`, `usernameSend`, `role`, `nama`, `pemilik`, `nama_hunian`, `message`, `date`, `time`, `status`) VALUES
(9, 2, '2', 'test', 'dayat', 'test', 'Penghuni', 'testi', 'dayat', 'Kos elite', 'Test', '14/5/2020', '04:01', 'read'),
(10, 2, '2', 'test', 'dayat', 'test', 'Penghuni', 'testi', 'dayat', 'Kos elite', 'Test', '14/5/2020', '04:01', 'read'),
(11, 2, '2', 'test', 'dayat', 'test', 'Penghuni', 'testi', 'dayat', 'Kos elite', 'Test', '14/5/2020', '04:01', 'read'),
(13, 3, '4', 'dayatvirgo50', 'dayat', 'dayatvirgo50', 'Penghuni', 'Rahmat', 'Dayat', 'My Kost', 'Test Mamang', '25/6/2020', '15:53', 'read'),
(14, 3, '4', 'dayatvirgo50', 'dayat', 'dayatvirgo50', 'Penghuni', 'Rahmat', 'Dayat', 'My Kost', 'Piyr Kabare ??', '25/6/2020', '15:53', 'read'),
(15, 3, '4', 'dayatvirgo50', 'dayat', 'dayatvirgo50', 'Penghuni', 'Rahmat', 'Dayat', 'My Kost', 'Test', '16/7/2020', '06:17', 'read'),
(16, 3, '4', 'dayatvirgo50', 'dayat', 'dayat', 'Pemilik', 'Rahmat', 'Dayat', 'My Kost', 'Wut', '16/7/2020', '06:17', 'read'),
(17, 13, '1', 'penghuni', 'dayat', 'penghuni', 'Penghuni', 'Rahmat Hidayat', 'Dayat', 'Kis Kos', 'hello', '2/8/2020', '18:26', 'read'),
(18, 13, '1', 'penghuni', 'dayat', 'dayat', 'Pemilik', 'Rahmat Hidayat', 'Dayat', 'Kis Kos', 'wut', '2/8/2020', '22:00', 'read'),
(19, 13, '1', 'penghuni', 'dayat', 'penghuni', 'Penghuni', 'Rahmat Hidayat', 'Dayat', 'Kis Kos', 'key', '2/8/2020', '22:01', 'read'),
(20, 13, '2', 'dayatuuser', 'dayat', 'dayatuuser', 'Penghuni', 'Hidayat', 'Dayat', 'Kis Kos', 'test', '3/8/2020', '00:52', 'unread'),
(21, 13, '2', 'dayatuuser', 'dayat', 'dayatuuser', 'Penghuni', 'Hidayat', 'Dayat', 'Kis Kos', 'test', '3/8/2020', '00:54', 'unread'),
(22, 13, '3', 'dayatuuser', 'dayat', 'dayatuuser', 'Penghuni', 'Hidayat', 'Dayat', 'Kis Kos', 'test', '3/8/2020', '01:02', 'read'),
(23, 13, '3', 'dayatuuser', 'dayat', 'dayatuuser', 'Penghuni', 'Hidayat', 'Dayat', 'Kis Kos', 'test', '3/8/2020', '01:11', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fasilitas`
--

CREATE TABLE `tbl_fasilitas` (
  `id` int(11) NOT NULL,
  `nama_fasilitas` varchar(20) NOT NULL,
  `tipe_fasilitas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_fasilitas`
--

INSERT INTO `tbl_fasilitas` (`id`, `nama_fasilitas`, `tipe_fasilitas`) VALUES
(1, 'AC', 'Kamar'),
(2, 'Kamar Mandi', 'Kamar'),
(3, 'Dispenser', 'Kamar'),
(4, 'Air Panas', 'Kamar'),
(5, 'Petugas Kebersihan', 'Hunian'),
(6, 'Parkir', 'Hunian'),
(7, 'Wi-Fi', 'Hunian'),
(8, '24 Jam', 'Hunian'),
(9, 'TV', 'Kamar'),
(10, 'Meja Belajar', 'Kamar'),
(11, 'Lemari', 'Kamar'),
(12, 'Spring Bed', 'Kamar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_homiepay`
--

CREATE TABLE `tbl_homiepay` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `pin` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `saldo` varchar(30) DEFAULT NULL,
  `nomorKartu` varchar(20) DEFAULT NULL,
  `maxTopUp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_homiepay`
--

INSERT INTO `tbl_homiepay` (`id`, `username`, `nama`, `pin`, `tel`, `saldo`, `nomorKartu`, `maxTopUp`) VALUES
(1, 'dayatvirgo50', 'Rahmat', '123458', '085767578556', '251500', '1234561234561234', '1000000'),
(2, 'dayat', 'dayat', '123456', '085767578557', '600000', NULL, NULL),
(3, 'test', 'test', '123123', '085767578552', '1353500', '1234561234561234', '1000000'),
(4, 'testi', 'Tes aje', '123455', '085767578852', '0', NULL, NULL),
(5, 'test12', 'kevin', '123456', '082174587871', '0', NULL, NULL),
(6, 'Ahade', 'Budi', '123456', '085767572525', '325000', NULL, NULL),
(7, 'qq', 'qq', '123456', '123456789', '0', NULL, NULL),
(8, 'user', 'user', '123456', '085767578531', '940000', '1234561234561234', '1000000'),
(9, 'penghuni', 'Rahmat Hidayat', '123456', '123456789012', '172500', NULL, NULL),
(10, 'penghuni1', 'Tes Penghuni', '123456', '085712345678', '0', NULL, NULL),
(11, 'dayatvirgo', 'Dayat', '123456', '085712345678', '0', NULL, NULL),
(12, 'dayatuuser', 'Hidayat', '123456', '085712345678', '157500', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hunian`
--

CREATE TABLE `tbl_hunian` (
  `idHunian` int(11) NOT NULL,
  `nm_hunian` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pemilik` varchar(30) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `alamat_hunian` varchar(100) NOT NULL,
  `tipe_hunian` varchar(15) NOT NULL,
  `penghuni` varchar(15) NOT NULL,
  `pet` varchar(20) NOT NULL,
  `luasKamar` varchar(10) NOT NULL,
  `jenisListrik` varchar(15) NOT NULL,
  `jlhLantai` varchar(10) NOT NULL,
  `jlhKM` varchar(10) NOT NULL,
  `nama_fasilitas` varchar(50) NOT NULL,
  `harga_hunian_day` varchar(10) NOT NULL,
  `harga_hunian_week` varchar(10) NOT NULL,
  `harga_hunian_month` varchar(10) NOT NULL,
  `harga_hunian_year` varchar(10) NOT NULL,
  `denda` varchar(10) NOT NULL,
  `poto` varchar(500) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longtitude` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `poto360` varchar(50) NOT NULL,
  `datePost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hunian`
--

INSERT INTO `tbl_hunian` (`idHunian`, `nm_hunian`, `username`, `pemilik`, `tel`, `alamat_hunian`, `tipe_hunian`, `penghuni`, `pet`, `luasKamar`, `jenisListrik`, `jlhLantai`, `jlhKM`, `nama_fasilitas`, `harga_hunian_day`, `harga_hunian_week`, `harga_hunian_month`, `harga_hunian_year`, `denda`, `poto`, `deskripsi`, `latitude`, `longtitude`, `kota`, `poto360`, `datePost`) VALUES
(1, 'Mi Kos', 'dayat', 'Dayat', '085767578557', 'Kota Matsum, Kota Medan 20213, Sumatera Utara, Ind', 'Rumah', 'Pria', 'Tidak Boleh', '4x4', 'Prabayar', '1', '3', '24 Jam,Wi-Fi', '30000', '0', '600000', '0', '5000', 'house.jpg', 'test', '3.5788862', '98.691907', 'Medan', '', '06/12/2019'),
(2, 'Dayat Kos', 'dayat', 'Dayat', '085767578557', 'Kota Matsum, Kota Medan 20213, Sumatera Utara, Ind', 'Rumah', 'Pria', 'Tidak Boleh', '4x6', 'Prabayar', '1', '3', '24 Jam,Wi-Fi', '0', '0', '600000', '0', '5000', 'house1.jpg', 'test', '3.5788862', '98.691907', 'Medan', '', '06/12/2019'),
(3, 'My Kost', 'dayat', 'Dayat', '', 'Jalan Berdikari, Tebing Tinggi 20600, Sumatera Utara, Indonesia', 'Rumah', 'Campur', 'Kucing', '3x3', 'Prabayar', '1', '3', '24 Jam,Wi-Fi,Petugas Kebersihan', '0', '150000', '600000', '0', '5000', 'house2.jpg', 'test', '3.3301015', '99.1592932', 'Tebing Tinggi', '', '05/03/2020'),
(13, 'Kis Kos', 'dayat', 'Dayat', '085767578557', 'Jalan Sutrisno, Sei Rengas, Kota Medan 20213, Sumatera Utara, Indonesia', 'Rumah', 'Pria', 'Tidak Boleh', '4x4', 'Prabayar', '1', '2', '24 Jam,Wi-Fi', '0', '0', '500000', '5500000', '0', '15944642193931594464216146.jpg,15944642194031594464216146.jpg,15944642194781594464216146.jpg', 'test yaa', '3.5811244802187945', '98.69315341114998', 'Padang', '1594243899852_IMAGE.jpg', '09/07/2020'),
(16, 'Kost Saya', 'dayat', 'Dayat', '085767578567', 'Kota Matsum, Kota Medan 20213, Sumatera Utara, Indonesia', 'Rumah', 'Pria', 'Kucing', '3x4', 'Prabayar', '2', '3', 'Wi-Fi,Parkir', '0', '0', '500000', '0', '0', '15964343816741596434239662.jpg,15964343816841596434239662.jpg,15964343817011596434239662.jpg,15964343817181596434239662.jpg,15964343817281596434239662.jpg,15964343817411596434239662.jpg', 'Hunian biasa', '3.5788831', '98.6919085', 'Medan', '1596434383931_IMAGE.jpg', '03/08/2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kamar`
--

CREATE TABLE `tbl_kamar` (
  `idKamar` int(11) NOT NULL,
  `idHunian` int(11) NOT NULL,
  `no_kamar` varchar(50) DEFAULT NULL,
  `nama_kamar` varchar(50) DEFAULT NULL,
  `nama_hunian` varchar(50) DEFAULT NULL,
  `pemilik` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `maxPerson` varchar(5) DEFAULT NULL,
  `currentPerson` varchar(5) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `nama_fasilitas` varchar(100) DEFAULT NULL,
  `lokasi_kamar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kamar`
--

INSERT INTO `tbl_kamar` (`idKamar`, `idHunian`, `no_kamar`, `nama_kamar`, `nama_hunian`, `pemilik`, `username`, `nama`, `maxPerson`, `currentPerson`, `status`, `nama_fasilitas`, `lokasi_kamar`) VALUES
(2, 3, '1', 'Beruang', 'My Kost', 'dayat', 'dayat', 'dayat', '2', '2', 'Full', 'AC,Lemari,Spring Bed,Meja Belajar,Kamar Mandi', 'Lantai 1'),
(3, 3, '2', 'Testi', 'My Kost', 'dayat', 'dayat', 'dayat', '2', '0', 'Kosong', 'AC,Spring Bed,Lemari,Kamar Mandi', 'Lantai 1'),
(4, 2, '1', 'Mawar', 'Kos elite', 'dayat', 'dayat', 'dayat', '2', '0', 'Kosong', 'AC,Meja Belajar,Lemari', 'Lantai 1'),
(5, 1, '1', 'Mawar', 'Mi Kos', 'dayat', 'dayat', 'dayat', '3', '1', 'Kosong', 'AC,Dispenser,Spring Bed', 'Lantai 1'),
(18, 1, '03', 'Bunga ', 'Mi Kos', 'Dayat', 'dayat', 'Dayat', '2', '0', 'Kosong', 'AC,Dispenser,TV,Lemari', 'lantai 1'),
(19, 1, '03', 'Anggrek', 'Mi Kos', 'Dayat', 'dayat', 'Dayat', '3', '1', 'Kosong', 'AC,Dispenser,TV,Lemari', 'lantai 1'),
(20, 13, '01', 'Kamar A', 'Kis Kos', 'Dayat', 'dayat', 'Dayat', '2', '1', 'Kosong', 'AC,Spring Bed', 'Lantai 1'),
(21, 16, '02', 'Kamar 1', 'Kost Saya', 'Dayat', 'dayat', 'Dayat', '2', '0', 'Kosong', 'AC,Kamar Mandi,Lemari', 'Lantai 1'),
(22, 16, '02', 'Kamar 1', 'Kost Saya', 'Dayat', 'dayat', 'Dayat', '2', '0', 'Kosong', 'AC,Kamar Mandi,Lemari', 'Lantai 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_livechat`
--

CREATE TABLE `tbl_livechat` (
  `id` int(11) NOT NULL,
  `idChat` varchar(20) NOT NULL,
  `usernameUser` varchar(40) NOT NULL,
  `usernameAdmin` varchar(40) NOT NULL,
  `usernameSend` varchar(30) NOT NULL,
  `role` varchar(10) NOT NULL,
  `message` varchar(600) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_livechat`
--

INSERT INTO `tbl_livechat` (`id`, `idChat`, `usernameUser`, `usernameAdmin`, `usernameSend`, `role`, `message`, `date`, `time`, `status`) VALUES
(1, '15894', '', '', 'undefined', 'Penghuni', 'Test', '14/5/2020', '03:05', 'unread'),
(2, '15894', 'test', '', 'test', 'Penghuni', 'Test', '14/5/2020', '03:08', 'unread'),
(3, '15894', 'test', '', 'test', 'Penghuni', 'Tesr', '14/5/2020', '03:14', 'unread'),
(4, '15894', 'test', '', 'test', 'Penghuni', 'Test', '14/5/2020', '04:25', 'unread'),
(5, '15894', 'test', '', 'test', 'Penghuni', 'Fantech', '14/5/2020', '04:25', 'unread'),
(6, '1589413900823', 'test', '', 'test', 'Penghuni', 'Test', '14/5/2020', '06:51', 'unread'),
(8, '1589425257966', 'dayat', '', 'dayat', 'Pemilik', 'Yayyayyayyay', '14/05/2020', '22:30', 'unread'),
(10, '1589425257966', 'dayat', 'rahmat', 'rahmat', 'Admin', 'Yayayay', '15/05/2020', '00:57', 'unread'),
(12, '1589413900823', 'test', 'rahmat', 'rahmat', 'Admin', 'Shiap', '15/05/2020', '03:01', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_masalah`
--

CREATE TABLE `tbl_masalah` (
  `id` int(11) NOT NULL,
  `idHunian` int(11) NOT NULL,
  `idkamar` int(11) NOT NULL,
  `idReport` varchar(30) NOT NULL,
  `usernamePenghuni` varchar(20) NOT NULL,
  `usernamePemilik` varchar(30) NOT NULL,
  `nama_hunian` varchar(30) NOT NULL,
  `namaPemilik` varchar(50) NOT NULL,
  `nama_kamar` varchar(30) NOT NULL,
  `masalah` varchar(20) NOT NULL,
  `deskripsi` varchar(600) NOT NULL,
  `date_create` varchar(20) NOT NULL,
  `date_proses` varchar(20) NOT NULL,
  `statusReport` varchar(15) NOT NULL,
  `namaPenghuni` varchar(50) NOT NULL,
  `poto` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_masalah`
--

INSERT INTO `tbl_masalah` (`id`, `idHunian`, `idkamar`, `idReport`, `usernamePenghuni`, `usernamePemilik`, `nama_hunian`, `namaPemilik`, `nama_kamar`, `masalah`, `deskripsi`, `date_create`, `date_proses`, `statusReport`, `namaPenghuni`, `poto`) VALUES
(1, 0, 0, 'DISPENSER/1642020152/', 'test', 'dayat', 'Kost Biasa', 'dayat', 'Mawar', 'Dispenser', 'Gak bisa\n', '16/04/2020', '', 'Selesai', 'testi', 'DISPENSER_1586999627408_IMAGE.jpg'),
(11, 3, 2, 'AC/15202015', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Test', '01/05/2020', '', 'Selesai', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(12, 3, 2, 'AC/15202015', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Test', '01/05/2020', '', 'Selesai', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(13, 3, 2, 'AC/752020708', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Wjdjssj', '07/05/2020', '', 'Selesai', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(14, 3, 2, 'AC/752020708', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Wjdjssj', '07/05/2020', '', 'Selesai', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(15, 3, 2, 'SPRING BED/752020956', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Spring Bed', 'Maaf pak ads yg rusak\n', '07/05/2020', '', 'Selesai', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(16, 6, 8, 'AC/1952020663', 'test', 'Ahade', 'Test Woi', 'Budi', 'Test kamar', 'Ac', 'Test aje', '19/05/2020', '', 'Selesai', 'testi', 'SPRING BED_1589836619625_IMAGE.jpg'),
(17, 6, 8, 'AC/1952020888', 'test', 'Ahade', 'Test Woi', 'Budi', 'Test kamar', 'Ac', 'Gak bisa\n', '19/05/2020', '', 'Pending', 'testi', 'SPRING BED_1589836619625_IMAGE.jpg'),
(18, 6, 8, 'AC/1952020888', 'test', 'Ahade', 'Test Woi', 'Budi', 'Test kamar', 'Ac', 'Gak bisa\n', '19/05/2020', '', 'Pending', 'testi', 'SPRING BED_1589836619625_IMAGE.jpg'),
(19, 6, 8, 'AC/1952020169', 'test', 'Ahade', 'Test Woi', 'Budi', 'Test kamar', 'Ac', 'Test', '19/05/2020', '', 'Pending', 'testi', 'SPRING BED_1589836619625_IMAGE.jpg'),
(20, 6, 8, 'SPRING BED/1952020884', 'test', 'Ahade', 'Test Woi', 'Budi', 'Test kamar', 'Spring Bed', 'Tesy, saja', '19/05/2020', '', 'Pending', 'testi', 'SPRING BED_1589836619625_IMAGE.jpg'),
(21, 3, 2, 'AC/762020590', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', '', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(22, 3, 2, 'AC/762020780', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Ac rusak', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(23, 3, 2, 'AC/762020714', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', '', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(24, 3, 2, 'AC/762020576', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', '', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(25, 3, 2, 'AC/762020971', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', '', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(26, 3, 2, 'AC/762020657', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Ac rusak mang. Ga mau idup ', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(27, 3, 2, 'AC/76202070', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Ac mang dak idup', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(28, 3, 2, 'AC/762020897', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Adjssn', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(29, 3, 2, 'AC/762020976', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Sjdsjsj', '07/06/2020', '', 'Selesai', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(30, 3, 2, 'AC/762020415', 'test', 'dayat', 'My Kost', 'dayat', 'Beruang', 'Ac', 'Ac coyyy', '07/06/2020', '', 'Pending', 'testi', 'AC_1591527910452_IMAGE.jpg'),
(31, 13, 20, 'AC/382020834', 'dayatuuser', 'dayat', 'Kis Kos', 'Dayat', 'Kamar A', 'AC', 'Ac nya panas', '03/08/2020', '', 'Pending', 'Hidayat', 'AC_1596393760774_IMAGE.jpg'),
(32, 13, 20, 'AC/382020348', 'dayatuuser', 'dayat', 'Kis Kos', 'Dayat', 'Kamar A', 'AC', 'Ac', '03/08/2020', '', 'Pending', 'Hidayat', 'AC_1596393760774_IMAGE.jpg'),
(33, 13, 20, 'AC/382020194', 'dayatuuser', 'dayat', 'Kis Kos', 'Dayat', 'Kamar A', 'AC', 'Panas', '03/08/2020', '', 'Selesai', 'Hidayat', 'AC_1596393760774_IMAGE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifikasi`
--

CREATE TABLE `tbl_notifikasi` (
  `id` int(11) NOT NULL,
  `notif_id` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `nomor` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `read_at` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notifikasi`
--

INSERT INTO `tbl_notifikasi` (`id`, `notif_id`, `username`, `type`, `nomor`, `title`, `date`, `read_at`) VALUES
(1, '1589917082979', 'dayat', 'Pembayaran Tagihan/Sewa', '354912052020401', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(2, '1589917470675', 'dayat', 'Pembayaran Tagihan/Sewa', '356612052020420', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(3, '1589917813177', 'dayat', 'Pembayaran Tagihan/Sewa', '355332052020899', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : Kos elite', '20/05/2020', 'seen'),
(4, '1589917928132', 'dayat', 'Pembayaran Tagihan/Sewa', '356692052020351', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(5, '1589918716928', 'dayat', 'Pembayaran Tagihan/Sewa', '358152052020271', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(6, '1589918738246', 'dayat', 'Pembayaran Tagihan/Sewa', '358152052020271', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(7, '1589918844943', 'dayat', 'Pembayaran Tagihan/Sewa', '355142052020733', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : Kost Biasa', '20/05/2020', 'seen'),
(8, '1589918969998', 'dayat', 'Pembayaran Tagihan/Sewa', '352332052020737', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : Kost Biasa', '20/05/2020', 'seen'),
(9, '1589919186594', 'dayat', 'Pembayaran Tagihan/Sewa', '356272052020507', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : Kost Biasa', '20/05/2020', 'seen'),
(10, '1589919331688', 'dayat', 'Pembayaran Tagihan/Sewa', '357042052020425', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : Kost Biasa', '20/05/2020', 'seen'),
(11, '1589919768175', 'dayat', 'Pembayaran Tagihan/Sewa', '354912052020454', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(12, '1589919830043', 'dayat', 'Pembayaran Tagihan/Sewa', '352472052020602', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(13, '1589920230324', 'dayat', 'Pembayaran Tagihan/Sewa', '357672052020110', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(14, '1589926100334', 'dayat', 'Pembayaran Tagihan/Sewa', '3595205202012', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(15, '1589926429483', 'dayat', 'Pembayaran Tagihan/Sewa', '359052052020138', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(16, '1589926562342', 'dayat', 'Pembayaran Tagihan/Sewa', '35315205202050', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(17, '1589926853191', 'dayat', 'Pembayaran Tagihan/Sewa', '357042052020417', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(18, '1589928364633', 'dayat', 'Pembayaran Tagihan/Sewa', '354922052020716', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(19, '1589928622323', 'dayat', 'Pembayaran Tagihan/Sewa', '356092052020395', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(20, '1589929466291', 'dayat', 'Pembayaran Tagihan/Sewa', '355412052020210', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(21, '1589929850382', 'dayat', 'Pembayaran Tagihan/Sewa', '354282052020297', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '20/05/2020', 'seen'),
(22, '1591204438045', 'dayat', 'Pembayaran Tagihan/Sewa', '3523462020383', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : undefined', '04/06/2020', 'seen'),
(23, '1591205014242', 'dayat', 'Pembayaran Tagihan/Sewa', '35860462020799', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : undefined', '04/06/2020', 'seen'),
(24, '1591246375430', 'dayat', 'Pembayaran Tagihan/Sewa', '35124462020819', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : undefined', '04/06/2020', 'seen'),
(25, '1591246596644', 'dayat', 'Pembayaran Tagihan/Sewa', '35314462020977', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : undefined', '04/06/2020', 'seen'),
(26, '1591247279826', 'dayat', 'Pembayaran Tagihan/Sewa', '35627462020626', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '04/06/2020', 'seen'),
(27, '1591528343620', 'dayat', 'Pembayaran Tagihan/Sewa', '35948762020338', 'dayatvirgo50 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '07/06/2020', 'seen'),
(28, '1591528664560', 'dayat', 'Pembayaran Tagihan/Sewa', '35449762020578', 'dayatvirgo50 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '07/06/2020', 'seen'),
(29, '1591529046372', 'dayat', 'Pembayaran Tagihan/Sewa', '35879762020191', 'dayatvirgo50 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '07/06/2020', 'seen'),
(30, '1591529256539', 'dayat', 'Pembayaran Tagihan/Sewa', '35879762020191', 'dayatvirgo50 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '07/06/2020', 'seen'),
(31, '1591529395872', 'dayat', 'Pembayaran Tagihan/Sewa', '35488762020793', 'dayatvirgo50 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '07/06/2020', 'seen'),
(32, '1591530740622', 'dayat', 'Pembayaran Tagihan/Sewa', '35103762020784', 'dayatvirgo50 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '07/06/2020', 'seen'),
(33, '1591530963019', 'dayat', 'Pembayaran Tagihan/Sewa', '35958762020370', 'dayatvirgo50 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '07/06/2020', 'seen'),
(34, '1591542576334', 'dayat', 'Pembayaran Tagihan/Sewa', '35473762020319', 'dayatvirgo50 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '07/06/2020', 'seen'),
(35, '1593041481716', 'test', 'Survei', '1589791204481', 'Survei Kamu Telah di Tolak', '25/6/2020', 'seen'),
(36, '1593074554479', 'dayatvirgo50', 'Survei', '1593045698535', 'Survei Kamu Telah di Tolak', '25/6/2020', 'seen'),
(37, '1594465353880', 'dayat', 'Pembayaran Tagihan/Sewa', '354381172020434', 'test ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '11/07/2020', 'seen'),
(38, '1596378637235', 'dayat', 'Pembayaran Tagihan/Sewa', '35450282020464', 'penghuni1 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : Kis Kos', '02/08/2020', 'seen'),
(39, '1596379148685', 'dayat', 'Pembayaran Tagihan/Sewa', '35614282020723', 'penghuni1 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : Kis Kos', '02/08/2020', 'seen'),
(40, '1596379362207', 'dayat', 'Pembayaran Tagihan/Sewa', '3577282020183', 'penghuni1 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : Kis Kos', '02/08/2020', 'seen'),
(41, '1596429741300', 'dayat', 'Pembayaran Tagihan/Sewa', '3574382020495', 'penghuni1 ingin melakukan pembayaran melalui cash untuk penyewaan pada hunian Anda : My Kost', '03/08/2020', 'seen'),
(42, '1596435190516', 'dayatuuser', 'Survei', '1596391995837', 'Survei Kamu Telah di Terima', '3/8/2020', 'seen'),
(43, '1596435403200', 'dayatuuser', 'Permintaan ShareRoom', '12', 'Permintaan ShareRoom Anda Telah diTerima', '03/08/2020', 'unseen'),
(44, '1596435407329', 'dayatuuser', 'Permintaan ShareRoom', '12', 'Permintaan ShareRoom Anda Telah diTerima', '03/08/2020', 'unseen'),
(47, '1597061903166', 'dayat', 'Pemberitahuan Berhenti Sewa', '902251082020992', 'dayatuuser ingin berhenti pada hunian Anda : Kis Kos', '10/08/2020', 'unseen'),
(48, '1597062325885', 'dayat', 'Pemberitahuan Berhenti Sewa', '10', 'dayatuuser ingin berhenti pada hunian Anda : Kis Kos', '10/08/2020', 'seen');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penghuni`
--

CREATE TABLE `tbl_penghuni` (
  `id` int(11) NOT NULL,
  `idHunian` int(11) NOT NULL,
  `idKamar` int(11) NOT NULL,
  `usernamePenghuni` varchar(30) NOT NULL,
  `namaPenghuni` varchar(50) NOT NULL,
  `nama_hunian` varchar(30) NOT NULL,
  `pemilik` varchar(30) NOT NULL,
  `nama_kamar` varchar(30) NOT NULL,
  `jangkaWaktu` varchar(10) NOT NULL,
  `tgl_masuk` varchar(30) NOT NULL,
  `tgl_keluar` varchar(30) NOT NULL,
  `tgl_pembayaran` varchar(15) NOT NULL,
  `statusPembayaran` varchar(20) NOT NULL,
  `no_transaksi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penghuni`
--

INSERT INTO `tbl_penghuni` (`id`, `idHunian`, `idKamar`, `usernamePenghuni`, `namaPenghuni`, `nama_hunian`, `pemilik`, `nama_kamar`, `jangkaWaktu`, `tgl_masuk`, `tgl_keluar`, `tgl_pembayaran`, `statusPembayaran`, `no_transaksi`) VALUES
(8, 1, 19, 'user', 'user', 'Mi Kos', 'Dayat', 'Anggrek', 'Harian', '18 Juli 2020', '19 Juli 2020', '19/07/2020', 'Belum Lunas', '358861972020725'),
(9, 13, 20, 'penghuni', 'Rahmat Hidayat', 'Kis Kos', 'Dayat', 'Kamar A', 'Bulanan', '02 Agustus 2020', '02 September 2020', '02/08/2020', 'Lunas', '35379282020360'),
(11, 3, 2, 'penghuni1', 'Tes Penghuni', 'My Kost', 'Dayat', 'Beruang', 'Bulanan', '03 Agustus 2020', '03 September 2020', '03/08/2020', 'Lunas', '3574382020495');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pln`
--

CREATE TABLE `tbl_pln` (
  `id` int(11) NOT NULL,
  `noPelanggan` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tarif` varchar(5) DEFAULT NULL,
  `daya` varchar(6) DEFAULT NULL,
  `standMeter` varchar(30) DEFAULT NULL,
  `jenisListrik` varchar(15) DEFAULT NULL,
  `tarifKWH` varchar(8) NOT NULL,
  `periode` varchar(20) DEFAULT NULL,
  `harga_tagihan` varchar(15) DEFAULT NULL,
  `denda` varchar(5) DEFAULT NULL,
  `kota` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pln`
--

INSERT INTO `tbl_pln` (`id`, `noPelanggan`, `nama`, `tarif`, `daya`, `standMeter`, `jenisListrik`, `tarifKWH`, `periode`, `harga_tagihan`, `denda`, `kota`) VALUES
(1, '123123456456', 'Kiki', 'R1', '900', '12345678-12345678', 'Pascabayar', '', 'JAN20', '50000', '0', ''),
(2, '123123123123', 'Dedi', 'R1', '900', '12345678-1231231', 'Prabayar', '605', NULL, NULL, NULL, 'Medan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promo`
--

CREATE TABLE `tbl_promo` (
  `id_promo` int(11) NOT NULL,
  `nama_promo` varchar(35) NOT NULL,
  `kode_promo` varchar(15) NOT NULL,
  `jenisPromo` varchar(15) NOT NULL,
  `tgl_mulai` varchar(30) NOT NULL,
  `tgl_akhir` varchar(30) NOT NULL,
  `persen` varchar(4) NOT NULL,
  `poto` varchar(50) NOT NULL,
  `kuota` varchar(30) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `targetPromo` varchar(20) NOT NULL,
  `targetUser` varchar(30) NOT NULL,
  `minTransaksi` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_promo`
--

INSERT INTO `tbl_promo` (`id_promo`, `nama_promo`, `kode_promo`, `jenisPromo`, `tgl_mulai`, `tgl_akhir`, `persen`, `poto`, `kuota`, `deskripsi`, `targetPromo`, `targetUser`, `minTransaksi`) VALUES
(2, 'Promo', 'BBKPAY12', 'Potongan Harga', '03 Aug 2020', '27 Aug 2020', '5', '1596396068182_IMAGE.jpg', '0', 'Test', 'Tagihan', 'Penghuni', ''),
(3, 'Test', 'BBKPAY12', 'Potongan Harga', '03 Aug 2020', '20 Aug 2020', '5', '1596396152329_IMAGE.jpg', '0', 'Test promo', 'Layanan', 'Penghuni', ''),
(4, 'Test promo', 'TESTPROMO', 'Potongan Harga', '03 Aug 2020', '27 Aug 2020', '5', '1596396962740_IMAGE.jpg', '0', 'Test Promo', 'Layanan', 'Penghuni,Pemilik', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pulsa`
--

CREATE TABLE `tbl_pulsa` (
  `id` int(11) NOT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `periode` varchar(20) DEFAULT NULL,
  `harga_tagihan` varchar(15) DEFAULT NULL,
  `denda` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pulsa`
--

INSERT INTO `tbl_pulsa` (`id`, `tel`, `nama`, `periode`, `harga_tagihan`, `denda`) VALUES
(1, '085767578558', 'Putri', 'JAN20', '45000', '0'),
(2, '085767578551', 'Dedi', 'DES19 - JAN20', '100000', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `idReview` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `date_create` varchar(30) NOT NULL,
  `deskripsi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`idReview`, `username`, `nama`, `date_create`, `deskripsi`) VALUES
(1, 'dayatvirg50', 'Rahmat', '09/05/2020', 'Aplikasi nya sudah mantap,, tapi banyakin diskon nya dong min');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shareroom`
--

CREATE TABLE `tbl_shareroom` (
  `id` int(11) NOT NULL,
  `idHunian` int(11) NOT NULL,
  `idKamar` int(11) NOT NULL,
  `usernamePengirim` varchar(30) NOT NULL,
  `usernameDiundang` varchar(30) NOT NULL,
  `usernamePemilik` varchar(30) NOT NULL,
  `namaDiundang` varchar(50) NOT NULL,
  `date_create` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `nama_hunian` varchar(30) NOT NULL,
  `nama_kamar` varchar(30) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `statusPermintaan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shareroom`
--

INSERT INTO `tbl_shareroom` (`id`, `idHunian`, `idKamar`, `usernamePengirim`, `usernameDiundang`, `usernamePemilik`, `namaDiundang`, `date_create`, `time`, `nama_hunian`, `nama_kamar`, `deskripsi`, `statusPermintaan`) VALUES
(1, 0, 0, 'test', 'dayatvirgo50', 'dayat', 'Rahmat', '21/04/2020', '01 : 32', 'Kost Biasa', 'Mawar', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Terima'),
(2, 0, 0, 'test', 'dayatvirgo50', 'dayat', 'Rahmat', '23/04/2020', '01 : 05', 'Kost Biasa', 'Mawar', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Terima'),
(3, 0, 0, 'dayatvirgo50', 'test', 'dayat', 'testi', '23/04/2020', '08:49', 'My Kost', 'Beruang', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Terima'),
(4, 0, 0, 'test', 'dayatvirgo50', 'dayat', 'Rahmat', '25/04/2020', '15:47', 'My Kost', 'Beruang', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Tolak'),
(5, 0, 0, 'test', 'dayatvirgo50', 'dayat', 'Rahmat', '25/04/2020', '15:57', 'My Kost', 'Beruang', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Tolak'),
(6, 3, 2, 'test', 'dayatvirgo50', 'dayat', 'Rahmat', '01/05/2020', '03:30', 'My Kost', 'Beruang', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Tolak'),
(7, 3, 2, 'test', 'dayatvirgo50', 'dayat', 'Rahmat', '16/05/2020', '20:38', 'My Kost', 'Beruang', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Terima'),
(8, 3, 3, 'dayatvirgo50', 'test', 'dayat', 'testi', '07/06/2020', '22:26', 'My Kost', 'Testi', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Pending'),
(9, 3, 3, 'dayatvirgo50', 'test', 'dayat', 'testi', '13/07/2020', '21:39', 'My Kost', 'Testi', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Pending'),
(10, 13, 20, 'penghuni', 'Ahade', 'dayat', 'Budi Setia', '02/08/2020', '18:37', 'Kis Kos', 'Kamar A', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Pending'),
(11, 13, 20, 'dayatuuser', 'dayatvirgo', 'dayat', 'Dayat', '03/08/2020', '01:38', 'Kis Kos', 'Kamar A', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Pending'),
(12, 13, 20, 'dayatuuser', 'Ahade', 'dayat', 'Budi Setia', '03/08/2020', '01:43', 'Kis Kos', 'Kamar A', 'Saya Ingin Berbagi Kamar Dengan Teman Saya', 'Terima');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survei`
--

CREATE TABLE `tbl_survei` (
  `id` int(11) NOT NULL,
  `idHunian` int(11) NOT NULL,
  `nomor_survei` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `nama_hunian` varchar(50) DEFAULT NULL,
  `tanggalSurvei` varchar(50) DEFAULT NULL,
  `waktuSurvei` varchar(50) DEFAULT NULL,
  `pesan` varchar(100) DEFAULT NULL,
  `usernamePenerima` varchar(50) DEFAULT NULL,
  `namaPenerima` varchar(50) DEFAULT NULL,
  `tanggalBuat` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `penolakan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_survei`
--

INSERT INTO `tbl_survei` (`id`, `idHunian`, `nomor_survei`, `username`, `nama`, `nama_hunian`, `tanggalSurvei`, `waktuSurvei`, `pesan`, `usernamePenerima`, `namaPenerima`, `tanggalBuat`, `status`, `penolakan`) VALUES
(1, 2, '1589791204481', 'test', 'testi', 'Kos elite', '18/May/2020', '17:35', 'Test', 'dayat', 'dayat', '18/05/2020', 'Tolak', ''),
(15, 2, '1593045698535', 'dayatvirgo50', 'Rahmat', '', '25/Juni/2020', '07:41', 'Test', 'dayat', 'Dayat', '25/06/2020', 'Tolak', ''),
(28, 2, '1593076475089', 'dayatvirgo50', 'Rahmat', '', '25/Juni/2020', '16:14', 'Test', 'dayat', 'Dayat', '25/06/2020', 'Belum Konfirmasi', ''),
(29, 13, '1594855901309', 'dayatvirgo50', 'Rahmat', 'Kis Kos', '16/Juli/2020', '08:30', 'Test', 'dayat', 'Dayat', '16/07/2020', 'Belum Konfirmasi', ''),
(30, 13, '1594856100579', 'dayatvirgo50', 'Rahmat', 'Kis Kos', '18/Juli/2020', '08:45', 'Test', 'dayat', 'Dayat', '16/07/2020', 'Belum Konfirmasi', ''),
(31, 13, '1594866817833', 'user', 'user', 'Kis Kos', '16/Juli/2020', '11:01', 'Test', 'dayat', 'Dayat', '16/07/2020', 'Belum Konfirmasi', ''),
(32, 13, '1594866984049', 'user', 'user', 'Kis Kos', '16/Juli/2020', '09:36', 'Tet', 'dayat', 'Dayat', '16/07/2020', 'Belum Konfirmasi', ''),
(33, 13, '1595258749313', 'user', 'user', 'Kis Kos', '21/Juli/2020', '22:25', '', 'dayat', 'Dayat', '20/07/2020', 'Belum Konfirmasi', ''),
(34, 13, '1596349518451', 'penghuni', 'Rahmat Hidayat', 'Kis Kos', '04/Agustus/2020', '14:00', 'Saya ingin melakukan survei pada hunian anda', 'dayat', 'Dayat', '02/08/2020', 'Belum Konfirmasi', ''),
(35, 13, '1596349556559', 'penghuni', 'Rahmat Hidayat', 'Kis Kos', '04/Agustus/2020', '16:25', 'Saya Ingin Melakukan Survei Pada Hunian Anda', 'dayat', 'Dayat', '02/08/2020', 'Belum Konfirmasi', ''),
(36, 13, '1596391539613', 'dayatuuser', 'Hidayat', 'Kis Kos', '03/Agustus/2020', '17:05', 'Bisa kah ?', 'dayat', 'Dayat', '03/08/2020', 'Belum Konfirmasi', ''),
(37, 13, '1596391995837', 'dayatuuser', 'Hidayat', 'Kis Kos', '03/Agustus/2020', '13:12', 'Bisa kah ?', 'dayat', 'Dayat', '03/08/2020', 'Terima', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` int(11) NOT NULL,
  `no_transaksi` varchar(50) DEFAULT NULL,
  `jenisTransaksi` varchar(50) DEFAULT NULL,
  `kategoriTransaksi` varchar(50) DEFAULT NULL,
  `namaTransaksi` varchar(50) DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `pemilik` varchar(50) DEFAULT NULL,
  `nama_hunian` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no_kamar` varchar(50) DEFAULT NULL,
  `tgl_masuk` varchar(50) DEFAULT NULL,
  `tgl_keluar` varchar(50) DEFAULT NULL,
  `jangkaWaktu` varchar(50) DEFAULT NULL,
  `tgl_transaksi` varchar(50) DEFAULT NULL,
  `kodePromo` varchar(50) DEFAULT NULL,
  `nominal` varchar(10) DEFAULT NULL,
  `denda` varchar(10) NOT NULL,
  `periode` varchar(50) DEFAULT NULL,
  `metode` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id`, `no_transaksi`, `jenisTransaksi`, `kategoriTransaksi`, `namaTransaksi`, `nomor`, `pemilik`, `nama_hunian`, `username`, `nama`, `no_kamar`, `tgl_masuk`, `tgl_keluar`, `jangkaWaktu`, `tgl_transaksi`, `kodePromo`, `nominal`, `denda`, `periode`, `metode`, `status`, `ref`) VALUES
(1, '354912052020401', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '23 Mei 2020', 'Harian', '20/05/2020', '-', '60000', '', '', 'Cash', 'Lunas', ''),
(2, '356612052020420', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '20 Mei 2020', '23 Mei 2020', 'Harian', '20/05/2020', '-', '60000', '', '', 'Cash', 'Lunas', ''),
(3, '355332052020899', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'Kos elite', 'test', 'testi', 'Mawar', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(4, '356692052020351', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '23 Mei 2020', 'Harian', '20/05/2020', '-', '60000', '', '', 'Cash', 'Lunas', ''),
(5, '358152052020271', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '20 Mei 2020', '23 Mei 2020', 'Harian', '20/05/2020', '-', '60000', '', '', 'Cash', 'Lunas', ''),
(6, '355142052020733', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'Kost Biasa', 'test', 'testi', 'Mawar', '20 Mei 2020', '23 Mei 2020', 'Harian', '20/05/2020', '-', '60000', '', '', 'Cash', 'Lunas', ''),
(7, '352332052020737', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'Kost Biasa', 'test', 'testi', 'Mawar', '20 Mei 2020', '23 Mei 2020', 'Harian', '20/05/2020', '-', '60000', '', '', 'Cash', 'Lunas', ''),
(8, '356272052020507', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'Kost Biasa', 'test', 'testi', 'Mawar', '20 Mei 2020', '21 Mei 2020', 'Harian', '20/05/2020', '-', '20000', '', '', 'Cash', 'Lunas', ''),
(9, '357042052020425', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'Kost Biasa', 'test', 'testi', 'Mawar', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(10, '354912052020454', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(11, '352472052020602', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '20 Mei 2020', '23 Mei 2020', 'Harian', '20/05/2020', '-', '60000', '', '', 'Cash', 'Lunas', ''),
(12, '353612052020230', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'HomiePay', 'Berhasil', ''),
(13, '357672052020110', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '20 Mei 2020', '21 Mei 2020', 'Harian', '20/05/2020', '-', '20000', '', '', 'Cash', 'Lunas', ''),
(14, '353392052020485', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '20 Mei 2020', '21 Mei 2020', 'Harian', '20/05/2020', '-', '20000', '', '', 'HomiePay', 'Berhasil', ''),
(15, '3595205202012', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(16, '359052052020138', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(17, '35315205202050', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(18, '357042052020417', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(19, '354922052020716', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(20, '356092052020395', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '22 Mei 2020', 'Harian', '20/05/2020', '-', '40000', '', '', 'Cash', 'Lunas', ''),
(21, '355412052020210', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '20 Mei 2020', '', 'Mingguan', '20/05/2020', '-', '140000', '', '', 'Cash', 'Lunas', ''),
(22, '354282052020297', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '20 Mei 2020', '23 Mei 2020', 'Harian', '20/05/2020', '-', '60000', '', '', 'Cash', 'Lunas', ''),
(23, '385922352020452', 'Tarik Saldo', 'Pembayaran', 'Tarik Saldo', '24081998', '', '', 'test', 'testi', '', '', '', '', '23/05/2020', '', '22500', '', '', '', 'Berhasil', '-'),
(24, '398802852020113', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(25, '393352852020113', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(26, '393912852020113', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(27, '383062852020153', 'Tarik Saldo', 'Pembayaran', 'Tarik Saldo', '24081998', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '27500', '', '', '', 'Berhasil', '-'),
(28, '382102852020485', 'Tarik Saldo', 'Pembayaran', 'Tarik Saldo', '24081998', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '67500', '', '', '', 'Berhasil', 'Test'),
(29, '384062852020418', 'Tarik Saldo', 'Pembayaran', 'Tarik Saldo', '24081998', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '27500', '', '', '', 'Berhasil', 'Test'),
(30, '381182852020921', 'Tarik Saldo', 'Pembayaran', 'Tarik Saldo', '24081998', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '47500', '', '', '', 'Berhasil', '-'),
(31, '363012852020837', 'Tagihan', 'Pembayaran', 'Listrik Prabayar', '123123123123', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '22500', '', '', 'HomiePay', 'Berhasil', '78086235892005119123'),
(32, '40429285202066', 'Pembelian', 'Pembayaran', 'Pulsa Prabayar', '085767578552', '', '', 'test', 'testi', '', '', '', '', '28/05/2020', '', '15500', '', '', 'HomiePay', 'Berhasil', ''),
(33, '3542952020986', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '29 Mei 2020', '', 'Mingguan', '29/05/2020', '-', '140000', '', '', 'HomiePay', 'Berhasil', ''),
(34, '357502952020894', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'Kos elite', 'test', 'testi', 'Mawar', '29 Mei 2020', '5 Juni 2020', 'Mingguan', '29/05/2020', 'PARTYHOMIE', '91000', '', '', 'HomiePay', 'Berhasil', ''),
(35, '359622952020955', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '29 Mei 2020', '30 Mei 2020', 'Harian', '29/05/2020', 'PARTYHOMIE', '13000', '', '', 'HomiePay', 'Berhasil', ''),
(36, '359462952020796', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Testi', '29 Mei 2020', '30 Mei 2020', 'Harian', '29/05/2020', 'PARTYHOMIE', '13000', '', '', 'HomiePay', 'Berhasil', ''),
(37, '398853052020107', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578557', '', '', 'dayat', 'Dayat', '', '', '', '', '30/05/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(38, '39653152020953', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '31/05/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(39, '393333152020953', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '31/05/2020', '', '100000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(40, '393993152020953', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '31/05/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(41, '35253152020298', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '31 Mei 2020', '30 Juni 2020', 'Bulanan', '31/05/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(42, '35625362020638', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'undefined', 'Beruang', '30 Juni 2020', '', 'Bulanan', '03/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(43, '35493362020869', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', 'undefined', 'Bulanan', '03/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(44, '35856362020228', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', 'undefined', 'Bulanan', '03/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(45, '35856362020228', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', 'undefined', 'Bulanan', '03/06/2020', 'PARTYHOMIE', '364000', '', '', 'Cash', 'Pending', ''),
(46, '3519362020639', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', 'undefined', 'Bulanan', '03/06/2020', 'PARTYHOMIE', '364000', '', '', 'Cash', 'Pending', ''),
(47, '39454620208', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '04/06/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(48, '397184620208', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '04/06/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(49, '3523462020383', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', '', 'Bulanan', '04/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(50, '3523462020383', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(51, '3523462020383', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(52, '3523462020383', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(53, '3523462020383', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(54, '35860462020799', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', '', 'Bulanan', '04/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(55, '35124462020819', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', '', 'Bulanan', '04/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(56, '35314462020977', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'Cash', 'Pending', ''),
(57, '35317462020492', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(58, '35627462020626', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(59, '35518462020202', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(60, '39674462020286', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '04/06/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(61, '39378462020286', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '04/06/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(62, '35889462020557', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '04 Juni 2020', '04 Juli 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(63, '35738462020527', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(64, '3599146202095', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(65, '35533462020797', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '04/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(66, '399676202065', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '07/06/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(67, '3995276202065', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '07/06/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(68, '3911076202034', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(69, '39698762020649', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(70, '39120762020326', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(71, '3971762020765', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(72, '39688762020148', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(73, '39781762020686', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(74, '39613762020258', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(75, '39280762020952', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(76, '39844762020918', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(77, '39684762020138', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(78, '39439762020997', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '10000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(79, '39989762020997', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '10000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(80, '39458762020400', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '10000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(81, '39569762020527', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '10000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(82, '39923762020686', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '10000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(83, '39832762020817', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '10000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(84, '35851762020992', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', 'PARTYHOMIE', '364000', '', '', 'HomiePay', 'Berhasil', ''),
(85, '39816762020435', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '10000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(86, '39614762020435', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '10000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(87, '39864762020886', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '07/06/2020', '', '50000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(88, '38920762020985', 'Tarik Saldo', 'Pembayaran', 'Tarik Saldo', '24081998', '', '', 'test', 'testi', '', '', '', '', '07/06/2020', '', '102500', '', '', '', 'Berhasil', '-'),
(89, '3535762020712', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'HomiePay', 'Berhasil', ''),
(90, '35948762020338', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(91, '35284762020582', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'HomiePay', 'Berhasil', ''),
(92, '35449762020578', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(93, '35879762020191', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(94, '35879762020191', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(95, '35488762020793', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(96, '35103762020784', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(97, '35958762020370', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'Cash', 'Pending', ''),
(98, '35473762020319', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Mei 2020', '30 Juni 2020', 'Bulanan', '07/06/2020', '', '560000', '', '', 'Cash', 'Lunas', ''),
(99, '39910116202062', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578556', '', '', 'dayatvirgo50', 'Rahmat', '', '', '', '', '11/06/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(100, '352231172020376', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Juni 2020', '30 Juli 2020', 'Bulanan', '11/07/2020', 'BORONGDISKON', '420000', '', '', 'HomiePay', 'Lunas', ''),
(101, '354381172020434', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'test', 'testi', 'Beruang', '30 Juni 2020', '30 Juli 2020', 'Bulanan', '11/07/2020', '', '600000', '', '', 'Cash', 'Lunas', ''),
(102, '398961272020242', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '12/07/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(103, '397561272020242', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578552', '', '', 'test', 'testi', '', '', '', '', '12/07/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(104, '398021972020355', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578531', '', '', 'user', 'user', '', '', '', '', '19/07/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(105, '399661972020355', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085767578531', '', '', 'user', 'user', '', '', '', '', '19/07/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(106, '351101972020322', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'Dayat', 'Mi Kos', 'user', 'user', 'Mawar', '17 Juli 2020', '19 Juli 2020', 'Harian', '19/07/2020', '', '30000', '', '', 'HomiePay', 'Berhasil', ''),
(107, '358861972020725', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'Dayat', 'Mi Kos', 'user', 'user', 'Anggrek', '18 Juli 2020', '19 Juli 2020', 'Harian', '19/07/2020', '', '30000', '', '', 'HomiePay', 'Berhasil', ''),
(108, '39233282020135', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '123456789012', '', '', 'penghuni', 'Rahmat Hidayat', '', '', '', '', '02/08/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'Maybank'),
(109, '39323282020449', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '123456789012', '', '', 'penghuni', 'Rahmat Hidayat', '', '', '', '', '02/08/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'Maybank'),
(110, '40822282020197', 'Pembelian', 'Pembayaran', 'Pulsa Prabayar', '085767578556', '', '', 'penghuni', 'Rahmat Hidayat', '', '', '', '', '02/08/2020', '', '7500', '', '', 'HomiePay', 'Berhasil', ''),
(111, '35379282020360', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'Dayat', 'Kis Kos', 'penghuni', 'Rahmat Hidayat', 'Kamar A', '02 Agustus 2020', '02 September 2020', 'Bulanan', '02/08/2020', '', '500000', '', '', 'HomiePay', 'Berhasil', ''),
(112, '38235282020448', 'Tarik Saldo', 'Pembayaran', 'Tarik Saldo', '24081998', '', '', 'penghuni', 'Rahmat Hidayat', '', '', '', '', '02/08/2020', '', '102500', '', '', '', 'Berhasil', '-'),
(113, '37649282020913', 'Tagihan', 'Pembayaran', 'PDAM', '1234567899', '', '', 'penghuni', 'Rahmat Hidayat', '', '', '', '', '02/08/2020', '', '52500', '', 'FEB20 - MAR20', 'HomiePay', 'Berhasil', ''),
(114, '36824282020378', 'Tagihan', 'Pembayaran', 'Listrik Prabayar', '123123123123', '', '', 'penghuni', 'Rahmat Hidayat', '', '', '', '', '02/08/2020', '', '22500', '', '', 'HomiePay', 'Berhasil', '50637968290068801568'),
(115, '36960282020433', 'Tagihan', 'Pembayaran', 'Listrik Pascabayar', '123123456456', '', '', 'penghuni', 'Rahmat Hidayat', '', '', '', '', '02/08/2020', '', '52500', '', 'JAN20', 'HomiePay', 'Berhasil', ''),
(116, '40786282020737', 'Tagihan', 'Pembayaran', 'Pulsa Pascabayar', '085767578551', '', '', 'penghuni', 'Rahmat Hidayat', '', '', '', '', '02/08/2020', '', '112500', '', 'DES19 - JAN20', 'HomiePay', 'Berhasil', ''),
(117, '35450282020464', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'Dayat', 'Kis Kos', 'penghuni1', 'Tes Penghuni', 'Kamar A', '02 Agustus 2020', '02 September 2020', 'Bulanan', '02/08/2020', '', '500000', '', '', 'Cash', 'Pending', ''),
(118, '35614282020723', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'Dayat', 'Kis Kos', 'penghuni1', 'Tes Penghuni', 'Kamar A', '02 Agustus 2020', '02 September 2020', 'Bulanan', '02/08/2020', '', '500000', '', '', 'Cash', 'Pending', ''),
(119, '3577282020183', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'Dayat', 'Kis Kos', 'penghuni1', 'Tes Penghuni', 'Kamar A', '02 Agustus 2020', '02 September 2020', 'Bulanan', '02/08/2020', '', '500000', '', '', 'Cash', 'Pending', ''),
(120, '39944382020416', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085712345678', '', '', 'dayatuuser', 'Hidayat', '', '', '', '', '03/08/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(121, '38589382020801', 'Tarik Saldo', 'Pembayaran', 'Tarik Saldo', '123456789', '', '', 'dayatuuser', 'Hidayat', '', '', '', '', '03/08/2020', '', '102500', '', '', '', 'Berhasil', '-'),
(122, '37236382020558', 'Tagihan', 'Pembayaran', 'PDAM', '1234567899', '', '', 'dayatuuser', 'Hidayat', '', '', '', '', '03/08/2020', '', '52500', '', 'FEB20 - MAR20', 'HomiePay', 'Berhasil', ''),
(123, '36864382020924', 'Tagihan', 'Pembayaran', 'Listrik Prabayar', '123123123123', '', '', 'dayatuuser', 'Hidayat', '', '', '', '', '03/08/2020', '', '22500', '', '', 'HomiePay', 'Berhasil', '02038263237162477972'),
(124, '36747382020674', 'Tagihan', 'Pembayaran', 'Listrik Pascabayar', '123123456456', '', '', 'dayatuuser', 'Hidayat', '', '', '', '', '03/08/2020', '', '52500', '', 'JAN20', 'HomiePay', 'Berhasil', ''),
(125, '40414382020467', 'Pembelian', 'Pembayaran', 'Pulsa Prabayar', '085767578556', '', '', 'dayatuuser', 'Hidayat', '', '', '', '', '03/08/2020', '', '7500', '', '', 'HomiePay', 'Berhasil', ''),
(126, '40560382020772', 'Tagihan', 'Pembayaran', 'Pulsa Pascabayar', '085767578551', '', '', 'dayatuuser', 'Hidayat', '', '', '', '', '03/08/2020', '', '112500', '', 'DES19 - JAN20', 'HomiePay', 'Berhasil', ''),
(127, '39343382020726', 'Top Up', 'Isi Ulang', 'Saldo HomiePay', '085712345678', '', '', 'dayatuuser', 'Hidayat', '', '', '', '', '03/08/2020', '', '500000', '', '', 'Kartu Debit', 'Berhasil', 'BRI'),
(128, '35343382020444', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'Dayat', 'Kis Kos', 'dayatuuser', 'Hidayat', 'Kamar A', '03 Agustus 2020', '03 September 2020', 'Bulanan', '03/08/2020', '', '500000', '', '', 'HomiePay', 'Berhasil', ''),
(129, '3574382020495', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'Dayat', 'My Kost', 'penghuni1', 'Tes Penghuni', 'Beruang', '03 Agustus 2020', '03 September 2020', 'Bulanan', '03/08/2020', '', '600000', '', '', 'Cash', 'Lunas', ''),
(130, '35363682020838', 'Pembayaran Tagihan', 'Pembayaran', 'Pembayaran Tagihan/Sewa', '', 'dayat', 'My Kost', 'dayatvirgo50', 'Rahmat', 'Testi', '30 Juli 2020', '30 Agustus 2020', 'Bulanan', '06/08/2020', '', '600000', '', '', 'HomiePay', 'Lunas', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ulasan`
--

CREATE TABLE `tbl_ulasan` (
  `id` int(11) NOT NULL,
  `idUlasan` varchar(30) NOT NULL,
  `idHunian` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis` varchar(30) DEFAULT NULL,
  `ulasan` varchar(30) DEFAULT NULL,
  `poto` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `starFasilitas` varchar(30) DEFAULT NULL,
  `starHarga` varchar(30) DEFAULT NULL,
  `starKeamanan` varchar(30) DEFAULT NULL,
  `starKebersihan` varchar(30) DEFAULT NULL,
  `starKenyamanan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ulasan`
--

INSERT INTO `tbl_ulasan` (`id`, `idUlasan`, `idHunian`, `username`, `nama`, `jenis`, `ulasan`, `poto`, `date`, `starFasilitas`, `starHarga`, `starKeamanan`, `starKebersihan`, `starKenyamanan`) VALUES
(1, '1588031060209', 3, 'test', 'testi', 'Penghuni', '', '1588031066737_IMAGE.jpg', '28/04/2020', '5', '5', '5', '3', '5'),
(2, '1588031078564', 3, 'test', 'testi', 'Penghuni', 'Test', '1588031096142_IMAGE.jpg', '28/04/2020', '5', '5', '5', '5', '5'),
(3, '1588031834533', 3, 'test', 'testi', 'Penghuni', 'Test,\nMancap', '1588031855721_IMAGE.jpg', '28/04/2020', '5', '4', '5', '5', '4'),
(4, '1588038822298', 2, 'test', 'testi', 'Penghuni', 'Test', '1588038841563_IMAGE.jpg', '28/04/2020', '5', '4', '5', '3', '5'),
(5, '1588091813058', 3, 'test', 'testi', 'Penghuni', '', '1588091822326_IMAGE.jpg', '28/04/2020', '3', '5', '5', '5', '5'),
(6, '1588322019651', 1, 'test', 'testi', 'Penghuni', 'Test', '1588322041096_IMAGE.jpg', '01/05/2020', '5', '5', '5', '4', '5'),
(7, '1588322050880', 1, 'test', 'testi', 'Penghuni', '', '1588322061124_IMAGE.jpg', '01/05/2020', '3', '3', '3', '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `role` varchar(20) NOT NULL,
  `poto` varchar(50) NOT NULL,
  `team` varchar(20) NOT NULL,
  `idOneSignal` varchar(100) NOT NULL,
  `lastActive` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `nama`, `email`, `alamat`, `kota`, `tel`, `jenis_kelamin`, `role`, `poto`, `team`, `idOneSignal`, `lastActive`) VALUES
(1, 'dayatvirgo50', 'dayat', 'Rahmat', 'lsdayat@gmail.com', 'Jl.Rahmadsyah', 'Tebing Tinggi', '085767578556', 'Pria', 'Penghuni', '1585834798735_IMAGE.jpg', 'undefined', 'b570133c-5551-4a4c-8128-97185b3f0c28', '10 Agustus 2020 06:57:46'),
(9, 'dayat', 'dayat', 'Dayat', 'rahmat.hidayatsk24@gmail.com', 'Jl.Rahmadsyah', 'medan', '085767578567', 'Pria', 'Pemilik', '1588521721469_IMAGE.jpg', '', 'b570133c-5551-4a4c-8128-97185b3f0c28', '10 Agustus 2020 08:38:23'),
(10, 'test', 'tes123', 'testi', 'testi@gmail.com', 'Jl.Bulian', 'Tebing Tinggi', '085767578555', 'Pria', 'Penghuni', '1586790536792_IMAGE.jpg', '', 'b570133c-5551-4a4c-8128-97185b3f0c28', '12 Juli 2020 09:17:19'),
(11, 'testi', 'testi123', 'Tes', 'tes123@gmail.com', 'Jl.Medan', 'Medan', '085767578852', 'Pria', 'Pemilik', 'noPotoUser.png', '', '', '07 Agustus 2020 10:47:13'),
(12, 'budi0022', 'Budi123', 'Budi Setiawan', 'BudiSetiawan@homie.com', 'Jl.Makmur,Gg.Sentosa', 'Medan', '085767578545', 'Pria', 'Admin', 'admin3.jpg', 'Developer', '', ''),
(14, 'kevin123', 'Test123', 'Kevin Sanjaya', 'kevin.sanjaya@homie.com', 'Jl.Jend.Sudirman', 'Medan', '085767578543', 'Pria', 'Admin', '1589508712233_IMAGE.jpg', 'System Analyst', '', ''),
(15, 'rahmat', 'Dayat123', 'Rahmat Hidayat', 'rahmat_hidayat@homie.com', 'Jl.Jend.Sudirman', 'Tebing Tinggi', '085767578566', 'Pria', 'Admin', '1589236626460_IMAGE.jpg', 'Developer', '', ''),
(16, 'Ahade', 'Ahade123', 'Budi Setia', '123123123@gmail.com', 'Jl.Kota', 'Medan', '085767572525', 'Pria', 'Penghuni', 'noPotoUser.png', '', '22d113f3-ce29-4972-bf99-91ec10e91b75', '07 Agustus 2020 10:46:35'),
(18, 'testi123', 'testi123', 'Testi', 'testi@homie.com', 'Jl.Cirebon', 'Medan', '085767577777', 'Pria', 'Admin', '1589508970313_IMAGE.jpg', 'Admin', '', ''),
(19, 'agus', 'agus123', 'Agus Sanjaya', 'agus@homie.com', 'Jl.Kota', 'Medan', '085767572225', 'Pria', 'Admin', '1589512982398_IMAGE.jpg', 'System Analyst', '', ''),
(20, 'user', 'user', 'user', 'lslslsls@gmail.com', 'Jl.Medan', 'Medan', '085767578531', 'Pria', 'Penghuni', 'noPotoUser.png', '', 'b570133c-5551-4a4c-8128-97185b3f0c28', '20 Juli 2020 11:04:01'),
(21, 'penghuni', 'rahmat123', 'Rahmat Hidayat', 'ilmu.komputer81@gmail.com', 'Jl.Jend.Sudirman', 'Medan', '123456789012', 'Pria', 'Penghuni', '1596376504768_IMAGE.jpg', 'undefined', 'b570133c-5551-4a4c-8128-97185b3f0c28', '10 Agustus 2020 11:23:57'),
(22, 'penghuni1', 'dayat123', 'Tes Penghuni', 'rahmat@gmail.com', 'Jl.Jend.Sudirman', 'Medan', '085712345678', 'Pria', 'Penghuni', 'noPotoUser.png', '', 'b570133c-5551-4a4c-8128-97185b3f0c28', '03 Agustus 2020 11:41:24'),
(23, 'dayatvirgo', 'dayat123', 'Dayat', 'rahmat.hidayatsk24@gmail.com', 'Jl.Rahmadsyah', 'Medan', '085712345678', 'Pria', 'Penghuni', 'noPotoUser.png', '', '22d113f3-ce29-4972-bf99-91ec10e91b75', '06 Agustus 2020 11:14:31'),
(24, 'dayatuuser', 'dayat123', 'Hidayat', 'lsdayat@gmail.com', 'Jl.Jend.Sudirman', 'Medan', '085712345675', 'Pria', 'Penghuni', 'noPotoUser.png', 'undefined', 'b570133c-5551-4a4c-8128-97185b3f0c28', '10 Agustus 2020 11:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `idHunian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `username`, `idHunian`) VALUES
(1, 'dayatuuser', 16),
(2, 'dayatuuser', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_air`
--
ALTER TABLE `tbl_air`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idHunianChat` (`idHunian`);

--
-- Indexes for table `tbl_fasilitas`
--
ALTER TABLE `tbl_fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_homiepay`
--
ALTER TABLE `tbl_homiepay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hunian`
--
ALTER TABLE `tbl_hunian`
  ADD PRIMARY KEY (`idHunian`);

--
-- Indexes for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD PRIMARY KEY (`idKamar`),
  ADD KEY `fk_idHunian` (`idHunian`);

--
-- Indexes for table `tbl_livechat`
--
ALTER TABLE `tbl_livechat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_masalah`
--
ALTER TABLE `tbl_masalah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idHunianReport` (`idHunian`);

--
-- Indexes for table `tbl_notifikasi`
--
ALTER TABLE `tbl_notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penghuni`
--
ALTER TABLE `tbl_penghuni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idHunianPenghuni` (`idHunian`),
  ADD KEY `fk_idKamarPenghuni` (`idKamar`),
  ADD KEY `fk_usernamePenghuni` (`usernamePenghuni`);

--
-- Indexes for table `tbl_pln`
--
ALTER TABLE `tbl_pln`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `tbl_pulsa`
--
ALTER TABLE `tbl_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`idReview`);

--
-- Indexes for table `tbl_shareroom`
--
ALTER TABLE `tbl_shareroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idHunianShareRoom` (`idHunian`),
  ADD KEY `fk_idKamarShareRoom` (`idKamar`);

--
-- Indexes for table `tbl_survei`
--
ALTER TABLE `tbl_survei`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idHunianSurvei` (`idHunian`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ulasan`
--
ALTER TABLE `tbl_ulasan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idHunianUlasan` (`idHunian`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_air`
--
ALTER TABLE `tbl_air`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_fasilitas`
--
ALTER TABLE `tbl_fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_homiepay`
--
ALTER TABLE `tbl_homiepay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_hunian`
--
ALTER TABLE `tbl_hunian`
  MODIFY `idHunian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  MODIFY `idKamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_livechat`
--
ALTER TABLE `tbl_livechat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_masalah`
--
ALTER TABLE `tbl_masalah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_notifikasi`
--
ALTER TABLE `tbl_notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_penghuni`
--
ALTER TABLE `tbl_penghuni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_pln`
--
ALTER TABLE `tbl_pln`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pulsa`
--
ALTER TABLE `tbl_pulsa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `idReview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shareroom`
--
ALTER TABLE `tbl_shareroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_survei`
--
ALTER TABLE `tbl_survei`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tbl_ulasan`
--
ALTER TABLE `tbl_ulasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD CONSTRAINT `fk_idHunianChat` FOREIGN KEY (`idHunian`) REFERENCES `tbl_hunian` (`idHunian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD CONSTRAINT `fk_idHunian` FOREIGN KEY (`idHunian`) REFERENCES `tbl_hunian` (`idHunian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_penghuni`
--
ALTER TABLE `tbl_penghuni`
  ADD CONSTRAINT `fk_idHunianPenghuni` FOREIGN KEY (`idHunian`) REFERENCES `tbl_hunian` (`idHunian`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usernamePenghuni` FOREIGN KEY (`usernamePenghuni`) REFERENCES `tbl_user` (`username`);

--
-- Constraints for table `tbl_shareroom`
--
ALTER TABLE `tbl_shareroom`
  ADD CONSTRAINT `fk_idHunianShareRoom` FOREIGN KEY (`idHunian`) REFERENCES `tbl_hunian` (`idHunian`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_idKamarShareRoom` FOREIGN KEY (`idKamar`) REFERENCES `tbl_kamar` (`idKamar`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_survei`
--
ALTER TABLE `tbl_survei`
  ADD CONSTRAINT `fk_idHunianSurvei` FOREIGN KEY (`idHunian`) REFERENCES `tbl_hunian` (`idHunian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ulasan`
--
ALTER TABLE `tbl_ulasan`
  ADD CONSTRAINT `fk_idHunianUlasan` FOREIGN KEY (`idHunian`) REFERENCES `tbl_hunian` (`idHunian`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
