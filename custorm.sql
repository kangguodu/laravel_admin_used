/*
Navicat MySQL Data Transfer

Source Server         : yii
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : custorm

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-02 10:34:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-user', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '8', 'Helpers', 'fa-gears', '', null, null);
INSERT INTO `admin_menu` VALUES ('9', '8', '9', 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', null, null);
INSERT INTO `admin_menu` VALUES ('10', '8', '10', 'Database terminal', 'fa-database', 'helpers/terminal/database', null, null);
INSERT INTO `admin_menu` VALUES ('11', '8', '11', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', null, null);

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:19:21', '2018-08-02 10:19:21');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:19:31', '2018-08-02 10:19:31');
INSERT INTO `admin_operation_log` VALUES ('3', '1', '/', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:19:40', '2018-08-02 10:19:40');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:19:45', '2018-08-02 10:19:45');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:20:22', '2018-08-02 10:20:22');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:20:53', '2018-08-02 10:20:53');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:21:16', '2018-08-02 10:21:16');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:21:17', '2018-08-02 10:21:17');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:21:27', '2018-08-02 10:21:27');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:22:29', '2018-08-02 10:22:29');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:22:54', '2018-08-02 10:22:54');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'auth/users/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:23:00', '2018-08-02 10:23:00');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'auth/users/1/edit', 'GET', '::1', '[]', '2018-08-02 10:26:11', '2018-08-02 10:26:11');
INSERT INTO `admin_operation_log` VALUES ('14', '1', '/', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:26:15', '2018-08-02 10:26:15');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:26:19', '2018-08-02 10:26:19');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:26:23', '2018-08-02 10:26:23');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'auth/users/12', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:26:42', '2018-08-02 10:26:42');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:26:43', '2018-08-02 10:26:43');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'auth/users/4', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:26:46', '2018-08-02 10:26:46');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:26:48', '2018-08-02 10:26:48');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'auth/users/4', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:26:50', '2018-08-02 10:26:50');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'auth/users/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:26:51', '2018-08-02 10:26:51');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'auth/users/6', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:26:53', '2018-08-02 10:26:53');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'auth/users/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:26:54', '2018-08-02 10:26:54');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:26:55', '2018-08-02 10:26:55');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'auth/users/11', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:26:59', '2018-08-02 10:26:59');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:27:01', '2018-08-02 10:27:01');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'auth/users/10', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:27:06', '2018-08-02 10:27:06');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:27:07', '2018-08-02 10:27:07');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'auth/users/8', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:27:09', '2018-08-02 10:27:09');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:27:11', '2018-08-02 10:27:11');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'auth/users/5', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:27:13', '2018-08-02 10:27:13');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:27:14', '2018-08-02 10:27:14');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'auth/users/2', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:27:15', '2018-08-02 10:27:15');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:27:17', '2018-08-02 10:27:17');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'auth/users/2', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\"}', '2018-08-02 10:27:18', '2018-08-02 10:27:18');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'auth/users/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:27:54', '2018-08-02 10:27:54');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'auth/users/1', 'PUT', '::1', '{\"username\":\"admin\",\"name\":\"superadmin\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/public\\/auth\\/users\"}', '2018-08-02 10:28:08', '2018-08-02 10:28:08');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:28:10', '2018-08-02 10:28:10');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:28:13', '2018-08-02 10:28:13');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'auth/users/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:28:18', '2018-08-02 10:28:18');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'auth/users/1', 'PUT', '::1', '{\"username\":\"admin\",\"name\":\"admin\",\"password\":\"$2y$10$go1jcH2qtZ9RD1XrLkh42OzDbp3IqMVcIH0mxoPZIvQ9HHWvFkCCa\",\"password_confirmation\":\"$2y$10$go1jcH2qtZ9RD1XrLkh42OzDbp3IqMVcIH0mxoPZIvQ9HHWvFkCCa\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"olGVxwvHuXrlaeh634tlK5QqUgDLO24HMDRdwwpH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/public\\/auth\\/users\"}', '2018-08-02 10:28:24', '2018-08-02 10:28:24');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:28:26', '2018-08-02 10:28:26');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'auth/users', 'GET', '::1', '[]', '2018-08-02 10:28:29', '2018-08-02 10:28:29');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:28:33', '2018-08-02 10:28:33');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'auth/logout', 'GET', '::1', '[]', '2018-08-02 10:29:07', '2018-08-02 10:29:07');
INSERT INTO `admin_operation_log` VALUES ('47', '1', '/', 'GET', '::1', '[]', '2018-08-02 10:29:26', '2018-08-02 10:29:26');
INSERT INTO `admin_operation_log` VALUES ('48', '1', '/', 'GET', '::1', '[]', '2018-08-02 10:29:39', '2018-08-02 10:29:39');
INSERT INTO `admin_operation_log` VALUES ('49', '1', '/', 'GET', '::1', '[]', '2018-08-02 10:32:14', '2018-08-02 10:32:14');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-02 10:32:18', '2018-08-02 10:32:18');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'auth/logout', 'GET', '::1', '[]', '2018-08-02 10:32:35', '2018-08-02 10:32:35');
INSERT INTO `admin_operation_log` VALUES ('52', '1', '/', 'GET', '::1', '[]', '2018-08-02 10:33:02', '2018-08-02 10:33:02');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-08-02 10:19:09', '2018-08-02 10:19:09');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', 's3kb6DJAomzaVflcF8x5MFTeOjXK8b3z', '$2y$10$go1jcH2qtZ9RD1XrLkh42OzDbp3IqMVcIH0mxoPZIvQ9HHWvFkCCa', null, 'admin@admin.com', '10', '0000-00-00 00:00:00', '2018-08-02 10:28:24', null, 'G69E9SWqHflycIBetPiFhU5JYmWOSJiiGy7uLA4nIVOTxOVZIu7R37SmOZmy', 'admin');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auto_reply
-- ----------------------------
DROP TABLE IF EXISTS `auto_reply`;
CREATE TABLE `auto_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `reply` tinytext COLLATE utf8_bin,
  `kefu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auto_reply
-- ----------------------------
INSERT INTO `auto_reply` VALUES ('6', '0', 'Hi，有什麽是蜜蜜可以爲您服務的嗎？\n請發送關鍵字（例如：Q1）\n蜜蜜將會爲您解答 ~', null, '1');
INSERT INTO `auto_reply` VALUES ('8', '6', 'memecoins是什麽？', null, '1');
INSERT INTO `auto_reply` VALUES ('18', '8', '是一款APP', null, '1');
INSERT INTO `auto_reply` VALUES ('19', '18', '什么类型的APP', null, '1');
INSERT INTO `auto_reply` VALUES ('20', '19', '伟大的APP', null, '1');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `work_time` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `work_day` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'memecoins', '123456789', 'memecoins@memecoins.com', null, null);

-- ----------------------------
-- Table structure for kefu
-- ----------------------------
DROP TABLE IF EXISTS `kefu`;
CREATE TABLE `kefu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `account` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `work_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `work_day` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission` varchar(5) COLLATE utf8_bin NOT NULL,
  `super_account` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kefu
-- ----------------------------
INSERT INTO `kefu` VALUES ('1', '1', 'pig', 'pig', 'zhuzhu', '$2y$10$9VrppEiTOXqmRWTG4WPN1.gAn2qPQHHUMNh1CoDJVM73IvDbIMoOm', '1', '', '', '2', '1');

-- ----------------------------
-- Table structure for keyword
-- ----------------------------
DROP TABLE IF EXISTS `keyword`;
CREATE TABLE `keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kefu_id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` tinytext COLLATE utf8_bin NOT NULL,
  `type` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of keyword
-- ----------------------------
INSERT INTO `keyword` VALUES ('16', '1', '你好', 0xE682A8E5A5BDEFBC8CE69C89E4BB80E9BABDE58FAFE4BBA5E5B9ABE588B0E682A8EFBC9F, 'text');
INSERT INTO `keyword` VALUES ('17', '1', '您好', 0xE682A8E5A5BDEFBC8CE69C89E4BB80E9BABDE58FAFE4BBA5E5B9ABE588B0E682A8EFBC9F, 'text');
INSERT INTO `keyword` VALUES ('18', '1', 'memecoins', 0xE98099E698AFE4B880E6ACBEE58189E5A4A7E79A84E794A2E59381, 'text');
INSERT INTO `keyword` VALUES ('19', '1', '1', 0x31313131313131313131, 'text');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_type` varchar(25) COLLATE utf8_bin NOT NULL,
  `msg_content` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `msg_time` bigint(16) NOT NULL,
  `sender_type` varchar(25) COLLATE utf8_bin NOT NULL,
  `sender_id` varchar(40) COLLATE utf8_bin NOT NULL,
  `receiver_type` varchar(25) COLLATE utf8_bin NOT NULL,
  `receiver_id` varchar(40) COLLATE utf8_bin NOT NULL,
  `receiver_read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('122', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531909803813', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('123', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531909803799', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('124', 'text', 0x31, '1531909808999', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('125', 'text', 0x32, '1531909811054', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('126', 'text', 0x33, '1531909813740', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('127', 'text', 0x34, '1531909815519', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('128', 'text', 0x35, '1531909817799', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('140', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531910304273', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('141', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531910304250', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('142', 'text', 0x3130, '1531910393430', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('143', 'text', 0x3131, '1531910395737', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('144', 'text', 0x3132, '1531910397720', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('145', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531910417082', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('146', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531910417098', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('147', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531910516182', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('148', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531910516153', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('149', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531910560615', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('150', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531910560599', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('151', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911010031', 'kefu', '1', 'user', 'user129', '0');
INSERT INTO `message` VALUES ('152', 'text', 0x48656C6C6F2C20E68891E698AF2075736572313239, '1531911010047', 'user', 'user129', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('153', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911560044', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('154', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531911560070', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('155', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911607575', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('156', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531911607626', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('157', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531911687861', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('158', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911687827', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('159', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531911760230', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('160', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911760205', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('161', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531911803336', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('162', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911803305', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('163', 'text', 0x363636, '1531911826147', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('164', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911869279', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('165', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531911869307', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('166', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531911940675', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('167', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911940650', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('168', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531911975859', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('169', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531911975886', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('170', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531912014203', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('171', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531912014229', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('172', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531964623320', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('173', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531964623307', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('174', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531964710763', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('175', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531964710772', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('176', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531964983089', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('177', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531964983108', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('178', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531964995805', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('179', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531964995798', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('180', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531965113344', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('181', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531965113329', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('182', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531965264938', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('183', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531965264906', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('184', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531965332301', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('185', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531965332284', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('186', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531965335323', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('187', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531965335301', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('188', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531965364214', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('189', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531965364236', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('190', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531965523388', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('191', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531965523402', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('192', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531965565282', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('193', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531965565306', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('194', 'text', 0x3132333133, '1531965573743', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('195', 'image', 0x2F75706C6F61642F315F757365725F315F6B6566755F315F313533313936363536393938352E706E67, '1531966569994', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('196', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531966642898', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('197', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531966642878', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('198', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531966718639', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('199', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531966718602', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('200', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531967048594', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('201', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531967048553', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('202', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531967107512', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('203', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531967107529', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('204', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531967155952', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('205', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531967155920', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('206', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531967318537', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('207', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531967318562', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('208', 'text', 0xE682A8E5A5BDEFBC8CE69C89E4BB80E9BABDE58FAFE4BBA5E5B9ABE588B0E682A8EFBC9F, '1531967375862', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('209', 'text', 0xE585A8E5A0B4E59586E59381E6899338E68A98, '1531967397606', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('210', 'text', 0x303030, '1531967439270', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('211', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531967732402', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('212', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531967732387', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('213', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531967782614', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('214', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531967782599', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('215', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531967930119', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('216', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531967930099', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('217', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531967994097', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('218', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531967994103', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('219', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968003488', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('220', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968003489', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('221', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968084689', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('222', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968084708', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('223', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968181875', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('224', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968181896', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('225', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968669720', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('226', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968669743', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('227', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968727207', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('228', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968727162', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('229', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968761721', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('230', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968761729', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('231', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968776312', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('232', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968776327', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('233', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968810624', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('234', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968810646', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('235', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968824570', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('236', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968824584', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('237', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968845241', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('238', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968845216', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('239', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968871788', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('240', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968871824', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('241', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968903135', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('242', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968903145', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('243', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968915390', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('244', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968915365', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('245', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968941046', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('246', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968941060', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('247', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968967266', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('248', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968967277', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('249', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531968985842', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('250', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531968985868', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('251', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531969333961', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('252', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531969333978', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('253', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531969373336', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('254', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531969373351', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('255', 'image', 0x2F75706C6F61642F315F6B6566755F315F757365725F315F313533313936393433363138322E6A7067, '1531969436185', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('256', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531969513618', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('257', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531969513610', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('258', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531970436894', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('259', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531970436864', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('260', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531970467682', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('261', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531970467649', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('262', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531970678639', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('263', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531970678624', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('264', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531970778620', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('265', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531970778575', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('266', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531971039472', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('267', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531971039454', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('268', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531971082077', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('269', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531971082060', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('270', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531971275906', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('271', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531971275921', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('272', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531971448846', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('273', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531971448847', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('274', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531971728204', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('275', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531971728274', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('276', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531971834834', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('277', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531971834845', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('278', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531971900424', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('279', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531971900435', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('280', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531971984545', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('281', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531971984483', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('282', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531972030355', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('283', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972030386', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('284', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972053827', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('285', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531972053796', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('286', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972145719', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('287', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531972145706', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('288', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972167178', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('289', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531972167160', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('290', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972534337', 'kefu', '1', 'user', 'user34', '0');
INSERT INTO `message` VALUES ('291', 'text', 0x48656C6C6F2C20E68891E698AF20757365723334, '1531972534605', 'user', 'user34', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('292', 'image', 0x2F75706C6F61642F315F757365725F7573657233345F6B6566755F315F313533313937323535383137352E6A7067, '1531972558197', 'user', 'user34', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('293', 'image', 0x2F75706C6F61642F315F757365725F7573657233345F6B6566755F315F313533313937323536353737302E676966, '1531972565786', 'user', 'user34', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('294', 'text', 0x6869EFBC8C6D79206769726C, '1531972590333', 'user', 'user34', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('295', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972672857', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('296', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531972672836', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('297', 'text', 0x48656C6C6F2C20E68891E698AF20757365723334, '1531972673622', 'user', 'user34', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('298', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972698169', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('299', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531972698136', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('300', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531972759054', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('301', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972759080', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('302', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531972782580', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('303', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972782995', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('304', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972802982', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('305', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531972802992', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('306', 'text', 0x6969696969, '1531972809095', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('307', 'text', 0xE69C89E782B9E6848FE6809D, '1531972817858', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('308', 'image', 0x2F75706C6F61642F315F757365725F7573657233355F6B6566755F315F313533313937323834333836382E4A5047, '1531972843893', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('309', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972852791', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('310', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531972852804', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('311', 'text', 0xE4BDA0E698AFE79DA1, '1531972863262', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('312', 'text', 0xE682A8E5A5BD, '1531972867134', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('313', 'text', 0xE4BDA0E698AFE8B081EFBC9F, '1531972871605', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('314', 'text', 0xE68891E698AF436F66666565, '1531972872173', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('315', 'text', 0xE593A6E593A6E593A6, '1531972878331', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('316', 'text', 0xE78FBEE59CA8E59CA8E6B8ACE8A9A6E698AFE5978E, '1531972880117', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('317', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531972904141', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('318', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531972954485', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('319', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972954473', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('320', 'text', 0x75697569, '1531972968753', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('321', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531972977274', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('322', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972977258', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('323', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531972988907', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('324', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531972988883', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('325', 'text', 0xE7BE8EE5A5B3E4BDA0E5A5BD, '1531972999922', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('326', 'text', 0x48656C6C6F2C20E68891E698AF20757365723533, '1531973010509', 'user', 'user53', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('327', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531973010495', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('328', 'text', 0xE68891E698AFE8B081EFBC9F, '1531973021720', 'user', 'user53', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('329', 'text', 0xE799BBE5BD95E595A6, '1531973030961', 'user', 'user53', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('330', 'text', 0x313233, '1531973034493', 'user', 'user53', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('331', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531973048317', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('332', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531973048299', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('333', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531973051310', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('334', 'text', 0xE4BDA0E4BDA0E4BDA0, '1531973096914', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('335', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531973195069', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('336', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531973195085', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('337', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531973218026', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('338', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531973218040', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('339', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531973813679', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('340', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531973883933', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('341', 'image', 0x2F75706C6F61642F315F757365725F315F6B6566755F315F313533313937333930343930342E706E67, '1531973904909', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('342', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531974630285', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('343', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531974653355', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('344', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531974663490', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('345', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531974678130', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('346', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531980204714', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('347', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531980554437', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('348', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531980554389', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('349', 'text', 0xE68891E4BC9AE5B0BDE58A9B, '1531980564816', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('350', 'text', 0xE5B0B1E8BF9BE69DA5E4BA86, '1531980582914', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('351', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531980587039', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('352', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531980609458', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('353', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531980699654', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('354', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531980751856', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('355', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531980840610', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('356', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531980863005', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('357', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531980862989', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('358', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531980866715', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('359', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531980866734', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('360', 'text', 0xE7BAA0E7BB93, '1531980869068', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('361', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531980877624', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('362', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531980877646', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('363', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531980889985', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('364', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531980889976', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('365', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531980912592', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('366', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531980963427', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('367', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531980963403', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('368', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531980992724', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('369', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531980992701', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('370', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531981053981', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('371', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531981054269', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('372', 'text', 0xE985B736, '1531981098170', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('373', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531981122690', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('374', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531981904997', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('375', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531981973278', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('376', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531981999306', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('377', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531982051409', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('378', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531982092151', 'kefu', '1', 'user', 'user57', '0');
INSERT INTO `message` VALUES ('379', 'text', 0x48656C6C6F2C20E68891E698AF20757365723537, '1531982092167', 'user', 'user57', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('380', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531982123017', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('381', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531982149827', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('382', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531982198054', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('383', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531982198066', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('384', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531982352834', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('385', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531982593143', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('386', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531982610013', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('387', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531982651627', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('388', 'text', 0x48656C6C6F2C20E68891E698AF2063656C653337, '1531982771654', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('389', 'text', 0x48656C6C6F2C20E68891E698AF20757365723533, '1531982817452', 'user', 'user53', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('390', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531982817866', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('391', 'text', 0x48656C6C6F2C20E68891E698AF20757365723335, '1531982846522', 'user', 'user35', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('392', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531982846482', 'kefu', '1', 'user', 'user35', '0');
INSERT INTO `message` VALUES ('393', 'text', 0x48656C6C6F2C20E68891E698AF20757365723337, '1531982849587', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('394', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531982849567', 'kefu', '1', 'user', 'user37', '0');
INSERT INTO `message` VALUES ('395', 'text', 0x48656C6C6F2C20E68891E698AF20757365723533, '1531982856228', 'user', 'user53', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('396', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531982856208', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('397', 'image', 0x2F75706C6F61642F315F757365725F7573657233375F6B6566755F315F313533313938323836323037372E706E67, '1531982862098', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('398', 'text', 0xE595A7E595A7E595A7, '1531982870771', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('399', 'text', 0xE59388E59388E59388, '1531982874233', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('400', 'text', 0xE59387E59387E59387, '1531982877751', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('401', 'text', 0xE595A6E595A6E595A6, '1531982881258', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('402', 'text', 0xE598ADE598ADE598AD, '1531982892833', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('403', 'text', 0x48656C6C6F2C20E68891E698AF20757365723337, '1531982901543', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('404', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531982901528', 'kefu', '1', 'user', 'user37', '0');
INSERT INTO `message` VALUES ('405', 'text', 0xE5989FE5989FE5989F, '1531982923554', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('406', 'text', 0xE59392E59392E59392E59392, '1531982931407', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('407', 'text', 0x626975626975626975, '1531982944754', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('408', 'text', 0xE595BEE595BEE595BE, '1531982948582', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('409', 'text', 0xE595BEE592AAE595BEE592AA, '1531982958904', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('410', 'text', 0xE598BFE592BBE598BFE592BB, '1531982964003', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('411', 'text', 0xE59997E597A4E59997E597A4, '1531982968764', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('412', 'text', 0xE59294E693A6E59294E693A6, '1531982973431', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('413', 'text', 0xE5B883E8B0B7E5B883E8B0B7, '1531982981047', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('414', 'text', 0xE58FAEE5929AE58FAEE5929A, '1531982988543', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('415', 'text', 0xE5929AE5919BE5929AE5919B, '1531982997906', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('416', 'text', 0xE58FBDE58FBDE596B3E596B3, '1531983003394', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('417', 'text', 0xE4BDA0E5A5BD, '1531983005887', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('418', 'text', 0xE5BFABE98092, '1531983012054', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('419', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531983015347', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('420', 'text', 0xE789A9E6B581, '1531983016062', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('421', 'text', 0xE4BDA0E58FABE4BB80E4B988E5908DE5AD97, '1531983023252', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('422', 'text', 0xE6BBB4E6BBB4E7AD94E7AD94, '1531983034357', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('423', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531983081187', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('424', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531983116749', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('425', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531983148351', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('426', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531983180401', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('427', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531983212301', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('428', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531983256343', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('429', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531983417889', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('430', 'text', 0x48656C6C6F2C20E68891E698AF2031, '1531983643266', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('431', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531983659265', 'kefu', '1', 'user', 'user53', '0');
INSERT INTO `message` VALUES ('432', 'text', 0x313233, '1531983935492', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('433', 'text', 0x343635, '1531983941828', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('434', 'text', 0x3133, '1531984000539', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('435', 'text', 0x313233, '1531984064330', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('436', 'text', 0x343536, '1531984069980', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('437', 'text', 0x6A66736F61666A7361696F6A66736169, '1531984074586', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('438', 'text', 0x6A66696F77757269776F716A6872, '1531984078587', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('439', 'text', 0x3738393837, '1531984139835', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('440', 'text', 0x363534363534, '1531984145275', 'kefu', '1', 'user', '1', '0');
INSERT INTO `message` VALUES ('441', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531984233630', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('442', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531984245856', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('443', 'text', 0x4869EFBC8CE68891E698AF6D656D65636F696E73E5B08FE5AEA2E69C8DE89C9CE89C9CEFBC8CE8A681E698AFE9809B6D656D65636F696E73E98187E588B0E5958FE9A18CEFBC8CE8A898E5BE97E5958FE89C9CE89C9CE593A67E, '1531984261423', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('444', 'text', 0xE4BDA0E5A5BD, '1531984961457', 'user', 'user57', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('445', 'text', 0xE683B3E8B2B7E598A2, '1531984969956', 'user', 'user57', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('446', 'text', 0xEFBC9FEFBC9F, '1531984974763', 'user', 'user57', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('447', 'text', 0x3030, '1531985260269', 'kefu', '1', 'user', 'user37', '0');
INSERT INTO `message` VALUES ('448', 'text', 0xE598BBE598BBE598BB, '1531985271412', 'user', 'user37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('449', 'text', 0xE5A5BD, '1531985595155', 'user', 'user57', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('450', 'text', 0x313233, '1531994273301', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('451', 'text', 0x3132343536, '1531994360309', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('452', 'text', 0x34353634363537, '1531994395333', 'user', '1', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('453', 'text', 0xE4BDA0E59CB0E79086, '1532051111411', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('454', 'image', 0x2F75706C6F61642F315F757365725F63656C6533375F6B6566755F315F313533323036363939343834302E6A7067, '1532066994865', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('455', 'text', 0x313233, '1532160182866', 'user', '37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('456', 'text', 0x313233, '1532161991884', 'user', '37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('457', 'text', 0x343536, '1532162005668', 'kefu', '1', 'user', '37', '0');
INSERT INTO `message` VALUES ('458', 'text', 0x31323331, '1532162327360', 'user', '37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('459', 'text', 0x34353637, '1532162341124', 'kefu', '1', 'user', '37', '0');
INSERT INTO `message` VALUES ('460', 'text', 0x66616661, '1532162434734', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('461', 'text', 0xE5B0B1E698AFE5B0B1E698AF, '1532162507862', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('462', 'text', 0xE7A7AFE58886E58FB8E6B395E5B180E58FB8E6B395E5B180E788B1E4B88A, '1532163999167', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('463', 'image', 0x687474703A2F2F6F66666963652E74656368726172652E636F6D3A353631342F75706C6F61642F315F757365725F63656C6533375F6B6566755F315F313533323136363930353633352E6A7067, '1532166905714', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('464', 'image', 0x687474703A2F2F6F66666963652E74656368726172652E636F6D3A353631342F75706C6F61642F315F757365725F63656C6533375F6B6566755F315F313533323136373433313536302E6A7067, '1532167431602', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('465', 'image', 0x687474703A2F2F6F66666963652E74656368726172652E636F6D3A353631342F75706C6F61642F315F757365725F63656C6533375F6B6566755F315F313533323136373434393035352E6A7067, '1532167449100', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('466', 'image', 0x687474703A2F2F6F66666963652E74656368726172652E636F6D3A353631342F75706C6F61642F315F757365725F63656C6533375F6B6566755F315F313533323136373438343031392E6A7067, '1532167484067', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('467', 'text', 0xE4BDA0E98086E68EA8, '1532167490920', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('468', 'text', 0xE593A6E99A8FE69CBAE8AEB0E5BD95, '1532167493864', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('469', 'text', 0xE7ACACE587A0E9A298E5A790, '1532167496945', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('470', 'text', 0xE4BDA0E59B9EE69DA5, '1532167501790', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('471', 'text', 0xE889B2E9ACBCE59B9EE69DA5E4BA86, '1532167505749', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('472', 'text', 0xE4BDA0E587A0E7BAA7E4BA86, '1532167826458', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('473', 'text', 0xE4BA8CE9A298E8AEB0E5BD95, '1532167829463', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('474', 'text', 0xE4BDA0E5BC9FE5BF98E8AEB0E4BA86, '1532167832288', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('475', 'text', 0xE4BDA0E68F90E585B3E69CBAE4BA86, '1532167841196', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('476', 'text', 0xE7ACACE4B880E9878CE4BA86, '1532167844696', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('477', 'text', 0xE9A1B6E69BBFE5A790E5A4AB, '1532167847214', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('478', 'text', 0xE6B091E6AD8CE6B996E79C8BE79C8B, '1532167852740', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('479', 'text', 0x313233, '1532168852112', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('480', 'text', 0x343536, '1532168853518', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('481', 'text', 0x373839, '1532168859303', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('482', 'text', 0xE4BDA0E5A5BD, '1532317863926', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('483', 'text', 0xE682A8E5A5BD, '1532317870541', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('484', 'text', 0x5131, '1532329256635', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('485', 'text', 0x313131, '1532428090797', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('486', 'image', 0x2F75706C6F61642F315F757365725F63656C6533375F6B6566755F315F313533323432383130383331312E6A7067, '1532428108345', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('487', 'image', 0x2F75706C6F61642F315F757365725F63656C6533375F6B6566755F315F313533323432383133393434372E6A7067, '1532428139494', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('488', 'image', 0x2F75706C6F61642F315F6B6566755F315F757365725F63656C6533375F313533323432383135303535352E706E67, '1532428150579', 'kefu', '1', 'user', 'cele37', '0');
INSERT INTO `message` VALUES ('489', 'text', 0x323232, '1532428159705', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('490', 'text', 0x333333, '1532428162505', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('491', 'text', 0x343434, '1532428165378', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('492', 'text', 0x353535, '1532428170585', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('493', 'text', 0x363636, '1532428173498', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('494', 'text', 0x373736, '1532428176736', 'user', 'cele37', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('495', 'text', 0x3132, '1532432212268', 'user', 'boss9999', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('496', 'text', 0x666A736961666A7361696F6A, '1532432219420', 'kefu', '1', 'user', 'boss9999', '0');
INSERT INTO `message` VALUES ('497', 'text', 0x333534333534, '1532432220357', 'user', 'boss9999', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('498', 'text', 0x736B666A7361696F666A61, '1532432220325', 'kefu', '1', 'user', 'boss9999', '0');
INSERT INTO `message` VALUES ('499', 'text', 0x333534333534, '1532432221804', 'user', 'boss9999', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('500', 'text', 0x3334353335, '1532432222236', 'kefu', '1', 'user', 'boss9999', '0');
INSERT INTO `message` VALUES ('501', 'text', 0x35343534, '1532432231550', 'user', 'boss9999', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('502', 'text', 0xE4BDA0E69C89E4BB80E9BABCE58A9FE883BD, '1533008170025', 'user', 'user171', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('503', 'text', 0xE883BDE5A4A0E8A7A3E6B1BAE4BDA0E79A84E4B880E58887E5958FE9A18CE594B7, '1533008181681', 'kefu', '1', 'user', 'user171', '0');
INSERT INTO `message` VALUES ('504', 'text', 0xE585A8E5A0B4E59586E59381E6899338E68A98, '1533008615580', 'kefu', '1', 'user', 'boss10045', '0');
INSERT INTO `message` VALUES ('505', 'text', 0x6876686262626E, '1533008788177', 'user', 'user177', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('506', 'text', 0x68626868, '1533008794413', 'user', 'user177', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('507', 'text', 0x626862, '1533008797343', 'user', 'user177', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('508', 'text', 0x6A6462647562, '1533008822039', 'user', 'user177', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('509', 'text', 0x6A64647562, '1533008826634', 'user', 'user177', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('510', 'text', 0x6A646E686264, '1533008838669', 'user', 'user177', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('511', 'text', 0xE4BDA0E698AFE8B081, '1533008863876', 'user', 'user177', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('512', 'text', 0xE4BDA0E982A3E9878C, '1533008868827', 'user', 'user177', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('513', 'text', 0xE4BDA0E698AF, '1533009112713', 'user', 'boss10040', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('514', 'text', 0x313233, '1533009115961', 'user', 'boss10040', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('515', 'text', 0xE4BDA0E582BBE5958A, '1533009123519', 'user', 'boss10040', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('516', 'text', 0xE6B2A1E79C8BE588B0, '1533009126966', 'user', 'boss10040', 'kefu', '1', '0');
INSERT INTO `message` VALUES ('517', 'text', 0xE4BDA0E59CA8E5B9B9E5989B, '1533010166456', 'user', 'user171', 'kefu', '1', '0');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for quick_reply
-- ----------------------------
DROP TABLE IF EXISTS `quick_reply`;
CREATE TABLE `quick_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kefu_id` int(11) NOT NULL,
  `content` tinytext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of quick_reply
-- ----------------------------
INSERT INTO `quick_reply` VALUES ('3', '1', 0xE682A8E5A5BDEFBC8CE69C89E4BB80E9BABDE58FAFE4BBA5E5B9ABE588B0E682A8EFBC9F);
INSERT INTO `quick_reply` VALUES ('6', '1', 0xE585A8E5A0B4E59586E59381E6899338E68A98);
INSERT INTO `quick_reply` VALUES ('7', '1', 0x333333);
