/*
SQLyog Community v12.2.1 (32 bit)
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
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`announcement_id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `announcement_user_fk` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `announcement` */

insert  into `announcement`(`announcement_id`,`title`,`body`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_user`) values 
(17,'Sharing Session Berpikir Sistem ','<p><strong></strong></p><p><strong>Dear Students,.</strong></p><p><strong>Diharapkan kehadirannya untuk mendengarkan sharing session, sumbangan pemikiran mengenai permasalahan di sekitar Toba Samosir dilihat dari sudut pandang berpikir sistem yang akan di adakan pada : </strong></p><p><strong>Hari/Tanggal : Selasa, 6 Juni 2017</strong></p><p><strong>Pukul : 14.00 - 17.00 WIB<br></strong></p><p><strong>Tempat : Auditorium Institut Teknologi Del</strong></p><p><strong>Kegiatan :<em> Sharing session</em> mengenai perilaku berkendaraan di Toba Samosir, Tingginya penderita HIV Aids, Fenomena Malaria, Transportasi di Toba Samosir dll. </strong></p><p><strong>Sharing session ini akan disampaikan dalam bentuk acara yang <em>Fun</em> dan <em>Relax</em>, ditunggu kehadirannya. <br></strong></p>','2017-06-06 07:06:36','2017-06-06 10:06:08','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',2),
(18,'Kuliah Umum','<p>Kuliah Umum dari Universitas Indonesia</p><p>Lokasi: AUDITORIUM</p><p>Waktu: Selasa, 17.00</p><p>Pakaian: Dress Code Almamater</p><p>Salam,</p><p>Mariani Siahaan<br></p>','2017-06-06 11:06:56','2017-06-06 11:06:56','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',1),
(19,'Pertemuan Pertama dengan Angkatan 16','<p>Dear HIMASTI,</p><p><br></p><p>Kami mengundang rekan-rekan sekalian untuk mengadakan pertemuan pertama dengan angkatan 16, yang akan dilaksanakan pada:</p><p>Hari: Sabtu</p><p>Pukul: 17.00</p><p>Tempat: OT</p><p>Kami sangat mengharapkan kehadirannya.</p><p><br></p><p>Jaya HIMASTI!!</p>','2017-06-07 03:06:20','2017-06-07 03:06:20','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',1),
(20,'Pengumuman ','<p>Pemilihan Ketua dan Wakil Ketua HIMASTI 2017/2018</p><p><br><br>Kepada rekan-rekan mahasiswa/i HIMASTI,<br>Selamat siang untuk kita semua.<br>Mohon maaf mengganggu waktunya. Kami dari KPU HIMASTI 2017/2018 memberi tahu kepada seluruh mahasiswa/i sekalian bahwa pemilihan dan kampanye ketua dan wakil ketua HIMASTI 2017/2018 dilaksanakan pada :</p><p><br><br>Hari/Tanggal : Kamis, 11 Juni 2017<br>Pukul : 13.00 WIB - selesai<br>Tempat : Auditorium Institut Teknologi Del</p><p><br><br>SELURUH MAHASISWA WAJIB HADIR DALAM ACARA INI. Kiranya seluruh mahasiswa menggunakan hak nya untuk memilih Ketua dan Wakil Ketua HIMASTI 2017/2018. Suara Abang/Kakak/Teman/Adik menentukan masa depan HIMAPRO kita. Dan kami mengingatkan agar kita tidak GolPut. Diharapkan juga agar informasi ini diberi tahukan kepada mahasiswa/i HIMASTI yang lainnya agar mengikuti acara ini.</p><p><br><br>Atas perhatiannya kami ucapkan terima kasih.</p><p><br><br>--<br>Oktavianti Debora Siahaan (11S15044)<br>Informatics Engineering 2015<br>Panitia KPU HIMASTI 2017/2018</p>','2017-06-07 03:06:07','2017-06-07 03:06:07','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',2);

/*Table structure for table `announcement_file` */

DROP TABLE IF EXISTS `announcement_file`;

CREATE TABLE `announcement_file` (
  `announcement_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  `id_announcement` int(11) NOT NULL,
  PRIMARY KEY (`announcement_file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `announcement_file` */

insert  into `announcement_file`(`announcement_file_id`,`name`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_announcement`) values 
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

/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`) values 
('admin','1',0,'','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00',''),
('pengurus-1','4',0,'','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00',''),
('pengurus-2','2',0,'','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','');

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`) values 
('admin',1,'admin can do everything',NULL,NULL,'0000-00-00 00:00:00','','0000-00-00 00:00:00','0',0,'0000-00-00 00:00:00',''),
('pengurus-1',1,'ketua dan bendahara',NULL,NULL,'0000-00-00 00:00:00','','0000-00-00 00:00:00','0',0,'0000-00-00 00:00:00',''),
('pengurus-2',1,'seluruh pengurus beserta kepala prodi',NULL,NULL,'0000-00-00 00:00:00','','0000-00-00 00:00:00','0',0,'0000-00-00 00:00:00','');

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`) values 
('admin','pengurus-1','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00',''),
('pengurus-1','pengurus-2','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','');

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
  `name` varchar(255) NOT NULL,
  `code` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`courses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `courses` */

