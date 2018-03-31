package com.pursebao.manager.service.impl;

import com.pursebao.commons.pojo.po.Account;
import com.pursebao.commons.pojo.po.ComAccount;
import com.pursebao.manager.dao.*;


import com.pursebao.manager.pojo.vo.InvestOrdersChild;
import com.pursebao.manager.pojo.vo.ProductChild;
import com.pursebao.manager.service.InvestManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class InvestManageServiceImpl implements InvestManageService {
    @Autowired
    private ProductsSelfMapper pdao;
    @Autowired
    private LoanSelfMapper ldao;
    @Autowired
    private InvestOrdersSelfMapper odao;
    @Autowired
    private ComAccountSelfMapper cdao;
    @Autowired
    private AccountSelfMapper adao;

    /**
     * 后台查询所有投资产品
     * @return
     */
    @Override
    public List<ProductChild> selectProducts() {
        List<ProductChild> productChildrenList = pdao.selectProducts();
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
        for (ProductChild productChild:productChildrenList){
            productChild.setStrRepaymentDate(sim.format(productChild.getRepaymentDate()));
        }
        return productChildrenList;
    }

    /**
     * 删除投资产品
     * @param pid
     */
    @Override
    public void deleteProductById(String pid) {
        pdao.deleteProductById(pid);
    }

    /**
     * 查询单个产品信息，回显编辑页面
     * @param pid
     * @return
     */
    @Override
    public ProductChild selectProductByPid(String pid) {
        return pdao.selectProductByPid(pid);
    }

    /**
     * 更新投资产品信息
     * @param editproduct
     */
    public void updateProductById(ProductChild editproduct){
        pdao.updateProductById(editproduct);
    }

    public void updateLoanByFk(ProductChild editproduct){
        ldao.updateLoanByFK(editproduct);
    }

    /**
     * 查询所有订单信息
     */
    public List<InvestOrdersChild> findOrders(){
        List<InvestOrdersChild> orderlist = odao.findOrders();
        SimpleDateFormat simp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for(InvestOrdersChild investOrder : orderlist){
            investOrder.setStrInvestDate(simp.format(investOrder.getInvestDate()));
        }
        return orderlist;
    }

    /**
     * 删除订单
     * @param id
     */
    @Override
    public void deleteOrderByOid(String id) {
        odao.deleteOrderByOid(id);
    }

    //扣除平台账户资金
    @Override
    public void pushMoney(ComAccount comAccount) {
        cdao.updateComAmount(comAccount);
    }
    //产品下线
    @Override
    public void unline(String pid) {
        pdao.updateProductLine(pid);
    }
    //给贷款企业法人账户发放资金
    @Override
    public void pushMoneyToAccount(Account account) {
        adao.updateAmount(account);
    }


}
