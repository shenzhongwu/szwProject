package com.zhongwu.graduation.controller.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhongwu.graduation.domain.Cource;
import com.zhongwu.graduation.domain.CourseType;
import com.zhongwu.graduation.domain.PlatUser;
import com.zhongwu.graduation.domain.Resources;
import com.zhongwu.graduation.domain.UserCollectCource;
import com.zhongwu.graduation.domain.UserVisitCource;
import com.zhongwu.graduation.service.CourceService;
import com.zhongwu.graduation.service.CourseTypeService;
import com.zhongwu.graduation.service.LabelService;
import com.zhongwu.graduation.service.ResourceService;
import com.zhongwu.graduation.service.TypeLabelRelevanceService;
import com.zhongwu.graduation.service.UserCollectCourceService;
import com.zhongwu.graduation.service.UserVisitCourceService;
import com.zhongwu.graduation.util.GenerateIdUtil;

@Controller
@RequestMapping("player")
public class PlayerController {
	@Autowired
	UserVisitCourceService userVisitCourceService;
	@Autowired
	ResourceService resourceService;
	@Autowired
	CourceService courceService;
	@Autowired
	UserCollectCourceService userCollectCourceService;
	@Autowired
	CourseTypeService courseTypeService;
	@Autowired
	TypeLabelRelevanceService typeLabelRelevanceService;
	@Autowired
	LabelService labelService;
	/**
	  *进入播放界面 
	  * */
	@RequestMapping(value = "player")
	public String upload(Model model,HttpServletRequest request,String courceId){
		//筛选list数据
		CourseType  record =  new CourseType();
		record.setParentId("0");
		List<CourseType> cyiji = courseTypeService.selectCourseType(record);
		List<CourseType> cerji = courseTypeService.selectAllCourseType();
		model.addAttribute("cyiji", cyiji);
		model.addAttribute("cerji", cerji);
		
		List<Resources> resourceList = resourceService.selectResourcesByCourceId(courceId);
		Cource cource = courceService.selectByPrimaryKey(courceId);
		Cource updateCource = new Cource();
		updateCource.setCourceId(courceId);
		updateCource.setPageView(cource.getPageView()+1);
		courceService.updateByPrimaryKeySelective(updateCource);
		model.addAttribute("resourceList", resourceList);
		model.addAttribute("cource", cource);
		
		PlatUser user  = new PlatUser();
		UserVisitCource userVisitCource = new UserVisitCource();
		userVisitCource.setCourceId(courceId);
		HttpSession session = request.getSession();
		//session.getAttribute("platUser")!=null&&"".equals(session.getAttribute("platUser"))
		if((PlatUser) session.getAttribute("platUser")!=null){
			 user = (PlatUser) session.getAttribute("platUser");
		   	 
		   	 //获取当前课程该用户最后访问资源id
		   	UserCollectCource userCollectCource = new UserCollectCource();
			userCollectCource.setCourceId(courceId);
			userCollectCource.setUserId(user.getUserId());
			List<UserCollectCource> userCollectlist = userCollectCourceService.selecteSelective(userCollectCource);
		   	 if(!userCollectlist.isEmpty()){
		   		model.addAttribute("courceInfo", userCollectlist.get(0));
		   	 }
		   	 //获取未被加入我的课程资源信息
		   	 userVisitCource.setUserId(user.getUserId());
		   	 List<UserVisitCource> list = userVisitCourceService.selecteSelective(userVisitCource);
			 if(list.isEmpty()){
				 String userVisitCourceId = GenerateIdUtil.getUserVisitCourceId();
				 userVisitCource.setId(userVisitCourceId);
				 userVisitCourceService.insertSelective(userVisitCource);
				 model.addAttribute("courceVisitInfo", userVisitCource);
			 }else{
				 model.addAttribute("courceVisitInfo", list.get(0));
				 for(UserVisitCource hasUserVisitCource:list){
			  //刷新或添加浏览状态
					 UserVisitCource userVisitCourceUpdate = new UserVisitCource();
					 userVisitCourceUpdate.setId(hasUserVisitCource.getId());
					 userVisitCourceUpdate.setLastVisitTime(new Date());
					 userVisitCourceService.updateByPrimaryKeySelective(userVisitCourceUpdate);
				 }
			 }
		}
        return "graduation/player/player";
    }
	
	@RequestMapping(value = "updateViewInfo")
	@ResponseBody
	public String updateViewInfo(Model model,HttpServletRequest request,String id, String visitId,String currentResourceId) {
		HttpSession session = request.getSession();
		if((PlatUser) session.getAttribute("platUser")!=null){
		if(id !=null && id != ""){
			UserCollectCource userCollectCource = new UserCollectCource();
			userCollectCource.setId(id);
			userCollectCource.setLastVisitResourceId(currentResourceId);
			userCollectCource.setLastVisitTime(new Date());
			userCollectCourceService.updateByPrimaryKeySelective(userCollectCource);
		}
			UserVisitCource userVisitCource = new UserVisitCource();
			userVisitCource.setId(visitId);
			userVisitCource.setLastVisitResourceId(currentResourceId);
			userVisitCource.setLastVisitTime(new Date());
			userVisitCourceService.updateByPrimaryKeySelective(userVisitCource);
		}
		return "has";
		}
	
}
