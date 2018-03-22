package com.zhongwu.graduation.mapper;

import java.util.List;

import com.zhongwu.graduation.domain.UserCollectCource;

public interface UserCollectCourceMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserCollectCource record);

    int insertSelective(UserCollectCource record);

    UserCollectCource selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserCollectCource record);

    int updateByPrimaryKey(UserCollectCource record);
    
    List<UserCollectCource> selecteSelective(UserCollectCource record);
}