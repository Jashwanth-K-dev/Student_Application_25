package in.ps.StudentApp.dao;

import java.util.ArrayList;

import in.ps.StudentApp.dto.Student;

public interface StudentDAO {
	//JDBC Declarations
	public boolean insertStudent(Student s);
	public boolean updateStudent(Student s);
	public boolean deleteStudent(int id);
	public Student getStudent(String mail, String password);
	public Student getStudent(long phone, String mail);
	public ArrayList<Student> getStudent(String name);
	public ArrayList<Student> getStudent();

}
