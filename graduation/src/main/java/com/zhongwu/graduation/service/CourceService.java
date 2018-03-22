package com.zhongwu.graduation.service;

import java.util.List;

import com.zhongwu.graduation.domain.Cource;
import com.zhongwu.graduation.domain.Page;
import com.zhongwu.graduation.domain.condition.CourceCondition;

public interface CourceService {
    int deleteByPrimaryKey(String courceId);

    int insert(Cource record);

    int insertSelective(Cource record);

    Cource selectByPrimaryKey(String courceId);

    int updateByPrimaryKeySelective(Cource record);

    int updateByPrimaryKey(Cource record);
    
    //随机查询数据size条数据
    List<Cource> randomSelect(Cource record,int size);
    //查询用户收藏的课程
    List<Cource> wodCollectSelect(String userId);
    
    //根据条件查询cource
    Page<CourceCondition> listByPage(CourceCondition condition,Page<CourceCondition> page);
    
}
