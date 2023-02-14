-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: base
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `phone_ads`
--

DROP TABLE IF EXISTS `phone_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_ads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `job` varchar(50) DEFAULT 'default',
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_ads`
--

LOCK TABLES `phone_ads` WRITE;
/*!40000 ALTER TABLE `phone_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_chats`
--

DROP TABLE IF EXISTS `phone_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_chats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unknown',
  `muted` tinyint(1) DEFAULT '0',
  `lastOpened` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_chats`
--

LOCK TABLES `phone_chats` WRITE;
/*!40000 ALTER TABLE `phone_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_contacts`
--

DROP TABLE IF EXISTS `phone_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unknown',
  `photo` varchar(512) DEFAULT '',
  `tag` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_contacts`
--

LOCK TABLES `phone_contacts` WRITE;
/*!40000 ALTER TABLE `phone_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_darkgroups`
--

DROP TABLE IF EXISTS `phone_darkgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkgroups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invitecode` varchar(50) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `photo` varchar(512) NOT NULL DEFAULT '',
  `maxmembers` int DEFAULT '0',
  `members` mediumtext NOT NULL,
  `bannedmembers` mediumtext,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkgroups`
--

LOCK TABLES `phone_darkgroups` WRITE;
/*!40000 ALTER TABLE `phone_darkgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_darkgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_darkmessages`
--

DROP TABLE IF EXISTS `phone_darkmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkmessages` (
  `from` varchar(255) DEFAULT NULL,
  `to` int DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `attachments` mediumtext,
  `time` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkmessages`
--

LOCK TABLES `phone_darkmessages` WRITE;
/*!40000 ALTER TABLE `phone_darkmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_darkmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_gallery`
--

DROP TABLE IF EXISTS `phone_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_gallery` (
  `citizenid` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_gallery`
--

LOCK TABLES `phone_gallery` WRITE;
/*!40000 ALTER TABLE `phone_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_groups`
--

DROP TABLE IF EXISTS `phone_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `photo` varchar(512) NOT NULL DEFAULT '',
  `members` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_groups`
--

LOCK TABLES `phone_groups` WRITE;
/*!40000 ALTER TABLE `phone_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_invoices`
--

DROP TABLE IF EXISTS `phone_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `society` tinytext,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_invoices`
--

LOCK TABLES `phone_invoices` WRITE;
/*!40000 ALTER TABLE `phone_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_mail`
--

DROP TABLE IF EXISTS `phone_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_mail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` varchar(128) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `starred` tinyint(1) NOT NULL DEFAULT '0',
  `mail` longtext,
  `trash` tinyint(1) NOT NULL DEFAULT '0',
  `muted` tinyint(1) NOT NULL DEFAULT '0',
  `lastOpened` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_mail`
--

LOCK TABLES `phone_mail` WRITE;
/*!40000 ALTER TABLE `phone_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_mailaccounts`
--

DROP TABLE IF EXISTS `phone_mailaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_mailaccounts` (
  `address` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `photo` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_mailaccounts`
--

LOCK TABLES `phone_mailaccounts` WRITE;
/*!40000 ALTER TABLE `phone_mailaccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_mailaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_messages`
--

DROP TABLE IF EXISTS `phone_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_messages` (
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `attachments` mediumtext,
  `time` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_messages`
--

LOCK TABLES `phone_messages` WRITE;
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_transactions`
--

DROP TABLE IF EXISTS `phone_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `time` bigint DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_transactions`
--

LOCK TABLES `phone_transactions` WRITE;
/*!40000 ALTER TABLE `phone_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tweets`
--

DROP TABLE IF EXISTS `phone_tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tweets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reply` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `authorimg` varchar(255) DEFAULT NULL,
  `authorrank` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `views` int NOT NULL DEFAULT '0',
  `likes` int NOT NULL DEFAULT '0',
  `time` bigint DEFAULT NULL,
  `likers` longtext,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tweets`
--

LOCK TABLES `phone_tweets` WRITE;
/*!40000 ALTER TABLE `phone_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_twitteraccounts`
--

DROP TABLE IF EXISTS `phone_twitteraccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitteraccounts` (
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `picture` varchar(512) DEFAULT NULL,
  `rank` varchar(50) NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitteraccounts`
--

LOCK TABLES `phone_twitteraccounts` WRITE;
/*!40000 ALTER TABLE `phone_twitteraccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitteraccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_vehicles`
--

DROP TABLE IF EXISTS `player_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `plate` varchar(15) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT 'pillboxgarage',
  `fuel` int DEFAULT '100',
  `engine` float DEFAULT '1000',
  `body` float DEFAULT '1000',
  `state` int DEFAULT '1',
  `depotprice` int NOT NULL DEFAULT '0',
  `drivingdistance` int DEFAULT NULL,
  `status` text,
  `balance` int NOT NULL DEFAULT '0',
  `paymentamount` int NOT NULL DEFAULT '0',
  `paymentsleft` int NOT NULL DEFAULT '0',
  `financetime` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_playervehicles_plate` (`plate`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`),
  CONSTRAINT `FK_playervehicles_players` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_vehicles`
--

LOCK TABLES `player_vehicles` WRITE;
/*!40000 ALTER TABLE `player_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19  0:06:10
