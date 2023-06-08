package com.lazycoders.request;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		String uname = request.getParameter("uname");
		String uemail = request.getParameter("uemail");
		String upwd = request.getParameter("upwd");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/lazy?useSSL=false";
			String username = "root";
			String password = "komradevalerylegasov";
			Connection con = DriverManager.getConnection(url, username, password);
				String query = "insert into lazy.check (uname, uemail, upwd) values (?, ?, ?)";
				PreparedStatement pst = con.prepareStatement(query);
					pst.setString(1, uname);
					pst.setString(2, uemail);
					pst.setString(3, upwd);
					pst.executeUpdate();
						
			}
		    catch (ClassNotFoundException | SQLException ex) {
			ex.printStackTrace();
		}
		response.sendRedirect("Welcome.jsp");
	}
}
