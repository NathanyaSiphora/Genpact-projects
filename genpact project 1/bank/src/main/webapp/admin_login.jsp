<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <style>
        :root {
            --background-image: url('https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/newscms/2018_12/1956916/170406-spring-savings-mn-1435.jpg');
            --container-bg-color: transparent;
            --primary-color: black;
            --button-bg-color: black;
            --button-hover-bg-color: #333;
            --font-family: 'Times New Roman', serif;
            --font-size: 16px;
            --border-radius: 15px;
            --button-border-radius: 4px;
            --box-shadow: none;
            --padding: 20px;
            --margin: 10px;
            --transition-duration: 0.3s;
        }

        body {
            font-family: var(--font-family);
            background: var(--background-image) no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start; /* Align items at the top */
            height: 100vh;
            text-align: center;
        }

        .header {
            width: 100%;
            position: absolute;
            top: 20px; /* Distance from the top */
            left: 0;
            text-align: center;
        }

        .container {
            display: flex;
            justify-content: flex-end;
            width: 100%;
            height: 100%;
            align-items: center;
        }

        h2 {
            color: var(--primary-color);
            font-size: 1.8em;
            margin: 0;
        }

        form {
            max-width: 350px; /* Reduced the width */
            width: 100%;
            background-color: var(--container-bg-color);
            padding: 40px;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            transition: box-shadow var(--transition-duration) ease; /* Only transition box-shadow */
        }

        form:hover {
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); /* Added subtle shadow on hover */
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: var(--border-radius);
            box-sizing: border-box;
            color: var(--primary-color); /* Font color to black */
        }

        button {
            background-color: var(--button-bg-color);
            color: white;
            padding: 14px 20px;
            margin: 20px 0;
            border: none;
            border-radius: var(--button-border-radius);
            cursor: pointer;
            width: 100%;
            font-size: var(--font-size);
            transition: background-color var(--transition-duration) ease;
        }

        button:hover {
            background-color: var(--button-hover-bg-color);
        }

        .login-link {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: var(--primary-color);
            transition: color var(--transition-duration) ease;
        }

        .login-link:hover {
            color: black;
        }

        .message {
            margin-top: 20px;
            color: #d9534f; /* Red error message color */
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="header">
        <h2>Admin Login</h2>
    </div>

    <div class="container">
        <form action="adminLogin" method="post">
            <label for="username"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" required>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>

            <button type="submit">Login</button>
            <div class="message">
                <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
            </div>
            <a class="login-link" href="index.jsp">Back to Choose</a>
        </form>
    </div>
</body>
</html>



