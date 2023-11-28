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
  `image` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_k8h1bgqoplx0rkngj01pm1rgp` (`username`),
  KEY `FKt7u4kwo2bflo5wpqql0y19plu` (`status_account_id`),
  CONSTRAINT `FKt7u4kwo2bflo5wpqql0y19plu` FOREIGN KEY (`status_account_id`) REFERENCES `status_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (4,'2023-11-08 09:43:15',NULL,1,NULL,'lover1@gmail.com','Rachel ??','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover1',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__4c3c1530-8a8a-11ee-b056-f7fb864e982d__player_avatar.jpg47d3a456-f4ea-463c-a1a1-61e16d5eabe4?alt=media&token=62b2fcef-20e4-43de-a7bf-c94775a91844'),(5,'2023-11-08 09:43:15',NULL,1,NULL,'lover2@gmail.com','Shiro ?','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover2',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__ae79d6b0-89f4-11ee-b056-f7fb864e982d__player_avatar.jpg16169ebf-9201-462b-8bf1-1137ccdf027b?alt=media&token=3885eea6-e0c1-4387-87c1-401cf49b7bf1'),(6,'2023-11-08 09:43:15',NULL,1,NULL,'lover3@gmail.com','Kanhdababiez ?','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover3',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__9fd858a0-5e04-11ee-bec4-f929e725acab__player_album.jpg5126ee19-d8c9-487b-817a-30c25d7e59a3?alt=media&token=1e73dace-5718-4cd3-bdea-cc739310a694'),(7,'2023-11-08 09:43:15',NULL,1,NULL,'lover4@gmail.com','Thảo Lê','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover4',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F4e876224-c40d-486c-bddc-77fc3a253cd7__5d2bb8d0-4446-11ee-a657-a54d6be1d46a__player_avatar.jpg34d7f81e-120d-47d7-b339-fc9068d0a446?alt=media&token=ec3f1fe3-d3a8-4c6e-98c1-06a906c5007c'),(8,'2023-11-08 09:43:15',NULL,1,NULL,'lover5@gmail.com','Huyền My ?','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover5',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fded74223-1ab2-45b9-a3c6-9d40ac73a63e__1580fc10-3529-11ee-a657-a54d6be1d46a__player_album.jpg9ccaed1a-809f-4f18-96e9-08402a925563?alt=media&token=c8756d4b-c4b4-42be-afd3-b28a98102bff'),(9,'2023-11-08 09:43:15',NULL,1,NULL,'lover6@gmail.com','Bảo Linh ?','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover6',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe5fccd00-a801-4b3b-b955-091bf6c5c587__aa92e1d0-0af9-11ec-83f5-b1224eeef5c5__player_album.jpg190eb9bb-d260-47e1-adb8-cb1d6bb8802d?alt=media&token=0fcb4880-7b4e-4efa-b519-3568db6b21d6'),(10,'2023-11-08 09:43:15',NULL,1,NULL,'lover7@gmail.com','? ? ?','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover7',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__efd76b30-892d-11ee-b056-f7fb864e982d__player_avatar.jpgfc7389ce-e1fd-4543-b204-392a41a316e1?alt=media&token=1e8dbd94-8d95-4fd4-a8aa-f1bd69c0576c'),(11,'2023-11-08 09:43:15',NULL,1,NULL,'lover8@gmail.com','SuYii ?','$2a$10$7NpeGruE1Hjb2DgrqY6BKuGFIBn03K2cAYnDHUxYSTAUWBjGhWqyS','lover8',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F56deff96-56a8-4a0e-8e47-a0759b1cfc73__3a769810-852c-11ee-bec4-f929e725acab__player_avatar.jpg1aea3b19-4b0a-4cf0-afe6-44eb25a41876?alt=media&token=b34878c9-a7d2-4d28-9fb8-d8db6e7b8c38'),(12,'2023-11-09 17:09:54',NULL,1,NULL,'lover9@gmail.com','Miee ?','$2a$10$u850aQCRwhjQwiCxN8UzXutOyiCF57WdBjGZ/4kzqCBVcHVDgtpIW','lover9',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__efd76b30-892d-11ee-b056-f7fb864e982d__player_avatar.jpg2a72006a-1371-4bf8-b76d-91244dba056a?alt=media&token=c27a6540-69a3-4a45-ae4e-541b2d43ba45'),(13,'2023-11-10 01:34:04',NULL,1,NULL,'lover10@gmail.com','Bé Mitt ?','$2a$10$adGQ1Vdm0DrGmexOIeDdpOn93/qknF.QWZhZ531kZZfAEqUAM58NS','lover10',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__84572da0-8ba3-11ee-b056-f7fb864e982d__player_avatar.jpg74d3ca37-4be2-4f9b-925f-d8137e776528?alt=media&token=de11bb5e-983e-4b73-8a22-500fcf1eb6f1'),(14,'2023-11-15 13:48:39',NULL,1,'2023-11-15 13:48:39','admin1@gmail.com','Tài Nguyễn','$2a$10$adGQ1Vdm0DrGmexOIeDdpOn93/qknF.QWZhZ531kZZfAEqUAM58NS','admin1',1,NULL),(15,'2023-11-15 13:50:02',NULL,1,NULL,'lover11@gmail.com','Lyiuu ??','$2a$10$LMs2ItU5LmqAEzkAUQiBvevJ9i72QEqLlLfvLNtx7f.nPVflsy/RK','lover11',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__bb1d8b90-8234-11ee-bec4-f929e725acab__player_avatar.jpg9485b81d-6eac-4ad6-8a5a-a690f71f86fe?alt=media&token=d21c1ccb-2626-4a2a-942c-d742038744c2'),(16,'2023-11-15 14:48:55',NULL,1,NULL,'lover12@gmail.com','Pun Thuỷ ??','$2a$10$AGidgGFnf1Ov6ThTA/5hJ.DwILRMgPNt7OVJSgE1HtLx1MO7twtZi','lover12',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__a9b25f80-8ae4-11ee-b056-f7fb864e982d__player_avatar.jpg42e37933-954f-454d-a84c-e3acfa7dbb68?alt=media&token=33814765-7a5a-4458-b9be-c6f661cec5d7'),(17,'2023-11-16 01:18:13',NULL,1,NULL,'lover13@gmail.com','Miu Lê ??','$2a$10$AGidgGFnf1Ov6ThTA/5hJ.DwILRMgPNt7OVJSgE1HtLx1MO7twtZi','lover13',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__27ff0d00-5621-11ee-bec4-f929e725acab__player_avatar.jpg82b12848-05bf-4d4c-9331-51058c88344f?alt=media&token=8caa5f46-467b-4651-8b37-ac6e89d87214'),(18,'2023-11-16 01:22:41',NULL,1,NULL,'lover14@gmail.com','Táo ?','$2a$10$AGidgGFnf1Ov6ThTA/5hJ.DwILRMgPNt7OVJSgE1HtLx1MO7twtZi','lover14',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__d2652760-6342-11ee-bec4-f929e725acab__player_avatar.jpg843872a4-8049-4f4d-93df-1e74da0ca04c?alt=media&token=9d337d81-e880-4c1c-a828-7663e23a133a'),(36,'2023-11-19 10:31:25',NULL,1,NULL,'lover15@gmail.com','Baka Hime ?','$2a$10$/Lp2.lZgm6QCi7.4guLYLeO1XeJ9IqWWhJCh8oVtqRtLcHaoZfqv6','lover15',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__7758b3f0-89b2-11ee-b056-f7fb864e982d__player_avatar.jpg836411f5-12df-4e69-9da6-ef3931f48130?alt=media&token=796f8845-51bb-4150-a080-4d44f083c2ed'),(37,'2023-11-19 15:55:20',NULL,1,NULL,'lover16@gmail.com','TRÂM MÈO??','$2a$10$emk31vGr.quguZ9OsyN12etfwLDskhW.aGhcQ0LwczB2cTN/E/OUG','lover16',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__1282c610-1120-11ee-a657-a54d6be1d46a__player_avatar.jpgf844f607-bd35-4ac6-93e1-18e88ad2603b?alt=media&token=0af4eff5-81a9-4bad-a050-02dd34bdc463'),(38,'2023-11-19 16:07:39',NULL,1,NULL,'lover17@gmail.com','Tichi\n','$2a$10$zsXe6b8rqvGppHJU2QDUxO/t4sYC9IfYHSltpv5n39PiH6TcDBdD2','lover17',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0403a59d-1ac6-43fd-8069-b6d669a4e97a__2fba7460-88b9-11ee-b056-f7fb864e982d__player_album.jpg18cf55b9-f63a-4307-aeee-a6bda57954c5?alt=media&token=7dcf2b24-145e-41a2-b7f5-73355ca23900'),(39,'2023-11-20 03:08:45',NULL,1,NULL,'lover18@gmail.com','Mia cute nè','$2a$10$WUaJLeh33UicPfnGAvnZB.JvjnUhN6khwkfkTBNhVIjkcdf7csxBy','lover18',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fd86ae4dc-c632-4900-b6fb-ec675c50bc38__90bbd4a0-8c5d-11ee-b056-f7fb864e982d__player_avatar.jpg0ef79e43-6867-4fe8-b576-d5aa73363b77?alt=media&token=8dc7a2ef-0925-4e71-b38f-909d8026219a'),(40,'2023-11-20 09:41:57',NULL,1,NULL,'lover19@gmail.com','Ling ling ??','$2a$10$UhUa7vqoN0gbmkuRafX9y.9l5YgstNibPvvwxgDs80OKOUI2cWiN.','lover19',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F30468c40-e677-4600-a1cc-a7319781e0db__b8fdd8b0-4a35-11ee-a657-a54d6be1d46a__player_avatar.jpg7ae8f79e-147c-49f4-a80e-1882309dcb20?alt=media&token=22aabcca-bbac-4643-9ef7-71668370bfe9'),(41,'2023-11-20 10:01:36',NULL,1,NULL,'lover20@gmail.com','Gạo ?','$2a$10$bRtQrjW9cfqfqGIe.uPUnuVLPhOQNrcqku0D1qn/TxnzWNC67LPxW','lover20',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__8ae89e60-6f33-11ee-bec4-f929e725acab__player_avatar.jpg6cee4502-cd23-4b0a-937a-1d0c157d7c22?alt=media&token=2f5e9f29-899a-4674-bd4b-61e94cf519f5'),(42,'2023-11-20 10:10:41',NULL,1,NULL,'lover21@gmail.com','Babi MelVy ♡','$2a$10$K3MGXKp6P7uJDjJaiQcQMeuFD3Z/9g9J/CrXS4F54Uth7OcF3qMDy','lover21',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__960ffe90-8000-11ee-bec4-f929e725acab__player_avatar.jpgf85ae6e7-883c-4080-a8a6-02df30ab1427?alt=media&token=79db35c0-1ec4-4470-9177-14476925fdd8'),(43,'2023-11-20 10:48:02',NULL,1,NULL,'lover22@gmail.com','Nhi Sona ??','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover22',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__fd45bc00-7d9c-11ee-bec4-f929e725acab__player_avatar.jpg6051ad0c-4622-4aaa-b87a-d76691ac7019?alt=media&token=edf978dc-20cd-4333-be6e-868e23e45cdd'),(44,'2023-11-21 02:41:59',NULL,1,NULL,'lover23@gmail.com','Damit2k','$2a$10$LMs2ItU5LmqAEzkAUQiBvevJ9i72QEqLlLfvLNtx7f.nPVflsy/RK','lover23',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fupload_e7be787ac8f76bb32360c426eb13b1c1.png164a1374-7a67-4126-8227-9fda8eaca762?alt=media&token=5d9a4be5-8afc-4766-8231-80e1342a4045'),(45,'2023-11-21 02:41:59',NULL,1,NULL,'lover24@gmail.com','MonSinger','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover24',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__557c3940-4071-11ed-838c-b120e70abb59__player_avatar.jpga4e0494d-abad-4dfe-ba79-bc629d3ac2e2?alt=media&token=a5d0e3d0-e66c-4443-9290-6e14de068546'),(46,'2023-11-21 02:41:59',NULL,1,NULL,'lover25@gmail.com','Son Ha','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover25',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F06ade6f1-8b36-49bd-990c-c2c597abaf1f__964f9980-eef5-11ec-92ac-1b8d2f5bc2b5__player_avatar.jpg6bd852a1-8fbc-46ec-a301-2639f55aaa86?alt=media&token=590ff806-c29a-430d-b38c-95bd48c1256c'),(47,'2023-11-21 02:41:59',NULL,1,NULL,'lover26@gmail.com','Minh Thành','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover26',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3086abd2-f714-4b4e-8026-d0bc0d8c74cb__03d85410-ec93-11ed-a657-a54d6be1d46a__player_avatar.jpg5baec51a-fa22-4b54-b3fa-9603f7d99e4d?alt=media&token=f8553e4e-29fa-40d3-8a9f-6f165d418c28'),(48,'2023-11-21 02:41:59',NULL,1,NULL,'lover27@gmail.com','Việt Anh','$2a$10$TIarjPfZPbuj8vz0DHHkl.PXZr6vMuaYu3jTCMtOViJgvOJbRJqz6','lover27',1,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F102590c3-20f3-4dea-9ac5-4a710d62fb68__d79c6b20-7ad4-11eb-9886-a967fa33695f__player_avatar.jpgbb9a863f-3b57-478d-88d4-ccf5a81d7f3e?alt=media&token=f4e43dd3-da8b-4fd0-a94d-fe47a62ff621');
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
INSERT INTO `accounts_roles` VALUES (14,1),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(15,3),(16,3),(17,3),(18,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3);
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
  `is_assessment` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1j848tejkw4fo90je3e6lyi1m` (`account_lover_id`),
  KEY `FKqwh6qllhvm089up4u6uxtqmpk` (`account_user_id`),
  KEY `FKix7ix3bxeb2ip02ao16gd02d` (`status_bill_id`),
  CONSTRAINT `FK1j848tejkw4fo90je3e6lyi1m` FOREIGN KEY (`account_lover_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKix7ix3bxeb2ip02ao16gd02d` FOREIGN KEY (`status_bill_id`) REFERENCES `status_bill` (`id`),
  CONSTRAINT `FKqwh6qllhvm089up4u6uxtqmpk` FOREIGN KEY (`account_user_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
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
  `rating` int NOT NULL,
  `bill_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1n27txu5x586sdtcwvb5rm4cj` (`account_receive_id`),
  KEY `FKqylujjstsa9yrpw9mb351hqs0` (`account_send_id`),
  KEY `FKlkdobg71u3205qwu75f5thqtw` (`bill_id`),
  CONSTRAINT `FK1n27txu5x586sdtcwvb5rm4cj` FOREIGN KEY (`account_receive_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKlkdobg71u3205qwu75f5thqtw` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`),
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
  `avatar_service` text,
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
INSERT INTO `free_service` VALUES (1,'https://uxwing.com/wp-content/themes/uxwing/download/e-commerce-currency-shopping/free-icon.png','',1,'Nắm tay'),(2,'https://uxwing.com/wp-content/themes/uxwing/download/e-commerce-currency-shopping/free-icon.png',NULL,1,'Ôm hôn'),(3,'https://uxwing.com/wp-content/themes/uxwing/download/e-commerce-currency-shopping/free-icon.png',NULL,1,'Nhìn mắt'),(4,'https://uxwing.com/wp-content/themes/uxwing/download/e-commerce-currency-shopping/free-icon.png',NULL,1,'Cử chỉ thân mật');
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
  `url_image` text,
  `profile_lover_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqwpnysv2cdkywlg2hny2l2i7h` (`profile_lover_id`),
  CONSTRAINT `FKqwpnysv2cdkywlg2hny2l2i7h` FOREIGN KEY (`profile_lover_id`) REFERENCES `profile_lover` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (47,'https://playerduo.net/api/upload-service/images/4e876224-c40d-486c-bddc-77fc3a253cd7__fd3b1fb0-80f4-11ee-bec4-f929e725acab__player_album.jpg',3),(48,'https://playerduo.net/api/upload-service/images/4e876224-c40d-486c-bddc-77fc3a253cd7__df3aeae0-80f4-11ee-bec4-f929e725acab__player_album.jpg',3),(49,'https://playerduo.net/api/upload-service/images/4e876224-c40d-486c-bddc-77fc3a253cd7__cdfcb3d0-80f4-11ee-bec4-f929e725acab__player_album.jpg',3),(50,'https://playerduo.net/api/upload-service/images/4e876224-c40d-486c-bddc-77fc3a253cd7__a73f2490-4372-11ee-a657-a54d6be1d46a__player_album.jpg',3),(51,'https://playerduo.net/api/upload-service/images/4e876224-c40d-486c-bddc-77fc3a253cd7__01f47d40-09fd-11ee-a657-a54d6be1d46a__player_album.jpg',3),(52,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__72a2cd10-5cfc-11ee-bec4-f929e725acab__player_album.jpg',4),(53,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__e3149e30-5cfb-11ee-bec4-f929e725acab__player_album.jpg',4),(54,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__1580fc10-3529-11ee-a657-a54d6be1d46a__player_album.jpg',4),(55,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__297367c0-e255-11ed-a19f-23a3b10d190e__player_album.jpg',4),(56,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__b85abb90-cf0a-11ed-a19f-23a3b10d190e__player_album.jpg',4),(57,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__70b039e0-b06b-11ed-a19f-23a3b10d190e__player_album.jpg',4),(58,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__f0192c20-9048-11ed-a19f-23a3b10d190e__player_album.jpg',4),(59,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__85363710-7ed5-11ed-a19f-23a3b10d190e__player_album.jpg',4),(60,'https://playerduo.net/api/upload-service/images/ded74223-1ab2-45b9-a3c6-9d40ac73a63e__180fcdb0-7320-11ed-a19f-23a3b10d190e__player_album.jpg',4),(61,'https://playerduo.net/api/upload-service/images/bfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__76900460-7ffc-11ee-bec4-f929e725acab__player_album.jpg',17),(62,'https://playerduo.net/api/upload-service/images/bfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__56bf8510-7e8b-11ee-bec4-f929e725acab__player_album.jpg',17),(63,'https://playerduo.net/api/upload-service/images/bfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__75b763a0-6e61-11ee-bec4-f929e725acab__player_album.jpg',17),(64,'https://playerduo.net/api/upload-service/images/bfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__ac3baa00-f88a-11ed-a657-a54d6be1d46a__player_album.jpg',17),(65,'https://playerduo.net/api/upload-service/images/bfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__abba70c0-b6c0-11ea-8c5e-ef0d84854cee__player_album.jpg',17),(67,'https://playerduo.net/api/upload-service/images/3890e4da-b978-420c-9760-847f79d654eb__8bf35120-55d8-11ee-bec4-f929e725acab__player_album.jpg',2),(72,'https://playerduo.net/api/upload-service/images/e5fccd00-a801-4b3b-b955-091bf6c5c587__2b58ecb0-1502-11ee-a657-a54d6be1d46a__player_album.jpg',5),(73,'https://playerduo.net/api/upload-service/images/e5fccd00-a801-4b3b-b955-091bf6c5c587__f401c500-8755-11ed-a19f-23a3b10d190e__player_album.jpg',5),(74,'https://playerduo.net/api/upload-service/images/e5fccd00-a801-4b3b-b955-091bf6c5c587__ff7159c0-536e-11ed-838c-b120e70abb59__player_album.jpg',5),(75,'https://playerduo.net/api/upload-service/images/e5fccd00-a801-4b3b-b955-091bf6c5c587__1ea65370-4abb-11ed-838c-b120e70abb59__player_album.jpg',5),(76,'https://playerduo.net/api/upload-service/images/e5fccd00-a801-4b3b-b955-091bf6c5c587__a1f592d0-467f-11ed-838c-b120e70abb59__player_album.jpg',5),(77,'https://playerduo.net/api/upload-service/images/e5fccd00-a801-4b3b-b955-091bf6c5c587__8bc3a880-467f-11ed-838c-b120e70abb59__player_album.jpg',5),(79,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__31ca8000-8806-11ee-bec4-f929e725acab__player_album.jpgeb93ac9a-d8a7-442b-aa9f-72d171356a82?alt=media&token=cad6cbff-f741-4f2a-bdcf-081f1e0fbcb1',1),(80,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__43c1e2e0-8c01-11ee-b056-f7fb864e982d__player_album.jpgcf3dd878-29dc-45b4-9451-773a7e7d952c?alt=media&token=f26febda-b01c-44c5-b68e-0d57d4978347',1),(81,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__184fa5c0-8986-11ee-b056-f7fb864e982d__player_album.jpg44a9cf75-d24a-4ef9-8b75-f3a3cdfac342?alt=media&token=cc35bad3-ffee-44aa-bc42-7230e0c6a059',1),(82,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__327f4ab0-80ab-11ee-bec4-f929e725acab__player_album.jpgeece4de8-3541-4dad-9259-5a33dc6d26eb?alt=media&token=5ca78318-5520-4f00-ae66-548dc9b4bfc9',1),(83,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__357c0440-8c01-11ee-b056-f7fb864e982d__player_album.jpg84261700-d0d6-49eb-a8b9-3a37f3e785d3?alt=media&token=a74e8d2d-5a99-4c5f-b218-c5ad0eaee194',1),(84,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__db29e910-7839-11ee-bec4-f929e725acab__player_album.jpg344d3d70-ec45-4ee0-a043-3729b05adc55?alt=media&token=197b74a7-6c33-4873-8d94-a8296b117c9b',1),(85,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__e0f14650-8bdb-11ec-ba40-b5b607f164e2__player_album.jpg59932989-57d7-4620-8247-053e0cd31375?alt=media&token=988fe837-f210-4c1d-8013-8be41d6ec13b',1),(86,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__5bf6e800-dedd-11ed-a19f-23a3b10d190e__player_album.jpg17a50ad1-38c9-4d85-a131-40e881abad08?alt=media&token=73f88261-3284-424a-92e5-86e9c2e73448',1),(88,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__5a0501b0-786d-11ee-bec4-f929e725acab__player_album.jpg9315c09c-1f81-46ce-ae76-20934f6f306f?alt=media&token=67b6de7b-867d-4056-a8ac-a7fa2b458849',8),(89,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__9e482eb0-8873-11ec-911d-399f024e5d9b__player_album.jpg9c099910-2420-4b0a-a1ea-9b39e3c6ff58?alt=media&token=5ee99c18-e150-4ade-9226-fc091743f714',8),(90,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__14245c60-969a-11ec-911d-399f024e5d9b__player_album.jpgc7be58c3-ae84-4cb9-ac38-b93bcf6d7696?alt=media&token=a3c5a2c5-1e18-446d-9693-c183b1ebf7f4',8),(91,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__aac2dcf0-969a-11ec-911d-399f024e5d9b__player_album.jpg3fe70c04-51da-433e-990c-92ee908a2aab?alt=media&token=bfff8fd3-4e4c-4121-9b86-d123c39de561',8),(92,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__e65050a0-c1b4-11ec-ba81-7bfd4ef70d64__player_album.jpg4bd02af5-0fb7-47e9-a562-81f8b0d66a76?alt=media&token=422e7830-21ed-4209-a1d9-d2337e5421a5',8),(93,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__def9e5d0-819a-11ee-bec4-f929e725acab__player_album.jpgbff08d29-62f0-4ded-8fa0-4e0b52b6b47d?alt=media&token=089c3411-5182-48e4-aa02-6fbc25b6cae6',8),(94,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__dbce8d30-a535-11ed-a19f-23a3b10d190e__player_album.jpg26bdee25-dffe-4155-90b0-0c04cbd42661?alt=media&token=ba95ed40-dc75-4eb2-8ed9-58921a7938f6',8),(95,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__bb7b7f80-dea0-11ed-a19f-23a3b10d190e__player_album.jpg47fa4e2a-bde1-4453-a96f-48cfe7555e0d?alt=media&token=cdd1abcb-553b-49c7-a022-ef77a9e5c6e8',8),(96,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__9fd858a0-5e04-11ee-bec4-f929e725acab__player_album.jpgdb5d3e18-5d76-48a4-96ea-2a08c2f2157a?alt=media&token=f487781e-60ae-47fe-b6a2-28ef1d2c8243',2),(97,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__17b46590-6115-11ee-bec4-f929e725acab__player_album.jpg9be250c4-f76a-4a1d-9ca3-d8c03c90e439?alt=media&token=a4ca2549-f2fc-4205-b7f7-b54b630dc0b0',2),(98,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__224ec860-6115-11ee-bec4-f929e725acab__player_album.jpg0e384169-6110-4648-be8f-dc5e309908db?alt=media&token=3ab945be-8331-4d5f-91bb-becb2f1486c0',2),(99,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__26346270-1c76-11ee-a657-a54d6be1d46a__player_album.jpg458ebc16-a8fc-4d40-aff4-550b1356d164?alt=media&token=46d67dc7-3e4c-452f-8aa8-aee12e6e9f8f',2),(100,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__a766db00-5e04-11ee-bec4-f929e725acab__player_album.jpg14ac0a6c-7772-4d80-89be-6ab2c759314b?alt=media&token=fbbf4471-9c44-41a0-a561-ae35020585ab',2),(101,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__e1f01860-869d-11ee-bec4-f929e725acab__player_avatar.jpg2ac3c13d-fd08-4596-8209-557b19340a0b?alt=media&token=766d0a97-ffb9-47e7-bfdd-d92f57b1aaf7',2),(102,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__bed978c0-342d-11ee-a657-a54d6be1d46a__player_album.jpgb3297a48-b2c6-4cd9-99ce-fbc1f1af973e?alt=media&token=801d480d-b179-4339-bcb8-570df2376e53',2),(104,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__1e9b7220-7d55-11ee-bec4-f929e725acab__player_album.jpg20460abf-3e62-44b8-90a2-913e79fdf18c?alt=media&token=cf7b393e-9ebf-4e84-ba90-9a41a39840c7',6),(105,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__21e10030-7d55-11ee-bec4-f929e725acab__player_album.jpgefee153e-a67b-49a9-811e-c683a6d933da?alt=media&token=108c02d4-a4ce-4396-9f1e-336566caab65',6),(106,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__54ee03c0-5be0-11ed-838c-b120e70abb59__player_album.jpg9c624198-ae1d-409d-81f6-927d7a29653e?alt=media&token=05c9ce2c-f8fc-490e-8ced-f260d0d76a41',6),(107,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__314b2570-7d53-11ee-bec4-f929e725acab__player_album.jpg4f349c22-c39d-4283-9b9b-ad1076d79725?alt=media&token=3883f2cf-02af-47ac-b764-25de5bb9eb09',6),(108,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__33447280-7d55-11ee-bec4-f929e725acab__player_album.jpg6dad2c60-5071-49ca-854b-f2c23c24ac73?alt=media&token=0c0c4425-0fcd-4bf4-8b06-0f8af3aa9d25',6),(109,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__c074e2a0-7d52-11ee-bec4-f929e725acab__player_album.jpg7945324e-327b-4c80-8549-87aed8a20148?alt=media&token=58117fe2-6b94-4f1f-94ae-ad2e10b221af',6),(111,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F56deff96-56a8-4a0e-8e47-a0759b1cfc73__3a769810-852c-11ee-bec4-f929e725acab__player_avatar.jpg15e9ee28-1b02-4d77-b706-59953cda9815?alt=media&token=621fe38a-f929-452b-a0b6-7a7822f487bc',7),(112,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F56deff96-56a8-4a0e-8e47-a0759b1cfc73__8a038d30-4a49-11ed-838c-b120e70abb59__player_album.jpgf5e60f0c-2ad4-4806-863a-fc635d895b8a?alt=media&token=a76e8a62-900b-46a7-a86d-d1e9d8193f28',7),(113,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F56deff96-56a8-4a0e-8e47-a0759b1cfc73__939a62b0-4a49-11ed-838c-b120e70abb59__player_album.jpgc7c49e2b-fe2b-4c04-bad1-a5d89597dbf5?alt=media&token=414544ee-d416-4f64-9c74-69d20ccdd467',7),(114,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F56deff96-56a8-4a0e-8e47-a0759b1cfc73__91686560-94cc-11ec-911d-399f024e5d9b__player_album.jpgdff71b8f-9fa7-47b8-9c33-05995c173dd4?alt=media&token=4869e094-8f48-4410-b2d7-bf2d0f7677fe',7),(115,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F56deff96-56a8-4a0e-8e47-a0759b1cfc73__bf96d900-06a8-11ed-92ac-1b8d2f5bc2b5__player_album.jpg4546eab9-3259-41e2-9f43-5405298cd168?alt=media&token=e77135e6-69fa-4736-822a-91ccd1710a7f',7),(117,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0443e4fc-3608-4a06-8b14-b9c74be12e3d__6cb66090-52f9-11ee-bec4-f929e725acab__player_album.jpgec3a579e-a038-489f-b814-5710cbfca3d0?alt=media&token=16e2c019-a25d-45bc-bd22-aa2009ebe068',9),(118,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0443e4fc-3608-4a06-8b14-b9c74be12e3d__62dd4040-748a-11ee-bec4-f929e725acab__player_avatar.jpgd18562ae-8c1d-4918-a2e2-c0b08d277380?alt=media&token=ff9e96b4-c6c1-400d-84f2-f480b4fe4b6d',9),(119,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0443e4fc-3608-4a06-8b14-b9c74be12e3d__77ef2640-52f9-11ee-bec4-f929e725acab__player_album.jpgdcd0b0c0-05d3-437c-aa6c-9e72c971c996?alt=media&token=6851afad-e46b-4755-bc3b-237ed87ba6a9',9),(120,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0443e4fc-3608-4a06-8b14-b9c74be12e3d__812b9050-56d6-11ee-bec4-f929e725acab__player_album.jpgf7f1d6b0-9acf-4c94-ab93-97a7dd542856?alt=media&token=9d08005b-967d-4a8b-947d-473226fd058b',9),(121,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0443e4fc-3608-4a06-8b14-b9c74be12e3d__837be5a0-6be2-11ee-bec4-f929e725acab__player_album.jpg8b3c599f-c56e-4b3b-aff3-0ffa0016f536?alt=media&token=3ed107a8-784f-4758-8563-b4b2a5a32883',9),(122,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0443e4fc-3608-4a06-8b14-b9c74be12e3d__896efa30-52f9-11ee-bec4-f929e725acab__player_album.jpg41d0fce9-2627-41d0-b1ae-f9f8bcdc9e25?alt=media&token=ccf2b8ba-28c4-4c23-ab56-479865edaecf',9),(123,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0443e4fc-3608-4a06-8b14-b9c74be12e3d__cd129080-7fb8-11ee-bec4-f929e725acab__player_album.jpgef3c0e96-c101-4ba6-804d-6aaa2f884cd1?alt=media&token=c5a51e5c-256d-4b7f-a531-50f7d9fecba8',9),(126,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__7c211fc0-4aac-11ee-a657-a54d6be1d46a__player_album.jpgbc1d62c2-6151-4e7f-b554-37369ad392f3?alt=media&token=fda7208a-988b-4c90-83c0-6e3e79c428ce',10),(127,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__22ed4110-319b-11ee-a657-a54d6be1d46a__player_album.jpg9e5b3bdb-c7b3-4647-98dc-c2cde4cefe50?alt=media&token=0c9b0297-cc46-4199-a26f-02ab42635aca',10),(128,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__80c5e1e0-8874-11ee-bec4-f929e725acab__player_album.jpg3f90d0fb-5d29-43b4-a7fd-d263671d7264?alt=media&token=a4568090-490d-4b25-afb2-f766a03739d4',10),(129,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__613eca80-886a-11ee-bec4-f929e725acab__player_album.jpg06a194c1-0b0b-46ba-9219-545159653f6d?alt=media&token=939b5b79-2b0f-4a4a-841a-d7991275e54d',10),(130,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__622b2270-319b-11ee-a657-a54d6be1d46a__player_album.jpg450d21f2-1253-4ef4-a512-afb1706f89f6?alt=media&token=2d7c7562-afa2-417c-a506-581ff75b3111',10),(131,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__4217a420-4aac-11ee-a657-a54d6be1d46a__player_album.jpg61b49d98-e46c-43c5-86e9-dde1b3237f7c?alt=media&token=97286149-d2cc-453d-b627-06d6a11128b9',10),(132,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__84572da0-8ba3-11ee-b056-f7fb864e982d__player_avatar.jpg2a727c0a-455e-41a0-b083-019ca8dec09a?alt=media&token=8037875f-5db3-4659-9d8d-0780c29f6dcc',10),(133,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__12874190-319b-11ee-a657-a54d6be1d46a__player_album.jpge7c46220-52a5-4933-bd3b-eeb907b16d2f?alt=media&token=eb95dfb0-ad97-4031-af06-2d10d0c642da',10),(134,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__b9828310-6391-11ee-bec4-f929e725acab__player_album.jpgd6e10a35-f3ec-44df-a01b-a0eff9ba9d09?alt=media&token=07cb2d9a-e8c6-422b-a8c5-3a226d5d25e6',10),(136,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__55f75e50-42db-11ee-a657-a54d6be1d46a__player_album.jpg06ae4f05-ba78-4ce4-be85-1b48b0f0e90e?alt=media&token=01e94812-a04c-400f-a1ab-3e355550715c',14),(137,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__97bd9bc0-5c57-11ee-bec4-f929e725acab__player_album.jpg79d297dc-5b5a-460c-8a8e-d7ffb5dd00bb?alt=media&token=158bce9b-bdc9-4fa1-9b2b-f712d04ab80d',14),(138,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__1888bc70-857b-11ee-bec4-f929e725acab__player_album.jpge192b006-1512-4659-9ec9-31d3b78fb5f3?alt=media&token=7c951aeb-134a-4659-bfdb-5c20117265a1',14),(139,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__3466d0f0-2e0d-11ee-a657-a54d6be1d46a__player_album.jpgd4ce5c5d-c028-4d91-9ce5-01e4613de5c4?alt=media&token=a73a8320-253c-4c60-8612-01f2afdea5ef',14),(140,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__6862e070-40db-11ee-a657-a54d6be1d46a__player_album.jpg3bf95ccf-0c66-4eeb-9698-6eb334b072e6?alt=media&token=ba1a326a-e4f2-460c-b1fe-6b7c6e0825ae',14),(141,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__bb1d8b90-8234-11ee-bec4-f929e725acab__player_avatar.jpg455d5274-2375-49dc-a9a6-af48ee3cd3f8?alt=media&token=90a101c5-54ec-43ab-adec-7e4bde71963c',14),(143,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__6ccb6340-4684-11ee-a657-a54d6be1d46a__player_album.jpgffc43603-9b59-4472-89c8-c1b2886f0b7d?alt=media&token=7890e46e-65f5-4f9f-b7dd-adda5d96d1f4',15),(144,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__0cb7af30-8a2d-11ee-b056-f7fb864e982d__player_album.jpg666bce2a-c772-4397-ac80-93ea4b786269?alt=media&token=e51916a3-1df5-4b85-923b-ea747a4a6fcd',15),(145,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__7fd85000-263c-11ee-a657-a54d6be1d46a__player_album.jpgf55b31b2-2d54-442b-b446-6870ab1f2eab?alt=media&token=e4861448-b6bf-4726-8dc9-e6dd176f5b54',15),(146,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__66acc790-306a-11ee-a657-a54d6be1d46a__player_album.jpg9969bb46-27e6-43d5-99fc-92294f69ab87?alt=media&token=96baa711-9d48-4a0f-84fc-e0cc1e27a256',15),(147,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__796e66d0-7fe9-11ee-bec4-f929e725acab__player_album.jpg7d03ac86-b103-4192-92eb-5052d0233139?alt=media&token=1beeaad9-b6c4-4706-b895-1534202360dd',15),(148,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__e8533510-19bb-11ee-a657-a54d6be1d46a__player_album.jpg0f912157-7d3e-4fe0-9dc8-78f9581dc084?alt=media&token=54b95ef0-fb79-4b12-876a-d008b865fef1',15),(149,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__c22c2930-8926-11ed-a19f-23a3b10d190e__player_album.jpg9d071b7d-ff96-4bfc-96e7-54876d8b4820?alt=media&token=2be57ffc-618e-4b76-9660-99ee180eedcc',15),(150,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__7c211fc0-4aac-11ee-a657-a54d6be1d46a__player_album.jpg32eb6d18-5bf8-4247-b4ee-584b8cb7c2dd?alt=media&token=b7aef221-4b16-4c04-bddb-9f7ac68c0ce7',15),(152,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__2ee49160-54b1-11ee-bec4-f929e725acab__player_album.jpg858f5371-6389-4c30-a710-2766efa50635?alt=media&token=eb9b2c4a-f1fc-47f1-b8f1-4799fefd5cb7',18),(153,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__8e4edfc0-2d2f-11ed-92ac-1b8d2f5bc2b5__player_album.jpg68606b22-878e-4a31-90e8-496e5d875754?alt=media&token=7dc54558-6c19-4bd2-91cc-d33853c82294',18),(154,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__97ac4a30-5449-11ed-838c-b120e70abb59__player_album.jpg866f0020-57ee-4545-9154-9cd1b3f60b5d?alt=media&token=dde15f95-8364-442b-8223-57b8c346d1ea',18),(155,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__97ac4a30-5449-11ed-838c-b120e70abb59__player_album.jpg15eda166-13d2-4f03-b985-6906c5475db2?alt=media&token=606a1bdc-de76-4dd6-8c26-89007e0cd651',18),(156,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__854a83e0-2337-11ed-92ac-1b8d2f5bc2b5__player_album.jpgc8e31132-2d8e-48cb-b551-48112cda3861?alt=media&token=ac348e70-bb0e-43be-bd5b-e00edae1a47c',18),(157,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__968a91b0-e8e2-11ed-a657-a54d6be1d46a__player_album.jpgf3df530f-5edf-49fb-93b3-8fd9fe558862?alt=media&token=3376d59e-c4d0-48be-8ab2-5585570b285e',18),(158,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__7895d3c0-c913-11ed-a19f-23a3b10d190e__player_album.jpg6fff1689-80ee-4194-876e-b711a827fe93?alt=media&token=dfe025df-5843-4b29-8815-cc4b466d38a0',18),(159,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__c0ccda90-53b9-11ee-bec4-f929e725acab__player_album.jpg7148674b-c4c5-44de-a391-5221ae6a4871?alt=media&token=f9831237-6eef-4922-9193-e621249dd78d',18),(160,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__7c211fc0-4aac-11ee-a657-a54d6be1d46a__player_album.jpg32eb6d18-5bf8-4247-b4ee-584b8cb7c2dd?alt=media&token=b7aef221-4b16-4c04-bddb-9f7ac68c0ce7',27),(161,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__130059d0-198c-11ee-a657-a54d6be1d46a__player_album.jpgf61b6f8a-96e9-4a1b-bdd0-ef24ca67d95d?alt=media&token=d5a8de9b-627f-44aa-931d-c0cf2407ac02',27),(162,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__2a346060-4777-11ee-a657-a54d6be1d46a__player_album.jpgd30e500f-bbbf-406f-93dc-cd5daada9756?alt=media&token=5d1f9139-94ed-4f58-b79c-f89a73740994',27),(163,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__4cf67480-198c-11ee-a657-a54d6be1d46a__player_album.jpgc312ac11-940a-47d3-84fa-0c3cece9c890?alt=media&token=8a74ad0f-4250-4473-9ab3-6dcd2adff41e',27),(164,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__7c626400-4776-11ee-a657-a54d6be1d46a__player_album.jpgad84aa11-7e1a-4d17-bbaf-c155e391ee5a?alt=media&token=c0a113e0-9c60-41e3-947a-f97b38ae4bac',27),(165,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__9b754150-4776-11ee-a657-a54d6be1d46a__player_album.jpgb04093bd-bb11-49b0-a10c-17fdb8cee235?alt=media&token=d7b2609d-ec8c-46d4-b5b2-8bb34620f2fd',27),(166,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__649b01a0-198c-11ee-a657-a54d6be1d46a__player_album.jpg4dfa3567-19bf-4184-a8f1-2d68f23e3bf0?alt=media&token=48b70e96-c587-4b42-8d1a-05eb1dc464f2',27),(168,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__f1483da0-7834-11ee-bec4-f929e725acab__player_album.jpga7532bbb-371f-4837-88cf-46f034afd3f7?alt=media&token=b18e13f8-28ba-4911-a23e-b2833694dfac',28),(169,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__f70fbba0-7834-11ee-bec4-f929e725acab__player_album.jpg7734fae4-02eb-4954-9866-3cde48f06e7a?alt=media&token=204da582-d6c3-428d-841f-96e0059f1b33',28),(170,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__e22bae10-7834-11ee-bec4-f929e725acab__player_album.jpgf66c32b7-fe95-4a2a-b490-eccd00140aa4?alt=media&token=5539cea6-267f-41e7-9024-20a2d4b83cc3',28),(171,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__cab02cc0-7834-11ee-bec4-f929e725acab__player_album.jpgd0391f89-e8c7-4feb-ae07-f8ba443b0b4f?alt=media&token=5adbcf0e-207b-4290-a375-9de5792cd820',28),(172,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__b94ae5b0-7834-11ee-bec4-f929e725acab__player_album.jpg67c3ab8e-7eac-4838-929b-9e32b17f62e4?alt=media&token=1020ea4b-a760-4cd7-b27d-af278775f0d4',28),(174,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__af0b4d10-7834-11ee-bec4-f929e725acab__player_album.jpg030ee1a0-d4d7-4703-aca1-f207676b218b?alt=media&token=f2af4b4c-b86a-4b9c-a31c-030c9fada3dd',28),(175,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__87881af0-049b-11ee-a657-a54d6be1d46a__player_album.jpge756e57a-dfd8-4902-9af2-fabb7cf34e8a?alt=media&token=c4b22ecc-2bbe-40b5-9d2a-1b6746d02e94',28),(176,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__6c842cd0-bfff-11ec-ba81-7bfd4ef70d64__player_album.jpgad29acf9-fb61-4d9a-ae9b-4f268bedc030?alt=media&token=9c46f990-af26-4fcb-83b1-658e890372e5',28),(178,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0403a59d-1ac6-43fd-8069-b6d669a4e97a__a7f8a730-87e7-11ee-bec4-f929e725acab__player_album.jpg51c94eb0-a755-47bf-9772-64623e85157f?alt=media&token=0c27aa71-a537-4fe0-9a32-63ade2d95cbc',29),(179,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0403a59d-1ac6-43fd-8069-b6d669a4e97a__a556ac20-87e7-11ee-bec4-f929e725acab__player_album.jpg4f18be66-f6fc-48c1-87a0-8da346324691?alt=media&token=12bc8e0c-c378-4cb2-94f7-cc9844fb9076',29),(180,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0403a59d-1ac6-43fd-8069-b6d669a4e97a__ab42f030-87e7-11ee-bec4-f929e725acab__player_album.jpg668e02d2-7416-45bf-bc0f-af8eb9d926a8?alt=media&token=b032cf84-6911-448c-a1d5-1136999cabc5',29),(181,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0403a59d-1ac6-43fd-8069-b6d669a4e97a__f1afe4f0-87de-11ee-bec4-f929e725acab__player_album.jpg517b416e-febe-4600-990f-5bed95805215?alt=media&token=20c0276f-2036-465d-8ce2-2b600a4d844b',29),(182,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__7c626400-4776-11ee-a657-a54d6be1d46a__player_album.jpg4dc47154-fc9e-4b3f-9761-24120f001570?alt=media&token=e3c1ff63-410d-447d-b305-b0d1ecfbfb80',29),(193,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fd86ae4dc-c632-4900-b6fb-ec675c50bc38__39cce7a0-896b-11ee-b056-f7fb864e982d__player_album.jpgbca8ffb7-94ef-49bb-b938-92a03e6749f6?alt=media&token=8f1f02fe-b107-4e8b-9dec-f5175e519bc3',30),(194,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fd86ae4dc-c632-4900-b6fb-ec675c50bc38__89d28c20-f08f-11ed-a657-a54d6be1d46a__player_album.jpg1586ddd6-ccb0-4dc7-b304-0d2102b1a110?alt=media&token=244d1089-59a1-46b5-9db9-0ab8d00a6d42',30),(195,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fd86ae4dc-c632-4900-b6fb-ec675c50bc38__bae2c670-5e9b-11ee-bec4-f929e725acab__player_album.jpg8aedd3e2-f008-4784-bbdd-961b128246ca?alt=media&token=55708c95-5a89-431d-9cca-8b3f6302dc42',30),(196,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fd86ae4dc-c632-4900-b6fb-ec675c50bc38__cae33fb0-62b4-11ee-bec4-f929e725acab__player_album.jpgb16a9985-f9d0-4467-a8ad-c857c3f3591a?alt=media&token=520973d5-b127-4ae6-b279-a8ae2ae38c55',30),(197,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0403a59d-1ac6-43fd-8069-b6d669a4e97a__f1afe4f0-87de-11ee-bec4-f929e725acab__player_album.jpgcf27704c-5d10-41ea-a038-61bbf5d0f1e4?alt=media&token=e4d9f517-3fdc-4d45-a9f8-b320511e3a3a',30),(198,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F30468c40-e677-4600-a1cc-a7319781e0db__6dbb85b0-637a-11ee-bec4-f929e725acab__player_album.jpgf374e24b-18a0-4ca2-b005-a1d821c3b53a?alt=media&token=303f43d4-f685-44d8-89fd-cdf210257c36',37),(199,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F30468c40-e677-4600-a1cc-a7319781e0db__91361c30-17c6-11ee-a657-a54d6be1d46a__player_album.jpgbff4428a-c75b-42ba-abed-94bc7efd35f4?alt=media&token=618e000c-a409-494c-9a37-ce3695f7f4b7',37),(200,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F30468c40-e677-4600-a1cc-a7319781e0db__a13ccda0-da0d-11ed-a19f-23a3b10d190e__player_album.jpgd0186067-763c-4cd9-a91c-c02c9fd63206?alt=media&token=78b7cac4-2225-48dc-b786-f25e626a9a1d',37),(201,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F30468c40-e677-4600-a1cc-a7319781e0db__a6236180-da0d-11ed-a19f-23a3b10d190e__player_album.jpg6bb71c93-7bad-4922-a9a1-f20a161fb297?alt=media&token=a51c237b-f639-4b18-aede-16f4735a794e',37),(202,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__26e39160-7bb1-11ee-bec4-f929e725acab__player_album.jpg00cb6ddf-b31f-4cf7-8ee9-6c95f93a0872?alt=media&token=93849da3-9840-48ff-a4a4-def12061c097',38),(203,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__615d8300-6671-11ee-bec4-f929e725acab__player_album.jpgd8f7770e-014a-4586-8f81-570a12404ff4?alt=media&token=54ad7d06-3e09-4020-843e-3d886505d0ed',38),(204,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__732daaf0-bb07-11eb-8909-1bb0c298c7ec__player_album.jpg829f4b06-56a2-466b-8238-513722fce11f?alt=media&token=e8565348-2113-400c-ada5-f2256d35de74',38),(205,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__657671b0-8762-11ee-bec4-f929e725acab__player_album.jpg4c234045-fa16-4795-b883-1ae3286c1d69?alt=media&token=baa6f268-87b4-4b43-8ff3-c1c1f2098d0a',38),(206,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__1589500004832__player_album.jpgf9db17e5-31da-4e57-a447-274c5f481aed?alt=media&token=441eba29-a74b-4347-ba4e-5ee4aa818258',38),(207,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__cd9b47f0-b92f-11ec-911d-399f024e5d9b__player_album.jpge46c9403-32dd-4879-88e3-aad69190eecc?alt=media&token=cfbdb9f4-35dc-401c-8a72-48b0aa19a903',38),(208,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__fed33a70-0cf9-11ee-a657-a54d6be1d46a__player_album.jpg621a769b-e5ba-4c65-a3f2-8393451d0abb?alt=media&token=b8fa01da-e722-472b-ac56-aabcef047774',38),(210,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__6e1e2210-87ab-11ee-bec4-f929e725acab__player_album.jpg7e0bb974-1096-4e70-a313-6b33c4566d0a?alt=media&token=0d0ae959-c010-4bf9-ac3f-3ef6a7c1aee7',39),(211,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__23c785a0-7561-11ee-bec4-f929e725acab__player_album.jpg45d4c44e-d365-4007-8014-8ff35e9a3394?alt=media&token=b032ac98-788f-43cb-a417-4ce3fd87726c',39),(212,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__978c14b0-86fa-11ee-bec4-f929e725acab__player_album.jpg2e4c9997-bd8c-4c5c-b1cc-35eef4013276?alt=media&token=c0437d1c-daba-49f3-ae76-b25fa02ca95a',39),(213,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__7604c4b0-6bb5-11ed-838c-b120e70abb59__player_album.jpga5dc9e94-1b98-4e84-9aba-6c29026720d6?alt=media&token=d549849a-d80e-4a21-9f88-27585db0498a',39),(214,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__9850eec0-04fa-11ee-a657-a54d6be1d46a__player_album.jpg0a81fdfd-c59f-4fe5-a617-5948c187b78f?alt=media&token=b77779c2-77f4-49fc-a204-e8ab6273e3a2',39),(215,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__b0fc3d80-04fa-11ee-a657-a54d6be1d46a__player_album.jpgb6cf79c0-9da2-4371-9dea-32fe1fbc6d1d?alt=media&token=5a40a145-7a5c-4e91-b956-c611dbf873fb',39),(216,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__c2170500-5923-11ee-bec4-f929e725acab__player_album.jpg7a6ea6f5-774a-40ee-bee6-1bf6c935822e?alt=media&token=439b9d1b-7f3a-4acb-bbcb-052a2378c599',39),(217,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__eb5371b0-4e3d-11ee-bec4-f929e725acab__player_album.jpg5a4e95b2-81ef-4789-bbff-e92a63ccd762?alt=media&token=b49c2dda-a226-4537-9b02-8978b2a7643a',31),(218,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__bb7ddfe0-39fa-11ee-a657-a54d6be1d46a__player_album.jpgb649e629-5352-46bc-a48c-4ad114a8af92?alt=media&token=8f76af45-826d-4e7f-a3ab-43bf92c17952',31),(219,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__a01cbff0-39fa-11ee-a657-a54d6be1d46a__player_album.jpg62d5531e-2179-4846-ba96-c333dea2f5f9?alt=media&token=2c5fda02-9264-446a-822e-4f2d46b62694',31),(220,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__149b3040-7340-11ee-bec4-f929e725acab__player_album.jpg8b327a91-4228-4502-886e-9513d192c0ec?alt=media&token=2865ed42-b316-4cae-972d-611ae13fb613',31),(221,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__24ecdd30-2aee-11ee-a657-a54d6be1d46a__player_album.jpgea06b792-e795-4247-8514-c76e83ecc36c?alt=media&token=a2fce925-2009-4319-9ae7-a2002d48778c',31),(222,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__9cb5f7f0-7316-11ee-bec4-f929e725acab__player_album.jpgb0655740-5b9d-4d08-8ef2-88d7b518110e?alt=media&token=a47f9322-8187-41e1-9721-cc77ac64fe82',31),(223,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__6b531bd0-4f2f-11ee-bec4-f929e725acab__player_album.jpgcbb2421c-e4f5-41ab-8c21-613102eebb15?alt=media&token=53dccc8d-b952-49d7-919d-cc09044b64c0',31),(224,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__4c547390-aabc-11ed-a19f-23a3b10d190e__player_album.jpgb8f64ab5-f247-4239-8157-24a670f4f1ae?alt=media&token=cc513893-dd34-45da-869c-d0f31ab0854f',31),(225,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fef47e5cf-6b27-4e09-970b-c6ce971b71cd__0cfdf050-625e-11ed-838c-b120e70abb59__player_album.jpg379a8d81-5cee-4377-94a2-0d2fadd1077d?alt=media&token=980c7c6f-3271-4e69-b249-d7270860ba4a',32),(226,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fef47e5cf-6b27-4e09-970b-c6ce971b71cd__6b3be990-1139-11ed-92ac-1b8d2f5bc2b5__player_album.jpg21f85d4a-881b-45de-a1cf-34efc3f35beb?alt=media&token=5660fb00-a8f5-4616-918b-23325aed20b5',32),(227,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fef47e5cf-6b27-4e09-970b-c6ce971b71cd__217e2350-a607-11ed-a19f-23a3b10d190e__player_album.jpg3124e75e-1f02-4449-b7b8-0e10492117cd?alt=media&token=aafef8ad-5ba1-4772-9203-fe9b45311eba',32),(228,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fef47e5cf-6b27-4e09-970b-c6ce971b71cd__66793160-1139-11ed-92ac-1b8d2f5bc2b5__player_album.jpgde99d13b-f97a-4d1a-89d9-42052642ad27?alt=media&token=ab950774-430d-47e0-9cb8-20d7234040ba',32),(229,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fef47e5cf-6b27-4e09-970b-c6ce971b71cd__fe99b440-625d-11ed-838c-b120e70abb59__player_album.jpge5da9ea3-8b1e-45f5-9282-a3a8739cb782?alt=media&token=3057f2fb-5c82-453b-baf6-d2eff3ad08df',32),(230,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__0d1682a0-843b-11ee-bec4-f929e725acab__player_album.jpg075994a1-7085-4abb-a2a4-3d15b14109d7?alt=media&token=5f00f6dd-7b48-47e9-857d-c91802743997',33),(231,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__02a0bed0-843b-11ee-bec4-f929e725acab__player_album.jpg6706bde5-1347-44ad-bf8f-f5b39515ee85?alt=media&token=f2705b07-7f0a-4339-90b4-d6e6b0861e10',33),(232,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__082ba900-843b-11ee-bec4-f929e725acab__player_album.jpg8136ddf8-b922-4960-a426-319026c44e9a?alt=media&token=c0a47f43-53ae-4223-aae8-6100f201959b',33),(233,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__f67a8be0-843a-11ee-bec4-f929e725acab__player_album.jpg21cf60ba-f6d4-468a-86e8-b1f4fb7fc5a4?alt=media&token=b88f74ec-15ee-4e45-abc3-1244406b382b',33),(234,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__fb5a6900-843a-11ee-bec4-f929e725acab__player_album.jpga4baac72-a227-4ca4-a916-88d8c2c21783?alt=media&token=96ec9bdb-eedb-4492-8abf-3d1115014343',33),(235,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__ff0bff50-843a-11ee-bec4-f929e725acab__player_album.jpg4bb14bc1-223a-4384-9439-7c51968a589f?alt=media&token=5ed85899-27fb-4447-a6f4-c7eeaf196731',33),(236,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F06ade6f1-8b36-49bd-990c-c2c597abaf1f__92db3570-ec3a-11eb-a5b5-55d4c2fddb9c__player_album.jpg8a581431-bfff-4a16-b719-1607ad449b69?alt=media&token=95cdb671-d155-430f-a169-dddb76184012',34),(237,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F06ade6f1-8b36-49bd-990c-c2c597abaf1f__8668b740-ec3a-11eb-8dd9-1bd820f89ac6__player_album.jpg4913e770-d362-421b-9ff1-ce2eb2fdaed6?alt=media&token=1e00cefb-f199-40fe-a663-d520ca60a0b0',34),(238,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F06ade6f1-8b36-49bd-990c-c2c597abaf1f__9565ff00-ec3a-11eb-8dd9-1bd820f89ac6__player_album.jpg4f5af34c-840e-4f54-9512-ffbdecb15e01?alt=media&token=3a1b72c2-c372-43ce-a23c-6a87d0bad271',34),(239,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F06ade6f1-8b36-49bd-990c-c2c597abaf1f__9820b230-ec3a-11eb-b986-5b405e6f2788__player_album.jpgac572c98-6aac-44f9-a3a9-a04c41e0966f?alt=media&token=681980e2-ebb7-484d-900e-a9ee4eb0d57f',34),(240,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F06ade6f1-8b36-49bd-990c-c2c597abaf1f__90053210-ec3a-11eb-b986-5b405e6f2788__player_album.jpg8b3da091-f26c-4337-8504-093ecf4b18c8?alt=media&token=b608cf53-0140-414b-8dda-14cc57bdc4a6',34),(241,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3086abd2-f714-4b4e-8026-d0bc0d8c74cb__03d85410-ec93-11ed-a657-a54d6be1d46a__player_avatar.jpg48c80f99-7d86-4dc8-9d0b-a78f3f382321?alt=media&token=ea130d26-5273-46e4-ac52-8f41964dad42',35),(242,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3086abd2-f714-4b4e-8026-d0bc0d8c74cb__59e0a030-1ec4-11ed-92ac-1b8d2f5bc2b5__player_album.jpg3f4e6dae-b2da-4b7a-b524-9d3699328588?alt=media&token=c28168ee-ecc9-40f6-85a8-dec38a9f28ac',35),(243,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3086abd2-f714-4b4e-8026-d0bc0d8c74cb__f506e390-1644-11ed-92ac-1b8d2f5bc2b5__player_album.jpg02e7ed29-00a8-4f99-87d3-a494b9b1bd5f?alt=media&token=5f3ad1d3-5310-4cc6-8433-a6c103d6aba4',35),(244,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3086abd2-f714-4b4e-8026-d0bc0d8c74cb__2ddcd070-1ec5-11ed-92ac-1b8d2f5bc2b5__player_album.jpgb1937b7e-d9fd-4c99-8f90-dfeade3faa9a?alt=media&token=224eb271-f3ec-4460-9a28-3a4c7596af30',35),(245,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F102590c3-20f3-4dea-9ac5-4a710d62fb68__0f93d2f0-ea51-11ed-a657-a54d6be1d46a__player_album.jpg5fcaa7e5-94ec-4022-822e-4d7db6f08292?alt=media&token=a64b4c50-7b05-411a-8c00-2d3fbea1f0f4',36),(246,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F102590c3-20f3-4dea-9ac5-4a710d62fb68__480c95d0-79e8-11eb-bab1-798df9248f53__player_album.jpg5c0b8a0a-8d67-4837-b448-09a6d140af57?alt=media&token=1aaa5e79-409e-4fc9-a6b3-001d2657fcfb',36),(247,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F102590c3-20f3-4dea-9ac5-4a710d62fb68__d79c6b20-7ad4-11eb-9886-a967fa33695f__player_avatar.jpg46f4bfa0-8a56-4c14-8bc3-5b7626982999?alt=media&token=215dc558-21d3-4a11-a3ea-bc7b3673b1d1',36);
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
  `time` datetime DEFAULT NULL,
  `from_user_id` bigint DEFAULT NULL,
  `to_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaiwcj349hqqa7p05qe5jqgryd` (`account_receive_id`),
  KEY `FKfvs28u21kivt40755jxq9cxwr` (`account_send_id`),
  KEY `FKsysh0os7u1nwlyc1cua0rh1yy` (`from_user_id`),
  KEY `FKpkmj3k0jf1pq84dwl7yft7fn9` (`to_user_id`),
  CONSTRAINT `FKaiwcj349hqqa7p05qe5jqgryd` FOREIGN KEY (`account_receive_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKfvs28u21kivt40755jxq9cxwr` FOREIGN KEY (`account_send_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKpkmj3k0jf1pq84dwl7yft7fn9` FOREIGN KEY (`to_user_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKsysh0os7u1nwlyc1cua0rh1yy` FOREIGN KEY (`from_user_id`) REFERENCES `accounts` (`id`)
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
  `time_send` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbsn060rs88iass0w5ck1s433s` (`account_receive_id`),
  KEY `FK6vi5taafsqm6x7ov0ysh9j7x5` (`account_send_id`),
  CONSTRAINT `FK6vi5taafsqm6x7ov0ysh9j7x5` FOREIGN KEY (`account_send_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKbsn060rs88iass0w5ck1s433s` FOREIGN KEY (`account_receive_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
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
  `avatar_image` text,
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_lover`
--

LOCK TABLES `profile_lover` WRITE;
/*!40000 ALTER TABLE `profile_lover` DISABLE KEYS */;
INSERT INTO `profile_lover` VALUES (1,'2023-11-09 04:43:56',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__4c3c1530-8a8a-11ee-b056-f7fb864e982d__player_avatar.jpg47d3a456-f4ea-463c-a1a1-61e16d5eabe4?alt=media&token=62b2fcef-20e4-43de-a7bf-c94775a91844',5,'2002-04-25','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',60000,'Lịch sự và biết quan tâm đến mình nhé!',667,12560000,60,4,2,2,1,'','',123),(2,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__9fd858a0-5e04-11ee-bec4-f929e725acab__player_album.jpg5126ee19-d8c9-487b-817a-30c25d7e59a3?alt=media&token=1e73dace-5718-4cd3-bdea-cc739310a694',4.43,'2000-05-06','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',65000,'Lịch sự và biết quan tâm đến mình nhé!',434,12000000,60,6,2,2,1,NULL,NULL,456),(3,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F4e876224-c40d-486c-bddc-77fc3a253cd7__5d2bb8d0-4446-11ee-a657-a54d6be1d46a__player_avatar.jpg34d7f81e-120d-47d7-b339-fc9068d0a446?alt=media&token=ec3f1fe3-d3a8-4c6e-98c1-06a906c5007c',3.42,'2001-06-07','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',55000,'Lịch sự và biết quan tâm đến mình nhé!',664,32235000,60,7,1,2,1,NULL,NULL,432),(4,'2023-11-09 04:43:56',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fded74223-1ab2-45b9-a3c6-9d40ac73a63e__1580fc10-3529-11ee-a657-a54d6be1d46a__player_album.jpg9ccaed1a-809f-4f18-96e9-08402a925563?alt=media&token=c8756d4b-c4b4-42be-afd3-b28a98102bff',3.54,'2002-04-25','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',60000,'Lịch sự và biết quan tâm đến mình nhé!',667,12560000,60,8,2,2,1,'','',345),(5,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe5fccd00-a801-4b3b-b955-091bf6c5c587__aa92e1d0-0af9-11ec-83f5-b1224eeef5c5__player_album.jpg190eb9bb-d260-47e1-adb8-cb1d6bb8802d?alt=media&token=0fcb4880-7b4e-4efa-b519-3568db6b21d6',4.65,'1998-04-10','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',70000,'Lịch sự và biết quan tâm đến mình nhé!',894,5000000,60,9,2,2,1,NULL,NULL,442),(6,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__efd76b30-892d-11ee-b056-f7fb864e982d__player_avatar.jpgfc7389ce-e1fd-4543-b204-392a41a316e1?alt=media&token=1e8dbd94-8d95-4fd4-a8aa-f1bd69c0576c',4.65,'1997-04-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',80000,'Lịch sự và biết quan tâm đến mình nhé!',973,4500000,60,10,3,2,1,NULL,NULL,765),(7,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F56deff96-56a8-4a0e-8e47-a0759b1cfc73__3a769810-852c-11ee-bec4-f929e725acab__player_avatar.jpg1aea3b19-4b0a-4cf0-afe6-44eb25a41876?alt=media&token=b34878c9-a7d2-4d28-9fb8-d8db6e7b8c38',4.65,'1996-04-13','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',150000,'Lịch sự và biết quan tâm đến mình nhé!',543,3500000,60,11,4,2,1,NULL,NULL,456),(8,'2023-11-09 04:43:56',NULL,1,'2023-11-09 04:43:56','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__ae79d6b0-89f4-11ee-b056-f7fb864e982d__player_avatar.jpg16169ebf-9201-462b-8bf1-1137ccdf027b?alt=media&token=3885eea6-e0c1-4387-87c1-401cf49b7bf1',3.54,'1996-04-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',120000,'Lịch sự và biết quan tâm đến mình nhé!',234,55000000,60,5,2,2,1,NULL,NULL,246),(9,'2023-11-15 13:44:13',NULL,1,'2023-11-15 13:44:13','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__efd76b30-892d-11ee-b056-f7fb864e982d__player_avatar.jpg2a72006a-1371-4bf8-b76d-91244dba056a?alt=media&token=c27a6540-69a3-4a45-ae4e-541b2d43ba45',4.65,'1996-06-05','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',120000,'Lịch sự và biết quan tâm đến mình nhé!',23,13000000,60,12,1,2,1,NULL,NULL,654),(10,'2023-11-15 13:44:13',NULL,1,'2023-11-15 13:44:13','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__84572da0-8ba3-11ee-b056-f7fb864e982d__player_avatar.jpg74d3ca37-4be2-4f9b-925f-d8137e776528?alt=media&token=de11bb5e-983e-4b73-8a22-500fcf1eb6f1',3.54,'1995-06-07','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',125000,'Lịch sự và biết quan tâm đến mình nhé!',467,12500000,60,13,3,2,1,NULL,NULL,635),(14,'2023-11-15 13:44:13',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__bb1d8b90-8234-11ee-bec4-f929e725acab__player_avatar.jpg9485b81d-6eac-4ad6-8a5a-a690f71f86fe?alt=media&token=d21c1ccb-2626-4a2a-942c-d742038744c2',4.43,'2002-06-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',110000,'Lịch sự và biết quan tâm đến mình nhé!',43,9550000,60,15,4,2,1,'','',753),(15,'2023-11-15 13:44:13',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__a9b25f80-8ae4-11ee-b056-f7fb864e982d__player_avatar.jpg42e37933-954f-454d-a84c-e3acfa7dbb68?alt=media&token=33814765-7a5a-4458-b9be-c6f661cec5d7',3.54,'2001-03-27','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',115000,'Lịch sự và biết quan tâm đến mình nhé!',246,12560000,50,16,3,2,1,NULL,NULL,753),(17,'2023-11-15 13:44:13',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__27ff0d00-5621-11ee-bec4-f929e725acab__player_avatar.jpg82b12848-05bf-4d4c-9331-51058c88344f?alt=media&token=8caa5f46-467b-4651-8b37-ac6e89d87214',4.65,'2004-09-22','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',60000,'Lịch sự và biết quan tâm đến mình nhé!',765,3500000,50,17,4,2,1,NULL,NULL,863),(18,'2023-11-15 13:44:13',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__d2652760-6342-11ee-bec4-f929e725acab__player_avatar.jpg843872a4-8049-4f4d-93df-1e74da0ca04c?alt=media&token=9d337d81-e880-4c1c-a828-7663e23a133a',4.43,'2001-10-30','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',70000,'Lịch sự và biết quan tâm đến mình nhé!',433,3500000,50,18,1,2,1,'','',252),(27,'2023-11-19 15:37:16',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__7758b3f0-89b2-11ee-b056-f7fb864e982d__player_avatar.jpg836411f5-12df-4e69-9da6-ef3931f48130?alt=media&token=796f8845-51bb-4150-a080-4d44f083c2ed',3.54,'2002-11-28','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',80000,'Lịch sự và biết quan tâm đến mình nhé!',234,3500000,55,36,1,2,1,NULL,NULL,567),(28,'2023-11-19 15:56:43',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__1282c610-1120-11ee-a657-a54d6be1d46a__player_avatar.jpgf844f607-bd35-4ac6-93e1-18e88ad2603b?alt=media&token=0af4eff5-81a9-4bad-a050-02dd34bdc463',4.65,'2000-10-26','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',90000,'Lịch sự và biết quan tâm đến mình nhé!',123,3500000,55,37,1,2,1,NULL,NULL,753),(29,'2023-11-19 16:09:09',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0403a59d-1ac6-43fd-8069-b6d669a4e97a__2fba7460-88b9-11ee-b056-f7fb864e982d__player_album.jpg18cf55b9-f63a-4307-aeee-a6bda57954c5?alt=media&token=7dcf2b24-145e-41a2-b7f5-73355ca23900',4.43,'1999-08-02','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',75000,'Lịch sự và biết quan tâm đến mình nhé!',432,3500000,55,38,1,2,1,NULL,NULL,334),(30,'2023-11-20 03:15:06',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fd86ae4dc-c632-4900-b6fb-ec675c50bc38__90bbd4a0-8c5d-11ee-b056-f7fb864e982d__player_avatar.jpg0ef79e43-6867-4fe8-b576-d5aa73363b77?alt=media&token=8dc7a2ef-0925-4e71-b38f-909d8026219a',3.54,'1999-01-25','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',80000,'Lịch sự và biết quan tâm đến mình nhé!',269,12560000,55,39,2,2,1,NULL,NULL,846),(31,'2023-11-20 10:49:56',NULL,2,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__fd45bc00-7d9c-11ee-bec4-f929e725acab__player_avatar.jpg6051ad0c-4622-4aaa-b87a-d76691ac7019?alt=media&token=edf978dc-20cd-4333-be6e-868e23e45cdd',4.43,'1996-04-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',85000,'Lịch sự và biết quan tâm đến mình nhé!',639,3500000,60,43,1,2,1,NULL,NULL,234),(32,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fupload_e7be787ac8f76bb32360c426eb13b1c1.png164a1374-7a67-4126-8227-9fda8eaca762?alt=media&token=5d9a4be5-8afc-4766-8231-80e1342a4045',4.65,'1999-01-25','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',90000,'Lịch sự và biết quan tâm đến mình nhé!',483,55000000,55,44,7,1,1,NULL,NULL,432),(33,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__557c3940-4071-11ed-838c-b120e70abb59__player_avatar.jpga4e0494d-abad-4dfe-ba79-bc629d3ac2e2?alt=media&token=a5d0e3d0-e66c-4443-9290-6e14de068546',3.54,'1996-04-04','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',125000,'Lịch sự và biết quan tâm đến mình nhé!',543,3500000,55,45,6,1,1,NULL,NULL,386),(34,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F06ade6f1-8b36-49bd-990c-c2c597abaf1f__964f9980-eef5-11ec-92ac-1b8d2f5bc2b5__player_avatar.jpg6bd852a1-8fbc-46ec-a301-2639f55aaa86?alt=media&token=590ff806-c29a-430d-b38c-95bd48c1256c',4.43,'1999-08-02','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',125000,'Lịch sự và biết quan tâm đến mình nhé!',987,55000000,55,46,8,1,1,NULL,NULL,143),(35,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3086abd2-f714-4b4e-8026-d0bc0d8c74cb__03d85410-ec93-11ed-a657-a54d6be1d46a__player_avatar.jpg5baec51a-fa22-4b54-b3fa-9603f7d99e4d?alt=media&token=f8553e4e-29fa-40d3-8a9f-6f165d418c28',4.65,'2004-09-22','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',90000,'Lịch sự và biết quan tâm đến mình nhé!',537,3500000,55,47,9,1,1,NULL,NULL,653),(36,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F102590c3-20f3-4dea-9ac5-4a710d62fb68__d79c6b20-7ad4-11eb-9886-a967fa33695f__player_avatar.jpgbb9a863f-3b57-478d-88d4-ccf5a81d7f3e?alt=media&token=f4e43dd3-da8b-4fd0-a94d-fe47a62ff621',3.54,'2001-10-30','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',85000,'Lịch sự và biết quan tâm đến mình nhé!',335,3500000,55,48,4,1,1,NULL,NULL,432),(37,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F30468c40-e677-4600-a1cc-a7319781e0db__b8fdd8b0-4a35-11ee-a657-a54d6be1d46a__player_avatar.jpg7ae8f79e-147c-49f4-a80e-1882309dcb20?alt=media&token=22aabcca-bbac-4643-9ef7-71668370bfe9',4.43,'2000-10-26','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',110000,'Lịch sự và biết quan tâm đến mình nhé!',165,55000000,55,40,5,2,1,NULL,NULL,457),(38,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__8ae89e60-6f33-11ee-bec4-f929e725acab__player_avatar.jpg6cee4502-cd23-4b0a-937a-1d0c157d7c22?alt=media&token=2f5e9f29-899a-4674-bd4b-61e94cf519f5',3.54,'2004-09-22','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',90000,'Lịch sự và biết quan tâm đến mình nhé!',342,3500000,55,41,6,2,1,NULL,NULL,974),(39,'2023-11-21 03:08:05',NULL,1,'2023-11-21 03:08:05','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__960ffe90-8000-11ee-bec4-f929e725acab__player_avatar.jpgf85ae6e7-883c-4080-a8a6-02df30ab1427?alt=media&token=79db35c0-1ec4-4470-9177-14476925fdd8',4.43,'2004-09-22','??Chào mọi ngừi, mình là Trang Mỹ Thuật MakeUp Artist :\'3\n\n? LoL mùa trước mình rank cao thủ nhưng trình chỉ có bạc đoàn thuiii, còn ARAM thì mình trình Thách Đấu =)))))))\n\n? Valorant thì mình là newbie rank Đồng, Bạc thui ạ, nếu bạn cần người lót bảng hoặc cần tập tạ thì vào dạy mình chơi game nhé nhé :3\n\n? Chơi game vui vẻ là chính, sủa dơ là 10 ( mic nhà không ồn ) =)))\n\n? Rent chơi ARAM 2h tặng 1 game ạ :\'3\n\n? Ngoài chơi game ra mình có nhận make up nha mọi ngừi. (>‿♥)\n\n? Từ 11h đêm mình chỉ nhận duo từ 2h trở lên nha\n\n? SAU 11H ĐÊM THÌ GIÁ DUO CỦA MÌNH LÀ 80K/1H NHA CÁC USER IU DẤUUU ( vì thức đêm hại sk lắm ạaaa )','https://www.facebook.com/profile.php?id=100008444354124',170,'Nghe nhạc, dạo phố, ăn lẩu, đi du lịch, chơi game ...',85000,'Lịch sự và biết quan tâm đến mình nhé!',760,3500000,55,42,7,2,1,NULL,NULL,737);
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
INSERT INTO `profile_lovers_free_services` VALUES (1,1),(1,2),(1,3),(1,4),(8,1),(8,2),(8,4),(2,1),(2,2),(5,1),(5,2),(5,3),(5,4),(6,1),(6,2),(6,3),(6,4),(7,1),(7,2),(7,3),(7,4),(10,1),(10,2),(10,3),(10,4),(14,1),(14,2),(14,4),(15,1),(15,4),(17,2),(17,3),(17,4),(18,1),(18,2),(18,3),(27,1),(27,2),(27,4),(28,1),(28,2),(28,3),(29,1),(29,2),(30,1),(30,2),(30,3),(37,1),(37,2),(37,3),(37,4),(38,1),(38,2),(38,3),(38,4),(39,2),(39,3),(39,4),(31,2),(31,3),(31,4),(32,2),(32,3),(32,4),(33,2),(33,3),(33,4),(34,2),(34,3),(35,1),(35,4),(36,1),(36,2),(36,4),(3,2),(3,3),(3,4),(4,1),(4,2),(4,4),(9,1),(9,2),(9,4);
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
INSERT INTO `profile_lovers_service_lovers` VALUES (1,1),(1,2),(1,3),(1,4),(1,6),(1,7),(1,9),(1,10),(8,1),(8,2),(8,3),(8,4),(8,5),(2,2),(2,3),(2,4),(2,5),(5,2),(5,4),(5,6),(5,7),(5,8),(5,9),(5,10),(6,1),(6,2),(6,4),(6,5),(6,7),(6,8),(6,9),(7,1),(7,2),(7,3),(7,4),(7,5),(7,7),(7,8),(7,9),(7,10),(10,1),(10,2),(10,3),(10,4),(10,5),(10,7),(10,8),(10,9),(10,10),(14,2),(14,4),(14,6),(14,7),(14,8),(14,9),(14,10),(15,1),(15,2),(15,3),(15,6),(15,7),(15,8),(15,9),(15,10),(17,1),(17,2),(17,3),(17,6),(17,7),(17,8),(17,9),(18,3),(18,5),(18,6),(18,7),(18,8),(18,9),(18,10),(27,1),(27,2),(27,3),(27,4),(27,7),(27,8),(27,9),(28,1),(28,2),(28,3),(28,6),(28,7),(28,8),(28,9),(28,10),(29,1),(29,2),(29,3),(29,4),(29,5),(30,1),(30,3),(30,4),(30,7),(30,8),(30,9),(30,10),(37,3),(37,4),(37,5),(37,6),(37,7),(37,8),(37,9),(37,10),(38,1),(38,4),(38,5),(38,7),(38,8),(38,9),(38,10),(39,4),(39,5),(39,6),(39,7),(39,8),(39,9),(39,10),(31,4),(31,5),(31,6),(31,7),(31,8),(31,9),(31,10),(32,2),(32,3),(32,4),(32,5),(32,8),(32,9),(32,10),(33,3),(33,4),(33,7),(33,8),(33,9),(33,10),(34,3),(34,4),(34,5),(34,8),(34,9),(34,10),(35,1),(35,2),(35,3),(35,8),(35,9),(35,10),(36,1),(36,2),(36,3),(36,6),(36,10),(3,6),(3,7),(3,8),(3,9),(3,10),(4,1),(4,2),(4,6),(4,7),(4,8),(4,9),(4,10),(9,1),(9,2),(9,5),(9,6),(9,9),(9,10);
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
INSERT INTO `profile_lovers_vip_services` VALUES (1,1),(1,2),(1,3),(1,4),(8,1),(8,2),(8,4),(2,1),(2,4),(5,3),(5,4),(6,1),(6,3),(7,1),(7,2),(7,4),(10,1),(10,2),(14,1),(14,3),(15,1),(15,2),(15,4),(17,2),(17,3),(17,4),(18,1),(18,2),(18,4),(27,1),(27,2),(28,1),(28,2),(28,3),(28,4),(29,2),(29,3),(29,4),(30,1),(30,2),(30,3),(30,4),(37,1),(37,3),(38,1),(38,2),(39,1),(39,2),(39,4),(31,2),(31,4),(32,2),(32,3),(33,2),(34,1),(34,4),(35,1),(35,3),(35,4),(36,2),(36,4),(3,1),(3,2),(3,3),(4,2),(4,3),(4,4),(9,1),(9,3),(9,4);
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
  `total_spending` double NOT NULL,
  `total_views` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK21bq48oavp20vmh1gbgajk3w0` (`id_account`),
  KEY `FKqx2442xi3pumd02qcbsojcuxj` (`status_user_id`),
  CONSTRAINT `FK21bq48oavp20vmh1gbgajk3w0` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`),
  CONSTRAINT `FKqx2442xi3pumd02qcbsojcuxj` FOREIGN KEY (`status_user_id`) REFERENCES `status_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_user`
--

LOCK TABLES `profile_user` WRITE;
/*!40000 ALTER TABLE `profile_user` DISABLE KEYS */;
INSERT INTO `profile_user` VALUES (3,'2023-11-08 09:43:15',NULL,1,'2023-11-22 01:11:29','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F029f1f12-4fb8-4b21-8171-ca7bf863e2f8__4c3c1530-8a8a-11ee-b056-f7fb864e982d__player_avatar.jpg47d3a456-f4ea-463c-a1a1-61e16d5eabe4?alt=media&token=62b2fcef-20e4-43de-a7bf-c94775a91844','6789010','Tài244','Nguyễn Trọng','0369911511',4,2,12300000,0),(4,'2023-11-09 17:09:54',NULL,1,'2023-11-09 17:14:24','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__efd76b30-892d-11ee-b056-f7fb864e982d__player_avatar.jpg2a72006a-1371-4bf8-b76d-91244dba056a?alt=media&token=c27a6540-69a3-4a45-ae4e-541b2d43ba45','6789010','Tài','Nguyễn Trọng','0369911511',12,2,5600000,0),(5,'2023-11-10 01:34:04',NULL,1,'2023-11-10 01:34:50','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F01d1e26f-ebf6-4aec-960c-a4edbee3b700__84572da0-8ba3-11ee-b056-f7fb864e982d__player_avatar.jpg74d3ca37-4be2-4f9b-925f-d8137e776528?alt=media&token=de11bb5e-983e-4b73-8a22-500fcf1eb6f1','6789010','Tài','Nguyễn Trọng','0369911511',13,2,8900000,0),(6,'2023-11-09 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F1b72991a-3068-4a27-b077-40337ff2e818__ae79d6b0-89f4-11ee-b056-f7fb864e982d__player_avatar.jpg16169ebf-9201-462b-8bf1-1137ccdf027b?alt=media&token=3885eea6-e0c1-4387-87c1-401cf49b7bf1','6789010','Tài','Nguyễn Trọng','0369911511',5,2,7405000,0),(7,'2023-11-08 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3482c1e2-5d2e-4499-8d5c-4819c30b6497__9fd858a0-5e04-11ee-bec4-f929e725acab__player_album.jpg5126ee19-d8c9-487b-817a-30c25d7e59a3?alt=media&token=1e73dace-5718-4cd3-bdea-cc739310a694','6789010','Tài','Nguyễn Trọng','0369911511',6,2,6450000,0),(8,'2023-11-07 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F4e876224-c40d-486c-bddc-77fc3a253cd7__5d2bb8d0-4446-11ee-a657-a54d6be1d46a__player_avatar.jpg34d7f81e-120d-47d7-b339-fc9068d0a446?alt=media&token=ec3f1fe3-d3a8-4c6e-98c1-06a906c5007c','6789010','Tài','Nguyễn Trọng','0369911511',7,2,1235000,0),(9,'2023-11-06 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fded74223-1ab2-45b9-a3c6-9d40ac73a63e__1580fc10-3529-11ee-a657-a54d6be1d46a__player_album.jpg9ccaed1a-809f-4f18-96e9-08402a925563?alt=media&token=c8756d4b-c4b4-42be-afd3-b28a98102bff','6789010','Tài','Nguyễn Trọng','0369911511',8,2,4500000,0),(10,'2023-11-05 01:34:04',NULL,1,'2023-11-15 13:39:08','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe5fccd00-a801-4b3b-b955-091bf6c5c587__aa92e1d0-0af9-11ec-83f5-b1224eeef5c5__player_album.jpg190eb9bb-d260-47e1-adb8-cb1d6bb8802d?alt=media&token=0fcb4880-7b4e-4efa-b519-3568db6b21d6','6789010','Tài','Nguyễn Trọng','0369911511',9,2,6500000,0),(11,'2023-11-15 13:39:41',NULL,1,'2023-11-15 13:39:41','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbca8b642-764c-4ee6-a14a-823c2b3ec3dc__efd76b30-892d-11ee-b056-f7fb864e982d__player_avatar.jpgfc7389ce-e1fd-4543-b204-392a41a316e1?alt=media&token=1e8dbd94-8d95-4fd4-a8aa-f1bd69c0576c','6789010','Tài','Nguyễn Trọng','0369911511',10,2,754000,0),(12,'2023-11-15 13:39:41',NULL,1,'2023-11-19 06:02:06','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F44e0b45a-55c1-4138-b4be-6fc5857467ee__bb1d8b90-8234-11ee-bec4-f929e725acab__player_avatar.jpg9485b81d-6eac-4ad6-8a5a-a690f71f86fe?alt=media&token=d21c1ccb-2626-4a2a-942c-d742038744c2','6789010','Tài','Nguyễn Trọng','0369911511',15,2,6450000,0),(13,'2023-11-15 13:50:02',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F56deff96-56a8-4a0e-8e47-a0759b1cfc73__3a769810-852c-11ee-bec4-f929e725acab__player_avatar.jpg1aea3b19-4b0a-4cf0-afe6-44eb25a41876?alt=media&token=b34878c9-a7d2-4d28-9fb8-d8db6e7b8c38','6789010','Tài','Nguyễn Trọng','0369911511',11,2,1235000,0),(14,'2023-11-15 14:48:55',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0adf55e0-39cc-4ac7-bd1f-cb413364cf11__a9b25f80-8ae4-11ee-b056-f7fb864e982d__player_avatar.jpg42e37933-954f-454d-a84c-e3acfa7dbb68?alt=media&token=33814765-7a5a-4458-b9be-c6f661cec5d7','6789010','Tài','Nguyễn Trọng','0369911511',16,2,754000,0),(15,'2023-11-16 01:18:13',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbfb08d0e-b79e-4fbb-80c5-a102cb9e92f4__27ff0d00-5621-11ee-bec4-f929e725acab__player_avatar.jpg82b12848-05bf-4d4c-9331-51058c88344f?alt=media&token=8caa5f46-467b-4651-8b37-ac6e89d87214','6789010','Tài','Nguyễn Trọng','0369911511',17,2,754000,0),(16,'2023-11-16 01:22:41',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F6322694b-9988-4dcb-afb1-19085740270a__d2652760-6342-11ee-bec4-f929e725acab__player_avatar.jpg843872a4-8049-4f4d-93df-1e74da0ca04c?alt=media&token=9d337d81-e880-4c1c-a828-7663e23a133a','6789010','Tài','Nguyễn Trọng','0369911511',18,2,6450000,0),(34,'2023-11-19 10:31:25',NULL,1,'2023-11-20 03:43:25','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fe4ccaedd-f9f2-4148-be15-b5309460be28__7758b3f0-89b2-11ee-b056-f7fb864e982d__player_avatar.jpg836411f5-12df-4e69-9da6-ef3931f48130?alt=media&token=796f8845-51bb-4150-a080-4d44f083c2ed','6789010','Tài','Nguyễn Trọng','0369911511',36,2,1235000,0),(35,'2023-11-19 15:55:20',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fcbf5f31e-8fd1-44d7-8664-94d2f0c01919__1282c610-1120-11ee-a657-a54d6be1d46a__player_avatar.jpgf844f607-bd35-4ac6-93e1-18e88ad2603b?alt=media&token=0af4eff5-81a9-4bad-a050-02dd34bdc463','6789010','Tài','Nguyễn Trọng','0369911511',37,2,6450000,0),(36,'2023-11-19 16:07:40',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F0403a59d-1ac6-43fd-8069-b6d669a4e97a__2fba7460-88b9-11ee-b056-f7fb864e982d__player_album.jpg18cf55b9-f63a-4307-aeee-a6bda57954c5?alt=media&token=7dcf2b24-145e-41a2-b7f5-73355ca23900','6789010','Tài','Nguyễn Trọng','0369911511',38,2,754000,0),(37,'2023-11-20 03:08:45',NULL,1,'2023-11-20 03:09:27','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fd86ae4dc-c632-4900-b6fb-ec675c50bc38__90bbd4a0-8c5d-11ee-b056-f7fb864e982d__player_avatar.jpg0ef79e43-6867-4fe8-b576-d5aa73363b77?alt=media&token=8dc7a2ef-0925-4e71-b38f-909d8026219a','6789010','Tài','Nguyễn Trọng','0369911511',39,2,6450000,0),(38,'2023-11-20 09:41:57',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F30468c40-e677-4600-a1cc-a7319781e0db__b8fdd8b0-4a35-11ee-a657-a54d6be1d46a__player_avatar.jpg7ae8f79e-147c-49f4-a80e-1882309dcb20?alt=media&token=22aabcca-bbac-4643-9ef7-71668370bfe9','6789010','Tài','Nguyễn Trọng','0369911511',40,2,754000,0),(39,'2023-11-20 10:01:36',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fbac41a0b-028c-4703-b8ec-3d22b73e4f63__8ae89e60-6f33-11ee-bec4-f929e725acab__player_avatar.jpg6cee4502-cd23-4b0a-937a-1d0c157d7c22?alt=media&token=2f5e9f29-899a-4674-bd4b-61e94cf519f5','6789010','Tài','Nguyễn Trọng','0369911511',41,2,754000,0),(40,'2023-11-20 10:10:41',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fa1b97a90-0377-4d35-bbb6-8358475f7d26__960ffe90-8000-11ee-bec4-f929e725acab__player_avatar.jpgf85ae6e7-883c-4080-a8a6-02df30ab1427?alt=media&token=79db35c0-1ec4-4470-9177-14476925fdd8','6789010','Tài','Nguyễn Trọng','0369911511',42,2,6450000,0),(41,'2023-11-20 10:48:02',NULL,1,NULL,'https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F85b3449c-b103-4995-8256-afbb39961238__fd45bc00-7d9c-11ee-bec4-f929e725acab__player_avatar.jpg6051ad0c-4622-4aaa-b87a-d76691ac7019?alt=media&token=edf978dc-20cd-4333-be6e-868e23e45cdd','6789010','Tài','Nguyễn Trọng','0369911511',43,2,8900000,0),(42,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fupload_e7be787ac8f76bb32360c426eb13b1c1.png164a1374-7a67-4126-8227-9fda8eaca762?alt=media&token=5d9a4be5-8afc-4766-8231-80e1342a4045','6789010','Tài','Nguyễn Trọng','0369911511',44,2,6450000,0),(43,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2Fab43e691-724c-46cf-b357-d518af837966__557c3940-4071-11ed-838c-b120e70abb59__player_avatar.jpga4e0494d-abad-4dfe-ba79-bc629d3ac2e2?alt=media&token=a5d0e3d0-e66c-4443-9290-6e14de068546','6789010','Tài','Nguyễn Trọng','0369911511',45,2,8900000,0),(44,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F06ade6f1-8b36-49bd-990c-c2c597abaf1f__964f9980-eef5-11ec-92ac-1b8d2f5bc2b5__player_avatar.jpg6bd852a1-8fbc-46ec-a301-2639f55aaa86?alt=media&token=590ff806-c29a-430d-b38c-95bd48c1256c','6789010','Tài','Nguyễn Trọng','0369911511',46,2,754000,0),(45,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F3086abd2-f714-4b4e-8026-d0bc0d8c74cb__03d85410-ec93-11ed-a657-a54d6be1d46a__player_avatar.jpg5baec51a-fa22-4b54-b3fa-9603f7d99e4d?alt=media&token=f8553e4e-29fa-40d3-8a9f-6f165d418c28','6789010','Tài','Nguyễn Trọng','0369911511',47,2,8900000,0),(46,'2023-11-21 03:10:25',NULL,1,'2023-11-21 03:10:25','https://firebasestorage.googleapis.com/v0/b/lover1-f037d.appspot.com/o/images%2F102590c3-20f3-4dea-9ac5-4a710d62fb68__d79c6b20-7ad4-11eb-9886-a967fa33695f__player_avatar.jpgbb9a863f-3b57-478d-88d4-ccf5a81d7f3e?alt=media&token=f4e43dd3-da8b-4fd0-a94d-fe47a62ff621','6789010','Tài','Nguyễn Trọng','0369911511',48,2,6450000,0);
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
  `avatar_service` text,
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
INSERT INTO `service_lover` VALUES (1,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Ra mắt người nhà'),(2,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Đi cổ vũ đá bóng'),(3,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png','',1,'Đi dạo phố'),(4,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Đi uống cà phê'),(5,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Đi du lịch'),(6,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Chơi game cùng'),(7,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Đi chơi noel'),(8,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Đi xem phim'),(9,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Đi phượt'),(10,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Đi tắm biển'),(11,'https://lennguyenmedia.com/wp-content/uploads/2021/11/image-18.png',NULL,1,'Đi leo núi');
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
INSERT INTO `status_bill` VALUES (1,'Chờ lover xác nhận'),(2,'Lover đã xác nhận'),(3,'Hoàn thành'),(4,'Lover từ chối'),(5,'Huỷ đơn');
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
  `avatar_service` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_service`
--

LOCK TABLES `vip_service` WRITE;
/*!40000 ALTER TABLE `vip_service` DISABLE KEYS */;
INSERT INTO `vip_service` VALUES (1,'',1,'Mang quần áo hàng hiệu',50000,'https://i.pinimg.com/originals/cd/b0/9e/cdb09ebd440593e037ad7e96958e756f.jpg'),(2,'',1,'Mang theo ô tô',60000,'https://i.pinimg.com/originals/cd/b0/9e/cdb09ebd440593e037ad7e96958e756f.jpg'),(3,'',1,'Mang theo điện thoại xịn',70000,'https://i.pinimg.com/originals/cd/b0/9e/cdb09ebd440593e037ad7e96958e756f.jpg'),(4,'',1,'Mang theo đồng hồ xịn',80000,'https://i.pinimg.com/originals/cd/b0/9e/cdb09ebd440593e037ad7e96958e756f.jpg');
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

-- Dump completed on 2023-11-27 17:00:39
