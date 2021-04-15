package com.ncu.zte.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ncu.zte.beans.AppCategory;

public interface AppCategoryMapper {

	List<AppCategory> selectCategoryByCode(String categoryCode);

	List<AppCategory> selectCategoryByCodeAndParent(@Param("categoryCode")String categoryCode,@Param("parentid")String parentid);


}
