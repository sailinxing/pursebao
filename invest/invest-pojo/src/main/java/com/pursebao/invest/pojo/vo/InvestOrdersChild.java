package com.pursebao.invest.pojo.vo;

import com.pursebao.invest.pojo.po.InvestOrders;

import java.util.Date;

public class InvestOrdersChild extends InvestOrders{
    private String username;
    private String strInvestDate;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStrInvestDate() {
        return strInvestDate;
    }

    public void setStrInvestDate(String strInvestDate) {
        this.strInvestDate = strInvestDate;
    }
}