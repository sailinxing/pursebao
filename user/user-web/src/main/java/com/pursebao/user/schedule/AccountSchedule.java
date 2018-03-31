/*package com.pursebao.user.schedule;

import com.pursebao.user.serviceimpl.AccountScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

*//**
 * Created by Administrator on 2018/3/24.
 *//*
@Controller
public class AccountSchedule implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Timer timer=new Timer();
     *//*   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date date =null;
        try {
            date = sdf.parse("2017-12-17 00:00:00");
        } catch (ParseException e) {
            e.printStackTrace();
        }*//*
        timer.scheduleAtFixedRate(new TimerTask() {
            @Autowired
            private AccountScheduleService scheduleService;
            @Override
            public void run() {
               *//* AccountScheduleService scheduleService=new AccountScheduleService();*//*
                int res=0;
                res=scheduleService.countIncreasement();
                if(res!=0) {
                    res=scheduleService.countAccountIncreasement();
                    if(res!=0) {
                        System.out.println("定时更新账户任务已完成！");
                    }
                }
                System.out.println("发钱啦！");
            }
        },new Date(), 1000*10);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}*/
