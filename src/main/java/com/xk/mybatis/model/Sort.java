package com.xk.mybatis.model;

/**
 * Created by Administrator on 2017/11/30.
 * 排序规则
 */
public class Sort {
    private String property;
    private String direction;

    public Sort() {
    }

    public Sort(String property, String direction) {
        this.property = property;
        this.direction = direction;
    }

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }
}
