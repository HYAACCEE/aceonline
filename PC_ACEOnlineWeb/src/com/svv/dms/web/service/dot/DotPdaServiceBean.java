package com.svv.dms.web.service.dot;

import java.util.List;

import com.gs.db.database.BizDBResult;
import com.svv.dms.web.Constants;
import com.svv.dms.web.common.ComBeanI_DataParamType;
import com.svv.dms.web.common.ComBeanLogType;
import com.svv.dms.web.service.base.BConstants;

public class DotPdaServiceBean extends LWBaseBean {

	public String DotPdaService(){
		return this.exeByCmd("");
	}
	
	public String myModules(){
		if(!ACCESS()) return BConstants.MESSAGE;
		LWResult result = ServiceDO_MyModules();
		return APPRETURN(result);
	}
	
	public String moduleDetails(){
		if(!ACCESS()) return BConstants.MESSAGE;
		LWResult result = ServiceDO_ModuleDetails();
		return APPRETURN(result);
	}

	//PDA扫描提交
	public String commit(){
		if(!ACCESS()) return BConstants.MESSAGE;
		LWResult result = ServiceDO_Commit();
		return APPRETURN(result);
	}
	//PDA扫描检验订单编号
	public String checkCode(){
		if(!ACCESS()) return BConstants.MESSAGE;
		LWResult result = ServiceDO_CheckCode();
		return APPRETURN(result);
	}


	/**
	 * 
	 */
	private static final long serialVersionUID = -180454464938332642L;
	
	//PDA功能模块列表
	private LWResult ServiceDO_MyModules(){
		logger.debug("ServiceDO_MyModules PDA功能模块列表 ==============================================");
		StringBuilder s = new StringBuilder("");
		try{			
			List list = dbQuery(String.format("select a.dataid,a.c1,a.c2,a.c7 from YS_DotModule a, YS_DotUser b, YS_DotRoleModule c where a.dataid=c.c1 and b.c4=c.parentDataid and a.c7=204002 and b.c1=%s order by a.c2", new Object[]{auid}));//////////////////////////////////////////////////////////////
			if(list!=null && list.size()>0){
				s = new StringBuilder("[");
				for(Object o : list){
					s.append("{\"moduleID\":\"").append(getDBString(o, "dataid")).append("\"")
					.append(",\"moduleName\":\"").append(getDBString(o, "c1")).append("\"")
					.append(",\"moduleCode\":\"").append(getDBString(o, "c2")).append("\"")
					.append(",\"moduleType\":").append(getDBInt(o, "c7"))
					.append("},");
				}
				s.deleteCharAt(s.length()-1);
				s.append("]");
			}
			return new LWResult(LWResult.SUCCESS, s.toString());
		}catch(Exception e){
			e.printStackTrace();
		}
		return new LWResult(LWResult.FAILURE, "无记录");
	}
	
	//PDA功能模块元素列表
	private LWResult ServiceDO_ModuleDetails(){
		logger.debug("ServiceDO_ModuleDetails PDA功能模块元素列表 ========================================");
		StringBuilder s = new StringBuilder("");
		try{			
			String moduleID = this.getParameter("moduleID");
			int qrType;
			String qrPrex;
			List list = dbQuery(String.format("select * from YS_DotModuleDetail b where parentDataid=%s and c7>0 order by c7", new Object[]{moduleID}));
			if(list!=null && list.size()>0){
				s = new StringBuilder("[");
				for(Object o : list){
					try{
					    qrType = getDBInt(o, "c8");
					}catch(Exception e){
						qrType = 0;
					}
					qrPrex = qrType==0 ? "" : ComBeanI_DataParamType.get(qrType).getMemo();
					
					s.append("{\"dataid\":\"").append(getDBString(o, "dataid")).append("\"")
					.append(",\"mdName\":\"").append(getDBString(o, "c1")).append("\"")
					.append(",\"mdType\":\"").append(getDBString(o, "c2")).append("\"")
					.append(",\"mdSelects\":\"").append(getDBString(o, "c3")).append("\"")
					.append(",\"mdDef\":\"").append(getDBString(o, "c4")).append("\"")
					.append(",\"notNull\":\"").append(getDBString(o, "c5")).append("\"")
					.append(",\"single\":\"").append(getDBString(o, "c6")).append("\"")
					.append(",\"seq\":\"").append(getDBString(o, "c7")).append("\"")
					.append(",\"qrType\":\"").append(qrType).append("\"")
					.append(",\"qrPrex\":\"").append(qrPrex).append("\"")
					.append(",\"check\":\"").append(getDBString(o, "c9")).append("\"")
					.append(",\"qrcode2seq\":\"").append(getDBString(o, "c12")).append("\"")
					.append(",\"bluetooth\":\"").append(getDBString(o, "c13")).append("\"")
					.append("},");
				}
				s.deleteCharAt(s.length()-1);
				s.append("]");
			}
			return new LWResult(LWResult.SUCCESS, s.toString());
		}catch(Exception e){
			e.printStackTrace();
		}
		return new LWResult(LWResult.FAILURE, "无记录");
	}

	//PDA扫描校验订单编号
	private LWResult ServiceDO_CheckCode(){
		String moduleID = this.getParameter("moduleID");
		String seq = this.getParameter("seq");
		String qrcode = this.getParameter("qrcode").toUpperCase().trim();
		String qrcode2 = this.getParameter("qrcode2").toUpperCase().trim();//关联二维码编号
		String bluetooth = this.getParameter("bluetooth");//蓝牙数据
		String isInput = this.getParameter("isInput");//是否手工输入
		if(qrcode.length()>0){
			BizDBResult dr = dbExe("SP_PDA_ServiceDO_Check", new Object[]{auid, ComBeanDotUser.getUserName(auid), moduleID, seq, qrcode, qrcode2, bluetooth, isInput}, true);
			if(dr.getResult()){
				return new LWResult(LWResult.SUCCESS, dr.getInfo());
			}else{
				return new LWResult(LWResult.FAILURE, dr.getInfo());
			}
		}
		return new LWResult(LWResult.FAILURE, "无效的二维码编号.");
	}
	
	//PDA扫描提交
	private LWResult ServiceDO_Commit(){
		int p = 6; //this.getParameter("p", 0);
		String moduleID = this.getParameter("moduleID");
		if(moduleID.length()>0){
			StringBuilder params = new StringBuilder("");
			params.append("PB-"+this.getParameter("PBSEQ", 0)).append(Constants.SPLITER_SP);
			String pi = "";
			int N = 0;
			for(int i=0; i<p; i++){
				pi = this.getParameter("p"+i).toUpperCase().trim();
				pi = pi.replaceAll("`", ",");
				//////if(pi.length()==0) break;
				N++;
				params.append(pi).append(Constants.SPLITER_SP);
			}
			
			BizDBResult dr = dbExe("SP_PDA_ServiceDO_Commit", new Object[]{auid, ComBeanDotUser.getUserName(auid), moduleID, params.toString(), Constants.SPLITER_SP, N, 0}, true);
			if(dr.getResult()){
				return new LWResult(LWResult.SUCCESS, dr.getInfo());
			}else{
				return new LWResult(LWResult.FAILURE, dr.getInfo());
			}
		}
		return new LWResult(LWResult.FAILURE, "提交失败.");
	}

	private void blog(String content, String soid, String param){
		loggerB(ComBeanLogType.TYPE_EDIT, content, String.valueOf(YSSQL.TABLEID_O_ORDER_GOODS_ING), soid, new Object[]{param});
	}
}
