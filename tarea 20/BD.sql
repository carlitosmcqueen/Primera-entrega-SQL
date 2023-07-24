CREATE DATABASE  IF NOT EXISTS `primera_entrega` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `primera_entrega`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: primera_entrega
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `raza` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  `edad_meses` int DEFAULT NULL,
  `malestar` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'vigotes','gato','egipcio','ok','buenardo',2,'lele pancha'),(2,'copito','gato',NULL,'ok','buenardo',3,'dolor de panza'),(3,'bicho','gato','siames','enfermo','lindo gato',22,'dolor en la pata'),(4,'pichu','perro','caniche','ok','es muy activo',23,'revision normal'),(5,'lionel','loro',NULL,'basado','verde brilante',10,'no para de hablar'),(6,'tobi','perro','bulldog','dolor de panza','chiquito de color marron',23,'esta gordo'),(7,'july','gato',NULL,'vomitos','blanca con manchas negras',32,'indigestion'),(8,'macaron','lagarto',NULL,'sin apetito','verde-amarillento',5,'decaido'),(9,'lucifer','gato',NULL,'pata derecha lastimada','negro puro',23,'con dolor para caminar'),(10,'fiumba','gato','lampiño','ok','gato barato',44,'come toda la comida'),(11,'','gato','lampiño','ok','gato barato',44,'come toda la comida'),(12,'','gato','lampiño','ok','gato barato',44,'come toda la comida'),(16,'prueba','prueba','prueba','ok','prueba',2,'prueba'),(22,'prueba','prueba','prueba','ok','prueba',3,'prueba'),(24,'caca','asd','asda','asd','adsd',22,'sads');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_ingreso_animal` AFTER INSERT ON `animal` FOR EACH ROW INSERT INTO log_nuevos_animales(nombre,tipo,edad_meses)
VALUES (NEW.nombre,NEW.tipo,NEW.edad_meses) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `tipo_de_documento` varchar(30) NOT NULL,
  `N_documento` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'carlos','estrada','dni','229018381'),(2,'jorge','vila','dni','229018441'),(3,'maria','mamani','dni','229018312'),(4,'Eliana Kramer','Leblanc','DNI','64797408'),(5,'Graham Carney','Morrison','DNI','49410967'),(6,'Jane Sparks','Sawyer','DNI','76653954'),(7,'Chelsea Reyes','Ruiz','DNI','21978572'),(8,'Stephanie Dillard','Byers','DNI','20862220'),(9,'Mechelle Hammond','Bishop','DNI','65368725'),(10,'Christian Herring','Roberts','DNI','66193845'),(11,'Beatrice Stevens','Ortiz','DNI','16844883'),(12,'Larissa Riggs','Solis','DNI','91541684'),(13,'Autumn Holt','Richmond','DNI','75682886'),(14,'prueba','apellido prueba','DNI','88881111');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_ingreso_cliente` AFTER INSERT ON `cliente` FOR EACH ROW INSERT INTO log_nuevos_clientes(id_cliente,fecha,hora,usuario)
