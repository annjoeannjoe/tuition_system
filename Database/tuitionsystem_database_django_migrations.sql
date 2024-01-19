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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-10 06:31:53.676160'),(2,'contenttypes','0002_remove_content_type_name','2023-05-10 06:31:53.702251'),(3,'auth','0001_initial','2023-05-10 06:31:53.804531'),(4,'auth','0002_alter_permission_name_max_length','2023-05-10 06:31:53.830760'),(5,'auth','0003_alter_user_email_max_length','2023-05-10 06:31:53.836017'),(6,'auth','0004_alter_user_username_opts','2023-05-10 06:31:53.842286'),(7,'auth','0005_alter_user_last_login_null','2023-05-10 06:31:53.848448'),(8,'auth','0006_require_contenttypes_0002','2023-05-10 06:31:53.851761'),(9,'auth','0007_alter_validators_add_error_messages','2023-05-10 06:31:53.858539'),(10,'auth','0008_alter_user_username_max_length','2023-05-10 06:31:53.864560'),(11,'auth','0009_alter_user_last_name_max_length','2023-05-10 06:31:53.871672'),(12,'auth','0010_alter_group_name_max_length','2023-05-10 06:31:53.884087'),(13,'auth','0011_update_proxy_permissions','2023-05-10 06:31:53.891724'),(14,'auth','0012_alter_user_first_name_max_length','2023-05-10 06:31:53.896800'),(15,'users','0001_initial','2023-05-10 06:31:54.019918'),(16,'admin','0001_initial','2023-05-10 06:31:54.084426'),(17,'admin','0002_logentry_remove_auto_add','2023-05-10 06:31:54.090761'),(18,'admin','0003_logentry_add_action_flag_choices','2023-05-10 06:31:54.098822'),(19,'sessions','0001_initial','2023-05-10 06:31:54.122179'),(20,'users','0002_alter_user_role','2023-05-10 06:31:54.131265'),(21,'users','0003_student_alter_user_role','2023-05-10 15:52:56.922314'),(22,'users','0004_remove_student_know_us_from_student_user','2023-05-11 15:00:46.076907'),(23,'users','0005_student_know_us_from','2023-05-11 15:00:46.092455'),(24,'users','0006_rename_bankreceipt_student_bankin_receipt_and_more','2023-05-12 06:38:05.790060'),(25,'users','0007_rename_sk_primary_level_student_sk_level','2023-05-12 06:49:07.663123'),(26,'users','0008_student_secondary_level','2023-05-12 06:52:19.317267'),(27,'users','0009_user_address','2023-05-12 15:03:40.453854'),(28,'users','0010_alter_user_address','2023-05-12 15:18:55.808469'),(29,'users','0011_user_city_user_state_user_street1_user_street2','2023-05-15 12:43:27.737311'),(30,'users','0012_remove_user_address_user_postalcode_alter_user_city','2023-05-15 12:43:27.802850'),(31,'users','0013_admin','2023-08-02 02:51:44.993997'),(32,'users','0014_rename_admin_admins','2023-08-02 03:07:36.313034'),(33,'users','0015_rename_admins_admin','2023-08-02 03:14:10.131578'),(34,'users','0016_announcement','2023-08-02 04:02:06.704801'),(35,'users','0017_announcement_targeted_group','2023-08-02 06:37:48.015238'),(36,'users','0018_user_reset_token_user_reset_token_expiration','2023-08-15 10:42:30.520426'),(37,'users','0019_remove_user_reset_token_and_more','2023-08-15 14:47:00.179679'),(38,'users','0020_student_terms_and_conditions_and_more','2023-08-21 09:17:06.652891'),(39,'users','0021_alter_user_city_alter_user_phone_code_and_more','2023-08-21 15:14:50.520116'),(40,'users','0022_remove_announcement_admin_and_more','2023-08-21 15:28:41.112148'),(41,'users','0023_remove_announcement_admin_and_more','2023-08-22 02:26:58.016621'),(42,'users','0023_tuition_classes_downlaoded_at','2023-08-22 02:31:02.143157'),(43,'users','0024_remove_tuition_classes_downlaoded_at','2023-08-22 02:31:26.680754'),(44,'users','0025_tuition_classes_tutor_name','2023-08-22 02:40:39.356001'),(45,'users','0026_delete_tuition_classes','2023-08-22 02:49:09.158441'),(46,'users','0027_tuition_classes','2023-08-22 02:49:42.187635'),(47,'users','0028_alter_tuition_classes_monthly_fee','2023-08-22 02:57:56.297331'),(48,'users','0029_alter_tuition_classes_weekly_day','2023-08-23 03:46:49.031590'),(49,'users','0030_enrolment','2023-08-23 06:58:19.173360'),(50,'users','0031_calendar_events','2023-08-24 06:41:10.652150'),(51,'users','0032_calendar_events_event_name','2023-08-24 09:59:08.054980'),(52,'users','0033_student_classin_phonecode','2023-09-07 11:10:57.907753'),(53,'users','0034_alter_tuition_classes_weekly_day','2023-09-10 06:43:49.359150'),(54,'users','0035_tuition_classes_class_end_date_and_more','2023-09-29 06:58:24.300223'),(55,'users','0036_enrolment_request_type','2023-10-03 09:02:27.467007'),(56,'users','0037_subject_evaluation','2023-10-04 06:03:08.386088'),(57,'users','0038_tuition_classes_archived_at_and_more','2023-10-20 00:42:34.014311'),(58,'users','0039_student_archived_at_student_is_archived_and_more','2023-10-28 04:13:07.124325'),(59,'users','0040_alter_announcement_announcement_posted_by','2023-10-29 13:55:52.230865'),(60,'users','0041_alter_announcement_announcement_posted_by','2023-10-29 13:58:02.213629'),(61,'users','0042_invoices_invoices_items','2023-11-07 13:05:08.382583'),(62,'users','0043_remove_invoices_items_invoice_delete_invoices','2023-11-08 06:27:50.293979'),(63,'users','0044_invoices_delete_invoices_items','2023-11-08 06:30:09.322496'),(64,'users','0045_invoices_items','2023-11-08 06:30:37.331201'),(65,'users','0046_remove_invoices_items_invoice_delete_invoices_and_more','2023-11-08 07:09:17.074802'),(66,'users','0047_invoices_invoices_items','2023-11-08 07:11:17.749339'),(67,'users','0048_alter_announcement_announcement_posted_by','2023-11-10 07:13:54.409935'),(68,'users','0049_alter_invoices_status','2023-11-15 12:17:09.418881'),(69,'users','0050_invoices_receipt_file','2023-11-15 13:57:49.206596'),(70,'users','0051_alter_announcement_targeted_group','2023-12-06 06:41:04.444927'),(71,'users','0052_alter_announcement_announcement_posted_by','2023-12-06 06:58:09.150941'),(72,'users','0053_alter_announcement_announcement_posted_by','2023-12-06 09:13:22.095258'),(73,'users','0054_invoices_receipt_pdf_sent','2023-12-10 14:18:16.654173'),(74,'users','0055_remove_invoices_receipt_pdf_sent_receipts','2023-12-10 14:46:56.356233'),(75,'users','0056_alter_invoices_items_remark','2023-12-15 11:03:38.839055'),(76,'users','0057_remove_invoices_items_remark','2023-12-15 11:37:57.424302'),(77,'users','0058_calendar_events_posted_by','2023-12-26 02:10:01.584419'),(78,'users','0059_student_deleted','2024-01-10 14:46:20.963986'),(79,'users','0060_user_deleted','2024-01-10 14:46:21.021607'),(80,'users','0061_tuition_classes_deleted','2024-01-10 14:46:21.065857');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
