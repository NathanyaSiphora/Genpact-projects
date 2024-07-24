<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.Bank.dao.DatabaseConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Customers</title>
    <style>
        :root {
            --background-color: #e0f7fa;
            --container-bg-color: #ffffff;
            --primary-color: #00796b;
            --button-bg-color: #00796b;
            --button-hover-bg-color: #004d40;
            --font-family: 'Times New Roman', serif;
            --font-size: 16px;
            --border-radius: 15px;
            --button-border-radius: 4px;
            --box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin: 10px;
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
            margin: var(--margin) auto;
        }

        h1, h2 {
            text-align: center;
            color: var(--primary-color);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: var(--margin) 0;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 20px;
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
            background-color: #f2f2f2;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: var(--primary-color); /* Changed link color */
            text-decoration: none;
        }

        a:hover {
            color: #004d40; /* Darken the link color on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>All Customer Details</h1>
        <table>
            <thead>
                <tr>
                    <th>Account No</th>
                    <th>Full Name</th>
                    <th>Address</th>
                    <th>Mobile No</th>
                    <th>Email ID</th>
                    <th>Account Type</th>
                    <th>Date of Birth</th>
                    <th>ID Proof</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    ResultSet rs = null;
                    try {
                        DatabaseConnection db = new DatabaseConnection();
                        conn = db.getConnection();
                        String sql = "SELECT * FROM customers";
                        ps = conn.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            int accountNo = rs.getInt("account_no");
                            String fullName = rs.getString("full_name");
                            String address = rs.getString("address");
                            String mobileNo = rs.getString("mobile_no");
                            String emailId = rs.getString("email");
                            String accountType = rs.getString("account_type");
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
                    <td><%= dob %></td>
                    <td><%= idProof %></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        try {
                            if (rs != null) rs.close();
                            if (ps != null) ps.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </tbody>
        </table>
        <a href="admin_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>

