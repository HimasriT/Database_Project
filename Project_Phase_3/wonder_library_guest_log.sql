-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: wonder_library
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `guest_log`
--

DROP TABLE IF EXISTS `guest_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_log` (
  `Guest_ID` varchar(10) NOT NULL,
  `M_ID` varchar(10) NOT NULL,
  `Fname` varchar(300) NOT NULL,
  `Middle_name` varchar(300) DEFAULT NULL,
  `Lname` varchar(300) NOT NULL,
  `Address` varchar(300) DEFAULT NULL,
  `Contact` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Guest_ID`,`M_ID`),
  KEY `M_ID` (`M_ID`),
  CONSTRAINT `guest_log_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `gold` (`M_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_log`
--

LOCK TABLES `guest_log` WRITE;
/*!40000 ALTER TABLE `guest_log` DISABLE KEYS */;
INSERT INTO `guest_log` VALUES ('GU01','P001','John Wee','','Doe','222 W Campbell Road, Richardson, Texas','Ph no: 9090909'),('GU01','P005','Ram Jr','G','Doe','222 W Campbell Road, Richardson, Texas','Ph no: 1818181'),('GU02','P002','Johny W','','Depp','2218 W Campbell Road, Richardson, Texas','Ph no: 8989898'),('GU04','P144','Deepika','C','Patibandla','222 W Campbell Road, Richardson, Texas','Ph no: 8609976'),('GU04','P222','Praveena','G','T','1401 E Campbell Road, Addison, Texas','Ph no: 2030405'),('GU05','P222','Kinnera','Sai','Valli','3702 Halston Road, Austin, Texas','Ph no: 123456');
/*!40000 ALTER TABLE `guest_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06  9:16:32
