package com.pursebao.manager.dao;

import com.pursebao.commons.pojo.po.Manager;

public interface ManagerCustomMapper {

    // 根据拥有的用户信息查询该用户全部信息
    public Manager selectManagerByManager(Manager manager);
}