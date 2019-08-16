package com.HQC.servlet.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.HQC.servlet.Entity.User;


public class UserDAO {
	public User CheckUser(String userName, String passWord) {
		User user = new User();
		Connection conn = new ConnectionJDBC().getConnection();
		String sql = "select * from users where userName = ? and passWord = ?";
		try {
			PreparedStatement pre = conn.prepareStatement(sql);
			pre.setString(1, userName);
			pre.setString(2, passWord);
			ResultSet rs = pre.executeQuery();
			while(rs.next()) {
				user.setUserName(userName);
				user.setPassWord(passWord);
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setAvatar(rs.getString("avatar"));
				user.setAge(rs.getInt("age"));
				user.setMemo(rs.getString("memo"));
				user.setAlone(rs.getString("alone"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}
	
	public void InsertUser(User user) {
		Connection conn = new ConnectionJDBC().getConnection();
		String sql = "insert into users(userName, passWord, firstName ,lastName, age ,avatar, memo, alone) values(?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pre = conn.prepareStatement(sql);
			pre.setString(1, user.getUserName());
			pre.setString(2, user.getPassWord());
			pre.setString(3, user.getFirstName());
			pre.setString(4, user.getLastName());
			pre.setInt(5, user.getAge());
			pre.setString(6, user.getAvatar());
			pre.setString(7, user.getMemo());
			pre.setString(8, user.getAlone());
			
			int kq = pre.executeUpdate();
			System.out.println(" da insert duoc " + kq + " user");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
