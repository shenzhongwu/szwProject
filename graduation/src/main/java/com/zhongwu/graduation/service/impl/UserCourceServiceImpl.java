package com.zhongwu.graduation.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.UserCource;
import com.zhongwu.graduation.mapper.UserCourceMapper;
import com.zhongwu.graduation.service.UserCourceService;
import com.zhongwu.graduation.util.GenerateIdUtil;
@Service
public class UserCourceServiceImpl implements UserCourceService {
	@Resource
	UserCourceMapper userCourceMappler; 
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(UserCource record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(UserCource record) {
		// TODO Auto-generated method stub
		record.setId(GenerateIdUtil.getUserCourceId());
		record.setAlertTime(new Date());
		record.setCreateTime(new Date());
		return userCourceMappler.insertSelective(record);
	}

	@Override
	public UserCource selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(UserCource record) {
		// TODO Auto-generated method stub
		return userCourceMappler.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(UserCource record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
