package com.pursebao.search.serviceimpl;

import com.pursebao.commons.pojo.vo.PageBean;
import com.pursebao.search.dao.SearchDao;
import com.pursebao.search.pojo.vo.SearchProduct;
import com.pursebao.search.service.SearchService;
import org.apache.solr.client.solrj.SolrQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/3/31.
 */
@Service
public class SearchServiceImpl implements SearchService{
    @Autowired
    private SearchDao searchDao;
    @Override
    public PageBean<SearchProduct> searchIndex(String keyword, Integer currentPage, Integer currentCount) {
          PageBean<SearchProduct> pageBean=null;
        try {
            //创建solrquery
            SolrQuery solrQuery = new SolrQuery();
            //设置查询内容
            solrQuery.setQuery(keyword);
            //设置分页的条件
            solrQuery.setStart((currentPage - 1) * currentCount);
            solrQuery.setRows(currentCount);
            //设置查询字段
            solrQuery.set("df","product_amount");
            //设置高亮
            solrQuery.setHighlight(true);
            solrQuery.addHighlightField("expected_rate");
            solrQuery.setHighlightSimplePre("<span style='color:red;'>");
            solrQuery.setHighlightSimplePost("</span>");
            //调用DAO层方法
            //list recordCounts totalPages
            pageBean= searchDao.searchIndex(solrQuery,currentCount);
            pageBean.setCurrentPage(currentPage);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pageBean;
    }
}
