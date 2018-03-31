package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.Products;

public interface ProductsMapper {
    int deleteByPrimaryKey(String pid);

    int insert(Products record);

    int insertSelective(Products record);

    Products selectByPrimaryKey(String pid);

    int updateByPrimaryKeySelective(Products record);

    int updateByPrimaryKeyWithBLOBs(Products record);

    int updateByPrimaryKey(Products record);
}