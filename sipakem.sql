-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2026 at 09:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipakem`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas_admin`
--

CREATE TABLE `aktivitas_admin` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `aktivitas` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktivitas_admin`
--

INSERT INTO `aktivitas_admin` (`id`, `admin_id`, `aktivitas`, `created_at`) VALUES
(22, 3, 'Menghapus gejala 10', '2026-05-24 06:19:01'),
(23, 3, 'Mengubah diagnosis ID 1', '2026-05-24 06:24:43'),
(24, 3, 'Menambahkan rule ID 5', '2026-05-24 06:41:49'),
(25, 3, 'Mengubah rule ID 5', '2026-05-24 06:42:10'),
(26, 3, 'Mengubah rule ID 5', '2026-05-24 06:59:37'),
(27, 3, 'Mengubah rule ID 5', '2026-05-24 07:26:11'),
(28, 3, 'Mengubah rule ID 5', '2026-05-24 07:40:20'),
(29, 3, 'Mengubah rule ID 5', '2026-05-24 07:41:12'),
(30, 3, 'Mengubah rule ID 5', '2026-05-24 07:42:26'),
(31, 3, 'Menghapus gejala 9', '2026-05-24 08:29:20'),
(32, 3, 'Menghapus gejala ID 8', '2026-05-24 08:30:34'),
(33, 3, 'Mengubah gejala G01 (ID 5)', '2026-05-24 13:03:24'),
(34, 3, 'Mengubah gejala G02 (ID 6)', '2026-05-24 13:03:46'),
(35, 3, 'Mengubah gejala G03 (ID 7)', '2026-05-24 13:06:11'),
(36, 3, 'Mengubah diagnosis ID 1', '2026-05-24 13:08:32'),
(37, 3, 'Mengubah rekomendasi R01 (ID 2)', '2026-05-24 13:10:48'),
(38, 3, 'Mengubah rekomendasi R02 (ID 3)', '2026-05-24 13:11:57'),
(39, 3, 'Mengubah rekomendasi R03 (ID 4)', '2026-05-24 13:13:01'),
(40, 3, 'Menghapus rule ID 5', '2026-05-24 13:13:25'),
(41, 3, 'Menambahkan rule ID 6', '2026-05-24 13:57:26'),
(42, 3, 'Menambahkan rule ID 7', '2026-05-24 14:01:26'),
(43, 3, 'Menambahkan rule ID 8', '2026-05-24 14:03:09'),
(44, 3, 'Menambahkan rule ID 9', '2026-05-24 14:04:49'),
(45, 3, 'Menambahkan rule ID 10', '2026-05-24 14:06:43'),
(46, 3, 'Menambahkan rule ID 11', '2026-05-24 14:08:22'),
(47, 3, 'Mengubah rekomendasi R06 (ID 8)', '2026-05-24 15:05:51'),
(48, 3, 'Mengubah rekomendasi R06 (ID 8)', '2026-05-24 15:05:58'),
(49, 3, 'Mengubah diagnosis ID 9', '2026-05-24 15:06:11'),
(50, 3, 'Mengubah diagnosis ID 9', '2026-05-24 15:06:20'),
(51, 3, 'Mengubah gejala G35 (ID 49)', '2026-05-24 15:06:34'),
(52, 3, 'Mengubah gejala G35 (ID 49)', '2026-05-24 15:06:45'),
(53, 3, 'Mengubah rule ID 11', '2026-05-24 15:07:04'),
(54, 3, 'Mengubah rule ID 11', '2026-05-24 15:07:18'),
(55, 3, 'Menambahkan rule ID 12', '2026-05-25 03:36:43'),
(56, 3, 'Menghapus rule ID 12', '2026-05-25 03:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(11) NOT NULL,
  `kode_diagnosis` varchar(10) DEFAULT NULL,
  `nama_diagnosis` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `kode_diagnosis`, `nama_diagnosis`, `deskripsi`) VALUES
(1, 'D01', 'Gangguan Kecemasan Panik', 'Gangguan kecemasan panik adalah kondisi ketika seseorang mengalami serangan panik secara tiba-tiba dan berulang. Serangan ini biasanya menimbulkan rasa takut yang sangat kuat disertai gejala fisik seperti jantung berdebar, sesak napas, gemetar, pusing, atau merasa akan pingsan, padahal tidak ada bahaya nyata.'),
(5, 'D02', 'Gangguan Kecemasan Sosial', 'Gangguan kecemasan sosial adalah rasa takut atau cemas berlebihan saat berada di situasi sosial atau ketika harus berinteraksi dengan orang lain. Penderitanya sering takut dinilai, dipermalukan, atau dikritik oleh orang lain sehingga cenderung menghindari kegiatan sosial.'),
(6, 'D03', 'Gangguan Stres Pascatrauma (PTSD)', 'Gangguan Stres Pascatrauma (PTSD) adalah gangguan mental yang muncul setelah seseorang mengalami atau menyaksikan peristiwa traumatis, seperti kecelakaan, kekerasan, bencana, atau kehilangan besar. Penderitanya dapat mengalami kilas balik trauma, mimpi buruk, rasa takut berlebihan, dan sulit merasa aman.'),
(7, 'D04', 'Generalized Anxiety Disorder (GAD)', 'Generalized Anxiety Disorder (GAD) adalah gangguan kecemasan yang ditandai dengan rasa khawatir berlebihan terhadap berbagai hal sehari-hari, bahkan tanpa alasan yang jelas. Kecemasan berlangsung terus-menerus dan sulit dikendalikan, sering disertai sulit tidur, tegang, mudah lelah, dan sulit fokus.'),
(8, 'D05', 'Obsessive Compulsive Disorder (OCD)', 'Obsessive Compulsive Disorder (OCD) adalah gangguan yang membuat seseorang memiliki pikiran obsesif yang muncul terus-menerus dan menimbulkan kecemasan, lalu melakukan tindakan berulang (kompulsif) untuk mengurangi kecemasan tersebut. Contohnya seperti mencuci tangan berulang kali atau memeriksa sesuatu terus-menerus.'),
(9, 'D06', 'Fobia Spesifik', 'Fobia Spesifik adalah rasa takut yang sangat berlebihan terhadap objek atau situasi tertentu, misalnya takut ketinggian, darah, hewan tertentu, atau ruang sempit. Ketakutan ini dapat membuat seseorang menghindari hal tersebut meskipun sebenarnya tidak terlalu berbahaya.');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kode_gejala` varchar(10) DEFAULT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kode_gejala`, `nama_gejala`) VALUES
(5, 'G01', 'Saya sering merasa cemas, takut, atau khawatir secara berlebihan dalam situasi tertentu maupun aktivitas sehari-hari'),
(6, 'G02', 'Saya sulit merasa tenang atau rileks ketika  sedang mengalami kecemasan'),
(7, 'G03', 'Saat merasa cemas, saya mengalami gejala fisik seperti jantung berdebar, gemetar, sesak napas, atau tubuh terasa tegang'),
(18, 'G04', 'Saya cenderung menghindari situasi, tempat, objek, atau aktivitas tertentu karena memicu rasa cemas atau takut'),
(19, 'G05', 'Rasa cemas atau takut yang saya alami mulai mengganggu aktivitas sehari-hari, hubungan sosial, belajar, atau pekerjaan'),
(20, 'G06', 'Saya merasa takut terhadap objek atau situasi tertentu dalam jangka waktu yang lama dan terus muncul ketika berhadapan dengan hal tersebut'),
(21, 'G07', 'Saya merasa harus melakukan tindakan tertentu berulang kali, seperti mengecek atau membersihkan sesuatu agar merasa tenang'),
(22, 'G08', 'Saya merasa gugup, tangan berkeringat, atau takut salah bicara ketika harus bertanya, presentasi, atau menyampaikan pendapat di depan orang lain'),
(23, 'G09', 'Saya sulit menghentikan rasa khawatir tentang banyak hal meskipun tidak ada masalah besar yang terjadi'),
(24, 'G10', 'Saya mengalami jantung berdebar, gemetar, atau sesak napas secara langsung ketika melihat atau menghadapi objek yang saya takuti'),
(25, 'G11', 'Saya merasa takut berada di tempat yang sulit untuk keluar atau mencari bantuan, seperti lift, kendaraan umum, bioskop, atau antrean panjang'),
(26, 'G12', 'Saya sering mengalami mimpi buruk tentang kejadian traumatis hingga membuat tidur terganggu atau terbangun dengan rasa takut'),
(27, 'G13', 'Saya merasa sangat takut melakukan kesalahan kecil karena khawatir akan menimbulkan akibat buruk dalam pekerjaan atau aktivitas sehari-hari'),
(28, 'G14', 'Saya menghindari acara, pertemuan, diskusi, atau interaksi sosial karena takut dinilai atau dipermalukan'),
(29, 'G15', 'Saya sering memikirkan kemungkinan buruk tentang pekerjaan, kesehatan, keluarga, atau masa depan secara berlebihan'),
(30, 'G16', 'Saya mencuci tangan berulang kali karena merasa tangan masih kotor atau takut terkena kuman meskipun tangan sudah dibersihkan'),
(31, 'G17', 'Saya pernah mengalami serangan panik secara tiba-tiba, seperti jantung berdebar sangat cepat, sesak napas, tubuh bergetar, atau merasa akan pingsan meskipun tidak berada dalam situasi berbahaya'),
(32, 'G18', 'Saya menjadi lebih curiga, mudah kaget, atau merasa harus selalu waspada terhadap keadaan sekitar setelah mengalami kejadian traumatis'),
(33, 'G19', 'Saya sering menundukkan kepala, menghindari kontak mata, atau berpura-pura sibuk karena takut diperhatikan orang lain'),
(34, 'G20', 'Saya merasa sangat takut terhadap objek atau situasi tertentu, seperti ketinggian, hewan, darah, jarum suntik, tempat gelap, atau ruang sempit'),
(35, 'G21', 'Saya menyadari bahwa rasa takut saya berlebihan, tetapi tetap sulit mengendalikan rasa panik atau keinginan untuk menghindar'),
(36, 'G22', 'Saya merasa cemas hampir setiap hari selama lebih dari 6 bulan terhadap berbagai hal dalam kehidupan sehari-hari'),
(37, 'G23', 'Saya langsung ingin menjauh atau menghindar ketika berada dekat dengan objek atau situasi tertentu yang saya takuti'),
(38, 'G24', 'Saat cemas, saya merasa dunia di sekitar tidak nyata, terasa seperti mimpi, atau merasa diri saya seperti terpisah dari tubuh'),
(39, 'G25', 'Saya mengalami pikiran yang muncul berulang kali dan sulit dikendalikan, termasuk pikiran yang tidak diinginkan atau mengganggu'),
(40, 'G26', 'Saya sering merasakan takut, sedih, cemas, atau marah berkepanjangan setelah mengalami kejadian traumatis'),
(41, 'G27', 'Saya lebih sering diam ketika diajak berbicara karena merasa gugup, takut salah bicara, atau takut dinilai'),
(42, 'G28', 'Saya sulit tidur, sering terbangun, atau memikirkan banyak hal sebelum tidur karena rasa khawatir'),
(43, 'G29', 'Saya selalu merasa khawatir serangan panik akan muncul kembali sehingga sering merasa tidak tenang dalam menjalani aktivitas sehari-hari'),
(44, 'G30', 'Saya menghindari tempat, suara, orang, atau situasi tertentu yang mengingatkan pada kejadian traumatis'),
(45, 'G31', 'Saya merasa takut dipermalukan, ditertawakan, atau dinilai buruk oleh orang lain ketika berada di lingkungan sosial'),
(46, 'G32', 'Saya berulang kali memeriksa pintu, kompor, atau barang tertentu karena takut terjadi kesalahan atau bahaya'),
(47, 'G33', 'Saya merasa jantung berdebar, tubuh terasa tidak nyaman, ingin segera pergi, atau sulit tenang saat berada di tempat ramai seperti mall, kelas, konser, atau ketika sedang mengantre'),
(48, 'G34', 'Saya sulit fokus saat belajar, bekerja, atau berbicara karena pikiran dipenuhi berbagai kekhawatiran'),
(49, 'G35', 'Saya sering merasa seolah-olah kejadian traumatis terjadi kembali, misalnya merasa seperti kembali berada dalam situasi menakutkan tersebut');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `foto_profile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_pengguna`, `tanggal_lahir`, `jenis_kelamin`, `no_hp`, `email`, `password`, `role`, `foto_profile`) VALUES
(3, 'sipakem', '2000-01-01', 'Perempuan', '085234961756', 'sipakemsipakem@gmail.com', 'scrypt:32768:8:1$iVmDXFutR3kmO6Qc$27222bb186af753d2a7b17d0617fcebe47ebb37440ef4c9fb9424ac8d7c84f0a15d94aae5351c3e6486268676f80786246914a2dae9480906149afda281290c9', 'admin', '/static/profile/user_3_icon6.png'),
(4, 'Zidan Ramadhani', '2009-01-06', 'Laki-Laki', '085234961756', 'zidanrmd@gmail.com', 'scrypt:32768:8:1$xB8qnsxwjaZnSlXE$bf04381010d65466e9379dfd95ccae5b2dc2c34a47f71a763070e78acd4b141a6ad258fecd5beb569e3b6f09ca472824fbbc5fcc7ee075540a2a7004902fd313', 'pengguna', NULL),
(5, 'gian', '2026-06-01', 'Laki-Laki', '085234961756', 'gian13@gmail.com', 'scrypt:32768:8:1$Vlk689Uk7pzf6TET$756d17e45c5a89d19ec9b237330b90a8dda78a450c2e1981fe62953c907ed1c256abdca7417f3b3e57a079a6c3d84098754f3cceb470de28f9a516856777ed36', 'pengguna', '/static/profile/user_8_icon6.png'),
(6, 'Jihan', '2007-02-07', 'Perempuan', '085574987522', 'jihan@gmail.com', 'scrypt:32768:8:1$xJiHQDV9hAzc1ycA$7f536cd56042e1b3d38b263fb739e4b35e39c0762e77e8397aacb78304f69e3c9568f0b878a494b759560290b45c6fb99f31118eba4cc331c957b46aad20111e', 'pengguna', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id` int(11) NOT NULL,
  `kode_rekomendasi` varchar(10) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekomendasi`
--

INSERT INTO `rekomendasi` (`id`, `kode_rekomendasi`, `deskripsi`) VALUES
(2, 'R01', 'Atur napas perlahan, cari tempat aman, dan gunakan kalimat afirmasi positif: “Ini hanya sementara”, “Saya aman”, dan “Ini akan segera\nberlalu”.'),
(3, 'R02', 'Mulai interaksi sosial bertahap, fokus pada lawan bicara, dan menyimak topik pembicaraan.'),
(4, 'R03', 'Menghadapi dan mengelola pemicu trauma secara bertahap dengan pendampingan profesional, menjalani terapi CBT atau terapi trauma, mencari dukungan keluarga dan lingkungan terdekat.'),
(6, 'R04', 'Meluangkan waktu khusus untuk mengelola kekhawatiran, relaksasi otot progresif, tidur dan olahraga teratur.'),
(7, 'R05', 'Latihan mengurangi perilaku kompulsif bertahap, distraksi positif, dan konsultasi psikolog.'),
(8, 'R06', 'Paparan bertahap terhadap objek yang ditakuti, teknik relaksasi, dan pendampingan profesional.');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_konsultasi`
--

