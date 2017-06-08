package com.svv.dms.web.service.dot;

import com.svv.dms.web.dao.SQL_0;
import com.svv.dms.web.util.Pinyin4jUtil;

public class YSSQL extends SQL_0{

	public final static int TABLEID_DOTUSER = 29;
	public final static int TABLEID_B_User_T01 = 5;
	public final static int TABLEID_A_GOODS = 14;
	public final static int TABLEID_A_GOODS_PS = 26;
	public final static int TABLEID_BMM_GOODS = 23;
	public final static int TABLEID_MM_DISHES = 19;
	public final static int TABLEID_O_ORDER_ING = 45;
	public final static int TABLEID_O_ORDER_GOODS_ING = 44;
	public final static int TABLEID_O_ORDER = 40;
	public final static int TABLEID_O_ORDER_GOODSDETAIL = 39;

	public final static int DOTMODULEID_QS = 23; //签收

	public final static String LWServer_Query = "select c1 serverID, c2 url from A_Server";
	
	/** lw app **/
	public final static String SEQ_Next = "select seq%s.nextval id from dual";
	public final static String LWUserLogin_CHECKPASS_ByAUID = "select count(*) counter from B_UserLogin a where c1='%s' and c3='%s' and c9=1";
	public final static String LWUserLogin_LOGIN_ByPHONE = "select a.c1 auid, a.c2 phone, a.c5 mid, a.c6 amid, a.c11 nickname, a.c12 face, a.c13 signing, a.c14 sex, a.c15 province from B_UserLogin a where c2='%s' and c3='%s' and c4=%d and c9=1";
	public final static String LWUserLogin_EXIST_PHONE = "select c1 auid, c5 mid, c6 amid from B_UserLogin where c2='%s' and c9=1";
	public final static String LWUserLogin_ADD = "insert into B_UserLogin(dataid,c1,c2,c3,c4,c5,c6,c9) values(seqB_UserLogin.nextval,'%s','%s','%s',%s,%s,'%s',1)";
	public final static String LWUserLogin_LOGON_SET = "update B_UserLogin set c22=c22+1,c7=sysdate where c1='%s'";
	public final static String LWUserLogin_UpdatePSWD = "update B_UserLogin set c3='%s' where c1='%s'";

	//登录用户状态
	public final static String LWMMDataVersion_QueryByAMID = "select c.c4 VN_dishes,c.c5 VN_goods,c.c6 VN_mgoods,c.c7 VN_order from B_MMDataVersion c where c.c1=%s";
	public final static String LWMMUser_QueryByAUID_AMID = "select a.c9 userStatus,a.c4 mmGroup,b.c11 bizStatus,b.c13 mmValid,c.c4 VN_dishes,c.c5 VN_goods,c.c6 VN_mgoods,c.c7 VN_order from B_UserLogin a,%s b,B_MMDataVersion c where a.c5=b.dataid and b.c2=c.c1 and a.c1=%s and b.c2=%s";
	public final static String LWDotUser_QueryByAUID = "select a.c9 userStatus,b.c2 mmGroup from YS_DotUser a, YS_DotRole b where a.c4=b.dataid and a.c1=%s";
	public final static String LWUSER_QueryByAUID = "select a.c1 auid, a.c2 phone, a.c5 mid, a.c11 nickname, a.c12 face, a.c13 signing, a.c14 sex, a.c15 province from B_UserLogin a where c1='%s'";
	
	public final static String LWUser_QueryByNear = "select c1 auid, '1111' power, c4 nickname, c5 sex, c11 face, c19 signing from B_UserLogin";
	public final static String LWUserFriend_QueryByA = "select c2 auid, c3 power, c5 info, istdate from B_UserFriend where c1='%s'";
	public final static String LWUserFriend_QueryByB = "select c1 auid, c3 power, c4 info, istdate from B_UserFriend where c2='%s'";
	
