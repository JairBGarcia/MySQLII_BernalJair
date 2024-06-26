-- MySQL dump 10.13  Distrib 8.0.19, for osx10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: world
-- ------------------------------------------------------
-- Server version8.0.19-debug

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @old_autocommit=@@autocommit;

--
-- Current Database: `world`
-- ########################
-- ### DIA 5 ####
-- ########################

/*!40000 DROP DATABASE IF EXISTS `world`*/;

CREATE DATABASE `world` DEFAULT CHARACTER SET utf8mb4;

USE `world`;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Population` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--
-- ORDER BY:  `ID`

set autocommit=0;
INSERT INTO `city` VALUES (1,'Kabul','AFG','Kabol',1780000);
INSERT INTO `city` VALUES (2,'Qandahar','AFG','Qandahar',237500);
INSERT INTO `city` VALUES (3,'Herat','AFG','Herat',186800);
INSERT INTO `city` VALUES (4,'Mazar-e-Sharif','AFG','Balkh',127800);
INSERT INTO `city` VALUES (5,'Amsterdam','NLD','Noord-Holland',731200);
INSERT INTO `city` VALUES (6,'Rotterdam','NLD','Zuid-Holland',593321);
INSERT INTO `city` VALUES (7,'Haag','NLD','Zuid-Holland',440900);
INSERT INTO `city` VALUES (8,'Utrecht','NLD','Utrecht',234323);
INSERT INTO `city` VALUES (9,'Eindhoven','NLD','Noord-Brabant',201843);
INSERT INTO `city` VALUES (10,'Tilburg','NLD','Noord-Brabant',193238);
INSERT INTO `city` VALUES (11,'Groningen','NLD','Groningen',172701);
INSERT INTO `city` VALUES (12,'Breda','NLD','Noord-Brabant',160398);
INSERT INTO `city` VALUES (13,'Apeldoorn','NLD','Gelderland',153491);
INSERT INTO `city` VALUES (14,'Nijmegen','NLD','Gelderland',152463);
INSERT INTO `city` VALUES (15,'Enschede','NLD','Overijssel',149544);
INSERT INTO `city` VALUES (16,'Haarlem','NLD','Noord-Holland',148772);
INSERT INTO `city` VALUES (17,'Almere','NLD','Flevoland',142465);
INSERT INTO `city` VALUES (18,'Arnhem','NLD','Gelderland',138020);
INSERT INTO `city` VALUES (19,'Zaanstad','NLD','Noord-Holland',135621);
INSERT INTO `city` VALUES (20,'´s-Hertogenbosch','NLD','Noord-Brabant',129170);
INSERT INTO `city` VALUES (21,'Amersfoort','NLD','Utrecht',126270);
INSERT INTO `city` VALUES (22,'Maastricht','NLD','Limburg',122087);
INSERT INTO `city` VALUES (23,'Dordrecht','NLD','Zuid-Holland',119811);
INSERT INTO `city` VALUES (24,'Leiden','NLD','Zuid-Holland',117196);
INSERT INTO `city` VALUES (25,'Haarlemmermeer','NLD','Noord-Holland',110722);
INSERT INTO `city` VALUES (26,'Zoetermeer','NLD','Zuid-Holland',110214);
INSERT INTO `city` VALUES (27,'Emmen','NLD','Drenthe',105853);
INSERT INTO `city` VALUES (28,'Zwolle','NLD','Overijssel',105819);
INSERT INTO `city` VALUES (29,'Ede','NLD','Gelderland',101574);
INSERT INTO `city` VALUES (30,'Delft','NLD','Zuid-Holland',95268);
INSERT INTO `city` VALUES (31,'Heerlen','NLD','Limburg',95052);
INSERT INTO `city` VALUES (32,'Alkmaar','NLD','Noord-Holland',92713);
INSERT INTO `city` VALUES (33,'Willemstad','ANT','Curaçao',2345);
INSERT INTO `city` VALUES (34,'Tirana','ALB','Tirana',270000);
INSERT INTO `city` VALUES (35,'Alger','DZA','Alger',2168000);
INSERT INTO `city` VALUES (36,'Oran','DZA','Oran',609823);
INSERT INTO `city` VALUES (37,'Constantine','DZA','Constantine',443727);
INSERT INTO `city` VALUES (38,'Annaba','DZA','Annaba',222518);
INSERT INTO `city` VALUES (39,'Batna','DZA','Batna',183377);
INSERT INTO `city` VALUES (40,'Sétif','DZA','Sétif',179055);
INSERT INTO `city` VALUES (41,'Sidi Bel Abbès','DZA','Sidi Bel Abbès',153106);
INSERT INTO `city` VALUES (42,'Skikda','DZA','Skikda',128747);
INSERT INTO `city` VALUES (43,'Biskra','DZA','Biskra',128281);
INSERT INTO `city` VALUES (44,'Blida (el-Boulaida)','DZA','Blida',127284);
INSERT INTO `city` VALUES (45,'Béjaïa','DZA','Béjaïa',117162);
INSERT INTO `city` VALUES (46,'Mostaganem','DZA','Mostaganem',115212);
INSERT INTO `city` VALUES (47,'Tébessa','DZA','Tébessa',112007);