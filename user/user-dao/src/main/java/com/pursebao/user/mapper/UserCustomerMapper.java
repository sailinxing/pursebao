package com.pursebao.user.mapper;


import com.pursebao.commons.pojo.po.User;
import com.pursebao.user.pojo.vo.UserCustomer;

public interface UserCustomerMapper {

    //通过用户名查询用户信息
    User selectByName(User user);

    //通过手机号查询用户信息
    User selectByPhone(User user);

    //通过uid查询userCustomer信息(暂时不要)
    //UserCustomer selectUserCustomerById(String uid);

    //user关联查询account，通过uid查询user
    UserCustomer selectUserById(String uid);

    //通过uid更新用户信息
    void updatePerInformation(UserCustomer userCustomer);

    //通过uid修改登录密码
    void updateLoginPassword(UserCustomer userCustomer);
}
