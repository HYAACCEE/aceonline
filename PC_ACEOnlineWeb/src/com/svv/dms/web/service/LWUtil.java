package com.svv.dms.web.service;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

import javax.imageio.ImageIO;

public class LWUtil {

    final static int BUFFER_SIZE = 4096;
    
    public static String url(String url){
    	return url(url, "gb2312");
    }
    
    public static String url(String url, String ucode){
		URLConnection cn;
		
		try {
			//System.out.println(url);
			cn = new URL(url).openConnection();
			cn.addRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)");
			cn.connect();

			InputStream in = cn.getInputStream();
	        ByteArrayOutputStream outStream = new ByteArrayOutputStream();  
	        byte[] data = new byte[BUFFER_SIZE];  
	        int count = -1;
	        while((count = in.read(data,0,BUFFER_SIZE)) != -1)  
	            outStream.write(data, 0, count);
	          
	        data = null;
	        
	        String rtn = new String(outStream.toByteArray(),ucode);
			
			//System.out.println("==================="+ rtn);
			return rtn;
		} catch (Exception e) {
			System.out.println("ERROR to URL: "+url);
			System.out.println(e.getMessage());
		} 
		return null;
    }
    

	/**
	 * @param im
	 *            原始图像
	 * @param resizeTimes
	 *            倍数,比如0.5就是缩小一半,0.98等等double类型
	 * @return 返回处理后的图像
	 */
	public static BufferedImage zoomImage(String src, float rate) {

		BufferedImage result = null;

		try {
			File srcfile = new File(src);
			if (!srcfile.exists()) {
				System.out.println("文件不存在");

			}
			BufferedImage im = ImageIO.read(srcfile);

			/* 原始图像的宽度和高度 */
			int width = im.getWidth();
			int height = im.getHeight();

			// 压缩计算
			float resizeTimes = rate; /* 这个参数是要转化成的倍数,如果是1就是转化成1倍 */

			/* 调整后的图片的宽度和高度 */
			int toWidth = (int) (width * resizeTimes);
			int toHeight = (int) (height * resizeTimes);

			/* 新生成结果图片 */
			result = new BufferedImage(toWidth, toHeight, BufferedImage.TYPE_INT_RGB);

			result.getGraphics().drawImage(im.getScaledInstance(toWidth, toHeight, java.awt.Image.SCALE_SMOOTH), 0, 0, null);

		} catch (Exception e) {
			System.out.println("创建缩略图发生异常" + e.getMessage());
		}

		return result;

	}
}
