package com.pursebao.invest.pojo.po;

public class Companys {
    private String cid;

    private String companyName;

    private String caseComplaint;

    private String companyAddress;

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getCaseComplaint() {
        return caseComplaint;
    }

    public void setCaseComplaint(String caseComplaint) {
        this.caseComplaint = caseComplaint;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress == null ? null : companyAddress.trim();
    }
}