package com.ncu.zte.beans;

public class Major {
	private String major_id;		//专业编号
	private String major_name;		//专业名称
	private String department_id;	//所属院系ID
	public String getMajor_id() {
		return major_id;
	}
	public void setMajor_id(String major_id) {
		this.major_id = major_id;
	}
	public String getMajor_name() {
		return major_name;
	}
	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	@Override
	public String toString() {
		return "Major [major_id=" + major_id + ", major_name=" + major_name + ", department_id=" + department_id + "]";
	}

	
}
