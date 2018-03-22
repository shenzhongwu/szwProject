package com.zhongwu.graduation.controller.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhongwu.graduation.domain.Cource;
import com.zhongwu.graduation.domain.CourseType;
import com.zhongwu.graduation.domain.Label;
import com.zhongwu.graduation.domain.TypeLabelRelevance;
import com.zhongwu.graduation.service.CourceService;
import com.zhongwu.graduation.service.CourseTypeService;
import com.zhongwu.graduation.service.LabelService;
import com.zhongwu.graduation.service.TypeLabelRelevanceService;
import com.zhongwu.graduation.util.GenerateIdUtil;

@Controller
@RequestMapping("index")
public class MainController {
	@Autowired
	CourseTypeService courseTypeService;
	@Autowired
	TypeLabelRelevanceService typeLabelRelevanceService;
	@Autowired
	CourceService courceService;
	@Autowired
	LabelService labelService;
	@RequestMapping(value = "main")
	public String home(Model model) {
		CourseType  record =  new CourseType();
		record.setParentId("0");
		List<CourseType> cyiji = courseTypeService.selectCourseType(record);
		List<CourseType> cerji = courseTypeService.selectAllCourseType();
		model.addAttribute("cyiji", cyiji);
		model.addAttribute("cerji", cerji);
		
		Cource cource = new Cource();
		List<Cource>  courseLikeList = courceService.randomSelect(cource, 5);
		model.addAttribute("courseLikeList", courseLikeList);
        return "graduation/action/main";
    }
	@RequestMapping(value = "uploadify")
	public String uploadify(Model model) {
        return "graduation/action/test";
    }
	
	@RequestMapping(value = "huanyihuan")
	@ResponseBody
	public List<Cource>  huanyihuan(Model model) {
		Cource cource = new Cource();
		List<Cource>  courseLikeList = courceService.randomSelect(cource, 5);
		return courseLikeList;
    }
	
	@RequestMapping(value = "ajaxLabelList")
	public String ajaxLabelList(Model model) {
		List<TypeLabelRelevance> relevanceList = typeLabelRelevanceService.selectAllRelevance();
		for(TypeLabelRelevance tr : relevanceList){
			Label recordLabel = new Label();
			recordLabel.setParentId(tr.getLabelId());
			List<Label> labelList = labelService.selectLabelList(recordLabel);
			
			String courseTypeId = tr.getCourseTypeId();
			for(Label label : labelList){
				TypeLabelRelevance recordRelevance= new  TypeLabelRelevance();
				recordRelevance.setCourseTypeId(courseTypeId);
				recordRelevance.setLabelId(label.getLabelId());
				recordRelevance.setId(GenerateIdUtil.getTypeLabelRelevanceId());
				recordRelevance.setCreateTime(new Date());
				recordRelevance.setUpdateTime(new Date());
				typeLabelRelevanceService.insertSelective(recordRelevance);
			}
		}
        return "success";
    }	
	
	
	 @RequestMapping("/index")  
	    public String Add(HttpServletRequest request, HttpServletResponse response,Model model) {  
		    CourseType  record =  new CourseType();
			record.setParentId("0");
			List<CourseType> cyiji = courseTypeService.selectCourseType(record);
			List<CourseType> cerji = courseTypeService.selectAllCourseType();
			model.addAttribute("cyiji", cyiji);
			model.addAttribute("cerji", cerji);
			
			Cource cource = new Cource();
			List<Cource>  courseLikeList = courceService.randomSelect(cource, 5);
			model.addAttribute("courseLikeList", courseLikeList);
	        return "index";  
	    }  
	 @RequestMapping("createClass")  
	    public String createClass(HttpServletRequest request, HttpServletResponse response,Model model) {  
		   	Map<String,Object> map = new HashMap<String,Object>();
		   	map.put("package", "test.test");
		   	map.put("className", "testName");
		   	map.put("content", "Hello World!");
		   	model.addAttribute("map",map);
	        return "createClass";  
	    }  
	 
}
