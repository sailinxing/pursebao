package com.pursebao.invest.pojo.po;

public class Invest {
    private String investId;

    private String investOid;

    private Double dailyIncrease;

    private Double currentIncrease;

    private Double expectedIncrease;

    private Integer investStatus;

    public String getInvestId() {
        return investId;
    }

    public void setInvestId(String investId) {
        this.investId = investId == null ? null : investId.trim();
    }

    public String getInvestOid() {
        return investOid;
    }

    public void setInvestOid(String investOid) {
        this.investOid = investOid == null ? null : investOid.trim();
    }

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

    public Integer getInvestStatus() {
        return investStatus;
    }

    public void setInvestStatus(Integer investStatus) {
        this.investStatus = investStatus;
    }
}