package com.ncu.zte.service;

import java.util.List;
import com.ncu.zte.beans.Student;


public interface StudentService {

	public Long queryTotal();

	public List<Student> queryStudentAll();
	
	public Boolean insertStudent(Student student);

	public Boolean editStudent(Student student);

	public Boolean deleteByIds(String ids);

	public Student selectStudentByName(String name);

	public Student login(Student student);
	
	
}
