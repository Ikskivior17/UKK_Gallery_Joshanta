-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 04:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `cover` text NOT NULL,
  `nama_album` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `cover`, `nama_album`, `user_id`, `created_at`) VALUES
(5, '1709170430_d5d40b2792334f47b26f.jpg', 'Valorant', 4, '2024-02-28 19:33:50'),
(8, '1709173069_03a6f98895fa0ad0402e.jpg', 'Counter Strike', 4, '2024-02-28 20:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`) VALUES
(1, 1, 1, 'aaa'),
(2, 1, 1, 'pe'),
(3, 2, 1, 'w'),
(4, 1, 1, 'Bagus'),
(5, 4, 1, 'Bagus la'),
(6, 1, 1, 'halo'),
(7, 4, 1, 'Sedap'),
(8, 7, 4, 'sdsdsd'),
(9, 7, 4, 'sdadfsadfe');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `status`) VALUES
(8, 5, 1, ''),
(9, 4, 1, ''),
(10, 1, 1, 'Like'),
(11, 6, 1, 'Like'),
(12, 3, 1, 'Like'),
(13, 2, 1, 'Like'),
(14, 1, 2, 'Like'),
(15, 7, 4, 'Like'),
(16, 18, 6, 'Like'),
(17, 23, 4, 'Like'),
(18, 24, 4, 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `fotop` text NOT NULL,
  `deskripsi` text NOT NULL,
  `user_maker` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `fotop`, `deskripsi`, `user_maker`, `album`, `created_at`) VALUES
(7, '1709170450_08fb507188984daca001.jpg', 'ini gambar valo', 4, 5, '2024-02-28 19:34:10'),
(8, '1709170586_37e9b560fd9d43728ede.jpg', 'kjsdnvkisd', 4, 5, '2024-02-28 19:36:26'),
(9, '1709170597_5b40c97778cdee6ebed2.jpg', 'sdvfdsfgd', 4, 5, '2024-02-28 19:36:37'),
(10, '1709171191_ca5fef4702fa2e4e2850.jpg', 'jj', 4, 5, '2024-02-28 19:46:31'),
(11, '1709171218_99cea03d96dc25bbfeed.jpg', 'ujuj', 4, 5, '2024-02-28 19:46:58'),
(12, '1709171228_63ef108f976dca1610b0.jpg', 'ujuj', 4, 5, '2024-02-28 19:47:08'),
(13, '1709171257_832ae8c4bc5fd628ef75.jpg', 'fgcgh', 4, 5, '2024-02-28 19:47:37'),
(14, '1709171276_882db99c2d1b9d22888d.jpg', 'kjgh', 4, 5, '2024-02-28 19:47:56'),
(15, '1709171289_81bbd063dbd983129a10.jpg', 'ihvn', 4, 5, '2024-02-28 19:48:09'),
(16, '1709171309_546208383c2230f8d163.jpg', 'gf', 4, 5, '2024-02-28 19:48:29'),
(17, '1709171348_38ad2a12f14de96062df.jpg', 'khvj', 4, 5, '2024-02-28 19:49:08'),
(18, '1709171366_d33215f18dd4a931f45d.jpg', 'kbk', 4, 5, '2024-02-28 19:49:26'),
(19, '1709171408_beb98b25d8c6e9ae3ff8.jpg', 'eyxyh', 4, 5, '2024-02-28 19:50:08'),
(20, '1709171423_f9887b620b77e337d5b1.jpg', 'hgig', 4, 5, '2024-02-28 19:50:23'),
(21, '1709171431_e055f30c1167104ab6be.jpg', ' btgbt', 4, 5, '2024-02-28 19:50:31'),
(23, '1709173153_6df9fb96500e77428aae.jpg', 'ini cs ya adik adik', 4, 8, '2024-02-28 20:19:13'),
(24, '1709173166_4c142e40b1d085364d1b.jpg', 'asdasd', 4, 8, '2024-02-28 20:19:26'),
(25, '1709173188_cb2596432830b2d70d71.jpg', 'sdfsfgd', 4, 8, '2024-02-28 20:19:48'),
(26, '1709173198_514c196db9ce2c00fb41.jpg', 'vgjhvj', 4, 8, '2024-02-28 20:19:58'),
(27, '1709173213_bc8587996b17e9d1d21f.jpg', 'bvj', 4, 8, '2024-02-28 20:20:13'),
(28, '1709173225_3265fd4c3f3cc4b99d5d.jpg', 'bvj', 4, 8, '2024-02-28 20:20:25'),
(29, '1709173237_b0d896dc57b044097c43.jpg', 'lkgj', 4, 8, '2024-02-28 20:20:37'),
(30, '1709173247_25f6c5ee5487e5516b32.jpg', 'dfgrth', 4, 8, '2024-02-28 20:20:47'),
(31, '1709173258_e377cb795881b24d7a11.jpg', 'df', 4, 8, '2024-02-28 20:20:58'),
(32, '1709173268_3290c22aa1ea1a2a2ec2.jpg', 'g;pfhn', 4, 8, '2024-02-28 20:21:08'),
(33, '1709173306_2ce24ae8e0575432be25.jpg', 'xfghnfg', 4, 8, '2024-02-28 20:21:46'),
(34, '1709173314_72c6373a6765748ef743.jpg', 'gjtyjd', 4, 8, '2024-02-28 20:21:54'),
(35, '1709173324_0f28df7e1da625e821d8.jpg', 'sdfrgeth', 4, 8, '2024-02-28 20:22:04'),
(36, '1709173335_c0f3fe832df0b5437373.jpg', 'rdtfyhojotr', 4, 8, '2024-02-28 20:22:15'),
(37, '1709173346_c58c8875873a9d5a8c51.jpg', 'frghtyeujhryh', 4, 8, '2024-02-28 20:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `foto`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(3, 'jo', 'john-wick-keanu-reeves-4k-wallpaper-uhdpaper.com-23@0@j.jpg', 'jo', 'c4ca4238a0b923820dcc509a6f75849b', '', '', ''),
(4, '1', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '', '', ''),
(5, '', 'default.jpg', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', ''),
(6, '2', 'default.jpg', '2', 'c81e728d9d4c2f636f067f89cc14862c', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
