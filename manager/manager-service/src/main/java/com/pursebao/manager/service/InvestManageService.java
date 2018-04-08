package com.pursebao.manager.service;


import com.pursebao.commons.pojo.po.Account;
import com.pursebao.commons.pojo.po.ComAccount;
import com.pursebao.manager.pojo.dto.MXDPageBean;
import com.pursebao.manager.pojo.vo.InvestOrdersChild;
import com.pursebao.manager.pojo.vo.ProductChild;

import java.util.List;

public interface InvestManageService {

    /**
     * 后台查询所有投资产品
     */
    List<ProductChild> selectProducts(MXDPageBean pagebean);

    /**
     * 删除投资产品
     * @param pid
     */
    void deleteProductById(String pid);

    /**
     * 查询单个产品信息，回显编辑页面
     * @param pid
     * @return
     */
    ProductChild selectProductByPid(String pid);

    /**
     * 更新投资产品信息
     * @param editproduct
     */
    void updateProductById(ProductChild editproduct);

    /**
     * 更新借款期限、还款方式
     * @param editproduct
     */
    void updateLoanByFk(ProductChild editproduct);

    /**
     * 查询所有未删除订单
     * @return
     */
    List<InvestOrdersChild> findOrders();

    /**
     * 删除订单
     * @param id
     */
    void deleteOrderByOid(String id);

    //扣除平台账户资金
    void pushMoney(ComAccount comAccount);

    //下线投资产品
    void unline(String pid);

    //给借款公司法人账户发放资金
    void pushMoneyToAccount(Account account);

    //修改产品上下线状态
    void updateProductStatus(ProductChild productChild);

    //查询所有上线投资产品的数量
    int getCountbnumber();

    //按条件查询所有上线产品信息
    List<ProductChild> selectProductsByCondition(MXDPageBean pagebean);

    //按条件查询所有上线产品总数
    int getCountbnumberByCondition(MXDPageBean pagebean);
}
