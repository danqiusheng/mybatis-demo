package com.xk.mybatis.model;

import com.xk.framework.jpa.reposiotry.base.BaseEntity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * 模拟MemSQL
 * Created by Administrator on 2017/12/18.
 */
@Entity
@Table(name = "db_count")
public class DBCount extends BaseEntity{

    private String title;

    private Date date;

    private int count;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
