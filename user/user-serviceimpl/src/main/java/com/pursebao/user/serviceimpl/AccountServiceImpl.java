package com.pursebao.user.serviceimpl;

import com.pursebao.commons.pojo.po.User;
import com.pursebao.commons.tools.UUIDCreator;
import com.pursebao.user.mapper.AccountCustomerMapper;
import com.pursebao.user.mapper.UserCustomerMapper;
import com.pursebao.user.pojo.vo.UserCustomer;
import com.pursebao.user.service.IAccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements IAccountService{

    @Autowired
    private AccountCustomerMapper accountCustomerMapper;

    @Autowired
    private UserCustomerMapper userCustomerMapper;

    //账户充值
    @Override
    public void accountRecharge(UserCustomer userCustomer) {
        
        //获得表单中的uid accountAmount字段的值
        String uid = userCustomer.getUid();
        double accountAmount1 = userCustomer.getAccountAmount();

        //通过表单获得的uid查询userCustomer对象的所有属性
        UserCustomer userCustomer1 = userCustomerMapper.selectUserById(uid);
        //获得该对象的可用余额
        double accountAmount2 = userCustomer1.getAccountAmount();
        
        //把表单输入的可用余额与数据库中的可用余额相加
        double accountAmount = accountAmount1 + accountAmount2;

        //计算得到的可用余额封装到UserCustomer对象中去
        userCustomer.setAccountAmount(accountAmount);

        //更新account表可用余额字段
        accountCustomerMapper.updateAccountById(userCustomer);

    }


    //账户提现
    @Override
    public void accountWithdrawals(UserCustomer userCustomer) {

        //获得表单中的uid accountAmount字段的值
        String uid = userCustomer.getUid();
        double accountAmount1 = userCustomer.getAccountAmount();

        //通过表单获得的uid查询userCustomer对象的所有属性
        UserCustomer userCustomer1 = userCustomerMapper.selectUserById(uid);
        //获得该对象的可用余额
        double accountAmount2 = userCustomer1.getAccountAmount();

        //把数据库中的可用余额减去表单输入的可用余额
        double accountAmount = accountAmount2 - accountAmount1;

        //计算得到的可用余额封装到UserCustomer对象中去
        userCustomer.setAccountAmount(accountAmount);

        //更新account表可用余额字段
        accountCustomerMapper.updateAccountById(userCustomer);

    }

}