CREATE TABLE `riwayat_konsultasi` (
  `id` int(11) NOT NULL,
  `pengguna_id` int(11) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `rekomendasi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `persen` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_konsultasi`
--

INSERT INTO `riwayat_konsultasi` (`id`, `pengguna_id`, `diagnosis`, `deskripsi`, `rekomendasi`, `created_at`, `persen`) VALUES
(32, 4, 'Generalized Anxiety Disorder (GAD)', 'Generalized Anxiety Disorder (GAD) adalah gangguan kecemasan yang ditandai dengan rasa khawatir berlebihan terhadap berbagai hal sehari-hari, bahkan tanpa alasan yang jelas. Kecemasan berlangsung terus-menerus dan sulit dikendalikan, sering disertai sulit tidur, tegang, mudah lelah, dan sulit fokus.', 'Meluangkan waktu khusus untuk mengelola kekhawatiran, relaksasi otot progresif, tidur dan olahraga teratur.', '2026-06-12 07:14:09', 33.33),
(33, 5, 'Generalized Anxiety Disorder (GAD)', 'Generalized Anxiety Disorder (GAD) adalah gangguan kecemasan yang ditandai dengan rasa khawatir berlebihan terhadap berbagai hal sehari-hari, bahkan tanpa alasan yang jelas. Kecemasan berlangsung terus-menerus dan sulit dikendalikan, sering disertai sulit tidur, tegang, mudah lelah, dan sulit fokus.', 'Meluangkan waktu khusus untuk mengelola kekhawatiran, relaksasi otot progresif, tidur dan olahraga teratur.', '2026-06-13 07:17:31', 66.67),
(34, 6, 'Gangguan Stres Pascatrauma (PTSD)', 'Gangguan Stres Pascatrauma (PTSD) adalah gangguan mental yang muncul setelah seseorang mengalami atau menyaksikan peristiwa traumatis, seperti kecelakaan, kekerasan, bencana, atau kehilangan besar. Penderitanya dapat mengalami kilas balik trauma, mimpi buruk, rasa takut berlebihan, dan sulit merasa aman.', 'Menghadapi dan mengelola pemicu trauma secara bertahap dengan pendampingan profesional, menjalani terapi CBT atau terapi trauma, mencari dukungan keluarga dan lingkungan terdekat.', '2026-06-13 07:19:00', 80.00),
(35, 6, 'Generalized Anxiety Disorder (GAD)', 'Generalized Anxiety Disorder (GAD) adalah gangguan kecemasan yang ditandai dengan rasa khawatir berlebihan terhadap berbagai hal sehari-hari, bahkan tanpa alasan yang jelas. Kecemasan berlangsung terus-menerus dan sulit dikendalikan, sering disertai sulit tidur, tegang, mudah lelah, dan sulit fokus.', 'Meluangkan waktu khusus untuk mengelola kekhawatiran, relaksasi otot progresif, tidur dan olahraga teratur.', '2026-06-14 07:28:30', 33.33),
(37, 5, 'Obsessive Compulsive Disorder (OCD)', 'Obsessive Compulsive Disorder (OCD) adalah gangguan yang membuat seseorang memiliki pikiran obsesif yang muncul terus-menerus dan menimbulkan kecemasan, lalu melakukan tindakan berulang (kompulsif) untuk mengurangi kecemasan tersebut. Contohnya seperti mencuci tangan berulang kali atau memeriksa sesuatu terus-menerus.', 'Latihan mengurangi perilaku kompulsif bertahap, distraksi positif, dan konsultasi psikolog.', '2026-06-14 07:30:12', 12.50),
(38, 4, 'Generalized Anxiety Disorder (GAD)', 'Generalized Anxiety Disorder (GAD) adalah gangguan kecemasan yang ditandai dengan rasa khawatir berlebihan terhadap berbagai hal sehari-hari, bahkan tanpa alasan yang jelas. Kecemasan berlangsung terus-menerus dan sulit dikendalikan, sering disertai sulit tidur, tegang, mudah lelah, dan sulit fokus.', 'Meluangkan waktu khusus untuk mengelola kekhawatiran, relaksasi otot progresif, tidur dan olahraga teratur.', '2026-06-14 07:31:53', 22.22);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `kode_rule` varchar(20) DEFAULT NULL,
  `diagnosis_id` int(11) DEFAULT NULL,
  `rekomendasi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `kode_rule`, `diagnosis_id`, `rekomendasi_id`) VALUES
(6, NULL, 1, 2),
(7, NULL, 5, 3),
(8, NULL, 6, 4),
(9, NULL, 7, 6),
(10, NULL, 8, 7),
(11, NULL, 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `rule_gejala`
--

CREATE TABLE `rule_gejala` (
  `id` int(11) NOT NULL,
  `rule_id` int(11) DEFAULT NULL,
  `gejala_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule_gejala`
--

INSERT INTO `rule_gejala` (`id`, `rule_id`, `gejala_id`) VALUES
(30, 6, 5),
(31, 6, 7),
(32, 6, 6),
(33, 6, 18),
(34, 6, 19),
(35, 6, 25),
(36, 6, 31),
(37, 6, 38),
(38, 6, 43),
(39, 6, 47),
(40, 7, 5),
(41, 7, 6),
(42, 7, 18),
(43, 7, 19),
(44, 7, 22),
(45, 7, 28),
(46, 7, 33),
(47, 7, 41),
(48, 7, 45),
(49, 8, 5),
(50, 8, 6),
(51, 8, 7),
(52, 8, 18),
(53, 8, 19),
(54, 8, 26),
(55, 8, 32),
(56, 8, 40),
(57, 8, 44),
(58, 8, 49),
(59, 9, 5),
(60, 9, 6),
(61, 9, 7),
(62, 9, 19),
(63, 9, 23),
(64, 9, 29),
(65, 9, 36),
(66, 9, 42),
(67, 9, 48),
(68, 10, 5),
(69, 10, 6),
(70, 10, 19),
(71, 10, 21),
(72, 10, 27),
(73, 10, 30),
(74, 10, 39),
(75, 10, 46),
(96, 11, 5),
(97, 11, 6),
(98, 11, 7),
(99, 11, 18),
(100, 11, 19),
(101, 11, 20),
(102, 11, 24),
(103, 11, 34),
(104, 11, 35),
(105, 11, 37);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas_admin`
--
ALTER TABLE `aktivitas_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_diagnosa` (`diagnosis_id`),
  ADD KEY `fk_rekomendasi` (`rekomendasi_id`);

--
-- Indexes for table `rule_gejala`
--
ALTER TABLE `rule_gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rule_id` (`rule_id`),
  ADD KEY `gejala_id` (`gejala_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas_admin`
--
ALTER TABLE `aktivitas_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rule_gejala`
--
ALTER TABLE `rule_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `fk_diagnosa` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rekomendasi` FOREIGN KEY (`rekomendasi_id`) REFERENCES `rekomendasi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rule_gejala`
--
ALTER TABLE `rule_gejala`
  ADD CONSTRAINT `rule_gejala_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rule_gejala_ibfk_2` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
