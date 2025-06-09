<%@ page import="javax.servlet.http.*,javax.servlet.*,java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Save Preferences</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #89f7fe, #66a6ff);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #333;
        }
        .message-box {
            background: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            text-align: center;
            width: 400px;
        }
        h2 {
            margin-bottom: 20px;
            color: #2d3748;
        }
        .btn-home {
            display: inline-block;
            margin-top: 25px;
            padding: 12px 24px;
            background-color: #3182ce;
            color: white;
            font-weight: 600;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .btn-home:hover {
            background-color: #2c5282;
        }
    </style>
</head>
<body>
    <div class="message-box">
    <%
        HttpSession session = request.getSession(false);
        if(session == null || session.getAttribute("userId") == null){
            response.sendRedirect("login.jsp");
            return;
        }
        String theme = request.getParameter("theme");
        String layout = request.getParameter("layout");
        String userId = (String) session.getAttribute("userId");

        if(theme == null || layout == null){
    %>
        <h2>Error: Missing preferences data.</h2>
        <a href="dashboard.jsp" class="btn-home">Back to Dashboard</a>
    <%
        } else {
            // Here, connect to DB and save preferences using JDBC
            // For simplicity, dummy save success message shown

            // You can do something like:
            // Connection con = ...
            // PreparedStatement ps = con.prepareStatement("UPDATE preferences SET theme=?, layout=? WHERE user_id=?");
            // ps.setString(1, theme);
            // ps.setString(2, layout);
            // ps.setString(3, userId);
            // ps.executeUpdate();

    %>
        <h2>Preferences Saved Successfully!</h2>
        <p>Theme: <b><%= theme %></b></p>
        <p>Dashboard Layout: <b><%= layout %></b></p>
        <a href="dashboard.jsp" class="btn-home">Go to Dashboard</a>
    <%
        }
    %>
    </div>
</body>
</html>
