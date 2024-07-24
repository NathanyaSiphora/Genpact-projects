<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            margin: 50px;
            text-align: center;
            background-image: url('https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/newscms/2018_12/1956916/170406-spring-savings-mn-1435.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            color: black; /* Set all font colors to black */
        }
        h2 {
            font-size: 1.8em; /* Increased font size */
        }
        .container {
            position: absolute;
            right: 20px;
            width: 350px; /* Adjusted container width */
            background-color: rgba(255, 255, 255, 0); /* Made the container box completely transparent */
            padding: 30px;
            border-radius: 15px; /* Increased border radius */
            box-shadow: 0 8px 16px rgba(0,0,0,0.1); /* Adjusted box shadow */
            transition: transform 0.3s; /* Added a subtle scale effect */
        }
        .container:hover {
            transform: scale(1.05); /* Slightly enlarges the container on hover */
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px; /* Adjusted padding */
            margin: 5px 0 20px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 4px;
        }
        button {
            background-color: black; /* Changed button color */
            color: white;
            padding: 12px 25px; /* Adjusted padding */
            margin: 10px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 4px;
        }
        button:hover {
            background-color: #333; /* Darkened hover color */
        }
        .register-link, .login-link, .change-password-link {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: black; /* Set link color to black */
        }
        .register-link:hover, .login-link:hover, .change-password-link:hover {
            color: #666; /* Lightened hover color */
        }
        .register-link {
            text-decoration: underline; /* Underline the "Register Here" link */
        }
    </style>
</head>
<body>

<h2>Customer Login</h2>

<div class="container">
    <form action="customerLogin" method="post">
        <label for="accountNo"><b>Account Number</b></label>
        <input type="text" placeholder="Enter Account Number" name="accountNo" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit">Login</button>
        <a href="customer_change_password.jsp" class="change-password-link">Change Password</a>
        <p>New Customer? <a href="customer_registration.jsp" class="register-link">Register Here</a></p>
        <a class="login-link" href="index.jsp">Back to choose</a>
    </form>
</div>

</body>
</html>



