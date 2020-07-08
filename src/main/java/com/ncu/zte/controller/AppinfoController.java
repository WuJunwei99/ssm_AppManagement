package com.ncu.zte.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ncu.zte.beans.Appinfo;
import com.ncu.zte.service.AppinfoService;

@Controller
@RequestMapping("Appinfo")
public class AppinfoController {

	@Autowired
	AppinfoService appinfoService;
	
    /**
     * 请求路径：/save
     * 方法返回值：{status：200}
     * 参数：Appinfo对象
     */
	@RequestMapping("save")
	@ResponseBody
	public Map<String, String> saveAppinfo(@Valid Appinfo appinfo,BindingResult result){
	   	
	   	Map<String, String> map = new HashMap<>();
	   	
        // 如果有异常错误
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            map.put("status", "500");
            return map;
        }
        
	   	Boolean flag = this.appinfoService.saveAppinfo(appinfo);
	   	if(flag){
		   	map.put("status", "200");
	   	}else{
		   	map.put("status", "500");
	   	}

	   	return map;
	}
	
    /**
     * 请求路径：/list
     * 方法返回值：Map<String, Object>
     * 参数：
     */
    @RequestMapping("list")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryAppinfoAll(){
    	Map<String, Object> map = new HashMap<>();
    	//查询总条数
    	Long total = this.appinfoService.queryTotal();
    	map.put("total", total);
    	//查询用户列表List<appinfo>
    	List<Appinfo> appinfo = this.appinfoService.queryAppinfoAll();
    	map.put("rows",appinfo);
    	return map;
    }
    
    /**
     * 请求路径：/edit
     * 方法返回值：{status：200}
     * 参数：Appinfo对象
     */
    @RequestMapping("edit")
    @ResponseBody
    public Map<String, Object> editUser(@Valid Appinfo appinfo, BindingResult result) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 如果有异常错误
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            map.put("status", 500);
            return map;
        }
        
        // 调用userService的新增方法
        Boolean b = this.appinfoService.editAppinfo(appinfo);
        if (b) {
            map.put("status", 200);
        }else{
            map.put("status", 500);
        }
        return map;
    }
    
    /**
     * 请求路径：/delete
     * 方法返回值：{status：200}
     * 参数：以逗号分割的ids
     */
    @RequestMapping("delete")
    @ResponseBody
    public Map<String, Object> deleteAppinfo(@RequestParam("ids")String[] ids) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 调用userService的新增方法
        Boolean b = this.appinfoService.deleteByIds(ids);
        if (b) {
            map.put("status", 200);
        }else{
            map.put("status", 500);
        }
        
        return map;
    }
    
    
    /**
     * 请求路径：/querylist
     * 方法返回值：{status：200}
     * 参数：以逗号分割的ids
     */
    @RequestMapping("querylist")
    @ResponseBody
    public Map<String, Object> queryAppinfoByName(Appinfo appinfo0){
    	System.out.println(appinfo0.getSoftwareName());
    	Map<String, Object> map = new HashMap<>();
    	//查询总条数
    	Long total = this.appinfoService.queryTotal();
    	map.put("total", total);
    	//查询用户列表List<appinfo>
    	List<Appinfo> appinfo = this.appinfoService.queryAppinfoByName(appinfo0.getSoftwareName());
    	map.put("rows",appinfo);
    	System.out.println(map);
    	return map;
    }
}
