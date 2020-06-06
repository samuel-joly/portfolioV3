-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `project_category`
--

DROP TABLE IF EXISTS `project_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_category`
--

LOCK TABLES `project_category` WRITE;
/*!40000 ALTER TABLE `project_category` DISABLE KEYS */;
INSERT INTO `project_category` VALUES (1,'Site'),(2,'Programs'),(3,'Game');
/*!40000 ALTER TABLE `project_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_category_tag`
--

DROP TABLE IF EXISTS `project_category_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_category_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_project` int NOT NULL,
  `id_category` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_category_tag`
--

LOCK TABLES `project_category_tag` WRITE;
/*!40000 ALTER TABLE `project_category_tag` DISABLE KEYS */;
INSERT INTO `project_category_tag` VALUES (1,1,1),(3,2,3),(4,3,1),(5,4,3),(6,5,3),(7,6,2),(8,6,1);
/*!40000 ALTER TABLE `project_category_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `title` varchar(255) NOT NULL,
  `topImg` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('Sushi restaurant','css/assets/projects/1.png',1,'A simple restaurant website where you can set a reservation or just look at the menu. I used HTML CSS JS and PHP on this. The design waas made by another real sushir restaurant website. I made it for training.'),('Bloc note','css/assets/projects/2.png',2,'A little notepad that i bound to a shortkey for quick writing note (mostly about code) but also all sort of thing as phylosophi, history or technology. Ive used Python and Tkinter.'),('Online shop','css/assets/projects/3.png',3,'This is one of my favortie school project, I put a lot of affort into the design (before bootstrap). It is fully functionnal, you can create an account and buy a house or as an admin, you can manage the sales, the stocks and the users accounts with a friendly interface.'),('Advanced Agenda','css/assets/projects/4.png',4,'This was my first \"big\" project in python, which have to make you realise where is your time going, to focus on what you like. It use bad file saving system but at least you can backup everything and add description to your day/ hours and see some stats on it (very basic stats)'),('Password manager','css/assets/projects/5.png',5,'NOT SECURE password manager that allow you to generate password that will match most of the websites needs in term of password format. It store the password linked to the name of your account for future use, and quick copy is here too ! I made this in python with Tkinter'),('Memory game','css/assets/projects/6.png',6,'A simple but cool to code memory game on the minecraft universe. It is made in full php and it was a pleasure to make it.');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06  5:42:53
