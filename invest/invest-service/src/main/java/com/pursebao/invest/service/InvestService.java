package com.pursebao.invest.service;

import com.pursebao.invest.pojo.dto.PageBean;
import com.pursebao.invest.pojo.po.InvestOrders;
import com.pursebao.invest.pojo.vo.InvestOrdersChild;
import com.pursebao.invest.pojo.vo.ProductChild;

import java.util.List;

public interface InvestService {
    List<ProductChild> listInvests(PageBean pagebean);

    int countNumber();

    int countNumber(String pid);

    ProductChild selectInvestById(String pid);

    List<InvestOrdersChild> selectByPid(String pid);

    void insert(InvestOrders order);

    void decSurplusMoney(InvestOrders order);

    void decAccountAmounct(InvestOrders order);

    List<InvestOrdersChild> selectRecodeByPage(String pid, int currentpage);

    void paytoComAccount(InvestOrders order);
}
