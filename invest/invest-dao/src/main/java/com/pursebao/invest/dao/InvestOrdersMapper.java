package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.InvestOrders;

public interface InvestOrdersMapper {
    int deleteByPrimaryKey(String oid);

    int insert(InvestOrders record);

    int insertSelective(InvestOrders record);

    InvestOrders selectByPrimaryKey(String oid);

    int updateByPrimaryKeySelective(InvestOrders record);

    int updateByPrimaryKey(InvestOrders record);
}