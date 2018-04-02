package com.pursebao.freemarker.listener;

import com.pursebao.freemarker.mapper.ProductDetailMapper;
import com.pursebao.freemarker.pojo.vo.ProductDetail;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/4/2.
 */
public class ProductAddMessageListener implements MessageListener {
    @Autowired
    private ProductDetailMapper productDetailMapper;
    @Autowired
    private FreeMarkerConfigurer freeMarkerConfigurer;
    @Override
    public void onMessage(Message message) {
        //1 获取消息转为productId
        TextMessage textMessage = (TextMessage) message;
        String pid =null;
        try {
            pid = textMessage.getText();
        } catch (JMSException e) {
            e.printStackTrace();
        }
        //2 通过商品编号查询指定商品对象
        ProductDetail product = productDetailMapper.selectProductById(pid);
        Map<String, Object> dataModel = new HashMap<>();
        dataModel.put("product",product);
        //3 生成静态页面
        Configuration configuration = freeMarkerConfigurer.getConfiguration();
        Template template = null;
        Writer out = null;
        try {
            template = configuration.getTemplate("investdetail.ftl");
            out = new FileWriter("d:/ftl/"+pid+".html");
            try {
                template.process(dataModel,out);
            } catch (TemplateException e) {
                e.printStackTrace();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
