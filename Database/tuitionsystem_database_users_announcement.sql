-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: tuitionsystem_database
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `users_announcement`
--

DROP TABLE IF EXISTS `users_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_announcement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `announcement_title` varchar(255) DEFAULT NULL,
  `announcement_content` longtext NOT NULL,
  `announcement_posted_at` datetime(6) NOT NULL,
  `announcement_posted_by_id` bigint DEFAULT NULL,
  `targeted_group` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_announcement_announcement_posted__cf0eac02_fk_users_use` (`announcement_posted_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_announcement`
--

LOCK TABLES `users_announcement` WRITE;
/*!40000 ALTER TABLE `users_announcement` DISABLE KEYS */;
INSERT INTO `users_announcement` VALUES (1,'Testing announcement','Hi all, kindly be informed that the today\'s class will be cancelled due to unforeseen circumstances.','2023-08-02 06:51:17.142892',1,'STUDENT'),(2,'Annual General Meeting on 8th August 2023','We will be having an Annual General Meeting (AGM) on 8th August 2023 (Tuesday) to elect our new committee for the board of 2023/2024. The AGM will be held from 10 am to 4 pm at Berry Group Tuition Centre. Lunch will be provided. All are encouraged to attend. Hope to see you!','2023-08-02 09:37:19.262355',1,'ADMIN'),(3,'Holiday Program','We are excited to announce that we are organizing a fantastic holiday programme for all! Join us for a memorable experience filled with fun and excitement. Lunch will be provided, ensuring you have all the energy you need to enjoy the day to the fullest. Engage in a wide range of interesting activities that await you, from thrilling outdoor adventures to creative workshops and fascinating explorations. Don\'t miss out on this amazing opportunity to make unforgettable memories with friends and family!','2023-08-02 11:12:08.151001',1,'ALL'),(6,'Updated Course Schedule for 2024','Here is the updated course schedule for each standard for year 2024.','2023-08-02 14:54:18.687054',3,'ALL'),(8,'Welcome to the Open Day!','The open day will be scheduled on 19/08/2023 (Saturday).','2023-08-02 15:12:11.141534',1,'STUDENT'),(12,'Tuition Centre Closure Notice','Our tuition centre will be closed on upcoming Monday (07/08/2023).','2023-08-04 03:13:35.785125',4,'ALL'),(15,'Deepavali Holiday','Dear all, please be informed that our centre will be closed on the upcoming Sunday (12/11/2023) due to the celebration of Deepavali.','2023-11-10 07:14:54.864230',1,'STUDENT'),(17,'Christmas Holiday Notice','Our centre will be closed on Monday (25th December 2023). Please take note.','2023-12-06 06:34:11.329225',1,'ALL');
/*!40000 ALTER TABLE `users_announcement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-19  9:01:37
