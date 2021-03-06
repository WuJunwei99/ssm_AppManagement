package com.ncu.zte.service;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ncu.zte.beans.User;

public class UserServiceTest {

	private UserService userService;

	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml",
				"spring/applicationContext-mybatis.xml", "spring/applicationContext-transaction.xml");
		this.userService = context.getBean(UserService.class);
	}
	
	@Test
	public void test() {
		User user = new User();
		user.setUserName("lina");
		System.out.println((this.userService).findUserByName(user));
	}
}
