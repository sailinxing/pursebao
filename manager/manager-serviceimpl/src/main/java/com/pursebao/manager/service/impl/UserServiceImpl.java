package com.pursebao.manager.service.impl;

import com.pursebao.commons.pojo.po.Manager;
import com.pursebao.commons.pojo.po.User;
import com.pursebao.commons.pojo.po.UserExample;
import com.pursebao.manager.dao.ManagerCustomMapper;
import com.pursebao.manager.dao.UserCustomMapper;
import com.pursebao.manager.dao.UserMapper;
import com.pursebao.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    ManagerCustomMapper managerCustomMapper;

    @Autowired
    UserCustomMapper userCustomMapper;

    @Autowired
    UserMapper userMapper;

    @Override
    public Manager selectManagerByManager(Manager manager) {

        return managerCustomMapper.selectManagerByManager(manager);
    }

    @Override
    public List<User> selectAllUsers() {

        return userCustomMapper.selectAllUsers();
    }

    @Override
    public int deleteUsersById(List<String> ids) {

        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUidIn(ids);
        int row = userMapper.deleteByExample(userExample);
        return row;
    }

    @Override
    public User selectUserByUid(String uid) {
        return userMapper.selectByPrimaryKey(uid);
    }

}
