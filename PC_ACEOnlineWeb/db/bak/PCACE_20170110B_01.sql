prompt PL/SQL Developer import file
prompt Created on 2017��1��10�� by Administrator
set feedback off
set define off
prompt Dropping B_ACETASK...
drop table B_ACETASK cascade constraints;
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
prompt Dropping B_CANDIDATE_CVJOB...
drop table B_CANDIDATE_CVJOB cascade constraints;
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
prompt Dropping B_CANDIDATE_LANGUAGE...
drop table B_CANDIDATE_LANGUAGE cascade constraints;
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
prompt Dropping B_JOB...
drop table B_JOB cascade constraints;
prompt Dropping B_MMORGAN...
drop table B_MMORGAN cascade constraints;
prompt Dropping B_MMORGAN_AGREEMENT...
drop table B_MMORGAN_AGREEMENT cascade constraints;
prompt Dropping B_MMORGAN_INVITECODE...
drop table B_MMORGAN_INVITECODE cascade constraints;
prompt Dropping B_STAT...
drop table B_STAT cascade constraints;
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
prompt Creating B_ACETASK...
create table B_ACETASK
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
alter table B_ACETASK
  add constraint B_ACETASK_PK primary key (DATAID)
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
  c52          VARCHAR2(50),
  c53          NUMBER(6),
  c54          VARCHAR2(50),
  c55          VARCHAR2(200),
  c56          VARCHAR2(100),
  c57          NUMBER(6),
  c58          VARCHAR2(100),
  c59          CHAR(1)
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
alter table B_BILL
  add constraint B_BILL_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

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
  c5           CHAR(1) default '0',
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
  c27          NUMBER(11),
  c28          NUMBER(11),
  c29          NUMBER(11),
  c30          NUMBER(11),
  c31          NUMBER(6),
  c32          NUMBER(6),
  c33          NUMBER(6),
  c34          NUMBER(6),
  c35          VARCHAR2(500),
  c36          NUMBER(6),
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
  c52          VARCHAR2(1000),
  c53          VARCHAR2(1000),
  c54          VARCHAR2(1000),
  c55          VARCHAR2(1000),
  c56          VARCHAR2(1000),
  c57          VARCHAR2(2000),
  c58          VARCHAR2(2000),
  c59          VARCHAR2(2000),
  c60          VARCHAR2(4000),
  c61          VARCHAR2(4000),
  c62          VARCHAR2(200),
  c63          VARCHAR2(4000),
  c64          VARCHAR2(4000),
  c65          NUMBER(6),
  c66          NUMBER(6),
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
  c81          VARCHAR2(30),
  c82          VARCHAR2(30),
  c83          VARCHAR2(30),
  c84          VARCHAR2(30),
  c85          VARCHAR2(30),
  c86          VARCHAR2(30),
  c87          VARCHAR2(30),
  c88          VARCHAR2(30),
  c89          VARCHAR2(30),
  c90          VARCHAR2(30)
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

prompt Creating B_CANDIDATE_CVJOB...
create table B_CANDIDATE_CVJOB
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
  c3           VARCHAR2(30),
  c4           VARCHAR2(30),
  c5           NUMBER(11),
  c6           VARCHAR2(1000),
  c7           NUMBER(6),
  c8           VARCHAR2(100),
  c9           VARCHAR2(100),
  c10          VARCHAR2(100),
  c11          NUMBER(6),
  c12          NUMBER(6),
  c13          VARCHAR2(100),
  c14          VARCHAR2(1000),
  c15          VARCHAR2(200),
  c16          VARCHAR2(200),
  c17          NUMBER(6),
  c18          NUMBER(6),
  c19          NUMBER(6),
  c20          NUMBER(6),
  c21          VARCHAR2(50),
  c22          VARCHAR2(30),
  c23          DATE
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
alter table B_CANDIDATE_CVJOB
  add constraint B_CANDIDATE_CVJOB_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

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
  c13          VARCHAR2(100),
  c14          VARCHAR2(1000),
  c15          VARCHAR2(200),
  c16          VARCHAR2(200),
  c17          VARCHAR2(100),
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
  c4           VARCHAR2(200),
  c5           VARCHAR2(100),
  c6           VARCHAR2(200),
  c7           NUMBER(6),
  c8           VARCHAR2(200),
  c9           VARCHAR2(100),
  c10          VARCHAR2(200)
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
alter table B_CANDIDATE_FILES
  add constraint B_CANDIDATE_FILES_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

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
  c5           NUMBER(6),
  c6           DATE,
  c7           VARCHAR2(100),
  c8           VARCHAR2(50),
  c9           VARCHAR2(200),
  c10          NUMBER(6),
  c11          DATE,
  c12          VARCHAR2(50),
  c13          VARCHAR2(500),
  c14          NUMBER(6),
  c15          DATE,
  c16          VARCHAR2(50),
  c17          VARCHAR2(500),
  c18          NUMBER(11),
  c19          NUMBER(11),
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
    minextents 1
    maxextents unlimited
  );
alter table B_CANDIDATE_INTERVIEW
  add constraint B_CANDIDATE_INTERVIEW_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_CANDIDATE_LANGUAGE...
create table B_CANDIDATE_LANGUAGE
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
  c4           NUMBER(6),
  c5           NUMBER(6),
  c6           VARCHAR2(32),
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
    minextents 1
    maxextents unlimited
  );
alter table B_CANDIDATE_LANGUAGE
  add constraint B_CANDIDATE_LANGUAGE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

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
alter table B_CANDIDATE_ORGAN_RELATION
  add constraint B_CANDIDATE_ORGAN_PK primary key (DATAID)
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
  c9           NUMBER(6) default 0,
  c10          DATE,
  c11          VARCHAR2(200),
  c12          VARCHAR2(200),
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
  c26          NUMBER(6),
  c27          NUMBER(6),
  c28          VARCHAR2(200),
  c29          NUMBER(6),
  c30          VARCHAR2(200)
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
  c10          VARCHAR2(50),
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
  c26          NUMBER(6) default 0,
  c27          NUMBER(6) default 0,
  c28          NUMBER(6) default 0,
  c29          NUMBER(6) default 0,
  c30          NUMBER(6) default 0,
  c31          NUMBER(6),
  c32          DATE,
  c33          VARCHAR2(200),
  c34          VARCHAR2(200),
  c35          VARCHAR2(30)
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
    minextents 1
    maxextents unlimited
  );
alter table B_MMORGAN_AGREEMENT
  add constraint B_MMORGAN_AGREEMENT_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating B_MMORGAN_INVITECODE...
create table B_MMORGAN_INVITECODE
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
alter table B_MMORGAN_INVITECODE
  add constraint B_MMORGAN_INVITECODE_PK primary key (DATAID)
  using index 
  tablespace TABLESPACE_PCACE
  pctfree 10
  initrans 2
  maxtrans 255;

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

