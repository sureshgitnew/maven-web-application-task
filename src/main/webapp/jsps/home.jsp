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
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
    }
    .hero {
        background-image: url('images/mithunlogo.jpg');
        background-size: cover;
        background-position: center;
        padding: 60px 20px;
        text-align: center;
        color: #fff;
    }
    .hero h1 {
        font-size: 3em;
        margin: 0;
    }
    .hero p {
        font-size: 1.2em;
        margin: 20px 0 0;
    }
    .content {
        background: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        margin-top: -40px;
        text-align: center;
    }
    h2, h3 {
        color: #333;
    }
    .highlight, .details {
        padding: 20px;
        margin: 20px 0;
    }
    .highlight {
        background-color: #e7f3fe;
        border-left: 6px solid #2196F3;
    }
    .details {
        background: #fff3cd;
        border-left: 6px solid #ffecb5;
    }
    a {
        color: #2196F3;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    footer {
        background: #333;
        color: #fff;
        text-align: center;
        padding: 20px 0;
        margin-top: 40px;
    }
</style>
</head>
<body>
<div class="hero">
    <h1>Welcome to Our Healthcare Web Application</h1>
    <p>Providing the best healthcare solutions in your city</p>
</div>
<div class="container">
    <div class="content">
        <h2>Maven Web Application Highlights</h2>
        <hr>
        <div class="highlight">
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
        </div>
        <div class="details">
            <h3>Client Side IP Address</h3>
            <p>
            <% out.print("Client IP Address: " + request.getRemoteAddr()); %><br>
            <% out.print("Client Host Name: " + request.getRemoteHost()); %>
            </p>
        </div>
        <hr>
        <h3>Website Testing for Hospital Project (USA)</h3>
        <p>We are conducting comprehensive tests to ensure the best performance and reliability of the hospital's web application.</p>
        <hr>
        <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    </div>
</div>
<footer>
    <p>&copy; 2024 Healthcare Web Application. All rights reserved.</p>
</footer>
</body>
</html>
