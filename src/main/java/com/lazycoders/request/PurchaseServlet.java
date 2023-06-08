package com.lazycoders.request;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.*;

@WebServlet("/purchase")
public class PurchaseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/lazy";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "komradevalerylegasov";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve course details from the request parameters
        String courseName = request.getParameter("courseName");
        String courseDetails = request.getParameter("courseDetails");

        // Store the course details in the database
        try {
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            String sql = "INSERT INTO lazy.purchase (course_name, course_details) VALUES (?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, courseName);
            statement.setString(2, courseDetails);
            statement.executeUpdate();
            
            // Redirect to the billing page with the course details
            response.sendRedirect("billing.jsp?courseName=" + courseName + "&courseDetails=" + courseDetails);
            
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors
            response.sendRedirect("error.jsp");
        }
    }
}
