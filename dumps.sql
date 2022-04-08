-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: DBScuola
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `t_anagrafiche`
--

LOCK TABLES `t_anagrafiche` WRITE;
/*!40000 ALTER TABLE `t_anagrafiche` DISABLE KEYS */;
INSERT INTO `t_anagrafiche` VALUES (1,'rossi','mario','to'),(2,'bianchi','maria','cn'),(3,'verdi','luca','to'),(4,'alessi','giorgio','vc'),(5,'rosselli','Lucia','to'),(6,'belli','aldo','vc'),(7,'torri','Alessandro','cn'),(8,'garda','Paolo','al'),(9,'redi','filippo','to'),(10,'magni','alex','to');
/*!40000 ALTER TABLE `t_anagrafiche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `t_corsi`
--

LOCK TABLES `t_corsi` WRITE;
/*!40000 ALTER TABLE `t_corsi` DISABLE KEYS */;
INSERT INTO `t_corsi` VALUES (1,'java db',NULL,'2022-02-02',100,122.00,'2022-03-03 13:01:13'),(2,'html5','css js html','2022-02-03',50,50.00,'2022-03-03 13:01:13'),(3,'inglese','talk and pick','2022-03-03',12,100.00,'2022-03-03 13:04:01'),(4,'jakarta EE','applicazioni web con jakarta EE','2022-03-07',120,0.00,'2022-03-07 12:28:39'),(6,'IOT wio seed','IOT develop red node','2022-05-05',80,500.00,NULL);
/*!40000 ALTER TABLE `t_corsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `t_iscrizioni`
--

LOCK TABLES `t_iscrizioni` WRITE;
/*!40000 ALTER TABLE `t_iscrizioni` DISABLE KEYS */;
INSERT INTO `t_iscrizioni` VALUES (1,1,1,'2022-03-08 08:54:37'),(2,2,1,'2022-03-08 08:54:37'),(3,1,2,'2022-03-08 08:54:37');
/*!40000 ALTER TABLE `t_iscrizioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `t_opzioni`
--

LOCK TABLES `t_opzioni` WRITE;
/*!40000 ALTER TABLE `t_opzioni` DISABLE KEYS */;
INSERT INTO `t_opzioni` VALUES (1,22.00,25.00);
/*!40000 ALTER TABLE `t_opzioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `t_province`
--

LOCK TABLES `t_province` WRITE;
/*!40000 ALTER TABLE `t_province` DISABLE KEYS */;
INSERT INTO `t_province` VALUES ('al'),('at'),('bi'),('cn'),('no'),('to'),('vb'),('vc');
/*!40000 ALTER TABLE `t_province` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-11 11:56:18
