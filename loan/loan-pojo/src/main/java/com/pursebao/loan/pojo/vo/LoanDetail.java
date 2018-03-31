package com.pursebao.loan.pojo.vo;

import java.io.Serializable;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2018/3/17.
 */
public class LoanDetail extends LoanCustomer implements Serializable{
    private Date loanGettime;
    private Date loanOvertime;
    private Double repaymentAmount;
    private Date repaymentTime;
    private String loanGettimeStr;
    private String loanOvertimeStr;
    private String repaymentTimeStr;
    private String repaymentAmountStr;

    public String getRepaymentAmountStr() {
        NumberFormat NF =NumberFormat.getInstance();
        NF.setGroupingUsed(false);//去掉科学计数法显示
        String repaymentAmountStr=NF.format(this.getRepaymentAmount()).toString();
        return repaymentAmountStr;
    }

    public void setRepaymentAmountStr(String repaymentAmountStr) {
        this.repaymentAmountStr = repaymentAmountStr;
    }

    public String getLoanGettimeStr() {
        SimpleDateFormat sdformat=new SimpleDateFormat("yyyy-MM-dd");
        String loanGettimeStr=null;
        if(this.getLoanGettime()!=null) {
            Date loanGettime = this.getLoanGettime();
            loanGettimeStr=sdformat.format(loanGettime);
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
        SimpleDateFormat sdformat=new SimpleDateFormat("yyyy-MM-dd");
        String repaymentTimeStr=null;
        if(this.getRepaymentTime()!=null) {
            Date repaymentTime= this.getRepaymentTime();
           repaymentTimeStr=sdformat.format(repaymentTime);
        }
        return repaymentTimeStr;
    }

    public void setRepaymentTimeStr(String repaymentTimeStr) {
        this.repaymentTimeStr = repaymentTimeStr;
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
                '}';
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
}
