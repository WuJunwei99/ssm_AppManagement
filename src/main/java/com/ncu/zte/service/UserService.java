package com.ncu.zte.service;

import java.util.List;

import org.junit.validator.PublicClassValidator;
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
	
	public void addUsers(User user1, User user2) {
		this.userMapper.addUser(user1);
		// 制造异常
		int i=1/0;
		this.userMapper.addUser(user2);
	}
	
	public Boolean saveUser(User user){
		return this.userMapper.addUser(user) == 1;	
	}
	

	
	
}
