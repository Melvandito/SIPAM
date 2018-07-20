/*
SQLyog Community v12.2.1 (32 bit)
MySQL - 5.6.24 : Database - pdam
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pdam` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pdam`;

/*Table structure for table `akun` */

DROP TABLE IF EXISTS `akun`;

CREATE TABLE `akun` (
  `id` int(1) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

/*Data for the table `akun` */

insert  into `akun`(`id`,`username`,`password`,`role`) values 
(0,'admin','admin','admin'),
(0,'asep','asep123','pegawai'),
(0,'daniel','daniel123','pelanggan'),
(0,'dapot','dapot123','pelanggan'),
(0,'dito','ditosaja','pelanggan');

/*Table structure for table `jabatan` */

DROP TABLE IF EXISTS `jabatan`;

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `jabatan` */

insert  into `jabatan`(`id_jabatan`,`nama`) values 
(1,'manager'),
(2,'sekretaris'),
(3,'pembantu');

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` int(16) NOT NULL,
  `id_regional` int(11) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  PRIMARY KEY (`id_pegawai`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `pegawai` */

insert  into `pegawai`(`id_pegawai`,`username`,`password`,`nama_pegawai`,`alamat`,`no_telepon`,`id_regional`,`tahun_masuk`,`id_jabatan`) values 
(1,'asep','asep123','Asep','Jalan jalan',231478232,1,2013,1),
(2,'aweagaw','awedawfawf','ujang','awoawdj',5423821,1,2013,3),
(3,'aiwufiauwfe','awdjawd','ujang','awefiuaw',5423123,1,2013,3),
(4,'waufwaf','waefwafawf','waefawf','wafioawj',3732231,1,2012,2),
(5,'wadjaoiwdj','wajdoiawj','dani','aoiweda',4325212,1,2013,3),
(6,'oijdwaid','idjawoidj','dai','aoiwjdaw',3901212,1,2013,1);

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `tagihan` int(11) NOT NULL,
  `id_regional` int(11) NOT NULL,
  `no_telepon` int(16) NOT NULL,
  `password` varchar(20) NOT NULL,
  `no_virtual` int(30) NOT NULL,
  PRIMARY KEY (`id_pelanggan`),
  UNIQUE KEY `id_pelanggan` (`id_pelanggan`),
  UNIQUE KEY `username` (`username`),
  FULLTEXT KEY `nama_pelanggan` (`nama_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `pelanggan` */

insert  into `pelanggan`(`id_pelanggan`,`username`,`nama_pelanggan`,`alamat`,`pekerjaan`,`tagihan`,`id_regional`,`no_telepon`,`password`,`no_virtual`) values 
(1,'dito','dito','jambu','mahasiswa',100000,1,5412343,'ditosaja',12345678),
(2,'dapot','dapot','singa','dosen',110000,1,5231223,'dapot123',87654321),
(3,'daniel','daniel','neraka','kimcil',25000,1,5324231,'daniel123',42462312),
(4,'awfawefaw','wafaeaw','awfawef','cmeaia',220000,1,234122,'wedawed',12342321),
(5,'dwaiojdioa','dawfeaw','awjdiad','awdijaw',23132214,1,32412312,'adwoijdawod',12323523),
(6,'iawjdawoidj','adwaiduw','aowidjawiojd','awekfawke',200000,1,2323344,'aiwodjawoidj',23132343);

/*Table structure for table `pembayaran` */

DROP TABLE IF EXISTS `pembayaran`;

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `no_virtual` int(30) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `nama_akun_bank` varchar(30) NOT NULL,
  `nama_bank` varchar(30) NOT NULL,
  `tanggal_transfer` varchar(16) NOT NULL,
  `regional` int(11) NOT NULL,
  `jumlah` int(16) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `pembayaran` */

insert  into `pembayaran`(`id_pembayaran`,`no_virtual`,`nama_user`,`nama_akun_bank`,`nama_bank`,`tanggal_transfer`,`regional`,`jumlah`,`id_pelanggan`,`status`) values 
(16,12345678,'dito','Boy','BCA','2016-06-02',1,100000,1,0);

/*Table structure for table `regional` */

DROP TABLE IF EXISTS `regional`;

CREATE TABLE `regional` (
  `id_regional` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `kode_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_regional`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `regional` */

insert  into `regional`(`id_regional`,`nama`,`kode_pos`) values 
(1,'sitoluama',21128),
(2,'laguboti',21232),
(3,'porsea',24123);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
