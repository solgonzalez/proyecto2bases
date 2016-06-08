-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: baseproyecto2
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categoriaprincipal`
--

LOCK TABLES `categoriaprincipal` WRITE;
/*!40000 ALTER TABLE `categoriaprincipal` DISABLE KEYS */;
INSERT INTO `categoriaprincipal` VALUES (1,'Lager','root@localhost','2016-06-08 10:30:58',NULL,NULL),(2,'Ale','root@localhost','2016-06-08 10:31:18',NULL,NULL);
/*!40000 ALTER TABLE `categoriaprincipal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cerveza`
--

LOCK TABLES `cerveza` WRITE;
/*!40000 ALTER TABLE `cerveza` DISABLE KEYS */;
/*!40000 ALTER TABLE `cerveza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cervezasxcliente`
--

LOCK TABLES `cervezasxcliente` WRITE;
/*!40000 ALTER TABLE `cervezasxcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cervezasxcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Amarilla','root@localhost','2016-06-08 11:29:06',NULL,NULL),(2,'Ámbar','root@localhost','2016-06-08 11:30:19',NULL,NULL),(3,'Marrón','root@localhost','2016-06-08 11:30:27',NULL,NULL),(4,'Negra','root@localhost','2016-06-08 11:31:28',NULL,NULL);
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuerpo`
--

LOCK TABLES `cuerpo` WRITE;
/*!40000 ALTER TABLE `cuerpo` DISABLE KEYS */;
INSERT INTO `cuerpo` VALUES (1,'Ligera','root@localhost','2016-06-08 11:55:42',NULL,NULL),(2,'Media','root@localhost','2016-06-08 11:56:08',NULL,NULL),(3,'Pesada','root@localhost','2016-06-08 11:56:14',NULL,NULL);
/*!40000 ALTER TABLE `cuerpo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estilo`
--

LOCK TABLES `estilo` WRITE;
/*!40000 ALTER TABLE `estilo` DISABLE KEYS */;
INSERT INTO `estilo` VALUES (1,'American Stout','root@localhost','2016-06-08 11:37:03',NULL,NULL),(2,'American Porter','root@localhost','2016-06-08 11:37:20',NULL,NULL),(3,'Pumpkin Ale','root@localhost','2016-06-08 11:37:35',NULL,NULL),(4,'Rye Beer','root@localhost','2016-06-08 11:37:47',NULL,NULL),(5,'American Strong Ale','root@localhost','2016-06-08 11:38:04',NULL,NULL),(6,'Belgian Strong Pale Ale','root@localhost','2016-06-08 11:38:25',NULL,NULL),(7,'Dubbel','root@localhost','2016-06-08 11:38:38',NULL,NULL),(8,'Faro','root@localhost','2016-06-08 11:38:46',NULL,NULL),(9,'Gueuze','root@localhost','2016-06-08 11:38:57',NULL,NULL),(10,'Witbier','root@localhost','2016-06-08 11:39:08',NULL,NULL),(11,'Braggot','root@localhost','2016-06-08 11:39:44',NULL,NULL),(12,'English Bitter','root@localhost','2016-06-08 11:39:58',NULL,NULL),(13,'Old Ale','root@localhost','2016-06-08 11:40:12',NULL,NULL),(14,'Winter Warmer','root@localhost','2016-06-08 11:40:23',NULL,NULL),(15,'English Barleywine','root@localhost','2016-06-08 11:40:44',NULL,NULL),(16,'Sahti','root@localhost','2016-06-08 11:40:52',NULL,NULL),(17,'Altbier','root@localhost','2016-06-08 11:41:01',NULL,NULL),(18,'Dunkelweizen','root@localhost','2016-06-08 11:43:58',NULL,NULL),(19,'Gose','root@localhost','2016-06-08 11:44:08',NULL,NULL),(20,'Kristalweizen','root@localhost','2016-06-08 11:44:23',NULL,NULL),(21,'Roggenbier','root@localhost','2016-06-08 11:44:32',NULL,NULL),(22,'Weizenbock','root@localhost','2016-06-08 11:44:43',NULL,NULL),(23,'Kvass','root@localhost','2016-06-08 11:44:53',NULL,NULL),(25,'Irish Dry Stout','root@localhost','2016-06-08 11:46:45',NULL,NULL),(26,'Irish Red Ale','root@localhost','2016-06-08 11:49:12',NULL,NULL),(27,'Scottish Gruit','root@localhost','2016-06-08 11:49:41',NULL,NULL),(28,'Wee Heavy','root@localhost','2016-06-08 11:50:01',NULL,NULL),(29,'American Malt Liquor','root@localhost','2016-06-08 11:50:20',NULL,NULL),(30,'Steam Beer','root@localhost','2016-06-08 11:50:40',NULL,NULL),(31,'Light Lager','root@localhost','2016-06-08 11:50:53',NULL,NULL),(32,'Czech Pilsener','root@localhost','2016-06-08 11:51:19',NULL,NULL),(33,'Euro Dark Lager','root@localhost','2016-06-08 11:51:30',NULL,NULL),(34,'Euro Pale Lager','root@localhost','2016-06-08 11:51:37',NULL,NULL),(35,'Euro Strong Lager','root@localhost','2016-06-08 11:51:47',NULL,NULL),(36,'Bock','root@localhost','2016-06-08 11:52:08',NULL,NULL),(37,'Dortmunder','root@localhost','2016-06-08 11:52:18',NULL,NULL),(38,'Rauchbier','root@localhost','2016-06-08 11:52:28',NULL,NULL),(39,'Schwarzbier','root@localhost','2016-06-08 11:52:40',NULL,NULL),(40,'Vienna Lager','root@localhost','2016-06-08 11:52:47',NULL,NULL),(41,'Happoshu','root@localhost','2016-06-08 11:52:58',NULL,NULL),(42,'Japanese Rice Lager','root@localhost','2016-06-08 11:53:03',NULL,NULL);
/*!40000 ALTER TABLE `estilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `subcategoria`
--

