prompt PL/SQL Developer import file
prompt Created on 2017��1��10�� by Administrator
set feedback off
set define off
prompt Dropping A_ACTION...
drop table A_ACTION cascade constraints;
prompt Dropping A_BANK...
drop table A_BANK cascade constraints;
prompt Dropping A_COMPANY...
drop table A_COMPANY cascade constraints;
prompt Dropping A_HCINTERVIEW_QA...
drop table A_HCINTERVIEW_QA cascade constraints;
prompt Dropping A_INDUSTRY...
drop table A_INDUSTRY cascade constraints;
prompt Dropping A_JOB...
drop table A_JOB cascade constraints;
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

prompt Creating A_COMPANY...
create table A_COMPANY
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
  c6           NUMBER(11),
  c7           NUMBER(6),
  c8           NUMBER(6),
  c9           VARCHAR2(30),
  c10          VARCHAR2(30),
  c11          VARCHAR2(20),
  c12          VARCHAR2(100),
  c13          VARCHAR2(4000),
  c14          VARCHAR2(200),
  c15          VARCHAR2(200),
  c16          NUMBER(6),
  c17          NUMBER(6),
  c18          NUMBER(6),
  c19          NUMBER(6),
  c20          NUMBER(6),
  c21          NUMBER(6),
  c22          NUMBER(6),
  c23          NUMBER(6),
  c24          VARCHAR2(30),
  c25          VARCHAR2(30),
  c26          VARCHAR2(30),
  c27          VARCHAR2(30),
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
    minextents 1
    maxextents unlimited
  );
