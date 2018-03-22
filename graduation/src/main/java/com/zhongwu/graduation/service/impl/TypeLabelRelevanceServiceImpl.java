package com.zhongwu.graduation.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.TypeLabelRelevance;
import com.zhongwu.graduation.mapper.TypeLabelRelevanceMapper;
import com.zhongwu.graduation.service.TypeLabelRelevanceService;
@Service
public class TypeLabelRelevanceServiceImpl implements TypeLabelRelevanceService {
	@Resource
	TypeLabelRelevanceMapper typeLabelRelevanceMapper;
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(TypeLabelRelevance record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(TypeLabelRelevance record) {
		// TODO Auto-generated method stub
		return typeLabelRelevanceMapper.insertSelective(record);
	}

	@Override
	public TypeLabelRelevance selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(TypeLabelRelevance record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(TypeLabelRelevance record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TypeLabelRelevance> selectAllRelevance() {
		// TODO Auto-generated method stub
		return typeLabelRelevanceMapper.selectAllRelevance();
	}

}
