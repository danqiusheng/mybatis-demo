package com.xk.mybatis.web;

import com.xk.common.core.dict.model.entity.DictTypeEntity;
import com.xk.framework.common.APIResponse;
import com.xk.framework.common.PageQueryDto;
import com.xk.mybatis.model.QueryDto;
import com.xk.mybatis.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/11/30.
 */
@Controller
@RequestMapping("/api/base/common")
public class NormalController {

    @Autowired
    private CommonService commonService ;

    /**
     * tname=xx
     * property=&property=
     * @return
     */
    @RequestMapping(value = "/", method = {RequestMethod.GET})
    @ResponseBody
    public APIResponse<List<Map<String,String>>> getData(QueryDto queryDto){
        return new APIResponse<List<Map<String,String>>>(commonService.getData(queryDto));
    }


    @RequestMapping(value="/query",method = RequestMethod.GET)
    @ResponseBody
    public APIResponse<String> query(PageQueryDto<DictTypeEntity> pageQueryDto){
        System.out.println(pageQueryDto.getSearchData());
        return new APIResponse<>(0,"ok");
    }



}
