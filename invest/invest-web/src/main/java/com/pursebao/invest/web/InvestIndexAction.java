package com.pursebao.invest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InvestIndexAction {
    @RequestMapping(value="/{page}",method = RequestMethod.GET)
    public String toIndex(@PathVariable String page){
        return page;
    }

    @RequestMapping(value="/pages/{pageName}",method = RequestMethod.GET)
    public String forward01(@PathVariable String pageName){
        return "pages/"+pageName;
    }

    @RequestMapping(value = "/pages/{pageName1}/{pageName2}", method = RequestMethod.GET)
    public String forward02(@PathVariable String pageName1, @PathVariable String pageName2) {
        ///pages/echarts/echarts8
        ///WEB-INF/jsp/pages/echarts/echarts8.jsp
        return "pages/" + pageName1 + "/" + pageName2;
    }
}
