DROP TABLE IF EXISTS demo_school;

CREATE TABLE demo_school (
  id varchar(32) NOT NULL,
  school_name varchar(200) DEFAULT NULL,
  school_desc varchar(200) DEFAULT NULL,
  school_code varchar(200) DEFAULT NULL,
   del_flag             smallint ,
   createuser           varchar(100),
   createtime           timeStamp ,
   lastchangeuser       varchar(100) ,
   lastchangetime       timeStamp,
   memo                 varchar(200) ,
   datastatus           smallint ,
   f1                   varchar(200) ,
   f2                   varchar(200) ,
   f3                   varchar(200) ,
   f4                   varchar(200) ,
   f5                   varchar(200) ,
  PRIMARY KEY (id)
) ;


/*Data for the table demo_classroom */

DROP TABLE IF EXISTS demo_classroom;

CREATE TABLE demo_classroom (
  id varchar(32) NOT NULL,
  name varchar(200) DEFAULT NULL,
  grade varchar(200) DEFAULT NULL,
   schoolid            varchar(32) ,
   del_flag             smallint ,
   createuser           varchar(100),
   createtime           timeStamp ,
   lastchangeuser       varchar(100) ,
   lastchangetime       timeStamp,
   memo                 varchar(200) ,
   datastatus           smallint ,
   f1                   varchar(200) ,
   f2                   varchar(200) ,
   f3                   varchar(200) ,
   f4                   varchar(200) ,
   f5                   varchar(200) ,
  PRIMARY KEY (id)
) ;


/*Data for the table demo_classroom *//*




*/
/*Table structure for table demo_student */


DROP TABLE IF EXISTS demo_student;

CREATE TABLE demo_student (
  id varchar(32) NOT NULL,
  name varchar(200) DEFAULT NULL,
  address varchar(500) DEFAULT NULL,
  age int DEFAULT NULL,
  cid varchar(32) DEFAULT NULL,
   del_flag             smallint ,
   createuser           varchar(100),
   createtime           timeStamp ,
   lastchangeuser       varchar(100) ,
   lastchangetime       timeStamp,
   memo                 varchar(200) ,
   datastatus           smallint ,
   f1                   varchar(200) ,
   f2                   varchar(200) ,
   f3                   varchar(200) ,
   f4                   varchar(200) ,
   f5                   varchar(200) ,
  PRIMARY KEY (id)
) ;


/*Data for the table demo_student *//*



*/
/*
课程信息表
*/

CREATE TABLE demo_course (
  id varchar(32) NOT NULL ,
  course_code varchar(32) NOT NULL ,
  course_name varchar(255) DEFAULT NULL ,
  course_desc varchar(1000) DEFAULT NULL ,
  del_flag             smallint ,
   createuser           varchar(100),
   createtime           timeStamp ,
   lastchangeuser       varchar(100) ,
   lastchangetime       timeStamp,
   memo                 varchar(200) ,
   datastatus           smallint ,
   f1                   varchar(200) ,
   f2                   varchar(200) ,
   f3                   varchar(200) ,
   f4                   varchar(200) ,
   f5                   varchar(200) ,
  PRIMARY KEY (id)
) ;

/*
班级课程关联表
*/

CREATE TABLE demo_class_course (
  id varchar(32) NOT NULL ,
  class_id varchar(32) NOT NULL ,
  course_id varchar(255) DEFAULT NULL ,
  del_flag             smallint ,
   createuser           varchar(100),
   createtime           timeStamp ,
   lastchangeuser       varchar(100) ,
   lastchangetime       timeStamp,
   memo                 varchar(200) ,
   datastatus           smallint ,
   f1                   varchar(200) ,
   f2                   varchar(200) ,
   f3                   varchar(200) ,
   f4                   varchar(200) ,
   f5                   varchar(200) ,
  PRIMARY KEY (id)
) ;

/*
学生成绩表
*/

CREATE TABLE demo_student_score (
  id varchar(32) NOT NULL ,
  stu_id varchar(32) NOT NULL ,
  course_id varchar(32) DEFAULT NULL ,
  score  int DEFAULT NULL  ,
   del_flag             smallint ,
   createuser           varchar(100),
   createtime           timeStamp ,
   lastchangeuser       varchar(100) ,
   lastchangetime       timeStamp,
   memo                 varchar(200) ,
   datastatus           smallint ,
   f1                   varchar(200) ,
   f2                   varchar(200) ,
   f3                   varchar(200) ,
   f4                   varchar(200) ,
   f5                   varchar(200) ,
  PRIMARY KEY (id)
) ;

