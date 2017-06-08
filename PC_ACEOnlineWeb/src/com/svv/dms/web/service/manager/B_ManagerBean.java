package com.svv.dms.web.service.manager;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.struts.upload.FormFile;

import com.svv.dms.web.common.ComBeanLogType;
import com.svv.dms.web.service.base.AbstractBean;
import com.svv.dms.web.service.base.BConstants;
import com.svv.dms.web.util.HIUtil;

public class B_ManagerBean extends AbstractBean {
    private static BlockingQueue<String> queue = new LinkedBlockingQueue<String>();

	public String B_Manager(){
        return this.exeByCmd("");
    }
	public String B_Editor(){
        return this.exeByCmd("");
    }

	public String uploadAOrganFile(){
        System.out.println("[B_ManagerBean.uploadAOrganFile] ");	
        try {
			String input_id = this.getParameter("input_id");
        	String fileName = dataFile.getFileName().toLowerCase();
            logger.debug("[B_ManagerBean.uploadGoodsFile] "+fileName);
            if(fileName.length()==0 || !fileName.endsWith(".xls") && !fileName.endsWith(".xlsx")){
                setMessage(false, "文件格式有误，请检查！");
                return BConstants.SUCCESS;
            }

            XSSFWorkbook xssfWorkbook = new XSSFWorkbook(dataFile.getInputStream());
            String rtn = Upload_AOrganData.adds(xssfWorkbook);
            this.setMessage(rtn.length()==0, HIUtil.isEmpty(rtn, "导入完成"));

            logger(ComBeanLogType.TYPE_ADD, "导入数据文件"+fileName);
            return BConstants.SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            this.setMessage(false, "文件导入失败！ "+e.getMessage());
            return BConstants.ERROR;
        }
    }

    public String getLog(){
        StringBuilder rtn = new StringBuilder("");
    	for(int i=0;i<queue.size();i++){
    		rtn.append(queue.poll()+"<br>");
    	}
        this.setMessage(true, rtn.toString());
        return BConstants.MESSAGE;
    }

    /**
	 * 
	 */
	private static final long serialVersionUID = 3446397769359272289L;
	
	protected FormFile dataFile;
	protected String dataFileName = "";

    public FormFile getDataFile() {
        return dataFile;
    }

    public void setDataFile(FormFile dataFile) {
        this.dataFile = dataFile;
    }

    public String getDataFileName() {
        return dataFileName;
    }

    public void setDataFileName(String dataFileName) {
        this.dataFileName = dataFileName;
    }
}
