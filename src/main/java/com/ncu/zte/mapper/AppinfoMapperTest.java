package com.ncu.zte.mapper;

import static org.junit.Assert.*;

import java.math.BigDecimal;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ncu.zte.beans.Appinfo;
import com.ncu.zte.beans.Area;

public class AppinfoMapperTest {


    private AppinfoMapper appinfoMapper;
    
    private AreaMapper areaMapper;
    
	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml",
				"spring/applicationContext-mybatis.xml");
		this.appinfoMapper = context.getBean(AppinfoMapper.class);
	}

	@Test
	public void testQueryAppByAppName() {
		System.out.println(appinfoMapper.queryAppByAppName("Dont Starve饥荒"));
	}

	@Test
	public void queryTotal(){
		System.out.println(appinfoMapper.queryTotal());
	}
	
	@Test
	public void testQueryAllApp() {
		appinfoMapper.queryAllApp().forEach(System.out::println);
	}


	@Test
	public void testUpdateApp() {
		Appinfo appinfo = new Appinfo("5","3",new BigDecimal(2.3),"3",3,3,3,"3","3",3,"3");
		appinfo.setId(4);
		System.out.println(appinfo);
		System.out.println(appinfoMapper.updateApp(appinfo));
	}

	@Test
	public void testDeleteApp() {
		String ids[] ={"4"};
		appinfoMapper.deleteByIds(ids);
	}

}
