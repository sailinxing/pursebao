package com.pursebao.invest.pojo.po;

import java.util.Date;

public class InvestOrders {
    private String oid;

    private Double investMoney;

    private Date investDate;

    private String investPid;

    private String investorId;

    private int orderStatus;

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid == null ? null : oid.trim();
    }

    public Double getInvestMoney() {
        return investMoney;
    }

    public void setInvestMoney(Double investMoney) {
        this.investMoney = investMoney;
    }

    public Date getInvestDate() {
        return investDate;
    }

    public void setInvestDate(Date investDate) {
        this.investDate = investDate;
    }

    public String getInvestPid() {
        return investPid;
    }

    public void setInvestPid(String investPid) {
        this.investPid = investPid == null ? null : investPid.trim();
    }

    public String getInvestorId() {
        return investorId;
    }

    public void setInvestorId(String investorId) {
        this.investorId = investorId == null ? null : investorId.trim();
    }

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }
}