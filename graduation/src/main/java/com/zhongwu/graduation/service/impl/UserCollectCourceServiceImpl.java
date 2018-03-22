package com.zhongwu.graduation.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.UserCollectCource;
import com.zhongwu.graduation.mapper.UserCollectCourceMapper;
import com.zhongwu.graduation.service.UserCollectCourceService;
import com.zhongwu.graduation.util.GenerateIdUtil;
@Service
public class UserCollectCourceServiceImpl implements UserCollectCourceService {

	@Resource
	UserCollectCourceMapper userCollectCourceMapper;
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(UserCollectCource record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(UserCollectCource record) {
		// TODO Auto-generated method stub
		record.setId(GenerateIdUtil.getUserCollectCourceId());
		record.setCollectTime(new Date());
		record.setLastVisitTime(new Date());
		return userCollectCourceMapper.insertSelective(record);
	}

	@Override
	public UserCollectCource selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(UserCollectCource record) {
		// TODO Auto-generated method stub
		return userCollectCourceMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(UserCollectCource record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<UserCollectCource> selecteSelective(UserCollectCource record) {
		// TODO Auto-generated method stub
		return userCollectCourceMapper.selecteSelective(record);
	}

}
