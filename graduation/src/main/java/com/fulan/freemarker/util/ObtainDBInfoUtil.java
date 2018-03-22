package com.fulan.freemarker.util;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fulan.freemarker.domain.TableInfo;

/**
 * @author szw
 * 
 * 获取数据库表结构
 * */
public class ObtainDBInfoUtil {
	//连接数据库
	public Connection getConnction(){
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freemaker", "root", "123456");
			} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return connection;
	}
	
	public List<TableInfo> getTableInfo(){
		Connection connection =  getConnction();
		List<TableInfo> list= null;
		 try {
			Statement statement = connection.createStatement();
			list = getTables(connection) ;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return list;
	}
	

	private  List<TableInfo> getTables(Connection conn) throws SQLException {
		List<TableInfo> list = new ArrayList<TableInfo>();
		DatabaseMetaData dbMetData = conn.getMetaData();
		// mysql convertDatabaseCharsetType null
		ResultSet rs = dbMetData.getTables(null,
				convertDatabaseCharsetType("root", "mysql"), null,
				new String[] { "TABLE", "VIEW" });

		while (rs.next()) {
			TableInfo tableInfo = new TableInfo();
			if (rs.getString(4) != null&& (rs.getString(4).equalsIgnoreCase("TABLE") || rs.getString(4).equalsIgnoreCase("VIEW"))) {
				List<TableInfo> listColumn = new ArrayList<TableInfo>();
				
				String tableName = rs.getString(3).toLowerCase();
				tableInfo.setTableName(tableName);
				// 根据表名提前表里面信息：
				ResultSet colRet = dbMetData.getColumns(null, "%", tableName,"%");
				while (colRet.next()) {
					TableInfo tableColumn = new TableInfo();
					tableColumn.setColumnName(colRet.getString("COLUMN_NAME"));
					tableColumn.setColumnType(colRet.getString("TYPE_NAME"));
					tableColumn.setDatasize( colRet.getString("COLUMN_SIZE"));
					tableColumn.setDigits(colRet.getString("DECIMAL_DIGITS"));
					tableColumn.setNullable(colRet.getString("NULLABLE"));
					listColumn.add(tableColumn);
				}
				tableInfo.setTableColumnInfo(listColumn);
			}
			list.add(tableInfo);
		}
			return list;
	}
	
	public static String convertDatabaseCharsetType(String in, String type) {
		String dbUser;
		if (in != null) {
			if (type.equals("oracle")) {
				dbUser = in.toUpperCase();
			} else if (type.equals("postgresql")) {
				dbUser = "public";
			} else if (type.equals("mysql")) {
				dbUser = null;
			} else if (type.equals("mssqlserver")) {
				dbUser = null;
			} else if (type.equals("db2")) {
				dbUser = in.toUpperCase();
			} else {
				dbUser = in;
			}
		} else {
			dbUser = "public";
		}
		return dbUser;
	}

	
}
