<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Deleted</title>
    <style>
        :root {
            --background-color: #e3f2fd;
            --container-bg-color: #ffffff;
            --primary-color: #0288d1;
            --delete-color: #d32f2f;
            --delete-hover-color: #c62828;
            --font-family: 'Times New Roman', serif;
            --font-size: 16px;
            --border-radius: 10px;
            --box-shadow: 0 8px 12px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin: 20px auto;
            --transition-duration: 0.3s;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            margin: 0;
            padding: var(--padding);
        }

        .container {
            background-color: var(--container-bg-color);
            padding: var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            max-width: 400px;
            margin: var(--margin);
        }

        h1 {
            color: var(--primary-color);
            text-align: center;
            margin-bottom: var(--margin);
        }

        p {
            margin: var(--margin) 0;
            text-align: center;
        }

        .button {
            display: block;
            margin: var(--margin) auto;
            padding: 10px 20px;
            text-decoration: none;
            background-color: var(--primary-color);
            color: white;
            border-radius: var(--border-radius);
            text-align: center;
            transition: background-color var(--transition-duration);
        }

        .button:hover {
            background-color: #01579b; /* Darker shade of primary color on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Deleted Successfully</h1>
        <p>Your account has been deleted. Thank you for using our service.</p>
        <a href="index.jsp" class="button">Go to Home</a>
    </div>
</body>
</html>

