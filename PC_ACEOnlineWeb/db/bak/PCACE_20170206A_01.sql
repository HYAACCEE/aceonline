prompt PL/SQL Developer import file
prompt Created on 2017年2月6日 by Administrator
set feedback off
set define off
prompt Dropping A_ACTION...
drop table A_ACTION cascade constraints;
prompt Dropping A_BANK...
drop table A_BANK cascade constraints;
prompt Dropping A_HCINTERVIEW_QA...
drop table A_HCINTERVIEW_QA cascade constraints;
prompt Dropping A_INDUSTRY...
drop table A_INDUSTRY cascade constraints;
prompt Dropping A_JOB...
drop table A_JOB cascade constraints;
prompt Dropping A_ORGAN...
drop table A_ORGAN cascade constraints;
prompt Dropping A_PROCESS...
drop table A_PROCESS cascade constraints;
prompt Creating A_ACTION...
create table A_ACTION
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(20),
  c2           VARCHAR2(50),
  c3           NUMBER(6) not null,
  c4           NUMBER(6) not null,
  c5           NUMBER(6) not null,
  c6           VARCHAR2(50) not null,
  c7           VARCHAR2(200),
  c8           VARCHAR2(200),
  c9           VARCHAR2(200),
  c10          VARCHAR2(200),
  c11          VARCHAR2(200),
  c12          CHAR(1) default '1',
  c13          CHAR(1) default '1',
  c14          CHAR(1) default '0',
  c15          CHAR(1) default '0',
  c16          CHAR(1) default '0',
  c17          CHAR(1) default '0',
  c18          VARCHAR2(200),
  c19          VARCHAR2(30),
  c20          CHAR(1) default '0',
  c21          CHAR(1) default '0',
  c22          VARCHAR2(200),
  c23          CHAR(1) default '0',
  c24          VARCHAR2(200),
  c25          CHAR(1) default '0',
  c26          VARCHAR2(200),
  c27          CHAR(1) default '0',
  c28          VARCHAR2(200),
  c29          CHAR(1) default '0',
  c30          VARCHAR2(200),
  c31          NUMBER(6) default 0,
  c32          VARCHAR2(30),
  c33          NUMBER(6) not null,
  c34          CHAR(1) default '0',
  c35          CHAR(1) default '0',
  c36          VARCHAR2(200),
  c37          VARCHAR2(200),
  c38          NUMBER(6),
  c39          VARCHAR2(100),
  c40          VARCHAR2(30)
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
alter table A_ACTION
  add constraint A_ACTION_PK primary key (DATAID)
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

prompt Creating A_BANK...
create table A_BANK
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(100) not null,
  c2           VARCHAR2(50),
  c3           VARCHAR2(50),
  c4           VARCHAR2(10),
  c5           NUMBER(6),
  c6           VARCHAR2(10),
  c7           NUMBER(6) default 0,
  c8           NUMBER(11) default 0,
  c9           NUMBER(11) default 0,
  c10          NUMBER(6) default 0,
  c11          CHAR(1) default '0',
  c12          CHAR(1) default '0',
  c13          CHAR(1) default '0',
  c14          CHAR(1) default '0',
  c15          VARCHAR2(200)
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
alter table A_BANK
  add constraint A_BANK_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating A_HCINTERVIEW_QA...
create table A_HCINTERVIEW_QA
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           NUMBER(6),
  c3           VARCHAR2(200),
  c4           VARCHAR2(20),
  c5           VARCHAR2(500),
  c6           NUMBER(6)
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
alter table A_HCINTERVIEW_QA
  add constraint A_HCINTERVIEW_QA_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating A_INDUSTRY...
create table A_INDUSTRY
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           NUMBER(6),
  c3           VARCHAR2(10),
  c4           NUMBER(6),
  c5           VARCHAR2(200)
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
alter table A_INDUSTRY
  add constraint A_INDUSTRY_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating A_JOB...
create table A_JOB
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
  c4           VARCHAR2(20),
  c5           NUMBER(9)
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
alter table A_JOB
  add constraint A_JOB_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating A_ORGAN...
create table A_ORGAN
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(100),
  c2           VARCHAR2(30),
  c3           VARCHAR2(100),
  c4           VARCHAR2(30),
  c5           NUMBER(6),
  c6           VARCHAR2(30),
  c7           NUMBER(6),
  c8           NUMBER(6),
  c9           VARCHAR2(30),
  c10          VARCHAR2(30),
  c11          VARCHAR2(20),
  c12          VARCHAR2(100),
  c13          VARCHAR2(4000),
  c14          VARCHAR2(200),
  c15          VARCHAR2(200),
  c16          VARCHAR2(30),
  c17          VARCHAR2(100),
  c18          VARCHAR2(100),
  c19          VARCHAR2(100),
  c20          VARCHAR2(100),
  c21          VARCHAR2(30),
  c22          VARCHAR2(50),
  c23          VARCHAR2(50),
  c24          VARCHAR2(50),
  c25          VARCHAR2(50),
  c26          VARCHAR2(100),
  c27          VARCHAR2(100),
  c28          VARCHAR2(30),
  c29          VARCHAR2(30),
  c30          VARCHAR2(30)
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
alter table A_ORGAN
  add constraint A_ORGAN_PK primary key (DATAID)
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

prompt Creating A_PROCESS...
create table A_PROCESS
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30) not null,
  c2           VARCHAR2(100) not null,
  c3           NUMBER(6) not null,
  c4           VARCHAR2(100),
  c5           NUMBER(6) not null,
  c6           VARCHAR2(200),
  c7           VARCHAR2(100),
  c8           VARCHAR2(100),
  c9           VARCHAR2(100),
  c10          VARCHAR2(100),
  c11          VARCHAR2(100),
  c12          VARCHAR2(100),
  c13          VARCHAR2(100),
  c14          VARCHAR2(100),
  c15          VARCHAR2(100),
  c16          NUMBER(6),
  c17          NUMBER(6),
  c18          NUMBER(6),
  c19          NUMBER(6),
  c20          NUMBER(6),
  c21          NUMBER(6),
  c22          NUMBER(6),
  c23          NUMBER(6),
  c24          NUMBER(6),
  c25          VARCHAR2(30),
  c26          VARCHAR2(30),
  c27          VARCHAR2(200),
  c28          VARCHAR2(200),
  c29          VARCHAR2(500),
  c30          CHAR(1) default '0',
  c31          VARCHAR2(2000),
  c32          CHAR(1) default '0',
  c33          VARCHAR2(30),
  c34          VARCHAR2(30),
  c35          VARCHAR2(30),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(30),
  c39          VARCHAR2(30),
  c40          VARCHAR2(30)
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
alter table A_PROCESS
  add constraint A_PROCESS_PK primary key (DATAID)
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

