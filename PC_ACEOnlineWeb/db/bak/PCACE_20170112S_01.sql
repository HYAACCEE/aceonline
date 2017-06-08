prompt PL/SQL Developer import file
prompt Created on 2017年1月12日 by Administrator
set feedback off
set define off
prompt Dropping I_AREA...
drop table I_AREA cascade constraints;
prompt Dropping I_BULLETIN...
drop table I_BULLETIN cascade constraints;
prompt Dropping I_DATAMODULE...
drop table I_DATAMODULE cascade constraints;
prompt Dropping I_DATAMODULECOLUMN...
drop table I_DATAMODULECOLUMN cascade constraints;
prompt Dropping I_DATAPARAMTYPE...
drop table I_DATAPARAMTYPE cascade constraints;
prompt Dropping I_DATATABLE...
drop table I_DATATABLE cascade constraints;
prompt Dropping I_DATATABLECOLUMN...
drop table I_DATATABLECOLUMN cascade constraints;
prompt Dropping I_DATATABLECOLUMNEXTINFO...
drop table I_DATATABLECOLUMNEXTINFO cascade constraints;
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
prompt Dropping Y_APPMODULE...
drop table Y_APPMODULE cascade constraints;
prompt Dropping Y_APPMODULEDETAIL...
drop table Y_APPMODULEDETAIL cascade constraints;
prompt Dropping Y_APPROLE...
drop table Y_APPROLE cascade constraints;
prompt Dropping Y_APPROLEMODULE...
drop table Y_APPROLEMODULE cascade constraints;
prompt Dropping Y_APPVERSION...
drop table Y_APPVERSION cascade constraints;
prompt Dropping Y_BULLETIN...
drop table Y_BULLETIN cascade constraints;
prompt Dropping Y_DEPARTMENT...
drop table Y_DEPARTMENT cascade constraints;
prompt Dropping Y_DOTMODULE...
drop table Y_DOTMODULE cascade constraints;
prompt Dropping Y_DOTMODULEDETAIL...
drop table Y_DOTMODULEDETAIL cascade constraints;
prompt Dropping Y_DOTROLE...
drop table Y_DOTROLE cascade constraints;
prompt Dropping Y_DOTROLEMODULE...
drop table Y_DOTROLEMODULE cascade constraints;
prompt Dropping Y_DOTUSER...
drop table Y_DOTUSER cascade constraints;
prompt Dropping Y_EMP...
drop table Y_EMP cascade constraints;
prompt Dropping Y_JOBPOSITION...
drop table Y_JOBPOSITION cascade constraints;
prompt Dropping Y_ORGAN...
drop table Y_ORGAN cascade constraints;
prompt Dropping Y_RS_COMPUTER...
drop table Y_RS_COMPUTER cascade constraints;
prompt Dropping Y_RS_OTHERS...
drop table Y_RS_OTHERS cascade constraints;
prompt Dropping Y_SERVER...
drop table Y_SERVER cascade constraints;
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
alter table I_AREA
  add constraint I_AREA_PK primary key (AREAID)
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
alter table I_BULLETIN
  add constraint I_BULLETIN_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating I_DATAMODULE...
