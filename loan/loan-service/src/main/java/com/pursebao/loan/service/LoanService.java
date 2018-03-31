package com.pursebao.loan.service;

import com.pursebao.commons.pojo.po.Companys;
import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.User;
import com.pursebao.commons.pojo.vo.PageBean;
import com.pursebao.loan.pojo.vo.LoanCustomer;
import com.pursebao.loan.pojo.vo.LoanDetail;

import java.util.List;

/**
 * Created by Administrator on 2018/3/13.
 */
public interface LoanService {
    List<Loan> listAllLoan();
    PageBean<Loan> listAllLoanByPage(PageBean<Loan> pageBean);
    int saveLoan(User user,Loan loan,Companys companys);
    List<LoanCustomer> listUserLoan(User user);
    PageBean<LoanCustomer> listUserLoanByPage(User user,PageBean<Loan> pageBean);
    LoanDetail findLoanById(LoanCustomer loan);
    int updateLoanStatus(LoanCustomer loan,Double repaymoney,User user);

}
