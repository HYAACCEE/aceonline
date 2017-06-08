--------------------------------------------
-- user: pcace                            --
-- Created by wxl on 2016-10-28           --
-- updated by wxl on 2016-10-28           --
-- 此文件为数据库初始化文件，请谨慎修改              --
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
    power                          CHAR(1) DEFAULT '0',                --管理员权限：0-非 1-管理员 2-超级管理员
    state                          CHAR(1) NOT NULL,                   --状态:0-暂停使用 1-有效
    organType                      NUMBER(6,0) DEFAULT -1,
    sctLevel                       NUMBER(6,0) DEFAULT -1,      --密级
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
    power                          VARCHAR2(20) DEFAULT '',  --第1位:查看 第2位:添加  第3位:复制  第4位:编辑 第5位:删除 第6位:导入 第7位:导出（0-无 1-本人 2-本地区 9-所有）
    CONSTRAINT S_Role_Module_PK PRIMARY KEY (roleID, moduleID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

------------------------------------------------------------------------------------------------------------


delete from pcace.S_Module;
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('10.0','首页',1,1,'',0,'system/S_Main','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.01','通用数据编辑',1,0,'10.0',0,'biz/B_DataPublic','','11111111',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.02','子表数据管理',1,0,'10.0',0,'biz/B_DataPublicChild','','11111111',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.03','通用数据查看',1,0,'10.0',0,'biz/B_DataPublicQuery','','10000000',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.04','子表数据查看',1,0,'10.0',0,'biz/B_DataPublicQueryChild','','10000000',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.05','历史数据查看',1,0,'10.0',0,'biz/B_DataPublicHis','','10000000',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.06','通用数据模块',1,0,'10.0',0,'biz/B_DataModule','','11111111',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('10.07','数据导入',1,0,'10.0',0,'biz/B_DataAdds','','11000000',2);

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.0','业务管理',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.01','地图查询',1,1,'30.0',0,'biz/B_Map','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.02','统计报表',1,1,'30.0',0,'biz/B_Stat','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.03','决策管理',1,1,'30.0',0,'biz/B_Situation','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('30.04','监控告警',1,1,'30.0',0,'biz/B_Monitor','','');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('40.0','基本信息管理',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('40.01','登录用户',1,1,'40.0',0,'biz/B_DataPub_102','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('40.02','基站管理',1,1,'40.0',0,'biz/B_DataPub_104','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('40.03','告警管理',1,1,'40.0',0,'biz/B_DataPub_111','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('42.01','商品二维码',1,1,'40.0',0,'biz/B_DataPub_119','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('42.01.01','打印二维码',1,0,'42.01',0,'biz/B_DataPub_119_BGoodsQR','','');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.0','公司组织管理',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.01','业务公司管理',1,1,'50.0',0,'biz/B_DataPub_1','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.02','从业人员管理',1,1,'50.0',0,'biz/B_DataPub_2','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.02.01','登录帐户启用',1,0,'50.02',0,'biz/B_DataPub_2_BUserStart','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('50.02.01.1','登录帐户启用',1,0,'50.02.01',0,'system/S_UserStart','','',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.02.02','登录帐户停用',1,0,'50.02',0,'biz/B_DataPub_2_BUserStop','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('50.02.02.1','登录帐户停用',1,0,'50.02.02',0,'system/S_UserStop','','',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.02.03','人员结构树',1,0,'50.02',0,'biz/B_DataPub_2_AEmpTree','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.03','部门管理',1,1,'50.0',0,'biz/B_DataPub_3','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.03.01','组织结构图',1,0,'50.03',0,'biz/B_DataPub_3_AJobStruct','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.03.02','组织树',1,0,'50.03',0,'biz/B_DataPub_3_AJobTree','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.04','岗位管理',1,1,'50.0',0,'biz/B_DataPub_4','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.04.01','岗位结构图',1,0,'50.04',0,'biz/B_DataPub_4_AJobPosition','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.05','计算机管理',1,1,'50.0',0,'biz/B_DataPub_7','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('50.06','其他物资管理',1,1,'50.0',0,'biz/B_DataPub_8','','11111111');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('89.0','个人中心',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('89.01','修改密码',1,1,'89.0',0,'S_Mpsd','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('89.02','配置打印机',1,1,'89.0',0,'biz/I_EmpInfo','','');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.0','系统管理',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.11','公告',1,1,'90.0',0,'biz/B_DataPub_5','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.12','APP版本管理',1,1,'90.0',0,'biz/B_DataPub_10','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.13','APP模块',1,1,'90.0',0,'biz/B_DataPub_23','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.13.01','子表-模块明细',1,0,'90.13',0,'biz/B_DataPubChild_23_24','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.13.02','复制模块及明细',1,0,'90.13',0,'biz/B_DataPub_23_BAppModule_CopyDetail','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.13.03','同步APP服务器',1,0,'90.13',0,'biz/B_DataPub_23_AAppModule_SynAppServer','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.14','APP角色',1,1,'90.0',0,'biz/B_DataPub_25','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.14.01','子表-权限',1,0,'90.91',0,'biz/B_DataPubChild_25_26','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.90','DOT模块',1,1,'90.0',0,'biz/B_DataPub_19','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.90.01','子表-模块明细',1,0,'90.90',0,'biz/B_DataPubChild_19_22','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.91','DOT岗位',1,1,'90.0',0,'biz/B_DataPub_20','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.91.01','子表-权限',1,0,'90.91',0,'biz/B_DataPubChild_20_21','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.92','DOT用户',1,1,'90.0',0,'biz/B_DataPub_18','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.93','推送历史',1,1,'90.0',0,'biz/B_DataPub_11','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.94','短信历史',1,1,'90.0',0,'biz/B_DataPub_11','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.95','用户登录信息',1,1,'90.0',0,'biz/B_DataPub_8','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.96','用户定位信息',1,1,'90.0',0,'biz/B_DataPub_9','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.97','定位日志',1,1,'90.0',0,'biz/B_DataPub_13','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.98','聊天日志',1,1,'90.0',0,'biz/B_DataPub_14','','11111111');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('90.99','业务日志',1,1,'90.0',0,'system/M_LogQuery','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.01','帐户管理',1,1,'90.0',0,'system/S_User','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.01.4','登录帐户启用',1,0,'91.01',0,'system/S_UserStart','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.01.5','登录帐户停用',1,0,'91.01',0,'system/S_UserStop','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.01.6','登录帐户启用申请',1,0,'91.01',0,'system/S_UserStartApply','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.02','角色管理',1,1,'90.0',0,'system/S_Role','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('91.05','性能监控',1,1,'90.0',0,'system/S_PerformanceQuery','','');

insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.0','超级管理',1,1,'',1,'','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.00','测试',1,1,'99.0',0,'system/TestSql','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.01','日志管理',1,1,'99.0',0,'system/S_Log','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.02','系统参数管理',0,0,'99.0',0,'system/S_Param','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.03','模块管理',1,1,'99.0',0,'system/S_Module','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.04','平台接口管理',0,0,'99.0',0,'system/S_PlatForm','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.05','类别参数配置',1,1,'99.0',0,'biz/I_SystemParam','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.06','数据应用字典管理',1,1,'99.0',0,'biz/I_DataParamType','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.07','数据表类别管理',1,1,'99.0',0,'biz/I_DataTableType','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10','数据表配置',1,1,'99.0',0,'biz/I_DataTable','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.1','数据表新增',1,0,'99.10',0,'biz/I_DataTableAdd','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.2','数据表编辑',1,0,'99.10',0,'biz/I_DataTableEdit','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.3','数据表删除',1,0,'99.10',0,'biz/I_DataTableDel','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.4','元数据编辑',1,0,'99.10',0,'biz/I_DataTableColumnExtInfo','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.10.5','列删除',1,0,'99.10',0,'biz/I_DataTableColumnDel','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.11','流程配置',1,1,'99.0',0,'biz/I_Process','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power,bizType) values('99.11.1','流程步骤管理',1,0,'99.11',0,'biz/I_ProcessDesc','','',2);
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.19','编辑器',1,1,'99.0',0,'xml/B_Editor','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.20','工具',1,1,'99.0',0,'biz/B_Manager','','');
insert into pcace.S_Module(moduleID,moduleName,state,ismenu,parent,haschild,url,img,power) values('99.21','服务器配置',1,1,'99.0',0,'biz/B_DataPub_6','','11111111');
commit;


delete from pcace.S_Role_Module;
insert into pcace.S_Role_Module select 2,moduleid,'' from pcace.S_Module where state = 1 and moduleID<'99.0' order by moduleid;
insert into pcace.S_Role_Module select 100,moduleid,'' from pcace.S_Module where state = 1 and moduleID<'99.0' order by moduleid;
insert into pcace.S_Role_Module select 201,moduleid,'' from pcace.S_Module where state = 1 and moduleID<'20.0' order by moduleid;
insert into pcace.S_Role_Module select 202,moduleid,'' from pcace.S_Module where state = 1 and moduleID<'20.0' order by moduleid;
commit;

delete from pcace.S_Role;
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(1,'超级管理员',9,0,-1,802005,1);
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(2,'系统管理员',9,1,-1,802005,1);
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(100,'数据管理员',0,100,-1,802005,1);
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(199,'测试用户',0,199,-1,802001,1);
insert into pcace.S_Role(roleID,roleName,power,roleSeq,organType,sctLevel,state) values(400,'普通用户',0,400,-1,802001,1);
commit;

delete from pcace.S_User;
insert into pcace.S_User values(0,'999','6d09bf21970aab74d3e7bd71a620f638','6d09bf21970aab74d3e7bd71a620f638','超级管理员',1,1,0,1,sysdate,'super',-1,0,-1,sysdate,sysdate);
insert into pcace.S_User values(1,'0001','cf79ae6addba60ad018347359bd144d2','cf79ae6addba60ad018347359bd144d2','系统管理员',2,1,0,1,sysdate,'default',-1,2,-1,sysdate,sysdate);
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
prompt Creating table pcace.I_Area 地区信息表
prompt =============================
CREATE TABLE pcace.I_Area
(
    id                             NUMBER(6,0) NOT NULL,      --ID
    areaName                       VARCHAR2(50) NOT NULL,     --地区名称
    areaID                         NUMBER(6,0) not null,      --地区编号
    areaCode                       VARCHAR2(4),               --区号
    state                          CHAR(1) NOT NULL,          --状态:0：无效 1：有效
    areaLevel                      NUMBER(6,0) not null,      --级别：1：一级 2：二级 3：三级
    upAreaID                       NUMBER(4,0) not null,      --上级:0:无
    remark                         VARCHAR2(100),             --备注
    istDate                        DATE DEFAULT sysdate,
    uptDate                        DATE DEFAULT sysdate,
    CONSTRAINT I_Area_PK PRIMARY KEY (areaID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.I_SystemParam 类别参数表
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
prompt Creating table pcace.I_DataParamType 数据应用字典
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
prompt Creating table pcace.I_DataTableType 数据表类别
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
prompt Creating table pcace.I_DataTable 数据表
prompt =============================
CREATE TABLE pcace.I_DataTable
(
    tableID                          NUMBER(6,0) NOT NULL,      --数据表表ID
    tableName                        VARCHAR2(100) NOT NULL,    --数据名称
    tableMemo                        VARCHAR2(100) NOT NULL,    --数据说明
    ServerPath                       VARCHAR2(50),              --服务器路径
    tableTypeID                      NUMBER(6,0) NOT NULL,      --数据表类别
    colNum                           NUMBER(4,0) DEFAULT 0,     --列数
    dataNum                          NUMBER(9,0) DEFAULT 0,     --数据条数
    sctLevel                         NUMBER(6,0) NOT NULL,      --密级
    sequenceFlag                     CHAR(1) DEFAULT '0',       --是否启用序列
    pkFlag                           CHAR(1) DEFAULT '0',       --是否启用主键
    sidFlag                          CHAR(1) DEFAULT '0',       --是否系统标识表
    scopeFlag                        CHAR(1) DEFAULT '0',       --是否值域数据表
    attachFileFlag                   CHAR(1) DEFAULT '0',       --多媒体信息开关
    dataStatusFlag                   CHAR(1) DEFAULT '0',       --数据状态开关
    sctLevelFlag                     CHAR(1) DEFAULT '0',       --密级开关
    otherButtons                     VARCHAR2(200),             --其他功能菜单
    parentTableID                    NUMBER(6,0) DEFAULT -1,    --父表ID
    childTableNum                    NUMBER(4,0) DEFAULT 0,     --子表数
    state                            CHAR(1) DEFAULT '1',       --是否有效
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataTable_PK PRIMARY KEY (tableID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--drop table pcace.I_DataTableColumn;
prompt
prompt Creating table pcace.I_DataTableColumn 数据属性定义表
prompt =============================
CREATE TABLE pcace.I_DataTableColumn
(
    colid                            NUMBER(9,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --主表ID
    colName                          VARCHAR2(100) NOT NULL,    --列名称
    dataTypeStr                      VARCHAR2(50) NOT NULL,     --数据类型字符串
    dataType                         NUMBER(6,0) NOT NULL,      --数据类型
    dataLen                          NUMBER(6,0) NOT NULL,      --数据总长度
    dataDotLen                       NUMBER(2,0) DEFAULT 0,     --数据小数长度（仅对数值有效）
    colMemo                          VARCHAR2(100) NOT NULL,    --列备注
    nullFlag                         CHAR(1) DEFAULT '1',       --允许为空
    def                              VARCHAR2(100) DEFAULT '',  --默认值
    dataCol1Num                      NUMBER(2,0) DEFAULT 0,     --相同列1数目
    dataCol2Num                      NUMBER(2,0) DEFAULT 0,     --相同列2数目
    dataCol3Num                      NUMBER(2,0) DEFAULT 0,     --相同列3数目
    sctLevel                         NUMBER(6,0) NOT NULL,      --密级
    seq                              NUMBER(6,0) NOT NULL,      --排序
    listShowFlag                     CHAR(1) DEFAULT 1,         --列表中是否显示
    showWidth                        NUMBER(6,0) DEFAULT 0,     --列表显示宽度
    formShowFlag                     CHAR(1) DEFAULT 1,         --表单中是否显示（隐藏域可在元数据中配置自动输入值）
    state                            CHAR(1) DEFAULT '1',       --是否有效
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataTableColumn_PK PRIMARY KEY (colid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.I_DataTableColumnExtInfo 数据列的元数据
prompt =============================
CREATE TABLE pcace.I_DataTableColumnExtInfo
(
    id                               NUMBER(11,0) NOT NULL,
    colid                            NUMBER(9,0) NOT NULL,      --列ID
    tableID                          NUMBER(6,0) NOT NULL,      --主表ID
    extCode                          NUMBER(6,0) NOT NULL,      --标识符
    extNameZh                        VARCHAR2(100) NOT NULL,    --中文名称
    extNameZhs                       VARCHAR2(20) NULL,         --中文名称缩写
    extNameEn                        VARCHAR2(100) NULL,        --英文名称
    extNameEns                       VARCHAR2(20) NULL,         --英文名称缩写
    extNameFr1                       VARCHAR2(100) NULL,        --外文1名称
    extNameFr1s                      VARCHAR2(20) NULL,         --外文1名称缩写
    extNameFr2                       VARCHAR2(100) NULL,        --外文2名称
    extNameFr2s                      VARCHAR2(20) NULL,         --外文2名称缩写
    extNameFr3                       VARCHAR2(100) NULL,        --外文3名称
    extNameFr3s                      VARCHAR2(20) NULL,         --外文3名称缩写
    extDefine                        VARCHAR2(200) NULL,        --定义
    extShow                          VARCHAR2(20) NULL,         --表示
    extLength                        NUMBER(6,0) NULL,          --长度
    extPrecision                     NUMBER(6,0) NULL,          --精度
    extUnit                          VARCHAR2(20) NULL,         --单位
    extValueScope                    VARCHAR2(100) NULL,        --值域显示
    extValueScopeTypeID              NUMBER(6,0) NULL,          --值域ID
    extValueScopeTypeParam           VARCHAR2(50) NULL,         --值域类别
    extRelationSubCols               VARCHAR2(50) NULL,         --关联下级列
    extKeyIDFlag                     CHAR(1) DEFAULT '0',       --是否主键ID
    extKeyNameFlag                   CHAR(1) DEFAULT '0',       --是否主键名称
    extKeywordFlag                   CHAR(1) DEFAULT '0',       --是否关键字搜索域
    extQueryByFlag                   CHAR(1) DEFAULT '0',       --是否查询条件
    extSynName                       VARCHAR2(50) NULL,         --同义名称
    extRelateEnvironment             VARCHAR2(100) NULL,        --相关环境
    extVersion                       VARCHAR2(20) NULL,         --版本号
    extMemo                          VARCHAR2(200) NULL,        --备注
    state                            CHAR(1) DEFAULT '1',       --是否有效
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataTableColumnExtInfo_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--drop table pcace.I_DataModule;
prompt
prompt Creating table pcace.I_DataModule 数据模块表
prompt =============================
CREATE TABLE pcace.I_DataModule
(
    moduleID                         VARCHAR2(30) NOT NULL,     --模块ID
    moduleName                       VARCHAR2(100) NOT NULL,    --模块名称
    viewName                         VARCHAR2(100) NOT NULL,    --视图名称
    viewSql                          VARCHAR2(1000) NOT NULL,   --视图SQL
    tableIDs                         VARCHAR2(100) NOT NULL,    --数据表
    colNum                           NUMBER(4,0) DEFAULT 0,     --列数
    sctLevel                         NUMBER(6,0) NOT NULL,      --密级
    attachFileFlag                   CHAR(1) DEFAULT '0',       --多媒体信息开关
    sctLevelFlag                     CHAR(1) DEFAULT '0',       --密级开关
    otherCondition                   VARCHAR2(200),             --其他SQL条件
    otherButtons                     VARCHAR2(200),             --其他功能菜单
    state                            CHAR(1) DEFAULT '1',       --是否有效
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataModule_PK PRIMARY KEY (moduleID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


--drop table pcace.I_DataModuleColumn;
prompt
prompt Creating table pcace.I_DataModuleColumn 数据模块定义表
prompt =============================
CREATE TABLE pcace.I_DataModuleColumn
(
    id                               NUMBER(9,0) NOT NULL,
    moduleID                         VARCHAR2(30) NOT NULL,     --模块ID
    tableID                          NUMBER(6,0) NOT NULL,      --主表ID
    colid                            NUMBER(9,0) NOT NULL,
    colMemo                          VARCHAR2(100),             --列备注
    colstr                           VARCHAR2(100),             --（列说明）
    colName                          VARCHAR2(30),              --列名
    colName_as                       VARCHAR2(20),              --列别名
    sctLevel                         NUMBER(6,0) NOT NULL,      --密级
    seq                              NUMBER(6,0) NOT NULL,      --排序
    groupFunc                        NUMBER(6,0) NOT NULL,      --分组函数
    listShowFlag                     CHAR(1) DEFAULT 1,         --列表中是否显示
    showWidth                        NUMBER(6,0) DEFAULT 0,     --列表显示宽度
    formShowFlag                     CHAR(1) DEFAULT 1,         --表单中是否显示（隐藏域可在元数据中配置自动输入值）
    extKeywordFlag                   CHAR(1) DEFAULT '0',       --是否关键字搜索域
    extQueryByFlag                   CHAR(1) DEFAULT '0',       --是否查询条件
    state                            CHAR(1) DEFAULT '1',       --是否有效
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT I_DataModuleColumn_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.I_Process 流程
prompt =============================
CREATE TABLE pcace.I_Process
(
    psid                           NUMBER(6,0),                   --PSID
    organID                        NUMBER(6,0),                   --公司名称
    processName                    VARCHAR2(50),                  --流程名称
    processType                    NUMBER(6,0),                   --流程分类
    creator                        NUMBER(6,0),                   --创建者
    tableID                        NUMBER(6,0),                   --流程主表
    state                          NUMBER(6,0),                   --有效状态
    remark                         VARCHAR2(500),                 --备注
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT I_Process_PK PRIMARY KEY (psid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.I_ProcessDesc 流程过程说明
prompt =============================
CREATE TABLE pcace.I_ProcessDesc
(
    ccid                           NUMBER(9,0),
    psid                           NUMBER(6,0),                   --PSID
    seq                            NUMBER(2,0),                   --序号
    processTitle                   VARCHAR2(50),                  --过程标题
    processDesc                    VARCHAR2(200),                 --过程说明
    nextSeq                        VARCHAR2(20),                  --下一过程序号，以逗号分隔，-1表示结束
    conditions                     VARCHAR2(500),                 --条件设置
    processCols                    VARCHAR2(1000),                 --过程字段说明：可见 隐藏 可写
    processActorMode               NUMBER(6,0),                   --经手模式：一人处理 多人处理
    processActor                   VARCHAR2(200),                 --经手人(人员)
    processActorDepartment         VARCHAR2(200),                 --经手人(部门)
    processActorRole               VARCHAR2(200),                 --经手人(角色)
    actorSelectRule                NUMBER(6,0),                   --选人过滤规则
    actorAutoSelectRule            NUMBER(6,0),                   --自动选人规则
    actorAutoSelectRuleMemo        VARCHAR2(30),                  --自动选人备存
    attachFilePower                VARCHAR2(6),                   --附件操作权限：新建 编辑 删除 下载 打印
    attachFileEditFlag             CHAR(1),                       --是否允许本步骤经办人编辑附件
    state                          NUMBER(6,0),                   --有效状态
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT I_ProcessDesc_PK PRIMARY KEY (ccid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_Process 工作流程
prompt =============================
CREATE TABLE pcace.IB_Process
(
    processID                      NUMBER(9,0),                   --流程ID
    processTitle                   VARCHAR2(200),                 --流程标题
    organID                        NUMBER(6,0),                   --公司名称
    psid                           NUMBER(6,0),                   --psid
    tableID                        NUMBER(6,0),                   --主表ID
    dataid                         NUMBER(9,0),                   --主表数据ID
    creator                        NUMBER(6,0),                   --创建者
    curSeq                         NUMBER(6,0),                   --当前步骤
    curActor                       VARCHAR2(200),                 --当前经手人
    curStatus                      VARCHAR2(200),                 --当前状态
    dealFlag                       NUMBER(6,0),                   --处理标记
    state                          NUMBER(6,0),                   --有效状态
    remark                         VARCHAR2(200),                 --备注
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IB_Process_PK PRIMARY KEY (processID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_ProcessDetail 流程审批明细
prompt =============================
CREATE TABLE pcace.IB_ProcessDetail
(
    id                             NUMBER(9,0),
    processID                      NUMBER(9,0),                   --流程ID
    seq                            NUMBER(6,0),                   --步骤序号
    status                         VARCHAR2(100),                 --步骤状态
    actor                          NUMBER(6,0),                   --经手人
    actResult                      NUMBER(6,0),                   --经手结果： 提交 拒绝 返回修改
    actMemo                        VARCHAR2(500),                 --经手意见
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IB_ProcessDetail_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_ProcessMemo 流程批注
prompt =============================
CREATE TABLE pcace.IB_ProcessMemo
(
    id                             NUMBER(9,0),
    processID                      NUMBER(9,0),                   --流程ID
    auther                         NUMBER(6,0),                   --批注人
    actMemo                        VARCHAR2(200),                 --批注意见
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IB_ProcessMemo_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_DataExtInfo 数据附加信息
prompt =============================
CREATE TABLE pcace.IB_DataExtInfo
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --数据表ID
    dataid                           NUMBER(9,0) NOT NULL,      --数据ID
    extCode                          NUMBER(6,0) NOT NULL,      --标识符
    extNameZh                        VARCHAR2(100) NOT NULL,    --中文名称
    extNameZhs                       VARCHAR2(20) NULL,         --中文名称缩写
    extNameEn                        VARCHAR2(100) NULL,        --英文名称
    extNameEns                       VARCHAR2(20) NULL,         --英文名称缩写
    extSummary                       VARCHAR2(200) NULL,        --摘要
    extSubject                       VARCHAR2(40) NULL,         --主题词
    attachFileNum                    NUMBER(6,0) DEFAULT 0,     --附件数
    dataResource                     VARCHAR2(100) NULL,        --数据来源
    dataDate                         DATE DEFAULT sysdate,      --数据时间
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataExtInfo_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataAttachFile;
prompt
prompt Creating table pcace.IB_DataAttachFile 数据附件信息
prompt =============================
CREATE TABLE pcace.IB_DataAttachFile
(
    id                               NUMBER(11,0) NOT NULL,     --id
    tableID                          NUMBER(6,0) NOT NULL,      --数据表ID
    dataid                           NUMBER(9,0) NOT NULL,      --数据ID
    fileName                         VARCHAR2(50) NULL,         --附件文件名
    fileMemo                         VARCHAR2(100) NULL,        --附件说明
    fileType                         NUMBER(6,0) NOT NULL,      --附件类别：图片 音频 视频
    fileFormat                       VARCHAR2(30) NULL,         --附件格式
    fileSize                         NUMBER(3,0) DEFAULT 0,      --附件大小(长度)
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataAttachFile_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataResource001;
prompt
prompt Creating table pcace.IB_DataResource001 数据来源信息-内部资料
prompt =============================
CREATE TABLE pcace.IB_DataResource001
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --数据表ID
    dataid                           NUMBER(9,0) NOT NULL,      --数据ID
    resourceName                     VARCHAR2(100) NOT NULL,    --全宗名称
    resourceCode                     VARCHAR2(20) NULL,         --文件编号
    resourceSubject                  VARCHAR2(100) NULL,        --主题词
    sctLevel                         NUMBER(6,0) NOT NULL,      --密级
    resourceType                     VARCHAR2(20) NULL,         --载体类型
    issueDepartment                  VARCHAR2(50) NULL,         --颁发部门
    issueDate                        VARCHAR2(20) NULL,         --颁发日期
    saveDepartment                   VARCHAR2(50) NULL,         --归档部门
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataResource001_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataResource002;
prompt
prompt Creating table pcace.IB_DataResource002 数据来源信息-现场采集
prompt =============================
CREATE TABLE pcace.IB_DataResource002
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --数据表ID
    dataid                           NUMBER(9,0) NOT NULL,      --数据ID
    collectObject                    VARCHAR2(50) NOT NULL,     --采集对象
    organName                        VARCHAR2(30) NULL,         --组织机构
    actionName                       VARCHAR2(30) NULL,         --行动名称
    actionArea                       VARCHAR2(30) NULL,         --行动地域
    actionStartDate                  VARCHAR2(20) NULL,         --行动起始时间
    actionEndDate                    VARCHAR2(20) NULL,         --行动终止时间
    actionDesc                       VARCHAR2(200) NULL,        --行动描述
    collectDevice                    VARCHAR2(30) NULL,         --采集设备
    createDate                       VARCHAR2(20) NULL,         --制作日期
    collectorName                    VARCHAR2(30) NULL,         --采集人员
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataResource002_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataResource003;
prompt
prompt Creating table pcace.IB_DataResource003 数据来源信息-文献资料
prompt =============================
CREATE TABLE pcace.IB_DataResource003
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --数据表ID
    dataid                           NUMBER(9,0) NOT NULL,      --数据ID
    title                            VARCHAR2(50) NOT NULL,     --题名
    subTitle                         VARCHAR2(50) NULL,         --副题名
    mainResponser                    VARCHAR2(10) NULL,         --主要责任者
    otherResponser                   VARCHAR2(30) NULL,         --其他责任者
    publishArea                      VARCHAR2(30) NULL,         --出版地
    publisher                        VARCHAR2(50) NULL,         --出版者
    publishDate                      VARCHAR2(20) NULL,         --出版日期
    subject                          VARCHAR2(50) NULL,         --主题词
    version                          VARCHAR2(10) NULL,         --版本号
    language                         VARCHAR2(50) NULL,         --语种
    startPage                        VARCHAR2(10) NULL,         --起始页
    endPage                          VARCHAR2(10) NULL,         --终止页
    sctLevel                         NUMBER(6,0) NULL,          --密级
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataResource003_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.IB_DataResource004;
prompt
prompt Creating table pcace.IB_DataResource004 数据来源信息-网络资源
prompt =============================
CREATE TABLE pcace.IB_DataResource004
(
    id                               NUMBER(11,0) NOT NULL,
    tableID                          NUMBER(6,0) NOT NULL,      --数据表ID
    dataid                           NUMBER(9,0) NOT NULL,      --数据ID
    title                            VARCHAR2(50) NOT NULL,     --题名
    subTitle                         VARCHAR2(50) NULL,         --副题名
    mainAuthor                       VARCHAR2(10) NULL,         --主要作者
    otherAuthor                      VARCHAR2(30) NULL,         --其他作者
    websiteName                      VARCHAR2(50) NULL,         --网站名称
    websiteUrl                       VARCHAR2(100) NULL,        --URL
    publishDate                      VARCHAR2(20) NULL,         --发布日期
    language                         VARCHAR2(50) NULL,         --语种
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_DataResource004_PK PRIMARY KEY (id)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IB_Formation 体系
prompt =============================
CREATE TABLE pcace.IB_Formation
(
    formationID                      NUMBER(9,0) NOT NULL,      --ID
    formationType                    NUMBER(6,0) NOT NULL,      --体系类别：编成体系 装备体系 ...
    formationName                    VARCHAR2(100) NOT NULL,    --名称
    nodeType                         NUMBER(6,0) NOT NULL,      --节点类型
    parentID                         NUMBER(9,0) NOT NULL,      --上级
    childNum                         NUMBER(9,0) DEFAULT 0,     --下级数目
    memo                             VARCHAR2(200) NULL,        --备注
    ext1                             VARCHAR2(100) NULL,        --
    ext2                             VARCHAR2(100) NULL,        --
    ext3                             VARCHAR2(100) NULL,        --
    state                            CHAR(1) DEFAULT '1',       --状态
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate,
    CONSTRAINT IB_Formation_PK PRIMARY KEY (formationID)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_DataLog;
prompt
prompt Creating table pcace.T_DataLog 数据更新日志
prompt =============================
CREATE TABLE pcace.T_DataLog
(
    id                               NUMBER(11,0) NOT NULL,
    logType                          NUMBER(6,0) NOT NULL,      --日志类别
    tableID                          NUMBER(6,0) NOT NULL,      --主表ID
    colid                            NUMBER(9,0) DEFAULT '-1',  --列ID
    dataid                           VARCHAR2(32) DEFAULT '-1', --数据ID
    extid                            NUMBER(9,0) DEFAULT '-1',  --数据附加信息ID
    title                            VARCHAR2(200) NOT NULL,    --操作标题
    Context                          VARCHAR2(1000) NOT NULL,    --操作日志内容
    userID                           VARCHAR2(50) NOT NULL,     --操作员ID
    userName                         VARCHAR2(200) NOT NULL,    --操作员姓名
    ipaddress                        VARCHAR2(50) NOT NULL,     --操作员IP
    istDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_MLog;
prompt
prompt Creating table pcace.T_MLog 手机日志
prompt =============================
CREATE TABLE pcace.T_MLog
(
    id                               NUMBER(11,0) NOT NULL,
    logType                          NUMBER(6,0) NOT NULL,      --日志类别
    tableID                          NUMBER(6,0) NOT NULL,      --主表ID
    colid                            NUMBER(9,0) DEFAULT '-1',  --列ID
    dataid                           NUMBER(9,0) DEFAULT '-1',  --数据ID
    extid                            NUMBER(9,0) DEFAULT '-1',  --数据附加信息ID
    title                            VARCHAR2(200) NOT NULL,    --操作标题
    Context                          VARCHAR2(1000) NOT NULL,    --操作日志内容
    userID                           VARCHAR2(50) NOT NULL,     --操作员ID
    userName                         VARCHAR2(200) NOT NULL,     --操作员姓名
    ipaddress                        VARCHAR2(50) NOT NULL,     --操作员IP
    istDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_Log;
prompt
prompt Creating table pcace.T_Log 临时日志（定期清理）
prompt =============================
CREATE TABLE pcace.T_Log
(
    id                               NUMBER(13,0) NOT NULL,
    logType                          NUMBER(6,0) NOT NULL,      --日志类别
    tableID                          NUMBER(6,0) DEFAULT '-1',  --主表ID
    colid                            NUMBER(9,0) DEFAULT '-1',  --列ID
    dataid                           VARCHAR2(32) DEFAULT '-1', --数据ID
    extid                            NUMBER(9,0) DEFAULT '-1',  --数据附加信息ID
    title                            VARCHAR2(200) NOT NULL,    --操作标题
    Context                          VARCHAR2(1000) NOT NULL,    --操作日志内容
    userID                           VARCHAR2(50) NOT NULL,     --操作员ID
    userName                         VARCHAR2(200) NOT NULL,     --操作员姓名
    ipaddress                        VARCHAR2(100) NOT NULL,     --操作员IP
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
prompt Creating table pcace.T_Message 信息表
prompt =============================
CREATE TABLE pcace.T_Message
(
    id                               NUMBER(9,0) NOT NULL,
    content                          VARCHAR2(500) NOT NULL,       --内容
    tableID                          NUMBER(9,0) default -1,       --数据类别表ID
    dataid                           NUMBER(9,0) default -1,       --数据ID
    actionID                         NUMBER(4,0) default -1,       --操作类型: 0:提交,1:校对,2:审核,3:退回,4:发布
    senderID                         NUMBER(9,0),                  --发送者ID
    senderName                       VARCHAR2(50),                 --发送者名称
    recverID                         NUMBER(9,0),                  --接收者ID
    recverName                       VARCHAR2(50),                 --接收者名称
    readFlag                         CHAR(1) default '0',          --已读标记:0-未读;1-已读
    sendShowFlag                     CHAR(1) default '1',          --是否在发送列表显示:0-不显示;1-显示
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

--DROP TABLE pcace.T_Mark;
prompt
prompt Creating table pcace.T_Mark 临时注记表
prompt =============================
CREATE TABLE pcace.T_Mark
(
    mark                             VARCHAR2(20) NOT NULL,     --注记名
    v1                               VARCHAR2(200) NOT NULL,    --值1
    v2                               VARCHAR2(200) NOT NULL,    --值2
    istDate                          DATE DEFAULT sysdate,
    uptDate                          DATE DEFAULT sysdate
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_AppVersion APP版本
prompt =============================
prompt
CREATE TABLE pcace.IS_AppVersion(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    c1                             NUMBER(3,0),                   --app code
    c2                             VARCHAR2(20),                  --版本号
    c3                             VARCHAR2(200),                 --下载地址
    c4                             VARCHAR2(2000),                --版本说明
    c5                             NUMBER(6,0),                   --状态
    c6                             VARCHAR2(100),                 --备注
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IS_AppVersion_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_AppVersion APP版本
prompt =============================
prompt
CREATE TABLE pcace.ZIS_AppVersion(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(200),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    c1                             NUMBER(3,0),                   --app code
    c2                             VARCHAR2(20),                  --版本号
    c3                             VARCHAR2(200),                 --下载地址
    c4                             VARCHAR2(2000),                --版本说明
    c5                             NUMBER(6,0),                   --状态
    c6                             VARCHAR2(100),                 --备注
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_Bulletin 公告
prompt =============================
prompt
CREATE TABLE pcace.IS_Bulletin(
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(200),                 --标题
    c2                             VARCHAR2(500),                 --内容
    c3                             VARCHAR2(30),                  --发布人
    c4                             VARCHAR2(20),                  --发布日期
    c5                             NUMBER(6,0),                   --状态
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IS_Bulletin_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Bulletin 公告
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Bulletin(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(200),                 --标题
    c2                             VARCHAR2(500),                 --内容
    c3                             VARCHAR2(30),                  --发布人
    c4                             VARCHAR2(20),                  --发布日期
    c5                             NUMBER(6,0),                   --状态
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
 
prompt
prompt Creating table pcace.IS_Organ 公司机构
prompt =============================
prompt
CREATE TABLE pcace.IS_Organ(
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(100),                 --公司名称
    c2                             VARCHAR2(30),                  --负责人
    c3                             NUMBER(6,0),                   --员工人数
    c4                             VARCHAR2(20),                  --成立日期
    c5                             VARCHAR2(500),                 --简介
    c6                             VARCHAR2(50),                  --域名
    c7                             NUMBER(6,0),                   --状态
    c8                             VARCHAR2(32),                  --主店AMID
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IS_Organ_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Organ 公司机构
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Organ(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(100),                 --公司名称
    c2                             VARCHAR2(30),                  --负责人
    c3                             NUMBER(6,0),                   --员工人数
    c4                             VARCHAR2(20),                  --成立日期
    c5                             VARCHAR2(500),                 --简介
    c6                             VARCHAR2(50),                  --域名
    c7                             NUMBER(6,0),                   --状态
    c8                             VARCHAR2(32),                  --主店AMID
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
 
 
prompt
prompt Creating table pcace.IS_Emp 从业人员
prompt =============================
prompt
CREATE TABLE pcace.IS_Emp(
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(20),                  --姓名
    c2                             NUMBER(6,0),                   --所属公司
    c3                             NUMBER(6,0),                   --部门
    c4                             NUMBER(6,0),                   --职位
    c5                             NUMBER(14,0),                  --员工编号
    c6                             NUMBER(6,0),                   --性别
    c7                             NUMBER(6,0),                   --职称
    c8                             VARCHAR2(20),                  --出生年月
    c9                             NUMBER(6,0),                   --学历
    c10                            NUMBER(6,0),                   --状态
    c11                            NUMBER(11,0),                  --手机
    c12                            NUMBER(11,0),                  --手机2
    c13                            NUMBER(6,0),                   --座机
    c14                            NUMBER(15,0),                  --QQ
    c15                            VARCHAR2(30),                  --email
    c16                            VARCHAR2(30),                  --登录账户
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IS_Emp_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Emp 从业人员
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Emp(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(20),                  --姓名
    c2                             NUMBER(6,0),                   --所属公司
    c3                             NUMBER(6,0),                   --部门
    c4                             NUMBER(6,0),                   --职位
    c5                             NUMBER(14,0),                  --员工编号
    c6                             NUMBER(6,0),                   --性别
    c7                             NUMBER(6,0),                   --职称
    c8                             VARCHAR2(20),                  --出生年月
    c9                             NUMBER(6,0),                   --学历
    c10                            NUMBER(6,0),                   --状态
    c11                            NUMBER(11,0),                  --手机
    c12                            NUMBER(11,0),                  --手机2
    c13                            NUMBER(6,0),                   --座机
    c14                            NUMBER(15,0),                  --QQ
    c15                            VARCHAR2(30),                  --email
    c16                            VARCHAR2(30),                  --登录账户
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
 
prompt
prompt Creating table pcace.IS_Department 部门
prompt =============================
prompt
CREATE TABLE pcace.IS_Department(
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(30),                  --部门
    c2                             NUMBER(6,0),                   --所属公司
    c6                             NUMBER(6,0),                   --上级
    c3                             VARCHAR2(500),                 --职责
    c4                             NUMBER(6,0),                   --编制人数
    c5                             NUMBER(6,0),                   --在岗人数
    c7                             NUMBER(6,0),                   --状态
    c8                             VARCHAR2(200),                 --备注
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IS_Department_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Department 部门
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Department(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(30),                  --部门
    c2                             NUMBER(6,0),                   --所属公司
    c6                             NUMBER(6,0),                   --上级
    c3                             VARCHAR2(500),                 --职责
    c4                             NUMBER(6,0),                   --编制人数
    c5                             NUMBER(6,0),                   --在岗人数
    c7                             NUMBER(6,0),                   --状态
    c8                             VARCHAR2(200),                 --备注
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_JobPosition 岗位
prompt =============================
prompt
CREATE TABLE pcace.IS_JobPosition(
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(30),                  --职位名称
    c2                             NUMBER(6,0),                   --所属公司
    c6                             NUMBER(6,0),                   --部门
    c7                             NUMBER(6,0),                   --上级
    c8                             NUMBER(6,0),                   --级别
    c4                             VARCHAR2(200),                 --职责
    c3                             NUMBER(6,0),                   --有效状态
    c5                             VARCHAR2(200),                 --备注
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IS_JobPosition_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_JobPosition 岗位
prompt =============================
prompt
CREATE TABLE pcace.ZIS_JobPosition(
    iid                            NUMBER(14,0) NOT NULL ,
    dataid                         NUMBER(9,0) NOT NULL,          --数据ID
    dataSctLevel                   NUMBER(6,0) NOT NULL,          --数据秘密等级
    dataStatus                     NUMBER(6,0) NOT NULL,          --数据状态
    c1                             VARCHAR2(30),                  --职位名称
    c2                             NUMBER(6,0),                   --所属公司
    c6                             NUMBER(6,0),                   --部门
    c7                             NUMBER(6,0),                   --上级
    c8                             NUMBER(6,0),                   --级别
    c4                             VARCHAR2(200),                 --职责
    c3                             NUMBER(6,0),                   --有效状态
    c5                             VARCHAR2(200),                 --备注
    istDate                        DATE DEFAULT sysdate,          --插入日期
    uptDate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
 
prompt
prompt Creating table pcace.IS_Rs_Computer 物资-计算机
prompt =============================
prompt
CREATE TABLE pcace.IS_Rs_Computer(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    c1                             VARCHAR2(30),                  --计算机编号
    c2                             VARCHAR2(30),                  --品牌型号
    c3                             VARCHAR2(20),                  --购买日期
    c4                             VARCHAR2(30),                  --CPU
    c5                             VARCHAR2(30),                  --显卡
    c6                             VARCHAR2(30),                  --硬盘
    c7                             VARCHAR2(30),                  --内存
    c8                             VARCHAR2(30),                  --操作系统
    c9                             VARCHAR2(50),                  --用途
    c10                            NUMBER(6,0),                   --状态
    c11                            NUMBER(9,0),                   --领用人员
    c12                            VARCHAR2(20),                  --领用日期
    c13                            VARCHAR2(20),                  --归还日期
    c14                            VARCHAR2(100),                 --备注
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IS_Rs_Computer_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Rs_Computer 物资-计算机
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Rs_Computer(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(200),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    c1                             VARCHAR2(30),                  --计算机编号
    c2                             VARCHAR2(30),                  --品牌型号
    c3                             VARCHAR2(20),                  --购买日期
    c4                             VARCHAR2(30),                  --CPU
    c5                             VARCHAR2(30),                  --显卡
    c6                             VARCHAR2(30),                  --硬盘
    c7                             VARCHAR2(30),                  --内存
    c8                             VARCHAR2(30),                  --操作系统
    c9                             VARCHAR2(50),                  --用途
    c10                            NUMBER(6,0),                   --状态
    c11                            NUMBER(9,0),                   --领用人员
    c12                            VARCHAR2(20),                  --领用日期
    c13                            VARCHAR2(20),                  --归还日期
    c14                            VARCHAR2(100),                 --备注
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_Rs_Others 物资-其它
prompt =============================
prompt
CREATE TABLE pcace.IS_Rs_Others(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    c1                             VARCHAR2(30),                  --物资编号
    c2                             VARCHAR2(30),                  --名称
    c3                             VARCHAR2(30),                  --品牌型号
    c4                             VARCHAR2(100),                 --说明
    c5                             VARCHAR2(20),                  --购买日期
    c6                             NUMBER(6,0),                   --有效期限（年）
    c7                             NUMBER(6,0),                   --状态
    c8                             NUMBER(9,0),                   --领用人员
    c9                             VARCHAR2(20),                  --领用日期
    c10                            VARCHAR2(20),                  --归还日期
    c11                            VARCHAR2(100),                 --备注
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    CONSTRAINT IS_Rs_Others_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Rs_Others 物资-其它
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Rs_Others(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(200),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    c1                             VARCHAR2(30),                  --物资编号
    c2                             VARCHAR2(30),                  --名称
    c3                             VARCHAR2(30),                  --品牌型号
    c4                             VARCHAR2(100),                 --说明
    c5                             VARCHAR2(20),                  --购买日期
    c6                             NUMBER(6,0),                   --有效期限（年）
    c7                             NUMBER(6,0),                   --状态
    c8                             NUMBER(9,0),                   --领用人员
    c9                             VARCHAR2(20),                  --领用日期
    c10                            VARCHAR2(20),                  --归还日期
    c11                            VARCHAR2(100),                 --备注
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.IS_Server 服务器
prompt =============================
prompt
CREATE TABLE pcace.IS_Server(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    c1                             VARCHAR2(30),                  --服务器名称
    c2                             VARCHAR2(100),                 --web地址
    c3                             NUMBER(6,0),                   --状态
    c4                             VARCHAR2(30),                  --备注
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate           --更新日期
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );

prompt
prompt Creating table pcace.ZIS_Server 服务器
prompt =============================
prompt
CREATE TABLE pcace.ZIS_Server(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(200),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    c1                             VARCHAR2(30),                  --服务器名称
    c2                             VARCHAR2(100),                 --web地址
    c3                             NUMBER(6,0),                   --状态
    c4                             VARCHAR2(30),                  --备注
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate           --更新日期
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
                      interval => 'trunc(sysdate, ''hh'')+floor(to_char(sysdate,''mi'')/1+1)*1/(60*24)'); --2分钟一次
  commit;
end;
/

-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
delete from pcace.I_Area;
insert into pcace.I_Area(id,areaName,areaID,state,areaLevel,upAreaID,remark) values(1,'北京',1000,1,201001,0,'');
insert into pcace.I_Area(id,areaName,areaID,state,areaLevel,upAreaID,remark) values(2,'北京市',1001,1,201002,1000,'');
commit;

delete from pcace.I_DataTableType;
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(100000,'业务数据管理',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(100009,'基础数据管理',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(200000,'公司组织管理',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(300000,'网站资源管理',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(400001,'OA工作流程',201001,-1,1);
insert into pcace.I_DataTableType(tableTypeID,tableTypeName,typeLevel,parentID,state) values(900000,'系统管理',201001,-1,1);
commit;
update pcace.I_DataTableType a set childNum=(select count(*) from pcace.I_DataTableType b where parentID = a.tableTypeID);
update pcace.I_DataTableType a set childNum=childNum+(select count(*) from pcace.I_DataTable where tableTypeID = a.tableTypeID);
commit;
update pcace.I_DataParamType a set childNum=(select count(*) from pcace.I_DataParamType b where parentID = a.paramClassID);
commit;
update pcace.I_DataTable a set childTableNum=(select count(*) from pcace.I_DataTable b where parentTableID = a.tableID);
commit;

delete from pcace.I_SystemParam;
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(1  ,'100','流程分类','100001','财务流程',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(2  ,'100','流程分类','100002','行政流程',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(3  ,'100','流程分类','100003','项目流程',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(4  ,'100','流程分类','100004','其他流程',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(8  ,'101','流程经手模式','101001','一人名单一人处理',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(9  ,'101','流程经手模式','101002','多人名单一人处理',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(10 ,'101','流程经手模式','101003','多人名单多人并行处理',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(11 ,'102','流程选人过滤规则','102001','允许选择全部指定的经办人',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(12 ,'102','流程选人过滤规则','102002','只允许选择本部门经办人',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(13 ,'102','流程选人过滤规则','102003','只允许选择上级部门经办人',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(14 ,'102','流程选人过滤规则','102004','只允许选择下级部门经办人',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(15 ,'102','流程选人过滤规则','102005','只允许选择本角色经办人',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(20 ,'103','流程自动选人规则','103001','不进行自动选择',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(21 ,'103','流程自动选人规则','103002','自动选择流程发起人',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(22 ,'103','流程自动选人规则','103003','自动选择本部门主管',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(23 ,'103','流程自动选人规则','103004','自动选择上级主管领导',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(24 ,'103','流程自动选人规则','103005','自动选择董事长（一级部门主管）',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(25 ,'103','流程自动选人规则','103006','自动选择总经理（二级部门主管）',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(26 ,'103','流程自动选人规则','103007','自动选择指定步骤经办人',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(27 ,'103','流程自动选人规则','103008','自动选择指定字段',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(90 ,'200','机构类型','200001','公司',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(100,'201','等级','201000','-',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(101,'201','等级','201001','一级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(102,'201','等级','201002','二级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(103,'201','等级','201003','三级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(104,'201','等级','201004','四级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(105,'201','等级','201005','五级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(106,'201','等级','201006','六级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(107,'201','等级','201007','七级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(108,'201','等级','201008','八级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(109,'201','等级','201009','九级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(110,'201','等级','201010','十级',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(111,'202','数据类型','202001','NUMBER',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(112,'202','数据类型','202002','VARCHAR2',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(113,'202','数据类型','202003','DATE',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(114,'202','数据类型','202004','CHAR',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(115,'202','数据类型','202005','TEXT',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(116,'202','数据类型','202006','DATETIME',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(117,'202','数据类型','202007','FILE',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(118,'202','数据类型','202008','IMG_FILE',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(119,'202','数据类型','202009','IMG_LINK',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(120,'202','数据类型','202010','MD5加密文',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(121,'202','数据类型','202011','随机码UGID',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(122,'202','数据类型','202012','单选框',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(123,'202','数据类型','202013','多选框',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(131,'204','附件类型','204001','图片',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(132,'204','附件类型','204002','音频',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(133,'204','附件类型','204003','视频',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(134,'204','附件类型','204004','文本',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(141,'205','外文','205001','中国简体',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(142,'205','外文','205002','英语',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(143,'205','外文','205003','日语',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(144,'205','外文','205004','韩语',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(145,'205','外文','205005','法语',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(149,'206','分组函数','206000','groupby',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(150,'206','分组函数','206001','sum',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(151,'206','分组函数','206002','max',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(152,'206','分组函数','206003','min',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(153,'206','分组函数','206004','count',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(200,'801','数据状态','801000','初始',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(201,'801','数据状态','801001','等待校对',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(202,'801','数据状态','801003','等待审核入库',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(203,'801','数据状态','801004','已入库，等待发布',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(204,'801','数据状态','801005','已冻结',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(205,'801','数据状态','801009','已发布',null,null,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(301,'802','密级','802001','公开',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(302,'802','密级','802002','内部',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(303,'802','密级','802003','秘密',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(304,'802','密级','802004','机密',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(305,'802','密级','802005','绝密',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(306,'803','值域表','803001','数据应用字典',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(307,'803','值域表','803002','默认值：当前登录信息',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(308,'803','值域表','803003','默认值：当前日期',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(309,'803','值域表','803004','默认值：明日日期',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(314,'803','值域表','803008','默认值：自定义',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(315,'803','值域表','803009','业务数据',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(316,'803','值域表','803010','业务数据字段',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(317,'803','值域表','803011','加密文件',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(318,'803','值域表','803012','加密文件名',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(400,'900','系统参数：是否打印数据查询结果','900001','0',null,1,1);
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(403,'902','业务参数：文件服务器web地址','902001','http://www.ace-elite.com/fileserver/',null,1,1); --http://118.178.126.204/fileserver/
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(404,'903','业务参数：文件服务器硬盘地址','903001','E:\Tomcat\webapps\fileserver\',null,1,1); --E:\Tomcat\webapps\fileserver\
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(405,'904','业务参数：APP_Server地址','904001','http://120.27.249.104:8099/aceserver/',null,1,1); --http://118.178.126.204:80992/aceserver/
insert into pcace.I_SystemParam(id,paramClass,className,value,name,parentClass,isShow,state) values(406,'905','业务参数：苹果开关','905001','1',null,1,1);
commit;


----------------------------------------------------------------------

----------------------------------------------------------------------
delete from pcace.S_Param;
commit;


--恢复误删的数据
--select dbms_flashback.get_system_change_number from dual;
--select count(*) from BO_Order_GoodsDetail as of scn 10671000;