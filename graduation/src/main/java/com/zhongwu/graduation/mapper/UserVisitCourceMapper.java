package com.zhongwu.graduation.mapper;

import java.util.List;

import com.zhongwu.graduation.domain.UserVisitCource;

public interface UserVisitCourceMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserVisitCource record);

    int insertSelective(UserVisitCource record);

    UserVisitCource selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserVisitCource record);

    int updateByPrimaryKey(UserVisitCource record);
    
    List<UserVisitCource> selecteSelective(UserVisitCource record);
}