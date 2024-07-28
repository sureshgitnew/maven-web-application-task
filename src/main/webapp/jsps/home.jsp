<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Maven Web Application - Home Page</title>
<link rel="icon" href="images/mithunlogo.jpg">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 50px auto;
        background: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }
    h1, h2, h3 {
        color: #333;
    }
    .center {
        text-align: center;
    }
    .highlight {
        background-color: #e7f3fe;
        border-left: 6px solid #2196F3;
        padding: 10px;
        margin: 20px 0;
    }
    .details {
        background: #fff3cd;
        border-left: 6px solid #ffecb5;
        padding: 10px;
        margin: 20px 0;
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
    <div class="center">
        <h1>Welcome to the Maven Web Application</h1>
        <p>This is the home page of our Maven web application, showcasing some of its highlights.</p>
    </div>
    <hr>
    <div class="highlight">
        <h2>Server Side IP Address</h2>
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
    </div>
    <div class="details">
        <h2>Client Side IP Address</h2>
        <p>
        <% out.print("Client IP Address: " + request.getRemoteAddr()); %><br>
        <% out.print("Client Host Name: " + request.getRemoteHost()); %>
        </p>
    </div>
    <hr>
    <div class="center">
        <h3>Website Testing for Hospital Project (USA)</h3>
        <p>We are conducting comprehensive tests to ensure the best performance and reliability of the hospital's web application.</p>
        <hr>
        <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    </div>
</div>
</body>
</html>
