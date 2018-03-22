package com.zhongwu.graduation.controller.action;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhongwu.graduation.domain.CourseType;
import com.zhongwu.graduation.domain.Label;
import com.zhongwu.graduation.domain.TypeLabelRelevance;
import com.zhongwu.graduation.service.CourseTypeService;
import com.zhongwu.graduation.service.LabelService;
import com.zhongwu.graduation.service.TypeLabelRelevanceService;
import com.zhongwu.graduation.util.GenerateIdUtil;

@Controller
@RequestMapping("util")
public class UtilController {
	@Autowired
	LabelService labelService;
	@Autowired
	TypeLabelRelevanceService typeLabelRelevanceService;
	
	@Autowired
	CourseTypeService courseTypeService;
	
	@RequestMapping(value = "addLabelList")
	public String addLabelList(Model model) {
        return "graduation/utilbag/addlabel";
    }
	@RequestMapping(value = "addLabel",method=RequestMethod.POST)
	public String addLabel(Model model,String labelNameStr,String courseName,String parentLabelName) {
		List<String> labelList =Arrays.asList(labelNameStr.split(",")) ;
		
		String courseTypeId = GenerateIdUtil.getCourseTypeId();
		CourseType courseType = new CourseType();
		courseType.setCourseTypeId(courseTypeId);
		courseType.setCourseTypeName(courseName);
		courseType.setCreateTime(new Date());
		courseType.setUpdateTime(new Date());
		
		CourseType courseType2 = new CourseType();
		courseType2.setCourseTypeName(courseName);
		if(courseTypeService.selectCourseType(courseType2).isEmpty()){
			courseTypeService.insert(courseType);
		}else{
			List<CourseType> existcouseType = courseTypeService.selectCourseType(courseType2);
			for(CourseType ct : existcouseType){
				courseTypeId = ct.getCourseTypeId();
			}
		}
		String parentId = GenerateIdUtil.getLabelId();
		Label record = new Label();
		record.setCreateTime(new Date());
		record.setLabelId(parentId);
		record.setUpdateTime(new Date());
		record.setLabelName(parentLabelName);
		record.setParentId("1");
		labelService.insertSelective(record);
		
		TypeLabelRelevance relevance = new TypeLabelRelevance();
		relevance.setId(GenerateIdUtil.getTypeLabelRelevanceId());
		relevance.setCourseTypeId(courseTypeId);
		relevance.setLabelId(parentId);
		relevance.setCreateTime(new Date());
		relevance.setUpdateTime(new Date());
		typeLabelRelevanceService.insertSelective(relevance);
		
		labelService.insertAll(labelList,parentId);
        return "success";
    }
	
}
