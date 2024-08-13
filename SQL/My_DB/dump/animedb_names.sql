-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: animedb
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `names`
--

DROP TABLE IF EXISTS `names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `names` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `names`
--

LOCK TABLES `names` WRITE;
/*!40000 ALTER TABLE `names` DISABLE KEYS */;
INSERT INTO `names` VALUES (1,'Naruto'),(2,'One Piece'),(3,'Attack on Titan'),(4,'My Hero Academia'),(5,'Demon Slayer'),(6,'Dragon Ball Z'),(7,'Fullmetal Alchemist'),(8,'Sword Art Online'),(9,'Death Note'),(10,'Tokyo Ghoul'),(11,'Bleach'),(12,'Fairy Tail'),(13,'Hunter x Hunter'),(14,'One Punch Man'),(15,'JoJo\'s Bizarre Adventure'),(16,'Black Clover'),(17,'Re:Zero'),(18,'Neon Genesis Evangelion'),(19,'Steins;Gate'),(20,'Code Geass'),(21,'Fate/Stay Night'),(22,'Overlord'),(23,'Mob Psycho 100'),(24,'The Seven Deadly Sins'),(25,'Gintama'),(26,'Sword Art Online: Alicization'),(27,'Naruto: Shippuden'),(28,'Attack on Titan: Season 2'),(29,'My Hero Academia: Season 3'),(30,'Demon Slayer: Mugen Train'),(31,'Dragon Ball Super'),(32,'Fullmetal Alchemist: Brotherhood'),(33,'Sword Art Online II'),(34,'Death Note: Relight'),(35,'Tokyo Ghoul:re'),(36,'Bleach: Thousand-Year Blood War'),(37,'Fairy Tail: Final Series'),(38,'Hunter x Hunter: Chimera Ant Arc'),(39,'One Punch Man: Season 2'),(40,'JoJo\'s Bizarre Adventure: Golden Wind'),(41,'Black Clover: Season 2'),(42,'Re:Zero: Season 2'),(43,'Neon Genesis Evangelion: The End of Evangelion'),(44,'Steins;Gate 0'),(45,'Code Geass: Lelouch of the Rebellion R2'),(46,'Fate/Stay Night: Unlimited Blade Works'),(47,'Overlord II'),(48,'Mob Psycho 100 II'),(49,'The Seven Deadly Sins: Revival of The Commandments'),(50,'Gintama: Silver Soul');
/*!40000 ALTER TABLE `names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-13 18:15:32
