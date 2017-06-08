package com.svv.dms.web.service.dot;

import java.util.HashMap;
import java.util.List;

import com.gs.db.util.DBUtil;
import com.svv.dms.web.common.ComBeanBase;
import com.svv.dms.web.util.HIUtil;

public class ComBeanDotUser extends ComBeanBase {
    public final static int TABLEID = 29;
    public final static String USER_AUID = "c1";
    public final static String USER_NAME = "c10";
    public final static String USER_PHONE = "c2";
    
    protected static HashMap<String, Object> map = null;

    public static String getUserName(String auid) {
        if(map==null || map.get(auid)==null) load();
        return map.get(auid)==null? "":DBUtil.getDBString(map.get(auid), USER_NAME);
    }
    
    public static String getUserPhone(String auid) {
        if(map==null || map.get(auid)==null) load();
        return map.get(auid)==null? "":DBUtil.getDBString(map.get(auid), USER_PHONE);
    }

    @SuppressWarnings("rawtypes")
	public static void load() {
        map = new HashMap<String, Object>();
        List result = HIUtil.dbQuery("select * from YS_DotUser");
        if (result != null && result.size() > 0) {
            for (Object o : result) {
                map.put(DBUtil.getDBString(o, USER_AUID), o);
            }
        }
    }
}
