package com.svv.dms.web.service.dot;

import com.jeesoon.util.logger.Logger;
import com.svv.dms.web.util.DES;

public class LWResult {
    public static Logger logger = Logger.getLogger(LWResult.class.getSimpleName());
    
	public final static int SUCCESS = 1;
	public final static int FAILURE = 2;
	public final static int SYSALARM = 3;
	public final static int EXCEPTION = 4;
	public final static String RESULT_SPLITER = "`";
	
	private int result = -1;
	private String info = "";
	
	public LWResult(int result, String info){
		this.result = result;
		this.info = info;
		logger.info(info);
	}
	public String toString(){
		return String.valueOf(result).concat(RESULT_SPLITER).concat(info);
	}
	public String toDESString(){
		return new DES().encrypt(String.valueOf(result).concat(RESULT_SPLITER).concat(info));
	}

}
