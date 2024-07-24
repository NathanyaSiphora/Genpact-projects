<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Change Password</title>
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
            margin: 50px auto;
            transition: transform 0.3s;
        }
        .container:hover {
            transform: scale(1.05);
        }
        h1 {
            color: #00796b;
            font-size: 1.8em;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"], input[type="password"] {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #00796b;
            border-radius: 4px;
        }
        button {
            padding: 10px;
            background-color: #00796b;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #004d40;
        }
        .error {
            color: red;
            margin-top: 10px;
        }
        a {
            color: #00796b;
            text-decoration: none;
        }
        a:hover {
            color: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Change Password</h1>
        <form action="CustomerChangePasswordServlet" method="post">
            <input type="text" name="accountNumber" placeholder="Account Number" required>
            <input type="password" name="oldPassword" placeholder="Current Password" required>
            <input type="password" name="newPassword" placeholder="New Password" required>
            <button type="submit">Change Password</button>
        </form>
        <% if (request.getParameter("error") != null) { %>
            <div class="error"><%= request.getParameter("error") %></div>
        <% } %>
    </div>
</body>
</html>

