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
@WebServlet("/forgot")
public class ForgotPass extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDAO sdao=new StudentDAOImpl();
		PrintWriter out=resp.getWriter();
		RequestDispatcher rd=null;
		Student s=sdao.getStudent(Long.parseLong(req.getParameter("phone")), req.getParameter("email"));
		HttpSession ses=req.getSession(false);
		if(s!=null) {
			if(req.getParameter("password").equals(req.getParameter("confirm"))) {
				s.setPassword(req.getParameter("confirm"));
				
				boolean res=sdao.updateStudent(s);
				if(res) {
					//out.println("<h1>Password Updated Successfully!</h1>");
					req.setAttribute("updated", "Password Updated successfully");
					rd=req.getRequestDispatcher("login.jsp");
					rd.forward(req, resp);
				}else {
					//out.println("<h1>Failed to Update Password!</h1>");
					req.setAttribute("failed", "failed to update");
					rd=req.getRequestDispatcher("forgotPassword.jsp");
					rd.forward(req, resp);
				}
				}else{
					//out.println("<h1>Password Mismatch!</h1>");
					req.setAttribute("failed", "Password Mismatch");
					rd=req.getRequestDispatcher("forgotPassword.jsp");
					rd.forward(req, resp);
				}
		}else {
			//out.println("<h1>User Not Found!</h1>");
			req.setAttribute("failed", "User Data Not Found");
			rd=req.getRequestDispatcher("forgotPassword.jsp");
			rd.forward(req, resp);
		}
	}

}