insert  into `courses`(`courses_id`,`name`,`code`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_user`) values 
(1,'Sistem Paralel dan Terdisitribusi','','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',4),
(2,'Pengembangan Aplikasi Pada Platform Khusus','','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',4);

/*Table structure for table `finances` */

DROP TABLE IF EXISTS `finances`;

CREATE TABLE `finances` (
  `finances_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL,
  `uraian` varchar(255) NOT NULL,
  `pemasukan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `balance` double NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`finances_id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `keuangan_user_fk` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `finances` */

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

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `angkatan` varchar(5) NOT NULL,
  `address` text NOT NULL,
  `religion` varchar(10) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`member_id`),
  KEY `id_user` (`id_user`),
  KEY `id_user_2` (`id_user`),
  KEY `id_user_3` (`id_user`),
  CONSTRAINT `member_user_fk` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `member` */

insert  into `member`(`member_id`,`name`,`nim`,`gender`,`angkatan`,`address`,`religion`,`telephone`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_user`) values 
(1,'Ivan','11S14030','L','14','Jl. Dahlia 5','Kristen','08080808','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',1),
(2,'Betty','11S14029','P','2014','Jl. Dahlia 5','Kristen','08080808','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',2),
(3,'Romasi','11S14005','P','2014','Laguboti','Kristen','08080808','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',3),
(4,'Okta','11S14004','P','14','Jl. Durian, Medan','Protestan','08985467239','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',4),
(5,'Dito','11S14023','L','14','Laut','Kristen','085212887312','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',5);

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

/*Table structure for table `period` */

DROP TABLE IF EXISTS `period`;

CREATE TABLE `period` (
  `period_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`period_id`),
  KEY `periode_user_fk` (`id_user`),
  CONSTRAINT `periode_user_fk` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `period` */

insert  into `period`(`period_id`,`name`,`description`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_user`) values 
(1,'awawefawrawefawefa','awgarawrfgawefawedawrhafa','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','0',1),
(2,'fwafwaf','wadwaefwaefaw','0000-00-00 00:00:00','','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','0',1);

/*Table structure for table `period_activity` */

DROP TABLE IF EXISTS `period_activity`;

CREATE TABLE `period_activity` (
  `period_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `link_gallery` varchar(200) NOT NULL,
  `time_activity` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`period_activity_id`),
  KEY `activity_user_fk` (`id_periode`),
  KEY `user_fk` (`id_user`),
  CONSTRAINT `activity_user_fk` FOREIGN KEY (`id_periode`) REFERENCES `period` (`period_id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `period_activity` */

insert  into `period_activity`(`period_activity_id`,`name`,`description`,`link_gallery`,`time_activity`,`status`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted`,`deleted_at`,`deleted_by`,`id_periode`,`id_user`) values 
(2,'ewafawfaw','ggbaawdeawd','http://localhost/sihimasti/backend/web/index.php?r=gallery%2Fdefault%2Fview&id=6','2017-06-09 07:30:21','Terlaksana','2017-06-13 05:06:00','2017-06-13 05:06:20','0000-00-00 00:00:00','',0,'0000-00-00 00:00:00','',1,1);

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
  `created_at` datetime NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` varchar(32) NOT NULL,
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
