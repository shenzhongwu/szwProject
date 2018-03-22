package com.zhongwu.graduation.service;

import com.zhongwu.graduation.domain.CourceTypeRelevance;

public interface CourceTypeRelevanceService {
	  int deleteByPrimaryKey(String id);

	    int insert(CourceTypeRelevance record);

	    int insertSelective(CourceTypeRelevance record);

	    CourceTypeRelevance selectByPrimaryKey(String id);

	    int updateByPrimaryKeySelective(CourceTypeRelevance record);

	    int updateByPrimaryKey(CourceTypeRelevance record);
}
