package com.xk.mybatis.model;

import com.alibaba.druid.util.StringUtils;
import com.xk.framework.jpa.specification.CondOper;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/11/30.
 * 查询的DTO
 */
public class QueryDto implements Serializable {
    private String tname;
    private String[] property;
    private String searchConds;
    /**
     * 排序字段_排序规则
     */
    private String[] sorts;

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String[] getProperty() {
        return property;
    }

    public void setProperty(String[] property) {
        this.property = property;
    }

    public String getSearchConds() {
        return searchConds;
    }

    public void setSearchConds(String searchConds) {
        this.searchConds = searchConds;
    }


    public String[] getSorts() {
        return sorts;
    }

    public void setSorts(String[] sorts) {
        this.sorts = sorts;
    }

    /**
     * 生成排序
     *
     * @return List<Sort>
     */
    public List<Sort> generatorSort() {
        List<Sort> list = new ArrayList<Sort>();
        if (sorts != null && sorts.length > 0) {
            for (String sort : sorts) {
                String[] sortArr = sort.split("_");
                if (sortArr.length == 1) { //默认升序
                    list.add(new Sort(sort, Direction.ASC));
                }

                // 排序
                if (sortArr.length > 1) {
                    if (Direction.ASC.equalsIgnoreCase(sortArr[1]) || Direction.DESC.equalsIgnoreCase(sortArr[1])) {
                        list.add(new Sort(sortArr[0], sortArr[1]));
                    }
                }
            }
            return list;
        }
        return null;
    }

    /**
     * 将条件返回封装成list
     *
     * @return
     */
    public List<Conds> generatorConds() {
        // 获取条件，存储Map
        List<Conds> list = new ArrayList<>();
        if (!StringUtils.isEmpty(this.searchConds)) {
            JSONArray json = JSONArray.fromObject(this.searchConds);
            for (int i = 0; i < json.size(); i++) {
                JSONObject jsonOne = json.getJSONObject(i);
                // 获取属性
                String fieldName = (String) jsonOne.get("name");
                // 获取值
                String value = (String) jsonOne.get("value");
                if (!StringUtils.isEmpty(value)) {
                    String[] fieldArr = fieldName.split("_");
                    // 如果长度为1，默认为精确查询
                    if (fieldArr.length == 1) {
                        //  ssb.add(fieldName, "=", (String) jsonOne.get("value"));
                        list.add(new Conds(fieldName, "=", value));
                    }
                    // 如果长度超过1
                    if (fieldArr.length > 1) {
                        list.add(new Conds(fieldArr[1], CondOper.getCond(fieldArr[0]), value));
                    }
                }
            }
            return list;
        }
        return null;
    }
}
