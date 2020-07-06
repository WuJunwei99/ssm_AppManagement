package com.ncu.zte.mapper;

import com.ncu.zte.beans.User;

public interface UserMapper {

	  /**
     * 根据id查询用户信息
     * @param id
     * @return
     */
    public User queryUserById(Long id);
    
}
