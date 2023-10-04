INSERT INTO `tb_kota` (`id_kota`, `nama_kota`) VALUES
('BDG', 'Bandung'),
('BDL', 'Palembang'),
('BKS', 'Bekasi'),
('BPN', 'Balikpapan'),
('BTN', 'Batam'),
('JKT', 'Jakarta'),
('MDN', 'Medan'),
('MLG', 'Malang'),
('PKU', 'Pekanbaru'),
('PNK', 'Pontianak'),
('SBY', 'Surabaya'),
('SRG', 'Semarang'),
('YKT', 'Yogyakarta');


INSERT INTO `tb_pelanggan` (`id_pelanggan`, `email`, `nama_pelanggan`, `id_kota_asal`, `no_telp`, `jk`, `tgl_lahir`) VALUES
(3, 'hasbanfardani77@gmail.com', 'Hasban Fardani', 'BDG', '0877777777', 'L', '2006-07-01'),
(4, 'anita@mail.co', 'Anita Wijaya', 'MLG', '0812345678', 'P', '1995-03-15'),
(5, 'surya.p@gmail.com', 'Surya Pratama', 'BPN', '0823456789', 'L', '1990-08-22'),
(6, 'sarde@gmail.com', 'Dewi Sari', 'BKS', '0856789012', 'P', '1988-11-05'),
(7, 'agus@mail.com', 'Agus Setiawan', 'SRG', '0812345678', 'L', '1992-06-30'),
(8, 'lisa@gmail.com', 'Lisa Susanto', 'MDN', '0823456789', 'P', '1998-01-10'),
(9, 'yudi@mail.com', 'Yudi Santoso', 'PKU', '0856789012', 'L', '1994-09-18'),
(10, 'lina@mail.com', 'Lina Wijaya', 'BDL', '0812345678', 'P', '1989-04-25'),
(11, 'budi.Hartono@gmai.com', 'Budi Hartono', 'BTN', '0823456789', 'L', '1991-07-12'),
(12, 'ria@mail.co', 'Ria Putri', 'PNK', '0856789012', 'P', '1997-02-03');

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `id_pelanggan`, `id_perjalanan`, `tgl_pemesanan`) VALUES
('3BDGJKT03102310120231004044431', 3, 'BDGJKT031023101', '2023-10-04 04:44:31'),
('3BDGJKT031023120231004043902', 3, 'BDGJKT0310231', '2023-10-04 04:39:02'),
('3BDGJKT031023120231004043942', 3, 'BDGJKT0310231', '2023-10-04 04:39:42'),
('3BDGJKT031023120231004044218', 3, 'BDGJKT0310231', '2023-10-04 04:42:18'),
('3BDGJKT031023220231004044346', 3, 'BDGJKT0310232', '2023-10-04 04:43:46'),

INSERT INTO `tb_perjalanan` (`id_perjalanan`, `id_travel`, `id_kota_asal`, `id_kota_tuju`, `kapasitas`, `waktu_berangkat`, `harga`) VALUES
('BDGJKT0310231', 1, 'BDG', 'JKT', 50, '2023-10-03 08:00:00', 120000),
('BDGJKT031023101', 1, 'BDG', 'JKT', 50, '2023-10-03 08:00:00', 91554),
('BDGJKT0310232', 1, 'BDG', 'JKT', 50, '2023-10-03 10:00:00', 110000),
('BDGJKT0310233', 1, 'BDG', 'JKT', 50, '2023-10-03 12:00:00', 130000),
('BDGJKT0310234', 1, 'BDG', 'JKT', 50, '2023-10-03 14:00:00', 95000),
('BDGJKT0310235', 1, 'BDG', 'JKT', 50, '2023-10-03 16:00:00', 140000),
('BDGJKT0310236', 1, 'BDG', 'JKT', 50, '2023-10-03 18:00:00', 120000),
('BDGJKT0310237', 1, 'BDG', 'JKT', 50, '2023-10-03 20:00:00', 110000),
('BDGJKT10022023', 2, 'BDG', 'JKT', 50, '2023-10-02 11:39:01', 90000),
('BDLPKU10022023', 10, 'BDL', 'PKU', 40, '2023-10-02 17:15:00', 92000),
('BKSBPN10022023', 6, 'BKS', 'BPN', 38, '2023-10-02 11:45:00', 85000),
('BPNBKS10022023', 5, 'BPN', 'BKS', 45, '2023-10-02 10:15:00', 90000),
('BTNPNK10022023', 11, 'BTN', 'PNK', 35, '2023-10-02 18:30:00', 110000),
('JKTBDG10022023', 2, 'JKT', 'BDG', 50, '2023-10-02 11:40:09', 90000),
('MDNSRG10022023', 8, 'MDN', 'SRG', 48, '2023-10-02 14:30:00', 115000),
('MLGSBY10022023', 4, 'MLG', 'SBY', 35, '2023-10-02 09:30:00', 80000),
('PKUBDL10022023', 9, 'PKU', 'BDL', 42, '2023-10-02 15:45:00', 95000),
('PNKBTN10022023', 12, 'PNK', 'BTN', 38, '2023-10-02 20:00:00', 105000),
('SBYMLG10022023', 3, 'SBY', 'MLG', 40, '2023-10-02 08:00:00', 75000),
('SRGMDN10022023', 7, 'SRG', 'MDN', 50, '2023-10-02 13:00:00', 120000);

INSERT INTO `tb_travel` (`id_travel`, `nama_travel`) VALUES
(1, 'Bandung Trans'),
(2, 'Bandung Travel'),
(3, 'Surabaya Trans'),
(4, 'Malang Jaya'),
(5, 'Balikpapan Travel'),
(6, 'Bekasi Express'),
(7, 'Semarang Journey'),
(8, 'Medan Express'),
(9, 'Pekanbaru Travel'),
(10, 'Palembang Journey'),
(11, 'Batam Express'),
(12, 'Pontianak Travel');