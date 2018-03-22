package com.fulan.freemarker.domain;
/**
 * @author szw
 *
 *	一键生成项目信息
 *
 * **/

public class ProjectInfo {
	
	private String projectName;
	
	private String projectPackage; 

	private String projectType;

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectPackage() {
		return projectPackage;
	}

	public void setProjectPackage(String projectPackage) {
		this.projectPackage = projectPackage;
	}

	public String getProjectType() {
		return projectType;
	}

	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	
	
}
