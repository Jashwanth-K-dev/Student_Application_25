package in.ps.StudentApp.index;

import java.util.Scanner;

import in.ps.StudentApp.dao.StudentDAO;
import in.ps.StudentApp.dao.StudentDAOImpl;
import in.ps.StudentApp.dto.Student;

public class SignUp {
	public static void signup() {
		Scanner sc = new Scanner(System.in);
		//Engine e=new Petrol();
		//Payment p=new Credit();
		StudentDAO sdao=new StudentDAOImpl(); //Creating Implementation
		//Creation of Pojo class Object
		Student s =new Student();
		System.out.println("<--Student Signup-->");
		System.out.println("Enter the name: ");
		//String name=sc.next();
		//s.setName(name);
		s.setName(sc.next());
		System.out.println("Enter the Phone: ");
		s.setPhone(sc.nextLong());
		System.out.println("Enter the Mail id: ");
		s.setMail(sc.next());
		System.out.println("Enter the branch: ");
		s.setBranch(sc.next());
		System.out.println("Enter the location: ");
		s.setLoc(sc.next());
		System.out.println("Set a new password: ");
		String password=sc.next();
		System.out.println("Confirm the password: ");
		String confirmpassword=sc.next();
		if(password.equals(confirmpassword)) {
			s.setPassword(confirmpassword);
			boolean res=sdao.insertStudent(s);
			if(res) {
				System.out.println("Data added Successfully! ");
			}else {
				System.out.println("Failed to create a account! ");
			}
		}else {
			System.out.println("Password mismatch!");
		}
	}

}
