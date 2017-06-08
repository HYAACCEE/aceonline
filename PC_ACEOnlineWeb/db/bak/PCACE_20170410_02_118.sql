-----------------------------------------------------
-- Export file for user PCACE                      --
-- Created by Administrator on 2017/4/10, 16:32:02 --
-----------------------------------------------------

set define off
spool PCACE_20170410_02_118.log

prompt
prompt Creating view VI_DATAMODULECOLUMN
prompt =================================
prompt
create or replace force view pcace.vi_datamodulecolumn as
Select dataType,dataTypeStr,dataLen,dataDotLen,nullFlag,def,dataCol1Num,dataCol2Num,dataCol3Num,
c."ID",c."MODULEID",c."TABLEID",c."COLID",c."COLMEMO",c."COLSTR",c."COLNAME",c."COLNAME_AS",c."SCTLEVEL",c."SEQ",c."GROUPFUNC",c."LISTSHOWFLAG",c."SHOWWIDTH",c."FORMSHOWFLAG",c."OTHERBUTTONS",c."EXTKEYWORDFLAG",c."EXTQUERYBYFLAG",c."STATE",c."ISTDATE",c."UPTDATE",decode(b.id,null,-1,b.id) extID,extCode,extNameZh,extNameZhs,extNameEn,extNameEns,extDefine,
extShow,decode(extLength,null,0,extLength) extLength,decode(extPrecision,null,0,extPrecision) extPrecision,
extUnit,extValueScope,decode(b.extValueScopeTypeID,null,-1,b.extValueScopeTypeID) extValueScopeTypeID,extValueScopeTypeParam,
decode(b.extKeyIDFlag,null,-1,b.extKeyIDFlag) extKeyIDFlag,decode(b.extKeyNameFlag,null,-1,b.extKeyNameFlag) extKeyNameFlag,
extRelationSubCols,extSynName,extRelateEnvironment,extVersion,extMemo,decode(b.state,null,-1,b.state) extState,b.istDate extIstDate,b.uptDate extUptDate
from I_DataTableColumn a, I_DataModuleColumn c, I_DataTableColumnExtInfo b
where a.colid=c.colid and a.colid=b.colid(+);

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
prompt Creating view VS_USER
prompt =====================
prompt
create or replace force view pcace.vs_user as
Select a."USERID",a."LOGINNAME",a."PASSWORD",a."VALIDATEPASSWORD",a."USERNAME",a."ROLEID",a."STATE",a."LOGINNUM",a."LOGINFLAG",a."LASTLOGINDATE",a."CSSSTYLE",a."AREAID",a."EMPID",a."OPERATOR",a."ISTDATE",a."UPTDATE",b.roleName,decode(b.power,null,-1,power) power,decode(b.sctLevel,null,-1,sctLevel) sctLevel,c.c5 cardNO,c.c1 empName,c.c2 organID,c.c3 departmentID,c.c4 jobID,d.c1 organName,200001 organType,e.c1 departmentName,f.c1 jobName
from pcace.S_User a,pcace.S_Role b,pcace.IS_Emp c,pcace.IS_Organ d,pcace.IS_Department e,pcace.IS_JobPosition f
where a.roleID = b.roleID(+) and a.empID=c.dataid(+) and c.c2=d.dataid(+) and c.c3=e.dataid(+) and c.c4=f.dataid(+);

prompt
prompt Creating package PKG_PCACE_ORDERSTAT
prompt ====================================
prompt
create or replace package pcace.pkg_pcace_orderStat is

--------------------------------------------
-- Export file for user pcace             --
-- Created by wxl on 2016-10-28           --
-- updated by wxl on 2016-10-28           --
--------------------------------------------
  -- Stat : 数据监管
  procedure SP_StatManager;

  -- Order : 订单审核
  procedure SP_Order_Check;

  -- Log : 日志
  procedure P_Log(
    a_context        in varchar2
  );

  -- SMS : 短信通知
  procedure P_SMS(
    a_messageFlag  in integer,
    a_smsType      in integer,
    a_phone        in varchar2,
    a_sms          in varchar2
  );

end pkg_pcace_orderStat;
/

prompt
prompt Creating package PKG_PCACE_WEB
prompt ==============================
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
    
  -- SP_CandidateCV_Update : 简历更新
  procedure SP_CandidateCV_Update(
    a_cid           in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class
  );
  -- SP_stApplyCheck : 入库申请提交审核
  procedure SP_stApplyCheck(
    a_cid           in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class
  );
  -- SP_CandidateCVCheck : 简历审核
  procedure SP_CandidateCVCheck(
    a_cid           in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class
  );
  -- SP_HCCommentCheck : 顾问面评审核
  procedure SP_HCCommentCheck(
    a_cid           in varchar2,
    a_hcAuid        in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class
  );
  -- Log : 日志
  procedure P_Log(
    a_context        in varchar2,
    a_operator       in varchar2
  );
