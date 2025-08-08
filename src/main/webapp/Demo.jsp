<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo jsp </title>
<style type ="text/css">
body{
background-image: url("Images/IOT BASED MILK MONITORING FOR DETECTION OF MILK ADULTERATION.jpg");
background-position: cover;
background-repeat: none;
}
</style>
</head>
<body>
<%Random r=new Random(); %>
<h1><%=r.nextLong(100) %></h1>
<%Date d=new Date(); %>
<h2><%=d %></h2>
</body>
</html>