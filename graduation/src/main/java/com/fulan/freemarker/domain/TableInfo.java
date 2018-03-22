package com.fulan.freemarker.domain;

import java.util.List;

public class TableInfo {
	
	private String tableName;
	
	private String columnName;
	
	private String columnType;
	
	private String datasize;
	
	private String digits;
	
	private String nullable;
	
	private List<TableInfo> tableColumnInfo;

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	public String getColumnType() {
		return columnType;
	}

	public void setColumnType(String columnType) {
		this.columnType = columnType;
	}

	public String getDatasize() {
		return datasize;
	}

	public void setDatasize(String datasize) {
		this.datasize = datasize;
	}

	public String getDigits() {
		return digits;
	}

	public void setDigits(String digits) {
		this.digits = digits;
	}

	public String getNullable() {
		return nullable;
	}

	public void setNullable(String nullable) {
		this.nullable = nullable;
	}

	public List<TableInfo> getTableColumnInfo() {
		return tableColumnInfo;
	}

	public void setTableColumnInfo(List<TableInfo> tableColumnInfo) {
		this.tableColumnInfo = tableColumnInfo;
	}
}
