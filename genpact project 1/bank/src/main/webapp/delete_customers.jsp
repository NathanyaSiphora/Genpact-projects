<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.Bank.dao.DatabaseConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Customer</title>
    <style>
        :root {
            --background-color: #e0f7fa;
            --container-bg-color: #ffffff;
            --primary-color: #00796b;
            --delete-color: #d32f2f;
            --delete-hover-color: #c62828;
            --font-family: 'Times New Roman', serif;
            --font-size: 16px;
            --border-radius: 15px;
            --box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin: 20px auto;
            --transition-duration: 0.3s;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            margin: 0;
            padding: var(--padding);
        }

        .container {
            background-color: var(--container-bg-color);
            padding: var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            max-width: 1200px;
            margin: var(--margin);
        }

        h1 {
            color: var(--primary-color);
            text-align: center;
            margin-bottom: var(--margin);
            font-size: 1.8em;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: var(--margin) 0;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: var(--primary-color);
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .delete-button {
            background-color: var(--delete-color);
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: var(--border-radius);
            cursor: pointer;
            transition: background-color var(--transition-duration);
        }

        .delete-button:hover {
            background-color: var(--delete-hover-color);
        }

        .back-button {
            padding: 10px 20px;
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            border-radius: var(--border-radius);
            display: inline-block;
            transition: background-color var(--transition-duration);
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #004d40;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: var(--primary-color);
            text-decoration: none;
        }

        a:hover {
            color: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Delete Customer</h1>
        <table>
            <thead>
                <tr>
                    <th>Account Number</th>
                    <th>Full Name</th>
                    <th>Address</th>
                    <th>Mobile No</th>
                    <th>Email ID</th>
                    <th>Account Type</th>
                    <th>Initial Balance</th>
                    <th>Date of Birth</th>
                    <th>ID Proof</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        DatabaseConnection db = new DatabaseConnection();
                        conn = db.getConnection();
                        String sql = "SELECT * FROM customers";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(sql);

                        while (rs.next()) {
                            String accountNo = rs.getString("account_no");
                            String fullName = rs.getString("full_name");
                            String address = rs.getString("address");
                            String mobileNo = rs.getString("mobile_no");
                            String emailId = rs.getString("email");
                            String accountType = rs.getString("account_type");
                            double initialBalance = rs.getDouble("balance");
                            String dob = rs.getString("date_of_birth");
                            String idProof = rs.getString("id_proof");
                %>
                <tr>
                    <td><%= accountNo %></td>
                    <td><%= fullName %></td>
                    <td><%= address %></td>
                    <td><%= mobileNo %></td>
                    <td><%= emailId %></td>
                    <td><%= accountType %></td>
                    <td><%= initialBalance %></td>
                    <td><%= dob %></td>
                    <td><%= idProof %></td>
                    <td>
                        <form action="deleteCustomer" method="post">
                            <input type="hidden" name="accountNo" value="<%= accountNo %>">
                            <button type="submit" class="delete-button">Delete</button>
                        </form>
                    </td>
                </tr>
                <% 
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        try {
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </tbody>
        </table>
        <a href="admin_dashboard.jsp" class="back-button">Back to Dashboard</a>
    </div>
</body>
</html>



