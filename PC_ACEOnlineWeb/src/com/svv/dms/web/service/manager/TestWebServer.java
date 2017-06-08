package com.svv.dms.web.service.manager;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;

import com.svv.dms.web.util.DES;

public class TestWebServer {
    final static int BUFFER_SIZE = 4096;
	final static String SERVER = "http://101.201.80.73:3033/padm/";
	final static DES des = new DES();

	public static void main(String[] args){
		String LOGINTIME = new Date().getTime()+"";
		//web调用
		//TestWebServer.url("YSService.y?cmd=version", "{code:'201'}");
		//TestWebServer.url("YSService.y?cmd=registCheckPhone", "{a2:'12201110101'}");
		//TestWebServer.url("YSService.y?cmd=registNewB", "{a1:'"+des.md5("123456")+"',a2:'12201110101',nickname:'小雪'}");
		//TestWebServer.url("YSService.y?cmd=registNewS", "{a1:'"+des.md5("123456")+"',a2:'13301110101',nickname:'大雨'}");
		//TestWebServer.url("YSService.y?cmd=login", "{a1:'"+des.md5("123456")+"',a2:'13301110101',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("YSService.y?cmd=loginByOthers", "{usid:'111111111111222222222',nickname:'夏林',sex:'女',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("YSService.y?cmd=applyUrl", "{a1:'"+des.md5("123456")+"',a2:'13301110101'}");
		//TestWebServer.url("YSService.y?cmd=applyLogin", "{a1:'"+des.md5("12345678")+"',a2:'13693301332',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=typeMode", "{a0:'160212132545157010159714662569',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=userMode", "{a0:'160212132545157010159714662569',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=orderMode", "{a0:'160212132545157010159714662569',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=sjlist", "{a0:'160212132545157010159714662569',userMode:'',typeMode:'181003',orderMode:'',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=piclist", "{a0:'160212132545157010159714662569',picGroup:'0',userMode:'',typeMode:'181003',orderMode:'',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=agreeList", "{a0:'160212132545157010159714662569',sjid:'213132321321321',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=commentList", "{a0:'160212132545157010159714662569',sjid:'213132321321321',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=agree", "{a0:'160212132545157010159714662569',sjid:'213132321321321',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=comment", "{a0:'160212132545157010159714662569',userAuid:'160217135907051010150626623138',sjid:'160220190522192010120220663900',content:'测试ww评论',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=upLevel", "{a0:'160212132545157010159714662569',userAuid:'160217135907051010150626623138',sjid:'160220190522192010120220663900',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=collectPic", "{a0:'160212132545157010159714662569',picid:'213132321321321001',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("SubjectService.y?cmd=add", "{a0:'160212132545157010159714662569',picid:'213132321321321001',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("OrganService.y?cmd=list", "{a0:'160212132545157010159714662569',keyword:'',i0:'0',i1:'',i9:'20',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("OrganService.y?cmd=detail", "{a0:'160212132545157010159714662569',organID:'1',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("UserService.y?cmd=userinfo", "{a0:'160212132545157010159714662569',userAuid:'160212132545157010159714662569',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		TestWebServer.url("UserService.y?cmd=addFriend", "{a0:'160321182406235010198409800002',userAuid:'160415132500955030153677754506',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("UserService.y?cmd=friends", "{a0:'160329105047155030198559512833',friendMode:'2',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("UserService.y?cmd=teacherList", "{a0:'160329105047155030198559512833',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		//TestWebServer.url("MainService.y?cmd=main", "{a0:'160329105047155030198559512833',M0:'WW',M1:'',M2:'"+LOGINTIME+"',M3:'',M9:'"+(new Date()).getTime()+"'}");
		
		
	}
	
	
    public static String url(String url, String param){
		String rtn = "";
		try {
			url = SERVER.concat(url);
			URL sendUrl = new URL(url);
			URLConnection connection = sendUrl.openConnection();
			connection.setConnectTimeout(30000);
			connection.setReadTimeout(30000);
			connection.setDoOutput(true);
			connection.setRequestProperty("content-type", "text/html");
			OutputStreamWriter out = new OutputStreamWriter(connection.getOutputStream(), "utf-8");
			out.write(des.encrypt(param));
			out.flush();
			out.close();
			
			InputStreamReader in = new InputStreamReader(connection.getInputStream(), "utf-8");
			String sCurrentLine = "";
			BufferedReader l_reader = new BufferedReader(in);
			while ((sCurrentLine = l_reader.readLine()) != null) {
				rtn += sCurrentLine;
			}
			System.out.println("==================="+ url);
			System.out.println("==================="+ rtn);
			System.out.println("==================="+ des.decrypt(rtn));
			return rtn;
		} catch (Exception e) {
			System.out.println("ERROR to URL: "+url);
			System.out.println(rtn);
		} 
		return "";
    }
    

}
