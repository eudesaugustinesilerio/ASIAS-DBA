/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB-log : Database - companydb
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
  `departmentName` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept_num` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept_budget` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `departments` */

insert  into `departments`(`dept_id`,`departmentName`,`dept_num`,`dept_budget`) values 
(1,'Marketing','2177A',72000),
(2,'Information Tec','8618B',90000),
(3,'Accounting','3187C',80000),
(4,'Creatives','4001D',80000),
(5,'Copy Writers','5889E',40000),
(6,'Human Resource','3891G',46000),
(8,'Social Media','6969F',30000),
(9,'Engineering','6709F',80000);

/*Table structure for table `emp_children` */

DROP TABLE IF EXISTS `emp_children`;

CREATE TABLE `emp_children` (
  `child_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_ID` int(11) DEFAULT NULL,
  `cLname` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cFname` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`child_id`),
  KEY `emp_ID` (`emp_ID`),
  CONSTRAINT `emp_children_ibfk_1` FOREIGN KEY (`emp_ID`) REFERENCES `employees` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(20,13,'Yorke','Dream',9),
(21,13,'Yorke','Dream',9),
(22,13,'Yorke','Dream',9),
(23,13,'Yorke','Dream',9),
(24,11,'Tyler','Baribar',8),
(27,12,'Miranda','Launto',10);

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_ID` int(11) DEFAULT NULL,
  `fname` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobTitle` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` decimal(20,0) DEFAULT NULL,
  `phone_num` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOE` date DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dept_ID` (`dept_ID`),
  CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`dept_ID`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employees` */

insert  into `employees`(`emp_id`,`dept_ID`,`fname`,`lname`,`jobTitle`,`salary`,`phone_num`,`DOE`) values 
(1,1,'Smith','Brian','Social Media Manager',15000,'0926900875','2018-06-01'),
(2,2,'Doe','John','Web Developer',20000,'0916908985','2019-03-28'),
(3,3,'Grey','Meredith','Accountant',17000,'0927980632','2019-07-18'),
(4,4,'DeLuca','Andrew','Illustrator',18000,'09213688871','2018-12-23'),
(5,5,'Schmitt','Levi','Copy Writer',19000,'0951950111','2016-08-01'),
(6,6,'Ellis','Gwen','HR',20000,'0997580329','2017-02-01'),
(7,2,'Beck','Loney','Web Developer',20000,'0955668875','2020-06-24'),
(9,3,'Luka ','Stevens','Accountant',23000,'0954574112','2018-08-24'),
(10,4,'Sam','Peters','Illustrator',26000,'0987752118','2017-06-17'),
(11,2,'Zayn','Hughes','Programmer',28000,'0916320478','2017-02-04'),
(12,4,'Onin','Bustamante','Layout Designer',19000,'0917462378','2018-01-29'),
(13,5,'Marcela','Yorke','Copy Writer',20000,'0933365378','2019-02-25'),
(60,5,'Eudes','Silerio','Digital Artist',19000,'0933365378','2019-02-25'),
(62,3,'April','Azagra','Web Developer',28000,'0936886288','2021-11-26'),
(63,3,'Muhammad','Said','DBA',27000,'09266900875','2020-11-20'),
(64,3,'Sarah','Alvaro','Auditor',25000,'09368845378','2020-11-20'),
(66,3,'Ivan','Baribar','Web Developer',28000,'0925577812','2019-02-04'),
(69,3,'Sharif','Launto','Web Developer',28000,'0925577812','2019-02-04');

/*Table structure for table `jobtitles` */

DROP TABLE IF EXISTS `jobtitles`;

CREATE TABLE `jobtitles` (
  `job_id` int(11) NOT NULL,
  `dept_ID` int(11) DEFAULT NULL,
  `job_Title` varchar(20) DEFAULT NULL,
  `max_salary` decimal(10,0) DEFAULT NULL,
  `min_salary` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `dept_ID` (`dept_ID`),
  CONSTRAINT `jobtitles_ibfk_1` FOREIGN KEY (`dept_ID`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `jobtitles` */

insert  into `jobtitles`(`job_id`,`dept_ID`,`job_Title`,`max_salary`,`min_salary`) values 
(1,8,'Social Media Manage',15000,16000),
(2,2,'Web Developer',20000,28000),
(3,3,'Accountant',20000,23000),
(4,4,'Illustrator',18000,26000),
(5,5,'Copy Writers',19000,20000),
(6,6,'HR',20000,25000),
(7,2,'Programmer',20000,28000),
(8,4,'Layout Designer',19000,20000),
(9,4,'Digital Artist',19000,20000),
(10,2,'DBA',20000,25000),
(11,3,'Auditor',20000,24000);

/* Function  structure for function  `childAge` */

/*!50003 DROP FUNCTION IF EXISTS `childAge` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `childAge`(cFname1 varchar(255)) RETURNS int(11)
    DETERMINISTIC
begin
		declare age1 int;
		select age into age1 from companydb.emp_children where cFname = cFname1;
		return age1;
	end */$$
DELIMITER ;

/* Function  structure for function  `employeeSal` */

/*!50003 DROP FUNCTION IF EXISTS `employeeSal` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `employeeSal`(fname1 varchar(255)) RETURNS float
    DETERMINISTIC
begin
		declare salary1 float;
		select salary into salary1 from companydb.employees where fname = fname1;
		return salary1;
	end */$$
DELIMITER ;

/* Function  structure for function  `employmentDate` */

/*!50003 DROP FUNCTION IF EXISTS `employmentDate` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `employmentDate`(fname1 varchar(255)) RETURNS date
    DETERMINISTIC
begin
		declare employs1 date;
		select DOE into employs1 from companydb.employees where fname1 = fname;
		return employs1;
	end */$$
DELIMITER ;

/* Procedure structure for procedure `childrenEdit` */

/*!50003 DROP PROCEDURE IF EXISTS  `childrenEdit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `childrenEdit`(
IN semp_ID INT (11),
IN scLname VARCHAR(255),
IN scFname VARCHAR(255),
IN sage INT (11)
)
BEGIN
INSERT INTO emp_children(emp_ID, cLname, cFname, age)
	VALUES (semp_ID, scLname, scFname, sage);
END */$$
DELIMITER ;

/* Procedure structure for procedure `employeesEdit` */

/*!50003 DROP PROCEDURE IF EXISTS  `employeesEdit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `employeesEdit`(
IN sdept_ID INT(11),
IN sfname VARCHAR(255),
IN slname VARCHAR(255),
IN sjobTitle VARCHAR(255),
IN ssalary FLOAT,
IN sphone_num VARCHAR(255),
IN sDOE DATE
)
begin
	insert into employees(dept_ID, fname, lname, jobTitle, salary, phone_num, DOE)
	values(sdept_ID, sfname, slname, sjobTitle, ssalary, sphone_num, sDOE);
end */$$
DELIMITER ;

/* Procedure structure for procedure `forChildrenTable` */

/*!50003 DROP PROCEDURE IF EXISTS  `forChildrenTable` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `forChildrenTable`(
IN emp_ID INT (11),
IN cLname VARCHAR(255),
IN cFname VARCHAR(255),
IN age INT (11)
)
begin
INSERT INTO emp_children(emp_ID, cLname, cFname, age)
	VALUES (11, 'Tyler', 'Baribar', 8);
end */$$
DELIMITER ;

/* Procedure structure for procedure `forEmployees1Table` */

/*!50003 DROP PROCEDURE IF EXISTS  `forEmployees1Table` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `forEmployees1Table`(
IN emp_id INT,
IN dept_ID INT,
IN fname VARCHAR(255),
IN lname VARCHAR(255),
IN jobTitle VARCHAR(255),
IN salary FLOAT,
IN phone_num VARCHAR(255),
IN DOE DATE
)
BEGIN
INSERT INTO employees(emp_id, dept_ID, fname, lname, jobTitle, salary, phone_num, DOE)
 VALUES (66, 3, 'Ivan', 'Baribar', 'Web Developer', 280000, '0925577812', '2019-02-04');
END */$$
DELIMITER ;

/* Procedure structure for procedure `forEmployeesTable` */

/*!50003 DROP PROCEDURE IF EXISTS  `forEmployeesTable` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `forEmployeesTable`(
IN dept_ID INT(11),
IN fname VARCHAR(255),
IN lname VARCHAR(255),
IN jobTitle VARCHAR(255),
IN salary FLOAT,
IN phone_num VARCHAR(255),
IN DOE DATE
)
BEGIN
INSERT INTO employees(dept_ID, fname, lname, jobTitle, salary, phone_num, DOE)
 VALUES (3, 'Ivan', 'Baribar', 'Web Developer', 280000, '0925577812', '2019-02-04');
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
