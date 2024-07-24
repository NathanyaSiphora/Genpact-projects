<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Banking Application</title>
    <style>
        :root {
            --container-bg-color: rgba(255, 255, 255, 0.1); /* Transparent */
            --primary-color: #000000; /* Set to black */
            --button-bg-color: #ffffff; /* Changed to white */
            --button-font-color: #000000; /* Set to black */
            --button-hover-bg-color: rgba(0, 0, 0, 0.8); /* Black with more opacity for hover */
            --font-family: serif;
            --font-size: 16px;
            --border-radius: 0px; /* Square shape */
            --button-border-radius: 8px;
            --box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); /* Increased shadow for more depth */
            --padding: 30px;
            --margin: 10px;
            --transition-duration: 0.3s;
        }

        body {
            font-family: var(--font-family);
            background: url('https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/newscms/2018_12/1956916/170406-spring-savings-mn-1435.jpg') no-repeat center center fixed; 
            background-size: cover;
            display: flex;
            justify-content: flex-end; /* Aligns container to the right */
            align-items: center;
            height: 100vh;
            margin: 0;
            color: var(--primary-color); /* Set all font colors to black */
        }

        .login-container {
            background-color: var(--container-bg-color);
            padding: var(--padding) var(--padding) 50px var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            text-align: center;
            max-width: 300px;
            width: 300px; /* Fixed width for square shape */
            height: 300px; /* Fixed height for square shape */
            margin-right: 50px; /* Adds some margin to the right */
            transition: transform var(--transition-duration); /* Added a subtle scale effect */
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-container:hover {
            transform: scale(1.05); /* Slightly enlarges the container on hover */
        }

        h1 {
            color: var(--primary-color);
            font-size: 1.4em; /* Adjusted font size for square */
            margin-bottom: 15px;
        }

        .login-button {
            display: inline-block;
            padding: 12px 25px; /* Adjusted padding for a more comfortable button size */
            margin: var(--margin);
            color: var(--button-font-color); /* Set button font color to black */
            background-color: var(--button-bg-color); /* Set button background color to white */
            border: none;
            border-radius: var(--button-border-radius);
            text-decoration: none;
            font-size: var(--font-size);
            cursor: pointer;
            transition: background-color var(--transition-duration) ease;
        }

        .login-button:hover {
            background-color: var(--button-hover-bg-color); /* Set button hover color to more opaque black */
            color: white; /* Change font color to white on hover */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Welcome to Online Banking</h1>
        <a href="customer_login.jsp" class="login-button">Customer Login</a>
        <a href="admin_login.jsp" class="login-button">Admin Login</a>
    </div>
</body>
</html>







