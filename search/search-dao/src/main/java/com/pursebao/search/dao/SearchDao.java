package com.pursebao.search.dao;

import com.pursebao.commons.pojo.vo.PageBean;
import com.pursebao.search.pojo.vo.SearchProduct;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/3/31.
 */
@Repository
public class SearchDao {
    @Autowired
    private SolrServer solrServer;
    public PageBean<SearchProduct> searchIndex(SolrQuery solrQuery, Integer currentCount) {
        PageBean<SearchProduct> result = new PageBean<>();
        try {
            //获取到查询索引库的响应
            QueryResponse response = solrServer.query(solrQuery);
            //通过响应获取文档域
            SolrDocumentList solrDocumentList = response.getResults();
            //通过响应获取到高亮的结果集
            Map<String, Map<String, List<String>>> highlighting = response.getHighlighting();
            //numFound
            int numFound = (int)solrDocumentList.getNumFound();
            //创建一个空集合 solrDocumentList-->itemList
            List<SearchProduct> itemList = new ArrayList<>();
            for (SolrDocument document : solrDocumentList) {
                SearchProduct searchProduct= new SearchProduct();
                //给对象设值
                searchProduct.setPid((String)document.get("id"));
                searchProduct.setLoanLimittime((int)document.get("loan_limittime"));
                searchProduct.setLoanUse((String)document.get("loan_use"));
                searchProduct.setSurplusMoney((double) document.get("surplus_money"));
                searchProduct.setStartMoney((double) document.get("start_money"));
                searchProduct.setProductIntroduce((String)document.get("product_introduce"));
                searchProduct.setLoanAmount((double) document.get("loan_amount"));
                //通过ID获取map
                List<String> stringList = highlighting.get(document.get("id")).get("expected_rate");
                double expectedRrate = 0;
                if (stringList != null && stringList.size() > 0) {
                    expectedRrate =Double.parseDouble(stringList.get(0) ) ;
                }else{
                    expectedRrate = (double) document.get("expected_rate");
                }
                searchProduct.setExpectedRate(expectedRrate);
                itemList.add(searchProduct);
            }
            //退一进一
            int totalPages = (int)(numFound + currentCount - 1) / currentCount;
            result.setTotalCount(numFound);
            result.setPageData(itemList);
            result.setTotalPage(totalPages);
            result.setCurrentCount(currentCount);
        } catch (SolrServerException e) {
            e.printStackTrace();
        }
        return result;
    }
}
