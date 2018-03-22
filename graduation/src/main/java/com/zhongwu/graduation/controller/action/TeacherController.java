package com.zhongwu.graduation.controller.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zhongwu.graduation.domain.Cource;
import com.zhongwu.graduation.domain.CourceResource;
import com.zhongwu.graduation.domain.CourceTypeRelevance;
import com.zhongwu.graduation.domain.CourseLabelRelevance;
import com.zhongwu.graduation.domain.CourseType;
import com.zhongwu.graduation.domain.PlatUser;
import com.zhongwu.graduation.domain.Resources;
import com.zhongwu.graduation.domain.UserCource;
import com.zhongwu.graduation.service.CourceResourceService;
import com.zhongwu.graduation.service.CourceService;
import com.zhongwu.graduation.service.CourceTypeRelevanceService;
import com.zhongwu.graduation.service.CourseLabelRelevanceService;
import com.zhongwu.graduation.service.CourseTypeService;
import com.zhongwu.graduation.service.LabelService;
import com.zhongwu.graduation.service.ResourceService;
import com.zhongwu.graduation.service.TypeLabelRelevanceService;
import com.zhongwu.graduation.service.UserCourceService;
import com.zhongwu.graduation.util.GenerateIdUtil;
import com.zhongwu.graduation.util.UploadImgUtil;
import com.zhongwu.graduation.util.UploadUtil;

@Controller
@RequestMapping("teacher")
public class TeacherController {
	@Autowired
	CourseTypeService courseTypeService;
	@Autowired
	TypeLabelRelevanceService typeLabelRelevanceService;
	@Autowired
	LabelService labelService;
	@Autowired
	CourceService courceService;
	@Autowired
	ResourceService resourceService;
	@Autowired
	CourceResourceService courceResourceService;
	@Autowired
	UserCourceService userCourceService;
	@Autowired
	CourceTypeRelevanceService courceTypeRelevanceService;
	@Autowired
	CourseLabelRelevanceService courseLabelRelevanceService;
	@RequestMapping(value = "teacher")
	public String teacher(Model model) {
        return "graduation/teacher/teacher";
    }
	@RequestMapping(value = "upload")
	public String upload(Model model,HttpServletRequest request) throws IOException {
		CourseType  record =  new CourseType();
		record.setParentId("0");
		List<CourseType> cyiji = courseTypeService.selectCourseType(record);
		List<CourseType> cerji = courseTypeService.selectAllCourseType();
		model.addAttribute("cyiji", cyiji);
		model.addAttribute("cerji", cerji);
		
        return "graduation/teacher/upload";
    }
	
	@RequestMapping(value = "uploadCover")
	public String uploadCover(Model model) {
		return "graduation/teacher/upload_cover";
    }
	
	@RequestMapping(value = "uploadResource")
	public String uploadResource(Model model,HttpServletRequest request) {
		String cover = (String) request.getParameter("cover");
		HttpSession session = request.getSession();
		PlatUser user = (PlatUser) session.getAttribute("platUser");
		System.out.println(user.getLoginName());
		ExecutorService pool = Executors.newFixedThreadPool(10);
		pool.submit(new UploadImgUtil(cover,user,"aa",request));
	    return "success"; 
    }
	@RequestMapping(value = "uploadVideoResource",method=RequestMethod.POST)
	@ResponseBody
	public void uploadVideoResource(Model model,HttpServletRequest request,@RequestParam(value = "file", required = false)MultipartFile file){
		HttpSession session = request.getSession();
		PlatUser user = (PlatUser) session.getAttribute("platUser");
		UploadUtil fileupaload = new UploadUtil();
		fileupaload.uploadVideo(file.getOriginalFilename(),user,file);
    }
	
	@RequestMapping(value = "currentUpload",method=RequestMethod.POST)
	@ResponseBody
	public void currentUpload(Model model,Cource cource,String cover,HttpServletRequest request,String fileStr,String labelArr,CourseType courseType){
		HttpSession session = request.getSession();
		PlatUser user = (PlatUser) session.getAttribute("platUser");
		//上传封面
		UploadUtil fileupaload = new UploadUtil();
		fileupaload.uploadImg(cource.getCourceName(),user,cover);
		//设置课程id
		cource.setCourceId(GenerateIdUtil.getCourceId());
		//将所要文件从缓存区域移动到指定区域,并将该缓存区域删除
		String beforeFileDir = System.getProperty("user.dir")+"\\src\\main\\webapp\\resources\\graduation\\huancun\\"+user.getLoginName()+"\\"+"cource"+"\\video\\";
		String afterFileDir = System.getProperty("user.dir")+"\\src\\main\\webapp\\resources\\graduation\\cource\\"+user.getLoginName()+"\\"+cource.getCourceName()+"\\video\\";
		String[] files = fileStr.split(",");
		for(int i = 0;i<files.length;i++){
			String[] fileNames = files[i].split(":");
			fileupaload.cache2store(fileNames[0],fileNames[1]+"."+fileNames[0].split("\\.")[1],beforeFileDir,afterFileDir);
			
			Resources resources = new Resources();
			String resourceName = fileNames[1];
			String resourceType = fileNames[0].split("\\.")[1];
			resources.setResourceName(resourceName);
			resources.setResourceType(resourceType);
			resources.setResourceId(GenerateIdUtil.getResourceId());
			resources.setUploadUser(user.getUserId());
			resources.setResourceOrder(i+1);
			resourceService.insertSelective(resources);
			
			CourceResource courceResource = new CourceResource();
			courceResource.setCourceId(cource.getCourceId());
			courceResource.setResourceId(resources.getResourceId());
			courceResourceService.insertSelective(courceResource);
		}
		//删除缓存区域
		File cachePath = new File(System.getProperty("user.dir")+"\\src\\main\\webapp\\resources\\graduation\\huancun\\"+user.getLoginName());
		UploadUtil.deleteDir(cachePath);
		
		//将上传数据保存到数据库中
		cource.setCoverUrl("resources/graduation/cource/"+user.getLoginName()+"/"+cource.getCourceName()+"/");
		courceService.insertSelective(cource);
		
		//更新用户课程表
		UserCource userCource = new UserCource();
		userCource.setCourceId(cource.getCourceId());
		userCource.setUserId(user.getUserId());
		userCourceService.insertSelective(userCource);
		
		//更新课程类型表
		CourceTypeRelevance courceTypeRelevance = new CourceTypeRelevance();
		courceTypeRelevance.setCourseTypeId(courseType.getCourseTypeId());
		courceTypeRelevance.setCourceId(cource.getCourceId());
		courceTypeRelevanceService.insertSelective(courceTypeRelevance);
		
		//
		String[] labels = labelArr.split(":");
		for(int i=0;i<labels.length;i++){
			if(!labels[i].equals("")){
				String labelId = labels[i].split(",")[1];
				CourseLabelRelevance courseLabelRelevance = new CourseLabelRelevance();
				courseLabelRelevance.setCourseId(cource.getCourceId());
				courseLabelRelevance.setLabelId(labelId);
				courseLabelRelevanceService.insertSelective(courseLabelRelevance);
			}
		}
		
    }
	
}
