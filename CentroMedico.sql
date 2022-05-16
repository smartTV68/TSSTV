-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: CentroMedico
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1

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
-- Table structure for table `t_prenotazioni`
--

DROP TABLE IF EXISTS `t_prenotazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prenotazioni` (
  `id_prenotazioni` int(11) NOT NULL AUTO_INCREMENT,
  `id_utente` int(11) NOT NULL,
  `id_prestazionesan` int(11) NOT NULL,
  `dataprenotazione` datetime DEFAULT current_timestamp(),
  `quantita` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prenotazioni`,`id_utente`,`id_prestazionesan`),
  KEY `idxdatapren` (`dataprenotazione`),
  KEY `fkprenutente_idx` (`id_utente`),
  KEY `fkprenvisita_idx` (`id_prestazionesan`),
  CONSTRAINT `fkprenutente` FOREIGN KEY (`id_utente`) REFERENCES `t_utenti` (`id_utente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkprenvisita` FOREIGN KEY (`id_prestazionesan`) REFERENCES `t_prestazionisan` (`id_prestazionesan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prenotazioni`
--

LOCK TABLES `t_prenotazioni` WRITE;
/*!40000 ALTER TABLE `t_prenotazioni` DISABLE KEYS */;
INSERT INTO `t_prenotazioni` VALUES (1,1,5,'2021-10-01 10:31:36',5),(2,2,9,'2021-10-02 10:31:36',1),(3,3,9,'2021-10-05 10:31:36',1),(4,4,6,'2021-11-10 10:31:36',3),(9,2,8,'2021-11-19 00:00:00',2),(10,3,6,'2021-12-10 10:36:52',3),(11,4,5,'2021-12-12 10:36:52',10),(12,1,9,'2022-01-07 00:00:00',1),(13,2,7,'2022-01-10 00:00:00',1),(14,3,5,'2022-02-15 00:00:00',8),(15,4,9,'2022-02-25 00:00:00',1),(16,2,6,'2022-03-12 00:00:00',10),(17,1,6,'2022-04-10 00:00:00',10),(18,4,9,'2022-04-20 00:00:00',1),(19,3,5,'2022-05-02 00:00:00',5),(20,1,9,'2022-05-10 12:26:45',1);
/*!40000 ALTER TABLE `t_prenotazioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prestazionisan`
--

DROP TABLE IF EXISTS `t_prestazionisan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prestazionisan` (
  `id_prestazionesan` int(11) NOT NULL AUTO_INCREMENT,
  `nomeprestaz` varchar(100) NOT NULL,
  `descrizione` varchar(500) NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_prestazionesan`),
  KEY `idxprestaz` (`nomeprestaz`),
  KEY `idxprezzo` (`costo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prestazionisan`
--

LOCK TABLES `t_prestazionisan` WRITE;
/*!40000 ALTER TABLE `t_prestazionisan` DISABLE KEYS */;
INSERT INTO `t_prestazionisan` VALUES (5,'Agopuntura','L’agopuntura è una disciplina che si basa sulla stimolazione cutanea con aghi e calore secondo i parametri fisiologici ed energetici della medicina tradizionale cinese che individuano nel corpo anche canali energetici insieme a quelli fisici',80),(6,'Allergologia','L’allergologia è una branca della medicina che si occupa della prevenzione, della diagnosi e del trattamento delle allergie, patologie immunitarie caratterizzate da ipersensibilità verso particolari sostanze, e delle malattie ad esse correlate.',80),(7,'Cardiochirurgia','Visite specialistiche cardiochirurgiche',150),(8,'Cardiologia','Visite specialistiche cardiologiche',150),(9,'Cardiologia ECG','Elettrocardiogramma a riposo o sotto sforzo',50);
/*!40000 ALTER TABLE `t_prestazionisan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_utenti`
--

DROP TABLE IF EXISTS `t_utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_utenti` (
  `id_utente` int(11) NOT NULL AUTO_INCREMENT,
  `cognome` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id_utente`),
  UNIQUE KEY `idxcognome` (`id_utente`,`cognome`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_utenti`
--

LOCK TABLES `t_utenti` WRITE;
/*!40000 ALTER TABLE `t_utenti` DISABLE KEYS */;
INSERT INTO `t_utenti` VALUES (1,'Rossi','Mario','mario.rossi@gmail.com','mario'),(2,'Verdi','Giuseppe','giuseppe.verdi@libero.it','giuseppe'),(3,'Bianchi','Lucia','lucia.bianchi@alice.it','lucia'),(4,'Viola','Enrico','enrico.viola@yahoo.com','enrico');
/*!40000 ALTER TABLE `t_utenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v1_prestazioni_totali_pazienti`
--

DROP TABLE IF EXISTS `v1_prestazioni_totali_pazienti`;
/*!50001 DROP VIEW IF EXISTS `v1_prestazioni_totali_pazienti`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v1_prestazioni_totali_pazienti` (
  `cognome` tinyint NOT NULL,
  `nome` tinyint NOT NULL,
  `nomeprestaz` tinyint NOT NULL,
  `data` tinyint NOT NULL,
  `quantita` tinyint NOT NULL,
  `prezzo_prest` tinyint NOT NULL,
  `costo_totale` tinyint NOT NULL,
  `anno` tinyint NOT NULL,
  `mese` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v2_guadagno_prestazione`
--

DROP TABLE IF EXISTS `v2_guadagno_prestazione`;
/*!50001 DROP VIEW IF EXISTS `v2_guadagno_prestazione`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v2_guadagno_prestazione` (
  `prest_paz` tinyint NOT NULL,
  `nomeprestaz` tinyint NOT NULL,
  `tot_appuntamenti` tinyint NOT NULL,
  `guadagno` tinyint NOT NULL,
  `anno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v2_guadagnoannuo_prestazioni`
--

DROP TABLE IF EXISTS `v2_guadagnoannuo_prestazioni`;
/*!50001 DROP VIEW IF EXISTS `v2_guadagnoannuo_prestazioni`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v2_guadagnoannuo_prestazioni` (
  `prest_paz` tinyint NOT NULL,
  `nomeprestaz` tinyint NOT NULL,
  `tot_appuntamenti` tinyint NOT NULL,
  `guadagno` tinyint NOT NULL,
  `anno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v2_prestaz_paz_anno_mese`
--

DROP TABLE IF EXISTS `v2_prestaz_paz_anno_mese`;
/*!50001 DROP VIEW IF EXISTS `v2_prestaz_paz_anno_mese`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v2_prestaz_paz_anno_mese` (
  `cognome` tinyint NOT NULL,
  `nome` tinyint NOT NULL,
  `tot_prestaz` tinyint NOT NULL,
  `tot_pagato` tinyint NOT NULL,
  `mese` tinyint NOT NULL,
  `anno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v3_spesaannuaperpaziente`
--

DROP TABLE IF EXISTS `v3_spesaannuaperpaziente`;
/*!50001 DROP VIEW IF EXISTS `v3_spesaannuaperpaziente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v3_spesaannuaperpaziente` (
  `cognome` tinyint NOT NULL,
  `nome` tinyint NOT NULL,
  `qta_prestaz` tinyint NOT NULL,
  `spesa_anno` tinyint NOT NULL,
  `anno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v1_prestazioni_totali_pazienti`
--

/*!50001 DROP TABLE IF EXISTS `v1_prestazioni_totali_pazienti`*/;
/*!50001 DROP VIEW IF EXISTS `v1_prestazioni_totali_pazienti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v1_prestazioni_totali_pazienti` AS select `u`.`cognome` AS `cognome`,`u`.`nome` AS `nome`,`s`.`nomeprestaz` AS `nomeprestaz`,`p`.`dataprenotazione` AS `data`,`p`.`quantita` AS `quantita`,`s`.`costo` AS `prezzo_prest`,`s`.`costo` * `p`.`quantita` AS `costo_totale`,year(`p`.`dataprenotazione`) AS `anno`,month(`p`.`dataprenotazione`) AS `mese` from ((`t_utenti` `u` join `t_prenotazioni` `p` on(`u`.`id_utente` = `p`.`id_utente`)) join `t_prestazionisan` `s` on(`p`.`id_prestazionesan` = `s`.`id_prestazionesan`)) order by `u`.`cognome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v2_guadagno_prestazione`
--

/*!50001 DROP TABLE IF EXISTS `v2_guadagno_prestazione`*/;
/*!50001 DROP VIEW IF EXISTS `v2_guadagno_prestazione`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v2_guadagno_prestazione` AS select count(`v1_prestazioni_totali_pazienti`.`nomeprestaz`) AS `prest_paz`,`v1_prestazioni_totali_pazienti`.`nomeprestaz` AS `nomeprestaz`,sum(`v1_prestazioni_totali_pazienti`.`quantita`) AS `tot_appuntamenti`,sum(`v1_prestazioni_totali_pazienti`.`costo_totale`) AS `guadagno`,`v1_prestazioni_totali_pazienti`.`anno` AS `anno` from `v1_prestazioni_totali_pazienti` group by `v1_prestazioni_totali_pazienti`.`nomeprestaz`,`v1_prestazioni_totali_pazienti`.`anno` order by `v1_prestazioni_totali_pazienti`.`nomeprestaz`,`v1_prestazioni_totali_pazienti`.`anno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v2_guadagnoannuo_prestazioni`
--

/*!50001 DROP TABLE IF EXISTS `v2_guadagnoannuo_prestazioni`*/;
/*!50001 DROP VIEW IF EXISTS `v2_guadagnoannuo_prestazioni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v2_guadagnoannuo_prestazioni` AS select count(`v1_prestazioni_totali_pazienti`.`nomeprestaz`) AS `prest_paz`,`v1_prestazioni_totali_pazienti`.`nomeprestaz` AS `nomeprestaz`,sum(`v1_prestazioni_totali_pazienti`.`quantita`) AS `tot_appuntamenti`,sum(`v1_prestazioni_totali_pazienti`.`costo_totale`) AS `guadagno`,`v1_prestazioni_totali_pazienti`.`anno` AS `anno` from `v1_prestazioni_totali_pazienti` group by `v1_prestazioni_totali_pazienti`.`nomeprestaz`,`v1_prestazioni_totali_pazienti`.`anno` order by `v1_prestazioni_totali_pazienti`.`nomeprestaz`,`v1_prestazioni_totali_pazienti`.`anno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v2_prestaz_paz_anno_mese`
--

/*!50001 DROP TABLE IF EXISTS `v2_prestaz_paz_anno_mese`*/;
/*!50001 DROP VIEW IF EXISTS `v2_prestaz_paz_anno_mese`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v2_prestaz_paz_anno_mese` AS select `v1_prestazioni_totali_pazienti`.`cognome` AS `cognome`,`v1_prestazioni_totali_pazienti`.`nome` AS `nome`,sum(`v1_prestazioni_totali_pazienti`.`quantita`) AS `tot_prestaz`,sum(`v1_prestazioni_totali_pazienti`.`costo_totale`) AS `tot_pagato`,`v1_prestazioni_totali_pazienti`.`mese` AS `mese`,`v1_prestazioni_totali_pazienti`.`anno` AS `anno` from `v1_prestazioni_totali_pazienti` group by `v1_prestazioni_totali_pazienti`.`cognome`,`v1_prestazioni_totali_pazienti`.`anno`,`v1_prestazioni_totali_pazienti`.`mese` order by `v1_prestazioni_totali_pazienti`.`cognome`,`v1_prestazioni_totali_pazienti`.`anno`,`v1_prestazioni_totali_pazienti`.`mese` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v3_spesaannuaperpaziente`
--

/*!50001 DROP TABLE IF EXISTS `v3_spesaannuaperpaziente`*/;
/*!50001 DROP VIEW IF EXISTS `v3_spesaannuaperpaziente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v3_spesaannuaperpaziente` AS select `v2_prestaz_paz_anno_mese`.`cognome` AS `cognome`,`v2_prestaz_paz_anno_mese`.`nome` AS `nome`,sum(`v2_prestaz_paz_anno_mese`.`tot_prestaz`) AS `qta_prestaz`,sum(`v2_prestaz_paz_anno_mese`.`tot_pagato`) AS `spesa_anno`,`v2_prestaz_paz_anno_mese`.`anno` AS `anno` from `v2_prestaz_paz_anno_mese` group by `v2_prestaz_paz_anno_mese`.`cognome`,`v2_prestaz_paz_anno_mese`.`anno` order by `v2_prestaz_paz_anno_mese`.`cognome`,`v2_prestaz_paz_anno_mese`.`anno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 16:41:18
