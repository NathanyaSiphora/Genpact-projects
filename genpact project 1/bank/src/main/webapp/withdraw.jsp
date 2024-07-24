<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Withdraw</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            background-color: #e0f7fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 20px auto;
            transition: transform 0.3s;
        }
        .container:hover {
            transform: scale(1.02);
        }
        h1 {
            color: #00796b;
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.8em;
        }
        form {
            margin-top: 20px;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            background-color: #00796b;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #004d40;
        }
        .message {
            margin-top: 20px;
            color: #d9534f;
            text-align: center;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #00796b;
            text-decoration: none;
        }
        a:hover {
            color: black;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Withdraw</h1>
        <form action="WithdrawServlet" method="post">
            <label for="amount">Amount to Withdraw:</label>
            <input type="number" id="amount" name="amount" required>
            <button type="submit">Withdraw</button>
        </form>
        <div class="message">
            <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
        </div>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>

