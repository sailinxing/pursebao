package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.LoanStatus;

public interface LoanStatusMapper {
    int insert(LoanStatus record);

    int insertSelective(LoanStatus record);
}