package com.fulan.freemarker.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fulan.freemarker.domain.ProjectInfo;
import com.fulan.freemarker.domain.TableInfo;
import com.fulan.freemarker.util.CreateProjectBagUtil;
import com.fulan.freemarker.util.FreemakerUtil;
import com.fulan.freemarker.util.ObtainDBInfoUtil;

@Controller
@RequestMapping("freemarker")
public class FreemarkerController {
	
	/* @RequestMapping("createClass")  
	    public String  createClass(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {  
		   	Map<String,Object> map = new HashMap<String,Object>();
		   	map.put("package", "test.test");
		   	map.put("className", "testName");
		   	map.put("content", "Hello World!");
		   	model.addAttribute("map",map);
		   	FreemakerUtil  freemakerUtil= new FreemakerUtil();
		   	freemakerUtil.createDoc(map, "E:/outFile.class",request);
		   	
	        return "createClass";  
	    }  
	 @RequestMapping("createMapper")  
	    public String  createMapper(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {  
		 	List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		 	
		   	Map<String,Object> map1 = new HashMap<String,Object>();
		   	map1.put("tableName", "first_table");
			List<Object> list2 = new ArrayList<Object>();
			Map<String,Object> map11 = new HashMap<String,Object>();
			map11.put("id", "first_id");
			map11.put("type", "varchar");
			Map<String,Object> map12 = new HashMap<String,Object>();
			map11.put("param1", "name1");
			map11.put("type", "varchar");
			Map<String,Object> map13 = new HashMap<String,Object>();
			map11.put("param2", "age1");
			map11.put("type", "varchar");
			list2.add(map11);
			list2.add(map12);
			list2.add(map13);
			map1.put("param", list2);
			
			
			Map<String,Object> map2 = new HashMap<String,Object>();
		   	map2.put("tableName", "second_table");
			List<Object> list3 = new ArrayList<Object>();
			Map<String,Object> map21 = new HashMap<String,Object>();
			map21.put("id", "second_id");
			map21.put("type", "varchar");
			Map<String,Object> map22 = new HashMap<String,Object>();
			map21.put("param1", "name2");
			map21.put("type", "varchar");
			Map<String,Object> map23 = new HashMap<String,Object>();
			map21.put("param2", "age2");
			map21.put("type", "varchar");
			list3.add(map21);
			list3.add(map22);
			list3.add(map23);
			map2.put("param", list3);
			
			
			list.add(map1);
			list.add(map2);
			
		   	FreemakerUtil  freemakerUtil= new FreemakerUtil();
		   	for(Map<String,Object> ListMapper:list){
		   		freemakerUtil.createDoc(ListMapper, "E:/mapper/"+ListMapper.get("tableName")+".xml",request);
		   	}
		   	
	        return "createClass"; 
	    }  */
	 
	 @RequestMapping("createFile")  
	    public void  createFile(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {  
		 
		 	ProjectInfo projectInfo = new ProjectInfo();
		 	projectInfo.setProjectName("aaaaa");
		 	projectInfo.setProjectPackage("com/fulan");
		 	
		 	CreateProjectBagUtil createProjectBagUtil = new CreateProjectBagUtil(projectInfo);
		 	
		 	createProjectBagUtil.create();
		 	ObtainDBInfoUtil obtainDBInfoUtil = new ObtainDBInfoUtil();
		 	List<TableInfo> list = obtainDBInfoUtil.getTableInfo();
		 	
		 	FreemakerUtil  freemakerUtil= new FreemakerUtil();
		 	for(TableInfo tableInfo:list){
		 		System.out.println(tableInfo.getTableName());
		 		Map<String,Object> map = new 	HashMap<String,Object>(); 
		 		map.put("tableInfo", tableInfo);
		 		map.put("aaa", "1111");
		 		List<TableInfo> listColumns = tableInfo.getTableColumnInfo(); 
		 		File projectFile = new File("D:/aaaaa/com/fulan/mapper");
				if(!projectFile.exists()){
					projectFile.mkdirs();
				}
		 		freemakerUtil.createDoc(map, "D:/aaaaa/com/fulan/mapper/"+tableInfo.getTableName()+".xml",request);
		 		
		 		for(TableInfo listColumn:listColumns){
			 		/*System.out.println(listColumn.getColumnName());
			 		System.out.println(listColumn.getColumnType());
			 		System.out.println(listColumn.getDatasize());
			 		System.out.println(listColumn.getDigits());
			 		System.out.println(listColumn.getNullable());*/
		 		}
		 		
		 	}
	    }  
}
