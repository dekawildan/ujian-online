-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 02:21 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujian_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peserta`
--

CREATE TABLE `tbl_peserta` (
  `id` int(10) NOT NULL,
  `nama_peserta` varchar(50) NOT NULL,
  `kelas` enum('X TKJ 1','X TKJ 2','X RPL','XI RPL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_peserta`
--

INSERT INTO `tbl_peserta` (`id`, `nama_peserta`, `kelas`) VALUES
(1, 'Deka Wildan', 'X TKJ 1'),
(3, 'paijo', 'X TKJ 1'),
(4, 'Paijem', 'X RPL'),
(5, 'Wahyu ernawati', 'X RPL'),
(6, 'ika pristiyanti', 'X RPL'),
(7, 'PUTRI AZIZAH', 'X RPL'),
(8, 'Fanyza Ramdan dwitama', 'X RPL'),
(9, 'Gema jovan mia andika', 'X TKJ 1'),
(10, 'Muhammad Ajie setiawan', 'X RPL'),
(11, 'Muhammad Nur Aziz', 'X RPL'),
(12, 'Sheila febriyani', 'X RPL'),
(13, 'Rifki giali', 'X RPL'),
(14, 'Muhammad anang ma, ruf', 'X RPL'),
(15, 'Muhammad Iqbal ulliya', 'X RPL'),
(16, 'Nur aeni', 'X RPL'),
(17, 'Diki Ardiansah', 'X RPL'),
(18, 'dimas permadi', 'X RPL'),
(19, 'Novia Maharani', 'X RPL'),
(21, 'ANWAR NOOR FAUZI', 'X RPL'),
(22, 'Muhamad ilham', 'X RPL'),
(23, 'Rizal Azwar Annas', 'X RPL'),
(24, 'chairul anwar', 'X RPL'),
(25, 'ARDHIKA UDAPRASTYA', 'X RPL'),
(27, 'Redyan Adin Wardana', 'X TKJ 2'),
(28, 'Arya dwi Prasetya ', 'X TKJ 2'),
(29, 'Devi Fitri Setiani ', 'X TKJ 2'),
(30, 'Randy satria', 'X TKJ 2'),
(31, 'Desta SuryaTama', 'X TKJ 2'),
(32, 'Audiya Nandhita Tiara', 'X TKJ 2'),
(33, 'Elsa stiawati', 'X TKJ 2'),
(34, 'Muhamad Rifki Ardiyanto', 'X TKJ 2'),
(35, 'Fadila Rahmadani', 'X TKJ 2'),
(36, 'Putri susanti', 'X TKJ 2'),
(37, 'ALFIANI ASHARI', 'X TKJ 2'),
(38, 'Unik Sulistiawati ', 'X TKJ 2'),
(40, 'RifkyArdhySaputra', 'X TKJ 2'),
(41, 'Syifa nur aulia', 'X TKJ 2'),
(42, 'Dimas Azizi', 'X TKJ 2'),
(43, 'Setiawa Dwi Kustriyanto', 'X TKJ 2'),
(44, 'Arum Wahyu meiningsih', 'X TKJ 2'),
(45, 'Miftakul ulum', 'X TKJ 2'),
(46, 'Nova rahma dona', 'X TKJ 2'),
(47, 'Zulfika Ismeatul A', 'X TKJ 2'),
(48, 'Nia lisa meilani', 'X TKJ 2'),
(49, 'Nanda Oktaviano', 'X TKJ 2'),
(50, 'Melinda adi pangesti', 'X TKJ 2'),
(51, 'Muhammad Ridwan', 'X TKJ 2'),
(52, 'Ardy rachmadhani', 'X TKJ 2'),
(54, 'Ayuk Candra Riwa Avina', 'X TKJ 2'),
(56, 'Latifatul Rohmah', 'X TKJ 2'),
(58, 'Zyeinayatul Maula', 'X TKJ 1'),
(60, 'Noval Rendi Irwansyah', 'X TKJ 2'),
(64, 'Muhamad fajar rodid', 'X TKJ 2'),
(65, 'Alfianda mandiri putra kusuma', 'X TKJ 2'),
(66, 'Fahrian rafa isun', 'X TKJ 2'),
(67, 'Sanca octavian', 'X TKJ 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referensi`
--

CREATE TABLE `tbl_referensi` (
  `id` int(10) NOT NULL,
  `soal1` char(2) NOT NULL,
  `soal2` char(2) NOT NULL,
  `soal3` char(2) NOT NULL,
  `soal4` char(2) NOT NULL,
  `soal5` char(2) NOT NULL,
  `soal6` text NOT NULL,
  `soal7` text NOT NULL,
  `soal8` text NOT NULL,
  `soal9` text NOT NULL,
  `soal10` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id` int(10) NOT NULL,
  `id_peserta` int(10) NOT NULL,
  `soal1` char(2) DEFAULT NULL,
  `soal2` char(2) DEFAULT NULL,
  `soal3` char(2) DEFAULT NULL,
  `soal4` char(2) DEFAULT NULL,
  `soal5` char(2) DEFAULT NULL,
  `soal6` text,
  `soal7` text,
  `soal8` text,
  `soal9` text,
  `soal10` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_soal`
--

INSERT INTO `tbl_soal` (`id`, `id_peserta`, `soal1`, `soal2`, `soal3`, `soal4`, `soal5`, `soal6`, `soal7`, `soal8`, `soal9`, `soal10`) VALUES
(2, 1, 'A', 'A', 'C', 'D', 'E', 'bahasa natural, flowchart, pseudo code', 'berangkat sekolah, meminjam buku perpustakaan, upacara bendera', 'membaca suatu kondisi benar dan salah', 'memudahkan audien memahami ide pemikiran kita', 'blender, autodesk maya, autodesk 3ds max'),
(5, 3, 'A', 'B', 'B', 'A', 'D', 'flowchart', 'belajar', 'membuat kondisi', 'mudah dipahami audien', 'blender, autodesk 3ds max'),
(7, 5, 'A', 'A', 'A', 'A', 'B', 'a) Algoritma pseudo-code\r\nb) Algoritma flowchart\r\nc) algoritma struktur english', 'a)belajar\r\nb)meyelesaikan masalah dengan logika\r\nc)memvisualkan cara berfikir', 'Untuk mengevaluasi suatu kondisi', 'Membantu mempelajari cara belajar menyusun peta konsep', 'a) Macromedia flash\r\nb) animepixels\r\nc) easy gif animator 5 pro'),
(8, 6, 'A', 'A', 'A', 'D', 'B', '1. Algoritma pseudo-code\r\n2.Algoritma flowchart\r\n3. Algoritma strukture english', '1.mengfisualkan cara berfikir\r\n2.Belajar\r\n3.Menyelesaikan masalah dengan logika', 'Untuk mengevaluasi suatu kondisi', '1.Membantu mempelajari cara belajar menyusun peta konsep', 'a) macromedia flash\r\nb) animepixels\r\nc) easy gif animator 5 pro'),
(9, 7, 'A', 'A', 'A', 'D', 'B', '1. Algoritma pseudo-code\r\n2. Algoritma flowchart\r\n3. Algoritma structure english', '1. Belajar\r\n2. Mengfisualkan cara berfikir\r\n3. Menyelesaikan masalah dengan logika', 'Untuk mengevaluasi suatu kondisi', 'Membantu mempelajari cara belajar menyusun peta konsep', 'a) macromedia flash\r\nb) animepixels\r\nc) easy gif animator 5 pro'),
(10, 8, 'A', 'A', 'A', 'A', 'A', '1.tipe\r\n2.nama\r\n3.nilai', '1.bermusyawarah dalam kerja kelompok\r\n2.pembagian jadwal piket\r\n3.menaati peraturan sekolah', 'Untuk mengevaluasi suatu kondisi\r\n', 'Kalau menggunakan peta Minda lebih mudah di pahami oleh pengguna tersebut', '1.3D builder\r\n2.photo shop\r\n3.photo gride'),
(11, 9, 'A', 'A', 'A', 'A', 'B', 'type\r\nnama\r\nnilai', '1.kerja kelompok\r\n2.pembagian jadwal piket\r\n3.membuang sampah pada tempatnya', 'untuk mengevaluasi suatu kondisi', 'kosong', '3d builder, adobe photo shop, microsoft office picture manager'),
(12, 10, 'C', 'A', 'A', 'A', 'B', '1.HTML\r\n2.PHP\r\n3.JUPYTER', '1 Belajar\r\n2 mengfisualkan cara berfikir \r\n3 menyelesaikan masalah dengan logika', 'Untuk mengefaluasi suatu kondisi', 'kosong', '3d builder\r\nAdobe photo shop\r\nMicrosoft office picture manager'),
(13, 11, 'A', 'A', 'A', 'A', 'A', '1.TIPE\r\n2.NAMA\r\n3.NILAI', '1.Menghitung data nilai rata-rata\r\n2.jadwal piket kelas\r\n3.Daftar kehadiran kelas', 'Untuk mengevaluasi suatu kondisi.', 'Untuk memvisualkan cara berpikir.', 'kosong'),
(14, 12, 'A', 'A', 'A', 'C', 'B', 'Html\r\nJupyter\r\nPhp', 'Membuat data \r\nPemograman\r\nMenghapus papan pengaris\r\n', 'Memastikan progam memiliki alurnya sendiri', 'Peta minda bisa membuat alur kerja project lebih teratur. \r\nPeta minda membantu kita menggali dan mengembangkan gagasan atau ide tanpa hambatan. \r\nPeta minda membantu kita membuat rencana atau kerangka cerita. ', '3d\r\nBlender \r\nModo\r\nNuke\r\n2d\r\nPencil 2d\r\nCrazytalk\r\nAnime studio'),
(15, 13, 'A', 'A', 'B', 'D', 'B', 'Pseudo-code \r\nFolowchart\r\nStructir english', 'a) algoritma minghiting nilai\r\nb) algoritma menghapus papan tulis\r\nc) algoritma menyalakan ponsel', 'Memastikan prigram memiliki alurnya sendiri', 'Peta Minda bisa membuat alur kerja project lebih teratur.\r\nPeta Minda membantu kita menggali dan mengembangkan gagasan atau ide tanpa hambatan.\r\nPeta minda membantu kita membuat rencana atau kerangka cerita.\r\n\r\n', '3d\r\nBlender\r\nNuke\r\nModo\r\n2d\r\nPencil 2d\r\nCrazytalk\r\nAnime studio'),
(16, 14, 'A', 'A', 'A', 'A', 'B', '1.jupyter 2.html 3.php', 'Tepe. Nama. Nilai. ', 'Fungi dari flowchart adalah mendepsikan urutan pelaksanaan suatu proses(sama dengan fungsi Dari algoritme) ', 'Sebagai.  pengurutan.  data. ', '3d builder Photoshop gride'),
(17, 15, 'A', 'A', 'A', 'B', 'B', '-pseudo-code\r\n-flowchart\r\n-structure english', 'Ff', '-terminal point simbol\r\n-flow direction symbol\r\n-procsing symbol\r\n-decision symbol\r\n-input output\r\n-predefied proses\r\n-conector(on page)\r\n-conector(off page)\r\n\r\n-', 'a.mengemat waktu belajar dan mengulang\r\nb.memfasilitasi pembelajaran\r\nc.memperkuat ingatan', 'Pencil 2d\r\nCrazytalk'),
(18, 16, 'A', 'A', 'A', 'D', 'B', 'Html\r\nJupyter\r\nPhp', 'Membuat data\r\nPemograman\r\nMenghapus papan pengaris\r\n\r\n', 'Untuk menggefaluasi suatu kondisi \r\nMemastikan program', 'Peta minda bisa membuat alur kerja project lebih teratur. \r\nPeta minda membantu kita mengali dan mengembangkan gagasan atau ide tanpa hambatan. \r\nPita minda membuat kita membuat rencana atau rencana kita', '3d\r\nNuke\r\n'),
(19, 17, 'A', 'A', 'D', 'C', 'B', 'a)pseudo-code\r\nb)flowchart\r\nc)structure english', 'A.Algoritma mengitung nilai \r\nB.algoritma menghapus papan tulis\r\nC.algoritma menyalahkan ponsel', 'Memastikan program memiliki alurnya sendiri', 'Peta minda bisa membuat alur kerja projek lebih teratur.\r\nPeta minda membantu kita menggali dan mengembangkan gagasan atau ide tanpa hambatan.\r\nPeta minda membantu kita membuat rencana atau kerangkat cerita.', '3D:blender,modo,moke\r\n2D:pencil 2D,crazytalk,anime studio.'),
(20, 19, 'A', 'A', 'A', 'A', 'B', '1.logaritma pseundo-code\r\n2.Algoritma flowchart\r\n3.Algoritma structure english', '1.belajar\r\n2.menyelesaikan masalah dengan logika\r\n3.menvisualkan cara berpikir', 'Untuk mengevaluasi suatu kondisi', 'Membantu mempelajari cara belajar menyusun peta konsep', 'a.mecromedia flash\r\nb.animepixeals\r\nc.easy gif animator 5 pro'),
(21, 18, 'A', 'A', 'B', 'C', 'B', 'Pseudo-code,flowchart,strukture english', 'a)algoritma menghitung nilai       b)algoritma menghapus papan tulis c)algoritma menyalakan ponsel', 'Memastikan program memiliki alurnya sendiri', 'Peta minda bisa membuat alur kerja project lebih teratur.leta minda membantu kita menggali dan membangun gagasan atau ide tanpa hambatan.peta minda membantu kita membuat rencana atau kerangka cerita', '3D.Reit arcitecture,blenden nuke  2D.pencil 2D,crazytalk,anime studio'),
(22, 21, 'A', 'A', 'A', 'A', 'B', '1.jupyter\r\n2.html\r\n3.php', 'Tipe,nama,nilai', 'Fungsi dari flowchart adalah mendeskripsikan urutan pelaksanaan suatu proses (sama dengan fungsi dari algoritma)', 'PETA MINDA SEBAGAI PENGURUTAN DATA DATA', '3d bulider photoshop photo gride'),
(23, 22, 'C', 'E', 'A', 'A', 'B', '1jupyter\r\n2html\r\n3php', '1Menghitung data nilai rata rata\r\n2Jadwal piket kelas \r\n3membuat data penilaian', 'Fungsi Flowchart mendeskripsikan urutan pelaksanaan suatu proses(sama dengan fungsi dari algoritma', 'Peta Mida manfaat nya adalah sebagai penyusun data data', '3d bulider photoshop photo gride'),
(24, 23, 'A', 'A', 'A', 'A', 'A', '1.Tipe\r\n2.Nama\r\n3.Nilai', '1. Bermusyawarah dalam kerja kelompok\r\n2. Pembagian jadwal piket\r\n3. Menaati peraturan sekolah/kelas\r\n', 'Untuk mengevaluasi suatu kondisi', 'Klau menggunakan peta minda lebih mudah di fahami oleh pengguna tersebut', '1. 3D Builder\r\n2. photo Shop\r\n3. Photo Gride'),
(25, 24, 'A', 'A', 'A', 'B', 'B', 'logika, metode dan tahapan', 'belajar,bermain dan bercanda', 'untuk mengevaluasi', 'kosong', '3d builer, microsoft office dan photo bridt'),
(26, 25, 'A', 'A', 'D', 'D', 'B', 'Algoritema logis,algoritme logika,algorima seriu', 'tanggung jawab,di siplin,sopan ', 'flowchart adalah salahsatu contoh untuk mengawali atau berakir', 'peta mida adalah metode serius ', '3D BUILDER, ADOBE PHOTO SHOP, MICROSOFT OFFICE PICTURE MANAGE'),
(27, 27, 'A', 'A', 'C', 'A', 'A', 'Psuedo-code, flowchart, structure english', 'Membaca, menulis, berfikir', ' merupakan simbol yang digunakan untuk memilih proses atau keputusan berdasarkan kondisi yang ada.', 'Peta cara berfikir', '2D: corel ravo, moho, cretoon\r\n3D: rhino, carrara, lightwave'),
(28, 28, 'A', 'A', 'A', 'A', 'A', '1:psuedo code\r\n2:flowchart\r\n3:structure english', '1:membaca\r\n2:menulis\r\n3:berfikir', 'Simbol pemilihan proses berdasarkan kondisi yang ada', 'Metode pembelajaran terbaru yg dapat membantu sesama mengajar subjek secara efektif ', '2d:corel ravo, moho, cre toon\r\n3d:maya,light wave, cinemage, softimage '),
(29, 29, 'A', 'A', 'A', 'A', 'A', 'Algoritma belokan Ford\r\nAlgoritma pijksstra\r\nAlgoritma prim', 'Untukmenghitung,memproses data,menjumlah data', 'Seleksi atau kondisi', 'Memudahkan pelajar untuk memahami /menciptakan ide baru dan membangun koneksi', '2D: Aline studio,flash,crea toon\r\n3D: Maya,blander,lightwafe'),
(30, 30, 'A', 'A', 'A', 'A', 'A', 'algoritma bellman\r\nAlgoritma djkstra', 'Menyelesaikan masalah.\r\nMenjaga lingkungan sekolah.\r\nMencari solusi.', 'untuk memberikan suatu keputusan.', 'agar manusia dapat berfikir secara maksimal', '2D : - adobe flash.\r\n     - anime studio.\r\n     - synfig studio.\r\n     - scratch.\r\n\r\n3D : - blender.\r\n     - 3d studio may.\r\n     - Macromedia studio.\r\n     - adobe after effect.'),
(31, 31, 'A', 'A', 'A', 'A', 'A', 'Psuedo-code, flowchart, structure english', 'Membaca, menulis, berpikir', 'Merupakan simbol yg digunakan untuk memilih proses atau keputusan berdasarkan kondisi yg ada', 'Peta pikiran', '2D: corel ravo, cretoon, adobe flash\r\n3D: light wave, softimage, wings 3D'),
(32, 32, 'A', 'A', 'A', 'A', 'A', 'Deskriptif,flowchat,pseudocode', 'upacara,mengerjakan tugas,membersihkan kelas', 'untuk pemilihan proses berdasarkan kondisi yang ada', 'untuk memaksimalkan potensi pikiran manusia dengan menggunakan otak kanan dan otak kirinya dengan secara simultan', '2D:corel rave,moho,crea thon\r\n3D:light wave,softimage,maya'),
(33, 33, 'A', 'A', 'A', 'A', 'A', '1.deskriptif\r\n2.flowchart\r\n3.pseudocode', 'Upacara,mengerjakan tugas,membersihkan kelas', 'Memilih proses berdasarkan kondisi yang ada', 'Membantu menyelesaikan masalah,membantu seseorang untuk berkomunikasi', '2D:corel rave,moho,crea thon\r\n3D:lightwave,softimage,maya'),
(34, 35, 'A', 'A', 'A', 'A', 'A', '1. Deskriptif\r\n2. Flowchart\r\n3. Pseudocode', 'Piket kelas,mengerjakan tugas dari guru,upacara', 'Memilih proses berdasarkan kondisi yang ada', 'Membantu menyelesaikan masalah, membantu seseorang untuk berkomunikasi', '1. Animasi 2D : corel rave,moho,crea\r\n2. Animasi 3D : lightwave,softimage'),
(35, 34, 'A', 'A', 'A', 'A', 'A', 'Algoritma kruskal\r\nAlgoritma hungaria\r\nAlgoritma dijkstra', '-menjaga lingkungan sekolah\r\n-menyelesaikan masalah\r\n-mencari solusi', 'Untuk memberikan suatu keputusan', 'Memudahkan pelajar untuk memahami/menciptakan ide baru dan membuat konek si', 'Software Animasi 2D:\r\nâ€“Anime studio\r\nâ€“Synfig studio\r\nâ€“Adobe flash\r\nâ€“Scrath\r\nSoftware Animasi 3D:\r\nâ€“Blender\r\nâ€“3D studio may\r\nâ€“Macromedia Director\r\nâ€“Adobe after effct'),
(36, 36, 'A', 'A', 'A', 'A', 'A', '1.deskriptif\r\n2.flowchard\r\n3.pseudocode', 'Piket kls , upacara , mengerjakan tugas ', 'Memilih proses berdasarkan kondisi yang ada', 'Membantu menyelesaikan masalah, membantu seseorang untuk berkomunikasi', '1. Animasi 2D : flash ,room boom\r\n2.animasi 3D : Maya ,light wafe'),
(37, 37, 'A', 'A', 'A', 'A', 'A', 'Deskriptif,flowchart,psudocode', 'Menghitung luas lingkaran, menyalakan komputer, ', 'Gambar yg diambil dalam kondisi tertentu', 'Kota minda dapat mudah diingat ,dapat dipelajari, menghemat waktu belajar dan mengulang kembali, dapat memperkuat ingatan', 'Software2D :toon boom,anime studio,drawplus,the tab, flipbook\r\nSoftware 3D: maya,autodesk,modo,cinema 4D'),
(38, 38, 'A', 'A', 'A', 'A', 'A', '1.deskritif\r\n2.flowchart\r\n3.pseodocode', '1.ingin menghidupkan kipas angin\r\n2.ingin menancapkan kabel ke stop kontak\r\n3.ingin mengerjakan soal  ', 'Menggambarkan suatu gambar keputusan yang harus diambil di kondisi tertentu.  ', '1.mudah untuk diingat\r\n2.mudah untuk dipelajari bagi siswa\r\n3.menghemat waktu belajar dan mengulang\r\n4.memperkuat ingatan', '2D :anime studio, drawplus, toonboom, flipbook, the tab. \r\n3D :maya, autodesk, modo, 3d studio max. '),
(39, 42, 'A', 'A', 'A', 'A', 'A', 'Psuedo-code, flowchart, structure english', 'Menaati aturan sekolah, menjadi anak Yang baik .sholat, piket', 'Seleksi atau kondisi', 'Peta minda memiliki manfaat Yang sangat banyak di antara nya adalah memudahkan kita untuk hidup lebih mudah karena peta minda membantu kehidupan kita sehari hari', '2D =Adobe flash\r\n    Anime studio\r\n    Synfig studio\r\n    Scrath\r\n3D =blender\r\n    3D studio may\r\n    Macromedia director\r\n    Adobe after effect'),
(40, 41, 'A', 'A', 'A', 'A', 'A', 'Deskriptif, flowchart, pseudocode', 'Upacara, mengerjakan tugas, membersihkan kelas', 'Untuk pemilihan proses berdasarkan kondisi yang ada', 'Untuk memaksimalkan potensi pikiran manusian dengan menggunakan otak kanan dan otak kirinnya dengan secara simultan', '2D:corel rave, moho, crea thon\r\n3D:light wave, softimage, maya'),
(41, 40, 'A', 'A', 'A', 'A', 'A', '1.algoritma psuedo-code\r\n2.algoritma flowchart\r\n3.algoritma structure english', '1.datang ke sekolah jam 6:30\r\n2.masuk ke kelas masing masing\r\n3.guru masuk kelas\r\n4.berdoa sebelum belajar', 'Seleksi/kondisi', 'Menciptakan ide baru dan membangun sebuah koneksi', '2D\r\nAnime studio, flash, crea toon\r\n3D\r\nMaya, light wafe, blender'),
(42, 43, 'A', 'A', 'A', 'A', 'A', '1:psuedo code\r\n2:flowchart\r\n3:struktur english', 'Membaca.menulis.berfikir', 'Berfungsi untuk menunjukan proses berdasarkan kondisi yang ada', 'Metode pembelajaran terbaru yang dapat membantu sesama mengajar subjek secara efektif', '2D:corel ravo.moho.toon boom \r\n3D:3D Studio max.maya.light wave'),
(43, 44, 'A', 'A', 'A', 'A', 'A', '1.deskriptif\r\n2.flowchard\r\n3.pseudocode', '1.piket\r\n2.upacara\r\n3.mengerjakan tugas', 'Memilih proses berdasarkan kondisi yang ada', 'Untuk menyelesaikan masalah,membantu seseorang untuk berkomunikasi', '1.animasi 2D:flash,room boom\r\n2.animasi 3D:Maya,light wave'),
(44, 45, 'A', 'A', 'A', 'A', 'A', '1Psuedo-code\r\n2flowchart\r\n3setruktur english', 'Membaca.menulis.berfikir', 'Seleksi/kondisi', 'Metode pembelajaran terbaru yang dapat membantu sesama subjek secara efektif ', '2d:corel ravo, moho, cre toon\r\n3d:maya, light wave, cinemage'),
(45, 46, 'A', 'A', 'A', 'A', 'B', 'Flowchart\r\nSeudokode\r\nDiskriptig', 'Untuk menghitung \r\nMemproses data ', 'Memilih proses berdasarkan kondisi yang ada ', 'A)Membantu seseorang untuk bisa berkomunikasi \r\nB)membantu untuk menyelesaikan masalah \r\nC)', NULL),
(46, 47, 'A', 'A', 'A', 'A', 'A', 'a) deskriptif\r\nb) flowcart\r\nC) pseudocode', 'a) upacara bendera\r\nb) membersihkan kls \r\nc) mencatat plajrn', 'Memilih proses berdasarkan kondisi yg ada', 'a) membantu seseorang utk bisa berkomunikasi\r\nb) membatu utk menyelesaikan masalah\r\n  \r\n', '2d : aline studio, flash, creen boom\r\n3d : maya, light wave, blender'),
(47, 48, 'A', 'A', 'A', 'A', 'A', '1.algoritma Hungaria\r\n2.algoritma krusial\r\n3.algoritma prim', '1.untuk menghitung\r\n2.memproses data\r\n3.menjumlah data', 'Seleksi atau kondisi', 'Memudahkan pelajar untuk memahami/menciptakan ide baru yang membangun koneksi', 'Software 2D: aime studio, flas, crea ton\r\nSoftware 3D: maya, blender, ligh wafe'),
(48, 49, 'A', 'A', 'A', 'A', 'A', 'Psuedo-code, flowchart, structure english', '1.datang ke sekolah jam 6:30\r\n2.masuk kelas masing masing\r\n3.guru masuk kelas\r\n4.berdoa sebelum belajar', 'Seleksi/kondisi', 'Memudahkan pelajaran untuk memahami/menciptakan ide baru dan membangun koneksi', '2D: anime studio, flas, cretoon\r\n3D: Maya, light ware,blander'),
(49, 50, 'A', 'A', 'A', 'A', 'A', '-Flowchard\r\n-seudokode\r\n-diskriptif', 'Belajar\r\nMenaati peraturan\r\nSaling membantu kepada teman', 'Memilih proses berdasarkan kondisi yang ada ', 'Peta minda memiliki manfaat yang sangat banyak di antaranya memudahkan kita hidup lebih mudah karna peta minda membantu kehidupan kita sehari hari', '2D:corel rave moho crea thon \r\n3D: light wave softimage maya'),
(50, 51, 'A', 'A', 'D', 'A', 'A', 'â€“Algoritma Dijkstra\r\nâ€“Algoritma Bellman', 'Menyelesaikan masalah,\r\nMenjaga lingkungan sekolah,\r\nMencari solusi.', 'Untuk memberikan suatu keputusan.', 'Agar manusia lebih berfikir lebih maksimal.', 'Software Animasi 2D:\r\nâ€“Anime studio\r\nâ€“Synfig studio\r\nâ€“Adobe flash\r\nâ€“Scrath\r\nSoftware Animasi 3D:\r\nâ€“Blender\r\nâ€“3D studio may\r\nâ€“Macromedia Director\r\nâ€“Adobe after effct'),
(51, 52, 'A', 'A', 'A', 'A', 'A', 'Psuedo-code, flowchart, structure english', 'Membaca, menulis, berfikir', 'Merupakan simbol yg digunakan untuk memilih prosesor atau keputusan berdasarkan kondisi yg ada', 'pikiran', '2D: corelravo, cretoon, adobeflash\r\n3D: lightwave, softimage, winge 3D'),
(52, 54, 'A', 'A', 'A', 'D', 'A', 'Algoritma hungaria,algoritma bellman ford,algoritma edmonds karp', 'Memilih ketua kelas,Kerja kelompok,menentukan sesuatu', 'Kondisiii', '.memudahkan pelajar untuk memahami/menciptakan ide baru dan mebangun koneksi', '.blender,ligth wife,maya'),
(53, 56, 'A', 'A', 'A', 'A', 'A', 'deskriptif,flowchart,pseudocode', 'upacara,mengerjakan tugas,membersihkan kelas', 'untuk pemilihan proses berdasarkan kondisi yang ada.', 'untuk memaksimalkan potensi pikiran manusia dengan menggunakan otak kanan dan otak kirinya secara simultan', '2D : corel rave,moho,crea thon\r\n3 D : light wave,softimage,maya.'),
(54, 58, 'A', 'A', 'A', 'A', 'A', 'Algoritma bellman-ford,algoritma sijksstra,algoritma boruxka', 'Utk menghitung utk memproses data utk menjumlah', 'Seleksi atau kondisi', 'Memudahkan pelajar untuk memahami/menciptakan ide baru dan membangun koneksi', '2D:aline,flas,crean toon\r\n3D:maya,blender,lightwafe'),
(55, 60, 'A', 'A', 'A', 'A', 'A', '-algoritma dijstta\r\n-algoritma kruskal\r\n-algoritma prim', 'Menjaga lingkungan sekolah\r\nMenyelesaikan masalah\r\nMencari solusi', 'Memberikan suatu keputusan', 'Memudahkan pelajar untuk memahami/menciptakan ide baru dan membuat koneksi.', '2D:-adobe flash\r\n   -Anime studio\r\n   Scratch\r\n3D:-blender\r\n   3D studio max\r\n   -macromedia director'),
(56, 64, 'A', 'A', 'A', 'A', 'A', '1:psuedo code\r\n2:flowchart\r\n3:stuktur engglis', 'Menulis,membaca,berfikir', 'Untuk meberikan keputusan', 'Agar manusia dapat berfikir maksimal', '2D:anime studio,flas,crea toon\r\n3D:maya,lightwafe,blader'),
(57, 65, 'A', 'A', 'A', 'A', 'A', '1 psuedo code\r\n2 flowchart\r\n3 struktur engglis', 'Menulis membaca berfikir', 'Untuk memberikan keputusan', 'Agar manusia dapat berfikir dgn maksimal', 'Software 2d\r\nAnime studio\r\nFlash\r\nCreac toon\r\nSoftware 3d\r\nMaya\r\nLightwafe\r\nBlander'),
(58, 66, 'A', 'A', 'A', 'A', 'A', 'Beliman Ford di jkstra prim', 'Menulis membaca berfikir', 'Untuk memberikan keputusan', 'Agar manusia dapat berpikir denggan maksimal', '2D:flash Aime studio\r\n3D:Maya blander'),
(59, 67, 'A', 'A', 'A', 'A', 'A', 'Algoritmabellman\r\nAlgoritma djikstra\r\nFord', 'Merawat linggkungan sekolah\r\nMenyelesaikan masalah dengan damai\r\nMencari solusi', 'Untuk memberikan suatu keputusan', 'Agar manusia berfikir dengan secara maksimal', '2D:-adobe flash\r\n   -anime studio\r\n   -synfik syudio\r\n   -scrath.   \r\n\r\n3D:-blender\r\n   -3d studio may\r\n   -macromedia director\r\n   -adobe after effect');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waktu`
--

CREATE TABLE `tbl_waktu` (
  `id` int(10) NOT NULL,
  `id_peserta` int(10) NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_peserta` (`nama_peserta`);

--
-- Indexes for table `tbl_referensi`
--
ALTER TABLE `tbl_referensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id`,`id_peserta`),
  ADD KEY `id_peserta` (`id_peserta`);

--
-- Indexes for table `tbl_waktu`
--
ALTER TABLE `tbl_waktu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_peserta` (`id_peserta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_waktu`
--
ALTER TABLE `tbl_waktu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD CONSTRAINT `tbl_soal_ibfk_1` FOREIGN KEY (`id_peserta`) REFERENCES `tbl_peserta` (`id`);

--
-- Constraints for table `tbl_waktu`
--
ALTER TABLE `tbl_waktu`
  ADD CONSTRAINT `tbl_waktu_ibfk_1` FOREIGN KEY (`id_peserta`) REFERENCES `tbl_peserta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
