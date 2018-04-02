package com.pursebao.freemarker.pojo.vo;

import com.pursebao.commons.pojo.po.Products;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/3/29.
 */
public class ProductDetail extends Products implements Serializable{
    private Integer loanLimittime;
    private String loanUse;
    private Double loanAmount;
    public Integer getLoanLimittime() {
        return loanLimittime;
    }

    public void setLoanLimittime(Integer loanLimittime) {
        this.loanLimittime = loanLimittime;
    }

    public String getLoanUse() {
        return loanUse;
    }

    public void setLoanUse(String loanUse) {
        this.loanUse = loanUse;
    }

    public Double getLoanAmount() {
        return loanAmount;
    }

    public void setLoanAmount(Double loanAmount) {
        this.loanAmount = loanAmount;
    }
}
