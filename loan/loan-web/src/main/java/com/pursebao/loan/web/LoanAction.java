package com.pursebao.loan.web;

import com.pursebao.commons.pojo.po.Companys;
import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.User;
import com.pursebao.commons.pojo.vo.PageBean;
import com.pursebao.loan.pojo.vo.LoanCustomer;
import com.pursebao.loan.pojo.vo.LoanDetail;
import com.pursebao.loan.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.NumberFormat;

/**
 * Created by Administrator on 2018/3/12.
 */
@Controller
@RequestMapping("/loan")
public class LoanAction {
    @Autowired
    private LoanService loanService;
    @RequestMapping("/index")
    public String toLoanIndex() {
        return "index";
    }
    @RequestMapping("/toaddloan")
        public String toLoan() {
        return "addloan";
        }
    /**
     * 填写贷款申请表
     * @param loan
     * @return
     */
    @RequestMapping("/addloan")
    public String addLoan(Loan loan,Companys companys) {
        User user=new User();
        user.setUid("abb");
        int res=loanService.saveLoan(user,loan,companys);
        if(res>0) {
            return "index";
        }else{
            return "addloan";
        }
    }
    /**
     * 查询所有在线贷款信息，未分页
     * @return
     */
 /*   @RequestMapping("/toloanlist")
    public String toLoanlist(Model model,HttpServletRequest request) {
        List<Loan> loanList=loanService.listAllLoan();
        *//*model.addAttribute("loanList",loanList);*//*
        request.setAttribute("loanList",loanList);
        System.out.print(loanList);
        return "loanlist";
    }*/
    /**
     * 查询所有在线贷款信息，分页
     */
    @RequestMapping("/toloanlist")
    public String toLoanlistByPage(Model model,PageBean<Loan> pageBean) {
        System.out.print(pageBean);
        PageBean<Loan> loanPagebean=loanService.listAllLoanByPage(pageBean);
        model.addAttribute("loanPagebean",loanPagebean);
        System.out.print(loanPagebean);
        return "loanlist";
    }

