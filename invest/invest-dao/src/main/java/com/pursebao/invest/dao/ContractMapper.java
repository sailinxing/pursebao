package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.Contract;

public interface ContractMapper {
    int deleteByPrimaryKey(String conId);

    int insert(Contract record);

    int insertSelective(Contract record);

    Contract selectByPrimaryKey(String conId);

    int updateByPrimaryKeySelective(Contract record);

    int updateByPrimaryKeyWithBLOBs(Contract record);

    int updateByPrimaryKey(Contract record);
}