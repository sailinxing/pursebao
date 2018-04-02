package com.pursebao.search.service;

import com.pursebao.commons.pojo.vo.PageBean;
import com.pursebao.search.pojo.vo.SearchProduct;

/**
 * Created by Administrator on 2018/3/31.
 */
public interface SearchService {
    PageBean<SearchProduct> searchIndex(String keyword, Integer currentPage,Integer currentCount);
}
