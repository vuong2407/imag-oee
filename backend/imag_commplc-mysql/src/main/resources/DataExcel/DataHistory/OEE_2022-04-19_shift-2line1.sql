-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: oee-db
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `line1`
--

DROP TABLE IF EXISTS `line1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `line1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `available` varchar(255) DEFAULT NULL,
  `counterout` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `downtime` varchar(255) DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `oee` varchar(255) DEFAULT NULL,
  `performance` varchar(255) DEFAULT NULL,
  `quanlity` varchar(255) DEFAULT NULL,
  `runtime` varchar(255) DEFAULT NULL,
  `shift` varchar(255) DEFAULT NULL,
  `speed` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line1`
--

LOCK TABLES `line1` WRITE;
/*!40000 ALTER TABLE `line1` DISABLE KEYS */;
INSERT INTO `line1` VALUES (1,NULL,'738','2022-04-19',NULL,'1',NULL,NULL,NULL,'615','shift 2','0','2','4000','16:43:49.666'),(2,NULL,'738','2022-04-19',NULL,'1',NULL,NULL,NULL,'615','shift 2','0','1','4000','16:43:51.699'),(3,NULL,'738','2022-04-19',NULL,'1',NULL,NULL,NULL,'615','shift 2','0','1','4000','16:43:52.781'),(4,NULL,'739','2022-04-19',NULL,'1',NULL,NULL,NULL,'616','shift 2','0','1','4000','16:43:53.861'),(5,NULL,'740','2022-04-19',NULL,'1',NULL,NULL,NULL,'617','shift 2','0','1','4000','16:43:55.018'),(6,NULL,'741','2022-04-19',NULL,'1',NULL,NULL,NULL,'617','shift 2','0','1','4000','16:43:56.131'),(7,NULL,'741','2022-04-19',NULL,'1',NULL,NULL,NULL,'618','shift 2','0','1','4000','16:43:57.190'),(8,NULL,'742','2022-04-19',NULL,'1',NULL,NULL,NULL,'618','shift 2','0','1','4000','16:43:58.267');
/*!40000 ALTER TABLE `line1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 16:43:59
