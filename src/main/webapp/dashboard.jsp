<%@page import="in.ps.StudentApp.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Student App</title>
	<style>
		.header{
			display: flex;
			background-color: #03d3fc;
			margin: -8px;

		}
		.hd2{
			margin: 15px;
			margin-right: 100px;
			margin-right: 200px;
			padding-left: 545px;
		}

		.hd1{
			margin: 30px;
			color: black;

		}
		a{
			color: black;
			text-decoration: none;
			
		}
		.logoutbtn{
			padding: 5px;
			margin-top: 12px;
			width: 70px;
			background-color: red;
			color: white;
			border-radius: 10px;
			border: none;
		}
		#hd{
			background-color: lightblue;
			display: flex;
			justify-content: space-between;

		}
		.f{
			background-color: #03c6fc;
			display: flex;
			margin: -8px;
		}
	.f1{
		display: flex;
		padding: 10px;


	}
	.f3{
		margin-left: 500px;
	}
	.f2{
		margin-left: 50px;
	}
	.f4{
		margin-left: 500px;
	}
	.dashboard{
		background-color: #dcf0f2;
		
		height: 500px;
		margin: -8px;
		padding: 20px;
      text-align: justify;
	}
	.view-data {
      max-width: 800px;
      border: none;
      padding: 0px;
      border-radius: 5px;
      text-align: left;
    }

    .search-bar {
      margin-bottom: 20px;
    }

    .search-bar input[type="text"] {
      padding: 8px;
      width: 60%;
      max-width: 300px;
      border: 1px solid black;
      border-radius: 3px;
    }

    .search-bar button {
      padding: 8px 12px;
      margin-left: 5px;
      border: none;
      background-color: skyblue;
      color: whitesmoke;
      cursor: pointer;
      border-radius: 3px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    table th, table td {
      padding: 10px;
    }
	</style>
</head>
<body>
<%if(session.getAttribute("student")!=null){ %>
<%Student s=(Student)session.getAttribute("student"); %>
	<header id="hd">
	<div class="header">

		<div class="hd1"><h3><a href="#">Home</a></h3></div>
		<div class="hd1"><h3><a href="#">Menu</a></h3></div>
		<div class="hd1"><h3><a href="#">About</a></h3></div>
		<div class="hd1"><h3><a href="update.jsp">Update</a></h3></div>
		<div class="hd1"><button class="logoutbtn">Logout</button></div>
	<div class="hd2">
		<h1>Welcome <%=s.getName() %></h1>
	</div>	

		</header>

		<main class="dashboard">
			<center><h1>Dashboard</h1></center>
    <div class="data">
      <section class="view-data">
      <h2>View Your Data</h2>
      </section>
    </div>
      <table>
          <tr>
            <th>Name: <%=s.getName() %> </th>
            <th>Phone: <%=s.getPhone() %></th>
            <th>Mail ID: <%=s.getMail() %> </th>
            <th>Branch: <%=s.getBranch() %> </th>
            <th>Location: <%=s.getLoc() %> </th>
          </tr>
      </table>
    <div class="search-bar">
        <h2>Search User</h2>
        Enter the Student Name here <input type="text">
        <button>Search</button>
      </div>
      <table>
          <tr>
            <th>Name:  </th>
            <th>Phone: </th>
            <th>Mail ID: </th>
            <th>Branch: </th>
            <th>Location: </th>
          </tr>
      </table>

			
		</main>
		<%} else{
			request.setAttribute("error", "session expired");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			}%>
		}

		<footer class="f">
			<div class="f1">
				<div class="f2">
					<h3>Quick Links</h3>
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">Menu</a></li>
						<li><a href="#">About</a></li>
						<li><a href="update.jsp">Update</a></li>
					</ul>
				</div>
				<div class="f3">
					<h3>copyright</h3>
					
				</div>
				<div class="f4">
					<h3>My Student App</h3>
					
				</div>
			</div>
		</footer>

	
	
	
	
	
</div>

</body>
</html>