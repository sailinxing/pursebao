/*package com.pursebao.user.web;

import com.pursebao.commons.pojo.po.User;
import com.pursebao.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

*//**
 * Created by Administrator on 2018/3/12.
 *//*
@Controller
@RequestMapping("/user")
public class UserAction {
    @Autowired
    private UserService userService;
    @RequestMapping("/index")
    public String toLoanIndex() {

        return "index";
    }


    @RequestMapping("/count")
    public String toCount() {
        userService.countIncreasement();
        return "index";
    }
    @RequestMapping("/countaccount")
    public String toCountAccount() {
        userService.countAccountIncreasement();
        return "index";
    }
}*/
