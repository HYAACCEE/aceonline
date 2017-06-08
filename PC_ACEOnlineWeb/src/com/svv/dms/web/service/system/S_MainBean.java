package com.svv.dms.web.service.system;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Executors;

import com.gs.db.dao.DaoUtil;
import com.gs.db.database.BizDBResult;
import com.gs.db.util.DBUtil;
import com.svv.dms.web.Constants;
import com.svv.dms.web.UGID;
import com.svv.dms.web.common.ComBeanI_DataParamType;
import com.svv.dms.web.common.ComBeanI_DataTable;
import com.svv.dms.web.common.ComBeanI_SystemParam;
import com.svv.dms.web.common.ComBeanLogType;
import com.svv.dms.web.common.ComBeanIS_Organ;
import com.svv.dms.web.dao.SQL;
import com.svv.dms.web.entity.I_Area;
import com.svv.dms.web.entity.I_DataParamType;
import com.svv.dms.web.entity.I_DataTableType;
import com.svv.dms.web.entity.S_User;
import com.svv.dms.web.entity.T_Message;
import com.svv.dms.web.service.base.AbstractBean;
import com.svv.dms.web.service.base.BConstants;
import com.svv.dms.web.util.DES;
import com.svv.dms.web.util.HIUtil;
import com.svv.dms.web.util.MD5;
import com.svv.dms.web.util.TColumn;

public class S_MainBean extends AbstractBean {

    public String S_Main(){
        return this.exeByCmd("");
    }
    public String S_MainUser(){
        return this.exeByCmd("");
    }
    
    //自定义：客户的订单列表
    public String XMLBMyOrders(){
    	String dataid = this.getParameter("dataid");
    	List<Object> list = dbQuery(String.format("select dataid orderid,c2 goodsName,c3 amount from B_Table101 m where c1=%s", new Object[]{dataid}));
        Object[] objs = null;
        if(list!=null && list.size()>0){
            int i = 0;
            objs = new Object[list.size()+2];
            objs[i++] = this.getParameter("tableHeight", BConstants.DEF_TABLE_HEIGHT);
            objs[i++] = new Object[]{new TColumn("序号", null, TColumn.ALIGN_LEFT),
                                     new TColumn("订单编号", null, TColumn.ALIGN_LEFT),
                                     new TColumn("商品名称", null, TColumn.ALIGN_LEFT),
                                     new TColumn("金额", null, TColumn.ALIGN_LEFT)};
            for(Object o: list){
                objs[i++] = new Object[]{"doFocus();",
                                         (i++),
                                         DBUtil.getDBString(o, "orderid"),
                                         DBUtil.getDBString(o, "goodsName"),
                                         DBUtil.getDBString(o, "amount"),};
            }            
        }
        this.setResultList(objs);

        logger(ComBeanLogType.TYPE_QUERY, "查询客户的订单");
        return BConstants.LIST;
    }
    
    
    //从二维码显示商品信息
    public String XMLBGoodsFromQR(){
    	String dataid = this.getParameter("dataid");
    	StringBuilder s = new StringBuilder();
    	List<Object> list = dbQuery(String.format("select c1 breedName,c4 goodsName,c9 chandi,c10 pingpai,c19 shengchanriqi from A_Goods_Breed where dataid=%s", new Object[]{dataid}));
    	if(list!=null && list.size()>0){
    		Object o = list.get(0);
    		s.append("<table>");
    		s.append("<tr><td width=80>品牌:</td><td>").append(DBUtil.getDBString(o, "pingpai")).append("<br></td></tr>");
    		s.append("<tr><td>品名: </td><td>").append(DBUtil.getDBString(o, "goodsName")).append("<br></td></tr>");
    		s.append("<tr><td>规格: </td><td>").append(DBUtil.getDBString(o, "breedName")).append("<br></td></tr>");
    		s.append("<tr><td>产地: </td><td>").append(DBUtil.getDBString(o, "chandi")).append("<br></td></tr>");
    		s.append("</table>");
    		//this.setMessage(true, "JSONP:"+getParameter("callback_func")+"('"+s.toString()+"')");
    		this.setMessage(true, s.toString());
	        logger(ComBeanLogType.TYPE_QUERY, "从二维码显示商品信息", new Object[]{DBUtil.getDBString(o, "goodsName"), DBUtil.getDBString(o, "breedName")});
    	}else{
    		this.setMessage(false, "二维码数据有误");
    		//this.setMessage(false, "JSONP:"+getParameter("callback_func")+"('二维码数据有误')");
    	}
		return BConstants.MESSAGE;
    }
    