VALUES (NEW.id,CURRENT_DATE(),CURRENT_TIME(),USER()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_trabajador` int DEFAULT NULL,
  `id_provedor` int DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL DEFAULT 'ARGENTINA',
  `codigo_postal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `direcciones_ibfk_1` (`id_cliente`),
  KEY `direcciones_ibfk_2` (`id_trabajador`),
  KEY `direcciones_ibfk_3` (`id_provedor`),
  CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `direcciones_ibfk_2` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`),
  CONSTRAINT `direcciones_ibfk_3` FOREIGN KEY (`id_provedor`) REFERENCES `provedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,NULL,1,NULL,'rivadavia 222','CABA','CABA','Argentina',1406),(2,NULL,3,NULL,'calle falsa 123','CABA','CABA','argentina',3122),(3,NULL,NULL,4,'callao 3333','CABA','CABA','argentina',2312);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_trabajador` int DEFAULT NULL,
  `id_provedor` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `emails_ibfk_1` (`id_cliente`),
  KEY `emails_ibfk_2` (`id_trabajador`),
  KEY `emails_ibfk_3` (`id_provedor`),
  CONSTRAINT `emails_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `emails_ibfk_2` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`),
  CONSTRAINT `emails_ibfk_3` FOREIGN KEY (`id_provedor`) REFERENCES `provedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,1,NULL,NULL,'hola@gmail.com');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `especialidad` varchar(40) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'cardiologia','experto en el uso de aparatos cardiovasculares'),(2,'etologia','estudio de comportamineto animal'),(3,'ortopedia','especialidad médica que involucra el tratamiento del sistema musculoesquelético'),(4,'estetica canina',' mensajes relajantes, baños personalizados y arreglo en general'),(5,'cardioterapeuta','especialista en problemas de corazon'),(6,'oftamologia','especialista en el cuidado de los ojos'),(7,'dermatologia','especialista en el cuidado de la piel'),(8,'cirujano','cirujano general de animales'),(9,'medice general','atiende consultas en general sobre los animales'),(13,'borrar','para borrar');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades_trabajador`
--

DROP TABLE IF EXISTS `especialidades_trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades_trabajador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_trabajador` int NOT NULL,
  `id_especialidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  KEY `id_especialidad` (`id_especialidad`),
  CONSTRAINT `especialidades_trabajador_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`),
  CONSTRAINT `especialidades_trabajador_ibfk_2` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades_trabajador`
--

LOCK TABLES `especialidades_trabajador` WRITE;
/*!40000 ALTER TABLE `especialidades_trabajador` DISABLE KEYS */;
INSERT INTO `especialidades_trabajador` VALUES (1,1,1),(2,4,2),(3,5,7),(4,5,3),(5,5,3),(6,10,8),(7,2,3),(8,8,9),(9,1,2),(10,10,1),(11,4,2),(12,7,3),(13,2,2),(14,1,6),(15,1,3),(16,7,4);
/*!40000 ALTER TABLE `especialidades_trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tratamiento` int NOT NULL,
  `id_animal` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tratamiento` (`id_tratamiento`),
  KEY `id_animal` (`id_animal`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamiento` (`id`),
  CONSTRAINT `historial_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
INSERT INTO `historial` VALUES (1,5,6,'2023-06-03','04:17:08'),(2,6,7,'2023-06-04','04:18:08'),(3,7,9,'2023-06-12','19:57:11'),(4,8,3,'2023-07-12','19:57:30'),(5,10,1,'2023-07-12','20:19:10'),(7,11,1,'2023-07-17','23:32:50');
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_actualizacion_de_precios_mercaderia`
--

DROP TABLE IF EXISTS `log_actualizacion_de_precios_mercaderia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_actualizacion_de_precios_mercaderia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_mercaderia` int DEFAULT NULL,
  `precio_nuevo` decimal(7,2) NOT NULL,
  `precio_viejo` decimal(7,2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_actualizacion_de_precios_mercaderia`
--

LOCK TABLES `log_actualizacion_de_precios_mercaderia` WRITE;
/*!40000 ALTER TABLE `log_actualizacion_de_precios_mercaderia` DISABLE KEYS */;
INSERT INTO `log_actualizacion_de_precios_mercaderia` VALUES (1,5,400.00,338.32,'2023-07-12','22:43:21','root@localhost');
/*!40000 ALTER TABLE `log_actualizacion_de_precios_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_nuevos_animales`
--

DROP TABLE IF EXISTS `log_nuevos_animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_nuevos_animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) NOT NULL,
  `edad_meses` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_nuevos_animales`
--

LOCK TABLES `log_nuevos_animales` WRITE;
/*!40000 ALTER TABLE `log_nuevos_animales` DISABLE KEYS */;
INSERT INTO `log_nuevos_animales` VALUES (1,'prueba','prueba',2),(2,'prueba','prueba',3),(3,'sin mascota','vacio',0),(4,'caca','asd',22);
/*!40000 ALTER TABLE `log_nuevos_animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_nuevos_clientes`
--

DROP TABLE IF EXISTS `log_nuevos_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_nuevos_clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_nuevos_clientes`
--

LOCK TABLES `log_nuevos_clientes` WRITE;
/*!40000 ALTER TABLE `log_nuevos_clientes` DISABLE KEYS */;
INSERT INTO `log_nuevos_clientes` VALUES (1,14,'2023-07-13','18:12:50','root@localhost'),(2,2,'2023-07-15','00:09:47','root@localhost');
/*!40000 ALTER TABLE `log_nuevos_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_nuevos_mercaderia`
--

DROP TABLE IF EXISTS `log_nuevos_mercaderia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_nuevos_mercaderia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantidad_ingresada` int DEFAULT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `provedor` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `id_mercaderia` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_nuevos_mercaderia`
--

LOCK TABLES `log_nuevos_mercaderia` WRITE;
/*!40000 ALTER TABLE `log_nuevos_mercaderia` DISABLE KEYS */;
INSERT INTO `log_nuevos_mercaderia` VALUES (1,2,220.50,'8','2023-07-19','18:27:08','root@localhost',21);
/*!40000 ALTER TABLE `log_nuevos_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_ticket_nuevo`
--

DROP TABLE IF EXISTS `log_ticket_nuevo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_ticket_nuevo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subtotal` decimal(9,2) DEFAULT NULL,
  `iva` decimal(9,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `id_ticket` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_ticket_nuevo`
--

LOCK TABLES `log_ticket_nuevo` WRITE;
/*!40000 ALTER TABLE `log_ticket_nuevo` DISABLE KEYS */;
INSERT INTO `log_ticket_nuevo` VALUES (1,100.00,21.00,'2023-07-17','23:13:13','root@localhost',121.00,NULL),(2,100.00,21.00,'2023-07-17','23:18:44','root@localhost',121.00,123308);
/*!40000 ALTER TABLE `log_ticket_nuevo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_venta_mercaderia`
--

DROP TABLE IF EXISTS `log_venta_mercaderia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_venta_mercaderia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_mercaderia` int NOT NULL,
  `precio_unidad` decimal(9,2) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_total` decimal(9,2) NOT NULL,
  `iva` decimal(9,2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_venta_mercaderia`
--

LOCK TABLES `log_venta_mercaderia` WRITE;
/*!40000 ALTER TABLE `log_venta_mercaderia` DISABLE KEYS */;
INSERT INTO `log_venta_mercaderia` VALUES (1,18,100.00,1,100.00,0.00,'2023-07-13','02:20:51','root@localhost'),(2,5,22.00,1,22.99,22.22,'2023-07-14','23:58:37','root@localhost'),(3,5,22.00,1,22.99,22.22,'2023-07-14','23:59:08','root@localhost'),(4,18,12.00,1,12.22,21.22,'2023-07-15','00:01:53','root@localhost'),(5,5,400.00,1,484.00,84.00,'2023-07-16','17:21:52','root@localhost'),(6,5,400.00,1,484.00,84.00,'2023-07-16','17:22:42','root@localhost'),(7,5,400.00,1,484.00,84.00,'2023-07-16','19:04:16','root@localhost'),(8,5,400.00,1,484.00,84.00,'2023-07-16','19:04:51','root@localhost'),(9,5,400.00,1,484.00,84.00,'2023-07-16','19:11:47','root@localhost'),(10,5,400.00,1,484.00,84.00,'2023-07-16','19:12:34','root@localhost'),(11,5,400.00,1,484.00,84.00,'2023-07-16','19:14:27','root@localhost'),(12,5,400.00,1,484.00,84.00,'2023-07-16','19:20:29','root@localhost'),(13,5,400.00,1,484.00,84.00,'2023-07-16','19:39:41','root@localhost'),(14,5,400.00,1,484.00,84.00,'2023-07-16','19:48:21','root@localhost'),(15,5,400.00,1,484.00,84.00,'2023-07-16','19:49:04','root@localhost'),(16,5,400.00,1,484.00,84.00,'2023-07-16','19:50:26','root@localhost'),(17,5,400.00,1,484.00,84.00,'2023-07-16','19:53:23','root@localhost'),(18,5,400.00,1,484.00,84.00,'2023-07-16','19:57:48','root@localhost'),(19,5,400.00,1,484.00,84.00,'2023-07-16','21:25:28','root@localhost'),(20,11,139.45,1,168.64,29.19,'2023-07-16','22:42:06','root@localhost'),(21,5,400.00,2,968.00,168.00,'2023-07-17','00:58:50','root@localhost'),(22,11,139.45,1,168.64,29.19,'2023-07-17','00:58:50','root@localhost'),(23,5,400.00,1,484.00,84.00,'2023-07-17','03:14:40','root@localhost'),(24,11,139.45,1,168.64,29.19,'2023-07-17','03:14:40','root@localhost'),(25,5,400.00,1,484.00,84.00,'2023-07-17','03:17:02','root@localhost'),(26,11,139.45,1,168.64,29.19,'2023-07-17','03:17:02','root@localhost'),(27,5,400.00,1,484.00,84.00,'2023-07-17','03:19:22','root@localhost'),(28,11,139.45,1,168.64,29.19,'2023-07-17','03:19:22','root@localhost'),(29,5,400.00,1,484.00,84.00,'2023-07-17','16:56:50','root@localhost'),(30,11,139.45,1,168.64,29.19,'2023-07-17','16:56:50','root@localhost'),(31,5,400.00,1,484.00,84.00,'2023-07-17','17:04:34','root@localhost'),(32,11,139.45,1,168.64,29.19,'2023-07-17','17:04:34','root@localhost'),(33,5,400.00,1,484.00,84.00,'2023-07-17','17:06:53','root@localhost'),(34,11,139.45,1,168.64,29.19,'2023-07-17','17:06:53','root@localhost'),(35,5,400.00,1,484.00,84.00,'2023-07-17','17:08:19','root@localhost'),(36,11,139.45,1,168.64,29.19,'2023-07-17','17:08:19','root@localhost'),(37,5,400.00,1,484.00,84.00,'2023-07-17','17:09:28','root@localhost'),(38,11,139.45,1,168.64,29.19,'2023-07-17','17:09:28','root@localhost'),(39,5,400.00,1,484.00,84.00,'2023-07-17','17:11:13','root@localhost'),(40,11,139.45,1,168.64,29.19,'2023-07-17','17:11:13','root@localhost'),(41,5,400.00,1,484.00,84.00,'2023-07-17','17:13:13','root@localhost'),(42,11,139.45,1,168.64,29.19,'2023-07-17','17:13:13','root@localhost'),(43,5,400.00,1,484.00,84.00,'2023-07-17','17:44:43','root@localhost'),(44,11,139.45,1,168.64,29.19,'2023-07-17','17:44:43','root@localhost'),(45,5,400.00,1,484.00,84.00,'2023-07-17','17:46:22','root@localhost'),(46,11,139.45,1,168.64,29.19,'2023-07-17','17:46:22','root@localhost'),(47,5,400.00,1,484.00,84.00,'2023-07-17','17:47:43','root@localhost'),(48,11,139.45,1,168.64,29.19,'2023-07-17','17:47:43','root@localhost'),(49,5,400.00,1,484.00,84.00,'2023-07-17','18:09:22','root@localhost'),(50,11,139.45,1,168.64,29.19,'2023-07-17','18:09:22','root@localhost'),(51,5,400.00,1,484.00,84.00,'2023-07-17','18:11:37','root@localhost'),(52,5,400.00,1,484.00,84.00,'2023-07-17','18:24:15','root@localhost'),(53,11,139.45,1,168.64,29.19,'2023-07-17','18:24:15','root@localhost'),(54,5,400.00,1,484.00,84.00,'2023-07-17','18:25:18','root@localhost'),(55,5,400.00,1,484.00,84.00,'2023-07-17','18:37:26','root@localhost'),(56,5,400.00,1,484.00,84.00,'2023-07-17','18:38:31','root@localhost'),(57,5,400.00,1,484.00,84.00,'2023-07-17','18:40:16','root@localhost'),(58,5,400.00,1,484.00,84.00,'2023-07-17','18:41:41','root@localhost'),(59,5,400.00,1,484.00,84.00,'2023-07-17','18:44:36','root@localhost'),(60,5,400.00,1,484.00,84.00,'2023-07-17','18:45:23','root@localhost'),(61,11,139.45,1,168.64,29.19,'2023-07-17','18:45:23','root@localhost'),(62,5,400.00,1,484.00,84.00,'2023-07-17','18:46:38','root@localhost'),(63,5,400.00,1,484.00,84.00,'2023-07-17','18:48:35','root@localhost'),(64,5,400.00,1,484.00,84.00,'2023-07-17','18:57:03','root@localhost'),(65,5,400.00,1,484.00,84.00,'2023-07-17','19:01:03','root@localhost'),(66,5,400.00,1,484.00,84.00,'2023-07-17','19:02:44','root@localhost'),(67,5,400.00,1,484.00,84.00,'2023-07-17','19:05:02','root@localhost'),(68,5,400.00,1,484.00,84.00,'2023-07-17','19:37:27','root@localhost'),(69,5,400.00,1,484.00,84.00,'2023-07-17','19:41:37','root@localhost'),(70,5,400.00,1,484.00,84.00,'2023-07-17','19:42:24','root@localhost'),(71,5,400.00,1,484.00,84.00,'2023-07-17','20:02:10','root@localhost'),(72,5,400.00,1,484.00,84.00,'2023-07-17','20:03:00','root@localhost'),(73,11,139.45,1,168.64,29.19,'2023-07-17','20:07:04','root@localhost'),(74,11,139.45,1,168.64,29.19,'2023-07-17','20:08:02','root@localhost'),(75,11,139.45,1,168.64,29.19,'2023-07-17','20:10:44','root@localhost'),(76,5,400.00,1,484.00,84.00,'2023-07-17','20:38:17','root@localhost'),(77,5,400.00,1,484.00,84.00,'2023-07-17','20:40:26','root@localhost'),(78,5,400.00,1,484.00,84.00,'2023-07-17','20:42:16','root@localhost');
/*!40000 ALTER TABLE `log_venta_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_venta_tratamiento`
--

DROP TABLE IF EXISTS `log_venta_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_venta_tratamiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tratamiento` int NOT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_venta_tratamiento`
--

LOCK TABLES `log_venta_tratamiento` WRITE;
/*!40000 ALTER TABLE `log_venta_tratamiento` DISABLE KEYS */;
INSERT INTO `log_venta_tratamiento` VALUES (1,10,100.00,'2023-07-13','01:59:48','root@localhost'),(2,5,500.00,'2023-07-16','19:04:51','root@localhost'),(3,5,500.00,'2023-07-16','19:12:34','root@localhost'),(4,5,500.00,'2023-07-16','19:14:27','root@localhost'),(5,5,500.00,'2023-07-16','19:20:29','root@localhost'),(6,5,500.00,'2023-07-16','19:39:41','root@localhost'),(7,5,500.00,'2023-07-16','19:48:21','root@localhost'),(8,5,500.00,'2023-07-16','19:49:04','root@localhost'),(9,5,500.00,'2023-07-16','19:50:26','root@localhost'),(10,5,500.00,'2023-07-16','19:53:23','root@localhost'),(11,5,500.00,'2023-07-16','19:57:48','root@localhost'),(12,5,500.00,'2023-07-16','21:25:28','root@localhost'),(13,5,500.00,'2023-07-17','16:56:50','root@localhost'),(14,6,700.00,'2023-07-17','16:56:50','root@localhost'),(15,5,500.00,'2023-07-17','17:04:34','root@localhost'),(16,6,700.00,'2023-07-17','17:04:34','root@localhost'),(17,5,500.00,'2023-07-17','17:06:53','root@localhost'),(18,6,700.00,'2023-07-17','17:06:53','root@localhost'),(19,5,500.00,'2023-07-17','17:08:19','root@localhost'),(20,6,700.00,'2023-07-17','17:08:19','root@localhost'),(21,5,500.00,'2023-07-17','17:09:28','root@localhost'),(22,6,700.00,'2023-07-17','17:09:28','root@localhost'),(23,5,500.00,'2023-07-17','17:11:13','root@localhost'),(24,6,700.00,'2023-07-17','17:11:13','root@localhost'),(25,5,500.00,'2023-07-17','17:13:13','root@localhost'),(26,6,700.00,'2023-07-17','17:13:13','root@localhost'),(27,5,500.00,'2023-07-17','17:44:43','root@localhost'),(28,6,700.00,'2023-07-17','17:44:43','root@localhost'),(29,6,700.00,'2023-07-17','17:46:22','root@localhost'),(30,5,500.00,'2023-07-17','17:46:22','root@localhost'),(31,5,500.00,'2023-07-17','17:47:43','root@localhost'),(32,6,700.00,'2023-07-17','17:47:43','root@localhost'),(33,5,500.00,'2023-07-17','18:09:22','root@localhost'),(34,6,700.00,'2023-07-17','18:09:22','root@localhost'),(35,5,500.00,'2023-07-17','18:24:15','root@localhost'),(36,6,700.00,'2023-07-17','18:24:15','root@localhost'),(37,5,500.00,'2023-07-17','18:35:03','root@localhost'),(38,5,500.00,'2023-07-17','18:38:52','root@localhost'),(39,5,500.00,'2023-07-17','18:47:56','root@localhost'),(40,5,500.00,'2023-07-17','19:05:02','root@localhost'),(41,5,500.00,'2023-07-17','19:32:23','root@localhost'),(42,5,500.00,'2023-07-17','20:10:44','root@localhost'),(43,5,500.00,'2023-07-17','20:11:23','root@localhost'),(44,5,500.00,'2023-07-17','20:42:16','root@localhost'),(45,6,700.00,'2023-07-17','20:42:16','root@localhost'),(46,6,700.00,'2023-07-17','22:14:22','root@localhost'),(47,5,500.00,'2023-07-17','22:16:18','root@localhost');
/*!40000 ALTER TABLE `log_venta_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascotas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_animal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_animal` (`id_animal`),
  CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `mascotas_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,2,1),(2,3,3),(3,2,6),(4,6,9),(5,1,7),(6,5,7);
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercaderia`
--

DROP TABLE IF EXISTS `mercaderia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercaderia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `stock` int DEFAULT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `provedor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provedor` (`provedor`),
  CONSTRAINT `mercaderia_ibfk_1` FOREIGN KEY (`provedor`) REFERENCES `provedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercaderia`
--

LOCK TABLES `mercaderia` WRITE;
/*!40000 ALTER TABLE `mercaderia` DISABLE KEYS */;
INSERT INTO `mercaderia` VALUES (5,'Donec',1,'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis',400.00,1),(11,'molestie',9,'velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod',139.45,1),(12,'diam',5,'aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,',18.44,1),(14,'orci',0,'metus urna convallis erat, eget tincidunt dui augue eu tellus.',952.21,4),(16,'purus.',8,'Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas',746.41,4),(17,'tortor,',7,'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,',541.06,4),(18,'sem',3,'fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh',682.15,1),(19,'interdum.',1,'dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc',178.52,4),(20,'magnis',6,'molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,',262.91,4),(21,'prueba',2,'producto prueba',220.50,8);
/*!40000 ALTER TABLE `mercaderia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insercion_mercaderia` AFTER INSERT ON `mercaderia` FOR EACH ROW INSERT INTO log_nuevos_mercaderia(id,id_mercaderia,cantidad_ingresada,precio,provedor,fecha,hora,usuario)
VALUES (NULL,NEW.id, NEW.stock,NEW.precio, NEW.provedor, CURRENT_DATE(),CURRENT_TIME(),USER()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_precios_mercaderia` BEFORE UPDATE ON `mercaderia` FOR EACH ROW INSERT INTO log_actualizacion_de_precios_mercaderia(id_mercaderia,precio_nuevo,precio_viejo,fecha,hora,usuario)
VALUES (NEW.id, NEW.precio, OLD.precio, CURRENT_DATE(),CURRENT_TIME(),USER()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `numero_contacto`
--

DROP TABLE IF EXISTS `numero_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `numero_contacto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_trabajador` int DEFAULT NULL,
  `id_provedor` int DEFAULT NULL,
  `numero_area` int NOT NULL DEFAULT '54',
  `numero` int NOT NULL,
  `CEL_TEL` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `numero_contacto_ibfk_1` (`id_cliente`),
  KEY `numero_contacto_ibfk_2` (`id_trabajador`),
  KEY `numero_contacto_ibfk_3` (`id_provedor`),
  CONSTRAINT `numero_contacto_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `numero_contacto_ibfk_2` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`),
  CONSTRAINT `numero_contacto_ibfk_3` FOREIGN KEY (`id_provedor`) REFERENCES `provedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numero_contacto`
--

LOCK TABLES `numero_contacto` WRITE;
/*!40000 ALTER TABLE `numero_contacto` DISABLE KEYS */;
INSERT INTO `numero_contacto` VALUES (1,NULL,1,NULL,54,10052893,'cel');
/*!40000 ALTER TABLE `numero_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_tratamiento`
--

DROP TABLE IF EXISTS `personal_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_tratamiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tratamiento` int DEFAULT NULL,
  `id_trabajador` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personal_tratamiento_ibfk_2` (`id_tratamiento`),
  KEY `personal_tratamiento_ibfk_3` (`id_trabajador`),
  CONSTRAINT `personal_tratamiento_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tratamiento` (`id_personal`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `personal_tratamiento_ibfk_2` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamiento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `personal_tratamiento_ibfk_3` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_tratamiento`
--

LOCK TABLES `personal_tratamiento` WRITE;
/*!40000 ALTER TABLE `personal_tratamiento` DISABLE KEYS */;
INSERT INTO `personal_tratamiento` VALUES (1,5,2),(2,6,4),(3,7,5),(4,8,11),(5,9,8);
/*!40000 ALTER TABLE `personal_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provedor`
--

DROP TABLE IF EXISTS `provedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `fecha_relacion` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedor`
--

LOCK TABLES `provedor` WRITE;
/*!40000 ALTER TABLE `provedor` DISABLE KEYS */;
INSERT INTO `provedor` VALUES (1,'gato barato','comida para gato, gato barato dura un buen rato','2023-01-22'),(4,'Emery Hobbs','risus. Nulla eget metus eu erat semper rutrum. Fusce dolor','2022-03-08'),(6,'Harding Roth','tempor erat neque non quam. Pellentesque habitant morbi tristique senectus','2022-02-19'),(8,'Oleg Cohen','taciti sociosqu ad litora torquent per conubia nostra, per inceptos','2024-12-24'),(9,'Clementine Mills','rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,','2023-12-12');
/*!40000 ALTER TABLE `provedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente` int NOT NULL,
  `subtotal` decimal(9,2) DEFAULT NULL,
  `iva` decimal(9,2) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `id_trabajador` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_id_trabajador_ticket` (`id_trabajador`),
  KEY `ticket_ibfk_1` (`cliente`),
  CONSTRAINT `FK_id_trabajador_ticket` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123309 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (14,1,400.23,100.00,500.23,'2023-07-03 07:00:37',1),(15,1,900.00,300.45,1200.45,'2023-07-03 07:01:21',1),(16,2,3200.00,550.30,3750.30,'2023-07-03 07:02:19',1),(17,4,2200.00,350.30,2550.30,'2023-07-03 07:15:50',1),(18,6,500.00,120.75,620.75,'2023-07-03 07:17:08',1),(123216,2,100.00,21.00,121.00,'2023-07-03 07:17:08',1),(123217,2,100.00,21.00,121.00,'2023-07-03 07:17:08',1),(123218,2,100.00,21.00,121.00,'2023-07-03 07:17:08',1),(123219,2,100.00,21.00,121.00,'2023-07-16 17:14:33',1),(123223,5,400.00,84.00,484.00,'2023-07-16 20:22:42',1),(123257,5,900.00,189.00,1089.00,'2023-07-17 01:40:44',1),(123258,1,900.00,189.00,1089.00,'2023-07-17 01:42:06',5),(123262,1,652.64,137.13,789.77,'2023-07-17 06:19:22',1),(123272,1,1852.64,389.13,2241.77,'2023-07-17 20:47:43',1),(123273,1,1739.45,365.19,2104.64,'2023-07-17 21:09:22',1),(123276,1,1739.45,365.19,2104.64,'2023-07-17 21:24:15',1),(123283,1,400.00,84.00,484.00,'2023-07-17 21:41:41',1),(123284,1,400.00,84.00,484.00,'2023-07-17 21:44:36',1),(123285,1,539.45,113.19,652.64,'2023-07-17 21:45:23',1),(123292,1,900.00,189.00,1089.00,'2023-07-17 22:05:02',1),(123300,1,139.45,29.19,168.64,'2023-07-17 23:08:02',1),(123301,1,639.45,134.19,773.64,'2023-07-17 23:10:44',1),(123304,1,400.00,84.00,484.00,'2023-07-17 23:40:26',1),(123305,1,1600.00,336.00,1936.00,'2023-07-17 23:42:16',1),(123307,1,500.00,105.00,605.00,'2023-07-18 01:16:18',1),(123308,1,100.00,21.00,121.00,'2023-07-18 02:22:11',1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_nuevo_ticket` AFTER INSERT ON `ticket` FOR EACH ROW INSERT INTO log_ticket_nuevo (id,subtotal,iva,total,fecha,hora,usuario,id_ticket)
VALUES (NULL,NEW.subtotal, NEW.iva,NEW.total,CURRENT_DATE(),CURRENT_TIME(),USER(),NEW.id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ticket_mercaderia`
--

DROP TABLE IF EXISTS `ticket_mercaderia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_mercaderia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_ticket` int NOT NULL,
  `id_mercaderia` int NOT NULL,
  `precio_unidad` decimal(9,2) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_total` decimal(9,2) NOT NULL,
  `iva` decimal(9,2) DEFAULT NULL,
  `id_trabajador` int NOT NULL,
  `subtotal` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mercaderia` (`id_mercaderia`),
  KEY `ticket_mercaderia_ibfk_3_idx` (`id_trabajador`),
  KEY `ticket_mercaderia_ibfk_2` (`id_ticket`),
  CONSTRAINT `FK_id_trabajador` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`),
  CONSTRAINT `ticket_mercaderia_ibfk_1` FOREIGN KEY (`id_mercaderia`) REFERENCES `mercaderia` (`id`),
  CONSTRAINT `ticket_mercaderia_ibfk_2` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_mercaderia`
--

LOCK TABLES `ticket_mercaderia` WRITE;
/*!40000 ALTER TABLE `ticket_mercaderia` DISABLE KEYS */;
INSERT INTO `ticket_mercaderia` VALUES (1,14,19,178.52,3,535.56,8.00,1,0.00),(2,15,20,262.91,5,1315.55,12.33,1,0.00),(3,16,14,952.21,4,3808.84,32.95,1,0.00),(4,14,18,100.00,1,100.00,0.00,1,0.00),(11,123223,5,400.00,1,484.00,84.00,1,400.00),(25,123258,11,139.45,1,168.64,29.19,5,139.45),(35,123262,5,400.00,1,484.00,84.00,1,400.00),(36,123262,11,139.45,1,168.64,29.19,1,139.45),(65,123272,5,400.00,1,484.00,84.00,1,400.00),(66,123272,11,139.45,1,168.64,29.19,1,139.45),(68,123273,5,400.00,1,484.00,84.00,1,400.00),(69,123273,11,139.45,1,168.64,29.19,1,139.45),(72,123276,5,400.00,1,484.00,84.00,1,400.00),(73,123276,11,139.45,1,168.64,29.19,1,139.45),(79,123283,5,400.00,1,484.00,84.00,1,400.00),(80,123284,5,400.00,1,484.00,84.00,1,400.00),(81,123285,5,400.00,1,484.00,84.00,1,400.00),(82,123285,11,139.45,1,168.64,29.19,1,139.45),(89,123292,5,400.00,1,484.00,84.00,1,400.00),(96,123300,11,139.45,1,168.64,29.19,1,139.45),(97,123301,11,139.45,1,168.64,29.19,1,139.45),(99,123304,5,400.00,1,484.00,84.00,1,400.00),(100,123305,5,400.00,1,484.00,84.00,1,400.00);
/*!40000 ALTER TABLE `ticket_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_ticket_mercaderia` AFTER INSERT ON `ticket_mercaderia` FOR EACH ROW INSERT INTO log_venta_mercaderia(id_mercaderia,precio_unidad,cantidad,precio_total,iva,fecha,hora,usuario)
VALUES (NEW.id_mercaderia,NEW.precio_unidad,NEW.cantidad,NEW.precio_total,NEW.iva, CURRENT_DATE(),CURRENT_TIME(),USER()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ticket_tratamiento`
--

DROP TABLE IF EXISTS `ticket_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_tratamiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_ticket` int NOT NULL,
  `id_tratamiento` int NOT NULL,
  `precio_unidad` decimal(9,2) NOT NULL,
  `id_trabajador` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tratamiento` (`id_tratamiento`),
  KEY `FK_id_trabajador_tratamiento` (`id_trabajador`),
  KEY `ticket_tratamiento_ibfk_2` (`id_ticket`),
  CONSTRAINT `FK_id_trabajador_tratamiento` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`),
  CONSTRAINT `ticket_tratamiento_ibfk_1` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamiento` (`id`),
  CONSTRAINT `ticket_tratamiento_ibfk_2` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_tratamiento`
--

LOCK TABLES `ticket_tratamiento` WRITE;
/*!40000 ALTER TABLE `ticket_tratamiento` DISABLE KEYS */;
INSERT INTO `ticket_tratamiento` VALUES (1,17,7,2550.00,1),(2,18,6,700.00,1),(3,18,10,100.00,1),(42,123272,5,500.00,1),(43,123272,6,700.00,1),(45,123273,5,500.00,1),(46,123273,6,700.00,1),(48,123276,5,500.00,1),(49,123276,6,700.00,1),(54,123292,5,500.00,1),(56,123301,5,500.00,1),(58,123305,5,500.00,1),(59,123305,6,700.00,1),(62,123307,5,500.00,1);
/*!40000 ALTER TABLE `ticket_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_ticket_tratamiento` AFTER INSERT ON `ticket_tratamiento` FOR EACH ROW INSERT INTO log_venta_tratamiento(id_tratamiento,precio,fecha,hora,usuario)
VALUES (NEW.id_tratamiento,NEW.precio_unidad,CURRENT_DATE(),CURRENT_TIME(),USER()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ticket_venta_temporal`
--

DROP TABLE IF EXISTS `ticket_venta_temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_venta_temporal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_trabajador` int DEFAULT NULL,
  `id_mercaderia` int DEFAULT NULL,
  `cantidad` int DEFAULT '1',
  `id_tratamiento` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mercaderia_ventas` (`id_mercaderia`),
  KEY `fk_trabajador_ventas` (`id_trabajador`),
  KEY `fk_tratamiento_ventas` (`id_tratamiento`),
  CONSTRAINT `fk_mercaderia_ventas` FOREIGN KEY (`id_mercaderia`) REFERENCES `mercaderia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_trabajador_ventas` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tratamiento_ventas` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamiento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_venta_temporal`
--

LOCK TABLES `ticket_venta_temporal` WRITE;
/*!40000 ALTER TABLE `ticket_venta_temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_venta_temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadores`
--

DROP TABLE IF EXISTS `trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `horarios` varchar(30) NOT NULL,
  `sueldo` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES (1,'ari','peres','lunes y jueves',35000.00),(2,'Kellie Pruitt','Hooper','martes y miercoles',33000.00),(3,'Uma Glass','Pearson','martes y miercoles',36000.00),(4,'Dexter Weaver','Higgins','viernes y sabados',40000.00),(5,'William Rivera','Barr','martes y miercoles',30000.00),(6,'Blake Mckinney','Phelps','martes y miercoles',32000.00),(7,'Evangeline Dean','Gibbs','martes y miercoles',34000.00),(8,'Katelyn Pitts','Hull','martes y miercoles',34000.00),(9,'Fatima Daniel','Chen','viernes y sabados',31000.00),(10,'Kelly Glass','Mays','martes y miercoles',29000.00),(11,'Cooper Pace','Santana','viernes y sabados',35500.00);
/*!40000 ALTER TABLE `trabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadores_pago`
--

DROP TABLE IF EXISTS `trabajadores_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajadores_pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_trabajador` int NOT NULL,
  `sueldo` decimal(9,2) NOT NULL,
  `hora_extra` int NOT NULL,
  `pago_total` decimal(9,2) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `trabajadores_pago_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores_pago`
--

LOCK TABLES `trabajadores_pago` WRITE;
/*!40000 ALTER TABLE `trabajadores_pago` DISABLE KEYS */;
INSERT INTO `trabajadores_pago` VALUES (1,1,35000.00,1,291.66,'2023-07-18'),(2,1,35000.00,1,35291.66,'2023-07-18');
/*!40000 ALTER TABLE `trabajadores_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(30) NOT NULL,
  `descripcion` varchar(3000) NOT NULL,
  `costo` decimal(9,2) NOT NULL,
  `id_personal` int NOT NULL,
  `id_animal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_personal` (`id_personal`),
  KEY `tratamiento_ibfk_1` (`id_animal`),
  CONSTRAINT `tratamiento_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES (5,'tratamiento a base de pastilas','pastllas anti acidez',500.00,1,6),(6,'tramiento a base de pastillas','pastillaz de inflavet para el dolor',700.00,2,7),(7,'enyesamiento','se pondra un lleso en la para lastimada',1000.00,3,9),(8,'seguimiento','aun no se sabe bien que pasos seguir, seguimiento del animal',500.00,4,3),(9,'control de conducta','conducta anormal en el animal, seguimiento',2500.00,5,5),(10,'prueba','descripcion de prueba',1000.00,4,1),(11,'prueba','tambien de prueba',100.00,1,1);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insercion_historial_tratamiento` AFTER INSERT ON `tratamiento` FOR EACH ROW INSERT INTO historial(id_tratamiento,id_animal,fecha,hora)
VALUES (NEW.id, NEW.id_animal, CURRENT_DATE(), CURRENT_TIME()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_ticket` int NOT NULL,
  `total` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_ticket` (`id_ticket`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,14,500.23),(2,1,15,1200.45),(3,2,16,3750.30),(4,4,17,2550.30),(5,6,18,620.75);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_animales_cliente`
--

DROP TABLE IF EXISTS `view_animales_cliente`;
/*!50001 DROP VIEW IF EXISTS `view_animales_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_animales_cliente` AS SELECT 
 1 AS `nombre`,
 1 AS `cantidad_mascotas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_tickets_mercaderia`
--

DROP TABLE IF EXISTS `view_tickets_mercaderia`;
/*!50001 DROP VIEW IF EXISTS `view_tickets_mercaderia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_tickets_mercaderia` AS SELECT 
 1 AS `id_mercaderia`,
 1 AS `cliente`,
 1 AS `total`,
 1 AS `cantidad_comprada`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_tickets_tratamiento`
--

DROP TABLE IF EXISTS `view_tickets_tratamiento`;
/*!50001 DROP VIEW IF EXISTS `view_tickets_tratamiento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_tickets_tratamiento` AS SELECT 
 1 AS `id_tratamiento`,
 1 AS `id_cliente`,
 1 AS `veces_usado_el_tratamiento`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_total_cliente`
--

DROP TABLE IF EXISTS `view_total_cliente`;
/*!50001 DROP VIEW IF EXISTS `view_total_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_total_cliente` AS SELECT 
 1 AS `nombre`,
 1 AS `precio_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_tratamiento_mascota`
--

DROP TABLE IF EXISTS `view_tratamiento_mascota`;
/*!50001 DROP VIEW IF EXISTS `view_tratamiento_mascota`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_tratamiento_mascota` AS SELECT 
 1 AS `nombre`,
 1 AS `tipo`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_animal_edades`
--

DROP TABLE IF EXISTS `vw_animal_edades`;
/*!50001 DROP VIEW IF EXISTS `vw_animal_edades`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_animal_edades` AS SELECT 
 1 AS `nombre`,
 1 AS `tipo`,
 1 AS `años`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'primera_entrega'
--

--
-- Dumping routines for database 'primera_entrega'
--
/*!50003 DROP FUNCTION IF EXISTS `edad_anos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `edad_anos`(meses INT) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
DECLARE anos INT;
DECLARE anos_totales DECIMAL(9,1);
SET anos= 12;
SET anos_totales = 0;
SELECT meses / anos INTO anos_totales;
RETURN anos_totales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `horas_extras_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `horas_extras_pago`(id_trabajador INT,horas_extras INT) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
DECLARE pago_extra DECIMAL(9,2);
DECLARE sueldo_x_hora DECIMAL(9,2);
SET sueldo_x_hora = ((SELECT sueldo FROM trabajadores WHERE id = id_trabajador)/30)/8;
SET pago_extra = ( (sueldo_x_hora * horas_extras)*2);
RETURN pago_extra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `iva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `iva`(monto DECIMAL) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
DECLARE total,iva DECIMAL(9,2);
SET total = 0.00;
SET iva= 0.21;
SELECT monto * iva INTO total;
RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `precio_total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `precio_total`(subtotal DECIMAL(9,2)) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
DECLARE iva DECIMAL(9,2);
DECLARE total DECIMAL (9,2);
SET total = subtotal + iva(subtotal);
RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `total_venta_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_venta_cliente`(id_cliente_total INT) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
DECLARE resultado DECIMAL(9,2);
SET resultado = (SELECT SUM(total) FROM ventas WHERE id_cliente = id_cliente_total);
RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `acomodar_animales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `acomodar_animales`(IN columna CHAR(20), IN forma CHAR(20))
BEGIN
IF columna <> " " THEN
	IF forma = "ASC" OR forma = "DESC" THEN
		SET @ordenar = CONCAT("ORDER BY"," ", columna," ", forma);
	ELSE
		SET @ordenar = " ";
	END IF;
ELSE 
SET @ordenar = " "; 
END IF;

SET @consulta = CONCAT("SELECT * FROM animal", " ", @ordenar);
PREPARE listo FROM @consulta;
EXECUTE listo;
DEALLOCATE PREPARE listo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_animal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_animal`(IN nombre CHAR(20), IN tipo CHAR(20), IN raza CHAR(20),IN estado CHAR(20), IN descripcion CHAR(100), IN edad_meses INT, IN malestar CHAR(200))
BEGIN

IF nombre = ''  THEN
SET nombre = NULL;
END IF;
IF raza = ''  THEN
SET raza = NULL;
END IF;
IF malestar = '' THEN
SET malestar = NULL;
END IF;

INSERT INTO animal(nombre,tipo,raza,estado,descripcion,edad_meses,malestar)
VALUES(nombre , tipo , raza , estado , descripcion , edad_meses , malestar);
SELECT * FROM animal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `quitar_animal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `quitar_animal`(IN id_animal CHAR(20))
BEGIN
DELETE FROM animal WHERE id = id_animal; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_venta_temporal_ticket_mercederia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta_temporal_ticket_mercederia`(IN in_id_trabajador INT, IN in_id_mercaderia INT,IN in_cantidad INT)
BEGIN
IF in_id_trabajador <= 0 OR in_id_mercaderia <=0 OR in_cantidad <= 0 THEN
	SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
INSERT INTO ticket_venta_temporal (id_trabajador, id_mercaderia,cantidad)
VALUES(in_id_trabajador,in_id_mercaderia,in_cantidad);
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_venta_temporal_ticket_tratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta_temporal_ticket_tratamiento`(IN in_id_trabajador INT, IN in_id_tratamiento INT)
BEGIN
IF in_id_trabajador <= 0 OR in_id_tratamiento <= 0 THEN
	SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
INSERT INTO ticket_venta_temporal (id_trabajador, id_tratamiento)
VALUES(in_id_trabajador,in_id_tratamiento);
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_venta_ticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta_ticket`(IN in_id_cliente INT, IN in_id_trabajador INT)
BEGIN
DECLARE id_factura INT;
DECLARE subtotal, iva, total DECIMAL (9,2);

DECLARE precio_total_variable DECIMAL(10,2);
DECLARE precio_total_variable2 DECIMAL(10,2);


IF in_id_trabajador <= 0 OR in_id_cliente <=0 THEN
	SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
	INSERT INTO ticket
    VALUES (NULL,in_id_cliente,NULL,NULL,NULL,CURRENT_TIMESTAMP(),in_id_trabajador);

SET @id_factura = LAST_INSERT_ID();

INSERT INTO ticket_mercaderia (id_ticket,id_mercaderia,precio_unidad,cantidad,precio_total,iva,id_trabajador,subtotal)
SELECT @id_factura,
		vt.id_mercaderia,
        m.precio,
        vt.cantidad,
        precio_total(vt.cantidad * m.precio),
        iva(vt.cantidad * m.precio),
        in_id_trabajador,
        vt.cantidad * m.precio
        
FROM ticket_venta_temporal AS vt
JOIN mercaderia AS m ON vt.id_mercaderia = m.id
WHERE vt.id_trabajador = in_id_trabajador;

INSERT INTO ticket_tratamiento (id_ticket,id_tratamiento,precio_unidad,id_trabajador)
SELECT @id_factura,
		vt.id_tratamiento,
        t.costo,
        in_id_trabajador
        
FROM ticket_venta_temporal AS vt
JOIN tratamiento AS t ON vt.id_tratamiento = t.id
WHERE vt.id_trabajador = in_id_trabajador;

DELETE FROM ticket_venta_temporal WHERE id_trabajador = in_id_trabajador;

CALL suma_totales_tablas('ticket_mercaderia', "subtotal", @id_factura);
SET precio_total_variable = @precio_total;
IF (precio_total_variable IS NULL) THEN 
SET precio_total_variable = 0;
END IF;

CALL suma_totales_tablas("ticket_tratamiento","precio_unidad",@id_factura);
SET precio_total_variable2 = @precio_total;
IF (precio_total_variable2 IS NULL) THEN 
SET precio_total_variable2 = 0;
END IF;

SELECT (precio_total_variable + precio_total_variable2)INTO @subtotal;
UPDATE ticket SET subtotal = @subtotal, iva = iva(@subtotal), total = precio_total(@subtotal) WHERE id = @id_factura;

END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `st_paga_trabajadores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `st_paga_trabajadores`(IN in_id_trabajador INT,  IN in_horas_extras INT)
BEGIN
DECLARE var_sueldo DECIMAL(9,2);
SELECT sueldo FROM trabajadores WHERE id = in_id_trabajador INTO @var_sueldo;

IF in_id_trabajador <= 0 OR in_horas_extras < 0 THEN
	SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
INSERT INTO trabajadores_pago
VALUES(NULL,in_id_trabajador,@var_sueldo,in_horas_extras, horas_extras_pago(in_id_trabajador,in_horas_extras) + @var_sueldo ,current_date());
END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suma_totales_tablas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suma_totales_tablas`(tabla VARCHAR(30), columna VARCHAR(30), id_ticket_activo INT)
BEGIN
IF tabla = "" OR columna = "" OR id_ticket_activo <= 0 THEN
SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
	SET @sql = CONCAT('SELECT SUM(', columna, ') INTO @precio_total FROM ', tabla, ' WHERE id_ticket = ', id_ticket_activo);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
	SELECT COALESCE(@precio_total, 0) AS precio_total;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_animales_cliente`
--

/*!50001 DROP VIEW IF EXISTS `view_animales_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_animales_cliente` AS select `c`.`nombre` AS `nombre`,count(`m`.`id_animal`) AS `cantidad_mascotas` from ((`cliente` `c` join `mascotas` `m` on((`c`.`id` = `m`.`id_cliente`))) join `animal` `a` on((`a`.`id` = `m`.`id_animal`))) group by `c`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_tickets_mercaderia`
--

/*!50001 DROP VIEW IF EXISTS `view_tickets_mercaderia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tickets_mercaderia` AS select `t`.`id` AS `id_mercaderia`,`t`.`cliente` AS `cliente`,sum(`t`.`total`) AS `total`,sum(`tt`.`cantidad`) AS `cantidad_comprada` from (`ticket` `t` join `ticket_mercaderia` `tt` on((`t`.`id` = `tt`.`id_ticket`))) group by `t`.`id`,`t`.`cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_tickets_tratamiento`
--

/*!50001 DROP VIEW IF EXISTS `view_tickets_tratamiento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tickets_tratamiento` AS select `t`.`id` AS `id_tratamiento`,`t`.`cliente` AS `id_cliente`,count(`t`.`id`) AS `veces_usado_el_tratamiento`,sum(`t`.`total`) AS `total` from (`ticket` `t` join `ticket_tratamiento` `tt` on((`t`.`id` = `tt`.`id_ticket`))) group by `t`.`id`,`t`.`cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_total_cliente`
--

/*!50001 DROP VIEW IF EXISTS `view_total_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_total_cliente` AS select `c`.`nombre` AS `nombre`,sum(`t`.`total`) AS `precio_total` from (`cliente` `c` join `ticket` `t` on((`c`.`id` = `t`.`cliente`))) group by `c`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_tratamiento_mascota`
--

/*!50001 DROP VIEW IF EXISTS `view_tratamiento_mascota`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tratamiento_mascota` AS select `a`.`nombre` AS `nombre`,`t`.`tipo` AS `tipo`,`a`.`descripcion` AS `descripcion` from (`animal` `a` join `tratamiento` `t` on((`a`.`id` = `t`.`id_animal`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_animal_edades`
--

/*!50001 DROP VIEW IF EXISTS `vw_animal_edades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_animal_edades` AS select `animal`.`nombre` AS `nombre`,`animal`.`tipo` AS `tipo`,`edad_anos`(`animal`.`edad_meses`) AS `años` from `animal` */;
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

-- Dump completed on 2023-07-23 21:32:05
