<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Simulate retrieving user data from request parameters (passed from onboarding steps)
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String company = request.getParameter("company");
    String industry = request.getParameter("industry");
    String size = request.getParameter("size");
    String theme = request.getParameter("theme");
    String layout = request.getParameter("layout");

    // Fallback values if parameters are missing
    if (name == null) name = "User";
    if (email == null) email = "user@example.com";
    if (company == null) company = "My Company";
    if (industry == null) industry = "Industry";
    if (size == null) size = "Size";
    if (theme == null) theme = "light";
    if (layout == null) layout = "grid";

    // Dummy data for dashboard cards
    int teamMembersCount = 12;
    int activeProjects = 5;
    int notifications = 3;
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        <%-- Theme based background --%>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: <%= "dark".equals(theme) ? "#2c3e50" : "#f5f7fa" %>;
            color: <%= "dark".equals(theme) ? "#ecf0f1" : "#333" %>;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 30px 20px;
            box-sizing: border-box;
        }
        .header {
            width: 100%;
            max-width: 900px;
            text-align: center;
            margin-bottom: 40px;
        }
        .header h1 {
            margin: 0 0 10px 0;
            font-weight: 700;
        }
        .user-info {
            font-size: 16px;
            margin-bottom: 40px;
            line-height: 1.5;
            color: <%= "dark".equals(theme) ? "#bdc3c7" : "#555" %>;
        }
        .cards-container {
            width: 100%;
            max-width: 900px;
            display: flex;
            gap: 25px;
            flex-wrap: wrap;
            justify-content: center;
        }
        .card {
            flex: 1 1 250px;
            background: <%= "dark".equals(theme) ? "#34495e" : "#fff" %>;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            border-radius: 12px;
            padding: 30px 25px;
            text-align: center;
            transition: transform 0.3s ease;
            cursor: default;
        }
        .card:hover {
            transform: translateY(-8px);
        }
        .card h2 {
            font-size: 42px;
            margin: 0 0 10px 0;
            color: <%= "dark".equals(theme) ? "#1abc9c" : "#2980b9" %>;
        }
        .card p {
            margin: 0;
            font-weight: 600;
            font-size: 18px;
            color: <%= "dark".equals(theme) ? "#ecf0f1" : "#555" %>;
        }
        /* Responsive */
        @media(max-width: 680px) {
            .cards-container {
                flex-direction: column;
                align-items: center;
            }
            .card {
                width: 80%;
                max-width: 320px;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome, <%= name %>!</h1>
        <div class="user-info">
            <p><strong>Email:</strong> <%= email %></p>
            <p><strong>Company:</strong> <%= company %> (<%= industry %>, Size: <%= size %>)</p>
            <p><strong>Theme:</strong> <%= theme %> | <strong>Layout:</strong> <%= layout %></p>
        </div>
    </div>

    <div class="cards-container">
        <div class="card">
            <h2><%= teamMembersCount %></h2>
            <p>Team Members</p>
        </div>
        <div class="card">
            <h2><%= activeProjects %></h2>
            <p>Active Projects</p>
        </div>
        <div class="card">
            <h2><%= notifications %></h2>
            <p>Notifications</p>
        </div>
    </div>
</body>
</html>
