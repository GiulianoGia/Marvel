-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Marvel
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB-1:10.8.3+maria~jammy

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `actorid` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`actorid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES
(1,32,'Robert','shaunette_renee_wilson.jpeg','Downey Jr.'),
(2,32,'Chris','shaunette_renee_wilson.jpeg','Hemsworth'),
(3,32,'Chris','shaunette_renee_wilson.jpeg','Evans'),
(4,32,'Scarlett','shaunette_renee_wilson.jpeg','Johansson'),
(5,32,'Edward','shaunette_renee_wilson.jpeg','Norton'),
(6,32,'Elizabeth','shaunette_renee_wilson.jpeg','Olsen'),
(7,32,'Jeremy','shaunette_renee_wilson.jpeg','Renner'),
(8,32,'Mark','shaunette_renee_wilson.jpeg','Raffalo'),
(9,32,'Aaron','shaunette_renee_wilson.jpeg','Taylor-Johnson'),
(10,32,'Samuel L.','shaunette_renee_wilson.jpeg','Jackson'),
(11,32,'Clark','shaunette_renee_wilson.jpeg','Gregg'),
(12,32,'Cobie','shaunette_renee_wilson.jpeg','Smulders'),
(13,32,'Hayley','shaunette_renee_wilson.jpeg','Atwell'),
(14,32,'Don','shaunette_renee_wilson.jpeg','Cheadle'),
(15,32,'Dominic','shaunette_renee_wilson.jpeg','Cooper'),
(16,32,'Idris','shaunette_renee_wilson.jpeg','Elba'),
(17,32,'Anthony','shaunette_renee_wilson.jpeg','Hopkins'),
(18,32,'Terrence','shaunette_renee_wilson.jpeg','Howard'),
(19,32,'Anthony','shaunette_renee_wilson.jpeg','Mackie'),
(20,32,'Gwyneth','shaunette_renee_wilson.jpeg','Paltrow'),
(21,32,'Natalie','shaunette_renee_wilson.jpeg','Portman'),
(22,32,'Rene','shaunette_renee_wilson.jpeg','Russo'),
(23,32,'Stellan','shaunette_renee_wilson.jpeg','Skarsgård'),
(24,32,'John','shaunette_renee_wilson.jpeg','Slattery'),
(25,32,'Sebastian','shaunette_renee_wilson.jpeg','Stan'),
(26,32,'Tom','shaunette_renee_wilson.jpeg','Hiddleston'),
(27,32,'James','shaunette_renee_wilson.jpeg','Spader'),
(28,32,'Dave','shaunette_renee_wilson.jpeg','Bautista'),
(29,32,'Bradley','shaunette_renee_wilson.jpeg','Cooper'),
(30,32,'Vin','shaunette_renee_wilson.jpeg','Diesel'),
(31,32,'Chris','shaunette_renee_wilson.jpeg','Pratt'),
(32,32,'Zoe','shaunette_renee_wilson.jpeg','Saldana'),
(33,32,'Paul','shaunette_renee_wilson.jpeg','Rudd'),
(34,32,'Michael','shaunette_renee_wilson.jpeg','Douglas'),
(35,32,'Judy','shaunette_renee_wilson.jpeg','Greer'),
(36,32,'Evangeline','shaunette_renee_wilson.jpeg','Lilly'),
(37,32,'Michael','shaunette_renee_wilson.jpeg','Peña'),
(38,32,'Corey','shaunette_renee_wilson.jpeg','Stoll'),
(39,32,'Bobby','shaunette_renee_wilson.jpeg','Cannavale'),
(40,32,'Chadwick','shaunette_renee_wilson.jpeg','Boseman'),
(41,32,'Michael B.','shaunette_renee_wilson.jpeg','Jordan'),
(42,32,'Letitia','shaunette_renee_wilson.jpeg','Wright'),
(43,32,'Danai','shaunette_renee_wilson.jpeg','Gurira'),
(44,32,'Daniel','shaunette_renee_wilson.jpeg','Kaluuya'),
(45,32,'Winston','shaunette_renee_wilson.jpeg','Duke'),
(46,32,'Martin','shaunette_renee_wilson.jpeg','Freeman'),
(47,32,'Angela','shaunette_renee_wilson.jpeg','Bassett'),
(48,32,'Stan','shaunette_renee_wilson.jpeg','Lee'),
(49,32,'Sterling K.','shaunette_renee_wilson.jpeg','Brown'),
(50,32,'Lupita','shaunette_renee_wilson.jpeg','Nyong\'o'),
(51,32,'Forest','shaunette_renee_wilson.jpeg','Whitaker'),
(52,32,'Shaunette Renée','shaunette_renee_wilson.jpeg','Wilson'),
(53,32,'Denzel','shaunette_renee_wilson.jpeg','Whitaker'),
(54,32,'John','shaunette_renee_wilson.jpeg','Kani'),
(55,32,'Alex R.','shaunette_renee_wilson.jpeg','Hibbert'),
(56,32,'Florence','shaunette_renee_wilson.jpeg','Kasumba'),
(57,32,'Atandwa','shaunette_renee_wilson.jpeg','Kani');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `filmid` int(11) NOT NULL AUTO_INCREMENT,
  `cost` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `rating` double NOT NULL,
  PRIMARY KEY (`filmid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES
(2,316000000,'avengers_infinity_war.jpg','Avengers Infinity War',4.8),
(3,10000,'avengers_endgame.jpg','Avengers Endgame',4.8);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_actor_id` int(11) NOT NULL,
  `film_film_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf21hkfoa89iyar1calmoe7d7j` (`actor_actor_id`),
  KEY `FKma5hf8eiaqb71bueolgfkyur9` (`film_film_id`),
  CONSTRAINT `FKf21hkfoa89iyar1calmoe7d7j` FOREIGN KEY (`actor_actor_id`) REFERENCES `actor` (`actorid`),
  CONSTRAINT `FKma5hf8eiaqb71bueolgfkyur9` FOREIGN KEY (`film_film_id`) REFERENCES `film` (`filmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61403712 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(61403711,19,'anthony.pena@lernende.bbw.ch','Anthony Javier','2022-06-27 17:56:14','Peña Vargas','1234');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-28 15:43:26
