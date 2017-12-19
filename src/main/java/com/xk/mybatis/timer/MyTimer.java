package com.xk.mybatis.timer;

import com.xk.mybatis.service.StatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间定时器
 * Created by Administrator on 2017/12/18.
 */
@Component
public class MyTimer {

    @Autowired
     private StatisticsService statisticsService;
    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");

    @Scheduled(fixedRate = 60000)
    public void timerRate() {
        statisticsService.statisticsOnTime();
        System.out.println(dateFormat.format(new Date()));
    }

    //第一次延迟1秒执行，当执行完后2秒再执行
   // @Scheduled(initialDelay = 1000, fixedDelay = 2000)
    public void timerInit() {

        System.out.println("init : "+dateFormat.format(new Date()));
    }

    // 每天23点59分59秒开始执行
    // 秒 分 时 日 月 日
    @Scheduled(cron = "59 59 23 * * ?")
    public void timerCron() {
        // 调用接口
        // 查询GP统计数据并将结果写入MemSQL
       // statisticsService.statisticsOnTime();
        System.out.println("current time : "+ dateFormat.format(new Date()));
    }
}