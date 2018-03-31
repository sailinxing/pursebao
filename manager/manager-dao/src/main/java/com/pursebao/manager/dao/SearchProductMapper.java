package com.pursebao.manager.dao;


import com.pursebao.manager.pojo.vo.SearchProduct;

import java.util.List;

public interface SearchProductMapper {
    //创建索引库的第一步：采集所有数据
    List<SearchProduct> listProduct();

}