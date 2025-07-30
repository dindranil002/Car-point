CREATE DATABASE  IF NOT EXISTS `cars` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cars`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cars
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminlogin` (
  `uname` varchar(50) DEFAULT NULL,
  `uemail` varchar(45) DEFAULT NULL,
  `upwd` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES ('admin','admin@gmail.com','32651');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_dtls`
--

DROP TABLE IF EXISTS `car_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_dtls` (
  `carId` int NOT NULL AUTO_INCREMENT,
  `carName` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`carId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_dtls`
--

LOCK TABLES `car_dtls` WRITE;
/*!40000 ALTER TABLE `car_dtls` DISABLE KEYS */;
INSERT INTO `car_dtls` VALUES (1,'Audi','X7','4 Seater','500','Active','download.jpeg','admin'),(5,'Mahindra','Scorpio','7 Seater','1000','Active','download.jpeg','admin'),(6,'Mahindra','XUV 700','7 Seater','1200','Active','images.jpeg','admin');
/*!40000 ALTER TABLE `car_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) DEFAULT NULL,
  `uemail` varchar(45) DEFAULT NULL,
  `umobile` varchar(45) DEFAULT NULL,
  `upwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ABC','abc@gmail.com','754826','1234'),(2,'Debayan','debayanbose@gmail.com','123456789','56789'),(3,'Db','db@gmail.com','12564','2222'),(4,'Db','db@gmail.com','45266','2222'),(5,'Gublu','gublu@gmail.com','956494','101010'),(6,'AB','ab@gmail.com','58469',NULL),(7,'AB','ab@gmail.com','51666',NULL),(8,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL),(15,'Debayan ','debayanbose52@gmail.com','4645666','123'),(16,'Debayan ','debayanbose52@gmail.com','1234567891','123'),(17,'Debayan ','debayanbose1214@gmail.com','5236256478','123'),(18,'Debayan ','debayanbose@gmail.com','1234567890','123'),(19,'Debayan ','debayanbose@gmail.com','1234','123'),(20,'Debayan ','debayanbose52@gmail.com','123654','123'),(21,'Debayan ','debayanbose@gmail.com','1256','123'),(22,'Debayan ','debayanbose52@gmail.com','1256','123'),(23,'Debayan ','debayanbose@gmail.com','1234567890','123'),(24,'Debayan ','debayanbose52@gmail.com','1234567890','123'),(25,'Debayan ','debayanbose52@gmail.com','1234567890','123'),(26,'Debayan ','debayanbose@gmail.com','1234567890','123'),(27,'Debayan ','debayanbose1214@gmail.com','5236444587','123'),(28,'sanu','debayanbose52@gmail.com','8569315748','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_booking`
--

DROP TABLE IF EXISTS `user_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_booking` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `userEmail` varchar(45) DEFAULT NULL,
  `userMobile` varchar(45) DEFAULT NULL,
  `userAddress` varchar(45) DEFAULT NULL,
  `userStartDate` date DEFAULT NULL,
  `userReturnDate` date DEFAULT NULL,
  `userAmount` double DEFAULT NULL,
  `carModel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_booking`
--

LOCK TABLES `user_booking` WRITE;
/*!40000 ALTER TABLE `user_booking` DISABLE KEYS */;
INSERT INTO `user_booking` VALUES (1,'Indranil','indranil@gmail.com','55651131','SaltLake','2023-10-13','2023-10-20',521,NULL),(2,'Indranil','indranil@gmail.com','45622','SaltLake','2023-10-19','2023-10-28',5214,NULL),(3,'Debasis','debasish@gmail.com','52634252','H4','2023-10-12','2023-10-19',5214,NULL),(4,'Debayan Bose','debayan@gmail.com','56233','belgharia','2023-10-12','2023-10-14',5215,NULL),(5,'Sb','df@gmail.com','95491','bel','2023-11-17','2023-12-05',500,NULL),(6,'Sb','df@gmail.com','8998','bel','2023-12-01','2023-11-15',50,NULL),(7,'Sb','df@gmail.com','52665','bel','2023-11-22','2023-11-30',523,NULL),(8,'Sb','df@gmail.com','12563488','bel','2023-12-06','2023-11-28',51,NULL),(9,'Sb','df@gmail.com','5615','bel','2023-11-24','2023-11-22',523,NULL),(10,'Sb','df@gmail.com','1551','bel','2023-11-30','2023-12-03',223,NULL);
/*!40000 ALTER TABLE `user_booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 21:05:22
