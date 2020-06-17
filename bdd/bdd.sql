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
) ENGINE=InnoDB AUTO_INCREMENT=4;
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
) ENGINE=InnoDB AUTO_INCREMENT=9;
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
  `description` text NOT NULL,
  `tech` text NOT NULL,
  `able` text NOT NULL,
  `git` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `description_fr` text NOT NULL,
  `tech_fr` text NOT NULL,
  `able_fr` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('Sushi restaurant','../css/assets/projects/1.png',1,'A simple website for a japanese restaurant where you can set a reservation or just look at the menu.  I re-made another real sushi restaurant website for training and it was a good lesson.<br/><br/>',' Tech:<br/> <ul> <li>HTML5</li> <li>JS</li> <li>CSS</li> </ul>','It contain :<ul> <li>Home Page</li> <li>Dymanic menu page</li> <li>Booking page with map</li> <li>Gallery with interractive filter</li> </ul>','https://github.com/samuel-joly/sushi-restau','','projects/sites/Sushi/Index.html','Un simple site vitrine pour un restaurant japonais comprenant toutes les pages necessaires au client pour se renseigner sur la carte ou pour acceder au restaurant.','Techno utilisé: <ul><li>HTML5</li><li>JS</li><li>CSS</li></ul>','Le site Contient: <ul><li>Page d\'accueil</li><li>Menu dynamique</li><li>Page de reservation avec openMap</li><li>Une gallerie avec des filtres</li></ul>'),('Bloc note','../css/assets/projects/2.png',2,'A little notepad that I bound to a shortkey for quick writing note (mostly about code) but also all sort of thing as philosophy, history or technology. ','Tech used: <ul > <li>Python</li> <li>Tkinter</li> </ul>','You can : <ul > <li>Create/rename/delete folder/file</li> <li>Make a backup of saved files</li> </ul> ','https://github.com/aze-fortwo/Bloc-Note','projects/projects-files/Bloc-Note.zip','','Un simple bloc note que j\'ai lié à un raccourci clavier pour prendre rapidement des note de code, philosophie ou histoire.','Techno utilisé: <ul><li>Python</li><li>Tkinter</li></ul>','Il est possible de: <ul><li>Creer, renomer et supprimer fichier et dossier</li><li>Faire un backup des fichiers</li></ul>'),('Online shop','../css/assets/projects/3.png',3,'This is one of my favorite school project (before bootstrap). It is a online shop for luxury houses.',' Tech used: <ul > <li>HTML/CSS</li> <li>PHP</li> </ul>','It contain: <ul > <li>A home page</li> <li>A generated products page with filter</li> <li>A basket with payment page</li> <li>A Back-end for managing the stocks, adding new products, managin users,...</li> </ul> ','https://github.com/samuel-joly/boutique','','projects/sites/Boutique/index.php','Un site d\'e-commerce de maison de luxe. Tout y est opur gerer acheter et vendre une maison, avec un back office complet','Techno utilisé: <ul><li>HTML5</li><li>CSS</li><li>PHP</li></ul>','Le site Contient: <ul><li>Page d\'accueil</li><li>Page de produit dynamique avec filtre</li><li>Gestion backend des ventes/des comptes</li><li>Une page de paiement</li></ul>'),('Advanced Agenda','../css/assets/projects/4.png',4,'This was my first \"big\" project in python, which have to make data about your time going, to focus on what you like. It use bad file saving system but at least you can backup everything and add description to your day/ hours and see some stats on it (very basic stats)<br>\r\n','Tech used: <ul > <li>Python</li> <li>Tkinter</li> <li>MatPlotLib</li> </ul>',' You can : <ul > <li>Save yourt time according to the activity already there</li> <li>Make a graph to have a visual appreciation of the data</li> <li>Backup your saved data</li> </ul>  ','https://github.com/aze-fortwo/Advanced-Agenda','projects/projects-files/Advanced-Agenda.zip','','Mon premier projet en python, pour mieux gerer mon temps. ce programme vous permet de noter et d\'organiser chaque jours vos activites pour mieux comprendre comment vous travaillez.','Techno utilisé: <ul><li>Python</li><li>Tkinter</li><li>Matplotlib</li></ul>','Il est possible de: <ul><li>Enregistrer le nombre d\'heures passée a vos activités quotidienne</li><li>Ecrire des notes</li><li>Graphique des vos sauvegardes/activités</li><li>Backup de vos sauvegardes</li></ul>'),('Password manager','../css/assets/projects/5.png',5,'NOT SECURE password manager that allow you to generate password that will match most of the websites needs in term of password format. It store the password linked to the name of your account for future use, and quick copy is here too !\r\n<br>\r\n','Tech used: <ul><li>Python</li><li>Tkinter</li><li>pyperclip</li></ul>','You can : <ul > <li>Add/Change/remove saved password</li> <li>Create new password with most common password parameter</li> <li>Backup your password</li> <li>Quick copy to clipboard</li> </ul>','https://github.com/aze-fortwo/Password-Manager','projects/projects-files/Password-UNSAFE.zip','','Quoi de mieux que de coder ce dont on as besoin ? C\'est dans cette optique que j\'ai fait password manager, un simple json qui me permet de vite géere mes mot de passes (encore utilise aujourdhui) mais qui n\'est pas sécurisé (pour l\'instant)','Techno utilisé: <ul><li>Python</li><li>Tkinter</li><li>Pyperclip</li></ul>','Il est possible de: <ul><li>Creer/modifier/supprimer vos mot de passes</li><li>Backup des mot de passes</li><li>Copier dans le presse papier rapidement</li></ul>'),('Memory game','../css/assets/projects/6.png',6,'A cool to code school project named memory game.\r\nBased on the minecraft universe, the rules are simple, finish the game in less hit possible.\r\nIt\'s the card game where you need to find the matching cards.','Tech used: <ul ><li>HTML/CSS</li><li>PHP</li></ul>','You can : <ul ><li>Create/change your account </li><li>Play the game in 3 difficulty</li><li>Access to the lederboard</li><li>Get the list of player</li></ul>','https://github.com/marceau-maubert/memory','','projects/sites/Memory/index.php','Un jeux de mémoire fait en projet scolaire. UN des meilleurs projets PHP via la relative complexite a stocker les infomations de la partie pour les enregistrer dans la bdd. Un projet fait avec <a href=\'\'>Marceau Maubert</a>','Techno utilisé: <ul><li>HTML5</li><li>CSS</li><li>PHP</li></ul>','Il est possible de: <ul><li>Creer/modifier/supprimer son compte</li><li>Jouer avec 3 difficulté</li><li>Leaderboard</li><li>Avoir la listes des joueurs</li></ul>');
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

-- Dump completed on 2020-06-16 22:11:32
