-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: db_bioskop2
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `id_film` varchar(100) NOT NULL,
  `judul_film` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `produser` text NOT NULL,
  `sutradara` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `produksi` varchar(100) NOT NULL,
  `casts` text NOT NULL,
  `poster` text NOT NULL,
  `sinopsis` text,
  `icon` text,
  `durasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES ('FILM01','IP MAN 4: The Finale','Action, Biography, Drama','Raymond Wong, Wilson Yip, Donnie Yen','Wilson Yip','Hiroshi Fukazawa, Edmond Wong','Bullet Films, Mandarin Motion Pictures, Shanghai B','Donnie Yen, Scott Adkins, Kwok-Kwan Chan, Chris Collins, Vanness Wu, Jim Liu, Kent Cheng, Nicola Stuart-Hill','https://media.21cineplex.com/webcontent/gallery/pictures/157657443570473_287x421.jpg','Ip Man (Donnie Yen) datang ke Amerika Serikat untuk membantu muridnya, Bruce Lee (Kwok-Kwan Chan) yang mendapat diskriminasi rasial karena membuka sekolah seni bela diri Wing Chun di negeri Paman Sam tersebut. Selain itu ia juga berusaha mencari sekolah untuk anaknya.','icon/d17.png','104 Minutes'),('FILM02','Habibie & Ainun 3','Drama','Manoj Punjabi','Hanung Bramantyo','Ifan Ismail','MD Pictures','Reza Rahadian, Maudy Ayunda, Jefri Nichol, Aghniny Haque, Rebecca Klopper, Eric Febrian, Teuku Ryzki, Jennifer Coppen, Kevin Ardilova, Lukman Sardi, Marcella Zalianty, Angga Yunanda','https://media.21cineplex.com/webcontent/gallery/pictures/157466395513352_287x421.jpg','Kisah Ainun (Maudy Ayunda) sebagaimana remaja di usianya ,punya kisah kasih yang cukup unik, menggelitik dan menarik.Saat di SMA, Ainun dikenal sebagai sosok cerdas yang menjadi pujaan di sekolahnya dan menjadi incaran banyak siswa laki-laki, termasuk Habibie. Hubungan mereka bermula dari sebuah pertemanan. Di bangku kuliah Ainun, Sebagai mahasiswi kedokteran menjadi sosok yang popular di lingkungan kampusnya dan menjadi sosok dambaan setiap pria.Ahmad (Jefri Nichols), Pria tampan yang berasal dari keluarga terpandang dan kawan sekampus Ainun adalah pria yang akhirnya ia berani menyatakan cintanya kepada Ainun. Lantas apa yang membuat BJ Habibie menjadi pelabuhan terakhir perjalanan cinta Ainun. Habibie Ainun 3, Terinspirasi dari masa muda almarhumah Hasri Ainun Besari Habibie dan kenangan BJ Habibie atas belahan jiwanya.','icon/r13.png','121 Minutes'),('FILM03','IMPERFECT','Drama, Comedy','Chand Parwez Servia, Fiaz Servia','Ernest Prakasa','Ernest Prakasa, Meira Anastasia','Starvision','Jessica Mila, Reza Rahadian, Yasmin Napper, Karina Suwandi, Shareefa Daanish, Dion Wiyoko, Boy William, Clara Bernadeth, Dewi Irawan, Ernest Prakasa, Karina Nadila, Devina Aureel','https://web3.21cineplex.com/movie-images/09IMPT.jpg','Bagi RARA (Jessica Mila), terlahir gemuk dan berkulit gelap adalah kutukan. Apalagi bila ia melihat LULU (Yasmin Napper), sang adik yang persis ibu mereka DEBBY (Karina Suwandi), seorang mantan peragawati di tahun 90-an. Untung ada DIKA (Reza Rahadian), kekasih yang mencintai Rara apa adanya.Suatu hari, muncul peluang bagi Rara untuk naik jabatan di kantor, tapi bos Rara yakni KELVIN (Dion Wiyoko) mengharuskan Rara mengubah total penampilannya. Apakah Rara akan menjawab tantangan ini?','icon/r13.png','113 Minutes');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal` (
  `id_jadwal` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal`
--

LOCK TABLES `jadwal` WRITE;
/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
INSERT INTO `jadwal` VALUES ('JDW001','2020-01-03','10:00:00','12:00:00'),('JDW002','2020-01-03','12:30:00','14:30:00'),('JDW003','2020-01-03','15:00:00','17:00:00'),('JDW004','2020-01-03','11:00:00','13:00:00'),('JDW005','2020-01-03','13:30:00','15:30:00'),('JDW006','2020-01-03','16:00:00','18:00:00');
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursi`
--

DROP TABLE IF EXISTS `kursi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursi` (
  `id_kursi` varchar(100) NOT NULL,
  `kd_kursi` varchar(100) DEFAULT NULL,
  `id_studio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kursi`),
  KEY `kursi_fk` (`id_studio`),
  CONSTRAINT `kursi_fk` FOREIGN KEY (`id_studio`) REFERENCES `studio` (`id_studio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursi`
--

LOCK TABLES `kursi` WRITE;
/*!40000 ALTER TABLE `kursi` DISABLE KEYS */;
INSERT INTO `kursi` VALUES ('KRS01','A1','STD01'),('KRS02','A2','STD01'),('KRS03','A3','STD01'),('KRS04','A4','STD01'),('KRS05','A5','STD01'),('KRS06','A1','STD02'),('KRS07','A2','STD02'),('KRS08','A3','STD02'),('KRS09','A4','STD02'),('KRS10','A5','STD02'),('KRS11','A1','STD03'),('KRS12','A2','STD03'),('KRS13','A3','STD03'),('KRS14','A4','STD03'),('KRS15','A5','STD03');
/*!40000 ALTER TABLE `kursi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemesan`
--

DROP TABLE IF EXISTS `pemesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemesan` (
  `id_pemesan` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pemesan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesan`
--

LOCK TABLES `pemesan` WRITE;
/*!40000 ALTER TABLE `pemesan` DISABLE KEYS */;
INSERT INTO `pemesan` VALUES ('P001','nur hadli','nurhadli30@gmail.com','jln setiabudi karya 1','laki-laki','081316241572','admin'),('P002','hadli','hadli30@gmail.com','jln setiabudi karya1','laki-laki','081213141516','admin'),('P003','fida','fida@gmail.com','jln setiabudi karya 2','perempuan','081213141517','admin');
/*!40000 ALTER TABLE `pemesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penayangan`
--

DROP TABLE IF EXISTS `penayangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penayangan` (
  `id_penayangan` varchar(100) CHARACTER SET armscii8 NOT NULL,
  `id_studio` varchar(100) CHARACTER SET armscii8 NOT NULL,
  `id_jadwal` varchar(100) CHARACTER SET armscii8 NOT NULL,
  PRIMARY KEY (`id_penayangan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penayangan`
--

LOCK TABLES `penayangan` WRITE;
/*!40000 ALTER TABLE `penayangan` DISABLE KEYS */;
INSERT INTO `penayangan` VALUES ('PNY01','STD01','JDW001'),('PNY02','STD01','JDW002'),('PNY03','STD01','JDW003'),('PNY04','STD02','JDW004'),('PNY05','STD02','JDW005'),('PNY06','STD02','JDW005'),('PNY07','STD03','JDW001'),('PNY08','STD03','JDW002'),('PNY09','STD03','JDW003');
/*!40000 ALTER TABLE `penayangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studio` (
  `id_studio` varchar(100) NOT NULL,
  `nama_studio` varchar(100) NOT NULL,
  `jumlah_kursi` int(100) NOT NULL,
  `id_film` varchar(100) NOT NULL,
  PRIMARY KEY (`id_studio`),
  KEY `studio_fk` (`id_film`),
  CONSTRAINT `studio_fk` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio`
--

LOCK TABLES `studio` WRITE;
/*!40000 ALTER TABLE `studio` DISABLE KEYS */;
INSERT INTO `studio` VALUES ('STD01','Theater 1',5,'FILM01'),('STD02','Theater 2',5,'FILM02'),('STD03','Theater 3',5,'FILM03');
/*!40000 ALTER TABLE `studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiket`
--

DROP TABLE IF EXISTS `tiket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiket` (
  `id_tiket` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `id_kursi` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `harga` int(11) NOT NULL,
  `id_pemesanan` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `id_penayangan` varchar(100) COLLATE utf8mb4_icelandic_ci NOT NULL,
  PRIMARY KEY (`id_tiket`),
  UNIQUE KEY `tiket_un` (`id_kursi`,`id_penayangan`),
  KEY `tiket_fk` (`id_pemesanan`),
  CONSTRAINT `tiket_fk` FOREIGN KEY (`id_kursi`) REFERENCES `kursi` (`id_kursi`),
  CONSTRAINT `tiket_fk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `tr_pemesanan` (`id_pemesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_icelandic_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiket`
--

LOCK TABLES `tiket` WRITE;
/*!40000 ALTER TABLE `tiket` DISABLE KEYS */;
INSERT INTO `tiket` VALUES ('TKT001','KRS01',30000,'TR001','PNY01'),('TKT002','KRS02',30000,'TR001','PNY01'),('TKT003','KRS03',30000,'TR001','PNY01'),('TKT004','KRS04',30000,'TR001','PNY01'),('TKT005','KRS01',30000,'TR002','PNY02'),('TKT006','KRS02',30000,'TR002','PNY02'),('TKT007','KRS03',30000,'TR002','PNY02'),('TKT008','KRS03',30000,'TR003','PNY04'),('TKT009','KRS04',30000,'TR003','PNY04'),('TKT010','KRS05',0,'TR004','PNY03'),('TKT011','KRS04',0,'TR007','PNY03'),('TKT012','KRS02',0,'TR010','PNY03'),('TKT013','KRS03',0,'TR012','PNY03'),('TKT014','KRS04',0,'TR013','PNY02'),('TKT015','KRS05',0,'TR013','PNY02'),('TKT016','KRS05',0,'TR018','PNY01'),('TKT017','KRS02',0,'TR019','PNY09');
/*!40000 ALTER TABLE `tiket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_pemesanan`
--

DROP TABLE IF EXISTS `tr_pemesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_pemesanan` (
  `id_pemesanan` varchar(100) NOT NULL,
  `total_harga` int(100) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `id_pemesan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pemesanan`),
  KEY `tr_pemesanan_fk` (`id_pemesan`),
  CONSTRAINT `tr_pemesanan_fk` FOREIGN KEY (`id_pemesan`) REFERENCES `pemesan` (`id_pemesan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_pemesanan`
--

LOCK TABLES `tr_pemesanan` WRITE;
/*!40000 ALTER TABLE `tr_pemesanan` DISABLE KEYS */;
INSERT INTO `tr_pemesanan` VALUES ('TR001',120000,4,'2020-01-03 12:00:00','P001'),('TR002',60000,2,'2020-01-03 12:00:00','P002'),('TR003',60000,2,'2020-01-03 12:00:00','P003'),('TR004',0,1,'2020-01-06 04:53:48','P001'),('TR005',0,3,'2020-01-06 04:54:30','P001'),('TR006',0,0,'2020-01-06 04:55:12','P001'),('TR007',0,1,'2020-01-06 04:55:14','P001'),('TR008',0,2,'2020-01-06 04:55:27','P001'),('TR009',0,2,'2020-01-06 04:57:23','P001'),('TR010',0,2,'2020-01-06 04:58:27','P001'),('TR011',0,2,'2020-01-06 05:00:53','P001'),('TR012',0,1,'2020-01-06 05:01:04','P001'),('TR013',0,2,'2020-01-06 05:01:53','P001'),('TR014',0,0,'2020-01-06 16:07:06','P001'),('TR015',0,0,'2020-01-06 16:07:11','P001'),('TR016',0,0,'2020-01-06 16:07:19','P001'),('TR017',0,0,'2020-01-06 16:07:20','P001'),('TR018',0,1,'2020-01-06 16:07:29','P001'),('TR019',0,1,'2020-01-06 16:14:55','P001');
/*!40000 ALTER TABLE `tr_pemesanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_bioskop2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-06 16:46:56