end pkg_pcace_web;
/

prompt
prompt Creating function F_DATAPARAM
prompt =============================
prompt
create or replace function pcace.F_DataParam(
  a_status in integer
) return varchar2 is
  str varchar(20);
begin
  select NVL(className,'') into str from I_DataParamType where paramClassID=a_status;
  return str;
end;
/

prompt
prompt Creating function F_CANDIDATE_MYEDUCATION
prompt =========================================
prompt
create or replace function pcace.F_Candidate_MyEducation(cid in varchar2) return varchar2 is
  Result varchar2(500);
  v_tmp  varchar2(100);
  v_key  varchar2(50);
begin
  Result := '';
  DECLARE CURSOR v_rs IS select c5, c5||'|'||F_DataParam(c7) from B_Candidate_CVEducation where c1=cid and c2=130001 order by c3 desc;
  begin
    open v_rs;
    LOOP
      FETCH v_rs INTO v_key, v_tmp;
      exit when v_rs%notfound;
      if length(v_key)>0 then
        Result := v_tmp;
      end if;
    END LOOP;
    close v_rs;
  end;
  return(Result);
end F_Candidate_MyEducation;
/

prompt
prompt Creating function F_CANDIDATE_MYWORK
prompt ====================================
prompt
create or replace function pcace.F_Candidate_MyWork(cid in varchar2) return varchar2 is
  Result varchar2(2000);
  v_tmp  varchar2(200);
begin
  Result := '';
  DECLARE CURSOR v_rs IS select NVL(b.c2,a.c5)||'|'||a.c9 from B_Candidate_CVWork a, A_Organ b where a.c5=b.c2(+)||'['||b.c1(+)||']' and a.c1=cid and a.c2=130001 order by a.c3 desc;
  begin
    open v_rs;
    LOOP
      FETCH v_rs INTO v_tmp;
      exit when v_rs%notfound;
      if length(v_tmp)>0 then
        Result := Result || '`' || v_tmp;
      end if;
    END LOOP;
    close v_rs;
  end;
  if length(Result)>0 then Result := substr(Result,2); end if;
  return(Result);
end F_Candidate_MyWork;
/

prompt
prompt Creating function F_CANDIDATE_WORKYEAR
prompt ======================================
prompt
create or replace function pcace.F_Candidate_WorkYear(cid in varchar2) return varchar2 is
  Result varchar2(200);
begin
  select sum(to_number(substr(decode(c4,'至今',to_char(sysdate,'yyyy'),c4),1,4)) - to_number(substr(NVL(c3,to_char(sysdate,'yyyy')),1,4))) into Result from B_Candidate_CVWork where c1=cid and c2=130001;
  return(Result);
