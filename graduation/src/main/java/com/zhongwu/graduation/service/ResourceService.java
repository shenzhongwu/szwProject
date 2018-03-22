package com.zhongwu.graduation.service;

import java.util.List;

import com.zhongwu.graduation.domain.Resources;

public interface ResourceService {
	  	int deleteByPrimaryKey(String resourceId);

	    int insert(Resources record);

	    int insertSelective(Resources record);

	    Resources selectByPrimaryKey(String resourceId);

	    int updateByPrimaryKeySelective(Resources record);

	    int updateByPrimaryKey(Resources record);
	    
	    //通过课程id获取课程视频资源
	    List<Resources> selectResourcesByCourceId(String courceId);
}
