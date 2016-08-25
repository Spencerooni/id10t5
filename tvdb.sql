-- MySQL dump 10.13  Distrib 5.7.13, for Linux (x86_64)
--
-- Host: localhost    Database: tvdb
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Current Database: `tvdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tvdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tvdb`;

--
-- Table structure for table `Departments`
--

DROP TABLE IF EXISTS `Departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Departments` (
  `dep_id` smallint(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departments`
--

LOCK TABLES `Departments` WRITE;
/*!40000 ALTER TABLE `Departments` DISABLE KEYS */;
INSERT INTO `Departments` VALUES (1,'DOJ','The department of justice'),(2,'Cleaners','Cleaners of Kainos'),(3,'Evolve','Electronic solutions for Hospitals'),(4,'Enterprise','Electronic solutions for small govenment bodies and enterprises'),(5,'Research and Innovation','Research into no technologies and developing innovative projects'),(6,'GOV','Developing projects for government bodies');
/*!40000 ALTER TABLE `Departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `emp_id` smallint(6) NOT NULL,
  `dep_id` smallint(6) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `nin` varchar(9) NOT NULL,
  `iban` varchar(34) NOT NULL,
  `bic` varchar(11) NOT NULL,
  `salary` float NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postcode` varchar(7) NOT NULL,
  `address` varchar(150) NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `nin` (`nin`),
  KEY `dep_id` (`dep_id`),
  CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `Departments` (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,1,'Harry','Henry','MA980762A','dwiao21904108571205712','nkei2214921',15500,'Belfast','United Kingdom','BT86JS','10 Gillywag, Kings Road'),(2,2,'Cassandra','Derollo','PO986745A','dwko3892015190519051790','pokm2424211',12000,'Balamena','United Kingdom','BT984LK','32 Kongbeg, Sin Road'),(3,4,'Matthew','Merver','PA697195A','ovkf89052353285219','ou928354327',24000,'Belfast','United Kingdom','BT170RJ','135 Laurelbank, Poleglass'),(4,3,'Mark','Fulton','KA597195A','owel9875185210','IR483920921',24500,'Belfast','United Kingdom','BT170Rk','125 Laurelbank, Poleglass'),(5,3,'Patrick','Walsh','RE298473B','jipw521895021570192512','IR148531513',17500,'Belfast','United Kingdom','BT179LK','13 Cherry Road, Twinbrook'),(6,5,'David','Lavery','PK623873B','IOWJ42189052179041890','LO829146854',26750,'Lurgan','United Kingdom','BT679LK','10 Dollingstown'),(7,3,'Sammantha','Brown','ER487291B','OLER42189052179041890','UJ829149385',38750,'Belfast','United Kingdom','BT194IK','39 Sonton, Hannahstown Road');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Testdb`
--

DROP TABLE IF EXISTS `Testdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Testdb` (
  `id` smallint(6) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testdb`
--

LOCK TABLES `Testdb` WRITE;
/*!40000 ALTER TABLE `Testdb` DISABLE KEYS */;
INSERT INTO `Testdb` VALUES (1,'Testing','Testing again');
/*!40000 ALTER TABLE `Testdb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-25 14:09:59
