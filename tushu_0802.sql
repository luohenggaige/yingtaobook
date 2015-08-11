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
  PRIMARY KEY (`adminuid`),
  KEY `k_adminuid` (`adminuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `adminuser` */

insert  into `adminuser`(`adminuid`,`username`,`password`,`dender`,`birthday`,`registime`,`state`) values (2,'luosong33','123',NULL,NULL,'2015-07-23 16:08:06',1),(3,'321','321',NULL,NULL,'2015-07-23 16:08:09',1);

/*Table structure for table `au_role` */

DROP TABLE IF EXISTS `au_role`;

CREATE TABLE `au_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminuid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `forkey` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_au_role` (`forkey`),
  CONSTRAINT `fk_au_role` FOREIGN KEY (`forkey`) REFERENCES `adminuser` (`adminuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `au_role` */

insert  into `au_role`(`id`,`adminuid`,`rid`,`forkey`) values (4,NULL,NULL,2),(5,NULL,NULL,2),(6,NULL,NULL,2);

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

/*Table structure for table `jurisdict` */

DROP TABLE IF EXISTS `jurisdict`;

CREATE TABLE `jurisdict` (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `jname` char(20) DEFAULT NULL,
  PRIMARY KEY (`jid`),
  KEY `fr_jid` (`jid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `jurisdict` */

insert  into `jurisdict`(`jid`,`jname`) values (2,'用户管理'),(3,'角色管理');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` char(20) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `fr_rid` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`rid`,`rname`) values (2,'一级管理员'),(3,'超级管理员');

/*Table structure for table `role_juri` */

DROP TABLE IF EXISTS `role_juri`;

CREATE TABLE `role_juri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `jid` int(11) DEFAULT NULL,
  `fw_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fr_role_juri` (`fw_id`),
  CONSTRAINT `fr_role_juri` FOREIGN KEY (`fw_id`) REFERENCES `role` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `role_juri` */

insert  into `role_juri`(`id`,`rid`,`jid`,`fw_id`) values (3,NULL,2,NULL),(4,2,2,NULL);

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
  `model` char(20) DEFAULT NULL,
  PRIMARY KEY (`shareId`),
  KEY `fr_share` (`model`),
  CONSTRAINT `uid_shareid` FOREIGN KEY (`model`) REFERENCES `user` (`model`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `share` */

insert  into `share`(`shareId`,`userId`,`bookName`,`author`,`reason`,`imgSize`,`cid`,`date`,`heat`,`model`) values (5,39,'你我','你我','你我','upload/20150615100253275851.jpg',1,'2015-07-14 20:28:49',62,NULL),(6,39,'java_jy','java_jy','java_jy','upload/20150615101440540673.jpg',1,'2015-07-01 01:33:57',27,NULL),(7,39,'hibernate','hibernate','hibernate','upload/20150615104446872583.jpg',1,'2015-07-01 01:34:00',48,NULL),(8,1,'java_head','java_head','java_head','upload/20150615104525393825.jpg',2,'2015-07-01 00:56:43',138,NULL),(9,NULL,'java编程思想','java编程思想','java编程思想','upload/20150615104545087300.jpg',2,'2015-06-15 14:36:33',52,NULL),(10,NULL,'spring','spring','spring','upload/20150615104620903124.jpg',2,'2015-06-15 14:36:36',23,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-14 20:30:15',NULL,'1'),(16,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-14 20:30:15',NULL,'1'),(17,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-14 20:30:18',NULL,'1');

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
  `model` char(20) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `fr_userid` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`password`,`gender`,`birthday`,`manage`,`state`,`model`) values (39,'luosong33','123',NULL,NULL,NULL,NULL,'1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
