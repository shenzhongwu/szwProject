package com.zhongwu.graduation.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.CourseLabelRelevance;
import com.zhongwu.graduation.mapper.CourseLabelRelevanceMapper;
import com.zhongwu.graduation.service.CourseLabelRelevanceService;
import com.zhongwu.graduation.util.GenerateIdUtil;
@Service
public class CourseLabelRelevanceServiceImpl implements CourseLabelRelevanceService {
	@Resource
	CourseLabelRelevanceMapper courseLabelRelevanceMapper;
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(CourseLabelRelevance record) {
		// TODO Auto-generated method stub
		return courseLabelRelevanceMapper.insert(record);
	}

	@Override
	public int insertSelective(CourseLabelRelevance record) {
		// TODO Auto-generated method stub
		record.setId(GenerateIdUtil.getCourseLabelId());
		record.setCreateTime(new Date());
		record.setUpdateTime(new Date());
		return courseLabelRelevanceMapper.insertSelective(record);
	}

	@Override
	public CourseLabelRelevance selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(CourseLabelRelevance record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(CourseLabelRelevance record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
