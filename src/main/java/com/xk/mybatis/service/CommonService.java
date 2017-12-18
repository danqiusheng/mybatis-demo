package com.xk.mybatis.service;

import com.xk.mybatis.mapper.CommonMapper;
import com.xk.mybatis.model.QueryDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/11/30.
 */
@Service
public class CommonService {

    @Autowired
    private CommonMapper commonMapper;

    @Transactional(readOnly=true)
    public List<Map<String,String>> getData(QueryDto queryDto){
        Map<String,Object> map  = new HashMap<>();
        if(queryDto==null){
            return null;
        }
        // 设置表名
        map.put("tableName",queryDto.getTname());
        // 设置获取的属性名
        String[] properties = queryDto.getProperty() ;
        String property = null;
        if(properties!=null){
            property = String.join(",",queryDto.getProperty());
        }
        map.put("property",property);
        // 设置条件
        map.put("conds",queryDto.generatorConds());
        // 设置排序
        map.put("sorts",queryDto.generatorSort());
        return  commonMapper.getData(map);
    }
}
