package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.Invest;

public interface InvestMapper {
    int deleteByPrimaryKey(String investId);

    int insert(Invest record);

    int insertSelective(Invest record);

    Invest selectByPrimaryKey(String investId);

    int updateByPrimaryKeySelective(Invest record);

    int updateByPrimaryKey(Invest record);
}