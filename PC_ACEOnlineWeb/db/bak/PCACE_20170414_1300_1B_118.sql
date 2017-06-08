prompt PL/SQL Developer import file
prompt Created on 2017��4��14�� by Administrator
set feedback off
set define off
prompt Dropping BO_CANDIDATE...
drop table BO_CANDIDATE cascade constraints;
prompt Dropping BO_CANDIDATE_CVCERTIFICATE...
drop table BO_CANDIDATE_CVCERTIFICATE cascade constraints;
prompt Dropping BO_CANDIDATE_CVEDUCATION...
drop table BO_CANDIDATE_CVEDUCATION cascade constraints;
prompt Dropping BO_CANDIDATE_CVPROJECT...
drop table BO_CANDIDATE_CVPROJECT cascade constraints;
prompt Dropping BO_CANDIDATE_CVTRAIN...
drop table BO_CANDIDATE_CVTRAIN cascade constraints;
prompt Dropping BO_CANDIDATE_CVWORK...
drop table BO_CANDIDATE_CVWORK cascade constraints;
prompt Dropping BO_CANDIDATE_HCCOMMENT...
drop table BO_CANDIDATE_HCCOMMENT cascade constraints;
prompt Dropping B_ACEWORK...
drop table B_ACEWORK cascade constraints;
prompt Dropping B_ACTION...
drop table B_ACTION cascade constraints;
prompt Dropping B_BILL...
drop table B_BILL cascade constraints;
prompt Dropping B_CANDIDATE...
drop table B_CANDIDATE cascade constraints;
prompt Dropping B_CANDIDATE_COLLECT...
drop table B_CANDIDATE_COLLECT cascade constraints;
prompt Dropping B_CANDIDATE_CVCERTIFICATE...
drop table B_CANDIDATE_CVCERTIFICATE cascade constraints;
prompt Dropping B_CANDIDATE_CVEDUCATION...
drop table B_CANDIDATE_CVEDUCATION cascade constraints;
prompt Dropping B_CANDIDATE_CVPROJECT...
drop table B_CANDIDATE_CVPROJECT cascade constraints;
prompt Dropping B_CANDIDATE_CVTRAIN...
drop table B_CANDIDATE_CVTRAIN cascade constraints;
prompt Dropping B_CANDIDATE_CVWORK...
drop table B_CANDIDATE_CVWORK cascade constraints;
prompt Dropping B_CANDIDATE_FILES...
drop table B_CANDIDATE_FILES cascade constraints;
prompt Dropping B_CANDIDATE_HCCOMMENT...
drop table B_CANDIDATE_HCCOMMENT cascade constraints;
prompt Dropping B_CANDIDATE_INTERVIEW...
drop table B_CANDIDATE_INTERVIEW cascade constraints;
prompt Dropping B_CANDIDATE_MARKER...
drop table B_CANDIDATE_MARKER cascade constraints;
prompt Dropping B_CANDIDATE_ORGAN_RELATION...
drop table B_CANDIDATE_ORGAN_RELATION cascade constraints;
prompt Dropping B_CANDIDATE_PROCESS...
drop table B_CANDIDATE_PROCESS cascade constraints;
prompt Dropping B_CANDIDATE_PROCESS_HIS...
drop table B_CANDIDATE_PROCESS_HIS cascade constraints;
prompt Dropping B_HR...
drop table B_HR cascade constraints;
prompt Dropping B_HUNTER...
drop table B_HUNTER cascade constraints;
prompt Dropping B_INVITECODE...
drop table B_INVITECODE cascade constraints;
prompt Dropping B_JOB...
drop table B_JOB cascade constraints;
prompt Dropping B_MMORGAN...
drop table B_MMORGAN cascade constraints;
prompt Dropping B_MMORGAN_AGREEMENT...
drop table B_MMORGAN_AGREEMENT cascade constraints;
prompt Dropping B_STAT...
drop table B_STAT cascade constraints;
prompt Dropping B_STAT_HC...
drop table B_STAT_HC cascade constraints;
prompt Dropping B_T_CANDIDATE_INVITELOG...
drop table B_T_CANDIDATE_INVITELOG cascade constraints;
prompt Dropping B_T_CANDIDATE_VIEWLOG...
drop table B_T_CANDIDATE_VIEWLOG cascade constraints;
prompt Dropping B_USERLOGIN...
drop table B_USERLOGIN cascade constraints;
prompt Dropping B_USER_LOCATION...
drop table B_USER_LOCATION cascade constraints;
prompt Dropping B_VOTE_JOBTOP...
drop table B_VOTE_JOBTOP cascade constraints;
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
prompt Creating BO_CANDIDATE...
create table BO_CANDIDATE
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
  c90          VARCHAR2(500)
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

prompt Creating BO_CANDIDATE_CVCERTIFICATE...
create table BO_CANDIDATE_CVCERTIFICATE
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

prompt Creating BO_CANDIDATE_CVEDUCATION...
create table BO_CANDIDATE_CVEDUCATION
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

prompt Creating BO_CANDIDATE_CVPROJECT...
create table BO_CANDIDATE_CVPROJECT
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

prompt Creating BO_CANDIDATE_CVTRAIN...
create table BO_CANDIDATE_CVTRAIN
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

prompt Creating BO_CANDIDATE_CVWORK...
create table BO_CANDIDATE_CVWORK
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
  c24          NUMBER(6),
  c25          VARCHAR2(200),
  c26          CHAR(1) default '0',
  c27          NUMBER(6) default 0,
  c28          VARCHAR2(30),
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

prompt Creating BO_CANDIDATE_HCCOMMENT...
create table BO_CANDIDATE_HCCOMMENT
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

prompt Creating B_ACEWORK...
create table B_ACEWORK
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
alter table B_ACEWORK
  add constraint B_ACEWORK_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_ACTION...
create table B_ACTION
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
  c7           NUMBER(6),
  c8           NUMBER(6),
  c9           DATE,
  c10          VARCHAR2(20),
  c11          NUMBER(6),
  c12          VARCHAR2(30),
  c13          VARCHAR2(500),
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
  c54          VARCHAR2(100),
  c55          VARCHAR2(200),
  c56          VARCHAR2(100),
  c57          NUMBER(6),
  c58          VARCHAR2(100),
  c59          CHAR(1),
  c60          NUMBER(16) default -1,
  c61          NUMBER(6),
  c62          VARCHAR2(200),
  c63          VARCHAR2(100),
  c64          VARCHAR2(30),
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
alter table B_ACTION
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

prompt Creating B_BILL...
create table B_BILL
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
  c4           VARCHAR2(32),
  c5           VARCHAR2(32),
  c6           VARCHAR2(32),
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
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table B_BILL
  add constraint B_BILL_PK primary key (DATAID)
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

prompt Creating B_CANDIDATE...
create table B_CANDIDATE
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
  c90          VARCHAR2(500)
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
alter table B_CANDIDATE
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

prompt Creating B_CANDIDATE_COLLECT...
create table B_CANDIDATE_COLLECT
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
alter table B_CANDIDATE_COLLECT
  add constraint B_CANDIDATE_COLLECT_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_CANDIDATE_CVCERTIFICATE...
create table B_CANDIDATE_CVCERTIFICATE
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
alter table B_CANDIDATE_CVCERTIFICATE
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

prompt Creating B_CANDIDATE_CVEDUCATION...
create table B_CANDIDATE_CVEDUCATION
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
alter table B_CANDIDATE_CVEDUCATION
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

prompt Creating B_CANDIDATE_CVPROJECT...
create table B_CANDIDATE_CVPROJECT
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
alter table B_CANDIDATE_CVPROJECT
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

prompt Creating B_CANDIDATE_CVTRAIN...
create table B_CANDIDATE_CVTRAIN
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
alter table B_CANDIDATE_CVTRAIN
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

prompt Creating B_CANDIDATE_CVWORK...
create table B_CANDIDATE_CVWORK
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
  c20          VARCHAR2(50),
  c21          VARCHAR2(50),
  c22          VARCHAR2(30),
  c23          DATE,
  c24          NUMBER(6),
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
alter table B_CANDIDATE_CVWORK
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

prompt Creating B_CANDIDATE_FILES...
create table B_CANDIDATE_FILES
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
  c8           VARCHAR2(300),
  c9           VARCHAR2(32),
  c10          VARCHAR2(30),
  c11          DATE,
  c12          VARCHAR2(32),
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
alter table B_CANDIDATE_FILES
  add constraint B_CANDIDATE_FILES_PK primary key (DATAID)
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

prompt Creating B_CANDIDATE_HCCOMMENT...
create table B_CANDIDATE_HCCOMMENT
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
alter table B_CANDIDATE_HCCOMMENT
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

prompt Creating B_CANDIDATE_INTERVIEW...
create table B_CANDIDATE_INTERVIEW
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
alter table B_CANDIDATE_INTERVIEW
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

prompt Creating B_CANDIDATE_MARKER...
create table B_CANDIDATE_MARKER
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
alter table B_CANDIDATE_MARKER
  add constraint B_CANDIDATE_MARKER_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_CANDIDATE_ORGAN_RELATION...
create table B_CANDIDATE_ORGAN_RELATION
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
  c4           VARCHAR2(100),
  c5           NUMBER(6),
  c6           NUMBER(6),
  c7           NUMBER(6),
  c8           VARCHAR2(32),
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
    minextents 1
    maxextents unlimited
  );
alter table B_CANDIDATE_ORGAN_RELATION
  add constraint B_CANDIDATE_ORGAN_RELATION_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_CANDIDATE_PROCESS...
create table B_CANDIDATE_PROCESS
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
  c13          VARCHAR2(500),
  c14          DATE,
  c15          DATE,
  c16          NUMBER(6),
  c17          VARCHAR2(500),
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
  c33          NUMBER(14),
  c34          VARCHAR2(30),
  c35          VARCHAR2(30),
  c36          VARCHAR2(50),
  c37          DATE,
  c38          NUMBER(6) default 0,
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
alter table B_CANDIDATE_PROCESS
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

prompt Creating B_CANDIDATE_PROCESS_HIS...
create table B_CANDIDATE_PROCESS_HIS
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
  c13          VARCHAR2(500),
  c14          DATE,
  c15          DATE,
  c16          NUMBER(6),
  c17          VARCHAR2(500),
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
  c33          NUMBER(14),
  c34          VARCHAR2(30),
  c35          VARCHAR2(30),
  c36          VARCHAR2(30),
  c37          DATE,
  c38          NUMBER(6) default 0,
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

prompt Creating B_HR...
create table B_HR
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
  c32          DATE,
  c33          VARCHAR2(30),
  c34          VARCHAR2(30),
  c35          VARCHAR2(250),
  c36          VARCHAR2(250),
  c37          VARCHAR2(250),
  c38          VARCHAR2(250),
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
alter table B_HR
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

prompt Creating B_HUNTER...
create table B_HUNTER
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
alter table B_HUNTER
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

prompt Creating B_INVITECODE...
create table B_INVITECODE
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
  c6           DATE,
  c7           VARCHAR2(30),
  c8           DATE
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
alter table B_INVITECODE
  add constraint B_INVITECODE_PK primary key (DATAID)
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

prompt Creating B_JOB...
create table B_JOB
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
  c17          VARCHAR2(500),
  c18          DATE,
  c19          NUMBER(6),
  c20          VARCHAR2(100),
  c21          CHAR(1),
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
alter table B_JOB
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
  c2           VARCHAR2(100),
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
alter table B_MMORGAN
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

prompt Creating B_MMORGAN_AGREEMENT...
create table B_MMORGAN_AGREEMENT
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
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table B_MMORGAN_AGREEMENT
  add constraint B_MMORGAN_AGREEMENT_PK primary key (DATAID)
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

prompt Creating B_STAT...
create table B_STAT
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           NUMBER(6),
  c3           VARCHAR2(32),
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
alter table B_STAT
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

prompt Creating B_STAT_HC...
create table B_STAT_HC
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           NUMBER(6),
  c2           NUMBER(6),
  c3           VARCHAR2(32),
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
alter table B_STAT_HC
  add constraint B_STAT_HC_PK primary key (DATAID)
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

prompt Creating B_T_CANDIDATE_INVITELOG...
create table B_T_CANDIDATE_INVITELOG
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(30),
  c3           VARCHAR2(32),
  c4           VARCHAR2(30),
  c5           VARCHAR2(32),
  c6           VARCHAR2(30),
  c7           VARCHAR2(32),
  c8           VARCHAR2(100),
  c9           NUMBER(11),
  c10          VARCHAR2(100),
  c11          VARCHAR2(500),
  c12          NUMBER(6) default 0,
  c13          VARCHAR2(32),
  c14          VARCHAR2(30),
  c15          DATE
)
tablespace TABLESPACE_PCACELOG
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table B_T_CANDIDATE_INVITELOG
  add constraint B_T_CANDIDATE_INVITELOG_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACELOG
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_T_CANDIDATE_VIEWLOG...
create table B_T_CANDIDATE_VIEWLOG
(
  dataid       NUMBER(11) not null,
  datasctlevel NUMBER(6) default -1,
  datastatus   NUMBER(6) default -1,
  keyword      VARCHAR2(200),
  istdate      DATE default sysdate,
  uptdate      DATE default sysdate,
  c1           VARCHAR2(32),
  c2           VARCHAR2(32)
)
tablespace TABLESPACE_PCACELOG
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );

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
  c30          VARCHAR2(100),
  c31          VARCHAR2(30),
  c32          VARCHAR2(50),
  c33          VARCHAR2(50),
  c34          VARCHAR2(30),
  c35          VARCHAR2(30),
  c36          VARCHAR2(30),
  c37          VARCHAR2(30),
  c38          VARCHAR2(30),
  c39          VARCHAR2(30),
  c40          VARCHAR2(30),
  c41          DATE,
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
alter table B_USERLOGIN
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

