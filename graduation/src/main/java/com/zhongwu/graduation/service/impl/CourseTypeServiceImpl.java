package com.zhongwu.graduation.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.CourseType;
import com.zhongwu.graduation.mapper.CourseLabelRelevanceMapper;
import com.zhongwu.graduation.mapper.CourseTypeMapper;
import com.zhongwu.graduation.service.CourseTypeService;
@Service
public class CourseTypeServiceImpl implements CourseTypeService {
	@Resource	
	CourseTypeMapper courseTypeMapper;
	
	@Override
	public int deleteByPrimaryKey(String courseTypeId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(CourseType record) {
		// TODO Auto-generated method stub
		courseTypeMapper.insertSelective(record);
		return 0;
	}

	@Override
	public int insertSelective(CourseType record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CourseType selectByPrimaryKey(String courseTypeId) {
		// TODO Auto-generated method stub
		return courseTypeMapper.selectByPrimaryKey(courseTypeId);
	}

	@Override
	public int updateByPrimaryKeySelective(CourseType record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(CourseType record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CourseType> selectCourseType(CourseType record) {
		// TODO Auto-generated method stub
		return  courseTypeMapper.selectCourseType(record);
	}

	@Override
	public List<CourseType> selectAllCourseType() {
		// TODO Auto-generated method stub
		return courseTypeMapper.selectAllCourseType();
	}


}
