-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2023 pada 04.45
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` varchar(25) NOT NULL,
  `id_invoice` varchar(30) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `cart`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `cart` FOR EACH ROW BEGIN
	UPDATE product SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(6, 'Orlistat', 'obat yang digunakan untuk menurunkan berat badan pada orang yang mengalami kelebihan berat badan atau obesitas', 'Obat Keras', 60000, 80, 'apotek_online_k24klik_20220803090741359225_foto-produk-ORLISTAT.png'),
(7, 'Panadol', 'Untuk dewasa:  Panadol Regular (biru): mengandung 500 mg paracetamol untuk demam, sakit kepala, nyeri otot, nyeri, dan sakit gigi. Panadol Extra (merah): sama seperti Panadol biru, namun ditambahkan dengan kafein 65 mg. Panadol Cold & Flu (hijau): untuk m', 'Obat Bebas', 65000, 77, 'OIP.jpg'),
(8, 'Konidin', 'obat yang mengandung zat aktif Guaifenesin, Dextromethorphan HBr, dan Chlorpheniramine Maleate yang bekerja sebagai antitusif, ekspektoran, dan antihistamin.', 'Obat Bebas Terbatas', 45000, 99, '6e2e7f0f0318cbcda83990aa4a92fc7e.jpg'),
(9, 'Ceteme', 'obat yang mengandung Chlorpeniramin Maleat merupakan obat anti histamin yang berfungsi untuk meringankan gejala alergi.', 'Obat Bebas Terbatas', 25000, 26, '135a279c19143b943b6613e35864a5c4.jpg'),
(10, 'Stimuno Forte', 'Stimuno Forte bermanfaat sebagai imunomodulator (memperbaiki sistem imun) yang membantu merangsang tubuh memproduksi lebih banyak antibodi dan mengaktifkan sistem kekebalan tubuh agar daya tahan tubuh bekerja optimal', 'Obat Herbal', 33000, 12, 'Untitlmed.jpg'),
(11, 'Mecobalamin', 'Mecobalamin adalah bentuk lain dari vitamin B12 (cobalamin) yang dapat digunakan untuk mengatasi kondisi defisiensi vitamin B12 Mecobalamin merupakan senyawa vitamin yang larut dalam air dan merupakan vitamin esensial yang dibutuhkan tubuh Mecobalamin bia', 'Obat Keras', 74000, 57, 'OBT0008653.jpg'),
(12, 'Fluvir', 'Obat ini dapat digunakan untuk mengobati infeksi virus influenza tipe A dan B.', 'Obat Keras', 55000, 23, 'OBT0019225.jpg'),
(13, 'OB Herbal', 'OB Herbal Sirup dapat digunakan dengan membantu meredakan batuk karena masuk angin, mengencerkan dahak, dan membantu mengeluarkan dahak sehingga melegakan pernafasan.', 'Obat Herbal', 20500, 234, 'download.jpg'),
(14, 'Antangin', 'obat yang biasa digunakan untuk mengatasi gejala masuk angin seperti mual, perut kembung, dan meriang', 'Obat Herbal', 5500, 123, 'OIP_(1).jpg'),
(15, 'Promag', ' Obat ini digunakan untuk mengurangi gejala-gejala yang berhubungan dengan kelebihan asam lambung, gastritis, tukak lambung, tukak usus 12 jari. Gejala seperti mual, nyeri lambung, nyeri ulu hati, kembung dan perasaan penuh pada lambung.', 'Obat Bebas', 35000, 331, 'download_(1).jpg'),
(16, 'Termorex', ' Termorex sirup dapat membantu menurunkan panas dan demam pada bayi dan anak-anak pada sakit gigi, sakit kepala, dan setelah mendapat imunisasi.', 'Obat Bebas', 45500, 39, 'OIP_(2).jpg'),
(17, 'Bintang Toedjoe No.16', 'Obat ini digunakan untuk meredakan demam, sakit kepala, sakit gigi, sakit telinga, nyeri haid, dan nyeri ringan lainnya.', 'Obat Bebas', 4500, 56, 'OIP_(3).jpg'),
(18, 'Bisolvon', 'Bisolvon bermanfaat untuk meredakan gejala batuk berdahak yang bisa terjadi saat pilek, flu, atau infeksi saluran pernapasan.', 'Obat Bebas Terbatas', 58000, 47, 'download_(2).jpg'),
(19, 'Combatrin', ' obat anti cacing dengan kandungan utama pirantel pamoat untuk mencegah larva cacing tumbuh dan berkembang biak di saluran pencernaan.', 'Obat Bebas Terbatas', 65000, 77, 'OIP_(4).jpg'),
(20, 'Lodia', 'Obat ini dapat digunakan untuk mengobati diare akut dan kronis', 'Obat Keras', 33700, 70, 'download_(3).jpg'),
(21, 'Tolak Angin', 'obat herbal yang berguna untuk meredakan masuk angin, perut mual, tenggorokan kering dan badan terasa dingin.', 'Obat Herbal', 57000, 73, 'download_(4).jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `order_id` char(30) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(225) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL,
  `city` varchar(255) NOT NULL,
  `kode_pos` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `ekspedisi` varchar(100) NOT NULL,
  `tracking_id` varchar(30) NOT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `payment_limit` datetime DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `level`, `avatar`) VALUES
(6, 'Helpdesk K1', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', 'user.png'),
(11, 'rifal', 'rifal@gmail.com', 'aa08769cdcb26674c6706093503ff0a3', '2', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
