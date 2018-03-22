package com.zhongwu.graduation;

import org.springframework.boot.context.embedded.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.zhongwu.graduation.filter.MySiteMeshFilter;

@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addViewControllers(ViewControllerRegistry registry){
		registry.addViewController("").setViewName("graduation/login/login");
	}
	 @Bean
	    public FilterRegistrationBean filterRegistrationBean() {
	        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
	        MySiteMeshFilter siteMeshFilter = new MySiteMeshFilter();  
	        filterRegistrationBean.setFilter(siteMeshFilter);
	        filterRegistrationBean.addUrlPatterns("/*");
	        filterRegistrationBean.setEnabled(true);
	        return filterRegistrationBean;
	    }
}
