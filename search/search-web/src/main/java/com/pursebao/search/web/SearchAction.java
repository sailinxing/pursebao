package com.pursebao.search.web;

import com.pursebao.commons.pojo.vo.PageBean;
import com.pursebao.commons.tools.PropKit;
import com.pursebao.search.pojo.vo.SearchProduct;
import com.pursebao.search.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Administrator on 2018/3/31.
 */
@Controller
public class SearchAction{

    @Autowired
    private SearchService searchService;



    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String search(String keyword, @RequestParam(defaultValue = "1") Integer currentPage, Model model){
        System.out.println(keyword);
        //currentPage当前页的页码
        //currentCount每页显示的条数
        Integer currentCount = PropKit.use("page.properties").getInt("search.currentCount");
        //调用业务逻辑层方法
        PageBean<SearchProduct> searchPageBean= searchService.searchIndex(keyword,currentPage,currentCount);
        //回显，缺少几个分页的回显内容
        model.addAttribute("searchPageBean",searchPageBean);
        model.addAttribute("keyword",keyword);
        //转发
        return "searchlist";
    }

}
