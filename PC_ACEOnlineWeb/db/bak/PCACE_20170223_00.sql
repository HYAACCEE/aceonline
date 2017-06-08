-----------------------------------------------------
-- Export file for user PCACE                      --
-- Created by Administrator on 2017/2/23, 15:17:58 --
-----------------------------------------------------

set define off
spool PCACE_20170223_00.log

prompt
prompt Creating table A_ACTION
prompt =======================
prompt
create table PCACE.A_ACTION
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
alter table PCACE.A_ACTION
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

prompt
prompt Creating table A_BANK
prompt =====================
prompt
create table PCACE.A_BANK
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
alter table PCACE.A_BANK
  add constraint A_BANK_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table A_HCINTERVIEW_QA
prompt ===============================
prompt
create table PCACE.A_HCINTERVIEW_QA
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
alter table PCACE.A_HCINTERVIEW_QA
  add constraint A_HCINTERVIEW_QA_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table A_INDUSTRY
prompt =========================
prompt
create table PCACE.A_INDUSTRY
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
alter table PCACE.A_INDUSTRY
  add constraint A_INDUSTRY_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table A_JOB
prompt ====================
prompt
create table PCACE.A_JOB
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
alter table PCACE.A_JOB
  add constraint A_JOB_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table A_ORGAN
prompt ======================
prompt
create table PCACE.A_ORGAN
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
alter table PCACE.A_ORGAN
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

prompt
prompt Creating table A_PROCESS
prompt ========================
prompt
create table PCACE.A_PROCESS
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
alter table PCACE.A_PROCESS
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

prompt
prompt Creating table BO_CANDIDATE
prompt ===========================
prompt
create table PCACE.BO_CANDIDATE
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
  c4           DATE,
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(20),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(30),
  c11          NUMBER(3),
  c12          NUMBER(6),
  c13          NUMBER(6),
  c14          VARCHAR2(30),
  c15          VARCHAR2(30),
  c16          VARCHAR2(30),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(4),
  c21          VARCHAR2(30),
  c22          VARCHAR2(30),
  c23          VARCHAR2(30),
  c24          NUMBER(6),
  c25          NUMBER(6),
  c26          NUMBER(6),
  c27          NUMBER(11) default 0,
  c28          NUMBER(11) default 0,
  c29          NUMBER(11) default 0,
  c30          NUMBER(11) default 0,
  c31          NUMBER(11) default 0,
  c32          NUMBER(11),
  c33          NUMBER(11),
  c34          NUMBER(11),
  c35          NUMBER(11),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(50),
  c39          NUMBER(6) default 0,
  c40          NUMBER(6) default 0,
  c41          VARCHAR2(100),
  c42          VARCHAR2(100),
  c43          VARCHAR2(30),
  c44          VARCHAR2(30),
  c45          VARCHAR2(100),
  c46          VARCHAR2(100),
  c47          VARCHAR2(100),
  c48          VARCHAR2(100),
  c49          VARCHAR2(100),
  c50          VARCHAR2(100),
  c51          VARCHAR2(100),
  c52          VARCHAR2(4000),
  c53          VARCHAR2(4000),
  c54          VARCHAR2(4000),
  c55          VARCHAR2(4000),
  c56          VARCHAR2(4000),
  c57          VARCHAR2(2000),
  c58          VARCHAR2(2000),
  c59          VARCHAR2(2000),
  c60          VARCHAR2(4000),
  c61          VARCHAR2(200),
  c62          VARCHAR2(200),
  c63          VARCHAR2(4000),
  c64          VARCHAR2(4000),
  c65          VARCHAR2(10),
  c66          NUMBER(6) default 0,
  c67          VARCHAR2(32),
  c68          NUMBER(11),
  c69          NUMBER(6),
  c70          NUMBER(6),
  c71          NUMBER(6),
  c72          DATE,
  c73          DATE,
  c74          VARCHAR2(32),
  c75          VARCHAR2(30),
  c76          DATE,
  c77          VARCHAR2(50),
  c78          VARCHAR2(20),
  c79          DATE,
  c80          VARCHAR2(200),
  c81          DATE,
  c82          NUMBER(6),
  c83          DATE,
  c84          DATE,
  c85          NUMBER(6),
  c86          DATE,
  c87          DATE,
  c88          VARCHAR2(500),
  c89          VARCHAR2(500),
  c90          NUMBER(6)
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

prompt
prompt Creating table BO_CANDIDATE_CVCERTIFICATE
prompt =========================================
prompt
create table PCACE.BO_CANDIDATE_CVCERTIFICATE
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(50),
  c5           VARCHAR2(30),
  c6           VARCHAR2(200),
  c7           VARCHAR2(200),
  c8           VARCHAR2(50),
  c9           VARCHAR2(30),
  c10          DATE
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

prompt
prompt Creating table BO_CANDIDATE_CVEDUCATION
prompt =======================================
prompt
create table PCACE.BO_CANDIDATE_CVEDUCATION
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(50),
  c6           VARCHAR2(50),
  c7           NUMBER(6),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(50),
  c11          VARCHAR2(30),
  c12          DATE
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

prompt
prompt Creating table BO_CANDIDATE_CVPROJECT
prompt =====================================
prompt
create table PCACE.BO_CANDIDATE_CVPROJECT
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(100),
  c6           VARCHAR2(50),
  c7           VARCHAR2(1000),
  c8           VARCHAR2(500),
  c9           VARCHAR2(500),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(50),
  c13          VARCHAR2(30),
  c14          DATE
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

prompt
prompt Creating table BO_CANDIDATE_CVTRAIN
prompt ===================================
prompt
create table PCACE.BO_CANDIDATE_CVTRAIN
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(50),
  c6           VARCHAR2(200),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(50),
  c10          VARCHAR2(30),
  c11          DATE
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

prompt
prompt Creating table BO_CANDIDATE_CVWORK
prompt ==================================
prompt
create table PCACE.BO_CANDIDATE_CVWORK
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           VARCHAR2(30),
  c8           VARCHAR2(100),
  c9           VARCHAR2(100),
  c10          VARCHAR2(100),
  c11          NUMBER(6),
  c12          NUMBER(6),
  c13          VARCHAR2(200),
  c14          VARCHAR2(100),
  c15          VARCHAR2(30),
  c16          VARCHAR2(1000),
  c17          VARCHAR2(200),
  c18          VARCHAR2(1000),
  c19          NUMBER(6) default 0,
  c20          NUMBER(6),
  c21          VARCHAR2(50),
  c22          VARCHAR2(30),
  c23          DATE,
  c24          NUMBER(6) default 0,
  c25          VARCHAR2(200),
  c26          CHAR(1) default '0',
  c27          NUMBER(6) default 0,
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

prompt
prompt Creating table BO_CANDIDATE_HCCOMMENT
prompt =====================================
prompt
create table PCACE.BO_CANDIDATE_HCCOMMENT
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           DATE,
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(2000),
  c8           VARCHAR2(4000),
  c9           VARCHAR2(2000),
  c10          NUMBER(6),
  c11          NUMBER(6),
  c12          VARCHAR2(500),
  c13          VARCHAR2(500),
  c14          VARCHAR2(500),
  c15          VARCHAR2(500),
  c16          VARCHAR2(500),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(30),
  c21          VARCHAR2(30),
  c22          VARCHAR2(2000),
  c23          NUMBER(6),
  c24          NUMBER(6),
  c25          NUMBER(6),
  c26          NUMBER(6),
  c27          NUMBER(6),
  c28          VARCHAR2(32),
  c29          VARCHAR2(30),
  c30          DATE
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

prompt
prompt Creating table B_ACEWORK
prompt ========================
prompt
create table PCACE.B_ACEWORK
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           VARCHAR2(50),
  c3           NUMBER(6),
  c4           NUMBER(6),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           VARCHAR2(32),
  c8           VARCHAR2(30),
  c9           DATE,
  c10          VARCHAR2(100),
  c11          VARCHAR2(32),
  c12          VARCHAR2(30),
  c13          DATE,
  c14          VARCHAR2(200),
  c15          VARCHAR2(30)
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
alter table PCACE.B_ACEWORK
  add constraint B_ACEWORK_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table B_ACTION
prompt =======================
prompt
create table PCACE.B_ACTION
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(50),
  c2           VARCHAR2(50),
  c3           NUMBER(6),
  c4           VARCHAR2(32),
  c5           NUMBER(6),
  c6           NUMBER(6),
  c7           VARCHAR2(20),
  c8           NUMBER(6),
  c9           DATE,
  c10          VARCHAR2(20),
  c11          VARCHAR2(500),
  c12          VARCHAR2(200),
  c13          VARCHAR2(50),
  c14          VARCHAR2(200),
  c15          VARCHAR2(200),
  c16          VARCHAR2(200),
  c17          VARCHAR2(200),
  c18          VARCHAR2(200),
  c19          CHAR(1) default '0',
  c20          CHAR(1) default '0',
  c21          CHAR(1) default '0',
  c22          CHAR(1) default '0',
  c23          CHAR(1) default '0',
  c24          DATE,
  c25          VARCHAR2(100),
  c26          VARCHAR2(100),
  c27          VARCHAR2(100),
  c28          VARCHAR2(100),
  c29          VARCHAR2(100),
  c30          VARCHAR2(200),
  c31          VARCHAR2(200),
  c32          VARCHAR2(200),
  c33          VARCHAR2(200),
  c34          VARCHAR2(200),
  c35          NUMBER(6),
  c36          NUMBER(6),
  c37          NUMBER(6),
  c38          NUMBER(6),
  c39          NUMBER(6),
  c40          CHAR(1) default '0',
  c41          CHAR(1) default '0',
  c42          CHAR(1) default '0',
  c43          CHAR(1) default '0',
  c44          CHAR(1) default '0',
  c45          VARCHAR2(50),
  c46          VARCHAR2(30),
  c47          VARCHAR2(30),
  c48          VARCHAR2(50),
  c49          DATE,
  c50          VARCHAR2(30),
  c51          VARCHAR2(200),
  c52          VARCHAR2(100),
  c53          NUMBER(6),
  c54          VARCHAR2(50),
  c55          VARCHAR2(200),
  c56          VARCHAR2(100),
  c57          NUMBER(6),
  c58          VARCHAR2(100),
  c59          CHAR(1),
  c60          NUMBER(16) default -1,
  c61          NUMBER(6),
  c62          NUMBER(6),
  c63          NUMBER(6),
  c64          NUMBER(6),
  c65          NUMBER(6)
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
alter table PCACE.B_ACTION
  add constraint B_ACTION_PK primary key (DATAID)
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

