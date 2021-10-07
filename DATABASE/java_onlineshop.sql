-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 21, 2019 at 07:13 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `weight`, `image`) VALUES
(1, 'Laptop Asus Core i5', '8000000', '4000', 'laptop_asus.jpeg'),
(2, 'Laptop Acer Core i5', '7600000', '4000', 'acer_laptop.jpg'),
(3, 'Mac Book Pro 15', '27000000', '4000', 'mac-book-pro.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_cart`
--

CREATE TABLE `tmp_cart` (
  `id` int(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_qty` varchar(255) NOT NULL,
  `price_total` varchar(255) NOT NULL,
  `is_transfer` int(11) DEFAULT '0' COMMENT '0 belum, 1 sudah',
  `is_confirm` int(11) DEFAULT '0' COMMENT '0 belum, 1 sudah',
  `no_rek` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `atas_nama` varchar(255) DEFAULT NULL,
  `nominal_trans` varchar(255) DEFAULT NULL,
  `proof_of_payment` varchar(255) DEFAULT 'No_Image_Available.jpg' COMMENT 'bukti transfer'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `total_qty`, `price_total`, `is_transfer`, `is_confirm`, `no_rek`, `bank`, `atas_nama`, `nominal_trans`, `proof_of_payment`) VALUES
(1, 2, '2', '34600000', 1, 1, '1234567890', 'BCA', 'Customer Satu', '34600000', 'buktitransferr-4684686847.jpg'),
(2, 3, '3', '43000000', 1, 1, '0987654321', 'BCA', 'Customer Dua', '43000000', 'buktitransferr-4684686847.jpg'),
(3, 2, '3', '42200000', 1, 1, '1312231223', 'BCA', 'Customer Satu', '42200000', 'buktitransferr-4684686847.jpg'),
(4, 4, '1', '27000000', 0, 0, NULL, NULL, NULL, NULL, 'No_Image_Available.jpg'),
(5, 5, '1', '27000000', 1, 0, '1231233434', 'BRI', 'Rangga', '27000000', '180145_IMG_20180720_075556.jpg'),
(6, 6, '2', '35000000', 1, 1, '34543543534', 'BRI', 'Joni', '35000000', '180145_IMG_20180720_075556.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_destination`
--

CREATE TABLE `transaction_destination` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `subdistrict` varchar(255) NOT NULL,
  `zip_postal` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_destination`
--

INSERT INTO `transaction_destination` (`id`, `transaction_id`, `province`, `city`, `subdistrict`, `zip_postal`, `address`) VALUES
(1, 1, 'Jawa Barat', 'Bandung', 'Bandung', '123456', 'Alamat di bandung'),
(2, 2, 'Jawa Barat', 'Banjar', 'Banjaran', '232323', 'Banjaran Banjar'),
(3, 3, 'Jawa Barat', 'Kota', 'Kecamatan', '123456', 'Alamat Alamat'),
(4, 4, 'Jawa Barat', 'Bandung', 'Baleendah', '40375', 'Komp. BSI III Blok G No. 20 Munjul'),
(5, 5, 'Jawa Barat', 'Bandung', 'Baleendah', '40375', 'Jelekong Kopm Karyaswadaya Blok D no 30 rt06 rw 04'),
(6, 6, 'DKI', 'Jakarta Selatan', 'Senayan', '671678', 'lamat Senayan ');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `item_price` varchar(255) NOT NULL,
  `total_price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`id`, `transaction_id`, `item_id`, `item_name`, `qty`, `item_price`, `total_price`) VALUES
(1, 1, 3, 'Mac Book Pro 15', '1', '27000000', '27000000'),
(2, 1, 2, 'Laptop Acer Core i5', '1', '7600000', '7600000'),
(3, 2, 1, 'Laptop Asus Core i5', '2', '8000000', '16000000'),
(4, 2, 3, 'Mac Book Pro 15', '1', '27000000', '27000000'),
(5, 3, 3, 'Mac Book Pro 15', '1', '27000000', '27000000'),
(6, 3, 2, 'Laptop Acer Core i5', '2', '7600000', '15200000'),
(7, 4, 3, 'Mac Book Pro 15', '1', '27000000', '27000000'),
(8, 5, 3, 'Mac Book Pro 15', '1', '27000000', '27000000'),
(9, 6, 1, 'Laptop Asus Core i5', '1', '8000000', '8000000'),
(10, 6, 3, 'Mac Book Pro 15', '1', '27000000', '27000000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(3) NOT NULL COMMENT '1.admin 2.customer'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `email`, `no_hp`, `password`, `hak_akses`) VALUES
(1, 'Admin Shop', 'adminshop', 'adminshop@mailinator.com', '085721731478', 'adminshop', 1),
(2, 'Customer Satu', 'customersatu', 'customersatu@mailinator.com', '085721731477', 'customersatu', 2),
(3, 'customer dua', 'customerdua', 'customerdua@mailinator.com', '085721731479', 'customerdua', 2),
(4, 'customer tiga', 'customertiga', 'customertiga@mailinator.com', '085743676734', 'customertiga', 2),
(5, 'Rangga Darmajati', 'rangga', 'rangga.darmajati@wgs.co.id', '08572157345', '17111246', 2),
(6, 'joni', 'joni', 'joni@mailinator.com', '085721731477', 'joni', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_destination`
--
ALTER TABLE `transaction_destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_unique` (`username`),
  ADD UNIQUE KEY `email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaction_destination`
--
ALTER TABLE `transaction_destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
