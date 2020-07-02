-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2020 at 09:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_tlp` int(15) NOT NULL,
  `alamat` text NOT NULL,
  `Status` varchar(100) NOT NULL,
  `tgl_order` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama`, `no_tlp`, `alamat`, `Status`, `tgl_order`) VALUES
('7700630001', 'Tomy', 2147483647, 'Tio ranabasdasdasd', '', '2020-06-30'),
('7700701001', 'rizky', 98888, 'werteyuryrteyeueueueueueue', '', '2020-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `username`, `level`, `pass`) VALUES
(1, 'admin', 'admin', '1234'),
(2, 'tom', 'guest', '1234'),
(28, 'qop', 'guest', '6666'),
(30, 'rio', 'guest', '12345'),
(31, 'asdasdasd', 'guest', ''),
(32, 'tomy', 'guest', '0989'),
(33, 'wakwaw', 'guest', '656565'),
(34, 'aaa', 'guest', '111'),
(35, 'ilham', 'guest', '111'),
(36, 'endra', 'guest', '12345'),
(37, 'tomy', 'guest', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `no_karyawan` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `salary` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`no_karyawan`, `nama`, `jabatan`, `tgl_masuk`, `salary`) VALUES
('0620001', 'Tomy Agung Saputro`', 'Web Developer', '2020-06-23', 8000000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_order` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_tlp` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tgl_order` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_order`, `nama`, `alamat`, `no_tlp`, `status`, `tgl_order`) VALUES
('200702001', 'Tomy', 'qweqweqweqwe', '0987878', 'new', '2020-07-02'),
('200702002', 'rioaa', 'asdasdasd12312', '1231231231', 'new', '2020-07-02'),
('200702003', 'kakak', 'asdasdasdasdasda', '09898989', 'new', '2020-07-02'),
('200702004', 'Prangki', 'qweqweqweqweqwe098989898989', '0998989898', 'new', '2020-07-02'),
('200702005', 'Rio', 'asdasdasdasd', '1231231231', 'new', '2020-07-02'),
('200702006', 'asdasdasdasda', 'asdasds', '123123123', 'new', '2020-07-02'),
('200702007', 'riko', 'qweqweqweqeqwe', '09080080--', 'new', '2020-07-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`no_karyawan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
