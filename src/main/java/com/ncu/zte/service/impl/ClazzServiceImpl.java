package com.ncu.zte.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.Clazz;
import com.ncu.zte.beans.Major;
import com.ncu.zte.beans.Department;
import com.ncu.zte.mapper.ClazzMapper;
import com.ncu.zte.mapper.MajorMapper;
import com.ncu.zte.mapper.DepartmentMapper;
import com.ncu.zte.service.ClazzService;

@Service
public class ClazzServiceImpl implements ClazzService {
	@Autowired
	private DepartmentMapper DepartmentMapper;
	@Autowired
	private MajorMapper Majormapper;
	@Autowired
	private ClazzMapper Clazzmapper;
	@Override
	public List<Clazz> queryClazzByParentId(String parentId) {
		// TODO Auto-generated method stub
		return Clazzmapper.selectByParent(parentId);
	}

	@Override
	public List<Department> queryDepartmentAll() {
		// TODO Auto-generated method stub
		return DepartmentMapper.selectAll();
	}

	@Override
	public List<Major> queryMajorByParentId(String parentId) {
		// TODO Auto-generated method stub
		return Majormapper.selectByParent(parentId);
	}

}
