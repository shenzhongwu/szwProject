package com.zhongwu.graduation.mapper;

import java.util.List;

import com.zhongwu.graduation.domain.PlatUser;

public interface PlatUserMapper {
    int deleteByPrimaryKey(String userId);

    int insert(PlatUser record);

    int insertSelective(PlatUser record);

    PlatUser selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(PlatUser record);

    int updateByPrimaryKey(PlatUser record);
    
    List<PlatUser> selectUserSelective(PlatUser record);
}