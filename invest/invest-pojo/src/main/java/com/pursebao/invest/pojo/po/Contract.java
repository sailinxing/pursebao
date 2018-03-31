package com.pursebao.invest.pojo.po;

import java.util.Date;

public class Contract {
    private String conId;

    private String conName;

    private Date conBegintime;

    private Date conEndtime;

    private String loanUid;

    private String investUid;

    private String conContent;

    public String getConId() {
        return conId;
    }

    public void setConId(String conId) {
        this.conId = conId == null ? null : conId.trim();
    }

    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName == null ? null : conName.trim();
    }

    public Date getConBegintime() {
        return conBegintime;
    }

    public void setConBegintime(Date conBegintime) {
        this.conBegintime = conBegintime;
    }

    public Date getConEndtime() {
        return conEndtime;
    }

    public void setConEndtime(Date conEndtime) {
        this.conEndtime = conEndtime;
    }

    public String getLoanUid() {
        return loanUid;
    }

    public void setLoanUid(String loanUid) {
        this.loanUid = loanUid == null ? null : loanUid.trim();
    }

    public String getInvestUid() {
        return investUid;
    }

    public void setInvestUid(String investUid) {
        this.investUid = investUid == null ? null : investUid.trim();
    }

    public String getConContent() {
        return conContent;
    }

    public void setConContent(String conContent) {
        this.conContent = conContent == null ? null : conContent.trim();
    }
}