create table I_DATAMODULE
(
  moduleid       VARCHAR2(30) not null,
  modulename     VARCHAR2(50) not null,
  viewname       VARCHAR2(50) not null,
  viewsql        VARCHAR2(1000) not null,
  tableids       VARCHAR2(100) not null,
  colnum         NUMBER(4) default 0,
  othercondition VARCHAR2(200),
  otherbuttons   VARCHAR2(200),
  state          CHAR(1) default '1',
  istdate        DATE default sysdate,
  uptdate        DATE default sysdate
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
alter table I_DATAMODULE
  add constraint I_DATAMODULE_PK primary key (MODULEID)
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

prompt Creating I_DATAMODULECOLUMN...
create table I_DATAMODULECOLUMN
(
  id             NUMBER(9) not null,
  moduleid       VARCHAR2(30) not null,
  tableid        NUMBER(6) not null,
  colid          NUMBER(9) not null,
  colmemo        VARCHAR2(100),
  colstr         VARCHAR2(100),
  colname        VARCHAR2(30),
  colname_as     VARCHAR2(20),
  sctlevel       NUMBER(6) not null,
  seq            NUMBER(6) not null,
  groupfunc      NUMBER(6) not null,
  listshowflag   CHAR(1) default 1,
  showwidth      NUMBER(6) default 0,
  formshowflag   CHAR(1) default 1,
  otherbuttons   VARCHAR2(200),
  extkeywordflag CHAR(1) default '0',
  extquerybyflag CHAR(1) default '0',
  state          CHAR(1) default '1',
  istdate        DATE default sysdate,
  uptdate        DATE default sysdate
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
alter table I_DATAMODULECOLUMN
  add constraint I_DATAMODULECOLUMN_PK primary key (ID)
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

prompt Creating I_DATAPARAMTYPE...
create table I_DATAPARAMTYPE
(
  paramclassid NUMBER(6) not null,
  classname    VARCHAR2(100) not null,
  classnameen  VARCHAR2(100),
  classnameen2 VARCHAR2(100),
  classnameen3 VARCHAR2(100),
  classnameen4 VARCHAR2(100),
  classnameen5 VARCHAR2(100),
  typelevel    NUMBER(6) not null,
  parentid     NUMBER(6),
  childnum     NUMBER(9) default 0,
  memo         VARCHAR2(200),
  state        CHAR(1) default '1',
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate
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
alter table I_DATAPARAMTYPE
  add constraint I_DATAPARAMTYPE_PK primary key (PARAMCLASSID)
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
alter table I_DATATABLE
  add constraint I_DATATABLE_PK primary key (TABLEID)
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
alter table I_DATATABLECOLUMN
  add constraint I_DATATABLECOLUMN_PK primary key (COLID)
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
  extnamefr1             VARCHAR2(100),
  extnamefr1s            VARCHAR2(20),
  extnamefr2             VARCHAR2(100),
  extnamefr2s            VARCHAR2(20),
  extnamefr3             VARCHAR2(100),
  extnamefr3s            VARCHAR2(20),
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
alter table I_DATATABLECOLUMNEXTINFO
  add constraint I_DATATABLECOLUMNEXTINFO_PK primary key (ID)
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
alter table I_DATATABLETYPE
  add constraint I_DATATABLETYPE_PK primary key (TABLETYPEID)
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
alter table I_PROCESS
  add constraint I_PROCESS_PK primary key (PSID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table I_PROCESSDESC
  add constraint I_PROCESSDESC_PK primary key (CCID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table I_SYSTEMPARAM
  add constraint I_SYSTEMPARAM_PK primary key (ID)
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
alter table S_MODULE
  add constraint S_MODULE_PK primary key (MODULEID)
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
alter table S_PARAM
  add primary key (ID)
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
alter table S_PLATFORM
  add constraint S_PLATFORM_PK primary key (PLATFORMID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table S_QUICKMENU
  add primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
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

prompt Creating Y_APPMODULE...
create table Y_APPMODULE
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
alter table Y_APPMODULE
  add constraint Y_APPMODULE_PK primary key (DATAID)
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

prompt Creating Y_APPMODULEDETAIL...
create table Y_APPMODULEDETAIL
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
alter table Y_APPMODULEDETAIL
  add constraint Y_APPMODULEDETAIL_PK primary key (DATAID)
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

prompt Creating Y_APPROLE...
create table Y_APPROLE
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
alter table Y_APPROLE
  add constraint Y_APPROLE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_APPROLEMODULE...
create table Y_APPROLEMODULE
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
alter table Y_APPROLEMODULE
  add constraint Y_APPROLEMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_APPVERSION...
create table Y_APPVERSION
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
alter table Y_APPVERSION
  add constraint Y_APPVERSION_PK primary key (DATAID)
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

prompt Creating Y_BULLETIN...
create table Y_BULLETIN
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
alter table Y_BULLETIN
  add constraint Y_BULLETIN_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_DEPARTMENT...
create table Y_DEPARTMENT
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
alter table Y_DEPARTMENT
  add constraint Y_DEPARTMENT_PK primary key (DATAID)
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

prompt Creating Y_DOTMODULE...
create table Y_DOTMODULE
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
alter table Y_DOTMODULE
  add constraint Y_DOTMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_DOTMODULEDETAIL...
create table Y_DOTMODULEDETAIL
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
alter table Y_DOTMODULEDETAIL
  add constraint Y_DOTMODULEDETAIL_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_DOTROLE...
create table Y_DOTROLE
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
alter table Y_DOTROLE
  add constraint Y_DOTROLE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_DOTROLEMODULE...
create table Y_DOTROLEMODULE
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
alter table Y_DOTROLEMODULE
  add constraint Y_DOTROLEMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_DOTUSER...
create table Y_DOTUSER
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
alter table Y_DOTUSER
  add constraint Y_DOTUSER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_EMP...
create table Y_EMP
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
alter table Y_EMP
  add constraint Y_EMP_PK primary key (DATAID)
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

prompt Creating Y_JOBPOSITION...
create table Y_JOBPOSITION
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
alter table Y_JOBPOSITION
  add constraint Y_JOBPOSITION_PK primary key (DATAID)
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

prompt Creating Y_ORGAN...
create table Y_ORGAN
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
alter table Y_ORGAN
  add constraint Y_ORGAN_PK primary key (DATAID)
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

prompt Creating Y_RS_COMPUTER...
create table Y_RS_COMPUTER
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
alter table Y_RS_COMPUTER
  add constraint Y_RS_COMPUTER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_RS_OTHERS...
create table Y_RS_OTHERS
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
alter table Y_RS_OTHERS
  add constraint Y_RS_OTHERS_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating Y_SERVER...
create table Y_SERVER
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
alter table Y_SERVER
  add constraint Y_SERVER_PK primary key (DATAID)
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

prompt Disabling triggers for I_AREA...
alter table I_AREA disable all triggers;
prompt Disabling triggers for I_BULLETIN...
alter table I_BULLETIN disable all triggers;
prompt Disabling triggers for I_DATAMODULE...
alter table I_DATAMODULE disable all triggers;
prompt Disabling triggers for I_DATAMODULECOLUMN...
alter table I_DATAMODULECOLUMN disable all triggers;
prompt Disabling triggers for I_DATAPARAMTYPE...
alter table I_DATAPARAMTYPE disable all triggers;
prompt Disabling triggers for I_DATATABLE...
alter table I_DATATABLE disable all triggers;
prompt Disabling triggers for I_DATATABLECOLUMN...
alter table I_DATATABLECOLUMN disable all triggers;
prompt Disabling triggers for I_DATATABLECOLUMNEXTINFO...
alter table I_DATATABLECOLUMNEXTINFO disable all triggers;
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
prompt Disabling triggers for Y_APPMODULE...
alter table Y_APPMODULE disable all triggers;
prompt Disabling triggers for Y_APPMODULEDETAIL...
alter table Y_APPMODULEDETAIL disable all triggers;
prompt Disabling triggers for Y_APPROLE...
alter table Y_APPROLE disable all triggers;
prompt Disabling triggers for Y_APPROLEMODULE...
alter table Y_APPROLEMODULE disable all triggers;
prompt Disabling triggers for Y_APPVERSION...
alter table Y_APPVERSION disable all triggers;
prompt Disabling triggers for Y_BULLETIN...
alter table Y_BULLETIN disable all triggers;
prompt Disabling triggers for Y_DEPARTMENT...
alter table Y_DEPARTMENT disable all triggers;
prompt Disabling triggers for Y_DOTMODULE...
alter table Y_DOTMODULE disable all triggers;
prompt Disabling triggers for Y_DOTMODULEDETAIL...
alter table Y_DOTMODULEDETAIL disable all triggers;
prompt Disabling triggers for Y_DOTROLE...
alter table Y_DOTROLE disable all triggers;
prompt Disabling triggers for Y_DOTROLEMODULE...
alter table Y_DOTROLEMODULE disable all triggers;
prompt Disabling triggers for Y_DOTUSER...
alter table Y_DOTUSER disable all triggers;
prompt Disabling triggers for Y_EMP...
alter table Y_EMP disable all triggers;
prompt Disabling triggers for Y_JOBPOSITION...
alter table Y_JOBPOSITION disable all triggers;
prompt Disabling triggers for Y_ORGAN...
alter table Y_ORGAN disable all triggers;
prompt Disabling triggers for Y_RS_COMPUTER...
alter table Y_RS_COMPUTER disable all triggers;
prompt Disabling triggers for Y_RS_OTHERS...
alter table Y_RS_OTHERS disable all triggers;
prompt Disabling triggers for Y_SERVER...
alter table Y_SERVER disable all triggers;
prompt Loading I_AREA...
insert into I_AREA (id, areaname, areaid, areacode, state, arealevel, upareaid, remark, istdate, uptdate)
values (1, '北京', 1000, null, '1', 201001, 0, null, to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_AREA (id, areaname, areaid, areacode, state, arealevel, upareaid, remark, istdate, uptdate)
values (2, '北京市', 1001, null, '1', 201002, 1000, null, to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading I_BULLETIN...
prompt Table is empty
prompt Loading I_DATAMODULE...
prompt Table is empty
prompt Loading I_DATAMODULECOLUMN...
prompt Table is empty
prompt Loading I_DATAPARAMTYPE...
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (100, '公共', 'HIDATA', null, null, null, null, 201000, -1, 19, null, '1', to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (101, '业务', 'HIDATA', null, null, null, null, 201000, -1, 28, null, '1', to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (130, '有效状态', 'HIDATA', null, null, null, null, 201001, 100, 3, null, '1', to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (131, '是否', 'HIDATA', null, null, null, null, 201001, 100, 2, null, '1', to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (132, '性別', 'HIDATA', null, null, null, null, 201001, 100, 2, null, '1', to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133, '学历', 'HIDATA', null, null, null, null, 201001, 100, 6, null, '1', to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134, '职称', 'HIDATA', null, null, null, null, 201001, 100, 4, null, '1', to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135, '职位（系统用）', 'HIDATA', null, null, null, null, 201001, 100, 12, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (136, '文件类型', 'HIDATA', null, null, null, null, 201001, 100, 2, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137, '文件格式', 'HIDATA', null, null, null, null, 201001, 100, 5, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138, '短信类别', 'HIDATA', null, null, null, null, 201001, 100, 9, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (139, '婚姻状态', 'HIDATA', null, null, null, null, 201001, 100, 3, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140, '星座', 'HIDATA', null, null, null, null, 201001, 100, 12, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180, 'APP模块类型', 'HIDATA', null, null, null, null, 201001, 100, 13, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181, 'APP模块明细类型', 'HIDATA', null, null, null, null, 201001, 100, 19, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (182, 'DOT模块类别', 'HIDATA', null, null, null, null, 201001, 100, 0, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (183, 'DOT模块元素表单类别', 'HIDATA', null, null, null, null, 201001, 100, 0, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (201, '城市', 'HIDATA', null, null, null, null, 201001, 100, 2, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (202, '企业等级', 'HIDATA', null, null, null, null, 201001, 100, 2, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (203, '企业业务状态', 'HIDATA', null, null, null, null, 201001, 100, 5, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (130001, '有效', 'HIDATA', null, null, null, null, 201002, 130, 0, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (130002, '无效', 'HIDATA', null, null, null, null, 201002, 130, 0, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (130444, '关闭', 'HIDATA', null, null, null, null, 201002, 130, 0, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (131001, '是', 'HIDATA', null, null, null, null, 201002, 131, 0, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (131002, '否', 'HIDATA', null, null, null, null, 201002, 131, 0, null, '1', to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (132001, '男', 'HIDATA', null, null, null, null, 201002, 132, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (132002, '女', 'HIDATA', null, null, null, null, 201002, 132, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133001, '大专', 'HIDATA', null, null, null, null, 201002, 133, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133002, '本科', 'HIDATA', null, null, null, null, 201002, 133, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133003, '硕士', 'HIDATA', null, null, null, null, 201002, 133, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133004, '博士', 'HIDATA', null, null, null, null, 201002, 133, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133005, '博士后', 'HIDATA', null, null, null, null, 201002, 133, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (133006, '其他', 'HIDATA', null, null, null, null, 201002, 133, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134001, '助理工程师', 'HIDATA', null, null, null, null, 201002, 134, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134002, '中级工程师', 'HIDATA', null, null, null, null, 201002, 134, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134003, '高级工程师', 'HIDATA', null, null, null, null, 201002, 134, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (134004, '专家', 'HIDATA', null, null, null, null, 201002, 134, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135001, '总裁', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135002, '总经理', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135003, '副总', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135004, '部门经理', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135005, '项目经理', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135006, '行政', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135007, '会计', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135008, '出纳', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135009, '财务主管', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135010, '财务总监', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135011, '技术总监', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (135012, '行政总监', 'HIDATA', null, null, null, null, 201002, 135, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (136001, '公文', 'HIDATA', null, null, null, null, 201002, 136, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (136002, '附件', 'HIDATA', null, null, null, null, 201002, 136, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137001, 'jpg/png', 'HIDATA', null, null, null, null, 201002, 137, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137002, '.doc', 'HIDATA', null, null, null, null, 201002, 137, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137003, '.pdf', 'HIDATA', null, null, null, null, 201002, 137, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137004, '.xls', 'HIDATA', null, null, null, null, 201002, 137, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (137009, '其它', 'HIDATA', null, null, null, null, 201002, 137, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138001, '签收码', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138002, '拒收码', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138003, '手机校验码', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138004, '公告', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138005, '支付短信', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138111, '推荐', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138222, '关注', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138333, '动态', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (138444, '系统告警', 'HIDATA', null, null, null, null, 201002, 138, 0, null, '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (139001, '未婚', 'HIDATA', null, null, null, null, 201002, 139, 0, null, '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (139002, '已婚', 'HIDATA', null, null, null, null, 201002, 139, 0, null, '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (139003, '已婚已育', 'HIDATA', null, null, null, null, 201002, 139, 0, null, '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140001, '水瓶座', 'HIDATA', null, null, null, null, 201002, 140, 0, '1.21~2.19', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140002, '双鱼座', 'HIDATA', null, null, null, null, 201002, 140, 0, '2.20~3.20', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140003, '白羊座', 'HIDATA', null, null, null, null, 201002, 140, 0, '3.21~4.20', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140004, '金牛座', 'HIDATA', null, null, null, null, 201002, 140, 0, '4.21~5.21', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140005, '双子座', 'HIDATA', null, null, null, null, 201002, 140, 0, '5.22~6.22', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140006, '巨蟹座', 'HIDATA', null, null, null, null, 201002, 140, 0, '6.23~7.23', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140007, '狮子座', 'HIDATA', null, null, null, null, 201002, 140, 0, '7.24~8.23', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140008, '处女座', 'HIDATA', null, null, null, null, 201002, 140, 0, '8.24~9.23', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140009, '天秤座', 'HIDATA', null, null, null, null, 201002, 140, 0, '9.24~10.23', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140010, '天蝎座', 'HIDATA', null, null, null, null, 201002, 140, 0, '10.24~11.22', '1', to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140011, '射手座', 'HIDATA', null, null, null, null, 201002, 140, 0, '11.23~12.21', '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (140012, '摩羯座', 'HIDATA', null, null, null, null, 201002, 140, 0, '12.22~1.20', '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180001, '主页面（底部带TAB）', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180002, '主页面（底部无TAB）', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180003, '标准布局页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180004, '图文列表页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180005, '文本列表页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180006, '图列表页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180007, '图属性列表页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180010, '详情页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180011, '大图页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180012, '设置页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180013, '列表页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180014, '新增编辑页面', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (180015, '新增关联查询', 'HIDATA', null, null, null, null, 201002, 180, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181001, '主页面底部TAB', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181002, '主页面底部TAB（带红点）', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181003, '标题栏', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181004, '标题', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181005, '标题栏左按钮', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181006, '标题栏右按钮', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181007, '标题栏搜索', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 100 records committed...
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181008, '标题栏选择框', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181009, '可滑动广告栏', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181020, '我的栏目（仅头像）', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181021, '我的栏目（头像居左）', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181022, '我的栏目（头像居右）', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181023, '我的头像', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181024, '我的栏目（竖列）', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181025, '功能区（列4）', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181026, '功能区（列2）', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181030, '字段隐藏', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181031, '字段文本', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (181032, '字段图片', 'HIDATA', null, null, null, null, 201002, 181, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (201001, '北京', 'HIDATA', null, null, null, null, 201002, 201, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (201002, '上海', 'HIDATA', null, null, null, null, 201002, 201, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (202001, '大众', 'HIDATA', null, null, null, null, 201002, 202, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (202002, '顶级', 'HIDATA', null, null, null, null, 201002, 202, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (203000, '未认证', 'HIDATA', null, null, null, null, 201002, 203, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (203001, '试用', 'HIDATA', null, null, null, null, 201002, 203, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (203008, '已认证', 'HIDATA', null, null, null, null, 201002, 203, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (203010, '关闭', 'HIDATA', null, null, null, null, 201002, 203, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (203011, '暂停', 'HIDATA', null, null, null, null, 201002, 203, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (1001, '行业分类', 'HIDATA', null, null, null, null, 201001, 101, 7, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (1002, '城市', 'HIDATA', null, null, null, null, 201001, 100, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (1003, '学校', 'HIDATA', null, null, null, null, 201001, 101, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (1004, '国籍', 'HIDATA', null, null, null, null, 201001, 101, 0, null, '1', to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (1010, '技能标签分类', 'HIDATA', null, null, null, null, 201001, 101, 3, null, '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801, '消费品', 'HIDATA', null, null, null, null, 201001, 1001, 14, null, '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802, '工业品', 'HIDATA', null, null, null, null, 201001, 1001, 12, null, '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803, '原材料', 'HIDATA', null, null, null, null, 201001, 1001, 10, null, '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804, '商业服务', 'HIDATA', null, null, null, null, 201001, 1001, 24, null, '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (805, '生活服务', 'HIDATA', null, null, null, null, 201001, 1001, 0, null, '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (806, '娱乐休闲', 'HIDATA', null, null, null, null, 201001, 1001, 0, null, '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (807, '其他行业', 'HIDATA', null, null, null, null, 201001, 1001, 0, null, '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801001, '加工公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYJG', '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801002, '纸公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYZH', '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801003, '环保公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYHB', '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801004, '印刷公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYYS', '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801005, '仪器仪表公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYYQ', '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801006, '包装公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYBZ', '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801007, '安防公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYAF', '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801008, '交通运营公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYJT', '1', to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801009, '照明工业公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYZM', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801010, '汽车公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYQC', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801011, '电工电气公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYDG', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801012, '五金公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYWJ', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801013, '电子公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYDZ', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (801014, '机械公司', 'HIDATA', null, null, null, null, 201001, 801, 0, 'GYJX', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802001, '传媒、广电公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFCM', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802002, '玩具公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFWJ', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802003, '食品、饮料公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFSP', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802004, '运动、休闲公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFYD', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802005, '办公、文教公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFBG', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802006, '通信产品公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFTX', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802007, '家用电器公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFDQ', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802008, '数码、电脑公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFSM', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802009, '家居用品公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFJJ', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802010, '礼品、工艺品、饰品公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFLP', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802011, '服饰公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFFS', '1', to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (802012, '服装公司', 'HIDATA', null, null, null, null, 201001, 802, 0, 'XFFZ', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803001, '能源公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCNY', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803002, '建筑、建材公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCJZ', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803003, '医药、保养公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCYY', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803004, '农业公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCNY', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803005, '精细化学品公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCHX', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803006, '纺织、皮革公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCFZ', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803007, '橡塑公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCXS', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803008, '冶金矿产公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCYJ', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803009, '化工公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCHG', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (803010, '废料公司', 'HIDATA', null, null, null, null, 201001, 803, 0, 'YCFL', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804001, '物流公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWWL', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804002, '进出口代理公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWJC', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804003, '设计制作公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWSJ', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804004, '广告公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWGA', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804005, '公关公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWGG', '1', to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804006, '摄影摄像公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWSY', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804007, '咨询公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWZX', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804008, '教育培训公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWJY', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804009, '商标专利', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWSB', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804010, '企业认证', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWQY', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804011, '公司注册', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWGS', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804012, '金融公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWJR', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804013, '保险公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWBX', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804014, '中介公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWZJ', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804015, '维修安装公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWWX', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804016, '机票酒店公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWJP', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804017, '餐饮公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWCY', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804018, '展览展会公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWZL', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804019, '翻译公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWFY', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804020, '法律公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWFL', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804021, '会计公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWKJ', '1', to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804022, '软件开发公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWRJ', '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804023, '招商公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWZS', '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (804024, '招聘公司', 'HIDATA', null, null, null, null, 201001, 804, 0, 'FWZP', '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (821, '技能标签-职业', 'HIDATA', null, null, null, null, 201002, 1010, 3, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (822, '技能标签-团队管理', 'HIDATA', null, null, null, null, 201002, 1010, 3, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (823, '技能标签-软件技能', 'HIDATA', null, null, null, null, 201002, 1010, 3, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (821001, '职业标签1', 'HIDATA', null, null, null, null, 201002, 821, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (821002, '职业标签2', 'HIDATA', null, null, null, null, 201002, 821, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (821003, '职业标签3', 'HIDATA', null, null, null, null, 201002, 821, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (822001, '团队管理标签1', 'HIDATA', null, null, null, null, 201002, 822, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 200 records committed...
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (822002, '团队管理标签2', 'HIDATA', null, null, null, null, 201002, 822, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (822003, '团队管理标签3', 'HIDATA', null, null, null, null, 201002, 822, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (823001, '软件技能标签1', 'HIDATA', null, null, null, null, 201002, 823, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (823002, '软件技能标签2', 'HIDATA', null, null, null, null, 201002, 823, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (823003, '软件技能标签3', 'HIDATA', null, null, null, null, 201002, 823, 0, null, '1', to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (220, '机构性质', 'HIDATA', null, null, null, null, 201001, 101, 5, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (221, '职级', 'HIDATA', null, null, null, null, 201001, 101, 4, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (222, '企业规模', 'HIDATA', null, null, null, null, 201001, 101, 6, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (223, '工作经验', 'HIDATA', null, null, null, null, 201001, 101, 5, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (224, '学历要求', 'HIDATA', null, null, null, null, 201001, 101, 5, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (230, '订单状态', 'HIDATA', null, null, null, null, 201001, 101, 0, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (231, '支付方式', 'HIDATA', null, null, null, null, 201001, 101, 3, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (232, '付款状态', 'HIDATA', null, null, null, null, 201001, 101, 3, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (233, '票据状态', 'HIDATA', null, null, null, null, 201001, 101, 4, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (238, '平台对象', 'HIDATA', null, null, null, null, 201001, 101, 5, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (239, '候选人与企业关系', 'HIDATA', null, null, null, null, 201001, 101, 3, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (240, '候选人入库状态', 'HIDATA', null, null, null, null, 201001, 101, 6, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241, '候选人入库审核状态', 'HIDATA', null, null, null, null, 201001, 101, 9, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (242, '关注或黑名单状态', 'HIDATA', null, null, null, null, 201001, 101, 3, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (243, '候选人状态', 'HIDATA', null, null, null, null, 201001, 101, 5, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244, '候选人面试流程状态', 'HIDATA', null, null, null, null, 201001, 101, 9, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245, '候选人面试流程结束状态', 'HIDATA', null, null, null, null, 201001, 101, 11, null, '1', to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (250, '附件类型', 'HIDATA', null, null, null, null, 201001, 101, 3, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251, '事件类型', 'HIDATA', null, null, null, null, 201001, 101, 8, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (252, '流程类型', 'HIDATA', null, null, null, null, 201001, 101, 3, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (253, '事件状态', 'HIDATA', null, null, null, null, 201001, 101, 3, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (254, '事件分类', 'HIDATA', null, null, null, null, 201001, 101, 4, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (255, '事件提醒类型', 'HIDATA', null, null, null, null, 201001, 101, 5, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (260, '统计分类', 'HIDATA', null, null, null, null, 201001, 101, 5, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (222001, '50人以下', 'HIDATA', null, null, null, null, 201002, 222, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (222002, '50-200人', 'HIDATA', null, null, null, null, 201002, 222, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (222003, '200-500人', 'HIDATA', null, null, null, null, 201002, 222, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (222004, '500-1000人', 'HIDATA', null, null, null, null, 201002, 222, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (222005, '1000人-1万人', 'HIDATA', null, null, null, null, 201002, 222, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (222006, '1万人以上', 'HIDATA', null, null, null, null, 201002, 222, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (220001, '国有企业', 'HIDATA', null, null, null, null, 201002, 220, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (220002, '集体所有制企业', 'HIDATA', null, null, null, null, 201002, 220, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (220003, '联营企业', 'HIDATA', null, null, null, null, 201002, 220, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (220004, '三资企业', 'HIDATA', null, null, null, null, 201002, 220, 0, null, '1', to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (220005, '私营企业', 'HIDATA', null, null, null, null, 201002, 220, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (221001, '工作职级1', 'HIDATA', null, null, null, null, 201002, 221, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (221002, '工作职级2', 'HIDATA', null, null, null, null, 201002, 221, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (221003, '工作职级3', 'HIDATA', null, null, null, null, 201002, 221, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (221004, '工作职级4', 'HIDATA', null, null, null, null, 201002, 221, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (22300, '不限', 'HIDATA', null, null, null, null, 201002, 223, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (223001, '0-3年工作经验', 'HIDATA', null, null, null, null, 201002, 223, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (223002, '3-5年工作经验', 'HIDATA', null, null, null, null, 201002, 223, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (223003, '5-10年工作经验', 'HIDATA', null, null, null, null, 201002, 223, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (223008, '10年以上工作经验', 'HIDATA', null, null, null, null, 201002, 223, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (224000, '不限', 'HIDATA', null, null, null, null, 201002, 224, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (224001, '本科以上', 'HIDATA', null, null, null, null, 201002, 224, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (224002, '专科以上', 'HIDATA', null, null, null, null, 201002, 224, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (224003, '硕士以上', 'HIDATA', null, null, null, null, 201002, 224, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (224004, '博士以上', 'HIDATA', null, null, null, null, 201002, 224, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (231001, '微信', 'HIDATA', null, null, null, null, 201002, 231, 0, null, '1', to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:27:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (231002, '支付宝', 'HIDATA', null, null, null, null, 201002, 231, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (231003, '现金', 'HIDATA', null, null, null, null, 201002, 231, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (232001, '未付款', 'HIDATA', null, null, null, null, 201002, 232, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (232002, '已付款到平台', 'HIDATA', null, null, null, null, 201002, 232, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (232003, '已付款到顾问', 'HIDATA', null, null, null, null, 201002, 232, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (233001, '待开票', 'HIDATA', null, null, null, null, 201002, 233, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (233002, '已开票', 'HIDATA', null, null, null, null, 201002, 233, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (233003, '已付款', 'HIDATA', null, null, null, null, 201002, 233, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (233009, '已完成', 'HIDATA', null, null, null, null, 201002, 233, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (238001, 'C', 'HIDATA', null, null, null, null, 201002, 238, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (238002, 'HR', 'HIDATA', null, null, null, null, 201002, 238, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (238003, 'HC', 'HIDATA', null, null, null, null, 201002, 238, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (238009, 'ADMIN', 'HIDATA', null, null, null, null, 201002, 238, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (238010, '平台', 'HIDATA', null, null, null, null, 201002, 238, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (239001, '在职', 'HIDATA', null, null, null, null, 201002, 239, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (239002, '意向', 'HIDATA', null, null, null, null, 201002, 239, 0, null, '1', to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (239004, '屏蔽', 'HIDATA', null, null, null, null, 201002, 239, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (240000, '未入库', 'HIDATA', null, null, null, null, 201002, 240, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (240020, '准入库', 'HIDATA', null, null, null, null, 201002, 240, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (240090, '已入库', 'HIDATA', null, null, null, null, 201002, 240, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (240100, '已入职', 'HIDATA', null, null, null, null, 201002, 240, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (240110, '已入库不上线', 'HIDATA', null, null, null, null, 201002, 240, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (240444, 'ACE黑名单', 'HIDATA', null, null, null, null, 201002, 240, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241000, '不入库', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241001, '入库申请审核中', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241005, '入库申请未通过', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241021, '待安排顾问面试', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241022, '已安排顾问面试', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241023, '待提交顾问面评', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241024, '顾问面评审核中', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241025, '顾问面评未合格', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (241029, '顾问面评已上线', 'HIDATA', null, null, null, null, 201002, 241, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (242001, '关注', 'HIDATA', null, null, null, null, 201002, 242, 0, '关注', '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (242002, '取消关注', 'HIDATA', null, null, null, null, 201002, 242, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (242004, '黑名单', 'HIDATA', null, null, null, null, 201002, 242, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (243000, '已关注', 'HIDATA', null, null, null, null, 201002, 243, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (243001, '进行中', 'HIDATA', null, null, null, null, 201002, 243, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (243009, '已结束', 'HIDATA', null, null, null, null, 201002, 243, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (243044, '黑名单(暂定)', 'HIDATA', null, null, null, null, 201002, 243, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (243444, '已关闭(暂定)', 'HIDATA', null, null, null, null, 201002, 243, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244001, '已邀请面试', 'HIDATA', null, null, null, null, 201002, 244, 0, '邀请面试', '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244005, '待安排面试', 'HIDATA', null, null, null, null, 201002, 244, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244006, '已安排面试', 'HIDATA', null, null, null, null, 201002, 244, 0, '面试', '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244007, '面试通过', 'HIDATA', null, null, null, null, 201002, 244, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244020, '已Offer', 'HIDATA', null, null, null, null, 201002, 244, 0, 'Offer', '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 300 records committed...
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244021, '已上传Offer', 'HIDATA', null, null, null, null, 201002, 244, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244022, '已接受Offer', 'HIDATA', null, null, null, null, 201002, 244, 0, null, '1', to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244023, '已入职', 'HIDATA', null, null, null, null, 201002, 244, 0, '入职', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (244099, '已结束', 'HIDATA', null, null, null, null, 201002, 244, 0, null, '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245000, '无', 'HIDATA', null, null, null, null, 201002, 245, 0, null, '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245001, '已入职', 'HIDATA', null, null, null, null, 201002, 245, 0, null, '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245002, '已离职', 'HIDATA', null, null, null, null, 201002, 245, 0, '离职', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245003, '面试结束', 'HIDATA', null, null, null, null, 201002, 245, 0, null, '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245040, '未入职', 'HIDATA', null, null, null, null, 201002, 245, 0, '未入职', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245041, '未接受Offer', 'HIDATA', null, null, null, null, 201002, 245, 0, '未接Offer', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245042, '拒绝面试', 'HIDATA', null, null, null, null, 201002, 245, 0, '拒绝面试', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245043, '面试不通过', 'HIDATA', null, null, null, null, 201002, 245, 0, '未过面试', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245044, '未面试', 'HIDATA', null, null, null, null, 201002, 245, 0, '未面试', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245400, '自动拒绝', 'HIDATA', null, null, null, null, 201002, 245, 0, '自动拒绝', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (245444, '关闭', 'HIDATA', null, null, null, null, 201002, 245, 0, '关闭', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (250001, '头像', 'HIDATA', null, null, null, null, 201002, 250, 0, 'att_face', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (250002, '简历', 'HIDATA', null, null, null, null, 201002, 250, 0, 'att_cv', '1', to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (250009, '其他', 'HIDATA', null, null, null, null, 201002, 250, 0, 'att_other', '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251001, '入库申请', 'HIDATA', null, null, null, null, 201002, 251, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251002, '准入库', 'HIDATA', null, null, null, null, 201002, 251, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251003, '状态', 'HIDATA', null, null, null, null, 201002, 251, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251004, '流程', 'HIDATA', null, null, null, null, 201002, 251, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251005, '候选人', 'HIDATA', null, null, null, null, 201002, 251, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251006, '临时候选人', 'HIDATA', null, null, null, null, 201002, 251, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251007, '电话', 'HIDATA', null, null, null, null, 201002, 251, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (251008, '后续', 'HIDATA', null, null, null, null, 201002, 251, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (252001, 'HR标准流程', 'HIDATA', null, null, null, null, 201002, 252, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (252002, '非标准流程', 'HIDATA', null, null, null, null, 201002, 252, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (252003, '入库流程', 'HIDATA', null, null, null, null, 201002, 252, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (253001, '待执行', 'HIDATA', null, null, null, null, 201002, 253, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (253004, '不执行', 'HIDATA', null, null, null, null, 201002, 253, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (253009, '已执行', 'HIDATA', null, null, null, null, 201002, 253, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (254001, '任务', 'HIDATA', null, null, null, null, 201002, 254, 0, null, '1', to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (254002, '提醒', 'HIDATA', null, null, null, null, 201002, 254, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (254003, '消息', 'HIDATA', null, null, null, null, 201002, 254, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (254004, '警告', 'HIDATA', null, null, null, null, 201002, 254, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (260001, '今日新增', 'HIDATA', null, null, null, null, 201002, 260, 0, '1', '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (260002, '昨日新增', 'HIDATA', null, null, null, null, 201002, 260, 0, '1', '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (260003, '本月新增', 'HIDATA', null, null, null, null, 201002, 260, 0, '1', '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (260004, '上月新增', 'HIDATA', null, null, null, null, 201002, 260, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (260009, '所有', 'HIDATA', null, null, null, null, 201002, 260, 0, '1', '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (255000, '不提醒', 'HIDATA', null, null, null, null, 201002, 255, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (255001, '通知', 'HIDATA', null, null, null, null, 201002, 255, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (255002, '待确认通知', 'HIDATA', null, null, null, null, 201002, 255, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (255003, '提醒', 'HIDATA', null, null, null, null, 201002, 255, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATAPARAMTYPE (paramclassid, classname, classnameen, classnameen2, classnameen3, classnameen4, classnameen5, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (255004, '限时提醒', 'HIDATA', null, null, null, null, 201002, 255, 0, null, '1', to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:28:05', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 346 records loaded
prompt Loading I_DATATABLE...
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (122, 'B_Candidate_Files', '候选人-附件', null, 100000, 10, 0, 802005, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('09-12-2016 17:08:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (132, 'B_MMOrgan_InviteCode', '企业的邀请码', null, 100000, 6, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (128, 'B_Candidate_Interview', '候选人-面试记录', null, 100000, 25, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (26, 'Y_AppRoleModule', 'APP角色权限', null, 900000, 1, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, 25, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (25, 'Y_AppRole', 'APP角色', null, 900000, 3, 3, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 1, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (24, 'Y_AppModuleDetail', 'APP模块明细', null, 900000, 11, 99, 802001, '0', '1', '0', '0', '0', '0', '0', null, 23, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (23, 'Y_AppModule', 'APP模块', null, 900000, 7, 59, 802001, '0', '1', '0', '0', '0', '0', '0', '复制明细|BAppModule_CopyDetail,同步APP服务器|AAppModule_SynAppServer,', -1, 1, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (18, 'Y_DotUser', 'DOT用户', null, 900000, 23, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (19, 'Y_DotModule', 'DOT模块', null, 900000, 8, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 1, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (20, 'Y_DotRole', 'DOT岗位', null, 900000, 4, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 1, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (21, 'Y_DotRoleModule', 'DOT岗位权限', null, 900000, 1, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, 20, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (22, 'Y_DotModuleDetail', 'DOT模块明细', null, 900000, 13, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, 19, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (1, 'Y_Organ', '公司机构', null, 200000, 7, 1, 802001, '0', '1', '1', '1', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (2, 'Y_Emp', '从业人员', null, 200000, 18, 3, 802001, '0', '1', '0', '0', '0', '0', '0', '启用账户|BUserStart,停用账户|BUserStop,人员结构树|AEmpTree,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (3, 'Y_Department', '部门', null, 200000, 8, 1, 802001, '0', '1', '0', '0', '0', '0', '0', '组织结构图|AJobStruct,组织树|AJobTree,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (4, 'Y_JobPosition', '岗位', null, 200000, 8, 1, 802001, '0', '1', '0', '0', '0', '0', '0', '岗位结构图|AJobPosition,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (5, 'Y_Bulletin', '公告', null, 900000, 5, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (6, 'Y_Server', '服务器', null, 900000, 4, 3, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (7, 'Y_Rs_Computer', '物资-计算机', null, 200000, 14, 0, 802001, '0', '1', '0', '0', '0', '0', '0', '岗位结构图|AJobPosition,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (8, 'Y_Rs_Others', '物资-其它', null, 200000, 11, 0, 802001, '0', '1', '0', '0', '0', '0', '0', '岗位结构图|AJobPosition,', -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (10, 'Y_AppVersion', 'APP版本', null, 900000, 6, 4, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
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
values (102, 'B_UserLogin', '登录用户', null, 100000, 60, 29, 802005, '1', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (103, 'B_User_Location', '登录用户位置信息', null, 100000, 8, 0, 802001, '1', '0', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (104, 'B_MMOrgan', '公司/企业', null, 100000, 40, 10, 802005, '1', '1', '0', '0', '0', '0', '0', null, -1, 2, '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (120, 'B_Candidate_Collect', '关注', null, 100000, 5, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('08-12-2016 18:41:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 14:42:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (121, 'B_Candidate_Organ_Relation', '候选人与企业关系', null, 100000, 10, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('09-12-2016 11:28:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (124, 'B_HR', 'HR', null, 100000, 30, 5, 802001, '1', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (125, 'B_Hunter', '猎头顾问', null, 100000, 35, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (105, 'A_Industry', '行业库', null, 100000, 5, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('07-12-2016 09:43:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:04:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (106, 'B_Candidate', '候选人', null, 100000, 90, 36, 802005, '1', '1', '0', '0', '0', '0', '0', '入库审核|BCandidate_Check,', -1, 15, '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (107, 'A_Company', '企业库', null, 100000, 30, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (108, 'B_Job', '公司/企业-职位', null, 100000, 25, 0, 802005, '1', '1', '0', '0', '0', '0', '0', null, 104, 0, '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (109, 'B_Candidate_Process', '候选人-面试流程', null, 100000, 40, 18, 802005, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (110, 'B_Candidate_CVEducation', '候选人-教育背景', null, 100000, 12, 0, 802005, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('08-12-2016 13:07:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (111, 'B_Candidate_CVTrain', '候选人-培训经历', null, 100000, 11, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('08-12-2016 13:12:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (112, 'B_Candidate_CVCertificate', '候选人-获得证书', null, 100000, 10, 0, 802005, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('08-12-2016 13:13:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (113, 'B_Candidate_CVWork', '候选人-工作经验', null, 100000, 30, 4, 802001, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('08-12-2016 13:14:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (114, 'B_Candidate_CVProject', '候选人-项目经验', null, 100000, 14, 0, 802005, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (115, 'A_HCInterView_QA', '顾问面评问题库', null, 100000, 6, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('08-12-2016 14:41:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 16:48:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (116, 'B_Bill', '票据', null, 100000, 25, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (117, 'B_MMOrgan_Agreement', '服务合同', null, 100000, 12, 0, 802001, '0', '1', '0', '0', '0', '0', '0', null, 104, 0, '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (118, 'B_Action', '业务事件', null, 100000, 59, 96, 802005, '1', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (119, 'A_Action', '标准事件库', null, 100000, 40, 92, 802005, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('08-12-2016 15:52:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (123, 'B_Candidate_Marker', '技能标签', null, 100000, 11, 0, 802005, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('12-12-2016 17:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (126, 'B_Candidate_HCComment', '顾问面评', null, 100000, 30, 1, 802001, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (129, 'A_Process', '标准流程库', null, 100000, 40, 47, 802005, '0', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('20-12-2016 13:54:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (130, 'B_Candidate_CVJob', '候选人-任职经历', null, 100000, 23, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (131, 'B_ACETask', 'ACE任务单', null, 100000, 15, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (135, 'B_Stat', 'ACE统计', null, 100000, 25, 0, 802001, '1', '1', '0', '0', '0', '0', '0', null, -1, 0, '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (133, 'B_Candidate_Process_His', '候选人-面试流程历史', null, 100000, 40, 20, 802005, '0', '0', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLE (tableid, tablename, tablememo, serverpath, tabletypeid, colnum, datanum, sctlevel, sequenceflag, pkflag, sidflag, scopeflag, attachfileflag, datastatusflag, sctlevelflag, otherbuttons, parenttableid, childtablenum, state, istdate, uptdate)
values (134, 'B_Candidate_Language', '候选人语言水平', null, 100000, 8, 0, 802005, '1', '1', '0', '0', '0', '0', '0', null, 106, 0, '1', to_date('30-12-2016 18:14:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 58 records loaded
prompt Loading I_DATATABLECOLUMN...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (135, 102, 'c31', 'VARCHAR2(30)', 202002, 30, 0, '公司座机', '1', null, 0, 0, 0, 802005, 31, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (136, 102, 'c32', 'VARCHAR2(50)', 202002, 50, 0, '公司邮箱', '1', null, 0, 0, 0, 802005, 32, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (137, 102, 'c33', 'VARCHAR2(50)', 202002, 50, 0, '职位', '1', null, 0, 0, 0, 802005, 33, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (138, 102, 'c34', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 34, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (139, 102, 'c35', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 35, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (140, 102, 'c36', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 36, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (141, 102, 'c37', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 37, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (142, 102, 'c38', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 38, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (143, 102, 'c39', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 39, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (144, 102, 'c40', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 40, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (145, 102, 'c41', 'DATE', 202006, 20, 0, '密码更新时间', '1', null, 0, 0, 0, 802005, 41, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (146, 102, 'c42', 'VARCHAR2(30)', 202002, 30, 0, 'R姓名', '1', null, 0, 0, 0, 802005, 42, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (147, 102, 'c43', 'VARCHAR2(30)', 202002, 30, 0, 'R性别', '1', null, 0, 0, 0, 802005, 43, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (148, 102, 'c44', 'VARCHAR2(30)', 202002, 30, 0, 'R身份证号', '1', null, 0, 0, 0, 802005, 44, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
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
values (45, 102, 'c1', 'VARCHAR2(32) NOT NULL', 202011, 32, 0, 'AUID', '0', null, 0, 0, 0, 802005, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (46, 102, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '手机号码', '1', null, 0, 0, 0, 802005, 2, '1', 13, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (47, 102, 'c3', 'VARCHAR2(50)', 202010, 50, 0, '登录密码', '1', null, 0, 0, 0, 802005, 3, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (48, 102, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '用户主身份', '1', null, 0, 0, 0, 802005, 4, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (49, 102, 'c5', 'NUMBER(14,0)', 202001, 14, 0, '所属组织MID', '1', null, 0, 0, 0, 802005, 5, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (149, 102, 'c45', 'VARCHAR2(30)', 202002, 30, 0, 'R（未使用）', '1', null, 0, 0, 0, 802005, 45, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (150, 102, 'c46', 'VARCHAR2(30)', 202002, 30, 0, 'R（未使用）', '1', null, 0, 0, 0, 802005, 46, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (151, 102, 'c47', 'VARCHAR2(200)', 202009, 200, 0, 'R图片1', '1', null, 0, 0, 0, 802005, 47, '0', 20, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (152, 102, 'c48', 'VARCHAR2(200)', 202009, 200, 0, 'R图片2', '1', null, 0, 0, 0, 802005, 48, '0', 20, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (153, 102, 'c49', 'VARCHAR2(200)', 202009, 200, 0, 'R图片3', '1', null, 0, 0, 0, 802005, 49, '0', 20, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (154, 102, 'c50', 'VARCHAR2(30)', 202002, 30, 0, 'REmail', '1', null, 0, 0, 0, 802005, 50, '0', 15, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
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
values (198, 102, 'c51', 'VARCHAR2(50)', 202002, 50, 0, 'R联系地址', '1', null, 0, 0, 0, 802005, 51, '0', 50, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (199, 102, 'c52', 'VARCHAR2(30)', 202002, 30, 0, 'R手机号', '1', null, 0, 0, 0, 802005, 52, '0', 30, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (200, 102, 'c53', 'DATE', 202006, 20, 0, 'R认证申请日期', '1', null, 0, 0, 0, 802005, 53, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (201, 102, 'c54', 'DATE', 202006, 20, 0, 'R认证日期', '1', null, 0, 0, 0, 802005, 54, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (202, 102, 'c55', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 55, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (203, 102, 'c56', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 56, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (204, 102, 'c57', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 57, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (205, 102, 'c58', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 58, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (206, 102, 'c59', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 59, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (207, 102, 'c60', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 60, '0', 6, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
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
commit;
prompt 100 records committed...
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
values (51, 102, 'c7', 'DATE', 202006, 20, 0, '最后登录日期', '1', null, 0, 0, 0, 802005, 7, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (52, 102, 'c8', 'CHAR(1)', 202004, 1, 0, '在线状态', '1', null, 0, 0, 0, 802005, 8, '1', 4, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (53, 102, 'c9', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 9, '1', 4, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (54, 6, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '服务器名称', '1', null, 0, 0, 0, 802001, 1, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (55, 6, 'c2', 'VARCHAR2(100)', 202002, 100, 0, 'web地址', '1', null, 0, 0, 0, 802001, 2, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (56, 6, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (57, 6, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '备注', '1', null, 0, 0, 0, 802001, 4, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:51:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (58, 102, 'c10', 'VARCHAR2(30)', 202002, 30, 0, '最后登录IP', '1', null, 0, 0, 0, 802005, 10, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (60, 102, 'c11', 'VARCHAR2(30)', 202002, 30, 0, '昵称', '1', null, 0, 0, 0, 802005, 11, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (61, 102, 'c12', 'VARCHAR2(250)', 202009, 250, 0, '头像', '1', null, 0, 0, 0, 802005, 12, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (62, 102, 'c13', 'VARCHAR2(30)', 202002, 30, 0, '签名', '1', null, 0, 0, 0, 802005, 13, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (63, 102, 'c14', 'VARCHAR2(30)', 202002, 30, 0, '性别', '1', null, 0, 0, 0, 802005, 14, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (64, 102, 'c15', 'VARCHAR2(50)', 202002, 50, 0, '国家', '1', null, 0, 0, 0, 802005, 15, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (65, 102, 'c16', 'VARCHAR2(30)', 202002, 30, 0, '省份', '1', null, 0, 0, 0, 802005, 16, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (66, 102, 'c17', 'VARCHAR2(30)', 202002, 30, 0, '城市', '1', null, 0, 0, 0, 802005, 17, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (67, 102, 'c18', 'VARCHAR2(20)', 202002, 20, 0, '语言', '1', null, 0, 0, 0, 802005, 18, '0', 10, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (68, 102, 'c19', 'VARCHAR2(50)', 202002, 50, 0, 'openid', '1', null, 0, 0, 0, 802005, 19, '0', 20, '0', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (69, 102, 'c20', 'VARCHAR2(20)', 202002, 20, 0, '权限/角色', '1', null, 0, 0, 0, 802005, 20, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (70, 14, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '发送者', '1', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (71, 14, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '接收者', '1', null, 0, 0, 0, 802001, 2, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (72, 14, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '消息类型', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (73, 14, 'c4', 'VARCHAR2(2000)', 202002, 2000, 0, '数据包', '1', null, 0, 0, 0, 802001, 4, '1', 2000, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (74, 102, 'c21', 'NUMBER(6,0)', 202001, 6, 0, '身份认证标识', '1', null, 0, 0, 0, 802005, 21, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (75, 102, 'c22', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '登录次数', '1', '0', 0, 0, 0, 802005, 22, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
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
values (90, 103, 'c7', 'VARCHAR2(100)', 202002, 100, 0, '位置信息', '1', null, 0, 0, 0, 802001, 7, '1', 100, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (91, 103, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '备用', '1', null, 0, 0, 0, 802001, 8, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (92, 102, 'c23', 'VARCHAR2(100)', 202002, 100, 0, '备注', '1', null, 0, 0, 0, 802005, 23, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (93, 101, 'c1', 'VARCHAR2(100) NOT NULL', 202002, 100, 0, '银行名称', '0', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
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
commit;
prompt 200 records committed...
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
values (84, 103, 'c1', 'VARCHAR2(32) NOT NULL', 202002, 32, 0, 'AUID', '0', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (85, 103, 'c2', 'NUMBER(12,6) NOT NULL', 202001, 12, 6, '经度', '0', null, 0, 0, 0, 802001, 2, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (86, 103, 'c3', 'NUMBER(12,6) NOT NULL', 202001, 12, 6, '纬度', '0', null, 0, 0, 0, 802001, 3, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (87, 103, 'c4', 'NUMBER(12,6)', 202001, 12, 6, '海拔', '1', null, 0, 0, 0, 802001, 4, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (88, 103, 'c5', 'NUMBER(12,6)', 202001, 12, 6, '速度', '1', null, 0, 0, 0, 802001, 5, '1', 12, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (89, 103, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '方向', '1', null, 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:07:32', 'dd-mm-yyyy hh24:mi:ss'));
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
values (128, 102, 'c24', 'NUMBER(2,0) DEFAULT 1', 202001, 2, 0, '发布图片最大数目', '1', '1', 0, 0, 0, 802005, 24, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (129, 102, 'c25', 'VARCHAR2(30)', 202002, 30, 0, '真实姓名', '1', null, 0, 0, 0, 802005, 25, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (130, 102, 'c26', 'VARCHAR2(30)', 202002, 30, 0, '生日', '1', null, 0, 0, 0, 802005, 26, '1', 30, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (131, 102, 'c27', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '星级', '1', '0', 0, 0, 0, 802005, 27, '1', 6, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (132, 102, 'c28', 'VARCHAR2(20)', 202002, 20, 0, 'QQ', '1', null, 0, 0, 0, 802005, 28, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (133, 102, 'c29', 'VARCHAR2(50)', 202002, 50, 0, '邮箱', '1', null, 0, 0, 0, 802005, 29, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (134, 102, 'c30', 'VARCHAR2(100)', 202002, 100, 0, '通信地址', '1', null, 0, 0, 0, 802005, 30, '1', 15, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
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
values (50, 102, 'c6', 'VARCHAR2(32)', 202002, 32, 0, '所属组织AMID', '1', null, 0, 0, 0, 802005, 6, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:26:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (239, 19, 'c4', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (296, 23, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '模块ID', '1', null, 0, 0, 0, 802001, 1, '1', 12, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (297, 23, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '模块类型', '1', null, 0, 0, 0, 802001, 2, '1', 6, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (298, 23, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '排序', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (299, 23, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '标题', '1', null, 0, 0, 0, 802001, 4, '1', 30, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (300, 23, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '关联表', '1', null, 0, 0, 0, 802001, 5, '1', 15, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (301, 23, 'c6', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802001, 6, '1', 10, '1', '1', to_date('04-06-2016 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (316, 23, 'c7', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 7, '1', 20, '1', '1', to_date('15-06-2016 10:29:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (302, 24, 'c1', 'VARCHAR2(30)', 202002, 30, 0, 'MD标题', '1', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (303, 24, 'c2', 'NUMBER(6,0)', 202001, 6, 0, 'MD类型', '1', null, 0, 0, 0, 802001, 2, '1', 8, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (304, 24, 'c3', 'VARCHAR2(100)', 202009, 100, 0, 'MD图标', '1', null, 0, 0, 0, 802001, 3, '1', 8, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (305, 24, 'c4', 'VARCHAR2(50)', 202002, 50, 0, '参数', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (306, 24, 'c5', 'VARCHAR2(4000)', 202002, 4000, 0, '参数1（代码）', '1', null, 0, 0, 0, 802001, 5, '1', 40, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (307, 24, 'c6', 'VARCHAR2(500)', 202002, 500, 0, '参数2', '1', null, 0, 0, 0, 802001, 6, '1', 25, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (308, 24, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '操作ACTION', '1', null, 0, 0, 0, 802001, 7, '1', 10, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (309, 24, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '下一步模块ID', '1', null, 0, 0, 0, 802001, 8, '1', 10, '1', '1', to_date('04-06-2016 01:08:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (314, 24, 'c9', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802001, 9, '1', 6, '1', '1', to_date('12-06-2016 09:45:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (315, 24, 'c10', 'NUMBER(6,0)', 202001, 6, 0, '排序', '1', null, 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('12-06-2016 09:45:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (317, 24, 'c11', 'VARCHAR2(20)', 202002, 20, 0, '权限（增删改查选倒序）', '1', null, 0, 0, 0, 802001, 11, '1', 10, '1', '1', to_date('15-06-2016 11:34:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 07:16:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (310, 25, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '角色名称', '1', null, 0, 0, 0, 802001, 1, '1', 6, '1', '1', to_date('04-06-2016 01:09:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-06-2016 01:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (311, 25, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '角色代码', '1', null, 0, 0, 0, 802001, 2, '1', 30, '1', '1', to_date('04-06-2016 01:09:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-06-2016 01:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (312, 25, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('04-06-2016 01:09:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-06-2016 01:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (313, 26, 'c1', 'NUMBER(6,0)', 202001, 6, 0, 'APP模块', '1', null, 0, 0, 0, 802001, 1, '1', 6, '1', '1', to_date('04-06-2016 01:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-06-2016 01:15:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (318, 104, 'c1', 'VARCHAR2(32)', 202011, 32, 0, 'AMID', '1', null, 0, 0, 0, 802005, 1, '0', 20, '0', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (319, 104, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '企业名称', '1', null, 0, 0, 0, 802005, 2, '1', 20, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (320, 104, 'c3', 'VARCHAR2(32)', 202002, 32, 0, '所属上级企业', '1', null, 0, 0, 0, 802005, 3, '1', 20, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (321, 104, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '下级企业数目', '1', null, 0, 0, 0, 802005, 4, '1', 10, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (322, 104, 'c5', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '机构性质', '0', null, 0, 0, 0, 802005, 5, '1', 12, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (323, 104, 'c6', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '业务状态', '0', null, 0, 0, 0, 802005, 6, '1', 6, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (324, 104, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '行业', '1', null, 0, 0, 0, 802005, 7, '1', 10, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (325, 104, 'c8', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802005, 8, '1', 6, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (326, 104, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '城市', '1', null, 0, 0, 0, 802005, 9, '1', 10, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (327, 104, 'c10', 'VARCHAR2(30)', 202002, 30, 0, '区域', '1', null, 0, 0, 0, 802005, 10, '1', 12, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (328, 104, 'c11', 'VARCHAR2(30)', 202002, 30, 0, '公司电话', '1', null, 0, 0, 0, 802005, 11, '1', 12, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (329, 104, 'c12', 'VARCHAR2(30)', 202002, 30, 0, '企业联系人姓名', '1', null, 0, 0, 0, 802005, 12, '1', 12, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (330, 104, 'c13', 'VARCHAR2(30)', 202002, 30, 0, '企业联系人电话', '1', null, 0, 0, 0, 802005, 13, '1', 12, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (331, 104, 'c14', 'VARCHAR2(200)', 202002, 200, 0, '地址', '1', null, 0, 0, 0, 802005, 14, '1', 20, '1', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (332, 104, 'c15', 'VARCHAR2(30)', 202002, 30, 0, '坐标', '1', null, 0, 0, 0, 802005, 15, '0', 6, '0', '1', to_date('05-05-2016 12:28:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (343, 104, 'c16', 'VARCHAR2(30)', 202002, 30, 0, '企业负责人姓名', '1', null, 0, 0, 0, 802005, 16, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (344, 104, 'c17', 'VARCHAR2(30)', 202002, 30, 0, '企业负责人电话', '1', null, 0, 0, 0, 802005, 17, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (345, 104, 'c18', 'VARCHAR2(30)', 202002, 30, 0, 'R开户银行', '1', null, 0, 0, 0, 802005, 18, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (346, 104, 'c19', 'VARCHAR2(30)', 202002, 30, 0, 'R银行账号', '1', null, 0, 0, 0, 802005, 19, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (347, 104, 'c20', 'VARCHAR2(50)', 202002, 50, 0, 'R银行账户名称', '1', null, 0, 0, 0, 802005, 20, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (348, 104, 'c21', 'VARCHAR2(30)', 202002, 30, 0, 'R银行预留手机号', '1', null, 0, 0, 0, 802005, 21, '0', 6, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (349, 104, 'c22', 'VARCHAR2(50)', 202002, 50, 0, '业务开发人员', '1', null, 0, 0, 0, 802005, 22, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (350, 104, 'c23', 'VARCHAR2(50)', 202002, 50, 0, '业务负责人员', '1', null, 0, 0, 0, 802005, 23, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 300 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (351, 104, 'c24', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '信用等级', '1', '0', 0, 0, 0, 802005, 24, '0', 12, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (352, 104, 'c25', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '信用额度', '1', '0', 0, 0, 0, 802005, 25, '0', 12, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (353, 104, 'c26', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '当前信用余额', '1', '0', 0, 0, 0, 802005, 26, '0', 12, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (354, 104, 'c27', 'NUMBER(14,2) DEFAULT 0', 202001, 14, 2, '当前账户余额', '1', '0', 0, 0, 0, 802005, 27, '0', 12, '0', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (355, 104, 'c28', 'VARCHAR2(30)', 202002, 30, 0, '企业简称', '1', null, 0, 0, 0, 802005, 28, '1', 6, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (356, 104, 'c29', 'VARCHAR2(100)', 202002, 100, 0, '英文名称', '1', null, 0, 0, 0, 802005, 29, '1', 20, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (357, 104, 'c30', 'VARCHAR2(30)', 202002, 30, 0, '英文简称', '1', null, 0, 0, 0, 802005, 30, '1', 10, '1', '1', to_date('05-05-2016 21:01:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (434, 107, 'c6', 'NUMBER(11,0)', 202001, 11, 0, '上级企业', '1', null, 0, 0, 0, 802001, 6, '1', 12, '1', '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (435, 107, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '下属企业数目', '1', null, 0, 0, 0, 802001, 7, '1', 12, '1', '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (436, 107, 'c8', 'NUMBER(6,0)', 202001, 6, 0, '行业分类', '1', null, 0, 0, 0, 802001, 8, '1', 12, '1', '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (437, 107, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '行业细分', '1', null, 0, 0, 0, 802001, 9, '1', 12, '1', '1', to_date('07-12-2016 11:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (438, 104, 'c31', 'VARCHAR2(2000)', 202002, 2000, 0, '企业介绍', '1', null, 0, 0, 0, 802005, 31, '1', 20, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (439, 104, 'c32', 'VARCHAR2(200)', 202008, 200, 0, '企业LOGO', '1', null, 0, 0, 0, 802005, 32, '1', 20, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (440, 104, 'c33', 'VARCHAR2(200)', 202008, 200, 0, '营业执照', '1', null, 0, 0, 0, 802005, 33, '1', 30, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (441, 104, 'c34', 'VARCHAR2(20)', 202003, 20, 0, '创立日期', '1', null, 0, 0, 0, 802005, 34, '1', 30, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (442, 104, 'c35', 'VARCHAR2(30)', 202002, 30, 0, '企业规模', '1', null, 0, 0, 0, 802005, 35, '1', 30, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (443, 104, 'c36', 'VARCHAR2(100)', 202002, 100, 0, '地址2', '1', null, 0, 0, 0, 802005, 36, '1', 30, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (358, 105, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '名称', '1', null, 0, 0, 0, 802001, 1, '1', 12, '1', '1', to_date('07-12-2016 09:43:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:04:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (359, 105, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '编号', '1', null, 0, 0, 0, 802001, 2, '1', 6, '1', '1', to_date('07-12-2016 09:43:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:04:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (360, 105, 'c3', 'VARCHAR2(10)', 202002, 10, 0, '编码', '1', null, 0, 0, 0, 802001, 3, '1', 10, '1', '1', to_date('07-12-2016 09:43:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:04:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (361, 105, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 4, '1', 6, '1', '1', to_date('07-12-2016 09:43:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:04:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (362, 105, 'c5', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('07-12-2016 09:43:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:04:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (363, 106, 'c1', 'VARCHAR2(32)', 202011, 32, 0, '候选人CID', '1', null, 0, 0, 0, 802001, 1, '0', 22, '0', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (364, 106, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '顾问AUID', '1', null, 0, 0, 0, 802005, 2, '0', 22, '0', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (365, 106, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '入库状态', '1', null, 0, 0, 0, 802001, 3, '1', 15, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (366, 106, 'c4', 'DATE', 202006, 20, 0, '入库时间', '1', null, 0, 0, 0, 802005, 4, '1', 14, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (367, 106, 'c5', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '上线标识（0,1-9）', '1', '0', 0, 0, 0, 802005, 8, '1', 6, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (368, 106, 'c6', 'DATE', 202006, 20, 0, '上下线变更时间', '1', null, 0, 0, 0, 802005, 9, '1', 6, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (369, 106, 'c7', 'VARCHAR2(20)', 202002, 20, 0, '简历编号', '1', null, 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (370, 106, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-中文姓名', '1', null, 0, 0, 0, 802001, 11, '1', 12, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (371, 106, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-英文名', '1', null, 0, 0, 0, 802001, 12, '1', 12, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (372, 106, 'c10', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-出生日期', '1', null, 0, 0, 0, 802005, 13, '1', 10, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (373, 106, 'c11', 'NUMBER(3,0)', 202001, 3, 0, '基本信息-年龄', '1', null, 0, 0, 0, 802005, 14, '1', 10, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (374, 106, 'c12', 'NUMBER(6,0)', 202001, 6, 0, '基本信息-星座', '1', null, 0, 0, 0, 802005, 15, '1', 10, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (375, 106, 'c13', 'NUMBER(6,0)', 202001, 6, 0, '基本信息-性别', '1', null, 0, 0, 0, 802001, 16, '1', 10, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (376, 106, 'c14', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-居住城市（省/直辖市）', '1', null, 0, 0, 0, 802005, 17, '1', 10, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (377, 106, 'c15', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-居住城市（市）', '1', null, 0, 0, 0, 802005, 18, '1', 10, '1', '1', to_date('07-12-2016 10:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (378, 106, 'c16', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-居住城市（区/县级市）', '1', null, 0, 0, 0, 802005, 19, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (379, 106, 'c17', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-户籍所在地（省/直辖市）', '1', null, 0, 0, 0, 802005, 20, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (380, 106, 'c18', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-户籍所在地（市）', '1', null, 0, 0, 0, 802005, 21, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (381, 106, 'c19', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-户籍所在地（区/县级市）', '1', null, 0, 0, 0, 802005, 22, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (382, 106, 'c20', 'VARCHAR2(4)', 202002, 4, 0, '基本信息-手机号码（区号）', '1', null, 0, 0, 0, 802005, 23, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (383, 106, 'c21', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-手机号码', '1', null, 0, 0, 0, 802005, 24, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (384, 106, 'c22', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-个人邮箱', '1', null, 0, 0, 0, 802005, 25, '1', 15, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (385, 106, 'c23', 'VARCHAR2(30)', 202002, 30, 0, '基本信息-国籍', '1', null, 0, 0, 0, 802005, 26, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (386, 106, 'c24', 'NUMBER(6,0)', 202001, 6, 0, '基本信息-婚姻状况', '1', null, 0, 0, 0, 802005, 27, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (387, 106, 'c25', 'NUMBER(6,0)', 202001, 6, 0, '基本信息-最高学历', '1', null, 0, 0, 0, 802005, 28, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (388, 106, 'c26', 'NUMBER(6,0)', 202001, 6, 0, '基本信息-基本年薪（万）', '1', null, 0, 0, 0, 802005, 29, '1', 10, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (389, 106, 'c27', 'NUMBER(11,0)', 202001, 11, 0, '统计-关注数目', '1', null, 0, 0, 0, 802005, 30, '1', 6, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (390, 106, 'c28', 'NUMBER(11,0)', 202001, 11, 0, '统计-邀请面试数目', '1', null, 0, 0, 0, 802005, 31, '1', 6, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (391, 106, 'c29', 'NUMBER(11,0)', 202001, 11, 0, '统计-Offer数目', '1', null, 0, 0, 0, 802005, 32, '1', 6, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (392, 106, 'c30', 'NUMBER(11,0)', 202001, 11, 0, '统计-入职数目', '1', null, 0, 0, 0, 802005, 33, '1', 6, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (393, 106, 'c31', 'NUMBER(6,0)', 202001, 6, 0, '个人信息-外貌（不用）', '1', null, 0, 0, 0, 802005, 34, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (394, 106, 'c32', 'NUMBER(6,0)', 202001, 6, 0, '个人信息-性格（不用）', '1', null, 0, 0, 0, 802005, 35, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (395, 106, 'c33', 'NUMBER(6,0)', 202001, 6, 0, '个人信息-沟通能力（不用）', '1', null, 0, 0, 0, 802005, 36, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (396, 106, 'c34', 'NUMBER(6,0)', 202001, 6, 0, '个人信息-语言水平（不用）', '1', null, 0, 0, 0, 802005, 37, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (397, 106, 'c35', 'VARCHAR2(500)', 202002, 500, 0, '个人信息-缺点/疑虑（不用）', '1', null, 0, 0, 0, 802005, 38, '1', 20, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (398, 106, 'c36', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 39, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (399, 106, 'c37', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 40, '0', 6, '0', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (400, 106, 'c38', 'VARCHAR2(50)', 202002, 50, 0, '最近所在行业', '1', null, 0, 0, 0, 802005, 41, '0', 6, '0', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (401, 106, 'c39', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '工作年限（年）', '1', '0', 0, 0, 0, 802005, 42, '1', 6, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (402, 106, 'c40', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '在职状态', '1', '0', 0, 0, 0, 802005, 43, '1', 15, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (403, 106, 'c41', 'VARCHAR2(100)', 202002, 100, 0, '最近所在公司', '1', null, 0, 0, 0, 802005, 44, '1', 15, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (404, 106, 'c42', 'VARCHAR2(100)', 202002, 100, 0, '最近职位', '1', null, 0, 0, 0, 802005, 45, '1', 15, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (405, 106, 'c43', 'VARCHAR2(30)', 202002, 30, 0, '最近月薪（K）', '1', null, 0, 0, 0, 802005, 46, '1', 6, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (406, 106, 'c44', 'VARCHAR2(30)', 202002, 30, 0, '最近年薪（万）', '1', null, 0, 0, 0, 802005, 47, '1', 6, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (407, 106, 'c45', 'VARCHAR2(100)', 202002, 100, 0, '最近薪资构成', '1', null, 0, 0, 0, 802005, 48, '1', 15, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (408, 106, 'c46', 'VARCHAR2(100)', 202002, 100, 0, '工作期望-职位', '1', null, 0, 0, 0, 802005, 49, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (409, 106, 'c47', 'VARCHAR2(100)', 202002, 100, 0, '工作期望-职级', '1', null, 0, 0, 0, 802005, 50, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (410, 106, 'c48', 'VARCHAR2(100)', 202002, 100, 0, '工作期望-行业', '1', null, 0, 0, 0, 802005, 51, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (411, 106, 'c49', 'VARCHAR2(100)', 202002, 100, 0, '工作期望-城市', '1', null, 0, 0, 0, 802005, 52, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (412, 106, 'c50', 'VARCHAR2(100)', 202002, 100, 0, '工作期望-期望月薪（K）', '1', null, 0, 0, 0, 802005, 53, '1', 12, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (413, 106, 'c51', 'VARCHAR2(100)', 202002, 100, 0, '工作期望-期望年薪（万）', '1', null, 0, 0, 0, 802005, 54, '1', 15, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (414, 106, 'c52', 'VARCHAR2(1000)', 202002, 1000, 0, '技能标签-职业', '1', null, 0, 0, 0, 802005, 55, '1', 20, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (415, 106, 'c53', 'VARCHAR2(1000)', 202002, 1000, 0, '技能标签-团队管理', '1', null, 0, 0, 0, 802005, 56, '1', 20, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (416, 106, 'c54', 'VARCHAR2(1000)', 202002, 1000, 0, '技能标签-软件技能', '1', null, 0, 0, 0, 802005, 57, '1', 20, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (417, 106, 'c55', 'VARCHAR2(1000)', 202002, 1000, 0, '技能标签-（未使用）', '1', null, 0, 0, 0, 802005, 58, '1', 20, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (418, 106, 'c56', 'VARCHAR2(1000)', 202002, 1000, 0, '技能标签-（未使用）', '1', null, 0, 0, 0, 802005, 59, '1', 30, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (419, 106, 'c57', 'VARCHAR2(2000)', 202002, 2000, 0, '教育背景', '1', null, 0, 0, 0, 802005, 60, '1', 30, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (420, 106, 'c58', 'VARCHAR2(2000)', 202002, 2000, 0, '培训经历', '1', null, 0, 0, 0, 802005, 61, '1', 30, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (421, 106, 'c59', 'VARCHAR2(2000)', 202002, 2000, 0, '获得证书', '1', null, 0, 0, 0, 802005, 62, '1', 30, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (422, 106, 'c60', 'VARCHAR2(4000)', 202002, 4000, 0, '工作经验', '1', null, 0, 0, 0, 802005, 63, '1', 30, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (423, 106, 'c61', 'VARCHAR2(4000)', 202002, 4000, 0, '项目经验', '1', null, 0, 0, 0, 802005, 64, '1', 30, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (424, 106, 'c62', 'VARCHAR2(200)', 202007, 200, 0, '简历附件', '1', null, 0, 0, 0, 802005, 65, '1', 20, '1', '1', to_date('07-12-2016 10:41:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (425, 106, 'c63', 'VARCHAR2(4000)', 202002, 4000, 0, '意向公司IDs', '1', null, 0, 0, 0, 802005, 66, '1', 20, '1', '1', to_date('07-12-2016 10:51:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (426, 106, 'c64', 'VARCHAR2(4000)', 202002, 4000, 0, '屏蔽公司IDs', '1', null, 0, 0, 0, 802005, 67, '1', 20, '1', '1', to_date('07-12-2016 10:51:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (427, 106, 'c65', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 68, '0', 6, '0', '1', to_date('07-12-2016 10:51:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (428, 106, 'c66', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '是否精品', '1', '0', 0, 0, 0, 802005, 69, '1', 6, '1', '1', to_date('07-12-2016 10:51:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (429, 107, 'c1', 'VARCHAR2(100)', 202002, 100, 0, '企业名称', '1', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (430, 107, 'c2', 'VARCHAR2(30)', 202002, 30, 0, '中文简称', '1', null, 0, 0, 0, 802001, 2, '1', 12, '1', '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (431, 107, 'c3', 'VARCHAR2(100)', 202002, 100, 0, '英文名称', '1', null, 0, 0, 0, 802001, 3, '1', 15, '1', '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (432, 107, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '英文简称', '1', null, 0, 0, 0, 802001, 4, '1', 12, '1', '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (433, 107, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 5, '1', 12, '1', '1', to_date('07-12-2016 11:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (208, 18, 'c1', 'VARCHAR2(32) NOT NULL', 202002, 32, 0, 'AUID', '0', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 08:40:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (677, 106, 'c85', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 85, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (678, 106, 'c86', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 86, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (679, 106, 'c87', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 87, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (680, 106, 'c88', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 88, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (681, 106, 'c89', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 89, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (682, 106, 'c90', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 90, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 400 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (706, 119, 'c16', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'C可见', '0', '0', 0, 0, 0, 802001, 16, '1', 6, '1', '1', to_date('15-12-2016 16:39:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (707, 119, 'c17', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '是否统计项', '0', '0', 0, 0, 0, 802001, 17, '1', 6, '1', '1', to_date('15-12-2016 16:39:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (708, 119, 'c18', 'VARCHAR2(200)', 202002, 200, 0, '详情链接', '1', null, 0, 0, 0, 802001, 18, '1', 20, '1', '1', to_date('15-12-2016 16:39:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1057, 129, 'c19', 'NUMBER(6,0)', 202001, 6, 0, '执行后：候选人流程状态', '1', null, 0, 0, 0, 802005, 19, '1', 12, '1', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1058, 129, 'c20', 'NUMBER(6,0)', 202001, 6, 0, '执行后：候选人流程子状态', '1', null, 0, 0, 0, 802005, 20, '1', 12, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1059, 129, 'c21', 'NUMBER(6,0)', 202001, 6, 0, '执行后：票据状态', '1', null, 0, 0, 0, 802005, 21, '1', 12, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1060, 129, 'c22', 'NUMBER(6,0)', 202001, 6, 0, '执行后：关注或黑名单状态', '1', null, 0, 0, 0, 802005, 22, '1', 12, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1061, 129, 'c23', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 23, '0', 12, '0', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1062, 129, 'c24', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 24, '0', 12, '0', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1063, 129, 'c25', 'VARCHAR2(30)', 202002, 30, 0, '按钮', '1', null, 0, 0, 0, 802005, 25, '1', 15, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1064, 107, 'c16', 'NUMBER(6,0)', 202001, 6, 0, '创立日期', '1', null, 0, 0, 0, 802001, 16, '1', 12, '1', '1', to_date('23-12-2016 07:50:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1065, 107, 'c17', 'NUMBER(6,0)', 202001, 6, 0, '规模', '1', null, 0, 0, 0, 802001, 17, '1', 12, '1', '1', to_date('23-12-2016 07:50:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1066, 107, 'c18', 'NUMBER(6,0)', 202001, 6, 0, '地址1', '1', null, 0, 0, 0, 802001, 18, '1', 20, '1', '1', to_date('23-12-2016 07:50:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1067, 107, 'c19', 'NUMBER(6,0)', 202001, 6, 0, '地址2', '1', null, 0, 0, 0, 802001, 19, '1', 12, '1', '1', to_date('23-12-2016 07:50:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1068, 107, 'c20', 'NUMBER(6,0)', 202001, 6, 0, '地址3', '1', null, 0, 0, 0, 802001, 20, '1', 12, '1', '1', to_date('23-12-2016 07:50:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1069, 107, 'c21', 'NUMBER(6,0)', 202001, 6, 0, '邮编', '1', null, 0, 0, 0, 802001, 21, '1', 12, '1', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1070, 107, 'c22', 'NUMBER(6,0)', 202001, 6, 0, '总机电话', '1', null, 0, 0, 0, 802001, 22, '1', 12, '1', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1071, 107, 'c23', 'NUMBER(6,0)', 202001, 6, 0, '网址', '1', null, 0, 0, 0, 802001, 23, '1', 12, '1', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1072, 107, 'c24', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 24, '0', 10, '0', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1073, 107, 'c25', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 25, '0', 10, '0', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1074, 107, 'c26', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 26, '0', 10, '0', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1075, 107, 'c27', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 27, '0', 10, '0', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1076, 107, 'c28', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 28, '0', 10, '0', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1077, 107, 'c29', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 29, '0', 10, '0', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1078, 107, 'c30', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 30, '0', 10, '0', '1', to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1079, 132, 'c1', 'VARCHAR2(32)', 202002, 32, 0, 'AMID', '1', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1080, 132, 'c2', 'NUMBER(11,0)', 202001, 11, 0, '企业', '1', null, 0, 0, 0, 802001, 2, '1', 20, '1', '1', to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1081, 132, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '邀请码', '1', null, 0, 0, 0, 802001, 3, '1', 10, '1', '1', to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1082, 132, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '使用次数', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1083, 132, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 5, '1', 12, '1', '1', to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1084, 132, 'c6', 'DATE', 202006, 20, 0, '截止有效期', '1', null, 0, 0, 0, 802001, 6, '1', 15, '1', '1', to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:02:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (584, 122, 'c1', 'VARCHAR2(32)', 202002, 32, 0, 'AUID', '1', null, 0, 0, 0, 802005, 1, '1', 20, '1', '1', to_date('09-12-2016 17:08:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (585, 122, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 2, '1', 20, '1', '1', to_date('09-12-2016 17:08:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (586, 122, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '附件分类', '1', null, 0, 0, 0, 802005, 3, '1', 12, '1', '1', to_date('09-12-2016 17:08:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (587, 122, 'c4', 'VARCHAR2(200)', 202008, 200, 0, '附件目录', '1', null, 0, 0, 0, 802005, 4, '1', 20, '1', '1', to_date('09-12-2016 17:08:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (588, 122, 'c5', 'VARCHAR2(100)', 202002, 100, 0, '文件标题', '1', null, 0, 0, 0, 802005, 5, '1', 12, '1', '1', to_date('09-12-2016 17:08:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (589, 106, 'c67', 'VARCHAR2(32)', 202002, 32, 0, '服务猎头公司AMID', '1', null, 0, 0, 0, 802001, 70, '0', 6, '0', '1', to_date('09-12-2016 21:51:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (590, 106, 'c68', 'NUMBER(11,0)', 202001, 11, 0, '服务猎头公司MID', '1', null, 0, 0, 0, 802001, 71, '1', 15, '1', '1', to_date('09-12-2016 21:51:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (591, 106, 'c69', 'NUMBER(6,0)', 202001, 6, 0, '有效状态', '1', null, 0, 0, 0, 802001, 72, '1', 10, '1', '1', to_date('09-12-2016 21:51:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (592, 106, 'c70', 'NUMBER(6,0)', 202001, 6, 0, '自营标识', '1', null, 0, 0, 0, 802001, 73, '1', 10, '1', '1', to_date('09-12-2016 21:51:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (593, 123, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人CID', '1', null, 0, 0, 0, 802005, 1, '0', 22, '0', '1', to_date('12-12-2016 17:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (594, 123, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '顾问AUID', '1', null, 0, 0, 0, 802005, 2, '1', 10, '1', '1', to_date('12-12-2016 17:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (595, 123, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 3, '1', 10, '1', '1', to_date('12-12-2016 17:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (596, 123, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '标签分类', '1', null, 0, 0, 0, 802005, 4, '1', 10, '1', '1', to_date('12-12-2016 17:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (597, 123, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '标签', '1', null, 0, 0, 0, 802005, 5, '1', 10, '1', '1', to_date('12-12-2016 17:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1085, 119, 'c21', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'ADMIN通知开关（0,1）', '0', '0', 0, 0, 0, 802001, 21, '1', 6, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1086, 119, 'c22', 'VARCHAR2(200)', 202002, 200, 0, '通知格式（ADMIN端）', '1', null, 0, 0, 0, 802001, 22, '1', 30, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1087, 119, 'c23', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'BS通知开关（0,1）', '0', '0', 0, 0, 0, 802001, 23, '1', 6, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1088, 119, 'c24', 'VARCHAR2(200)', 202002, 200, 0, '通知格式（BS端）', '1', null, 0, 0, 0, 802001, 24, '1', 30, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1089, 119, 'c25', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'HC通知开关（0,1）', '0', '0', 0, 0, 0, 802001, 25, '1', 6, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1090, 119, 'c26', 'VARCHAR2(200)', 202002, 200, 0, '通知格式（HC端）', '1', null, 0, 0, 0, 802001, 26, '1', 30, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1091, 119, 'c27', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'HR通知开关（0,1）', '0', '0', 0, 0, 0, 802001, 27, '1', 6, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1092, 119, 'c28', 'VARCHAR2(200)', 202002, 200, 0, '通知格式（HR端）', '1', null, 0, 0, 0, 802001, 28, '1', 30, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1093, 119, 'c29', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'C通知开关（0,1）', '0', '0', 0, 0, 0, 802001, 29, '1', 6, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1094, 119, 'c30', 'VARCHAR2(200)', 202002, 200, 0, '通知格式（C端）', '1', null, 0, 0, 0, 802001, 30, '1', 20, '1', '1', to_date('24-12-2016 13:02:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1095, 129, 'c26', 'VARCHAR2(30)', 202002, 30, 0, 'ACTION', '1', null, 0, 0, 0, 802005, 26, '1', 15, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1096, 129, 'c27', 'VARCHAR2(200)', 202002, 200, 0, '流程标题格式', '1', null, 0, 0, 0, 802005, 27, '1', 30, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1097, 129, 'c28', 'VARCHAR2(200)', 202002, 200, 0, '流程说明格式', '1', null, 0, 0, 0, 802005, 28, '1', 30, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1098, 129, 'c29', 'VARCHAR2(500)', 202002, 500, 0, '流程详情格式', '1', null, 0, 0, 0, 802005, 29, '1', 30, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1099, 129, 'c30', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '面试次数+1', '1', '0', 0, 0, 0, 802005, 30, '1', 10, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (449, 108, 'c1', 'VARCHAR2(100)', 202002, 100, 0, '职位名称', '1', null, 0, 0, 0, 802005, 1, '1', 20, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (450, 108, 'c2', 'VARCHAR2(50)', 202002, 50, 0, 'HR', '1', null, 0, 0, 0, 802005, 2, '1', 15, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (451, 108, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 3, '1', 12, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (452, 108, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '在线状态(0,1)', '1', null, 0, 0, 0, 802005, 4, '1', 12, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (453, 108, 'c5', 'VARCHAR2(32)', 202002, 32, 0, '公司AMID', '1', null, 0, 0, 0, 802005, 5, '1', 12, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (454, 108, 'c6', 'NUMBER(11,0)', 202001, 11, 0, '公司MID', '1', null, 0, 0, 0, 802005, 6, '1', 15, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (455, 108, 'c7', 'VARCHAR2(50)', 202002, 50, 0, '所在行业', '1', null, 0, 0, 0, 802005, 7, '1', 12, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (456, 108, 'c8', 'VARCHAR2(50)', 202002, 50, 0, '所在部门', '1', null, 0, 0, 0, 802005, 8, '1', 12, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (457, 108, 'c9', 'VARCHAR2(50)', 202002, 50, 0, '工作经验', '1', null, 0, 0, 0, 802005, 9, '1', 12, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (458, 108, 'c10', 'VARCHAR2(50)', 202002, 50, 0, '学历要求', '1', null, 0, 0, 0, 802005, 10, '1', 12, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (459, 108, 'c11', 'VARCHAR2(50)', 202002, 50, 0, '薪资范围', '1', null, 0, 0, 0, 802005, 11, '1', 15, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (460, 108, 'c12', 'VARCHAR2(500)', 202002, 500, 0, '职位诱惑', '1', null, 0, 0, 0, 802005, 12, '1', 15, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (461, 108, 'c13', 'VARCHAR2(1000)', 202002, 1000, 0, '职位描述', '1', null, 0, 0, 0, 802005, 13, '1', 15, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (462, 108, 'c14', 'VARCHAR2(1000)', 202002, 1000, 0, '任职要求', '1', null, 0, 0, 0, 802005, 14, '1', 20, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1100, 109, 'c31', 'VARCHAR2(32)', 202002, 32, 0, '公司AMID', '1', null, 0, 0, 0, 802005, 31, '0', 10, '0', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1101, 109, 'c32', 'NUMBER(14,0)', 202001, 14, 0, '公司MID', '1', null, 0, 0, 0, 802005, 32, '1', 20, '1', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1102, 109, 'c33', 'VARCHAR2(100)', 202002, 100, 0, '附：公司简称', '1', null, 0, 0, 0, 802005, 33, '1', 20, '1', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1103, 109, 'c34', 'VARCHAR2(30)', 202002, 30, 0, '附：职位名称', '1', null, 0, 0, 0, 802005, 34, '1', 10, '1', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1104, 109, 'c35', 'VARCHAR2(30)', 202002, 30, 0, '附：HR名称', '1', null, 0, 0, 0, 802005, 35, '1', 10, '1', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1105, 109, 'c36', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 36, '0', 10, '0', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1106, 109, 'c37', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 37, '0', 10, '0', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1107, 109, 'c38', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 38, '0', 10, '0', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1108, 109, 'c39', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 39, '0', 10, '0', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1109, 109, 'c40', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 40, '0', 10, '0', '1', to_date('25-12-2016 08:53:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1124, 118, 'c18', 'VARCHAR2(200)', 202002, 200, 0, '事件标题C', '1', null, 0, 0, 0, 802005, 18, '1', 20, '1', '1', to_date('25-12-2016 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1125, 118, 'c19', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'M可见', '1', '0', 0, 0, 0, 802005, 19, '1', 6, '1', '1', to_date('25-12-2016 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1126, 118, 'c20', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'BS可见', '1', '0', 0, 0, 0, 802005, 20, '1', 6, '1', '1', to_date('25-12-2016 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1127, 118, 'c21', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'HC可见', '1', '0', 0, 0, 0, 802005, 21, '1', 6, '1', '1', to_date('25-12-2016 17:11:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1128, 118, 'c22', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'HR可见', '1', '0', 0, 0, 0, 802005, 22, '1', 6, '1', '1', to_date('25-12-2016 17:11:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1129, 118, 'c23', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'C可见', '1', '0', 0, 0, 0, 802005, 23, '1', 6, '1', '1', to_date('25-12-2016 17:11:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1130, 118, 'c24', 'DATE', 202006, 100, 0, '通知时间', '1', null, 0, 0, 0, 802005, 24, '1', 15, '1', '1', to_date('25-12-2016 17:11:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1131, 118, 'c25', 'VARCHAR2(100)', 202002, 100, 0, '通知对象M', '1', null, 0, 0, 0, 802005, 25, '1', 10, '1', '1', to_date('25-12-2016 17:11:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1132, 118, 'c26', 'VARCHAR2(100)', 202002, 100, 0, '通知对象BS', '1', null, 0, 0, 0, 802005, 26, '1', 10, '1', '1', to_date('25-12-2016 17:57:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1133, 118, 'c27', 'VARCHAR2(100)', 202002, 100, 0, '通知对象HC', '1', null, 0, 0, 0, 802005, 27, '1', 10, '1', '1', to_date('25-12-2016 17:57:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1134, 118, 'c28', 'VARCHAR2(100)', 202002, 100, 0, '通知对象HR', '1', null, 0, 0, 0, 802005, 28, '1', 10, '1', '1', to_date('25-12-2016 17:57:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1135, 118, 'c29', 'VARCHAR2(100)', 202002, 100, 0, '通知对象C', '1', null, 0, 0, 0, 802005, 29, '1', 10, '1', '1', to_date('25-12-2016 17:57:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1136, 118, 'c30', 'VARCHAR2(200)', 202002, 200, 0, '通知标题M', '1', null, 0, 0, 0, 802005, 30, '1', 40, '1', '1', to_date('25-12-2016 17:57:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1522, 133, 'c16', 'NUMBER(14,0)', 202001, 14, 0, '应聘职位ID', '1', null, 0, 0, 0, 802005, 16, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1523, 133, 'c17', 'VARCHAR2(100)', 202002, 100, 0, '应聘职位说明', '1', null, 0, 0, 0, 802005, 17, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1524, 133, 'c18', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '已经面试轮次', '1', '0', 0, 0, 0, 802005, 18, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 500 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1525, 133, 'c19', 'NUMBER(6,0)', 202001, 6, 0, '结算状态', '1', null, 0, 0, 0, 802005, 19, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1526, 133, 'c20', 'VARCHAR2(200)', 202002, 200, 0, '结算说明', '1', null, 0, 0, 0, 802005, 20, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1711, 133, 'c21', 'NUMBER(6,0)', 202001, 6, 0, '关注状态', '1', null, 0, 0, 0, 802005, 21, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1712, 133, 'c22', 'DATE', 202006, 20, 0, '关注日期', '1', null, 0, 0, 0, 802005, 22, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1713, 133, 'c23', 'VARCHAR2(200)', 202002, 200, 0, '流程描述（ADMIN端）', '1', null, 0, 0, 0, 802005, 23, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1714, 133, 'c24', 'VARCHAR2(200)', 202002, 200, 0, '流程描述（HC端）', '1', null, 0, 0, 0, 802005, 24, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1715, 133, 'c25', 'VARCHAR2(200)', 202002, 200, 0, '流程描述（HR端）', '1', null, 0, 0, 0, 802005, 25, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1716, 133, 'c26', 'VARCHAR2(200)', 202002, 200, 0, '流程描述（C端）', '1', null, 0, 0, 0, 802005, 26, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1717, 133, 'c27', 'VARCHAR2(50)', 202002, 50, 0, '操作人', '1', null, 0, 0, 0, 802005, 27, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1718, 133, 'c28', 'VARCHAR2(30)', 202002, 30, 0, '操作人姓名', '1', null, 0, 0, 0, 802005, 28, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1719, 133, 'c29', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802005, 29, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1720, 133, 'c30', 'VARCHAR2(200)', 202002, 200, 0, '操作说明', '1', null, 0, 0, 0, 802005, 30, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1783, 116, 'c14', 'VARCHAR2(30)', 202002, 30, 0, '开票单号', '1', null, 0, 0, 0, 802001, 14, '1', 10, '1', '1', to_date('26-12-2016 17:09:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1784, 116, 'c15', 'VARCHAR2(32)', 202002, 32, 0, '开票人', '1', null, 0, 0, 0, 802001, 15, '1', 10, '1', '1', to_date('26-12-2016 17:09:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1785, 116, 'c16', 'VARCHAR2(30)', 202002, 30, 0, '开票人姓名', '1', null, 0, 0, 0, 802001, 16, '1', 10, '1', '1', to_date('26-12-2016 17:10:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1786, 116, 'c17', 'DATE', 202006, 20, 0, '开票时间', '1', null, 0, 0, 0, 802001, 17, '1', 10, '1', '1', to_date('26-12-2016 17:10:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1787, 116, 'c18', 'VARCHAR2(30)', 202002, 30, 0, '付款单号', '1', null, 0, 0, 0, 802001, 18, '1', 10, '1', '1', to_date('26-12-2016 17:10:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1788, 116, 'c19', 'VARCHAR2(32)', 202002, 32, 0, '付款人', '1', null, 0, 0, 0, 802001, 19, '1', 10, '1', '1', to_date('26-12-2016 17:19:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1789, 116, 'c20', 'VARCHAR2(30)', 202002, 30, 0, '付款人姓名', '1', null, 0, 0, 0, 802001, 20, '1', 10, '1', '1', to_date('26-12-2016 17:19:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1790, 116, 'c21', 'DATE', 202006, 20, 0, '付款时间', '1', null, 0, 0, 0, 802001, 21, '1', 10, '1', '1', to_date('26-12-2016 17:19:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1791, 116, 'c22', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 22, '0', 30, '0', '1', to_date('26-12-2016 17:19:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1792, 116, 'c23', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 23, '0', 30, '0', '1', to_date('26-12-2016 17:19:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1793, 116, 'c24', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 24, '0', 30, '0', '1', to_date('26-12-2016 17:19:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1794, 116, 'c25', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 25, '0', 30, '0', '1', to_date('26-12-2016 17:19:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1795, 118, 'c31', 'VARCHAR2(200)', 202002, 200, 0, '通知标题BS', '1', null, 0, 0, 0, 802005, 31, '1', 40, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1796, 118, 'c32', 'VARCHAR2(200)', 202002, 200, 0, '通知标题HC', '1', null, 0, 0, 0, 802005, 32, '1', 20, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1797, 118, 'c33', 'VARCHAR2(200)', 202002, 200, 0, '通知标题HR', '1', null, 0, 0, 0, 802005, 33, '1', 20, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1798, 118, 'c34', 'VARCHAR2(200)', 202002, 200, 0, '通知标题C', '1', null, 0, 0, 0, 802005, 34, '1', 20, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1799, 118, 'c35', 'NUMBER(6,0)', 202001, 6, 0, '任务状态M', '1', null, 0, 0, 0, 802005, 35, '1', 12, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1800, 118, 'c36', 'NUMBER(6,0)', 202001, 6, 0, '任务状态BS', '1', null, 0, 0, 0, 802005, 36, '1', 12, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1801, 118, 'c37', 'NUMBER(6,0)', 202001, 6, 0, '任务状态HC', '1', null, 0, 0, 0, 802005, 37, '1', 12, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1802, 118, 'c38', 'NUMBER(6,0)', 202001, 6, 0, '任务状态HR', '1', null, 0, 0, 0, 802005, 38, '1', 12, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1803, 118, 'c39', 'NUMBER(6,0)', 202001, 6, 0, '任务状态C', '1', null, 0, 0, 0, 802005, 39, '1', 12, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1804, 118, 'c40', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '已读标记M', '1', '0', 0, 0, 0, 802005, 40, '1', 6, '1', '1', to_date('26-12-2016 17:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1805, 125, 'c31', 'NUMBER(6,0)', 202001, 6, 0, '认证状态（0,1）', '1', null, 0, 0, 0, 802001, 31, '1', 6, '1', '1', to_date('26-12-2016 20:26:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1806, 125, 'c32', 'DATE', 202006, 20, 0, '认证日期', '1', null, 0, 0, 0, 802001, 32, '1', 15, '1', '1', to_date('26-12-2016 20:26:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1807, 125, 'c33', 'VARCHAR2(200)', 202008, 200, 0, '身份证图片', '1', null, 0, 0, 0, 802001, 33, '1', 20, '1', '1', to_date('26-12-2016 20:26:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1138, 133, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 2, '1', 12, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1139, 133, 'c3', 'VARCHAR2(50)', 202002, 50, 0, 'HC_AUID', '1', null, 0, 0, 0, 802005, 3, '0', 15, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1140, 133, 'c4', 'VARCHAR2(50)', 202002, 50, 0, 'HR_AUID', '1', null, 0, 0, 0, 802005, 4, '0', 15, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1141, 133, 'c5', 'VARCHAR2(50)', 202002, 50, 0, '流程PCID', '1', null, 0, 0, 0, 802005, 5, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1142, 133, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '流程类型', '1', null, 0, 0, 0, 802005, 6, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1143, 133, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '候选人状态', '1', null, 0, 0, 0, 802005, 7, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1144, 133, 'c8', 'NUMBER(6,0)', 202001, 6, 0, '流程状态', '1', null, 0, 0, 0, 802005, 8, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1240, 133, 'c10', 'VARCHAR2(200)', 202002, 200, 0, '流程说明', '1', null, 0, 0, 0, 802005, 10, '1', 20, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1255, 133, 'c11', 'VARCHAR2(1000)', 202002, 1000, 0, '流程详情', '1', null, 0, 0, 0, 802005, 11, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1256, 133, 'c12', 'NUMBER(6,0)', 202001, 6, 0, '流程子状态', '1', null, 0, 0, 0, 802005, 12, '1', 20, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1180, 133, 'c9', 'VARCHAR2(100)', 202002, 100, 0, '流程标题', '1', null, 0, 0, 0, 802005, 9, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1519, 133, 'c13', 'VARCHAR2(200)', 202002, 200, 0, '流程子状态说明', '1', null, 0, 0, 0, 802005, 13, '1', 20, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1520, 133, 'c14', 'DATE', 202006, 20, 0, '流程开始时间', '1', null, 0, 0, 0, 802005, 14, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1521, 133, 'c15', 'DATE', 202006, 20, 0, '流程结束时间', '1', null, 0, 0, 0, 802005, 15, '1', 15, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1808, 125, 'c34', 'VARCHAR2(200)', 202008, 200, 0, '名片图片', '1', null, 0, 0, 0, 802001, 34, '1', 20, '1', '1', to_date('26-12-2016 20:26:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1809, 125, 'c35', 'VARCHAR2(30)', 202002, 30, 0, '身份证号', '1', null, 0, 0, 0, 802001, 35, '1', 20, '1', '1', to_date('26-12-2016 20:26:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1810, 119, 'c31', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '限时时间（小时）', '1', '0', 0, 0, 0, 802001, 31, '1', 10, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1811, 119, 'c32', 'VARCHAR2(30)', 202002, 30, 0, '超时执行流程CODE', '1', null, 0, 0, 0, 802001, 32, '1', 10, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1812, 119, 'c33', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '提醒类型', '0', null, 0, 0, 0, 802001, 33, '1', 12, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1813, 119, 'c34', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '是否计划提醒（取noticeTime）', '0', '0', 0, 0, 0, 802001, 34, '1', 10, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1814, 119, 'c35', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '是否允许推迟提醒', '0', '0', 0, 0, 0, 802001, 35, '1', 10, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1815, 119, 'c36', 'VARCHAR2(200)', 202002, 200, 0, '提醒详情格式', '1', null, 0, 0, 0, 802001, 36, '1', 40, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1816, 119, 'c37', 'VARCHAR2(200)', 202002, 200, 0, '提醒备注说明格式', '1', null, 0, 0, 0, 802001, 37, '1', 20, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1817, 119, 'c38', 'NUMBER(6,0)', 202001, 6, 0, '事件提醒状态', '1', null, 0, 0, 0, 802001, 38, '1', 10, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1818, 119, 'c39', 'VARCHAR2(100)', 202002, 100, 0, '事件提醒状态说明', '1', null, 0, 0, 0, 802001, 39, '1', 12, '1', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1819, 119, 'c40', 'VARCHAR2(10)', 202002, 10, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 40, '0', 10, '0', '1', to_date('27-12-2016 13:43:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1820, 118, 'c41', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '已读标记BS', '1', '0', 0, 0, 0, 802005, 41, '1', 6, '1', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1821, 118, 'c42', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '已读标记HC', '1', '0', 0, 0, 0, 802005, 42, '1', 6, '1', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1822, 118, 'c43', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '已读标记HR', '1', '0', 0, 0, 0, 802005, 43, '1', 6, '1', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1823, 118, 'c44', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '已读标记C', '1', '0', 0, 0, 0, 802005, 44, '1', 6, '1', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1824, 118, 'c45', 'VARCHAR2(50)', 202002, 50, 0, '附：公司AMID', '1', null, 0, 0, 0, 802005, 45, '0', 10, '0', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1825, 118, 'c46', 'VARCHAR2(30)', 202002, 30, 0, '附：公司MID', '1', null, 0, 0, 0, 802005, 46, '0', 10, '0', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1826, 118, 'c47', 'VARCHAR2(30)', 202002, 30, 0, '附：职位ID', '1', null, 0, 0, 0, 802005, 47, '0', 10, '0', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1827, 118, 'c48', 'VARCHAR2(50)', 202002, 50, 0, '附：HR_AUID', '1', null, 0, 0, 0, 802005, 48, '0', 10, '0', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1828, 118, 'c49', 'DATE', 202006, 20, 0, '附：提醒日期', '1', null, 0, 0, 0, 802005, 49, '1', 10, '1', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1829, 118, 'c50', 'VARCHAR2(30)', 202002, 30, 0, '附：候选人姓名', '1', null, 0, 0, 0, 802005, 50, '1', 10, '1', '1', to_date('28-12-2016 07:36:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1830, 112, 'c8', 'VARCHAR2(50)', 202002, 50, 0, '操作顾问AUID', '1', null, 0, 0, 0, 802001, 8, '1', 20, '1', '1', to_date('28-12-2016 11:39:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1831, 112, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '操作顾问姓名', '1', null, 0, 0, 0, 802001, 9, '1', 10, '1', '1', to_date('28-12-2016 11:39:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1832, 112, 'c10', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('28-12-2016 11:39:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1833, 110, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 8, '0', 10, '0', '1', to_date('28-12-2016 11:40:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1834, 110, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 9, '0', 10, '0', '1', to_date('28-12-2016 11:40:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1835, 110, 'c10', 'VARCHAR2(50)', 202002, 50, 0, '操作顾问AUID', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('28-12-2016 11:40:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1836, 130, 'c21', 'VARCHAR2(50)', 202002, 50, 0, '操作顾问AUID', '1', null, 0, 0, 0, 802001, 21, '1', 15, '1', '1', to_date('28-12-2016 11:44:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1837, 130, 'c22', 'VARCHAR2(30)', 202002, 30, 0, '操作顾问姓名', '1', null, 0, 0, 0, 802001, 22, '1', 10, '1', '1', to_date('28-12-2016 11:44:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1838, 130, 'c23', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 23, '1', 15, '1', '1', to_date('28-12-2016 11:44:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1839, 114, 'c10', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 10, '1', 6, '1', '1', to_date('28-12-2016 11:54:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1840, 114, 'c11', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 11, '1', 6, '1', '1', to_date('28-12-2016 11:54:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1841, 114, 'c12', 'VARCHAR2(50)', 202002, 50, 0, '操作顾问AUID', '1', null, 0, 0, 0, 802005, 12, '1', 15, '1', '1', to_date('28-12-2016 11:54:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1842, 114, 'c13', 'VARCHAR2(30)', 202002, 30, 0, '操作顾问姓名', '1', null, 0, 0, 0, 802005, 13, '1', 10, '1', '1', to_date('28-12-2016 11:54:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1843, 114, 'c14', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802005, 14, '1', 15, '1', '1', to_date('28-12-2016 11:54:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1844, 111, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 7, '1', 10, '1', '1', to_date('28-12-2016 11:54:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1845, 111, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 8, '1', 10, '1', '1', to_date('28-12-2016 11:54:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1846, 111, 'c9', 'VARCHAR2(50)', 202002, 50, 0, '操作顾问AUID', '1', null, 0, 0, 0, 802001, 9, '1', 10, '1', '1', to_date('28-12-2016 11:54:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1847, 111, 'c10', 'VARCHAR2(30)', 202002, 30, 0, '操作顾问姓名', '1', null, 0, 0, 0, 802001, 10, '1', 10, '1', '1', to_date('28-12-2016 11:54:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1848, 111, 'c11', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 11, '1', 15, '1', '1', to_date('28-12-2016 11:54:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1849, 113, 'c21', 'VARCHAR2(50)', 202002, 50, 0, '操作顾问AUID', '1', null, 0, 0, 0, 802001, 21, '1', 10, '1', '1', to_date('28-12-2016 11:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1850, 113, 'c22', 'VARCHAR2(30)', 202002, 30, 0, '操作顾问姓名', '1', null, 0, 0, 0, 802001, 22, '1', 10, '1', '1', to_date('28-12-2016 11:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1851, 113, 'c23', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 23, '1', 15, '1', '1', to_date('28-12-2016 11:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1852, 110, 'c11', 'VARCHAR2(30)', 202002, 30, 0, '操作顾问姓名', '1', null, 0, 0, 0, 802001, 11, '1', 10, '1', '1', to_date('28-12-2016 11:58:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1853, 110, 'c12', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 12, '1', 15, '1', '1', to_date('28-12-2016 11:58:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1854, 121, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '关系状态', '1', null, 0, 0, 0, 802001, 5, '1', 10, '1', '1', to_date('30-12-2016 18:13:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1858, 134, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '水平', '1', null, 0, 0, 0, 802005, 4, '1', 12, '1', '1', to_date('30-12-2016 18:17:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1859, 134, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '顾问AUID', '1', null, 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 600 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1855, 134, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人AUID', '1', null, 0, 0, 0, 802005, 1, '1', 20, '1', '1', to_date('30-12-2016 18:14:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1856, 134, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 2, '1', 12, '1', '1', to_date('30-12-2016 18:14:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1857, 134, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '语言', '1', null, 0, 0, 0, 802005, 3, '1', 15, '1', '1', to_date('30-12-2016 18:14:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1860, 134, 'c6', 'VARCHAR2(32)', 202002, 32, 0, '操作人AUID', '1', null, 0, 0, 0, 802001, 6, '0', 12, '0', '1', to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1861, 134, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '操作人姓名', '1', null, 0, 0, 0, 802001, 7, '1', 12, '1', '1', to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1862, 134, 'c8', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 8, '1', 15, '1', '1', to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:18:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1863, 113, 'c24', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '评：离职期（天）', '1', '0', 0, 0, 0, 802001, 24, '1', 10, '1', '1', to_date('30-12-2016 19:17:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1864, 113, 'c25', 'VARCHAR2(200)', 202002, 200, 0, '评：离职原因', '1', null, 0, 0, 0, 802001, 25, '1', 20, '1', '1', to_date('30-12-2016 19:17:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1865, 113, 'c26', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '评：竞业禁止限制（1,0）', '1', '0', 0, 0, 0, 802001, 26, '1', 10, '1', '1', to_date('30-12-2016 19:17:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1866, 113, 'c27', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '评：限制时长（年）', '1', '0', 0, 0, 0, 802001, 27, '1', 10, '1', '1', to_date('30-12-2016 19:17:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1867, 113, 'c28', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 28, '0', 10, '0', '1', to_date('30-12-2016 19:17:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1868, 113, 'c29', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 29, '0', 10, '0', '1', to_date('30-12-2016 19:17:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1869, 113, 'c30', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 30, '0', 10, '0', '1', to_date('30-12-2016 19:17:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1870, 123, 'c6', 'VARCHAR2(100)', 202002, 100, 0, '标签说明', '1', null, 0, 0, 0, 802001, 6, '1', 20, '1', '1', to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1871, 123, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 7, '1', 10, '1', '1', to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1872, 123, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 8, '1', 10, '1', '1', to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1873, 123, 'c9', 'VARCHAR2(32)', 202002, 32, 0, '操作人AUID', '1', null, 0, 0, 0, 802001, 9, '0', 32, '0', '1', to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1874, 123, 'c10', 'VARCHAR2(30)', 202002, 30, 0, '操作人姓名', '1', null, 0, 0, 0, 802001, 10, '1', 10, '1', '1', to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1875, 123, 'c11', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 11, '1', 15, '1', '1', to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1876, 121, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 6, '1', 10, '1', '1', to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1877, 121, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 7, '1', 10, '1', '1', to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1878, 121, 'c8', 'VARCHAR2(32)', 202002, 32, 0, '操作人AUID', '1', null, 0, 0, 0, 802001, 8, '1', 10, '1', '1', to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1879, 121, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '操作人姓名', '1', null, 0, 0, 0, 802001, 9, '1', 10, '1', '1', to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1880, 121, 'c10', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1881, 135, 'c1', 'NUMBER(6,0)', 202001, 6, 0, '统计分类', '1', null, 0, 0, 0, 802001, 1, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1882, 135, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 2, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1883, 135, 'c3', 'NUMBER(11,0)', 202001, 11, 0, '临时候选人', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1884, 135, 'c4', 'NUMBER(11,0)', 202001, 11, 0, '入库中', '1', null, 0, 0, 0, 802001, 4, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1885, 135, 'c5', 'NUMBER(11,0)', 202001, 11, 0, '入库候选人', '1', null, 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1886, 135, 'c6', 'NUMBER(11,0)', 202001, 11, 0, 'active', '1', null, 0, 0, 0, 802001, 6, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1887, 135, 'c7', 'NUMBER(11,0)', 202001, 11, 0, 'inactive', '1', null, 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (463, 108, 'c15', 'VARCHAR2(100) DEFAULT ''0''', 202002, 100, 0, '工作地址', '1', '0', 0, 0, 0, 802005, 15, '1', 15, '1', '1', to_date('08-12-2016 12:29:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (464, 109, 'c1', 'VARCHAR2(50)', 202002, 50, 0, '候选人AUID', '1', null, 0, 0, 0, 802005, 1, '0', 6, '0', '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (465, 109, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 2, '1', 12, '1', '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (466, 109, 'c3', 'VARCHAR2(50)', 202002, 50, 0, 'HC_AUID', '1', null, 0, 0, 0, 802005, 3, '0', 20, '0', '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (467, 109, 'c4', 'VARCHAR2(50)', 202002, 50, 0, 'HR_AUID', '1', null, 0, 0, 0, 802005, 4, '0', 20, '0', '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (468, 109, 'c5', 'VARCHAR2(32)', 202002, 32, 0, '流程PCID', '1', null, 0, 0, 0, 802005, 5, '1', 15, '1', '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (469, 109, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '流程类型', '1', null, 0, 0, 0, 802005, 6, '1', 15, '1', '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (470, 109, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '候选人状态', '1', null, 0, 0, 0, 802005, 7, '1', 15, '1', '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (471, 109, 'c8', 'NUMBER(6,0)', 202001, 6, 0, '流程状态', '1', null, 0, 0, 0, 802005, 8, '1', 15, '1', '1', to_date('08-12-2016 12:38:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (472, 110, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人CID', '1', null, 0, 0, 0, 802005, 1, '0', 6, '0', '1', to_date('08-12-2016 13:07:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (473, 110, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 2, '1', 10, '1', '1', to_date('08-12-2016 13:07:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (474, 110, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '开始时间', '1', null, 0, 0, 0, 802005, 3, '1', 10, '1', '1', to_date('08-12-2016 13:07:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (475, 110, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '结束时间', '1', null, 0, 0, 0, 802005, 4, '1', 10, '1', '1', to_date('08-12-2016 13:07:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (476, 110, 'c5', 'VARCHAR2(50)', 202002, 50, 0, '学校', '1', null, 0, 0, 0, 802005, 5, '1', 20, '1', '1', to_date('08-12-2016 13:07:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (477, 110, 'c6', 'VARCHAR2(50)', 202002, 50, 0, '专业', '1', null, 0, 0, 0, 802005, 6, '1', 15, '1', '1', to_date('08-12-2016 13:07:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (478, 110, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '学历', '1', null, 0, 0, 0, 802005, 7, '1', 10, '1', '1', to_date('08-12-2016 13:07:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:33:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (479, 111, 'c1', 'VARCHAR2(32)', 202002, 32, 0, 'AUID', '1', null, 0, 0, 0, 802001, 1, '0', 6, '0', '1', to_date('08-12-2016 13:14:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (480, 111, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 2, '1', 10, '1', '1', to_date('08-12-2016 13:14:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (481, 111, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '开始时间', '1', null, 0, 0, 0, 802001, 3, '1', 10, '1', '1', to_date('08-12-2016 13:14:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (482, 111, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '结束时间', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('08-12-2016 13:14:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (483, 111, 'c5', 'VARCHAR2(50)', 202002, 50, 0, '培训机构', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('08-12-2016 13:14:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (484, 111, 'c6', 'VARCHAR2(200)', 202002, 200, 0, '培训内容', '1', null, 0, 0, 0, 802001, 7, '1', 40, '1', '1', to_date('08-12-2016 13:14:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (485, 112, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人CID', '1', null, 0, 0, 0, 802005, 1, '0', 6, '0', '1', to_date('08-12-2016 13:13:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (486, 112, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 2, '1', 10, '1', '1', to_date('08-12-2016 13:14:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (491, 113, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人CID', '1', null, 0, 0, 0, 802001, 1, '0', 6, '0', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (492, 113, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 2, '1', 10, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (493, 113, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '开始时间', '1', null, 0, 0, 0, 802001, 3, '1', 10, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (494, 113, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '结束时间', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (495, 113, 'c5', 'VARCHAR2(100)', 202002, 100, 0, '公司名称', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (496, 113, 'c6', 'VARCHAR2(200)', 202002, 200, 0, '公司描述', '1', null, 0, 0, 0, 802001, 6, '1', 20, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (497, 113, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '行业', '1', null, 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (498, 113, 'c8', 'VARCHAR2(100)', 202002, 100, 0, '部门', '1', null, 0, 0, 0, 802001, 8, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (499, 113, 'c9', 'VARCHAR2(100)', 202002, 100, 0, '职位', '1', null, 0, 0, 0, 802001, 9, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (500, 113, 'c10', 'VARCHAR2(100)', 202002, 100, 0, '职级', '1', null, 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (501, 113, 'c11', 'NUMBER(6,0)', 202001, 6, 0, '评：月薪（K）', '1', null, 0, 0, 0, 802001, 11, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (502, 113, 'c12', 'NUMBER(6,0)', 202001, 6, 0, '评：年薪（万）', '1', null, 0, 0, 0, 802001, 12, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (503, 113, 'c13', 'VARCHAR2(200)', 202002, 200, 0, '评：薪资构成', '1', null, 0, 0, 0, 802001, 13, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (504, 113, 'c14', 'VARCHAR2(100)', 202002, 100, 0, '评：汇报对象', '1', null, 0, 0, 0, 802001, 14, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (505, 113, 'c15', 'VARCHAR2(30)', 202002, 30, 0, '评：下属人数', '1', null, 0, 0, 0, 802001, 15, '1', 6, '1', '1', to_date('08-12-2016 13:26:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (509, 114, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人CID', '1', null, 0, 0, 0, 802005, 1, '0', 6, '0', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (510, 114, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 2, '1', 10, '1', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (511, 114, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '开始时间', '1', null, 0, 0, 0, 802005, 3, '1', 10, '1', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (512, 114, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '结束时间', '1', null, 0, 0, 0, 802005, 4, '1', 10, '1', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (513, 114, 'c5', 'VARCHAR2(100)', 202002, 100, 0, '公司名称', '1', null, 0, 0, 0, 802005, 5, '1', 20, '1', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (514, 114, 'c6', 'VARCHAR2(50)', 202002, 50, 0, '职位', '1', null, 0, 0, 0, 802005, 6, '1', 15, '1', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (515, 114, 'c7', 'VARCHAR2(1000)', 202002, 1000, 0, '项目简介', '1', null, 0, 0, 0, 802005, 7, '1', 20, '1', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (516, 114, 'c8', 'VARCHAR2(500)', 202002, 500, 0, '项目职责', '1', null, 0, 0, 0, 802005, 8, '1', 20, '1', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (517, 114, 'c9', 'VARCHAR2(500)', 202002, 500, 0, '项目成就', '1', null, 0, 0, 0, 802005, 9, '1', 20, '1', '1', to_date('08-12-2016 13:38:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:22:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (536, 117, 'c1', 'VARCHAR2(32)', 202002, 32, 0, 'AMID', '1', null, 0, 0, 0, 802001, 1, '1', 32, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (537, 117, 'c2', 'DATE', 202006, 20, 0, '签约日期', '1', null, 0, 0, 0, 802001, 2, '1', 20, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (538, 117, 'c3', 'VARCHAR2(20)', 202003, 20, 0, '合同开始日期', '1', null, 0, 0, 0, 802001, 3, '1', 20, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (539, 117, 'c4', 'VARCHAR2(20)', 202003, 20, 0, '合同结束日期', '1', null, 0, 0, 0, 802001, 4, '1', 20, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (540, 117, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '服务费率', '1', null, 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (541, 117, 'c6', 'VARCHAR2(30)', 202002, 30, 0, '甲方法人', '1', null, 0, 0, 0, 802001, 6, '1', 30, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (542, 117, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '甲方法人身份证号', '1', null, 0, 0, 0, 802001, 7, '1', 30, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (543, 117, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '甲方代理人', '1', null, 0, 0, 0, 802001, 8, '1', 30, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (544, 117, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '甲方代理人身份证号', '1', null, 0, 0, 0, 802001, 9, '1', 30, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (545, 117, 'c10', 'VARCHAR2(4000)', 202002, 4000, 0, '签约内容', '1', null, 0, 0, 0, 802001, 10, '1', 4000, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (546, 117, 'c11', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 11, '1', 6, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (547, 117, 'c12', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 12, '1', 200, '1', '1', to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (556, 119, 'c1', 'VARCHAR2(20)', 202002, 20, 0, '事件CODE', '1', null, 0, 0, 0, 802005, 1, '1', 12, '1', '1', to_date('08-12-2016 15:52:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (557, 119, 'c2', 'VARCHAR2(50)', 202002, 50, 0, '事件名称', '1', null, 0, 0, 0, 802005, 2, '1', 25, '1', '1', to_date('08-12-2016 15:52:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (558, 119, 'c3', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802005, 3, '1', 12, '1', '1', to_date('08-12-2016 15:52:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (559, 119, 'c4', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '事件分类', '0', null, 0, 0, 0, 802005, 4, '1', 12, '1', '1', to_date('08-12-2016 15:52:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (560, 119, 'c5', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '事件类型', '0', null, 0, 0, 0, 802005, 5, '1', 12, '1', '1', to_date('08-12-2016 15:52:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (571, 121, 'c4', 'VARCHAR2(100)', 202002, 100, 0, '公司名称', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('09-12-2016 11:29:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (572, 119, 'c6', 'VARCHAR2(50) NOT NULL', 202013, 50, 0, '发生者对象', '0', null, 0, 0, 0, 802005, 6, '1', 20, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (563, 120, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人AUID', '1', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('08-12-2016 18:41:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 14:42:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (564, 120, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '关注人AUID', '1', null, 0, 0, 0, 802001, 2, '1', 20, '1', '1', to_date('08-12-2016 18:41:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 14:42:54', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 700 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (565, 120, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '关注人身份（2HR，3猎头）', '1', null, 0, 0, 0, 802001, 3, '1', 10, '1', '1', to_date('08-12-2016 18:41:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 14:42:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (566, 120, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '关注状态（1关注，2互相，0取消关注）', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('08-12-2016 18:41:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 14:42:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (567, 109, 'c10', 'VARCHAR2(200)', 202002, 200, 0, '流程说明', '1', null, 0, 0, 0, 802005, 10, '1', 20, '1', '1', to_date('08-12-2016 20:38:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (568, 121, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人AUID', '1', null, 0, 0, 0, 802001, 1, '1', 20, '1', '1', to_date('09-12-2016 11:28:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (569, 121, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '公司AMID', '1', null, 0, 0, 0, 802001, 2, '1', 20, '1', '1', to_date('09-12-2016 11:28:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (570, 121, 'c3', 'NUMBER(11,0)', 202001, 11, 0, '公司ID', '1', null, 0, 0, 0, 802001, 3, '1', 20, '1', '1', to_date('09-12-2016 11:28:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-12-2016 11:01:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (573, 119, 'c7', 'VARCHAR2(200)', 202002, 200, 0, '事件描述格式（ADMIN端）', '1', null, 0, 0, 0, 802005, 7, '1', 40, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (574, 119, 'c8', 'VARCHAR2(200)', 202002, 200, 0, '事件描述格式（BS端）', '1', null, 0, 0, 0, 802005, 8, '1', 40, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (575, 119, 'c9', 'VARCHAR2(200)', 202002, 200, 0, '事件描述格式（HC端）', '1', null, 0, 0, 0, 802005, 9, '1', 30, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (576, 119, 'c10', 'VARCHAR2(200)', 202002, 200, 0, '事件描述格式（HR端）', '1', null, 0, 0, 0, 802005, 10, '1', 30, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (577, 119, 'c11', 'VARCHAR2(200)', 202002, 200, 0, '事件描述格式（C端）', '1', null, 0, 0, 0, 802005, 11, '1', 30, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (578, 119, 'c12', 'CHAR(1) DEFAULT ''1''', 202004, 1, 0, 'ADMIN可见', '0', '1', 0, 0, 0, 802005, 12, '1', 6, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (579, 119, 'c13', 'CHAR(1) DEFAULT ''1''', 202004, 1, 0, 'BS可见', '0', '1', 0, 0, 0, 802005, 13, '1', 6, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (580, 119, 'c14', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'HC可见', '0', '0', 0, 0, 0, 802005, 14, '1', 6, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (581, 119, 'c15', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, 'HR可见', '0', '0', 0, 0, 0, 802005, 15, '1', 6, '1', '1', to_date('09-12-2016 12:19:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (582, 109, 'c11', 'VARCHAR2(1000)', 202002, 1000, 0, '流程详情', '1', null, 0, 0, 0, 802005, 11, '1', 10, '1', '1', to_date('09-12-2016 16:07:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (583, 109, 'c12', 'NUMBER(6,0)', 202001, 6, 0, '流程子状态', '1', null, 0, 0, 0, 802005, 12, '1', 20, '1', '1', to_date('09-12-2016 16:07:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (684, 115, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 6, '1', 12, '1', '1', to_date('14-12-2016 16:48:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 16:48:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (685, 126, 'c1', 'VARCHAR2(32)', 202002, 32, 0, '候选人AUID', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (686, 126, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '顾问AUID', '1', null, 0, 0, 0, 802001, 2, '1', 15, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (687, 126, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 3, '1', 15, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (688, 126, 'c4', 'DATE', 202006, 20, 0, '面评提交时间', '1', null, 0, 0, 0, 802001, 4, '1', 15, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (689, 126, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '面评状态', '1', null, 0, 0, 0, 802001, 5, '1', 15, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (690, 126, 'c6', 'DATE', 202006, 20, 0, '面评审核时间', '1', null, 0, 0, 0, 802001, 6, '1', 12, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (691, 126, 'c7', 'VARCHAR2(2000)', 202002, 2000, 0, '整体印象', '1', null, 0, 0, 0, 802001, 7, '1', 20, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (617, 124, 'c15', 'NUMBER(6,0)', 202001, 6, 0, '注册方式', '1', null, 0, 0, 0, 802001, 15, '1', 612, '1', '1', to_date('13-12-2016 20:14:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (692, 126, 'c8', 'VARCHAR2(4000)', 202002, 4000, 0, '工作总结', '1', null, 0, 0, 0, 802001, 8, '1', 20, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (693, 126, 'c9', 'VARCHAR2(2000)', 202002, 2000, 0, '备注总结', '1', null, 0, 0, 0, 802001, 9, '1', 20, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (694, 126, 'c10', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (695, 126, 'c11', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 11, '1', 6, '1', '1', to_date('14-12-2016 16:51:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (709, 119, 'c19', 'VARCHAR2(30)', 202002, 30, 0, '详情对象', '1', null, 0, 0, 0, 802001, 19, '1', 10, '1', '1', to_date('15-12-2016 16:39:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (710, 119, 'c20', 'CHAR(1) DEFAULT ''0''', 202004, 1, 0, '总通知开关', '0', '0', 0, 0, 0, 802001, 20, '1', 6, '1', '1', to_date('15-12-2016 16:39:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:17:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (831, 107, 'c11', 'VARCHAR2(20)', 202002, 20, 0, '区域', '1', null, 0, 0, 0, 802001, 11, '1', 12, '1', '1', to_date('17-12-2016 20:41:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (832, 107, 'c12', 'VARCHAR2(100)', 202002, 100, 0, '企业介绍', '1', null, 0, 0, 0, 802001, 12, '1', 20, '1', '1', to_date('17-12-2016 20:41:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (833, 107, 'c13', 'VARCHAR2(4000)', 202002, 4000, 0, '企业性质', '1', null, 0, 0, 0, 802001, 13, '1', 12, '1', '1', to_date('17-12-2016 20:41:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (834, 107, 'c14', 'VARCHAR2(200)', 202008, 200, 0, '企业LOGO', '1', null, 0, 0, 0, 802001, 14, '1', 20, '1', '1', to_date('17-12-2016 20:41:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (835, 107, 'c15', 'VARCHAR2(200)', 202002, 200, 0, '营业执照', '1', null, 0, 0, 0, 802001, 15, '1', 20, '1', '1', to_date('17-12-2016 20:41:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (882, 122, 'c7', 'NUMBER(6,0)', 202001, 6, 0, '文件类型', '1', null, 0, 0, 0, 802001, 7, '1', 20, '1', '1', to_date('19-12-2016 09:59:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (883, 122, 'c8', 'VARCHAR2(200)', 202007, 200, 0, '附件', '1', null, 0, 0, 0, 802001, 8, '1', 10, '1', '1', to_date('19-12-2016 09:59:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (884, 122, 'c9', 'VARCHAR2(100)', 202002, 100, 0, '上传者', '1', null, 0, 0, 0, 802001, 9, '1', 12, '1', '1', to_date('19-12-2016 09:59:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (885, 122, 'c10', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 10, '1', 20, '1', '1', to_date('19-12-2016 09:59:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (886, 129, 'c1', 'VARCHAR2(30) NOT NULL', 202002, 30, 0, '流程CODE', '0', null, 0, 0, 0, 802005, 1, '1', 12, '1', '1', to_date('20-12-2016 13:54:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (887, 129, 'c2', 'VARCHAR2(100) NOT NULL', 202002, 100, 0, '流程名称', '0', null, 0, 0, 0, 802005, 2, '1', 20, '1', '1', to_date('20-12-2016 13:54:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (888, 129, 'c3', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '流程分类', '0', null, 0, 0, 0, 802005, 3, '1', 12, '1', '1', to_date('20-12-2016 13:54:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (889, 129, 'c4', 'VARCHAR2(100)', 202002, 100, 0, '产生事件CODE', '1', null, 0, 0, 0, 802005, 4, '1', 10, '1', '1', to_date('20-12-2016 13:54:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (890, 129, 'c5', 'NUMBER(6,0) NOT NULL', 202001, 6, 0, '状态', '0', null, 0, 0, 0, 802005, 5, '1', 10, '1', '1', to_date('20-12-2016 13:54:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (891, 129, 'c6', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802005, 6, '1', 10, '1', '1', to_date('20-12-2016 14:08:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (892, 129, 'c7', 'VARCHAR2(100)', 202013, 100, 0, '条件：入库状态', '1', null, 0, 0, 0, 802005, 7, '1', 15, '1', '1', to_date('20-12-2016 14:08:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (901, 126, 'c22', 'VARCHAR2(2000)', 202002, 2000, 0, '评：管辖区域范围', '1', null, 0, 0, 0, 802001, 22, '1', 20, '1', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (902, 126, 'c23', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 23, '0', 6, '0', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (903, 126, 'c24', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 24, '0', 6, '0', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (904, 126, 'c25', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 25, '0', 6, '0', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (905, 126, 'c26', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 26, '0', 6, '0', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (906, 126, 'c27', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 27, '0', 6, '0', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (907, 126, 'c28', 'VARCHAR2(32)', 202002, 32, 0, 'BS操作员AUID', '1', null, 0, 0, 0, 802001, 28, '1', 32, '1', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (908, 126, 'c29', 'VARCHAR2(30)', 202002, 30, 0, 'BS操作员姓名', '1', null, 0, 0, 0, 802001, 29, '1', 30, '1', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (909, 126, 'c30', 'DATE', 202006, 20, 0, 'BS操作时间', '1', null, 0, 0, 0, 802001, 30, '1', 20, '1', '1', to_date('20-12-2016 14:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (910, 129, 'c8', 'VARCHAR2(100)', 202013, 100, 0, '条件：入库审核状态', '1', null, 0, 0, 0, 802005, 8, '1', 20, '1', '1', to_date('20-12-2016 15:11:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (911, 129, 'c9', 'VARCHAR2(100)', 202013, 100, 0, '条件：候选人状态', '1', null, 0, 0, 0, 802005, 9, '1', 15, '1', '1', to_date('20-12-2016 14:08:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (912, 130, 'c1', 'VARCHAR2(30)', 202002, 30, 0, '候选人CID', '1', null, 0, 0, 0, 802001, 1, '0', 6, '0', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (913, 130, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 2, '1', 10, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (914, 130, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '开始时间', '1', null, 0, 0, 0, 802001, 3, '1', 10, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (915, 130, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '结束时间', '1', null, 0, 0, 0, 802001, 4, '1', 10, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (916, 130, 'c5', 'VARCHAR2(100)', 202002, 100, 0, '公司名称', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (917, 130, 'c6', 'VARCHAR2(1000)', 202002, 1000, 0, '公司介绍', '1', null, 0, 0, 0, 802001, 6, '1', 20, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (918, 130, 'c7', 'VARCHAR2(50)', 202002, 50, 0, '行业', '1', null, 0, 0, 0, 802001, 7, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (919, 130, 'c8', 'VARCHAR2(100)', 202002, 100, 0, '部门', '1', null, 0, 0, 0, 802001, 8, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (920, 130, 'c9', 'VARCHAR2(100)', 202002, 100, 0, '职位', '1', null, 0, 0, 0, 802001, 9, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (921, 130, 'c10', 'VARCHAR2(100)', 202002, 100, 0, '职级', '1', null, 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (444, 104, 'c37', 'VARCHAR2(100)', 202002, 100, 0, '地址3', '1', null, 0, 0, 0, 802005, 37, '1', 30, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (445, 104, 'c38', 'VARCHAR2(30)', 202002, 30, 0, '邮编', '1', null, 0, 0, 0, 802005, 38, '1', 30, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (446, 104, 'c39', 'VARCHAR2(30)', 202002, 30, 0, '总机', '1', null, 0, 0, 0, 802005, 39, '1', 30, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (447, 104, 'c40', 'VARCHAR2(100)', 202002, 100, 0, '网址', '1', null, 0, 0, 0, 802005, 40, '1', 30, '1', '1', to_date('07-12-2016 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:04:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (448, 107, 'c10', 'VARCHAR2(30)', 202002, 30, 0, '城市', '1', null, 0, 0, 0, 802001, 10, '1', 12, '1', '1', to_date('07-12-2016 11:48:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 07:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (487, 112, 'c3', 'VARCHAR2(30)', 202002, 30, 0, '时间', '1', null, 0, 0, 0, 802005, 3, '1', 10, '1', '1', to_date('08-12-2016 13:23:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (488, 112, 'c4', 'VARCHAR2(50)', 202002, 50, 0, '证书', '1', null, 0, 0, 0, 802005, 4, '1', 20, '1', '1', to_date('08-12-2016 13:23:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (489, 112, 'c5', 'VARCHAR2(30)', 202002, 30, 0, '有效期', '1', null, 0, 0, 0, 802005, 5, '1', 15, '1', '1', to_date('08-12-2016 13:23:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (490, 112, 'c6', 'VARCHAR2(200)', 202008, 200, 0, '附件1', '1', null, 0, 0, 0, 802005, 6, '1', 20, '1', '1', to_date('08-12-2016 13:23:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (506, 113, 'c16', 'VARCHAR2(1000)', 202002, 1000, 0, '工作职责', '1', null, 0, 0, 0, 802001, 16, '1', 15, '1', '1', to_date('08-12-2016 13:29:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (507, 109, 'c9', 'VARCHAR2(100)', 202002, 100, 0, '流程标题', '1', null, 0, 0, 0, 802005, 9, '1', 15, '1', '1', to_date('08-12-2016 13:31:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (508, 112, 'c7', 'VARCHAR2(200)', 202008, 200, 0, '附件2', '1', null, 0, 0, 0, 802005, 7, '1', 20, '1', '1', to_date('08-12-2016 13:36:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 15:23:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (518, 115, 'c1', 'NUMBER(6,0)', 202001, 6, 0, '行业', '1', null, 0, 0, 0, 802001, 1, '1', 12, '1', '1', to_date('08-12-2016 14:41:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 16:48:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (519, 115, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '职位', '1', null, 0, 0, 0, 802001, 2, '1', 15, '1', '1', to_date('08-12-2016 14:41:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 16:48:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (520, 115, 'c3', 'VARCHAR2(200)', 202002, 200, 0, '问题', '1', null, 0, 0, 0, 802001, 3, '1', 40, '1', '1', to_date('08-12-2016 14:41:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 16:48:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (521, 115, 'c4', 'VARCHAR2(20)', 202002, 20, 0, '对应面评字段', '1', null, 0, 0, 0, 802001, 4, '1', 6, '1', '1', to_date('08-12-2016 14:41:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 16:48:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (522, 115, 'c5', 'VARCHAR2(500)', 202002, 500, 0, '样本回答', '1', null, 0, 0, 0, 802001, 5, '1', 30, '1', '1', to_date('08-12-2016 14:41:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 16:48:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (523, 116, 'c1', 'VARCHAR2(32)', 202002, 32, 0, 'AMID', '1', null, 0, 0, 0, 802001, 1, '1', 6, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (524, 116, 'c2', 'VARCHAR2(32)', 202002, 32, 0, 'HR_AUID', '1', null, 0, 0, 0, 802001, 2, '1', 6, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (525, 116, 'c3', 'VARCHAR2(32)', 202002, 32, 0, '顾问AUID', '1', null, 0, 0, 0, 802001, 3, '1', 6, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (526, 116, 'c4', 'NUMBER(14,0)', 202001, 14, 0, '候选人ID', '1', null, 0, 0, 0, 802001, 4, '1', 6, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (527, 116, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 5, '1', 10, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (528, 116, 'c6', 'DATE', 202006, 20, 0, '开票日期', '1', null, 0, 0, 0, 802001, 6, '1', 10, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (529, 116, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '候选人', '1', null, 0, 0, 0, 802001, 7, '1', 12, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (530, 116, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '职位', '1', null, 0, 0, 0, 802001, 8, '1', 15, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (531, 116, 'c9', 'VARCHAR2(30)', 202002, 30, 0, '招聘服务费', '1', null, 0, 0, 0, 802001, 9, '1', 12, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (532, 116, 'c10', 'NUMBER(6,0)', 202001, 6, 0, '票据状态', '1', null, 0, 0, 0, 802001, 10, '1', 12, '1', '1', to_date('08-12-2016 15:25:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (533, 116, 'c11', 'VARCHAR2(50)', 202002, 50, 0, '企业名称', '1', null, 0, 0, 0, 802001, 11, '1', 20, '1', '1', to_date('08-12-2016 15:30:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (534, 116, 'c12', 'VARCHAR2(30)', 202002, 30, 0, '企业联系人', '1', null, 0, 0, 0, 802001, 12, '1', 10, '1', '1', to_date('08-12-2016 15:30:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (535, 116, 'c13', 'VARCHAR2(100)', 202002, 100, 0, '顾问信息', '1', null, 0, 0, 0, 802001, 13, '1', 10, '1', '1', to_date('08-12-2016 15:30:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:23:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (548, 118, 'c1', 'VARCHAR2(50)', 202002, 50, 0, '对象AUID（候选人）', '1', null, 0, 0, 0, 802005, 1, '0', 20, '0', '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 800 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (549, 118, 'c2', 'VARCHAR2(50)', 202002, 50, 0, '顾问AUID', '1', null, 0, 0, 0, 802005, 2, '1', 10, '1', '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (550, 118, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802005, 3, '1', 10, '1', '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (551, 118, 'c4', 'VARCHAR2(32)', 202002, 32, 0, '流程PCID', '1', null, 0, 0, 0, 802005, 4, '1', 10, '1', '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (552, 118, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '事件分类', '1', null, 0, 0, 0, 802005, 5, '1', 15, '1', '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (553, 118, 'c6', 'NUMBER(6,0)', 202001, 6, 0, '事件类型', '1', null, 0, 0, 0, 802005, 6, '1', 15, '1', '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (554, 118, 'c7', 'VARCHAR2(20)', 202002, 20, 0, '事件CODE', '1', null, 0, 0, 0, 802005, 7, '1', 15, '1', '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (555, 118, 'c8', 'NUMBER(6,0)', 202001, 6, 0, '事件状态', '1', null, 0, 0, 0, 802005, 8, '1', 15, '1', '1', to_date('08-12-2016 15:49:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (561, 118, 'c9', 'DATE', 202006, 20, 0, '限时执行截止时间', '1', null, 0, 0, 0, 802005, 9, '1', 15, '1', '1', to_date('08-12-2016 15:54:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (562, 118, 'c10', 'VARCHAR2(20)', 202002, 20, 0, '限时执行事件CODE', '1', null, 0, 0, 0, 802005, 10, '1', 15, '1', '1', to_date('08-12-2016 15:54:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (598, 113, 'c17', 'VARCHAR2(200)', 202002, 200, 0, '评：工作权重', '1', null, 0, 0, 0, 802001, 17, '1', 6, '1', '1', to_date('13-12-2016 16:34:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (599, 113, 'c18', 'VARCHAR2(1000)', 202002, 1000, 0, '评：公司介绍', '1', null, 0, 0, 0, 802001, 18, '1', 6, '1', '1', to_date('13-12-2016 16:34:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (600, 113, 'c19', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '是否多段工作经历', '1', '0', 0, 0, 0, 802001, 19, '1', 6, '1', '1', to_date('13-12-2016 16:34:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (601, 113, 'c20', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 20, '1', 6, '1', '1', to_date('13-12-2016 16:34:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 15:21:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (683, 120, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('14-12-2016 14:42:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 14:42:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (696, 126, 'c12', 'VARCHAR2(500)', 202002, 500, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 12, '1', 15, '1', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (697, 126, 'c13', 'VARCHAR2(500)', 202002, 500, 0, '评：性格', '1', null, 0, 0, 0, 802001, 13, '1', 15, '1', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (698, 126, 'c14', 'VARCHAR2(500)', 202002, 500, 0, '评：沟通能力', '1', null, 0, 0, 0, 802001, 14, '1', 15, '1', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (699, 126, 'c15', 'VARCHAR2(500)', 202002, 500, 0, '评：语言水平', '1', null, 0, 0, 0, 802001, 15, '1', 15, '1', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (700, 126, 'c16', 'VARCHAR2(500)', 202002, 500, 0, '评：缺点、疑虑', '1', null, 0, 0, 0, 802001, 16, '1', 15, '1', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (701, 126, 'c17', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 17, '0', 6, '0', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (702, 126, 'c18', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 18, '0', 6, '0', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (703, 126, 'c19', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 19, '0', 6, '0', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (704, 126, 'c20', 'VARCHAR2(30)', 202002, 30, 0, '评：行业经验（年）', '1', null, 0, 0, 0, 802001, 20, '1', 6, '1', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (705, 126, 'c21', 'VARCHAR2(30)', 202002, 30, 0, '评：管理经验（年）', '1', null, 0, 0, 0, 802001, 21, '1', 6, '1', '1', to_date('14-12-2016 17:00:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1773, 133, 'c31', 'VARCHAR2(32)', 202002, 32, 0, '公司AMID', '1', null, 0, 0, 0, 802005, 31, '0', 15, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1774, 133, 'c32', 'NUMBER(14,0)', 202001, 14, 0, '公司MID', '1', null, 0, 0, 0, 802005, 32, '1', 20, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1775, 133, 'c33', 'VARCHAR2(100)', 202002, 100, 0, '附：公司简称', '1', null, 0, 0, 0, 802005, 33, '1', 20, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1776, 133, 'c34', 'VARCHAR2(30)', 202002, 30, 0, '附：职位名称', '1', null, 0, 0, 0, 802005, 34, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1777, 133, 'c35', 'VARCHAR2(30)', 202002, 30, 0, '附：HR名称', '1', null, 0, 0, 0, 802005, 35, '1', 10, '1', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1778, 133, 'c36', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 36, '0', 10, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1779, 133, 'c37', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 37, '0', 10, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1780, 133, 'c38', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 38, '0', 10, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1781, 133, 'c39', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 39, '0', 10, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1782, 133, 'c40', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 40, '0', 10, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1137, 133, 'c1', 'VARCHAR2(50)', 202002, 50, 0, '候选人AUID', '1', null, 0, 0, 0, 802005, 1, '0', 6, '0', '1', to_date('26-12-2016 09:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (836, 108, 'c16', 'CHAR(1)', 202004, 1, 0, '是否要英文简历', '1', null, 0, 0, 0, 802005, 16, '1', 10, '1', '1', to_date('17-12-2016 20:45:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (837, 108, 'c17', 'VARCHAR2(200)', 202007, 200, 0, 'JD文件', '1', null, 0, 0, 0, 802005, 17, '1', 20, '1', '1', to_date('17-12-2016 20:45:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (838, 108, 'c18', 'DATE', 202006, 20, 0, 'JD上传日期', '1', null, 0, 0, 0, 802005, 18, '1', 12, '1', '1', to_date('17-12-2016 20:45:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (839, 108, 'c19', 'NUMBER(6,0)', 202001, 6, 0, 'JD处理状态', '1', null, 0, 0, 0, 802005, 19, '1', 10, '1', '1', to_date('17-12-2016 20:45:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (840, 108, 'c20', 'VARCHAR2(100)', 202002, 100, 0, 'JD状态说明', '1', null, 0, 0, 0, 802005, 20, '1', 20, '1', '1', to_date('17-12-2016 20:45:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (841, 108, 'c21', 'CHAR(1)', 202004, 1, 0, '是否JD(0,1)', '1', null, 0, 0, 0, 802005, 21, '1', 20, '1', '1', to_date('17-12-2016 20:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (842, 108, 'c22', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 22, '0', 30, '0', '1', to_date('17-12-2016 20:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (843, 108, 'c23', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 23, '0', 30, '0', '1', to_date('17-12-2016 20:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (844, 108, 'c24', 'VARCHAR2(20)', 202002, 20, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 24, '0', 20, '0', '1', to_date('17-12-2016 20:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (845, 108, 'c25', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 25, '0', 30, '0', '1', to_date('17-12-2016 20:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 19:00:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (846, 109, 'c13', 'VARCHAR2(200)', 202002, 200, 0, '流程子状态说明', '1', null, 0, 0, 0, 802005, 13, '1', 20, '1', '1', to_date('17-12-2016 20:48:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (847, 109, 'c14', 'DATE', 202006, 20, 0, '流程开始时间', '1', null, 0, 0, 0, 802005, 14, '1', 15, '1', '1', to_date('17-12-2016 20:48:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (848, 109, 'c15', 'DATE', 202006, 20, 0, '流程结束时间', '1', null, 0, 0, 0, 802005, 15, '1', 15, '1', '1', to_date('17-12-2016 20:48:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1110, 129, 'c31', 'VARCHAR2(2000)', 202002, 2000, 0, '流程描述', '1', null, 0, 0, 0, 802005, 31, '1', 20, '1', '1', to_date('23-12-2016 07:46:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1111, 129, 'c32', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 32, '0', 10, '0', '1', to_date('24-12-2016 18:40:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1112, 129, 'c33', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 33, '0', 10, '0', '1', to_date('24-12-2016 18:40:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1113, 129, 'c34', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 34, '0', 10, '0', '1', to_date('24-12-2016 18:40:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1114, 129, 'c35', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 35, '0', 10, '0', '1', to_date('25-12-2016 15:30:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1115, 129, 'c36', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 36, '0', 10, '0', '1', to_date('25-12-2016 15:30:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1116, 129, 'c37', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 37, '0', 10, '0', '1', to_date('25-12-2016 15:30:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1117, 129, 'c38', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 38, '0', 10, '0', '1', to_date('25-12-2016 15:30:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1118, 129, 'c39', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 39, '0', 10, '0', '1', to_date('25-12-2016 15:30:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1119, 129, 'c40', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 40, '0', 10, '0', '1', to_date('25-12-2016 15:30:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1120, 118, 'c14', 'VARCHAR2(200)', 202002, 200, 0, '事件标题M', '1', null, 0, 0, 0, 802005, 14, '1', 40, '1', '1', to_date('25-12-2016 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1121, 118, 'c15', 'VARCHAR2(200)', 202002, 200, 0, '事件标题BS', '1', null, 0, 0, 0, 802005, 15, '1', 40, '1', '1', to_date('25-12-2016 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1122, 118, 'c16', 'VARCHAR2(200)', 202002, 200, 0, '事件标题HC', '1', null, 0, 0, 0, 802005, 16, '1', 20, '1', '1', to_date('25-12-2016 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1123, 118, 'c17', 'VARCHAR2(200)', 202002, 200, 0, '事件标题HR', '1', null, 0, 0, 0, 802005, 17, '1', 20, '1', '1', to_date('25-12-2016 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (127, 101, 'c15', 'VARCHAR2(200)', 202002, 200, 0, '备注', '1', null, 0, 0, 0, 802001, 15, '1', 200, '1', '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (849, 109, 'c16', 'NUMBER(14,0)', 202001, 14, 0, '应聘职位ID', '1', null, 0, 0, 0, 802005, 16, '1', 15, '1', '1', to_date('17-12-2016 20:48:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (850, 109, 'c17', 'VARCHAR2(100)', 202002, 100, 0, '应聘职位说明', '1', null, 0, 0, 0, 802005, 17, '1', 15, '1', '1', to_date('17-12-2016 20:48:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (851, 109, 'c18', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '已经面试轮次', '1', '0', 0, 0, 0, 802005, 18, '1', 10, '1', '1', to_date('17-12-2016 20:48:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (852, 109, 'c19', 'NUMBER(6,0)', 202001, 6, 0, '结算状态', '1', null, 0, 0, 0, 802005, 19, '1', 15, '1', '1', to_date('17-12-2016 20:48:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (853, 109, 'c20', 'VARCHAR2(200)', 202002, 200, 0, '结算说明', '1', null, 0, 0, 0, 802005, 20, '1', 15, '1', '1', to_date('17-12-2016 20:48:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (854, 128, 'c1', 'VARCHAR2(50)', 202002, 50, 0, '候选人AUID', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (855, 128, 'c2', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 2, '1', 12, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (856, 128, 'c3', 'CHAR(1)', 202004, 1, 0, '面试人对象（2,3）', '1', null, 0, 0, 0, 802001, 3, '1', 12, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (857, 128, 'c4', 'VARCHAR2(50)', 202002, 50, 0, '面试人', '1', null, 0, 0, 0, 802001, 4, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (858, 128, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '面试状态', '1', null, 0, 0, 0, 802001, 5, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (859, 128, 'c6', 'DATE', 202006, 20, 0, '面试时间', '1', null, 0, 0, 0, 802001, 6, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (860, 128, 'c7', 'VARCHAR2(100)', 202002, 100, 0, '面试地点', '1', null, 0, 0, 0, 802001, 7, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (861, 128, 'c8', 'VARCHAR2(50)', 202002, 50, 0, '面试职位', '1', null, 0, 0, 0, 802001, 8, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (862, 128, 'c9', 'VARCHAR2(200)', 202002, 200, 0, '提醒对象', '1', null, 0, 0, 0, 802001, 9, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (863, 128, 'c10', 'NUMBER(6,0)', 202001, 6, 0, '候选人：面试结果状态', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (864, 128, 'c11', 'DATE', 202006, 20, 0, '候选人：面试结果提交时间', '1', null, 0, 0, 0, 802001, 11, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (865, 128, 'c12', 'VARCHAR2(50)', 202002, 50, 0, '候选人：面试结果提交人', '1', null, 0, 0, 0, 802001, 12, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (866, 128, 'c13', 'VARCHAR2(500)', 202002, 500, 0, '候选人：结果说明', '1', null, 0, 0, 0, 802001, 13, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (867, 128, 'c14', 'NUMBER(6,0)', 202001, 6, 0, 'HR面试人：面试结果状态', '1', null, 0, 0, 0, 802001, 14, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (868, 128, 'c15', 'DATE', 202006, 20, 0, 'HR面试人：面试结果提交时间', '1', null, 0, 0, 0, 802001, 15, '1', 15, '1', '1', to_date('18-12-2016 19:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (869, 128, 'c16', 'VARCHAR2(50)', 202002, 50, 0, 'HR面试人：面试结果提交人', '1', null, 0, 0, 0, 802001, 16, '1', 15, '1', '1', to_date('18-12-2016 19:07:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (870, 128, 'c17', 'VARCHAR2(500)', 202002, 500, 0, 'HR面试人：结果说明', '1', null, 0, 0, 0, 802001, 17, '1', 15, '1', '1', to_date('18-12-2016 19:07:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (871, 128, 'c18', 'NUMBER(11,0)', 202001, 11, 0, '关联流程ID', '1', null, 0, 0, 0, 802001, 18, '1', 15, '1', '1', to_date('18-12-2016 19:07:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (872, 128, 'c19', 'NUMBER(11,0)', 202001, 11, 0, '关联事件ID', '1', null, 0, 0, 0, 802001, 19, '1', 15, '1', '1', to_date('18-12-2016 19:07:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (873, 128, 'c20', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 20, '0', 15, '0', '1', to_date('18-12-2016 19:07:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (874, 128, 'c21', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 21, '0', 30, '0', '1', to_date('18-12-2016 21:34:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (875, 128, 'c22', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 22, '0', 30, '0', '1', to_date('18-12-2016 21:34:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (876, 128, 'c23', 'VARCHAR2(32)', 202002, 32, 0, '操作人AUID', '1', null, 0, 0, 0, 802001, 23, '1', 12, '1', '1', to_date('18-12-2016 21:34:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (877, 128, 'c24', 'VARCHAR2(30)', 202002, 30, 0, '操作人姓名', '1', null, 0, 0, 0, 802001, 24, '1', 12, '1', '1', to_date('18-12-2016 21:34:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (878, 128, 'c25', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 25, '1', 15, '1', '1', to_date('18-12-2016 21:34:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (879, 118, 'c11', 'VARCHAR2(500)', 202002, 500, 0, '事件详情', '1', null, 0, 0, 0, 802005, 11, '1', 10, '1', '1', to_date('18-12-2016 21:40:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (880, 118, 'c12', 'VARCHAR2(200)', 202002, 200, 0, '关联链接', '1', null, 0, 0, 0, 802005, 12, '1', 10, '1', '1', to_date('18-12-2016 21:40:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (881, 118, 'c13', 'VARCHAR2(50)', 202002, 50, 0, '关联对象', '1', null, 0, 0, 0, 802005, 13, '1', 10, '1', '1', to_date('18-12-2016 21:40:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (922, 130, 'c11', 'NUMBER(6,0)', 202001, 6, 0, '月薪（K）', '1', null, 0, 0, 0, 802001, 11, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (923, 130, 'c12', 'NUMBER(6,0)', 202001, 6, 0, '年薪（万）', '1', null, 0, 0, 0, 802001, 12, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (924, 130, 'c13', 'VARCHAR2(100)', 202002, 100, 0, '薪资构成', '1', null, 0, 0, 0, 802001, 13, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (925, 130, 'c14', 'VARCHAR2(1000)', 202002, 1000, 0, '汇报对象', '1', null, 0, 0, 0, 802001, 14, '1', 20, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 900 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (926, 130, 'c15', 'VARCHAR2(200)', 202002, 200, 0, '下属人数', '1', null, 0, 0, 0, 802001, 15, '1', 20, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (927, 130, 'c16', 'VARCHAR2(200)', 202002, 200, 0, '工作职责', '1', null, 0, 0, 0, 802001, 16, '1', 15, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1019, 130, 'c17', 'VARCHAR2(30)', 202002, 30, 0, '工作权重', '1', null, 0, 0, 0, 802001, 17, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1020, 130, 'c18', 'VARCHAR2(30)', 202002, 30, 0, '离职原因', '1', null, 0, 0, 0, 802001, 18, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1021, 130, 'c19', 'NUMBER(6,0)', 202001, 6, 0, '是否多段工作经历', '1', null, 0, 0, 0, 802001, 19, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1022, 130, 'c20', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 20, '1', 6, '1', '1', to_date('21-12-2016 18:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 16:36:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1023, 131, 'c1', 'NUMBER(6,0)', 202001, 6, 0, '任务单分类', '1', null, 0, 0, 0, 802001, 1, '1', 15, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1024, 131, 'c2', 'VARCHAR2(50)', 202002, 50, 0, '标题', '1', null, 0, 0, 0, 802001, 2, '1', 15, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1025, 131, 'c3', 'NUMBER(6,0)', 202001, 6, 0, '状态', '1', null, 0, 0, 0, 802001, 3, '1', 12, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1026, 131, 'c4', 'NUMBER(6,0)', 202001, 6, 0, '执行状态', '1', null, 0, 0, 0, 802001, 4, '1', 15, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1027, 131, 'c5', 'VARCHAR2(100)', 202002, 100, 0, '详情', '1', null, 0, 0, 0, 802001, 5, '1', 20, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1028, 131, 'c6', 'VARCHAR2(200)', 202002, 200, 0, '链接', '1', null, 0, 0, 0, 802001, 6, '1', 20, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1029, 131, 'c7', 'VARCHAR2(32)', 202002, 32, 0, '指派执行人AUID', '1', null, 0, 0, 0, 802001, 7, '0', 12, '0', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1030, 131, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '指派执行人姓名', '1', null, 0, 0, 0, 802001, 8, '1', 12, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1031, 131, 'c9', 'DATE', 202006, 20, 0, '指派状态', '1', null, 0, 0, 0, 802001, 9, '1', 12, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1032, 131, 'c10', 'VARCHAR2(100)', 202002, 100, 0, '指派时间', '1', null, 0, 0, 0, 802001, 10, '1', 12, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1033, 131, 'c11', 'VARCHAR2(32)', 202002, 32, 0, '操作人AUID', '1', null, 0, 0, 0, 802001, 11, '0', 12, '0', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1034, 131, 'c12', 'VARCHAR2(30)', 202002, 30, 0, '操作人姓名', '1', null, 0, 0, 0, 802001, 12, '1', 12, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1035, 131, 'c13', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 13, '1', 12, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1036, 131, 'c14', 'VARCHAR2(200)', 202002, 200, 0, '操作备注', '1', null, 0, 0, 0, 802001, 14, '1', 20, '1', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1037, 131, 'c15', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 15, '0', 6, '0', '1', to_date('21-12-2016 18:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1038, 109, 'c21', 'NUMBER(6,0)', 202001, 6, 0, '关注状态', '1', null, 0, 0, 0, 802005, 21, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1039, 109, 'c22', 'DATE', 202006, 20, 0, '关注日期', '1', null, 0, 0, 0, 802005, 22, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1040, 109, 'c23', 'VARCHAR2(200)', 202002, 200, 0, '流程描述（ADMIN端）', '1', null, 0, 0, 0, 802005, 23, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1041, 109, 'c24', 'VARCHAR2(200)', 202002, 200, 0, '流程描述（HC端）', '1', null, 0, 0, 0, 802005, 24, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1042, 109, 'c25', 'VARCHAR2(200)', 202002, 200, 0, '流程描述（HR端）', '1', null, 0, 0, 0, 802005, 25, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1043, 109, 'c26', 'VARCHAR2(200)', 202002, 200, 0, '流程描述（C端）', '1', null, 0, 0, 0, 802005, 26, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1044, 109, 'c27', 'VARCHAR2(50)', 202002, 50, 0, '操作人', '1', null, 0, 0, 0, 802005, 27, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1045, 109, 'c28', 'VARCHAR2(30)', 202002, 30, 0, '操作人姓名', '1', null, 0, 0, 0, 802005, 28, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1046, 109, 'c29', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802005, 29, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1047, 109, 'c30', 'VARCHAR2(200)', 202002, 200, 0, '操作说明', '1', null, 0, 0, 0, 802005, 30, '1', 10, '1', '1', to_date('22-12-2016 16:39:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:26:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1048, 129, 'c10', 'VARCHAR2(100)', 202013, 100, 0, '条件：候选人流程状态', '1', null, 0, 0, 0, 802005, 10, '1', 30, '1', '1', to_date('20-12-2016 15:11:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1049, 129, 'c11', 'VARCHAR2(100)', 202013, 100, 0, '条件：候选人流程子状态', '1', null, 0, 0, 0, 802005, 11, '1', 15, '1', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1050, 129, 'c12', 'VARCHAR2(100)', 202013, 100, 0, '条件：票据状态', '1', null, 0, 0, 0, 802005, 12, '1', 12, '1', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1051, 129, 'c13', 'VARCHAR2(100)', 202013, 100, 0, '条件：关注或黑名单状态', '1', null, 0, 0, 0, 802005, 13, '1', 12, '1', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1052, 129, 'c14', 'VARCHAR2(100)', 202002, 100, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 14, '0', 12, '0', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1053, 129, 'c15', 'VARCHAR2(100)', 202002, 100, 0, '（未使用）', '1', null, 0, 0, 0, 802005, 15, '0', 12, '0', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1054, 129, 'c16', 'NUMBER(6,0)', 202001, 6, 0, '执行后：入库状态', '1', null, 0, 0, 0, 802005, 16, '1', 12, '1', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1055, 129, 'c17', 'NUMBER(6,0)', 202001, 6, 0, '执行后：入库审核状态', '1', null, 0, 0, 0, 802005, 17, '1', 12, '1', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1056, 129, 'c18', 'NUMBER(6,0)', 202001, 6, 0, '执行后：候选人状态', '1', null, 0, 0, 0, 802005, 18, '1', 12, '1', '1', to_date('23-12-2016 07:37:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:01:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (602, 122, 'c6', 'VARCHAR2(200)', 202002, 200, 0, '文件名称', '1', null, 0, 0, 0, 802001, 6, '1', 20, '1', '1', to_date('13-12-2016 16:36:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (603, 124, 'c1', 'VARCHAR2(32)', 202002, 32, 0, 'AUID', '1', null, 0, 0, 0, 802001, 1, '1', 6, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (604, 124, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '所属公司AMID', '1', null, 0, 0, 0, 802001, 2, '1', 6, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (605, 124, 'c3', 'NUMBER(11,0)', 202001, 11, 0, '所属公司', '1', null, 0, 0, 0, 802001, 3, '1', 20, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (606, 124, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '姓名', '1', null, 0, 0, 0, 802001, 4, '1', 12, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (607, 124, 'c5', 'VARCHAR2(30)', 202002, 30, 0, '性别', '1', null, 0, 0, 0, 802001, 5, '1', 6, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (608, 124, 'c6', 'VARCHAR2(30)', 202002, 30, 0, '手机号', '1', null, 0, 0, 0, 802001, 6, '1', 12, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (609, 124, 'c7', 'VARCHAR2(30)', 202002, 30, 0, '工作邮箱', '1', null, 0, 0, 0, 802001, 7, '1', 12, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (610, 124, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '公司电话', '1', null, 0, 0, 0, 802001, 8, '1', 12, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (611, 124, 'c9', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '认证状态（0,1）', '1', '0', 0, 0, 0, 802001, 9, '1', 12, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (612, 124, 'c10', 'DATE', 202006, 20, 0, '认证日期', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (613, 124, 'c11', 'VARCHAR2(200)', 202008, 200, 0, '身份证图片', '1', null, 0, 0, 0, 802001, 11, '1', 20, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (614, 124, 'c12', 'VARCHAR2(200)', 202008, 200, 0, '名片图片', '1', null, 0, 0, 0, 802001, 12, '1', 20, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (615, 124, 'c13', 'VARCHAR2(30)', 202002, 30, 0, '身份证号', '1', null, 0, 0, 0, 802001, 13, '1', 15, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (616, 124, 'c14', 'VARCHAR2(30)', 202002, 30, 0, '城市', '1', null, 0, 0, 0, 802001, 14, '1', 12, '1', '1', to_date('13-12-2016 20:12:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (618, 124, 'c16', 'VARCHAR2(50)', 202002, 50, 0, '职位', '1', null, 0, 0, 0, 802001, 16, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (619, 124, 'c17', 'NUMBER(6,0) DEFAULT 203000', 202001, 6, 0, '业务状态', '0', '203000', 0, 0, 0, 802001, 17, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (620, 124, 'c18', 'NUMBER(6,0) DEFAULT 130001', 202001, 6, 0, '状态', '0', '130001', 0, 0, 0, 802001, 18, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (621, 124, 'c19', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '职位数目', '1', '0', 0, 0, 0, 802001, 19, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (622, 124, 'c20', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '关注数目', '1', '0', 0, 0, 0, 802001, 20, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (623, 124, 'c21', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '邀请面试数目', '1', '0', 0, 0, 0, 802001, 21, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (624, 124, 'c22', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, 'offer数目', '1', '0', 0, 0, 0, 802001, 22, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (625, 124, 'c23', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '成交数目', '1', '0', 0, 0, 0, 802001, 23, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (626, 124, 'c24', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '浏览候选人数目', '1', '0', 0, 0, 0, 802001, 24, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (627, 124, 'c25', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '网站总浏览数目', '1', '0', 0, 0, 0, 802001, 25, '1', 6, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (628, 124, 'c26', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 26, '0', 6, '0', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (629, 124, 'c27', 'NUMBER(6,0)', 202001, 6, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 27, '0', 6, '0', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (630, 124, 'c28', 'VARCHAR2(200)', 202007, 200, 0, '招聘需求文档', '1', null, 0, 0, 0, 802001, 28, '1', 20, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (631, 124, 'c29', 'NUMBER(6,0)', 202001, 6, 0, '招聘需求处理状态', '1', null, 0, 0, 0, 802001, 29, '1', 12, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (632, 124, 'c30', 'VARCHAR2(200)', 202002, 200, 0, '招聘需求处理备注', '1', null, 0, 0, 0, 802001, 30, '1', 20, '1', '1', to_date('13-12-2016 20:17:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:25:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (633, 125, 'c1', 'VARCHAR2(32)', 202002, 32, 0, 'AUID', '1', null, 0, 0, 0, 802001, 1, '0', 6, '0', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (634, 125, 'c2', 'VARCHAR2(32)', 202002, 32, 0, '所属公司AMID', '1', null, 0, 0, 0, 802001, 2, '0', 6, '0', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (635, 125, 'c3', 'NUMBER(11,0)', 202001, 11, 0, '所属公司', '1', null, 0, 0, 0, 802001, 3, '1', 20, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (636, 125, 'c4', 'VARCHAR2(30)', 202002, 30, 0, '姓名', '1', null, 0, 0, 0, 802001, 4, '1', 12, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (637, 125, 'c5', 'NUMBER(6,0)', 202001, 6, 0, '性别', '1', null, 0, 0, 0, 802001, 5, '1', 12, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (638, 125, 'c6', 'VARCHAR2(30)', 202002, 30, 0, '手机号', '1', null, 0, 0, 0, 802001, 6, '1', 12, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (639, 125, 'c7', 'VARCHAR2(30)', 202002, 30, 0, 'Email', '1', null, 0, 0, 0, 802001, 7, '1', 12, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (640, 125, 'c8', 'VARCHAR2(30)', 202002, 30, 0, '公司电话', '1', null, 0, 0, 0, 802001, 8, '1', 12, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (641, 125, 'c9', 'VARCHAR2(100)', 202002, 100, 0, '公司名称', '1', null, 0, 0, 0, 802001, 9, '1', 12, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (642, 125, 'c10', 'VARCHAR2(50)', 202002, 50, 0, '公司邮箱', '1', null, 0, 0, 0, 802001, 10, '1', 15, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (643, 125, 'c11', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 11, '1', 20, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (644, 125, 'c12', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 12, '1', 20, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (645, 125, 'c13', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 13, '1', 15, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (646, 125, 'c14', 'VARCHAR2(30)', 202002, 30, 0, '城市', '1', null, 0, 0, 0, 802001, 14, '1', 15, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (648, 125, 'c16', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '是否从属公司', '1', '0', 0, 0, 0, 802001, 16, '1', 15, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (649, 125, 'c17', 'NUMBER(6,0) DEFAULT 203000', 202001, 6, 0, '业务状态', '0', '203000', 0, 0, 0, 802001, 17, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (650, 125, 'c18', 'NUMBER(6,0) DEFAULT 130001', 202001, 6, 0, '状态', '0', '130001', 0, 0, 0, 802001, 18, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (651, 125, 'c19', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '新建候选人数目', '1', '0', 0, 0, 0, 802001, 19, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (652, 125, 'c20', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '入库候选人数目', '1', '0', 0, 0, 0, 802001, 20, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (653, 125, 'c21', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '被关注候选人数目', '1', '0', 0, 0, 0, 802001, 21, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (654, 125, 'c22', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '被邀请面试候选人数目', '1', '0', 0, 0, 0, 802001, 22, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (655, 125, 'c23', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '被offer候选人数目', '1', '0', 0, 0, 0, 802001, 23, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (656, 125, 'c24', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '成交候选人数目', '1', '0', 0, 0, 0, 802001, 24, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (657, 125, 'c25', 'NUMBER(14,0) DEFAULT 0', 202001, 14, 0, '网站总浏览数目', '1', '0', 0, 0, 0, 802001, 25, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (658, 125, 'c26', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 26, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (659, 125, 'c27', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 27, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (660, 125, 'c28', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 28, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (661, 125, 'c29', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 29, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (662, 125, 'c30', 'NUMBER(6,0) DEFAULT 0', 202001, 6, 0, '（未使用）', '1', '0', 0, 0, 0, 802001, 30, '1', 6, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (647, 125, 'c15', 'NUMBER(6,0)', 202001, 6, 0, '注册方式', '1', null, 0, 0, 0, 802001, 15, '1', 12, '1', '1', to_date('13-12-2016 20:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:01:56', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1000 records committed...
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (663, 106, 'c71', 'NUMBER(6,0)', 202001, 6, 0, '入库审核状态', '1', null, 0, 0, 0, 802001, 5, '1', 15, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (664, 106, 'c72', 'DATE', 202006, 20, 0, '顾问面试时间', '1', null, 0, 0, 0, 802001, 6, '1', 14, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (665, 106, 'c73', 'DATE', 202006, 20, 0, '顾问面评提交时间', '1', null, 0, 0, 0, 802001, 7, '1', 14, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (666, 106, 'c74', 'VARCHAR2(32)', 202002, 32, 0, '指派BS业务员', '1', null, 0, 0, 0, 802001, 74, '1', 6, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (667, 106, 'c75', 'VARCHAR2(30)', 202002, 30, 0, '指派BS业务员姓名', '1', null, 0, 0, 0, 802001, 75, '1', 6, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (668, 106, 'c76', 'DATE', 202006, 20, 0, '指派时间', '1', null, 0, 0, 0, 802001, 76, '1', 6, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (669, 106, 'c77', 'VARCHAR2(50)', 202002, 50, 0, '操作人AUID', '1', null, 0, 0, 0, 802001, 77, '1', 12, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (670, 106, 'c78', 'VARCHAR2(20)', 202002, 20, 0, '操作人姓名', '1', null, 0, 0, 0, 802001, 78, '1', 12, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (671, 106, 'c79', 'DATE', 202006, 20, 0, '操作时间', '1', null, 0, 0, 0, 802001, 79, '1', 15, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (672, 106, 'c80', 'VARCHAR2(200)', 202002, 200, 0, '操作说明', '1', null, 0, 0, 0, 802001, 80, '1', 15, '1', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (673, 106, 'c81', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 81, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (674, 106, 'c82', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 82, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (675, 106, 'c83', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 83, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (676, 106, 'c84', 'VARCHAR2(30)', 202002, 30, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 84, '0', 6, '0', '1', to_date('13-12-2016 20:32:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 17:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1906, 118, 'c51', 'VARCHAR2(200)', 202002, 200, 0, '附：候选人头像', '1', null, 0, 0, 0, 802005, 51, '1', 200, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1907, 118, 'c52', 'VARCHAR2(50)', 202002, 50, 0, '附：候选人当前职位', '1', null, 0, 0, 0, 802005, 52, '1', 50, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1908, 118, 'c53', 'NUMBER(6,0)', 202001, 6, 0, '附：事件提醒状态', '1', null, 0, 0, 0, 802005, 53, '1', 6, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1909, 118, 'c54', 'VARCHAR2(50)', 202002, 50, 0, '附：事件提醒状态说明', '1', null, 0, 0, 0, 802005, 54, '1', 50, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1910, 118, 'c55', 'VARCHAR2(200)', 202002, 200, 0, '附：公司职位HR', '1', null, 0, 0, 0, 802005, 55, '1', 200, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1911, 118, 'c56', 'VARCHAR2(100)', 202002, 100, 0, '附：事件提醒详情', '1', null, 0, 0, 0, 802005, 56, '1', 100, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1912, 118, 'c57', 'NUMBER(6,0)', 202001, 6, 0, '附：事件提醒类型', '1', null, 0, 0, 0, 802005, 57, '1', 6, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1913, 118, 'c58', 'VARCHAR2(100)', 202002, 100, 0, '附：事件提醒备注说明', '1', null, 0, 0, 0, 802005, 58, '1', 100, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1914, 118, 'c59', 'CHAR(1)', 202004, 1, 0, '附：是否可推迟', '1', null, 0, 0, 0, 802005, 59, '1', 1, '1', '1', to_date('03-01-2017 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:58:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1888, 135, 'c8', 'NUMBER(11,0)', 202001, 11, 0, 'blocked', '1', null, 0, 0, 0, 802001, 8, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1889, 135, 'c9', 'NUMBER(11,0)', 202001, 11, 0, '被关注', '1', null, 0, 0, 0, 802001, 9, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1890, 135, 'c10', 'NUMBER(11,0)', 202001, 11, 0, '邀请面试', '1', null, 0, 0, 0, 802001, 10, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1891, 135, 'c11', 'NUMBER(11,0)', 202001, 11, 0, '面试', '1', null, 0, 0, 0, 802001, 11, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1892, 135, 'c12', 'NUMBER(11,0)', 202001, 11, 0, 'offer', '1', null, 0, 0, 0, 802001, 12, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1893, 135, 'c13', 'NUMBER(11,0)', 202001, 11, 0, '入职', '1', null, 0, 0, 0, 802001, 13, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1894, 135, 'c14', 'NUMBER(11,0)', 202001, 11, 0, '离职', '1', null, 0, 0, 0, 802001, 14, '1', 6, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1895, 135, 'c15', 'NUMBER(16,2)', 202001, 16, 2, '开票金额', '1', null, 0, 0, 0, 802001, 15, '1', 15, '1', '1', to_date('31-12-2016 12:56:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1896, 135, 'c16', 'NUMBER(16,2)', 202001, 16, 2, '收款金额', '1', null, 0, 0, 0, 802001, 16, '1', 15, '1', '1', to_date('01-01-2017 12:10:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1897, 135, 'c17', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 17, '0', 6, '0', '1', to_date('01-01-2017 12:10:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1898, 135, 'c18', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 18, '0', 6, '0', '1', to_date('01-01-2017 12:10:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1899, 135, 'c19', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 19, '0', 6, '0', '1', to_date('01-01-2017 12:10:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1900, 135, 'c20', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 20, '0', 6, '0', '1', to_date('01-01-2017 12:10:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1901, 135, 'c21', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 21, '0', 11, '0', '1', to_date('01-01-2017 12:10:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1902, 135, 'c22', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 22, '0', 11, '0', '1', to_date('01-01-2017 12:10:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1903, 135, 'c23', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 23, '0', 11, '0', '1', to_date('01-01-2017 12:10:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1904, 135, 'c24', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 24, '0', 11, '0', '1', to_date('01-01-2017 12:10:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMN (colid, tableid, colname, datatypestr, datatype, datalen, datadotlen, colmemo, nullflag, def, datacol1num, datacol2num, datacol3num, sctlevel, seq, listshowflag, showwidth, formshowflag, state, istdate, uptdate)
values (1905, 135, 'c25', 'NUMBER(11,0)', 202001, 11, 0, '（未使用）', '1', null, 0, 0, 0, 802001, 25, '0', 11, '0', '1', to_date('01-01-2017 12:10:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 12:11:15', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1041 records loaded
prompt Loading I_DATATABLECOLUMNEXTINFO...
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (69, 301, 23, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('24-12-2016 14:53:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:53:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (49, 314, 24, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('13-12-2016 07:32:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-12-2016 07:32:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (51, 663, 106, 2000, '入库审核状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：241 - 候选人入库审核状态', 803001, '241', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('15-12-2016 20:39:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 20:39:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (67, 1049, 129, 2000, '执行后：候选人状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：245 - 候选人面试流程结束状态', 803001, '245', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:24:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:56:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (68, 1055, 129, 2000, '执行后：候选人流程结束状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：241 - 候选人入库审核状态', 803001, '241', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:24:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:06:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (1, 1, 1, 2000, '公司名称', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, '-1', null, '1', '1', '1', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (2, 6, 2, 2000, '姓名', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, '-1', null, '0', '1', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (3, 7, 2, 2000, '性别', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '3 - 部门', 803009, '3', '9', '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (4, 8, 2, 2000, '所属业务公司', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '1 - 公司机构', 803009, '1', '7', '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (5, 9, 2, 2000, '所属部门', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '4 - 职位', 803009, '4', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (6, 10, 2, 2000, '职位', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (7, 11, 2, 2000, '职称', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：132 - 性?', 803001, '132', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (8, 12, 2, 2000, '学历', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：134 - 职称', 803001, '134', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (9, 14, 2, 2000, '学历', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：133 - 学历', 803001, '133', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (10, 15, 2, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (11, 16, 3, 2000, '部门', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, null, null, '0', '1', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (12, 17, 3, 2000, '所属业务公司', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '1 - 公司机构', 803009, '1', '26', '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (13, 24, 3, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '默认值：0', 803004, '0', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (14, 25, 3, 2000, '在岗人数', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '默认值：0', 803004, '0', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (15, 26, 3, 2000, '上级', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '4 - 岗位', 803009, '4', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (16, 27, 3, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (17, 19, 4, 2000, '职位名称', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, '-1', null, '0', '1', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (18, 20, 4, 2000, '所属业务公司', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '1 - 公司机构', 803009, '1', '29,30', '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (19, 21, 4, 2000, '有效状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (20, 22, 4, 2000, '有效状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, '0', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (21, 29, 4, 2000, '部门', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '3 - 部门', 803009, '3', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (22, 30, 4, 2000, '上级', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '4 - 岗位', 803009, '4', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (23, 46, 102, 2000, '手机号码', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '1', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (24, 97, 101, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (25, 76, 13, 2000, 'AUID', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (26, 77, 13, 2000, '经度', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (27, 48, 102, 2000, '组织类别', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:35:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (28, 49, 102, 2000, '所属组织ID', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (30, 60, 102, 2000, '昵称', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '1', '1', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 23:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (50, 560, 119, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：251 - 事件类型', 803001, '251', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('15-12-2016 16:40:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:50:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (31, 364, 106, 2000, '有效状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 14:37:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-12-2016 15:23:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (32, 365, 106, 2000, '入库状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：240 - 候选人入库状态', 803001, '240', null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 14:54:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-12-2016 17:12:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (33, 375, 106, 2000, '基本信息-性别', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：132 - 性別', 803001, '132', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 15:16:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-12-2016 15:57:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (34, 386, 106, 2000, '基本信息-婚姻状况', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：139 - 婚姻状态', 803001, '139', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 15:30:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-12-2016 15:30:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (35, 465, 109, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 16:18:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-12-2016 16:18:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (36, 470, 109, 2000, '候选人状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：243 - 候选人状态', 803001, '243', null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 16:18:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:44:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (37, 471, 109, 2000, '流程状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：244 - 候选人面试流程状态', 803001, '244', null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 16:18:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 22:30:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (38, 469, 109, 2000, '候选人姓名', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '1', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 16:19:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-12-2016 16:19:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (39, 467, 109, 2000, '公司MID', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 16:19:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-12-2016 16:19:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (40, 387, 106, 2000, '基本信息-最高学历', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：133 - 学历', 803001, '133', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 17:02:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-12-2016 17:02:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (41, 408, 106, 2000, '工作期望-职位', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 17:05:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 14:20:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (42, 409, 106, 2000, '工作期望-职级', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 17:05:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 14:21:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (43, 410, 106, 2000, '工作期望-行业', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('09-12-2016 17:05:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:02:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (44, 323, 104, 2000, '业务状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：203 - 企业业务状态', 803001, '203', null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('10-12-2016 09:00:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-12-2016 09:00:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (45, 325, 104, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('10-12-2016 09:00:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-12-2016 09:00:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (46, 324, 104, 2000, '行业', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：1001 - 行业分类', 803001, '1001', null, '0', '0', '0', '1', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('10-12-2016 09:00:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-12-2016 09:00:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (47, 591, 106, 2000, '有效状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('10-12-2016 15:23:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-12-2016 15:23:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (48, 322, 104, 2000, '机构性质', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：220 - 机构性质', 803001, '220', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('11-12-2016 08:37:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-12-2016 08:37:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (52, 558, 119, 2000, '事件类型', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('20-12-2016 13:57:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:44:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (53, 430, 107, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('20-12-2016 13:57:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 13:57:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (54, 684, 115, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('20-12-2016 13:58:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 13:58:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (55, 361, 105, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('20-12-2016 13:58:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 13:58:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (56, 887, 129, 2000, '状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '1', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('20-12-2016 13:58:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:59:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (57, 891, 129, 2000, '执行后状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('20-12-2016 14:09:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 08:11:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (58, 890, 129, 2000, '必要状态条件', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：130 - 有效状态', 803001, '130', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('20-12-2016 14:31:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 08:11:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (59, 583, 109, 2000, '结束状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：245 - 候选人面试流程关闭原因', 803001, '245', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('22-12-2016 22:30:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 22:30:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (75, 581, 119, 2000, '发生者对象', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('26-12-2016 17:04:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:27:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (76, 1056, 129, 2000, '执行后：候选人状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：243 - 候选人状态', 803001, '243', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('26-12-2016 17:05:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:05:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (77, 1054, 129, 2000, '执行后：入库状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：240 - 候选人入库状态', 803001, '240', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('26-12-2016 17:05:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:05:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (78, 1058, 129, 2000, '执行后：候选人流程结束状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：245 - 候选人面试流程结束状态', 803001, '245', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('26-12-2016 17:06:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:06:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (81, 580, 119, 2000, '发生者对象', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('26-12-2016 22:27:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:45:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (82, 572, 119, 2000, '发生者对象', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：238 - 平台对象', 803001, '238', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('27-12-2016 13:45:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:45:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (84, 478, 110, 2000, '学历', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：133 - 学历', 803001, '133', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('06-01-2017 10:19:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 10:19:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (60, 1053, 129, 2000, '执行后：候选人流程状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, 0, null, null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:12:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 13:19:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (61, 888, 129, 2000, '流程分类', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：252 - 流程分类', 803001, '252', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:18:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 08:18:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (62, 892, 129, 2000, '条件：候选人状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：240 - 候选人入库状态', 803001, '240', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:23:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:37:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (63, 910, 129, 2000, '条件：候选人面试状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：241 - 候选人入库审核状态', 803001, '241', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:23:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:38:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (64, 911, 129, 2000, '条件：候选人流程状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：243 - 候选人状态', 803001, '243', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:23:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:39:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (65, 1048, 129, 2000, '条件：候选人流程结束状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：244 - 候选人面试流程状态', 803001, '244', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:23:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:40:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (66, 1051, 129, 2000, '执行后：候选人面试状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：242 - 关注或黑名单状态', 803001, '242', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('23-12-2016 08:24:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 13:19:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (80, 559, 119, 2000, '事件初始状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：254 - 事件分类', 803001, '254', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('26-12-2016 22:26:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:50:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (83, 1812, 119, 2000, '提醒类型', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：255 - 事件提醒类型', 803001, '255', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('03-01-2017 16:13:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 16:14:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (70, 852, 109, 2000, '结算状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：233 - 票据状态', 803001, '233', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('25-12-2016 09:02:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 09:03:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (71, 1057, 129, 2000, '执行后：候选人流程状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：244 - 候选人面试流程状态', 803001, '244', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('25-12-2016 15:56:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:56:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (72, 1059, 129, 2000, '执行后：候选人流程结束状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：233 - 票据状态', 803001, '233', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('25-12-2016 15:57:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:06:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (73, 886, 129, 2000, '流程CODE', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, -1, null, null, '1', '1', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('25-12-2016 15:59:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:00:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (74, 1050, 129, 2000, '条件：票据状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：233 - 票据状态', 803001, '233', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('26-12-2016 13:18:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 13:18:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLECOLUMNEXTINFO (id, colid, tableid, extcode, extnamezh, extnamezhs, extnameen, extnameens, extnamefr1, extnamefr1s, extnamefr2, extnamefr2s, extnamefr3, extnamefr3s, extdefine, extshow, extlength, extprecision, extunit, extvaluescope, extvaluescopetypeid, extvaluescopetypeparam, extrelationsubcols, extkeyidflag, extkeynameflag, extkeywordflag, extquerybyflag, extsynname, extrelateenvironment, extversion, extmemo, state, istdate, uptdate)
values (79, 1060, 129, 2000, '条件：关注或黑名单状态', null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, '数据应用字典：242 - 关注或黑名单状态', 803001, '242', null, '0', '0', '0', '0', null, '火星智慧数据工程', 'V1.0', null, '1', to_date('26-12-2016 17:06:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:06:48', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 83 records loaded
prompt Loading I_DATATABLETYPE...
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (100000, '业务数据管理', 201001, -1, 33, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (100009, '基础数据管理', 201001, -1, 12, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (200000, '公司组织管理', 201001, -1, 11, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (300000, '网站资源管理', 201001, -1, 0, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (400001, 'OA工作流程', 201001, -1, 0, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_DATATABLETYPE (tabletypeid, tabletypename, typelevel, parentid, childnum, memo, state, istdate, uptdate)
values (900000, '系统管理', 201001, -1, 18, null, '1', to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 17:33:29', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 6 records loaded
prompt Loading I_PROCESS...
prompt Table is empty
prompt Loading I_PROCESSDESC...
prompt Table is empty
prompt Loading I_SYSTEMPARAM...
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (1, 100, '流程分类', '100001', '财务流程', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (2, 100, '流程分类', '100002', '行政流程', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (3, 100, '流程分类', '100003', '项目流程', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (4, 100, '流程分类', '100004', '其他流程', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (8, 101, '流程经手模式', '101001', '一人名单一人处理', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (9, 101, '流程经手模式', '101002', '多人名单一人处理', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (10, 101, '流程经手模式', '101003', '多人名单多人并行处理', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (11, 102, '流程选人过滤规则', '102001', '允许选择全部指定的经办人', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (12, 102, '流程选人过滤规则', '102002', '只允许选择本部门经办人', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (13, 102, '流程选人过滤规则', '102003', '只允许选择上级部门经办人', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (14, 102, '流程选人过滤规则', '102004', '只允许选择下级部门经办人', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (15, 102, '流程选人过滤规则', '102005', '只允许选择本角色经办人', null, null, '1', to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (20, 103, '流程自动选人规则', '103001', '不进行自动选择', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (21, 103, '流程自动选人规则', '103002', '自动选择流程发起人', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (22, 103, '流程自动选人规则', '103003', '自动选择本部门主管', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (23, 103, '流程自动选人规则', '103004', '自动选择上级主管领导', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (24, 103, '流程自动选人规则', '103005', '自动选择董事长（一级部门主管）', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (25, 103, '流程自动选人规则', '103006', '自动选择总经理（二级部门主管）', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (26, 103, '流程自动选人规则', '103007', '自动选择指定步骤经办人', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (27, 103, '流程自动选人规则', '103008', '自动选择指定字段', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (90, 200, '机构类型', '200001', '公司', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (100, 201, '等级', '201000', '-', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (101, 201, '等级', '201001', '一级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (102, 201, '等级', '201002', '二级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (103, 201, '等级', '201003', '三级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (104, 201, '等级', '201004', '四级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (105, 201, '等级', '201005', '五级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (106, 201, '等级', '201006', '六级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (107, 201, '等级', '201007', '七级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (108, 201, '等级', '201008', '八级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (109, 201, '等级', '201009', '九级', null, null, '1', to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (110, 201, '等级', '201010', '十级', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (111, 202, '数据类型', '202001', 'NUMBER', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (112, 202, '数据类型', '202002', 'VARCHAR2', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (113, 202, '数据类型', '202003', 'DATE', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (114, 202, '数据类型', '202004', 'CHAR', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (115, 202, '数据类型', '202005', 'TEXT', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (116, 202, '数据类型', '202006', 'DATETIME', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (117, 202, '数据类型', '202007', 'FILE', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (118, 202, '数据类型', '202008', 'IMG_FILE', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (119, 202, '数据类型', '202009', 'IMG_LINK', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (120, 202, '数据类型', '202010', 'MD5加密文', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (121, 202, '数据类型', '202011', '随机码UGID', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (122, 202, '数据类型', '202012', '单选框', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (123, 202, '数据类型', '202013', '多选框', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (131, 204, '附件类型', '204001', '图片', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (132, 204, '附件类型', '204002', '音频', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (133, 204, '附件类型', '204003', '视频', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (134, 204, '附件类型', '204004', '文本', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (141, 205, '外文', '205001', '中国简体', null, null, '1', to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (142, 205, '外文', '205002', '英语', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (143, 205, '外文', '205003', '日语', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (144, 205, '外文', '205004', '韩语', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (145, 205, '外文', '205005', '法语', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (149, 206, '分组函数', '206000', 'groupby', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (150, 206, '分组函数', '206001', 'sum', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (151, 206, '分组函数', '206002', 'max', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (152, 206, '分组函数', '206003', 'min', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (153, 206, '分组函数', '206004', 'count', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (200, 801, '数据状态', '801000', '初始', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (201, 801, '数据状态', '801001', '等待校对', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (202, 801, '数据状态', '801003', '等待审核入库', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (203, 801, '数据状态', '801004', '已入库，等待发布', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (204, 801, '数据状态', '801005', '已冻结', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (205, 801, '数据状态', '801009', '已发布', null, null, '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (301, 802, '密级', '802001', '公开', null, '1', '1', to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:46:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (302, 802, '密级', '802002', '内部', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (303, 802, '密级', '802003', '秘密', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (304, 802, '密级', '802004', '机密', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (305, 802, '密级', '802005', '绝密', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (306, 803, '值域表', '803001', '数据应用字典', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (307, 803, '值域表', '803002', '默认值：当前登录信息', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (308, 803, '值域表', '803003', '默认值：当前日期', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (309, 803, '值域表', '803004', '默认值：明日日期', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (314, 803, '值域表', '803008', '默认值：自定义', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (315, 803, '值域表', '803009', '业务数据', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (316, 803, '值域表', '803010', '业务数据字段', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (317, 803, '值域表', '803011', '加密文件', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (318, 803, '值域表', '803012', '加密文件名', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (403, 902, '业务参数：图片服务器web地址', '902001', 'http://114.55.35.145:8099/picserver/pcace/', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (404, 903, '业务参数：图片服务器硬盘地址', '903001', 'E:\Tomcat_P\webapps\picserver\pcace\', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (406, 905, '业务参数：苹果开关', '905001', '1', null, '1', '1', to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 08:47:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into I_SYSTEMPARAM (id, paramclass, classname, value, name, parentclass, isshow, state, istdate, uptdate)
values (405, 904, '业务参数：APP_Server地址', '904001', 'http://118.178.126.204:8099/aceserver/', null, '1', '1', to_date('15-12-2016 08:41:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 08:41:09', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 83 records loaded
prompt Loading S_MODULE...
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.13.03', '同步APP服务器', '1', '0', '90.13', '0', 'biz/B_DataPub_23_AAppModule_SynAppServer', null, null, '0', to_date('15-12-2016 11:05:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 11:05:30', 'dd-mm-yyyy hh24:mi:ss'));
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
values ('40.01', '登录用户', '1', '1', '40.0', '0', 'biz/B_DataPub_102', null, '11111111', '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 14:37:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.99', '测试1', '0', '1', '40.0', '0', 'biz/B_DataModule_40.99', null, null, '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-12-2016 07:29:24', 'dd-mm-yyyy hh24:mi:ss'));
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
values ('89.0', '个人中心', '0', '1', null, '1', null, null, '00000000', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 11:40:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('89.01', '修改密码', '1', '1', '89.0', '0', 'S_Mpsd', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('89.02', '配置打印机', '1', '1', '89.0', '0', 'biz/I_EmpInfo', null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.0', '系统管理', '1', '1', null, '1', null, null, null, '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.11', '公告', '1', '1', '90.0', '0', 'biz/B_DataPub_5', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.12', 'APP版本管理', '0', '1', '90.0', '0', 'biz/B_DataPub_10', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.13', 'APP模块', '1', '1', '90.0', '0', 'biz/B_DataPub_23', null, '11111111', '0', to_date('03-12-2016 14:48:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-12-2016 14:14:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.13.01', '子表-模块明细', '1', '0', '90.90', '0', 'biz/B_DataPubChild_23_24', null, '11111111', '0', to_date('03-12-2016 14:48:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-12-2016 14:14:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.13.02', '复制模块及明细', '0', '0', '90.13', '0', 'biz/B_DataPub_23_BAppModule_CopyDetail', null, null, '0', to_date('03-12-2016 14:48:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-12-2016 14:48:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.14', 'APP角色', '0', '1', '90.0', '0', 'biz/B_DataPub_25', null, '11111111', '0', to_date('03-12-2016 14:48:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-12-2016 14:48:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.14.01', '子表-权限', '0', '0', '90.91', '0', 'biz/B_DataPubChild_25_26', null, '11111111', '0', to_date('03-12-2016 14:48:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-12-2016 14:48:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.90', 'DOT模块', '0', '1', '90.0', '0', 'biz/B_DataPub_19', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.90.01', '子表-模块明细', '0', '0', '90.90', '0', 'biz/B_DataPubChild_19_22', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.91', 'DOT岗位', '0', '1', '90.0', '0', 'biz/B_DataPub_20', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.91.01', '子表-权限', '0', '0', '90.91', '0', 'biz/B_DataPubChild_20_21', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.92', 'DOT用户', '0', '1', '90.0', '0', 'biz/B_DataPub_18', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.93', '推送历史', '0', '1', '90.0', '0', 'biz/B_DataPub_11', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.94', '短信历史', '1', '1', '90.0', '0', 'biz/B_DataPub_11', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.95', '用户登录信息', '1', '1', '90.0', '0', 'biz/B_DataPub_8', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.96', '用户定位信息', '0', '1', '90.0', '0', 'biz/B_DataPub_9', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.97', '定位日志', '0', '1', '90.0', '0', 'biz/B_DataPub_13', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('90.98', '聊天日志', '0', '1', '90.0', '0', 'biz/B_DataPub_14', null, '11111111', '0', to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:09', 'dd-mm-yyyy hh24:mi:ss'));
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
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.02', '公司/企业', '1', '1', '40.0', '0', 'biz/B_DataPub_104', null, '11111111', '0', to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:33:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.03.01', '审核', '1', '0', '30.03', '0', 'biz/B_DataPub_104_BMMOrgan_Check', null, '00000000', '0', to_date('23-12-2016 16:13:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:28:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.01.01', '审核', '1', '0', '40.01', '0', 'biz/B_DataPub_102_BUserLogin_Check', null, '00000000', '0', to_date('23-12-2016 16:15:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:17:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.01.01', '入库审核', '1', '0', '20.01', '0', 'biz/B_DataPub_106_BCandidate_Check', null, '00000000', '0', to_date('23-12-2016 16:16:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:21:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.01', '候选人管理', '1', '1', '20.0', '0', 'biz/B_DataPub_106', null, '11111111', '0', to_date('07-12-2016 09:29:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:17:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.02', '猎头顾问管理', '1', '1', '30.0', '0', 'biz/B_DataPub_125', null, '11111111', '0', to_date('07-12-2016 09:30:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:11:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.03', '企业管理', '1', '1', '30.0', '0', 'biz/B_DataPub_104', null, '11111111', '0', to_date('07-12-2016 09:31:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 14:49:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.04', '企业 - HR管理', '1', '1', '30.0', '0', 'biz/B_DataPub_124', null, '11111111', '0', to_date('07-12-2016 09:31:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:25:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.05', '企业 - 职位管理', '1', '1', '30.0', '0', 'biz/B_DataPub_108', null, '11111111', '0', to_date('07-12-2016 09:32:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 14:53:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.30', '候选人-面试流程', '1', '1', '20.0', '0', 'biz/B_DataPub_109', null, '11111111', '0', to_date('07-12-2016 09:32:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:24:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.07', '票据管理', '1', '1', '30.0', '0', 'biz/B_DataPub_116', null, '11111111', '0', to_date('07-12-2016 09:34:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:31:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.08', '合同管理', '1', '1', '30.0', '0', 'biz/B_DataPub_117', null, '11111111', '0', to_date('07-12-2016 09:34:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:45:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.32', '候选人事件', '1', '1', '20.0', '0', 'biz/B_DataPub_118', null, '11111111', '0', to_date('07-12-2016 09:35:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:24:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.50', 'A - - 行业库', '1', '1', '40.0', '0', 'biz/B_DataPub_105', null, '11111111', '0', to_date('08-12-2016 14:38:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 14:48:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.52', 'A - - 职位库', '1', '1', '40.0', '0', 'biz/B_DataPub_115', null, '11111111', '0', to_date('08-12-2016 14:38:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 14:49:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.51', 'A - - 企业库', '1', '1', '40.0', '0', 'biz/B_DataPub_107', null, '11111111', '0', to_date('08-12-2016 14:39:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 14:48:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.53', 'A - - 事件库', '1', '1', '40.0', '0', 'biz/B_DataPub_119', null, '11111111', '0', to_date('08-12-2016 14:48:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 15:54:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('40.54', 'A - - 流程库', '1', '1', '40.0', '0', 'biz/B_DataPub_129', null, '11111111', '0', to_date('20-12-2016 13:55:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 13:56:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.31', '候选人-面试流程历史', '1', '1', '20.0', '0', 'biz/B_DataPub_133', null, '11111111', '0', to_date('25-12-2016 22:30:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:24:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.01', 'HR管理', '1', '1', '20.0', '0', 'biz/B_DataPub_124', null, '11111111', '0', to_date('26-12-2016 14:27:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:21:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.05', '候选人-获得证书', '1', '1', '20.0', '0', 'biz/B_DataPub_112', null, '11111111', '0', to_date('28-12-2016 11:39:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:19:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.03', '候选人-教育背景', '1', '1', '20.0', '0', 'biz/B_DataPub_110', null, '11111111', '0', to_date('28-12-2016 11:40:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:19:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.06', '候选人-任职经历', '1', '1', '20.0', '0', 'biz/B_DataPub_130', null, '11111111', '0', to_date('28-12-2016 11:41:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:19:34', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 100 records committed...
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.08', '候选人-项目经验', '1', '1', '20.0', '0', 'biz/B_DataPub_114', null, '11111111', '0', to_date('28-12-2016 11:54:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:20:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.04', '候选人-培训经历', '1', '1', '20.0', '0', 'biz/B_DataPub_111', null, '11111111', '0', to_date('28-12-2016 11:54:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:19:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.07', '候选人-工作经验', '1', '1', '20.0', '0', 'biz/B_DataPub_113', null, '11111111', '0', to_date('28-12-2016 11:55:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:20:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.31', 'ACE统计', '1', '1', '30.0', '0', 'biz/B_DataPub_135', null, '11111111', '0', to_date('01-01-2017 12:08:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:29:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.0', '候选人管理', '1', '1', null, '1', null, null, '00000000', '0', to_date('01-01-2017 19:16:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:16:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.50', '临时候选人入库审核', '1', '1', '20.0', '0', 'biz/B_DataModule_106', null, null, '0', to_date('01-01-2017 19:30:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:31:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.20', '顾问面评', '1', '1', '20.0', '0', 'biz/B_DataPub_126', null, '11111111', '0', to_date('30-12-2016 17:57:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:20:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.09', '候选人与企业关系', '1', '1', '20.0', '0', 'biz/B_DataPub_121', null, '11111111', '0', to_date('30-12-2016 18:13:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:22:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.12', '候选人-语言水平', '1', '1', '20.0', '0', 'biz/B_DataPub_134', null, '11111111', '0', to_date('30-12-2016 18:15:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:28:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.21', '候选人-面试记录', '1', '1', '20.0', '0', 'biz/B_DataPub_128', null, '11111111', '0', to_date('30-12-2016 18:19:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:21:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('30.20', 'ACE任务单', '1', '1', '30.0', '0', 'biz/B_DataPub_131', null, '11111111', '0', to_date('30-12-2016 18:25:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:29:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_MODULE (moduleid, modulename, state, ismenu, parent, haschild, url, img, power, biztype, istdate, uptdate)
values ('20.11', '候选人-技能标签', '1', '1', '20.0', '0', 'biz/B_DataPub_123', null, '11111111', '0', to_date('30-12-2016 19:42:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 19:25:51', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 112 records loaded
prompt Loading S_PARAM...
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (0, '40D83B550F6050A35532ED0CD8E2B8F7', '4C83329BEB8DB3CD7E95F241003F09DA', 'C7450C63D3E1D83AA84B876E315078D4', to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (1, '2906DA2A72F47C503B8E5ED83C115E7717A2F0B966B785A5', '01CA94661D24672A', '448D6EFB210543B90BDD9B58FE8113E646299D660395B43A', to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (2, '414C31FA44E9993B3A2B47F486906E46', 'E346A32E2B278BE5', 'F1CF9454A5874FEAE141FEFE728D0540', to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (3, '84D21E697CA66F91A0C3FC80854D6FAF4AA5EA5F528FEAFA', '01CA94661D24672A', 'D865BB0CD83E15AF0922FB34B3E6B58795D61072AB8B14BE', to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (4, 'EABDE525E8F4D52F27CD8D79A7023AE661E32402A9C8F449', '01CA94661D24672A', '789B308426F207E270951AC06CC7E37695D61072AB8B14BE', to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (5, '0BA09DD70678BA399C546C858871A8977A2C3AF8AB5A363C', '95EABF02C25836C4', '1BCBAE3FAA08AB959575659885569F46', to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_PARAM (id, paramname, paramvalue, remark, istdate, uptdate)
values (6, '73C57C5F25D51BAC', '7DEB6DE174E48F0A', 'F0443F16AC20096E46C0C6DE6E40641F', to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 08:41:00', 'dd-mm-yyyy hh24:mi:ss'));
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
values (199, 199, '研发管理员', '0', '1', -1, 802005, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 12:28:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (400, 400, '普通用户', '0', '1', -1, 802001, null, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 09:18:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_ROLE (roleid, roleseq, rolename, power, state, organtype, sctlevel, remark, istdate, uptdate)
values (401, 401, '运维管理员', '0', '1', 200001, 802001, null, to_date('01-11-2016 09:18:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:12:00', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 6 records loaded
prompt Loading S_ROLE_MODULE...
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
commit;
prompt 100 records committed...
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
commit;
prompt 200 records committed...
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
prompt 211 records loaded
prompt Loading S_USER...
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (2, '9001', '111111', '111111', '9001', 400, '1', 7, '1', to_date('14-12-2016 16:33:44', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 1, -1, to_date('01-11-2016 09:14:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2016 21:30:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (3, '3001', '96e79218965eb72c92a549dd5a330112', '96e79218965eb72c92a549dd5a330112', '3001', 402, '1', 0, '1', to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 2, -1, to_date('01-11-2016 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:17:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into S_USER (userid, loginname, password, validatepassword, username, roleid, state, loginnum, loginflag, lastlogindate, cssstyle, areaid, empid, operator, istdate, uptdate)
values (4, '9009', '52c69e3a57331081823331c4e69d3f2e', '52c69e3a57331081823331c4e69d3f2e', '9009', 199, '1', 104, '1', to_date('12-01-2017 09:26:35', 'dd-mm-yyyy hh24:mi:ss'), 'default', -1, 3, -1, to_date('21-12-2016 11:13:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 11:13:55', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading Y_APPMODULE...
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (53, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (42, 802001, 801000, null, to_date('23-12-2016 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:54:23', 'dd-mm-yyyy hh24:mi:ss'), 'H00514', null, null, 'dialog-HR-offer详情', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (54, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:38', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (20, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:36:27', 'dd-mm-yyyy hh24:mi:ss'), 'H00303', 1, null, '候选人列表【HC端】', null, 130001, 'ok 1 2');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (1, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:56:07', 'dd-mm-yyyy hh24:mi:ss'), 'H00101', 1, null, '候选人列表【HR-每周推荐-未登录】', null, 130001, 'ok 1');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (23, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:06:22', 'dd-mm-yyyy hh24:mi:ss'), 'H00306', 1, null, '候选人流程列表【已完成-HC端】---------同上', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (16, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:37:08', 'dd-mm-yyyy hh24:mi:ss'), 'H00207', 1, null, '开票记录【HR端】', null, 130001, 'ok 1');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (17, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:37:16', 'dd-mm-yyyy hh24:mi:ss'), 'H00208', 1, null, '开票记录【HC端】', null, 130001, 'ok 1');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (18, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:54:22', 'dd-mm-yyyy hh24:mi:ss'), 'H00301', 1, null, '新增候选人【HC端】', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (22, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:06:12', 'dd-mm-yyyy hh24:mi:ss'), 'H00305', 1, null, '候选人流程列表【被关注-HC端】---------同上', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (24, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-12-2016 11:09:48', 'dd-mm-yyyy hh24:mi:ss'), 'H00307', 1, null, '候选人列表【首页-HC端】', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (25, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:55:12', 'dd-mm-yyyy hh24:mi:ss'), 'H00401', null, null, '候选人详情-简历', null, 130001, 'ok 1');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (14, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:55:44', 'dd-mm-yyyy hh24:mi:ss'), 'H00205', 1, null, '账户设置【HR端】', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (3, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:56:27', 'dd-mm-yyyy hh24:mi:ss'), 'H00103', 1, null, '我的职位列表【HR】', null, 130001, 'ok 1');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (21, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:35:48', 'dd-mm-yyyy hh24:mi:ss'), 'H00304', 1, null, '候选人流程列表【进行中-HC端】', null, 130001, 'ok 1 2');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (8, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 13:00:04', 'dd-mm-yyyy hh24:mi:ss'), 'H00108', 1, null, '候选人列表【已结束-HR端】-------同上', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (7, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 16:36:26', 'dd-mm-yyyy hh24:mi:ss'), 'H00107', 1, null, '候选人列表【已关注-HR端】------同上', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (2, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:56:18', 'dd-mm-yyyy hh24:mi:ss'), 'H00102', 1, null, '候选人列表【HR-每周推荐-登录后】', null, 130001, 'ok 1');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (26, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 09:55:52', 'dd-mm-yyyy hh24:mi:ss'), 'H00402', null, null, '候选人详情-流程', null, 130001, 'ok 2');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (6, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:56:36', 'dd-mm-yyyy hh24:mi:ss'), 'H00106', 1, null, '候选人列表【进行中-HR端】', null, 130001, 'ok 1');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (10, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 21:53:45', 'dd-mm-yyyy hh24:mi:ss'), 'H00201', 1, null, '账户注册【HC端】', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (27, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 09:56:02', 'dd-mm-yyyy hh24:mi:ss'), 'H00403', null, null, '候选人详情-事件', null, 130001, 'ok 2');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (55, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:40', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (56, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:42', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (57, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:44', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (58, 802001, 801000, null, to_date('30-12-2016 12:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 12:31:46', 'dd-mm-yyyy hh24:mi:ss'), 'xxx', null, null, 'xxxx', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (37, 802001, 801000, null, to_date('23-12-2016 10:36:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:55:49', 'dd-mm-yyyy hh24:mi:ss'), 'H00509', null, null, 'dialog-HC-顾问信息', null, 130001, 'OK');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (40, 802001, 801000, null, to_date('23-12-2016 10:58:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:55:34', 'dd-mm-yyyy hh24:mi:ss'), 'H00512', null, null, 'dialog-HR-顾问信息', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (41, 802001, 801000, null, to_date('23-12-2016 10:59:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:55:30', 'dd-mm-yyyy hh24:mi:ss'), 'H00513', null, null, 'dialog-HR-面试详情', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (19, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:55:14', 'dd-mm-yyyy hh24:mi:ss'), 'H00302', 1, null, '编辑候选人简历【HC端】', null, 130001, 'ok form 123');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (28, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 22:04:00', 'dd-mm-yyyy hh24:mi:ss'), 'H00404', null, null, '候选人详情-附件', null, 130001, 'ok 1 2');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (13, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:55:36', 'dd-mm-yyyy hh24:mi:ss'), 'H00204', 1, null, '账户设置【HC端】', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (15, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:55:54', 'dd-mm-yyyy hh24:mi:ss'), 'H00206', 1, null, '修改密码【通用】', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (12, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 14:56:09', 'dd-mm-yyyy hh24:mi:ss'), 'H00203', 1, null, '新增公司【HC、HR端】', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (11, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 15:02:38', 'dd-mm-yyyy hh24:mi:ss'), 'H00202', 1, null, '账户注册【HR端】', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (5, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 13:01:22', 'dd-mm-yyyy hh24:mi:ss'), 'H00105', 1, null, '我的职位详情[HR]', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (9, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 20:33:10', 'dd-mm-yyyy hh24:mi:ss'), 'H00109', 1, null, 'main[HC]', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (4, 802001, 801000, null, to_date('12-12-2016 14:17:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 13:26:59', 'dd-mm-yyyy hh24:mi:ss'), 'H00104', 1, null, '我的职位新增【HR】', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (45, 802001, 801000, null, to_date('24-12-2016 15:18:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 17:30:23', 'dd-mm-yyyy hh24:mi:ss'), 'H00517', null, null, 'xxxx', null, 130001, null);
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (47, 802001, 801000, null, to_date('25-12-2016 14:45:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:24:48', 'dd-mm-yyyy hh24:mi:ss'), 'H00519', null, null, 'dialog-HC-候选人申请成功', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (32, 802001, 801000, null, to_date('23-12-2016 10:00:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 14:54:09', 'dd-mm-yyyy hh24:mi:ss'), 'H00504', null, null, 'dialog-HC-候选人反馈(offer)', null, 130001, 'OK');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (52, 802001, 801000, null, to_date('25-12-2016 17:03:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 17:17:43', 'dd-mm-yyyy hh24:mi:ss'), 'H00524', null, null, 'dialog-HR-加入黑名单', null, 130001, 'ok 331004');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (48, 802001, 801000, null, to_date('25-12-2016 14:57:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:03:16', 'dd-mm-yyyy hh24:mi:ss'), 'H00520', null, null, 'dialog-HC-候选人离职原因', null, 130001, 'ok  330027');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (29, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:56:02', 'dd-mm-yyyy hh24:mi:ss'), 'H00501', null, null, 'dialog-HC-未入职原因', null, 130001, 'ok 330047');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (50, 802001, 801000, null, to_date('25-12-2016 15:24:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 17:02:11', 'dd-mm-yyyy hh24:mi:ss'), 'H00522', null, null, 'dialog-HR-关注', null, 130001, 'ok  331001');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (36, 802001, 801000, null, to_date('23-12-2016 10:32:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:00:56', 'dd-mm-yyyy hh24:mi:ss'), 'H00508', null, null, 'dialog-HC-安排面试', null, 130001, 'ok 330002');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (49, 802001, 801000, null, to_date('25-12-2016 15:20:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:24:27', 'dd-mm-yyyy hh24:mi:ss'), 'H00521', null, null, 'dialog-HC-顾问信息', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (46, 802001, 801000, null, to_date('25-12-2016 14:40:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:24:54', 'dd-mm-yyyy hh24:mi:ss'), 'H00518', null, null, 'dialog-HC-候选人没有通过申请', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (34, 802001, 801000, null, to_date('23-12-2016 10:10:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:00:06', 'dd-mm-yyyy hh24:mi:ss'), 'H00506', null, null, 'dialog-HC-候选人入职？？？？？？？？？？', null, 130001, 'OK 330010');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (33, 802001, 801000, null, to_date('23-12-2016 10:06:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:57:20', 'dd-mm-yyyy hh24:mi:ss'), 'H00505', null, null, 'dialog-HC-确认结束流程', null, 130001, 'ok 330444');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (30, 802001, 801000, null, to_date('16-12-2016 17:46:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:56:17', 'dd-mm-yyyy hh24:mi:ss'), 'H00502', null, null, 'dialog-HC-候选人入职', null, 130001, 'ok 330007');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (35, 802001, 801000, null, to_date('23-12-2016 10:12:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:00:24', 'dd-mm-yyyy hh24:mi:ss'), 'H00507', null, null, 'dialog-HC-顾问面试', null, 130001, 'ok 220003');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (39, 802001, 801000, null, to_date('23-12-2016 10:38:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:01:33', 'dd-mm-yyyy hh24:mi:ss'), 'H00511', null, null, 'dialog-HR-面试变更', null, 130001, 'ok 330022');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (51, 802001, 801000, null, to_date('25-12-2016 17:01:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 17:17:36', 'dd-mm-yyyy hh24:mi:ss'), 'H00523', null, null, 'dialog-HR-取消关注', null, 130001, 'ok 331002');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (44, 802001, 801000, null, to_date('24-12-2016 14:13:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:25:39', 'dd-mm-yyyy hh24:mi:ss'), 'H00516', null, null, 'dialog-HR-面试反馈', null, 130001, 'ok');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (31, 802001, 801000, null, to_date('23-12-2016 09:57:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 14:53:40', 'dd-mm-yyyy hh24:mi:ss'), 'H00503', null, null, 'dialog-HC-候选人面试反馈', null, 130001, 'OK');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (59, 802001, 801000, null, to_date('30-12-2016 12:32:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 21:34:22', 'dd-mm-yyyy hh24:mi:ss'), 'H00601', null, null, 'HC顾问面评编辑', null, 130001, 'ok 1 2 3 4 5 6');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (38, 802001, 801000, null, to_date('23-12-2016 10:38:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:52:02', 'dd-mm-yyyy hh24:mi:ss'), 'H00510', null, null, 'dialog-HR-安排面试', null, 130001, 'ok 330002');
insert into Y_APPMODULE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7)
values (43, 802001, 801000, null, to_date('24-12-2016 14:01:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:59:28', 'dd-mm-yyyy hh24:mi:ss'), 'H00515', null, null, 'dialog-HR-邀请面试', null, 130001, 'ok 330000');
commit;
prompt 59 records loaded
prompt Loading Y_APPMODULEDETAIL...
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (21, 28, 802001, 801000, null, to_date('18-12-2016 09:07:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 18:43:27', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '$(".fileName_").html("453543554354353.jpg");\n$(".fileName_").removeClass("light-grey");\n$(".delFile_").removeClass("gone");\n$("#file_id").val(DATAID);\n$("#file_url").val("http://118.178.126.204:8099/aceserver/upfile/ACECV/2016/32432524232324232.png");\n$("#file_type").val("137001");\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (27, 27, 802001, 801000, null, to_date('18-12-2016 09:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2016 10:28:45', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<select class="actionType_">\n  <option>所有事件</option>\n  <DATAPARAM id=251 type=select><option value="%s">%s</option></DATAPARAM>\n</select>\n<span class="pdl20">\n  <input type="text" readonly="readonly" placeholder="yyyy-mm-dd" name="startDate" id="startDate" size="7" value="2016-12-20" /> ~ \n  <input type="text" readonly="readonly" placeholder="yyyy-mm-dd" name="endDate" id="endDate" size="7" value="2016-12-20" />\n</span>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (48, 31, 802001, 801000, null, to_date('23-12-2016 09:59:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 09:59:29', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人反馈</div>\n<div class="h15"></div>\n\n<div class="pdall10 bg-white center">\n<div class="bg-white center" style="">\n    <span class="">反馈结果:</span>\n    <span class="pd10"><input class="radio-default  proinfo_ vv" type="radio" id="radio1" name="proinfo" checked value="1"><label class="pdl5" for="radio1">同意面试</label></span>\n    <span class="pdr100"><input class="radio-default  proinfo_ vv" type="radio" id="radio2" name="proinfo" value="2"><label class="pdl5" for="radio2">拒绝面试</label></span>\n</div>\n <div class="dt10 proinfo_ext_ gone" id="proinfo2">\n  <span class="top">拒绝原因：</span>\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div> \n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (49, 32, 802001, 801000, null, to_date('23-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 10:05:38', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人反馈</div><div class="h15"></div>\n\n<div class="pdall10 bg-white center">\n<div class="bg-white center" style="">\n    <span class="">反馈结果:</span>\n    <span class="pd10"><input class="radio-default  proinfo_ vv" type="radio" id="radio1" name="proinfo" checked value="1"><label class="pdl5" for="radio1">接收offer</label></span>\n    <span class="pdr100"><input class="radio-default  proinfo_ vv" type="radio" id="radio2" name="proinfo" value="2"><label class="pdl5" for="radio2">拒绝offer</label></span>\n</div>\n <div class="dt10 proinfo_ext_ gone" id="proinfo2">\n  <span class="top">拒绝原因：</span>\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div> \n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (26, 28, 802001, 801000, null, to_date('18-12-2016 09:07:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 22:03:50', 'dd-mm-yyyy hh24:mi:ss'), '测试用', 250009, null, null, '<div class="dt10 pdl30 pdr5 pointer dataline_" data="199"><span class="pdl15">LV Offer</span><span class="float-r grey f9">2016.12.15</span></div>\n<div class="dt10 pdl30 pdr5 pointer dataline_" data="101"><span class="pdl15">离职证明</span><span class="float-r grey f9">2016.11.24</span></div>\n<div class="dt10 pdl30 pdr5 pointer dataline_" data="102"><span class="pdl15">学位证</span><span class="float-r grey f9">2016.11.22</span></div>\n<div class="dt10 pdl30 pdr5 pointer dataline_" data="103"><span class="pdl15">学历证明</span><span class="float-r grey f9">2016.11.22</span></div>\n<div class="dt10 pdl30 pdr5 pointer dataline_" data="104"><span class="pdl15">体检证明</span><span class="float-r grey f9">2016.11.19</span></div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (29, 3, 802001, 801000, null, to_date('21-12-2016 12:04:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 12:04:35', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (10, 25, 802001, 801000, null, to_date('16-12-2016 17:47:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 20:48:37', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-基本信息', 1, null, null, '<div class="float-l pdr30"><img src="../doc/images/face_c%s_b.png"></div>\n<div class="float-l">\n  <div>\n    <span class="f22 bold sp2">%s %s</span>\n    <span class="f14 bold pdl20">（%s%s%s）</span>\n  </div>\n  <div class="h10"></div>\n  <div class="f14 bold">\n    <span class="pdr10">%s</span>\n    <span class="pdr10">%s岁</span>\n    <span class="pdr10">%s</span>                \n    <span class="pdr10">%s年工作经验 </span>\n    <span class="pdr10">%sK</span>\n  </div>\n  <div class="h30"></div>\n  <div class="f12 grey">\n    <span>%s国籍，%s户口%s%s</span>\n  </div>\n  <div class="h15"></div>\n  <div>\n    <span class="f12 grey"><img src="../doc/images/HR/gz.png"> %s</span>\n    <span class="f12 grey pdl20"><img src="../doc/images/HR/location.png">%s %s</span>\n  </div>\n</div>\n\n<div class="float-r text-r">\n  <div>\n    <span class="pdr10 pointer export_"><img src="../doc/images/HR/export.png"></span>\n    <span class="pdr10 pointer download_"><img src="../doc/images/download.png"></span>\n    <span class="f9 light-grey">#%s</span>\n  </div>\n  <div class="h100"></div>\n  <div>\n    <button class="btn-default pd20 h30 mgl5 %s">%s</button>\n    <button class="btn-focus pd20 h30 mgl5 %s">%s</button>\n    <span class="nav-main %s"><span class="grey pdl10 pointer" id="li-9">更多 <img src="../doc/images/arrow.png"></span></span>\n    \n    <!--隐藏盒子-->\n    <div id="box-9" class="menu text-c hidden-box hidden-loc-us">\n    <p><span><a class="HR_addToBlacklist_" href="javascript:void()">加入黑名单</a></span></p>\n    </div>\n  </div>\n</div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (20, 27, 802001, 801000, null, to_date('18-12-2016 09:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 00:14:24', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="%s">\n  <div class="dir2 dt20">\n    <div class="%s bold" id="li-<INDEX>"><span class="dt_left">%s</span><span>%s</span></div>\n    <div id="box-<INDEX>" class="dir-none dt15 gone">\n      <div class="dt5"><span class="dt_left"></span><span>%s</span></div>\n    </div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (87, 59, 802001, 801000, null, to_date('30-12-2016 12:32:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 1, null, null, 
        '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt3">\n    <div>\n      <span class="dt_left"><input class="no-border vv readonly" value="2006.09 - 2006.09" readonly="true" size="20"/></span>\n      <input class="bold sp2 no-border vv readonly" value="某制药公司 | 销售部" readonly="true" size="50">\n    </div>\n    <div>\n      <span class="dt_left"></span><input class="bold sp2 light-grey no-border vv readonly" value="全国品类购物行销经理（P2职级）" readonly="true" size="50">\n      <span class="float-r text-r pdr40 btn-slide gone" id="li-244">展开<img class="img20" src="../doc/images/arrow.png"/></span>\n    </div>\n  </div>\n  <div class="hidatda_subform" id="box-244">\n    <div class="dt10">\n      <span class="top dt_col1">公司介绍</span>\n      <span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n    </div>\n    <div class="dt10">\n      <span class="dt_col1"><span class="start">*</span>月薪</span><span class="dt_col2"><input class="h35 full-width vv" name="vvn"></span><span class="dt_col3">元/月</span>\n      <span class="dt_col1"><span class="start">*</span>年薪</span><span class="dt_col2"><input class="h35 full-width vv" name="vvn" type="text"/></span><span class="dt_col3">万/年</span>\n    </div>\n    <div class="h10"></div>\n    <div class="dt10">\n      <span class="dt_col1"><span class="start">*</span>薪资构成</span><span class="dt_col2"><input class="h35 full-width vv" name="vvn"></span><span class="dt_col3"></span>\n      <span class="dt_col1"><span class="start">*</span>汇报对象</span><span class="dt_col2"><input class="h35 full-width vv" name="vvn"></span><span class="dt_col3"></span>\n    </div>\n    <div class="dt10">\n      <span class="dt_col1"><span class="start">*</span>下属人数</span><span class="dt_col2"><input class="h35 full-width vv" name="vvn" type="text"/></span><span class="dt_col3">人</span>\n      <span class="dt_col1"><span class="start">*</span>离职期</span><span class="dt_col2"><input class="h35 full-width vv" name="vvn" type="text"/></span><span class="dt_col3">天</span>\n    </div>\n       \n    <div class="h30"></div>\n    <div class="dt_col1 pdl20 bold dt10">工作权重</div><input type="text" class="vv" name="vvn" id="v_workweight"/>\n    <div class="dt10" id="workweightView">\n      <div>\n' || chr(9) || '      <span class="dt_col1"><span class="start">*</span>工作内容</span>\n' || chr(9) || '      <input class="dt_col2 h35 weightName_" type="text" size="20"/>\n' || chr(9) || '      <input class="h35 work weightValue_" type="text" size="5"/>\n' || chr(9) || '      <span class="h35 dt_col3">%</span>\n' || chr(9) || '    </div>        \n    </div>\n    <div>\n      <span class="dt_col1"></span><span class="color-focus text-l workadd_">+新的工作内容</span>\n    </div>\n    <div class="h30"></div>\n    <div class="dt10">\n      <span class="dt_col1 top"><span class="start">*</span>离职原因</span><span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span></span>\n    </div>\n     \n    <div class="dt30">\n      <span class="dt-left pd10"><span class="red pdr5">*</span>竞业禁止限制</span><input type="hidden" class="vv" name="vvn" id="v_radioValue" size="3">\n      <span><input class="radio-default" type="radio" id="radio1" name="id_radio" checked value="1"><label class="pd5" for="radio1">有</span></span>\n      <span class="pdl100"><input class="radio-default" type="radio" id="radio2" name="id_radio" value="0"><label class="pd5" for="radio2">没有</span></span>\n      \n      <span class="float-r dt_col3 pd20" style="width:10px;">年</span>\n      <input class="float-r h35 dt_col2 vv" name="vvn" size="30"/>\n      <span class="float-r dt_col1 pd10"><span class="start">*</span>限制时长</span>\n    </div>\n  </div>        \n  <div class="line"></div>\n</div>', 
        null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (31, 7, 802001, 801000, null, to_date('21-12-2016 12:51:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 12:10:17', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (67, 43, 802001, 801000, null, to_date('24-12-2016 14:06:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 14:06:40', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '330000', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (56, 37, 802001, 801000, null, to_date('23-12-2016 10:36:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 10:36:59', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f10  text-c h100 btn-focus center">\n  <img class="pd60 img50" src="../doc/images/HC/face_c1_m.png"/><br>\n  <span class="pdl10 black">Kate<span class="grey">(Burberry|HRD)</span></span>\n  <div class="h15"></div>\n</div>\n<div class="bg-white text-c" style="">\n  <ul style="height:80px;" class="center">\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_emai.png"/><span class="pdl10">xxxxxx@xxxx.com</span></li>\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_phone.png"/><span class="pdl10">400-39999999229</span></li>\n  </ul>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (7, 20, 802001, 801000, null, to_date('14-12-2016 20:54:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 15:02:28', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<span class="pdr10">\n  <select class="bg-light-grey stStatus_">\n       <option value="240090">所有已入库</option>\n       <option value="">全部</option>\n       <DATAPARAM id="240" type="select"><option value="%s">%s</option></DATAPARAM>\n  </select>\n</span>\n<span class="pd10"><input type="text" class="keyword_" placeholder="搜索"></span>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (46, 6, 802001, 801000, null, to_date('22-12-2016 11:22:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 15:32:38', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<span class="pdr20">\n  <select class="status_ bg-light-grey">\n       <option value="">所有阶段</option>\n       <DATAPARAM id="244" type="select"><option value="%s">%s</option></DATAPARAM>\n  </select>\n</span>\n<span class="pdr20">\n  <select class="bg-light-grey job_" >\n       <option value="">所有候选人职位</option>\n       <DATATABLE id="108" type="select" limit="c2=AUID"><option value="%s">%s</option></DATATABLE>\n  </select>\n</span>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (32, 16, 802001, 801000, null, to_date('21-12-2016 13:10:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 13:10:57', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<table class="full-width bg-white" cellpadding="20">\n  <tr class="bold pdall10">\n  <th>开票日期</th><th>职位</th><th>候选人姓名</th><th>招聘服务费</th><th>费用状态</th><th>服务顾问</th>\n  </tr>\n  <tr>\n    <td class="pdall10">2016/02/11</td>\n    <td class="pdall10">品牌经理</td>\n    <td class="pdall10">李夏荣</td>\n    <td class="pdall10">10 万</td>\n    <td class="pdall10">未付款</td>\n    <td class="pdall10">Elsy</td>\n  </tr>\n</table>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (36, 15, 802001, 801000, null, to_date('21-12-2016 13:25:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 13:25:58', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<table class="bg-white" width="390"><tr>\n<td class="pdall30 text-c" id="sendList">\n<div class="title">修改密码</div>\n<div class="h40"></div>\n<div class="pdl5">\n  <label class="labelName pd10">旧密码</label><input type="text" size=35>\n</div>\n<div class="h20"></div>\n<div class="pdl5">\n  <label class="labelName pd10">新密码</label><input type="text" size=35>\n</div>\n<div class="h20"></div>\n<div class="pdr10">\n  <label class="pdr10 labelName">确认新密码</label><input type="password" size=35>\n</div>\n<div class="h40"></div> \n<div class="">\n  <button class="btn-focus savePassword pd50 f14 h35">完  成</button>\n</div>\n</td>\n</tr></table>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (50, 33, 802001, 801000, null, to_date('23-12-2016 10:10:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:57:11', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h15"></div>\n<div class="text-c">\n  <span class="f18 pdall10 color-focus">确定要结束流程？</span>\n</div>\n\n<div class="h15"></div>\n<div class="pdl40 bg-white" style="">\n      <span class="red">*</span><span>请输入结束原因：</span>\n      <input class="h100 pdal20 notnull vv"type="text"style="width: 310px;">\n</div>\n    \n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330444', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (78, 39, 802001, 801000, null, to_date('25-12-2016 15:03:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:01:40', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">面试变更</div>\n<div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl30 pdr10">面试者:</span>\n    <span>李大志</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20 pdr10">面试职位:</span>\n    <span>产品经理</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <input class="datepicker notnull vv" size="30">\n  </div>\n  <div class="dt10">\n    <span class="pdl20">备选时间：</span>\n    <input class="datepicker notnull vv" size="30">\n  </div>    \n  <div class="dt10">\n    <span class="pdl20 top">面试地点：</span>\n    <div class="pdr30 float-r" style="width: 205px;">上海市黄浦区马当路388号(SOHO复兴广场)E栋3楼</div>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330022', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (70, 6, 802001, 801000, null, to_date('24-12-2016 23:00:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 12:28:19', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-BOX', 3, null, null, '<div id="box-<INDEX>" class="dt10 bg-light-red pd50 gone">\n  <div class="clearfix grey f9">\n    <div class="float-l grey2 processbar">\n      <div class="h20 process-end"><br></div>\n      <div>入职确认</div>\n      <div class="f7">当前</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">接受Offer</div>\n      <div class="f7">2016.12.12</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">获得Offer</div>\n      <div class="f7">2016.12.11</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">一面 通过</div>\n      <div class="f7">2016.11.28</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">安排 一面</div>\n      <div class="f7">2016.11.23</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">同意面试</div>\n      <div class="f7">2016.11.20</div>\n    </div>\n    <div class="float-l processbar-last">\n      <div class="h20"><br></div>\n      <div class="process-info">邀请面试</div>\n      <div class="f7">2016.11.16</div>\n    </div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (5, 2, 802001, 801000, null, to_date('14-12-2016 20:54:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-12-2016 05:43:18', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (6, 20, 802001, 801000, null, to_date('14-12-2016 14:22:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:21:37', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="pdall15 bg-white clearfix box-link dataline_" data="%s">\n  <div class="float-l pd20 text-c nowrap">\n    <div><img class="middle" src="../doc/images/HC/face_c%s_m.png"></div>\n    <div><img class="middle" src="../doc/images/HC/status_%s_txt.png"></div>\n  </div>\n  <div class="float-l">\n      <div>\n        <a class="pdr5 f14 sp2 bold pointer detail_">%s</a>\n        <span class="pdr15 f14">（%s | %s）</span>\n        <span class="pdl40"><img src="../doc/images/HC/location.png"> %s</span>          \n      </div>\n      <div class="h10"></div>\n      <div class="f12 grey">\n          <span class="pdr15">%s</span>\n          <span class="pd15">%s岁</span>\n          <span class="pd15">%s</span>\n          <span class="pd15">%s年工作经验</span>\n          <span class="pd15">%sK</span>\n      </div>\n  </div>\n  <div class="float-r text-r">\n      <div class="f9 light-grey">#%s</div>\n      <div class="h15"></div>\n      <div class="f12 grey">\n        <button class="btn-transparent2 pd20 h30 mgl5 %s">%s</button>\n        <button class="btn-default pd20 h30 mgl5 %s">%s</button>\n        <span class="%s">\n          <span>%s <img src="../doc/images/HC/process.png"></span>\n          <span class="pd5 f8">|</span>\n          <span>%s <img src="../doc/images/HC/gz.png"></span>\n        </span>\n      </div>\n  </div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (4, 2, 802001, 801000, null, to_date('14-12-2016 14:22:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 12:26:42', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div id="" class="clearfix bg-white box-link dataline_" data=%s>\n  <div class="float-l pd10">\n    <div class="dt10">\n      <span class="pdl20 f18 pointer detail_">%s</span>\n      <span class="grey f12">\n      <span class="pdl30 pdr30">%s</span>\n      <span class="pdr30">%s岁</span>\n      <span class="pdr30">%s年工作经验</span>\n      <span class="pdr30">%s</span>\n      <span class="pdl30"><img src="../doc/images/HR/location.png">%s</span>\n    </div>\n    <div class="h3"></div> \n    <div class="float-l f12">\n      <EDUCATION><span class="grey pdr30">%s<span class="grey f12 pd5">|</span>%s</span></EDUCATION>\n      <JOB><span>%s<span class="grey f12 pd5">|</span><span class="grey pdr15">%s</span></span></JOB>\n    </div>\n  </div>\n  <div class="float-r pdall10">\n    <div class="h20 pd10 dt10 grey HR_addIV_">#%s</div>\n    <div class="h20 pd10 grey HR_addIV_">%s</div>\n  </div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (72, 21, 802001, 801000, null, to_date('24-12-2016 23:01:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 12:27:54', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB-BOX', 4, null, null, '<div id="box-<INDEX>" class="dt10 bg-light-red pd50 gone">\n  <div class="clearfix grey f9">\n    <div class="float-l grey2 processbar">\n      <div class="h20 process-end"><br></div>\n      <div>入职确认</div>\n      <div class="f7">当前</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">接受Offer</div>\n      <div class="f7">2016.12.12</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">获得Offer</div>\n      <div class="f7">2016.12.11</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">一面 通过</div>\n      <div class="f7">2016.11.28</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">安排 一面</div>\n      <div class="f7">2016.11.23</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">同意面试</div>\n      <div class="f7">2016.11.20</div>\n    </div>\n    <div class="float-l processbar-last">\n      <div class="h20"><br></div>\n      <div class="process-info">邀请面试</div>\n      <div class="f7">2016.11.16</div>\n    </div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (94, 59, 802001, 801000, null, to_date('31-12-2016 10:57:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 21:34:10', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 7, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (30, 4, 802001, 801000, null, to_date('21-12-2016 12:05:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 16:03:05', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, 
        '<div>\n  <span class="dt_left"><span class="red">*</span><span>职位名称</span></span>\n  <input class="dt_right notnull vv" type="text">\n</div>\n \n<div class="h10"></div>           \n<div>\n  <span class="dt_left"><span class="red">*</span><span>所在行业</span></span>\n  <input class="dt_right notnull vv" type="text">\n</div>\n  \n<div class="h10"></div>              \n<div>\n  <span class="dt_left"><span class="red"></span><span>所在部门</span></span>\n  <input class="dt_right vv" type="text">\n</div>\n  \n<div class="h10"></div>               \n<div>\n  <span class="dt_left"><span class="red">*</span><span>工作经验</span></span>\n  <select class="dt_right notnull vv">\n    <option value="">默认为公司部门</option>\n    <DATAPARAM id="223" type="select"><option value="%s">%s</option></DATAPARAM>  \n  </select>\n</div> \n   \n<div class="h10"></div>       \n<div style="margin-bottom: 10px;" >\n  <span class="dt_left"><span class="red">*</span><span>学历要求</span></span>        \n  <select class="dt_right notnull vv">\n     <option></option>\n     <DATAPARAM id="224" type="select"><option value="%s">%s</option></DATAPARAM>  \n  </select>\n</div>\n<div>\n  <span class="dt_left"><span class="red">*</span><span>薪资范围</span><input type="hidden" id="xinzi" class="vv"></span>                  \n  <input type="text" class="h20 mgnl10 notnull vv xinzi_" id="xinzi1" size="12">\n  <span>------</span>\n  <input type="text" class="h20 notnull vv xinzi_" id="xinzi2" size="12">\n  <span  class="pdl20 mgl10">k/月</span>\n</div>\n<div class="h10"></div>  \n    \n<div class="top">\n  <span class="dt_left top"><span class="red"></span><span>职位诱惑</span></span><textarea type="text" value="" class="dt_right h20 vv"></textarea> \n</div>\n<div class="h10"></div>\n<div class="top">\n  <span class="dt_left top"><span class="red">*</span><span>职位描述</span></span><textarea type="text" value="" class="dt_right h50 notnull vv"></textarea>\n</div>\n<div class="h10"></div>\n<div class="top">\n  <span class="dt_left top"><span class="red"></span><span>职位要求</span></span><textarea type="text" value="" class="dt_right h50 notnull vv"></textarea>\n</div>\n<div class="h10"></div>\n<div class="top"> \n  <span class="dt_left top"><span class="red"></span><span class="top">工作地点</span></span>\n  <span class="dt_right">xxxxx(默认为公司地址)</span>\n</div>\n<div class="h10"></div>\n<div class="color-focus"  style="margin: 10px;margin-left: 100px;">其他工作地址</div>\n<div class="" style="margin-left: 100px;">\n  <input type="checkbox" value="1" id="checkbox1" onclick="$(''#v1'').val(this.checked?1:0);">\n  <input class="vv" type="hidden" id="v1" value="0">\n  <span class="">需要英文简历</span>\n</div>', 
        null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (66, 9, 802001, 801000, null, to_date('23-12-2016 20:40:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 16:14:50', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 3, null, null, '<div class="added-event" data-date="%s" data-time="%s" data-title="%s" data-detail="%s"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (89, 59, 802001, 801000, null, to_date('30-12-2016 13:38:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-01-2017 09:28:14', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 2, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n   <span class="dt_col1"><span class="start">*</span>职位</span>\n   <span class="dt_col2"><input class="h35 full-width vv" name="vvn" /></span>\n   <span class="dt_col1">职级</span>\n   <span class="dt_col2"><input class="h35 full-width vv" name="vvn" /></span>\n  </div>\n  <div class="dt10">\n   <span class="dt_col1"><span class="start">*</span>行业</span>\n   <span class="dt_col2"><input class="h35 full-width vv" name="vvn" /></span>\n   <span class="dt_col1"><span class="start">*</span>城市</span>\n   <span class="dt_col2"><input class="h35 full-width vv" name="vvn" /></span>\n  </div>\n  <div class="dt10">\n   <span class="dt_col1"><span class="start">*</span>期望薪资</span>\n   <span class="dt_col2"><input class="h35 full-width vv" name="vvn" /></span>\n   <span class="h35 dt_col3">万</span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (69, 45, 802001, 801000, null, to_date('24-12-2016 15:19:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 17:30:33', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (28, 19, 802001, 801000, null, to_date('19-12-2016 22:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:14:40', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-基本信息', 1, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left">姓名</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span><span class="dt_left">英文名</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n  </div>\n  <div class="h10"></div>\n  <div>\n  <span class="dt_left">性别</span><input type="hidden" class="vv" name="vvn" id="v_radioValue"><span class="dt_right">\n   <DATAPARAM id="132" type="RADIO">\n   <span class="pdl10">\n     <input class="radio-default" type="radio" id="radio%s" name="sex" value="%s">\n     <label class="pdl5" for="radio%s">%s</label>\n   </span>\n   </DATAPARAM>\n   </span><span class="dt_left">户籍所在地</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n  </div>\n  <div class="h10"></div>\n  <div class="dt10">\n  <span class="dt_left">出生日期</span><span class="dt_right dateview"><input class="h30 full-width datepicker vv" name="vvn"></span><span class="dt_left">个人邮箱</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n  </div>\n  <div class="h10"></div>\n  <div class="dt10">\n    <span class="dt_left">手机</span><span class="dt_right"><input class="vv notnull" value="+86" size="8"/><input class="vv notnull mgl10 pd10" id="phone" maxlength="11" size="30"/></span>\n    <span class="dt_left">国籍</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n    <span class="pdl20"></span><span class=""><span class="text-c f12 color-error top pdl100 gone"  id="checkcandidate">该候选人已入库，不能重复入库</span></span>\n  </div>\n  <div>\n    <span class="dt_left">居住城市</span><span class="dt_right"><select class="h30 vv" name="vvn"><option>上海市</option><option>北京市</option></select><select class="h30 vv" name="vvn"><option>上海市</option><option>北京市</option></select></span>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (75, 41, 802001, 801000, null, to_date('25-12-2016 14:31:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 14:31:53', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">面试详情</div>\n<div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl30 pdr10">面试者:</span>\n    <span>李大志</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20 pdr10">面试职位:</span>\n    <span>产品经理</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <span>11月23日(本周二)14:30</span>\n  </div> \n  <div class="dt10">\n    <span class="pdl20 top">面试地点：</span>\n    <div class="pdr30 float-r" style="width: 205px;">上海市黄浦区马当路388号(SOHO复兴广场)E栋3楼</div>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div> ', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (76, 47, 802001, 801000, null, to_date('25-12-2016 14:47:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 14:47:25', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h15"></div>\n<div class="text-c pdall10">\n  <span class="f18 pdall10 color-focus"><span>申请成功!</span></span>\n</div>\n\n<div class="h15"></div>\n<div class="pdl50 bg-white" style="">\n  <span class="pdl50 grey">我们会在XX小时内审核完毕,敬请留意。</span>\n</div>\n    \n<div class="h30 center pdall20">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (3, 18, 802001, 801000, null, to_date('13-12-2016 07:31:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:36:58', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, 
        '<div class="title text-l">新增候选人</div>\n<div class="pdall10"><span class="pdl5 bg-focus"></span><span class="bold pd10 f14">候选人类型<input class="vv" type="hidden" id="v1" value="1"></span></div>\n<div class="pdl15">\n    <div class="pdall5"><input class="radio-focus" type="radio" id="radio1" name="radio_" value="1" checked onclick="$(''#v1'').val(this.value);$(''.submit_'').text(''申请入库'');">\n         <label class="pd5" for="radio1">申请入库（须符合入库基本条件）</label></div>\n    <div class="pdall5"><input class="radio-focus" type="radio" id="radio2" name="radio_" value="0" onclick="$(''#v1'').val(this.value);$(''.submit_'').text(''保存'');">\n         <label class="pd5" for="radio2">暂不入库（自行录入简历，后续也可申请入库）</label></div>\n</div>\n<div class="h10"></div>\n\n<div class="pdall10"><span class="pdl5 bg-focus"></span><span class="bold pd10 f14">基本信息</span></div>\n\n<div class="" border="0">\n  <div>\n    <span class="dt_left pd10">姓名</span><span class="dt_right pd10"><input class="full-width notnull vv"></span>\n    <span class="dt_left pd10">职位</span><span class="dt_right pd10"><input class="full-width notnull vv"></span>\n  </div>\n  <div>\n    <div class="h15"></div>\n  </div><div>\n    <span class="dt_left pd10">出生日期</span><span class="dt_right pd10"><input class="datepicker full-width notnull vv"></span>\n    <span class="dt_left pd10">最高学历</span><span class="dt_right pd10"><select class="full-width notnull vv"><option></option>\n    <DATAPARAM id="133" type="select"><option value="%s">%s</option></DATAPARAM></select></span>\n  </div><div>\n    <div class="h15"></div>\n  </div><div>\n    <span class="dt_left pd10">手机</span><span class="dt_right pd10"><input class="vv notnull" value="+86" size="8"/><input class="vv notnull mgl10 pd10" id="phone" maxlength="11" size="28"/></span>\n    <span class="dt_left pdall10">行业</span><span class="dt_right pd10"><input class="full-width notnull vv"></span><br>\n    <span class="pdl20"></span><span class=""><span class="text-c f12 color-error top pdl100 gone"  id="checkcandidate">该候选人已入库，不能重复入库</span></span>\n  </div>\n  <div>\n    <span class="dt_left pdall10">公司</span><span class="dt_right pd10"><input class="full-width notnull vv"></span>\n    <span class="dt_left pdall10">基本年薪</span><span class="dt_right pd10"><input class="full-width notnull vv"></span>\n  </div>\n</div>\n  \n<div class="h15"></div>\n<div>\n  <span class="text-r pdall10 h30 f14 bold">原始简历<input class="vv" type=hidden id="v10"></span>\n  <span colspan="6">\n  <a class="color-focus uploadFile_" href="javascript:void(-1)"> + 上传简历 <span id="file" class="pd10 grey"></span></a>\n  <br/><span id="fileUrl"></span>\n  <input id="uploadfile" name="file_selectcv" type="file" style="display: none"/></span>\n</div>\n  <!--div>\n    <span class="text-r pdall10 top bold">上传头像</span>\n    <span colspan="6"><a class="color-focus uploadFace_" href="javascript:void(-1)"><img class="face" id="pic" src="" > + 选择图片</a>\n        <input id="uploadpic" name="file_selectface" type="file" style="display: none"/></span>\n  </div-->\n<div class="center">\n  <span class="text-c pdall20" colspan="8">\n    <button class="btn-focus pd50 h40 submit_">申请入库</button>\n  </span>\n</div>', 
        null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (68, 44, 802001, 801000, null, to_date('24-12-2016 14:14:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:08:03', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">面试反馈</div>\n<div class="h10"></div>\n\n<div class="h15"></div>\n<div class="pdl20 bg-white center" style="">\n    <span class="">反馈结果:</span>\n        <span class="pdl10"><input class="radio-default  proinfo_" type="radio" id="radio1" name="proinfo" checked value="1"><label class="pdl5" for="radio1">进入下一轮面试</label></span>\n        <span class="pdl20"><input class="radio-default  proinfo_" type="radio" id="radio2" name="proinfo" value="2"><label class="pdl5" for="radio2">offer</label></span>\n        <span class="pdl20"><input class="radio-default  proinfo_" type="radio" id="radio3" name="proinfo" value="3"><label class="pdl5" for="radio3">面试未通过</label></span>\n\n  <div class="dt10  proinfo_ext_ gone" id="proinfo3">\n    <span class="top">未通过原因：</span>\n    <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n  </div>\n</div>\n    \n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (81, 49, 802001, 801000, null, to_date('25-12-2016 15:22:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:22:07', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f10 pdall10 text-c h100 bg-focus center">\n  <img class="pd60 img50" src="../doc/images/HC/face_c1_m.png"/><br>\n  <span class="pdl10 black">Kate</span><span class="">(Burberry|HRD)</span>\n    <div class="f12 pdall5">\n      <span class="pdr5">男</span>\n      <span class="pdr5">27岁</span>\n      <span class="pdr5">本科</span>\n      <span class="pdr5">3年工作经验</span>\n      <span class="pdr5">30K</span>\n    </div> \n  <div class="h15"></div>\n</div>\n\n<div class="bg-white text-c" style="">\n  <ul style="height:80px;" class="center">\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_emai.png"/><span class="pdl10">xxxxxx@xxxx.com</span></li>\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_phone.png"/><span class="pdl10">400-39999999229</span></li>\n  </ul>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (79, 46, 802001, 801000, null, to_date('25-12-2016 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h15"></div>\n<div class="text-c pdall10">\n  <span class="f18 pdall10 color-focus">抱歉,<span class="pdl10">您的申请未能通过!</span></span>\n</div>\n\n<div class="h15"></div>\n<div class="pdl50 bg-white">\n  <span class="pdl50 grey">原因:<span class="pdl5">候选人</span><span class="black pdl5 pdr5">年薪</span>未能达到标准<span class="black pdl5 pdr5">30W</span></span>\n</div>\n    \n<div class="h30 center pdall20">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (80, 40, 802001, 801000, null, to_date('25-12-2016 15:21:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 15:23:54', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f10  text-c h100 btn-focus center">\n  <img class="pd60 img50" src="../doc/images/HC/face_c1_m.png"/><br>\n  <span class="pdl10 black">Kate<span class="grey">(Burberry|HRD)</span></span>\n  <div class="h15"></div>\n</div>\n<div class="bg-white text-c" style="">\n  <ul style="height:80px;" class="center">\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_emai.png"/><span class="pdl10">xxxxxx@xxxx.com</span></li>\n  <li  class="f10 pdall10 grey"><img class="img12" src="../doc/images/HR/gw_phone.png"/><span class="pdl10">400-39999999229</span></li>\n  </ul>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (74, 35, 802001, 801000, null, to_date('25-12-2016 14:25:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:47:07', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">顾问面试</div><div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <input class="datepicker notnull vv" size="30">\n    <span class="pdl10 nowrap"><input class="checkbox" type="checkbox" id="checkbox1"><label class="pdl3" for="checkbox1">提醒</label></span>\n  </div>\n  <div class="dt10">\n' || chr(9) || '  <span class="pdl20 top">面试地点：</span>\n' || chr(9) || '  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '220003', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (55, 36, 802001, 801000, null, to_date('23-12-2016 10:34:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:49:10', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">安排面试</div>\n<div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <input class="datepicker notnull vv" size="30">\n    <span class="pdl10 nowrap"><input class="checkbox" type="checkbox" id="checkbox1"><label class="pdl3" for="checkbox1">提醒</label></span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20 top">面试地点：</span>\n    <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330002', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (71, 21, 802001, 801000, null, to_date('24-12-2016 23:01:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 17:46:13', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB', 3, null, null, '<div class="pdall15 bg-light-grey dataline_" data="%s" data1="%s">\n  <span class="pdl20"><img class="img20" src="../doc/images/HC/status_%s.png"></span>\n  <span class="pdl10 bold sp2">%s</span>\n  <span class="pdl10 bold"><img class="img20" src="../doc/images/HC/face_hr_s.png">%s</span>\n  <span class="float-r">\n    <span class="pd5 %s"><a class="grey-link">%s</a></span>\n    <span class="pd5 %s"><a class="grey-link">%s</a></span>\n    <button class="btn-default h30 pd10 %s">%s</button>\n    <span class="btn-slide mgl10" id="li-<INDEX>"><img class="arrow middle" src="../doc/images/arrow.png"></span>\n   </span>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (106, 23, 802001, 801000, null, to_date('06-01-2017 10:57:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:03:08', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB', 3, null, null, '<div class="bg-white clearfix dt5 dataline_" data="%s" data1="%s">\n  <div class="float-l">\n    <span class="pdl20"><img class="img20" src="../doc/images/HC/status_%s.png"></span>\n    <span class="pdl10 bold">%s</span>\n    <span class="pd20 gray">%s</span>\n  </div>\n  <div class="float-r">\n    <span class="pd5 %s"><a class="grey-link">%s</a></span>\n    <span class="pd5 %s"><a class="grey-link">%s</a></span>\n    <span class="pd10 %s"><a class="grey-link">%s</a></span>\n    <span class="btn-slide mgl10" id="li-<INDEX>"><img class="arrow middle" src="../doc/images/arrow.png"></span>\n  </div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (102, 22, 802001, 801000, null, to_date('06-01-2017 10:55:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:19:41', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB', 3, null, null, '<div class="bg-white clearfix dt10 dataline_" data="%s" data1="%s">\n  <div class="float-l pdr100">\n    <span class="pdl20"><img class="middle" src="../doc/images/HC/status_%s.png"></span>\n    <span class="pdl10">%s</span>\n    <span class="pd10">|</span>\n    <span class="pd10">%s</span>\n  </div>\n  <div class="float-l pdl100 %s">\n    <span class="pdl40"><img class="middle" src="../doc/images/HC/cp_zw.png"></span>\n    <span class="pdl10 bold">%s</span>\n  </div>\n  <div class="float-r">\n    <span class="pd20 grey">%s</span>\n  </div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (104, 23, 802001, 801000, null, to_date('06-01-2017 10:57:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:38:37', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="h10"></div>\n<div class="bg-white box-link pointer dataline_" data="%s" data1="%s">\n  <div class="f9 text-c pdall10 float-l" width="80">\n    <img class="img20 %s" style="margin-top: -50px;" src="../doc/images/HC/marker_good.png">\n    <img class="img50" src="../doc/images/HC/face_c%s_m.png">\n  </div>\n  <div class="pdall15 float-l">\n      <div class="f14">\n          <span class="pdr5 bold f19 detail_">%s</span>\n          <span class="pdr10 f11">（%s | %s）</span>\n          <span class="pdl40 f11 grey"><img src="../doc/images/HC/location.png">%s</span>\n      </div>\n      <div class="h10"></div>\n      <div class="f12 light-blue">\n          <span class="pdr15">%s</span>\n          <span class="pd15">%s岁</span>\n          <span class="pd15">%s</span>\n          <span class="pd15">%s年工作经验</span>\n          <span class="pd15">%sK</span>\n      </div>\n  </div>\n  <div class="pdall10 f8 text-r">\n      <div class="light-grey">#%s</div>\n      <div class="h15"></div>\n      <div class="grey">\n        <span class="dt10">%s<img class="" src="../doc/images/HC/cp_zw.png"></span>\n        <span class="pd5 f8">|</span>\n        <span>%s<img class="" src="../doc/images/HC/gz.png"></span>\n      </div>\n  </div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (9, 21, 802001, 801000, null, to_date('16-12-2016 05:34:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:39:21', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="h10"></div>\n<div class="bg-white box-link dataline_" data="%s" data1="%s">\n  <div class="f9 text-c pdall10 float-l" width="80">\n    <img class="img20 %s" style="margin-top: -50px;" src="../doc/images/HC/marker_good.png">\n    <img class="img50" src="../doc/images/HC/face_c%s_m.png">\n  </div>\n  <div class="pdall15 float-l">\n      <div class="f14">\n          <span class="pdr5 bold f19 pointer detail_">%s</span>\n          <span class="pdr10 f11">（%s | %s）</span>\n          <span class="pdl40 f11 grey"><img src="../doc/images/HC/location.png">%s</span>\n      </div>\n      <div class="h10"></div>\n      <div class="f12 light-blue">\n          <span class="pdr15">%s</span>\n          <span class="pd15">%s岁</span>\n          <span class="pd15">%s</span>\n          <span class="pd15">%s年工作经验</span>\n          <span class="pd15">%sK</span>\n      </div>\n  </div>\n  <div class="pdall10 f8 text-r">\n      <div class="light-grey">#%s</div>\n      <div class="h15"></div>\n      <div class="grey">\n        <span class="dt10">%s<img class="" src="../doc/images/HC/cp_zw.png"></span>\n        <span class="pd5 f8">|</span>\n        <span>%s<img class="" src="../doc/images/HC/gz.png"></span>\n      </div>\n  </div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (92, 59, 802001, 801000, null, to_date('30-12-2016 13:43:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 14:56:29', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 5, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_col1 top"><span class="red top">*</span>职业技能</span><span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_col1 top"><span class="red top">*</span>团队管理技能</span><span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_col1 top"><span class="red top">*</span>软件技能</span><span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (57, 38, 802001, 801000, null, to_date('23-12-2016 10:39:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 16:52:13', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">安排面试</div>\n<div class="h10"></div>\n<div class="pdall10 bg-white center">\n  <div class="dt10">\n    <span class="pdl30 pdr10">面试者:</span>\n    <span>李大志</span>\n  </div>\n  <div class="dt10">\n    <span class="pdl20 pdr10">面试职位:</span>\n    <input class="notnull vv" id="" size="30">\n  </div>\n  <div class="dt10">\n    <span class="pdl20">面试时间：</span>\n    <input class="datepicker notnull vv" size="30">\n  </div>\n  <div class="dt10">\n    <span class="pdl20">备选时间：</span>\n    <input class="datepicker notnull vv" size="30">\n  </div>    \n  <div class="dt10">\n    <span class="pdl20 top">面试地点：</span>\n    <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n  </div>\n</div>\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330002', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (93, 59, 802001, 801000, null, to_date('31-12-2016 10:47:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 14:56:38', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 6, null, null, 
        '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10"><span class="pdl5 bg-focus"></span><span class="bold pd10 f14">工作总结</span></div>\n  <div class="dt10">\n    <span class="dt_col1"><span class="start">*</span>行业经验</span><span class="dt_col2"><input class="h35 full-width vv" name="vvn" /></span><span class="h35 dt_col3">年</span>\n    <span class="dt_col1"><span class="start">*</span>管理经验</span><span class="dt_col2"><input class="h35 full-width vv" name="vvn" /></span><span class="h30 dt_col3">年</span>\n  </div>\n  <div class="dt10">\n    <span class="dt_col1 top"><span class="red top">*</span>管辖区域范围</span><span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n  \n  <div class="h30"></div>                \n  \n  <div class="dt10"><span class="pdl5 bg-focus"></span><span class="bold pd10 f14">整体印象</span></div>\n  <div class="dt10">\n    <span class="dt_col1"><span class="start">*</span>婚姻状况</span>\n    <span class="dt_col2"><select class="h35 full-width vv" name="vvn"><option></option></select></span>\n    <span class="dt_col1"><span class="start">*</span>性格</span>\n    <span class="dt_col2"><select class="h35 full-width vv" name="vvn"><option></option></select></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_col1"><span class="start">*</span>沟通水平</span>\n    <span class="dt_col2"><select class="h35 full-width vv" name="vvn"><option></option></select></span>\n  </div>\n  <div class="h10"></div>\n  <div class="dt_col1 f14 dt10 bold">语言水平</div><input type="hidden" class="vv" name="vvn" id="v_language"/>\n  <div class="dt10 pdl100">\n    <span class="languageView_">\n      <span for="dt_col1"><span class="start">*</span><input class="no-border languageName_" value="中文" readonly size="5"/></span>\n      <span class="dt_col2"><select class="languageSelect_ full-width" id="language"><option>3222</option><option>43344</option></select></span>\n    </span>\n    <span class="languageView_">\n      <span class="dt_col1"><span class="start">*</span><input class="no-border languageName_" value="英语" readonly size="5"/></span>\n      <span class="dt_col2"><select class="languageSelect_ full-width" id="language"><option>3级</option><option>4级</option></select></span>\n    </span>\n  </div>\n  <div>\n    <span class="dt_col1"></span><span class="color-focus text-l">+新的语种</span>\n  </div>\n  <div class="dt20">\n    <span class="dt_col1 top"><span class="red pd5">*</span>缺点/疑惑</span>\n    <span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n  <div class="dt10"><span class="pdl5 bg-focus"></span><span class="bold pd10 f14">备注</span></div>\n  <div class="dt10">\n    <span class="dt_col1 top"></span>\n    <span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n</div>', 
        null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (96, 52, 802001, 801000, null, to_date('02-01-2017 16:55:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:55:22', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '331004', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (100, 22, 802001, 801000, null, to_date('06-01-2017 10:55:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:39:44', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="h10"></div>\n<div class="bg-white box-link pointer" data="%s" data1="%s">\n  <div class="f9 text-c pdall10 float-l" width="80">\n    <img class="img20 %s" style="margin-top: -50px;" src="../doc/images/HC/marker_good.png">\n    <img class="img50" src="../doc/images/HC/face_c%s_m.png">\n  </div>\n  <div class="pdall15 float-l">\n      <div class="f14">\n          <span class="pdr5 bold f19 detail_">%s</span>\n          <span class="pdr10 f11">（%s | %s）</span>\n          <span class="pdl40 f11 grey"><img src="../doc/images/HC/location.png">%s</span>\n      </div>\n      <div class="h10"></div>\n      <div class="f12 light-blue">\n          <span class="pdr15">%s</span>\n          <span class="pd15">%s岁</span>\n          <span class="pd15">%s</span>\n          <span class="pd15">%s年工作经验</span>\n          <span class="pd15">%sK</span>\n      </div>\n  </div>\n  <div class="pdall10 f8 text-r">\n      <div class="light-grey">#%s</div>\n      <div class="h15"></div>\n      <div class="grey">\n        <span class="dt10">%s<img class="" src="../doc/images/HC/cp_zw.png"></span>\n        <span class="pd5 f8">|</span>\n        <span>%s<img class="" src="../doc/images/HC/gz.png"></span>\n      </div>\n  </div>\n</div>\n<div class="line"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (97, 51, 802001, 801000, null, to_date('02-01-2017 17:17:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 17:17:18', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '331002', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (95, 50, 802001, 801000, null, to_date('02-01-2017 16:54:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:54:49', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, null, '331001', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (37, 12, 802001, 801000, null, to_date('21-12-2016 13:37:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 15:50:03', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, 
        '<div class="title color-focus f18 center dt20">公司信息</div>\n<div class="center">\n  <span style="text-align: right;margin-right: 20px;">\n  <a class="uploadPic1_"><img id="pic1" width="100" height="100" src="../doc/images/HR/upload_pic.png" ></a>\n  <input id="uploadpic1" name="上传公司logo" type="file" style="display: none"/>\n  <input type="hidden" class="vv" id="v_pic1">\n  <span style="text-align: right;margin-left: 60px;">\n  <a class="uploadPic2_"><img id="pic2" width="100" height="100" src="../doc/images/HR/upload_pic.png" ></a>\n  <input id="uploadpic2" name="上传营业执照" type="file" style="display: none"/>\n  <input type="hidden" class="vv" id="v_pic2">\n  </span>\n</div>\n\n<div class="pdall20 f12 text-c grey">仅支持.JPG.PNG格式文件（文件大小需要小于3M)</div>\n<div class="dt10">\n <span class="grey3 dt_left">公司全称</span>\n <span class="dt_right"><input class="vv notnull full-width" type="text"></span>\n</div>\n<div class="dt10">\n  <span class="grey3 dt_left">公司简称</span>\n  <span class="dt_right"><input class="full-width vv notnull" type="text"></span>\n</div>\n  \n<div class="dt10">\n  <span class="dt_left">公司性质</span>\n  <span class="dt_right">\n    <select class="full-width vv notnull">\n    <option value="">公司性质</option>\n    <DATAPARAM id="220" type="select"><option value="%s">%s</option></DATAPARAM> \n    </select>\n   </span>\n </div>\n    \n<div class="dt10">\n<span class="dt_left">公司规模</span>\n<span class="dt_right">\n <select class="full-width vv notnull">\n    <option value="">公司规模</option>\n    <DATAPARAM id="222" type="select"><option value="%s">%s</option></DATAPARAM> \n  </select>\n</span>\n</div>\n \n<div class="dt10">\n   <span class="dt_left">所属行业</span> \n    <span class="dt_right">\n      <select class="selOut vv notnull full-width">\n       <option value="">所属行业</option>\n       <DATAPARAM id="1001" type="selectPage"><option value="%s">%s</option></DATAPARAM>  \n      </select>\n   </span>\n</div>\n\n<div class="dt10">\n   <span class="dt_left">成立时间</span>\n   <input class="dt_right datepicker notnull vv">\n</div>\n\n<div class="dt10">\n  <span class="dt_left">公司地点</span>\n  <span class="dt_right">         \n    <select class="full-width selOut vv notnull">\n      <option value="">公司地点</option>\n      <DATAPARAM id="201" type="selectPage"><option value="%s">%s</option></DATAPARAM>\n    </select>\n  </span>\n</div>\n\n <div class="dt10">\n  <span class="dt_left">详细地址</span>\n  <span class="dt_right"><input class="full-width text vv notnull"placeholder="详细地址"></input></span>\n</div>\n<div class="dt10">\n  <span class="dt_left top">公司介绍</span>\n  <span class="dt_right"><textarea class="full-width vv notnull" placeholder="公司介绍"></textarea></span> \n</div>\n \n <div class="center dt30">\n  <button type="submit" class="btn-focus h30 pd20 next_">下一步</button>\n </div>  ', 
        null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (33, 17, 802001, 801000, null, to_date('21-12-2016 13:14:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 10:59:53', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<table class="full-width bg-white" cellpadding="20">\n  <tr class="bold pdall10">\n  <th>开票日期</th><th>职位</th><th>候选人姓名</th><th>招聘服务费</th><th>费用状态</th><th>服务顾问</th>\n  </tr>\n  <tr class="dataline_ detail_">\n    <td class="pdall10">2016/02/11</td>\n    <td class="pdall10">品牌经理</td>\n    <td class="pdall10">李夏荣</td>\n    <td class="pdall10">10 万</td>\n    <td class="pdall10">未付款</td>\n    <td class="pdall10">Elsy</td>\n  </tr>\n</table>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (11, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 11:21:16', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-属性', 2, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (99, 9, 802001, 801000, null, to_date('04-01-2017 10:17:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:47:09', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 22, null, null, '<div>\n  <div class="pdall15 bg-white clearfix box-link dataline_" data="%s" data1="%s" data2="%s">\n    <div class="float-l pdr10 sp1 text-c nowrap light-grey dt_status">\n      <div><img class="img30" src="../doc/images/HC/status_%s.png"></div>\n      <div class="HC_admin_">%s</div>\n    </div>\n    <div class="float-l pdr15">\n      <img class="pointer HC_candidateInfo_" src="../doc/images/HC/face_c%s_m.png">\n    </div>\n    <div class="float-l">\n      <div>\n        <a class="pdr5 f14 sp2 bold pointer detail_">%s</a>\n        <span class="grey">%s</span>\n        <span class="grey">%s</span>\n        <span class="bold sp1">%s</span>\n      </div>\n      <div class="h15"></div>\n      <div>\n        <span class="bold sp1">%s</span>\n        <span class="light-grey sp1">%s</span>\n      </div>\n    </div>\n    <div class="float-r text-r">\n      <div class="h30">\n        <img class="pointer close_ %s" src="../doc/images/HC/close.png"/>%s\n        <button class="btn-default h25 pd10 %s">%s</button>\n      </div>\n      <div class="h8"></div>\n      <div class="dark-grey">\n        <span class="%s">%s</span>\n        <span class="pdl10 %s"><a class="grey-link pointer">%s<img class="mgl5" src="../doc/images/HC/open.png"/></a></span>\n        <span class="pdl10 %s"><a class="grey-link pointer">%s<img class="mgl5" src="../doc/images/HC/open.png"/></a></span>\n        <span class="pdl10 %s"><a class="grey-link pointer">%s推迟<img class="mgl5" src="../doc/images/HC/open.png"/></a></span>      \n      </div>\n    </div>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (22, 29, 802001, 801000, null, to_date('18-12-2016 09:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:51:24', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人未入职原因</div><div class="h15"></div>\n<div class="bg-white center">\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330143', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (51, 34, 802001, 801000, null, to_date('23-12-2016 10:12:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:13:46', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人入职</div>\n<div class="h15"></div>\n\n<div class="bg-white center">\n  <div>\n    <span class="pdl30">反馈结果:</span><input type="hidden" id="code" value="330007">\n    <span class="pd20"><input class="radio-default" type="radio" id="radio1" name="proinfo" checked value="330007"><label class="pdl5" for="radio1">已入职</label></span>\n    <span class="pdr100"><input class="radio-default" type="radio" id="radio2" name="proinfo" value="330047"><label class="pdl5" for="radio2">未入职</label></span>\n  </div>\n   <div class="dt10  proinfo_ext_ gone pdr10" id="reasonView">\n    <span class="pdl20 top">未入职原因：</span>\n    <textarea class="bg-light-grey notnull vv" id="reason" cols="32"></textarea>\n  </div>\n</div>', '330010', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (85, 19, 802001, 801000, null, to_date('27-12-2016 15:35:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 14:49:09', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-工作经验', 7, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt15">\n    <span class="dt_left">起止时间</span><span class="dt_right datemonthview"><input class="datepicker h30 vv" name="vvn" size="10"><span>-</span><input class="datepicker h30 vv" name="vvn" size="10"><span class="pdl10 nowrap"><input class="checkbox" type="checkbox" id="checkbox1"><label for="checkbox1"> 至今</label></span></span>\n    <span class="dt_left">公司名称</span><span class="dt_right"><input class="full-width vv" name="vvn"></span>\n  </div>\n  <div class="dt15">\n    <span class="dt_left">行业</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n    <span class="dt_left">部门</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n    <span class="gone">多段工作经历<input class="vv" name="vvn" type="hidden" value="0"></span>\n  </div>\n  <div class="">\n    <div class="dt15">\n      <span class="dt_left">职位</span><span class="dt_right"><input class="full-width vv" name="vvn"></span>\n      <span class="dt_left">职级</span><span class="dt_right"><input class="full-width vv" name="vvn"></span>\n    </div>\n    <div>\n      <span class="dt_left top">工作职责</span><textarea class="h60 vv" name="vvn" style="width:730px"></textarea></span>\n    </div>\n  </div>\n  <div class="h30"></div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (35, 14, 802001, 801000, null, to_date('21-12-2016 13:22:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 18:55:33', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="title pointer">账户设置</div>\n<div class="h30"></div>\n<div>\n <label class="dt_left labelName pdr20">姓名</label><input class="vv notnull" name="" type="text" size=35>\n</div>\n<div class="h20"></div>\n<div class="">\n<span class="dt_left">性别</span><input class="vv" id="v_sex" type="hidden">\n <DATAPARAM id="132" type="RADIO">\n <span class="pdl10">\n   <input class="radio-default" type="radio" id="radio%s" name="sex" value="%s">\n   <label class="pdl5" for="radio%s">%s</label>\n </span>\n </DATAPARAM>\n</div>\n<div class="h20"></div>\n<div class="">\n  <span class="dt_left">手机</span>\n <input class="vv notnull grey" readonly type="text" size=35><br>\n  <span class="dt_left"></span><span id="moileMsg"></span>\n</div>\n<div class="h20"></div>       \n<div class="">\n  <span class="dt_left">座机(选填)</span><input class="vv notnull" id="phone" type="text" size=35><br>\n  <span class="dt_left"></span><span id="phoneMsg"></span>\n</div>\n<div class="h20"></div>\n<div class="">\n <span class="dt_left">公司邮箱</span><input class="vv notnull" type="text" size=35>\n</div>\n<div class="h20"></div>         \n<div class="">\n <span class="dt_left">职位</span><input class="vv notnull" type="text" size=35>\n</div>         \n<div class="h30"></div>\n<div><button type="submit" class="btn-focus center h35 pd50 save_">保存</button></div>\n<div class="h20"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (63, 9, 802001, 801000, null, to_date('23-12-2016 13:26:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 20:40:14', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (64, 9, 802001, 801000, null, to_date('23-12-2016 20:40:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2017 12:13:03', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 2, null, null, '<div>\n  <span class="pd10 dt5 bg-focus"><img class="middle" src="../doc/images/HC/calendar_l.png" /></span>\n  <span class="bg-white dt3 f14 bold pd10"  width="20">%s</span> \n  <span class="pdl20">\n    <span class="btn-focus mg5 pd5 h20 mgnl10">所有类型(%s)</span>\n    <span class="pd5 h20 mg5 grey" data="%s">%s(%s)</span>\n    <span class="pd5 h20 mg5 grey" data="%s">%s(%s)</span>\n  </span>\n</div>\n<div class="dt5">\n  <div class="bg-white dt10 text-c color-focus">\n    <a class="pointer taskList_" data="%s">展开事项</a>\n  </div>\n</div>\n<div class="h20"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (34, 13, 802001, 801000, null, to_date('21-12-2016 13:21:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:02:39', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="title pointer">账户设置</div>\n<div class="h30"></div>\n<div>\n <label class="dt_left labelName pdr20">姓名</label><input class="vv notnull" name="" type="text" size=35>\n</div>\n<div class="h20"></div>\n<div class="">\n<span class="dt_left">性别</span><input class="vv" id="v_sex" type="hidden">\n <DATAPARAM id="132" type="RADIO">\n <span class="pdl10">\n   <input class="radio-default" type="radio" id="radio%s" name="sex" value="%s">\n   <label class="pdl5" for="radio%s">%s</label>\n </span>\n </DATAPARAM>\n</div>\n<div class="h20"></div>\n<div class="">\n  <span class="dt_left">手机</span><input class="vv notnull grey" readonly type="text" size=35>\n</div>\n<div class="h20"></div>       \n<div class="">\n  <span class="dt_left">座机(选填)</span><input class="vv notnull" id="phone" type="text" size=35><br>\n  <span class="dt_left"></span><span id="phoneMsg"></span>\n</div>\n<div class="h20"></div>\n<div class="">\n <span class="dt_left">公司邮箱</span><input class="vv notnull" type="text" size=35>\n</div>       \n<div class="h30"></div>\n<div><button type="submit" class="btn-focus center h35 pd50 save_">保存</button></div>\n<div class="h20"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (24, 30, 802001, 801000, null, to_date('18-12-2016 09:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:56:25', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人入职</div>\n<div class="h15"></div>\n\n<div class="pdall10 bg-white center">\n<div class="bg-white center" style="">\n    <span class="">反馈结果:</span>\n    <span class="pd10"><input class="radio-default  proinfo_ vv" type="radio" id="radio1" name="proinfo" checked value="1"><label class="pdl5" for="radio1">确认入职</label></span>\n    <span class="pdr100"><input class="radio-default  proinfo_ vv" type="radio" id="radio2" name="proinfo" value="2"><label class="pdl5" for="radio2">拒绝入职</label></span>\n</div>\n <div class="dt10 proinfo_ext_ gone" id="proinfo2">\n  <span class="top">拒绝原因：</span>\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div> \n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330007', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (60, 42, 802001, 801000, null, to_date('23-12-2016 11:01:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 11:01:44', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="h40 text-c" style="border-bottom: #eee 1px solid;">\n  <span class="color-focus f18">offer详情</span>\n</div>\n<div class="pdl30 bg-white center" style="">\n  <ul>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer对象：</span><span class="f14 black">李大治</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer职位: </span><span class="f14 black">产品经理</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer月薪：</span><span class="f14 black">22K</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer年薪：</span><span class="f14 black">22W</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">offer时间：</span><span class="f14 black">11月23日</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">入职时间：</span><span class="f14 black">11月23日</span></li>\n    <li  class="f10 text-l pdall10 grey"><span style="width: 100px;"class="text-r">源文件：</span><span class="f10 grey2" >XXXXXXX.pdf</span></li>\n  </ul>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (61, 5, 802001, 801000, null, to_date('23-12-2016 13:09:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 17:13:55', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<dl style="margin: 30px;">\n  <dt class="topinfor f14" style="color: #D29C1A;">\n      职位预览\n  </dt>\n  <dd class="f16" style="border-bottom: 0.5px solid#D8D8D8;margin-bottom:18px;margin-top: 20px;padding-bottom: 10px;">\n    <span class="pdr10">%s</span>\n    <span  class="btn-green f9 pd2">%s</span>\n    <span class="f12 grey pdr20 pdl10"> <img class="" src="../doc/images/HR/location.png">%s</span><br>\n    <div class="h10"></div>\n    <div class="f12 pdr20">\n     <span class="pdr20">%s</span><span class="pdr20">%s</span>  <span class="pdr20">%s</span>\n     <span class="f12 grey mgnl10 float-r">%s</span>\n    </div>\n  </dd>\n  <dt>"职位诱惑 (一句话)"</dt>\n  <div class="h20"></div>\n  <dt class=" grey">%s<span class="black pdl10">%s</span></dt>\n  <div class="h10"></div>\n  <dd class="" style="margin: 10px;color: #C8E0F0;">\n    <dd class="description grey f10">职位描述:</dd>\n    <p >%s</p>\n    <p >%s</p>\n    <div class="h30"></div>\n    <dd class="description grey f10">职位要求:</dd>\n    <p class="pdall10" style="padding-left: 0px;">%s</p>\n   </dd>\n    <div class="h100"></div>\n</dl>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (62, 5, 802001, 801000, null, to_date('23-12-2016 13:09:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2016 17:14:15', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 2, null, null, '<dl compact="comInfor" class="mgnl10"> \n  <dt class="comImg" style="margin-top: 15px;">\n    <h1 class="color-focus f14 pdall10">公司信息</h1>\n    <img class="img50 pdall10" src="img/pub_logo.png">\n  </dt>\n  <dd >\n    <h2 class="pdall10">ACE</h2>\n    <ul class="pdl10">\n        <li class="btn-grey float-l text-c f10" style="width: 50px;margin-top: 5px;">%s</li>\n        <li class="btn-default float-l text-c f10" style="width: 50px;margin-left: 5px;margin-top: 5px;">%s</li>\n        <li class="btn-default float-l text-c f10" style="width: 50px;margin-left: 5px;margin-top: 5px;">%s</li>\n        <li class="btn-default float-l text-c f10" style="width: 50px;margin-left: 5px;margin-top: 5px;">%s</li>\n        <li class="btn-default float-l text-c f10" style="width: 50px;margin-left: 5px;margin-top: 5px;">%s</li>\n    </ul>\n  </dd>\n  <dd style="margin-top: 75px;">\n    <ul class="f10">\n        <li style="margin: 10px;"><span class="grey">公司行业：</span>%s</li>\n        <li style="margin: 10px;"><span class="grey">公司性质：</span>%s</li>\n        <li style="margin: 10px;"><span class="grey">融资情况：</span>%s</li>\n        <li style="margin: 10px;"><span class="grey">公司规模：</span>%s</li>\n        <li style="margin: 10px;"><span class="grey">公司产品：</span>%s</li>\n        <li style="margin: 10px;"><span class="grey">竞争对手：</span>%s</li>\n        <li style="margin: 10px;"><span class="grey">公司网站：</span>%s</li>\n        <li style="margin: 10px;"><span class="grey">公司地址：</span>%s</li>\n    </ul>\n  </dd>\n  <dd>\n      <img src="img/pub_logo.png" width="160" height="110"style="margin-bottom: 8px;margin-left: 20px;">\n  </dd>\n  <div class="h20"></div>\n</dl>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (77, 48, 802001, 801000, null, to_date('25-12-2016 14:57:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 08:03:25', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="f18 center color-focus">候选人离职原因</div>\n<div class="h15"></div>\n<div class="bg-white center">\n  <textarea class="bg-light-grey notnull vv" cols="32"></textarea>\n</div>\n\n<div class="h10"></div>\n<div class="center pdall10">\n  <button class="btn-focus pd30" id="UI_Button_Ok">确定</button>\n  <button class="btn-default pd30 mgl10" id="UI_Button_Cancel">取消</button>\n</div>', '330027', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (23, 6, 802001, 801000, null, to_date('18-12-2016 16:40:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:05:33', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="clearfix bg-white h90 pointer box-link dataline_" data="%s">\n  <div class="float-l text-c pdall10" width="60">\n    <img class="img20 pdall2" src="../doc/images/HR/status_%s.png"><br>\n    <span class="light-grey">%s<br>%s</span>\n  </div>\n  <div class="float-l pdall10">\n    <div class="pdr50 dt5 bold f16">\n      <a class="pointer detail_">%s</a>\n      <span class="pdl10 grey f12">%s</span>\n      <span class="grey f12">\n      <span class="pdl30 pdr30">%s</span>\n      <span class="pdr30">%s</span>\n      <span class="pdr30">%s</span>\n      <span class="pdr30">%s</span>\n      <span class="pdl30"><img src="../doc/images/HR/location.png">%s</span>\n    </div>\n    <div class="h3"></div> \n    <div class="float-l f12">\n      <EDUCATION><span class="grey">%s<span class="grey f12 pd5">|</span>%s</span></EDUCATION>\n      <span class="pdl30">\n        <JOB>%s<span class="grey f12 pd5">|</span><span class="grey pdr15">%s</span></JOB>\n      </span>\n    </div>\n  </div>\n  <div class="float-r pd5 bg-focus full-height consultant_"></div>\n  <div class="float-r text-c pdall10">\n    <div>\n      <span class="%s">%s</span>\n      <span class="%s">%s <img src="../doc/images/HR/offer_change.png"></span>\n      <span class="btn-transparent2 grey h20 pd10 %s">%s</span>\n      <button class="btn-default h20 pd10 %s">%s</button>\n    </div>\n    <div class="h3"></div>\n    <div class="grey">\n      <span class="%s">%s</span>\n      <span class="btn-transparent2 grey h20 pd10 %s">%s</span>\n      <button class="btn-default h20 pd10 %s">%s</button>\n      <button class="btn-focus h20 pd10 %s">%s</button>\n    </div>\n    \n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (90, 59, 802001, 801000, null, to_date('30-12-2016 13:39:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 14:56:11', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 3, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_col1 top"><span class="red top">*</span>意向公司</span>\n    <span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (91, 59, 802001, 801000, null, to_date('30-12-2016 13:40:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 14:56:20', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', 4, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_col1 top"><span class="red top">*</span>屏蔽公司</span>\n    <span class="dt_col_right"><textarea class="full-width h60 vv" name="vvn"></textarea></span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (101, 22, 802001, 801000, null, to_date('06-01-2017 10:55:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 10:55:41', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<div class="display-td middle f16">\n  <span class="pdr10">\n  <select class="status_ bg-light-grey">\n       <option value="">所有阶段</option>\n       <DATAPARAM id="244" type="select"><option value="%s">%s</option></DATAPARAM>\n  </select>\n  </span>\n  <span class="pdr10"><input type="text" class="keyword_" placeholder="搜索"></span>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (82, 19, 802001, 801000, null, to_date('27-12-2016 15:31:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:49:36', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-培训', 4, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left">起止时间</span><span class="dt_right datemonthview"><input class="datepicker h30 vv" name="vvn" size="10"><span> - </span><input class="datepicker h30 vv" name="vvn" size="10"></span>\n    <span class="dt_left">培训内容</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (105, 23, 802001, 801000, null, to_date('06-01-2017 10:57:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 10:57:36', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<div class="display-td middle f16">\n  <span class="pdr10">\n  <select class="status_ bg-light-grey">\n       <option value="">所有阶段</option>\n       <DATAPARAM id="244" type="select"><option value="%s">%s</option></DATAPARAM>\n  </select>\n  </span>\n  <span class="pdr10"><input type="text" class="keyword_" placeholder="搜索"></span>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (40, 19, 802001, 801000, null, to_date('21-12-2016 14:54:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:51:01', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-教育', 3, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left">起止时间</span><span class="dt_right datemonthview"><input class="datepicker h30 vv" name="vvn" size="10">\n    <span> - </span><input class="datepicker h30 vv" name="vvn" size="10"></span>\n    <span class="dt_left">学校</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left">专业</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n    <span class="dt_left">学历</span><span class="dt_right"><select class="h30 full-width vv" name="vvn"><option></option>\n    <DATAPARAM id="133" type="select"><option value="%s">%s</option></DATAPARAM>  \n    </select></span>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (8, 3, 802001, 801000, null, to_date('16-12-2016 05:34:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 14:30:37', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="clearfix pdall10 box-link pointer bg-white dataline_" data="%s">\n  <div class="float-l">\n    <span class="pdr20 bold f16">%s</span>\n    <span class="pd10">%sK</span>\n    <span class="pd10">%s</span>\n    <spanclass="pd10">%s</span>\n    <span class="pdl50 f12"><img src="../doc/images/HR/location.png">%s</span>\n    <span class="pdl20 f12 grey">%s发布</span>\n  </div>\n  <div class="float-r actions_ gone">\n    <button class="btn-default pd10 h20 online_">上线</button> \n    <button class="btn-default pd10 h20 edit_">编辑</button> \n    <button class="btn-default pd10 h20 underline_">下线</button> \n  </div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (1, 1, 802001, 801000, null, to_date('12-12-2016 14:21:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 12:28:01', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div id="" class="clearfix bg-white box-link dataline_" data="%s">\n  <div class="float-l pd10">\n    <div class="dt10">\n      <img class="img12" style="margin-top: -50px;" src="../doc/images/HR/marker_new.png">\n      <span class="f18 pointer detail_">%s</span>\n      <span class="grey f12">\n      <span class="pdl30 pdr30">%s</span>\n      <span class="pdr30">%s岁</span>\n      <span class="pdr30">%s年工作经验 </span>\n      <span class="pdr30">%sK</span>\n      <span class="pdl30"><img src="../doc/images/HR/location.png">%s</span>\n    </div>\n    <div class="h1"></div> \n    <div class="float-l f12">\n      <EDUCATION><span class="grey pdr30">%s<span class="grey f12 pd5">|</span>%s</span></EDUCATION>\n      <JOB><span>%s<span class="grey f12 pd5">|</span><span class="grey pdr15">%s</span></span></JOB>\n    </div>\n  </div>\n  <div class="float-r pdall10">\n    <div class="h20 pd10 dt10 grey HR_addIV_">%s</div>\n  </div>\n</div>\n<div class="h10"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (107, 23, 802001, 801000, null, to_date('06-01-2017 10:58:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 10:58:08', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB-BOX', 4, null, null, '<div id="box-<INDEX>" class="dt10 bg-light-red pd50 gone">\n  <div class="clearfix grey f9">\n    <div class="float-l grey2 processbar">\n      <div class="h20 process-end"><br></div>\n      <div>入职确认</div>\n      <div class="f7">当前</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">接受Offer</div>\n      <div class="f7">2016.12.12</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">获得Offer</div>\n      <div class="f7">2016.12.11</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">一面 通过</div>\n      <div class="f7">2016.11.28</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">安排 一面</div>\n      <div class="f7">2016.11.23</div>\n    </div>\n    <div class="float-l processbar">\n      <div class="h20"><br></div>\n      <div class="process-info">同意面试</div>\n      <div class="f7">2016.11.20</div>\n    </div>\n    <div class="float-l processbar-last">\n      <div class="h20"><br></div>\n      <div class="process-info">邀请面试</div>\n      <div class="f7">2016.11.16</div>\n    </div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (42, 3, 802001, 801000, null, to_date('21-12-2016 16:35:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 14:37:42', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 3, null, null, '<div class="clearfix box-link pointer bg-white dataline_" data="34222">\n  <div class="float-l pdall10">\n    <span class="pdr20 bold f16 f14">上传JD:</span>\n    <span class="pdall10 black f12">xxxxxx.doc</span>\n    <span class="pdall10 grey f12">2016.08.16</span>\n    <span class="grey f12">上传 </span>\n    <span class="pdl40 f12 grey">您的职位将在1个工作日内发布</span>\n  </div>\n  <div class="float-r pdall10">\n    <button class="btn-default pd10 h20 underlineJD_">取消发布</button> \n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (16, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 09:35:48', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-工作经验', 7, null, null, '<div class="dt3"><span class="dt_left bold">%s - %s</span><span class="bold sp2">%s</span></div>\n<div class="dt3"><span class="dt_left"></span><span class="grey">%s(%s)</span></div>\n<div class="%s">\n' || chr(9) || '<div class="tab-hc dt10">\n' || chr(9) || '  <span class="bold %s">月薪：<span class="green pdr30">%sK</span></span>\n' || chr(9) || '  <span class="bold %s">年薪：<span class="green">%sW</span></span>\n' || chr(9) || '</div>\n  <div class="pdl25 green %s">薪资构成：%s</div>\n</div>\n<div class="%s">\n<div class="tab-hc dt10 bold">公司介绍</div>\n<div class="pdl25 green">%s</div>\n</div>\n<div class="%s">\n  <div class="tab-hc dt10">\n    <span class="bold %s">汇报对象：<span class="green pdr30">%s</span></span>\n    <span class="bold %s">下属人数：<span class="green">%s</span></span>\n  </div>\n</div>\n<div class="dt15 bold">工作职责</div>\n<div class="dt3 grey">%s</div>\n<div class="%s">\n<div class="tab-hc dt10 bold">工作权重</div>\n<div class="dt3 green">\n  <WORKWEIGHT><span class="process-bar inline-block"><img src="../doc/images/bar_dot.png" width="%s" height="8"></span></span><span class="pd20">%s％</span><span class="bold">%s</span><br/></WORKWEIGHT>\n</div>\n</div>\n<div class="%s">\n<div class="tab-hc dt10 bold">离职原因</div>\n<div class="dt3 green">%s</div>\n</div>\n<div class="line"></div>\n<div class="h10"></div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (84, 19, 802001, 801000, null, to_date('27-12-2016 15:33:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 19:43:27', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-任职经历', 6, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (12, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 00:09:49', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-教育', 3, null, null, '<div class="dt3">\n  <div class="dt3"><span class="dt_left">%s - %s</span><span class="bold sp2">%s</span></div>\n  <div class="dt3"><span class="dt_left"></span><span class="grey">%s | %s</span></div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (14, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 00:18:05', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-证书', 5, null, null, '<div class="dt3"><span class="dt_left">%s</span><span class="sp1">%s</span></div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (13, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 00:18:15', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-培训', 4, null, null, '<div class="dt3"><span class="dt_left">%s</span><span class="sp1">%s</span></div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (15, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 00:31:31', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-任职经历', 6, null, null, '<div class="line"></div>\n<div class="dt10">\n  <div class="dt3"><span class="dt_left">%s - %s</span><span class="bold sp2">%s</span></div>\n  <div class="dt3"><span class="dt_left"></span><span class="grey">%s</span></div>\n  <div class="pdall15 sub_">\n  </div>\n</div>\n', '<div class="dot-line"></div>\n<div class="dt3">\n  <div class="dt3"><span class="dt_left grey">%s - %s</span><span class="bold sp2 tab-dot">%s</span></div>\n  <div class="dt3"><span class="dt_left"></span><span class="pdl10 grey">%s</span></div>\n</div>\n', null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (43, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:06:02', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-技能标签', 9, null, null, '<div class="%s">\n<div class="tab-hc dt10 bold">技能标签</div>\n  <div class="pdl25">\n    <div class="dt5">职业：<br><span class="tab-dot-s green">%s</span></div>\n    <div class="dt5">团队管理：<br><span class="tab-dot-s green">%s</span></div>\n    <div class="dt5">软件技能：<br><span class="tab-dot-s green">%s</span></div>\n  </div>\n</div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (17, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:19:34', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-项目经验', 8, null, null, '<div class="dt3"><span class="dt_left bold">%s - %s</span><span class="bold sp2">%s</span></div>\n<div class="dt3"><span class="dt_left"></span><span class="grey">%s</span></div>\n<div class="dt15 bold">项目介绍</div>\n<div class="dt3 grey">%s</div>\n<div class="dt10 bold">工作职责</div>\n<div class="dt3 grey">%s</div>\n<div class="dt15 bold">项目成就</div>\n<div class="dt3 grey">%s</div>\n<div class="line"></div>\n<div class="h10"></div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (41, 11, 802001, 801000, null, to_date('21-12-2016 15:02:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:32:19', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, '<div class="title pointer color-focus pdall20">账户信息</div>\n<div class="pdall5">\n  <span class="dt_left">姓名</span><input class="vv notnull" type="text" size=35>\n</div>\n<div class="h10"></div>\n<div class="pdall5">\n  <span class="dt_left text-r">性别<input class="vv notnull" type="hidden" id="v_sex" value="1" size="3"></span>\n  <span class="pdl15"><input class="radio-default" type="radio" id="rs1" name="sex" value="1"><label class="pdl15" for="rs1">男</label></span>\n  <span class="pdl15"><input class="radio-default" type="radio" id="rs2" name="sex" value="0" ><label class="pdl5" for="rs2">女</label></span>\n  <span class="float-r pdr80"><span class="pdr60">&nbsp;</span></span>\n</div>\n<div class="h10"></div>\n<div class="pdall5">\n  <span class="dt_left">手机</span>\n  <input class="vv notnull" id="mobile" type="text" maxlength="11" name="tel" size=35/><br>\n  <span class="dt_left"></span><span id="moileMsg"></span>\n</div>\n<div class="h15"></div>\n<div class="pdall5">\n  <span class="dt_left">验证码</span><input class="vv notnull" id="code1" type="text" size=25><button type="submit" class="btn-default mgl10 pd5 sendVerify_">验证码</button>        \n</div>\n<div class="h15"></div>             \n<div class="pdall5">\n  <span class="dt_left">座机(选填)</span><input class="vv notnull" id="phone" type="text" size=35><br>\n  <span class="dt_left"></span><span id="phoneMsg"></span>\n</div>\n<div class="h15"></div>\n<div class="pdall5">\n  <span class="dt_left">公司邮箱</span><input class="vv notnull" type="text" size=35>\n</div>\n<div class="h15"></div>         \n<div class="pdall5">\n <span class="dt_left">职位</span><input class="vv notnull" type="text" size=35>\n</div>            \n<div class="h20"></div>\n<div><button type="submit" class="btn-focus h35 center pd50 nextregister_">下一步</button></div>\n<div class="h20"></div>\n<div class="h20 text-c grey">注册即同意本网站的<a class="red pointer protocal_">？用户协议？</a></div>\n<div class="h30"></div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (44, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:08:44', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-工作期望', 10, null, null, '<div class="%s"><div class="tab-hc dt10 bold">工作期望</div>\n  <div class="pdl25">\n    <div class="dt5">职位：<span class="green">%s</span></div>\n    <div class="dt5">职级：<span class="green">%s</span></div>\n    <div class="dt5">行业：<span class="green">%s</span></div>\n    <div class="dt5">城市：<span class="green">%s</span></div>\n    <div class="dt5">期望薪资：<span class="green">%s</span></div>\n    <div class="dt5">意向公司：<br><span class="tab-dot-s green">%s</span></div>\n    <div class="dt5">屏蔽公司：<br><span class="tab-dot-s green">%s</span></div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (86, 19, 802001, 801000, null, to_date('27-12-2016 15:35:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:51:48', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-项目经验', 8, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left">起止时间</span><span class="dt_right datemonthview"><input class="datepicker h30 vv" name="vvn" size="10"><span> - </span><input class="datepicker h30 vv" name="vvn" size="10"><span class="nowrap"><input class="checkbox" type="checkbox" id="checkbox1"><label for="checkbox1">至今</label></span></span>\n    <span class="dt_left">公司名称</span><span class="dt_right"><input class="h30 full-width vv" name="vvn"></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left">行业</span><span class="dt_right"><input class="full-width vv" name="vvn"></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left top">项目介绍</span><textarea class="h60 vv" name="vvn" style="width:730px"></textarea></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left top">项目职责</span><textarea class="h60 vv" name="vvn" style="width:730px"></textarea></span>\n  </div>\n  <div class="dt10">\n    <span class="dt_left top">项目成就</span><textarea class="h60 vv" name="vvn" style="width:730px"></textarea></span>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (39, 19, 802001, 801000, null, to_date('21-12-2016 14:41:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:31:00', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-属性', 2, null, null, null, null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (98, 9, 802001, 801000, null, to_date('04-01-2017 10:15:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 10:19:10', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 4, null, null, '<div class="h30">\n  <span class="dt_left">临时候选人</span>\n  <span class="dt_left">%s</span>\n</div>\n<div class="h30">\n  <span class="dt_left">入库中</span>\n  <span class="dt_left">%s</span>      \n</div>\n<div class="h30">\n  <span class="dt_left">入库候选人</span>\n  <span class="dt_left">%s</span>      \n</div>\n<div class="h30 grey">%s</div>\n<div class="h30"></div>    \n<div class="h30">\n  <span class="dt_left">被关注</span>\n  <span class="dt_left">%s</span>         \n</div>\n<div class="h30">\n  <span class="dt_left">邀请面试</span>\n  <span class="dt_left">%s</span>       \n</div>\n<div class="h30">\n  <span class="dt_left">面试</span>\n  <span class="dt_left">%s</span>       \n</div>\n<div class="h30">\n  <span class="dt_left">offer</span>\n  <span class="dt_left">%s</span>       \n</div>\n<div class="h30">\n  <span class="dt_left">入职</span>\n  <span class="dt_left">%s</span>       \n</div>\n<div class="h30">\n  <span class="dt_left">离职</span>\n  <span class="dt_left">%s</span>       \n</div>    \n<div class="h30"></div>              \n<div class="h30">\n  <span class="dt_left">开票金额</span>\n  <span class="dt_left">%s</span>       \n</div>   \n<div class="h30">\n  <span class="dt_left">收款金额</span>\n  <span class="dt_left">%s</span>       \n</div> \n<div class="h30">\n  <span class="dt_left">收款金额</span>\n  <span class="dt_left">%s</span>       \n</div>                    ', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (25, 28, 802001, 801000, null, to_date('19-12-2016 17:57:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 23:15:36', 'dd-mm-yyyy hh24:mi:ss'), '分类列表', 2, null, null, '<DATAPARAM id="250" type="ID_MEMO_NAME"><div class="dt20 pdl30 pdr5 pointer dataline_" data="%s"><img src="../doc/images/%s.png"><span class="pdl15">%s</span><span class="float-r grey f9">2016.11.24</span></div>\n<div class="line" id="hidata1"></div></DATAPARAM>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (18, 26, 802001, 801000, null, to_date('18-12-2016 09:06:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 07:59:58', 'dd-mm-yyyy hh24:mi:ss'), 'LIST', 1, null, null, '<div class="clearfix dataline_ %s" data="%s" data1="%s">\n  <div class="line"></div>\n  <div class="float-l">\n    <div class="dir-line-root dir1">\n      <div class="open dt20 bold f14 btn-slide sub_" id="li-<INDEX>">\n        <span class="dt_left">%s</span><span>%s</span>\n      </div>\n    </div>\n    <div id="box-<INDEX>">\n\n    </div>\n  </div>\n  <div class="float-r">\n    <div class="dt20 f14 bold nowrap text-r">%s（%s）</div>\n    <div class="grey f9 text-r"><img src="../doc/images/HC/face_hr_s.png"> %s</div>\n    <div class="dt20 pdr5 text-r %s"><button class="btn-default h30 pd10 HC_closeProcess_">结束流程</button></div>\n  </div>\n</div>\n<div class="h10"></div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (38, 21, 802001, 801000, null, to_date('21-12-2016 13:44:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:59:12', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<div class="display-td middle f16">\n  <span class="pdr10">\n  <select class="status_ bg-light-grey">\n       <option value="">所有阶段</option>\n       <DATAPARAM id="244" type="select"><option value="%s">%s</option></DATAPARAM>\n  </select>\n  </span>\n  <span class="pdr10"><input type="text" class="keyword_" placeholder="搜索"></span>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (19, 26, 802001, 801000, null, to_date('18-12-2016 09:06:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:15:55', 'dd-mm-yyyy hh24:mi:ss'), 'CONDITION', 2, null, null, '<select class="processStatus_">\n  <option>所有流程</option>\n  <DATAPARAM id="244" type="select"><option value="%s">%s</option></DATAPARAM>\n</select>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (108, 26, 802001, 801000, null, to_date('10-01-2017 06:15:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 07:03:50', 'dd-mm-yyyy hh24:mi:ss'), 'LIST-SUB', 3, null, null, '<div class="%s display">\n  <div class="dir2 dt20">\n    <div class="%s bold" id="li-<INDEX>"><span class="dt_left">%s</span>%s</div>\n    <div class="dir-none dt15 gone" id="box-<INDEX>">\n      <div class="dt5"><span class="dt_left"></span>%s</div>\n    </div>\n  </div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (83, 19, 802001, 801000, null, to_date('27-12-2016 15:32:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:23:09', 'dd-mm-yyyy hh24:mi:ss'), 'FORM-简历编辑-证书', 5, null, null, '<div class="hidata_subform"><input class="vv" name="vvn" type="hidden">\n  <div class="dt10">\n    <span class="dt_left">时间</span><span class="dt_right datemonthview"><input class="datepicker full-width h30 vv" name="vvn"></span>\n    <span class="dt_left">证书名称</span><span class="dt_right"><input class="full-width h30 vv" name="vvn"></span>\n  </div>\n  <div class="h10"></div>\n</div>', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (45, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:41:24', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-顾问面评', 11, null, null, '<div class="h5"></div>        \n<div class="full-width clearfix">\n  <span class="float-l f14 grey"><img class="raduis24" src="../doc/images/gw_face.png"><span class="pdl5">%s顾问的评价</span></span>\n  <span class="float-r dt5 btn-slide" id="li-<INDEX>"><span class="f9 light-grey">%s</span> <img class="arrow middle" src="../doc/images/arrow.png"></span>\n</div>\n<div id="box-<INDEX>" class="gone bg-light-red pd30">\n  <div class="tab-hc bold">整体印象</div>\n  <div class="pdl25">\n    <div class="dt5">性格：<br><span class="tab-dot-s green">%s</span></div>\n    <div class="dt5">沟通能力：<br><span class="tab-dot-s green">%s</span></div>\n    <div class="dt5">语言水平：<LANGUAGE><br><span class="tab-dot-s green">%s</span></LANGUAGE></div>\n    <div class="dt5">缺点/疑虑：<br><span class="tab-dot-s green">%s</span></div>\n  </div>\n  <div class="tab-hc bold">工作总结</div>\n  <div class="pdl25">\n    <div class="dt5">本行业从业经验：<span class="green">%s年</span></div>\n    <div class="dt5">管理经验：<span class="green">%s年</span></div>\n    <div class="dt5">管辖区域范围：<br><span class="tab-dot-s green">%s</span></div>\n  </div>\n  <div class="tab-hc bold">备注</div>\n  <div class="pdl25 green">%s</div>\n</div>\n<div class="line"></div>\n', null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (2, 10, 802001, 801000, null, to_date('12-12-2016 21:51:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:27:32', 'dd-mm-yyyy hh24:mi:ss'), 'FORM', null, null, null, 
        '<div class="title pointer color-focus">账户注册</div>\n<div class="h30"></div>\n<div class="pdall5">\n  <label class="labelName dt_left">姓名</label><input class="vv notnull" name="" type="text" size=35>\n</div>\n<div class="h10"></div>\n<div class="pdall5">\n  <span class="dt_left">性别<input class="vv" type="hidden" id="v_sex" value="1"></span>\n  <span><input class="radio-default" type="radio" id="rs1" name="sex" value="1"><label class="pd5" for="rs1">男</label></span>\n  <span class="pdl15"><input class="radio-default" type="radio" id="rs2" name="sex" value="0"><label class="pd5" for="rs2">女</label></span>\n  <span class="float-r pdr80"><span class="pdr60">&nbsp;</span></span>\n</div>\n<div class="h10"></div>\n<div class="pdall5">\n  <span class="dt_left">手机</span>\n  <input class="vv notnull" id="mobile" type="text" maxlength="11" name="tel" size=35/><br>\n  <span class="dt_left"></span><span id="moileMsg"></span>\n</div>\n<div class="h20"></div>\n<div class="pdall5">\n     <label class="labelName dt_left">验证码</label><input class="pdr20" id="code1" type="text" size=20>\n     <button type="submit" class="btn-default pd10 mgl10 sendVerify_">验证码</button></span>\n</div>\n<div class="h20"></div>             \n<div class="pdall5">\n  <span class="dt_left">座机(选填)</span><input class="vv notnull" id="phone" type="text" size=35><br>\n  <span class="dt_left"></span><span id="phoneMsg"></span>\n</div>\n<div class="h20"></div>\n <div class="center text-c"><input class="vv" type="hidden" id="p1" value="1">\n  <span class="pdl100"><input class="radio-default proinfo_" type="radio" id="rp1" name="proinfo" value="1" checked><label class="pdl5" for="rp1">我在猎头公司</label></span>\n  <span class="pd80"><input class="radio-default proinfo_" type="radio" id="rp2" name="proinfo" value="0"><label class="pdl5" for="rp2">我是自由职业</label></span>\n</div>\n<div class="h20"></div>\n<div id="proinfo1" class="proinfo_ext_">\n<div class="pdall5">\n  <span class="dt_left">公司名称</span><input class="vv notnull" id="companyName" type="text" size=35>\n</div>\n<div class="h20"></div>\n<div class="pdall5">\n  <span class="dt_left">公司邮箱</span><input class="vv notnull" id="companyEmail" type="text" size=35>\n</div>\n</div>\n<div id="proinfo0" class="gone proinfo_ext_">\n<div class="pdall5">\n  <span class="dt_left">个人邮箱</span><input class="vv notnull" id="personalEmail" type="text" size=35>\n</div>\n</div>\n<div class="h30"></div>\n<div class=""><button type="submit" class="btn-focus center h35 pd50 nextregister_">提交</button></div>\n<div class="h20"></div>\n<div class="h20 text-c grey">注册即同意本网站的<a class="red pointer protocal_">？用户协议？</a></div>', 
        null, null, null, 130001, null, null);
insert into Y_APPMODULEDETAIL (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (47, 25, 802001, 801000, null, to_date('16-12-2016 17:48:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 10:41:32', 'dd-mm-yyyy hh24:mi:ss'), 'DETAIL-简历-顾问面试', 12, null, null, '<div class="h5"></div>\n<div class="full-width inline-block">\n  <span class="float-l tab-hc dt10 f14 bold">顾问面试</span>\n  <span class="float-r dt10"><a class="link pointer HC_editHCIV_">修改</a></span>\n</div>\n<div class="dt5 grey"><img src="../doc/images/HC/time.png">2016.12.15（本周五）14:30</div>\n<div class="dt5 light-grey"><img src="../doc/images/HC/location.png">上海市黄浦区马当路388号（SOHO复兴广场）</div>\n', null, null, null, 130001, null, null);
commit;
prompt 99 records loaded
prompt Loading Y_APPROLE...
prompt Table is empty
prompt Loading Y_APPROLEMODULE...
prompt Table is empty
prompt Loading Y_APPVERSION...
insert into Y_APPVERSION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6)
values (1, 802001, 801000, null, to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), 601, '1', null, '安卓', 130001, null);
insert into Y_APPVERSION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6)
values (2, 802001, 801000, null, to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:03:21', 'dd-mm-yyyy hh24:mi:ss'), 602, '1', null, 'IOS', 130001, null);
insert into Y_APPVERSION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6)
values (3, 802001, 801000, null, to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:03:31', 'dd-mm-yyyy hh24:mi:ss'), 201, '1', null, '安卓测试版', 130001, null);
insert into Y_APPVERSION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6)
values (4, 802001, 801000, null, to_date('01-11-2016 11:03:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:03:45', 'dd-mm-yyyy hh24:mi:ss'), 202, '1', null, 'IOS测试版', 130001, null);
commit;
prompt 4 records loaded
prompt Loading Y_BULLETIN...
prompt Table is empty
prompt Loading Y_DEPARTMENT...
insert into Y_DEPARTMENT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, '运维部 yunweibu ywb ', to_date('01-11-2016 11:05:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:05:58', 'dd-mm-yyyy hh24:mi:ss'), '运维部', 1, null, 1, 1, null, 130001, null);
commit;
prompt 1 records loaded
prompt Loading Y_DOTMODULE...
prompt Table is empty
prompt Loading Y_DOTMODULEDETAIL...
prompt Table is empty
prompt Loading Y_DOTROLE...
prompt Table is empty
prompt Loading Y_DOTROLEMODULE...
prompt Table is empty
prompt Loading Y_DOTUSER...
prompt Table is empty
prompt Loading Y_EMP...
insert into Y_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (1, 802001, 801000, '9001 9001 9001 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), '9001', 1, 1, 1, 9001, null, null, null, null, 130001, 13900000001, null, null, null, '9001@', '已启用', null, null);
insert into Y_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (2, 802001, 801000, '3001 3001 3001 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:07:41', 'dd-mm-yyyy hh24:mi:ss'), '3001', 1, 1, 1, 3001, null, null, null, null, 130001, 13900000001, null, null, null, '3001@', '已启用', null, null);
insert into Y_EMP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c3, c2, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18)
values (3, 802001, 801000, '9009 9009 9009 ', to_date('01-11-2016 11:06:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 11:13:20', 'dd-mm-yyyy hh24:mi:ss'), '9009', 1, 1, 1, 9009, null, null, null, null, 130001, 13900000009, null, null, null, '9009@', '已启用', null, null);
commit;
prompt 3 records loaded
prompt Loading Y_JOBPOSITION...
insert into Y_JOBPOSITION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, '运维主管 yunweizhuguan ywzg ', to_date('01-11-2016 11:06:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:06:28', 'dd-mm-yyyy hh24:mi:ss'), '运维主管', 1, 130001, null, null, 1, null, 1);
commit;
prompt 1 records loaded
prompt Loading Y_ORGAN...
insert into Y_ORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, 'pcace在线 pcacezaixian pcacezx ', to_date('01-11-2016 09:55:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2016 16:34:37', 'dd-mm-yyyy hh24:mi:ss'), 'pcace在线', null, null, null, null, 'dw', 130001, null);
commit;
prompt 1 records loaded
prompt Loading Y_RS_COMPUTER...
prompt Table is empty
prompt Loading Y_RS_OTHERS...
prompt Table is empty
prompt Loading Y_SERVER...
insert into Y_SERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (1, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), '01', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
insert into Y_SERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (2, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:29', 'dd-mm-yyyy hh24:mi:ss'), '02', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
insert into Y_SERVER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4)
values (3, 802001, 801000, null, to_date('01-11-2016 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2016 11:04:35', 'dd-mm-yyyy hh24:mi:ss'), '03', 'http://pcace.hi-online.cn:8099/pcace/', 130001, null);
commit;
prompt 3 records loaded
prompt Enabling triggers for I_AREA...
alter table I_AREA enable all triggers;
prompt Enabling triggers for I_BULLETIN...
alter table I_BULLETIN enable all triggers;
prompt Enabling triggers for I_DATAMODULE...
alter table I_DATAMODULE enable all triggers;
prompt Enabling triggers for I_DATAMODULECOLUMN...
alter table I_DATAMODULECOLUMN enable all triggers;
prompt Enabling triggers for I_DATAPARAMTYPE...
alter table I_DATAPARAMTYPE enable all triggers;
prompt Enabling triggers for I_DATATABLE...
alter table I_DATATABLE enable all triggers;
prompt Enabling triggers for I_DATATABLECOLUMN...
alter table I_DATATABLECOLUMN enable all triggers;
prompt Enabling triggers for I_DATATABLECOLUMNEXTINFO...
alter table I_DATATABLECOLUMNEXTINFO enable all triggers;
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
prompt Enabling triggers for Y_APPMODULE...
alter table Y_APPMODULE enable all triggers;
prompt Enabling triggers for Y_APPMODULEDETAIL...
alter table Y_APPMODULEDETAIL enable all triggers;
prompt Enabling triggers for Y_APPROLE...
alter table Y_APPROLE enable all triggers;
prompt Enabling triggers for Y_APPROLEMODULE...
alter table Y_APPROLEMODULE enable all triggers;
prompt Enabling triggers for Y_APPVERSION...
alter table Y_APPVERSION enable all triggers;
prompt Enabling triggers for Y_BULLETIN...
alter table Y_BULLETIN enable all triggers;
prompt Enabling triggers for Y_DEPARTMENT...
alter table Y_DEPARTMENT enable all triggers;
prompt Enabling triggers for Y_DOTMODULE...
alter table Y_DOTMODULE enable all triggers;
prompt Enabling triggers for Y_DOTMODULEDETAIL...
alter table Y_DOTMODULEDETAIL enable all triggers;
prompt Enabling triggers for Y_DOTROLE...
alter table Y_DOTROLE enable all triggers;
prompt Enabling triggers for Y_DOTROLEMODULE...
alter table Y_DOTROLEMODULE enable all triggers;
prompt Enabling triggers for Y_DOTUSER...
alter table Y_DOTUSER enable all triggers;
prompt Enabling triggers for Y_EMP...
alter table Y_EMP enable all triggers;
prompt Enabling triggers for Y_JOBPOSITION...
alter table Y_JOBPOSITION enable all triggers;
prompt Enabling triggers for Y_ORGAN...
alter table Y_ORGAN enable all triggers;
prompt Enabling triggers for Y_RS_COMPUTER...
alter table Y_RS_COMPUTER enable all triggers;
prompt Enabling triggers for Y_RS_OTHERS...
alter table Y_RS_OTHERS enable all triggers;
prompt Enabling triggers for Y_SERVER...
alter table Y_SERVER enable all triggers;
set feedback on
set define on
prompt Done.
