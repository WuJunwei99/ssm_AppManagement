package com.ncu.zte.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    	map.put("total", null);
    	map.put("rows",null);
    	
    	return map;
    
    	
    }

}
