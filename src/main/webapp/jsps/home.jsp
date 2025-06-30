<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Maven Web Application - Login Page</title>
<link href="images/mithunlogo.jpg" rel="icon">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #007bff; /* Blue background color */
        color: #fff; /* White text color */
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
    }
    .container {
        width: 100%;
        max-width: 500px;
        margin: 20px auto;
        padding: 20px;
        text-align: center;
        background: #fff;
        color: #333; /* Text color inside the container */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-group {
        margin-bottom: 15px;
    }
    label {
        display: block;
        margin-bottom: 5px;
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 10px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
    }
    button:hover {
        opacity: 0.8;
    }
    .reset {
        background-color: #f44336;
    }
    hr {
        border: 1px solid #fff;
        width: 100%;
        margin: 20px 0;
    }
    .highlight-section {
        text-align: center;
        background: #007bff;
        color: #fff;
        padding: 20px;
        margin-top: 20px;
        border-radius: 5px;
    }
    a {
        color: #2196F3;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Login to Your Application</h1>
    <form action="login" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Login</button>
    </form>
    <button class="reset" onclick="location.href='resetPassword.jsp'">Reset Password</button>
</div>

<div class="highlight-section">
    <h2>Maven Web Application for Project1-HANDSON</h2>
    <br>
    <h3>Server Side IP Address</h3>
    <p>
    <% 
    String ip = "";
    InetAddress inetAddress = InetAddress.getLocalHost();
    ip = inetAddress.getHostAddress();
    out.println("Server Host Name: " + inetAddress.getHostName()); 
    %>
    <br>
    <% out.println("Server IP Address: " + ip); %>
    </p>
    <h3>Client Side IP Address</h3>
    <p>
    <% out.print("Client IP Address: " + request.getRemoteAddr()); %><br>
    <% out.print("Client Host Name: " + request.getRemoteHost()); %>
    </p>
    <hr>
    <div style="font-weight: bold;">
        Website testing for hospital website project, USA
        <br>
    </div>
    <hr>
    <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    <hr>
</div>
</body>
</html>
