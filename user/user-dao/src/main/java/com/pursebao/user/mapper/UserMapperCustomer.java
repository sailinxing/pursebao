package com.pursebao.user.mapper;

import com.pursebao.commons.pojo.po.User;
import com.pursebao.commons.pojo.po.UserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapperCustomer {
    List<User> selectUserList();


}