package com.pursebao.manager.web;

import com.pursebao.commons.pojo.po.User;
import com.pursebao.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/usermanagement")
public class UserManagementAction {

    @Autowired
    UserService userService;

    @ResponseBody
    @RequestMapping(value = "/delete")
    public String deleteUsers(Model model, @RequestParam("ids[]") List<String> ids) {

        int result = userService.deleteUsersById(ids);

        List<User> userList = userService.selectAllUsers();
        model.addAttribute("userlist", userList);

        if (result > 0) {
            return "success";
        } else {
            return "fail";
        }

    }

    @RequestMapping(value = "/update")
    public void updateUser(@RequestParam("idStr") String idStr) {


    }
}
