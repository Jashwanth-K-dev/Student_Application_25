<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Pentagon Space - Application Form</title>
  <style>
    body {
      background-color: #f4f4f4;
      font-family: Arial, sans-serif;
      text-align: center;
    }
    .form-container {
      background-color: white;
      padding: 30px;
      margin: 50px auto;
      width: 400px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }
    h1 {
      color: #4c4c8c;
    }
    h2 {
      color: #a0a0d0;
      margin-bottom: 20px;
    }
    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="password"] {
      width: 90%;
      padding: 10px;
      margin: 8px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .btn {
      background-color: #4c4c8c;
      color: white;
      padding: 10px 20px;
      margin-top: 15px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .login-link {
      display: block;
      margin-top: 15px;
      font-size: 14px;
    }
    .login-link a {
      color: #4c4c8c;
      text-decoration: none;
    }
    .failed{
    color: red;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h1>Pentagon Space</h1>
    <h2>Application form</h2>
    <%if(request.getAttribute("failed")!=null){ %>
    <h3 class="failed"> <%=request.getAttribute("failed")%> </h3>
    <%} %>
    <form action="signup" method="post">
      <input type="text" placeholder="Enter your Name" name="name"><br>
      <input type="tel" placeholder="Enter the Phone number" name="phone"><br>
      <input type="email" placeholder="Enter the Mail ID" name="mail"><br>
      <input type="text" placeholder="Enter the Branch" name="branch"><br>
      <input type="text" placeholder="Enter the Location" name="location"><br>
      <input type="password" placeholder="Enter the password" name="password"><br>
      <input type="password" placeholder="Confirm the password" name="confirm"><br>
      <button class="btn" type="submit">Create Account</button>
    </form>
    <div class="login-link">
      Already have a account? <a href="login.jsp">Login</a>
    </div>
  </div>
</body>
</html>