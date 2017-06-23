-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cimeqh
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `tblconexiones`
--

DROP TABLE IF EXISTS `tblconexiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblconexiones` (
  `conexionId` int(11) NOT NULL AUTO_INCREMENT,
  `conexionDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`conexionId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblconexiones`
--

LOCK TABLES `tblconexiones` WRITE;
/*!40000 ALTER TABLE `tblconexiones` DISABLE KEYS */;
INSERT INTO `tblconexiones` VALUES (1,'Monofásico'),(2,'Trifásico');
/*!40000 ALTER TABLE `tblconexiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldepartamentos`
--

DROP TABLE IF EXISTS `tbldepartamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldepartamentos` (
  `departamentoId` int(11) NOT NULL,
  `departamentoDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`departamentoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldepartamentos`
--

LOCK TABLES `tbldepartamentos` WRITE;
/*!40000 ALTER TABLE `tbldepartamentos` DISABLE KEYS */;
INSERT INTO `tbldepartamentos` VALUES (1,'Francisco Morazan'),(2,'Islas de la Bahia'),(3,'Comayagua'),(4,'Santa Barbara'),(5,'Gracias a Dios'),(6,'Lempira'),(7,'Valle'),(8,'Atlantida'),(9,'Cortes');
/*!40000 ALTER TABLE `tbldepartamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldocumentosaprobacion`
--

DROP TABLE IF EXISTS `tbldocumentosaprobacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldocumentosaprobacion` (
  `documentosAprobacionId` int(11) NOT NULL AUTO_INCREMENT,
  `documentoDireccion` varchar(600) NOT NULL,
  `solicitudAprobacionId` int(11) NOT NULL,
  `documentoNombre` varchar(600) NOT NULL,
  PRIMARY KEY (`documentosAprobacionId`),
  KEY `solicitudAprobacionId_idx` (`solicitudAprobacionId`),
  KEY `fksolicitudAprobacionId_idx` (`solicitudAprobacionId`),
  CONSTRAINT `fksolicitudAprobacionId` FOREIGN KEY (`solicitudAprobacionId`) REFERENCES `tblsolicitudaprobacion` (`solicitudAprobacionId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldocumentosaprobacion`
--

LOCK TABLES `tbldocumentosaprobacion` WRITE;
/*!40000 ALTER TABLE `tbldocumentosaprobacion` DISABLE KEYS */;
INSERT INTO `tbldocumentosaprobacion` VALUES (64,'files/PROYECTO DIGITALIZACION APROBACION DE PLANOS EN ENEE (1)(1)(2).pdf',89,'PROYECTO DIGITALIZACION APROBACION DE PLANOS EN ENEE (1)(1)(2).pdf'),(65,'files/put_tris(1).pdf',90,'put_tris(1).pdf');
/*!40000 ALTER TABLE `tbldocumentosaprobacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldocumentosrecepcion`
--

DROP TABLE IF EXISTS `tbldocumentosrecepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldocumentosrecepcion` (
  `documentoRecepcionId` int(11) NOT NULL AUTO_INCREMENT,
  `documentoRecepcionDireccion` varchar(600) NOT NULL,
  `solicitudRecepcionId` int(11) NOT NULL,
  `documentoNombre` varchar(600) NOT NULL,
  PRIMARY KEY (`documentoRecepcionId`),
  KEY `solicitudRecepcionId_idx` (`solicitudRecepcionId`),
  CONSTRAINT `solicitudRecepcionId` FOREIGN KEY (`solicitudRecepcionId`) REFERENCES `tblsolicitudrecepcion` (`solicitudRecepcioId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldocumentosrecepcion`
--

LOCK TABLES `tbldocumentosrecepcion` WRITE;
/*!40000 ALTER TABLE `tbldocumentosrecepcion` DISABLE KEYS */;
INSERT INTO `tbldocumentosrecepcion` VALUES (5,'files/PROYECTO DIGITALIZACION APROBACION DE PLANOS EN ENEE (1).pdf',4,'PROYECTO DIGITALIZACION APROBACION DE PLANOS EN ENEE (1).pdf'),(6,'files/put_tris.pdf',4,'put_tris.pdf'),(7,'files/put_tris(2).pdf',5,'put_tris(2).pdf'),(10,'files/put_tris(4).pdf',4,'put_tris(4).pdf'),(11,'files/PROYECTO DIGITALIZACION APROBACION DE PLANOS EN ENEE (1)(1)(4).pdf',4,'PROYECTO DIGITALIZACION APROBACION DE PLANOS EN ENEE (1)(1)(4).pdf');
/*!40000 ALTER TABLE `tbldocumentosrecepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestadoaprobacion`
--

DROP TABLE IF EXISTS `tblestadoaprobacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestadoaprobacion` (
  `estadoAprobacionId` int(11) NOT NULL AUTO_INCREMENT,
  `estadoAprobacionDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`estadoAprobacionId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestadoaprobacion`
--

LOCK TABLES `tblestadoaprobacion` WRITE;
/*!40000 ALTER TABLE `tblestadoaprobacion` DISABLE KEYS */;
INSERT INTO `tblestadoaprobacion` VALUES (1,'Aprobado CIMEQH'),(2,'Aprobado ENEE'),(3,'Rechazado'),(4,'En Revision');
/*!40000 ALTER TABLE `tblestadoaprobacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestadocuenta`
--

DROP TABLE IF EXISTS `tblestadocuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestadocuenta` (
  `estadoCuentaId` int(11) NOT NULL AUTO_INCREMENT,
  `estadoCuentaDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`estadoCuentaId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestadocuenta`
--

LOCK TABLES `tblestadocuenta` WRITE;
/*!40000 ALTER TABLE `tblestadocuenta` DISABLE KEYS */;
INSERT INTO `tblestadocuenta` VALUES (1,'aprobado'),(2,'denegado'),(3,'suspendido'),(4,'En Revision');
/*!40000 ALTER TABLE `tblestadocuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestadodespeje`
--

DROP TABLE IF EXISTS `tblestadodespeje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestadodespeje` (
  `estadoDespejeId` int(11) NOT NULL AUTO_INCREMENT,
  `estadoDespejeDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`estadoDespejeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestadodespeje`
--

LOCK TABLES `tblestadodespeje` WRITE;
/*!40000 ALTER TABLE `tblestadodespeje` DISABLE KEYS */;
INSERT INTO `tblestadodespeje` VALUES (1,'Aprobado'),(2,'Rechazado'),(3,'Pospuesto'),(4,'En Revisión');
/*!40000 ALTER TABLE `tblestadodespeje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestadofactibilidad`
--

DROP TABLE IF EXISTS `tblestadofactibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestadofactibilidad` (
  `estadoFactibilidadId` int(11) NOT NULL AUTO_INCREMENT,
  `estadoFactibilidadDescripcion` varchar(120) NOT NULL,
  PRIMARY KEY (`estadoFactibilidadId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestadofactibilidad`
--

LOCK TABLES `tblestadofactibilidad` WRITE;
/*!40000 ALTER TABLE `tblestadofactibilidad` DISABLE KEYS */;
INSERT INTO `tblestadofactibilidad` VALUES (1,'Aprobado CIMEQH'),(2,'Aprobado ENEE'),(3,'Rechazado'),(4,'En Revision');
/*!40000 ALTER TABLE `tblestadofactibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestadorecepcion`
--

DROP TABLE IF EXISTS `tblestadorecepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestadorecepcion` (
  `estadoRecepcionId` int(11) NOT NULL AUTO_INCREMENT,
  `estadoRecepcionDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`estadoRecepcionId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestadorecepcion`
--

LOCK TABLES `tblestadorecepcion` WRITE;
/*!40000 ALTER TABLE `tblestadorecepcion` DISABLE KEYS */;
INSERT INTO `tblestadorecepcion` VALUES (1,'Aprobado CIMEQH'),(2,'Aprobado ENEE'),(3,'Rechazado'),(4,'En Revision');
/*!40000 ALTER TABLE `tblestadorecepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproyectos`
--

DROP TABLE IF EXISTS `tblproyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproyectos` (
  `proyectoId` int(11) NOT NULL AUTO_INCREMENT,
  `proyectoNombrePropietario` varchar(100) CHARACTER SET latin1 NOT NULL,
  `proyectoIdentidadPropietario` varchar(30) CHARACTER SET latin1 NOT NULL,
  `proyectoCelularPropietario` varchar(45) CHARACTER SET latin1 NOT NULL,
  `proyectoEmailPropietario` varchar(100) CHARACTER SET latin1 NOT NULL,
  `proyectoDireccionPropietario` varchar(100) CHARACTER SET latin1 NOT NULL,
  `proyectoTelefonoPropietario` varchar(45) CHARACTER SET latin1 NOT NULL,
  `departamentoId` int(11) NOT NULL,
  `proyectoDescrpcion` varchar(100) CHARACTER SET latin1 NOT NULL,
  `proyectoLatitud` float NOT NULL,
  `proyectoLongitud` float NOT NULL,
  `proyectoDireccion` varchar(200) CHARACTER SET latin1 NOT NULL,
  `usuarioIdentidad` varchar(25) CHARACTER SET latin1 NOT NULL,
  `proyectoNombre` varchar(200) CHARACTER SET latin1 NOT NULL,
  `tipoId` int(11) NOT NULL,
  PRIMARY KEY (`proyectoId`),
  KEY `usuarioIdentidad_idx` (`usuarioIdentidad`),
  KEY `departamentoId_idx` (`departamentoId`),
  KEY `tipoProyectoId_idx` (`tipoId`),
  CONSTRAINT `departamentoId` FOREIGN KEY (`departamentoId`) REFERENCES `tbldepartamentos` (`departamentoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tipoId` FOREIGN KEY (`tipoId`) REFERENCES `tbltipoproyectos` (`tipoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuarioIdentidad` FOREIGN KEY (`usuarioIdentidad`) REFERENCES `tblusuarios` (`usuarioIdentidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproyectos`
--

LOCK TABLES `tblproyectos` WRITE;
/*!40000 ALTER TABLE `tblproyectos` DISABLE KEYS */;
INSERT INTO `tblproyectos` VALUES (7,'dfdf','0801199503315','96425295','luis@hotmail.com','dfdfdf','96425292',1,'cdccxc',67,88,'dfdfdfdf','0801199503314','CIMEQH',6),(8,'asasas','99525656330','4555','sdsdsd@ddsd.com','asasasas','545',1,'dsdsdsd',95,66,'sddddsd','0801199503314','EEH',5),(9,'Diana Reyes','0801199306645','5454','dfdfdfd@hotmail.es','dd','96425292',1,'sdsd',66,77,'sdsds','0801199503314','SANAA',6);
/*!40000 ALTER TABLE `tblproyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblroles`
--

DROP TABLE IF EXISTS `tblroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblroles` (
  `rolId` int(11) NOT NULL AUTO_INCREMENT,
  `rolDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`rolId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblroles`
--

LOCK TABLES `tblroles` WRITE;
/*!40000 ALTER TABLE `tblroles` DISABLE KEYS */;
INSERT INTO `tblroles` VALUES (1,'cimeqh'),(2,'enee'),(3,'publico'),(4,'Ingeniero');
/*!40000 ALTER TABLE `tblroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsolicitudaprobacion`
--

DROP TABLE IF EXISTS `tblsolicitudaprobacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsolicitudaprobacion` (
  `solicitudAprobacionId` int(11) NOT NULL AUTO_INCREMENT,
  `solicitudAaprobacionMontoEstimado` float NOT NULL,
  `solicitudAprobacionCosto` float NOT NULL,
  `estadoSolicitudAprobacion` int(11) NOT NULL,
  `proyectoId` int(11) NOT NULL,
  `codigoAprobacion` varchar(150) DEFAULT NULL,
  `comentarioAprobacion` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`solicitudAprobacionId`),
  KEY `fkProyectoId_idx` (`proyectoId`),
  KEY `estadoAprobacion_idx` (`estadoSolicitudAprobacion`),
  CONSTRAINT `estadoAprobacionId` FOREIGN KEY (`estadoSolicitudAprobacion`) REFERENCES `tblestadoaprobacion` (`estadoAprobacionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkProyectoId` FOREIGN KEY (`proyectoId`) REFERENCES `tblproyectos` (`proyectoId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsolicitudaprobacion`
--

LOCK TABLES `tblsolicitudaprobacion` WRITE;
/*!40000 ALTER TABLE `tblsolicitudaprobacion` DISABLE KEYS */;
INSERT INTO `tblsolicitudaprobacion` VALUES (89,800000,700,2,7,'a82dhxaq1moryjz12h','Me cae por las patas.'),(90,777777,700,1,8,'a82dhxaq1horyk1s2i',NULL);
/*!40000 ALTER TABLE `tblsolicitudaprobacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsolicituddespeje`
--

DROP TABLE IF EXISTS `tblsolicituddespeje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsolicituddespeje` (
  `solicitudDespejeId` int(11) NOT NULL AUTO_INCREMENT,
  `solicitudDespejeHoras` float NOT NULL,
  `solicitudDespejeCuadrillas` int(11) NOT NULL,
  `solicitudDespejeCantidadPersonal` int(11) NOT NULL,
  `solicitudDespejeFecha` datetime NOT NULL,
  `solicitudDespejeCosto` float DEFAULT NULL,
  `tblsolicitudaprobacion_solicitudAprobacionId` int(11) NOT NULL,
  `estadoDespejeId` int(11) NOT NULL,
  `comentarioDespeje` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`solicitudDespejeId`),
  KEY `fk_tblsolicituddespeje_tblsolicitudaprobacion1_idx` (`tblsolicitudaprobacion_solicitudAprobacionId`),
  KEY `estadoId_idx` (`estadoDespejeId`),
  CONSTRAINT `estadoId` FOREIGN KEY (`estadoDespejeId`) REFERENCES `tblestadodespeje` (`estadoDespejeId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tblsolicituddespeje_tblsolicitudaprobacion1` FOREIGN KEY (`tblsolicitudaprobacion_solicitudAprobacionId`) REFERENCES `tblsolicitudaprobacion` (`solicitudAprobacionId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsolicituddespeje`
--

LOCK TABLES `tblsolicituddespeje` WRITE;
/*!40000 ALTER TABLE `tblsolicituddespeje` DISABLE KEYS */;
INSERT INTO `tblsolicituddespeje` VALUES (3,777,777,7,'2017-06-30 00:00:00',NULL,89,4,'');
/*!40000 ALTER TABLE `tblsolicituddespeje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsolicitudfactibilidad`
--

DROP TABLE IF EXISTS `tblsolicitudfactibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsolicitudfactibilidad` (
  `solicitudFactibilidadId` int(11) NOT NULL AUTO_INCREMENT,
  `voltajeId` int(11) NOT NULL,
  `conexionId` int(11) NOT NULL,
  `solicitudFactibilidadPotencia` float NOT NULL,
  `solicitudadFactibilidadCrecimientoEsperado` float NOT NULL,
  `solicitudFactibilidadKva` float NOT NULL,
  `estadoFactibilidadId` int(11) NOT NULL,
  `proyectoId` int(11) NOT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`solicitudFactibilidadId`),
  KEY `proyectoId_idx` (`proyectoId`),
  KEY `voltajeId_idx` (`voltajeId`),
  KEY `conexionID_idx` (`conexionId`),
  KEY `estadoFactibilidadId_idx` (`estadoFactibilidadId`),
  CONSTRAINT `conexionID` FOREIGN KEY (`conexionId`) REFERENCES `tblconexiones` (`conexionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estadoFactibilidadId` FOREIGN KEY (`estadoFactibilidadId`) REFERENCES `tblestadofactibilidad` (`estadoFactibilidadId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proyectoId` FOREIGN KEY (`proyectoId`) REFERENCES `tblproyectos` (`proyectoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `voltajeId` FOREIGN KEY (`voltajeId`) REFERENCES `tblvoltajes` (`voltajeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsolicitudfactibilidad`
--

LOCK TABLES `tblsolicitudfactibilidad` WRITE;
/*!40000 ALTER TABLE `tblsolicitudfactibilidad` DISABLE KEYS */;
INSERT INTO `tblsolicitudfactibilidad` VALUES (10,1,2,800,22,11,2,7,'Te lo aprobÃ© porque estas bien bueno');
/*!40000 ALTER TABLE `tblsolicitudfactibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsolicitudrecepcion`
--

DROP TABLE IF EXISTS `tblsolicitudrecepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsolicitudrecepcion` (
  `solicitudRecepcioId` int(11) NOT NULL AUTO_INCREMENT,
  `solicitudRecepcioEstado` int(11) NOT NULL,
  `solicitudAprobacionId` int(11) NOT NULL,
  PRIMARY KEY (`solicitudRecepcioId`),
  KEY `fk_tblSolicitudRecpcion_tblsolicitudaprobacion1_idx` (`solicitudAprobacionId`),
  KEY `estadoRecepcionId_idx` (`solicitudRecepcioEstado`),
  CONSTRAINT `estadoRecepcionId` FOREIGN KEY (`solicitudRecepcioEstado`) REFERENCES `tblestadorecepcion` (`estadoRecepcionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tblSolicitudRecpcion_tblsolicitudaprobacion1` FOREIGN KEY (`solicitudAprobacionId`) REFERENCES `tblsolicitudaprobacion` (`solicitudAprobacionId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsolicitudrecepcion`
--

LOCK TABLES `tblsolicitudrecepcion` WRITE;
/*!40000 ALTER TABLE `tblsolicitudrecepcion` DISABLE KEYS */;
INSERT INTO `tblsolicitudrecepcion` VALUES (4,3,89),(5,3,90);
/*!40000 ALTER TABLE `tblsolicitudrecepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltimbres`
--

DROP TABLE IF EXISTS `tbltimbres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltimbres` (
  `timbreId` int(11) NOT NULL AUTO_INCREMENT,
  `solicitudAprobacionId` int(11) NOT NULL,
  PRIMARY KEY (`timbreId`),
  KEY `solicitudAprobacionId_idx` (`solicitudAprobacionId`),
  CONSTRAINT `solicitudAprobacionId` FOREIGN KEY (`solicitudAprobacionId`) REFERENCES `tblsolicitudaprobacion` (`solicitudAprobacionId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltimbres`
--

LOCK TABLES `tbltimbres` WRITE;
/*!40000 ALTER TABLE `tbltimbres` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltimbres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipoproyectos`
--

DROP TABLE IF EXISTS `tbltipoproyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltipoproyectos` (
  `tipoId` int(11) NOT NULL AUTO_INCREMENT,
  `tipoDescrpcion` varchar(200) NOT NULL,
  PRIMARY KEY (`tipoId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltipoproyectos`
--

LOCK TABLES `tbltipoproyectos` WRITE;
/*!40000 ALTER TABLE `tbltipoproyectos` DISABLE KEYS */;
INSERT INTO `tbltipoproyectos` VALUES (5,'Particular'),(6,'Urbanización');
/*!40000 ALTER TABLE `tbltipoproyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuarios`
--

DROP TABLE IF EXISTS `tblusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusuarios` (
  `usuarioIdentidad` varchar(25) NOT NULL,
  `usuarioPrimerNombre` varchar(45) NOT NULL,
  `usuarioSegundoNombre` varchar(45) NOT NULL,
  `usuarioPrimerApellido` varchar(45) NOT NULL,
  `usuarioSegundoApellido` varchar(45) NOT NULL,
  `usuarioNumeroColegiacion` varchar(45) NOT NULL,
  `usuarioCelular` varchar(45) NOT NULL,
  `usuarioTelefono` varchar(45) NOT NULL,
  `usuarioDireccion` varchar(45) NOT NULL,
  `usuarioContrasenia` varchar(45) NOT NULL,
  `estadoCuentaId` int(11) NOT NULL,
  `rolId` int(11) NOT NULL,
  `usuarioCorreo` varchar(100) NOT NULL,
  `usuarioFechaIngreso` int(11) NOT NULL,
  PRIMARY KEY (`usuarioIdentidad`),
  KEY `rolId_idx` (`rolId`),
  KEY `estadoCuentaId_idx` (`estadoCuentaId`),
  CONSTRAINT `estadoCuentaId` FOREIGN KEY (`estadoCuentaId`) REFERENCES `tblestadocuenta` (`estadoCuentaId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rolId` FOREIGN KEY (`rolId`) REFERENCES `tblroles` (`rolId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuarios`
--

LOCK TABLES `tblusuarios` WRITE;
/*!40000 ALTER TABLE `tblusuarios` DISABLE KEYS */;
INSERT INTO `tblusuarios` VALUES ('0801199503314','Luis','Eduardo','Paz','Reyes','21548164','96425292','22308090','Portal del Bosque','76b98197d40a35db050f88c51c18c157',1,1,'luiseduardopazreyes@hotmail.es',1498148000),('56454564','kjkj','jjj','kjkjkj','kjkjk','55454','444','5555','sdsds','40cf74eac17703fe56b28d369ff966d5',1,4,'lslsl@gmail.com',1498252851);
/*!40000 ALTER TABLE `tblusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvoltajes`
--

DROP TABLE IF EXISTS `tblvoltajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblvoltajes` (
  `voltajeId` int(11) NOT NULL AUTO_INCREMENT,
  `voltajeDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`voltajeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvoltajes`
--

LOCK TABLES `tblvoltajes` WRITE;
/*!40000 ALTER TABLE `tblvoltajes` DISABLE KEYS */;
INSERT INTO `tblvoltajes` VALUES (1,'13.4 KV'),(2,'34.5 KV');
/*!40000 ALTER TABLE `tblvoltajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-23 16:03:22