prompt
prompt Creating table B_BILL
prompt =====================
prompt
create table PCACE.B_BILL
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
  c4           NUMBER(14),
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          NUMBER(6),
  c11          VARCHAR2(50),
  c12          VARCHAR2(30),
  c13          VARCHAR2(100),
  c14          VARCHAR2(30),
  c15          VARCHAR2(32),
  c16          VARCHAR2(30),
  c17          DATE,
  c18          VARCHAR2(30),
  c19          VARCHAR2(32),
  c20          VARCHAR2(30),
  c21          DATE,
  c22          VARCHAR2(30),
  c23          VARCHAR2(30),
  c24          VARCHAR2(30),
  c25          VARCHAR2(30)
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
alter table PCACE.B_BILL
  add constraint B_BILL_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table B_CANDIDATE
prompt ==========================
prompt
create table PCACE.B_CANDIDATE
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
  c4           DATE,
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(20),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(30),
  c11          NUMBER(3),
  c12          NUMBER(6),
  c13          NUMBER(6),
  c14          VARCHAR2(30),
  c15          VARCHAR2(30),
  c16          VARCHAR2(30),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(4),
  c21          VARCHAR2(30),
  c22          VARCHAR2(30),
  c23          VARCHAR2(30),
  c24          NUMBER(6),
  c25          NUMBER(6),
  c26          NUMBER(6),
  c27          NUMBER(11) default 0,
  c28          NUMBER(11) default 0,
  c29          NUMBER(11) default 0,
  c30          NUMBER(11) default 0,
  c31          NUMBER(11) default 0,
  c32          NUMBER(11) default 0,
  c33          NUMBER(11),
  c34          NUMBER(11),
  c35          NUMBER(11),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(50),
  c39          NUMBER(6) default 0,
  c40          NUMBER(6) default 0,
  c41          VARCHAR2(100),
  c42          VARCHAR2(100),
  c43          VARCHAR2(30),
  c44          VARCHAR2(30),
  c45          VARCHAR2(100),
  c46          VARCHAR2(100),
  c47          VARCHAR2(100),
  c48          VARCHAR2(100),
  c49          VARCHAR2(100),
  c50          VARCHAR2(100),
  c51          VARCHAR2(100),
  c52          VARCHAR2(4000),
  c53          VARCHAR2(4000),
  c54          VARCHAR2(4000),
  c55          VARCHAR2(4000),
  c56          VARCHAR2(4000),
  c57          VARCHAR2(2000),
  c58          VARCHAR2(2000),
  c59          VARCHAR2(2000),
  c60          VARCHAR2(4000),
  c61          VARCHAR2(200),
  c62          VARCHAR2(200),
  c63          VARCHAR2(4000),
  c64          VARCHAR2(4000),
  c65          VARCHAR2(10),
  c66          NUMBER(6) default 0,
  c67          VARCHAR2(32),
  c68          NUMBER(11),
  c69          NUMBER(6),
  c70          NUMBER(6),
  c71          NUMBER(6),
  c72          DATE,
  c73          DATE,
  c74          VARCHAR2(32),
  c75          VARCHAR2(30),
  c76          DATE,
  c77          VARCHAR2(50),
  c78          VARCHAR2(20),
  c79          DATE,
  c80          VARCHAR2(200),
  c81          DATE,
  c82          NUMBER(6),
  c83          DATE,
  c84          DATE,
  c85          NUMBER(6),
  c86          DATE,
  c87          DATE,
  c88          VARCHAR2(500),
  c89          VARCHAR2(500),
  c90          NUMBER(6)
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
alter table PCACE.B_CANDIDATE
  add constraint B_CANDIDATE_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_COLLECT
prompt ==================================
prompt
create table PCACE.B_CANDIDATE_COLLECT
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           NUMBER(6),
  c5           NUMBER(6)
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
alter table PCACE.B_CANDIDATE_COLLECT
  add constraint B_CANDIDATE_COLLECT_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table B_CANDIDATE_CVCERTIFICATE
prompt ========================================
prompt
create table PCACE.B_CANDIDATE_CVCERTIFICATE
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(50),
  c5           VARCHAR2(30),
  c6           VARCHAR2(200),
  c7           VARCHAR2(200),
  c8           VARCHAR2(50),
  c9           VARCHAR2(30),
  c10          DATE
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
alter table PCACE.B_CANDIDATE_CVCERTIFICATE
  add constraint B_CANDIDATE_CVCERTIFICATE_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_CVEDUCATION
prompt ======================================
prompt
create table PCACE.B_CANDIDATE_CVEDUCATION
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(50),
  c6           VARCHAR2(50),
  c7           NUMBER(6),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(50),
  c11          VARCHAR2(30),
  c12          DATE
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
alter table PCACE.B_CANDIDATE_CVEDUCATION
  add constraint B_CANDIDATE_CVEDUCATION_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_CVPROJECT
prompt ====================================
prompt
create table PCACE.B_CANDIDATE_CVPROJECT
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(100),
  c6           VARCHAR2(50),
  c7           VARCHAR2(1000),
  c8           VARCHAR2(500),
  c9           VARCHAR2(500),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(50),
  c13          VARCHAR2(30),
  c14          DATE
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
alter table PCACE.B_CANDIDATE_CVPROJECT
  add constraint B_CANDIDATE_CVPROJECT_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_CVTRAIN
prompt ==================================
prompt
create table PCACE.B_CANDIDATE_CVTRAIN
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(50),
  c6           VARCHAR2(200),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(50),
  c10          VARCHAR2(30),
  c11          DATE
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
alter table PCACE.B_CANDIDATE_CVTRAIN
  add constraint B_CANDIDATE_CVTRAIN_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_CVWORK
prompt =================================
prompt
create table PCACE.B_CANDIDATE_CVWORK
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           VARCHAR2(30),
  c8           VARCHAR2(100),
  c9           VARCHAR2(100),
  c10          VARCHAR2(100),
  c11          NUMBER(6),
  c12          NUMBER(6),
  c13          VARCHAR2(100),
  c14          VARCHAR2(200),
  c15          VARCHAR2(30),
  c16          VARCHAR2(1000),
  c17          VARCHAR2(100),
  c18          VARCHAR2(1000),
  c19          NUMBER(6) default 0,
  c20          VARCHAR2(50),
  c21          VARCHAR2(50),
  c22          VARCHAR2(30),
  c23          DATE,
  c24          NUMBER(6) default 0,
  c25          VARCHAR2(200),
  c26          CHAR(1) default '0',
  c27          NUMBER(6) default 0,
  c28          VARCHAR2(1000),
  c29          VARCHAR2(1000),
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
alter table PCACE.B_CANDIDATE_CVWORK
  add constraint B_CANDIDATE_CVWORK_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_FILES
prompt ================================
prompt
create table PCACE.B_CANDIDATE_FILES
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           NUMBER(6),
  c4           VARCHAR2(50),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           VARCHAR2(10),
  c8           VARCHAR2(200),
  c9           VARCHAR2(50)
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
alter table PCACE.B_CANDIDATE_FILES
  add constraint B_CANDIDATE_FILES_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table B_CANDIDATE_HCCOMMENT
prompt ====================================
prompt
create table PCACE.B_CANDIDATE_HCCOMMENT
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           DATE,
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(2000),
  c8           VARCHAR2(4000),
  c9           VARCHAR2(2000),
  c10          NUMBER(6),
  c11          NUMBER(6),
  c12          VARCHAR2(500),
  c13          VARCHAR2(500),
  c14          VARCHAR2(500),
  c15          VARCHAR2(500),
  c16          VARCHAR2(500),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(30),
  c21          VARCHAR2(30),
  c22          VARCHAR2(2000),
  c23          NUMBER(6),
  c24          NUMBER(6),
  c25          NUMBER(6),
  c26          NUMBER(6),
  c27          NUMBER(6),
  c28          VARCHAR2(32),
  c29          VARCHAR2(30),
  c30          DATE
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
alter table PCACE.B_CANDIDATE_HCCOMMENT
  add constraint B_CANDIDATE_HCCOMMENT_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_INTERVIEW
prompt ====================================
prompt
create table PCACE.B_CANDIDATE_INTERVIEW
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(50),
  c2           NUMBER(6),
  c3           CHAR(1),
  c4           VARCHAR2(50),
  c5           VARCHAR2(30),
  c6           VARCHAR2(100),
  c7           DATE,
  c8           DATE,
  c9           VARCHAR2(200),
  c10          NUMBER(6),
  c11          DATE,
  c12          VARCHAR2(50),
  c13          VARCHAR2(500),
  c14          NUMBER(6),
  c15          DATE,
  c16          VARCHAR2(50),
  c17          VARCHAR2(500),
  c18          VARCHAR2(32),
  c19          VARCHAR2(50),
  c20          VARCHAR2(30),
  c21          VARCHAR2(30),
  c22          VARCHAR2(30),
  c23          VARCHAR2(32),
  c24          VARCHAR2(30),
  c25          DATE
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
alter table PCACE.B_CANDIDATE_INTERVIEW
  add constraint B_CANDIDATE_INTERVIEW_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_MARKER
