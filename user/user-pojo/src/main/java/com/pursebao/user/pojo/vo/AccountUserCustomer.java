package com.pursebao.user.pojo.vo;

import com.pursebao.commons.pojo.po.User;

/**
 * Created by Administrator on 2018/3/23.
 */
public class AccountUserCustomer extends User {
    private Double dailyIncrease;
    private Double currentIncrease;
    private Double expectedIncrease;
    private Double investMoney;

    public Double getDailyIncrease() {
        return dailyIncrease;
    }

    public void setDailyIncrease(Double dailyIncrease) {
        this.dailyIncrease = dailyIncrease;
    }

    public Double getCurrentIncrease() {
        return currentIncrease;
    }

    public void setCurrentIncrease(Double currentIncrease) {
        this.currentIncrease = currentIncrease;
    }

    public Double getExpectedIncrease() {
        return expectedIncrease;
    }

    public void setExpectedIncrease(Double expectedIncrease) {
        this.expectedIncrease = expectedIncrease;
    }

    public Double getInvestMoney() {
        return investMoney;
    }

    public void setInvestMoney(Double investMoney) {
        this.investMoney = investMoney;
    }

    @Override
    public String toString() {
        return "AccountUserCustomer{" +
                "dailyIncrease=" + dailyIncrease +
                ", currentIncrease=" + currentIncrease +
                ", expectedIncrease=" + expectedIncrease +
                ", investMoney=" + investMoney +
                '}';
    }
}
