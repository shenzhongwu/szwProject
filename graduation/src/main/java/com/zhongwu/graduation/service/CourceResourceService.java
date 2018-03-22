package com.zhongwu.graduation.service;

import com.zhongwu.graduation.domain.CourceResource;

public interface CourceResourceService {
	int deleteByPrimaryKey(String id);

    int insert(CourceResource record);

    int insertSelective(CourceResource record);

    CourceResource selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CourceResource record);

    int updateByPrimaryKey(CourceResource record);
}
