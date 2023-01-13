-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 03:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kd_barang` char(11) NOT NULL,
  `nm_barang` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(40) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nm_barang`, `stok`, `satuan`, `harga`) VALUES
('BR001', 'Pulpen', 20, 'Pcs', 2000),
('BR002', 'Kertas', 29, 'Rim', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id_transaksi` char(11) NOT NULL,
  `id_supplier` char(11) NOT NULL,
  `nm_supplier` varchar(50) NOT NULL,
  `kd_barang` char(11) NOT NULL,
  `nm_barang` varchar(255) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `hrg_satuan` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_transaksi`, `id_supplier`, `nm_supplier`, `kd_barang`, `nm_barang`, `satuan`, `jumlah`, `hrg_satuan`, `total`, `tanggal`) VALUES
('TR001', 'SP001', 'Malik', 'BR001', 'Pulpen', 'Pcs', 50, 2000, 100000, '2023-01-04'),
('TR002', 'SP001', 'Malik', 'BR002', 'Kertas', 'Rim', 80, 70000, 5600000, '2022-02-02'),
('TR003', 'SP002', 'Ibrahim', 'BR001', 'Pulpen', 'Pcs', 9, 2000, 18000, '2022-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` char(11) NOT NULL,
  `nm_supplier` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nm_supplier`, `no_telp`, `alamat`) VALUES
('SP001', 'Malik', '081234567890', 'Marabahan'),
('SP002', 'Ibrahim', '081234567891', 'Banjarmasin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
