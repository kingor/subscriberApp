-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.51-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `subscriber_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `subscriber_db`;
USE `subscriber_db`;

--
-- Table structure for table `subscriber_db`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `subscriber_db`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`,`categoryName`) VALUES 
 (1,'Администратор'),
 (2,'Оператор'),
 (3,'Пользователь');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `subscriber_db`.`log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL DEFAULT '1',
  `date` datetime NOT NULL DEFAULT '2015-03-03 00:00:00',
  `type` varchar(10) NOT NULL DEFAULT '',
  `comment` varchar(230) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK1A3443A30F61D` (`id_user`),
  CONSTRAINT `FK1A3443A30F61D` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `subscriber_db`.`log`
--

/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (1,1,'2001-03-20 14:00:00','info','insert'),
 (2,1,'2015-03-18 07:33:20','Update','1111111111111'),
 (3,1,'2015-03-18 07:53:40','Update',''),
 (4,1,'2015-03-18 07:55:03','Update',''),
 (5,1,'2015-03-18 07:56:55','Update',''),
 (6,1,'2015-03-18 08:00:52','Update','ФИО: qwe--->Иванов А.В.   Адрес: rtyr--->ул. Жореса   '),
 (7,1,'2015-03-18 08:07:49','Update','ФИО: hvjjghj--->Комов П.Р.   '),
 (8,1,'2015-03-18 08:08:10','Update','Адрес: rrrrrr--->ул. Аналитиков   '),
 (9,1,'2015-03-19 07:58:36','Update','Адрес: kkkkkkk--->ул. Иванова   '),
 (10,1,'2015-03-19 08:52:17','Update','Адрес: ул. Интузиастов, д.123--->ул. Интузиастов, д.121   '),
 (11,3,'2015-03-19 09:02:37','Update','Адрес: ул. Иванова--->ул. Иванова, д.55   '),
 (12,1,'2015-03-19 14:27:56','Update','Адрес: ловыраловыр--->ул. Сосновая   '),
 (13,1,'2015-03-19 14:36:42','Create','ФИО: Пупкин В.А.   Адрес: ул. Ленина   ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (14,1,'2015-03-19 14:38:52','Update','Адрес: ул. Ленина--->ул. Ленина, д.56, кв. 11   '),
 (16,1,'2015-03-19 14:47:53','Create','ФИО: 123456   Адрес: 1234   '),
 (17,1,'2015-03-19 15:41:45','Create','Логин: user3|||Имя: User3|||Категория: 2|||'),
 (19,1,'2015-03-19 17:30:20','Update',''),
 (20,1,'2015-03-19 17:31:02','Create','Логин: admin2   Имя: admin2   Категория: 0   '),
 (21,7,'2015-03-19 17:32:44','Update','Логин: operator5--->operator   '),
 (22,7,'2015-03-19 17:34:30','Update','Логин: operator--->operator3   Пароль: operator--->operator3   Имя: Иванов Иван Иванович--->Иванов Иван Иванович3   '),
 (23,7,'2015-03-20 08:18:46','Delete','Логин: user3--->   Имя: User3--->   Категория: 3--->   '),
 (24,7,'2015-03-20 14:35:03','Update','Имя: Пользователь--->Пользователь user   Категория: 3--->2   '),
 (25,7,'2015-03-20 14:40:56','Create','Логин: admin3   Имя: Администратор3   Категория: 0   ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (26,1,'2015-03-21 17:12:12','Update','Адрес: д. Петровичи, --->д. Петровичи, 333   '),
 (27,1,'2015-03-23 07:35:52','Create','ФИО: ККК   Адрес: аааа   '),
 (28,1,'2015-03-23 07:36:40','Update','Адрес: аааа--->шшшшш   '),
 (29,1,'2015-03-23 09:03:51','Update','ФИО: 123456--->123456g   '),
 (30,1,'2015-03-23 09:03:59','Update',''),
 (31,1,'2015-03-23 13:54:36','Update',''),
 (32,1,'2015-03-26 12:29:08','Create','ФИО:    Адрес:    '),
 (33,1,'2015-03-26 12:36:30','Update','ФИО: --->ghjghj   Адрес: --->ghjghjgh   '),
 (34,1,'2015-04-02 11:37:04','Update','Абонент: Петров И.И.Номер: 123123--->321321   '),
 (35,1,'2015-04-02 12:07:36','Create','ФИО: ppp   Адрес: ppppp   '),
 (36,1,'2015-04-02 12:13:20','Update',''),
 (37,1,'2015-04-04 13:18:34','Create','Логин: 1   Имя: 1   Категория: 2   '),
 (38,1,'2015-04-04 13:20:32','Update','Адрес: 123456--->123456777   '),
 (39,1,'2015-04-04 13:27:35','Update','Логин: admin--->user   Пароль: admin--->user   Имя: Администратор--->Пользователь user   ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (40,1,'2015-04-04 13:28:31','Update','Логин: user--->admin   Пароль: user--->admin   Имя: Пользователь user--->Admin   Категория: 1--->0   '),
 (41,1,'2015-04-04 13:30:42','Update','Категория: 2--->0   '),
 (42,9,'2015-04-04 13:34:07','Create','ФИО: 789   Адрес: 789   '),
 (43,1,'2015-04-04 14:30:23','Update',''),
 (44,1,'2015-04-04 14:33:53','Update','Абонент: Пупкин В.А.'),
 (45,1,'2015-04-04 14:57:27','Delete','Логин: admin2--->   Имя: admin2--->   Категория: 1--->   '),
 (46,2,'2015-04-06 12:13:50','Update','Плюсов В.С.Номер: 1--->333   '),
 (47,2,'2015-04-06 12:19:38','Update','КККНомер: 234--->555   '),
 (48,1,'2015-04-06 12:32:29','Login','Ip адрес: 127.0.0.1--->      '),
 (49,1,'2015-04-06 12:32:29','Login','Ip адрес: 127.0.0.1--->      '),
 (50,2,'2015-04-06 13:36:40','Login','Ip адрес: 127.0.0.1--->      '),
 (51,1,'2015-04-06 13:36:54','Login','Ip адрес: 127.0.0.1--->      ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (52,8,'2015-04-06 13:37:27','Login','Ip адрес: 127.0.0.1--->      '),
 (53,1,'2015-04-06 13:41:59','Login','Ip адрес: 127.0.0.1--->      '),
 (54,1,'2015-04-06 14:10:51','Login','Ip адрес: 127.0.0.1--->      '),
 (55,1,'2015-04-06 14:12:31','Logout','Ip адрес: 127.0.0.1--->      '),
 (56,1,'2015-04-06 14:12:37','Login','Ip адрес: 127.0.0.1--->      '),
 (57,1,'2015-04-06 14:16:12','Login','Ip адрес: 127.0.0.1--->      '),
 (58,1,'2015-04-06 16:53:06','Login','Ip адрес: 127.0.0.1--->      '),
 (59,1,'2015-04-06 16:56:52','Logout','Ip адрес: 127.0.0.1--->      '),
 (60,1,'2015-04-06 16:57:02','Login','Ip адрес: 127.0.0.1--->      '),
 (61,1,'2015-04-08 15:24:19','Login','Ip адрес: 127.0.0.1--->      '),
 (62,1,'2015-04-08 15:32:26','Update','ФИО: 789--->      Адрес: 789--->      '),
 (63,1,'2015-04-08 15:36:05','Login','Ip адрес: 127.0.0.1--->      '),
 (64,1,'2015-04-08 15:59:02','Logout','Ip адрес: 127.0.0.1--->      '),
 (65,9,'2015-04-08 15:59:08','Login','Ip адрес: 127.0.0.1--->      ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (66,9,'2015-04-08 16:26:59','Update','ФИО: Петров И.И.--->      Адрес: ул. Сосновая--->      '),
 (67,1,'2015-04-08 16:34:06','Login','Ip адрес: 127.0.0.1--->      '),
 (68,1,'2015-04-09 08:41:17','Login','Ip адрес: 127.0.0.1--->      '),
 (69,1,'2015-04-09 08:58:10','Login','Ip адрес: 172.16.1.100--->      '),
 (70,9,'2015-04-09 09:47:13','Login','Ip адрес: 172.16.1.13--->      '),
 (71,9,'2015-04-09 09:47:32','Logout','Ip адрес: 172.16.1.13--->      '),
 (72,1,'2015-04-09 11:29:11','Login','Ip адрес: 127.0.0.1--->      '),
 (73,1,'2015-04-09 12:01:55','Login','Ip адрес: 127.0.0.1--->      '),
 (74,1,'2015-04-09 12:04:21','Login','Ip адрес: 127.0.0.1--->      '),
 (75,9,'2015-04-09 12:07:36','Login','Ip адрес: 127.0.0.1--->      '),
 (76,1,'2015-04-09 12:12:13','Login','Ip адрес: 127.0.0.1--->      '),
 (77,9,'2015-04-09 13:08:29','Login','Ip адрес: 127.0.0.1--->      '),
 (78,1,'2015-04-09 13:24:58','Login','Ip адрес: 127.0.0.1--->      ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (79,1,'2015-04-09 14:25:08','Login','Ip адрес: 127.0.0.1--->      '),
 (80,1,'2015-04-09 14:25:21','Update','Пупкин В.А.ADSL: 567--->   '),
 (81,1,'2015-04-09 14:26:53','Login','Ip адрес: 127.0.0.1--->      '),
 (82,9,'2015-04-09 14:29:55','Login','Ip адрес: 127.0.0.1--->      '),
 (83,9,'2015-04-09 15:07:14','Login','Ip адрес: 127.0.0.1--->      '),
 (84,9,'2015-04-09 15:09:02','Update','ФИО: 777--->      Адрес: 777--->      '),
 (85,9,'2015-04-09 15:09:12','Update','777Номер: 700--->      Громполоса: 700--->      Защита: 700--->      ADSL: --->      '),
 (86,9,'2015-04-09 15:12:37','Login','Ip адрес: 127.0.0.1--->      '),
 (87,1,'2015-04-09 15:16:53','Login','Ip адрес: 127.0.0.1--->      '),
 (88,9,'2015-04-09 16:21:11','Login','Ip адрес: 127.0.0.1--->      '),
 (89,1,'2015-04-09 16:46:47','Login','Ip адрес: 127.0.0.1--->      '),
 (90,1,'2015-04-09 16:52:54','Update','Пупкин В.А.'),
 (91,1,'2015-04-09 16:53:25','Update','123456');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (92,1,'2015-04-09 16:53:37','Update','Сомов В.В.'),
 (93,1,'2015-04-09 16:53:46','Update','ККК'),
 (94,1,'2015-04-09 16:54:57','Update','Пупкин В.А.Номер: 123--->1235   '),
 (95,1,'2015-04-09 16:55:12','Logout','Ip адрес: 127.0.0.1--->      '),
 (96,2,'2015-04-09 16:55:17','Login','Ip адрес: 127.0.0.1--->      '),
 (97,2,'2015-04-09 16:55:21','Logout','Ip адрес: 127.0.0.1--->      '),
 (98,7,'2015-04-09 16:55:28','Login','Ip адрес: 127.0.0.1--->      '),
 (99,1,'2015-04-10 10:11:27','Login','Ip адрес: 127.0.0.1--->      '),
 (100,9,'2015-04-10 10:25:30','Login','Ip адрес: 127.0.0.1--->      '),
 (101,9,'2015-04-10 11:01:46','Login','Ip адрес: 127.0.0.1--->      '),
 (102,9,'2015-04-10 11:08:37','Update','123456Громполоса: 12345--->12345678   Защита: 1234--->1234456   '),
 (103,9,'2015-04-10 11:08:56','Update','123456Номер: 1234567--->123456789   Громполоса: 12345678--->123456789   Защита: 1234456--->123456789   '),
 (104,9,'2015-04-10 11:09:06','Update','123456Громполоса: 123456789--->12345678911111   ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (105,9,'2015-04-10 11:09:36','Update','123456Номер: 123456789--->1234567890   Громполоса: 123456789--->1234567890   Защита: 123456789--->1234567890   '),
 (106,9,'2015-04-10 11:09:58','Update','123456Номер: 1234567890--->1234567   Громполоса: 1234567890--->1234567   Защита: 1234567890--->1234567   '),
 (107,9,'2015-04-10 11:55:16','Login','Ip адрес: 127.0.0.1--->      '),
 (108,1,'2015-04-10 14:00:39','Login','Ip адрес: 127.0.0.1--->      '),
 (109,9,'2015-04-10 14:29:32','Login','Ip адрес: 127.0.0.1--->      '),
 (110,9,'2015-04-10 14:29:47','Update','ФИО: 123456--->123456qwe   Адрес: 1234--->1234qwe   '),
 (111,9,'2015-04-10 15:25:59','Login','Ip адрес: 127.0.0.1--->      '),
 (112,9,'2015-04-10 15:26:18','Update','ФИО: 123456qwe--->123456qqq   Адрес: 1234qwe--->1234qqq   '),
 (113,9,'2015-04-10 15:27:58','Login','Ip адрес: 127.0.0.1--->      '),
 (114,9,'2015-04-10 16:53:54','Login','Ip адрес: 127.0.0.1--->      ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (115,9,'2015-04-16 08:35:16','Login','Ip адрес: 127.0.0.1--->      '),
 (116,9,'2015-04-16 08:49:08','Login','Ip адрес: 127.0.0.1--->      '),
 (117,9,'2015-04-16 08:49:22','Delete','Логин: user3--->      Пароль: User3--->      Категория: -1--->3   '),
 (118,9,'2015-04-16 09:26:24','Login','Ip адрес: 127.0.0.1--->      '),
 (119,9,'2015-04-16 11:32:09','Login','Ip адрес: 127.0.0.1--->      '),
 (120,9,'2015-04-16 12:02:06','Login','Ip адрес: 127.0.0.1--->      '),
 (121,9,'2015-04-16 12:06:49','Login','Ip адрес: 127.0.0.1--->      '),
 (122,9,'2015-04-16 14:57:12','Login','Ip адрес: 127.0.0.1--->      '),
 (123,9,'2015-04-22 12:06:18','Login','Ip адрес: 127.0.0.1--->      '),
 (124,9,'2015-04-24 14:20:06','Login','Ip адрес: 127.0.0.1--->      '),
 (125,9,'2015-04-24 14:27:23','Create','ФИО: 789--->      Адрес: 78978--->      '),
 (126,9,'2015-04-24 15:16:34','Login','Ip адрес: 127.0.0.1--->      '),
 (127,9,'2015-04-24 15:31:00','Login','Ip адрес: 127.0.0.1--->      ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (128,9,'2015-04-24 15:31:14','Create','123456g Номер: 1--->       Громполоса: 2--->       Защита: 3--->       ADSL: 5--->      '),
 (129,9,'2015-04-24 15:31:43','Create','123456g Номер: 6--->       Громполоса: 7--->       Защита: 8--->       ADSL: 10--->      '),
 (130,9,'2015-04-24 15:45:00','Create','123456g Номер: 00--->       Громполоса: 000--->       Защита: 000--->       ADSL: 000--->      '),
 (131,9,'2015-04-24 15:47:40','Create','123456g Номер: 000--->       Громполоса: 000--->       Защита: 000--->       ADSL: 000--->      '),
 (132,9,'2015-04-24 15:47:57','Create','123456g Номер: 111--->       Громполоса: 111--->       Защита: 111--->       ADSL: 111--->      '),
 (133,9,'2015-04-24 15:48:54','Create','123456g Номер: 333--->       Громполоса: 333--->       Защита: --->       ADSL: --->      '),
 (134,9,'2015-04-24 16:08:11','Login','Ip адрес: 127.0.0.1--->      ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (135,9,'2015-04-24 16:10:45','Login','Ip адрес: 127.0.0.1--->      ');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;


--
-- Table structure for table `subscriber_db`.`phone`
--

DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(10) NOT NULL DEFAULT '',
  `band` varchar(10) NOT NULL DEFAULT '',
  `security` varchar(10) NOT NULL DEFAULT '',
  `adsl` varchar(10) NOT NULL DEFAULT '',
  `id_subscriber` int(10) unsigned NOT NULL DEFAULT '0',
  `subscriber` int(10) unsigned NOT NULL DEFAULT '0',
  `scv` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK65B3D6EEA757617` (`id_subscriber`),
  CONSTRAINT `FK65B3D6EEA757617` FOREIGN KEY (`id_subscriber`) REFERENCES `subscriber` (`id`),
  CONSTRAINT `FK_phone_1` FOREIGN KEY (`id_subscriber`) REFERENCES `subscriber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `subscriber_db`.`phone`
--

/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` (`id`,`number`,`band`,`security`,`adsl`,`id_subscriber`,`subscriber`,`scv`) VALUES 
 (3,'333','2','3','4',17,0,''),
 (4,'321','356','789','876',19,0,'333'),
 (5,'1235','123','123','',20,0,'777'),
 (6,'1234567','1234567','1234567','123',22,0,'123'),
 (7,'555','456','658','768',23,0,'555'),
 (8,'700','700','700','',27,0,''),
 (9,'1','2','3','5',21,0,'4'),
 (10,'6','7','8','10',21,0,'9'),
 (11,'00','000','000','000',21,0,'000'),
 (12,'000','000','000','000',21,0,'000'),
 (13,'111','111','111','111',21,0,'111'),
 (14,'333','333','','',21,0,'3');
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;


--
-- Table structure for table `subscriber_db`.`subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `address` varchar(100) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `comment` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscriber_db`.`subscriber`
--

/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` (`id`,`name`,`address`,`comment`) VALUES 
 (2,'Smirnov v.v.','ул. Ленина, д.15, кв.1','1'),
 (3,'Джуманиязов Вениямин Венияминович','д. Петровичи, 333',''),
 (5,'Семенов Семен Семенович','ул. Интузиастов, д.121','2'),
 (10,'Комов П.Р.','ул. Аналитиков',''),
 (12,'Иванов С.М.','ул. Иванова, д.55','3'),
 (17,'Плюсов В.С.','ул. Молова, д.56',''),
 (19,'Сомов В.В.','ул.Семинианов, д.15','4'),
 (20,'Пупкин В.А.','ул. Ленина, д.56, кв. 11',''),
 (21,'123456g','123456777','5'),
 (22,'123456qqq','1234qqq','q333'),
 (23,'ККК','шшшшш','6'),
 (24,'ghjghj','ghjghjgh',''),
 (25,'rty','tyutyu','7'),
 (26,'ppp','ppppp',''),
 (27,'777','777','777'),
 (28,'789','78978','789');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;


--
-- Table structure for table `subscriber_db`.`user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `password` varchar(20) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `name` varchar(45) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `category` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscriber_db`.`user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`login`,`password`,`name`,`category`) VALUES 
 (1,'admin','admin','Admin',0),
 (2,'user','user','Пользователь user',2),
 (3,'operator3','operator3','Иванов Иван Иванович3',2),
 (7,'admin2','admin2','admin2',1),
 (8,'admin3','admin3','Администратор3',0),
 (9,'1','1','1',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