	public final static String LWSubject_ADD = "insert into YS_I_Subject(dataid,c1,c2,c3) values(seqYS_I_Subject.nextval,'%s','%s','%s')";
	public final static String LWSubjectPic_ADD = "insert into YS_I_Subject_Pic_T%s(dataid,c1,c2,c3,c4) values(seqYS_I_Subject_Pic_T%s.nextval,'%s','%s','%s','%s')";
	public final static String LWSubjectPicMark_ADD = "insert into YS_I_Subject_PicMark_T%s(dataid,c1,c2,c3,c4) values(seqYS_I_Subject_PicMark_T%s.nextval,'%s',0,'%s','%s')";
	public final static String LWSubjectComment_ADD = "insert into YS_I_Subject_Comment_T%s(dataid,c1,c2,c3) values(seqYS_I_Subject_Comment_T%s.nextval,'%s','%s','%s')";
	public final static String LWSubjectAgree_ADD = "insert into YS_I_Subject_Agree_T%s(dataid,c1,c2) values(seqYS_I_Subject_Agree_T%s.nextval,'%s','%s')";
	public final static String LWSubject_UpdateAgreeNum = "update YS_I_Subject set c5=c5+1 where c1='%s'";
	public final static String LWSubject_UpdateCommentNum = "update A_Subject set c6=c6+1 where c1='%s'";
	public final static String LWSubject_QueryByC(String auid, String mindataid, String maxdataid){
		return new StringBuilder("select a.dataid, a.c1 sjid, a.c2 auid, b.c1 picid, b.c4 picfile, '屌丝丁' nickname, c.c11 face, c.c19 signing,")
				.append(" a.c3 content, a.c4 agreenum, a.c5 commentnum, a.istdate ")
				.append(" from A_Subject a, A_Subject_Pic b, B_UserLogin c ")
				.append(" where a.c1=b.c3 and a.c2=c.c1 ")
				.append(getWhere_string("a.c2", auid))
				.append(getWhere_startNumber("a.dataid", mindataid, false))
				.append(getWhere_endNumber("a.dataid", maxdataid, false))
				.append(" order by dataid desc").toString();
	}
	public final static String LWSubjectPic_QueryByC(String auid, String mindataid, String maxdataid){
		return new StringBuilder("select b.dataid, b.c1 picid, b.c2 auid, b.c3 sjid, b.c4 picfile, c.c4 nickname, c.c11 face, c.c19 signing,")
				.append(" b.c5 marknum, b.c6 agreenum, b.c7 commentnum, b.c8 toptype, b.istdate ")
				.append(" from A_Subject_Pic b, B_UserLogin c ")
				.append(" where b.c2 = c.c1 ")
				.append(getWhere_string("b.c2", auid))
				.append(getWhere_startNumber("b.dataid", mindataid, false))
				.append(getWhere_endNumber("b.dataid", maxdataid, false))
				.append(" order by dataid desc").toString();
	}

	//=============农产品==============
	public final static String YS_Goods_Add = "insert into A_Goods(dataid,c1,c5,c6,c12,c13) values(seqA_Goods.nextval,'%s',%s,%s,'%s',%s)";
	public final static String YS_Goods_Edit = "update A_Goods set c1='%s',c5=%s,c6=%s,c12='%s' where dataid=%s";
	public final static String T_GoodsSearch_Log = "insert into T_GoodsSearch_Log(dataid,c1,c2,c3,c4,c5,c6,c7,c8) select seqT_GoodsSearch_Log.nextval,'%s',c1 auid,c11 userName,%s,%s,%s,'%s',%s from B_UserLogin where c1=%s";

