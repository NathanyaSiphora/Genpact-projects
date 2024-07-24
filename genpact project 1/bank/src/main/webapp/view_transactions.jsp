<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.Bank.models.Transaction" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Transactions</title>
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
            max-width: 800px;
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #00796b;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .order-links {
            margin-top: 10px;
            text-align: center;
        }
        .order-links a {
            text-decoration: none;
            color: #00796b;
            margin-right: 10px;
        }
        .order-links a:hover {
            color: black;
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
        <h1>View Transactions</h1>
        <div class="order-links">
            <a href="ViewTransactionsServlet?order=asc">Sort by Date (Ascending)</a>
            <a href="ViewTransactionsServlet?order=desc">Sort by Date (Descending)</a>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Transaction ID</th>
                    <th>Account No</th>
                    <th>Type</th>
                    <th>Amount</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Transaction> transactions = (List<Transaction>) request.getAttribute("transactions");
                    if (transactions != null && !transactions.isEmpty()) {
                        for (Transaction transaction : transactions) {
                %>
                <tr>
                    <td><%= transaction.getTransactionId() %></td>
                    <td><%= transaction.getAccountNo() %></td>
                    <td><%= transaction.getType() %></td>
                    <td><%= transaction.getAmount() %></td>
                    <td><%= transaction.getDate() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="5">No transactions found</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>


