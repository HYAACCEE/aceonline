package com.svv.dms.web.service.biz;

import java.util.List;

import com.gs.db.util.DBUtil;
import com.svv.dms.web.common.ComBeanLogType;
import com.svv.dms.web.dao.SQL;
import com.svv.dms.web.service.base.AbstractBean;
import com.svv.dms.web.service.base.BConstants;

public class I_EmpBean extends AbstractBean {

	@SuppressWarnings("rawtypes")
	public String I_EmpInfo(){
		if(this.getParameter("cmd").equals("")){
			if(this.getUserSession().getEmpID() > 0){
				List list0 = dbQuery("select c17 print_a4, c18 print_mark from IS_Emp where dataid="+this.getUserSession().getEmpID());
		        if(list0!=null && list0.size()>0){
		        	this.print_a4 = DBUtil.getDBString(list0.get(0), "print_a4");
		        	this.print_mark = DBUtil.getDBString(list0.get(0), "print_mark");
		        }
			}
		}
        return this.exeByCmd("");
    }
	
	public String setPrintInfo(){		
		if(editData(SQL.TABLEID_IS_Emp, new String[]{"c17","c18"}, new String[]{print_a4, print_mark}, null, String.valueOf(getUserSession().getEmpID()), "设置打印机")){
	        this.setMessage(true, "设置打印机成功.");
			logger(ComBeanLogType.TYPE_QUERY, "设置打印机");
		}
		return BConstants.MESSAGE;
	}
	

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 403389662158470060L;

    private String print_a4 = "HP LaserJet Pro MFP M127-M128 PCLmS";
    private String print_mark = "ZDesigner GX420d";
	public String getPrint_a4() {
		return print_a4;
	}

	public void setPrint_a4(String print_a4) {
		this.print_a4 = print_a4;
	}

	public String getPrint_mark() {
		return print_mark;
	}

	public void setPrint_mark(String print_mark) {
		this.print_mark = print_mark;
	}
}
