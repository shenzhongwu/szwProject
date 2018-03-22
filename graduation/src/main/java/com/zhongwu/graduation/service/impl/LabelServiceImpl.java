package com.zhongwu.graduation.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.Label;
import com.zhongwu.graduation.domain.TypeLabelRelevance;
import com.zhongwu.graduation.mapper.LabelMapper;
import com.zhongwu.graduation.mapper.TypeLabelRelevanceMapper;
import com.zhongwu.graduation.service.LabelService;
import com.zhongwu.graduation.util.GenerateIdUtil;
@Service
public class LabelServiceImpl implements LabelService {
	@Resource	
	LabelMapper labelMapper;
	@Resource	
	TypeLabelRelevanceMapper typeLabelRelevanceMapper;
	@Override
	public int deleteByPrimaryKey(String labelId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Label record) {
		// TODO Auto-generated method stub
		labelMapper.insert(record);
		return 0;
	}
	
	@Override
	public int insertAll(List<String> records,String courseTypeId) {
		// TODO Auto-generated method stub
		Label label = new Label();
		
		for(String lableName : records){
			String labelId = GenerateIdUtil.getLabelId();
			label.setLabelId(labelId);
			label.setCreateTime(new Date());
			label.setUpdateTime(new Date());
			label.setLabelName(lableName);
			label.setParentId(courseTypeId);
			labelMapper.insertSelective(label);
			
			
		}
		return 0;
	}


	@Override
	public int insertSelective(Label record) {
		// TODO Auto-generated method stub
		return labelMapper.insertSelective(record);
	}

	@Override
	public Label selectByPrimaryKey(String labelId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Label record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Label record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Label> selectLabelList(Label record) {
		// TODO Auto-generated method stub
		return labelMapper.selectLabelList(record);
	}

}
