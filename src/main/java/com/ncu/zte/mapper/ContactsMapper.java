package com.ncu.zte.mapper;

import java.util.List;

import com.ncu.zte.beans.Contacts;


public interface ContactsMapper extends BaseMapper<Contacts,String>{
		
	List<Contacts> selectContactsByStuNum(String studentNum);
	
	
}
