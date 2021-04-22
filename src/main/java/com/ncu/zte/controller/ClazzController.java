package com.ncu.zte.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ncu.zte.beans.Clazz;
import com.ncu.zte.beans.Major;
import com.ncu.zte.beans.Department;
import com.ncu.zte.service.ClazzService;


@Controller
@RequestMapping("Clazz")
public class ClazzController {

	@Autowired
	private ClazzService clazzService;
	
    /**
     * 请求路径：/getDepartment
     * 方法返回值：Map<String, Object>
     * 参数：
     */
    @RequestMapping("getDepartment")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryDepartmentAll(){
    	Map<String, Object> map = new HashMap<>();
    	//查询省份列表List<Department>
    	List<Department> DepartmentList = this.clazzService.queryDepartmentAll();
    	map.put("rows",DepartmentList);
    	return map;
    }

    
    
    /**
     * 请求路径：/getMajor
     * 方法返回值：Map<String, Object>
     * 参数：
     */
    @RequestMapping("getMajor")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryMajorByParent(String id){
    	Map<String, Object> map = new HashMap<>();
    	//查询省份列表List<Department>s
    	List<Major> MajorList = this.clazzService.queryMajorByParentId(id);
    	map.put("rows",MajorList);
    	return map;
    }

    
    /**
     * 请求路径：/getClazz
     * 方法返回值：Map<String, Object>
     * 参数：
     */
    @RequestMapping("getClazz")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryAeraByParent(String id){
    	Map<String, Object> map = new HashMap<>();
    	//查询省份列表List<Department>s
    	List<Clazz> MajorList = this.clazzService.queryClazzByParentId(id);
    	map.put("rows",MajorList);
    	return map;
    }
}
