package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.dto.PageBean;
import com.pursebao.invest.pojo.po.InvestOrders;
import com.pursebao.invest.pojo.vo.ProductChild;

import java.util.List;

public interface ProductsSelfMapper {
    /**
     * 关联查询出所有的投资产品
     */
    List<ProductChild> listInvestBypage(PageBean pagebean);

    /**
     * 根据Id关联查询出某个投资产品所有信息
     */
    ProductChild selectInvestById(String pid);

    /**
     * 查询所有投资产品数量
     */
    int countNumber();

    /**
     * 修改单个产品的剩余可投金额
     */
    public void decSurplusMoney(InvestOrders order);

    /**
     * 当完成最后一笔投资后，设定产品的还款日期
     */
    public void updateRepaymentDate(ProductChild product);

}
