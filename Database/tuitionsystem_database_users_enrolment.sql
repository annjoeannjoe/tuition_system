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
-- Table structure for table `users_enrolment`
--

DROP TABLE IF EXISTS `users_enrolment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_enrolment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `request_status` varchar(50) NOT NULL,
  `request_created_at` datetime(6) NOT NULL,
  `request_responded_at` datetime(6) DEFAULT NULL,
  `enrolment_status` varchar(50) NOT NULL,
  `enrol_at` datetime(6) DEFAULT NULL,
  `is_stop` tinyint(1) NOT NULL,
  `stop_at` datetime(6) DEFAULT NULL,
  `remark` longtext NOT NULL,
  `accumulated_enrol_days` int unsigned NOT NULL,
  `student_id` bigint NOT NULL,
  `tuition_classes_id` bigint NOT NULL,
  `request_type` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_enrolment_student_id_03ac4e53_fk_users_student_id` (`student_id`),
  KEY `users_enrolment_tuition_classes_id_4b668efd_fk_users_tui` (`tuition_classes_id`),
  CONSTRAINT `users_enrolment_student_id_03ac4e53_fk_users_student_id` FOREIGN KEY (`student_id`) REFERENCES `users_student` (`id`),
  CONSTRAINT `users_enrolment_tuition_classes_id_4b668efd_fk_users_tui` FOREIGN KEY (`tuition_classes_id`) REFERENCES `users_tuition_classes` (`id`),
  CONSTRAINT `users_enrolment_chk_1` CHECK ((`accumulated_enrol_days` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_enrolment`
--

LOCK TABLES `users_enrolment` WRITE;
/*!40000 ALTER TABLE `users_enrolment` DISABLE KEYS */;
INSERT INTO `users_enrolment` VALUES (1,'Accepted','2023-08-23 08:23:36.835105','2023-09-26 04:00:23.624408','	Active','2023-09-26 04:00:23.624408',0,NULL,'',0,27,3,'Add'),(2,'Rejected','2023-08-23 11:16:10.354249','2023-09-26 06:41:24.407840','Active','2023-09-26 06:41:24.407840',0,NULL,'',0,28,11,'Add'),(3,'Accepted','2023-08-23 11:16:10.359476','2023-09-26 09:10:54.363745','	Active','2023-09-26 09:10:54.363745',0,NULL,'',0,28,14,'Add'),(4,'Accepted','2023-08-23 11:33:52.404857','2023-11-10 08:14:28.640334','Active','2023-11-10 08:14:28.640334',0,NULL,'',0,29,18,'Add'),(5,'Accepted','2023-08-23 11:33:52.407858','2024-01-17 03:14:05.165766','Active','2024-01-17 03:14:05.165766',0,NULL,'',0,29,22,'Add'),(6,'Pending','2023-08-23 15:00:05.312265',NULL,'	Active',NULL,0,NULL,'',0,30,3,'Add'),(7,'Pending','2023-08-23 15:23:04.552438',NULL,'	Active',NULL,0,NULL,'',0,31,8,'Add'),(8,'Pending','2023-08-23 15:23:04.556424',NULL,'	Active',NULL,0,NULL,'',0,31,11,'Add'),(9,'Accepted','2023-08-23 15:39:33.019271','2023-10-26 09:29:27.680623','Active','2023-10-26 09:29:27.680623',0,NULL,'',0,33,59,'Add'),(10,'Pending','2023-08-23 15:43:43.203922',NULL,'	Active',NULL,0,NULL,'',0,34,49,'Add'),(11,'Pending','2023-08-23 15:43:43.207949',NULL,'	Active',NULL,0,NULL,'',0,34,24,'Add'),(12,'Accepted','2023-08-23 15:43:43.211891','2023-10-26 08:39:42.376584','Active','2023-10-26 08:39:42.376584',0,NULL,'',0,34,47,'Add'),(13,'Pending','2023-08-23 15:43:43.214885',NULL,'	Active',NULL,0,NULL,'',0,34,28,'Add'),(14,'Accepted','2023-08-23 15:51:59.325643','2023-10-04 11:17:53.314120','Active','2023-10-04 11:17:53.314120',0,NULL,'',0,35,52,'Add'),(15,'Accepted','2023-08-23 15:51:59.330589','2023-10-04 11:17:58.595284','Active','2023-10-04 11:17:58.595284',0,NULL,'',0,35,29,'Add'),(16,'Accepted','2023-08-23 15:51:59.334565','2023-10-04 11:18:03.032941','Active','2023-10-04 11:18:03.032941',0,NULL,'',0,35,59,'Add'),(17,'Accepted','2023-08-26 13:20:18.124306','2023-10-03 07:38:11.241998','Active','2023-10-03 07:38:11.241998',0,NULL,'',0,36,30,'Add'),(18,'Accepted','2023-08-26 13:20:18.132225','2023-10-03 07:38:22.352243','Active','2023-10-03 07:38:22.352243',0,NULL,'',0,36,53,'Add'),(22,'Pending','2023-09-13 11:45:56.851655',NULL,'	Active',NULL,0,NULL,'',0,32,31,'Add'),(23,'Accepted','2023-09-13 11:48:26.795369','2023-10-26 12:25:05.808640','Active','2023-10-26 12:25:05.808640',0,NULL,'',0,32,59,'Add'),(24,'Rejected','2023-09-13 11:49:52.558239','2024-01-15 12:14:05.741316','Not Admitted','2024-01-15 12:14:05.741316',0,NULL,'',0,32,26,'Add'),(26,'Accepted','2023-09-13 15:03:30.909581','2023-12-06 09:02:10.243073','Active','2023-12-06 09:02:10.243073',0,NULL,'',0,33,47,'Add'),(27,'Accepted','2023-09-13 15:05:06.058059','2024-01-15 12:13:58.184321','Active','2024-01-15 12:13:58.184321',0,NULL,'',0,33,31,'Add'),(29,'Accepted','2023-09-24 09:27:14.311814','2024-01-15 12:14:01.646062','Active','2024-01-15 12:14:01.646062',0,NULL,'',0,30,4,'Add'),(30,'Pending','2023-09-24 09:35:28.422374',NULL,'	Active',NULL,0,NULL,'',0,30,2,'Add'),(31,'Pending','2023-09-24 09:36:18.266133',NULL,'	Active',NULL,0,NULL,'',0,28,7,'Add'),(32,'Pending','2023-09-24 09:38:59.582253',NULL,'	Active',NULL,0,NULL,'',0,31,16,'Add'),(33,'Pending','2023-09-24 09:40:26.223795',NULL,'	Active',NULL,0,NULL,'',0,32,30,'Add'),(34,'Accepted','2023-09-24 10:22:28.834533','2023-10-04 11:19:08.260946','Active','2023-10-04 11:19:08.260946',0,NULL,'',0,26,3,'Add'),(35,'Pending','2023-09-24 10:23:04.894365',NULL,'	Active',NULL,0,NULL,'',0,28,15,'Add'),(36,'Pending','2023-09-24 10:23:49.056650',NULL,'	Active',NULL,0,NULL,'',0,29,16,'Add'),(37,'Pending','2023-09-24 10:23:49.065264',NULL,'	Active',NULL,0,NULL,'',0,29,23,'Add'),(38,'Pending','2023-09-24 10:24:42.101556',NULL,'	Active',NULL,0,NULL,'',0,33,29,'Add'),(39,'Accepted','2023-09-24 10:24:42.105555','2023-10-26 12:36:57.865392','Active','2023-10-26 12:36:57.865392',0,NULL,'',0,33,28,'Add'),(40,'Pending','2023-09-24 10:36:23.320135',NULL,'	Active',NULL,0,NULL,'',0,30,1,'Add'),(41,'Pending','2023-09-24 10:36:45.365094',NULL,'	Active',NULL,0,NULL,'',0,31,15,'Add'),(42,'Pending','2023-09-24 10:37:17.665576',NULL,'	Active',NULL,0,NULL,'',0,29,21,'Add'),(43,'Pending','2023-09-24 10:37:38.976920',NULL,'	Active',NULL,0,NULL,'',0,32,29,'Add'),(45,'Accepted','2023-10-03 07:40:03.432601','2023-10-03 15:30:44.280299','Active','2023-10-03 15:30:44.280299',0,NULL,'',0,36,52,'Add'),(51,'Accepted','2023-10-03 15:27:18.473800','2023-10-03 15:28:22.949248','Dropped',NULL,1,'2023-10-03 15:28:22.949248','',0,36,53,'Drop'),(52,'Rejected','2023-10-04 02:07:05.431925','2023-10-04 02:07:36.875766','Not Admitted','2023-10-04 02:07:36.875766',0,NULL,'',0,36,31,'Add'),(53,'Accepted','2023-10-04 02:45:52.699278','2023-10-04 02:46:21.331966','Active','2023-10-04 02:46:21.331966',0,NULL,'',0,36,47,'Add'),(54,'Rejected','2023-10-04 02:46:38.386256','2023-10-04 02:47:02.132647','Active',NULL,0,NULL,'',0,36,47,'Drop'),(55,'Accepted','2023-10-04 11:18:23.661664','2023-10-26 09:29:08.939164','Dropped',NULL,1,'2023-10-26 09:29:08.939164','',0,35,59,'Drop'),(56,'Accepted','2023-10-14 01:51:15.415096','2023-10-17 14:48:42.711792','Active','2023-10-17 14:48:42.711792',0,NULL,'',0,36,28,'Add'),(57,'Accepted','2023-10-18 01:13:28.044773','2023-10-18 01:14:27.177469','Active','2023-10-18 01:14:27.177469',0,NULL,'',0,36,36,'Add'),(58,'Accepted','2023-10-18 01:13:28.052764','2023-10-18 01:14:30.756809','Active','2023-10-18 01:14:30.756809',0,NULL,'',0,36,39,'Add'),(59,'Accepted','2023-10-18 01:13:28.057760','2023-10-18 01:15:51.249097','Active','2023-10-18 01:15:51.249097',0,NULL,'',0,36,40,'Add'),(61,'Accepted','2023-10-18 01:13:28.064408','2023-10-18 01:16:07.556516','Active','2023-10-18 01:16:07.556516',0,NULL,'',0,36,24,'Add'),(62,'Accepted','2023-10-18 01:13:28.067744','2023-10-18 01:15:59.782303','Active','2023-10-18 01:15:59.782303',0,NULL,'',0,36,33,'Add'),(63,'Accepted','2023-10-18 01:13:28.071322','2023-10-18 01:15:56.237265','Active','2023-10-18 01:15:56.237265',0,NULL,'',0,36,31,'Add'),(64,'Accepted','2023-10-18 01:13:28.074320','2023-10-18 01:14:37.442243','Active','2023-10-18 01:14:37.442243',0,NULL,'',0,36,58,'Add'),(68,'Accepted','2023-10-24 14:43:54.649518','2023-10-24 14:44:20.653577','Active','2023-10-24 14:44:20.653577',0,NULL,'',0,34,59,'Add'),(69,'Accepted','2023-10-26 08:39:13.596659','2023-10-26 08:39:34.869868','Dropped',NULL,1,'2023-10-26 08:39:34.869868','',0,34,59,'Drop'),(71,'Accepted','2023-10-26 09:15:14.783793','2023-10-26 09:16:47.816634','Active','2023-10-26 09:16:47.816634',0,NULL,'',0,34,59,'Add'),(72,'Accepted','2023-10-26 12:26:01.418099','2023-10-26 12:26:10.427271','Active','2023-10-26 12:26:10.427271',0,NULL,'',0,35,48,'Add'),(73,'Accepted','2023-10-26 12:29:55.331181','2023-10-26 12:30:16.424919','Active','2023-10-26 12:30:16.424919',0,NULL,'',0,37,33,'Add'),(75,'Accepted','2023-10-26 12:38:08.779988','2023-10-26 12:38:15.906263','Active','2023-10-26 12:38:15.906263',0,NULL,'',0,33,63,'Add'),(81,'Pending','2023-11-10 08:19:11.873775',NULL,'Active',NULL,0,NULL,'',0,36,30,'Drop'),(83,'Accepted','2023-12-06 09:01:57.251282','2023-12-06 09:02:06.640241','Dropped',NULL,1,'2023-12-06 09:02:06.640241','',0,36,33,'Drop'),(84,'Accepted','2023-12-06 09:03:17.059214','2023-12-06 09:04:11.975460','Active','2023-12-06 09:04:11.975460',0,NULL,'',0,36,33,'Add'),(93,'Pending','2023-12-25 09:49:43.109241',NULL,'Active',NULL,0,NULL,'',0,38,28,'Add'),(94,'Pending','2023-12-25 09:49:43.114258',NULL,'Active',NULL,0,NULL,'',0,38,25,'Add'),(95,'Pending','2023-12-25 09:49:43.120241',NULL,'Active',NULL,0,NULL,'',0,38,26,'Add'),(96,'Pending','2024-01-04 07:36:35.522406',NULL,'Active',NULL,0,NULL,'',0,39,26,'Add'),(99,'Pending','2024-01-04 07:54:01.718899',NULL,'Active',NULL,0,NULL,'',0,42,30,'Add'),(100,'Accepted','2024-01-15 03:05:28.860218','2024-01-15 03:05:45.250491','Dropped',NULL,1,'2024-01-15 03:05:45.250491','',0,36,28,'Drop'),(102,'Accepted','2024-01-15 12:14:48.302571','2024-01-15 12:14:59.621150','Active','2024-01-15 12:14:59.621150',0,NULL,'',0,37,24,'Add'),(104,'Pending','2024-01-15 12:15:57.755804',NULL,'Active',NULL,0,NULL,'',0,37,24,'Drop'),(105,'Pending','2024-01-17 03:20:37.165977',NULL,'Active',NULL,0,NULL,'',0,36,52,'Add'),(106,'Pending','2024-01-17 03:21:25.355334',NULL,'Active',NULL,0,NULL,'',0,36,47,'Drop');
/*!40000 ALTER TABLE `users_enrolment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-19  9:01:39