prompt Disabling triggers for B_ACETASK...
alter table B_ACETASK disable all triggers;
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
prompt Disabling triggers for B_CANDIDATE_CVJOB...
alter table B_CANDIDATE_CVJOB disable all triggers;
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
prompt Disabling triggers for B_CANDIDATE_LANGUAGE...
alter table B_CANDIDATE_LANGUAGE disable all triggers;
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
prompt Disabling triggers for B_JOB...
alter table B_JOB disable all triggers;
prompt Disabling triggers for B_MMORGAN...
alter table B_MMORGAN disable all triggers;
prompt Disabling triggers for B_MMORGAN_AGREEMENT...
alter table B_MMORGAN_AGREEMENT disable all triggers;
prompt Disabling triggers for B_MMORGAN_INVITECODE...
alter table B_MMORGAN_INVITECODE disable all triggers;
prompt Disabling triggers for B_STAT...
alter table B_STAT disable all triggers;
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
prompt Loading B_ACETASK...
prompt Table is empty
prompt Loading B_ACTION...
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (4, -1, -1, null, to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', '20161209000000888000000005', 130001, null, 254001, 251004, 'A331001', 253009, to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HR��˾][HR]��ע�˺�ѡ��[C]', '[HR��˾][HR]��ע�˺�ѡ��[C]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '1', '1', '1', '1', '1', null, null, null, '20161209000000888000000005', null, null, null, null, '[HR��˾][HR]��ע�˺�ѡ��[C]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('03-01-2017 20:17:00', 'dd-mm-yyyy hh24:mi:ss'), '��ɳ', null, '��LV | ����ܼࣩ', 242001, null, null, '��ѡ�˱� [HR��˾] | [HR] ��ע��', 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (5, -1, -1, null, to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654480', '20161209000000888000000003', 130666, '170103203602326010196582606293', 254001, 251004, 'A330000', 253009, to_date('04-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', null, null, null, '20161209000000888000000003', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('03-01-2017 20:36:00', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (6, -1, -1, null, to_date('03-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', '20161209000000888000000001', 130666, '170103203847639010178087456208', 254001, 251004, 'A330000', 253009, to_date('04-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', null, null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('03-01-2017 20:38:00', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (7, -1, -1, null, to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A331001', 253009, to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HR��˾][HR]��ע�˺�ѡ��[C]', '[HR��˾][HR]��ע�˺�ѡ��[C]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '1', '1', '1', '1', '1', null, null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]��ע�˺�ѡ��[C]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('03-01-2017 20:38:00', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 242001, null, 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '��ѡ�˱� [HR��˾] | [HR] ��ע��', 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (8, -1, -1, null, to_date('03-01-2017 20:38:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:38:58', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A330000', 253009, to_date('04-01-2017 20:38:58', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', null, null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('03-01-2017 20:38:00', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (9, -1, -1, null, to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', '20161209000000888000000001', 130666, '170103203913421010149813186504', 254001, 251004, 'A330000', 253009, to_date('04-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', null, null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('03-01-2017 20:39:00', 'dd-mm-yyyy hh24:mi:ss'), '��ʮһ', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (10, -1, -1, null, to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', '20161209000000888000000001', 130666, '170103203913421010149813186504', 254001, 251004, 'A331001', 253009, to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HR��˾][HR]��ע�˺�ѡ��[C]', '[HR��˾][HR]��ע�˺�ѡ��[C]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '1', '1', '1', '1', '1', null, null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]��ע�˺�ѡ��[C]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), '��ʮһ', null, '��LV | ����ܼࣩ', 242001, null, 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '��ѡ�˱� [HR��˾] | [HR] ��ע��', 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (11, -1, -1, null, to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170104171757947010145031792061', 254001, 251004, 'A330000', 253009, to_date('05-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', null, null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('04-01-2017 17:17:00', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (12, -1, -1, null, to_date('04-01-2017 19:10:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 19:10:16', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170104171757947010145031792061', 254001, 251004, 'A330041', 253009, to_date('04-01-2017 19:10:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]�ܾ�����[HR��˾][JOB]', '��ѡ��[C]�ܾ�����[HR��˾][JOB]', '�ܾ����� | [HR��˾]', '�ܾ����� | [HR��˾]', '�ܾ����� | [HR��˾]', '1', '1', '1', '1', '1', null, null, null, null, '20161201000000222000000001', null, null, null, null, '��ѡ��[C]�ܾ�����', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('04-01-2017 19:10:00', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 245042, '�ܾ�����', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (13, -1, -1, null, to_date('04-01-2017 19:20:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 19:20:43', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251003, 'A330001', 253009, to_date('04-01-2017 19:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]ͬ������[HR��˾][JOB]', '��ѡ��[C]ͬ������[HR��˾][JOB]', 'ͬ������ | [HR��˾]', 'ͬ������ | [HR��˾]', 'ͬ������ | [HR��˾]', '1', '1', '1', '1', '1', null, null, null, null, '20161201000000222000000001', null, null, null, null, '��ѡ��[C]ͬ������', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('04-01-2017 19:20:00', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 244006, 'ͬ������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (19, -1, -1, null, to_date('04-01-2017 20:18:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 20:18:43', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A330002', 253009, to_date('04-01-2017 20:18:43', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '[I]�����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '[I]�����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('11-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('11-01-2017', 'dd-mm-yyyy'), '��ʮ��', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (20, -1, -1, null, to_date('04-01-2017 20:43:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 20:43:58', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A330022', 253009, to_date('04-01-2017 20:43:58', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ�����Ա��', null, null, '[I]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '[I]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('26-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('26-01-2017', 'dd-mm-yyyy'), '��ʮ��', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (23, -1, -1, null, to_date('05-01-2017 10:15:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:15:50', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A330022', 253009, to_date('05-01-2017 10:15:50', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ�����Ա��', null, null, '[I]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '[I]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 10:20:22', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (22, -1, -1, null, to_date('05-01-2017 09:56:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 09:56:16', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A330022', 253009, to_date('05-01-2017 09:56:16', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ�����Ա��', null, null, '[I]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '[I]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('07-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('07-01-2017', 'dd-mm-yyyy'), '��ʮ��', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (24, -1, -1, null, to_date('05-01-2017 10:31:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:38:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A440002', 253009, to_date('05-01-2017 10:31:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('20-01-2017', 'dd-mm-yyyy'), '��ʮ��', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (30, -1, -1, null, to_date('05-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:36:16', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657321', '20161209000000888000000001', 130666, '170105110838886010128958667395', 254001, 251004, 'A330000', 253009, to_date('06-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (60, -1, -1, null, to_date('05-01-2017 16:05:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:05:24', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130001, '170105110755745010108662574666', 254001, 251004, 'A330046', 253009, to_date('05-01-2017 16:05:24', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]�ܾ���ww���Կͻ���˾1��Offer', '��ѡ��[C]�ܾ���ww���Կͻ���˾1��Offer', '�ܾ�Offer | ww���Կͻ���˾1', '�ܾ�Offer | ww���Կͻ���˾1', '�ܾ�Offer | ww���Կͻ���˾1', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000001', null, null, null, null, '��ѡ��[C]�ܾ���Offer', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 16:05:24', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 245041, '�ܾ�Offer', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (61, -1, -1, null, to_date('05-01-2017 16:19:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:19:16', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130001, '170105110857027010156307658908', 254001, 251004, 'A330047', 253009, to_date('05-01-2017 16:19:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]δ��ְww���Կͻ���˾1', '��ѡ��[C]δ��ְww���Կͻ���˾1', 'δ��ְ | ww���Կͻ���˾1', 'δ��ְ | ww���Կͻ���˾1', 'δ��ְ | ww���Կͻ���˾1', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��[C]δ��ְww���Կͻ���˾1', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 16:19:16', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 245040, '<span class="red">δ��ְ</span>', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (62, -1, -1, null, to_date('05-01-2017 16:34:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:34:43', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 130001, '170105110818245010113995242510', 254001, 251003, 'A330001', 253009, to_date('05-01-2017 16:34:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]ͬ������ww���Կͻ���˾1', '��ѡ��[C]ͬ������ww���Կͻ���˾1', 'ͬ������ | ww���Կͻ���˾1', 'ͬ������ | ww���Կͻ���˾1', 'ͬ������ | ww���Կͻ���˾1', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000001', null, null, null, null, '��ѡ��[C]ͬ������', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 16:34:43', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, 'ͬ������', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (65, -1, -1, null, to_date('05-01-2017 19:54:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 19:54:59', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 130666, '170105110818245010113995242510', 254001, 251004, 'A330002', 253009, to_date('05-01-2017 19:54:59', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('13-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('13-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (66, -1, -1, null, to_date('05-01-2017 19:55:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 19:55:04', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657322', '20161209000000888000000001', 130001, '170105110826511010133480726803', 254001, 251003, 'A330001', 253009, to_date('05-01-2017 19:55:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]ͬ������ww���Կͻ���˾1', '��ѡ��[C]ͬ������ww���Կͻ���˾1', 'ͬ������ | ww���Կͻ���˾1', 'ͬ������ | ww���Կͻ���˾1', 'ͬ������ | ww���Կͻ���˾1', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000001', null, null, null, null, '��ѡ��[C]ͬ������', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 19:55:04', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, 'ͬ������', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (68, -1, -1, null, to_date('05-01-2017 20:02:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 20:02:54', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A331001', 253009, to_date('05-01-2017 20:02:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾1���ӻ���ע�˺�ѡ��[C]', 'ww���Կͻ���˾1���ӻ���ע�˺�ѡ��[C]', '��ע | ww���Կͻ���˾1���ӻ�', '��ע | ww���Կͻ���˾1���ӻ�', '��ע | ww���Կͻ���˾1���ӻ�', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, 'ww���Կͻ���˾1���ӻ���ע�˺�ѡ��[C]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 20:02:54', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 242001, null, 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', '��ѡ�˱� ww���Կͻ���˾1 | ���ӻ� ��ע��', 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (69, -1, -1, null, to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130001, '170105110755745010108662574666', 254001, 251004, 'A331002', 253009, to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾1���ӻ�ȡ����ע��ѡ��[C]', 'ww���Կͻ���˾1���ӻ�ȡ����ע��ѡ��[C]', 'ȡ����ע | ww���Կͻ���˾1���ӻ�', 'ȡ����ע | ww���Կͻ���˾1���ӻ�', 'ȡ����ע | ww���Կͻ���˾1���ӻ�', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 242002, null, 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (70, -1, -1, null, to_date('05-01-2017 20:13:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 20:13:58', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 130666, '170105110818245010113995242510', 254001, 251004, 'A440002', 253009, to_date('05-01-2017 20:13:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 20:13:58', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (71, -1, -1, null, to_date('05-01-2017 20:14:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 20:14:12', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 130001, '170105110818245010113995242510', 254001, 251004, 'A330005', 253009, to_date('05-01-2017 20:14:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 20:14:12', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, '��Offer', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (72, -1, -1, null, to_date('05-01-2017 20:14:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 20:14:50', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 130001, '170105110818245010113995242510', 254001, 251004, 'A330015', 253009, to_date('05-01-2017 20:14:50', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ��Offer���', null, null, '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 20:14:50', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer���ϴ�', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (34, -1, -1, null, to_date('05-01-2017 11:13:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:13:18', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A330022', 253009, to_date('05-01-2017 11:13:18', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ�����Ա��', null, null, '[OPERATOR]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '[OPERATOR]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:28:57', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (39, -1, -1, null, to_date('05-01-2017 14:11:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:11:14', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251003, 'A330001', 253009, to_date('05-01-2017 14:11:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]ͬ������[HR��˾][JOB]', '��ѡ��[C]ͬ������[HR��˾][JOB]', 'ͬ������ | [HR��˾]', 'ͬ������ | [HR��˾]', 'ͬ������ | [HR��˾]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000001', null, null, null, null, '��ѡ��[C]ͬ������', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 14:11:14', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, 'ͬ������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (40, -1, -1, null, to_date('05-01-2017 14:15:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:15:12', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A330002', 253009, to_date('05-01-2017 14:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '[I]�����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '[I]�����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (42, -1, -1, null, to_date('05-01-2017 14:20:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:20:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A330005', 253009, to_date('05-01-2017 14:20:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 14:20:47', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, '��Offer', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (43, -1, -1, null, to_date('05-01-2017 14:29:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:29:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251003, 'A330001', 253009, to_date('05-01-2017 14:29:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]ͬ������[HR��˾][JOB]', '��ѡ��[C]ͬ������[HR��˾][JOB]', 'ͬ������ | [HR��˾]', 'ͬ������ | [HR��˾]', 'ͬ������ | [HR��˾]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000001', null, null, null, null, '��ѡ��[C]ͬ������', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 14:29:06', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, 'ͬ������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (47, -1, -1, null, to_date('05-01-2017 14:32:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:32:51', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A330004', 253009, to_date('05-01-2017 14:32:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾1���ӻ�ȷ�Ϻ�ѡ��[C]������һ������', 'ww���Կͻ���˾1���ӻ�ȷ�Ϻ�ѡ��[C]������һ������', 'ȷ����һ������ | ww���Կͻ���˾1���ӻ�', 'ȷ����һ������ | ww���Կͻ���˾1���ӻ�', 'ȷ����һ������ | ww���Կͻ���˾1���ӻ�', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, 'ww���Կͻ���˾1���ӻ�ȷ�Ϻ�ѡ��[C]������һ������', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('06-01-2017', 'dd-mm-yyyy'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, '������һ������', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (50, -1, -1, null, to_date('05-01-2017 15:38:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:38:01', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A330025', 253009, to_date('05-01-2017 15:38:01', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ��Offer���', null, null, '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 15:38:01', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer�ѱ��', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255000, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (51, -1, -1, null, to_date('05-01-2017 15:50:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:50:26', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A330025', 253009, to_date('05-01-2017 15:50:26', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ��Offer���', null, null, '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 15:50:26', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer�ѱ��', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255000, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (52, -1, -1, null, to_date('05-01-2017 15:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:54:52', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A330006', 253009, to_date('05-01-2017 15:54:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]������ww���Կͻ���˾1��Offer', '��ѡ��[C]������ww���Կͻ���˾1��Offer', '����Offer | ww���Կͻ���˾1', '����Offer | ww���Կͻ���˾1', '����Offer | ww���Կͻ���˾1', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000001', null, null, null, null, '��ѡ��[C]������Offer', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244023, 'ͬ����ְ', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255004, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (67, -1, -1, null, to_date('05-01-2017 19:55:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 19:55:44', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657322', '20161209000000888000000001', 130001, '170105110826511010133480726803', 254001, 251004, 'A330002', 253009, to_date('05-01-2017 19:55:44', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (73, -1, -1, null, to_date('06-01-2017 11:36:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:36:16', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657321', '20161209000000888000000001', 130001, '170105110838886010128958667395', 254001, 251004, 'A440001', 253009, to_date('06-01-2017 11:36:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '�������Գ�ʱ����', '�������Գ�ʱ����', '1', '1', '1', '0', '0', to_date('06-01-2017', 'dd-mm-yyyy'), 'M', null, null, null, null, '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('06-01-2017 11:36:16', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 245400, '����������', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255001, '������ʱ��ϵͳ�Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (74, -1, -1, null, to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657319', '20161209000000888000000001', 130001, '170105110851964010151171485388', 254001, 251004, 'A440001', 253009, to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '�������Գ�ʱ����', '�������Գ�ʱ����', '1', '1', '1', '0', '0', to_date('06-01-2017', 'dd-mm-yyyy'), 'M', null, null, null, null, '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 245400, '����������', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255001, '������ʱ��ϵͳ�Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (75, -1, -1, null, to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', '20161209000000888000000001', 130001, '170105110843980010174791768921', 254001, 251004, 'A440001', 253009, to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', '�������Գ�ʱ����', '�������Գ�ʱ����', '1', '1', '1', '0', '0', to_date('06-01-2017', 'dd-mm-yyyy'), 'M', null, null, null, null, '[HC]��ww���Կͻ���˾1�����ѡ��[C]���Է�����ʱ', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 245400, '����������', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255001, '������ʱ��ϵͳ�Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (25, -1, -1, null, to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A330000', 253009, to_date('06-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (26, -1, -1, null, to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657324', '20161209000000888000000001', 130666, '170105110806901010160406822198', 254001, 251004, 'A330000', 253009, to_date('06-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (27, -1, -1, null, to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657324', '20161209000000888000000001', 130001, '170105110806901010160406822198', 254001, 251004, 'A331001', 253009, to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HR��˾][HR]��ע�˺�ѡ��[C]', '[HR��˾][HR]��ע�˺�ѡ��[C]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]��ע�˺�ѡ��[C]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 242001, null, 'ww���Կͻ���˾1 [HRFACE]���ӻ�', '��ѡ�˱� [HR��˾] | [HR] ��ע��', 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (28, -1, -1, null, to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 130666, '170105110818245010113995242510', 254001, 251004, 'A330000', 253009, to_date('06-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (29, -1, -1, null, to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657322', '20161209000000888000000001', 130666, '170105110826511010133480726803', 254001, 251004, 'A330000', 253009, to_date('06-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (32, -1, -1, null, to_date('05-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657319', '20161209000000888000000001', 130666, '170105110851964010151171485388', 254001, 251004, 'A330000', 253009, to_date('06-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (35, -1, -1, null, to_date('05-01-2017 11:21:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:21:01', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A440002', 253009, to_date('05-01-2017 11:21:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:21:01', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (37, -1, -1, null, to_date('05-01-2017 11:55:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:55:56', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130001, '170103203858874010186925898396', 254001, 251004, 'A330143', 253009, to_date('05-01-2017 11:55:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:55:56', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 245043, '���� <span class="red">δͨ��</span>', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (53, -1, -1, null, to_date('05-01-2017 16:01:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:01:33', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A330002', 253009, to_date('05-01-2017 16:01:33', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('15-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('15-01-2017', 'dd-mm-yyyy'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (54, -1, -1, null, to_date('05-01-2017 16:01:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:01:59', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A440002', 253009, to_date('05-01-2017 16:01:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 16:01:59', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (56, -1, -1, null, to_date('05-01-2017 16:02:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:02:22', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A330002', 253009, to_date('05-01-2017 16:02:22', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('12-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('12-01-2017', 'dd-mm-yyyy'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (57, -1, -1, null, to_date('05-01-2017 16:02:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:02:39', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A440002', 253009, to_date('05-01-2017 16:02:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 16:02:39', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (58, -1, -1, null, to_date('05-01-2017 16:02:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:02:50', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A330005', 253009, to_date('05-01-2017 16:02:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾1ȷ�ϸ���ѡ�˷�Offer', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 16:02:50', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 244020, '��Offer', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (21, -1, -1, null, to_date('05-01-2017 09:20:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 09:20:22', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', '20161209000000888000000001', 130001, '170103203913421010149813186504', 254001, 251004, 'A440001', 253009, to_date('05-01-2017 09:20:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '�������Գ�ʱ����', '�������Գ�ʱ����', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), 'M', null, null, null, null, '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 09:20:22', 'dd-mm-yyyy hh24:mi:ss'), '��ʮһ', null, '��LV | ����ܼࣩ', 245400, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255001, '������ʱ��ϵͳ�Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (31, -1, -1, null, to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', '20161209000000888000000001', 130666, '170105110843980010174791768921', 254001, 251004, 'A330000', 253009, to_date('06-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (33, -1, -1, null, to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A330000', 253009, to_date('06-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (36, -1, -1, null, to_date('05-01-2017 11:21:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:21:27', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130666, '170103203858874010186925898396', 254001, 251004, 'A330043', 253009, to_date('05-01-2017 11:21:27', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ������ûͨ��', null, null, '��ѡ��[C]��[IVN]������û��[DETAIL=��չ��ԭ��]', '��ѡ��[C]��[IVN]������û��[DETAIL=��չ��ԭ��]', '��[IVN������ûͨ�� | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN������ûͨ�� | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN������ûͨ�� | [HR��˾][JOB][DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '��ѡ��[C]����ûͨ��', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 11:21:27', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 245043, '���� <span class="red">δͨ��</span>', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (38, -1, -1, null, to_date('05-01-2017 13:30:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 13:30:46', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', '20161209000000888000000001', 130001, '170103203847639010178087456208', 254001, 251004, 'A440001', 253009, to_date('05-01-2017 13:30:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '�������Գ�ʱ����', '�������Գ�ʱ����', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), 'M', null, null, null, null, '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 13:30:46', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 245400, '����������', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255001, '������ʱ��ϵͳ�Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (41, -1, -1, null, to_date('05-01-2017 14:16:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:16:02', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A440002', 253009, to_date('05-01-2017 14:16:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 14:16:02', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾1 [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (44, -1, -1, null, to_date('05-01-2017 14:29:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:29:33', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A330002', 253009, to_date('05-01-2017 14:29:33', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000001', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017', 'dd-mm-yyyy'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (45, -1, -1, null, to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', '20161209000000888000000001', 130001, '170105110843980010174791768921', 254001, 251004, 'A331001', 253009, to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾1���ӻ���ע�˺�ѡ��[C]', 'ww���Կͻ���˾1���ӻ���ע�˺�ѡ��[C]', '��ע | ww���Կͻ���˾1���ӻ�', '��ע | ww���Կͻ���˾1���ӻ�', '��ע | ww���Կͻ���˾1���ӻ�', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, 'ww���Կͻ���˾1���ӻ���ע�˺�ѡ��[C]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 242001, null, 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', '��ѡ�˱� ww���Կͻ���˾1 | ���ӻ� ��ע��', 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (46, -1, -1, null, to_date('05-01-2017 14:30:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:30:04', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A440002', 253009, to_date('05-01-2017 14:30:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 14:30:04', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (48, -1, -1, null, to_date('05-01-2017 15:11:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:11:02', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A330015', 253009, to_date('05-01-2017 15:11:02', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ��Offer���', null, null, '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 15:11:02', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer���ϴ�', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (49, -1, -1, null, to_date('05-01-2017 15:32:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:32:22', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 130666, '170105110857027010156307658908', 254001, 251004, 'A330025', 253009, to_date('05-01-2017 15:32:22', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ��Offer���', null, null, '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 15:32:22', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer�ѱ��', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255000, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (55, -1, -1, null, to_date('05-01-2017 16:02:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:02:10', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A330004', 253009, to_date('05-01-2017 16:02:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾1���ӻ�ȷ�Ϻ�ѡ��[C]������һ������', 'ww���Կͻ���˾1���ӻ�ȷ�Ϻ�ѡ��[C]������һ������', 'ȷ����һ������ | ww���Կͻ���˾1���ӻ�', 'ȷ����һ������ | ww���Կͻ���˾1���ӻ�', 'ȷ����һ������ | ww���Կͻ���˾1���ӻ�', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, 'ww���Կͻ���˾1���ӻ�ȷ�Ϻ�ѡ��[C]������һ������', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 16:02:10', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 244006, '������һ������', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (59, -1, -1, null, to_date('05-01-2017 16:03:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:03:04', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130666, '170105110755745010108662574666', 254001, 251004, 'A330015', 253009, to_date('05-01-2017 16:03:04', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ��Offer���', null, null, '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾1[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('05-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('05-01-2017 16:03:04', 'dd-mm-yyyy hh24:mi:ss'), '����ʮ', null, '��LV | ����ܼࣩ', 244020, 'Offer���ϴ�', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (84, -1, -1, null, to_date('09-01-2017 14:35:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:36:32', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251004, 'A440002', 253009, to_date('09-01-2017 14:35:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017 14:35:47', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾2 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (88, -1, -1, null, to_date('09-01-2017 14:38:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:38:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130001, '170103203858874010186925898396', 254001, 251004, 'A330143', 253009, to_date('09-01-2017 14:38:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('09-01-2017 14:38:06', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 245043, '���� <span class="red">δͨ��</span>', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (119, -1, -1, null, to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 130001, '170105110818245010113995242510', 254001, 251004, 'A330025', 253009, to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), null, '[DETAIL=Offer�ļ�]', null, null, '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer�ѱ��', ' |   [HRFACE]���ӻ�', null, 255000, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (121, -1, -1, null, to_date('10-01-2017 11:24:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 11:24:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170104171757947010145031792061', 254001, 251004, 'A331002', 253009, to_date('10-01-2017 11:24:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���ӻ�ȡ����ע��ѡ��[C]', '���ӻ�ȡ����ע��ѡ��[C]', 'ȡ����ע | ���ӻ�', 'ȡ����ע | ���ӻ�', 'ȡ����ע | ���ӻ�', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('10-01-2017 11:24:57', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 242002, null, ' |   [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (81, -1, -1, null, to_date('09-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:35:05', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251004, 'A330000', 253009, to_date('10-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '�����ѡ��[C]����[DETAIL=ְλ]', '�����ѡ��[C]����[DETAIL=ְλ]', '�������� | ', '�������� | ', '�������� | ', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', ' |   [HRFACE]', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (85, -1, -1, null, to_date('09-01-2017 14:36:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:26:26', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251004, 'A440002', 253009, to_date('09-01-2017 14:36:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017 14:36:32', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾2 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (86, -1, -1, null, to_date('09-01-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130001, '170103203858874010186925898396', 254001, 251004, 'A330143', 253009, to_date('09-01-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('09-01-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 245043, '���� <span class="red">δͨ��</span>', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (89, -1, -1, null, to_date('09-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:44:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109144435793010184362020475', 254001, 251004, 'A330000', 253009, to_date('10-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '�����ѡ��[C]����[DETAIL=ְλ]', '�����ѡ��[C]����[DETAIL=ְλ]', '�������� | ', '�������� | ', '�������� | ', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('09-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', ' |   [HRFACE]', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (90, -1, -1, null, to_date('09-01-2017 14:44:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:45:36', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109144435793010184362020475', 254001, 251003, 'A330001', 253009, to_date('09-01-2017 14:44:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]ͬ�����Բ��Կͻ���˾3', '��ѡ��[C]ͬ�����Բ��Կͻ���˾3', 'ͬ������ | ���Կͻ���˾3', 'ͬ������ | ���Կͻ���˾3', 'ͬ������ | ���Կͻ���˾3', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000003', null, null, null, null, '��ѡ��[C]ͬ������', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('09-01-2017 14:44:47', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, 'ͬ������', '���Կͻ���˾3 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (92, -1, -1, null, to_date('09-01-2017 14:45:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:52:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109144435793010184362020475', 254001, 251004, 'A440002', 253009, to_date('09-01-2017 14:45:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('13-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', '���Կͻ���˾3 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (98, -1, -1, null, to_date('09-01-2017 15:26:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:26:36', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251004, 'A440002', 253009, to_date('09-01-2017 15:26:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017 15:26:26', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', 'ww���Կͻ���˾2 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (105, -1, -1, null, to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109154004391010150119070726', 254001, 251004, 'A330000', 253009, to_date('10-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '���Կͻ���˾4�����������ѡ��[C]����[DETAIL=ְλ]', '���Կͻ���˾4�����������ѡ��[C]����[DETAIL=ְλ]', '�������� | ���Կͻ���˾4������', '�������� | ���Կͻ���˾4������', '�������� | ���Կͻ���˾4������', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '���Կͻ���˾4�����������ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000004', '9', null, '20161201000000222000000004', to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', '���Կͻ���˾4 |   [HRFACE]������', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (116, -1, -1, null, to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', '20161209000000888000000005', 130001, '170110093137344010120440986489', 254001, 251004, 'A331002', 253009, to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���ӻ�ȡ����ע��ѡ��[C]', '���ӻ�ȡ����ע��ѡ��[C]', 'ȡ����ע | ���ӻ�', 'ȡ����ע | ���ӻ�', 'ȡ����ע | ���ӻ�', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), '��ɳ', null, '��LV | ����ܼࣩ', 242002, null, ' |   [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (120, -1, -1, null, to_date('10-01-2017 11:24:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 11:24:37', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170104171757947010145031792061', 254001, 251004, 'A331001', 253009, to_date('10-01-2017 11:24:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���ӻ���ע�˺�ѡ��[C]', '���ӻ���ע�˺�ѡ��[C]', '��ע | ���ӻ�', '��ע | ���ӻ�', '��ע | ���ӻ�', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '���ӻ���ע�˺�ѡ��[C]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('10-01-2017 11:24:37', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 242001, null, ' |   [HRFACE]���ӻ�', '��ѡ�˱�  | ���ӻ� ��ע��', 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (87, -1, -1, null, to_date('09-01-2017 14:38:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:38:02', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 130001, '170103203858874010186925898396', 254001, 251004, 'A330143', 253009, to_date('09-01-2017 14:38:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('09-01-2017 14:38:02', 'dd-mm-yyyy hh24:mi:ss'), '��ʮ��', null, '��LV | ����ܼࣩ', 245043, '���� <span class="red">δͨ��</span>', 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (95, -1, -1, null, to_date('09-01-2017 15:03:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:03:20', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109144435793010184362020475', 254001, 251004, 'A330005', 253009, to_date('09-01-2017 15:03:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Կͻ���˾3ȷ�ϸ���ѡ�˷�Offer', '���Կͻ���˾3ȷ�ϸ���ѡ�˷�Offer', '���Կͻ���˾3ȷ�ϸ���ѡ�˷�Offer', '���Կͻ���˾3ȷ�ϸ���ѡ�˷�Offer', '���Կͻ���˾3ȷ�ϸ���ѡ�˷�Offer', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('09-01-2017 15:03:13', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, '��Offer', '���Կͻ���˾3 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (99, -1, -1, null, to_date('09-01-2017 15:26:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:26:52', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251004, 'A330005', 253009, to_date('09-01-2017 15:26:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾2ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾2ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾2ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾2ȷ�ϸ���ѡ�˷�Offer', 'ww���Կͻ���˾2ȷ�ϸ���ѡ�˷�Offer', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017 15:26:36', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, '��Offer', 'ww���Կͻ���˾2 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (100, -1, -1, null, to_date('09-01-2017 15:26:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:30:23', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251004, 'A330015', 253009, to_date('09-01-2017 15:26:52', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ��Offer���', null, null, '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾2[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾2[DETAIL=��չ������]', '��[N]������ | ww���Կͻ���˾2[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017 15:26:52', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer���ϴ�', 'ww���Կͻ���˾2 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (101, -1, -1, null, to_date('09-01-2017 15:30:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:39:49', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251004, 'A330006', 253009, to_date('09-01-2017 15:30:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]������ww���Կͻ���˾2��Offer', '��ѡ��[C]������ww���Կͻ���˾2��Offer', '����Offer | ww���Կͻ���˾2', '����Offer | ww���Կͻ���˾2', '����Offer | ww���Կͻ���˾2', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000002', null, null, null, null, '��ѡ��[C]������Offer', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('10-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244023, 'ͬ����ְ', 'ww���Կͻ���˾2 |   [HRFACE]������', null, 255004, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (102, -1, -1, null, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, null, 254001, 251004, 'A331001', 253009, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ע�˺�ѡ��[C]', '��ע�˺�ѡ��[C]', '��ע | ', '��ע | ', '��ע | ', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '��ע�˺�ѡ��[C]', null, null, null, null, null, null, null, '0', '0', '1', '0', '0', null, null, null, null, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 242001, null, ' |   [HRFACE]', '��ѡ�˱�  |  ��ע��', 255002, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (103, -1, -1, null, to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109153515953010174561718206', 254001, 251004, 'A330000', 253009, to_date('10-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '���Կͻ���˾4�����������ѡ��[C]����[DETAIL=ְλ]', '���Կͻ���˾4�����������ѡ��[C]����[DETAIL=ְλ]', '�������� | ���Կͻ���˾4������', '�������� | ���Կͻ���˾4������', '�������� | ���Կͻ���˾4������', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '���Կͻ���˾4�����������ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', '���Կͻ���˾4 |   [HRFACE]������', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (107, -1, -1, null, to_date('09-01-2017 16:37:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:37:13', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109163620308010116566806427', 254001, 251003, 'A330001', 253009, to_date('09-01-2017 16:37:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]ͬ�����Բ��Կͻ���˾5', '��ѡ��[C]ͬ�����Բ��Կͻ���˾5', 'ͬ������ | ���Կͻ���˾5', 'ͬ������ | ���Կͻ���˾5', 'ͬ������ | ���Կͻ���˾5', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000005', null, null, null, null, '��ѡ��[C]ͬ������', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000005', '10', null, '20161201000000222000000005', to_date('09-01-2017 16:37:13', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, 'ͬ������', '���Կͻ���˾5 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (82, -1, -1, null, to_date('09-01-2017 14:35:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:35:24', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251003, 'A330001', 253009, to_date('09-01-2017 14:35:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]ͬ������ww���Կͻ���˾2', '��ѡ��[C]ͬ������ww���Կͻ���˾2', 'ͬ������ | ww���Կͻ���˾2', 'ͬ������ | ww���Կͻ���˾2', 'ͬ������ | ww���Կͻ���˾2', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000002', null, null, null, null, '��ѡ��[C]ͬ������', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017 14:35:05', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, 'ͬ������', 'ww���Կͻ���˾2 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (93, -1, -1, null, to_date('09-01-2017 14:52:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:03:01', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109144435793010184362020475', 254001, 251004, 'A440002', 253009, to_date('09-01-2017 14:52:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('09-01-2017 14:52:06', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', '���Կͻ���˾3 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (94, -1, -1, null, to_date('09-01-2017 15:03:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:03:13', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109144435793010184362020475', 254001, 251004, 'A440002', 253009, to_date('09-01-2017 15:03:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('09-01-2017 15:03:01', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', '���Կͻ���˾3 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (96, -1, -1, null, to_date('09-01-2017 15:03:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:03:28', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109144435793010184362020475', 254001, 251004, 'A330015', 253009, to_date('09-01-2017 15:03:20', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ��Offer���', null, null, '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�����ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '��[N]������ | ���Կͻ���˾3[DETAIL=��չ������]', '��[N]������ | ���Կͻ���˾3[DETAIL=��չ������]', '��[N]������ | ���Կͻ���˾3[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('09-01-2017 15:03:20', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer���ϴ�', '���Կͻ���˾3 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (104, -1, -1, null, to_date('09-01-2017 15:39:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:39:49', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109143451149010196643515222', 254001, 251004, 'A330007', 253009, to_date('09-01-2017 15:39:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]��ְww���Կͻ���˾2', '��ѡ��[C]��ְww���Կͻ���˾2', '��ְ | ww���Կͻ���˾2', '��ְ | ww���Կͻ���˾2', '��ְ | ww���Կͻ���˾2', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, 'BS', '20161209000000888000000001', null, null, null, '��ѡ��[C]��ְww���Կͻ���˾2', '��ѡ��[C]��ְww���Կͻ���˾2', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017 15:39:49', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244023, '����ְ', 'ww���Կͻ���˾2 |   [HRFACE]������', null, 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (109, -1, -1, null, to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109163620308010116566806427', 254001, 251004, 'A440002', 253009, to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000005', '10', null, '20161201000000222000000005', to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', '���Կͻ���˾5 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (110, -1, -1, null, to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109163620308010116566806427', 254001, 251004, 'A440002', 253009, to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000005', '10', null, '20161201000000222000000005', to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244006, '���Խ���', '���Կͻ���˾5 |   [HRFACE]������', null, 255003, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (83, -1, -1, null, to_date('09-01-2017 14:35:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:35:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109143451149010196643515222', 254001, 251004, 'A330002', 253009, to_date('09-01-2017 14:35:24', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾2[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾2[DETAIL=��չ������]', '��[IVN]������ | ww���Կͻ���˾2[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000002', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000002', '7', null, '20161201000000222000000002', to_date('09-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244006, '����', 'ww���Կͻ���˾2 |   [HRFACE]������', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (91, -1, -1, null, to_date('09-01-2017 14:45:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:45:53', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109144435793010184362020475', 254001, 251004, 'A330002', 253009, to_date('09-01-2017 14:45:36', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | ���Կͻ���˾3[DETAIL=��չ������]', '��[IVN]������ | ���Կͻ���˾3[DETAIL=��չ������]', '��[IVN]������ | ���Կͻ���˾3[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000003', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('10-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244006, '����', '���Կͻ���˾3 |   [HRFACE]������', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (97, -1, -1, null, to_date('09-01-2017 15:03:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:03:28', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109144435793010184362020475', 254001, 251004, 'A330006', 253009, to_date('09-01-2017 15:03:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��ѡ��[C]�����˲��Կͻ���˾3��Offer', '��ѡ��[C]�����˲��Կͻ���˾3��Offer', '����Offer | ���Կͻ���˾3', '����Offer | ���Կͻ���˾3', '����Offer | ���Կͻ���˾3', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, '20161201000000222000000003', null, null, null, null, '��ѡ��[C]������Offer', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000003', '8', null, '20161201000000222000000003', to_date('10-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244023, 'ͬ����ְ', '���Կͻ���˾3 |   [HRFACE]������', null, 255004, null, '1');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (106, -1, -1, null, to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:37:13', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109163620308010116566806427', 254001, 251004, 'A330000', 253009, to_date('10-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), '440001', '���������ʽ����������', null, null, '�����ѡ��[C]����[DETAIL=ְλ]', '�����ѡ��[C]����[DETAIL=ְλ]', '�������� | ', '�������� | ', '�������� | ', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', null, null, null, null, '�����ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000005', '10', null, '20161201000000222000000005', to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244001, '����������', ' |   [HRFACE]', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (108, -1, -1, null, to_date('09-01-2017 16:37:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:38:07', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130666, '170109163620308010116566806427', 254001, 251004, 'A330002', 253009, to_date('09-01-2017 16:37:37', 'dd-mm-yyyy hh24:mi:ss'), null, '���������ʽ����������', null, null, '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '���찲���˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | ���Կͻ���˾5[DETAIL=��չ������]', '��[IVN]������ | ���Կͻ���˾5[DETAIL=��չ������]', '��[IVN]������ | ���Կͻ���˾5[DETAIL=��չ������]', '1', '1', '1', '1', '1', to_date('19-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000001', '20161201000000222000000005', null, null, null, '[NOTICETIME][MODE=��������]', '[NOTICETIME][MODE=��������]', null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000005', '10', null, '20161201000000222000000005', to_date('19-01-2017', 'dd-mm-yyyy'), '������', null, '��LV | ����ܼࣩ', 244006, '����', '���Կͻ���˾5 |   [HRFACE]������', '[DETAIL=���Եص�]', 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (111, -1, -1, null, to_date('09-01-2017 20:31:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:31:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', '20161209000000888000000001', 130001, '170105110843980010174791768921', 254001, 251004, 'A331002', 253009, to_date('09-01-2017 20:31:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ww���Կͻ���˾1���ӻ�ȡ����ע��ѡ��[C]', 'ww���Կͻ���˾1���ӻ�ȡ����ע��ѡ��[C]', 'ȡ����ע | ww���Կͻ���˾1���ӻ�', 'ȡ����ע | ww���Կͻ���˾1���ӻ�', 'ȡ����ע | ww���Կͻ���˾1���ӻ�', '1', '1', '1', '1', '1', to_date('09-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('09-01-2017 20:31:47', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 242002, null, 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, 255000, null, '0');
commit;
prompt 100 records committed...
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (112, -1, -1, null, to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109154004391010150119070726', 254001, 251004, 'A330444', 253009, to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), null, '[DETAIL=ԭ��]', null, null, '������ֹ�˺�ѡ��[C]�ڵ�����[DETAIL=��չ��ԭ��]', '������ֹ�˺�ѡ��[C]�ڵ�����[DETAIL=��չ��ԭ��]', '������ֹ | [DETAIL=��չ��ԭ��]', '������ֹ | [DETAIL=��չ��ԭ��]', '������ֹ | [DETAIL=��չ��ԭ��]', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000004', '9', null, '20161201000000222000000004', to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 245444, '�ر�', ' |   [HRFACE]������', null, 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (113, -1, -1, null, to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 130001, '170109163620308010116566806427', 254001, 251004, 'A330444', 253009, to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), null, '[DETAIL=ԭ��]', null, null, '������ֹ�˺�ѡ��[C]�ڵ�����[DETAIL=��չ��ԭ��]', '������ֹ�˺�ѡ��[C]�ڵ�����[DETAIL=��չ��ԭ��]', '������ֹ | [DETAIL=��չ��ԭ��]', '������ֹ | [DETAIL=��չ��ԭ��]', '������ֹ | [DETAIL=��չ��ԭ��]', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '0', '2016120100000010100000005', '10', null, '20161201000000222000000005', to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 245444, '�ر�', ' |   [HRFACE]������', null, 255001, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (114, -1, -1, null, to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', '20161209000000888000000005', 130001, '170110093137344010120440986489', 254001, 251004, 'A330000', 253009, to_date('11-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), '440001', null, null, null, '���ӻ������ѡ��[C]����[DETAIL=ְλ]', '���ӻ������ѡ��[C]����[DETAIL=ְλ]', '�������� | ���ӻ�', '�������� | ���ӻ�', '�������� | ���ӻ�', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, '20161209000000888000000005', null, null, null, null, '���ӻ������ѡ��[C]����[DEDAIL=ְλ]', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), '��ɳ', null, '��LV | ����ܼࣩ', 244001, '����������', ' |   [HRFACE]���ӻ�', null, 255004, '[LIMITTIME] �ֺ��Զ��ܾ�', '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (115, -1, -1, null, to_date('10-01-2017 09:32:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:32:14', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', '20161209000000888000000001', 130001, '170103203913421010149813186504', 254001, 251004, 'A331002', 253009, to_date('10-01-2017 09:32:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���ӻ�ȡ����ע��ѡ��[C]', '���ӻ�ȡ����ע��ѡ��[C]', 'ȡ����ע | ���ӻ�', 'ȡ����ע | ���ӻ�', 'ȡ����ע | ���ӻ�', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('10-01-2017 09:32:14', 'dd-mm-yyyy hh24:mi:ss'), '��ʮһ', null, '��LV | ����ܼࣩ', 242002, null, ' |   [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (117, -1, -1, null, to_date('10-01-2017 09:33:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:33:03', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657324', '20161209000000888000000001', 130001, '170105110806901010160406822198', 254001, 251004, 'A331002', 253009, to_date('10-01-2017 09:33:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '���ӻ�ȡ����ע��ѡ��[C]', '���ӻ�ȡ����ע��ѡ��[C]', 'ȡ����ע | ���ӻ�', 'ȡ����ע | ���ӻ�', 'ȡ����ע | ���ӻ�', '1', '1', '1', '1', '1', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('10-01-2017 09:33:03', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 242002, null, ' |   [HRFACE]���ӻ�', null, 255000, null, '0');
insert into B_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59)
values (118, -1, -1, null, to_date('10-01-2017 09:33:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 130666, '170105110818245010113995242510', 254001, 251004, 'A330025', 253009, to_date('10-01-2017 09:33:42', 'dd-mm-yyyy hh24:mi:ss'), null, '[DETAIL=Offer�ļ�]', null, null, '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '�������˺�ѡ��[C]��Offer[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', to_date('10-01-2017', 'dd-mm-yyyy'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '2016120100000010100000001', '5', null, '20161201000000222000000001', to_date('10-01-2017 09:33:42', 'dd-mm-yyyy hh24:mi:ss'), '������', null, '��LV | ����ܼࣩ', 244020, 'Offer�ѱ��', ' |   [HRFACE]���ӻ�', null, 255000, null, '1');
commit;
prompt 106 records loaded
prompt Loading B_BILL...
prompt Table is empty
prompt Loading B_CANDIDATE...
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (1, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 14:03:11', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657274', '20161209000000888000000001', 240000, null, '1', null, 't07274', '��һ', 'wang yi', '19800101', 37, 140001, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (2, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:38:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657275', '20161209000000888000000001', 240000, null, '1', null, 't07275', '����', 'wang er', '19800102', 37, 140001, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (3, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 15:59:15', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657276', '20161209000000888000000001', 240020, null, '1', null, 't07276', '����', 'li san', '19800103', 37, 140001, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241023, to_date('06-12-2016 15:56:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (4, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 20:39:51', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657277', '20161209000000888000000001', 240000, null, '1', null, 't07277', '����', 'li si', '19800104', 37, 140001, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (5, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 15:58:11', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657278', '20161209000000888000000001', 240020, null, '1', null, 't07278', '��С��', 'wenwu', '19800105', 37, 140001, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241021, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (6, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 10:19:25', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657279', '20161209000000888000000001', 240020, null, '1', null, 't07279', '��С��', 'wangxiaoliu', '19800106', 37, 140001, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241022, to_date('16-12-2016 15:56:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (7, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2016 16:00:11', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', '20161209000000888000000001', 240090, to_date('15-12-2016 14:01:07', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07280', '������', 'wang er', '19750106', 42, 140001, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 15:56:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 15:57:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (8, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:44:14', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657281', '20161209000000888000000001', 240100, to_date('15-12-2016 14:02:51', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07281', '��С��', 'qixiaoqi', '19880107', 29, 140001, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:44:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:44:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (9, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:43:58', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657282', '20161209000000888000000001', 240110, to_date('15-12-2016 14:03:10', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07282', '��˰�', 'qibaba', '19801228', 37, 140012, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('14-12-2016 13:43:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 16:43:49', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (10, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 14:06:27', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657283', '20161209000000888000000001', 240444, to_date('05-12-2016 14:03:30', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07283', '����', 'aijiu', '19901231', 27, 140012, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (11, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:40:58', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657284', '20161209000000888000000001', 240020, null, '1', null, 't07284', '��ʮ', 'wangshi', '19601112', 57, 140011, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241024, to_date('14-12-2016 15:57:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 15:57:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (12, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:42:05', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:08', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07285', '��ʮһ', 'zhangshiyi', '19801129', 37, 140011, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:41:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:41:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (13, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:42:20', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07286', '��ʮ��', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (14, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 18:45:45', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:31', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07287', '��ʮ��', 'song shi san', '19700113', 47, 140001, 132002, null, '������', '������', 'henan ', '����', null, '+01', '2222222222', '444@qq.cpm', '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('14-12-2016 13:16:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:16:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '20161209000000888000000001', '����', to_date('29-12-2016 18:45:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (15, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:43:27', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653375', '20161209000000888000000002', 240020, null, '1', null, 't03375', '��˼˼', 'tiansisi', '19800102', 37, 140001, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000002', 8, 130001, 1, 241024, to_date('13-12-2016 15:55:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-12-2016 17:43:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (16, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:54:16', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653376', '20161209000000888000000002', 240020, null, '1', null, 't03376', '������', 'TianYangYang', '19800103', 37, 140001, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000002', 8, 130001, 1, 241023, to_date('06-12-2016 15:56:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (17, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:55:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653377', '20161209000000888000000002', 240000, null, '1', null, 't03377', '������', 'TianQiQi', '19800104', 37, 140001, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000002', 8, 130001, 1, 241001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (18, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 23:08:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653378', '20161209000000888000000001', 240020, null, '1', null, 't03378', '���', 'TianGang', '19800105', 37, 140001, 132001, null, '������', '������', 'hennassssss', '����', null, '+888', '7777889', '@qq.com', '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, 'ְλ', 'ְ��', '��ҵ', '����', null, '��������', null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, '����˾ ����˾ ����˾', '���ι�˾ ���ι�˾ ���ι�˾ ���ι�˾', null, null, '2016120900000099900000002', 8, 130001, 1, 241022, to_date('06-12-2016 15:56:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('01-01-2017 23:08:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (19, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:58:49', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654480', '20161209000000888000000003', 240090, to_date('15-12-2016 14:01:07', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't04480', '������', 'BeiMen', '19750106', 42, 140001, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000003', 9, 130001, 1, 241029, to_date('13-12-2016 15:56:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 15:57:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (20, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:45:04', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654481', '20161209000000888000000003', 240100, to_date('15-12-2016 14:02:51', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't04481', '������', 'BeiHU', '19880107', 29, 140001, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000003', 9, 130001, 1, 241029, to_date('13-12-2016 13:44:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:44:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (21, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:45:21', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654482', '20161209000000888000000003', 240110, to_date('15-12-2016 14:03:10', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't04482', '������', 'qibaba', '19801228', 26, 140012, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000003', 9, 130001, 1, 241029, to_date('13-12-2016 13:45:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:45:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (22, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 21:00:18', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775655583', '20161209000000888000000004', 240444, to_date('05-12-2016 14:03:30', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't05583', '����', 'YueFei', '19901231', 27, 140012, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000004', 10, 130001, 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (23, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2016 13:30:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', '20161209000000888000000005', 240090, to_date('15-12-2016 14:04:08', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-12-2016 21:07:51', 'dd-mm-yyyy hh24:mi:ss'), 't04485', '��ɳ', 'YueSha', '19801129', 37, 140011, 132001, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000004', 10, 130001, 1, 241029, to_date('14-12-2016 12:05:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 17:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (63, -1, -1, null, to_date('09-01-2017 19:37:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:37:44', 'dd-mm-yyyy hh24:mi:ss'), '170109193744221010173833260383', '20161209000000888000000001', 240000, null, '0', null, null, '�ϼ', null, '2017-01', null, null, null, null, null, null, null, null, null, '+86', '18616299922', null, null, null, 133005, null, null, null, null, null, null, null, null, null, null, null, null, '22222', 0, 0, '2222222', 'iOS����', null, '22222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'D8832EDEAE659FBC67C1A4217892FC5B68A064ED8AA1DDBFA7880341F8CAFD0438F6F3D46DF25A2E7E146A9CB7CD074741E1583B0598F81F549325DCC30D300CD1FA74F8D4967D6A4BF3F5DEF73161F12B8A91EC0802B89F0F41FA5B538B0A3E', null, null, null, null, null, null, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 19:37:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (37, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:53:50', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657316', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07316', '����һ', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (38, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:53:53', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657317', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07317', '������', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (39, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:53:56', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07318', '������', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (40, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:53:58', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657319', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07319', '������', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (41, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:54:00', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07320', '������', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (42, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:54:02', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657321', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07321', '������', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (43, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:54:04', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657322', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07322', '������', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (44, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:54:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07323', '������', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (45, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 10:54:08', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657324', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07324', '������', 'dongshier', '19880328', 29, 140003, 132002, null, '����', null, null, '����', null, null, null, null, '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, null, null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (46, 802001, 801000, null, to_date('09-12-2016 17:14:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:54:20', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 240090, to_date('15-12-2016 14:04:20', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 't07325', '����ʮ', 'dongshier', '1988-10-07', 29, 140003, 132002, null, '������', '�Ϻ���', '����', '����', null, '86', '13900060006', 'dongshier@qq.com', '�й�', null, 133005, null, 666, 99, null, null, null, null, null, null, null, null, null, '�ݳ�Ʒ', 8, 0, 'LV', '����ܼ�', '35', null, null, 'CEO', '�ܾ���', 'IT', '����', null, '300', null, null, 'java js  html', null, null, '�廪��ѧ|��ʿ', null, null, '��Ϊ|�����ܼ�', null, null, '����', null, null, null, '2016120900000099900000001', null, 130001, 1, 241029, to_date('13-12-2016 13:42:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 13:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 19:54:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (64, -1, -1, null, to_date('09-01-2017 19:41:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:41:51', 'dd-mm-yyyy hh24:mi:ss'), '170109194151862010118058520527', '20161209000000888000000001', 240000, null, '0', null, null, '�ϼ99922', null, '2017-01', null, null, null, null, null, null, null, null, null, '+86', '18615222222', null, null, null, 133002, null, null, null, null, null, null, null, null, null, null, null, null, '8899', 0, 0, '222222', 'iOS����', null, '2222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'D8832EDEAE659FBC67C1A4217892FC5B68A064ED8AA1DDBFA7880341F8CAFD0438F6F3D46DF25A2E7E146A9CB7CD074741E1583B0598F81F549325DCC30D300C0A62E158F7118E32049D7D408BF482FB6B381E9F551B4DE4121805F5DD0320B3', null, null, null, null, null, null, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 19:41:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90)
values (51, -1, -1, null, to_date('06-01-2017 09:20:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 09:20:08', 'dd-mm-yyyy hh24:mi:ss'), '170106092008513010130796251600', '20161209000000888000000001', 240000, null, '0', null, null, '�ϼ', null, '2017-01-13', null, null, null, null, null, null, null, null, null, '+86', '1815999022', null, null, null, 133003, null, null, null, null, null, null, null, null, null, null, null, null, '������', 0, 0, '����', 'ְλ', null, '10000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'D8832EDEAE659FBC67C1A4217892FC5B68A064ED8AA1DDBFA7880341F8CAFD0438F6F3D46DF25A2E7E146A9CB7CD074741E1583B0598F81F549325DCC30D300CA1E541E332F5B916F10B6EE1B743B0EBE5C0F37E93CDFE5C30B758EFAB4D65E5', null, null, null, null, null, null, 130001, null, 241001, null, null, null, null, null, '20161209000000888000000001', '����', to_date('06-01-2017 09:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 36 records loaded
prompt Loading B_CANDIDATE_COLLECT...
prompt Table is empty
prompt Loading B_CANDIDATE_CVCERTIFICATE...
insert into B_CANDIDATE_CVCERTIFICATE (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10)
values (3, 18, -1, -1, null, to_date('30-12-2016 20:51:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 21:47:18', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653378', 130001, '3333333', '3333333333', null, null, null, '20161209000000888000000001', '����', to_date('30-12-2016 21:47:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVCERTIFICATE (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10)
values (2, 14, -1, -1, null, to_date('29-12-2016 16:23:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 18:54:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', 130001, '2016-12-01', '֤�����Ʋ�֪��', null, null, null, '20161209000000888000000001', '����', to_date('29-12-2016 18:54:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVCERTIFICATE (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10)
values (11, 46, -1, -1, null, to_date('06-01-2017 11:58:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2012-01', '����һ��֤��', null, null, null, '20161209000000888000000001', '����', to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVCERTIFICATE (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10)
values (12, 46, -1, -1, null, to_date('06-01-2017 11:58:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2017-01', '�������֤��', null, null, null, '20161209000000888000000001', '����', to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 4 records loaded
prompt Loading B_CANDIDATE_CVEDUCATION...
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (21, 44, -1, -1, null, to_date('09-01-2017 19:28:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:28:40', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', 130001, '2017-01', '2017-01', 'ddd', 'ddddsdsds', 133002, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 19:28:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (11, 46, -1, -1, null, to_date('06-01-2017 10:32:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 00:16:03', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2007-01', '2009-01', '������ѧ222', '����ϵ', 133002, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 00:16:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (13, 46, -1, -1, null, to_date('06-01-2017 11:00:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 00:16:03', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2009-01', '2010-01', '���ݴ�ѧ', 'Ӣ��', 133004, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 00:16:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (2, 14, -1, -1, null, to_date('29-12-2016 15:34:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 17:16:10', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', 130001, '2016-12-07', '2016-12-22', 'ѧУ22', '22', 224004, null, null, '20161209000000888000000001', '����', to_date('29-12-2016 17:16:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (3, 18, -1, -1, null, to_date('30-12-2016 20:51:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 21:47:18', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653378', 130001, '333', '3333', '333', '3333333', 224002, null, null, '20161209000000888000000001', '����', to_date('30-12-2016 21:47:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVEDUCATION (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
values (12, 46, -1, -1, null, to_date('06-01-2017 10:54:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 00:16:03', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2010-01', '2012-01', '����������ѧ111', '��������', 133003, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 00:16:03', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 6 records loaded
prompt Loading B_CANDIDATE_CVJOB...
prompt Table is empty
prompt Loading B_CANDIDATE_CVPROJECT...
insert into B_CANDIDATE_CVPROJECT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (2, 14, -1, -1, null, to_date('29-12-2016 16:23:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 18:54:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', 130001, '2016-12-21', '2016-12-07', '��˾����', '��ҵ', '��Ŀ����', '��Ŀְ��', '��Ŀwwww', null, null, '20161209000000888000000001', '����', to_date('29-12-2016 18:54:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVPROJECT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (11, 46, -1, -1, null, to_date('06-01-2017 12:28:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2014-01', '2014-12', '�ٶ�', 'IT', '�ٶ�������Ŀ����', '�ٶ�������Ŀ������Ŀ����', '����������Ʒ', null, null, '20161209000000888000000001', '����', to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVPROJECT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14)
values (3, 18, -1, -1, null, to_date('30-12-2016 20:51:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 21:47:18', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653378', 130001, '22222', '2222222222', '��˾����1', '22222222222222������������', '22222222222222223333', '2222222222222', '88888888', null, null, '20161209000000888000000001', '����', to_date('30-12-2016 21:47:18', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading B_CANDIDATE_CVTRAIN...
insert into B_CANDIDATE_CVTRAIN (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (3, 18, -1, -1, null, to_date('30-12-2016 20:51:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-12-2016 21:47:18', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653378', 130001, '333', '33333', null, '3333333', null, null, '20161209000000888000000001', '����', to_date('30-12-2016 21:47:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVTRAIN (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (11, 46, -1, -1, null, to_date('06-01-2017 11:55:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2009-01', '2009-02', null, '���ù���', null, null, '20161209000000888000000001', '����', to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVTRAIN (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (12, 46, -1, -1, null, to_date('06-01-2017 11:55:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2010-01', '2010-03', null, '�������', null, null, '20161209000000888000000001', '����', to_date('06-01-2017 14:48:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_CVTRAIN (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11)
values (2, 14, -1, -1, null, to_date('29-12-2016 16:23:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 18:54:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', 130001, '2016-12-17', '2016-12-09', null, '��ѵ����1', null, null, '20161209000000888000000001', '����', to_date('29-12-2016 18:54:06', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 4 records loaded
prompt Loading B_CANDIDATE_CVWORK...
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (11, 46, -1, -1, null, to_date('06-01-2017 12:26:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:06:39', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2013-01', '2016-01', '��Ѷ��˾', null, 'IT', '������', 'ǰ�˹���ʦ', '��Ŀ����', null, null, null, null, null, '������Ŀ��Э����Ա����', '����|10,ƻ��|20', '��Ѷ��˾��Ѷ��˾��Ѷ��˾��Ѷ��˾��Ѷ��˾', 0, null, '20161209000000888000000001', '����', to_date('09-01-2017 19:06:39', 'dd-mm-yyyy hh24:mi:ss'), 0, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (2, 14, -1, -1, null, to_date('29-12-2016 16:37:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-12-2016 18:54:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', 130001, '2016-12-08', '2016-12-10', '��˾����֪��', null, '��֪����ҵ', '����', 'ְλ', 'ְ��', null, null, null, null, null, '����ְ��', null, null, 0, null, '20161209000000888000000001', '����', to_date('29-12-2016 18:54:06', 'dd-mm-yyyy hh24:mi:ss'), 0, null, '0', 0, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (3, 18, -1, -1, null, to_date('30-12-2016 20:51:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 23:07:55', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653378', 130001, '33333', '3333333', '��������1', '��˾���ܹ�˾���ܹ�˾���ܹ�˾����', '2222', '2222222', '22222', '222222', 10, 10, 'н�ʹ���', '�㱨����', '10', '222', '�г�|20', null, 0, null, '20161209000000888000000001', '����', to_date('01-01-2017 23:07:55', 'dd-mm-yyyy hh24:mi:ss'), 10, '��ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ����ְԭ��1111', '0', 29, null, null, null);
insert into B_CANDIDATE_CVWORK (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (12, 46, -1, -1, null, to_date('06-01-2017 12:27:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:06:39', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '2016-01', '2017-01', '�ٶȹ�˾', null, 'IT', '�ٶ�����', 'ǰ�˹���ʦ', '��Ŀ����', null, null, null, null, null, 'ǰ�˿���', 'Ӣ��|12,����|80', '�ٶȹ�˾�ٶȹ�˾�ٶȹ�˾�ٶȹ�˾�ٶȹ�˾', 0, null, '20161209000000888000000001', '����', to_date('09-01-2017 19:06:39', 'dd-mm-yyyy hh24:mi:ss'), 0, '�ٶ���ְԭ����ְԭ����ְԭ����ְԭ����ְԭ��', '0', 2, null, null, null);
commit;
prompt 4 records loaded
prompt Loading B_CANDIDATE_FILES...
prompt Table is empty
prompt Loading B_CANDIDATE_HCCOMMENT...
insert into B_CANDIDATE_HCCOMMENT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (3, 18, -1, -1, null, to_date('31-12-2016 15:47:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 23:13:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775653378', '20161209000000888000000001', 130001, null, 241023, null, null, null, '��ע', null, null, null, null, null, '����|43344,Ӣ��|3��', 'ȱ��/�ɻ�ȱ��/�ɻ�ȱ��/�ɻ�ȱ��/�ɻ�ȱ��/�ɻ�ȱ��/�ɻ�', null, null, null, '20', '300', '��Ͻ����Χ', null, null, null, null, null, '20161209000000888000000001', '����', to_date('01-01-2017 23:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into B_CANDIDATE_HCCOMMENT (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (11, 46, -1, -1, null, to_date('09-01-2017 19:53:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:01:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', '20161209000000888000000001', 130001, null, 241023, null, null, null, null, null, null, null, null, null, null, '�����е����', null, null, null, '5', null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 20:01:47', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading B_CANDIDATE_INTERVIEW...
prompt Table is empty
prompt Loading B_CANDIDATE_LANGUAGE...
prompt Table is empty
prompt Loading B_CANDIDATE_MARKER...
prompt Table is empty
prompt Loading B_CANDIDATE_ORGAN_RELATION...
prompt Table is empty
prompt Loading B_CANDIDATE_PROCESS...
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (13, 42, -1, -1, null, to_date('05-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:36:16', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657321', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110838886010128958667395', 252001, 243009, 244099, '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', 245042, '������ʱ��ϵͳ�Զ��ܾ�', to_date('05-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161101000000999000000091', '������', to_date('06-01-2017 11:36:16', 'dd-mm-yyyy hh24:mi:ss'), '�������Գ�ʱ����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (15, 40, -1, -1, null, to_date('05-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657319', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110851964010151171485388', 252001, 243009, 244099, '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', 245042, '������ʱ��ϵͳ�Զ��ܾ�', to_date('05-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161101000000999000000091', '������', to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '�������Գ�ʱ����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (14, 41, -1, -1, null, to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:31:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110843980010174791768921', 252001, 243009, 244099, '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', 245042, '������ʱ��ϵͳ�Զ��ܾ�', to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('09-01-2017 20:31:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161101000000999000000091', '������', to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '�������Գ�ʱ����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (16, 39, -1, -1, null, to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:19:16', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110857027010156307658908', 252001, 243009, 244099, '���̱����ʽ����ѡ��û����ְ', '����˵����ʽ����ѡ��û����ְ', '���������ʽ����ѡ��û����ְ', 245040, '���̱����ʽ����ѡ��û����ְ', to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('05-01-2017 16:19:16', 'dd-mm-yyyy hh24:mi:ss'), 'û����ְ', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�' || chr(10) || '���ӻ�' || chr(10) || '���ӻ�' || chr(10) || '', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (19, 7, -1, -1, null, to_date('09-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:39:49', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000002', '170109143451149010196643515222', 252001, 243009, 244022, '���̱����ʽ����ѡ����ְ', '����˵����ʽ����ѡ����ְ', '���������ʽ����ѡ����ְ', 245001, '���̱����ʽ����ѡ����ְ', to_date('09-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 15:39:49', 'dd-mm-yyyy hh24:mi:ss'), '��ְ', '2016120100000010100000002', 3, 'ww���Կͻ���˾2', null, '������', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (20, 7, -1, -1, null, to_date('09-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:03:28', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000003', '170109144435793010184362020475', 252001, 243001, 244022, '���̱����ʽ����ѡ�˽���Offer', '����˵����ʽ����ѡ�˽���Offer', '���������ʽ����ѡ�˽���Offer', null, '���Խ���', to_date('09-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('09-01-2017 15:03:28', 'dd-mm-yyyy hh24:mi:ss'), '��ѡ�˽���Offer', '2016120100000010100000003', 4, '���Կͻ���˾3', null, '������', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (24, 23, -1, -1, null, to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', 130001, '20161209000000888000000005', '20161201000000222000000001', '170110093137344010120440986489', 252001, 243001, 244001, '���̱����ʽ����������', null, null, null, null, to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 7, -1, -1, null, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000004', '170109154004391010150119070726', 252002, 243009, 244099, '���̱����ʽ���ر�����', '����˵����ʽ���ر�����', '[DETAIL=ԭ��]', 245444, '�ر�����', to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, null, null, 242001, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), '�ر�����', '2016120100000010100000004', 5, null, null, '������', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, 23, -1, -1, null, to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', 130001, '20161209000000888000000005', '20161201000000222000000001', '170110093137344010120440986489', 252002, null, null, '���̱����ʽ����ע', '����˵����ʽ����ע', '���������ʽ����ע', null, '���̱����ʽ����ע', to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, 19, -1, -1, null, to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654480', 130001, '20161209000000888000000003', '20161201000000222000000001', '170103203602326010196582606293', 252001, 243001, 244001, '���̱����ʽ����������', '����˵����ʽ����������', '���������ʽ����������', null, '���̱����ʽ����������', to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, 14, -1, -1, null, to_date('03-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 13:30:46', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', 130001, '20161209000000888000000001', '20161201000000222000000001', '170103203847639010178087456208', 252001, 243009, 244099, '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', 245042, '������ʱ��ϵͳ�Զ��ܾ�', to_date('03-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('05-01-2017 13:30:46', 'dd-mm-yyyy hh24:mi:ss'), '�������Գ�ʱ����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 13, -1, -1, null, to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:38:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', 130001, '20161209000000888000000001', '20161201000000222000000001', '170103203858874010186925898396', 252002, 243009, 244099, null, null, '���ǲ������������', 245043, null, to_date('03-01-2017 20:38:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1, null, null, 242001, to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('05-01-2017 11:55:56', 'dd-mm-yyyy hh24:mi:ss'), '��עԭ������δͨ����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 12, -1, -1, null, to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:32:14', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', 130001, '20161209000000888000000001', '20161201000000222000000001', '170103203913421010149813186504', 252001, 243009, 244099, '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', 245042, '������ʱ��ϵͳ�Զ��ܾ�', to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('10-01-2017 09:32:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('05-01-2017 09:20:22', 'dd-mm-yyyy hh24:mi:ss'), '�������Գ�ʱ����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 7, -1, -1, null, to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 11:24:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000001', '170104171757947010145031792061', 252001, 243009, 244099, '���̱����ʽ����ѡ�˾ܾ�����', '����˵����ʽ����ѡ�˾ܾ�����', '���������ʽ����ѡ�˾ܾ�����', 245042, '���̱����ʽ����ѡ�˾ܾ�����', to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('10-01-2017 11:24:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('04-01-2017 19:10:16', 'dd-mm-yyyy hh24:mi:ss'), '��ѡ�˾ܾ�����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 45, -1, -1, null, to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:33:03', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657324', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110806901010160406822198', 252001, 243001, 244001, '���̱����ʽ����ע', '����˵����ʽ����ע', '���������ʽ����ע', null, null, to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('10-01-2017 09:33:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (11, 44, -1, -1, null, to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110818245010113995242510', 252001, 243001, 244021, '���̱����ʽ��Offer���', '����˵����ʽ��Offer���', '[DETAIL=Offer�ļ�]', null, null, to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), 'Offer���', '2016120100000010100000001', 1, null, null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (12, 43, -1, -1, null, to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 19:55:44', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657322', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110826511010133480726803', 252001, 243001, 244006, '���̱����ʽ����������', '����˵����ʽ����������', '���������ʽ����������', null, null, to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('05-01-2017 19:55:44', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 46, 802001, 801000, null, to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:01:02', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110755745010108662574666', 252001, null, null, '���̱����ʽ��ȡ����ע', '����˵����ʽ��ȡ����ע', '���������ʽ��ȡ����ע', null, null, to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 3, null, null, 242002, to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), 'ȡ����ע', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (23, 7, -1, -1, null, to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000005', '170109163620308010116566806427', 252001, 243009, 244099, '���̱����ʽ���ر�����', '����˵����ʽ���ر�����', '[DETAIL=ԭ��]', 245444, '�ر�����', to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), '�ر�����', '2016120100000010100000005', 6, null, null, '������', null, null, null, null, null);
commit;
prompt 19 records loaded
prompt Loading B_CANDIDATE_PROCESS_HIS...
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (13, 42, -1, -1, null, to_date('05-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657321', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110838886010128958667395', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('05-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:38', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (15, 40, -1, -1, null, to_date('05-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657319', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110851964010151171485388', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('05-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:51', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (14, 41, -1, -1, null, to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110843980010174791768921', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (16, 39, -1, -1, null, to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657318', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110857027010156307658908', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:57', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 46, -1, -1, null, to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110755745010108662574666', 252001, 243001, 244001, '���̱����ʽ��ȡ����ע', '���̱����ʽ��ȡ����ע', '���̱����ʽ��ȡ����ע', null, null, to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 3, null, null, 242002, to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 20:02:59', 'dd-mm-yyyy hh24:mi:ss'), 'ȡ����ע', '2016120100000010100000001', 1, 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (19, 7, -1, -1, null, to_date('09-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000002', '170109143451149010196643515222', 252001, 243001, 244001, '���̱����ʽ����������', null, '���̱����ʽ����������', null, null, to_date('09-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000002', '������', to_date('09-01-2017 14:34:51', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000002', 3, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (20, 7, -1, -1, null, to_date('09-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000003', '170109144435793010184362020475', 252001, 243001, 244001, '���̱����ʽ����������', null, '���̱����ʽ����������', null, null, to_date('09-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000003', '������', to_date('09-01-2017 14:44:35', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000003', 4, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 7, -1, -1, null, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000004', '170109154004391010150119070726', 252002, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, null, to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000004', '������', to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000004', 5, '���Կͻ���˾4', null, '������', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (22, 7, -1, -1, null, to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000004', '170109154004391010150119070726', 252001, 243001, 244001, '���̱����ʽ����������', null, '���̱����ʽ����������', null, null, to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, null, null, null, null, null, '20161201000000222000000004', '������', to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000004', 5, '���Կͻ���˾4', null, '������', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (23, 7, -1, -1, null, to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000005', '170109163620308010116566806427', 252001, 243009, 244099, '���̱����ʽ���ر�����', '����˵����ʽ���ر�����', '[DETAIL=ԭ��]', null, '���Խ���', to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('10-01-2017 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), '�ر�����', '2016120100000010100000005', 6, null, null, '������', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, 23, -1, -1, null, to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', 130001, '20161209000000888000000005', '20161201000000222000000001', '170110093137344010120440986489', 252002, null, null, '���̱����ʽ����ע', '����˵����ʽ����ע', '���������ʽ����ע', null, '���̱����ʽ����ע', to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (24, 23, -1, -1, null, to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', 130001, '20161209000000888000000005', '20161201000000222000000001', '170110093137344010120440986489', 252001, 243001, 244001, '���̱����ʽ����������', null, null, null, null, to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('10-01-2017 09:32:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('10-01-2017 09:31:37', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 7, -1, -1, null, to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 11:24:37', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000001', '170104171757947010145031792061', 252001, 243009, 244099, '���̱����ʽ����ѡ�˾ܾ�����', '����˵����ʽ����ѡ�˾ܾ�����', '���������ʽ����ѡ�˾ܾ�����', 245042, '���̱����ʽ����ѡ�˾ܾ�����', to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('10-01-2017 11:24:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('04-01-2017 19:10:16', 'dd-mm-yyyy hh24:mi:ss'), '��ѡ�˾ܾ�����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 7, -1, -1, null, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000004', null, 252002, null, null, '���̱����ʽ����ע', null, '���̱����ʽ����ע', null, null, null, null, null, null, 0, null, null, 242001, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000004', '������', to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000004', 5, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 7, -1, -1, null, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000004', '170109153515953010174561718206', 252002, null, null, '���̱����ʽ����ע', null, '���̱����ʽ����ע', null, null, to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000004', '������', to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000004', 5, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (22, 7, -1, -1, null, to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000004', '170109153515953010174561718206', 252001, 243001, 244001, '���̱����ʽ����������', null, '���̱����ʽ����������', null, null, to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, null, null, null, null, null, '20161201000000222000000004', '������', to_date('09-01-2017 15:35:15', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000004', 5, '���Կͻ���˾4', null, '������', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (14, 41, -1, -1, null, to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 20:31:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110843980010174791768921', 252001, 243009, 244099, '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', 245042, '������ʱ��ϵͳ�Զ��ܾ�', to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('09-01-2017 20:31:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161101000000999000000091', '������', to_date('06-01-2017 11:36:17', 'dd-mm-yyyy hh24:mi:ss'), '�������Գ�ʱ����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 7, -1, -1, null, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000004', '170109154004391010150119070726', 252002, 243009, 244099, '���̱����ʽ���ر�����', '����˵����ʽ���ر�����', '[DETAIL=ԭ��]', null, null, to_date('09-01-2017 15:40:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, null, null, 242001, to_date('09-01-2017 15:35:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('10-01-2017 08:09:59', 'dd-mm-yyyy hh24:mi:ss'), '�ر�����', '2016120100000010100000004', 5, null, null, '������', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, 23, -1, -1, null, to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654485', 130001, '20161209000000888000000005', '20161201000000222000000001', null, 252002, null, null, '���̱����ʽ����ע', '���̱����ʽ����ע', '���̱����ʽ����ע', null, '���̱����ʽ����ע', null, null, null, null, 0, null, null, 242001, to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:17:25', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, 19, -1, -1, null, to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775654480', 130001, '20161209000000888000000003', '20161201000000222000000001', '170103203602326010196582606293', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:36:02', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, 14, -1, -1, null, to_date('03-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657287', 130001, '20161209000000888000000001', '20161201000000222000000001', '170103203847639010178087456208', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('03-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:38:47', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 13, -1, -1, null, to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', 130001, '20161209000000888000000001', '20161201000000222000000001', null, 252002, null, null, '���̱����ʽ����ע', '���̱����ʽ����ע', '���̱����ʽ����ע', null, '���̱����ʽ����ע', null, null, null, null, 0, null, null, 242001, to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 13, -1, -1, null, to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:38:58', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657286', 130001, '20161209000000888000000001', '20161201000000222000000001', '170103203858874010186925898396', 252002, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, null, to_date('03-01-2017 20:38:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('03-01-2017 20:38:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:38:58', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 12, -1, -1, null, to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', 130001, '20161209000000888000000001', '20161201000000222000000001', '170103203913421010149813186504', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 12, -1, -1, null, to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', 130001, '20161209000000888000000001', '20161201000000222000000001', '170103203913421010149813186504', 252001, 243001, 244001, '���̱����ʽ����ע', '���̱����ʽ����ע', '���̱����ʽ����ע', null, null, to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 7, -1, -1, null, to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000001', '170104171757947010145031792061', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 46, -1, -1, null, to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110755745010108662574666', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 45, -1, -1, null, to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657324', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110806901010160406822198', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 45, -1, -1, null, to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657324', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110806901010160406822198', 252001, 243001, 244001, '���̱����ʽ����ע', '���̱����ʽ����ע', '���̱����ʽ����ע', null, null, to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (11, 44, -1, -1, null, to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110818245010113995242510', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (12, 43, -1, -1, null, to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657322', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110826511010133480726803', 252001, 243001, 244001, '���̱����ʽ����������', '���̱����ʽ����������', '���̱����ʽ����������', null, '���̱����ʽ����������', to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:26', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 46, -1, -1, null, to_date('05-01-2017 11:07:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 20:02:54', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657325', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110755745010108662574666', 252001, 243001, 244001, '���̱����ʽ����ע', '���̱����ʽ����ע', '���̱����ʽ����ע', null, null, to_date('05-01-2017 20:02:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 3, null, null, 242001, to_date('05-01-2017 20:02:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 20:02:54', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, 'ww���Կͻ���˾1 |   [HRFACE]���ӻ�', null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (14, 41, -1, -1, null, to_date('05-01-2017 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657320', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110843980010174791768921', 252001, 243001, 244001, '���̱����ʽ����ע', '���̱����ʽ����ע', '���̱����ʽ����ע', null, null, to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242001, to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (23, 7, -1, -1, null, to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000005', '170109163620308010116566806427', 252001, 243001, 244001, '���̱����ʽ����������', null, '���̱����ʽ����������', null, null, to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, null, null, null, null, null, null, '20161201000000222000000005', '������', to_date('09-01-2017 16:36:20', 'dd-mm-yyyy hh24:mi:ss'), '��������', '2016120100000010100000005', 6, null, null, null, null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 12, -1, -1, null, to_date('03-01-2017 20:39:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:32:14', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657285', 130001, '20161209000000888000000001', '20161201000000222000000001', '170103203913421010149813186504', 252001, 243009, 244099, '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', '������ʱ��ϵͳ�Զ��ܾ�', 245042, '������ʱ��ϵͳ�Զ��ܾ�', to_date('04-01-2017 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('10-01-2017 09:32:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('05-01-2017 09:20:22', 'dd-mm-yyyy hh24:mi:ss'), '�������Գ�ʱ����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 45, -1, -1, null, to_date('05-01-2017 11:08:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:33:03', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657324', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110806901010160406822198', 252001, 243001, 244001, '���̱����ʽ����ע', '����˵����ʽ����ע', '���������ʽ����ע', null, null, to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('10-01-2017 09:33:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161201000000222000000001', '���ӻ�', to_date('05-01-2017 11:08:09', 'dd-mm-yyyy hh24:mi:ss'), '��ע', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (11, 44, -1, -1, null, to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:33:42', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110818245010113995242510', 252001, 243001, 244021, '���̱����ʽ��Offer���', '����˵����ʽ��Offer���', '[DETAIL=Offer�ļ�]', null, null, to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('10-01-2017 09:33:42', 'dd-mm-yyyy hh24:mi:ss'), 'Offer���', '2016120100000010100000001', 1, null, null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (11, 44, -1, -1, null, to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657323', 130001, '20161209000000888000000001', '20161201000000222000000001', '170105110818245010113995242510', 252001, 243001, 244021, '���̱����ʽ��Offer���', '����˵����ʽ��Offer���', '[DETAIL=Offer�ļ�]', null, null, to_date('05-01-2017 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 1, null, null, null, null, null, null, null, null, '20161209000000888000000001', '����', to_date('10-01-2017 09:44:48', 'dd-mm-yyyy hh24:mi:ss'), 'Offer���', '2016120100000010100000001', 1, null, null, '���ӻ�', null, null, null, null, null);
insert into B_CANDIDATE_PROCESS_HIS (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 7, -1, -1, null, to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 11:24:57', 'dd-mm-yyyy hh24:mi:ss'), '161209171243695010124775657280', 130001, '20161209000000888000000001', '20161201000000222000000001', '170104171757947010145031792061', 252001, 243009, 244099, '���̱����ʽ����ѡ�˾ܾ�����', '����˵����ʽ����ѡ�˾ܾ�����', '���������ʽ����ѡ�˾ܾ�����', 245042, '���̱����ʽ����ѡ�˾ܾ�����', to_date('04-01-2017 17:17:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 0, null, null, 242002, to_date('10-01-2017 11:24:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '20161209000000888000000001', '����', to_date('04-01-2017 19:10:16', 'dd-mm-yyyy hh24:mi:ss'), '��ѡ�˾ܾ�����', '2016120100000010100000001', 1, 'ww���Կͻ���˾1', null, '���ӻ�', null, null, null, null, null);
commit;
prompt 39 records loaded
prompt Loading B_HR...
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (87, -1, -1, null, to_date('26-12-2016 15:25:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 15:25:58', 'dd-mm-yyyy hh24:mi:ss'), '161226152558104010131661423780', null, -1, '��ǧ��2', '0', '18515992348', '��������', '2542', 0, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (83, -1, -1, null, to_date('26-12-2016 14:36:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:36:18', 'dd-mm-yyyy hh24:mi:ss'), '161226143618531010143494268041', null, -1, '��ǧ��', '0', '18815993573', '2222222', '6770', 0, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (85, -1, -1, null, to_date('26-12-2016 15:22:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 15:22:20', 'dd-mm-yyyy hh24:mi:ss'), '161226152220024010105086452895', null, -1, '��ǧ��1', '0', '18815992343', '010-2222222222222', '1860', 0, null, null, null, null, null, null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (89, -1, -1, null, to_date('26-12-2016 17:03:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:03:57', 'dd-mm-yyyy hh24:mi:ss'), '161226170357631010123898877433', null, -1, '��ǧ��2', '0', '18515992334', '22222222', '8509', 0, null, null, null, null, null, null, '22222', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (91, -1, -1, null, to_date('26-12-2016 18:33:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 18:33:06', 'dd-mm-yyyy hh24:mi:ss'), '161226183306663010179201311018', null, -1, '��ǿ��', '132002', '18515992233', '900--2222', '8016', 0, null, null, null, null, null, null, '22222', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HR (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30)
values (1, -1, -1, null, to_date('09-01-2017 19:20:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:20:13', 'dd-mm-yyyy hh24:mi:ss'), '170109192013846010146163111970', null, -1, '�ú�', '1', '18662222222', '2222', '7605', 0, null, null, null, null, null, null, '222222', 203000, 130001, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
commit;
prompt 6 records loaded
prompt Loading B_HUNTER...
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35)
values (14, -1, -1, null, to_date('09-01-2017 19:44:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:44:23', 'dd-mm-yyyy hh24:mi:ss'), '170109194423690010162970873774', null, -1, '�ϼ', 1, '18515992999', null, '222222', '��', '1', null, null, null, '2222222', null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35)
values (15, -1, -1, null, to_date('09-01-2017 19:45:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:45:16', 'dd-mm-yyyy hh24:mi:ss'), '170109194516143010178729433406', null, -1, '222222', 1, '18622222222', null, '222222222', '��', '1', null, null, null, '2222222222', null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35)
values (2, -1, -1, null, to_date('26-12-2016 21:02:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:02:34', 'dd-mm-yyyy hh24:mi:ss'), '161226210234572010176475236902', null, -1, '���', 2, '18766662722', null, '33333', '��', '1', null, null, null, '333333', null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35)
values (11, -1, -1, null, to_date('03-01-2017 18:44:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:44:09', 'dd-mm-yyyy hh24:mi:ss'), '170103184409274010107780965672', null, -1, '��ǧ��222', 1, '18515989833', null, '2298833', '��', '1', null, null, null, '��ǿ22', null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35)
values (12, -1, -1, null, to_date('03-01-2017 18:57:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:57:09', 'dd-mm-yyyy hh24:mi:ss'), '170103185709114010141094152834', null, -1, '222', 0, '2222222222', null, '22222222', '3333333333', '0', null, null, null, '��', null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35)
values (16, -1, -1, null, to_date('09-01-2017 19:46:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:46:49', 'dd-mm-yyyy hh24:mi:ss'), '170109194649783010107029033724', null, -1, '�ϼ', 1, '18982222222', null, '222222222222', '��', '1', null, null, null, '222222222', null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
insert into B_HUNTER (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35)
values (13, -1, -1, null, to_date('03-01-2017 19:00:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 19:00:37', 'dd-mm-yyyy hh24:mi:ss'), '170103190037702010159876692833', null, -1, '222', 0, '222222222222222', null, '222222222222222', '222222222222', '0', null, null, null, '��', null, null, 203000, 130001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
commit;
prompt 7 records loaded
prompt Loading B_JOB...
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (3, 1, -1, -1, null, to_date('26-12-2016 11:53:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 11:53:11', 'dd-mm-yyyy hh24:mi:ss'), '22', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 1, '222', '22', '223002', '224004', '222', '222', '2222', '222', 'checkbox', '1', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (14, 1, -1, -1, null, to_date('26-12-2016 12:54:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 12:54:01', 'dd-mm-yyyy hh24:mi:ss'), 'ְλ����', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 1, '������ҵ', '���ڲ���', '223003', '224003', '20-30', 'ְλ�ջ�', 'ְλ����', 'ְλҪ��', '�����ص�', '1', null, null, null, null, '0', null, null, null, null);
insert into B_JOB (dataid, parentdataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (15, 1, -1, -1, null, to_date('26-12-2016 13:27:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 13:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'ְλ����', '20161201000000222000000001', 130001, 1, '2016120100000010100000001', 1, '������ҵ', '11', '223003', '224004', '22-33', 'ְλ�ջ�', '����', 'Ҫ��', '���� ', '1', null, null, null, null, '0', null, null, null, null);
commit;
prompt 3 records loaded
prompt Loading B_MMORGAN...
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '2016110100000011100000001', 'ACE��ѡ�����⹫˾', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (2, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '2016110100000022200000001', 'ACE-HR���⹫˾', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '2016110100000033300000001', 'ACE-HC���⹫˾', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '2016110100000099900000001', 'ACE-�ܹ�˾', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:39:47', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000001', 'ww���Կͻ���˾1', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2016 21:09:56', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000001', 'WW��ͷ��˾001', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:39:31', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000002', 'ww���Կͻ���˾2', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:39:57', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000003', '���Կͻ���˾3', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:05', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000004', '���Կͻ���˾4', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:12', 'dd-mm-yyyy hh24:mi:ss'), '2016120100000010100000005', '���Կͻ���˾5', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (33, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:55', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000004', 'WW��ͷ��˾002', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (34, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:41:04', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000005', 'WW��ͷ��˾002', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (35, -1, -1, null, to_date('26-12-2016 17:19:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:19:34', 'dd-mm-yyyy hh24:mi:ss'), '2313232131313131232131231', '��˾ȫ��', null, 0, 220004, 203001, 805, 130001, '201002', null, null, null, null, '������', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '��˾���', null, null, '������Ϊν��������', '820CA8681F10AD3DD552D5D2FB28756DBB97CB778AFEA6D1', '820CA8681F10AD3DD552D5D2FB28756DBB97CB778AFEA6D1', '2016-12-23', '222004', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (36, -1, -1, null, to_date('26-12-2016 18:33:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 18:33:40', 'dd-mm-yyyy hh24:mi:ss'), '2313232131313131232131232', '��˾ȫ��', null, 0, 220002, 203001, 805, 130001, '201002', null, null, null, null, '222222222', null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, '��˾���', null, null, '222222222222', '820CA8681F10AD3DD552D5D2FB28756DBB97CB778AFEA6D1', '820CA8681F10AD3DD552D5D2FB28756DBB97CB778AFEA6D1', '2016-12-21', '222004', null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (31, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:41', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000002', 'WW��ͷ��˾002', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_MMORGAN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (32, 802001, 801000, null, to_date('03-12-2016 14:58:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:40:48', 'dd-mm-yyyy hh24:mi:ss'), '2016120900000099900000003', 'WW��ͷ��˾002', null, 0, 220001, 203008, null, 130001, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 16 records loaded
prompt Loading B_MMORGAN_AGREEMENT...
prompt Table is empty
prompt Loading B_MMORGAN_INVITECODE...
prompt Table is empty
prompt Loading B_STAT...
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (48, -1, -1, null, to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), 260001, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, null, null, null, null, null, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (49, -1, -1, null, to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), 260002, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, null, null, null, null, null, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (50, -1, -1, null, to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), 260003, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, null, null, null, null, null, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (51, -1, -1, null, to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), 260004, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, null, null, null, null, null, null, null, null, null);
insert into B_STAT (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25)
values (52, -1, -1, null, to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 00:10:05', 'dd-mm-yyyy hh24:mi:ss'), 260009, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, null, null, null, null, null, null, null, null, null);
commit;
prompt 5 records loaded
prompt Loading B_USERLOGIN...
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (64, -1, -1, null, to_date('21-12-2016 21:21:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 21:21:31', 'dd-mm-yyyy hh24:mi:ss'), '161221212131684010160784208663', '185159937737', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('21-12-2016 21:21:31', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't0784208663', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '�ϼ', null, 0, null, null, null, '333', '6210', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (66, -1, -1, null, to_date('21-12-2016 21:54:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 21:54:07', 'dd-mm-yyyy hh24:mi:ss'), '161221215407034010105394926367', '111111111111', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('21-12-2016 21:54:07', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't5394926367', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '2222', null, 0, null, null, null, '222', '7630', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (2, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000222000000001', '19900000002', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, 2, '2016110100000022200000001', to_date('13-12-2016 22:26:37', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't3605966899', null, null, '132001', null, null, null, null, null, null, null, 4, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (46, 802001, 801000, '18800000004 18800000004 18800000004 ���� landao ld ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:50:06', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000004', '18800000004', '25d55ad283aa400af464c76d713c07ad', 3, 10, '2016120900000099900000004', to_date('19-12-2016 15:50:32', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 0, null, 1, '����', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (48, 802001, 801000, '18800000005 18800000005 18800000005 ���� landao ld ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:50:48', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000005', '18800000005', '25d55ad283aa400af464c76d713c07ad', 3, 10, '2016120900000099900000004', to_date('03-01-2017 20:37:48', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 2, null, 1, '����', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (52, -1, -1, null, to_date('21-12-2016 20:43:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 20:43:39', 'dd-mm-yyyy hh24:mi:ss'), '161221204339746010118797551788', '13693301339', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('21-12-2016 20:43:39', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't8797551788', null, null, '6497', null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', '22222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (54, -1, -1, null, to_date('21-12-2016 20:44:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 20:44:08', 'dd-mm-yyyy hh24:mi:ss'), '161221204408762010137081883855', '13693301330', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('21-12-2016 20:44:08', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't7081883855', null, null, '9212', null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', '22222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (62, -1, -1, null, to_date('21-12-2016 21:15:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 21:15:41', 'dd-mm-yyyy hh24:mi:ss'), '161221211541231010160080994781', '18515992345', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('21-12-2016 21:15:41', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't0080994781', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '�ϼ', null, 0, null, null, null, '22222', '5953', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (58, -1, -1, null, to_date('21-12-2016 20:47:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 20:47:47', 'dd-mm-yyyy hh24:mi:ss'), '161221204747027010134421947713', '18515992343', 'b0baee9d279d34fa1dfd71aadb908c3f', 2, -1, null, to_date('21-12-2016 20:47:47', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't4421947713', null, null, '5269', null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', '22222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (68, -1, -1, null, to_date('22-12-2016 18:00:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 18:00:20', 'dd-mm-yyyy hh24:mi:ss'), '161222180020383010109035824293', '18615555522', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('22-12-2016 18:00:20', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't9035824293', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, 'li', null, 0, null, null, null, '222', '1186', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (70, -1, -1, null, to_date('22-12-2016 18:07:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 18:07:55', 'dd-mm-yyyy hh24:mi:ss'), '161222180755817010193594150195', '1888882222', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('22-12-2016 18:07:55', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't3594150195', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, 'li', null, 0, null, null, null, '222', '7384', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (72, -1, -1, null, to_date('22-12-2016 18:45:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2016 18:45:18', 'dd-mm-yyyy hh24:mi:ss'), '161222184518007010158865874835', '19992992922', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('22-12-2016 18:45:18', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't8865874835', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '������', null, 0, null, null, null, '2222', '1899', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (42, 802001, 801000, '18800000002 18800000002 18800000002 ���� lanyu ly ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:47:58', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000002', '18800000002', '25d55ad283aa400af464c76d713c07ad', 3, 8, '2016120900000099900000002', to_date('03-01-2017 14:30:53', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (44, 802001, 801000, '18800000003 18800000003 18800000003 ���� lanhai lh ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:49:20', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000003', '18800000003', '25d55ad283aa400af464c76d713c07ad', 3, 9, '2016120900000099900000003', to_date('19-12-2016 21:34:01', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (50, -1, -1, null, to_date('21-12-2016 13:31:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 13:31:19', 'dd-mm-yyyy hh24:mi:ss'), '161221133119807010162818914103', '13693301332', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('21-12-2016 13:31:19', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't2818914103', null, null, '132001', null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', '333', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (56, -1, -1, null, to_date('21-12-2016 20:45:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 20:45:59', 'dd-mm-yyyy hh24:mi:ss'), '161221204559762010183647168078', '13693301322', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('21-12-2016 20:45:59', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't3647168078', null, null, '6659', null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', '2222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (27, 802001, 801000, '17700000004 17700000004 17700000004 ������ baizitian bzt ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:43:46', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000004', '17700000004', '25d55ad283aa400af464c76d713c07ad', 2, 5, '2016120100000010100000004', to_date('09-01-2017 15:35:01', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 1, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (1, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000111000000001', '19900000001', '25d55ad283aa400af464c76d713c07ad', 1, 1, '2016110100000011100000001', to_date('05-01-2017 14:54:26', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '���ӻ�', null, null, '132002', null, null, null, null, null, null, null, 164, null, 1, '���ӻ�', null, 0, null, null, null, '22', '222222', '2222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (22, 802001, 801000, '17700000001 17700000001 17700000001 ���ӻ� baizihua bzh ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2016 16:44:58', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000001', '17700000001', '25d55ad283aa400af464c76d713c07ad', 2, 1, '2016120100000010100000001', to_date('10-01-2017 09:40:48', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '���ӻ�', null, null, '132002', null, null, null, null, null, null, null, 178, null, 1, '���ӻ�', null, 0, null, null, null, '22', '222222', '2222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (23, 802001, 801000, null, to_date('13-12-2016 21:59:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-12-2016 21:59:32', 'dd-mm-yyyy hh24:mi:ss'), '161213215932120010163605966899', '13693301331', 'ac627ab1ccbdb62ec96e702f07f6425b', 3, -1, null, to_date('13-12-2016 22:26:37', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't3605966899', null, null, '132001', null, null, null, null, null, null, null, 4, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (24, 802001, 801000, '18800000001 18800000001 18800000001 ���� lantian lt ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:46:18', 'dd-mm-yyyy hh24:mi:ss'), '20161209000000888000000001', '18800000001', '25d55ad283aa400af464c76d713c07ad', 3, 2, '2016120900000099900000001', to_date('10-01-2017 09:44:24', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 181, null, 1, '����', null, 0, null, null, null, '333333333', '333', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (3, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000333000000001', '19900000003', '25d55ad283aa400af464c76d713c07ad', 3, 3, '2016110100000033300000001', to_date('05-01-2017 16:43:35', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '����', null, null, null, null, null, null, null, null, null, null, 152, null, 1, '����', null, 0, null, null, null, '33', '333', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (40, 802001, 801000, '17700000006 17700000006 17700000006 ������ baiziweng bzw ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:45:15', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000006', '17700000006', '25d55ad283aa400af464c76d713c07ad', 2, 7, '2016120100000010100000006', to_date('19-12-2016 14:55:22', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 0, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (4, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000999000000001', '19900000008', '25d55ad283aa400af464c76d713c07ad', 9, 4, '2016110100000099900000001', to_date('19-12-2016 14:55:22', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 0, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (5, -1, -1, null, to_date('01-11-2016', 'dd-mm-yyyy'), to_date('01-11-2016', 'dd-mm-yyyy'), '20161101000000999000000091', '19900000009', '25d55ad283aa400af464c76d713c07ad', 9, 4, '2016110100000099900000001', to_date('19-12-2016 14:55:22', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 0, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (28, 802001, 801000, '17700000005 17700000005 17700000005 ������ baiziqi bzq ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:44:37', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000005', '17700000005', '25d55ad283aa400af464c76d713c07ad', 2, 6, '2016120100000010100000005', to_date('09-01-2017 16:36:13', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 1, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (60, -1, -1, null, to_date('21-12-2016 20:51:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2016 20:51:53', 'dd-mm-yyyy hh24:mi:ss'), '161221205153965010156897554251', '18515992342', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('21-12-2016 20:51:53', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't6897554251', null, null, '6368', null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, 'sally.wu@ace-elite.com', '222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (25, 802001, 801000, '17700000002 17700000002 17700000002 ������ baiziya bzy ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:42:23', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000002', '17700000002', '25d55ad283aa400af464c76d713c07ad', 2, 3, '2016120100000010100000002', to_date('09-01-2017 14:34:34', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 2, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (26, 802001, 801000, '17700000003 17700000003 17700000003 ������ baiziyue bzy ', to_date('03-12-2016 15:01:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2016 20:43:14', 'dd-mm-yyyy hh24:mi:ss'), '20161201000000222000000003', '17700000003', '25d55ad283aa400af464c76d713c07ad', 2, 4, '2016120100000010100000003', to_date('09-01-2017 14:44:29', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, '������', null, null, null, null, null, null, null, null, null, null, 1, null, 1, '������', null, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (110, -1, -1, null, to_date('09-01-2017 19:44:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:44:23', 'dd-mm-yyyy hh24:mi:ss'), '170109194423690010162970873774', '18515992999', 'ac627ab1ccbdb62ec96e702f07f6425b', 3, -1, null, to_date('09-01-2017 19:44:23', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't2970873774', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, '�ϼ', null, 0, null, null, null, null, null, '222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (111, -1, -1, null, to_date('09-01-2017 19:45:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:45:16', 'dd-mm-yyyy hh24:mi:ss'), '170109194516143010178729433406', '18622222222', 'ac627ab1ccbdb62ec96e702f07f6425b', 3, -1, null, to_date('09-01-2017 19:45:16', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't8729433406', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, '222222', null, 0, null, null, null, null, null, '222222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (86, -1, -1, null, to_date('23-12-2016 14:37:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 14:37:36', 'dd-mm-yyyy hh24:mi:ss'), '161223143736617010167596638496', '33333333', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('23-12-2016 14:37:36', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't7596638496', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, '222', null, 0, null, null, null, '222', '4324', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (104, -1, -1, null, to_date('26-12-2016 18:33:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 18:33:06', 'dd-mm-yyyy hh24:mi:ss'), '161226183306663010179201311018', '18515992233', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('26-12-2016 18:33:06', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't9201311018', null, null, '132002', null, null, null, null, null, null, null, 1, null, 1, '��ǿ��', null, 0, null, null, null, '900--2222', '22222', '8016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (105, -1, -1, null, to_date('26-12-2016 21:02:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:02:34', 'dd-mm-yyyy hh24:mi:ss'), '161226210234572010176475236902', '18766662722', 'ac627ab1ccbdb62ec96e702f07f6425b', 3, -1, null, to_date('26-12-2016 21:02:34', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't6475236902', null, null, '2', null, null, null, null, null, null, null, 1, null, 1, '���', null, 0, null, null, null, null, null, '33333', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (106, -1, -1, null, to_date('03-01-2017 18:44:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:44:09', 'dd-mm-yyyy hh24:mi:ss'), '170103184409274010107780965672', '18515989833', 'ac627ab1ccbdb62ec96e702f07f6425b', 3, -1, null, to_date('03-01-2017 18:44:09', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't7780965672', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, '��ǧ��222', null, 0, null, null, null, null, null, '2298833', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (107, -1, -1, null, to_date('03-01-2017 18:57:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:57:09', 'dd-mm-yyyy hh24:mi:ss'), '170103185709114010141094152834', '2222222222', 'ac627ab1ccbdb62ec96e702f07f6425b', 3, -1, null, to_date('03-01-2017 18:57:09', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't1094152834', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '222', null, 0, null, null, null, null, null, '22222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (108, -1, -1, null, to_date('03-01-2017 19:00:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 19:00:37', 'dd-mm-yyyy hh24:mi:ss'), '170103190037702010159876692833', '222222222222222', 'ac627ab1ccbdb62ec96e702f07f6425b', 3, -1, null, to_date('03-01-2017 19:00:37', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't9876692833', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '222', null, 0, null, null, null, null, null, '222222222222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (81, -1, -1, null, to_date('23-12-2016 11:26:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 11:26:46', 'dd-mm-yyyy hh24:mi:ss'), '161223112646935010101280722727', '222', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('23-12-2016 11:26:46', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't1280722727', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, '222', null, 0, null, null, null, '222', '2402', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (84, -1, -1, null, to_date('23-12-2016 11:27:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 11:27:13', 'dd-mm-yyyy hh24:mi:ss'), '161223112713638010127357003710', '22', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('23-12-2016 11:27:13', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't7357003710', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, '22', null, 0, null, null, null, '222', '4818', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (88, -1, -1, null, to_date('23-12-2016 15:58:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 15:58:31', 'dd-mm-yyyy hh24:mi:ss'), '161223155831081010171944713566', '112222222', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('23-12-2016 15:58:31', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't1944713566', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '����', null, 0, null, null, null, '222', '4512', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (90, -1, -1, null, to_date('23-12-2016 16:02:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2016 16:02:38', 'dd-mm-yyyy hh24:mi:ss'), '161223160238564010197879141810', '4444444444444', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('23-12-2016 16:02:38', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't7879141810', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '333', null, 0, null, null, null, '4444444', '9004', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (99, -1, -1, null, to_date('26-12-2016 14:36:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 14:36:18', 'dd-mm-yyyy hh24:mi:ss'), '161226143618531010143494268041', '18815993573', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('26-12-2016 14:36:18', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't3494268041', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '��ǧ��', null, 0, null, null, null, '2222222', '6770', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (101, -1, -1, null, to_date('26-12-2016 15:22:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 15:22:20', 'dd-mm-yyyy hh24:mi:ss'), '161226152220024010105086452895', '18815992343', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('26-12-2016 15:22:20', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't5086452895', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '��ǧ��1', null, 0, null, null, null, '010-2222222222222', '1860', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (102, -1, -1, null, to_date('26-12-2016 15:25:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 15:25:58', 'dd-mm-yyyy hh24:mi:ss'), '161226152558104010131661423780', '18515992348', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('26-12-2016 15:25:58', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't1661423780', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '��ǧ��2', null, 0, null, null, null, '��������', '2542', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (109, -1, -1, null, to_date('09-01-2017 19:20:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:20:13', 'dd-mm-yyyy hh24:mi:ss'), '170109192013846010146163111970', '18662222222', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('09-01-2017 19:20:13', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't6163111970', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, '�ú�', null, 0, null, null, null, '2222', '222222', '7605', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (112, -1, -1, null, to_date('09-01-2017 19:46:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 19:46:49', 'dd-mm-yyyy hh24:mi:ss'), '170109194649783010107029033724', '18982222222', 'ac627ab1ccbdb62ec96e702f07f6425b', 3, -1, null, to_date('09-01-2017 19:46:49', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't7029033724', null, null, '1', null, null, null, null, null, null, null, 1, null, 1, '�ϼ', null, 0, null, null, null, null, null, '222222222222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into B_USERLOGIN (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60)
values (103, -1, -1, null, to_date('26-12-2016 17:03:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 17:03:57', 'dd-mm-yyyy hh24:mi:ss'), '161226170357631010123898877433', '18515992334', 'ac627ab1ccbdb62ec96e702f07f6425b', 2, -1, null, to_date('26-12-2016 17:03:57', 'dd-mm-yyyy hh24:mi:ss'), null, 130001, null, 't3898877433', null, null, '0', null, null, null, null, null, null, null, 1, null, 1, '��ǧ��2', null, 0, null, null, null, '22222222', '22222', '8509', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 47 records loaded
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
prompt Enabling triggers for B_ACETASK...
alter table B_ACETASK enable all triggers;
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
prompt Enabling triggers for B_CANDIDATE_CVJOB...
alter table B_CANDIDATE_CVJOB enable all triggers;
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
prompt Enabling triggers for B_CANDIDATE_LANGUAGE...
alter table B_CANDIDATE_LANGUAGE enable all triggers;
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
prompt Enabling triggers for B_JOB...
alter table B_JOB enable all triggers;
prompt Enabling triggers for B_MMORGAN...
alter table B_MMORGAN enable all triggers;
prompt Enabling triggers for B_MMORGAN_AGREEMENT...
alter table B_MMORGAN_AGREEMENT enable all triggers;
prompt Enabling triggers for B_MMORGAN_INVITECODE...
alter table B_MMORGAN_INVITECODE enable all triggers;
prompt Enabling triggers for B_STAT...
alter table B_STAT enable all triggers;
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
set feedback on
set define on
prompt Done.