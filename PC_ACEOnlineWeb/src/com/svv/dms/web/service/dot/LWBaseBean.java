package com.svv.dms.web.service.dot;

import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

import com.gs.db.util.DBUtil;
import com.gs.db.util.DateUtil;
import com.svv.dms.web.common.ComBeanI_DataParamType;
import com.svv.dms.web.entity.I_DataParamType;
import com.svv.dms.web.service.base.AbstractBean;
import com.svv.dms.web.service.base.BConstants;
import com.svv.dms.web.util.HIUtil;

public class LWBaseBean extends AbstractBean {
	protected boolean IFACE_DBLOG_FLAG = true;
	public final static int ACCESS_MARKID_ORDER_COMMIT = 2001;
	public final static int ACCESS_MARKID_ORDER_REBACK = 2002;
	public final static int ACCESS_MARKID_GOODSPRICE_UPDATE = 2003;
	protected String auid;
	protected String mymid;
	protected String myamid;
	protected String M0;
	protected String M3;
	protected int CUR_HOUR;
	protected String dotGroup;
	protected int mmGroup = 0;
	protected long VN_dishes = -1;
	protected long VN_goods = -1;
	protected long VN_mgoods = -1;
	protected long VN_order = -1;
	protected int MM_valid;  //商家的正式9非正式7测试4
	protected String APPLE_TEST_BUYER = "24"; ///////////////////苹果测试买家
	protected String APPLE_TEST_SELLER = "43"; ///////////////////苹果测试卖家
	protected String updated_gspsid;
	
	protected boolean TIME_ACCESS(int accessMarkid){
		//=============1:00-6:00 禁止买家下单============
//		if(accessMarkid==ACCESS_MARKID_ORDER_COMMIT && CUR_HOUR >=1 && CUR_HOUR <3){
//			logger.debug("系统维护时间1:00-6:00禁止下单.");
//			this.setMessage(true, new LWResult(LWResult.SYSALARM, "系统维护时间1:00-6:00禁止下单.").toDESString());
//			return false;
//		}

//		//=============11点之后禁止退单============
//		if(accessMarkid==ACCESS_MARKID_ORDER_REBACK && CUR_HOUR >= 18){
//			logger.debug("每日18点之后禁止退单.");
//			this.setMessage(true, new LWResult(LWResult.SYSALARM, "每日18点之后禁止退单.").toDESString());
//			return false;
//		}
		
		//=============20点之后禁止改价============
//		if(accessMarkid==ACCESS_MARKID_GOODSPRICE_UPDATE && CUR_HOUR >= 20){
//			logger.debug("每日20点之后禁止改价.");
//			this.setMessage(true, new LWResult(LWResult.SYSALARM, "每日20点之后禁止改价.").toDESString());
//			return false;
//		}

        return true;
	}

	protected boolean ACCESS(){
		return ACCESS(true, false);
	}
	
	protected boolean ACCESS(boolean checkFlag){
		return ACCESS(checkFlag, false);
	}
	
	protected boolean ACCESS(boolean checkFlag, boolean renzhengFlag){
		this.readStreamParam(true);
		auid = this.getParameter("a0");
		mymid = this.getParameter("mid", "");
		myamid = this.getParameter("amid", "");
		M0 = this.getParameter("M0", "");  //用户身份
		M3 = this.getParameter("M3", "");  //位置
		String M1 = this.getParameter("M1", ""); //手机设备
		long M2 = this.getParameter("M2", -1L); //最后登录时间
		long M9 = this.getParameter("M9", -1L); //当前请求时间
		
		if( (new Date()).getTime() - M9 > 1200000){ //120秒
			logger.debug("非法请求！This is not correct request. M9:"+DateUtil.parseDate(M9)+" TIME:"+(new Date()).getTime());
			this.setMessage(true, "");
			return false;
		}
		if(!checkFlag) return true;
		
		return this.ACCESS_CHECK(renzhengFlag, auid, mymid, myamid, M0);
	}
	
