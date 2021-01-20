CREATE DATABASE  IF NOT EXISTS `wars_1823_2003` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wars_1823_2003`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: wars_1823_2003
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Angola'),(3,'Argentina'),(4,'Armenia'),(5,'Australia'),(6,'Austria'),(7,'Austria-Hungary'),(8,'Azerbaijan'),(9,'Baden'),(10,'Bavaria'),(11,'Belgium'),(12,'Bolivia'),(13,'Bosnia'),(14,'Brazil'),(15,'Bulgaria'),(16,'Cambodia'),(17,'Canada'),(18,'Chad'),(19,'Chile '),(20,'China'),(21,'China (PRC)'),(22,'Colombia'),(23,'Croatia'),(24,'Cuba'),(25,'Cyprus'),(26,'Czechoslovakia'),(27,'Democratic Republic of the Congo'),(28,'Denmark'),(29,'Ecuador'),(30,'Egypt'),(31,'El Salvador'),(32,'Eritrea'),(33,'Estonia'),(34,'Ethiopia'),(35,'Finland'),(36,'France'),(37,'Germany'),(38,'Greece'),(39,'Guatemala'),(40,'Hanover'),(41,'Hesse Electoral'),(42,'Hesse Grand Ducal'),(43,'Honduras'),(44,'Hungary'),(45,'India'),(46,'Iran'),(47,'Iraq'),(48,'Israel'),(49,'Italy'),(50,'Japan'),(51,'Jordan'),(52,'Kuwait'),(53,'Laos'),(54,'Latvia'),(55,'Lebanon'),(56,'Libya'),(57,'Lithuania'),(58,'Mecklenburg Schwerin'),(59,'Mexico'),(60,'Modena'),(61,'Mongolia'),(62,'Morocco'),(63,'Netherlands'),(64,'New Zealand'),(65,'Nicaragua'),(66,'North Korea'),(67,'Norway'),(68,'Oman'),(69,'Ottoman Empire'),(70,'Pakistan'),(71,'Papal States'),(72,'Paraguay '),(73,'Peru'),(74,'Philippines'),(75,'Poland'),(76,'Portugal'),(77,'Prussia'),(78,'Qatar'),(79,'Romania'),(80,'Russia'),(81,'Sardinia/Piedmont'),(82,'Saudi Arabia'),(83,'Saxony'),(84,'Somalia'),(85,'South Africa'),(86,'South Korea'),(87,'South Vietnam'),(88,'Spain'),(89,'Syria'),(90,'Taiwan'),(91,'Taiwan (ROC)'),(92,'Tanzania'),(93,'Thailand'),(94,'Turkey'),(95,'Tuscany'),(96,'Two Sicilies'),(97,'Uganda'),(98,'United Arab Emirates'),(99,'United Kingdom'),(100,'United States of America'),(101,'USSR'),(102,'Vietnam'),(103,'Wuerttemburg'),(104,'Yemen Arab Republic'),(105,'Yugoslavia');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_sides`
--

