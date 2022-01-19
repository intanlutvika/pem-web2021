-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2022 pada 18.12
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yellowstore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pengguna` varchar(30) NOT NULL,
  `profesi` varchar(30) NOT NULL,
  `peran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `alamat`, `nama`, `pengguna`, `profesi`, `peran`) VALUES
(19, 'semarang', 'intan', 'Baru', 'Mahasiswa atau Pelajar', 'Penjual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Intan Lutvika', 'admin', '123456', '+6285647411981', 'intanlutvika@gmail.com', 'Jl.Parkit'),
(2, 'Intan Lutvika', 'intan', 'b1098cab9c2db3eb9f576eb66c33449c', '+6285647411981', 'intanlutvika@gmail.com', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(4, 'Rok Pendek'),
(5, 'Celana Pendek'),
(6, 'Atasan Hijab'),
(7, 'Atasan Wanita'),
(11, 'Aksesoris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(22, 7, 'COLORBOX Long Sleeve Denim Shacket', 207000, '<p>Atasan denim lengan panjang</p>\r\n\r\n<p>Kerah kemeja</p>\r\n\r\n<p>Drop shoulder details</p>\r\n\r\n<p>Double pocket di bagian dada</p>\r\n\r\n<p>Material: Denim</p>\r\n\r\n<p>Fit: Oversized</p>\r\n\r\n<p>Warna: Lt. Blue</p>\r\n\r\n<p>Model Height: 170 cm Bust: 77 cm Waist: 61 cm Hips: 85 cm</p>\r\n\r\n<p>Lingkar Dada x Lingkar Pinggang x Lingkar Pinggul x Panjang Baju Standard x Panjang Baju Crop</p>\r\n\r\n<p>XS: 96 x 98 x 100 x 57 x 44 cm</p>\r\n\r\n<p>S: 100 x 102 x 104 x 58 x 45 cm</p>\r\n\r\n<p>M: 104 x 106 x 108 x 59 x 46 cm</p>\r\n\r\n<p>L: 108 x 110 x 112 x 60 x 47 cm</p>\r\n\r\n<p>XL: 112 x 114 x 116 x 61 x 48 cm</p>\r\n', 'produk1641815765.png', 1, '2022-01-10 11:56:05'),
(23, 6, 'ZM Zaskia Mecca - Amori Black Blouse', 149000, '<p>Amori Blouse kemeja dengan detail karet dibagian lengan (Busui Friendly)</p>\r\n\r\n<p>Takjub memakau sabana di Tanah Jawa</p>\r\n\r\n<p>mendesir rerumputan pada setiap sudut tapak menghela</p>\r\n\r\n<p>Gunung Guntur Garut bersembunyi penuh pesona</p>\r\n\r\n<p>Dengan jajaran pinus pembangkit suasana</p>\r\n\r\n<p>Sebuah karya Tuhan yang selalu membuat hamba-Nya bersuka</p>\r\n\r\n<p>Kami selipkan pada kain</p>\r\n\r\n<p>ZM Zaskia Mecca supaya kamu turut memuji indah</p>\r\n\r\n<p>Guntur Garut dengan seluruh isinya</p>\r\n\r\n<p>An Exclusive Jelita Indonesia Collection Series From ZM Zaskia Mecca Limited Item</p>\r\n', 'produk1641818671.png', 1, '2022-01-10 12:06:09'),
(24, 6, 'ZM Zaskia Mecca - Ayna Brown Tunik', 169000, '<p>Tunik asimetris motif tenun buna dengan potongan pinggang detail tali</p>\r\n\r\n<p>&quot; Nusa Tenggara Timur, pulau dengan ragam kekayaan yang tak terhingga, dikenal dengan masyarakatnya yang tekun, tergambar indah dalam helaian kain tenun, paduan warna menyatu, terangkai elok dengan motif penyejuk kalbu, tak ragu menjadikan tenun buna, sebagai harta berharga kebanggan jelita indonesia &quot;</p>\r\n\r\n<p>An Exclusive Jelita Indonesia Collection Series From ZM Zaskia Mecca Limited Item</p>\r\n', 'produk1641818555.png', 1, '2022-01-10 12:09:38'),
(25, 7, 'MKY CLOTHING CARDIGAN RAJUT KOTAK-KOTAK', 189900, '<p>&nbsp;</p>\r\n\r\n<p>- cardigan rajut - kancing - katun rajut motif kotak-kotak - one size fit to XL Toleransi ukuran real dengan deskripsi +/- 1-2cm</p>\r\n\r\n<p>Bahu total : 61cm Lingkar dada : 116 - 120cm Lingkar pinggang : 102cm Panjang lengan : 47cm Panjang cardigan : 54cm</p>\r\n\r\n<p>Bahan melar, bisa melar hingga tambah +/- 10cm Bisa digunakan hingga size XL (berat badan kurang lebih s.d 75kg)</p>\r\n\r\n<p>Cuci dengan tangan Jangan di bleach/pakai pemutih Jangan dikeringkan pakai mesin Jangan direndam lama</p>\r\n\r\n<p>Setrika dengan suhu rendah Cuci dengan warna yang sama/mirip<br />\r\n&nbsp;</p>\r\n', 'produk1641816755.png', 1, '2022-01-10 12:12:35'),
(26, 11, 'Cincin Resin Simple Retro Gaya Korea', 8000, '<p>Name: 17KM Korean Resin Simple Acrylic Rings</p>\r\n\r\n<p>Material: Resin</p>\r\n\r\n<p>Color: as the picture</p>\r\n\r\n<p>Style: simple&amp;fashion</p>\r\n\r\n<p>Occasion : Party Birthday Gift</p>\r\n\r\n<p>Package : 1pc ring</p>\r\n', 'produk1641816957.png', 1, '2022-01-10 12:15:57'),
(27, 11, 'Yaxiya Cincin Wanita Lapis Emas', 120000, '<p>Perhiasan Imitasi Lapis Emas</p>\r\n\r\n<p>100% Baru dan Berkualitas Tinggi</p>\r\n\r\n<p>Original Brand Of YAXIYA Jewerly.</p>\r\n\r\n<p>UKURAN MOTIF CINCIN : 4 X 13 MM</p>\r\n\r\n<p>UKURAN DIAMETER CINCIN 15 MM, 16 MM, 17 MM</p>\r\n\r\n<p>BERAT : 2 GRM</p>\r\n', 'produk1641817163.png', 1, '2022-01-10 12:19:23'),
(28, 5, 'Celana Pendek Pink', 320000, '<p>&nbsp;</p>\r\n\r\n<p>Size: 27, 28, 29, 30.</p>\r\n\r\n<p>Kantong depan kiri & kanan</p>\r\n\r\n<p>Kantong belakang kiri & kanan</p>\r\n\r\n<p>Size Chart dan detail lainnya bisa ditanyakan langsung</p>\r\n\r\n<p>Bahan: Jeans Washed Asli, Non Stretch<br/>\r\n&nbsp;</p>\r\n', 'produk1641818618.png', 1, '2022-01-10 12:22:39'),
(29, 5, 'Hot Pants Jeans\r\n', 500000, '<p>Hot Pants Jeans</p>\r\n\r\n<p>Sebelum order mohon ukur dengan benar \r\n(LINGKAR PINGGANG) dan cocokan  ukuran yg tertera,\r\nBerat badan dan tinggi tidak bisa jadi acuan ukuran, yang terpenting lingkar pinggang.\r\n(TIDAK MENERIMA TUKAR UKURAN)</p>\r\n\r\n<p>size/ Lingkar pingang/ tinggi celana\r\n25 Lp 66/ 28cm\r\n26 Lp 70/30 cm\r\n27 Lp 72/ 30cm\r\n28 Lp 74/30cm\r\n29 Lp 76/32cm\r\n30 Lp 78/32cm\r\n31  Lp 80/32cm\r\nToleransi 1-2 cm</p>\r\n', 'produk1641817534.png', 1, '2022-01-10 12:25:34'),
(30, 4, 'Rok Pendek Bear ', 357000, '<p>Rok Pendek Bear </p>\r\n\r\n<p>Korean Sexy Mini Bodycon Split Skirt 1115 (XS - XL)</p>\r\n\r\n<p>Detail Size:\r\nXS: Lingkar Pinggang 68, Panjang 40\r\nS: Lingkar Pinggang 70, Panjang 41\r\nM: Lingkar Pinggang 74, Panjang 43\r\nL: Lingkar Pinggang 76,  Panjang 43\r\nXL: Lingkar Pinggang 82, Panjang 44</p>\r\n\r\n<p>Kancing Mati</p>\r\n\r\n<p>Bahan : Scuba </p>\r\n', 'produk1641817822.png', 1, '2022-01-10 12:30:22'),
(31, 4, 'Rok Jeans Pendek Purple', 475000, '<p>Size : 27 - 34</p>\r\n\r\n<p>Warna : Purple</p>\r\n\r\n<p>Bahan : Jeans Non stretch</p>\r\n\r\n<p>Qualitas Terjamin</p>\r\n\r\n', 'produk1641819354.png', 1, '2022-01-10 12:34:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nama`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
