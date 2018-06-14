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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_tb`
--

LOCK TABLES `cliente_tb` WRITE;
/*!40000 ALTER TABLE `cliente_tb` DISABLE KEYS */;
INSERT INTO `cliente_tb` VALUES (2,'Guilherme Ola ',123456789,35562412,'guilherme@user','123',1,'Vermelho',2018,42.981,'Fiat Uno','cliente'),(3,'Israel Prestes',123454544,99999999,'israel@user','123',1,'Vermelho',2018,42.981,'Fiat Uno','cliente'),(5,'Jose Batista',789456123,5656585,'Jose@user','123',2,'Preto',2018,114.992,'Toyota Corolla','cliente'),(6,'heverson dias de moura',534565455,64324135,'heverson@cliente','123',2,'Preto',2018,114.992,'Toyota Corolla','cliente'),(7,'Guilherme Ola Prestes',789456,456123789,'guilherme@cliente','123',2,'Preto',2018,114.992,'Toyota Corolla','cliente'),(8,'Maria marta',123123,789456,'maria@cliente','123',3,'prata',2018,107.2,'Chevrolet S10','cliente');
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
INSERT INTO `data_tb` VALUES (1,'14/06/2018');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerente_tb`
--

LOCK TABLES `gerente_tb` WRITE;
/*!40000 ALTER TABLE `gerente_tb` DISABLE KEYS */;
INSERT INTO `gerente_tb` VALUES (1,'Guilherme Prestes',123456789,982303369,'guilherme@bluebox','123456','gerente'),(2,'Heverson dias de Moura',546521,16354234,'heverson@gerente','123','gerente'),(3,'Guilherme Ola Prestes',789456123,123456789,'guilherme@gerente','123','gerente');
/*!40000 ALTER TABLE `gerente_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premiado_tb`
--

DROP TABLE IF EXISTS `premiado_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premiado_tb` (
  `idpremiado` int(11) NOT NULL AUTO_INCREMENT,
  `premiado` varchar(45) NOT NULL,
  `idcliente` int(11) NOT NULL,
  PRIMARY KEY (`idpremiado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiado_tb`
--

LOCK TABLES `premiado_tb` WRITE;
/*!40000 ALTER TABLE `premiado_tb` DISABLE KEYS */;
INSERT INTO `premiado_tb` VALUES (1,'Maria marta',0);
/*!40000 ALTER TABLE `premiado_tb` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_tb`
--

LOCK TABLES `produto_tb` WRITE;
/*!40000 ALTER TABLE `produto_tb` DISABLE KEYS */;
INSERT INTO `produto_tb` VALUES (1,'Fiat Uno','Vermelho',2018,42.981),(2,'Toyota Corolla','Preto',2018,114.992),(3,'Chevrolet S10','prata',2018,107.2),(4,'Volkswagen Gol','Azul',2018,53.13),(5,'Volkswagem Fusca','verde',1968,10.999);
/*!40000 ALTER TABLE `produto_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sorteio_tb`
--

DROP TABLE IF EXISTS `sorteio_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sorteio_tb` (
  `id_sorteio` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(45) NOT NULL,
  `cpfCliente` varchar(45) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  PRIMARY KEY (`id_sorteio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sorteio_tb`
--

LOCK TABLES `sorteio_tb` WRITE;
/*!40000 ALTER TABLE `sorteio_tb` DISABLE KEYS */;
INSERT INTO `sorteio_tb` VALUES (1,'Israel Prestes','123454544',3,1),(4,'Guilherme Ola Prestes','789456',7,2),(5,'heverson dias de moura','534565455',6,2),(6,'heverson dias de moura','534565455',6,2),(7,'Maria marta','123123',8,3);
/*!40000 ALTER TABLE `sorteio_tb` ENABLE KEYS */;
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

-- Dump completed on 2018-06-14 16:38:10
