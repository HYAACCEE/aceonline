--------------------------------------------
-- user: pcace                            --
-- Created by wxl on 2016-11-01           --
-- updated by wxl on 2016-11-01           --
-- 此文件为数据库初始化文件，请谨慎修改              --
--------------------------------------------

/*
prompt
prompt Droping user pcace
prompt ====================
DROP USER pcace cascade;

prompt
prompt Creating tablespace TableSpace_pcace
prompt ====================
CREATE TABLESPACE TableSpace_pcace
DATAFILE 'C:\WWW\app\DBDATA\pcace.ORA' SIZE 2048M AUTOEXTEND ON NEXT 100M MAXSIZE unlimited MINIMUM EXTENT 10M
DEFAULT STORAGE(INITIAL 10M MINEXTENTS 1 MAXEXTENTS 4096 PCTINCREASE 0) LOGGING ONLINE;

CREATE TABLESPACE TableSpace_pcaceHIS
DATAFILE 'C:\WWW\app\DBDATA\pcaceHis.ORA' SIZE 2048M AUTOEXTEND ON NEXT 100M MAXSIZE unlimited MINIMUM EXTENT 10M
DEFAULT STORAGE(INITIAL 10M MINEXTENTS 1 MAXEXTENTS 4096 PCTINCREASE 0) LOGGING ONLINE;

CREATE TABLESPACE TableSpace_pcaceLOG
DATAFILE 'C:\WWW\app\DBDATA\pcaceLOG.ORA' SIZE 2048M AUTOEXTEND ON NEXT 100M MAXSIZE unlimited MINIMUM EXTENT 10M
DEFAULT STORAGE(INITIAL 10M MINEXTENTS 1 MAXEXTENTS 4096 PCTINCREASE 0) LOGGING ONLINE;

Prompt
Prompt Creating user pcace
prompt ====================
CREATE USER pcace IDENTIFIED BY pcace999 DEFAULT TABLESPACE TableSpace_pcace TEMPORARY TABLESPACE TEMP PROFILE DEFAULT;
GRANT CONNECT TO pcace WITH ADMIN OPTION;
GRANT DBA TO pcace WITH ADMIN OPTION;
GRANT UNLIMITED TABLESPACE TO pcace WITH ADMIN OPTION;
*/
drop sequence pcace.SEQB_USERLOGIN;
drop sequence pcace.SEQT_CHAT;
drop sequence pcace.SEQB_USER_LOCATION;
drop sequence pcace.SEQT_LOCATION;
drop sequence pcace.SEQT_PUSHSMS_ING;
drop sequence pcace.SEQT_SMS_ING;
drop sequence pcace.SEQ_IB_DATAATTACHFILE_ID;
drop sequence pcace.SEQ_IB_FORMATION_ID;
drop sequence pcace.SEQ_I_DATATABLECOLUMN_ID;
drop sequence pcace.SEQ_I_DTCOLUMNEXTINFO_ID;
drop sequence pcace.SEQ_I_DATAMODULECOLUMN_ID;
drop sequence pcace.SEQ_T_LOG_ID;
drop sequence pcace.SEQ_T_MESSAGE_ID;
drop sequence pcace.SEQ_Z_DATAHIS_IID;


prompt PL/SQL Developer import file
prompt Created on 2016年9月27日 by Administrator
set feedback off
set define off
prompt Dropping A_BANK...
drop table A_BANK cascade constraints;
prompt Dropping B_MMORGAN...
drop table B_MMORGAN cascade constraints;
prompt Dropping B_USERLOGIN...
drop table B_USERLOGIN cascade constraints;
prompt Dropping B_USER_LOCATION...
drop table B_USER_LOCATION cascade constraints;
prompt Dropping IB_DATAATTACHFILE...
drop table IB_DATAATTACHFILE cascade constraints;
prompt Dropping IB_DATAEXTINFO...
drop table IB_DATAEXTINFO cascade constraints;
prompt Dropping IB_DATARESOURCE001...
drop table IB_DATARESOURCE001 cascade constraints;
prompt Dropping IB_DATARESOURCE002...
drop table IB_DATARESOURCE002 cascade constraints;
prompt Dropping IB_DATARESOURCE003...
drop table IB_DATARESOURCE003 cascade constraints;
prompt Dropping IB_DATARESOURCE004...
drop table IB_DATARESOURCE004 cascade constraints;
prompt Dropping IB_FORMATION...
drop table IB_FORMATION cascade constraints;
prompt Dropping IB_PROCESS...
drop table IB_PROCESS cascade constraints;
prompt Dropping IB_PROCESSDETAIL...
drop table IB_PROCESSDETAIL cascade constraints;
prompt Dropping IB_PROCESSMEMO...
drop table IB_PROCESSMEMO cascade constraints;
prompt Dropping I_AREA...
drop table I_AREA cascade constraints;
prompt Dropping I_BULLETIN...
drop table I_BULLETIN cascade constraints;
prompt Dropping I_DATAPARAMTYPE...
drop table I_DATAPARAMTYPE cascade constraints;
prompt Dropping I_DATATABLE...
drop table I_DATATABLE cascade constraints;
prompt Dropping I_DATATABLECOLUMN...
drop table I_DATATABLECOLUMN cascade constraints;
prompt Dropping I_DATATABLECOLUMNEXTINFO...
drop table I_DATATABLECOLUMNEXTINFO cascade constraints;
prompt Dropping I_DATAMODULE...
drop table I_DATAMODULE cascade constraints;
prompt Dropping I_DATAMODULECOLUMN...
drop table I_DATAMODULECOLUMN cascade constraints;
prompt Dropping I_DATATABLETYPE...
drop table I_DATATABLETYPE cascade constraints;
prompt Dropping I_PROCESS...
drop table I_PROCESS cascade constraints;
prompt Dropping I_PROCESSDESC...
drop table I_PROCESSDESC cascade constraints;
prompt Dropping I_SYSTEMPARAM...
drop table I_SYSTEMPARAM cascade constraints;
prompt Dropping S_MODULE...
drop table S_MODULE cascade constraints;
prompt Dropping S_PARAM...
drop table S_PARAM cascade constraints;
prompt Dropping S_PLATFORM...
drop table S_PLATFORM cascade constraints;
prompt Dropping S_PUBLISHLOG...
drop table S_PUBLISHLOG cascade constraints;
prompt Dropping S_QUICKMENU...
drop table S_QUICKMENU cascade constraints;
prompt Dropping S_ROLE...
drop table S_ROLE cascade constraints;
prompt Dropping S_ROLE_MODULE...
drop table S_ROLE_MODULE cascade constraints;
prompt Dropping S_USER...
drop table S_USER cascade constraints;
prompt Dropping T_CHAT...
drop table T_CHAT cascade constraints;
prompt Dropping T_DATALOG...
drop table T_DATALOG cascade constraints;
prompt Dropping T_LOCATION...
drop table T_LOCATION cascade constraints;
prompt Dropping T_LOG...
drop table T_LOG cascade constraints;
prompt Dropping T_MARK...
drop table T_MARK cascade constraints;
prompt Dropping T_MESSAGE...
drop table T_MESSAGE cascade constraints;
prompt Dropping T_MLOG...
drop table T_MLOG cascade constraints;
prompt Dropping T_PUSHSMSHIS...
drop table T_PUSHSMSHIS cascade constraints;
prompt Dropping T_PUSHSMS_ING...
drop table T_PUSHSMS_ING cascade constraints;
prompt Dropping T_SLOG...
drop table T_SLOG cascade constraints;
prompt Dropping T_SMSHIS...
drop table T_SMSHIS cascade constraints;
prompt Dropping T_SMS_ING...
drop table T_SMS_ING cascade constraints;
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
prompt Dropping IS_ORGAN...
drop table IS_ORGAN cascade constraints;
prompt Dropping IS_RS_COMPUTER...
drop table IS_RS_COMPUTER cascade constraints;
prompt Dropping IS_RS_OTHERS...
drop table IS_RS_OTHERS cascade constraints;
prompt Dropping IS_SERVER...
drop table IS_SERVER cascade constraints;
prompt Dropping ZA_BANK...
drop table ZA_BANK cascade constraints;
prompt Dropping ZB_MMORGAN...
drop table ZB_MMORGAN cascade constraints;
prompt Dropping ZB_USERLOGIN...
drop table ZB_USERLOGIN cascade constraints;
prompt Dropping ZB_USER_LOCATION...
drop table ZB_USER_LOCATION cascade constraints;
prompt Dropping ZT_CHAT...
drop table ZT_CHAT cascade constraints;
prompt Dropping ZT_LOCATION...
drop table ZT_LOCATION cascade constraints;
prompt Dropping ZT_PUSHSMSHIS...
drop table ZT_PUSHSMSHIS cascade constraints;
prompt Dropping ZT_PUSHSMS_ING...
drop table ZT_PUSHSMS_ING cascade constraints;
prompt Dropping ZT_SMSHIS...
drop table ZT_SMSHIS cascade constraints;
prompt Dropping ZT_SMS_ING...
drop table ZT_SMS_ING cascade constraints;
prompt Dropping ZIS_APPMODULE...
drop table ZIS_APPMODULE cascade constraints;
prompt Dropping ZIS_APPMODULEDETAIL...
drop table ZIS_APPMODULEDETAIL cascade constraints;
prompt Dropping ZIS_APPROLE...
drop table ZIS_APPROLE cascade constraints;
prompt Dropping ZIS_APPROLEMODULE...
drop table ZIS_APPROLEMODULE cascade constraints;
prompt Dropping ZIS_APPVERSION...
drop table ZIS_APPVERSION cascade constraints;
prompt Dropping ZIS_BULLETIN...
drop table ZIS_BULLETIN cascade constraints;
prompt Dropping ZIS_DEPARTMENT...
drop table ZIS_DEPARTMENT cascade constraints;
prompt Dropping ZIS_DOTMODULE...
drop table ZIS_DOTMODULE cascade constraints;
prompt Dropping ZIS_DOTMODULEDETAIL...
drop table ZIS_DOTMODULEDETAIL cascade constraints;
prompt Dropping ZIS_DOTROLE...
drop table ZIS_DOTROLE cascade constraints;
prompt Dropping ZIS_DOTROLEMODULE...
drop table ZIS_DOTROLEMODULE cascade constraints;
prompt Dropping ZIS_DOTUSER...
drop table ZIS_DOTUSER cascade constraints;
prompt Dropping ZIS_EMP...
drop table ZIS_EMP cascade constraints;
prompt Dropping ZIS_JOBPOSITION...
drop table ZIS_JOBPOSITION cascade constraints;
prompt Dropping ZIS_ORGAN...
drop table ZIS_ORGAN cascade constraints;
prompt Dropping ZIS_RS_COMPUTER...
drop table ZIS_RS_COMPUTER cascade constraints;
prompt Dropping ZIS_RS_OTHERS...
drop table ZIS_RS_OTHERS cascade constraints;
prompt Dropping ZIS_SERVER...
drop table ZIS_SERVER cascade constraints;
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;


prompt Creating B_MMORGAN...
create table B_MMORGAN
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           VARCHAR2(32),
  c4           NUMBER(6),
  c5           NUMBER(6),
  c6           NUMBER(6),
  c7           VARCHAR2(20),
  c8           NUMBER(6),
  c9           VARCHAR2(30),
  c10          VARCHAR2(100),
  c11          VARCHAR2(30),
  c12          VARCHAR2(30),
  c13          VARCHAR2(30),
  c14          VARCHAR2(200),
  c15          VARCHAR2(30),
  c16          VARCHAR2(30),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(50),
  c21          VARCHAR2(30),
  c22          VARCHAR2(32),
  c23          VARCHAR2(32),
  c24          NUMBER(6) default 0,
  c25          NUMBER(14) default 0,
  c26          NUMBER(14) default 0,
  c27          NUMBER(14,2) default 0,
  c28          NUMBER(6) default 0,
  c29          NUMBER(6) default 0,
  c30          NUMBER(6)
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
alter table B_MMORGAN
  add constraint B_MMORGAN_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_USERLOGIN...
create table B_USERLOGIN
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32) not null,
  c2           VARCHAR2(30),
  c3           VARCHAR2(50),
  c4           NUMBER(6),
  c5           NUMBER(14),
  c6           VARCHAR2(32),
  c7           DATE,
  c8           CHAR(1),
  c9           NUMBER(6),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(250),
  c13          VARCHAR2(30),
  c14          VARCHAR2(30),
  c15          VARCHAR2(50),
  c16          VARCHAR2(30),
  c17          VARCHAR2(30),
  c18          VARCHAR2(20),
  c19          VARCHAR2(50),
  c20          VARCHAR2(20),
  c21          NUMBER(6),
  c22          NUMBER(6) default 0,
  c23          VARCHAR2(100),
  c24          NUMBER(2) default 1,
  c25          VARCHAR2(30),
  c26          VARCHAR2(30),
  c27          NUMBER(6) default 0,
  c28          VARCHAR2(20),
  c29          VARCHAR2(50),
  c30          NUMBER(9) default 0,
  c31          NUMBER(9) default 0,
  c32          NUMBER(9) default 0,
  c33          NUMBER(9) default 0,
  c34          NUMBER(9) default 0,
  c35          NUMBER(9) default 0,
  c36          NUMBER(9) default 0,
  c37          NUMBER(9) default 0,
  c38          NUMBER(9) default 0,
  c39          NUMBER(9) default 0,
  c40          NUMBER(9) default 0,
  c41          NUMBER(6) default 0,
  c42          VARCHAR2(30),
  c43          VARCHAR2(30),
  c44          VARCHAR2(30),
  c45          VARCHAR2(30),
  c46          VARCHAR2(30),
  c47          VARCHAR2(200),
  c48          VARCHAR2(200),
  c49          VARCHAR2(200),
  c50          VARCHAR2(30),
  c51          VARCHAR2(50),
  c52          VARCHAR2(30),
  c53          NUMBER(6),
  c54          NUMBER(6),
  c55          NUMBER(6),
  c56          NUMBER(6),
  c57          NUMBER(6),
  c58          NUMBER(6),
  c59          NUMBER(6),
  c60          NUMBER(6)
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table B_USERLOGIN
  add constraint B_USERLOGIN_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_USER_LOCATION...
