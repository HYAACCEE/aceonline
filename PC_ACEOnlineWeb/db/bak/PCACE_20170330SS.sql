prompt PL/SQL Developer import file
prompt Created on 2017年3月30日 星期四 by Administrator
set feedback off
set define off
prompt Dropping IS_EMP...
drop table IS_EMP cascade constraints;
prompt Dropping S_ROLE...
drop table S_ROLE cascade constraints;
prompt Dropping S_ROLE_MODULE...
drop table S_ROLE_MODULE cascade constraints;
prompt Dropping S_USER...
drop table S_USER cascade constraints;
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

prompt Creating S_ROLE...
create table S_ROLE
(
  roleid    NUMBER(4) not null,
  roleseq   NUMBER(4) not null,
  rolename  VARCHAR2(20) not null,
  power     CHAR(1) default '0',
  state     CHAR(1) not null,
  organtype NUMBER(6) default -1,
  sctlevel  NUMBER(6) default -1,
  remark    VARCHAR2(200),
  istdate   DATE default sysdate,
  uptdate   DATE default sysdate
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
alter table S_ROLE
  add constraint S_ROLE_PK primary key (ROLEID)
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

prompt Creating S_ROLE_MODULE...
create table S_ROLE_MODULE
(
  roleid   NUMBER(4) not null,
  moduleid VARCHAR2(20) not null,
  power    VARCHAR2(20) default ''
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
alter table S_ROLE_MODULE
  add constraint S_ROLE_MODULE_PK primary key (ROLEID, MODULEID)
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

prompt Creating S_USER...
create table S_USER
(
  userid           NUMBER(9) not null,
  loginname        VARCHAR2(20) not null,
  password         VARCHAR2(50) not null,
  validatepassword VARCHAR2(50),
  username         VARCHAR2(20) not null,
  roleid           NUMBER(4) not null,
  state            CHAR(1) not null,
  loginnum         NUMBER(6) default 0,
  loginflag        CHAR(1) default '0',
  lastlogindate    DATE default sysdate,
  cssstyle         VARCHAR2(20) not null,
  areaid           NUMBER(6) default -1,
  empid            NUMBER(9) not null,
  operator         NUMBER(9) default -1,
  istdate          DATE default sysdate,
  uptdate          DATE default sysdate
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
alter table S_USER
  add constraint S_USER_PK primary key (USERID)
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

prompt Disabling triggers for IS_EMP...
alter table IS_EMP disable all triggers;
prompt Disabling triggers for S_ROLE...
alter table S_ROLE disable all triggers;
prompt Disabling triggers for S_ROLE_MODULE...
alter table S_ROLE_MODULE disable all triggers;
prompt Disabling triggers for S_USER...
alter table S_USER disable all triggers;
prompt Loading IS_EMP...
insert into IS_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (4, 802001, 801000, '8001 8001 8001 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-03-2017 09:27:57', 'dd-mm-yyyy hh24:mi:ss'), '8001', 1, 1, 1, 8001, null, null, null, null, 130001, 13900008001, null, null, null, '8001@', '已启用', null, null);
insert into IS_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (5, 802001, 801000, '8002 8002 8002 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-03-2017 09:28:10', 'dd-mm-yyyy hh24:mi:ss'), '8002', 1, 1, 1, 8002, null, null, null, null, 130001, 13900008002, null, null, null, '8002@', '已启用', null, null);
insert into IS_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (1, 802001, 801000, '9001 9001 9001 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), '9001', 1, 1, 1, 9001, null, null, null, null, 130001, 13900000001, null, null, null, '9001@', '已启用', null, null);
insert into IS_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (2, 802001, 801000, '3001 3001 3001 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:07:41', 'dd-mm-yyyy hh24:mi:ss'), '3001', 1, 1, 1, 3001, null, null, null, null, 130001, 13900000001, null, null, null, '3001@', '已启用', null, null);
insert into IS_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (3, 802001, 801000, '9009 9009 9009 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 11:13:20', 'dd-mm-yyyy hh24:mi:ss'), '9009', 1, 1, 1, 9009, null, null, null, null, 130001, 13900000009, null, null, null, '9009@', '已启用', null, null);
commit;
prompt 5 records loaded
prompt Loading S_ROLE...
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (403, 403, '系统编辑人员', '0', '1', 200001, 802001, null, to_date('30-03-2017 09:25:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-03-2017 09:25:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (402, 402, '运维人员', '0', '1', 200001, 802001, null, to_date('01-11-2016 11:11:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (2, 1, '系统管理员', '9', '1', -1, 802005, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (100, 100, '数据管理员', '0', '1', -1, 802005, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (199, 199, '研发管理员', '0', '1', -1, 802005, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 12:28:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (400, 400, '普通用户', '0', '1', -1, 802001, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:18:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (401, 401, '运维管理员', '0', '1', 200001, 802001, null, to_date('01-11-2016 09:18:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:12:00', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading S_ROLE_MODULE...
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '10.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '10.01', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '10.02', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '10.03', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '10.04', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '10.05', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '20.01', '11110111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '30.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '40.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '40.01', '11110111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '89.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '89.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '89.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '90.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '90.12', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '90.93', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '90.94', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '90.95', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '91.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '99.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '99.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (403, '99.19', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '10.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '10.01', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '10.02', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '10.03', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '10.04', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '10.05', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '10.06', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '10.07', '11000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.01', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.01.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.03', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '10.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '10.01', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '10.02', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '10.03', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '10.04', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '10.05', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '30.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '20.01', '11110111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '40.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '40.01', '11110111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '89.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '89.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '89.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '90.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '90.12', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '90.93', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '90.94', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '90.95', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '91.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '99.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '99.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (402, '99.19', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '10.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '10.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '10.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '10.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '10.04', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '10.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '30.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '20.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '40.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '40.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.02.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.02.01.1', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.02.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.02.02.1', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.02.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.03.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.03.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.04', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.04.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '50.06', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '89.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '89.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '89.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.11', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.12', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.90', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.90.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.91', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.91.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.92', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.93', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.94', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.95', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.96', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.97', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.98', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '90.99', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '91.01', null);
commit;
prompt 100 records committed...
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '91.01.4', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '91.01.5', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '91.01.6', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '91.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (2, '91.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '10.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '10.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '10.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '10.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '10.04', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '10.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '30.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '20.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '40.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '40.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.02.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.02.01.1', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.02.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.02.02.1', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.02.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.03.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.03.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.04', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.04.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '50.06', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '89.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '89.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '89.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.11', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.12', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.90', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.90.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.91', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.91.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.92', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.93', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.94', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.95', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.96', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.97', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.98', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '90.99', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '91.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '91.01.4', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '91.01.5', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '91.01.6', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '91.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (100, '91.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (201, '10.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (201, '10.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (201, '10.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (201, '10.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (201, '10.04', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (201, '10.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (202, '10.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (202, '10.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (202, '10.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (202, '10.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (202, '10.04', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (202, '10.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '10.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '10.01', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '10.02', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '10.03', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '10.04', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '10.05', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '30.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '20.01', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '30.02', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '30.03', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '30.04', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '30.05', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '20.30', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '30.07', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '30.08', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '20.32', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.01', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.02', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.50', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.51', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.52', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.53', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.99', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '50.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '50.02', '11111111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '50.02.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '50.02.01.1', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '50.02.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '50.02.02.1', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '50.02.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '89.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '89.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '89.02', null);
commit;
prompt 200 records committed...
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '90.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '90.94', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '90.99', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '91.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.04', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.05', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.06', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.07', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.08', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.09', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.11', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.12', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.20', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.21', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.30', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.31', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.32', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '20.50', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '30.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '30.01', '11100100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '30.02', '11100100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '30.03', '11100100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '30.04', '11100100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '30.05', '11100100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '30.07', '11100100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '30.08', '11100100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '40.54', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '90.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '90.13', '11110000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '90.13.01', '11111000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '90.13.03', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '99.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (199, '99.10', null);
commit;
prompt 233 records loaded
prompt Loading S_USER...
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (5, '8001', '5016299860cecfc4ad57e1e396651085', '5016299860cecfc4ad57e1e396651085', '8001', 199, '1', 2, '1', to_date('30-03-2017 09:31:57', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 4, -1, to_date('30-03-2017 09:28:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-03-2017 09:29:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (6, '8002', '71b554b4d04e382dd1bfc67930952cfe', '71b554b4d04e382dd1bfc67930952cfe', '8002', 199, '1', 2, '1', to_date('30-03-2017 09:31:58', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 5, -1, to_date('30-03-2017 09:28:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-03-2017 09:29:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (2, '9001', '111111', '111111', '9001', 400, '1', 7, '1', to_date('14-12-2016 16:33:44', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 1, -1, to_date('01-11-2016 09:14:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 21:30:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (3, '3001', '96e79218965eb72c92a549dd5a330112', '96e79218965eb72c92a549dd5a330112', '3001', 402, '1', 0, '1', to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 2, -1, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:17:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (4, '9009', '52c69e3a57331081823331c4e69d3f2e', '52c69e3a57331081823331c4e69d3f2e', '9009', 199, '1', 198, '1', to_date('30-03-2017 09:09:53', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 3, -1, to_date('21-12-2016 11:13:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 11:13:55', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 5 records loaded
prompt Enabling triggers for IS_EMP...
alter table IS_EMP enable all triggers;
prompt Enabling triggers for S_ROLE...
alter table S_ROLE enable all triggers;
prompt Enabling triggers for S_ROLE_MODULE...
alter table S_ROLE_MODULE enable all triggers;
prompt Enabling triggers for S_USER...
alter table S_USER enable all triggers;
set feedback on
set define on
prompt Done.
