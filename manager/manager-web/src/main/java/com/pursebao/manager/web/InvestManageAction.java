package com.pursebao.manager.web;

import com.pursebao.commons.pojo.po.Account;
import com.pursebao.commons.pojo.po.ComAccount;
import com.pursebao.manager.pojo.dto.MXDPageBean;
import com.pursebao.manager.pojo.vo.ProductChild;
import com.pursebao.manager.service.InvestManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/investmanage",method = RequestMethod.GET)
public class InvestManageAction {
    @Autowired
    private InvestManageService investManageService;

    //所有投资产品展示
    @RequestMapping(value = "/productsmanage",method = RequestMethod.GET)
    public String getProducts(@RequestParam(defaultValue = "1")int currentpage,@RequestParam(defaultValue = "10") int pagesize, String condition, Model model){

        //封装一个pagebean，包含所有分页信息和查询后数据
        MXDPageBean pagebean = new MXDPageBean();
        pagebean.setCurrentpage(currentpage);
        pagebean.setPagesize(pagesize);

        List<ProductChild> productChildList = null;
        //如果搜索栏没带条件
        if (condition==null || condition ==""){
            //查询所有投资产品信息
            productChildList = investManageService.selectProducts(pagebean);
            //查询所有未删除的产品的总数
            int countnumber = investManageService.getCountbnumber();
            //将产品数据集合和产品总数封装到pagebean
            pagebean.setCountnumber(countnumber);
            pagebean.setPagedata(productChildList);
        }else{
            pagebean.setCondition(condition);
            //如果搜索栏带条件,按条件查询产品信息
            productChildList = investManageService.selectProductsByCondition(pagebean);
            //查询满足条件的产品总数
            int countnumber = investManageService.getCountbnumberByCondition(pagebean);
            //将产品数据集合和产品总数封装到pagebean
            pagebean.setCountnumber(countnumber);
            pagebean.setPagedata(productChildList);

        }
        //将pagebean存到request域
        model.addAttribute("pagebean",pagebean);

        return "investManagement/investproducts";
    }

    //删除产品
    @ResponseBody
    @RequestMapping(value="/deleteproduct",method = RequestMethod.POST)
    public String deleteProducts(@RequestParam("ids[]")List<String> ids){

        for (String pid : ids){
            investManageService.deleteProductById(pid);
        }
        return "success";
    }

    //获得单个产品信息，回显编辑页面
    @RequestMapping(value = "/productinfo/{pid}",method = RequestMethod.POST)
    public String getProductInfo(@PathVariable String pid , Model model){
        ProductChild singleProduct = investManageService.selectProductByPid(pid);
        model.addAttribute("singleProduct",singleProduct);
        return "investManagement/productsedit";
    }

    //修改投资产品信息
    @ResponseBody
    @RequestMapping(value = "/productedit",method = RequestMethod.POST)
    public String editProduct(ProductChild editproduct){
        investManageService.updateProductById(editproduct);
        investManageService.updateLoanByFk(editproduct);

       /* System.out.println(editproduct.getLoanChildInfo().getLoanPayway());
        System.out.println(editproduct.getLoanChildInfo().getLoanLimittime());*/
        return "200";
    }

    //给贷款企业放款，放款成功,扣除平台账户资金，下架理财产品
    @ResponseBody
    @RequestMapping(value="/pushmoney",method = RequestMethod.POST)
    public String pushMoneyToCompany(String pid){
        ProductChild productChild = investManageService.selectProductByPid(pid);
        String aid = productChild.getLoanChildInfo().getUserChildInfo().getAccountId();

        Double surplusMoney = productChild.getSurplusMoney();
        Double loanAmount = productChild.getLoanChildInfo().getLoanAmount();
        Double pushMoney = loanAmount-surplusMoney;
        //给贷款企业法人账户放款
        Account account = new Account();
        account.setAid(aid);
        account.setAccountAmount(pushMoney);
        investManageService.pushMoneyToAccount(account);
        //扣除平台账户资金
        ComAccount comAccount = new ComAccount();
        comAccount.setCid("02");
        comAccount.setComAmount(pushMoney);
        investManageService.pushMoney(comAccount);
        //放款完成，删除产品
        investManageService.deleteProductById(pid);

        return "200";
    }

    //修改产品上下线状态
    @ResponseBody
    @RequestMapping(value = "/changeonline",method = RequestMethod.POST)
    public String changeOnline(ProductChild productChild){
        investManageService.updateProductStatus(productChild);

        return "200";
    }

}