DROP TABLE IF EXISTS `country_sides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_sides` (
  `side_id` int unsigned NOT NULL,
  `country_id` int unsigned NOT NULL,
  KEY `fk_sides_has_countries_countries1_idx` (`country_id`),
  KEY `fk_sides_has_countries_sides1_idx` (`side_id`),
  CONSTRAINT `country_sides_fk_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`),
  CONSTRAINT `country_sides_fk_sides` FOREIGN KEY (`side_id`) REFERENCES `sides` (`side_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_sides`
--

LOCK TABLES `country_sides` WRITE;
/*!40000 ALTER TABLE `country_sides` DISABLE KEYS */;
INSERT INTO `country_sides` VALUES (1,36),(2,88),(3,80),(4,69),(5,100),(6,59),(7,6),(8,95),(8,49),(8,60),(9,77),(10,28),(11,36),(11,96),(11,6),(12,71),(13,14),(14,3),(15,94),(15,36),(15,99),(15,49),(16,80),(17,99),(18,46),(19,81),(19,36),(20,6),(21,88),(22,62),(23,81),(24,71),(25,81),(26,96),(27,59),(28,36),(29,22),(30,29),(31,37),(31,6),(32,28),(33,14),(33,3),(34,72),(35,19),(35,73),(36,88),(37,49),(37,37),(37,58),(38,42),(38,103),(38,10),(38,6),(38,41),(38,83),(38,9),(38,40),(39,103),(39,9),(39,37),(39,10),(40,36),(41,39),(42,31),(43,77),(44,94),(45,19),(46,73),(46,12),(47,99),(48,30),(49,36),(50,20),(51,31),(52,39),(53,50),(54,20),(55,94),(56,38),(57,100),(58,88),(59,80),(59,50),(59,100),(59,99),(59,36),(60,20),(61,80),(62,20),(63,50),(64,80),(65,39),(66,43),(66,31),(67,65),(68,31),(68,43),(69,88),(70,62),(71,49),(72,94),(73,38),(73,15),(73,105),(74,94),(75,94),(75,105),(75,38),(75,79),(76,15),(77,105),(77,80),(77,99),(77,50),(77,11),(77,36),(77,49),(77,76),(77,79),(77,38),(77,100),(78,94),(78,37),(78,7),(78,15),(79,33),(79,35),(80,77),(81,54),(81,33),(81,37),(82,80),(82,37),(83,75),(84,80),(85,26),(85,79),(86,44),(87,94),(88,38),(89,94),(90,36),(91,75),(92,57),(93,101),(94,20),(95,50),(96,20),(97,72),(98,12),(99,82),(100,104),(101,49),(102,34),(103,50),(104,20),(105,101),(106,50),(107,101),(107,61),(108,50),(109,17),(109,99),(109,5),(109,64),(109,75),(109,36),(109,85),(109,11),(109,67),(109,63),(109,38),(109,105),(109,100),(109,101),(109,20),(109,34),(109,49),(109,79),(109,15),(109,14),(109,61),(110,37),(110,36),(110,49),(110,44),(110,35),(110,79),(110,15),(110,50),(111,101),(112,35),(113,93),(114,36),(115,45),(116,70),(117,48),(118,30),(118,89),(118,55),(118,51),(118,47),(119,17),(119,99),(119,94),(119,74),(119,66),(119,5),(119,86),(119,100),(119,11),(119,22),(119,63),(119,38),(119,36),(119,93),(120,20),(121,20),(122,90),(123,36),(123,48),(123,99),(124,30),(125,101),(126,44),(127,88),(127,36),(128,62),(129,21),(130,91),(131,21),(132,45),(133,102),(134,100),(134,86),(134,87),(134,5),(134,74),(134,93),(134,16),(135,70),(136,45),(137,48),(138,30),(138,51),(138,89),(139,102),(140,100),(140,53),(140,93),(141,30),(142,48),(143,31),(144,43),(145,102),(146,100),(146,16),(146,87),(147,45),(148,70),(149,48),(150,30),(150,82),(150,51),(150,89),(150,47),(151,94),(152,25),(153,24),(153,2),(154,85),(154,27),(155,34),(155,24),(156,84),(157,102),(158,16),(159,92),(160,97),(160,56),(161,20),(162,102),(163,46),(164,47),(165,99),(166,3),(167,48),(168,89),(169,18),(170,56),(171,20),(172,102),(173,52),(173,100),(173,17),(173,49),(173,99),(173,30),(173,62),(173,36),(173,68),(173,78),(173,98),(173,82),(173,89),(174,47),(175,13),(175,23),(176,105),(177,4),(178,8),(179,73),(180,29),(181,32),(182,34),(183,94),(183,49),(183,99),(183,100),(183,63),(183,36),(183,37),(184,105),(185,45),(186,70),(187,17),(187,36),(187,99),(187,100),(187,5),(188,1),(189,5),(189,100),(189,99),(190,47);
/*!40000 ALTER TABLE `country_sides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int unsigned NOT NULL AUTO_INCREMENT,
  `location_name` varchar(100) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Western Hemisphere'),(2,'Europe'),(3,'Africa'),(4,'Middle East'),(5,'Asia'),(6,'Oceania'),(7,'Europe & Middle East'),(8,'Europe & Asia'),(9,'Western Hemisphere & Asia'),(10,'Europe, Africa, & Middle East'),(11,'Europe, Africa, Middle East, & Asia'),(12,'Africa, Middle East, Asia, & Oceania'),(13,'Asia & Oceania'),(14,'Africa & Middle East'),(15,'Europe, Africa, Middle East, Asia & Oceania');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outcomes`
--

DROP TABLE IF EXISTS `outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outcomes` (
  `outcome_id` int unsigned NOT NULL AUTO_INCREMENT,
  `outcome_name` varchar(80) NOT NULL,
  PRIMARY KEY (`outcome_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outcomes`
--

LOCK TABLES `outcomes` WRITE;
/*!40000 ALTER TABLE `outcomes` DISABLE KEYS */;
INSERT INTO `outcomes` VALUES (1,'Winner'),(2,'Loser'),(3,'Compromise/Tied'),(4,'Transformed into a different War'),(5,'Stalemate');
/*!40000 ALTER TABLE `outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `war_id` int unsigned NOT NULL,
  `country_id` int unsigned NOT NULL,
  `initiator` tinyint(1) NOT NULL DEFAULT '0',
  KEY `fk_countries_has_wars_wars1_idx` (`war_id`),
  KEY `fk_countries_has_wars_countries_idx` (`country_id`),
  CONSTRAINT `participans_fk_wars` FOREIGN KEY (`war_id`) REFERENCES `wars` (`war_id`),
  CONSTRAINT `participants_fk_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,36,1),(1,88,0),(2,80,1),(2,69,0),(3,100,1),(3,59,0),(4,6,0),(4,95,0),(4,49,1),(4,60,0),(5,77,1),(5,28,0),(6,36,1),(6,96,0),(6,6,0),(6,71,0),(7,14,1),(7,3,0),(8,94,1),(8,36,0),(8,99,0),(8,49,0),(8,80,0),(9,99,1),(9,46,0),(10,81,0),(10,36,0),(10,6,1),(11,88,1),(11,62,0),(12,81,1),(12,71,0),(13,81,1),(13,96,0),(14,36,1),(14,59,0),(15,22,1),(15,29,0),(16,37,1),(16,28,0),(16,6,0),(17,3,0),(17,72,1),(17,14,0),(18,19,0),(18,73,0),(18,88,1),(19,49,0),(19,42,0),(19,103,0),(19,10,0),(19,6,0),(19,37,1),(19,58,0),(19,41,0),(19,83,0),(19,9,0),(19,40,0),(20,103,0),(20,9,0),(20,37,0),(20,10,0),(20,36,1),(21,39,1),(21,31,0),(22,94,0),(22,80,1),(23,19,1),(23,73,0),(23,12,0),(24,30,0),(24,99,1),(25,36,1),(25,20,0),(26,31,0),(26,39,1),(27,20,0),(27,50,1),(28,38,1),(28,94,0),(29,88,0),(29,100,1),(30,80,1),(30,50,1),(30,100,1),(30,20,0),(30,36,1),(30,99,1),(31,80,1),(31,20,0),(32,50,1),(32,80,0),(33,39,1),(33,31,0),(33,43,0),(34,43,0),(34,65,1),(34,31,0),(35,88,1),(35,62,0),(36,49,1),(36,94,0),(37,38,0),(37,15,0),(37,105,1),(37,94,0),(38,94,0),(38,105,0),(38,38,0),(38,79,0),(38,15,1),(39,105,0),(39,80,0),(39,99,0),(39,50,0),(39,11,0),(39,36,0),(39,49,0),(39,76,0),(39,79,0),(39,38,0),(39,100,0),(39,94,0),(39,37,0),(39,7,1),(39,15,0),(40,80,1),(40,33,0),(40,35,0),(41,80,1),(41,37,0),(41,33,0),(41,54,0),(42,80,1),(42,75,0),(43,26,0),(43,44,0),(43,79,1),(44,94,0),(44,38,1),(45,94,0),(45,36,1),(46,75,1),(46,57,0),(47,20,0),(47,101,1),(48,20,0),(48,50,1),(49,12,1),(49,72,0),(50,82,1),(50,104,0),(51,49,1),(51,34,0),(52,20,0),(52,50,1),(53,50,1),(53,101,0),(54,101,0),(54,50,1),(54,61,0),(55,44,0),(55,11,0),(55,36,0),(55,105,0),(55,35,0),(55,67,0),(55,100,0),(55,17,0),(55,99,0),(55,49,0),(55,63,0),(55,15,0),(55,79,0),(55,38,0),(55,14,0),(55,5,0),(55,64,0),(55,101,0),(55,37,1),(55,50,0),(55,75,0),(55,34,0),(55,61,0),(55,20,0),(55,85,0),(56,101,1),(56,35,0),(57,93,1),(57,36,0),(58,45,1),(58,70,0),(59,48,0),(59,30,0),(59,89,0),(59,55,0),(59,51,1),(59,47,0),(60,20,0),(60,17,0),(60,99,0),(60,94,0),(60,74,0),(60,66,1),(60,5,0),(60,86,0),(60,100,0),(60,11,0),(60,22,0),(60,63,0),(60,36,0),(60,38,0),(60,34,0),(60,93,0),(61,90,0),(61,20,1),(62,36,0),(62,48,1),(62,99,0),(62,30,0),(63,44,0),(63,101,1),(64,62,1),(64,36,0),(64,88,0),(65,21,1),(65,91,0),(66,21,1),(66,45,0),(67,86,0),(67,87,0),(67,100,1),(67,102,0),(67,5,0),(67,74,0),(67,93,0),(67,16,0),(68,70,1),(68,45,0),(69,48,1),(69,30,0),(69,89,0),(69,51,0),(70,102,1),(70,100,0),(70,53,0),(70,93,0),(71,30,1),(71,48,0),(72,31,1),(72,43,0),(73,102,1),(73,16,0),(73,100,0),(73,87,0),(74,45,0),(74,70,1),(75,30,1),(75,48,0),(75,82,0),(75,51,0),(75,89,1),(75,47,0),(76,94,1),(76,25,0),(77,24,0),(77,85,1),(77,2,0),(77,27,0),(78,34,0),(78,24,0),(78,84,1),(79,102,0),(79,16,1),(80,92,0),(80,97,1),(80,56,0),(81,20,1),(81,102,0),(82,46,0),(82,47,1),(83,3,1),(83,99,0),(84,89,0),(84,48,1),(85,18,1),(85,56,0),(86,102,0),(86,20,1),(87,52,0),(87,17,0),(87,100,0),(87,99,0),(87,47,1),(87,62,0),(87,30,0),(87,68,0),(87,36,0),(87,98,0),(87,49,0),(87,78,0),(87,82,0),(87,89,0),(88,23,0),(88,13,0),(88,105,1),(89,8,0),(89,4,1),(90,29,1),(90,73,0),(91,32,1),(91,34,0),(92,94,1),(92,49,1),(92,99,1),(92,100,1),(92,63,1),(92,36,1),(92,105,0),(92,37,1),(93,45,0),(93,70,1),(94,17,0),(94,36,0),(94,99,1),(94,100,1),(94,5,0),(94,1,0),(95,5,1),(95,99,1),(95,100,1),(95,47,0);
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sides`
--

DROP TABLE IF EXISTS `sides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sides` (
  `side_id` int unsigned NOT NULL AUTO_INCREMENT,
  `side_name` varchar(45) NOT NULL,
  PRIMARY KEY (`side_id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sides`
--

LOCK TABLES `sides` WRITE;
/*!40000 ALTER TABLE `sides` DISABLE KEYS */;
INSERT INTO `sides` VALUES (1,'Franco-Spanish War SIDE A'),(2,'Franco-Spanish War SIDE B'),(3,'First Russo-Turkish SIDE A'),(4,'First Russo-Turkish SIDE B'),(5,'Mexican-American War SIDE A'),(6,'Mexican-American War SIDE B'),(7,'Austro_Sardinian SIDE A'),(8,'Austro_Sardinian SIDE B'),(9,'First Schleswig-Holstein SIDE A'),(10,'First Schleswig-Holstein SIDE B'),(11,'Roman Republic SIDE A'),(12,'Roman Republic SIDE B'),(13,'La Plata SIDE A'),(14,'La Plata SIDE B'),(15,'Crimean SIDE A'),(16,'Crimean SIDE B'),(17,'Anglo-Persian SIDE A'),(18,'Anglo-Persian SIDE B'),(19,'Italian Unification SIDE A'),(20,'Italian Unification SIDE B'),(21,'First Spanish-Moroccan SIDE A'),(22,'First Spanish-Moroccan SIDE B'),(23,'Italian-Roman SIDE A'),(24,'Italian-Roman SIDE B'),(25,'Neapolitan  SIDE A'),(26,'Neapolitan  SIDE B'),(27,'Franco-Mexican SIDE A'),(28,'Franco-Mexican SIDE B'),(29,'Ecuadorian-Columbian SIDE A'),(30,'Ecuadorian-Columbian SIDE B'),(31,'Second Schleswig-Holstein SIDE A'),(32,'Second Schleswig-Holstein SIDE B'),(33,'Lopez SIDE A'),(34,'Lopez SIDE B'),(35,'Naval War SIDE A'),(36,'Naval War SIDE B'),(37,'Seven Weeks SIDE A'),(38,'Seven Weeks SIDE B'),(39,'Franco-Prussian SIDE A'),(40,'Franco-Prussian SIDE B'),(41,'First Central American SIDE A'),(42,'First Central American SIDE B'),(43,'Second Russo-Turkish SIDE A'),(44,'Second Russo-Turkish SIDE B'),(45,'War of the Pacific SIDE A'),(46,'War of the Pacific SIDE B'),(47,'Conquest of Egypt SIDE A'),(48,'Conquest of Egypt SIDE B'),(49,'Sino-French SIDE A'),(50,'Sino-French SIDE B'),(51,'Second Central American SIDE A'),(52,'Second Central American SIDE B'),(53,'First Sino-Japanese SIDE A'),(54,'First Sino-Japanese SIDE B'),(55,'Greco-Turkish SIDE A'),(56,'Greco-Turkish SIDE B'),(57,'Spanish-American SIDE A'),(58,'Spanish-American SIDE B'),(59,'Boxer Rebellion SIDE A'),(60,'Boxer Rebellion SIDE B'),(61,'Sino-Russian SIDE A'),(62,'Sino-Russian SIDE B'),(63,'Russo-Japanese SIDE A'),(64,'Russo-Japanese SIDE B'),(65,'Third Central American SIDE A'),(66,'Third Central American SIDE B'),(67,'Fourth Central American SIDE A'),(68,'Fourth Central American SIDE B'),(69,'Second Spanish-Moroccan SIDE A'),(70,'Second Spanish-Moroccan SIDE B'),(71,'Italian-Turkish SIDE A'),(72,'Italian-Turkish SIDE B'),(73,'First Balkan SIDE A'),(74,'First Balkan SIDE B'),(75,'Second Balkan SIDE A'),(76,'Second Balkan SIDE B'),(77,'World War I SIDE A'),(78,'World War I SIDE B'),(79,'Estonian Liberation SIDE A'),(80,'Estonian Liberation SIDE B'),(81,'Latvian Liberation SIDE A'),(82,'Latvian Liberation SIDE B'),(83,'Russo-Polish SIDE A'),(84,'Russo-Polish SIDE B'),(85,'Hungarian Adversaries SIDE A'),(86,'Hungarian Adversaries SIDE B'),(87,'Second Greco-Turkish SIDE A'),(88,'Second Greco-Turkish SIDE B'),(89,'Franco-Turkish SIDE A'),(90,'Franco-Turkish SIDE B'),(91,'Lithuanian-Polish SIDE A'),(92,'Lithuanian-Polish SIDE B'),(93,'Manchurian SIDE A'),(94,'Manchurian SIDE B'),(95,'Second Sino-Japanese SIDE A'),(96,'Second Sino-Japanese SIDE B'),(97,'Chaco SIDE A'),(98,'Chaco SIDE B'),(99,'Saudi-Yemeni SIDE A'),(100,'Saudi-Yemeni SIDE B'),(101,'Conquest of Ethiopia SIDE A'),(102,'Conquest of Ethiopia SIDE B'),(103,'Third Sino-Japanese SIDE A'),(104,'Third Sino-Japanese SIDE B'),(105,'Changkufeng SIDE A'),(106,'Changkufeng SIDE B'),(107,'Nomonhan SIDE A'),(108,'Nomonhan SIDE B'),(109,'World War II SIDE A'),(110,'World War II SIDE B'),(111,'Russo-Finnish SIDE A'),(112,'Russo-Finnish SIDE B'),(113,'Franco-Thai SIDE A'),(114,'Franco-Thai SIDE B'),(115,'First Kashmir SIDE A'),(116,'First Kashmir SIDE B'),(117,'Arab-Israeli SIDE A'),(118,'Arab-Israeli SIDE B'),(119,'Korean SIDE A'),(120,'Korean SIDE B'),(121,'Off-shore Islands SIDE A'),(122,'Off-shore Islands SIDE B'),(123,'Sinai War SIDE A'),(124,'Sinai War SIDE B'),(125,'Soviet Invasion of Hungary SIDE A'),(126,'Soviet Invasion of Hungary SIDE B'),(127,'IfniWar SIDE A'),(128,'IfniWar SIDE B'),(129,'Taiwan Straits SIDE A'),(130,'Taiwan Straits SIDE B'),(131,'Assam SIDE A'),(132,'Assam SIDE B'),(133,'Vietnam War, Phase 2 SIDE A'),(134,'Vietnam War, Phase 2 SIDE B'),(135,'Second Kashmir SIDE A'),(136,'Second Kashmir SIDE B'),(137,'Six Day War SIDE A'),(138,'Six Day War SIDE B'),(139,'Second Laotian, Phase 2 SIDE A'),(140,'Second Laotian, Phase 2 SIDE B'),(141,'War of Attrition SIDE A'),(142,'War of Attrition SIDE B'),(143,'Football War SIDE A'),(144,'Football War SIDE B'),(145,'Communist Coalition SIDE A'),(146,'Communist Coalition SIDE B'),(147,'Bangladesh SIDE A'),(148,'Bangladesh SIDE B'),(149,'Yom Kippur War SIDE A'),(150,'Yom Kippur War SIDE B'),(151,'Turco-Cypriot SIDE A'),(152,'Turco-Cypriot SIDE B'),(153,'War over Angola SIDE A'),(154,'War over Angola SIDE B'),(155,'Second Ogaden War, Phase 2 SIDE A'),(156,'Second Ogaden War, Phase 2 SIDE B'),(157,'Vietnamese-Cambodian SIDE A'),(158,'Vietnamese-Cambodian SIDE B'),(159,'Ugandian-Tanzanian SIDE A'),(160,'Ugandian-Tanzanian SIDE B'),(161,'Sino-Vietnamese Punitive SIDE A'),(162,'Sino-Vietnamese Punitive SIDE B'),(163,'Iran-Iraq SIDE A'),(164,'Iran-Iraq SIDE B'),(165,'Falkland Islands SIDE A'),(166,'Falkland Islands SIDE B'),(167,'War over Lebanon SIDE A'),(168,'War over Lebanon SIDE B'),(169,'War over the Aouzou Strip SIDE A'),(170,'War over the Aouzou Strip SIDE B'),(171,'Sino-Vietnamese Border War SIDE A'),(172,'Sino-Vietnamese Border War SIDE B'),(173,'Gulf War SIDE A'),(174,'Gulf War SIDE B'),(175,'Bosnian Independence SIDE A'),(176,'Bosnian Independence SIDE B'),(177,'Azeri-Armenian SIDE A'),(178,'Azeri-Armenian SIDE B'),(179,'Cenepa Valley SIDE A'),(180,'Cenepa Valley SIDE B'),(181,'Badme Border SIDE A'),(182,'Badme Border SIDE B'),(183,'War for Kosovo SIDE A'),(184,'War for Kosovo SIDE B'),(185,'Kargil War SIDE A'),(186,'Kargil War SIDE B'),(187,'Invasion of Afghanistan SIDE A'),(188,'Invasion of Afghanistan SIDE B'),(189,'Invasion of Iraq SIDE A'),(190,'Invasion of Iraq SIDE B');
/*!40000 ALTER TABLE `sides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_country_war_and_death_count`
--

DROP TABLE IF EXISTS `view_country_war_and_death_count`;
/*!50001 DROP VIEW IF EXISTS `view_country_war_and_death_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_country_war_and_death_count` AS SELECT 
 1 AS `Country`,
 1 AS `# of Wars Fought`,
 1 AS `Battle Deaths`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_country_wins`
--

DROP TABLE IF EXISTS `view_country_wins`;
/*!50001 DROP VIEW IF EXISTS `view_country_wins`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_country_wins` AS SELECT 
 1 AS `Country`,
 1 AS `Wins`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_stalemates`
--

DROP TABLE IF EXISTS `view_stalemates`;
/*!50001 DROP VIEW IF EXISTS `view_stalemates`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_stalemates` AS SELECT 
 1 AS `War Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_start_end_month_counts`
--

DROP TABLE IF EXISTS `view_start_end_month_counts`;
/*!50001 DROP VIEW IF EXISTS `view_start_end_month_counts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_start_end_month_counts` AS SELECT 
 1 AS `Month`,
 1 AS `No. of Wars STARTED`,
 1 AS `No. of Wars ENDED`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_war_initiators`
--

DROP TABLE IF EXISTS `view_war_initiators`;
/*!50001 DROP VIEW IF EXISTS `view_war_initiators`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_war_initiators` AS SELECT 
 1 AS `Country`,
 1 AS `Initiated War`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_wwi_participants`
--

DROP TABLE IF EXISTS `view_wwi_participants`;
/*!50001 DROP VIEW IF EXISTS `view_wwi_participants`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_wwi_participants` AS SELECT 
 1 AS `Countries Involved in WWI`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `war_outcomes`
--

DROP TABLE IF EXISTS `war_outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `war_outcomes` (
  `side_id` int unsigned NOT NULL,
  `outcome_id` int unsigned NOT NULL,
  KEY `fk_sides_has_outcomes_outcomes1_idx` (`outcome_id`),
  KEY `fk_sides_has_outcomes_sides1_idx` (`side_id`),
  CONSTRAINT `war_outcomes_fk_outcomes` FOREIGN KEY (`outcome_id`) REFERENCES `outcomes` (`outcome_id`),
  CONSTRAINT `war_outcomes_fk_sides` FOREIGN KEY (`side_id`) REFERENCES `sides` (`side_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `war_outcomes`
--

LOCK TABLES `war_outcomes` WRITE;
/*!40000 ALTER TABLE `war_outcomes` DISABLE KEYS */;
INSERT INTO `war_outcomes` VALUES (1,1),(2,2),(3,1),(4,2),(5,1),(6,2),(7,1),(8,2),(9,1),(10,2),(11,1),(12,2),(13,1),(14,2),(15,1),(16,2),(17,1),(18,2),(19,1),(20,2),(21,1),(22,2),(23,1),(24,2),(25,1),(26,2),(27,4),(28,4),(29,1),(30,2),(31,1),(32,2),(33,1),(34,2),(35,1),(36,2),(37,1),(38,2),(39,1),(40,2),(41,1),(42,2),(43,1),(44,2),(45,1),(46,2),(47,1),(48,2),(49,1),(50,2),(51,1),(52,2),(53,1),(54,2),(55,1),(56,2),(57,1),(58,2),(59,1),(60,2),(61,1),(62,2),(63,1),(64,2),(65,1),(66,2),(67,1),(68,2),(69,1),(70,2),(71,1),(72,2),(73,1),(74,2),(75,1),(76,2),(77,1),(78,2),(79,1),(80,2),(81,1),(82,2),(83,1),(84,2),(85,1),(86,2),(87,1),(88,2),(89,3),(90,3),(91,1),(92,2),(93,1),(94,2),(95,1),(96,2),(97,1),(98,2),(99,1),(100,2),(101,1),(102,2),(103,1),(104,2),(105,1),(106,2),(107,1),(108,2),(109,1),(110,2),(111,1),(112,2),(113,1),(114,2),(115,5),(116,5),(117,1),(118,2),(119,5),(120,5),(121,1),(122,2),(123,1),(124,2),(125,1),(126,2),(127,1),(128,2),(129,5),(130,5),(131,1),(132,2),(133,1),(134,2),(135,1),(136,2),(137,1),(138,2),(139,1),(140,2),(141,5),(142,5),(143,1),(144,2),(145,4),(146,4),(147,1),(148,2),(149,1),(150,2),(151,1),(152,2),(153,4),(154,4),(155,4),(156,4),(157,4),(158,4),(159,1),(160,2),(161,1),(162,2),(163,5),(164,5),(165,1),(166,2),(167,5),(168,5),(169,1),(170,2),(171,5),(172,5),(173,1),(174,2),(175,4),(176,4),(177,1),(178,2),(179,3),(180,3),(181,5),(182,5),(183,1),(184,2),(185,1),(186,2),(187,4),(188,4),(189,4),(190,4);
/*!40000 ALTER TABLE `war_outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `war_sides`
--

DROP TABLE IF EXISTS `war_sides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `war_sides` (
  `war_id` int unsigned NOT NULL,
  `side_id` int unsigned NOT NULL,
  KEY `fk_wars_has_sides_sides1_idx` (`side_id`),
  KEY `fk_wars_has_sides_wars1_idx` (`war_id`),
  CONSTRAINT `war_sides_fk_sides` FOREIGN KEY (`side_id`) REFERENCES `sides` (`side_id`),
  CONSTRAINT `war_sides_fk_wars` FOREIGN KEY (`war_id`) REFERENCES `wars` (`war_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `war_sides`
--

LOCK TABLES `war_sides` WRITE;
/*!40000 ALTER TABLE `war_sides` DISABLE KEYS */;
INSERT INTO `war_sides` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(7,14),(8,15),(8,16),(9,17),(9,18),(10,19),(10,20),(11,21),(11,22),(12,23),(12,24),(13,25),(13,26),(14,27),(14,28),(15,29),(15,30),(16,31),(16,32),(17,33),(17,34),(18,35),(18,36),(19,37),(19,38),(20,39),(20,40),(21,41),(21,42),(22,43),(22,44),(23,45),(23,46),(24,47),(24,48),(25,49),(25,50),(26,51),(26,52),(27,53),(27,54),(28,55),(28,56),(29,57),(29,58),(30,59),(30,60),(31,61),(31,62),(32,63),(32,64),(33,65),(33,66),(34,67),(34,68),(35,69),(35,70),(36,71),(36,72),(37,73),(37,74),(38,75),(38,76),(39,77),(39,78),(40,79),(40,80),(41,81),(41,82),(42,83),(42,84),(43,85),(43,86),(44,87),(44,88),(45,89),(45,90),(46,91),(46,92),(47,93),(47,94),(48,95),(48,96),(49,97),(49,98),(50,99),(50,100),(51,101),(51,102),(52,103),(52,104),(53,105),(53,106),(54,107),(54,108),(55,109),(55,110),(56,111),(56,112),(57,113),(57,114),(58,115),(58,116),(59,117),(59,118),(60,119),(60,120),(61,121),(61,122),(62,123),(62,124),(63,125),(63,126),(64,127),(64,128),(65,129),(65,130),(66,131),(66,132),(67,133),(67,134),(68,135),(68,136),(69,137),(69,138),(70,139),(70,140),(71,141),(71,142),(72,143),(72,144),(73,145),(73,146),(74,147),(74,148),(75,149),(75,150),(76,151),(76,152),(77,153),(77,154),(78,155),(78,156),(79,157),(79,158),(80,159),(80,160),(81,161),(81,162),(82,163),(82,164),(83,165),(83,166),(84,167),(84,168),(85,169),(85,170),(86,171),(86,172),(87,173),(87,174),(88,175),(88,176),(89,177),(89,178),(90,179),(90,180),(91,181),(91,182),(92,183),(92,184),(93,185),(93,186),(94,187),(94,188),(95,189),(95,190);
/*!40000 ALTER TABLE `war_sides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wars`
--

DROP TABLE IF EXISTS `wars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wars` (
  `war_id` int unsigned NOT NULL AUTO_INCREMENT,
  `war_name` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `battle_deaths` int DEFAULT NULL,
  PRIMARY KEY (`war_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wars`
--

LOCK TABLES `wars` WRITE;
/*!40000 ALTER TABLE `wars` DISABLE KEYS */;
INSERT INTO `wars` VALUES (1,'Franco-Spanish War','1823-04-07','1823-11-13',1000),(2,'First Russo-Turkish','1828-04-26','1829-09-14',130000),(3,'Mexican-American','1846-04-25','1847-09-14',19283),(4,'Austro-Sardinian','1848-03-24','1849-03-30',7527),(5,'First Schleswig-Holstein','1848-04-10','1849-07-10',6000),(6,'Roman Republic','1849-04-30','1849-07-02',2600),(7,'La Plata','1851-07-19','1852-02-03',1300),(8,'Crimean','1853-10-23','1856-03-01',264200),(9,'Anglo-Persian','1856-10-25','1857-04-05',2000),(10,'Italian Unification','1859-04-29','1859-07-12',22500),(11,'First Spanish-Moroccan','1859-10-22','1860-03-25',10000),(12,'Italian-Roman','1860-09-11','1860-09-29',1000),(13,'Neapolitan ','1860-10-15','1861-02-13',1000),(14,'Franco-Mexican','1862-04-16','1867-02-05',20000),(15,'Ecuadorian-Columbian','1863-11-22','1863-12-06',1000),(16,'Second Schleswig-Holstein','1864-02-01','1864-04-25',4481),(17,'Lopez','1864-11-12','1870-03-01',310000),(18,'Naval War','1865-09-25','1866-05-09',1000),(19,'Seven Weeks','1866-06-15','1866-07-26',44100),(20,'Franco-Prussian','1870-07-19','1870-11-22',204313),(21,'First Central American','1876-03-27','1876-04-25',4000),(22,'Second Russo-Turkish','1877-04-24','1878-01-31',285000),(23,'War of the Pacific','1879-02-14','1883-10-23',13868),(24,'Conquest of Egypt','1882-07-11','1882-09-15',10079),(25,'Sino-French','1884-06-15','1885-06-09',12100),(26,'Second Central American','1885-03-28','1885-04-15',1000),(27,'First Sino-Japanese','1894-07-25','1895-03-30',15000),(28,'Greco-Turkish','1897-02-15','1897-05-19',2000),(29,'Spanish-American','1898-04-22','1898-08-12',3685),(30,'Boxer Rebellion','1900-06-17','1900-08-14',3003),(31,'Sino-Russian','1900-07-17','1900-10-10',4000),(32,'Russo-Japanese','1904-02-08','1905-09-15',151831),(33,'Third Central American','1906-05-27','1906-07-20',1000),(34,'Fourth Central American','1907-02-19','1907-04-23',1000),(35,'Second Spanish-Moroccan','1909-07-07','1910-03-23',10000),(36,'Italian-Turkish','1911-09-29','1912-10-18',20000),(37,'First Balkan','1912-10-17','1912-12-03',82000),(38,'Second Balkan','1913-06-30','1913-07-30',60500),(39,'World War I','1914-07-29','1918-11-11',8578031),(40,'Estonian Liberation','1918-11-22','1920-01-03',11750),(41,'Latvian Liberation','1918-12-07','1919-04-15',13246),(42,'Russo-Polish','1919-02-14','1920-10-18',100000),(43,'Hungarian Adversaries','1919-04-16','1919-08-04',11000),(44,'Second Greco-Turkish','1919-05-05','1922-10-11',50000),(45,'Franco-Turkish','1919-11-01','1921-10-20',40000),(46,'Lithuanian-Polish','1920-07-15','1920-12-01',1000),(47,'Manchurian','1929-08-17','1929-12-03',3200),(48,'Second Sino-Japanese','1931-12-19','1933-05-22',60000),(49,'Chaco','1932-06-15','1935-06-12',92661),(50,'Saudi-Yemeni','1934-03-20','1934-05-13',2100),(51,'Conquest of Ethiopia','1935-10-03','1936-05-09',20000),(52,'Third Sino-Japanese','1937-07-07','1941-12-06',1000000),(53,'Changkufeng','1938-07-29','1938-08-11',1726),(54,'Nomonhan','1939-05-11','1939-09-16',28000),(55,'World War II','1939-01-09','1945-08-14',16634907),(56,'Russo-Finnish','1939-11-30','1940-03-12',151798),(57,'Franco-Thai','1940-12-01','1941-01-28',1400),(58,'First Kashmir','1947-10-26','1949-01-01',3500),(59,'Arab-Israeli','1948-05-15','1948-07-18',8000),(60,'Korean','1950-10-27','1953-07-27',910084),(61,'Off-shore Islands','1954-09-03','1955-04-23',2370),(62,'Sinai War','1956-10-31','1956-11-06',3221),(63,'Soviet Invasion of Hungary','1956-11-04','1956-11-14',2426),(64,'IfniWar','1957-11-21','1958-04-10',1122),(65,'Taiwan Straits','1958-08-23','1958-11-23',1800),(66,'Assam','1962-10-20','1962-11-22',1853),(67,'Vietnam War, Phase 2','1965-02-07','1975-04-30',1021442),(68,'Second Kashmir','1965-08-05','1965-09-23',7061),(69,'Six Day War','1967-06-05','1967-06-10',19600),(70,'Second Laotian, Phase 2','1968-01-13','1973-04-17',13875),(71,'War of Attrition','1969-03-06','1970-08-07',5368),(72,'Football War','1969-07-14','1969-07-18',1900),(73,'Communist Coalition','1970-03-23','1971-07-02',6525),(74,'Bangladesh','1971-12-03','1971-12-17',11223),(75,'Yom Kippur War','1973-10-06','1973-10-24',14439),(76,'Turco-Cypriot','1974-07-20','1974-07-29',1500),(77,'War over Angola','1975-10-23','1976-02-12',2700),(78,'Second Ogaden War, Phase 2','1977-07-23','1978-03-09',10500),(79,'Vietnamese-Cambodian','1977-09-24','1979-01-08',8000),(80,'Ugandian-Tanzanian','1978-10-28','1979-04-11',3000),(81,'Sino-Vietnamese Punitive','1979-02-17','1979-03-16',21000),(82,'Iran-Iraq','1980-09-22','1988-08-20',1250000),(83,'Falkland Islands','1982-03-25','1982-06-15',1001),(84,'War over Lebanon','1982-04-21','1982-09-15',1655),(85,'War over the Aouzou Strip','1986-11-15','1987-09-11',8000),(86,'Sino-Vietnamese Border War','1987-01-05','1987-02-06',4000),(87,'Gulf War','1990-08-02','1991-04-11',41466),(88,'Bosnian Independence','1992-04-07','1992-05-13',5240),(89,'Azeri-Armenian','1993-02-06','1994-05-12',14000),(90,'Cenepa Valley','1995-01-09','1995-02-27',1500),(91,'Badme Border','1998-05-06','2000-12-12',120000),(92,'War for Kosovo','1999-03-24','1999-06-10',5002),(93,'Kargil War','1999-05-08','1999-07-17',1172),(94,'Invasion of Afghanistan','2001-11-15','2001-12-22',4002),(95,'Invasion of Iraq','2003-03-19','2003-05-02',7173);
/*!40000 ALTER TABLE `wars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `where_fought`
--

DROP TABLE IF EXISTS `where_fought`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `where_fought` (
  `war_id` int unsigned NOT NULL,
  `location_id` int unsigned NOT NULL,
  KEY `fk_wars_has_locations_locations1_idx` (`location_id`),
  KEY `fk_wars_has_locations_wars1_idx` (`war_id`),
  CONSTRAINT `where_fought_fk_locations` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`),
  CONSTRAINT `where_fought_fk_wars` FOREIGN KEY (`war_id`) REFERENCES `wars` (`war_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `where_fought`
--

LOCK TABLES `where_fought` WRITE;
/*!40000 ALTER TABLE `where_fought` DISABLE KEYS */;
INSERT INTO `where_fought` VALUES (1,2),(2,7),(3,1),(4,2),(5,2),(6,2),(7,1),(8,2),(9,4),(10,2),(11,6),(12,2),(13,2),(14,1),(15,1),(16,1),(17,1),(18,1),(19,2),(20,2),(21,1),(22,7),(23,1),(24,4),(25,5),(26,1),(27,5),(28,2),(29,9),(30,5),(31,5),(32,5),(33,1),(34,1),(35,4),(36,4),(37,7),(38,2),(39,15),(40,2),(41,2),(42,2),(43,2),(44,7),(45,4),(46,2),(47,5),(48,5),(49,1),(50,4),(51,3),(52,5),(53,5),(54,5),(55,15),(56,2),(57,5),(58,5),(59,4),(60,5),(61,5),(62,4),(63,2),(64,4),(65,5),(66,5),(67,5),(68,5),(69,4),(70,5),(71,4),(72,1),(73,5),(74,5),(75,4),(76,2),(77,3),(78,3),(79,5),(80,3),(81,5),(82,4),(83,1),(84,4),(85,14),(86,5),(87,4),(88,2),(89,2),(90,1),(91,3),(92,2),(93,5),(94,5),(95,4);
/*!40000 ALTER TABLE `where_fought` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `view_country_war_and_death_count`
--

/*!50001 DROP VIEW IF EXISTS `view_country_war_and_death_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_country_war_and_death_count` AS select `countries`.`country_name` AS `Country`,count(`wars`.`war_id`) AS `# of Wars Fought`,format(sum(`wars`.`battle_deaths`),0) AS `Battle Deaths` from ((`wars` join `participants` on((`wars`.`war_id` = `participants`.`war_id`))) join `countries` on((`participants`.`country_id` = `countries`.`country_id`))) group by `countries`.`country_name` order by count(`wars`.`war_id`) desc,`countries`.`country_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_country_wins`
--

/*!50001 DROP VIEW IF EXISTS `view_country_wins`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_country_wins` AS select `countries`.`country_name` AS `Country`,count(`war_outcomes`.`outcome_id`) AS `Wins` from ((`countries` join `country_sides` on((`countries`.`country_id` = `country_sides`.`country_id`))) join `war_outcomes` on((`country_sides`.`side_id` = `war_outcomes`.`side_id`))) where (`war_outcomes`.`outcome_id` = 1) group by `countries`.`country_name` order by count(`war_outcomes`.`outcome_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_stalemates`
--

/*!50001 DROP VIEW IF EXISTS `view_stalemates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_stalemates` AS select `wars`.`war_name` AS `War Name` from (`wars` join (select distinct `war_sides`.`war_id` AS `war_id` from (`war_sides` join `war_outcomes` on((`war_sides`.`side_id` = `war_outcomes`.`side_id`))) where (`war_outcomes`.`outcome_id` = 5)) `t` on((`wars`.`war_id` = `t`.`war_id`))) order by `wars`.`war_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_start_end_month_counts`
--

/*!50001 DROP VIEW IF EXISTS `view_start_end_month_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_start_end_month_counts` AS select distinct `start_temp`.`month_name` AS `Month`,`start_temp`.`wars_started` AS `No. of Wars STARTED`,`end_temp`.`wars_ended` AS `No. of Wars ENDED` from ((select date_format(`wars`.`start_date`,'%m') AS `month_num`,date_format(`wars`.`start_date`,'%M') AS `month_name`,count(date_format(`wars`.`start_date`,'%m')) AS `wars_started` from `wars` group by `month_num`,`month_name` order by date_format(`wars`.`start_date`,'%m')) `start_temp` join (select date_format(`wars`.`end_date`,'%m') AS `e_month_num`,date_format(`wars`.`end_date`,'%M') AS `e_month_name`,count(date_format(`wars`.`start_date`,'%m')) AS `wars_ended` from `wars` group by `e_month_num`,`e_month_name` order by date_format(`wars`.`end_date`,'%m')) `end_temp` on((`start_temp`.`month_name` = `end_temp`.`e_month_name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_war_initiators`
--

/*!50001 DROP VIEW IF EXISTS `view_war_initiators`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_war_initiators` AS select `countries`.`country_name` AS `Country`,`wars`.`war_name` AS `Initiated War` from ((`countries` join `participants` on((`countries`.`country_id` = `participants`.`country_id`))) join `wars` on((`participants`.`war_id` = `wars`.`war_id`))) where `participants`.`initiator` in (select `participants`.`initiator` from `participants` where (`participants`.`initiator` = 1)) order by `wars`.`start_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_wwi_participants`
--

/*!50001 DROP VIEW IF EXISTS `view_wwi_participants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_wwi_participants` AS select `countries`.`country_name` AS `Countries Involved in WWI` from ((`countries` join `participants` on((`countries`.`country_id` = `participants`.`country_id`))) join `wars` on((`participants`.`war_id` = `wars`.`war_id`))) where (`wars`.`war_name` = 'World War I') order by `countries`.`country_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-20 11:12:55
