package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.Companys;

public interface CompanysMapper {
    int deleteByPrimaryKey(String cid);

    int insert(Companys record);

    int insertSelective(Companys record);

    Companys selectByPrimaryKey(String cid);

    int updateByPrimaryKeySelective(Companys record);

    int updateByPrimaryKey(Companys record);
}