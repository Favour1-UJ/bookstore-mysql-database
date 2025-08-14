CREATE DATABASE  IF NOT EXISTS `bookstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookstore`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `Author_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'John','Smith','USA','John Smith'),(2,'Mary','Johnson','UK','Mary Johnson'),(3,'David','Williams','Canada','David Williams'),(4,'Sarah','Brown','Australia','Sarah Brown'),(5,'James','Jones','USA','James Jones'),(6,'Emily','Garcia','Spain','Emily Garcia'),(7,'Michael','Martinez','Mexico','Michael Martinez'),(8,'Linda','Rodriguez','Brazil','Linda Rodriguez'),(9,'Robert','Davis','USA','Robert Davis'),(10,'Patricia','Miller','UK','Patricia Miller'),(11,'Charles','Wilson','France','Charles Wilson'),(12,'Barbara','Moore','USA','Barbara Moore'),(13,'Daniel','Taylor','South Africa','Daniel Taylor'),(14,'Jennifer','Anderson','Canada','Jennifer Anderson'),(15,'Christopher','Thomas','USA','Christopher Thomas'),(16,'Olivia','Hernandez','Argentina','Olivia Hernandez'),(17,'Matthew','Lopez','Colombia','Matthew Lopez'),(18,'Sophia','Clark','USA','Sophia Clark'),(19,'Anthony','Lewis','UK','Anthony Lewis'),(20,'Isabella','Walker','USA','Isabella Walker'),(21,'Ethan','Hall','New Zealand','Ethan Hall'),(22,'Mia','Allen','USA','Mia Allen'),(23,'Alexander','Young','Ireland','Alexander Young'),(24,'Ava','King','USA','Ava King'),(25,'William','Wright','USA','William Wright'),(26,'Charlotte','Scott','UK','Charlotte Scott'),(27,'Benjamin','Green','USA','Benjamin Green'),(28,'Amelia','Baker','Canada','Amelia Baker'),(29,'Lucas','Adams','USA','Lucas Adams'),(30,'Harper','Nelson','USA','Harper Nelson'),(31,'Henry','Carter','Australia','Henry Carter'),(32,'Evelyn','Mitchell','USA','Evelyn Mitchell'),(33,'Jack','Perez','USA','Jack Perez'),(34,'Luna','Roberts','USA','Luna Roberts'),(35,'Owen','Turner','USA','Owen Turner'),(36,'Ella','Phillips','USA','Ella Phillips'),(37,'Samuel','Campbell','UK','Samuel Campbell'),(38,'Scarlett','Parker','USA','Scarlett Parker'),(39,'Joseph','Evans','USA','Joseph Evans'),(40,'Grace','Edwards','USA','Grace Edwards');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_inventory`
--

