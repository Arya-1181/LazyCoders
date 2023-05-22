package com.lazycoders.request;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DisplayServ")
public class DisplayServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/examp?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "komradevalerylegasov";
	
    public DisplayServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT name FROM check");
			
			ArrayList<String> columnList = new ArrayList<String>();
			while(resultSet.next()) {
				String name = resultSet.getString("name");
				columnList.add(name);
				System.out.println(name);
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("data", columnList);
			
			response.sendRedirect("Display.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
