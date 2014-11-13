-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ThankYou
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `Administrator`
--

DROP TABLE IF EXISTS `Administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Administrator` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `infoID` int(11) NOT NULL,
  PRIMARY KEY (`adminID`),
  KEY `infoID` (`infoID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Comment`
--

DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comment` (
  `commentID` int(11) NOT NULL AUTO_INCREMENT,
  `infoID` int(11) NOT NULL,
  `postalCode` int(11) NOT NULL,
  `comment` varchar(1500) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`commentID`),
  KEY `infoID` (`infoID`) USING BTREE,
  KEY `postalCode` (`postalCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Community`
--

DROP TABLE IF EXISTS `Community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Community` (
  `postalCode` int(11) NOT NULL,
  `communityName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`postalCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ContactInfo`
--

DROP TABLE IF EXISTS `ContactInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContactInfo` (
  `contactID` int(11) NOT NULL AUTO_INCREMENT,
  `postalCode` int(11) NOT NULL,
  `suburb` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `streetNumber` int(11) NOT NULL,
  `street` varchar(200) NOT NULL,
  PRIMARY KEY (`contactID`),
  KEY `postalCode` (`postalCode`),
  CONSTRAINT `ContactInfo_ibfk_1` FOREIGN KEY (`postalCode`) REFERENCES `Community` (`postalCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GeneralInfo`
--

DROP TABLE IF EXISTS `GeneralInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GeneralInfo` (
  `infoID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`infoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PhoneNumber`
--

DROP TABLE IF EXISTS `PhoneNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhoneNumber` (
  `phoneID` int(11) NOT NULL AUTO_INCREMENT,
  `infoID` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  PRIMARY KEY (`phoneID`),
  KEY `infoID` (`infoID`),
  CONSTRAINT `PhoneNumber_ibfk_1` FOREIGN KEY (`infoID`) REFERENCES `GeneralInfo` (`infoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `projectID` int(11) NOT NULL AUTO_INCREMENT,
  `postalCode` int(11) NOT NULL,
  `applicantName` varchar(300) NOT NULL,
  `projectName` varchar(300) NOT NULL,
  `projectBlurb` varchar(1000) NOT NULL,
  `fundsRequested` int(11) NOT NULL,
  `useOfFunds` varchar(1000) NOT NULL,
  PRIMARY KEY (`projectID`),
  KEY `postalCode` (`postalCode`),
  CONSTRAINT `Project_ibfk_1` FOREIGN KEY (`postalCode`) REFERENCES `Community` (`postalCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProjectWebsite`
--

DROP TABLE IF EXISTS `ProjectWebsite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectWebsite` (
  `websiteID` int(11) NOT NULL AUTO_INCREMENT,
  `projectID` int(11) NOT NULL,
  `siteAddress` varchar(300) NOT NULL,
  PRIMARY KEY (`websiteID`),
  KEY `projectID` (`projectID`),
  CONSTRAINT `ProjectWebsite_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `Project` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ratings`
--

DROP TABLE IF EXISTS `Ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ratings` (
  `ratingID` int(11) NOT NULL AUTO_INCREMENT,
  `projectID` int(11) NOT NULL,
  `infoID` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`ratingID`),
  KEY `projectID` (`projectID`),
  KEY `infoID` (`infoID`),
  CONSTRAINT `Ratings_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `Project` (`projectID`),
  CONSTRAINT `Ratings_ibfk_2` FOREIGN KEY (`infoID`) REFERENCES `GeneralInfo` (`infoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `infoID` int(11) NOT NULL,
  `contactID` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `infoID` (`infoID`),
  KEY `contactID` (`contactID`),
  CONSTRAINT `User_ibfk_1` FOREIGN KEY (`infoID`) REFERENCES `GeneralInfo` (`infoID`),
  CONSTRAINT `User_ibfk_2` FOREIGN KEY (`contactID`) REFERENCES `ContactInfo` (`contactID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-12  3:06:40

