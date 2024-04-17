/*
SQLyog v10.2 
MySQL - 8.0.31 : Database - bm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bm`;

/*Table structure for table `b_g_day_statistics` */

DROP TABLE IF EXISTS `b_g_day_statistics`;

CREATE TABLE `b_g_day_statistics` (
  `bg_d_id` int NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL COMMENT '日期',
  `bb_num` int DEFAULT NULL COMMENT '借书总数',
  `gb_num` int DEFAULT NULL COMMENT '归还总数',
  PRIMARY KEY (`bg_d_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC COMMENT='借书and归还日报表';

/*Data for the table `b_g_day_statistics` */

insert  into `b_g_day_statistics`(`bg_d_id`,`day`,`bb_num`,`gb_num`) values (8,'2020-07-21',3,0),(19,'2020-07-22',0,0),(23,'2020-07-23',0,0),(24,'2020-07-24',1,2),(25,'2020-07-25',1,0),(26,'2020-07-26',2,10),(27,'2020-07-27',1,0),(28,'2020-07-28',0,0),(29,'2020-07-29',0,0),(30,'2020-07-30',0,0),(31,'2020-07-31',0,0),(32,'2020-08-01',0,0),(33,'2020-08-02',0,0),(34,'2020-08-03',0,0),(35,'2020-08-04',0,0),(36,'2020-08-05',5,1),(37,'2020-08-06',1,1),(38,'2020-08-07',1,2),(39,'2020-08-08',0,0),(40,'2020-08-09',0,0),(41,'2020-08-10',0,0),(42,'2020-08-11',0,0),(43,'2020-08-12',0,0),(44,'2020-08-13',0,0),(45,'2020-08-14',0,0),(46,'2020-08-15',0,0),(47,'2020-08-16',0,0),(48,'2020-08-17',0,0),(49,'2020-08-18',0,0),(50,'2020-08-19',0,0),(51,'2020-08-20',0,0),(52,'2020-08-21',0,0),(53,'2020-08-22',0,0),(54,'2020-08-23',0,0),(55,'2020-08-24',0,0),(56,'2020-08-25',0,0),(57,'2020-08-26',0,0),(58,'2020-08-27',0,0),(59,'2020-08-28',0,0),(60,'2020-08-29',0,0),(61,'2020-08-30',0,0),(62,'2020-08-31',0,0),(63,'2020-09-01',0,0),(64,'2020-09-02',0,0),(65,'2020-09-03',0,0),(66,'2023-04-14',0,0),(67,'2023-04-15',0,0),(68,'2023-04-16',1,2),(69,'2023-04-20',1,5),(70,'2023-04-21',0,0),(71,'2023-04-22',0,0);

/*Table structure for table `b_g_month_statistics` */

DROP TABLE IF EXISTS `b_g_month_statistics`;

CREATE TABLE `b_g_month_statistics` (
  `bg_m_id` int NOT NULL AUTO_INCREMENT,
  `month` varchar(11) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '月份',
  `bb_num` int DEFAULT NULL COMMENT '借书总数',
  `gb_num` int DEFAULT NULL COMMENT '归还总数',
  PRIMARY KEY (`bg_m_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC COMMENT='借书and归还统计月报表';

/*Data for the table `b_g_month_statistics` */

insert  into `b_g_month_statistics`(`bg_m_id`,`month`,`bb_num`,`gb_num`) values (7,'2020-07',8,12),(8,'2020-08',7,4);

/*Table structure for table `b_g_year_statistics` */

DROP TABLE IF EXISTS `b_g_year_statistics`;

CREATE TABLE `b_g_year_statistics` (
  `bg_y_id` int NOT NULL AUTO_INCREMENT,
  `year` varchar(11) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '年份',
  `bb_num` int DEFAULT NULL COMMENT '借书总数',
  `gb_num` int DEFAULT NULL COMMENT '归还总数',
  PRIMARY KEY (`bg_y_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC COMMENT='借书and归还年报表';

/*Data for the table `b_g_year_statistics` */

/*Table structure for table `book_type` */

DROP TABLE IF EXISTS `book_type`;

CREATE TABLE `book_type` (
  `bt_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `t_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`bt_id`) USING BTREE,
  UNIQUE KEY `name` (`t_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `book_type` */

insert  into `book_type`(`bt_id`,`t_name`) values (23,'undefined'),(2,'心理健康1'),(3,'方法1'),(1,'暂定'),(5,'软件技术');

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `b_id` int NOT NULL AUTO_INCREMENT COMMENT '图书类别ID',
  `bt_id` int NOT NULL COMMENT '图书类别id',
  `number` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图书的编号',
  `b_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图书名称',
  `author` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '作者',
  `publisher` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出版社',
  `total` int NOT NULL COMMENT '总数量',
  `rental_unit` int NOT NULL COMMENT '租金/天 多少分钱',
  `over_due_unit` int NOT NULL COMMENT '逾期租金/天 多少分钱',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '图书的状态（true/false）',
  `location` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '存放区域',
  PRIMARY KEY (`b_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `books` */

insert  into `books`(`b_id`,`bt_id`,`number`,`b_name`,`author`,`publisher`,`total`,`rental_unit`,`over_due_unit`,`status`,`location`) values (15,1,'14002','微信小程序','  李 方 鑫 ','湖南信息职业技术学院',9111,100,200,1,'1楼A区'),(16,2,'14003','javaEE企业应用框架','  李 方 鑫 ','湖南信息职业技术学院',2,100,300,1,'1楼A区'),(23,18,'ddddd','dfff','ff','fff',4,400,500,0,'1楼A区'),(26,5,'14001','1','1','1',100,100,200,1,'3楼A区'),(27,5,'14004','围城','钱钟书','人民出版社',100,100,200,1,'3楼A区'),(28,5,'14005','西游记','测试作者','人民出版社',100,100,200,1,'2楼A区'),(29,5,'14006','红楼梦','你猜','人民出版社',100,100,200,1,'2楼A区'),(30,5,'测试','1','1','1',1,100,100,1,'某某区域');

/*Table structure for table `borrow_books` */

DROP TABLE IF EXISTS `borrow_books`;

CREATE TABLE `borrow_books` (
  `bb_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int NOT NULL COMMENT '读者ID',
  `b_id` int NOT NULL COMMENT '图书ID',
  `bb_time` datetime NOT NULL COMMENT '借阅时间',
  `due_time` datetime NOT NULL COMMENT '应还书日期',
  PRIMARY KEY (`bb_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `borrow_books` */

insert  into `borrow_books`(`bb_id`,`r_id`,`b_id`,`bb_time`,`due_time`) values (40,1,4,'2020-07-14 00:00:00','2020-07-21 00:00:00'),(42,2,4,'2020-07-14 00:00:00','2020-07-20 00:00:00'),(65,8,15,'2020-08-05 00:00:00','2020-08-07 00:00:00'),(68,1,15,'2020-08-05 00:00:00','2020-08-08 00:00:00'),(76,1,15,'2023-05-10 00:00:00','2023-05-22 00:00:00'),(79,6,15,'2023-05-10 00:00:00','2023-05-11 00:00:00'),(80,6,15,'2023-05-10 00:00:00','2023-05-11 00:00:00'),(81,6,15,'2023-05-10 00:00:00','2023-05-22 00:00:00');

/*Table structure for table `give_back_books` */

DROP TABLE IF EXISTS `give_back_books`;

CREATE TABLE `give_back_books` (
  `gbb_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int NOT NULL COMMENT '读者ID',
  `b_id` int NOT NULL COMMENT '图书ID',
  `bb_time` date NOT NULL COMMENT '借阅时间',
  `due_time` date NOT NULL COMMENT '应还书日期',
  `reality_time` datetime NOT NULL COMMENT '实际还书时间',
  `is_overdue` tinyint NOT NULL COMMENT '是否逾期',
  `rental_money` int NOT NULL COMMENT '租金',
  PRIMARY KEY (`gbb_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `give_back_books` */

insert  into `give_back_books`(`gbb_id`,`r_id`,`b_id`,`bb_time`,`due_time`,`reality_time`,`is_overdue`,`rental_money`) values (15,2,2,'2020-07-10','2020-07-11','2020-07-10 00:00:00',0,100),(16,1,1,'2020-07-14','2020-07-16','2020-07-14 00:00:00',0,100),(17,1,1,'2020-07-14','2020-07-15','2020-07-14 00:00:00',0,100),(18,1,1,'2020-07-14','2020-07-17','2020-07-14 00:00:00',0,100),(19,1,1,'2020-07-14','2020-07-16','2020-07-14 00:00:00',0,100),(20,1,15,'2020-07-14','2020-07-16','2020-07-14 00:00:00',0,110),(21,1,14,'2020-07-19','2020-07-20','2020-07-19 00:00:00',0,100),(22,2,14,'2020-07-19','2020-07-20','2020-07-19 00:00:00',0,100),(23,1,15,'2020-07-20','2020-07-22','2020-07-21 00:00:00',0,100),(24,1,14,'2020-07-20','2020-07-22','2020-07-21 00:00:00',0,100),(25,1,16,'2020-07-20','2020-07-22','2020-07-21 00:00:00',0,100),(26,1,17,'2020-07-21','2020-07-23','2020-07-21 00:00:00',0,100),(27,1,17,'2020-07-21','2020-07-23','2020-07-21 00:00:00',0,100),(28,1,17,'2020-07-21','2020-07-25','2020-07-24 00:00:00',0,300),(29,1,15,'2020-07-24','2020-07-25','2020-07-24 00:00:00',0,100),(30,1,17,'2020-07-21','2020-07-23','2020-07-26 00:00:00',1,800),(31,2,17,'2020-07-21','2020-07-24','2020-07-26 00:00:00',1,700),(32,2,17,'2020-07-21','2020-07-24','2020-07-26 00:00:00',1,700),(33,1,15,'2020-07-24','2020-07-26','2020-07-26 00:00:00',0,200),(34,8,16,'2020-07-25','2020-07-28','2020-07-26 00:00:00',0,100),(35,8,15,'2020-07-26','2020-07-27','2020-07-26 00:00:00',0,100),(36,8,16,'2020-07-26','2020-08-04','2020-07-26 00:00:00',0,100),(37,8,17,'2020-07-26','2020-07-27','2020-07-26 00:00:00',0,100),(38,8,16,'2020-07-26','2020-07-30','2020-07-26 00:00:00',0,100),(39,8,15,'2020-07-26','2020-08-03','2020-07-26 00:00:00',0,100),(40,1,15,'2020-07-27','2020-07-30','2020-08-05 00:00:00',1,1500),(41,8,15,'2020-07-26','2020-07-28','2020-08-06 00:00:00',1,2000),(42,8,15,'2020-07-26','2020-07-30','2020-08-07 00:00:00',1,2000),(43,10,16,'2020-08-05','2020-08-11','2020-08-07 00:00:00',0,200),(44,1,15,'2020-08-07','2020-08-09','2023-04-20 00:00:00',0,100),(45,1,15,'2020-08-06','2020-08-11','2023-04-20 00:00:00',0,100),(46,1,16,'2023-04-20','2023-05-01','2023-04-20 00:00:00',0,100),(47,1,15,'2023-04-20','2023-05-02','2023-04-20 00:00:00',0,100),(48,8,15,'2020-08-05','2020-08-10','2023-04-20 00:00:00',0,100),(49,1,15,'2023-04-20','2023-04-25','2023-04-23 00:00:00',0,300),(50,10,15,'2020-08-05','2020-08-08','2023-05-10 00:00:00',0,100),(51,6,15,'2023-05-10','2023-05-11','2023-05-10 00:00:00',0,100),(52,6,26,'2023-05-10','2023-05-11','2023-05-10 00:00:00',0,100),(53,6,15,'2023-05-10','2023-05-11','2023-05-10 00:00:00',0,100);

/*Table structure for table `mail_set` */

DROP TABLE IF EXISTS `mail_set`;

CREATE TABLE `mail_set` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱账号',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱密码',
  `overdue_before_day` int NOT NULL COMMENT '逾期前多少天发送邮箱提醒',
  `overdue_after_day` int NOT NULL COMMENT '逾期后多少天发送邮箱提醒',
  `overdue_interval` tinyint NOT NULL COMMENT '逾期后是否间隔overdue_afrter_day再继续发送',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `mail_set` */

insert  into `mail_set`(`id`,`account`,`password`,`overdue_before_day`,`overdue_after_day`,`overdue_interval`) values (1,'zpf_0827@163.com','DINODMVPZVSBPYKA',2,3,0);

/*Table structure for table `mail_symbol` */

DROP TABLE IF EXISTS `mail_symbol`;

CREATE TABLE `mail_symbol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `mail_symbol` */

insert  into `mail_symbol`(`id`,`name`,`value`) values (1,'借书时间占位符','{borrowBooksTime}'),(2,'还书间占位符','{dueTime}'),(3,'书名占位符','{bookName}'),(4,'用户姓名占位符','{userName}'),(5,'剩余天数占位符','{remainingDay}'),(6,'网站地址占位符','{systemUrl}');

/*Table structure for table `mail_template` */

DROP TABLE IF EXISTS `mail_template`;

CREATE TABLE `mail_template` (
  `mt_id` int NOT NULL AUTO_INCREMENT,
  `template` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱模板',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '模板类型名',
  `default_template` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '默认模板',
  PRIMARY KEY (`mt_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `mail_template` */

insert  into `mail_template`(`mt_id`,`template`,`name`,`default_template`) values (1,'亲爱的 \"{userName}\" 您好！您在我校图书馆借的书籍《{bookName}》仅剩下 {remainingDay} 天的时间，若您需要续借，请到我校图书关办理相关手续，或联系管理员办理相关续借手续。若不续借的话，请您在还书日期{dueTime}内归还图书！感谢您的配合！祝您生活愉快呀！网站地址：{systemUrl}','未逾期','亲爱的 \"{userName}\" 您好！您在我校图书馆借的书籍《{bookName}》仅剩下 {remainingDay} 天的时间，若您需要续借，请到我校图书关办理相关手续，或联系管理员办理相关续借手续。若不续借的话，请您在还书日期{dueTime}内归还图书！感谢您的配合！祝您生活愉快呀！'),(2,'亲爱的 \"{userName}\" 您好！您在{borrowBooksTime}，在我校图书馆借的书籍《数据解构》已经逾期{remainingDay} 天的时间，请您尽快还书！感谢您的配合，祝您生活愉快呐！','逾期','亲爱的 \"{userName}\" 您好！您在{borrowBooksTime}，在我校图书馆借的书籍《数据解构》已经逾期{remainingDay} 天的时间，请您尽快还书！感谢您的配合，祝您生活愉快呐！');

/*Table structure for table `mail_template_type` */

DROP TABLE IF EXISTS `mail_template_type`;

CREATE TABLE `mail_template_type` (
  `tt_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '模板类型名',
  `default` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '默认模板',
  PRIMARY KEY (`tt_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `mail_template_type` */

insert  into `mail_template_type`(`tt_id`,`name`,`default`) values (1,'逾期','rw'),(2,'未逾期','123');

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `m_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `gender` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '性别',
  `password` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `birthday` date NOT NULL COMMENT '出生日期',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱',
  `phone` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机号',
  `mt_id` int NOT NULL COMMENT '类型id',
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `ismax` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否超管',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `manager` */

insert  into `manager`(`m_id`,`name`,`gender`,`password`,`birthday`,`email`,`phone`,`mt_id`,`account`,`ismax`) values (1,'周攀峰','男','123456','2020-07-04','zpf_0827@163.com','18711272916',500,'admin','是'),(2,'管理员','男','123456','2020-07-04','zpf_0827@163.com','18711272916',500,'test','否');

/*Table structure for table `manager_type` */

DROP TABLE IF EXISTS `manager_type`;

CREATE TABLE `manager_type` (
  `mt_id` int NOT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '管理人员类别名称',
  PRIMARY KEY (`mt_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `manager_type` */

insert  into `manager_type`(`mt_id`,`name`) values (1,'管理员'),(2,'操作员');

/*Table structure for table `reader` */

DROP TABLE IF EXISTS `reader`;

CREATE TABLE `reader` (
  `r_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账户名称',
  `password` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `r_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '姓名',
  `gender` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机号',
  `balance` int NOT NULL COMMENT '余额/分',
  `credit_score` int DEFAULT NULL COMMENT '信誉积分',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后一次登录的时间',
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `reader` */

insert  into `reader`(`r_id`,`account`,`password`,`r_name`,`gender`,`birthday`,`email`,`phone`,`balance`,`credit_score`,`last_login_time`) values (1,'user1','123456','张三','男','2020-06-30','1541086084@qq.com','18711272916',20600,0,'2020-07-24 21:12:07'),(2,'baihui','123456',NULL,'男',NULL,'123','18711272916',12,0,'2020-07-21 03:24:56'),(6,'123456','123456','周攀峰','男','2021-09-29','1541086084@qq.com','18711271912',19700,NULL,NULL),(7,'1234567','123456','周攀峰2','男',NULL,'1541086084@qq.com','18711271912',0,NULL,'2020-07-24 01:51:43'),(8,'baibai','123456','白蕙','女','2021-09-29','1715867242@qq.com','18867244149',5300,NULL,NULL),(9,'dream123','123456','梦幻','男','2006-07-05','3191074903@qq.com','18711273219',0,NULL,NULL),(10,'zpf_123','123456','周攀峰','男','2021-09-02','1541086084@qq.com','18711271911',66300,NULL,NULL),(11,'111111','123456','方法','男','2021-09-06','1715867242@qq.com','18867244149',0,NULL,NULL),(12,'lzy123','lzy123','李正言','男','2023-11-01','3498371145@qq.com','15289430154',0,NULL,NULL),(13,'1','3',NULL,'4',NULL,'5','6',7,NULL,NULL),(14,'2','4',NULL,'5',NULL,'6','7',8,NULL,NULL),(15,'3','5',NULL,'6',NULL,'7','8',9,NULL,NULL);

/*Table structure for table `renewal _book` */

DROP TABLE IF EXISTS `renewal _book`;

CREATE TABLE `renewal _book` (
  `rbb_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int NOT NULL COMMENT '读者ID',
  `b_id` int NOT NULL COMMENT '图书ID',
  `r_day` int NOT NULL COMMENT '续约天数',
  PRIMARY KEY (`rbb_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `renewal _book` */

/*Table structure for table `reserve_borrow_books` */

DROP TABLE IF EXISTS `reserve_borrow_books`;

CREATE TABLE `reserve_borrow_books` (
  `rbb_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int NOT NULL COMMENT '读者ID',
  `b_id` int NOT NULL COMMENT '图书ID',
  `order_time` datetime NOT NULL COMMENT '订单时间',
  `remaining_days` int NOT NULL COMMENT '借阅的天数',
  PRIMARY KEY (`rbb_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `reserve_borrow_books` */

insert  into `reserve_borrow_books`(`rbb_id`,`r_id`,`b_id`,`order_time`,`remaining_days`) values (123,8,14,'2020-07-25 23:58:28',2),(150,1,16,'2023-04-23 09:36:04',10),(157,6,16,'2023-05-10 23:32:13',12),(159,6,15,'2023-05-11 00:00:05',1);

/*Table structure for table `turnover_day_statistics` */

DROP TABLE IF EXISTS `turnover_day_statistics`;

CREATE TABLE `turnover_day_statistics` (
  `t_d_id` int NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `turnover` int DEFAULT NULL COMMENT '营业额',
  PRIMARY KEY (`t_d_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

/*Data for the table `turnover_day_statistics` */

insert  into `turnover_day_statistics`(`t_d_id`,`day`,`turnover`) values (1,'2020-07-19',250),(2,'2020-07-20',300),(6,'2020-07-22',0),(7,'2020-07-23',0),(8,'2020-07-24',400),(9,'2020-07-25',0),(10,'2020-07-26',3000),(11,'2020-07-27',0),(12,'2020-07-28',0),(13,'2020-07-29',0),(14,'2020-07-30',0),(15,'2020-07-31',0),(16,'2020-08-01',0),(17,'2020-08-02',0),(18,'2020-08-03',0),(19,'2020-08-04',0),(20,'2020-08-05',1500),(21,'2020-08-06',2000),(22,'2020-08-07',2200),(23,'2020-08-08',0),(24,'2020-08-09',0),(25,'2020-08-10',0),(26,'2020-08-11',0),(27,'2020-08-12',0),(28,'2020-08-13',0),(29,'2020-08-14',0),(30,'2020-08-15',0),(31,'2020-08-16',0),(32,'2020-08-17',0),(33,'2020-08-18',0),(34,'2020-08-19',0),(35,'2020-08-20',0),(36,'2020-08-21',0),(37,'2020-08-22',0),(38,'2020-08-23',0),(39,'2020-08-24',0),(40,'2020-08-25',0),(41,'2020-08-26',0),(42,'2020-08-27',0),(43,'2020-08-28',0),(44,'2020-08-29',0),(45,'2020-08-30',0),(46,'2020-08-31',0),(47,'2020-09-01',0),(48,'2020-09-02',0),(49,'2020-09-03',0),(50,'2023-04-14',0),(51,'2023-04-15',0),(52,'2023-04-16',4500),(53,'2023-04-20',500),(54,'2023-04-21',0),(55,'2023-04-22',0);

/*Table structure for table `turnover_month_statistics` */

DROP TABLE IF EXISTS `turnover_month_statistics`;

CREATE TABLE `turnover_month_statistics` (
  `t_m_id` int NOT NULL AUTO_INCREMENT,
  `month` varchar(11) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `turnover` int DEFAULT NULL COMMENT '营业额',
  PRIMARY KEY (`t_m_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

/*Data for the table `turnover_month_statistics` */

insert  into `turnover_month_statistics`(`t_m_id`,`month`,`turnover`) values (3,'2020-07',3950),(4,'2020-08',5700);

/*Table structure for table `turnover_year_statistics` */

DROP TABLE IF EXISTS `turnover_year_statistics`;

CREATE TABLE `turnover_year_statistics` (
  `t_y_id` int NOT NULL AUTO_INCREMENT,
  `year` varchar(11) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `turnover` int DEFAULT NULL COMMENT '营业额',
  PRIMARY KEY (`t_y_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

/*Data for the table `turnover_year_statistics` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