	@SuppressWarnings("rawtypes")
	protected boolean ACCESS_CHECK(boolean renzhengFlag, String auid, String mid, String amid, String M0){
		this.systemuser.setUserName("["+M0+"-"+mid+"-"+auid+"]");
		this.systemuserloc = M3;
		CUR_HOUR = Integer.parseInt(HIUtil.getCurrentDate("HH"));
		
		List userStatusList = null;
		Object o;
		int flag = -1;
		if(M0.equals("MMB") || M0.equals("IMMB")){ //买家
			mmGroup = 1;
			if(auid.length()<27 || amid.length()!=30){
				logger.debug("非法买家用户！This is not system request.auid:"+auid+" amid:"+amid);
				this.setMessage(true, "");
				return false;
			}
			
			userStatusList = this.dbQuery(String.format(YSSQL.LWMMUser_QueryByAUID_AMID, new Object[]{"B_MMBuyer", auid, amid}));
			if(userStatusList!=null && userStatusList.size()>0){
				o = userStatusList.get(0);
				VN_dishes = getDBLong(o, "VN_dishes");
				VN_goods = getDBLong(o, "VN_goods");
				VN_order = getDBLong(o, "VN_order");
				MM_valid = getDBInt(o, "mmValid");
				
				int bizStatus = DBUtil.getDBInt(o, "bizStatus");
				if(DBUtil.getDBInt(o, "mmGroup")==1 && DBUtil.getDBInt(o, "userStatus")>0
						&& (!renzhengFlag && bizStatus>=203000 || renzhengFlag && bizStatus==203008)){
					flag = 1;
				}else{
					flag = 2;
					logger.debug("买家用户状态("+DBUtil.getDBInt(o, "mmGroup")+")！This is not system request.auid:"+auid+" amid:"+amid+" bizStatus:"+DBUtil.getDBInt(o, "bizStatus"));
				}
			}
			
		} else if(M0.equals("MMS") || M0.equals("IMMS")){ //卖家
			mmGroup = 2;
			if(auid.length()<27 || amid.length()!=30){
				logger.debug("非法卖家用户！This is not system request.auid:"+auid+" amid:"+amid);
				this.setMessage(true, "");
				return false;
			}
			
			userStatusList = this.dbQuery(String.format(YSSQL.LWMMUser_QueryByAUID_AMID, new Object[]{"B_MMSeller", auid, amid}));
			if(userStatusList!=null && userStatusList.size()>0){
				o = userStatusList.get(0);
				VN_mgoods = getDBLong(o, "VN_mgoods");
				VN_order = getDBLong(o, "VN_order");
				MM_valid = getDBInt(o, "mmValid");
				
				int bizStatus = getDBInt(o, "bizStatus");
				if(DBUtil.getDBInt(o, "mmGroup")==2 && DBUtil.getDBInt(o, "userStatus")>0
						&& (!renzhengFlag && bizStatus>=203000 || renzhengFlag && bizStatus==203008)){
					flag = 1;
				}else{
					flag = 2;
					logger.debug("卖家用户状态("+DBUtil.getDBInt(o, "mmGroup")+")！This is not system request.auid:"+auid+" amid:"+amid+" bizStatus:"+DBUtil.getDBInt(o, "bizStatus"));
				}
			}
			
		} else if(M0.equals("DOTB") || M0.equals("IDOB")){ //DOT买家
			userStatusList = this.dbQuery(String.format(YSSQL.LWDotUser_QueryByAUID, new Object[]{auid}));
			if(userStatusList!=null && userStatusList.size()>0){
				o = userStatusList.get(0);
				dotGroup = DBUtil.getDBString(o, "mmGroup");
				if((dotGroup.startsWith("SU") || dotGroup.startsWith("M")) && DBUtil.getDBInt(o, "userStatus")>0){
					flag = 1;
				}else{
					flag = 2;
				}
			}

		} else if(M0.equals("DOTS") || M0.equals("IDOS")){ //DOT卖家
			userStatusList = this.dbQuery(String.format(YSSQL.LWDotUser_QueryByAUID, new Object[]{auid}));
			if(userStatusList!=null && userStatusList.size()>0){
				o = userStatusList.get(0);
				dotGroup = DBUtil.getDBString(o, "mmGroup");
				if((dotGroup.startsWith("SU") || dotGroup.startsWith("C")) && DBUtil.getDBInt(o, "userStatus")>0){
					flag = 1;
				}else{
					flag = 2;
				}
			}
			
		} else if(M0.equals("DOTP")){ //DOT PDA
			userStatusList = this.dbQuery(String.format(YSSQL.LWDotUser_QueryByAUID, new Object[]{auid}));
			if(userStatusList!=null && userStatusList.size()>0){
				o = userStatusList.get(0);
				dotGroup = DBUtil.getDBString(o, "mmGroup");
				if((dotGroup.startsWith("SU") || dotGroup.startsWith("W") || dotGroup.startsWith("P")) && DBUtil.getDBInt(o, "userStatus")>0){
					flag = 1;
				}else{
					flag = 2;
				}
			}
			
		}
		if(flag == -1){
			logger.debug("非法登录！This is not system command.Please try to contact service.");
			this.setMessage(true, new LWResult(2, "非法登录").toDESString());
			return false;
			
		}else if(flag == 2) {
			logger.debug("用户状态不能执行此操作！This is not system command.Please try to contact service.");
			this.setMessage(true, new LWResult(2, "用户状态不能执行此操作！").toDESString());
			return false;
		}else{
			logger.debug("ACCESS SUCCESS");
		}
		return true;
	}
	
	protected String getDataParamTypeJson(Integer parentID){
		StringBuilder s = new StringBuilder("");
		TreeMap<Integer, I_DataParamType> typeMap = ComBeanI_DataParamType.getMap(parentID);
		s = new StringBuilder("[");
		if(typeMap!=null && typeMap.size()>0){
			Set<Integer> keys = typeMap.keySet();
			for(Integer key: keys){
				I_DataParamType o = typeMap.get(key);
				s.append("{\"typeID\":").append(o.getParamClassID()).append("")
				.append(",\"typeName\":\"").append(o.getClassName()).append("\"")
				.append("},");
			}
			s.deleteCharAt(s.length()-1);
		}
		s.append("]");
		logger.debug(s.toString());
		return s.toString();
	}
	
	protected String APPRETURN(LWResult result){
		this.setMessage(true, result.toDESString());
		return BConstants.MESSAGE;
	}
	

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3561271519094504585L;
	
	public int getDBInt(Object o, String colName){
		return DBUtil.getDBInt(o, colName);
	}
	public double getDBDouble(Object o, String colName){
		return DBUtil.getDBDouble(o, colName);
	}
	public long getDBLong(Object o, String colName){
		return DBUtil.getDBLong(o, colName);
	}
	public String getDBString(Object o, String colName){
		return DBUtil.getDBString(o, colName);
	}
	public String getDBPrice(Object o, String colName){
		return HIUtil.NumFormat(DBUtil.getDBString(o, colName), 2);
	}
	public String getDBNumString(Object o, String colName, int dot){
		return HIUtil.NumFormat(DBUtil.getDBString(o, colName), dot);
	}
	public String getDBDataParam(Object o, String colName){
		String id = getDBString(o, colName);
		return id.length()==0 ? "" : ComBeanI_DataParamType.getText(Integer.parseInt(id));
	}
}
