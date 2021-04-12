package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.City;
import com.ncu.zte.beans.Province;

public interface ProvinceMapper extends BaseMapper<Province,String>{
	
	List<Province> selectAll();

}
