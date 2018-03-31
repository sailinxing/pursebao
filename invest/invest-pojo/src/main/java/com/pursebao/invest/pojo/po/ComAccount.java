package com.pursebao.invest.pojo.po;

public class ComAccount {
    private String cid;

    private Double comAmount;

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public Double getComAmount() {
        return comAmount;
    }

    public void setComAmount(Double comAmount) {
        this.comAmount = comAmount;
    }
}