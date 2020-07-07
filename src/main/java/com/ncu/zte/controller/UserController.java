package com.ncu.zte.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ncu.zte.beans.User;
import com.ncu.zte.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;

    @RequestMapping("users")
    public String toUsers(){
        
        return "users";
    }
    
    @RequestMapping("list")
    @ResponseBody
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

}
