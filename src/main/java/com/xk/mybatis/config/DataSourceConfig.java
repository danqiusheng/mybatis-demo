package com.xk.mybatis.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

/**
 * 数据配置
 * Created by Administrator on 2017/12/18.
 */

@Configuration
public class DataSourceConfig {

    /**
     * 配置GP
     *
     * @return
     */

    @Bean(name = "gpDataSource")
    @Qualifier("gpDataSource")
    @ConfigurationProperties(prefix = "spring.datasource.gp")
    public DataSource primaryDataSource() {
        return DataSourceBuilder.create().build();
    }



    /*
    @Bean(name = "gpDS")
    @ConfigurationProperties(prefix = "spring.datasource.gp") // application.properteis中对应属性的前缀
    public DataSource gpDataSource() {
        return DataSourceBuilder.create().build();
    }
    */
}
