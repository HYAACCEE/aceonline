package com.svv.dms.web.dao;




public class SQL extends SQL_0{

	public final static int TABLEID_IS_Emp = 2;

	public final static int QRCodeType_ORDER = 206001; //二维码类型：订单
	public final static int QRCodeType_PACKAGE = 206002; //二维码类型：物流箱
	public final static int QRCodeType_CONTAINER = 206003; //二维码类型：容器
	public final static int QRCodeType_PLACE = 206004; //二维码类型：位置
	public final static int QRCodeType_THD = 206005; //二维码类型：提货单
	public final static int QRCodeType_THHZD = 206006; //二维码类型：提货汇总单
	public final static int QRCodeType_MJCKD = 206007; //二维码类型：卖家出库单
	public final static int QRCodeType_CAR = 206008; //二维码类型：车辆
	public final static int QRCodeType_PSD = 206009; //二维码类型：配送单
	public final static int QRCodeType_PSHZD = 206010; //二维码类型：配送汇总单
	public final static int QRCodeType_XSTHHZD = 206011; //二维码类型：销售退货汇总单
	public final static int QRCodeType_XSTHD = 206012; //二维码类型：销售退货单
	public final static int QRCodeType_CGTHHZD = 206013; //二维码类型：采购退货汇总单
	public final static int QRCodeType_CGTHD = 206014; //二维码类型：采购退货单
	

    public static String SP_IS_BulletinQuery = "select * from IS_Bulletin where c1=%s order by dataid desc";
    public static String SP_IS_BulletinQueryByID = "select * from IS_Bulletin where dataid=%s";

	/** we **/
	public final static String LWUserLogin_QueryByOpenID = "select * from B_UserLogin where c18 = '%s'";
	public final static String T_MARK_QueryByMark = "select v1, v2 from T_Mark where mark = 'AT%s'";
	public final static String T_MARK_ADD = "insert into T_Mark(mark,v1,v2,istdate,uptdate) values('AT%s','%s','%s',sysdate,sysdate)";
	public final static String T_MARK_EDIT = "update T_Mark set v1='%s',v2='%s',uptdate=sysdate where mark = 'AT%s'";

	//打印二维码
	public final static String YS_QRCode_QueryByC(String code, String startID, String endID){
		return new StringBuilder("select a.c1 id,b.c2 name")
				.append(" from YS_").append(code).append(" a, YS_").append(code).append("Type b")
				.append(" where a.c2=b.dataid")// and a.c4=0
				.append(" and a.dataid>=").append(startID).append(" and a.dataid<=").append(endID)
				.append(" order by id").toString();
	}
	public final static String IS_QRCode_QueryByC_AppVersion(String code, String startID, String endID){
		return new StringBuilder("select a.c1 id,a.c3 name")
				.append(" from IS_").append(code).append(" a")
				.append(" where 1=1")
				.append(" and a.dataid>=").append(startID).append(" and a.dataid<=").append(endID)
				.append(" order by id").toString();
	}
	
	
	
	
	
	
}