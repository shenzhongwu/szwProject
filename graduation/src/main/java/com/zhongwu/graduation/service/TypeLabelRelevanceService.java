package com.zhongwu.graduation.service;

import java.util.List;

import com.zhongwu.graduation.domain.TypeLabelRelevance;

public interface TypeLabelRelevanceService {
	  	int deleteByPrimaryKey(String id);

	    int insert(TypeLabelRelevance record);

	    int insertSelective(TypeLabelRelevance record);

	    TypeLabelRelevance selectByPrimaryKey(String id);

	    int updateByPrimaryKeySelective(TypeLabelRelevance record);

	    int updateByPrimaryKey(TypeLabelRelevance record);
	    
	    List<TypeLabelRelevance> selectAllRelevance();
}