end F_Candidate_WorkYear;
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
prompt Creating package body PKG_PCACE_ORDERSTAT
prompt =========================================
prompt
create or replace package body pcace.pkg_pcace_orderStat is

  -- Stat : 数据监管
  procedure SP_StatManager
  is
    a_logDateStr     varchar2(20);
    a_curdate        number;
    counter          number;
    counter1         number;
    counter2         number;
    counter3         number;
    counter4         number;
    tmp              varchar2(200);
    tmp1             varchar2(200);
    ResultCursor     pkg_pcace_web.rc_class;
  begin
    select to_number(to_char(sysdate,'hh24mi')) into a_curdate from dual;
    a_logDateStr := to_char(sysdate,'yyyy-mm-dd hh24:mi:ss');
    P_Log(a_logDateStr||'数据监管开始 curdate='||a_curdate);

    --处理超时事件
    select count(*) into counter from B_Action where c10 is not null and c9<=sysdate;
    if counter > 0 then
      P_Log(a_logDateStr||'待处理超时事件 counter='||counter);
    end if;

    --00:10 ---------------------用户数据统计
    if a_curdate = 0010 then
      P_Log(a_logDateStr||'用户数据统计 curdate='||a_curdate);
      insert into ZB_Stat select seq_z_datahis_iid.nextval,'用户数据统计 by system', ttt.* from (select * from B_Stat) ttt;
      delete from B_Stat where istdate<sysdate-1/(24*60);
      --今日新增
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
       select seqB_Stat.nextval, 260001, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100 from dual;
      --昨日新增
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
       select seqB_Stat.nextval, 260002, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120 from dual;
      --本月新增
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
       select seqB_Stat.nextval, 260003, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500 from dual;
      --上月新增
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
       select seqB_Stat.nextval, 260004, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600 from dual;
      --所有
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
       select seqB_Stat.nextval, 260009, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000 from dual;

      commit;
    end if;

    P_Log(a_logDateStr||'数据监管完成！ curdate='||a_curdate);

  exception when others then
    rollback;
    P_Log(a_logDateStr||'数据监管:'||' exception:'||sqlerrm);
    P_SMS(1,138444, null, '70333: 请技术人员速查SP_StatManager'||sqlerrm); --发送短信
    commit;
  end;

  -- Order : 订单审核
  procedure SP_Order_Check
  is
    a_logDateStr     varchar2(20);
    a_curdate        date;
    counter          number;

    P_CHECK_TIME     number;
  begin
    select sysdate into a_curdate from dual;
    a_logDateStr := to_char(a_curdate,'yyyy-mm-dd hh24:mi:ss');


  exception when others then
    rollback;
    P_Log(a_logDateStr||'订单审核:'||' exception:'||sqlerrm);
    P_SMS(1,138444, null, '70333: 请技术人员速查SP_Order_Check'); --发送短信
    commit;
  end;

  -- Log : 日志
  procedure P_Log(
    a_context        in varchar2)
  is
  begin
    insert into T_SLog(Id,Logtype,title,Context,oid,userID,userName,Ipaddress,Istdate)
       values(SEQ_T_Log_ID.nextval,4,'系统日志',a_context,-1,0,'SYS-MELE','0.0.0.0',sysdate);
  exception when others then
    rollback;
  end;

  -- SMS : 短信通知
  procedure P_SMS(
    a_messageFlag  in integer,
    a_smsType      in integer,
    a_phone        in varchar2,
    a_sms          in varchar2
  )is
    v_phone        varchar2(20);
  begin
    v_phone := a_phone;
    if v_phone is null or length(v_phone)=0 then v_phone := '13693301331'; end if;
    if v_phone = 333 then  --告警提醒 发送三位老大
      insert into T_Sms_Ing(dataid,c1,c2,c3,c4,c5,c6) values(seqT_Sms_Ing.Nextval,'1000077','13693301331',a_sms,0,'',a_smsType);
      --insert into T_Sms_Ing(dataid,c1,c2,c3,c4,c5,c6) values(seqT_Sms_Ing.Nextval,'1000077','13811367810',a_sms,0,'',a_smsType);
      --insert into T_Sms_Ing(dataid,c1,c2,c3,c4,c5,c6) values(seqT_Sms_Ing.Nextval,'1000077','15313089826',a_sms,0,'',a_smsType);
    else
      insert into T_Sms_Ing(dataid,c1,c2,c3,c4,c5,c6) values(seqT_Sms_Ing.Nextval,'1000077',v_phone,a_sms,0,'',a_smsType);
    end if;
    if a_messageFlag=1 then insert into T_Message(id,content,actionID) values(seq_T_message_id.nextval,a_sms,404); end if;
  exception when others then
    rollback;
  end;

end pkg_pcace_orderStat;
/

