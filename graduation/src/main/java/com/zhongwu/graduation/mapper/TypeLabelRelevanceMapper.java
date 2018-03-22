package com.zhongwu.graduation.mapper;

import java.util.List;

import com.zhongwu.graduation.domain.TypeLabelRelevance;

public interface TypeLabelRelevanceMapper {
    int deleteByPrimaryKey(String id);

    int insert(TypeLabelRelevance record);

    int insertSelective(TypeLabelRelevance record);

    TypeLabelRelevance selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TypeLabelRelevance record);

    int updateByPrimaryKey(TypeLabelRelevance record);
    
    List<TypeLabelRelevance> selectAllRelevance();
}