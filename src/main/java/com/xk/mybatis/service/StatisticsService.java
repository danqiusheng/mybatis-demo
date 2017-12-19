package com.xk.mybatis.service;

import com.xk.mybatis.mapper.gp.GPMapper;
import com.xk.mybatis.mapper.mem.MemRepository;
import com.xk.mybatis.model.DBCount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/18.
 */
@Service
public class StatisticsService {


    @Autowired
    private GPMapper gpMapper;

    @Autowired
    private MemRepository memRepository;

    /**
     * 查询GP并统计结果，将数据写入到MemSQL
     * @return
     */
    @Transactional(readOnly = true)
    public  List<DBCount> statistics(){
        // 直接查询MemSQL
      List<DBCount> db =   memRepository.findAll();
      return db;
    }

    @Transactional
    public void statisticsOnTime(){
        // 查询
        List<Map<String,Object>> list = gpMapper.searchCount();
        // 然后写入到MemSQL
        System.out.println(list);

        for(Map<String,Object> map : list){
              String title =(String) map.get("license");
              Long count = (Long) map.get("count");
              if(title==null)
                  title = "无数据";
            System.out.println(title+"--"+count);

            DBCount dbCount = new DBCount();
            dbCount.setTitle(title);
            dbCount.setCount(count.intValue());
            dbCount.setDate(new Date());
            memRepository.save(dbCount);
        }
    }
}
