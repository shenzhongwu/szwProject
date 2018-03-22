package com.zhongwu.graduation.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.PlatUser;
import com.zhongwu.graduation.mapper.PlatUserMapper;
@Service
public class TestServiceImpl  implements TestService {
	 @Resource
	 PlatUserMapper platUserMapper;
	@Override
	public PlatUser test(){
		//  SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		  //PlatUserMapper platUserMapper = session.getMapper(PlatUserMapper.class);
		// TODO Auto-generated method stub
		return platUserMapper.selectByPrimaryKey("1");
	}
}
