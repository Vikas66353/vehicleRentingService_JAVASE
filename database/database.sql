/*
SQLyog Trial v13.1.9 (64 bit)
MySQL - 8.0.29 : Database - vehicle_renting
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vehicle_renting` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `vehicle_renting`;

/*Table structure for table `carcompany` */

DROP TABLE IF EXISTS `carcompany`;

CREATE TABLE `carcompany` (
  `CARNAME` varchar(30) NOT NULL,
  PRIMARY KEY (`CARNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `carcompany` */

/*Table structure for table `customers_list` */

DROP TABLE IF EXISTS `customers_list`;

CREATE TABLE `customers_list` (
  `C_ID` int NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `GENDER` varchar(20) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `USE_AS` varchar(20) NOT NULL,
  `BOOK_DATE` varchar(40) NOT NULL,
  `RETURN_DATA` varchar(40) NOT NULL,
  `MOBILE` varchar(20) NOT NULL,
  `CAR_NUM` varchar(20) NOT NULL,
  `DRIVER_ID` int NOT NULL,
  `RENT` int NOT NULL,
  `ACTUAL_RETURN` varchar(40) NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customers_list` */

/*Table structure for table `drivers_list` */

DROP TABLE IF EXISTS `drivers_list`;

CREATE TABLE `drivers_list` (
  `D_ID` int NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `GENDER` varchar(20) NOT NULL,
  `ADDRESS` varchar(40) NOT NULL,
  `EXPERIENCE` varchar(20) NOT NULL,
  `DOB` varchar(40) NOT NULL,
  `LICENSE_NUM` varchar(20) NOT NULL,
  `QUALIFICATION` varchar(20) NOT NULL,
  `MOBILE` bigint NOT NULL,
  PRIMARY KEY (`D_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `drivers_list` */

/*Table structure for table `employee_list` */

DROP TABLE IF EXISTS `employee_list`;

CREATE TABLE `employee_list` (
  `ID` int NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `GENDER` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(60) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `QUALIFICATION` varchar(30) NOT NULL,
  `MOBILE` decimal(10,0) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `DOJ` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employee_list` */

/*Table structure for table `loginadmin` */

DROP TABLE IF EXISTS `loginadmin`;

CREATE TABLE `loginadmin` (
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` int NOT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `loginadmin` */

insert  into `loginadmin`(`USERNAME`,`PASSWORD`) values 
('vikas',12345);

/*Table structure for table `vehicle_list` */

DROP TABLE IF EXISTS `vehicle_list`;

CREATE TABLE `vehicle_list` (
  `COMPANY` varchar(20) NOT NULL,
  `MODEL` varchar(20) NOT NULL,
  `NUMBER` varchar(20) NOT NULL,
  `MFG_YEAR` varchar(40) NOT NULL,
  `USEAS` varchar(20) NOT NULL,
  `SEATING_CAPACITY` int NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `ENGINE_CAPACITY` varchar(11) NOT NULL,
  `RENT` int NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  PRIMARY KEY (`NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `vehicle_list` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
