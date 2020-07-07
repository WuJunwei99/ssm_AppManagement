package com.ncu.zte.service;

import java.util.List;

import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.User;
import com.ncu.zte.mapper.UserMapper;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	public Long queryTotal() {
		// TODO Auto-generated method stub
		return userMapper.queryTotal();
	}

	public List<User> queryUserAll() {
		// TODO Auto-generated method stub
		return userMapper.queryUserAll();
	}
	
	
}
