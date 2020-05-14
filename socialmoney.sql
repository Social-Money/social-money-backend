/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : socialmoney

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 14/05/2020 12:14:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `symbol` varchar(100) DEFAULT NULL COMMENT 'symbol',
  `name` varchar(100) DEFAULT NULL COMMENT '币名',
  `decimals` int unsigned NOT NULL COMMENT '位数',
  `owner` varchar(100) DEFAULT NULL COMMENT '所有者',
  `token_address` varchar(100) DEFAULT NULL COMMENT 'token地址',
  `exchange_address` varchar(100) DEFAULT NULL COMMENT '交易所地址',
  `logo` varchar(300) DEFAULT NULL COMMENT 'logo',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------
BEGIN;
INSERT INTO `token` VALUES (1, 'XTB', '小田的空气币', 4, '0x9F4a04eF5dBEEDC84CC89E826C5B0A36EB3E7195', '0x75a1fb2f245eba785bd5492749ce77f828ca7f77', '0xec9e3de4ef674961a5f39d9866363948e88d9f24', NULL, '2020-05-09 15:10:32');
INSERT INTO `token` VALUES (2, 'LINK', '林可圈圈', 4, '0x9F4a04eF5dBEEDC84CC89E826C5B0A36EB3E7195', '0xF552223730D2377b8e1C03cEda0f69beBE0f5b10', '', NULL, '2020-05-09 15:11:16');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `email` varchar(255) DEFAULT NULL COMMENT '用户的邮箱',
  `email_status` tinyint(1) DEFAULT '0' COMMENT '邮箱状态：是否验证',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) DEFAULT '' COMMENT '用户头像',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `introduction` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '自我介绍',
  `platform` varchar(255) DEFAULT NULL COMMENT '用户来源平台',
  `reg_ip` varchar(50) DEFAULT NULL COMMENT '注册IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `last_login_ip` varchar(50) DEFAULT NULL COMMENT '最后登录IP',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `mobile_status` tinyint(1) DEFAULT '0' COMMENT '手机状态：是否验证',
  `level` int NOT NULL DEFAULT '0' COMMENT '等级',
  `status` int NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1120, NULL, 'alexh0201@gmail.com', 1, NULL, '', '2020-02-28 02:00:41', NULL, NULL, NULL, '2020-02-27 10:00:41', '8add47f16de345c7b4861cc461b7a620', '127.0.0.1', NULL, 0, 1, 1);
INSERT INTO `user` VALUES (1121, NULL, '15189195830@163.com', 1, NULL, '', '2020-02-28 17:46:56', NULL, NULL, NULL, '2020-02-28 01:46:56', '8e58bb95a3272e334bc2117105798559', '127.0.0.1', NULL, 0, 1, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
