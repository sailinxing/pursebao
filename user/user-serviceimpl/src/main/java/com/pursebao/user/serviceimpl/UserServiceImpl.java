package com.pursebao.user.serviceimpl;

import com.pursebao.commons.jedis.JedisClient;

import com.pursebao.commons.tools.JsonUtils;
import com.pursebao.commons.tools.UUIDCreator;
import com.pursebao.user.mapper.UserCustomerMapper;
import com.pursebao.user.mapper.UserMapper;
import com.pursebao.user.pojo.vo.UserCustomer;
import com.pursebao.user.service.IUserService;
import com.pursebao.commons.pojo.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserCustomerMapper userCustomerMapper;
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private JedisClient jedisClient;

    //通过用户名查询用户信息
    @Override
    public User selectByName(User user) {
        User selecUser = userCustomerMapper.selectByName(user);
        return selecUser;
    }

    //通过手机号查询用户信息
    @Override
    public User selectByPhone(User user) {

        User selectByPhone = userCustomerMapper.selectByPhone(user);
        return selectByPhone;
    }

    //通过uid查询userCustomer信息
    @Override
    public UserCustomer selectUserCustomerById(String uid) {

       // UserCustomer userCustomer = userCustomerMapper.selectUserCustomerById(uid);
        UserCustomer userCustomer = userCustomerMapper.selectUserById(uid);

        return userCustomer;
    }


    //user关联查询account，通过uid查询user
    @Override
    public UserCustomer selectUserById(String uid) {

        UserCustomer userCustomer = userCustomerMapper.selectUserById(uid);
        //可用余额   account_amount
        double accountAmount = userCustomer.getAccountAmount();
        //待收本金   expected_capital
        double expectedCapital = userCustomer.getExpectedCapital();
        //提现处理中金额   cash_amount
        double cashAmount = userCustomer.getCashAmount();
        //所有产品当前总收益   current_total_increase
        double currentTotalIncrease = userCustomer.getCurrentTotalIncrease();

        //计算总资产  totalAssets=可用余额+待收本金+提现处理中金额+所有产品当前总收益
        double total = accountAmount + expectedCapital + cashAmount + currentTotalIncrease;
        userCustomer.setTotalAssets(total);

        //redis缓存session共享
    /*   *//* try{
            System.out.println(userCustomer);
            jedisClient.hset("USERSESSION",uid, JsonUtils.objectToJson(userCustomer));
            String usersession = jedisClient.hget("USERSESSION", uid);
            UserCustomer userCustomer1 = JsonUtils.jsonToPojo(usersession, UserCustomer.class);
            System.out.println(userCustomer1);
        }*//*
        catch (Exception e){

            e.printStackTrace();
        }
*/
        return userCustomer;
    }


    //用户注册
    @Override
    public void insertUser(User user) {
        String uuid = UUIDCreator.createUUID();
        user.setUid(uuid);
        user.setUsername("purse"+user.getPhone());
        userMapper.insertSelective(user);
    }


    //通过uid更新用户信息
    @Override
    public void updatePerInformation(UserCustomer userCustomer) {

        System.out.println("userservice111111111111111111");

        userCustomerMapper.updatePerInformation(userCustomer);

        System.out.println("userservice22222222222222222");
    }


    //通过uid更改登录密码
    @Override
    public void updateLoginPassword(UserCustomer userCustomer) {

        userCustomerMapper.updateLoginPassword(userCustomer);

    }


}
