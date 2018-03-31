package com.pursebao.invest.pojo.vo;

import com.pursebao.invest.pojo.po.Products;

import java.io.Serializable;

public class ProductChild extends Products implements Serializable{
    private LoanChild loanChildInfo;

    private String strPublishDate;
    private String strCheackDate;
    private String strRepaymentDate;


    public LoanChild getLoanChildInfo() {
        return loanChildInfo;
    }

    public void setLoanChildInfo(LoanChild loanChildInfo) {
        this.loanChildInfo = loanChildInfo;
    }

    public String getStrPublishDate() {
        return strPublishDate;
    }

    public void setStrPublishDate(String strPublishDate) {
        this.strPublishDate = strPublishDate;
    }

    public String getStrCheackDate() {
        return strCheackDate;
    }

    public void setStrCheackDate(String strCheackDate) {
        this.strCheackDate = strCheackDate;
    }

    public String getStrRepaymentDate() {
        return strRepaymentDate;
    }

    public void setStrRepaymentDate(String strRepaymentDate) {
        this.strRepaymentDate = strRepaymentDate;
    }
}
