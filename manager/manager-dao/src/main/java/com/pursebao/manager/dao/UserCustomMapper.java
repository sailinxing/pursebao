package com.pursebao.manager.dao;


import com.pursebao.commons.pojo.po.User;
import org.springframework.stereotype.Repository;

import java.util.List;
public interface UserCustomMapper {

    // 查询全部客户
    public List<User> selectAllUsers();

}
