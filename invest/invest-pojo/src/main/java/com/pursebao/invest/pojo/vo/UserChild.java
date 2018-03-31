package com.pursebao.invest.pojo.vo;

import com.pursebao.invest.pojo.po.Account;
import com.pursebao.invest.pojo.po.Companys;
import com.pursebao.invest.pojo.po.User;

import java.io.Serializable;

public class UserChild extends User implements Serializable {

    private Companys companyInfo;
    private Account accountInfo;

    public Companys getCompanyInfo() {
        return companyInfo;
    }

    public void setCompanyInfo(Companys companyInfo) {
        this.companyInfo = companyInfo;
    }

    public Account getAccountInfo() {
        return accountInfo;
    }

    public void setAccountInfo(Account accountInfo) {
        this.accountInfo = accountInfo;
    }
}
