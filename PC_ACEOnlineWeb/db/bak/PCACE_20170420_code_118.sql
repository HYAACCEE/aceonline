prompt PL/SQL Developer import file
prompt Created on 2017Äê4ÔÂ20ÈÕ by Administrator
set feedback off
set define off
prompt Dropping B_INVITECODE...
drop table B_INVITECODE cascade constraints;
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

prompt Disabling triggers for B_INVITECODE...
alter table B_INVITECODE disable all triggers;
prompt Loading B_INVITECODE...
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1, 802001, 801000, null, to_date('23-03-2017 14:22:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-03-2017 16:13:42', 'dd-mm-yyyy hh24:mi:ss'), 'AH555A220', null, null, 860, 130001, to_date('21-06-2027 14:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
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
values (1041, -1, -1, null, to_date('18-04-2017 18:11:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-04-2017 18:11:58', 'dd-mm-yyyy hh24:mi:ss'), 'A351252NNB468', null, '170418181158407010195967935542', 1, 130001, to_date('17-07-2017 18:11:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1010, -1, -1, null, to_date('12-04-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-04-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), 'A928854952728E730', null, '170412165616908010139101349091', 1, 130001, to_date('11-07-2017 16:56:16', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1020, -1, -1, null, to_date('15-04-2017 20:33:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-04-2017 20:33:32', 'dd-mm-yyyy hh24:mi:ss'), 'AP825YR797Y', null, '170415203332548010135328870510', 1, 130001, to_date('14-07-2017 20:33:32', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1040, -1, -1, null, to_date('18-04-2017 17:45:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-04-2017 17:45:31', 'dd-mm-yyyy hh24:mi:ss'), 'A526149121JQF', null, '170418174531220010199157712005', 1, 130001, to_date('17-07-2017 17:45:31', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1043, -1, -1, null, to_date('18-04-2017 21:18:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-04-2017 21:18:23', 'dd-mm-yyyy hh24:mi:ss'), 'A287584479S193357', null, '170418211823767010191874701856', 1, 130001, to_date('17-07-2017 21:18:23', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1044, -1, -1, null, to_date('19-04-2017 06:29:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-04-2017 06:29:54', 'dd-mm-yyyy hh24:mi:ss'), 'AR172K599CV', null, '170419062954611010159881209168', 1, 130001, to_date('18-07-2017 06:29:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1046, -1, -1, null, to_date('19-04-2017 06:37:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-04-2017 06:37:55', 'dd-mm-yyyy hh24:mi:ss'), 'A437685368HZY', null, '170419063755845010130757298396', 1, 130001, to_date('18-07-2017 06:37:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1000, -1, -1, null, to_date('10-04-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), 'AN728778SQ714', null, '170410115658064010130485694493', 1, 130001, to_date('09-07-2017 11:56:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1001, -1, -1, null, to_date('10-04-2017 14:23:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 14:23:57', 'dd-mm-yyyy hh24:mi:ss'), 'AV928C700OU', null, '170410142357876010131833703750', 1, 130001, to_date('09-07-2017 14:23:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1004, -1, -1, null, to_date('10-04-2017 16:36:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 16:36:25', 'dd-mm-yyyy hh24:mi:ss'), 'AK422VMGW', null, '170410163625626010114407570241', 1, 130001, to_date('09-07-2017 16:36:25', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1006, -1, -1, null, to_date('11-04-2017 15:27:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-04-2017 15:27:10', 'dd-mm-yyyy hh24:mi:ss'), 'AC424473637275S', null, '170411152710407010108941534165', 1, 130001, to_date('10-07-2017 15:27:10', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1050, -1, -1, null, to_date('20-04-2017 08:08:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-04-2017 08:08:17', 'dd-mm-yyyy hh24:mi:ss'), 'A837895521AUR', null, '170420080817704010147873903774', 1, 130001, to_date('19-07-2017 08:08:17', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1051, -1, -1, null, to_date('20-04-2017 08:21:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-04-2017 08:21:44', 'dd-mm-yyyy hh24:mi:ss'), 'AZ960ZI209935', null, '170420082144001010143813255855', 1, 130001, to_date('19-07-2017 08:21:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1002, -1, -1, null, to_date('10-04-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), 'AQ292K625860X', null, '170410145228064010126264216574', 1, 130001, to_date('09-07-2017 14:52:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1005, -1, -1, null, to_date('10-04-2017 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-04-2017 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), 'A977332508838740475', null, '170410170627532010157855902255', 1, 130001, to_date('09-07-2017 17:06:27', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1030, -1, -1, null, to_date('17-04-2017 15:52:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-04-2017 15:52:07', 'dd-mm-yyyy hh24:mi:ss'), 'AV401972M565306', null, '170417155207173010108008550047', 1, 130001, to_date('16-07-2017 15:52:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1042, -1, -1, null, to_date('18-04-2017 20:50:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-04-2017 20:50:11', 'dd-mm-yyyy hh24:mi:ss'), 'A943222950539LI', null, '170418205011157010186280436439', 1, 130001, to_date('17-07-2017 20:50:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1045, -1, -1, null, to_date('19-04-2017 06:34:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-04-2017 06:34:41', 'dd-mm-yyyy hh24:mi:ss'), 'A390623R680LF', null, '170419063441376010107736857255', 1, 130001, to_date('18-07-2017 06:34:41', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1014, -1, -1, null, to_date('13-04-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), 'AM663Z435E931', null, '170413110105642010195300919475', 1, 130001, to_date('12-07-2017 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1015, -1, -1, null, to_date('13-04-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-04-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), 'AV145567N626Y', null, '170413111046345010139437060602', 1, 130001, to_date('12-07-2017 11:10:46', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into B_INVITECODE (dataid, datasctlevel, datastatus, keyword, istdate, uptdate, c1, c2, c3, c4, c5, c6, c7, c8)
values (1021, -1, -1, null, to_date('15-04-2017 20:54:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-04-2017 20:54:39', 'dd-mm-yyyy hh24:mi:ss'), 'A590400387851VB', null, '170415205439282010168078867114', 1, 130001, to_date('14-07-2017 20:54:39', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;
prompt 27 records loaded
prompt Enabling triggers for B_INVITECODE...
alter table B_INVITECODE enable all triggers;
set feedback on
set define on
prompt Done.
