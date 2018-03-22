package com.zhongwu.graduation.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.UserVisitCource;
import com.zhongwu.graduation.mapper.UserVisitCourceMapper;
import com.zhongwu.graduation.service.UserVisitCourceService;
import com.zhongwu.graduation.util.GenerateIdUtil;
@Service
public class UserVisitCourceServiceImpl implements UserVisitCourceService {

	@Resource
	UserVisitCourceMapper userVisitCourceMapper;
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(UserVisitCource record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(UserVisitCource record) {
		// TODO Auto-generated method stub
		record.setFirstVisitTime(new Date());
		record.setLastVisitTime(new Date());
		return userVisitCourceMapper.insertSelective(record);
	}

	@Override
	public UserVisitCource selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(UserVisitCource record) {
		// TODO Auto-generated method stub
		return userVisitCourceMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(UserVisitCource record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<UserVisitCource> selecteSelective(UserVisitCource record) {
		// TODO Auto-generated method stub
		return userVisitCourceMapper.selecteSelective(record);
	}

}
