package com.zhongwu.graduation.mapper;

import com.zhongwu.graduation.domain.UserCource;

public interface UserCourceMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserCource record);

    int insertSelective(UserCource record);

    UserCource selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserCource record);

    int updateByPrimaryKey(UserCource record);
}