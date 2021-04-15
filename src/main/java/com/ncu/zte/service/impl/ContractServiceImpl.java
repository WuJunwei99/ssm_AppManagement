package com.ncu.zte.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.Clazz;
import com.ncu.zte.beans.Contract;
import com.ncu.zte.beans.Student;
import com.ncu.zte.mapper.AreaMapper;
import com.ncu.zte.mapper.ClazzMapper;
import com.ncu.zte.mapper.ContractMapper;
import com.ncu.zte.mapper.StudentMapper;
import com.ncu.zte.service.ContractService;
@Service
public class ContractServiceImpl implements ContractService{

	@Autowired
	private ContractMapper ContractMapper;
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private AreaMapper areaMapper;
	@Autowired
	private ClazzMapper clazzMapper;

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
		List<Contract> conList = ContractMapper.selectAll();
		for(Contract c : conList){
			Student student = studentMapper.selectStudentByStuNum(c.getStudentNum());
			student.setClazz(clazzMapper.selectByClassId(student.getClazzId()));
			student.setArea(areaMapper.selectByAreaID(student.getAreaID()));
			c.setStudent(student);
		}
		return conList;
	}


	@Override
	public Boolean editContract(Contract Contract) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Contract> selectContractByStudentnum(String studentNum) {
		List<Contract> conList = ContractMapper.selectContractByStudentnum(studentNum);
		for(Contract c : conList){
			Student student = studentMapper.selectStudentByStuNum(c.getStudentNum());
			student.setClazz(clazzMapper.selectByClassId(student.getClazzId()));
			student.setArea(areaMapper.selectByAreaID(student.getAreaID()));
			c.setStudent(student);
		}
		return conList;
		// TODO Auto-generated method stub
	}


}
