package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.po.User;

public interface UserSelfMapper {

    User selectByPrimaryKey(String uid);


}