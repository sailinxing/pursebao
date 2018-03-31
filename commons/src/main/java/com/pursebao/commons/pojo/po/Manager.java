package com.pursebao.commons.pojo.po;

import java.io.Serializable;

public class Manager implements Serializable{
    private Integer mid;

    private String managerName;

    private String password;

    private Integer job;

    private Integer department;

    private Integer managerLevel;

    private Integer status;

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getJob() {
        return job;
    }

    public void setJob(Integer job) {
        this.job = job;
    }

    public Integer getDepartment() {
        return department;
    }

    public void setDepartment(Integer department) {
        this.department = department;
    }

    public Integer getManagerLevel() {
        return managerLevel;
    }

    public void setManagerLevel(Integer managerLevel) {
        this.managerLevel = managerLevel;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "mid=" + mid +
                ", managerName='" + managerName + '\'' +
                ", password='" + password + '\'' +
                ", job=" + job +
                ", department=" + department +
                ", managerLevel=" + managerLevel +
                ", status=" + status +
                '}';
    }
}