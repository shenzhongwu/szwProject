package com.zhongwu.graduation.controller.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhongwu.graduation.domain.Cource;
import com.zhongwu.graduation.domain.PlatUser;
import com.zhongwu.graduation.domain.UserCollectCource;
import com.zhongwu.graduation.service.CourceService;
import com.zhongwu.graduation.service.UserCollectCourceService;

import ch.qos.logback.core.encoder.Encoder;

@Controller
@RequestMapping("wod")
public class WodController {
	@Autowired
	UserCollectCourceService userCollectCourceService;
	@Autowired
	CourceService courceService;
	@RequestMapping(value = "myCource")
	public String myCource(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		PlatUser user = (PlatUser) session.getAttribute("platUser");
		List<Cource> courceList = courceService.wodCollectSelect(user.getUserId());
		model.addAttribute("courceList", courceList);
		
		return "graduation/wod/myCource";
    }
	
	@RequestMapping(value = "collectCource")
	@ResponseBody
	public String collectCource(Model model,HttpServletRequest request,String courceId,String resourceId) {
		HttpSession session = request.getSession();
		PlatUser user = (PlatUser) session.getAttribute("platUser");
		UserCollectCource userCollectCource = new UserCollectCource();
		userCollectCource.setCourceId(courceId);
		userCollectCource.setUserId(user.getUserId());
		List<UserCollectCource> list = userCollectCourceService.selecteSelective(userCollectCource);
		if(list.isEmpty()){
			userCollectCource.setLastVisitResourceId(resourceId);
			userCollectCourceService.insertSelective(userCollectCource);
			return "none";
		}else{
			return "has";
		}
     
    }
	
}
