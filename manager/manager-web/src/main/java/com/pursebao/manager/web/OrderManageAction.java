package com.pursebao.manager.web;

import com.pursebao.manager.pojo.vo.InvestOrdersChild;
import com.pursebao.manager.service.InvestManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "/investorder")
public class OrderManageAction {
    @Autowired
    private InvestManageService investManageService;


    @RequestMapping(value = "/orderlist",method = RequestMethod.GET)
    public String orderList(Model model){
        List<InvestOrdersChild> orderlist = investManageService.findOrders();
        model.addAttribute("orderlist",orderlist);
        return "investManagement/investorders";
    }

    @ResponseBody
    @RequestMapping(value="/orderdelete",method = RequestMethod.POST)
    public String orderDelete(@RequestParam("ids[]")List<String> ids){
        for(String id :ids){
            investManageService.deleteOrderByOid(id);
        }
        return "success";
    }



}
