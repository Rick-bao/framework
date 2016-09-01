/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.25 : Database - fssarb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fssarb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fssarb`;

/*Table structure for table `access_list` */

DROP TABLE IF EXISTS `access_list`;

CREATE TABLE `access_list` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `linkedRoleID` char(32) DEFAULT NULL COMMENT '用户权限表主键',
  `roleName` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `linkedMenuID` char(32) DEFAULT NULL COMMENT '关联菜单表ID',
  `menuName` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `menuURL` varchar(100) DEFAULT NULL COMMENT '访问URL',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `access_list` */

/*Table structure for table `group_access` */

DROP TABLE IF EXISTS `group_access`;

CREATE TABLE `group_access` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `linkedGroupID` char(32) DEFAULT NULL COMMENT '关联组ID',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `linkedAccessListID` char(32) DEFAULT NULL COMMENT '关联访问列表ID',
  `linkedTable` varchar(30) DEFAULT NULL COMMENT '关联表名',
  `linkedID` char(32) DEFAULT NULL COMMENT '关联表ID',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_access` */

/*Table structure for table `group_access_list` */

DROP TABLE IF EXISTS `group_access_list`;

CREATE TABLE `group_access_list` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `linkedGroupAccessID` char(32) DEFAULT NULL COMMENT '关联组ID',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_access_list` */

/*Table structure for table `live_account` */

DROP TABLE IF EXISTS `live_account`;

CREATE TABLE `live_account` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `NAME` varchar(20) DEFAULT NULL COMMENT '登录名',
  `nickName` varchar(20) DEFAULT NULL COMMENT '昵称',
  `PASSWORD` varchar(20) DEFAULT NULL COMMENT '登录密码',
  `portraits` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `ENABLE` char(1) DEFAULT NULL COMMENT '是否启用(0禁用,1启用,默认0)',
  `lastLoginIP` varchar(20) DEFAULT NULL COMMENT '最后登录IP',
  `lastLoginTime` varchar(20) DEFAULT NULL COMMENT '最后登录时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `live_account` */

/*Table structure for table `live_account_details` */

DROP TABLE IF EXISTS `live_account_details`;

CREATE TABLE `live_account_details` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `accountID` char(32) DEFAULT NULL COMMENT '关联生产用户ID',
  `linkedTable` varchar(30) DEFAULT NULL COMMENT '关联详情表名',
  `linkedID` char(32) DEFAULT NULL COMMENT '关联详情表ID',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `live_account_details` */

/*Table structure for table `menu_list` */

DROP TABLE IF EXISTS `menu_list`;

CREATE TABLE `menu_list` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `linkedID` char(32) DEFAULT NULL COMMENT '关联表ID',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `URL` varchar(100) DEFAULT NULL COMMENT '访问URL',
  `menuIcon` varchar(100) DEFAULT NULL COMMENT '菜单小图标',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `ENABLE` char(1) DEFAULT NULL COMMENT '是否启用(0禁用,1启用,默认0)',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu_list` */

/*Table structure for table `role_list` */

DROP TABLE IF EXISTS `role_list`;

CREATE TABLE `role_list` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `linkedRoleID` char(32) DEFAULT NULL COMMENT '关联角色ID',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_list` */

/*Table structure for table `system_dictionary` */

DROP TABLE IF EXISTS `system_dictionary`;

CREATE TABLE `system_dictionary` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `parent` char(32) DEFAULT '0' COMMENT '父级ID(0为顶级，默认为0)',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `CODE` varchar(30) DEFAULT NULL COMMENT '编码',
  `SERIAL` int(11) DEFAULT '0' COMMENT '序号(0为最先显示,默认0)',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_dictionary` */

/*Table structure for table `system_group` */

DROP TABLE IF EXISTS `system_group`;

