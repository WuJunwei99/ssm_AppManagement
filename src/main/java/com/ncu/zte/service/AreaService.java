package com.ncu.zte.service;

import java.util.List;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.City;
import com.ncu.zte.beans.Province;


public interface AreaService {

	public List<Area> queryAreaByParentId(String parentId);
	
	public List<Province> queryProvinceAll();
	
	public List<City> queryCityByParentId(String parentId);
	
	
	
}
