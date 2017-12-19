package com.xk.mybatis.mapper.gp;

import com.xk.framework.mybatis.BaseMapper;
import com.xk.mybatis.model.Message;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * gp查询，模拟
 * Created by Administrator on 2017/12/18.
 */
@Repository
public interface GPMapper extends BaseMapper<Message> {
    /**
     * @return
     */
    List<Map<String,Object>> searchCount();
}
