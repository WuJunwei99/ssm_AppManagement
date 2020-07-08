package com.ncu.zte.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ncu.zte.beans.Appinfo;
import com.ncu.zte.beans.User;

public interface AppinfoMapper {

	  /**
     * 根据appName查询信息
     * @param id
     * @return Appinfo
     */
    public List<Appinfo> queryAppByAppName(String softwareName);
    
	 /**
     * 查询数据库app信息数量
     * @param 
     * @return Long
     */
	public Long queryTotal();
	
	 /**
     * 查询所有的App
     * @param 
     * @return List<Appinfo>
     */
     
    public List<Appinfo> queryAllApp();
    
    
	 /**
     * 新增App
     * @param Appinfo
     * @return int 影响的行数
     */
    public int addApp(Appinfo appinfo);
    
	 /**
     * 修改App
     * @param Appinfo
     * @return int 影响的行数
     */
    public int updateApp(Appinfo appinfo);
    
	 /**
     * 删除App
     * @param Appinfo
     * @return int 影响的行数
     */
    public int deleteByIds(@Param("ids")String[] ids);
    
}
