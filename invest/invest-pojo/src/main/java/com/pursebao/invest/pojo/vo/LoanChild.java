package com.pursebao.invest.pojo.vo;


import com.pursebao.invest.pojo.po.loan;

import java.io.Serializable;

public class LoanChild extends loan implements Serializable{
    private String loanPaywayString;

    private UserChild userChildInfo;

    public String getLoanPaywayString() {
        return loanPaywayString;
    }

    public void setLoanPaywayString(String loanPaywayString) {
        this.loanPaywayString = loanPaywayString;
    }

    public UserChild getUserChildInfo() {
        return userChildInfo;
    }

    public void setUserChildInfo(UserChild userChildInfo) {
        this.userChildInfo = userChildInfo;
    }
}
