/*
DROP TABLE IF EXISTS `demo_school`;

CREATE TABLE `demo_school` (
  `id` varchar(32) NOT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `school_desc` varchar(200) DEFAULT NULL,
  `school_code` varchar(200) DEFAULT NULL,
   del_flag             smallint comment '删除状态',
   createuser           varchar(100) comment '创建人',
   createtime           datetime comment '创建时间',
   lastchangeuser       varchar(100) comment '最后修改人',
   lastchangetime       datetime comment '最后修改时间',
   memo                 varchar(200) comment '备注说明',
   datastatus           smallint comment '数据状态',
   f1                   varchar(200) comment '备用字段1',
   f2                   varchar(200) comment '备用字段2',
   f3                   varchar(200) comment '备用字段3',
   f4                   varchar(200) comment '备用字段4',
   f5                   varchar(200) comment '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

*/
/*Data for the table `demo_classroom` *//*



DROP TABLE IF EXISTS `demo_classroom`;

CREATE TABLE `demo_classroom` (
  `id` varchar(32) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `grade` varchar(200) DEFAULT NULL,
   schoolid            varchar(32) comment '学校ID', 
   del_flag             smallint comment '删除状态',
   createuser           varchar(100) comment '创建人',
   createtime           datetime comment '创建时间',
   lastchangeuser       varchar(100) comment '最后修改人',
   lastchangetime       datetime comment '最后修改时间',
   memo                 varchar(200) comment '备注说明',
   datastatus           smallint comment '数据状态',
   f1                   varchar(200) comment '备用字段1',
   f2                   varchar(200) comment '备用字段2',
   f3                   varchar(200) comment '备用字段3',
   f4                   varchar(200) comment '备用字段4',
   f5                   varchar(200) comment '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

*/
/*Data for the table `demo_classroom` *//*




*/
/*Table structure for table `demo_student` *//*


DROP TABLE IF EXISTS `demo_student`;

CREATE TABLE `demo_student` (
  `id` varchar(32) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `cid` varchar(32) DEFAULT NULL,
   del_flag             smallint comment '删除状态',
   createuser           varchar(100) comment '创建人',
   createtime           datetime comment '创建时间',
   lastchangeuser       varchar(100) comment '最后修改人',
   lastchangetime       datetime comment '最后修改时间',
   memo                 varchar(200) comment '备注说明',
   datastatus           smallint comment '数据状态',
   f1                   varchar(200) comment '备用字段1',
   f2                   varchar(200) comment '备用字段2',
   f3                   varchar(200) comment '备用字段3',
   f4                   varchar(200) comment '备用字段4',
   f5                   varchar(200) comment '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

*/
/*Data for the table `demo_student` *//*



*/
/*
课程信息表
*//*

CREATE TABLE `demo_course` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `course_code` varchar(32) NOT NULL COMMENT '课程编号',
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `course_desc` varchar(1000) DEFAULT NULL COMMENT '课程介绍',
  del_flag             smallint comment '删除状态',
   createuser           varchar(100) comment '创建人',
   createtime           datetime comment '创建时间',
   lastchangeuser       varchar(100) comment '最后修改人',
   lastchangetime       datetime comment '最后修改时间',
   memo                 varchar(200) comment '备注说明',
   datastatus           smallint comment '数据状态',
   f1                   varchar(200) comment '备用字段1',
   f2                   varchar(200) comment '备用字段2',
   f3                   varchar(200) comment '备用字段3',
   f4                   varchar(200) comment '备用字段4',
   f5                   varchar(200) comment '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
*/
/*
班级课程关联表
*//*

CREATE TABLE `demo_class_course` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `class_id` varchar(32) NOT NULL COMMENT '班级ID',
  `course_id` varchar(255) DEFAULT NULL COMMENT '课程ID',
  del_flag             smallint comment '删除状态',
   createuser           varchar(100) comment '创建人',
   createtime           datetime comment '创建时间',
   lastchangeuser       varchar(100) comment '最后修改人',
   lastchangetime       datetime comment '最后修改时间',
   memo                 varchar(200) comment '备注说明',
   datastatus           smallint comment '数据状态',
   f1                   varchar(200) comment '备用字段1',
   f2                   varchar(200) comment '备用字段2',
   f3                   varchar(200) comment '备用字段3',
   f4                   varchar(200) comment '备用字段4',
   f5                   varchar(200) comment '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
*/
/*
学生成绩表
*//*

CREATE TABLE `demo_student_score` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `stu_id` varchar(32) NOT NULL COMMENT '学生ID',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `score` int(11) DEFAULT NULL COMMENT '分数',
   del_flag             smallint comment '删除状态',
   createuser           varchar(100) comment '创建人',
   createtime           datetime comment '创建时间',
   lastchangeuser       varchar(100) comment '最后修改人',
   lastchangetime       datetime comment '最后修改时间',
   memo                 varchar(200) comment '备注说明',
   datastatus           smallint comment '数据状态',
   f1                   varchar(200) comment '备用字段1',
   f2                   varchar(200) comment '备用字段2',
   f3                   varchar(200) comment '备用字段3',
   f4                   varchar(200) comment '备用字段4',
   f5                   varchar(200) comment '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
*/
/*
SQLyog Enterprise - MySQL GUI v8.14
MySQL - 5.5.36 : Database - xkes
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


/*Table structure for table `persistent_logins` */
/*
DROP TABLE IF EXISTS `persistent_logins`;

CREATE TABLE `persistent_logins` (
  `username` VARCHAR(64) DEFAULT NULL COMMENT '用户名',
  `series` VARCHAR(64) DEFAULT NULL,
  `token` VARCHAR(64) DEFAULT NULL COMMENT '令牌',
  `last_used` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后使用时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='记录用户登录的令牌，由安全框架自动写入';
*//*Table structure for table `xk_app_application` *//*

DROP TABLE IF EXISTS `xk_app_application`;

CREATE TABLE `xk_app_application` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `appcode` VARCHAR(32) DEFAULT NULL COMMENT '应用程序编号',
  `appname` VARCHAR(50) DEFAULT NULL COMMENT '应用程序名称',
  `apptype` VARCHAR(255) DEFAULT NULL COMMENT '应用程序类型',
  `isopen` VARCHAR(1) DEFAULT NULL COMMENT '是否开通',
  `opendate` DATE DEFAULT NULL COMMENT '开通日期',
  `url` VARCHAR(256) DEFAULT NULL COMMENT '访问路径',
  `appdesc` VARCHAR(512) DEFAULT NULL COMMENT '应用程序描述',
  `maintenance` VARCHAR(32) DEFAULT NULL COMMENT '维护人',
  `manarole` VARCHAR(64) DEFAULT NULL COMMENT '维护角色',
  `demo` VARCHAR(512) DEFAULT NULL COMMENT '示例说明',
  `iniwp` VARCHAR(1) DEFAULT NULL,
  `intaskcenter` VARCHAR(1) DEFAULT NULL,
  `ipaddr` VARCHAR(50) DEFAULT NULL COMMENT '应用程序IP',
  `ipport` VARCHAR(10) DEFAULT NULL COMMENT '应用程序端口',
  `tenant_id` VARCHAR(64) NOT NULL COMMENT '租户ID',
  `protocol_type` VARCHAR(64) DEFAULT NULL COMMENT '协议类型',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='系统应用表';

*//*Table structure for table `xk_app_funcgroup` *//*

DROP TABLE IF EXISTS `xk_app_funcgroup`;

CREATE TABLE `xk_app_funcgroup` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `groupno` DECIMAL(10,0) NOT NULL COMMENT '分组数字ID，根据规则自动生成',
  `funcgroupname` VARCHAR(40) DEFAULT NULL COMMENT '功能分组名称',
  `grouplevel` INT(11) DEFAULT '0' COMMENT '分组等级',
  `funcgroupseq` VARCHAR(256) DEFAULT NULL COMMENT '分组序列号 用于显示层级关系 如 .1.1.2',
  `isleaf` VARCHAR(1) DEFAULT NULL COMMENT '是否子节点',
  `subcount` DECIMAL(10,0) DEFAULT '0' COMMENT '子节点数',
  `app_id` VARCHAR(64) DEFAULT NULL COMMENT '应用ID',
  `tenant_id` VARCHAR(64) NOT NULL COMMENT '租户ID',
  `parentid` VARCHAR(64) DEFAULT NULL COMMENT '父ID',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='应用功能分组表';

*//*Table structure for table `xk_app_function` *//*

DROP TABLE IF EXISTS `xk_app_function`;

CREATE TABLE `xk_app_function` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `funccode` VARCHAR(255) NOT NULL COMMENT '功能编号',
  `funcname` VARCHAR(128) NOT NULL COMMENT '功能名称',
  `funcdesc` VARCHAR(512) DEFAULT NULL COMMENT '功能描述',
  `function_url` VARCHAR(256) DEFAULT NULL COMMENT '访问地址',
  `parainfo` VARCHAR(256) DEFAULT NULL COMMENT '参数信息',
  `ischeck` VARCHAR(1) DEFAULT NULL COMMENT '是否检查',
  `functype` VARCHAR(255) DEFAULT '1' COMMENT '功能类型',
  `elementid` VARCHAR(100) DEFAULT NULL COMMENT '元素ID',
  `ismenu` VARCHAR(1) DEFAULT NULL COMMENT '是否菜单',
  `app_id` VARCHAR(64) DEFAULT NULL COMMENT '应用ID',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `funcgroupid` VARCHAR(32) NOT NULL COMMENT '功能分组ID',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`),
  KEY `FK_FK_FUNGROUP_ID_FUN` (`funcgroupid`),
  CONSTRAINT `FK_FK_FUNGROUP_ID_FUN` FOREIGN KEY (`funcgroupid`) REFERENCES `xk_app_funcgroup` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='业务功能表';

*//*Table structure for table `xk_app_menu` *//*

DROP TABLE IF EXISTS `xk_app_menu`;

CREATE TABLE `xk_app_menu` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `menuno` DECIMAL(10,0) DEFAULT NULL,
  `menuname` VARCHAR(40) NOT NULL COMMENT '菜单名称',
  `menulabel` VARCHAR(40) DEFAULT NULL COMMENT '菜单显示名',
  `menucode` VARCHAR(40) NOT NULL COMMENT '菜单编号',
  `isleaf` VARCHAR(1) DEFAULT NULL COMMENT '是否子节点',
  `parameter` VARCHAR(256) DEFAULT NULL COMMENT '菜单参数',
  `uientry` VARCHAR(256) DEFAULT NULL COMMENT '界面输入',
  `menulevel` SMALLINT(6) DEFAULT NULL COMMENT '菜单等级',
  `rootid` VARCHAR(40) DEFAULT NULL COMMENT '根节点ID',
  `displayorder` SMALLINT(6) DEFAULT NULL COMMENT '显示顺序',
  `imagepath` VARCHAR(100) DEFAULT NULL COMMENT '图标路径',
  `expandpath` VARCHAR(100) DEFAULT NULL COMMENT '拓展路径',
  `menuseq` VARCHAR(256) DEFAULT NULL COMMENT '菜单排序，用于树状层级显示 如.1.1.2',
  `openmode` VARCHAR(255) DEFAULT NULL COMMENT '开放模式',
  `subcount` VARCHAR(32) DEFAULT NULL COMMENT '子节点数',
  `funid` VARCHAR(32) DEFAULT NULL,
  `app_id` VARCHAR(32) DEFAULT NULL COMMENT '应用ID',
  `parentid` VARCHAR(40) DEFAULT NULL COMMENT '父ID',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `system_flag` VARCHAR(100) DEFAULT NULL COMMENT '系统标识 用于区分移动端、PC端、其他等',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`),
  KEY `FK_FK_FUNCATION_ID_MENU` (`funid`),
  CONSTRAINT `FK_FK_FUNCATION_ID_MENU` FOREIGN KEY (`funid`) REFERENCES `xk_app_function` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='菜单表';

*//*Table structure for table `xk_cap_partyauth` *//*

DROP TABLE IF EXISTS `xk_cap_partyauth`;

CREATE TABLE `xk_cap_partyauth` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `role_type` VARCHAR(64) NOT NULL COMMENT '角色类型',
  `party_id` VARCHAR(64) NOT NULL COMMENT '参与者ID',
  `party_type` VARCHAR(64) NOT NULL COMMENT '参与者类型',
  `role_id` VARCHAR(32) NOT NULL COMMENT '角色ID',
  `tenant_id` VARCHAR(64) NOT NULL COMMENT '租户ID',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`),
  KEY `FK_FK_ROLE_ID_PARTYAUTH` (`role_id`),
  CONSTRAINT `FK_FK_ROLE_ID_PARTYAUTH` FOREIGN KEY (`role_id`) REFERENCES `xk_cap_role` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='参与者认证信息表';

*//*Table structure for table `xk_cap_resauth` *//*

DROP TABLE IF EXISTS `xk_cap_resauth`;

CREATE TABLE `xk_cap_resauth` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `party_id` VARCHAR(64) NOT NULL COMMENT '参与者ID',
  `party_type` VARCHAR(64) NOT NULL COMMENT '参与者类型',
  `res_id` VARCHAR(255) NOT NULL COMMENT '资源ID',
  `res_type` VARCHAR(64) NOT NULL COMMENT '资源类型',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `res_state` VARCHAR(512) DEFAULT NULL COMMENT '资源状态',
  `party_scope` VARCHAR(1) DEFAULT '0' COMMENT '成员作用域',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='访问资源认证表';

*//*Table structure for table `xk_cap_role` *//*

DROP TABLE IF EXISTS `xk_cap_role`;

CREATE TABLE `xk_cap_role` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `role_code` VARCHAR(64) DEFAULT NULL COMMENT '角色编号',
  `role_name` VARCHAR(64) DEFAULT NULL COMMENT '角色名称',
  `role_desc` VARCHAR(255) DEFAULT NULL COMMENT '角色描述',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(64) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后更新人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后更新时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='系统角色表';

*//*Table structure for table `xk_cap_user` *//*

DROP TABLE IF EXISTS `xk_cap_user`;

CREATE TABLE `xk_cap_user` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `user_id` VARCHAR(64) NOT NULL COMMENT '用户名，用于登录',
  `password` VARCHAR(100) NOT NULL COMMENT '密码',
  `invaldate` DATE DEFAULT NULL COMMENT '密码失效日期',
  `user_name` VARCHAR(64) DEFAULT NULL COMMENT '用户名',
  `status` SMALLINT(6) DEFAULT NULL COMMENT '状态',
  `authmode` VARCHAR(255) DEFAULT NULL COMMENT '授权模式',
  `unlocktime` DATETIME DEFAULT NULL COMMENT '解锁时间',
  `menutype` VARCHAR(255) DEFAULT NULL COMMENT '菜单类型',
  `lastlogin` DATETIME DEFAULT NULL COMMENT '最后登录时间',
  `errcount` INT(11) DEFAULT NULL COMMENT '登录错误次数',
  `startdate` DATE DEFAULT NULL COMMENT '生效日期',
  `enddate` DATE DEFAULT NULL COMMENT '失效日期',
  `validtime` VARCHAR(255) DEFAULT NULL COMMENT '验证时间',
  `maccode` VARCHAR(128) DEFAULT NULL COMMENT '网卡编号',
  `ipaddress` VARCHAR(128) DEFAULT NULL COMMENT 'IP地址',
  `email` VARCHAR(255) DEFAULT NULL COMMENT '电子邮箱',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='用于登录管理系统';

*//*Table structure for table `xk_company_info` *//*

DROP TABLE IF EXISTS `xk_company_info`;

CREATE TABLE `xk_company_info` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键id',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户id',
  `company_name` VARCHAR(200) DEFAULT NULL COMMENT '公司名称',
  `sys_name` VARCHAR(200) DEFAULT NULL COMMENT '系统名称',
  `logo` VARCHAR(200) DEFAULT NULL COMMENT '图标',
  `tellphone` VARCHAR(64) DEFAULT NULL COMMENT '电话',
  `address` VARCHAR(500) DEFAULT NULL COMMENT '地址',
  `company_intro` VARCHAR(2000) DEFAULT NULL COMMENT '公司简介',
  `skinid` VARCHAR(64) DEFAULT NULL COMMENT '皮肤id',
  `email` VARCHAR(100) DEFAULT NULL COMMENT '邮箱地址',
  `del_flag` INT(11) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATE DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATE DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` INT(11) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

*//*Table structure for table `xk_dict_entry` *//*

DROP TABLE IF EXISTS `xk_dict_entry`;

CREATE TABLE `xk_dict_entry` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `dicttypeid` VARCHAR(32) DEFAULT NULL COMMENT '字典类型ID',
  `dictcode` VARCHAR(200) DEFAULT NULL COMMENT '字典编号',
  `dictname` VARCHAR(200) DEFAULT NULL COMMENT '字典名称',
  `dictvalue` VARCHAR(200) DEFAULT NULL COMMENT '字典值(暂未使用)',
  `status` SMALLINT(6) DEFAULT NULL COMMENT '字典状态',
  `sortno` SMALLINT(6) DEFAULT NULL COMMENT '排序号',
  `rank` SMALLINT(6) DEFAULT NULL COMMENT '排名',
  `parentid` VARCHAR(32) DEFAULT NULL COMMENT '父ID',
  `seqno` VARCHAR(200) DEFAULT NULL COMMENT '序列号',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态',
  `createuser` VARCHAR(200) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(200) DEFAULT NULL COMMENT '修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`),
  KEY `FK_FK_DICT_TYPE_ID` (`dicttypeid`),
  CONSTRAINT `FK_FK_DICT_TYPE_ID` FOREIGN KEY (`dicttypeid`) REFERENCES `xk_dict_type` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='字典表';

*//*Table structure for table `xk_dict_type` *//*

DROP TABLE IF EXISTS `xk_dict_type`;

CREATE TABLE `xk_dict_type` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `dicttypecode` VARCHAR(100) DEFAULT NULL COMMENT '字典类型编号',
  `dicttypename` VARCHAR(200) DEFAULT NULL COMMENT '字典类型名称',
  `rank` SMALLINT(6) DEFAULT NULL COMMENT '排名',
  `parentid` VARCHAR(32) DEFAULT NULL COMMENT '父ID',
  `seqno` VARCHAR(200) DEFAULT NULL COMMENT '排序号',
  `del_flag` SMALLINT(6) DEFAULT NULL COMMENT '删除状态 0=正常 1=删除',
  `datastatus` SMALLINT(6) DEFAULT NULL COMMENT '数据状态',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `createuser` VARCHAR(200) DEFAULT NULL COMMENT '创建人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '修改时间',
  `lastchangeuser` VARCHAR(200) DEFAULT NULL COMMENT '修改人',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  `appid` VARCHAR(32) DEFAULT NULL COMMENT '应用ID',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='字典类型表';

*//*Table structure for table `xk_org_employee` *//*

DROP TABLE IF EXISTS `xk_org_employee`;

CREATE TABLE `xk_org_employee` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `empcode` VARCHAR(32) DEFAULT NULL COMMENT '员工编号',
  `operatorid` VARCHAR(32) DEFAULT NULL COMMENT 'cap_user表的主键',
  `userid` VARCHAR(32) DEFAULT NULL COMMENT '用户ID',
  `empname` VARCHAR(50) DEFAULT NULL COMMENT '员工姓名',
  `realname` VARCHAR(50) DEFAULT NULL COMMENT '真实姓名/英文名',
  `gender` VARCHAR(255) DEFAULT NULL COMMENT '性别',
  `birthdate` DATE DEFAULT NULL COMMENT '生日',
  `position_id` VARCHAR(32) DEFAULT NULL COMMENT '职位',
  `empstatus` SMALLINT(6) DEFAULT NULL,
  `cardtype` VARCHAR(255) DEFAULT NULL COMMENT '证件类别',
  `cardno` VARCHAR(20) DEFAULT NULL COMMENT '证件编号',
  `indate` DATE DEFAULT NULL COMMENT '入职日期',
  `outdate` DATE DEFAULT NULL COMMENT '离职日期',
  `otel` VARCHAR(30) DEFAULT NULL COMMENT '办公室电话',
  `oaddress` VARCHAR(255) DEFAULT NULL COMMENT '办公室地址',
  `ozipcode` VARCHAR(10) DEFAULT NULL COMMENT '办公室邮编',
  `oemail` VARCHAR(128) DEFAULT NULL COMMENT '办公室邮箱',
  `faxno` VARCHAR(14) DEFAULT NULL COMMENT '传真号码',
  `mobileno` VARCHAR(14) DEFAULT NULL COMMENT '手机号码',
  `qq` VARCHAR(16) DEFAULT NULL COMMENT 'QQ号码',
  `htel` VARCHAR(12) DEFAULT NULL COMMENT '家庭电话',
  `haddress` VARCHAR(128) DEFAULT NULL COMMENT '家庭住址',
  `hzipcode` VARCHAR(10) DEFAULT NULL COMMENT '家庭邮编',
  `pemail` VARCHAR(128) DEFAULT NULL COMMENT '个人邮箱',
  `party` VARCHAR(255) DEFAULT NULL COMMENT '政治面貌',
  `school` VARCHAR(100) DEFAULT NULL COMMENT '毕业院校',
  `degree` VARCHAR(255) DEFAULT NULL COMMENT '学历',
  `marjor` VARCHAR(200) DEFAULT NULL COMMENT '专业',
  `specialty` VARCHAR(1024) DEFAULT NULL COMMENT '专长/特长',
  `manager` VARCHAR(32) DEFAULT NULL COMMENT '直接主管',
  `manage_roles` VARCHAR(1024) DEFAULT NULL COMMENT '可管理角色',
  `org_id_list` VARCHAR(128) DEFAULT NULL COMMENT '可管理机构',
  `workd_exp` VARCHAR(512) DEFAULT NULL COMMENT '工作经验/描述',
  `regdate` DATE DEFAULT NULL COMMENT '注册日期',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `app_id` VARCHAR(64) DEFAULT NULL COMMENT '应用ID',
  `weibo` VARCHAR(255) DEFAULT NULL COMMENT '微博',
  `orgid` VARCHAR(32) DEFAULT NULL COMMENT '机构ID',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='员工信息表';

*//*Table structure for table `xk_org_emporg` *//*

DROP TABLE IF EXISTS `xk_org_emporg`;

CREATE TABLE `xk_org_emporg` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `orgid` VARCHAR(32) NOT NULL COMMENT '机构编号',
  `empid` VARCHAR(32) NOT NULL COMMENT '员工编号',
  `ismain` VARCHAR(1) DEFAULT NULL COMMENT '是否主机构',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `app_id` VARCHAR(64) DEFAULT NULL COMMENT '应用ID',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`),
  KEY `FK_FK_ORG_ID_ORGUSER` (`orgid`),
  KEY `FK_FK_USER_ID_ORGUSER` (`empid`),
  CONSTRAINT `FK_FK_ORG_ID_ORGUSER` FOREIGN KEY (`orgid`) REFERENCES `xk_org_organization` (`id`),
  CONSTRAINT `FK_FK_USER_ID_ORGUSER` FOREIGN KEY (`empid`) REFERENCES `xk_org_employee` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='机构员工关联表';

*//*Table structure for table `xk_org_empposition` *//*

DROP TABLE IF EXISTS `xk_org_empposition`;

CREATE TABLE `xk_org_empposition` (
  `id` VARCHAR(32) NOT NULL,
  `empid` VARCHAR(32) NOT NULL COMMENT '员工ID',
  `posid` VARCHAR(32) NOT NULL,
  `ismain` VARCHAR(1) DEFAULT NULL COMMENT '是否主岗位',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `app_id` VARCHAR(64) DEFAULT NULL COMMENT '应用ID',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`),
  KEY `FK_FK_EMP_ID_EMPPOSITION` (`empid`),
  KEY `FK_FK_POSI_ID_POSIEMP` (`posid`),
  CONSTRAINT `FK_FK_EMP_ID_EMPPOSITION` FOREIGN KEY (`empid`) REFERENCES `xk_org_employee` (`id`),
  CONSTRAINT `FK_FK_POSI_ID_POSIEMP` FOREIGN KEY (`posid`) REFERENCES `xk_org_posiotion` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='员工岗位关联表';

*//*Table structure for table `xk_org_group` *//*

DROP TABLE IF EXISTS `xk_org_group`;

CREATE TABLE `xk_org_group` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `groupno` DECIMAL(10,0) NOT NULL,
  `orgid` VARCHAR(32) DEFAULT NULL COMMENT '机构ID',
  `grouplevel` DECIMAL(8,0) DEFAULT NULL COMMENT '分组级别',
  `groupname` VARCHAR(50) DEFAULT NULL COMMENT '分组名称',
  `groupdesc` VARCHAR(512) DEFAULT NULL COMMENT '分组描述',
  `grouptype` VARCHAR(255) DEFAULT NULL COMMENT '分组类别',
  `groupseq` VARCHAR(256) DEFAULT NULL COMMENT '分组序号',
  `startdate` DATE DEFAULT NULL COMMENT '生效日期',
  `enddate` DATE DEFAULT NULL COMMENT '失效日期',
  `groupstatus` SMALLINT(6) DEFAULT NULL,
  `manger` VARCHAR(32) DEFAULT NULL COMMENT '管理人',
  `isleaf` VARCHAR(1) DEFAULT NULL COMMENT '是否子节点',
  `subcount` DECIMAL(10,0) DEFAULT NULL COMMENT '子节点数',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `app_id` VARCHAR(64) DEFAULT NULL COMMENT '应用系统ID',
  `parentgroupid` VARCHAR(32) DEFAULT NULL COMMENT '父分组ID',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='机构分组表';

*//*Table structure for table `xk_org_organization` *//*

DROP TABLE IF EXISTS `xk_org_organization`;

CREATE TABLE `xk_org_organization` (
  `id` VARCHAR(32) NOT NULL COMMENT '主键ID',
  `orgno` DECIMAL(10,0) DEFAULT NULL,
  `orgcode` VARCHAR(32) NOT NULL COMMENT '机构代码',
  `orgname` VARCHAR(64) NOT NULL COMMENT '机构名称',
  `orglevel` DECIMAL(2,0) DEFAULT '1' COMMENT '机构级别',
  `orgdegree` VARCHAR(255) DEFAULT NULL COMMENT '机构等级',
  `orgseq` VARCHAR(512) DEFAULT NULL COMMENT '序列号 用于显示层级关系，如 1.1.1.2',
  `orgtype` VARCHAR(12) DEFAULT NULL COMMENT '机构类型',
  `orgaddr` VARCHAR(256) DEFAULT NULL COMMENT '机构地址',
  `zipcode` VARCHAR(10) DEFAULT NULL COMMENT '邮编',
  `manaposition` VARCHAR(32) DEFAULT NULL COMMENT '机构主管岗位',
  `managerid` VARCHAR(32) DEFAULT NULL COMMENT '机构主管ID',
  `orgmanger` VARCHAR(128) DEFAULT NULL COMMENT '机构主管人',
  `linkman` VARCHAR(30) DEFAULT NULL COMMENT '联系人',
  `linktel` VARCHAR(20) DEFAULT NULL COMMENT '联系电话',
  `email` VARCHAR(128) DEFAULT NULL COMMENT '电子邮箱',
  `weburl` VARCHAR(512) DEFAULT NULL COMMENT '网站地址',
  `startdate` DATE DEFAULT NULL COMMENT '生效日期',
  `enddate` DATE DEFAULT NULL COMMENT '失效日期',
  `status` SMALLINT(6) DEFAULT NULL,
  `area` VARCHAR(32) DEFAULT NULL COMMENT '所属地域',
  `sortno` INT(11) DEFAULT NULL COMMENT '排列顺序',
  `app_id` VARCHAR(64) DEFAULT NULL COMMENT '应用ID',
  `parentorgid` VARCHAR(32) DEFAULT NULL COMMENT '父ID',
  `isleaf` VARCHAR(1) DEFAULT NULL COMMENT '是否子节点',
  `subcount` DECIMAL(10,0) DEFAULT NULL COMMENT '子节点个数',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='组织机构表';

*//*Table structure for table `xk_org_posiotion` *//*

DROP TABLE IF EXISTS `xk_org_posiotion`;

CREATE TABLE `xk_org_posiotion` (
  `id` VARCHAR(32) NOT NULL,
  `posino` DECIMAL(10,0) NOT NULL COMMENT '岗位数字ID',
  `posicode` VARCHAR(20) NOT NULL COMMENT '岗位编号',
  `posiname` VARCHAR(128) NOT NULL COMMENT '岗位名称',
  `posilevel` DECIMAL(2,0) DEFAULT NULL COMMENT '岗位级别',
  `posiotionseq` VARCHAR(512) NOT NULL COMMENT '岗位序列号,用于显示层级关系，如 1.1.1.2',
  `positype` VARCHAR(255) DEFAULT NULL COMMENT '岗位类型',
  `startdate` DATE DEFAULT NULL COMMENT '生效时间',
  `enddate` DATE DEFAULT NULL COMMENT '失效时间',
  `status` SMALLINT(6) DEFAULT NULL,
  `isleaf` VARCHAR(1) DEFAULT NULL COMMENT '是否叶子',
  `subcount` DECIMAL(10,0) DEFAULT NULL COMMENT '子节点个数',
  `tenant_id` VARCHAR(64) DEFAULT NULL COMMENT '租户ID',
  `app_id` VARCHAR(64) DEFAULT NULL COMMENT '应用ID',
  `dutyid` VARCHAR(32) DEFAULT NULL COMMENT '职位编号',
  `orgid` VARCHAR(32) NOT NULL,
  `parentid` VARCHAR(32) DEFAULT NULL COMMENT '父ID',
  `del_flag` SMALLINT(6) DEFAULT '0' COMMENT '删除状态 0=正常 1=删除',
  `createuser` VARCHAR(100) DEFAULT NULL COMMENT '创建人',
  `createtime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `lastchangeuser` VARCHAR(100) DEFAULT NULL COMMENT '最后修改人',
  `lastchangetime` DATETIME DEFAULT NULL COMMENT '最后修改时间',
  `datastatus` SMALLINT(6) DEFAULT '0' COMMENT '数据状态 0=正常 1=冻结 2=授权',
  `memo` VARCHAR(200) DEFAULT NULL COMMENT '备注说明',
  `f1` VARCHAR(200) DEFAULT NULL COMMENT '备用字段1',
  `f2` VARCHAR(200) DEFAULT NULL COMMENT '备用字段2',
  `f3` VARCHAR(200) DEFAULT NULL COMMENT '备用字段3',
  `f4` VARCHAR(200) DEFAULT NULL COMMENT '备用字段4',
  `f5` VARCHAR(200) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`id`),
  KEY `FK_FK_ORG_ID_ORGPOSI` (`orgid`),
  CONSTRAINT `FK_FK_ORG_ID_ORGPOSI` FOREIGN KEY (`orgid`) REFERENCES `xk_org_organization` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='机构岗位表';*/

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