    /**
     * 查询个人历史贷款（在线或离线）列表，未分页
     */
   /*@RequestMapping("/touserloanlist")
    public String toUserLoanlist(Model model,HttpServletRequest request) {
        User user=new User();
        user.setUid("abb");
        List<LoanCustomer> loanUserList=loanService.listUserLoan(user);
        System.out.print(loanUserList);
      *//* model.addAttribute("loanUserList",loanUserList);*//*
       request.setAttribute("loanUserList",loanUserList);
        return "loanuserlist";
    }*/
    @RequestMapping("/touserloanlist")
    public String toUserLoanlistByPage(HttpServletRequest request,PageBean<Loan> pageBean) {
        User user=new User();
        user.setUid("abb");
        PageBean<LoanCustomer> loanUserPagebean=loanService.listUserLoanByPage(user, pageBean);
        System.out.print(loanUserPagebean);
      /* model.addAttribute("loanUserList",loanUserList);*/
        request.setAttribute("loanUserPagebean",loanUserPagebean);
        return "loanuserlist";
    }
    /**
     * 查看贷款详情
     */
    @RequestMapping("/detail")
    public String toLoanDetail(Model model,LoanCustomer loan) {
        LoanDetail loanDetail=loanService.findLoanById(loan);

        //计算付款金额
        Double loanAmount=loanDetail.getLoanAmount();
        Integer loanLimittime=loanDetail.getLoanLimittime();
        Double loanRate=loanDetail.getLoanRate();
        Double money=loanAmount*(loanLimittime*1.0/365)*(1+loanRate/100)*10000;
        NumberFormat NF =NumberFormat.getInstance();
        NF.setGroupingUsed(false);//去掉科学计数法显示
        String repaymoney=NF.format(money).toString();
        int idex=repaymoney.indexOf(".");
        if(idex>0) {
            repaymoney = repaymoney.substring(0, idex + 3);
        }
        model.addAttribute("repaymoney",repaymoney);
        model.addAttribute("loan",loanDetail);
        return "loandetail";
    }
    /**
     * 还贷款处理
     */
    @RequestMapping("/repay")
    public String repayLoan(LoanCustomer loan,Double repaymoney,Model model) {
        System.out.print(loan+","+repaymoney);
        User user=new User();
        user.setUid("abb");
        user.setAccountId("afsafsf");
        int record=loanService.updateLoanStatus(loan,repaymoney,user);
        LoanDetail loanDetail=loanService.findLoanById(loan);
        model.addAttribute("loan",loanDetail);
        if(record>0) {
            String message="您已还款成功！";
            model.addAttribute("message",message);
            return "loandetail";
        }else{
            String message="您还款失败！";
            model.addAttribute("message",message);
            return "loandetail";
        }
    }
    //通过ajax后台计算年化利率
    /**
     * 借款利率10%-24%
     * 1w以下3个月  10%        100w   以下3个月  12%         1000w     以下3个月  13%     以上14%
     * 1w以下6个月  12%        100w   以下6个月  14%         1000w   以下3个月  15%           16%
     * 1w以下12个月  14%       100w   以下12个月  16%         1000w   以下3个月  17%          18%
     * 1w以下24个月  16%       100w   以下24个月  18%         1000w   以下3个月  20%          21%
     * 1w以下60个月  19%       100w   以下60个月  21%         1000w   以下3个月  24%          25%
     * 1w以下60个月以上  23%    100w   以下60个月以上  25%        1000w   以下3个月  28%       30%
     *
     */
    @RequestMapping("/loanrate")
    @ResponseBody
    public String getLoanRate(@RequestParam("loanAmount")String loanamount,@RequestParam("loanLimittime")String loanlimittime){
       if (loanamount!=null&&!loanamount.equals("")&&loanlimittime!=null&&!loanlimittime.equals("") ) {
           Double loanAmount=Double.parseDouble(loanamount);
           Integer loanLimittime=Integer.parseInt(loanlimittime);
            if (loanLimittime <= 3) {
                if (loanAmount <= 1) {
                    return "10";
                } else if (loanAmount <= 100) {
                    return "12";
                } else if (loanAmount <= 1000) {
                    return "13";
                } else if (loanAmount > 1000) {
                    return "14";
                }

            } else if (loanLimittime <= 6) {
                if (loanAmount <= 1) {
                    return "12";
                } else if (loanAmount <= 100) {
                    return "14";
                } else if (loanAmount <= 1000) {
                    return "15";
                } else if (loanAmount > 1000) {
                    return "16";
                }

            } else if (loanLimittime <= 12) {
                if (loanAmount <= 1) {
                    return "14";
                } else if (loanAmount <= 100) {
                    return "16";
                } else if (loanAmount <= 1000) {
                    return "17";
                } else if (loanAmount > 1000) {
                    return "18";
                }

            } else if (loanLimittime <= 24) {
                if (loanAmount <= 1) {
                    return "16";
                } else if (loanAmount <= 100) {
                    return "18";
                } else if (loanAmount <= 1000) {
                    return "20";
                } else if (loanAmount > 1000) {
                    return "21";
                }

            } else if (loanLimittime <= 60) {
                if (loanAmount <= 1) {
                    return "19";
                } else if (loanAmount <= 100) {
                    return "21";
                } else if (loanAmount <= 1000) {
                    return "24";
                } else if (loanAmount > 1000) {
                    return "25";
                }

            } else if (loanLimittime > 60) {
                if (loanAmount <= 1) {
                    return "23";
                } else if (loanAmount <= 100) {
                    return "25";
                } else if (loanAmount <= 1000) {
                    return "28";
                } else if (loanAmount > 1000) {
                    return "30";
                }
            }
                return "32";

       }
            return null;
    }



}
