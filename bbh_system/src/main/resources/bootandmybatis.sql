/*
Navicat MySQL Data Transfer

Source Server         : sql0403yfh
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : bootandmybatis

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-07-17 19:42:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bbh_class
-- ----------------------------
DROP TABLE IF EXISTS `bbh_class`;
CREATE TABLE `bbh_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher` varchar(20) NOT NULL,
  `openinghours` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbh_class
-- ----------------------------
INSERT INTO `bbh_class` VALUES ('1', 'java26', '许伟', '2019-01-01');
INSERT INTO `bbh_class` VALUES ('2', 'java27', '孙武', '2019-01-01');
INSERT INTO `bbh_class` VALUES ('3', 'accp26', '骆妃艳', '2019-01-01');
INSERT INTO `bbh_class` VALUES ('6', 'java22', '俞家乐', '2019-01-01');
INSERT INTO `bbh_class` VALUES ('7', 'accp11', '张悦', '2019-01-01');
INSERT INTO `bbh_class` VALUES ('10', 'java18', '姚方徽', '2019-01-01');
INSERT INTO `bbh_class` VALUES ('11', 'accp25', '何利兴', '2019-01-01');
INSERT INTO `bbh_class` VALUES ('13', 'java00', '张玥', '2019-07-16');

-- ----------------------------
-- Table structure for bbh_room_money
-- ----------------------------
DROP TABLE IF EXISTS `bbh_room_money`;
CREATE TABLE `bbh_room_money` (
  `roomId` int(11) NOT NULL,
  `waterNum` double(11,1) NOT NULL,
  `electricNum` double(11,1) NOT NULL,
  `price` double(11,1) NOT NULL,
  `readingDay` date NOT NULL,
  KEY `roomId` (`roomId`),
  CONSTRAINT `bbh_room_money_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `bbh_room_room` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbh_room_money
-- ----------------------------
INSERT INTO `bbh_room_money` VALUES ('5', '50.0', '200.0', '340.0', '2019-06-22');
INSERT INTO `bbh_room_money` VALUES ('5', '10.0', '50.0', '85.0', '2019-05-22');
INSERT INTO `bbh_room_money` VALUES ('1', '5.0', '5.0', '18.0', '2019-05-22');
INSERT INTO `bbh_room_money` VALUES ('1', '5.0', '6.0', '20.1', '2019-06-22');
INSERT INTO `bbh_room_money` VALUES ('2', '5.0', '5.0', '18.0', '2019-05-22');
INSERT INTO `bbh_room_money` VALUES ('2', '5.0', '10.0', '28.5', '2019-06-22');
INSERT INTO `bbh_room_money` VALUES ('3', '4.0', '10.0', '27.0', '2019-06-22');
INSERT INTO `bbh_room_money` VALUES ('4', '4.0', '11.0', '29.1', '2019-05-22');
INSERT INTO `bbh_room_money` VALUES ('6', '4.0', '12.0', '30.0', '2019-07-10');
INSERT INTO `bbh_room_money` VALUES ('6', '20.0', '40.0', '114.0', '2019-07-11');

-- ----------------------------
-- Table structure for bbh_room_room
-- ----------------------------
DROP TABLE IF EXISTS `bbh_room_room`;
CREATE TABLE `bbh_room_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` int(11) NOT NULL COMMENT '房号',
  `number` int(11) unsigned NOT NULL COMMENT '当前人数',
  `size` int(11) NOT NULL COMMENT '最大人数',
  `face` varchar(554) DEFAULT NULL COMMENT '朝向',
  `square` double(10,1) DEFAULT NULL COMMENT '面积_平方米',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbh_room_room
-- ----------------------------
INSERT INTO `bbh_room_room` VALUES ('1', '501', '2', '4', null, null);
INSERT INTO `bbh_room_room` VALUES ('2', '503', '2', '4', null, null);
INSERT INTO `bbh_room_room` VALUES ('3', '520', '4', '8', null, null);
INSERT INTO `bbh_room_room` VALUES ('4', '521', '3', '5', null, null);
INSERT INTO `bbh_room_room` VALUES ('5', '539', '4', '4', null, null);
INSERT INTO `bbh_room_room` VALUES ('6', '540', '4', '6', null, null);

-- ----------------------------
-- Table structure for bbh_unitprice
-- ----------------------------
DROP TABLE IF EXISTS `bbh_unitprice`;
CREATE TABLE `bbh_unitprice` (
  `waterUnit` double(25,1) NOT NULL,
  `electricUnit` double(25,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbh_unitprice
-- ----------------------------
INSERT INTO `bbh_unitprice` VALUES ('1.5', '2.1');

-- ----------------------------
-- Table structure for bbh_user_right
-- ----------------------------
DROP TABLE IF EXISTS `bbh_user_right`;
CREATE TABLE `bbh_user_right` (
  `id` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `rightName` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  CONSTRAINT `bbh_user_right_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `bbh_user_right` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbh_user_right
-- ----------------------------
INSERT INTO `bbh_user_right` VALUES ('0', '0', '权限', '所有权限');
INSERT INTO `bbh_user_right` VALUES ('1', '0', '管理', '管理模块');
INSERT INTO `bbh_user_right` VALUES ('2', '0', '查询', '查询模块');
INSERT INTO `bbh_user_right` VALUES ('3', '1', '宿舍管理', null);
INSERT INTO `bbh_user_right` VALUES ('4', '1', '班级管理', null);
INSERT INTO `bbh_user_right` VALUES ('5', '1', '学生管理', null);
INSERT INTO `bbh_user_right` VALUES ('6', '2', '宿舍查询', null);
INSERT INTO `bbh_user_right` VALUES ('7', '2', '班级查询', null);
INSERT INTO `bbh_user_right` VALUES ('8', '2', '学生查询', null);
INSERT INTO `bbh_user_right` VALUES ('9', '1', '账户管理', null);

-- ----------------------------
-- Table structure for bbh_user_role
-- ----------------------------
DROP TABLE IF EXISTS `bbh_user_role`;
CREATE TABLE `bbh_user_role` (
  `id` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `roleName` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  CONSTRAINT `bbh_user_role_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `bbh_user_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbh_user_role
-- ----------------------------
INSERT INTO `bbh_user_role` VALUES ('1', '1', '学生', null);

-- ----------------------------
-- Table structure for bbh_user_roleright
-- ----------------------------
DROP TABLE IF EXISTS `bbh_user_roleright`;
CREATE TABLE `bbh_user_roleright` (
  `id` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `rightId` int(11) NOT NULL,
  `rightType` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `rightId` (`rightId`),
  CONSTRAINT `bbh_user_roleright_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `bbh_user_role` (`id`),
  CONSTRAINT `bbh_user_roleright_ibfk_2` FOREIGN KEY (`rightId`) REFERENCES `bbh_user_right` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbh_user_roleright
-- ----------------------------

-- ----------------------------
-- Table structure for bbh_user_user
-- ----------------------------
DROP TABLE IF EXISTS `bbh_user_user`;
CREATE TABLE `bbh_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户唯一识别主键',
  `roomId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `realName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL COMMENT '密码',
  `telephone` int(11) NOT NULL COMMENT '手机号',
  `idCard` varchar(255) NOT NULL,
  `payId` int(11) DEFAULT '1' COMMENT '缴费状态',
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`),
  KEY `roleId` (`roleId`),
  KEY `classId` (`classId`),
  KEY `padId` (`payId`),
  CONSTRAINT `bbh_user_user_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `bbh_class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `bbh_user_user_ibfk_2` FOREIGN KEY (`roomId`) REFERENCES `bbh_room_room` (`id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `bbh_user_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbh_user_user
-- ----------------------------
INSERT INTO `bbh_user_user` VALUES ('1', '5', '1', '1', 'cxt', '陈幸添', '123', '12580', '333', '1');
INSERT INTO `bbh_user_user` VALUES ('2', '5', '1', '1', 'yfh', '姚方徽', '123', '15555', '222', '1');
INSERT INTO `bbh_user_user` VALUES ('4', '5', '1', '1', 'tzk', '邰振康', '123', '16666', '111', '1');
INSERT INTO `bbh_user_user` VALUES ('5', '5', '1', '1', 'hl', '黄亮', '123', '17777', '000', '1');
INSERT INTO `bbh_user_user` VALUES ('6', '5', '1', '2', 'ww', '王五', '123', '18888', '999', '2');
INSERT INTO `bbh_user_user` VALUES ('7', '3', '1', '2', 'zs', '张三', '123', '19999', '100', '2');
INSERT INTO `bbh_user_user` VALUES ('8', '3', '1', '2', 'ls', '李四', '123', '20000', '199', '2');
INSERT INTO `bbh_user_user` VALUES ('9', '3', '1', '2', 'zw', '张伟', '123', '28888', '200', '2');
