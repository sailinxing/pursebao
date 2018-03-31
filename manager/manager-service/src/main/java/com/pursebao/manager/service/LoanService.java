package com.pursebao.manager.service;

import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.Products;
import com.pursebao.manager.pojo.vo.LoanContract;
import com.pursebao.manager.pojo.vo.LoanDetail;

import java.util.List;

public interface LoanService {

    // 查询所有的贷款
    // public List<Loan> selectAllLoans();



    List<LoanDetail> listAllLoan();
    int deleteLoan(List<String> ids);

    // 审核被拒绝
    int refuseLoanCheck(String lid);

    // 审核
    int updatecheckLoan(Loan loan);

    // 发布
    int updatepublishProducts(Products products);

    // 产生合同
    int makeContract(Products products);
    LoanContract findLoanById(String lid);
}
