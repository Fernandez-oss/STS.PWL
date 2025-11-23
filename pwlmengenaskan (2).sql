-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 23, 2025 at 02:01 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwlmengenaskan`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int NOT NULL,
  `brand` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `logo`) VALUES
(1, 'Puma', 'puma.png'),
(2, 'Nike', 'nike 2.png'),
(3, 'Adidas', 'adidas1.png'),
(4, 'New Balance', 'nb 1.png'),
(8, 'Yonex', '748a464251fd4dc7f96be4a2fdc6c617.png'),
(10, 'Lining', 'Li-Ning_logo_black.svg.png'),
(11, 'Aero Street', 'aerostreet.png');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `produk_id` int NOT NULL,
  `jumlah` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `brand` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `terjual` int DEFAULT NULL,
  `orang` int DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `kondisi` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga`, `brand`, `rating`, `terjual`, `orang`, `gambar`, `stock`, `deskripsi`, `kondisi`) VALUES
(1, 'Celana Training Panjang Wanita Nike Sportswear Phoenix Fleece French Terry High Rise', 989000, 'Nike', '4.9', 3000, 1617, 'celana nikee.jpg', '150', 'Memiliki nama tengah \"nyaman dan stylish\", inilah Celana Traning Panjang Wanita Nike Sportswear Phoenix Fleece French Terry High Rise! Setiap aktivitas kapan saja, dimana saja akan terasa lebih percaya diri dengan tampilan sporty dan modern. Potongan ramping namun tetap fleksibel membuatnya cocok untuk olahraga maupun gaya santai sehari-hari.', 'Baru'),
(2, 'Kaos Pria Wanita Baju Lengan Panjang New Balance Athletics - Abu semen tua, S', 120000, 'New Balance', '4.9', 3000, 1617, 'baju panjang nb.webp', '132', NULL, NULL),
(3, 'Hand Grip Handgrip Adjustable 5-60 kg Alat Fitness Latihan Otot Penguat Tangan 5kg - 60kg', 199000, 'Generic', '4.9', 3000, 1617, 'handgrip.webp', '189', NULL, NULL),
(4, 'Tongkat Baseball Easton 2022 Speed USA Baseball Bat BBCOR - -3 32/39', 3199000, 'Easton', '4.9', 3000, 1617, 'raket baseball.jpg', '192', NULL, NULL),
(5, 'New Raket Badminton Yonex Astrox 99 Pro 3RD GEN Black Green - 3UG5 - 3UG5', 2333500, 'Yonex', NULL, 1, NULL, 'raket lining.jpg', '362', NULL, NULL),
(12, 'RAKET BADMINTON PAKET LENGKAP MODEL SENYAWA TERLARIS 2 RAKET 2 GRIP 12 KOK 1 TAS - Warna Random, 2Raket+2Grip+1Tas+1Slop Kok 12 Pcs', 104900, 'Yonex', '4.7', 2270, 13, 'raket yonex.webp', '150', NULL, NULL),
(13, 'RAKET BADMINTON PAKET LENGKAP MODEL SENYAWA TERLARIS 2 RAKET 2 GRIP 12 KOK 1 TAS - Warna Random, 2Raket+2Grip+1Tas+1Slop Kok 12 Pcs', 104900, 'Yonex', '4.7', 2270, 13, 'raket yonex.webp', '132', NULL, NULL),
(27, 'Sepatu Puma', 123456789, 'Puma', '4.8', 130, 120, 'sepatu puma jpg.jpg', NULL, 'eeeeeeeeeee', 'aman'),
(28, 'itu', 1111111, 'Puma', '4.8', 130, 120, '14865151.png', NULL, 'ini', 'atau');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Babi', 'ayam@gmail.com', '$2y$10$DzIwZ7w4GpKyfYrN9h39peojcQ97D1dyvb9Qu2coL1QdYqVpNGPW.'),
(2, 'ayam', 'babi@gmail.com', '$2y$10$0W3Aqybvk406k5GpuQEb5.mmxKiIbiZdY4xD2vIBib6Enbp1.Gc/K'),
(3, 'eek', 'eek@gmail.com', '$2y$10$qVy1Vbqi49mIRTTb23vDX.tb92.UySaffmGt.LS0dDDwwwUSv0Zfi'),
(4, 'cuih', 'cuih@gmail.com', '$2y$10$EZuE0SGGsV7PA7FGwS4Tvu393M9d6lteXugqh3oGkAsohwchXWaMm'),
(5, 'budi', 'budi@gmail.com', '$2y$10$wuLHST6OG4ExVFeUsBLf9.gjqV3BhIlizAQA4oOKD/vQRWhbvsV9W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
