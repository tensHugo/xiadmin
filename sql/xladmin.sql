/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : xladmin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-29 01:55:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `logtime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-25 23:38:10', '系统管理员', '10');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qq` varchar(20) NOT NULL,
  `context` varchar(20) DEFAULT NULL,
  `adminname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '1099221484', '这里是系统公告', '后台管理系统');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id自增',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `ip` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `qq` varchar(32) DEFAULT NULL,
  `zctime` datetime DEFAULT NULL COMMENT '注册时间',
  `logintime` varchar(36) DEFAULT NULL COMMENT '最后登陆时间',
  `money` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('111', 'daffffff', '118.250.229.138', null, '2018-03-23 16:52:21', null, '1');
INSERT INTO `user` VALUES ('112', 'DAJEVYAZ142059', '118.250.229.138', '10002', '2018-03-23 16:53:36', '2018-03-23 16:53:44', '100');
INSERT INTO `user` VALUES ('113', 'DAJEFREQ372081', '118.250.229.138', '123456', '2018-03-23 17:31:55', '2018-03-23 17:32:03', '0');
INSERT INTO `user` VALUES ('114', '789456123', '220.202.154.79', null, '2018-03-25 14:03:08', null, '0');

-- ----------------------------
-- Table structure for userip
-- ----------------------------
DROP TABLE IF EXISTS `userip`;
CREATE TABLE `userip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userip
-- ----------------------------
INSERT INTO `userip` VALUES ('66', 'adminfnf', '113.241.0.232', '2018-03-22 14:13:16');
INSERT INTO `userip` VALUES ('67', 'DAJEWCJB246585', '222.247.110.35', '2018-03-22 14:15:15');
INSERT INTO `userip` VALUES ('68', 'DAJEWCJB246585', '113.241.0.232', '2018-03-22 14:16:55');
INSERT INTO `userip` VALUES ('69', 'DAJEWCJB246585', '223.104.131.87', '2018-03-22 14:22:20');
INSERT INTO `userip` VALUES ('70', 'DAJEWCJB246585', '120.204.17.68', '2018-03-22 14:25:06');
INSERT INTO `userip` VALUES ('71', 'DAJEWCJB246585', '113.104.33.197', '2018-03-22 15:11:19');
INSERT INTO `userip` VALUES ('72', 'DAJEWCJB246585', '106.120.161.66', '2018-03-22 15:23:28');
INSERT INTO `userip` VALUES ('73', 'DAJEWCJB246585', '110.83.25.88', '2018-03-22 16:00:42');
INSERT INTO `userip` VALUES ('74', 'DAJEWCJB246585', '42.156.251.201', '2018-03-23 12:28:33');
INSERT INTO `userip` VALUES ('75', 'DAJECBQH217317', '118.250.229.138', '2018-03-23 16:51:35');
INSERT INTO `userip` VALUES ('76', 'aaddddd', '118.250.229.138', '2018-03-23 17:37:45');
