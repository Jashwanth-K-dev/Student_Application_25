package in.ps.StudentApp.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import in.ps.StudentApp.dao.StudentDAO;
import in.ps.StudentApp.dao.StudentDAOImpl;
import in.ps.StudentApp.dto.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/signup")
public class signup extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//creating the object of the POJO class
		Student s= new Student();
		//creating ref object of StudentDAO
		StudentDAO sdao=new StudentDAOImpl();
		//Creating PrintWriter class object
		PrintWriter out=resp.getWriter();
		//Collecting the data from the UI
		//String name=req.getParameter("name");
		//s.setName(name);
		s.setName(req.getParameter("name"));
		
		s.setPhone(Long.parseLong(req.getParameter("phone")));
		s.setMail(req.getParameter("mail"));
		s.setBranch(req.getParameter("branch"));
		s.setLoc(req.getParameter("location"));
		RequestDispatcher rd=null;
		
		if(req.getParameter("password").equals(req.getParameter("confirm"))) {
			s.setPassword(req.getParameter("password"));
			boolean res=sdao.insertStudent(s);
			if(res) {
				//out.println("<h1>Data added Successfully</h1>");
				req.setAttribute("success", "Signup done successfully");
				rd=req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
						
			}else {
				//out.println("<h1>Failed to signup</h1>");
				req.setAttribute("failed", "failed to signup");
				rd=req.getRequestDispatcher("signup.jsp");
				rd.forward(req, resp);
			}
		}else {
			//out.println("<h1>Password Mismatch!</h1>");
			req.setAttribute("failed", "Password mismatch");
			rd=req.getRequestDispatcher("signup.jsp");
			rd.forward(req, resp);
		}
		
		}

}
