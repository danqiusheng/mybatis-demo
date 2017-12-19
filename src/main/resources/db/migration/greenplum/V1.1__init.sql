/*

Greenplum 4.3 : Database - xkes
*********************************************************************
*/


/*Table structure for table persistent_logins */

DROP TABLE IF EXISTS persistent_logins;

CREATE TABLE persistent_logins (
  username VARCHAR(64) DEFAULT NULL ,
  series VARCHAR(64) DEFAULT NULL,
  token VARCHAR(64) DEFAULT NULL ,
  last_used TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
  --ON UPDATE CURRENT_TIMESTAMP
) ;
/*Table structure for table xk_app_application */

DROP TABLE IF EXISTS xk_app_application;

CREATE TABLE xk_app_application (
  id VARCHAR(32) NOT NULL,
  appcode VARCHAR(32) DEFAULT NULL ,
  appname VARCHAR(50) DEFAULT NULL ,
  apptype VARCHAR(255) DEFAULT NULL ,
  isopen VARCHAR(1) DEFAULT NULL ,
  opendate DATE DEFAULT NULL ,
  url VARCHAR(256) DEFAULT NULL,
  appdesc VARCHAR(512) DEFAULT NULL ,
  maintenance VARCHAR(32) DEFAULT NULL ,
  manarole VARCHAR(64) DEFAULT NULL ,
  demo VARCHAR(512) DEFAULT NULL ,
  iniwp VARCHAR(1) DEFAULT NULL,
  intaskcenter VARCHAR(1) DEFAULT NULL,
  ipaddr VARCHAR(50) DEFAULT NULL ,
  ipport VARCHAR(10) DEFAULT NULL ,
  tenant_id VARCHAR(64) NOT NULL,
  protocol_type VARCHAR(64) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0'  ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_app_funcgroup */

DROP TABLE IF EXISTS xk_app_funcgroup;

CREATE TABLE xk_app_funcgroup (
  id VARCHAR(32) NOT NULL ,
  groupno DECIMAL(10,0) NOT NULL ,
  funcgroupname VARCHAR(40) DEFAULT NULL ,
  grouplevel INT DEFAULT '0' ,
  funcgroupseq VARCHAR(256) DEFAULT NULL ,
  isleaf VARCHAR(1) DEFAULT NULL ,
  subcount DECIMAL(10,0) DEFAULT '0' ,
  app_id VARCHAR(64) DEFAULT NULL ,
  tenant_id VARCHAR(64) NOT NULL ,
  parentid VARCHAR(64) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0' ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0' ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_app_function */

DROP TABLE IF EXISTS xk_app_function;

CREATE TABLE xk_app_function (
  id VARCHAR(32) NOT NULL ,
  funccode VARCHAR(255) NOT NULL ,
  funcname VARCHAR(128) NOT NULL ,
  funcdesc VARCHAR(512) DEFAULT NULL ,
  function_url VARCHAR(256) DEFAULT NULL ,
  parainfo VARCHAR(256) DEFAULT NULL ,
  ischeck VARCHAR(1) DEFAULT NULL ,
  functype VARCHAR(255) DEFAULT '1' ,
  elementid VARCHAR(100) DEFAULT NULL ,
  ismenu VARCHAR(1) DEFAULT NULL ,
  app_id VARCHAR(64) DEFAULT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  funcgroupid VARCHAR(32) NOT NULL ,
  del_flag SMALLINT DEFAULT '0',
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0' ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_app_menu */

DROP TABLE IF EXISTS xk_app_menu;

CREATE TABLE xk_app_menu (
  id VARCHAR(32) NOT NULL ,
  menuno DECIMAL(10,0) DEFAULT NULL,
  menuname VARCHAR(40) NOT NULL ,
  menulabel VARCHAR(40) DEFAULT NULL ,
  menucode VARCHAR(40) NOT NULL ,
  isleaf VARCHAR(1) DEFAULT NULL ,
  parameter VARCHAR(256) DEFAULT NULL ,
  uientry VARCHAR(256) DEFAULT NULL ,
  menulevel SMALLINT DEFAULT NULL ,
  rootid VARCHAR(40) DEFAULT NULL ,
  displayorder SMALLINT DEFAULT NULL ,
  imagepath VARCHAR(100) DEFAULT NULL ,
  expandpath VARCHAR(100) DEFAULT NULL ,
  menuseq VARCHAR(256) DEFAULT NULL ,
  openmode VARCHAR(255) DEFAULT NULL ,
  subcount VARCHAR(32) DEFAULT NULL ,
  funid VARCHAR(32) DEFAULT NULL,
  app_id VARCHAR(32) DEFAULT NULL ,
  parentid VARCHAR(40) DEFAULT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  system_flag VARCHAR(100) DEFAULT NULL  ,
  del_flag SMALLINT DEFAULT '0' ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
);

/*Table structure for table xk_cap_partyauth */

DROP TABLE IF EXISTS xk_cap_partyauth;

CREATE TABLE xk_cap_partyauth (
  id VARCHAR(32) NOT NULL ,
  role_type VARCHAR(64) NOT NULL ,
  party_id VARCHAR(64) NOT NULL ,
  party_type VARCHAR(64) NOT NULL ,
  role_id VARCHAR(32) NOT NULL ,
  tenant_id VARCHAR(64) NOT NULL ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0' ,
  del_flag SMALLINT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)

) ;

/*Table structure for table xk_cap_resauth */

DROP TABLE IF EXISTS xk_cap_resauth;

CREATE TABLE xk_cap_resauth (
  id VARCHAR(32) NOT NULL ,
  party_id VARCHAR(64) NOT NULL ,
  party_type VARCHAR(64) NOT NULL ,
  res_id VARCHAR(255) NOT NULL ,
  res_type VARCHAR(64) NOT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  res_state VARCHAR(512) DEFAULT NULL ,
  party_scope VARCHAR(1) DEFAULT '0' ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0' ,
  datastatus SMALLINT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_cap_role */

DROP TABLE IF EXISTS xk_cap_role;

CREATE TABLE xk_cap_role (
  id VARCHAR(32) NOT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  role_code VARCHAR(64) DEFAULT NULL ,
  role_name VARCHAR(64) DEFAULT NULL ,
  role_desc VARCHAR(255) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0'  ,
  createuser VARCHAR(64) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0' ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_cap_user */

DROP TABLE IF EXISTS xk_cap_user;

CREATE TABLE xk_cap_user (
  id VARCHAR(32) NOT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  user_id VARCHAR(64) NOT NULL ,
  password VARCHAR(100) NOT NULL ,
  invaldate DATE DEFAULT NULL ,
  user_name VARCHAR(64) DEFAULT NULL ,
  status SMALLINT DEFAULT NULL ,
  authmode VARCHAR(255) DEFAULT NULL ,
  unlocktime timestamp DEFAULT NULL ,
  menutype VARCHAR(255) DEFAULT NULL ,
  lastlogin timestamp DEFAULT NULL ,
  errcount INT DEFAULT NULL ,
  startdate DATE DEFAULT NULL ,
  enddate DATE DEFAULT NULL ,
  validtime VARCHAR(255) DEFAULT NULL ,
  maccode VARCHAR(128) DEFAULT NULL ,
  ipaddress VARCHAR(128) DEFAULT NULL ,
  email VARCHAR(255) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0' ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0' ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_company_info */

DROP TABLE IF EXISTS xk_company_info;

CREATE TABLE xk_company_info (
  id VARCHAR(32) NOT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  company_name VARCHAR(200) DEFAULT NULL ,
  sys_name VARCHAR(200) DEFAULT NULL ,
  logo VARCHAR(200) DEFAULT NULL ,
  tellphone VARCHAR(64) DEFAULT NULL ,
  address VARCHAR(500) DEFAULT NULL ,
  company_intro VARCHAR(2000) DEFAULT NULL ,
  skinid VARCHAR(64) DEFAULT NULL ,
  email VARCHAR(100) DEFAULT NULL ,
  del_flag INT DEFAULT '0'  ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime DATE DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime DATE DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus INT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_dict_entry */

DROP TABLE IF EXISTS xk_dict_entry;

CREATE TABLE xk_dict_entry (
  id VARCHAR(32) NOT NULL ,
  dicttypeid VARCHAR(32) DEFAULT NULL ,
  dictcode VARCHAR(200) DEFAULT NULL ,
  dictname VARCHAR(200) DEFAULT NULL ,
  dictvalue VARCHAR(200) DEFAULT NULL ,
  status SMALLINT DEFAULT NULL ,
  sortno SMALLINT DEFAULT NULL ,
  rank SMALLINT DEFAULT NULL ,
  parentid VARCHAR(32) DEFAULT NULL ,
  seqno VARCHAR(200) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0'  ,
  datastatus SMALLINT DEFAULT '0' ,
  createuser VARCHAR(200) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(200) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)

)  ;

/*Table structure for table xk_dict_type */

DROP TABLE IF EXISTS xk_dict_type;

CREATE TABLE xk_dict_type (
  id VARCHAR(32) NOT NULL ,
  dicttypecode VARCHAR(100) DEFAULT NULL ,
  dicttypename VARCHAR(200) DEFAULT NULL ,
  rank SMALLINT DEFAULT NULL ,
  parentid VARCHAR(32) DEFAULT NULL ,
  seqno VARCHAR(200) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT NULL  ,
  datastatus SMALLINT DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  createuser VARCHAR(200) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(200) DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  appid VARCHAR(32) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_org_employee */

DROP TABLE IF EXISTS xk_org_employee;

CREATE TABLE xk_org_employee (
  id VARCHAR(32) NOT NULL ,
  empcode VARCHAR(32) DEFAULT NULL ,
  operatorid VARCHAR(32) DEFAULT NULL ,
  userid VARCHAR(32) DEFAULT NULL ,
  empname VARCHAR(50) DEFAULT NULL ,
  realname VARCHAR(50) DEFAULT NULL ,
  gender VARCHAR(255) DEFAULT NULL ,
  birthdate DATE DEFAULT NULL ,
  position_id VARCHAR(32) DEFAULT NULL ,
  empstatus SMALLINT DEFAULT NULL,
  cardtype VARCHAR(255) DEFAULT NULL ,
  cardno VARCHAR(20) DEFAULT NULL ,
  indate DATE DEFAULT NULL ,
  outdate DATE DEFAULT NULL ,
  otel VARCHAR(30) DEFAULT NULL ,
  oaddress VARCHAR(255) DEFAULT NULL,
  ozipcode VARCHAR(10) DEFAULT NULL ,
  oemail VARCHAR(128) DEFAULT NULL ,
  faxno VARCHAR(14) DEFAULT NULL ,
  mobileno VARCHAR(14) DEFAULT NULL ,
  qq VARCHAR(16) DEFAULT NULL ,
  htel VARCHAR(12) DEFAULT NULL ,
  haddress VARCHAR(128) DEFAULT NULL ,
  hzipcode VARCHAR(10) DEFAULT NULL ,
  pemail VARCHAR(128) DEFAULT NULL ,
  party VARCHAR(255) DEFAULT NULL ,
  school VARCHAR(100) DEFAULT NULL ,
  degree VARCHAR(255) DEFAULT NULL ,
  marjor VARCHAR(200) DEFAULT NULL ,
  specialty VARCHAR(1024) DEFAULT NULL ,
  manager VARCHAR(32) DEFAULT NULL ,
  manage_roles VARCHAR(1024) DEFAULT NULL,
  org_id_list VARCHAR(128) DEFAULT NULL ,
  workd_exp VARCHAR(512) DEFAULT NULL ,
  regdate DATE DEFAULT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  app_id VARCHAR(64) DEFAULT NULL ,
  weibo VARCHAR(255) DEFAULT NULL ,
  orgid VARCHAR(32) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0'  ,
  datastatus SMALLINT DEFAULT '0'  ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_org_emporg */

DROP TABLE IF EXISTS xk_org_emporg;

CREATE TABLE xk_org_emporg (
  id VARCHAR(32) NOT NULL ,
  orgid VARCHAR(32) NOT NULL ,
  empid VARCHAR(32) NOT NULL ,
  ismain VARCHAR(1) DEFAULT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  app_id VARCHAR(64) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0'  ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)

);

/*Table structure for table xk_org_empposition */

DROP TABLE IF EXISTS xk_org_empposition;

CREATE TABLE xk_org_empposition (
  id VARCHAR(32) NOT NULL,
  empid VARCHAR(32) NOT NULL ,
  posid VARCHAR(32) NOT NULL,
  ismain VARCHAR(1) DEFAULT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  app_id VARCHAR(64) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0'  ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_org_group */

DROP TABLE IF EXISTS xk_org_group;

CREATE TABLE xk_org_group (
  id VARCHAR(32) NOT NULL ,
  groupno DECIMAL(10,0) NOT NULL,
  orgid VARCHAR(32) DEFAULT NULL ,
  grouplevel DECIMAL(8,0) DEFAULT NULL ,
  groupname VARCHAR(50) DEFAULT NULL ,
  groupdesc VARCHAR(512) DEFAULT NULL ,
  grouptype VARCHAR(255) DEFAULT NULL ,
  groupseq VARCHAR(256) DEFAULT NULL ,
  startdate DATE DEFAULT NULL ,
  enddate DATE DEFAULT NULL ,
  groupstatus SMALLINT DEFAULT NULL,
  manger VARCHAR(32) DEFAULT NULL ,
  isleaf VARCHAR(1) DEFAULT NULL ,
  subcount DECIMAL(10,0) DEFAULT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  app_id VARCHAR(64) DEFAULT NULL ,
  parentgroupid VARCHAR(32) DEFAULT NULL,
  del_flag SMALLINT DEFAULT '0'  ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_org_organization */

DROP TABLE IF EXISTS xk_org_organization;

CREATE TABLE xk_org_organization (
  id VARCHAR(32) NOT NULL ,
  orgno DECIMAL(10,0) DEFAULT NULL,
  orgcode VARCHAR(32) NOT NULL ,
  orgname VARCHAR(64) NOT NULL ,
  orglevel DECIMAL(2,0) DEFAULT '1' ,
  orgdegree VARCHAR(255) DEFAULT NULL ,
  orgseq VARCHAR(512) DEFAULT NULL ,
  orgtype VARCHAR(12) DEFAULT NULL ,
  orgaddr VARCHAR(256) DEFAULT NULL ,
  zipcode VARCHAR(10) DEFAULT NULL ,
  manaposition VARCHAR(32) DEFAULT NULL ,
  managerid VARCHAR(32) DEFAULT NULL ,
  orgmanger VARCHAR(128) DEFAULT NULL ,
  linkman VARCHAR(30) DEFAULT NULL ,
  linktel VARCHAR(20) DEFAULT NULL ,
  email VARCHAR(128) DEFAULT NULL ,
  weburl VARCHAR(512) DEFAULT NULL ,
  startdate DATE DEFAULT NULL ,
  enddate DATE DEFAULT NULL ,
  status SMALLINT DEFAULT NULL,
  area VARCHAR(32) DEFAULT NULL ,
  sortno INT DEFAULT NULL ,
  app_id VARCHAR(64) DEFAULT NULL ,
  parentorgid VARCHAR(32) DEFAULT NULL ,
  isleaf VARCHAR(1) DEFAULT NULL ,
  subcount DECIMAL(10,0) DEFAULT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0'  ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  memo VARCHAR(200) DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0'  ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

/*Table structure for table xk_org_posiotion */

DROP TABLE IF EXISTS xk_org_posiotion;

CREATE TABLE xk_org_posiotion (
  id VARCHAR(32) NOT NULL,
  posino DECIMAL(10,0) NOT NULL ,
  posicode VARCHAR(20) NOT NULL ,
  posiname VARCHAR(128) NOT NULL ,
  posilevel DECIMAL(2,0) DEFAULT NULL ,
  posiotionseq VARCHAR(512) NOT NULL ,
  positype VARCHAR(255) DEFAULT NULL ,
  startdate DATE DEFAULT NULL ,
  enddate DATE DEFAULT NULL ,
  status SMALLINT DEFAULT NULL,
  isleaf VARCHAR(1) DEFAULT NULL ,
  subcount DECIMAL(10,0) DEFAULT NULL ,
  tenant_id VARCHAR(64) DEFAULT NULL ,
  app_id VARCHAR(64) DEFAULT NULL ,
  dutyid VARCHAR(32) DEFAULT NULL ,
  orgid VARCHAR(32) NOT NULL,
  parentid VARCHAR(32) DEFAULT NULL ,
  del_flag SMALLINT DEFAULT '0'  ,
  createuser VARCHAR(100) DEFAULT NULL ,
  createtime timestamp DEFAULT NULL ,
  lastchangeuser VARCHAR(100) DEFAULT NULL ,
  lastchangetime timestamp DEFAULT NULL ,
  datastatus SMALLINT DEFAULT '0'  ,
  memo VARCHAR(200) DEFAULT NULL ,
  f1 VARCHAR(200) DEFAULT NULL ,
  f2 VARCHAR(200) DEFAULT NULL ,
  f3 VARCHAR(200) DEFAULT NULL ,
  f4 VARCHAR(200) DEFAULT NULL ,
  f5 VARCHAR(200) DEFAULT NULL ,
  PRIMARY KEY (id)

) ;
