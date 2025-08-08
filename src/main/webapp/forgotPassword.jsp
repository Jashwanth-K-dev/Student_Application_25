<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Pentagon Space - Forgot Password</title>
    <style>
        body {
            background-color: #f2f9ff;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 50px;
        }
        h1 {
            color: #4a4a8a;
        }
        h3 {
            color: #4a90e2;
        }
        form {
            background-color: #ffffff;
            display: inline-block;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            text-align: left;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .buttons {
            margin-top: 20px;
        }
        .buttons input[type="submit"], .buttons input[type="button"] {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        .reset-btn {
            background-color: #4CAF50;
        }
        .back-btn {
            background-color: #8a8ae2;
        }
        .failed{
        color:red;
        }
    </style>
</head>
<body>
    <h1>Pentagon Space</h1>
    <h3>Reset your password here</h3>
    <%if(request.getAttribute("failed")!=null){ %>
    <h3 class="failed"> <%=request.getAttribute("failed")%> </h3>
    <%} %>
    <form action="forgot" method="post">
        <label>Enter the Phone number:</label>
        <input type="text" name="phone">

        <label>Enter the Mail ID:</label>
        <input type="email" name="email">

        <label>Enter the password:</label>
        <input type="password" name="password">

        <label>Confirm the password:</label>
        <input type="password" name="confirm">

        <div class="buttons">
            <input type="submit" value="Reset Password" class="reset-btn">
            <input type="button" value="Back" class="back-btn" onclick="history.back();">
        </div>
    </form>
</body>
</html>