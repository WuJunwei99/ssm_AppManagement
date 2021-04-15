package com.ncu.zte.beans;

import java.util.Date;

public class AppCategory {


	    private Long id;//主键(类型表)

	    private String categorycode;//类型编码

	    private String categoryname;//类型名

	    private Long parentid;//父类型id

	    private Long createby;//谁创建的(外键backend_user{id})

	    private Date creationtime;//创建时间

	    private Long modifyby;//修改人(外键backend_user{id})

	    private Date modifydate;//上次修改时间

	    public AppCategory() {
			super();
			// TODO Auto-generated constructor stub
		}

		public AppCategory(Long id) {
			super();
			this.id = id;

		}

		public Long getId() {
	        return id;
	    }

	    public void setId(Long id) {
	        this.id = id;
	    }

	    public String getCategorycode() {
	        return categorycode;
	    }

	    public void setCategorycode(String categorycode) {
	        this.categorycode = categorycode == null ? null : categorycode.trim();
	    }

	    public String getCategoryname() {
	        return categoryname;
	    }

	    public void setCategoryname(String categoryname) {
	        this.categoryname = categoryname == null ? null : categoryname.trim();
	    }

	    public Long getParentid() {
	        return parentid;
	    }

	    public void setParentid(Long parentid) {
	        this.parentid = parentid;
	    }

	    public Long getCreateby() {
	        return createby;
	    }

	    public void setCreateby(Long createby) {
	        this.createby = createby;
	    }

	    public Date getCreationtime() {
	        return creationtime;
	    }

	    public void setCreationtime(Date creationtime) {
	        this.creationtime = creationtime;
	    }

	    public Long getModifyby() {
	        return modifyby;
	    }

	    public void setModifyby(Long modifyby) {
	        this.modifyby = modifyby;
	    }

	    public Date getModifydate() {
	        return modifydate;
	    }

	    public void setModifydate(Date modifydate) {
	        this.modifydate = modifydate;
	    }

	    @Override
	    public String toString() {
	        return "AppCategory{" +
	                "id=" + id +
	                ", categorycode='" + categorycode + '\'' +
	                ", categoryname='" + categoryname + '\'' +
	                ", parentid=" + parentid +
	                ", createby=" + createby +
	                ", creationtime=" + creationtime +
	                ", modifyby=" + modifyby +
	                ", modifydate=" + modifydate +
	                '}';
	    }
	
	
}