prompt
prompt Creating package body PKG_PCACE_WEB
prompt ===================================
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
    a_otherCondition  i_DataModule.otherCondition%type;
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
  
  -- SP_CandidateCV_Update : 简历更新
  procedure SP_CandidateCV_Update(
    a_cid           in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    v_workyear      number;
    v_jobStr        varchar2(500);
    v_educationStr  varchar2(500);
    v_education     number;
    v_age           number;
    v_xingzuo       number;
    v_birth_mm      varchar2(2);
    v_birth_dd      varchar2(2);
    v_mmName        varchar2(100);
    counter         number;
  begin
    select substr(c10,6,2), substr(c10,9,2), to_number(to_char(sysdate,'yyyy'))-to_number(substr(c10,1,4)) into v_birth_mm, v_birth_dd, v_age from B_Candidate where c1=a_cid;
    if length(v_birth_mm)>0 then
        select count(*), max(paramClassID) into counter, v_xingzuo from I_DataParamType where paramClassID = 140000 + to_number(v_birth_mm) and to_number(v_birth_dd) < to_number(memo);
        if counter = 0 then
            select count(*), max(paramClassID) into counter, v_xingzuo from I_DataParamType where paramClassID = 140000 + MOD(to_number(v_birth_mm+1),12) and to_number(v_birth_dd) < to_number(memo);
        end if;
    end if;
    
    select count(dataid) into counter from B_Candidate_CVEducation where c1=a_cid;
    if counter > 0 then
        select F_Candidate_MyEducation(a_cid) into v_educationStr from dual;
        select max(c7) into v_education from B_Candidate_CVEducation where c1=a_cid;
    else
        v_educationStr := '';
    end if;

    select count(dataid) into counter from B_Candidate_CVWork where c1=a_cid and c5 is not null;
    if counter > 0 then
        select sum(to_number(substr(decode(c4,'至今',to_char(sysdate,'yyyy'),c4),1,4)) - to_number(substr(NVL(c3,to_char(sysdate,'yyyy')),1,4)))
          into v_workyear from B_Candidate_CVWork where c1=a_cid;      
        select F_Candidate_MyWork(a_cid) into v_jobStr from dual;

        update B_Candidate t set
               (c41,c38,c40,c42,c43,c44,c45)= (select distinct NVL(b.c2,a.c5), a.c7,decode(a.c4,'至今',1,0), a.c9, a.c11, a.c12, a.c13 from B_Candidate_CVWork a, A_Organ b where a.dataid=(select max(dataid) from B_Candidate_CVWork m where c1=a_cid and c5 is not null) and a.c5=b.c2(+)||'['||b.c1(+)||']')
         where c1=a_cid;

    else
        v_workyear := 0;
        v_jobStr := '';
        
        select count(t.dataid) into counter from B_Candidate t, A_Organ b where t.c1=a_cid and t.c41=b.c2||'['||b.c1||']';
        if counter > 0 then
            update B_Candidate t set
                   (c41,c38,c40,c42,c43,c44,c45)= (select distinct NVL(b.c2,t.c41), t.c38, 0, t.c42, t.c43, t.c44, t.c45 from A_Organ b where t.c41=b.c2||'['||b.c1||']')
             where c1=a_cid;
        end if;

    end if;
    
    update B_Candidate t set c24=(select c10 from B_Candidate_HCComment where dataid=(select max(dataid) from B_Candidate_HCComment where c1=a_cid)) where c1=a_cid;
    
    update B_Candidate t set
           c39 = v_workyear,
           c60 = v_jobStr,
           c57 = v_educationStr,
           c25 = v_education,
           c11 = v_age,
           c12 = v_xingzuo
     where c1=a_cid;
  
    Message := Message || '简历更新成功!';
    open ResultCursor for select '' sqlmsg from dual;
    commit;
  exception when others then
    rollback;
    Message := Message||'简历更新失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- SP_stApplyCheck : 入库申请提交审核
  procedure SP_stApplyCheck(
    a_cid           in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;
    v_title         varchar2(100);
    v_type          number;
    v_tableName     varchar2(30);
    v_content       varchar2(2000);
    v_condition     varchar2(100);
    v_index         number;
    v_result        varchar2(4000);
    v_sql           varchar2(500);
    bizcursor       SYS_REFCURSOR;
    v_completeRate  number;
  begin
    v_result := '';
    v_completeRate := 1000000000;

    --入库申请提交审核规则:R00003
    DECLARE CURSOR v_rs IS select b.c1,b.c2,b.c4,b.c5,b.c6,b.c8 from IS_APPModule a, IS_APPModuleDetail b where a.dataid=b.parentDataid and a.c6=130001 and b.c9=130001 and a.c1='R00003' order by b.dataid;
    BEGIN
      open v_rs;
      LOOP
        FETCH v_rs INTO v_title, v_type, v_tableName, v_content, v_condition, v_index;
        exit when v_rs%notfound;

        execute immediate 'select count(dataid) from '||v_tableName||' where '||v_condition||' and c1='||a_cid into counter;
        if counter=0 then
          if v_type = 11 then
            v_result := v_result || '<br>【'||v_title || '】不能为空！<br>';
          end if;
        else
          v_sql := 'select '||v_content||' from '||v_tableName||' where '||v_condition||' and c1='||a_cid;
          OPEN bizcursor FOR v_sql;
          LOOP
            FETCH bizcursor INTO v_content;
            exit when bizcursor%notfound;

            if length(v_content) >0 then
              v_result := v_result || '<br>【'||v_title || '】:<br>' || v_content;
            else
              v_completeRate := v_completeRate + power(10,v_index);
            end if;
          END LOOP;
          CLOSE bizcursor;
        end if;
      END LOOP;
      close v_rs;
    END;

    Message := v_result;
    if length(v_result) = 0 then
        v_result := 'SUCCESS';
    end if;
    open ResultCursor for select Message sqlmsg from dual;
  exception when others then
    rollback;
    Message := v_result||',入库申请提交审核失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- SP_CandidateCVCheck : 简历审核
  procedure SP_CandidateCVCheck(
    a_cid           in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;
    v_title         varchar2(100);
    v_type          number;
    v_tableName     varchar2(30);
    v_content       varchar2(2000);
    v_condition     varchar2(100);
    v_index         number;
    v_result        varchar2(4000);
    v_sql           varchar2(500);
    bizcursor       SYS_REFCURSOR;
    v_completeRate  number;
  begin
    v_result := '';
    v_completeRate := 1000000000;

    --入库审核规则:R00001
    DECLARE CURSOR v_rs IS select b.c1,b.c2,b.c4,b.c5,b.c6,b.c8 from IS_APPModule a, IS_APPModuleDetail b where a.dataid=b.parentDataid and a.c6=130001 and b.c9=130001 and a.c1='R00001' order by b.dataid;
    BEGIN
      open v_rs;
      LOOP
        FETCH v_rs INTO v_title, v_type, v_tableName, v_content, v_condition, v_index;
        exit when v_rs%notfound;

        execute immediate 'select count(dataid) from '||v_tableName||' where '||v_condition||' and c1='||a_cid into counter;
        if counter=0 then
          if v_type = 11 then
            v_result := v_result || '<br>【'||v_title || '】不能为空！<br>';
          end if;
        else
          v_sql := 'select '||v_content||' from '||v_tableName||' where '||v_condition||' and c1='||a_cid;
          OPEN bizcursor FOR v_sql;
          LOOP
            FETCH bizcursor INTO v_content;
            exit when bizcursor%notfound;

            if length(v_content) >0 then
              v_result := v_result || '<br>【'||v_title || '】:<br>' || v_content;
            else
              v_completeRate := v_completeRate + power(10,v_index);
            end if;
          END LOOP;
          CLOSE bizcursor;
        end if;
      END LOOP;
      close v_rs;
    END;

    Message := v_result;
    if length(v_result) = 0 then
        v_result := 'SUCCESS';
    end if;
    update B_Candidate set c65=v_completeRate, c88=v_result where c1=a_cid;
    commit;

    open ResultCursor for select Message sqlmsg from dual;
  exception when others then
    rollback;
    Message := v_result||',简历审核失败! '||substr(sqlerrm,1,100);
    open ResultCursor for select Message sqlmsg from dual;
  end;

  -- SP_HCCommentCheck : 顾问面评审核
  procedure SP_HCCommentCheck(
    a_cid           in varchar2,
    a_hcAuid        in varchar2,
    Message         out varchar2,
    ResultCursor    out rc_class)
  is
    counter         number;
    v_title         varchar2(100);
    v_type          number;
    v_tableName     varchar2(30);
    v_content       varchar2(2000);
    v_condition     varchar2(100);
    v_index         number;
    v_result        varchar2(4000);
    v_sql           varchar2(500);
    bizcursor       SYS_REFCURSOR;
    v_completeRate  number;
  begin
    v_result := '';
    v_completeRate := 1000000000;

    --顾问面评审核规则:R00002
    DECLARE CURSOR v_rs IS select b.c1,b.c2,b.c4,b.c5,b.c6,b.c8 from IS_APPModule a, IS_APPModuleDetail b where a.dataid=b.parentDataid and a.c6=130001 and b.c9=130001 and a.c1='R00002' order by b.dataid;
    BEGIN
      open v_rs;
      LOOP
        FETCH v_rs INTO v_title, v_type, v_tableName, v_content, v_condition, v_index;
        exit when v_rs%notfound;

        execute immediate 'select count(dataid) from '||v_tableName||' where '||v_condition||' and c1='||a_cid into counter;
        if counter=0 then
          if v_type = 11 then
            v_result := v_result || '<br>【'||v_title || '】不能为空！<br>';
          end if;
        else
          v_sql := 'select '||v_content||' from '||v_tableName||' where '||v_condition||' and c1='||a_cid;
          OPEN bizcursor FOR v_sql;
          LOOP
            FETCH bizcursor INTO v_content;
            exit when bizcursor%notfound;

            if length(v_content) >0 then
              v_result := v_result || '<br>【'||v_title || '】:<br>' || v_content;
            else
              v_completeRate := v_completeRate + power(10,v_index);
            end if;
          END LOOP;
          CLOSE bizcursor;
        end if;
      END LOOP;
      close v_rs;
    END;

    Message := v_result;
    open ResultCursor for select Message sqlmsg from dual;
  exception when others then
    rollback;
    Message := Message||'顾问面评审核失败! '||substr(sqlerrm,1,100);
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