alter table A_COMPANY
  add constraint A_COMPANY_PK primary key (DATAID)
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
  c32          VARCHAR2(30),
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
prompt Disabling triggers for A_COMPANY...
alter table A_COMPANY disable all triggers;
prompt Disabling triggers for A_HCINTERVIEW_QA...
alter table A_HCINTERVIEW_QA disable all triggers;
prompt Disabling triggers for A_INDUSTRY...
alter table A_INDUSTRY disable all triggers;
prompt Disabling triggers for A_JOB...
alter table A_JOB disable all triggers;
prompt Disabling triggers for A_PROCESS...
alter table A_PROCESS disable all triggers;
prompt Loading A_ACTION...
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1, 802001, 801000, null, to_date('26-12-2016 22:30:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:51:55', 'dd-mm-yyyy hh24:mi:ss'), 'A110001', '������ʱ��ѡ��', 130001, 254001, 251006, '238003', '[HC]��������ʱ��ѡ��[C]', '[HC]��������ʱ��ѡ��[C]', '��ѡ������', '��ѡ������', '��ѡ������', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (2, 802001, 801000, null, to_date('26-12-2016 22:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:52:04', 'dd-mm-yyyy hh24:mi:ss'), 'A110002', '������ʱ��ѡ�˼���', 130001, 254001, 251006, '238003', '[HC]��������ʱ��ѡ��[C]�ļ���', '[HC]��������ʱ��ѡ��[C]�ļ���', '��������', '��������', '��������', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:52:11', 'dd-mm-yyyy hh24:mi:ss'), 'A110003', '�ϴ���ʱ��ѡ��ͷ��', 130001, 254001, 251006, '238003', '[HC]�ϴ�����ʱ��ѡ��[C]��ͷ��', '[HC]�ϴ�����ʱ��ѡ��[C]��ͷ��', 'ͷ���ϴ�', 'ͷ���ϴ�', 'ͷ���ϴ�', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:52:17', 'dd-mm-yyyy hh24:mi:ss'), 'A110004', 'ɾ����ʱ��ѡ��ͷ��', 130001, 254001, 251006, '238003', '[HC]ɾ������ʱ��ѡ��[C]��ͷ��', '[HC]ɾ������ʱ��ѡ��[C]��ͷ��', 'ͷ��ɾ��', 'ͷ��ɾ��', 'ͷ��ɾ��', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:03:24', 'dd-mm-yyyy hh24:mi:ss'), 'A110005', '�ϴ���ʱ��ѡ��ԭʼ����', 130001, 254001, 251006, '238003', '[HC]�ϴ�����ʱ��ѡ��[C]��ԭʼ����', '[HC]�ϴ�����ʱ��ѡ��[C]��ԭʼ����', 'ԭʼ�����ϴ�', 'ԭʼ�����ϴ�', 'ԭʼ�����ϴ�', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:03:17', 'dd-mm-yyyy hh24:mi:ss'), 'A110006', 'ɾ����ʱ��ѡ��ԭʼ����', 130001, 254001, 251006, '238003', '[HC]ɾ������ʱ��ѡ��[C]��ԭʼ����', '[HC]ɾ������ʱ��ѡ��[C]��ԭʼ����', 'ԭʼ����ɾ��', 'ԭʼ����ɾ��', 'ԭʼ����ɾ��', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:21:13', 'dd-mm-yyyy hh24:mi:ss'), 'A110007', '�ϴ���ʱ��ѡ����������', 130001, 254001, 251006, '238003', '[HC]�ϴ�����ʱ��ѡ��[C]������������[DETAIL=������]��', '[HC]�ϴ�����ʱ��ѡ��[C]������������[DETAIL=������]��', '���������ϴ���[DETAIL=������]��', '���������ϴ���[DETAIL=������]��', '���������ϴ���[DETAIL=������]��', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:21:38', 'dd-mm-yyyy hh24:mi:ss'), 'A110008', 'ɾ����ʱ��ѡ����������', 130001, 254001, 251006, '238003', '[HC]ɾ������ʱ��ѡ��[C]������������[DETAIL=������]��', '[HC]ɾ������ʱ��ѡ��[C]������������[DETAIL=������]��', '��������ɾ����[DETAIL=������]��', '��������ɾ����[DETAIL=������]��', '��������ɾ����[DETAIL=������]��', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 802001, 801000, null, to_date('27-12-2016 12:47:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:02:49', 'dd-mm-yyyy hh24:mi:ss'), 'A110009', 'ɾ����ʱ��ѡ��', 130001, 254001, 251006, '238003', '[HC]ɾ������ʱ��ѡ��[C]', '[HC]ɾ������ʱ��ѡ��[C]', '��ѡ��ɾ��', '��ѡ��ɾ��', '��ѡ��ɾ��', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
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
values (16, 802001, 801000, null, to_date('27-12-2016 12:57:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:19:32', 'dd-mm-yyyy hh24:mi:ss'), 'A220001', '��ʱ��ѡ���������ɹ�', 130001, 254001, 251001, '238010', '[HC]�ɹ���������ʱ��ѡ��[C]���', '[HC]�ɹ���������ʱ��ѡ��[C]���', '�ɹ��������', '�ɹ��������', '�ɹ��������', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '1', '[MODE=�����ʾ]', '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (17, 802001, 801000, null, to_date('27-12-2016 13:01:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:20:01', 'dd-mm-yyyy hh24:mi:ss'), 'A220002', '��ʱ��ѡ���������ʧ��', 130001, 254001, 251001, '238010', '[HC]������ʱ��ѡ��[C]���ʧ��[DETAIL=��չ��ԭ��]', '[HC]������ʱ��ѡ��[C]���ʧ��[DETAIL=��չ��ԭ��]', '�������ʧ��[DETAIL=��չ��ԭ��]', '�������ʧ��[DETAIL=��չ��ԭ��]', '�������ʧ��[DETAIL=��չ��ԭ��]', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (18, 802001, 801000, null, to_date('27-12-2016 13:02:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:20:18', 'dd-mm-yyyy hh24:mi:ss'), 'A220041', '��ʱ��ѡ��ȡ�����', 130001, 254001, 251001, '238003', '[HC]ȡ������ʱ��ѡ��[C]���', '[HC]ȡ������ʱ��ѡ��[C]���', 'ȡ�����', 'ȡ�����', 'ȡ�����', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (19, 802001, 801000, null, to_date('27-12-2016 13:07:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:20:38', 'dd-mm-yyyy hh24:mi:ss'), 'A220002', '��ʱ��ѡ������������ͨ��', 130001, 254001, 251002, '238009', '[BC]ͨ������ʱ��ѡ��[C]��������', '[BC]ͨ������ʱ��ѡ��[C]��������', 'ͨ����������', 'ͨ����������', 'ͨ����������', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '��ѡ��[C]ͨ����������', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (20, 802001, 801000, null, to_date('27-12-2016 13:09:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:20:51', 'dd-mm-yyyy hh24:mi:ss'), 'A220042', '��ʱ��ѡ�����������˲���', 130001, 254001, 251001, '238009', '[BS]��������ʱ��ѡ��[C]��������[DETAIL=��չ��ԭ��]', '[BS]��������ʱ��ѡ��[C]��������[DETAIL=��չ��ԭ��]', '������δͨ��[DETAIL=��չ��ԭ��]', '������δͨ��[DETAIL=��չ��ԭ��]', '������δͨ��[DETAIL=��չ��ԭ��]', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '��ѡ��[C]������δͨ��', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 802001, 801000, null, to_date('27-12-2016 13:10:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:21:14', 'dd-mm-yyyy hh24:mi:ss'), 'A220052', '��ʱ��ѡ�����������˳�ʱ', 130001, 254001, 251001, '238010', '��ʱ��ѡ��[C]�������˳�ʱ', '��ʱ��ѡ��[C]�������˳�ʱ', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '1', '��ѡ��[C]�����˳�ʱ', '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (22, 802001, 801000, null, to_date('27-12-2016 13:12:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:12:09', 'dd-mm-yyyy hh24:mi:ss'), 'A111007', '׼����ѡ�˼�������', 130001, 254001, 251002, '238009', '[BS]������׼����ѡ��[C]�ļ���', '[BS]������׼����ѡ��[C]�ļ���', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (23, 802001, 801000, null, to_date('27-12-2016 13:15:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:21:50', 'dd-mm-yyyy hh24:mi:ss'), 'A220003', '׼����ѡ�˰��Ź�������', 130001, 254001, 251002, '238003', '[HC]������׼����ѡ��[C]�Ĺ�������[DETAIL=��չ��ԭ��]', '[HC]������׼����ѡ��[C]�Ĺ�������[DETAIL=��չ��ԭ��]', '���Ź�������[DETAIL=��չ��ԭ��]', '���Ź�������[DETAIL=��չ��ԭ��]', '���Ź�������[DETAIL=��չ��ԭ��]', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '[MODE=��������]', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (24, 802001, 801000, null, to_date('27-12-2016 13:18:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 13:18:42', 'dd-mm-yyyy hh24:mi:ss'), 'A111009', '׼����ѡ�˱����������', 130001, 254001, 251002, '238003', '[HC]�����׼����ѡ��[C]�Ĺ�������[DETAIL=��չ������]', '[HC]�����׼����ѡ��[C]�Ĺ�������[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '1', '0', '0', '0', null, null, '1', '0', null, '0', null, '1', '[MODE=��������]', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (25, 802001, 801000, null, to_date('27-12-2016 13:23:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:22:49', 'dd-mm-yyyy hh24:mi:ss'), 'A220004', '׼����ѡ�˱༭��������', 130001, 254001, 251002, '238003', '[HC]�༭��׼����ѡ��[C]�Ĺ�������', '[HC]�༭��׼����ѡ��[C]�Ĺ�������', '�༭��������', '�༭��������', '�༭��������', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (26, 802001, 801000, null, to_date('27-12-2016 13:24:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:23:00', 'dd-mm-yyyy hh24:mi:ss'), 'A220005', '׼����ѡ���ύ��������', 130001, 254001, 251002, '238003', '[HC]�ύ��׼����ѡ��[C]�Ĺ�������', '[HC]�ύ��׼����ѡ��[C]�Ĺ�������', '�ύ��������', '�ύ��������', '�ύ��������', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '1', '[MODE=�����ʾ]', '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (27, 802001, 801000, null, to_date('27-12-2016 13:26:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:23:18', 'dd-mm-yyyy hh24:mi:ss'), 'A220006', '׼����ѡ���������ͨ��', 130001, 254001, 251005, '238009', '[BS]ͨ����׼����ѡ��[C]�Ĺ�������', '[BS]ͨ����׼����ѡ��[C]�Ĺ�������', '�����������ͨ��', '��ѡ����¼', '��ѡ����¼', '1', '1', '1', '1', '0', '1', null, null, '1', '0', null, '0', null, '1', '��ѡ��[C]�Ĺ�������ͨ�������', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (28, 802001, 801000, null, to_date('27-12-2016 13:28:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:23:29', 'dd-mm-yyyy hh24:mi:ss'), 'A220046', '׼����ѡ��������˲�ͨ��', 130001, 254001, 251002, '238009', '[BS]������׼����ѡ��[C]�Ĺ�������[DETAIL=��չ��ԭ��]', '[BS]������׼����ѡ��[C]�Ĺ�������[DETAIL=��չ��ԭ��]', '�����������δͨ��[DETAIL=��չ��ԭ��]', '�����������δͨ��[DETAIL=��չ��ԭ��]', '�����������δͨ��[DETAIL=��չ��ԭ��]', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '��ѡ��[C]�Ĺ�������δͨ�����', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (29, 802001, 801000, null, to_date('27-12-2016 13:29:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:23:39', 'dd-mm-yyyy hh24:mi:ss'), 'A220056', '׼����ѡ��������˳�ʱ', 130001, 254001, 251002, '238010', '׼����ѡ��[C]�Ĺ���������˳�ʱ', '׼����ѡ��[C]�Ĺ���������˳�ʱ', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '1', '��ѡ��[C]����������˳�ʱ', '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (30, 802001, 801000, null, to_date('27-12-2016 15:02:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:02:24', 'dd-mm-yyyy hh24:mi:ss'), 'A111015', '���º�ѡ�˼���', 130001, 254001, 251005, '238003', '[HC]�����˺�ѡ��[C]�ļ���', '[HC]�����˺�ѡ��[C]�ļ���', '��������', '��������', '��������', '1', '1', '1', '1', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (31, 802001, 801000, null, to_date('27-12-2016 15:03:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:03:32', 'dd-mm-yyyy hh24:mi:ss'), 'A111016', '���º�ѡ�˹�������', 130001, 254001, 251005, '238003', '[HC]�����˺�ѡ��[C]�Ĺ�������', '[HC]�����˺�ѡ��[C]�Ĺ�������', '������������', '������������', '������������', '1', '1', '1', '1', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (32, 802001, 801000, null, to_date('27-12-2016 15:04:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:05:03', 'dd-mm-yyyy hh24:mi:ss'), 'A111017', '�ϴ���ѡ��ͷ��', 130001, 254001, 251005, '238003', '[HC]�ϴ��˺�ѡ��[C]��ͷ��', '[HC]�ϴ��˺�ѡ��[C]��ͷ��', 'ͷ���ϴ�', 'ͷ���ϴ�', 'ͷ���ϴ�', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (33, 802001, 801000, null, to_date('27-12-2016 15:05:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:05:55', 'dd-mm-yyyy hh24:mi:ss'), 'A111018', 'ɾ����ѡ��ͷ��', 130001, 254001, 251005, '238003', '[HC]ɾ���˺�ѡ��[C]��ͷ��', '[HC]ɾ���˺�ѡ��[C]��ͷ��', 'ͷ��ɾ��', 'ͷ��ɾ��', 'ͷ��ɾ��', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (34, 802001, 801000, null, to_date('27-12-2016 15:07:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:07:22', 'dd-mm-yyyy hh24:mi:ss'), 'A111019', '�ϴ���ѡ��ԭʼ����', 130001, 254001, 251005, '238003', '[HC]�ϴ��˺�ѡ��[C]��ԭʼ����\n', '[HC]�ϴ��˺�ѡ��[C]��ԭʼ����', 'ԭʼ�����ϴ�', 'ԭʼ�����ϴ�', 'ԭʼ�����ϴ�', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (35, 802001, 801000, null, to_date('27-12-2016 15:07:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:07:53', 'dd-mm-yyyy hh24:mi:ss'), 'A111020', 'ɾ����ѡ��ԭʼ����', 130001, 254001, 251005, '238003', '[HC]ɾ���˺�ѡ��[C]��ԭʼ����\n', '[HC]ɾ���˺�ѡ��[C]��ԭʼ����', 'ԭʼ����ɾ��', 'ԭʼ����ɾ��', 'ԭʼ����ɾ��', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (36, 802001, 801000, null, to_date('27-12-2016 15:09:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:09:12', 'dd-mm-yyyy hh24:mi:ss'), 'A111021', '�ϴ���ѡ����������', 130001, 254001, 251005, '238003', '[HC]�ϴ��˺�ѡ��[C]������������[DETAIL=������]��', '[HC]�ϴ��˺�ѡ��[C]������������[DETAIL=������]��', '���������ϴ���[DETAIL=������]��', '���������ϴ���[DETAIL=������]��', '���������ϴ���[DETAIL=������]��', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (37, 802001, 801000, null, to_date('27-12-2016 15:09:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:12:59', 'dd-mm-yyyy hh24:mi:ss'), 'A111022', 'ɾ����ѡ����������', 130001, 254001, 251005, '238002,238003', '[HC]ɾ���˺�ѡ��[C]������������[DETAIL=������]��', '[HC]ɾ���˺�ѡ��[C]������������[DETAIL=������]��', '��������ɾ����[DETAIL=������]��', '��������ɾ����[DETAIL=������]��', '��������ɾ����[DETAIL=������]��', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (38, 802001, 801000, null, to_date('27-12-2016 15:43:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:43:09', 'dd-mm-yyyy hh24:mi:ss'), 'A111023', '��ѡ�˼���/��������������', 130001, 254001, 251005, '238002,238003', '[HC]�����˺�ѡ��[C]�ļ���/��������', '[HC]�����˺�ѡ��[C]�ļ���/��������', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (39, 802001, 801000, null, to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:44:31', 'dd-mm-yyyy hh24:mi:ss'), 'A111024', '��ѡ�˼���/����������ת��', 130001, 254001, 251005, '238002,238003', '[HC]ת���˺�ѡ��[C]�ļ���/����������[DETAIL=����]', '[HC]ת���˺�ѡ��[C]�ļ���/����������[DETAIL=����]', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
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
values (46, 802001, 801000, null, to_date('27-12-2016 15:49:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:49:29', 'dd-mm-yyyy hh24:mi:ss'), 'A112001', '��ѡ���뾫ѡ', 130001, 254001, 251003, '238010', '��ѡ��[C]�����뾫ѡ', '��ѡ��[C]�����뾫ѡ', '���뾫ѡ', '���뾫ѡ', '���뾫ѡ', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (47, 802001, 801000, null, to_date('27-12-2016 15:49:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:50:28', 'dd-mm-yyyy hh24:mi:ss'), 'A112002', '��ѡ���Ƴ���ѡ', 130001, 254001, 251003, '238010', '��ѡ��[C]���Ƴ���ѡ', '��ѡ��[C]���Ƴ���ѡ', '�Ƴ���ѡ', '�Ƴ���ѡ', '�Ƴ���ѡ', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (48, 802001, 801000, null, to_date('27-12-2016 15:55:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:55:18', 'dd-mm-yyyy hh24:mi:ss'), 'A112003', '��ѡ�˱�����', 130001, 254001, 251003, '238003,238010', '��ѡ��[C]��[HC]����[DETAIL=��չ��ԭ��]', '��ѡ��[C]��[HC]����[DETAIL=��չ��ԭ��]', '��ѡ��״̬��Ϊ������', '��ѡ��״̬��Ϊ������', '��ѡ��״̬��Ϊ������', '1', '1', '1', '0', '0', '1', null, null, '1', '1', '��ѡ��[C]������', '0', null, '1', '��ѡ��[C]������', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (49, 802001, 801000, null, to_date('27-12-2016 15:55:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 15:57:00', 'dd-mm-yyyy hh24:mi:ss'), 'A112004', '��ѡ�˱�����', 130001, 254001, 251003, '238003', '��ѡ��[C]��[HC]����', '��ѡ��[C]��[HC]����', '��ѡ��״̬��Ϊ������', '��ѡ��״̬��Ϊ������', '��ѡ��״̬��Ϊ������', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (50, 802001, 801000, null, to_date('27-12-2016 16:02:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 16:02:09', 'dd-mm-yyyy hh24:mi:ss'), 'A112005', '��ѡ�˱�����', 130001, 254001, 251003, '238010', '��ѡ�˱�����', '��ѡ�˱�����', '��ѡ��״̬��Ϊ������', '��ѡ��״̬��Ϊ������', '��ѡ��״̬��Ϊ������', '1', '1', '1', '0', '0', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (51, 802001, 801000, null, to_date('27-12-2016 16:04:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 16:04:20', 'dd-mm-yyyy hh24:mi:ss'), 'A112006', '��ѡ�˱��ͷ�', 130001, 254001, 251003, '238003,238010', '��ѡ��[C]��[HC]�ͷŽ���[DETAIL=��չ��ԭ��]', '��ѡ��[C]��[HC]�ͷŽ���[DETAIL=��չ��ԭ��]', '��ѡ��״̬��Ϊ���ͷ�', '��ѡ��״̬��Ϊ���ͷ�', '��ѡ��״̬��Ϊ���ͷ�', '1', '1', '1', '0', '0', '0', null, null, '1', '1', '��ѡ��[C]���ͷ�', '0', null, '1', '��ѡ��[C]���ͷ�', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (52, 802001, 801000, null, to_date('27-12-2016 16:07:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 16:10:32', 'dd-mm-yyyy hh24:mi:ss'), 'A112007', '��ѡ������ACE������', 130001, 254001, 251003, '238010', '��ѡ��[C]������ACE������[DETAIL=��չ��ԭ��]', '��ѡ��[C]������ACE������[DETAIL=��չ��ԭ��]', '��ѡ��״̬��ΪACE������', '��ѡ��״̬��ΪACE������', '��ѡ��״̬��ΪACE������', '1', '1', '1', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '��ѡ��״̬��ΪACE������', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (53, 802001, 801000, null, to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-12-2016 16:10:18', 'dd-mm-yyyy hh24:mi:ss'), 'A112008', '��ѡ���Ƴ�ACE������', 130001, 254001, 251001, '238010', '��ѡ��[C]���Ƴ�ACE������', '��ѡ��[C]���Ƴ�ACE������', null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
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
values (70, 802001, 801000, null, to_date('27-12-2016 23:20:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:34:31', 'dd-mm-yyyy hh24:mi:ss'), 'A330003', '��ѡ������ͨ��', 130001, 254001, 251004, '238002,238003', '��ѡ��[C]��[IVN]������ͨ��', '��ѡ��[C]��[IVN]������ͨ��', '��[IVN������ͨ�� | [HR��˾][JOB]', '��[IVN������ͨ�� | [HR��˾][JOB]', '��[IVN������ͨ�� | [HR��˾][JOB]', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255000, '0', '0', null, null, 244007, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (77, 802001, 801000, null, to_date('28-12-2016 06:48:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:35:05', 'dd-mm-yyyy hh24:mi:ss'), 'A330046', '��ѡ�˾ܾ�Offer', 130001, 254001, 251004, '238003', '��ѡ��[C]�ܾ���[HR��˾][JOB]��Offer', '��ѡ��[C]�ܾ���[HR��˾][JOB]��Offer', '�ܾ�Offer | [HR��˾][JOB]', '�ܾ�Offer | [HR��˾][JOB]', '�ܾ�Offer | [HR��˾][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '0', null, '1', '��ѡ��[C]�ܾ���Offer', '0', null, 0, null, 255002, '0', '0', null, null, 245041, '�ܾ�Offer', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (78, 802001, 801000, null, to_date('28-12-2016 06:48:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:35:23', 'dd-mm-yyyy hh24:mi:ss'), 'A330007', '��ѡ����ְ', 130001, 254001, 251004, '238002,238003', '��ѡ��[C]��ְ[HR��˾][JOB]', '��ѡ��[C]��ְ[HR��˾][JOB]', '��ְ | [HR��˾][JOB]', '��ְ | [HR��˾][JOB]', '��ְ | [HR��˾][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '1', '��ѡ��[C]��ְ[HR��˾][JOB]', '1', '��ѡ��[C]��ְ[HR��˾][JOB]', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, 244023, '����ְ', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (81, 802001, 801000, null, to_date('28-12-2016 06:57:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:35:54', 'dd-mm-yyyy hh24:mi:ss'), 'A330444', '������ֹ', 130001, 254001, 251004, '238003', '[I]��ֹ�˺�ѡ��[C]��[HR��˾]������[DETAIL=��չ��ԭ��]', '[I]��ֹ�˺�ѡ��[C]��[HR��˾]������[DETAIL=��չ��ԭ��]', '������ֹ | [HR��˾][DETAIL=��չ��ԭ��]', '������ֹ | [HR��˾][DETAIL=��չ��ԭ��]', '������ֹ | [HR��˾][DETAIL=��չ��ԭ��]', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, 245444, '�ر�', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (82, 802001, 801000, null, to_date('28-12-2016 07:04:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:36:16', 'dd-mm-yyyy hh24:mi:ss'), 'A550001', '��Ʊ', 130001, 254001, 251001, '238009', '[I]��Ʊ����ѡ��[C]��ְ[HR��˾][DETAIL=��չ������]', '[I]��Ʊ����ѡ��[C]��ְ[HR��˾][DETAIL=��չ������]', '�����Ʊ��¼', '�����Ʊ��¼', null, '1', '1', '1', '1', '0', '0', null, null, '1', '0', null, '0', null, '1', '[MODE=�����ʾ]', '1', '[MODE=�����ʾ]', '0', null, 0, null, 255001, '0', '0', null, null, 233002, '�ѿ�Ʊ', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (83, 802001, 801000, null, to_date('28-12-2016 07:05:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:36:31', 'dd-mm-yyyy hh24:mi:ss'), 'A550002', '���ƽ̨', 130001, 254001, 251004, '238002', '[HR��˾]���ƽ̨����ѡ��[C] | [JOB]', '[HR��˾]���ƽ̨����ѡ��[C] | [JOB]', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '0', null, '1', '[MODE=�����ʾ]', '1', '[MODE=�����ʾ]', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, 233003, '�Ѹ��ƽ̨', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (79, 802001, 801000, null, to_date('28-12-2016 06:48:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:38:30', 'dd-mm-yyyy hh24:mi:ss'), 'A330047', '��ѡ��δ��ְ', 130001, 254001, 251004, '238002,238003', '��ѡ��[C]δ��ְ[HR��˾][JOB]', '��ѡ��[C]δ��ְ[HR��˾][JOB]', 'δ��ְ | [HR��˾][JOB]', 'δ��ְ | [HR��˾][JOB]', 'δ��ְ | [HR��˾][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '��ѡ��[C]δ��ְ[HR��˾][JOB]', '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 245040, '<span class="red">δ��ְ</span>', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (71, 802001, 801000, null, to_date('27-12-2016 23:22:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:33:49', 'dd-mm-yyyy hh24:mi:ss'), 'A330043', '��ѡ������δͨ��', 130001, 254001, 251004, '238002,238003', '��ѡ��[C]��[IVN]������û��[DETAIL=��չ��ԭ��]', '��ѡ��[C]��[IVN]������û��[DETAIL=��չ��ԭ��]', '��[IVN������ûͨ�� | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN������ûͨ�� | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN������ûͨ�� | [HR��˾][JOB][DETAIL=��չ������]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '��ѡ��[C]����ûͨ��', '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 245043, '���� <span class=', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (72, 802001, 801000, null, to_date('28-12-2016 06:41:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 17:59:01', 'dd-mm-yyyy hh24:mi:ss'), 'A330004', 'ȷ����һ������', 130001, 254001, 251004, '238002,238003', '[HR��˾][HR]ȷ�Ϻ�ѡ��[C]������һ������', '[HR��˾][HR]ȷ�Ϻ�ѡ��[C]������һ������', 'ȷ����һ������ | [HR��˾][HR]', 'ȷ����һ������ | [HR��˾][HR]', 'ȷ����һ������ | [HR��˾][HR]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '[HR��˾][HR]ȷ�Ϻ�ѡ��[C]������һ������', '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 244006, '������һ������', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (84, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:36:39', 'dd-mm-yyyy hh24:mi:ss'), 'A550003', '���������', 130001, 254001, 251004, '238002', '[HR��˾]�������[HC]����ѡ��[C] | [JOB]', '[HR��˾]�������[HC]����ѡ��[C] | [JOB]', null, null, null, '1', '1', '0', '0', '0', '1', null, null, '1', '0', null, '1', '[MODE=�����ʾ]', '1', '[MODE=�����ʾ]', '0', null, '0', null, 0, null, 255001, '0', '0', null, null, 233003, '�Ѹ�������˻�', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (76, 802001, 801000, null, to_date('28-12-2016 06:48:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:37:00', 'dd-mm-yyyy hh24:mi:ss'), 'A330006', '��ѡ�˽���Offer', 130001, 254001, 251004, '238003', '��ѡ��[C]������[HR��˾][JOB]��Offer', '��ѡ��[C]������[HR��˾][JOB]��Offer', '����Offer | [HR��˾][JOB]', '����Offer | [HR��˾][JOB]', '����Offer | [HR��˾][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '0', null, '1', '��ѡ��[C]������Offer', '0', null, 0, null, 255004, '1', '1', null, null, 244023, 'ͬ����ְ', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (75, 802001, 801000, null, to_date('28-12-2016 06:46:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:44:15', 'dd-mm-yyyy hh24:mi:ss'), 'A330025', '�����ѡ��Offer', 130001, 254001, 251004, '238002,238003', '[I]����˺�ѡ��[C]��Offer[DETAIL=��չ������]', '[I]����˺�ѡ��[C]��Offer[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255000, '0', '1', null, null, 244020, 'Offer�ѱ��', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (80, 802001, 801000, null, to_date('28-12-2016 06:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:39:18', 'dd-mm-yyyy hh24:mi:ss'), 'A330027', '��ѡ����ְ', 130001, 254001, 251004, '238002,238003', '��ѡ����ְ[HR��˾][JOB]', '��ѡ����ְ[HR��˾][JOB]', '��ְ | [HR��˾][JOB]', '��ְ | [HR��˾][JOB]', '��ְ | [HR��˾][JOB]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '1', '��ѡ����ְ[HR��˾][JOB]', '1', '��ѡ����ְ[HR��˾][JOB]', '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 245002, '<span class="red">����ְ</span>', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (91, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:24:49', 'dd-mm-yyyy hh24:mi:ss'), 'A440001', '�������Է�����ʱ', 130001, 254001, 251004, '238003', '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '�������Գ�ʱ����', '�������Գ�ʱ����', '1', '1', '1', '0', '0', '0', null, null, '1', '1', '[HC]��[HR��˾]�����ѡ��[C]���Է�����ʱ', '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, '������ʱ��ϵͳ�Զ��ܾ�', 245400, '����������', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (92, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 22:49:16', 'dd-mm-yyyy hh24:mi:ss'), 'A440002', '���Ե�ʱ����', 130001, 254001, 251004, '238003', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '���Խ���', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 244006, '���Խ���', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (85, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:55:48', 'dd-mm-yyyy hh24:mi:ss'), 'A330143', '��עԭ������δͨ����', 130001, 254001, 251004, '238003', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '��עԭ������δͨ����', '1', '1', '1', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255000, '0', '0', null, null, 245043, '���� <span class="red">δͨ��</span>', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (64, 802001, 801000, null, to_date('27-12-2016 23:03:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 23:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'A330000', '��ѡ�˱���������', 130001, 254001, 251004, '238002', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '[HR��˾][HR]�����ѡ��[C]����[DETAIL=ְλ]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '�������� | [HR��˾][HR]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '[HR��˾][HR]�����ѡ��[C]����[DEDAIL=ְλ]', '0', null, '0', null, 24, '440001', 255004, '0', '0', null, '[LIMITTIME] �ֺ��Զ��ܾ�', 244001, '����������', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (86, 802001, 801000, null, to_date('28-12-2016 07:07:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:10:55', 'dd-mm-yyyy hh24:mi:ss'), 'A55----', 'xxxxxx', 130001, 254001, 251004, '238002', null, null, null, null, null, '1', '1', '0', '0', '0', '0', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255001, '0', '0', null, null, null, null, null);
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
values (62, 802001, 801000, null, to_date('27-12-2016 22:56:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 16:29:42', 'dd-mm-yyyy hh24:mi:ss'), 'A331002', '��ѡ��ȡ����ע', 130001, 254001, 251004, '238002', '[HR��˾][HR]ȡ����ע��ѡ��[C]', '[HR��˾][HR]ȡ����ע��ѡ��[C]', 'ȡ����ע | [HR��˾][HR]', 'ȡ����ע | [HR��˾][HR]', 'ȡ����ע | [HR��˾][HR]', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255000, '0', '0', null, null, 242002, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (61, 802001, 801000, null, to_date('27-12-2016 18:26:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 16:29:54', 'dd-mm-yyyy hh24:mi:ss'), 'A331001', '��ѡ�˱���ע', 130001, 254001, 251004, '238002', '[HR��˾][HR]��ע�˺�ѡ��[C]', '[HR��˾][HR]��ע�˺�ѡ��[C]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '��ע | [HR��˾][HR]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '[HR��˾][HR]��ע�˺�ѡ��[C]', '0', null, '0', null, 0, null, 255002, '0', '0', '��ѡ�˱� [HR��˾] | [HR] ��ע��', null, 242001, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (63, 802001, 801000, null, to_date('27-12-2016 23:00:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 16:30:30', 'dd-mm-yyyy hh24:mi:ss'), 'A331004', '��ѡ�˱����������', 130001, 254001, 251004, '238002', '[HR��˾][HR]����ѡ��[C]���������', '[HR��˾][HR]����ѡ��[C]���������', '��������� | [HR��˾][HR]', '��������� | [HR��˾][HR]', '��������� | [HR��˾][HR]', '1', '1', '0', '0', '0', '1', null, null, '1', '0', null, '0', null, '1', '[HR��˾][HR]����ѡ��[C]���������', '0', null, '0', null, 0, null, 255001, '0', '0', '��ѡ�˱����������', null, 242004, null, null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (66, 802001, 801000, null, to_date('27-12-2016 23:09:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 16:43:43', 'dd-mm-yyyy hh24:mi:ss'), 'A330001', '��ѡ��ͬ������', 130001, 254001, 251003, '238003', '��ѡ��[C]ͬ������[HR��˾][JOB]', '��ѡ��[C]ͬ������[HR��˾][JOB]', 'ͬ������ | [HR��˾]', 'ͬ������ | [HR��˾]', 'ͬ������ | [HR��˾]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '0', null, '1', '��ѡ��[C]ͬ������', '0', null, 0, null, 255003, '0', '1', null, null, 244006, 'ͬ������', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (68, 802001, 801000, null, to_date('27-12-2016 23:15:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 20:21:52', 'dd-mm-yyyy hh24:mi:ss'), 'A330002', '���ź�ѡ������', 130001, 254001, 251004, '238002,238003', '[I]�����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '[I]�����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '��[IVN]������ | [HR��˾][JOB][DETAIL=��չ������]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '1', '[NOTICETIME][MODE=��������]', '1', '[NOTICETIME][MODE=��������]', '0', null, 0, null, 255001, '1', '0', '[DETAIL=���Եص�]', null, 244006, '����', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (73, 802001, 801000, null, to_date('28-12-2016 06:45:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:20:45', 'dd-mm-yyyy hh24:mi:ss'), 'A330005', 'Offer', 130001, 254001, 251004, '238002,238003', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '[HR��˾]ȷ�ϸ���ѡ�˷�Offer', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 244020, '��Offer', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (69, 802001, 801000, null, to_date('27-12-2016 23:18:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 20:44:47', 'dd-mm-yyyy hh24:mi:ss'), 'A330022', '�����ѡ������', 130001, 254001, 251004, '238002,238003', '[OPERATOR]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '[OPERATOR]����˺�ѡ��[C]�ĵ�[IVN]������[DETAIL=��չ������]', '����֮ǰ', '����֮ǰ', '����֮ǰ', '1', '1', '0', '0', '0', '0', null, null, '1', '0', null, '0', null, '1', '[NOTICETIME][MODE=��������]', '1', '[NOTICETIME][MODE=��������]', '0', null, 0, null, 255001, '1', '0', '[DETAIL=���Եص�]', null, 244006, '����', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (74, 802001, 801000, null, to_date('28-12-2016 06:45:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:21:34', 'dd-mm-yyyy hh24:mi:ss'), 'A330015', '�ϴ���ѡ��Offer', 130001, 254001, 251004, '238002,238003', '[I]�ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '[I]�ϴ��˺�ѡ��[C]��Offer[DETAIL=��չ������]', '��[N]������ | [HR��˾][JOB][DETAIL=��չ������]', '��[N]������ | [HR��˾][JOB][DETAIL=��չ������]', '��[N]������ | [HR��˾][JOB][DETAIL=��չ������]', '1', '1', '1', '1', '1', '1', null, null, '0', '0', null, '0', null, '0', null, '0', null, '0', null, 0, null, 255003, '0', '1', null, null, 244020, 'Offer���ϴ�', null);
insert into A_ACTION (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (67, 802001, 801000, null, to_date('27-12-2016 23:11:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 19:19:29', 'dd-mm-yyyy hh24:mi:ss'), 'A330041', '��ѡ�˾ܾ�����', 130001, 254001, 251004, '238003', '��ѡ��[C]�ܾ�����[HR��˾][JOB]', '��ѡ��[C]�ܾ�����[HR��˾][JOB]', '�ܾ����� | [HR��˾]', '�ܾ����� | [HR��˾]', '�ܾ����� | [HR��˾]', '1', '1', '1', '1', '1', '1', null, null, '1', '0', null, '0', null, '0', null, '1', '��ѡ��[C]�ܾ�����', '0', null, 0, null, 255000, '0', '0', null, null, 245042, '�ܾ�����', null);
commit;
prompt 92 records loaded
prompt Loading A_BANK...
prompt Table is empty
prompt Loading A_COMPANY...
prompt Table is empty
prompt Loading A_HCINTERVIEW_QA...
prompt Table is empty
prompt Loading A_INDUSTRY...
prompt Table is empty
prompt Loading A_JOB...
prompt Table is empty
prompt Loading A_PROCESS...
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (39, 802001, 801000, '331002 331002 331002 ȡ����ע quxiaoguanzhu qxgz ', to_date('24-12-2016 18:18:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:19:17', 'dd-mm-yyyy hh24:mi:ss'), '331002', 'ȡ����ע', 252002, 'A331002', 130001, null, null, null, null, null, null, null, '242001', null, null, null, null, null, null, null, null, 242002, null, null, 'ȡ����ע', 'HR_cancelCollect', '���̱����ʽ��ȡ����ע', '����˵����ʽ��ȡ����ע', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (19, 802001, 801000, '330143 330143 330143 ��עԭ������δͨ���� beizhuyuanyin��mianshiweitongguo�� bzyy��mswtg�� ', to_date('24-12-2016 18:18:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:02:24', 'dd-mm-yyyy hh24:mi:ss'), '330143', '��עԭ������δͨ����', 252001, 'A330143', 130001, null, null, null, null, '244099', '245043', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (12, 802001, 801000, '330025 330025 330025 Offer��� Offerbiangeng Offerbg ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:12:38', 'dd-mm-yyyy hh24:mi:ss'), '330025', 'Offer���', 252001, 'A330025', 130001, null, '240090', null, '243001', '244021', null, null, null, null, null, null, null, null, 244021, null, null, null, null, null, 'Offer���', 'HR_uploadOffer', '���̱����ʽ��Offer���', '����˵����ʽ��Offer���', '[DETAIL=Offer�ļ�]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (14, 802001, 801000, '330046 330046 330046 ��ѡ�˾ܾ�Offer houxuanrenjujueOffer hxrjjOffer ', to_date('25-12-2016 17:45:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:54:32', 'dd-mm-yyyy hh24:mi:ss'), '330046', '��ѡ�˾ܾ�Offer', 252001, 'A330046', 130001, null, '240090', null, '243001', '244021', null, null, null, null, null, null, null, 243009, 244099, 245041, null, null, null, null, null, null, '���̱����ʽ����ѡ�˾ܾ�Offer', '����˵����ʽ����ѡ�˾ܾ�Offer', '[DETAIL=ԭ��]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (46, 802001, 801000, '440001 440001 440001 �������Գ�ʱ���� yaoqingmianshichaoshichuli yqmscscl ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:02:40', 'dd-mm-yyyy hh24:mi:ss'), '440001', '�������Գ�ʱ����', 252001, 'A440001', 130001, null, null, null, '243001', '244001', null, null, null, null, null, null, null, 243009, 244099, 245042, null, null, null, null, null, null, '���̱����ʽ��������ʱ��ϵͳ�Զ��ܾ�', '����˵����ʽ��������ʱ��ϵͳ�Զ��ܾ�', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (47, 802001, 801000, '440002 440002 440002 ���Ե�ʱ���� mianshidaoshichuli msdscl ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-01-2017 15:02:46', 'dd-mm-yyyy hh24:mi:ss'), '440002', '���Ե�ʱ����', 252001, 'A440002', 130001, null, null, null, '243001', '244006', null, null, null, null, null, null, null, null, null, 245003, null, null, null, null, null, null, '���̱����ʽ�����Խ���', '����˵����ʽ�����Խ���', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (41, 802001, 801000, '550001 550001 550001 ��Ʊ kaipiao kp ', to_date('28-12-2016 07:02:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:02:02', 'dd-mm-yyyy hh24:mi:ss'), '550001', '��Ʊ', 252002, 'A550001', 130001, null, '240100', null, null, null, null, '233001', null, null, null, null, null, null, null, null, 233002, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (7, 802001, 801000, '330043 330043 330043 ����ûͨ�� mianshimeitongguo msmtg ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:18:47', 'dd-mm-yyyy hh24:mi:ss'), '330043', '����ûͨ��', 252001, 'A330043', 130001, null, '240090', null, '243001', '244006', '245003', null, null, null, null, null, null, 243009, 244099, 245043, null, null, null, null, null, null, '���̱����ʽ������ûͨ��', '����˵����ʽ������ûͨ��', '[DETAIL=ԭ��]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (2, 802001, 801000, '330001 330001 330001 ��ѡ��ͬ������ houxuanrentongyimianshi hxrtyms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 20:14:25', 'dd-mm-yyyy hh24:mi:ss'), '330001', '��ѡ��ͬ������', 252001, 'A330001', 130001, null, '240090', null, '243001', '244001', null, null, null, null, null, null, null, null, 244005, null, null, null, null, null, null, null, '���̱����ʽ����ѡ��ͬ������', '����˵����ʽ����ѡ��ͬ������', null, '1', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (3, 802001, 801000, '330041 330041 330041 ��ѡ�˾ܾ����� houxuanrenjujuemianshi hxrjjms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 20:15:09', 'dd-mm-yyyy hh24:mi:ss'), '330041', '��ѡ�˾ܾ�����', 252001, 'A330041', 130001, null, '240090', null, '243001', '244001,244005', null, null, null, null, null, null, null, 243009, 244099, 245042, null, null, null, null, null, null, '���̱����ʽ����ѡ�˾ܾ�����', '����˵����ʽ����ѡ�˾ܾ�����', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (4, 802001, 801000, '330002 330002 330002 �������� anpaimianshi apms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 20:15:20', 'dd-mm-yyyy hh24:mi:ss'), '330002', '��������', 252001, 'A330002', 130001, null, '240090', null, '243001', '244005', null, null, null, null, null, null, null, null, 244006, null, null, null, null, null, '��������', 'HR_addIV', '���̱����ʽ����������', '����˵����ʽ����������', '<span class="grey">�����ߣ�</span>[HR]<br><span class="grey">����ְλ��</span>[JOB]<br><span class="grey">����ʱ�䣺</span>[NOTICETIME]<br><span class="grey">���Եص㣺</span>[DETAIL=���Եص�]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (5, 802001, 801000, '330022 330022 330022 ���Ա�� mianshibiangeng msbg ', to_date('25-12-2016 17:15:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:15:43', 'dd-mm-yyyy hh24:mi:ss'), '330022', '���Ա��', 252001, 'A330022', 130001, null, '240090', null, '243001', '244006', '!245003', null, null, null, null, null, null, null, 244006, null, null, null, null, null, '���Ա��', 'HR_editIV', '���̱����ʽ�����Ա��', '����˵����ʽ�����Ա��', '<span class="grey">�����ߣ�</span>[HR]<br><span class="grey">����ְλ��</span>[JOB]<br><span class="grey">����ʱ�䣺</span>[NOTICETIME]<br><span class="grey">���Եص㣺</span>[DETAIL=���Եص�]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (10, 802001, 801000, '330005 330005 330005 Offer Offer Offer ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:20:13', 'dd-mm-yyyy hh24:mi:ss'), '330005', 'Offer', 252001, 'A330005', 130001, null, '240090', null, '243001', '244007,244006', '245003,245000', null, null, null, null, null, null, null, 244020, 245000, null, null, null, null, null, null, '���̱����ʽ�����Offer', '����˵����ʽ�����Offer', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (8, 802001, 801000, '330044 330044 330044 ��ѡ��δ���� houxuanrenweimianshi hxrwms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:41:35', 'dd-mm-yyyy hh24:mi:ss'), '330044', '��ѡ��δ����', 252001, 'A330044', 130001, null, '240090', null, '243001', '244006', null, null, null, null, null, null, null, 243009, 244099, 245044, null, null, null, null, null, null, '���̱����ʽ����ѡ��δ����', '����˵����ʽ����ѡ��δ����', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (13, 802001, 801000, '330006 330006 330006 ��ѡ�˽���Offer houxuanrenjieshouOffer hxrjsOffer ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 15:54:15', 'dd-mm-yyyy hh24:mi:ss'), '330006', '��ѡ�˽���Offer', 252001, 'A330006', 130001, null, '240090', null, '243001', '244021', null, null, null, null, null, null, null, null, 244022, null, null, null, null, null, null, null, '���̱����ʽ����ѡ�˽���Offer', '����˵����ʽ����ѡ�˽���Offer', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (6, 802001, 801000, '330003 330003 330003 ����ͨ�� mianshitongguo mstg ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 11:18:31', 'dd-mm-yyyy hh24:mi:ss'), '330003', '����ͨ��', 252001, 'A330003', 130001, null, '240090', null, '243001', '244006', '245003', null, null, null, null, null, null, null, 244007, 245000, null, null, null, null, null, null, '���̱����ʽ������ͨ��', '����˵����ʽ������ͨ��', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (9, 802001, 801000, '330004 330004 330004 ȷ����һ������ querenxiayilunmianshi qrxylms ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 14:31:58', 'dd-mm-yyyy hh24:mi:ss'), '330004', 'ȷ����һ������', 252001, 'A330004', 130001, null, '240090', null, '243001', '244007,244006', null, null, null, null, null, null, null, null, 244005, null, null, null, null, null, null, null, '���̱����ʽ��ȷ����һ������', '����˵����ʽ��ȷ����һ������', null, '1', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (15, 802001, 801000, '330007 330007 330007 ��ְ ruzhi rz ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:18:44', 'dd-mm-yyyy hh24:mi:ss'), '330007', '��ְ', 252001, 'A330007', 130001, null, '240090', null, '243001', '244022', null, null, null, null, null, 240100, null, 243009, 244022, 245001, 233001, null, null, null, 'ȷ����ְ', 'HR_entry', '���̱����ʽ����ѡ����ְ', '����˵����ʽ����ѡ����ְ', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (16, 802001, 801000, '330047 330047 330047 û����ְ meiyouruzhi myrz ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-01-2017 16:18:57', 'dd-mm-yyyy hh24:mi:ss'), '330047', 'û����ְ', 252001, 'A330047', 130001, null, '240090', null, '243001', '244022', null, null, null, null, null, null, null, 243009, 244099, 245040, null, null, null, null, null, null, '���̱����ʽ����ѡ��û����ְ', '����˵����ʽ����ѡ��û����ְ', '[DETAIL=ԭ��]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (17, 802001, 801000, '330027 330027 330027 ȷ����ְ querenlizhi qrlz ', to_date('25-12-2016 17:28:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:44:31', 'dd-mm-yyyy hh24:mi:ss'), '330027', 'ȷ����ְ', 252001, 'A330027', 130001, null, '240100', null, null, '244022', null, null, null, null, null, 240090, null, null, null, 245002, null, null, null, null, 'ȷ����ְ', 'HC_setDimission', '���̱����ʽ��ȷ����ְ', '����˵����ʽ��ȷ����ְ', '[DETAIL=ԭ��]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (20, 802001, 801000, '33---3 33---3 33---3 xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 09:42:41', 'dd-mm-yyyy hh24:mi:ss'), '33---3', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (21, 802001, 801000, '33---3 33---3 33---3 xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 09:42:41', 'dd-mm-yyyy hh24:mi:ss'), '33---4', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (22, 802001, 801000, '33---3 33---3 33---3 xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 09:42:41', 'dd-mm-yyyy hh24:mi:ss'), '33---5', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (24, 802001, 801000, '220001 220001 220001 ������� shenqingruku sqrk ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:47:02', 'dd-mm-yyyy hh24:mi:ss'), '220001', '�������', 252003, 'A220001', 130001, null, '240000', '!241001', null, null, null, null, null, null, '241001', null, 241001, null, null, null, null, null, null, null, '�������', 'HC_applyActive', '���̱����ʽ���������', '����˵����ʽ���������', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (25, 802001, 801000, '220041 220041 220041 ȡ����� quxiaoruku qxrk ', to_date('25-12-2016 16:38:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:52:00', 'dd-mm-yyyy hh24:mi:ss'), '220041', 'ȡ�����', 252003, 'A220041', 130001, null, '240000', '241001', null, null, null, null, null, null, null, 240000, 241000, null, null, null, null, null, null, null, 'ȡ�����', 'HC_cancelActive', '���̱����ʽ��ȡ�����', '����˵����ʽ��ȡ�����', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (26, 802001, 801000, '220002 220002 220002 ������ͨ�� rukushenhetongguo rkshtg ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:55:27', 'dd-mm-yyyy hh24:mi:ss'), '220002', '������ͨ��', 252003, 'A220002', 130001, null, '240000', '241001', null, null, null, null, null, null, '241022', 240020, 241021, null, null, null, null, null, null, null, '������', 'BS_checkActiveApply', '���̱����ʽ��������ͨ��', '����˵����ʽ��������ͨ��', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (27, 802001, 801000, '220042 220042 220042 ������δͨ�� rukushenheweitongguo rkshwtg ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:55:15', 'dd-mm-yyyy hh24:mi:ss'), '220042', '������δͨ��', 252003, 'A220042', 130001, null, '240000', '241001', null, null, null, null, null, null, '241022', 240000, 241005, null, null, null, null, null, null, null, '����������', 'BS_checkActiveApply', '����˵����ʽ��������δͨ��', '����˵����ʽ��������δͨ��', '[DETAIL=ԭ��]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (28, 802001, 801000, '220003 220003 220003 ���Ź������� anpaiguwenmianshi apgwms ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:57:20', 'dd-mm-yyyy hh24:mi:ss'), '220003', '���Ź�������', 252003, 'A220003', 130001, null, '240020', '241021', null, null, null, null, null, null, '241022', null, 241022, null, null, null, null, null, null, null, '��������', 'HC_addIV', '����˵����ʽ�����Ź�������', '����˵����ʽ�����Ź�������', '<span class="grey">���Թ��ʣ�</span>[HC]<br><span class="grey">����ʱ�䣺</span>[NOTICETIME]<br><span class="grey">���Եص㣺</span>[DETAIL=���Եص�]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (29, 802001, 801000, '220004 220004 220004 �༭�������� bianjiguwenmianping bjgwmp ', to_date('25-12-2016 16:40:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:58:31', 'dd-mm-yyyy hh24:mi:ss'), '220004', '�༭��������', 252003, 'A220004', 130001, null, '240020', '241022', null, null, null, null, null, null, null, null, 241023, null, null, null, null, null, null, null, '�༭��������', 'HC_editComment', '���̱����ʽ���༭��������', '����˵����ʽ���༭��������', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (30, 802001, 801000, '220005 220005 220005 �ύ�������� tijiaoguwenmianping tjgwmp ', to_date('25-12-2016 16:40:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 21:59:46', 'dd-mm-yyyy hh24:mi:ss'), '220005', '�ύ��������', 252003, 'A220005', 130001, null, '240020', '241023', null, null, null, null, null, null, '241024', null, 241024, null, null, null, null, null, null, null, '�ύ���', 'HC_commitComment', '���̱����ʽ���ύ��˹�������', '����˵����ʽ���ύ��˹�������', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (31, 802001, 801000, '220006 220006 220006 ������������ guwenmianpingshangxian gwmpsx ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:01:20', 'dd-mm-yyyy hh24:mi:ss'), '220006', '������������', 252003, 'A220006', 130001, null, '240020', '241024', null, null, null, null, null, null, '241022', 240090, 241029, null, null, null, null, null, null, null, '��˹�������', 'BS_checkCommentApply', '���̱����ʽ��������������', '����˵����ʽ��������������', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (32, 802001, 801000, '220046 220046 220046 ��������δͨ�� guwenmianpingweitongguo gwmpwtg ', to_date('25-12-2016 16:39:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:02:28', 'dd-mm-yyyy hh24:mi:ss'), '220046', '��������δͨ��', 252003, 'A220046', 130001, null, '240020', '241024', null, null, null, null, null, null, '241022', 240020, 241025, null, null, null, null, null, null, null, '��˹�������', 'BS_checkCommentApply', '���̱����ʽ����������δͨ��', '����˵����ʽ����������δͨ��', '[DETAIL=ԭ��]', '0', null, null, null, null, null, null, null, null, null, null);
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
values (40, 802001, 801000, '331004 331004 331004 ��������� jiaruheimingdan jrhmd ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:20:30', 'dd-mm-yyyy hh24:mi:ss'), '331004', '���������', 252002, 'A331004', 130001, null, null, null, null, null, null, null, '!242004', null, null, null, null, null, null, null, null, 242004, null, null, '���������', 'HR_addBlackList', '���̱����ʽ�����������', '����˵����ʽ�����������', '[DETAIL=ԭ��]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (23, 802001, 801000, '110001 110001 110001 ������ѡ�� xinzenghouxuanren xzhxr ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-12-2016 07:16:50', 'dd-mm-yyyy hh24:mi:ss'), '110001', '������ѡ��', 252003, 'A110001', 130001, null, null, null, null, null, null, null, null, null, '241001', 240000, null, null, null, null, null, null, null, null, null, null, '���̱����ʽ��������ѡ��', '����˵����ʽ��������ѡ��', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (18, 802001, 801000, '330444 330444 330444 �ر����� guanbiliucheng gblc ', to_date('25-12-2016 17:15:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-01-2017 08:22:16', 'dd-mm-yyyy hh24:mi:ss'), '330444', '�ر�����', 252001, 'A330444', 130001, null, null, null, '243001', null, null, null, null, null, null, null, null, 243009, 244099, 245444, null, null, null, null, '��������', 'HC_closeProcess', '���̱����ʽ���ر�����', '����˵����ʽ���ر�����', '[DETAIL=ԭ��]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (38, 802001, 801000, '331001 331001 331001 ��ע guanzhu gz ', to_date('24-12-2016 18:18:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2016 22:18:08', 'dd-mm-yyyy hh24:mi:ss'), '331001', '��ע', 252002, 'A331001', 130001, null, '240090', null, '!243000', null, null, null, '!242001', null, null, null, null, null, null, null, null, 242001, null, null, '��ע', 'HR_collect', '���̱����ʽ����ע', '����˵����ʽ����ע', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (1, 802001, 801000, '330000 330000 330000 �������� yaoqingmianshi yqms ', to_date('20-12-2016 14:02:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-01-2017 16:39:30', 'dd-mm-yyyy hh24:mi:ss'), '330000', '��������', 252001, 'A330000', 130001, null, '240090', null, '!243001', null, null, null, null, null, null, null, null, 243001, 244001, null, null, null, null, null, '��������', 'HR_inviteIV', '���̱����ʽ����������', '����˵����ʽ����������', null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (44, 802001, 801000, '55--- 55--- 55--- xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 22:34:03', 'dd-mm-yyyy hh24:mi:ss'), '55---', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (45, 802001, 801000, '55--- 55--- 55--- xxxx xxxx xxxx ', to_date('25-12-2016 14:54:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-01-2017 22:34:07', 'dd-mm-yyyy hh24:mi:ss'), '55---[��]', 'xxxx', 252002, null, 130001, null, null, null, null, null, null, null, '240000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (11, 802001, 801000, '330015 330015 330015 �ϴ�Offer shangchuanOffer scOffer ', to_date('20-12-2016 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-01-2017 18:12:03', 'dd-mm-yyyy hh24:mi:ss'), '330015', '�ϴ�Offer', 252001, 'A330015', 130001, null, '240090', null, '243001', '244020', null, null, null, null, null, null, null, null, 244021, null, null, null, null, null, '�ϴ�Offer', 'HR_uploadOffer', '���̱����ʽ��Offer���', '����˵����ʽ��Offer���', '[DETAIL=Offer�ļ�]', '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (43, 802001, 801000, '550003 550003 550003 ������� fukuandaoguwen fkdgw ', to_date('28-12-2016 07:02:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:56:40', 'dd-mm-yyyy hh24:mi:ss'), '550003', '�������', 252002, 'A550003', 130001, null, null, null, null, null, null, '233003', null, null, null, null, null, null, null, null, 233009, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
insert into A_PROCESS (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40)
values (42, 802001, 801000, '550002 550002 550002 ���ƽ̨ fukuandaopingtai fkdpt ', to_date('28-12-2016 07:02:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017 17:56:52', 'dd-mm-yyyy hh24:mi:ss'), '550002', '���ƽ̨', 252002, 'A550002', 130001, null, null, null, null, null, null, '233002', null, null, null, null, null, null, null, null, 233003, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null);
commit;
prompt 47 records loaded
prompt Enabling triggers for A_ACTION...
alter table A_ACTION enable all triggers;
prompt Enabling triggers for A_BANK...
alter table A_BANK enable all triggers;
prompt Enabling triggers for A_COMPANY...
alter table A_COMPANY enable all triggers;
prompt Enabling triggers for A_HCINTERVIEW_QA...
alter table A_HCINTERVIEW_QA enable all triggers;
prompt Enabling triggers for A_INDUSTRY...
alter table A_INDUSTRY enable all triggers;
prompt Enabling triggers for A_JOB...
alter table A_JOB enable all triggers;
prompt Enabling triggers for A_PROCESS...
alter table A_PROCESS enable all triggers;
set feedback on
set define on
prompt Done.
