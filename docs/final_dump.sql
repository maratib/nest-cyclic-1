# ************************************************************
# Sequel Ace SQL dump
# Version 20035
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 5.5.5-10.8.3-MariaDB)
# Database: temp
# Generation Time: 2022-08-17 02:39:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cas`;

CREATE TABLE `cas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifierType` varchar(50) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `caType` varchar(50) DEFAULT NULL,
  `eventType` varchar(50) DEFAULT NULL,
  `eventDesc` varchar(200) DEFAULT NULL,
  `adjType` varchar(50) DEFAULT NULL,
  `adjDesc` varchar(200) DEFAULT NULL,
  `adjFactor` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `exchange` varchar(50) DEFAULT NULL,
  `effectiveDate` date DEFAULT NULL,
  `payDate` date DEFAULT NULL,
  `divRate` varchar(50) DEFAULT NULL,
  `nomValue` varchar(50) DEFAULT NULL,
  `nomCurrency` char(50) DEFAULT NULL,
  `nomDate` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- LOCK TABLES `cas` WRITE;
/*!40000 ALTER TABLE `cas` DISABLE KEYS */;

INSERT INTO `cas` (`id`, `identifierType`, `identifier`, `caType`, `eventType`, `eventDesc`, `adjType`, `adjDesc`, `adjFactor`, `currency`, `exchange`, `effectiveDate`, `payDate`, `divRate`, `nomValue`, `nomCurrency`, `nomDate`, `created_at`, `updated_at`)
VALUES
	(1,'Cusip','02079K107','CAP','21','Stock split','CCH','Capital Change - Adjusts Dividend and Earnings per Share, Pricing and Volume','0.05','USD','NSM','2022-07-15',NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.293262','2022-08-17 04:30:28.293262'),
	(2,'Cusip','02079K107','DIV',NULL,NULL,NULL,NULL,NULL,'USD','NSM',NULL,'2015-05-04','0.27455',NULL,NULL,NULL,'2022-08-17 04:30:28.299152','2022-08-17 04:30:28.299152'),
	(3,'Cusip','02079K107','EAR',NULL,NULL,NULL,NULL,NULL,'USD','NSM',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.299760','2022-08-17 04:30:28.299760'),
	(4,'Cusip','02079K107','EAR',NULL,NULL,NULL,NULL,NULL,'USD','NSM',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.300024','2022-08-17 04:30:28.300024'),
	(5,'Cusip','02079K107','VOT',NULL,NULL,NULL,NULL,NULL,'USD','NSM',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.300285','2022-08-17 04:30:28.300285'),
	(6,'Cusip','02079K107','SHO',NULL,NULL,NULL,NULL,NULL,'USD','NSM',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.300547','2022-08-17 04:30:28.300547'),
	(7,'Cusip','02079K107','NOM',NULL,NULL,NULL,NULL,NULL,'USD','NSM',NULL,NULL,NULL,'0.001','USD','2015-04-27','2022-08-17 04:30:28.300839','2022-08-17 04:30:28.300839'),
	(8,'Ric','ALVG.DE','MNA',NULL,NULL,NULL,NULL,NULL,'EUR','GER',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.302742','2022-08-17 04:30:28.302742'),
	(9,'Ric','ALVG.DE','MNA',NULL,NULL,NULL,NULL,NULL,'EUR','GER',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.302907','2022-08-17 04:30:28.302907'),
	(10,'Ric','ALVG.DE','PEO',NULL,NULL,NULL,NULL,NULL,'EUR','GER',NULL,NULL,NULL,'2.56','EUR',NULL,'2022-08-17 04:30:28.303162','2022-08-17 04:30:28.303162'),
	(11,'Ric','ALVG.DE','SHO',NULL,NULL,NULL,NULL,NULL,'EUR','GER',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.348921','2022-08-17 04:30:28.348921'),
	(12,'Ric','ALVG.DE','EAR',NULL,NULL,NULL,NULL,NULL,'EUR','GER',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.351657','2022-08-17 04:30:28.351657'),
	(13,'Ric','ALVG.DE','DIV',NULL,NULL,NULL,NULL,NULL,'EUR','GER',NULL,'2022-05-09','10.8',NULL,NULL,NULL,'2022-08-17 04:30:28.352114','2022-08-17 04:30:28.352114'),
	(14,'Ric','ALVG.DE','CAP','13','Non-renounceable rights issue in same stock','CCH','Capital Change - Adjusts Dividend and Earnings per Share, Pricing and Volume','1','EUR','GER','2007-05-03',NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.352475','2022-08-17 04:30:28.352475'),
	(15,'Ric','IBM.N','NOM',NULL,NULL,NULL,NULL,NULL,'USD','NYS',NULL,NULL,NULL,'0.2','USD','2008-06-30','2022-08-17 04:30:28.353094','2022-08-17 04:30:28.353094'),
	(16,'Ric','IBM.N','EAR',NULL,NULL,NULL,NULL,NULL,'USD','NYS',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.353181','2022-08-17 04:30:28.353181'),
	(17,'Ric','IBM.N','EAR',NULL,NULL,NULL,NULL,NULL,'USD','NYS',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.353946','2022-08-17 04:30:28.353946'),
	(18,'Ric','ALVG.DE','NOM',NULL,NULL,NULL,NULL,NULL,'EUR','GER',NULL,NULL,NULL,NULL,NULL,'2018-08-14','2022-08-17 04:30:28.354840','2022-08-17 04:30:28.354840'),
	(19,'Ric','ALVG.DE','VOT',NULL,NULL,NULL,NULL,NULL,'EUR','GER',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.354778','2022-08-17 04:30:28.354778'),
	(20,'Ric','IBM.N','VOT',NULL,NULL,NULL,NULL,NULL,'USD','NYS',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.358941','2022-08-17 04:30:28.358941'),
	(21,'Ric','IBM.N','DIV',NULL,NULL,NULL,NULL,NULL,'USD','NYS',NULL,'2022-09-10','1.65',NULL,NULL,NULL,'2022-08-17 04:30:28.363542','2022-08-17 04:30:28.363542'),
	(22,'Ric','IBM.N','SHO',NULL,NULL,NULL,NULL,NULL,'USD','NYS',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.365820','2022-08-17 04:30:28.365820'),
	(23,'Ric','IBM.N','CAP','74','Demerger (DEM)','RPO','Reuters Pricing Only - Adjusts Pricing','1','USD','NYS','2021-11-03',NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.366420','2022-08-17 04:30:28.366420'),
	(24,'Ric','IBM.N','MNA',NULL,NULL,NULL,NULL,NULL,'USD','NYS',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-17 04:30:28.366799','2022-08-17 04:30:28.366799');

/*!40000 ALTER TABLE `cas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fields`;

CREATE TABLE `fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `fieldType` varchar(20) NOT NULL,
  `fieldFormat` varchar(10) NOT NULL DEFAULT 'string',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_712fd1134fa6faf74e09b0bd75` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;

INSERT INTO `fields` (`id`, `name`, `desc`, `fieldType`, `fieldFormat`)
VALUES
	(1,'identifierType','IdentifierType','ca','string'),
	(2,'identifier','Identifier','ca','string'),
	(3,'caType','Corporate Actions Type','ca','string'),
	(4,'eventType','Capital Change Event Type','ca','string'),
	(5,'eventDesc','Capital Change Event Type Description','ca','string'),
	(6,'adjType','Actual Adjustment Type','ca','string'),
	(7,'adjDesc','Actual Adjustment Type Description','ca','string'),
	(8,'adjFactor','Adjustment Factor','ca','string'),
	(9,'currency','Currency Code','ca','string'),
	(10,'exchange','Exchange Code','ca','string'),
	(11,'effectiveDate','Effective Date','ca','string'),
	(12,'payDate','Dividend Pay Date','ca','string'),
	(13,'divRate','Dividend Rate','ca','string'),
	(14,'nomValue','Nominal Value','ca','string'),
	(15,'nomCurrency','Nominal Value Currency','ca','string'),
	(16,'nomDate','Nominal Value Date','ca','string');

/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
-- UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
