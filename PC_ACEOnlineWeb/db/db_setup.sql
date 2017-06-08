--------------------------------------------
-- user: pcace                            --
-- Created by wxl on 2016-10-28           --
-- updated by wxl on 2016-10-28           --
-- ���ļ�Ϊ���ݿ��ʼ���ļ���������޸�              --
--------------------------------------------

/*
prompt
prompt Droping user pcace
prompt ====================
DROP USER pcace cascade;
ALTER USER pcace IDENTIFIED BY pcace1234567890;

prompt
prompt Creating tablespace TableSpace_pcace
prompt ====================
CREATE TABLESPACE TableSpace_pcace
DATAFILE 'F:\app\DBDATA\pcace.ORA' SIZE 2048M AUTOEXTEND ON NEXT 100M MAXSIZE unlimited MINIMUM EXTENT 10M
DEFAULT STORAGE(INITIAL 10M MINEXTENTS 1 MAXEXTENTS 4096 PCTINCREASE 0) LOGGING ONLINE;

CREATE TABLESPACE TableSpace_pcaceHIS
DATAFILE 'E:\app\DBDATA\pcaceHis.ORA' SIZE 2048M AUTOEXTEND ON NEXT 100M MAXSIZE unlimited MINIMUM EXTENT 10M
DEFAULT STORAGE(INITIAL 10M MINEXTENTS 1 MAXEXTENTS 4096 PCTINCREASE 0) LOGGING ONLINE;

CREATE TABLESPACE TableSpace_pcaceLOG
DATAFILE 'E:\app\DBDATA\pcaceLOG.ORA' SIZE 2048M AUTOEXTEND ON NEXT 100M MAXSIZE unlimited MINIMUM EXTENT 10M
DEFAULT STORAGE(INITIAL 10M MINEXTENTS 1 MAXEXTENTS 4096 PCTINCREASE 0) LOGGING ONLINE;

Prompt
Prompt Creating user pcace
prompt ====================
CREATE USER pcace IDENTIFIED BY pcace999 DEFAULT TABLESPACE TableSpace_pcace TEMPORARY TABLESPACE TEMP PROFILE DEFAULT;
GRANT CONNECT TO pcace WITH ADMIN OPTION;
GRANT DBA TO pcace WITH ADMIN OPTION;
GRANT UNLIMITED TABLESPACE TO pcace WITH ADMIN OPTION;
*/

