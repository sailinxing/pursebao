package com.pursebao.user.web;
import com.pursebao.user.pojo.vo.UserCustomer;
import com.pursebao.user.service.IAccountService;
import com.pursebao.user.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/account")
public class AccountWeb {

    @Autowired
    private IAccountService iAccountService;

    @Autowired
    private IUserService iUserService;


    //转发器,直接登录到账户首页
    @RequestMapping(value = "/account.do")
    public String userAccount(){

        return "account/account";
    }

    //转发器,直接登录到资金明细页面
    @RequestMapping(value = "/moneyList.do")
    public String moneyList(){

        return "account/moneyList";
    }

    //转发器,直接登录到回款明细页面
    @RequestMapping(value = "payment.do")
    public String payment(){

        return "account/payment";
    }

    //转发器,直接登录到账单明细页面
    @RequestMapping(value = "bill.do")
    public String bill(){

        return "account/bill";
    }

    //转发器,直接跳转到账户与安全页面
    @RequestMapping(value = "/accInformation.do")
    public String accInformation(){
        return "account/accInformation";
    }

    //转发器,直接跳转到我的红包页面
    @RequestMapping(value = "/myWallet.do")
    public String myWallet(){
         return "account/myWallet";
    }

    //转发器,直接跳转到个人信息页面
    @RequestMapping(value = "/perInformation.do")
    public String perInformation(){
        return "account/perInformation";
    }

    //转发器,直接跳转到充值页面
    @RequestMapping(value = "/recharge.do")
    public String toRecharge(){
        return "account/recharge";
    }

    //转发器，直接跳转到提现页面
    @RequestMapping(value = "withdrawals.do")
    public String toWithdrawals(){

        return "account/withdrawals";
    }




    //账户充值
    @RequestMapping(value = "/rechargeSuccess.do")
    public String recharge(UserCustomer userCustomer){
        String uid = userCustomer.getUid();
        String aid = userCustomer.getAid();
        double accountAmount1 = userCustomer.getAccountAmount();
        System.out.println("uid="+uid+"======================="+"aid="+aid+"accountAmount1="+accountAmount1);

        //调用service层账户充值接口
        iAccountService.accountRecharge(userCustomer);

        return "account/rechargeSuccess";
    }


    //账户提现
    @RequestMapping(value = "/withdrawalsSuccess.do")
    public String withdrawals(UserCustomer userCustomer){
        String uid = userCustomer.getUid();
        String aid = userCustomer.getAid();
        double accountAmount1 = userCustomer.getAccountAmount();
        System.out.println("uid="+uid+"======================="+"aid="+aid+"accountAmount1="+accountAmount1);

        //调用service层账户提现接口
        iAccountService.accountWithdrawals(userCustomer);

        return "account/withdrawalsSuccess";

    }




    //充值完毕后，重新查询数据库数据后再跳转到账户首页页面
    @RequestMapping(value = "/selectUserCustomer.do")
    public String selectUserCustomer(HttpSession session){

        UserCustomer userCustomer = (UserCustomer) session.getAttribute("sessionUserAccount");
        String uid = userCustomer.getUid();
        UserCustomer selectUser = iUserService.selectUserById(uid);
        session.setAttribute("sessionUserAccount",selectUser);

       return "redirect:/account/account.do";
    }

}
