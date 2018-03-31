package com.pursebao.manager.web;

import com.pursebao.commons.pojo.po.Account;
import com.pursebao.commons.pojo.po.ComAccount;
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
    public String getProducts(Model model){
        List<ProductChild> productChildList = investManageService.selectProducts();
        model.addAttribute("productChildList",productChildList);
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

        System.out.println(editproduct.getLoanChildInfo().getLoanPayway());
        System.out.println(editproduct.getLoanChildInfo().getLoanLimittime());
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

}