	//农产品列表
	public final static String YS_Goods_QueryByC(String goodsType, String goodsName, String mindataid, String maxdataid){
		return new StringBuilder("select a.dataid,a.dataid goodsID,-1 gsid,-1 gspsid,-1 mgsid,a.c1 goodsName,a.c14 goodsDesc_,'' goodsDesc,a.c3 goodsPic,a.c5 goodsType,a.c6 goodsUnit,a.c7 goodsPrice,a.c12 mark,0 mgnum ")
				.append(" from A_Goods a where a.c13=130001 ")
				.append(YSSQL.getWhere_string(goodsType.length()==3?"substr(c5,1,3)":"c5", goodsType))
				.append(YSSQL.getWhere_like("a.c1||' '||a.c12", goodsName))
				.append(YSSQL.getWhere_startNumber("dataid", mindataid, false))
				.append(YSSQL.getWhere_endNumber("dataid", maxdataid, false))
				.append(" order by dataid").toString();
	}
	//农产品品种列表
	public final static String YS_GoodsBreed_QueryByC(String goodsType, String goodsName, String mindataid, String maxdataid){
		return new StringBuilder("select b.dataid,a.dataid goodsID,b.dataid gsid,-1 gspsid,-1 mgsid,b.c20 goodsName,a.c14 goodsDesc_,'' goodsDesc,NVL(b.c3,a.c3) goodsPic,a.c5 goodsType,a.c6 goodsUnit,a.c7 goodsPrice,a.c12 mark,b.c19 keyword,0 mgnum")
				.append(" from A_Goods a, A_Goods_Breed b where a.dataid=b.parentdataid and a.c13=130001 and b.c7=130001 ")
				.append(YSSQL.getWhere_string(goodsType.length()==3?"substr(a.c5,1,3)":"a.c5", goodsType))
				.append(YSSQL.getWhere_like("a.c1||' '||a.c12||' '||b.c1||' '||b.c8", goodsName))
				.append(YSSQL.getWhere_startNumber("b.dataid", mindataid, false))
				.append(YSSQL.getWhere_endNumber("b.dataid", maxdataid, false))
				.append(" order by dataid").toString();
	}
	//农产品列表(包装规格)
	public final static String YS_GoodsPS_QueryByC(String besideBuyerAMID, String besideSellerAMID, String goodsType, String goodsName, String mindataid, String maxdataid){
		return new StringBuilder("select a.dataid,a.dataid gspsid,a.parentDataid goodsID,a.c2 gsid,-1 mgsid,a.c20 goodsName,a.c13 goodsDesc,a.c12 goodsPic,a.c19 goodsType,a.c3 goodsUnit,a.c6 goodsPrice0,a.c7 goodsPrice1,a.c8 goodsPrice2,a.c9 goodsPrice3,a.c22 mark,a.c25 keyword, (select count(m.dataid) from BMS_Goods m,B_MMSeller n where m.c2=n.c2 and n.c11=203008 and m.c4=a.dataid and n.dataid>0 and m.c9=1) mgnum ")
				.append(" from A_Goods_PS a, A_Goods b where a.parentDataid = b.dataid ")
				.append(" and a.c9=130001 and b.c13=130001")
				.append(besideBuyerAMID.length()==0 ? "" : " and not exists (select m.dataid from BM_LastOrder_Goods m where m.c3=a.dataid and m.c8<>-2 and m.c1="+besideBuyerAMID+")")
				.append(besideSellerAMID.length()==0 ? "" : " and not exists (select m.dataid from BMS_Goods m where m.c4=a.dataid and m.c9<>-2 and m.c2="+besideSellerAMID+")")
				.append(YSSQL.getWhere_string(goodsType.length()==3?"substr(a.c19,1,3)":"a.c19", goodsType))
				.append(goodsName.length()==0?"": (" and ( a.c25 like '%"+goodsName+"%' or a.c25 like '%"+Pinyin4jUtil.getPinYin(goodsName)+"%' )"))
				.append(YSSQL.getWhere_startNumber("a.dataid", mindataid, false))
				.append(YSSQL.getWhere_endNumber("a.dataid", maxdataid, false))
				.append(" order by dataid").toString();
	}
	//农产品规格
	public final static String YS_GoodsPS_Add = "insert into A_Goods_PS(dataid,parentDataid,c1,c2,c3,c4,c5,c9) values(seqA_Goods_PS.nextval,%s,'%s',%s,%s,%s,%s,130001)";
	public final static String YS_GoodsPS_Edit = "update A_Goods_PS set c1='%s',c3=%s,c4=%s,c5=%s where dataid=%s";
	public final static String YS_GoodsPS_QueryByGoodsID = "select a.dataid gspsid,a.parentDataid goodsID,a.c2 gsid,b.c20 breedName,a.c20 gspsName,a.c3 gspsUnit,a.c4 csUnit,a.c5 psNum from A_Goods_PS a,A_Goods_Breed b where a.c2=b.dataid and a.c9=130001 and b.c7=130001 and a.parentDataid=%s";
	public final static String YS_GoodsPS_QueryByGsid = "select a.dataid gspsid,a.parentDataid goodsID,a.c2 gsid,b.c20 breedName,a.c20 gspsName,a.c3 gspsUnit,a.c4 csUnit,a.c5 psNum from A_Goods_PS a,A_Goods_Breed b where a.c2=b.dataid and a.c9=130001 and b.c7=130001 and a.c2=%s";
	//农产品标准单位
	public final static String YS_GoodsCS_Add = "insert into A_Goods_Caculation(dataid,parentDataid,c1,c2,c3) values(seqA_Goods_Caculation.nextval,%s,%s,%s,%s)";
	public final static String YS_GoodsCS_Edit = "update A_Goods_Caculation set c1='%s',c2=%s,c3=%s where dataid=%s";
	public final static String YS_GoodsCS_Query = "select parentDataid goodsID,dataid csid,c1 csUnit,c2 dsUnit,c3 csNum from A_Goods_Caculation where parentDataid=%s";
	//农产品品种
	public final static String YS_GoodsBreed_Add = "insert into A_Goods_Breed(dataid,parentDataid,c1,c7) values(seqA_Goods_Breed.nextval,%s,'%s',130001)";
	public final static String YS_GoodsBreed_Edit = "update A_Goods_Breed set c1='%s' where dataid=%s";
	public final static String YS_GoodsBreed_Query = "select parentDataid goodsID,dataid gsid,c1 breedName from A_Goods_Breed where c7=130001 and parentDataid=%s";
	//农商品列表
	public final static String MM_Goods_QueryByC(String amid, String status, String startMGoodsVN, String goodsName, String isnew, String mindataid, String maxdataid){
		return new StringBuilder("select ((decode(a.c5,0,1,0)||b.c19)*10000000000+a.dataid) dataid,a.dataid mgsid,a.c1 mgscd,a.c4 gspsid,a.c9 status,a.c10 goodsName,b.parentDataid goodsID,b.c2 gsid,b.c13 goodsDesc,b.c12 goodsPic,b.c19 goodsType,b.c3 goodsUnit,a.c5 goodsPrice,a.c6 grade,a.c7 isnew ")
		        .append(" from BMS_Goods a, A_Goods_PS b ")
				.append(" where a.c4 = b.dataid")
				.append(YSSQL.getWhere_string("a.c2", amid))
				.append(YSSQL.getWhere_like("a.c10", goodsName))
				.append(YSSQL.getWhere_number("a.c7", isnew))
				.append(YSSQL.getWhere_startNumber("a.c9", status, true))
				.append(YSSQL.getWhere_startNumber("a.c14", startMGoodsVN, true))
				.append(YSSQL.getWhere_startNumber("((decode(a.c5,0,1,0)||b.c19)*10000000000+a.dataid)", mindataid, false))
				.append(YSSQL.getWhere_endNumber("((decode(a.c5,0,1,0)||b.c19)*10000000000+a.dataid)", maxdataid, false))
				.append(" order by 1").toString();
	}
	public final static String MM_Goods_QueryByAmidGspsid = "select dataid mgsid, c1 mgscd, c9 status from BMS_Goods where c2=%s and c4=%s";
	public final static String MM_Goods_CountByAmidGspsid = "select count(*) counter from BMS_Goods where c2=%s and c4=%s";
	public final static String MM_Goods_CountByAMID = "select count(*) counter from BMS_Goods where c2='%s' and c9=1";
	public final static String MM_Goods_NextMGSID = "select seqBMS_Goods.nextval mgsid from dual";
	public final static String MM_Goods_ADD = "insert into BMS_Goods(dataid,c1,c2,c3,c4,c5,c6,c7,c9,c10,c14) select %s,'%s','%s',%s,%s,%s,9,%d,1,a.c20,%s from A_Goods_PS a where a.dataid=%s";
	public final static String MM_Goods_Edit = "update BMS_Goods set c5=%s,c6=9,c7=%d,c9=1,c14=%s,uptdate=sysdate where dataid=%s";
	public final static String MM_GoodsPriceHis_ADD = "insert into BMS_GoodsPriceHis(dataid,parentDataid,c1,c2,c3) select seqBMS_GoodsPriceHis.nextval,dataid,c1,c4,%s from BMS_Goods where dataid=%s";
	public final static String MM_Goods_Del__________________ = "delete from BMS_Goods where c1=%s";
	public final static String MM_Goods_SetDelStatus = "update BMS_Goods set c9=-2,c6=-2,c14=%s,uptdate=sysdate where c1=%s";
	