create table B_USER_LOCATION
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32) not null,
  c2           NUMBER(12,6) not null,
  c3           NUMBER(12,6) not null,
  c4           NUMBER(12,6),
  c5           NUMBER(12,6),
  c6           NUMBER(6),
  c7           VARCHAR2(100),
  c8           VARCHAR2(30)
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating IB_DATAATTACHFILE...
create table IB_DATAATTACHFILE
(
  id         NUMBER(11) not null,
  tableid    NUMBER(6) not null,
  dataid     NUMBER(9) not null,
  filename   VARCHAR2(50),
  filememo   VARCHAR2(100),
  filetype   NUMBER(6) not null,
  fileformat VARCHAR2(30),
  filesize   NUMBER(3) default 0,
  istdate    DATE default sysdate,
  uptdate    DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_DATAATTACHFILE
  add constraint IB_DATAATTACHFILE_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_DATAEXTINFO...
create table IB_DATAEXTINFO
(
  id            NUMBER(11) not null,
  tableid       NUMBER(6) not null,
  dataid        NUMBER(9) not null,
  extcode       NUMBER(6) not null,
  extnamezh     VARCHAR2(100) not null,
  extnamezhs    VARCHAR2(20),
  extnameen     VARCHAR2(100),
  extnameens    VARCHAR2(20),
  extNameFr1    VARCHAR2(100),
  extNameFr1s   VARCHAR2(20),
  extNameFr2    VARCHAR2(100),
  extNameFr2s   VARCHAR2(20),
  extNameFr3    VARCHAR2(100),
  extNameFr3s   VARCHAR2(20),
  extsummary    VARCHAR2(200),
  extsubject    VARCHAR2(40),
  attachfilenum NUMBER(6) default 0,
  dataresource  VARCHAR2(100),
  datadate      DATE default sysdate,
  istdate       DATE default sysdate,
  uptdate       DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_DATAEXTINFO
  add constraint IB_DATAEXTINFO_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_DATARESOURCE001...
create table IB_DATARESOURCE001
(
  id              NUMBER(11) not null,
  tableid         NUMBER(6) not null,
  dataid          NUMBER(9) not null,
  resourcename    VARCHAR2(100) not null,
  resourcecode    VARCHAR2(20),
  resourcesubject VARCHAR2(100),
  sctlevel        NUMBER(6) not null,
  resourcetype    VARCHAR2(20),
  issuedepartment VARCHAR2(50),
  issuedate       VARCHAR2(20),
  savedepartment  VARCHAR2(50),
  istdate         DATE default sysdate,
  uptdate         DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_DATARESOURCE001
  add constraint IB_DATARESOURCE001_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_DATARESOURCE002...
create table IB_DATARESOURCE002
(
  id              NUMBER(11) not null,
  tableid         NUMBER(6) not null,
  dataid          NUMBER(9) not null,
  collectobject   VARCHAR2(50) not null,
  organname       VARCHAR2(30),
  actionname      VARCHAR2(30),
  actionarea      VARCHAR2(30),
  actionstartdate VARCHAR2(20),
  actionenddate   VARCHAR2(20),
  actiondesc      VARCHAR2(200),
  collectdevice   VARCHAR2(30),
  createdate      VARCHAR2(20),
  collectorname   VARCHAR2(30),
  istdate         DATE default sysdate,
  uptdate         DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_DATARESOURCE002
  add constraint IB_DATARESOURCE002_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_DATARESOURCE003...
create table IB_DATARESOURCE003
(
  id             NUMBER(11) not null,
  tableid        NUMBER(6) not null,
  dataid         NUMBER(9) not null,
  title          VARCHAR2(50) not null,
  subtitle       VARCHAR2(50),
  mainresponser  VARCHAR2(10),
  otherresponser VARCHAR2(30),
  publisharea    VARCHAR2(30),
  publisher      VARCHAR2(50),
  publishdate    VARCHAR2(20),
  subject        VARCHAR2(50),
  version        VARCHAR2(10),
  language       VARCHAR2(50),
  startpage      VARCHAR2(10),
  endpage        VARCHAR2(10),
  sctlevel       NUMBER(6),
  istdate        DATE default sysdate,
  uptdate        DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_DATARESOURCE003
  add constraint IB_DATARESOURCE003_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_DATARESOURCE004...
create table IB_DATARESOURCE004
(
  id          NUMBER(11) not null,
  tableid     NUMBER(6) not null,
  dataid      NUMBER(9) not null,
  title       VARCHAR2(50) not null,
  subtitle    VARCHAR2(50),
  mainauthor  VARCHAR2(10),
  otherauthor VARCHAR2(30),
  websitename VARCHAR2(50),
  websiteurl  VARCHAR2(100),
  publishdate VARCHAR2(20),
  language    VARCHAR2(50),
  istdate     DATE default sysdate,
  uptdate     DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_DATARESOURCE004
  add constraint IB_DATARESOURCE004_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_FORMATION...
create table IB_FORMATION
(
  formationid   NUMBER(9) not null,
  formationtype NUMBER(6) not null,
  formationname VARCHAR2(100) not null,
  nodetype      NUMBER(6) not null,
  parentid      NUMBER(9) not null,
  childnum      NUMBER(9) default 0,
  memo          VARCHAR2(200),
  ext1          VARCHAR2(100),
  ext2          VARCHAR2(100),
  ext3          VARCHAR2(100),
  state         CHAR(1) default '1',
  istdate       DATE default sysdate,
  uptdate       DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_FORMATION
  add constraint IB_FORMATION_PK primary key (FORMATIONID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_PROCESS...
create table IB_PROCESS
(
  processid    NUMBER(9) not null,
  processtitle VARCHAR2(200),
  organid      NUMBER(6),
  psid         NUMBER(6),
  tableid      NUMBER(6),
  dataid       NUMBER(9),
  creator      NUMBER(6),
  curseq       NUMBER(6),
  curactor     VARCHAR2(200),
  curstatus    VARCHAR2(200),
  dealflag     NUMBER(6),
  state        NUMBER(6),
  remark       VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_PROCESS
  add constraint IB_PROCESS_PK primary key (PROCESSID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_PROCESSDETAIL...
create table IB_PROCESSDETAIL
(
  id        NUMBER(9) not null,
  processid NUMBER(9),
  seq       NUMBER(6),
  status    VARCHAR2(100),
  actor     NUMBER(6),
  actresult NUMBER(6),
  actmemo   VARCHAR2(500),
  istdate   DATE default sysdate,
  uptdate   DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_PROCESSDETAIL
  add constraint IB_PROCESSDETAIL_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating IB_PROCESSMEMO...
create table IB_PROCESSMEMO
(
  id        NUMBER(9) not null,
  processid NUMBER(9),
  auther    NUMBER(6),
  actmemo   VARCHAR2(200),
  istdate   DATE default sysdate,
  uptdate   DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table IB_PROCESSMEMO
  add constraint IB_PROCESSMEMO_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating I_AREA...
create table I_AREA
(
  id        NUMBER(6) not null,
  areaname  VARCHAR2(50) not null,
  areaid    NUMBER(6) not null,
  areacode  VARCHAR2(4),
  state     CHAR(1) not null,
  arealevel NUMBER(6) not null,
  upareaid  NUMBER(4) not null,
  remark    VARCHAR2(100),
  istdate   DATE default sysdate,
  uptdate   DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_AREA
  add constraint I_AREA_PK primary key (AREAID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating I_BULLETIN...
create table I_BULLETIN
(
  id      NUMBER(9) not null,
  organid NUMBER(6) default -1,
  title   VARCHAR2(50) not null,
  content VARCHAR2(4000),
  sender  VARCHAR2(50) not null,
  issms   CHAR(1) default '0',
  rdate   VARCHAR2(20) not null,
  btype   CHAR(1),
  istdate DATE default sysdate,
  uptdate DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table I_BULLETIN
  add constraint I_BULLETIN_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating I_DATAPARAMTYPE...
create table I_DATAPARAMTYPE
(
  paramclassid NUMBER(6) not null,
  classname    VARCHAR2(100) not null,
  classNameEn  VARCHAR2(100) NOT NULL,
  classNameEn2 VARCHAR2(100),
  classNameEn3 VARCHAR2(100),
  classNameEn4 VARCHAR2(100),
  classNameEn5 VARCHAR2(100),
  typelevel    NUMBER(6) not null,
  parentid     NUMBER(6),
  childnum     NUMBER(9) default 0,
  memo         VARCHAR2(200),
  state        CHAR(1) default '1',
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_DATAPARAMTYPE
  add constraint I_DATAPARAMTYPE_PK primary key (PARAMCLASSID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating I_DATATABLE...
create table I_DATATABLE
(
  tableid        NUMBER(6) not null,
  tablename      VARCHAR2(100) not null,
  tablememo      VARCHAR2(100) not null,
  serverpath     VARCHAR2(50),
  tabletypeid    NUMBER(6) not null,
  colnum         NUMBER(4) default 0,
  datanum        NUMBER(9) default 0,
  sctlevel       NUMBER(6) not null,
  sequenceflag   CHAR(1) default '0',
  pkflag         CHAR(1) default '0',
  sidflag        CHAR(1) default '0',
  scopeflag      CHAR(1) default '0',
  attachfileflag CHAR(1) default '0',
  datastatusflag CHAR(1) default '0',
  sctlevelflag   CHAR(1) default '0',
  otherbuttons   VARCHAR2(200),
  parenttableid  NUMBER(6) default -1,
  childtablenum  NUMBER(4) default 0,
  state          CHAR(1) default '1',
  istdate        DATE default sysdate,
  uptdate        DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_DATATABLE
  add constraint I_DATATABLE_PK primary key (TABLEID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating I_DATATABLECOLUMN...
create table I_DATATABLECOLUMN
(
  colid        NUMBER(9) not null,
  tableid      NUMBER(6) not null,
  colname      VARCHAR2(100) not null,
  datatypestr  VARCHAR2(50) not null,
  datatype     NUMBER(6) not null,
  datalen      NUMBER(6) not null,
  datadotlen   NUMBER(2) default 0,
  colmemo      VARCHAR2(100) not null,
  nullflag     CHAR(1) default '1',
  def          VARCHAR2(100) default '',
  datacol1num  NUMBER(2) default 0,
  datacol2num  NUMBER(2) default 0,
  datacol3num  NUMBER(2) default 0,
  sctlevel     NUMBER(6) not null,
  seq          NUMBER(6) not null,
  listshowflag CHAR(1) default 1,
  showwidth    NUMBER(6) default 0,
  formshowflag CHAR(1) default 1,
  state        CHAR(1) default '1',
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_DATATABLECOLUMN
  add constraint I_DATATABLECOLUMN_PK primary key (COLID)
  using index 
  tablespace TABLESPACE_pcace
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


prompt Creating I_DATATABLECOLUMNEXTINFO...
create table I_DATATABLECOLUMNEXTINFO
(
  id                     NUMBER(11) not null,
  colid                  NUMBER(9) not null,
  tableid                NUMBER(6) not null,
  extcode                NUMBER(6) not null,
  extnamezh              VARCHAR2(100) not null,
  extnamezhs             VARCHAR2(20),
  extnameen              VARCHAR2(100),
  extnameens             VARCHAR2(20),
  extNameFr1             VARCHAR2(100),
  extNameFr1s            VARCHAR2(20),
  extNameFr2             VARCHAR2(100),
  extNameFr2s            VARCHAR2(20),
  extNameFr3             VARCHAR2(100),
  extNameFr3s            VARCHAR2(20),
  extdefine              VARCHAR2(200),
  extshow                VARCHAR2(20),
  extlength              NUMBER(6),
  extprecision           NUMBER(6),
  extunit                VARCHAR2(20),
  extvaluescope          VARCHAR2(100),
  extvaluescopetypeid    NUMBER(6),
  extvaluescopetypeparam VARCHAR2(50),
  extrelationsubcols     VARCHAR2(50),
  extkeyidflag           CHAR(1) default '0',
  extkeynameflag         CHAR(1) default '0',
  extkeywordflag         CHAR(1) default '0',
  extquerybyflag         CHAR(1) default '0',
  extsynname             VARCHAR2(50),
  extrelateenvironment   VARCHAR2(100),
  extversion             VARCHAR2(20),
  extmemo                VARCHAR2(200),
  state                  CHAR(1) default '1',
  istdate                DATE default sysdate,
  uptdate                DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_DATATABLECOLUMNEXTINFO
  add constraint I_DATATABLECOLUMNEXTINFO_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating I_DATAMODULE...
create table I_DATAMODULE
(
  moduleID       VARCHAR2(30) not null,
  moduleName     VARCHAR2(50) not null,
  viewName       VARCHAR2(50) not null,
  viewSql        VARCHAR2(1000) not null,
  tableIDs       VARCHAR2(100) not null,
  colnum         NUMBER(4) default 0,
  otherCondition VARCHAR2(200),
  otherbuttons   VARCHAR2(200),
  state          CHAR(1) default '1',
  istdate        DATE default sysdate,
  uptdate        DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_DATAMODULE
  add constraint I_DATAMODULE_PK primary key (MODULEID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating I_DataModuleColumn...
create table I_DataModuleColumn
(
  id            NUMBER(9) not null,
  moduleID      VARCHAR2(30) NOT NULL,     --模块ID
  tableID       NUMBER(6,0) NOT NULL,      --主表ID
  colid         NUMBER(9,0) NOT NULL,
  colMemo       VARCHAR2(100),             --列备注
  colstr        VARCHAR2(100),             --（列说明）
  colName       VARCHAR2(30),              --列名
  colName_as    VARCHAR2(20),              --列别名
  sctLevel      NUMBER(6,0) NOT NULL,      --密级
  seq           NUMBER(6,0) NOT NULL,      --排序
  groupFunc     NUMBER(6,0) NOT NULL,      --分组函数
  listShowFlag  CHAR(1) DEFAULT 1,         --列表中是否显示
  showWidth     NUMBER(6,0) DEFAULT 0,     --列表显示宽度
  formShowFlag  CHAR(1) DEFAULT 1,         --表单中是否显示（隐藏域可在元数据中配置自动输入值）
  otherButtons  VARCHAR2(200),             --其他功能菜单
  extKeywordFlag  CHAR(1) DEFAULT '0',       --是否关键字搜索域
  extQueryByFlag  CHAR(1) DEFAULT '0',       --是否查询条件
  state        CHAR(1) default '1',
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_DataModuleColumn
  add constraint I_DataModuleColumn_PK primary key (id)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating I_DATATABLETYPE...
create table I_DATATABLETYPE
(
  tabletypeid   NUMBER(6) not null,
  tabletypename VARCHAR2(100) not null,
  typelevel     NUMBER(6) not null,
  parentid      NUMBER(6),
  childnum      NUMBER(9) default 0,
  memo          VARCHAR2(200),
  state         CHAR(1) default '1',
  istdate       DATE default sysdate,
  uptdate       DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_DATATABLETYPE
  add constraint I_DATATABLETYPE_PK primary key (TABLETYPEID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating I_PROCESS...
create table I_PROCESS
(
  psid        NUMBER(6) not null,
  organid     NUMBER(6),
  processname VARCHAR2(50),
  processtype NUMBER(6),
  creator     NUMBER(6),
  tableid     NUMBER(6),
  state       NUMBER(6),
  remark      VARCHAR2(500),
  istdate     DATE default sysdate,
  uptdate     DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table I_PROCESS
  add constraint I_PROCESS_PK primary key (PSID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating I_PROCESSDESC...
create table I_PROCESSDESC
(
  ccid                    NUMBER(9) not null,
  psid                    NUMBER(6),
  seq                     NUMBER(2),
  processtitle            VARCHAR2(50),
  processdesc             VARCHAR2(200),
  nextseq                 VARCHAR2(20),
  conditions              VARCHAR2(500),
  processcols             VARCHAR2(1000),
  processactormode        NUMBER(6),
  processactor            VARCHAR2(200),
  processactordepartment  VARCHAR2(200),
  processactorrole        VARCHAR2(200),
  actorselectrule         NUMBER(6),
  actorautoselectrule     NUMBER(6),
  actorautoselectrulememo VARCHAR2(30),
  attachfilepower         VARCHAR2(6),
  attachfileeditflag      CHAR(1),
  state                   NUMBER(6),
  istdate                 DATE default sysdate,
  uptdate                 DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table I_PROCESSDESC
  add constraint I_PROCESSDESC_PK primary key (CCID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating I_SYSTEMPARAM...
create table I_SYSTEMPARAM
(
  id          NUMBER(6) not null,
  paramclass  NUMBER(3) not null,
  classname   VARCHAR2(30) not null,
  value       VARCHAR2(30) not null,
  name        VARCHAR2(50) not null,
  parentclass NUMBER(6),
  isshow      CHAR(1) default '1',
  state       CHAR(1) default '1',
  istdate     DATE default sysdate,
  uptdate     DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table I_SYSTEMPARAM
  add constraint I_SYSTEMPARAM_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating S_MODULE...
create table S_MODULE
(
  moduleid   VARCHAR2(20) not null,
  modulename VARCHAR2(30) not null,
  state      CHAR(1) not null,
  ismenu     CHAR(1),
  parent     VARCHAR2(20),
  haschild   CHAR(1),
  url        VARCHAR2(100),
  img        VARCHAR2(100),
  power      VARCHAR2(20),
  biztype    CHAR(1) default '0',
  istdate    DATE default sysdate,
  uptdate    DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table S_MODULE
  add constraint S_MODULE_PK primary key (MODULEID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating S_PARAM...
create table S_PARAM
(
  id         NUMBER(6) not null,
  paramname  VARCHAR2(100),
  paramvalue VARCHAR2(200),
  remark     VARCHAR2(200),
  istdate    DATE default sysdate,
  uptdate    DATE default sysdate
)
tablespace TABLESPACE_pcace
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
alter table S_PARAM
  add primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating S_PLATFORM...
create table S_PLATFORM
(
  platformid   NUMBER(6) not null,
  platformname VARCHAR2(50),
  status       NUMBER(1) default 1 not null,
  interval     NUMBER(6) default 0,
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table S_PLATFORM
  add constraint S_PLATFORM_PK primary key (PLATFORMID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating S_PUBLISHLOG...
create table S_PUBLISHLOG
(
  publishno   VARCHAR2(100),
  publishdate DATE default sysdate,
  istdate     DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating S_QUICKMENU...
create table S_QUICKMENU
(
  id          NUMBER(6) not null,
  userid      NUMBER(6),
  moduleid    VARCHAR2(100),
  modulename  VARCHAR2(100),
  moduleurl   VARCHAR2(100),
  seq         NUMBER(6),
  publishdate DATE default sysdate,
  istdate     DATE default sysdate,
  uptdate     DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table S_QUICKMENU
  add primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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

prompt Creating T_CHAT...
create table T_CHAT
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           VARCHAR2(2000)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating T_DATALOG...
create table T_DATALOG
(
  id        NUMBER(11) not null,
  logtype   NUMBER(6) not null,
  tableid   NUMBER(6) not null,
  colid     NUMBER(9) default '-1',
  dataid    VARCHAR2(32) default '-1',
  extid     NUMBER(9) default '-1',
  title     VARCHAR2(200) not null,
  context   VARCHAR2(1000) not null,
  userid    VARCHAR2(50) not null,
  username  VARCHAR2(200) not null,
  ipaddress VARCHAR2(50) not null,
  istdate   DATE default sysdate
)
tablespace TABLESPACE_pcaceLOG
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

prompt Creating T_LOCATION...
create table T_LOCATION
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32) not null,
  c2           NUMBER(12,6) not null,
  c3           NUMBER(12,6) not null,
  c4           NUMBER(12,6),
  c5           NUMBER(12,6),
  c6           NUMBER(6),
  c7           VARCHAR2(100),
  c8           VARCHAR2(30)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating T_LOG...
create table T_LOG
(
  id        NUMBER(13) not null,
  logtype   NUMBER(6) not null,
  tableid   NUMBER(6) default '-1',
  colid     NUMBER(9) default '-1',
  dataid    VARCHAR2(32) default '-1',
  extid     NUMBER(9) default '-1',
  title     VARCHAR2(200) not null,
  context   VARCHAR2(1000) not null,
  userid    VARCHAR2(50) not null,
  username  VARCHAR2(200) not null,
  ipaddress VARCHAR2(100) not null,
  istdate   DATE default sysdate
)
tablespace TABLESPACE_pcaceLOG
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

prompt Creating T_MARK...
create table T_MARK
(
  mark    VARCHAR2(20) not null,
  v1      VARCHAR2(200) not null,
  v2      VARCHAR2(200) not null,
  istdate DATE default sysdate,
  uptdate DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating T_MESSAGE...
create table T_MESSAGE
(
  id           NUMBER(9) not null,
  content      VARCHAR2(500) not null,
  tableid      NUMBER(9) default -1,
  dataid       NUMBER(9) default -1,
  actionid     NUMBER(4) default -1,
  senderid     NUMBER(9),
  sendername   VARCHAR2(50),
  recverid     NUMBER(9),
  recvername   VARCHAR2(50),
  readflag     CHAR(1) default '0',
  sendshowflag CHAR(1) default '1',
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate
)
tablespace TABLESPACE_pcace
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table T_MESSAGE
  add constraint I_MESSAGE_PK primary key (ID)
  using index 
  tablespace TABLESPACE_pcace
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating T_MLOG...
create table T_MLOG
(
  id        NUMBER(11) not null,
  logtype   NUMBER(6) not null,
  tableid   NUMBER(6) not null,
  colid     NUMBER(9) default '-1',
  dataid    NUMBER(9) default '-1',
  extid     NUMBER(9) default '-1',
  title     VARCHAR2(200) not null,
  context   VARCHAR2(1000) not null,
  userid    VARCHAR2(50) not null,
  username  VARCHAR2(200) not null,
  ipaddress VARCHAR2(50) not null,
  istdate   DATE default sysdate
)
tablespace TABLESPACE_pcaceLOG
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating T_PUSHSMSHIS...
create table T_PUSHSMSHIS
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           VARCHAR2(200),
  c4           NUMBER(6),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           VARCHAR2(32),
  c9           VARCHAR2(200)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating T_PUSHSMS_ING...
create table T_PUSHSMS_ING
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           VARCHAR2(200),
  c4           NUMBER(6),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           VARCHAR2(32),
  c9           VARCHAR2(200)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating T_SLOG...
create table T_SLOG
(
  id        NUMBER(20) not null,
  logtype   CHAR(1),
  title     VARCHAR2(200),
  context   VARCHAR2(1000),
  oid       NUMBER(9),
  userid    NUMBER(9),
  username  VARCHAR2(200),
  ipaddress VARCHAR2(100),
  istdate   DATE default sysdate
)
tablespace TABLESPACE_pcaceLOG
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

prompt Creating T_SMSHIS...
create table T_SMSHIS
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(30),
  c3           VARCHAR2(200),
  c4           NUMBER(6),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(9)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating T_SMS_ING...
create table T_SMS_ING
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(30),
  c3           VARCHAR2(200),
  c4           NUMBER(6),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(9)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
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
  c5           VARCHAR2(30),
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
    minextents 1
    maxextents unlimited
  );
alter table IS_APPMODULE
  add constraint IS_APPMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

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
    minextents 1
    maxextents unlimited
  );
alter table IS_APPMODULEDETAIL
  add constraint IS_APPMODULEDETAIL_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
  tablespace TABLESPACE_pcace
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
tablespace TABLESPACE_pcace
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
alter table IS_SERVER
  add constraint IS_SERVER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_pcace
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

prompt Creating ZA_BANK...
create table ZA_BANK
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZB_MMORGAN...
create table ZB_MMORGAN
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           VARCHAR2(32),
  c4           NUMBER(6),
  c5           NUMBER(6),
  c6           NUMBER(6),
  c7           VARCHAR2(20),
  c8           NUMBER(6),
  c9           VARCHAR2(30),
  c10          VARCHAR2(100),
  c11          VARCHAR2(30),
  c12          VARCHAR2(30),
  c13          VARCHAR2(30),
  c14          VARCHAR2(200),
  c15          VARCHAR2(30),
  c16          VARCHAR2(30),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(50),
  c21          VARCHAR2(30),
  c22          VARCHAR2(32),
  c23          VARCHAR2(32),
  c24          NUMBER(6) default 0,
  c25          NUMBER(14) default 0,
  c26          NUMBER(14) default 0,
  c27          NUMBER(14,2) default 0,
  c28          NUMBER(6) default 0,
  c29          NUMBER(6) default 0,
  c30          NUMBER(6)
)
tablespace TABLESPACE_PCACEHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZB_USERLOGIN...
create table ZB_USERLOGIN
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32) not null,
  c2           VARCHAR2(30),
  c3           VARCHAR2(50),
  c4           NUMBER(6),
  c5           NUMBER(14),
  c6           VARCHAR2(32),
  c7           DATE,
  c8           CHAR(1),
  c9           NUMBER(6),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(250),
  c13          VARCHAR2(30),
  c14          VARCHAR2(30),
  c15          VARCHAR2(50),
  c16          VARCHAR2(30),
  c17          VARCHAR2(30),
  c18          VARCHAR2(20),
  c19          VARCHAR2(50),
  c20          VARCHAR2(20),
  c21          NUMBER(6),
  c22          NUMBER(6) default 0,
  c23          VARCHAR2(100),
  c24          NUMBER(2) default 1,
  c25          VARCHAR2(30),
  c26          VARCHAR2(30),
  c27          NUMBER(6) default 0,
  c28          VARCHAR2(20),
  c29          VARCHAR2(50),
  c30          NUMBER(9) default 0,
  c31          NUMBER(9) default 0,
  c32          NUMBER(9) default 0,
  c33          NUMBER(9) default 0,
  c34          NUMBER(9) default 0,
  c35          NUMBER(9) default 0,
  c36          NUMBER(9) default 0,
  c37          NUMBER(9) default 0,
  c38          NUMBER(9) default 0,
  c39          NUMBER(9) default 0,
  c40          NUMBER(9) default 0,
  c41          NUMBER(6) default 0,
  c42          VARCHAR2(30),
  c43          VARCHAR2(30),
  c44          VARCHAR2(30),
  c45          VARCHAR2(30),
  c46          VARCHAR2(30),
  c47          VARCHAR2(200),
  c48          VARCHAR2(200),
  c49          VARCHAR2(200),
  c50          VARCHAR2(30),
  c51          VARCHAR2(50),
  c52          VARCHAR2(30),
  c53          NUMBER(6),
  c54          NUMBER(6),
  c55          NUMBER(6),
  c56          NUMBER(6),
  c57          NUMBER(6),
  c58          NUMBER(6),
  c59          NUMBER(6),
  c60          NUMBER(6)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZB_USER_LOCATION...
create table ZB_USER_LOCATION
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32) not null,
  c2           NUMBER(12,6) not null,
  c3           NUMBER(12,6) not null,
  c4           NUMBER(12,6),
  c5           NUMBER(12,6),
  c6           NUMBER(6),
  c7           VARCHAR2(100),
  c8           VARCHAR2(30)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZT_CHAT...
create table ZT_CHAT
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           VARCHAR2(2000)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZT_LOCATION...
create table ZT_LOCATION
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32) not null,
  c2           NUMBER(12,6) not null,
  c3           NUMBER(12,6) not null,
  c4           NUMBER(12,6),
  c5           NUMBER(12,6),
  c6           NUMBER(6),
  c7           VARCHAR2(100),
  c8           VARCHAR2(30)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZT_PUSHSMSHIS...
create table ZT_PUSHSMSHIS
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           VARCHAR2(200),
  c4           NUMBER(6),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           VARCHAR2(32),
  c9           VARCHAR2(200)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZT_PUSHSMS_ING...
create table ZT_PUSHSMS_ING
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           VARCHAR2(200),
  c4           NUMBER(6),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           VARCHAR2(32),
  c9           VARCHAR2(200)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZT_SMSHIS...
create table ZT_SMSHIS
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(30),
  c3           VARCHAR2(200),
  c4           NUMBER(6),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(9)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZT_SMS_ING...
create table ZT_SMS_ING
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(30),
  c3           VARCHAR2(200),
  c4           NUMBER(6),
  c5           VARCHAR2(200),
  c6           NUMBER(6),
  c7           NUMBER(9)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
prompt Creating ZIS_APPMODULE...
create table ZIS_APPMODULE
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           NUMBER(6),
  c3           NUMBER(6),
  c4           VARCHAR2(100),
  c5           VARCHAR2(30),
  c6           NUMBER(6),
  c7           VARCHAR2(200)
)
tablespace TABLESPACE_PCACEHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_APPMODULEDETAIL...
create table ZIS_APPMODULEDETAIL
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_PCACEHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_APPROLE...
create table ZIS_APPROLE
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(30),
  c3           NUMBER(6)
)
tablespace TABLESPACE_PCACEHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_APPROLEMODULE...
create table ZIS_APPROLEMODULE
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6)
)
tablespace TABLESPACE_PCACEHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_APPVERSION...
create table ZIS_APPVERSION
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_BULLETIN...
create table ZIS_BULLETIN
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           VARCHAR2(100),
  c3           VARCHAR2(1000),
  c4           VARCHAR2(30),
  c5           VARCHAR2(20)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_DEPARTMENT...
create table ZIS_DEPARTMENT
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_DOTMODULE...
create table ZIS_DOTMODULE
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_DOTMODULEDETAIL...
create table ZIS_DOTMODULEDETAIL
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
  c13          CHAR(1) default '0'           --（二维码校验是否附带蓝牙数据）
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_DOTROLE...
create table ZIS_DOTROLE
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(50),
  c2           VARCHAR2(10),
  c3           VARCHAR2(100),
  c4           NUMBER(6)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_DOTROLEMODULE...
create table ZIS_DOTROLEMODULE
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_DOTUSER...
create table ZIS_DOTUSER
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_EMP...
create table ZIS_EMP
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
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

prompt Creating ZIS_JOBPOSITION...
create table ZIS_JOBPOSITION
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_ORGAN...
create table ZIS_ORGAN
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_RS_COMPUTER...
create table ZIS_RS_COMPUTER
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_RS_OTHERS...
create table ZIS_RS_OTHERS
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Creating ZIS_SERVER...
create table ZIS_SERVER
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(30),
  c2           VARCHAR2(100),
  c3           NUMBER(6),
  c4           VARCHAR2(30)
)
tablespace TABLESPACE_pcaceHIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for A_BANK...
alter table A_BANK disable all triggers;
prompt Disabling triggers for B_MMORGAN...
alter table B_MMORGAN disable all triggers;
prompt Disabling triggers for B_USERLOGIN...
alter table B_USERLOGIN disable all triggers;
prompt Disabling triggers for B_USER_LOCATION...
alter table B_USER_LOCATION disable all triggers;
prompt Disabling triggers for IB_DATAATTACHFILE...
alter table IB_DATAATTACHFILE disable all triggers;
prompt Disabling triggers for IB_DATAEXTINFO...
alter table IB_DATAEXTINFO disable all triggers;
prompt Disabling triggers for IB_DATARESOURCE001...
alter table IB_DATARESOURCE001 disable all triggers;
prompt Disabling triggers for IB_DATARESOURCE002...
alter table IB_DATARESOURCE002 disable all triggers;
prompt Disabling triggers for IB_DATARESOURCE003...
alter table IB_DATARESOURCE003 disable all triggers;
prompt Disabling triggers for IB_DATARESOURCE004...
alter table IB_DATARESOURCE004 disable all triggers;
prompt Disabling triggers for IB_FORMATION...
alter table IB_FORMATION disable all triggers;
prompt Disabling triggers for IB_PROCESS...
alter table IB_PROCESS disable all triggers;
prompt Disabling triggers for IB_PROCESSDETAIL...
alter table IB_PROCESSDETAIL disable all triggers;
prompt Disabling triggers for IB_PROCESSMEMO...
alter table IB_PROCESSMEMO disable all triggers;
prompt Disabling triggers for I_AREA...
alter table I_AREA disable all triggers;
prompt Disabling triggers for I_BULLETIN...
alter table I_BULLETIN disable all triggers;
prompt Disabling triggers for I_DATAPARAMTYPE...
alter table I_DATAPARAMTYPE disable all triggers;
prompt Disabling triggers for I_DATATABLE...
alter table I_DATATABLE disable all triggers;
prompt Disabling triggers for I_DATATABLECOLUMN...
alter table I_DATATABLECOLUMN disable all triggers;
prompt Disabling triggers for I_DATATABLECOLUMNEXTINFO...
alter table I_DATATABLECOLUMNEXTINFO disable all triggers;
prompt Disabling triggers for I_DATAMODULE...
alter table I_DATAMODULE disable all triggers;
prompt Disabling triggers for I_DATAMODULECOLUMN...
alter table I_DATAMODULECOLUMN disable all triggers;
prompt Disabling triggers for I_DATATABLETYPE...
alter table I_DATATABLETYPE disable all triggers;
prompt Disabling triggers for I_PROCESS...
alter table I_PROCESS disable all triggers;
prompt Disabling triggers for I_PROCESSDESC...
alter table I_PROCESSDESC disable all triggers;
prompt Disabling triggers for I_SYSTEMPARAM...
alter table I_SYSTEMPARAM disable all triggers;
prompt Disabling triggers for S_MODULE...
alter table S_MODULE disable all triggers;
prompt Disabling triggers for S_PARAM...
alter table S_PARAM disable all triggers;
prompt Disabling triggers for S_PLATFORM...
alter table S_PLATFORM disable all triggers;
prompt Disabling triggers for S_PUBLISHLOG...
alter table S_PUBLISHLOG disable all triggers;
prompt Disabling triggers for S_QUICKMENU...
alter table S_QUICKMENU disable all triggers;
prompt Disabling triggers for S_ROLE...
alter table S_ROLE disable all triggers;
prompt Disabling triggers for S_ROLE_MODULE...
alter table S_ROLE_MODULE disable all triggers;
prompt Disabling triggers for S_USER...
alter table S_USER disable all triggers;
prompt Disabling triggers for T_CHAT...
alter table T_CHAT disable all triggers;
prompt Disabling triggers for T_DATALOG...
alter table T_DATALOG disable all triggers;
prompt Disabling triggers for T_LOCATION...
alter table T_LOCATION disable all triggers;
prompt Disabling triggers for T_LOG...
alter table T_LOG disable all triggers;
prompt Disabling triggers for T_MARK...
alter table T_MARK disable all triggers;
prompt Disabling triggers for T_MESSAGE...
alter table T_MESSAGE disable all triggers;
prompt Disabling triggers for T_MLOG...
alter table T_MLOG disable all triggers;
prompt Disabling triggers for T_PUSHSMSHIS...
alter table T_PUSHSMSHIS disable all triggers;
prompt Disabling triggers for T_PUSHSMS_ING...
alter table T_PUSHSMS_ING disable all triggers;
prompt Disabling triggers for T_SLOG...
alter table T_SLOG disable all triggers;
prompt Disabling triggers for T_SMSHIS...
alter table T_SMSHIS disable all triggers;
prompt Disabling triggers for T_SMS_ING...
alter table T_SMS_ING disable all triggers;
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
prompt Disabling triggers for IS_ORGAN...
alter table IS_ORGAN disable all triggers;
prompt Disabling triggers for IS_RS_COMPUTER...
alter table IS_RS_COMPUTER disable all triggers;
prompt Disabling triggers for IS_RS_OTHERS...
alter table IS_RS_OTHERS disable all triggers;
prompt Disabling triggers for IS_SERVER...
alter table IS_SERVER disable all triggers;
prompt Disabling triggers for ZA_BANK...
alter table ZA_BANK disable all triggers;
prompt Disabling triggers for ZB_MMORGAN...
alter table ZB_MMORGAN disable all triggers;
prompt Disabling triggers for ZB_USERLOGIN...
alter table ZB_USERLOGIN disable all triggers;
prompt Disabling triggers for ZB_USER_LOCATION...
alter table ZB_USER_LOCATION disable all triggers;
prompt Disabling triggers for ZT_CHAT...
alter table ZT_CHAT disable all triggers;
prompt Disabling triggers for ZT_LOCATION...
alter table ZT_LOCATION disable all triggers;
prompt Disabling triggers for ZT_PUSHSMSHIS...
alter table ZT_PUSHSMSHIS disable all triggers;
prompt Disabling triggers for ZT_PUSHSMS_ING...
alter table ZT_PUSHSMS_ING disable all triggers;
prompt Disabling triggers for ZT_SMSHIS...
alter table ZT_SMSHIS disable all triggers;
prompt Disabling triggers for ZT_SMS_ING...
alter table ZT_SMS_ING disable all triggers;
prompt Disabling triggers for ZIS_APPMODULE...
alter table ZIS_APPMODULE disable all triggers;
prompt Disabling triggers for ZIS_APPMODULEDETAIL...
alter table ZIS_APPMODULEDETAIL disable all triggers;
prompt Disabling triggers for ZIS_APPROLE...
alter table ZIS_APPROLE disable all triggers;
prompt Disabling triggers for ZIS_APPROLEMODULE...
alter table ZIS_APPROLEMODULE disable all triggers;
prompt Disabling triggers for ZIS_APPVERSION...
alter table ZIS_APPVERSION disable all triggers;
prompt Disabling triggers for ZIS_BULLETIN...
alter table ZIS_BULLETIN disable all triggers;
prompt Disabling triggers for ZIS_DEPARTMENT...
alter table ZIS_DEPARTMENT disable all triggers;
prompt Disabling triggers for ZIS_DOTMODULE...
alter table ZIS_DOTMODULE disable all triggers;
prompt Disabling triggers for ZIS_DOTMODULEDETAIL...
alter table ZIS_DOTMODULEDETAIL disable all triggers;
prompt Disabling triggers for ZIS_DOTROLE...
alter table ZIS_DOTROLE disable all triggers;
prompt Disabling triggers for ZIS_DOTROLEMODULE...
alter table ZIS_DOTROLEMODULE disable all triggers;
prompt Disabling triggers for ZIS_DOTUSER...
alter table ZIS_DOTUSER disable all triggers;
prompt Disabling triggers for ZIS_EMP...
alter table ZIS_EMP disable all triggers;
prompt Disabling triggers for ZIS_JOBPOSITION...
alter table ZIS_JOBPOSITION disable all triggers;
prompt Disabling triggers for ZIS_ORGAN...
alter table ZIS_ORGAN disable all triggers;
prompt Disabling triggers for ZIS_RS_COMPUTER...
alter table ZIS_RS_COMPUTER disable all triggers;
prompt Disabling triggers for ZIS_RS_OTHERS...
alter table ZIS_RS_OTHERS disable all triggers;
prompt Disabling triggers for ZIS_SERVER...
alter table ZIS_SERVER disable all triggers;
prompt Loading A_BANK...
prompt Table is empty
prompt Loading B_MMORGAN...
prompt Table is empty
prompt Loading B_USERLOGIN...
prompt Table is empty
prompt Loading B_USER_LOCATION...
prompt Table is empty
prompt Loading IB_DATAATTACHFILE...
prompt Table is empty
prompt Loading IB_DATAEXTINFO...
prompt Table is empty
prompt Loading IB_DATARESOURCE001...
prompt Table is empty
prompt Loading IB_DATARESOURCE002...
prompt Table is empty
prompt Loading IB_DATARESOURCE003...
prompt Table is empty
prompt Loading IB_DATARESOURCE004...
prompt Table is empty
prompt Loading IB_FORMATION...
prompt Table is empty
prompt Loading IB_PROCESS...
prompt Table is empty
prompt Loading IB_PROCESSDETAIL...
prompt Table is empty
prompt Loading IB_PROCESSMEMO...
prompt Table is empty
prompt Loading I_AREA...
insert into I_AREA (id, areaname, areaid, areacode, state, arealevel, upareaid, remark, istdate, uptdate)
values (1, '北京', 1000, null, '1', 201001, 0, null, to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_AREA (id, areaname, areaid, areacode, state, arealevel, upareaid, remark, istdate, uptdate)
values (2, '北京市', 1001, null, '1', 201002, 1000, null, to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading I_BULLETIN...
prompt Table is empty
prompt Loading I_DATAPARAMTYPE...
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (100, '公共', 'HIDATA', 201000, -1, 9, null, '1', to_date('01-11-2016 09:12:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (101, '业务', 'HIDATA', 201000, -1, 0, null, '1', to_date('01-11-2016 09:12:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (130, '有效状态', 'HIDATA', 201001, 100, 3, null, '1', to_date('01-11-2016 09:12:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (131, '是否', 'HIDATA', 201001, 100, 2, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (132, '性?', 'HIDATA', 201001, 100, 2, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133, '学历', 'HIDATA', 201001, 100, 5, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134, '职称', 'HIDATA', 201001, 100, 4, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135, '职位', 'HIDATA', 201001, 100, 12, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (136, '文件类型', 'HIDATA', 201001, 100, 2, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137, '文件格式', 'HIDATA', 201001, 100, 4, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138, '短信类别', 'HIDATA', 201001, 100, 9, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (130001, '有效', 'HIDATA', 201002, 130, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (130002, '无效', 'HIDATA', 201002, 130, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (130444, '关闭', 'HIDATA', 201002, 130, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (131001, '是', 'HIDATA', 201002, 131, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (131002, '否', 'HIDATA', 201002, 131, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (132001, '男', 'HIDATA', 201002, 132, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (132002, '女', 'HIDATA', 201002, 132, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133001, '博士', 'HIDATA', 201002, 133, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133002, '硕士', 'HIDATA', 201002, 133, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133003, '本科', 'HIDATA', 201002, 133, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133004, '专科', 'HIDATA', 201002, 133, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133005, '其他', 'HIDATA', 201002, 133, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134001, '助理工程师', 'HIDATA', 201002, 134, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134002, '中级工程师', 'HIDATA', 201002, 134, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134003, '高级工程师', 'HIDATA', 201002, 134, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134004, '专家', 'HIDATA', 201002, 134, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135001, '总裁', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135002, '总经理', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135003, '副总', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135004, '部门经理', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135005, '项目经理', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135006, '行政', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135007, '会计', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135008, '出纳', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135009, '财务主管', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135010, '财务总监', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135011, '技术总监', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135012, '行政总监', 'HIDATA', 201002, 135, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (136001, '公文', 'HIDATA', 201002, 136, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (136002, '附件', 'HIDATA', 201002, 136, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137001, '.doc', 'HIDATA', 201002, 137, 0, null, '1', to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137002, '.xls', 'HIDATA', 201002, 137, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137003, 'jpg/png', 'HIDATA', 201002, 137, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137004, '其它', 'HIDATA', 201002, 137, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138001, '签收码', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138002, '拒收码', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138003, '手机校验码', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138004, '公告', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138005, '支付短信', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138444, '系统告警', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138111, '推荐', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138222, '关注', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138333, '动态', 'HIDATA', 201002, 138, 0, null, '1', to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:12:50', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 54 records loaded
prompt Loading I_DATATABLE...
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (26, 'IS_AppRoleModule', 'APP角色权限', null, 900000, 1, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, 25, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (25, 'IS_AppRole', 'APP角色', null, 900000, 3, 3, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 1, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (24, 'IS_AppModuleDetail', 'APP模块明细', null, 900000, 11, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, 23, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (23, 'IS_AppModule', 'APP模块', null, 900000, 7, 0, 802001, '0', '1', '0', '0', '0', '0', '0', '复制明细|BAppModule_CopyDetail,同步APP服务器|AAppModule_SynAppServer,', -1, 1, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (18, 'IS_DotUser', 'DOT用户', null, 900000, 23, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (19, 'IS_DotModule', 'DOT模块', null, 900000, 8, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 1, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (20, 'IS_DotRole', 'DOT岗位', null, 900000, 4, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 1, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (21, 'IS_DotRoleModule', 'DOT岗位权限', null, 900000, 1, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, 20, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (22, 'IS_DotModuleDetail', 'DOT模块明细', null, 900000, 13, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, 19, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (1, 'IS_Organ', '公司机构', null, 200000, 7, 0, 802001, '0', '1', '1', '1', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (2, 'IS_Emp', '从业人员', null, 200000, 18, 2, 802001, '0', '1', '0', '0', '0', '0', '0', '启用账户|BUserStart,停用账户|BUserStop,人员结构树|AEmpTree,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (3, 'IS_Department', '部门', null, 200000, 8, 1, 802001, '0', '1', '0', '0', '0', '0', '0', '组织结构图|AJobStruct,组织树|AJobTree,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (4, 'IS_JobPosition', '岗位', null, 200000, 8, 1, 802001, '0', '1', '0', '0', '0', '0', '0', '岗位结构图|AJobPosition,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (5, 'IS_Bulletin', '公告', null, 900000, 5, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (6, 'IS_Server', '服务器', null, 900000, 4, 3, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (7, 'IS_Rs_Computer', '物资-计算机', null, 200000, 14, 0, 802001, '0', '1', '0', '0', '0', '0', '0', '岗位结构图|AJobPosition,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (8, 'IS_Rs_Others', '物资-其它', null, 200000, 11, 0, 802001, '0', '1', '0', '0', '0', '0', '0', '岗位结构图|AJobPosition,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (10, 'IS_AppVersion', 'APP版本', null, 900000, 6, 4, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (11, 'T_SmsHis', '短信发送历史', null, 900000, 7, 0, 802001, '0', '0', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (12, 'T_Sms_Ing', '短信（待发送）', null, 900000, 7, 0, 802001, '1', '0', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (13, 'T_Location', '位置信息（历史）', null, 900000, 8, 0, 802001, '1', '0', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (14, 'T_Chat', '消息记录', null, 900000, 4, 0, 802001, '1', '0', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (16, 'T_PushSmsHis', '推送消息发送历史', null, 900000, 9, 0, 802001, '0', '0', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (17, 'T_PushSms_Ing', '推送消息（待发送）', null, 900000, 9, 0, 802001, '1', '0', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (101, 'A_Bank', '银行', '/pic/', 100009, 15, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (102, 'B_UserLogin', 'APP登录用户', null, 100000, 60, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (103, 'B_User_Location', 'APP登录用户位置信息', null, 100000, 8, 0, 802001, '1', '0', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (104, 'B_MMOrgan', '公司/企业', null, 100000, 30, 59, 802001, '1', '1', '0', '0', '0', '0', '0', '新增门店|BShopAddressNew,新增供应商|BShopSupplyNew,新增客户|BShopBuyerNew,新增管理人员|BShopUserNew,新增商品|BShopGoodsNew,', -1, 5, '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 24 records loaded
prompt Loading I_DATATABLECOLUMN...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (208, 18, 'c1', 'VARCHAR2(32) NOT NULL', 202002, 32, 0, 'AUID', '0', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (209, 18, 'c2', 'NUMBER(11,0) NOT NULL', 202001, 11, 0, '登录号码', '0', null, 0, 0, 0, 802001, 2, '1', 13, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (210, 18, 'c3', 'VARCHAR2(50) NOT NULL', 202010, 50, 0, '登录密码', '0', null, 0, 0, 0, 802001, 3, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (211, 18, 'c4', 'NUMBER(6,0)', 202001, 6, 0, 'DOT岗位', '1', null, 0, 0, 0, 802001, 4, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (212, 18, 'c5', 'NUMBER(14,0)', 202001, 14, 0, '所属部门', '1', null, 0, 0, 0, 802001, 5, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (213, 18, 'c6', 'VARCHAR2(20)', 202003, 20, 0, '最后登录日期', '1', null, 0, 0, 0, 802001, 6, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (214, 18, 'c7', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '登录次数', '1', '0', 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (215, 18, 'c8', 'CHAR(1)', 202004, 1, 0, '在线状态', '1', null, 0, 0, 0, 802001, 8, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (216, 18, 'c9', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802001, 9, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (217, 18, 'c10', 'VARCHAR2(30) NOT NULL', 202002, 30, 0, '姓名', '0', null, 0, 0, 0, 802001, 10, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (228, 18, 'c21', 'NUMBER(9,0)', 202001, 9, 0, '仓库编号', '1', null, 0, 0, 0, 802001, 21, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (229, 18, 'c22', 'VARCHAR2(30)', 202002, 30, 0, '登录IP', '1', null, 0, 0, 0, 802001, 22, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (218, 18, 'c11', 'VARCHAR2(30)', 202002, 30, 0, '昵称', '1', null, 0, 0, 0, 802001, 11, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (219, 18, 'c12', 'VARCHAR2(100)', 202002, 100, 0, '头像', '1', null, 0, 0, 0, 802001, 12, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (220, 18, 'c13', 'VARCHAR2(30)', 202002, 30, 0, '签名', '1', null, 0, 0, 0, 802001, 13, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (221, 18, 'c14', 'NUMBER(6,0)', 202001, 6, 0, '性别', '1', null, 0, 0, 0, 802001, 14, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (222, 18, 'c15', 'VARCHAR2(20)', 202002, 20, 0, '省份', '1', null, 0, 0, 0, 802001, 15, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (223, 18, 'c16', 'VARCHAR2(20)', 202002, 20, 0, '城市', '1', null, 0, 0, 0, 802001, 16, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (224, 18, 'c17', 'VARCHAR2(30)', 202002, 30, 0, '语言', '1', null, 0, 0, 0, 802001, 17, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (225, 18, 'c18', 'VARCHAR2(50)', 202002, 50, 0, 'openid', '1', null, 0, 0, 0, 802001, 18, '1', 50, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (226, 18, 'c19', 'VARCHAR2(20)', 202002, 20, 0, 'qq', '1', null, 0, 0, 0, 802001, 19, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (227, 18, 'c20', 'VARCHAR2(20)', 202002, 20, 0, '权限', '1', null, 0, 0, 0, 802001, 20, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (250, 22, 'c8', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '（二维码类别）', '1', '0', 0, 0, 0, 802001, 8, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (256, 22, 'c12', 'VARCHAR2(30)', 202002, 30, 0, '（二维码校验附带值序号）', '1', null, 0, 0, 0, 802001, 12, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (257, 22, 'c13', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '（二维码校验是否附带蓝牙数据）', '1', '0', 0, 0, 0, 802001, 13, '1', 1, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (230, 19, 'c1', 'VARCHAR2(100) NOT NULL', 202002, 100, 0, '模块名称', '0', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (231, 19, 'c2', 'VARCHAR2(20) NOT NULL', 202002, 20, 0, '模块代码', '0', null, 0, 0, 0, 802001, 2, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (232, 19, 'c3', 'VARCHAR2(100)', 202002, 100, 0, '说明', '1', null, 0, 0, 0, 802001, 3, '1', 50, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (233, 21, 'c1', 'NUMBER(6,0)', 202001, 6, 0, '岗位模块', '1', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (240, 19, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '条件（订单状态值）', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (51, 102, 'c7', 'DATE', 202006, 20, 0, '最后登录日期', '1', null, 0, 0, 0, 802001, 7, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (52, 102, 'c8', 'CHAR(1)', 202004, 1, 0, '在线状态', '1', null, 0, 0, 0, 802001, 8, '1', 4, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (53, 102, 'c9', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 9, '1', 4, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (54, 6, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '服务器名称', '1', null, 0, 0, 0, 802001, 1, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (55, 6, 'c2', 'VARCHAR2(100)', 202002, 100, 0, 'web地址', '1', null, 0, 0, 0, 802001, 2, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (56, 6, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (57, 6, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '备注', '1', null, 0, 0, 0, 802001, 4, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (58, 102, 'c10', 'VARCHAR2(30)', 202002, 30, 0, '登录IP', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (60, 102, 'c11', 'VARCHAR2(30)', 202002, 30, 0, '昵称', '1', null, 0, 0, 0, 802001, 11, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (61, 102, 'c12', 'VARCHAR2(250)', 202009, 250, 0, '头像', '1', null, 0, 0, 0, 802001, 12, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (62, 102, 'c13', 'VARCHAR2(30)', 202002, 30, 0, '签名', '1', null, 0, 0, 0, 802001, 13, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (63, 102, 'c14', 'VARCHAR2(30)', 202002, 30, 0, '性别', '1', null, 0, 0, 0, 802001, 14, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (64, 102, 'c15', 'VARCHAR2(50)', 202002, 50, 0, '国家', '1', null, 0, 0, 0, 802001, 15, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (65, 102, 'c16', 'VARCHAR2(30)', 202002, 30, 0, '省份', '1', null, 0, 0, 0, 802001, 16, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (66, 102, 'c17', 'VARCHAR2(30)', 202002, 30, 0, '城市', '1', null, 0, 0, 0, 802001, 17, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (67, 102, 'c18', 'VARCHAR2(20)', 202002, 20, 0, '语言', '1', null, 0, 0, 0, 802001, 18, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (68, 102, 'c19', 'VARCHAR2(50)', 202002, 50, 0, 'openid', '1', null, 0, 0, 0, 802001, 19, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (69, 102, 'c20', 'VARCHAR2(20)', 202002, 20, 0, '权限', '1', null, 0, 0, 0, 802001, 20, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (70, 14, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '发送者', '1', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (71, 14, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '接收者', '1', null, 0, 0, 0, 802001, 2, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (72, 14, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '消息类型', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (73, 14, 'c4', 'VARCHAR2(2000)', 202002, 2000, 0, '数据包', '1', null, 0, 0, 0, 802001, 4, '1', 2000, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (74, 102, 'c21', 'NUMBER(6,0)', 202001, 6, 0, '身份认证标识', '1', null, 0, 0, 0, 802001, 21, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (75, 102, 'c22', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '登录次数', '1', '0', 0, 0, 0, 802001, 22, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (76, 13, 'c1', 'VARCHAR2(32) NOT NULL', 202002, 32, 0, 'AUID', '0', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (77, 13, 'c2', 'NUMBER(12,6) NOT NULL', 202001, 12, 6, '经度', '0', null, 0, 0, 0, 802001, 2, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (78, 13, 'c3', 'NUMBER(12,6) NOT NULL', 202001, 12, 6, '纬度', '0', null, 0, 0, 0, 802001, 3, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (79, 13, 'c4', 'NUMBER(12,6)', 202001, 12, 6, '海拔', '1', null, 0, 0, 0, 802001, 4, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (80, 13, 'c5', 'NUMBER(12,6)', 202001, 12, 6, '速度', '1', null, 0, 0, 0, 802001, 5, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (81, 13, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '方向', '1', null, 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1, 1, 'c1', 'VARCHAR2(100)', 202002, 100, 0, '公司名称', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 10:16:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (2, 1, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '负责人', '1', null, 0, 0, 0, 802001, 2, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 10:16:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (3, 1, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '员工人数', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 10:16:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (4, 1, 'c4', 'VARCHAR2(20)', 202003, 20, 0, '成立日期', '1', null, 0, 0, 0, 802001, 4, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 10:16:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (5, 1, 'c5', 'VARCHAR2(500)', 202002, 500, 0, '简介', '1', null, 0, 0, 0, 802001, 5, '0', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 10:16:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (6, 2, 'c1', 'VARCHAR2(20) NOT NULL', 202002, 20, 0, '姓名', '0', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (7, 2, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '部门', '1', null, 0, 0, 0, 802001, 3, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (8, 2, 'c2', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '所属公司', '0', null, 0, 0, 0, 802001, 2, '0', 30, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (9, 2, 'c4', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '职位', '0', null, 0, 0, 0, 802001, 4, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (10, 2, 'c5', 'NUMBER(4,0) NOT NULL', 202001, 4, 0, '员工编号', '0', null, 0, 0, 0, 802001, 5, '1', 4, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (11, 2, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '性别', '1', null, 0, 0, 0, 802001, 12, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (12, 2, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '职称', '1', null, 0, 0, 0, 802001, 13, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (13, 2, 'c8', 'VARCHAR2(20)', 202003, 20, 0, '出生年月', '1', null, 0, 0, 0, 802001, 14, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (14, 2, 'c9', 'NUMBER(6,0)', 202001, 6, 0, '学历', '1', null, 0, 0, 0, 802001, 15, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (15, 2, 'c10', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802001, 16, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (16, 3, 'c1', 'VARCHAR2(30) NOT NULL', 202002, 30, 0, '部门', '0', null, 0, 0, 0, 802001, 1, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (17, 3, 'c2', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '所属公司', '0', null, 0, 0, 0, 802001, 2, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (18, 3, 'c3', 'VARCHAR2(500)', 202002, 500, 0, '职责', '1', null, 0, 0, 0, 802001, 4, '0', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (235, 20, 'c1', 'VARCHAR2(50)', 202002, 50, 0, 'DOT岗位名称', '1', null, 0, 0, 0, 802001, 1, '1', 50, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (236, 20, 'c2', 'VARCHAR2(10)', 202002, 10, 0, '岗位代码', '1', null, 0, 0, 0, 802001, 2, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (237, 20, 'c3', 'VARCHAR2(100)', 202002, 100, 0, '说明', '1', null, 0, 0, 0, 802001, 3, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (238, 20, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 4, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (241, 19, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '结果（订单状态值）', '1', null, 0, 0, 0, 802001, 6, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (253, 22, 'c10', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '（条件状态）', '1', '0', 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (254, 22, 'c11', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '（结果状态）', '1', '0', 0, 0, 0, 802001, 11, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (251, 19, 'c8', 'VARCHAR2(50)', 202002, 50, 0, '处理程序', '1', null, 0, 0, 0, 802001, 8, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (252, 22, 'c9', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '（二维码是否校验）', '1', '0', 0, 0, 0, 802001, 9, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (255, 18, 'c23', 'VARCHAR2(100)', 202002, 100, 0, '备注', '1', null, 0, 0, 0, 802001, 23, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (242, 19, 'c7', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '模块类别', '0', null, 0, 0, 0, 802001, 7, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (243, 22, 'c1', 'VARCHAR2(50) NOT NULL', 202002, 50, 0, '表单名称', '0', null, 0, 0, 0, 802001, 1, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (244, 22, 'c2', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '表单类别', '0', null, 0, 0, 0, 802001, 2, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (245, 22, 'c3', 'VARCHAR2(100)', 202002, 100, 0, '（下拉框可选项）', '1', null, 0, 0, 0, 802001, 3, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (246, 22, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '默认值', '1', null, 0, 0, 0, 802001, 4, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (247, 22, 'c5', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '是否必填', '1', '0', 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (248, 22, 'c6', 'NUMBER(6,0) DEFAULT 1', 202001, 6, 0, '多值/单值', '1', '1', 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (249, 22, 'c7', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '排序', '0', '0', 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:38:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (90, 103, 'c7', 'VARCHAR2(100)', 202002, 100, 0, '位置信息', '1', null, 0, 0, 0, 802001, 7, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (91, 103, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '备用', '1', null, 0, 0, 0, 802001, 8, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (92, 102, 'c23', 'VARCHAR2(100)', 202002, 100, 0, '备注', '1', null, 0, 0, 0, 802001, 23, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (93, 101, 'c1', 'VARCHAR2(100) NOT NULL', 202002, 100, 0, '银行名称', '0', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 100 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (94, 101, 'c2', 'VARCHAR2(50)', 202008, 50, 0, '图片', '1', null, 0, 0, 0, 802001, 2, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (95, 101, 'c3', 'VARCHAR2(50)', 202008, 50, 0, '小图', '1', null, 0, 0, 0, 802001, 3, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (96, 101, 'c4', 'VARCHAR2(10)', 202002, 10, 0, '代码编号', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (97, 101, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 5, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (98, 101, 'c6', 'VARCHAR2(10)', 202002, 10, 0, '卡号前缀', '1', null, 0, 0, 0, 802001, 6, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (99, 101, 'c7', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '卡号位数', '1', '0', 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (100, 101, 'c8', 'NUMBER(11,0) DEFAULT 0', 202001, 11, 0, '每日额度', '1', '0', 0, 0, 0, 802001, 8, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (101, 101, 'c9', 'NUMBER(11,0) DEFAULT 0', 202001, 11, 0, '每笔额度', '1', '0', 0, 0, 0, 802001, 9, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (102, 101, 'c10', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '每日次数', '1', '0', 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (103, 10, 'c1', 'NUMBER(3,0)', 202001, 3, 0, 'app code', '1', null, 0, 0, 0, 802001, 1, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (104, 10, 'c2', 'VARCHAR2(20)', 202002, 20, 0, '版本号', '1', null, 0, 0, 0, 802001, 2, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (105, 10, 'c3', 'VARCHAR2(200)', 202002, 200, 0, '下载地址', '1', null, 0, 0, 0, 802001, 3, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (106, 10, 'c4', 'VARCHAR2(2000)', 202002, 2000, 0, '版本说明', '1', null, 0, 0, 0, 802001, 4, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (107, 10, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (108, 10, 'c6', 'VARCHAR2(100)', 202002, 100, 0, '备注', '1', null, 0, 0, 0, 802001, 6, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (109, 11, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '发送号码', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (110, 11, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '接收号码', '1', null, 0, 0, 0, 802001, 2, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (111, 11, 'c3', 'VARCHAR2(200)', 202002, 200, 0, '短信内容', '1', null, 0, 0, 0, 802001, 3, '1', 40, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (112, 11, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (113, 11, 'c5', 'VARCHAR2(200)', 202002, 200, 0, '发送结果状态', '1', null, 0, 0, 0, 802001, 5, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (114, 11, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '短信类型', '1', null, 0, 0, 0, 802001, 6, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (115, 11, 'c7', 'NUMBER(9,0)', 202001, 9, 0, '组织ID', '1', null, 0, 0, 0, 802001, 7, '1', 9, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (116, 12, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '发送号码', '1', null, 0, 0, 0, 802001, 1, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (19, 4, 'c1', 'VARCHAR2(30) NOT NULL', 202002, 30, 0, '职位名称', '0', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (20, 4, 'c2', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '所属公司', '0', null, 0, 0, 0, 802001, 2, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (21, 4, 'c3', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '有效状态', '0', null, 0, 0, 0, 802001, 7, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (22, 4, 'c4', 'VARCHAR2(200)', 202002, 200, 0, '职责', '1', null, 0, 0, 0, 802001, 6, '0', 200, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (23, 4, 'c5', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 8, '1', 200, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (24, 3, 'c4', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '编制人数', '0', null, 0, 0, 0, 802001, 5, '1', 4, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (25, 3, 'c5', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '在岗人数', '0', null, 0, 0, 0, 802001, 6, '1', 4, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (26, 3, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '上级', '1', null, 0, 0, 0, 802001, 3, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (27, 3, 'c7', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802001, 7, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (28, 3, 'c8', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 8, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (29, 4, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '部门', '1', null, 0, 0, 0, 802001, 3, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (30, 4, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '上级', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (31, 4, 'c8', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '级别', '0', null, 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (32, 2, 'c11', 'NUMBER(11,0) NOT NULL', 202001, 11, 0, '手机', '0', null, 0, 0, 0, 802001, 7, '1', 11, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (33, 2, 'c12', 'NUMBER(11,0)', 202001, 11, 0, '手机2', '1', null, 0, 0, 0, 802001, 8, '1', 11, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (34, 2, 'c13', 'VARCHAR2(30)', 202002, 30, 0, 'APP登录密码', '1', null, 0, 0, 0, 802001, 9, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (35, 2, 'c14', 'NUMBER(15,0)', 202001, 15, 0, 'QQ', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (36, 2, 'c15', 'VARCHAR2(30) NOT NULL', 202002, 30, 0, 'email', '0', null, 0, 0, 0, 802001, 11, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (82, 13, 'c7', 'VARCHAR2(100)', 202002, 100, 0, '位置信息', '1', null, 0, 0, 0, 802001, 7, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (83, 13, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '备用', '1', null, 0, 0, 0, 802001, 8, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (84, 103, 'c1', 'VARCHAR2(32) NOT NULL', 202002, 32, 0, 'AUID', '0', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (85, 103, 'c2', 'NUMBER(12,6) NOT NULL', 202001, 12, 6, '经度', '0', null, 0, 0, 0, 802001, 2, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (86, 103, 'c3', 'NUMBER(12,6) NOT NULL', 202001, 12, 6, '纬度', '0', null, 0, 0, 0, 802001, 3, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (87, 103, 'c4', 'NUMBER(12,6)', 202001, 12, 6, '海拔', '1', null, 0, 0, 0, 802001, 4, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (88, 103, 'c5', 'NUMBER(12,6)', 202001, 12, 6, '速度', '1', null, 0, 0, 0, 802001, 5, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (89, 103, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '方向', '1', null, 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (117, 12, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '接收号码', '1', null, 0, 0, 0, 802001, 2, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (118, 12, 'c3', 'VARCHAR2(200)', 202002, 200, 0, '短信内容', '1', null, 0, 0, 0, 802001, 3, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (119, 12, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 4, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (120, 12, 'c5', 'VARCHAR2(200)', 202002, 200, 0, '发送结果状态', '1', null, 0, 0, 0, 802001, 5, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (121, 12, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '短信类型', '1', null, 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (122, 12, 'c7', 'NUMBER(9,0)', 202001, 9, 0, '组织ID', '1', null, 0, 0, 0, 802001, 7, '1', 9, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (123, 101, 'c11', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '是否支持代收', '1', '0', 0, 0, 0, 802001, 11, '1', 1, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (124, 101, 'c12', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '是否支持代付', '1', '0', 0, 0, 0, 802001, 12, '1', 1, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (125, 101, 'c13', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '是否支持预授权', '1', '0', 0, 0, 0, 802001, 13, '1', 1, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (126, 101, 'c14', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '省份必填', '1', '0', 0, 0, 0, 802001, 14, '1', 1, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (127, 101, 'c15', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 15, '1', 200, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (135, 102, 'c31', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 31, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (136, 102, 'c32', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 32, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (137, 102, 'c33', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 33, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (138, 102, 'c34', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 34, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (139, 102, 'c35', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 35, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (140, 102, 'c36', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 36, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (141, 102, 'c37', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 37, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (142, 102, 'c38', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 38, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (143, 102, 'c39', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 39, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (144, 102, 'c40', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 40, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (145, 102, 'c41', 'DATE', 202006, 20, 0, '密码更新时间', '1', null, 0, 0, 0, 802001, 41, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (146, 102, 'c42', 'VARCHAR2(30)', 202002, 30, 0, 'R姓名', '1', null, 0, 0, 0, 802001, 42, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (147, 102, 'c43', 'VARCHAR2(30)', 202002, 30, 0, 'R性别', '1', null, 0, 0, 0, 802001, 43, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (148, 102, 'c44', 'VARCHAR2(30)', 202002, 30, 0, 'R身份证号', '1', null, 0, 0, 0, 802001, 44, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (258, 1, 'c6', 'VARCHAR2(30)', 202002, 30, 0, '域名', '1', null, 0, 0, 0, 802001, 6, '1', 12, '1', '1', to_date('01-11-2016 09:56:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 10:16:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (259, 1, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('01-11-2016 09:56:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 10:16:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (160, 16, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '消息类型', '1', null, 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (161, 16, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '消息层级', '1', null, 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (162, 17, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '发送号码', '1', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (163, 17, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '接收号码', '1', null, 0, 0, 0, 802001, 2, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (37, 2, 'c16', 'VARCHAR2(30)', 202002, 30, 0, '登录账户', '1', null, 0, 0, 0, 802001, 6, '1', 10, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (38, 2, 'c17', 'VARCHAR2(50)', 202002, 50, 0, '打印机A4', '1', null, 0, 0, 0, 802001, 17, '1', 50, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (39, 2, 'c18', 'VARCHAR2(50)', 202002, 50, 0, '打印机标签', '1', null, 0, 0, 0, 802001, 18, '1', 50, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (40, 5, 'c1', 'NUMBER(6,0)', 202001, 6, 0, '类别', '1', null, 0, 0, 0, 802001, 1, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (41, 5, 'c2', 'VARCHAR2(100)', 202002, 100, 0, '标题', '1', null, 0, 0, 0, 802001, 2, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (42, 5, 'c3', 'VARCHAR2(1000)', 202002, 1000, 0, '内容', '1', null, 0, 0, 0, 802001, 3, '1', 1000, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (43, 5, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '发布人', '1', null, 0, 0, 0, 802001, 4, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (44, 5, 'c5', 'VARCHAR2(20)', 202003, 20, 0, '发布日期', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (45, 102, 'c1', 'VARCHAR2(32) NOT NULL', 202002, 32, 0, 'AUID', '0', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (46, 102, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '手机号码', '1', null, 0, 0, 0, 802001, 2, '1', 13, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (47, 102, 'c3', 'VARCHAR2(50)', 202010, 50, 0, '登录密码', '1', null, 0, 0, 0, 802001, 3, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (48, 102, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '用户主身份', '1', null, 0, 0, 0, 802001, 4, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (49, 102, 'c5', 'NUMBER(14,0)', 202001, 14, 0, '所属组织MID', '1', null, 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (149, 102, 'c45', 'VARCHAR2(30)', 202002, 30, 0, 'R（未使用）', '1', null, 0, 0, 0, 802001, 45, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (150, 102, 'c46', 'VARCHAR2(30)', 202002, 30, 0, 'R（未使用）', '1', null, 0, 0, 0, 802001, 46, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (151, 102, 'c47', 'VARCHAR2(200)', 202009, 200, 0, 'R图片1', '1', null, 0, 0, 0, 802001, 47, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (152, 102, 'c48', 'VARCHAR2(200)', 202009, 200, 0, 'R图片2', '1', null, 0, 0, 0, 802001, 48, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (153, 102, 'c49', 'VARCHAR2(200)', 202009, 200, 0, 'R图片3', '1', null, 0, 0, 0, 802001, 49, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (154, 102, 'c50', 'VARCHAR2(30)', 202002, 30, 0, 'REmail', '1', null, 0, 0, 0, 802001, 50, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 200 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (164, 17, 'c3', 'VARCHAR2(200)', 202002, 200, 0, '消息内容', '1', null, 0, 0, 0, 802001, 3, '1', 40, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (165, 17, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 4, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (166, 17, 'c5', 'VARCHAR2(200)', 202002, 200, 0, '发送结果状态', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (167, 17, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '消息类型', '1', null, 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (168, 17, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '消息二级类型', '1', null, 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (169, 17, 'c8', 'VARCHAR2(32)', 202002, 32, 0, '对象编号', '1', null, 0, 0, 0, 802001, 8, '1', 9, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (171, 16, 'c9', 'VARCHAR2(200)', 202009, 200, 0, '图片', '1', null, 0, 0, 0, 802001, 9, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (172, 17, 'c9', 'VARCHAR2(200)', 202009, 200, 0, '图片', '1', null, 0, 0, 0, 802001, 9, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (173, 7, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '计算机编号', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (174, 7, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '品牌型号', '1', null, 0, 0, 0, 802001, 2, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (175, 7, 'c3', 'VARCHAR2(20)', 202003, 20, 0, '购买日期', '1', null, 0, 0, 0, 802001, 3, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (176, 7, 'c4', 'VARCHAR2(30)', 202002, 30, 0, 'CPU', '1', null, 0, 0, 0, 802001, 4, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (177, 7, 'c5', 'VARCHAR2(30)', 202002, 30, 0, '显卡', '1', null, 0, 0, 0, 802001, 5, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (178, 7, 'c6', 'VARCHAR2(30)', 202002, 30, 0, '硬盘', '1', null, 0, 0, 0, 802001, 6, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (179, 7, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '内存', '1', null, 0, 0, 0, 802001, 7, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (180, 7, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '操作系统', '1', null, 0, 0, 0, 802001, 8, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (181, 7, 'c9', 'VARCHAR2(50)', 202002, 50, 0, '用途', '1', null, 0, 0, 0, 802001, 9, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (182, 7, 'c10', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (183, 7, 'c11', 'NUMBER(9,0)', 202001, 9, 0, '领用人员', '1', null, 0, 0, 0, 802001, 11, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (184, 7, 'c12', 'VARCHAR2(20)', 202003, 20, 0, '领用日期', '1', null, 0, 0, 0, 802001, 12, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (185, 7, 'c13', 'VARCHAR2(20)', 202003, 20, 0, '归还日期', '1', null, 0, 0, 0, 802001, 13, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (186, 8, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '物资编号', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (187, 8, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '名称', '1', null, 0, 0, 0, 802001, 2, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (188, 8, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '品牌型号', '1', null, 0, 0, 0, 802001, 3, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (189, 8, 'c4', 'VARCHAR2(100)', 202002, 100, 0, '说明', '1', null, 0, 0, 0, 802001, 4, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (190, 8, 'c5', 'VARCHAR2(20)', 202003, 20, 0, '购买日期', '1', null, 0, 0, 0, 802001, 5, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (191, 8, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '有效期限（年）', '1', null, 0, 0, 0, 802001, 6, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (192, 8, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 7, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (193, 8, 'c8', 'NUMBER(9,0)', 202001, 9, 0, '领用人员', '1', null, 0, 0, 0, 802001, 8, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (194, 8, 'c9', 'VARCHAR2(20)', 202003, 20, 0, '领用日期', '1', null, 0, 0, 0, 802001, 9, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (195, 8, 'c10', 'VARCHAR2(20)', 202003, 20, 0, '归还日期', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (196, 8, 'c11', 'VARCHAR2(100)', 202002, 100, 0, '备注', '1', null, 0, 0, 0, 802001, 11, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (197, 7, 'c14', 'VARCHAR2(100)', 202002, 100, 0, '备注', '1', null, 0, 0, 0, 802001, 14, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (198, 102, 'c51', 'VARCHAR2(50)', 202002, 50, 0, 'R联系地址', '1', null, 0, 0, 0, 802001, 51, '1', 50, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (199, 102, 'c52', 'VARCHAR2(30)', 202002, 30, 0, 'R手机号', '1', null, 0, 0, 0, 802001, 52, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (200, 102, 'c53', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 53, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (201, 102, 'c54', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 54, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (202, 102, 'c55', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 55, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (203, 102, 'c56', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 56, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (204, 102, 'c57', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 57, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (205, 102, 'c58', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 58, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (206, 102, 'c59', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 59, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (207, 102, 'c60', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 60, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (128, 102, 'c24', 'NUMBER(2,0) DEFAULT 1', 202001, 2, 0, '发布图片最大数目', '1', '1', 0, 0, 0, 802001, 24, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (129, 102, 'c25', 'VARCHAR2(30)', 202002, 30, 0, '真实姓名', '1', null, 0, 0, 0, 802001, 25, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (130, 102, 'c26', 'VARCHAR2(30)', 202002, 30, 0, '生日', '1', null, 0, 0, 0, 802001, 26, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (131, 102, 'c27', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '星级', '1', '0', 0, 0, 0, 802001, 27, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (132, 102, 'c28', 'VARCHAR2(20)', 202002, 20, 0, 'QQ', '1', null, 0, 0, 0, 802001, 28, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (133, 102, 'c29', 'VARCHAR2(50)', 202002, 50, 0, '所属组织名称', '1', null, 0, 0, 0, 802001, 29, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (134, 102, 'c30', 'NUMBER(9,0) DEFAULT 0', 202001, 9, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 30, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (170, 16, 'c8', 'VARCHAR2(32)', 202002, 32, 0, '对象编号', '1', null, 0, 0, 0, 802001, 8, '1', 9, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (155, 16, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '发送号码', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (156, 16, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '接收号码', '1', null, 0, 0, 0, 802001, 2, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (157, 16, 'c3', 'VARCHAR2(200)', 202002, 200, 0, '短信内容', '1', null, 0, 0, 0, 802001, 3, '1', 40, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (158, 16, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (159, 16, 'c5', 'VARCHAR2(200)', 202002, 200, 0, '发送结果状态', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (50, 102, 'c6', 'VARCHAR2(32)', 202002, 32, 0, '所属组织AMID', '1', null, 0, 0, 0, 802001, 6, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:34:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (239, 19, 'c4', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (296, 23, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '模块ID', '1', null, 0, 0, 0, 802001, 1, '1', 12, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-10-2016 21:09:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (297, 23, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '模块类型', '1', null, 0, 0, 0, 802001, 2, '1', 6, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-10-2016 21:09:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (298, 23, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '排序', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-10-2016 21:09:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (299, 23, 'c4', 'VARCHAR2(100)', 202002, 100, 0, '标题', '1', null, 0, 0, 0, 802001, 4, '1', 30, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-10-2016 21:09:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (300, 23, 'c5', 'VARCHAR2(30)', 202002, 30, 0, '关联表', '1', null, 0, 0, 0, 802001, 5, '1', 15, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-10-2016 21:09:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (301, 23, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 6, '1', 10, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-10-2016 21:09:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (316, 23, 'c7', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 7, '1', 20, '1', '1', to_date('15-06-2016 10:29:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-10-2016 21:09:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (302, 24, 'c1', 'VARCHAR2(30)', 202002, 30, 0, 'MD标题', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (303, 24, 'c2', 'NUMBER(6,0)', 202001, 6, 0, 'MD类型', '1', null, 0, 0, 0, 802001, 2, '1', 8, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (304, 24, 'c3', 'VARCHAR2(100)', 202009, 100, 0, 'MD图标', '1', null, 0, 0, 0, 802001, 3, '1', 8, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (305, 24, 'c4', 'VARCHAR2(50)', 202002, 50, 0, '参数', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (306, 24, 'c5', 'VARCHAR2(4000)', 202002, 4000, 0, '参数1', '1', null, 0, 0, 0, 802001, 5, '1', 40, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (307, 24, 'c6', 'VARCHAR2(500)', 202002, 500, 0, '参数2', '1', null, 0, 0, 0, 802001, 6, '1', 25, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (308, 24, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '操作ACTION', '1', null, 0, 0, 0, 802001, 7, '1', 10, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (309, 24, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '下一步模块ID', '1', null, 0, 0, 0, 802001, 8, '1', 10, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (314, 24, 'c9', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 9, '1', 6, '1', '1', to_date('12-06-2016 09:45:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (315, 24, 'c10', 'NUMBER(6,0)', 202001, 6, 0, '排序', '1', null, 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('12-06-2016 09:45:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (317, 24, 'c11', 'VARCHAR2(20)', 202002, 20, 0, '权限（增删改查选倒序）', '1', null, 0, 0, 0, 802001, 11, '1', 10, '1', '1', to_date('15-06-2016 11:34:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2016 21:43:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (310, 25, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '角色名称', '1', null, 0, 0, 0, 802001, 1, '1', 6, '1', '1', to_date('04-06-2016 01:09:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-06-2016 01:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (311, 25, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '角色代码', '1', null, 0, 0, 0, 802001, 2, '1', 30, '1', '1', to_date('04-06-2016 01:09:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-06-2016 01:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (312, 25, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('04-06-2016 01:09:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-06-2016 01:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (313, 26, 'c1', 'NUMBER(6,0)', 202001, 6, 0, 'APP模块', '1', null, 0, 0, 0, 802001, 1, '1', 6, '1', '1', to_date('04-06-2016 01:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-06-2016 01:15:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (318, 104, 'c1', 'VARCHAR2(32)', 202002, 32, 0, 'AMID', '1', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (319, 104, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '商户名称', '1', null, 0, 0, 0, 802001, 2, '1', 32, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (320, 104, 'c3', 'VARCHAR2(32)', 202002, 32, 0, '所属上级商户', '1', null, 0, 0, 0, 802001, 3, '1', 32, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (321, 104, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '下级店铺数目', '1', null, 0, 0, 0, 802001, 4, '0', 32, '0', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (322, 104, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '机构类别', '1', null, 0, 0, 0, 802001, 5, '1', 12, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (323, 104, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '业务状态', '1', null, 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (324, 104, 'c7', 'VARCHAR2(20)', 202002, 20, 0, '有效期', '1', null, 0, 0, 0, 802001, 7, '0', 20, '0', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (325, 104, 'c8', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 8, '1', 6, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (326, 104, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '城市', '1', null, 0, 0, 0, 802001, 9, '1', 15, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (327, 104, 'c10', 'VARCHAR2(100)', 202002, 100, 0, '主营业务', '1', null, 0, 0, 0, 802001, 10, '1', 30, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (328, 104, 'c11', 'VARCHAR2(30)', 202002, 30, 0, '公司电话', '1', null, 0, 0, 0, 802001, 11, '1', 15, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (329, 104, 'c12', 'VARCHAR2(30)', 202002, 30, 0, '联系人姓名', '1', null, 0, 0, 0, 802001, 12, '1', 15, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (330, 104, 'c13', 'VARCHAR2(30)', 202002, 30, 0, '联系人电话', '1', null, 0, 0, 0, 802001, 13, '1', 15, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (331, 104, 'c14', 'VARCHAR2(200)', 202002, 200, 0, '地址', '1', null, 0, 0, 0, 802001, 14, '1', 30, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (332, 104, 'c15', 'VARCHAR2(30)', 202002, 30, 0, '坐标', '1', null, 0, 0, 0, 802001, 15, '0', 6, '0', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (343, 104, 'c16', 'VARCHAR2(30)', 202002, 30, 0, '负责人姓名', '1', null, 0, 0, 0, 802001, 16, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (344, 104, 'c17', 'VARCHAR2(30)', 202002, 30, 0, '负责人电话', '1', null, 0, 0, 0, 802001, 17, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (345, 104, 'c18', 'VARCHAR2(30)', 202002, 30, 0, 'R开户银行', '1', null, 0, 0, 0, 802001, 18, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (346, 104, 'c19', 'VARCHAR2(30)', 202002, 30, 0, 'R银行账号', '1', null, 0, 0, 0, 802001, 19, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (347, 104, 'c20', 'VARCHAR2(50)', 202002, 50, 0, 'R银行账户名称', '1', null, 0, 0, 0, 802001, 20, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (348, 104, 'c21', 'VARCHAR2(30)', 202002, 30, 0, 'R银行预留手机号', '1', null, 0, 0, 0, 802001, 21, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (349, 104, 'c22', 'VARCHAR2(32)', 202002, 32, 0, '商户开发人员', '1', null, 0, 0, 0, 802001, 22, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (350, 104, 'c23', 'VARCHAR2(32)', 202002, 32, 0, '业务负责人员', '1', null, 0, 0, 0, 802001, 23, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (351, 104, 'c24', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '信用等级', '1', '0', 0, 0, 0, 802001, 24, '0', 12, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (352, 104, 'c25', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '信用额度', '1', '0', 0, 0, 0, 802001, 25, '0', 12, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (353, 104, 'c26', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '当前信用余额', '1', '0', 0, 0, 0, 802001, 26, '0', 12, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (354, 104, 'c27', 'NUMBER(14,2) DEFAULT 0', 202001, 14, 2, '当前账户余额', '1', '0', 0, 0, 0, 802001, 27, '1', 12, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (355, 104, 'c28', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '账期(天)', '1', '0', 0, 0, 0, 802001, 28, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (356, 104, 'c29', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '单车结算', '1', '0', 0, 0, 0, 802001, 29, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (357, 104, 'c30', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 30, '0', 10, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2016 10:38:10', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 258 records loaded
prompt Loading I_DATATABLECOLUMNEXTINFO...
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (1, 1, 1, 2000, '公司名称', null, null, null, null, null, 0, 0, null, null, null, '-1', null, '1', '1', '1', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (2, 6, 2, 2000, '姓名', null, null, null, null, null, 0, 0, null, null, null, '-1', null, '0', '1', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (3, 7, 2, 2000, '性别', null, null, null, null, null, 0, 0, null, '3 - 部门', 803009, '3', '9', '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (4, 8, 2, 2000, '所属业务公司', null, null, null, null, null, 0, 0, null, '1 - 公司机构', 803009, '1', '7', '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (5, 9, 2, 2000, '所属部门', null, null, null, null, null, 0, 0, null, '4 - 职位', 803009, '4', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (6, 10, 2, 2000, '职位', null, null, null, null, null, 0, 0, null, null, null, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (7, 11, 2, 2000, '职称', null, null, null, null, null, 0, 0, null, '数据应用字典：132 - 性?', 803001, '132', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (8, 12, 2, 2000, '学历', null, null, null, null, null, 0, 0, null, '数据应用字典：134 - 职称', 803001, '134', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (9, 14, 2, 2000, '学历', null, null, null, null, null, 0, 0, null, '数据应用字典：133 - 学历', 803001, '133', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (10, 15, 2, 2000, '状态', null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (11, 16, 3, 2000, '部门', null, null, null, null, null, 0, 0, null, null, null, null, null, '0', '1', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (12, 17, 3, 2000, '所属业务公司', null, null, null, null, null, 0, 0, null, '1 - 公司机构', 803009, '1', '26', '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (13, 24, 3, 2000, '状态', null, null, null, null, null, 0, 0, null, '默认值：0', 803004, '0', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (14, 25, 3, 2000, '在岗人数', null, null, null, null, null, 0, 0, null, '默认值：0', 803004, '0', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (15, 26, 3, 2000, '上级', null, null, null, null, null, 0, 0, null, '4 - 岗位', 803009, '4', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (16, 27, 3, 2000, '状态', null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (17, 19, 4, 2000, '职位名称', null, null, null, null, null, 0, 0, null, null, null, '-1', null, '0', '1', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (18, 20, 4, 2000, '所属业务公司', null, null, null, null, null, 0, 0, null, '1 - 公司机构', 803009, '1', '29,30', '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (19, 21, 4, 2000, '有效状态', null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (20, 22, 4, 2000, '有效状态', null, null, null, null, null, 0, 0, null, null, null, '0', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (21, 29, 4, 2000, '部门', null, null, null, null, null, 0, 0, null, '3 - 部门', 803009, '3', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (22, 30, 4, 2000, '上级', null, null, null, null, null, 0, 0, null, '4 - 岗位', 803009, '4', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (23, 46, 102, 2000, '手机号码', null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '1', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (24, 97, 101, 2000, '状态', null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (25, 76, 13, 2000, 'AUID', null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (26, 77, 13, 2000, '经度', null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (27, 48, 102, 2000, '组织类别', null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:35:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (28, 49, 102, 2000, '所属组织ID', null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (30, 60, 102, 2000, '昵称', null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '1', '1', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 29 records loaded
prompt Loading I_DATATABLETYPE...
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (100000, '业务数据管理', 201001, -1, 12, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (100009, '基础数据管理', 201001, -1, 12, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (200000, '公司组织管理', 201001, -1, 11, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (300000, '网站资源管理', 201001, -1, 0, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (400001, 'OA工作流程', 201001, -1, 0, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (900000, '系统管理', 201001, -1, 0, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 5 records loaded
prompt Loading I_PROCESS...
prompt Table is empty
prompt Loading I_PROCESSDESC...
prompt Table is empty
prompt Loading I_SYSTEMPARAM...
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (1, 100, '流程分类', '100001', '财务流程', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (2, 100, '流程分类', '100002', '行政流程', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (3, 100, '流程分类', '100003', '项目流程', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (4, 100, '流程分类', '100004', '其他流程', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (8, 101, '流程经手模式', '101001', '一人名单一人处理', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (9, 101, '流程经手模式', '101002', '多人名单一人处理', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (10, 101, '流程经手模式', '101003', '多人名单多人并行处理', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (11, 102, '流程选人过滤规则', '102001', '允许选择全部指定的经办人', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (12, 102, '流程选人过滤规则', '102002', '只允许选择本部门经办人', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (13, 102, '流程选人过滤规则', '102003', '只允许选择上级部门经办人', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (14, 102, '流程选人过滤规则', '102004', '只允许选择下级部门经办人', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (15, 102, '流程选人过滤规则', '102005', '只允许选择本角色经办人', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (20, 103, '流程自动选人规则', '103001', '不进行自动选择', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (21, 103, '流程自动选人规则', '103002', '自动选择流程发起人', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (22, 103, '流程自动选人规则', '103003', '自动选择本部门主管', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (23, 103, '流程自动选人规则', '103004', '自动选择上级主管领导', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (24, 103, '流程自动选人规则', '103005', '自动选择董事长（一级部门主管）', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (25, 103, '流程自动选人规则', '103006', '自动选择总经理（二级部门主管）', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (26, 103, '流程自动选人规则', '103007', '自动选择指定步骤经办人', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (27, 103, '流程自动选人规则', '103008', '自动选择指定字段', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (90, 200, '机构类型', '200001', '公司', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (100, 201, '等级', '201000', '-', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (101, 201, '等级', '201001', '一级', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (102, 201, '等级', '201002', '二级', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (103, 201, '等级', '201003', '三级', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (104, 201, '等级', '201004', '四级', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (105, 201, '等级', '201005', '五级', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (106, 201, '等级', '201006', '六级', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (107, 201, '等级', '201007', '七级', null, null, '1', to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (108, 201, '等级', '201008', '八级', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (109, 201, '等级', '201009', '九级', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (110, 201, '等级', '201010', '十级', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (111, 202, '数据类型', '202001', 'NUMBER', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (112, 202, '数据类型', '202002', 'VARCHAR2', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (113, 202, '数据类型', '202003', 'DATE', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (114, 202, '数据类型', '202004', 'CHAR', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (115, 202, '数据类型', '202005', 'TEXT', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (116, 202, '数据类型', '202006', 'DATETIME', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (117, 202, '数据类型', '202007', 'FILE', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (118, 202, '数据类型', '202008', 'IMG_FILE', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (119, 202, '数据类型', '202009', 'IMG_LINK', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (120, 202, '数据类型', '202010', 'MD5加密文', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (121, 202, '数据类型', '202011', '随机码UGID', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (122, 202, '数据类型', '202012', '单选框', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (123, 202, '数据类型', '202013', '多选框', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (131, 204, '附件类型', '204001', '图片', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (132, 204, '附件类型', '204002', '音频', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (133, 204, '附件类型', '204003', '视频', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (134, 204, '附件类型', '204004', '文本', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (141, 205, '外文', '205001', '中国简体', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (142, 205, '外文', '205002', '英语', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (143, 205, '外文', '205003', '日语', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (144, 205, '外文', '205004', '韩语', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (145, 205, '外文', '205005', '法语', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (149, 206, '分组函数', '206000', 'groupby', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (150, 206, '分组函数', '206001', 'sum', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (151, 206, '分组函数', '206002', 'max', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (152, 206, '分组函数', '206003', 'min', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (153, 206, '分组函数', '206004', 'count', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (200, 801, '数据状态', '801000', '初始', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (201, 801, '数据状态', '801001', '等待校对', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (202, 801, '数据状态', '801003', '等待审核入库', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (203, 801, '数据状态', '801004', '已入库，等待发布', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (204, 801, '数据状态', '801005', '已冻结', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (205, 801, '数据状态', '801009', '已发布', null, null, '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (301, 802, '密级', '802001', '公开', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (302, 802, '密级', '802002', '内部', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (303, 802, '密级', '802003', '秘密', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (304, 802, '密级', '802004', '机密', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (305, 802, '密级', '802005', '绝密', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (306, 803, '值域表', '803001', '数据应用字典', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (307, 803, '值域表', '803002', '默认值：当前登录信息', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (308, 803, '值域表', '803003', '默认值：当前日期', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (309, 803, '值域表', '803004', '默认值：明日日期', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (314, 803, '值域表', '803008', '默认值：自定义', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (315, 803, '值域表', '803009', '业务数据', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (316, 803, '值域表', '803010', '业务数据字段', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values( 317, 803, '值域表', '803011', '加密文件', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values( 318, 803, '值域表', '803012', '加密文件名', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (400, 900, '系统参数：是否打印数据查询结果', '900001', '0', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (403, 902, '业务参数：图片服务器web地址', '902001', 'http://118.178.126.204:8099/picserver/pcace/', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (404, 903, '业务参数：图片服务器硬盘地址', '903001', 'E:\Tomcat_P\webapps\picserver\pcace\', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (405, 904, '业务参数：APP_Server地址', '904001', 'http://118.178.126.204:8099/aceserver/', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (406, 905, '业务参数：苹果开关', '905001', '1', null, '1', '1', to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:07:24', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 66 records loaded
prompt Loading S_MODULE...
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('10.0', '首页', '1', '1', null, '0', 'system/S_Main', null, null, '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('10.01', '通用数据编辑', '1', '0', '10.0', '0', 'biz/B_DataPublic', null, '11111111', '2', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('10.02', '子表数据管理', '1', '0', '10.0', '0', 'biz/B_DataPublicChild', null, '11111111', '2', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('10.03', '通用数据查看', '1', '0', '10.0', '0', 'biz/B_DataPublicQuery', null, '10000000', '2', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('10.04', '子表数据查看', '1', '0', '10.0', '0', 'biz/B_DataPublicQueryChild', null, '10000000', '2', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('10.05', '历史数据查看', '1', '0', '10.0', '0', 'biz/B_DataPublicHis', null, '10000000', '2', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('10.06', '通用数据模块', '1', '0', '10.0', '0', 'biz/B_DataModule', null, '11111111', '2', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('10.07', '数据导入', '1', '0', '10.0', '0', 'biz/B_DataAdds', null, '11000000', '2', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.0', '业务数据管理', '1', '1', null, '1', null, null, null, '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.0', '基本数据管理', '1', '1', null, '1', null, null, null, '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.01', 'APP登录用户', '1', '1', '40.0', '0', 'biz/B_DataPub_102', null, '11111111', '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.02', '公司/企业', '1', '1', '40.0', '0', 'biz/B_DataPub_104', null, '11111111', '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.99', '测试模块1', '1', '1', '40.0', '0', 'biz/B_DataModule_40.99', null, '', '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.0', '公司组织管理', '1', '1', null, '1', null, null, null, '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.01', '业务公司管理', '1', '1', '50.0', '0', 'biz/B_DataPub_1', null, '11111111', '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.02', '从业人员管理', '1', '1', '50.0', '0', 'biz/B_DataPub_2', null, '11111111', '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.02.01', '登录帐户启用', '1', '0', '50.02', '0', 'biz/B_DataPub_2_BUserStart', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.02.01.1', '登录帐户启用', '1', '0', '50.02.01', '0', 'system/S_UserStart', null, null, '2', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.02.02', '登录帐户停用', '1', '0', '50.02', '0', 'biz/B_DataPub_2_BUserStop', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.02.02.1', '登录帐户停用', '1', '0', '50.02.02', '0', 'system/S_UserStop', null, null, '2', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.02.03', '人员结构树', '1', '0', '50.02', '0', 'biz/B_DataPub_2_AEmpTree', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.03', '部门管理', '1', '1', '50.0', '0', 'biz/B_DataPub_3', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.03.01', '组织结构图', '1', '0', '50.03', '0', 'biz/B_DataPub_3_AJobStruct', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.03.02', '组织树', '1', '0', '50.03', '0', 'biz/B_DataPub_3_AJobTree', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.04', '岗位管理', '1', '1', '50.0', '0', 'biz/B_DataPub_4', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.04.01', '岗位结构图', '1', '0', '50.04', '0', 'biz/B_DataPub_4_AJobPosition', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.05', '计算机管理', '1', '1', '50.0', '0', 'biz/B_DataPub_7', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('50.06', '其他物资管理', '1', '1', '50.0', '0', 'biz/B_DataPub_8', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('89.0', '个人中心', '1', '1', null, '1', null, null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('89.01', '修改密码', '1', '1', '89.0', '0', 'S_Mpsd', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('89.02', '配置打印机', '1', '1', '89.0', '0', 'biz/I_EmpInfo', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.0', '系统管理', '1', '1', null, '1', null, null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.11', '公告', '1', '1', '90.0', '0', 'biz/B_DataPub_5', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.12', 'APP版本管理', '1', '1', '90.0', '0', 'biz/B_DataPub_10', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.13', 'APP模块', '1', '1', '90.0', '0', 'biz/B_DataPub_23', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.13.01', '子表-模块明细', '1', '0', '90.90', '0', 'biz/B_DataPubChild_23_24', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.13.02', '复制模块及明细', '1', '0', '90.13', '0', 'biz/B_DataPub_23_BAppModule_CopyDetail', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.13.03', '同步APP服务器', '1', '0', '90.13', '0', 'biz/B_DataPub_23_AAppModule_SynAppServer', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.14', 'APP角色', '1', '1', '90.0', '0', 'biz/B_DataPub_25', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.14.01', '子表-权限', '1', '0', '90.91', '0', 'biz/B_DataPubChild_25_26', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.90', 'DOT模块', '1', '1', '90.0', '0', 'biz/B_DataPub_19', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.90.01', '子表-模块明细', '1', '0', '90.90', '0', 'biz/B_DataPubChild_19_22', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.91', 'DOT岗位', '1', '1', '90.0', '0', 'biz/B_DataPub_20', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.91.01', '子表-权限', '1', '0', '90.91', '0', 'biz/B_DataPubChild_20_21', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.92', 'DOT用户', '1', '1', '90.0', '0', 'biz/B_DataPub_18', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.93', '推送历史', '1', '1', '90.0', '0', 'biz/B_DataPub_11', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.94', '短信历史', '1', '1', '90.0', '0', 'biz/B_DataPub_11', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.95', '用户登录信息', '1', '1', '90.0', '0', 'biz/B_DataPub_8', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.96', '用户定位信息', '1', '1', '90.0', '0', 'biz/B_DataPub_9', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.97', '定位日志', '1', '1', '90.0', '0', 'biz/B_DataPub_13', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.98', '聊天日志', '1', '1', '90.0', '0', 'biz/B_DataPub_14', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.99', '业务日志', '1', '1', '90.0', '0', 'system/M_LogQuery', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('91.01', '帐户管理', '1', '1', '90.0', '0', 'system/S_User', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('91.01.4', '登录帐户启用', '1', '0', '91.01', '0', 'system/S_UserStart', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('91.01.5', '登录帐户停用', '1', '0', '91.01', '0', 'system/S_UserStop', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('91.01.6', '登录帐户启用申请', '1', '0', '91.01', '0', 'system/S_UserStartApply', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('91.02', '角色管理', '1', '1', '90.0', '0', 'system/S_Role', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('91.05', '性能监控', '1', '1', '90.0', '0', 'system/S_PerformanceQuery', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.0', '超级管理', '1', '1', null, '1', null, null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.00', '测试', '1', '1', '99.0', '0', 'system/TestSql', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.01', '日志管理', '1', '1', '99.0', '0', 'system/S_Log', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.02', '系统参数管理', '0', '0', '99.0', '0', 'system/S_Param', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.03', '模块管理', '1', '1', '99.0', '0', 'system/S_Module', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.04', '平台接口管理', '0', '0', '99.0', '0', 'system/S_PlatForm', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.05', '类别参数配置', '1', '1', '99.0', '0', 'biz/I_SystemParam', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.06', '数据应用字典管理', '1', '1', '99.0', '0', 'biz/I_DataParamType', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.07', '数据表类别管理', '1', '1', '99.0', '0', 'biz/I_DataTableType', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.10', '数据表配置', '1', '1', '99.0', '0', 'biz/I_DataTable', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.10.1', '数据表新增', '1', '0', '99.10', '0', 'biz/I_DataTableAdd', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.10.2', '数据表编辑', '1', '0', '99.10', '0', 'biz/I_DataTableEdit', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.10.3', '数据表删除', '1', '0', '99.10', '0', 'biz/I_DataTableDel', null, null, '0', to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.10.4', '元数据编辑', '1', '0', '99.10', '0', 'biz/I_DataTableColumnExtInfo', null, null, '0', to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.10.5', '列删除', '1', '0', '99.10', '0', 'biz/I_DataTableColumnDel', null, null, '0', to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.11', '流程配置', '1', '1', '99.0', '0', 'biz/I_Process', null, null, '0', to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.11.1', '流程步骤管理', '1', '0', '99.11', '0', 'biz/I_ProcessDesc', null, null, '2', to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.19', '编辑器', '1', '1', '99.0', '0', 'xml/B_Editor', null, null, '0', to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.20', '工具', '1', '1', '99.0', '0', 'biz/B_Manager', null, null, '0', to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('99.21', '服务器配置', '1', '1', '99.0', '0', 'biz/B_DataPub_6', null, '11111111', '0', to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:10', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 69 records loaded
prompt Loading S_PARAM...
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (0, '40D83B550F6050A35532ED0CD8E2B8F7', 'EC952EE3D9F98AD4CC2DFE6A0C0890F2', 'C7450C63D3E1D83AA84B876E315078D4', to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (1, '2906DA2A72F47C503B8E5ED83C115E7717A2F0B966B785A5', '01CA94661D24672A', '448D6EFB210543B90BDD9B58FE8113E646299D660395B43A', to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (2, '414C31FA44E9993B3A2B47F486906E46', 'E346A32E2B278BE5', 'F1CF9454A5874FEAE141FEFE728D0540', to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (3, '84D21E697CA66F91A0C3FC80854D6FAF4AA5EA5F528FEAFA', '01CA94661D24672A', 'D865BB0CD83E15AF0922FB34B3E6B58795D61072AB8B14BE', to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (4, 'EABDE525E8F4D52F27CD8D79A7023AE661E32402A9C8F449', '01CA94661D24672A', '789B308426F207E270951AC06CC7E37695D61072AB8B14BE', to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (5, '0BA09DD70678BA399C546C858871A8977A2C3AF8AB5A363C', '95EABF02C25836C4', '1BCBAE3FAA08AB959575659885569F46', to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (6, '73C57C5F25D51BAC', '9A3EDB57F2513D82A84B876E315078D4', 'F0443F16AC20096E46C0C6DE6E40641F', to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:16:33', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading S_PLATFORM...
prompt Table is empty
prompt Loading S_PUBLISHLOG...
prompt Table is empty
prompt Loading S_QUICKMENU...
prompt Table is empty
prompt Loading S_ROLE...
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (402, 402, '运维人员', '0', '1', 200001, 802001, null, to_date('01-11-2016 11:11:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (2, 1, '系统管理员', '9', '1', -1, 802005, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (100, 100, '数据管理员', '0', '1', -1, 802005, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (199, 199, '测试用户', '0', '1', -1, 802001, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (400, 400, '普通用户', '0', '1', -1, 802001, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:18:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (401, 401, '运维管理员', '0', '1', 200001, 802001, null, to_date('01-11-2016 09:18:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:12:00', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 6 records loaded
prompt Loading S_ROLE_MODULE...
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
values (402, '30.01', '11110111');
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
values (2, '30.01', null);
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
values (100, '30.01', null);
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
commit;
prompt 100 records committed...
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
values (401, '30.01', '11110111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '40.01', '11110111');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '89.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '89.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '89.02', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '90.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '90.12', '11110100');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '90.93', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '90.94', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '90.95', '10000000');
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '91.05', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '99.0', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '99.01', null);
insert into S_ROLE_MODULE (roleid, moduleid, power)
values (401, '99.19', null);
commit;
prompt 154 records loaded
prompt Loading S_USER...
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (2, '9001', '96e79218965eb72c92a549dd5a330112', '96e79218965eb72c92a549dd5a330112', '9001', 401, '1', 1, '1', to_date('01-11-2016 11:17:27', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 1, -1, to_date('01-11-2016 09:14:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:17:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (3, '3001', '96e79218965eb72c92a549dd5a330112', '96e79218965eb72c92a549dd5a330112', '3001', 402, '1', 0, '1', to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 2, -1, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:17:21', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading T_CHAT...
prompt Table is empty
prompt Loading T_DATALOG...
prompt Table is empty
prompt Loading T_LOCATION...
prompt Table is empty
prompt Loading T_LOG...
prompt Table is empty
prompt Loading T_MARK...
prompt Table is empty
prompt Loading T_MESSAGE...
prompt Table is empty
prompt Loading T_MLOG...
prompt Table is empty
prompt Loading T_PUSHSMSHIS...
prompt Table is empty
prompt Loading T_PUSHSMS_ING...
prompt Table is empty
prompt Loading T_SLOG...
prompt Table is empty
prompt Loading T_SMSHIS...
prompt Table is empty
prompt Loading T_SMS_ING...
prompt Table is empty
prompt Loading IS_APPMODULE...
prompt Table is empty
prompt Loading IS_APPMODULEDETAIL...
prompt Table is empty
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
commit;
prompt 2 records loaded
prompt Loading IS_JOBPOSITION...
insert into IS_JOBPOSITION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, '运维主管 yunweizhuguan ywzg ', to_date('01-11-2016 11:06:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:06:28', 'dd-mm-yyyy hh24:mi:ss'), '运维主管', 1, 130001, null, null, 1, null, 1);
commit;
prompt 1 records loaded
prompt Loading IS_ORGAN...
insert into IS_ORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (1, 802001, 801000, null, to_date('01-11-2016 09:55:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 10:00:47', 'dd-mm-yyyy hh24:mi:ss'), 'pcace在线', null, null, null, null, 'pcace', 130001);
commit;
prompt 1 records loaded
prompt Loading IS_RS_COMPUTER...
prompt Table is empty
prompt Loading IS_RS_OTHERS...
prompt Table is empty
prompt Loading IS_SERVER...
insert into IS_SERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (1, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), '01', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
insert into IS_SERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (2, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:29', 'dd-mm-yyyy hh24:mi:ss'), '02', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
insert into IS_SERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (3, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:35', 'dd-mm-yyyy hh24:mi:ss'), '03', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
commit;
prompt 3 records loaded
prompt Loading ZA_BANK...
prompt Table is empty
prompt Loading ZB_MMORGAN...
prompt Table is empty
prompt Loading ZB_USERLOGIN...
prompt Table is empty
prompt Loading ZB_USER_LOCATION...
prompt Table is empty
prompt Loading ZT_CHAT...
prompt Table is empty
prompt Loading ZT_LOCATION...
prompt Table is empty
prompt Loading ZT_PUSHSMSHIS...
prompt Table is empty
prompt Loading ZT_PUSHSMS_ING...
prompt Table is empty
prompt Loading ZT_SMSHIS...
prompt Table is empty
prompt Loading ZT_SMS_ING...
prompt Table is empty
prompt Loading ZIS_APPMODULE...
prompt Table is empty
prompt Loading ZIS_APPMODULEDETAIL...
prompt Table is empty
prompt Loading ZIS_APPROLE...
prompt Table is empty
prompt Loading ZIS_APPROLEMODULE...
prompt Table is empty
prompt Loading ZIS_APPVERSION...
prompt Table is empty
prompt Loading ZIS_BULLETIN...
prompt Table is empty
prompt Loading ZIS_DEPARTMENT...
prompt Table is empty
prompt Loading ZIS_DOTMODULE...
prompt Table is empty
prompt Loading ZIS_DOTMODULEDETAIL...
prompt Table is empty
prompt Loading ZIS_DOTROLE...
prompt Table is empty
prompt Loading ZIS_DOTROLEMODULE...
prompt Table is empty
prompt Loading ZIS_DOTUSER...
prompt Table is empty
prompt Loading ZIS_EMP...
prompt Table is empty
prompt Loading ZIS_JOBPOSITION...
prompt Table is empty
prompt Loading ZIS_ORGAN...
prompt Table is empty
prompt Loading ZIS_RS_COMPUTER...
prompt Table is empty
prompt Loading ZIS_RS_OTHERS...
prompt Table is empty
prompt Loading ZIS_SERVER...
prompt Table is empty
prompt Enabling triggers for A_BANK...
alter table A_BANK enable all triggers;
prompt Enabling triggers for B_MMORGAN...
alter table B_MMORGAN enable all triggers;
prompt Enabling triggers for B_USERLOGIN...
alter table B_USERLOGIN enable all triggers;
prompt Enabling triggers for B_USER_LOCATION...
alter table B_USER_LOCATION enable all triggers;
prompt Enabling triggers for IB_DATAATTACHFILE...
alter table IB_DATAATTACHFILE enable all triggers;
prompt Enabling triggers for IB_DATAEXTINFO...
alter table IB_DATAEXTINFO enable all triggers;
prompt Enabling triggers for IB_DATARESOURCE001...
alter table IB_DATARESOURCE001 enable all triggers;
prompt Enabling triggers for IB_DATARESOURCE002...
alter table IB_DATARESOURCE002 enable all triggers;
prompt Enabling triggers for IB_DATARESOURCE003...
alter table IB_DATARESOURCE003 enable all triggers;
prompt Enabling triggers for IB_DATARESOURCE004...
alter table IB_DATARESOURCE004 enable all triggers;
prompt Enabling triggers for IB_FORMATION...
alter table IB_FORMATION enable all triggers;
prompt Enabling triggers for IB_PROCESS...
alter table IB_PROCESS enable all triggers;
prompt Enabling triggers for IB_PROCESSDETAIL...
alter table IB_PROCESSDETAIL enable all triggers;
prompt Enabling triggers for IB_PROCESSMEMO...
alter table IB_PROCESSMEMO enable all triggers;
prompt Enabling triggers for I_AREA...
alter table I_AREA enable all triggers;
prompt Enabling triggers for I_BULLETIN...
alter table I_BULLETIN enable all triggers;
prompt Enabling triggers for I_DATAPARAMTYPE...
alter table I_DATAPARAMTYPE enable all triggers;
prompt Enabling triggers for I_DATATABLE...
alter table I_DATATABLE enable all triggers;
prompt Enabling triggers for I_DATATABLECOLUMN...
alter table I_DATATABLECOLUMN enable all triggers;
prompt Enabling triggers for I_DATATABLECOLUMNEXTINFO...
alter table I_DATATABLECOLUMNEXTINFO enable all triggers;
prompt Enabling triggers for I_DATAMODULE...
alter table I_DATAMODULE enable all triggers;
prompt Enabling triggers for I_DATAMODULECOLUMN...
alter table I_DATAMODULECOLUMN enable all triggers;
prompt Enabling triggers for I_DATATABLETYPE...
alter table I_DATATABLETYPE enable all triggers;
prompt Enabling triggers for I_PROCESS...
alter table I_PROCESS enable all triggers;
prompt Enabling triggers for I_PROCESSDESC...
alter table I_PROCESSDESC enable all triggers;
prompt Enabling triggers for I_SYSTEMPARAM...
alter table I_SYSTEMPARAM enable all triggers;
prompt Enabling triggers for S_MODULE...
alter table S_MODULE enable all triggers;
prompt Enabling triggers for S_PARAM...
alter table S_PARAM enable all triggers;
prompt Enabling triggers for S_PLATFORM...
alter table S_PLATFORM enable all triggers;
prompt Enabling triggers for S_PUBLISHLOG...
alter table S_PUBLISHLOG enable all triggers;
prompt Enabling triggers for S_QUICKMENU...
alter table S_QUICKMENU enable all triggers;
prompt Enabling triggers for S_ROLE...
alter table S_ROLE enable all triggers;
prompt Enabling triggers for S_ROLE_MODULE...
alter table S_ROLE_MODULE enable all triggers;
prompt Enabling triggers for S_USER...
alter table S_USER enable all triggers;
prompt Enabling triggers for T_CHAT...
alter table T_CHAT enable all triggers;
prompt Enabling triggers for T_DATALOG...
alter table T_DATALOG enable all triggers;
prompt Enabling triggers for T_LOCATION...
alter table T_LOCATION enable all triggers;
prompt Enabling triggers for T_LOG...
alter table T_LOG enable all triggers;
prompt Enabling triggers for T_MARK...
alter table T_MARK enable all triggers;
prompt Enabling triggers for T_MESSAGE...
alter table T_MESSAGE enable all triggers;
prompt Enabling triggers for T_MLOG...
alter table T_MLOG enable all triggers;
prompt Enabling triggers for T_PUSHSMSHIS...
alter table T_PUSHSMSHIS enable all triggers;
prompt Enabling triggers for T_PUSHSMS_ING...
alter table T_PUSHSMS_ING enable all triggers;
prompt Enabling triggers for T_SLOG...
alter table T_SLOG enable all triggers;
prompt Enabling triggers for T_SMSHIS...
alter table T_SMSHIS enable all triggers;
prompt Enabling triggers for T_SMS_ING...
alter table T_SMS_ING enable all triggers;
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
prompt Enabling triggers for IS_ORGAN...
alter table IS_ORGAN enable all triggers;
prompt Enabling triggers for IS_RS_COMPUTER...
alter table IS_RS_COMPUTER enable all triggers;
prompt Enabling triggers for IS_RS_OTHERS...
alter table IS_RS_OTHERS enable all triggers;
prompt Enabling triggers for IS_SERVER...
alter table IS_SERVER enable all triggers;
prompt Enabling triggers for ZA_BANK...
alter table ZA_BANK enable all triggers;
prompt Enabling triggers for ZB_MMORGAN...
alter table ZB_MMORGAN enable all triggers;
prompt Enabling triggers for ZB_USERLOGIN...
alter table ZB_USERLOGIN enable all triggers;
prompt Enabling triggers for ZB_USER_LOCATION...
alter table ZB_USER_LOCATION enable all triggers;
prompt Enabling triggers for ZT_CHAT...
alter table ZT_CHAT enable all triggers;
prompt Enabling triggers for ZT_LOCATION...
alter table ZT_LOCATION enable all triggers;
prompt Enabling triggers for ZT_PUSHSMSHIS...
alter table ZT_PUSHSMSHIS enable all triggers;
prompt Enabling triggers for ZT_PUSHSMS_ING...
alter table ZT_PUSHSMS_ING enable all triggers;
prompt Enabling triggers for ZT_SMSHIS...
alter table ZT_SMSHIS enable all triggers;
prompt Enabling triggers for ZT_SMS_ING...
alter table ZT_SMS_ING enable all triggers;
prompt Enabling triggers for ZIS_APPMODULE...
alter table ZIS_APPMODULE enable all triggers;
prompt Enabling triggers for ZIS_APPMODULEDETAIL...
alter table ZIS_APPMODULEDETAIL enable all triggers;
prompt Enabling triggers for ZIS_APPROLE...
alter table ZIS_APPROLE enable all triggers;
prompt Enabling triggers for ZIS_APPROLEMODULE...
alter table ZIS_APPROLEMODULE enable all triggers;
prompt Enabling triggers for ZIS_APPVERSION...
alter table ZIS_APPVERSION enable all triggers;
prompt Enabling triggers for ZIS_BULLETIN...
alter table ZIS_BULLETIN enable all triggers;
prompt Enabling triggers for ZIS_DEPARTMENT...
alter table ZIS_DEPARTMENT enable all triggers;
prompt Enabling triggers for ZIS_DOTMODULE...
alter table ZIS_DOTMODULE enable all triggers;
prompt Enabling triggers for ZIS_DOTMODULEDETAIL...
alter table ZIS_DOTMODULEDETAIL enable all triggers;
prompt Enabling triggers for ZIS_DOTROLE...
alter table ZIS_DOTROLE enable all triggers;
prompt Enabling triggers for ZIS_DOTROLEMODULE...
alter table ZIS_DOTROLEMODULE enable all triggers;
prompt Enabling triggers for ZIS_DOTUSER...
alter table ZIS_DOTUSER enable all triggers;
prompt Enabling triggers for ZIS_EMP...
alter table ZIS_EMP enable all triggers;
prompt Enabling triggers for ZIS_JOBPOSITION...
alter table ZIS_JOBPOSITION enable all triggers;
prompt Enabling triggers for ZIS_ORGAN...
alter table ZIS_ORGAN enable all triggers;
prompt Enabling triggers for ZIS_RS_COMPUTER...
alter table ZIS_RS_COMPUTER enable all triggers;
prompt Enabling triggers for ZIS_RS_OTHERS...
alter table ZIS_RS_OTHERS enable all triggers;
prompt Enabling triggers for ZIS_SERVER...
alter table ZIS_SERVER enable all triggers;
set feedback on
set define on
prompt Done.

-----------------------------------------------------
-- Export file for user pcace                   --
-- Created by Administrator on 2016/9/27, 10:58:55 --
-----------------------------------------------------

set define off
spool pcace-20160927-2.log

prompt
prompt Creating sequence SEQB_USERLOGIN
prompt ================================
prompt
create sequence pcace.SEQB_USERLOGIN
minvalue 1
maxvalue 99999999999999
start with 1
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_USER_LOCATION
prompt ====================================
prompt
create sequence pcace.SEQB_USER_LOCATION
minvalue 1
maxvalue 99999999999999
start with 1
increment by 1
cache 10;

prompt
prompt Creating sequence SEQT_CHAT
prompt ===========================
prompt
create sequence pcace.SEQT_CHAT
minvalue 1
maxvalue 99999999999999
start with 1
increment by 1
cache 10;

prompt
prompt Creating sequence SEQT_LOCATION
prompt ===============================
prompt
create sequence pcace.SEQT_LOCATION
minvalue 1
maxvalue 99999999999999
start with 1
increment by 1
cache 10;

prompt
prompt Creating sequence SEQT_PUSHSMS_ING
prompt ==================================
prompt
create sequence pcace.SEQT_PUSHSMS_ING
minvalue 1
maxvalue 99999999999999
start with 1
increment by 1
cache 10;

prompt
prompt Creating sequence SEQT_SMS_ING
prompt ==============================
prompt
create sequence pcace.SEQT_SMS_ING
minvalue 1
maxvalue 99999999999999
start with 1
increment by 1
cache 10;

prompt
prompt Creating sequence SEQ_IB_DATAATTACHFILE_ID
prompt ==========================================
prompt
create sequence pcace.SEQ_IB_DATAATTACHFILE_ID
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_IB_FORMATION_ID
prompt =====================================
prompt
create sequence pcace.SEQ_IB_FORMATION_ID
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_I_DATATABLECOLUMN_ID
prompt ==========================================
prompt
create sequence pcace.SEQ_I_DATATABLECOLUMN_ID
minvalue 1
maxvalue 999999999
start with 258
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_I_DTCOLUMNEXTINFO_ID
prompt ==========================================
prompt
create sequence pcace.SEQ_I_DTCOLUMNEXTINFO_ID
minvalue 1
maxvalue 999999999
start with 30
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_I_DATAMODULECOLUMN_ID
prompt ==========================================
prompt
create sequence pcace.SEQ_I_DATAMODULECOLUMN_ID
minvalue 1
maxvalue 999999999
start with 1
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_T_LOG_ID
prompt ==============================
prompt
create sequence pcace.SEQ_T_LOG_ID
minvalue 1
maxvalue 999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_T_MESSAGE_ID
prompt ==================================
prompt
create sequence pcace.SEQ_T_MESSAGE_ID
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_Z_DATAHIS_IID
prompt ===================================
prompt
create sequence pcace.SEQ_Z_DATAHIS_IID
minvalue 1
maxvalue 999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating function F_GETCHILDTABLEIDS
prompt ====================================
prompt
create or replace function pcace.F_GetChildTableIDs(
  a_parentTableID number
) return varchar2 is
  rtn         varchar2(1000);
  v_tableID   I_DataTable.tableID%type;
begin
  rtn := '';
  DECLARE CURSOR v_rs IS select tableID from I_DataTable where parentTableID=a_parentTableID;
  begin
    open v_rs;
    LOOP
      FETCH v_rs INTO v_tableID;
      exit when v_rs%notfound;
      rtn := rtn || v_tableID || ',';
    END LOOP;
    close v_rs;
  end;

  if length(rtn)>0 then rtn := substr(rtn, 1, length(rtn)-1); end if;
  return rtn;
end;
/

prompt
prompt Creating view VI_DATATABLE
prompt ==========================
prompt
create or replace force view pcace.vi_datatable as
select a."TABLEID",a."TABLENAME",a."TABLEMEMO",a."SERVERPATH",a."TABLETYPEID",a."COLNUM",a."DATANUM",a."SCTLEVEL",a."SEQUENCEFLAG",a."PKFLAG",a."SIDFLAG",a."SCOPEFLAG",a."ATTACHFILEFLAG",a."DATASTATUSFLAG",a."SCTLEVELFLAG",a."OTHERBUTTONS",a."PARENTTABLEID",a."CHILDTABLENUM",a."STATE",a."ISTDATE",a."UPTDATE", F_GetChildTableIDs(a.tableID) childTableIDs from I_DataTable a;

prompt
prompt Creating view VI_DATATABLECOLUMN
prompt ================================
prompt
create or replace force view pcace.vi_datatablecolumn as
Select a."COLID",a."TABLEID",a."COLNAME",a."COLNAME" colName_as,a."DATATYPESTR",a."DATATYPE",a."DATALEN",a."DATADOTLEN",a."COLMEMO",a."NULLFLAG",a."DEF",a."DATACOL1NUM",a."DATACOL2NUM",a."DATACOL3NUM",a."SCTLEVEL",a."SEQ",a."LISTSHOWFLAG",a."SHOWWIDTH",a."FORMSHOWFLAG",a."STATE",a."ISTDATE",a."UPTDATE",decode(b.id,null,-1,b.id) extID,extCode,extNameZh,extNameZhs,extNameEn,extNameEns,extNameFr1,extNameFr1s,extNameFr2,extNameFr2s,extNameFr3,extNameFr3s,extDefine,
-1 groupFunc,extShow,decode(extLength,null,0,extLength) extLength,decode(extPrecision,null,0,extPrecision) extPrecision,
extUnit,extValueScope,decode(b.extValueScopeTypeID,null,-1,b.extValueScopeTypeID) extValueScopeTypeID,extValueScopeTypeParam,
decode(b.extKeyIDFlag,null,-1,b.extKeyIDFlag) extKeyIDFlag,decode(b.extKeyNameFlag,null,-1,b.extKeyNameFlag) extKeyNameFlag,
decode(b.extKeywordFlag,null,-1,b.extKeywordFlag) extKeywordFlag,decode(b.extQueryByFlag,null,-1,b.extQueryByFlag) extQueryByFlag,
extRelationSubCols,extSynName,extRelateEnvironment,extVersion,extMemo,decode(b.state,null,-1,b.state) extState,b.istDate extIstDate,b.uptDate extUptDate
from I_DataTableColumn a, I_DataTableColumnExtInfo b
where a.colid=b.colid(+);

prompt
prompt Creating view VI_DataModuleColumn
prompt ================================
prompt
create or replace VIEW pcace.VI_DataModuleColumn AS
Select dataType,dataTypeStr,dataLen,dataDotLen,nullFlag,def,dataCol1Num,dataCol2Num,dataCol3Num,
c.*,decode(b.id,null,-1,b.id) extID,extCode,extNameZh,extNameZhs,extNameEn,extNameEns,extDefine,
extShow,decode(extLength,null,0,extLength) extLength,decode(extPrecision,null,0,extPrecision) extPrecision,
extUnit,extValueScope,decode(b.extValueScopeTypeID,null,-1,b.extValueScopeTypeID) extValueScopeTypeID,extValueScopeTypeParam,
decode(b.extKeyIDFlag,null,-1,b.extKeyIDFlag) extKeyIDFlag,decode(b.extKeyNameFlag,null,-1,b.extKeyNameFlag) extKeyNameFlag,
extRelationSubCols,extSynName,extRelateEnvironment,extVersion,extMemo,decode(b.state,null,-1,b.state) extState,b.istDate extIstDate,b.uptDate extUptDate
from I_DataTableColumn a, I_DataModuleColumn c, I_DataTableColumnExtInfo b
where a.colid=c.colid and a.colid=b.colid(+);

prompt
prompt Creating view VS_USER
prompt =====================
prompt
create or replace force view pcace.vs_user as
Select a."USERID",a."LOGINNAME",a."PASSWORD",a."VALIDATEPASSWORD",a."USERNAME",a."ROLEID",a."STATE",a."LOGINNUM",a."LOGINFLAG",a."LASTLOGINDATE",a."CSSSTYLE",a."AREAID",a."EMPID",a."OPERATOR",a."ISTDATE",a."UPTDATE",b.roleName,decode(b.power,null,-1,power) power,decode(b.sctLevel,null,-1,sctLevel) sctLevel,c.c5 cardNO,c.c1 empName,c.c2 organID,c.c3 departmentID,c.c4 jobID,d.c1 organName,200001 organType,e.c1 departmentName,f.c1 jobName
from pcace.S_User a,pcace.S_Role b,pcace.IS_Emp c,pcace.IS_Organ d,pcace.IS_Department e,pcace.IS_JobPosition f
where a.roleID = b.roleID(+) and a.empID=c.dataid(+) and c.c2=d.dataid(+) and c.c3=e.dataid(+) and c.c4=f.dataid(+);

prompt
prompt Creating package PKG_pcace_WEB
prompt =================================
prompt
create or replace package pcace.pkg_pcace_web is

--------------------------------------------
-- Export file for user pcace          --
-- Created by wxl on 2016-01-22           --
-- updated by wxl on 2016-01-22           --
--------------------------------------------

  type rc_class is ref cursor;

  function SF_GetMaxID(
    a_tableName     in varchar2,
    a_IDColumName   in varchar2
  ) return number;

  function SF_toDate(
    a_date          in varchar2
  ) return date;

  procedure SP_Query(
    a_sql           in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- S_User : 用户管理
  procedure SP_S_UserManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  procedure SP_S_UserLogin(
    a_userID        in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  procedure SP_S_UserMpsd(
    a_userID        in number,
    a_password      in varchar2,
    a_vpassword     in varchar2,
    Message         out VARCHAR2,
    ResultCursor    out rc_class);

  -- Role :角色管理
  procedure SP_S_RoleManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  procedure SP_S_RoleSetModules(
    a_roleID        in number,
    a_moduleIDs     in varchar2,
    a_powers        in varchar2,
    a_seperator     in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- S_Module : 模块管理
  procedure SP_S_ModuleManager(
    a_type          in varchar2,
    a_s_moduleID    in varchar2,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- S_Log : 日志管理
  procedure SP_S_LogAdd(
    a_logType       in number,
    a_title         in varchar2,
    a_context       in varchar2,
    a_table         in varchar2,
    a_tableID       in varchar2,
    a_dataid        in varchar2,
    a_userID        in varchar2,
    a_userName      in varchar2,
    a_ipAddress     in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class);

  procedure SP_S_LogDel(
    c_startTime     in varchar2,
    c_endTime       in varchar2,
    a_operator      in varchar2,
    a_context       in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- S_Param :系统参数管理
  procedure SP_S_ParamManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramName     in varchar2,
    a_paramValue    in varchar2,
    a_remark        in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- S_QuickMenu : 快捷菜单管理
  procedure SP_S_QuickMenuManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_Area : 地区管理
  procedure SP_I_AreaManager(
    a_type          in varchar2,
    a_areaID        in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_SystemParam :类别参数管理
  procedure SP_I_SystemParamManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- T_Message :短消息管理
  procedure SP_T_MessageManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_DataParamType : 数据应用字典管理
  procedure SP_I_DataParamTypeManager(
    a_type          in varchar2,
    a_paramClassID  in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_DataTable : 数据表管理
  procedure SP_I_DataTableManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_paramStr2     in varchar2,
    a_ddl           in varchar2,
    a_spliter       in varchar2,
    a_spliter_sub   in varchar2,
    a_preCount      in number,
    a_preCount2     in number,
    a_preCount3     in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_DataModule : 数据模块管理
  procedure SP_I_DataModuleManager(
    a_type          in varchar2,
    a_id            in varchar2,
    a_paramStr      in varchar2,
    a_paramStr2     in varchar2,
    a_spliter       in varchar2,
    a_spliter_sub   in varchar2,
    a_preCount      in number,
    a_preCount2     in number,
    a_preCount3     in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_DataTableType : 数据类别管理
  procedure SP_I_DataTableTypeManager(
    a_type          in varchar2,
    a_tableTypeID   in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_DataTableColumnExtInfo : 数据元字典管理
  procedure SP_I_DTColumnExtInfoManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_Process : 流程管理
  procedure SP_I_ProcessManager(
    a_type          in varchar2,
    a_psid          in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- I_ProcessDesc : 流程说明管理
  procedure SP_I_ProcessDescManager(
    a_type          in varchar2,
    a_ccid          in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- IB_Process : 工作流程管理
  procedure SP_IB_ProcessManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- B_Data : 数据管理
  procedure SP_B_DataManager(
    a_type          in varchar2,
    a_dataid        in number,
    a_tableID       in number,
    a_keyword       in varchar2,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    a_operator      in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- IB_Formation: 体系管理
  procedure SP_IB_FormationManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);

  -- IB_DataAttachFile : 多媒体资料管理
  procedure SP_IB_DataAttachFileManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class);
  
  -- Log : 日志
  procedure P_Log(
    a_context        in varchar2,
    a_operator       in varchar2
  );
end pkg_pcace_web;
/

prompt
prompt Creating function F_CHECKAREA
prompt =============================
prompt
create or replace function pcace.F_CheckArea(
  myID    in integer,
  checkID in integer
) return int is
  counter int;
  v_id  number;
begin
  if myID = checkID then return 1; end if;
  v_id := myID;
  while v_id > 0 loop
    select count(*) into counter from I_Area where areaID=v_id and upAreaID=checkID;
    if counter>0 then return 1; end if;
    select upAreaID into v_id from I_Area where areaID=v_id;
  end loop;
  return 0;
end;
/

prompt
prompt Creating function F_CHECKDATATABLETYPE
prompt ======================================
prompt
create or replace function pcace.F_CheckDataTableType(
  myID    in integer,
  checkID in integer
) return int is
  counter int;
  v_id  number;
begin
  if myID = checkID then return 1; end if;
  v_id := myID;
  while v_id > 0 loop
    select count(*) into counter from I_DataTableType where tableTypeID=v_id and parentID=checkID;
    if counter>0 then return 1; end if;
    select parentID into v_id from I_DataTableType where tableTypeID=v_id;
  end loop;
  return 0;
end;
/

prompt
prompt Creating function F_CHECKFORMATIONCHILDID
prompt =========================================
prompt
create or replace function pcace.F_CheckFormationChildID(
  myID    in integer,
  checkID in integer
) return int is
  counter int;
  v_id  number;
begin
  --if myID = checkID then return 1; end if;
  v_id := myID;
  while v_id > 0 loop
    select count(*) into counter from IB_Formation where formationID=myID and parentID=checkID;
    if counter>0 then return 1; end if;
    select parentID into v_id from IB_Formation where formationID=myID;
  end loop;
  return 0;
end;
/

prompt
prompt Creating function F_DATAPARAM
prompt =============================
prompt
create or replace function pcace.F_DataParam(
  a_status in integer
) return varchar2 is
  str varchar(50);
begin
  select NVL(className,'') into str from I_DataParamType where paramClassID=a_status;
  return str;
end;
/

prompt
prompt Creating function F_GETDATAATTACHFILENUM
prompt ========================================
prompt
create or replace function pcace.F_GetDataAttachFileNum(
  a_tableID  number,
  a_dataid   number
) return number is
  rtn         number;
begin
  select count(id) into rtn from IB_DATAATTACHFILE where tableID = a_tableID and dataid = a_dataid;
  return rtn;
end;
/

prompt
prompt Creating function F_GETDATARESOURCENUM
prompt ======================================
prompt
create or replace function pcace.F_GetDataResourceNum(
  a_tableID  number,
  a_dataid   number
) return number is
  rtn         number;
begin
  rtn := 0;
  select rtn+count(id) into rtn from IB_DATAResource001 where tableID = a_tableID and dataid = a_dataid;
  select rtn+count(id) into rtn from IB_DATAResource002 where tableID = a_tableID and dataid = a_dataid;
  select rtn+count(id) into rtn from IB_DATAResource003 where tableID = a_tableID and dataid = a_dataid;
  select rtn+count(id) into rtn from IB_DATAResource004 where tableID = a_tableID and dataid = a_dataid;
  return rtn;
end;
/

prompt
prompt Creating function F_GETPARENTSORT
prompt =================================
prompt
create or replace function pcace.F_GetParentSort(
  tableName        in varchar2,
  myIDName         in varchar2,
  myParentIDName   in varchar2,
  myID             in number,
  myParentID       in number
) return varchar2 is
  rtn         varchar2(1000);
  v_ID        number;
  v_parentID  number;
  tmp         number;
begin
  tmp := 100000;
  rtn := myID+tmp;
  v_ID := myID;
  v_parentID := myParentID;
  while v_parentID > 0 loop
    rtn := (v_parentID+tmp)||'_'||rtn;
    execute immediate 'select '||myIDName||','||myParentIDName||' from '||tableName||' where '||myIDName||'='||v_parentID into v_ID,v_parentID;
  end loop;

  return rtn;
end;
/

prompt
prompt Creating package body PKG_pcace_WEB
prompt ======================================
prompt
create or replace package body pcace.pkg_pcace_web is

  function SF_GetMaxID(
    a_tableName     in varchar2,
    a_IDColumName   in varchar2
  ) return number is
    tmpid         number;
  begin
    execute immediate 'select NVL(max('||a_IDColumName||'), 0)+1 from '||a_tableName into tmpid;
    return tmpid;
  end;

  function SF_toDate(
    a_date          in varchar2
  ) return date is
  begin
    return to_date(a_date, 'yyyy-mm-dd hh24:mi:ss');
  end;

  procedure SP_Query(
    a_sql           in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
  begin
    open ResultCursor for a_sql;
  exception when others then
    rollback;
    Message := '查询语句失败! sql='||a_sql||'. '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- S_User : 用户管理
  procedure SP_S_UserManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         int;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_loginName     varchar2(100);
    a_userName      varchar2(100);
    a_password      varchar2(100);
    a_validatePassword      varchar2(100);
    a_roleID        number;
    a_cssStyle      varchar2(20);
    a_state         number;
    a_areaID        number;
    a_empID         number;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_loginName := tmp;
          elsif N=2 then a_userName := tmp;
          elsif N=3 then a_password := tmp;
          elsif N=4 then a_validatePassword := tmp;
          elsif N=5 then a_roleID := to_number(tmp);
          elsif N=6 then a_cssStyle := tmp;
          elsif N=7 then a_state := to_number(tmp);
          elsif N=8 then a_areaID := to_number(tmp);
          elsif N=9 then a_empID := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then

        select count(rowid) into counter from S_User where loginName = a_loginName;
        if counter > 0 then
          Message := '登录名['||a_loginName||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '添加';
        insert into S_User(userID,loginName,userName,password,validatePassword,roleID,cssStyle,state,areaID,empID,istDate,Uptdate)
             values(SF_GetMaxID('S_User','userID'),a_loginName,a_userName,a_password,a_validatePassword,a_roleID,a_cssStyle,a_state,a_areaID,a_empID,sysdate,sysdate);

      elsif a_type = 'edit' then

        select count(rowid) into counter from S_User where userID <> a_id and loginName = a_loginName;
        if counter > 0 then
          Message := '登录名['||a_loginName||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '修改';
        update S_User set
               loginname = a_loginName,
               username = a_userName,
               password = a_password,
               validatePassword = a_validatePassword,
               roleid = a_roleID,
               cssStyle = a_cssStyle,
               state = a_state,
               areaID = a_areaID,
               empID = a_empID,
               uptDate = sysdate
        where userID = a_id;
      end if;

    elsif a_type = 'del' then

      Message := '删除';
      delete from S_User where userID = a_id;

    elsif a_type = 'start' then

      select c1,c5 into a_userName,a_loginName from IS_Emp where dataid = a_id;
      Message := '启用<'||a_userName||'>';
      a_password := '111111';
      a_validatePassword := '111111';
      a_roleID := 400;
      a_empID := a_id;
      select count(rowid) into counter from S_User where empID = a_id;
      if counter = 0 then
        select count(rowid) into counter from S_User where loginName = a_loginName;
        if counter > 0 then
          Message := '员工编号['||a_loginName||']已经存在，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;
        insert into S_User(userID,loginName,userName,password,validatePassword,roleID,cssStyle,state,areaID,empID,istDate,Uptdate)
             values(SF_GetMaxID('S_User','userID'),a_loginName,a_userName,a_password,a_validatePassword,a_roleID,'default',1,-1,a_empID,sysdate,sysdate);
      else
        update S_User set
               loginname = a_loginName,
               username = a_userName,
               password = a_password,
               validatePassword = a_validatePassword,
               roleid = a_roleID,
               cssStyle = 'default',
               state = 1,
               areaID = -1,
               uptDate = sysdate
        where empID = a_id;
      end if;
      update IS_Emp set c16='已启用' where dataid=a_id;

    elsif a_type = 'stop' then

      select c1,c5 into a_userName,a_loginName from IS_Emp where dataid = a_id;
      Message := '停用<'||a_userName||'>';
      update IS_Emp set c16='<font color=red>已停用</font>' where dataid=a_id;
      update S_User set state=2 where empID=a_id;

    end if;

    open ResultCursor for select '' sqlmsg from dual;
    Message := Message || '账户成功!';
    commit;
  exception when others then
    rollback;
    Message := Message || '账户失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  procedure SP_S_UserLogin(
    a_userID         in number,
    Message          out varchar2,
    ResultCursor     out rc_class)
  is
  begin
    Message := '用户登录成功!';
    open ResultCursor for
         select a.*, b.power from S_User a, S_Role b
          where a.roleID = b.roleID
            and a.state = 1
            and userID = a_userID;

    update S_User
       set loginNum = loginNum + 1,
           loginFlag = 1,
           lastLoginDate = sysdate
     where userID = a_userID;

    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := '用户登录失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  procedure SP_S_UserMpsd(
    a_userID        in number,
    a_password      in varchar2,
    a_vpassword     in varchar2,
    Message         out VARCHAR2,
    ResultCursor    out rc_class)
  is
    vReturn         VARCHAR2(200) := '';
  begin
    Message := '密码设置成功!';
    update S_User set password = a_password,validatePassword = a_vpassword where userID = a_userID;
    open ResultCursor for select vReturn sqlmsg from dual;
  exception when others then
    rollback;
    Message := '密码设置失败! '||substr(sqlerrm,1,100);
    vReturn := Message;
    open ResultCursor for select vReturn sqlmsg from dual;
  end;

  -- Role :角色管理
  procedure SP_S_RoleManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         integer;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_roleName      varchar2(100);
    a_roleSeq       number;
    a_organType     number;
    a_sctLevel      number;
    a_state         number;
    a_power         number;
    a_remark        varchar2(100);
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_roleName := tmp;
          elsif N=2 then a_roleSeq := to_number(tmp);
          elsif N=3 then a_organType := to_number(tmp);
          elsif N=4 then a_sctLevel := to_number(tmp);
          elsif N=5 then a_state := to_number(tmp);
          elsif N=6 then a_power := to_number(tmp);
          elsif N=7 then a_remark := tmp;
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then

        select count(rowid) into counter from S_Role where roleName = a_roleName;
        if counter > 0 then
          Message := '名称['||a_roleName||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '添加';
        insert into S_Role(roleID,roleName,roleSeq,organType,sctlevel,state,power,remark,Istdate,Uptdate)
             values(SF_GetMaxID('S_Role','roleID'),a_roleName,a_roleSeq,a_organType,a_sctlevel,a_state,a_power,a_remark,sysdate,sysdate);

      elsif a_type = 'edit' then

        select count(rowid) into counter from S_Role where roleID <> a_id and roleName = a_roleName;
        if counter > 0 then
          Message := '名称['||a_roleName||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '修改';
        update S_Role set
               roleName = a_roleName,
               roleSeq = a_roleSeq,
               organType = a_organType,
               sctlevel = a_sctlevel,
               state = a_state,
               power = a_power,
               remark = a_remark,
               uptDate = sysdate
        where roleID = a_id;
      end if;

    elsif a_type = 'copy' then
      Message := '复制添加';

      select SF_GetMaxID('S_Role','roleID') into tmp from dual;
      insert into S_Role(roleID,roleName,roleSeq,organType,power,state,sctLevel,remark)
           select tmp,roleName||'<副>',roleSeq,organType,power,state,sctLevel,remark from S_Role where roleID = a_id;
      insert into S_Role_Module(roleID,moduleID,power)
           select tmp,moduleID,power from S_Role_Module where roleID = a_id;

    elsif a_type = 'del' then

      Message := '删除';
      delete from S_Role where roleID = a_id;
      delete from S_Role_Module where roleID = a_id;

    end if;

    open ResultCursor for select '' sqlmsg from dual;
    Message := Message || '角色成功!';
    commit;
  exception when others then
    rollback;
    Message := Message || '角色失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  procedure SP_S_RoleSetModules(
    a_roleID        in number,
    a_moduleIDs     in varchar2,
    a_powers        in varchar2,
    a_seperator     in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    N               integer;
    tmpModuleID     S_role_module.moduleID%type;
    tmpModuleIDPos  integer :=0;
    tmpPower      S_role_module.power%type;
    tmpPowerPos  integer :=0;
  begin
    Message := '权限设置成功!';
    delete from S_Role_Module where roleID = a_roleID;
    if a_moduleIDs is not null then
        for N in 1..a_preCount loop
            tmpModuleID := substr(a_moduleIDs, tmpModuleIDPos+1, instr(a_moduleIDs, a_seperator, 1, N)-tmpModuleIDPos-1);
            tmpModuleIDPos := instr(a_moduleIDs, a_seperator, 1, N);
            tmpPower := substr(a_Powers, tmpPowerPos+1, instr(a_Powers, a_seperator, 1, N)-tmpPowerPos-1);
            tmpPowerPos := instr(a_Powers, a_seperator, 1, N);
            insert into S_Role_Module values(a_roleID, tmpModuleID, tmpPower);
        end loop;
    end if;

    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := '权限设置失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- S_Module : 模块管理
  procedure SP_S_ModuleManager(
    a_type          in varchar2,
    a_s_moduleID    in varchar2,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_moduleID      S_Module.moduleID%type;
    a_moduleName    S_Module.moduleName%type;
    a_state         S_Module.state%type;
    a_isMenu        S_Module.isMenu%type;
    a_parent        S_Module.parent%type;
    a_hasChild      S_Module.hasChild%type;
    a_url           S_Module.url%type;
    a_img           S_Module.img%type;
    a_power         S_Module.power%type;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_moduleID := tmp;
          elsif N=2 then a_moduleName := tmp;
          elsif N=3 then a_state := to_number(tmp);
          elsif N=4 then a_isMenu := to_number(tmp);
          elsif N=5 then a_parent := tmp;
          elsif N=6 then a_hasChild := to_number(tmp);
          elsif N=7 then a_url := tmp;
          elsif N=8 then a_img := tmp;
          elsif N=9  then a_power := tmp;
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        select count(*) into counter from S_Module where moduleID = a_moduleID;
        if counter > 0 then
          Message := '模块编号['||a_moduleID||']已经存在，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;
        Message := '添加';
        insert into S_Module(moduleID,moduleName,state,isMenu,parent,hasChild,url,img,power,istDate,Uptdate)
             values(a_moduleID,a_moduleName,a_state,a_isMenu,a_parent,a_hasChild,a_url,a_img,a_power,sysdate,sysdate);

      elsif a_type = 'edit' then
        select count(*) into counter from S_Module where moduleID <> a_s_moduleID and moduleID = a_moduleID;
        if counter > 0 then
          Message := '模块编号['||a_moduleID||']已经存在，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;
        Message := '修改';
        update S_Module set
               moduleID     = a_moduleID,
               moduleName   = a_moduleName,
               state        = a_state,
               isMenu       = a_isMenu,
               parent       = a_parent,
               hasChild     = a_hasChild,
               url          = a_url,
               img          = a_img,
               power        = a_power,
               uptDate      = sysdate
        where moduleID = a_s_moduleID;

       update S_Role_Module set moduleID = a_moduleID where moduleID = a_s_moduleID;
       update I_DataModule set moduleID = a_moduleID where moduleID = a_s_moduleID;
       update I_DataModuleColumn set moduleID = a_moduleID where moduleID = a_s_moduleID;
      end if;
      
    elsif a_type = 'copy' then
      Message := '复制添加';

      insert into S_Module(moduleID,moduleName,state,isMenu,parent,hasChild,url,img,power,istDate,Uptdate)
           select moduleID||'000',moduleName||'<副>',state,isMenu,parent,hasChild,url,img,power,sysdate,sysdate
             from S_Module where moduleID = a_s_moduleID;

    elsif a_type = 'del' then

      Message := '删除';
      delete from S_Role_Module where moduleID = a_s_moduleID;
      delete from S_Module where moduleID = a_s_moduleID;

    end if;

    Message := Message || '模块成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := Message || '模块失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- S_Log : 日志管理
  procedure SP_S_LogAdd(
    a_logType       in number,
    a_title         in varchar2,
    a_context       in varchar2,
    a_table         in varchar2,
    a_tableID       in varchar2,
    a_dataid        in varchar2,
    a_userID        in varchar2,
    a_userName      in varchar2,
    a_ipAddress     in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    v_id            number(13,0);
  begin
    select SEQ_T_Log_ID.nextval into v_id from dual;
    if length(a_table) > 0 then
      insert into T_Log(Id,Logtype,title,Context,tableID,dataid,userID,userName,Ipaddress,Istdate)
       values(v_id,a_logType,a_title,a_context,a_tableID,a_dataid,a_userID,a_userName,a_ipAddress,sysdate);

      execute immediate 'insert into '||a_table||'(Id,Logtype,title,Context,tableID,dataid,userID,userName,Ipaddress,Istdate)'
         ||' values('||v_id||','||a_logType||','''||a_title||''','''||a_context||''','||a_tableID||','''||a_dataid||''','||a_userID||','''||a_userName||''','''||a_ipAddress||''',sysdate)';
    else
      insert into T_SLog(Id,Logtype,title,Context,oid,userID,userName,Ipaddress,Istdate)
       values(v_id,a_logType,a_title,a_context,a_tableID,a_userID,a_userName,a_ipAddress,sysdate);

    end if;

    Message := '日志添加成功.';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := '日志添加失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  procedure SP_S_LogDel(
    c_startTime     in varchar2,
    c_endTime       in varchar2,
    a_operator      in varchar2,
    a_context       in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
  begin
    Message := '日志删除成功!';
    delete from T_SLog
          where (a_operator is null or userName = a_operator)
             and (a_context is null or context like '%'|| a_context ||'%')
            and istDate between SF_ToDate(c_startTime) and SF_ToDate(c_endTime);
    open ResultCursor for select '' sqlmsg from dual;
  exception when others then
    rollback;
    Message := '日志删除失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- Param :系统参数管理
  procedure SP_S_ParamManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramName     in varchar2,
    a_paramValue    in varchar2,
    a_remark        in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;
  begin
    if a_type = 'add' then
      select count(rowid) into counter from S_Param where paramName = a_paramName;
      if counter > 0 then
        Message := '参数名['||a_paramName||']已经使用，请更改';
        open ResultCursor for select Message sqlmsg from dual;
        return;
      end if;
      Message := '添加';
      insert into S_Param(id,paramName,paramValue,remark)
           values(SF_GetMaxID('S_Param','id'),a_paramName,a_paramValue,a_remark);

    elsif a_type = 'edit' then
      select count(rowid) into counter from S_Param where id <> a_id and paramName = a_paramName;
      if counter > 0 then
        Message := '参数名['||a_paramName||']已经使用，请更改';
        open ResultCursor for select Message sqlmsg from dual;
        return;
      end if;
      Message := '修改';
      update S_Param set
             paramName = a_paramName,
             paramValue = a_paramValue,
             remark = a_remark,
             uptDate = sysdate
      where id = a_id;

    elsif a_type = 'del' then
      Message := '删除';
      delete from S_Param where id = a_id;

    end if;

    open ResultCursor for select '' sqlmsg from dual;
    Message := Message || '系统参数成功!';
    commit;
  exception when others then
    rollback;
    Message := Message || '系统参数失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- S_QuickMenu :快捷菜单管理
  procedure SP_S_QuickMenuManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_userID        integer;
    a_moduleID      varchar2(100);
    a_seq           integer;
    a_moduleName    varchar2(50);
    a_moduleUrl     varchar2(100);
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_userID := to_number(tmp);
          elsif N=2 then a_moduleID := tmp;
          elsif N=3 then a_seq := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      select moduleName,url into a_moduleName,a_moduleUrl from S_Module where moduleID=a_moduleID;

      if a_type = 'add' then
        select count(*) into counter from S_QuickMenu where userID = a_userID;
        if counter >=5 then
          Message := '最多添加五个快捷菜！';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '添加';
        insert into S_QuickMenu(id,userID,moduleID,seq,moduleName,moduleUrl,istDate,Uptdate)
             values(SF_GetMaxID('S_QuickMenu','id'),a_userID,a_moduleID,a_seq,a_moduleName,a_moduleUrl,sysdate,sysdate);

      elsif a_type = 'edit' then
        Message := '修改';
        update S_QuickMenu set
               moduleID    = a_moduleID,
               seq         = a_seq,
               moduleName  = a_moduleName,
               moduleUrl   = a_moduleUrl,
               uptDate     = sysdate
        where id = a_id;
      end if;

    elsif a_type = 'del' then

      Message := '删除';
      delete from S_QuickMenu where id = a_id;

    end if;

    Message := Message || '快捷菜单成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := Message||substr(sqlerrm,1,100);--'查询快捷菜单失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- I_Area : 地区管理
  procedure SP_I_AreaManager(
    a_type          in varchar2,
    a_areaID        in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_areaName      varchar2(20);
    a_areaCode      varchar2(6);
    a_state         integer;
    a_areaLevel     integer;
    a_upAreaID      integer;
    a_remark        varchar2(100);
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
               if N=1 then a_areaName := tmp;
          elsif N=2 then a_areaCode := tmp;
          elsif N=3 then a_state := to_number(tmp);
          elsif N=4 then a_areaLevel := to_number(tmp);
          elsif N=5 then a_upAreaID := to_number(tmp);
          elsif N=6 then a_remark := tmp;
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        select count(rowid) into counter from I_Area where areaName = a_areaName;
        if counter > 0 then
          Message := '名称['||a_areaName||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '添加';
        insert into I_Area(id,areaID,areaName,areaCode,state,areaLevel,upAreaID,remark,Istdate,Uptdate)
             values(SF_GetMaxID('I_Area','id'),a_areaID,a_areaName,a_areaCode,1,a_areaLevel,a_upAreaID,a_remark,sysdate,sysdate);

      elsif a_type = 'edit' then

        select count(rowid) into counter from I_Area where areaID <> a_areaID and areaName = a_areaName;
        if counter > 0 then
          Message := '名称['||a_areaName||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '修改';
        update I_Area set
               areaName  = a_areaName,
               areaID    = a_areaID,
               state     = a_state,
               areaLevel = a_areaLevel,
               upAreaID  = a_upAreaID,
               remark    = a_remark,
               uptDate   = sysdate
        where areaID = a_areaID;
      end if;

    elsif a_type = 'del' then

      Message := '删除';
      delete from I_Area where areaID = a_areaID;

    end if;

    open ResultCursor for select '' sqlmsg from dual;
    Message := Message || '地区成功!';
    commit;
  exception when others then
    rollback;
    Message := Message || '地区失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;
  -- I_SystemParam :类别参数管理
  procedure SP_I_SystemParamManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_paramClass    integer;
    a_className     varchar2(50);
    a_value         integer;
    a_name          varchar2(50);
    a_parentClass   integer;
    a_state         integer;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
               if N=1 then a_paramClass := to_number(tmp);
          elsif N=2 then a_className := tmp;
          elsif N=3 then a_value := to_number(tmp);
          elsif N=4 then a_name := tmp;
          elsif N=5 then a_parentClass := to_number(tmp);
          elsif N=6 then a_state := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        select count(id) into counter from I_SystemParam where value=a_value;
        if counter>0 then
            Message := '相同的参数值已存在，请检查！';
            open ResultCursor for select Message sqlmsg from dual;
            return;
        end if;
        select count(id) into counter from I_SystemParam where paramClass=a_paramClass and name=a_name;
        if counter>0 then
            Message := '相同的值名称已存在，请检查！';
            open ResultCursor for select Message sqlmsg from dual;
            return;
        end if;
        Message := '添加';
        insert into I_SystemParam(id, paramClass,className,value,name,parentClass,state,istDate,Uptdate)
             values(SF_GetMaxID('I_SystemParam','id'),a_paramClass,a_className,a_value,a_name,a_parentClass,a_state,sysdate,sysdate);

      elsif a_type = 'edit' then
       select count(id) into counter from I_SystemParam where id<>a_id and value=a_value;
        if counter>0 then
            Message := '相同的参数值已存在，请检查！';
            open ResultCursor for select Message sqlmsg from dual;
            return;
        end if;
        select count(id) into counter from I_SystemParam where id<>a_id and paramClass=a_paramClass and name=a_name;
        if counter>0 then
            Message := '相同的值名称已存在，请检查！';
            open ResultCursor for select Message sqlmsg from dual;
            return;
        end if;
        Message := '修改';
        update I_SystemParam set
               paramClass  = a_paramClass,
               className   = a_className,
               value       = a_value,
               name        = a_name,
               parentClass = a_parentClass,
               state       = a_state,
               uptDate     = sysdate
        where id = a_id;
      end if;

    elsif a_type = 'del' then

      Message := '删除';
      delete from I_SystemParam where id = a_id;

    end if;

    Message := Message || '类别参数成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := Message || '类别参数失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- T_Message : 短消息管理
  procedure SP_T_MessageManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_content       T_Message.content%type;
    a_tableID       T_Message.tableID%type;
    a_dataID        T_Message.dataID%type;
    a_actionID      T_Message.actionID%type;
    a_senderID      varchar2(100);
    a_senderName    varchar2(20);
    a_recverID      varchar2(500);
    a_recverName    varchar2(1000);
    a_readFlag      integer;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_content := tmp;
          elsif N=2 then a_tableID := to_number(tmp);
          elsif N=3 then a_dataID := to_number(tmp);
          elsif N=4 then a_actionID := to_number(tmp);
          elsif N=5 then a_senderID := to_number(tmp);
          elsif N=6 then a_senderName := tmp;
          elsif N=7 then a_recverID := to_number(tmp);
          elsif N=8 then a_recverName := tmp;
          elsif N=9 then a_readFlag := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_dataID > 0 then
          select count(dataid) into counter from T_Message where dataid=a_dataID;
          if counter > 0 then
              Message := '修改';
              update T_Message set
                     content     = a_content,
                     tableID     = a_tableID,
                     dataID      = a_dataID,
                     actionID    = a_actionID,
                     senderID    = a_senderID,
                     senderName  = a_senderName,
                     recverID    = a_recverID,
                     recverName  = a_recverName,
                     readFlag    = a_readFlag,
                     uptDate     = sysdate
              where dataID = a_dataID;
          else
            Message := '添加';
            insert into T_Message(id,content,tableID,dataID,actionID,senderID,senderName,recverID,recverName,readFlag,istDate,Uptdate)
                 values(SEQ_T_Message_ID.Nextval,a_content,a_tableID,a_dataID,a_actionID,a_senderID,a_senderName,a_recverID,a_recverName,a_readFlag,sysdate,sysdate);
          end if;
      else
          if a_type = 'add' then
            Message := '添加';
            insert into T_Message(id,content,tableID,dataID,actionID,senderID,senderName,recverID,recverName,readFlag,istDate,Uptdate)
                 values(SEQ_T_Message_ID.Nextval,a_content,a_tableID,a_dataID,a_actionID,a_senderID,a_senderName,a_recverID,a_recverName,a_readFlag,sysdate,sysdate);

          elsif a_type = 'edit' then
            Message := '修改';
            update T_Message set
                   content     = a_content,
                   tableID     = a_tableID,
                   dataID      = a_dataID,
                   actionID    = a_actionID,
                   senderID    = a_senderID,
                   senderName  = a_senderName,
                   recverID    = a_recverID,
                   recverName  = a_recverName,
                   readFlag    = a_readFlag,
                   uptDate     = sysdate
            where id = a_id;
          end if;
      end if;

    elsif a_type = 'del' then

      Message := '删除';
      delete from T_Message where id = a_id;

    end if;

    Message := Message || '短消息成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := '编辑短消息失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- I_DataParamType : 数据应用字典管理
  procedure SP_I_DataParamTypeManager(
    a_type          in varchar2,
    a_paramClassID  in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_className     varchar2(100);
    a_classNameEn   varchar2(100);
    a_classNameEn2  varchar2(100);
    a_classNameEn3  varchar2(100);
    a_classNameEn4  varchar2(100);
    a_classNameEn5  varchar2(100);
    a_typeLevel     integer;
    a_parentID      integer;
    a_memo          varchar2(200);
    a_state         integer;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_className := tmp;
          elsif N=2 then a_classNameEn := tmp;
          elsif N=3 then a_classNameEn2 := tmp;
          elsif N=4 then a_classNameEn3 := tmp;
          elsif N=5 then a_classNameEn4 := tmp;
          elsif N=6 then a_classNameEn5 := tmp;
          elsif N=7 then a_typeLevel := to_number(tmp);
          elsif N=8 then a_parentID := to_number(tmp);
          elsif N=9 then a_memo := tmp;
          elsif N=10 then a_state := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        select count(rowid) into counter from I_DataParamType where parentID = a_parentID and className = a_className;
        if counter > 0 then
          Message := '名称['||a_className||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '添加';
        insert into I_DataParamType(paramClassID,className,classNameEn,classNameEn2,classNameEn3,classNameEn4,classNameEn5,typeLevel,parentID,childNum,memo,state,Istdate,Uptdate)
             values(a_paramClassID,a_className,a_classNameEn,a_classNameEn2,a_classNameEn3,a_classNameEn4,a_classNameEn5,a_typeLevel,a_parentID,0,a_memo,a_state,sysdate,sysdate);

      elsif a_type = 'edit' then

        select count(rowid) into counter from I_DataParamType where paramClassID <> a_paramClassID and parentID = a_parentID and className = a_className;
        if counter > 0 then
          Message := '名称['||a_className||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '修改';
        update I_DataParamType set
               className  = a_className,
               classNameEn  = a_classNameEn,
               classNameEn2  = a_classNameEn2,
               classNameEn3  = a_classNameEn3,
               classNameEn4  = a_classNameEn4,
               classNameEn5  = a_classNameEn5,
               paramClassID = a_paramClassID,
               typeLevel = a_typeLevel,
               parentID  = a_parentID,
               memo      = a_memo,
               state     = a_state,
               uptDate   = sysdate
        where paramClassID = a_paramClassID;
      end if;

      update I_DataParamType set childNum=(select count(*) from I_DataParamType where parentID = a_paramClassID) where paramClassID = a_paramClassID;

    elsif a_type = 'del' then
      select parentID into a_parentID from I_DataParamType where paramClassID = a_paramClassID;

      Message := '删除';
      delete from I_DataParamType where paramClassID = a_paramClassID;

    end if;

    if a_parentID > 0 then
      update I_DataParamType set childNum=(select count(*) from I_DataParamType where parentID = a_parentID) where paramClassID = a_parentID;
    end if;

    open ResultCursor for select '' sqlmsg from dual;
    Message := Message || '数据应用字典成功!';
    commit;
  exception when others then
    rollback;
    Message := Message || '数据应用字典失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;


  -- I_DataTable : 数据表管理
  procedure SP_I_DataTableManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_paramStr2     in varchar2,
    a_ddl           in varchar2,
    a_spliter       in varchar2,
    a_spliter_sub   in varchar2,
    a_preCount      in number,
    a_preCount2     in number,
    a_preCount3     in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(8000);
    tmp             VARCHAR2(8000);
    splitlen        integer;
    N               integer;
    a_tableName     i_Datatable.tableName%type;
    a_tableMemo     i_Datatable.tableMemo%type;
    a_serverPath    i_Datatable.serverPath%type;
    a_tableTypeID   i_Datatable.tableTypeID%type;
    a_sctLevel      i_Datatable.sctLevel%type;
    a_sequenceFlag  i_Datatable.sequenceFlag%type;
    a_pkFlag        i_Datatable.pkFlag%type;
    a_sidFlag       i_Datatable.sidFlag%type;
    a_scopeFlag     i_Datatable.scopeFlag%type;
    a_attachFileFlag i_Datatable.attachFileFlag%type;
    a_dataStatusFlag i_Datatable.dataStatusFlag%type;
    a_sctLevelFlag  i_Datatable.sctLevelFlag%type;
    a_otherButtons  i_Datatable.otherButtons%type;
    a_parentTableID i_Datatable.parentTableID%type;
    a_state         i_Datatable.state%type;

    tmp_colids      VARCHAR2(1000);
    tmp_colNames    VARCHAR2(1000);
    tmp_colMemos    VARCHAR2(8000);
    tmp_dataTypeStrs VARCHAR2(4000);
    tmp_dataTypes   VARCHAR2(1000);
    tmp_dataLens    VARCHAR2(1000);
    tmp_dataDotLens VARCHAR2(1000);
    tmp_sctLevels   VARCHAR2(1000);
    tmp_nullFlags   VARCHAR2(1000);
    tmp_defs        VARCHAR2(1000);
    tmp_seqs        VARCHAR2(1000);
    tmp_listShowFlags  VARCHAR2(1000);
    tmp_showWidths     VARCHAR2(1000);
    tmp_formShowFlags  VARCHAR2(1000);
    tmp_states      VARCHAR2(1000);
    now             date;
    v_colid         i_datatablecolumn.colid%type;
    v_tableID       i_datatablecolumn.tableID%type;
    v_colName       i_datatablecolumn.colName%type;
    v_colMemo       i_datatablecolumn.colMemo%type;
    v_dataTypeStr   i_datatablecolumn.dataTypeStr%type;
    v_dataType      i_datatablecolumn.dataType%type;
    v_dataLen       i_datatablecolumn.dataLen%type;
    v_dataDotLen    i_datatablecolumn.dataDotLen%type;
    v_nullFlag      i_datatablecolumn.nullFlag%type;
    v_def           i_datatablecolumn.def%type;
    v_sctLevel      i_datatablecolumn.sctLevel%type;
    v_seq           i_datatablecolumn.seq%type;
    v_listShowFlag  i_datatablecolumn.listShowFlag%type;
    v_showWidth     i_datatablecolumn.showWidth%type;
    v_formShowFlag  i_datatablecolumn.formShowFlag%type;
    v_state         i_datatablecolumn.State%type;

    --v_cursor number; --定义光标
    --v_row number; --定义行数
  begin
    if a_type = 'add' or a_type = 'edit' then
      v_tableID := a_id;

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_tableName := tmp;
          elsif N=2 then a_tableMemo := tmp;
          elsif N=3 then a_serverPath := tmp;
          elsif N=4 then a_tableTypeID := to_number(tmp);
          elsif N=5 then a_sctLevel := to_number(tmp);
          elsif N=6 then a_sequenceFlag := to_number(tmp);
          elsif N=7 then a_pkFlag := to_number(tmp);
          elsif N=8 then a_sidFlag := to_number(tmp);
          elsif N=9 then a_scopeFlag := to_number(tmp);
          elsif N=10 then a_attachFileFlag := to_number(tmp);
          elsif N=11 then a_dataStatusFlag := to_number(tmp);
          elsif N=12 then a_sctLevelFlag := to_number(tmp);
          elsif N=13 then a_otherButtons := tmp;
          elsif N=14 then a_parentTableID := to_number(tmp);
          elsif N=15 then a_state := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        select count(*) into counter from I_DataTable where tableName = a_tableName;
        if counter > 0 then
          Message := '数据表['||a_tableName||']已经存在，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '添加';
        select SF_GetMaxID('I_DataTable','tableID') into v_tableID from dual;
        insert into I_DataTable(tableID,tableName,tableMemo,serverPath,tableTypeID,sctLevel,sequenceFlag,pkFlag,sidFlag,scopeFlag,attachFileFlag,dataStatusFlag,sctLevelFlag,otherButtons,parentTableID,state,istDate,Uptdate)
             values(v_tableID,a_tableName,a_tableMemo,a_serverPath,a_tableTypeID,a_sctLevel,a_sequenceFlag,a_pkFlag,a_sidFlag,a_scopeFlag,a_attachFileFlag,a_dataStatusFlag,a_sctLevelFlag,a_otherButtons,a_parentTableID,a_state,sysdate,sysdate);

        --执行创建表sql
        tmp := a_ddl;------debug
        /*begin
          v_cursor := dbms_sql.open_cursor; --打开光标
          dbms_sql.parse(v_cursor, a_ddl, dbms_sql.native); --分析语句
          v_row := dbms_sql.execute(a_ddl); --执行语句
          dbms_sql.close_cursor(v_cursor); --关闭光标
        exception when others then
          dbms_sql.close_cursor(v_cursor); --关闭光标
          raise;
          Message := 'DDL(v_row='||v_row||'). 添加';
          vReturn := Message;
          null;
        end;*/

      elsif a_type = 'edit' then
        select count(*) into counter from I_DataTable where tableID <> a_id and tableName = a_tableName;
        if counter > 0 then
          Message := '数据表['||a_tableName||']已经存在，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '修改';
        update I_DataTable set
               tableName   = a_tableName,
               tableMemo   = a_tableMemo,
               serverPath  = a_serverPath,
               tableTypeID = a_tableTypeID,
               sctLevel    = a_sctLevel,
               sequenceFlag = a_sequenceFlag,
               pkFlag      = a_pkFlag,
               sidFlag     = a_sidFlag,
               scopeFlag   = a_scopeFlag,
               attachFileFlag = a_attachFileFlag,
               dataStatusFlag = a_dataStatusFlag,
               sctLevelFlag = a_sctLevelFlag,
               otherButtons = a_otherButtons,
               parentTableID = a_parentTableID,
               state       = a_state,
               uptDate     = sysdate
        where tableID = a_id;
      end if;

      if length(replace(a_paramStr2,a_spliter,'')) > 0 then
        splitlen := length(a_spliter||'a')-1;
        v_paramStr := a_paramStr2;
        for N in 1..a_preCount2 loop
            tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
               if N=1 then tmp_colids      := tmp||a_spliter_sub;
            elsif N=2 then tmp_colNames    := tmp||a_spliter_sub;
            elsif N=3 then tmp_colMemos    := tmp||a_spliter_sub;
            elsif N=4 then tmp_dataTypeStrs   := tmp||a_spliter_sub;
            elsif N=5 then tmp_dataTypes   := tmp||a_spliter_sub;
            elsif N=6 then tmp_dataLens    := tmp||a_spliter_sub;
            elsif N=7 then tmp_dataDotLens := tmp||a_spliter_sub;
            elsif N=8 then tmp_nullFlags   := tmp||a_spliter_sub;
            elsif N=9 then tmp_defs   := tmp||a_spliter_sub;
            elsif N=10 then tmp_sctLevels   := tmp||a_spliter_sub;
            elsif N=11 then tmp_seqs       := tmp||a_spliter_sub;
            elsif N=12 then tmp_listShowFlags   := tmp||a_spliter_sub;
            elsif N=13 then tmp_showWidths      := tmp||a_spliter_sub;
            elsif N=14 then tmp_formShowFlags   := tmp||a_spliter_sub;
            elsif N=15 then tmp_states     := tmp||a_spliter_sub;
            end if;
            v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
        end loop;

        now := sysdate;
        splitlen := length(a_spliter_sub||'a')-1;
        for N in 1..a_preCount3 loop
            v_colid := to_number(substr(tmp_colids, 1, instr(tmp_colids,a_spliter_sub)-1));
            v_colName := substr(tmp_colNames, 1, instr(tmp_colNames,a_spliter_sub)-1);
            v_colMemo := substr(tmp_colMemos, 1, instr(tmp_colMemos,a_spliter_sub)-1);
            v_dataTypeStr := substr(tmp_dataTypeStrs, 1, instr(tmp_dataTypeStrs,a_spliter_sub)-1);
            v_dataType := substr(tmp_dataTypes, 1, instr(tmp_dataTypes,a_spliter_sub)-1);
            v_dataLen := to_number( substr(tmp_dataLens, 1, instr(tmp_dataLens,a_spliter_sub)-1));
            v_dataDotLen := to_number( substr(tmp_dataDotLens, 1, instr(tmp_dataDotLens,a_spliter_sub)-1));
            v_nullFlag := to_number( substr(tmp_nullFlags, 1, instr(tmp_nullFlags,a_spliter_sub)-1));
            v_def := to_number( substr(tmp_defs, 1, instr(tmp_defs,a_spliter_sub)-1));
            v_sctLevel := substr(tmp_sctLevels, 1, instr(tmp_sctLevels,a_spliter_sub)-1);
            v_seq := substr(tmp_seqs, 1, instr(tmp_seqs,a_spliter_sub)-1);
            v_listShowFlag := substr(tmp_listShowFlags, 1, instr(tmp_listShowFlags,a_spliter_sub)-1);
            v_showWidth := substr(tmp_showWidths, 1, instr(tmp_showWidths,a_spliter_sub)-1);
            v_formShowFlag := substr(tmp_formShowFlags, 1, instr(tmp_formShowFlags,a_spliter_sub)-1);
            v_state := to_number( substr(tmp_states, 1, instr(tmp_states,a_spliter_sub)-1));
            if length(v_dataLen)=0 then v_dataLen := 0; end if;
            if length(v_dataDotLen)=0 then v_dataDotLen := 0; end if;
            if length(v_nullFlag)=0 then v_nullFlag := 1; end if;
            if length(v_sctLevel)=0 then v_sctLevel := -1; end if;
            if length(v_seq)=0 then v_seq := -1; end if;
            if length(v_listShowFlag)=0 then v_listShowFlag := 0; end if;
            if length(v_showWidth)=0 then v_showWidth := v_dataDotLen; end if;
            if v_showWidth=0 then v_showWidth := v_dataLen; end if;
            if length(v_formShowFlag)=0 then v_formShowFlag := 0; end if;

            if length(v_colName) > 0 then
              if v_colid>0 then
                  update I_DataTableColumn set
                         colName = v_colName,
                         colMemo = v_colMemo,
                         dataTypeStr = v_dataTypeStr,
                         dataType = v_dataType,
                         dataLen = v_dataLen,
                         dataDotLen = v_dataDotLen,
                         nullFlag = v_nullFlag,
                         def = v_def,
                         sctLevel = v_sctLevel,
                         seq = v_seq,
                         listShowFlag = v_listShowFlag,
                         showWidth = v_showWidth,
                         formShowFlag = v_formShowFlag,
                         state = v_state,
                         uptdate = now
                   where colid = v_colid;
              else
                  select nvl(max(colid),0)+1 into v_colid from I_DataTableColumn;
                  insert into I_DataTableColumn(colid,tableID,colName,colMemo,dataTypeStr,dataType,dataLen,dataDotLen,nullFlag,def,sctLevel,seq,listShowFlag,showWidth,formShowFlag,state,istdate,uptdate)
                       values(v_colid,v_tableID,v_colName,v_colMemo,v_dataTypeStr,v_dataType,v_dataLen,v_dataDotLen,v_nullFlag,v_def,v_sctLevel,v_seq,v_listShowFlag,v_showWidth,v_formShowFlag,v_state,now,now);
              end if;
            end if;

            tmp_colids := substr(tmp_colids, instr(tmp_colids, a_spliter_sub)+splitlen, length(tmp_colids));
            tmp_colNames := substr(tmp_colNames, instr(tmp_colNames, a_spliter_sub)+splitlen, length(tmp_colNames));
            tmp_colMemos := substr(tmp_colMemos, instr(tmp_colMemos, a_spliter_sub)+splitlen, length(tmp_colMemos));
            tmp_dataTypeStrs := substr(tmp_dataTypeStrs, instr(tmp_dataTypeStrs, a_spliter_sub)+splitlen, length(tmp_dataTypeStrs));
            tmp_dataTypes := substr(tmp_dataTypes, instr(tmp_dataTypes, a_spliter_sub)+splitlen, length(tmp_dataTypes));
            tmp_dataLens := substr(tmp_dataLens, instr(tmp_dataLens, a_spliter_sub)+splitlen, length(tmp_dataLens));
            tmp_dataDotLens := substr(tmp_dataDotLens, instr(tmp_dataDotLens, a_spliter_sub)+splitlen, length(tmp_dataDotLens));
            tmp_nullFlags := substr(tmp_nullFlags, instr(tmp_nullFlags, a_spliter_sub)+splitlen, length(tmp_nullFlags));
            tmp_defs := substr(tmp_defs, instr(tmp_defs, a_spliter_sub)+splitlen, length(tmp_defs));
            tmp_sctLevels := substr(tmp_sctLevels, instr(tmp_sctLevels, a_spliter_sub)+splitlen, length(tmp_sctLevels));
            tmp_seqs := substr(tmp_seqs, instr(tmp_seqs, a_spliter_sub)+splitlen, length(tmp_seqs));
            tmp_listShowFlags := substr(tmp_listShowFlags, instr(tmp_listShowFlags, a_spliter_sub)+splitlen, length(tmp_listShowFlags));
            tmp_showWidths := substr(tmp_showWidths, instr(tmp_showWidths, a_spliter_sub)+splitlen, length(tmp_showWidths));
            tmp_formShowFlags := substr(tmp_formShowFlags, instr(tmp_formShowFlags, a_spliter_sub)+splitlen, length(tmp_formShowFlags));
            tmp_states := substr(tmp_states, instr(tmp_states, a_spliter_sub)+splitlen, length(tmp_states));
        end loop;
        delete from I_DataTableColumn where tableID = v_tableID and uptDate < now;
     end if;

    elsif a_type = 'copy' then
      Message := '复制添加';

      select SF_GetMaxID('I_DataTable','tableID') into v_tableID from dual;
      insert into I_DataTable(tableID,tableName,tableMemo,serverPath,tableTypeID,sctLevel,scopeFlag,attachFileFlag,dataStatusFlag,sctLevelFlag,otherButtons,parentTableID,state,istDate,Uptdate)
           select v_tableID,tableName||'_X',tableMemo||'[副]',serverPath,tableTypeID,sctLevel,scopeFlag,attachFileFlag,dataStatusFlag,sctLevelFlag,otherButtons,parentTableID,state,sysdate,sysdate from I_DataTable where tableID = a_id;
      select max(colid)+1 into v_colid from I_DataTableColumn;
      select to_number(v_colid)-min(colid) into v_colid from I_DataTableColumn where tableID = a_id;
      insert into I_DataTableColumn(colid,tableID,colName,colMemo,dataTypeStr,dataType,dataLen,dataDotLen,nullFlag,def,sctLevel,seq,listShowFlag,showWidth,formShowFlag,state,istdate,uptdate)
           select colid+v_colid,v_tableID,colName,colMemo,dataTypeStr,dataType,dataLen,dataDotLen,nullFlag,def,sctLevel,seq,listShowFlag,showWidth,formShowFlag,state,sysdate,sysdate from I_DataTableColumn where tableID = a_id;

      select max(colid) into counter from I_DataTableColumn where tableID = a_id;
      while v_colid<counter loop
          select Seq_I_DataTableColumn_id.nextval into v_colid from dual;
      end loop;

    elsif a_type = 'del' then

      Message := '删除';
      delete from I_DataTable where tableID = a_id;
      delete from I_DataTableColumn where tableID = a_id;
      delete from I_DataTableColumnExtInfo where tableID = a_id;
    end if;

    if a_type = 'delCol' then
      Message := '删除列';
      delete from I_DataTableColumn where colid = a_id;
      delete from I_DataTableColumnExtInfo where colid = a_id;

    elsif a_type = 'updateColSeq' then
      Message := '更改排序';
      select seq,tableID into v_seq,v_tableID from I_DataTableColumn where colid = a_id;
      if to_number(a_paramStr) < v_seq then
        update I_DataTableColumn set seq = seq+1 where tableID=v_tableID and seq >= to_number(a_paramStr) and seq < v_seq;
      elsif to_number(a_paramStr) > v_seq then
        update I_DataTableColumn set seq = seq-1 where tableID=v_tableID and seq <= to_number(a_paramStr) and seq > v_seq;
      end if;
      update I_DataTableColumn set seq = to_number(a_paramStr) where colid = a_id;
    else
      Message := Message || '数据表';

      update I_DataTable set colNum=(select count(*) from i_Datatablecolumn where tableID = v_tableID) where tableID = v_tableID;
      if a_tableTypeID > 0 then
        update I_DataTableType set childNum=(select count(*) from I_DataTableType where parentID = a_tableTypeID) where tableTypeID = a_tableTypeID;
        update I_DataTableType set childNum=childNum+(select count(*) from I_DataTable where tableTypeID = a_tableTypeID) where tableTypeID = a_tableTypeID;
      end if;
      if a_parentTableID > 0 then
        update I_DataTable a set childTableNum=(select count(*) from I_DataTable b where parentTableID = a.tableID) where tableID=a_parentTableID;
      end if;

      update I_DataTable set dataNum=0 where tableID = v_tableID;
      begin
        execute immediate 'update I_DataTable set dataNum=(select count(*) from '||a_tableName||') where tableID = '||v_tableID;
      exception when others then
        null;
      end;
    end if;

    Message := Message || '成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := Message || '失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- I_DataModule : 数据模块管理
  procedure SP_I_DataModuleManager(
    a_type          in varchar2,
    a_id            in varchar2,
    a_paramStr      in varchar2,
    a_paramStr2     in varchar2,
    a_spliter       in varchar2,
    a_spliter_sub   in varchar2,
    a_preCount      in number,
    a_preCount2     in number,
    a_preCount3     in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(8000);
    tmp             VARCHAR2(8000);
    splitlen        integer;
    N               integer;
    a_moduleID      i_DataModule.moduleID%type;
    a_moduleName    i_DataModule.moduleName%type;
    a_viewName      i_DataModule.viewName%type;
    a_viewSql       i_DataModule.viewSql%type;
    a_tableIDs      i_DataModule.tableIDs%type;
    a_otherCondition   i_DataModule.otherCondition%type;
    a_otherButtons  i_DataModule.otherButtons%type;
    a_state         i_DataModule.state%type;

    tmp_ids         VARCHAR2(1000);
    tmp_tableIDs    VARCHAR2(1000);
    tmp_colids      VARCHAR2(1000);
    tmp_colMemos    VARCHAR2(1000);
    tmp_colstrs     VARCHAR2(1000);
    tmp_colNames    VARCHAR2(1000);
    tmp_colName_ass VARCHAR2(1000);
    tmp_sctLevels   VARCHAR2(1000);
    tmp_seqs        VARCHAR2(1000);
    tmp_groupFuncs  VARCHAR2(1000);
    tmp_listShowFlags    VARCHAR2(1000);
    tmp_showWidths       VARCHAR2(1000);
    tmp_formShowFlags    VARCHAR2(1000);
    tmp_extKeywordFlags  VARCHAR2(1000);
    tmp_extQueryByFlags  VARCHAR2(1000);
    tmp_states      VARCHAR2(1000);
    now             date;
    v_id            i_DataModulecolumn.id%type;
    v_tableID       i_DataModulecolumn.tableID%type;
    v_colid         i_DataModulecolumn.colid%type;
    v_colMemo       i_DataModulecolumn.colMemo%type;
    v_colstr        i_DataModulecolumn.colstr%type;
    v_colName       i_DataModulecolumn.colName%type;
    v_colName_as    i_DataModulecolumn.colName_as%type;
    v_sctLevel      i_DataModulecolumn.sctLevel%type;
    v_seq           i_DataModulecolumn.seq%type;
    v_groupFunc     i_DataModulecolumn.groupFunc%type;
    v_listShowFlag  i_DataModulecolumn.listShowFlag%type;
    v_showWidth     i_DataModulecolumn.showWidth%type;
    v_formShowFlag  i_DataModulecolumn.formShowFlag%type;
    v_extKeywordFlag  i_DataModulecolumn.extKeywordFlag%type;
    v_extQueryByFlag  i_DataModulecolumn.extQueryByFlag%type;
    v_state         i_DataModulecolumn.State%type;

    --v_cursor number; --定义光标
    --v_row number; --定义行数
  begin
    if a_type = 'add' or a_type = 'edit' then
      a_moduleID := a_id;

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_moduleName := tmp;
          elsif N=2 then a_viewName := tmp;
          elsif N=3 then a_viewSql := tmp;
          elsif N=4 then a_tableIDs := tmp;
          elsif N=5 then a_otherCondition := tmp;
          elsif N=6 then a_otherButtons := tmp;
          elsif N=7 then a_state := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      select count(*) into counter from I_DataModule where moduleID = a_moduleID;
      if counter = 0 then
        Message := '添加';
        insert into I_DataModule(moduleID,moduleName,viewName,viewSql,tableIDs,otherCondition,otherButtons,state,istDate,Uptdate)
             values(a_moduleID,a_moduleName,a_viewName,a_viewSql,a_tableIDs,a_otherCondition,a_otherButtons,a_state,sysdate,sysdate);

      else
        Message := '修改';
        update I_DataModule set
               moduleName = a_moduleName,
               viewName = a_viewName,
               viewSql = a_viewSql,
               tableIDs = a_tableIDs,
               otherCondition = a_otherCondition,
               otherButtons = a_otherButtons,
               state       = a_state,
               uptDate     = sysdate
        where moduleID = a_moduleID;
      end if;

      if length(replace(a_paramStr2,a_spliter,'')) > 0 then
        splitlen := length(a_spliter||'a')-1;
        v_paramStr := a_paramStr2;
        for N in 1..a_preCount2 loop
            tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
               if N=1 then tmp_ids         := tmp||a_spliter_sub;
            elsif N=2 then tmp_tableIDs    := tmp||a_spliter_sub;
            elsif N=3 then tmp_colids      := tmp||a_spliter_sub;
            elsif N=4 then tmp_colstrs     := tmp||a_spliter_sub;
            elsif N=5 then tmp_colMemos    := tmp||a_spliter_sub;
            elsif N=6 then tmp_colNames    := tmp||a_spliter_sub;
            elsif N=7 then tmp_colName_ass := tmp||a_spliter_sub;
            elsif N=8 then tmp_sctLevels   := tmp||a_spliter_sub;
            elsif N=9 then tmp_seqs        := tmp||a_spliter_sub;
            elsif N=10 then tmp_groupFuncs       := tmp||a_spliter_sub;
            elsif N=11 then tmp_listShowFlags    := tmp||a_spliter_sub;
            elsif N=12 then tmp_showWidths       := tmp||a_spliter_sub;
            elsif N=13 then tmp_formShowFlags    := tmp||a_spliter_sub;
            elsif N=14 then tmp_extKeywordFlags  := tmp||a_spliter_sub;
            elsif N=15 then tmp_extQueryByFlags  := tmp||a_spliter_sub;
            elsif N=16 then tmp_states     := tmp||a_spliter_sub;
            end if;
            v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
        end loop;

        now := sysdate;
        splitlen := length(a_spliter_sub||'a')-1;
        for N in 1..a_preCount3 loop
            v_id := to_number(substr(tmp_ids, 1, instr(tmp_ids,a_spliter_sub)-1));
            v_tableID := to_number(substr(tmp_tableIDs, 1, instr(tmp_tableIDs,a_spliter_sub)-1));
            v_colid := to_number(substr(tmp_colids, 1, instr(tmp_colids,a_spliter_sub)-1));
            v_colstr := substr(tmp_colstrs, 1, instr(tmp_colstrs,a_spliter_sub)-1);
            v_colMemo := substr(tmp_colMemos, 1, instr(tmp_colMemos,a_spliter_sub)-1);
            v_colName := substr(tmp_colNames, 1, instr(tmp_colNames,a_spliter_sub)-1);
            v_colName_as := substr(tmp_colName_ass, 1, instr(tmp_colName_ass,a_spliter_sub)-1);
            v_sctLevel := substr(tmp_sctLevels, 1, instr(tmp_sctLevels,a_spliter_sub)-1);
            v_seq := substr(tmp_seqs, 1, instr(tmp_seqs,a_spliter_sub)-1);
            v_groupFunc := substr(tmp_groupFuncs, 1, instr(tmp_groupFuncs,a_spliter_sub)-1);
            v_listShowFlag := substr(tmp_listShowFlags, 1, instr(tmp_listShowFlags,a_spliter_sub)-1);
            v_showWidth := substr(tmp_showWidths, 1, instr(tmp_showWidths,a_spliter_sub)-1);
            v_formShowFlag := substr(tmp_formShowFlags, 1, instr(tmp_formShowFlags,a_spliter_sub)-1);
            v_extKeywordFlag := substr(tmp_extKeywordFlags, 1, instr(tmp_extKeywordFlags,a_spliter_sub)-1);
            v_extQueryByFlag := substr(tmp_extQueryByFlags, 1, instr(tmp_extQueryByFlags,a_spliter_sub)-1);
            v_state := to_number( substr(tmp_states, 1, instr(tmp_states,a_spliter_sub)-1));
            if length(v_sctLevel)=0 then v_sctLevel := -1; end if;
            if length(v_seq)=0 then v_seq := -1; end if;
            if length(v_listShowFlag)=0 then v_listShowFlag := 0; end if;
            if length(v_showWidth)=0 then v_showWidth := 20; end if;
            if v_showWidth=0 then v_showWidth := 20; end if;
            if length(v_formShowFlag)=0 then v_formShowFlag := 0; end if;
            if length(v_extKeywordFlag)=0 then v_extKeywordFlag := 0; end if;
            if length(v_extQueryByFlag)=0 then v_extQueryByFlag := 0; end if;

            if length(v_colMemo) > 0 then
              if v_id>0 then
                  update I_DataModuleColumn set
                         tableID = v_tableID,
                         colid = v_colid,
                         colstr = v_colstr,
                         colMemo = v_colMemo,
                         colName = v_colName,
                         colName_as = v_colName_as,
                         sctLevel = v_sctLevel,
                         seq = v_seq,
                         groupFunc = v_groupFunc,
                         listShowFlag = v_listShowFlag,
                         showWidth = v_showWidth,
                         formShowFlag = v_formShowFlag,
                         extKeywordFlag = v_extKeywordFlag,
                         extQueryByFlag = v_extQueryByFlag,
                         state = v_state,
                         uptdate = now
                   where id = v_id;
              else
                  select nvl(max(id),0)+1 into v_id from I_DataModuleColumn;
                  insert into I_DataModuleColumn(id,moduleID,tableID,colid,colstr,colMemo,colName,colName_as,sctLevel,seq,groupFunc,listShowFlag,showWidth,formShowFlag,extKeywordFlag,extQueryByFlag,state,istdate,uptdate)
                       values(v_id,a_moduleID,v_tableID,v_colid,v_colstr,v_colMemo,v_colName,v_colName_as,v_sctLevel,v_seq,v_groupFunc,v_listShowFlag,v_showWidth,v_formShowFlag,v_extKeywordFlag,v_extQueryByFlag,v_state,now,now);
              end if;
            end if;

            tmp_ids := substr(tmp_ids, instr(tmp_ids, a_spliter_sub)+splitlen, length(tmp_ids));
            tmp_tableIDs := substr(tmp_tableIDs, instr(tmp_tableIDs, a_spliter_sub)+splitlen, length(tmp_tableIDs));
            tmp_colids := substr(tmp_colids, instr(tmp_colids, a_spliter_sub)+splitlen, length(tmp_colids));
            tmp_colstrs := substr(tmp_colstrs, instr(tmp_colstrs, a_spliter_sub)+splitlen, length(tmp_colstrs));
            tmp_colMemos := substr(tmp_colMemos, instr(tmp_colMemos, a_spliter_sub)+splitlen, length(tmp_colMemos));
            tmp_colNames := substr(tmp_colNames, instr(tmp_colNames, a_spliter_sub)+splitlen, length(tmp_colNames));
            tmp_colName_ass := substr(tmp_colName_ass, instr(tmp_colName_ass, a_spliter_sub)+splitlen, length(tmp_colName_ass));
            tmp_sctLevels := substr(tmp_sctLevels, instr(tmp_sctLevels, a_spliter_sub)+splitlen, length(tmp_sctLevels));
            tmp_seqs := substr(tmp_seqs, instr(tmp_seqs, a_spliter_sub)+splitlen, length(tmp_seqs));
            tmp_groupFuncs := substr(tmp_groupFuncs, instr(tmp_groupFuncs, a_spliter_sub)+splitlen, length(tmp_groupFuncs));
            tmp_listShowFlags := substr(tmp_listShowFlags, instr(tmp_listShowFlags, a_spliter_sub)+splitlen, length(tmp_listShowFlags));
            tmp_showWidths := substr(tmp_showWidths, instr(tmp_showWidths, a_spliter_sub)+splitlen, length(tmp_showWidths));
            tmp_formShowFlags := substr(tmp_formShowFlags, instr(tmp_formShowFlags, a_spliter_sub)+splitlen, length(tmp_formShowFlags));
            tmp_extKeywordFlags := substr(tmp_extKeywordFlags, instr(tmp_extKeywordFlags, a_spliter_sub)+splitlen, length(tmp_extKeywordFlags));
            tmp_extQueryByFlags := substr(tmp_extQueryByFlags, instr(tmp_extQueryByFlags, a_spliter_sub)+splitlen, length(tmp_extQueryByFlags));
            tmp_states := substr(tmp_states, instr(tmp_states, a_spliter_sub)+splitlen, length(tmp_states));
        end loop;
        delete from I_DataModuleColumn where moduleID = a_moduleID and uptDate < now;
     end if;

    elsif a_type = 'del' then

      Message := '删除';
      delete from I_DataModule where moduleID = a_moduleID;
      delete from I_DataModuleColumn where moduleID = a_moduleID;
    end if;

    if a_type = 'delCol' then
      Message := '删除列';
      delete from I_DataModuleColumn where id = a_id;

    elsif a_type = 'updateColSeq' then
      Message := '更改排序';
      select seq,moduleID into v_seq,a_moduleID from I_DataModuleColumn where id = a_id;
      if to_number(a_paramStr) < v_seq then
        update I_DataModuleColumn set seq = seq+1 where moduleID=a_moduleID and seq >= to_number(a_paramStr) and seq < v_seq;
      elsif to_number(a_paramStr) > v_seq then
        update I_DataModuleColumn set seq = seq-1 where moduleID=a_moduleID and seq <= to_number(a_paramStr) and seq > v_seq;
      end if;
      update I_DataModuleColumn set seq = to_number(a_paramStr) where id = a_id;
    else
      Message := Message || '数据模块';

      update I_DataModule set colNum=(select count(*) from i_DataModulecolumn where moduleID = a_moduleID) where moduleID = a_moduleID;
    end if;

    Message := Message || '成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := Message || '失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- I_DataTableType : 数据类别管理
  procedure SP_I_DataTableTypeManager(
    a_type          in varchar2,
    a_tableTypeID   in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_tableTypeName varchar2(20);
    a_typeLevel     integer;
    a_parentID      integer;
    a_memo          varchar2(200);
    a_state         integer;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_tableTypeName := tmp;
          elsif N=2 then a_typeLevel := to_number(tmp);
          elsif N=3 then a_parentID := to_number(tmp);
          elsif N=4 then a_memo := tmp;
          elsif N=5 then a_state := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        select count(rowid) into counter from I_DataTableType where tableTypeName = a_tableTypeName;
        if counter > 0 then
          Message := '名称['||a_tableTypeName||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '添加';
        insert into I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,childNum,memo,state,Istdate,Uptdate)
             values(a_tableTypeID,a_tableTypeName,a_typeLevel,a_parentID,0,a_memo,a_state,sysdate,sysdate);

      elsif a_type = 'edit' then

        select count(rowid) into counter from I_DataTableType where tableTypeID <> a_tableTypeID and tableTypeName = a_tableTypeName;
        if counter > 0 then
          Message := '名称['||a_tableTypeName||']已经使用，请更改';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;

        Message := '修改';
        update I_DataTableType set
               tableTypeName  = a_tableTypeName,
               tableTypeID    = a_tableTypeID,
               typeLevel = a_typeLevel,
               parentID  = a_parentID,
               memo      = a_memo,
               state     = a_state,
               uptDate   = sysdate
        where tableTypeID = a_tableTypeID;
      end if;

      update I_DataTableType set childNum=(select count(*) from I_DataTableType where parentID = a_tableTypeID) where tableTypeID = a_tableTypeID;
      update I_DataTableType set childNum=childNum+(select count(*) from I_DataTable where tableTypeID = a_tableTypeID) where tableTypeID = a_tableTypeID;

    elsif a_type = 'del' then
      select parentID into a_parentID from I_DataTableType where tableTypeID = a_tableTypeID;

      Message := '删除';
      delete from I_DataTableType where tableTypeID = a_tableTypeID;

    end if;

    if a_parentID > 0 then
      update I_DataTableType set childNum=(select count(*) from I_DataTableType where parentID = a_parentID) where tableTypeID = a_parentID;
      update I_DataTableType set childNum=childNum+(select count(*) from I_DataTable where tableTypeID = a_parentID) where tableTypeID = a_parentID;
    end if;

    open ResultCursor for select '' sqlmsg from dual;
    Message := Message || '数据表类别成功!';
    commit;
  exception when others then
    rollback;
    Message := Message || '数据表类别失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- I_DataTableColumnExtInfo : 数据元字典管理
  procedure SP_I_DTColumnExtInfoManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_tableID       I_DataTableColumnExtInfo.Tableid%type;
    a_colid         I_DataTableColumnExtInfo.colid%type;
    a_extCode       I_DataTableColumnExtInfo.extCode%type;
    a_extNameZh     I_DataTableColumnExtInfo.extNameZh%type;
    a_extNameZhs    I_DataTableColumnExtInfo.extNameZhs%type;
    a_extNameEn     I_DataTableColumnExtInfo.extNameEn%type;
    a_extNameEns    I_DataTableColumnExtInfo.extNameEns%type;
    a_extNameFr1    I_DataTableColumnExtInfo.extNameFr1%type;
    a_extNameFr1s   I_DataTableColumnExtInfo.extNameFr1s%type;
    a_extNameFr2    I_DataTableColumnExtInfo.extNameFr2%type;
    a_extNameFr2s   I_DataTableColumnExtInfo.extNameFr2s%type;
    a_extNameFr3    I_DataTableColumnExtInfo.extNameFr3%type;
    a_extNameFr3s   I_DataTableColumnExtInfo.extNameFr3s%type;
    a_extDefine     I_DataTableColumnExtInfo.extDefine%type;
    a_extShow       I_DataTableColumnExtInfo.extShow%type;
    a_extLength     I_DataTableColumnExtInfo.extLength%type;
    a_extPrecision  I_DataTableColumnExtInfo.extPrecision%type;
    a_extUnit       I_DataTableColumnExtInfo.extUnit%type;
    a_extValueScope I_DataTableColumnExtInfo.extValueScope%type;
    a_extValueScopeTypeID  I_DataTableColumnExtInfo.extValueScopeTypeID%type;
    a_extValueScopeTypeParam  I_DataTableColumnExtInfo.extValueScopeTypeParam%type;
    a_extRelationSubCols  I_DataTableColumnExtInfo.extRelationSubCols%type;
    a_extKeyIDFlag  I_DataTableColumnExtInfo.extKeyIDFlag%type;
    a_extKeyNameFlag  I_DataTableColumnExtInfo.extKeyNameFlag%type;
    a_extKeywordFlag  I_DataTableColumnExtInfo.extKeywordFlag%type;
    a_extQueryByFlag  I_DataTableColumnExtInfo.extQueryByFlag%type;
    a_extSynName    I_DataTableColumnExtInfo.extSynName%type;
    a_extRelateEnvironment I_DataTableColumnExtInfo.extRelateEnvironment%type;
    a_extVersion    I_DataTableColumnExtInfo.extVersion%type;
    a_extMemo       I_DataTableColumnExtInfo.extMemo%type;
    a_state         I_DataTableColumnExtInfo.state%type;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_tableID := to_number(tmp);
          elsif N=2 then a_colid := to_number(tmp);
          elsif N=3 then a_extCode := to_number(tmp);
          elsif N=4 then a_extNameZh := tmp;
          elsif N=5 then a_extNameZhs := tmp;
          elsif N=6 then a_extNameEn := tmp;
          elsif N=7 then a_extNameEns := tmp;
          elsif N=8 then a_extNameFr1 := tmp;
          elsif N=9 then a_extNameFr1s := tmp;
          elsif N=10 then a_extNameFr2 := tmp;
          elsif N=11 then a_extNameFr2s := tmp;
          elsif N=12 then a_extNameFr3 := tmp;
          elsif N=13 then a_extNameFr3s := tmp;
          elsif N=14 then a_extDefine := tmp;
          elsif N=15 then a_extShow := tmp;
          elsif N=16 then a_extLength := to_number(tmp);
          elsif N=17 then a_extPrecision := to_number(tmp);
          elsif N=18 then a_extUnit := tmp;
          elsif N=19 then a_extValueScope := tmp;
          elsif N=20 then a_extValueScopeTypeID := to_number(tmp);
          elsif N=21 then a_extValueScopeTypeParam := tmp;
          elsif N=22 then a_extRelationSubCols := tmp;
          elsif N=23 then a_extKeyIDFlag := to_number(tmp);
          elsif N=24 then a_extKeyNameFlag := to_number(tmp);
          elsif N=25 then a_extKeywordFlag := to_number(tmp);
          elsif N=26 then a_extQueryByFlag := to_number(tmp);
          elsif N=27 then a_extSynName := tmp;
          elsif N=28 then a_extRelateEnvironment := tmp;
          elsif N=29 then a_extVersion := tmp;
          elsif N=30 then a_extMemo := tmp;
          elsif N=31 then a_state := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_extKeyIDFlag = 1 then
        select count(id) into counter from I_DataTableColumnExtInfo where tableID = a_tableID and colid <> a_colid and extKeyIDFlag = 1;
        if counter >= 1 then
          Message := '该系统已经限制了表主键不能超过1个！';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;
      end if;

      if a_extKeyNameFlag = 1 then
        select count(id) into counter from I_DataTableColumnExtInfo where tableID = a_tableID and colid <> a_colid and extKeyNameFlag = 1;
        if counter >= 2 then
          Message := '该系统已经限制了表主键不能超过2个！';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;
      end if;

      if a_type = 'add' then
        select count(id) into counter from I_DataTableColumnExtInfo where colid = a_colid and state=1;
        if counter > 0 then
          Message := '元数据已经存在！';
          open ResultCursor for select Message sqlmsg from dual;
          return;
        end if;
        Message := '添加';
        insert into I_DataTableColumnExtInfo(id,tableID,colid,extCode,extNameZh,extNameZhs,extNameEn,extNameEns,extNameFr1,extNameFr1s,extNameFr2,extNameFr2s,extNameFr3,extNameFr3s,extDefine,extShow,extLength,extPrecision,extUnit,extValueScope,extValueScopeTypeID,extValueScopeTypeParam,extRelationSubCols,extKeyIDFlag,extKeyNameFlag,extKeywordFlag,extQueryByFlag,extSynName,extRelateEnvironment,extVersion,extMemo,state,istDate,Uptdate)
             values(SF_GetMaxID('I_DataTableColumnExtInfo','id'),a_tableID,a_colid,a_extCode,a_extNameZh,a_extNameZhs,a_extNameEn,a_extNameEns,a_extNameFr1,a_extNameFr1s,a_extNameFr2,a_extNameFr2s,a_extNameFr3,a_extNameFr3s,a_extDefine,a_extShow,a_extLength,a_extPrecision,a_extUnit,a_extValueScope,a_extValueScopeTypeID,a_extValueScopeTypeParam,a_extRelationSubCols,a_extKeyIDFlag,a_extKeyNameFlag,a_extKeywordFlag,a_extQueryByFlag,a_extSynName,a_extRelateEnvironment,a_extVersion,a_extMemo,a_state,sysdate,sysdate);

      elsif a_type = 'edit' then
        Message := '修改';
        update I_DataTableColumnExtInfo set
               tableID = a_tableID,
               colid = a_colid,
               extCode = a_extCode,
               extNameZh = a_extNameZh,
               extNameZhs = a_extNameZhs,
               extNameEn = a_extNameEn,
               extNameEns = a_extNameEns,
               extNameFr1 = a_extNameFr1,
               extNameFr1s = a_extNameFr1s,
               extNameFr2 = a_extNameFr2,
               extNameFr2s = a_extNameFr2s,
               extNameFr3 = a_extNameFr3,
               extNameFr3s = a_extNameFr3s,
               extDefine = a_extDefine,
               extShow = a_extShow,
               extLength = a_extLength,
               extPrecision = a_extPrecision,
               extUnit = a_extUnit,
               extValueScope = a_extValueScope,
               extValueScopeTypeID = a_extValueScopeTypeID,
               extValueScopeTypeParam = a_extValueScopeTypeParam,
               extRelationSubCols = a_extRelationSubCols,
               extKeyIDFlag = a_extKeyIDFlag,
               extKeyNameFlag = a_extKeyNameFlag,
               extKeywordFlag = a_extKeywordFlag,
               extQueryByFlag = a_extQueryByFlag,
               extSynName = a_extSynName,
               extRelateEnvironment = a_extRelateEnvironment,
               extVersion = a_extVersion,
               extMemo = a_extMemo,
               state = a_state,
               uptDate     = sysdate
        where id = a_id;
      end if;

    elsif a_type = 'del' then

      Message := '删除';
      delete from I_DataTableColumnExtInfo where id = a_id;

    end if;

    commit;
    Message := Message || '数据元字典成功!';
    open ResultCursor for select '' sqlmsg from dual;
  exception when others then
    rollback;
    Message := Message || '数据元字典失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- I_Process : 流程管理
  procedure SP_I_ProcessManager(
    a_type          in varchar2,
    a_psid          in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_organID       I_Process.organID%type;
    a_processName   I_Process.processName%type;
    a_processType   I_Process.processType%type;
    a_creator       I_Process.creator%type;
    a_tableID       I_Process.tableID%type;
    a_state         I_Process.state%type;
    a_remark        I_Process.remark%type;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_organID := to_number(tmp);
          elsif N=2 then a_processName := tmp;
          elsif N=3 then a_processType := to_number(tmp);
          elsif N=4 then a_tableID := to_number(tmp);
          elsif N=5 then a_creator := to_number(tmp);
          elsif N=6 then a_state := to_number(tmp);
          elsif N=7 then a_remark := tmp;
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        Message := '添加';
        insert into I_Process(psid,organID,processName,processType,creator,tableID,remark,state,istDate,Uptdate)
             values(SF_GetMaxID('I_Process','psid'),a_organID,a_processName,a_processType,a_creator,a_tableID,a_remark,a_state,sysdate,sysdate);

      elsif a_type = 'edit' then
        Message := '修改';
        update I_Process set
               organID = a_organID,
               processName = a_processName,
               processType = a_processType,
               creator     = a_creator,
               tableID     = a_tableID,
               remark      = a_remark,
               state       = a_state,
               uptDate     = sysdate
        where psid = a_psid;
      end if;

    elsif a_type = 'copy' then

      Message := '复制';
      insert into I_Process(psid,organID,processName,processType,creator,tableID,remark,state,istDate,Uptdate)
      select SF_GetMaxID('I_Process','psid'),organID,processName||'<副>',processType,creator,tableID,remark,state,sysdate,sysdate
        from I_Process where psid = a_psid;

    elsif a_type = 'del' then

      Message := '删除';
      delete from I_Process where psid = a_psid;
      delete from I_ProcessDesc where psid = a_psid;

    end if;

    commit;
    Message := Message || '流程成功!';
    open ResultCursor for select '' sqlmsg from dual;
  exception when others then
    rollback;
    Message := Message || '流程失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- I_ProcessDesc : 流程过程说明管理
  procedure SP_I_ProcessDescManager(
    a_type          in varchar2,
    a_ccid          in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_psid          I_ProcessDesc.psid%type;
    a_seq           I_ProcessDesc.seq%type;
    a_processTitle  I_ProcessDesc.processTitle%type;
    a_processDesc   I_ProcessDesc.processDesc%type;
    a_nextSeq       I_ProcessDesc.nextSeq%type;
    a_conditions    I_ProcessDesc.conditions%type;
    a_processCols   I_ProcessDesc.processCols%type;
    a_processActorMode      I_ProcessDesc.processActorMode%type;
    a_processActor          I_ProcessDesc.processActor%type;
    a_processActorDepartment I_ProcessDesc.processActorDepartment%type;
    a_processActorRole      I_ProcessDesc.processActorRole%type;
    a_actorSelectRule       I_ProcessDesc.actorSelectRule%type;
    a_actorAutoSelectRule   I_ProcessDesc.actorAutoSelectRule%type;
    a_actorAutoSelectRuleMemo   I_ProcessDesc.actorAutoSelectRuleMemo%type;
    a_attachFilePower        I_ProcessDesc.attachFilePower%type;
    a_attachFileEditFlag     I_ProcessDesc.attachFileEditFlag%type;
    a_state         I_ProcessDesc.state%type;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
               if N=1 then a_psid := to_number(tmp);
          elsif N=2 then a_seq := to_number(tmp);
          elsif N=3 then a_processTitle := tmp;
          elsif N=4 then a_processDesc := tmp;
          elsif N=5 then a_nextSeq := tmp;
          elsif N=6 then a_conditions := tmp;
          elsif N=7 then a_processCols := tmp;
          elsif N=8 then a_processActorMode := to_number(tmp);
          elsif N=9 then a_processActor := tmp;
          elsif N=10 then a_processActorDepartment := tmp;
          elsif N=11 then a_processActorRole := tmp;
          elsif N=12 then a_actorSelectRule := to_number(tmp);
          elsif N=13 then a_actorAutoSelectRule := to_number(tmp);
          elsif N=14 then a_actorAutoSelectRuleMemo := tmp;
          elsif N=15 then a_attachFilePower := tmp;
          elsif N=16 then a_attachFileEditFlag := to_number(tmp);
          elsif N=17 then a_state := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        Message := '添加';
        insert into I_ProcessDesc(ccid,psid,seq,Processtitle,Processdesc,Nextseq,Conditions,ProcessCols,ProcessactorMode,Processactor,ProcessactorDepartment,ProcessactorRole,actorSelectRule,actorAutoSelectRule,actorAutoSelectRuleMemo,attachFilePower,attachFileEditFlag,state,istDate,Uptdate)
             values(SF_GetMaxID('I_ProcessDesc','ccid'),a_psid,a_seq,a_Processtitle,a_Processdesc,a_Nextseq,a_conditions,a_ProcessCols,a_ProcessactorMode,a_Processactor,a_ProcessactorDepartment,a_ProcessactorRole,a_actorSelectRule,a_actorAutoSelectRule,a_actorAutoSelectRuleMemo,a_attachFilePower,a_attachFileEditFlag,a_state,sysdate,sysdate);

      elsif a_type = 'edit' then
        Message := '修改';
        update I_ProcessDesc set
               psid                = a_psid,
               seq                 = a_seq,
               Processtitle        = a_Processtitle,
               Processdesc         = a_Processdesc,
               nextSeq             = a_nextSeq,
               conditions          = a_conditions,
               ProcessCols         = a_ProcessCols,
               ProcessactorMode    = a_ProcessactorMode,
               Processactor        = a_Processactor,
               processActorDepartment = a_processActorDepartment,
               processActorRole    = a_processActorRole,
               actorSelectRule     = a_actorSelectRule,
               actorAutoSelectRule = a_actorAutoSelectRule,
               actorAutoSelectRuleMemo = a_actorAutoSelectRuleMemo,
               attachFilePower      = a_attachFilePower,
               attachFileEditFlag   = a_attachFileEditFlag,
               state       = a_state,
               uptDate     = sysdate
        where ccid = a_ccid;
      end if;

    elsif a_type = 'del' then

      Message := '删除';
      delete from I_ProcessDesc where ccid = a_ccid;

    end if;

    commit;
    Message := Message || '流程过程说明成功!';
    open ResultCursor for select '' sqlmsg from dual;
  exception when others then
    rollback;
    Message := Message || '流程过程说明失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- IB_Process : 工作流程管理
  procedure SP_IB_ProcessManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_processID     IB_Process.processID%type;
    a_processTitle  IB_Process.processTitle%type;
    a_organID       IB_Process.organID%type;
    a_psid          IB_Process.psid%type;
    a_tableID       IB_Process.tableID%type;
    a_dataid        IB_Process.dataid%type;
    a_creator       IB_Process.creator%type;
    a_curSeq        IB_Process.curSeq%type;
    a_curActor      IB_Process.curActor%type;
    a_curStatus     IB_Process.curStatus%type;
    a_dealFlag      IB_Process.dealFlag%type;
    a_state         IB_Process.state%type;
    a_remark        IB_Process.remark%type;
    a_processSeq           IB_ProcessDetail.seq%type;
    a_processActor         IB_ProcessDetail.actor%type;
    a_processStatus        IB_ProcessDetail.status%type;
    a_processActResult     IB_ProcessDetail.actResult%type;
    a_processActMemo       IB_ProcessDetail.actMemo%type;
  begin
    a_processID := a_id;
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_processTitle := tmp;
          elsif N=2 then a_organID := to_number(tmp);
          elsif N=3 then a_psid := to_number(tmp);
          elsif N=4 then a_tableID := to_number(tmp);
          elsif N=5 then a_dataid := to_number(tmp);
          elsif N=6 then a_creator := to_number(tmp);
          elsif N=7 then a_curSeq := to_number(tmp);
          elsif N=8 then a_curActor := tmp;
          elsif N=9 then a_curStatus := tmp;
          elsif N=10 then a_dealFlag := to_number(tmp);
          elsif N=11 then a_state := to_number(tmp);
          elsif N=12 then a_remark := tmp;
          elsif N=13 then a_processSeq := to_number(tmp);
          elsif N=14 then a_processActor := to_number(tmp);
          elsif N=15 then a_processStatus := tmp;
          elsif N=16 then a_processActResult := to_number(tmp);
          elsif N=17 then a_processActMemo := tmp;
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        Message := '提交';
        select SF_GetMaxID('IB_Process','processID') into a_processID from dual;
        insert into IB_Process(processID,processTitle,organID,psid,tableID,dataid,creator,curSeq,curActor,curStatus,dealFlag,state,remark,istDate,uptDate)
             values(a_processID,a_processTitle,a_organID,a_psid,a_tableID,a_dataid,a_creator,a_curSeq,a_curActor,a_curStatus,a_dealFlag,a_state,a_remark,sysdate,sysdate);
        insert into IB_ProcessDetail(id,processID,seq,actor,status,actResult,actMemo,istDate,uptDate)
             values(SF_GetMaxID('IB_ProcessDetail','id'),a_processID,a_processSeq,a_processActor,a_processStatus,a_processActResult,a_processActMemo,sysdate,sysdate);

      elsif a_type = 'edit' then
        Message := '处理';
        update IB_Process set
               processTitle = a_processTitle,
               organID = a_organID,
               psid = a_psid,
               tableID = a_tableID,
               dataid = a_dataid,
               creator = a_creator,
               curSeq = a_curSeq,
               curActor = a_curActor,
               curStatus = a_curStatus,
               dealFlag = a_dealFlag,
               state = a_state,
               remark = a_remark,
               istDate = sysdate,
               uptDate = sysdate
        where processID = a_id;

        insert into IB_ProcessDetail(id,processID,seq,actor,status,actResult,actMemo,istDate,uptDate)
             values(SF_GetMaxID('IB_ProcessDetail','id'),a_id,a_processSeq,a_processActor,a_processStatus,a_processActResult,a_processActMemo,sysdate,sysdate);
      end if;

    elsif a_type = 'del' then

      Message := '删除';
      declare v_tableID int;v_tableName varchar2(50);v_dataid number;
      begin
        select tableID,dataid into v_tableID,v_dataid from IB_Process where processID=a_id;
        select tableName into v_tableName from I_DataTable where tableID=v_tableID;
        execute immediate 'delete from '||v_tableName||' where dataid='||v_dataid;
      end;
      delete from IB_Process where processID = a_id;
      delete from IB_ProcessDetail where processID = a_id;

    end if;
    commit;
    Message := Message || '工作流程成功.id='||a_processID;
    open ResultCursor for select '' sqlmsg from dual;
  exception when others then
    rollback;
    Message := Message || '工作流程失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- B_Data : 数据管理
  procedure SP_B_DataManager(
    a_type          in varchar2,
    a_dataid        in number,
    a_tableID       in number,
    a_keyword       in varchar2,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    a_operator      in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;
    v_paramStr      VARCHAR2(8000);
    tmp             VARCHAR2(8000);
    splitlen        integer;
    N               integer;
    v_tmpdataid     number;
    a_tableName     I_DataTable.tableName%type;
    a_tableMemo     I_DataTable.tableMemo%type;
    a_parentTableID I_DataTable.parentTableID%type;
    a_sequenceFlag  I_DataTable.sequenceFlag%type;
    v_istDate       VARCHAR2(100);
    a_dataSctLevel  integer;
    a_dataStatus    integer;
    a_dataMemo      VARCHAR2(100);
    v_colName       I_DataTableColumn.Colname%type;
    v_colMemo       I_DataTableColumn.Colmemo%type;
    v_extKeyIDFlag  I_DataTableColumnExtInfo.Extkeyidflag%type;
    v_extKeyNameFlag I_DataTableColumnExtInfo.Extkeynameflag%type;
    v_sql           VARCHAR2(8000);
    v_index         int;
    v_keyIndex_0    int;
    v_keyName_0     I_DataTableColumn.Colname%type;
    v_keyMemo_0     I_DataTableColumn.Colmemo%type;
    v_keyValue_0    VARCHAR2(200);
    v_keyIndex_1    int;
    v_keyName_1     I_DataTableColumn.Colname%type;
    v_keyMemo_1     I_DataTableColumn.Colmemo%type;
    v_keyValue_1    VARCHAR2(200);
    v_keyIndex_2    int;
    v_keyName_2     I_DataTableColumn.Colname%type;
    v_keyMemo_2     I_DataTableColumn.Colmemo%type;
    v_keyValue_2    VARCHAR2(200);
    v_parentDataid  number;
  begin
    select tableName,tableMemo,parentTableID,sequenceFlag into a_tableName,a_tableMemo,a_parentTableID,a_sequenceFlag from I_DataTable where tableID = a_tableID;

    if a_type = 'add' or a_type = 'edit' or a_type = 'del' or a_type = 'copy' or a_type = 'delStatus' then
        v_tmpdataid := a_dataid;
        DECLARE CURSOR v_rs IS select a.colName,a.colMemo,b.extKeyIDFlag,b.extKeyNameFlag from I_DataTableColumn a, I_DataTableColumnExtInfo b where a.colid=b.colid(+) and a.tableID = a_tableID order by a.seq,a.colid;
        begin
        if a_dataid > 0 and a_type <> 'copy' then
            v_sql := 'insert into Z' || a_tableName || '(iid,imemo,dataid,dataSctLevel,dataStatus,keyword,';
            open v_rs;
            LOOP
              FETCH v_rs INTO v_colName, v_colMemo, v_extKeyIDFlag, v_extKeyNameFlag;
              exit when v_rs%notfound;
              v_sql := v_sql || v_colName || ',';
            END LOOP;
            close v_rs;

            if a_parentTableID > 0 then v_sql := v_sql ||'parentDataid,'; end if;
            v_sql := v_sql || 'istDate,uptDate) select SEQ_Z_DataHis_IID.nextval, to_char(sysdate,''yyyy-mm-dd hh24:mi'')||'' '||a_type||' by '||a_operator||''','||a_dataid||', dataSctLevel, dataStatus, keyword,';
            open v_rs;
            LOOP
              FETCH v_rs INTO v_colName, v_colMemo, v_extKeyIDFlag, v_extKeyNameFlag;
              exit when v_rs%notfound;
              v_sql := v_sql || v_colName ||',';
            END LOOP;
            close v_rs;
            if a_parentTableID > 0 then v_sql := v_sql ||'parentDataid,'; end if;
            v_sql := v_sql || 'istDate,sysdate from ' || a_tableName || ' where dataid = '||a_dataid;
            --插入历史表
            execute immediate v_sql;
            --删除原记录
            execute immediate 'select ''pkg_pcace_web.SF_toDate(''''''||to_char(istdate,''yyyy-mm-dd hh24:mi:ss'')||'''''')'' from ' || a_tableName || ' where dataid = '||a_dataid into v_istDate;
            execute immediate 'delete from ' || a_tableName || ' where dataid = '||a_dataid;
        end if;

        if a_type = 'add' or a_type = 'edit' then -- 编辑: a_type 也是=add，所以不存在 a_type = 'edit'
          splitlen := length(a_spliter||'a')-1;
          v_paramStr := a_paramStr;
          for N in 1..2 loop
              tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
                 if N=1 then a_dataSctLevel := to_number(tmp);
              elsif N=2 then a_dataStatus := to_number(tmp);
              end if;
              v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
          end loop;

          if a_dataid = -1 then
              Message := '添加';
              if a_sequenceFlag = 1 then
                  execute immediate 'select SEQ'||a_tableName||'.nextval from dual' into v_tmpdataid;
              else
                  select SF_GetMaxID(a_tableName,'dataid') into v_tmpdataid from dual;
              end if;
              v_istDate := 'sysdate';

          elsif a_dataid > 0 then
              Message := '修改';
          end if;

          v_sql := 'insert into ' || a_tableName || '(dataid,dataSctLevel,dataStatus,keyword,';
          open v_rs;
          v_index := 0;
          v_keyIndex_1 := -1;
          v_keyIndex_2 := -1;
          LOOP
            FETCH v_rs INTO v_colName, v_colMemo, v_extKeyIDFlag, v_extKeyNameFlag;
            exit when v_rs%notfound;
            v_sql := v_sql || v_colName || ',';

            if v_extKeyIDFlag = 1 then
              v_keyIndex_0 := v_index;
              v_keyName_0 := v_colName;
              v_keyMemo_0 := v_colMemo;
            end if;
            if v_extKeyNameFlag = 1 then
              if v_keyIndex_1 = -1 then
                v_keyIndex_1 := v_index;
                v_keyName_1 := v_colName;
                v_keyMemo_1 := v_colMemo;
              elsif v_keyIndex_2 = -1 then
                v_keyIndex_2 := v_index;
                v_keyName_2 := v_colName;
                v_keyMemo_2 := v_colMemo;
              end if;
            end if;
            v_index := v_index + 1;
          END LOOP;
          close v_rs;

          if a_parentTableID > 0 then v_sql := v_sql ||'parentDataid,'; end if;
          v_sql := v_sql || 'istDate,uptDate) values(' || v_tmpdataid ||','||a_dataSctLevel||','||a_dataStatus||','''||a_keyword||''',';
          for N in 3..a_preCount loop
              tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);

              if v_keyIndex_0+3 = N then
                v_keyValue_0 := tmp;
              end if;
              if v_keyIndex_1+3 = N then
                v_keyValue_1 := tmp;
              end if;
              if v_keyIndex_2+3 = N then
                v_keyValue_2 := tmp;
              end if;
              if a_parentTableID > 0 and N = a_preCount then
                v_parentDataid := to_number(tmp);
              end if;

              if instr(tmp, 'to_date') > 0 then
                v_sql := v_sql || tmp || ',';
              else
                v_sql := v_sql || '''' || tmp || ''',';
              end if;
              v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
          end loop;
          v_sql := v_sql || v_istDate|| ',sysdate)';


          if v_keyName_0 is not null then
            tmp := 'select count(dataid) from ' || a_tableName || ' where '||v_keyName_0||'='''||v_keyValue_0||'''';
            if a_parentTableID > 0 then tmp := tmp ||' and parentDataid='||v_parentDataid; end if;
            if a_dataid > 0 and a_type <> 'copy' then tmp := tmp ||' and dataid<>'||a_dataid; end if;
            execute immediate tmp into counter;
            if counter > 0 then
              rollback;
              Message := v_keyMemo_0||'['||v_keyValue_0||']已经存在，请更改！';
              open ResultCursor for select Message sqlmsg from dual;
              return;
            end if;
          end if;
          /*
          if v_keyName_1 is not null then
            tmp := 'select count(dataid) from ' || a_tableName || ' where '||v_keyName_1||'='''||v_keyValue_1||'''';
            if v_keyName_2 is not null then
              tmp := tmp ||' and '||v_keyName_2||'='''||v_keyValue_2||'''';
            end if;
            if a_parentTableID > 0 then tmp := tmp ||' and parentDataid='||v_parentDataid; end if;
            if a_dataid > 0 and a_type <> 'copy' then tmp := tmp ||' and dataid<>'||a_dataid; end if;
            execute immediate tmp into counter;
            if counter > 0 then
              Message := v_keyMemo_1||'['||v_keyValue_1||']已经存在，请更改！';
              open ResultCursor for select Message sqlmsg from dual;
              return;
            end if;
          end if;*/

          execute immediate v_sql;

        elsif a_type = 'copy' then
          Message := '复制添加';
          if a_sequenceFlag = 1 then
              execute immediate 'select SEQ'||a_tableName||'.nextval from dual' into v_tmpdataid;
          else
              select SF_GetMaxID(a_tableName,'dataid') into v_tmpdataid from dual;
          end if;

          v_sql := 'insert into ' || a_tableName || '(dataid,dataSctLevel,dataStatus,keyword,';
          open v_rs;
          LOOP
            FETCH v_rs INTO v_colName, v_colMemo, v_extKeyIDFlag, v_extKeyNameFlag;
            exit when v_rs%notfound;
            v_sql := v_sql || v_colName || ',';
          END LOOP;
          close v_rs;

          if a_parentTableID > 0 then v_sql := v_sql ||'parentDataid,'; end if;
          v_sql := v_sql || 'istDate,uptDate) select ' || SF_GetMaxID(a_tableName,'dataid') ||', dataSctLevel, dataStatus, keyword,';
          v_keyIndex_1 := -1;
          open v_rs;
          LOOP
            FETCH v_rs INTO v_colName, v_colMemo, v_extKeyIDFlag, v_extKeyNameFlag;
            exit when v_rs%notfound;
            if v_extKeyNameFlag = 1 and v_keyIndex_1 = -1 then
                v_keyIndex_1 := 1;
                v_sql := v_sql || v_colName || '||''[副]'',';
            else
                v_sql := v_sql || v_colName || ',';
            end if;
          END LOOP;
          close v_rs;
          
          if a_parentTableID > 0 then
            if length(a_paramStr)>0 then
                v_sql := v_sql ||a_paramStr||',';
            else
                v_sql := v_sql ||'parentDataid,';
            end if;
          end if;
          v_sql := v_sql || 'istDate,sysdate from ' || a_tableName || ' where dataid = '||a_dataid;
          --插入
          execute immediate v_sql;

        elsif a_type = 'del' then
          Message := '删除';
          
        elsif a_type = 'delStatus' then
          Message := '更新为删除状态';
          execute immediate 'update ' || a_tableName || ' set dataStatus=-2 where dataid = '||a_dataid;
          
        end if;

        end;
    elsif a_type = 'updateStatus' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..2 loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_dataStatus := to_number(tmp);
          elsif N=2 then a_dataMemo := tmp;
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      Message := '更新';
      execute immediate 'update ' || a_tableName || ' set dataStatus='||a_dataStatus||' where dataid = '||a_dataid;

    end if;

    execute immediate 'select count(dataid) from ' || a_tableName || '' into counter;
    if counter > 0 then
        update I_DataTable set dataNum=counter where tableID = a_tableID;
    end if;
    open ResultCursor for select '' sqlmsg from dual;
    Message := Message || a_tableMemo || '成功.';
    if (a_type = 'add' and a_dataid = -1) or a_type = 'copy' then Message := Message || 'dataid=' || v_tmpdataid; end if;
    commit;
  exception when others then
    rollback;
    Message := Message || a_tableMemo || '失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- IB_Formation: 体系管理
  procedure SP_IB_FormationManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;

    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_formationID   IB_Formation.formationID%type;
    a_formationName IB_Formation.formationName%type;
    a_formationType IB_Formation.formationType%type;
    a_nodeType      IB_Formation.nodeType%type;
    a_parentID      IB_Formation.parentID%type;
    a_state         IB_Formation.state%type;
    a_memo          IB_Formation.memo%type;
    a_ext1          IB_Formation.ext1%type;
    a_ext2          IB_Formation.ext2%type;
    a_ext3          IB_Formation.ext3%type;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_formationName := tmp;
          elsif N=2 then a_formationType := to_number(tmp);
          elsif N=3 then a_nodeType := to_number(tmp);
          elsif N=4 then a_parentID := to_number(tmp);
          elsif N=5 then a_memo := tmp;
          elsif N=6 then a_state := to_number(tmp);
          elsif N=7 then a_ext1 := tmp;
          elsif N=8 then a_ext2 := tmp;
          elsif N=9 then a_ext3 := tmp;
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        select count(formationID) into counter from IB_Formation where formationType=a_formationType and parentID=a_parentID and formationName=a_formationName;
        if counter>0 then
            Message := '相同的名称已存在，请检查！';
            open ResultCursor for select Message sqlmsg from dual;
            return;
        end if;
        Message := '添加';
        insert into IB_Formation(formationID,formationName,formationType,nodeType,parentID,state,memo,ext1,ext2,ext3,istDate,Uptdate)
             values(SEQ_IB_Formation_ID.Nextval,a_formationName,a_formationType,a_nodeType,a_parentID,a_state,a_memo,a_ext1,a_ext2,a_ext3,sysdate,sysdate);

      elsif a_type = 'edit' then
        select count(formationID) into counter from IB_Formation where formationID<>a_id and formationType=a_formationType and parentID=a_parentID and formationName=a_formationName;
        if counter>0 then
            Message := '相同的名称已存在，请检查！';
            open ResultCursor for select Message sqlmsg from dual;
            return;
        end if;
        Message := '修改';
        update IB_Formation set
               formationName = a_formationName,
               formationType = a_formationType,
               nodeType      = a_nodeType,
               parentID      = a_parentID,
               state         = a_state,
               memo          = a_memo,
               ext1          = a_ext1,
               ext2          = a_ext2,
               ext3          = a_ext3,
               uptDate       = sysdate
        where formationID = a_id;
      end if;

    elsif a_type = 'copy' then
      Message := '复制';
      select SEQ_IB_Formation_ID.Nextval into a_formationID from dual;
      insert into IB_Formation(formationID,formationName,formationType,nodeType,parentID,state,memo,ext1,ext2,ext3)
           select a_formationID,formationName||'[副]',formationType,nodeType,parentID,state,memo,ext1,ext2,ext3 from IB_Formation where formationID = a_id;

      tmp := a_id;
      select count(*) into counter from IB_Formation where parentID=a_id;

        DECLARE CURSOR v_rs IS select formationID from IB_Formation where parentID=tmp;
        begin
          open v_rs;
          LOOP
            FETCH v_rs INTO tmp;
            exit when v_rs%notfound;
            null;--??????????????????????????????????????????????????????????????????
          END LOOP;
          close v_rs;
        end;

    elsif a_type = 'del' then
      select parentID into a_parentID from IB_Formation where formationID = a_id;

      Message := '删除';
      delete from IB_Formation where formationID = a_id;

    end if;

    if a_parentID > 0 then
      update IB_Formation set childNum=(select count(*) from IB_Formation where parentID = a_parentID) where formationID = a_parentID;
    end if;

    Message := Message || '体系成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := Message || '体系失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- IB_DataAttachFile : 多媒体资料管理
  procedure SP_IB_DataAttachFileManager(
    a_type          in varchar2,
    a_id            in number,
    a_paramStr      in varchar2,
    a_spliter       in varchar2,
    a_preCount      in number,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    v_paramStr      VARCHAR2(4000);
    tmp             VARCHAR2(500);
    splitlen        integer;
    N               integer;
    a_tableID       IB_DataAttachFile.tableID%type;
    a_dataid        IB_DataAttachFile.dataid%type;
    a_fileName      IB_DataAttachFile.fileName%type;
    a_fileMemo      IB_DataAttachFile.fileMemo%type;
    a_fileType      IB_DataAttachFile.fileType%type;
    a_fileFormat    IB_DataAttachFile.fileFormat%type;
    a_fileSize      IB_DataAttachFile.fileSize%type;
  begin
    if a_type = 'add' or a_type = 'edit' then

      splitlen := length(a_spliter||'a')-1;
      v_paramStr := a_paramStr;
      for N in 1..a_preCount loop
          tmp := substr(v_paramStr, 1, instr(v_paramStr, a_spliter)-1);
             if N=1 then a_tableID := to_number(tmp);
          elsif N=2 then a_dataid := to_number(tmp);
          elsif N=3 then a_fileName := tmp;
          elsif N=4 then a_fileMemo := tmp;
          elsif N=5 then a_fileType := to_number(tmp);
          elsif N=6 then a_fileFormat := tmp;
          elsif N=7 then a_fileSize := to_number(tmp);
          end if;
          v_paramStr := substr(v_paramStr, instr(v_paramStr, a_spliter)+splitlen, length(v_paramStr));
      end loop;

      if a_type = 'add' then
        Message := '添加';
        insert into IB_DataAttachFile(id,tableID,dataid,fileName,fileMemo,fileType,fileFormat,fileSize,istDate,Uptdate)
             values(SEQ_IB_DataAttachFile_ID.nextval,a_tableID,a_dataid,a_fileName,a_fileMemo,a_fileType,a_fileFormat,a_fileSize,sysdate,sysdate);

      elsif a_type = 'edit' then
        Message := '修改';
        update IB_DataAttachFile set
               --tableID     = a_tableID,
               --dataid      = a_dataid,
               --fileName    = a_fileName,
               fileMemo    = a_fileMemo,
               --fileType    = a_fileType,
               --fileFormat  = a_fileFormat,
               --fileSize    = a_fileSize,
               uptDate     = sysdate
        where id = a_id;
      end if;

    elsif a_type = 'del' then
      Message := '删除';
      delete from IB_DataAttachFile where id = a_id;

    elsif a_type = 'dels' then
      Message := '批量删除';
      execute immediate ('delete from IB_DataAttachFile where id in ('||a_paramStr||')');

    end if;

    Message := Message || '多媒体资料成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := Message||'多媒体资料失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- Log : 日志
  procedure P_Log(
    a_context        in varchar2,
    a_operator       in varchar2)
  is
  begin
    insert into T_SLog(Id,Logtype,title,Context,oid,userID,userName,Ipaddress,Istdate)
       values(SEQ_T_Log_ID.nextval,4,'库内作业日志',a_context,-1,0,a_operator,'0.0.0.1',sysdate);
  exception when others then
    null;
    --rollback;
  end;
  
end pkg_pcace_web;
/


spool off


