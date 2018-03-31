package com.pursebao.user.mapper;


import com.pursebao.commons.pojo.po.User;
import com.pursebao.user.pojo.vo.UserCustomer;


public interface AccountCustomerMapper {
   //更新account表可用余额字段
    void updateAccountById(UserCustomer userCustomer);

}
