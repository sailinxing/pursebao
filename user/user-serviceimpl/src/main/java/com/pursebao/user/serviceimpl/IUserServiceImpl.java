/*package com.pursebao.user.serviceimpl;

import com.pursebao.commons.pojo.po.Account;
import com.pursebao.commons.pojo.po.Invest;
import com.pursebao.commons.pojo.po.InvestExample;
import com.pursebao.commons.pojo.po.User;
import com.pursebao.user.mapper.AccountMapper;
import com.pursebao.user.mapper.InvestMapper;
import com.pursebao.user.mapper.UserAccountCustomerMapper;
import com.pursebao.user.mapper.UserMapperCustomer;
import com.pursebao.user.pojo.vo.AccountUserCustomer;
import com.pursebao.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

*//**
 * Created by Administrator on 2018/3/13.
 *//*
@Service
public class IUserServiceImpl implements UserService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserMapperCustomer userMapper;
    @Autowired
    private InvestMapper investMapper;
    @Autowired
    private AccountMapper  accountMapper;
    @Autowired
    private UserAccountCustomerMapper userAccountMapper;
    @Override
    public List<User> listUser() {
        List<User> userList=null;
        try{
            userList=userMapper.selectUserList();
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return userList;
    }
*//**
 *
    SELECT * FROM account a
    LEFT JOIN USER u ON a.aid=u.account_id
    LEFT JOIN invest_orders io ON  u.uid=io.investor_id
    LEFT JOIN invest i ON io.oid=i.invest_oid
    *//*
    @Override
    public void countAccountIncreasement() {
        try{
           List<Account> accountList=accountMapper.selectByExample(null);
            if(accountList!=null) {
                for (Account account : accountList) {
                      this.countAccount(account);
                    accountMapper.updateByPrimaryKeySelective(account);
                }
            }
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
    }
    public void countAccount(Account account){
        try{
            Double expectedCapital=0.0;
            Double expectedTotalincrease=0.0;
            Double dailyTotalincrease=0.0;
            Double currentTotalIncrease=0.0;
            Double totalincreasement=0.0;
            List<AccountUserCustomer> accountUserCustomerList=userAccountMapper.selectAllOnlineAccountUser(account.getAid());
            for(AccountUserCustomer accountUser:accountUserCustomerList){
                expectedCapital +=accountUser.getInvestMoney();
                expectedTotalincrease +=accountUser.getExpectedIncrease();
                dailyTotalincrease +=accountUser.getDailyIncrease();
                currentTotalIncrease +=accountUser.getCurrentIncrease();
            }
            List<AccountUserCustomer> accountUserLists=userAccountMapper.selectAllAccountUser(account.getAid());
            for(AccountUserCustomer accountUser:accountUserLists){
               totalincreasement +=accountUser.getCurrentIncrease();
            }
            account.setExpectedCapital(expectedCapital);
            account.setExpectedTotalincrease(expectedTotalincrease);
            account.setDailyTotalincrease(dailyTotalincrease);
            account.setCurrentTotalIncrease(currentTotalIncrease);
            account.setTotalincreasement(totalincreasement);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }

    }

    @Override
    public void countIncreasement() {
        InvestExample iexample=new InvestExample();
        InvestExample.Criteria criteria=iexample.createCriteria();
        criteria.andInvestStatusEqualTo(1);
        try{
          List<Invest> investList=investMapper.selectByExample(iexample);
            if(investList!=null){
                for(Invest invest:investList){
                    Double currentIncrease=0.0;
                    if(invest.getCurrentIncrease()!=null) {
                        currentIncrease = invest.getDailyIncrease() + invest.getCurrentIncrease();
                    }
                    invest.setCurrentIncrease(currentIncrease);
                    investMapper.updateByPrimaryKeySelective(invest);
                }
            }
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }

    }


}*/
