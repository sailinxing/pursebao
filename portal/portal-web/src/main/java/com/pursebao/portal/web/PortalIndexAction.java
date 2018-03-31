package com.pursebao.portal.web;

import com.pursebao.commons.pojo.po.Content;
import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.portal.pojo.vo.ProductCustomer;
import com.pursebao.portal.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/portal")
public class PortalIndexAction {
    @Autowired
    private ContentService contentService;
    @RequestMapping("/index")
    public String index(Model model) {
        //调用业务逻辑层方法查询首页轮播图
        //1、注入service
        //2、调用方法
        //3、创建service实现类（三步：先去redis集群中查询，若有，直接返回，若没有，先去mysql查，存入redis缓存）
        String cid="index1";
        List<Content> contentList=contentService.listContentByCId(cid);
        List<Loan> loanList=contentService.listLoanContent(0,2);
        ProductCustomer newProduct=contentService.findProductWithRate();
        ProductCustomer expProduct=contentService.findProductWithTime();
        model.addAttribute("newProduct",newProduct);
        model.addAttribute("expProduct",expProduct);
        model.addAttribute("loanList",loanList);
        model.addAttribute("contentList",contentList);
        return "index";
    }

}
