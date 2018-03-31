package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.loan;

public interface loanMapper {
    int deleteByPrimaryKey(String lid);

    int insert(loan record);

    int insertSelective(loan record);

    loan selectByPrimaryKey(String lid);

    int updateByPrimaryKeySelective(loan record);

    int updateByPrimaryKey(loan record);
}