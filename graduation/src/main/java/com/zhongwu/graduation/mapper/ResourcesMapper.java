package com.zhongwu.graduation.mapper;

import java.util.List;

import com.zhongwu.graduation.domain.Resources;

public interface ResourcesMapper {
    int deleteByPrimaryKey(String resourceId);

    int insert(Resources record);

    int insertSelective(Resources record);

    Resources selectByPrimaryKey(String resourceId);

    int updateByPrimaryKeySelective(Resources record);

    int updateByPrimaryKey(Resources record);
    
    List<Resources> selectResourcesByCourceId(String courceId);
}