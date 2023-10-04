CREATE DATABASE IF NOT EXISTS `dbtravel`;
USE `dbtravel`;

CREATE TABLE `tb_kota` (
  `id_kota` varchar(3) NOT NULL,
  `nama_kota` varchar(50) NOT NULL
);

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `id_kota_asal` varchar(5) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tgl_lahir` date NOT NULL
);

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_pelanggan` int NOT NULL,
  `id_perjalanan` varchar(19) NOT NULL,
  `tgl_pemesanan` datetime NOT NULL
);

CREATE TABLE `tb_perjalanan` (
  `id_perjalanan` varchar(15) NOT NULL,
  `id_travel` int NOT NULL,
  `id_kota_asal` varchar(3) NOT NULL,
  `id_kota_tuju` varchar(3) NOT NULL,
  `kapasitas` int NOT NULL,
  `waktu_berangkat` datetime NOT NULL,
  `harga` int NOT NULL
);

CREATE TABLE `tb_travel` (
  `id_travel` int NOT NULL,
  `nama_travel` varchar(50) NOT NULL
);

--
-- Indexes for table `tb_kota`
--
ALTER TABLE `tb_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `id_kota_asal` (`id_kota_asal`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_perjalanan` (`id_perjalanan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tb_perjalanan`
--
ALTER TABLE `tb_perjalanan`
  ADD PRIMARY KEY (`id_perjalanan`),
  ADD KEY `id_kota_asal` (`id_kota_asal`),
  ADD KEY `id_kota_tuju` (`id_kota_tuju`),
  ADD KEY `id_travel` (`id_travel`);

--
-- Indexes for table `tb_travel`
--
ALTER TABLE `tb_travel`
  ADD PRIMARY KEY (`id_travel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`id_kota_asal`) REFERENCES `tb_kota` (`id_kota`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD CONSTRAINT `tb_pemesanan_ibfk_2` FOREIGN KEY (`id_perjalanan`) REFERENCES `tb_perjalanan` (`id_perjalanan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tb_pemesanan_ibfk_3` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tb_perjalanan`
--
ALTER TABLE `tb_perjalanan`
  ADD CONSTRAINT `tb_perjalanan_ibfk_2` FOREIGN KEY (`id_kota_asal`) REFERENCES `tb_kota` (`id_kota`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tb_perjalanan_ibfk_3` FOREIGN KEY (`id_kota_tuju`) REFERENCES `tb_kota` (`id_kota`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tb_perjalanan_ibfk_4` FOREIGN KEY (`id_travel`) REFERENCES `tb_travel` (`id_travel`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;