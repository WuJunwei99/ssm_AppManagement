package com.ncu.zte.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.Clazz;
import com.ncu.zte.beans.Student;
import com.ncu.zte.mapper.AreaMapper;
import com.ncu.zte.mapper.ClazzMapper;
import com.ncu.zte.mapper.StudentMapper;
import com.ncu.zte.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private AreaMapper areaMapper;
	@Autowired
	private ClazzMapper clazzMapper;

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
		List<Student> studentList = studentMapper.selectAll();
		for(Student s : studentList){
			Area area = areaMapper.selectByAreaID(s.getAreaID());
			Clazz clazz = clazzMapper.selectByClassId(s.getClazzId());
			s.setArea(area);
			s.setClazz(clazz);
		}
		return studentList;
	}


	@Override
	public Boolean editStudent(Student student) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Student selectStudentByName(String name) {
		Student s =  studentMapper.selectStudentByName(name);
		Area area = areaMapper.selectByAreaID(s.getAreaID());
		Clazz clazz = clazzMapper.selectByClassId(s.getClazzId());
		s.setArea(area);
		s.setClazz(clazz);
		return s;
		// TODO Auto-generated method stub
	}


}
