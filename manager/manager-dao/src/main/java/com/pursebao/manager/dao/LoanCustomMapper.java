package com.pursebao.manager.dao;

import com.pursebao.manager.pojo.vo.LoanContract;
import com.pursebao.manager.pojo.vo.LoanCustomer;
import com.pursebao.manager.pojo.vo.LoanDetail;

import java.util.List;

public interface LoanCustomMapper {

    // 查询所有的贷款
    // public List<Loan> selectAllLoans();


    LoanContract selectLoanById(String lid);
    int update(LoanCustomer loan);
    List<LoanDetail> selectAllLoan();

}