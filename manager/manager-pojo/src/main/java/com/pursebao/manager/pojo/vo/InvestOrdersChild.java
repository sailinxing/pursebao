package com.pursebao.manager.pojo.vo;


import com.pursebao.commons.pojo.po.InvestOrders;

public class InvestOrdersChild extends InvestOrders {
    private String orderStatusStr;
    private String username;
    private String strInvestDate;
    private String phone;
    private String pid;

    public String getOrderStatusStr() {
        return orderStatusStr;
    }

    public void setOrderStatusStr(String orderStatusStr) {
        this.orderStatusStr = orderStatusStr;
    }

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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }
}