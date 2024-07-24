<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Balance</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            background-color: #e0f7fa; /* Changed background color */
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px; /* Increased border radius */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); /* Adjusted box shadow */
            max-width: 600px;
            margin: 20px auto;
            transition: transform 0.3s; /* Added a subtle scale effect */
        }
        .container:hover {
            transform: scale(1.05); /* Slightly enlarges the container on hover */
        }
        h1 {
            color: #00796b; /* Changed header color */
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.8em; /* Increased font size */
        }
        .balance {
            margin-top: 20px;
            font-size: 24px;
            text-align: center;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #00796b; /* Changed link color */
            text-decoration: none;
            transition: color 0.3s;
        }
        a:hover {
            color: #004d40; /* Darkened hover color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Balance</h1>
        <div class="balance">
            <%= "Balance: Rs-" + request.getAttribute("balance") %>
        </div>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>

