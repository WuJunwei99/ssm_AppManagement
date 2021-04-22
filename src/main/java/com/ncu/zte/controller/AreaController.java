package com.ncu.zte.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.junit.validator.PublicClassValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ncu.zte.beans.Appinfo;
import com.ncu.zte.beans.Area;
import com.ncu.zte.beans.City;
import com.ncu.zte.beans.Province;
import com.ncu.zte.beans.Student;
import com.ncu.zte.service.AreaService;
import com.ncu.zte.service.StudentService;

@Controller
@RequestMapping("Area")
public class AreaController {

	@Autowired
	private AreaService areaService;
	
    /**
     * 请求路径：/getProvince
     * 方法返回值：Map<String, Object>
     * 参数：
     */
    @RequestMapping("getProvince")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryProvinceAll(){
    	Map<String, Object> map = new HashMap<>();
    	//查询省份列表List<Province>
    	List<Province> provinceList = this.areaService.queryProvinceAll();
    	map.put("rows",provinceList);
    	return map;
    }

    
    
    /**
     * 请求路径：/getCity
     * 方法返回值：Map<String, Object>
     * 参数：
     */
    @RequestMapping("getCity")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryCityByParent(String id){
    	Map<String, Object> map = new HashMap<>();
    	//查询省份列表List<Province>s
    	List<City> cityList = this.areaService.queryCityByParentId(id);
    	map.put("rows",cityList);
    	return map;
    }

    
    /**
     * 请求路径：/getArea
     * 方法返回值：Map<String, Object>
     * 参数：
     */
    @RequestMapping("getArea")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryAeraByParent(String id){
    	Map<String, Object> map = new HashMap<>();
    	//查询省份列表List<Province>s
    	List<Area> cityList = this.areaService.queryAreaByParentId(id);
    	map.put("rows",cityList);
    	return map;
    }
}
