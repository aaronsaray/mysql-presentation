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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Comedy'),(2,'Drama'),(3,'Horror'),(4,'Sci-fi'),(5,'Action'),(6,'Adventure'),(7,'Thriller'),(8,'Romance');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Batman','414-555-1212'),(2,'Super Woman','620-555-1111'),(3,'The Flash','920-555-1122'),(4,'Shakira','555-555-9999');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers2`
--

DROP TABLE IF EXISTS `customers2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers2` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers2`
--

LOCK TABLES `customers2` WRITE;
/*!40000 ALTER TABLE `customers2` DISABLE KEYS */;
INSERT INTO `customers2` VALUES (1,'Batman','414-555-1212'),(2,'Super Woman','620-555-1111'),(3,'The Flash','920-555-1122'),(4,'Shakira','555-555-9999');
/*!40000 ALTER TABLE `customers2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `year` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Marlonhaven, a Love Story',1983),(2,'Jenniefort, a Love Story',1971),(3,'West Francesland, a Love Story',2000),(4,'West Aureliemouth, a Love Story',1976),(5,'Krajcikmouth, a Love Story',1977),(6,'West Alicia, a Love Story',1972),(7,'North Kristoffermouth, a Love Story',2003),(8,'East Moisesborough, a Love Story',1990),(9,'O\'Connellfurt, a Love Story',2004),(10,'Boehmburgh, a Love Story',1993),(11,'Port Dorcasmouth, a Love Story',1977),(12,'West Americo, a Love Story',1984),(13,'West Matilde, a Love Story',1971),(14,'North Barrett, a Love Story',1991),(15,'Lake Timmothy, a Love Story',1994),(16,'Johnpaulshire, a Love Story',1980),(17,'Carmenview, a Love Story',2012),(18,'West Devenburgh, a Love Story',2003),(19,'Lake Myrtisfort, a Love Story',1977),(20,'East Marianna, a Love Story',1977),(21,'South Reyesport, a Love Story',1973),(22,'Port Faustinoport, a Love Story',2018),(23,'North Ahmedton, a Love Story',2001),(24,'Eltaview, a Love Story',1992),(25,'South Jordifurt, a Love Story',1981),(26,'North Alice, a Love Story',2010),(27,'Port Jordichester, a Love Story',1981),(28,'Bashirianfort, a Love Story',1997),(29,'West Concepcionfurt, a Love Story',1996),(30,'Dickensmouth, a Love Story',1997),(31,'Brownside, a Love Story',1970),(32,'Port Armani, a Love Story',2018),(33,'Nicklausfort, a Love Story',1973),(34,'Janachester, a Love Story',2004),(35,'North Edwardo, a Love Story',2010),(36,'Darionberg, a Love Story',2010),(37,'Auertown, a Love Story',1975),(38,'Amberberg, a Love Story',1986),(39,'West Gustside, a Love Story',2008),(40,'Mannfort, a Love Story',2004),(41,'South Roscoe, a Love Story',2000),(42,'New Tristonborough, a Love Story',1981),(43,'South Citlalliburgh, a Love Story',1978),(44,'New Sammie, a Love Story',2004),(45,'Darianborough, a Love Story',1975),(46,'New Tavares, a Love Story',2001),(47,'Mayachester, a Love Story',1998),(48,'Thompsonshire, a Love Story',1987),(49,'Lake Deventon, a Love Story',1991),(50,'Windlerstad, a Love Story',1974),(51,'Weimannland, a Love Story',2016),(52,'Hazlechester, a Love Story',1984),(53,'North Corbin, a Love Story',1985),(54,'Nestorside, a Love Story',2008),(55,'West Velvachester, a Love Story',2000),(56,'West Janae, a Love Story',2007),(57,'Murielview, a Love Story',2016),(58,'South Dillan, a Love Story',1999),(59,'South Else, a Love Story',2001),(60,'South Orin, a Love Story',1999),(61,'Port Dimitrichester, a Love Story',2005),(62,'South Osborneton, a Love Story',2005),(63,'North Milton, a Love Story',1989),(64,'East Bobbieburgh, a Love Story',1995),(65,'Oberbrunnermouth, a Love Story',1982),(66,'Port Efrenmouth, a Love Story',1988),(67,'Lockmanburgh, a Love Story',1982),(68,'South Jensen, a Love Story',1995),(69,'Reingerborough, a Love Story',2017),(70,'South Domenicaland, a Love Story',2017),(71,'New Jewellville, a Love Story',1971),(72,'Smithamland, a Love Story',1980),(73,'South Yvonne, a Love Story',2001),(74,'South Maximilliamouth, a Love Story',2011),(75,'North Dudleyberg, a Love Story',1981),(76,'Keatonside, a Love Story',1990),(77,'West Milo, a Love Story',1980),(78,'Feeneyhaven, a Love Story',1971),(79,'North Austinhaven, a Love Story',1977),(80,'Bogisichfort, a Love Story',2004),(81,'Emmiehaven, a Love Story',1985),(82,'Webertown, a Love Story',2007),(83,'Mosemouth, a Love Story',1996),(84,'Colemanside, a Love Story',1971),(85,'Port Lambert, a Love Story',1989),(86,'Port Jamison, a Love Story',2007),(87,'Lake Esther, a Love Story',1974),(88,'West Gilbert, a Love Story',1997),(89,'Daughertyport, a Love Story',1976),(90,'Wehnerview, a Love Story',2009),(91,'South Hardyshire, a Love Story',1992),(92,'Joanieside, a Love Story',1997),(93,'East Jules, a Love Story',1998),(94,'Lake Florence, a Love Story',2013),(95,'Port Sylvan, a Love Story',2005),(96,'Lake Johnnieview, a Love Story',1988),(97,'Hettingerburgh, a Love Story',1996),(98,'Armandland, a Love Story',1989),(99,'Helenastad, a Love Story',1992),(100,'O\'Harashire, a Love Story',2010);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_categories`
--

DROP TABLE IF EXISTS `movies_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_categories` (
  `movie_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  KEY `movie_idx` (`movie_id`),
  KEY `category_idx` (`category_id`),
  CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `movie` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_categories`
--

LOCK TABLES `movies_categories` WRITE;
/*!40000 ALTER TABLE `movies_categories` DISABLE KEYS */;
INSERT INTO `movies_categories` VALUES (9,7),(10,8),(54,3),(76,7),(47,2),(65,5),(78,3),(30,3),(55,2),(75,8),(88,5),(71,1),(1,1),(27,1),(58,8),(3,8),(96,2),(88,3),(31,7),(19,4),(54,1),(39,5),(32,2),(76,8),(50,4),(3,5),(5,3),(54,6),(64,5),(81,1),(38,4),(80,6),(27,5),(13,2),(95,3),(64,8),(46,2),(61,3),(98,7),(73,3),(37,5),(34,4),(48,4),(95,4),(56,8),(56,3),(1,2),(37,8),(54,6),(95,6),(65,1),(67,5),(18,6),(81,2),(21,7),(82,3),(47,1),(25,2),(6,7),(95,5),(22,3),(67,5),(61,7),(74,3),(92,8),(33,7),(89,5),(98,8),(99,7),(40,3),(37,2),(5,7),(78,8),(8,8),(95,5),(3,7),(61,1),(71,1),(49,6),(85,1),(71,5),(22,7),(35,7),(77,4),(15,1),(18,2),(31,2),(72,2),(56,4),(66,2),(88,4),(35,8),(61,7),(8,1),(25,1),(8,5),(63,7),(67,6),(42,5),(12,7),(47,4),(19,8),(8,8),(39,8),(2,2),(70,1),(17,4),(26,4),(30,8),(65,6),(8,1),(64,7),(91,8),(98,8),(76,2),(15,4),(57,6),(77,3),(30,1),(79,1),(94,3),(7,3),(37,7),(25,7),(6,6),(81,3),(15,6),(25,7),(65,7),(59,4),(2,8),(3,6),(25,2),(96,6),(45,1),(51,2),(23,4),(60,6),(97,8),(56,1),(86,3),(35,3),(74,7),(80,3),(90,7),(27,4),(22,5),(62,3),(30,5),(56,8),(55,3),(85,4),(49,4),(11,2),(20,2),(25,1),(1,4),(77,6),(9,8),(22,3),(8,4),(56,5),(17,7),(56,3),(82,2),(1,1),(31,6),(34,4),(89,4),(51,1),(22,4),(46,8),(81,8),(7,8),(79,8),(23,4),(81,2),(53,7),(82,7),(75,7),(16,8),(65,2),(21,8),(67,5),(31,5),(85,1),(58,8),(13,6),(24,5),(66,3),(44,4),(69,3),(97,4),(60,2),(83,7),(91,6),(49,5),(25,7),(58,7),(77,5),(42,6),(39,3),(91,2),(50,6),(91,6),(91,7),(65,3),(72,4),(98,3),(27,1),(81,6),(34,2),(48,4),(97,7),(27,7),(37,1),(38,6),(79,4),(57,2),(88,6),(70,2),(46,7),(91,4),(62,4),(46,7),(50,8),(13,3),(87,1),(91,6),(88,2),(81,6),(96,2),(26,2),(36,5),(48,8),(6,4),(18,6),(83,4),(27,1),(6,6),(82,1),(63,4),(20,7),(18,3),(40,8),(41,3),(76,8),(85,3),(42,7),(42,7),(14,4),(80,6),(40,4),(13,5),(18,4),(69,6),(8,4),(71,4),(73,2),(55,1),(8,2),(55,1),(1,2),(1,8),(91,4),(35,5),(32,6),(73,3),(73,1),(83,5),(65,5),(9,3),(63,8),(32,7),(91,5),(98,8),(10,5),(74,5),(24,3),(13,5),(39,2),(95,1),(92,8),(62,5),(73,6),(11,5),(18,4),(66,4),(100,6),(43,2),(24,5),(73,3),(46,8),(99,7),(98,2),(33,2),(47,5),(64,3),(90,8),(26,7),(25,8),(57,7),(81,8),(74,8),(89,4),(44,3),(59,5),(8,4),(82,4),(34,5),(91,6),(27,3),(22,8),(66,2),(19,3),(40,2),(37,3),(8,8),(95,2),(76,3),(83,6),(94,7),(3,2),(81,4),(42,6),(92,1),(78,2),(96,3),(75,6),(91,2),(16,7),(81,7),(33,8),(18,7),(35,5),(85,4),(55,5),(86,8),(40,8),(27,5),(70,2),(18,1),(95,1),(94,6),(91,7),(15,5),(23,2),(2,7),(57,6),(91,3),(62,6),(59,3),(85,6),(43,5),(65,2),(58,3),(95,1),(6,3),(65,2),(37,4),(85,4),(79,7),(61,6),(61,3),(59,2),(98,3),(37,8),(60,7),(99,1),(89,2),(21,3),(99,8),(1,6),(46,8),(39,3),(99,4),(63,6),(78,7),(68,6),(3,4),(57,1),(9,7),(57,8),(6,1),(25,5),(7,1),(74,3),(16,1),(21,7),(89,8),(93,2),(4,2),(97,5),(81,4),(57,5),(1,4),(62,8),(15,5),(89,4),(24,1);
/*!40000 ALTER TABLE `movies_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `VIN` char(17) DEFAULT NULL,
  `purchased_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,4,'2CNALDEW7A6408435','2018-01-05'),(2,2,'2GCEK19N341759529','2018-05-02'),(3,3,'1N6BA0ED9AN377199','2018-05-03'),(4,1,'2G1155S34E9336623','2018-02-22'),(5,2,'JT2AE91A8N0277061','2018-06-22');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase2`
--

DROP TABLE IF EXISTS `purchase2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase2` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `VIN` char(17) DEFAULT NULL,
  `purchased_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase2`
--

LOCK TABLES `purchase2` WRITE;
/*!40000 ALTER TABLE `purchase2` DISABLE KEYS */;
INSERT INTO `purchase2` VALUES (1,4,'2CNALDEW7A6408435','2018-01-05'),(2,2,'2GCEK19N341759529','2018-05-02'),(3,3,'1N6BA0ED9AN377199','2018-05-03'),(4,1,'2G1155S34E9336623','2018-02-22'),(5,2,'JT2AE91A8N0277061','2018-06-22');
/*!40000 ALTER TABLE `purchase2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_details`
--

DROP TABLE IF EXISTS `purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_details` (
  `id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `item` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_details`
--

LOCK TABLES `purchase_details` WRITE;
/*!40000 ALTER TABLE `purchase_details` DISABLE KEYS */;
INSERT INTO `purchase_details` VALUES (1,1,'vehicle'),(2,1,'GAP'),(3,2,'vehicle'),(4,2,'floor mats'),(5,2,'GAP'),(6,2,'wheel protection'),(7,2,'prepaid maintenance'),(8,3,'vehicle'),(9,4,'vehicle'),(10,4,'prepaid maintenance'),(11,5,'vehicle');
/*!40000 ALTER TABLE `purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_details2`
--

DROP TABLE IF EXISTS `purchase_details2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_details2` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `item` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_details2`
--

LOCK TABLES `purchase_details2` WRITE;
/*!40000 ALTER TABLE `purchase_details2` DISABLE KEYS */;
INSERT INTO `purchase_details2` VALUES (1,1,'vehicle'),(2,1,'GAP'),(3,2,'vehicle'),(4,2,'floor mats'),(5,2,'GAP'),(6,2,'wheel protection'),(7,2,'prepaid maintenance'),(8,3,'vehicle'),(9,4,'vehicle'),(10,4,'prepaid maintenance'),(11,5,'vehicle');
/*!40000 ALTER TABLE `purchase_details2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_details3`
--

DROP TABLE IF EXISTS `purchase_details3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_details3` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `item` varchar(64) DEFAULT NULL,
  KEY `purchase_fk_idx` (`purchase_id`),
  CONSTRAINT `purchase_fk` FOREIGN KEY (`purchase_id`) REFERENCES `purchase2` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_details3`
--

LOCK TABLES `purchase_details3` WRITE;
/*!40000 ALTER TABLE `purchase_details3` DISABLE KEYS */;
INSERT INTO `purchase_details3` VALUES (1,1,'vehicle'),(2,1,'GAP'),(3,2,'vehicle'),(4,2,'floor mats'),(5,2,'GAP'),(6,2,'wheel protection'),(7,2,'prepaid maintenance'),(8,3,'vehicle'),(9,4,'vehicle'),(10,4,'prepaid maintenance'),(11,5,'vehicle');
/*!40000 ALTER TABLE `purchase_details3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `joined_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gregorio Morissette DDS','mhills@botsford.com','2018-02-26 23:45:43'),(2,'Franco Mosciski','emerson.ryan@gerhold.net','2018-01-14 15:23:30'),(3,'Prof. Alysha Kling MD','vada.mosciski@sipes.com','2018-01-16 18:17:43'),(4,'Prof. Myrl Kreiger','dibbert.daija@gmail.com','2018-02-23 22:49:19'),(5,'Prof. Elisha Tromp','elmira.schroeder@gmail.com','2018-04-07 12:55:29'),(6,'Prof. Lolita Wolf','shaniya92@yahoo.com','2018-03-15 16:43:37'),(7,'Antonia Smitham','idell93@kreiger.org','2018-01-04 01:36:15'),(8,'Haven Nicolas','elinor29@hotmail.com','2018-01-30 02:37:48'),(9,'Edgardo Fisher II','tristian29@yahoo.com','2018-03-27 20:15:41'),(10,'Jeffry Runolfsdottir','mhackett@gmail.com','2018-01-29 13:33:24'),(11,'Rod Dickinson III','zwolf@koepp.biz','2018-01-11 17:06:11'),(12,'Mr. Grady Yost Jr.','tillman.chance@hotmail.com','2018-04-20 01:41:59'),(13,'Dr. Leora Casper','breitenberg.cassie@hickle.biz','2018-01-26 13:39:15'),(14,'Gregory Morar Sr.','noelia03@buckridge.com','2018-04-05 18:56:43'),(15,'Mr. Ethan Jast','minnie12@lubowitz.com','2018-04-23 00:04:17'),(16,'Mrs. Roxane Heller DDS','mdare@marks.com','2018-04-20 12:40:51'),(17,'Jakayla Russel','leda.smith@gmail.com','2018-01-05 03:32:11'),(18,'Ernesto Buckridge II','schiller.donavon@koss.com','2018-01-02 21:06:45'),(19,'Ben Gottlieb DDS','jaiden.graham@hagenes.info','2018-01-15 00:36:08'),(20,'Dr. Loraine Cormier','della10@prosacco.com','2018-01-27 12:16:13'),(21,'Braeden Gusikowski','magdalen82@koch.org','2018-02-16 03:36:47'),(22,'Raymond Veum','schuppe.icie@gmail.com','2018-04-18 18:24:49'),(23,'Dr. Imelda Satterfield II','mjohnson@smith.com','2018-02-24 01:10:25'),(24,'Juvenal Crist Jr.','andrew05@jenkins.com','2018-03-25 20:00:15'),(25,'Marisa Miller','lamar11@gmail.com','2018-02-12 02:27:16'),(26,'Luciano Pfannerstill PhD','trinity.conroy@jacobson.org','2018-03-11 08:49:11'),(27,'Prof. Casey Hane DDS','wiegand.carolyne@yahoo.com','2018-04-04 02:11:32'),(28,'Van Feest','schoen.paige@upton.com','2018-02-04 12:15:50'),(29,'Greta Ziemann II','royal61@hotmail.com','2018-01-15 22:35:56'),(30,'Berniece Cronin','aiyana.kuvalis@hotmail.com','2018-01-11 02:45:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_movies_ratings`
--

DROP TABLE IF EXISTS `users_movies_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_movies_ratings` (
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `rating` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_movies_ratings`
--

LOCK TABLES `users_movies_ratings` WRITE;
/*!40000 ALTER TABLE `users_movies_ratings` DISABLE KEYS */;
INSERT INTO `users_movies_ratings` VALUES (1,23,1),(1,83,2),(2,44,3),(2,4,3),(2,57,3),(3,50,4),(4,97,2),(4,13,4),(4,79,4),(6,12,5),(7,24,1),(7,90,2),(7,26,5),(8,81,4),(8,2,1),(9,20,4),(9,97,5),(9,86,2),(10,97,3),(11,5,1),(11,50,1),(13,39,1),(14,49,3),(14,70,4),(14,9,4),(15,10,5),(16,82,4),(16,2,1),(16,29,4),(18,59,5),(18,31,1),(19,79,3),(19,49,1),(19,98,5),(20,3,1),(20,55,2),(20,61,1),(21,86,4),(21,66,1),(21,27,5),(22,39,2),(23,52,5),(23,38,5),(24,49,4),(25,76,1),(25,51,1),(26,97,1),(26,26,4),(27,14,4),(27,16,4),(27,36,2),(28,26,3);
/*!40000 ALTER TABLE `users_movies_ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16 19:56:33