prompt =================================
prompt
create table PCACE.B_CANDIDATE_MARKER
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           NUMBER(6),
  c5           NUMBER(6),
  c6           VARCHAR2(100),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(32),
  c10          VARCHAR2(30),
  c11          DATE
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
alter table PCACE.B_CANDIDATE_MARKER
  add constraint B_CANDIDATE_MARKER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table B_CANDIDATE_ORGAN_RELATION
prompt =========================================
prompt
create table PCACE.B_CANDIDATE_ORGAN_RELATION
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(11),
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
alter table PCACE.B_CANDIDATE_ORGAN_RELATION
  add constraint B_CANDIDATE_ORGAN_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table B_CANDIDATE_PROCESS
prompt ==================================
prompt
create table PCACE.B_CANDIDATE_PROCESS
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(50),
  c2           NUMBER(6),
  c3           VARCHAR2(50),
  c4           VARCHAR2(50),
  c5           VARCHAR2(32),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           NUMBER(6),
  c9           VARCHAR2(100),
  c10          VARCHAR2(200),
  c11          VARCHAR2(1000),
  c12          NUMBER(6),
  c13          VARCHAR2(200),
  c14          DATE,
  c15          DATE,
  c16          NUMBER(14),
  c17          VARCHAR2(100),
  c18          NUMBER(6) default 0,
  c19          NUMBER(6),
  c20          VARCHAR2(200),
  c21          NUMBER(6),
  c22          DATE,
  c23          VARCHAR2(200),
  c24          VARCHAR2(200),
  c25          VARCHAR2(200),
  c26          VARCHAR2(200),
  c27          VARCHAR2(50),
  c28          VARCHAR2(30),
  c29          DATE,
  c30          VARCHAR2(200),
  c31          VARCHAR2(32),
  c32          NUMBER(14),
  c33          VARCHAR2(200),
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
alter table PCACE.B_CANDIDATE_PROCESS
  add constraint B_CANDIDATE_PROCESS_PK primary key (DATAID)
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

prompt
prompt Creating table B_CANDIDATE_PROCESS_HIS
prompt ======================================
prompt
create table PCACE.B_CANDIDATE_PROCESS_HIS
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(50),
  c2           NUMBER(6),
  c3           VARCHAR2(50),
  c4           VARCHAR2(50),
  c5           VARCHAR2(50),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           NUMBER(6),
  c9           VARCHAR2(100),
  c10          VARCHAR2(200),
  c11          VARCHAR2(1000),
  c12          NUMBER(6),
  c13          VARCHAR2(200),
  c14          DATE,
  c15          DATE,
  c16          NUMBER(14),
  c17          VARCHAR2(100),
  c18          NUMBER(6) default 0,
  c19          NUMBER(6),
  c20          VARCHAR2(200),
  c21          NUMBER(6),
  c22          DATE,
  c23          VARCHAR2(200),
  c24          VARCHAR2(200),
  c25          VARCHAR2(200),
  c26          VARCHAR2(200),
  c27          VARCHAR2(50),
  c28          VARCHAR2(30),
  c29          DATE,
  c30          VARCHAR2(200),
  c31          VARCHAR2(32),
  c32          NUMBER(14),
  c33          VARCHAR2(200),
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

prompt
prompt Creating table B_HR
prompt ===================
prompt
create table PCACE.B_HR
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(11),
  c4           VARCHAR2(30),
  c5           VARCHAR2(30),
  c6           VARCHAR2(30),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(100),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(30),
  c13          VARCHAR2(30),
  c14          VARCHAR2(30),
  c15          NUMBER(6),
  c16          VARCHAR2(50),
  c17          NUMBER(6) default 203000,
  c18          NUMBER(6) default 130001,
  c19          NUMBER(14) default 0,
  c20          NUMBER(14) default 0,
  c21          NUMBER(14) default 0,
  c22          NUMBER(14) default 0,
  c23          NUMBER(14) default 0,
  c24          NUMBER(14) default 0,
  c25          NUMBER(14) default 0,
  c26          NUMBER(14) default 0,
  c27          NUMBER(14) default 0,
  c28          NUMBER(14) default 0,
  c29          NUMBER(14) default 0,
  c30          NUMBER(14) default 0,
  c31          NUMBER(6) default 0,
  c32          NUMBER(6),
  c33          NUMBER(6),
  c34          NUMBER(6),
  c35          NUMBER(6),
  c36          NUMBER(6),
  c37          NUMBER(6),
  c38          NUMBER(6),
  c39          NUMBER(6),
  c40          NUMBER(6)
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
alter table PCACE.B_HR
  add constraint B_HR_PK primary key (DATAID)
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

prompt
prompt Creating table B_HUNTER
prompt =======================
prompt
create table PCACE.B_HUNTER
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(11),
  c4           VARCHAR2(30),
  c5           NUMBER(6),
  c6           VARCHAR2(30),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(100),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(30),
  c13          VARCHAR2(30),
  c14          VARCHAR2(30),
  c15          NUMBER(6),
  c16          NUMBER(6) default 0,
  c17          NUMBER(6) default 203000,
  c18          NUMBER(6) default 130001,
  c19          NUMBER(14) default 0,
  c20          NUMBER(14) default 0,
  c21          NUMBER(14) default 0,
  c22          NUMBER(14) default 0,
  c23          NUMBER(14) default 0,
  c24          NUMBER(14) default 0,
  c25          NUMBER(14) default 0,
  c26          NUMBER(14) default 0,
  c27          NUMBER(14) default 0,
  c28          NUMBER(14) default 0,
  c29          NUMBER(14) default 0,
  c30          NUMBER(14) default 0,
  c31          NUMBER(6) default 0,
  c32          DATE,
  c33          VARCHAR2(30),
  c34          VARCHAR2(20),
  c35          VARCHAR2(200),
  c36          VARCHAR2(200),
  c37          VARCHAR2(200),
  c38          VARCHAR2(200),
  c39          NUMBER(6),
  c40          NUMBER(6)
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
alter table PCACE.B_HUNTER
  add constraint B_HUNTER_PK primary key (DATAID)
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

prompt
prompt Creating table B_JOB
prompt ====================
prompt
create table PCACE.B_JOB
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(100),
  c2           VARCHAR2(50),
  c3           NUMBER(6),
  c4           NUMBER(6),
  c5           VARCHAR2(32),
  c6           NUMBER(11),
  c7           VARCHAR2(50),
  c8           VARCHAR2(50),
  c9           VARCHAR2(50),
  c10          VARCHAR2(50),
  c11          VARCHAR2(50),
  c12          VARCHAR2(500),
  c13          VARCHAR2(1000),
  c14          VARCHAR2(1000),
  c15          VARCHAR2(100) default '0',
  c16          CHAR(1),
  c17          VARCHAR2(200),
  c18          DATE,
  c19          NUMBER(6),
  c20          VARCHAR2(100),
  c21          VARCHAR2(20),
  c22          VARCHAR2(30),
  c23          VARCHAR2(30),
  c24          VARCHAR2(20),
  c25          VARCHAR2(30)
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
alter table PCACE.B_JOB
  add constraint B_JOB_PK primary key (DATAID)
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

prompt
prompt Creating table B_MMORGAN
prompt ========================
prompt
create table PCACE.B_MMORGAN
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
  c5           NUMBER(6) not null,
  c6           NUMBER(6) not null,
  c7           NUMBER(6),
  c8           NUMBER(6) not null,
  c9           VARCHAR2(30),
  c10          VARCHAR2(30),
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
  c22          VARCHAR2(50),
  c23          VARCHAR2(50),
  c24          NUMBER(6) default 0,
  c25          NUMBER(14) default 0,
  c26          NUMBER(14) default 0,
  c27          NUMBER(14,2) default 0,
  c28          VARCHAR2(30),
  c29          VARCHAR2(100),
  c30          VARCHAR2(30),
  c31          VARCHAR2(2000),
  c32          VARCHAR2(200),
  c33          VARCHAR2(200),
  c34          VARCHAR2(20),
  c35          VARCHAR2(30),
  c36          VARCHAR2(100),
  c37          VARCHAR2(100),
  c38          VARCHAR2(30),
  c39          VARCHAR2(30),
  c40          VARCHAR2(100)
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
alter table PCACE.B_MMORGAN
  add constraint B_MMORGAN_PK primary key (DATAID)
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

