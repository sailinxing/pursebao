package com.pursebao.invest.pojo.po;

public class Account {
    private String aid;

    private Double accountAmount;

    private Double expectedCapital;

    private Double expectedTotalincrease;

    private Double cashAmount;

    private Double dailyTotalincrease;

    private Double totalincreasement;

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid == null ? null : aid.trim();
    }

    public Double getAccountAmount() {
        return accountAmount;
    }

    public void setAccountAmount(Double accountAmount) {
        this.accountAmount = accountAmount;
    }

    public Double getExpectedCapital() {
        return expectedCapital;
    }

    public void setExpectedCapital(Double expectedCapital) {
        this.expectedCapital = expectedCapital;
    }

    public Double getExpectedTotalincrease() {
        return expectedTotalincrease;
    }

    public void setExpectedTotalincrease(Double expectedTotalincrease) {
        this.expectedTotalincrease = expectedTotalincrease;
    }

    public Double getCashAmount() {
        return cashAmount;
    }

    public void setCashAmount(Double cashAmount) {
        this.cashAmount = cashAmount;
    }

    public Double getDailyTotalincrease() {
        return dailyTotalincrease;
    }

    public void setDailyTotalincrease(Double dailyTotalincrease) {
        this.dailyTotalincrease = dailyTotalincrease;
    }

    public Double getTotalincreasement() {
        return totalincreasement;
    }

    public void setTotalincreasement(Double totalincreasement) {
        this.totalincreasement = totalincreasement;
    }
}