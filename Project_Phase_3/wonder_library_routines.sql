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
-- Temporary view structure for view `potential_gold_member`
--

DROP TABLE IF EXISTS `potential_gold_member`;
/*!50001 DROP VIEW IF EXISTS `potential_gold_member`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `potential_gold_member` AS SELECT 
 1 AS `PID`,
 1 AS `Fname`,
 1 AS `Middle_name`,
 1 AS `LName`,
 1 AS `Phone_num`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `best_rating_publisher`
--

DROP TABLE IF EXISTS `best_rating_publisher`;
/*!50001 DROP VIEW IF EXISTS `best_rating_publisher`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `best_rating_publisher` AS SELECT 
 1 AS `Publisher_name`,
 1 AS `Average_rating_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `popular_author`
--

DROP TABLE IF EXISTS `popular_author`;
/*!50001 DROP VIEW IF EXISTS `popular_author`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `popular_author` AS SELECT 
 1 AS `Author_ID`,
 1 AS `Author_Name`,
 1 AS `No_of_books`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `popular_books`
--

DROP TABLE IF EXISTS `popular_books`;
/*!50001 DROP VIEW IF EXISTS `popular_books`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `popular_books` AS SELECT 
 1 AS `BookID`,
 1 AS `Title`,
 1 AS `No_of_books`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_gold_member`
--

DROP TABLE IF EXISTS `top_gold_member`;
/*!50001 DROP VIEW IF EXISTS `top_gold_member`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_gold_member` AS SELECT 
 1 AS `Member_ID`,
 1 AS `FName`,
 1 AS `LName`,
 1 AS `Enrollment_date`,
 1 AS `Number_of_books`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `potential_gold_member`
--

/*!50001 DROP VIEW IF EXISTS `potential_gold_member`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `potential_gold_member` AS select `p`.`PID` AS `PID`,`p`.`FName` AS `Fname`,`p`.`Middle_Name` AS `Middle_name`,`p`.`Lname` AS `LName`,`ph`.`Phone_num` AS `Phone_num` from (((((select `br`.`PID` AS `PID`,count(`br`.`PID`) AS `Counts` from `borrowing` `br` where (`br`.`Date_of_issue` > cast((curdate() - interval 1 year) as date)) group by `br`.`PID`) `ct` join `silver` `sm`) join `member` `m`) join `person` `p`) join `phone_numbers` `ph`) where ((`ct`.`Counts` = 12) and (`m`.`Member_ID` = `ct`.`PID`) and (`p`.`PID` = `ct`.`PID`) and (`sm`.`M_ID` = `ct`.`PID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `best_rating_publisher`
--

/*!50001 DROP VIEW IF EXISTS `best_rating_publisher`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `best_rating_publisher` AS select `pr`.`Publisher_Name` AS `Publisher_name`,`cr`.`Average_rating_score` AS `Average_rating_score` from ((select `ps`.`Book_ID` AS `Book_ID`,`ps`.`Publisher_ID` AS `Publisher_ID`,avg(`co`.`Rating`) AS `Average_rating_score` from (`publishes` `ps` join `comments_on` `co` on((`ps`.`Book_ID` = `co`.`Book_ID`))) group by `ps`.`Book_ID`) `cr` join `publisher` `pr`) where ((`pr`.`Publisher_ID` = `cr`.`Publisher_ID`) and (`cr`.`Average_rating_score` >= 4.0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `popular_author`
--

/*!50001 DROP VIEW IF EXISTS `popular_author`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popular_author` AS select `au`.`Author_ID` AS `Author_ID`,`au`.`Author_Name` AS `Author_Name`,count(0) AS `No_of_books` from (((`author` `au` join `writes` `w`) join `book` `bk`) join `borrowing` `br`) where ((`au`.`Author_ID` = `w`.`Author_ID`) and (`w`.`Book_ID` = `bk`.`Book_ID`) and (`bk`.`Book_ID` = `br`.`BookID`)) group by `br`.`BookID` order by `No_of_books` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `popular_books`
--

/*!50001 DROP VIEW IF EXISTS `popular_books`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popular_books` AS select `br`.`BookID` AS `BookID`,`bk`.`Title` AS `Title`,count(0) AS `No_of_books` from (`book` `bk` join `borrowing` `br` on((`bk`.`Book_ID` = `br`.`BookID`))) where (`br`.`Date_of_issue` >= (curdate() - interval 1 year)) group by `br`.`BookID` order by `No_of_books` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_gold_member`
--

/*!50001 DROP VIEW IF EXISTS `top_gold_member`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_gold_member` AS select `m`.`Member_ID` AS `Member_ID`,`p`.`FName` AS `FName`,`p`.`Lname` AS `LName`,`m`.`Enrollment_date` AS `Enrollment_date`,count(0) AS `Number_of_books` from (((`person` `p` join `member` `m` on((`p`.`PID` = `m`.`Member_ID`))) join `gold` `g` on((`g`.`M_ID` = `m`.`Member_ID`))) join `borrowing` `br` on((`br`.`PID` = `p`.`PID`))) where (`br`.`Date_of_issue` >= (curdate() - interval 1 month)) group by `m`.`Member_ID`,`p`.`FName`,`p`.`Lname`,`m`.`Enrollment_date` having (`Number_of_books` > 5) order by `Number_of_books` desc */;
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

-- Dump completed on 2022-05-06  9:16:34
