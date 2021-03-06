package com.xk.mybatis.mapper;

import com.xk.framework.mybatis.BaseMapper;
import com.xk.mybatis.model.Message;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/11/30.
 */
@Repository
public interface CommonMapper  extends BaseMapper<Message> {

    /**
     * 动态传递表名以及条件
     * @param map
     * @return
     */
    List<Map<String,String>> getData(Map<String,Object> map);

    /**
     *
     * @return
     */
    List<Map<String,String>> searchMemSQL();
}
