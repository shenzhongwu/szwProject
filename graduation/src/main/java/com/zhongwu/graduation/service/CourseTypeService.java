package com.zhongwu.graduation.service;

import java.util.List;

import com.zhongwu.graduation.domain.CourseType;

public interface CourseTypeService {
		int deleteByPrimaryKey(String courseTypeId);

	    int insert(CourseType record);

	    int insertSelective(CourseType record);

	    CourseType selectByPrimaryKey(String courseTypeId);

	    int updateByPrimaryKeySelective(CourseType record);

	    int updateByPrimaryKey(CourseType record);

	    List<CourseType> selectCourseType(CourseType record);
	    
	    List<CourseType> selectAllCourseType();
}
