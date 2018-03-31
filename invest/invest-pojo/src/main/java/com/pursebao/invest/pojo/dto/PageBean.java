package com.pursebao.invest.pojo.dto;

import com.pursebao.invest.pojo.vo.ProductChild;

import java.util.List;

public class PageBean {
    private int currentpage;
    private int pagesize;
    private int countnumber;
    private int totalpage;
    private List<ProductChild> pagedata;
    //private int offset;

    public int getCurrentpage() {
        return currentpage;
    }

    public void setCurrentpage(int currentpage) {
        this.currentpage = currentpage;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getCountnumber() {
        return countnumber;
    }

    public void setCountnumber(int countnumber) {
        this.countnumber = countnumber;
    }

    public int getTotalpage() {
        return totalpage;
    }

    public void setTotalpage(int totalpage) {
        this.totalpage = totalpage;
    }

    public List<ProductChild> getPagedata() {
        return pagedata;
    }

    public void setPagedata(List<ProductChild> pagedata) {
        this.pagedata = pagedata;
    }

    public int getOffset() {
        return (currentpage-1)*pagesize;
    }
}
