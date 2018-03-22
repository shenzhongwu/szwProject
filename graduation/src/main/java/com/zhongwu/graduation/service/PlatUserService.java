package com.zhongwu.graduation.service;

import java.util.List;

import com.zhongwu.graduation.domain.PlatUser;

public interface PlatUserService {
	int deleteByPrimaryKey(String userId);

    int insert(PlatUser record);

    int insertSelective(PlatUser record);

    PlatUser selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(PlatUser record);

    int updateByPrimaryKey(PlatUser record);
    
    List<PlatUser> selectUserSelective(PlatUser record);
}
