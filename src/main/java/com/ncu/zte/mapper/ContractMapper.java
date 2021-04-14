package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.Contract;




public interface ContractMapper extends BaseMapper<Contract,String>{
	
	List<Contract> selectAll();
	
	List<Contract> selectContractByStudentnum(String studentNum);
}
