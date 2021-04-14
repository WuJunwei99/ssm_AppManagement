package com.ncu.zte.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.Province;

public class AreaMapperTest {

	private AreaMapper areaMapper;
	
	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml",
				"spring/applicationContext-mybatis.xml");
		this.areaMapper = context.getBean(AreaMapper.class);
	}
	
	@Test
	public void testInsert() {
		Area area = new Area();
		area.setAreaID("1111");
		area.setArea("延安");
		area.setParent("111");
		areaMapper.insert(area);
	}

	@Test
	public void testSelectByPrimaryKey() {
//		List<Province> p = areaMapper.selectAll();
//		for(Province pe : p){
//			System.out.println(pe.getProvince());
//		}
	}

	@Test
	public void testDeleteByPrimaryKey() {
		fail("Not yet implemented");
	}

}
