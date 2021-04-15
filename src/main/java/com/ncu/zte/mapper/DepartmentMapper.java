package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.City;
import com.ncu.zte.beans.Department;
import com.ncu.zte.beans.Province;

public interface DepartmentMapper extends BaseMapper<Department,String>{
	
	List<Department> selectAll();

}
