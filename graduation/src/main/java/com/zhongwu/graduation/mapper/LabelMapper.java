package com.zhongwu.graduation.mapper;

import java.util.List;

import com.zhongwu.graduation.domain.Label;

public interface LabelMapper {
    int deleteByPrimaryKey(String labelId);

    int insert(Label record);

    int insertSelective(Label record);

    Label selectByPrimaryKey(String labelId);

    int updateByPrimaryKeySelective(Label record);

    int updateByPrimaryKey(Label record);
    
    List<Label> selectLabelList(Label record);
    
}