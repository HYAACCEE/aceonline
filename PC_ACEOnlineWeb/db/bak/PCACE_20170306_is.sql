prompt PL/SQL Developer import file
prompt Created on 2017年3月6日 星期一 by Administrator
set feedback off
set define off
prompt Dropping IS_APPMODULE...
drop table IS_APPMODULE cascade constraints;
prompt Dropping IS_APPMODULEDETAIL...
drop table IS_APPMODULEDETAIL cascade constraints;
prompt Dropping IS_APPROLE...
drop table IS_APPROLE cascade constraints;
prompt Dropping IS_APPROLEMODULE...
drop table IS_APPROLEMODULE cascade constraints;
prompt Dropping IS_APPVERSION...
drop table IS_APPVERSION cascade constraints;
prompt Dropping IS_BULLETIN...
drop table IS_BULLETIN cascade constraints;
prompt Dropping IS_DEPARTMENT...
drop table IS_DEPARTMENT cascade constraints;
prompt Dropping IS_DOTMODULE...
drop table IS_DOTMODULE cascade constraints;
prompt Dropping IS_DOTMODULEDETAIL...
drop table IS_DOTMODULEDETAIL cascade constraints;
prompt Dropping IS_DOTROLE...
drop table IS_DOTROLE cascade constraints;
prompt Dropping IS_DOTROLEMODULE...
drop table IS_DOTROLEMODULE cascade constraints;
prompt Dropping IS_DOTUSER...
drop table IS_DOTUSER cascade constraints;
prompt Dropping IS_EMP...
drop table IS_EMP cascade constraints;
prompt Dropping IS_JOBPOSITION...
drop table IS_JOBPOSITION cascade constraints;
prompt Dropping IS_LWSERVER...
drop table IS_LWSERVER cascade constraints;
prompt Dropping IS_ORGAN...
drop table IS_ORGAN cascade constraints;
prompt Dropping IS_RS_COMPUTER...
drop table IS_RS_COMPUTER cascade constraints;
prompt Dropping IS_RS_OTHERS...
drop table IS_RS_OTHERS cascade constraints;
prompt Dropping IS_SERVER...
drop table IS_SERVER cascade constraints;
prompt Creating IS_APPMODULE...
create table IS_APPMODULE
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           NUMBER(6),
  c3           NUMBER(6),
  c4           VARCHAR2(100),
  c5           NUMBER(6),
  c6           NUMBER(6),
  c7           VARCHAR2(200)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table IS_APPMODULE
  add constraint IS_APPMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating IS_APPMODULEDETAIL...
create table IS_APPMODULEDETAIL
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           NUMBER(6),
  c3           VARCHAR2(100),
  c4           VARCHAR2(50),
  c5           VARCHAR2(4000),
  c6           VARCHAR2(500),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           NUMBER(6),
  c10          NUMBER(6),
  c11          VARCHAR2(20)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table IS_APPMODULEDETAIL
  add constraint IS_APPMODULEDETAIL_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating IS_APPROLE...
create table IS_APPROLE
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(30),
  c3           NUMBER(6)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_APPROLE
  add constraint IS_APPROLE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_APPROLEMODULE...
create table IS_APPROLEMODULE
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_APPROLEMODULE
  add constraint IS_APPROLEMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_APPVERSION...
create table IS_APPVERSION
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(3),
  c2           VARCHAR2(20),
  c3           VARCHAR2(200),
  c4           VARCHAR2(2000),
  c5           NUMBER(6),
  c6           VARCHAR2(100)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table IS_APPVERSION
  add constraint IS_APPVERSION_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating IS_BULLETIN...
create table IS_BULLETIN
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           VARCHAR2(100),
  c3           VARCHAR2(1000),
  c4           VARCHAR2(30),
  c5           VARCHAR2(20)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_BULLETIN
  add constraint IS_BULLETIN_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_DEPARTMENT...
create table IS_DEPARTMENT
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30) not null,
  c2           NUMBER(6) not null,
  c3           VARCHAR2(500),
  c4           NUMBER(6) not null,
  c5           NUMBER(6) not null,
  c6           NUMBER(6),
  c7           NUMBER(6) not null,
  c8           VARCHAR2(200)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table IS_DEPARTMENT
  add constraint IS_DEPARTMENT_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating IS_DOTMODULE...
create table IS_DOTMODULE
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(100) not null,
  c2           VARCHAR2(20) not null,
  c3           VARCHAR2(100),
  c4           NUMBER(6) not null,
  c5           NUMBER(6),
  c6           NUMBER(6),
  c7           NUMBER(6) not null,
  c8           VARCHAR2(50)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_DOTMODULE
  add constraint IS_DOTMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_DOTMODULEDETAIL...
create table IS_DOTMODULEDETAIL
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(50) not null,
  c2           NUMBER(6) not null,
  c3           VARCHAR2(100),
  c4           VARCHAR2(30),
  c5           NUMBER(6) default 0,
  c6           NUMBER(6) default 1,
  c7           NUMBER(6) default 0,
  c8           NUMBER(6) default 0,
  c9           CHAR(1) default '0',
  c10          NUMBER(6) default 0,
  c11          NUMBER(6) default 0,
  c12          VARCHAR2(30),
  c13          CHAR(1) default '0'
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_DOTMODULEDETAIL
  add constraint IS_DOTMODULEDETAIL_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_DOTROLE...
create table IS_DOTROLE
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(50),
  c2           VARCHAR2(10),
  c3           VARCHAR2(100),
  c4           NUMBER(6)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_DOTROLE
  add constraint IS_DOTROLE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_DOTROLEMODULE...
create table IS_DOTROLEMODULE
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_DOTROLEMODULE
  add constraint IS_DOTROLEMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_DOTUSER...
create table IS_DOTUSER
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32) not null,
  c2           NUMBER(11) not null,
  c3           VARCHAR2(50) not null,
  c4           NUMBER(6),
  c5           NUMBER(14),
  c6           VARCHAR2(20),
  c7           NUMBER(6) default 0,
  c8           CHAR(1),
  c9           NUMBER(6) not null,
  c10          VARCHAR2(30) not null,
  c11          VARCHAR2(30),
  c12          VARCHAR2(100),
  c13          VARCHAR2(30),
  c14          NUMBER(6),
  c15          VARCHAR2(20),
  c16          VARCHAR2(20),
  c17          VARCHAR2(30),
  c18          VARCHAR2(50),
  c19          VARCHAR2(20),
  c20          VARCHAR2(20),
  c21          NUMBER(9),
  c22          VARCHAR2(30),
  c23          VARCHAR2(100)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_DOTUSER
  add constraint IS_DOTUSER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_EMP...
create table IS_EMP
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(20) not null,
  c3           NUMBER(6),
  c2           NUMBER(6) not null,
  c4           NUMBER(6) not null,
  c5           NUMBER(4) not null,
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           VARCHAR2(20),
  c9           NUMBER(6),
  c10          NUMBER(6) not null,
  c11          NUMBER(11) not null,
  c12          NUMBER(11),
  c13          VARCHAR2(30),
  c14          NUMBER(15),
  c15          VARCHAR2(30) not null,
  c16          VARCHAR2(30),
  c17          VARCHAR2(50),
  c18          VARCHAR2(50)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table IS_EMP
  add constraint IS_EMP_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating IS_JOBPOSITION...
create table IS_JOBPOSITION
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30) not null,
  c2           NUMBER(6) not null,
  c3           NUMBER(6) not null,
  c4           VARCHAR2(200),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           NUMBER(6) not null
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table IS_JOBPOSITION
  add constraint IS_JOBPOSITION_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating IS_LWSERVER...
create table IS_LWSERVER
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(100),
  c3           NUMBER(6),
  c4           VARCHAR2(30)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table IS_LWSERVER
  add constraint IS_LWSERVER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating IS_ORGAN...
create table IS_ORGAN
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(100),
  c2           VARCHAR2(30),
  c3           NUMBER(6),
  c4           VARCHAR2(20),
  c5           VARCHAR2(500),
  c6           VARCHAR2(30),
  c7           NUMBER(6),
  c8           VARCHAR2(32)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table IS_ORGAN
  add constraint IS_ORGAN_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating IS_RS_COMPUTER...
create table IS_RS_COMPUTER
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(30),
  c3           VARCHAR2(20),
  c4           VARCHAR2(30),
  c5           VARCHAR2(30),
  c6           VARCHAR2(30),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(50),
  c10          NUMBER(6),
  c11          NUMBER(9),
  c12          VARCHAR2(20),
  c13          VARCHAR2(20),
  c14          VARCHAR2(100)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_RS_COMPUTER
  add constraint IS_RS_COMPUTER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_RS_OTHERS...
create table IS_RS_OTHERS
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(30),
  c3           VARCHAR2(30),
  c4           VARCHAR2(100),
  c5           VARCHAR2(20),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           NUMBER(9),
  c9           VARCHAR2(20),
  c10          VARCHAR2(20),
  c11          VARCHAR2(100)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IS_RS_OTHERS
  add constraint IS_RS_OTHERS_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IS_SERVER...
