//package com.zhongwu.graduation.controller.login;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.zhongwu.graduation.domain.PlatUser;
//import com.zhongwu.graduation.service.TestService;
//
//@Controller
//@RequestMapping("/")
//public class MainEnter {
//	@Autowired
//	TestService testService;
//	@RequestMapping(value = "")
//	public String home(Model model) {
//		PlatUser	platUer =  testService.test();
//		model.addAttribute("ppp", platUer);
//        return "test";
//    }
//}
