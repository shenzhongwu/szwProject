package com.zhongwu.graduation.service;

import com.zhongwu.graduation.domain.UserCource;

public interface UserCourceService {
	 int deleteByPrimaryKey(String id);

	    int insert(UserCource record);

	    int insertSelective(UserCource record);

	    UserCource selectByPrimaryKey(String id);

	    int updateByPrimaryKeySelective(UserCource record);

	    int updateByPrimaryKey(UserCource record);
}
