package com.zhongwu.graduation.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class CourseType implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 3966069120377054689L;

	private String courseTypeId;

    private String courseTypeName;

    private String remark;

    private Date createTime;

    private Integer labelCount;

    private Date updateTime;

    private String parentId;
    
    private Integer courceLevel;
    
    public Integer getCourceLevel() {
		return courceLevel;
	}

	public void setCourceLevel(Integer courceLevel) {
		this.courceLevel = courceLevel;
	}

	private List<Label> labelList;
    
    

   

	public List<Label> getLabelList() {
		return labelList;
	}

	public void setLabelList(List<Label> labelList) {
		this.labelList = labelList;
	}

	public String getCourseTypeId() {
        return courseTypeId;
    }

    public void setCourseTypeId(String courseTypeId) {
        this.courseTypeId = courseTypeId == null ? null : courseTypeId.trim();
    }

    public String getCourseTypeName() {
        return courseTypeName;
    }

    public void setCourseTypeName(String courseTypeName) {
        this.courseTypeName = courseTypeName == null ? null : courseTypeName.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getLabelCount() {
        return labelCount;
    }

    public void setLabelCount(Integer labelCount) {
        this.labelCount = labelCount;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }
}