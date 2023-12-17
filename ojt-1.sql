-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: check
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `advisers`
--

DROP TABLE IF EXISTS `advisers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advisers` (
  `adviserID` int NOT NULL,
  `adviserName` varchar(45) NOT NULL,
  `adviserEmail` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `image` blob,
  PRIMARY KEY (`adviserID`),
  UNIQUE KEY `adviserID_UNIQUE` (`adviserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advisers`
--

LOCK TABLES `advisers` WRITE;
/*!40000 ALTER TABLE `advisers` DISABLE KEYS */;
INSERT INTO `advisers` VALUES (1,'Stevens, Amelia','amelia.stevens@example.com','$2b$10$78LKeo0LmG..I3zOKczr2uZ6RHoh4iKZc.vuHdqr1PEv.HWgdSQaS',NULL),(2,'Hayes, Benjamin','benjamin.hayes@example.com','$2b$10$1oBGejEJUYWQZTZ7V0xxuuZxYjduOiFMagjgxkCjiopy22A5uI0qm',NULL),(3,'Rodriguez, Michelle','michelle.rodriguez@example.com','$2b$10$d2eujojFxw0DeNFttys0JOj937fQK.tBY2VAiNL4kAQiRrx2aEt3W',NULL),(4,'Carter, Jonathan','jonathan.carter@example.com','$2b$10$D3KQLZvEP4N/.iynp2Ky5OFEPQvANl9Y/kdAj7.7gqycoafrOjCem',NULL),(5,'Foster, Emily','emily.foster@example.com','$2b$10$aM.1NkZJPr4yYwg4g.IIu.R8o3yG/hZ0zyBKN27Et/C51/38xs5fu',NULL),(6,'Anderson, Samuel','samuel.anderson@example.com','$2b$10$uqgZwaAeA09LFoVJjczX.uofGft2PmqQGV.G23Pkn9YT92YXcWx3a',NULL),(7,'Taylor, Victoria','victoria.taylor@example.com','$2b$10$vNNVoLCUZrcEFuLnTvo3.OnebIWLG7T1RETaxoAxk/S583F2VsA3q',NULL),(8,'Parker, Ben','richard.parker@example.com','$2b$10$06gRV7gaFRUNwcLp1f/Dqu.qhRDGgzbJy/.kxWeLR7mYcEpcaFq1u',NULL),(9,'Collins, Thompson','thompson.collins.example.com','$2b$10$MqKbILt8Dl32Z6/h2Q5pkOtZ4SXohLmjSYkkWBVFSerxPuC89fxNu',NULL),(10,'David, Allison','allison.david@example.com','$2b$10$2uDOiFER7SfkDau/YX8cmOubQA/HaYn1R6GKRRnV3MOgnwJdyJ5pu',NULL);
/*!40000 ALTER TABLE `advisers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `announcementid` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `senderid` varchar(45) NOT NULL,
  `recipientid` int NOT NULL,
  `subject` varchar(45) NOT NULL,
  `message` varchar(45) NOT NULL,
  PRIMARY KEY (`announcementid`),
  UNIQUE KEY `announcementid_UNIQUE` (`announcementid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'2023-12-03','4',1,'PASS YOUR REQUIREMENTS','MED, COA, ETC'),(2,'2023-12-03','4',2,'PASS YOUR REQUIREMENTS','MED, COA, ETC'),(3,'2023-12-03','4',3,'PASS YOUR REQUIREMENTS','MED, COA, ETC'),(4,'2023-12-03','4',0,'',''),(5,'2023-12-03','4',0,'asdvvv','vvvv'),(6,'2023-12-03','4',0,'sadvcqwvr','vasdc'),(7,'2023-12-03','4',1,'abcde','abcdefghijk'),(8,'2023-12-03','4',4,'abcde','abcdefghijk'),(9,'2023-12-03','4',5,'abcde','abcdefghijk'),(10,'2023-12-03','4',1,'12casdcas','cascsa'),(11,'2023-12-03','4',6,'12casdcas','cascsa'),(12,'2023-12-03','4',2,'12casdcas','cascsa'),(13,'2023-12-03','4',1,'sadvqw','sdvsacwq'),(14,'2023-12-03','4',6,'sadvqw','sdvsacwq'),(15,'2023-12-03','4',2,'sadvqw','sdvsacwq'),(16,'2023-12-05','4',1,'JANNSEN MAGPASA KA NA NG REQUIREMENTS','ASDCASVAS'),(17,'2023-12-05','4',6,'JANNSEN MAGPASA KA NA NG REQUIREMENTS','ASDCASVAS'),(18,'2023-12-05','4',5,'JANNSEN MAGPASA KA NA NG REQUIREMENTS','ASDCASVAS'),(22,'2023-12-08','4',5,'IFHWNRFEF','oiwgraekg'),(23,'2023-12-10','4',4,'asdc','asdasd'),(74,'2023-12-14','2',0,'asd','asdas'),(78,'2023-12-14','2',2,'Submit your report','thank you');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `companyid` int NOT NULL,
  `companyname` varchar(45) DEFAULT NULL,
  `companyaddress` varchar(45) DEFAULT NULL,
  `companytype` varchar(45) DEFAULT 'P, G',
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Accenture','Singapore','Private'),(2,'Microsoft','Hongkong','Government'),(3,'Netflix','US','Government'),(4,'Facebook','US','Private'),(5,'Trend-Micro','Philippines','Government'),(6,'Youtube','Hongkong','Private');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dailyreports`
--

DROP TABLE IF EXISTS `dailyreports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dailyreports` (
  `reportid` int NOT NULL,
  `internid` int NOT NULL,
  `companyid` int NOT NULL,
  `supervisorid` int NOT NULL,
  `date` date NOT NULL,
  `timeIn` time DEFAULT NULL,
  `timeOut` time DEFAULT NULL,
  `hours` int DEFAULT NULL,
  `workdescription` varchar(45) DEFAULT NULL,
  `verificationstatus` varchar(45) DEFAULT 'PENDING',
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`reportid`,`internid`),
  UNIQUE KEY `reportid_UNIQUE` (`reportid`),
  KEY `companyid_idx` (`companyid`),
  KEY `internid_idx` (`internid`),
  KEY `supervisor_id_idx` (`supervisorid`),
  CONSTRAINT `company_id` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`),
  CONSTRAINT `super_id` FOREIGN KEY (`supervisorid`) REFERENCES `supervisors` (`supervisorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dailyreports`
--

LOCK TABLES `dailyreports` WRITE;
/*!40000 ALTER TABLE `dailyreports` DISABLE KEYS */;
INSERT INTO `dailyreports` VALUES (1,1,1,110,'2023-10-06','08:00:00','16:00:00',8,'joshua nagooverthink','yes','yes');
/*!40000 ALTER TABLE `dailyreports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internrequirements`
--

DROP TABLE IF EXISTS `internrequirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internrequirements` (
  `internid` int NOT NULL,
  `reqid` int NOT NULL,
  `datesubmitted` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  KEY `internid_fk_idx` (`internid`),
  KEY `reqid_fk_idx` (`reqid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internrequirements`
--

LOCK TABLES `internrequirements` WRITE;
/*!40000 ALTER TABLE `internrequirements` DISABLE KEYS */;
INSERT INTO `internrequirements` VALUES (1,1,'2023-11-23','PENDING',NULL),(1,2,'2023-11-23','PENDING',NULL),(1,3,'2023-11-23','PENDING',NULL),(1,4,'2023-11-23','PENDING',NULL),(1,5,'2023-11-23','PENDING',NULL),(1,6,'2023-11-23','PENDING',NULL),(2,1,'2023-11-23','PENDING',NULL),(2,2,'2023-11-23','PENDING',NULL),(2,3,'2023-11-23','PENDING',NULL),(2,4,'2023-11-23','PENDING',NULL),(2,5,'2023-11-23','PENDING',NULL),(2,6,'2023-11-23','PENDING',NULL),(3,1,'2023-11-23','PENDING',NULL),(3,2,'2023-11-23','PENDING',NULL),(3,3,'2023-11-23','PENDING',NULL),(3,4,'2023-11-23','PENDING',NULL),(3,5,'2023-11-23','PENDING',NULL),(3,6,'2023-11-23','PENDING',NULL),(4,1,'2023-11-23','PENDING',NULL),(4,2,'2023-11-23','PENDING',NULL),(4,3,'2023-11-23','PENDING',NULL),(4,4,'2023-11-23','PENDING',NULL),(4,5,'2023-11-23','PENDING',NULL),(4,6,'2023-11-23','PENDING',NULL),(5,1,'2023-11-23','PENDING',NULL),(5,2,'2023-11-23','PENDING',NULL),(5,3,'2023-11-23','PENDING',NULL),(5,4,'2023-11-23','PENDING',NULL),(5,5,'2023-11-23','PENDING',NULL),(5,6,'2023-11-23','PENDING',NULL),(6,1,'2023-11-23','PENDING',NULL),(6,2,'2023-11-23','PENDING',NULL),(6,3,'2023-11-23','PENDING',NULL),(6,4,'2023-11-23','PENDING',NULL),(6,5,'2023-11-23','PENDING',NULL),(6,6,'2023-11-23','PENDING',NULL),(7,1,'2023-11-23','PENDING',NULL),(7,2,'2023-11-23','PENDING',NULL),(7,3,'2023-11-23','PENDING',NULL),(7,4,'2023-11-23','PENDING',NULL),(7,5,'2023-11-23','PENDING',NULL),(7,6,'2023-11-23','PENDING',NULL),(8,1,'2023-11-23','PENDING',NULL),(8,2,'2023-11-23','PENDING',NULL),(8,3,'2023-11-23','PENDING',NULL),(8,4,'2023-11-23','PENDING',NULL),(8,5,'2023-11-23','PENDING',NULL),(8,6,'2023-11-23','PENDING',NULL),(9,1,'2023-11-23','PENDING','3414'),(9,2,'2023-11-23','PENDING','qwersfewf'),(9,3,'2023-11-23','PENDING','asdffwef'),(9,4,'2023-11-23','PENDING','zxcv'),(9,5,'2023-11-23','PENDING','tyou'),(9,6,'2023-11-23','PENDING','ghjk'),(10,1,'2023-11-23','SUBMITTED','Please resubmit this to me by December 13'),(10,2,'2023-11-23','SUBMITTED','Please resubmit this to me by December 13'),(10,3,'2023-11-23','SUBMITTED',NULL),(10,4,'2023-11-23','SUBMITTED',NULL),(10,5,'2023-11-23','PENDING',NULL),(10,6,'2023-11-23','SUBMITTED',NULL),(11,1,'2023-11-23','PENDING',NULL),(11,2,'2023-11-23','PENDING',NULL),(11,3,'2023-11-23','PENDING',NULL),(11,4,'2023-11-23','PENDING',NULL),(11,5,'2023-11-23','PENDING',NULL),(11,6,'2023-11-23','PENDING',NULL),(12,1,'2023-11-23','PENDING',NULL),(12,2,'2023-11-23','PENDING',NULL),(12,3,'2023-11-23','PENDING',NULL),(12,4,'2023-11-23','PENDING',NULL),(12,5,'2023-11-23','PENDING',NULL),(12,6,'2023-11-23','PENDING',NULL),(13,1,'2023-11-23','PENDING',NULL),(13,2,'2023-11-23','PENDING',NULL),(13,3,'2023-11-23','PENDING',NULL),(13,4,'2023-11-23','PENDING',NULL),(13,5,'2023-11-23','PENDING',NULL),(13,6,'2023-11-23','PENDING',NULL),(14,1,'2023-11-23','PENDING','Please submit this form on or before december 13'),(14,2,'2023-11-23','PENDING','PLEASE SUBMIT THIS FORM ON OR BEFORE DECEMBER 15'),(14,3,'2023-11-23','PENDING',NULL),(14,4,'2023-11-23','PENDING',NULL),(14,5,'2023-11-23','PENDING',NULL),(14,6,'2023-11-23','PENDING',NULL),(15,1,'2023-11-23','PENDING','Please pass this on December 11'),(15,2,'2023-11-23','PENDING',NULL),(15,3,'2023-11-23','PENDING',NULL),(15,4,'2023-11-23','PENDING',NULL),(15,5,'2023-11-23','PENDING',NULL),(15,6,'2023-11-23','PENDING',NULL),(16,1,'2023-11-23','PENDING',NULL),(16,2,'2023-11-23','PENDING',NULL),(16,3,'2023-11-23','PENDING',NULL),(16,4,'2023-11-23','PENDING',NULL),(16,5,'2023-11-23','PENDING',NULL),(16,6,'2023-11-23','PENDING',NULL),(17,1,'','PENDING',NULL),(17,2,'','PENDING',NULL),(17,3,'','PENDING',NULL),(17,4,'','PENDING',NULL),(17,5,'','PENDING',NULL),(17,6,'','PENDING',NULL),(18,1,'','PENDING',NULL),(18,2,'','PENDING',NULL),(18,3,'','PENDING',NULL),(18,4,'','PENDING',NULL),(18,5,'','PENDING',NULL),(18,6,'','PENDING',NULL);
/*!40000 ALTER TABLE `internrequirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interns`
--

DROP TABLE IF EXISTS `interns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interns` (
  `internid` int NOT NULL,
  `password` varchar(60) NOT NULL,
  `adviserid` int NOT NULL,
  `studentid` int NOT NULL,
  `companyid` int DEFAULT NULL,
  `supervisorid` int DEFAULT NULL,
  `totalhours` int DEFAULT NULL,
  `worktype` varchar(45) DEFAULT NULL,
  `image` blob,
  `status` varchar(45) DEFAULT 'PENDING',
  PRIMARY KEY (`internid`),
  UNIQUE KEY `internid_UNIQUE` (`internid`),
  KEY `adviserid_idx` (`adviserid`),
  KEY `studentid_idx` (`studentid`),
  KEY `companyid_idx` (`companyid`),
  KEY `supervisorid_idx` (`supervisorid`),
  CONSTRAINT `adviserid` FOREIGN KEY (`adviserid`) REFERENCES `advisers` (`adviserID`),
  CONSTRAINT `companyid` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`),
  CONSTRAINT `studentid` FOREIGN KEY (`studentid`) REFERENCES `students` (`studentID`),
  CONSTRAINT `supervisorid` FOREIGN KEY (`supervisorid`) REFERENCES `supervisors` (`supervisorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interns`
--

LOCK TABLES `interns` WRITE;
/*!40000 ALTER TABLE `interns` DISABLE KEYS */;
INSERT INTO `interns` VALUES (1,'1234',1,2221023,1,110,NULL,'WFH',NULL,'ACCEPTED'),(2,'1234',2,2213241,2,120,180,'ON-SITE',NULL,'ACCEPTED'),(3,'1234',3,2211353,3,130,NULL,'WFH',NULL,'ACCEPTED'),(4,'1234',4,2211261,3,140,NULL,'ON-SITE',NULL,'ACCEPTED'),(5,'1234',5,2224514,4,150,240,'ON-SITE',NULL,'ACCEPTED'),(6,'1234',4,2225134,5,120,NULL,'WFH',NULL,'ACCEPTED'),(7,'1234',4,2225415,6,110,NULL,'ON-SITE',NULL,'ACCEPTED'),(8,'1234',5,2225134,1,110,240,'WFH',NULL,'ACCEPTED'),(9,'1234',5,2211010,3,NULL,NULL,NULL,NULL,'ACCEPTED'),(10,'1234',2,2223142,2,NULL,NULL,NULL,NULL,'ACCEPTED'),(11,'1234',4,2212312,NULL,NULL,NULL,NULL,NULL,'PENDING'),(12,'1234',2,2132132,NULL,NULL,NULL,NULL,NULL,'PENDING'),(13,'1234',5,2235482,2,NULL,NULL,NULL,NULL,'ACCEPTED'),(14,'1234',3,2247598,6,NULL,NULL,NULL,NULL,'PENDING'),(15,'1234',2,2214325,1,NULL,NULL,NULL,NULL,'PENDING'),(16,'1234',2,2298643,5,NULL,NULL,NULL,NULL,'PENDING'),(17,'1234',1,2132132,NULL,NULL,120,'WFH',NULL,'PENDING'),(18,'1234',2,2211010,1,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(19,'1234',3,2212312,2,NULL,160,'WFH',NULL,'PENDING'),(20,'1234',4,2214325,3,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(21,'1234',5,2222551,4,NULL,200,'WFH',NULL,'PENDING'),(22,'1234',6,2223142,5,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(23,'1234',7,2226879,6,NULL,160,'WFH',NULL,'PENDING'),(24,'1234',8,2226880,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(25,'1234',9,2226881,NULL,NULL,200,'WFH',NULL,'PENDING'),(26,'1234',10,2226882,NULL,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(27,'1234',1,2226883,1,NULL,120,'WFH',NULL,'PENDING'),(28,'1234',2,2226884,2,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(29,'1234',3,2226885,3,NULL,160,'WFH',NULL,'PENDING'),(30,'1234',4,2226886,4,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(31,'1234',5,2226887,5,NULL,200,'WFH',NULL,'PENDING'),(32,'1234',6,2226888,6,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(33,'1234',7,2226889,NULL,NULL,160,'WFH',NULL,'PENDING'),(34,'1234',8,2226890,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(35,'1234',9,2226891,1,NULL,200,'WFH',NULL,'PENDING'),(36,'1234',10,2226892,2,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(37,'1234',1,2226893,3,NULL,120,'WFH',NULL,'PENDING'),(38,'1234',2,2226894,4,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(39,'1234',3,2226895,5,NULL,160,'WFH',NULL,'PENDING'),(40,'1234',4,2226896,6,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(41,'1234',5,2226897,1,NULL,200,'WFH',NULL,'PENDING'),(42,'1234',6,2226898,2,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(43,'1234',7,2226899,NULL,NULL,160,'WFH',NULL,'PENDING'),(44,'1234',8,2226900,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(45,'1234',9,2226901,3,NULL,200,'WFH',NULL,'PENDING'),(46,'1234',10,2226902,4,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(47,'1234',1,2226903,5,NULL,120,'WFH',NULL,'PENDING'),(48,'1234',2,2226904,6,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(49,'1234',3,2226905,NULL,NULL,160,'WFH',NULL,'PENDING'),(50,'1234',4,2226906,1,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(51,'1234',5,2226907,2,NULL,200,'WFH',NULL,'PENDING'),(52,'1234',6,2226908,3,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(53,'1234',7,2226909,4,NULL,160,'WFH',NULL,'PENDING'),(54,'1234',8,2226910,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(55,'1234',9,2226911,5,NULL,200,'WFH',NULL,'PENDING'),(56,'1234',10,2226912,6,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(57,'1234',1,2226913,NULL,NULL,120,'WFH',NULL,'PENDING'),(58,'1234',2,2226914,1,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(59,'1234',3,2226915,2,NULL,160,'WFH',NULL,'PENDING'),(60,'1234',4,2226916,3,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(61,'1234',5,2226917,4,NULL,200,'WFH',NULL,'PENDING'),(62,'1234',6,2226918,5,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(63,'1234',7,2226919,6,NULL,160,'WFH',NULL,'PENDING'),(64,'1234',8,2226920,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(65,'1234',9,2226921,1,NULL,200,'WFH',NULL,'PENDING'),(66,'1234',10,2226922,2,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(67,'1234',1,2226923,NULL,NULL,120,'WFH',NULL,'PENDING'),(68,'1234',2,2226924,3,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(69,'1234',3,2226925,4,NULL,160,'WFH',NULL,'PENDING'),(70,'1234',4,2226926,5,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(71,'1234',5,2226927,6,NULL,200,'WFH',NULL,'PENDING'),(72,'1234',6,2226928,NULL,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(73,'1234',7,2226929,1,NULL,160,'WFH',NULL,'PENDING'),(74,'1234',8,2226930,2,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(75,'1234',9,2226931,3,NULL,200,'WFH',NULL,'PENDING'),(76,'1234',10,2226932,4,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(77,'1234',1,2226933,5,NULL,120,'WFH',NULL,'PENDING'),(78,'1234',2,2226934,6,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(79,'1234',3,2226935,NULL,NULL,160,'WFH',NULL,'PENDING'),(80,'1234',4,2226936,1,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(81,'1234',5,2226937,2,NULL,200,'WFH',NULL,'PENDING'),(82,'1234',6,2226938,3,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(83,'1234',7,2226939,4,NULL,160,'WFH',NULL,'PENDING'),(84,'1234',8,2226940,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(85,'1234',9,2226941,5,NULL,200,'WFH',NULL,'PENDING'),(86,'1234',10,2226942,6,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(87,'1234',1,2226943,NULL,NULL,120,'WFH',NULL,'PENDING'),(88,'1234',2,2226944,1,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(89,'1234',3,2226945,2,NULL,160,'WFH',NULL,'PENDING'),(90,'1234',4,2226946,3,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(91,'1234',5,2226947,4,NULL,200,'WFH',NULL,'PENDING'),(92,'1234',6,2226948,5,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(93,'1234',7,2226949,6,NULL,160,'WFH',NULL,'PENDING'),(94,'1234',8,2226950,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(95,'1234',9,2226951,1,NULL,200,'WFH',NULL,'PENDING'),(96,'1234',10,2226952,2,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(97,'1234',1,2226953,3,NULL,120,'WFH',NULL,'PENDING'),(98,'1234',2,2226954,4,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(99,'1234',3,2226955,5,NULL,160,'WFH',NULL,'PENDING'),(100,'1234',4,2226956,6,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(101,'1234',5,2226957,1,NULL,200,'WFH',NULL,'PENDING'),(102,'1234',6,2226958,2,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(103,'1234',7,2226959,3,NULL,160,'WFH',NULL,'PENDING'),(104,'1234',8,2226960,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(105,'1234',9,2226961,5,NULL,200,'WFH',NULL,'PENDING'),(106,'1234',10,2226962,6,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(107,'1234',1,2226963,NULL,NULL,120,'WFH',NULL,'PENDING'),(108,'1234',2,2226964,1,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(109,'1234',3,2226965,2,NULL,160,'WFH',NULL,'PENDING'),(110,'1234',4,2226966,3,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(111,'1234',5,2226967,4,NULL,200,'WFH',NULL,'PENDING'),(112,'1234',6,2226968,5,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(113,'1234',7,2226969,6,NULL,160,'WFH',NULL,'PENDING'),(114,'1234',8,2226970,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(137,'1234',1,2226902,3,NULL,120,'WFH',NULL,'PENDING'),(138,'1234',2,2226903,4,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(139,'1234',3,2226904,5,NULL,160,'WFH',NULL,'PENDING'),(140,'1234',4,2226905,6,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(141,'1234',5,2226906,1,NULL,200,'WFH',NULL,'PENDING'),(142,'1234',6,2226907,2,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(143,'1234',7,2226908,3,NULL,160,'WFH',NULL,'PENDING'),(144,'1234',8,2226909,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(145,'1234',9,2226910,5,NULL,200,'WFH',NULL,'PENDING'),(146,'1234',10,2226911,6,NULL,0,'ON_SITE',NULL,'ACCEPTED'),(147,'1234',1,2226912,NULL,NULL,120,'WFH',NULL,'PENDING'),(148,'1234',2,2226913,1,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(149,'1234',3,2226914,2,NULL,160,'WFH',NULL,'PENDING'),(150,'1234',4,2226915,3,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(151,'1234',5,2226916,4,NULL,200,'WFH',NULL,'PENDING'),(152,'1234',6,2226917,5,NULL,80,'ON_SITE',NULL,'ACCEPTED'),(153,'1234',7,2226918,6,NULL,160,'WFH',NULL,'PENDING'),(154,'1234',8,2226919,NULL,NULL,40,'ON_SITE',NULL,'ACCEPTED'),(155,'1234',9,2226920,1,NULL,200,'WFH',NULL,'PENDING'),(156,'1234',10,2226921,2,NULL,0,'ON_SITE',NULL,'ACCEPTED');
/*!40000 ALTER TABLE `interns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirements`
--

DROP TABLE IF EXISTS `requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirements` (
  `reqid` int NOT NULL,
  `requirementname` varchar(45) NOT NULL,
  PRIMARY KEY (`reqid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirements`
--

LOCK TABLES `requirements` WRITE;
/*!40000 ALTER TABLE `requirements` DISABLE KEYS */;
INSERT INTO `requirements` VALUES (1,'Application Letter'),(2,'Memorandum of Agreement'),(3,'Curriculum Vitae'),(4,'Recommendation Letter'),(5,'Medical Certificate'),(6,'Dental Certificate');
/*!40000 ALTER TABLE `requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `studentID` int NOT NULL,
  `studentName` varchar(45) NOT NULL,
  `course` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `classcode` varchar(45) NOT NULL,
  PRIMARY KEY (`studentID`),
  UNIQUE KEY `studentID_UNIQUE` (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2132132,'Raya Colcol','BSCS','3','9375'),(2211010,'Peterjan Antonio','BSCS','3','9375'),(2211261,'Martel Molintas','BSCS','3','9375'),(2211353,'Bads Villalobos','BSCS','3','9375'),(2212312,'Kaizer Gura','BSCS','3','9375'),(2213241,'Shane Saguid','BSCS','3','9375'),(2214325,'Dennis Dumlao','BSCS','3','9375'),(2221023,'AJ Ramos','BSCS','3','9375'),(2222551,'Daniel David','BSCS','3','9375'),(2223142,'Kaizer Oman','BSCS','3','9376'),(2224514,'Ariel Tarlit','BSCS','3','9376'),(2225134,'Claire Tumaliuan','BSCS','3','9376'),(2225415,'Kiko Abella','BSCS','3','9376'),(2226879,'John Karl','BSCS','3','9376'),(2226880,'Alice Smith','BSCS','3','9376'),(2226881,'Bob Johnson','BSCS','3','9376'),(2226882,'Catherine Brown','BSCS','3','9376'),(2226883,'David Miller','BSCS','3','9376'),(2226884,'Eva Wilson','BSCS','3','9376'),(2226885,'Frank Davis','BSCS','3','9376'),(2226886,'Grace Taylor','BSCS','3','9376'),(2226887,'Henry Martinez','BSCS','3','9376'),(2226888,'Ivy Anderson','BSCS','3','9377'),(2226889,'Jack White','BSCS','3','9377'),(2226890,'Kelly Harris','BSCS','3','9377'),(2226891,'Liam Jackson','BSCS','3','9377'),(2226892,'Mia Brown','BSCS','3','9377'),(2226893,'Noah Garcia','BSCS','3','9377'),(2226894,'Olivia Wilson','BSCS','3','9377'),(2226895,'Peter Taylor','BSCS','3','9377'),(2226896,'Quinn Johnson','BSCS','3','9377'),(2226897,'Rachel Smith','BSCS','3','9377'),(2226898,'Samuel Martinez','BSCS','3','9377'),(2226899,'Tiffany Davis','BSCS','3','9377'),(2226900,'Ulysses Anderson','BSCS','3','9378'),(2226901,'Violet White','BSCS','3','9378'),(2226902,'Walter Harris','BSCS','3','9378'),(2226903,'Xander Miller','BSCS','3','9378'),(2226904,'Yasmine Taylor','BSCS','3','9378'),(2226905,'Zane Jackson','BSCS','3','9378'),(2226906,'Ava Garcia','BSCS','3','9378'),(2226907,'Benjamin Wilson','BSCS','3','9378'),(2226908,'Charlotte Taylor','BSCS','3','9378'),(2226909,'Daniel Johnson','BSCS','3','9378'),(2226910,'Ella Brown','BSCS','3','9379'),(2226911,'Finn Davis','BSCS','3','9379'),(2226912,'Gabriella Miller','BSCS','3','9379'),(2226913,'Henry Taylor','BSCS','3','9379'),(2226914,'Isabella Johnson','BSCS','3','9379'),(2226915,'James Smith','BSCS','3','9379'),(2226916,'Katherine Harris','BSCS','3','9379'),(2226917,'Liam Wilson','BSCS','3','9379'),(2226918,'Mia Taylor','BSCS','3','9379'),(2226919,'Noah Anderson','BSCS','3','9379'),(2226920,'Olivia White','BSCS','3','9380'),(2226921,'Peter Harris','BSCS','3','9380'),(2226922,'Quinn Smith','BSCS','3','9380'),(2226923,'Rachel Davis','BSCS','3','9380'),(2226924,'Samuel Taylor','BSCS','3','9380'),(2226925,'Tiffany Miller','BSCS','3','9380'),(2226926,'Ulysses White','BSCS','3','9380'),(2226927,'Violet Anderson','BSCS','3','9380'),(2226928,'Walter Wilson','BSCS','3','9380'),(2226929,'Xander Taylor','BSCS','3','9380'),(2226930,'Yasmine Johnson','BSCS','3','9381'),(2226931,'Zane Brown','BSCS','3','9381'),(2226932,'Ava Taylor','BSCS','3','9381'),(2226933,'Benjamin Johnson','BSCS','3','9381'),(2226934,'Charlotte Garcia','BSCS','3','9381'),(2226935,'Daniel Davis','BSCS','3','9381'),(2226936,'Ella White','BSCS','3','9381'),(2226937,'Finn Taylor','BSCS','3','9381'),(2226938,'Gabriella Anderson','BSCS','3','9381'),(2226939,'Henry Smith','BSCS','3','9381'),(2226940,'Isabella Harris','BSCS','3','9382'),(2226941,'James Miller','BSCS','3','9382'),(2226942,'Katherine Wilson','BSCS','3','9382'),(2226943,'Liam Anderson','BSCS','3','9382'),(2226944,'Mia Taylor','BSCS','3','9382'),(2226945,'Noah White','BSCS','3','9382'),(2226946,'Olivia Davis','BSCS','3','9382'),(2226947,'Peter Garcia','BSCS','3','9382'),(2226948,'Quinn Smith','BSCS','3','9382'),(2226949,'Rachel Brown','BSCS','3','9382'),(2226950,'Samuel Taylor','BSCS','3','9383'),(2226951,'Tiffany Johnson','BSCS','3','9383'),(2226952,'Ulysses Brown','BSCS','3','9383'),(2226953,'Violet Harris','BSCS','3','9383'),(2226954,'Walter Smith','BSCS','3','9383'),(2226955,'Xander Davis','BSCS','3','9383'),(2226956,'Yasmine Wilson','BSCS','3','9383'),(2226957,'Zane Taylor','BSCS','3','9383'),(2226958,'Ava Garcia','BSCS','3','9383'),(2226959,'Benjamin Anderson','BSCS','3','9383'),(2226960,'Charlotte White','BSCS','3','9384'),(2226961,'Daniel Smith','BSCS','3','9384'),(2226962,'Ella Davis','BSCS','3','9384'),(2226963,'Finn Taylor','BSCS','3','9384'),(2226964,'Gabriella White','BSCS','3','9384'),(2226965,'Henry Garcia','BSCS','3','9384'),(2226966,'Isabella Anderson','BSCS','3','9384'),(2226967,'James Brown','BSCS','3','9384'),(2226968,'Katherine Harris','BSCS','3','9384'),(2226969,'Liam Taylor','BSCS','3','9384'),(2226970,'Mia Johnson','BSCS','3','9385'),(2235482,'Kobe Rosales','BSCS','3','9376'),(2247598,'Kyle Sinaking','BSCS','3','9376'),(2298643,'Gregg Balagtey','BSCS','3','9376');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisors`
--

DROP TABLE IF EXISTS `supervisors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervisors` (
  `supervisorid` int NOT NULL,
  `supervisorname` varchar(45) DEFAULT NULL,
  `supervisoremail` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `companyid` int DEFAULT NULL,
  PRIMARY KEY (`supervisorid`),
  KEY `companyid_idx` (`companyid`),
  CONSTRAINT `companid` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisors`
--

LOCK TABLES `supervisors` WRITE;
/*!40000 ALTER TABLE `supervisors` DISABLE KEYS */;
INSERT INTO `supervisors` VALUES (110,'Doja Kat','kat@email.com','QA Lead',1),(120,'Nath Nyel','nyel@email.com','QA Lead',2),(130,'Cris P Bacon','cris@email.com','Lead Designer',3),(140,'Kev Vin','kev@email.com','UI/UX Lead',4),(150,'Vince Karl','karl@email.com','Frontend Manager',5);
/*!40000 ALTER TABLE `supervisors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17  9:36:54
