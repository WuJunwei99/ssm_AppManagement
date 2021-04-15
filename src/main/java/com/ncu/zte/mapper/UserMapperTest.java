package com.ncu.zte.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ncu.zte.beans.Clazz;
import com.ncu.zte.beans.Contract;
import com.ncu.zte.beans.Student;

public class UserMapperTest {


    private StudentMapper userMapper;
    private ContractMapper contractMapper;
    private ClazzMapper clazzMapper;
    
	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml",
				"spring/applicationContext-mybatis.xml");
		this.userMapper = context.getBean(StudentMapper.class);
		this.contractMapper = context.getBean(ContractMapper.class);
		this.clazzMapper = context.getBean(ClazzMapper.class);
		
	}

	@Test
	public void testQueryUserById() {
	List<Student> student = userMapper.selectAll();
	for(Student s : student)
		System.out.println(s.toString());
	}
	
	@Test
	public void testQueryAllContract() {
	List<Contract> student = contractMapper.selectAll();
	for(Contract s : student)
		System.out.println(s.toString());
	}
	
	@Test
	public void testFindStudentByName() {
	Student student = userMapper.selectStudentByName("武俊伟");
	System.out.println(student.toString());
	}
	
	@Test
	public void testFindClazzByClasse() {
	Long classId = (long) 1;
	Clazz clazz = clazzMapper.selectByClassId(classId);
	System.out.println(clazz.toString());
	}
	
}
