package com.pursebao.user.service;


import com.pursebao.user.pojo.vo.UserCustomer;

public interface IAccountService {


    //账户充值
    void accountRecharge(UserCustomer userCustomer);

    //账户提现
    void accountWithdrawals(UserCustomer userCustomer);


}
