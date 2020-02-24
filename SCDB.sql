--------------------------------------------
-- Export file for user ADMIN             --
-- Created by ·¶Ñ§¿µ on 2018/12/31, 19:22:17 --
--------------------------------------------

spool SCDB.log

prompt
prompt Creating table COURSE
prompt =====================
prompt
create table COURSE
(
  cno   VARCHAR2(15) not null,
  cname VARCHAR2(20) not null,
  cterm VARCHAR2(10) not null,
  ccre  FLOAT not null
)
;

prompt
prompt Creating table GRADE
prompt ====================
prompt
create table GRADE
(
  scno  VARCHAR2(20) not null,
  sno   VARCHAR2(15) not null,
  cno   VARCHAR2(15) not null,
  score VARCHAR2(10) not null
)
;

prompt
prompt Creating table OPERATOR
prompt =======================
prompt
create table OPERATOR
(
  ope_id   NUMBER(11),
  ope_name VARCHAR2(22),
  ope_pwd  VARCHAR2(22),
  rol_id   NUMBER(11)
)
;

prompt
prompt Creating table PRIVILEGE
prompt ========================
prompt
create table PRIVILEGE
(
  pri_id    NUMBER(11) not null,
  pri_name  VARCHAR2(22),
  pri_url   VARCHAR2(55),
  menu_name VARCHAR2(22),
  rol_id    NUMBER(11) default 3
)
;

prompt
prompt Creating table ROLE
prompt ===================
prompt
create table ROLE
(
  rol_id   NUMBER(11) not null,
  rol_name VARCHAR2(22)
)
;

prompt
prompt Creating table STUDENT
prompt ======================
prompt
create table STUDENT
(
  sno       VARCHAR2(15) not null,
  sname     VARCHAR2(6),
  sclass    VARCHAR2(20),
  ssex      VARCHAR2(8),
  semail    VARCHAR2(20),
  stel      VARCHAR2(15),
  susername VARCHAR2(20),
  spassword VARCHAR2(15)
)
;


spool off
