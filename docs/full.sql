# ************************************************************
# Sequel Ace SQL dump
# Version 20035
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 5.5.5-10.8.3-MariaDB)
# Database: temp
# Generation Time: 2022-08-16 22:07:54 +0000
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
  `identifierType` varchar(20) NOT NULL,
  `identifier` varchar(20) NOT NULL,
  `caType` char(4) NOT NULL,
  `eventType` char(4) NOT NULL,
  `eventDesc` char(200) NOT NULL,
  `adjType` char(20) NOT NULL,
  `adjDesc` char(200) NOT NULL,
  `adjFactor` char(10) NOT NULL,
  `currency` char(3) NOT NULL,
  `exchange` char(3) NOT NULL,
  `effectiveDate` date NOT NULL,
  `divRate` varchar(5) NOT NULL,
  `nomValue` varchar(12) NOT NULL,
  `nomCurrency` char(3) NOT NULL,
  `nomDate` date NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



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

LOCK TABLES `fields` WRITE;
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
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