	/***************************************** DOT ********************************************/
	
	public final static String DotUserLogin_LOGIN_ByPHONE = "select a.c1 auid, a.c2 phone, b.c2 dotgroup, a.c11 nickname, a.c12 face, a.c13 signing, a.c14 sex, a.c15 province from YS_DotUser a, YS_DotRole b where a.c4=b.dataid and a.c2='%s' and a.c3='%s' and a.c9=1";
	public final static String DotUserLogin_LOGON_SET = "update YS_DotUser set c7=c7+1,c6=sysdate where c1='%s'";
	public final static String DotUserLogin_EXIST_PHONE = "select c1 auid, c5 mid from YS_DotUser where c2='%s' and c9=1";
	public final static String DotUserLogin_ADD = "insert into YS_DotUser(dataid,c1,c2,c3,c5,c9) values(seqYS_DotUser.nextval,'%s','%s','%s','%s',1)";
	//DOT用户列表
	public static String YS_DotUser_QueryByC(String mindataid, String maxdataid){
		return new StringBuilder("select a.dataid, a.c1 auid, a.c10 userName, a.c2 phone, a.c12 face, b.c1 roleName ")
				.append(" from YS_DotUser a, YS_DotRole b where a.c4=b.dataid")
				.append(" and substr(b.c2,1) in ('S','M','C')")
				.append(YSSQL.getWhere_startNumber("a.dataid", mindataid, false))
				.append(YSSQL.getWhere_endNumber("a.dataid", maxdataid, false))
				.append(" order by userName").toString();
	}
	//签到历史记录
	public static String YS_DotUserSign_QueryByC(String auid, String mindataid, String maxdataid){
		return new StringBuilder("select dataid,c2 address,istdate ")
				.append(" from T_DotUser_Sign where 1=1")
				.append(YSSQL.getWhere_string("c1", auid))
				.append(YSSQL.getWhere_startNumber("dataid", mindataid, false))
				.append(YSSQL.getWhere_endNumber("dataid", maxdataid, false))
				.append(" order by dataid desc").toString();
	}

