-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: cartasi
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint unsigned DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"last_name\": null, \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"Kwizera\", \"updated_at\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-21 11:53:08','2024-05-21 11:53:08'),(2,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": null, \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"Kwizera\", \"updated_at\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-21 12:12:21','2024-05-21 12:12:21'),(3,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": null, \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"Kwizera\", \"updated_at\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-21 12:43:24','2024-05-21 12:43:24'),(4,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": null, \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"Kwizera\", \"updated_at\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-21 13:53:49','2024-05-21 13:53:49'),(5,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": null, \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"Kwizera\", \"updated_at\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-22 16:36:25','2024-05-22 16:36:25'),(6,'default','User updated','App\\Models\\User','updated',1,'App\\Models\\User',1,'{\"info\": {\"id\": \"1\", \"name\": \"-\", \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": 0, \"last_name\": \"Emmanuel\", \"first_name\": \"KWIZERA\", \"profile_pic\": null}}',NULL,'2024-05-22 17:17:24','2024-05-22 17:17:24'),(7,'default','User profile updated','App\\Models\\User','update',1,'App\\Models\\User',1,'{\"info\": {\"id\": \"1\", \"name\": \"-\", \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": 1, \"is_delete\": 0, \"last_name\": \"Emmanuel\", \"first_name\": \"KWIZERA\", \"profile_pic\": null, \"phone_number\": \"(078) 116-7275\"}}',NULL,'2024-05-22 17:24:55','2024-05-22 17:24:55'),(8,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-23 06:58:47','2024-05-23 06:58:47'),(9,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-23 07:09:32','2024-05-23 07:09:32'),(10,'default','Category Status activated','App\\Models\\Category','status changed',1,'App\\Models\\User',1,'{\"info\": {\"id\": 1, \"status\": 0, \"user_id\": 1, \"created_at\": \"2024-05-23T10:45:39.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-23T12:10:50.000000Z\", \"category_name\": \"Student\"}}',NULL,'2024-05-23 10:10:50','2024-05-23 10:10:50'),(11,'default','Category Status Diactivated','App\\Models\\Category','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"status\": 1, \"user_id\": 1, \"created_at\": \"2024-05-23T10:45:39.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-23T12:13:12.000000Z\", \"category_name\": \"Student\"}',NULL,'2024-05-23 10:13:12','2024-05-23 10:13:12'),(12,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-24 12:47:55','2024-05-24 12:47:55'),(13,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-27 06:06:45','2024-05-27 06:06:45'),(14,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-27 08:55:13','2024-05-27 08:55:13'),(15,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-27 08:56:35','2024-05-27 08:56:35'),(16,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-27 11:22:07','2024-05-27 11:22:07'),(17,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-27 16:20:09','2024-05-27 16:20:09'),(18,'default','Centrale Status activated','App\\Models\\Center','status changed',2,'App\\Models\\User',1,'{\"info\": {\"id\": 2, \"status\": 0, \"user_id\": 1, \"created_at\": \"2024-05-27T19:01:50.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-27T19:35:00.000000Z\", \"center_name\": \"Musha\"}}',NULL,'2024-05-27 17:35:00','2024-05-27 17:35:00'),(19,'default','Centrale Status Diactivated','App\\Models\\Center','status changed',2,'App\\Models\\User',1,'{\"id\": 2, \"status\": 1, \"user_id\": 1, \"created_at\": \"2024-05-27T19:01:50.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-27T19:35:11.000000Z\", \"center_name\": \"Musha\"}',NULL,'2024-05-27 17:35:11','2024-05-27 17:35:11'),(20,'default','Category deleted','App\\Models\\Category','deleted',2,'App\\Models\\User',1,'{\"id\": 2, \"status\": 1, \"user_id\": 1, \"created_at\": \"2024-05-23T13:14:15.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-23T13:14:15.000000Z\", \"description\": \"Whoever have sickness issue\", \"category_name\": \"Patient\"}',NULL,'2024-05-27 17:40:43','2024-05-27 17:40:43'),(21,'default','Category deleted','App\\Models\\Category','deleted',2,'App\\Models\\User',1,'{\"id\": 2, \"status\": 1, \"user_id\": 1, \"created_at\": \"2024-05-23T13:14:15.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-23T13:14:15.000000Z\", \"description\": \"Whoever have sickness issue\", \"category_name\": \"Patient\"}',NULL,'2024-05-27 18:00:45','2024-05-27 18:00:45'),(22,'default','Category deleted','App\\Models\\Category','deleted',2,'App\\Models\\User',1,'{\"id\": 2, \"status\": 1, \"user_id\": 1, \"created_at\": \"2024-05-23T13:14:15.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-23T13:14:15.000000Z\", \"description\": \"Whoever have sickness issue\", \"category_name\": \"Patient\"}',NULL,'2024-05-27 18:01:55','2024-05-27 18:01:55'),(23,'default','Category deleted','App\\Models\\Category','deleted',2,'App\\Models\\User',1,'{\"id\": 2, \"status\": 1, \"user_id\": 1, \"created_at\": \"2024-05-23T13:14:15.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-23T13:14:15.000000Z\", \"description\": \"Whoever have sickness issue\", \"category_name\": \"Patient\"}',NULL,'2024-05-27 18:07:48','2024-05-27 18:07:48'),(24,'default','Community Status activated','App\\Models\\Community','status changed',1,'App\\Models\\User',1,'{\"info\": {\"id\": 1, \"status\": 0, \"user_id\": 1, \"created_at\": \"2024-05-27T20:55:32.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-27T21:10:42.000000Z\", \"community_name\": \"Kabare\"}}',NULL,'2024-05-27 19:10:42','2024-05-27 19:10:42'),(25,'default','Community Status Diactivated','App\\Models\\Community','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"status\": 1, \"user_id\": 1, \"created_at\": \"2024-05-27T20:55:32.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-27T21:10:52.000000Z\", \"community_name\": \"Kabare\"}',NULL,'2024-05-27 19:10:52','2024-05-27 19:10:52'),(26,'default','Category deleted','App\\Models\\Category','deleted',1,'App\\Models\\User',1,'{\"id\": 1, \"status\": 1, \"user_id\": 1, \"created_at\": \"2024-05-23T10:45:39.000000Z\", \"is_deleted\": 0, \"updated_at\": \"2024-05-23T12:41:10.000000Z\", \"description\": \"decription\", \"category_name\": \"Student\"}',NULL,'2024-05-27 19:10:56','2024-05-27 19:10:56'),(27,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": \"Admin\", \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmanuel\", \"created_at\": null, \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-22T19:24:55.000000Z\", \"phone_number\": \"(078) 116-7275\", \"remember_token\": null, \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-28 06:06:32','2024-05-28 06:06:32'),(28,'default','New User added','App\\Models\\User','new user',2,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"ePuEWOJN\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$O/9Fv78T3xqStt3KSnvNuutUfe126RGIChzRfa.6/YIQ6.sHtCdlm\"}}',NULL,'2024-05-28 10:43:33','2024-05-28 10:43:33'),(29,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-05-28 10:56:47','2024-05-28 10:56:47'),(30,'default','New User added','App\\Models\\User','new user',3,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"iXDNkorb\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$pxp1GDnm.9du6f3s4SrdE.uBtCONjcluUfHFH1vnVpuzzWYqo1d/S\"}}',NULL,'2024-05-28 10:57:07','2024-05-28 10:57:07'),(31,'default','New User added','App\\Models\\User','new user',4,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"lwYysMEQ\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$ZmSyRrAKG.3AICtGdZXVhe7G5YrFwjHsoCWJ/AJe4VUQSXJW8dC32\"}}',NULL,'2024-05-28 10:59:06','2024-05-28 10:59:06'),(32,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-05-28 11:03:35','2024-05-28 11:03:35'),(33,'default','New User added','App\\Models\\User','new user',5,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"5vOXfw8h\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$1xAGUoqKO.QecSP9cOT4De0/vFGJlLGpD3nlNcFSILDp9X18fkk6.\"}}',NULL,'2024-05-28 11:04:33','2024-05-28 11:04:33'),(34,'default','New User added','App\\Models\\User','new user',6,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"3Cwt3smY\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$TaS9tO.4VA6b7QGL8zhoyO8CNKVKm9Rdp3ZTbcYTnZmOt3Lx91XIm\"}}',NULL,'2024-05-28 11:13:06','2024-05-28 11:13:06'),(35,'default','New User added','App\\Models\\User','new user',7,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"NqjvhIcQ\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$bGmbOjC6/v40QeOqlGiZFeTFxBC458vjR/ZNHVY5bZUn5wK2eKn02\"}}',NULL,'2024-05-28 11:17:02','2024-05-28 11:17:02'),(36,'default','New User added','App\\Models\\User','new user',8,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"F3RyU5UZ\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$Q.qbuDZwosY1U4cOXThhNOrDIgk5jXfsbA.pWjHU4rIJWHZrtLqFK\"}}',NULL,'2024-05-28 11:20:40','2024-05-28 11:20:40'),(37,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 1, \"role\": \"2\", \"email\": \"emmizokwizera@gmail.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"QpvmV3b0\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$MOC1E/N/fxjWMZdF4jqVFe8egAhl8y6TKTgUR0JdWeKbJOLSEtyFK\"}}',NULL,'2024-05-28 11:23:08','2024-05-28 11:23:08'),(38,'default','New User added','App\\Models\\User','new user',9,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"V1NeQhNC\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$i.PWcKEvjRTi/zfTicdhOOYqwn3ZwmcBo2NHLd9HMWGfoRuQUp8U.\"}}',NULL,'2024-05-28 11:24:52','2024-05-28 11:24:52'),(39,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 9, \"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"ASjWahQ0\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$qA9u2TEsm7RFbc6MwPEFn.QTxx9P3/x/PGPPaPfsByxKvaw3holpC\"}}',NULL,'2024-05-28 11:28:00','2024-05-28 11:28:00'),(40,'default','New User added','App\\Models\\User','new user',10,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"k9ilAY2C\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$xNP1shrqR38XL8E0fWtvhu61uczZfdFUc.bxPVbpn2gaEkdcibZ7i\"}}',NULL,'2024-05-28 11:44:15','2024-05-28 11:44:15'),(41,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 10, \"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"7j2iM7r6\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$S41EKrlPpjczryB2aP82N.BmftToUpm/zN8Ao8MKirirPRCJkvkUq\"}}',NULL,'2024-05-28 11:46:44','2024-05-28 11:46:44'),(42,'default','New User added','App\\Models\\User','new user',11,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"wnBDNshz\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$MdxwcEQqQpLenkw7q8LW7OQq7axLV.lE1Nk9oxI0nPoy9WfVjS0Cu\"}}',NULL,'2024-05-28 11:48:03','2024-05-28 11:48:03'),(43,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 11, \"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"apGz30ap\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$Bk/ywYuG8V88MrS8wfnJ7OrxKDvqeQSeGdU4RJ5TOoFpoi6NNKY2O\"}}',NULL,'2024-05-28 11:48:18','2024-05-28 11:48:18'),(44,'default','New User added','App\\Models\\User','new user',12,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"hfyDWUh3\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$mzPDfAiBS75PSVNKUDSJrubE4GkrinXje/mOqEGLf9EYex4FxHKGu\"}}',NULL,'2024-05-28 11:50:53','2024-05-28 11:50:53'),(45,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 12, \"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"4FUbXIqI\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Kwizera\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Emmizo\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$uhPLz2z.dIY7MtanC00Vne8znCozYuy1mEcGFwYA.U55Q3EI6.Bf6\"}}',NULL,'2024-05-28 11:53:26','2024-05-28 11:53:26'),(46,'default','New User added','App\\Models\\User','new user',13,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"fuY7HiHL\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$IIU.D6xH0OcYIiX8dOQLy.h96EiL8b8ZGOg1MAi26wkk2KUaVAjvK\"}}',NULL,'2024-05-28 11:54:55','2024-05-28 11:54:55'),(47,'default','New User added','App\\Models\\User','new user',14,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"U1P34lYu\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$xA0tQ9QM8BQiYc1ejnPUCOvvjsM0Fv9C/Fk7ySbLGDoKQgLvQ9hCi\"}}',NULL,'2024-05-28 11:58:26','2024-05-28 11:58:26'),(48,'default','New User added','App\\Models\\User','new user',15,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"TvpYWTY9\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$AjTHkh6RcKuciSxghGjKcuiNpxTykY65OACftfvPx5/ogbIk.GCnu\"}}',NULL,'2024-05-28 12:01:01','2024-05-28 12:01:01'),(49,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 15, \"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"UOqYc7zQ\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$3CDZtn4123Jd1qn7qS7BYOpxcrZkzMv.ZIzTwL4wRYSDsGkB/CmaG\"}}',NULL,'2024-05-28 12:02:22','2024-05-28 12:02:22'),(50,'default','New User added','App\\Models\\User','new user',17,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"ONgMLtBD\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$D8WlvYXp6Mkb.5JjQ8nc0.EbhZyBk8CJr.N7lCbLWYqOK1bojcvWS\"}}',NULL,'2024-05-28 12:05:40','2024-05-28 12:05:40'),(51,'default','New User added','App\\Models\\User','new user',18,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"BN3xD37v\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$NzAEAbGPwsJ3mp.E.Mh69Opew0H/huhFWa5XocP2cNqWe3cKwWEgu\"}}',NULL,'2024-05-28 12:15:31','2024-05-28 12:15:31'),(52,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 18, \"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"i237oOxa\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$FGD2zHZhNinpDYGi2xyaD.6qlYhXXi0xXB.ZMHpiopgBDRYTSSOJ.\"}}',NULL,'2024-05-28 12:17:27','2024-05-28 12:17:27'),(53,'default','New User added','App\\Models\\User','new user',19,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"vYOpz5DA\", \"center_id\": \"2\", \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$VOUUh34L8W71Xe55kiN98uVi6kgX18MD9IhJbbIsxrPE9V2azEMka\"}}',NULL,'2024-05-28 12:18:06','2024-05-28 12:18:06'),(54,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 19, \"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"BJfd8GlW\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Emmanuel\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$5ePW6UTx9BT4hHvwK78grO31dvPioRxW8ykEor197AtYMC7W7x/3q\"}}',NULL,'2024-05-28 12:18:34','2024-05-28 12:18:34'),(55,'default','New User added','App\\Models\\User','new user',20,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"BwAltfSi\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$Z9wX2qZtq2hIC0xdsQN6OenqBTI9dNiJGEvHPD2QnlqcVKwr.ELCC\"}}',NULL,'2024-05-28 12:19:36','2024-05-28 12:19:36'),(56,'default','User updated','App\\Models\\User',NULL,NULL,'App\\Models\\User',1,'{\"data\": {\"id\": 20, \"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"LoAHEHUK\", \"center_id\": \"2\", \"is_delete\": 0, \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$yN6yWK1qApHlNhLm.aFFouD.icmLMvZMsK1tmCefm9rXkobvdDOtC\"}}',NULL,'2024-05-28 12:21:06','2024-05-28 12:21:06'),(57,'default','New User added','App\\Models\\User','new user',21,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"sZBX2NnA\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"4\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$bu6mZeHpFrIsDYBluXQvgOyleUGhht3..zxypiZEhxePtstGAOqei\"}}',NULL,'2024-05-28 12:21:55','2024-05-28 12:21:55'),(58,'default','New User added','App\\Models\\User','new user',22,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"dGToIAkX\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$nMU/MsqsfgRMW2hftTjRr.SdXoL/3XxZNb0mLmp8ucNxUEOXkUMsS\"}}',NULL,'2024-05-28 12:23:28','2024-05-28 12:23:28'),(59,'default','New User added','App\\Models\\User','new user',23,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"OU1D3uC3\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$JcwhnEk4udSHNvIseu0NtupgTN2PjiFMEtOxK1TeIR6pxwdXEvuQm\"}}',NULL,'2024-05-28 12:25:44','2024-05-28 12:25:44'),(60,'default','User updated','App\\Models\\User','updated',1,'App\\Models\\User',1,'{\"info\": {\"id\": \"23\", \"name\": \"-\", \"role\": \"1\", \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": 0, \"last_name\": \"Emmizo\", \"first_name\": \"Kwizera\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"1\"}}',NULL,'2024-05-28 13:01:29','2024-05-28 13:01:29'),(61,'default','New User added','App\\Models\\User','new user',24,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"kwizera@techaffinity.com\", \"_token\": \"KGD7QZIO0TPqjgRHvaf53FvfjXBFojPZdFptTmCb\", \"status\": \"1\", \"password\": \"mw4xgFJQ\", \"center_id\": \"2\", \"last_name\": \"Emmizo\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"4\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$HQdnOugLgEaYWuD5orsvd.61hWotYmjHZ0yHWvx/tercSMeuIX3QW\"}}',NULL,'2024-05-28 13:43:12','2024-05-28 13:43:12'),(62,'default','updated','App\\Models\\User','updated',24,NULL,NULL,'{\"old\": {\"email\": \"kwizera@techaffinity.com\", \"last_name\": \"Emmizo\", \"first_name\": \"KWIZERA\"}, \"attributes\": {\"email\": \"kwizera@techaffinity.com\", \"last_name\": \"Emmizo\", \"first_name\": \"KWIZERA\"}}',NULL,'2024-05-28 13:43:39','2024-05-28 13:43:39'),(63,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 2, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-28T15:43:39.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-28 13:43:46','2024-05-28 13:43:46'),(64,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 2, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-28T15:43:39.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-05-28 16:15:39','2024-05-28 16:15:39'),(65,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-05-28 16:16:29','2024-05-28 16:16:29'),(66,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-12 16:24:50','2024-06-12 16:24:50'),(67,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 2, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-28T15:43:39.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-12 16:47:50','2024-06-12 16:47:50'),(68,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-12T19:50:11.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-12 17:50:11','2024-06-12 17:50:11'),(69,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-13 16:28:30','2024-06-13 16:28:30'),(70,'default','Member Status activated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"info\": {\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 0, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:10:34.000000Z\", \"description\": \"He\'s good student with 75%\"}}',NULL,'2024-06-13 17:10:34','2024-06-13 17:10:34'),(71,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:13:44.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 17:13:44','2024-06-13 17:13:44'),(72,'default','Member Status activated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"info\": {\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 0, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:15:21.000000Z\", \"description\": \"He\'s good student with 75%\"}}',NULL,'2024-06-13 17:15:21','2024-06-13 17:15:21'),(73,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:15:27.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 17:15:27','2024-06-13 17:15:27'),(74,'default','Member Status activated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"info\": {\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 0, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:16:02.000000Z\", \"description\": \"He\'s good student with 75%\"}}',NULL,'2024-06-13 17:16:02','2024-06-13 17:16:02'),(75,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:16:45.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 17:16:45','2024-06-13 17:16:45'),(76,'default','Member Status activated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"info\": {\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 0, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:16:51.000000Z\", \"description\": \"He\'s good student with 75%\"}}',NULL,'2024-06-13 17:16:51','2024-06-13 17:16:51'),(77,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:17:22.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 17:17:22','2024-06-13 17:17:22'),(78,'default','Member Status activated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"info\": {\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 0, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:37:49.000000Z\", \"description\": \"He\'s good student with 75%\"}}',NULL,'2024-06-13 17:37:49','2024-06-13 17:37:49'),(79,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T19:59:24.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 17:59:24','2024-06-13 17:59:24'),(80,'default','Member Status activated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"info\": {\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 0, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:02:49.000000Z\", \"description\": \"He\'s good student with 75%\"}}',NULL,'2024-06-13 18:02:49','2024-06-13 18:02:49'),(81,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:06:16.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:06:16','2024-06-13 18:06:16'),(82,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:15:38.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:15:38','2024-06-13 18:15:38'),(83,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:18:34.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:18:34','2024-06-13 18:18:34'),(84,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:19:29.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:19:29','2024-06-13 18:19:29'),(85,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:19:38.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:19:38','2024-06-13 18:19:38'),(86,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:21:07.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:21:07','2024-06-13 18:21:07'),(87,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:21:55.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:21:55','2024-06-13 18:21:55'),(88,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:22:23.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:22:23','2024-06-13 18:22:23'),(89,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:22:29.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:22:29','2024-06-13 18:22:29'),(90,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:27:19.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:27:19','2024-06-13 18:27:19'),(91,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:27:25.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:27:25','2024-06-13 18:27:25'),(92,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-13T20:29:18.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-13 18:29:18','2024-06-13 18:29:18'),(93,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-14 04:09:58','2024-06-14 04:09:58'),(94,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-14T06:10:03.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-14 04:10:03','2024-06-14 04:10:03'),(95,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-14T06:10:07.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-14 04:10:07','2024-06-14 04:10:07'),(96,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-14T06:10:12.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-14 04:10:12','2024-06-14 04:10:12'),(97,'default','Member Status Diactivated','App\\Models\\Member','status changed',1,'App\\Models\\User',1,'{\"id\": 1, \"bod\": \"1997-01-28\", \"phone\": \"(078) 111-1111\", \"cat_id\": 4, \"status\": 1, \"address\": \"Kicukiro\", \"user_id\": 1, \"last_name\": \"Gaston\", \"created_at\": \"2024-05-28T19:31:32.000000Z\", \"first_name\": \"Niyibizi\", \"updated_at\": \"2024-06-14T06:10:17.000000Z\", \"description\": \"He\'s good student with 75%\"}',NULL,'2024-06-14 04:10:17','2024-06-14 04:10:17'),(98,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-16 12:03:36','2024-06-16 12:03:36'),(99,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 2, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-28T15:43:39.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-16 12:08:41','2024-06-16 12:08:41'),(100,'default','New User added','App\\Models\\User','new user',25,'App\\Models\\User',1,'{\"info\": {\"role\": \"2\", \"email\": \"againtest2020@gmail.com\", \"_token\": \"5KKdVyMP8L24pSXbVI0kEPpnWiMpWqkmqFRHlfM9\", \"status\": \"1\", \"password\": \"aeVhmfR3\", \"center_id\": \"5\", \"last_name\": \"Mugineza\", \"center_ids\": null, \"created_by\": 1, \"first_name\": \"Pacy\", \"centrale_id\": \"5\", \"profile_pic\": null, \"community_id\": \"5\", \"phone_number\": null, \"encryptpassword\": \"$2y$12$VGZHsf/8eDCWpP2FmkGIhO2k/icuyLlCzfAPb9qgQvYrzoyLummdS\"}}',NULL,'2024-06-16 12:12:47','2024-06-16 12:12:47'),(101,'default','updated','App\\Models\\User','updated',25,NULL,NULL,'{\"old\": {\"email\": \"againtest2020@gmail.com\", \"last_name\": \"Mugineza\", \"first_name\": \"Pacy\"}, \"attributes\": {\"email\": \"againtest2020@gmail.com\", \"last_name\": \"Mugineza\", \"first_name\": \"Pacy\"}}',NULL,'2024-06-16 12:13:59','2024-06-16 12:13:59'),(102,'default','User logged in','App\\Models\\User','Logged in',25,'App\\Models\\User',25,'{\"by\": {\"id\": 25, \"role\": 2, \"email\": \"againtest2020@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Mugineza\", \"created_at\": \"2024-06-16T14:12:47.000000Z\", \"created_by\": \"1\", \"first_name\": \"Pacy\", \"updated_at\": \"2024-06-16T14:13:59.000000Z\", \"centrale_id\": 5, \"community_id\": 5, \"phone_number\": null, \"remember_token\": \"Ztx6MkKKKHsb2XSBcupEIFxhohrtVfGZwCoujXVNmdf3hXjbIMKVuKz8Wzm9\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-16 12:14:58','2024-06-16 12:14:58'),(103,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-17 05:50:52','2024-06-17 05:50:52'),(104,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-17 07:18:43','2024-06-17 07:18:43'),(105,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-17 07:39:40','2024-06-17 07:39:40'),(106,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 2, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-28T15:43:39.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-17 09:54:38','2024-06-17 09:54:38'),(107,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 2, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-28T15:43:39.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-17 10:15:00','2024-06-17 10:15:00'),(108,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-17 16:36:32','2024-06-17 16:36:32'),(109,'default','User logged in','App\\Models\\User','Logged in',25,'App\\Models\\User',25,'{\"by\": {\"id\": 25, \"role\": 2, \"email\": \"againtest2020@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Mugineza\", \"created_at\": \"2024-06-16T14:12:47.000000Z\", \"created_by\": \"1\", \"first_name\": \"Pacy\", \"updated_at\": \"2024-06-16T14:13:59.000000Z\", \"centrale_id\": 5, \"community_id\": 5, \"phone_number\": null, \"remember_token\": \"Ztx6MkKKKHsb2XSBcupEIFxhohrtVfGZwCoujXVNmdf3hXjbIMKVuKz8Wzm9\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-17 16:36:53','2024-06-17 16:36:53'),(110,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 2, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-05-28T15:43:39.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-17 16:39:24','2024-06-17 16:39:24'),(111,'default','User updated','App\\Models\\User','updated',1,'App\\Models\\User',1,'{\"info\": {\"id\": \"24\", \"name\": \"-\", \"role\": \"4\", \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": 0, \"last_name\": \"Emmizo\", \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"4\"}}',NULL,'2024-06-17 16:40:06','2024-06-17 16:40:06'),(112,'default','User updated','App\\Models\\User','updated',1,'App\\Models\\User',1,'{\"info\": {\"id\": \"24\", \"name\": \"-\", \"role\": \"4\", \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": 0, \"last_name\": \"Emmizo\", \"first_name\": \"KWIZERA\", \"centrale_id\": \"2\", \"profile_pic\": null, \"community_id\": \"4\"}}',NULL,'2024-06-17 16:40:21','2024-06-17 16:40:21'),(113,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-18 04:03:04','2024-06-18 04:03:04'),(114,'default','User logged in','App\\Models\\User','Logged in',25,'App\\Models\\User',25,'{\"by\": {\"id\": 25, \"role\": 2, \"email\": \"againtest2020@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Mugineza\", \"created_at\": \"2024-06-16T14:12:47.000000Z\", \"created_by\": \"1\", \"first_name\": \"Pacy\", \"updated_at\": \"2024-06-16T14:13:59.000000Z\", \"centrale_id\": 5, \"community_id\": 5, \"phone_number\": null, \"remember_token\": \"Ztx6MkKKKHsb2XSBcupEIFxhohrtVfGZwCoujXVNmdf3hXjbIMKVuKz8Wzm9\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-18 04:03:24','2024-06-18 04:03:24'),(115,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-18 08:09:12','2024-06-18 08:09:12'),(116,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 4, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-06-17T18:40:21.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-18 08:10:17','2024-06-18 08:10:17'),(117,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-19 10:05:33','2024-06-19 10:05:33'),(118,'default','User logged in','App\\Models\\User','Logged in',25,'App\\Models\\User',25,'{\"by\": {\"id\": 25, \"role\": 2, \"email\": \"againtest2020@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Mugineza\", \"created_at\": \"2024-06-16T14:12:47.000000Z\", \"created_by\": \"1\", \"first_name\": \"Pacy\", \"updated_at\": \"2024-06-16T14:13:59.000000Z\", \"centrale_id\": 5, \"community_id\": 5, \"phone_number\": null, \"remember_token\": \"Ztx6MkKKKHsb2XSBcupEIFxhohrtVfGZwCoujXVNmdf3hXjbIMKVuKz8Wzm9\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-19 10:18:42','2024-06-19 10:18:42'),(119,'default','User logged in','App\\Models\\User','Logged in',24,'App\\Models\\User',24,'{\"by\": {\"id\": 24, \"role\": 4, \"email\": \"kwizera@techaffinity.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmizo\", \"created_at\": \"2024-05-28T15:43:12.000000Z\", \"created_by\": \"1\", \"first_name\": \"KWIZERA\", \"updated_at\": \"2024-06-17T18:40:21.000000Z\", \"centrale_id\": 2, \"community_id\": 4, \"phone_number\": null, \"remember_token\": \"32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i\", \"profile_picture\": \"\", \"email_verified_at\": null}}',NULL,'2024-06-19 10:19:44','2024-06-19 10:19:44'),(120,'default','Member Status Diactivated','App\\Models\\Member','status changed',5,'App\\Models\\User',24,'{\"id\": 5, \"bod\": \"1997-01-18\", \"phone\": \"(078) 116-7274\", \"cat_id\": 2, \"status\": 2, \"address\": \"Kicukiro\", \"user_id\": 24, \"hospital\": null, \"last_name\": \"Andy\", \"sdms_code\": null, \"created_at\": \"2024-06-18T12:24:16.000000Z\", \"first_name\": \"Elive\", \"updated_at\": \"2024-06-19T13:24:36.000000Z\", \"description\": \"New Addition\", \"school_name\": \"1\", \"other_support\": null}',NULL,'2024-06-19 11:24:36','2024-06-19 11:24:36'),(121,'default','Member Status Diactivated','App\\Models\\Member','status changed',6,'App\\Models\\User',24,'{\"id\": 6, \"bod\": \"2008-02-18\", \"phone\": \"(078) 116-7275\", \"cat_id\": 2, \"status\": 1, \"address\": \"Kibungo\", \"user_id\": 24, \"hospital\": null, \"last_name\": \"Kat\", \"sdms_code\": \"974774\", \"created_at\": \"2024-06-18T12:25:32.000000Z\", \"first_name\": \"Ndikumana\", \"updated_at\": \"2024-06-19T13:24:40.000000Z\", \"description\": \"New\", \"school_name\": \"1\", \"other_support\": null}',NULL,'2024-06-19 11:24:40','2024-06-19 11:24:40'),(122,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-19 12:59:49','2024-06-19 12:59:49'),(123,'default','User logged in','App\\Models\\User','Logged in',1,'App\\Models\\User',1,'{\"by\": {\"id\": 1, \"role\": 1, \"email\": \"emmizokwizera@gmail.com\", \"status\": \"1\", \"is_delete\": \"0\", \"last_name\": \"Emmy\", \"created_at\": null, \"created_by\": null, \"first_name\": \"Kwizera\", \"updated_at\": null, \"centrale_id\": null, \"community_id\": null, \"phone_number\": null, \"remember_token\": null, \"profile_picture\": null, \"email_verified_at\": null}}',NULL,'2024-06-19 15:06:02','2024-06-19 15:06:02');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('spatie.permission.cache','a:3:{s:5:\"alias\";a:5:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";s:1:\"l\";s:6:\"status\";}s:11:\"permissions\";a:6:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"Manage-Roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"Manage-Users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:3;i:2;i:4;i:3;i:5;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:14:\"Manage-Members\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:6:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:17:\"Manage-categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:16:\"Manage-community\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:3;i:2;i:4;i:3;i:5;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"Manage-Centrale\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}}}s:5:\"roles\";a:6:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";s:1:\"l\";i:1;}i:1;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:21:\"President of Diocesse\";s:1:\"c\";s:3:\"web\";s:1:\"l\";i:1;}i:2;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:18:\"President Centrale\";s:1:\"c\";s:3:\"web\";s:1:\"l\";i:1;}i:3;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:19:\"President of Parish\";s:1:\"c\";s:3:\"web\";s:1:\"l\";i:1;}i:4;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:15:\"Community chief\";s:1:\"c\";s:3:\"web\";s:1:\"l\";i:1;}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:6:\"Father\";s:1:\"c\";s:3:\"web\";s:1:\"l\";i:1;}}}',1718885132);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `category_name` varchar(145) DEFAULT NULL,
  `description` text,
  `status` int DEFAULT '1',
  `is_deleted` int DEFAULT '0',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`user_id`),
  CONSTRAINT `id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,24,'Patient','Whoever have sickness without potential',1,0,'2024-05-28 16:18:33.000000','2024-05-28 16:18:33.000000'),(2,24,'Student','Whoever\'s student and require support',1,0,'2024-05-28 16:19:48.000000','2024-05-28 16:19:48.000000'),(3,24,'Other support','Other support which is unpredictable',1,0,'2024-06-18 08:26:33.000000','2024-06-18 08:26:33.000000');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centers`
