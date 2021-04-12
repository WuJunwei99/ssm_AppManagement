package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.City;

public interface CityMapper extends BaseMapper<City,String>{
	
	List<City> selectByParent(String parent);
	
}
