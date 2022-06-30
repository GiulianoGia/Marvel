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
(1,57,'Robert','robert_downey_jr.jpeg','Downey Jr.'),
(2,38,'Chris','chris_hemsworth.jpeg','Hemsworth'),
(3,41,'Chris','chris_evans.jpeg','Evans'),
(4,37,'Scarlett','scarlett_johansson.jpeg','Johansson'),
(5,52,'Edward','edward_norton.jpeg','Norton'),
(6,33,'Elizabeth','elizabeth_olsen.jpeg','Olsen'),
(7,51,'Jeremy','jeremy_renner.jpeg','Renner'),
(8,54,'Mark','mark_ruffalo.jpeg','Ruffalo'),
(9,32,'Aaron','aaron_taylor-johnson.jpeg','Taylor-Johnson'),
(10,73,'Samuel L.','samuel_l_jackson.jpeg','Jackson'),
(11,60,'Clark','clark_gregg.jpeg','Gregg'),
(12,40,'Cobie','cobie_smulders.jpeg','Smulders'),
(13,40,'Hayley','hayley_atwell.jpeg','Atwell'),
(14,57,'Don','don_cheadle.jpeg','Cheadle'),
(15,44,'Dominic','dominic_cooper.jpeg','Cooper'),
(16,49,'Idris','idris_elba.jpeg','Elba'),
(17,84,'Anthony','anthony_hopkins.jpeg','Hopkins'),
(18,53,'Terrence','terrence_howard.jpeg','Howard'),
(19,43,'Anthony','anthony_mackie.jpeg','Mackie'),
(20,49,'Gwyneth','gwyneth_paltrow.jpeg','Paltrow'),
(21,41,'Natalie','natalie_portman.jpeg','Portman'),
(22,68,'Rene','rene_russo.jpeg','Russo'),
(23,71,'Stellan','stellan_skarsgard.jpeg','Skarsgård'),
(24,59,'John','john_slattery.jpeg','Slattery'),
(25,39,'Sebastian','sebastian_stan.jpeg','Stan'),
(26,41,'Tom','tom_hiddleston.jpeg','Hiddleston'),
(27,62,'James','james_spader.jpeg','Spader'),
(28,53,'Dave','dave_bautista.jpeg','Bautista'),
(29,47,'Bradley','bradley_cooper.jpeg','Cooper'),
(30,54,'Vin','vin_diesel.jpeg','Diesel'),
(31,43,'Chris','chris_pratt.jpeg','Pratt'),
(32,44,'Zoe','zoe_saldana.jpeg','Saldana'),
(33,53,'Paul','paul_rudd.jpeg','Rudd'),
(34,77,'Michael','michael_douglas.jpeg','Douglas'),
(35,46,'Judy','judy_greer.jpeg','Greer'),
(36,42,'Evangeline','evangeline_lilly.jpeg','Lilly'),
(37,46,'Michael','michael_pena.jpeg','Peña'),
(38,46,'Corey','corey_stoll.jpeg','Stoll'),
(39,52,'Bobby','bobby_cannavale.jpeg','Cannavale'),
(40,43,'Chadwick','chadwick_boseman.jpeg','Boseman'),
(41,35,'Michael B.','michael_b_jordan.jpeg','Jordan'),
(42,28,'Letitia','letitia_wright.jpeg','Wright'),
(43,44,'Danai','danai_gurira.jpeg','Gurira'),
(44,33,'Daniel','daniel_kaluuya.jpeg','Kaluuya'),
(45,35,'Winston','winston_duke.jpeg','Duke'),
(46,50,'Martin','martin_freeman.jpeg','Freeman'),
(47,63,'Angela','angela_bassett.jpeg','Bassett'),
(48,95,'Stan','stan_lee.jpeg','Lee'),
(49,46,'Sterling K.','sterling_k_brown.jpeg','Brown'),
(50,39,'Lupita','lupita_nyong\'o.jpeg','Nyong\'o'),
(51,60,'Forest','forest_whitaker.jpeg','Whitaker'),
(52,32,'Shaunette Renée','shaunette_renee_wilson.jpeg','Wilson'),
(53,32,'Denzel','denzel_whitaker.jpeg','Whitaker'),
(54,78,'John','john_kani.jpeg','Kani'),
(55,17,'Alex R.','alex_r_hibbert.jpeg','Hibbert'),
(56,45,'Florence','florence_kasumba.jpeg','Kasumba'),
(57,38,'Atandwa','atandwa_kani.jpeg','Kani');
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
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`filmid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES
(1,316000000,'avengers_infinity_war.jpg','Avengers Infinity War',4.8,NULL,NULL),
(2,365000000,'age_of_ultron.jpeg','Avengers Age of Ultrons',5,'tmeOjFno6Do','Das ist ein Film'),
(3,365000000,'avengers_endgame.jpeg','Avengers Endgame',5,'tmeOjFno6Do','Das ist ein Film');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES
(1,2,1),
(2,3,1),
(3,4,1),
(4,6,1),
(5,7,1),
(6,8,1),
(7,14,1),
(8,19,1);
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_user`
--

DROP TABLE IF EXISTS `film_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_user` (
  `film_userid` int(11) NOT NULL AUTO_INCREMENT,
  `filmid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`film_userid`),
  KEY `FKm8n5q6r7plxdsitxu0snkikha` (`filmid`),
  KEY `FKcayq8q8w3yngtw4jo3tt9fxf1` (`userid`),
  CONSTRAINT `FKcayq8q8w3yngtw4jo3tt9fxf1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  CONSTRAINT `FKm8n5q6r7plxdsitxu0snkikha` FOREIGN KEY (`filmid`) REFERENCES `film` (`filmid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_user`
--

LOCK TABLES `film_user` WRITE;
/*!40000 ALTER TABLE `film_user` DISABLE KEYS */;
INSERT INTO `film_user` VALUES
(1,1,61403711);
/*!40000 ALTER TABLE `film_user` ENABLE KEYS */;
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
(61403711,19,'anthony.pena@lernende.bbw.ch','Anthony Javier','2022-06-30 08:53:09','Peña Vargas','1234');
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

-- Dump completed on 2022-06-30 10:13:59
