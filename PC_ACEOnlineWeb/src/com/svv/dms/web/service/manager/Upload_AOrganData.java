package com.svv.dms.web.service.manager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.gs.db.dao.DaoUtil;
import com.gs.db.database.BizDBResult;
import com.svv.dms.web.dao.SQL;
import com.svv.dms.web.entity.I_DataParamType;
import com.svv.dms.web.util.HIUtil;

public class Upload_AOrganData {
    private static int ADDS_FILE_COLUMN_NUM = 10;
    
    public static String adds(XSSFWorkbook xssfWorkbook){
		StringBuilder s = new StringBuilder();
		try{
			List<String> sqls = new ArrayList<String>();
	    	String id, pingpai, organName_zhs, organName_en, organName, parentOrganName, organType, city, address, zipcode, phone, site, organName_other, hangye, hangye_sub;
			int newdataid = 1;
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			
			sqls.add("delete from A_Organ");
            // 循环工作表Sheet
            for (int numSheet = 0; numSheet < xssfWorkbook.getNumberOfSheets(); numSheet++) {
                XSSFSheet xssfSheet = xssfWorkbook.getSheetAt(numSheet);
                if (xssfSheet == null) {
                    continue;
                }
                System.out.println("[B_ManagerBean.Upload_AOrganData] numSheet="+numSheet+" "+xssfSheet.getSheetName());
                // 循环行Row
                for (int rowNum = 0; rowNum <= xssfSheet.getLastRowNum(); rowNum++) {
                    XSSFRow xssfRow = xssfSheet.getRow(rowNum);
                    if (xssfRow == null) {
                        continue;
                    }
                    if(rowNum<1) continue; //第1行为标题
     
                    int cellNum = 0;
                    XSSFCell xssfCell;
                    xssfCell = xssfRow.getCell(cellNum++); id = xssfCell == null ? "" : getValue(xssfCell); //ID：logo
                    xssfCell = xssfRow.getCell(cellNum++); pingpai = xssfCell == null ? "" : getValue(xssfCell); //品牌
                    xssfCell = xssfRow.getCell(cellNum++); organName_en = xssfCell == null ? "" : getValue(xssfCell); //英文全称
                    xssfCell = xssfRow.getCell(cellNum++); organName = xssfCell == null ? "" : getValue(xssfCell); //中文全称
                    xssfCell = xssfRow.getCell(cellNum++); organName_zhs = xssfCell == null ? "" : getValue(xssfCell); //简称
                    xssfCell = xssfRow.getCell(cellNum++); parentOrganName = xssfCell == null ? "" : getValue(xssfCell); //关联母公司（简称）
                    xssfCell = xssfRow.getCell(cellNum++); organType = xssfCell == null ? "" : getValue(xssfCell); //公司类型（性质）
                    xssfCell = xssfRow.getCell(cellNum++); city = xssfCell == null ? "" : getValue(xssfCell); //所在城市
                    xssfCell = xssfRow.getCell(cellNum++); address = xssfCell == null ? "" : getValue(xssfCell); //具体地址
                    xssfCell = xssfRow.getCell(cellNum++); zipcode = xssfCell == null ? "" : getValue(xssfCell, true); //邮编
                    xssfCell = xssfRow.getCell(cellNum++); phone = xssfCell == null ? "" : getValue(xssfCell); //总机
                    xssfCell = xssfRow.getCell(cellNum++); site = xssfCell == null ? "" : getValue(xssfCell); //网址
                    xssfCell = xssfRow.getCell(cellNum++); organName_other = xssfCell == null ? "" : getValue(xssfCell); //隐藏名
                    xssfCell = xssfRow.getCell(cellNum++); hangye_sub = xssfCell == null ? "" : getValue(xssfCell); //领域
                    xssfCell = xssfRow.getCell(cellNum++); hangye = xssfCell == null ? "" : getValue(xssfCell); //行业
                    
                    map.put(organName_zhs, newdataid);
    				
    				sqls.add(String.format("insert into A_Organ(dataid,c1,c2,c3,c4, c5,c6,c7,c8, c9,c10,c11,c12, c13,c14,c15,c16, c17,c18,c19,c20, c21,c22,c23,c24, c25,c26) values(%s, '%s','%s','%s','%s', '%s','%s','%s','%s', '%s','%s','%s','%s', '%s','%s','%s','%s', '%s','%s','%s','%s', '%s','%s','%s','%s', '%s',130001)", new Object[]{
    						newdataid,
    						organName, organName_zhs, organName_en, "",
    						pingpai, parentOrganName, "0", hangye, //品牌，上级母公司，下级数目，行业分类
    						hangye_sub, city, "", "", //行业细分，城市，区域，企业介绍
    						organType, HIUtil.lPad(id, "000")+".jpg", "", "", //企业性质，企业LOGO，营业执照，创立日期
    						"", address, "", "", //规模，地址，地址2，地址3
    						zipcode, phone, "", site, //邮编，总机，email，网址
    						organName_other, //别名
    						
    				}));
        			newdataid++;
    				
                	System.out.println();
                }

                if(sqls.size()>0){
	                BizDBResult dr = DaoUtil.dbExe(sqls);
					if(dr.getResult()){
						s.append("成功导入："+sqls.size()+" 个<br>");
					}else{
						s.append(dr.getInfo());
					}
					sqls.clear();
                }
            }			
		}catch(Exception e){
			e.printStackTrace();
			s.append("异常："+e.getMessage());
		}
		return s.toString();
    }

    private static String getValue(XSSFCell xssfCell, boolean stringFlag) {
    	String value = null;
    	if (xssfCell.getCellType() == xssfCell.CELL_TYPE_NUMERIC) {
        	Double v = xssfCell.getNumericCellValue();
        	value = String.valueOf(v.intValue()).trim();
        } else {
        	value = String.valueOf(xssfCell.getStringCellValue()).trim();
        }
        return HIUtil.toDBStr(value);
    }
    @SuppressWarnings("static-access")
    private static String getValue(XSSFCell xssfCell) {
    	String value = null;
        if (xssfCell.getCellType() == xssfCell.CELL_TYPE_BOOLEAN) {
        	value = String.valueOf(xssfCell.getBooleanCellValue()).trim();
        } else if (xssfCell.getCellType() == xssfCell.CELL_TYPE_NUMERIC) {
        	value = String.valueOf(xssfCell.getNumericCellValue()).trim();
        } else {
        	value = String.valueOf(xssfCell.getStringCellValue()).trim();
        }
        return HIUtil.toDBStr(value);
    }
    
    @SuppressWarnings("unchecked")
	private static HashMap<String, String> getI_DataParamTypeMap(){
        HashMap<String, String> map = new HashMap<String, String>();
        List<I_DataParamType> list = HIUtil.getList(I_DataParamType.class, HIUtil.dbQuery(SQL.SP_I_DataParamTypeQueryByC("","")));
        if (list != null && list.size()>0){
            for (I_DataParamType o : list) {
                map.put(o.getClassName(), o.getParamClassID()+"");
            }
        }       
        return map;
    }

}
