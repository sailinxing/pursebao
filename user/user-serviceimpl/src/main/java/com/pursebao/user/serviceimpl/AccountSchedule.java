package com.pursebao.user.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2018/3/24.
 */
@Component
public class AccountSchedule {
    @Autowired
    private  AccountScheduleService scheduleService;
//
//    每隔5秒执行一次：*/5 * * * * ?
//
//    每隔1分钟执行一次：0 */1 * * * ?
//
//    每天23点执行一次：0 0 23 * * ?
//
//    每天凌晨1点执行一次：0 0 1 * * ?
//
//    每月1号凌晨1点执行一次：0 0 1 1 * ?
//
//    每月最后一天23点执行一次：0 0 23 L * ?
//
//    每周星期天凌晨1点实行一次：0 0 1 ? * L
//
//    在26分、29分、33分执行一次：0 26,29,33 * * * ?
//
//    每天的0点、13点、18点、21点都执行一次：0 0 0,13,18,21 * * ?
    @Scheduled(cron="0 */1 * * * ?")
    public void scheduleAccount(){
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

}
