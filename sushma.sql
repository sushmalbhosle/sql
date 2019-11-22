/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.73-community : Database - sushma
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sushma` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sushma`;

/*Table structure for table `table1` */

DROP TABLE IF EXISTS `table1`;

CREATE TABLE `table1` (
  `id` int(10) NOT NULL,
  `frnd` varchar(20) DEFAULT NULL,
  `sal` int(10) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `table1` */

insert  into `table1`(`id`,`frnd`,`sal`,`address`) values (1,'kavitha',50,NULL),(2,'kavya',60,NULL),(3,'mohith',70,NULL);

/*Table structure for table `table2` */

DROP TABLE IF EXISTS `table2`;

CREATE TABLE `table2` (
  `id` int(20) DEFAULT NULL,
  `dept_id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `id` (`id`),
  CONSTRAINT `table2_ibfk_1` FOREIGN KEY (`id`) REFERENCES `table1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `table2` */

insert  into `table2`(`id`,`dept_id`,`name`) values (2,1,'cs'),(1,2,'ec'),(1,3,'mech'),(2,4,'cv'),(2,5,'is');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
