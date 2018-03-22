package com.zhongwu.graduation.controller.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhongwu.graduation.domain.Cource;
import com.zhongwu.graduation.domain.CourseType;
import com.zhongwu.graduation.domain.Page;
import com.zhongwu.graduation.domain.condition.CourceCondition;
import com.zhongwu.graduation.service.CourceService;
import com.zhongwu.graduation.service.CourseTypeService;
import com.zhongwu.graduation.service.LabelService;
import com.zhongwu.graduation.service.TypeLabelRelevanceService;

@Controller
@RequestMapping("listView")
public class ListCourceController {
	@Autowired
	CourseTypeService courseTypeService;
	@Autowired
	TypeLabelRelevanceService typeLabelRelevanceService;
	@Autowired
	CourceService courceService;
	@Autowired
	LabelService labelService;
	
	@RequestMapping(value = "courceList")
	public String courceList(Model model,Page<CourceCondition> page,CourceCondition courceCondition,String courceNameFlag) {
		CourseType  record =  new CourseType();
		record.setParentId("0");
		List<CourseType> cyiji = courseTypeService.selectCourseType(record);
		List<CourseType> cerji = courseTypeService.selectAllCourseType();
		model.addAttribute("cyiji", cyiji);
		model.addAttribute("cerji", cerji);
		
		Page<CourceCondition> pageList =  courceService.listByPage(courceCondition, page);
		model.addAttribute("pageList", pageList);
		model.addAttribute("courceNameFlag", courceNameFlag);
		return "graduation/courcelist/courcelist";
    }

}
