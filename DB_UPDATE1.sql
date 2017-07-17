/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 10.1.16-MariaDB : Database - sihimastitest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sihimastitest` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sihimastitest`;

/*Table structure for table `announcement` */

DROP TABLE IF EXISTS `announcement`;

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `announcement` */

/*Table structure for table `announcement_file` */

DROP TABLE IF EXISTS `announcement_file`;

CREATE TABLE `announcement_file` (
  `announcement_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL,
  `announcement_id` int(11) NOT NULL,
  PRIMARY KEY (`announcement_file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `announcement_file` */

insert  into `announcement_file`(`announcement_file_id`,`name`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`announcement_id`) values 
(1,'51421.jpg','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',13),
(2,'background.jpg','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',13),
(3,'bola.png','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',13),
(4,'cobaja.jpg','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',13),
(5,'Study_34591.png','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',14),
(6,'test.jpg','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',14),
(7,'you_win_text.jpg','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',14),
(8,'bola.png','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',16),
(9,'cobaja.jpg','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',16),
(10,'d4da6ca7a5894759bf3e2085acefc00c_makna-gotong-royong-kian-memudar-suara-nusantara-gotong-royong-clipart_714-444.jpeg','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',16),
(11,'Berpikir_Sistem_iklan.jpg','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',17),
(13,'andal_2.pdf','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',18),
(14,'Panitia Pelantikan Anggota Baru HIMASTI.pdf','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',20);

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_rule` */

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `courses_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`courses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `courses` */

insert  into `courses`(`courses_id`,`name`,`code`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_user`) values 
(1,'Sistem Paralel dan Terdisitribusi','','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',4),
(2,'Pengembangan Aplikasi Pada Platform Khusus','','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',4);

/*Table structure for table `g_gallery` */

DROP TABLE IF EXISTS `g_gallery`;

CREATE TABLE `g_gallery` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `g_gallery` */

insert  into `g_gallery`(`gallery_id`,`name`,`description`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`) values 
(5,'Acara Himasti','Acara Satu','2017-06-06 15:54:56','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00',''),
(6,'awgaeawedaw','awgaweawedawfwa','2017-06-13 04:32:41','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','');

/*Table structure for table `g_photo` */

DROP TABLE IF EXISTS `g_photo`;

CREATE TABLE `g_photo` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `g_photo` */

insert  into `g_photo`(`photo_id`,`gallery_id`,`name`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`) values 
(3,5,'DSC_511959375c8dbc1e6.JPG','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','');

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values 
('m000000_000000_base',1495827046),
('m130524_201442_init',1495827068),
('m160406_120743_onmotion_yii2_gallery',1495827074);

/*Table structure for table `rule` */

DROP TABLE IF EXISTS `rule`;

CREATE TABLE `rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `rule` */

insert  into `rule`(`rule_id`,`rule_name`,`file_name`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_user`) values 
(1,'Peraturan Akademik dan Kemahasiswaan','PERATURAN_Akad_MhsITDel_2015.pdf','2017-06-07 02:06:36','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',1);

/*Table structure for table `tutorial` */

DROP TABLE IF EXISTS `tutorial`;

CREATE TABLE `tutorial` (
  `tutorial_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) NOT NULL,
  `tutor` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `keterangan` tinytext NOT NULL,
  `tanggal_pelaksanaan` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_matakuliah` int(11) NOT NULL,
  PRIMARY KEY (`tutorial_id`),
  KEY `id_matakuliah` (`id_matakuliah`),
  CONSTRAINT `tutorial_mk_fk` FOREIGN KEY (`id_matakuliah`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tutorial` */

insert  into `tutorial`(`tutorial_id`,`topic`,`tutor`,`location`,`keterangan`,`tanggal_pelaksanaan`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_user`,`id_matakuliah`) values 
(1,'RPC','Dapot','GD722','0','2017-06-07 15:55:00','2017-06-07 10:06:07','2017-06-07 10:06:07','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',4,1);

/*Table structure for table `tutorial_file` */

DROP TABLE IF EXISTS `tutorial_file`;

CREATE TABLE `tutorial_file` (
  `tutorial_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  `id_tutorial` int(11) NOT NULL,
  PRIMARY KEY (`tutorial_file_id`),
  KEY `id_tutorial` (`id_tutorial`),
  KEY `id_tutorial_2` (`id_tutorial`),
  KEY `id_tutorial_3` (`id_tutorial`),
  KEY `id_tutorial_4` (`id_tutorial`),
  CONSTRAINT `file_tutorial_fk` FOREIGN KEY (`id_tutorial`) REFERENCES `tutorial` (`tutorial_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tutorial_file` */

insert  into `tutorial_file`(`tutorial_file_id`,`name`,`size`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_tutorial`) values 
(1,'fallacies.en.id.pdf',392421,'0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`) values 
(1,'admin','sZqaeoWLuRDmp7wMJeUTDBbHHOPy2wmk','$2y$13$JrwVnOvLK9xeneGMaAqPEubBXI8EYoL1lzAfT5A5VTskDDnKw7teW',NULL,'test@test.com',10,'0000-00-00 00:00:00','1495844575','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00',''),
(2,'betty','HKGBHTAKmS4jnY3WCBlzEtnQnZl6IFBC','$2y$13$dXR.69gbLZ3FWfma2tBT1.kcVhZG1.UcT9m400TLMyG1xfU4CAp3S',NULL,'betty@betty.com',10,'0000-00-00 00:00:00','1496674412','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00',''),
(3,'romasi','0qlH1xmKO0oI4kOPmWUkAvR1QAmJxjvV','$2y$13$ylHiwl2fsGojcD/15Pvk9.cQef4SUcNWg8DwceatQapP5T7awUysK',NULL,'ifs14005@students.del.ac.id',10,'0000-00-00 00:00:00','1496736726','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00',''),
(4,'okta','rjnp3b0pJODVTmyYmjgwiN29cb22q8ol','$2y$13$8wr/ZH6kwV.QjvFL8gcC0e4eE9NL9Q1eB2v96pQG1KNiBQh9t3aSq',NULL,'okta@del.ac.id',10,'0000-00-00 00:00:00','1496742199','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00',''),
(5,'dito','EU6GCQ8F5ebvoXNF5Viu3uR4AFPmpSOF','$2y$13$nGBb3jR1V/ULR4uc8EScm.LOcBflOLnuuQtNSUyYulQoz4LVYmhgm',NULL,'dito@del.ac.id',10,'0000-00-00 00:00:00','1497296613','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