DROP TABLE IF EXISTS `book_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_inventory` (
  `Book_id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(500) NOT NULL,
  `Author_id` int NOT NULL,
  `Category_id` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity_in_stock` int NOT NULL,
  PRIMARY KEY (`Book_id`),
  KEY `book_inventory_ibfk_1` (`Author_id`),
  KEY `book_inventory_ibfk_2` (`Category_id`),
  CONSTRAINT `book_inventory_ibfk_1` FOREIGN KEY (`Author_id`) REFERENCES `authors` (`Author_id`),
  CONSTRAINT `book_inventory_ibfk_2` FOREIGN KEY (`Category_id`) REFERENCES `categories` (`Category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_inventory`
--

LOCK TABLES `book_inventory` WRITE;
/*!40000 ALTER TABLE `book_inventory` DISABLE KEYS */;
INSERT INTO `book_inventory` VALUES (1,'Shadows of the Nile',5,2,8500.00,25),(2,'The Crimson Crown',12,1,12000.00,15),(3,'Whispers in the Fog',8,4,5400.00,30),(4,'Beyond the Horizon',3,7,9800.00,20),(5,'Tales of the Savannah',16,5,6400.00,40),(6,'Moonlight Sonata',9,3,7100.00,22),(7,'Echoes of Eternity',21,9,14800.00,18),(8,'Winds of Fortune',4,6,9200.00,12),(9,'Beneath the Banyan Tree',30,8,5500.00,34),(10,'The Glass Labyrinth',7,2,10500.00,14),(11,'Path of the Phoenix',25,1,7700.00,29),(12,'The Silent Voyage',18,3,9700.00,10),(13,'Fires of Dawn',14,5,8900.00,20),(14,'Storm over Kilimanjaro',1,7,13200.00,8),(15,'The Forgotten Scrolls',33,4,6900.00,25),(16,'River of Secrets',6,6,7800.00,17),(17,'Dance of the Fireflies',10,9,4300.00,33),(18,'The Painted Desert',22,8,8100.00,15),(19,'Lords of the Realm',27,2,15000.00,9),(20,'The Silver Compass',11,1,13400.00,28),(21,'In the Shadow of Giants',5,5,6200.00,31),(22,'The Lost Citadel',37,4,9500.00,21),(23,'Oceans Apart',19,7,12300.00,11),(24,'Seeds of Destiny',8,6,8400.00,13),(25,'The Emerald Mask',15,3,7600.00,24),(26,'Threads of Time',26,9,6700.00,22),(27,'Song of the Highlands',31,8,4300.00,45),(28,'The Forgotten Kingdom',2,1,11000.00,19),(29,'Sands of Eternity',12,2,5700.00,40),(30,'The Sapphire Blade',4,5,9100.00,20),(31,'Under the Mango Tree',7,7,5200.00,36),(32,'A Winter’s Tale',13,3,13900.00,15),(33,'Rise of the Falcon',9,6,7700.00,25),(34,'The Marble Throne',36,4,10200.00,16),(35,'Wings of the Storm',14,8,5900.00,29),(36,'Voices of the Deep',28,9,8200.00,18),(37,'Candle in the Wind',1,5,6400.00,27),(38,'The Iron Gate',33,2,8700.00,20),(39,'Legends of the Savannah',16,7,12500.00,12),(40,'The Golden Orchard',17,6,7300.00,38),(41,'Bridge to Tomorrow',35,1,11200.00,21),(42,'The Amber Spyglass',23,3,9100.00,14),(43,'Tides of Memory',32,4,8800.00,19),(44,'The Night Watchman',6,9,4700.00,42),(45,'Crown of Ashes',11,8,14000.00,15),(46,'The Hidden Oasis',27,6,6400.00,20),(47,'Bells of Autumn',5,5,7800.00,13),(48,'Voyage of the Dawn',20,7,9400.00,28),(49,'The Serpent’s Call',38,2,6000.00,37),(50,'Pearls of the Orient',24,1,12500.00,16);
/*!40000 ALTER TABLE `book_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Category_id` int NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(50) NOT NULL,
  `Description` text,
  PRIMARY KEY (`Category_id`),
  UNIQUE KEY `Category_id_UNIQUE` (`Category_id`),
  UNIQUE KEY `Category_name_UNIQUE` (`Category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Fiction','Narrative books based on imaginative storytelling.'),(2,'Historical','Books exploring past events and historical figures.'),(3,'Science & Technology','Covers scientific topics and technological advancements.'),(4,'Mystery & Thriller','Suspenseful stories with twists and turns.'),(5,'Romance','Stories centered around love and relationships.'),(6,'Self-Help',NULL),(7,'Adventure','Action-packed books involving journeys or quests.'),(8,'Biography','Life stories of notable individuals.'),(9,'Fantasy',NULL),(10,'Children Book','Books written for young readers with age-appropriate themes.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_information`
--

DROP TABLE IF EXISTS `customer_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_information` (
  `Customer_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Phone_number` varchar(11) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` text,
  PRIMARY KEY (`Customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_information`
--

LOCK TABLES `customer_information` WRITE;
/*!40000 ALTER TABLE `customer_information` DISABLE KEYS */;
INSERT INTO `customer_information` VALUES (1,'Chinedu','Okafor','08031234567','chinedu.okafor@example.com','12 Ajose Street, Lagos'),(2,'Amaka','Umeh','08051234568','amaka.umeh@example.com','45 Marina Road, Port Harcourt'),(3,'Tunde','Adebayo','08071234569','tunde.adebayo@example.com','18 Unity Avenue, Ibadan'),(4,'Kemi','Balogun','08081234570','kemi.balogun@example.com','21 Garki Street, Abuja'),(5,'Ifeanyi','Nwosu','08101234571','ifeanyi.nwosu@example.com','30 Enugu Road, Onitsha'),(6,'Ngozi','Eze','08121234572','ngozi.eze@example.com','55 Aba Road, Owerri'),(7,'Suleiman','Bello','08131234573','suleiman.bello@example.com','7 Independence Layout, Kaduna'),(8,'Blessing','Okeke','08141234574','blessing.okeke@example.com','25 Iweka Street, Awka'),(9,'Emeka','Chukwu','08151234575','emeka.chukwu@example.com','14 Okigwe Road, Umuahia'),(10,'Fatima','Abubakar','08161234576','fatima.abubakar@example.com','9 Kano Street, Kano'),(11,'Gbenga','Olawale','08171234577','gbenga.olawale@example.com','3 Oluyole Crescent, Ibadan'),(12,'Maryam','Sani','08181234578','maryam.sani@example.com','88 Ahmadu Bello Way, Abuja'),(13,'Victor','Okoro','08191234579','victor.okoro@example.com','41 Oguta Road, Owerri'),(14,'Patience','Opara','09011234580','patience.opara@example.com','26 Rumuola Road, Port Harcourt'),(15,'Chika','Anya','09021234581','chika.anya@example.com','17 Ikenegbu Layout, Owerri'),(16,'Bola','Ogunleye','09031234582','bola.ogunleye@example.com','61 Lekki Phase 1, Lagos'),(17,'Samuel','Ekanem','09041234583','samuel.ekanem@example.com','15 Oron Road, Uyo'),(18,'Grace','Adeniran','09051234584','grace.adeniran@example.com','20 Bodija Estate, Ibadan'),(19,'Yusuf','Ali','09061234585','yusuf.ali@example.com','34 Maiduguri Road, Kano'),(20,'Esther','Nwachukwu','09071234586','esther.nwachukwu@example.com','11 Ogui Road, Enugu'),(21,'Chisom','Ekeh','09081234587','chisom.ekeh@example.com','19 Abakaliki Street, Abakaliki'),(22,'Aisha','Mohammed','09091234588','aisha.mohammed@example.com','47 Bompai Road, Kano'),(23,'Peter','Adeoye','08111234589','peter.adeoye@example.com','33 Allen Avenue, Ikeja'),(24,'Ruth','Ogbonna','08121234590','ruth.ogbonna@example.com','29 Okpara Avenue, Enugu'),(25,'Ibrahim','Lawal','08131234591','ibrahim.lawal@example.com','10 Sabo Road, Zaria'),(26,'Joy','Uzo','08141234592','joy.uzo@example.com','5 New Haven, Enugu'),(27,'David','Akintola','08151234593','david.akintola@example.com','18 Challenge Road, Ibadan'),(28,'Oluchi','Nnaji','08161234594','oluchi.nnaji@example.com','22 Upper Iweka, Onitsha'),(29,'Kelvin','Osei','08171234595','kelvin.osei@example.com','40 Ring Road, Benin City'),(30,'Abdul','Musa','08181234596','abdul.musa@example.com','8 Airport Road, Ilorin'),(31,'Funke','Adebanjo','08191234597','funke.adebanjo@example.com','6 Agege Road, Lagos'),(32,'Daniel','Okeke','09011234598','daniel.okeke@example.com','12 Oba Akran Avenue, Ikeja'),(33,'Zainab','Hassan','09021234599','zainab.hassan@example.com','50 Ahmadu Bello Way, Kaduna'),(34,'Michael','Ojo','09031234600','michael.ojo@example.com','13 Ogunlana Drive, Surulere'),(35,'Loveth','Anyanwu','09041234601','loveth.anyanwu@example.com','16 Timber Road, Abakaliki'),(36,'Uchenna','Ibe','09051234602','uchenna.ibe@example.com','27 Orlu Road, Owerri'),(37,'Henry','Okonkwo','09061234603','henry.okonkwo@example.com','36 Aba Road, Aba'),(38,'Ngozi','Okorie','09071234604','ngozi.okorie@example.com','15 Eziukwu Road, Aba'),(39,'Stephen','Adeyemi','09081234605','stephen.adeyemi@example.com','19 Obafemi Awolowo Way, Ibadan'),(40,'Vivian','Nwaeke','09091234606','vivian.nwaeke@example.com','4 Choba Road, Port Harcourt');
/*!40000 ALTER TABLE `customer_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `Sales_id` int NOT NULL AUTO_INCREMENT,
  `Customer_id` int NOT NULL,
  `Total_amount` decimal(10,2) NOT NULL,
  `Sales_date` date NOT NULL,
  PRIMARY KEY (`Sales_id`),
  KEY `sales_ibfk_1` (`Customer_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer_information` (`Customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,8500.00,'2025-01-05'),(2,2,12000.00,'2025-01-06'),(3,3,5400.00,'2025-01-06'),(4,4,9800.00,'2025-01-07'),(5,5,6400.00,'2025-01-07'),(6,6,7100.00,'2025-01-08'),(7,7,14800.00,'2025-01-09'),(8,8,9200.00,'2025-01-09'),(9,9,5500.00,'2025-01-10'),(10,10,10500.00,'2025-01-11'),(11,11,7700.00,'2025-01-11'),(12,12,9700.00,'2025-01-12'),(13,13,8900.00,'2025-01-13'),(14,14,13200.00,'2025-01-14'),(15,15,6900.00,'2025-01-14'),(16,16,7800.00,'2025-01-15'),(17,17,4300.00,'2025-01-15'),(18,18,8100.00,'2025-01-16'),(19,19,15000.00,'2025-01-16'),(20,20,13400.00,'2025-01-17'),(21,1,20500.00,'2025-01-18'),(22,3,14600.00,'2025-01-19'),(23,5,11900.00,'2025-01-20'),(24,7,25300.00,'2025-01-20'),(25,8,16900.00,'2025-01-21'),(26,10,20200.00,'2025-01-22'),(27,11,16600.00,'2025-01-23'),(28,12,22900.00,'2025-01-24'),(29,13,15800.00,'2025-01-25'),(30,14,21000.00,'2025-01-25'),(31,15,11200.00,'2025-01-26'),(32,16,15900.00,'2025-01-26'),(33,17,19300.00,'2025-01-27'),(34,18,21500.00,'2025-01-27'),(35,19,23500.00,'2025-01-28'),(36,20,18800.00,'2025-01-29'),(37,2,21800.00,'2025-01-30'),(38,4,16200.00,'2025-01-30'),(39,6,21900.00,'2025-01-31');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `Transaction_id` int NOT NULL AUTO_INCREMENT,
  `Sales_id` int NOT NULL,
  `Book_id` int NOT NULL,
  `Quantity_sold` int NOT NULL,
  `Payment_method` varchar(50) NOT NULL,
  PRIMARY KEY (`Transaction_id`),
  KEY `transactions_ibfk_1` (`Sales_id`),
  KEY `transactions_ibfk_2` (`Book_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`Sales_id`) REFERENCES `sales` (`Sales_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`Book_id`) REFERENCES `book_inventory` (`Book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,1,1,'Cash'),(2,2,2,1,'Card'),(3,3,3,1,'Transfer'),(4,4,4,1,'Cash'),(5,5,5,1,'Card'),(6,6,6,1,'Cash'),(7,7,7,1,'Transfer'),(8,8,8,1,'Card'),(9,9,9,1,'Cash'),(10,10,10,1,'Transfer'),(11,11,11,1,'Card'),(12,12,12,1,'Cash'),(13,13,13,1,'Transfer'),(14,14,14,1,'Card'),(15,15,15,1,'Cash'),(16,16,16,1,'Transfer'),(17,17,17,1,'Card'),(18,18,18,1,'Cash'),(19,19,19,1,'Transfer'),(20,20,20,1,'Card'),(21,21,1,1,'Cash'),(22,21,2,1,'Cash'),(23,22,3,1,'Card'),(24,22,8,1,'Card'),(25,23,5,1,'Transfer'),(26,23,9,1,'Transfer'),(27,24,7,1,'Cash'),(28,24,10,1,'Cash'),(29,25,8,1,'Transfer'),(30,25,11,1,'Transfer'),(31,26,10,1,'Card'),(32,26,12,1,'Card'),(33,27,11,1,'Cash'),(34,27,13,1,'Cash'),(35,28,12,1,'Transfer'),(36,29,13,1,'Card'),(37,29,15,1,'Card'),(38,30,14,1,'Cash'),(39,30,16,1,'Cash'),(40,31,15,1,'Transfer'),(41,31,17,1,'Transfer'),(42,32,16,1,'Card'),(43,32,18,1,'Card'),(44,33,17,1,'Cash'),(45,33,19,1,'Cash'),(46,34,18,1,'Transfer'),(47,34,20,1,'Transfer'),(48,35,19,1,'Card'),(49,35,1,1,'Card'),(50,36,20,1,'Cash'),(51,36,3,1,'Cash'),(52,37,2,1,'Transfer'),(53,37,4,1,'Transfer'),(54,38,4,1,'Card'),(55,38,5,1,'Card'),(56,39,6,1,'Cash'),(57,39,7,1,'Cash');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-14  3:12:28
