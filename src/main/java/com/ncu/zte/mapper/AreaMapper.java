package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.Area;

public interface AreaMapper extends BaseMapper<Area,String>{
	
	List<Area> selectByParent(String parent);
}
