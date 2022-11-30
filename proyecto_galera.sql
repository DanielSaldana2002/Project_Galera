CREATE DATABASE  IF NOT EXISTS `galera` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `galera`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: galera
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `categoria_productos`
--

DROP TABLE IF EXISTS `categoria_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_productos` (
  `id_categoria` int NOT NULL,
  `nombre_categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_productos`
--

LOCK TABLES `categoria_productos` WRITE;
/*!40000 ALTER TABLE `categoria_productos` DISABLE KEYS */;
INSERT INTO `categoria_productos` VALUES (1,'Cocteles'),(2,'Ostra y Almejas'),(3,'Entradas'),(4,'Bebidas'),(5,'Bebidas alcoholicas'),(6,'Sarandeado');
/*!40000 ALTER TABLE `categoria_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `nombre_empleado` varchar(20) NOT NULL,
  `apellido_paterno` varchar(20) NOT NULL,
  `apellido_materno` varchar(20) NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Carlos Daniel','Saldaña','Covarrubias'),(2,'Moises','Berumen','Cisneros'),(3,'Rafael Alejandro','Flores','Alvarado');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_sesion`
--

DROP TABLE IF EXISTS `inicio_sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_sesion` (
  `id_sesion` int NOT NULL,
  `nombre_sesion` varchar(45) NOT NULL,
  `apellido_p_sesion` varchar(45) NOT NULL,
  `apellido_m_sesion` varchar(45) NOT NULL,
  `usuario_sesion` varchar(45) NOT NULL,
  `contrasena_sesion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_sesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_sesion`
--

LOCK TABLES `inicio_sesion` WRITE;
/*!40000 ALTER TABLE `inicio_sesion` DISABLE KEYS */;
INSERT INTO `inicio_sesion` VALUES (1,'Carlos Daniel','Saldaña','Covarrubias','DanielSaldana2002','20021120'),(2,'Moises','Berumen','Cisneros','Moises2022','20021120');
/*!40000 ALTER TABLE `inicio_sesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesas`
--

DROP TABLE IF EXISTS `mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesas` (
  `id_mesas` int NOT NULL,
  `ocupacion` int DEFAULT NULL,
  PRIMARY KEY (`id_mesas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesas`
--

LOCK TABLES `mesas` WRITE;
/*!40000 ALTER TABLE `mesas` DISABLE KEYS */;
INSERT INTO `mesas` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1);
/*!40000 ALTER TABLE `mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_productos` int NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `fk_id_categoria` int NOT NULL,
  `precio` int NOT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `fk_id_categoria_idx` (`fk_id_categoria`),
  CONSTRAINT `fk_id_categoria` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categoria_productos` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Camaron',1,169),(2,'Pulpo',1,229),(3,'Camaron y Pulpo',1,179),(4,'Campechano',1,179),(5,'Vuelve a la vida',1,179),(6,'Ostion de placer',2,89),(7,'Ostion de nayarit',2,109),(8,'Ostion de Rokefeller',2,159),(9,'Pata de mula',2,89),(10,'Almeja Reyna',2,79),(11,'Tostada tropical',3,70),(12,'Torre galeras',3,180),(13,'Aguachile',3,169),(14,'Coca cola',4,20),(15,'Pescado',6,185);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportes` (
  `fk_id_ticket_reporte` int DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `total_general` int DEFAULT NULL,
  KEY `fk_fecha_pago_final_idx` (`fecha_pago`),
  KEY `fk_id_ticket_reporte_idx` (`fk_id_ticket_reporte`),
  CONSTRAINT `fk_id_ticket_reporte` FOREIGN KEY (`fk_id_ticket_reporte`) REFERENCES `tickets` (`id_tickets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id_tickets` int NOT NULL,
  `fk_id_empleados` int DEFAULT NULL,
  `fk_id_mesas` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `fecha_pago_final` datetime DEFAULT NULL,
  `pagado` int DEFAULT NULL,
  PRIMARY KEY (`id_tickets`),
  KEY `fk_id_empleados_idx` (`fk_id_empleados`),
  KEY `fk_id_mesas_idx` (`fk_id_mesas`),
  KEY `fk_fecha_pago_final_idx` (`fecha_pago_final`),
  CONSTRAINT `fk_id_empleados` FOREIGN KEY (`fk_id_empleados`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `fk_id_mesas` FOREIGN KEY (`fk_id_mesas`) REFERENCES `mesas` (`id_mesas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,1,1,796,'2022-11-15 16:50:39',0),(2,1,1,508,'2022-11-15 21:06:28',0),(3,2,3,249,'2022-11-15 21:05:26',0),(4,3,2,1303,'2022-11-18 17:20:32',0),(5,1,1,785,'2022-11-20 09:35:44',0),(6,2,2,676,'2022-11-21 17:35:59',0),(7,2,3,338,'2022-11-21 19:11:22',0),(8,3,4,498,'2022-11-22 12:50:12',0),(9,1,1,1025,'2022-11-22 16:28:10',0),(10,2,2,507,'2022-11-22 16:28:36',0),(11,2,1,507,'2022-12-21 16:29:10',0),(12,3,14,498,'2022-11-24 16:35:43',0),(13,3,1,160,'2022-11-24 16:36:05',0),(14,1,6,814,'2022-11-25 10:47:18',0),(15,3,2,647,'2022-11-25 10:48:22',0),(16,3,5,178,'2022-11-25 10:49:35',0),(17,3,12,996,'2022-11-25 11:14:47',0),(18,2,5,1014,'2022-11-25 11:17:30',0),(19,3,1,845,'2022-11-25 11:21:03',0),(20,3,15,696,'2022-11-25 11:23:52',0),(21,3,4,507,'2022-11-25 18:47:12',0),(22,3,1,507,'2022-11-25 18:47:58',0),(23,3,1,1227,'2022-11-27 11:30:18',0),(24,3,1,1859,'2022-11-27 11:40:23',0),(25,1,1,2684,'2022-11-29 10:35:07',0),(26,2,5,1377,'2022-11-29 12:39:10',0),(27,1,3,1034,'2022-11-29 12:39:03',0),(28,3,4,913,'2022-11-29 12:39:07',0),(29,3,15,1194,'2022-11-29 15:29:49',0),(30,2,14,537,'2022-11-29 15:33:08',0),(31,2,3,826,'2022-11-29 15:47:50',0),(32,1,10,267,'2022-11-29 16:06:55',0);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_pedidos`
--

DROP TABLE IF EXISTS `tickets_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets_pedidos` (
  `fk_id_tickets_p` int DEFAULT NULL,
  `fk_id_producto_p` int DEFAULT NULL,
  `fk_id_mesas_p` int DEFAULT NULL,
  `pk_precio` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `total_pedido` int DEFAULT NULL,
  KEY `fk_id_tickets_idx` (`fk_id_tickets_p`),
  KEY `fk_id_producto_p_idx` (`fk_id_producto_p`),
  CONSTRAINT `fk_id_producto_p` FOREIGN KEY (`fk_id_producto_p`) REFERENCES `productos` (`id_productos`),
  CONSTRAINT `fk_id_tickets_p` FOREIGN KEY (`fk_id_tickets_p`) REFERENCES `tickets` (`id_tickets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_pedidos`
--

LOCK TABLES `tickets_pedidos` WRITE;
/*!40000 ALTER TABLE `tickets_pedidos` DISABLE KEYS */;
INSERT INTO `tickets_pedidos` VALUES (1,1,1,169,1,169),(1,2,1,229,1,229),(1,14,1,20,3,60),(1,1,1,169,1,169),(1,1,1,169,1,169),(2,1,1,169,1,169),(2,11,1,70,2,140),(2,14,1,20,1,20),(3,14,2,20,1,20),(3,2,3,229,1,229),(2,5,1,179,1,179),(4,1,2,169,2,338),(4,2,2,229,2,458),(4,1,2,169,3,507),(5,6,1,89,2,178),(5,6,1,89,1,89),(5,11,1,70,2,140),(5,14,1,20,2,40),(5,1,1,169,2,338),(6,1,2,169,4,676),(7,1,3,169,2,338),(8,4,4,179,2,358),(8,11,4,70,2,140),(9,2,1,229,3,687),(9,1,1,169,2,338),(10,1,2,169,3,507),(11,1,1,169,3,507),(12,1,14,169,2,338),(12,14,14,20,8,160),(13,14,1,20,8,160),(14,6,6,89,3,267),(14,1,6,169,1,169),(14,14,6,20,2,40),(14,1,6,169,2,338),(15,11,2,70,2,140),(15,1,2,169,3,507),(16,9,5,89,2,178),(17,2,12,229,4,916),(17,14,12,20,4,80),(18,1,5,169,4,676),(18,1,5,169,2,338),(19,1,1,169,5,845),(20,1,15,169,2,338),(20,4,15,179,2,358),(21,1,4,169,3,507),(22,1,1,169,3,507),(23,7,1,109,3,327),(23,12,1,180,5,900),(24,3,1,179,4,716),(24,8,1,159,4,636),(24,13,1,169,3,507),(25,10,1,79,4,316),(25,9,1,89,4,356),(25,13,1,169,2,338),(25,11,1,70,5,350),(25,14,1,20,5,100),(25,3,1,179,3,537),(25,2,1,229,3,687),(26,1,5,169,3,507),(26,11,5,70,3,210),(26,12,5,180,3,540),(26,14,5,20,6,120),(27,6,3,89,3,267),(27,2,3,229,3,687),(27,14,3,20,4,80),(28,6,4,89,2,178),(28,9,4,89,2,178),(28,8,4,159,3,477),(28,14,4,20,4,80),(29,1,15,169,3,507),(29,2,15,229,3,687),(30,3,14,179,3,537),(31,2,3,229,1,229),(31,3,3,179,2,358),(31,14,3,20,3,60),(32,6,10,89,3,267),(31,5,3,179,1,179);
/*!40000 ALTER TABLE `tickets_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'galera'
--

--
-- Dumping routines for database 'galera'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 18:01:29
