package com.pursebao.manager.web;

import com.pursebao.manager.pojo.vo.ResultObject;
import com.pursebao.manager.service.SearchProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2018/3/30.
 */
@Controller
public class SerachProductAction {
    @Autowired
    private SearchProductService searchProductService;

/*    @ResponseBody*/
    @RequestMapping(value = "/product/import")
    public String importIndex(){
        searchProductService.importIndex();
        /*return searchProductService.importIndex();*/
        return "/loanManagement/loanlist";
    }
}
