package com.zhongwu.graduation.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import javax.servlet.http.HttpServletRequest;
import com.zhongwu.graduation.domain.PlatUser;
public class UploadImgUtil implements Runnable{
	private String cover;
	private PlatUser user;
	private String courseName;
	private HttpServletRequest request;
	public UploadImgUtil(String cover,PlatUser user,String courseName,HttpServletRequest request){
		this.cover = cover;
		this.user = user;
		this.courseName = courseName;
		this.request = request;
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		 request.getSession().getServletContext().getRealPath("/");
		 
		 String destinationUrl = request.getSession().getServletContext().getRealPath("/")+"webapp\\resources\\graduation"+user.getLoginName()+"\\course\\"+courseName+"\\cover\\";
		 System.out.println(destinationUrl);
		//String destinationUrl = "D:\\graduation\\"+user.getLoginName()+"\\course\\"+courseName+"\\cover\\";
		System.out.println(destinationUrl);
		  File file = new File(destinationUrl);
		  if(!file.exists()){
			  file.mkdirs();
		  }
	        try   
	        { 
	            //Base64解码 
	            byte[] b = Base64.decode(cover);  
	            for(int i=0;i<b.length;++i)  
	            {  
	                if(b[i]<0)  
	                {//调整异常数据  
	                    b[i]+=256;  
	                }  
	            }  
	            //生成jpeg图片  
	            String imgFilePath = destinationUrl;//新生成的图片 
	            OutputStream out = new FileOutputStream(imgFilePath+"\\"+courseName+".png");     
	            out.write(b);  
	            out.flush();  
	            out.close();  
	        }catch (Exception e){  
	         
	        } 
		
	}
}
