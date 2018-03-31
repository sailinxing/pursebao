package com.pursebao.invest.pojo.po;

import java.util.Date;

public class Products {
    private String pid;

    private Double expectedRate;

    private Double startMoney;

    private Double surplusMoney;

    private Date repaymentDate;

    private String loanLid;

    private Integer productOnline;

    private String productIntroduce;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    public Double getExpectedRate() {
        return expectedRate;
    }

    public void setExpectedRate(Double expectedRate) {
        this.expectedRate = expectedRate;
    }

    public Double getStartMoney() {
        return startMoney;
    }

    public void setStartMoney(Double startMoney) {
        this.startMoney = startMoney;
    }

    public Double getSurplusMoney() {
        return surplusMoney;
    }

    public void setSurplusMoney(Double surplusMoney) {
        this.surplusMoney = surplusMoney;
    }

    public Date getRepaymentDate() {
        return repaymentDate;
    }

    public void setRepaymentDate(Date repaymentDate) {
        this.repaymentDate = repaymentDate;
    }

    public String getLoanLid() {
        return loanLid;
    }

    public void setLoanLid(String loanLid) {
        this.loanLid = loanLid == null ? null : loanLid.trim();
    }

    public Integer getProductOnline() {
        return productOnline;
    }

    public void setProductOnline(Integer productOnline) {
        this.productOnline = productOnline;
    }

    public String getProductIntroduce() {
        return productIntroduce;
    }

    public void setProductIntroduce(String productIntroduce) {
        this.productIntroduce = productIntroduce == null ? null : productIntroduce.trim();
    }
}