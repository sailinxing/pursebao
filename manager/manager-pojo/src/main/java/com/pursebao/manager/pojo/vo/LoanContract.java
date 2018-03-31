package com.pursebao.manager.pojo.vo;

/**
 * Created by Administrator on 2018/3/24.
 */
public class LoanContract  extends LoanDetail{
    private String companyName;
    private String companyAddress;

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }
}
