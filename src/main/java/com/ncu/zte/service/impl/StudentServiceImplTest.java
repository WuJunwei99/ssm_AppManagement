package com.ncu.zte.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ncu.zte.beans.Contract;
import com.ncu.zte.beans.Student;
import com.ncu.zte.beans.User;
import com.ncu.zte.service.StudentService;
import com.ncu.zte.service.UserService;

public class StudentServiceImplTest {
	
	private StudentService studentService = new StudentServiceImpl();
	
	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml",
				"spring/applicationContext-mybatis.xml", "spring/applicationContext-transaction.xml");
		this.studentService = context.getBean(StudentService.class);
	}
	

	@Test
	public void testQueryTotal() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteByIds() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsertStudent() {
		fail("Not yet implemented");
	}

	@Test
	public void testQueryStudentAll() {
		List<Student> student = (this.studentService).queryStudentAll();
		for(Student s : student)
			System.out.println(s.toString());
		}
	
	@Test
	public void  testFindStudentByName(){
		Student s = (this.studentService).selectStudentByName("武俊伟");
			System.out.println(s.toString());
		
	}
	@Test
	public void  testLogin(){
		Student s0 = new Student();
		s0.setStudentNum("8002117187");
		s0.setPassword("260036");
		Student s = (this.studentService).login(s0);
			System.out.println(s.toString());
		
	}
}
