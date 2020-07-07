package com.ncu.zte.service;

import java.util.List;

import javax.validation.Valid;

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
	
	public Boolean saveUser(User user){
		return this.userMapper.addUser(user) == 1;	
	}

	public Boolean editUser(@Valid User user) {
		// TODO Auto-generated method stub
		return this.userMapper.editUser(user) == 1;
	}

	public Boolean deleteByIds(String[] ids) {
		// TODO Auto-generated method stub
		return this.userMapper.deleteByIds(ids) > 0;
	}
	

	
	
}
