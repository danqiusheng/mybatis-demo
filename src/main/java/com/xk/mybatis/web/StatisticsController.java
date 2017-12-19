package com.xk.mybatis.web;

import com.xk.framework.common.APIResponse;
import com.xk.mybatis.model.DBCount;
import com.xk.mybatis.service.StatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2017/12/18.
 */
@Controller
@RequestMapping("/api/base/")
public class StatisticsController {

    @Autowired
    private StatisticsService statisticsService;

    @RequestMapping(value = "/queryData", method = RequestMethod.GET)
    @ResponseBody
    public APIResponse<List<DBCount>> query() {
        return new APIResponse<List<DBCount>>(statisticsService.statistics());
    }
}
