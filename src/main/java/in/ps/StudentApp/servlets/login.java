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
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//int choice=0;
		StudentDAO sdao=new StudentDAOImpl();
		//PrintWriter out=resp.getWriter();
		Student s=sdao.getStudent(req.getParameter("mail"), req.getParameter("password"));
		HttpSession session=req.getSession(true);
//		String mail=req.getParameter("mail");
//		String pass=req.getParameter("password");
		//Student a=sdao.getStudent(mail,pass);
		if(s!=null) {
			//out.println("<h1>Login Successfull </h1>");
			//req.setAttribute("student", s);
			session.setAttribute("student", s);
			req.setAttribute("success", "Login Successfull!");
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			rd.forward(req, resp);
		}else {
			//out.println("<h1>Failed to Login!");
			req.setAttribute("error", "failed to login!");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
	}

}
