-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: db_final_project
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `playlistadds`
--

DROP TABLE IF EXISTS `playlistadds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlistadds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rationale` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `song_id` int DEFAULT NULL,
  `playlist_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `playlists_to_adds_idx` (`playlist_id`),
  KEY `songs_to_adds_idx` (`song_id`),
  CONSTRAINT `playlist_id` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `song_id` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlistadds`
--

LOCK TABLES `playlistadds` WRITE;
/*!40000 ALTER TABLE `playlistadds` DISABLE KEYS */;
INSERT INTO `playlistadds` VALUES (1,'Taylor Swift','2021-11-22 20:50:57','2021-11-22 20:50:57',33,7),(2,'Taylor Swift','2021-11-22 20:50:57','2021-11-22 20:50:57',34,7),(3,'my dance song','2021-11-22 20:50:57','2021-11-22 20:50:57',28,5),(4,'Taylor Swift','2021-11-22 20:50:57','2021-11-22 20:50:57',32,7),(5,'Taylor Swift','2021-11-22 20:50:57','2021-11-22 20:50:57',31,7),(6,NULL,'2021-11-22 20:50:57','2021-11-22 20:58:32',31,6),(7,NULL,'2021-11-22 20:50:57','2021-11-22 20:50:57',1,8),(8,NULL,'2021-11-22 20:50:57','2021-11-22 20:50:57',3,8),(9,'for driving','2021-11-22 20:50:57','2021-11-22 20:50:57',13,2),(10,NULL,'2021-11-22 20:50:57','2021-11-22 21:02:36',15,2),(11,NULL,'2021-11-22 20:50:57','2021-11-22 20:50:57',22,3),(12,NULL,'2021-11-22 20:50:57','2021-11-22 20:50:57',28,3),(13,NULL,'2021-11-22 20:50:57','2021-11-22 20:50:57',36,3),(14,'love this song','2021-11-22 20:50:57','2021-11-22 21:06:04',5,3),(15,'to study','2021-11-22 20:50:57','2021-11-22 20:50:57',2,9),(16,'to study','2021-11-22 20:50:57','2021-11-22 20:50:57',3,9),(17,NULL,'2021-11-22 20:50:57','2021-11-22 20:50:57',8,9),(18,'vibes','2021-11-22 23:43:12','2021-11-22 23:43:12',42,2),(19,'vibes','2021-11-22 23:43:12','2021-11-22 23:43:12',39,2),(21,'TestPlaylistAdd',NULL,'2021-12-12 01:30:04',1,1),(22,'TestPlaylistAdd',NULL,NULL,1,1);
/*!40000 ALTER TABLE `playlistadds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-12  1:53:01
