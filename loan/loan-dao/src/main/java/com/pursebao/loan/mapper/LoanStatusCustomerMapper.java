package com.pursebao.loan.mapper;

import com.pursebao.commons.pojo.po.LoanStatus;
import com.pursebao.commons.pojo.po.LoanStatusExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoanStatusCustomerMapper {
  int update(LoanStatus loanStatus);
}