package org.studyeasy.com;
import org.studyeasy.entity.User;

import ord.studyeasy.model.UsersModel;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jdbc.pool.DataSource;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/project")
	private DataSource dataSource;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page= request.getParameter("page");
		System.out.println(page);
		page = page.toLowerCase();
		
		switch(page) {
		case "home":
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		case "listusers":
			List<User> listUsers = new ArrayList<>();
			listUsers = new UsersModel().listUsers(dataSource);
			request.setAttribute("listUsers", listUsers);
			request.getRequestDispatcher("listUser.jsp").forward(request, response);
			break;
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
