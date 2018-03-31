package com.pursebao.portal.serviceimpl;

import com.pursebao.commons.jedis.JedisClient;
import com.pursebao.commons.pojo.po.Content;
import com.pursebao.commons.pojo.po.ContentExample;
import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.Products;
import com.pursebao.commons.tools.JsonUtils;
import com.pursebao.commons.tools.StrKit;
import com.pursebao.portal.mapper.ContentMapper;
import com.pursebao.portal.mapper.ContentCustomerMapper;
import com.pursebao.portal.pojo.vo.ProductCustomer;
import com.pursebao.portal.service.ContentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/3/22.
 */
@Service
public class ContentServiceImpl implements ContentService{
   private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ContentMapper contentMapper;
    @Autowired
    private JedisClient jedisClient;
    @Autowired
    private ContentCustomerMapper contentCustomerMapper;
    @Override
    public List<Content> listContentByCId(String cid) {
        //1 先查缓存服务器
        //若有，从缓存中取，返回
        //若无，从MYSQL中查
        try {
            String jsonStr = jedisClient.hget("CONTENT_LIST", cid);
            if (StrKit.notBlank(jsonStr)) {
                List<Content> contentList=JsonUtils.jsonToList(jsonStr,Content.class);
               System.out.println(contentList);
                return contentList;
            }
        }
        catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        //2 主业务：通过CID查询CONTENT
        //创建模板
        ContentExample example=new ContentExample();
        ContentExample.Criteria c=example.createCriteria();
        c.andCateIdEqualTo(cid);
         List<Content> contentList=contentMapper.selectByExample(example);
        //3 从MYSQL中查询出来之后存放一份到缓存服务器中
        try{
            jedisClient.hset("CONTENT_LIST",cid, JsonUtils.objectToJson(contentList));
        }
        catch (Exception e){
           logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return contentList;
    }

    @Override
    public ProductCustomer findProductWithRate() {
        ProductCustomer product=null;
        try {
            product=contentCustomerMapper.selectRateProduct();
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public ProductCustomer findProductWithTime() {
        ProductCustomer product=null;
        try {
            product=contentCustomerMapper.selectTimeProduct();
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public List<Loan> listLoanContent(int offset, int limit) {
        List<Loan> loanList=null;
        try {
           loanList=contentCustomerMapper.selectAllLoanContent(offset,limit);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return loanList;
    }
}
