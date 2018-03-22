package com.zhongwu.graduation.filter;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class MySiteMeshFilter extends ConfigurableSiteMeshFilter {
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
    	builder
    	.addDecoratorPath("/*", "/WEB-INF/jsp/decorators/index.jsp")
    	.addExcludedPath("/register/register")
    	.addExcludedPath("/login/login")
    	.addExcludedPath("/teacher/uploadCover")
    	.addExcludedPath("/teacher/uploadVideoResource")
    	.addDecoratorPath("/listView/*", "/WEB-INF/jsp/decorators/index_list.jsp")
    	.addDecoratorPath("/player/*", "/WEB-INF/jsp/decorators/index_list.jsp")
    	;
    }
    

}
