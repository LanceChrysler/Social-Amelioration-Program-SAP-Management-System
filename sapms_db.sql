-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: sapms_db
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `family_head`
--

DROP TABLE IF EXISTS `family_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_head` (
  `FamNo` int NOT NULL,
  `IDNo` varchar(25) NOT NULL,
  `IDType` varchar(25) NOT NULL,
  `Income` double DEFAULT NULL,
  `WorkAdd` varchar(80) DEFAULT NULL,
  `PhoneNo` char(11) NOT NULL,
  `UCTBeneficiary` char(1) NOT NULL,
  `4PsBeneficiary` char(1) NOT NULL,
  `IndigenousGroup` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`FamNo`),
  CONSTRAINT `FamNo` FOREIGN KEY (`FamNo`) REFERENCES `family_member` (`FamNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_head`
--

LOCK TABLES `family_head` WRITE;
/*!40000 ALTER TABLE `family_head` DISABLE KEYS */;
INSERT INTO `family_head` VALUES (1,'2302-054A-Z65243CFEC19994','Voter\'s ID',3000,'12615 San Pablo St. Mabuhay','09162398000','N','N',NULL),(6,'D01-42-98765','Driver\'s License',10000,'Kabankalan, Negros Occidental','09498722033','N','N',NULL),(10,'9512','Senior Citizen ID',NULL,NULL,'09663987123','N','Y',NULL),(12,'2134','Senior Citizen ID',NULL,NULL,'09723164578','Y','N','Lumad'),(14,'2731-090F-H32904IUBD13320','Voters\'s ID',25000,'#45 Magnolia St., Wood Estate Village 2, Molino 3, Bacoor, Cavite','09279759166','Y','N',NULL),(18,'P13-34-00932','Driver\'s License',6500,'General Trias City, Cavite','09183564455','N','N',NULL),(21,'4492-913G-T99243FDEF33255','Voter\'s ID',5900,'Barangay North Poblacion, Dipaculao, Aurora','09268739821','Y','N','Mangyan'),(24,'1482-763Y-S34645TFAW67895','Voter\'s ID',NULL,NULL,'09654236718','N','Y',NULL),(28,'3765-209S-A12354YSAY87654','Voter\'s ID',16000,'Naga Road, Pasig City, Manila','09994261734','N','N',NULL),(31,'G23-88-65276','Driver\'s License',18000,'Maharlika Highway, San Pablo City, Laguna','09198365243','N','N',NULL),(35,'5843-831B-M34356HFGH12345','Voter\'s ID',10000,'Barangay 05, Baler, Aurora','09527836521','N','Y','Igorot'),(40,'7654-314C-N26543GGSS43210','Voter\'s ID',28000,'Nable St, Downtown District, Dagupan, Pangasinan','09873548723','N','N',NULL),(45,'6755-999B-A00915ASDC60000','Voter\'s ID',5000,'Makati, Manila','09123456789','N','N',NULL),(48,'2157-539A-R00915BGHC90001','Voter\'s ID',10000,'987 San Miguel Street, Carmona, Cavite','09875645443','N','Y',NULL),(50,'R04-88-2016','Drivers Licence',9000,'Quezon City','09232432556','Y','N',NULL),(53,'53111','Senior Citizen ID',NULL,NULL,'09252456543','N','N',NULL);
/*!40000 ALTER TABLE `family_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_member`
--

DROP TABLE IF EXISTS `family_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_member` (
  `FamNo` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `City` varchar(25) NOT NULL,
  `Province` varchar(25) NOT NULL,
  `Region` varchar(25) NOT NULL,
  `Work` varchar(20) DEFAULT NULL,
  `Sector` varchar(12) DEFAULT NULL,
  `HealthCond` int DEFAULT NULL,
  `Sex` char(1) NOT NULL,
  `Birthdate` date NOT NULL,
  `Role` char(1) NOT NULL,
  `Relation` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`FamNo`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_member`
--

LOCK TABLES `family_member` WRITE;
/*!40000 ALTER TABLE `family_member` DISABLE KEYS */;
INSERT INTO `family_member` VALUES (1,'Maria Rosa S. Relox','12615 San Pablo St. Mabuhay','Carmona','Cavite','IV-A','Tailor','E',NULL,'F','1962-05-05','H',NULL),(2,'Ronaldo S. Relox','12615 San Pablo St. Mabuhay','Carmona','Cavite','IV-A','Civil Engineer',NULL,NULL,'M','1995-01-05','M','Son'),(3,'Rolando S. Relox','12615 San Pablo St. Mabuhay','Carmona','Cavite','IV-A','Student',NULL,NULL,'M','2000-10-20','M','Son'),(4,'Reynaldo S. Relox','12615 San Pablo St. Mabuhay','Carmona','Cavite','IV-A','Student',NULL,4,'M','2007-06-01','M','Son'),(5,'Arnaldo S. Relox Jr.','12615 San Pablo St. Mabuhay','Carmona','Cavite','IV-A','Student',NULL,NULL,'M','2011-11-11','M','Son'),(6,'Steven T. Romero','10315 Gomez St. Brgy. Bacuyangan','Hinoba-an','Negros Occidental','VI','Bus Driver',NULL,1,'M','1982-06-01','H',NULL),(7,'Arlene P. Romero','10315 Gomez St. Brgy. Bacuyangan','Hinoba-an','Negros Occidental','VI','Housewife',NULL,NULL,'F','1981-09-07','M','Wife'),(8,'Marites P. Romero','10315 Gomez St. Brgy. Bacuyangan','Hinoba-an','Negros Occidental','VI','Call Center Agent','C E',NULL,'F','1999-06-26','M','Daughter'),(9,'Dave P. Romero','10315 Gomez St. Brgy. Bacuyangan','Hinoba-an','Negros Occidental','VI','Student',NULL,NULL,'M','2005-07-09','M','Son'),(10,'Dominador H. Vargas','Blk 2 Lot 9 San Isidro Village','Cabuyao','Laguna','IV-A',NULL,'A',2,'M','1947-07-22','H',NULL),(11,'Tessa G.Vargas','Blk 2 Lot 9 San Isidro Village','Cabuyao','Laguna','IV-A',NULL,'A',2,'F','1949-11-19','M','Wife'),(12,'Armando G. Tesoro','0312 Brgy. Bulaoen East','Sison','Pangasinan','I',NULL,'A E',2,'M','1951-03-18','H',NULL),(13,'Benjamin A. Tesoro','0312 Brgy. Bulaoen East','Sison','Pangasinan','I','Construction Worker',NULL,NULL,'M','1971-11-10','M','Son'),(14,'Roel D. Flores','#45 Magnolia St., Wood Estate Village 2, Molino 3','Bacoor','Cavite','IV-A','Self-employed',NULL,NULL,'M','1978-06-30','H',NULL),(15,'Irma A. Flores','#45 Magnolia St., Wood Estate Village 2, Molino 3','Bacoor','Cavite','IV-A','Self-employed',NULL,5,'F','1982-02-16','M','Wife'),(16,'Danice Ria A. Flores','#45 Magnolia St., Wood Estate Village 2, Molino 3','Bacoor','Cavite','IV-A','Student',NULL,NULL,'F','2002-03-27','M','Daughter'),(17,'Daniel Roy A. Flores','#45 Magnolia St., Wood Estate Village 2, Molino 3','Bacoor','Cavite','IV-A','Student',NULL,NULL,'M','2007-04-12','M','Son'),(18,'Gregorio O. Espinosa','Blk 22 Lot 32, Tierra Solana Phase 2, Buenavista III','General Trias City','Cavite','IV-A','Tricycle Driver',NULL,NULL,'M','1989-09-08','H',NULL),(19,'Zenaida M. Espinosa','Blk 22 Lot 32, Tierra Solana Phase 2, Buenavista III','General Trias City','Cavite','IV-A','Teacher','C',NULL,'F','1986-01-02','M','Wife'),(20,'Melisa M. Espinosa','Blk 22 Lot 32, Tierra Solana Phase 2, Buenavista III','General Trias City','Cavite','IV-A',NULL,NULL,NULL,'F','2020-08-23','M','Daughter'),(21,'Mary Anne E. Hernandez','002 Do¤a Aurora Street, South Poblacion','Dipaculao','Aurora','III','Street Sweeper',NULL,NULL,'F','1978-04-13','H',NULL),(22,'Kathrine Mae E. Hernandez','002 Do¤a Aurora Street, South Poblacion','Dipaculao','Aurora','III','Student',NULL,3,'F','2001-03-07','M','Daughter'),(23,'Karyl Angela E. Hernandez','002 Do¤a Aurora Street, South Poblacion','Dipaculao','Aurora','III','Student',NULL,NULL,'F','2004-02-01','M','Daughter'),(24,'Jerald G. Salon','49 Marigold St., Pilar Village, Barangay Pilar','Pasig City','Manila','NCR',NULL,NULL,4,'M','1968-11-28','H',NULL),(25,'Marites A. Salon','49 Marigold St., Pilar Village, Barangay Pilar','Pasig City','Manila','NCR',NULL,NULL,NULL,'F','1972-07-08','M','Wife'),(26,'Kristine Marianne A. Salon','49 Marigold St., Pilar Village, Barangay Pilar','Pasig City','Manila','NCR','Electrical Engineer',NULL,NULL,'F','1994-05-15','M','Daughter'),(27,'Jerico A. Salon','49 Marigold St., Pilar Village, Barangay Pilar','Pasig City','Manila','NCR',NULL,NULL,NULL,'M','2000-06-15','M','Son'),(28,'Josefina M. Verde','48 Opal St. Las Pinas Royale Subd. Naga Road','Las Pinas','Manila','NCR','Street Vendor','C E',NULL,'F','1985-05-18','H',NULL),(29,'Joana M. Verde','48 Opal St. Las Pinas Royale Subd. Naga Road','Las Pinas','Manila','NCR','Call Center Agent',NULL,NULL,'F','2001-05-18','M','Daughter'),(30,'Sofia Nicole M. Verde','48 Opal St. Las Pinas Royale Subd. Naga Road','Las Pinas','Manila','NCR',NULL,NULL,NULL,'F','2019-10-10','M','Daughter'),(31,'Margie D. Amil','Block 21, Lot 3, NHA Subdivision, Brgy. Sto. Angel','San Pablo City','Laguna','IV-A','Medical Technologist',NULL,NULL,'F','1984-10-16','H',NULL),(32,'Jake Paolo D. Amil','Block 21, Lot 3, NHA Subdivision, Brgy. Sto. Angel','San Pablo City','Laguna','IV-A','Software Engineer',NULL,2,'M','1980-01-28','M','Husband'),(33,'Paul Lester D. Amil','Block 21, Lot 3, NHA Subdivision, Brgy. Sto. Angel','San Pablo City','Laguna','IV-A','Student',NULL,3,'M','1999-01-29','M','Son'),(34,'Chesca A. Amil','Block 21, Lot 3, NHA Subdivision, Brgy. Sto. Angel','San Pablo City','Laguna','IV-A','Student',NULL,3,'M','2002-04-29','M','Daughter'),(35,'Carlos G. Tuazon','014 Burgos Street, Barangay 05','Baler','Aurora','III','Self-employed',NULL,4,'M','1974-03-14','H',NULL),(36,'Sheralyn M. Tuazon','014 Burgos Street, Barangay 05','Baler','Aurora','III','Self-employed','B',NULL,'F','1977-04-05','M','Wife'),(37,'Cyrish Shane M. Tuazon','014 Burgos Street, Barangay 05','Baler','Aurora','III','Student',NULL,NULL,'F','1998-05-06','M','Daughter'),(38,'Krisler Mark M. Tuazon','014 Burgos Street, Barangay 05','Baler','Aurora','III','Student','D',NULL,'M','2000-08-09','M','Son'),(39,'Carl Stephen M. Tuazon','014 Burgos Street, Barangay 05','Baler','Aurora','III','Student',NULL,NULL,'M','2008-09-10','M','Son'),(40,'Arwin S. Cortez','234 Cojuangco St., Barangay Bantay Intsik','Sison','Pangasinan','I','Nurse',NULL,NULL,'M','1985-10-11','H',NULL),(41,'Valentina R. Cortez','234 Cojuangco St., Barangay Bantay Intsik','Sison','Pangasinan','I','Nurse',NULL,NULL,'F','1987-11-12','M','Wife'),(42,'Tomas R. Cortez','234 Cojuangco St., Barangay Bantay Intsik','Sison','Pangasinan','I','Student','D',NULL,'M','2007-12-13','M','Son'),(43,'Jao Erick R. Cortez','234 Cojuangco St., Barangay Bantay Intsik','Sison','Pangasinan','I','Student',NULL,2,'M','2015-01-14','M','Son'),(44,'Roxanne Antoinette R. Cortez','234 Cojuangco St., Barangay Bantay Intsik','Sison','Pangasinan','I','Student',NULL,NULL,'F','2015-01-14','M','Daughter'),(45,'Ariel F. Santos','123 San Pablo Street','Carmona','Cavite','IV-A','Engineer',NULL,2,'M','1995-11-23','H',NULL),(46,'Mariel A. Santos','123 San Pablo Street','Carmona','Cavite','IV-A','Housewife','B',NULL,'F','1994-03-04','M','wife'),(47,'Cardo A. Santos','123 San Pablo Street','Carmona','Cavite','IV-A','Student',NULL,NULL,'M','2009-11-23','M','son'),(48,'Marites B. Villar','987 San Miguel Street','Tanza','Cavite','IV-A','Online Seller','E',NULL,'F','1995-01-23','H',NULL),(49,'Vicky B. Villar','987 San Miguel Street','Tanza','Cavite','IV-A','student',NULL,4,'F','2015-01-23','M','daughter'),(50,'RJ O. Castro','10315 San Pedro Street','Catbalogan','Samar','VIII','Driver','E',NULL,'M','1995-11-23','H',NULL),(51,'JR P. Castro','10315 San Pedro Street','Catbalogan','Samar','VIII','Student',NULL,NULL,'M','2012-05-05','M','son'),(52,'Mary P. Castro','10315 San Pedro Street','Catbalogan','Samar','VIII','Student','C E',NULL,'F','2012-05-06','M','daughter'),(53,'Domingo G. Salvador','Blk 5 lot 3 Magnesium','Cabuyao','Laguna','IV-A',NULL,'A',4,'M','1954-01-01','H',NULL),(54,'Teresa H. Salvador','Blk 5 lot 3 Magnesium','Cabuyao','Laguna','IV-A',NULL,'A',NULL,'F','1956-02-04','M','wife');
/*!40000 ALTER TABLE `family_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-18  7:15:12
