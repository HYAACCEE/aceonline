package com.svv.dms.web.service.biz;

import java.util.List;

import com.gs.db.util.DBUtil;
import com.svv.dms.web.service.base.AbstractBean;

public class PrintBase extends AbstractBean {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5837864983822740675L;
	
	private String print_a4 = null;
	private String print_mark = null;

	public String getPrint_a4(){
		print_a4 = (String)this.getSession("print_a4");
		if(print_a4==null) init();
		return print_a4;
	}
	public String getPrint_mark(){
		print_mark = (String)this.getSession("print_mark");
		if(print_mark==null) init();
		return print_mark;
	}
	
	private void init(){
		if(this.getUserSession().getEmpID() > 0){
			List<Object> list0 = dbQuery("select c17 print_a4, c18 print_mark from IS_Emp where dataid="+this.getUserSession().getEmpID());
	        if(list0!=null && list0.size()>0){
	        	this.print_a4 = DBUtil.getDBString(list0.get(0), "print_a4");
	        	this.print_mark = DBUtil.getDBString(list0.get(0), "print_mark");
	        }
		}else{
			print_a4 = "HP LaserJet Pro MFP M127-M128 PCLmS";
			print_mark = "ZDesigner GK888t (EPL)";
		}
		this.setSession("print_a4", print_a4);
		this.setSession("print_mark", print_mark);
	}
}
