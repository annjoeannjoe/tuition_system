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
-- Table structure for table `users_student`
--

DROP TABLE IF EXISTS `users_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `school_level` varchar(20) DEFAULT NULL,
  `primary_school_type` varchar(20) DEFAULT NULL,
  `sk_level` varchar(20) DEFAULT NULL,
  `startdate` datetime(6) NOT NULL,
  `classin_phoneno` varchar(20) DEFAULT NULL,
  `parent_phoneno2` varchar(20) DEFAULT NULL,
  `bankin_receipt` varchar(100) NOT NULL,
  `student_phoneno` varchar(20) DEFAULT NULL,
  `student_ic_number` varchar(20) DEFAULT NULL,
  `student_ic_photo` varchar(100) NOT NULL,
  `student_photo` varchar(100) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `user_id` bigint NOT NULL,
  `know_us_from` varchar(50) DEFAULT NULL,
  `sjkc_level` varchar(20) DEFAULT NULL,
  `secondary_level` varchar(20) DEFAULT NULL,
  `terms_and_conditions` tinyint(1) NOT NULL,
  `classin_phonecode` varchar(10) DEFAULT NULL,
  `archived_at` datetime(6) DEFAULT NULL,
  `is_archived` tinyint(1) NOT NULL,
  `unarchived_at` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_student_user_id_dc59cd64_fk_users_user_id` (`user_id`),
  CONSTRAINT `users_student_user_id_dc59cd64_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_student`
--

