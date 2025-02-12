package com.Bank.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Bank.dao.DatabaseConnection;

@WebServlet("/customerRegistration")
public class CustomerRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String address = request.getParameter("address");
        String mobileNo = request.getParameter("mobileNo");
        String email = request.getParameter("email");
        String accountType = request.getParameter("accountType");
        double initialBalance = Double.parseDouble(request.getParameter("initialBalance"));
        String dob = request.getParameter("dob");
        String idProof = request.getParameter("idProof");

        DatabaseConnection dbConn = null;
        try {
            dbConn = new DatabaseConnection();
            String sql = "INSERT INTO pending_customers (full_name, address, mobile_no, email, account_type, initial_balance, date_of_birth, id_proof) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = dbConn.createPreparedStatement(sql);
            statement.setString(1, fullName);
            statement.setString(2, address);
            statement.setString(3, mobileNo);
            statement.setString(4, email);
            statement.setString(5, accountType);
            statement.setDouble(6, initialBalance);
            statement.setString(7, dob);
            statement.setString(8, idProof);
            statement.executeUpdate();

            // Redirect to home page
            response.sendRedirect("index.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Database access error", e);
        } finally {
            try {
                if (dbConn != null) {
                    dbConn.closeConnection();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
