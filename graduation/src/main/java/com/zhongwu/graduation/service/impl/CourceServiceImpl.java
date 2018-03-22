package com.zhongwu.graduation.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.Cource;
import com.zhongwu.graduation.domain.Page;
import com.zhongwu.graduation.domain.condition.CourceCondition;
import com.zhongwu.graduation.mapper.CourceMapper;
import com.zhongwu.graduation.service.CourceService;
@Service
public class CourceServiceImpl implements CourceService {
	@Resource
	CourceMapper courceMapper;
	
	@Override
	public int deleteByPrimaryKey(String courceId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Cource record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Cource record) {
		// TODO Auto-generated method stub
		record.setCreateTime(new Date());
		record.setUpdateTime(new Date());
		return courceMapper.insertSelective(record);
	}

	@Override
	public Cource selectByPrimaryKey(String courceId) {
		// TODO Auto-generated method stub
		return courceMapper.selectByPrimaryKey(courceId);
	}

	@Override
	public int updateByPrimaryKeySelective(Cource record) {
		// TODO Auto-generated method stub
		return courceMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Cource record) {
		// TODO Auto-generated method stub
		return courceMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Cource> randomSelect(Cource record, int size) {
		// TODO Auto-generated method stub
		return courceMapper.randomSelect(record, size);
	}

	@Override
	public List<Cource> wodCollectSelect(String userId) {
		// TODO Auto-generated method stub
		return courceMapper.wodCollectSelect(userId);
	}

	@Override
	public Page<CourceCondition> listByPage(CourceCondition condition, Page<CourceCondition> page) {
		// TODO Auto-generated method stub
				RowBounds rowBounds = new RowBounds(page.getCurrentPageIndex(), page.getPageSize());
				List<CourceCondition> results = courceMapper.listByPage(condition, rowBounds);
				int count = courceMapper.listByPageCount(condition);
				page.setResults(results);
				page.setAllSize(count);
				return  page;
	}

}
