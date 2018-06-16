CREATE DATABASE  IF NOT EXISTS `mine` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mine`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: mine
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (18,'Master Account',NULL),(19,'Empire Auto',18),(20,'Empire Wisconsin ',19),(21,'Empire Illinois',19),(22,'Empire Michigan',19),(23,'Chicago Area Empiricans',21),(24,'Naperville Local Loyal Subjects',23),(25,'Green Bay Area Empiricans',20),(26,'Milwaukee Metro Empricians',20),(27,'Greenfield Loyal Subjects',26),(28,'New Berlin Loyal Subjects',26),(29,'Brown Deer Loyal Subjects',26),(30,'Bay View Loyal Subjects',26);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_nested`
--

DROP TABLE IF EXISTS `accounts_nested`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_nested` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_nested`
--

LOCK TABLES `accounts_nested` WRITE;
/*!40000 ALTER TABLE `accounts_nested` DISABLE KEYS */;
INSERT INTO `accounts_nested` VALUES (1,'Master Account',1,26),(2,'Empire Auto',2,25),(3,'Empire Wisconsin ',3,16),(4,'Empire Illinois',19,24),(5,'Empire Michigan',17,18),(6,'Chicago Area Empiricans',20,23),(7,'Naperville Local Loyal Subjects',21,22),(8,'Green Bay Area Empiricans',4,5),(9,'Milwaukee Metro Empricians',6,15),(10,'Greenfield Loyal Subjects',7,8),(11,'New Berlin Loyal Subjects',9,10),(12,'Brown Deer Loyal Subjects',11,12),(13,'Bay View Loyal Subjects',13,14);
/*!40000 ALTER TABLE `accounts_nested` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (1,NULL,'Homer Simpson',40),(2,1,'Bart Simpson',12),(3,1,'Maggie Simpson',1),(4,1,'Lisa Simpson',10),(5,NULL,'Kitty Forman',35),(6,5,'Eric Forman',16),(7,NULL,'Awe Schitt',30),(8,7,'Jack Schitt',20),(9,7,'Deep Schitt',10),(10,7,'Holy Schitt',5),(11,7,'Bull Schitt',3),(12,7,'Dawg Schitt',2),(13,7,'Byrd Schitt',10);
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-15 19:38:07
