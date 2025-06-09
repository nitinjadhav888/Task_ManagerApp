<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            margin: 0; padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }
        .login-container {
            background: rgba(255, 255, 255, 0.15);
            padding: 40px 50px;
            border-radius: 14px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.4);
            width: 360px;
            box-sizing: border-box;
            backdrop-filter: blur(8px);
        }
        h2 {
            margin-bottom: 25px;
            font-weight: 700;
            text-align: center;
            color: #f0f0f0;
            letter-spacing: 1.2px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            font-size: 14px;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 14px 16px;
            margin-bottom: 22px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
        }
        input[type="email"]:focus, input[type="password"]:focus {
            outline: none;
            box-shadow: 0 0 8px #8e99f3;
        }
        .btn-login {
            width: 100%;
            padding: 14px;
            background-color: #5a67d8;
            border: none;
            border-radius: 10px;
            color: white;
            font-weight: 700;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn-login:hover {
            background-color: #434190;
        }
        .error-message {
            background-color: #e74c3c;
            padding: 12px 15px;
            border-radius: 8px;
            margin-bottom: 18px;
            text-align: center;
            font-weight: 600;
        }
        .link-register {
            margin-top: 18px;
            text-align: center;
            font-size: 14px;
        }
        .link-register a {
            color: #d1d8ff;
            text-decoration: none;
            font-weight: 600;
        }
        .link-register a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
      function validateLogin() {
        const email = document.forms["loginForm"]["email"].value.trim();
        const password = document.forms["loginForm"]["password"].value.trim();

        if (email === "" || password === "") {
          alert("Please enter both email and password.");
          return false;
        }
        // Simple email format validation
        const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
        if (!emailPattern.test(email)) {
          alert("Please enter a valid email.");
          return false;
        }
        return true;
      }
    </script>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <% 
            String error = request.getParameter("error");
            if (error != null) {
        %>
        <div class="error-message"><%= error %></div>
        <% } %>

        <form name="loginForm" action="login" method="post" onsubmit="return validateLogin()">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="your.email@example.com" required />

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Your password" required />

            <button type="submit" class="btn-login">Login</button>
        </form>
        <div class="link-register">
            Don't have an account? <a href="register.jsp">Register here</a>
        </div>
    </div>
</body>
</html>
