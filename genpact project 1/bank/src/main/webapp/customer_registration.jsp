<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Registration</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            margin: 50px;
            text-align: center;
            background-color: #e0f7fa; /* Changed background color */
        }
        h2 {
            color: #00796b; /* Changed header color */
            font-size: 1.8em; /* Increased font size */
        }
        form {
            max-width: 400px;
            margin: auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px; /* Increased border radius */
            box-shadow: 0 8px 16px rgba(0,0,0,0.1); /* Adjusted box shadow */
            transition: transform 0.3s; /* Added a subtle scale effect */
        }
        form:hover {
            transform: scale(1.05); /* Slightly enlarges the container on hover */
        }
        input[type=text], input[type=password], input[type=email], input[type=number], input[type=date], select {
            width: 100%;
            padding: 12px; /* Adjusted padding */
            margin: 5px 0 20px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 4px; /* Added border radius for inputs */
        }
        button {
            background-color: #00796b; /* Changed button color */
            color: white;
            padding: 12px 25px; /* Adjusted padding */
            margin: 10px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 4px;
        }
        button:hover {
            background-color: #004d40; /* Darkened hover color */
        }
        .login-link, .change-password-link {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #00796b; /* Changed link color */
        }
        .login-link:hover, .change-password-link:hover {
            color: black;
        }
        p {
            color: black;
        }
    </style>
</head>
<body>

<h2>Customer Registration</h2>

<form action="customerRegistration" method="post">
    <div class="container">
        <label for="fullName"><b>Full Name</b></label>
        <input type="text" placeholder="Enter Full Name" name="fullName" required>

        <label for="address"><b>Address</b></label>
        <input type="text" placeholder="Enter Address" name="address" required>

        <label for="mobileNo"><b>Mobile No</b></label>
        <input type="text" placeholder="Enter Mobile No" name="mobileNo" required>

        <label for="email"><b>Email</b></label>
        <input type="email" placeholder="Enter Email" name="email" required>

        <label for="accountType"><b>Account Type</b></label>
        <select name="accountType" required>
            <option value="Saving">Saving Account</option>
            <option value="Current">Current Account</option>
        </select>

        <label for="initialBalance"><b>Initial Balance (min 1000)</b></label>
        <input type="number" placeholder="Enter Initial Balance" name="initialBalance" min="1000" required>

        <label for="dob"><b>Date of Birth</b></label>
        <input type="date" name="dob" required>

        <label for="idProof"><b>ID Proof</b></label>
        <input type="text" placeholder="Enter ID Proof" name="idProof" required>

        <button type="submit">Register</button>
    </div>
</form>
<a class="login-link" href="customer_login.jsp">Back to Login</a>

</body>
</html>
