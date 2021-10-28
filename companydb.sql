/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.26 : Database - companydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`companydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `companydb`;

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_num` varchar(255) DEFAULT NULL,
  `dept_budget` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `departments` */

insert  into `departments`(`id`,`dept_name`,`dept_num`,`dept_budget`) values 
(1,'Marketing','2177A',50000),
(2,'Information Technology','8618B',90000),
(3,'Accounting','3187C',80000),
(4,'Creatives','4001D',80000),
(5,'Copy Writers','5889E',40000),
(6,'Human Resource','3891G',70000);

/*Table structure for table `emp_childs` */

DROP TABLE IF EXISTS `emp_childs`;

CREATE TABLE `emp_childs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `l_name` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `emp_childs` */

insert  into `emp_childs`(`id`,`l_name`,`f_name`,`age`) values 
(1,'Smith','Samantha',4),
(2,'Doe','Zyon',10),
(3,'Grey','Zola',9),
(4,'Deluca','Ronen',11),
(5,'Schmitt','Nico',14),
(6,'Ellis','Ellis',5);

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `l_name` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `salary` bigint DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employees` */

insert  into `employees`(`id`,`l_name`,`f_name`,`salary`,`phone_num`) values 
(1,'Smith','Brian',15000,'0926900875'),
(2,'Doe','John',20000,'0916908985'),
(3,'Grey','Meredith',17000,'0927980632'),
(4,'DeLuca','Andrew',18000,'09213688871'),
(5,'Schmitt','Levi',19000,'0951950111'),
(6,'Ellis','Gwen',13000,'0997580329');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
