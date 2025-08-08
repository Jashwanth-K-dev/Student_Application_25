package in.ps.StudentApp.index;

import in.ps.StudentApp.dao.StudentDAO;
import in.ps.StudentApp.dao.StudentDAOImpl;

public class Delete {
	public static void delete(int id) {
		StudentDAO sdao=new StudentDAOImpl();
		boolean res=sdao.deleteStudent(id);
		if(res) {
			System.out.println("Student deleted Successfully");
		}else {
			System.out.println("Failed to delete");
		}
	}

}
