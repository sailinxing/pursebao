package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.loan;
import com.pursebao.invest.pojo.vo.LoanChild;

public interface loanSelfMapper {


    LoanChild selectByPrimaryKey(String lid);


}