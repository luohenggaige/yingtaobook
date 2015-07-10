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

/*Table structure for table `adminuser` */

DROP TABLE IF EXISTS `adminuser`;

CREATE TABLE `adminuser` (
  `adminuid` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `dender` int(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `registime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` int(1) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`adminuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `adminuser` */

insert  into `adminuser`(`adminuid`,`username`,`password`,`dender`,`birthday`,`registime`,`state`,`rid`) values (1,'123','123',NULL,NULL,'2015-07-06 16:52:45',NULL,1),(2,'321','321',NULL,NULL,'2015-07-06 16:52:52',NULL,2);

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

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` char(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`cid`,`cname`) values (1,'文学类'),(2,'小说类'),(3,'悬疑类');

/*Table structure for table `colltrade` */

DROP TABLE IF EXISTS `colltrade`;

CREATE TABLE `colltrade` (
  `collid` int(11) NOT NULL,
  `bookname` varchar(21) DEFAULT NULL,
  `author` varchar(21) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `imgsize` varchar(51) DEFAULT NULL,
  PRIMARY KEY (`collid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `colltrade` */

insert  into `colltrade`(`collid`,`bookname`,`author`,`price`,`userid`,`cid`,`date`,`imgsize`) values (1,'123','123',123,123,1123,'2015-06-15 20:21:40',NULL);

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `heat` int(11) DEFAULT NULL,
  PRIMARY KEY (`shareId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `share` */

insert  into `share`(`shareId`,`userId`,`bookName`,`author`,`reason`,`imgSize`,`cid`,`date`,`heat`) values (5,39,'你我','你我','你我','upload/20150615100253275851.jpg',1,'2015-07-01 01:33:56',62),(6,39,'java_jy','java_jy','java_jy','upload/20150615101440540673.jpg',1,'2015-07-01 01:33:57',27),(7,39,'hibernate','hibernate','hibernate','upload/20150615104446872583.jpg',1,'2015-07-01 01:34:00',48),(8,1,'java_head','java_head','java_head','upload/20150615104525393825.jpg',2,'2015-07-01 00:56:43',138),(9,NULL,'java编程思想','java编程思想','java编程思想','upload/20150615104545087300.jpg',2,'2015-06-15 14:36:33',52),(10,NULL,'spring','spring','spring','upload/20150615104620903124.jpg',2,'2015-06-15 14:36:36',23);

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`password`,`gender`,`birthday`,`manage`,`state`) values (39,'luosong33','123',NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
