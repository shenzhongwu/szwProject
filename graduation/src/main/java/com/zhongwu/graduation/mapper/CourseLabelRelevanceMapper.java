package com.zhongwu.graduation.mapper;

import com.zhongwu.graduation.domain.CourseLabelRelevance;

public interface CourseLabelRelevanceMapper {
    int deleteByPrimaryKey(String id);

    int insert(CourseLabelRelevance record);

    int insertSelective(CourseLabelRelevance record);

    CourseLabelRelevance selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CourseLabelRelevance record);

    int updateByPrimaryKey(CourseLabelRelevance record);
}