package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.Clazz;
import com.ncu.zte.beans.Major;

public interface ClazzMapper extends BaseMapper<Clazz,String>{
	
	List<Clazz> selectByParent(String majorId);
	
	Clazz selectByClassId(Long classId);
}
