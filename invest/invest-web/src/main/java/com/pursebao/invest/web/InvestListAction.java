package com.pursebao.invest.web;

import com.pursebao.invest.pojo.dto.PageBean;
import com.pursebao.invest.pojo.po.InvestOrders;
import com.pursebao.invest.pojo.vo.InvestOrdersChild;
import com.pursebao.invest.pojo.vo.ProductChild;
import com.pursebao.invest.service.InvestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/invest")
public class InvestListAction {
   @Autowired
   private InvestService iservice;

    /**
     * 跳转到投资列表首页
     * @param
     * @param
     * @return
     */
    @RequestMapping(value="/investlist",method = RequestMethod.GET)
    public String listInvest(){
        return "pages/list";
    }

    /**
     * 获取投资产品详情
     * 获取单个产品的投资记录
     * @param pid
     * @param model
     * @return
     */
    @RequestMapping(value="/investdetail/{pid}",method = RequestMethod.GET)
    public String investDetail(@PathVariable(value="pid")String pid, Model model){
        ProductChild findproduct = iservice.selectInvestById(pid);
        model.addAttribute("findproduct",findproduct);

        List<InvestOrdersChild> investList = iservice.selectByPid(pid);
        model.addAttribute("investList",investList);

        return "pages/investdetail";
    }

    @ResponseBody
    @RequestMapping(value = "/getrecode",method = RequestMethod.POST)
    public List<InvestOrdersChild> investRecode(String pid,int currentpage){
        List<InvestOrdersChild> list = iservice.selectRecodeByPage(pid,currentpage);
        return list;
    }

    /**
     * 分页查询投资产品
     * @param currentpage
     * @param pagesize
     * @param session
     * @return PageBean（包含分页信息和分页查询数据）
     */
    @ResponseBody
    @RequestMapping(value="/investlist2",method = RequestMethod.GET)
    public PageBean listInvest2(@RequestParam(defaultValue = "1")int currentpage,@RequestParam(defaultValue = "10") int pagesize, HttpSession session){
        List<ProductChild> productsList =new ArrayList<>();
        PageBean pagebean = new PageBean();
        try{

            //System.out.println(currentpage);

            int countnumber = iservice.countNumber();
            int totalpage = (int) Math.ceil(countnumber/(pagesize*1.0));

            pagebean.setCurrentpage(currentpage);
            pagebean.setPagesize(pagesize);
            pagebean.setCountnumber(countnumber);
            pagebean.setTotalpage(totalpage);

            productsList = iservice.listInvests(pagebean);
            pagebean.setPagedata(productsList);

        }catch (Exception e){
            e.printStackTrace();
        }
        return pagebean;
    }

    @ResponseBody
    @RequestMapping(value = "/getcount",method = RequestMethod.GET)
    public int getCount(String pid){
        int countnumber = iservice.countNumber(pid);
        //System.out.println(countnumber);
        return countnumber;
    }

    /**
     * 查询需要支付的产品信息，跳转到支付页面
     * @param investMoney
     * @param pid
     * @param model
     * @return
     */
    @RequestMapping(value = "/investorder/{amount}/{pid}",method = RequestMethod.GET)
    public String topay(@PathVariable(value = "amount")double investMoney, @PathVariable(value = "pid")String pid, Model model){
        model.addAttribute("investMoney",investMoney);
        ProductChild findproduct = iservice.selectInvestById(pid);
        model.addAttribute("findproduct",findproduct);
        return "pages/investpay";
    }

    /**
     * 确认支付，扣除账户余额，减少产品剩余可投,将资金转到平台账户
     * @param order
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/gopay",method = RequestMethod.POST)
    public String pay(InvestOrders order){
        iservice.insert(order);
        iservice.paytoComAccount(order);
        iservice.decSurplusMoney(order);
        iservice.decAccountAmounct(order);
        return "1";
    }
}
