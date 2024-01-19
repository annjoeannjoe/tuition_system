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
-- Table structure for table `users_calendar_events`
--

DROP TABLE IF EXISTS `users_calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_calendar_events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_description` varchar(100) NOT NULL,
  `event_type` varchar(20) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `last_updated_at` datetime(6) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `posted_by_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_calendar_events_posted_by_id_afb98dfd_fk_users_admin_id` (`posted_by_id`),
  CONSTRAINT `users_calendar_events_posted_by_id_afb98dfd_fk_users_admin_id` FOREIGN KEY (`posted_by_id`) REFERENCES `users_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_calendar_events`
--

LOCK TABLES `users_calendar_events` WRITE;
/*!40000 ALTER TABLE `users_calendar_events` DISABLE KEYS */;
INSERT INTO `users_calendar_events` VALUES (1,'testing 123','event','2023-08-25 08:30:00.000000','2023-08-26 14:30:00.000000','2023-08-24 18:10:46.000000','2023-08-24 18:10:46.000000','Event Testing',NULL),(2,'Our centre will be closed on the upcoming Monday (28/08/23) to Thursday (31/08/23).','holiday','2023-08-28 00:00:00.000000','2023-08-31 23:59:00.000000','2023-08-24 15:45:48.369336','2023-08-24 15:45:48.369336','Test Holidays',NULL),(4,'Election of new committee for the board 2023/2024','meeting','2023-09-02 10:00:00.000000','2023-09-02 14:00:00.000000','2023-08-25 08:17:19.297908','2023-08-25 08:17:19.297908','Annual General Meeting',NULL),(5,'Deepavali Public Holiday','holiday','2023-11-12 00:00:00.000000','2023-11-12 23:59:00.000000','2023-11-10 07:16:36.935503','2023-11-10 07:16:36.935503','Deepavali Holiday',NULL),(6,'Christmas Party','holiday','2023-12-23 19:00:00.000000','2023-12-23 23:30:00.000000','2023-12-06 09:30:44.432561','2023-12-06 09:30:44.432561','Christmas Holiday',NULL),(8,'Our centre will be closed on 25/01/2024 (Thursday) due to Thaipusam celebration.','holiday','2024-01-25 00:00:00.000000','2024-01-25 23:59:00.000000','2024-01-15 03:02:52.421535','2024-01-15 03:02:52.421535','Thaipusam Holiday',1);
/*!40000 ALTER TABLE `users_calendar_events` ENABLE KEYS */;
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
