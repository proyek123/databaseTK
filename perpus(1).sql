-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 05:43 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perpus`
--
CREATE DATABASE IF NOT EXISTS `perpus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `perpus`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  `user` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `user`, `pass`) VALUES
(1, 'cikita', 'cikita', '2515');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  `kelas` text NOT NULL,
  `NIS` int(25) NOT NULL,
  `jk` varchar(12) NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `kelas`, `NIS`, `jk`) VALUES
(5, 'Cikita', 'XII', 16006137, 'Perempuan'),
(6, 'Diah', 'XII', 16006139, 'Perempuan'),
(7, 'Maya', 'XII', 16006149, 'Perempuan'),
(8, 'Tarisa', 'XII', 16006156, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(15) NOT NULL AUTO_INCREMENT,
  `judul` varchar(25) NOT NULL,
  `pengarang` varchar(25) NOT NULL,
  `thnterbit` varchar(8) NOT NULL,
  `kategori` text NOT NULL,
  `stock` varchar(25) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `pengarang`, `thnterbit`, `kategori`, `stock`) VALUES
(3, 'dilan', 'aku', '20XX', 'romantis', '4');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_buku` int(15) NOT NULL AUTO_INCREMENT,
  `kode_buku` varchar(25) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` varchar(25) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_buku`, `kode_buku`, `nis`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
(3, '1245678', '16006149', '2018-07-09', '2018-07-10', 'Rp. 500,00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
