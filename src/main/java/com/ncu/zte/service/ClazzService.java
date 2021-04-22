package com.ncu.zte.service;

import java.util.List;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.City;
import com.ncu.zte.beans.Clazz;
import com.ncu.zte.beans.Department;
import com.ncu.zte.beans.Major;
import com.ncu.zte.beans.Province;


public interface ClazzService {

	public List<Department> queryDepartmentAll();
	
	public List<Major> queryMajorByParentId(String parentId);
	
	public List<Clazz> queryClazzByParentId(String parentId);
	
	
	
}
