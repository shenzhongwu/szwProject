package com.zhongwu.graduation.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Cource implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 5272612117583503551L;

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
    

	public Integer getResourceNum() {
		return resourceNum;
	}

	public void setResourceNum(Integer resourceNum) {
		this.resourceNum = resourceNum;
	}

	public String getCourceId() {
        return courceId;
    }

    public void setCourceId(String courceId) {
        this.courceId = courceId == null ? null : courceId.trim();
    }

    public String getCourceName() {
        return courceName;
    }

    public void setCourceName(String courceName) {
        this.courceName = courceName == null ? null : courceName.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
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
        this.status = status == null ? null : status.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getCoverUrl() {
        return coverUrl;
    }

    public void setCoverUrl(String coverUrl) {
        this.coverUrl = coverUrl == null ? null : coverUrl.trim();
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
        this.courseIntroduce = courseIntroduce == null ? null : courseIntroduce.trim();
    }

    public Integer getCourceOrder() {
        return courceOrder;
    }

    public void setCourceOrder(Integer courceOrder) {
        this.courceOrder = courceOrder;
    }
}