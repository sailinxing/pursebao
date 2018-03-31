package com.pursebao.manager.pojo.vo;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2018/3/17.
 */
public class LoanDetail extends LoanCustomer implements Serializable {
    private Date loanGettime;
    private Date loanOvertime;
    private Double repaymentAmount;
    private Date repaymentTime;
    private String loanGettimeStr;
    private String loanOvertimeStr;
    private String repaymentTimeStr;
    private String beginTimeStr;
    private String realname;

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getBeginTimeStr() {
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        if (this.getLoanBegintime() != null) {
            Date loanBegintime = this.getLoanBegintime();
            this.setBeginTimeStr(sdformat.format(loanBegintime));
        }
        return beginTimeStr;
    }

    public void setBeginTimeStr(String beginTimeStr) {
        this.beginTimeStr = beginTimeStr;
    }

    public String getLoanGettimeStr() {
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        if (this.getLoanGettime() != null) {
            Date loanGettime = this.getLoanGettime();
            this.setLoanGettimeStr(sdformat.format(loanGettime));
        }
        return loanGettimeStr;
    }

    public void setLoanGettimeStr(String loanGettimeStr) {
        this.loanGettimeStr = loanGettimeStr;
    }

    public String getLoanOvertimeStr() {
        return loanOvertimeStr;
    }

    public void setLoanOvertimeStr(String loanOvertimeStr) {
        this.loanOvertimeStr = loanOvertimeStr;
    }

    public String getRepaymentTimeStr() {
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        if (this.getRepaymentTime() != null) {
            Date repaymentGettime = this.getRepaymentTime();
            this.setLoanGettimeStr(sdformat.format(repaymentGettime));
        }
        return repaymentTimeStr;
    }

    public void setRepaymentTimeStr(String repaymentTimeStr) {
        this.repaymentTimeStr = repaymentTimeStr;
    }


    @Override
    public Date getLoanGettime() {
        return loanGettime;
    }

    @Override
    public void setLoanGettime(Date loanGettime) {
        this.loanGettime = loanGettime;
    }

    public Date getLoanOvertime() {
        return loanOvertime;
    }

    public void setLoanOvertime(Date loanOvertime) {
        this.loanOvertime = loanOvertime;
    }

    public Double getRepaymentAmount() {
        return repaymentAmount;
    }

    public void setRepaymentAmount(Double repaymentAmount) {
        this.repaymentAmount = repaymentAmount;
    }

    public Date getRepaymentTime() {
        return repaymentTime;
    }

    public void setRepaymentTime(Date repaymentTime) {
        this.repaymentTime = repaymentTime;
    }

    @Override
    public String toString() {
        return "LoanDetail{" +
                "loanGettime=" + loanGettime +
                ", loanOvertime=" + loanOvertime +
                ", repaymentAmount=" + repaymentAmount +
                ", repaymentTime=" + repaymentTime +
                ", loanGettimeStr='" + loanGettimeStr + '\'' +
                ", loanOvertimeStr='" + loanOvertimeStr + '\'' +
                ", repaymentTimeStr='" + repaymentTimeStr + '\'' +
                ", beginTimeStr='" + beginTimeStr + '\'' +
                ", realname='" + realname + '\'' +
                '}';
    }
}
