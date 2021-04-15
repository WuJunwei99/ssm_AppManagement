package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.Major;

public interface AreaMapper extends BaseMapper<Area,String>{
	
	
	List<Area> selectByParent(String parent);
	
	Area selectByAreaID(Long areaID);
}
