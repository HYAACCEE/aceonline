package com.svv.dms.web.service.dot;

import java.util.HashMap;
import java.util.List;

import com.gs.db.util.DBUtil;
import com.svv.dms.web.UGID;
import com.svv.dms.web.util.HIUtil;

public class LWServer {
    protected static HashMap<String, String> map = null;

    public static String getUrl(String key) {
        if(map==null) load();
        return map.get(key)==null? "":map.get(key);
    }
    
    public static String getUrlByAUID(String auid) {
        return getUrl(UGID.getServerIndex(auid));
    }
    
    @SuppressWarnings("rawtypes")
	private static void load() {
    	map = new HashMap<String, String>();
        List list = HIUtil.dbQuery(YSSQL.LWServer_Query);
        if (list != null && list.size() > 0) {
            for (Object o : list) {
                map.put(DBUtil.getDBString(o, "serverID"), DBUtil.getDBString(o, "url"));
            }
        }
    }
   
}
