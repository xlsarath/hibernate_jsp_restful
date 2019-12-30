package ord.studyeasy.model;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.studyeasy.entity.User;

public class UsersModel {
	
	public List<User> listUsers(DataSource datasource) {
		// Step 1: Initialize connection object
		List<User> listUsers = new ArrayList<>();
		Connection connect = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
			connect = datasource.getConnection();
			
			// Step 2: Create a SQL statements string
			String query = "Select * from users";
			stmt = connect.createStatement();

			// Step 3: Execute SQL query
         rs = stmt.executeQuery(query);
         
			// Step 4: Process the result set
			while(rs.next()){
				listUsers.add(new User(rs.getInt("users_id"),rs.getString("username"),rs.getString("email")));
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listUsers;
	}

}
