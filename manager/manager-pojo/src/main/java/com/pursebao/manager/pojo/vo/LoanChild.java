package com.pursebao.manager.pojo.vo;




import com.pursebao.commons.pojo.po.Loan;

import java.io.Serializable;

public class LoanChild extends Loan implements Serializable{
    private String loanPaywayString;

    private String loanLimittimeStr;

    private UserChild userChildInfo;

    public String getLoanPaywayString() {
        return loanPaywayString;
    }

    public void setLoanPaywayString(String loanPaywayString) {
        this.loanPaywayString = loanPaywayString;
    }

    public String getLoanLimittimeStr() {
        return loanLimittimeStr;
    }

    public void setLoanLimittimeStr(String loanLimittimeStr) {
        this.loanLimittimeStr = loanLimittimeStr;
    }

    public UserChild getUserChildInfo() {
        return userChildInfo;
    }

    public void setUserChildInfo(UserChild userChildInfo) {
        this.userChildInfo = userChildInfo;
    }
}
