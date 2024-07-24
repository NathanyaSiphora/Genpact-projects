<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.Bank.dao.DatabaseConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Modify Customer Details</title>
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
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            text-align: center;
        }

        .container {
            background-color: var(--container-bg-color);
            padding: var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            max-width: 800px;
            margin: var(--margin);
        }

        h1 {
            color: var(--primary-color);
            font-size: 1.8em;
            margin-bottom: var(--margin);
        }

        form {
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="email"], input[type="tel"] {
            min-width: 450px;
            padding: 8px;
            font-size: var(--font-size);
            border: 1px solid #ccc;
            border-radius: var(--border-radius);
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: var(--button-bg-color);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: var(--button-border-radius);
            cursor: pointer;
            min-width: 150px;
            font-size: var(--font-size);
            transition: background-color var(--transition-duration);
        }

        input[type="submit"]:hover {
            background-color: var(--button-hover-bg-color);
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
        <h1>Modify Customer Details</h1>
        <form action="modifyCustomer" method="post">
            <div class="form-group">
                <label for="accountNo">Account Number:</label>
                <input type="text" id="accountNo" name="accountNo" required>
            </div>
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="mobileNo">Mobile Number:</label>
                <input type="tel" id="mobileNo" name="mobileNo" required>
            </div>
            <div class="form-group">
                <label for="emailId">Email ID:</label>
                <input type="email" id="emailId" name="emailId" required>
            </div>
            <input type="submit" value="Update Details">
        </form>
        <a href="admin_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
