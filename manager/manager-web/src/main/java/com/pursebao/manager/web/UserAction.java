package com.pursebao.manager.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2018/3/12.
 */
@Controller
public class UserAction {

    @RequestMapping(value = "/{page}", method = RequestMethod.GET)
    public String index(@PathVariable String page) {
        return page;
    }

    @RequestMapping(value = "/pages/{pageName}", method = RequestMethod.GET)
    public String forwardOne(@PathVariable String pageName) {
        ///WEB-INF/jsp/pages/welcome.jsp
        return "pages/" + pageName;
    }

    @RequestMapping(value = "/pages/{pageName1}/{pageName2}", method = RequestMethod.GET)
    public String forwardTwo(@PathVariable String pageName1, @PathVariable String pageName2) {
        ///pages/echarts/echarts8
        ///WEB-INF/jsp/pages/echarts/echarts8.jsp
        return "pages/" + pageName1 + "/" + pageName2;
    }
}
