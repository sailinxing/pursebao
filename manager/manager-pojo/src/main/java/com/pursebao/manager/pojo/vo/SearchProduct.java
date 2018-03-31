package com.pursebao.manager.pojo.vo;

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
}
