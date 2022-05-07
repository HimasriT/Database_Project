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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `PID` varchar(10) NOT NULL,
  `FName` varchar(250) NOT NULL,
  `Middle_Name` varchar(250) NOT NULL,
  `Lname` varchar(250) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Address` varchar(300) NOT NULL,
  PRIMARY KEY (`PID`),
  CONSTRAINT `Check_person` CHECK ((not((`PID` like _utf8mb4'P[0-9][0-9][0-9]'))))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('P001','Tottempudi','Sekhar','Chandra','1991-10-22','M','222 W Campbell Road, Richardson, Texas'),('P002','Hima','Sri','Tipirineni','1997-06-08','F','2218 W Campbell Road, Richardson, Texas'),('P003','Ram','Koteshwar','Kandimala','1996-06-17','M','190 W Renner Road, Richardson, Texas'),('P004','Rama','Rao','M','2000-04-26','M','222 N Garland Road, Richardson, Texas'),('P005','Naga','Sundar','Mysore','1995-04-29','M','222 W Campbell Road, Richardson, Texas'),('P006','Hamsini','S','Paladugu','1998-05-25','F','1234 North Side Apartments Road, Richardson, Texas'),('P007','Harsha','Shri','Gandani','2000-06-05','F','387 Frankford Road, Richardson, Texas'),('P008','Mani','Sri','Henry','1999-02-27','M','756 Chameli Road, Richardson, Texas'),('P009','Anusha','Sai','Sharma','1975-08-01','F','903 Rutherford Road, Richardson, Texas'),('P010','Hima','Bindu','Gutta','1989-12-06','F','5634 Franklyn Road, Richardson, Texas'),('P111','Surya','B','Munde','1982-12-09','M','Mysore Palace 111'),('P121','Siddharth','K','Sharma','1987-05-21','M','Mumbai'),('P122','Varma','O','Raj','1993-12-15','M','Karnataka'),('P123','Karna','H','Singh','1985-04-21','M','Dallas 75252'),('P125','Sardar','V','Patel','1997-11-21','M','UP'),('P129','Vicky','K','Sharma','1996-11-17','M','Kammanahalli, Bangalore'),('P144','Preethi','L','Reddy','1996-11-23','F','Mysore 560020'),('P210','Sai','Venky','Palatla','1997-03-08','M','Cortland Canyon Creek 1327'),('P222','Aishwarya','A','Rai','1979-05-18','F','Mumbai 222'),('P421','Abhi','A','Ram','1998-04-16','M','The Pearl 1632'),('P840','Venky','H','Temi','1997-10-27','M','The Pearl 1632'),('P910','Sid','P','Sriram','1985-10-17','M','Tamil Nadu 45674');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06  9:16:34
