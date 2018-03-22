package com.fulan.freemarker.util;

import java.io.File;

import com.fulan.freemarker.domain.ProjectInfo;

public class CreateProjectBagUtil {
	private ProjectInfo projectInfo;

	public CreateProjectBagUtil(ProjectInfo projectInfo){
		this.projectInfo = projectInfo;
	}
	public void create(){
		createFolder("D:/"+projectInfo.getProjectName());
		createFolder("D:/"+projectInfo.getProjectName()+"/.settings");
		createFolder("D:/"+projectInfo.getProjectName()+"/src/main/java/"+projectInfo.getProjectPackage());
		createFolder("D:/"+projectInfo.getProjectName()+"/src/test/java/"+projectInfo.getProjectPackage());
		createFolder("D:/"+projectInfo.getProjectName()+"/target");
	}
	public void createFolder(String fileName){
		File projectFile = new File(fileName);
		if(!projectFile.exists()){
			projectFile.mkdirs();
		}
	}
}
