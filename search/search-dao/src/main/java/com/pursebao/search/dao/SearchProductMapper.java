package com.pursebao.search.dao;




import com.pursebao.search.pojo.vo.SearchProduct;


public interface SearchProductMapper {
    //创建增量更新索引库的第一步：采集更新数据
    SearchProduct selectProductById(String pid);

}