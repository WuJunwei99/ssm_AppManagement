package com.ncu.zte.mapper;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppCategoryMapperTest {

    private AppCategoryMapper appCategoryMapper;
	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml",
				"spring/applicationContext-mybatis.xml");
		this.appCategoryMapper = context.getBean(AppCategoryMapper.class);
	}

	@Test
	public void testSelectByExampleString() {
		System.out.println(appCategoryMapper.selectCategoryByCode("level1"));
	}

	@Test
	public void testSelectByExampleStringString() {
		System.out.println(appCategoryMapper.selectCategoryByCodeAndParent("level1","0"));
	}

}