--

DROP TABLE IF EXISTS `centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `center_name` varchar(245) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centers`
--

LOCK TABLES `centers` WRITE;
/*!40000 ALTER TABLE `centers` DISABLE KEYS */;
INSERT INTO `centers` VALUES (2,1,'Musha',1,'2024-05-27 17:01:50.000000','2024-05-27 18:07:53.000000',0),(5,1,'Kiramuruzi',1,'2024-05-27 18:01:26.000000','2024-05-27 18:01:26.000000',0);
/*!40000 ALTER TABLE `centers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `community_name` varchar(245) DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `center_id` int unsigned DEFAULT NULL,
  `status` int DEFAULT '1',
  `is_deleted` int DEFAULT '0',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'Kabare',24,2,1,0,'2024-05-27 18:55:32.000000','2024-06-17 17:23:22.000000'),(4,'Muyumb',24,2,1,0,'2024-05-28 08:11:29.000000','2024-06-17 17:27:32.000000'),(5,'Kiramurizi 2',1,5,1,0,'2024-05-28 09:29:51.000000','2024-05-28 09:29:51.000000');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `bod` varchar(20) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(245) DEFAULT NULL,
  `cat_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `school_name` varchar(245) DEFAULT NULL,
  `description` text,
  `hospital` varchar(45) DEFAULT NULL,
  `sdms_code` varchar(45) DEFAULT NULL,
  `other_support` varchar(245) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`cat_id`),
  KEY `id_idx1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Niyibizi','Gaston','1997-01-28','(078) 111-1111','Kicukiro',1,24,NULL,'He\'s good student with 75%',NULL,NULL,NULL,1,'2024-05-28 17:31:32.000000','2024-06-14 04:10:17.000000'),(2,'Munyawera','Fils','1993-01-16','(078) 122-8848','Kabare/Rwamagana',2,25,NULL,'He is facing issue in paying school fees',NULL,NULL,NULL,0,'2024-06-16 13:49:23.000000','2024-06-16 13:49:23.000000'),(5,'Elive','Andy','1997-01-18','(078) 116-7274','Kicukiro',2,24,'1','New Addition',NULL,NULL,NULL,2,'2024-06-18 10:24:16.000000','2024-06-19 11:24:36.000000'),(6,'Ndikumana','Kat','2008-02-18','(078) 116-7275','Kibungo',2,24,'1','New',NULL,'974774',NULL,1,'2024-06-18 10:25:32.000000','2024-06-19 11:24:40.000000'),(7,'Nyakuri','Levitte','2000-01-18','(078) 119-7275','Kigali',1,24,'0','Sickness','Rwamagana Hospital',NULL,NULL,0,'2024-06-18 10:27:58.000000','2024-06-18 10:27:58.000000'),(8,'Km','New','2015-01-18','(078) 106-7275','Kibuye',3,24,NULL,'new',NULL,NULL,NULL,0,'2024-06-18 10:29:03.000000','2024-06-18 10:29:03.000000');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_05_21_130337_create_activity_log_table',2),(5,'2024_05_21_130338_add_event_column_to_activity_log_table',2),(6,'2024_05_21_130339_add_batch_uuid_column_to_activity_log_table',2),(7,'2024_05_21_134115_create_oauth_personal_access_clients_table',3),(8,'2024_05_21_134116_create_oauth_auth_codes_table',3),(9,'2024_05_21_134117_create_oauth_access_tokens_table',3),(10,'2024_05_21_134118_create_oauth_clients_table',3),(11,'2024_05_21_134119_create_oauth_refresh_tokens_table',3),(12,'2023_12_19_094354_create_permission_tables',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',9),(2,'App\\Models\\User',10),(2,'App\\Models\\User',11),(2,'App\\Models\\User',12),(2,'App\\Models\\User',15),(2,'App\\Models\\User',18),(2,'App\\Models\\User',19),(2,'App\\Models\\User',20),(2,'App\\Models\\User',23),(4,'App\\Models\\User',24),(2,'App\\Models\\User',25);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('14bb9df8fd6e3ca8d6e35478a729c11765ea6ce99bae043375085a4d889a0f92b9b3f86bb5fba112',1,'9c18b279-c1dc-4746-9728-b2a709901d08','Laravel Password Grant Client','[]',0,'2024-06-17 07:18:43','2024-06-17 07:18:43','2025-06-17 09:18:43'),('529230530aef5b3155fd26ed160a70d46c4b2a2053665fbfa8fd408e9ef82cf10786eacaf9c56226',24,'9c18b279-c1dc-4746-9728-b2a709901d08','Laravel Password Grant Client','[]',0,'2024-06-17 10:15:00','2024-06-17 10:15:00','2025-06-17 12:15:00'),('607b22c8b93f4f50b65b6d8dd4e7f93d9fcac3a65738d65b608f3b028f3ff5223defe3a5add1b93d',24,'9c18b279-c1dc-4746-9728-b2a709901d08','Laravel Password Grant Client','[]',0,'2024-06-17 09:54:38','2024-06-17 09:54:38','2025-06-17 11:54:38'),('c1a63ceed7bea0586b40d4d96fe4a17b6552382d8dd82362e926fba252094820d27e18066334516d',1,'9c18b279-c1dc-4746-9728-b2a709901d08','Laravel Password Grant Client','[]',0,'2024-06-17 07:39:40','2024-06-17 07:39:40','2025-06-17 09:39:40'),('ec1793832ad7933af9f547385625bdad6947b5065039dd671891a1366f1efe6266e2484f29e739ef',1,'9c18b279-c1dc-4746-9728-b2a709901d08','Laravel Password Grant Client','[]',0,'2024-06-17 07:18:22','2024-06-17 07:18:22','2025-06-17 09:18:22');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('9c18b279-c1dc-4746-9728-b2a709901d08',NULL,'Laravel Personal Access Client','dmqO8YXY991YBV6ceMsdmOqimQkaU4DawO9RdTc7',NULL,'http://localhost',1,0,0,'2024-05-21 11:41:14','2024-05-21 11:41:14'),('9c18b279-c680-4092-a87a-076705ff47a7',NULL,'Laravel Password Grant Client','ir2oJCTmpFb5XTRdd4eNUKfBbBpCB7sVyQ0ZH4Ez','users','http://localhost',0,1,0,'2024-05-21 11:41:14','2024-05-21 11:41:14');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'9c18b279-c1dc-4746-9728-b2a709901d08','2024-05-21 11:41:14','2024-05-21 11:41:14');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` VALUES ('emmizokwizera@gmail.com','$2y$12$33duBpqfFWF1R.Xlcwb.juHCmm81Vs4fJEPCwI.AhJvWEqi5BpCPO','2024-06-17 09:22:20');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Manage-Roles','web','2023-12-20 13:11:25','2023-12-20 13:11:25'),(2,'Manage-Users','web','2023-12-20 13:11:25','2023-12-20 13:11:25'),(3,'Manage-Members','web','2023-12-20 13:11:25','2023-12-20 13:11:25'),(4,'Manage-categories','web','2023-12-20 13:11:25','2023-12-20 13:11:25'),(5,'Manage-community','web','2023-12-20 13:11:25','2023-12-20 13:11:25'),(6,'Manage-Centrale','web','2023-12-20 13:11:25','2023-12-20 13:11:25'),(7,'Manage-Supports','web','2023-12-20 13:11:25',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(3,2),(4,2),(2,3),(3,3),(4,3),(5,3),(6,3),(2,4),(3,4),(4,4),(5,4),(2,5),(3,5),(4,5),(5,5),(6,5),(3,6);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','web','2024-05-22 17:06:38','2024-05-22 17:11:37',1),(2,'Community chief','web','2024-05-22 17:06:38','2024-05-22 17:06:38',1),(3,'President of Diocesse','web','2024-05-22 17:06:38','2024-06-17 16:41:22',1),(4,'President Centrale','web','2024-05-22 17:06:38','2024-05-22 17:06:38',1),(5,'President of Parish','web','2024-05-22 17:06:38','2024-05-22 17:06:38',1),(6,'Father','web','2024-05-22 17:06:38','2024-05-22 17:06:38',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('2K4QghTfCoYOs9vA4v7PDorJZY3oD7AwWXpzM9b0',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamlndFZhMXRFc3l0TVJiS0ZsbWdwazBxcFRQSTE1d29lVnM2U1BSZyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718816798),('3sPkfm55C7Vdgmi5rW4ss63SlZr18V0IJXHEH5UP',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNjFVWHRxZjRKZEZNWFVIOTZuUUl0bkdVNkc1cEhTTDFnNUtXRWdsVyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718812003),('56BtEA6lJFrgDYo4xZjuz1JNLA7ynI8N6SFylYBg',1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQnNOOGNyUWRiRzVwWFlSWms0cU5qWTNRdGd2Szd2blpkR01ibmJBYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tZW1iZXJzL21lbWJlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1718816798),('eQ1O3usC6dQVP29TEnFtednl37nnYkSAYFMCE48R',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkx2bFFuQzJvd2padE9oTjByYkdVRWZUTDRpclJSVU9DeUhRc2h4MyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718812141),('GB4QbE1y5uhOo8THnISK5YOlEue5okYFe3Eff5gA',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicnJTSW0wTm5JOUhxSnEzZ09CbFJJWnM1b1lrMmNDbVVCVjBhZTJCNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1718809182),('GdXNSLJBGhEj4NIWG670v3xMKgQBZOb18WtHFMn9',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRzRrQ05HNmRES0pnaGN4MEowVGVXblFMdjNCdlpWZ2p6RmFoQ0ZKaiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718811649),('gnmCChmQQgyFRsK4uVsIvJIAyEJiRWnCrk4gAkaV',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZTB3S3VlQzl3N1RGZDVlVzJIOTIwWmZ2bTZwUWdJQTgwM2M4d2M2MSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718810865),('INY0wOqzbeBFuR3uFytA3PZEffLuZBbB0XHarg8R',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYjI1V0MyNjFDZVpIdnJYN2o3dElvRDFZRE80UUhFSjhLZ3VRS2VoeSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718812339),('jRnDtjzDYSqafRw8h5z1QSWbF0Cdr3ypBAYkRT9Q',24,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiN3NoVWRrNUpiQTY1bWhNVGtWeG4wdmJEd203a1B3d2oybTR5Yk82TyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjQ7fQ==',1718816810),('kyhLaF0UvvaejOzPN5vkIHrdfk7nGL92NDpEdKMv',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoidE9Qd2lzOWNWNUl3VHBGT055RElFMENxeklxcEpIRXVuRnpRMDNMYyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718812178),('l0Rlb5cMAd2OWf4mACIM1T1Kubw9f8bsoOPBM1MN',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicTBCZTNwNW1sTGV0MjgxY0pybWI1RGlMYm1IMXhITDRybnJRaHh5QiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718811798),('ndg5olcNmXUhfrVgCIVeRyMbDw8jg4u43avFk7RY',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicElQcWFZZ2prV2lkZ0xHaDZkTEZTSndTaVBabm1sdkJGQ3lyR2VLQiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718812270),('PTJPUraCmJuLZQaFDluUKLvAHHCy74febwLEZlXd',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkxRcXNCQWFYamM5c2VvcmZnRFNRNTVuMEE1RWg0dnFPTzhGN0FTUyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718812387),('pvIpOCJ1Ws2cyJ2y5OSQkByaLBLCa8r0ZJu9QGd8',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYk9KNGhnNzN1WUZPeE5yTEF4a2hYZ1ViS0RHejZ5RDZBYXQ1SngwTCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718809557),('QgW4ZRNiDxrasRHky6YLFYRO6bXhPQvgc0CKAs9p',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS1hwSHNxbTZxV2Y0Yzg5NmN0TEU4cUdGQ0pQV0hJN3NXWWZaYUZxUSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718809729),('rEqVadifpRG2SM9dfA1mC8InxOkWMNADQjKW5mFD',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkJKUHhKUFh6TlZXbXIzeTlMQ05WeVRWME9DVHhyVzlMUzBMeXF5USI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718810955),('RSjJotKgwfwxal3HaYxbpxLtbOfXUghotvsn5aDi',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibWVKUWRFZ2FiUThrcXBGeTBwcld2bmJqYUF5dkthQTh6ZU5NTFRHVyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718812524),('td0aDz0PjkatsXSnkc1CF6hogLsIVOTY1APARfnM',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWE93UW1paVJrU1ZKT0prUEdvYWZOWWM2dGQyNEtUYVNBa3ZoQmJnTyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718811941),('TMLXqpXscKaPXlB7NVqIqxrmFfWM5XCgoXVejQ5E',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRjdYNUNreVBiTEhVUGRCZlVYOGFWd0IzOE9FbTk2S3d6TDNyU1JYUyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718811292),('XeZTk5A3kdhyYXEQJO4jZmzGrgQ8ph4E2ABZB3BM',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNW5nTjFLenRlZ0hvV1h4cnZVMWwyTlpEdWlGeTVqOW4yWkhtbFhXSiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21lbWJlcnMvbWVtYmVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWVtYmVycy9tZW1iZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718811026);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supports`
--

DROP TABLE IF EXISTS `supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `reasons` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int DEFAULT '1',
  `is_delete` int DEFAULT '0',
  PRIMARY KEY (`id`,`member_id`,`user_id`),
  KEY `member_id_idx` (`member_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supports`
--

LOCK TABLES `supports` WRITE;
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
/*!40000 ALTER TABLE `supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `community_id` int unsigned DEFAULT NULL,
  `centrale_id` int unsigned DEFAULT NULL,
  `role` int unsigned DEFAULT NULL,
  `phone_number` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_delete` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kwizera','Emmy','emmizokwizera@gmail.com',NULL,'$2y$12$vTVcFSR8NuFLqsV7fRZ/h.CHaXSDfKbOf1A.wqZp8Linu6o1JLwTS',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'0','1'),(24,'KWIZERA','Emmizo','kwizera@techaffinity.com',NULL,'$2y$12$7XAtRJcuCDcnwX.RoLkPM.EnA3DBjarAF.vFuUJV5ySxLcSuBDlVC',4,2,4,NULL,'','32pDpAiktogO56osP688l8ti5V14Qif8Y7nWZ1LlwDymkmgwqOVHkThbv65i','1','2024-05-28 13:43:12','2024-06-17 16:40:21','0','1'),(25,'Pacy','Mugineza','againtest2020@gmail.com',NULL,'$2y$12$U6O9F4ECpsQkTHnO/b6Gb.Bg3Yiqo5GfWmuqm.ktc7NqlX9Ev1/Ea',5,5,2,NULL,'','Ztx6MkKKKHsb2XSBcupEIFxhohrtVfGZwCoujXVNmdf3hXjbIMKVuKz8Wzm9','1','2024-06-16 12:12:47','2024-06-16 12:13:59','0','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19 19:17:00
