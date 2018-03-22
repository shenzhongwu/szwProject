package com.zhongwu.graduation.mapper;

import com.zhongwu.graduation.domain.RsourceInfo;

public interface RsourceInfoMapper {
    int deleteByPrimaryKey(String id);

    int insert(RsourceInfo record);

    int insertSelective(RsourceInfo record);

    RsourceInfo selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RsourceInfo record);

    int updateByPrimaryKey(RsourceInfo record);
}