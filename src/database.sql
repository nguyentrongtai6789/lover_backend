-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: lover-database
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `status_account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_k8h1bgqoplx0rkngj01pm1rgp` (`username`),
  KEY `FKt7u4kwo2bflo5wpqql0y19plu` (`status_account_id`),
  CONSTRAINT `FKt7u4kwo2bflo5wpqql0y19plu` FOREIGN KEY (`status_account_id`) REFERENCES `status_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (4,'2023-11-08 09:43:15',NULL,1,NULL,'lover1@gmail.com','Mẫn Mẫn','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover1',1),(5,'2023-11-08 09:43:15',NULL,1,NULL,'lover2@gmail.com','Thảo Nhi','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover2',1),(6,'2023-11-08 09:43:15',NULL,1,NULL,'lover3@gmail.com','Huyền Anh','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover3',1),(7,'2023-11-08 09:43:15',NULL,1,NULL,'lover4@gmail.com','Như Maria','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover4',1),(8,'2023-11-08 09:43:15',NULL,1,NULL,'lover5@gmail.com','Hằng Mai','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover5',1),(9,'2023-11-08 09:43:15',NULL,1,NULL,'lover6@gmail.com','Bảo Linh','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover6',1),(10,'2023-11-08 09:43:15',NULL,1,NULL,'lover7@gmail.com','Mỹ Tâm','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover7',1),(11,'2023-11-08 09:43:15',NULL,1,NULL,'lover8@gmail.com','Bảo Anh','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover8',1),(12,'2023-11-09 17:09:54',NULL,1,NULL,'lover9@gmail.com','Mai Anh','$2a$10$u850aQCRwhjQwiCxN8UzXutOyiCF57WdBjGZ/4kzqCBVcHVDgtpIW','lover9',1),(13,'2023-11-10 01:34:04',NULL,1,NULL,'lover10@gmail.com','Linh Anh','$2a$10$adGQ1Vdm0DrGmexOIeDdpOn93/qknF.QWZhZ531kZZfAEqUAM58NS','lover10',1),(14,'2023-11-15 13:48:39',NULL,1,'2023-11-15 13:48:39','admin1@gmail.com','Tài Nguyễn','$2a$10$adGQ1Vdm0DrGmexOIeDdpOn93/qknF.QWZhZ531kZZfAEqUAM58NS','admin1',1),(15,'2023-11-15 13:50:02',NULL,1,NULL,'lover11@gmail.com','Thiều Bảo Trâm','$2a$10$LMs2ItU5LmqAEzkAUQiBvevJ9i72QEqLlLfvLNtx7f.nPVflsy/RK','lover11',1),(16,'2023-11-15 14:48:55',NULL,1,NULL,'lover12@gmail.com','Hải Tú','$2a$10$AGidgGFnf1Ov6ThTA/5hJ.DwILRMgPNt7OVJSgE1HtLx1MO7twtZi','lover12',1),(17,'2023-11-16 01:18:13',NULL,1,NULL,'lover13@gmail.com','Miu Lê','$2a$10$chHp8IMSaaMIEdTrzGPsRu3qgcDROqOeV0RtEScwPi1exHZMIEg.a','lover13',1),(18,'2023-11-16 01:22:41',NULL,1,NULL,'lover14@gmail.com','Táo','$2a$10$rIEQBwdMPLeKz9AZswaTNu7KZVTg8.7GJPIyuwB9jz9.hPA2SfwpG','lover14',1),(36,'2023-11-19 10:31:25',NULL,1,NULL,'lover15@gmail.com','Ngọc','$2a$10$/Lp2.lZgm6QCi7.4guLYLeO1XeJ9IqWWhJCh8oVtqRtLcHaoZfqv6','lover15',1),(37,'2023-11-19 15:55:20',NULL,1,NULL,'lover16@gmail.com','Dâu','$2a$10$emk31vGr.quguZ9OsyN12etfwLDskhW.aGhcQ0LwczB2cTN/E/OUG','lover16',1),(38,'2023-11-19 16:07:39',NULL,1,NULL,'lover17@gmail.com','Thảo','$2a$10$zsXe6b8rqvGppHJU2QDUxO/t4sYC9IfYHSltpv5n39PiH6TcDBdD2','lover17',1),(39,'2023-11-20 03:08:45',NULL,1,NULL,'lover18@gmail.com','Mia cute nè','$2a$10$WUaJLeh33UicPfnGAvnZB.JvjnUhN6khwkfkTBNhVIjkcdf7csxBy','lover18',1),(40,'2023-11-20 09:41:57',NULL,1,NULL,'lover19@gmail.com','Tiểu lươn','$2a$10$UhUa7vqoN0gbmkuRafX9y.9l5YgstNibPvvwxgDs80OKOUI2cWiN.','lover19',1),(41,'2023-11-20 10:01:36',NULL,1,NULL,'lover20@gmail.com','Bích Ngọc','$2a$10$bRtQrjW9cfqfqGIe.uPUnuVLPhOQNrcqku0D1qn/TxnzWNC67LPxW','lover20',1),(42,'2023-11-20 10:10:41',NULL,1,NULL,'lover21@gmail.com','Miêu Miêu','$2a$10$K3MGXKp6P7uJDjJaiQcQMeuFD3Z/9g9J/CrXS4F54Uth7OcF3qMDy','lover21',1),(43,'2023-11-20 10:48:02',NULL,1,NULL,'lover22@gmail.com','Gấm','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover22',1),(44,'2023-11-21 02:41:59',NULL,1,'2023-11-21 02:41:59','lover23@gmail.com','Hồng Quân','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover23',1),(45,'2023-11-21 02:41:59',NULL,1,'2023-11-21 02:41:59','lover24@gmail.com','Đình Đông','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover24',1),(46,'2023-11-21 02:41:59',NULL,1,'2023-11-21 02:41:59','lover25@gmail.com','Anh Tuấn','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover25',1),(47,'2023-11-21 02:41:59',NULL,1,'2023-11-21 02:41:59','lover26@gmail.com','Minh Thành','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover26',1),(48,'2023-11-21 02:41:59',NULL,1,'2023-11-21 02:41:59','lover27@gmail.com','Việt Anh','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover27',1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_roles`
