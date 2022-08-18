# ************************************************************
# Sequel Ace SQL dump
# Version 20035
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 5.5.5-10.8.3-MariaDB)
# Database: temp
# Generation Time: 2022-08-16 23:30:05 +0000
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




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