CREATE TABLE `system_group` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `parent` char(32) DEFAULT NULL COMMENT '父级ID(0为顶级，默认为0)',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_group` */

/*Table structure for table `system_menu` */

DROP TABLE IF EXISTS `system_menu`;

CREATE TABLE `system_menu` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `parent` char(32) DEFAULT '0' COMMENT '父级ID(0为顶级，默认为0)',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `URL` varchar(100) DEFAULT NULL COMMENT '访问URL',
  `menuIcon` varchar(100) DEFAULT NULL COMMENT '菜单小图标',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `ENABLE` char(1) DEFAULT NULL COMMENT '是否启用(0禁用,1启用,默认0)',
  `symbolIcon` varchar(100) DEFAULT NULL COMMENT '标志小图标(启用|禁用)',
  `updateBy` varchar(20) DEFAULT NULL COMMENT '更新人',
  `updateTime` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_menu` */

/*Table structure for table `system_operated_log` */

DROP TABLE IF EXISTS `system_operated_log`;

CREATE TABLE `system_operated_log` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `TYPE` char(32) DEFAULT NULL COMMENT '操作类型(关联字典表)',
  `description` varchar(200) DEFAULT NULL COMMENT '操作内容',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_operated_log` */

/*Table structure for table `system_resource` */

DROP TABLE IF EXISTS `system_resource`;

CREATE TABLE `system_resource` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `linkedTable` varchar(30) DEFAULT NULL COMMENT '关联表名',
  `linkedID` char(32) DEFAULT NULL COMMENT '关联表ID',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `realPath` varchar(200) DEFAULT NULL COMMENT '资源绝对路径',
  `savePath` varchar(100) DEFAULT NULL COMMENT '保存路径',
  `URL` varchar(100) DEFAULT NULL COMMENT '访问URL(系统上线使用)',
  `thumbnails` varchar(150) DEFAULT NULL COMMENT '缩略图',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `ENABLE` char(1) DEFAULT NULL COMMENT '是否启用(0禁用,1启用,默认0)',
  `updateTime` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_resource` */

/*Table structure for table `system_role` */

DROP TABLE IF EXISTS `system_role`;

CREATE TABLE `system_role` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `parent` char(32) DEFAULT '0' COMMENT '父级ID(0为顶级，默认为0)',
  `NAME` varchar(20) DEFAULT NULL COMMENT '名称',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_role` */

/*Table structure for table `system_running_log` */

DROP TABLE IF EXISTS `system_running_log`;

CREATE TABLE `system_running_log` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `beginTime` varchar(20) DEFAULT NULL COMMENT '开始时间',
  `description` varchar(200) DEFAULT NULL COMMENT '故障内容',
  `createIP` varchar(20) DEFAULT NULL COMMENT '记录机器IP',
  `endTime` varchar(20) DEFAULT NULL COMMENT '结束时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_running_log` */

/*Table structure for table `system_user` */

DROP TABLE IF EXISTS `system_user`;

CREATE TABLE `system_user` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `NAME` varchar(20) DEFAULT NULL COMMENT '登录名',
  `nickName` varchar(20) DEFAULT NULL COMMENT '昵称',
  `PASSWORD` varchar(20) DEFAULT NULL COMMENT '登录密码',
  `portraits` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `ENABLE` char(1) DEFAULT NULL COMMENT '是否启用(0禁用,1启用,默认0)',
  `lastLoginIP` varchar(20) DEFAULT NULL COMMENT '最后登录IP',
  `lastLoginTime` varchar(20) DEFAULT NULL COMMENT '最后登录时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_user` */

/*Table structure for table `user_account_access` */

DROP TABLE IF EXISTS `user_account_access`;

CREATE TABLE `user_account_access` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `linkedTable` varchar(30) DEFAULT NULL COMMENT '关联表名',
  `linkedID` char(32) DEFAULT NULL COMMENT '关联表ID',
  `linkedRoleListID` char(32) DEFAULT NULL COMMENT '关联角色列表ID',
  `linkedGroupAccessListID` char(32) DEFAULT NULL COMMENT '关联组列表ID',
  `linkedMenuListID` char(32) DEFAULT NULL COMMENT '关联菜单列表ID',
  `createBy` varchar(20) DEFAULT NULL COMMENT '创建人(系统用户名称)',
  `createTime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_account_access` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
