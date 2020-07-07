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

import com.ncu.zte.beans.User;
import com.ncu.zte.beans.User1;
import com.ncu.zte.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;

	//@RequestMapping("save")
	@ResponseBody
	public Map<String, String> saveUser(@Valid User user,BindingResult result){
	   	
	   	Map<String, String> map = new HashMap<>();
	   	
        // 如果有异常错误
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            map.put("status", "500");
            return map;
        }
        
	   	Boolean flag = this.userService.saveUser(user);
	   	if(flag){
		   	map.put("status", "200");
	   	}else{
		   	map.put("status", "500");
	   	}

	   	return map;
	}
	
    @RequestMapping("list")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryUserAll(){
    	
    	Map<String, Object> map = new HashMap<>();
    	//查询总条数
    	Long total = this.userService.queryTotal();
    	map.put("total", total);
    	//查询用户列表List<User>
    	List<User> users = this.userService.queryUserAll();
    	map.put("rows",users);
    	return map;
    }
    
    /**
     * 请求路径：/edit
     * 方法返回值：{status：200}
     * 参数：User对象
     */
    @RequestMapping("edit")
    @ResponseBody
    public Map<String, Object> editUser(@Valid User user, BindingResult result) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 如果有异常错误
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            map.put("status", 500);
            return map;
        }
        
        // 调用userService的新增方法
        Boolean b = this.userService.editUser(user);
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
    public Map<String, Object> deleteUser(@RequestParam("ids")String[] ids) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 调用userService的新增方法
        Boolean b = this.userService.deleteByIds(ids);
        if (b) {
            map.put("status", 200);
        }else{
            map.put("status", 500);
        }
        
        return map;
    }
    
    

    @RequestMapping("checkUserName")
    @ResponseBody
    public Map<String, Object> checkUserName(User user) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 调用userService的新增方法

	   	User user1 = this.userService.findUserByName(user);
	   	if(user1==null){
		   	Boolean flag = this.userService.saveUser(user);
		   	if(flag){
			   	map.put("status", "200");
		   	}else{
			   	map.put("status", "500");
		   	}
	   	}else{
		   	map.put("status", "500");
	   	}
        return map;
    }
    
    @RequestMapping("checkPassword")
    @ResponseBody
    public Map<String, Object> checkPassword(User user) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 调用userService的新增方法
        System.out.println(user);
	   	User user1 = this.userService.findUserByName(user);
	   	if(user1==null){
	   		map.put("status", "100");
	   	}else{

	   		if(user1.getPassword().equals(user.getPassword())){
	   			map.put("status", "200");
	   		}else{
	   		
		   	map.put("status", "500");}
	   	}
        return map;
    }
    
    
    

    
    
}