    //打印商品二维码
    public String BGoodsQRPrint(){
    	String dataid = this.getParameter("dataid");
    	String goodsName = this.getParameter("goodsName");
    	String breedName = this.getParameter("breedName");
    	String chandi = this.getParameter("chandi");
    	String pingpai = this.getParameter("pingpai");
    	String shengchanriqi = this.getParameter("shengchanriqi");
    	String num = this.getParameter("num");
    	String organID = Constants.WEB_ORGANID;
    	try{
    		if(( dataid.length()>0 || goodsName.length()>0 && breedName.length()>0 )){
				List<String> sqls = new ArrayList<String>();
		    	if(dataid.length()==0){
		        	String goodsDataid = this.getSqlValue("select dataid from A_Goods where c1='"+goodsName+"'", "dataid");
		        	if(HIUtil.isEmpty(goodsDataid)){
		        		goodsDataid = getSqlValue("select pkg_pbmedi_web.SF_GetMaxID('A_Goods','dataid') cc from dual", "cc");
		        		sqls.add(String.format("insert into A_Goods(dataid,c1,c3) values(%s,'%s',130001)", new Object[]{goodsDataid, goodsName}));
		        	}
		        	dataid = getSqlValue("select pkg_pbmedi_web.SF_GetMaxID('A_Goods_Breed','dataid') cc from dual", "cc");
		        	sqls.add(String.format("insert into A_Goods_Breed(dataid,parentDataid,c1,c3,c4,c7,c9,c10,c17) values(%s,%s,'%s','%s','%s',130001,'%s','%s','%s')", new Object[]{dataid, goodsDataid, breedName, organID, goodsName, chandi, pingpai, shengchanriqi}));
		    	}else{
		    		sqls.add(String.format("update A_Goods_Breed set c17='%s' where dataid=%s", new Object[]{shengchanriqi, dataid}));
		    	}
		    	if(dbExe(sqls)){
		    		initPrintParam(); //初始化打印机
					sqls.clear();
			        logger(ComBeanLogType.TYPE_EDIT, "新建商品二维码", new Object[]{breedName});
			        String p0 = dataid;//.concat(Constants.SPLITER).concat(goodsName).concat(Constants.SPLITER).concat(breedName).concat(Constants.SPLITER).concat(pingpai).concat(Constants.SPLITER).concat(chandi).concat(Constants.SPLITER).concat(shengchanriqi);
	    			this.setMessage(true, "SUCCESS=1&num=".concat(num).concat("&QRContent=http://").concat(Constants.WEB_DOMAIN).concat(".melepark.com/").concat(Constants.WEB_DOMAIN).concat("goods.html?").concat(p0));
				}
    		}else{
    			System.out.println("数据不能为空");
    			this.setMessage(false, "数据不能为空.");
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    		this.setMessage(false, "新建商品二维码失败.");
    	}
		return BConstants.MESSAGE;
    }
    //新增管理人员
    public String BShopUserNew(){
    	String dataid = this.getParameter("dataid");
		String userRole = this.getParameter("userRole");
		String nickname = this.getParameter("nickname");
		String phone = this.getParameter("phone");
		String password = DES.md5("123456");
		
		List<String> sqls = new ArrayList<String>();
		List<Object> list = dbQuery(String.format("select dataid, c11 nickName, c20 userRole from B_UserLogin where c2=%s", new Object[]{phone}));
		if(list!=null && list.size()>0){
			Object o = list.get(0);
			if(DBUtil.getDBString(o, "nickName").equals(nickname) && !DBUtil.getDBString(o, "userRole").equals(userRole)){
				sqls.add(String.format("update B_UserLogin set c20=c20||',%s' where dataid=%s", new Object[]{userRole, DBUtil.getDBString(o, "dataid")}));
				if(dbExe(sqls)){
					sqls.clear();
			        logger(ComBeanLogType.TYPE_EDIT, "更新管理人员", new Object[]{nickname});
					this.setMessage(true, "管理人员权限更新成功.");
					return BConstants.MESSAGE;
				}
			}else{
				this.setMessage(false, "该手机号码已被注册.");
				return BConstants.MESSAGE;
			}
		}else{
			String auid = UGID.createUGID();
			String empDataid = getSqlValue("select pkg_pbmedi_web.SF_GetMaxID('IS_Emp','dataid') cc from dual", "cc");
			String userid = getSqlValue("select pkg_pbmedi_web.SF_GetMaxID('S_User','userID') cc from dual", "cc");
			sqls.add(String.format("insert into B_UserLogin(dataid,c1,c2,c3,c4,c5,c6,c8,c9,c11,c20,c25) select seqB_UserLogin.nextval,'%s','%s','%s',2,dataid,c1,1,130001,'%s','%s','%s' from B_MMOrgan where dataid=%s", new Object[]{auid, phone, password, nickname, userRole, nickname, dataid}));
			sqls.add(String.format("insert into IS_Emp(dataid,c1,c2,c3,c4,c5,c10,c11,c15,c16) values('%s','%s','%s','%s','%s','%s',130001,'%s','无','系统已启用')", new Object[]{empDataid, nickname, 1, 1, 1, phone, phone})); 
			sqls.add(String.format("insert into S_User(userID,loginName,userName,password,validatePassword,roleID,cssStyle,state,areaID,empID) values('%s','%s','%s','%s','%s',%s,'default',1,-1,'%s')", new Object[]{userid, phone, nickname, password, password, userRole, empDataid}));
			if(dbExe(sqls)){
				sqls.clear();
		        logger(ComBeanLogType.TYPE_EDIT, "新增管理人员", new Object[]{nickname});
				this.setMessage(true, "新增管理人员成功.");
				return BConstants.MESSAGE;
			}
		}

		this.setMessage(false, "新增管理人员失败.");
		return BConstants.MESSAGE;
    }
    
	public String XMLPrintQRCode(){
		String startID = this.getParameter("startID");
		String endID = this.getParameter("endID");
		String code = this.getParameter("code");
		List<Object> list = null;
		if(code.equals("AppVersion")) list = dbQuery(SQL.IS_QRCode_QueryByC_AppVersion(code, startID, endID));
		else list = dbQuery(SQL.YS_QRCode_QueryByC(code, startID, endID));
        logger(ComBeanLogType.TYPE_QUERY, "打印二维码");

        Object[] objs = null;
        if(list!=null && list.size()>0){
			int i = 0;
            objs = new Object[list.size()+2];
            objs[i++] = this.getParameter("tableHeight", BConstants.DEF_TABLE_HEIGHT);
            objs[i++] = new Object[]{new TColumn("序号"),
                                     new TColumn("编号"),
                                     new TColumn("说明"),
                                     new TColumn("")};
            String id, desc, qr;
            int qrtype;
            switch(code){
            case "Place": qrtype = SQL.QRCodeType_PLACE;break;
            case "Container": qrtype = SQL.QRCodeType_CONTAINER;break;
            case "Package": qrtype = SQL.QRCodeType_PACKAGE;break;
            case "Car": qrtype = SQL.QRCodeType_CAR;break;
            default:qrtype = -1;
            }
            for(Object o: list){
            	id = DBUtil.getDBString(o, "id");
            	if(code.equals("AppVersion")){
            		desc = DBUtil.getDBString(o, "name");
            		qr = desc;
            	}else{
                	desc = DBUtil.getDBString(o, "name") + id;
                	qr = dES.encrypt(ComBeanI_DataParamType.get(qrtype).getMemo()+id+"`"+desc);
            	}
                objs[i++] = new Object[]{"",
                		                 (i-2),
                		                 id+"<input type=hidden name=desc value=\""+desc+"\"><input type=hidden name=qrcode value="+qr+">",
                		                 desc,
                		                 qr
                		                 };
            }
            
        }
        this.setResultList(objs);

        return BConstants.LIST;
	}
    
    public String XMLUnitSelector(){
    	String selectName = this.getParameter("selectName");
    	String def = this.getParameter("def");    	
    	this.setMessage(true, HIUtil.genHtmlSelect(true, selectName, ComBeanI_DataParamType.getNameMap(isSuperAdmin(), 183), def, false, ""));
        return BConstants.MESSAGE;
    }
    
    public String XMLGoodsTypeSelector(){
    	String selectName = this.getParameter("selectName");    	
    	StringBuilder s = new StringBuilder();
        s.append("<input type=hidden name=\"").append(selectName).append("\">");
        s.append("<input type=text class=ipt_text name=\"TMP_").append(selectName).append("\" size=10 onchange=\"if(this.value=='') d('"+selectName+"').value='';\"");
        s.append(" onclick=\"CommonFocus();selectFromDataParamType(d('"+selectName+"'))\"");
        s.append(">&nbsp;");
        s.append("<input type=hidden name=\"PID_").append(selectName).append("\" value="+1001+">");
        this.setMessage(true, s.toString());
        return BConstants.MESSAGE;
    }
    public String XMLCommonDataParamSelector(){
    	int paramClass = this.getParameter("paramClass", -1);
    	String selectName = this.getParameter("selectName");
    	String def = this.getParameter("def");    	
    	this.setMessage(true, HIUtil.genHtmlSelect(true, selectName, ComBeanI_DataParamType.getNameMap(isSuperAdmin(), paramClass), def, false, ""));
        return BConstants.MESSAGE;
    }

    //APP模块: 同步APP Server
    public String XMLAAppModule_SynAppServer(){
		ComBeanI_DataTable.load();
		ComBeanI_DataParamType.load();
        if(Constants.WEBSERVER_URL.length()>0){
    		String rtn = APPLY_URL(ComBeanI_SystemParam.getText(904, "904001")+"ComService.r?cmd=reloadSysData", "{password:'"+dES.md5("wwwwwwww")+"'}");

            Executors.newSingleThreadExecutor().submit(new Runnable() {
				public void run() {
            		APPLY_URL("http://127.0.0.1:8088/aceserver/ComService.r?cmd=reloadSysData", "{password:'"+dES.md5("wwwwwwww")+"'}");
                }
            });
            Executors.newSingleThreadExecutor().submit(new Runnable() {
				public void run() {
            		APPLY_URL("http://127.0.0.1:8099/aceserver/ComService.r?cmd=reloadSysData", "{password:'"+dES.md5("wwwwwwww")+"'}");
                }
            });
            Executors.newSingleThreadExecutor().submit(new Runnable() {
				public void run() {
            		APPLY_URL("http://192.168.0.122:80/aceserver/ComService.r?cmd=reloadSysData", "{password:'"+dES.md5("wwwwwwww")+"'}");
                }
            });
            Executors.newSingleThreadExecutor().submit(new Runnable() {
				public void run() {
            		APPLY_URL("http://192.168.0.104:8080/aceserver/ComService.r?cmd=reloadSysData", "{password:'"+dES.md5("wwwwwwww")+"'}");
                }
            });
            Executors.newSingleThreadExecutor().submit(new Runnable() {
				public void run() {
            		APPLY_URL("http://192.168.0.111:8080/aceserver/ComService.r?cmd=reloadSysData", "{password:'"+dES.md5("wwwwwwww")+"'}");
                }
            });
            
    		if(rtn.substring(0,1).equals("1"))
    		    this.setMessage(true, rtn.substring(2));
    		else
    		    this.setMessage(false, rtn.substring(2));
        }
		return BConstants.MESSAGE;
    }

    //APP模块: 复制APP模块及明细
    public String XMLBAppModule_CopyDetail(){
    	String dataid = this.getParameter("dataid");
        Object[] params = new Object[]{
        		"copy", 
        		dataid, //ao.getDataid(),
        		23, //ao.getTableID(),
        		"",
        		"",
        		"",
        		0,
        		this.getUserSession().getUserName()
        		};
        if(dbExe("SP_B_DataManager", params)){
        	String message = getMessage();
        	String newdataid = null;
        	if(message.indexOf("dataid=") > 0) newdataid = message.substring(message.indexOf("dataid=")+7);
        	
        	List<Object> list = dbQuery("select dataid from IS_AppModuleDetail where parentDataid="+dataid);
        	if(list!=null && list.size()>0){
        		for(Object o: list){
            		params = new Object[]{
                    		"copy", 
                    		DBUtil.getDBLong(o, "dataid"), //ao.getDataid(),
                    		24, //ao.getTableID(),
                    		"", //keyword
                    		newdataid, //param
                    		"",
                    		0,
                    		this.getUserSession().getUserName()
                    		};
                    if(dbExe("SP_B_DataManager", params)){
                    	
                    }
        		}
        	}
        	this.setMessage(true, "复制添加模块及明细成功");
        	loggerB(ComBeanLogType.TYPE_ADD, "复制添加模块及明细：(dataid="+dataid+")", "23", dataid, params);
        }
		return BConstants.MESSAGE;
    }

    public String XMLSUserStart(){
        this.dbExe_p("SP_S_UserManager", new Object[]{"start", this.getParameter("dataid"), ""});
        this.logger(ComBeanLogType.TYPE_EDIT, this.getMessage());
        return BConstants.MESSAGE;
    }
    public String XMLSUserStop(){
        this.dbExe_p("SP_S_UserManager", new Object[]{"stop", this.getParameter("dataid"), ""});
        this.logger(ComBeanLogType.TYPE_EDIT, this.getMessage());
        return BConstants.MESSAGE;
    }
    public String XMLPubData_AJobStruct(){
        StringBuilder rtn = new StringBuilder("");
        
        String c2 = HIUtil.isNull(this.getSession("SSID_"+ComBeanIS_Organ.TABLEID), "-1")+"";
        List<Object> list = this.dbQuery("select a.dataid,a.c1, NVL(c7,0) s1 from IS_JobPosition a where c2="+c2+" and c6 is null union select b.dataid+1000 dataid,b.c1, NVL(c6,0) s1 from IS_Department b where c2="+c2+" order by s1, dataid");
        if(list!=null && list.size()>0){
            rtn.append("<table border=1 cellspacing=0 cellpadding=10><tr>");
            long parentID = -1L;
            HashMap<Long, List<Object>> pmap = new HashMap<Long, List<Object>>();
            List<Object> tmp = new ArrayList<Object>();
            for(Object o: list){
                if(parentID != DBUtil.getDBLong(o, "s1")){
                    if(parentID>=0) pmap.put(parentID, tmp);
                    tmp = new ArrayList<Object>();
                    parentID = DBUtil.getDBLong(o, "s1");
                }
                tmp.add(o);
            }
            if(parentID>=0) pmap.put(parentID, tmp);
            
            if(pmap.get(0L) != null) rtn.append(getChilds_Struct(pmap, 0L));
            rtn.append("</tr></table>");
        }
        this.setMessage(true, rtn.toString());
        return BConstants.MESSAGE;
    }
    
    public String XMLPubData_AJobPosition(){
        StringBuilder rtn = new StringBuilder("");
        
        String c2 = HIUtil.isNull(this.getSession("SSID_"+ComBeanIS_Organ.TABLEID), "-1")+"";
        List<Object> list = this.dbQuery("select a.*, NVL(c7,0) s1 from IS_JobPosition a where c2="+c2+" order by s1, dataid");
        if(list!=null && list.size()>0){
            rtn.append("<table border=1 cellspacing=0 cellpadding=10><tr>");
            long parentID = -1L;
            HashMap<Long, List<Object>> pmap = new HashMap<Long, List<Object>>();
            List<Object> tmp = new ArrayList<Object>();
            for(Object o: list){
                if(parentID != DBUtil.getDBLong(o, "s1")){
                    if(parentID>=0) pmap.put(parentID, tmp);
                    tmp = new ArrayList<Object>();
                    parentID = DBUtil.getDBLong(o, "s1");
                }
                tmp.add(o);
            }
            if(parentID>=0) pmap.put(parentID, tmp);
            
            if(pmap.get(0L) != null) rtn.append(getChilds_Struct(pmap, 0L));
            rtn.append("</tr></table>");
        }
        this.setMessage(true, rtn.toString());
        return BConstants.MESSAGE;
    }
    private StringBuilder getChilds_Struct(HashMap<Long, List<Object>> pmap, Long key){
        StringBuilder rtn = new StringBuilder("");
        rtn.append("<table border=0 cellspacing=0 cellpadding=0 width=100%><tr>");
        for(Object o: pmap.get(key)){
            rtn.append("<td align=center style=\"border:1px solid #220000\"><div style=\"padding:20px;\"><b>");
            rtn.append(DBUtil.getDBString(o, "c1"));
            rtn.append("</td>");
        }
        rtn.append("<tr>");
        for(Object o: pmap.get(key)){
            rtn.append("<td align=center valign=top>");
            if(pmap.get(DBUtil.getDBLong(o, "dataid")) != null) rtn.append(getChilds_Struct(pmap, DBUtil.getDBLong(o, "dataid")));
            rtn.append("</td>");
        }
        rtn.append("</tr></table>");
        return rtn;
    }
    
    public String XMLSetCurrentSID(){
        System.out.println("CURRENT_SID: set "+this.getParameter("sidName")+"="+this.getParameter("sidValue"));
        this.setSession(this.getParameter("sidName"), this.getParameter("sidValue"));
        return BConstants.MESSAGE;
    }
    
    public String XMLUploadPic(){
        /*String uploaddir = "./uploads/";
        File file = $uploaddir . basename($_FILES['uploadfile']['name']);   
        if (move_uploaded_file($_FILES['uploadfile']['tmp_name'], $file))
           this.setMessage(true, "success");
        else
            this.setMessage(true, "error");*/
        return BConstants.MESSAGE;
    }
    
    public String XMLGetParamClassList() {
    	int ParamClass = this.getParameter("ParamClass", -1);
        List<String []> map = new ArrayList<String []>();
        TreeMap<Integer, String> list = ComBeanI_SystemParam.getList(ParamClass);
        if(list!=null && list.size()>0){
            Set<Integer> keys = list.keySet();
            for(Integer key: keys){
              map.add(new String []{key+"", list.get(key)});
            }
        }
        this.setMessage(true, HIUtil.genHtmlOption(map, ""));
        return BConstants.MESSAGE;
    }
    
    public String setCssStyle(){
    	if(dbExe("SP_S_UserUpdateCssStyle", new Object[]{this.getParameter("cssStyle", "blue"), this.getUserSession().getUserID()})){
    		this.setMessage(true, "1");
    	}
        return BConstants.MESSAGE;
    }
    
    public String password(){
    	S_User user = null;
    	if(this.getUserSession().isSuperAdmin()) user = this.getUserSession();
    	else user = (S_User)getList(S_User.class, this.dbQuery("SP_S_UserQueryByUserID", new Object[]{this.getUserSession().getUserID()})).get(0);
        if(MD5.encode(this.getParameter("password").toUpperCase()).equals(user.getValidatePassword())){
            this.setMessage(true, "1");
        }
        return BConstants.MESSAGE;
    }
    public String XMLCheckLoginNameValid(){
        String loginName = this.getParameter("loginName");
        if(Integer.parseInt(getSqlValue("select count(userID) counter from S_User where loginName='"+loginName+"'", "counter"))==0){
            this.setMessage(true, "1");
        }
        return BConstants.MESSAGE;
    }

    @SuppressWarnings("unchecked")
    public String XMLGetDataParamTypeList() {
        String typeLevel = this.getParameter("typeLevel");
        int hasAll = this.getParameter("hasAll", 0);
        String defText = this.getParameter("defText");
        List<I_DataParamType> list = getList(I_DataParamType.class, dbQuery("select * from I_DataParamType where typeLevel="+typeLevel));
        List<String []> map = new ArrayList<String []>();
        if(list!=null && list.size()>0){
            if(hasAll==1) map.add(new String []{"", defText});
            for(I_DataParamType o: list){
                map.add(new String []{o.getParamClassID()+"", o.getClassName()});
            }
        }
        this.setMessage(true, HIUtil.genHtmlOption(map, ""));
        return BConstants.MESSAGE;
    }
    @SuppressWarnings("unchecked")
    public String XMLGetDataTableTypeList() {
        String typeLevel = this.getParameter("typeLevel");
        int hasAll = this.getParameter("hasAll", 0);
        String defText = this.getParameter("defText");
        List<I_DataTableType> list = getList(I_DataTableType.class, dbQuery("select * from I_DataTableType where typeLevel="+typeLevel));
        List<String []> map = new ArrayList<String []>();
        if(list!=null && list.size()>0){
            if(hasAll==1) map.add(new String []{"", defText});
            for(I_DataTableType o: list){
                map.add(new String []{o.getTableTypeID()+"", o.getTableTypeName()});
            }
        }
        this.setMessage(true, HIUtil.genHtmlOption(map, ""));
        return BConstants.MESSAGE;
    }
    @SuppressWarnings("unchecked")
    public String XMLGetAreaList() {
        String upAreaID = this.getParameter("upAreaID");
        String level = this.getParameter("level");
        int hasAll = this.getParameter("hasAll", 0);
        String defText = this.getParameter("defText");
        List<I_Area> list;
        if(!HIUtil.isEmpty(upAreaID)){
            list = getList(I_Area.class, dbQuery("select * from I_Area where upAreaID="+upAreaID));
        }else{
            list = getList(I_Area.class, dbQuery("select * from I_Area where areaLevel="+level));
        }
        List<String []> map = new ArrayList<String []>();
        if(list!=null && list.size()>0){
            if(hasAll==1) map.add(new String []{"", defText});
            for(I_Area o: list){
                map.add(new String []{o.getAreaID()+"", o.getAreaName()});
            }
        }
        this.setMessage(true, HIUtil.genHtmlOption(map, ""));
        return BConstants.MESSAGE;
    }
    
	public String getBulletin(){
    	StringBuilder tmp = new StringBuilder("");
    	List<Object> list = dbQuery(String.format("select * from IS_Bulletin where c1=%s", new Object[]{this.getUserSession().getOrganID()})); 
        if(list!=null && list.size()>0){
        	tmp.append("<table class=tbBorder cellSpacing=1>");
        	int i = 0;
            for(Object o: list){
            	if(i==5) break;
            	tmp.append("<tr><td class=listBody>").append(DBUtil.getDBString(o, "c2")).append("</td></tr>");
            	i++;
            }
            for(;i<5;i++){
            	tmp.append("<tr><td class=listBody><br></td></tr>");
            }
            tmp.append("</table>");
        }
        this.setMessage(true,tmp.toString());
        return BConstants.MESSAGE;
    }
    
    @SuppressWarnings("unchecked")
	public String getActionMessage(){
    	int actionID = this.getParameter("actionID", -1);
    	
    	StringBuilder tmp = new StringBuilder("");
    	List<T_Message> list = getList(T_Message.class, dbQuery("SP_T_MessageQueryByActionId", new Object[]{actionID})); 
        if(list!=null && list.size()>0){
        	tmp.append("<table class=tbBorder cellSpacing=1>");
        	int i = 0;
            for(T_Message o: list){
            	if(i==5) break;
            	tmp.append("<tr><td class=listBody>[").append(o.getIstDate()).append("]").append(o.getContent());
//            	if(actionID == B_DataBaseBean.ACTION_ID_PUBLISH){
//
//            	}else if(actionID == B_DataBaseBean.ACTION_ID_COMMIT){
//                	tmp.append("<a href=\"../biz/B_DataCheck.y?ao.tableID=").append(o.getTableID()).append("\"><查看></a>");
//            	}else if(actionID == B_DataBaseBean.ACTION_ID_CHECK){
//                	tmp.append("<a href=\"../biz/B_DataCmt.y?ao.tableID=").append(o.getTableID()).append("\"><查看></a>");
//            	}else if(actionID == B_DataBaseBean.ACTION_ID_CMT){
//                	tmp.append("<a href=\"../biz/B_DataPublish.y?ao.tableID=").append(o.getTableID()).append("\"><查看></a>");
//            	
//            	}else if(actionID == 404){ //缺规格的商品
//                	tmp.append("<a href=\"../biz/B_DataPublicChild.y?ao.tableID=").append(o.getTableID()).append("&ao.parentDataid=").append(o.getDataid()).append("&afp=1\"><查看></a>");
//            	}
            	tmp.append("</td></tr>");
            	i++;
            }
            for(;i<5;i++){
            	tmp.append("<tr><td class=listBody><br></td></tr>");
            }
            tmp.append("</table>");
        }
        this.setMessage(true,tmp.toString());
        return BConstants.MESSAGE;
    }
    
    public String TestSql(){
    	return this.exeByCmd("");
    }
	
    public String exeSqls(){
    	String sqls = this.getParameter("sqls");
        String[] sqlarray = sqls.split("\n");
    	StringBuilder tmp = new StringBuilder("");
        BizDBResult dr;
        for(String s: sqlarray){
        	tmp.append(s+"\n");
        	if(s.trim().startsWith("select")){
                dr = DaoUtil.dbQuery("SQL", s.trim());
            	tmp.append(dr.getRecordset().size()+"n selected.\n\n");
        	}else{
        		dr = DaoUtil.dbExe("SQL", s.trim());
            	tmp.append(dr.getInfo()+"\n\n");
        	}
        }
        this.setMessage(true, tmp.toString());
        return BConstants.MESSAGE;
    }

    public String exeSP(){
    	String sqls = this.getParameter("sqls").trim();
    	int pos = sqls.indexOf("(");
    	if(pos<0) pos = sqls.indexOf("[");    	
    	if(pos<0){
    		this.setMessage(true, "格式错误！！！ SPNAME(param1, param2, param3, ....)");
            return BConstants.MESSAGE;
    	}
    	String sp = sqls.substring(0, pos).trim();
    	String[] params = sqls.substring(pos+1, sqls.length()-1).replaceAll(", ", ",").split(",");
    	BizDBResult dr = dbExe(sp, params, true);
        this.setMessage(true, dr.getInfo());
        return BConstants.MESSAGE;
    }

    private static final long serialVersionUID = -2503008236559105766L;
	

    public boolean getHasCmtPower(){
    	return this.checkUserPower("B_DataCmt");
    }
    public boolean getHasCheckPower(){
    	return this.checkUserPower("B_DataCheck");
    }
    public boolean getHasPublishPower(){
    	return this.checkUserPower("B_DataPublish");
    }

}
