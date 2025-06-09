<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            margin: 0; padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #56ccf2, #2f80ed);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }
        .register-container {
            background: rgba(255, 255, 255, 0.18);
            padding: 40px 50px;
            border-radius: 14px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.35);
            width: 400px;
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
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 14px 16px;
            margin-bottom: 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
        }
        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus {
            outline: none;
            box-shadow: 0 0 8px #85b8ff;
        }
        .btn-register {
            width: 100%;
            padding: 14px;
            background-color: #0077ff;
            border: none;
            border-radius: 10px;
            color: white;
            font-weight: 700;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn-register:hover {
            background-color: #005bbb;
        }
        .error-message {
            background-color: #e74c3c;
            padding: 12px 15px;
            border-radius: 8px;
            margin-bottom: 18px;
            text-align: center;
            font-weight: 600;
        }
        .link-login {
            margin-top: 18px;
            text-align: center;
            font-size: 14px;
        }
        .link-login a {
            color: #cce1ff;
            text-decoration: none;
            font-weight: 600;
        }
        .link-login a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
      function validateRegister() {
        const name = document.forms["registerForm"]["name"].value.trim();
        const email = document.forms["registerForm"]["email"].value.trim();
        const password = document.forms["registerForm"]["password"].value.trim();
        const confirmPassword = document.forms["registerForm"]["confirmPassword"].value.trim();

        if (name === "" || email === "" || password === "" || confirmPassword === "") {
          alert("All fields are required.");
          return false;
        }
        const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
        if (!emailPattern.test(email)) {
          alert("Please enter a valid email.");
          return false;
        }
        if (password !== confirmPassword) {
          alert("Passwords do not match.");
          return false;
        }
        if (password.length < 6) {
          alert("Password should be at least 6 characters.");
          return false;
        }
        return true;
      }
    </script>
</head>
<body>
    <div class="register-container">
        <h2>Register</h2>
        <% 
            String error = request.getParameter("error");
            if (error != null) {
        %>
        <div class="error-message"><%= error %></div>
        <% } %>

        <form name="registerForm" action="register" method="post" onsubmit="return validateRegister()">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Your full name" required />

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="your.email@example.com" required />

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Create a password" required />

            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required />

            <button type="submit" class="btn-register">Register</button>
        </form>
        <div class="link-login">
            Already have an account? <a href="login.jsp">Login here</a>
        </div>
    </div>
</body>
</html>
