/*
 Navicat Premium Data Transfer

 Source Server         : bookmanager
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44-log)
 Source Host           : localhost:3306
 Source Schema         : bm

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44-log)
 File Encoding         : 65001

 Date: 17/04/2024 14:11:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_g_day_statistics
-- ----------------------------
DROP TABLE IF EXISTS `b_g_day_statistics`;
CREATE TABLE `b_g_day_statistics`  (
  `bg_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL COMMENT '日期',
  `bb_num` int(11) NULL DEFAULT NULL COMMENT '借书总数',
  `gb_num` int(11) NULL DEFAULT NULL COMMENT '归还总数',
  PRIMARY KEY (`bg_d_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci COMMENT = '借书and归还日报表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_g_day_statistics
-- ----------------------------
INSERT INTO `b_g_day_statistics` VALUES (8, '2020-07-21', 3, 0);
INSERT INTO `b_g_day_statistics` VALUES (19, '2020-07-22', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (23, '2020-07-23', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (24, '2020-07-24', 1, 2);
INSERT INTO `b_g_day_statistics` VALUES (25, '2020-07-25', 1, 0);
INSERT INTO `b_g_day_statistics` VALUES (26, '2020-07-26', 2, 10);
INSERT INTO `b_g_day_statistics` VALUES (27, '2020-07-27', 1, 0);
INSERT INTO `b_g_day_statistics` VALUES (28, '2020-07-28', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (29, '2020-07-29', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (30, '2020-07-30', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (31, '2020-07-31', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (32, '2020-08-01', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (33, '2020-08-02', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (34, '2020-08-03', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (35, '2020-08-04', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (36, '2020-08-05', 5, 1);
INSERT INTO `b_g_day_statistics` VALUES (37, '2020-08-06', 1, 1);
INSERT INTO `b_g_day_statistics` VALUES (38, '2020-08-07', 1, 2);
INSERT INTO `b_g_day_statistics` VALUES (39, '2020-08-08', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (40, '2020-08-09', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (41, '2020-08-10', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (42, '2020-08-11', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (43, '2020-08-12', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (44, '2020-08-13', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (45, '2020-08-14', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (46, '2020-08-15', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (47, '2020-08-16', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (48, '2020-08-17', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (49, '2020-08-18', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (50, '2020-08-19', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (51, '2020-08-20', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (52, '2020-08-21', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (53, '2020-08-22', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (54, '2020-08-23', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (55, '2020-08-24', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (56, '2020-08-25', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (57, '2020-08-26', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (58, '2020-08-27', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (59, '2020-08-28', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (60, '2020-08-29', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (61, '2020-08-30', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (62, '2020-08-31', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (63, '2020-09-01', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (64, '2020-09-02', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (65, '2020-09-03', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (66, '2023-04-14', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (67, '2023-04-15', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (68, '2023-04-16', 1, 2);
INSERT INTO `b_g_day_statistics` VALUES (69, '2023-04-20', 1, 5);
INSERT INTO `b_g_day_statistics` VALUES (70, '2023-04-21', 0, 0);
INSERT INTO `b_g_day_statistics` VALUES (71, '2023-04-22', 0, 0);

-- ----------------------------
-- Table structure for b_g_month_statistics
-- ----------------------------
DROP TABLE IF EXISTS `b_g_month_statistics`;
CREATE TABLE `b_g_month_statistics`  (
  `bg_m_id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(11) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '月份',
  `bb_num` int(11) NULL DEFAULT NULL COMMENT '借书总数',
  `gb_num` int(11) NULL DEFAULT NULL COMMENT '归还总数',
  PRIMARY KEY (`bg_m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci COMMENT = '借书and归还统计月报表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_g_month_statistics
-- ----------------------------
INSERT INTO `b_g_month_statistics` VALUES (7, '2020-07', 8, 12);
INSERT INTO `b_g_month_statistics` VALUES (8, '2020-08', 7, 4);

-- ----------------------------
-- Table structure for b_g_year_statistics
-- ----------------------------
DROP TABLE IF EXISTS `b_g_year_statistics`;
CREATE TABLE `b_g_year_statistics`  (
  `bg_y_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(11) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '年份',
  `bb_num` int(11) NULL DEFAULT NULL COMMENT '借书总数',
  `gb_num` int(11) NULL DEFAULT NULL COMMENT '归还总数',
  PRIMARY KEY (`bg_y_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci COMMENT = '借书and归还年报表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_g_year_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `bt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `t_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`bt_id`) USING BTREE,
  UNIQUE INDEX `name`(`t_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_type
-- ----------------------------
INSERT INTO `book_type` VALUES (2, '心理健康');
INSERT INTO `book_type` VALUES (1, '文言爱情');
INSERT INTO `book_type` VALUES (3, '现实主义');
INSERT INTO `book_type` VALUES (6, '科学奇幻');
INSERT INTO `book_type` VALUES (5, '软件技术');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书类别ID',
  `bt_id` int(11) NOT NULL COMMENT '图书类别id',
  `number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书的编号',
  `b_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书名称',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `publisher` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出版社',
  `total` int(11) NOT NULL COMMENT '总数量',
  `rental_unit` int(11) NOT NULL COMMENT '租金/天 多少分钱',
  `over_due_unit` int(11) NOT NULL COMMENT '逾期租金/天 多少分钱',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '图书的状态（true/false）',
  `location` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存放区域',
  PRIMARY KEY (`b_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (15, 5, '14002', '微信小程序', '  李 方 鑫 ', '湖南信息职业技术学院', 9111, 100, 200, 1, '1楼A区');
INSERT INTO `books` VALUES (16, 5, '14003', 'javaEE企业应用框架', '  李 方 鑫 ', '湖南信息职业技术学院', 2, 100, 300, 1, '1楼A区');
INSERT INTO `books` VALUES (27, 3, '14004', '围城', '钱钟书', '人民出版社', 100, 100, 200, 1, '3楼A区');
INSERT INTO `books` VALUES (28, 7, '14005', '西游记', '吴承恩', '人民出版社', 100, 100, 200, 1, '2楼A区');
INSERT INTO `books` VALUES (29, 1, '14006', '红楼梦', '曹雪芹', '人民出版社', 100, 100, 200, 1, '2楼A区');
INSERT INTO `books` VALUES (30, 3, '14007', '活着', '余华', '作家出版社', 211, 100, 200, 1, '2楼B区');
INSERT INTO `books` VALUES (31, 6, '14008', '哈利波特', 'J.K.罗琳', '人民文学出版社', 200, 100, 200, 1, '3楼B区');
INSERT INTO `books` VALUES (32, 6, '14009', '三体', '刘慈欣', '重庆出版社', 150, 100, 200, 1, '3楼B区');

-- ----------------------------
-- Table structure for borrow_books
-- ----------------------------
DROP TABLE IF EXISTS `borrow_books`;
CREATE TABLE `borrow_books`  (
  `bb_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int(11) NOT NULL COMMENT '读者ID',
  `b_id` int(11) NOT NULL COMMENT '图书ID',
  `bb_time` datetime NOT NULL COMMENT '借阅时间',
  `due_time` datetime NOT NULL COMMENT '应还书日期',
  PRIMARY KEY (`bb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow_books
-- ----------------------------
INSERT INTO `borrow_books` VALUES (40, 1, 4, '2020-07-14 00:00:00', '2020-07-21 00:00:00');
INSERT INTO `borrow_books` VALUES (42, 2, 4, '2020-07-14 00:00:00', '2020-07-20 00:00:00');
INSERT INTO `borrow_books` VALUES (65, 8, 15, '2020-08-05 00:00:00', '2020-08-07 00:00:00');
INSERT INTO `borrow_books` VALUES (68, 1, 15, '2020-08-05 00:00:00', '2020-08-08 00:00:00');
INSERT INTO `borrow_books` VALUES (76, 1, 15, '2023-05-10 00:00:00', '2023-05-22 00:00:00');
INSERT INTO `borrow_books` VALUES (79, 6, 15, '2023-05-10 00:00:00', '2023-05-11 00:00:00');
INSERT INTO `borrow_books` VALUES (80, 6, 15, '2023-05-10 00:00:00', '2023-05-11 00:00:00');
INSERT INTO `borrow_books` VALUES (81, 6, 15, '2023-05-10 00:00:00', '2023-05-22 00:00:00');

-- ----------------------------
-- Table structure for give_back_books
-- ----------------------------
DROP TABLE IF EXISTS `give_back_books`;
CREATE TABLE `give_back_books`  (
  `gbb_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int(11) NOT NULL COMMENT '读者ID',
  `b_id` int(11) NOT NULL COMMENT '图书ID',
  `bb_time` date NOT NULL COMMENT '借阅时间',
  `due_time` date NOT NULL COMMENT '应还书日期',
  `reality_time` datetime NOT NULL COMMENT '实际还书时间',
  `is_overdue` tinyint(4) NOT NULL COMMENT '是否逾期',
  `rental_money` int(11) NOT NULL COMMENT '租金',
  PRIMARY KEY (`gbb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of give_back_books
-- ----------------------------
INSERT INTO `give_back_books` VALUES (15, 2, 2, '2020-07-10', '2020-07-11', '2020-07-10 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (16, 1, 1, '2020-07-14', '2020-07-16', '2020-07-14 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (17, 1, 1, '2020-07-14', '2020-07-15', '2020-07-14 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (18, 1, 1, '2020-07-14', '2020-07-17', '2020-07-14 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (19, 1, 1, '2020-07-14', '2020-07-16', '2020-07-14 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (20, 1, 15, '2020-07-14', '2020-07-16', '2020-07-14 00:00:00', 0, 110);
INSERT INTO `give_back_books` VALUES (21, 1, 14, '2020-07-19', '2020-07-20', '2020-07-19 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (22, 2, 14, '2020-07-19', '2020-07-20', '2020-07-19 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (23, 1, 15, '2020-07-20', '2020-07-22', '2020-07-21 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (24, 1, 14, '2020-07-20', '2020-07-22', '2020-07-21 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (25, 1, 16, '2020-07-20', '2020-07-22', '2020-07-21 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (26, 1, 17, '2020-07-21', '2020-07-23', '2020-07-21 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (27, 1, 17, '2020-07-21', '2020-07-23', '2020-07-21 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (28, 1, 17, '2020-07-21', '2020-07-25', '2020-07-24 00:00:00', 0, 300);
INSERT INTO `give_back_books` VALUES (29, 1, 15, '2020-07-24', '2020-07-25', '2020-07-24 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (30, 1, 17, '2020-07-21', '2020-07-23', '2020-07-26 00:00:00', 1, 800);
INSERT INTO `give_back_books` VALUES (31, 2, 17, '2020-07-21', '2020-07-24', '2020-07-26 00:00:00', 1, 700);
INSERT INTO `give_back_books` VALUES (32, 2, 17, '2020-07-21', '2020-07-24', '2020-07-26 00:00:00', 1, 700);
INSERT INTO `give_back_books` VALUES (33, 1, 15, '2020-07-24', '2020-07-26', '2020-07-26 00:00:00', 0, 200);
INSERT INTO `give_back_books` VALUES (34, 8, 16, '2020-07-25', '2020-07-28', '2020-07-26 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (35, 8, 15, '2020-07-26', '2020-07-27', '2020-07-26 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (36, 8, 16, '2020-07-26', '2020-08-04', '2020-07-26 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (37, 8, 17, '2020-07-26', '2020-07-27', '2020-07-26 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (38, 8, 16, '2020-07-26', '2020-07-30', '2020-07-26 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (39, 8, 15, '2020-07-26', '2020-08-03', '2020-07-26 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (40, 1, 15, '2020-07-27', '2020-07-30', '2020-08-05 00:00:00', 1, 1500);
INSERT INTO `give_back_books` VALUES (41, 8, 15, '2020-07-26', '2020-07-28', '2020-08-06 00:00:00', 1, 2000);
INSERT INTO `give_back_books` VALUES (42, 8, 15, '2020-07-26', '2020-07-30', '2020-08-07 00:00:00', 1, 2000);
INSERT INTO `give_back_books` VALUES (43, 10, 16, '2020-08-05', '2020-08-11', '2020-08-07 00:00:00', 0, 200);
INSERT INTO `give_back_books` VALUES (44, 1, 15, '2020-08-07', '2020-08-09', '2023-04-20 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (45, 1, 15, '2020-08-06', '2020-08-11', '2023-04-20 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (46, 1, 16, '2023-04-20', '2023-05-01', '2023-04-20 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (47, 1, 15, '2023-04-20', '2023-05-02', '2023-04-20 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (48, 8, 15, '2020-08-05', '2020-08-10', '2023-04-20 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (49, 1, 15, '2023-04-20', '2023-04-25', '2023-04-23 00:00:00', 0, 300);
INSERT INTO `give_back_books` VALUES (50, 10, 15, '2020-08-05', '2020-08-08', '2023-05-10 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (51, 6, 15, '2023-05-10', '2023-05-11', '2023-05-10 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (52, 6, 26, '2023-05-10', '2023-05-11', '2023-05-10 00:00:00', 0, 100);
INSERT INTO `give_back_books` VALUES (53, 6, 15, '2023-05-10', '2023-05-11', '2023-05-10 00:00:00', 0, 100);

-- ----------------------------
-- Table structure for mail_set
-- ----------------------------
DROP TABLE IF EXISTS `mail_set`;
CREATE TABLE `mail_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱密码',
  `overdue_before_day` int(11) NOT NULL COMMENT '逾期前多少天发送邮箱提醒',
  `overdue_after_day` int(11) NOT NULL COMMENT '逾期后多少天发送邮箱提醒',
  `overdue_interval` tinyint(4) NOT NULL COMMENT '逾期后是否间隔overdue_afrter_day再继续发送',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mail_set
-- ----------------------------
INSERT INTO `mail_set` VALUES (1, 'zpf_0827@163.com', 'DINODMVPZVSBPYKA', 2, 3, 0);
INSERT INTO `mail_set` VALUES (2, '2832887071@qq.com', 'syfsslehjxendhca', 2, 3, 0);

-- ----------------------------
-- Table structure for mail_symbol
-- ----------------------------
DROP TABLE IF EXISTS `mail_symbol`;
CREATE TABLE `mail_symbol`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mail_symbol
-- ----------------------------
INSERT INTO `mail_symbol` VALUES (1, '借书时间占位符', '{borrowBooksTime}');
INSERT INTO `mail_symbol` VALUES (2, '还书间占位符', '{dueTime}');
INSERT INTO `mail_symbol` VALUES (3, '书名占位符', '{bookName}');
INSERT INTO `mail_symbol` VALUES (4, '用户姓名占位符', '{userName}');
INSERT INTO `mail_symbol` VALUES (5, '剩余天数占位符', '{remainingDay}');
INSERT INTO `mail_symbol` VALUES (6, '网站地址占位符', '{systemUrl}');

-- ----------------------------
-- Table structure for mail_template
-- ----------------------------
DROP TABLE IF EXISTS `mail_template`;
CREATE TABLE `mail_template`  (
  `mt_id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱模板',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板类型名',
  `default_template` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '默认模板',
  PRIMARY KEY (`mt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mail_template
-- ----------------------------
INSERT INTO `mail_template` VALUES (1, '亲爱的 \"{userName}\" 您好！您在我校图书馆借的书籍《{bookName}》仅剩下 {remainingDay} 天的时间，若您需要续借，请到我校图书关办理相关手续，或联系管理员办理相关续借手续。若不续借的话，请您在还书日期{dueTime}内归还图书！感谢您的配合！祝您生活愉快呀！网站地址：{systemUrl}', '未逾期', '亲爱的 \"{userName}\" 您好！您在我校图书馆借的书籍《{bookName}》仅剩下 {remainingDay} 天的时间，若您需要续借，请到我校图书关办理相关手续，或联系管理员办理相关续借手续。若不续借的话，请您在还书日期{dueTime}内归还图书！感谢您的配合！祝您生活愉快呀！');
INSERT INTO `mail_template` VALUES (2, '亲爱的 \"{userName}\" 您好！您在{borrowBooksTime}，在我校图书馆借的书籍《数据解构》已经逾期{remainingDay} 天的时间，请您尽快还书！感谢您的配合，祝您生活愉快呐！', '逾期', '亲爱的 \"{userName}\" 您好！您在{borrowBooksTime}，在我校图书馆借的书籍《数据解构》已经逾期{remainingDay} 天的时间，请您尽快还书！感谢您的配合，祝您生活愉快呐！');

-- ----------------------------
-- Table structure for mail_template_type
-- ----------------------------
DROP TABLE IF EXISTS `mail_template_type`;
CREATE TABLE `mail_template_type`  (
  `tt_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板类型名',
  `default` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '默认模板',
  PRIMARY KEY (`tt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mail_template_type
-- ----------------------------
INSERT INTO `mail_template_type` VALUES (1, '逾期', 'rw');
INSERT INTO `mail_template_type` VALUES (2, '未逾期', '123');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `gender` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `birthday` date NOT NULL COMMENT '出生日期',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `mt_id` int(11) NOT NULL COMMENT '类型id',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `ismax` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否超管',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, '杨家豪', '男', '123321', '2003-01-13', '2832887071@qq.com', '15753608298', 500, 'Admin', '是');
INSERT INTO `manager` VALUES (2, '管理员', '男', '123456', '2020-07-04', '', '', 500, 'test', '否');

-- ----------------------------
-- Table structure for manager_type
-- ----------------------------
DROP TABLE IF EXISTS `manager_type`;
CREATE TABLE `manager_type`  (
  `mt_id` int(11) NOT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理人员类别名称',
  PRIMARY KEY (`mt_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manager_type
-- ----------------------------
INSERT INTO `manager_type` VALUES (1, '管理员');
INSERT INTO `manager_type` VALUES (2, '操作员');

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户名称',
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `r_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `gender` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `balance` int(11) NOT NULL COMMENT '余额/分',
  `credit_score` int(11) NULL DEFAULT NULL COMMENT '信誉积分',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后一次登录的时间',
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES (1, 'yangjiahao', '123321', '风漾', '男', '2023-11-26', '2832887071@qq.com', '15753608298', 0, NULL, NULL);
INSERT INTO `reader` VALUES (2, 'SyDenMm', '123456', '张玺祯', '男', '2020-07-15', '892143460@qq.com', '12345678900', 0, NULL, NULL);
INSERT INTO `reader` VALUES (13, '1', '3', NULL, '4', NULL, '5', '6', 7, NULL, NULL);
INSERT INTO `reader` VALUES (14, '2', '4', NULL, '5', NULL, '6', '7', 8, NULL, NULL);
INSERT INTO `reader` VALUES (15, '3', '5', NULL, '6', NULL, '7', '8', 9, NULL, NULL);

-- ----------------------------
-- Table structure for renewal _book
-- ----------------------------
DROP TABLE IF EXISTS `renewal _book`;
CREATE TABLE `renewal _book`  (
  `rbb_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int(11) NOT NULL COMMENT '读者ID',
  `b_id` int(11) NOT NULL COMMENT '图书ID',
  `r_day` int(11) NOT NULL COMMENT '续约天数',
  PRIMARY KEY (`rbb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of renewal _book
-- ----------------------------

-- ----------------------------
-- Table structure for reserve_borrow_books
-- ----------------------------
DROP TABLE IF EXISTS `reserve_borrow_books`;
CREATE TABLE `reserve_borrow_books`  (
  `rbb_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int(11) NOT NULL COMMENT '读者ID',
  `b_id` int(11) NOT NULL COMMENT '图书ID',
  `order_time` datetime NOT NULL COMMENT '订单时间',
  `remaining_days` int(11) NOT NULL COMMENT '借阅的天数',
  PRIMARY KEY (`rbb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reserve_borrow_books
-- ----------------------------
INSERT INTO `reserve_borrow_books` VALUES (123, 8, 14, '2020-07-25 23:58:28', 2);

-- ----------------------------
-- Table structure for turnover_day_statistics
-- ----------------------------
DROP TABLE IF EXISTS `turnover_day_statistics`;
CREATE TABLE `turnover_day_statistics`  (
  `t_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `turnover` int(11) NULL DEFAULT NULL COMMENT '营业额',
  PRIMARY KEY (`t_d_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of turnover_day_statistics
-- ----------------------------
INSERT INTO `turnover_day_statistics` VALUES (1, '2020-07-19', 250);
INSERT INTO `turnover_day_statistics` VALUES (2, '2020-07-20', 300);
INSERT INTO `turnover_day_statistics` VALUES (6, '2020-07-22', 0);
INSERT INTO `turnover_day_statistics` VALUES (7, '2020-07-23', 0);
INSERT INTO `turnover_day_statistics` VALUES (8, '2020-07-24', 400);
INSERT INTO `turnover_day_statistics` VALUES (9, '2020-07-25', 0);
INSERT INTO `turnover_day_statistics` VALUES (10, '2020-07-26', 3000);
INSERT INTO `turnover_day_statistics` VALUES (11, '2020-07-27', 0);
INSERT INTO `turnover_day_statistics` VALUES (12, '2020-07-28', 0);
INSERT INTO `turnover_day_statistics` VALUES (13, '2020-07-29', 0);
INSERT INTO `turnover_day_statistics` VALUES (14, '2020-07-30', 0);
INSERT INTO `turnover_day_statistics` VALUES (15, '2020-07-31', 0);
INSERT INTO `turnover_day_statistics` VALUES (16, '2020-08-01', 0);
INSERT INTO `turnover_day_statistics` VALUES (17, '2020-08-02', 0);
INSERT INTO `turnover_day_statistics` VALUES (18, '2020-08-03', 0);
INSERT INTO `turnover_day_statistics` VALUES (19, '2020-08-04', 0);
INSERT INTO `turnover_day_statistics` VALUES (20, '2020-08-05', 1500);
INSERT INTO `turnover_day_statistics` VALUES (21, '2020-08-06', 2000);
INSERT INTO `turnover_day_statistics` VALUES (22, '2020-08-07', 2200);
INSERT INTO `turnover_day_statistics` VALUES (23, '2020-08-08', 0);
INSERT INTO `turnover_day_statistics` VALUES (24, '2020-08-09', 0);
INSERT INTO `turnover_day_statistics` VALUES (25, '2020-08-10', 0);
INSERT INTO `turnover_day_statistics` VALUES (26, '2020-08-11', 0);
INSERT INTO `turnover_day_statistics` VALUES (27, '2020-08-12', 0);
INSERT INTO `turnover_day_statistics` VALUES (28, '2020-08-13', 0);
INSERT INTO `turnover_day_statistics` VALUES (29, '2020-08-14', 0);
INSERT INTO `turnover_day_statistics` VALUES (30, '2020-08-15', 0);
INSERT INTO `turnover_day_statistics` VALUES (31, '2020-08-16', 0);
INSERT INTO `turnover_day_statistics` VALUES (32, '2020-08-17', 0);
INSERT INTO `turnover_day_statistics` VALUES (33, '2020-08-18', 0);
INSERT INTO `turnover_day_statistics` VALUES (34, '2020-08-19', 0);
INSERT INTO `turnover_day_statistics` VALUES (35, '2020-08-20', 0);
INSERT INTO `turnover_day_statistics` VALUES (36, '2020-08-21', 0);
INSERT INTO `turnover_day_statistics` VALUES (37, '2020-08-22', 0);
INSERT INTO `turnover_day_statistics` VALUES (38, '2020-08-23', 0);
INSERT INTO `turnover_day_statistics` VALUES (39, '2020-08-24', 0);
INSERT INTO `turnover_day_statistics` VALUES (40, '2020-08-25', 0);
INSERT INTO `turnover_day_statistics` VALUES (41, '2020-08-26', 0);
INSERT INTO `turnover_day_statistics` VALUES (42, '2020-08-27', 0);
INSERT INTO `turnover_day_statistics` VALUES (43, '2020-08-28', 0);
INSERT INTO `turnover_day_statistics` VALUES (44, '2020-08-29', 0);
INSERT INTO `turnover_day_statistics` VALUES (45, '2020-08-30', 0);
INSERT INTO `turnover_day_statistics` VALUES (46, '2020-08-31', 0);
INSERT INTO `turnover_day_statistics` VALUES (47, '2020-09-01', 0);
INSERT INTO `turnover_day_statistics` VALUES (48, '2020-09-02', 0);
INSERT INTO `turnover_day_statistics` VALUES (49, '2020-09-03', 0);
INSERT INTO `turnover_day_statistics` VALUES (50, '2023-04-14', 0);
INSERT INTO `turnover_day_statistics` VALUES (51, '2023-04-15', 0);
INSERT INTO `turnover_day_statistics` VALUES (52, '2023-04-16', 4500);
INSERT INTO `turnover_day_statistics` VALUES (53, '2023-04-20', 500);
INSERT INTO `turnover_day_statistics` VALUES (54, '2023-04-21', 0);
INSERT INTO `turnover_day_statistics` VALUES (55, '2023-04-22', 0);

-- ----------------------------
-- Table structure for turnover_month_statistics
-- ----------------------------
DROP TABLE IF EXISTS `turnover_month_statistics`;
CREATE TABLE `turnover_month_statistics`  (
  `t_m_id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(11) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `turnover` int(11) NULL DEFAULT NULL COMMENT '营业额',
  PRIMARY KEY (`t_m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of turnover_month_statistics
-- ----------------------------
INSERT INTO `turnover_month_statistics` VALUES (3, '2020-07', 3950);
INSERT INTO `turnover_month_statistics` VALUES (4, '2020-08', 5700);

-- ----------------------------
-- Table structure for turnover_year_statistics
-- ----------------------------
DROP TABLE IF EXISTS `turnover_year_statistics`;
CREATE TABLE `turnover_year_statistics`  (
  `t_y_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(11) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `turnover` int(11) NULL DEFAULT NULL COMMENT '营业额',
  PRIMARY KEY (`t_y_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of turnover_year_statistics
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