LOCK TABLES `users_student` WRITE;
/*!40000 ALTER TABLE `users_student` DISABLE KEYS */;
INSERT INTO `users_student` VALUES (3,'kindergarten','sk','standard1','2023-05-12 00:00:00.000000','60182347845','601634588766','bankin_receipt/FYP_Upload_Sample.pdf','60124235566','010503070309','student_ic_photo.png','student_ic_photo.png','Kinder Koala PJ',12,'Facebook',NULL,NULL,0,NULL,'2023-12-06 08:54:13.186035',0,'2023-12-06 08:54:43.666615',0),(4,'kindergarten',NULL,NULL,'2023-05-12 00:00:00.000000','60121234567','60167897897','bankin_receipt/FYP_Upload_Sample.pdf','60121245678','090808070555','student_ic_photo.png','student_photo.png','Kinder Panda',14,'Facebook',NULL,NULL,0,NULL,NULL,0,NULL,0),(6,'primary',NULL,NULL,'2023-06-06 04:31:37.940027','0144097856','','bankin_receipt/FYP_Upload_Sample.pdf','','101231040506','student_ic_photo.png','student_photo.png','Kinder UM PJ',16,'Facebook',NULL,NULL,0,NULL,NULL,0,NULL,0),(14,'primary',NULL,NULL,'2023-06-25 00:00:00.000000','0121234567','0121234567','bankin_receipt/FYP_Upload_Sample.pdf','','101020070808','student_ic_photo.png','student_photo.png','SMJK Ming',31,'Facebook',NULL,NULL,0,NULL,'2023-12-06 05:49:30.490487',1,NULL,0),(15,'primary','sjkc',NULL,'2023-06-25 05:25:38.947811','0121234567','0121234567','bankin_receipt/FYP_Upload_Sample.pdf','','','student_ic_photo.png','student_photo.png','SJKC primary',32,'Facebook,Instagram','standard2',NULL,0,NULL,NULL,0,NULL,0),(16,'kindergarten',NULL,NULL,'2023-06-25 07:42:07.971025','0121234567','0128564345','bankin_receipt/FYP_Upload_Sample.pdf','0191234567','011231070808','student_ic_photo.png','student_photo.png','Kinder PJ',33,'Facebook,Instagram,Google,Tik Tok',NULL,NULL,0,NULL,NULL,0,NULL,0),(17,'primary',NULL,NULL,'2023-06-26 02:57:41.160607','0121234567','0121234567','bankin_receipt/FYP_Upload_Sample.pdf','','011231070808','student_ic_photo.png','student_photo.png','KinderPJ',35,'Facebook,Instagram,Google',NULL,NULL,0,NULL,NULL,0,NULL,0),(18,'kindergarten',NULL,NULL,'2023-06-26 03:32:28.878028','0121234567','','bankin_receipt/FYP_Upload_Sample.pdf','','080311070404','student_ic_photo.png','student_photo.png','kinder pj',37,'Facebook,Instagram,Google',NULL,NULL,0,NULL,NULL,0,NULL,0),(19,'kindergarten',NULL,NULL,'2023-08-02 03:17:42.547903','0164735678','','bankin_receipt/FYP_Upload_Sample.pdf','','100228072345','student_ic_photo.png','student_photo.png','Kinder PJ',40,'Facebook,Instagram',NULL,NULL,0,NULL,NULL,0,NULL,0),(20,'kindergarten',NULL,NULL,'2023-08-09 15:46:01.495762','0161234567','0121234567','bankin_receipt/FYP_Upload_Sample.pdf','','120420070808','student_ic_photo.png','student_photo.png','KinderPJ',41,'Instagram,Google,Tik Tok',NULL,NULL,0,NULL,'2023-11-10 08:12:33.197079',0,'2023-11-10 08:12:45.074278',0),(21,'kindergarten',NULL,NULL,'2023-08-15 10:56:19.577600','0121234567','','bankin_receipt/FYP_Upload_Sample.pdf','','100324070809','student_ic_photo.png','student_photo.png','Kinder 17',43,'Instagram',NULL,NULL,0,NULL,'2023-10-28 06:45:50.673038',1,NULL,0),(22,'kindergarten',NULL,NULL,'2023-08-15 15:25:57.536272','0121234567','0121234567','bankin_receipt/FYP_Upload_Sample.pdf','','101231070809','student_ic_photo.png','student_photo.png','KinderPJ',44,'Tik Tok,Friend',NULL,NULL,0,NULL,'2024-01-17 03:16:03.372108',0,'2024-01-17 03:16:15.995768',0),(23,'kindergarten',NULL,NULL,'2023-08-21 09:22:45.128851','0194346798','','bankin_receipt/None_BankInReceipt_H5ywfjt.pdf','','121231070808','student_ic_photo.png','student_photo/None_StudentPhoto_Jy7nvNN.png','Kindy Joy',46,'Facebook,Google',NULL,NULL,0,NULL,NULL,0,NULL,0),(24,'kindergarten',NULL,NULL,'2023-08-21 10:22:12.282745','0164026798','','bankin_receipt/Ng_Kyle-Ze_BankInReceipt.pdf','','120823070909','student_ic_photo/Ng_Kyle-Ze_IcPhoto.png','student_photo/Ng_Kyle-Ze_StudentPhoto.png','Topkids',47,'Facebook,Google,Friend',NULL,NULL,1,NULL,NULL,0,NULL,0),(25,'kindergarten',NULL,NULL,'2023-08-21 10:28:26.001113','0194083265','','bankin_receipt/Ng_Kyle-Vin_BankInReceipt.pdf','','140725070809','student_ic_photo/Ng_Kyle-Vin_IcPhoto.png','student_photo/Ng_Kyle-Vin_StudentPhoto.png','Topkids',48,'Sibling or Family Member',NULL,NULL,1,NULL,NULL,0,NULL,0),(26,'kindergarten',NULL,NULL,'2023-08-21 10:32:43.229853','0114768989','','bankin_receipt/Courtney_Koh__BankInReceipt.pdf','','131002070904','student_ic_photo/Courtney_Koh__IcPhoto.png','student_photo/Courtney_Koh__StudentPhoto.png','Kindy Top',49,'Facebook,Instagram,Google',NULL,NULL,1,NULL,NULL,0,NULL,0),(27,'kindergarten',NULL,NULL,'2023-08-23 08:23:36.823144','0121234567','','bankin_receipt/Kindergarten_testing_BankInReceipt.pdf','','121212070808','student_ic_photo/Kindergarten_testing_IcPhoto.png','student_photo/Kindergarten_testing_StudentPhoto.png','Kindy Joy',51,'Facebook,Instagram',NULL,NULL,1,NULL,NULL,0,NULL,0),(28,'primary','sk','standard1','2023-08-23 11:16:10.343520','0161234567','','bankin_receipt/Primary_SK_Testing_BankInReceipt.pdf','','091208070434','student_ic_photo/Primary_SK_Testing_IcPhoto.png','student_photo/Primary_SK_Testing_StudentPhoto.png','SK St. Xavier',52,'Google',NULL,NULL,1,NULL,NULL,0,NULL,0),(29,'primary','sjkc',NULL,'2023-08-23 11:33:52.394892','0191234567','','bankin_receipt/Primary_sjkc_testing_BankInReceipt.pdf','','121204070909','student_ic_photo/Primary_sjkc_testing_IcPhoto.png','student_photo/Primary_sjkc_testing_StudentPhoto.png','SJKC Shang Wu',53,'Friend,Staff','standard1',NULL,1,NULL,'2023-10-28 06:40:54.347355',1,NULL,0),(30,'kindergarten',NULL,NULL,'2023-08-23 00:00:00.000000','0112345678','','bankin_receipt/Kindi_BankInReceipt.pdf','','181203070899','student_ic_photo/Kindi_IcPhoto.png','student_photo/Kindi_StudentPhoto.png','Kindy',54,'Facebook,Instagram',NULL,NULL,1,NULL,NULL,0,NULL,0),(31,'primary','sk','standard1','2023-08-23 15:23:04.542542','0191234567','','bankin_receipt/Prim_test_BankInReceipt.pdf','','090227080967','student_ic_photo/Prim_test_IcPhoto.png','student_photo/Prim_test_StudentPhoto.png','Sjkc shangwu',56,'Instagram,Google',NULL,NULL,1,NULL,NULL,0,NULL,0),(32,'secondary',NULL,NULL,'2023-08-23 15:33:52.515729','01912343456','','bankin_receipt/secondary_testing_BankInReceipt.pdf','','090831070645','student_ic_photo/secondary_testing_IcPhoto.png','student_photo/secondary_testing_StudentPhoto.png','smjk cl',57,'Facebook,Instagram',NULL,'form2',1,NULL,NULL,0,NULL,0),(33,'secondary',NULL,NULL,'2023-08-23 00:00:00.000000','0183456789','','bankin_receipt/Sec_test_BankInReceipt.pdf','','080420070564','student_ic_photo/Sec_test_IcPhoto.png','student_photo/Sec_test_StudentPhoto.png','smjk pcghs',58,'Facebook,Instagram,Google',NULL,'form2',1,NULL,NULL,0,NULL,0),(34,'secondary',NULL,NULL,'2023-08-23 15:43:43.191025','0164024353','','bankin_receipt/Liew_Shi_Shi__BankInReceipt.pdf','','090229070934','student_ic_photo/Liew_Shi_Shi__IcPhoto.png','student_photo/Liew_Shi_Shi__StudentPhoto.png','PCGHS',59,'Facebook,Google,Friend',NULL,'form2',1,NULL,NULL,0,NULL,0),(35,'secondary',NULL,NULL,'2023-08-23 15:51:59.311593','0164732345','','bankin_receipt/Chan_Khai_Jiat_BankInReceipt.pdf','','080324070536','student_ic_photo/Chan_Khai_Jiat_IcPhoto.png','student_photo/Chan_Khai_Jiat_StudentPhoto.png','pcghs',60,'Instagram,Google,Friend',NULL,'form2',1,NULL,NULL,0,NULL,0),(36,'secondary',NULL,NULL,'2023-08-26 00:00:00.000000','0141234567','0112233456','bankin_receipt/Greg_Hsu_BankInReceipt_1.pdf','0198756454','081031070909','student_ic_photo/Greg_Hsu_IcPhoto.png','student_photo/Greg_Hsu_StudentPhoto.png','SMJK Jit Sin',61,'Facebook,Instagram,Google,Friend',NULL,'form2',1,NULL,NULL,0,NULL,0),(37,'secondary',NULL,NULL,'2023-10-26 12:29:55.317236','0161234567','0182345678','bankin_receipt/Tiew_Ker_Xin_BankInReceipt.pdf','','010123070809','student_ic_photo/Tiew_Ker_Xin_IcPhoto.pdf','student_photo/Tiew_Ker_Xin_StudentPhoto.pdf','UM',62,'Facebook,Instagram',NULL,'form2',1,NULL,NULL,0,NULL,0),(38,'secondary',NULL,NULL,'2023-12-25 09:49:43.086909','0121234567','','bankin_receipt/Tan_ShuQi_BankInReceipt.pdf','','011127070909','student_ic_photo/Tan_ShuQi_IcPhoto.pdf','student_photo/Tan_ShuQi_StudentPhoto.pdf','PCGHS',64,'Facebook,Instagram,Google',NULL,'form2',1,NULL,NULL,0,NULL,0),(39,'secondary',NULL,NULL,'2024-01-04 07:36:35.517389','0191234567','','bankin_receipt/FYP_Upload_Sample.pdf','','121212071212','student_ic_photo.png','student_ic_photo.png','Shangwu',65,'Instagram',NULL,'form2',0,NULL,'2024-01-05 06:40:54.347355',1,NULL,1),(42,'secondary',NULL,NULL,'2024-01-04 07:54:01.715338','0191234567','','bankin_receipt/FYP_Upload_Sample.pdf','','121231040567','student_ic_photo.png','student_ic_photo.png','CHUNG LING',68,'Facebook,Instagram,Google',NULL,'form2',0,NULL,'2024-01-11 08:40:54.347355',1,NULL,1);
/*!40000 ALTER TABLE `users_student` ENABLE KEYS */;
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
