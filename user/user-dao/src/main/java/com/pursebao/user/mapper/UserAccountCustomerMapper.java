package com.pursebao.user.mapper;


import com.pursebao.user.pojo.vo.AccountUserCustomer;

import java.util.List;

public interface UserAccountCustomerMapper {
    List<AccountUserCustomer> selectAllAccountUser(String aid);
    List<AccountUserCustomer> selectAllOnlineAccountUser(String aid);
}