--

DROP TABLE IF EXISTS `accounts_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_roles` (
  `account_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`account_id`,`role_id`),
  KEY `FKpwest19ib22ux5gk54esw9qve` (`role_id`),
  CONSTRAINT `FKpwest19ib22ux5gk54esw9qve` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKt44duw96d6v8xrapfo4ff2up6` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_roles`
--

LOCK TABLES `accounts_roles` WRITE;
/*!40000 ALTER TABLE `accounts_roles` DISABLE KEYS */;
INSERT INTO `accounts_roles` VALUES (14,1),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(15,3),(16,3),(17,3),(18,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,3),(42,3),(43,3);
/*!40000 ALTER TABLE `accounts_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time` int NOT NULL,
  `total_money` double NOT NULL,
  `account_lover_id` bigint DEFAULT NULL,
  `account_user_id` bigint DEFAULT NULL,
  `status_bill_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1j848tejkw4fo90je3e6lyi1m` (`account_lover_id`),
  KEY `FKqwh6qllhvm089up4u6uxtqmpk` (`account_user_id`),
  KEY `FKix7ix3bxeb2ip02ao16gd02d` (`status_bill_id`),
  CONSTRAINT `FK1j848tejkw4fo90je3e6lyi1m` FOREIGN KEY (`account_lover_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKix7ix3bxeb2ip02ao16gd02d` FOREIGN KEY (`status_bill_id`) REFERENCES `status_bill` (`id`),
  CONSTRAINT `FKqwh6qllhvm089up4u6uxtqmpk` FOREIGN KEY (`account_user_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (31,'2023-11-15 13:54:56',NULL,1,NULL,2,270000,4,15,3),(33,'2023-11-15 13:58:28',NULL,1,NULL,2,270000,4,15,6),(36,'2023-11-16 01:23:10',NULL,1,NULL,1,122000,6,18,2),(37,'2023-11-16 01:27:53',NULL,1,NULL,2,122000,7,18,3),(38,'2023-11-16 01:35:08',NULL,1,NULL,3,168000,7,18,3),(39,'2023-11-16 01:36:33',NULL,1,NULL,1,86000,7,18,1),(41,'2023-11-17 11:34:58',NULL,1,NULL,5,510000,4,15,1),(42,'2023-11-18 02:36:56',NULL,1,NULL,3,350000,4,15,1),(43,'2023-11-19 14:57:34',NULL,1,NULL,1,51234,15,36,1),(44,'2023-11-20 01:11:03',NULL,1,NULL,3,218000,7,37,3),(45,'2023-11-20 01:22:10',NULL,1,NULL,2,202000,7,37,3),(46,'2023-11-20 02:13:56',NULL,1,NULL,2,182000,7,37,1),(47,'2023-11-20 04:27:44',NULL,1,NULL,1,190000,4,39,1),(48,'2023-11-20 10:52:20',NULL,1,NULL,2,52468,15,43,1),(49,'2023-11-20 14:32:13',NULL,1,NULL,3,530000,4,15,1),(50,'2023-11-20 14:53:18',NULL,1,NULL,1,390000,4,7,1),(51,'2023-11-20 14:57:33',NULL,1,NULL,1,660000,4,7,1),(52,'2023-11-20 15:00:04',NULL,1,NULL,2,210000,4,7,1),(53,'2023-11-20 15:00:18',NULL,1,NULL,1,210000,4,7,1),(54,'2023-11-20 15:01:06',NULL,1,NULL,1,190000,4,7,1),(55,'2023-11-20 15:01:16',NULL,1,NULL,2,270000,4,7,1);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills_vip_services`
--

DROP TABLE IF EXISTS `bills_vip_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills_vip_services` (
  `id_bill` bigint NOT NULL,
  `id_vip_service` bigint NOT NULL,
  KEY `FKctosk1rb00egc15m6hib6y7kn` (`id_vip_service`),
  KEY `FKresruuv74jm5vkw6oxgxlq8a9` (`id_bill`),
  CONSTRAINT `FKctosk1rb00egc15m6hib6y7kn` FOREIGN KEY (`id_vip_service`) REFERENCES `vip_service` (`id`),
  CONSTRAINT `FKresruuv74jm5vkw6oxgxlq8a9` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills_vip_services`
--

LOCK TABLES `bills_vip_services` WRITE;
/*!40000 ALTER TABLE `bills_vip_services` DISABLE KEYS */;
INSERT INTO `bills_vip_services` VALUES (31,1),(31,2),(33,1),(33,2),(36,1),(37,1),(38,2),(39,1),(41,1),(41,2),(42,1),(42,2),(43,1),(44,1),(44,2),(45,2),(45,3),(46,1),(46,2),(47,1),(47,2),(48,1),(49,1),(49,1),(49,2),(49,2),(49,3),(50,1),(50,2),(50,2),(50,3),(50,3),(51,1),(51,1),(51,1),(51,1),(51,1),(51,2),(51,2),(51,3),(51,3),(51,3),(52,1),(53,2),(53,3),(54,1),(54,2),(55,1),(55,2);
/*!40000 ALTER TABLE `bills_vip_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrpd7j1p7yxr784adkx4pyepba` (`country_id`),
  CONSTRAINT `FKrpd7j1p7yxr784adkx4pyepba` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Hà Nội',1),(2,'Thái Bình',1),(3,'Nam Định',1),(4,'Nghệ An',1),(5,'Thanh Hoá',1),(6,'New York',2),(7,'Chicago',2),(8,'Washington',2),(9,'Miami',2),(10,'Florida',2),(11,'Texas',2);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  `account_receive_id` bigint DEFAULT NULL,
  `account_send_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1n27txu5x586sdtcwvb5rm4cj` (`account_receive_id`),
  KEY `FKqylujjstsa9yrpw9mb351hqs0` (`account_send_id`),
  CONSTRAINT `FK1n27txu5x586sdtcwvb5rm4cj` FOREIGN KEY (`account_receive_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKqylujjstsa9yrpw9mb351hqs0` FOREIGN KEY (`account_send_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Việt Nam'),(2,'American');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `free_service`
--

DROP TABLE IF EXISTS `free_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `free_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar_service` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `free_service`
--

LOCK TABLES `free_service` WRITE;
/*!40000 ALTER TABLE `free_service` DISABLE KEYS */;
INSERT INTO `free_service` VALUES (1,'https://media-cdn-v2.laodong.vn/storage/newsportal/2020/4/28/802014/61791324_23389246863.jpg',NULL,1,'Nắm tay'),(2,'https://kenh14cdn.com/thumb_w/660/203336854389633024/2023/8/28/photo-1-16932080982012092906865.jpg',NULL,1,'Ôm hôn'),(3,'https://vnn-imgs-f.vgcloud.vn/2018/07/31/16/tri-tue-nhan-tao-giup-doan-tinh-nguoi-qua-anh-mat.jpg',NULL,1,'Nhìn mắt'),(4,'https://cdn.tuoitre.vn/thumb_w/730/471584752817336320/2023/2/16/nguyen-van-chung-16765083286041620008958.jpg',NULL,1,'Cử chỉ thân mật');
/*!40000 ALTER TABLE `free_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Nam'),(2,'Nữ');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url_image` varchar(255) DEFAULT NULL,
  `profile_lover_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqwpnysv2cdkywlg2hny2l2i7h` (`profile_lover_id`),
  CONSTRAINT `FKqwpnysv2cdkywlg2hny2l2i7h` FOREIGN KEY (`profile_lover_id`) REFERENCES `profile_lover` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  `account_receive_id` bigint DEFAULT NULL,
  `account_send_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaiwcj349hqqa7p05qe5jqgryd` (`account_receive_id`),
  KEY `FKfvs28u21kivt40755jxq9cxwr` (`account_send_id`),
  CONSTRAINT `FKaiwcj349hqqa7p05qe5jqgryd` FOREIGN KEY (`account_receive_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKfvs28u21kivt40755jxq9cxwr` FOREIGN KEY (`account_send_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `account_receive_id` bigint DEFAULT NULL,
  `account_send_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbsn060rs88iass0w5ck1s433s` (`account_receive_id`),
  KEY `FK6vi5taafsqm6x7ov0ysh9j7x5` (`account_send_id`),
  CONSTRAINT `FK6vi5taafsqm6x7ov0ysh9j7x5` FOREIGN KEY (`account_send_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKbsn060rs88iass0w5ck1s433s` FOREIGN KEY (`account_receive_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (6,'[Admin] Chúc mừng bạn đã đăng ký thành công tài khoản lover! Hãy vào trang lover của bạn và hoàn tất các thông tin cần thiết để thu hút người dùng! Chúc bạn thành công!',36,14),(8,'[Admin] Chúc mừng bạn đã đăng ký thành công tài khoản lover! Hãy vào trang lover của bạn và hoàn tất các thông tin cần thiết để thu hút người dùng! Chúc bạn thành công!',37,14),(9,'[Admin] Chào mừng user4 đã đến với lover! Hãy hoàn tất việc cập nhật thông tin của bạn ở trang user. Chúc bạn có những trải nghiệm hoàn hảo!',38,14),(11,'[Admin] Chúc mừng bạn đã đăng ký thành công tài khoản lover! Hãy vào trang lover của bạn và hoàn tất các thông tin cần thiết để thu hút người dùng! Chúc bạn thành công!',38,14),(12,'[Admin] Chào mừng user5 đã đến với lover! Hãy hoàn tất việc cập nhật thông tin của bạn. Chúc bạn có những trải nghiệm hoàn hảo!',39,14),(14,'[Admin] Chúc mừng bạn đã đăng ký thành công tài khoản lover! Hãy vào trang lover của bạn và hoàn tất các thông tin cần thiết để thu hút người dùng! Chúc bạn thành công!',39,14),(15,'[Admin] Chào mừng user1111 đã đến với lover! Hãy hoàn tất việc cập nhật thông tin của bạn. Chúc bạn có những trải nghiệm hoàn hảo!',40,14),(16,'[Admin] Chào mừng user1122 đã đến với lover! Hãy hoàn tất việc cập nhật thông tin của bạn. Chúc bạn có những trải nghiệm hoàn hảo!',41,14),(17,'[Admin] Chào mừng user111222 đã đến với lover! Hãy hoàn tất việc cập nhật thông tin của bạn. Chúc bạn có những trải nghiệm hoàn hảo!',42,14),(18,'[Admin] Chào mừng user11223 đã đến với lover! Hãy hoàn tất việc cập nhật thông tin của bạn. Chúc bạn có những trải nghiệm hoàn hảo!',43,14),(20,'[Admin] Chúc mừng bạn đã đăng ký thành công tài khoản lover! Hãy vào trang lover của bạn và hoàn tất các thông tin cần thiết để thu hút người dùng! Chúc bạn thành công!',43,14);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_lover`
--

DROP TABLE IF EXISTS `profile_lover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_lover` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar_image` varchar(255) DEFAULT NULL,
  `average_rate_score` double NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `description` longtext,
  `facebook_link` varchar(255) DEFAULT NULL,
  `height` double NOT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `request_to_user` varchar(255) DEFAULT NULL,
  `total_hour_rented` int DEFAULT NULL,
  `total_money_rented` double NOT NULL,
  `weight` double NOT NULL,
  `account_id` bigint DEFAULT NULL,
  `city_id` bigint DEFAULT NULL,
  `gender_id` bigint DEFAULT NULL,
  `status_lover_id` bigint DEFAULT NULL,
  `citizen_number` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `total_views` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKius85nn09k3pog9af2xgmd64k` (`account_id`),
  KEY `FK8ln9dr9teklba0ea7489sbk3k` (`city_id`),
  KEY `FK84e21ck9j1hljg5ef792v80g7` (`gender_id`),
  KEY `FKje52s67vw926b6pgik2pr1c15` (`status_lover_id`),
  CONSTRAINT `FK84e21ck9j1hljg5ef792v80g7` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `FK8ln9dr9teklba0ea7489sbk3k` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `FKius85nn09k3pog9af2xgmd64k` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKje52s67vw926b6pgik2pr1c15` FOREIGN KEY (`status_lover_id`) REFERENCES `status_lover` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_lover`
--

LOCK TABLES `profile_lover` WRITE;
/*!40000 ALTER TABLE `profile_lover` DISABLE KEYS */;
INSERT INTO `profile_lover` VALUES (1,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://playerduo.net/api/upload-service/images/2165c780-ac3b-4fe4-9f7f-1f14854b4b92__bc120fd0-8257-11ee-bec4-f929e725acab__player_avatar.jpg',0,'2000-04-04','? HELLO mình là MIA đây ...\n\n? Nhận game LOL NHẬN ALL SERVER RIOTS ( SV Nc ngoài auto 70k/h )\n\n?Nhận TFT ALL Sever TFT Mobie\n\n? Nhận các game Steam như Prop and seek , just act natural , among us , goose goose duck , scribble it , crab game một số game steam free ( trừ pubg với naraka mình k chơi vì pc cùi ạ ) có nhận tải game theo yêu cầu user\n\n? nhảy audition trùm 4 phím nhảy đôi =)) nhận làm bạn nhảy hờ của user =))\n\n? zingspeed mobie hệ :)) giả lập\n\n? nhận mở nhạc mở phim tâm sự call mess nt tâm sinh lý gia đình bạn bè tuổi mới lớn ( không nhận 18 +\n\n? CHỈ NHẬN ĐÊM TRÊN 2 GIỜ ^^ ĐÊM THỨC MỆT THÔNG CẢM GIÙM MÌNH Ạ. LỠ MAY MÌNH CÓ NGỦ QÊN CALL 0765977236 OR IBX FACEBOOK MÌNH NHÉ ^^\n\nCHÚC CÁC USER CHƠI VUI VẺ .\n\n','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',55000,'Lịch sự và biết quan tâm đến mình nhé!',123,50000000,60,4,1,2,1,NULL,NULL,0),(2,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://playerduo.net/thocuaanh',0,'2000-05-06','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',65000,'Lịch sự và biết quan tâm đến mình nhé!',434,12000000,60,6,2,2,1,NULL,NULL,0),(3,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fd9918033-153e-4386-89fc-9f56c066b60d__8805a0f0-4c7c-11ee-bec4-f929e725acab__player_avatar.jpg?alt=media&token=acee8632-b59e-49e6-903b-58820f9494be',0,'2001-06-07','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',55000,'Lịch sự và biết quan tâm đến mình nhé!',545,23400000,60,7,1,2,1,NULL,NULL,0),(4,'2023-11-09 04:43:56',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fd9918033-153e-4386-89fc-9f56c066b60d__8805a0f0-4c7c-11ee-bec4-f929e725acab__player_avatar.jpg?alt=media&token=acee8632-b59e-49e6-903b-58820f9494be',0,'2002-04-25','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',60000,'Lịch sự và biết quan tâm đến mình nhé!',667,12560000,60,8,2,2,1,'','',0),(5,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2F75c40a5c-dbda-4ac3-9106-55d6d7ca9b0f__d397bd60-737c-11ee-bec4-f929e725acab__player_avatar.jpg?alt=media&token=aabdf3ce-5ebd-407d-bfe8-e748e4f10205',0,'1998-04-10','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',70000,'Lịch sự và biết quan tâm đến mình nhé!',894,5000000,60,9,2,2,1,NULL,NULL,0),(6,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2F4e876224-c40d-486c-bddc-77fc3a253cd7__5d2bb8d0-4446-11ee-a657-a54d6be1d46a__player_avatar.jpg?alt=media&token=028b7207-a11a-4e7d-99af-6969c5dd3f1f',0,'1997-04-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',80000,'Lịch sự và biết quan tâm đến mình nhé!',973,4500000,60,10,3,2,1,NULL,NULL,0),(7,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fbfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__27ff0d00-5621-11ee-bec4-f929e725acab__player_avatar.jpg?alt=media&token=0efb481d-f5ee-48fa-8a38-cda8c669c02c',0,'1996-04-13','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',150000,'Lịch sự và biết quan tâm đến mình nhé!',543,3500000,60,11,4,2,1,NULL,NULL,0),(8,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fd9918033-153e-4386-89fc-9f56c066b60d__8805a0f0-4c7c-11ee-bec4-f929e725acab__player_avatar.jpg?alt=media&token=acee8632-b59e-49e6-903b-58820f9494be',0,'1996-04-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',120000,'Lịch sự và biết quan tâm đến mình nhé!',234,55000000,60,5,2,2,1,NULL,NULL,0),(9,'2023-11-15 13:44:13',NULL,1,'2023-11-15 13:44:13','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2F4e876224-c40d-486c-bddc-77fc3a253cd7__5d2bb8d0-4446-11ee-a657-a54d6be1d46a__player_avatar.jpg?alt=media&token=028b7207-a11a-4e7d-99af-6969c5dd3f1f',0,'1996-06-05','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',120000,'Lịch sự và biết quan tâm đến mình nhé!',23,13000000,60,12,1,2,1,NULL,NULL,0),(10,'2023-11-15 13:44:13',NULL,1,'2023-11-15 13:44:13','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2F4e876224-c40d-486c-bddc-77fc3a253cd7__5d2bb8d0-4446-11ee-a657-a54d6be1d46a__player_avatar.jpg?alt=media&token=028b7207-a11a-4e7d-99af-6969c5dd3f1f',0,'1995-06-07','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',125000,'Lịch sự và biết quan tâm đến mình nhé!',467,12500000,60,13,3,2,1,NULL,NULL,0),(14,NULL,NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/file-image-modlue5.appspot.com/o/images%2Fz4661819532015c29a2ea9db77ed02bf36c43655b0055b-1693800765934.webp73fd6c75-6d49-43f6-a29e-2a861bd4107d?alt=media&token=a3023c57-8e03-4a13-abfd-1bc04b4ebdeb',0,'2002-06-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',110000,'Lịch sự và biết quan tâm đến mình nhé!',43,9550000,60,15,4,2,1,'','',0),(15,NULL,NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fbfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__27ff0d00-5621-11ee-bec4-f929e725acab__player_avatar.jpg?alt=media&token=0efb481d-f5ee-48fa-8a38-cda8c669c02c',0,'2001-03-27','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',115000,'Lịch sự và biết quan tâm đến mình nhé!',246,12560000,50,16,3,2,1,NULL,NULL,0),(17,NULL,NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fd9918033-153e-4386-89fc-9f56c066b60d__8805a0f0-4c7c-11ee-bec4-f929e725acab__player_avatar.jpg?alt=media&token=acee8632-b59e-49e6-903b-58820f9494be',0,'2004-09-22','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',60000,'Lịch sự và biết quan tâm đến mình nhé!',765,3500000,50,17,4,2,1,NULL,NULL,0),(18,NULL,NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/file-image-modlue5.appspot.com/o/images%2F1920x1080-px-Naruto-Shippuuden-Pein-1190470-wallhere.com.jpg7f669d93-b552-41bb-b63f-bc3161bcbe23?alt=media&token=67c1114f-b09b-477f-a206-cdb8e317c625',0,'2001-10-30','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',70000,'Lịch sự và biết quan tâm đến mình nhé!',433,3500000,50,18,1,2,1,'','',0),(27,'2023-11-19 15:37:16',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'2002-11-28','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',80000,'Lịch sự và biết quan tâm đến mình nhé!',234,3500000,55,36,1,2,1,NULL,NULL,0),(28,'2023-11-19 15:56:43',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'2000-10-26','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',90000,'Lịch sự và biết quan tâm đến mình nhé!',123,3500000,55,37,1,2,1,NULL,NULL,0),(29,'2023-11-19 16:09:09',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'1999-08-02','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',75000,'Lịch sự và biết quan tâm đến mình nhé!',432,3500000,55,38,1,2,1,NULL,NULL,0),(30,'2023-11-20 03:15:06',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'1999-01-25','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',80000,'Lịch sự và biết quan tâm đến mình nhé!',269,12560000,55,39,2,2,1,NULL,NULL,0),(31,'2023-11-20 10:49:56',NULL,2,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'1996-04-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',85000,'Lịch sự và biết quan tâm đến mình nhé!',639,3500000,60,43,1,2,1,NULL,NULL,0),(32,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'1999-01-25','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',90000,'Lịch sự và biết quan tâm đến mình nhé!',483,55000000,55,44,7,1,1,NULL,NULL,0),(33,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'1996-04-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',125000,'Lịch sự và biết quan tâm đến mình nhé!',543,3500000,55,45,6,1,1,NULL,NULL,0),(34,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'1999-08-02','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',125000,'Lịch sự và biết quan tâm đến mình nhé!',987,55000000,55,46,8,1,1,NULL,NULL,0),(35,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'2004-09-22','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',90000,'Lịch sự và biết quan tâm đến mình nhé!',537,3500000,55,47,9,1,1,NULL,NULL,0),(36,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'2001-10-30','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',85000,'Lịch sự và biết quan tâm đến mình nhé!',335,3500000,55,48,4,1,1,NULL,NULL,0),(37,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'2000-10-26','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',110000,'Lịch sự và biết quan tâm đến mình nhé!',165,55000000,55,40,5,2,1,NULL,NULL,0),(38,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'2004-09-22','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',90000,'Lịch sự và biết quan tâm đến mình nhé!',342,3500000,55,41,6,2,1,NULL,NULL,0),(39,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6',0,'2004-09-22','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',85000,'Lịch sự và biết quan tâm đến mình nhé!',760,3500000,55,42,7,2,1,NULL,NULL,0);
/*!40000 ALTER TABLE `profile_lover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_lovers_free_services`
--

DROP TABLE IF EXISTS `profile_lovers_free_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_lovers_free_services` (
  `id_profile_lover` bigint NOT NULL,
  `id_free_service` bigint NOT NULL,
  KEY `FKm9faafbcpvlj0isly5203fypl` (`id_free_service`),
  KEY `FK2kyhkgy4id3laegtr0x2bnk1p` (`id_profile_lover`),
  CONSTRAINT `FK2kyhkgy4id3laegtr0x2bnk1p` FOREIGN KEY (`id_profile_lover`) REFERENCES `profile_lover` (`id`),
  CONSTRAINT `FKm9faafbcpvlj0isly5203fypl` FOREIGN KEY (`id_free_service`) REFERENCES `free_service` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_lovers_free_services`
--

LOCK TABLES `profile_lovers_free_services` WRITE;
/*!40000 ALTER TABLE `profile_lovers_free_services` DISABLE KEYS */;
INSERT INTO `profile_lovers_free_services` VALUES (2,1),(2,2),(4,1),(4,4),(14,1),(14,3),(3,1),(3,3),(3,4),(1,1),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `profile_lovers_free_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_lovers_service_lovers`
--

DROP TABLE IF EXISTS `profile_lovers_service_lovers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_lovers_service_lovers` (
  `id_profile_lover` bigint NOT NULL,
  `id_service_lover` bigint NOT NULL,
  KEY `FK7k11r0ucbpcwqvh4t5m8r19ik` (`id_service_lover`),
  KEY `FKmky0n7b31gd0ptcphg03qkr8g` (`id_profile_lover`),
  CONSTRAINT `FK7k11r0ucbpcwqvh4t5m8r19ik` FOREIGN KEY (`id_service_lover`) REFERENCES `service_lover` (`id`),
  CONSTRAINT `FKmky0n7b31gd0ptcphg03qkr8g` FOREIGN KEY (`id_profile_lover`) REFERENCES `profile_lover` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_lovers_service_lovers`
--

LOCK TABLES `profile_lovers_service_lovers` WRITE;
/*!40000 ALTER TABLE `profile_lovers_service_lovers` DISABLE KEYS */;
INSERT INTO `profile_lovers_service_lovers` VALUES (2,2),(2,3),(2,4),(2,5),(4,1),(4,2),(4,3),(14,1),(14,3),(14,5),(3,1),(3,3),(3,5),(3,6),(1,1),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `profile_lovers_service_lovers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_lovers_vip_services`
--

DROP TABLE IF EXISTS `profile_lovers_vip_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_lovers_vip_services` (
  `id_profile_lover` bigint NOT NULL,
  `id_vip_service` bigint NOT NULL,
  KEY `FKse5nd893jjl4p5q107shtjqdr` (`id_vip_service`),
  KEY `FKkgva64jid2q5toughv7lejous` (`id_profile_lover`),
  CONSTRAINT `FKkgva64jid2q5toughv7lejous` FOREIGN KEY (`id_profile_lover`) REFERENCES `profile_lover` (`id`),
  CONSTRAINT `FKse5nd893jjl4p5q107shtjqdr` FOREIGN KEY (`id_vip_service`) REFERENCES `vip_service` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_lovers_vip_services`
--

LOCK TABLES `profile_lovers_vip_services` WRITE;
/*!40000 ALTER TABLE `profile_lovers_vip_services` DISABLE KEYS */;
INSERT INTO `profile_lovers_vip_services` VALUES (2,1),(2,4),(4,1),(4,2),(4,4),(14,1),(14,3),(3,1),(3,2),(3,3),(1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `profile_lovers_vip_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_user`
--

DROP TABLE IF EXISTS `profile_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar_image` text,
  `citizen_number` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `id_account` bigint DEFAULT NULL,
  `status_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK21bq48oavp20vmh1gbgajk3w0` (`id_account`),
  KEY `FKqx2442xi3pumd02qcbsojcuxj` (`status_user_id`),
  CONSTRAINT `FK21bq48oavp20vmh1gbgajk3w0` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKqx2442xi3pumd02qcbsojcuxj` FOREIGN KEY (`status_user_id`) REFERENCES `status_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_user`
--

LOCK TABLES `profile_user` WRITE;
/*!40000 ALTER TABLE `profile_user` DISABLE KEYS */;
INSERT INTO `profile_user` VALUES (3,'2023-11-08 09:43:15',NULL,1,'2023-11-14 09:52:30','https://firebasestorage.googleapis.com/v0/b/file-image-modlue5.appspot.com/o/images%2F264158276_2885410771750373_3075899851002590363_n.jpgc2d2c08d-ec6f-47df-b051-4b3ff626bda8?alt=media&token=adf7fd99-2bc9-4592-9066-68cd32006da5','6789010','Tài','Nguyễn Trọng','0369911511',4,2),(4,'2023-11-09 17:09:54',NULL,1,'2023-11-09 17:14:24','https://firebasestorage.googleapis.com/v0/b/file-image-modlue5.appspot.com/o/images%2F264158276_2885410771750373_3075899851002590363_n.jpg102d56e2-06af-44c2-9322-a67365a130bc?alt=media&token=61e3cec8-8b29-4b9c-adf2-b95bc8ea8a04','6789010','Tài','Nguyễn Trọng','0369911511',12,2),(5,'2023-11-10 01:34:04',NULL,1,'2023-11-10 01:34:50','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',13,2),(6,'2023-11-09 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',5,2),(7,'2023-11-08 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',6,2),(8,'2023-11-07 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',7,2),(9,'2023-11-06 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',8,2),(10,'2023-11-05 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',9,2),(11,'2023-11-15 13:39:41',NULL,1,'2023-11-15 13:39:41','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',10,2),(12,'2023-11-15 13:39:41',NULL,1,'2023-11-19 06:02:06','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2F376726580_1021097785685543_3654456195898696917_n.jpgd564bd62-ef96-4d84-9a50-0efcfd4d3b4f?alt=media&token=1395ac45-ada1-4161-8f61-d58704148460','6789010','Tài','Nguyễn Trọng','0369911511',15,2),(13,'2023-11-15 13:50:02',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',11,2),(14,'2023-11-15 14:48:55',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',16,2),(15,'2023-11-16 01:18:13',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/file-image-modlue5.appspot.com/o/images%2F1920x1080-px-Naruto-Shippuuden-Pein-1190470-wallhere.com.jpg59a8a8e8-0be1-4c1e-bd2f-7285865f3dca?alt=media&token=646b6158-70f8-4ad7-939a-e9b08637890d','6789010','Tài','Nguyễn Trọng','0369911511',17,2),(16,'2023-11-16 01:22:41',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',18,2),(34,'2023-11-19 10:31:25',NULL,1,'2023-11-20 03:43:25','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',36,2),(35,'2023-11-19 15:55:20',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',37,2),(36,'2023-11-19 16:07:40',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',38,2),(37,'2023-11-20 03:08:45',NULL,1,'2023-11-20 03:09:27','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',39,2),(38,'2023-11-20 09:41:57',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',40,2),(39,'2023-11-20 10:01:36',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',41,2),(40,'2023-11-20 10:10:41',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',42,2),(41,'2023-11-20 10:48:02',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',43,2),(42,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',44,2),(43,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',45,2),(44,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',46,2),(45,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',47,2),(46,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6','6789010','Tài','Nguyễn Trọng','0369911511',48,2);
/*!40000 ALTER TABLE `profile_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate_score`
--

DROP TABLE IF EXISTS `rate_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rate_score` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `score` double NOT NULL,
  `account_receive_id` bigint DEFAULT NULL,
  `account_send_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj09l0141667lct0jf8wxwtr7b` (`account_receive_id`),
  KEY `FKenkr7fhe2bnfiaub8xn4lxnd7` (`account_send_id`),
  CONSTRAINT `FKenkr7fhe2bnfiaub8xn4lxnd7` FOREIGN KEY (`account_send_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKj09l0141667lct0jf8wxwtr7b` FOREIGN KEY (`account_receive_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_score`
--

LOCK TABLES `rate_score` WRITE;
/*!40000 ALTER TABLE `rate_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `rate_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'2023-11-08 09:10:57',NULL,1,'2023-11-08 09:10:57','ROLE_ADMIN'),(2,'2023-11-08 09:10:57',NULL,1,'2023-11-08 09:10:57','ROLE_USER'),(3,'2023-11-08 09:10:57',NULL,1,'2023-11-08 09:10:57','ROLE_LOVER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_lover`
--

DROP TABLE IF EXISTS `service_lover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_lover` (
  `id` bigint NOT NULL,
  `avatar_service` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_lover`
--

LOCK TABLES `service_lover` WRITE;
/*!40000 ALTER TABLE `service_lover` DISABLE KEYS */;
INSERT INTO `service_lover` VALUES (1,'https://zerdio.com.vn/wp-content/uploads/2022/10/nen-mua-qua-gi-lan-dau-ra-mat.jpg',NULL,1,'Ra mắt người nhà'),(2,'https://cdn1.tuoitre.vn/zoom/600_315/2019/12/9/dpcdv-2read-only-1575898582798360859186-crop-15759009138631894973452.jpg',NULL,1,'Đi cổ vũ đá bóng'),(3,'https://images2.thanhnien.vn/zoom/686_429/Uploaded/nuvuong/2019_12_07/img_70083_HEKD.jpg','',1,'Đi dạo phố'),(4,'https://icdn.dantri.com.vn/2017/anh-1-ca-phe-uong-cung-than-1495517949573.jpg',NULL,1,'Đi uống cà phê'),(5,'https://vcdn-suckhoe.vnecdn.net/2019/07/04/etiqa-og-travel-1562209200-156-7297-7923-1562209354.png',NULL,1,'Đi du lịch'),(6,'https://watermark.lovepik.com/photo/20211201/large/lovepik-couple-playing-games-together-in-the-living-room-picture_501377310.jpg',NULL,1,'Chơi game cùng');
/*!40000 ALTER TABLE `service_lover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_account`
--

DROP TABLE IF EXISTS `status_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_account`
--

LOCK TABLES `status_account` WRITE;
/*!40000 ALTER TABLE `status_account` DISABLE KEYS */;
INSERT INTO `status_account` VALUES (1,'Bật'),(2,'Tắt');
/*!40000 ALTER TABLE `status_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_bill`
--

DROP TABLE IF EXISTS `status_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_bill`
--

LOCK TABLES `status_bill` WRITE;
/*!40000 ALTER TABLE `status_bill` DISABLE KEYS */;
INSERT INTO `status_bill` VALUES (1,'Chờ lover xác nhận'),(2,'Lover đã xác nhận'),(3,'Hoàn thành'),(6,'Lover từ chối');
/*!40000 ALTER TABLE `status_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_lover`
--

DROP TABLE IF EXISTS `status_lover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_lover` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_lover`
--

LOCK TABLES `status_lover` WRITE;
/*!40000 ALTER TABLE `status_lover` DISABLE KEYS */;
INSERT INTO `status_lover` VALUES (1,'Đang sẵn sàng'),(2,'Đang được thuê'),(3,'Đang ngưng cung cấp dịch vụ');
/*!40000 ALTER TABLE `status_lover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_user`
--

DROP TABLE IF EXISTS `status_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_user`
--

LOCK TABLES `status_user` WRITE;
/*!40000 ALTER TABLE `status_user` DISABLE KEYS */;
INSERT INTO `status_user` VALUES (1,'Đang đăng kí tài khoản lover'),(2,'Đã đăng kí tài khoản lover'),(3,'Chưa đăng kí tài khoản lover');
/*!40000 ALTER TABLE `status_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip_service`
--

DROP TABLE IF EXISTS `vip_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `avatar_service` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_service`
--

LOCK TABLES `vip_service` WRITE;
/*!40000 ALTER TABLE `vip_service` DISABLE KEYS */;
INSERT INTO `vip_service` VALUES (1,'',1,'Ăn mặc sang chảnh',50000,'https://imgproxy4.tinhte.vn/UiCKr-7tlKTQk61OdZ8bgwkQbzxTn_Xz-bOsyolviNQ/rs:fill:400:400:0/plain/https://vudigital.co/wp-content/uploads/2021/08/logo-lv-va-lich-su-hinh-thanh-bieu-tuong-hang-thoi-trang-louis-vuitton-tu-1800-2.jpg'),(2,'',1,'Mang theo siêu xe',60000,'https://cdn.tuoitre.vn/thumb_w/480/2022/7/3/the-lamborghini-aventador-is-dead-long-live-its-v12-powered-successor1-1656842844018699231869.jpg'),(3,'',1,'Mang theo điện thoại xịn',70000,'https://phuclongmobile.com/wp-content/uploads/2023/09/15pmxanh.png'),(4,'',1,'Mang theo đồng hồ xịn',80000,'https://bossluxurywatch.vn/uploads/san-pham/hublot/classic-fusion/2/hublot-classic-fusion-titanium-45mm-511-nx-1171-rx.png');
/*!40000 ALTER TABLE `vip_service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 10:40:57
