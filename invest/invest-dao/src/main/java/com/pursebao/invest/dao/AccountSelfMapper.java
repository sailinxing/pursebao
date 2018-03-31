package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.InvestOrders;

public interface AccountSelfMapper extends AccountMapper{
    /**
     * 支付成功后，扣除账户余额
     */
    void decAccountAmounct(InvestOrders order);
}