	//买家
	public final static String MMBuyer_QUERY = "select dataid, c1 mmName from B_MMBuyer";
	public final static String MMBuyer_QueryByAMID = "select c.dataid mid, c.c1 mmName, c.c2 amid, c.c3 mmType, c.c4 city, c.c5 address, c.c6 mmPic, c.c7 mmContact, c.c8 mmPhone, c.c9 creator, c.c11 bizStatus, c.c12 mmGrade, c.c13 sendCount, c.c14 mmPower, c.c15 memo, b.c7 xy from B_MMBuyer c, B_MMBuyer_Area b where c.dataid=b.parentDataid and c.dataid=%s and c.c2='%s' and c.c10=130001";
	public final static String MMBuyer_NextMID = "select seqB_MMBuyer.nextval mid from dual";
	public final static String MMBuyer_LikeName = "select * from B_MMBuyer where c4=%s and c1 like '%%s%'";
	public final static String MMBuyer_ADD = "insert into B_MMBuyer(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c17,c19,c20) values(%s,'%s','%s',%s,%s,'%s','%s','%s','%s','%s',130001,%s,%s,'%s','%s','%s')";
	public final static String MMBuyer_Edit = "update B_MMBuyer set c1='%s',c3='%s',c4='%s',c5='%s',c6='%s',c7='%s',c8='%s',c11=c11,c19='%s',c20='%s',uptdate=sysdate where dataid=%s";
	public final static String MMBuyer_EditContact = "update B_MMBuyer set c7='%s',c8='%s',uptdate=sysdate where dataid=%s";
	public final static String MMBuyer_QueryByName = "select * from B_MMBuyer where c4=%s and c1='%s'";
	public static String MMShop_Query(String tableName, String bizAuid, String city, String mmName, String mindataid, String maxdataid){
		return new StringBuilder("select a.dataid,a.dataid mid,a.c1 mmName,a.c2 amid,a.c3 mmType,a.c4 city,a.c5 address,a.c6 mmPic,a.c7 mmContact,a.c8 mmPhone,a.c9 creator,a.c11 bizStatus,a.c12 mmGrade,b.c7 xy,a.c19 openTime,a.c20 shopTime,c.c10 bizContact,c.c2 bizContactPhone,(select count(dataid) from BO_BuyerQuestion m where m.c8=a.c2 and istdate>=trunc(sysdate)) questionNum ")
		.append(" from "+tableName+" a, "+tableName+"_Area b, YS_DotUser c where a.dataid=b.parentDataid(+) and a.c17=c.c1(+) and a.c10=130001 and a.c13<>4 and a.c13<>-2")
		.append(getWhere_string("a.c4", city))
		.append(getWhere_string("a.c17", bizAuid))
		.append(getWhere_like("a.c1||c.c10", mmName))
		.append(YSSQL.getWhere_startNumber("a.dataid", mindataid, mindataid.equals("0")))
		.append(YSSQL.getWhere_endNumber("a.dataid", maxdataid, false))
		.append(" order by 1")
		.toString();
	}
	//卖家
	public final static String MMSeller_QUERY = "select dataid, c1 mmName from B_MMSeller";
	public final static String MMSeller_QueryByAMID = "select c.dataid mid, c.c1 mmName, c.c2 amid, c.c3 mmType, c.c4 city, c.c5 address, c.c6 mmPic, c.c7 mmContact, c.c8 mmPhone, c.c9 creator, c.c11 bizStatus, c.c12 mmGrade, c.c13 sendCount, c.c14 mmPower, c.c15 memo, b.c7 xy from B_MMSeller c, B_MMSeller_Area b where c.dataid=b.parentDataid and c.dataid=%s and c.c2='%s' and c.c10=130001";
	public final static String MMSeller_NextMID = "select seqB_MMSeller.nextval mid from dual";
	public final static String MMSeller_LikeName = "select * from B_MMSeller where c4=%s and c1 like '%%s%'";
	public final static String MMSeller_ADD = "insert into B_MMSeller(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c17,c19,c20) values(%s,'%s','%s',%s,%s,'%s','%s','%s','%s','%s',130001,%s,%s,'%s','%s','%s')";
	public final static String MMSeller_Edit = "update B_MMSeller set c1='%s',c3='%s',c4='%s',c5='%s',c6='%s',c7='%s',c8='%s',c11=c11,c19='%s',c20='%s',uptdate=sysdate where dataid=%s";
	public final static String MMSeller_EditContact = "update B_MMSeller set c7='%s',c8='%s',uptdate=sysdate where dataid=%s";
	public final static String MMSeller_Area_Edit = "update B_MMSeller_area set c7='%s',uptdate=sysdate where dataid=%s";
	public final static String MMSeller_QueryByName = "select * from B_MMSeller where c4=%s and c1='%s'";

