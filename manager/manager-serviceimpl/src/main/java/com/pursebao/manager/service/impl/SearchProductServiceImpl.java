package com.pursebao.manager.service.impl;

import com.pursebao.manager.dao.SearchProductMapper;
import com.pursebao.manager.pojo.vo.ResultObject;
import com.pursebao.manager.pojo.vo.SearchProduct;
import com.pursebao.manager.service.SearchProductService;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2018/3/29.
 */
@Service
public class SearchProductServiceImpl implements SearchProductService{
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private SearchProductMapper searchProductMapper;
    @Autowired
    private SolrServer solrServer;
    @Override
    public ResultObject importIndex() {
            ResultObject ro = new ResultObject();
            ro.setSuccess(false);
            //0 采集数据
            List<SearchProduct> list = searchProductMapper.listProduct();
            try {
                //1 加工数据
                for (SearchProduct product : list) {
                    //2 添加到索引库
                    // 创建一个文档对象
                    SolrInputDocument document = new SolrInputDocument();
                    // 往每一个document中添加field
                    document.addField("id", product.getPid());
                    //第一个参数一定要对应于schema.xml中的field name
                    document.addField("expected_rate", product.getExpectedRate());
                    document.addField("loan_limittime", product.getLoanLimittime());
                    document.addField("start_money", product.getStartMoney());
                    document.addField("surplus_money", product.getSurplusMoney());
                    document.addField("product_introduce", product.getProductIntroduce());
                    document.addField("loan_use", product.getLoanUse());
                    document.addField("loan_amount", product.getLoanAmount());
                    //写入索引库
                        solrServer.add(document);
                }
                //提交索引库
                solrServer.commit();
                ro.setSuccess(true);
                ro.setMessage("恭喜！一键导入成功！");
            } catch (SolrServerException e) {
                logger.error(e.getMessage(), e);
                e.printStackTrace();
            } catch (IOException e) {
                logger.error(e.getMessage(), e);
                e.printStackTrace();
            }
            return ro;
    }
}
