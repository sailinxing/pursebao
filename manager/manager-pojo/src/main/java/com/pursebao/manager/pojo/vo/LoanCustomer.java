package com.pursebao.manager.pojo.vo;

import com.pursebao.commons.pojo.po.Loan;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/3/14.
 */
public class LoanCustomer extends Loan implements Serializable{
   /* private String loanLimittimeUnit;*/

    private Integer repaymentStatus;
    private String loanRateStr;

    public String getLoanRateStr() {
        return loanRateStr;
    }

    public void setLoanRateStr(String loanRateStr) {
        this.loanRateStr = loanRateStr;
    }

    public Integer getRepaymentStatus() {
        return repaymentStatus;
    }

    public void setRepaymentStatus(Integer repaymentStatus) {
        this.repaymentStatus = repaymentStatus;
    }

    @Override
    public String toString() {
        return "LoanCustomer{" +
                "repaymentStatus=" + repaymentStatus +
                '}';
    }
/* public String getLoanLimittimeUnit() {
        return loanLimittimeUnit;
    }

    public void setLoanLimittimeUnit(String loanLimittimeUnit) {
        this.loanLimittimeUnit = loanLimittimeUnit;
    }*/
}
