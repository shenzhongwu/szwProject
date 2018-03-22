package com.zhongwu.graduation.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.CourceTypeRelevance;
import com.zhongwu.graduation.mapper.CourceTypeRelevanceMapper;
import com.zhongwu.graduation.service.CourceTypeRelevanceService;
import com.zhongwu.graduation.util.GenerateIdUtil;
@Service
public class CourceTypeRelevanceServiceImpl implements CourceTypeRelevanceService {
	@Resource
	CourceTypeRelevanceMapper courceTypeRelevanceMapper;
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(CourceTypeRelevance record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(CourceTypeRelevance record) {
		// TODO Auto-generated method stubr
		record.setId(GenerateIdUtil.getCourseTypeId());
		record.setCreateTime(new Date());
		record.setUpdateTime(new Date());
		return courceTypeRelevanceMapper.insertSelective(record);
	}

	@Override
	public CourceTypeRelevance selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(CourceTypeRelevance record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(CourceTypeRelevance record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
