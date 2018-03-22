package com.zhongwu.graduation.service;

import java.util.List;

import com.zhongwu.graduation.domain.UserCollectCource;

public interface UserCollectCourceService {
		int deleteByPrimaryKey(String id);

	    int insert(UserCollectCource record);

	    int insertSelective(UserCollectCource record);

	    UserCollectCource selectByPrimaryKey(String id);

	    int updateByPrimaryKeySelective(UserCollectCource record);

	    int updateByPrimaryKey(UserCollectCource record);
	    
	    List<UserCollectCource> selecteSelective(UserCollectCource record);
}
