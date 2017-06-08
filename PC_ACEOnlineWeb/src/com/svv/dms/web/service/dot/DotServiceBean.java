package com.svv.dms.web.service.dot;

import java.util.Date;
import java.util.List;

import com.gs.db.util.DBUtil;
import com.svv.dms.web.common.ComBeanLogType;
import com.svv.dms.web.service.base.BConstants;

public class DotServiceBean extends LWBaseBean {

	public String DotService(){
		this.systemuser.setUserName("[DotUSER]");
		return this.exeByCmd("");
	}
	
	//DOT人员列表
	public String dotUserList(){
		if(!ACCESS()) return BConstants.MESSAGE;
		LWResult result = null;
		
		StringBuilder s = new StringBuilder("");		
		String FIRSTID = this.getParameter("i0");
		String LASTID = this.getParameter("i1");
		int maxcount = this.getParameter("i9", 100);//每次请求20条记录）
		pageFlag = 1; //使用分页
		pageRow = maxcount;
		List<Object> list = dbQuery(YSSQL.YS_DotUser_QueryByC(FIRSTID, LASTID));

		int n = 0;
		if(list!=null && list.size()>0){
			s = new StringBuilder("[");
			for(Object o : list){
				if(n == maxcount) break;
				s.append("{\"dataid\":").append(getDBString(o, "dataid"))
				.append(",\"auid\":\"").append(getDBString(o, "auid")).append("\"")
				.append(",\"userName\":\"").append(getDBString(o, "userName")).append("\"")
				.append(",\"phone\":\"").append(getDBString(o, "phone")).append("\"")
				.append(",\"roleName\":\"").append(getDBString(o, "roleName")).append("\"")
				.append(",\"face\":\"").append(getDBString(o, "face")).append("\"")
				.append("},");
				n++;
			}
			s.deleteCharAt(s.length()-1);
			s.append("]");
		}
		
		if(n>0) result = new LWResult(LWResult.SUCCESS, s.toString());
		else result = new LWResult(LWResult.FAILURE, "无记录");

		return APPRETURN(result);
	}

	
	/** 登录 by 手机号  **/
	public String login(){
		LWResult result = null;
		this.readStreamParam(true);
		
		String loginName = this.getParameter("a2");
		String password = this.getParameter("a1");
		int mmGroup = this.getParameter("mmGroup", -1);
		// 手机
		String by = "PHONE";
		Object user = checkUserExist(loginName, password);
		if(user!=null){
			String dotgroup = DBUtil.getDBString(user, "dotgroup");
			if(dotgroup.startsWith("W")){ //物流
				mmGroup = 3;
			}else if(dotgroup.startsWith("SU") //管理
				|| mmGroup == 1 && dotgroup.startsWith("M") //市场人员
				|| mmGroup == 2 && dotgroup.startsWith("C") //采购人员
				|| mmGroup == 3 && dotgroup.startsWith("P")){ //配送人员
			}else{
				mmGroup = -2;
			}
			if(mmGroup > 0){
				result = new LWResult(LWResult.SUCCESS, toUserJson(user, mmGroup));				
				this.systemuser.setUserName("[DOT-"+this.getParameter("M1")+"]"+DBUtil.getDBString(user, "auid"));
		        loggerM(ComBeanLogType.TYPE_LOGIN, loginName+"登录 by "+by);				
			}else{
				result = new LWResult(LWResult.FAILURE, "您没有权限访问"+mmGroup);
			}
		}else{
			result = new LWResult(LWResult.FAILURE, "用户或密码错误");
		}
		return APPRETURN(result);
	}
	
	/** 签到  **/
	public String sign(){
		if(!ACCESS()) return BConstants.MESSAGE;
		LWResult result = null;
		String address = this.getParameter("address");
		if(dbExe(String.format("insert into T_DotUser_Sign(dataid,parentDataid,c1,c2) select seqYS_DotUser_Sign.nextval,dataid,c1,'%s' from YS_DotUser where c1=%s", new Object[]{address, auid}))){
			result = new LWResult(LWResult.SUCCESS, "签到成功");
		}else{
			result = new LWResult(LWResult.FAILURE, "签到失败");
		}
		return APPRETURN(result);
	}

	/** 签到历史记录  **/
	public String signList(){
		if(!ACCESS()) return BConstants.MESSAGE;
		LWResult result = ServiceDO_Signlist();
        loggerM(ComBeanLogType.TYPE_QUERY, "浏览签到历史记录");
		return APPRETURN(result);
	}
	

	/**
	 * 
	 */
	private static final long serialVersionUID = -8917658913528347968L;
	
	@SuppressWarnings("rawtypes")
	private LWResult ServiceDO_Signlist(){
		StringBuilder s = new StringBuilder("");
		
		String FIRSTID = this.getParameter("i0");
		String LASTID = this.getParameter("i1");
		int maxcount = this.getParameter("i9", 100);//每次请求20条记录）
		pageFlag = 1; //使用分页
		pageRow = maxcount;
		List list = dbQuery(YSSQL.YS_DotUserSign_QueryByC(auid, FIRSTID, LASTID));

		int n = 0;
		if(list!=null && list.size()>0){
			s = new StringBuilder("[");
			for(Object o : list){
				if(n == maxcount) break;
				s.append("{\"dataid\":").append(getDBString(o, "dataid"))
				.append(",\"address\":\"").append(getDBString(o, "address")).append("\"")
				.append(",\"istdate\":\"").append(DBUtil.getDBDateStr(o, "istdate")).append("\"")
				.append("},");
				n++;
			}
			s.deleteCharAt(s.length()-1);
			s.append("]");
		}
		
		if(n>0) return new LWResult(LWResult.SUCCESS, s.toString());
		return new LWResult(LWResult.FAILURE, "无记录");
	}


	/** 用户是否存在 **/
	@SuppressWarnings("rawtypes")
	private Object checkUserExist(String loginName, String password){
		String sql = String.format(YSSQL.DotUserLogin_LOGIN_ByPHONE, new Object[]{loginName, password});
		List list = this.dbQuery(sql);
		if(list!=null && list.size()>0){
			return list.get(0);
		}
		return null;
	}

	/** 生成user json **/
	public static String toUserJson(Object o, int mmGroup){
		StringBuilder s = new StringBuilder();
		if(o!=null){
			s.append("{");
			s.append("\"lwserver\":\"").append(LWServer.getUrlByAUID(DBUtil.getDBString(o, "auid"))).append("\","); //LW服务器url
			s.append("\"logintime\":\"").append((new Date()).getTime()).append("\","); //登录时间
			s.append("\"auid\":\"").append(DBUtil.getDBString(o, "auid")).append("\",")
			 .append("\"dotgroup\":\"").append(mmGroup).append("\",")
			 .append("\"phone\":\"").append(DBUtil.getDBString(o, "phone")).append("\",")
			 .append("\"face\":\"").append(DBUtil.getDBString(o, "face")).append("\",")
			 .append("\"nickname\":\"").append(DBUtil.getDBString(o, "nickname")).append("\",")
			 .append("\"signing\":\"").append(DBUtil.getDBString(o, "signing")).append("\",")
			 .append("\"sex\":\"").append(DBUtil.getDBString(o, "sex")).append("\",")
			 .append("\"province\":\"").append(DBUtil.getDBString(o, "province")).append("\",")
			 .append("\"power\":\"\"");
			s.append("}");
		}
		return s.toString();
	}
}
