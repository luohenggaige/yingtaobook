/*
SQLyog Ultimate v8.32 
MySQL - 5.5.27 : Database - tushu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tushu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tushu`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` char(32) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `author` char(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `imgSize` char(128) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bookId`,`bookname`,`stock`,`author`,`price`,`imgSize`) values (1,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `share` */

DROP TABLE IF EXISTS `share`;

CREATE TABLE `share` (
  `shareId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `bookName` char(20) DEFAULT NULL,
  `author` char(20) DEFAULT NULL,
  `reason` char(254) DEFAULT NULL,
  `imgSize` char(128) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`shareId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `share` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(32) NOT NULL AUTO_INCREMENT,
  `username` char(32) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `manage` int(1) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`password`,`gender`,`birthday`,`manage`,`state`) values (39,'luosong222','123',NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
