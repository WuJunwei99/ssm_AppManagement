package com.ncu.zte.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ncu.zte.beans.Contract;
import com.ncu.zte.beans.Contract;
import com.ncu.zte.beans.User;
import com.ncu.zte.service.ContractService;
import com.ncu.zte.service.UserService;

public class ContractServiceImplTest {
	
	private ContractService ContractService = new ContractServiceImpl();
	
	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml",
				"spring/applicationContext-mybatis.xml", "spring/applicationContext-transaction.xml");
		this.ContractService = context.getBean(ContractService.class);
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
	public void testInsertContract() {
		fail("Not yet implemented");
	}

	@Test
	public void testQueryContractAll() {
		List<Contract> Contract = (this.ContractService).queryContractAll();
		for(Contract s : Contract)
			System.out.println(s.toString());
		}
	
	@Test
	public void  testFindContractByName(){
		List<Contract> Contract = (this.ContractService).selectContractByStudentnum("8002117136");
		for(Contract s : Contract)
			System.out.println(s.toString());
		}
		
	

}