	//添加账户
	public final static String MM_Account_ADD = "insert into %s(dataid,parentDataid,c1,c2,c3) values(%s,%s,'%s',%s,%s)";
	//添加商户账户相关信息
	public final static String MM_AcctInfo_ADD = "insert into %s(dataid,parentDataid,c1) values(%s,%s,'%s')";
	//添加商户行政区域信息
	public final static String MM_Area_ADD = "insert into %s(dataid,parentDataid,c1,c7) values(%s,%s,'%s','%s')";
	//添加浮点信息
	public final static String MM_FloatPoint_ADD = "insert into %s(dataid,parentDataid,c1,c2,c3,c4,c5,c6,c7) values(%s,%s,'%s',%s,%s,%s,%s,%s,%s)";
	//添加商家岗位人员信息
	public final static String MM_RoleUser_ADD = "insert into %s(dataid,parentDataid,c1,c2,c3,c4) values(%s,%s,'%s','%s','%s',130001)";
	//添加商户数据版本号信息
	public final static String MM_DataVersion_ADD = "insert into B_MMDataVersion(dataid,c1,c2,c3,c4,c5,c6,c7) values(seqB_MMDataVersion.nextval,%s,%s,%s,%s,%s,%s,%s)";
	//修改商户数据版本号信息
	public final static String MM_DataVersion_EditDishesVNByAMID = "update B_MMDataVersion set c4=%s,uptdate=sysdate where c1=%s";
	public final static String MM_DataVersion_EditGoodsVNByAMID = "update B_MMDataVersion set c5=%s,uptdate=sysdate where c1=%s";
	public final static String MM_DataVersion_EditMGoodsVNByAMID = "update B_MMDataVersion set c6=%s,uptdate=sysdate where c1=%s";
	public final static String MM_DataVersion_EditOrderVNByAMID = "update B_MMDataVersion set c7=%s,uptdate=sysdate where c1=%s";
	//修改商户坐标
	public final static String MM_Area_Edit = "update %s set c7='%s',uptdate=sysdate where dataid=%s";
	
	public final static String MM_DataVersion_Query = "select c3 mmGroup, c4 dishesVN, c5 goodsVN, c6 mgoodsVN, c7 orderVN from B_MMDataVersion where c1=%s and c2=%s";
	public final static String MM_BizContact_QueryByAMID = "select b.c10 name, b.c2 phone from %s a, YS_DotUser b where a.c17=b.c1 and a.c2=%s";

	/***************************************** DOT END ********************************************/

}
