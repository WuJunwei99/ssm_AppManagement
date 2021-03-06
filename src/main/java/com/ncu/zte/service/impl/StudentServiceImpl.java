package com.ncu.zte.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.Clazz;
import com.ncu.zte.beans.Contacts;
import com.ncu.zte.beans.Student;
import com.ncu.zte.mapper.AreaMapper;
import com.ncu.zte.mapper.ClazzMapper;
import com.ncu.zte.mapper.ContactsMapper;
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
	@Autowired
	private ContactsMapper contactsMapper;

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
			List<Contacts> contactsList = contactsMapper.selectContactsByStuNum(s.getStudentNum());
			if(contactsList.size()==1){
				s.setCantacts1(contactsList.get(0));
			}else if(contactsList.size()==2){
				s.setCantacts1(contactsList.get(0));
				s.setCantacts2(contactsList.get(1));
			}
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
		List<Contacts> contactsList = contactsMapper.selectContactsByStuNum(s.getStudentNum());
		if(contactsList.size()==1){
			s.setCantacts1(contactsList.get(0));
		}else if(contactsList.size()>=2){
			s.setCantacts1(contactsList.get(0));
			s.setCantacts2(contactsList.get(1));
		}
		Area area = areaMapper.selectByAreaID(s.getAreaID());
		Clazz clazz = clazzMapper.selectByClassId(s.getClazzId());
		s.setArea(area);
		s.setClazz(clazz);
		return s;
		// TODO Auto-generated method stub
	}
	
	public Student login(Student student){
		return studentMapper.login(student);
	}
	

}
