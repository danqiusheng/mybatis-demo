package com.xk.mybatis;

import com.xk.framework.common.Constants;
import com.xk.framework.jpa.reposiotry.base.BaseRepositoryFactoryBean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@EnableJpaRepositories(basePackages={Constants.DEFAULT_SCAN_PACKAGE},repositoryFactoryBeanClass = BaseRepositoryFactoryBean.class)
@ComponentScan(Constants.DEFAULT_SCAN_PACKAGE)
@EntityScan(Constants.DEFAULT_SCAN_PACKAGE)
@EnableSwagger2
@SpringBootApplication
public class MybatisDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(MybatisDemoApplication.class, args);
	}
}
