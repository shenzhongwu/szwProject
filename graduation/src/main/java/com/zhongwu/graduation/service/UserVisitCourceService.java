package com.zhongwu.graduation.service;

import java.util.List;

import com.zhongwu.graduation.domain.UserVisitCource;

public interface UserVisitCourceService {
	 int deleteByPrimaryKey(String id);

	    int insert(UserVisitCource record);

	    int insertSelective(UserVisitCource record);

	    UserVisitCource selectByPrimaryKey(String id);

	    int updateByPrimaryKeySelective(UserVisitCource record);

	    int updateByPrimaryKey(UserVisitCource record);

	    List<UserVisitCource> selecteSelective(UserVisitCource record);
}
