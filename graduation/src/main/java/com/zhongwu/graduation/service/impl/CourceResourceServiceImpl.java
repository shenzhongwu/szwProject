package com.zhongwu.graduation.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.CourceResource;
import com.zhongwu.graduation.mapper.CourceResourceMapper;
import com.zhongwu.graduation.service.CourceResourceService;
import com.zhongwu.graduation.util.GenerateIdUtil;
@Service
public class CourceResourceServiceImpl implements CourceResourceService {
	@Resource
	CourceResourceMapper courceResourceMapper;
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(CourceResource record) {
		// TODO Auto-generated method stub
		return courceResourceMapper.insert(record);
	}

	@Override
	public int insertSelective(CourceResource record) {
		// TODO Auto-generated method stub
		record.setAlertTime(new Date());
		record.setCreateTime(new Date());
		record.setId(GenerateIdUtil.getCourceResourceId());
		return courceResourceMapper.insertSelective(record);
	}

	@Override
	public CourceResource selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(CourceResource record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(CourceResource record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
