package com.ncu.zte.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.Contract;
import com.ncu.zte.mapper.ContractMapper;
import com.ncu.zte.service.ContractService;
@Service
public class ContractServiceImpl implements ContractService{

	@Autowired
	private ContractMapper ContractMapper;
	

	public Long queryTotal() {
		// TODO Auto-generated method stub
		return ContractMapper.queryTotal();
	}


	public Boolean deleteByIds(String ids) {
		// TODO Auto-generated method stub
		return ContractMapper.deleteByPrimaryKey(ids)>0;
	}

	public Boolean insertContract(Contract Contract) {
		// TODO Auto-generated method stub
		return ContractMapper.insert(Contract)==1;
	}

	public List<Contract> queryContractAll() {
		// TODO Auto-generated method stub
		return ContractMapper.selectAll();
	}


	@Override
	public Boolean editContract(Contract Contract) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Contract> selectContractByStudentnum(String studentNum) {
		return ContractMapper.selectContractByStudentnum(studentNum);
		// TODO Auto-generated method stub
	}


}
