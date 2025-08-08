package in.ps.StudentApp.index;

import java.util.Scanner;

import in.ps.StudentApp.dao.StudentDAO;
import in.ps.StudentApp.dao.StudentDAOImpl;
import in.ps.StudentApp.dto.Student;

public class Update {
	public static void update(Student a) {
		
		Scanner sc=new Scanner(System.in);
		StudentDAO sdao=new StudentDAOImpl();
		System.out.println("<---------Update Account------------>");
		Student s=a;
		int choice=0;
		do {
			System.out.println("1. update Name:");
			System.out.println("2. update Phone");
			System.out.println("3. Update Mail");
			System.out.println("4. Update Branch");
			System.out.println("5. Update Location");
			System.out.println("6. To go back to DashBoard");
			choice=sc.nextInt();
			switch(choice) {
			case 1: System.out.println("Entet the New Name: ");
					s.setName(sc.next());
					break;
			case 2: System.out.println("Enter the New Phone number");
					s.setPhone(sc.nextLong());
					break;
			case 3: System.out.println("Enter the Update mail:");
					s.setMail(sc.next());
					break;
			case 4: System.out.println("Enter the Updated Branch:");
					s.setBranch(sc.next());
					break;
			case 5: System.out.println("Enter the Location to be Update");
					s.setLoc(sc.next());
					break;
			case 6: System.out.println("Go to DashBoard..!");
			break;
			default: System.out.println("Invalid Choice!, Please Enter the valid choice");
			}
			boolean res=sdao.updateStudent(s);
			if(res) {
				System.out.println("Updated Successfully");
			}else {
				System.out.println("Failed to Updated");
			}
		
		}while(choice!=6);
		
		
	}

}
