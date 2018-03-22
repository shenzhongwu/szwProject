package com.zhongwu.graduation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.zhongwu.graduation.domain.Cource;
import com.zhongwu.graduation.domain.condition.CourceCondition;

public interface CourceMapper {
    int deleteByPrimaryKey(String courceId);

    int insert(Cource record);

    int insertSelective(Cource record);

    Cource selectByPrimaryKey(String courceId);

    int updateByPrimaryKeySelective(Cource record);

    int updateByPrimaryKey(Cource record);
    //随机查询数据size条数据
    List<Cource> randomSelect(Cource record, @Param(value = "size") int size); 
    
    List<Cource> wodCollectSelect(String userId);
    
    //根据条件查询cource
    List<CourceCondition> listByPage(@Param("condition")CourceCondition condition, RowBounds rowBounds);
    //cource数量
    int listByPageCount(@Param("condition")CourceCondition condition);
}