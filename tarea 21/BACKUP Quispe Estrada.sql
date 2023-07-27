CREATE DATABASE  IF NOT EXISTS `primera_entrega` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `primera_entrega`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: primera_entrega
-- 
-- Server version	8.0.33

-- TABLAS 
-- animal
-- cliente
-- dirreciones
-- emails
-- especialidades
-- especialidades_trabajador
-- historial
-- log_actualizacion_de_precios_mercaderia
-- log_nuevos_clientes
-- log_nuevos_animales
-- log_nuevos_mercaderia
-- log_ticket_nuevo
-- log_venta_mercaderia
-- log_venta_tratamiento
-- mascotas
-- mercaderia
-- numero_contacto
-- personal_tratamiento
-- provedor
-- ticket
-- ticket_mercaderia
-- ticket_tratamiento
-- ticket_venta_temporal
-- trabajadores
-- trabajadores_pago
-- tratamientos
-- ventas

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
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'vigotes','gato','egipcio','ok','buenardo',2,'lele pancha'),(2,'copito','gato',NULL,'ok','buenardo',3,'dolor de panza'),(3,'bicho','gato','siames','enfermo','lindo gato',22,'dolor en la pata'),(4,'pichu','perro','caniche','ok','es muy activo',23,'revision normal'),(5,'lionel','loro',NULL,'basado','verde brilante',10,'no para de hablar'),(6,'tobi','perro','bulldog','dolor de panza','chiquito de color marron',23,'esta gordo'),(7,'july','gato',NULL,'vomitos','blanca con manchas negras',32,'indigestion'),(8,'macaron','lagarto',NULL,'sin apetito','verde-amarillento',5,'decaido'),(9,'lucifer','gato',NULL,'pata derecha lastimada','negro puro',23,'con dolor para caminar'),(10,'fiumba','gato','lampiño','ok','gato barato',44,'come toda la comida'),(11,'','gato','lampiño','ok','gato barato',44,'come toda la comida'),(12,'','gato','lampiño','ok','gato barato',44,'come toda la comida'),(16,'prueba','prueba','prueba','ok','prueba',2,'prueba'),(22,'prueba','prueba','prueba','ok','prueba',3,'prueba'),(24,'caca','asd','asda','asd','adsd',22,'sads');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'carlos','estrada','dni','229018381'),(2,'jorge','vila','dni','229018441'),(3,'maria','mamani','dni','229018312'),(4,'Eliana Kramer','Leblanc','DNI','64797408'),(5,'Graham Carney','Morrison','DNI','49410967'),(6,'Jane Sparks','Sawyer','DNI','76653954'),(7,'Chelsea Reyes','Ruiz','DNI','21978572'),(8,'Stephanie Dillard','Byers','DNI','20862220'),(9,'Mechelle Hammond','Bishop','DNI','65368725'),(10,'Christian Herring','Roberts','DNI','66193845'),(11,'Beatrice Stevens','Ortiz','DNI','16844883'),(12,'Larissa Riggs','Solis','DNI','91541684'),(13,'Autumn Holt','Richmond','DNI','75682886'),(14,'prueba','apellido prueba','DNI','88881111');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,NULL,1,NULL,'rivadavia 222','CABA','CABA','Argentina',1406),(2,NULL,3,NULL,'calle falsa 123','CABA','CABA','argentina',3122),(3,NULL,NULL,4,'callao 3333','CABA','CABA','argentina',2312);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,1,NULL,NULL,'hola@gmail.com');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'cardiologia','experto en el uso de aparatos cardiovasculares'),(2,'etologia','estudio de comportamineto animal'),(3,'ortopedia','especialidad médica que involucra el tratamiento del sistema musculoesquelético'),(4,'estetica canina',' mensajes relajantes, baños personalizados y arreglo en general'),(5,'cardioterapeuta','especialista en problemas de corazon'),(6,'oftamologia','especialista en el cuidado de los ojos'),(7,'dermatologia','especialista en el cuidado de la piel'),(8,'cirujano','cirujano general de animales'),(9,'medice general','atiende consultas en general sobre los animales'),(13,'borrar','para borrar');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `especialidades_trabajador`
--

