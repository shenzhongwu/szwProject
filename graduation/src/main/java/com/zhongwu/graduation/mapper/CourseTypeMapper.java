package com.zhongwu.graduation.mapper;

import java.util.List;

import com.zhongwu.graduation.domain.CourseType;

public interface CourseTypeMapper {
    int deleteByPrimaryKey(String courseTypeId);

    int insert(CourseType record);

    int insertSelective(CourseType record);

    CourseType selectByPrimaryKey(String courseTypeId);

    int updateByPrimaryKeySelective(CourseType record);

    int updateByPrimaryKey(CourseType record);
    
    List<CourseType> selectCourseType(CourseType record);
    
    List<CourseType> selectAllCourseType();
}