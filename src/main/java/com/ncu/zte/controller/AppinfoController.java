package com.ncu.zte.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ncu.zte.beans.AppCategory;
import com.ncu.zte.beans.Appinfo;
import com.ncu.zte.service.AppCategoryService;
import com.ncu.zte.service.AppinfoService;

@Controller
@RequestMapping("Appinfo")
public class AppinfoController {

	@Autowired
	private AppinfoService appinfoService;
    @Autowired
    private AppCategoryService appCategoryService;
    
    /**
     * 请求路径：/save
     * 方法返回值：{status：200}
     * 参数：Appinfo对象
     */
	@RequestMapping("save")
	@ResponseBody
	public Map<String, String> saveAppinfo(@Valid Appinfo appinfo,BindingResult result){
	System.out.println(appinfo);
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
    	System.out.println(appinfo0.getStatus());
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
    
    /**
     * 请求路径：/queryByselect
     * 方法返回值：{status：200}
     * 参数：以逗号分割的ids
     */
    @RequestMapping("queryByselect")
    @ResponseBody
    public Map<String, Object> queryAppinfoBySelect(Appinfo appinfo){
    	System.out.println(appinfo);
    	Map<String, Object> map = new HashMap<>();
    	//查询总条数
    	Long total = this.appinfoService.queryTotal();
    	map.put("total", total);
    	//查询用户列表List<appinfo>
    	List<Appinfo> appinfo0 = this.appinfoService.queryAppinfoBySelect(appinfo);
    	map.put("rows",appinfo0);
    	return map;
    }

    /**
     * 获取分类列表
     * @param level 分类等级
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "category", method = RequestMethod.GET)
    public List<AppCategory> getCategory(String level, String parent){
        if (parent != null && parent.length() > 0){
            return appCategoryService.getCategoryByCategoryCodeAndParent(level,parent);
        }
        return appCategoryService.getCategoryByCategoryCode(level);
    }
}
