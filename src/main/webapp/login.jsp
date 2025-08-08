<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Pentagon Space - Login</title>
  <style>
    body {
      background-color: #f4f4f4;
      font-family: Arial, sans-serif;
      text-align: center;
    }
    .login-container {
      background-color: white;
      padding: 30px;
      margin: 80px auto;
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
    input[type="email"],
    input[type="password"] {
      width: 90%;
      padding: 10px;
      margin: 10px 0;
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
    .signup-link {
      display: block;
      margin-top: 15px;
      font-size: 14px;
    }
    .signup-link a {
      color: #4c4c8c;
      text-decoration: none;
    }
    .forgot-link {
      display: block;
      margin-top: 15px;
      font-size: 14px;
    }
    .forgot-link a {
      color: #4c4c8c;
      text-decoration: none;
    }
    .success{
    color: green;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h1>Pentagon Space</h1>
    <h2>Login</h2>
    <%if(request.getAttribute("success")!=null){ %>
    <h3 class="success"> <%=request.getAttribute("success")%> </h3>
    <%} %>
    <%if(request.getAttribute("updated")!=null){ %>
    <h3 class="success"> <%=request.getAttribute("updated")%> </h3>
    <%} %>
    <form action="login" method="post">
      <input type="email" placeholder="Enter your Mail ID" name="mail"><br>
      <input type="password" placeholder="Enter your Password" name="password"><br>
      <button class="btn" type="submit">Login</button>
    </form>
    <div class="signup-link">
      Don't have an account? <a href="signup.jsp">Create one</a>
    </div>
    <div class="forgot-link">
      Forgot Password? <a href="forgotPassword.jsp">Click Here</a>
    </div>
  </div>
</body>
</html>