package com.pursebao.portal.pojo.vo;

import com.pursebao.commons.pojo.po.Products;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/3/28.
 */
public class ProductCustomer extends Products implements Serializable{
    private Integer loanLimittime;

    public Integer getLoanLimittime() {
        return loanLimittime;
    }

    public void setLoanLimittime(Integer loanLimittime) {
        this.loanLimittime = loanLimittime;
    }
}
