package com.pursebao.invest.service.impl;

import com.pursebao.commons.tools.UUIDCreator;
import com.pursebao.invest.dao.*;
import com.pursebao.invest.pojo.dto.PageBean;
import com.pursebao.invest.pojo.po.ComAccount;
import com.pursebao.invest.pojo.po.Invest;
import com.pursebao.invest.pojo.po.InvestOrders;
import com.pursebao.invest.pojo.vo.InvestOrdersChild;
import com.pursebao.invest.pojo.vo.ProductChild;
import com.pursebao.invest.service.InvestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class InvestServiceImpl implements InvestService {
    @Autowired
    private ProductsSelfMapper productsdao;
    @Autowired
    private InvestOrdersSelfMapper orderdao;
    @Autowired
    private AccountSelfMapper accountdao;
    @Autowired
    private InvestMapper investdao;
    @Autowired
    private ComAccountSelfMapper comaccountdao;

    @Override
    public List<ProductChild> listInvests(PageBean pagebean) {


        return productsdao.listInvestBypage(pagebean);
    }

    @Override
    public int countNumber() {
        return productsdao.countNumber();
    }

    @Override
    public int countNumber(String pid) {
        return orderdao.countNumber(pid);
    }

    //查询单个产品所有信息
    @Override
    public ProductChild selectInvestById(String pid) {
        ProductChild findProductChild = productsdao.selectInvestById(pid);
        //格式化审核、发布、还款日期
        SimpleDateFormat simp = new SimpleDateFormat("yyyy-MM-dd");
        //格式化审核日期
        findProductChild.setStrCheackDate(simp.format(findProductChild.getLoanChildInfo().getProductChecked()));
        //格式化发布日期
        findProductChild.setStrPublishDate(simp.format(findProductChild.getLoanChildInfo().getProductPublish()));
        //格式化还款日期
        findProductChild.setStrRepaymentDate(simp.format(findProductChild.getRepaymentDate()));

        return findProductChild;
    }

    @Override
    public List<InvestOrdersChild> selectByPid(String pid) {
        List<InvestOrdersChild> investOrdersChildren = orderdao.selectByPid(pid);
        //格式化投资时间日期
        SimpleDateFormat simp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for(InvestOrdersChild investOrder : investOrdersChildren){
            investOrder.setStrInvestDate(simp.format(investOrder.getInvestDate()));
        }
        return investOrdersChildren;
    }

    @Override
    public void insert(InvestOrders order) {
        //添加订单、
        String oid = UUIDCreator.createUUID();
        order.setOid(oid);
        order.setOrderStatus(1);
        order.setInvestDate(new Date());
        orderdao.insert(order);
        //添加日收益和预期总收益
        ProductChild productChild = selectInvestById(order.getInvestPid());
        Double dailyIncreaseMoney = order.getInvestMoney()*productChild.getExpectedRate()/365;
        Double expectIncrease = dailyIncreaseMoney*productChild.getLoanChildInfo().getLoanLimittime();
        Invest invest = new Invest();
        invest.setInvestId(UUIDCreator.createUUID());
        invest.setInvestOid(oid);
        invest.setDailyIncrease(dailyIncreaseMoney);
        invest.setCurrentIncrease(0.0);
        invest.setExpectedIncrease(expectIncrease);
        invest.setInvestStatus(0);
        investdao.insert(invest);

        //修改该产品剩余可投

    }

    //支付完成后，减少产品剩余可投金额
    @Override
    public void decSurplusMoney(InvestOrders order) {
        ProductChild productChild = selectInvestById(order.getInvestPid());
        productsdao.decSurplusMoney(order);
        //当完成最后一笔投资后，设定该产品的还款日期
        double investMoney = order.getInvestMoney();
        double surplusMoney = productChild.getSurplusMoney();

        if(investMoney==surplusMoney){
            int limitDate = productChild.getLoanChildInfo().getLoanLimittime();
            Date date = new Date();
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.DATE,limitDate);
            Date repaymentDate = calendar.getTime();
            productChild.setRepaymentDate(repaymentDate);
            productsdao.updateRepaymentDate(productChild);

        }
    }

    //支付完成后，扣除投资者账户余额
    @Override
    public void decAccountAmounct(InvestOrders order) {
        accountdao.decAccountAmounct(order);
    }

    //分页查询单个产品，投资记录
    @Override
    public List<InvestOrdersChild> selectRecodeByPage(String pid, int currentpage) {
       PageBean pagebean = new PageBean();
       pagebean.setCurrentpage(currentpage);
       pagebean.setPagesize(5);

        Map<String,Object> map = new HashMap<>();
        map.put("pid",pid);
        map.put("pagebean",pagebean);
        List<InvestOrdersChild> list = orderdao.selectRecodeByPage(map);
        //格式化投资时间日期
        SimpleDateFormat simp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for(InvestOrdersChild investOrder : list){
            investOrder.setStrInvestDate(simp.format(investOrder.getInvestDate()));
        }
        return list;
    }
    //将投资资金转发到平台账户
    @Override
    public void paytoComAccount(InvestOrders order) {
        ComAccount comAccount = new ComAccount();
        comAccount.setCid("02");
        comAccount.setComAmount(order.getInvestMoney());
        comaccountdao.updateComAmount(comAccount);
    }

}
