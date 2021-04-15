package com.ncu.zte.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.AppCategory;
import com.ncu.zte.mapper.AppCategoryMapper;

@Service
public class AppCategoryService {

	@Autowired
    private AppCategoryMapper appCategoryMapper;
    
    public List<AppCategory> getCategoryByCategoryCode(String categoryCode) {

        return appCategoryMapper.selectCategoryByCode(categoryCode);
    }

    public List<AppCategory> getCategoryByCategoryCodeAndParent(String categoryCode, String parent) {
    	return appCategoryMapper.selectCategoryByCodeAndParent(categoryCode,parent);
    }

}
