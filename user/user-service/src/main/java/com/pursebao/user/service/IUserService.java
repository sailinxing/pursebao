package com.pursebao.user.service;

import com.pursebao.commons.pojo.po.User;
import com.pursebao.user.pojo.vo.UserCustomer;


public interface IUserService {


    //通过用户名查询用户信息
    User selectByName(User user);

    //通过手机号查询用户信息
    User selectByPhone(User user);

    //通过uid查询userCustomer信息
    UserCustomer selectUserCustomerById(String uid);

    //user关联查询account，通过uid查询user
    UserCustomer selectUserById(String uid);

    //用户注册
    void insertUser(User user);

    //通过uid更新用户信息
    void updatePerInformation(UserCustomer userCustomer);

    //通过uid更改登录密码
    void updateLoginPassword(UserCustomer userCustomer);

}
