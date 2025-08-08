package in.ps.StudentApp.index;

import java.util.ArrayList;
import java.util.Scanner;

import in.ps.StudentApp.dao.StudentDAO;
import in.ps.StudentApp.dao.StudentDAOImpl;
import in.ps.StudentApp.dto.Student;

public class Login {
	public static void login() {
		int choice =0;
		Scanner sc =new Scanner(System.in);
		StudentDAO sdao=new StudentDAOImpl();
		System.out.println("<---------Login page---------->");
		System.out.println("Enter the mail id:");
		String mail=sc.next();
		System.out.println("Enter the password: ");
		String password=sc.next();
		Student a=sdao.getStudent(mail, password);
		if(a!=null) {
			System.out.println("Login successfull "+a.getName());
			do {
				System.out.println("1. View Data");
				System.out.println("2. Search users");
				System.out.println("3. Update account");
				System.out.println("4. Reset Password");
				System.out.println("5. back to main menu");
				if(a.getId()==1) {	//Admin
					System.out.println("6. view all users");
					System.out.println("7. Delete the user");
				}
				choice =sc.nextInt();
				switch(choice) {
				case 1: System.out.println(a);
				break;
				case 2: System.out.println("Enter the student name");
						String name=sc.next();
						ArrayList<Student> sL=sdao.getStudent(name);
						for(Student sd: sL) {
							System.out.println("Student Id: "+sd.getId());
							System.out.println("Student Name: "+sd.getName());
							System.out.println("Student Branch: "+sd.getBranch());
							System.out.println("Student Location: "+sd.getLoc());
						}
				break;
				case 3: Update.update(a);
				break;
				case 4: Password.reset(a);
				break;
				case 5: System.out.println("Going back to main menu...");
				break;
				case 6:	System.out.println("Our users...");
						ArrayList<Student> sLs=sdao.getStudent();
						for(Student s:sLs) {
							System.out.println(s);
						}
				break;
				case 7:	System.out.println("Enter Student Id To Delete");
						Delete.delete(sc.nextInt());
				break;
				default: System.out.println("Invalid choice! try again");
				}
			
			}while(choice!=5);
		}else {
			System.out.println("Failed to login");
		}
	}

}
