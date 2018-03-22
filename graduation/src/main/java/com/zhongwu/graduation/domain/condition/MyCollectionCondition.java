package com.zhongwu.graduation.domain.condition;

import java.io.Serializable;
import java.util.Date;

public class MyCollectionCondition implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7650036017565939262L;
	
    private String courceId;
    
    private String courceName;

    private String type;

    private Date createTime;

    private Date updateTime;

    private String status;

    private String remark;

    private String coverUrl;

    private Integer pageView;

    private String courseIntroduce;

    private Integer courceOrder;
    
    private Integer resourceNum;
    

    private String uploaderId;
    
    private String uploaderName;

    private Date uploaderTime;

    private Date alertTime;
    
    private Date collectTime;
    
    private Date lastVisitTime;
    
    private Integer collectNum;

	public String getCourceId() {
		return courceId;
	}

	public void setCourceId(String courceId) {
		this.courceId = courceId;
	}

	public String getCourceName() {
		return courceName;
	}

	public void setCourceName(String courceName) {
		this.courceName = courceName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCoverUrl() {
		return coverUrl;
	}

	public void setCoverUrl(String coverUrl) {
		this.coverUrl = coverUrl;
	}

	public Integer getPageView() {
		return pageView;
	}

	public void setPageView(Integer pageView) {
		this.pageView = pageView;
	}

	public String getCourseIntroduce() {
		return courseIntroduce;
	}

	public void setCourseIntroduce(String courseIntroduce) {
		this.courseIntroduce = courseIntroduce;
	}

	public Integer getCourceOrder() {
		return courceOrder;
	}

	public void setCourceOrder(Integer courceOrder) {
		this.courceOrder = courceOrder;
	}

	public Integer getResourceNum() {
		return resourceNum;
	}

	public void setResourceNum(Integer resourceNum) {
		this.resourceNum = resourceNum;
	}


	public String getUploaderId() {
		return uploaderId;
	}

	public void setUploaderId(String uploaderId) {
		this.uploaderId = uploaderId;
	}

	public String getUploaderName() {
		return uploaderName;
	}

	public void setUploaderName(String uploaderName) {
		this.uploaderName = uploaderName;
	}

	public Date getUploaderTime() {
		return uploaderTime;
	}

	public void setUploaderTime(Date uploaderTime) {
		this.uploaderTime = uploaderTime;
	}

	public Date getAlertTime() {
		return alertTime;
	}

	public void setAlertTime(Date alertTime) {
		this.alertTime = alertTime;
	}

	public Date getCollectTime() {
		return collectTime;
	}

	public void setCollectTime(Date collectTime) {
		this.collectTime = collectTime;
	}

	public Date getLastVisitTime() {
		return lastVisitTime;
	}

	public void setLastVisitTime(Date lastVisitTime) {
		this.lastVisitTime = lastVisitTime;
	}

	public Integer getCollectNum() {
		return collectNum;
	}

	public void setCollectNum(Integer collectNum) {
		this.collectNum = collectNum;
	}

	
}