LOCK TABLES `subcategoria` WRITE;
/*!40000 ALTER TABLE `subcategoria` DISABLE KEYS */;
INSERT INTO `subcategoria` VALUES (1,'Pale Lager',1,'root@localhost','2016-06-08 10:44:11',NULL,NULL),(2,'Vienna Lager',1,'root@localhost','2016-06-08 10:44:29',NULL,NULL),(3,'Dark Lager',1,'root@localhost','2016-06-08 10:44:41',NULL,NULL),(4,'Brown Ale',2,'root@localhost','2016-06-08 10:45:50',NULL,NULL),(5,'Pale Ale',2,'root@localhost','2016-06-08 10:45:55',NULL,NULL),(6,'India Pale Ale',2,'root@localhost','2016-06-08 10:46:06',NULL,NULL),(7,'Golden Ale',2,'root@localhost','2016-06-08 10:46:20',NULL,NULL),(8,'Scotch Ale',2,'root@localhost','2016-06-08 10:46:30',NULL,NULL),(9,'Mild Ale',2,'root@localhost','2016-06-08 10:46:46',NULL,NULL),(10,'Burton Ale',2,'root@localhost','2016-06-08 10:46:54',NULL,NULL),(11,'Old Ale',2,'root@localhost','2016-06-08 10:47:03',NULL,NULL),(12,'Belgian Ale',2,'root@localhost','2016-06-08 10:47:10',NULL,NULL);
/*!40000 ALTER TABLE `subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipofermentacion`
--

LOCK TABLES `tipofermentacion` WRITE;
/*!40000 ALTER TABLE `tipofermentacion` DISABLE KEYS */;
INSERT INTO `tipofermentacion` VALUES (1,'Fermentación Superior','root@localhost','2016-06-08 10:51:34',NULL,NULL),(2,'Fermentación Inferior','root@localhost','2016-06-08 10:51:41',NULL,NULL);
/*!40000 ALTER TABLE `tipofermentacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-08 12:04:36
