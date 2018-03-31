package com.pursebao.user.service;

import com.pursebao.commons.pojo.po.User;

import java.util.List;

/**
 * Created by Administrator on 2018/3/13.
 */
public interface UserService {
    List<User> listUser();
    void countIncreasement();
    void countAccountIncreasement();
}
