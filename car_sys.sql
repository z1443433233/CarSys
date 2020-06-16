/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : car_sys

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 13/05/2020 17:16:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_adminuser
-- ----------------------------
DROP TABLE IF EXISTS `sys_adminuser`;
CREATE TABLE `sys_adminuser`  (
  `id` int(11) NOT NULL,
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_adminuser
-- ----------------------------
INSERT INTO `sys_adminuser` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for sys_car
-- ----------------------------
DROP TABLE IF EXISTS `sys_car`;
CREATE TABLE `sys_car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sitnum` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `price` double(10, 2) NOT NULL,
  `number` int(11) NOT NULL,
  `picture` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_car
-- ----------------------------
INSERT INTO `sys_car` VALUES (1, '大众帕萨特', '手自一体', 5, 7, 249.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97%E5%B8%95%E8%90%A8%E7%89%B9.png');
INSERT INTO `sys_car` VALUES (2, '别克GL8', '手自一体', 7, 7, 282.00, 8, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%88%AB%E5%85%8BGL8%EF%BC%88%E6%B2%AA%E7%89%8C%EF%BC%89.png');
INSERT INTO `sys_car` VALUES (3, '荣威E550', '自排', 5, 7, 400.00, 15, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E8%8D%A3%E5%A8%81E550.png');
INSERT INTO `sys_car` VALUES (4, '别克GL8(沪牌)', '自排', 7, 7, 510.00, 11, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E6%B1%9F%E6%B7%AE%E7%91%9E%E9%A3%8E8%E5%BA%A7.png');
INSERT INTO `sys_car` VALUES (5, '别克凯越', '自排', 5, 7, 180.00, 5, 'https://www.chesudi.com/static/img/onerrorcar.9ae6dcc.png');
INSERT INTO `sys_car` VALUES (6, '起亚K2', '自排', 5, 7, 69.00, 30, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E8%B5%B7%E4%BA%9AK2.png');
INSERT INTO `sys_car` VALUES (7, '大众', '自排', 5, 8, 89.00, 30, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (8, '福特福克斯', '自排', 5, 8, 90.00, 12, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E6%97%A5%E4%BA%A7%E9%98%B3%E5%85%89.png');
INSERT INTO `sys_car` VALUES (9, '尼桑阳光', '自排', 5, 9, 110.00, 20, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97%E6%8D%B7%E8%BE%BE.png');
INSERT INTO `sys_car` VALUES (10, '大众朗逸', '手自一体', 6, 8, 120.00, 30, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (11, '比亚迪秦', '自排', 7, 8, 150.00, 11, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E6%AF%94%E4%BA%9A%E8%BF%AA%E7%A7%A6.png');
INSERT INTO `sys_car` VALUES (12, '斯柯达明锐', '自排', 8, 9, 99.00, 20, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (13, '别克君越', '自排', 5, 9, 110.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E9%80%9AG10%20%E6%B2%AA%E7%89%8C.png');
INSERT INTO `sys_car` VALUES (14, '日产阳光', '手自一体', 5, 9, 110.00, 30, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E6%97%A5%E4%BA%A7%E5%A4%A9%E7%B1%81.png');
INSERT INTO `sys_car` VALUES (15, '别克凯越', '手排', 6, 10, 130.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (16, '传祺GS4-15', '自排', 5, 11, 115.00, 5, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E4%BC%A0%E7%A5%BAGS4-15%E8%B1%AA%E5%8D%8E%E7%89%88.png');
INSERT INTO `sys_car` VALUES (17, '大众', '自排', 5, 12, 110.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97%E6%A1%91%E5%A1%94%E7%BA%B3%EF%BC%8813%E6%96%B0%E6%AC%BE%EF%BC%89.png');
INSERT INTO `sys_car` VALUES (18, '名爵MG5', '自排', 5, 13, 120.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%90%8D%E7%88%B5MG5.png');
INSERT INTO `sys_car` VALUES (19, '名爵MG5', '自排', 5, 12, 120.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%90%8D%E7%88%B5MG5.png');
INSERT INTO `sys_car` VALUES (20, '福特福克斯', '自排', 5, 13, 90.00, 12, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (21, '尼桑阳光', '自排', 5, 14, 110.00, 20, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (22, '大众朗逸', '手自一体', 6, 14, 120.00, 30, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (23, '比亚迪秦', '自排', 7, 14, 150.00, 11, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (24, '斯柯达明锐', '自排', 8, 15, 99.00, 20, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (25, '别克君越', '自排', 5, 15, 110.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (26, '日产阳光', '手自一体', 5, 13, 110.00, 30, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (27, '别克凯越', '手排', 6, 11, 130.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (28, '传祺GS4-15', '自排', 5, 10, 115.00, 5, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (29, '大众111', '自动挡', 5, 9, 123.00, 11, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (30, '2020款 325Li 首发版', '手动挡', 4, 8, 5000.00, 5, 'https://car2.autoimg.cn/cardfs/product/g30/M06/43/47/240x180_0_q95_c42_autohomecar__ChsEf1z38VyAe447AAjYSNRXrEA269.jpg');
INSERT INTO `sys_car` VALUES (31, '2020款 325Li 首发版', '手动挡', 4, 16, 5000.00, 5, 'https://car2.autoimg.cn/cardfs/product/g30/M06/43/47/240x180_0_q95_c42_autohomecar__ChsEf1z38VyAe447AAjYSNRXrEA269.jpg');
INSERT INTO `sys_car` VALUES (32, '别克凯越', '手排', 6, 16, 130.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (33, '别克君越', '自排', 5, 16, 110.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97POLO.png');
INSERT INTO `sys_car` VALUES (34, '名爵MG5', '自排', 5, 16, 120.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%90%8D%E7%88%B5MG5.png');
INSERT INTO `sys_car` VALUES (35, '起亚K2', '自排', 5, 16, 69.00, 30, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E8%B5%B7%E4%BA%9AK2.png');
INSERT INTO `sys_car` VALUES (36, '日产阳光', '手自一体', 5, 17, 110.00, 30, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E6%97%A5%E4%BA%A7%E5%A4%A9%E7%B1%81.png');
INSERT INTO `sys_car` VALUES (37, '大众高尔夫', '手动挡', 5, 7, 100.00, 15, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97%E9%AB%98%E5%B0%94%E5%A4%AB.png');
INSERT INTO `sys_car` VALUES (38, '大众高尔夫', '手动挡', 5, 8, 100.00, 15, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97%E9%AB%98%E5%B0%94%E5%A4%AB.png');
INSERT INTO `sys_car` VALUES (39, '大众高尔夫', '手动挡', 5, 18, 100.00, 15, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97%E9%AB%98%E5%B0%94%E5%A4%AB.png');
INSERT INTO `sys_car` VALUES (40, '雪佛兰科沃兹', '自排', 5, 16, 198.00, 11, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E9%9B%AA%E4%BD%9B%E5%85%B0%E7%A7%91%E6%B2%83%E5%85%B9.png');
INSERT INTO `sys_car` VALUES (41, '雪佛兰科沃兹', '自排', 5, 17, 198.00, 12, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E9%9B%AA%E4%BD%9B%E5%85%B0%E7%A7%91%E6%B2%83%E5%85%B9.png');
INSERT INTO `sys_car` VALUES (42, '丰田花冠', '自排', 5, 19, 258.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E4%B8%B0%E7%94%B0%E8%8A%B1%E5%86%A0.png');
INSERT INTO `sys_car` VALUES (43, '别克GL8', '手自一体', 7, 19, 343.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%88%AB%E5%85%8BGL8.png');
INSERT INTO `sys_car` VALUES (44, '大众迈腾', '自排', 5, 19, 516.00, 15, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%A4%A7%E4%BC%97%E8%BF%88%E8%85%BE.png');
INSERT INTO `sys_car` VALUES (45, '宝马5系', '自排', 5, 18, 551.00, 8, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E5%AE%9D%E9%A9%AC5%E7%B3%BB.png');
INSERT INTO `sys_car` VALUES (46, '起亚K4（1.8L）', '自排', 5, 17, 48.00, 20, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E8%B5%B7%E4%BA%9AK4%EF%BC%881.8L%EF%BC%89.png');
INSERT INTO `sys_car` VALUES (47, '本田凌派', '自排', 5, 17, 68.00, 15, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E6%9C%AC%E7%94%B0%E5%87%8C%E6%B4%BE.png');
INSERT INTO `sys_car` VALUES (48, '丰田汉兰达5座', '自排', 5, 18, 238.00, 10, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E4%B8%B0%E7%94%B0%E6%B1%89%E5%85%B0%E8%BE%BE5%E5%BA%A7.png');
INSERT INTO `sys_car` VALUES (49, '起亚K5', '自排', 5, 18, 46.00, 19, 'https://web-api.chesudi.com/img/carTypeimage/ScarTypeimage/%E8%B5%B7%E4%BA%9AK5.png');

-- ----------------------------
-- Table structure for sys_city
-- ----------------------------
DROP TABLE IF EXISTS `sys_city`;
CREATE TABLE `sys_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_city
-- ----------------------------
INSERT INTO `sys_city` VALUES (1, '安阳', 0);
INSERT INTO `sys_city` VALUES (2, '鹤壁', 0);
INSERT INTO `sys_city` VALUES (3, '新乡', 0);
INSERT INTO `sys_city` VALUES (7, '安阳火车站店', 1);
INSERT INTO `sys_city` VALUES (8, '安阳东站店', 1);
INSERT INTO `sys_city` VALUES (9, '安阳客运站店', 1);
INSERT INTO `sys_city` VALUES (10, '鹤壁站店', 2);
INSERT INTO `sys_city` VALUES (11, '明达体育公园站店', 2);
INSERT INTO `sys_city` VALUES (12, '鹤壁东站店', 2);
INSERT INTO `sys_city` VALUES (13, '新乡火车站店', 3);
INSERT INTO `sys_city` VALUES (14, '新乡东站店', 3);
INSERT INTO `sys_city` VALUES (15, '新乡医学院站店', 3);
INSERT INTO `sys_city` VALUES (16, '安阳工学院站店', 1);
INSERT INTO `sys_city` VALUES (17, '安阳学院站店', 1);
INSERT INTO `sys_city` VALUES (18, '安阳师范学院站店', 1);
INSERT INTO `sys_city` VALUES (19, '人文管理学院站店', 1);

-- ----------------------------
-- Table structure for sys_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_order`;
CREATE TABLE `sys_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `getid` int(11) NULL DEFAULT NULL,
  `backid` int(11) NULL DEFAULT NULL,
  `oprice` double(10, 2) NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reserve_date` datetime(0) NULL DEFAULT NULL,
  `return_date` datetime(0) NULL DEFAULT NULL,
  `dispose_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_order
-- ----------------------------
INSERT INTO `sys_order` VALUES (1, 1, 1, 7, 7, 189.00, '已归还', '2020-03-03 11:38:13', '2020-03-05 11:38:25', '2020-03-06 11:38:36');
INSERT INTO `sys_order` VALUES (2, 19, 1, 12, 8, 205.00, '已归还', '2020-03-11 11:41:20', '2020-03-24 13:17:06', '2020-03-24 17:45:11');
INSERT INTO `sys_order` VALUES (3, 15, 1, 10, 8, 215.00, '已归还', '2020-03-21 11:41:24', '2020-03-24 17:38:04', '2020-03-24 17:24:53');
INSERT INTO `sys_order` VALUES (4, 11, 1, 8, 8, 235.00, '处理中', '2020-03-21 11:41:24', '2020-04-17 14:37:50', NULL);
INSERT INTO `sys_order` VALUES (5, 27, 1, 11, 12, 215.00, '处理中', '2020-03-21 11:41:24', '2020-04-10 19:54:53', NULL);
INSERT INTO `sys_order` VALUES (6, 19, 1, 12, 15, 205.00, '处理中', '2020-03-21 11:41:24', '2020-04-17 14:27:25', NULL);
INSERT INTO `sys_order` VALUES (7, 11, 7, 8, 9, 235.00, '已预订', '2020-03-21 11:41:24', NULL, NULL);
INSERT INTO `sys_order` VALUES (8, 11, 1, 8, 9, 235.00, '处理中', '2020-03-21 11:41:24', '2020-04-17 14:28:59', NULL);
INSERT INTO `sys_order` VALUES (9, 11, 1, 8, 9, 235.00, '处理中', '2020-03-21 11:41:24', '2020-04-17 14:29:22', NULL);
INSERT INTO `sys_order` VALUES (10, 15, 1, 10, 12, 215.00, '处理中', '2020-03-21 11:41:24', '2020-04-17 14:37:40', '2020-04-17 14:37:33');
INSERT INTO `sys_order` VALUES (11, 19, 1, 12, 15, 205.00, '处理中', '2020-03-21 11:41:24', '2020-04-10 19:54:23', NULL);
INSERT INTO `sys_order` VALUES (12, 19, 1, 12, 7, 205.00, '处理中', '2020-03-21 11:41:24', '2020-04-10 19:15:23', NULL);
INSERT INTO `sys_order` VALUES (13, 27, 1, 11, 15, 215.00, '已归还', '2020-03-12 11:41:24', '2020-03-20 11:41:58', '2020-03-21 11:42:28');
INSERT INTO `sys_order` VALUES (14, 9, 1, 9, 14, 195.00, '处理中', '2020-03-21 11:41:24', '2020-03-24 13:29:24', NULL);
INSERT INTO `sys_order` VALUES (15, 7, 1, 7, 13, 174.00, '处理中', '2020-03-21 11:41:24', '2020-04-05 21:48:55', NULL);
INSERT INTO `sys_order` VALUES (16, 9, 1, 9, 8, 195.00, '处理中', '2020-03-19 11:41:24', '2020-03-20 11:43:02', NULL);
INSERT INTO `sys_order` VALUES (17, 1, 10, 7, 8, 334.00, '已归还', '2020-04-02 12:32:37', '2020-04-02 12:33:22', '2020-04-02 12:38:43');
INSERT INTO `sys_order` VALUES (18, 10, 11, 8, 8, 205.00, '已归还', '2020-04-02 12:49:42', '2020-04-02 12:50:11', '2020-04-02 12:54:18');
INSERT INTO `sys_order` VALUES (19, 5, 1, 7, 9, 265.00, '处理中', '2020-04-04 11:22:26', '2020-04-05 21:55:24', NULL);
INSERT INTO `sys_order` VALUES (20, 2, 1, 7, 10, 367.00, '处理中', '2020-04-09 15:19:41', '2020-04-10 19:14:42', NULL);
INSERT INTO `sys_order` VALUES (21, 12, 1, 9, 16, 184.00, '处理中', '2020-04-09 15:25:45', '2020-04-10 19:15:29', NULL);
INSERT INTO `sys_order` VALUES (22, 28, 1, 10, 7, 200.00, '处理中', '2020-04-09 15:59:36', '2020-04-17 14:37:18', '2020-04-17 14:37:15');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invitation` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '15225181281', '123456', '1443433233@qq.com', '111', 1);
INSERT INTO `sys_user` VALUES (7, '13733975958', '123456', '563911475@qq.com', '123', 1);
INSERT INTO `sys_user` VALUES (9, '15225181282', '123456', '1443433233@qq.com', '1234', 1);
INSERT INTO `sys_user` VALUES (10, '15225181284', '123123', '1443233233@qq.com', '1234', 1);
INSERT INTO `sys_user` VALUES (11, '15225181280', '123456789', '1443433233@qq.com', '1234', 1);

SET FOREIGN_KEY_CHECKS = 1;
