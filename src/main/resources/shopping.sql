/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-08-18 21:24:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shopping_active
-- ----------------------------
DROP TABLE IF EXISTS `shopping_active`;
CREATE TABLE `shopping_active` (
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `category2_id` bigint(20) unsigned NOT NULL COMMENT '二级类目的id',
  `hits` bigint(20) unsigned NOT NULL COMMENT '该用户在该二级类目的点击次数',
  PRIMARY KEY (`user_id`,`category2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_active
-- ----------------------------
INSERT INTO `shopping_active` VALUES ('1', '1', '39');
INSERT INTO `shopping_active` VALUES ('1', '2', '29');
INSERT INTO `shopping_active` VALUES ('1', '3', '32');
INSERT INTO `shopping_active` VALUES ('1', '4', '43');
INSERT INTO `shopping_active` VALUES ('1', '5', '51');
INSERT INTO `shopping_active` VALUES ('1', '6', '63');
INSERT INTO `shopping_active` VALUES ('1', '7', '71');
INSERT INTO `shopping_active` VALUES ('1', '8', '82');
INSERT INTO `shopping_active` VALUES ('1', '9', '90');
INSERT INTO `shopping_active` VALUES ('1', '10', '81');
INSERT INTO `shopping_active` VALUES ('1', '11', '70');
INSERT INTO `shopping_active` VALUES ('1', '12', '60');
INSERT INTO `shopping_active` VALUES ('1', '13', '50');
INSERT INTO `shopping_active` VALUES ('1', '14', '45');
INSERT INTO `shopping_active` VALUES ('1', '15', '30');
INSERT INTO `shopping_active` VALUES ('1', '16', '20');
INSERT INTO `shopping_active` VALUES ('1', '17', '11');
INSERT INTO `shopping_active` VALUES ('1', '18', '24');
INSERT INTO `shopping_active` VALUES ('1', '19', '31');
INSERT INTO `shopping_active` VALUES ('1', '20', '40');
INSERT INTO `shopping_active` VALUES ('1', '21', '50');
INSERT INTO `shopping_active` VALUES ('1', '22', '65');
INSERT INTO `shopping_active` VALUES ('1', '23', '74');
INSERT INTO `shopping_active` VALUES ('1', '24', '12005');
INSERT INTO `shopping_active` VALUES ('1', '25', '90');
INSERT INTO `shopping_active` VALUES ('1', '26', '80');
INSERT INTO `shopping_active` VALUES ('1', '27', '70');
INSERT INTO `shopping_active` VALUES ('1', '28', '61');
INSERT INTO `shopping_active` VALUES ('1', '29', '50');
INSERT INTO `shopping_active` VALUES ('1', '30', '40');
INSERT INTO `shopping_active` VALUES ('1', '31', '31');
INSERT INTO `shopping_active` VALUES ('1', '32', '20');
INSERT INTO `shopping_active` VALUES ('1', '33', '10');
INSERT INTO `shopping_active` VALUES ('1', '34', '10');
INSERT INTO `shopping_active` VALUES ('1', '35', '10');
INSERT INTO `shopping_active` VALUES ('1', '1111', '5');
INSERT INTO `shopping_active` VALUES ('2', '1', '10');
INSERT INTO `shopping_active` VALUES ('2', '2', '20');
INSERT INTO `shopping_active` VALUES ('2', '3', '30');
INSERT INTO `shopping_active` VALUES ('2', '4', '40');
INSERT INTO `shopping_active` VALUES ('2', '5', '50');
INSERT INTO `shopping_active` VALUES ('2', '6', '60');
INSERT INTO `shopping_active` VALUES ('2', '7', '70');
INSERT INTO `shopping_active` VALUES ('2', '8', '80');
INSERT INTO `shopping_active` VALUES ('2', '9', '90');
INSERT INTO `shopping_active` VALUES ('2', '10', '80');
INSERT INTO `shopping_active` VALUES ('2', '11', '70');
INSERT INTO `shopping_active` VALUES ('2', '12', '60');
INSERT INTO `shopping_active` VALUES ('2', '13', '50');
INSERT INTO `shopping_active` VALUES ('2', '14', '40');
INSERT INTO `shopping_active` VALUES ('2', '15', '30');
INSERT INTO `shopping_active` VALUES ('2', '16', '20');
INSERT INTO `shopping_active` VALUES ('2', '17', '10');
INSERT INTO `shopping_active` VALUES ('2', '18', '20');
INSERT INTO `shopping_active` VALUES ('2', '19', '30');
INSERT INTO `shopping_active` VALUES ('2', '20', '40');
INSERT INTO `shopping_active` VALUES ('2', '21', '50');
INSERT INTO `shopping_active` VALUES ('2', '22', '60');
INSERT INTO `shopping_active` VALUES ('2', '23', '70');
INSERT INTO `shopping_active` VALUES ('2', '24', '80');
INSERT INTO `shopping_active` VALUES ('2', '25', '90');
INSERT INTO `shopping_active` VALUES ('2', '26', '80');
INSERT INTO `shopping_active` VALUES ('2', '27', '70');
INSERT INTO `shopping_active` VALUES ('2', '28', '60');
INSERT INTO `shopping_active` VALUES ('2', '29', '50');
INSERT INTO `shopping_active` VALUES ('2', '30', '40');
INSERT INTO `shopping_active` VALUES ('2', '31', '30');
INSERT INTO `shopping_active` VALUES ('2', '32', '20');
INSERT INTO `shopping_active` VALUES ('2', '33', '10');
INSERT INTO `shopping_active` VALUES ('2', '34', '10');
INSERT INTO `shopping_active` VALUES ('2', '35', '0');
INSERT INTO `shopping_active` VALUES ('3', '1', '10');
INSERT INTO `shopping_active` VALUES ('3', '2', '20');
INSERT INTO `shopping_active` VALUES ('3', '3', '10');
INSERT INTO `shopping_active` VALUES ('3', '4', '40');
INSERT INTO `shopping_active` VALUES ('3', '5', '50');
INSERT INTO `shopping_active` VALUES ('3', '6', '60');
INSERT INTO `shopping_active` VALUES ('3', '7', '10');
INSERT INTO `shopping_active` VALUES ('3', '8', '80');
INSERT INTO `shopping_active` VALUES ('3', '9', '90');
INSERT INTO `shopping_active` VALUES ('3', '10', '80');
INSERT INTO `shopping_active` VALUES ('3', '11', '70');
INSERT INTO `shopping_active` VALUES ('3', '12', '60');
INSERT INTO `shopping_active` VALUES ('3', '13', '10');
INSERT INTO `shopping_active` VALUES ('3', '14', '40');
INSERT INTO `shopping_active` VALUES ('3', '15', '30');
INSERT INTO `shopping_active` VALUES ('3', '16', '20');
INSERT INTO `shopping_active` VALUES ('3', '17', '10');
INSERT INTO `shopping_active` VALUES ('3', '18', '10');
INSERT INTO `shopping_active` VALUES ('3', '19', '30');
INSERT INTO `shopping_active` VALUES ('3', '20', '0');
INSERT INTO `shopping_active` VALUES ('3', '21', '10');
INSERT INTO `shopping_active` VALUES ('3', '22', '60');
INSERT INTO `shopping_active` VALUES ('3', '23', '70');
INSERT INTO `shopping_active` VALUES ('3', '24', '80');
INSERT INTO `shopping_active` VALUES ('3', '25', '90');
INSERT INTO `shopping_active` VALUES ('3', '26', '80');
INSERT INTO `shopping_active` VALUES ('3', '27', '70');
INSERT INTO `shopping_active` VALUES ('3', '28', '60');
INSERT INTO `shopping_active` VALUES ('3', '29', '50');
INSERT INTO `shopping_active` VALUES ('3', '30', '40');
INSERT INTO `shopping_active` VALUES ('3', '31', '10');
INSERT INTO `shopping_active` VALUES ('3', '32', '20');
INSERT INTO `shopping_active` VALUES ('3', '33', '10');
INSERT INTO `shopping_active` VALUES ('3', '34', '10');
INSERT INTO `shopping_active` VALUES ('3', '35', '0');
INSERT INTO `shopping_active` VALUES ('4', '1', '0');
INSERT INTO `shopping_active` VALUES ('4', '2', '0');
INSERT INTO `shopping_active` VALUES ('4', '3', '10');
INSERT INTO `shopping_active` VALUES ('4', '4', '0');
INSERT INTO `shopping_active` VALUES ('4', '5', '50');
INSERT INTO `shopping_active` VALUES ('4', '6', '0');
INSERT INTO `shopping_active` VALUES ('4', '7', '10');
INSERT INTO `shopping_active` VALUES ('4', '8', '80');
INSERT INTO `shopping_active` VALUES ('4', '9', '0');
INSERT INTO `shopping_active` VALUES ('4', '10', '87');
INSERT INTO `shopping_active` VALUES ('4', '11', '0');
INSERT INTO `shopping_active` VALUES ('4', '12', '0');
INSERT INTO `shopping_active` VALUES ('4', '13', '0');
INSERT INTO `shopping_active` VALUES ('4', '14', '40');
INSERT INTO `shopping_active` VALUES ('4', '15', '10');
INSERT INTO `shopping_active` VALUES ('4', '16', '0');
INSERT INTO `shopping_active` VALUES ('4', '17', '0');
INSERT INTO `shopping_active` VALUES ('4', '18', '0');
INSERT INTO `shopping_active` VALUES ('4', '19', '30');
INSERT INTO `shopping_active` VALUES ('4', '20', '0');
INSERT INTO `shopping_active` VALUES ('4', '21', '0');
INSERT INTO `shopping_active` VALUES ('4', '22', '60');
INSERT INTO `shopping_active` VALUES ('4', '23', '0');
INSERT INTO `shopping_active` VALUES ('4', '24', '80');
INSERT INTO `shopping_active` VALUES ('4', '25', '20');
INSERT INTO `shopping_active` VALUES ('4', '26', '0');
INSERT INTO `shopping_active` VALUES ('4', '27', '0');
INSERT INTO `shopping_active` VALUES ('4', '28', '0');
INSERT INTO `shopping_active` VALUES ('4', '29', '50');
INSERT INTO `shopping_active` VALUES ('4', '30', '0');
INSERT INTO `shopping_active` VALUES ('4', '31', '0');
INSERT INTO `shopping_active` VALUES ('4', '32', '20');
INSERT INTO `shopping_active` VALUES ('4', '33', '10');
INSERT INTO `shopping_active` VALUES ('4', '34', '10');
INSERT INTO `shopping_active` VALUES ('4', '35', '0');
INSERT INTO `shopping_active` VALUES ('5', '1', '10');
INSERT INTO `shopping_active` VALUES ('5', '2', '60');
INSERT INTO `shopping_active` VALUES ('5', '3', '30');
INSERT INTO `shopping_active` VALUES ('5', '4', '10');
INSERT INTO `shopping_active` VALUES ('5', '5', '50');
INSERT INTO `shopping_active` VALUES ('5', '6', '60');
INSERT INTO `shopping_active` VALUES ('5', '7', '70');
INSERT INTO `shopping_active` VALUES ('5', '8', '80');
INSERT INTO `shopping_active` VALUES ('5', '9', '91');
INSERT INTO `shopping_active` VALUES ('5', '10', '80');
INSERT INTO `shopping_active` VALUES ('5', '11', '70');
INSERT INTO `shopping_active` VALUES ('5', '12', '10');
INSERT INTO `shopping_active` VALUES ('5', '13', '20');
INSERT INTO `shopping_active` VALUES ('5', '14', '42');
INSERT INTO `shopping_active` VALUES ('5', '15', '30');
INSERT INTO `shopping_active` VALUES ('5', '16', '20');
INSERT INTO `shopping_active` VALUES ('5', '17', '10');
INSERT INTO `shopping_active` VALUES ('5', '18', '1');
INSERT INTO `shopping_active` VALUES ('5', '19', '10');
INSERT INTO `shopping_active` VALUES ('5', '20', '40');
INSERT INTO `shopping_active` VALUES ('5', '21', '50');
INSERT INTO `shopping_active` VALUES ('5', '22', '10');
INSERT INTO `shopping_active` VALUES ('5', '23', '10');
INSERT INTO `shopping_active` VALUES ('5', '24', '180');
INSERT INTO `shopping_active` VALUES ('5', '25', '10');
INSERT INTO `shopping_active` VALUES ('5', '26', '20');
INSERT INTO `shopping_active` VALUES ('5', '27', '70');
INSERT INTO `shopping_active` VALUES ('5', '28', '60');
INSERT INTO `shopping_active` VALUES ('5', '29', '50');
INSERT INTO `shopping_active` VALUES ('5', '30', '40');
INSERT INTO `shopping_active` VALUES ('5', '31', '10');
INSERT INTO `shopping_active` VALUES ('5', '32', '20');
INSERT INTO `shopping_active` VALUES ('5', '33', '10');
INSERT INTO `shopping_active` VALUES ('5', '34', '10');
INSERT INTO `shopping_active` VALUES ('5', '35', '10');
INSERT INTO `shopping_active` VALUES ('6', '1', '14');
INSERT INTO `shopping_active` VALUES ('6', '2', '60');
INSERT INTO `shopping_active` VALUES ('6', '3', '230');
INSERT INTO `shopping_active` VALUES ('6', '4', '10');
INSERT INTO `shopping_active` VALUES ('6', '5', '50');
INSERT INTO `shopping_active` VALUES ('6', '6', '10');
INSERT INTO `shopping_active` VALUES ('6', '7', '70');
INSERT INTO `shopping_active` VALUES ('6', '8', '380');
INSERT INTO `shopping_active` VALUES ('6', '9', '91');
INSERT INTO `shopping_active` VALUES ('6', '10', '280');
INSERT INTO `shopping_active` VALUES ('6', '11', '70');
INSERT INTO `shopping_active` VALUES ('6', '12', '10');
INSERT INTO `shopping_active` VALUES ('6', '13', '220');
INSERT INTO `shopping_active` VALUES ('6', '14', '42');
INSERT INTO `shopping_active` VALUES ('6', '15', '130');
INSERT INTO `shopping_active` VALUES ('6', '16', '220');
INSERT INTO `shopping_active` VALUES ('6', '17', '10');
INSERT INTO `shopping_active` VALUES ('6', '18', '21');
INSERT INTO `shopping_active` VALUES ('6', '19', '10');
INSERT INTO `shopping_active` VALUES ('6', '20', '40');
INSERT INTO `shopping_active` VALUES ('6', '21', '250');
INSERT INTO `shopping_active` VALUES ('6', '22', '10');
INSERT INTO `shopping_active` VALUES ('6', '23', '210');
INSERT INTO `shopping_active` VALUES ('6', '24', '180');
INSERT INTO `shopping_active` VALUES ('6', '25', '110');
INSERT INTO `shopping_active` VALUES ('6', '26', '20');
INSERT INTO `shopping_active` VALUES ('6', '27', '170');
INSERT INTO `shopping_active` VALUES ('6', '28', '160');
INSERT INTO `shopping_active` VALUES ('6', '29', '50');
INSERT INTO `shopping_active` VALUES ('6', '30', '140');
INSERT INTO `shopping_active` VALUES ('6', '31', '10');
INSERT INTO `shopping_active` VALUES ('6', '32', '120');
INSERT INTO `shopping_active` VALUES ('6', '33', '110');
INSERT INTO `shopping_active` VALUES ('6', '34', '10');
INSERT INTO `shopping_active` VALUES ('6', '35', '10');

-- ----------------------------
-- Table structure for shopping_car
-- ----------------------------
DROP TABLE IF EXISTS `shopping_car`;
CREATE TABLE `shopping_car` (
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `product_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `product_name` varchar(255) NOT NULL COMMENT '商品的名称',
  `gmt_create` datetime NOT NULL COMMENT '记录创建的时间',
  `gmt_modified` datetime NOT NULL COMMENT '记录修改的时间',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除的标识',
  PRIMARY KEY (`user_id`,`product_id`),
  KEY `idx_member` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_car
-- ----------------------------

-- ----------------------------
-- Table structure for shopping_category1
-- ----------------------------
DROP TABLE IF EXISTS `shopping_category1`;
CREATE TABLE `shopping_category1` (
  `category1_id` bigint(100) unsigned NOT NULL AUTO_INCREMENT COMMENT '一级类目id',
  `category1_name` varchar(20) NOT NULL COMMENT '一级类目名称',
  `category1_record` varchar(255) DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime NOT NULL COMMENT '记录创建的时间',
  `gmt_modified` datetime NOT NULL COMMENT '记录修改的时间',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示该分类，1显示，0隐藏',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除标识',
  PRIMARY KEY (`category1_id`),
  KEY `idx_category1_name` (`category1_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_category1
-- ----------------------------
INSERT INTO `shopping_category1` VALUES ('1', '女装男装', '此分类为女装男装', '2020-02-24 22:55:02', '2020-02-24 22:55:02', '1', '0');
INSERT INTO `shopping_category1` VALUES ('2', '鞋靴箱包', '此分类为鞋靴箱包', '2020-02-24 22:55:02', '2020-02-24 22:55:02', '1', '0');
INSERT INTO `shopping_category1` VALUES ('3', '日常生活用品', '此分类为日常生活用品', '2020-02-24 22:55:02', '2020-02-24 22:55:02', '1', '0');
INSERT INTO `shopping_category1` VALUES ('4', '珠宝配饰', '此分类为珠宝配饰', '2020-02-24 22:55:02', '2020-02-24 22:55:02', '1', '0');
INSERT INTO `shopping_category1` VALUES ('5', '手机数码', '此分类为手机数码', '2020-02-24 22:55:02', '2020-02-24 22:55:02', '1', '0');
INSERT INTO `shopping_category1` VALUES ('6', '家用电器', '此分类为家用电器', '2020-02-24 22:55:02', '2020-02-24 22:55:02', '1', '0');
INSERT INTO `shopping_category1` VALUES ('7', '食品', '此分类为食品', '2020-02-24 22:55:02', '2020-02-24 22:55:02', '1', '0');
INSERT INTO `shopping_category1` VALUES ('8', '测试类目', '用于测试', '2020-03-01 09:37:57', '2020-03-01 09:37:57', '1', '1');

-- ----------------------------
-- Table structure for shopping_category2
-- ----------------------------
DROP TABLE IF EXISTS `shopping_category2`;
CREATE TABLE `shopping_category2` (
  `category2_id` bigint(100) unsigned NOT NULL AUTO_INCREMENT COMMENT '二级类目id',
  `category2_name` varchar(20) NOT NULL COMMENT '二级类目名称',
  `category2_record` varchar(255) DEFAULT NULL COMMENT '二级类目的备注',
  `category1_id` bigint(20) NOT NULL COMMENT '所属的一级类目的id',
  `gmt_create` datetime NOT NULL COMMENT '记录创建的时间',
  `gmt_modified` datetime NOT NULL COMMENT '记录被修改的时间',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示分类，1显示，0隐藏',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除的标识',
  PRIMARY KEY (`category2_id`),
  KEY `idx_category1_id` (`category1_id`),
  KEY `idx_category2_name` (`category2_name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_category2
-- ----------------------------
INSERT INTO `shopping_category2` VALUES ('1', '潮流女装', 'fashion', '1', '2020-02-24 23:08:21', '2020-03-01 09:41:03', '1', '0');
INSERT INTO `shopping_category2` VALUES ('2', '初冬羽绒', '默认备注', '1', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('3', '毛皮大衣', '默认备注', '1', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('4', '温暖毛衣', '默认备注', '1', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('5', '精选男装', '默认备注', '1', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('6', '冬季外套', '默认备注', '1', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('7', '羽绒服', '默认备注', '1', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('8', '女鞋', '默认备注', '2', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('9', '短靴', '默认备注', '2', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('10', '男鞋', '默认备注', '2', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('11', '女包', '默认备注', '2', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('12', '男包', '默认备注', '2', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('13', '服饰配件', '默认备注', '3', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('14', '雨伞雨具', '默认备注', '3', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('15', '洗嗮/熨烫', '默认备注', '3', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('16', '净化除味', '默认备注', '3', '2020-02-24 23:08:21', '2020-03-09 16:25:03', '1', '0');
INSERT INTO `shopping_category2` VALUES ('17', '缝纫针织', '默认备注', '3', '2020-02-24 23:08:21', '2020-03-10 08:51:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('18', '骑行装备', '默认备注', '3', '2020-02-24 23:08:21', '2020-03-09 15:39:13', '1', '0');
INSERT INTO `shopping_category2` VALUES ('19', '珠宝首饰', '默认备注', '4', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('20', '时尚饰品', '默认备注', '4', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('21', '品质手表', '默认备注', '4', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('22', '眼镜配饰', '默认备注', '4', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('23', '手机', '默认备注', '5', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('24', '平板', '默认备注', '5', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('25', '电脑', '默认备注', '5', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('26', '相机', '默认备注', '5', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('27', '大家电', '默认备注', '6', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('28', '厨房电器', '默认备注', '6', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('29', '生活电器', '默认备注', '6', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('30', '个户电器', '默认备注', '6', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('31', '办公耗材', '默认备注', '6', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('32', '休闲零食', '默认备注', '7', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('33', '饼干糕点', '默认备注', '7', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('34', '生鲜果蔬', '默认备注', '7', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('35', '粮油干货', '默认备注', '7', '2020-02-24 23:08:21', '2020-02-24 23:08:21', '1', '0');
INSERT INTO `shopping_category2` VALUES ('36', '二级测试类目', '专门用于二级类目的测试', '8', '2020-03-01 09:38:22', '2020-03-01 09:38:22', '1', '1');

-- ----------------------------
-- Table structure for shopping_message
-- ----------------------------
DROP TABLE IF EXISTS `shopping_message`;
CREATE TABLE `shopping_message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `messagedate` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_message
-- ----------------------------
INSERT INTO `shopping_message` VALUES ('1', '大家好，这个商品很潮流', '2020-02-28', '3', '1');
INSERT INTO `shopping_message` VALUES ('2', '<p>物品都很有质量。</p>\r\n', '2020-02-26 22:41:49', '1', '0');
INSERT INTO `shopping_message` VALUES ('3', '<p><span style=\"color:#1abc9c\"><big><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">好物，值得购买</span></span></big></span></p>\r\n', '2020-03-02 15:22:51', '4', '0');
INSERT INTO `shopping_message` VALUES ('4', '<p>网上商城留言测试</p>\r\n', '2020-03-17 16:47:32', '6', '0');
INSERT INTO `shopping_message` VALUES ('5', '<p>测试测试测试测试</p>\r\n', '2020-03-19 11:27:03', '5', '0');
INSERT INTO `shopping_message` VALUES ('6', '12', '2020-02-08', '3', '0');
INSERT INTO `shopping_message` VALUES ('10', '而我却二无群无群', '2020-04-03 12:28:36.383', '1', '0');
INSERT INTO `shopping_message` VALUES ('11', '惹我热翁', '2020-04-03 12:28:38.689', '1', '0');
INSERT INTO `shopping_message` VALUES ('12', '212121', '2020-04-04 17:22:55.361', '1', '0');

-- ----------------------------
-- Table structure for shopping_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `shopping_orderitem`;
CREATE TABLE `shopping_orderitem` (
  `oiid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oiid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_orderitem
-- ----------------------------
INSERT INTO `shopping_orderitem` VALUES ('17', '4', '128', '98', '13');
INSERT INTO `shopping_orderitem` VALUES ('18', '1', '4444', '85', '13');
INSERT INTO `shopping_orderitem` VALUES ('19', '1', '4567', '91', '14');
INSERT INTO `shopping_orderitem` VALUES ('20', '2', '62', '99', '15');
INSERT INTO `shopping_orderitem` VALUES ('21', '1', '99999', '105', '15');
INSERT INTO `shopping_orderitem` VALUES ('22', '2', '62', '99', '16');
INSERT INTO `shopping_orderitem` VALUES ('23', '1', '498', '2', '16');
INSERT INTO `shopping_orderitem` VALUES ('24', '4', '128', '98', '17');
INSERT INTO `shopping_orderitem` VALUES ('25', '4', '880', '24', '17');

-- ----------------------------
-- Table structure for shopping_orders
-- ----------------------------
DROP TABLE IF EXISTS `shopping_orders`;
CREATE TABLE `shopping_orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `money` double NOT NULL,
  `state` int(11) NOT NULL,
  `receiveInfo` varchar(255) NOT NULL,
  `phoNum` varchar(255) NOT NULL,
  `order_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `accepter` varchar(100) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_orders
-- ----------------------------
INSERT INTO `shopping_orders` VALUES ('13', '4572', '2', '河北唐山', '123', '2020-04-03 15:56:43', '1', '张三');
INSERT INTO `shopping_orders` VALUES ('14', '4567', '2', '河北唐山', '123', '2020-04-03 16:03:13', '1', '张三');
INSERT INTO `shopping_orders` VALUES ('15', '100061', '0', '河北唐山', '123', '2020-04-03 17:28:06', '1', '1221211');
INSERT INTO `shopping_orders` VALUES ('16', '560', '2', '天津市滨海新区', '1582654566', '2020-04-04 17:07:02', '1', '鲁班七号');
INSERT INTO `shopping_orders` VALUES ('17', '1008', '0', '32132131', '312312', '2020-08-18 21:24:24', '10', '31232131');

-- ----------------------------
-- Table structure for shopping_product
-- ----------------------------
DROP TABLE IF EXISTS `shopping_product`;
CREATE TABLE `shopping_product` (
  `product_id` bigint(100) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `product_name` varchar(40) NOT NULL COMMENT '商品名称',
  `category1_id` bigint(20) unsigned NOT NULL COMMENT '商品所属的一级类目',
  `category2_id` bigint(20) unsigned NOT NULL COMMENT '商品所属的二级类目',
  `purchase_price` decimal(30,0) unsigned NOT NULL COMMENT '采购价',
  `sale_price` decimal(30,0) unsigned NOT NULL COMMENT '销售价',
  `inventory` int(10) unsigned NOT NULL COMMENT '库存',
  `hits` bigint(30) unsigned NOT NULL DEFAULT '0' COMMENT '该商品的点击量',
  `img_src` varchar(255) NOT NULL COMMENT '图片地址',
  `description` varchar(255) NOT NULL COMMENT '商品描述',
  `gmt_create` datetime NOT NULL COMMENT '记录创建的时间',
  `gmt_modified` datetime NOT NULL COMMENT '记录修改的日期',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否展示该商品，1展示，0隐藏',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除标识',
  PRIMARY KEY (`product_id`),
  KEY `idx_category1_id` (`category1_id`),
  KEY `idx_category2_id` (`category2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_product
-- ----------------------------
INSERT INTO `shopping_product` VALUES ('1', '时尚潮流女装', '1', '1', '280', '398', '100', '14', '/product/7443aa79-d1f9-48e7-badb-7723e09a09c0.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-29 15:01:25', '1', '0');
INSERT INTO `shopping_product` VALUES ('2', '坦博尔羽绒服', '1', '2', '380', '498', '100', '5', '/product/c61a6e39-0fd5-44f9-b000-070d965ac978.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:31:09', '1', '0');
INSERT INTO `shopping_product` VALUES ('3', '貂皮大衣', '1', '3', '380', '498', '100', '0', '/product/f94ac6ff-25d6-453f-8291-4dc310385e9d.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:31:31', '1', '0');
INSERT INTO `shopping_product` VALUES ('4', '情侣毛衣111', '1', '4', '122', '153', '10011', '0', '/product/b22bfabd-6000-4bb3-b32b-6dc3b92e00d0.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:31:55', '1', '0');
INSERT INTO `shopping_product` VALUES ('5', '海澜之家男装', '1', '5', '380', '500', '100', '0', '/product/22436958-61de-4ed3-94b3-ed4645005df6.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:32:21', '1', '0');
INSERT INTO `shopping_product` VALUES ('6', '冬季卫衣', '1', '6', '380', '500', '100', '0', '/product/508874c0-f06c-4aaa-9e03-3ebfd6e08c4f.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:32:51', '1', '0');
INSERT INTO `shopping_product` VALUES ('7', '深冬羽绒', '1', '6', '380', '500', '100', '0', '/product/6f69f158-ec4e-4ccb-acff-19691602377e.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:33:20', '1', '0');
INSERT INTO `shopping_product` VALUES ('12', '高跟鞋', '2', '8', '120', '200', '100', '2', '/product/394b889f-6bff-44d5-a58e-f89e53f15df9.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:33:49', '1', '0');
INSERT INTO `shopping_product` VALUES ('13', '女士短靴', '2', '9', '120', '200', '100', '0', '/product/f6745d80-f2db-4e2a-a409-9cbbf938ea08.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:34:08', '1', '0');
INSERT INTO `shopping_product` VALUES ('14', '鳄鱼皮鞋', '2', '10', '120', '200', '100', '1', '/product/19927791-d933-4199-98a1-2142254199ab.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:34:26', '1', '0');
INSERT INTO `shopping_product` VALUES ('15', '香奈儿包包', '2', '11', '120', '220', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('16', '男士公文包', '2', '12', '120', '220', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('17', '红领巾', '3', '13', '12', '22', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('18', '共享雨伞', '3', '14', '20', '30', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('19', '电熨斗', '3', '15', '120', '220', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('20', '除湿剂', '3', '16', '29', '30', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('21', '缝纫机', '3', '17', '120', '220', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('22', '车轮胎', '3', '18', '120', '220', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('23', '帅气墨镜', '4', '22', '120', '220', '100', '0', '/product/80416846-7628-446b-a84e-0dbd6357552d.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:35:53', '1', '0');
INSERT INTO `shopping_product` VALUES ('24', '潜水眼镜', '4', '22', '120', '220', '100', '5', '/product/9772525f-640b-405a-8616-aa187077b04c.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:35:20', '1', '0');
INSERT INTO `shopping_product` VALUES ('25', '北极星手表', '4', '21', '120', '220', '100', '0', '/product/dedd7b95-2885-42e0-850d-c8678a30ba56.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:36:10', '1', '0');
INSERT INTO `shopping_product` VALUES ('26', '学生眼镜', '4', '22', '120', '220', '100', '0', '/product/204afd26-bc40-4beb-950a-4ce0948c6527.jpg', '爆款特卖', '2020-02-13 09:29:15', '2020-03-30 19:36:34', '1', '0');
INSERT INTO `shopping_product` VALUES ('27', '香蕉手机', '5', '23', '1900', '2300', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('28', '草莓平板', '5', '24', '2200', '3230', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('29', '联想电脑', '5', '25', '5120', '6230', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('30', '摩卡相机', '5', '26', '2120', '2360', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('31', '小米电视机', '1', '1', '1120', '1830', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-25 22:32:06', '1', '1');
INSERT INTO `shopping_product` VALUES ('32', '美的抽油烟机', '1', '1', '1550', '2320', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-25 22:33:09', '1', '1');
INSERT INTO `shopping_product` VALUES ('33', '九阳豆浆机', '6', '29', '120', '320', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('34', '充电器', '6', '30', '120', '320', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('35', '办公袋', '6', '31', '120', '320', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('36', '乐事薯片', '7', '32', '120', '320', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('37', '蛋挞', '7', '33', '120', '320', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('38', '盒马生鲜', '7', '34', '120', '320', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('39', '菜籽油油', '7', '35', '120', '320', '100', '0', '/product/', '爆款特卖', '2020-02-13 09:29:15', '2020-02-13 09:29:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('56', '面膜', '1', '1', '11', '1', '1', '0', '/product/', '嗯恩恩嫩恩恩额额', '2020-02-18 16:15:35', '2020-02-18 17:00:42', '1', '1');
INSERT INTO `shopping_product` VALUES ('57', '美妆蛋', '3', '15', '29', '39', '200', '0', '/product/', '测试描述', '2020-02-18 17:10:32', '2020-02-18 17:10:32', '1', '1');
INSERT INTO `shopping_product` VALUES ('58', '美妆刷', '8', '36', '110', '1110', '12', '0', '/product/', '多级反馈角度看', '2020-02-19 09:39:03', '2020-02-19 09:40:07', '1', '1');
INSERT INTO `shopping_product` VALUES ('59', '洗脸巾', '8', '36', '998', '1998', '112', '0', '/product/', '爆款', '2020-02-19 09:42:45', '2020-02-19 09:42:45', '1', '1');
INSERT INTO `shopping_product` VALUES ('60', '眉笔', '8', '36', '333', '23', '45', '0', '/product/', '这是测试二', '2020-02-19 18:39:37', '2020-02-19 18:39:37', '1', '1');
INSERT INTO `shopping_product` VALUES ('61', '眼线笔', '8', '36', '787', '7878', '777', '0', '/product/', 'qqwqw', '2020-02-19 18:48:15', '2020-02-19 18:48:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('62', '修眉刀', '8', '36', '1212', '12', '33', '0', '/product/', 'ddddd', '2020-02-19 18:49:25', '2020-02-19 18:49:25', '1', '1');
INSERT INTO `shopping_product` VALUES ('63', '睫毛夹', '8', '36', '11', '1', '1', '0', '/product/', '111', '2020-02-19 18:57:38', '2020-02-19 18:57:38', '1', '1');
INSERT INTO `shopping_product` VALUES ('64', 'mac口红', '8', '36', '2', '2', '2', '0', '/product/', '2', '2020-02-19 18:57:56', '2020-02-19 18:57:56', '1', '1');
INSERT INTO `shopping_product` VALUES ('65', '潮流女装', '1', '1', '123', '232', '12', '1', '/product/97c08136-845e-490d-ba2e-39f06a1d958a.jpg', 'dfdsfsdf', '2020-02-23 23:50:34', '2020-03-29 20:03:16', '1', '0');
INSERT INTO `shopping_product` VALUES ('66', '男装', '1', '5', '345', '543', '232', '0', '/product/5a3f5de2-941b-40ad-bd46-6e8cc8d87d9b.jpg', '地方大幅度发', '2020-02-23 23:51:11', '2020-03-30 19:36:57', '1', '0');
INSERT INTO `shopping_product` VALUES ('67', '外套', '1', '6', '111', '333', '23', '0', '/product/f037ece1-994e-4ff3-8524-a7a437e4bca4.jpg', '打发打发', '2020-02-23 23:53:03', '2020-03-30 19:37:25', '1', '0');
INSERT INTO `shopping_product` VALUES ('68', '毛衣', '1', '4', '134', '186', '12', '0', '/product/904f9fd1-71a5-4f53-b0e7-0fba5e7eabc1.jpg', '的方法打发打发', '2020-02-23 23:54:31', '2020-03-30 19:37:44', '1', '0');
INSERT INTO `shopping_product` VALUES ('69', '回力女鞋', '2', '8', '234', '255', '323', '0', '/product/6507768d-d504-489f-82e6-7b6069fa4f45.jpg', '333233', '2020-02-23 23:56:01', '2020-03-30 19:38:02', '1', '0');
INSERT INTO `shopping_product` VALUES ('70', '人本帆布女鞋', '2', '8', '123', '132', '656', '0', '/product/c542bb7b-fe4e-40ae-9104-d924de09fd76.jpg', '', '2020-02-23 23:56:20', '2020-03-30 19:38:19', '1', '0');
INSERT INTO `shopping_product` VALUES ('71', '安踏女鞋', '2', '8', '444', '666', '23', '0', '/product/d5af53fa-c021-43c7-9422-753d1f0a1f60.jpg', '复古风格', '2020-02-23 23:56:40', '2020-03-30 19:38:38', '1', '0');
INSERT INTO `shopping_product` VALUES ('72', '海信电视机', '6', '27', '1212', '33', '121', '0', '/product/fc0ef1d0-f2fe-4490-8547-d6438b4023a5.jpg', '1', '2020-02-25 15:01:54', '2020-02-25 15:01:54', '1', '1');
INSERT INTO `shopping_product` VALUES ('73', '创维电视机', '6', '27', '3', '3', '55', '0', '/product/', '', '2020-02-25 15:02:21', '2020-02-25 15:02:21', '1', '1');
INSERT INTO `shopping_product` VALUES ('74', '海尔电视机', '6', '27', '121', '21', '3', '0', '/product/', 'f', '2020-02-25 15:02:36', '2020-02-25 15:02:36', '1', '1');
INSERT INTO `shopping_product` VALUES ('75', '花花公子外套', '1', '6', '212', '153', '23', '0', '/product/27e90f4b-99b1-4714-9112-605a1460e9fd.jpg', '232323', '2020-02-25 16:26:41', '2020-03-30 19:39:13', '1', '0');
INSERT INTO `shopping_product` VALUES ('76', '阿迪达斯外套', '1', '1', '232', '299', '23', '0', '/product/55b705f1-9c7f-40f6-b28c-4f3d2a4bde21.jpg', '2323', '2020-02-25 16:27:08', '2020-03-30 19:39:45', '1', '0');
INSERT INTO `shopping_product` VALUES ('77', '杰克琼斯外套', '1', '6', '178', '220', '23', '0', '/product/bf49ff4d-744b-49b7-8d04-c3e3c6803b9a.jpg', '撒大声地撒多', '2020-02-25 16:27:46', '2020-03-30 19:40:19', '1', '0');
INSERT INTO `shopping_product` VALUES ('78', '皮带', '3', '13', '56', '56', '56', '0', '/product/', '56', '2020-02-25 22:22:57', '2020-02-25 22:22:57', '1', '1');
INSERT INTO `shopping_product` VALUES ('79', '小领带', '3', '13', '67', '67', '67', '0', '/product/', '6767', '2020-02-25 22:23:10', '2020-02-25 22:23:10', '1', '1');
INSERT INTO `shopping_product` VALUES ('80', '纽扣', '3', '14', '54', '64', '45', '0', '/product/', '', '2020-02-25 22:23:27', '2020-02-25 22:23:27', '1', '1');
INSERT INTO `shopping_product` VALUES ('81', '老花镜', '4', '22', '34', '34', '34', '0', '/product/', '5353', '2020-02-25 22:24:15', '2020-02-25 22:24:15', '1', '1');
INSERT INTO `shopping_product` VALUES ('82', '护目镜', '4', '22', '111', '12', '32', '0', '/product/', '232', '2020-02-25 22:24:41', '2020-02-25 22:24:41', '1', '1');
INSERT INTO `shopping_product` VALUES ('83', '太阳镜', '4', '22', '454', '211', '334', '0', '/product/', '', '2020-02-25 22:25:00', '2020-02-25 22:25:00', '1', '1');
INSERT INTO `shopping_product` VALUES ('84', '荣耀手机', '5', '23', '3121', '3500', '21', '0', '/product/7c32c6d5-f6f5-4c72-b552-0f6094406ad7.jpg', '时尚荣耀手机', '2020-02-25 22:27:05', '2020-03-30 19:40:40', '1', '0');
INSERT INTO `shopping_product` VALUES ('85', '小米手机', '5', '23', '4444', '4444', '123', '4', '/product/dfbb4cd4-67b4-4528-b960-7297ae68cac5.jpg', '2323', '2020-02-25 22:27:41', '2020-03-29 20:19:49', '1', '0');
INSERT INTO `shopping_product` VALUES ('86', '平板', '5', '24', '2121', '3133', '232', '4', '/product/657e8941-1706-4410-b59d-6066e1178198.png', '是的是的', '2020-02-25 22:28:45', '2020-03-29 20:21:36', '1', '0');
INSERT INTO `shopping_product` VALUES ('87', '电脑', '5', '25', '4323', '4423', '23', '0', '/product/108e3d52-f176-4264-ade3-c6c1c6553614.jpg', '水电费第三方', '2020-02-25 22:29:32', '2020-03-29 20:23:40', '1', '0');
INSERT INTO `shopping_product` VALUES ('88', '相机', '5', '26', '1123', '1232', '424', '0', '/product/587c624b-607c-470b-aa6f-2eb11e6d8961.jpg', '地方斯蒂芬', '2020-02-25 22:30:22', '2020-03-29 20:24:28', '1', '0');
INSERT INTO `shopping_product` VALUES ('89', '电视机', '6', '27', '3334', '3434', '21', '0', '/product/e8e33f63-6285-491f-a245-ca477e9a08c7.jpg', '帝国时代发', '2020-02-25 22:37:46', '2020-03-29 20:28:15', '1', '0');
INSERT INTO `shopping_product` VALUES ('90', '抽油烟机', '6', '28', '2134', '2323', '121', '1', '/product/4e43a8fe-4ab6-4b08-b4dd-7f864d438223.jpg', '大幅度所发生的', '2020-02-25 22:38:55', '2020-03-29 20:29:53', '1', '0');
INSERT INTO `shopping_product` VALUES ('91', '办公电脑', '6', '31', '3456', '4567', '23', '1', '/product/f241e343-5edf-4699-829a-4e8b2a8e2602.jpg', '是的是的', '2020-02-25 22:39:46', '2020-03-29 20:36:20', '1', '0');
INSERT INTO `shopping_product` VALUES ('92', '薯片', '7', '32', '22', '34', '121', '0', '/product/6e2fdec9-2b9e-4b50-8019-97955ea13a6d.jpg', '地方大幅度', '2020-02-25 22:41:47', '2020-03-29 20:42:44', '1', '0');
INSERT INTO `shopping_product` VALUES ('93', '蔬菜', '7', '34', '15', '20', '1213', '0', '/product/baee506d-f075-4fea-9737-2738f79a2bca.jpg', '新鲜水果', '2020-02-25 22:42:49', '2020-03-29 20:44:30', '1', '0');
INSERT INTO `shopping_product` VALUES ('94', '蛋糕', '7', '33', '43', '32', '121', '0', '/product/1dbdaf73-cfea-40ad-8c62-12acb2e7fb15.jpg', '好吃的蛋糕', '2020-02-25 22:43:39', '2020-03-29 20:46:19', '1', '0');
INSERT INTO `shopping_product` VALUES ('95', '粮油', '7', '35', '243', '232', '123', '0', '/product/a9ca82f0-10f0-42be-8400-880cea93d173.jpg', '放心粮油', '2020-02-25 22:44:16', '2020-03-29 20:48:28', '1', '0');
INSERT INTO `shopping_product` VALUES ('98', '雨伞雨具', '3', '14', '43', '32', '232', '5', '/product/199acb34-af2e-4360-b977-39743b92e85b.jpg', '雨天必备', '2020-02-25 22:49:48', '2020-03-29 20:55:18', '1', '0');
INSERT INTO `shopping_product` VALUES ('99', '骑行装备', '3', '18', '23', '31', '23', '4', '/product/d5382e82-bb3e-41a7-a2aa-da090bdf385a.jpg', '骑行手套', '2020-02-25 22:51:13', '2020-03-29 20:59:28', '1', '0');
INSERT INTO `shopping_product` VALUES ('100', '缝纫针织', '3', '17', '43', '32', '232', '1', '/product/931ca3ce-2353-41be-8c6d-ec8f6a95ae99.jpg', '缝补衣物等用具', '2020-02-25 22:52:16', '2020-03-29 21:01:17', '1', '0');
INSERT INTO `shopping_product` VALUES ('101', '熨斗', '3', '15', '343', '323', '111', '0', '/product/edf318f3-1744-4d40-afbd-b74460da265e.jpg', '用于熨烫衣物', '2020-02-25 22:53:09', '2020-03-29 21:03:20', '1', '0');
INSERT INTO `shopping_product` VALUES ('102', '女包', '2', '11', '223', '123', '23', '0', '/product/407af2ff-19a6-4ec4-8c80-ffd68ca87966.jpg', '时尚流行女包包', '2020-02-25 22:57:11', '2020-03-29 21:05:29', '1', '0');
INSERT INTO `shopping_product` VALUES ('103', '男包', '2', '12', '212', '313', '12', '0', '/product/382aee1a-f2d0-4689-9570-f31589266a01.jpg', '男士专属', '2020-02-25 22:58:14', '2020-03-29 21:06:50', '1', '0');
INSERT INTO `shopping_product` VALUES ('104', '品质手表', '4', '21', '1212', '2323', '121', '0', '/product/9d81cc37-1b63-47b7-9eab-ef5a08c7ab11.jpg', '提升气质的手表', '2020-02-25 22:59:54', '2020-03-29 21:08:12', '1', '0');
INSERT INTO `shopping_product` VALUES ('105', '钻戒', '4', '19', '99999', '99999', '121', '1', '/product/83332420-0eb3-48fd-9c51-70d600abfd61.jpg', '爱情的见证', '2020-02-25 23:01:12', '2020-03-29 21:09:59', '1', '0');
INSERT INTO `shopping_product` VALUES ('106', '时尚饰品', '4', '20', '235', '123', '1223', '0', '/product/60916ba3-7c77-4273-9cfb-97ec63752027.jpg', '时尚时尚最时尚', '2020-02-25 23:02:35', '2020-03-29 21:11:19', '1', '0');
INSERT INTO `shopping_product` VALUES ('107', '大冰箱', '6', '27', '5555', '3434', '1212', '0', '/product/dabb57d2-bc93-47a4-ae4e-3eb737c69821.jpg', '大家电：电冰箱，用于存储事物等', '2020-02-25 23:03:53', '2020-03-29 21:12:46', '1', '0');
INSERT INTO `shopping_product` VALUES ('108', '个户电器', '6', '30', '134', '100', '121', '0', '/product/970eaad3-7a7c-4838-8b50-e89fcd0c89e2.jpg', '个户电器', '2020-02-25 23:05:13', '2020-03-29 21:14:14', '1', '0');
INSERT INTO `shopping_product` VALUES ('109', '测试商品', '3', '15', '100', '230', '200', '0', '/product/', '测试描述', '2020-03-28 16:19:01', '2020-03-28 16:19:01', '1', '1');
INSERT INTO `shopping_product` VALUES ('110', '菲米娜包包', '2', '11', '299', '359', '100', '0', '/product/6a098035-c4b7-440c-9577-3cfe5ab567e5.jpg', '时尚包包', '2020-03-29 19:49:19', '2020-03-29 19:49:19', '1', '0');

-- ----------------------------
-- Table structure for shopping_similarity
-- ----------------------------
DROP TABLE IF EXISTS `shopping_similarity`;
CREATE TABLE `shopping_similarity` (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `user_ref_id` bigint(20) NOT NULL COMMENT '被参考的用户id',
  `similarity` decimal(8,7) NOT NULL COMMENT 'user_id与user_ref_id之间的相似度',
  PRIMARY KEY (`user_id`,`user_ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_similarity
-- ----------------------------
INSERT INTO `shopping_similarity` VALUES ('1', '2', '0.3109582');
INSERT INTO `shopping_similarity` VALUES ('1', '3', '0.3308781');
INSERT INTO `shopping_similarity` VALUES ('1', '4', '0.1230939');
INSERT INTO `shopping_similarity` VALUES ('1', '5', '0.0507385');
INSERT INTO `shopping_similarity` VALUES ('1', '6', '0.1521327');
INSERT INTO `shopping_similarity` VALUES ('2', '3', '0.9514955');
INSERT INTO `shopping_similarity` VALUES ('2', '4', '0.6104818');
INSERT INTO `shopping_similarity` VALUES ('2', '5', '0.8284235');
INSERT INTO `shopping_similarity` VALUES ('2', '6', '0.7550809');
INSERT INTO `shopping_similarity` VALUES ('3', '4', '0.6408098');
INSERT INTO `shopping_similarity` VALUES ('3', '5', '0.7858549');
INSERT INTO `shopping_similarity` VALUES ('3', '6', '0.6873625');
INSERT INTO `shopping_similarity` VALUES ('4', '5', '0.6673668');
INSERT INTO `shopping_similarity` VALUES ('4', '6', '0.5847285');
INSERT INTO `shopping_similarity` VALUES ('5', '6', '0.7201599');

-- ----------------------------
-- Table structure for shopping_sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `shopping_sys_admin`;
CREATE TABLE `shopping_sys_admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `login_name` varchar(255) NOT NULL COMMENT '登录名',
  `admin_name` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `mobile` char(11) NOT NULL COMMENT '移动电话',
  `age` tinyint(3) unsigned NOT NULL COMMENT '年龄',
  `sex` char(1) NOT NULL DEFAULT '男',
  `address` varchar(255) NOT NULL COMMENT '用户地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户状态：0正常，1冻结',
  `gmt_create` datetime NOT NULL COMMENT '用户创建的时间',
  `gmt_modified` datetime NOT NULL COMMENT '用户修改的时间',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除的标识',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_login_name` (`login_name`),
  KEY `idx_username` (`admin_name`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_sys_admin
-- ----------------------------
INSERT INTO `shopping_sys_admin` VALUES ('1', 'admin', 'administrator', '8c20ee34f92493fe6bb33aa59d317d54534e7f7b3a0cd7a7b3602c66', '909301740@qq.com', '13954501821', '23', '男', '山东', '0', '2020-02-24 23:13:46', '2020-03-01 19:09:17', '0');
INSERT INTO `shopping_sys_admin` VALUES ('3', 'xiaoming', '小明', '6db577c1eab45ca48c56a0fe6d45189e5ac9cda9dcf0f73ad33343ee', '994564536@qq.com', '13765648897', '18', '女', '深圳', '0', '2020-02-26 19:12:13', '2020-02-26 19:12:13', '0');
INSERT INTO `shopping_sys_admin` VALUES ('4', 'array', '小王', 'f8ac215f6525bf6009278bdd9c7404f458116aa0bbc90f426b3255dd', '776546342@qq.com', '17806342234', '40', '男', '广东', '0', '2020-02-26 21:44:39', '2020-02-26 21:44:39', '0');
INSERT INTO `shopping_sys_admin` VALUES ('5', 'ss', 'qqq', '049a6c279f4e05bc1620d8b2497a44fdc16b2f8204409f045a8f7b80', '22222@qq.com', '12222222222', '112', '女', '1111111111', '0', '2020-02-27 18:58:07', '2020-02-28 21:28:17', '1');
INSERT INTO `shopping_sys_admin` VALUES ('7', 'dd', '小亮红', '7c5bb92486cd4972a802e3dbc665a4dcc52fd1fb2cd9d7f4e0009505', '991281927@qq.com', '15753506293', '43', '女', 'dfdfdf', '0', '2020-02-27 19:06:13', '2020-03-01 19:45:44', '0');
INSERT INTO `shopping_sys_admin` VALUES ('8', 'qwq', '小明', '5f27f07d1184afe2518c5e701db51e9084ea3cfb484467f84c9c5932', '1212', '12111111111', '121', '男', 'dfsdfsd', '0', '2020-02-27 19:08:33', '2020-03-01 20:05:19', '0');
INSERT INTO `shopping_sys_admin` VALUES ('9', 'xiaohua', '小花', '63da62e7d3df8355ee4b2ef9aadb9b56004f815b9f9ae3383b74075c', '545434323@qq.com', '14653436453', '25', '女', '张家口', '0', '2020-02-28 18:33:46', '2020-02-28 18:33:46', '0');
INSERT INTO `shopping_sys_admin` VALUES ('10', 'hello', '老刘', 'cd3ac2193579104915b77f19575a4eb84a53d92866b7bf4b91d43be1', '9098765651@qq.com', '11111111111', '111', '男', '深圳1', '0', '2020-02-28 18:35:59', '2020-03-01 14:29:56', '0');
INSERT INTO `shopping_sys_admin` VALUES ('11', 'zhangsan', '张珊', 'd4edb5264405b1f9d2a0acedb9732a092b4f3e3470013440095dd60e', '1212@qq.com', '12345678767', '21', '女', '广州', '0', '2020-02-28 18:38:33', '2020-02-28 18:38:33', '0');
INSERT INTO `shopping_sys_admin` VALUES ('12', 'df', 'd', '39e1cd85220ca3f21ab572b2c8b9be504f14c1c2c1f0426ce158fbb4', '1', '11111111111', '12', '女', '1', '0', '2020-02-28 18:40:54', '2020-02-28 18:40:54', '1');
INSERT INTO `shopping_sys_admin` VALUES ('13', 'zw', '赵武', '26a10b10e941fb994be6821508f812f6d356a433d6c99acde060f00e', '12121@qq.com', '11245343546', '18', '男', 'China', '0', '2020-03-01 14:06:44', '2020-03-01 14:06:44', '0');

-- ----------------------------
-- Table structure for shopping_sys_member
-- ----------------------------
DROP TABLE IF EXISTS `shopping_sys_member`;
CREATE TABLE `shopping_sys_member` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `login_name` varchar(255) NOT NULL COMMENT '登录名',
  `member_name` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `mobile` char(11) NOT NULL COMMENT '移动电话',
  `age` tinyint(3) unsigned NOT NULL COMMENT '年龄',
  `sex` char(1) NOT NULL DEFAULT '男',
  `address` varchar(255) NOT NULL COMMENT '用户地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户状态：0正常，1冻结',
  `gmt_create` datetime NOT NULL COMMENT '用户创建的时间',
  `gmt_modified` datetime NOT NULL COMMENT '用户修改的时间',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除的标识',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_login_name` (`login_name`),
  KEY `idx_username` (`member_name`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_sys_member
-- ----------------------------
INSERT INTO `shopping_sys_member` VALUES ('1', 'ccj', 'cj', '8c20ee34f92493fe6bb33aa59d317d54534e7f7b3a0cd7a7b3602c66', '909301740@qq.com', '15653577659', '23', '男', '山东', '0', '2020-02-24 23:13:46', '2020-02-24 23:13:46', '0');
INSERT INTO `shopping_sys_member` VALUES ('3', 'xiaoming', '小明', '6db577c1eab45ca48c56a0fe6d45189e5ac9cda9dcf0f73ad33343ee', '994564536@qq.com', '13765648897', '18', '女', '深圳', '0', '2020-02-26 19:12:13', '2020-02-26 19:12:13', '0');
INSERT INTO `shopping_sys_member` VALUES ('4', 'array', '小王', 'f8ac215f6525bf6009278bdd9c7404f458116aa0bbc90f426b3255dd', '776546342@qq.com', '17806342234', '40', '男', '广东', '0', '2020-02-26 21:44:39', '2020-02-26 21:44:39', '0');
INSERT INTO `shopping_sys_member` VALUES ('5', 'laoli', '老李', '049a6c279f4e05bc1620d8b2497a44fdc16b2f8204409f045a8f7b80', '223487656@qq.com', '13876464546', '41', '男', '山东', '0', '2020-02-27 18:58:07', '2020-02-27 18:58:07', '0');
INSERT INTO `shopping_sys_member` VALUES ('7', 'dd', '小红', '7c5bb92486cd4972a802e3dbc665a4dcc52fd1fb2cd9d7f4e0009505', 'xiaohong@edu.com', '12121212121', '21', '女', '江苏省苏州市', '0', '2020-02-27 19:06:13', '2020-03-29 14:52:38', '0');
INSERT INTO `shopping_sys_member` VALUES ('8', 'chuj', 'chuj', 'eebfa6304e17947c2d91f003a2caa3131553d7d60a83be48d1e89ad3', 'chuj123@qq.com', '18028378788', '18', '女', '江苏省苏州市', '0', '2020-03-28 15:35:35', '2020-03-28 15:35:35', '0');
INSERT INTO `shopping_sys_member` VALUES ('9', 'ccc', 'ccc', '0a0a1828c4d0de043939e661eb54fc4d3452cea240fd236af9bf2a02', 'ccc123@qq.com', '13912287837', '20', '女', '江苏省苏州市', '0', '2020-03-29 09:20:51', '2020-03-29 09:20:51', '0');
INSERT INTO `shopping_sys_member` VALUES ('10', '12345', '1', '416eabead386632cf105dfb2487ccf5c4cfa3c510dae88be4850256c', '111@163.com', '111', '3', '男', '111', '0', '2020-08-18 21:23:57', '2020-08-18 21:23:57', '0');
