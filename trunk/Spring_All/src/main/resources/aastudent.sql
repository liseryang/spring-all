/*
Navicat MySQL Data Transfer

Source Server         : itsm
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : itsm

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2014-02-24 14:29:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aastudent`
-- ----------------------------
DROP TABLE IF EXISTS `aastudent`;
CREATE TABLE `aastudent` (
  `id` bigint(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `stuNo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `stu_no` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
