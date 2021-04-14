package com.ncu.zte.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.Student;
import com.ncu.zte.mapper.StudentMapper;
import com.ncu.zte.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentMapper studentMapper;
	

	public Long queryTotal() {
		// TODO Auto-generated method stub
		return studentMapper.queryTotal();
	}


	public Boolean deleteByIds(String ids) {
		// TODO Auto-generated method stub
		return studentMapper.deleteByPrimaryKey(ids)>0;
	}

	public Boolean insertStudent(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.insert(student)==1;
	}

	public List<Student> queryStudentAll() {
		// TODO Auto-generated method stub
		return studentMapper.selectAll();
	}


	@Override
	public Boolean editStudent(Student student) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Student selectStudentByName(String name) {
		return studentMapper.selectStudentByName(name);
		// TODO Auto-generated method stub
	}


}