LOCK TABLES `especialidades_trabajador` WRITE;
/*!40000 ALTER TABLE `especialidades_trabajador` DISABLE KEYS */;
INSERT INTO `especialidades_trabajador` VALUES (1,1,1),(2,4,2),(3,5,7),(4,5,3),(5,5,3),(6,10,8),(7,2,3),(8,8,9),(9,1,2),(10,10,1),(11,4,2),(12,7,3),(13,2,2),(14,1,6),(15,1,3),(16,7,4);
/*!40000 ALTER TABLE `especialidades_trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
INSERT INTO `historial` VALUES (1,5,6,'2023-06-03','04:17:08'),(2,6,7,'2023-06-04','04:18:08'),(3,7,9,'2023-06-12','19:57:11'),(4,8,3,'2023-07-12','19:57:30'),(5,10,1,'2023-07-12','20:19:10'),(7,11,1,'2023-07-17','23:32:50');
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_actualizacion_de_precios_mercaderia`
--

LOCK TABLES `log_actualizacion_de_precios_mercaderia` WRITE;
/*!40000 ALTER TABLE `log_actualizacion_de_precios_mercaderia` DISABLE KEYS */;
INSERT INTO `log_actualizacion_de_precios_mercaderia` VALUES (1,5,400.00,338.32,'2023-07-12','22:43:21','root@localhost');
/*!40000 ALTER TABLE `log_actualizacion_de_precios_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_nuevos_animales`
--

LOCK TABLES `log_nuevos_animales` WRITE;
/*!40000 ALTER TABLE `log_nuevos_animales` DISABLE KEYS */;
INSERT INTO `log_nuevos_animales` VALUES (1,'prueba','prueba',2),(2,'prueba','prueba',3),(3,'sin mascota','vacio',0),(4,'caca','asd',22);
/*!40000 ALTER TABLE `log_nuevos_animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_nuevos_clientes`
--

LOCK TABLES `log_nuevos_clientes` WRITE;
/*!40000 ALTER TABLE `log_nuevos_clientes` DISABLE KEYS */;
INSERT INTO `log_nuevos_clientes` VALUES (1,14,'2023-07-13','18:12:50','root@localhost'),(2,2,'2023-07-15','00:09:47','root@localhost');
/*!40000 ALTER TABLE `log_nuevos_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_nuevos_mercaderia`
--

LOCK TABLES `log_nuevos_mercaderia` WRITE;
/*!40000 ALTER TABLE `log_nuevos_mercaderia` DISABLE KEYS */;
INSERT INTO `log_nuevos_mercaderia` VALUES (1,2,220.50,'8','2023-07-19','18:27:08','root@localhost',21);
/*!40000 ALTER TABLE `log_nuevos_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_ticket_nuevo`
--

LOCK TABLES `log_ticket_nuevo` WRITE;
/*!40000 ALTER TABLE `log_ticket_nuevo` DISABLE KEYS */;
INSERT INTO `log_ticket_nuevo` VALUES (1,100.00,21.00,'2023-07-17','23:13:13','root@localhost',121.00,NULL),(2,100.00,21.00,'2023-07-17','23:18:44','root@localhost',121.00,123308);
/*!40000 ALTER TABLE `log_ticket_nuevo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_venta_mercaderia`
--

LOCK TABLES `log_venta_mercaderia` WRITE;
/*!40000 ALTER TABLE `log_venta_mercaderia` DISABLE KEYS */;
INSERT INTO `log_venta_mercaderia` VALUES (1,18,100.00,1,100.00,0.00,'2023-07-13','02:20:51','root@localhost'),(2,5,22.00,1,22.99,22.22,'2023-07-14','23:58:37','root@localhost'),(3,5,22.00,1,22.99,22.22,'2023-07-14','23:59:08','root@localhost'),(4,18,12.00,1,12.22,21.22,'2023-07-15','00:01:53','root@localhost'),(5,5,400.00,1,484.00,84.00,'2023-07-16','17:21:52','root@localhost'),(6,5,400.00,1,484.00,84.00,'2023-07-16','17:22:42','root@localhost'),(7,5,400.00,1,484.00,84.00,'2023-07-16','19:04:16','root@localhost'),(8,5,400.00,1,484.00,84.00,'2023-07-16','19:04:51','root@localhost'),(9,5,400.00,1,484.00,84.00,'2023-07-16','19:11:47','root@localhost'),(10,5,400.00,1,484.00,84.00,'2023-07-16','19:12:34','root@localhost'),(11,5,400.00,1,484.00,84.00,'2023-07-16','19:14:27','root@localhost'),(12,5,400.00,1,484.00,84.00,'2023-07-16','19:20:29','root@localhost'),(13,5,400.00,1,484.00,84.00,'2023-07-16','19:39:41','root@localhost'),(14,5,400.00,1,484.00,84.00,'2023-07-16','19:48:21','root@localhost'),(15,5,400.00,1,484.00,84.00,'2023-07-16','19:49:04','root@localhost'),(16,5,400.00,1,484.00,84.00,'2023-07-16','19:50:26','root@localhost'),(17,5,400.00,1,484.00,84.00,'2023-07-16','19:53:23','root@localhost'),(18,5,400.00,1,484.00,84.00,'2023-07-16','19:57:48','root@localhost'),(19,5,400.00,1,484.00,84.00,'2023-07-16','21:25:28','root@localhost'),(20,11,139.45,1,168.64,29.19,'2023-07-16','22:42:06','root@localhost'),(21,5,400.00,2,968.00,168.00,'2023-07-17','00:58:50','root@localhost'),(22,11,139.45,1,168.64,29.19,'2023-07-17','00:58:50','root@localhost'),(23,5,400.00,1,484.00,84.00,'2023-07-17','03:14:40','root@localhost'),(24,11,139.45,1,168.64,29.19,'2023-07-17','03:14:40','root@localhost'),(25,5,400.00,1,484.00,84.00,'2023-07-17','03:17:02','root@localhost'),(26,11,139.45,1,168.64,29.19,'2023-07-17','03:17:02','root@localhost'),(27,5,400.00,1,484.00,84.00,'2023-07-17','03:19:22','root@localhost'),(28,11,139.45,1,168.64,29.19,'2023-07-17','03:19:22','root@localhost'),(29,5,400.00,1,484.00,84.00,'2023-07-17','16:56:50','root@localhost'),(30,11,139.45,1,168.64,29.19,'2023-07-17','16:56:50','root@localhost'),(31,5,400.00,1,484.00,84.00,'2023-07-17','17:04:34','root@localhost'),(32,11,139.45,1,168.64,29.19,'2023-07-17','17:04:34','root@localhost'),(33,5,400.00,1,484.00,84.00,'2023-07-17','17:06:53','root@localhost'),(34,11,139.45,1,168.64,29.19,'2023-07-17','17:06:53','root@localhost'),(35,5,400.00,1,484.00,84.00,'2023-07-17','17:08:19','root@localhost'),(36,11,139.45,1,168.64,29.19,'2023-07-17','17:08:19','root@localhost'),(37,5,400.00,1,484.00,84.00,'2023-07-17','17:09:28','root@localhost'),(38,11,139.45,1,168.64,29.19,'2023-07-17','17:09:28','root@localhost'),(39,5,400.00,1,484.00,84.00,'2023-07-17','17:11:13','root@localhost'),(40,11,139.45,1,168.64,29.19,'2023-07-17','17:11:13','root@localhost'),(41,5,400.00,1,484.00,84.00,'2023-07-17','17:13:13','root@localhost'),(42,11,139.45,1,168.64,29.19,'2023-07-17','17:13:13','root@localhost'),(43,5,400.00,1,484.00,84.00,'2023-07-17','17:44:43','root@localhost'),(44,11,139.45,1,168.64,29.19,'2023-07-17','17:44:43','root@localhost'),(45,5,400.00,1,484.00,84.00,'2023-07-17','17:46:22','root@localhost'),(46,11,139.45,1,168.64,29.19,'2023-07-17','17:46:22','root@localhost'),(47,5,400.00,1,484.00,84.00,'2023-07-17','17:47:43','root@localhost'),(48,11,139.45,1,168.64,29.19,'2023-07-17','17:47:43','root@localhost'),(49,5,400.00,1,484.00,84.00,'2023-07-17','18:09:22','root@localhost'),(50,11,139.45,1,168.64,29.19,'2023-07-17','18:09:22','root@localhost'),(51,5,400.00,1,484.00,84.00,'2023-07-17','18:11:37','root@localhost'),(52,5,400.00,1,484.00,84.00,'2023-07-17','18:24:15','root@localhost'),(53,11,139.45,1,168.64,29.19,'2023-07-17','18:24:15','root@localhost'),(54,5,400.00,1,484.00,84.00,'2023-07-17','18:25:18','root@localhost'),(55,5,400.00,1,484.00,84.00,'2023-07-17','18:37:26','root@localhost'),(56,5,400.00,1,484.00,84.00,'2023-07-17','18:38:31','root@localhost'),(57,5,400.00,1,484.00,84.00,'2023-07-17','18:40:16','root@localhost'),(58,5,400.00,1,484.00,84.00,'2023-07-17','18:41:41','root@localhost'),(59,5,400.00,1,484.00,84.00,'2023-07-17','18:44:36','root@localhost'),(60,5,400.00,1,484.00,84.00,'2023-07-17','18:45:23','root@localhost'),(61,11,139.45,1,168.64,29.19,'2023-07-17','18:45:23','root@localhost'),(62,5,400.00,1,484.00,84.00,'2023-07-17','18:46:38','root@localhost'),(63,5,400.00,1,484.00,84.00,'2023-07-17','18:48:35','root@localhost'),(64,5,400.00,1,484.00,84.00,'2023-07-17','18:57:03','root@localhost'),(65,5,400.00,1,484.00,84.00,'2023-07-17','19:01:03','root@localhost'),(66,5,400.00,1,484.00,84.00,'2023-07-17','19:02:44','root@localhost'),(67,5,400.00,1,484.00,84.00,'2023-07-17','19:05:02','root@localhost'),(68,5,400.00,1,484.00,84.00,'2023-07-17','19:37:27','root@localhost'),(69,5,400.00,1,484.00,84.00,'2023-07-17','19:41:37','root@localhost'),(70,5,400.00,1,484.00,84.00,'2023-07-17','19:42:24','root@localhost'),(71,5,400.00,1,484.00,84.00,'2023-07-17','20:02:10','root@localhost'),(72,5,400.00,1,484.00,84.00,'2023-07-17','20:03:00','root@localhost'),(73,11,139.45,1,168.64,29.19,'2023-07-17','20:07:04','root@localhost'),(74,11,139.45,1,168.64,29.19,'2023-07-17','20:08:02','root@localhost'),(75,11,139.45,1,168.64,29.19,'2023-07-17','20:10:44','root@localhost'),(76,5,400.00,1,484.00,84.00,'2023-07-17','20:38:17','root@localhost'),(77,5,400.00,1,484.00,84.00,'2023-07-17','20:40:26','root@localhost'),(78,5,400.00,1,484.00,84.00,'2023-07-17','20:42:16','root@localhost');
/*!40000 ALTER TABLE `log_venta_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_venta_tratamiento`
--

LOCK TABLES `log_venta_tratamiento` WRITE;
/*!40000 ALTER TABLE `log_venta_tratamiento` DISABLE KEYS */;
INSERT INTO `log_venta_tratamiento` VALUES (1,10,100.00,'2023-07-13','01:59:48','root@localhost'),(2,5,500.00,'2023-07-16','19:04:51','root@localhost'),(3,5,500.00,'2023-07-16','19:12:34','root@localhost'),(4,5,500.00,'2023-07-16','19:14:27','root@localhost'),(5,5,500.00,'2023-07-16','19:20:29','root@localhost'),(6,5,500.00,'2023-07-16','19:39:41','root@localhost'),(7,5,500.00,'2023-07-16','19:48:21','root@localhost'),(8,5,500.00,'2023-07-16','19:49:04','root@localhost'),(9,5,500.00,'2023-07-16','19:50:26','root@localhost'),(10,5,500.00,'2023-07-16','19:53:23','root@localhost'),(11,5,500.00,'2023-07-16','19:57:48','root@localhost'),(12,5,500.00,'2023-07-16','21:25:28','root@localhost'),(13,5,500.00,'2023-07-17','16:56:50','root@localhost'),(14,6,700.00,'2023-07-17','16:56:50','root@localhost'),(15,5,500.00,'2023-07-17','17:04:34','root@localhost'),(16,6,700.00,'2023-07-17','17:04:34','root@localhost'),(17,5,500.00,'2023-07-17','17:06:53','root@localhost'),(18,6,700.00,'2023-07-17','17:06:53','root@localhost'),(19,5,500.00,'2023-07-17','17:08:19','root@localhost'),(20,6,700.00,'2023-07-17','17:08:19','root@localhost'),(21,5,500.00,'2023-07-17','17:09:28','root@localhost'),(22,6,700.00,'2023-07-17','17:09:28','root@localhost'),(23,5,500.00,'2023-07-17','17:11:13','root@localhost'),(24,6,700.00,'2023-07-17','17:11:13','root@localhost'),(25,5,500.00,'2023-07-17','17:13:13','root@localhost'),(26,6,700.00,'2023-07-17','17:13:13','root@localhost'),(27,5,500.00,'2023-07-17','17:44:43','root@localhost'),(28,6,700.00,'2023-07-17','17:44:43','root@localhost'),(29,6,700.00,'2023-07-17','17:46:22','root@localhost'),(30,5,500.00,'2023-07-17','17:46:22','root@localhost'),(31,5,500.00,'2023-07-17','17:47:43','root@localhost'),(32,6,700.00,'2023-07-17','17:47:43','root@localhost'),(33,5,500.00,'2023-07-17','18:09:22','root@localhost'),(34,6,700.00,'2023-07-17','18:09:22','root@localhost'),(35,5,500.00,'2023-07-17','18:24:15','root@localhost'),(36,6,700.00,'2023-07-17','18:24:15','root@localhost'),(37,5,500.00,'2023-07-17','18:35:03','root@localhost'),(38,5,500.00,'2023-07-17','18:38:52','root@localhost'),(39,5,500.00,'2023-07-17','18:47:56','root@localhost'),(40,5,500.00,'2023-07-17','19:05:02','root@localhost'),(41,5,500.00,'2023-07-17','19:32:23','root@localhost'),(42,5,500.00,'2023-07-17','20:10:44','root@localhost'),(43,5,500.00,'2023-07-17','20:11:23','root@localhost'),(44,5,500.00,'2023-07-17','20:42:16','root@localhost'),(45,6,700.00,'2023-07-17','20:42:16','root@localhost'),(46,6,700.00,'2023-07-17','22:14:22','root@localhost'),(47,5,500.00,'2023-07-17','22:16:18','root@localhost');
/*!40000 ALTER TABLE `log_venta_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,2,1),(2,3,3),(3,2,6),(4,6,9),(5,1,7),(6,5,7);
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mercaderia`
--

LOCK TABLES `mercaderia` WRITE;
/*!40000 ALTER TABLE `mercaderia` DISABLE KEYS */;
INSERT INTO `mercaderia` VALUES (5,'Donec',1,'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis',400.00,1),(11,'molestie',9,'velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod',139.45,1),(12,'diam',5,'aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,',18.44,1),(14,'orci',0,'metus urna convallis erat, eget tincidunt dui augue eu tellus.',952.21,4),(16,'purus.',8,'Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas',746.41,4),(17,'tortor,',7,'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,',541.06,4),(18,'sem',3,'fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh',682.15,1),(19,'interdum.',1,'dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc',178.52,4),(20,'magnis',6,'molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,',262.91,4),(21,'prueba',2,'producto prueba',220.50,8);
/*!40000 ALTER TABLE `mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `numero_contacto`
--

LOCK TABLES `numero_contacto` WRITE;
/*!40000 ALTER TABLE `numero_contacto` DISABLE KEYS */;
INSERT INTO `numero_contacto` VALUES (1,NULL,1,NULL,54,10052893,'cel');
/*!40000 ALTER TABLE `numero_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `personal_tratamiento`
--

LOCK TABLES `personal_tratamiento` WRITE;
/*!40000 ALTER TABLE `personal_tratamiento` DISABLE KEYS */;
INSERT INTO `personal_tratamiento` VALUES (1,5,2),(2,6,4),(3,7,5),(4,8,11),(5,9,8);
/*!40000 ALTER TABLE `personal_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provedor`
--

LOCK TABLES `provedor` WRITE;
/*!40000 ALTER TABLE `provedor` DISABLE KEYS */;
INSERT INTO `provedor` VALUES (1,'gato barato','comida para gato, gato barato dura un buen rato','2023-01-22'),(4,'Emery Hobbs','risus. Nulla eget metus eu erat semper rutrum. Fusce dolor','2022-03-08'),(6,'Harding Roth','tempor erat neque non quam. Pellentesque habitant morbi tristique senectus','2022-02-19'),(8,'Oleg Cohen','taciti sociosqu ad litora torquent per conubia nostra, per inceptos','2024-12-24'),(9,'Clementine Mills','rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,','2023-12-12');
/*!40000 ALTER TABLE `provedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (14,1,400.23,100.00,500.23,'2023-07-03 07:00:37',1),(15,1,900.00,300.45,1200.45,'2023-07-03 07:01:21',1),(16,2,3200.00,550.30,3750.30,'2023-07-03 07:02:19',1),(17,4,2200.00,350.30,2550.30,'2023-07-03 07:15:50',1),(18,6,500.00,120.75,620.75,'2023-07-03 07:17:08',1),(123216,2,100.00,21.00,121.00,'2023-07-03 07:17:08',1),(123217,2,100.00,21.00,121.00,'2023-07-03 07:17:08',1),(123218,2,100.00,21.00,121.00,'2023-07-03 07:17:08',1),(123219,2,100.00,21.00,121.00,'2023-07-16 17:14:33',1),(123223,5,400.00,84.00,484.00,'2023-07-16 20:22:42',1),(123257,5,900.00,189.00,1089.00,'2023-07-17 01:40:44',1),(123258,1,900.00,189.00,1089.00,'2023-07-17 01:42:06',5),(123262,1,652.64,137.13,789.77,'2023-07-17 06:19:22',1),(123272,1,1852.64,389.13,2241.77,'2023-07-17 20:47:43',1),(123273,1,1739.45,365.19,2104.64,'2023-07-17 21:09:22',1),(123276,1,1739.45,365.19,2104.64,'2023-07-17 21:24:15',1),(123283,1,400.00,84.00,484.00,'2023-07-17 21:41:41',1),(123284,1,400.00,84.00,484.00,'2023-07-17 21:44:36',1),(123285,1,539.45,113.19,652.64,'2023-07-17 21:45:23',1),(123292,1,900.00,189.00,1089.00,'2023-07-17 22:05:02',1),(123300,1,139.45,29.19,168.64,'2023-07-17 23:08:02',1),(123301,1,639.45,134.19,773.64,'2023-07-17 23:10:44',1),(123304,1,400.00,84.00,484.00,'2023-07-17 23:40:26',1),(123305,1,1600.00,336.00,1936.00,'2023-07-17 23:42:16',1),(123307,1,500.00,105.00,605.00,'2023-07-18 01:16:18',1),(123308,1,100.00,21.00,121.00,'2023-07-18 02:22:11',1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ticket_mercaderia`
--

LOCK TABLES `ticket_mercaderia` WRITE;
/*!40000 ALTER TABLE `ticket_mercaderia` DISABLE KEYS */;
INSERT INTO `ticket_mercaderia` VALUES (1,14,19,178.52,3,535.56,8.00,1,0.00),(2,15,20,262.91,5,1315.55,12.33,1,0.00),(3,16,14,952.21,4,3808.84,32.95,1,0.00),(4,14,18,100.00,1,100.00,0.00,1,0.00),(11,123223,5,400.00,1,484.00,84.00,1,400.00),(25,123258,11,139.45,1,168.64,29.19,5,139.45),(35,123262,5,400.00,1,484.00,84.00,1,400.00),(36,123262,11,139.45,1,168.64,29.19,1,139.45),(65,123272,5,400.00,1,484.00,84.00,1,400.00),(66,123272,11,139.45,1,168.64,29.19,1,139.45),(68,123273,5,400.00,1,484.00,84.00,1,400.00),(69,123273,11,139.45,1,168.64,29.19,1,139.45),(72,123276,5,400.00,1,484.00,84.00,1,400.00),(73,123276,11,139.45,1,168.64,29.19,1,139.45),(79,123283,5,400.00,1,484.00,84.00,1,400.00),(80,123284,5,400.00,1,484.00,84.00,1,400.00),(81,123285,5,400.00,1,484.00,84.00,1,400.00),(82,123285,11,139.45,1,168.64,29.19,1,139.45),(89,123292,5,400.00,1,484.00,84.00,1,400.00),(96,123300,11,139.45,1,168.64,29.19,1,139.45),(97,123301,11,139.45,1,168.64,29.19,1,139.45),(99,123304,5,400.00,1,484.00,84.00,1,400.00),(100,123305,5,400.00,1,484.00,84.00,1,400.00);
/*!40000 ALTER TABLE `ticket_mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ticket_tratamiento`
--

LOCK TABLES `ticket_tratamiento` WRITE;
/*!40000 ALTER TABLE `ticket_tratamiento` DISABLE KEYS */;
INSERT INTO `ticket_tratamiento` VALUES (1,17,7,2550.00,1),(2,18,6,700.00,1),(3,18,10,100.00,1),(42,123272,5,500.00,1),(43,123272,6,700.00,1),(45,123273,5,500.00,1),(46,123273,6,700.00,1),(48,123276,5,500.00,1),(49,123276,6,700.00,1),(54,123292,5,500.00,1),(56,123301,5,500.00,1),(58,123305,5,500.00,1),(59,123305,6,700.00,1),(62,123307,5,500.00,1);
/*!40000 ALTER TABLE `ticket_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ticket_venta_temporal`
--

LOCK TABLES `ticket_venta_temporal` WRITE;
/*!40000 ALTER TABLE `ticket_venta_temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_venta_temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES (1,'ari','peres','lunes y jueves',35000.00),(2,'Kellie Pruitt','Hooper','martes y miercoles',33000.00),(3,'Uma Glass','Pearson','martes y miercoles',36000.00),(4,'Dexter Weaver','Higgins','viernes y sabados',40000.00),(5,'William Rivera','Barr','martes y miercoles',30000.00),(6,'Blake Mckinney','Phelps','martes y miercoles',32000.00),(7,'Evangeline Dean','Gibbs','martes y miercoles',34000.00),(8,'Katelyn Pitts','Hull','martes y miercoles',34000.00),(9,'Fatima Daniel','Chen','viernes y sabados',31000.00),(10,'Kelly Glass','Mays','martes y miercoles',29000.00),(11,'Cooper Pace','Santana','viernes y sabados',35500.00);
/*!40000 ALTER TABLE `trabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trabajadores_pago`
--

LOCK TABLES `trabajadores_pago` WRITE;
/*!40000 ALTER TABLE `trabajadores_pago` DISABLE KEYS */;
INSERT INTO `trabajadores_pago` VALUES (1,1,35000.00,1,291.66,'2023-07-18'),(2,1,35000.00,1,35291.66,'2023-07-18');
/*!40000 ALTER TABLE `trabajadores_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES (5,'tratamiento a base de pastilas','pastllas anti acidez',500.00,1,6),(6,'tramiento a base de pastillas','pastillaz de inflavet para el dolor',700.00,2,7),(7,'enyesamiento','se pondra un lleso en la para lastimada',1000.00,3,9),(8,'seguimiento','aun no se sabe bien que pasos seguir, seguimiento del animal',500.00,4,3),(9,'control de conducta','conducta anormal en el animal, seguimiento',2500.00,5,5),(10,'prueba','descripcion de prueba',1000.00,4,1),(11,'prueba','tambien de prueba',100.00,1,1);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,14,500.23),(2,1,15,1200.45),(3,2,16,3750.30),(4,4,17,2550.30),(5,6,18,620.75);
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

-- Dump completed on 2023-07-26 16:36:05
