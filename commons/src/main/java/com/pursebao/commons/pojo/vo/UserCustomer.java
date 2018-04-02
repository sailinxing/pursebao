package com.pursebao.commons.pojo.vo;

import com.pursebao.commons.pojo.po.User;

public class UserCustomer extends User {
    private String aid;
    private double accountAmount;
    private double expectedCapital;
    private double expectedTotalincrease;
    private double cashAmount;
    private double dailyTotalincrease;
    private double totalincreasement;
    private double currentTotalIncrease;
    //总资产
    private double totalAssets;

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public double getAccountAmount() {
        return accountAmount;
    }

    public void setAccountAmount(double accountAmount) {
        this.accountAmount = accountAmount;
    }

    public double getExpectedCapital() {
        return expectedCapital;
    }

    public void setExpectedCapital(double expectedCapital) {
        this.expectedCapital = expectedCapital;
    }

    public double getExpectedTotalincrease() {
        return expectedTotalincrease;
    }

    public void setExpectedTotalincrease(double expectedTotalincrease) {
        this.expectedTotalincrease = expectedTotalincrease;
    }

    public double getCashAmount() {
        return cashAmount;
    }

    public void setCashAmount(double cashAmount) {
        this.cashAmount = cashAmount;
    }

    public double getDailyTotalincrease() {
        return dailyTotalincrease;
    }

    public void setDailyTotalincrease(double dailyTotalincrease) {
        this.dailyTotalincrease = dailyTotalincrease;
    }

    public double getTotalincreasement() {
        return totalincreasement;
    }

    public void setTotalincreasement(double totalincreasement) {
        this.totalincreasement = totalincreasement;
    }

    public double getCurrentTotalIncrease() {
        return currentTotalIncrease;
    }

    public void setCurrentTotalIncrease(double currentTotalIncrease) {
        this.currentTotalIncrease = currentTotalIncrease;
    }

    public double getTotalAssets() {
        return totalAssets;
    }

    public void setTotalAssets(double totalAssets) {
        this.totalAssets = totalAssets;
    }
}
