package com.zhongwu.graduation.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zhongwu.graduation.Application;
import com.zhongwu.graduation.domain.PlatUser;
import com.zhongwu.graduation.mapper.PlatUserMapper;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={Application.class})
public class test {
	@Resource
	PlatUserMapper platUserMapper;
	@Test
	public void test(){
		PlatUser platUser = new PlatUser();
		platUser.setLoginName("1");
		List<PlatUser> pp = platUserMapper.selectUserSelective(platUser);
		for(PlatUser p:pp){
			System.out.println(p.getUserName());
		}
		
	}
}
