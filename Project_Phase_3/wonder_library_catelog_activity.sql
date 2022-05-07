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
-- Table structure for table `catelog_activity`
--

DROP TABLE IF EXISTS `catelog_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catelog_activity` (
  `CatMangID` varchar(10) NOT NULL,
  `Category_Num` int NOT NULL,
  `Catalog_Date` date NOT NULL,
  PRIMARY KEY (`CatMangID`,`Category_Num`,`Catalog_Date`),
  KEY `Category_Num` (`Category_Num`),
  CONSTRAINT `catelog_activity_ibfk_1` FOREIGN KEY (`Category_Num`) REFERENCES `category` (`Category_Number`) ON DELETE CASCADE,
  CONSTRAINT `catelog_activity_ibfk_2` FOREIGN KEY (`CatMangID`) REFERENCES `cataloging_manager` (`CatMang_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catelog_activity`
--

LOCK TABLES `catelog_activity` WRITE;
/*!40000 ALTER TABLE `catelog_activity` DISABLE KEYS */;
INSERT INTO `catelog_activity` VALUES ('P007',1,'2022-04-04'),('P007',1,'2022-04-05'),('P007',1,'2022-04-11'),('P007',1,'2022-04-18'),('P007',1,'2022-04-26'),('P007',1,'2022-05-04'),('P007',2,'2022-04-05'),('P007',2,'2022-04-06'),('P007',2,'2022-04-12'),('P007',2,'2022-04-20'),('P007',2,'2022-04-27'),('P007',2,'2022-05-05'),('P123',2,'2022-04-17'),('P007',3,'2022-04-04'),('P007',3,'2022-04-13'),('P007',3,'2022-04-19'),('P007',3,'2022-04-25'),('P007',3,'2022-05-03'),('P008',3,'2022-04-25');
/*!40000 ALTER TABLE `catelog_activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06  9:16:31