prompt
prompt Creating table B_MMORGAN_AGREEMENT
prompt ==================================
prompt
create table PCACE.B_MMORGAN_AGREEMENT
(
  dataid       NUMBER(11) not null,
  parentdataid NUMBER(9) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           DATE,
  c3           VARCHAR2(20),
  c4           VARCHAR2(20),
  c5           NUMBER(6),
  c6           VARCHAR2(30),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(4000),
  c11          NUMBER(6),
  c12          VARCHAR2(200)
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
alter table PCACE.B_MMORGAN_AGREEMENT
  add constraint B_MMORGAN_AGREEMENT_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table B_MMORGAN_INVITECODE
prompt ===================================
prompt
create table PCACE.B_MMORGAN_INVITECODE
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           NUMBER(11),
  c3           VARCHAR2(30),
  c4           NUMBER(6),
  c5           NUMBER(6),
  c6           DATE
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
alter table PCACE.B_MMORGAN_INVITECODE
  add constraint B_MMORGAN_INVITECODE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table B_STAT
prompt =====================
prompt
create table PCACE.B_STAT
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           NUMBER(6),
  c3           NUMBER(11),
  c4           NUMBER(11),
  c5           NUMBER(11),
  c6           NUMBER(11),
  c7           NUMBER(11),
  c8           NUMBER(11),
  c9           NUMBER(11),
  c10          NUMBER(11),
  c11          NUMBER(11),
  c12          NUMBER(11),
  c13          NUMBER(11),
  c14          NUMBER(11),
  c15          NUMBER(16,2),
  c16          NUMBER(16,2),
  c17          NUMBER(11),
  c18          NUMBER(11),
  c19          NUMBER(11),
  c20          NUMBER(11),
  c21          NUMBER(11),
  c22          NUMBER(11),
  c23          NUMBER(11),
  c24          NUMBER(11),
  c25          NUMBER(11)
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
alter table PCACE.B_STAT
  add constraint B_STAT_PK primary key (DATAID)
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

prompt
prompt Creating table B_USERLOGIN
prompt ==========================
prompt
create table PCACE.B_USERLOGIN
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
  c30          VARCHAR2(100),
  c31          VARCHAR2(30),
  c32          VARCHAR2(30),
  c33          VARCHAR2(30),
  c34          VARCHAR2(30),
  c35          VARCHAR2(30),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(30),
  c39          VARCHAR2(30),
  c40          VARCHAR2(30),
  c41          VARCHAR2(30),
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
  c53          DATE,
  c54          DATE,
  c55          NUMBER(6),
  c56          NUMBER(6),
  c57          NUMBER(6),
  c58          NUMBER(6),
  c59          NUMBER(6),
  c60          NUMBER(6)
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
alter table PCACE.B_USERLOGIN
  add constraint B_USERLOGIN_PK primary key (DATAID)
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

prompt
prompt Creating table B_USER_LOCATION
prompt ==============================
prompt
create table PCACE.B_USER_LOCATION
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

prompt
prompt Creating table B_VOTE_JOBTOP
prompt ============================
prompt
create table PCACE.B_VOTE_JOBTOP
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           DATE,
  c4           VARCHAR2(500),
  c5           VARCHAR2(500)
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
alter table PCACE.B_VOTE_JOBTOP
  add constraint B_VOTE_JOBTOP_PK primary key (DATAID)
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

prompt
prompt Creating table IB_DATAATTACHFILE
prompt ================================
prompt
create table PCACE.IB_DATAATTACHFILE
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
alter table PCACE.IB_DATAATTACHFILE
  add constraint IB_DATAATTACHFILE_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_DATAEXTINFO
prompt =============================
prompt
create table PCACE.IB_DATAEXTINFO
(
  id            NUMBER(11) not null,
  tableid       NUMBER(6) not null,
  dataid        NUMBER(9) not null,
  extcode       NUMBER(6) not null,
  extnamezh     VARCHAR2(100) not null,
  extnamezhs    VARCHAR2(20),
  extnameen     VARCHAR2(100),
  extnameens    VARCHAR2(20),
  extnamefr1    VARCHAR2(100),
  extnamefr1s   VARCHAR2(20),
  extnamefr2    VARCHAR2(100),
  extnamefr2s   VARCHAR2(20),
  extnamefr3    VARCHAR2(100),
  extnamefr3s   VARCHAR2(20),
  extsummary    VARCHAR2(200),
  extsubject    VARCHAR2(40),
  attachfilenum NUMBER(6) default 0,
  dataresource  VARCHAR2(100),
  datadate      DATE default sysdate,
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
    minextents 1
    maxextents unlimited
  );
alter table PCACE.IB_DATAEXTINFO
  add constraint IB_DATAEXTINFO_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_DATARESOURCE001
prompt =================================
prompt
create table PCACE.IB_DATARESOURCE001
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
alter table PCACE.IB_DATARESOURCE001
  add constraint IB_DATARESOURCE001_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_DATARESOURCE002
prompt =================================
prompt
create table PCACE.IB_DATARESOURCE002
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
alter table PCACE.IB_DATARESOURCE002
  add constraint IB_DATARESOURCE002_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_DATARESOURCE003
prompt =================================
prompt
create table PCACE.IB_DATARESOURCE003
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
alter table PCACE.IB_DATARESOURCE003
  add constraint IB_DATARESOURCE003_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_DATARESOURCE004
prompt =================================
prompt
create table PCACE.IB_DATARESOURCE004
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
alter table PCACE.IB_DATARESOURCE004
  add constraint IB_DATARESOURCE004_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_FORMATION
prompt ===========================
prompt
create table PCACE.IB_FORMATION
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
alter table PCACE.IB_FORMATION
  add constraint IB_FORMATION_PK primary key (FORMATIONID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_PROCESS
prompt =========================
prompt
create table PCACE.IB_PROCESS
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
alter table PCACE.IB_PROCESS
  add constraint IB_PROCESS_PK primary key (PROCESSID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_PROCESSDETAIL
prompt ===============================
prompt
create table PCACE.IB_PROCESSDETAIL
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
alter table PCACE.IB_PROCESSDETAIL
  add constraint IB_PROCESSDETAIL_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IB_PROCESSMEMO
prompt =============================
prompt
create table PCACE.IB_PROCESSMEMO
(
  id        NUMBER(9) not null,
  processid NUMBER(9),
  auther    NUMBER(6),
  actmemo   VARCHAR2(200),
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
    minextents 1
    maxextents unlimited
  );
alter table PCACE.IB_PROCESSMEMO
  add constraint IB_PROCESSMEMO_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table I_AREA
prompt =====================
prompt
create table PCACE.I_AREA
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
alter table PCACE.I_AREA
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

prompt
prompt Creating table I_BULLETIN
prompt =========================
prompt
create table PCACE.I_BULLETIN
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
alter table PCACE.I_BULLETIN
  add constraint I_BULLETIN_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table I_DATAMODULE
prompt ===========================
prompt
create table PCACE.I_DATAMODULE
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
alter table PCACE.I_DATAMODULE
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

prompt
prompt Creating table I_DATAMODULECOLUMN
prompt =================================
prompt
create table PCACE.I_DATAMODULECOLUMN
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
alter table PCACE.I_DATAMODULECOLUMN
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

prompt
prompt Creating table I_DATAPARAMTYPE
prompt ==============================
prompt
create table PCACE.I_DATAPARAMTYPE
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
alter table PCACE.I_DATAPARAMTYPE
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

prompt
prompt Creating table I_DATATABLE
prompt ==========================
prompt
create table PCACE.I_DATATABLE
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
alter table PCACE.I_DATATABLE
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

prompt
prompt Creating table I_DATATABLECOLUMN
prompt ================================
prompt
create table PCACE.I_DATATABLECOLUMN
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
alter table PCACE.I_DATATABLECOLUMN
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

prompt
prompt Creating table I_DATATABLECOLUMNEXTINFO
prompt =======================================
prompt
create table PCACE.I_DATATABLECOLUMNEXTINFO
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
alter table PCACE.I_DATATABLECOLUMNEXTINFO
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

prompt
prompt Creating table I_DATATABLETYPE
prompt ==============================
prompt
create table PCACE.I_DATATABLETYPE
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
alter table PCACE.I_DATATABLETYPE
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

prompt
prompt Creating table I_PROCESS
prompt ========================
prompt
create table PCACE.I_PROCESS
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
alter table PCACE.I_PROCESS
  add constraint I_PROCESS_PK primary key (PSID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table I_PROCESSDESC
prompt ============================
prompt
create table PCACE.I_PROCESSDESC
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
alter table PCACE.I_PROCESSDESC
  add constraint I_PROCESSDESC_PK primary key (CCID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table I_SYSTEMPARAM
prompt ============================
prompt
create table PCACE.I_SYSTEMPARAM
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
alter table PCACE.I_SYSTEMPARAM
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

prompt
prompt Creating table S_MODULE
prompt =======================
prompt
create table PCACE.S_MODULE
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
alter table PCACE.S_MODULE
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

prompt
prompt Creating table S_PARAM
prompt ======================
prompt
create table PCACE.S_PARAM
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
alter table PCACE.S_PARAM
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

prompt
prompt Creating table S_PLATFORM
prompt =========================
prompt
create table PCACE.S_PLATFORM
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
alter table PCACE.S_PLATFORM
  add constraint S_PLATFORM_PK primary key (PLATFORMID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table S_PUBLISHLOG
prompt ===========================
prompt
create table PCACE.S_PUBLISHLOG
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

prompt
prompt Creating table S_QUICKMENU
prompt ==========================
prompt
create table PCACE.S_QUICKMENU
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
alter table PCACE.S_QUICKMENU
  add primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table S_ROLE
prompt =====================
prompt
create table PCACE.S_ROLE
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
alter table PCACE.S_ROLE
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

prompt
prompt Creating table S_ROLE_MODULE
prompt ============================
prompt
create table PCACE.S_ROLE_MODULE
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
alter table PCACE.S_ROLE_MODULE
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

prompt
prompt Creating table S_USER
prompt =====================
prompt
create table PCACE.S_USER
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
alter table PCACE.S_USER
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

prompt
prompt Creating table T_CHAT
prompt =====================
prompt
create table PCACE.T_CHAT
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

prompt
prompt Creating table T_DATALOG
prompt ========================
prompt
create table PCACE.T_DATALOG
(
  id        NUMBER(11) not null,
  logtype   NUMBER(6) not null,
  tableid   NUMBER(6) not null,
  colid     NUMBER(9) default '-1',
  dataid    VARCHAR2(32) default '-1',
  extid     NUMBER(32) default '-1',
  title     VARCHAR2(200) not null,
  context   VARCHAR2(1000) not null,
  userid    VARCHAR2(50) not null,
  username  VARCHAR2(200) not null,
  ipaddress VARCHAR2(50) not null,
  istdate   DATE default sysdate
)
tablespace TABLESPACE_PCACELOG
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

prompt
prompt Creating table T_LOCATION
prompt =========================
prompt
create table PCACE.T_LOCATION
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

prompt
prompt Creating table T_LOG
prompt ====================
prompt
create table PCACE.T_LOG
(
  id        NUMBER(13) not null,
  logtype   NUMBER(6) not null,
  tableid   NUMBER(6) default '-1',
  colid     NUMBER(9) default '-1',
  dataid    VARCHAR2(32) default '-1',
  extid     NUMBER(32) default '-1',
  title     VARCHAR2(200) not null,
  context   VARCHAR2(1000) not null,
  userid    VARCHAR2(50) not null,
  username  VARCHAR2(200) not null,
  ipaddress VARCHAR2(100) not null,
  istdate   DATE default sysdate
)
tablespace TABLESPACE_PCACELOG
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

prompt
prompt Creating table T_MARK
prompt =====================
prompt
create table PCACE.T_MARK
(
  mark    VARCHAR2(20) not null,
  v1      VARCHAR2(200) not null,
  v2      VARCHAR2(200) not null,
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

prompt
prompt Creating table T_MESSAGE
prompt ========================
prompt
create table PCACE.T_MESSAGE
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
alter table PCACE.T_MESSAGE
  add constraint I_MESSAGE_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_MLOG
prompt =====================
prompt
create table PCACE.T_MLOG
(
  id        NUMBER(11) not null,
  logtype   NUMBER(6) not null,
  tableid   NUMBER(6) not null,
  colid     NUMBER(9) default '-1',
  dataid    NUMBER(9) default '-1',
  extid     NUMBER(32) default '-1',
  title     VARCHAR2(200) not null,
  context   VARCHAR2(1000) not null,
  userid    VARCHAR2(50) not null,
  username  VARCHAR2(200) not null,
  ipaddress VARCHAR2(50) not null,
  istdate   DATE default sysdate
)
tablespace TABLESPACE_PCACELOG
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

prompt
prompt Creating table T_PUSHSMSHIS
prompt ===========================
prompt
create table PCACE.T_PUSHSMSHIS
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

prompt
prompt Creating table T_PUSHSMS_ING
prompt ============================
prompt
create table PCACE.T_PUSHSMS_ING
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

prompt
prompt Creating table T_SLOG
prompt =====================
prompt
create table PCACE.T_SLOG
(
  id        NUMBER(20) not null,
  logtype   CHAR(1),
  title     VARCHAR2(200),
  context   VARCHAR2(1000),
  oid       VARCHAR2(50),
  userid    NUMBER(32),
  username  VARCHAR2(200),
  ipaddress VARCHAR2(100),
  istdate   DATE default sysdate
)
tablespace TABLESPACE_PCACELOG
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

prompt
prompt Creating table T_SMSHIS
prompt =======================
prompt
create table PCACE.T_SMSHIS
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
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table T_SMS_ING
prompt ========================
prompt
create table PCACE.T_SMS_ING
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
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table Y_APPMODULE
prompt ==========================
prompt
create table PCACE.Y_APPMODULE
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
alter table PCACE.Y_APPMODULE
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

prompt
prompt Creating table Y_APPMODULEDETAIL
prompt ================================
prompt
create table PCACE.Y_APPMODULEDETAIL
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
alter table PCACE.Y_APPMODULEDETAIL
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

prompt
prompt Creating table Y_APPROLE
prompt ========================
prompt
create table PCACE.Y_APPROLE
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
alter table PCACE.Y_APPROLE
  add constraint Y_APPROLE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_APPROLEMODULE
prompt ==============================
prompt
create table PCACE.Y_APPROLEMODULE
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
alter table PCACE.Y_APPROLEMODULE
  add constraint Y_APPROLEMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_APPVERSION
prompt ===========================
prompt
create table PCACE.Y_APPVERSION
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
alter table PCACE.Y_APPVERSION
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

prompt
prompt Creating table Y_BULLETIN
prompt =========================
prompt
create table PCACE.Y_BULLETIN
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
alter table PCACE.Y_BULLETIN
  add constraint Y_BULLETIN_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_DEPARTMENT
prompt ===========================
prompt
create table PCACE.Y_DEPARTMENT
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
alter table PCACE.Y_DEPARTMENT
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

prompt
prompt Creating table Y_DOTMODULE
prompt ==========================
prompt
create table PCACE.Y_DOTMODULE
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
alter table PCACE.Y_DOTMODULE
  add constraint Y_DOTMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_DOTMODULEDETAIL
prompt ================================
prompt
create table PCACE.Y_DOTMODULEDETAIL
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
alter table PCACE.Y_DOTMODULEDETAIL
  add constraint Y_DOTMODULEDETAIL_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_DOTROLE
prompt ========================
prompt
create table PCACE.Y_DOTROLE
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
alter table PCACE.Y_DOTROLE
  add constraint Y_DOTROLE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_DOTROLEMODULE
prompt ==============================
prompt
create table PCACE.Y_DOTROLEMODULE
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
alter table PCACE.Y_DOTROLEMODULE
  add constraint Y_DOTROLEMODULE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_DOTUSER
prompt ========================
prompt
create table PCACE.Y_DOTUSER
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
alter table PCACE.Y_DOTUSER
  add constraint Y_DOTUSER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_EMP
prompt ====================
prompt
create table PCACE.Y_EMP
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
alter table PCACE.Y_EMP
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

prompt
prompt Creating table Y_JOBPOSITION
prompt ============================
prompt
create table PCACE.Y_JOBPOSITION
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
alter table PCACE.Y_JOBPOSITION
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

prompt
prompt Creating table Y_ORGAN
prompt ======================
prompt
create table PCACE.Y_ORGAN
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
alter table PCACE.Y_ORGAN
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

prompt
prompt Creating table Y_RS_COMPUTER
prompt ============================
prompt
create table PCACE.Y_RS_COMPUTER
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
alter table PCACE.Y_RS_COMPUTER
  add constraint Y_RS_COMPUTER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_RS_OTHERS
prompt ==========================
prompt
create table PCACE.Y_RS_OTHERS
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
alter table PCACE.Y_RS_OTHERS
  add constraint Y_RS_OTHERS_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table Y_SERVER
prompt =======================
prompt
create table PCACE.Y_SERVER
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
alter table PCACE.Y_SERVER
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

prompt
prompt Creating table ZA_ACTION
prompt ========================
prompt
create table PCACE.ZA_ACTION
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZA_BANK
prompt ======================
prompt
create table PCACE.ZA_BANK
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

prompt
prompt Creating table ZA_HCINTERVIEW_QA
prompt ================================
prompt
create table PCACE.ZA_HCINTERVIEW_QA
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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

prompt
prompt Creating table ZA_INDUSTRY
prompt ==========================
prompt
create table PCACE.ZA_INDUSTRY
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
  c3           VARCHAR2(10),
  c4           NUMBER(6),
  c5           VARCHAR2(200)
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

prompt
prompt Creating table ZA_JOB
prompt =====================
prompt
create table PCACE.ZA_JOB
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
  c4           VARCHAR2(20),
  c5           NUMBER(9)
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

prompt
prompt Creating table ZA_ORGAN
prompt =======================
prompt
create table PCACE.ZA_ORGAN
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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

prompt
prompt Creating table ZA_PROCESS
prompt =========================
prompt
create table PCACE.ZA_PROCESS
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
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
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZBO_CANDIDATE
prompt ============================
prompt
create table PCACE.ZBO_CANDIDATE
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
  c3           NUMBER(6),
  c4           DATE,
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(20),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(30),
  c11          NUMBER(3),
  c12          NUMBER(6),
  c13          NUMBER(6),
  c14          VARCHAR2(30),
  c15          VARCHAR2(30),
  c16          VARCHAR2(30),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(4),
  c21          VARCHAR2(30),
  c22          VARCHAR2(30),
  c23          VARCHAR2(30),
  c24          NUMBER(6),
  c25          NUMBER(6),
  c26          NUMBER(6),
  c27          NUMBER(11) default 0,
  c28          NUMBER(11) default 0,
  c29          NUMBER(11) default 0,
  c30          NUMBER(11) default 0,
  c31          NUMBER(11) default 0,
  c32          NUMBER(11),
  c33          NUMBER(11),
  c34          NUMBER(11),
  c35          NUMBER(11),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(50),
  c39          NUMBER(6) default 0,
  c40          NUMBER(6) default 0,
  c41          VARCHAR2(100),
  c42          VARCHAR2(100),
  c43          VARCHAR2(30),
  c44          VARCHAR2(30),
  c45          VARCHAR2(100),
  c46          VARCHAR2(100),
  c47          VARCHAR2(100),
  c48          VARCHAR2(100),
  c49          VARCHAR2(100),
  c50          VARCHAR2(100),
  c51          VARCHAR2(100),
  c52          VARCHAR2(4000),
  c53          VARCHAR2(4000),
  c54          VARCHAR2(4000),
  c55          VARCHAR2(4000),
  c56          VARCHAR2(4000),
  c57          VARCHAR2(2000),
  c58          VARCHAR2(2000),
  c59          VARCHAR2(2000),
  c60          VARCHAR2(4000),
  c61          VARCHAR2(200),
  c62          VARCHAR2(200),
  c63          VARCHAR2(4000),
  c64          VARCHAR2(4000),
  c65          VARCHAR2(10),
  c66          NUMBER(6) default 0,
  c67          VARCHAR2(32),
  c68          NUMBER(11),
  c69          NUMBER(6),
  c70          NUMBER(6),
  c71          NUMBER(6),
  c72          DATE,
  c73          DATE,
  c74          VARCHAR2(32),
  c75          VARCHAR2(30),
  c76          DATE,
  c77          VARCHAR2(50),
  c78          VARCHAR2(20),
  c79          DATE,
  c80          VARCHAR2(200),
  c81          DATE,
  c82          NUMBER(6),
  c83          DATE,
  c84          DATE,
  c85          NUMBER(6),
  c86          DATE,
  c87          DATE,
  c88          VARCHAR2(500),
  c89          VARCHAR2(500),
  c90          NUMBER(6)
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

prompt
prompt Creating table ZBO_CANDIDATE_CVCERTIFICATE
prompt ==========================================
prompt
create table PCACE.ZBO_CANDIDATE_CVCERTIFICATE
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(50),
  c5           VARCHAR2(30),
  c6           VARCHAR2(200),
  c7           VARCHAR2(200),
  c8           VARCHAR2(50),
  c9           VARCHAR2(30),
  c10          DATE
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

prompt
prompt Creating table ZBO_CANDIDATE_CVEDUCATION
prompt ========================================
prompt
create table PCACE.ZBO_CANDIDATE_CVEDUCATION
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(50),
  c6           VARCHAR2(50),
  c7           NUMBER(6),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(50),
  c11          VARCHAR2(30),
  c12          DATE
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

prompt
prompt Creating table ZBO_CANDIDATE_CVPROJECT
prompt ======================================
prompt
create table PCACE.ZBO_CANDIDATE_CVPROJECT
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(100),
  c6           VARCHAR2(50),
  c7           VARCHAR2(1000),
  c8           VARCHAR2(500),
  c9           VARCHAR2(500),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(50),
  c13          VARCHAR2(30),
  c14          DATE
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

prompt
prompt Creating table ZBO_CANDIDATE_CVTRAIN
prompt ====================================
prompt
create table PCACE.ZBO_CANDIDATE_CVTRAIN
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(50),
  c6           VARCHAR2(200),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(50),
  c10          VARCHAR2(30),
  c11          DATE
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

prompt
prompt Creating table ZBO_CANDIDATE_CVWORK
prompt ===================================
prompt
create table PCACE.ZBO_CANDIDATE_CVWORK
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           VARCHAR2(30),
  c8           VARCHAR2(100),
  c9           VARCHAR2(100),
  c10          VARCHAR2(100),
  c11          NUMBER(6),
  c12          NUMBER(6),
  c13          VARCHAR2(200),
  c14          VARCHAR2(100),
  c15          VARCHAR2(30),
  c16          VARCHAR2(1000),
  c17          VARCHAR2(200),
  c18          VARCHAR2(1000),
  c19          NUMBER(6) default 0,
  c20          NUMBER(6),
  c21          VARCHAR2(50),
  c22          VARCHAR2(30),
  c23          DATE,
  c24          NUMBER(6) default 0,
  c25          VARCHAR2(200),
  c26          CHAR(1) default '0',
  c27          NUMBER(6) default 0,
  c28          VARCHAR2(30),
  c29          VARCHAR2(30),
  c30          VARCHAR2(30)
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

prompt
prompt Creating table ZBO_CANDIDATE_HCCOMMENT
prompt ======================================
prompt
create table PCACE.ZBO_CANDIDATE_HCCOMMENT
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
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           DATE,
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(2000),
  c8           VARCHAR2(4000),
  c9           VARCHAR2(2000),
  c10          NUMBER(6),
  c11          NUMBER(6),
  c12          VARCHAR2(500),
  c13          VARCHAR2(500),
  c14          VARCHAR2(500),
  c15          VARCHAR2(500),
  c16          VARCHAR2(500),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(30),
  c21          VARCHAR2(30),
  c22          VARCHAR2(2000),
  c23          NUMBER(6),
  c24          NUMBER(6),
  c25          NUMBER(6),
  c26          NUMBER(6),
  c27          NUMBER(6),
  c28          VARCHAR2(32),
  c29          VARCHAR2(30),
  c30          DATE
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_ACEWORK
prompt =========================
prompt
create table PCACE.ZB_ACEWORK
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           VARCHAR2(50),
  c3           NUMBER(6),
  c4           NUMBER(6),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           VARCHAR2(32),
  c8           VARCHAR2(30),
  c9           DATE,
  c10          VARCHAR2(100),
  c11          VARCHAR2(32),
  c12          VARCHAR2(30),
  c13          DATE,
  c14          VARCHAR2(200),
  c15          VARCHAR2(30)
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

prompt
prompt Creating table ZB_ACTION
prompt ========================
prompt
create table PCACE.ZB_ACTION
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(50),
  c2           VARCHAR2(50),
  c3           NUMBER(6),
  c4           VARCHAR2(32),
  c5           NUMBER(6),
  c6           NUMBER(6),
  c7           VARCHAR2(20),
  c8           NUMBER(6),
  c9           DATE,
  c10          VARCHAR2(20),
  c11          VARCHAR2(500),
  c12          VARCHAR2(200),
  c13          VARCHAR2(50),
  c14          VARCHAR2(200),
  c15          VARCHAR2(200),
  c16          VARCHAR2(200),
  c17          VARCHAR2(200),
  c18          VARCHAR2(200),
  c19          CHAR(1) default '0',
  c20          CHAR(1) default '0',
  c21          CHAR(1) default '0',
  c22          CHAR(1) default '0',
  c23          CHAR(1) default '0',
  c24          DATE,
  c25          VARCHAR2(100),
  c26          VARCHAR2(100),
  c27          VARCHAR2(100),
  c28          VARCHAR2(100),
  c29          VARCHAR2(100),
  c30          VARCHAR2(200),
  c31          VARCHAR2(200),
  c32          VARCHAR2(200),
  c33          VARCHAR2(200),
  c34          VARCHAR2(200),
  c35          NUMBER(6),
  c36          NUMBER(6),
  c37          NUMBER(6),
  c38          NUMBER(6),
  c39          NUMBER(6),
  c40          CHAR(1) default '0',
  c41          CHAR(1) default '0',
  c42          CHAR(1) default '0',
  c43          CHAR(1) default '0',
  c44          CHAR(1) default '0',
  c45          VARCHAR2(50),
  c46          VARCHAR2(30),
  c47          VARCHAR2(30),
  c48          VARCHAR2(50),
  c49          DATE,
  c50          VARCHAR2(30),
  c51          VARCHAR2(200),
  c52          VARCHAR2(100),
  c53          NUMBER(6),
  c54          VARCHAR2(50),
  c55          VARCHAR2(200),
  c56          VARCHAR2(100),
  c57          NUMBER(6),
  c58          VARCHAR2(100),
  c59          CHAR(1),
  c60          NUMBER(16) default -1,
  c61          NUMBER(6),
  c62          NUMBER(6),
  c63          NUMBER(6),
  c64          NUMBER(6),
  c65          NUMBER(6)
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_BILL
prompt ======================
prompt
create table PCACE.ZB_BILL
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
  c4           NUMBER(14),
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          NUMBER(6),
  c11          VARCHAR2(50),
  c12          VARCHAR2(30),
  c13          VARCHAR2(100),
  c14          VARCHAR2(30),
  c15          VARCHAR2(32),
  c16          VARCHAR2(30),
  c17          DATE,
  c18          VARCHAR2(30),
  c19          VARCHAR2(32),
  c20          VARCHAR2(30),
  c21          DATE,
  c22          VARCHAR2(30),
  c23          VARCHAR2(30),
  c24          VARCHAR2(30),
  c25          VARCHAR2(30)
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

prompt
prompt Creating table ZB_CANDIDATE
prompt ===========================
prompt
create table PCACE.ZB_CANDIDATE
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
  c3           NUMBER(6),
  c4           DATE,
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(20),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(30),
  c11          NUMBER(3),
  c12          NUMBER(6),
  c13          NUMBER(6),
  c14          VARCHAR2(30),
  c15          VARCHAR2(30),
  c16          VARCHAR2(30),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(4),
  c21          VARCHAR2(30),
  c22          VARCHAR2(30),
  c23          VARCHAR2(30),
  c24          NUMBER(6),
  c25          NUMBER(6),
  c26          NUMBER(6),
  c27          NUMBER(11) default 0,
  c28          NUMBER(11) default 0,
  c29          NUMBER(11) default 0,
  c30          NUMBER(11) default 0,
  c31          NUMBER(11) default 0,
  c32          NUMBER(11) default 0,
  c33          NUMBER(11),
  c34          NUMBER(11),
  c35          NUMBER(11),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(50),
  c39          NUMBER(6) default 0,
  c40          NUMBER(6) default 0,
  c41          VARCHAR2(100),
  c42          VARCHAR2(100),
  c43          VARCHAR2(30),
  c44          VARCHAR2(30),
  c45          VARCHAR2(100),
  c46          VARCHAR2(100),
  c47          VARCHAR2(100),
  c48          VARCHAR2(100),
  c49          VARCHAR2(100),
  c50          VARCHAR2(100),
  c51          VARCHAR2(100),
  c52          VARCHAR2(4000),
  c53          VARCHAR2(4000),
  c54          VARCHAR2(4000),
  c55          VARCHAR2(4000),
  c56          VARCHAR2(4000),
  c57          VARCHAR2(2000),
  c58          VARCHAR2(2000),
  c59          VARCHAR2(2000),
  c60          VARCHAR2(4000),
  c61          VARCHAR2(200),
  c62          VARCHAR2(200),
  c63          VARCHAR2(4000),
  c64          VARCHAR2(4000),
  c65          VARCHAR2(10),
  c66          NUMBER(6) default 0,
  c67          VARCHAR2(32),
  c68          NUMBER(11),
  c69          NUMBER(6),
  c70          NUMBER(6),
  c71          NUMBER(6),
  c72          DATE,
  c73          DATE,
  c74          VARCHAR2(32),
  c75          VARCHAR2(30),
  c76          DATE,
  c77          VARCHAR2(50),
  c78          VARCHAR2(20),
  c79          DATE,
  c80          VARCHAR2(200),
  c81          DATE,
  c82          NUMBER(6),
  c83          DATE,
  c84          DATE,
  c85          NUMBER(6),
  c86          DATE,
  c87          DATE,
  c88          VARCHAR2(500),
  c89          VARCHAR2(500),
  c90          NUMBER(6)
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_COLLECT
prompt ===================================
prompt
create table PCACE.ZB_CANDIDATE_COLLECT
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
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           NUMBER(6),
  c5           NUMBER(6)
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

prompt
prompt Creating table ZB_CANDIDATE_CVCERTIFICATE
prompt =========================================
prompt
create table PCACE.ZB_CANDIDATE_CVCERTIFICATE
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(50),
  c5           VARCHAR2(30),
  c6           VARCHAR2(200),
  c7           VARCHAR2(200),
  c8           VARCHAR2(50),
  c9           VARCHAR2(30),
  c10          DATE
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_CVEDUCATION
prompt =======================================
prompt
create table PCACE.ZB_CANDIDATE_CVEDUCATION
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(50),
  c6           VARCHAR2(50),
  c7           NUMBER(6),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(50),
  c11          VARCHAR2(30),
  c12          DATE
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_CVPROJECT
prompt =====================================
prompt
create table PCACE.ZB_CANDIDATE_CVPROJECT
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(100),
  c6           VARCHAR2(50),
  c7           VARCHAR2(1000),
  c8           VARCHAR2(500),
  c9           VARCHAR2(500),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(50),
  c13          VARCHAR2(30),
  c14          DATE
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_CVTRAIN
prompt ===================================
prompt
create table PCACE.ZB_CANDIDATE_CVTRAIN
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(50),
  c6           VARCHAR2(200),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(50),
  c10          VARCHAR2(30),
  c11          DATE
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_CVWORK
prompt ==================================
prompt
create table PCACE.ZB_CANDIDATE_CVWORK
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           VARCHAR2(30),
  c8           VARCHAR2(100),
  c9           VARCHAR2(100),
  c10          VARCHAR2(100),
  c11          NUMBER(6),
  c12          NUMBER(6),
  c13          VARCHAR2(100),
  c14          VARCHAR2(200),
  c15          VARCHAR2(30),
  c16          VARCHAR2(1000),
  c17          VARCHAR2(100),
  c18          VARCHAR2(1000),
  c19          NUMBER(6) default 0,
  c20          VARCHAR2(50),
  c21          VARCHAR2(50),
  c22          VARCHAR2(30),
  c23          DATE,
  c24          NUMBER(6) default 0,
  c25          VARCHAR2(200),
  c26          CHAR(1) default '0',
  c27          NUMBER(6) default 0,
  c28          VARCHAR2(1000),
  c29          VARCHAR2(1000),
  c30          VARCHAR2(30)
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_FILES
prompt =================================
prompt
create table PCACE.ZB_CANDIDATE_FILES
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           NUMBER(6),
  c4           VARCHAR2(50),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           VARCHAR2(10),
  c8           VARCHAR2(200),
  c9           VARCHAR2(50)
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

prompt
prompt Creating table ZB_CANDIDATE_HCCOMMENT
prompt =====================================
prompt
create table PCACE.ZB_CANDIDATE_HCCOMMENT
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
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           DATE,
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(2000),
  c8           VARCHAR2(4000),
  c9           VARCHAR2(2000),
  c10          NUMBER(6),
  c11          NUMBER(6),
  c12          VARCHAR2(500),
  c13          VARCHAR2(500),
  c14          VARCHAR2(500),
  c15          VARCHAR2(500),
  c16          VARCHAR2(500),
  c17          VARCHAR2(30),
  c18          VARCHAR2(30),
  c19          VARCHAR2(30),
  c20          VARCHAR2(30),
  c21          VARCHAR2(30),
  c22          VARCHAR2(2000),
  c23          NUMBER(6),
  c24          NUMBER(6),
  c25          NUMBER(6),
  c26          NUMBER(6),
  c27          NUMBER(6),
  c28          VARCHAR2(32),
  c29          VARCHAR2(30),
  c30          DATE
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_INTERVIEW
prompt =====================================
prompt
create table PCACE.ZB_CANDIDATE_INTERVIEW
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
  c1           VARCHAR2(50),
  c2           NUMBER(6),
  c3           CHAR(1),
  c4           VARCHAR2(50),
  c5           VARCHAR2(30),
  c6           VARCHAR2(100),
  c7           DATE,
  c8           DATE,
  c9           VARCHAR2(200),
  c10          NUMBER(6),
  c11          DATE,
  c12          VARCHAR2(50),
  c13          VARCHAR2(500),
  c14          NUMBER(6),
  c15          DATE,
  c16          VARCHAR2(50),
  c17          VARCHAR2(500),
  c18          VARCHAR2(32),
  c19          VARCHAR2(50),
  c20          VARCHAR2(30),
  c21          VARCHAR2(30),
  c22          VARCHAR2(30),
  c23          VARCHAR2(32),
  c24          VARCHAR2(30),
  c25          DATE
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_LANGUAGE
prompt ====================================
prompt
create table PCACE.ZB_CANDIDATE_LANGUAGE
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
  c1           VARCHAR2(32),
  c2           NUMBER(6),
  c3           VARCHAR2(30),
  c4           NUMBER(6),
  c5           NUMBER(6),
  c6           VARCHAR2(32),
  c7           VARCHAR2(30),
  c8           DATE
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

prompt
prompt Creating table ZB_CANDIDATE_MARKER
prompt ==================================
prompt
create table PCACE.ZB_CANDIDATE_MARKER
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
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(6),
  c4           NUMBER(6),
  c5           NUMBER(6),
  c6           VARCHAR2(100),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(32),
  c10          VARCHAR2(30),
  c11          DATE
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

prompt
prompt Creating table ZB_CANDIDATE_ORGAN_RELATION
prompt ==========================================
prompt
create table PCACE.ZB_CANDIDATE_ORGAN_RELATION
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
  c1           VARCHAR2(32),
  c2           VARCHAR2(32),
  c3           NUMBER(11),
  c4           NUMBER(6)
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

prompt
prompt Creating table ZB_CANDIDATE_PROCESS
prompt ===================================
prompt
create table PCACE.ZB_CANDIDATE_PROCESS
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
  c1           VARCHAR2(50),
  c2           NUMBER(6),
  c3           VARCHAR2(50),
  c4           VARCHAR2(50),
  c5           VARCHAR2(32),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           NUMBER(6),
  c9           VARCHAR2(100),
  c10          VARCHAR2(200),
  c11          VARCHAR2(1000),
  c12          NUMBER(6),
  c13          VARCHAR2(200),
  c14          DATE,
  c15          DATE,
  c16          NUMBER(14),
  c17          VARCHAR2(100),
  c18          NUMBER(6) default 0,
  c19          NUMBER(6),
  c20          VARCHAR2(200),
  c21          NUMBER(6),
  c22          DATE,
  c23          VARCHAR2(200),
  c24          VARCHAR2(200),
  c25          VARCHAR2(200),
  c26          VARCHAR2(200),
  c27          VARCHAR2(50),
  c28          VARCHAR2(30),
  c29          DATE,
  c30          VARCHAR2(200),
  c31          VARCHAR2(32),
  c32          NUMBER(14),
  c33          VARCHAR2(200),
  c34          VARCHAR2(30),
  c35          VARCHAR2(30),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(30),
  c39          VARCHAR2(30),
  c40          VARCHAR2(30)
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_CANDIDATE_PROCESS_HIS
prompt =======================================
prompt
create table PCACE.ZB_CANDIDATE_PROCESS_HIS
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
  c1           VARCHAR2(50),
  c2           NUMBER(6),
  c3           VARCHAR2(50),
  c4           VARCHAR2(50),
  c5           VARCHAR2(50),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           NUMBER(6),
  c9           VARCHAR2(100),
  c10          VARCHAR2(200),
  c11          VARCHAR2(1000),
  c12          NUMBER(6),
  c13          VARCHAR2(200),
  c14          DATE,
  c15          DATE,
  c16          NUMBER(14),
  c17          VARCHAR2(100),
  c18          NUMBER(6) default 0,
  c19          NUMBER(6),
  c20          VARCHAR2(200),
  c21          NUMBER(6),
  c22          DATE,
  c23          VARCHAR2(200),
  c24          VARCHAR2(200),
  c25          VARCHAR2(200),
  c26          VARCHAR2(200),
  c27          VARCHAR2(50),
  c28          VARCHAR2(30),
  c29          DATE,
  c30          VARCHAR2(200),
  c31          VARCHAR2(32),
  c32          NUMBER(14),
  c33          VARCHAR2(200),
  c34          VARCHAR2(30),
  c35          VARCHAR2(30),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(30),
  c39          VARCHAR2(30),
  c40          VARCHAR2(30)
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

prompt
prompt Creating table ZB_HR
prompt ====================
prompt
create table PCACE.ZB_HR
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
  c3           NUMBER(11),
  c4           VARCHAR2(30),
  c5           VARCHAR2(30),
  c6           VARCHAR2(30),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(100),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(30),
  c13          VARCHAR2(30),
  c14          VARCHAR2(30),
  c15          NUMBER(6),
  c16          VARCHAR2(50),
  c17          NUMBER(6) default 203000,
  c18          NUMBER(6) default 130001,
  c19          NUMBER(14) default 0,
  c20          NUMBER(14) default 0,
  c21          NUMBER(14) default 0,
  c22          NUMBER(14) default 0,
  c23          NUMBER(14) default 0,
  c24          NUMBER(14) default 0,
  c25          NUMBER(14) default 0,
  c26          NUMBER(14) default 0,
  c27          NUMBER(14) default 0,
  c28          NUMBER(14) default 0,
  c29          NUMBER(14) default 0,
  c30          NUMBER(14) default 0,
  c31          NUMBER(6) default 0,
  c32          NUMBER(6),
  c33          NUMBER(6),
  c34          NUMBER(6),
  c35          NUMBER(6),
  c36          NUMBER(6),
  c37          NUMBER(6),
  c38          NUMBER(6),
  c39          NUMBER(6),
  c40          NUMBER(6)
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

prompt
prompt Creating table ZB_HUNTER
prompt ========================
prompt
create table PCACE.ZB_HUNTER
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
  c3           NUMBER(11),
  c4           VARCHAR2(30),
  c5           NUMBER(6),
  c6           VARCHAR2(30),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(100),
  c10          VARCHAR2(30),
  c11          VARCHAR2(30),
  c12          VARCHAR2(30),
  c13          VARCHAR2(30),
  c14          VARCHAR2(30),
  c15          NUMBER(6),
  c16          NUMBER(6) default 0,
  c17          NUMBER(6) default 203000,
  c18          NUMBER(6) default 130001,
  c19          NUMBER(14) default 0,
  c20          NUMBER(14) default 0,
  c21          NUMBER(14) default 0,
  c22          NUMBER(14) default 0,
  c23          NUMBER(14) default 0,
  c24          NUMBER(14) default 0,
  c25          NUMBER(14) default 0,
  c26          NUMBER(14) default 0,
  c27          NUMBER(14) default 0,
  c28          NUMBER(14) default 0,
  c29          NUMBER(14) default 0,
  c30          NUMBER(14) default 0,
  c31          NUMBER(6) default 0,
  c32          DATE,
  c33          VARCHAR2(30),
  c34          VARCHAR2(20),
  c35          VARCHAR2(200),
  c36          VARCHAR2(200),
  c37          VARCHAR2(200),
  c38          VARCHAR2(200),
  c39          NUMBER(6),
  c40          NUMBER(6)
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

prompt
prompt Creating table ZB_JOB
prompt =====================
prompt
create table PCACE.ZB_JOB
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
  c1           VARCHAR2(100),
  c2           VARCHAR2(50),
  c3           NUMBER(6),
  c4           NUMBER(6),
  c5           VARCHAR2(32),
  c6           NUMBER(11),
  c7           VARCHAR2(50),
  c8           VARCHAR2(50),
  c9           VARCHAR2(50),
  c10          VARCHAR2(50),
  c11          VARCHAR2(50),
  c12          VARCHAR2(500),
  c13          VARCHAR2(1000),
  c14          VARCHAR2(1000),
  c15          VARCHAR2(100) default '0',
  c16          CHAR(1),
  c17          VARCHAR2(200),
  c18          DATE,
  c19          NUMBER(6),
  c20          VARCHAR2(100),
  c21          VARCHAR2(20),
  c22          VARCHAR2(30),
  c23          VARCHAR2(30),
  c24          VARCHAR2(20),
  c25          VARCHAR2(30)
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_MMORGAN
prompt =========================
prompt
create table PCACE.ZB_MMORGAN
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
  c5           NUMBER(6) not null,
  c6           NUMBER(6) not null,
  c7           NUMBER(6),
  c8           NUMBER(6) not null,
  c9           VARCHAR2(30),
  c10          VARCHAR2(30),
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
  c22          VARCHAR2(50),
  c23          VARCHAR2(50),
  c24          NUMBER(6) default 0,
  c25          NUMBER(14) default 0,
  c26          NUMBER(14) default 0,
  c27          NUMBER(14,2) default 0,
  c28          VARCHAR2(30),
  c29          VARCHAR2(100),
  c30          VARCHAR2(30),
  c31          VARCHAR2(2000),
  c32          VARCHAR2(200),
  c33          VARCHAR2(200),
  c34          VARCHAR2(20),
  c35          VARCHAR2(30),
  c36          VARCHAR2(100),
  c37          VARCHAR2(100),
  c38          VARCHAR2(30),
  c39          VARCHAR2(30),
  c40          VARCHAR2(100)
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

prompt
prompt Creating table ZB_MMORGAN_AGREEMENT
prompt ===================================
prompt
create table PCACE.ZB_MMORGAN_AGREEMENT
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
  c1           VARCHAR2(32),
  c2           DATE,
  c3           VARCHAR2(20),
  c4           VARCHAR2(20),
  c5           NUMBER(6),
  c6           VARCHAR2(30),
  c7           VARCHAR2(30),
  c8           VARCHAR2(30),
  c9           VARCHAR2(30),
  c10          VARCHAR2(4000),
  c11          NUMBER(6),
  c12          VARCHAR2(200)
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

prompt
prompt Creating table ZB_MMORGAN_INVITECODE
prompt ====================================
prompt
create table PCACE.ZB_MMORGAN_INVITECODE
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
  c2           NUMBER(11),
  c3           VARCHAR2(30),
  c4           NUMBER(6),
  c5           NUMBER(6),
  c6           DATE
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

prompt
prompt Creating table ZB_STAT
prompt ======================
prompt
create table PCACE.ZB_STAT
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
  dataid       NUMBER(11),
  datasctlevel NUMBER(6),
  datastatus   NUMBER(6),
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           NUMBER(6),
  c3           NUMBER(11),
  c4           NUMBER(11),
  c5           NUMBER(11),
  c6           NUMBER(11),
  c7           NUMBER(11),
  c8           NUMBER(11),
  c9           NUMBER(11),
  c10          NUMBER(11),
  c11          NUMBER(11),
  c12          NUMBER(11),
  c13          NUMBER(11),
  c14          NUMBER(11),
  c15          NUMBER(16,2),
  c16          NUMBER(16,2),
  c17          NUMBER(11),
  c18          NUMBER(11),
  c19          NUMBER(11),
  c20          NUMBER(11),
  c21          NUMBER(11),
  c22          NUMBER(11),
  c23          NUMBER(11),
  c24          NUMBER(11),
  c25          NUMBER(11)
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_TABLE1
prompt ========================
prompt
create table PCACE.ZB_TABLE1
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(200),
  dataid       NUMBER(11),
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

prompt
prompt Creating table ZB_USERLOGIN
prompt ===========================
prompt
create table PCACE.ZB_USERLOGIN
(
  iid          NUMBER(14) not null,
  imemo        VARCHAR2(500),
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
  c30          VARCHAR2(100),
  c31          VARCHAR2(30),
  c32          VARCHAR2(30),
  c33          VARCHAR2(30),
  c34          VARCHAR2(30),
  c35          VARCHAR2(30),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(30),
  c39          VARCHAR2(30),
  c40          VARCHAR2(30),
  c41          VARCHAR2(30),
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
  c53          DATE,
  c54          DATE,
  c55          NUMBER(6),
  c56          NUMBER(6),
  c57          NUMBER(6),
  c58          NUMBER(6),
  c59          NUMBER(6),
  c60          NUMBER(6)
)
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZB_USER_LOCATION
prompt ===============================
prompt
create table PCACE.ZB_USER_LOCATION
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

prompt
prompt Creating table ZB_VOTE_JOBTOP
prompt =============================
prompt
create table PCACE.ZB_VOTE_JOBTOP
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
  c3           DATE,
  c4           VARCHAR2(500),
  c5           VARCHAR2(500)
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

prompt
prompt Creating table ZT_CHAT
prompt ======================
prompt
create table PCACE.ZT_CHAT
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

prompt
prompt Creating table ZT_LOCATION
prompt ==========================
prompt
create table PCACE.ZT_LOCATION
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

prompt
prompt Creating table ZT_PUSHSMSHIS
prompt ============================
prompt
create table PCACE.ZT_PUSHSMSHIS
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

prompt
prompt Creating table ZT_PUSHSMS_ING
prompt =============================
prompt
create table PCACE.ZT_PUSHSMS_ING
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

prompt
prompt Creating table ZT_SMSHIS
prompt ========================
prompt
create table PCACE.ZT_SMSHIS
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

prompt
prompt Creating table ZT_SMS_ING
prompt =========================
prompt
create table PCACE.ZT_SMS_ING
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

prompt
prompt Creating table ZY_APPMODULE
prompt ===========================
prompt
create table PCACE.ZY_APPMODULE
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
  c5           NUMBER(6),
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
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZY_APPMODULEDETAIL
prompt =================================
prompt
create table PCACE.ZY_APPMODULEDETAIL
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
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZY_APPROLE
prompt =========================
prompt
create table PCACE.ZY_APPROLE
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

prompt
prompt Creating table ZY_APPROLEMODULE
prompt ===============================
prompt
create table PCACE.ZY_APPROLEMODULE
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

prompt
prompt Creating table ZY_APPVERSION
prompt ============================
prompt
create table PCACE.ZY_APPVERSION
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

prompt
prompt Creating table ZY_BULLETIN
prompt ==========================
prompt
create table PCACE.ZY_BULLETIN
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

prompt
prompt Creating table ZY_DEPARTMENT
prompt ============================
prompt
create table PCACE.ZY_DEPARTMENT
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

prompt
prompt Creating table ZY_DOTMODULE
prompt ===========================
prompt
create table PCACE.ZY_DOTMODULE
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

prompt
prompt Creating table ZY_DOTMODULEDETAIL
prompt =================================
prompt
create table PCACE.ZY_DOTMODULEDETAIL
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

prompt
prompt Creating table ZY_DOTROLE
prompt =========================
prompt
create table PCACE.ZY_DOTROLE
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

prompt
prompt Creating table ZY_DOTROLEMODULE
prompt ===============================
prompt
create table PCACE.ZY_DOTROLEMODULE
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

prompt
prompt Creating table ZY_DOTUSER
prompt =========================
prompt
create table PCACE.ZY_DOTUSER
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

prompt
prompt Creating table ZY_EMP
prompt =====================
prompt
create table PCACE.ZY_EMP
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
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZY_JOBPOSITION
prompt =============================
prompt
create table PCACE.ZY_JOBPOSITION
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

prompt
prompt Creating table ZY_ORGAN
prompt =======================
prompt
create table PCACE.ZY_ORGAN
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
tablespace TABLESPACE_PCACEHIS
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

prompt
prompt Creating table ZY_RS_COMPUTER
prompt =============================
prompt
create table PCACE.ZY_RS_COMPUTER
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

prompt
prompt Creating table ZY_RS_OTHERS
prompt ===========================
prompt
create table PCACE.ZY_RS_OTHERS
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

prompt
prompt Creating table ZY_SERVER
prompt ========================
prompt
create table PCACE.ZY_SERVER
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


spool off
