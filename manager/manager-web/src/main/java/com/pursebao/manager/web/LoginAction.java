package com.pursebao.manager.web;

import com.pursebao.commons.pojo.po.Manager;
import com.pursebao.commons.pojo.po.User;
import com.pursebao.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/begin")
public class LoginAction {

    @Autowired
    UserService userService;

    @ResponseBody
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(HttpSession session, Manager manager) {

        Manager resultManager = userService.selectManagerByManager(manager);
        session.setAttribute("manager", resultManager);

        List<User> userList = userService.selectAllUsers();
        session.setAttribute("userlist", userList);

        if (resultManager != null) {
            return "success";
        }
        return "fail";
    }
}
