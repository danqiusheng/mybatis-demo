package com.xk.mybatis.model;

/**
 * Created by Administrator on 2017/11/30.
 * 条件封装类
 */
public class Conds {
    /**
     * 属性
     */
    private String column;
    /**
     * 操作符
     */
    private String oper;
    /**
     * 条件值
     */
    private String value;

    public Conds() {
    }

    public Conds(String column, String oper, String value) {
        this.column = column;
        this.oper = oper;
        this.value = value;
    }



    public String getOper() {

        if ("like".equalsIgnoreCase(oper)){
            this.value = "'%"+value+"%'";
        }
        if ("llike".equalsIgnoreCase(oper)){
            this.oper ="like";
            this.value = "'%"+value+"'";
        }

        if ("rlike".equalsIgnoreCase(oper)){
            this.oper ="like";
            this.value = "'"+value+"%'";
        }

        return oper;
    }

    public void setOper(String oper) {
        this.oper = oper;
    }

    public String getValue() {

        if ("like".equalsIgnoreCase(oper)){
            return this.value;
        }
        return "'"+value+"'";
    }

    public void setValue(String value) {
        this.value = value;
    }


    public String getColumn() {
        return column;
    }

    public void setColumn(String column) {
        this.column = column;
    }

    @Override
    public String toString() {
        return "Conds{" +
                "column='" + column + '\'' +
                ", oper='" + oper + '\'' +
                ", value='" + value + '\'' +
                '}';
    }
}