CREATE TABLE pcace.S_Role
(
    roleID                         NUMBER(4,0) NOT NULL,
    roleSeq                        NUMBER(4,0) NOT NULL,
    roleName                       VARCHAR2(20) NOT NULL,
    power                          CHAR(1) DEFAULT '0',                --����ԱȨ�ޣ�0-�� 1-����Ա 2-��������Ա
    state                          CHAR(1) NOT NULL,                   --״̬:0-��ͣʹ�� 1-��Ч
    organType                      NUMBER(6,0) DEFAULT -1,
    sctLevel                       NUMBER(6,0) DEFAULT -1,      --�ܼ�
    remark                         VARCHAR2(200),
    istDate                        DATE DEFAULT sysdate,
    uptDate                        DATE DEFAULT sysdate,
    CONSTRAINT S_Role_PK PRIMARY KEY (roleID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

CREATE TABLE pcace.S_User
(
    userID                         NUMBER(9,0) NOT NULL,
    loginName                      VARCHAR2(20) NOT NULL,
    password                       VARCHAR2(50) NOT NULL,
    validatePassword               VARCHAR2(50) NULL,
    userName                       VARCHAR2(20) NOT NULL,
    roleID                         NUMBER(4,0) NOT NULL,
    state                          CHAR(1) NOT NULL,
    loginNum                       NUMBER(6,0) DEFAULT 0,
    loginFlag                      CHAR(1) DEFAULT '0',
    lastLoginDate                  DATE DEFAULT sysdate,
    cssStyle                       VARCHAR2(20) NOT NULL,
    areaID                         NUMBER(6,0) default -1,
    empID                          NUMBER(9,0) NOT NULL,
    operator                       NUMBER(9,0) default -1,
    istDate                        DATE DEFAULT sysdate,
    uptDate                        DATE DEFAULT sysdate,
    CONSTRAINT S_User_PK PRIMARY KEY (userID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

CREATE TABLE pcace.S_Module
(
    moduleID                       VARCHAR2(20) NOT NULL,
    moduleNAME                     VARCHAR2(30) NOT NULL,
    state                          CHAR(1) NOT NULL,
    isMenu                         CHAR(1),
    parent                         VARCHAR2(20),
    hasChild                       CHAR(1),
    url                            VARCHAR2(100),
    img                            VARCHAR2(100),
    power                          VARCHAR2(20),
    bizType                        CHAR(1) default '0',
    istDate                        DATE DEFAULT sysdate,
    uptDate                        DATE DEFAULT sysdate,
    CONSTRAINT S_Module_PK PRIMARY KEY (moduleID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

CREATE TABLE pcace.S_Role_Module
(
    roleID                         NUMBER(4,0) NOT NULL,
    moduleID                       VARCHAR2(20) NOT NULL,
    power                          VARCHAR2(20) DEFAULT '',  --��1λ:�鿴 ��2λ:���  ��3λ:����  ��4λ:�༭ ��5λ:ɾ�� ��6λ:���� ��7λ:������0-�� 1-���� 2-������ 9-���У�
    CONSTRAINT S_Role_Module_PK PRIMARY KEY (roleID, moduleID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

------------------------------------------------------------------------------------------------------------


delete from pcace.S_Module;
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('10.0','��ҳ',1,1,'',0,'system/S_Main','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.01','ͨ�����ݱ༭',1,0,'10.0',0,'biz/B_DataPublic','','11111111',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.02','�ӱ����ݹ���',1,0,'10.0',0,'biz/B_DataPublicChild','','11111111',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.03','ͨ�����ݲ鿴',1,0,'10.0',0,'biz/B_DataPublicQuery','','10000000',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.04','�ӱ����ݲ鿴',1,0,'10.0',0,'biz/B_DataPublicQueryChild','','10000000',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.05','��ʷ���ݲ鿴',1,0,'10.0',0,'biz/B_DataPublicHis','','10000000',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.06','ͨ������ģ��',1,0,'10.0',0,'biz/B_DataModule','','11111111',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.07','���ݵ���',1,0,'10.0',0,'biz/B_DataAdds','','11000000',2);

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.0','ҵ�����',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.01','��ͼ��ѯ',1,1,'30.0',0,'biz/B_Map','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.02','ͳ�Ʊ���',1,1,'30.0',0,'biz/B_Stat','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.03','���߹���',1,1,'30.0',0,'biz/B_Situation','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.04','��ظ澯',1,1,'30.0',0,'biz/B_Monitor','','');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('40.0','������Ϣ����',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('40.01','��¼�û�',1,1,'40.0',0,'biz/B_DataPub_102','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('40.02','��վ����',1,1,'40.0',0,'biz/B_DataPub_104','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('40.03','�澯����',1,1,'40.0',0,'biz/B_DataPub_111','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('42.01','��Ʒ��ά��',1,1,'40.0',0,'biz/B_DataPub_119','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('42.01.01','��ӡ��ά��',1,0,'42.01',0,'biz/B_DataPub_119_BGoodsQR','','');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.0','��˾��֯����',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.01','ҵ��˾����',1,1,'50.0',0,'biz/B_DataPub_1','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.02','��ҵ��Ա����',1,1,'50.0',0,'biz/B_DataPub_2','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.02.01','��¼�ʻ�����',1,0,'50.02',0,'biz/B_DataPub_2_BUserStart','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('50.02.01.1','��¼�ʻ�����',1,0,'50.02.01',0,'system/S_UserStart','','',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.02.02','��¼�ʻ�ͣ��',1,0,'50.02',0,'biz/B_DataPub_2_BUserStop','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('50.02.02.1','��¼�ʻ�ͣ��',1,0,'50.02.02',0,'system/S_UserStop','','',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.02.03','��Ա�ṹ��',1,0,'50.02',0,'biz/B_DataPub_2_AEmpTree','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.03','���Ź���',1,1,'50.0',0,'biz/B_DataPub_3','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.03.01','��֯�ṹͼ',1,0,'50.03',0,'biz/B_DataPub_3_AJobStruct','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.03.02','��֯��',1,0,'50.03',0,'biz/B_DataPub_3_AJobTree','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.04','��λ����',1,1,'50.0',0,'biz/B_DataPub_4','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.04.01','��λ�ṹͼ',1,0,'50.04',0,'biz/B_DataPub_4_AJobPosition','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.05','���������',1,1,'50.0',0,'biz/B_DataPub_7','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.06','�������ʹ���',1,1,'50.0',0,'biz/B_DataPub_8','','11111111');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('89.0','��������',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('89.01','�޸�����',1,1,'89.0',0,'S_Mpsd','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('89.02','���ô�ӡ��',1,1,'89.0',0,'biz/I_EmpInfo','','');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.0','ϵͳ����',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.11','����',1,1,'90.0',0,'biz/B_DataPub_5','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.12','APP�汾����',1,1,'90.0',0,'biz/B_DataPub_10','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.13','APPģ��',1,1,'90.0',0,'biz/B_DataPub_23','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.13.01','�ӱ�-ģ����ϸ',1,0,'90.13',0,'biz/B_DataPubChild_23_24','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.13.02','����ģ�鼰��ϸ',1,0,'90.13',0,'biz/B_DataPub_23_BAppModule_CopyDetail','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.13.03','ͬ��APP������',1,0,'90.13',0,'biz/B_DataPub_23_AAppModule_SynAppServer','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.14','APP��ɫ',1,1,'90.0',0,'biz/B_DataPub_25','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.14.01','�ӱ�-Ȩ��',1,0,'90.91',0,'biz/B_DataPubChild_25_26','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.90','DOTģ��',1,1,'90.0',0,'biz/B_DataPub_19','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.90.01','�ӱ�-ģ����ϸ',1,0,'90.90',0,'biz/B_DataPubChild_19_22','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.91','DOT��λ',1,1,'90.0',0,'biz/B_DataPub_20','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.91.01','�ӱ�-Ȩ��',1,0,'90.91',0,'biz/B_DataPubChild_20_21','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.92','DOT�û�',1,1,'90.0',0,'biz/B_DataPub_18','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.93','������ʷ',1,1,'90.0',0,'biz/B_DataPub_11','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.94','������ʷ',1,1,'90.0',0,'biz/B_DataPub_11','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.95','�û���¼��Ϣ',1,1,'90.0',0,'biz/B_DataPub_8','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.96','�û���λ��Ϣ',1,1,'90.0',0,'biz/B_DataPub_9','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.97','��λ��־',1,1,'90.0',0,'biz/B_DataPub_13','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.98','������־',1,1,'90.0',0,'biz/B_DataPub_14','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.99','ҵ����־',1,1,'90.0',0,'system/M_LogQuery','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.01','�ʻ�����',1,1,'90.0',0,'system/S_User','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.01.4','��¼�ʻ�����',1,0,'91.01',0,'system/S_UserStart','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.01.5','��¼�ʻ�ͣ��',1,0,'91.01',0,'system/S_UserStop','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.01.6','��¼�ʻ���������',1,0,'91.01',0,'system/S_UserStartApply','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.02','��ɫ����',1,1,'90.0',0,'system/S_Role','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.05','���ܼ��',1,1,'90.0',0,'system/S_PerformanceQuery','','');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.0','��������',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.00','����',1,1,'99.0',0,'system/TestSql','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.01','��־����',1,1,'99.0',0,'system/S_Log','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.02','ϵͳ��������',0,0,'99.0',0,'system/S_Param','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.03','ģ�����',1,1,'99.0',0,'system/S_Module','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.04','ƽ̨�ӿڹ���',0,0,'99.0',0,'system/S_PlatForm','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.05','����������',1,1,'99.0',0,'biz/I_SystemParam','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.06','����Ӧ���ֵ����',1,1,'99.0',0,'biz/I_DataParamType','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.07','���ݱ�������',1,1,'99.0',0,'biz/I_DataTableType','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10','���ݱ�����',1,1,'99.0',0,'biz/I_DataTable','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.1','���ݱ�����',1,0,'99.10',0,'biz/I_DataTableAdd','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.2','���ݱ�༭',1,0,'99.10',0,'biz/I_DataTableEdit','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.3','���ݱ�ɾ��',1,0,'99.10',0,'biz/I_DataTableDel','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.4','Ԫ���ݱ༭',1,0,'99.10',0,'biz/I_DataTableColumnExtInfo','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.5','��ɾ��',1,0,'99.10',0,'biz/I_DataTableColumnDel','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.11','��������',1,1,'99.0',0,'biz/I_Process','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('99.11.1','���̲������',1,0,'99.11',0,'biz/I_ProcessDesc','','',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.19','�༭��',1,1,'99.0',0,'xml/B_Editor','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.20','����',1,1,'99.0',0,'biz/B_Manager','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.21','����������',1,1,'99.0',0,'biz/B_DataPub_6','','11111111');
commit;


delete from pcace.S_Role_Module;
insert into pcace.S_Role_Module select 2,moduleid,'' from pcace.S_Module where state = 1 and moduleID<'99.0' order by moduleid;
insert into pcace.S_Role_Module select 100,moduleid,'' from pcace.S_Module where state = 1 and moduleID<'99.0' order by moduleid;
insert into pcace.S_Role_Module select 201,moduleid,'' from pcace.S_Module where state = 1 and moduleID<'20.0' order by moduleid;
insert into pcace.S_Role_Module select 202,moduleid,'' from pcace.S_Module where state = 1 and moduleID<'20.0' order by moduleid;
commit;

delete from pcace.S_Role;
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(1,'��������Ա',9,0,-1,802005,1);
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(2,'ϵͳ����Ա',9,1,-1,802005,1);
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(100,'���ݹ���Ա',0,100,-1,802005,1);
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(199,'�����û�',0,199,-1,802001,1);
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(400,'��ͨ�û�',0,400,-1,802001,1);
commit;

delete from pcace.S_User;
insert into pcace.S_User values(0,'999','6d09bf21970aab74d3e7bd71a620f638','6d09bf21970aab74d3e7bd71a620f638','��������Ա',1,1,0,1,sysdate,'super',-1,0,-1,sysdate,sysdate);
insert into pcace.S_User values(1,'0001','cf79ae6addba60ad018347359bd144d2','cf79ae6addba60ad018347359bd144d2','ϵͳ����Ա',2,1,0,1,sysdate,'default',-1,2,-1,sysdate,sysdate);
commit;
--select 'insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('||''''||moduleid||''','''||modulename||''','||state||','||ismenu||','''||parent||''','||haschild||','''||url||''','''||img||''','''||power||''','||bizType||');' from S_Module order by moduleid;
------------------------------------------------------------------------------------------------------------
CREATE TABLE pcace.S_Param
(
    ID                             NUMBER(6,0) NOT NULL PRIMARY KEY,
    paramName                      VARCHAR2(100),
    paramValue                     VARCHAR2(200),
    remark                         VARCHAR2(200),
    istDate                        DATE DEFAULT sysdate,
    uptDate                        DATE DEFAULT sysdate
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.S_PlatForm
prompt ===============================
create table pcace.S_PlatForm
(
    platFormID                     NUMBER(6,0) not null,
    platFormName                   VARCHAR2(50),
    status                         NUMBER(1,0) default 1 not null,
    interval                       NUMBER(6,0) default 0,
    istDate                        DATE DEFAULT sysdate,
    uptDate                        DATE DEFAULT sysdate,
    CONSTRAINT S_PlatForm_PK PRIMARY KEY (platFormID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


CREATE TABLE pcace.S_PublishLog
(
    publishNo                      VARCHAR2(100),
    publishDate                    DATE DEFAULT sysdate,
    istDate                        DATE DEFAULT sysdate
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

  
CREATE TABLE pcace.S_QuickMenu
(
    ID                             NUMBER(6,0) NOT NULL PRIMARY KEY,
    userID                         NUMBER(6,0),
    moduleID                       VARCHAR2(100),
    moduleName                     VARCHAR2(100),
    moduleUrl                      VARCHAR2(100),
    seq                            NUMBER(6,0),
    publishDate                    DATE DEFAULT sysdate,
    istDate                        DATE DEFAULT sysdate,
    uptDate                        DATE DEFAULT sysdate
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
------------------------------------------------------------------------------------------------------------

prompt
prompt Creating table pcace.I_Area ������Ϣ��
prompt =============================
CREATE TABLE pcace.I_Area
(
    id                             NUMBER(6,0) NOT NULL,      --ID
    areaName                       VARCHAR2(50) NOT NULL,     --��������
    areaID                         NUMBER(6,0) not null,      --�������
    areaCode                       VARCHAR2(4),               --����
    state                          CHAR(1) NOT NULL,          --״̬:0����Ч 1����Ч
    areaLevel                      NUMBER(6,0) not null,      --����1��һ�� 2������ 3������
    upAreaID                       NUMBER(4,0) not null,      --�ϼ�:0:��
    remark                         VARCHAR2(100),             --��ע
    istDate                        DATE DEFAULT sysdate,
    uptDate                        DATE DEFAULT sysdate,
    CONSTRAINT I_Area_PK PRIMARY KEY (areaID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.I_SystemParam ��������
prompt =============================
CREATE TABLE pcace.I_SystemParam
(
    id                               NUMBER(6,0) NOT NULL,
    paramClass                       NUMBER(3,0) NOT NULL,
    className                        VARCHAR2(30) NOT NULL,
    value                            VARCHAR2(30) NOT NULL,
    name                             VARCHAR2(50) NOT NULL,
    parentClass                      NUMBER(6,0) NULL,
    isShow                           CHAR(1) DEFAULT '1',
    state                            CHAR(1) DEFAULT '1',
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_SystemParam_PK PRIMARY KEY (ID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
    
prompt
prompt Creating table pcace.I_DataParamType ����Ӧ���ֵ�
prompt =============================
CREATE TABLE pcace.I_DataParamType
(
    paramClassID                     NUMBER(6,0) NOT NULL,
    className                        VARCHAR2(100) NOT NULL,
    classNameEn                      VARCHAR2(100),
    classNameEn2                     VARCHAR2(100),
    classNameEn3                     VARCHAR2(100),
    classNameEn4                     VARCHAR2(100),
    classNameEn5                     VARCHAR2(100),
    typeLevel                        NUMBER(6,0) NOT NULL,
    parentID                         NUMBER(6,0) NULL,
    childNum                         NUMBER(9,0) DEFAULT 0,
    memo                             VARCHAR2(200) NULL,
    state                            CHAR(1) DEFAULT '1',
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataParamType_PK PRIMARY KEY (paramClassID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.I_DataTableType ���ݱ����
prompt =============================
CREATE TABLE pcace.I_DataTableType
(
    tableTypeID                      NUMBER(6,0) NOT NULL,
    tableTypeName                    VARCHAR2(100) NOT NULL,
    typeLevel                        NUMBER(6,0) NOT NULL,
    parentID                         NUMBER(6,0) NULL,
    childNum                         NUMBER(9,0) DEFAULT 0,
    memo                             VARCHAR2(200) NULL,
    state                            CHAR(1) DEFAULT '1',
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataTableType_PK PRIMARY KEY (tableTypeID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--drop table pcace.I_DataTable;
prompt
prompt Creating table pcace.I_DataTable ���ݱ�
prompt =============================
CREATE TABLE pcace.I_DataTable
(
    tableID                          NUMBER(6,0) NOT NULL,      --���ݱ��ID
    tableName                        VARCHAR2(100) NOT NULL,    --��������
    tableMemo                        VARCHAR2(100) NOT NULL,    --����˵��
    ServerPath                       VARCHAR2(50),              --������·��
    tableTypeID                      NUMBER(6,0) NOT NULL,      --���ݱ����
    colNum                           NUMBER(4,0) DEFAULT 0,     --����
    dataNum                          NUMBER(9,0) DEFAULT 0,     --��������
    sctLevel                         NUMBER(6,0) NOT NULL,      --�ܼ�
    sequenceFlag                     CHAR(1) DEFAULT '0',       --�Ƿ���������
    pkFlag                           CHAR(1) DEFAULT '0',       --�Ƿ���������
    sidFlag                          CHAR(1) DEFAULT '0',       --�Ƿ�ϵͳ��ʶ��
    scopeFlag                        CHAR(1) DEFAULT '0',       --�Ƿ�ֵ�����ݱ�
    attachFileFlag                   CHAR(1) DEFAULT '0',       --��ý����Ϣ����
    dataStatusFlag                   CHAR(1) DEFAULT '0',       --����״̬����
    sctLevelFlag                     CHAR(1) DEFAULT '0',       --�ܼ�����
    otherButtons                     VARCHAR2(200),             --�������ܲ˵�
    parentTableID                    NUMBER(6,0) DEFAULT -1,    --����ID
    childTableNum                    NUMBER(4,0) DEFAULT 0,     --�ӱ���
    state                            CHAR(1) DEFAULT '1',       --�Ƿ���Ч
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataTable_PK PRIMARY KEY (tableID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--drop table pcace.I_DataTableColumn;
prompt
prompt Creating table pcace.I_DataTableColumn �������Զ����
prompt =============================
CREATE TABLE pcace.I_DataTableColumn
(
    colid                            NUMBER(9,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --����ID
    colName                          VARCHAR2(100) NOT NULL,    --������
    dataTypeStr                      VARCHAR2(50) NOT NULL,     --���������ַ���
    dataType                         NUMBER(6,0) NOT NULL,      --��������
    dataLen                          NUMBER(6,0) NOT NULL,      --�����ܳ���
    dataDotLen                       NUMBER(2,0) DEFAULT 0,     --����С�����ȣ�������ֵ��Ч��
    colMemo                          VARCHAR2(100) NOT NULL,    --�б�ע
    nullFlag                         CHAR(1) DEFAULT '1',       --����Ϊ��
    def                              VARCHAR2(100) DEFAULT '',  --Ĭ��ֵ
    dataCol1Num                      NUMBER(2,0) DEFAULT 0,     --��ͬ��1��Ŀ
    dataCol2Num                      NUMBER(2,0) DEFAULT 0,     --��ͬ��2��Ŀ
    dataCol3Num                      NUMBER(2,0) DEFAULT 0,     --��ͬ��3��Ŀ
    sctLevel                         NUMBER(6,0) NOT NULL,      --�ܼ�
    seq                              NUMBER(6,0) NOT NULL,      --����
    listShowFlag                     CHAR(1) DEFAULT 1,         --�б����Ƿ���ʾ
    showWidth                        NUMBER(6,0) DEFAULT 0,     --�б���ʾ���
    formShowFlag                     CHAR(1) DEFAULT 1,         --�����Ƿ���ʾ�����������Ԫ�����������Զ�����ֵ��
    state                            CHAR(1) DEFAULT '1',       --�Ƿ���Ч
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataTableColumn_PK PRIMARY KEY (colid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.I_DataTableColumnExtInfo �����е�Ԫ����
prompt =============================
CREATE TABLE pcace.I_DataTableColumnExtInfo
(
    id                               NUMBER(11,0) NOT NULL,
    colid                            NUMBER(9,0) NOT NULL,      --��ID
    tableID                          NUMBER(6,0) NOT NULL,      --����ID
    extCode                          NUMBER(6,0) NOT NULL,      --��ʶ��
    extNameZh                        VARCHAR2(100) NOT NULL,    --��������
    extNameZhs                       VARCHAR2(20) NULL,         --����������д
    extNameEn                        VARCHAR2(100) NULL,        --Ӣ������
    extNameEns                       VARCHAR2(20) NULL,         --Ӣ��������д
    extNameFr1                       VARCHAR2(100) NULL,        --����1����
    extNameFr1s                      VARCHAR2(20) NULL,         --����1������д
    extNameFr2                       VARCHAR2(100) NULL,        --����2����
    extNameFr2s                      VARCHAR2(20) NULL,         --����2������д
    extNameFr3                       VARCHAR2(100) NULL,        --����3����
    extNameFr3s                      VARCHAR2(20) NULL,         --����3������д
    extDefine                        VARCHAR2(200) NULL,        --����
    extShow                          VARCHAR2(20) NULL,         --��ʾ
    extLength                        NUMBER(6,0) NULL,          --����
    extPrecision                     NUMBER(6,0) NULL,          --����
    extUnit                          VARCHAR2(20) NULL,         --��λ
    extValueScope                    VARCHAR2(100) NULL,        --ֵ����ʾ
    extValueScopeTypeID              NUMBER(6,0) NULL,          --ֵ��ID
    extValueScopeTypeParam           VARCHAR2(50) NULL,         --ֵ�����
    extRelationSubCols               VARCHAR2(50) NULL,         --�����¼���
    extKeyIDFlag                     CHAR(1) DEFAULT '0',       --�Ƿ�����ID
    extKeyNameFlag                   CHAR(1) DEFAULT '0',       --�Ƿ���������
    extKeywordFlag                   CHAR(1) DEFAULT '0',       --�Ƿ�ؼ���������
    extQueryByFlag                   CHAR(1) DEFAULT '0',       --�Ƿ��ѯ����
    extSynName                       VARCHAR2(50) NULL,         --ͬ������
    extRelateEnvironment             VARCHAR2(100) NULL,        --��ػ���
    extVersion                       VARCHAR2(20) NULL,         --�汾��
    extMemo                          VARCHAR2(200) NULL,        --��ע
    state                            CHAR(1) DEFAULT '1',       --�Ƿ���Ч
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataTableColumnExtInfo_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--drop table pcace.I_DataModule;
prompt
prompt Creating table pcace.I_DataModule ����ģ���
prompt =============================
CREATE TABLE pcace.I_DataModule
(
    moduleID                         VARCHAR2(30) NOT NULL,     --ģ��ID
    moduleName                       VARCHAR2(100) NOT NULL,    --ģ������
    viewName                         VARCHAR2(100) NOT NULL,    --��ͼ����
    viewSql                          VARCHAR2(1000) NOT NULL,   --��ͼSQL
    tableIDs                         VARCHAR2(100) NOT NULL,    --���ݱ�
    colNum                           NUMBER(4,0) DEFAULT 0,     --����
    sctLevel                         NUMBER(6,0) NOT NULL,      --�ܼ�
    attachFileFlag                   CHAR(1) DEFAULT '0',       --��ý����Ϣ����
    sctLevelFlag                     CHAR(1) DEFAULT '0',       --�ܼ�����
    otherCondition                   VARCHAR2(200),             --����SQL����
    otherButtons                     VARCHAR2(200),             --�������ܲ˵�
    state                            CHAR(1) DEFAULT '1',       --�Ƿ���Ч
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataModule_PK PRIMARY KEY (moduleID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


--drop table pcace.I_DataModuleColumn;
prompt
prompt Creating table pcace.I_DataModuleColumn ����ģ�鶨���
prompt =============================
CREATE TABLE pcace.I_DataModuleColumn
(
    id                               NUMBER(9,0) NOT NULL,
    moduleID                         VARCHAR2(30) NOT NULL,     --ģ��ID
    tableID                          NUMBER(6,0) NOT NULL,      --����ID
    colid                            NUMBER(9,0) NOT NULL,
    colMemo                          VARCHAR2(100),             --�б�ע
    colstr                           VARCHAR2(100),             --����˵����
    colName                          VARCHAR2(30),              --����
    colName_as                       VARCHAR2(20),              --�б���
    sctLevel                         NUMBER(6,0) NOT NULL,      --�ܼ�
    seq                              NUMBER(6,0) NOT NULL,      --����
    groupFunc                        NUMBER(6,0) NOT NULL,      --���麯��
    listShowFlag                     CHAR(1) DEFAULT 1,         --�б����Ƿ���ʾ
    showWidth                        NUMBER(6,0) DEFAULT 0,     --�б���ʾ���
    formShowFlag                     CHAR(1) DEFAULT 1,         --�����Ƿ���ʾ�����������Ԫ�����������Զ�����ֵ��
    extKeywordFlag                   CHAR(1) DEFAULT '0',       --�Ƿ�ؼ���������
    extQueryByFlag                   CHAR(1) DEFAULT '0',       --�Ƿ��ѯ����
    state                            CHAR(1) DEFAULT '1',       --�Ƿ���Ч
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataModuleColumn_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.I_Process ����
prompt =============================
CREATE TABLE pcace.I_Process
(
    psid                           NUMBER(6,0),                   --PSID
    organID                        NUMBER(6,0),                   --��˾����
    processName                    VARCHAR2(50),                  --��������
    processType                    NUMBER(6,0),                   --���̷���
    creator                        NUMBER(6,0),                   --������
    tableID                        NUMBER(6,0),                   --��������
    state                          NUMBER(6,0),                   --��Ч״̬
    remark                         VARCHAR2(500),                 --��ע
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT I_Process_PK PRIMARY KEY (psid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.I_ProcessDesc ���̹���˵��
prompt =============================
CREATE TABLE pcace.I_ProcessDesc
(
    ccid                           NUMBER(9,0),
    psid                           NUMBER(6,0),                   --PSID
    seq                            NUMBER(2,0),                   --���
    processTitle                   VARCHAR2(50),                  --���̱���
    processDesc                    VARCHAR2(200),                 --����˵��
    nextSeq                        VARCHAR2(20),                  --��һ������ţ��Զ��ŷָ���-1��ʾ����
    conditions                     VARCHAR2(500),                 --��������
    processCols                    VARCHAR2(1000),                 --�����ֶ�˵�����ɼ� ���� ��д
    processActorMode               NUMBER(6,0),                   --����ģʽ��һ�˴��� ���˴���
    processActor                   VARCHAR2(200),                 --������(��Ա)
    processActorDepartment         VARCHAR2(200),                 --������(����)
    processActorRole               VARCHAR2(200),                 --������(��ɫ)
    actorSelectRule                NUMBER(6,0),                   --ѡ�˹��˹���
    actorAutoSelectRule            NUMBER(6,0),                   --�Զ�ѡ�˹���
    actorAutoSelectRuleMemo        VARCHAR2(30),                  --�Զ�ѡ�˱���
    attachFilePower                VARCHAR2(6),                   --��������Ȩ�ޣ��½� �༭ ɾ�� ���� ��ӡ
    attachFileEditFlag             CHAR(1),                       --�Ƿ��������辭���˱༭����
    state                          NUMBER(6,0),                   --��Ч״̬
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT I_ProcessDesc_PK PRIMARY KEY (ccid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_Process ��������
prompt =============================
CREATE TABLE pcace.IB_Process
(
    processID                      NUMBER(9,0),                   --����ID
    processTitle                   VARCHAR2(200),                 --���̱���
    organID                        NUMBER(6,0),                   --��˾����
    psid                           NUMBER(6,0),                   --psid
    tableID                        NUMBER(6,0),                   --����ID
    dataid                         NUMBER(9,0),                   --��������ID
    creator                        NUMBER(6,0),                   --������
    curSeq                         NUMBER(6,0),                   --��ǰ����
    curActor                       VARCHAR2(200),                 --��ǰ������
    curStatus                      VARCHAR2(200),                 --��ǰ״̬
    dealFlag                       NUMBER(6,0),                   --������
    state                          NUMBER(6,0),                   --��Ч״̬
    remark                         VARCHAR2(200),                 --��ע
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IB_Process_PK PRIMARY KEY (processID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_ProcessDetail ����������ϸ
prompt =============================
CREATE TABLE pcace.IB_ProcessDetail
(
    id                             NUMBER(9,0),
    processID                      NUMBER(9,0),                   --����ID
    seq                            NUMBER(6,0),                   --�������
    status                         VARCHAR2(100),                 --����״̬
    actor                          NUMBER(6,0),                   --������
    actResult                      NUMBER(6,0),                   --���ֽ���� �ύ �ܾ� �����޸�
    actMemo                        VARCHAR2(500),                 --�������
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IB_ProcessDetail_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_ProcessMemo ������ע
prompt =============================
CREATE TABLE pcace.IB_ProcessMemo
(
    id                             NUMBER(9,0),
    processID                      NUMBER(9,0),                   --����ID
    auther                         NUMBER(6,0),                   --��ע��
    actMemo                        VARCHAR2(200),                 --��ע���
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IB_ProcessMemo_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_DataExtInfo ���ݸ�����Ϣ
prompt =============================
CREATE TABLE pcace.IB_DataExtInfo
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --���ݱ�ID
    dataid                           NUMBER(9,0) NOT NULL,      --����ID
    extCode                          NUMBER(6,0) NOT NULL,      --��ʶ��
    extNameZh                        VARCHAR2(100) NOT NULL,    --��������
    extNameZhs                       VARCHAR2(20) NULL,         --����������д
    extNameEn                        VARCHAR2(100) NULL,        --Ӣ������
    extNameEns                       VARCHAR2(20) NULL,         --Ӣ��������д
    extSummary                       VARCHAR2(200) NULL,        --ժҪ
    extSubject                       VARCHAR2(40) NULL,         --�����
    attachFileNum                    NUMBER(6,0) DEFAULT 0,     --������
    dataResource                     VARCHAR2(100) NULL,        --������Դ
    dataDate                         DATE DEFAULT sysdate,      --����ʱ��
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataExtInfo_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataAttachFile;
prompt
prompt Creating table pcace.IB_DataAttachFile ���ݸ�����Ϣ
prompt =============================
CREATE TABLE pcace.IB_DataAttachFile
(
    id                               NUMBER(11,0) NOT NULL,     --id
    tableID                          NUMBER(6,0) NOT NULL,      --���ݱ�ID
    dataid                           NUMBER(9,0) NOT NULL,      --����ID
    fileName                         VARCHAR2(50) NULL,         --�����ļ���
    fileMemo                         VARCHAR2(100) NULL,        --����˵��
    fileType                         NUMBER(6,0) NOT NULL,      --�������ͼƬ ��Ƶ ��Ƶ
    fileFormat                       VARCHAR2(30) NULL,         --������ʽ
    fileSize                         NUMBER(3,0) DEFAULT 0,      --������С(����)
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataAttachFile_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataResource001;
prompt
prompt Creating table pcace.IB_DataResource001 ������Դ��Ϣ-�ڲ�����
prompt =============================
CREATE TABLE pcace.IB_DataResource001
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --���ݱ�ID
    dataid                           NUMBER(9,0) NOT NULL,      --����ID
    resourceName                     VARCHAR2(100) NOT NULL,    --ȫ������
    resourceCode                     VARCHAR2(20) NULL,         --�ļ����
    resourceSubject                  VARCHAR2(100) NULL,        --�����
    sctLevel                         NUMBER(6,0) NOT NULL,      --�ܼ�
    resourceType                     VARCHAR2(20) NULL,         --��������
    issueDepartment                  VARCHAR2(50) NULL,         --�䷢����
    issueDate                        VARCHAR2(20) NULL,         --�䷢����
    saveDepartment                   VARCHAR2(50) NULL,         --�鵵����
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataResource001_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataResource002;
prompt
prompt Creating table pcace.IB_DataResource002 ������Դ��Ϣ-�ֳ��ɼ�
prompt =============================
CREATE TABLE pcace.IB_DataResource002
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --���ݱ�ID
    dataid                           NUMBER(9,0) NOT NULL,      --����ID
    collectObject                    VARCHAR2(50) NOT NULL,     --�ɼ�����
    organName                        VARCHAR2(30) NULL,         --��֯����
    actionName                       VARCHAR2(30) NULL,         --�ж�����
    actionArea                       VARCHAR2(30) NULL,         --�ж�����
    actionStartDate                  VARCHAR2(20) NULL,         --�ж���ʼʱ��
    actionEndDate                    VARCHAR2(20) NULL,         --�ж���ֹʱ��
    actionDesc                       VARCHAR2(200) NULL,        --�ж�����
    collectDevice                    VARCHAR2(30) NULL,         --�ɼ��豸
    createDate                       VARCHAR2(20) NULL,         --��������
    collectorName                    VARCHAR2(30) NULL,         --�ɼ���Ա
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataResource002_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataResource003;
prompt
prompt Creating table pcace.IB_DataResource003 ������Դ��Ϣ-��������
prompt =============================
CREATE TABLE pcace.IB_DataResource003
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --���ݱ�ID
    dataid                           NUMBER(9,0) NOT NULL,      --����ID
    title                            VARCHAR2(50) NOT NULL,     --����
    subTitle                         VARCHAR2(50) NULL,         --������
    mainResponser                    VARCHAR2(10) NULL,         --��Ҫ������
    otherResponser                   VARCHAR2(30) NULL,         --����������
    publishArea                      VARCHAR2(30) NULL,         --�����
    publisher                        VARCHAR2(50) NULL,         --������
    publishDate                      VARCHAR2(20) NULL,         --��������
    subject                          VARCHAR2(50) NULL,         --�����
    version                          VARCHAR2(10) NULL,         --�汾��
    language                         VARCHAR2(50) NULL,         --����
    startPage                        VARCHAR2(10) NULL,         --��ʼҳ
    endPage                          VARCHAR2(10) NULL,         --��ֹҳ
    sctLevel                         NUMBER(6,0) NULL,          --�ܼ�
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataResource003_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataResource004;
prompt
prompt Creating table pcace.IB_DataResource004 ������Դ��Ϣ-������Դ
prompt =============================
CREATE TABLE pcace.IB_DataResource004
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --���ݱ�ID
    dataid                           NUMBER(9,0) NOT NULL,      --����ID
    title                            VARCHAR2(50) NOT NULL,     --����
    subTitle                         VARCHAR2(50) NULL,         --������
    mainAuthor                       VARCHAR2(10) NULL,         --��Ҫ����
    otherAuthor                      VARCHAR2(30) NULL,         --��������
    websiteName                      VARCHAR2(50) NULL,         --��վ����
    websiteUrl                       VARCHAR2(100) NULL,        --URL
    publishDate                      VARCHAR2(20) NULL,         --��������
    language                         VARCHAR2(50) NULL,         --����
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataResource004_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_Formation ��ϵ
prompt =============================
CREATE TABLE pcace.IB_Formation
(
    formationID                      NUMBER(9,0) NOT NULL,      --ID
    formationType                    NUMBER(6,0) NOT NULL,      --��ϵ��𣺱����ϵ װ����ϵ ...
    formationName                    VARCHAR2(100) NOT NULL,    --����
    nodeType                         NUMBER(6,0) NOT NULL,      --�ڵ�����
    parentID                         NUMBER(9,0) NOT NULL,      --�ϼ�
    childNum                         NUMBER(9,0) DEFAULT 0,     --�¼���Ŀ
    memo                             VARCHAR2(200) NULL,        --��ע
    ext1                             VARCHAR2(100) NULL,        --
    ext2                             VARCHAR2(100) NULL,        --
    ext3                             VARCHAR2(100) NULL,        --
    state                            CHAR(1) DEFAULT '1',       --״̬
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_Formation_PK PRIMARY KEY (formationID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_DataLog;
prompt
prompt Creating table pcace.T_DataLog ���ݸ�����־
prompt =============================
CREATE TABLE pcace.T_DataLog
(
    id                               NUMBER(11,0) NOT NULL,
    logType                          NUMBER(6,0) NOT NULL,      --��־���
    tableID                          NUMBER(6,0) NOT NULL,      --����ID
    colid                            NUMBER(9,0) DEFAULT '-1',  --��ID
    dataid                           VARCHAR2(32) DEFAULT '-1', --����ID
    extid                            NUMBER(9,0) DEFAULT '-1',  --���ݸ�����ϢID
    title                            VARCHAR2(200) NOT NULL,    --��������
    Context                          VARCHAR2(1000) NOT NULL,    --������־����
    userID                           VARCHAR2(50) NOT NULL,     --����ԱID
    userName                         VARCHAR2(200) NOT NULL,    --����Ա����
    ipaddress                        VARCHAR2(50) NOT NULL,     --����ԱIP
    istDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_MLog;
prompt
prompt Creating table pcace.T_MLog �ֻ���־
prompt =============================
CREATE TABLE pcace.T_MLog
(
    id                               NUMBER(11,0) NOT NULL,
    logType                          NUMBER(6,0) NOT NULL,      --��־���
    tableID                          NUMBER(6,0) NOT NULL,      --����ID
    colid                            NUMBER(9,0) DEFAULT '-1',  --��ID
    dataid                           NUMBER(9,0) DEFAULT '-1',  --����ID
    extid                            NUMBER(9,0) DEFAULT '-1',  --���ݸ�����ϢID
    title                            VARCHAR2(200) NOT NULL,    --��������
    Context                          VARCHAR2(1000) NOT NULL,    --������־����
    userID                           VARCHAR2(50) NOT NULL,     --����ԱID
    userName                         VARCHAR2(200) NOT NULL,     --����Ա����
    ipaddress                        VARCHAR2(50) NOT NULL,     --����ԱIP
    istDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_Log;
prompt
prompt Creating table pcace.T_Log ��ʱ��־����������
prompt =============================
CREATE TABLE pcace.T_Log
(
    id                               NUMBER(13,0) NOT NULL,
    logType                          NUMBER(6,0) NOT NULL,      --��־���
    tableID                          NUMBER(6,0) DEFAULT '-1',  --����ID
    colid                            NUMBER(9,0) DEFAULT '-1',  --��ID
    dataid                           VARCHAR2(32) DEFAULT '-1', --����ID
    extid                            NUMBER(9,0) DEFAULT '-1',  --���ݸ�����ϢID
    title                            VARCHAR2(200) NOT NULL,    --��������
    Context                          VARCHAR2(1000) NOT NULL,    --������־����
    userID                           VARCHAR2(50) NOT NULL,     --����ԱID
    userName                         VARCHAR2(200) NOT NULL,     --����Ա����
    ipaddress                        VARCHAR2(100) NOT NULL,     --����ԱIP
    istDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_SLog;
CREATE TABLE pcace.T_SLog
(
    ID                             NUMBER(20,0) NOT NULL,
    logType                        CHAR(1),
    title                          VARCHAR2(200),
    context                        VARCHAR2(1000),
    oid                            NUMBER(9,0) NULL,
    userID                         NUMBER(9,0),
    userName                       VARCHAR2(200),
    IPAddress                      VARCHAR2(100),
    istDate                        DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_Message;
prompt
prompt Creating table pcace.T_Message ��Ϣ��
prompt =============================
CREATE TABLE pcace.T_Message
(
    id                               NUMBER(9,0) NOT NULL,
    content                          VARCHAR2(500) NOT NULL,       --����
    tableID                          NUMBER(9,0) default -1,       --��������ID
    dataid                           NUMBER(9,0) default -1,       --����ID
    actionID                         NUMBER(4,0) default -1,       --��������: 0:�ύ,1:У��,2:���,3:�˻�,4:����
    senderID                         NUMBER(9,0),                  --������ID
    senderName                       VARCHAR2(50),                 --����������
    recverID                         NUMBER(9,0),                  --������ID
    recverName                       VARCHAR2(50),                 --����������
    readFlag                         CHAR(1) default '0',          --�Ѷ����:0-δ��;1-�Ѷ�
    sendShowFlag                     CHAR(1) default '1',          --�Ƿ��ڷ����б���ʾ:0-����ʾ;1-��ʾ
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_Mark;
prompt
prompt Creating table pcace.T_Mark ��ʱע�Ǳ�
prompt =============================
CREATE TABLE pcace.T_Mark
(
    mark                             VARCHAR2(20) NOT NULL,     --ע����
    v1                               VARCHAR2(200) NOT NULL,    --ֵ1
    v2                               VARCHAR2(200) NOT NULL,    --ֵ2
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_AppVersion APP�汾
prompt =============================
prompt
CREATE TABLE pcace.IS_AppVersion(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    c1                             NUMBER(3,0),                   --app code
    c2                             VARCHAR2(20),                  --�汾��
    c3                             VARCHAR2(200),                 --���ص�ַ
    c4                             VARCHAR2(2000),                --�汾˵��
    c5                             NUMBER(6,0),                   --״̬
    c6                             VARCHAR2(100),                 --��ע
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IS_AppVersion_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_AppVersion APP�汾
prompt =============================
prompt
CREATE TABLE pcace.ZIS_AppVersion(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(200),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    c1                             NUMBER(3,0),                   --app code
    c2                             VARCHAR2(20),                  --�汾��
    c3                             VARCHAR2(200),                 --���ص�ַ
    c4                             VARCHAR2(2000),                --�汾˵��
    c5                             NUMBER(6,0),                   --״̬
    c6                             VARCHAR2(100),                 --��ע
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_Bulletin ����
prompt =============================
prompt
CREATE TABLE pcace.IS_Bulletin(
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(200),                 --����
    c2                             VARCHAR2(500),                 --����
    c3                             VARCHAR2(30),                  --������
    c4                             VARCHAR2(20),                  --��������
    c5                             NUMBER(6,0),                   --״̬
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IS_Bulletin_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Bulletin ����
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Bulletin(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(200),                 --����
    c2                             VARCHAR2(500),                 --����
    c3                             VARCHAR2(30),                  --������
    c4                             VARCHAR2(20),                  --��������
    c5                             NUMBER(6,0),                   --״̬
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
 
prompt
prompt Creating table pcace.IS_Organ ��˾����
prompt =============================
prompt
CREATE TABLE pcace.IS_Organ(
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(100),                 --��˾����
    c2                             VARCHAR2(30),                  --������
    c3                             NUMBER(6,0),                   --Ա������
    c4                             VARCHAR2(20),                  --��������
    c5                             VARCHAR2(500),                 --���
    c6                             VARCHAR2(50),                  --����
    c7                             NUMBER(6,0),                   --״̬
    c8                             VARCHAR2(32),                  --����AMID
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IS_Organ_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Organ ��˾����
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Organ(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(100),                 --��˾����
    c2                             VARCHAR2(30),                  --������
    c3                             NUMBER(6,0),                   --Ա������
    c4                             VARCHAR2(20),                  --��������
    c5                             VARCHAR2(500),                 --���
    c6                             VARCHAR2(50),                  --����
    c7                             NUMBER(6,0),                   --״̬
    c8                             VARCHAR2(32),                  --����AMID
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
 
 
prompt
prompt Creating table pcace.IS_Emp ��ҵ��Ա
prompt =============================
prompt
CREATE TABLE pcace.IS_Emp(
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(20),                  --����
    c2                             NUMBER(6,0),                   --������˾
    c3                             NUMBER(6,0),                   --����
    c4                             NUMBER(6,0),                   --ְλ
    c5                             NUMBER(14,0),                  --Ա�����
    c6                             NUMBER(6,0),                   --�Ա�
    c7                             NUMBER(6,0),                   --ְ��
    c8                             VARCHAR2(20),                  --��������
    c9                             NUMBER(6,0),                   --ѧ��
    c10                            NUMBER(6,0),                   --״̬
    c11                            NUMBER(11,0),                  --�ֻ�
    c12                            NUMBER(11,0),                  --�ֻ�2
    c13                            NUMBER(6,0),                   --����
    c14                            NUMBER(15,0),                  --QQ
    c15                            VARCHAR2(30),                  --email
    c16                            VARCHAR2(30),                  --��¼�˻�
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IS_Emp_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Emp ��ҵ��Ա
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Emp(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(20),                  --����
    c2                             NUMBER(6,0),                   --������˾
    c3                             NUMBER(6,0),                   --����
    c4                             NUMBER(6,0),                   --ְλ
    c5                             NUMBER(14,0),                  --Ա�����
    c6                             NUMBER(6,0),                   --�Ա�
    c7                             NUMBER(6,0),                   --ְ��
    c8                             VARCHAR2(20),                  --��������
    c9                             NUMBER(6,0),                   --ѧ��
    c10                            NUMBER(6,0),                   --״̬
    c11                            NUMBER(11,0),                  --�ֻ�
    c12                            NUMBER(11,0),                  --�ֻ�2
    c13                            NUMBER(6,0),                   --����
    c14                            NUMBER(15,0),                  --QQ
    c15                            VARCHAR2(30),                  --email
    c16                            VARCHAR2(30),                  --��¼�˻�
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
 
prompt
prompt Creating table pcace.IS_Department ����
prompt =============================
prompt
CREATE TABLE pcace.IS_Department(
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(30),                  --����
    c2                             NUMBER(6,0),                   --������˾
    c6                             NUMBER(6,0),                   --�ϼ�
    c3                             VARCHAR2(500),                 --ְ��
    c4                             NUMBER(6,0),                   --��������
    c5                             NUMBER(6,0),                   --�ڸ�����
    c7                             NUMBER(6,0),                   --״̬
    c8                             VARCHAR2(200),                 --��ע
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IS_Department_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Department ����
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Department(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(30),                  --����
    c2                             NUMBER(6,0),                   --������˾
    c6                             NUMBER(6,0),                   --�ϼ�
    c3                             VARCHAR2(500),                 --ְ��
    c4                             NUMBER(6,0),                   --��������
    c5                             NUMBER(6,0),                   --�ڸ�����
    c7                             NUMBER(6,0),                   --״̬
    c8                             VARCHAR2(200),                 --��ע
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_JobPosition ��λ
prompt =============================
prompt
CREATE TABLE pcace.IS_JobPosition(
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(30),                  --ְλ����
    c2                             NUMBER(6,0),                   --������˾
    c6                             NUMBER(6,0),                   --����
    c7                             NUMBER(6,0),                   --�ϼ�
    c8                             NUMBER(6,0),                   --����
    c4                             VARCHAR2(200),                 --ְ��
    c3                             NUMBER(6,0),                   --��Ч״̬
    c5                             VARCHAR2(200),                 --��ע
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IS_JobPosition_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_JobPosition ��λ
prompt =============================
prompt
CREATE TABLE pcace.ZIS_JobPosition(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --����ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --�������ܵȼ�
    dataStatus                     NUMBER(6,0) NOT NULL,          --����״̬
    c1                             VARCHAR2(30),                  --ְλ����
    c2                             NUMBER(6,0),                   --������˾
    c6                             NUMBER(6,0),                   --����
    c7                             NUMBER(6,0),                   --�ϼ�
    c8                             NUMBER(6,0),                   --����
    c4                             VARCHAR2(200),                 --ְ��
    c3                             NUMBER(6,0),                   --��Ч״̬
    c5                             VARCHAR2(200),                 --��ע
    istDate                        DATE DEFAULT sysdate,          --��������
    uptDate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
 
prompt
prompt Creating table pcace.IS_Rs_Computer ����-�����
prompt =============================
prompt
CREATE TABLE pcace.IS_Rs_Computer(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    c1                             VARCHAR2(30),                  --��������
    c2                             VARCHAR2(30),                  --Ʒ���ͺ�
    c3                             VARCHAR2(20),                  --��������
    c4                             VARCHAR2(30),                  --CPU
    c5                             VARCHAR2(30),                  --�Կ�
    c6                             VARCHAR2(30),                  --Ӳ��
    c7                             VARCHAR2(30),                  --�ڴ�
    c8                             VARCHAR2(30),                  --����ϵͳ
    c9                             VARCHAR2(50),                  --��;
    c10                            NUMBER(6,0),                   --״̬
    c11                            NUMBER(9,0),                   --������Ա
    c12                            VARCHAR2(20),                  --��������
    c13                            VARCHAR2(20),                  --�黹����
    c14                            VARCHAR2(100),                 --��ע
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IS_Rs_Computer_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Rs_Computer ����-�����
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Rs_Computer(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(200),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    c1                             VARCHAR2(30),                  --��������
    c2                             VARCHAR2(30),                  --Ʒ���ͺ�
    c3                             VARCHAR2(20),                  --��������
    c4                             VARCHAR2(30),                  --CPU
    c5                             VARCHAR2(30),                  --�Կ�
    c6                             VARCHAR2(30),                  --Ӳ��
    c7                             VARCHAR2(30),                  --�ڴ�
    c8                             VARCHAR2(30),                  --����ϵͳ
    c9                             VARCHAR2(50),                  --��;
    c10                            NUMBER(6,0),                   --״̬
    c11                            NUMBER(9,0),                   --������Ա
    c12                            VARCHAR2(20),                  --��������
    c13                            VARCHAR2(20),                  --�黹����
    c14                            VARCHAR2(100),                 --��ע
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_Rs_Others ����-����
prompt =============================
prompt
CREATE TABLE pcace.IS_Rs_Others(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    c1                             VARCHAR2(30),                  --���ʱ��
    c2                             VARCHAR2(30),                  --����
    c3                             VARCHAR2(30),                  --Ʒ���ͺ�
    c4                             VARCHAR2(100),                 --˵��
    c5                             VARCHAR2(20),                  --��������
    c6                             NUMBER(6,0),                   --��Ч���ޣ��꣩
    c7                             NUMBER(6,0),                   --״̬
    c8                             NUMBER(9,0),                   --������Ա
    c9                             VARCHAR2(20),                  --��������
    c10                            VARCHAR2(20),                  --�黹����
    c11                            VARCHAR2(100),                 --��ע
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    CONSTRAINT IS_Rs_Others_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Rs_Others ����-����
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Rs_Others(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(200),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    c1                             VARCHAR2(30),                  --���ʱ��
    c2                             VARCHAR2(30),                  --����
    c3                             VARCHAR2(30),                  --Ʒ���ͺ�
    c4                             VARCHAR2(100),                 --˵��
    c5                             VARCHAR2(20),                  --��������
    c6                             NUMBER(6,0),                   --��Ч���ޣ��꣩
    c7                             NUMBER(6,0),                   --״̬
    c8                             NUMBER(9,0),                   --������Ա
    c9                             VARCHAR2(20),                  --��������
    c10                            VARCHAR2(20),                  --�黹����
    c11                            VARCHAR2(100),                 --��ע
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_Server ������
prompt =============================
prompt
CREATE TABLE pcace.IS_Server(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    c1                             VARCHAR2(30),                  --����������
    c2                             VARCHAR2(100),                 --web��ַ
    c3                             NUMBER(6,0),                   --״̬
    c4                             VARCHAR2(30),                  --��ע
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Server ������
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Server(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(200),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    c1                             VARCHAR2(30),                  --����������
    c2                             VARCHAR2(100),                 --web��ַ
    c3                             NUMBER(6,0),                   --״̬
    c4                             VARCHAR2(30),                  --��ע
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate           --��������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

------------------------------------------------------------------------------------------------------------------
create sequence pcace.SEQ_T_Log_ID minvalue 1 maxvalue 999999999999 start with 1 increment by 1 cache 20;
create sequence pcace.SEQ_T_Message_ID minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20;
create sequence pcace.SEQ_IB_DataAttachFile_ID minvalue 1 maxvalue 999999999 start with 1 increment by 1 nocache;
create sequence pcace.SEQ_I_DataTableColumn_ID minvalue 1 maxvalue 999999999 start with 1 increment by 1 nocache;
create sequence pcace.SEQ_I_DTColumnExtInfo_ID minvalue 1 maxvalue 999999999 start with 1 increment by 1 nocache;
create sequence pcace.SEQ_IB_Formation_ID minvalue 1 maxvalue 999999999 start with 1 increment by 1 nocache;
create sequence pcace.SEQ_Z_DataHis_IID minvalue 1 maxvalue 999999999999 start with 1 increment by 1 cache 20;
------------------------------------------------------------------------------------------------------------------
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

create or replace function pcace.F_DataParam(
  a_status in integer
) return varchar2 is
  str varchar(20);
begin
  select NVL(className,'') into str from I_DataParamType where paramClassID=a_status;
  return str;
end;
/

create or replace function F_Price(price in number) return number is
  Result number;
begin
  Result := Round(10*price)/10;
  return(Result);
end;
/

create or replace function F_TotalPrice(price in number) return number is
  Result number;
begin
  Result := Round(100*price)/100;
  return(Result);
end;
/
------------------------------------------------------------------------------------------------------------------
create or replace VIEW pcace.VS_User AS
Select a.*,b.roleName,decode(b.power,null,-1,power) power,decode(b.sctLevel,null,-1,sctLevel) sctLevel,c.c5 cardNO,c.c1 empName,c.c2 organID,c.c3 departmentID,c.c4 jobID,d.c1 organName,200001 organType,e.c1 departmentName,f.c1 jobName
from pcace.S_User a,pcace.S_Role b,pcace.IS_Emp c,pcace.IS_Organ d,pcace.IS_Department e,pcace.IS_JobPosition f
where a.roleID = b.roleID(+) and a.empID=c.dataid(+) and c.c2=d.dataid(+) and c.c3=e.dataid(+) and c.c4=f.dataid(+);

create or replace VIEW pcace.VI_DataTable AS
select a.*, F_GetChildTableIDs(a.tableID) childTableIDs from I_DataTable a;

create or replace VIEW pcace.VI_DataTableColumn AS
Select a.*,a.colName colName_as,decode(b.id,null,-1,b.id) extID,extCode,extNameZh,extNameZhs,extNameEn,extNameEns,extDefine,
extShow,decode(extLength,null,0,extLength) extLength,decode(extPrecision,null,0,extPrecision) extPrecision,
extUnit,extValueScope,decode(b.extValueScopeTypeID,null,-1,b.extValueScopeTypeID) extValueScopeTypeID,extValueScopeTypeParam,
decode(b.extKeyIDFlag,null,-1,b.extKeyIDFlag) extKeyIDFlag,decode(b.extKeyNameFlag,null,-1,b.extKeyNameFlag) extKeyNameFlag,
decode(b.extKeywordFlag,null,-1,b.extKeywordFlag) extKeywordFlag,
decode(b.extQueryByFlag,null,-1,b.extQueryByFlag) extQueryByFlag,extRelationSubCols,extSynName,extRelateEnvironment,extVersion,
extMemo,decode(b.state,null,-1,b.state) extState,b.istDate extIstDate,b.uptDate extUptDate
from I_DataTableColumn a, I_DataTableColumnExtInfo b
where a.colid=b.colid(+);

create or replace VIEW pcace.VI_DataModuleColumn AS
Select dataType,dataTypeStr,dataLen,dataDotLen,nullFlag,def,dataCol1Num,dataCol2Num,dataCol3Num,
c.*,decode(b.id,null,-1,b.id) extID,extCode,extNameZh,extNameZhs,extNameEn,extNameEns,extDefine,
extShow,decode(extLength,null,0,extLength) extLength,decode(extPrecision,null,0,extPrecision) extPrecision,
extUnit,extValueScope,decode(b.extValueScopeTypeID,null,-1,b.extValueScopeTypeID) extValueScopeTypeID,extValueScopeTypeParam,
decode(b.extKeyIDFlag,null,-1,b.extKeyIDFlag) extKeyIDFlag,decode(b.extKeyNameFlag,null,-1,b.extKeyNameFlag) extKeyNameFlag,
extRelationSubCols,extSynName,extRelateEnvironment,extVersion,extMemo,decode(b.state,null,-1,b.state) extState,b.istDate extIstDate,b.uptDate extUptDate
from I_DataTableColumn a, I_DataModuleColumn c, I_DataTableColumnExtInfo b
where a.colid=c.colid and a.colid=b.colid(+);

------------------------------------------------------------------------------------------------------------------
create or replace package pcace.pkg_pcace_web is

end pkg_pcace_web;
/


-------------------------------------------------------------------------------------------------------------
prompt
prompt Creating sys.job pcace.pkg_pcace_stat.SP_Order_Check
prompt ==================================
prompt
declare
  jobno number;
begin
  sys.dbms_job.submit(job => jobno,
                      what => 'pcace.pkg_pcace_OrderStat.SP_Order_Check;',
                      next_date => sysdate,
                      interval => 'to_date(to_char(sysdate,''yyyymmddhh24mi''),''yyyymmddhh24mi'')+2/(60*24)');
  commit;
end;
/
prompt
prompt Creating sys.job pcace.pkg_pcace_stat.SP_StatManager
prompt ==================================
prompt
declare
  jobno number;
begin
  sys.dbms_job.submit(job => jobno,
                      what => 'pcace.pkg_pcace_OrderStat.SP_StatManager;',
                      next_date => sysdate,
                      interval => 'trunc(sysdate, ''hh'')+floor(to_char(sysdate,''mi'')/1+1)*1/(60*24)'); --2����һ��
  commit;
end;
/

-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
delete from pcace.I_Area;
insert into pcace.I_Area(id,areaName,areaID,state,areaLevel,upAreaID,remark) values(1,'����',1000,1,201001,0,'');
insert into pcace.I_Area(id,areaName,areaID,state,areaLevel,upAreaID,remark) values(2,'������',1001,1,201002,1000,'');
commit;

delete from pcace.I_DataTableType;
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(100000,'ҵ�����ݹ���',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(100009,'�������ݹ���',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(200000,'��˾��֯����',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(300000,'��վ��Դ����',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(400001,'OA��������',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(900000,'ϵͳ����',201001,-1,1);
commit;
update pcace.I_DataTableType a set childNum=(select count(*) from pcace.I_DataTableType b where parentID = a.tableTypeID);
update pcace.I_DataTableType a set childNum=childNum+(select count(*) from pcace.I_DataTable where tableTypeID = a.tableTypeID);
commit;
update pcace.I_DataParamType a set childNum=(select count(*) from pcace.I_DataParamType b where parentID = a.paramClassID);
commit;
update pcace.I_DataTable a set childTableNum=(select count(*) from pcace.I_DataTable b where parentTableID = a.tableID);
commit;

delete from pcace.I_SystemParam;
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(1  ,'100','���̷���','100001','��������',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(2  ,'100','���̷���','100002','��������',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(3  ,'100','���̷���','100003','��Ŀ����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(4  ,'100','���̷���','100004','��������',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(8  ,'101','���̾���ģʽ','101001','һ������һ�˴���',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(9  ,'101','���̾���ģʽ','101002','��������һ�˴���',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(10 ,'101','���̾���ģʽ','101003','�����������˲��д���',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(11 ,'102','����ѡ�˹��˹���','102001','����ѡ��ȫ��ָ���ľ�����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(12 ,'102','����ѡ�˹��˹���','102002','ֻ����ѡ�񱾲��ž�����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(13 ,'102','����ѡ�˹��˹���','102003','ֻ����ѡ���ϼ����ž�����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(14 ,'102','����ѡ�˹��˹���','102004','ֻ����ѡ���¼����ž�����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(15 ,'102','����ѡ�˹��˹���','102005','ֻ����ѡ�񱾽�ɫ������',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(20 ,'103','�����Զ�ѡ�˹���','103001','�������Զ�ѡ��',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(21 ,'103','�����Զ�ѡ�˹���','103002','�Զ�ѡ�����̷�����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(22 ,'103','�����Զ�ѡ�˹���','103003','�Զ�ѡ�񱾲�������',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(23 ,'103','�����Զ�ѡ�˹���','103004','�Զ�ѡ���ϼ������쵼',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(24 ,'103','�����Զ�ѡ�˹���','103005','�Զ�ѡ���³���һ���������ܣ�',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(25 ,'103','�����Զ�ѡ�˹���','103006','�Զ�ѡ���ܾ��������������ܣ�',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(26 ,'103','�����Զ�ѡ�˹���','103007','�Զ�ѡ��ָ�����辭����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(27 ,'103','�����Զ�ѡ�˹���','103008','�Զ�ѡ��ָ���ֶ�',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(90 ,'200','��������','200001','��˾',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(100,'201','�ȼ�','201000','-',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(101,'201','�ȼ�','201001','һ��',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(102,'201','�ȼ�','201002','����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(103,'201','�ȼ�','201003','����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(104,'201','�ȼ�','201004','�ļ�',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(105,'201','�ȼ�','201005','�弶',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(106,'201','�ȼ�','201006','����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(107,'201','�ȼ�','201007','�߼�',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(108,'201','�ȼ�','201008','�˼�',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(109,'201','�ȼ�','201009','�ż�',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(110,'201','�ȼ�','201010','ʮ��',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(111,'202','��������','202001','NUMBER',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(112,'202','��������','202002','VARCHAR2',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(113,'202','��������','202003','DATE',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(114,'202','��������','202004','CHAR',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(115,'202','��������','202005','TEXT',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(116,'202','��������','202006','DATETIME',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(117,'202','��������','202007','FILE',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(118,'202','��������','202008','IMG_FILE',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(119,'202','��������','202009','IMG_LINK',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(120,'202','��������','202010','MD5������',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(121,'202','��������','202011','�����UGID',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(122,'202','��������','202012','��ѡ��',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(123,'202','��������','202013','��ѡ��',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(131,'204','��������','204001','ͼƬ',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(132,'204','��������','204002','��Ƶ',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(133,'204','��������','204003','��Ƶ',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(134,'204','��������','204004','�ı�',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(141,'205','����','205001','�й�����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(142,'205','����','205002','Ӣ��',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(143,'205','����','205003','����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(144,'205','����','205004','����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(145,'205','����','205005','����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(149,'206','���麯��','206000','groupby',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(150,'206','���麯��','206001','sum',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(151,'206','���麯��','206002','max',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(152,'206','���麯��','206003','min',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(153,'206','���麯��','206004','count',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(200,'801','����״̬','801000','��ʼ',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(201,'801','����״̬','801001','�ȴ�У��',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(202,'801','����״̬','801003','�ȴ�������',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(203,'801','����״̬','801004','����⣬�ȴ�����',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(204,'801','����״̬','801005','�Ѷ���',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(205,'801','����״̬','801009','�ѷ���',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(301,'802','�ܼ�','802001','����',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(302,'802','�ܼ�','802002','�ڲ�',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(303,'802','�ܼ�','802003','����',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(304,'802','�ܼ�','802004','����',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(305,'802','�ܼ�','802005','����',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(306,'803','ֵ���','803001','����Ӧ���ֵ�',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(307,'803','ֵ���','803002','Ĭ��ֵ����ǰ��¼��Ϣ',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(308,'803','ֵ���','803003','Ĭ��ֵ����ǰ����',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(309,'803','ֵ���','803004','Ĭ��ֵ����������',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(314,'803','ֵ���','803008','Ĭ��ֵ���Զ���',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(315,'803','ֵ���','803009','ҵ������',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(316,'803','ֵ���','803010','ҵ�������ֶ�',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(317,'803','ֵ���','803011','�����ļ�',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(318,'803','ֵ���','803012','�����ļ���',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(400,'900','ϵͳ�������Ƿ��ӡ���ݲ�ѯ���','900001','0',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(403,'902','ҵ��������ļ�������web��ַ','902001','http://www.ace-elite.com/fileserver/',null,1,1); --http://118.178.126.204/fileserver/
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(404,'903','ҵ��������ļ�������Ӳ�̵�ַ','903001','E:\Tomcat\webapps\fileserver\',null,1,1); --E:\Tomcat\webapps\fileserver\
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(405,'904','ҵ�������APP_Server��ַ','904001','http://120.27.249.104:8099/aceserver/',null,1,1); --http://118.178.126.204:80992/aceserver/
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(406,'905','ҵ�������ƻ������','905001','1',null,1,1);
commit;


----------------------------------------------------------------------

----------------------------------------------------------------------
delete from pcace.S_Param;
commit;


--�ָ���ɾ������
--select dbms_flashback.get_system_change_number from dual;
--select count(*) from BO_Order_GoodsDetail as of scn 10671000;