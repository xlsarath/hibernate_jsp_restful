package org.studyeasy.model;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import org.studyeasy.entity.User;

import com.mysql.cj.xdevapi.PreparableStatement;

public class UsersModel {

	public List<User> listUsers(DataSource dataSource) {
		// Step 1: Initialize connection objects
		List<User> listUsers = new ArrayList<>(); 
        Connection connect = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try {
			connect = dataSource.getConnection();
			
			// Step 2: Create a SQL statements string
			String query = "Select * from users";
			stmt = connect.createStatement();

			// Step 3: Execute SQL query
         rs = stmt.executeQuery(query);
         
			// Step 4: Process the result set
			while(rs.next()){
				listUsers.add(new User(rs.getInt("users_id"), rs.getString("username"), rs.getString("email")));
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return listUsers;
	}

	public void addUser(DataSource dataSource,User newUser) {
		// TODO Auto-generated method stub
		
		Connection connect = null;
		PreparedStatement statement = null;
		try {
		connect = dataSource.getConnection();
		String username = newUser.getUsername();
		String email = newUser.getEmail();
		String query = "insert into users(username,email) values(?,?)";
		statement = connect.prepareStatement(query);
		statement.setString(1, username);
		statement.setString(2, email);
		statement.execute();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
			connect.close();
			statement.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			}
	}

	public void updateUser(DataSource dataSource, User updatedUser) {
		// TODO Auto-generated method stub
		
		Connection connect = null;
		PreparedStatement statement = null;
		try {
		connect = dataSource.getConnection();
		int usersId = updatedUser.getUsers_id();
		String username = updatedUser.getUsername();
		String email = updatedUser.getEmail();
		//System.out.println(usersId+" "+username+" "+email);
		String query = "update users set username=?,email=? where users_id = ?";
		statement = connect.prepareStatement(query);
		statement.setString(1, username);
		statement.setString(2, email);
		statement.setInt(3, usersId);
		statement.execute();
		
	} catch (SQLException e) {
		e.printStackTrace();
		}
	}

	public void deleteUser(DataSource dataSource, int usersID) {
		// TODO Auto-generated method stub
	
		Connection connect = null;
		PreparedStatement statement = null;
		try {
		connect = dataSource.getConnection();
		String query = "delete from users where users_id = ?";
		statement = connect.prepareStatement(query);
		statement.setInt(1, usersID);
		statement.execute();
		
	} catch (SQLException e) {
		e.printStackTrace();
		}
		
	}



}
