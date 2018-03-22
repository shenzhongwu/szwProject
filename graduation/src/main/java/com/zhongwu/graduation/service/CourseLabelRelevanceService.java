package com.zhongwu.graduation.service;

import com.zhongwu.graduation.domain.CourseLabelRelevance;

public interface CourseLabelRelevanceService {
		int deleteByPrimaryKey(String id);

	    int insert(CourseLabelRelevance record);

	    int insertSelective(CourseLabelRelevance record);

	    CourseLabelRelevance selectByPrimaryKey(String id);

	    int updateByPrimaryKeySelective(CourseLabelRelevance record);

	    int updateByPrimaryKey(CourseLabelRelevance record);
}
