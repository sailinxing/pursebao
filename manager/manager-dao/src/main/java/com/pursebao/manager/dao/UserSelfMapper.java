package com.pursebao.manager.dao;


import com.pursebao.commons.pojo.po.User;

public interface UserSelfMapper {

    User selectByPrimaryKey(String uid);


}