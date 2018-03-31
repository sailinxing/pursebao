package com.pursebao.manager.pojo.dto;

/**
 * Created by Administrator on 2018/3/13.
 */
public class PageBean {
    private int page;
    private int limit;

    public int getPage() {
        return page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public void setPage(int page) {
        this.page = page;
    }
    public int getOffset() {
            return (page-1)*limit;
    }
}
