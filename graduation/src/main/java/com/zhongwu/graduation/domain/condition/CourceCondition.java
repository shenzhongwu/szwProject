package com.zhongwu.graduation.domain.condition;

import java.io.Serializable;
import java.util.Date;

public class CourceCondition implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6473070478198511309L;
	
	private String courceId;
	
	private String courseTypeId;
	
	private String labelParentId;
	
	private String typeParentId;

	private String labelId;

    private String courceName;
    
    private String uploadName;

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
    
   
    

	public String getLabelParentId() {
		return labelParentId;
	}

	public void setLabelParentId(String labelParentId) {
		this.labelParentId = labelParentId;
	}

	public String getTypeParentId() {
		return typeParentId;
	}

	public void setTypeParentId(String typeParentId) {
		this.typeParentId = typeParentId;
	}

	public String getUploadName() {
		return uploadName;
	}

	public void setUploadName(String uploadName) {
		this.uploadName = uploadName;
	}

	public String getCourseTypeId() {
		return courseTypeId;
	}

	public void setCourseTypeId(String courseTypeId) {
		this.courseTypeId = courseTypeId;
	}

	public String getLabelId() {
		return labelId;
	}

	public void setLabelId(String labelId) {
		this.labelId = labelId;
	}

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
