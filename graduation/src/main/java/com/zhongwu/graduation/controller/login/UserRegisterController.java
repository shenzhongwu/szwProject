package com.zhongwu.graduation.controller.login;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhongwu.graduation.domain.PlatUser;
import com.zhongwu.graduation.service.PlatUserService;
import com.zhongwu.graduation.util.GenerateIdUtil;

@Controller
@RequestMapping("register")
public class UserRegisterController {
	@Autowired
	PlatUserService platUserService;
	
	@RequestMapping("register")
	public String register(PlatUser platUser){
		return "graduation/login/register";
	}
	@RequestMapping("vailName")
	@ResponseBody
	public String vailName(Model model,PlatUser platUser) {
		List<PlatUser> list = platUserService.selectUserSelective(platUser);
		for(PlatUser user:list){
			if(user.getLoginName().equals(platUser.getLoginName())){
				return "has";
			}
		}
        return "none";
    }
	@RequestMapping("vailMobile")
	@ResponseBody
	public String vailMobile(Model model,PlatUser platUser) {
		List<PlatUser> list = platUserService.selectUserSelective(platUser);
		for(PlatUser user:list){
			if(user.getMobile().equals(platUser.getMobile())){
				return "has";
			}
		}
        return "none";
    }
	@RequestMapping("commitRegister")
	@ResponseBody
	public String commitRegister(PlatUser platUser){
		platUser.setUserId(GenerateIdUtil.getUserId());
		platUser.setCreateTime(new Date());
		platUser.setUpdateTime(new Date());
		platUser.setUserType("1");
		platUserService.insertSelective(platUser);
		return "success";
	}
}
