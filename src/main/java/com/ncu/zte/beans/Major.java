package com.ncu.zte.beans;

public class Major {
	private String majorId;		//专业编号
	private String majorName;		//专业名称
	private String departmentId;	//所属院系ID
	public String getMajorId() {
		return majorId;
	}
	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	@Override
	public String toString() {
		return "Major [majorId=" + majorId + ", majorName=" + majorName + ", departmentId=" + departmentId + "]";
	}


	
}
