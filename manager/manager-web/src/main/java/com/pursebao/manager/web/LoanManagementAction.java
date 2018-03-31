package com.pursebao.manager.web;

import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.Products;
import com.pursebao.manager.pojo.vo.LoanDetail;
import com.pursebao.manager.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;

@Controller
@RequestMapping(value = "/loanmanagement")
public class LoanManagementAction {

    @Autowired
    LoanService loanService;

    /**
     * 得到贷款列表数据
     * @param session
     * @param request
     * @return
     */


    /**
     * 得到贷款列表数据
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/loan")
    public String selectLoanlist(Model model) {
        List<LoanDetail> loanList = loanService.listAllLoan();
        model.addAttribute("loanlist", loanList);

        return "/loanManagement/loanlist";
    }

    /**
     * 删除贷款
     *
     * @param ids
     * @return
     */
    @RequestMapping(value = "/delete")
    public String selectLoanlist(@RequestParam("ids[]") List<String> ids) {
        int res = loanService.deleteLoan(ids);
        return "redirect:/loanmanagement/loan";
    }

    /**
     * 审核项目
     */
    @RequestMapping(value = "/tocheck")
    public String toCheck(Model model, @RequestParam("lid") String lid) {
        LoanDetail loanDetail = loanService.findLoanById(lid);
        model.addAttribute("loan", loanDetail);
        return "/loanManagement/check";
    }

    @RequestMapping(value = "/check")
    public String checkLoan(Loan loan) {
        int res = loanService.updatecheckLoan(loan);
        return "redirect:/loanmanagement/loan";
    }

    // 贷款审核被拒绝
    @RequestMapping(value = "/refusecheck")
    public String refuseCheck (@RequestParam("lid") String lid) {
        loanService.refuseLoanCheck(lid);
        return "redirect:/loanmanagement/loan";
    }


    /**
     * 发布产品
     */
    @RequestMapping(value = "/topublish")
    public String toPublish(Model model, @RequestParam("lid") String lid) {
        LoanDetail loanDetail = loanService.findLoanById(lid);
        model.addAttribute("loan", loanDetail);
        return "/loanManagement/publish";
    }

    @RequestMapping(value = "/publish")
    public String publishLoan(Products products) {
        int res = loanService.updatepublishProducts(products);
        return "redirect:/loanmanagement/loan";
    }

    /**
     * 生成合同
     */
    @RequestMapping(value = "/contract")
    public String makeContract(Products products) {
        int res = loanService.makeContract(products);
        return "redirect:/loanmanagement/loan";
    }

}
