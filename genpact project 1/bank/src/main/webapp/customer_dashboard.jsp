<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            background-color: #e0f7fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: #fff;
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
            margin-bottom: 20px;
            text-align: center;
            font-size: 1.8em; /* Increased font size */
        }
        .dashboard-link {
            display: block;
            margin-bottom: 10px;
            padding: 10px 20px; /* Adjusted padding to make buttons shorter */
            width: auto; /* Ensures the button is only as wide as needed */
            max-width: 300px; /* Limits the maximum width of the button */
            margin-left: auto;
            margin-right: auto;
            text-decoration: none;
            background-color: #00796b; /* Changed link background color */
            color: white;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s;
        }
        .dashboard-link:hover {
            background-color: #004d40; /* Darkened hover color */
        }
        form {
            text-align: center;
            margin-top: 20px;
        }
        form input[type="submit"] {
            background-color: #00796b; /* Changed logout button color */
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s;
            width: auto; /* Ensures the button is only as wide as needed */
            max-width: 300px; /* Limits the maximum width of the button */
            margin-left: auto;
            margin-right: auto;
        }
        form input[type="submit"]:hover {
            background-color: #004d40; /* Darkened hover color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Your Dashboard</h1>
        <a href="ViewBalanceServlet" class="dashboard-link">View Balance</a>
        <a href="ViewTransactionsServlet" class="dashboard-link">View Transactions</a>
        <a href="WithdrawServlet" class="dashboard-link">Withdraw Money</a>
        <a href="DepositServlet" class="dashboard-link">Deposit Money</a>
        <a href="delete_account.jsp" class="dashboard-link">Delete Account</a>
        <form action="customer_login.jsp">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>


