package com.pursebao.invest.pojo.po;

import java.util.Date;

public class loan {
    private String lid;

    private String userId;

    private String loanUse;

    private Integer loanAmount;

    private Integer loanLimittime;

    private Integer loanPayway;

    private String loanGoods;

    private Double loanWorth;

    private Date loanBegintime;

    private Double loanRate;

    private Date productChecked;

    private Date productPublish;

    

    public String getLid() {
        return lid;
    }

    public void setLid(String lid) {
        this.lid = lid == null ? null : lid.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getLoanUse() {
        return loanUse;
    }

    public void setLoanUse(String loanUse) {
        this.loanUse = loanUse == null ? null : loanUse.trim();
    }

    public Integer getLoanAmount() {
        return loanAmount;
    }

    public void setLoanAmount(Integer loanAmount) {
        this.loanAmount = loanAmount;
    }

    public Integer getLoanLimittime() {
        return loanLimittime;
    }

    public void setLoanLimittime(Integer loanLimittime) {
        this.loanLimittime = loanLimittime;
    }

    public Integer getLoanPayway() {
        return loanPayway;
    }

    public void setLoanPayway(Integer loanPayway) {
        this.loanPayway = loanPayway;
    }

    public String getLoanGoods() {
        return loanGoods;
    }

    public void setLoanGoods(String loanGoods) {
        this.loanGoods = loanGoods == null ? null : loanGoods.trim();
    }

    public Double getLoanWorth() {
        return loanWorth;
    }

    public void setLoanWorth(Double loanWorth) {
        this.loanWorth = loanWorth;
    }

    public Date getLoanBegintime() {
        return loanBegintime;
    }

    public void setLoanBegintime(Date loanBegintime) {
        this.loanBegintime = loanBegintime;
    }

    public Double getLoanRate() {
        return loanRate;
    }

    public void setLoanRate(Double loanRate) {
        this.loanRate = loanRate;
    }

    public Date getProductChecked() {
        return productChecked;
    }

    public void setProductChecked(Date productChecked) {
        this.productChecked = productChecked;
    }

    public Date getProductPublish() {
        return productPublish;
    }

    public void setProductPublish(Date productPublish) {
        this.productPublish = productPublish;
    }
}