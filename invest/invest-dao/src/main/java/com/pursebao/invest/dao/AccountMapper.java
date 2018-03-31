package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.Account;

public interface AccountMapper {
    int deleteByPrimaryKey(String aid);

    int insert(Account record);

    int insertSelective(Account record);

    Account selectByPrimaryKey(String aid);

    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);
}