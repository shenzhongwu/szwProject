package com.zhongwu.graduation.domain;

import java.io.Serializable;
import java.util.List;

public class Page<T> implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/** 结果 */
	protected List<T> results;
	/** 第几页 */
	protected Integer currentPage=1;
	/** 第几页索引 */
	protected Integer currentPageIndex;
	/** 第页多少条 */
	protected Integer pageSize = 20;
	/** 总条数 */
	protected Integer allSize=0;
	
	/** 总页数 */
	protected Integer allPage;
	
	public List<T> getResults() {
		return results;
	}
	public void setResults(List<T> results) {
		this.results = results;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getCurrentPageIndex() {
		return currentPage ==null?0:(currentPage-1)*pageSize;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getAllSize() {
		return allSize;
	}
	public void setAllSize(Integer allSize) {
		this.allSize = allSize;
	}
	public Integer getAllPage() {
		return (int)Math.ceil(Double.parseDouble(allSize.toString())/pageSize);
	}
	public void setAllPage(Integer allPage) {
		this.allPage = allPage;
	}
}
