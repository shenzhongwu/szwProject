package com.zhongwu.graduation.util;

import java.util.Random;

public class GenerateIdUtil {
	//生成用户id
	public static String getUserId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "ID"+System.currentTimeMillis()+""+i;
	}
	//生成标签id
	public static String getLabelId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "LB"+System.currentTimeMillis()+""+i;
	}
	//生成课程类型id
	public static String getCourseTypeId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "CT"+System.currentTimeMillis()+""+i;
	}
	//生成课程类型、标签关系表id
	public static String getTypeLabelRelevanceId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "TL"+System.currentTimeMillis()+""+i;
	}
	//生成课程id
	public static String getCourceId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "CI"+System.currentTimeMillis()+""+i;
	}
	//生成课程id
	public static String getResourceId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "RI"+System.currentTimeMillis()+""+i;
	}
	//生成课程、资源关系id
	public static String getCourceResourceId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "CR"+System.currentTimeMillis()+""+i;
	}
	//生成用户、课程关系id
	public static String getUserCourceId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "UC"+System.currentTimeMillis()+""+i;
	}
	//生成课程、标签关系id
	public static String getCourseLabelId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "CL"+System.currentTimeMillis()+""+i;
	}
	//生成课程、标签关系id
	public static String getUserCollectCourceId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "CC"+System.currentTimeMillis()+""+i;
	}
	//生成课程、标签关系id
	public static String getUserVisitCourceId()  {
		Random rand = new Random();
		int i = rand.nextInt(); //int范围类的随机数i = rand.nextInt(100); //生成0-100以内的随机数
		i = rand.nextInt(89000)+10000; 
		return "UT"+System.currentTimeMillis()+""+i;
	}
	
	
}
