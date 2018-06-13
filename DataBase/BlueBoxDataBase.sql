-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bluebox_db
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `cliente_tb`
--

DROP TABLE IF EXISTS `cliente_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_tb` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `cpf_cliente` int(11) NOT NULL,
  `telefone_cliente` int(11) NOT NULL,
  `email_cliente` varchar(50) NOT NULL,
  `senha_cliente` varchar(45) NOT NULL,
  `idproduto_cliente` int(11) NOT NULL,
  `cor_cliente` varchar(45) NOT NULL,
  `ano_cliente` int(11) NOT NULL,
  `valor_cliente` double NOT NULL,
  `marca_cliente` varchar(45) NOT NULL,
  `tipe` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_tb`
--

LOCK TABLES `cliente_tb` WRITE;
/*!40000 ALTER TABLE `cliente_tb` DISABLE KEYS */;
INSERT INTO `cliente_tb` VALUES (2,'Guilherme Ola ',123456789,35562412,'guilherme@user','123',1,'Vermelho',2018,42.981,'Fiat Uno','cliente'),(3,'Israel Prestes',123454544,99999999,'israel@user','123',1,'Vermelho',2018,42.981,'Fiat Uno','cliente');
/*!40000 ALTER TABLE `cliente_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_tb`
--

DROP TABLE IF EXISTS `data_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_tb` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(45) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_tb`
--

LOCK TABLES `data_tb` WRITE;
/*!40000 ALTER TABLE `data_tb` DISABLE KEYS */;
INSERT INTO `data_tb` VALUES (1,'16/08/2019'),(2,'28/10/2019');
/*!40000 ALTER TABLE `data_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerente_tb`
--

DROP TABLE IF EXISTS `gerente_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerente_tb` (
  `id_gerente` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `cpf` int(50) NOT NULL,
  `telefone` int(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `tipe` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_gerente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerente_tb`
--

LOCK TABLES `gerente_tb` WRITE;
/*!40000 ALTER TABLE `gerente_tb` DISABLE KEYS */;
INSERT INTO `gerente_tb` VALUES (1,'Guilherme Prestes',123456789,982303369,'guilherme@bluebox','123456','gerente');
/*!40000 ALTER TABLE `gerente_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_tb`
--

DROP TABLE IF EXISTS `produto_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_tb` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `cor` varchar(45) NOT NULL,
  `ano` int(11) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_tb`
--

LOCK TABLES `produto_tb` WRITE;
/*!40000 ALTER TABLE `produto_tb` DISABLE KEYS */;
INSERT INTO `produto_tb` VALUES (1,'Fiat Uno','Vermelho',2018,42.981);
/*!40000 ALTER TABLE `produto_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_tb`
--

DROP TABLE IF EXISTS `usuario_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_tb` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `tipe` varchar(45) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_tb`
--

LOCK TABLES `usuario_tb` WRITE;
/*!40000 ALTER TABLE `usuario_tb` DISABLE KEYS */;
INSERT INTO `usuario_tb` VALUES (1,'admin','admin','administrador');
/*!40000 ALTER TABLE `usuario_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 17:34:12
