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
-- Table structure for table `users_subject_evaluation`
--

DROP TABLE IF EXISTS `users_subject_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_subject_evaluation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject_evaluation_content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `student_id` bigint NOT NULL,
  `tuition_classes_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_subject_evaluation_student_id_019b7b88_fk_users_student_id` (`student_id`),
  KEY `users_subject_evalua_tuition_classes_id_01be5d57_fk_users_tui` (`tuition_classes_id`),
  CONSTRAINT `users_subject_evalua_tuition_classes_id_01be5d57_fk_users_tui` FOREIGN KEY (`tuition_classes_id`) REFERENCES `users_tuition_classes` (`id`),
  CONSTRAINT `users_subject_evaluation_student_id_019b7b88_fk_users_student_id` FOREIGN KEY (`student_id`) REFERENCES `users_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_subject_evaluation`
--

LOCK TABLES `users_subject_evaluation` WRITE;
/*!40000 ALTER TABLE `users_subject_evaluation` DISABLE KEYS */;
INSERT INTO `users_subject_evaluation` VALUES (1,'Lesson was interesting.','2023-10-04 06:56:08.361620',36,52),(2,'Storytelling helps to memorise the important facts easily.','2023-10-04 06:56:49.123761',36,47),(3,'Good effort of teaching!','2023-10-26 03:48:58.871403',36,59),(4,'Nice presentation with clear explanation. It is an interesting lesson!\r\n','2023-10-26 08:38:43.539883',35,59),(5,'Good ppt.','2023-11-10 08:18:58.623836',36,30),(6,'The class is interesting with nice effort from the teacher.','2023-12-06 09:09:15.615994',36,30),(7,'The class is interesting！','2023-12-06 09:09:36.993459',36,30),(8,'The class is fun!','2024-01-15 12:15:33.718838',37,24);
/*!40000 ALTER TABLE `users_subject_evaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-19  9:01:38
