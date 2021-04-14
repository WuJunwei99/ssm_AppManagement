package com.ncu.zte.service;

import java.util.List;
import com.ncu.zte.beans.Contract;


public interface ContractService {

	public Long queryTotal();

	public List<Contract> queryContractAll();
	
	public Boolean insertContract(Contract contract);

	public Boolean editContract(Contract contract);

	public Boolean deleteByIds(String ids);

	public List<Contract> selectContractByStudentnum(String studentNum);

	
}
