package com.pursebao.search.pojo.vo;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/3/29.
 */
public class SearchProduct implements Serializable{
    private String pid;
    private Double expectedRate;
    private Integer loanLimittime;
    private Double startMoney;
    private Double surplusMoney;
    private String productIntroduce;
    private String loanUse;
    private Double loanAmount;

    public Double getLoanAmount() {
        return loanAmount;
    }

    public void setLoanAmount(Double loanAmount) {
        this.loanAmount = loanAmount;
    }

    public String getLoanUse() {
        return loanUse;
    }

    public void setLoanUse(String loanUse) {
        this.loanUse = loanUse;
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

    public String getProductIntroduce() {
        return productIntroduce;
    }

    public void setProductIntroduce(String productIntroduce) {
        this.productIntroduce = productIntroduce;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public Double getExpectedRate() {
        return expectedRate;
    }

    public void setExpectedRate(Double expectedRate) {
        this.expectedRate = expectedRate;
    }

    public Integer getLoanLimittime() {
        return loanLimittime;
    }

    public void setLoanLimittime(Integer loanLimittime) {
        this.loanLimittime = loanLimittime;
    }

    @Override
    public String toString() {
        return "SearchProduct{" +
                "pid='" + pid + '\'' +
                ", expectedRate=" + expectedRate +
                ", loanLimittime=" + loanLimittime +
                ", startMoney=" + startMoney +
                ", surplusMoney=" + surplusMoney +
                ", productIntroduce='" + productIntroduce + '\'' +
                ", loanUse='" + loanUse + '\'' +
                '}';
    }
}
