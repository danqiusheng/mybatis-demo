package com.xk.mybatis.model;

import com.xk.framework.jpa.reposiotry.base.BaseEntity;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Administrator on 2017/11/30.
 */
@Entity
@Table(name = "t_message")
public class Message extends BaseEntity{

    private String title;
    private String info;

    private String message;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
