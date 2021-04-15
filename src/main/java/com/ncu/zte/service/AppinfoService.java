package com.ncu.zte.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncu.zte.beans.Appinfo;
import com.ncu.zte.mapper.AppinfoMapper;
@Service
public class AppinfoService {

	@Autowired
	private AppinfoMapper appinfoMapper;

	public Boolean editAppinfo(Appinfo appinfo) {
		// TODO Auto-generated method stub
		return appinfoMapper.updateApp(appinfo)==1;
	}

	public Long queryTotal() {
		// TODO Auto-generated method stub
		return appinfoMapper.queryTotal();
	}



	public Boolean deleteByIds(String[] ids) {
		// TODO Auto-generated method stub
		return appinfoMapper.deleteByIds(ids)>0;
	}

	public Boolean saveAppinfo(@Valid Appinfo appinfo) {
		// TODO Auto-generated method stub
		return appinfoMapper.addApp(appinfo)==1;
	}

	public List<Appinfo> queryAppinfoAll() {
		// TODO Auto-generated method stub
		return appinfoMapper.queryAllApp();
	}

	public List<Appinfo> queryAppinfoByName(String softwareName) {
		// TODO Auto-generated method stub
		return appinfoMapper.queryAppByAppName(softwareName);
	}

	public List<Appinfo> queryAppinfoBySelect(Appinfo appinfo) {
		// TODO Auto-generated method stub
		return appinfoMapper.queryAppinfoBySelect(appinfo);
	}



}
