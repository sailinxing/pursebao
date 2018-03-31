package com.pursebao.loan.serviceimpl;

import com.pursebao.commons.pojo.po.*;
import com.pursebao.commons.pojo.vo.PageBean;
import com.pursebao.commons.tools.UUIDCreator;
import com.pursebao.loan.mapper.*;
import com.pursebao.loan.pojo.vo.LoanCustomer;
import com.pursebao.loan.pojo.vo.LoanDetail;
import com.pursebao.loan.service.LoanService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Administrator on 2018/3/13.
 */
@Service
public class LoanServiceImpl implements LoanService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private LoanMapper loanMapper;
    @Autowired
    private LoanCustomerMapper loanCustomerMapper;
    @Autowired
    private CompanysMapper companysMapper;
    @Autowired
    private LoanStatusMapper loanStatusMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private AccountMapper accountMapper;

    @Override
    public List<Loan> listAllLoan() {
        List<Loan> loanList=null;
        try{
            loanList=loanCustomerMapper.selectAllLoan();
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return loanList;
    }
//查询借款详情
    @Override
    public LoanDetail findLoanById(LoanCustomer loan) {
        LoanDetail loanDetail=null;
        try{
            loanDetail=loanCustomerMapper.selectLoanById(loan.getLid());
            SimpleDateFormat sdformat=new SimpleDateFormat("yyyy-MM-dd");
            if(loanDetail.getLoanGettime()!=null) {
                Date loanGettime = loanDetail.getLoanGettime();
                if(loanDetail.getLoanLimittime()!=null){
                    int loanLimittime=loanDetail.getLoanLimittime();
                    Date loanOvertime=this.countOvertime(loanGettime, loanLimittime);
                    loanDetail.setLoanOvertimeStr(sdformat.format(loanOvertime));
                }
            }
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return loanDetail;
    }
    //保存Loan
    @Override
    public int saveLoan(User user,Loan loan, Companys companys) {
       //封装loan对象
        loan.setUserId(user.getUid());
        String lid=UUIDCreator.createUUID();
        loan.setLid(lid);
        loan.setLoanLimittime(loan.getLoanLimittime()*30);
        loan.setLoanOnline(1);
        loan.setLoanBegintime(new Date());
        int res=0;
        //封装companys对象
        if(companys!=null){
            String cid=UUIDCreator.createUUID();
            companys.setCid(cid);
            //更改User的公司信息
            user.setCompanyId(cid);
            UserExample userexample=new UserExample();
            UserExample.Criteria uc=userexample.createCriteria();
            uc.andUidEqualTo(user.getUid());
            try{
                res=userMapper.updateByExampleSelective(user,userexample);
            }
            catch(Exception e){
                logger.debug(e.getMessage(), e);
            }
            try{
            res=companysMapper.insertSelective(companys);
            }
            catch(Exception e){
                logger.debug(e.getMessage(), e);
            }
        }
        try{
            res=loanMapper.insertSelective(loan);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return res;
    }

    @Override
    public List<LoanCustomer> listUserLoan(User user) {
        List<LoanCustomer> loanList=null;
        try{
            loanList=loanCustomerMapper.selectUserLoan(user);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return loanList;
    }

    @Override
    public PageBean<LoanCustomer> listUserLoanByPage(User user, PageBean<Loan> pageBean) {
        Integer currentCount = 10;
        Integer currentPage=1;
        if(pageBean!=null){
            if(null!=pageBean.getCurrentPage()) {
                currentPage = pageBean.getCurrentPage();
            }
        }
        Integer pageIndex = (currentPage- 1) * currentCount;
        List<LoanCustomer> loanList=null;
        int totalCount=0;
        try{
            loanList=loanCustomerMapper.selectUserLoanByPage(user, pageIndex, currentCount);
            totalCount=loanCustomerMapper.countUserLoanByPage(user);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        // 封装返回对象
        PageBean<LoanCustomer> findPageBean = new PageBean<>();
        double totalPageDouble = Math.ceil(totalCount * 1.0 / currentCount);
        Integer totalPage = (int) totalPageDouble;
        findPageBean.setCurrentCount(currentCount);
        findPageBean.setCurrentPage(currentPage);
        findPageBean.setPageData(loanList);
        findPageBean.setTotalCount(totalCount);
        findPageBean.setTotalPage(totalPage);
        return findPageBean;

    }

    @Override
    public PageBean<Loan> listAllLoanByPage(PageBean<Loan> pageBean) {
        Integer currentCount = 10;
        Integer currentPage=1;
        if(pageBean!=null){
            if(null!=pageBean.getCurrentPage()) {
                currentPage = pageBean.getCurrentPage();
            }
        }
        Integer pageIndex = (currentPage- 1) * currentCount;
        List<Loan> loanList=null;
        int totalCount=0;
        try{
            loanList=loanCustomerMapper.selectAllLoanByPage(pageIndex,currentCount);
            totalCount=loanCustomerMapper.countAllLoanByPage();
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
            // 封装返回对象
            PageBean<Loan> findPageBean = new PageBean<>();
            double totalPageDouble = Math.ceil(totalCount * 1.0 / currentCount);
            Integer totalPage = (int) totalPageDouble;
            findPageBean.setCurrentCount(currentCount);
            findPageBean.setCurrentPage(currentPage);
            findPageBean.setPageData(loanList);
            findPageBean.setTotalCount(totalCount);
            findPageBean.setTotalPage(totalPage);
            return findPageBean;
    }

    @Override
    public int updateLoanStatus(LoanCustomer loan, Double repaymoney,User user) {
        LoanStatus lsrecord=new LoanStatus();
        lsrecord.setRepaymentAmount(repaymoney);
        lsrecord.setRepaymentTime(new Date());
        lsrecord.setRepaymentStatus(2);
        LoanStatusExample lsexample=new LoanStatusExample();
        LoanStatusExample.Criteria lsc=lsexample.createCriteria();
        lsc.andLoanIdEqualTo(loan.getLid());
        int res=0;
        try{
            res=loanStatusMapper.updateByExampleSelective(lsrecord,lsexample);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        Loan lrecord=new Loan();
        lrecord.setLoanOnline(3);
        LoanExample lexample=new LoanExample();
        LoanExample.Criteria lc=lexample.createCriteria();
        lc.andLidEqualTo(loan.getLid());
        try{
            res=loanMapper.updateByExampleSelective(lrecord,lexample);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        try{
            Account account=accountMapper.selectByPrimaryKey(user.getAccountId());
            Double accountAmount=account.getAccountAmount()-repaymoney;
            account.setAccountAmount(accountAmount);
            res= accountMapper.updateByPrimaryKey(account);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return res;
    }
    public  Date countOvertime(Date loanGettime,int loanLimittime){
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(loanGettime);
//        int year=loanLimittime/12+calendar.get(Calendar.YEAR);
//        int month=loanLimittime%12+calendar.get(Calendar.MONTH);
        int year=loanLimittime/365+calendar.get(Calendar.YEAR);
        int month=(loanLimittime%365)/30+calendar.get(Calendar.MONTH);
        int day=calendar.get(Calendar.DAY_OF_MONTH);
        calendar.set(year, month, day);
        Date date=calendar.getTime();
        return  date;
    }

}
