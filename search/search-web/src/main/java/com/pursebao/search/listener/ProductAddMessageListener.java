package com.pursebao.search.listener;

import com.pursebao.search.dao.SearchProductMapper;
import com.pursebao.search.pojo.vo.SearchProduct;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * Created by Administrator on 2018/4/1.
 */
public class ProductAddMessageListener implements MessageListener {
    @Autowired
    private SolrServer solrServer;
    @Autowired
    private SearchProductMapper searchProductMapper;

    @Override
    public void onMessage(Message message) {
        try {
            TextMessage textMessage=null;
            if(message instanceof TextMessage){
                textMessage=(TextMessage)message;
            }
            String pid= textMessage.getText();
            //通过商品ID获取商品对象
            SearchProduct product = searchProductMapper.selectProductById(pid);
            //document
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
            solrServer.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
