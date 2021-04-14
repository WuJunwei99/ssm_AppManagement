package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.Student;


public interface StudentMapper extends BaseMapper<Student,String>{
	
	List<Student> selectAll();
	
	Student selectStudentByName(String name);
	
	
}
