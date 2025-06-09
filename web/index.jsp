<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Onboarding Dashboard App</title>
    <meta http-equiv="refresh" content="3; URL=login.jsp" />
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .welcome-box {
            background-color: rgba(0, 0, 0, 0.3);
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        p {
            font-size: 18px;
        }

        .loader {
            margin-top: 20px;
            border: 4px solid #f3f3f3;
            border-top: 4px solid #ffffff;
            border-radius: 50%;
            width: 32px;
            height: 32px;
            animation: spin 1s linear infinite;
            display: inline-block;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h1>Welcome!</h1>
        <p>Redirecting you to the login page...</p>
        <div class="loader"></div>
    </div>
</body>
</html>
