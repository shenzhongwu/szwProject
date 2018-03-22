package com.zhongwu.graduation.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.PlatUser;
import com.zhongwu.graduation.mapper.PlatUserMapper;
import com.zhongwu.graduation.service.PlatUserService;
@Service
public class PlatUserServiceImpl implements PlatUserService {
	
	@Resource	
	PlatUserMapper platUserMapper;
	@Override
	public int deleteByPrimaryKey(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(PlatUser record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(PlatUser record) {
		// TODO Auto-generated method stub
		return platUserMapper.insertSelective(record);
	}

	@Override
	public PlatUser selectByPrimaryKey(String userId) {
		// TODO Auto-generated method stub
		return platUserMapper.selectByPrimaryKey(userId);
	}

	@Override
	public int updateByPrimaryKeySelective(PlatUser record) {
		// TODO Auto-generated method stub
		return platUserMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(PlatUser record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PlatUser> selectUserSelective(PlatUser record) {
		// TODO Auto-generated method stub
		return platUserMapper.selectUserSelective(record);
	}

}
