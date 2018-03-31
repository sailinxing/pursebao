package com.pursebao.manager.dao;




import com.pursebao.commons.pojo.po.Account;

public interface AccountSelfMapper extends AccountMapper{


    void updateAmount(Account account);
}
