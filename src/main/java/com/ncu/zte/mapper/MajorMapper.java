package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.City;
import com.ncu.zte.beans.Major;
import com.ncu.zte.beans.Province;

public interface MajorMapper extends BaseMapper<Major,String>{
	
	
	List<Major> selectByParent(String parent);
	
}
