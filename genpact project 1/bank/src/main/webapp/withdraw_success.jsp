<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Withdraw Success</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            background-color: #e0f7fa;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 50px auto;
            transition: transform 0.3s;
        }
        .container:hover {
            transform: scale(1.02);
        }
        h1 {
            color: #00796b;
            font-size: 1.8em;
        }
        .message {
            margin-top: 20px;
            color: black;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #00796b;
            font-size: 18px;
        }
        a:hover {
            color: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Withdrawal Successful</h1>
        <div class="message">
            <p>Withdrawal successful. Your new balance is: <%= request.getAttribute("newBalance") %></p>
        </div>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>

