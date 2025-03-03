-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: librarydb
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(40) DEFAULT NULL,
  `AccountCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AccountStatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('abc','abc123','2025-02-11 05:00:06',1),('admin','admin','2020-01-19 18:59:00',1),('superadmin','superadmin','2020-01-19 18:59:27',1),('tyu','tyu','2020-01-19 19:08:08',0);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booklist`
--

DROP TABLE IF EXISTS `booklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booklist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Publisher` varchar(50) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `IsAvailable` tinyint(1) DEFAULT '1',
  `Quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booklist`
--

LOCK TABLES `booklist` WRITE;
/*!40000 ALTER TABLE `booklist` DISABLE KEYS */;
INSERT INTO `booklist` VALUES (1,'Meditations','Marcus Aurelius','Modern Library','',NULL,1,1),(2,'Histories of Nations','Peter Furtado','James & Hudson','',NULL,0,1),(3,'Great Cat Tales','Lesley O\'Mara','Carroll & Graff','',NULL,1,1),(4,'Mein Kampo','Adolf Hitler','JAICO','',NULL,1,1),(5,'Contagious','Jonah Berger','Simon & Schuster','Non Fiction','Self-help Book',1,1),(6,'Introduction to Philosophy','Christine Ramos','Rex Publishing','Non Fiction','Textbook',1,1),(7,'Jose Rizal','Gregorio Zaide','All Nations Publishing','Non Fiction','Biography/Autobiography',0,1),(8,'ERIC','POGI','POGI PUBLISHING','Fiction','Action and Adventure',1,1),(10,'Meditations','Marcus Aurelius','Modern Library','',NULL,1,1),(11,'qqq','www','eee','Fiction','Action and Adventure',0,1),(12,'qqq','www','eee','Fiction','Action and Adventure',1,1),(13,'qqq','www','eee','Fiction','Action and Adventure',1,1),(14,'tt','yy','uu','Fiction','Drama',1,1),(15,'tt','yy','uu','Fiction','Drama',1,1),(16,'Emotional Intelligence','Daniel Goleman','Bantam Books','Non Fiction','Narrative Nonfiction',1,1),(17,'Emotional Intelligence','Daniel Goleman','Bantam Books','Non Fiction','Narrative Nonfiction',1,1),(18,'Emotional Intelligence','Daniel Goleman','Bantam Books','Non Fiction','Narrative Nonfiction',1,1),(19,'Emotional Intelligence','Daniel Goleman','Bantam Books','Non Fiction','Narrative Nonfiction',1,1),(20,'Art Of War','Sun Tzu','Delta PaperBacks','Non Fiction','Reference Books',1,1),(21,'Art Of War','Sun Tzu','Delta PaperBacks','Non Fiction','Reference Books',1,1),(22,'Art Of War','Sun Tzu','Delta PaperBacks','Non Fiction','Reference Books',1,1),(23,'Art Of War','Sun Tzu','Delta PaperBacks','Non Fiction','Reference Books',1,1),(24,'Art Of War','Sun Tzu','Delta PaperBacks','Non Fiction','Reference Books',0,1);
/*!40000 ALTER TABLE `booklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuedbooklist`
--

DROP TABLE IF EXISTS `issuedbooklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuedbooklist` (
  `BookID` varchar(10) NOT NULL,
  `MemberID` varchar(10) NOT NULL,
  `DateIssued` datetime NOT NULL,
  `ReturnDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuedbooklist`
--

LOCK TABLES `issuedbooklist` WRITE;
/*!40000 ALTER TABLE `issuedbooklist` DISABLE KEYS */;
INSERT INTO `issuedbooklist` VALUES ('B002','M001','2020-01-09 10:27:55','2020-01-17 00:00:00'),('B007','M003','2020-01-12 14:13:34','2020-01-17 00:00:00'),('24','1','2020-01-20 10:03:30','2020-01-25 00:00:00'),('11','1','2020-01-20 11:09:15','2020-01-25 00:00:00');
/*!40000 ALTER TABLE `issuedbooklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberlist`
--

DROP TABLE IF EXISTS `memberlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberlist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` char(100) DEFAULT NULL,
  `Email` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberlist`
--

LOCK TABLES `memberlist` WRITE;
/*!40000 ALTER TABLE `memberlist` DISABLE KEYS */;
INSERT INTO `memberlist` VALUES (1,'Eric dela Cruz','eric@mail.com'),(2,'Marion Dela Cruz','marion@mail.com');
/*!40000 ALTER TABLE `memberlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receivedbooklist`
--

DROP TABLE IF EXISTS `receivedbooklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receivedbooklist` (
  `BookID` varchar(10) NOT NULL,
  `MemberID` varchar(10) NOT NULL,
  `DateReturned` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receivedbooklist`
--

LOCK TABLES `receivedbooklist` WRITE;
/*!40000 ALTER TABLE `receivedbooklist` DISABLE KEYS */;
INSERT INTO `receivedbooklist` VALUES ('B001','M001','2020-01-09 09:46:38'),('B001','M001','2020-01-19 22:19:52'),('24','1','2020-01-20 10:03:03');
/*!40000 ALTER TABLE `receivedbooklist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 16:17:47
