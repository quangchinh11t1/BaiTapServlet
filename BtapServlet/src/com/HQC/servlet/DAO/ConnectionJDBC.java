package com.HQC.servlet.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionJDBC {
	public final static String forName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public final static String url = "jdbc:sqlserver://localhost:1433;databaseName=BaiTapServlet";
	public final static String userName = "java";
	public final static String password = "1234";
	public Connection getConnection() {
		try {
			Class.forName(forName);
			Connection conn = DriverManager.getConnection(url, userName, password);
			System.out.println("ket noi thanh cong");
			return conn;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
