-- MySQL dump 10.13  Distrib 5.7.20, for Linux (i686)
--
-- Host: localhost    Database: db_ukk
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `barang_sementaras`
--

DROP TABLE IF EXISTS `barang_sementaras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_sementaras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_sementaras`
--

LOCK TABLES `barang_sementaras` WRITE;
/*!40000 ALTER TABLE `barang_sementaras` DISABLE KEYS */;
INSERT INTO `barang_sementaras` VALUES (25,'BRG001',1,1,1,'2018-02-20 23:25:01','2018-02-21 01:04:10'),(26,'BRG002',1,1,1,'2018-02-20 23:27:50','2018-02-20 23:39:36'),(27,'BRG001',1,2,1,'2018-02-21 00:03:05','2018-02-21 00:08:55'),(28,'BRG002',1,2,1,'2018-02-21 00:03:08','2018-02-21 00:08:55'),(31,'BRG001',1,2,1,'2018-02-21 00:10:15','2018-02-21 00:12:28'),(32,'BRG002',1,2,1,'2018-02-21 00:10:17','2018-02-21 00:12:28'),(33,'BRG001',1,2,1,'2018-02-21 00:16:15','2018-02-21 00:16:32'),(34,'BRG002',1,2,1,'2018-02-21 00:16:17','2018-02-21 00:16:33'),(36,'BRG002',1,3,1,'2018-02-21 00:32:19','2018-02-21 00:38:01'),(37,'BRG001',1,1,1,'2018-02-21 01:02:59','2018-02-21 01:04:59'),(38,'BRG001',1,1,1,'2018-02-21 01:06:08','2018-02-21 01:06:13'),(39,'BRG002',1,1,1,'2018-02-21 01:06:25','2018-02-21 01:06:30'),(40,'BRG002',1,1,1,'2018-02-21 01:07:08','2018-02-21 01:07:13'),(41,'BRG002',1,1,1,'2018-02-21 01:08:08','2018-02-21 01:08:16'),(42,'BRG002',1,1,1,'2018-02-21 01:08:45','2018-02-21 01:08:50'),(43,'BRG002',1,1,1,'2018-02-21 01:10:42','2018-02-21 01:10:48'),(44,'BRG002',1,1,1,'2018-02-21 01:11:29','2018-02-21 01:11:33'),(45,'BRG002',1,1,1,'2018-02-21 01:15:59','2018-02-21 01:16:11'),(46,'BRG001',1,1,1,'2018-02-21 01:16:02','2018-02-21 01:17:02'),(47,'BRG001',1,1,1,'2018-02-21 01:22:07','2018-02-21 01:22:12'),(48,'BRG002',1,1,1,'2018-02-21 01:22:27','2018-02-21 01:22:28'),(49,'BRG002',1,1,1,'2018-02-21 01:25:58','2018-02-21 01:26:02'),(50,'BRG002',1,1,1,'2018-02-21 01:27:12','2018-02-21 01:27:45'),(51,'BRG002',1,1,1,'2018-02-21 01:28:32','2018-02-21 01:28:35'),(52,'BRG002',1,1,1,'2018-02-21 01:28:48','2018-02-21 01:28:51'),(53,'BRG002',1,1,1,'2018-02-21 01:29:37','2018-02-21 01:29:41'),(54,'BRG002',1,1,1,'2018-02-21 01:30:15','2018-02-21 01:30:17'),(55,'BRG002',1,1,1,'2018-02-21 01:30:28','2018-02-21 01:30:30'),(56,'BRG002',1,1,1,'2018-02-21 01:30:50','2018-02-21 01:30:53'),(57,'BRG002',1,1,1,'2018-02-21 01:31:16','2018-02-21 01:31:19'),(58,'BRG002',1,1,1,'2018-02-21 01:31:59','2018-02-21 01:32:02'),(59,'BRG002',1,1,1,'2018-02-21 01:32:39','2018-02-21 01:32:44'),(60,'BRG002',1,1,1,'2018-02-21 01:32:56','2018-02-21 01:32:58'),(61,'BRG002',1,1,1,'2018-02-21 01:33:18','2018-02-21 01:33:23'),(62,'BRG002',1,1,1,'2018-02-21 01:33:38','2018-02-21 01:33:40'),(63,'BRG002',1,1,1,'2018-02-21 01:34:06','2018-02-21 01:34:08'),(64,'BRG002',1,1,1,'2018-02-21 01:34:25','2018-02-21 01:34:28'),(65,'BRG002',1,1,1,'2018-02-21 01:34:47','2018-02-21 01:34:48'),(66,'BRG002',1,1,1,'2018-02-21 01:35:07','2018-02-21 01:35:09'),(67,'BRG002',1,1,1,'2018-02-21 01:35:48','2018-02-21 01:36:00'),(68,'BRG002',1,1,1,'2018-02-21 01:36:23','2018-02-21 01:36:26'),(69,'BRG002',1,1,1,'2018-02-21 01:36:52','2018-02-21 01:36:54'),(70,'BRG002',1,1,1,'2018-02-21 01:37:20','2018-02-21 01:37:23'),(71,'BRG002',1,1,1,'2018-02-21 01:37:42','2018-02-21 01:37:45'),(72,'BRG002',1,1,1,'2018-02-21 01:38:20','2018-02-21 01:38:27'),(73,'BRG002',1,1,1,'2018-02-21 01:38:40','2018-02-21 01:38:49'),(74,'BRG001',1,1,1,'2018-02-21 01:38:45','2018-02-21 01:38:49'),(75,'BRG002',1,1,1,'2018-02-21 01:39:28','2018-02-21 01:39:30'),(76,'BRG002',1,1,1,'2018-02-21 01:39:46','2018-02-21 01:39:53'),(77,'BRG001',1,1,1,'2018-02-21 01:39:48','2018-02-21 01:39:54'),(78,'BRG002',1,1,1,'2018-02-21 01:40:30','2018-02-21 01:40:35'),(79,'BRG001',1,1,1,'2018-02-21 01:40:32','2018-02-21 01:40:35'),(80,'BRG002',1,1,1,'2018-02-21 01:41:09','2018-02-21 01:41:15'),(81,'BRG001',1,1,1,'2018-02-21 01:41:11','2018-02-21 01:41:15'),(82,'BRG002',1,1,1,'2018-02-21 01:41:57','2018-02-21 01:42:08'),(83,'BRG001',1,1,1,'2018-02-21 01:42:01','2018-02-21 01:42:08'),(84,'BRG001',1,1,1,'2018-02-21 01:53:53','2018-02-21 01:54:11'),(85,'BRG002',1,1,1,'2018-02-21 01:54:30','2018-02-21 01:54:35'),(86,'BRG002',1,1,1,'2018-02-21 01:55:03','2018-02-21 01:55:07'),(87,'BRG002',1,1,1,'2018-02-21 01:56:26','2018-02-21 01:56:32'),(88,'BRG001',1,1,1,'2018-02-21 02:00:44','2018-02-21 02:01:01'),(89,'BRG002',1,1,1,'2018-02-21 02:00:46','2018-02-21 02:01:01'),(90,'BRG002',1,2,1,'2018-02-21 02:03:24','2018-02-21 02:03:34'),(91,'BRG002',1,2,1,'2018-02-21 02:03:52','2018-02-21 02:04:34'),(92,'BRG002',1,2,1,'2018-02-21 02:05:58','2018-02-21 02:06:07'),(93,'BRG002',1,2,1,'2018-02-21 02:07:21','2018-02-21 02:08:09'),(94,'BRG001',1,2,1,'2018-02-21 02:07:24','2018-02-21 02:08:10'),(95,'BRG001',1,1,1,'2018-02-21 02:13:19','2018-02-21 02:13:26'),(96,'BRG002',1,1,1,'2018-02-21 02:13:23','2018-02-21 02:13:26'),(97,'BRG002',1,2,1,'2018-02-21 02:13:45','2018-02-21 02:13:54'),(98,'BRG001',1,2,1,'2018-02-21 02:27:06','2018-02-21 02:27:16'),(99,'BRG002',1,2,1,'2018-02-21 02:27:10','2018-02-21 02:27:17'),(100,'BRG003',1,1,1,'2018-02-21 02:34:42','2018-02-21 02:34:45'),(101,'BRG001',1,3,1,'2018-02-21 06:44:28','2018-02-21 06:44:39'),(102,'BRG003',1,3,1,'2018-02-21 06:44:32','2018-02-21 06:44:39'),(103,'BRG002',1,3,1,'2018-02-21 07:01:44','2018-02-21 07:01:48'),(104,'BRG002',1,3,1,'2018-02-21 07:02:09','2018-02-21 07:02:39'),(105,'BRG002',1,3,1,'2018-02-21 07:03:27','2018-02-21 07:03:36'),(106,'BRG003',1,3,1,'2018-02-21 07:06:12','2018-02-21 07:06:20'),(107,'BRG001',1,3,1,'2018-02-21 07:56:24','2018-02-21 07:56:39'),(108,'BRG003',1,3,1,'2018-02-21 07:56:29','2018-02-21 07:57:29'),(111,'BRG003',1,3,1,'2018-02-21 07:58:44','2018-02-21 07:59:01'),(112,'BRG002',1,3,1,'2018-02-21 07:58:49','2018-02-21 08:01:46'),(113,'BRG001',1,3,1,'2018-02-21 08:01:31','2018-02-21 08:07:04'),(114,'BRG003',1,3,1,'2018-02-21 08:05:26','2018-02-21 08:07:05'),(115,'BRG003',1,3,1,'2018-02-21 08:15:43','2018-02-21 08:15:52'),(116,'BRG002',1,3,1,'2018-02-21 08:15:47','2018-02-21 08:15:52'),(117,'BRG002',1,3,1,'2018-02-21 08:40:01','2018-02-21 08:40:20'),(118,'BRG003',1,3,1,'2018-02-21 08:40:05','2018-02-21 08:40:21'),(119,'BRG001',0,1,2,'2018-02-21 17:50:14','2018-02-21 17:50:14'),(120,'BRG001',1,3,2,'2018-02-21 17:56:13','2018-02-21 17:56:27'),(121,'BRG003',1,3,2,'2018-02-21 17:56:17','2018-02-21 17:56:28');
/*!40000 ALTER TABLE `barang_sementaras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barangs`
--

DROP TABLE IF EXISTS `barangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barangs` (
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesifikasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` int(11) NOT NULL,
  `jml_barang` int(11) NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barangs`
--

LOCK TABLES `barangs` WRITE;
/*!40000 ALTER TABLE `barangs` DISABLE KEYS */;
INSERT INTO `barangs` VALUES ('BRG001','Buku LKS','baru',NULL,'baru',1,-49,'baru','Alokasi Dana Pemerintah','2018-02-20 19:45:51','2018-02-21 17:56:28'),('BRG002','Seragam','lengkap',NULL,'lengkap',2,29,'baru','Alokasi Dana Pemerintah','2018-02-20 21:36:59','2018-02-21 08:40:56'),('BRG003','AC','baru',NULL,'baru',2,-40,'Baru','Alokasi Dana Pemerintah','2018-02-21 02:34:10','2018-02-21 18:17:05'),('BRG004','Android Untuk Siswa','baru','1519263236.jpeg','baru',2,20,'baru','Alokasi Dana Pemerintah','2018-02-21 18:33:56','2018-02-21 18:33:56'),('BRG005','HP Baru','baru','1519263336.jpg','baru',2,20,'Baru','Alokasi Dana Pemerintah','2018-02-21 18:35:36','2018-02-21 18:41:07');
/*!40000 ALTER TABLE `barangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoris`
--

DROP TABLE IF EXISTS `kategoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoris` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoris`
--

LOCK TABLES `kategoris` WRITE;
/*!40000 ALTER TABLE `kategoris` DISABLE KEYS */;
INSERT INTO `kategoris` VALUES (1,'alat tulis','2018-02-20 19:10:47','2018-02-20 19:10:47'),(2,'Perkakas','2018-02-20 19:39:55','2018-02-20 19:39:55'),(3,'Seragam','2018-02-20 19:52:13','2018-02-20 19:52:13'),(4,'a','2018-02-20 19:52:19','2018-02-20 19:52:19');
/*!40000 ALTER TABLE `kategoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keluar_barangs`
--

DROP TABLE IF EXISTS `keluar_barangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keluar_barangs` (
  `id_barang_keluar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `penerima` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_barang_keluar` int(11) NOT NULL,
  `keperluan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keluar_barangs`
--

LOCK TABLES `keluar_barangs` WRITE;
/*!40000 ALTER TABLE `keluar_barangs` DISABLE KEYS */;
INSERT INTO `keluar_barangs` VALUES ('TRK001','BRG002','2018-02-21','Agus',1,'','2018-02-21 02:13:54','2018-02-21 02:13:54');
/*!40000 ALTER TABLE `keluar_barangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masuk_barangs`
--

DROP TABLE IF EXISTS `masuk_barangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masuk_barangs` (
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jml_masuk` int(11) NOT NULL,
  `kode_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masuk_barangs`
--

LOCK TABLES `masuk_barangs` WRITE;
/*!40000 ALTER TABLE `masuk_barangs` DISABLE KEYS */;
INSERT INTO `masuk_barangs` VALUES ('TRM001','BRG001','2018-02-21',2,'SUP001','2018-02-21 02:13:26','2018-02-21 02:13:26'),('TRM001','BRG002','2018-02-21',1,'SUP001','2018-02-21 02:13:26','2018-02-21 02:13:26'),('TRM002','BRG003','2018-02-21',1,'SUP001','2018-02-21 02:34:45','2018-02-21 02:34:45'),('TRM004','BRG001','2018-02-24',10,'SUP001',NULL,NULL);
/*!40000 ALTER TABLE `masuk_barangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_02_21_014222_create_suppliers_table',1),(4,'2018_02_21_014242_create_masuk_barangs_table',1),(5,'2018_02_21_014256_create_barangs_table',1),(6,'2018_02_21_014311_create_pinjam_barangs_table',1),(7,'2018_02_21_014336_create_stoks_table',1),(8,'2018_02_21_014348_create_keluar_barangs_table',1),(9,'2018_02_21_020106_create_kategoris_table',1),(11,'2018_02_21_033513_create_barang_sementaras_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinjam_barangs`
--

DROP TABLE IF EXISTS `pinjam_barangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinjam_barangs` (
  `no_pinjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_pinjam` int(11) NOT NULL,
  `peminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kembali` int(11) NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `jml_kembali` int(11) DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinjam_barangs`
--

LOCK TABLES `pinjam_barangs` WRITE;
/*!40000 ALTER TABLE `pinjam_barangs` DISABLE KEYS */;
INSERT INTO `pinjam_barangs` VALUES ('PIN001','2018-02-21','BRG001',1,'Ahmad Budi',0,NULL,1,'','2018-02-21 06:44:38','2018-02-21 07:44:14'),('PIN001','2018-02-21','BRG003',2,'Ahmad Budi',0,NULL,NULL,'','2018-02-21 06:44:39','2018-02-21 07:40:38'),('PIN002','2018-02-21','BRG002',1,'Ahmad',0,NULL,1,'','2018-02-21 07:01:48','2018-02-21 07:45:37'),('PIN003','2018-02-21','BRG002',2,'Ahmad',2,NULL,NULL,'','2018-02-21 07:02:38','2018-02-21 07:55:13'),('PIN004','2018-02-21','BRG002',2,'Ahmad',1,NULL,NULL,'','2018-02-21 07:03:36','2018-02-21 07:03:36'),('PIN005','2018-02-21','BRG001',15,'Budi',1,NULL,NULL,'','2018-02-21 07:56:39','2018-02-21 07:56:39'),('PIN006','2018-02-21','BRG003',19,'Ahmad',1,NULL,NULL,'','2018-02-21 07:57:29','2018-02-21 07:57:29'),('PIN007','2018-02-21','BRG003',10,'Ahmad',1,NULL,NULL,'','2018-02-21 07:59:01','2018-02-21 07:59:01'),('PIN008','2018-02-21','BRG002',12,'as',1,NULL,NULL,'','2018-02-21 08:01:46','2018-02-21 08:01:46'),('PIN009','2018-02-21','BRG001',12,'asas',2,NULL,1,'','2018-02-21 08:07:04','2018-02-21 08:08:14'),('PIN009','2018-02-21','BRG003',2,'asas',0,NULL,2,'','2018-02-21 08:07:05','2018-02-21 08:08:15'),('PIN0010','2018-02-21','BRG003',1,'Budi',0,NULL,1,'','2018-02-21 08:15:52','2018-02-21 08:19:29'),('PIN0010','2018-02-21','BRG002',2,'Budi',1,NULL,1,'','2018-02-21 08:15:52','2018-02-21 08:31:08'),('PIN0011','2018-02-21','BRG002',1,'Harto',0,NULL,1,'','2018-02-21 08:40:20','2018-02-21 08:40:56'),('PIN0011','2018-02-21','BRG003',1,'Harto',1,NULL,NULL,'','2018-02-21 08:40:21','2018-02-21 08:40:21'),('PIN0012','2018-02-22','BRG001',1,'Irfan',1,NULL,NULL,'','2018-02-21 17:56:26','2018-02-21 17:56:26'),('PIN0012','2018-02-22','BRG003',2,'Irfan',1,NULL,2,'','2018-02-21 17:56:28','2018-02-21 18:17:05');
/*!40000 ALTER TABLE `pinjam_barangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stoks`
--

DROP TABLE IF EXISTS `stoks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stoks` (
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_barang_masuk` int(11) DEFAULT '0',
  `jml_barang_keluar` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stoks`
--

LOCK TABLES `stoks` WRITE;
/*!40000 ALTER TABLE `stoks` DISABLE KEYS */;
INSERT INTO `stoks` VALUES ('BRG001',32,29,3,'','2018-02-21 02:13:26','2018-02-21 17:56:27'),('BRG002',25,22,3,'','2018-02-21 02:13:26','2018-02-21 08:40:56'),('BRG004',20,NULL,20,'','2018-02-21 02:31:37','2018-02-21 02:31:37'),('BRG003',68,36,32,'','2018-02-21 02:34:11','2018-02-21 18:17:04'),('BRG004',20,0,20,'','2018-02-21 18:33:56','2018-02-21 18:33:56'),('BRG005',20,0,20,'','2018-02-21 18:35:36','2018-02-21 18:35:36');
/*!40000 ALTER TABLE `stoks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('SUP001','PT Griya Merdeka','jalans','081826124','Semarang','2018-02-20 23:19:57','2018-02-21 00:15:29');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@admin.com','$2y$10$/3zsoFSgoxS/34XfcAXxX.b2jd4Ujf9j/f3uFCkLp.YOvDR0W9LFa',1,'Epxgt1sqBxD5u76ygHbLAEDTbRURT0a950ok0qVJPJCt5gPtPiRbGZiqmJ93','2018-02-20 19:10:30','2018-02-20 19:10:30'),(2,'petugas','petugas@mail.com','$2y$10$g0r/HggmIMouVbElTwo3Ku9aXOxBfIsD9VRRoultLWc.F8N74Qyny',2,'EN65PwPgT5T2sNHLKEz2gGmtMGhIMUCDTeZt4pjFbnf0c1bQJT67xBDvDTAW','2018-02-21 17:33:48','2018-02-21 17:33:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-22  9:23:41
