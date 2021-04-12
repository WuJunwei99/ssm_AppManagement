package com.ncu.zte.mapper;

public interface BaseMapper<T,K> {
	
	int insert(T entity);
	
	T selectByPrimaryKey(K key);
	

	
	int deleteByPrimaryKey(K key);
	
}
