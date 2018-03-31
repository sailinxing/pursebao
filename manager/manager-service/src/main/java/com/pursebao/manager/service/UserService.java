package com.pursebao.manager.service;


import com.pursebao.commons.pojo.po.Manager;
import com.pursebao.commons.pojo.po.User;

import java.util.List;

/**
 * 客户和员工的业务层接口
 */
public interface UserService {

    // 根据拥有的员工信息查询该员工全部信息
    public Manager selectManagerByManager(Manager manager);

    // 查询全部客户
    public List<User> selectAllUsers();

    // 删除指定用户
    public int deleteUsersById(List<String> ids);

    // 查询指定用户
    public User selectUserByUid(String uid);
}
