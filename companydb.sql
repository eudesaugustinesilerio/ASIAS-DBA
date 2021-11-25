/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB : Database - companydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`companydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `companydb`;

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_num` varchar(255) DEFAULT NULL,
  `dept_budget` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `departments` */

insert  into `departments`(`dept_id`,`dept_name`,`dept_num`,`dept_budget`) values 
(1,'Marketing','2177A',64000),
(2,'Information Technology','8618B',90000),
(3,'Accounting','3187C',80000),
(4,'Creatives','4001D',80000),
(5,'Copy Writers','5889E',40000),
(6,'Human Resource','3891G',54000);

/*Table structure for table `emp_children` */

DROP TABLE IF EXISTS `emp_children`;

CREATE TABLE `emp_children` (
  `child_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_ID` int(11) DEFAULT NULL,
  `cLname` varchar(255) DEFAULT NULL,
  `cFname` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`child_id`),
  KEY `emp_ID` (`emp_ID`),
  CONSTRAINT `emp_children_ibfk_1` FOREIGN KEY (`emp_ID`) REFERENCES `employees` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emp_children` */

insert  into `emp_children`(`child_id`,`emp_ID`,`cLname`,`cFname`,`age`) values 
(1,1,'Smith','Samantha',4),
(2,2,'Doe','Zyon',10),
(3,3,'Grey','Zola',9),
(4,4,'Deluca','Ronen',11),
(5,5,'Schmitt','Nico',14),
(6,6,'Ellis','Ellis',5),
(7,7,'Corey','Beck',10),
(8,9,'Stevens','Peter',2),
(9,10,'Peters','Claire',7),
(10,11,'Hughes','Troye',8),
(11,12,'Bustamante','Danna',8),
(12,13,'Yorke','Dream',9),
(13,13,'Ivan','Dream',9),
(14,13,'Ivan','Dream',9),
(15,13,'Ivan','Dream',9);

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_ID` int(11) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `salary` decimal(20,0) DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL,
  `dateofEmploy` date DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dept_ID` (`dept_ID`),
  CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`dept_ID`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `employees` */

insert  into `employees`(`emp_id`,`dept_ID`,`lname`,`fname`,`jobTitle`,`salary`,`phone_num`,`dateofEmploy`) values 
(1,1,'Smith','Brian','Social Media Manager',15000,'0926900875','2018-06-01'),
(2,2,'Doe','John','Web Developer',20000,'0916908985','2019-03-28'),
(3,3,'Grey','Meredith','Accountant',17000,'0927980632','2019-07-18'),
(4,4,'DeLuca','Andrew','Illustrator',18000,'09213688871','2018-12-23'),
(5,5,'Schmitt','Levi','Copy Writer',19000,'0951950111','2016-08-01'),
(6,6,'Ellis','Gwen','Head HR',13000,'0997580329','2017-02-01'),
(7,2,'Beck','Loney','Web Developer',20000,'0955668875','2020-06-24'),
(9,3,'Luka ','Stevens','Accountant',23000,'0954574112','2018-08-24'),
(10,4,'Sam','Peters','Illustrator',26000,'0987752118','2017-06-17'),
(11,2,'Zayn','Hughes','Programmer',21000,'0916320478','2017-02-04'),
(12,4,'Onin','Bustamante','Layout Designer',19000,'0917462378','2018-01-29'),
(13,5,'Marcela','Yorke','Copy Writer',19000,'0933365378','2019-02-25'),
(14,1,'Sharif','Launto','Social Media Manager',15000,'0925577412','2018-02-25'),
(15,3,'Sarah','Alvaro','Auditor',25000,'09368845378','2020-11-20'),
(19,5,'adsf','Aasdfasdf','Audaf',28000,'09368845378','2020-11-20'),
(23,3,'adfSarah','adsfAlvaro','adfAuditor',25000,'09368845378','2020-11-20'),
(24,3,'adfSarah','adsfAlvaro','adfAuditor',25000,'09368845378','2020-11-20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
