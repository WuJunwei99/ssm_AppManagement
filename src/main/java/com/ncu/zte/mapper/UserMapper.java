package com.ncu.zte.mapper;

import java.util.List;

import javax.validation.Valid;

import org.apache.ibatis.annotations.Param;

import com.ncu.zte.beans.User;

public interface UserMapper {

	  /**
     * 根据id查询用户信息
     * @param id
     * @return
     */
    public User queryUserById(Long id);

	public Long queryTotal();

	public List<User> queryUserAll();
	
	public int addUser(User user);

	public int editUser(@Valid User user);

    public int deleteByIds(@Param("ids")String[] ids);

	public User queryUserByName(String userName);
    
	
}
