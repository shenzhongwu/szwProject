package com.zhongwu.graduation.mapper;

import com.zhongwu.graduation.domain.CourceResource;

public interface CourceResourceMapper {
    int deleteByPrimaryKey(String id);

    int insert(CourceResource record);

    int insertSelective(CourceResource record);

    CourceResource selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CourceResource record);

    int updateByPrimaryKey(CourceResource record);
}