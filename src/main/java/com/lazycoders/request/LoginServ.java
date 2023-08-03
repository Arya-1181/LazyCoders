package com.lazycoders.request;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/login")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
    private static final String DB_CONNECTION = "jdbc:mysql://localhost:3306/lazy?useSSL=false";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "komradevalerylegasov";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("uemail");
        String password = request.getParameter("upwd");
        String sql = "SELECT * FROM lazy.check WHERE uemail=? AND upwd=?";
        RequestDispatcher dispatcher = null;
        try {
            Class.forName(DB_DRIVER);
            Connection conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()==true) { // User exists
                HttpSession session = request.getSession();
                session.setAttribute("uemail", email);
                dispatcher = request.getRequestDispatcher("Welcome.jsp");
            } else { // Invalid credentials
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("Login.jsp");
            }
            dispatcher.forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
	}
}
