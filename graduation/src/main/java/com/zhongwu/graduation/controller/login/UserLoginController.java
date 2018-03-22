package com.zhongwu.graduation.controller.login;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhongwu.graduation.domain.PlatUser;
import com.zhongwu.graduation.service.PlatUserService;

@Controller
@RequestMapping("login")
public class UserLoginController {
	@Autowired
	PlatUserService platUserService;
	
	@RequestMapping("login")
	public String register(PlatUser platUser){
		return "graduation/login/login";
	}
	@RequestMapping("quit")
	public String quit(HttpServletRequest request,HttpServletResponse response){
		HttpSession session = request.getSession();
		session.removeAttribute("platUser");
		return "redirect:/index/main";
	}
	@RequestMapping("loginSuccess")
	public String loginSuccess(String loginName ,HttpServletRequest request){
		PlatUser record = new PlatUser();
		record.setLoginName(loginName);
		List<PlatUser> platUsers = platUserService.selectUserSelective(record);
		PlatUser platUser = new PlatUser();
		if(platUsers.size()==1){
			platUser = platUsers.remove(0);
		}
		HttpSession session =  request.getSession();
		session.setAttribute("platUser", platUser);
		return "redirect:"+request.getContextPath()+"/index/main";
		}
	
	@RequestMapping("vailPassword")
	@ResponseBody
	public String vailPassword(Model model,PlatUser platUser) {
		List<PlatUser> list = platUserService.selectUserSelective(platUser);
		PlatUser user = new PlatUser();
		if(list.size()==1){
			user = list.remove(0);
		}
		if(platUser.getPassword().equals(user.getPassword())){
			return "has";
		}
        return "none";
    }
	}