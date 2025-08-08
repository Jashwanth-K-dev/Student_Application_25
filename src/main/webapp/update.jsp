<%@page import="in.ps.StudentApp.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Account - Pentagon Space</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f2f4f7;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background: #fff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
      width: 350px;
    }

    h2 {
      text-align: center;
      color: #4b4b9b;
    }

    p {
      text-align: center;
      color: #5d6d7e;
      margin-bottom: 20px;
    }

    label {
      font-weight: bold;
      display: block;
      margin-top: 15px;
      margin-bottom: 5px;
      color: #333;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 6px;
    }

    .buttons {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
    }

    button {
      padding: 10px 20px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-weight: bold;
    }

    .update {
      background-color: #4CAF50;
      color: white;
    }

    .back {
      background-color: #6c63ff;
      color: white;
    }

    button:hover {
      opacity: 0.9;
    }
  </style>
</head>
<body>
<%if(session.getAttribute("student")!=null){ %>
<%Student s=(Student)session.getAttribute("student"); %>
  <div class="container">
    <h2>Pentagon Space</h2>
    <p>Update your Account here</p>

    <form action="update" method="post">
    <label for="name">Enter the name:</label>
      <input type="text" id="name" name="name" value="<%= s.getName()%>">
      
      <label for="phone">Enter the Phone number:</label>
      <input type="text" id="phone" name="phone" value="<%=s.getPhone()%>">

      <label for="email">Enter the Mail ID:</label>
      <input type="email" id="email" name="email" value="<%=s.getMail()%>">

      <label for="branch">Enter the Branch:</label>
      <input type="text" id="branch" name="branch" value="<%=s.getBranch()%>">

      <label for="location">Confirm the Location:</label>
      <input type="text" id="location" name="location" value="<%=s.getLoc() %>">

      <div class="buttons">
        <button type="submit" class="update">Update</button>
        <a href="dashboard.jsp"><button type="button" class="back" onclick="window.history.back()" >Back</button></a>
      </div>
    </form>
  </div>
  <%} else{
			request.setAttribute("error", "session expired");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			}%>
</body>
</html>