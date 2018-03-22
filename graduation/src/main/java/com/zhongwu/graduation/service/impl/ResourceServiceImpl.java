package com.zhongwu.graduation.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhongwu.graduation.domain.Resources;
import com.zhongwu.graduation.mapper.ResourcesMapper;
import com.zhongwu.graduation.service.ResourceService;
import com.zhongwu.graduation.util.GenerateIdUtil;
@Service
public class ResourceServiceImpl implements ResourceService {
	@Resource
	ResourcesMapper resourcesMapper;

	@Override
	public int deleteByPrimaryKey(String resourceId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Resources record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Resources record) {
		// TODO Auto-generated method stub
		record.setUploadTime(new Date());
		return resourcesMapper.insertSelective(record);
	}

	@Override
	public Resources selectByPrimaryKey(String resourceId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Resources record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Resources record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Resources> selectResourcesByCourceId(String courceId) {
		// TODO Auto-generated method stub
		return resourcesMapper.selectResourcesByCourceId(courceId);
	}
	
	

}
