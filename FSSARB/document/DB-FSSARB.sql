SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS group_access;
DROP TABLE IF EXISTS access_list;
DROP TABLE IF EXISTS user_account_access;
DROP TABLE IF EXISTS group_access_list;
DROP TABLE IF EXISTS live_account_details;
DROP TABLE IF EXISTS live_account;
DROP TABLE IF EXISTS menu_list;
DROP TABLE IF EXISTS role_list;
DROP TABLE IF EXISTS system_dictionary;
DROP TABLE IF EXISTS system_group;
DROP TABLE IF EXISTS system_menu;
DROP TABLE IF EXISTS system_operated_log;
DROP TABLE IF EXISTS system_resource;
DROP TABLE IF EXISTS system_role;
DROP TABLE IF EXISTS system_running_log;
DROP TABLE IF EXISTS system_user;




/* Create Tables */

CREATE TABLE access_list
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	linkedRoleID varchar(32),
	roleName varchar(20),
	linkedMenuID varchar(32),
	menuName varchar(20),
	menuURL varchar(100),
	createBy varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE group_access
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	-- 生产用户详情表主键
	linkedGroupID char(32) BINARY COMMENT '生产用户详情表主键',
	name varchar(20),
	-- 生产用户详情表主键
	linkedAccessListID char(32) BINARY COMMENT '生产用户详情表主键',
	-- 关联用户(系统|生产)表
	linkedTable varchar(30) COMMENT '关联用户(系统|生产)表',
	linkedID varchar(32),
	createBy varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE group_access_list
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	linkedGroupAccessID varchar(32),
	name varchar(20),
	createBy varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE live_account
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	-- 昵称
	name varchar(20) COMMENT '昵称',
	nickName varchar(20),
	password varchar(20),
	portraits varchar(100),
	createBy varchar(20),
	createTime varchar(20),
	enable char(1),
	lastLoginIP varchar(20),
	lastLoginTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE live_account_details
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	-- 生产用户详情表主键
	accountID char(32) BINARY COMMENT '生产用户详情表主键',
	linkedTable varchar(30),
	linkedID varchar(32),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE menu_list
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	linkedID varchar(32),
	name varchar(20),
	URL varchar(100),
	menuIcon varchar(100),
	createBy varchar(20),
	createTime varchar(20),
	enable char(1),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE role_list
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	linkedRoleID varchar(32),
	name varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE system_dictionary
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	parent varchar(32) DEFAULT '0',
	name varchar(20),
	code varchar(30),
	serial int DEFAULT 0,
	createBy varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE system_group
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	parent varchar(32),
	name varchar(20),
	createBy varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE system_menu
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	parent varchar(32) DEFAULT '0',
	name varchar(20),
	URL varchar(100),
	menuIcon varchar(100),
	createBy varchar(20),
	createTime varchar(20),
	enable char(1),
	symbolIcon varchar(100),
	updateBy varchar(20),
	updateTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE system_operated_log
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	type varchar(32),
	description varchar(200),
	createBy varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE system_resource
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	-- 关联用户(系统|生产)表
	linkedTable varchar(30) COMMENT '关联用户(系统|生产)表',
	linkedID varchar(32),
	name varchar(20),
	realPath varchar(200),
	savePath varchar(100),
	URL varchar(100),
	thumbnails varchar(150),
	createBy varchar(20),
	createTime varchar(20),
	enable char(1),
	updateTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE system_role
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	parent varchar(32) DEFAULT '0',
	name varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


CREATE TABLE system_running_log
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	beginTime varchar(20),
	description varchar(200),
	createIP varchar(20),
	endTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);


-- 系统用户主要用于系统自身维护，包含常规的系统数据，系统日志，系统管理员和生产用户创建等日常维护，默认至少创建一个超级管理
CREATE TABLE system_user
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	name varchar(20),
	nickName varchar(20),
	password varchar(20),
	portraits varchar(100),
	createBy varchar(20),
	createTime varchar(20),
	enable char(1),
	lastLoginIP varchar(20),
	lastLoginTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
) COMMENT = '系统用户主要用于系统自身维护，包含常规的系统数据，系统日志，系统管理员和生产用户创建等日常维护，默认至少创建一个超级管理';


CREATE TABLE user_account_access
(
	-- 生产用户详情表主键
	ID char(32) BINARY NOT NULL COMMENT '生产用户详情表主键',
	-- 关联用户(系统|生产)表
	linkedTable varchar(30) COMMENT '关联用户(系统|生产)表',
	linkedID varchar(32),
	-- 生产用户详情表主键
	linkedRoleListID char(32) BINARY COMMENT '生产用户详情表主键',
	-- 生产用户详情表主键
	linkedGroupAccessListID char(32) BINARY COMMENT '生产用户详情表主键',
	-- 生产用户详情表主键
	linkedMenuListID char(32) BINARY COMMENT '生产用户详情表主键',
	createBy varchar(20),
	createTime varchar(20),
	comments varchar(50),
	PRIMARY KEY (ID)
);



/* Create Foreign Keys */

ALTER TABLE group_access
	ADD FOREIGN KEY (linkedAccessListID)
	REFERENCES access_list (ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE user_account_access
	ADD FOREIGN KEY (linkedGroupAccessListID)
	REFERENCES group_access_list (ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE live_account_details
	ADD FOREIGN KEY (accountID)
	REFERENCES live_account (ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE user_account_access
	ADD FOREIGN KEY (linkedMenuListID)
	REFERENCES menu_list (ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE user_account_access
	ADD FOREIGN KEY (linkedRoleListID)
	REFERENCES role_list (ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE group_access
	ADD FOREIGN KEY (linkedGroupID)
	REFERENCES system_group (ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



