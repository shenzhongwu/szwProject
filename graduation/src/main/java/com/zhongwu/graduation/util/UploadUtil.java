package com.zhongwu.graduation.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.web.multipart.MultipartFile;

import com.zhongwu.graduation.domain.PlatUser;


public class UploadUtil {
	//implements Runnable
	/*private String resourceName;
	private PlatUser user;
	//private String courseName;
	private MultipartFile file;
	private HttpServletRequest request;
	public UploadVideoUtil(String resourceName,PlatUser user,MultipartFile file,HttpServletRequest request){
		this.resourceName = resourceName;
		this.user = user;
	//	this.courseName = courseName;
		this.file = file;
		this.request=request;
	}*/
	public void uploadVideo(String resourceName,PlatUser user,MultipartFile file) {
		// TODO Auto-generated method stub
		synchronized(file){
		String destinationUrl = System.getProperty("user.dir")+"\\src\\main\\webapp\\resources\\graduation\\huancun\\"+user.getLoginName()+"\\"+"cource"+"\\video\\";
		  File files = new File(destinationUrl);
		  if(!files.exists()){
			  files.mkdirs();
		  }
		 try{
            	 String filename = 	 resourceName;
                 //获取item中的上传文件的输入流
            	    InputStream  in = file.getInputStream();
                 //创建一个文件输出流
                 FileOutputStream out = new FileOutputStream(destinationUrl+filename);
                 //创建一个缓冲区
                 byte buffer[] = new byte[1024];
                 //判断输入流中的数据是否已经读完的标识
                 int len = 0;
                 //循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
                 while((len=in.read(buffer))>0){
                     //使用FileOutputStream输出流将缓冲区的数据写入到指定的目录(savePath + "\\" + filename)当中
                     out.write(buffer, 0, len);
                 }
                 out.flush();
                 out.close();
                 in.close();
              // ( (File) file).delete();
			 }catch (Exception e) {
		            e.printStackTrace();
			 }
		 }
	}
	
	public void uploadImg(String courceName,PlatUser user,String cover) {
		// TODO Auto-generated method stub
				String destinationUrl = System.getProperty("user.dir")+"\\src\\main\\webapp\\resources\\graduation\\cource\\"+user.getLoginName()+"\\"+courceName+"\\cover\\";
				  File files = new File(destinationUrl);
				  if(!files.exists()){
					  files.mkdirs();
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
			            OutputStream out = new FileOutputStream(imgFilePath+courceName+".png");     
			            out.write(b);  
			            out.flush();  
			            out.close();  
			        }catch (Exception e){  
			         
			        } 
			}
	public void cache2store(String beforeName,String afterName,String beforeFileDir,String afterFileDir){
		 File newFile = new File(afterFileDir);
		  if(!newFile.exists()){
			  newFile.mkdirs();
		  }
		File beforeFile = new File(beforeFileDir+beforeName);  
		beforeFile.renameTo(new File(afterFileDir+afterName));
	}
	
	public static boolean deleteDir(File dir) {
        if (dir.isDirectory()) {
            String[] children = dir.list();
       //递归删除目录中的子目录下
            for (int i=0; i<children.length; i++) {
                boolean success = deleteDir(new File(dir, children[i]));
                if (!success) {
                    return false;
                }
            }
        }
        // 目录此时为空，可以删除
        return dir.delete();
    }
		
}