create table IS_SERVER
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(100),
  c3           NUMBER(6),
  c4           VARCHAR2(30)
)
tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for IS_APPMODULE...
alter table IS_APPMODULE disable all triggers;
prompt Disabling triggers for IS_APPMODULEDETAIL...
alter table IS_APPMODULEDETAIL disable all triggers;
prompt Disabling triggers for IS_APPROLE...
alter table IS_APPROLE disable all triggers;
prompt Disabling triggers for IS_APPROLEMODULE...
alter table IS_APPROLEMODULE disable all triggers;
prompt Disabling triggers for IS_APPVERSION...
alter table IS_APPVERSION disable all triggers;
prompt Disabling triggers for IS_BULLETIN...
alter table IS_BULLETIN disable all triggers;
prompt Disabling triggers for IS_DEPARTMENT...
alter table IS_DEPARTMENT disable all triggers;
prompt Disabling triggers for IS_DOTMODULE...
alter table IS_DOTMODULE disable all triggers;
prompt Disabling triggers for IS_DOTMODULEDETAIL...
alter table IS_DOTMODULEDETAIL disable all triggers;
prompt Disabling triggers for IS_DOTROLE...
alter table IS_DOTROLE disable all triggers;
prompt Disabling triggers for IS_DOTROLEMODULE...
alter table IS_DOTROLEMODULE disable all triggers;
prompt Disabling triggers for IS_DOTUSER...
alter table IS_DOTUSER disable all triggers;
prompt Disabling triggers for IS_EMP...
alter table IS_EMP disable all triggers;
prompt Disabling triggers for IS_JOBPOSITION...
alter table IS_JOBPOSITION disable all triggers;
prompt Disabling triggers for IS_LWSERVER...
alter table IS_LWSERVER disable all triggers;
prompt Disabling triggers for IS_ORGAN...
alter table IS_ORGAN disable all triggers;
prompt Disabling triggers for IS_RS_COMPUTER...
alter table IS_RS_COMPUTER disable all triggers;
prompt Disabling triggers for IS_RS_OTHERS...
alter table IS_RS_OTHERS disable all triggers;
prompt Disabling triggers for IS_SERVER...
alter table IS_SERVER disable all triggers;
prompt Loading IS_APPMODULE...
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (1, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-02-2017 22:51:03', 'dd-mm-yyyy hh24:mi:ss'), 'H00101', 1, null, '每周推荐【HR-未登录】', null, 130001, 'ok 1');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (2, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-02-2017 22:51:11', 'dd-mm-yyyy hh24:mi:ss'), 'H00102', 1, null, '每周推荐【HR-登录后】', null, 130001, 'ok 1');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (79, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:03', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (80, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:04', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (81, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:06', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (82, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:07', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (83, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:09', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (84, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:13', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (85, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:15', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (86, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:18', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (87, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:20', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (88, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:21', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (89, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (90, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (22, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-01-2017 14:28:12', 'dd-mm-yyyy hh24:mi:ss'), 'H00305', 1, null, '候选人流程列表【被关注-HC端】', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (42, 802001, 801000, null, to_date('23-12-2016 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:54:23', 'dd-mm-yyyy hh24:mi:ss'), 'H00514', null, null, 'dialog-HR-offer详情', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (54, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:38', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (20, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:36:27', 'dd-mm-yyyy hh24:mi:ss'), 'H00303', 1, null, '候选人列表【HC端】', null, 130001, 'ok 1 2');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (16, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:37:08', 'dd-mm-yyyy hh24:mi:ss'), 'H00207', 1, null, '开票记录【HR端】', null, 130001, 'ok 1');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (17, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:37:16', 'dd-mm-yyyy hh24:mi:ss'), 'H00208', 1, null, '开票记录【HC端】', null, 130001, 'ok 1');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (18, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:54:22', 'dd-mm-yyyy hh24:mi:ss'), 'H00301', 1, null, '新增候选人【HC端】', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (92, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 11:47:46', 'dd-mm-yyyy hh24:mi:ss'), 'R00002', null, null, '顾问面评审核规则', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (91, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:14:16', 'dd-mm-yyyy hh24:mi:ss'), 'R00001', null, null, '入库审核规则', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (24, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-12-2016 11:09:48', 'dd-mm-yyyy hh24:mi:ss'), 'H00307', 1, null, '候选人列表【首页-HC端】', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (25, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:55:12', 'dd-mm-yyyy hh24:mi:ss'), 'H00401', null, null, '候选人详情-简历', null, 130001, 'ok 1');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (14, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:55:44', 'dd-mm-yyyy hh24:mi:ss'), 'H00205', 1, null, '账户设置【HR端】', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (3, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:56:27', 'dd-mm-yyyy hh24:mi:ss'), 'H00103', 1, null, '我的职位列表【HR】', null, 130001, 'ok 1');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (21, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:35:48', 'dd-mm-yyyy hh24:mi:ss'), 'H00304', 1, null, '候选人流程列表【进行中-HC端】', null, 130001, 'ok 1 2');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (8, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 13:00:04', 'dd-mm-yyyy hh24:mi:ss'), 'H00108', 1, null, '候选人列表【已结束-HR端】-------同上', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (7, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 16:36:26', 'dd-mm-yyyy hh24:mi:ss'), 'H00107', 1, null, '候选人列表【已关注-HR端】------同上', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (26, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 09:55:52', 'dd-mm-yyyy hh24:mi:ss'), 'H00402', null, null, '候选人详情-流程', null, 130001, 'ok 2');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (6, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:56:36', 'dd-mm-yyyy hh24:mi:ss'), 'H00106', 1, null, '候选人列表【进行中-HR端】', null, 130001, 'ok 1');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (10, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:53:45', 'dd-mm-yyyy hh24:mi:ss'), 'H00201', 1, null, '账户注册【HC端】', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (27, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 09:56:02', 'dd-mm-yyyy hh24:mi:ss'), 'H00403', null, null, '候选人详情-事件', null, 130001, 'ok 2');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (55, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:40', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (56, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:42', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (57, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:44', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (58, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:46', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (37, 802001, 801000, null, to_date('23-12-2016 10:36:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:55:49', 'dd-mm-yyyy hh24:mi:ss'), 'H00509', null, null, 'dialog-HC-顾问信息', null, 130001, 'OK');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (40, 802001, 801000, null, to_date('23-12-2016 10:58:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:55:34', 'dd-mm-yyyy hh24:mi:ss'), 'H00512', null, null, 'dialog-HR-顾问信息', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (41, 802001, 801000, null, to_date('23-12-2016 10:59:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:55:30', 'dd-mm-yyyy hh24:mi:ss'), 'H00513', null, null, 'dialog-HR-面试详情', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (19, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:55:14', 'dd-mm-yyyy hh24:mi:ss'), 'H00302', 1, null, '编辑候选人简历【HC端】', null, 130001, 'ok form 123');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (28, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 22:04:00', 'dd-mm-yyyy hh24:mi:ss'), 'H00404', null, null, '候选人详情-附件', null, 130001, 'ok 1 2');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (13, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:55:36', 'dd-mm-yyyy hh24:mi:ss'), 'H00204', 1, null, '账户设置【HC端】', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (15, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:55:54', 'dd-mm-yyyy hh24:mi:ss'), 'H00206', 1, null, '修改密码【通用】', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (12, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:56:09', 'dd-mm-yyyy hh24:mi:ss'), 'H00203', 1, null, '新增公司【HC、HR端】', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (11, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 15:02:38', 'dd-mm-yyyy hh24:mi:ss'), 'H00202', 1, null, '账户注册【HR端】', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (5, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 13:01:22', 'dd-mm-yyyy hh24:mi:ss'), 'H00105', 1, null, '我的职位详情[HR]', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (9, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 20:33:10', 'dd-mm-yyyy hh24:mi:ss'), 'H00109', 1, null, 'main[HC]', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (4, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 13:26:59', 'dd-mm-yyyy hh24:mi:ss'), 'H00104', 1, null, '我的职位新增【HR】', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (47, 802001, 801000, null, to_date('25-12-2016 14:45:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:24:48', 'dd-mm-yyyy hh24:mi:ss'), 'H00519', null, null, 'dialog-HC-候选人申请成功', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (32, 802001, 801000, null, to_date('23-12-2016 10:00:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 14:54:09', 'dd-mm-yyyy hh24:mi:ss'), 'H00504', null, null, 'dialog-HC-候选人反馈(offer)', null, 130001, 'OK');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (52, 802001, 801000, null, to_date('25-12-2016 17:03:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 17:17:43', 'dd-mm-yyyy hh24:mi:ss'), 'H00524', null, null, 'dialog-HR-加入黑名单', null, 130001, 'ok 331004');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (48, 802001, 801000, null, to_date('25-12-2016 14:57:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:03:16', 'dd-mm-yyyy hh24:mi:ss'), 'H00520', null, null, 'dialog-HC-候选人离职原因', null, 130001, 'ok  330027');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (45, 802001, 801000, null, to_date('24-12-2016 15:18:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-01-2017 00:09:01', 'dd-mm-yyyy hh24:mi:ss'), 'H00517', null, null, 'dialog-HC-面试未通过原因', null, 130001, 'ok 330143');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (50, 802001, 801000, null, to_date('25-12-2016 15:24:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 17:02:11', 'dd-mm-yyyy hh24:mi:ss'), 'H00522', null, null, 'dialog-HR-关注', null, 130001, 'ok  331001');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (36, 802001, 801000, null, to_date('23-12-2016 10:32:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:00:56', 'dd-mm-yyyy hh24:mi:ss'), 'H00508', null, null, 'dialog-HC-安排面试', null, 130001, 'ok 330002');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (49, 802001, 801000, null, to_date('25-12-2016 15:20:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:24:27', 'dd-mm-yyyy hh24:mi:ss'), 'H00521', null, null, 'dialog-HC-顾问信息', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (46, 802001, 801000, null, to_date('25-12-2016 14:40:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:24:54', 'dd-mm-yyyy hh24:mi:ss'), 'H00518', null, null, 'dialog-HC-候选人没有通过申请', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (34, 802001, 801000, null, to_date('23-12-2016 10:10:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:00:06', 'dd-mm-yyyy hh24:mi:ss'), 'H00506', null, null, 'dialog-HC-候选人入职？？？？？？？？？？', null, 130001, 'OK 330010');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (33, 802001, 801000, null, to_date('23-12-2016 10:06:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:57:20', 'dd-mm-yyyy hh24:mi:ss'), 'H00505', null, null, 'dialog-HC-确认结束流程', null, 130001, 'ok 330444');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (30, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:56:17', 'dd-mm-yyyy hh24:mi:ss'), 'H00502', null, null, 'dialog-HC-候选人入职', null, 130001, 'ok 330007');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (35, 802001, 801000, null, to_date('23-12-2016 10:12:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:00:24', 'dd-mm-yyyy hh24:mi:ss'), 'H00507', null, null, 'dialog-HC-顾问面试', null, 130001, 'ok 220003');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (39, 802001, 801000, null, to_date('23-12-2016 10:38:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:01:33', 'dd-mm-yyyy hh24:mi:ss'), 'H00511', null, null, 'dialog-HR-面试变更', null, 130001, 'ok 330022');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (51, 802001, 801000, null, to_date('25-12-2016 17:01:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 17:17:36', 'dd-mm-yyyy hh24:mi:ss'), 'H00523', null, null, 'dialog-HR-取消关注', null, 130001, 'ok 331002');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (44, 802001, 801000, null, to_date('24-12-2016 14:13:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:25:39', 'dd-mm-yyyy hh24:mi:ss'), 'H00516', null, null, 'dialog-HR-面试反馈', null, 130001, 'ok');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (31, 802001, 801000, null, to_date('23-12-2016 09:57:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 14:53:40', 'dd-mm-yyyy hh24:mi:ss'), 'H00503', null, null, 'dialog-HC-候选人面试反馈', null, 130001, 'OK');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (59, 802001, 801000, null, to_date('30-12-2016 12:32:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 21:34:22', 'dd-mm-yyyy hh24:mi:ss'), 'H00601', null, null, 'HC顾问面评编辑', null, 130001, 'ok 1 2 3 4 5 6');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (38, 802001, 801000, null, to_date('23-12-2016 10:38:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:52:02', 'dd-mm-yyyy hh24:mi:ss'), 'H00510', null, null, 'dialog-HR-安排面试', null, 130001, 'ok 330002');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (43, 802001, 801000, null, to_date('24-12-2016 14:01:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:59:28', 'dd-mm-yyyy hh24:mi:ss'), 'H00515', null, null, 'dialog-HR-邀请面试', null, 130001, 'ok 330000');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (53, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-01-2017 11:35:35', 'dd-mm-yyyy hh24:mi:ss'), 'H00525', null, null, 'dialog-HC-HR-转发简历', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (23, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-01-2017 14:27:28', 'dd-mm-yyyy hh24:mi:ss'), 'H00306', 1, null, '候选人流程列表【已结束-HC端】', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (71, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:40', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (72, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:42', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (29, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 23:41:55', 'dd-mm-yyyy hh24:mi:ss'), 'H00501', null, null, 'dialog-HC-未入职原因', null, 130001, 'ok 330144');
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (65, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:31', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (64, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:29', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (66, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:32', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (67, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:34', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (68, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:35', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (69, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:37', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (70, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:38', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (73, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:43', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (74, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:45', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (75, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:46', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (76, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (77, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:12:53', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (78, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2017 15:13:00', 'dd-mm-yyyy hh24:mi:ss'), 'xx', null, null, 'xxxxx', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (93, 802001, 801000, null, to_date('15-02-2017 16:03:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-02-2017 16:03:41', 'dd-mm-yyyy hh24:mi:ss'), 'R00003', null, null, '入库申请提交审核', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (60, 802001, 801000, null, to_date('22-01-2017 00:06:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 23:15:02', 'dd-mm-yyyy hh24:mi:ss'), 'H00602', null, null, 'M-候选人', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (62, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 23:17:57', 'dd-mm-yyyy hh24:mi:ss'), 'H00604', null, null, 'M-客户', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (63, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-03-2017 09:51:17', 'dd-mm-yyyy hh24:mi:ss'), 'H00605', null, null, 'M-新增顾问账户', null, 130001, null);
insert into IS_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (61, 802001, 801000, null, to_date('22-01-2017 09:51:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 23:16:16', 'dd-mm-yyyy hh24:mi:ss'), 'H00603', null, null, 'M-顾问', null, 130001, null);
commit;
prompt 93 records loaded
prompt Loading IS_APPMODULEDETAIL...
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (81, 49, 802001, 801000, null, to_date('25-12-2016 15:22:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:22:07', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f10 pdall10 text-c h100 bg-focus center">\n  <img class="pd60 img50" src="../doc/images/HC/face_c1_m.png"/><br>\n  <span class="pdl10 black">Kate</span><span class="">(Burberry|HRD)</span>\n    <div class="f12 pdall5">\n      <span class="pdr5">男</span>\n      <span class="pdr5">27岁</span>\n      <span class="pdr5">本科</span>\n      <span class="pdr5">3年工作经验</span>\n      <span class="pdr5">30K</span>\n    </div> \n  <div class="h15"></div>\n</div>\n\n<div class="bg-white text-c" style="">\n  <ul style="height:80px;" class="center">\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_emai.png"/><span class="pdl10">xxxxxx@xxxx.com</span></li>\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_phone.png"/><span class="pdl10">400-39999999229</span></li>\n  </ul>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (94, 59, 802001, 801000, null, to_date('31-12-2016 10:57:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 21:34:10', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 7, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (66, 9, 802001, 801000, null, to_date('23-12-2016 20:40:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 16:14:50', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 3, null, null, '<div class="added-event" data-date="%s" data-time="%s" data-title="%s" data-detail="%s"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (25, 28, 802001, 801000, null, to_date('19-12-2016 17:57:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 17:47:58', 'dd-mm-yyyy hh24:mi:ss'), '分类列表', 2, null, null, '<div class="dt20 pdl30 pdr5 pointer dataline_" data="250001" data1="%s"><img src="../doc/images/att_face.png"><span class="pdl15 f14 black9">头像</span><span class="float-r grey f9 headtime_">%s</span></div>\n<div class="line" id="hidata1"></div>\n<div class="dt20 pdl30 pdr5 pointer dataline_" data="250002" data1="%s"><img src="../doc/images/att_cv.png"><span class="pdl15 f14 black9">简历</span><span class="float-r grey f9 f10 cvtime_">%s</span></div>\n<div class="line" id="hidata1"></div>\n<div class="dt20 pdl30 pdr5 pointer dataline_" data="250009"><img src="../doc/images/att_other.png"><span class="pdl15 f14 black9">其他</span><span class="float-r"><img class="middle" src="../doc/images/HC/upload.png">\n<span class="float-r color-focus f9 f14 uploadfile_">上传附件</span>\n<input id="uploadfile" type="file" style="display: none"/></div>\n<div class="line" id="hidata1"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (78, 39, 802001, 801000, null, to_date('25-12-2016 15:03:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:01:40', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">面试变更</div>\n<div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl30 pdr10">面试者:</span>\n    <span>李大志</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20 pdr10">面试职位:</span>\n    <span>产品经理</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <input class="datepicker notnull vv" size="30">\n  </div>\n  <div class="dt10">\n    <span class="pdl20">备选时间：</span>\n    <input class="datepicker notnull vv" size="30">\n  </div>    \n  <div class="dt10">\n    <span class="pdl20 top">面试地点：</span>\n    <div class="pdr30 float-r" style="width: 205px;">上海市黄浦区马当路388号(SOHO复兴广场)E栋3楼</div>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330022', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (99, 9, 802001, 801000, null, to_date('04-01-2017 10:17:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-03-2017 15:02:02', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 22, null, null, '<div id="line%s">\n  <div class="pd10 dt10 bg-white clearfix box-link dataline_" data="%s" data1="%s" data2="%s">\n    <div class="float-l pd5 f10 sp1 text-c nowrap">\n      <div class="pd10 dt5"><img src="../doc/images/HC/status_%s.png"></div>\n      <div class="light-grey HC_admin_">%s</div>\n    </div>\n    <div class="float-l pd10 dt5">\n      <img class="pointer HC_candidateInfo_" src="../doc/images/HC/face_c%s_m.png">\n    </div>\n    <div class="float-l pd10">\n      <div class="dt10">\n        <a class="pdr5 f14 bold sp3 pointer detail_">%s</a>\n        <span class="dark-grey f12 sp2">%s</span>\n        <span class="dark-grey f12 sp2">%s</span>\n        <span class="f12 sp2">%s</span>\n      </div>\n      <div class="h2"></div>\n      <div class="dt2">\n        <span class="f12 sp2 bold grey">%s</span>\n        <span class="dark-grey f12">%s</span>\n      </div>\n    </div>\n    <div class="float-r pdr10 text-r">\n      <div class="h30 dt10">\n        <img class="pointer close_ %s" src="../doc/images/HC/close.png"/><span class="gone">%s</span>\n        <button class="btn-default h25 pd10 %s">%s</button>\n      </div>\n      <div class="dark-grey f12 dt2">\n        <span class="%s">%s</span>\n        <span class="pdl10 %s"><a class="f12 grey-link sp2 pointer">%s<img class="mgl5" src="../doc/images/HC/open.png"/></a></span>\n        <span class="pdl10 %s"><a class="f12 grey-link sp2 pointer">%s<img class="mgl5" src="../doc/images/HC/open.png"/></a></span>\n        <span class="pdl10 %s"><a class="f12 grey-link sp2 pointer">%s推迟<img class="mgl5" src="../doc/images/HC/open.png"/></a></span>      \n      </div>\n    </div>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (87, 59, 802001, 801000, null, to_date('30-12-2016 12:32:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:07:16', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 1, null, null, 
        '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden"><div><div><span class="dt_left"><input class="no-border vv readonly" readonly size="20"/></span><input class="bold sp2 no-border vv readonly" readonly size="50"></div><div><span class="dt_left"></span><input class="bold sp2 light-grey no-border vv readonly" readonly size="50"><span class="float-r text-r pdr40 btn-slide gone" id="li-<INDEX>">展开<img src="../doc/images/arrow.png"/></span></div></div>\n<div id="box-<INDEX>"><div class="dt5"><span class="dt_1 f14 sp1 top">公司介绍</span><span class="dt_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span></div><div class="dt5"><span class="dt_1 f14 sp1"><i class="x"></i>行业</span><span class="dt_2"><script type="text/javascript" src="../doc/selector/industry_func.js"></script><input id="btn_IndustryID_2" class="dt_input1 vv" name="vvn" onclick="IndustrySelect_2($(this).parent())" /><input id="IndustryID_2" type="hidden" name="IndustryID_2" /></span><span class="dt_3"></span><span class="dt_1 f14 sp1"><i class="x"></i>月薪</span><span class="dt_2"><input class="dt_input1 vv" name="vvn" onkeyup="intInput(this)" maxlength="6"/></span><span class="f14 sp1 dt_3">元/月</span></div><div class="dt5"><span class="dt_1 f14 sp1"><i class="x"></i>年薪</span><span class="dt_2"><input class="dt_input1 vv" name="vvn" onblur="doubleInput(this,1)" maxlength="6"/></span><span class="f14 sp1 dt_3">万/年</span><span class="dt_1 f14 sp1"><i class="x"></i>薪资构成</span><span class="dt_2"><input class="dt_input1 vv" name="vvn"></span><span class="dt_3"></span></div>\n<div class="dt5"><span class="dt_1 f14 sp1"><i class="x"></i>汇报对象</span><span class="dt_2"><input class="dt_input1 vv" name="vvn"></span><span class="dt_3"></span><span class="dt_1 f14 sp1"><i class="x"></i>下属人数</span><span class="dt_2"><input class="dt_input1 vv" name="vvn" onkeyup="intInput(this)" maxlength="6"/></span><span class="f14 sp1 dt_3">人</span></div><div class="dt5"><span class="dt_1 f14 sp1"><i class="x"></i>离职期</span><span class="dt_2"><input class="dt_input1 vv" name="vvn" onkeyup="intInput(this)" maxlength="4"/></span><span class="f14 sp1 dt_3">天</span></div><div class="dt_1 f14 sp1 dt10 pdl20 bold">工作权重</div><input type="hidden" class="vv" name="vvn" id="v_workweight"/><div id="workweightView"><div class="dt5"><span class="dt_1 f14 sp1"><i class="x"></i>工作内容</span><span class="dt_2"><input class="dt_input1 weightName_"/></span><input class="f14 sp1 weightValue_" onkeyup="intInput(this)" maxlength="3" size="5"/> %<span class="mgl10 red pointer gone delete_"><img class="middle" src="../doc/images/HC/delete.png">删除该条目</span></div></div><div><span class="dt_1 f14 sp1"></span><span class="color-focus f9 pointer workadd_">+新的工作内容</span></div><div class="dt5"><span class="dt_1 f14 sp1 top"><i class="x"></i>工作业绩</span><span class="dt_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span></div><div class="dt5"><span class="dt_1 f14 sp1 top"><i class="x"></i>离职原因</span><span class="dt_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span></div><div class="dt5"><span class="dt-left f14 sp1 pdr15"><i class="x"></i>竞业禁止限制</span><input type="hidden" class="vv" id="v_bizLmtZZZ" value="1" size="3"><span class="dt_2"><input class="radio-default" type="radio" id="bizLmt1ZZZ" name="bizLmtZZZ" value="1"> <label class="f14 sp1" for="bizLmt1ZZZ">有</label><span class="pdl100"><input class="radio-default" type="radio" id="bizLmt0ZZZ" name="bizLmtZZZ" value="0"><label class="f14 sp1" for="bizLmt2ZZZ">没有</span></span><span class="dt_3"></span><span class="isShowView"><span class="dt_1 f14 sp1"><i class="x"></i>限制时长</span><span class="dt_2"><input class="dt_input1 vv" name="vvn" onkeyup="intInput(this)" maxlength="2"/></span><span class="dt_3">年</span></span></div></div><div class="line"></div></div>', 
        null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (34, 13, 802001, 801000, null, to_date('21-12-2016 13:21:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 09:30:35', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h30"></div>\n<div>\n <label class="dt_left f12 sp3 pdr20">姓名</label><input class="dt_input vv notnull" name="" type="text">\n</div>\n<div class="h20"></div>\n<div class="">\n<span class="dt_left f12 sp3">性别</span><input class="dt_input vv" id="v_sex" type="hidden">\n <DATAPARAM id="132" type="RADIO">\n <span class="pdr100">\n   <input class="radio" type="radio" id="radio%s" name="sex" value="%s">\n   <label class="dark-grey f12 pdl5" for="radio%s">%s</label>\n </span>\n </DATAPARAM>\n</div>\n<div class="h20"></div>\n<div class="">\n  <span class="dt_left f12 sp3">手机</span><input class="dt_input vv notnull input-disabled" readonly type="text">\n</div>\n<div class="h25"></div>       \n<div class="">\n  <span class="dt_left f12 sp3">座机(选填)</span><input class="dt_input vv notnull" id="phone" type="text">\n</div>\n<div class="h25"></div>\n<div class="">\n <span class="dt_left f12 sp3">公司邮箱</span><input class="dt_input vv notnull" type="text">\n</div>       \n<div class="h30"></div>\n<div><button type="submit" class="btn-focus center h30 save_" style="width:98px">保存</button></div>\n<div class="h20"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (72, 21, 802001, 801000, null, to_date('24-12-2016 23:01:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-02-2017 20:07:35', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB-BOX', 4, null, null, '<div id="box-<INDEX>" class="dt10 bg-light-red pdl20 gone" style="margin-top: -1px;">\n  <div class="clearfix grey f9" style="width:980px">\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (133, 6, 802001, 801000, null, to_date('14-02-2017 18:31:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-02-2017 19:50:09', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUBBox', 33, null, null, '<div class="float-l %s">\n  <div class="h20 process-end"><br></div>\n  <div class="process-info">%s</div>\n  <div class="f7">%s</div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (1, 1, 802001, 801000, null, to_date('12-12-2016 14:21:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 11:50:07', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="clearfix bg-white pointer box-link dataline_" style="height:88px" data="%s">\n  <div>\n    <div>\n      <img class="pdl3" width="30" src="../doc/images/HR/marker_new.png">\n    </div>\n    <div class="clearfix pd30">\n      <span class="pd5 f16 pointer detail_">%s</span>\n      <span class="light-blue f14">\n        <span class="pd20">%s</span>\n        <span class="pd20">%s岁</span>\n        <span class="pd20">%s年工作经验 </span>\n        <span class="pd20">%sK</span>\n        <span class="pdl30"><img style="width:17px;height:17px" src="../doc/images/HR/location.png">%s</span>\n        <span class="float-r light-grey f12 pd30">#%s</span>\n      </span>\n    </div>\n    <div class="dt8 f14 pd30 light-blue">\n      <span class="pointer float-l detail_" style="text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display: block;width: 400px;">\n        <EDUCATION><span class="pdl5 pdr30">%s<span class="pd5">|</span>%s</span></EDUCATION>\n        <JOB><span class="grey f14">%s<span class="pd5">|</span><span class="light-blue pdr15">%s</span></span></JOB>\n      </span>\n      <span class="float-r h20 pd10 light-blue2 f14 gone HR_addIV_"><img class="pd5" style="width:17px;height:17px" src="../doc/images/HR/gz.png">%s</span>\n    </div>\n    <div class="h10"></div>\n  </div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (28, 19, 802001, 801000, null, to_date('19-12-2016 22:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-03-2017 10:22:36', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-基本信息', 1, null, null, 
        '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt5">\n    <span class="dt_left f14 sp3"><i class="x"></i>姓名</span><span class="dt_right"><input class="dt_input1 notnull vv" name="vvn"></span><span class="dt_left f14 sp3">英文名</span><span class="dt_right"><input class="dt_input1 vv" name="vvn"></span>\n  </div>\n  <div class="h15"></div>\n  <div>\n  <span class="dt_left f14 sp3"><i class="x"></i>性别</span><input type="hidden" class="vv" name="vvn" id="v_radioValueZZZ" value="132001"><span class="dt_right">\n   <DATAPARAM id="132" type="RADIO">\n   <span class="pdl10">\n     <input class="radio" type="radio" id="radio%sZZZ" name="sexZZZ" value="%s">\n     <label class="pdl5" for="radio%sZZZ">%s</label>\n   </span>\n   </DATAPARAM>\n   </span><span class="dt_left f14 sp3"><i class="x"></i>户籍所在地</span><span class="dt_right">\n' || chr(9) || '   <script type="text/javascript" src="../doc/selector/city_func.js"></script>\n' || chr(9) || '   <input id="btn_hukou" class="dt_input1 vv" name="vvn" onclick="hukouSelect($(this).parent())" />\n' || chr(9) || '   <input id="hukou" type="hidden" name="hukou" />\n   </span>\n  </div>\n  <div class="h15"></div>\n  <div class="dt5">\n  <span class="dt_left f14 sp3"><i class="x"></i>出生日期</span><span class="dt_right"><input class="laydate-icon vv" style="width:237px" name="vvn" onclick="laydate({format: ''YYYY-MM-DD'', max: ''2000-01-01''})"></span>\n  <span class="dt_left f14 sp3"><i class="x"></i>个人邮箱</span><span class="dt_right"><input class="dt_input1 vv" name="vvn"></span>\n  </div>\n  <div class="dt5"></div>\n  <div class="dt5">\n    <span class="dt_left f14 sp3"><i class="x"></i>手机</span><span class="dt_right"><input class="vv" value="+86" style="width:50px"/><input class="vv mgl5" id="phone" maxlength="11" style="width:170px"/></span>\n    <span class="dt_left f14 sp3">国籍</span>\n    <span class="dt_right"><script type="text/javascript" src="../doc/selector/nationality_func.js"></script><input id="btn_nation" class="dt_input1 vv" name="vvn" onclick="nationSelect($(this).parent())" /></span>\n  </div>\n  <div>\n    <span class="dt_left"></span><span><span class="f9 color-error top" id="checkcandidate"></span></span>\n  </div>\n  <div>\n    <span class="dt_left f14 sp3"><i class="x"></i>居住城市</span><span class="dt_right">\n      <input id="btn_residency" class="dt_input1 vv" name="vvn" onclick="residencySelect($(this).parent())" />\n      <input id="residency" type="hidden" name="residency" />\n      <input type="hidden" class=" vv gone" name="vvn" value="区域">\n    </span>\n  </div>\n  <div class="h10"></div>\n</div>', 
        null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (70, 6, 802001, 801000, null, to_date('24-12-2016 23:00:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-02-2017 18:31:05', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-BOX', 3, null, null, '<div id="box-<INDEX>" class="dt10 bg-light-red pdl50 pdr20 gone">\n  <div class="clearfix grey f9">\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (45, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-03-2017 11:30:59', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-顾问面评', 11, null, null, '<div class="h5"></div>        \n<div class="full-width clearfix">\n  <span class="float-l f14"><img class="raduis24" src="../doc/images/gw_face.png"><span class="pdl5">%s顾问的评价</span></span>\n  <span class="float-r dt5 btn-slide" id="li-<INDEX>"><span class="f12">%s</span><img class="arrow middle" style="width:13px;height:7px" src="../doc/images/arrow.png"></span>\n</div>\n<div id="box-<INDEX>" class="gone pd10 dt20">\n  <div class="tab-hc bold">整体印象</div>\n  <div class="pdl25 dark-grey dt10">\n    <div class="dt5">性格：<br><span class="tab-dot-s f12 green">%s</span></div>\n    <div class="dt5">沟通能力：<br><span class="tab-dot-s f12 green">%s</span></div>\n    <div class="dt5">语言水平：<LANGUAGE><br><span class="tab-dot-s f12 green">%s</span></LANGUAGE></div>\n    <div class="dt5">缺点/疑虑：<br><span class="tab-dot-s f12 green">%s</span></div>\n  </div>\n  <div class="tab-hc bold">工作总结</div>\n  <div class="pdl25 dt10">\n    <div class="dt5 dark-grey f12">本行业从业经验：<span class="green">%s年</span></div>\n    <div class="dt5 dark-grey f12">管理经验：<span class="green">%s年</span></div>\n    <div class="dt5 dark-grey f12">管辖区域范围：<br><span class="tab-dot-s green">%s</span></div>\n  </div>\n  <div class="tab-hc bold dt10">备注</div>\n  <div class="pdl25 f12 sp3 green">%s</div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (40, 19, 802001, 801000, null, to_date('21-12-2016 14:54:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:12:22', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-教育', 3, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left f14 sp3"><i class="x"></i>起止时间</span><span class="dt_right"><input class="dt_input2 laydate-icon vv" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})">\n    <span> - </span><input class="dt_input2 laydate-icon vv" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})"></span>\n    <span class="dt_left f14 sp3"><i class="x"></i>学校</span>\n    <span class="dt_right">\n      <script type="text/javascript" src="../doc/selector/school_func.js"></script>\n      <input id="btn_SchoolID_2" class="dt_input1 vv" name="vvn" onclick="schoolSelect_2($(this).parent())" />\n      <input id="SchoolID_2" type="hidden" name="SchoolID_2" />\n     </span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left f14 sp3"><i class="x"></i>专业</span><span class="dt_right"><input class="dt_input1 vv" name="vvn"></span>\n    <span class="dt_left f14 sp3"><i class="x"></i>学历</span><span class="dt_right"><select class="dt_input1 vv" name="vvn"><option></option>\n    <DATAPARAM id="133" type="SELECT"><option value="%s">%s</option></DATAPARAM>  \n    </select></span>\n  </div>\n  <div class="text-r pdr50">\n    <span class="red delete_"><img class="middle" src="../doc/images/HC/delete.png">删除该条目</span>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (107, 23, 802001, 801000, null, to_date('06-01-2017 10:58:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-02-2017 15:59:33', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB-BOX', 4, null, null, '<div id="box-<INDEX>" class="dt10 bg-light-red pdl20 gone">\n  <div class="clearfix grey f9" style="width:980px">\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (135, 93, 802001, 801000, null, to_date('15-02-2017 16:04:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-02-2017 16:06:08', 'dd-mm-yyyy hh24:mi:ss'), '基本详情', 11, null, 'B_Candidate', 'decode(sign(c26-30),-1,''年薪不能少于30W！<br>'','''') ', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (92, 59, 802001, 801000, null, to_date('30-12-2016 13:43:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:08:07', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 5, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_1 f14 sp1 top"><i class="x"></i>职业技能</span>\n    <span class="dt_right">\n      <script type="text/javascript" src="../doc/selector/funtype_func.js"></script>\n      <textarea id="btn_FuntypeID" class="h60 full-width vv" name="vvn" onclick="funtypeSelect($(this).parent())"></textarea>\n      <input id="FuntypeID" type="hidden" name="FuntypeID"/>\n    </span>\n  </div>\n  <div class="dt10 gone">\n    <span class="dt_1 f14 sp1 top"><i class="x"></i>团队管理技能</span><span class="dt_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_1 f14 sp1 top"><i class="x"></i>软件技能</span>\n    <span class="dt_right">\n      <script type="text/javascript" src="../doc/selector/skilltype_func.js"></script>\n      <textarea id="btn_SkilltypeID" class="h60 full-width vv" name="vvn" onclick="skilltypeSelect($(this).parent())"></textarea>\n      <input id="SkilltypeID" type="hidden" name="SkilltypeID"/>\n    </span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (85, 19, 802001, 801000, null, to_date('27-12-2016 15:35:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:12:53', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-工作经验', 7, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt15">\n    <span class="dt_left f14 sp3"><i class="x"></i>起止时间</span><span class="dt_right"><input class="dt_input3 laydate-icon vv" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})"><span> - </span><input class="dt_input3 laydate-icon vv" id="totime" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})"><span class=nowrap"><input class="checkbox mgl10" type="checkbox" id="checkbox1"><label class="dark-grey f14 sp2" for="checkbox1"> 至今</label></span></span>\n    <span class="dt_left f14 sp3"><i class="x"></i>公司名称</span><span class="dt_right"><input class="dt_input1 autocomplete-company vv" name="vvn"></span>\n  </div>\n  <div class="dt15">\n    <span class="dt_left f14 sp3">行业</span><span class="dt_right">\n      <script type="text/javascript" src="../doc/selector/industry_func.js"></script>\n      <input id="btn_IndustryID_2" class="h30 dt_input1 vv" name="vvn" onclick="IndustrySelect_2($(this).parent())" />\n      <input id="IndustryID_2" type="hidden" name="IndustryID_2" />\n    </span>\n    <span class="gone">多段工作经历<input class="vv" name="vvn" type="hidden" value="0"></span>\n    <span class="dt_left f14 sp3">部门</span><span class="dt_right"><input class="h30 dt_input1 vv" name="vvn"></span>\n  </div>\n  <div class="dt15">\n    <span class="dt_left f14 sp3"><i class="x"></i>职位</span><span class="dt_right"><input class="dt_input1 vv" name="vvn"></span>\n    <span class="dt_left f14 sp3">职级</span><span class="dt_right"><input class="dt_input1 vv" name="vvn"></span>\n  </div>\n  <div class="dt15">\n    <span class="dt_left f14 sp3">职位类型</span><span class="dt_right"><select class="dt_input1 vv" name="vvn"><option></option>\n    <DATAPARAM id="221" type="SELECT"><option value="%s">%s</option></DATAPARAM>  \n    </select></span>\n  </div>\n  <div>\n    <span class="dt_left f14 sp3 top"><i class="x"></i>工作职责</span><textarea class="textareaWidth vv" name="vvn"></textarea></span>\n  </div>\n  <div class="text-r pdr50">\n    <span class="red delete_"><img class="middle" src="../doc/images/HC/delete.png">删除该条目</span>\n  </div>\n  <div class="h30"></div>\n</div>', null, null, null, 130001, null, 
        null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (83, 19, 802001, 801000, null, to_date('27-12-2016 15:32:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:12:42', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-证书', 5, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left f14 sp3"><i class="x"></i>时间</span><span class="dt_right"><input class="laydate-icon vv" style="width:227px" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})"></span>\n    <span class="dt_left f14 sp3"><i class="x"></i>证书名称</span><span class="dt_right"><input class="dt_input1 vv" name="vvn"></span>\n  </div>\n  <div class="text-r pdr50">\n    <span class="red delete_"><img class="middle" src="../doc/images/HC/delete.png">删除该条目</span>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (44, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 20:51:03', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-工作期望', 10, null, null, '<div class="dt10 %s">\n  <div class="tab-hc dt10 bold">工作期望</div>\n  <div class="pdl25 dt10">\n    <div class="dt5 dark-grey f14">职位：<span class="green">%s</span></div>\n    <div class="dt5 dark-grey f14">职级：<span class="green">%s</span></div>\n    <div class="dt5 dark-grey f14">行业：<span class="green">%s</span></div>\n    <div class="dt5 dark-grey f14">城市：<span class="green">%s</span></div>\n    <div class="dt5 dark-grey f14">期望薪资：<span class="green">%s</span></div>\n    <div class="dt5 dark-grey f14">意向公司：<br><span class="tab-dot-s green">%s</span></div>\n    <div class="dt5 dark-grey f14">屏蔽公司：<br><span class="tab-dot-s green">%s</span></div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (134, 19, 802001, 801000, null, to_date('15-02-2017 14:35:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-02-2017 14:36:59', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-公司名称匹配', 20, null, null, '<div class="dt10">%s</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (62, 5, 802001, 801000, null, to_date('23-12-2016 13:09:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:20:41', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 2, null, null, '<div>\n  <h1 class="color-focus f20 dt10">公司信息</h1>\n  <img class="img50 dt10" src="../doc/images/HR/status_%s.png">\n</div>\n<div class="dt5 f16">%s</div>\n<div class="dt5">%s</div>\n<div class="dt5 f12">\n  <div class="%s dt8"><span class="dark-grey">公司行业：</span><span>%s</span></div>\n  <div class="%s dt8"><span class="dark-grey">公司性质：</span><span>%s</span></div>\n  <div class="%s dt8"><span class="dark-grey">融资情况：</span><span>%s</span></div>\n  <div class="%s dt8"><span class="dark-grey">公司规模：</span><span>%s</span></div>\n  <div class="%s dt8"><span class="dark-grey">公司产品：</span><span>%s</span></div>\n  <div class="%s dt8"><span class="dark-grey">竞争对手：</span><span >%s</span></div>\n  <div class="%s dt8"><span class="dark-grey">公司网站：</span><a href="http://%s/" target="_blank">%s</a></div>\n  <div class="%s dt8"><span class="dark-grey top">公司地址：</span><textare  style="width:120px;height:auto;display:inline-block;">%s</textare></div>\n</div>\n<div>\n  <img src="img/pub_logo.png" width="160" height="110"style="margin-bottom: 8px;margin-left: 20px;">\n</div>\n<div class="h20"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (111, 60, 802001, 801000, null, to_date('22-01-2017 00:10:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:31:32', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="clearfix pdall15 bg-white box-link pointer dataline_ detail_" data="%s" data1="%s">\n  <span class="pd10"><img class="middle" src="../doc/images/M/face_c%s_s.png"></span>\n  <span class="dt_left title_">%s</span>\n  <span class="sp1">%s</span>\n  <span class="float-r dt5">\n    <span class="inline-block h15 bg-focus" style="width:120px"><span class="border inline-block h15 bg-grey" style="width:%spx"></span></span>\n  </span>\n  <span class="float-r dt5 pdr20">申请于<span>%s</span></span>\n</div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (48, 31, 802001, 801000, null, to_date('23-12-2016 09:59:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 09:59:29', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人反馈</div>\n<div class="h15"></div>\n\n<div class="pdall10 bg-white center">\n<div class="bg-white center" style="">\n    <span class="">反馈结果:</span>\n    <span class="pd10"><input class="radio-default  proinfo_ vv" type="radio" id="radio1" name="proinfo" checked value="1"><label class="pdl5" for="radio1">同意面试</label></span>\n    <span class="pdr100"><input class="radio-default  proinfo_ vv" type="radio" id="radio2" name="proinfo" value="2"><label class="pdl5" for="radio2">拒绝面试</label></span>\n</div>\n <div class="dt10 proinfo_ext_ gone" id="proinfo2">\n  <span class="top">拒绝原因：</span>\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div> \n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (122, 7, 802001, 801000, null, to_date('29-01-2017 14:44:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 17:10:22', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<span class="pdr20">\n  <select class="status_ bg-light-grey">\n       <option value="">所有类型</option>\n       <option value="0">没面试过</option>\n       <option value="1">进行中</option>\n       <option value="9">已结束</option>\n  </select>\n</span>\n<span class="pdr20">\n  <select class="bg-light-grey job_" >\n       <option value="">所有候选人职位</option>\n       <DATATABLE id="108" type="select" limit="c2=AUID"><option value="%s">%s</option></DATATABLE>\n  </select>\n</span>\n<span class="pd20"></span>\n<span><input type="text" class="keyword_" placeholder="搜索" size="35"></span>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (75, 41, 802001, 801000, null, to_date('25-12-2016 14:31:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 14:31:53', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">面试详情</div>\n<div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl30 pdr10">面试者:</span>\n    <span>李大志</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20 pdr10">面试职位:</span>\n    <span>产品经理</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <span>11月23日(本周二)14:30</span>\n  </div> \n  <div class="dt10">\n    <span class="pdl20 top">面试地点：</span>\n    <div class="pdr30 float-r" style="width: 205px;">上海市黄浦区马当路388号(SOHO复兴广场)E栋3楼</div>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div> ', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (41, 11, 802001, 801000, null, to_date('21-12-2016 15:02:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 12:54:52', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="pdall5">\n  <span class="dt_left f12 sp3"><i class="x"></i>姓名</span><span class="dt_right"><input class="dt_input1 vv notnull" type="text"></span>\n</div>\n<div class="h10"></div>\n<div class="">\n<span class="dt_left f12 sp3">性别</span><input class="dt_input1 vv notnull" id="v_sex" type="hidden">\n <DATAPARAM id="132" type="RADIO">\n <span class="pdr100 pdl5">\n   <input class="radio" type="radio" id="radio%s" name="sex" value="%s">\n   <label class="dark-grey f12 pdl5" for="radio%s">%s</label>\n </span>\n </DATAPARAM>\n</div>\n<div class="h10"></div>\n<div class="pd5">\n  <span class="dt_left f12 sp3"><i class="x"></i>手机</span>\n  <span class="dt_right"><input class="dt_input1 vv notnull" id="mobile" type="text" maxlength="11" name="tel"/></span><br>\n  <span class="" id="moileMsgView"><span class="dt_left"></span><span class="f10" id="moileMsg"></span></span>\n</div>\n<div class="pdall5">\n  <span class="dt_left f12 sp3"><i class="x"></i>验证码</span><span class="dt_right"><input class="vv notnull" id="code1" type="text" style="width:133px"><span class="pdr15"></span><input class="f12" type="button" id="btn" value="验证码" style="width: 80px;height: 32px"/></span>        \n</div>\n<div class="h15"></div>             \n<div class="pdall5">\n  <span class="dt_left f12 sp3"><i class="x"></i>密码</span><span class="dt_right"><input class="dt_input1 vv notnull" id="pas1" type="password"></span><br>\n  <span class="gone" id="pas1TipView"><span class="dt_left"></span><span class="f10" id="pas1Tip"></span></span>\n</div>\n<div class="h15"></div>\n<div class="pdall5">\n  <span class="dt_left f12 sp3"><i class="x"></i>重复密码</span><span class="dt_right"><input class="dt_input1 vv notnull" id="pas2" type="password"></span><br>\n  <span class="" id="pas2TipView"><span class="dt_left"></span><span class="f10" id="pas2Tip"></span></span>\n</div>       \n<div class="pd5">\n <span class="dt_left f12 sp3"><i class="x"></i>公司名称</span><span class="dt_right"><input class="dt_input1 vv notnull" type="text"></span>\n</div>\n<div class="h5"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (2, 10, 802001, 801000, null, to_date('12-12-2016 21:51:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 12:54:32', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 1, null, null, '<div class="pdall5">\n  <span class="dt_left f12 sp3"><i class="x"></i>姓名</span><span class="dt_right"><input class="dt_input1 vv notnull" type="text"></span>\n</div>\n<div class="h10"></div>\n<div class="">\n<span class="dt_left f12 sp3">性别</span><input class="dt_input1 vv notnull" id="v_sex" type="hidden">\n <DATAPARAM id="132" type="RADIO">\n <span class="pdr100 pdl5">\n   <input class="radio" type="radio" id="radio%s" name="sex" value="%s">\n   <label class="dark-grey f12 pdl5" for="radio%s">%s</label>\n </span>\n </DATAPARAM>\n </div>\n<div class="h10"></div>\n<div class="pd5">\n  <span class="dt_left f12 sp3"><i class="x"></i>手机</span>\n  <span class="dt_right"><input class="dt_input1 vv notnull" id="mobile" type="text" maxlength="11" name="tel"/></span><br>\n  <span class="" id="moileMsgView"><span class="dt_left"></span><span class="f10" id="moileMsg"></span></span>\n</div>\n<div class="pdall5">\n  <span class="dt_left f12 sp3"><i class="x"></i>验证码</span><span class="dt_right"><input class="vv notnull" id="code1" type="text" style="width:133px"><span class="pdr15"></span><input class="f12" type="button" id="btn" value="验证码" style="width: 80px;height: 32px"/></span>        \n</div>\n<div class="h15"></div>             \n<div class="pdall5">\n  <span class="dt_left f12 sp3"><i class="x"></i>密码</span><span class="dt_right"><input class="dt_input1 vv notnull" id="pas1" type="password"></span><br>\n  <span class="gone" id="pas1TipView"><span class="dt_left"></span><span id="pas1Tip"></span></span>\n</div>\n<div class="h15"></div>\n<div class="pdall5">\n  <span class="dt_left f12 sp3"><i class="x"></i>重复密码</span><span class="dt_right"><input class="dt_input1 vv notnull" id="pas2" type="password"></span><br>\n  <span class="gone" id="pas2TipView"><span class="dt_left"></span><span id="pas2Tip"></span></span>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (93, 59, 802001, 801000, null, to_date('31-12-2016 10:47:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:08:18', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 6, null, null, 
        '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n<div class="pd20 dt10"><span class="pdl5 bg-focus"></span><span class="sp2 f16 pd10">工作总结</span></div>\n<div class="dt10">\n  <span class="dt_1 f14 sp1"><i class="x"></i>行业经验</span><span class="dt_2"><input class="h35 full-width vv" name="vvn" onblur="intInput(this,1)" maxlength="2" /></span><span class="f14 sp1 h35 dt_3">年</span>\n<span class="dt_1 f14 sp1"><i class="x"></i>管理经验</span><span class="dt_2"><input class="h35 full-width vv" name="vvn" onblur="intInput(this,1)" maxlength="2" /></span><span class="f14 sp1 h30 dt_3">年</span>\n</div>\n<div class="dt10">\n  <span class="dt_1 f14 sp1"><i class="x"></i>管辖区域范围</span>\n  <span class="dt_2">\n    <select class="full-width notnull vv"><option></option>\n    <DATAPARAM id="273" type="SELECT"><option value="%s">%s</option></DATAPARAM></select>\n  </span>\n</div>\n<div class="h30"></div>                \n<div class="pd20 dt10"><span class="pdl5 bg-focus"></span><span class="sp2 f16 pd10">整体印象</span></div>\n<div class="dt10">\n<span class="dt_1 f14 sp1"><i class="x"></i>婚姻状况</span>\n<span class="dt_2"><select class="full-width notnull vv"><option></option><DATAPARAM id="139" type="SELECT"><option value="%s">%s</option></DATAPARAM></select></span><span class="dt_3"></span>\n<span class="dt_1 f14 sp1"><i class="x"></i>沟通水平</span>\n<span class="dt_2">\n<select class="full-width notnull vv"><option></option>\n<DATAPARAM id="271" type="SELECT"><option value="%s">%s</option></DATAPARAM></select>\n</span>\n</div>\n<div class="dt10">\n  <span class="dt_1 f14 sp1 top"><i class="x"></i>性格</span><input type="hidden" class="vv" name="vvn" id="v_nature"/>\n  <span class="dt_right">\n    <DATAPARAM id="270" type="CHECKBOX"><span class="pd10"><input class="checkbox" id="checkbox%s" type="checkbox" value="%s"/><label class="f14 sp1 pdl5" for="checkbox%s">%s</label></span></DATAPARAM>   \n  </span>\n</div>\n<div class="h10"></div>\n<div class="dt_1 f14 sp1 dt10">语言水平</div><input type="hidden" class="vv" name="vvn" id="v_language"/>\n<div class="dt10 languageView_">\n<div>\n<span class="dt_1"><i class="x"></i><input class="f14 sp1 no-border" value="中文" readonly size="5"/>\n                   <select class="gone languageName_">\n                   <DATAPARAM id="225" type="SELECT"><option value="%s">%s</option></DATAPARAM></select></span>                 \n<span class="dt_2"><select class="full-width languageValue_">\n                   <DATAPARAM id="272" type="SELECT"><option value="%s">%s</option></DATAPARAM></select></span>\n<span class="dt_3"></span>                      \n<span class="dt_1 f14 sp1"><i class="x"></i><input class="f14 sp1 no-border" value="英语" readonly size="5"/>\n                   <select class="gone languageName_">\n                   <DATAPARAM class="f14 sp1" id="225" type="SELECT"><option value="%s">%s</option></DATAPARAM></select></span>\n<span class="dt_2"><select class="full-width languageValue_">\n                   <DATAPARAM class="f14 sp1" id="272" type="SELECT"><option value="%s">%s</option></DATAPARAM></select></span>\n</div>\n</div>\n<div>\n  <span class="dt_1 f14 sp1"></span><span class="color-focus pointer addlanguage_ text-l">+新的语种</span>\n</div>\n<div class="dt20">\n  <span class="dt_1 f14 sp1 top"><i class="x"></i>缺点/疑惑</span>\n  <span class="dt_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n</div>\n<div class="pd20 dt10"><span class="pdl5 bg-focus"></span><span class="sp2 f16 pd10">备注</span></div>\n<div class="dt10">\n  <span class="dt_1 f14 sp1 top"></span>\n  <span class="dt_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n</div>\n</div>', 
        null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (76, 47, 802001, 801000, null, to_date('25-12-2016 14:47:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 14:47:25', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h15"></div>\n<div class="text-c pdall10">\n  <span class="f18 pdall10 color-focus"><span>申请成功!</span></span>\n</div>\n\n<div class="h15"></div>\n<div class="pdl50 bg-white" style="">\n  <span class="pdl50 grey">我们会在XX小时内审核完毕,敬请留意。</span>\n</div>\n    \n<div class="h30 center pdall20">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (49, 32, 802001, 801000, null, to_date('23-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人反馈</div><div class="h15"></div>\n\n<div class="pdall10 bg-white center">\n<div class="bg-white center" style="">\n    <span class="">反馈结果:</span>\n    <span class="pd10"><input class="radio-default  proinfo_ vv" type="radio" id="radio1" name="proinfo" checked value="1"><label class="pdl5" for="radio1">接收offer</label></span>\n    <span class="pdr100"><input class="radio-default  proinfo_ vv" type="radio" id="radio2" name="proinfo" value="2"><label class="pdl5" for="radio2">拒绝offer</label></span>\n</div>\n <div class="dt10 proinfo_ext_ gone" id="proinfo2">\n  <span class="top">拒绝原因：</span>\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div> \n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (26, 28, 802001, 801000, null, to_date('18-12-2016 09:07:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 22:03:50', 'dd-mm-yyyy hh24:mi:ss'), '测试用', 250009, null, null, '<div class="dt10 pdl30 pdr5 pointer dataline_" data="199"><span class="pdl15">LV Offer</span><span class="float-r grey f9">2016.12.15</span></div>\n<div class="dt10 pdl30 pdr5 pointer dataline_" data="101"><span class="pdl15">离职证明</span><span class="float-r grey f9">2016.11.24</span></div>\n<div class="dt10 pdl30 pdr5 pointer dataline_" data="102"><span class="pdl15">学位证</span><span class="float-r grey f9">2016.11.22</span></div>\n<div class="dt10 pdl30 pdr5 pointer dataline_" data="103"><span class="pdl15">学历证明</span><span class="float-r grey f9">2016.11.22</span></div>\n<div class="dt10 pdl30 pdr5 pointer dataline_" data="104"><span class="pdl15">体检证明</span><span class="float-r grey f9">2016.11.19</span></div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (77, 48, 802001, 801000, null, to_date('25-12-2016 14:57:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:03:25', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人离职原因</div>\n<div class="h15"></div>\n<div class="bg-white center">\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330027', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (19, 26, 802001, 801000, null, to_date('18-12-2016 09:06:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:15:55', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<select class="processStatus_">\n  <option>所有流程</option>\n  <DATAPARAM id="244" type="select"><option value="%s">%s</option></DATAPARAM>\n</select>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (27, 27, 802001, 801000, null, to_date('18-12-2016 09:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-01-2017 19:04:24', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<select class="actionType_">\n  <option>所有事件</option>\n  <DATAPARAM id="251" type="SELECT"><option value="%s">%s</option></DATAPARAM>\n</select>\n<span class="pdl20">\n  <input type="text" class="laydate-icon" readonly="readonly" id="startDate" onclick="laydate({format: ''YYYY-MM-DD'', min: laydate.now(-60), max: laydate.now()})" /> ~ \n  <input type="text" class="laydate-icon" readonly="readonly" id="endDate" onclick="laydate({format: ''YYYY-MM-DD'', min: laydate.now(-60), max: laydate.now()})" />\n</span>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (115, 91, 802001, 801000, null, to_date('22-01-2017 15:19:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 00:25:41', 'dd-mm-yyyy hh24:mi:ss'), '教育', 11, null, 'B_Candidate_CVEducation', 'decode(c3,null,''起始时间不能为空！<br>'','''') || decode(c4,null,''结束时间不能为空！<br>'','''') || decode(c5,null,''学校不能为空！<br>'','''') || decode(c6,null,''专业不能为空！<br>'','''') || decode(c7,null,''学历不能为空！<br>'','''')', null, null, '3', 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (117, 91, 802001, 801000, null, to_date('22-01-2017 15:19:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 00:25:57', 'dd-mm-yyyy hh24:mi:ss'), '证书', 10, null, 'B_Candidate_CVCertificate', 'decode(c3,null,''时间不能为空！<br>'','''') || decode(c4,null,''证书不能为空！<br>'','''')', null, null, '5', 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (114, 91, 802001, 801000, null, to_date('22-01-2017 15:19:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 00:25:31', 'dd-mm-yyyy hh24:mi:ss'), '基本详情', 11, null, 'B_Candidate', 'decode(c8,null,''中文姓名不能为空！<br>'','''') || decode(c10,null,''出生日期不能为空！<br>'','''')  || decode(c15,null,''居住城市不能为空！<br>'','''')|| decode(c21,null,''手机号码不能为空！<br>'','''') || decode(c22,null,''个人邮箱不能为空！<br>'','''') || decode(c23,null,''国籍不能为空！<br>'','''')', null, null, '1', 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (116, 91, 802001, 801000, null, to_date('22-01-2017 15:19:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 00:25:48', 'dd-mm-yyyy hh24:mi:ss'), '培训', 10, null, 'B_Candidate_CVTrain', 'decode(c3,null,''起始时间不能为空！<br>'','''') || decode(c4,null,''结束时间不能为空！<br>'','''') || decode(c6,null,''培训内容不能为空！<br>'','''')', null, null, '4', 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (118, 91, 802001, 801000, null, to_date('22-01-2017 15:19:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 00:26:04', 'dd-mm-yyyy hh24:mi:ss'), '工作经验', 11, null, 'B_Candidate_CVWork', 'decode(c3,null,''起始时间不能为空！<br>'','''') || decode(c4,null,''结束时间不能为空！<br>'','''') || decode(c5,null,''公司名称不能为空！<br>'','''') || decode(c9,null,''职位不能为空！<br>'','''') || decode(c16,null,''工作职责不能为空！<br>'','''')', null, null, '7', 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (119, 91, 802001, 801000, null, to_date('22-01-2017 15:19:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 00:26:12', 'dd-mm-yyyy hh24:mi:ss'), '项目经验', 10, null, 'B_Candidate_CVProject', 'decode(c3,null,''起始时间不能为空！<br>'','''') || decode(c4,null,''结束时间不能为空！<br>'','''') || decode(c5,null,''公司名称醋能为空！<br>'','''') || decode(c7,null,''项目简介不能为空！<br>'','''') || decode(c8,null,''项目职责不能为空！<br>'','''')', null, null, '8', 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (109, 59, 802001, 801000, null, to_date('13-01-2017 14:50:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-01-2017 13:48:41', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 66, null, null, '<div class="dt10"></div>\n<div>\n  <span class="dt_1">\n    <select class="full-width languageName_"><option></option>\n    <DATAPARAM id="226" type="select"><option value="%s">%s</option></DATAPARAM></select>\n  </span>\n  <span class="dt_2">\n    <select class="full-width languageValue_"><option></option>\n    <DATAPARAM id="272" type="select"><option value="%s">%s</option></DATAPARAM></select>\n  </span>\n  <span class="red pointer delete_"><img class="middle" src="../doc/images/HC/delete.png">删除该条目<span>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (84, 19, 802001, 801000, null, to_date('27-12-2016 15:33:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 19:43:27', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-任职经历', 6, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (86, 19, 802001, 801000, null, to_date('27-12-2016 15:35:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:15:18', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-项目经验', 8, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left f14 sp3"><span class="red">*</span>起止时间</span>\n    <span class="dt_right">\n      <input class="dt_input3 laydate-icon vv" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})"><span> - </span><input class="dt_input3 laydate-icon vv" id="totime" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})">\n      <span class="nowrap"><input class="checkbox mgl10" type="checkbox" id="checkbox1"><label class="dark-grey f14 sp2" for="checkbox1"> 至今</label></span>\n    </span>\n    \n    <span class="dt_left f14 sp3"><span class="red">*</span>公司名称</span><span class="dt_right"><input class="dt_input1 autocomplete-company vv" name="vvn"></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left f14 sp3">行业</span><span class="dt_right">\n      <script type="text/javascript" src="../doc/selector/industry_func.js"></script>\n      <input id="btn_IndustryID_2" class="dt_input1 vv" name="vvn" onclick="IndustrySelect_2($(this).parent())" />\n      <input id="IndustryID_2" type="hidden" name="IndustryID_2" />\n    </span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left f14 sp3 top"><span class="red">*</span>项目介绍</span><textarea class="textareaWidth vv" name="vvn"></textarea></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left f14 sp3 top"><span class="red">*</span>项目职责</span><textarea class="textareaWidth vv" name="vvn"></textarea></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left f14 sp3 top">项目成就</span><textarea class="textareaWidth vv" name="vvn"></textarea></span>\n  </div>\n  <div class="text-r pdr50">\n    <span class="red delete_"><img class="middle" src="../doc/images/HC/delete.png">删除该条目</span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (43, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:06:02', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-技能标签', 9, null, null, '<div class="%s">\n<div class="tab-hc dt10 bold">技能标签</div>\n  <div class="pdl25">\n    <div class="dt5">职业：<br><span class="tab-dot-s green">%s</span></div>\n    <div class="dt5">团队管理：<br><span class="tab-dot-s green">%s</span></div>\n    <div class="dt5">软件技能：<br><span class="tab-dot-s green">%s</span></div>\n  </div>\n</div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (113, 3, 802001, 801000, null, to_date('22-01-2017 11:43:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-03-2017 16:51:16', 'dd-mm-yyyy hh24:mi:ss'), '邀请面试-JOB LIST', 4, null, null, '<div class="dt10">\n  <span class="pdl15">\n  <input class="radio" type="radio" id="radio%s" name="v_radio1" value="%s"></span>\n  <label for="radio%s" class="mgl10">\n    <span class="text-l bold f14">%s</span>\n    <span class="float-r text-l">%s</span>\n    <span class="float-r dt_left pdr20">%s</span>\n  </label>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (64, 9, 802001, 801000, null, to_date('23-12-2016 20:40:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-03-2017 19:16:54', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 2, null, null, '<div class="dt10">\n  <span class="pd10 dt3 bg-focus" style="border-radius: 2px;"><img class="middle" src="../doc/images/HC/calendar_l.png" /></span>\n  <span class="bg-white dt2 sp2 f14 pd10" style="border-radius: 2px;" width="20">%s</span> \n  <span class="pdl20 dark-grey"><span class="btn-focus f12 mg5 pd10 dt2 h20 mgnl10 pointer taskType_" style="border-radius: 2px;" data="">所有 (%s)</span><span class="f12 pd10 dt2 h20 mg5 pointer taskType_" style="border-radius: 2px;" data="%s">%s (%s)</span><span class="f12 pd10 dt3 h20 mg5 pointer taskType_" style="border-radius: 2px;"  data="%s">%s (%s)</span></span>\n</div>\n<div class="dt5" data="%s">\n  <div class="bg-white dt10 text-c color-focus">\n    <a class="pointer taskList_">展开事项</a>\n  </div>\n</div>\n<div class="h20"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (98, 9, 802001, 801000, null, to_date('04-01-2017 10:15:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 20:41:06', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 4, null, null, '<div class="h30">\n  <span class="dt_left">临时候选人</span>\n  <span class="dt_left">%s</span>\n</div>\n<div class="h30 light-grey">\n  <span class="dt_left">入库中</span>\n  <span class="dt_left">%s</span>      \n</div>\n<div class="h30">\n  <span class="dt_left">入库候选人</span>\n  <span class="dt_left">%s</span>      \n</div>\n<div class="h30 light-grey">%s</div>\n<div class="h30"></div>    \n<div class="h30 light-grey">\n  <span class="dt_left">被关注</span>\n  <span class="dt_left">%s</span>         \n</div>\n<div class="h30">\n  <span class="dt_left">邀请面试</span>\n  <span class="dt_left">%s</span>       \n</div>\n<div class="h30">\n  <span class="dt_left">面试</span>\n  <span class="dt_left">%s</span>       \n</div>\n<div class="h30">\n  <span class="dt_left">offer</span>\n  <span class="dt_left">%s</span>       \n</div>\n<div class="h30">\n  <span class="dt_left">入职</span>\n  <span class="dt_left">%s</span>       \n</div>\n<div class="h30 light-grey">\n  <span class="dt_left">离职</span>\n  <span class="dt_left">%s</span>       \n</div>    \n<div class="h30"></div>              \n<div class="h30">\n  <span class="dt_left">开票金额</span>\n  <span class="dt_left">%s</span>       \n</div>   \n<div class="h30">\n  <span class="dt_left">收款金额</span>\n  <span class="dt_left">%s</span>       \n</div> \n<div class="h30">\n  <span class="dt_left">收款金额</span>\n  <span class="dt_left">%s</span>       \n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (89, 59, 802001, 801000, null, to_date('30-12-2016 13:38:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:07:27', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 2, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt5">\n    <span class="dt_1 f14 sp1 f14 sp1"><i class="x"></i>职位</span><span class="dt_2"><input class="dt_input1 notnull vv" name="vvn" /></span><span class="dt_3"></span>\n    <span class="dt_1 f14 sp1"><span></span>职级</span>\n    <span class="dt_2"><input class="dt_input1 vv" name="vvn" /></span>\n  </div>\n  <div class="dt5">\n    <span class="dt_1 f14 sp1"><i class="x"></i>行业</span>\n    <span class="dt_2">\n      <script type="text/javascript" src="../doc/selector/industry_func.js"></script>\n      <input id="btn_IndustryID" class="dt_input1 vv" name="vvn" onclick="IndustrySelect($(this).parent())" />\n      <input id="IndustryID" type="hidden" name="IndustryID" />\n    </span><span class="dt_3"></span>\n    <span class="dt_1 f14 sp1"><i class="x"></i>城市</span>\n    <span class="dt_2">\n      <script class="dt_input1" type="text/javascript" src="../doc/selector/city_func.js"></script>\n      <input id="btn_jobArea" class="dt_input1 vv" onclick="jobAreaSelect($(this).parent())" />\n      <input id="jobAreaID" type="hidden" name="jobAreaID" />\n    </span>\n  </div>\n  <div class="dt5">\n   <span class="dt_1 f14 sp1"><i class="x"></i>期望薪资</span><span class="dt_2"><input class="dt_input1 notnull vv" id="money" name="vvn" onblur="doubleInput(this,1)" maxlength="6" /></span>\n   <span class="dt_3 f14 sp1">万/年</span>\n   <span class="dt_1 f14 sp1"><i class="x"></i>Contractor</span><input type="hidden" class="vv" id="v_contractorZZZ" value="1" size="3">\n   <span class="dt_2">\n     <input class="radio-default" type="radio" id="contractor1ZZZ" name="contractorZZZ" value="1"> <label class="f14 sp1" for="contractor1ZZZ">接受</label>\n     <span class="pdl100"><input class="radio-default" type="radio" id="contractor0ZZZ" name="contractorZZZ" value="0"> <label class="f14 sp1" for="contractor2ZZZ">不接受</span>\n   </span>\n   <span class="dt_3"></span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (110, 9, 802001, 801000, null, to_date('19-01-2017 15:15:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-01-2017 15:15:24', 'dd-mm-yyyy hh24:mi:ss'), 'NEW', 5, null, null, '<div class="h100">\n  <div>您有新消息，请刷新！</div>\n  <div class="pdall50 bold">%s</div>\n</div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (39, 19, 802001, 801000, null, to_date('21-12-2016 14:41:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:31:00', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-属性', 2, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (80, 40, 802001, 801000, null, to_date('25-12-2016 15:21:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:23:54', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f10  text-c h100 btn-focus center">\n  <img class="pd60 img50" src="../doc/images/HC/face_c1_m.png"/><br>\n  <span class="pdl10 black">Kate<span class="grey">(Burberry|HRD)</span></span>\n  <div class="h15"></div>\n</div>\n<div class="bg-white text-c" style="">\n  <ul style="height:80px;" class="center">\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_emai.png"/><span class="pdl10">xxxxxx@xxxx.com</span></li>\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_phone.png"/><span class="pdl10">400-39999999229</span></li>\n  </ul>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (74, 35, 802001, 801000, null, to_date('25-12-2016 14:25:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:47:07', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">顾问面试</div><div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <input class="datepicker notnull vv" size="30">\n    <span class="pdl10 nowrap"><input class="checkbox" type="checkbox" id="checkbox1"><label class="pdl3" for="checkbox1">提醒</label></span>\n  </div>\n  <div class="dt10">\n' || chr(9) || '  <span class="pdl20 top">面试地点：</span>\n' || chr(9) || '  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '220003', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (90, 59, 802001, 801000, null, to_date('30-12-2016 13:39:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:07:37', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 3, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt5">\n    <span class="dt_1 f14 sp1 top"><i class="x"></i>意向公司</span>\n    <span class="dt_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (91, 59, 802001, 801000, null, to_date('30-12-2016 13:40:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:07:48', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 4, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt5">\n    <span class="dt_1 f14 sp1 top"><i class="x"></i>屏蔽公司</span>\n    <span class="dt_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (55, 36, 802001, 801000, null, to_date('23-12-2016 10:34:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:49:10', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">安排面试</div>\n<div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <input class="datepicker notnull vv" size="30">\n    <span class="pdl10 nowrap"><input class="checkbox" type="checkbox" id="checkbox1"><label class="pdl3" for="checkbox1">提醒</label></span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20 top">面试地点：</span>\n    <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330002', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (69, 45, 802001, 801000, null, to_date('24-12-2016 15:19:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-01-2017 00:08:50', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '330143', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (102, 22, 802001, 801000, null, to_date('06-01-2017 10:55:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:19:41', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB', 3, null, null, '<div class="bg-white clearfix dt10 dataline_" data="%s" data1="%s">\n  <div class="float-l pdr100">\n    <span class="pdl20"><img class="middle" src="../doc/images/HC/status_%s.png"></span>\n    <span class="pdl10">%s</span>\n    <span class="pd10">|</span>\n    <span class="pd10">%s</span>\n  </div>\n  <div class="float-l pdl100 %s">\n    <span class="pdl40"><img class="middle" src="../doc/images/HC/cp_zw.png"></span>\n    <span class="pdl10 bold">%s</span>\n  </div>\n  <div class="float-r">\n    <span class="pd20 grey">%s</span>\n  </div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (37, 12, 802001, 801000, null, to_date('21-12-2016 13:37:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 11:35:03', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="title color-focus bold f18 center dt20">完善公司信息</div>\n<div class="dt10">\n  <span class="dt_left f12 sp3 ">公司简称</span>\n  <span class="dt_right"><input class="dt_input1 notnull vv" type="text"></span>\n</div>\n<div class="dt10">\n  <span class="dt_left f12 sp3 "><i class="x"></i>所属行业</span>\n  <span class="dt_right"><select class="selOut dt_right vv notnull"><DATAPARAM id="1001" type="selectPage"><option value="%s">%s</option></DATAPARAM></select></span>\n</div>\n\n<div class="dt10">\n  <span class="dt_left f12 sp3 "><i class="x"></i>公司性质</span>\n  <span class="dt_right"><select class="dt_right vv notnull"><DATAPARAM id="220" type="select"><option value="%s">%s</option></DATAPARAM></select></span>\n</div>\n\n<div class="dt10">\n<span class="dt_left f12 sp3 "><i class="x"></i>公司规模</span>\n<span class="dt_right"><select class="dt_right notnull vv"><DATAPARAM id="222" type="select"><option value="%s">%s</option></DATAPARAM></select>\n</span>\n</div>\n<div class="dt10">\n  <span class="dt_left f12 sp3 ">成立时间</span>\n  <span class="dt_right"><input class="laydate-icon notnull vv" style="width:217px" onclick="laydate({format: ''YYYY-MM-DD''})"></span>\n</div>\n\n<div class="dt10">\n  <span class="dt_left f12 sp3 "><i class="x"></i>公司地点</span>\n  <span class="dt_right"><script type="text/javascript" src="../doc/selector/city_func.js"></script><input id="btn_residency" class="dt_input1 vv" onclick="residencySelect($(this).parent())" /><input id="residency" type="hidden" name="residency" /></span>\n</div>\n\n <div class="dt10">\n  <span class="dt_left f12 sp3 "><i class="x"></i>详细地址</span>\n  <span class="dt_right"><input class="dt_input1 text vv notnull"placeholder="详细地址"></input></span>\n</div>\n<div class="dt10">\n  <span class="dt_left top f12 sp3 ">公司介绍</span>\n  <span class="dt_right"><textarea class="vv notnull" style="width:240px" placeholder="公司介绍"></textarea></span> \n</div>\n \n <div class="center dt30">\n  <button type="submit" class="btn-focus h30 next_" style="width:98px">下一步</button>\n </div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (125, 10, 802001, 801000, null, to_date('07-02-2017 14:09:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 09:31:50', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 3, null, null, '<div class="pdall10">\n  <span class="dt_left f12 sp3"><i class="x"></i>个人邮箱</span><span class="dt_right"><input class="dt_input1 vv notnull" id="personalEmail" type="text"></span><br>\n  <span class="gone" id="personalEmailView"><span class="dt_left"></span><span id="personalEmailcheck" class="red"></span></span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3">座机</span><span class="dt_right"><input class="dt_input1 vv" type="text"></span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3"><i class="x"></i>身份证号</span><span class="dt_right"><input class="dt_input1 vv notnull" type="text"></span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3 top"><i class="x"></i>头像</span>\n  <span class="dt_right">\n    <a class="uploadPic1_"><img id="pic1" width="100" height="100" src="../doc/images/HC/uploadFace.png" ></a>\n    <input id="uploadpic1" type="file"  style="display: none"/>\n    <input type="hidden" class="vv" id="v_pic1">\n  </span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3 top"><i class="x"></i>身份证照片</span>\n  <span class="dt_right">\n    <a class="uploadPic2_"><img id="pic2" width="120" height="90" src="../doc/images/HC/uploadphotof.png" ></a>\n    <input id="uploadpic2" type="file" style="display: none"/>\n    <input type="hidden" class="vv" id="v_pic2">\n    <span class="pd5"><span>\n    <a class="uploadPic3_"><img id="pic3" width="120" height="90" src="../doc/images/HC/uploadphotob.png" ></a>\n    <input id="uploadpic3" type="file" style="display: none"/>\n    <input type="hidden" class="vv" id="v_pic3">\n  </span>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (128, 92, 802001, 801000, null, to_date('09-02-2017 11:48:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 11:48:35', 'dd-mm-yyyy hh24:mi:ss'), '工作期望', 11, null, 'B_Candidate', 'decode(c46,null,''职位不能为空！<br>'','''') || decode(c48,null,''行业不能为空！<br>'','''') || decode(c49,null,''城市不能为空！<br>'','''') || decode(c51,null,''期望薪资不能为空！<br>'','''') ', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (101, 22, 802001, 801000, null, to_date('06-01-2017 10:55:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-01-2017 08:35:34', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<div class="display-td middle f16">\n  <span class="pdr10">\n  <select class="status_ bg-light-grey">\n       <option value="">所有类型</option>\n       <option value="0">没面试过</option>\n       <option value="1">进行中</option>\n       <option value="9">已结束</option>\n  </select>\n  </span>\n  <span class="pdr10"><input type="text" class="keyword_" placeholder="搜索"></span>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (21, 28, 802001, 801000, null, to_date('18-12-2016 09:07:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 17:58:10', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '$("#file_id").val("%s");\n$(".fileName_").html("%s");\n$(".fileName_").removeClass("light-grey");\n$(".delFile_").removeClass("gone");\n$("#file_type").val("%s");\n$("#file_url").val("%s");', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (100, 22, 802001, 801000, null, to_date('06-01-2017 10:55:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-02-2017 18:36:15', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="h10"></div>\n<div class="bg-white box-link dataline_" data="%s" data1="%s">\n  <div class="f9 text-c pdall10 float-l" width="80">\n    <img class="img20 %s" style="margin-top: -50px;" src="../doc/images/HC/marker_good.png">\n    <img class="img50" src="../doc/images/HC/face_c%s_m.png">\n  </div>\n  <div class="pdall15 float-l">\n      <div class="f14">\n          <span class="pdr5 bold f19 pointer detail_">%s</span>\n          <span class="pdr10 f11">（%s | %s）</span>\n          <span class="pdl40 f11 grey"><img src="../doc/images/HC/location.png">%s</span>\n      </div>\n      <div class="h10"></div>\n      <div class="f12 light-blue">\n          <span class="pdr15">%s</span>\n          <span class="pd15">%s岁</span>\n          <span class="pd15">%s</span>\n          <span class="pd15">%s年工作经验</span>\n          <span class="pd15">%sK</span>\n      </div>\n  </div>\n  <div class="pdall10 f8 text-r">\n      <div class="light-grey">#%s</div>\n      <div class="h15"></div>\n      <div class="grey dt10">\n        <span>%s浏览</span>\n        <span class="pd5 f8">|</span>\n        <span>%s<img class="" src="../doc/images/HC/cp_zw.png"></span>\n        <span class="pd5 f8">|</span>\n        <span>%s<img class="" src="../doc/images/HC/gz.png"></span>\n      </div>\n  </div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (127, 92, 802001, 801000, null, to_date('09-02-2017 11:48:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 11:48:15', 'dd-mm-yyyy hh24:mi:ss'), '工作经验', 11, null, 'B_Candidate_CVWork', 'decode(c7,null,''行业不能为空！<br>'','''') || decode(c11,null,''月薪不能为空！<br>'','''')  || decode(c12,null,''年薪不能为空！<br>'','''')|| decode(c13,null,''薪资构成不能为空！<br>'','''') || decode(c14,null,''汇报对象不能为空！<br>'','''') || decode(c15,null,''下属人数不能为空！<br>'','''')|| decode(c24,null,''离职期不能为空！<br>'','''')|| decode(c29,null,''工作业绩不能为空！<br>'','''')|| decode(c25,null,''离职原因不能为空！<br>'','''')', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (129, 92, 802001, 801000, null, to_date('09-02-2017 11:48:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 11:48:54', 'dd-mm-yyyy hh24:mi:ss'), '技能标签', 11, null, 'B_Candidate', 'decode(c52,null,''职业技能不能为空！<br>'','''') || decode(c54,null,''软件技能不能为空！<br>'','''') ', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (130, 92, 802001, 801000, null, to_date('09-02-2017 11:49:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 11:49:19', 'dd-mm-yyyy hh24:mi:ss'), '工作总结', 11, null, 'B_Candidate_HCComment', 'decode(c20,null,''行业经验不能为空！<br>'','''') || decode(c21,null,''管理经验不能为空！<br>'','''') ', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (131, 92, 802001, 801000, null, to_date('09-02-2017 11:49:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 11:49:40', 'dd-mm-yyyy hh24:mi:ss'), '整体印象', 11, null, 'B_Candidate_HCComment', 'decode(c10,null,''婚姻状况不能为空！<br>'','''') || decode(c14,null,''沟通水平不能为空！<br>'','''') || decode(c13,null,''性格不能为空！<br>'','''') || decode(c16,null,''缺点/疑惑不能为空！<br>'','''') ', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (46, 6, 802001, 801000, null, to_date('22-12-2016 11:22:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-02-2017 16:06:30', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<span class="pdr20">\n  <select class="bg-light-grey job_" >\n       <option value="">所有候选人职位</option>\n       <DATATABLE id="108" type="select" limit="c2=AUID"><option value="%s">%s</option></DATATABLE>\n  </select>\n</span>\n<span class="pd20"></span>\n<span><input type="text" class="keyword_" placeholder="搜索" size="35"></span>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (96, 52, 802001, 801000, null, to_date('02-01-2017 16:55:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:55:22', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '331004', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (57, 38, 802001, 801000, null, to_date('23-12-2016 10:39:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:52:13', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">安排面试</div>\n<div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl30 pdr10">面试者:</span>\n    <span>李大志</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20 pdr10">面试职位:</span>\n    <input class="notnull vv" id="" size="30">\n  </div>\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <input class="datepicker notnull vv" size="30">\n  </div>\n  <div class="dt10">\n    <span class="pdl20">备选时间：</span>\n    <input class="datepicker notnull vv" size="30">\n  </div>    \n  <div class="dt10">\n    <span class="pdl20 top">面试地点：</span>\n    <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330002', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (97, 51, 802001, 801000, null, to_date('02-01-2017 17:17:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 17:17:18', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '331002', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (95, 50, 802001, 801000, null, to_date('02-01-2017 16:54:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:54:49', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '331001', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (51, 34, 802001, 801000, null, to_date('23-12-2016 10:12:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人入职</div>\n<div class="h15"></div>\n\n<div class="bg-white center">\n  <div>\n    <span class="pdl30">反馈结果:</span><input type="hidden" id="code" value="330007">\n    <span class="pd20"><input class="radio-default" type="radio" id="radio1" name="proinfo" checked value="330007"><label class="pdl5" for="radio1">已入职</label></span>\n    <span class="pdr100"><input class="radio-default" type="radio" id="radio2" name="proinfo" value="330047"><label class="pdl5" for="radio2">未入职</label></span>\n  </div>\n   <div class="dt10  proinfo_ext_ gone pdr10" id="reasonView">\n    <span class="pdl20 top">未入职原因：</span>\n    <textarea class="bg-light-grey notnull vv" id="reason" cols="32"></textarea>\n  </div>\n</div>', '330010', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (11, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 11:21:16', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-属性', 2, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (22, 29, 802001, 801000, null, to_date('18-12-2016 09:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 23:41:47', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人未入职原因</div><div class="h15"></div>\n<div class="bg-white center">\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330144', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (63, 9, 802001, 801000, null, to_date('23-12-2016 13:26:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 20:40:14', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (29, 3, 802001, 801000, null, to_date('21-12-2016 12:04:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 12:04:35', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (24, 30, 802001, 801000, null, to_date('18-12-2016 09:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:56:25', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人入职</div>\n<div class="h15"></div>\n\n<div class="pdall10 bg-white center">\n<div class="bg-white center" style="">\n    <span class="">反馈结果:</span>\n    <span class="pd10"><input class="radio-default  proinfo_ vv" type="radio" id="radio1" name="proinfo" checked value="1"><label class="pdl5" for="radio1">确认入职</label></span>\n    <span class="pdr100"><input class="radio-default  proinfo_ vv" type="radio" id="radio2" name="proinfo" value="2"><label class="pdl5" for="radio2">拒绝入职</label></span>\n</div>\n <div class="dt10 proinfo_ext_ gone" id="proinfo2">\n  <span class="top">拒绝原因：</span>\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div> \n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330007', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (60, 42, 802001, 801000, null, to_date('23-12-2016 11:01:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 11:01:44', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h40 text-c" style="border-bottom: #eee 1px solid;">\n  <span class="color-focus f18">offer详情</span>\n</div>\n<div class="pdl30 bg-white center" style="">\n  <ul>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer对象：</span><span class="f14 black">李大治</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer职位: </span><span class="f14 black">产品经理</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer月薪：</span><span class="f14 black">22K</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer年薪：</span><span class="f14 black">22W</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer时间：</span><span class="f14 black">11月23日</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">入职时间：</span><span class="f14 black">11月23日</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">源文件：</span><span class="f10 grey2" >XXXXXXX.pdf</span></li>\n  </ul>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (47, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 17:29:40', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-顾问面试', 12, null, null, '<div class="h1 bg-green"></div>\n<div class="h5"></div>\n<div class="full-width inline-block">\n  <span class="float-l tab-hc dt10 f14 bold">顾问面试</span>\n  <span class="float-r dt10"><a class="link pointer HC_editHCIV_">修改</a></span>\n</div>\n<div class="dt5 grey"><img src="../doc/images/HC/time.png">%s</div>\n<div class="dt5 light-grey"><img src="../doc/images/HC/location.png">%s</div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (30, 4, 802001, 801000, null, to_date('21-12-2016 12:05:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 14:07:29', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, 
        '<div>\n  <span class="dt_left f12 sp3 "><i class="x"></i><span>职位名称</span></span>\n  <span class="dt_right"><input class="dt_input notnull vv" type="text"></span>\n</div>\n \n<div class="h20"></div>           \n<div>\n  <span class="dt_left f12 sp3 "><i class="x"></i><span>所在行业</span></span>\n  <span class="dt_right"><input class="dt_input notnull vv" type="text"></span>\n</div>\n  \n<div class="h20"></div>              \n<div>\n  <span class="dt_left f12 sp3 "><span class="red"></span><span>所在部门</span></span>\n  <span class="dt_right"><input class="dt_input notnull vv" type="text"></span>\n</div>\n  \n<div class="h20"></div>               \n<div>\n  <span class="dt_left f12 sp3 "><i class="x"></i><span>工作经验</span></span>\n  <span class="dt_right">\n    <select class="full-width notnull vv">\n      <DATAPARAM id="223" type="select"><option value="%s">%s</option></DATAPARAM>  \n    </select>\n  </span>\n</div> \n   \n<div class="h20"></div>       \n<div>\n  <span class="dt_left f12 sp3 "><i class="x"></i><span>学历要求</span></span>\n  <span class="dt_right">        \n  <select class="full-width notnull vv">\n     <DATAPARAM id="224" type="select"><option value="%s">%s</option></DATAPARAM>  \n  </select>\n  </span>\n</div>\n<div class="h20"></div>\n<div>\n  <span class="dt_left f12 sp3 "><i class="x"></i><span>薪资范围</span><input type="hidden" id="xinzi" class="vv"></span>\n  <span class="dt_right">                  \n    <input type="text" class="h25 mgnl10 notnull vv xinzi_" id="xinzi1" style="width:60px">\n    <span class="pd5"><img style="width:37px;height:1px" src="../doc/images/HR/Dividing.png"></span>\n    <input type="text" class="h25 notnull vv xinzi_" id="xinzi2" style="width:60px">\n    <span class="dark-grey pdl10 sp2">K/月</span>\n  <span>\n</div>\n<div class="h20"></div>  \n    \n<div class="top">\n  <span class="dt_left f12 sp3 "><span class="red"></span><span>职位亮点</span></span>\n  <span class="dt_right"><input class="dt_input notnull vv" type="text"></span> \n</div>\n<div class="h20"></div>\n<div class="top">\n  <span class="dt_left top f12 sp3 "><i class="x"></i><span>职位描述</span></span>\n  <span class="dt_right"><textarea type="text" value="" class="notnull vv" style="width:245px"></textarea></span>\n</div>\n<div class="h20"></div>\n<div class="top">\n  <span class="dt_left top f12 sp3 "><span>职位要求</span></span>\n  <span class="dt_right"><textarea type="text" value="" class="dt_input notnull vv" style="width:245px"></textarea></span>\n</div>\n<div class="h20"></div>\n<div class="top"> \n  <span class="dt_left f12 sp3 top"><span class="top">工作地点</span></span>\n  <span class="dt_right"><textarea type="text" value="" class="dt_input notnull vv" style="width:245px"></textarea></span>\n</div>\n<div class="h20"></div>\n<div class="" style="margin-left: 110px;">\n  <input class="checkbox" type="checkbox" value="1" id="checkbox1" onclick="$(''#v1'').val(this.checked?1:0);">\n  <input class="vv" type="hidden" id="v1" value="0">\n  <span class="dark-grey pd5 f12">需要英文简历</span>\n</div>', 
        null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (137, 61, 802001, 801000, null, to_date('27-02-2017 23:17:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-03-2017 09:49:44', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (42, 3, 802001, 801000, null, to_date('21-12-2016 16:35:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:19:44', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 3, null, null, '<div class="clearfix box-link pointer bg-white dataline_" data=%s>\n  <div class="float-l pdall10">\n    <span class="pd20 f18 sp3">上传JD:</span>\n    <span class="pd20 f12">%s</span>\n    <span class="pd30 dark-grey f12">%s上传</span>\n    <span class="pdl40 f12 dark-grey">%s</span>\n  </div>\n  <div class="float-r pd30 dt10">\n    <button class="btn-default pd10 h20 underlineJD_">取消发布</button> \n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (141, 61, 802001, 801000, null, to_date('27-02-2017 23:17:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-03-2017 09:49:31', 'dd-mm-yyyy hh24:mi:ss'), '黑名单', 3, null, null, '<div class="pdall15 clearfix bg-white box-link pointer btn-slide dataline_" id="li-<INDEX>" data="%s" data1="%s">\n  <span class="pd10"><img class="middle" src="../doc/images/M/face_c%s_s.png"></span>\n  <span class="dt_left title_">%s</span>\n  <span class="float-r">\n    <span class="inline-block pd10 dt1 btn-focus">移出黑名单</span>\n  </span>\n</div>\n<div class="gone" id="box-<INDEX>">\n          这个是测试\n</div>\n<div class="line"></div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (121, 8, 802001, 801000, null, to_date('29-01-2017 14:42:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-02-2017 17:10:35', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<span class="pdr20">\n  <select class="status_ bg-light-grey">\n       <option value="">所有类型</option>\n       <DATAPARAM id="245" type="select"><option value="%s">%s</option></DATAPARAM>\n  </select>\n</span>\n<span class="pdr20">\n  <select class="bg-light-grey job_" >\n       <option value="">所有候选人职位</option>\n       <DATATABLE id="108" type="select" limit="c2=AUID"><option value="%s">%s</option></DATATABLE>\n  </select>\n</span>\n<span class="pd20"></span>\n<span><input type="text" class="keyword_" placeholder="搜索" size="35"></span>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (108, 26, 802001, 801000, null, to_date('10-01-2017 06:15:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-01-2017 17:24:32', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB', 3, null, null, '<div class="%s display">\n  <div class="dir2 dt20">\n    <div class="%s bold" id="li-<INDEX>"><span class="dt_left">%s</span>%s</div>\n    <div class="dir-none dt15 gone" id="box-<INDEX>">\n      <div class="dt5 clearfix"><div class="dt_left float-l"><br></div><div class="float-l" style="line-height:30px;">%s</div></div>\n    </div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (31, 7, 802001, 801000, null, to_date('21-12-2016 12:51:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 12:10:17', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (67, 43, 802001, 801000, null, to_date('24-12-2016 14:06:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:06:40', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '330000', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (124, 10, 802001, 801000, null, to_date('07-02-2017 14:09:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 09:31:39', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 2, null, null, 
        '<div class="pdall10">\n  <span class="dt_left f12 sp3">公司名称</span><span class="dt_right"><input class="dt_input1 vv notnull" id="companyName" type="text"></span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3"><i class="x"></i>公司邮箱</span><span class="dt_right"><input class="dt_input1 vv notnull" id="companyEmail" type="text"></span><br>\n  <span class="gone" id="companyEmailcheckView"><span class="dt_left"></span><span id="companyEmailcheck" class="red"></span></span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3">座机</span><span class="dt_right"><input class="dt_input1 vv" type="text"></span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3"><i class="x"></i>身份证号</span><span class="dt_right"><input class="dt_input1 vv notnull" type="text"></span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3 top"><i class="x"></i>头像</span>\n  <span class="dt_right">\n    <a class="uploadPic1_"><img id="pic1" width="100" height="100" src="../doc/images/HC/uploadFace.png" ></a>\n    <input id="uploadpic1" type="file"  style="display: none"/>\n    <input type="hidden" class="vv" id="v_pic1">\n  </span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3 top"><i class="x"></i>身份证照片</span>\n  <span class="dt_right">\n    <a class="uploadPic2_"><img id="pic2" width="120" height="90" src="../doc/images/HC/uploadphotof.png" ></a>\n    <input id="uploadpic2" type="file" style="display: none"/>\n    <input type="hidden" class="vv" id="v_pic2">\n    <span class="pd5"><span>\n    <a class="uploadPic3_"><img id="pic3" width="120" height="90" src="../doc/images/HC/uploadphotob.png" ></a>\n    <input id="uploadpic3" type="file" style="display: none"/>\n    <input type="hidden" class="vv" id="v_pic3">\n  </span>\n</div>\n<div class="pdall10">\n  <span class="dt_left f12 sp3 top"><i class="x"></i>名片</span>\n  <span class="dt_right">\n    <a class="uploadPic4_"><img id="pic4" width="120" height="90" src="../doc/images/HC/uploadCardf.png" ></a>\n    <input id="uploadpic4" type="file" style="display: none"/>\n    <input type="hidden" class="vv" id="v_pic4">\n    <span class="pd5"><span>\n    <a class="uploadPic5_"><img id="pic5" width="120" height="90" src="../doc/images/HC/uploadCardb.png" ></a>\n    <input id="uploadpic5" type="file" style="display: none"/>\n    <input type="hidden" class="vv" id="v_pic5">\n  </span>\n</div>', 
        null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (56, 37, 802001, 801000, null, to_date('23-12-2016 10:36:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 10:36:59', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f10  text-c h100 btn-focus center">\n  <img class="pd60 img50" src="../doc/images/HC/face_c1_m.png"/><br>\n  <span class="pdl10 black">Kate<span class="grey">(Burberry|HRD)</span></span>\n  <div class="h15"></div>\n</div>\n<div class="bg-white text-c" style="">\n  <ul style="height:80px;" class="center">\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_emai.png"/><span class="pdl10">xxxxxx@xxxx.com</span></li>\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_phone.png"/><span class="pdl10">400-39999999229</span></li>\n  </ul>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (36, 15, 802001, 801000, null, to_date('21-12-2016 13:25:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 13:25:58', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<table class="bg-white" width="390"><tr>\n<td class="pdall30 text-c" id="sendList">\n<div class="title">修改密码</div>\n<div class="h40"></div>\n<div class="pdl5">\n  <label class="labelName pd10">旧密码</label><input type="text" size=35>\n</div>\n<div class="h20"></div>\n<div class="pdl5">\n  <label class="labelName pd10">新密码</label><input type="text" size=35>\n</div>\n<div class="h20"></div>\n<div class="pdr10">\n  <label class="pdr10 labelName">确认新密码</label><input type="password" size=35>\n</div>\n<div class="h40"></div> \n<div class="">\n  <button class="btn-focus savePassword pd50 f14 h35">完  成</button>\n</div>\n</td>\n</tr></table>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (68, 44, 802001, 801000, null, to_date('24-12-2016 14:14:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:08:03', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">面试反馈</div>\n<div class="h10"></div>\n\n<div class="h15"></div>\n<div class="pdl20 bg-white center" style="">\n    <span class="">反馈结果:</span>\n        <span class="pdl10"><input class="radio-default  proinfo_" type="radio" id="radio1" name="proinfo" checked value="1"><label class="pdl5" for="radio1">进入下一轮面试</label></span>\n        <span class="pdl20"><input class="radio-default  proinfo_" type="radio" id="radio2" name="proinfo" value="2"><label class="pdl5" for="radio2">offer</label></span>\n        <span class="pdl20"><input class="radio-default  proinfo_" type="radio" id="radio3" name="proinfo" value="3"><label class="pdl5" for="radio3">面试未通过</label></span>\n\n  <div class="dt10  proinfo_ext_ gone" id="proinfo3">\n    <span class="top">未通过原因：</span>\n    <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n  </div>\n</div>\n    \n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (79, 46, 802001, 801000, null, to_date('25-12-2016 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h15"></div>\n<div class="text-c pdall10">\n  <span class="f18 pdall10 color-focus">抱歉,<span class="pdl10">您的申请未能通过!</span></span>\n</div>\n\n<div class="h15"></div>\n<div class="pdl50 bg-white">\n  <span class="pdl50 grey">原因:<span class="pdl5">候选人</span><span class="black pdl5 pdr5">年薪</span>未能达到标准<span class="black pdl5 pdr5">30W</span></span>\n</div>\n    \n<div class="h30 center pdall20">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (50, 33, 802001, 801000, null, to_date('23-12-2016 10:10:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:57:11', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h15"></div>\n<div class="text-c">\n  <span class="f18 pdall10 color-focus">确定要结束流程？</span>\n</div>\n\n<div class="h15"></div>\n<div class="pdl40 bg-white" style="">\n      <span class="red">*</span><span>请输入结束原因：</span>\n      <input class="h100 pdal20 notnull vv"type="text"style="width: 310px;">\n</div>\n    \n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330444', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (15, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 21:24:56', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-任职经历', 6, null, null, '<div class="line"></div>\n<div class="dt10 f14">\n  <div class="dt3"><span class="dt_left">%s - %s</span><span class="bold sp2">%s</span></div>\n  <div class="dt3"><span class="dt_left"></span><span class="light-grey sp3">%s</span></div>\n  <div class="pdall15 gone sub_">\n  </div>\n</div>', '<div class="dot-line"></div>\n<div class="dt3 f12">\n  <div class="dt3"><span class="dt_left dark-grey">%s - %s</span><span class="bold sp2 tab-dot">%s</span></div>\n  <div class="dt3"><span class="dt_left"></span><span class="pdl10 light-grey">%s</span></div>\n</div>', null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (33, 17, 802001, 801000, null, to_date('21-12-2016 13:14:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 21:40:10', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<table class="layui-table f12" lay-skin="line">\n  <colgroup>\n    <col width="100">\n    <col width="120">\n    <col width="100">\n    <col width="100">\n    <col width="100">\n    <col width="100">\n    <col>\n  </colgroup>\n  <thead>\n    <tr>\n      <th>开票日期</th><th>职位</th><th>候选人姓名</th><th>招聘服务费</th><th>费用状态</th><th>服务顾问</th>\n    </tr> \n  </thead>\n  <tbody>\n  <LIST>\n  <tr>\n    <td class="f12">2016/02/11</td>\n    <td class="f12">品牌经理</td>\n    <td class="f12">李夏荣</td>\n    <td class="f12">10 万</td>\n    <td class="f12">未付款</td>\n    <td class="f12">Elsy</td>\n  </tr>\n  </LIST>\n</table>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (32, 16, 802001, 801000, null, to_date('21-12-2016 13:10:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 22:26:07', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<table class="layui-table f12" lay-skin="line">\n  <colgroup>\n    <col width="100">\n    <col width="120">\n    <col width="100">\n    <col width="100">\n    <col width="100">\n    <col width="100">\n    <col>\n  </colgroup>\n  <thead>\n    <tr>\n      <th>开票日期</th><th>职位</th><th>候选人姓名</th><th>招聘服务费</th><th>费用状态</th><th>服务顾问</th>\n    </tr> \n  </thead>\n  <tbody>\n  <LIST>\n  <tr>\n    <td class="f12">2016/02/11</td>\n    <td class="f12">品牌经理</td>\n    <td class="f12">李夏荣</td>\n    <td class="f12">10 万</td>\n    <td class="f12">未付款</td>\n    <td class="f12">Elsy</td>\n  </tr>\n  </LIST>\n</table>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (132, 20, 802001, 801000, null, to_date('09-02-2017 18:45:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 23:03:39', 'dd-mm-yyyy hh24:mi:ss'), 'LIST状态分类', 3, null, null, '<div class="float-l dt10 titleType_" id="tab_1" data="%s"><a class="white pointer"><span>%s<span class="yellow pdl5 f12">%s</span></span></a></div>\n<div class="float-l dt10 mgl40 titleType_" id="tab_2" data="%s"><a class="white pointer"><span >%s<span class="yellow pdl5 f12">%s</span></span></a></div>\n<div class="float-l dt10 mgl40 titleType_" id="tab_3" data="%s"><a class="white pointer"><span>%s<span class="yellow pdl5 f12">%s</span></span></a></div>\n<div class="float-l dt10 mgl40 titleType_" id="tab_4" data="%s"><a class="white pointer"><span>%s<span class="yellow pdl5 f12">%s</span></span></a></div>', null, null, null, 130001, null, null);
commit;
prompt 100 records committed...
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (126, 6, 802001, 801000, null, to_date('09-02-2017 11:24:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 23:31:18', 'dd-mm-yyyy hh24:mi:ss'), '状态分类列表', 4, null, null, '<div class="float-l dt10 titleType_" data="%s"><a class="light-grey pointer"><span>%s<span class="yellow pdl5 f12">%s</span></span></a></div>\n<div class="float-l dt10 mgl40 titleType_" data="%s"><a class="light-grey pointer"><span>%s<span class="yellow pdl5 f12">%s</span></span></a></div>\n<div class="float-l dt10 mgl40 titleType_" data="%s"><a class="light-grey pointer"><span>%s<span class="yellow pdl5 f12">%s</span></span></a></div>\n<div class="float-l dt10 mgl40 titleType_" data="%s"><a class="light-grey pointer"><span>%s<span class="yellow pdl5 f12">%s</span></span></a></div>\n<div class="float-l dt10 mgl40 titleType_" data="%s"><a class="light-grey pointer"><span>%s<span class="yellow pdl5 f12">%s</span></span></a></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (82, 19, 802001, 801000, null, to_date('27-12-2016 15:31:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:12:32', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-培训', 4, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left f14 sp3"><i class="x"></i>起止时间</span><span class="dt_right"><input class="dt_input2 laydate-icon vv" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})"><span> - </span><input class="dt_input2 laydate-icon vv" name="vvn" onclick="laydate({format: ''YYYY/MM'', max: laydate.now()})"></span>\n    <span class="dt_left f14 sp3"><i class="x"></i>培训内容</span><span class="dt_right"><input class="dt_input1 vv" name="vvn"></span>\n  </div>\n  <div class="text-r pdr50">\n    <span class="red delete_"><img class="middle" src="../doc/images/HC/delete.png">删除该条目</span>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (106, 23, 802001, 801000, null, to_date('06-01-2017 10:57:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 12:13:53', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB', 3, null, null, '<div class="btn-slide process_" id="li-<INDEX>"><div class="bg-white clearfix pdall15 dataline_" style="margin-top: -2px;" data="%s" data1="%s">\n' || chr(9) || '  <div class="float-l">\n' || chr(9) || '    <span class="pdl30"><img class="img20" src="../doc/images/HC/status_%s.png"></span>\n' || chr(9) || '    <span class="pdl10 f14 sp2">%s</span>\n' || chr(9) || '    <span class="pd20 f12 sp2">%s</span>\n' || chr(9) || '  </div>\n' || chr(9) || '  <div class="float-r pdr15">\n' || chr(9) || '    <span class="pd5 %s"><a class="grey-link">%s</a></span>\n' || chr(9) || '    <span class="pd5 %s"><a class="grey-link">%s</a></span>\n' || chr(9) || '    <span class="pd10 %s"><a class="grey-link">%s</a></span>\n' || chr(9) || '    <span class="mg10"><img style="width:13px;height:7px" class="arrow middle" src="../doc/images/arrow.png"></span>\n' || chr(9) || '  </div>\n' || chr(9) || '</div>\n' || chr(9) || '<div class="light-line"></div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (35, 14, 802001, 801000, null, to_date('21-12-2016 13:22:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 09:30:50', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h30"></div>\n<div>\n <label class="dt_left f12 sp3">姓名</label><input class="dt_input1 vv notnull" name="" type="text">\n</div>\n<div class="h20"></div>\n<div class="">\n<span class="dt_left f12 sp3">性别</span><input class="dt_input1 vv" id="v_sex" type="hidden">\n <DATAPARAM id="132" type="RADIO">\n <span class="pdr100">\n   <input class="radio" type="radio" id="radio%s" name="sex" value="%s">\n   <label class="dark-grey f12 pdl5" for="radio%s">%s</label>\n </span>\n </DATAPARAM>\n</div>\n<div class="h20"></div>\n<div class="">\n  <span class="dt_left f12 sp3">手机</span>\n  <input class="dt_input1 vv notnull" id="mobile" type="text" maxlength="11" name="tel"/>\n</div>\n<div class="h25"></div>       \n<div class="">\n  <span class="dt_left f12 sp3">座机(选填)</span><input class="dt_input1 vv notnull" id="phone" type="text"><br>\n</div>\n<div class="h25"></div>\n<div class="">\n <span class="dt_left f12 sp3">公司邮箱</span><input class="dt_input1 vv notnull" type="text">\n</div>\n<div class="h25"></div>         \n<div class="">\n <span class="dt_left f12 sp3">职位</span><input class="dt_input1 vv notnull" type="text">\n</div>         \n<div class="h30"></div>\n<div><button type="submit" class="btn-focus center h35 pd50 save_">保存</button></div>\n<div class="h20"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (105, 23, 802001, 801000, null, to_date('06-01-2017 10:57:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 15:43:56', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<div class="display-td middle f16">\n  <span class="float-l pdr20">\n    <select class="status_ bg-light-grey">\n      <option value="">所有类型</option>\n      <DATAPARAM id="245" type="select"><option value="%s">%s</option></DATAPARAM>\n    </select>\n  </span>\n    <div id="searchView" class="searchDiv float-l" >\n      <span><input type="text" class="h25 keyword_" style="width:240px;border-style: none;" placeholder="搜索"></span>\n      <img class="float-r dt5 pd5" width="14" src="../doc/images/search.png" />\n    </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (6, 20, 802001, 801000, null, to_date('14-12-2016 14:22:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 13:14:02', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="bg-white clearfix box-link dataline_" data="%s">\n  <div class="h10"></div>\n  <div class="float-l pdl30 pdr20 text-c nowrap">\n    <div><img class="middle pointer detail_" src="../doc/images/HC/face_c%s_m.png"></div>\n    <div><img class="middle" style="width:41px;height:12px" src="../doc/images/HC/status_%s_txt.png"></div>\n  </div>\n  <div>\n    <div class="dt10">\n      <span class="pointer detail_">\n        <span class="float-l" style="text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display: block;width: 400px;">\n          <span class="bold f16">%s</span>\n          <span class="pdr15 f14">（%s | %s）</span>\n        </span>\n      </span>\n      <span class="f12 pdl10"><img style="width:17px;height:17px" src="../doc/images/HC/location.png"> %s</span>\n      <span class="float-r pdr30 f12 light-grey">#%s</span>      \n    </div>\n    <div class="h5"></div>\n    <div class="light-blue f12">\n      <span class="pdr15">%s</span>\n      <span class="pd15">%s岁</span>\n      <span class="pd15">%s</span>\n      <span class="pd15">%s年工作经验</span>\n      <span class="pd15">%sK</span>\n      <span class="float-r pdr30">\n        <button class="btn-default pd10 mgl5 h20 %s" style="margin-top: -5px">%s</button>\n        <button class="btn-default pd10 mgl5 h20 %s" style="margin-top: -5px">%s</button>\n        <span class="f12 %s">\n          <span>%s<img class="pd5" style="width:17px;height:17px" src="../doc/images/HC/liulan.png"></span>\n          <span class="pd5"><img class="pd5" style="width:1px;height:12px" src="../doc/images/HC/line.png"></span>\n          <span class="pdl5">%s<img class="pd5" style="width:17px;height:17px" src="../doc/images/HC/process.png"></span>\n          <span class="pd5"><img class="pd5" style="width:1px;height:12px" src="../doc/images/HC/line.png"></span>\n          <span>%s<img class="pd5" style="width:17px;height:17px"src="../doc/images/HC/guanzhu.png"></span>\n        </span>\n      </span>\n    </div>\n  </div>\n  <div class="h15"></div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (71, 21, 802001, 801000, null, to_date('24-12-2016 23:01:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 12:14:04', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB', 3, null, null, '<div class="pdall15 bg-light-grey dataline_ process_" style="margin-top: -2px;" data="%s" data1="%s">\n  <span class="pdl15"><img class="img20" src="../doc/images/HC/status_%s.png"></span>\n  <span class="pd20 f14 sp2">%s</span>\n  <span class="pd20 f12 sp2"><img class="img20" src="../doc/images/HC/face_hr_s.png">%s</span>\n  <span class="float-r pdr15">\n    <span class="pd5 %s"><a class="grey-link">%s</a></span>\n    <span class="pd5 %s"><a class="grey-link">%s</a></span>\n    <button class="btn-default h25 pd10 %s">%s</button>\n    <span class="btn-slide mgl10" id="li-<INDEX>"><img class="arrow middle" style="width:13px;height:7px" src="../doc/images/arrow.png"></span>\n   </span>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (20, 27, 802001, 801000, null, to_date('18-12-2016 09:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 14:10:27', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="%s">\n  <div class="dir2 dt20">\n    <div class="%s f14 bold" id="li-<INDEX>"><span class="dt_left">%s</span><span>%s</span></div>\n    <div id="box-<INDEX>" class="dir-none dt15 gone">\n      <div class="dt5 grey"><span class="dt_left"></span><span>%s</span></div>\n    </div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (38, 21, 802001, 801000, null, to_date('21-12-2016 13:44:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 15:43:45', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<div class="display-td middle f16">\n  <span class="float-l pdr20">\n    <select class="status_ bg-light-grey">\n      <option value="">所有类型</option>\n      <DATAPARAM id="245" type="select"><option value="%s">%s</option></DATAPARAM>\n    </select>\n  </span>\n    <div id="searchView" class="searchDiv float-l" >\n      <span><input type="text" class="h25 keyword_" style="width:240px;border-style: none;" placeholder="搜索"></span>\n      <img class="float-r dt5 pd5" width="14" src="../doc/images/search.png" />\n    </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (136, 60, 802001, 801000, null, to_date('27-02-2017 23:15:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 23:16:54', 'dd-mm-yyyy hh24:mi:ss'), '黑名单', 3, null, null, '<div class="pdall15 clearfix bg-white box-link pointer btn-slide dataline_" id="li-<INDEX>" data="%s" data1="%s">\n  <span class="pd10"><img class="middle" src="../doc/images/M/face_c%s_s.png"></span>\n  <span class="dt_left title_">%s</span>\n  <span class="sp1">%s</span>\n  <span class="float-r">\n    <span class="inline-block pd10 dt1 btn-focus">移出黑名单</span>\n  </span>\n  <span class="float-r pd20">\n    <span class="pd5">拉黑于<span>%s</span><img class="arrow middle dt5 pd5" src="../doc/images/arrow.png"></span>\n   </span>\n</div>\n<div class="gone" id="box-<INDEX>">\n          这个是测试\n</div>\n<div class="line"></div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (138, 62, 802001, 801000, null, to_date('27-02-2017 23:18:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 23:18:21', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="pdall15 bg-white box-link pointer dataline_ detail_" data="%s" data1="%s">\n  <span class="pd10"><img class="middle" src="../doc/images/M/face_c%s_s.png"></span>\n  <span class="dt_left title_">%s</span>\n  <span class="float-r dt5 pdr20">申请于<span>%s</span></span>\n</div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (112, 61, 802001, 801000, null, to_date('22-01-2017 10:03:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 23:17:12', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="pdall15 bg-white box-link pointer dataline_ detail_" data="%s" data1="%s">\n  <span class="pd10"><img class="middle" src="../doc/images/M/face_c%s_s.png"></span>\n  <span class="dt_left title_">%s</span>\n  <span class="float-r dt5 pdr20">申请于<span>%s</span></span>\n</div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (139, 62, 802001, 801000, null, to_date('27-02-2017 23:18:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 23:18:36', 'dd-mm-yyyy hh24:mi:ss'), '黑名单', 3, null, null, '<div class="pdall15 clearfix bg-white box-link pointer btn-slide dataline_" id="li-<INDEX>" data="%s" data1="%s">\n  <span class="pd10"><img class="middle" src="../doc/images/M/face_c%s_s.png"></span>\n  <span class="dt_left title_">%s</span>\n  <span class="float-r">\n    <span class="inline-block pd10 dt1 btn-focus">移出黑名单</span>\n  </span>\n</div>\n<div class="gone" id="box-<INDEX>">\n          这个是测试\n</div>\n<div class="line"></div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (140, 62, 802001, 801000, null, to_date('27-02-2017 23:18:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-02-2017 23:18:53', 'dd-mm-yyyy hh24:mi:ss'), 'JOB', 4, null, null, '<div class="pdall15 bg-white box-link pointer dataline_ detail_" data="%s" data1="%s">\n  <span class="dt_left title_">%s</span>\n  <span class="dt_left">%s</span>\n  <span class="float-r dt5 pdr20">申请于<span>%s</span></span>\n</div>\n', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (61, 5, 802001, 801000, null, to_date('23-12-2016 13:09:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-02-2017 15:20:17', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="topinfor dt10 f16 color-focus">职位预览</div>\n<div class="dt15">\n  <span class="f22 pdr20 bold">%s</span>\n  <span class="btn-green f10 pd2">%s</span>\n  <span class="pd10"><img class="middle" style="width:17px;height:17px" src="../doc/images/HR/location.png"><span class="f12 grey">%s</span></span><br>\n  <div class="grey dt15">\n   <span class="f14 pdr20">%sK</span><span class="f14 pdr20">%s</span><span class="f14 pdr20">%s年以上经验</span>\n   <span class="f9 dark-grey float-r %s">该职位要求英文简历</span>\n  </div>\n  <div class="line dt5"></div>\n</div>\n<div class="dt10 f14">\n  <div class="dt10">"%s"</div>\n  <div class="dt10"><span class="dark-grey">招聘部门:</span><span class="pdl10">%s</span></div>\n  <div class="description dark-grey dt10">职位描述：</div>\n  <div class="dt5">\n    <p style="overflow:hidden;">%s</p></div>\n  <div class="h30"></div>\n  <div class="description dark-grey dt10">职位要求:</div>\n  <div class="dt5">\n    <p style="overflow:hidden;">%s</p>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (123, 2, 802001, 801000, null, to_date('06-02-2017 17:54:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-03-2017 10:19:43', 'dd-mm-yyyy hh24:mi:ss'), '投票列表', 3, null, null, '<div class="dt10 pd60">\n  <input class="vv" type="hidden" id="v_type"/>\n  <div>\n    <input class="checkbox vvc" type="checkbox" name="checkbox" id="checkbox001" value="产品经理">\n    <label for="checkbox001" class="mgl10">产品经理</label>\n  </div>\n  <div>\n    <input class="checkbox vvc" type="checkbox" name="checkbox" id="checkbox002" value="品牌经理">\n    <label for="checkbox002" class="mgl10">品牌经理</label>\n  </div>\n  <div>\n    <input class="checkbox vvc" type="checkbox" name="checkbox" id="checkbox003" value="运营经理">\n    <label for="checkbox003" class="mgl10">运营经理</label>\n </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (3, 18, 802001, 801000, null, to_date('13-12-2016 07:31:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 12:11:22', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, 
        '<div class="black pd10 bold f18 text-l">新增候选人</div>\n<div class="h20"></div>\n<div class="pdall10"><span class="pdl3 bg-focus"></span><span class="pd10 black bold f14 sp2">候选人类型<input class="vv" type="hidden" id="v1" value="1"></span></div>\n<div class="pdl15">\n    <div class="pdall5"><input class="radio" type="radio" id="radio1" name="radio_" value="1" checked onclick="$(''#v1'').val(this.value);$(''.submit_'').text(''申请入库'');">\n         <label class="f12 sp3 pd5" for="radio1">申请入库（须符合入库基本条件）</label></div>\n    <div class="pdall5"><input class="radio" type="radio" id="radio2" name="radio_" value="0" onclick="$(''#v1'').val(this.value);$(''.submit_'').text(''保存'');">\n         <label class="f12 sp3 pd5" for="radio2">暂不入库（自行录入简历，后续也可申请入库）</label></div>\n</div>\n<div class="h10"></div>\n\n<div class="pdall10"><span class="pdl3 bg-focus"></span><span class="subtitle pd10 black bold f14">基本信息</span></div>\n\n<div>\n  <div>\n    <span class="dt_left f12 sp3 pdall10"><i class="x"></i>姓名</span><span class="dt_right pd10"><input class="dt_input notnull vv" id="v2"></span>\n    <span class="dt_left f12 sp3 pdall10"><i class="x"></i>手机</span><span class="dt_right pd10"><input class="vv notnull" value="+86" style="width:40px"/><input class="vv notnull mgl10" id="phone" maxlength="11" style="width:153px"></span></span>\n  </div>\n  <div style="height:20px" id="checkPhoneView_">\n    <span class="dt_left"><span></span></span><span class="dt_right pd10"></span>\n    <span class="dt_left"></span><span class="dt_right pd50"><span class="f9 color-error"id="checkcandidate"></span></span>\n  </div>\n  <div>\n    <span class="dt_left f12 sp3 pdall10"><i class="x"></i>邮箱</span><span class="dt_right pd10"><input class="dt_input notnull vv" id="email"></span>\n    <span class="dt_left f12 sp3 pdall10"><i class="x"></i>基本年薪</span><span class="dt_right pd10"><input class="notnull vv" id="money" onblur="doubleInput(this,1)" maxlength="6" style="width:186px"><span class="f12 sp3 pd5">万/年</span></span><br>\n  </div>\n  <div style="height:20px">\n    <span class="dt_left"></span><span class="dt_right pdl30"><span class="f9 color-error"id="emailcheck"></span></span>\n  </div>\n  <div>\n    <span class="dt_left f12 sp3 pdall10"><i class="x"></i>当前公司</span><span class="dt_right pd10"><input class="dt_input autocomplete-company notnull vv" id="v8"></span>\n    <span class="dt_left f12 sp3 pdall10"><i class="x"></i>职位</span><span class="dt_right pdl10"><input class="dt_input notnull vv"></span>\n  </div>\n</div>\n  \n<div class="h20"></div>\n<div>\n  <span class="dt_left f12 sp3 pdall10"><i class="x"></i>原始简历<input class="vv notnull" type="hidden" id="v10"></span>\n  <span class="pd10" colspan="6">\n  <a class="color-focus f12 uploadFile_" href="javascript:void(-1)"><img style="width:11px;height:11px" src="../doc/images/HC/add_plus.png"><span class="pd5">添加简历</span><span id="file" class="pd10 grey"></span></a>\n  <br/><span id="fileUrl"></span>\n  <input id="uploadfile" name="file_selectcv" type="file" style="display: none"/></span>\n</div>\n<div class="center">\n  <span class="text-c pdall20" colspan="8">\n    <button class="btn-focus pd15 h30 submit_">申请入库</button>\n  </span>\n</div>', 
        null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (104, 23, 802001, 801000, null, to_date('06-01-2017 10:57:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 13:22:05', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="bg-white box-link dataline_" data="%s" data1="%s">\n  <div class="h10"></div>\n  <div class="pd30 pdr10 dt10 f9 text-c float-l" width="80">\n    <img class="img20 %s" style="margin-top: -50px;" src="../doc/images/HC/marker_good.png">\n    <img class="img50" src="../doc/images/HC/face_c%s_m.png">\n  </div>\n  <div>\n    <div class="dt10">\n      <span class="pointer detail_">\n        <span class="float-l" style="text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display: block;width: 400px;">\n          <span class="bold f16">%s</span>\n          <span class="pdr15 f14">（%s | %s）</span>\n        </span>\n      </span>\n      <span class="f12 pdl10"><img style="width:17px;height:17px" src="../doc/images/HC/location.png"> %s</span>\n      <span class="float-r pdr30 f12 light-grey">#%s</span>      \n    </div>\n    <div class="h5"></div>\n    <div class="f12 light-blue">\n      <span class="pdr15">%s</span>\n      <span class="pd15">%s岁</span>\n      <span class="pd15">%s</span>\n      <span class="pd15">%s年工作经验</span>\n      <span class="pd15">%sK</span>\n      <span class="float-r pdr30 f12">\n        <span>%s<img class="pd5" style="width:17px;height:17px" src="../doc/images/HC/liulan.png"></span>\n        <span class="pd5"><img class="pd5" style="width:1px;height:12px" src="../doc/images/HC/line.png"></span>\n        <span class="pdl5">%s<img class="pd5" style="width:17px;height:17px" src="../doc/images/HC/cp_zw.png"></span>\n        <span class="pd5"><img class="pd5" style="width:1px;height:12px" src="../doc/images/HC/line.png"></span>\n        <span class="pdl5">%s<img class="pdl5" style="width:17px;height:17px" src="../doc/images/HC/guanzhu.png""></span>\n      </span>\n    </div>\n  </div>\n  <div class="h15"></div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (9, 21, 802001, 801000, null, to_date('16-12-2016 05:34:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2017 13:23:10', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="bg-white box-link dataline_" data="%s" data1="%s">\n  <div class="h10"></div>\n  <div class="pd30 pdr10 dt10 f9 text-c float-l" width="80">\n    <img class="img20 %s" style="margin-top: -50px;" src="../doc/images/HC/marker_good.png">\n    <img class="img50" src="../doc/images/HC/face_c%s_m.png">\n  </div>\n  <div>\n    <div class="dt10">\n      <span class="pointer detail_">\n        <span class="float-l" style="text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display: block;width: 400px;">\n          <span class="bold f16">%s</span>\n          <span class="pdr15 f14">（%s | %s）</span>\n        </span>\n      </span>\n      <span class="f12 pdl10"><img style="width:17px;height:17px" src="../doc/images/HC/location.png"> %s</span>\n      <span class="float-r pdr30 f12 light-grey">#%s</span>      \n    </div>\n    <div class="h5"></div>\n    <div class="f12 light-blue">\n      <span class="pdr15">%s</span>\n      <span class="pd15">%s岁</span>\n      <span class="pd15">%s</span>\n      <span class="pd15">%s年工作经验</span>\n      <span class="pd15">%sK</span>\n      <span class="float-r pdr30 f12">\n        <span>%s<img class="pd5" style="width:17px;height:17px" src="../doc/images/HC/liulan.png"></span>\n        <span class="pd5"><img class="pd5" style="width:1px;height:12px" src="../doc/images/HC/line.png"></span>\n        <span class="pdl5">%s<img class="pd5" style="width:17px;height:17px" src="../doc/images/HC/cp_zw.png"></span>\n        <span class="pd5"><img class="pd5" style="width:1px;height:12px" src="../doc/images/HC/line.png"></span>\n        <span class="pdl5">%s<img class="pdl5" style="width:17px;height:17px" src="../doc/images/HC/guanzhu.png""></span>\n      </span>\n    </div>\n  </div>\n  <div class="h15"></div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (143, 63, 802001, 801000, null, to_date('03-03-2017 09:52:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-03-2017 09:55:59', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-2', 2, null, null, 
        '  <div class="layui-form-item">\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>所在公司</label>\n      <div class="layui-input-inline">\n        <input class="layui-input vv notnull" placeholder="请输入所在公司" autocomplete="off" required lay-verify="required">\n      </div>\n    </div>\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>公司邮箱</label>\n      <div class="layui-input-inline">\n        <input class="layui-input vv notnull" placeholder="请输入公司邮箱" autocomplete="off" required lay-verify="email">\n      </div>\n    </div>\n  </div>\n  <div class="layui-form-item">\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>头像</label>\n      <div class="layui-input-inline">\n        <a class="pointer uploadPic_"><img width="100" height="100" src="../doc/images/M/uploadFace.png" ></a>\n        <input id="uploadPic1" type="file" style="display: none"/>\n        <input id="v_pic1" type="hidden" class="vv">\n      </div>\n    </div>\n  </div>\n  <div class="layui-form-item">\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>身份证照片</label>\n      <div class="layui-input-inline">\n        <span class="dt_right">\n          <a class="pointer pdr5 uploadPic_"><img width="100" height="100" src="../doc/images/M/uploadphotof.png" ></a>\n          <input id="uploadPic2" type="file" style="display: none"/>\n          <input id="v_pic2" type="hidden" class="vv">\n          <a class="pointer pdr5 uploadPic_"><img width="100" height="100" src="../doc/images/M/uploadphotob.png" ></a>\n          <input id="uploadPic3" type="file" style="display: none"/>\n          <input id="v_pic3" type="hidden" class="vv">\n        </span>\n      </div>\n    </div>\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>名片照片</label>\n      <div class="layui-input-inline">\n        <span class="dt_right">\n          <a class="pointer pdr5 uploadPic_"><img width="100" height="100" src="../doc/images/M/uploadphotof.png"></a>\n          <input id="uploadPic4" type="file" style="display: none"/>\n          <input id="v_pic4" type="hidden" class="vv">\n          <a class="pointer pdr5 uploadPic_"><img width="100" height="100" src="../doc/images/M/uploadphotob.png"></a>\n          <input id="uploadPic5" type="file" style="display: none"/>\n          <input id="v_pic5" type="hidden" class="vv">\n        </span>\n      </div>\n    </div>\n  </div>', 
        null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (8, 3, 802001, 801000, null, to_date('16-12-2016 05:34:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 18:03:39', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="clearfix pdall10 box-link pointer bg-white dataline_" data="%s">\n  <div class="float-l">\n    <span class="pd20 f16 sp3 detail_">%s</span>\n    <span class="f12 pd10">%sK</span>\n    <span class="f12 pd10">%s</span>\n    <span class="f12 pd10">%s</span>\n    <span class="pdl50 grey f12"><img style="width:17px;height:17px" src="../doc/images/HR/location.png">%s</span>\n    <span class="pdl20 grey f12">%s发布</span>\n  </div>\n  <div class="float-r actions_ gone">\n    <button class="btn-default pd10 h25 %s">%s</button> \n    <button class="btn-default pd10 h25 %s">%s</button> \n    <button class="btn-default pd10 h25 %s">%s</button> \n  </div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (120, 8, 802001, 801000, null, to_date('29-01-2017 14:42:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-01-2017 14:42:19', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, null, null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (16, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-03-2017 11:33:14', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-工作经验', 7, null, null, '<div class="dt3 f14"><span class="dt_left">%s - %s</span><span class="bold sp2">%s</span></div>\n<div class="dt3"><span class="dt_left"></span><span class="dark-grey">%s %s</span></div>\n<div class="dt5 %s">\n' || chr(9) || '<div class="tab-hc dt10">\n' || chr(9) || '  <span class="bold f14 %s">月薪：</span><span class="green bold pdr30">%s元/月</span>\n' || chr(9) || '  <span class="bold f14 %s">年薪：</span><span class="green bold">%s万/年</span>\n' || chr(9) || '</div>\n  <div class="pdl25 f12 green %s">薪资构成：%s</div>\n</div>\n<div class="dt5 %s">\n<div class="tab-hc dt10 bold f14 sp3">公司介绍</div>\n<div class="pdl25 green f12">%s</div>\n</div>\n<div class="dt5 %s">\n  <div class="tab-hc dt10">\n    <span class="bold f14 %s">汇报对象：<span class="green f14 sp3 pdr30">%s</span></span>\n    <span class="bold f14 %s">下属人数：<span class="green f14">%s</span></span>\n  </div>\n</div>\n<div class="dt15 f14 bold">工作职责</div>\n<div class="dt3"><p class="dark-grey sp3" style="overflow:hidden;">%s</p></div>\n<div class="%s">\n<div class="tab-hc dt10 f14 bold">工作权重</div>\n<div class="dt3 green">\n  <WORKWEIGHT><span class="process-bar inline-block"><img src="../doc/images/bar_dot.png" width="%s" height="8"></span></span><span class="pd20 green">%s％</span><span class="bold green">%s</span><br/></WORKWEIGHT>\n</div>\n</div>\n<div class="%s">\n<div class="tab-hc dt10 f14 bold">离职原因</div>\n<div class="dt3 green"><p class="sp3" style="overflow:hidden;">%s</p></div>\n</div>\n<div class="h10"></div>\n<div class="line"></div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (5, 2, 802001, 801000, null, to_date('14-12-2016 20:54:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-02-2017 12:06:50', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<span class="pdr20">\n  <select class="bg-light-grey job_" >\n       <option value="">所有候选人职位</option>\n       <DATATABLE id="108" type="select" limit="c2=AUID"><option value="%s">%s</option></DATATABLE>\n  </select>\n</span>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (142, 63, 802001, 801000, null, to_date('03-03-2017 09:51:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-03-2017 11:39:11', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-1', 1, null, null, 
        '  <div class="layui-form-item">\n    <label class="layui-form-label"><i class="x"></i>顾问类型</label><input class="vv" type="hidden" id="v_style" value="1">\n    <div class="layui-input-block">\n      <input type="radio" name="radio_style" value="1" title="猎头公司" checked>\n      <input type="radio" name="radio_style" value="0" title="Freelancer">\n    </div>\n  </div> \n  <div class="" style="border-top: 1px dashed#C5C5C5;margin:10px 0px;height: 1px;line-height: 1px;"></div>\n  <div class="layui-form-item">\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>顾问昵称</label>\n      <div class="layui-input-inline">\n        <input class="layui-input vv notnull" placeholder="请输入顾问昵称" autocomplete="off" required lay-verify="required">\n      </div>\n    </div>\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>性别</label><input class="vv" type="hidden" id="v_sex" value="1">\n      <div class="layui-input-inline">\n        <input type="radio" name="radio_sex" value="132001" title="男" checked>\n        <input type="radio" name="radio_sex" value="132002" title="女">\n      </div>\n    </div>\n  </div>\n  <div class="layui-form-item">\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>真实姓名</label>\n      <div class="layui-input-inline">\n        <input class="layui-input vv notnull" placeholder="请输入真实姓名" autocomplete="off" required lay-verify="required">\n      </div>\n    </div>\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>身份证号</label>\n      <div class="layui-input-inline">\n        <input class="layui-input vv notnull" placeholder="请输入身份证号" autocomplete="off" required lay-verify="identity">\n      </div>\n    </div>\n  </div>\n  <div class="layui-form-item">\n    <div class="layui-inline">\n      <label class="layui-form-label"><i class="x"></i>手机号</label>\n      <div class="layui-input-inline" style="width: 40px;">\n        <input class="layui-input vv notnull" placeholder="86" value="86" autocomplete="off" required lay-verify="number">\n      </div>\n      <div class="layui-input-inline" style="width: 140px;">\n        <input class="layui-input vv notnull" placeholder="请输入手机号" autocomplete="off" required lay-verify="phone">\n      </div>\n    </div>\n    <div class="layui-inline">\n      <label class="layui-form-label">座机</label>\n      <div class="layui-input-inline">\n        <input class="layui-input vv" placeholder="请输入座机" autocomplete="off" lay-verify="">\n      </div>\n    </div>\n  </div>', 
        null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (7, 20, 802001, 801000, null, to_date('14-12-2016 20:54:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 14:33:10', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<div class="layui-inline">\n  <select class="bg-light-grey status_">\n    <DATAPARAM id="247" type="select"><option value="%s">%s</option></DATAPARAM>\n    <option value="240090">所有</option>\n  </select>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (10, 25, 802001, 801000, null, to_date('16-12-2016 17:47:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 15:45:07', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-基本信息', 1, null, null, 
        '<div class="float-l pdr30"><img src="../doc/images/face_c%s_b.png"></div>\n<div class="float-l dt_top2">\n  <div class="clearfix">\n    <div class="float-l">\n      <span class="f22 bold sp2">%s %s</span>\n      <span class="f14 pdl20">（%s%s<span class="gone">%s</span>）</span>\n    </div>\n    <div class="float-r text-r">\n      <span class="pd10 pointer export_"><img style="width:19px;height:19px" src="../doc/images/HR/export.png"></span>\n      <span class="pd10 pointer download_"><img style="width:19px;height:19px" src="../doc/images/download.png"></span>\n      <span class="pd10 f12 light-grey">#%s</span>\n    </div>\n  </div>\n  <div class="h30"></div>\n  <div class="f14">\n    <span class="pdr10">%s</span>\n    <span class="pdr10">%s岁</span>\n    <span class="pdr10">%s</span>                \n    <span class="pdr10">%s</span>\n    <span class="pdr10">%s</span>\n  </div>\n  <div class="h10"></div>\n  <div class="f14 dark-grey">\n    <span>%s %s%s%s</span>\n  </div>\n  <div class="h15"></div>\n  <div class="clearfix">\n    <div class="float-l">\n      <span class="f12"><img class="pd2" style="width:17px;height:17px" src="../doc/images/HR/gz.png"> %s</span>\n      <span class="f12 light-grey pdl40"><img style="width:17px;height:17px" src="../doc/images/HR/location.png">%s %s</span>\n    </div>\n    <div class="float-r">\n      <span class="btn-transparent2 h25 pd10 %s">%s</span>\n      <span class="btn-transparent2 h25 pd10 %s">%s</span>\n      <button class="btn-default pd10 h25 mgl5 %s">%s</button>\n      <button class="btn-focus pd10 h25 mgl5 %s">%s</button>\n      <span class="nav-main %s"><span class="dark-grey pdl10 pointer" id="li-9">更多 <img style="width:13px;height:7px" src="../doc/images/arrow.png"></span></span>\n      \n      <!--隐藏盒子-->\n      <div id="box-9" class="menu text-c hidden-box hidden-loc-us">\n      <p class="%s"><span><a href="javascript:void()">%s</a></span></p> \n      <p class="%s"><span><a href="javascript:void()">%s</a></span></p>\n      </div>\n    </div>\n  </div>\n</div>\n\n<input type="hidden" id="uptPower" value="%s">\n<input type="hidden" id="uptdate" value="%s">\n<input type="hidden" id="hcid" value="%s">\n<input type="hidden" id="pcid" value="%s">\n<input type="hidden" id="hcivPower" value="%s">', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (4, 2, 802001, 801000, null, to_date('14-12-2016 14:22:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 18:04:29', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="clearfix bg-white box-link dataline_" data=%s>\n  <div class="h10"></div>\n  <div class="pd10">\n    <div class="dt5">\n      <span class="pd20 f16 pointer detail_">%s</span>\n      <span class="light-blue f12">\n        <span class="pd20 pdr30">%s</span>\n        <span class="pd20">%s岁</span>\n        <span class="pd20">%s年工作经验</span>\n        <span class="pd20">%s</span>\n        <span class="pd20"><img style="width:17px;height:17px" src="../doc/images/HR/location.png">%s</span>\n        <span class="float-r light-grey pd30">#%s</span>\n      </span>\n    </div>\n    <div class="h5"></div>\n    <div class="f12 light-blue pd20">\n      <EDUCATION><span class="pdr30">%s<span class="f12 pd5">|</span>%s</span></EDUCATION>\n      <JOB><span class="grey f14">%s<span class="pd5">|</span><span class="light-blue f12 pdr15">%s</span></span></JOB>\n      <span class="float-r grey h20 pd10"><img class="pd5" style="width:17px;height:17px" src="../doc/images/HR/gz.png">%s</span>\n    </div>\n  </div>\n  <div class="h15"></div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (23, 6, 802001, 801000, null, to_date('18-12-2016 16:40:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2017 18:03:55', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="dt5"></div><div class="clearfix bg-white pointer box-link btn-slide dataline_ consultant_ %s" id="li-<INDEX>" data="%s" data1="%s">\n  <div class="h10"></div>\n  <div class="float-l pd20 text-c f12">\n    <div class="pd10"><img src="../doc/images/HR/status_%s.png"></div>\n    <div class="light-blue">%s</div>\n    <div class="light-blue">%s</div>\n  </div>\n  <div class="float-l">\n    <div class="light-blue f12 pdr50 dt5">\n      <a class="f16 bold pointer %s">%s</a>\n      <span class="pd10">%s</span>\n      <span class="pd20">%s</span>\n      <span class="pd20">%s岁</span>\n      <span class="pd20">%s年工作经验</span>\n      <span class="pd20">%sK</span>\n      <span class="pdl30"><img style="width:17px;height:17px" src="../doc/images/HR/location.png">%s</span>\n    </div>\n    <div class="h3"></div>\n    <div class="light-blue f12">\n      <EDUCATION><span>%s<span class="pd5">|</span>%s</span></EDUCATION>\n      <span class="pdl30">\n        <JOB><span class="grey f14">%s</span><span class="grey pd5">|</span><span class="light-blue f12 pdr15">%s</span></JOB>\n      </span>\n    </div>\n    <div class="h15"></div>\n  </div>\n  <div class="dt5 pdr20 float-r text-c">\n    <div class="dt10">\n      <span class="%s">%s</span>\n      <span class="pointer %s">%s<img src="../doc/images/detail.png"></span>\n      <button class="btn-default h20 pd10 %s">%s</button>\n      <button class="btn-focus h20 pd10 %s">%s</button>\n    </div>\n    <div class="h10"></div>\n    <div class="dt2 grey">\n      <span class="pointer %s">%s<img src="../doc/images/detail.png"></span>\n      <span class="btn-transparent2 grey h20 pd10 %s">%s</span>\n      <button class="btn-default h20 pd10 %s">%s</button>\n      <span class="pointer %s">%s</span>\n    </div>\n    <input type="hidden" id="hunterID" value="%s">\n    <input type="hidden" id="hunterName" value="%s">\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (18, 26, 802001, 801000, null, to_date('18-12-2016 09:06:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 18:09:24', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="clearfix dataline_ %s" data="%s" data1="%s">\n  <div class="line"></div>\n  <div class="float-l">\n    <div class="dir-line-root dir1">\n      <div class="open dt20 btn-slide sub_" id="li-<INDEX>">\n        <span class="dt_left f16 sp3">%s</span><span class="f16 sp3">%s</span>\n      </div>\n    </div>\n    <div id="box-<INDEX>">\n    </div>\n  </div>\n  <div class="float-r">\n    <div class="dt20 f16 sp3 nowrap text-r">%s（%s）</div>\n    <div class="dark-grey f14 pdr15 text-r"><img src="../doc/images/HC/face_hr_s.png"> %s</div>\n    <div class="dt20 pdr5 text-r %s"><button class="btn-default h30 pd10 HC_closeProcess_">结束流程</button></div>\n  </div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (13, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 20:36:23', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-培训', 4, null, null, '<div class="dt3 f14"><span class="dt_left">%s</span><span class="sp1">%s</span></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (14, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 20:38:56', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-证书', 5, null, null, '<div class="dt10 f14"><span class="dt_left">%s</span><span class="sp1">%s</span></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (17, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 20:41:15', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-项目经验', 8, null, null, '<div class="dt3"><span class="dt_left f14 bold">%s - %s</span><span class="bold f14 sp2">%s</span></div>\n<div class="dt3"><span class="dt_left"></span><span class="dark-grey f14">%s</span></div>\n<div class="dt15 f14 bold">项目介绍</div>\n<div class="dt3 dark-grey"><p class="sp3" style="overflow:hidden;">%s</p></div>\n<div class="dt10 f14 bold">工作职责</div>\n<div class="dt3 dark-grey"><p class="sp3" style="overflow:hidden;">%s</p></div>\n<div class="dt15 f14 bold">项目成就</div>\n<div class="dt3 dark-grey"><p class="sp3" style="overflow:hidden;">%s</p></div>\n<div class="line"></div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into IS_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (12, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 21:07:20', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-教育', 3, null, null, '<div class="dt5 f14">\n  <div class="dt3"><span class="dt_left">%s - %s</span><span class="bold f14 sp2">%s</span></div>\n  <div class="dt3"><span class="dt_left"></span><span class="f12 sp3 dark-grey">%s | %s</span></div>\n</div>', null, null, null, 130001, null, null);
commit;
prompt 134 records loaded
prompt Loading IS_APPROLE...
prompt Table is empty
prompt Loading IS_APPROLEMODULE...
prompt Table is empty
prompt Loading IS_APPVERSION...
insert into IS_APPVERSION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6)
values (1, 802001, 801000, null, to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), 601, '1', null, '安卓', 130001, null);
insert into IS_APPVERSION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6)
values (2, 802001, 801000, null, to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:03:21', 'dd-mm-yyyy hh24:mi:ss'), 602, '1', null, 'IOS', 130001, null);
insert into IS_APPVERSION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6)
values (3, 802001, 801000, null, to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:03:31', 'dd-mm-yyyy hh24:mi:ss'), 201, '1', null, '安卓测试版', 130001, null);
insert into IS_APPVERSION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6)
values (4, 802001, 801000, null, to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:03:45', 'dd-mm-yyyy hh24:mi:ss'), 202, '1', null, 'IOS测试版', 130001, null);
commit;
prompt 4 records loaded
prompt Loading IS_BULLETIN...
prompt Table is empty
prompt Loading IS_DEPARTMENT...
insert into IS_DEPARTMENT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, '运维部 yunweibu ywb ', to_date('01-11-2016 11:05:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:05:58', 'dd-mm-yyyy hh24:mi:ss'), '运维部', 1, null, 1, 1, null, 130001, null);
commit;
prompt 1 records loaded
prompt Loading IS_DOTMODULE...
prompt Table is empty
prompt Loading IS_DOTMODULEDETAIL...
prompt Table is empty
prompt Loading IS_DOTROLE...
prompt Table is empty
prompt Loading IS_DOTROLEMODULE...
prompt Table is empty
prompt Loading IS_DOTUSER...
prompt Table is empty
prompt Loading IS_EMP...
insert into IS_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (1, 802001, 801000, '9001 9001 9001 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), '9001', 1, 1, 1, 9001, null, null, null, null, 130001, 13900000001, null, null, null, '9001@', '已启用', null, null);
insert into IS_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (2, 802001, 801000, '3001 3001 3001 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:07:41', 'dd-mm-yyyy hh24:mi:ss'), '3001', 1, 1, 1, 3001, null, null, null, null, 130001, 13900000001, null, null, null, '3001@', '已启用', null, null);
insert into IS_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (3, 802001, 801000, '9009 9009 9009 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 11:13:20', 'dd-mm-yyyy hh24:mi:ss'), '9009', 1, 1, 1, 9009, null, null, null, null, 130001, 13900000009, null, null, null, '9009@', '已启用', null, null);
commit;
prompt 3 records loaded
prompt Loading IS_JOBPOSITION...
insert into IS_JOBPOSITION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, '运维主管 yunweizhuguan ywzg ', to_date('01-11-2016 11:06:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:06:28', 'dd-mm-yyyy hh24:mi:ss'), '运维主管', 1, 130001, null, null, 1, null, 1);
commit;
prompt 1 records loaded
prompt Loading IS_LWSERVER...
insert into IS_LWSERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (1, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), '01', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
insert into IS_LWSERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (2, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:29', 'dd-mm-yyyy hh24:mi:ss'), '02', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
insert into IS_LWSERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (3, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:35', 'dd-mm-yyyy hh24:mi:ss'), '03', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
commit;
prompt 3 records loaded
prompt Loading IS_ORGAN...
insert into IS_ORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, 'pcace在线 pcacezaixian pcacezx ', to_date('01-11-2016 09:55:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 16:34:37', 'dd-mm-yyyy hh24:mi:ss'), 'pcace在线', null, null, null, null, 'dw', 130001, null);
commit;
prompt 1 records loaded
prompt Loading IS_RS_COMPUTER...
prompt Table is empty
prompt Loading IS_RS_OTHERS...
prompt Table is empty
prompt Loading IS_SERVER...
prompt Table is empty
prompt Enabling triggers for IS_APPMODULE...
alter table IS_APPMODULE enable all triggers;
prompt Enabling triggers for IS_APPMODULEDETAIL...
alter table IS_APPMODULEDETAIL enable all triggers;
prompt Enabling triggers for IS_APPROLE...
alter table IS_APPROLE enable all triggers;
prompt Enabling triggers for IS_APPROLEMODULE...
alter table IS_APPROLEMODULE enable all triggers;
prompt Enabling triggers for IS_APPVERSION...
alter table IS_APPVERSION enable all triggers;
prompt Enabling triggers for IS_BULLETIN...
alter table IS_BULLETIN enable all triggers;
prompt Enabling triggers for IS_DEPARTMENT...
alter table IS_DEPARTMENT enable all triggers;
prompt Enabling triggers for IS_DOTMODULE...
alter table IS_DOTMODULE enable all triggers;
prompt Enabling triggers for IS_DOTMODULEDETAIL...
alter table IS_DOTMODULEDETAIL enable all triggers;
prompt Enabling triggers for IS_DOTROLE...
alter table IS_DOTROLE enable all triggers;
prompt Enabling triggers for IS_DOTROLEMODULE...
alter table IS_DOTROLEMODULE enable all triggers;
prompt Enabling triggers for IS_DOTUSER...
alter table IS_DOTUSER enable all triggers;
prompt Enabling triggers for IS_EMP...
alter table IS_EMP enable all triggers;
prompt Enabling triggers for IS_JOBPOSITION...
alter table IS_JOBPOSITION enable all triggers;
prompt Enabling triggers for IS_LWSERVER...
alter table IS_LWSERVER enable all triggers;
prompt Enabling triggers for IS_ORGAN...
alter table IS_ORGAN enable all triggers;
prompt Enabling triggers for IS_RS_COMPUTER...
alter table IS_RS_COMPUTER enable all triggers;
prompt Enabling triggers for IS_RS_OTHERS...
alter table IS_RS_OTHERS enable all triggers;
prompt Enabling triggers for IS_SERVER...
alter table IS_SERVER enable all triggers;
set feedback on
set define on
prompt Done.
