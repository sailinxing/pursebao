package com.pursebao.loan.mapper;


import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.User;
import com.pursebao.loan.pojo.vo.LoanCustomer;
import com.pursebao.loan.pojo.vo.LoanDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface LoanCustomerMapper {
    LoanDetail selectLoanById(String lid);
    int update(LoanCustomer loan);
    List<Loan> selectAllLoan();
    List<Loan> selectAllLoanByPage(@Param("pageIndex")Integer pageIndex,@Param("currentCount")Integer currentCount);
    int countAllLoanByPage();
    List<LoanCustomer> selectUserLoan(User user);
    List<LoanCustomer> selectUserLoanByPage(@Param("user")User user,@Param("pageIndex")Integer pageIndex,@Param("currentCount")Integer currentCount);
    int countUserLoanByPage(User user);
}