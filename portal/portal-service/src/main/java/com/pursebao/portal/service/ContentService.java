package com.pursebao.portal.service;

import com.pursebao.commons.pojo.po.Content;
import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.Products;
import com.pursebao.portal.pojo.vo.ProductCustomer;

import java.util.List;

/**
 * Created by Administrator on 2018/3/22.
 */
public interface ContentService {
    List<Content> listContentByCId(String cid);
    List<Loan> listLoanContent(int offset,int limit);
    ProductCustomer findProductWithRate();
    ProductCustomer findProductWithTime();
}
