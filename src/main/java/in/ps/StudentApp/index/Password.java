package in.ps.StudentApp.index;

import java.util.Scanner;


import in.ps.StudentApp.dao.StudentDAO;
import in.ps.StudentApp.dao.StudentDAOImpl;
import in.ps.StudentApp.dto.Student;

public class Password {
	public static void reset(Student s) {
		Scanner sc = new Scanner(System.in);
		StudentDAO sdao=new StudentDAOImpl();
		System.out.println("Enter the Phone Number");
		long phone=sc.nextLong();
		System.out.println("Enter the mail Id");
		String mail=sc.next();
		if(s.getPhone()==phone && s.getMail().equals(mail)) //validation
		{
			System.out.println("Set the new Password");
			String pass=sc.next();
			System.out.println("Confirm Password");
			String confirm=sc.next();
			if(pass.equals(confirm)) {
				s.setPassword(pass);
				boolean res=sdao.updateStudent(s);
				if(res) {
					System.out.println("Password Updated Successfully");
				}else {
					System.out.println("Failed to update password");
				}
			}else {
				System.out.println("password not matching");
			}
			
		}else {
			System.out.println("Incorrect phone or Mail");
		}
	}
	
	public static void forget() {
		Scanner sc=new Scanner(System.in);
		StudentDAO sdao=new StudentDAOImpl();
		System.out.println("Enter The Phone Number:");
		long phone=sc.nextLong();
		System.out.println("Enter The Mail Id:");
		String mail=sc.next();
		
		Student s=sdao.getStudent(phone, mail);
		if(s!=null) {
		System.out.println("Enter the new Password:");
		String pass=sc.next();
		System.out.println("Confirm the Password:");
		String confirm=sc.next();
		if(pass.equals(confirm)) {
			s.setPassword(pass);
			boolean res=sdao.updateStudent(s);
			if(res) {
				System.out.println("Password successfully reseted");
			}else {
				System.out.println("Failed to update password");
			}
		}else {
			System.out.println("Password mismatch");
		}
	}else {
		System.out.println("Data Not Found...!");
	}
	}

}
