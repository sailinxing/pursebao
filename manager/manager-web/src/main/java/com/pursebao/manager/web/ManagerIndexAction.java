package com.pursebao.manager.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerIndexAction {

    @RequestMapping(value = "/{page}")
    public String index(@PathVariable String page) {
        return page;
    }

    @RequestMapping(value = "/pages/{pageName}")
    public String forwardOne(@PathVariable String pageName) {
        return pageName;
    }

    @RequestMapping(value = "/pages/{pageName1}/{pageName2}")
    public String forwardTwo(@PathVariable String pageName1, @PathVariable String pageName2) {
        return pageName1 + "/" + pageName2;
    }
}
