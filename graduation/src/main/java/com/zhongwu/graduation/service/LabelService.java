package com.zhongwu.graduation.service;

import java.util.List;

import com.zhongwu.graduation.domain.Label;

public interface LabelService {
		int deleteByPrimaryKey(String labelId);

	    int insert(Label record);

	    int insertSelective(Label record);

	    Label selectByPrimaryKey(String labelId);

	    int updateByPrimaryKeySelective(Label record);

	    int updateByPrimaryKey(Label record);
	    
	    int insertAll(List<String> record,String courseTypeId);
	    
	    List<Label> selectLabelList(Label record);

}