prompt Creating B_VOTE_JOBTOP...
create table B_VOTE_JOBTOP
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
alter table B_VOTE_JOBTOP
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
alter table IB_DATAATTACHFILE
  add constraint IB_DATAATTACHFILE_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_DATAEXTINFO
  add constraint IB_DATAEXTINFO_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_DATARESOURCE001
  add constraint IB_DATARESOURCE001_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_DATARESOURCE002
  add constraint IB_DATARESOURCE002_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_DATARESOURCE003
  add constraint IB_DATARESOURCE003_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_DATARESOURCE004
  add constraint IB_DATARESOURCE004_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_FORMATION
  add constraint IB_FORMATION_PK primary key (FORMATIONID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_PROCESS
  add constraint IB_PROCESS_PK primary key (PROCESSID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_PROCESSDETAIL
  add constraint IB_PROCESSDETAIL_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
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
alter table IB_PROCESSMEMO
  add constraint IB_PROCESSMEMO_PK primary key (ID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Disabling triggers for BO_CANDIDATE...
alter table BO_CANDIDATE disable all triggers;
prompt Disabling triggers for BO_CANDIDATE_CVCERTIFICATE...
alter table BO_CANDIDATE_CVCERTIFICATE disable all triggers;
prompt Disabling triggers for BO_CANDIDATE_CVEDUCATION...
alter table BO_CANDIDATE_CVEDUCATION disable all triggers;
prompt Disabling triggers for BO_CANDIDATE_CVPROJECT...
alter table BO_CANDIDATE_CVPROJECT disable all triggers;
prompt Disabling triggers for BO_CANDIDATE_CVTRAIN...
alter table BO_CANDIDATE_CVTRAIN disable all triggers;
prompt Disabling triggers for BO_CANDIDATE_CVWORK...
alter table BO_CANDIDATE_CVWORK disable all triggers;
prompt Disabling triggers for BO_CANDIDATE_HCCOMMENT...
alter table BO_CANDIDATE_HCCOMMENT disable all triggers;
prompt Disabling triggers for B_ACEWORK...
alter table B_ACEWORK disable all triggers;
prompt Disabling triggers for B_ACTION...
alter table B_ACTION disable all triggers;
prompt Disabling triggers for B_BILL...
alter table B_BILL disable all triggers;
prompt Disabling triggers for B_CANDIDATE...
alter table B_CANDIDATE disable all triggers;
prompt Disabling triggers for B_CANDIDATE_COLLECT...
alter table B_CANDIDATE_COLLECT disable all triggers;
prompt Disabling triggers for B_CANDIDATE_CVCERTIFICATE...
alter table B_CANDIDATE_CVCERTIFICATE disable all triggers;
prompt Disabling triggers for B_CANDIDATE_CVEDUCATION...
alter table B_CANDIDATE_CVEDUCATION disable all triggers;
prompt Disabling triggers for B_CANDIDATE_CVPROJECT...
alter table B_CANDIDATE_CVPROJECT disable all triggers;
prompt Disabling triggers for B_CANDIDATE_CVTRAIN...
alter table B_CANDIDATE_CVTRAIN disable all triggers;
prompt Disabling triggers for B_CANDIDATE_CVWORK...
alter table B_CANDIDATE_CVWORK disable all triggers;
prompt Disabling triggers for B_CANDIDATE_FILES...
alter table B_CANDIDATE_FILES disable all triggers;
prompt Disabling triggers for B_CANDIDATE_HCCOMMENT...
alter table B_CANDIDATE_HCCOMMENT disable all triggers;
prompt Disabling triggers for B_CANDIDATE_INTERVIEW...
alter table B_CANDIDATE_INTERVIEW disable all triggers;
prompt Disabling triggers for B_CANDIDATE_MARKER...
alter table B_CANDIDATE_MARKER disable all triggers;
prompt Disabling triggers for B_CANDIDATE_ORGAN_RELATION...
alter table B_CANDIDATE_ORGAN_RELATION disable all triggers;
prompt Disabling triggers for B_CANDIDATE_PROCESS...
alter table B_CANDIDATE_PROCESS disable all triggers;
prompt Disabling triggers for B_CANDIDATE_PROCESS_HIS...
alter table B_CANDIDATE_PROCESS_HIS disable all triggers;
prompt Disabling triggers for B_HR...
alter table B_HR disable all triggers;
prompt Disabling triggers for B_HUNTER...
alter table B_HUNTER disable all triggers;
prompt Disabling triggers for B_INVITECODE...
alter table B_INVITECODE disable all triggers;
prompt Disabling triggers for B_JOB...
alter table B_JOB disable all triggers;
prompt Disabling triggers for B_MMORGAN...
alter table B_MMORGAN disable all triggers;
prompt Disabling triggers for B_MMORGAN_AGREEMENT...
alter table B_MMORGAN_AGREEMENT disable all triggers;
prompt Disabling triggers for B_STAT...
alter table B_STAT disable all triggers;
prompt Disabling triggers for B_STAT_HC...
alter table B_STAT_HC disable all triggers;
prompt Disabling triggers for B_T_CANDIDATE_INVITELOG...
alter table B_T_CANDIDATE_INVITELOG disable all triggers;
prompt Disabling triggers for B_T_CANDIDATE_VIEWLOG...
alter table B_T_CANDIDATE_VIEWLOG disable all triggers;
prompt Disabling triggers for B_USERLOGIN...
alter table B_USERLOGIN disable all triggers;
prompt Disabling triggers for B_USER_LOCATION...
alter table B_USER_LOCATION disable all triggers;
prompt Disabling triggers for B_VOTE_JOBTOP...
alter table B_VOTE_JOBTOP disable all triggers;
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
prompt Loading BO_CANDIDATE...
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1169, -1, -1, null, to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', '20161209000000888000000001', 240020, null, null, null, null, '0101', null, '1988-04-14', 29, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '15901636679', 'meredith_qin@sina.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 4, 1, 'Sephora', '�����г�רԱ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ��Ӿ�����ѧԺ|����', null, null, 'Sephora|�����г�רԱ', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414091618298010194003094371.doc', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1178, -1, -1, null, to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', '20161209000000888000000001', 240020, null, null, null, null, '0107', null, '1988-04-14', 29, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '13636607527', 'judy5th7@hotmail.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 1, 1, 'Ferragamo', 'Operation Executive', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ�����ѧԺ|����', null, null, 'Ferragamo|Operation Executive', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414102616736010152321629743.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1171, -1, -1, null, to_date('14-04-2017 09:39:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', '20161209000000888000000001', 240020, null, null, null, null, '0103', null, '1987-04-14', 30, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '17701828218', 'dong2ding@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 4, 1, 'ELLESSE', '��Ʒ��', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '����ʦ����ѧ|����', null, null, 'ELLESSE|��Ʒ��', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414093916314010133430123666.docx', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 09:39:17', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1179, -1, -1, null, to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', '20161209000000888000000001', 240020, null, null, null, null, '0108', null, '1983-04-14', 34, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '13916355543', 'fannie.ballanger@gmail.com', '�й�', null, 133003, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 4, 1, 'H&M', 'Retail Marketing Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ�����ѧԺ|ר��', null, null, 'H&M|Retail Marketing Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105630579010182959643231.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1181, -1, -1, null, to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', '20161209000000888000000001', 240020, null, null, null, null, '0110', null, '1981-04-14', 36, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '13816996238', 'evenxue@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 9, 1, 'Swatch Group', 'Senior Marketing Executive', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '���մ�ѧ|����', null, null, 'Swatch Group|Senior Marketing Executive', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105928064010124333989532.doc', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1182, -1, -1, null, to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', '20161209000000888000000001', 240020, null, null, null, null, '0111', null, '1988-04-14', 29, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '15021181076', 'aowong@126.com', '�й�', null, 133003, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 2, 1, 'Samsung Fashion', 'Marketing Assistant manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'SVCST|ר��', null, null, 'Samsung Fashion|Marketing Assistant manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414111827673010170677057472.docx', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), '���Ź�������', to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:31:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '���Ź�������');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1183, -1, -1, null, to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:53', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', '20161209000000888000000001', 240020, null, null, null, null, '0112', null, '1986-04-14', 31, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '18616700174', 'Jacquelne.hua@hotmail.com', null, null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 3, 1, 'MCM', 'Assistant Digital Marketing Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '������ѧ|����', null, null, 'MCM|Assistant Digital Marketing Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414112326501010110709492867.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000091', '������', to_date('14-04-2017 12:03:53', 'dd-mm-yyyy hh24:mi:ss'), 'HC���Ե�ʱ����', to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:40:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '���Խ���');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1184, -1, -1, null, to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:23', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', '20161209000000888000000001', 240020, null, null, null, null, '0113', null, '1987-08-14', 30, 140008, 132001, null, '�Ϻ�', null, null, null, null, '+86', '13817199270', 'anson0831857@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 1, 1, 'Burberry', 'Store Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�人����ְҵѧԺ|����', null, null, 'Burberry|Store Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414112624798010141562917186.docx', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000091', '������', to_date('14-04-2017 12:03:23', 'dd-mm-yyyy hh24:mi:ss'), 'HC���Ե�ʱ����', to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:44:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '���Խ���');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1170, -1, -1, null, to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', '20161209000000888000000001', 240020, null, null, null, null, '0102', null, '1989-04-14', 28, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '15618911307', '121915784@qq.com', null, null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 1, 1, 'Maxims', 'Senior Operation Specialist', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '���ݴ�ѧ|����', null, null, 'Maxims|Senior Operation Specialist', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414093028204010173735856709.docx', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1172, -1, -1, null, to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', '20161209000000888000000001', 240020, null, null, null, null, '0104', null, '1986-08-14', 31, 140008, 132002, null, '�Ϻ�', null, null, null, null, '+86', '18621890868', 'Ameliezxy@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 2, 1, 'Mont Blanc', 'ePR assistant manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '������ѧ|����', null, null, 'Mont Blanc|ePR assistant manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414094335657010193134523843.doc', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1175, -1, -1, null, to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', '20161209000000888000000001', 240020, null, null, null, null, '0105', null, '1988-05-14', 29, 140005, 132002, null, '�Ϻ�', null, null, null, null, '+86', '13764912533', 'yy-ma@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 4, 1, 'Michael Kors', 'Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ��ƾ���ѧ|����', null, null, 'Michael Kors|Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101841782010141762653047.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1176, -1, -1, null, to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', '20161209000000888000000001', 240020, null, null, null, null, '0106', null, '1986-04-14', 31, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '18964894809', 'momo_chengbin@hotmail.com', '�й�', null, 133003, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 2, 1, '����ˮ��', '����/����/չ�����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ���Ӱ����ѧԺ|ר��', null, null, '����ˮ��|����/����/չ�����', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101950142010185897068226.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1180, -1, -1, null, to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', '20161209000000888000000001', 240020, null, null, null, null, '0109', null, '1982-03-14', 35, 140003, 132002, null, '�Ϻ�', null, null, null, null, '+86', '13901746525', 'deserry@hotmail.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 7, 1, 'Timberland', 'Brand Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ���ͨ��ѧ|����', null, null, 'Timberland|Brand Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105810111010149764495251.doc', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into BO_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1188, -1, -1, null, to_date('14-04-2017 11:50:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', '20161209000000888000000001', 240020, null, null, null, null, '0114', null, '1987-04-14', 30, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '15009161895', 'jin.p.deng@gail.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 3, 1, 'New Balance', 'Product Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Amsterdam Fashion Institute|����', null, null, 'New Balance|Product Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414115006423010121802178717.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 11:50:07', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
commit;
prompt 14 records loaded
prompt Loading BO_CANDIDATE_CVCERTIFICATE...
prompt Table is empty
prompt Loading BO_CANDIDATE_CVEDUCATION...
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1183, 1169, -1, -1, null, to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', 130001, '2007/09', '2011/06', '�Ϻ��Ӿ�����ѧԺ', '�Ļ���ҵ�߻������רҵ', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1189, 1178, -1, -1, null, to_date('14-04-2017 10:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:11', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', 130001, '2006/09', '2008/06', '�Ϻ�����ѧԺ', 'Business & Administration Management', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:50:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1190, 1179, -1, -1, null, to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', 130001, '2001/09', '2004/06', '�Ϻ�����ѧԺ', 'Business English', 133003, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1193, 1182, -1, -1, null, to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', 130001, '2007/09', '2010/06', 'SVCST', 'Diploma', 133003, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1194, 1183, -1, -1, null, to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', 130001, '2004/09', '2008/06', '������ѧ', 'Software Engineering', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1195, 1184, -1, -1, null, to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', 130001, '2005/09', '2008/06', '�人����ְҵѧԺ', '����ʵ��', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1185, 1171, -1, -1, null, to_date('14-04-2017 10:08:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:46', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', 130001, '2005/09', '2009/06', '����ʦ����ѧ', 'Ӧ������ѧ', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:08:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1192, 1181, -1, -1, null, to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', 130001, '1999/09', '2003/06', '���մ�ѧ', 'Journalism', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1184, 1170, -1, -1, null, to_date('14-04-2017 10:00:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:06', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', 130001, '2008/09', '2012/06', '���ݴ�ѧ', 'Finance and accounting', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:01:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1186, 1172, -1, -1, null, to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', 130001, '2004/09', '2008/06', '������ѧ', 'Art Design', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1187, 1175, -1, -1, null, to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', 130001, '2006/09', '2009/06', '�Ϻ��ƾ���ѧ', 'Business Administration', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1188, 1176, -1, -1, null, to_date('14-04-2017 10:46:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:27', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', 130001, '2004/09', '2007/06', '�Ϻ���Ӱ����ѧԺ', '���������', 133003, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:46:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1197, 1188, -1, -1, null, to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', 130001, '2006/09', '2010/06', 'Amsterdam Fashion Institute', 'Fashion Management', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into BO_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1191, 1180, -1, -1, null, to_date('14-04-2017 11:07:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:07', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', 130001, '2000/09', '2005/06', '�Ϻ���ͨ��ѧ', 'International Economic and Trade', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:08:07', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 14 records loaded
prompt Loading BO_CANDIDATE_CVPROJECT...
prompt Table is empty
prompt Loading BO_CANDIDATE_CVTRAIN...
prompt Table is empty
prompt Loading BO_CANDIDATE_CVWORK...
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1228, 1171, -1, -1, null, to_date('14-04-2017 10:08:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:46', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', 130001, '2013/09', '����', 'ELLESSE[�������Ϻ���ʱװó�����޹�˾]', null, null, null, '��Ʒ��', null, null, null, null, null, null, '������������  �������᰸����������ר����Ʒ��������è��Ʒ��棬�ƶ����䣬��ת�ƻ����߻�MKT���\n̨�壬������г�����  ���˿ͷ�������Ʒ���趨���۸����趨����ҵMKT���ƣ�������Ӫ����\n�󻮴�½������Ʒ  ���󻮷����й��˿͵Ĵ�½������Ʒ�����������䣬��ת��������ѡ��MKTս����Ʒ��\nЭͬѡ���ں��й��ο�ר����Ʒ�����������꣩  ��Эͬ����ѡ���й��ο��ض���Ʒ���ƶ����з�����MKT���', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:08:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1235, 1181, -1, -1, null, to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', 130001, '2008/10', '����', 'Swatch Group[�����ҵ�����Ϻ������޹�˾]', null, null, null, 'Senior Marketing Executive', null, null, null, null, null, null, '��' || chr(9) || 'Responsible for 160 stores and $20 million business in Central China Region, contributing 40% of national business.\n��' || chr(9) || 'Developing yearly strategy / plan for TOP 6 key cities in Central China and follow through\n��' || chr(9) || 'Assisting with planning of National Product Launch Campaign and supporting on local implementation\n��' || chr(9) || 'Local Marketing budget control, to make sure marketing expense strictly under budget and efficiently used', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1236, 1182, -1, -1, null, to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', 130001, '2015/07', '����', 'Samsung Fashion[���Ƿ���ó�ף��Ϻ������޹�˾]', null, null, null, 'Marketing Assistant manager', null, null, null, null, null, null, '��' || chr(9) || 'Delivered marketing materials to expose Brand images, including but not limited to PR, DIGITAL, RETAIL.\n��' || chr(9) || 'Provided series training materials to develop retail marketing process.\n��' || chr(9) || 'Executed marketing campaign/ programs to support product, brand enhancement.\n��' || chr(9) || 'Leaded event execution to support brand awareness as well as product launching', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1237, 1183, -1, -1, null, to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', 130001, '2014/11', '����', 'MCM[��˼������������ó���޹�˾]', null, null, null, 'Assistant Digital Marketing Manager', null, null, null, null, null, null, 'Develop and implement digital strategy for China market: brand and product story-telling experience evaluation through optimized & innovative digital solution, discovery & deployment of innovative digital solution to strengthen social engagement.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1238, 1184, -1, -1, null, to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', 130001, '2016/02', '����', 'Burberry[������(�Ϻ�)ó�����޹�˾]', null, null, null, 'Store Manager', null, null, null, null, null, null, '1.�����ŵ�Ŀ���������,ָ����������ɸ�������,����ҵ��\n2.�ල�����׼����Ͳ�������,�����������λԱ���ķ���̬��,��������\n3.ά�����̳���������ز��ŵ����ù�ͨЭ��\n4.������ŵ��Ʒ�ĺ������,���м����Ĺ���\n5.�����������ݵ�׼ȷͳ�ƺ��ᱨ,�ܱ�,�±�\n6.�����ŵ��������Ա�ļ�Ч����,��Ա����', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1226, 1169, -1, -1, null, to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', 130001, '2013/06', '����', 'Sephora[˿ܽ�����Ϻ�����ױƷ�������޹�˾]', null, null, null, '�����г�רԱ', null, null, null, null, null, null, '1.' || chr(9) || '������ﱸ��ǰ��׼���µ���������ص��Ʒ��Ϣ�����ݱ��ֵȹ��������ͺ������۷�����\n2.' || chr(9) || '����ÿ�����ڣ�Ʒ������͵�����Դ�ķ�������������ռ�����Ʒ���Ŷӵ�Ʒ�Ƽƻ���������Ʒ�嵥�ͻ���ƣ�����������ϸ��ٵ��̵ķֻ��͵��������\n3.' || chr(9) || '���������ǰ�����ģ����ĳ��к͵���������ռ�����ز��ŵĽ��鲢���������۵���ز��ţ�\n4.' || chr(9) || '����������󣬺�Ʒ���ŶӼ����񲿺�����ͳ�Ʋ�ȷ��ÿһ�������Ҿߵ����\n5.' || chr(9) || '�������ƽ�BOTF,BTG��CASHTILL��Ŀ���ռ��ͷ���ÿ�����ض��ۿ۲�Ʒ�嵥�������big sales���嵥��', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1232, 1178, -1, -1, null, to_date('14-04-2017 10:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:11', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', 130001, '2016/03', '����', 'Ferragamo[������Ľʱװó�ף��Ϻ������޹�˾]', null, null, null, 'Operation Executive', null, null, null, null, null, null, '��' || chr(9) || 'Reporting to Retail Operation Director to enhance operation efficiency and achieve an optimal sales performance for 54 stores in China via cross function communication /business analysis/ incentive program advising and so on;\n��' || chr(9) || 'Provide administrative support to greater south area store such as duty roster/training/HR issue/customer complaint and so on;\n��' || chr(9) || 'Create and follow up on operation project to find improvement area and catch sales opportunities such as OPEX control/ CRM project and VIP maintain/ Landlord promotion and GWP management / Competitor activity research and so on;\n��' || chr(9) || 'Other project assigned by Retail Operation Director or Chief Operation Officer.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:50:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1233, 1179, -1, -1, null, to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', 130001, '2013/12', '����', 'H&M[����˹Ī��˹���Ϻ�����ҵ���޹�˾]', null, null, null, 'Retail Marketing Manager', null, null, null, null, null, null, 'Develop,\nmaintain\nand\npresent\nstore\nopening\nmarketing\nand\nPR\nstrategy\nplanning\nfor\nChina\n--�\\nSelect\nand\nintegrate\nprint\nmedia,\nOOH\nmedia\nand\ndigital\nmedia\nplatform\nto\ndevelop\nand\ndetermine\nright--�\fit\nmedia\nplans\nfor\nthe\ngrand\nopenings\nand/or\nrebuilds\nprojects.\n--�\\nManage\nand\ntrack\nthe\nmarketing\nbudget\nprovided\nfor\nstore\nopenings\nand/or\nrebuild\nensuring\nthat\nwe\nmaximize\non\nbudget\nprovided.\n--�\\nInitiate\nstrong\ncross--�\functional\ncoordination\ninternally,\nwith\nthe\nExpansion,\nAccounting,\nMerchandising,\nCommunication,\nDistrict\nand\nRegional\nteams.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1234, 1180, -1, -1, null, to_date('14-04-2017 11:07:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:07', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', 130001, '2010/10', '����', 'Timberland[�������Σ��й������޹�˾]', null, null, null, 'Brand Manager', null, null, null, null, null, null, 'Take charge in MKTG communication & trade marketing including advertising, PR, digital, event, marketing research, trade meeting, retail promotion, trade support, product training & etc. Strategy thinking and planning for brand mktg calendar, campaign plan, yearly PR plan, EPR plan. Working independently with multi agencies to maximize brand awareness through marketing campaign, daily PR work, EPR & brand site within limited budget. Work with retailers to approve trade support & provide retail promotion & retail image support to attract more retail traffic.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:08:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1229, 1172, -1, -1, null, to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', 130001, '2015/06', '����', 'Mont Blanc[������ҵ(�й�)���޹�˾]', null, null, null, 'ePR assistant manager', null, null, null, null, null, null, '��' || chr(9) || 'Responsible for Montblanc social platform, upgrade brand social performance of great fan growth, creating engaging content and campaigns.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1230, 1175, -1, -1, null, to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', 130001, '2013/05', '����', 'Michael Kors[���˶���˾��ó���Ϻ������޹�˾]', null, null, null, 'Manager', null, null, null, null, null, null, 'Work closely with HQ Brand Marketing/CRM/Retail Marketing teams to adapt global campaigns, as well as developing & launching local campaigns that follow brand guideline and boom local business.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1231, 1176, -1, -1, null, to_date('14-04-2017 10:46:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:27', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', 130001, '2015/12', '����', '����ˮ��[����ˮ�Ȳ����������޹�˾]', null, null, null, '����/����/չ�����', null, null, null, null, null, null, 'ȫ��ֱӪ�����ճ����̳���\n- ���ȳ���������Ч��ͼ������Job Order��������װʩ����Ӧ����ϵά����\n- ���̵��߶���\n- �¼�����ָ������', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:46:27', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1227, 1170, -1, -1, null, to_date('14-04-2017 10:00:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:06', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', 130001, '2016/02', '����', 'Maxims[����ʳƷ�����ݣ����޹�˾]', null, null, null, 'Senior Operation Specialist', null, null, null, null, null, null, '1.Complete quarter KPI and make monthly plan on teamwork.\n2.Daily operation of Tmall both on PC and WAP and channel, which contains page revision and product optimization.\n3.Event operation: Communicate with design and merchandise purchase of early stage and confirm the product and event before associate TP with page modification.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:01:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into BO_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1240, 1188, -1, -1, null, to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', 130001, '2014/09', '����', 'New Balance[�°���ó�ף��й������޹�˾]', null, null, null, 'Product Manager', null, null, null, null, null, null, 'Lead apparel and accessories category management include product line selection for China market based on China regional needs, sell in strategy and execution, and sell through monitoring and feedback to Global HQ', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
commit;
prompt 14 records loaded
prompt Loading BO_CANDIDATE_HCCOMMENT...
prompt Table is empty
prompt Loading B_ACEWORK...
prompt Table is empty
prompt Loading B_ACTION...
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1010, -1, -1, null, to_date('06-04-2017 19:55:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-04-2017 19:55:16', 'dd-mm-yyyy hh24:mi:ss'), null, '170406195516486010138852998044', 130001, null, 254001, 251001, 0, 253009, to_date('06-04-2017 19:55:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('06-04-2017 19:55:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170406195516486010138852998044', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('06-04-2017 19:55:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 240000, null, null, '��ӭ����ACE��', 255001, null, '0', -1, 240000, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1011, -1, -1, null, to_date('06-04-2017 19:55:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-04-2017 19:55:16', 'dd-mm-yyyy hh24:mi:ss'), null, '170406195516486010138852998044', 130001, null, 254001, 251006, 0, 253009, to_date('06-04-2017 19:55:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('06-04-2017 19:55:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170406195516486010138852998044', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('06-04-2017 19:55:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 240000, null, null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 240000, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1949, -1, -1, null, to_date('11-04-2017 13:47:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 13:47:20', 'dd-mm-yyyy hh24:mi:ss'), null, '170411134720501010198127824544', 130001, null, 254001, 251001, 0, 253009, to_date('11-04-2017 13:47:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 13:47:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411134720501010198127824544', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 13:47:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 251030, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1950, -1, -1, null, to_date('11-04-2017 13:47:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 13:47:20', 'dd-mm-yyyy hh24:mi:ss'), null, '170411134720501010198127824544', 130666, null, 254001, 251006, 0, 253009, to_date('11-04-2017 13:47:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 13:47:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411134720501010198127824544', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 13:47:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 251031, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2906, -1, -1, null, to_date('14-04-2017 12:56:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:56:12', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 12:56:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 0, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0115���', '��ɽ�ɹ���������ʱ��ѡ��0115���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 12:56:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:56:00', 'dd-mm-yyyy hh24:mi:ss'), '0115', null, '���ҏf���Ϻ�����ҵ���޹�˾ | �꾭��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2900, -1, -1, null, to_date('14-04-2017 12:07:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:07:52', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('14-04-2017 12:07:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ʱ��ѡ��ȡ�����', null, '��ɽȡ������ʱ��ѡ��0115���', '��ɽȡ������ʱ��ѡ��0115���', 'ȡ�����', 'ȡ�����', 'ȡ�����', '1', '1', '1', '0', '0', to_date('14-04-2017 12:07:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:07:00', 'dd-mm-yyyy hh24:mi:ss'), '0115', null, '���ҏf���Ϻ�����ҵ���޹�˾ | �꾭��', 241001, null, null, 'ȡ�����', 255000, null, '0', -1, 241001, null, null, 'A220051', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2903, -1, -1, null, to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('19-04-2017', 'dd-mm-yyyy'), '440003', 0, '���Ź�������', '<span class="grey">����ʱ�䣺</span>2017-04-19 00:00<br><span class="grey">���Եص㣺</span>beijing xicheng qu<br><span class="grey">���Թ��ʣ�</span>��ɽ', '��ɽ�����˺�ѡ��0111�Ĺ�������', '��ɽ�����˺�ѡ��0111�Ĺ�������', '���Ź�������', null, '���Ź�������', '1', '1', '1', '0', '0', to_date('19-04-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[MODE=��������]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('19-04-2017', 'dd-mm-yyyy'), '0111', null, '��Samsung Fashion | Marketing Assistant manager��', 241022, null, null, '[LOCATION]beijing xicheng qu', 255001, null, '0', 2877, 241022, null, null, 'A220003', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2897, -1, -1, null, to_date('14-04-2017 12:03:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:53', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('14-04-2017', 'dd-mm-yyyy'), '440003', 444, '���Ź�������', '<span class="grey">����ʱ�䣺</span>2017-04-14 00:00<br><span class="grey">���Եص㣺</span>����������001��<br><span class="grey">���Թ��ʣ�</span>��ɽ', '��ɽ�����˺�ѡ��0112�Ĺ�������', '��ɽ�����˺�ѡ��0112�Ĺ�������', '���Ź�������', null, '���Ź�������', '1', '1', '1', '0', '0', to_date('14-04-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[MODE=��������]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017', 'dd-mm-yyyy'), '0112', null, '��MCM | Assistant Digital Marketing Manager��', 241022, null, null, '[LOCATION]����������001��', 255001, null, '0', -1, 241022, null, null, 'A220003', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1996, -1, -1, null, to_date('11-04-2017 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), null, '170411151333736010103485110478', 130001, null, 254001, 251001, 0, 253009, to_date('11-04-2017 15:13:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 15:13:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411151333736010103485110478', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 15:13:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 251030, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1997, -1, -1, null, to_date('11-04-2017 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), null, '170411151333736010103485110478', 130001, null, 254001, 251006, 0, 253009, to_date('11-04-2017 15:13:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 15:13:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411151333736010103485110478', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 15:13:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 251031, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2711, -1, -1, null, to_date('13-04-2017 18:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 18:05:33', 'dd-mm-yyyy hh24:mi:ss'), null, '170413180533736010176939216802', 130001, null, 254001, 251001, 0, 253009, to_date('13-04-2017 18:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('13-04-2017 18:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170413180533736010176939216802', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('13-04-2017 18:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 251030, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2712, -1, -1, null, to_date('13-04-2017 18:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 18:05:33', 'dd-mm-yyyy hh24:mi:ss'), null, '170413180533736010176939216802', 130001, null, 254001, 251006, 0, 253009, to_date('13-04-2017 18:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('13-04-2017 18:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170413180533736010176939216802', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('13-04-2017 18:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 251031, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1993, -1, -1, null, to_date('11-04-2017 15:05:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:05:53', 'dd-mm-yyyy hh24:mi:ss'), null, '170411150553142010112522769071', 130001, null, 254001, 251001, 0, 253009, to_date('11-04-2017 15:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 15:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411150553142010112522769071', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', null, null, null, null, to_date('11-04-2017 15:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 251030, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1994, -1, -1, null, to_date('11-04-2017 15:05:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:05:53', 'dd-mm-yyyy hh24:mi:ss'), null, '170411150553142010112522769071', 130666, null, 254001, 251006, 0, 253009, to_date('11-04-2017 15:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 15:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411150553142010112522769071', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 15:05:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 251031, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2806, -1, -1, null, to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 09:16:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:16:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:16:00', 'dd-mm-yyyy hh24:mi:ss'), '0101', null, '��Sephora[˿ܽ�����Ϻ�����ױƷ�������޹�˾] | �����г�רԱ��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2807, -1, -1, null, to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 09:16:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0101���', '��ɽ�ɹ���������ʱ��ѡ��0101���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:16:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:16:00', 'dd-mm-yyyy hh24:mi:ss'), '0101', null, '��Sephora | �����г�רԱ��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2809, -1, -1, null, to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 09:26:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0101��������', '������ͨ������ʱ��ѡ��0101��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0101ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:26:00', 'dd-mm-yyyy hh24:mi:ss'), '0101', null, '��Sephora | �����г�רԱ��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2810, -1, -1, null, to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 09:30:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:30:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:30:00', 'dd-mm-yyyy hh24:mi:ss'), '0102', null, '��Glamour Sales MEI.COM | Senior Operation Specialist��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2813, -1, -1, null, to_date('14-04-2017 09:39:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 09:39:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0103���', '��ɽ�ɹ���������ʱ��ѡ��0103���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:39:00', 'dd-mm-yyyy hh24:mi:ss'), '0103', null, '����������- WHO.A.UƷ�� | ��Ʒ�󻮣�', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2816, -1, -1, null, to_date('14-04-2017 10:00:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:00:53', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0102�ļ���', '��ɽ�����˺�ѡ��0102�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:00:00', 'dd-mm-yyyy hh24:mi:ss'), '0102', null, '��Glamour Sales MEI.COM | Senior Operation Specialist��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2814, -1, -1, null, to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 09:43:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:43:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:43:00', 'dd-mm-yyyy hh24:mi:ss'), '0104', null, '��MONTBLANC CHINA | ePR assistant manager��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2818, -1, -1, null, to_date('14-04-2017 10:01:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:08', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:01:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0102�ļ���', '��ɽ�����˺�ѡ��0102�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:01:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:01:00', 'dd-mm-yyyy hh24:mi:ss'), '0102', null, '��Maxims | Senior Operation Specialist��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2823, -1, -1, null, to_date('14-04-2017 10:14:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:18', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0104�ļ���', '��ɽ�����˺�ѡ��0104�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), '0104', null, '��Mont Blanc | ePR assistant manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2825, -1, -1, null, to_date('14-04-2017 10:14:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:27', 'dd-mm-yyyy hh24:mi:ss'), '170414101427657010132629080956', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), '��������', null, '��Domino&#39;s Pizza[�Ϻ������ֱ������޹�˾] | ְλ�Ǽ�������', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2827, -1, -1, null, to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), '170414101818673010169758732803', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), '17888722', null, '��2222 | ְλ��ְλ��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2830, -1, -1, null, to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0105���', '��ɽ�ɹ���������ʱ��ѡ��0105���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), '0105', null, '��Michael Kors | Manager��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2831, -1, -1, null, to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:19:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:19:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:19:00', 'dd-mm-yyyy hh24:mi:ss'), '0106', null, '�����ϣ��Ĵ�����װ���޹�˾ | ����/����/չ����ƣ�', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2834, -1, -1, null, to_date('14-04-2017 10:21:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:21:54', 'dd-mm-yyyy hh24:mi:ss'), '170414102153345010172100917133', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:21:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 0, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ�˲������', '��ɽ�ɹ���������ʱ��ѡ�˲������', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:21:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:21:00', 'dd-mm-yyyy hh24:mi:ss'), '����', null, '��Hollys Coffee | ְλ��ְλ��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2835, -1, -1, null, to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:26:00', 'dd-mm-yyyy hh24:mi:ss'), '0107', null, '��Ferragamo[������Ľʱװó�ף��Ϻ������޹�˾] | Operation Executive��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2837, -1, -1, null, to_date('14-04-2017 10:41:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:03', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0105�ļ���', '��ɽ�����˺�ѡ��0105�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:41:00', 'dd-mm-yyyy hh24:mi:ss'), '0105', null, '��Michael Kors | Manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2841, -1, -1, null, to_date('14-04-2017 10:46:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:28', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0106�ļ���', '��ɽ�����˺�ѡ��0106�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), '0106', null, '������ˮ�� | ����/����/չ����ƣ�', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2844, -1, -1, null, to_date('14-04-2017 10:49:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:49:52', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:49:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0107�ļ���', '��ɽ�����˺�ѡ��0107�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:49:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:49:00', 'dd-mm-yyyy hh24:mi:ss'), '0107', null, '��Ferragamo | Operation Executive��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2846, -1, -1, null, to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:50:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0107��������', '������ͨ������ʱ��ѡ��0107��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:50:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0107ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:50:00', 'dd-mm-yyyy hh24:mi:ss'), '0107', null, '��Ferragamo | Operation Executive��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2847, -1, -1, null, to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:56:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:56:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:56:00', 'dd-mm-yyyy hh24:mi:ss'), '0108', null, '��H&M[����˹Ī��˹���Ϻ�����ҵ���޹�˾] | Retail Marketing Manager��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2850, -1, -1, null, to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:58:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0109���', '��ɽ�ɹ���������ʱ��ѡ��0109���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:58:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:58:00', 'dd-mm-yyyy hh24:mi:ss'), '0109', null, '��Timberland | Brand Manager��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2854, -1, -1, null, to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:04:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0108��������', '������ͨ������ʱ��ѡ��0108��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:04:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0108ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:04:00', 'dd-mm-yyyy hh24:mi:ss'), '0108', null, '��H&M | Retail Marketing Manager��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2856, -1, -1, null, to_date('14-04-2017 11:08:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:08', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 11:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0109�ļ���', '��ɽ�����˺�ѡ��0109�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 11:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:08:00', 'dd-mm-yyyy hh24:mi:ss'), '0109', null, '��Timberland | Brand Manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2857, -1, -1, null, to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:08:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0109��������', '������ͨ������ʱ��ѡ��0109��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0109ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:08:00', 'dd-mm-yyyy hh24:mi:ss'), '0109', null, '��Timberland | Brand Manager��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2866, -1, -1, null, to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:31:46', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:18:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0111���', '��ɽ�ɹ���������ʱ��ѡ��0111���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:18:00', 'dd-mm-yyyy hh24:mi:ss'), '0111', null, '��Samsung Fashion | Marketing Assistant manager��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2868, -1, -1, null, to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:40:43', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:23:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0112���', '��ɽ�ɹ���������ʱ��ѡ��0112���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:23:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:23:00', 'dd-mm-yyyy hh24:mi:ss'), '0112', null, '��MCM | Assistant Digital Marketing Manager��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2869, -1, -1, null, to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), '0113', null, '��Burberry[������(�Ϻ�)ó�����޹�˾] | Store Manager��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2870, -1, -1, null, to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:44:38', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0113���', '��ɽ�ɹ���������ʱ��ѡ��0113���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), '0113', null, '��Burberry | Store Manager��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2876, -1, -1, null, to_date('14-04-2017 11:31:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:31:45', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 11:31:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0111�ļ���', '��ɽ�����˺�ѡ��0111�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 11:31:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:31:00', 'dd-mm-yyyy hh24:mi:ss'), '0111', null, '��Samsung Fashion | Marketing Assistant manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2887, -1, -1, null, to_date('14-04-2017 11:40:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:40:42', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 11:40:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0112�ļ���', '��ɽ�����˺�ѡ��0112�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 11:40:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:40:00', 'dd-mm-yyyy hh24:mi:ss'), '0112', null, '��MCM | Assistant Digital Marketing Manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2889, -1, -1, null, to_date('14-04-2017 11:44:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:44:37', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 11:44:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0113�ļ���', '��ɽ�����˺�ѡ��0113�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 11:44:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:44:00', 'dd-mm-yyyy hh24:mi:ss'), '0113', null, '��Burberry | Store Manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2278, -1, -1, null, to_date('12-04-2017 16:54:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:54:11', 'dd-mm-yyyy hh24:mi:ss'), null, '170412165411548010186648453788', 130001, null, 254001, 251001, 0, 253009, to_date('12-04-2017 16:54:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('12-04-2017 16:54:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170412165411548010186648453788', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('12-04-2017 16:54:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 251030, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2279, -1, -1, null, to_date('12-04-2017 16:54:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:54:11', 'dd-mm-yyyy hh24:mi:ss'), null, '170412165411548010186648453788', 130001, null, 254001, 251006, 0, 253009, to_date('12-04-2017 16:54:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('12-04-2017 16:54:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170412165411548010186648453788', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('12-04-2017 16:54:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 251031, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2815, -1, -1, null, to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 09:43:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0104���', '��ɽ�ɹ���������ʱ��ѡ��0104���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:43:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:43:00', 'dd-mm-yyyy hh24:mi:ss'), '0104', null, '��MONTBLANC CHINA | ePR assistant manager��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2819, -1, -1, null, to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:01:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0102��������', '������ͨ������ʱ��ѡ��0102��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:01:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0102ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:01:00', 'dd-mm-yyyy hh24:mi:ss'), '0102', null, '��Maxims | Senior Operation Specialist��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2821, -1, -1, null, to_date('14-04-2017 10:08:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:48', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0103�ļ���', '��ɽ�����˺�ѡ��0103�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), '0103', null, '��ELLESSE | ��Ʒ�󻮣�', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2824, -1, -1, null, to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0104��������', '������ͨ������ʱ��ѡ��0104��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0104ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), '0104', null, '��Mont Blanc | ePR assistant manager��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2828, -1, -1, null, to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), '170414101818673010169758732803', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 0, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��17888722���', '��ɽ�ɹ���������ʱ��ѡ��17888722���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), '17888722', null, '��2222 | ְλ��ְλ��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2832, -1, -1, null, to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:19:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0106���', '��ɽ�ɹ���������ʱ��ѡ��0106���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:19:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:19:00', 'dd-mm-yyyy hh24:mi:ss'), '0106', null, '�����ϣ��Ĵ�����װ���޹�˾ | ����/����/չ����ƣ�', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2836, -1, -1, null, to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:26:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0107���', '��ɽ�ɹ���������ʱ��ѡ��0107���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:26:00', 'dd-mm-yyyy hh24:mi:ss'), '0107', null, '��Ferragamo | Operation Executive��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2855, -1, -1, null, to_date('14-04-2017 11:07:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:07:52', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 11:07:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0109�ļ���', '��ɽ�����˺�ѡ��0109�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 11:07:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:07:00', 'dd-mm-yyyy hh24:mi:ss'), '0109', null, '��Timberland Trading (Shanghai) Ltd. | Brand Manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2858, -1, -1, null, to_date('14-04-2017 11:10:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:56', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 11:10:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0110�ļ���', '��ɽ�����˺�ѡ��0110�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 11:10:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:10:00', 'dd-mm-yyyy hh24:mi:ss'), '0110', null, '��Swatch Group | Senior Marketing Executive��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2865, -1, -1, null, to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 11:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:18:00', 'dd-mm-yyyy hh24:mi:ss'), '0111', null, '��Samsung Fashion[���Ƿ���ó�ף��Ϻ������޹�˾] | Marketing Assistant manager��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2867, -1, -1, null, to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 11:23:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:23:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:23:00', 'dd-mm-yyyy hh24:mi:ss'), '0112', null, '��MCM[��˼������������ó���޹�˾] | Assistant Digital Marketing Manager��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2892, -1, -1, null, to_date('14-04-2017 11:50:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:50:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0114���', '��ɽ�ɹ���������ʱ��ѡ��0114���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:50:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:50:00', 'dd-mm-yyyy hh24:mi:ss'), '0114', null, '��New Balance | Product Manager��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2838, -1, -1, null, to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:41:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0105��������', '������ͨ������ʱ��ѡ��0105��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0105ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:41:00', 'dd-mm-yyyy hh24:mi:ss'), '0105', null, '��Michael Kors | Manager��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2849, -1, -1, null, to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:58:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:58:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:58:00', 'dd-mm-yyyy hh24:mi:ss'), '0109', null, '��Timberland[�������Σ��й������޹�˾] | Brand Manager��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2894, -1, -1, null, to_date('14-04-2017 11:52:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:07:52', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:52:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0115���', '��ɽ�ɹ���������ʱ��ѡ��0115���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:52:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:52:00', 'dd-mm-yyyy hh24:mi:ss'), '0115', null, '���ҏf���Ϻ�����ҵ���޹�˾ | �꾭��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2840, -1, -1, null, to_date('14-04-2017 10:46:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:16', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0106�ļ���', '��ɽ�����˺�ѡ��0106�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), '0106', null, '�����ϣ��Ĵ�����װ���޹�˾ | ����/����/չ����ƣ�', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2842, -1, -1, null, to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0106��������', '������ͨ������ʱ��ѡ��0106��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0106ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:46:00', 'dd-mm-yyyy hh24:mi:ss'), '0106', null, '������ˮ�� | ����/����/չ����ƣ�', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2848, -1, -1, null, to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:56:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0108���', '��ɽ�ɹ���������ʱ��ѡ��0108���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:56:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:56:00', 'dd-mm-yyyy hh24:mi:ss'), '0108', null, '��H&M | Retail Marketing Manager��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2851, -1, -1, null, to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:59:00', 'dd-mm-yyyy hh24:mi:ss'), '0110', null, '��Swatch Group[�����ҵ�����Ϻ������޹�˾] | Senior Marketing Executive��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2808, -1, -1, null, to_date('14-04-2017 09:26:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:57', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 09:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0101�ļ���', '��ɽ�����˺�ѡ��0101�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 09:26:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:26:00', 'dd-mm-yyyy hh24:mi:ss'), '0101', null, '��Sephora | �����г�רԱ��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2811, -1, -1, null, to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 09:30:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0102���', '��ɽ�ɹ���������ʱ��ѡ��0102���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:30:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:30:00', 'dd-mm-yyyy hh24:mi:ss'), '0102', null, '��Glamour Sales MEI.COM | Senior Operation Specialist��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2826, -1, -1, null, to_date('14-04-2017 10:14:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:28', 'dd-mm-yyyy hh24:mi:ss'), '170414101427657010132629080956', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 0, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ�˲����������', '��ɽ�ɹ���������ʱ��ѡ�˲����������', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:14:00', 'dd-mm-yyyy hh24:mi:ss'), '��������', null, '��Domino&#39;s Pizza[�Ϻ������ֱ������޹�˾] | ְλ�Ǽ�������', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2829, -1, -1, null, to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:18:00', 'dd-mm-yyyy hh24:mi:ss'), '0105', null, '��Michael Kors[���˶���˾��ó���Ϻ������޹�˾] | Manager��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2904, -1, -1, null, to_date('14-04-2017 12:11:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:25', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 12:11:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0114�ļ���', '��ɽ�����˺�ѡ��0114�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 12:11:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:11:00', 'dd-mm-yyyy hh24:mi:ss'), '0114', null, '��New Balance | Product Manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2877, -1, -1, null, to_date('14-04-2017 11:31:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:31:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 444, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0111��������', '������ͨ������ʱ��ѡ��0111��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:31:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0111ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:31:00', 'dd-mm-yyyy hh24:mi:ss'), '0111', null, '��Samsung Fashion | Marketing Assistant manager��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2888, -1, -1, null, to_date('14-04-2017 11:40:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:50', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:40:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 444, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0112��������', '������ͨ������ʱ��ѡ��0112��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:40:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0112ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:40:00', 'dd-mm-yyyy hh24:mi:ss'), '0112', null, '��MCM | Assistant Digital Marketing Manager��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2890, -1, -1, null, to_date('14-04-2017 11:44:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:20', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:44:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 444, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0113��������', '������ͨ������ʱ��ѡ��0113��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:44:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0113ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:44:00', 'dd-mm-yyyy hh24:mi:ss'), '0113', null, '��Burberry | Store Manager��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2891, -1, -1, null, to_date('14-04-2017 11:50:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:50:06', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 11:50:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:50:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:50:00', 'dd-mm-yyyy hh24:mi:ss'), '0114', null, '��New Balance[�°���ó�ף��й������޹�˾] | Product Manager��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2893, -1, -1, null, to_date('14-04-2017 11:52:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:52:07', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 11:52:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:52:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:52:00', 'dd-mm-yyyy hh24:mi:ss'), '0115', null, '���ҏf���Ϻ�����ҵ���޹�˾ | �꾭��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2812, -1, -1, null, to_date('14-04-2017 09:39:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:39:16', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 09:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 09:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 09:39:00', 'dd-mm-yyyy hh24:mi:ss'), '0103', null, '����������- WHO.A.UƷ�� | ��Ʒ�󻮣�', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2820, -1, -1, null, to_date('14-04-2017 10:08:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:17', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0103�ļ���', '��ɽ�����˺�ѡ��0103�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), '0103', null, '����������- WHO.A.UƷ�� | ��Ʒ�󻮣�', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2822, -1, -1, null, to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0103��������', '������ͨ������ʱ��ѡ��0103��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0103ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:08:00', 'dd-mm-yyyy hh24:mi:ss'), '0103', null, '��ELLESSE | ��Ʒ�󻮣�', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2833, -1, -1, null, to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), '170414102153345010172100917133', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 10:21:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:21:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:21:00', 'dd-mm-yyyy hh24:mi:ss'), '����', null, '��Hollys Coffee[����˹���й������޹�˾] | ְλ��ְλ��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2845, -1, -1, null, to_date('14-04-2017 10:50:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:13', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 10:50:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0107�ļ���', '��ɽ�����˺�ѡ��0107�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 10:50:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:50:00', 'dd-mm-yyyy hh24:mi:ss'), '0107', null, '��Ferragamo | Operation Executive��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2852, -1, -1, null, to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 10:59:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 444, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��0110���', '��ɽ�ɹ���������ʱ��ѡ��0110���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 10:59:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 10:59:00', 'dd-mm-yyyy hh24:mi:ss'), '0110', null, '��Swatch Group | Senior Marketing Executive��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2853, -1, -1, null, to_date('14-04-2017 11:04:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:51', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 11:04:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0108�ļ���', '��ɽ�����˺�ѡ��0108�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 11:04:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:04:00', 'dd-mm-yyyy hh24:mi:ss'), '0108', null, '��H&M | Retail Marketing Manager��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1764, -1, -1, null, to_date('10-04-2017 20:39:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 20:39:01', 'dd-mm-yyyy hh24:mi:ss'), null, '170410203901392010158296429175', 130001, null, 254001, 251001, 0, 253009, to_date('10-04-2017 20:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('10-04-2017 20:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170410203901392010158296429175', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('10-04-2017 20:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 240000, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1765, -1, -1, null, to_date('10-04-2017 20:39:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 20:39:01', 'dd-mm-yyyy hh24:mi:ss'), null, '170410203901392010158296429175', 130001, null, 254001, 251006, 0, 253009, to_date('10-04-2017 20:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('10-04-2017 20:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170410203901392010158296429175', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('10-04-2017 20:39:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 240000, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2860, -1, -1, null, to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:10:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0110��������', '������ͨ������ʱ��ѡ��0110��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:10:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0110ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:10:00', 'dd-mm-yyyy hh24:mi:ss'), '0110', null, '��Swatch Group | Senior Marketing Executive��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2881, -1, -1, null, to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), '170414113533189010195305044905', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 11:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:35:00', 'dd-mm-yyyy hh24:mi:ss'), 'Sally', null, '��Maxims[����ʳƷ�����ݣ����޹�˾] | COO��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2882, -1, -1, null, to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), '170414113533189010195305044905', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:35:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 0, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��Sally���', '��ɽ�ɹ���������ʱ��ѡ��Sally���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:35:00', 'dd-mm-yyyy hh24:mi:ss'), 'Sally', null, '��Maxims | COO��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2883, -1, -1, null, to_date('14-04-2017 11:38:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:03', 'dd-mm-yyyy hh24:mi:ss'), '170414113803548010150655180992', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'Sally102', null, '��Domino&#39;s Pizza[�Ϻ������ֱ������޹�˾] | CFF��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2884, -1, -1, null, to_date('14-04-2017 11:38:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:04', 'dd-mm-yyyy hh24:mi:ss'), '170414113803548010150655180992', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 0, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��Sally102���', '��ɽ�ɹ���������ʱ��ѡ��Sally102���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'Sally102', null, '��Domino&#39;s Pizza[�Ϻ������ֱ������޹�˾] | CFF��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2885, -1, -1, null, to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), '170414113854173010186151308279', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'Sally102', null, '��85��C[��ζ���Ϻ��������������޹�˾] | COO��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2886, -1, -1, null, to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), '170414113854173010186151308279', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), '220052', 0, '��ʱ��ѡ���������ɹ�', null, '��ɽ�ɹ���������ʱ��ѡ��Sally102���', '��ɽ�ɹ���������ʱ��ѡ��Sally102���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'BS', null, null, null, null, '[MODE=�����ʾ]', null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 11:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'Sally102', null, '��85��C | COO��', 241001, null, null, '������� <span class="dark-grey bold">�ɹ�</span>', 255000, null, '0', -1, 241001, null, null, 'A220001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1762, -1, -1, null, to_date('10-04-2017 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), null, '170410203237392010197742368573', 130001, null, 254001, 251001, 0, 253009, to_date('10-04-2017 20:32:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('10-04-2017 20:32:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170410203237392010197742368573', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('10-04-2017 20:32:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 240000, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1763, -1, -1, null, to_date('10-04-2017 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), null, '170410203237392010197742368573', 130001, null, 254001, 251006, 0, 253009, to_date('10-04-2017 20:32:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('10-04-2017 20:32:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170410203237392010197742368573', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('10-04-2017 20:32:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 240000, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1794, -1, -1, null, to_date('11-04-2017 06:35:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 06:35:32', 'dd-mm-yyyy hh24:mi:ss'), null, '170411063532720010147863864373', 130001, null, 254001, 251001, 0, 253009, to_date('11-04-2017 06:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 06:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411063532720010147863864373', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 06:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 251030, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1795, -1, -1, null, to_date('11-04-2017 06:35:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 06:35:32', 'dd-mm-yyyy hh24:mi:ss'), null, '170411063532720010147863864373', 130001, null, 254001, 251006, 0, 253009, to_date('11-04-2017 06:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 06:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411063532720010147863864373', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 06:35:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 251031, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (1999, -1, -1, null, to_date('11-04-2017 15:18:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:18:06', 'dd-mm-yyyy hh24:mi:ss'), null, '170411151805970010176278782080', 130001, null, 254001, 251001, 0, 253009, to_date('11-04-2017 15:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 15:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411151805970010176278782080', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 15:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 251030, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2000, -1, -1, null, to_date('11-04-2017 15:18:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:18:06', 'dd-mm-yyyy hh24:mi:ss'), null, '170411151805970010176278782080', 130001, null, 254001, 251006, 0, 253009, to_date('11-04-2017 15:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('11-04-2017 15:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170411151805970010176278782080', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('11-04-2017 15:18:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 251031, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2895, -1, -1, null, to_date('14-04-2017 12:03:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:23', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', '20161209000000888000000001', 130666, null, 254001, 251002, 252003, 253009, to_date('14-04-2017', 'dd-mm-yyyy'), '440003', 444, '���Ź�������', '<span class="grey">����ʱ�䣺</span>2017-04-14 00:00<br><span class="grey">���Եص㣺</span>����������<br><span class="grey">���Թ��ʣ�</span>��ɽ', '��ɽ�����˺�ѡ��0113�Ĺ�������', '��ɽ�����˺�ѡ��0113�Ĺ�������', '���Ź�������', null, '���Ź�������', '1', '1', '1', '0', '0', to_date('14-04-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[MODE=��������]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017', 'dd-mm-yyyy'), '0113', null, '��Burberry | Store Manager��', 241022, null, null, '[LOCATION]����������', 255001, null, '0', -1, 241022, null, null, 'A220003', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2899, -1, -1, null, to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), '170414120631111010185537277504', '20161209000000888000000001', 130666, null, 254001, 251006, null, 253009, to_date('14-04-2017 12:06:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '������ʱ��ѡ��', null, '��������ʱ��ѡ��', '��������ʱ��ѡ��', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', to_date('14-04-2017 12:06:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:06:00', 'dd-mm-yyyy hh24:mi:ss'), '����', null, '��G2000[���ڻ㿥��װ���޹�˾] | 222��', 240000, null, null, '����', 255000, null, '0', -1, 240000, null, null, 'A110001', null);
commit;
prompt 100 records committed...
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2901, -1, -1, null, to_date('14-04-2017 12:08:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:08:16', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 12:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0115�ļ���', '��ɽ�����˺�ѡ��0115�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 12:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:08:00', 'dd-mm-yyyy hh24:mi:ss'), '0115', null, '���ҏf���Ϻ�����ҵ���޹�˾ | �꾭��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2902, -1, -1, null, to_date('14-04-2017 12:08:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:08:30', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', '20161209000000888000000001', 130666, null, 254001, 251005, null, 253009, to_date('14-04-2017 12:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '���º�ѡ�˼���', null, '��ɽ�����˺�ѡ��0115�ļ���', '��ɽ�����˺�ѡ��0115�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', to_date('14-04-2017 12:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:08:00', 'dd-mm-yyyy hh24:mi:ss'), '0115', null, '���ҏf���Ϻ�����ҵ���޹�˾ | �꾭��', 240020, null, null, '���º�ѡ�˼���', 255000, null, '0', -1, 240020, null, null, 'A111015', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2420, -1, -1, null, to_date('13-04-2017 10:29:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:29:03', 'dd-mm-yyyy hh24:mi:ss'), null, '170413102903751010162735893029', 130001, null, 254001, 251001, 0, 253009, to_date('13-04-2017 10:29:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��ӭ����', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', '��ӭ[HC]�״ε�¼', null, null, '1', '1', '1', '0', '0', to_date('13-04-2017 10:29:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170413102903751010162735893029', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('13-04-2017 10:29:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251030, '<span class="bold dark-grey">��ӭ����ACE��</span>', null, null, 255001, null, '0', -1, 251030, null, null, 'A000001', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2421, -1, -1, null, to_date('13-04-2017 10:29:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:29:03', 'dd-mm-yyyy hh24:mi:ss'), null, '170413102903751010162735893029', 130001, null, 254001, 251006, 0, 253009, to_date('13-04-2017 10:29:00', 'dd-mm-yyyy hh24:mi:ss'), null, 444, '��������������ѡ��', '������û���κ����ĺ�ѡ��', '��������������ѡ��', '��������������ѡ��', '������û���κ����ĺ�ѡ��', null, null, '1', '1', '1', '0', '0', to_date('13-04-2017 10:29:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '170413102903751010162735893029', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('13-04-2017 10:29:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 251031, '<span class="bold dark-grey">������û���κ����ĺ�ѡ��</span>', null, '�������ĵ�һλ��ѡ�ˣ�������һ���ĺ�ѡ��֮�ã�', 255003, null, '0', -1, 251031, null, null, 'A000002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2905, -1, -1, null, to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 12:11:00', 'dd-mm-yyyy hh24:mi:ss'), '220953', 0, '��ʱ��ѡ������������ͨ��', null, '������ͨ������ʱ��ѡ��0114��������', '������ͨ������ʱ��ѡ��0114��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', to_date('14-04-2017 12:11:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��0114ͨ����������', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:11:00', 'dd-mm-yyyy hh24:mi:ss'), '0114', null, '��New Balance | Product Manager��', 241022, null, null, '���������� <span class="dark-grey bold">ͨ��</span>�� �뾡����ɹ�������.', 255003, null, '1', -1, 241001, null, null, 'A220002', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2896, -1, -1, null, to_date('14-04-2017 12:03:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:23', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 12:03:00', 'dd-mm-yyyy hh24:mi:ss'), '220955', 0, '�������Ե�ʱ����', null, '�������Խ���', '�������Խ���', '�������Խ���', '�������Խ���', '�������Խ���', '1', '1', '1', '0', '0', to_date('14-04-2017 12:03:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:03:00', 'dd-mm-yyyy hh24:mi:ss'), '0113', null, '��Burberry | Store Manager��', 241022, null, null, '���ڹ������Ժ󾡿���� <span class="dark-grey bold">��������</span>��', 255004, null, '1', 2895, 240021, null, null, 'A440003', null);
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65)
values (2898, -1, -1, null, to_date('14-04-2017 12:03:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:53', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', '20161209000000888000000001', 130001, null, 254001, 251002, 252003, 253009, to_date('15-04-2017 12:03:00', 'dd-mm-yyyy hh24:mi:ss'), '220955', 0, '�������Ե�ʱ����', null, '�������Խ���', '�������Խ���', '�������Խ���', '�������Խ���', '�������Խ���', '1', '1', '1', '0', '0', to_date('14-04-2017 12:03:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('14-04-2017 12:03:00', 'dd-mm-yyyy hh24:mi:ss'), '0112', null, '��MCM | Assistant Digital Marketing Manager��', 241022, null, null, '���ڹ������Ժ󾡿���� <span class="dark-grey bold">��������</span>��', 255004, null, '1', 2897, 240021, null, null, 'A440003', null);
commit;
prompt 107 records loaded
prompt Loading B_BILL...
prompt Table is empty
prompt Loading B_CANDIDATE...
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1185, -1, -1, null, to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), '170414113533189010195305044905', '20161209000000888000000001', 240020, null, null, null, null, 'Sally', null, null, null, null, null, null, null, null, null, null, null, '+86', '16600010002', 'sa@sina.com', null, null, null, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 0, 0, 'Maxims', 'COO', null, '50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'http://118.178.126.204:8088/aceserver/upfile/CANDI/201704/170414113533032010149520242832.PDF', null, null, '1000000000', 0, '2016120900000099900000001', 6, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), '�������', to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, '<br>���������顿:<br>�������ڲ���Ϊ�գ�<br>��ס���в���Ϊ�գ�<br><br>������������Ϊ�գ�<br><br>���������顿����Ϊ�գ�<br><br>������������:<br>���ڹ�˾δ��ACE��˾��', null, '�������');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1186, -1, -1, null, to_date('14-04-2017 11:38:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:04', 'dd-mm-yyyy hh24:mi:ss'), '170414113803548010150655180992', '20161209000000888000000001', 240020, null, null, null, null, 'Sally102', null, null, null, null, null, null, null, null, null, null, null, '+86', '16600010001', 's2@sina.com', null, null, null, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 0, 0, 'Domino&#39;s Pizza[�Ϻ������ֱ������޹�˾]', 'CFF', null, '40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'http://118.178.126.204:8088/aceserver/upfile/CANDI/201704/170414113803407010187204673573.PDF', null, null, '1000000000', 0, '2016120900000099900000001', 6, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:38:04', 'dd-mm-yyyy hh24:mi:ss'), '�������', to_date('14-04-2017 11:38:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, '<br>���������顿:<br>�������ڲ���Ϊ�գ�<br>��ס���в���Ϊ�գ�<br><br>������������Ϊ�գ�<br><br>���������顿����Ϊ�գ�<br><br>������������:<br>���ڹ�˾δ��ACE��˾��', null, '�������');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1187, -1, -1, null, to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), '170414113854173010186151308279', '20161209000000888000000001', 240020, null, null, null, null, 'Sally102', null, null, null, null, null, null, null, null, null, null, null, '+86', '13300000001', 'ss@sina.com', null, null, null, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 0, 0, '85��C', 'COO', null, '40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'http://118.178.126.204:8088/aceserver/upfile/CANDI/201704/170414113854064010128139522681.PDF', null, null, '1000000000', 0, '2016120900000099900000001', 6, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), '�������', to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, '<br>���������顿:<br>�������ڲ���Ϊ�գ�<br>��ס���в���Ϊ�գ�<br><br>������������Ϊ�գ�<br><br>���������顿����Ϊ�գ�<br><br>������������:<br>���ڹ�˾δ��ACE��˾��', null, '�������');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1190, -1, -1, null, to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), '170414120631111010185537277504', '20161209000000888000000001', 240000, null, null, null, null, '����', null, null, null, null, null, null, null, null, null, null, null, '+86', '18515728898', '2222222@qq.com', null, null, null, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 0, 0, 'G2000', '222', null, '1111', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'http://118.178.126.204:8088/aceserver/upfile/CANDI/201704/170414120631017010125840008166.jpeg', null, null, '1000000000', 0, '2016120900000099900000001', 6, 130001, null, 241000, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1181, -1, -1, null, to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', '20161209000000888000000001', 240020, null, null, null, null, '0110', null, '1981-04-14', 36, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '13816996238', 'evenxue@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 9, 1, 'Swatch Group', 'Senior Marketing Executive', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '���մ�ѧ|����', null, null, 'Swatch Group|Senior Marketing Executive', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105928064010124333989532.doc', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:10:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1169, -1, -1, null, to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', '20161209000000888000000001', 240020, null, null, null, null, '0101', null, '1988-04-14', 29, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '15901636679', 'meredith_qin@sina.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 4, 1, 'Sephora', '�����г�רԱ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ��Ӿ�����ѧԺ|����', null, null, 'Sephora|�����г�רԱ', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414091618298010194003094371.doc', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 09:26:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1170, -1, -1, null, to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', '20161209000000888000000001', 240020, null, null, null, null, '0102', null, '1989-04-14', 28, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '15618911307', '121915784@qq.com', null, null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 1, 1, 'Maxims', 'Senior Operation Specialist', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '���ݴ�ѧ|����', null, null, 'Maxims|Senior Operation Specialist', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414093028204010173735856709.docx', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:01:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1173, -1, -1, null, to_date('14-04-2017 10:14:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:28', 'dd-mm-yyyy hh24:mi:ss'), '170414101427657010132629080956', '20161209000000888000000001', 240020, null, null, null, null, '��������', null, null, null, null, null, null, null, null, null, null, null, '+86', '18826766267', '878877@qq.com', null, null, null, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 0, 0, 'Domino&#39;s Pizza[�Ϻ������ֱ������޹�˾]', 'ְλ�Ǽ�������', null, '222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101427517010110818828265.jpeg', null, null, '1000000000', 0, '2016120900000099900000001', 6, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:14:28', 'dd-mm-yyyy hh24:mi:ss'), '�������', to_date('14-04-2017 10:14:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, '<br>���������顿:<br>�������ڲ���Ϊ�գ�<br>��ס���в���Ϊ�գ�<br><br>������������Ϊ�գ�<br><br>���������顿����Ϊ�գ�<br><br>������������:<br>���ڹ�˾δ��ACE��˾��', null, '�������');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1184, -1, -1, null, to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:23', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', '20161209000000888000000001', 240020, null, null, null, null, '0113', null, '1987-08-14', 30, 140008, 132001, null, '�Ϻ�', null, null, null, null, '+86', '13817199270', 'anson0831857@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 1, 1, 'Burberry', 'Store Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�人����ְҵѧԺ|����', null, null, 'Burberry|Store Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414112624798010141562917186.docx', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241023, to_date('14-04-2017', 'dd-mm-yyyy'), null, null, null, null, '20161101000000999000000091', '������', to_date('14-04-2017 12:03:23', 'dd-mm-yyyy hh24:mi:ss'), 'HC���Ե�ʱ����', to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:44:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '���Խ���');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1188, -1, -1, null, to_date('14-04-2017 11:50:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', '20161209000000888000000001', 240020, null, null, null, null, '0114', null, '1987-04-14', 30, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '15009161895', 'jin.p.deng@gail.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 3, 1, 'New Balance', 'Product Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Amsterdam Fashion Institute|����', null, null, 'New Balance|Product Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414115006423010121802178717.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 11:50:07', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 12:11:27', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1189, -1, -1, null, to_date('14-04-2017 11:52:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:56:12', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', '20161209000000888000000001', 240020, null, null, null, null, '0115', null, null, null, null, 132001, null, null, null, null, null, null, '+86', '13957586229', 'florie-ji@163.com', null, null, null, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 0, 0, '�ҏf���Ϻ�����ҵ���޹�˾', '�꾭��', null, '20', null, null, null, null, null, null, null, null, null, null, null, null, '����ʦ����ѧ���ʺ�����������|', null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414115207407010103558241646.docx', null, null, '1000000000', 0, '2016120900000099900000001', 6, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:56:12', 'dd-mm-yyyy hh24:mi:ss'), '�������', to_date('14-04-2017 12:56:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, '<br>���������顿:<br>�������ڲ���Ϊ�գ�<br>��ס���в���Ϊ�գ�<br><br>��������:<br>��ʼʱ�䲻��Ϊ�գ�<br>����ʱ�䲻��Ϊ�գ�<br>רҵ����Ϊ�գ�<br>ѧ������Ϊ�գ�<br><br>���������顿:<br>��ʼʱ�䲻��Ϊ�գ�<br>����ʱ�䲻��Ϊ�գ�<br>��˾���Ʋ���Ϊ�գ�<br>ְλ����Ϊ�գ�<br>����ְ����Ϊ�գ�<br><br>������������:<br>���ڹ�˾δ��ACE��˾��', null, '�������');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1172, -1, -1, null, to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', '20161209000000888000000001', 240020, null, null, null, null, '0104', null, '1986-08-14', 31, 140008, 132002, null, '�Ϻ�', null, null, null, null, '+86', '18621890868', 'Ameliezxy@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 2, 1, 'Mont Blanc', 'ePR assistant manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '������ѧ|����', null, null, 'Mont Blanc|ePR assistant manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414094335657010193134523843.doc', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:14:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1174, -1, -1, null, to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), '170414101818673010169758732803', '20161209000000888000000001', 240020, null, null, null, null, '17888722', null, null, null, null, null, null, null, null, null, null, null, '+86', '18276767676', '2222@qq.com', null, null, null, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 0, 0, '2222', 'ְλ��ְλ', null, '90', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101818548010129573516642.jpeg', null, null, '1000000000', 0, '2016120900000099900000001', 6, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), '�������', to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, '<br>���������顿:<br>�������ڲ���Ϊ�գ�<br>��ס���в���Ϊ�գ�<br><br>������������Ϊ�գ�<br><br>���������顿����Ϊ�գ�<br><br>������������:<br>���ڹ�˾δ��ACE��˾��', null, '�������');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1176, -1, -1, null, to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', '20161209000000888000000001', 240020, null, null, null, null, '0106', null, '1986-04-14', 31, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '18964894809', 'momo_chengbin@hotmail.com', '�й�', null, 133003, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 2, 1, '����ˮ��', '����/����/չ�����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ���Ӱ����ѧԺ|ר��', null, null, '����ˮ��|����/����/չ�����', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101950142010185897068226.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:46:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1178, -1, -1, null, to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', '20161209000000888000000001', 240020, null, null, null, null, '0107', null, '1988-04-14', 29, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '13636607527', 'judy5th7@hotmail.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 1, 1, 'Ferragamo', 'Operation Executive', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ�����ѧԺ|����', null, null, 'Ferragamo|Operation Executive', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414102616736010152321629743.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:50:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1179, -1, -1, null, to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', '20161209000000888000000001', 240020, null, null, null, null, '0108', null, '1983-04-14', 34, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '13916355543', 'fannie.ballanger@gmail.com', '�й�', null, 133003, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 4, 1, 'H&M', 'Retail Marketing Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ�����ѧԺ|ר��', null, null, 'H&M|Retail Marketing Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105630579010182959643231.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:04:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1175, -1, -1, null, to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', '20161209000000888000000001', 240020, null, null, null, null, '0105', null, '1988-05-14', 29, 140005, 132002, null, '�Ϻ�', null, null, null, null, '+86', '13764912533', 'yy-ma@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 4, 1, 'Michael Kors', 'Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ��ƾ���ѧ|����', null, null, 'Michael Kors|Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101841782010141762653047.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:41:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1180, -1, -1, null, to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', '20161209000000888000000001', 240020, null, null, null, null, '0109', null, '1982-03-14', 35, 140003, 132002, null, '�Ϻ�', null, null, null, null, '+86', '13901746525', 'deserry@hotmail.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 7, 1, 'Timberland', 'Brand Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '�Ϻ���ͨ��ѧ|����', null, null, 'Timberland|Brand Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105810111010149764495251.doc', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:08:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1182, -1, -1, null, to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', '20161209000000888000000001', 240020, null, null, null, null, '0111', null, '1988-04-14', 29, 140004, 132001, null, '�Ϻ�', null, null, null, null, '+86', '15021181076', 'aowong@126.com', '�й�', null, 133003, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 2, 1, 'Samsung Fashion', 'Marketing Assistant manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'SVCST|ר��', null, null, 'Samsung Fashion|Marketing Assistant manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414111827673010170677057472.docx', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241022, to_date('19-04-2017', 'dd-mm-yyyy'), null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), '���Ź�������', to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:31:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '���Ź�������');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1183, -1, -1, null, to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:53', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', '20161209000000888000000001', 240020, null, null, null, null, '0112', null, '1986-04-14', 31, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '18616700174', 'Jacquelne.hua@hotmail.com', null, null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 3, 1, 'MCM', 'Assistant Digital Marketing Manager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '������ѧ|����', null, null, 'MCM|Assistant Digital Marketing Manager', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414112326501010110709492867.pdf', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241023, to_date('14-04-2017', 'dd-mm-yyyy'), null, null, null, null, '20161101000000999000000091', '������', to_date('14-04-2017 12:03:53', 'dd-mm-yyyy hh24:mi:ss'), 'HC���Ե�ʱ����', to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 11:40:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '���Խ���');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1171, -1, -1, null, to_date('14-04-2017 09:39:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', '20161209000000888000000001', 240020, null, null, null, null, '0103', null, '1987-04-14', 30, 140004, 132002, null, '�Ϻ�', null, null, null, null, '+86', '17701828218', 'dong2ding@163.com', '�й�', null, 133002, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 4, 1, 'ELLESSE', '��Ʒ��', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '����ʦ����ѧ|����', null, null, 'ELLESSE|��Ʒ��', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414093916314010133430123666.docx', null, null, '1010001010', 0, '2016120900000099900000001', 6, 130001, null, 241021, null, null, null, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), '������ͨ��', to_date('14-04-2017 09:39:17', 'dd-mm-yyyy hh24:mi:ss'), 248009, null, to_date('14-04-2017 10:08:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, '������ͨ��');
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1177, -1, -1, null, to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), '170414102153345010172100917133', '20161209000000888000000001', 240020, null, null, null, null, '����', null, null, null, null, null, null, null, null, null, null, null, '+86', '18516788778', '222@qq.com', null, null, null, null, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, 0, 0, 'Hollys Coffee', 'ְλ��ְλ', null, '99', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414102153236010166115088186.jpeg', null, null, '1000000000', 0, '2016120900000099900000001', 6, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), '�������', to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, '<br>���������顿:<br>�������ڲ���Ϊ�գ�<br>��ס���в���Ϊ�գ�<br><br>������������Ϊ�գ�<br><br>���������顿����Ϊ�գ�<br><br>������������:<br>���ڹ�˾δ��ACE��˾��', null, '�������');
commit;
prompt 22 records loaded
prompt Loading B_CANDIDATE_COLLECT...
prompt Table is empty
prompt Loading B_CANDIDATE_CVCERTIFICATE...
prompt Table is empty
prompt Loading B_CANDIDATE_CVEDUCATION...
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1185, 1171, -1, -1, null, to_date('14-04-2017 10:08:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:46', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', 130001, '2005/09', '2009/06', '����ʦ����ѧ', 'Ӧ������ѧ', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:08:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1186, 1172, -1, -1, null, to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', 130001, '2004/09', '2008/06', '������ѧ', 'Art Design', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1194, 1183, -1, -1, null, to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', 130001, '2004/09', '2008/06', '������ѧ', 'Software Engineering', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1196, 1189, -1, -1, null, to_date('14-04-2017 12:08:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:08:28', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', 130001, null, null, '����ʦ����ѧ���ʺ�����������', null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:08:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1183, 1169, -1, -1, null, to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', 130001, '2007/09', '2011/06', '�Ϻ��Ӿ�����ѧԺ', '�Ļ���ҵ�߻������רҵ', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1191, 1180, -1, -1, null, to_date('14-04-2017 11:07:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:07', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', 130001, '2000/09', '2005/06', '�Ϻ���ͨ��ѧ', 'International Economic and Trade', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:08:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1184, 1170, -1, -1, null, to_date('14-04-2017 10:00:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:06', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', 130001, '2008/09', '2012/06', '���ݴ�ѧ', 'Finance and accounting', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:01:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1187, 1175, -1, -1, null, to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', 130001, '2006/09', '2009/06', '�Ϻ��ƾ���ѧ', 'Business Administration', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1188, 1176, -1, -1, null, to_date('14-04-2017 10:46:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:27', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', 130001, '2004/09', '2007/06', '�Ϻ���Ӱ����ѧԺ', '���������', 133003, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:46:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1189, 1178, -1, -1, null, to_date('14-04-2017 10:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:11', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', 130001, '2006/09', '2008/06', '�Ϻ�����ѧԺ', 'Business & Administration Management', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:50:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1195, 1184, -1, -1, null, to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', 130001, '2005/09', '2008/06', '�人����ְҵѧԺ', '����ʵ��', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1197, 1188, -1, -1, null, to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', 130001, '2006/09', '2010/06', 'Amsterdam Fashion Institute', 'Fashion Management', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1190, 1179, -1, -1, null, to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', 130001, '2001/09', '2004/06', '�Ϻ�����ѧԺ', 'Business English', 133003, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1192, 1181, -1, -1, null, to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', 130001, '1999/09', '2003/06', '���մ�ѧ', 'Journalism', 133002, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1193, 1182, -1, -1, null, to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', 130001, '2007/09', '2010/06', 'SVCST', 'Diploma', 133003, null, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 15 records loaded
prompt Loading B_CANDIDATE_CVPROJECT...
prompt Table is empty
prompt Loading B_CANDIDATE_CVTRAIN...
prompt Table is empty
prompt Loading B_CANDIDATE_CVWORK...
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1231, 1176, -1, -1, null, to_date('14-04-2017 10:46:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:46:27', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', 130001, '2015/12', '����', '����ˮ��[����ˮ�Ȳ����������޹�˾]', null, null, null, '����/����/չ�����', null, null, null, null, null, null, 'ȫ��ֱӪ�����ճ����̳���\n- ���ȳ���������Ч��ͼ������Job Order��������װʩ����Ӧ����ϵά����\n- ���̵��߶���\n- �¼�����ָ������', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:46:27', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1240, 1188, -1, -1, null, to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', 130001, '2014/09', '����', 'New Balance[�°���ó�ף��й������޹�˾]', null, null, null, 'Product Manager', null, null, null, null, null, null, 'Lead apparel and accessories category management include product line selection for China market based on China regional needs, sell in strategy and execution, and sell through monitoring and feedback to Global HQ', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 12:11:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1230, 1175, -1, -1, null, to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', 130001, '2013/05', '����', 'Michael Kors[���˶���˾��ó���Ϻ������޹�˾]', null, null, null, 'Manager', null, null, null, null, null, null, 'Work closely with HQ Brand Marketing/CRM/Retail Marketing teams to adapt global campaigns, as well as developing & launching local campaigns that follow brand guideline and boom local business.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:41:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1237, 1183, -1, -1, null, to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', 130001, '2014/11', '����', 'MCM[��˼������������ó���޹�˾]', null, null, null, 'Assistant Digital Marketing Manager', null, null, null, null, null, null, 'Develop and implement digital strategy for China market: brand and product story-telling experience evaluation through optimized & innovative digital solution, discovery & deployment of innovative digital solution to strengthen social engagement.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:40:41', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1239, 1189, -1, -1, null, to_date('14-04-2017 12:08:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:08:28', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:08:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1236, 1182, -1, -1, null, to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', 130001, '2015/07', '����', 'Samsung Fashion[���Ƿ���ó�ף��Ϻ������޹�˾]', null, null, null, 'Marketing Assistant manager', null, null, null, null, null, null, '��' || chr(9) || 'Delivered marketing materials to expose Brand images, including but not limited to PR, DIGITAL, RETAIL.\n��' || chr(9) || 'Provided series training materials to develop retail marketing process.\n��' || chr(9) || 'Executed marketing campaign/ programs to support product, brand enhancement.\n��' || chr(9) || 'Leaded event execution to support brand awareness as well as product launching', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1228, 1171, -1, -1, null, to_date('14-04-2017 10:08:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:08:46', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', 130001, '2013/09', '����', 'ELLESSE[�������Ϻ���ʱװó�����޹�˾]', null, null, null, '��Ʒ��', null, null, null, null, null, null, '������������  �������᰸����������ר����Ʒ��������è��Ʒ��棬�ƶ����䣬��ת�ƻ����߻�MKT���\n̨�壬������г�����  ���˿ͷ�������Ʒ���趨���۸����趨����ҵMKT���ƣ�������Ӫ����\n�󻮴�½������Ʒ  ���󻮷����й��˿͵Ĵ�½������Ʒ�����������䣬��ת��������ѡ��MKTս����Ʒ��\nЭͬѡ���ں��й��ο�ר����Ʒ�����������꣩  ��Эͬ����ѡ���й��ο��ض���Ʒ���ƶ����з�����MKT���', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:08:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1234, 1180, -1, -1, null, to_date('14-04-2017 11:07:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:08:07', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', 130001, '2010/10', '����', 'Timberland[�������Σ��й������޹�˾]', null, null, null, 'Brand Manager', null, null, null, null, null, null, 'Take charge in MKTG communication & trade marketing including advertising, PR, digital, event, marketing research, trade meeting, retail promotion, trade support, product training & etc. Strategy thinking and planning for brand mktg calendar, campaign plan, yearly PR plan, EPR plan. Working independently with multi agencies to maximize brand awareness through marketing campaign, daily PR work, EPR & brand site within limited budget. Work with retailers to approve trade support & provide retail promotion & retail image support to attract more retail traffic.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:08:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1226, 1169, -1, -1, null, to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', 130001, '2013/06', '����', 'Sephora[˿ܽ�����Ϻ�����ױƷ�������޹�˾]', null, null, null, '�����г�רԱ', null, null, null, null, null, null, '1.' || chr(9) || '������ﱸ��ǰ��׼���µ���������ص��Ʒ��Ϣ�����ݱ��ֵȹ��������ͺ������۷�����\n2.' || chr(9) || '����ÿ�����ڣ�Ʒ������͵�����Դ�ķ�������������ռ�����Ʒ���Ŷӵ�Ʒ�Ƽƻ���������Ʒ�嵥�ͻ���ƣ�����������ϸ��ٵ��̵ķֻ��͵��������\n3.' || chr(9) || '���������ǰ�����ģ����ĳ��к͵���������ռ�����ز��ŵĽ��鲢���������۵���ز��ţ�\n4.' || chr(9) || '����������󣬺�Ʒ���ŶӼ����񲿺�����ͳ�Ʋ�ȷ��ÿһ�������Ҿߵ����\n5.' || chr(9) || '�������ƽ�BOTF,BTG��CASHTILL��Ŀ���ռ��ͷ���ÿ�����ض��ۿ۲�Ʒ�嵥�������big sales���嵥��', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 09:26:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1227, 1170, -1, -1, null, to_date('14-04-2017 10:00:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:01:06', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', 130001, '2016/02', '����', 'Maxims[����ʳƷ�����ݣ����޹�˾]', null, null, null, 'Senior Operation Specialist', null, null, null, null, null, null, '1.Complete quarter KPI and make monthly plan on teamwork.\n2.Daily operation of Tmall both on PC and WAP and channel, which contains page revision and product optimization.\n3.Event operation: Communicate with design and merchandise purchase of early stage and confirm the product and event before associate TP with page modification.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:01:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1233, 1179, -1, -1, null, to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', 130001, '2013/12', '����', 'H&M[����˹Ī��˹���Ϻ�����ҵ���޹�˾]', null, null, null, 'Retail Marketing Manager', null, null, null, null, null, null, 'Develop,\nmaintain\nand\npresent\nstore\nopening\nmarketing\nand\nPR\nstrategy\nplanning\nfor\nChina\n--�\\nSelect\nand\nintegrate\nprint\nmedia,\nOOH\nmedia\nand\ndigital\nmedia\nplatform\nto\ndevelop\nand\ndetermine\nright--�\fit\nmedia\nplans\nfor\nthe\ngrand\nopenings\nand/or\nrebuilds\nprojects.\n--�\\nManage\nand\ntrack\nthe\nmarketing\nbudget\nprovided\nfor\nstore\nopenings\nand/or\nrebuild\nensuring\nthat\nwe\nmaximize\non\nbudget\nprovided.\n--�\\nInitiate\nstrong\ncross--�\functional\ncoordination\ninternally,\nwith\nthe\nExpansion,\nAccounting,\nMerchandising,\nCommunication,\nDistrict\nand\nRegional\nteams.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:04:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1235, 1181, -1, -1, null, to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', 130001, '2008/10', '����', 'Swatch Group[�����ҵ�����Ϻ������޹�˾]', null, null, null, 'Senior Marketing Executive', null, null, null, null, null, null, '��' || chr(9) || 'Responsible for 160 stores and $20 million business in Central China Region, contributing 40% of national business.\n��' || chr(9) || 'Developing yearly strategy / plan for TOP 6 key cities in Central China and follow through\n��' || chr(9) || 'Assisting with planning of National Product Launch Campaign and supporting on local implementation\n��' || chr(9) || 'Local Marketing budget control, to make sure marketing expense strictly under budget and efficiently used', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:10:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1229, 1172, -1, -1, null, to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', 130001, '2015/06', '����', 'Mont Blanc[������ҵ(�й�)���޹�˾]', null, null, null, 'ePR assistant manager', null, null, null, null, null, null, '��' || chr(9) || 'Responsible for Montblanc social platform, upgrade brand social performance of great fan growth, creating engaging content and campaigns.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:14:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1232, 1178, -1, -1, null, to_date('14-04-2017 10:49:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:50:11', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', 130001, '2016/03', '����', 'Ferragamo[������Ľʱװó�ף��Ϻ������޹�˾]', null, null, null, 'Operation Executive', null, null, null, null, null, null, '��' || chr(9) || 'Reporting to Retail Operation Director to enhance operation efficiency and achieve an optimal sales performance for 54 stores in China via cross function communication /business analysis/ incentive program advising and so on;\n��' || chr(9) || 'Provide administrative support to greater south area store such as duty roster/training/HR issue/customer complaint and so on;\n��' || chr(9) || 'Create and follow up on operation project to find improvement area and catch sales opportunities such as OPEX control/ CRM project and VIP maintain/ Landlord promotion and GWP management / Competitor activity research and so on;\n��' || chr(9) || 'Other project assigned by Retail Operation Director or Chief Operation Officer.', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 10:50:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1238, 1184, -1, -1, null, to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', 130001, '2016/02', '����', 'Burberry[������(�Ϻ�)ó�����޹�˾]', null, null, null, 'Store Manager', null, null, null, null, null, null, '1.�����ŵ�Ŀ���������,ָ����������ɸ�������,����ҵ��\n2.�ල�����׼����Ͳ�������,�����������λԱ���ķ���̬��,��������\n3.ά�����̳���������ز��ŵ����ù�ͨЭ��\n4.������ŵ��Ʒ�ĺ������,���м����Ĺ���\n5.�����������ݵ�׼ȷͳ�ƺ��ᱨ,�ܱ�,�±�\n6.�����ŵ��������Ա�ļ�Ч����,��Ա����', null, null, 0, null, '20161101000000999000000001', '������', to_date('14-04-2017 11:44:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0', 0, null, null, null);
commit;
prompt 15 records loaded
prompt Loading B_CANDIDATE_FILES...
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1267, 1185, -1, -1, null, to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), '170414113533189010195305044905', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8088/aceserver/upfile/CANDI/201704/170414113533032010149520242832.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:35:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1268, 1186, -1, -1, null, to_date('14-04-2017 11:38:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:03', 'dd-mm-yyyy hh24:mi:ss'), '170414113803548010150655180992', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8088/aceserver/upfile/CANDI/201704/170414113803407010187204673573.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:38:03', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:38:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1269, 1187, -1, -1, null, to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), '170414113854173010186151308279', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8088/aceserver/upfile/CANDI/201704/170414113854064010128139522681.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:38:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1272, 1190, -1, -1, null, to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), '170414120631111010185537277504', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8088/aceserver/upfile/CANDI/201704/170414120631017010125840008166.jpeg', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:06:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1256, 1181, -1, -1, null, to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), '170414105928236010169244269445', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105928064010124333989532.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:59:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1244, 1169, -1, -1, null, to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), '170414091618376010181630924287', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414091618298010194003094371.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 09:16:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1245, 1170, -1, -1, null, to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), '170414093028267010183280580761', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414093028204010173735856709.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 09:30:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1248, 1173, -1, -1, null, to_date('14-04-2017 10:14:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:14:27', 'dd-mm-yyyy hh24:mi:ss'), '170414101427657010132629080956', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101427517010110818828265.jpeg', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:14:27', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1260, 1184, -1, -1, null, to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414112624798010141562917186.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:26:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1270, 1188, -1, -1, null, to_date('14-04-2017 11:50:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:50:06', 'dd-mm-yyyy hh24:mi:ss'), '170414115006595010164932092632', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414115006423010121802178717.pdf', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:50:06', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:50:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1271, 1189, -1, -1, null, to_date('14-04-2017 11:52:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:52:07', 'dd-mm-yyyy hh24:mi:ss'), '170414115207564010110412356061', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414115207407010103558241646.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:52:07', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:52:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1247, 1172, -1, -1, null, to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), '170414094335798010178684420980', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414094335657010193134523843.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 09:43:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1249, 1174, -1, -1, null, to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), '170414101818673010169758732803', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101818548010129573516642.jpeg', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:18:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1251, 1176, -1, -1, null, to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), '170414101950314010107346918235', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101950142010185897068226.pdf', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:19:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1253, 1178, -1, -1, null, to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), '170414102616907010178671814115', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414102616736010152321629743.pdf', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:26:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1254, 1179, -1, -1, null, to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), '170414105630751010159164768749', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105630579010182959643231.pdf', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:56:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1250, 1175, -1, -1, null, to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), '170414101841939010115054653955', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414101841782010141762653047.pdf', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:18:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1255, 1180, -1, -1, null, to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), '170414105810267010107715039265', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414105810111010149764495251.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:58:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1258, 1182, -1, -1, null, to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414111827673010170677057472.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:18:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1259, 1183, -1, -1, null, to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414112326501010110709492867.pdf', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 11:23:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1246, 1171, -1, -1, null, to_date('14-04-2017 09:39:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 09:39:16', 'dd-mm-yyyy hh24:mi:ss'), '170414093916407010191860193945', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414093916314010133430123666.PDF', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 09:39:16', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 09:39:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_FILES (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (1252, 1177, -1, -1, null, to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), '170414102153345010172100917133', 130001, 250002, '����', '����', '����', 'PDF/DOC', 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170414102153236010166115088186.jpeg', '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '��ɽ', to_date('14-04-2017 10:21:53', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 22 records loaded
prompt Loading B_CANDIDATE_HCCOMMENT...
prompt Table is empty
prompt Loading B_CANDIDATE_INTERVIEW...
insert into B_CANDIDATE_INTERVIEW (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1118, 1182, -1, -1, null, to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'), '170414111827845010199681922183', 130001, '3', '20161209000000888000000001', null, null, to_date('19-04-2017', 'dd-mm-yyyy'), to_date('19-04-2017', 'dd-mm-yyyy'), 'beijing xicheng qu', null, null, null, null, 0, null, null, null, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:10:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_INTERVIEW (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1117, 1183, -1, -1, null, to_date('14-04-2017 12:03:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:53', 'dd-mm-yyyy hh24:mi:ss'), '170414112326673010100971413548', 130001, '3', '20161209000000888000000001', null, null, to_date('14-04-2017', 'dd-mm-yyyy'), to_date('14-04-2017', 'dd-mm-yyyy'), '����������001��', null, null, null, null, 9, null, null, null, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:03:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_INTERVIEW (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1116, 1184, -1, -1, null, to_date('14-04-2017 12:03:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 12:03:23', 'dd-mm-yyyy hh24:mi:ss'), '170414112624861010166540922630', 130001, '3', '20161209000000888000000001', null, null, to_date('14-04-2017', 'dd-mm-yyyy'), to_date('14-04-2017', 'dd-mm-yyyy'), '����������', null, null, null, null, 9, null, null, null, null, null, null, null, null, '20161209000000888000000001', '��ɽ', to_date('14-04-2017 12:03:20', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading B_CANDIDATE_MARKER...
prompt Table is empty
prompt Loading B_CANDIDATE_ORGAN_RELATION...
prompt Table is empty
prompt Loading B_CANDIDATE_PROCESS...
prompt Table is empty
prompt Loading B_CANDIDATE_PROCESS_HIS...
prompt Table is empty
prompt Loading B_HR...
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1003, -1, -1, null, to_date('10-04-2017 15:29:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 16:31:11', 'dd-mm-yyyy hh24:mi:ss'), '170410152938626010107433669463', '170410154337720010126513233308', 1003, '��HR�', '132002', '15500001111', 'defi.wang@ace-elite.com', '85508511', '��HR濹�˾', null, null, null, null, null, null, '���ǵط�', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HR�', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1011, -1, -1, null, to_date('12-04-2017 22:35:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 22:35:29', 'dd-mm-yyyy hh24:mi:ss'), '170412223529657010106442141851', null, -1, 't6442141851', '132002', '18700010001', null, null, '��������', null, null, null, null, null, null, 'COO', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'sallyHR001', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1012, -1, -1, null, to_date('12-04-2017 22:38:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 22:38:13', 'dd-mm-yyyy hh24:mi:ss'), '170412223813532010179298551638', null, -1, 't9298551638', '132002', '18700010002', null, null, '��������', null, null, null, null, null, null, 'COO', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'SallyHR002', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1013, -1, -1, null, to_date('13-04-2017 10:30:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:31:17', 'dd-mm-yyyy hh24:mi:ss'), '170413103025970010164595978079', '170413103042814010139825167103', 1011, '��HRϪ', '132002', '13525255656', 'wangqiang99@weibopay.com', 'sjdof zuoji����', '�ߵ��ǷǴ������Ƹ��˾', null, null, null, null, null, null, 'ndo', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HRϪ', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1016, -1, -1, null, to_date('13-04-2017 17:46:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 17:49:23', 'dd-mm-yyyy hh24:mi:ss'), '170413174641532010176103080040', '170413174655470010198118749102', 1013, '��HR��', '132002', '13569696969', 'defi.wang@ace-elite.com', '������52588789', 'Ψ���Ƽ����޹�˾', null, null, null, null, null, null, '��ƸרԱ', 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HR��', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1010, -1, -1, null, to_date('12-04-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 17:13:59', 'dd-mm-yyyy hh24:mi:ss'), '170412165616908010139101349091', '170412165630689010125203758115', 1010, '��HR��', '132001', '13636363636', 'mike.gu@ace-elite.com', null, '��κ��', null, null, null, null, null, null, '5df16511', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HR��', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1000, -1, -1, null, to_date('10-04-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 12:00:37', 'dd-mm-yyyy hh24:mi:ss'), '170410115658064010130485694493', '170410115825829010185977290073', 1000, '������HR1', '132002', '18144445555', 'wangpanpan@weibopay.com', '�ǵķ�����', '���������޹�˾', null, null, null, null, null, null, '��Ƹ����', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '������HR1', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1001, -1, -1, null, to_date('10-04-2017 14:23:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 14:39:41', 'dd-mm-yyyy hh24:mi:ss'), '170410142357876010131833703750', '170410142617017010138586411277', 1001, '����HR01', '132002', '13911112222', 'defi.wang@ace-elite.com', '���õ���', '��;����HC�Ƽ����޹�˾', null, null, null, null, null, null, '��ͷ��������', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '����HR01', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1004, -1, -1, null, to_date('10-04-2017 16:36:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 16:38:37', 'dd-mm-yyyy hh24:mi:ss'), '170410163625626010114407570241', '170410163657876010186853474260', 1004, '��HR��', '132002', '15500002222', 'defi.wang@ace-elite.com', '85508522', '���ƹ�˾', null, null, null, null, null, null, '������', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HR��', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1006, -1, -1, null, to_date('11-04-2017 15:27:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:43:52', 'dd-mm-yyyy hh24:mi:ss'), '170411152710407010108941534165', '170411152737204010119931583844', 1007, '����HR��', '132002', '13355558888', 'wangqiang@weibopay.com', '�ʵ�����88889999', '�湦��[�湦������������޹�˾]', null, null, null, null, null, null, '�ʵ�', 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '����HR��', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1002, -1, -1, null, to_date('10-04-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 15:05:22', 'dd-mm-yyyy hh24:mi:ss'), '170410145228064010126264216574', '170410145245329010119596833943', 1002, '����HR01', '132002', '13911113333', 'linda.li@ace-elite.com', '������', '����0', null, null, null, null, null, null, '���Ǵ��', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '����HR01', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1005, -1, -1, null, to_date('10-04-2017 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:27:32', 'dd-mm-yyyy hh24:mi:ss'), '170410170627532010157855902255', '170410170712314010124928653692', 1006, '15500003333', '��HR�', '132001', 'defi.wang4@ace-elite.com', '�й�����0791', '��褹�˾', null, null, null, null, null, null, 'Ӫ���ܼ�', 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HR�', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1, -1, -1, null, to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), '20161101000000222000000001', '2016110100000022200000001', 2, '������', '132001', '19900000002', null, null, null, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (2, -1, -1, null, to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 17:39:01', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000001', '2016120100000010100000001', 5, '17700000001', '���ӻ�', '132001', '222222', '223', null, null, null, null, null, null, null, '2222222', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, -1, -1, null, to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000002', '2016120100000010100000002', 7, '������', null, '17700000002', null, null, null, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, -1, -1, null, to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000003', '2016120100000010100000003', 8, '������', null, '17700000003', null, null, null, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, -1, -1, null, to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000004', '2016120100000010100000004', 9, '������', null, '17700000004', null, null, null, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, -1, -1, null, to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000005', '2016120100000010100000005', 10, '������', null, '17700000005', null, null, null, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, -1, -1, null, to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-03-2017 17:43:50', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000006', '2016120100000010100000005', 10, '������', null, '17700000006', null, null, null, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1014, -1, -1, null, to_date('13-04-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), '170413110105642010195300919475', null, -1, 'Walle tseer<����ϵ>', '132002', '18629373743', null, null, 'ɶ���', null, null, null, null, null, null, '233223', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'Walle tseer<����ϵ>', null, null, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1015, -1, -1, null, to_date('13-04-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:13:07', 'dd-mm-yyyy hh24:mi:ss'), '170413111046345010139437060602', '170413111059876010175496132737', 1012, 'Walleeee', '132002', '18729833333', 'walle.liu@ace-elite.com', null, 'Midea[���ļ��Źɷ����޹�˾]', null, null, null, null, null, null, '323��λ', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'Walleeee', null, null, null, null, null, null, null);
commit;
prompt 21 records loaded
prompt Loading B_HUNTER...
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1001, -1, -1, null, to_date('06-04-2017 19:55:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-04-2017 19:55:16', 'dd-mm-yyyy hh24:mi:ss'), '170406195516486010138852998044', null, -1, 'Defi_HC1', 132002, '18111112222', 'wangqiang@weibopay.com', null, '�Ϻ��ǿ⻥�����Ƽ����޹�˾', null, null, null, null, null, null, 1, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'Defi_HC1', '360124199005061857', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170406195516345010184665938865.png', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170406195516361010161722901572.png', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170406195516361010168268957051.png', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170406195516376010172145139306.png', null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1014, -1, -1, null, to_date('11-04-2017 13:47:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 13:47:20', 'dd-mm-yyyy hh24:mi:ss'), '170411134720501010198127824544', null, -1, 'Alex WANG', 132001, '15827629870', 'alex.wang@antsnest.com.cn', '021-53683007', '���Ϲ���', null, null, null, null, null, null, 1, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '������', '429004199403112553', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411134720126010169252407055.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411134720157010192737509974.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411134720204010131413712720.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411134720236010138071108669.jpg', null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1016, -1, -1, null, to_date('11-04-2017 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), '170411151333736010103485110478', null, -1, '8882', 132001, '17878727788', '898882@qq.com', '22', null, null, null, null, null, null, null, 0, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '8882', '222', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411151333595010127983829119.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411151333626010113651147750.jpg', null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1010, -1, -1, null, to_date('10-04-2017 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), '170410203237392010197742368573', null, -1, '��HC��', 132002, '13400001111', '917817917@qq.com', '9988776655', null, null, null, null, null, null, null, 0, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HC��', '360124199005061857', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410203237236010148000579489.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410203237282010118613375952.png', null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1015, -1, -1, null, to_date('11-04-2017 15:05:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:06:38', 'dd-mm-yyyy hh24:mi:ss'), '170411150553142010112522769071', null, -1, 'ǬHC¡', 132002, '18888888888', 'defi.wang@ace-elite.com', 'ǬHC¡88888888����', '����������˾', null, null, null, null, null, null, 1, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'ǬHC¡', '360124199005061888', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411150552923010145780104811.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411150552954010143590740427.png', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411150553001010198399950288.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411150553032010178323390344.png', null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1013, -1, -1, null, to_date('11-04-2017 06:35:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 06:35:32', 'dd-mm-yyyy hh24:mi:ss'), '170411063532720010147863864373', '2016110100000033300000001', 3, 'SallyHC002', 132002, '13300010002', 'ss@sina.com', null, 'ACE-HC��˾', null, null, null, null, null, null, 1, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'Sally', '330101199901012101', 'http://118.178.126.204:8088/aceserver/upfile/MM/201704/170411063532611010159572905750.jpg', 'http://118.178.126.204:8088/aceserver/upfile/MM/201704/170411063532626010132964474343.jpg', 'http://118.178.126.204:8088/aceserver/upfile/MM/201704/170411063532626010150349021751.jpg', 'http://118.178.126.204:8088/aceserver/upfile/MM/201704/170411063532642010156030893660.jpg', null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1011, -1, -1, null, to_date('10-04-2017 20:39:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 20:39:01', 'dd-mm-yyyy hh24:mi:ss'), '170410203901392010158296429175', null, -1, '��HC��', 132002, '13400002222', '9178179178@qq.com', '�������ص�˵��', null, null, null, null, null, null, null, 0, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HC��', '360124199005061857', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410203901236010122756164425.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410203901267010148734157938.jpg', null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1020, -1, -1, null, to_date('12-04-2017 16:54:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:54:11', 'dd-mm-yyyy hh24:mi:ss'), '170412165411548010186648453788', null, -1, '��HC��', 132001, '13818181818', 'defi.wang@ace-elite.com', null, '����žž�������̹�˾', null, null, null, null, null, null, 1, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '��HC��', '360124199005061857', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170412165411345010147012975690.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170412165411376010113091440914.png', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170412165411407010193017429646.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170412165411439010143276959423.png', null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1022, -1, -1, null, to_date('13-04-2017 18:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 18:05:33', 'dd-mm-yyyy hh24:mi:ss'), '170413180533736010176939216802', null, -1, '���ү', 132001, '18912345678', 'kedou@126.com', null, '����', null, null, null, null, null, null, 1, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, '���ү', '510822199990901232', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413180533376010169074297139.jpeg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413180533407010198860117113.jpeg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413180533454010148994890604.jpeg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413180533486010149331364842.jpeg', null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1, -1, -1, null, to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), '20161101000000333000000001', '2016110100000033300000001', 3, '����', 132001, '19900000003', null, null, null, null, null, null, null, null, null, 0, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (2, -1, -1, null, to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 10:01:28', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '2016120900000099900000001', 2, '��ɽ', 132002, '18800000001', null, '333333333', null, 'lan001@sina.com', null, null, null, null, null, 0, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, -1, -1, null, to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000002', '2016120900000099900000002', 8, '����', 132001, '18800000002', null, null, null, null, null, null, null, null, null, 0, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, -1, -1, null, to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000003', '2016120900000099900000003', 9, '����', 132001, '18800000003', null, null, null, null, null, null, null, null, null, 0, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, -1, -1, null, to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 11:22:57', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000004', '2016120900000099900000004', 10, '��ϣ', null, '18800000004', null, '1', null, 'cv@ace.com', null, null, null, null, null, 0, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, -1, -1, null, to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000005', '2016120900000099900000004', 10, '��÷', 132001, '18800000005', null, null, null, null, null, null, null, null, null, 0, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, -1, -1, null, to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2017 10:16:39', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000006', '2016120900000099900000004', 10, '����', 132001, '18800000006', null, null, null, null, null, null, null, null, null, 0, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1017, -1, -1, null, to_date('11-04-2017 15:18:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:18:06', 'dd-mm-yyyy hh24:mi:ss'), '170411151805970010176278782080', null, -1, 'è��', 132001, '15555555555', '9178179187@qq.com', '���õ���', null, null, null, null, null, null, null, 0, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'è��', '360124199005061888', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411151805829010101469443071.png', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411151805861010145422235224.jpg', null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1021, -1, -1, null, to_date('13-04-2017 10:29:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:45:30', 'dd-mm-yyyy hh24:mi:ss'), '170413102903751010162735893029', null, -1, 'linHCda', 132002, '18855557777', 'weibo@weibopay.com', '�Ŀ��ڵ�����', '������ͷ���޹�˾', null, null, null, null, null, null, 1, 203008, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, 'linHCda', '360124199005061857', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413102903501010142081216349.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413102903532010176450540655.png', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413102903579010134639048262.jpg', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413102903611010148959862203.jpg', null, null);
commit;
prompt 18 records loaded
prompt Loading B_INVITECODE...
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, null, to_date('23-03-2017 14:22:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-03-2017 16:13:42', 'dd-mm-yyyy hh24:mi:ss'), 'AH555A220', null, null, 940, 130001, to_date('21-06-2027 14:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1003, -1, -1, null, to_date('10-04-2017 15:29:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 15:29:38', 'dd-mm-yyyy hh24:mi:ss'), 'A663190U842884845', null, '170410152938626010107433669463', 1, 130001, to_date('09-07-2017 15:29:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1011, -1, -1, null, to_date('12-04-2017 22:35:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 22:35:29', 'dd-mm-yyyy hh24:mi:ss'), 'A375355494JSW', null, '170412223529657010106442141851', 1, 130001, to_date('11-07-2017 22:35:29', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1012, -1, -1, null, to_date('12-04-2017 22:38:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 22:38:13', 'dd-mm-yyyy hh24:mi:ss'), 'A523812556984111745', null, '170412223813532010179298551638', 1, 130001, to_date('11-07-2017 22:38:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1013, -1, -1, null, to_date('13-04-2017 10:30:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:30:26', 'dd-mm-yyyy hh24:mi:ss'), 'A553417433387B509', null, '170413103025970010164595978079', 1, 130001, to_date('12-07-2017 10:30:26', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1016, -1, -1, null, to_date('13-04-2017 17:46:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 17:46:41', 'dd-mm-yyyy hh24:mi:ss'), 'A156796AW455A', null, '170413174641532010176103080040', 1, 130001, to_date('12-07-2017 17:46:41', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1010, -1, -1, null, to_date('12-04-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), 'A928854952728E730', null, '170412165616908010139101349091', 1, 130001, to_date('11-07-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1000, -1, -1, null, to_date('10-04-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), 'AN728778SQ714', null, '170410115658064010130485694493', 1, 130001, to_date('09-07-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1001, -1, -1, null, to_date('10-04-2017 14:23:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 14:23:57', 'dd-mm-yyyy hh24:mi:ss'), 'AV928C700OU', null, '170410142357876010131833703750', 1, 130001, to_date('09-07-2017 14:23:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1004, -1, -1, null, to_date('10-04-2017 16:36:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 16:36:25', 'dd-mm-yyyy hh24:mi:ss'), 'AK422VMGW', null, '170410163625626010114407570241', 1, 130001, to_date('09-07-2017 16:36:25', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1006, -1, -1, null, to_date('11-04-2017 15:27:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:27:10', 'dd-mm-yyyy hh24:mi:ss'), 'AC424473637275S', null, '170411152710407010108941534165', 1, 130001, to_date('10-07-2017 15:27:10', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1002, -1, -1, null, to_date('10-04-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), 'AQ292K625860X', null, '170410145228064010126264216574', 1, 130001, to_date('09-07-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1005, -1, -1, null, to_date('10-04-2017 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), 'A977332508838740475', null, '170410170627532010157855902255', 1, 130001, to_date('09-07-2017 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1014, -1, -1, null, to_date('13-04-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), 'AM663Z435E931', null, '170413110105642010195300919475', 1, 130001, to_date('12-07-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1015, -1, -1, null, to_date('13-04-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), 'AV145567N626Y', null, '170413111046345010139437060602', 1, 130001, to_date('12-07-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;
prompt 15 records loaded
prompt Loading B_JOB...
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1004, 5, -1, -1, null, to_date('08-04-2017 16:13:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-04-2017 16:13:44', 'dd-mm-yyyy hh24:mi:ss'), 'һ�߳��б��Ϲ��������Ʒ�������ž���', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', 'һ�߳��б��Ϲ��������Ʒ��������', '223002', '224002', '50-100', 'һ�߳��б��Ϲ��������Ʒ��������', 'һ�߳��б��Ϲ��������Ʒ��������һ�߳��б��Ϲ��������Ʒ��������һ�߳��б��Ϲ��������Ʒ��������', 'һ�߳��б��Ϲ��������Ʒ��������', '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1005, 1001, -1, -1, null, to_date('10-04-2017 15:20:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 15:20:30', 'dd-mm-yyyy hh24:mi:ss'), '�������ž���', '170410142357876010131833703750', 130001, 1, '170410142617017010138586411277', 1001, '801', '�����Ʒ������', '223003', '224002', '30-50', '�������Ҿ�ϲ���㣡��~', '�������ž��������ž��������ž��������ž��������ž��������ž��������ž���', '�������ž��������ž��������ž��������ž��������ž��������ž��������ž���', '��˾��ϸ��ַ���人', '1', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1018, 1007, -1, -1, null, to_date('13-04-2017 10:26:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:26:15', 'dd-mm-yyyy hh24:mi:ss'), 'JINALI.docx', '170411152710407010108941534165', 130001, 0, '170411152737204010119931583844', 1007, null, null, null, null, null, null, null, null, '0', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170413102615220010162602529598.docx', to_date('13-04-2017 10:26:15', 'dd-mm-yyyy hh24:mi:ss'), null, '����ְλ����1���������ڷ���', '1', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1021, 1007, -1, -1, null, to_date('13-04-2017 16:24:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 16:24:20', 'dd-mm-yyyy hh24:mi:ss'), 'JINALI.docx', '170411152710407010108941534165', 130001, 0, '170411152737204010119931583844', 1007, null, null, null, null, null, null, null, null, '0', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170413162419986010117822004022.docx', to_date('13-04-2017 16:24:20', 'dd-mm-yyyy hh24:mi:ss'), null, '����ְλ����1���������ڷ���', '1', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1022, 1007, -1, -1, null, to_date('13-04-2017 16:24:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 16:24:40', 'dd-mm-yyyy hh24:mi:ss'), '88888.pdf', '170411152710407010108941534165', 130001, 0, '170411152737204010119931583844', 1007, null, null, null, null, null, null, null, null, '0', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170413162440736010152009698362.pdf', to_date('13-04-2017 16:24:40', 'dd-mm-yyyy hh24:mi:ss'), null, '����ְλ����1���������ڷ���', '1', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1023, 1007, -1, -1, null, to_date('13-04-2017 16:25:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 16:25:13', 'dd-mm-yyyy hh24:mi:ss'), '8ad4b31c8701a18bbef9f231982f07082838feba.jpg', '170411152710407010108941534165', 130001, 0, '170411152737204010119931583844', 1007, null, null, null, null, null, null, null, null, '0', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170413162513829010104266605680.jpg', to_date('13-04-2017 16:25:13', 'dd-mm-yyyy hh24:mi:ss'), null, '����ְλ����1���������ڷ���', '1', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1025, 1013, -1, -1, null, to_date('13-04-2017 18:19:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 18:19:51', 'dd-mm-yyyy hh24:mi:ss'), '�߼�������ѵʦ', '170413174641532010176103080040', 130001, 1, '170413174655470010198118749102', 1013, '801', '��ѵ��', '223004', '224002', '50-100', 'ְλ���㣡����', '�ٶȰٿ��ǰٶȹ�˾�Ƴ���һ�����ݿ��š����ɵ�����ٿ�ȫ��ƽ̨������԰���2006��4��20�����ߣ���ʽ����2008��4��21�շ���������2016��4�£��ٶȰٿ��Ѿ���¼�˳���1300����Ĵ�������������༭�����ѳ���580���ˣ�����������������֪��֪ʶ����', '�ٶȰٿ��ǰٶȹ�˾�Ƴ���һ�����ݿ��š����ɵ�����ٿ�ȫ��ƽ̨������԰���2006��4��20�����ߣ���ʽ����2008��4��21�շ���������2016��4�£��ٶȰٿ��Ѿ���¼�˳���1300����Ĵ�������������༭�����ѳ���580���ˣ�����������������֪��֪ʶ����', '���ǶԵĶ��', '1', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1027, 1013, -1, -1, null, to_date('13-04-2017 21:10:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 21:10:12', 'dd-mm-yyyy hh24:mi:ss'), '�����Ʒ����ʦ', '170413174641532010176103080040', 130001, 1, '170413174655470010198118749102', 1013, '801', '����ҵ��', '223000', '224000', '50-92', '555555555555559489449', '555555555555559489449', '555555555555559489449', '���ǶԵĶ��', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1011, 5, -1, -1, null, to_date('12-04-2017 11:50:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 11:50:36', 'dd-mm-yyyy hh24:mi:ss'), 'BD��Ӫ����ʦ', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', 'BD��Ӫ', '223000', '224000', '20-80', 'BD��Ӫ����ʦBD��Ӫ����ʦBD��Ӫ����ʦBD��Ӫ����ʦ', 'BD��Ӫ����ʦBD��Ӫ����ʦBD��Ӫ����ʦ', null, '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1012, 5, -1, -1, null, to_date('12-04-2017 11:52:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 11:52:43', 'dd-mm-yyyy hh24:mi:ss'), 'BDBDBDBD', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', null, '223000', '224000', '25-80', null, 'BD��Ӫ����ʦBD��Ӫ����ʦBD��Ӫ����ʦBD��Ӫ����ʦ', null, '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1003, 5, -1, -1, null, to_date('07-04-2017 13:38:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-04-2017 13:38:46', 'dd-mm-yyyy hh24:mi:ss'), '21312', '20161201000000222000000001', 130001, 0, '2016120100000010100000001', 5, '801', '12313', '223001', '224001', '12-23', '213', '123', '12312', '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1007, 9, -1, -1, null, to_date('11-04-2017 11:14:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 11:14:43', 'dd-mm-yyyy hh24:mi:ss'), 'Walee', '20161201000000222000000004', 130001, 0, '2016120100000010100000004', 9, '801', null, '223002', '224000', '1-1', null, '11', null, '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1013, 5, -1, -1, null, to_date('12-04-2017 12:11:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 12:11:44', 'dd-mm-yyyy hh24:mi:ss'), '����һ�����˹���ֳ�����ޱ�Ͷ�뵽��ЩѪ�ȵĲ�ɱ��', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', null, '223000', '224000', '25-60', null, '����һ�����˹���ֳ�����ޱ�Ͷ�뵽��ЩѪ�ȵĲ�ɱ�л���һ�����˹���ֳ�����ޱ�Ͷ�뵽��ЩѪ�ȵĲ�ɱ��', null, '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1014, 5, -1, -1, null, to_date('12-04-2017 18:46:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 18:46:25', 'dd-mm-yyyy hh24:mi:ss'), 'sdfasdf', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', null, '223000', '224000', '20-100', null, '�ǵķ��͵���', null, 'sdsafdsa', '1', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1015, 5, -1, -1, null, to_date('12-04-2017 21:03:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 21:03:45', 'dd-mm-yyyy hh24:mi:ss'), 'walle test', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', null, '223000', '224000', '1-2', null, '12122', null, '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1016, 5, -1, -1, null, to_date('12-04-2017 21:04:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 21:04:17', 'dd-mm-yyyy hh24:mi:ss'), '121212', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', null, '223000', '224000', '1-1', null, '11', null, '�Ϻ����ֶ������߿���·', '1', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1017, 5, -1, -1, null, to_date('12-04-2017 21:05:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 21:05:18', 'dd-mm-yyyy hh24:mi:ss'), 'walllw', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', null, '223000', '224000', '1-2', null, '212121', null, '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1026, 1013, -1, -1, null, to_date('13-04-2017 19:02:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 19:02:06', 'dd-mm-yyyy hh24:mi:ss'), '��ͨ������Ա', '170413174641532010176103080040', 130001, 1, '170413174655470010198118749102', 1013, '801', '��ʵ��999', '223000', '224000', '20-50', '20250255ֻΪ����', '�ٶȰٿ��ǰٶȹ�˾�Ƴ���һ�����ݿ��š����ɵ�����ٿ�ȫ��ƽ̨������԰���2006��4��20�����ߣ���ʽ����2008��4��21�շ���������2016��4�£��ٶȰٿ��Ѿ���¼�˳���1300����Ĵ�������������༭�����ѳ���580���ˣ�����������������֪��֪ʶ����', '�ٶȰٿ��ǰٶȹ�˾�Ƴ���һ�����ݿ��š����ɵ�����ٿ�ȫ��ƽ̨������԰���2006��4��20�����ߣ���ʽ����2008��4��21�շ���������2016��4�£��ٶȰٿ��Ѿ���¼�˳���1300����Ĵ�������������༭�����ѳ���580���ˣ�����������������֪��֪ʶ����', '���ǶԵĶ��', '1', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1002, 5, -1, -1, null, to_date('07-04-2017 10:23:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-04-2017 10:23:08', 'dd-mm-yyyy hh24:mi:ss'), 'ǰ�˹���ʦ', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', '��Ʒ', '223001', '224001', '120-122', '�õ�', '�õ�', '�õ�', '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1006, 5, -1, -1, null, to_date('11-04-2017 10:54:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 10:54:44', 'dd-mm-yyyy hh24:mi:ss'), 'JINALI.docx', '20161201000000222000000001', 130001, 0, '2016120100000010100000001', 5, null, null, null, null, null, null, null, null, '0', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170411105443986010141077742903.docx', to_date('11-04-2017 10:54:44', 'dd-mm-yyyy hh24:mi:ss'), null, '����ְλ����1���������ڷ���', '1', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1008, 9, -1, -1, null, to_date('11-04-2017 11:49:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 11:49:47', 'dd-mm-yyyy hh24:mi:ss'), '121212', '20161201000000222000000004', 130001, 0, '2016120100000010100000004', 9, '801', null, '223000', '224000', '1-2', null, '12121', null, '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1009, 1007, -1, -1, null, to_date('11-04-2017 18:07:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 18:07:18', 'dd-mm-yyyy hh24:mi:ss'), '���л���������й��Ϻ��ֶ�������֮���ܲ��������ž���', '170411152710407010108941534165', 130001, 1, '170411152737204010119931583844', 1007, '801', '����', '223000', '224000', '50-80', 'ְλ���㣬�ջ�������������~', '��ʦ�ึ��������������', '����Ҫ��\n1����������ѧ����רҵ���ޣ���ͨ����������������\n2���������ϵ��ӡ�����������ý�����ְλ�������飬��Ϥ����ý�塣�߱���ǿ��������֯������ԭ����д�������߷ḻ���Ŷӹ����顢Ƶ����Ŀ�߻�������\n3���˽����缼�����˽����缼����չ���ơ�\n4. ���и߶ȵ����θк�ְҵ���¹ۣ�רע�ľ�ҵ����;����󾫵Ĺ���̬�ȡ�\n5. �����������ܳ��ܽϴ�Ĺ���ѹ�����ر�Ҫ�����ִ�����������¹��ϣ����ڳԿ࣬ѧϰר������ǿ\n6. �߱����õ�Ӣ����˵��д����\n7�����д����Ż���վ���������ߣ��������棩����\n8������Ƶ�ɱ���Ϥ�����ȡ�\n9�������ܵ��ڹ���������', '�й��Ŵ�������', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1001, 5, -1, -1, null, to_date('06-04-2017 21:01:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-04-2017 21:01:44', 'dd-mm-yyyy hh24:mi:ss'), '���۲��ܾ���', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', '���ڷֹ�˾', '223002', '224002', '500-10000', '���Ǵ�����·����ط�', 'ְλ����\nְλ����\nְλ����\nְλ����\nְλ����', 'ְλҪ��\nְλҪ��\nְλҪ��\nְλҪ��\nְλҪ��', '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1010, 1007, -1, -1, null, to_date('11-04-2017 18:09:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 18:09:44', 'dd-mm-yyyy hh24:mi:ss'), '�������ž���', '170411152710407010108941534165', 130001, 1, '170411152737204010119931583844', 1007, '801', '�����Ʒ������', '223000', '224000', '30-80', 'ְλ�ջ󣡣���ְλ�ջ󣡣���ְλ�ջ󣡣���', 'ְλ���ƣ��߼������༭��5����\n�У�38�����£���ר���ϣ�2�����ϻ����������༭�������顣\n1����ͨ��������ͨ����ǿ��\n2���߱���ǿ��Ӣ���������ܶ�������༭����ý�����ݣ�\n3���е���ý��������վ���ű༭�������ȣ�\n4�����渺���ܳԿ����͡����Ŷ�Э���ͷ��׾���\n5���߱���������Ź۵㡣\n6����Ϥ��ŷ�̿����ʣ����ܹ����һ���ķ����ͼ���������', '����Ҫ��\n1����������ѧ����רҵ���ޣ���ͨ����������������\n2���������ϵ��ӡ�����������ý�����ְλ�������飬��Ϥ����ý�塣�߱���ǿ��������֯������ԭ����д�������߷ḻ���Ŷӹ����顢Ƶ����Ŀ�߻�������\n3���˽����缼�����˽����缼����չ���ơ�\n4. ���и߶ȵ����θк�ְҵ���¹ۣ�רע�ľ�ҵ����;����󾫵Ĺ���̬�ȡ�\n5. �����������ܳ��ܽϴ�Ĺ���ѹ�����ر�Ҫ�����ִ�����������¹��ϣ����ڳԿ࣬ѧϰר������ǿ\n6. �߱����õ�Ӣ����˵��д����\n7�����д����Ż���վ���������ߣ��������棩����\n8������Ƶ�ɱ���Ϥ�����ȡ�\n9�������ܵ��ڹ���������', '�й��Ŵ�������', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1019, 5, -1, -1, null, to_date('13-04-2017 10:41:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:41:14', 'dd-mm-yyyy hh24:mi:ss'), '21212', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, '801', null, '223000', '224000', '1-1', null, '111', null, '�Ϻ����ֶ������߿���·', '0', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1020, 5, -1, -1, null, to_date('13-04-2017 12:22:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 12:22:44', 'dd-mm-yyyy hh24:mi:ss'), '��ϵ��Ϣ.png', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 5, null, null, null, null, null, null, null, null, '0', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170413122244392010164650100736.png', to_date('13-04-2017 12:22:44', 'dd-mm-yyyy hh24:mi:ss'), null, '����ְλ����1���������ڷ���', '1', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (1024, 1007, -1, -1, null, to_date('13-04-2017 16:25:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 16:25:36', 'dd-mm-yyyy hh24:mi:ss'), '��������.xmind', '170411152710407010108941534165', 130001, 0, '170411152737204010119931583844', 1007, null, null, null, null, null, null, null, null, '0', null, 'http://118.178.126.204:8099/aceserver/upfile/CANDI/201704/170413162536736010160586220403.xmind', to_date('13-04-2017 16:25:36', 'dd-mm-yyyy hh24:mi:ss'), null, '����ְλ����1���������ڷ���', '1', null, null, null, null);
commit;
prompt 27 records loaded
prompt Loading B_MMORGAN...
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1013, -1, -1, null, to_date('13-04-2017 17:46:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 17:49:23', 'dd-mm-yyyy hh24:mi:ss'), '170413174655470010198118749102', 'Ψ���Ƽ����޹�˾', null, null, 220001, 203008, 801, 130001, '����', null, null, null, null, '���ǶԵĶ��', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, 'Ψ���Ƽ�', null, null, '���ٷ���˵��', null, null, '2017-04-04', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1001, -1, -1, null, to_date('10-04-2017 14:26:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 14:26:17', 'dd-mm-yyyy hh24:mi:ss'), '170410142617017010138586411277', '��;����HC�Ƽ����޹�˾', null, null, 220001, 203008, 801, 130001, '�人', null, null, null, null, '��˾��ϸ��ַ���人', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '��;����', null, null, '��˾���ܣ���˾��ϸ��ַ���人', null, null, '2010-04-01', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1010, -1, -1, null, to_date('12-04-2017 16:56:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:56:30', 'dd-mm-yyyy hh24:mi:ss'), '170412165630689010125203758115', '��κ��', null, null, 220001, 0, 801, 130001, '��ɳ', null, null, null, null, '���㷺������������', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '����ȷ����˸�', null, null, '��', null, null, null, '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1004, -1, -1, null, to_date('10-04-2017 16:36:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 16:36:57', 'dd-mm-yyyy hh24:mi:ss'), '170410163657876010186853474260', '���ƹ�˾', null, null, 220001, 203008, 801, 130001, '����ʡ����³����ٻ�3F', null, null, null, null, '����ʡ����³����ٻ�3F', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '���ƹ�˾', null, null, '����ʡ����³����ٻ�3F', null, null, '2011-04-01', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1006, -1, -1, null, to_date('10-04-2017 17:07:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:27:32', 'dd-mm-yyyy hh24:mi:ss'), '170410170712314010124928653692', '��褹�˾', null, null, 220001, 203000, 801, 130001, '����', null, null, null, null, '��褹�˾', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '��褹�˾', null, null, '��褹�˾', null, null, '2010-04-02', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1007, -1, -1, null, to_date('11-04-2017 15:27:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:43:52', 'dd-mm-yyyy hh24:mi:ss'), '170411152737204010119931583844', '�湦��[�湦������������޹�˾]', null, null, 220001, 203008, 801, 130001, '���ͺ���', null, null, null, null, '�й��Ŵ�������', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '��������', null, null, '�ƾ���������', null, null, '2017-04-05', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1002, -1, -1, null, to_date('10-04-2017 14:52:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 14:52:45', 'dd-mm-yyyy hh24:mi:ss'), '170410145245329010119596833943', '����0', null, null, 220001, 203008, 801, 130001, '����', null, null, null, null, '��ķ�', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '����0', null, null, '��ķ�', null, null, '2013-04-05', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1003, -1, -1, null, to_date('10-04-2017 15:43:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 15:43:37', 'dd-mm-yyyy hh24:mi:ss'), '170410154337720010126513233308', '��HR濹�˾', null, null, 220001, 0, 801, 130001, '����', null, null, null, null, '����ʡ�ϲ��к��̲�������ڴ�ֽ�������11F', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '��濹�˾', null, null, '�ǵķ��͵���', null, null, '2010-04-01', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1005, -1, -1, null, to_date('10-04-2017 17:06:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 17:06:42', 'dd-mm-yyyy hh24:mi:ss'), '170410170642423010152090845310', '��褹�˾', null, null, 220001, 203008, 801, 130001, '����', null, null, null, null, '��褹�˾��褹�˾', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '��褹�˾', null, null, '��褹�˾��褹�˾', null, null, '2013-04-04', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '2016110100000011100000001', 'ACE-��ѡ�˹�˾', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (2, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '2016110100000022200000001', 'ACE-HR��˾', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '2016110100000033300000001', 'ACE-HC��˾', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '2016110100000099900000001', 'ACE-�ܹ�˾', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:39:47', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000001', 'ACE-�ͻ���˾1', null, 0, 220001, 203008, 801, 130001, '���嵺', null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 21:09:56', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000001', 'ACE-��ͷ��˾001', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:39:31', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000002', 'ACE-�ͻ���˾2', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:39:57', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000003', 'ACE-�ͻ���˾3', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:05', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000004', 'ACE-�ͻ���˾4', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:12', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000005', 'ACE-�ͻ���˾5', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (11, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:41', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000002', 'ACE-��ͷ��˾002', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (12, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:48', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000003', 'ACE-��ͷ��˾003', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (13, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-03-2017 08:18:17', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000004', 'ACE-��ͷ��˾004', null, 0, 220001, 203008, 801, 130001, null, null, null, null, null, '�Ϻ����ֶ������߿���·', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1000, -1, -1, null, to_date('10-04-2017 11:58:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 11:58:25', 'dd-mm-yyyy hh24:mi:ss'), '170410115825829010185977290073', '���������޹�˾', null, null, 220001, 0, 801, 130001, '����', null, null, null, null, '��˾��ϸ��ַ�����������ĵ�����', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '���ι�˾', null, null, '��˾��ϸ��ַ�����������ĵ�������˾��ϸ��ַ�����������ĵ�������˾��ϸ��ַ�����������ĵ�����', null, null, '1968-04-04', '222005', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1011, -1, -1, null, to_date('13-04-2017 10:30:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:30:42', 'dd-mm-yyyy hh24:mi:ss'), '170413103042814010139825167103', '�ߵ��ǷǴ������Ƹ��˾', null, null, 220001, 0, 801, 130001, '����', null, null, null, null, '�ĵ��εζ��', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '�ȵȼ�ƹ�˾', null, null, 'dddddd', null, null, '2010-03-31', '222001', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1012, -1, -1, null, to_date('13-04-2017 11:10:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:10:59', 'dd-mm-yyyy hh24:mi:ss'), '170413111059876010175496132737', 'Midea[���ļ��Źɷ����޹�˾]', null, null, 220001, 0, 801, 130001, '���ɹ�', null, null, null, null, '��¥', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, '222001', null, null, null, null, null);
commit;
prompt 25 records loaded
prompt Loading B_MMORGAN_AGREEMENT...
insert into B_MMORGAN_AGREEMENT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1001, 1001, -1, -1, null, to_date('10-04-2017 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), '170410142617017010138586411277', null, '2017-04-09', '2017-04-10', null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410151326423010127739135447.png', null, null);
insert into B_MMORGAN_AGREEMENT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1002, 1002, -1, -1, null, to_date('10-04-2017 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), '170410145245329010119596833943', null, '2017-04-09', '2017-04-10', null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410151347064010185773560131.png', null, null);
insert into B_MMORGAN_AGREEMENT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1010, 1007, -1, -1, null, to_date('11-04-2017 18:02:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 18:02:50', 'dd-mm-yyyy hh24:mi:ss'), '170411152737204010119931583844', null, '2017-04-11', '2021-04-29', null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411180250736010146644196676.jpg', null, null);
insert into B_MMORGAN_AGREEMENT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1003, 1004, -1, -1, null, to_date('10-04-2017 16:43:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 16:43:32', 'dd-mm-yyyy hh24:mi:ss'), '170410163657876010186853474260', null, '2017-04-10', '2017-04-11', null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410164332392010108178925361.png', null, null);
insert into B_MMORGAN_AGREEMENT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1004, 1005, -1, -1, null, to_date('10-04-2017 17:10:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 17:10:50', 'dd-mm-yyyy hh24:mi:ss'), '170410170642423010152090845310', null, '2017-04-10', '2017-04-12', null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410171050517010136807589647.jpg', null, null);
insert into B_MMORGAN_AGREEMENT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (1020, 1013, -1, -1, null, to_date('13-04-2017 17:54:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 17:54:23', 'dd-mm-yyyy hh24:mi:ss'), '170413174655470010198118749102', null, '2017-04-01', '2018-04-30', null, null, null, null, null, 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413175423704010123990289846.pdf', null, null);
commit;
prompt 6 records loaded
prompt Loading B_STAT...
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18412, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260001, 130001, null, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, null, null, 150, 500, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18417, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260001, 130001, null, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, null, null, 150, 500, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18418, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260002, 130001, null, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, null, null, 250, 800, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18419, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260003, 130001, null, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, null, null, 550, 2000, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18420, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260004, 130001, null, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, null, null, 950, 4900, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18421, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260009, 130001, null, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, null, null, 1500, 6000, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18413, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260002, 130001, null, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, null, null, 250, 800, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18414, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260003, 130001, null, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, null, null, 550, 2000, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18415, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260004, 130001, null, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, null, null, 950, 4900, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (18416, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260009, 130001, null, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, null, null, 1500, 6000, null, null, null, null);
commit;
prompt 10 records loaded
prompt Loading B_STAT_HC...
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59016, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260001, 130001, '20161209000000888000000001', 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59017, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260002, 130001, '20161209000000888000000001', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59018, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260003, 130001, '20161209000000888000000001', 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59019, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260004, 130001, '20161209000000888000000001', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59020, -1, -1, null, to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:05:04', 'dd-mm-yyyy hh24:mi:ss'), 260009, 130001, '20161209000000888000000001', 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59012, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260002, 130001, '20161209000000888000000001', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59013, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260003, 130001, '20161209000000888000000001', 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59014, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260004, 130001, '20161209000000888000000001', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
insert into B_STAT_HC (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (59015, -1, -1, null, to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 13:04:04', 'dd-mm-yyyy hh24:mi:ss'), 260009, 130001, '20161209000000888000000001', 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 9 records loaded
prompt Loading B_T_CANDIDATE_INVITELOG...
prompt Table is empty
prompt Loading B_T_CANDIDATE_VIEWLOG...
prompt Table is empty
prompt Loading B_USERLOGIN...
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1032, -1, -1, null, to_date('12-04-2017 22:35:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 22:35:29', 'dd-mm-yyyy hh24:mi:ss'), '170412223529657010106442141851', '18700010001', 'e10adc3949ba59abbe56e057f20f883e', 2, -1, null, null, null, 130000, null, 't6442141851', null, null, '132002', null, null, null, null, null, null, null, 0, null, 1, 'sallyHR001', null, 0, null, null, null, null, null, 'COO', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1022, -1, -1, null, to_date('11-04-2017 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), '170411151333736010103485110478', '17878727788', '96e79218965eb72c92a549dd5a330112', 3, -1, null, null, null, 130000, null, '8882', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411151333564010158312276438.jpg', null, '132001', null, null, null, null, null, null, null, 0, null, 1, '8882', null, 0, null, null, null, '22', '898882@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1020, -1, -1, null, to_date('11-04-2017 13:47:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 13:47:20', 'dd-mm-yyyy hh24:mi:ss'), '170411134720501010198127824544', '15827629870', 'e10adc3949ba59abbe56e057f20f883e', 3, -1, null, to_date('13-04-2017 17:38:51', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 'Alex WANG', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411134720095010152183241787.jpg', null, '132001', null, null, null, null, null, null, null, 29, null, 1, '������', null, 0, null, null, null, '021-53683007', 'alex.wang@antsnest.com.cn', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1033, -1, -1, null, to_date('12-04-2017 22:38:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 22:38:13', 'dd-mm-yyyy hh24:mi:ss'), '170412223813532010179298551638', '18700010002', 'e10adc3949ba59abbe56e057f20f883e', 2, -1, null, null, null, 130000, null, 't9298551638', null, null, '132002', null, null, null, null, null, null, null, 0, null, 1, 'SallyHR002', null, 0, null, null, null, null, null, 'COO', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1035, -1, -1, null, to_date('13-04-2017 10:30:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:30:26', 'dd-mm-yyyy hh24:mi:ss'), '170413103025970010164595978079', '13525255656', 'e10adc3949ba59abbe56e057f20f883e', 2, 1011, '170413103042814010139825167103', null, null, 130000, null, '��HRϪ', null, null, '132002', null, null, null, null, null, null, null, 0, null, 1, '��HRϪ', null, 0, null, null, null, 'sjdof zuoji����', 'wangqiang99@weibopay.com', 'ndo', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1038, -1, -1, null, to_date('13-04-2017 17:46:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 17:49:23', 'dd-mm-yyyy hh24:mi:ss'), '170413174641532010176103080040', '13569696969', '25f9e794323b453885f5181f1b624d0b', 2, 1013, '170413174655470010198118749102', to_date('13-04-2017 17:48:24', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '��HR��', null, null, '132002', null, null, null, null, null, null, null, 1, null, 1, '��HR��', null, 0, null, null, null, '������52588789', 'defi.wang@ace-elite.com', '��ƸרԱ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1016, -1, -1, null, to_date('10-04-2017 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), '170410203237392010197742368573', '13400001111', '1782ea829c490508968863f531ac955b', 3, -1, null, null, null, 130000, null, '��HC��', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410203237204010164335924430.jpg', null, '132002', null, null, null, null, null, null, null, 0, null, 1, '��HC��', null, 0, null, null, null, '9988776655', '917817917@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1031, -1, -1, null, to_date('12-04-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), '170412165616908010139101349091', '13636363636', '1782ea829c490508968863f531ac955b', 2, 1010, '170412165630689010125203758115', null, null, 130000, null, '��HR��', null, null, '132001', null, null, null, null, null, null, null, 0, null, 1, '��HR��', null, 0, null, null, null, null, 'mike.gu@ace-elite.com', '5df16511', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1010, -1, -1, null, to_date('10-04-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), '170410115658064010130485694493', '18144445555', '1782ea829c490508968863f531ac955b', 2, 1000, '170410115825829010185977290073', null, null, 130000, null, '������HR1', null, null, '132002', null, null, null, null, null, null, null, 0, null, 1, '������HR1', null, 0, null, null, null, '�ǵķ�����', 'wangpanpan@weibopay.com', '��Ƹ����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1019, -1, -1, null, to_date('11-04-2017 06:35:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 06:35:32', 'dd-mm-yyyy hh24:mi:ss'), '170411063532720010147863864373', '13300010002', 'e10adc3949ba59abbe56e057f20f883e', 3, 3, '2016110100000033300000001', to_date('11-04-2017 06:36:31', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 'SallyHC002', 'http://118.178.126.204:8088/aceserver/upfile/MM/201704/170411063532595010189914166449.jpg', null, '132002', null, null, null, null, null, null, null, 1, null, 1, 'Sally', null, 0, null, null, null, null, 'ss@sina.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1024, -1, -1, null, to_date('11-04-2017 15:27:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:43:52', 'dd-mm-yyyy hh24:mi:ss'), '170411152710407010108941534165', '13355558888', '1782ea829c490508968863f531ac955b', 2, 1007, '170411152737204010119931583844', to_date('13-04-2017 16:11:16', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����HR��', null, null, '132002', null, null, null, null, null, null, null, 12, null, 1, '����HR��', null, 0, null, null, null, '�ʵ�����88889999', 'wangqiang@weibopay.com', '�ʵ�', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1012, -1, -1, null, to_date('10-04-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), '170410145228064010126264216574', '13911113333', '1782ea829c490508968863f531ac955b', 2, 1002, '170410145245329010119596833943', null, null, 130000, null, '����HR01', null, null, '132002', null, null, null, null, null, null, null, 0, null, 1, '����HR01', null, 0, null, null, null, '������', 'linda.li@ace-elite.com', '���Ǵ��', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1011, 802001, 801000, '13911112222 13911112222 13911112222 ����HR01 zhoupengHR01 zpHR01 ', to_date('10-04-2017 14:23:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 16:30:23', 'dd-mm-yyyy hh24:mi:ss'), '170410142357876010131833703750', '13911112222', '1782ea829c490508968863f531ac955b', 2, 1001, '170410142617017010138586411277', to_date('10-04-2017 15:09:28', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����HR01', null, null, '132002', null, null, null, null, null, null, null, 1, null, 1, '����HR01', null, 0, null, null, null, '���õ���', 'defi.wang0@ace-elite.com', '��ͷ��������', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1013, 802001, 801000, '15500001111 15500001111 15500001111 ��HR� wangHRchan wHRc ', to_date('10-04-2017 15:29:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 16:38:10', 'dd-mm-yyyy hh24:mi:ss'), '170410152938626010107433669463', '15500001111', '1782ea829c490508968863f531ac955b', 2, 1003, '170410154337720010126513233308', to_date('10-04-2017 16:34:10', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '��HR�', null, null, '132002', null, null, null, null, null, null, null, 1, null, 1, '��HR�', null, 0, null, null, null, '85508511', 'defi.wang1@ace-elite.com', '���ǵط�', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1015, -1, -1, null, to_date('10-04-2017 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:27:32', 'dd-mm-yyyy hh24:mi:ss'), '170410170627532010157855902255', '15500003333', '1782ea829c490508968863f531ac955b', 2, 1006, '170410170712314010124928653692', to_date('10-04-2017 17:10:27', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '��HR�', null, null, '132001', null, null, null, null, null, null, null, 1, null, 1, '��HR�', null, 0, null, null, null, '�й�����0791', 'defi.wang4@ace-elite.com', 'Ӫ���ܼ�', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1014, 802001, 801000, '15500002222 15500002222 15500002222 ��HR�� zhouHRyun zHRy ', to_date('10-04-2017 16:36:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 17:08:14', 'dd-mm-yyyy hh24:mi:ss'), '170410163625626010114407570241', '15500002222', '1782ea829c490508968863f531ac955b', 2, 1004, '170410163657876010186853474260', to_date('10-04-2017 16:41:56', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '��HR��', null, null, '132002', null, null, null, null, null, null, null, 1, null, 1, '��HR��', null, 0, null, null, null, '85508522', 'defi.wang3@ace-elite.com', '������', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1017, -1, -1, null, to_date('10-04-2017 20:39:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 20:39:01', 'dd-mm-yyyy hh24:mi:ss'), '170410203901392010158296429175', '13400002222', '1782ea829c490508968863f531ac955b', 3, -1, null, null, null, 130000, null, '��HC��', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170410203901189010169431232038.jpg', null, '132002', null, null, null, null, null, null, null, 0, null, 1, '��HC��', null, 0, null, null, null, '�������ص�˵��', '9178179178@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1039, -1, -1, null, to_date('13-04-2017 18:05:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 18:05:33', 'dd-mm-yyyy hh24:mi:ss'), '170413180533736010176939216802', '18912345678', 'e10adc3949ba59abbe56e057f20f883e', 3, -1, null, null, null, 130001, null, '���ү', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413180533329010137397917039.jpeg', null, '132001', null, null, null, null, null, null, null, 0, null, 1, '���ү', null, 0, null, null, null, null, 'kedou@126.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000111000000001', '19900000001', '25d55ad283aa400af464c76d713c07ad', 1, 1, '2016110100000011100000001', to_date('05-01-2017 14:54:26', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, '132002', null, null, null, null, null, null, null, 164, null, 1, '���ӻ�', null, 0, null, null, null, '22', '222222', '2222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (2, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000222000000001', '19900000002', '25d55ad283aa400af464c76d713c07ad', 2, 2, '2016110100000022200000001', to_date('13-12-2016 22:26:37', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, '132001', null, null, null, null, null, null, null, 4, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (3, 802001, 801000, '19900000003 19900000003 19900000003 ���� baiyun by ', to_date('01-11-2016', 'dd-mm-yyyy'), to_date('11-01-2017 17:22:39', 'dd-mm-yyyy hh24:mi:ss'), '20161101000000333000000001', '19900000003', '25d55ad283aa400af464c76d713c07ad', 3, 3, '2016110100000033300000001', to_date('05-01-2017 16:43:35', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 152, null, 1, '����', null, 0, null, null, null, '33', '333', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (4, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000999000000001', '19900000008', '25d55ad283aa400af464c76d713c07ad', 9, 4, '2016110100000099900000001', to_date('14-04-2017 12:56:21', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 'Ī��', null, null, null, null, null, null, null, null, null, null, 333, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (5, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000999000000091', '19900000009', '25d55ad283aa400af464c76d713c07ad', 9, 4, '2016110100000099900000001', to_date('19-12-2016 14:55:22', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 'Ī��', null, null, null, null, null, null, null, null, null, null, 0, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (6, 802001, 801000, '17700000001 17700000001 17700000001 ���ӻ� baizihua bzh ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 17:39:01', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000001', '17700000001', '25d55ad283aa400af464c76d713c07ad', 2, 5, '2016120100000010100000001', to_date('14-04-2017 11:59:44', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '���ӻ�', null, null, '132001', null, null, null, null, null, null, null, 644, null, 1, '���ӻ�', null, 0, null, null, null, '223', '222222', '2222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (7, 802001, 801000, '17700000002 17700000002 17700000002 ������ baiziya bzy ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:42:23', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000002', '17700000002', '25d55ad283aa400af464c76d713c07ad', 2, 7, '2016120100000010100000002', to_date('13-04-2017 20:26:26', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 12, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (8, 802001, 801000, '17700000003 17700000003 17700000003 ������ baiziyue bzy ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:43:14', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000003', '17700000003', '25d55ad283aa400af464c76d713c07ad', 2, 8, '2016120100000010100000003', to_date('13-04-2017 20:39:06', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 4, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (9, 802001, 801000, '17700000004 17700000004 17700000004 ������ baizitian bzt ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:43:46', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000004', '17700000004', '25d55ad283aa400af464c76d713c07ad', 2, 9, '2016120100000010100000004', to_date('13-04-2017 16:49:00', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 9, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (10, 802001, 801000, '17700000005 17700000005 17700000005 ������ baiziqi bzq ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:44:37', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000005', '17700000005', '25d55ad283aa400af464c76d713c07ad', 2, 10, '2016120100000010100000005', to_date('06-04-2017 01:04:31', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 4, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (11, 802001, 801000, '17700000006 17700000006 17700000006 ������ baiziweng bzw ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:45:15', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000006', '17700000006', '25d55ad283aa400af464c76d713c07ad', 2, 10, '2016120100000010100000005', to_date('06-04-2017 01:04:22', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 2, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (12, 802001, 801000, '18800000001 18800000001 18800000001 ���� lantian lt ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 10:01:28', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '18800000001', '25d55ad283aa400af464c76d713c07ad', 3, 6, '2016120900000099900000001', to_date('14-04-2017 12:55:41', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '��ɽ', 'http://118.178.126.204:8088/aceserver/upfile/MM/201704/170402201711970010145424709531.jpg', null, '132002', null, null, null, null, null, null, null, 850, null, 1, '��ɽ', null, 0, null, null, null, '333333333', 'lan001@sina.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (13, 802001, 801000, '18800000002 18800000002 18800000002 ���� lanyu ly ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:47:58', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000002', '18800000002', '25d55ad283aa400af464c76d713c07ad', 3, 11, '2016120900000099900000002', to_date('11-04-2017 11:50:20', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 29, null, 1, '����', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (14, 802001, 801000, '18800000003 18800000003 18800000003 ���� lanhai lh ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:49:20', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000003', '18800000003', '25d55ad283aa400af464c76d713c07ad', 3, 12, '2016120900000099900000003', to_date('10-04-2017 11:24:26', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 39, null, 1, '����', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (15, 802001, 801000, '18800000004 18800000004 18800000004 ���� landao ld ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 11:22:57', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000004', '18800000004', '25d55ad283aa400af464c76d713c07ad', 3, 13, '2016120900000099900000004', to_date('13-04-2017 18:14:38', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '��ϣ', null, null, null, null, null, null, null, null, null, null, 46, null, 1, '����', null, 0, null, null, null, '1', 'cv@ace.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (16, 802001, 801000, '18800000005 18800000005 18800000005 ���� landao ld ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:50:48', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000005', '18800000005', '25d55ad283aa400af464c76d713c07ad', 3, 13, '2016120900000099900000004', to_date('19-01-2017 10:06:52', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '��÷', null, null, null, null, null, null, null, null, null, null, 4, null, 1, '����', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (17, 802001, 801000, '18800000005 18800000005 18800000005 ���� landao ld ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:50:48', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000006', '18800000006', '25d55ad283aa400af464c76d713c07ad', 3, 13, '2016120900000099900000004', to_date('19-01-2017 10:06:52', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 4, null, 1, '����', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1023, -1, -1, null, to_date('11-04-2017 15:18:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:18:06', 'dd-mm-yyyy hh24:mi:ss'), '170411151805970010176278782080', '15555555555', '1782ea829c490508968863f531ac955b', 3, -1, null, null, null, 130000, null, 'è��', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411151805798010187059162653.jpg', null, '132001', null, null, null, null, null, null, null, 0, null, 1, 'è��', null, 0, null, null, null, '���õ���', '9178179187@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1001, 802001, 801000, '18111112222 18111112222 18111112222 Defi_HC1 Defi_HC1 Defi_HC1 ', to_date('06-04-2017 19:55:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:29:38', 'dd-mm-yyyy hh24:mi:ss'), '170406195516486010138852998044', '18111112222', '1782ea829c490508968863f531ac955b', 3, -1, null, null, null, 130000, null, 'Defi_HC1', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170406195516345010147648434854.jpg', null, '132002', null, null, null, null, null, null, null, 0, null, 1, 'Defi_HC1', null, 0, null, null, null, null, 'wangqian00g@weibopay.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1021, 802001, 801000, '18888888888 18888888888 18888888888 ǬHC¡ qianHClong qHCl ', to_date('11-04-2017 15:05:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:53:36', 'dd-mm-yyyy hh24:mi:ss'), '170411150553142010112522769071', '18888888888', '1782ea829c490508968863f531ac955b', 3, -1, null, to_date('13-04-2017 18:20:30', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 'ǬHC¡', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170411150552892010107814110353.jpg', null, '132002', null, null, null, null, null, null, null, 23, null, 1, 'ǬHC¡', null, 0, null, null, null, 'ǬHC¡88888888����', 'defi.wangKK@ace-elite.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1030, 802001, 801000, '13818181818 13818181818 13818181818 ��HC�� liuHCbei lHCb ', to_date('12-04-2017 16:54:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:57:17', 'dd-mm-yyyy hh24:mi:ss'), '170412165411548010186648453788', '13818181818', '1782ea829c490508968863f531ac955b', 3, -1, null, null, null, 130000, null, '��HC��', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170412165411314010146174152975.png', null, '132001', null, null, null, null, null, null, null, 0, null, 1, '��HC��', null, 0, null, null, null, null, 'defi.wangdd@ace-elite.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1034, -1, -1, null, to_date('13-04-2017 10:29:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:45:30', 'dd-mm-yyyy hh24:mi:ss'), '170413102903751010162735893029', '18855557777', '1782ea829c490508968863f531ac955b', 3, -1, null, null, null, 130001, null, 'linHCda', 'http://118.178.126.204:8099/aceserver/upfile/MM/201704/170413102903454010198526657550.png', null, '132002', null, null, null, null, null, null, null, 0, null, 1, 'linHCda', null, 0, null, null, null, '�Ŀ��ڵ�����', 'weibo@weibopay.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1036, -1, -1, null, to_date('13-04-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), '170413110105642010195300919475', '18629373743', 'e10adc3949ba59abbe56e057f20f883e', 2, -1, null, null, null, 130000, null, 'Walle tseer<����ϵ>', null, null, '132002', null, null, null, null, null, null, null, 0, null, 1, 'Walle tseer<����ϵ>', null, 0, null, null, null, null, null, '233223', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1037, -1, -1, null, to_date('13-04-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), '170413111046345010139437060602', '18729833333', 'e10adc3949ba59abbe56e057f20f883e', 2, 1012, '170413111059876010175496132737', null, null, 130001, null, 'Walleeee', null, null, '132002', null, null, null, null, null, null, null, 0, null, 1, 'Walleeee', null, 0, null, null, null, null, 'walle.liu@ace-elite.com', '323��λ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 42 records loaded
prompt Loading B_USER_LOCATION...
prompt Table is empty
prompt Loading B_VOTE_JOBTOP...
insert into B_VOTE_JOBTOP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5)
values (1002, -1, -1, null, to_date('13-04-2017 17:27:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 17:27:02', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000001', '2016120100000010100000001', null, '��Ʒ����`Ʒ�ƾ���`��Ӫ����', '��Ӫ����');
insert into B_VOTE_JOBTOP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5)
values (1001, -1, -1, null, to_date('13-04-2017 10:31:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 10:31:53', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000001', '2016120100000010100000001', null, '��Ʒ����`Ʒ�ƾ���`��Ӫ����', '��Ʒ����,Ʒ�ƾ���,��Ӫ����');
insert into B_VOTE_JOBTOP (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5)
values (1003, -1, -1, null, to_date('14-04-2017 11:38:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 11:38:47', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000001', '2016120100000010100000001', null, '��Ʒ����`Ʒ�ƾ���`��Ӫ����', '��Ʒ����,��Ӫ����');
commit;
prompt 3 records loaded
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
prompt Enabling triggers for BO_CANDIDATE...
alter table BO_CANDIDATE enable all triggers;
prompt Enabling triggers for BO_CANDIDATE_CVCERTIFICATE...
alter table BO_CANDIDATE_CVCERTIFICATE enable all triggers;
prompt Enabling triggers for BO_CANDIDATE_CVEDUCATION...
alter table BO_CANDIDATE_CVEDUCATION enable all triggers;
prompt Enabling triggers for BO_CANDIDATE_CVPROJECT...
alter table BO_CANDIDATE_CVPROJECT enable all triggers;
prompt Enabling triggers for BO_CANDIDATE_CVTRAIN...
alter table BO_CANDIDATE_CVTRAIN enable all triggers;
prompt Enabling triggers for BO_CANDIDATE_CVWORK...
alter table BO_CANDIDATE_CVWORK enable all triggers;
prompt Enabling triggers for BO_CANDIDATE_HCCOMMENT...
alter table BO_CANDIDATE_HCCOMMENT enable all triggers;
prompt Enabling triggers for B_ACEWORK...
alter table B_ACEWORK enable all triggers;
prompt Enabling triggers for B_ACTION...
alter table B_ACTION enable all triggers;
prompt Enabling triggers for B_BILL...
alter table B_BILL enable all triggers;
prompt Enabling triggers for B_CANDIDATE...
alter table B_CANDIDATE enable all triggers;
prompt Enabling triggers for B_CANDIDATE_COLLECT...
alter table B_CANDIDATE_COLLECT enable all triggers;
prompt Enabling triggers for B_CANDIDATE_CVCERTIFICATE...
alter table B_CANDIDATE_CVCERTIFICATE enable all triggers;
prompt Enabling triggers for B_CANDIDATE_CVEDUCATION...
alter table B_CANDIDATE_CVEDUCATION enable all triggers;
prompt Enabling triggers for B_CANDIDATE_CVPROJECT...
alter table B_CANDIDATE_CVPROJECT enable all triggers;
prompt Enabling triggers for B_CANDIDATE_CVTRAIN...
alter table B_CANDIDATE_CVTRAIN enable all triggers;
prompt Enabling triggers for B_CANDIDATE_CVWORK...
alter table B_CANDIDATE_CVWORK enable all triggers;
prompt Enabling triggers for B_CANDIDATE_FILES...
alter table B_CANDIDATE_FILES enable all triggers;
prompt Enabling triggers for B_CANDIDATE_HCCOMMENT...
alter table B_CANDIDATE_HCCOMMENT enable all triggers;
prompt Enabling triggers for B_CANDIDATE_INTERVIEW...
alter table B_CANDIDATE_INTERVIEW enable all triggers;
prompt Enabling triggers for B_CANDIDATE_MARKER...
alter table B_CANDIDATE_MARKER enable all triggers;
prompt Enabling triggers for B_CANDIDATE_ORGAN_RELATION...
alter table B_CANDIDATE_ORGAN_RELATION enable all triggers;
prompt Enabling triggers for B_CANDIDATE_PROCESS...
alter table B_CANDIDATE_PROCESS enable all triggers;
prompt Enabling triggers for B_CANDIDATE_PROCESS_HIS...
alter table B_CANDIDATE_PROCESS_HIS enable all triggers;
prompt Enabling triggers for B_HR...
alter table B_HR enable all triggers;
prompt Enabling triggers for B_HUNTER...
alter table B_HUNTER enable all triggers;
prompt Enabling triggers for B_INVITECODE...
alter table B_INVITECODE enable all triggers;
prompt Enabling triggers for B_JOB...
alter table B_JOB enable all triggers;
prompt Enabling triggers for B_MMORGAN...
alter table B_MMORGAN enable all triggers;
prompt Enabling triggers for B_MMORGAN_AGREEMENT...
alter table B_MMORGAN_AGREEMENT enable all triggers;
prompt Enabling triggers for B_STAT...
alter table B_STAT enable all triggers;
prompt Enabling triggers for B_STAT_HC...
alter table B_STAT_HC enable all triggers;
prompt Enabling triggers for B_T_CANDIDATE_INVITELOG...
alter table B_T_CANDIDATE_INVITELOG enable all triggers;
prompt Enabling triggers for B_T_CANDIDATE_VIEWLOG...
alter table B_T_CANDIDATE_VIEWLOG enable all triggers;
prompt Enabling triggers for B_USERLOGIN...
alter table B_USERLOGIN enable all triggers;
prompt Enabling triggers for B_USER_LOCATION...
alter table B_USER_LOCATION enable all triggers;
prompt Enabling triggers for B_VOTE_JOBTOP...
alter table B_VOTE_JOBTOP enable all triggers;
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
set feedback on
set define on
prompt Done.
