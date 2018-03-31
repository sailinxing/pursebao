package com.pursebao.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerIndexAction {

    @RequestMapping(value = "/{page}")
    public String index(@PathVariable String page) {
        System.out.println("=======page========" + page);
        return page;
    }

    @RequestMapping(value = "/pages/{pageName}")
    public String forwardOne(@PathVariable String pageName) {
        System.out.println("=======page========" + "pages/" + pageName);
        return pageName;
    }

    @RequestMapping(value = "/pages/{pageName1}/{pageName2}")
    public String forwardTwo(@PathVariable String pageName1, @PathVariable String pageName2) {
        System.out.println("=======page========" + "pages/" + pageName1 + "/" + pageName2);
        return pageName1 + "/" + pageName2;
    }
}
