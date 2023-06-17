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
  `tipo` varchar(30) NOT NULL,
  `raza` varchar(30) DEFAULT NULL,
  `estado` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `edad_meses` int NOT NULL,
  `malestar` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'vigotes','gato','egipcio','ok','buenardo',2,'lele pancha'),(2,'copito','gato',NULL,'ok','buenardo',3,'dolor de panza');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'carlos','estrada','dni','229018381'),(2,'jorge','vila','dni','229018441'),(3,'maria','mamani','dni','229018312');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,NULL,1,NULL,'rivadavia 222','CABA','CABA','Argentina',1406);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'cardiologia','experto en el uso de aparatos cardiovasculares');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades_trabajador`
--

LOCK TABLES `especialidades_trabajador` WRITE;
/*!40000 ALTER TABLE `especialidades_trabajador` DISABLE KEYS */;
INSERT INTO `especialidades_trabajador` VALUES (1,1,1);
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
  PRIMARY KEY (`id`),
  KEY `id_tratamiento` (`id_tratamiento`),
  KEY `id_animal` (`id_animal`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamiento` (`id`),
  CONSTRAINT `historial_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,2,1);
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
  `precio` decimal(7,2) NOT NULL,
  `provedor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provedor` (`provedor`),
  CONSTRAINT `mercaderia_ibfk_1` FOREIGN KEY (`provedor`) REFERENCES `provedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercaderia`
--

LOCK TABLES `mercaderia` WRITE;
/*!40000 ALTER TABLE `mercaderia` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

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
  `id_tratamiento` int NOT NULL,
  `id_trabajador` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tratamiento` (`id_tratamiento`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `personal_tratamiento_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tratamiento` (`id_personal`),
  CONSTRAINT `personal_tratamiento_ibfk_2` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamiento` (`id`),
  CONSTRAINT `personal_tratamiento_ibfk_3` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_tratamiento`
--

LOCK TABLES `personal_tratamiento` WRITE;
/*!40000 ALTER TABLE `personal_tratamiento` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedor`
--

LOCK TABLES `provedor` WRITE;
/*!40000 ALTER TABLE `provedor` DISABLE KEYS */;
INSERT INTO `provedor` VALUES (1,'gato barato','comida para gato, gato barato dura un buen rato','2023-01-22');
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
  `subtotal` decimal(7,2) NOT NULL,
  `iva` decimal(7,2) NOT NULL,
  `total` decimal(7,2) NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

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
  `precio_unidad` decimal(7,2) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_total` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mercaderia` (`id_mercaderia`),
  KEY `id_ticket` (`id_ticket`),
  CONSTRAINT `ticket_mercaderia_ibfk_1` FOREIGN KEY (`id_mercaderia`) REFERENCES `mercaderia` (`id`),
  CONSTRAINT `ticket_mercaderia_ibfk_2` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_mercaderia`
--

LOCK TABLES `ticket_mercaderia` WRITE;
/*!40000 ALTER TABLE `ticket_mercaderia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

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
  `precio_unidad` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tratamiento` (`id_tratamiento`),
  KEY `id_ticket` (`id_ticket`),
  CONSTRAINT `ticket_tratamiento_ibfk_1` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamiento` (`id`),
  CONSTRAINT `ticket_tratamiento_ibfk_2` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_tratamiento`
--

LOCK TABLES `ticket_tratamiento` WRITE;
/*!40000 ALTER TABLE `ticket_tratamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_tratamiento` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES (1,'ari','peres','lunes y jueves',30000.00);
/*!40000 ALTER TABLE `trabajadores` ENABLE KEYS */;
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
  `descripcion` varchar(30) NOT NULL,
  `costo` int NOT NULL,
  `id_personal` int NOT NULL,
  `id_animal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_animal` (`id_animal`),
  KEY `id_personal` (`id_personal`),
  CONSTRAINT `tratamiento_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-17 18:26:25
