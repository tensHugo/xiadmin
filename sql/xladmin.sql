/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : xladmin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-01 00:14:59
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
INSERT INTO `config` VALUES ('1', '1099221484', '这里是系统公告这里是系统公告这里是系统公', '后台管理系统');

-- ----------------------------
-- Table structure for imgs
-- ----------------------------
DROP TABLE IF EXISTS `imgs`;
CREATE TABLE `imgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT '1',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `des` varchar(255) DEFAULT NULL COMMENT '图片描述',
  `sex` int(11) DEFAULT '3' COMMENT '1男 2女 3其他',
  `src` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `uptime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imgs
-- ----------------------------
INSERT INTO `imgs` VALUES ('1', '1', '测试', '这是描述', '3', '/sss', '2018-03-31 12:45:09');
INSERT INTO `imgs` VALUES ('2', '1', '测试2', '描述', '1', 'ss', '2018-03-31 16:38:04');
INSERT INTO `imgs` VALUES ('3', '1', '测试', '测试而测试', '2', '../uploads/20180331\\4244d3bcacfdfe2dab0ba88aba539277.jpg', '2018-03-31 11:48:00');

-- ----------------------------
-- Table structure for updated
-- ----------------------------
DROP TABLE IF EXISTS `updated`;
CREATE TABLE `updated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `context` varchar(1024) DEFAULT '' COMMENT '更新内容',
  `v` varchar(255) DEFAULT NULL COMMENT '版本号',
  `uptime` datetime DEFAULT NULL COMMENT '发布时间',
  `status` int(11) DEFAULT NULL COMMENT '0：关闭更新  1：开启更新',
  `num` int(11) DEFAULT '0' COMMENT '更新次数',
  `filename` varchar(10240) DEFAULT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of updated
-- ----------------------------
INSERT INTO `updated` VALUES ('14', '订单', '的', '的', '2018-03-30 01:37:00', '1', '0', '20180330\\87f06f395a2c066d8a8e6095c96f9fe0.png');
INSERT INTO `updated` VALUES ('15', '文件测试', '文件测试', '2.011', '2018-03-30 01:40:00', '1', '0', '20180330\\4817099b2374cfec086bb34acfe35fa1.png');

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
