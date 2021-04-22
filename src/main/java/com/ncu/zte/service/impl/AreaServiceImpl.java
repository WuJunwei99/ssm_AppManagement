package com.ncu.zte.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.City;
import com.ncu.zte.beans.Province;
import com.ncu.zte.mapper.AreaMapper;
import com.ncu.zte.mapper.CityMapper;
import com.ncu.zte.mapper.ProvinceMapper;
import com.ncu.zte.service.AreaService;

@Service
public class AreaServiceImpl implements AreaService {
	@Autowired
	private ProvinceMapper provinceMapper;
	@Autowired
	private CityMapper citymapper;
	@Autowired
	private AreaMapper areamapper;
	@Override
	public List<Area> queryAreaByParentId(String parentId) {
		// TODO Auto-generated method stub
		return areamapper.selectByParent(parentId);
	}

	@Override
	public List<Province> queryProvinceAll() {
		// TODO Auto-generated method stub
		return provinceMapper.selectAll();
	}

	@Override
	public List<City> queryCityByParentId(String parentId) {
		// TODO Auto-generated method stub
		return citymapper.selectByParent(parentId);
	}

}
