/*
Navicat MySQL Data Transfer

Source Server         : root@localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : pc_app

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-08-24 17:58:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `lib_categories`
-- ----------------------------
DROP TABLE IF EXISTS `lib_categories`;
CREATE TABLE `lib_categories` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `description` char(60) NOT NULL,
  `archive` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lib_categories
-- ----------------------------
INSERT INTO lib_categories VALUES ('1', 'COMMON OFFICE SUPPLIES AND MATERIALS', '0');

-- ----------------------------
-- Table structure for `lib_mode_of_procurement`
-- ----------------------------
DROP TABLE IF EXISTS `lib_mode_of_procurement`;
CREATE TABLE `lib_mode_of_procurement` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL,
  `archive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lib_mode_of_procurement
-- ----------------------------

-- ----------------------------
-- Table structure for `lib_source_of_fund`
-- ----------------------------
DROP TABLE IF EXISTS `lib_source_of_fund`;
CREATE TABLE `lib_source_of_fund` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL,
  `archive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lib_source_of_fund
-- ----------------------------

-- ----------------------------
-- Table structure for `lib_unit_of_measure`
-- ----------------------------
DROP TABLE IF EXISTS `lib_unit_of_measure`;
CREATE TABLE `lib_unit_of_measure` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `description` char(20) NOT NULL,
  `archive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lib_unit_of_measure
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_ppmp_tracking`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ppmp_tracking`;
CREATE TABLE `tbl_ppmp_tracking` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `office_tracking_id` varchar(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` int(7) NOT NULL,
  `last_modified` datetime NOT NULL,
  `modified_by` int(7) NOT NULL,
  `archive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_ppmp_tracking
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_ppmp_working`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ppmp_working`;
CREATE TABLE `tbl_ppmp_working` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `ppmp_stage` int(7) NOT NULL,
  `office` int(7) NOT NULL,
  `category` int(7) NOT NULL,
  `unit_of_measure` int(7) NOT NULL,
  `mode_of_procurement` int(7) NOT NULL,
  `source_of_fund` int(7) NOT NULL,
  `unit_cost` float(9,2) NOT NULL,
  `m1_quantity` int(6) NOT NULL,
  `m2_quantity` int(6) NOT NULL,
  `m3_quantity` int(6) NOT NULL,
  `m4_quantity` int(6) NOT NULL,
  `m5_quantity` int(6) NOT NULL,
  `m6_quantity` int(6) NOT NULL,
  `m7_quantity` int(6) NOT NULL,
  `m8_quantity` int(6) NOT NULL,
  `m9_quantity` int(6) NOT NULL,
  `m10_quantity` int(6) NOT NULL,
  `m11_quantity` int(6) NOT NULL,
  `m12_quantity` int(6) NOT NULL,
  `archive` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_ppmp_working
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_supplies`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_supplies`;
CREATE TABLE `tbl_supplies` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `supply_name` varchar(60) NOT NULL,
  `unit_of_measure` int(4) NOT NULL,
  `category` int(5) NOT NULL,
  `unit_cost` float(9,2) NOT NULL,
  `archive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_supplies
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_users`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `id` bigint(7) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 NOT NULL,
  `email` varchar(80) CHARACTER SET utf8 NOT NULL,
  `usertype` tinyint(1) NOT NULL,
  `archive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO tbl_users VALUES ('0000001', 'admin_bb', 'boybawang', 'admin boy bawang', 'boybawang@dswd.net', '1', '0');