prompt Disabling triggers for A_ACTION...
alter table A_ACTION disable all triggers;
prompt Disabling triggers for A_BANK...
alter table A_BANK disable all triggers;
prompt Disabling triggers for A_HCINTERVIEW_QA...
alter table A_HCINTERVIEW_QA disable all triggers;
prompt Disabling triggers for A_INDUSTRY...
alter table A_INDUSTRY disable all triggers;
prompt Disabling triggers for A_JOB...
alter table A_JOB disable all triggers;
prompt Disabling triggers for A_ORGAN...
alter table A_ORGAN disable all triggers;
prompt Disabling triggers for A_PROCESS...
alter table A_PROCESS disable all triggers;
prompt Loading A_ACTION...
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (38, 802001, 801000, 'A111023 A111023 A111023 候选人简历/顾问面评被下载 houxuanrenjianli/guwenmianpingbeixiazai hxrjl/gwmpbxz ', to_date('27-12-2016 15:43:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:32:12', 'dd-mm-yyyy hh24:mi:ss'), 'A111023', '候选人简历/顾问面评被下载', 130001, 254001, 251005, '238002,238003', '[HC]下载了候选人[C]的简历/顾问面评', '[HC]下载了候选人[C]的简历/顾问面评', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '候选人简历/顾问面评被下载', null, 240090, '候选人简历/顾问面评被下载', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (39, 802001, 801000, 'A111024 A111024 A111024 候选人简历/顾问面评被转发 houxuanrenjianli/guwenmianpingbeizhuanfa hxrjl/gwmpbzf ', to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:32:19', 'dd-mm-yyyy hh24:mi:ss'), 'A111024', '候选人简历/顾问面评被转发', 130001, 254001, 251005, '238002,238003', '[HC]转发了候选人[C]的简历/顾问面评给[DETAIL=邮箱]', '[HC]转发了候选人[C]的简历/顾问面评给[DETAIL=邮箱]', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '候选人简历/顾问面评被转发', null, 240090, '候选人简历/顾问面评被转发', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (46, 802001, 801000, 'A112001 A112001 A112001 候选人入精选 houxuanrenrujingxuan hxrrjx ', to_date('27-12-2016 15:49:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:32:28', 'dd-mm-yyyy hh24:mi:ss'), 'A112001', '候选人入精选', 130001, 254001, 251003, '238010', '候选人[C]被列入精选', '候选人[C]被列入精选', '列入精选', '列入精选', '列入精选', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '入精选', null, 240090, '入精选', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (48, 802001, 801000, 'A112003 A112003 A112003 候选人被下线 houxuanrenbeixiaxian hxrbxx ', to_date('27-12-2016 15:55:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:36:03', 'dd-mm-yyyy hh24:mi:ss'), 'A112003', '候选人被下线', 130001, 254001, 251003, '238003,238010', '候选人[C]被[HC]下线[DETAIL=可展开原因]', '候选人[C]被[HC]下线[DETAIL=可展开原因]', '候选人状态变为已下线', '候选人状态变为已下线', '候选人状态变为已下线', '1', '1', '1', '0', '0', '1', null, null, '1', '1', '候选人[C]被下线', '0', null, '1', '候选人[C]被下线', '0', null, '0', null, 0, null, 255001, '0', '0', '被下线', null, 240110, '被下线', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (49, 802001, 801000, 'A112004 A112004 A112004 候选人被上线 houxuanrenbeishangxian hxrbsx ', to_date('27-12-2016 15:55:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:36:23', 'dd-mm-yyyy hh24:mi:ss'), 'A112004', '候选人被上线', 130001, 254001, 251003, '238003', '候选人[C]被[HC]上线', '候选人[C]被[HC]上线', '候选人状态变为已上线', '候选人状态变为已上线', '候选人状态变为已上线', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '上线', null, 240090, '上线', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (50, 802001, 801000, 'A112005 A112005 A112005 候选人被BLOCK houxuanrenbeiBLOCK hxrbBLOCK ', to_date('27-12-2016 16:02:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:36:34', 'dd-mm-yyyy hh24:mi:ss'), 'A112005', '候选人被BLOCK', 130001, 254001, 251003, '238010', '候选人被BLOCK', '候选人被BLOCK', '候选人状态变为被BLOCK', '候选人状态变为被BLOCK', '候选人状态变为被BLOCK', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', 'BLOCK', null, 240100, 'BLOCK', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (51, 802001, 801000, 'A112006 A112006 A112006 候选人被UNBLOCK houxuanrenbeiUNBLOCK hxrbUNBLOCK ', to_date('27-12-2016 16:04:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:36:47', 'dd-mm-yyyy hh24:mi:ss'), 'A112006', '候选人被UNBLOCK', 130001, 254001, 251003, '238003,238010', '候选人[C]被[HC]UNBLOCK[OPEN=可展开原因]', '候选人[C]被[HC]UNBLOCK[OPEN=可展开原因]', '候选人状态变为UNBLOCK', '候选人状态变为UNBLOCK', '候选人状态变为UNBLOCK', '1', '1', '1', '0', '0', '0', null, null, '1', '1', '候选人[C]被释放', '0', null, '1', '候选人[C]被释放', '0', null, '0', null, 0, null, 255001, '0', '0', 'UNBLOCK', null, 240090, 'UNBLOCK', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (52, 802001, 801000, 'A112007 A112007 A112007 候选人列入黑名单 houxuanrenlieruheimingdan hxrlrhmd ', to_date('27-12-2016 16:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:37:30', 'dd-mm-yyyy hh24:mi:ss'), 'A112007', '候选人列入黑名单', 130001, 254001, 251003, '238010', '候选人[C]被列入黑名单[OPEN=可展开原因]', '候选人[C]被列入黑名单[OPEN=可展开原因]', '候选人状态变为黑名单', '候选人状态变为黑名单', '候选人状态变为黑名单', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '候选人状态变为ACE黑名单', '0', null, '0', null, 0, null, 255001, '0', '0', '列入黑名单', null, 240444, '列入黑名单', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (53, 802001, 801000, 'A112008 A112008 A112008 候选人移出黑名单 houxuanrenyichuheimingdan hxrychmd ', to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:37:38', 'dd-mm-yyyy hh24:mi:ss'), 'A112008', '候选人移出黑名单', 130001, 254001, 251003, '238010', '候选人[C]被移出黑名单', '候选人[C]被移出黑名单', null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '移出黑名单', null, 240444, '移出黑名单', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (27, 802001, 801000, 'A220006 A220006 A220006 准入库候选人面评审核通过 zhunrukuhouxuanrenmianpingshenhetongguo zrkhxrmpshtg ', to_date('27-12-2016 13:26:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-01-2017 12:32:44', 'dd-mm-yyyy hh24:mi:ss'), 'A220006', '准入库候选人面评审核通过', 130001, 254001, 251005, '238009', '[BS]通过了准入库候选人[C]的顾问面评', '[BS]通过了准入库候选人[C]的顾问面评', '顾问面评审核通过', '候选人收录', '候选人收录', '1', '1', '1', '1', '0', '1', null, null, '1', '0', null, '0', null, '1', '候选人[C]的顾问面评通过了审核', '0', null, '0', null, 0, null, 255001, '0', '0', '面评审核通过', null, 240090, '面评审核通过', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (37, 802001, 801000, 'A111022 A111022 A111022 删除候选人其他附件 shanchuhouxuanrenqitafujian schxrqtfj ', to_date('27-12-2016 15:09:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:31:50', 'dd-mm-yyyy hh24:mi:ss'), 'A111022', '删除候选人其他附件', 130001, 254001, 251005, '238002,238003', '[HC]删除了候选人[C]的其他附件“[DETAIL=附件名]”', '[HC]删除了候选人[C]的其他附件“[DETAIL=附件名]”', '其他附件删除“[DETAIL=附件名]”', '其他附件删除“[DETAIL=附件名]”', '其他附件删除“[DETAIL=附件名]”', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '删除候选人其他附件', null, 240020, '删除候选人其他附件', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (47, 802001, 801000, 'A112002 A112002 A112002 候选人移出精选 houxuanrenyichujingxuan hxrycjx ', to_date('27-12-2016 15:49:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:32:35', 'dd-mm-yyyy hh24:mi:ss'), 'A112002', '候选人移出精选', 130001, 254001, 251003, '238010', '候选人[C]被移出精选', '候选人[C]被移出精选', '移出精选', '移出精选', '移出精选', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '移出精选', null, 240090, '移出精选', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 802001, 801000, null, to_date('27-12-2016 12:57:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 12:59:00', 'dd-mm-yyyy hh24:mi:ss'), 'A11----1', 'xxxx', 130001, 254001, 251006, '238003', null, null, null, null, null, '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (11, 802001, 801000, null, to_date('27-12-2016 12:57:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 12:58:03', 'dd-mm-yyyy hh24:mi:ss'), 'A11----1', 'xxxx', 130001, 254001, 251006, '238003', null, null, null, null, null, '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (12, 802001, 801000, null, to_date('27-12-2016 12:57:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 12:58:06', 'dd-mm-yyyy hh24:mi:ss'), 'A11----1', 'xxxx', 130001, 254001, 251006, '238003', null, null, null, null, null, '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (13, 802001, 801000, null, to_date('27-12-2016 12:57:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 12:58:09', 'dd-mm-yyyy hh24:mi:ss'), 'A11----1', 'xxxx', 130001, 254001, 251006, '238003', null, null, null, null, null, '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (14, 802001, 801000, null, to_date('27-12-2016 12:57:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 12:58:11', 'dd-mm-yyyy hh24:mi:ss'), 'A11----1', 'xxxx', 130001, 254001, 251006, '238003', null, null, null, null, null, '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (15, 802001, 801000, null, to_date('27-12-2016 12:57:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 12:58:13', 'dd-mm-yyyy hh24:mi:ss'), 'A11----1', 'xxxx', 130001, 254001, 251006, '238003', null, null, null, null, null, '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (62, 802001, 801000, null, to_date('27-12-2016 22:56:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 12:25:57', 'dd-mm-yyyy hh24:mi:ss'), 'A331002', '候选人取消关注', 130001, 254001, 251003, '238002', '[HR公司][HR]取消关注候选人[C]', '[HR公司][HR]取消关注候选人[C]', '取消关注 | [HR公司][HR]', '取消关注 | [HR公司][HR]', '取消关注 | [HR公司][HR]', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255000, '0', '0', null, null, 242002, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (63, 802001, 801000, null, to_date('27-12-2016 23:00:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 12:26:04', 'dd-mm-yyyy hh24:mi:ss'), 'A331004', '候选人被加入黑名单', 130001, 254001, 251003, '238002', '[HR公司][HR]将候选人[C]加入黑名单', '[HR公司][HR]将候选人[C]加入黑名单', '加入黑名单 | [HR公司][HR]', '加入黑名单 | [HR公司][HR]', '加入黑名单 | [HR公司][HR]', '1', '1', '0', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '[HR公司][HR]将候选人[C]加入黑名单', '0', null, '0', null, 0, null, 255001, '0', '0', '候选人被列入黑名单', null, 242004, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (82, 802001, 801000, null, to_date('28-12-2016 07:04:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 12:26:38', 'dd-mm-yyyy hh24:mi:ss'), 'A550001', '开票', 130001, 254001, 251008, '238009', '[I]开票：候选人[C]入职[HR公司][OPEN=可展开详情]', '[I]开票：候选人[C]入职[HR公司][OPEN=可展开详情]', '详见开票记录', '详见开票记录', null, '1', '1', '1', '1', '0', '0', null, null, '1', '0', null, '0', null, '1', '[MODE=红点提示]', '1', '[MODE=红点提示]', '0', null, 0, null, 255001, '0', '0', null, null, 233002, '已开票', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (83, 802001, 801000, null, to_date('28-12-2016 07:05:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 12:26:49', 'dd-mm-yyyy hh24:mi:ss'), 'A550002', '付款到平台', 130001, 254001, 251008, '238002', '[HR公司]付款到平台：候选人[C] | [JOB]', '[HR公司]付款到平台：候选人[C] | [JOB]', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '0', null, '1', '[MODE=红点提示]', '1', '[MODE=红点提示]', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, 233003, '已付款到平台', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (84, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 12:26:56', 'dd-mm-yyyy hh24:mi:ss'), 'A550003', '付款给顾问', 130001, 254001, 251008, '238002', '[HR公司]付款到顾问[HC]：候选人[C] | [JOB]', '[HR公司]付款到顾问[HC]：候选人[C] | [JOB]', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '0', null, '1', '[MODE=红点提示]', '1', '[MODE=红点提示]', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, 233003, '已付款到您的账户', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (32, 802001, 801000, 'A111017 A111017 A111017 上传候选人头像 shangchuanhouxuanrentouxiang schxrtx ', to_date('27-12-2016 15:04:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:31:16', 'dd-mm-yyyy hh24:mi:ss'), 'A111017', '上传候选人头像', 130001, 254001, 251005, '238003', '[HC]上传了候选人[C]的头像', '[HC]上传了候选人[C]的头像', '头像上传', '头像上传', '头像上传', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '上传候选人头像', null, 240020, '上传候选人头像', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (25, 802001, 801000, null, to_date('27-12-2016 13:23:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:34:04', 'dd-mm-yyyy hh24:mi:ss'), 'A220004', '准入库候选人编辑顾问面评', 130001, 254001, 251002, '238003', '[HC]编辑了准入库候选人[C]的顾问面评', '[HC]编辑了准入库候选人[C]的顾问面评', '编辑顾问面评', '编辑顾问面评', '编辑顾问面评', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '编辑顾问面试', null, 240020, '编辑顾问面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (91, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:24:49', 'dd-mm-yyyy hh24:mi:ss'), 'A440001', '邀请面试反馈超时', 130001, 254001, 251004, '238003', '[HC]对[HR公司]邀请候选人[C]面试反馈超时', '[HC]对[HR公司]邀请候选人[C]面试反馈超时', '[HC]对[HR公司]邀请候选人[C]面试反馈超时', '邀请面试超时处理', '邀请面试超时处理', '1', '1', '1', '0', '0', '0', null, null, '1', '1', '[HC]对[HR公司]邀请候选人[C]面试反馈超时', '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, '反馈超时，系统自动拒绝', 245400, '被邀请面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (92, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 22:49:16', 'dd-mm-yyyy hh24:mi:ss'), 'A440002', '面试到时处理', 130001, 254001, 251004, '238003', '面试结束', '面试结束', '面试结束', '面试结束', '面试结束', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 244006, '面试结束', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (87, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:10:57', 'dd-mm-yyyy hh24:mi:ss'), 'A55----', 'xxxxxx', 130001, 254001, 251004, '238002', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (88, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:10:59', 'dd-mm-yyyy hh24:mi:ss'), 'A55----', 'xxxxxx', 130001, 254001, 251004, '238002', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (89, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:11:00', 'dd-mm-yyyy hh24:mi:ss'), 'A55----', 'xxxxxx', 130001, 254001, 251004, '238002', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (90, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:11:02', 'dd-mm-yyyy hh24:mi:ss'), 'A55----', 'xxxxxx', 130001, 254001, 251004, '238002', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (65, 802001, 801000, null, to_date('27-12-2016 23:07:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:24:12', 'dd-mm-yyyy hh24:mi:ss'), 'A330050', 'xxxxx', 130001, 254001, 251004, '238003', null, null, null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '1', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (28, 802001, 801000, null, to_date('27-12-2016 13:28:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:34:29', 'dd-mm-yyyy hh24:mi:ss'), 'A220046', '准入库候选人面评审核不通过', 130001, 254001, 251002, '238009', '[BS]驳回了准入库候选人[C]的顾问面评[DETAIL=可展开原因]', '[BS]驳回了准入库候选人[C]的顾问面评[DETAIL=可展开原因]', '顾问面评审核未通过[OPEN=可展开原因]', '顾问面评审核未通过[OPEN=可展开原因]', '顾问面评审核未通过[OPEN=可展开原因]', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '候选人[C]的顾问面评未通过审核', '0', null, '0', null, 0, null, 255001, '0', '0', '面评审核不通过', null, 240020, '面评审核不通过', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (16, 802001, 801000, 'A220001 A220001 A220001 临时候选人入库申请成功 linshihouxuanrenrukushenqingchenggong lshxrrksqcg ', to_date('27-12-2016 12:57:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 09:57:12', 'dd-mm-yyyy hh24:mi:ss'), 'A220001', '临时候选人入库申请成功', 130001, 254001, 251001, '238010', '[HC]成功申请了临时候选人[C]入库', '[HC]成功申请了临时候选人[C]入库', '成功申请入库', '成功申请入库', '成功申请入库', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '1', '[MODE=红点提示]', '0', null, '0', null, '0', null, 24, '220052', 255001, '0', '0', '入库申请成功', null, 240020, '入库申请成功', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (18, 802001, 801000, 'A220051 A220051 A220051 临时候选人取消入库 linshihouxuanrenquxiaoruku lshxrqxrk ', to_date('27-12-2016 13:02:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 10:00:13', 'dd-mm-yyyy hh24:mi:ss'), 'A220051', '临时候选人取消入库', 130001, 254001, 251001, '238003', '[HC]取消了临时候选人[C]入库', '[HC]取消了临时候选人[C]入库', '取消入库', '取消入库', '取消入库', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '取消入库', null, 240020, '取消入库', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (17, 802001, 801000, 'A220041 A220041 A220041 临时候选人入库申请失败 linshihouxuanrenrukushenqingshibai lshxrrksqsb ', to_date('27-12-2016 13:01:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 10:00:27', 'dd-mm-yyyy hh24:mi:ss'), 'A220041', '临时候选人入库申请失败', 130001, 254001, 251001, '238010', '[HC]申请临时候选人[C]入库失败[DETAIL=可展开原因]', '[HC]申请临时候选人[C]入库失败[DETAIL=可展开原因]', '申请入库失败[OPEN=可展开原因]', '申请入库失败[OPEN=可展开原因]', '申请入库失败[OPEN=可展开原因]', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '入库申请失败', null, 240020, '入库申请失败', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (76, 802001, 801000, 'A330006 A330006 A330006 候选人接受Offer houxuanrenjieshouOffer hxrjsOffer ', to_date('28-12-2016 06:48:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:21:47', 'dd-mm-yyyy hh24:mi:ss'), 'A330006', '候选人接受Offer', 130001, 254001, 251004, '238003', '候选人[C]接受了[HR公司][JOB]的Offer', '候选人[C]接受了[HR公司][JOB]的Offer', '接受Offer | [HR公司][JOB]', '接受Offer | [HR公司][JOB]', '接受Offer | [HR公司][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '0', null, '1', '候选人[C]接受了Offer', '0', null, 0, null, 255004, '1', '1', null, null, 246050, '同意入职', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (77, 802001, 801000, 'A330046 A330046 A330046 候选人拒绝Offer houxuanrenjujueOffer hxrjjOffer ', to_date('28-12-2016 06:48:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:22:09', 'dd-mm-yyyy hh24:mi:ss'), 'A330046', '候选人拒绝Offer', 130001, 254001, 251004, '238003', '候选人[C]拒绝了[HR公司][JOB]的Offer', '候选人[C]拒绝了[HR公司][JOB]的Offer', '拒绝Offer | [HR公司][JOB]', '拒绝Offer | [HR公司][JOB]', '拒绝Offer | [HR公司][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '0', null, '1', '候选人[C]拒绝了Offer', '0', null, 0, null, 255002, '0', '0', null, null, 246045, '拒绝Offer', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (78, 802001, 801000, 'A330007 A330007 A330007 候选人入职 houxuanrenruzhi hxrrz ', to_date('28-12-2016 06:48:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:22:29', 'dd-mm-yyyy hh24:mi:ss'), 'A330007', '候选人入职', 130001, 254001, 251004, '238002,238003', '候选人[C]入职[HR公司][JOB]', '候选人[C]入职[HR公司][JOB]', '入职 | [HR公司][JOB]', '入职 | [HR公司][JOB]', '入职 | [HR公司][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '1', '候选人[C]入职[HR公司][JOB]', '1', '候选人[C]入职[HR公司][JOB]', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, 246052, '已入职', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (79, 802001, 801000, 'A330047 A330047 A330047 候选人未入职 houxuanrenweiruzhi hxrwrz ', to_date('28-12-2016 06:48:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:22:54', 'dd-mm-yyyy hh24:mi:ss'), 'A330047', '候选人未入职', 130001, 254001, 251004, '238002,238003', '候选人[C]未入职[HR公司][JOB]', '候选人[C]未入职[HR公司][JOB]', '未入职 | [HR公司][JOB]', '未入职 | [HR公司][JOB]', '未入职 | [HR公司][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '候选人[C]未入职[HR公司][JOB]', '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 246046, '<span class="red">未入职</span>', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (80, 802001, 801000, 'A330027 A330027 A330027 候选人离职 houxuanrenlizhi hxrlz ', to_date('28-12-2016 06:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:23:06', 'dd-mm-yyyy hh24:mi:ss'), 'A330027', '候选人离职', 130001, 254001, 251004, '238002,238003', '候选人离职[HR公司][JOB]', '候选人离职[HR公司][JOB]', '离职 | [HR公司][JOB]', '离职 | [HR公司][JOB]', '离职 | [HR公司][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '1', '候选人离职[HR公司][JOB]', '1', '候选人离职[HR公司][JOB]', '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 246054, '<span class="red">已离职</span>', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (81, 802001, 801000, 'A330444 A330444 A330444 流程终止 liuchengzhongzhi lczz ', to_date('28-12-2016 06:57:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:23:36', 'dd-mm-yyyy hh24:mi:ss'), 'A330444', '流程终止', 130001, 254001, 251004, '238003', '[I]终止了候选人[C]在[HR公司]的流程[OPEN=可展开原因]', '[I]终止了候选人[C]在[HR公司]的流程[OPEN=可展开原因]', '流程终止 | [HR公司][OPEN=可展开原因]', '流程终止 | [HR公司][OPEN=可展开原因]', '流程终止 | [HR公司][OPEN=可展开原因]', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, 246444, '关闭', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (75, 802001, 801000, 'A330025 A330025 A330025 变更候选人Offer biangenghouxuanrenOffer bghxrOffer ', to_date('28-12-2016 06:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:24:09', 'dd-mm-yyyy hh24:mi:ss'), 'A330025', '变更候选人Offer', 130001, 254001, 251004, '238002,238003', '[I]变更了候选人[C]的Offer[OPEN=可展开详情]', '[I]变更了候选人[C]的Offer[OPEN=可展开详情]', '更新之前', '更新之前', '更新之前', '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255000, '0', '1', null, null, 246020, 'Offer已变更', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (74, 802001, 801000, 'A330015 A330015 A330015 上传候选人Offer shangchuanhouxuanrenOffer schxrOffer ', to_date('28-12-2016 06:45:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:24:16', 'dd-mm-yyyy hh24:mi:ss'), 'A330015', '上传候选人Offer', 130001, 254001, 251004, '238002,238003', '[I]上传了候选人[C]的Offer[OPEN=可展开详情]', '[I]上传了候选人[C]的Offer[OPEN=可展开详情]', '第[N]轮面试 | [HR公司][JOB][OPEN=可展开详情]', '第[N]轮面试 | [HR公司][JOB][OPEN=可展开详情]', '第[N]轮面试 | [HR公司][JOB][OPEN=可展开详情]', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 246020, 'Offer已上传', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (61, 802001, 801000, 'A331001 A331001 A331001 候选人被关注 houxuanrenbeiguanzhu hxrbgz ', to_date('27-12-2016 18:26:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-01-2017 14:06:25', 'dd-mm-yyyy hh24:mi:ss'), 'A331001', '候选人被关注', 130001, 254001, 251003, '238002', '[HR公司][HR]关注了候选人[C]', '[HR公司][HR]关注了候选人[C]', '关注 | [HR公司][HR]', '关注 | [HR公司][HR]', '关注 | [HR公司][HR]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '[HR公司][HR]关注了候选人[C]', '0', null, '0', null, 0, null, 255000, '0', '0', '候选人被 [HR公司] | [HR] 关注！', null, 242001, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (73, 802001, 801000, 'A330005 A330005 A330005 Offer Offer Offer ', to_date('28-12-2016 06:45:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:24:24', 'dd-mm-yyyy hh24:mi:ss'), 'A330005', 'Offer', 130001, 254001, 251004, '238002,238003', '[HR公司]确认给候选人发Offer', '[HR公司]确认给候选人发Offer', '[HR公司]确认给候选人发Offer', '[HR公司]确认给候选人发Offer', '[HR公司]确认给候选人发Offer', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 246020, '被Offer', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (72, 802001, 801000, 'A330004 A330004 A330004 确认下一轮面试 querenxiayilunmianshi qrxylms ', to_date('28-12-2016 06:41:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:24:43', 'dd-mm-yyyy hh24:mi:ss'), 'A330004', '确认下一轮面试', 130001, 254001, 251004, '238002,238003', '[HR公司][HR]确认候选人[C]进入下一轮面试', '[HR公司][HR]确认候选人[C]进入下一轮面试', '确认下一轮面试 | [HR公司][HR]', '确认下一轮面试 | [HR公司][HR]', '确认下一轮面试 | [HR公司][HR]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '[HR公司][HR]确认候选人[C]进入下一轮面试', '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 246009, '进入下一轮面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (71, 802001, 801000, 'A330043 A330043 A330043 候选人面试未通过 houxuanrenmianshiweitongguo hxrmswtg ', to_date('27-12-2016 23:22:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:24:58', 'dd-mm-yyyy hh24:mi:ss'), 'A330043', '候选人面试未通过', 130001, 254001, 251004, '238002,238003', '候选人[C]第[IVN]轮面试没过[OPEN=可展开原因]', '候选人[C]第[IVN]轮面试没过[OPEN=可展开原因]', '第[IVN轮面试没通过 | [HR公司][JOB][OPEN=可展开详情]', '第[IVN轮面试没通过 | [HR公司][JOB][OPEN=可展开详情]', '第[IVN轮面试没通过 | [HR公司][JOB][OPEN=可展开详情]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '候选人[C]面试没通过', '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 246043, '面试 <span class="red">未通过</span>', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (70, 802001, 801000, 'A330003 A330003 A330003 候选人面试通过 houxuanrenmianshitongguo hxrmstg ', to_date('27-12-2016 23:20:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:25:16', 'dd-mm-yyyy hh24:mi:ss'), 'A330003', '候选人面试通过', 130001, 254001, 251004, '238002,238003', '候选人[C]第[IVN]轮面试通过', '候选人[C]第[IVN]轮面试通过', '第[IVN轮面试通过 | [HR公司][JOB]', '第[IVN轮面试通过 | [HR公司][JOB]', '第[IVN轮面试通过 | [HR公司][JOB]', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255000, '0', '0', null, null, 246009, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (68, 802001, 801000, 'A330002 A330002 A330002 安排候选人面试 anpaihouxuanrenmianshi aphxrms ', to_date('27-12-2016 23:15:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:25:40', 'dd-mm-yyyy hh24:mi:ss'), 'A330002', '安排候选人面试', 130001, 254001, 251004, '238002,238003', '[I]安排了候选人[C]的第[IVN]轮面试[OPEN=可展开详情]', '[I]安排了候选人[C]的第[IVN]轮面试[OPEN=可展开详情]', '第[IVN]轮面试 | [HR公司][JOB][OPEN=可展开详情]', '第[IVN]轮面试 | [HR公司][JOB][OPEN=可展开详情]', '第[IVN]轮面试 | [HR公司][JOB][OPEN=可展开详情]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '[NOTICETIME][MODE=面试日历]', '1', '[NOTICETIME][MODE=面试日历]', '0', null, 0, '440002', 255001, '1', '0', '[DETAIL=面试地点]', null, 246006, '面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (69, 802001, 801000, 'A330022 A330022 A330022 变更候选人面试 biangenghouxuanrenmianshi bghxrms ', to_date('27-12-2016 23:18:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:25:48', 'dd-mm-yyyy hh24:mi:ss'), 'A330022', '变更候选人面试', 130001, 254001, 251004, '238002,238003', '[I]变更了候选人[C]的第[IVN]轮面试[OPEN=可展开详情]', '[I]变更了候选人[C]的第[IVN]轮面试[OPEN=可展开详情]', '更新之前', '更新之前', '更新之前', '1', '1', '0', '0', '0', '0', null, null, '1', '0', null, '0', null, '1', '[NOTICETIME][MODE=面试日历]', '1', '[NOTICETIME][MODE=面试日历]', '0', null, 0, '440002', 255001, '1', '0', '[DETAIL=面试地点]', null, 246006, '面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (67, 802001, 801000, 'A330041 A330041 A330041 候选人拒绝面试 houxuanrenjujuemianshi hxrjjms ', to_date('27-12-2016 23:11:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:26:03', 'dd-mm-yyyy hh24:mi:ss'), 'A330041', '候选人拒绝面试', 130001, 254001, 251004, '238003', '候选人[C]拒绝面试[HR公司][JOB]', '候选人[C]拒绝面试[HR公司][JOB]', '拒绝面试 | [HR公司]', '拒绝面试 | [HR公司]', '拒绝面试 | [HR公司]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '0', null, '1', '候选人[C]拒绝面试', '0', null, 0, null, 255000, '0', '0', null, '候选人谢绝面试', 246042, '拒绝面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (66, 802001, 801000, 'A330001 A330001 A330001 候选人同意面试 houxuanrentongyimianshi hxrtyms ', to_date('27-12-2016 23:09:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:26:28', 'dd-mm-yyyy hh24:mi:ss'), 'A330001', '候选人同意面试', 130001, 254001, 251004, '238003', '候选人[C]同意面试[HR公司][JOB]', '候选人[C]同意面试[HR公司][JOB]', '同意面试 | [HR公司]', '同意面试 | [HR公司]', '同意面试 | [HR公司]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '0', null, '1', '候选人[C]同意面试', '0', null, 0, null, 255003, '0', '1', null, null, 246006, '同意面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (64, 802001, 801000, 'A330000 A330000 A330000 候选人被邀请面试 houxuanrenbeiyaoqingmianshi hxrbyqms ', to_date('27-12-2016 23:03:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-02-2017 10:26:42', 'dd-mm-yyyy hh24:mi:ss'), 'A330000', '候选人被邀请面试', 130001, 254001, 251004, '238002', '[HR公司][HR]邀请候选人[C]面试[JOB]', '[HR公司][HR]邀请候选人[C]面试[JOB]', '邀请面试 | [HR公司][HR]', '邀请面试 | [HR公司][HR]', '邀请面试 | [HR公司][HR]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '[HR公司][HR]邀请候选人[C]面试[DEDAIL=职位]', '0', null, '0', null, 24, '440001', 255004, '0', '0', null, '[LIMITTIME] 分后将自动拒绝', 246001, '被邀请面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (30, 802001, 801000, 'A111015 A111015 A111015 更新候选人简历 gengxinhouxuanrenjianli gxhxrjl ', to_date('27-12-2016 15:02:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:31:05', 'dd-mm-yyyy hh24:mi:ss'), 'A111015', '更新候选人简历', 130001, 254001, 251005, '238003', '[HC]更新了候选人[C]的简历', '[HC]更新了候选人[C]的简历', '简历更新', '简历更新', '简历更新', '1', '1', '1', '1', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '更新候选人简历', null, 240020, '更新候选人简历', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (85, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 12:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'A330143', '备注原因（面试未通过）', 130001, 254001, 251003, '238003', '备注原因（面试未通过）', '备注原因（面试未通过）', '备注原因（面试未通过）', '备注原因（面试未通过）', '备注原因（面试未通过）', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255000, '0', '0', null, null, 245043, '面试 <span class=', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (86, 802001, 801000, 'A330144 A330144 A330144 备注原因（未入职） beizhuyuanyin（weiruzhi） bzyy（wrz） ', to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 23:39:37', 'dd-mm-yyyy hh24:mi:ss'), 'A330144', '备注原因（未入职）', 130001, 254001, 251003, '238003', '备注原因（未入职）', '备注原因（未入职）', '备注原因（未入职）', '备注原因（未入职）', '备注原因（未入职）', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (31, 802001, 801000, null, to_date('27-12-2016 15:03:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:43:19', 'dd-mm-yyyy hh24:mi:ss'), 'A111016', '更新候选人顾问面评', 130001, 254001, 251005, '238003', '[HC]更新了候选人[C]的顾问面评', '[HC]更新了候选人[C]的顾问面评', '顾问面评更新', '顾问面评更新', '顾问面评更新', '1', '1', '1', '1', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '更新候选人顾问面评', null, null, '更新候选人顾问面评', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (40, 802001, 801000, null, to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:46:14', 'dd-mm-yyyy hh24:mi:ss'), 'A111---', 'xxx', 130001, 254001, 251005, '238003', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (41, 802001, 801000, null, to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:46:17', 'dd-mm-yyyy hh24:mi:ss'), 'A111---', 'xxx', 130001, 254001, 251005, '238003', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (42, 802001, 801000, null, to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:46:19', 'dd-mm-yyyy hh24:mi:ss'), 'A111---', 'xxx', 130001, 254001, 251005, '238003', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (43, 802001, 801000, null, to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:46:22', 'dd-mm-yyyy hh24:mi:ss'), 'A111---', 'xxx', 130001, 254001, 251005, '238003', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (44, 802001, 801000, null, to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:46:24', 'dd-mm-yyyy hh24:mi:ss'), 'A111---', 'xxx', 130001, 254001, 251005, '238003', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (45, 802001, 801000, null, to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:46:26', 'dd-mm-yyyy hh24:mi:ss'), 'A111---', 'xxx', 130001, 254001, 251005, '238003', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (54, 802001, 801000, null, to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 18:22:39', 'dd-mm-yyyy hh24:mi:ss'), 'A112---', 'xxxx', 130001, 254001, 251001, '238010', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (55, 802001, 801000, null, to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 18:22:42', 'dd-mm-yyyy hh24:mi:ss'), 'A112---', 'xxxx', 130001, 254001, 251001, '238010', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (56, 802001, 801000, null, to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 18:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'A112---', 'xxxx', 130001, 254001, 251001, '238010', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (57, 802001, 801000, null, to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 18:22:47', 'dd-mm-yyyy hh24:mi:ss'), 'A112---', 'xxxx', 130001, 254001, 251001, '238010', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (58, 802001, 801000, null, to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 18:22:51', 'dd-mm-yyyy hh24:mi:ss'), 'A112---', 'xxxx', 130001, 254001, 251001, '238010', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (59, 802001, 801000, null, to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 18:22:53', 'dd-mm-yyyy hh24:mi:ss'), 'A112---', 'xxxx', 130001, 254001, 251001, '238010', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (60, 802001, 801000, null, to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 18:22:56', 'dd-mm-yyyy hh24:mi:ss'), 'A112---', 'xxxx', 130001, 254001, 251001, '238010', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (33, 802001, 801000, 'A111018 A111018 A111018 删除候选人头像 shanchuhouxuanrentouxiang schxrtx ', to_date('27-12-2016 15:05:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:31:23', 'dd-mm-yyyy hh24:mi:ss'), 'A111018', '删除候选人头像', 130001, 254001, 251005, '238003', '[HC]删除了候选人[C]的头像', '[HC]删除了候选人[C]的头像', '头像删除', '头像删除', '头像删除', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '删除候选人头像', null, 240020, '删除候选人头像', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1, 802001, 801000, null, to_date('26-12-2016 22:30:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:24:16', 'dd-mm-yyyy hh24:mi:ss'), 'A110001', '新增临时候选人', 130001, 254001, 251006, '238003', '[HC]新增了临时候选人[C]', '[HC]新增了临时候选人[C]', '候选人新增', '候选人新增', '候选人新增', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '新增', null, 240000, '新增', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:29:29', 'dd-mm-yyyy hh24:mi:ss'), 'A110005', '上传临时候选人原始简历', 130001, 254001, 251006, '238003', '[HC]上传了临时候选人[C]的原始简历', '[HC]上传了临时候选人[C]的原始简历', '原始简历上传', '原始简历上传', '原始简历上传', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '上传临时候选人原始简历', null, 240000, '上传临时候选人原始简历', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (2, 802001, 801000, null, to_date('26-12-2016 22:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:28:03', 'dd-mm-yyyy hh24:mi:ss'), 'A110002', '更新临时候选人简历', 130001, 254001, 251006, '238003', '[HC]更新了临时候选人[C]的简历', '[HC]更新了临时候选人[C]的简历', '简历更新', '简历更新', '简历更新', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '更新临时候选人简历', null, 240000, '更新临时候选人简历', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:28:53', 'dd-mm-yyyy hh24:mi:ss'), 'A110003', '上传临时候选人头像', 130001, 254001, 251006, '238003', '[HC]上传了临时候选人[C]的头像', '[HC]上传了临时候选人[C]的头像', '头像上传', '头像上传', '头像上传', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '上传临时候选人头像', null, 240000, '上传临时候选人头像', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:29:12', 'dd-mm-yyyy hh24:mi:ss'), 'A110004', '删除临时候选人头像', 130001, 254001, 251006, '238003', '[HC]删除了临时候选人[C]的头像', '[HC]删除了临时候选人[C]的头像', '头像删除', '头像删除', '头像删除', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '删除临时候选人头像', null, 240000, '删除临时候选人头像', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:29:44', 'dd-mm-yyyy hh24:mi:ss'), 'A110006', '删除临时候选人原始简历', 130001, 254001, 251006, '238003', '[HC]删除了临时候选人[C]的原始简历', '[HC]删除了临时候选人[C]的原始简历', '原始简历删除', '原始简历删除', '原始简历删除', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '删除临时候选人原始简历', null, 240000, '删除临时候选人原始简历', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:29:57', 'dd-mm-yyyy hh24:mi:ss'), 'A110007', '上传临时候选人其他附件', 130001, 254001, 251006, '238003', '[HC]上传了临时候选人[C]的其他附件“[DETAIL=附件名]”', '[HC]上传了临时候选人[C]的其他附件“[DETAIL=附件名]”', '其他附件上传“[DETAIL=附件名]”', '其他附件上传“[DETAIL=附件名]”', '其他附件上传“[DETAIL=附件名]”', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '上传临时候选人其他附件', null, 240000, '上传临时候选人其他附件', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:30:15', 'dd-mm-yyyy hh24:mi:ss'), 'A110008', '删除临时候选人其他附件', 130001, 254001, 251006, '238003', '[HC]删除了临时候选人[C]的其他附件“[DETAIL=附件名]”', '[HC]删除了临时候选人[C]的其他附件“[DETAIL=附件名]”', '其他附件删除“[DETAIL=附件名]”', '其他附件删除“[DETAIL=附件名]”', '其他附件删除“[DETAIL=附件名]”', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '删除临时候选人其他附件', null, 240000, '删除临时候选人其他附件', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:30:34', 'dd-mm-yyyy hh24:mi:ss'), 'A110009', '删除临时候选人', 130001, 254001, 251006, '238003', '[HC]删除了临时候选人[C]', '[HC]删除了临时候选人[C]', '候选人删除', '候选人删除', '候选人删除', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '删除临时候选人', null, 240000, '删除临时候选人', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (23, 802001, 801000, null, to_date('27-12-2016 13:15:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 14:31:52', 'dd-mm-yyyy hh24:mi:ss'), 'A220003', '准入库候选人安排顾问面试', 130001, 254001, 251002, '238003', '[HC]安排了准入库候选人[C]的顾问面试[DETAIL=可展开原因]', '[HC]安排了准入库候选人[C]的顾问面试[DETAIL=可展开原因]', '安排顾问面试[OPEN=可展开原因]', '安排顾问面试[OPEN=可展开原因]', '安排顾问面试[OPEN=可展开原因]', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '[MODE=面试日历]', '0', null, '0', null, 0, '440003', 255001, '1', '0', '安排顾问面试', null, 240020, '安排顾问面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (19, 802001, 801000, null, to_date('27-12-2016 13:07:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:32:19', 'dd-mm-yyyy hh24:mi:ss'), 'A220002', '临时候选人入库申请审核通过', 130001, 254001, 251002, '238009', '[BC]通过了临时候选人[C]的入库审核', '[BC]通过了临时候选人[C]的入库审核', '通过了入库审核', '通过了入库审核', '通过了入库审核', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '候选人[C]通过了入库审核', '0', null, '0', null, 0, null, 255001, '0', '0', '入库申请审核通过', null, 240020, '入库申请审核通过', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (20, 802001, 801000, null, to_date('27-12-2016 13:09:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:32:31', 'dd-mm-yyyy hh24:mi:ss'), 'A220042', '临时候选人入库申请审核不通过', 130001, 254001, 251001, '238009', '[BS]驳回了临时候选人[C]的入库审核[OPEN=可展开原因]', '[BS]驳回了临时候选人[C]的入库审核[OPEN=可展开原因]', '入库审核未通过[OPEN=可展开原因]', '入库审核未通过[OPEN=可展开原因]', '入库审核未通过[OPEN=可展开原因]', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '候选人[C]入库审核未通过', '0', null, '0', null, 0, null, 255001, '0', '0', '入库申请审核不通过', null, 240020, '入库申请审核不通过', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 802001, 801000, null, to_date('27-12-2016 13:10:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:32:41', 'dd-mm-yyyy hh24:mi:ss'), 'A220052', '临时候选人入库申请审核超时', 130001, 254001, 251001, '238010', '临时候选人[C]的入库审核超时', '临时候选人[C]的入库审核超时', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '1', '候选人[C]入库审核超时', '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '入库申请审核超时', null, 240020, '入库申请审核超时', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (22, 802001, 801000, null, to_date('27-12-2016 13:12:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:33:36', 'dd-mm-yyyy hh24:mi:ss'), 'A111007', '准入库候选人简历完善', 130001, 254001, 251002, '238009', '[BS]完善了准入库候选人[C]的简历', '[BS]完善了准入库候选人[C]的简历', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '简历完善', null, 240020, '简历完善', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (29, 802001, 801000, null, to_date('27-12-2016 13:29:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:34:37', 'dd-mm-yyyy hh24:mi:ss'), 'A220056', '准入库候选人面评审核超时', 130001, 254001, 251002, '238010', '准入库候选人[C]的顾问面评审核超时', '准入库候选人[C]的顾问面评审核超时', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '1', '候选人[C]顾问面评审核超时', '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '面评审核超时', null, 240020, '面评审核超时', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (26, 802001, 801000, null, to_date('27-12-2016 13:24:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:35:25', 'dd-mm-yyyy hh24:mi:ss'), 'A220005', '准入库候选人提交顾问面评', 130001, 254001, 251002, '238003', '[HC]提交了准入库候选人[C]的顾问面评', '[HC]提交了准入库候选人[C]的顾问面评', '提交顾问面评', '提交顾问面评', '提交顾问面评', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '1', '[MODE=红点提示]', '0', null, '0', null, '0', null, 24, '220056', 255001, '0', '0', '提交顾问面评', null, 240020, '提交顾问面评', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (93, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 14:28:55', 'dd-mm-yyyy hh24:mi:ss'), 'A440003', '顾问面试到时处理', 130001, 254001, 251002, '238003', '顾问面试结束', '顾问面试结束', '顾问面试结束', '顾问面试结束', '顾问面试结束', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 240020, '顾问面试结束', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (24, 802001, 801000, null, to_date('27-12-2016 13:18:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 14:31:59', 'dd-mm-yyyy hh24:mi:ss'), 'A111009', '准入库候选人变更顾问面试', 130001, 254001, 251002, '238003', '[HC]变更了准入库候选人[C]的顾问面试[DETAIL=可展开详情]', '[HC]变更了准入库候选人[C]的顾问面试[DETAIL=可展开详情]', '更新之前', '更新之前', '更新之前', '1', '1', '1', '0', '0', '0', null, null, '1', '0', null, '0', null, '1', '[MODE=面试日历]', '0', null, '0', null, 0, '440003', 255001, '1', '0', '变更顾问面试', null, 240020, '变更顾问面试', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (35, 802001, 801000, 'A111020 A111020 A111020 删除候选人原始简历 shanchuhouxuanrenyuanshijianli schxrysjl ', to_date('27-12-2016 15:07:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:31:37', 'dd-mm-yyyy hh24:mi:ss'), 'A111020', '删除候选人原始简历', 130001, 254001, 251005, '238003', '[HC]删除了候选人[C]的原始简历\n', '[HC]删除了候选人[C]的原始简历', '原始简历删除', '原始简历删除', '原始简历删除', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '删除候选人原始简历', null, 240020, '删除候选人原始简历', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (34, 802001, 801000, 'A111019 A111019 A111019 上传候选人原始简历 shangchuanhouxuanrenyuanshijianli schxrysjl ', to_date('27-12-2016 15:07:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:31:31', 'dd-mm-yyyy hh24:mi:ss'), 'A111019', '上传候选人原始简历', 130001, 254001, 251005, '238003', '[HC]上传了候选人[C]的原始简历\n', '[HC]上传了候选人[C]的原始简历', '原始简历上传', '原始简历上传', '原始简历上传', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '上传候选人原始简历', null, 240020, '上传候选人原始简历', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (36, 802001, 801000, 'A111021 A111021 A111021 上传候选人其他附件 shangchuanhouxuanrenqitafujian schxrqtfj ', to_date('27-12-2016 15:09:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 22:31:44', 'dd-mm-yyyy hh24:mi:ss'), 'A111021', '上传候选人其他附件', 130001, 254001, 251005, '238003', '[HC]上传了候选人[C]的其他附件“[DETAIL=附件名]”', '[HC]上传了候选人[C]的其他附件“[DETAIL=附件名]”', '其他附件上传“[DETAIL=附件名]”', '其他附件上传“[DETAIL=附件名]”', '其他附件上传“[DETAIL=附件名]”', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', '上传候选人其他附件', null, 240020, '上传候选人其他附件', null);
commit;
prompt 93 records loaded
prompt Loading A_BANK...
prompt Table is empty
prompt Loading A_HCINTERVIEW_QA...
prompt Table is empty
prompt Loading A_INDUSTRY...
prompt Table is empty
prompt Loading A_JOB...
prompt Table is empty
prompt Loading A_ORGAN...
prompt Table is empty
prompt Loading A_PROCESS...
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, 802001, 801000, '330002 330002 330002 安排面试 anpaimianshi apms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 01:50:29', 'dd-mm-yyyy hh24:mi:ss'), '330002', '安排面试', 252001, 'A330002', 130001, null, '240090', null, '243001', null, null, null, null, null, '246005', null, null, null, 244005, null, null, null, null, 246006, '安排面试', 'HR_addIV', '流程标题格式：安排面试', '流程说明格式：安排面试', '<span class="grey">面试者：</span>[HR]<br><span class="grey">面试职位：</span>[JOB]<br><span class="grey">面试时间：</span>[NOTICETIME]<br><span class="grey">面试地点：</span>[DETAIL=面试地点]', '0', null, '1', null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (12, 802001, 801000, '330025 330025 330025 Offer变更 Offerbiangeng Offerbg ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 01:51:42', 'dd-mm-yyyy hh24:mi:ss'), '330025', 'Offer变更', 252001, 'A330025', 130001, null, '240090', null, '243001', null, null, null, null, null, '246021', null, null, null, 244020, null, null, null, null, 246021, 'Offer变更', 'HR_uploadOffer', '流程标题格式：Offer变更', '流程说明格式：Offer变更', '[DETAIL=Offer文件]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (51, 802001, 801000, '220056 220056 220056 顾问面评审核超时处理 guwenmianpingshenhechaoshichuli gwmpshcscl ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-01-2017 04:11:27', 'dd-mm-yyyy hh24:mi:ss'), '220056', '顾问面评审核超时处理', 252001, 'A220056', 130001, null, null, '241025', null, null, null, null, null, null, null, null, 241044, null, null, null, null, null, null, null, null, null, '流程标题格式：顾问面评审核超时，系统自动拒绝', '流程说明格式：顾问面评审核超时，系统自动拒绝', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (24, 802001, 801000, '220001 220001 220001 申请入库 shenqingruku sqrk ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-01-2017 04:14:40', 'dd-mm-yyyy hh24:mi:ss'), '220001', '申请入库', 252003, 'A220001', 130001, null, '240000', '241000,241004', null, null, null, null, null, null, null, null, 241001, null, null, null, null, null, null, null, '申请入库', 'HC_applyActive', '流程标题格式：申请入库', '流程说明格式：申请入库', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (30, 802001, 801000, '220005 220005 220005 提交顾问面评 tijiaoguwenmianping tjgwmp ', to_date('25-12-2016 16:40:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-01-2017 04:15:05', 'dd-mm-yyyy hh24:mi:ss'), '220005', '提交顾问面评', 252003, 'A220005', 130001, null, '240020', '241024,241044', null, null, null, null, null, null, null, null, 241025, null, null, null, null, null, null, null, '提交审核', 'HC_commitComment', '流程标题格式：提交审核顾问面评', '流程说明格式：提交审核顾问面评', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (50, 802001, 801000, '220052 220052 220052 入库申请审核超时处理 rukushenqingshenhechaoshichuli rksqshcscl ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-01-2017 04:11:58', 'dd-mm-yyyy hh24:mi:ss'), '220052', '入库申请审核超时处理', 252001, 'A220052', 130001, null, null, '241001', null, null, null, null, null, null, null, null, 241004, null, null, null, null, null, null, null, null, null, '流程标题格式：入库申请审核超时，系统自动拒绝', '流程说明格式：入库申请审核超时，系统自动拒绝', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (18, 802001, 801000, '330444 330444 330444 关闭流程 guanbiliucheng gblc ', to_date('25-12-2016 17:15:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:17:07', 'dd-mm-yyyy hh24:mi:ss'), '330444', '关闭流程', 252001, 'A330444', 130001, null, null, null, '243001', null, null, null, null, null, null, null, null, 243009, 244099, 245444, null, null, null, 246444, '结束流程', 'HC_closeProcess', '流程标题格式：关闭流程', '流程说明格式：关闭流程', '[DETAIL=原因]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (19, 802001, 801000, '330143 330143 330143 备注原因（面试未通过） beizhuyuanyin（mianshiweitongguo） bzyy（mswtg） ', to_date('24-12-2016 18:18:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:17:29', 'dd-mm-yyyy hh24:mi:ss'), '330143', '备注原因（面试未通过）', 252001, 'A330143', 130001, null, null, null, null, '244099', null, null, null, null, '246043', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (41, 802001, 801000, '550001 550001 550001 开票 kaipiao kp ', to_date('28-12-2016 07:02:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:21:21', 'dd-mm-yyyy hh24:mi:ss'), '550001', '开票', 252001, 'A550001', 130001, null, null, null, null, null, null, null, null, null, '246060', null, null, null, null, null, 233002, null, null, 246061, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (42, 802001, 801000, '550002 550002 550002 付款到平台 fukuandaopingtai fkdpt ', to_date('28-12-2016 07:02:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:21:49', 'dd-mm-yyyy hh24:mi:ss'), '550002', '付款到平台', 252001, 'A550002', 130001, null, null, null, null, null, null, null, null, null, '246061', null, null, null, null, null, 233003, null, null, 246062, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (26, 802001, 801000, '220002 220002 220002 入库审核通过 rukushenhetongguo rkshtg ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 16:32:46', 'dd-mm-yyyy hh24:mi:ss'), '220002', '入库审核通过', 252003, 'A220002', 130001, null, '240000', '241001', null, null, null, null, null, null, null, 240020, 241021, null, null, null, null, null, null, null, '入库审核', 'BS_checkActiveApply', '流程标题格式：入库审核通过', '流程说明格式：入库审核通过', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (46, 802001, 801000, '440001 440001 440001 邀请面试超时处理 yaoqingmianshichaoshichuli yqmscscl ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 13:48:33', 'dd-mm-yyyy hh24:mi:ss'), '440001', '邀请面试超时处理', 252001, 'A440001', 130001, null, null, null, '243001', null, null, null, null, null, '246001', null, null, 243009, 244099, 245042, null, null, null, 246042, null, null, '流程标题格式：反馈超时，系统自动拒绝', '流程说明格式：反馈超时，系统自动拒绝', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (29, 802001, 801000, '220004 220004 220004 编辑顾问面评 bianjiguwenmianping bjgwmp ', to_date('25-12-2016 16:40:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-01-2017 13:55:25', 'dd-mm-yyyy hh24:mi:ss'), '220004', '编辑顾问面评', 252003, 'A220004', 130001, null, '240020', '241023,241024', null, null, null, null, null, null, null, null, 241024, null, null, null, null, null, null, null, '编辑顾问面评', 'HC_editHCComment', '流程标题格式：编辑顾问面评', '流程说明格式：编辑顾问面评', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (23, 802001, 801000, '110001 110001 110001 新增候选人 xinzenghouxuanren xzhxr ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 16:26:23', 'dd-mm-yyyy hh24:mi:ss'), '110001', '新增候选人', 252003, 'A110001', 130001, null, null, null, null, null, null, null, null, null, null, 240000, 241000, null, null, null, null, null, null, null, null, null, '流程标题格式：新增候选人', '流程说明格式：新增候选人', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (27, 802001, 801000, '220042 220042 220042 入库审核未通过 rukushenheweitongguo rkshwtg ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 16:32:35', 'dd-mm-yyyy hh24:mi:ss'), '220042', '入库审核未通过', 252003, 'A220042', 130001, null, '240000', '241001', null, null, null, null, null, null, null, 240000, 241004, null, null, null, null, null, null, null, '入库申请审核', 'BS_checkActiveApply', '流程说明格式：入库审核未通过', '流程说明格式：入库审核未通过', '[DETAIL=原因]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (25, 802001, 801000, '220051 220051 220051 取消入库 quxiaoruku qxrk ', to_date('25-12-2016 16:38:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-01-2017 10:04:08', 'dd-mm-yyyy hh24:mi:ss'), '220051', '取消入库', 252003, 'A220051', 130001, null, '240000', '241001', null, null, null, null, null, null, null, null, 241000, null, null, null, null, null, null, null, '取消入库', 'HC_cancelActive', '流程标题格式：取消入库', '流程说明格式：取消入库', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 802001, 801000, '330044 330044 330044 xxxx xxxx xxxx ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 01:58:52', 'dd-mm-yyyy hh24:mi:ss'), '330044', 'xxxx', 252001, 'A330044', 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '流程标题格式：', '流程说明格式：', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (15, 802001, 801000, '330007 330007 330007 入职 ruzhi rz ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 02:01:08', 'dd-mm-yyyy hh24:mi:ss'), '330007', '入职', 252001, 'A330007', 130001, null, '240090', null, '243001', null, null, null, null, null, '246050', 240100, null, 243009, 244052, null, 233001, null, null, 246060, '确认入职', 'HR_entry', '流程标题格式：候选人入职', '流程说明格式：候选人入职', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, 802001, 801000, '330022 330022 330022 面试变更 mianshibiangeng msbg ', to_date('25-12-2016 17:15:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 01:50:37', 'dd-mm-yyyy hh24:mi:ss'), '330022', '面试变更', 252001, 'A330022', 130001, null, '240090', null, '243001', null, null, null, null, null, '246006', null, null, null, 244005, null, null, null, null, 246006, '面试变更', 'HR_editIV', '流程标题格式：面试变更', '流程说明格式：面试变更', '<span class="grey">面试者：</span>[HR]<br><span class="grey">面试职位：</span>[JOB]<br><span class="grey">面试时间：</span>[NOTICETIME]<br><span class="grey">面试地点：</span>[DETAIL=面试地点]', '0', null, '2', null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 802001, 801000, '330003 330003 330003 面试通过 mianshitongguo mstg ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 01:50:52', 'dd-mm-yyyy hh24:mi:ss'), '330003', '面试通过', 252001, 'A330003', 130001, null, '240090', null, '243001', null, null, null, null, null, '246006', null, null, null, 244005, null, null, null, null, 246009, null, null, '流程标题格式：面试通过', '流程说明格式：面试通过', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (13, 802001, 801000, '330006 330006 330006 候选人接受Offer houxuanrenjieshouOffer hxrjsOffer ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 01:52:50', 'dd-mm-yyyy hh24:mi:ss'), '330006', '候选人接受Offer', 252001, 'A330006', 130001, null, '240090', null, '243001', null, null, null, null, null, '246021', null, null, null, 244052, null, null, null, null, 246050, null, null, '流程标题格式：候选人接受Offer', '流程说明格式：候选人接受Offer', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (28, 802001, 801000, '220003 220003 220003 安排顾问面试 anpaiguwenmianshi apgwms ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 22:25:32', 'dd-mm-yyyy hh24:mi:ss'), '220003', '安排顾问面试', 252003, 'A220003', 130001, null, '240020', '241021', null, null, null, null, null, null, null, null, 241022, null, null, null, null, null, null, null, '顾问面试', 'HC_addIV', '流程说明格式：安排顾问面试', '流程说明格式：安排顾问面试', '面试时间：</span>[NOTICETIME]<br><span class="grey">面试地点：</span>[DETAIL=面试地点]" maxlength=500 cols=80 rows=12 onclick="CommonFocus();"><span class="grey">面试顾问：</span>[HC]" maxlength=500 cols=80 rows=12 onclick="CommonFocus();"><span class="grey">面试时间：</span>[NOTICETIME]<br><span class="grey">面试地点：</span>[DETAIL=面试地点]" maxlength=500 cols=80 rows=12 onclick="CommonFocus();"><span class="grey">面试顾问：</span>[HC]', '0', null, '1', null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (49, 802001, 801000, '444444 444444 444444 干预 ganyu gy ', to_date('18-01-2017 00:01:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-01-2017 00:01:41', 'dd-mm-yyyy hh24:mi:ss'), '444444', '干预', 252001, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '流程标题格式：干预', '流程说明格式：干预', '流程详情格式：干预', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (39, 802001, 801000, '331002 331002 331002 取消关注 quxiaoguanzhu qxgz ', to_date('24-12-2016 18:18:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:19:17', 'dd-mm-yyyy hh24:mi:ss'), '331002', '取消关注', 252002, 'A331002', 130001, null, null, null, null, null, null, null, '242001', null, null, null, null, null, null, null, null, 242002, null, null, '取消关注', 'HR_cancelCollect', '流程标题格式：取消关注', '流程说明格式：取消关注', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (11, 802001, 801000, '330015 330015 330015 上传Offer shangchuanOffer scOffer ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 01:57:54', 'dd-mm-yyyy hh24:mi:ss'), '330015', '上传Offer', 252001, 'A330015', 130001, null, '240090', null, '243001', null, null, null, null, null, '246009,246020', null, null, null, 244020, null, null, null, null, 246021, '上传Offer', 'HR_uploadOffer', '流程标题格式：Offer变更', '流程说明格式：Offer变更', '[DETAIL=Offer文件]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (32, 802001, 801000, '220046 220046 220046 顾问面评未通过 guwenmianpingweitongguo gwmpwtg ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 16:34:16', 'dd-mm-yyyy hh24:mi:ss'), '220046', '顾问面评未通过', 252003, 'A220046', 130001, null, '240020', '241025', null, null, null, null, null, null, null, 240020, 241044, null, null, null, null, null, null, null, '审核顾问面评', 'BS_checkCommentApply', '流程标题格式：顾问面评未通过', '流程说明格式：顾问面评未通过', '[DETAIL=原因]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (31, 802001, 801000, '220006 220006 220006 顾问面评上线 guwenmianpingshangxian gwmpsx ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-01-2017 16:34:24', 'dd-mm-yyyy hh24:mi:ss'), '220006', '顾问面评上线', 252003, 'A220006', 130001, null, '240020', '241025', null, null, null, null, null, null, null, 240090, 241090, null, null, null, null, null, null, null, '审核顾问面评', 'BS_checkCommentApply', '流程标题格式：顾问面评上线', '流程说明格式：顾问面评上线', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (14, 802001, 801000, '330046 330046 330046 候选人拒绝Offer houxuanrenjujueOffer hxrjjOffer ', to_date('25-12-2016 17:45:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 01:59:36', 'dd-mm-yyyy hh24:mi:ss'), '330046', '候选人拒绝Offer', 252001, 'A330046', 130001, null, '240090', null, '243001', null, null, null, null, null, '246021', null, null, 243009, 244099, null, null, null, null, 246045, null, null, '流程标题格式：候选人拒绝Offer', '流程说明格式：候选人拒绝Offer', '[DETAIL=原因]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (33, 802001, 801000, '33---1 33---1 33---1 xxx xxx xxx ', to_date('24-12-2016 18:18:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 09:42:08', 'dd-mm-yyyy hh24:mi:ss'), '22---1', 'xxx', 252002, null, 130001, null, null, null, null, null, null, null, null, null, null, null, 243000, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (34, 802001, 801000, '33---2 33---2 33---2 xxxx xxxx xxxx ', to_date('24-12-2016 18:18:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 09:42:25', 'dd-mm-yyyy hh24:mi:ss'), '22---2', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, null, null, null, null, 243000, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (35, 802001, 801000, '33---3 33---3 33---3 xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 09:42:41', 'dd-mm-yyyy hh24:mi:ss'), '22---3', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (36, 802001, 801000, '33---3 33---3 33---3 xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 09:42:41', 'dd-mm-yyyy hh24:mi:ss'), '22---4', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (37, 802001, 801000, '33---3 33---3 33---3 xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 09:42:41', 'dd-mm-yyyy hh24:mi:ss'), '22---5', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (40, 802001, 801000, '331004 331004 331004 加入黑名单 jiaruheimingdan jrhmd ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:20:30', 'dd-mm-yyyy hh24:mi:ss'), '331004', '加入黑名单', 252002, 'A331004', 130001, null, null, null, null, null, null, null, '!242004', null, null, null, null, null, null, null, null, 242004, null, null, '加入黑名单', 'HR_addBlackList', '流程标题格式：加入黑名单', '流程说明格式：加入黑名单', '[DETAIL=原因]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 802001, 801000, '330043 330043 330043 面试没通过 mianshimeitongguo msmtg ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-01-2017 17:21:48', 'dd-mm-yyyy hh24:mi:ss'), '330043', '面试没通过', 252001, 'A330043', 130001, null, '240090', null, '243001', null, null, null, null, null, '246007', null, null, 243009, 244099, 245043, null, null, null, 246043, null, null, '流程标题格式：面试没通过', '流程说明格式：面试没通过', '[DETAIL=原因]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (20, 802001, 801000, '330144 330144 330144 备注原因（未入职） beizhuyuanyin（weiruzhi） bzyy（wrz） ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 23:37:02', 'dd-mm-yyyy hh24:mi:ss'), '330144', '备注原因（未入职）', 252001, 'A330144', 130001, null, null, null, null, null, null, null, null, null, '246040', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (38, 802001, 801000, '331001 331001 331001 关注 guanzhu gz ', to_date('24-12-2016 18:18:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:18:08', 'dd-mm-yyyy hh24:mi:ss'), '331001', '关注', 252002, 'A331001', 130001, null, '240090', null, '!243000', null, null, null, '!242001', null, null, null, null, null, null, null, null, 242001, null, null, '关注', 'HR_collect', '流程标题格式：关注', '流程说明格式：关注', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (43, 802001, 801000, '550003 550003 550003 付款到顾问 fukuandaoguwen fkdgw ', to_date('28-12-2016 07:02:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 02:09:43', 'dd-mm-yyyy hh24:mi:ss'), '550003', '付款到顾问', 252001, 'A550003', 130001, null, null, null, null, null, null, null, null, null, '246066', null, null, null, null, null, 233009, null, null, 246090, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (44, 802001, 801000, '55--- 55--- 55--- xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 22:34:03', 'dd-mm-yyyy hh24:mi:ss'), '55---', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (45, 802001, 801000, '55--- 55--- 55--- xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 22:34:07', 'dd-mm-yyyy hh24:mi:ss'), '55---[副]', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (16, 802001, 801000, '330047 330047 330047 没有入职 meiyouruzhi myrz ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 02:03:43', 'dd-mm-yyyy hh24:mi:ss'), '330047', '没有入职', 252001, 'A330047', 130001, null, '240090', null, '243001', null, null, null, null, null, '246050', null, null, 243009, 244099, 245046, null, null, null, 246046, null, null, '流程标题格式：候选人没有入职', '流程说明格式：候选人没有入职', '[DETAIL=原因]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (47, 802001, 801000, '440002 440002 440002 HR面试到时处理 HRmianshidaoshichuli HRmsdscl ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-01-2017 15:40:24', 'dd-mm-yyyy hh24:mi:ss'), '440002', 'HR面试到时处理', 252001, 'A440002', 130001, null, null, null, '243001', null, null, null, null, null, '246006', null, null, null, null, null, null, null, null, 246007, null, null, '流程标题格式：面试结束', '流程说明格式：面试结束', null, '0', null, '9', null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (2, 802001, 801000, '330001 330001 330001 候选人同意面试 houxuanrentongyimianshi hxrtyms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 22:05:02', 'dd-mm-yyyy hh24:mi:ss'), '330001', '候选人同意面试', 252001, 'A330001', 130001, null, '240090', null, '243001', null, null, null, null, null, '246001', null, null, null, 244005, null, null, null, null, 246005, null, null, '流程标题格式：候选人同意面试', '流程说明格式：候选人同意面试', null, '1', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, 802001, 801000, '330041 330041 330041 候选人拒绝面试 houxuanrenjujuemianshi hxrjjms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 22:06:15', 'dd-mm-yyyy hh24:mi:ss'), '330041', '候选人拒绝面试', 252001, 'A330041', 130001, null, '240090', null, '243001', null, null, null, null, null, '246001,246005', null, null, 243009, 244099, 245042, null, null, null, 246042, null, null, '流程标题格式：候选人拒绝面试', '流程说明格式：候选人拒绝面试', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 802001, 801000, '33---4 33---4 33---4 xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 23:37:10', 'dd-mm-yyyy hh24:mi:ss'), '33---4', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (22, 802001, 801000, '33---5 33---5 33---5 xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-01-2017 23:37:17', 'dd-mm-yyyy hh24:mi:ss'), '33---5', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 802001, 801000, '330004 330004 330004 确认下一轮面试 querenxiayilunmianshi qrxylms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 22:11:45', 'dd-mm-yyyy hh24:mi:ss'), '330004', '确认下一轮面试', 252001, 'A330004', 130001, null, '240090', null, '243001', null, null, null, null, null, '246007,246009', null, null, null, 244005, null, null, null, null, 246005, null, null, '流程标题格式：确认下一轮面试', '流程说明格式：确认下一轮面试', null, '1', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (48, 802001, 801000, '440003 440003 440003 HC面试到时处理 HCmianshidaoshichuli HCmsdscl ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-01-2017 15:40:31', 'dd-mm-yyyy hh24:mi:ss'), '440003', 'HC面试到时处理', 252003, 'A440003', 130001, null, '240020', '241022', null, null, null, null, null, null, null, null, 241023, null, null, null, null, null, null, null, null, null, '流程标题格式：面试结束', '流程说明格式：面试结束', null, '0', null, '9', null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 802001, 801000, '330005 330005 330005 Offer Offer Offer ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 22:13:28', 'dd-mm-yyyy hh24:mi:ss'), '330005', 'Offer', 252001, 'A330005', 130001, null, '240090', null, '243001', null, null, null, null, null, '246007,246009', null, null, null, 244020, null, null, null, null, 246020, null, null, '流程标题格式：获得Offer', '流程说明格式：获得Offer', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (17, 802001, 801000, '330027 330027 330027 确认离职 querenlizhi qrlz ', to_date('25-12-2016 17:28:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2017 02:05:36', 'dd-mm-yyyy hh24:mi:ss'), '330027', '确认离职', 252001, 'A330027', 130001, null, '240100', null, '243009', '244052', null, null, null, null, null, 240090, null, null, null, null, null, null, null, 246054, '确认离职', 'HC_setDimission', '流程标题格式：确认离职', '流程说明格式：确认离职', '[DETAIL=原因]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1, 802001, 801000, '330000 330000 330000 邀请面试 yaoqingmianshi yqms ', to_date('20-12-2016 14:02:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-01-2017 04:12:12', 'dd-mm-yyyy hh24:mi:ss'), '330000', '邀请面试', 252001, 'A330000', 130001, null, '240090', null, '!243001', null, null, null, null, null, null, null, null, 243001, 244001, null, null, null, null, 246001, '邀请面试', 'HR_inviteIV', '流程标题格式：邀请面试', '流程说明格式：邀请面试', null, '0', null, null, null, null, null, null, null, null, null, null);
commit;
prompt 51 records loaded
prompt Enabling triggers for A_ACTION...
alter table A_ACTION enable all triggers;
prompt Enabling triggers for A_BANK...
alter table A_BANK enable all triggers;
prompt Enabling triggers for A_HCINTERVIEW_QA...
alter table A_HCINTERVIEW_QA enable all triggers;
prompt Enabling triggers for A_INDUSTRY...
alter table A_INDUSTRY enable all triggers;
prompt Enabling triggers for A_JOB...
alter table A_JOB enable all triggers;
prompt Enabling triggers for A_ORGAN...
alter table A_ORGAN enable all triggers;
prompt Enabling triggers for A_PROCESS...
alter table A_PROCESS enable all triggers;
set feedback on
set define on
prompt Done.
