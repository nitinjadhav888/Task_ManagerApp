<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Error Occurred</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f8d7da;
            color: #721c24;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
        }
        .error-container {
            background: #f5c6cb;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(114, 28, 36, 0.4);
            max-width: 500px;
            text-align: center;
        }
        h1 {
            font-size: 48px;
            margin-bottom: 10px;
        }
        p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .details {
            font-size: 14px;
            color: #4a1a1f;
            background: #f1b0b7;
            padding: 10px;
            border-radius: 4px;
            word-wrap: break-word;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background: #721c24;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background: #5a141a;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Oops! Something went wrong.</h1>
        <p>We encountered an unexpected error.</p>
        <div class="details">
            <strong>Error Details:</strong><br/>
            <%= exception != null ? exception.getMessage() : "No further details available." %>
        </div>
        <a href="index.jsp">Go Back to Home</a>
    </div>
</body>
</html>
